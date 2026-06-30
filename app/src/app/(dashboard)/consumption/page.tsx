"use client";

import { useEffect, useMemo, useState } from "react";

type Row = {
  productId: string;
  code: string;
  name: string;
  brand: string;
  category: string;
  unit: string;
  image: string;
  qty: number;
  lineCount: number;
  deliveryCount: number;
  priceNet: number;
  priceCurrency: "DKK" | "EUR";
  lineNet: number;
  lineGross: number;
  lineNetDKK: number;
  lineGrossDKK: number;
};

type Report = {
  from: string;
  to: string;
  fxRate: number;
  totals: {
    lines: number;
    units: number;
    netDKK: number;
    grossDKK: number;
    unpricedCount: number;
  };
  rows: Row[];
};

function fmtDKK(n: number): string {
  return new Intl.NumberFormat("da-DK", {
    minimumFractionDigits: 2,
    maximumFractionDigits: 2,
  }).format(n);
}

function todayISO(offsetDays = 0): string {
  const d = new Date();
  d.setDate(d.getDate() + offsetDays);
  return d.toISOString().slice(0, 10);
}

const PRESETS = [
  { key: "today", label: "Today", from: todayISO(0), to: todayISO(0) },
  { key: "7d", label: "Last 7 days", from: todayISO(-7), to: todayISO(0) },
  { key: "30d", label: "Last 30 days", from: todayISO(-30), to: todayISO(0) },
  { key: "month", label: "This month", from: todayISO(0).slice(0, 8) + "01", to: todayISO(0) },
  { key: "year", label: "This year", from: todayISO(0).slice(0, 4) + "-01-01", to: todayISO(0) },
];

export default function ConsumptionPage() {
  const [from, setFrom] = useState(todayISO(-30));
  const [to, setTo] = useState(todayISO(0));
  const [search, setSearch] = useState("");
  const [filterCat, setFilterCat] = useState("");
  const [report, setReport] = useState<Report | null>(null);
  const [loading, setLoading] = useState(false);
  const [err, setErr] = useState("");

  async function load(f: string, t: string) {
    setLoading(true);
    setErr("");
    try {
      const r = await fetch(`/api/consumption?from=${f}&to=${t}`, { cache: "no-store" });
      if (!r.ok) throw new Error(await r.text());
      setReport(await r.json());
    } catch (e: any) {
      setErr(e?.message || "Failed to load");
      setReport(null);
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    load(from, to);
    // eslint-disable-next-line react-hooks/exhaustive-deps
  }, []);

  const categories = useMemo(() => {
    const s = new Set<string>();
    report?.rows.forEach((r) => r.category && s.add(r.category));
    return Array.from(s).sort();
  }, [report]);

  const filtered = useMemo(() => {
    if (!report) return [];
    const q = search.trim().toLowerCase();
    return report.rows.filter((r) => {
      if (filterCat && r.category !== filterCat) return false;
      if (!q) return true;
      return (
        r.name.toLowerCase().includes(q) ||
        r.brand.toLowerCase().includes(q) ||
        r.code.toLowerCase().includes(q)
      );
    });
  }, [report, search, filterCat]);

  function applyPreset(p: { from: string; to: string }) {
    setFrom(p.from);
    setTo(p.to);
    load(p.from, p.to);
  }

  return (
    <div className="px-3 sm:px-6 py-4 sm:py-6 max-w-7xl mx-auto">
      <div className="mb-3 sm:mb-4 flex items-start gap-3 flex-wrap">
        <div className="flex-1 min-w-0">
          <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Consumption</h1>
          <p className="text-xs sm:text-sm text-gray-500 mt-0.5">
            What physically left stock through Issuance × current Pricing. Derived from the database — no manual entry.
          </p>
        </div>
      </div>

      {/* Date controls */}
      <div className="flex gap-2 mb-3 flex-wrap items-center">
        <div className="flex items-center gap-1 text-xs">
          <label className="text-gray-500 mr-1">From</label>
          <input
            type="date"
            value={from}
            onChange={(e) => setFrom(e.target.value)}
            className="px-2 py-1.5 rounded-md border border-gray-300 bg-white text-sm"
          />
          <label className="text-gray-500 mx-1">To</label>
          <input
            type="date"
            value={to}
            onChange={(e) => setTo(e.target.value)}
            className="px-2 py-1.5 rounded-md border border-gray-300 bg-white text-sm"
          />
          <button
            type="button"
            onClick={() => load(from, to)}
            disabled={loading}
            className="ml-1 px-3 py-1.5 rounded-md bg-orange-500 text-white text-xs font-semibold active:bg-orange-600 disabled:opacity-50"
          >
            {loading ? "…" : "Run"}
          </button>
        </div>
        <div className="flex gap-1 flex-wrap">
          {PRESETS.map((p) => (
            <button
              key={p.key}
              type="button"
              onClick={() => applyPreset(p)}
              className="px-2.5 py-1.5 rounded-md border border-gray-300 bg-white text-[11px] font-medium text-gray-700 active:bg-gray-100"
            >
              {p.label}
            </button>
          ))}
        </div>
      </div>

      {/* Summary chips */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-2 mb-3">
        <Chip label="Lines" value={String(report?.totals.lines ?? "—")} />
        <Chip label="Units consumed" value={String(report?.totals.units ?? "—")} />
        <Chip
          label="Consumption (net DKK)"
          value={report ? `${fmtDKK(report.totals.netDKK)} kr` : "—"}
        />
        <Chip
          label="Consumption (incl. MOMS)"
          value={report ? `${fmtDKK(report.totals.grossDKK)} kr` : "—"}
          accent="orange"
        />
      </div>

      {report?.fxRate && (
        <div className="text-[10px] text-gray-400 mb-2">
          FX EUR→DKK <span className="tabular-nums font-semibold text-gray-700">{report.fxRate.toFixed(4)}</span>
          {report.totals.unpricedCount > 0 && (
            <span className="ml-3 text-amber-700">
              · {report.totals.unpricedCount} item{report.totals.unpricedCount === 1 ? "" : "s"} have no price (excluded from value)
            </span>
          )}
        </div>
      )}

      {/* Search + filter */}
      <div className="flex gap-2 mb-3 sticky top-0 z-10 bg-gray-50 pt-1 pb-2 -mx-3 sm:-mx-6 px-3 sm:px-6">
        <input
          type="search"
          value={search}
          onChange={(e) => setSearch(e.target.value)}
          placeholder="Search item, brand, or code"
          className="flex-1 px-3 py-2.5 rounded-lg border border-gray-300 bg-white text-sm focus:outline-none focus:ring-2 focus:ring-orange-500"
        />
        <select
          value={filterCat}
          onChange={(e) => setFilterCat(e.target.value)}
          className="px-2 py-2.5 rounded-lg border border-gray-300 bg-white text-sm focus:outline-none focus:ring-2 focus:ring-orange-500"
        >
          <option value="">All categories</option>
          {categories.map((c) => (
            <option key={c} value={c}>
              {c}
            </option>
          ))}
        </select>
      </div>

      {/* Table — desktop header, card-flow on mobile */}
      {err ? (
        <div className="py-12 text-center text-sm text-red-600">{err}</div>
      ) : !report ? (
        <div className="py-12 text-center text-sm text-gray-400">Loading…</div>
      ) : filtered.length === 0 ? (
        <div className="py-12 text-center text-sm text-gray-400">No consumption in this period.</div>
      ) : (
        <div>
          <div className="hidden md:grid md:grid-cols-[44px_minmax(0,1fr)_90px_70px_120px_140px_24px] gap-3 items-center px-3 py-1.5 text-[10px] uppercase tracking-wider text-gray-500 font-semibold">
            <span />
            <span>Item</span>
            <span className="text-right">Units</span>
            <span className="text-right">Lines</span>
            <span className="text-right">Unit price</span>
            <span className="text-right">Value (incl. MOMS)</span>
            <span />
          </div>
          <div className="bg-white rounded-lg border border-gray-200 divide-y divide-gray-100 overflow-hidden">
            {filtered.map((r) => (
              <div
                key={r.productId}
                className="px-3 py-2.5 md:grid md:grid-cols-[44px_minmax(0,1fr)_90px_70px_120px_140px_24px] md:gap-3 md:items-center flex flex-wrap gap-2"
              >
                {r.image ? (
                  <img
                    src={r.image.startsWith("http") ? r.image : `/assets/${r.image}`}
                    alt=""
                    className="w-10 h-10 rounded object-cover border border-gray-200 flex-shrink-0"
                  />
                ) : (
                  <div className="w-10 h-10 rounded bg-gray-100 border border-gray-200 flex-shrink-0" />
                )}
                <div className="flex-1 min-w-0">
                  <div className="text-sm font-medium text-gray-900 truncate">{r.name}</div>
                  <div className="text-[11px] text-gray-500 flex items-center gap-1.5">
                    {r.brand && <span>{r.brand}</span>}
                    {r.brand && r.code && <span>·</span>}
                    {r.code && <span className="font-mono">{r.code}</span>}
                    {r.unit && <span>· per {r.unit}</span>}
                  </div>
                </div>
                <div className="md:text-right text-sm font-black tabular-nums text-gray-900">
                  <span className="md:hidden text-[11px] text-gray-500 mr-1">Units:</span>
                  {r.qty}
                </div>
                <div className="md:text-right text-[11px] text-gray-500">
                  <span className="md:hidden mr-1">Lines:</span>
                  {r.lineCount} / {r.deliveryCount} dlv
                </div>
                <div className="md:text-right text-[11px]">
                  {r.priceNet > 0 ? (
                    <>
                      <span className="md:hidden text-gray-500 mr-1">Price:</span>
                      <span className="font-semibold tabular-nums text-gray-800">
                        {r.priceNet.toFixed(2)} {r.priceCurrency}
                      </span>
                    </>
                  ) : (
                    <span className="text-amber-700 bg-amber-100 px-1.5 py-0.5 rounded text-[10px] font-semibold uppercase tracking-wider">
                      No price
                    </span>
                  )}
                </div>
                <div className="md:text-right text-sm font-bold tabular-nums text-orange-600">
                  <span className="md:hidden text-[11px] text-gray-500 font-normal mr-1">Value:</span>
                  {r.lineGrossDKK > 0 ? `${fmtDKK(r.lineGrossDKK)} kr` : "—"}
                </div>
                <span />
              </div>
            ))}
          </div>
        </div>
      )}
    </div>
  );
}

function Chip({ label, value, accent }: { label: string; value: string; accent?: "orange" }) {
  return (
    <div className="bg-white border border-gray-200 rounded-lg px-3 py-2">
      <div className="text-[10px] uppercase tracking-wider text-gray-500 truncate">{label}</div>
      <div
        className={`text-base sm:text-lg font-bold tabular-nums leading-tight mt-0.5 ${
          accent === "orange" ? "text-orange-600" : "text-gray-900"
        }`}
      >
        {value}
      </div>
    </div>
  );
}
