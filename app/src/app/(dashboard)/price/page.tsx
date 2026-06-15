"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import {
  convert,
  effectiveVatRate,
  formatMoney,
  grossToNet,
  netToGross,
  type Currency,
} from "@/lib/currency";

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

type SaveStatus = "idle" | "saving" | "saved" | "error";

export default function PricePage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [filterCat, setFilterCat] = useState<string>("");
  const [displayCurrency, setDisplayCurrency] = useState<Currency>("DKK");
  const [savingMap, setSavingMap] = useState<Record<string, SaveStatus>>({});
  const savingMapRef = useRef<Record<string, SaveStatus>>({});
  useEffect(() => {
    savingMapRef.current = savingMap;
  }, [savingMap]);
  const debounceTimers = useRef<Record<string, ReturnType<typeof setTimeout>>>({});

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
    // Live refresh, but skip if a row is mid-save
    const id = setInterval(() => {
      const busy = Object.values(savingMapRef.current).some((s) => s === "saving");
      if (!busy) load();
    }, 20000);
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

  const grouped = useMemo(() => {
    const map = new Map<string, Product[]>();
    filtered.forEach((p) => {
      const cat = p.category || "Uncategorized";
      if (!map.has(cat)) map.set(cat, []);
      map.get(cat)!.push(p);
    });
    return Array.from(map.entries()).sort(([a], [b]) => a.localeCompare(b));
  }, [filtered]);

  // Inventory value totals: sum every row's (qty * priceNet) in its own
  // currency, then convert to the displayed currency, gross adds VAT.
  const totals = useMemo(() => {
    let net = 0;
    let gross = 0;
    let unpriced = 0;
    for (const p of filtered) {
      const qty = Number(p.qty) || 0;
      const priceNet = Number(p.priceNet) || 0;
      if (priceNet <= 0) unpriced++;
      const rowCurrency: Currency = (p.priceCurrency as Currency) || "DKK";
      const lineNet = convert(qty * priceNet, rowCurrency, displayCurrency);
      const vat = effectiveVatRate(p);
      net += lineNet;
      gross += lineNet * (1 + vat);
    }
    return { net, gross, unpriced };
  }, [filtered, displayCurrency]);

  function patchPrice(id: string, body: Record<string, unknown>) {
    setSavingMap((m) => ({ ...m, [id]: "saving" }));
    return fetch(`/api/products/${id}/price`, {
      method: "PATCH",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(body),
    })
      .then(async (r) => {
        if (!r.ok) throw new Error(await r.text());
        const updated = await r.json();
        setProducts((prev) => prev.map((p) => (p._id === id ? { ...p, ...updated } : p)));
        setSavingMap((m) => ({ ...m, [id]: "saved" }));
        setTimeout(() => {
          setSavingMap((m) => {
            if (m[id] !== "saved") return m;
            const { [id]: _, ...rest } = m;
            return rest;
          });
        }, 1500);
      })
      .catch(() => setSavingMap((m) => ({ ...m, [id]: "error" })));
  }

  function debouncedPatch(id: string, body: Record<string, unknown>) {
    if (debounceTimers.current[id]) clearTimeout(debounceTimers.current[id]);
    debounceTimers.current[id] = setTimeout(() => patchPrice(id, body), 500);
  }

  function setLocal(id: string, patch: Partial<Product>) {
    setProducts((prev) => prev.map((p) => (p._id === id ? { ...p, ...patch } : p)));
  }

  function onChangeNet(p: Product, value: string) {
    const net = parseFloat(value);
    const v = Number.isFinite(net) ? Math.max(0, net) : 0;
    setLocal(p._id, { priceNet: v });
    debouncedPatch(p._id, { priceNet: v });
  }

  function onChangeGross(p: Product, value: string) {
    const gross = parseFloat(value);
    if (!Number.isFinite(gross)) return;
    const v = Math.max(0, gross);
    const vat = effectiveVatRate(p);
    const net = grossToNet(v, vat);
    setLocal(p._id, { priceNet: net });
    debouncedPatch(p._id, { priceGross: v });
  }

  function onToggleNoVat(p: Product) {
    const noVat = !p.noVat;
    setLocal(p._id, { noVat });
    patchPrice(p._id, { noVat });
  }

  function onChangeCurrency(p: Product, cur: Currency) {
    setLocal(p._id, { priceCurrency: cur });
    patchPrice(p._id, { priceCurrency: cur });
  }

  return (
    <div className="px-3 sm:px-6 py-4 sm:py-6 max-w-3xl mx-auto">
      <div className="mb-4 sm:mb-6 flex items-start gap-3 flex-wrap">
        <div className="flex-1 min-w-0">
          <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Price</h1>
          <p className="text-xs sm:text-sm text-gray-500 mt-0.5">
            Enter prices in either DKK or EUR per item. Edit either the net or
            the gross column — the other updates automatically.
          </p>
        </div>
        {/* Display currency toggle */}
        <div className="inline-flex border border-gray-300 rounded-lg overflow-hidden text-xs font-semibold">
          {(["DKK", "EUR"] as Currency[]).map((c) => (
            <button
              key={c}
              type="button"
              onClick={() => setDisplayCurrency(c)}
              className={`px-3 py-2 transition-colors ${
                displayCurrency === c ? "bg-orange-500 text-white" : "bg-white text-gray-700"
              }`}
            >
              {c}
            </button>
          ))}
        </div>
      </div>

      {/* Stock-value summary */}
      <div className="grid grid-cols-3 gap-2 mb-3">
        <ValueChip
          label={`Total net · ${displayCurrency}`}
          value={formatMoney(totals.net, displayCurrency)}
        />
        <ValueChip
          label={`Total w/ MOMS · ${displayCurrency}`}
          value={formatMoney(totals.gross, displayCurrency)}
          accent="orange"
        />
        <ValueChip
          label="Unpriced items"
          value={String(totals.unpriced)}
          accent={totals.unpriced > 0 ? "amber" : "green"}
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
          {grouped.map(([cat, items]) => (
            <section key={cat}>
              <h2 className="text-[11px] uppercase tracking-wider text-gray-500 font-semibold px-1 mb-1.5">
                {cat}
              </h2>
              <div className="bg-white rounded-lg border border-gray-200 divide-y divide-gray-100 overflow-hidden">
                {items.map((p) => (
                  <PriceRow
                    key={p._id}
                    product={p}
                    status={savingMap[p._id] || "idle"}
                    displayCurrency={displayCurrency}
                    onChangeNet={(v) => onChangeNet(p, v)}
                    onChangeGross={(v) => onChangeGross(p, v)}
                    onToggleNoVat={() => onToggleNoVat(p)}
                    onChangeCurrency={(c) => onChangeCurrency(p, c)}
                  />
                ))}
              </div>
            </section>
          ))}
        </div>
      )}
    </div>
  );
}

function ValueChip({
  label,
  value,
  accent,
}: {
  label: string;
  value: string;
  accent?: "orange" | "amber" | "green";
}) {
  const valueColor =
    accent === "orange"
      ? "text-orange-600"
      : accent === "amber"
      ? "text-amber-700"
      : accent === "green"
      ? "text-green-700"
      : "text-gray-900";
  return (
    <div className="bg-white border border-gray-200 rounded-lg px-3 py-2">
      <div className="text-[10px] uppercase tracking-wider text-gray-500 truncate">{label}</div>
      <div className={`text-base sm:text-lg font-bold tabular-nums leading-tight mt-0.5 ${valueColor}`}>
        {value}
      </div>
    </div>
  );
}

function PriceRow({
  product,
  status,
  displayCurrency,
  onChangeNet,
  onChangeGross,
  onToggleNoVat,
  onChangeCurrency,
}: {
  product: Product;
  status: SaveStatus;
  displayCurrency: Currency;
  onChangeNet: (v: string) => void;
  onChangeGross: (v: string) => void;
  onToggleNoVat: () => void;
  onChangeCurrency: (c: Currency) => void;
}) {
  const qty = Number(product.qty) || 0;
  const priceNet = Number(product.priceNet) || 0;
  const rowCurrency: Currency = (product.priceCurrency as Currency) || "DKK";
  const vat = effectiveVatRate(product);
  const priceGross = netToGross(priceNet, vat);
  const lineNetDisplayed = convert(qty * priceNet, rowCurrency, displayCurrency);
  const lineGrossDisplayed = lineNetDisplayed * (1 + vat);
  const unpriced = priceNet <= 0;

  return (
    <div className="px-3 py-3">
      <div className="flex items-start gap-2">
        {product.image ? (
          <img
            src={product.image.startsWith("http") ? product.image : `/assets/${product.image}`}
            alt=""
            className="w-10 h-10 rounded object-cover border border-gray-200 flex-shrink-0"
          />
        ) : (
          <div className="w-10 h-10 rounded bg-gray-100 border border-gray-200 flex-shrink-0" />
        )}

        <div className="flex-1 min-w-0">
          <div className="text-sm font-medium text-gray-900 truncate">{product.name}</div>
          <div className="text-[11px] text-gray-500 flex items-center gap-1.5 flex-wrap">
            {product.brand && <span>{product.brand}</span>}
            {product.unit && <span>· per {product.unit}</span>}
            <span>·</span>
            <span className="text-gray-700 font-medium tabular-nums">{qty}</span>
            <span>in stock</span>
            {unpriced && (
              <span className="text-[9px] text-amber-700 bg-amber-100 px-1.5 py-0.5 rounded-full font-semibold uppercase tracking-wide">
                no price
              </span>
            )}
          </div>
        </div>

        {/* Per-item currency */}
        <div className="inline-flex border border-gray-300 rounded-md overflow-hidden text-[11px] font-semibold flex-shrink-0">
          {(["DKK", "EUR"] as Currency[]).map((c) => (
            <button
              key={c}
              type="button"
              onClick={() => onChangeCurrency(c)}
              className={`px-2 py-1.5 ${rowCurrency === c ? "bg-gray-800 text-white" : "bg-white text-gray-600"}`}
            >
              {c}
            </button>
          ))}
        </div>
      </div>

      {/* Highlighted price-edit strip */}
      <div className="mt-2.5 bg-orange-50 border border-orange-100 rounded-lg p-2 flex flex-wrap items-end gap-2">
        <PriceField
          label={`Net · ${rowCurrency}`}
          value={priceNet}
          onChange={onChangeNet}
        />
        <PriceField
          label={`Gross · ${rowCurrency}`}
          value={priceGross}
          onChange={onChangeGross}
          highlight={!product.noVat}
        />

        <label className="flex items-center gap-1.5 text-[11px] font-medium text-gray-700 ml-auto select-none">
          <input
            type="checkbox"
            checked={!!product.noVat}
            onChange={onToggleNoVat}
            className="w-4 h-4 accent-orange-500"
          />
          <span>No MOMS</span>
        </label>

        <span className="text-[10px] text-gray-500 w-4" aria-live="polite">
          {status === "saving" && "…"}
          {status === "saved" && "✓"}
          {status === "error" && "!"}
        </span>
      </div>

      {/* Per-row totals — surface the value of this row's stock */}
      {qty > 0 && priceNet > 0 && (
        <div className="mt-1.5 text-[11px] text-gray-600 flex flex-wrap gap-x-3 gap-y-0.5">
          <span>
            Line net: <span className="font-semibold tabular-nums text-gray-800">{formatMoney(lineNetDisplayed, displayCurrency)}</span>
          </span>
          <span>
            Line w/ MOMS: <span className="font-semibold tabular-nums text-orange-700">{formatMoney(lineGrossDisplayed, displayCurrency)}</span>
          </span>
          {product.noVat && (
            <span className="text-amber-700 text-[10px] uppercase tracking-wider font-semibold">VAT-free</span>
          )}
        </div>
      )}
    </div>
  );
}

function PriceField({
  label,
  value,
  onChange,
  highlight,
}: {
  label: string;
  value: number;
  onChange: (v: string) => void;
  highlight?: boolean;
}) {
  return (
    <label className="flex flex-col">
      <span className="text-[10px] uppercase tracking-wider text-gray-500 mb-0.5">{label}</span>
      <input
        type="number"
        inputMode="decimal"
        min={0}
        step={0.01}
        value={Number.isFinite(value) ? value : 0}
        onChange={(e) => onChange(e.target.value)}
        onFocus={(e) => e.target.select()}
        className={`w-24 h-9 px-2 text-sm font-semibold tabular-nums rounded-md border bg-white focus:outline-none focus:ring-2 ${
          highlight
            ? "border-orange-300 text-orange-700 focus:ring-orange-500"
            : "border-gray-300 text-gray-800 focus:ring-orange-500"
        }`}
      />
    </label>
  );
}
