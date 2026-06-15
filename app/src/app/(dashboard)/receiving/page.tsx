"use client";

import { useEffect, useMemo, useRef, useState } from "react";
import { useRouter } from "next/navigation";

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

type CartItem = Product & { quantity: number };

function imgSrc(image: string) {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

const LS_DRAFT = "receiving_draft_cart";

export default function ReceivingPage() {
  const router = useRouter();
  const [products, setProducts] = useState<Product[]>([]);
  const [cart, setCart] = useState<CartItem[]>([]);
  const [search, setSearch] = useState("");
  const [filterCat, setFilterCat] = useState<string>("");
  const [mobileCartOpen, setMobileCartOpen] = useState(false);
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState("");
  const cartLoaded = useRef(false);

  // Restore + persist draft
  useEffect(() => {
    try {
      const saved = localStorage.getItem(LS_DRAFT);
      if (saved) {
        const parsed = JSON.parse(saved);
        if (Array.isArray(parsed)) setCart(parsed);
      }
    } catch {}
    cartLoaded.current = true;
  }, []);
  useEffect(() => {
    if (!cartLoaded.current) return;
    if (cart.length > 0) localStorage.setItem(LS_DRAFT, JSON.stringify(cart));
    else localStorage.removeItem(LS_DRAFT);
  }, [cart]);

  // Live product list — refresh every 20s so stock shifts (from picks)
  // show up while the admin is preparing a receiving.
  useEffect(() => {
    let alive = true;
    async function load() {
      const r = await fetch("/api/products", { cache: "no-store" });
      if (!alive) return;
      setProducts(await r.json());
    }
    load();
    const id = setInterval(load, 20000);
    return () => {
      alive = false;
      clearInterval(id);
    };
  }, []);

  const categories = useMemo(
    () => [...new Set(products.map((p) => p.category).filter(Boolean))].sort(),
    [products]
  );

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

  function addToCart(p: Product) {
    setCart((prev) => {
      const existing = prev.find((x) => x._id === p._id);
      if (existing) {
        return prev.map((x) => (x._id === p._id ? { ...x, quantity: x.quantity + 1 } : x));
      }
      return [...prev, { ...p, quantity: 1 }];
    });
  }
  function updateCartQty(id: string, qty: number) {
    const q = Math.max(0, Math.floor(qty));
    if (q === 0) {
      setCart((prev) => prev.filter((x) => x._id !== id));
      return;
    }
    setCart((prev) => prev.map((x) => (x._id === id ? { ...x, quantity: q } : x)));
  }
  function removeFromCart(id: string) {
    setCart((prev) => prev.filter((x) => x._id !== id));
  }
  function clearCart() {
    if (!cart.length) return;
    if (!confirm("Clear the receiving list?")) return;
    setCart([]);
  }

  async function submit() {
    if (saving || cart.length === 0) return;
    setSaving(true);
    setMsg("");
    try {
      const r = await fetch("/api/receivings", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          items: cart.map((c) => ({
            productId: c._id,
            code: c.code,
            name: c.name,
            unit: c.unit,
            image: c.image,
            quantity: c.quantity,
          })),
        }),
      });
      if (!r.ok) {
        const err = await r.json().catch(() => ({}));
        setMsg(err.error || "Could not save receiving");
        setSaving(false);
        return;
      }
      const data = await r.json();
      setCart([]);
      localStorage.removeItem(LS_DRAFT);
      setMsg(`✓ Received ${data.reference} — stock updated`);
      setTimeout(() => router.push("/stock"), 1200);
    } catch {
      setMsg("Network error");
      setSaving(false);
    }
  }

  const totalUnits = cart.reduce((s, c) => s + c.quantity, 0);

  return (
    <div className="flex flex-col md:flex-row h-full">
      {/* ── Item grid ─────────────────────────────────────────────── */}
      <div className="flex-1 min-w-0 flex flex-col">
        <div className="px-3 sm:px-6 pt-3 pb-2 flex items-start gap-3 flex-wrap">
          <div className="flex-1 min-w-0">
            <h1 className="text-xl sm:text-2xl font-bold text-gray-900">Receiving</h1>
            <p className="text-xs text-gray-500 mt-0.5">
              Tap items to add. Saving the list bumps stock and records the receiving.
            </p>
          </div>
        </div>

        <div className="px-3 sm:px-6 pb-2 sticky top-0 bg-gray-50 z-10 flex gap-2">
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

        <div className="flex-1 overflow-auto px-3 sm:px-6 pb-24 md:pb-4">
          {filtered.length === 0 ? (
            <div className="py-12 text-center text-sm text-gray-400">No items match.</div>
          ) : (
            <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 xl:grid-cols-5 gap-2 sm:gap-3">
              {filtered.map((p) => {
                const stock = Number(p.qty) || 0;
                const isOut = stock <= 0;
                const inCart = cart.find((c) => c._id === p._id)?.quantity || 0;
                return (
                  <button
                    key={p._id}
                    type="button"
                    onClick={() => addToCart(p)}
                    className={`relative bg-white rounded-lg border text-left p-2 transition active:scale-[0.98] flex flex-col ${
                      isOut
                        ? "border-2 border-red-400 ring-1 ring-red-200"
                        : "border-gray-200 hover:border-orange-300"
                    }`}
                  >
                    <div className="aspect-square rounded-md bg-gray-100 overflow-hidden mb-1 flex items-center justify-center">
                      {p.image ? (
                        <img src={imgSrc(p.image)} alt="" className="w-full h-full object-cover pointer-events-none" />
                      ) : (
                        <span className="text-gray-300 text-xs">—</span>
                      )}
                    </div>
                    {/* Quantity below image — clear black bold, never grey */}
                    <div className="flex items-center justify-between gap-1 mt-0.5">
                      <span
                        className={`text-base font-black tabular-nums leading-none ${
                          isOut ? "text-red-700" : "text-black"
                        }`}
                      >
                        {stock}
                      </span>
                      <span className="text-[10px] text-gray-600 font-medium truncate">
                        {p.unit}
                      </span>
                    </div>
                    <div className="mt-1 text-[12px] font-medium text-gray-900 leading-tight line-clamp-2">
                      {p.name}
                    </div>
                    <div className="text-[10px] text-gray-500 truncate">{p.brand}</div>
                    {inCart > 0 && (
                      <span className="absolute top-1 right-1 bg-orange-500 text-white text-[10px] font-black rounded-full w-6 h-6 flex items-center justify-center shadow">
                        +{inCart}
                      </span>
                    )}
                    {isOut && (
                      <span className="absolute top-1 left-1 bg-red-500 text-white text-[9px] font-bold px-1.5 py-0.5 rounded uppercase tracking-wider">
                        Out
                      </span>
                    )}
                  </button>
                );
              })}
            </div>
          )}
        </div>
      </div>

      {/* ── Cart panel (desktop) ──────────────────────────────────── */}
      <aside className="hidden md:flex md:w-80 lg:w-96 border-l border-gray-200 bg-white flex-col">
        <CartPanel
          cart={cart}
          totalUnits={totalUnits}
          saving={saving}
          msg={msg}
          onUpdate={updateCartQty}
          onRemove={removeFromCart}
          onClear={clearCart}
          onSubmit={submit}
        />
      </aside>

      {/* ── Cart drawer (mobile) ──────────────────────────────────── */}
      {cart.length > 0 && (
        <button
          type="button"
          onClick={() => setMobileCartOpen(true)}
          className="md:hidden fixed bottom-4 right-4 z-30 bg-orange-500 text-white rounded-full shadow-xl pl-4 pr-5 py-3 flex items-center gap-2 active:scale-95"
        >
          <span className="text-sm font-bold">Cart</span>
          <span className="bg-white text-orange-600 rounded-full px-2 py-0.5 text-xs font-black tabular-nums">
            {totalUnits}
          </span>
        </button>
      )}
      {mobileCartOpen && (
        <div
          className="md:hidden fixed inset-0 bg-black/40 z-40 flex items-end"
          onClick={() => setMobileCartOpen(false)}
        >
          <div
            className="bg-white w-full max-h-[85vh] rounded-t-2xl flex flex-col"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex items-center justify-between px-4 py-3 border-b">
              <h3 className="font-bold">Receiving list</h3>
              <button
                type="button"
                onClick={() => setMobileCartOpen(false)}
                className="w-8 h-8 rounded-full bg-gray-100"
              >
                ✕
              </button>
            </div>
            <CartPanel
              cart={cart}
              totalUnits={totalUnits}
              saving={saving}
              msg={msg}
              onUpdate={updateCartQty}
              onRemove={removeFromCart}
              onClear={clearCart}
              onSubmit={submit}
            />
          </div>
        </div>
      )}
    </div>
  );
}

function CartPanel({
  cart,
  totalUnits,
  saving,
  msg,
  onUpdate,
  onRemove,
  onClear,
  onSubmit,
}: {
  cart: CartItem[];
  totalUnits: number;
  saving: boolean;
  msg: string;
  onUpdate: (id: string, qty: number) => void;
  onRemove: (id: string) => void;
  onClear: () => void;
  onSubmit: () => void;
}) {
  return (
    <>
      <div className="px-4 py-3 border-b flex items-center justify-between">
        <div>
          <div className="text-xs uppercase tracking-wider text-gray-500 font-semibold">
            Receiving
          </div>
          <div className="text-sm text-gray-800">
            {cart.length} items · <span className="font-black tabular-nums">{totalUnits}</span>{" "}
            units
          </div>
        </div>
        {cart.length > 0 && (
          <button
            type="button"
            onClick={onClear}
            className="text-[11px] text-red-600 underline"
          >
            Clear
          </button>
        )}
      </div>
      <div className="flex-1 overflow-auto">
        {cart.length === 0 ? (
          <div className="py-12 text-center text-gray-400 text-sm">
            No items yet. Tap from the left to add.
          </div>
        ) : (
          <ul className="divide-y">
            {cart.map((c) => (
              <li key={c._id} className="px-3 py-2 flex items-center gap-2">
                <div className="w-9 h-9 rounded bg-gray-100 overflow-hidden flex-shrink-0">
                  {c.image && (
                    <img src={imgSrc(c.image)} alt="" className="w-full h-full object-cover" />
                  )}
                </div>
                <div className="flex-1 min-w-0">
                  <div className="text-sm font-medium text-gray-900 truncate">{c.name}</div>
                  <div className="text-[10px] text-gray-500 truncate">
                    {c.brand} · {c.unit}
                  </div>
                </div>
                <div className="flex items-center gap-1 flex-shrink-0">
                  <button
                    type="button"
                    onClick={() => onUpdate(c._id, c.quantity - 1)}
                    className="w-7 h-7 rounded border border-gray-300 bg-white text-gray-700 active:bg-gray-100"
                  >
                    −
                  </button>
                  <input
                    type="number"
                    inputMode="numeric"
                    min={0}
                    value={c.quantity}
                    onChange={(e) => onUpdate(c._id, parseInt(e.target.value, 10) || 0)}
                    onFocus={(e) => e.target.select()}
                    className="w-12 h-7 text-center text-sm font-bold tabular-nums rounded border border-gray-300 bg-white focus:outline-none focus:ring-2 focus:ring-orange-500"
                  />
                  <button
                    type="button"
                    onClick={() => onUpdate(c._id, c.quantity + 1)}
                    className="w-7 h-7 rounded border border-gray-300 bg-white text-gray-700 active:bg-gray-100"
                  >
                    +
                  </button>
                  <button
                    type="button"
                    onClick={() => onRemove(c._id)}
                    className="text-red-500 text-xs ml-1"
                  >
                    ✕
                  </button>
                </div>
              </li>
            ))}
          </ul>
        )}
      </div>
      <div className="border-t p-3 space-y-2 bg-gray-50">
        {msg && (
          <div
            className={`text-[12px] px-2 py-1.5 rounded text-center font-medium ${
              msg.startsWith("✓") ? "text-green-700 bg-green-50" : "text-red-700 bg-red-50"
            }`}
          >
            {msg}
          </div>
        )}
        <button
          type="button"
          onClick={onSubmit}
          disabled={saving || cart.length === 0}
          className="w-full py-3 rounded-lg bg-orange-500 text-white font-bold text-sm active:bg-orange-600 disabled:opacity-50"
        >
          {saving ? "Saving…" : `Receive ${totalUnits} unit${totalUnits === 1 ? "" : "s"} → add to stock`}
        </button>
      </div>
    </>
  );
}
