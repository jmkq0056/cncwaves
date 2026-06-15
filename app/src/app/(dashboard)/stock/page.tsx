"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import { downloadStockReportPdf } from "@/lib/stockReportPdf";
import { EUR_TO_DKK, convert, effectiveVatRate, formatMoney, type Currency } from "@/lib/currency";

type Product = {
  _id: string;
  code: string;
  name: string;
  brand: string;
  category: string;
  unit: string;
  image: string;
  qty?: number;
  priceNet?: number;
  priceCurrency?: Currency;
  vatRate?: number;
  noVat?: boolean;
};

type FxState = {
  eurToDkk: number;
  source: string;
  asOf: string | null;
  live: boolean;
};

type SaveStatus = "idle" | "saving" | "saved" | "error";

type SnapshotSummary = {
  _id: string;
  capturedAt: string;
  source: string;
  label?: string;
  triggeredBy?: string;
  totals?: { itemCount?: number; totalUnits?: number; outOfStockCount?: number; negativeCount?: number };
};

export default function StockPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [filterCat, setFilterCat] = useState<string>("");
  const [savingMap, setSavingMap] = useState<Record<string, SaveStatus>>({});
  const [showHistory, setShowHistory] = useState(false);
  const [snapshots, setSnapshots] = useState<SnapshotSummary[]>([]);
  const [snapshotsLoading, setSnapshotsLoading] = useState(false);
  const [busyAction, setBusyAction] = useState<"" | "snapshot" | "report" | "download">("");
  const [displayCurrency, setDisplayCurrency] = useState<Currency>("DKK");
  const [fx, setFx] = useState<FxState>({
    eurToDkk: EUR_TO_DKK,
    source: "fallback constant",
    asOf: null,
    live: false,
  });
  const savingMapRef = useRef<Record<string, SaveStatus>>({});
  useEffect(() => {
    savingMapRef.current = savingMap;
  }, [savingMap]);
  const debounceTimers = useRef<Record<string, ReturnType<typeof setTimeout>>>({});

  // Live FX rate (same source as Price page) so the value chips reflect ECB
  // rates with our 7.4604 fallback.
  useEffect(() => {
    fetch("/api/fx")
      .then((r) => r.json())
      .then((d: FxState) => {
        if (d && Number.isFinite(d.eurToDkk) && d.eurToDkk > 0) setFx(d);
      })
      .catch(() => {});
  }, []);

  // Initial load + auto-refresh so picks from /d/[token] show up live.
  // Skip refresh while the user is actively editing a qty (don't trample input).
  useEffect(() => {
    let alive = true;
    async function load() {
      const r = await fetch("/api/products", { cache: "no-store" });
      const data = await r.json();
      if (!alive) return;
      setProducts(data);
      setLoading(false);
    }
    load();
    const id = setInterval(() => {
      // If any row is currently in 'saving' state, skip this tick.
      const busy = Object.values(savingMapRef.current).some((s) => s === "saving");
      if (!busy) load();
    }, 15000);
    return () => {
      alive = false;
      clearInterval(id);
    };
  }, []);

  const categories = useMemo(() => {
    const set = new Set<string>();
    products.forEach((p) => p.category && set.add(p.category));
    return Array.from(set).sort();
  }, [products]);

  const filtered = useMemo(() => {
    const q = search.trim().toLowerCase();
    return products.filter((p) => {
      if (filterCat && p.category !== filterCat) return false;
      if (!q) return true;
      return (
        p.name.toLowerCase().includes(q) ||
        p.brand.toLowerCase().includes(q) ||
        p.code.toLowerCase().includes(q)
      );
    });
  }, [products, search, filterCat]);

  // Group by category for the rendered list
  const grouped = useMemo(() => {
    const map = new Map<string, Product[]>();
    filtered.forEach((p) => {
      const cat = p.category || "Uncategorized";
      if (!map.has(cat)) map.set(cat, []);
      map.get(cat)!.push(p);
    });
    return Array.from(map.entries()).sort(([a], [b]) => a.localeCompare(b));
  }, [filtered]);

  const totalUnits = useMemo(
    () => filtered.reduce((s, p) => s + (p.qty ?? 0), 0),
    [filtered]
  );
  const outOfStockCount = useMemo(
    () => filtered.filter((p) => (p.qty ?? 0) <= 0).length,
    [filtered]
  );

  // Inventory value: sum each row's qty * priceNet in its own currency, then
  // convert to the displayed currency. Gross adds each row's effective VAT.
  const inventoryValue = useMemo(() => {
    let net = 0;
    let gross = 0;
    for (const p of filtered) {
      const qty = Number(p.qty) || 0;
      const priceNet = Number(p.priceNet) || 0;
      if (qty <= 0 || priceNet <= 0) continue;
      const rowCurrency: Currency = (p.priceCurrency as Currency) || "DKK";
      const lineNet = convert(qty * priceNet, rowCurrency, displayCurrency, fx.eurToDkk);
      const vat = effectiveVatRate(p);
      net += lineNet;
      gross += lineNet * (1 + vat);
    }
    return { net, gross };
  }, [filtered, displayCurrency, fx.eurToDkk]);
  const negativeStockCount = useMemo(
    () => filtered.filter((p) => (p.qty ?? 0) < 0).length,
    [filtered]
  );

  async function loadSnapshots() {
    setSnapshotsLoading(true);
    try {
      const r = await fetch("/api/stock/snapshots?limit=100", { cache: "no-store" });
      if (r.ok) setSnapshots(await r.json());
    } finally {
      setSnapshotsLoading(false);
    }
  }

  function openHistory() {
    setShowHistory(true);
    loadSnapshots();
  }

  async function captureSnapshot() {
    setBusyAction("snapshot");
    try {
      const r = await fetch("/api/stock/snapshots", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ source: "manual", label: "" }),
      });
      if (!r.ok) {
        alert("Snapshot failed: " + (await r.text()).slice(0, 200));
        return;
      }
      // Refresh list if open
      if (showHistory) await loadSnapshots();
    } finally {
      setBusyAction("");
    }
  }

  function downloadCurrentReport() {
    setBusyAction("report");
    try {
      const now = new Date();
      const stamp = now.toISOString().replace(/[:.]/g, "-").slice(0, 16);
      downloadStockReportPdf(
        {
          title: "Stock Report (Live)",
          capturedAt: now,
          source: "live",
          displayCurrency,
          eurToDkk: fx.eurToDkk,
          items: products.map((p) => ({
            code: p.code,
            name: p.name,
            brand: p.brand,
            category: p.category,
            unit: p.unit,
            qty: p.qty ?? 0,
            priceNet: p.priceNet ?? 0,
            priceCurrency: p.priceCurrency ?? "DKK",
            vatRate: p.vatRate ?? 0.25,
            noVat: !!p.noVat,
          })),
        },
        `stock-live-${stamp}.pdf`
      );
    } finally {
      setBusyAction("");
    }
  }

  async function downloadSnapshotReport(snap: SnapshotSummary) {
    setBusyAction("download");
    try {
      const r = await fetch(`/api/stock/snapshots/${snap._id}`, { cache: "no-store" });
      if (!r.ok) {
        alert("Could not load snapshot");
        return;
      }
      const full = await r.json();
      const stamp = new Date(snap.capturedAt).toISOString().replace(/[:.]/g, "-").slice(0, 16);
      downloadStockReportPdf(
        {
          title: `Stock Report (${snap.source})`,
          capturedAt: snap.capturedAt,
          source: snap.source,
          label: snap.label,
          triggeredBy: snap.triggeredBy,
          displayCurrency,
          eurToDkk: fx.eurToDkk,
          items: full.items || [],
        },
        `stock-${snap.source}-${stamp}.pdf`
      );
    } finally {
      setBusyAction("");
    }
  }

  function setQtyLocal(id: string, qty: number) {
    setProducts((prev) => prev.map((p) => (p._id === id ? { ...p, qty } : p)));
  }

  async function persistQty(id: string, qty: number) {
    setSavingMap((m) => ({ ...m, [id]: "saving" }));
    try {
      const r = await fetch(`/api/products/${id}/stock`, {
        method: "PATCH",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ qty }),
      });
      if (!r.ok) throw new Error(await r.text());
      const updated = await r.json();
      setProducts((prev) => prev.map((p) => (p._id === id ? { ...p, qty: updated.qty } : p)));
      setSavingMap((m) => ({ ...m, [id]: "saved" }));
      setTimeout(() => {
        setSavingMap((m) => {
          if (m[id] !== "saved") return m;
          const { [id]: _, ...rest } = m;
          return rest;
        });
      }, 1500);
    } catch {
      setSavingMap((m) => ({ ...m, [id]: "error" }));
    }
  }

  function queueSave(id: string, qty: number) {
    if (debounceTimers.current[id]) clearTimeout(debounceTimers.current[id]);
    debounceTimers.current[id] = setTimeout(() => persistQty(id, qty), 500);
  }

  function bump(id: string, delta: number) {
    const p = products.find((x) => x._id === id);
    if (!p) return;
    const next = Math.max(0, (p.qty ?? 0) + delta);
    setQtyLocal(id, next);
    queueSave(id, next);
  }

  function onChangeQty(id: string, value: string) {
    const n = parseInt(value, 10);
    const qty = Number.isFinite(n) ? Math.max(0, n) : 0;
    setQtyLocal(id, qty);
    queueSave(id, qty);
  }

  return (
    <div className="px-3 sm:px-6 py-4 sm:py-6 max-w-7xl mx-auto">
      <div className="mb-4 sm:mb-6 flex items-start gap-3 flex-wrap">
        <div className="flex-1 min-w-0">
          <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Stock</h1>
          <p className="text-xs sm:text-sm text-gray-500 mt-0.5">
            Tap a number to edit. Changes save automatically. Live — refreshes every 15s.
          </p>
        </div>
        <div className="flex gap-1.5 flex-wrap items-center">
          <div className="inline-flex border border-gray-300 rounded-lg overflow-hidden text-xs font-semibold mr-1">
            {(["DKK", "EUR"] as Currency[]).map((c) => (
              <button
                key={c}
                type="button"
                onClick={() => setDisplayCurrency(c)}
                className={`px-2.5 py-2 transition-colors ${
                  displayCurrency === c ? "bg-orange-500 text-white" : "bg-white text-gray-700"
                }`}
              >
                {c}
              </button>
            ))}
          </div>
          <ToolbarButton onClick={captureSnapshot} disabled={busyAction === "snapshot"} variant="primary">
            {busyAction === "snapshot" ? "Saving…" : "Snapshot"}
          </ToolbarButton>
          <ToolbarButton onClick={downloadCurrentReport} disabled={busyAction === "report"}>
            {busyAction === "report" ? "…" : "Report PDF"}
          </ToolbarButton>
          <ToolbarButton onClick={openHistory}>History</ToolbarButton>
        </div>
      </div>

      {/* Summary chips */}
      <div className="grid grid-cols-2 sm:grid-cols-5 gap-2 mb-3">
        <SummaryChip label="Items" value={String(filtered.length)} />
        <SummaryChip label="Total units" value={String(totalUnits)} />
        <SummaryChip
          label={negativeStockCount > 0 ? "Negative" : "Out of stock"}
          value={String(negativeStockCount > 0 ? negativeStockCount : outOfStockCount)}
          accent={negativeStockCount > 0 ? "red" : outOfStockCount > 0 ? "amber" : "green"}
        />
        <SummaryChip
          label={`Value net · ${displayCurrency}`}
          value={formatMoney(inventoryValue.net, displayCurrency)}
        />
        <SummaryChip
          label={`Value w/ MOMS · ${displayCurrency}`}
          value={formatMoney(inventoryValue.gross, displayCurrency)}
          accent="amber"
        />
      </div>

      {/* Search + filter */}
      <div className="flex gap-2 mb-3 sticky top-0 z-10 bg-gray-50 pt-1 pb-2 -mx-3 sm:-mx-6 px-3 sm:px-6">
        <div className="flex-1 relative">
          <svg className="absolute left-3 top-1/2 -translate-y-1/2 w-4 h-4 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M21 21l-5.197-5.197m0 0A7.5 7.5 0 105.196 5.196a7.5 7.5 0 0010.607 10.607z" />
          </svg>
          <input
            type="search"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            placeholder="Search item, brand, or code"
            className="w-full pl-9 pr-3 py-2.5 rounded-lg border border-gray-300 bg-white text-sm focus:outline-none focus:ring-2 focus:ring-orange-500"
          />
        </div>
        <select
          value={filterCat}
          onChange={(e) => setFilterCat(e.target.value)}
          className="px-2 py-2.5 rounded-lg border border-gray-300 bg-white text-sm focus:outline-none focus:ring-2 focus:ring-orange-500"
        >
          <option value="">All</option>
          {categories.map((c) => (
            <option key={c} value={c}>
              {c}
            </option>
          ))}
        </select>
      </div>

      {loading ? (
        <div className="py-12 text-center text-gray-400 text-sm">Loading…</div>
      ) : filtered.length === 0 ? (
        <div className="py-12 text-center text-gray-400 text-sm">No items match.</div>
      ) : (
        <div className="space-y-4">
          {/* Desktop column headers — mobile keeps the card-flow layout */}
          <div className="hidden md:grid md:grid-cols-[44px_minmax(0,1fr)_120px_160px_140px_140px_24px] gap-3 items-center px-3 py-1.5 text-[10px] uppercase tracking-wider text-gray-500 font-semibold">
            <span />
            <span>Item</span>
            <span>Unit</span>
            <span className="text-center">Stock</span>
            <span className="text-right">Price (gross)</span>
            <span className="text-right">Line value</span>
            <span />
          </div>
          {grouped.map(([cat, items]) => (
            <section key={cat}>
              <h2 className="text-[11px] uppercase tracking-wider text-gray-500 font-semibold px-1 mb-1.5">
                {cat}
              </h2>
              <div className="bg-white rounded-lg border border-gray-200 divide-y divide-gray-100 overflow-hidden">
                {items.map((p) => (
                  <StockRow
                    key={p._id}
                    product={p}
                    status={savingMap[p._id] || "idle"}
                    displayCurrency={displayCurrency}
                    fxRate={fx.eurToDkk}
                    onChange={(v) => onChangeQty(p._id, v)}
                    onBump={(d) => bump(p._id, d)}
                  />
                ))}
              </div>
            </section>
          ))}
        </div>
      )}

      {/* History modal */}
      {showHistory && (
        <div className="fixed inset-0 z-50 bg-black/40 flex items-end sm:items-center justify-center p-0 sm:p-4" onClick={() => setShowHistory(false)}>
          <div
            className="bg-white w-full sm:max-w-lg sm:rounded-2xl rounded-t-2xl shadow-2xl max-h-[90vh] flex flex-col overflow-hidden"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex items-center justify-between px-4 sm:px-5 py-3 border-b bg-white sticky top-0">
              <div>
                <h3 className="font-bold text-gray-900">Stock History</h3>
                <p className="text-[11px] text-gray-500">
                  Snapshots auto-captured by the server. Tap any to download the PDF.
                </p>
              </div>
              <button
                type="button"
                onClick={() => setShowHistory(false)}
                className="w-8 h-8 rounded-full bg-gray-100 text-gray-600 active:bg-gray-200"
                aria-label="Close"
              >
                ✕
              </button>
            </div>
            <div className="flex-1 overflow-auto">
              {snapshotsLoading ? (
                <div className="py-12 text-center text-gray-400 text-sm">Loading…</div>
              ) : snapshots.length === 0 ? (
                <div className="py-12 text-center text-gray-400 text-sm">
                  No snapshots yet. Tap “Snapshot” above or wait for the server cron.
                </div>
              ) : (
                <ul className="divide-y divide-gray-100">
                  {snapshots.map((s) => (
                    <li key={s._id} className="px-4 sm:px-5 py-3 flex items-center gap-3">
                      <div className="flex-1 min-w-0">
                        <div className="text-sm font-semibold text-gray-900">
                          {new Date(s.capturedAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}
                        </div>
                        <div className="text-[11px] text-gray-500 flex flex-wrap gap-x-2 mt-0.5">
                          <span className="uppercase tracking-wider font-medium">{s.source}</span>
                          {s.label && <span>· {s.label}</span>}
                          {s.totals?.itemCount != null && <span>· {s.totals.itemCount} items</span>}
                          {s.totals?.totalUnits != null && <span>· {s.totals.totalUnits} units</span>}
                          {s.totals?.outOfStockCount ? (
                            <span className={s.totals.negativeCount ? "text-red-600 font-semibold" : "text-amber-700"}>
                              · {s.totals.outOfStockCount} out{s.totals.negativeCount ? ` (${s.totals.negativeCount} neg)` : ""}
                            </span>
                          ) : null}
                        </div>
                      </div>
                      <button
                        type="button"
                        onClick={() => downloadSnapshotReport(s)}
                        disabled={busyAction === "download"}
                        className="px-3 py-2 rounded-md bg-orange-500 text-white text-xs font-semibold active:bg-orange-600 disabled:opacity-50"
                      >
                        PDF
                      </button>
                    </li>
                  ))}
                </ul>
              )}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

function ToolbarButton({
  children,
  onClick,
  disabled,
  variant = "default",
}: {
  children: React.ReactNode;
  onClick: () => void;
  disabled?: boolean;
  variant?: "default" | "primary";
}) {
  const cls =
    variant === "primary"
      ? "bg-orange-500 text-white border-orange-500 active:bg-orange-600"
      : "bg-white text-gray-700 border-gray-300 active:bg-gray-100";
  return (
    <button
      type="button"
      onClick={onClick}
      disabled={disabled}
      className={`px-3 py-2 text-xs font-semibold rounded-md border shadow-sm disabled:opacity-50 ${cls}`}
    >
      {children}
    </button>
  );
}

function SummaryChip({
  label,
  value,
  accent,
}: {
  label: string;
  value: string;
  accent?: "green" | "red" | "amber";
}) {
  const valueColor =
    accent === "red"
      ? "text-red-600"
      : accent === "amber"
      ? "text-amber-600"
      : accent === "green"
      ? "text-green-600"
      : "text-gray-900";
  return (
    <div className="bg-white border border-gray-200 rounded-lg px-3 py-2">
      <div className="text-[10px] uppercase tracking-wider text-gray-500">{label}</div>
      <div className={`text-lg font-bold tabular-nums ${valueColor}`}>{value}</div>
    </div>
  );
}

function StockRow({
  product,
  status,
  displayCurrency,
  fxRate,
  onChange,
  onBump,
}: {
  product: Product;
  status: SaveStatus;
  displayCurrency: Currency;
  fxRate: number;
  onChange: (v: string) => void;
  onBump: (d: number) => void;
}) {
  const qty = product.qty ?? 0;
  const low = qty <= 0;
  const negative = qty < 0;
  const priceNet = Number(product.priceNet) || 0;
  const rowCurrency: Currency = (product.priceCurrency as Currency) || "DKK";
  const vat = effectiveVatRate(product);
  const priceGross = priceNet * (1 + vat);
  const lineNetDisplayed = convert(qty * priceNet, rowCurrency, displayCurrency, fxRate);
  const lineGrossDisplayed = lineNetDisplayed * (1 + vat);
  const priceGrossDisplayed = convert(priceGross, rowCurrency, displayCurrency, fxRate);
  const unpriced = priceNet <= 0;

  return (
    <div className="px-3 py-2.5 md:grid md:grid-cols-[44px_minmax(0,1fr)_120px_160px_140px_140px_24px] md:gap-3 md:items-center flex flex-wrap gap-2">
      {/* Image */}
      {product.image ? (
        <img
          src={product.image.startsWith("http") ? product.image : `/assets/${product.image}`}
          alt=""
          className="w-10 h-10 rounded object-cover border border-gray-200 flex-shrink-0"
        />
      ) : (
        <div className="w-10 h-10 rounded bg-gray-100 border border-gray-200 flex-shrink-0" />
      )}

      {/* Name + meta */}
      <div className="flex-1 min-w-0">
        <div className="text-sm font-medium text-gray-900 truncate">{product.name}</div>
        <div className="text-[11px] text-gray-500 flex items-center gap-1.5">
          {product.brand && <span>{product.brand}</span>}
          {product.brand && product.code && <span>·</span>}
          {product.code && <span className="font-mono">{product.code}</span>}
        </div>
      </div>

      {/* Unit (desktop column) — hidden on mobile, info already in meta */}
      <div className="hidden md:block text-[11px] text-gray-500 truncate">
        {product.unit ? `per ${product.unit}` : ""}
      </div>

      {/* Stock stepper */}
      <div className="flex items-center gap-1 md:justify-center flex-shrink-0">
        <button
          type="button"
          onClick={() => onBump(-1)}
          className="w-9 h-9 rounded-md border border-gray-300 bg-white text-gray-700 active:bg-gray-100 disabled:opacity-30"
          disabled={qty === 0}
          aria-label="Decrease"
        >
          −
        </button>
        <input
          type="number"
          inputMode="numeric"
          step={1}
          value={qty}
          onChange={(e) => onChange(e.target.value)}
          onFocus={(e) => e.target.select()}
          className={`w-14 h-9 text-center text-sm font-semibold tabular-nums rounded-md border bg-white focus:outline-none focus:ring-2 ${
            negative
              ? "border-red-500 bg-red-50 text-red-700 focus:ring-red-500"
              : low
              ? "border-red-300 text-red-700 focus:ring-red-500"
              : "border-gray-300 text-gray-900 focus:ring-orange-500"
          }`}
        />
        <button
          type="button"
          onClick={() => onBump(1)}
          className="w-9 h-9 rounded-md border border-gray-300 bg-white text-gray-700 active:bg-gray-100"
          aria-label="Increase"
        >
          +
        </button>
      </div>

      {/* Price (gross, in row's currency for accuracy) */}
      <div className="md:text-right text-[11px] flex md:block items-baseline gap-1.5">
        {unpriced ? (
          <span className="text-amber-700 bg-amber-100 px-1.5 py-0.5 rounded text-[10px] font-semibold uppercase tracking-wider">
            No price
          </span>
        ) : (
          <>
            <span className="md:hidden text-gray-500">Price:</span>
            <span className="font-semibold tabular-nums text-gray-800">
              {formatMoney(priceGrossDisplayed, displayCurrency)}
            </span>
            <span className="text-[10px] text-gray-400 ml-1">
              {product.noVat ? "ex MOMS" : `incl. ${Math.round(vat * 100)}%`}
            </span>
          </>
        )}
      </div>

      {/* Line value = qty × gross price */}
      <div className="md:text-right text-[11px] flex md:block items-baseline gap-1.5">
        {qty > 0 && priceNet > 0 ? (
          <>
            <span className="md:hidden text-gray-500">Value:</span>
            <span className="font-bold tabular-nums text-orange-600">
              {formatMoney(lineGrossDisplayed, displayCurrency)}
            </span>
            <span className="text-[10px] text-gray-400 ml-1">
              ({qty} × {formatMoney(priceGrossDisplayed / Math.max(qty, 1), displayCurrency)})
            </span>
          </>
        ) : (
          <span className="text-gray-300">—</span>
        )}
      </div>

      <span className="text-[10px] text-gray-500 w-6 md:text-center" aria-live="polite">
        {status === "saving" && "…"}
        {status === "saved" && "✓"}
        {status === "error" && "!"}
      </span>
    </div>
  );
}
