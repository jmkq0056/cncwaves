"use client";

import { useEffect, useMemo, useRef, useState } from "react";

type Product = {
  _id: string;
  code: string;
  name: string;
  brand: string;
  category: string;
  unit: string;
  image: string;
  qty?: number;
};

type SaveStatus = "idle" | "saving" | "saved" | "error";

export default function StockPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [filterCat, setFilterCat] = useState<string>("");
  const [savingMap, setSavingMap] = useState<Record<string, SaveStatus>>({});
  const debounceTimers = useRef<Record<string, ReturnType<typeof setTimeout>>>({});

  useEffect(() => {
    fetch("/api/products")
      .then((r) => r.json())
      .then((data) => {
        setProducts(data);
        setLoading(false);
      });
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
    () => filtered.filter((p) => (p.qty ?? 0) === 0).length,
    [filtered]
  );

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
    <div className="px-3 sm:px-6 py-4 sm:py-6 max-w-3xl mx-auto">
      <div className="mb-4 sm:mb-6">
        <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Stock</h1>
        <p className="text-xs sm:text-sm text-gray-500 mt-0.5">
          Tap a number to edit. Changes save automatically.
        </p>
      </div>

      {/* Summary chips */}
      <div className="grid grid-cols-3 gap-2 mb-3">
        <SummaryChip label="Items" value={String(filtered.length)} />
        <SummaryChip label="Total units" value={String(totalUnits)} />
        <SummaryChip
          label="Out of stock"
          value={String(outOfStockCount)}
          accent={outOfStockCount > 0 ? "red" : "green"}
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
                  <StockRow
                    key={p._id}
                    product={p}
                    status={savingMap[p._id] || "idle"}
                    onChange={(v) => onChangeQty(p._id, v)}
                    onBump={(d) => bump(p._id, d)}
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

function SummaryChip({
  label,
  value,
  accent,
}: {
  label: string;
  value: string;
  accent?: "green" | "red";
}) {
  const valueColor =
    accent === "red" ? "text-red-600" : accent === "green" ? "text-green-600" : "text-gray-900";
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
  onChange,
  onBump,
}: {
  product: Product;
  status: SaveStatus;
  onChange: (v: string) => void;
  onBump: (d: number) => void;
}) {
  const qty = product.qty ?? 0;
  const low = qty === 0;
  return (
    <div className="flex items-center gap-2 px-3 py-2.5">
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
        <div className="text-[11px] text-gray-500 flex items-center gap-1.5">
          {product.brand && <span>{product.brand}</span>}
          {product.brand && product.unit && <span>·</span>}
          {product.unit && <span>per {product.unit}</span>}
        </div>
      </div>

      <div className="flex items-center gap-1 flex-shrink-0">
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
          min={0}
          step={1}
          value={qty}
          onChange={(e) => onChange(e.target.value)}
          onFocus={(e) => e.target.select()}
          className={`w-14 h-9 text-center text-sm font-semibold tabular-nums rounded-md border bg-white focus:outline-none focus:ring-2 ${
            low
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
        <span className="text-[10px] text-gray-500 w-7 text-left" aria-live="polite">
          {status === "saving" && "…"}
          {status === "saved" && "✓"}
          {status === "error" && "!"}
        </span>
      </div>
    </div>
  );
}
