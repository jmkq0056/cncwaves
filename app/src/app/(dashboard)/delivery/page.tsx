"use client";

import { useEffect, useState, useMemo } from "react";

type Product = {
  _id: string;
  code: string;
  name: string;
  brand: string;
  category: string;
  unit: string;
  image: string;
};

type CartItem = Product & { quantity: number; note: string };

export default function DeliveryPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [cart, setCart] = useState<CartItem[]>([]);
  const [search, setSearch] = useState("");
  const [activeFilter, setActiveFilter] = useState<string>("all");
  const [filterType, setFilterType] = useState<"category" | "subcategory" | "brand" | null>(null);
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState("");
  const [visitedCategories, setVisitedCategories] = useState<Set<string>>(new Set());

  useEffect(() => {
    fetch("/api/products")
      .then((r) => r.json())
      .then(setProducts)
      .catch(() => {});
  }, []);

  const categories = useMemo(
    () => [...new Set(products.map((p) => p.category).filter(Boolean))].sort(),
    [products]
  );
  const brands = useMemo(
    () => [...new Set(products.map((p) => p.brand).filter(Boolean))].sort(),
    [products]
  );

  // Track visited categories when a filter is selected
  function selectFilter(type: "category" | "subcategory" | "brand", value: string) {
    setActiveFilter(value);
    setFilterType(type);
    if (type === "category" && value !== "all") {
      setVisitedCategories((prev) => new Set([...prev, value]));
    }
  }

  const filtered = useMemo(() => {
    let list = products;
    if (activeFilter !== "all" && filterType) {
      if (filterType === "category" || filterType === "subcategory") {
        list = list.filter((p) => p.category === activeFilter);
      } else {
        list = list.filter((p) => p.brand === activeFilter);
      }
    }
    if (search) {
      const q = search.toLowerCase();
      list = list.filter(
        (p) =>
          p.name.toLowerCase().includes(q) ||
          p.code.toLowerCase().includes(q)
      );
    }
    return list;
  }, [products, activeFilter, filterType, search]);

  const allCategoriesVisited = categories.length > 0 && categories.every((c) => visitedCategories.has(c));

  function addToCart(product: Product) {
    setCart((prev) => {
      const existing = prev.find((c) => c._id === product._id);
      if (existing) {
        return prev.map((c) =>
          c._id === product._id ? { ...c, quantity: c.quantity + 1 } : c
        );
      }
      return [...prev, { ...product, quantity: 1, note: "" }];
    });
  }

  function updateQty(id: string, qty: number) {
    if (qty <= 0) {
      setCart((prev) => prev.filter((c) => c._id !== id));
    } else {
      setCart((prev) => prev.map((c) => (c._id === id ? { ...c, quantity: qty } : c)));
    }
  }

  function removeItem(id: string) {
    setCart((prev) => prev.filter((c) => c._id !== id));
  }

  async function handleSave() {
    if (cart.length === 0) return;
    setSaving(true);
    setMsg("");

    const items = cart.map((c) => ({
      productId: c._id,
      code: c.code,
      name: c.name,
      unit: c.unit,
      image: c.image,
      quantity: c.quantity,
      note: c.note,
    }));

    const res = await fetch("/api/deliveries", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ items }),
    });

    if (res.ok) {
      const data = await res.json();
      setMsg(`Saved! Reference: ${data.reference}`);
      setCart([]);
      setVisitedCategories(new Set());
    } else {
      setMsg("Failed to save delivery");
    }
    setSaving(false);
  }

  // Flyout panel content
  const flyoutOptions = filterType === "brand" ? brands : categories;

  return (
    <div className="flex h-full relative overflow-hidden">
      {/* ===== LEFT PANEL - Cart (30% width like Sanitos) ===== */}
      <div className="w-[30%] min-w-[320px] max-w-[440px] bg-white border-r flex flex-col flex-shrink-0">
        {/* Header */}
        <div className="p-3 border-b">
          <div className="flex items-center justify-between mb-2">
            <span className="font-semibold text-gray-700">CNC Stock</span>
            {/* Category progress indicator */}
            <span className="text-xs text-gray-400">
              {visitedCategories.size}/{categories.length} categories
            </span>
          </div>
          <input
            type="text"
            placeholder="Scan/Search product by name/code"
            value={search}
            onChange={(e) => { setSearch(e.target.value); setActiveFilter("all"); setFilterType(null); }}
            className="w-full px-3 py-2 border border-gray-300 rounded text-sm focus:outline-none focus:ring-1 focus:ring-blue-400"
          />
        </div>

        {/* Cart table header */}
        <div className="grid grid-cols-[1fr_50px_50px_24px] px-3 py-2 bg-blue-500 text-white text-xs font-bold">
          <span>Product</span>
          <span className="text-center">Qty</span>
          <span className="text-center">Unit</span>
          <span></span>
        </div>

        {/* Cart items - scrollable */}
        <div className="flex-1 overflow-auto">
          {cart.length === 0 && (
            <p className="text-gray-400 text-sm text-center mt-10">
              Click products to add them
            </p>
          )}
          {cart.map((item) => (
            <div
              key={item._id}
              className="grid grid-cols-[1fr_50px_50px_24px] items-center px-3 py-2 border-b text-xs hover:bg-red-50"
            >
              <div className="truncate pr-1">
                <span className="font-medium">{item.code} - {item.name}</span>
              </div>
              <input
                type="number"
                min="1"
                value={item.quantity}
                onChange={(e) => updateQty(item._id, parseInt(e.target.value) || 0)}
                className="w-12 px-1 py-0.5 border rounded text-center text-xs"
              />
              <span className="text-gray-500 text-center truncate">{item.unit}</span>
              <button
                onClick={() => removeItem(item._id)}
                className="text-red-400 hover:text-red-600 font-bold text-sm"
              >
                x
              </button>
            </div>
          ))}
        </div>

        {/* Footer */}
        <div className="border-t bg-gray-50">
          <div className="flex justify-between px-3 py-2 text-sm">
            <span>Items</span>
            <span className="font-bold">
              {cart.reduce((s, c) => s + c.quantity, 0)} ({cart.length})
            </span>
          </div>

          {/* Category progress bar */}
          {categories.length > 0 && (
            <div className="px-3 pb-2">
              <div className="flex gap-1 flex-wrap">
                {categories.map((cat) => (
                  <span
                    key={cat}
                    className={`inline-block w-2 h-2 rounded-full ${
                      visitedCategories.has(cat) ? "bg-green-500" : "bg-gray-300"
                    }`}
                    title={`${cat}${visitedCategories.has(cat) ? " (visited)" : ""}`}
                  />
                ))}
              </div>
              <p className="text-[10px] text-gray-400 mt-1">
                {allCategoriesVisited
                  ? "All categories reviewed"
                  : `${categories.length - visitedCategories.size} categories remaining`}
              </p>
            </div>
          )}

          {msg && (
            <p className={`text-xs px-3 pb-2 ${msg.includes("Saved") ? "text-green-600" : "text-red-500"}`}>
              {msg}
            </p>
          )}

          <div className="grid grid-cols-2 gap-0">
            <button
              onClick={() => { setCart([]); setMsg(""); setVisitedCategories(new Set()); }}
              className="py-3 bg-red-400 text-white text-sm font-medium hover:bg-red-500"
            >
              Clear
            </button>
            <button
              onClick={handleSave}
              disabled={saving || cart.length === 0}
              className="py-3 bg-green-500 text-white text-sm font-medium hover:bg-green-600 disabled:opacity-50"
            >
              {saving ? "Saving..." : "Save Delivery"}
            </button>
          </div>
        </div>
      </div>

      {/* ===== RIGHT PANEL - Product grid ===== */}
      <div className="flex-1 min-w-0 flex flex-col relative overflow-hidden">
        {/* Active filter indicator */}
        {activeFilter !== "all" && filterType && (
          <div className="px-4 py-2 bg-blue-50 border-b flex items-center justify-between">
            <span className="text-sm text-blue-700 font-medium">
              {activeFilter}
            </span>
            <button
              onClick={() => { setActiveFilter("all"); setFilterType(null); }}
              className="text-xs text-blue-500 hover:text-blue-700"
            >
              Show All
            </button>
          </div>
        )}

        {/* Product grid - large cards like Sanitos */}
        <div className="flex-1 overflow-auto p-4 pr-12">
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-7 gap-4">
            {filtered.map((product) => {
              const inCart = cart.find((c) => c._id === product._id);
              return (
                <button
                  key={product._id}
                  onClick={() => addToCart(product)}
                  className={`relative flex flex-col items-center p-3 bg-white rounded border hover:shadow-lg transition-all text-center ${
                    inCart ? "border-blue-400 ring-1 ring-blue-300" : "border-gray-200"
                  }`}
                >
                  {inCart && (
                    <span className="absolute -top-2 -right-2 bg-blue-500 text-white text-xs w-5 h-5 rounded-full flex items-center justify-center font-bold">
                      {inCart.quantity}
                    </span>
                  )}
                  <div className="w-20 h-20 flex items-center justify-center mb-2">
                    {product.image ? (
                      <img
                        src={`/assets/${product.image}`}
                        alt={product.name}
                        className="max-w-full max-h-full object-contain"
                      />
                    ) : (
                      <div className="w-16 h-16 bg-gray-100 rounded flex items-center justify-center text-gray-300">
                        <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                        </svg>
                      </div>
                    )}
                  </div>
                  <span className="text-xs font-semibold leading-tight line-clamp-2 uppercase">
                    {product.name}
                  </span>
                </button>
              );
            })}
          </div>
        </div>

        {/* ===== RIGHT EDGE - Vertical filter tabs (like Sanitos) ===== */}
        <div className="absolute right-0 top-1/2 -translate-y-1/2 flex flex-col gap-0 z-20">
          <button
            onClick={() => {
              if (filterType === "category") { setFilterType(null); }
              else { setFilterType("category"); }
            }}
            className={`py-6 px-1.5 text-white text-xs font-bold writing-vertical rounded-l cursor-pointer ${
              filterType === "category" ? "bg-blue-600" : "bg-blue-400 hover:bg-blue-500"
            }`}
            style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
          >
            Categories
          </button>
          <button
            onClick={() => {
              if (filterType === "subcategory") { setFilterType(null); }
              else { setFilterType("subcategory"); }
            }}
            className={`py-6 px-1.5 text-white text-xs font-bold cursor-pointer ${
              filterType === "subcategory" ? "bg-orange-500" : "bg-orange-400 hover:bg-orange-500"
            }`}
            style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
          >
            Sub Categories
          </button>
          <button
            onClick={() => {
              if (filterType === "brand") { setFilterType(null); }
              else { setFilterType("brand"); }
            }}
            className={`py-6 px-1.5 text-white text-xs font-bold rounded-l cursor-pointer ${
              filterType === "brand" ? "bg-green-600" : "bg-green-500 hover:bg-green-600"
            }`}
            style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
          >
            Brands
          </button>
        </div>

        {/* ===== FLYOUT PANEL - Shows when a filter tab is active ===== */}
        {filterType && (
          <div className="absolute right-8 top-0 bottom-0 w-64 bg-white border-l shadow-xl z-10 overflow-auto">
            <div className="p-3 border-b bg-gray-50 flex items-center justify-between">
              <span className="font-semibold text-sm text-gray-700 capitalize">{filterType === "subcategory" ? "Sub Categories" : filterType === "brand" ? "Brands" : "Categories"}</span>
              <button onClick={() => { setFilterType(null); setActiveFilter("all"); }} className="text-gray-400 hover:text-gray-600 text-lg">x</button>
            </div>
            <div className="p-2 grid grid-cols-2 gap-2">
              {flyoutOptions.map((opt) => {
                const isVisited = filterType === "category" && visitedCategories.has(opt);
                return (
                  <button
                    key={opt}
                    onClick={() => selectFilter(filterType, opt)}
                    className={`relative flex flex-col items-center p-3 border rounded text-center hover:shadow transition-all ${
                      activeFilter === opt
                        ? "border-blue-400 bg-blue-50"
                        : "border-gray-200 bg-white"
                    }`}
                  >
                    {/* Visited dot */}
                    {filterType === "category" && (
                      <span
                        className={`absolute top-1 right-1 w-2.5 h-2.5 rounded-full ${
                          isVisited ? "bg-green-500" : "bg-gray-300"
                        }`}
                      />
                    )}
                    <div className="w-12 h-12 bg-gray-100 rounded flex items-center justify-center text-gray-400 mb-1">
                      <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                        <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                      </svg>
                    </div>
                    <span className="text-[10px] font-bold uppercase leading-tight">{opt}</span>
                  </button>
                );
              })}
            </div>
          </div>
        )}
      </div>
    </div>
  );
}
