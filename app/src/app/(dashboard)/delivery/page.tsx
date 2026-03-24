"use client";

import { useEffect, useState, useMemo } from "react";

function imgSrc(image: string) {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

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
  const [showSubCategories, setShowSubCategories] = useState(true);
  const [showBrands, setShowBrands] = useState(true);
  const [mobileCartOpen, setMobileCartOpen] = useState(false);
  const [mobileFilterOpen, setMobileFilterOpen] = useState(false);

  useEffect(() => {
    fetch("/api/products")
      .then((r) => r.json())
      .then(setProducts)
      .catch(() => {});
    fetch("/api/settings")
      .then((r) => r.json())
      .then((data) => {
        setShowSubCategories(data.show_subcategories !== "false");
        setShowBrands(data.show_brands !== "false");
      })
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

  function selectFilter(type: "category" | "subcategory" | "brand", value: string) {
    setActiveFilter(value);
    setFilterType(type);
    if (type === "category" && value !== "all") {
      setVisitedCategories((prev) => new Set([...prev, value]));
    }
    setMobileFilterOpen(false);
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
      const emailNote = data.emailSent
        ? " - Email sent"
        : data.emailError
        ? ` - Email failed: ${data.emailError}`
        : "";
      setMsg(`Saved! ${data.reference}${emailNote}`);
      setCart([]);
      setVisitedCategories(new Set());
      setMobileCartOpen(false);
    } else {
      setMsg("Failed to save delivery");
    }
    setSaving(false);
  }

  const flyoutOptions = filterType === "brand" ? brands : categories;
  const totalItems = cart.reduce((s, c) => s + c.quantity, 0);

  const catTabBg = filterType === "category"
    ? "bg-gray-700"
    : allCategoriesVisited
      ? "bg-gray-600 hover:bg-gray-700"
      : "bg-gray-500 hover:bg-gray-600";

  return (
    <div className="flex h-full relative overflow-hidden">
      {/* ===== DESKTOP LEFT PANEL (Cart) ===== */}
      <div className="hidden md:flex w-[30%] min-w-[320px] max-w-[440px] bg-white border-r flex-col flex-shrink-0">
        <div className="p-3 border-b">
          <div className="flex items-center justify-between mb-2">
            <span className="font-semibold text-gray-700">CNC Manager</span>
            <span className="text-xs text-gray-400">
              {visitedCategories.size}/{categories.length} categories
            </span>
          </div>
          <input
            type="text"
            placeholder="Scan/Search product by name/code"
            value={search}
            onChange={(e) => { setSearch(e.target.value); setActiveFilter("all"); setFilterType(null); }}
            className="w-full px-3 py-2 border border-gray-300 rounded text-sm focus:outline-none focus:ring-1 focus:ring-gray-400"
          />
        </div>

        <div className="grid grid-cols-[32px_1fr_50px_60px_24px] px-3 py-2 bg-gray-700 text-white text-xs font-bold items-center">
          <span></span>
          <span>Product</span>
          <span className="text-center">Qty</span>
          <span className="text-center">Unit</span>
          <span></span>
        </div>

        <div className="flex-1 overflow-auto">
          {cart.length === 0 && (
            <p className="text-gray-400 text-sm text-center mt-10">
              Click products to add them
            </p>
          )}
          {cart.map((item) => (
            <div
              key={item._id}
              className="grid grid-cols-[32px_1fr_50px_60px_24px] items-center px-3 py-1.5 border-b text-xs hover:bg-gray-50"
            >
              <div className="w-7 h-7 flex-shrink-0 rounded overflow-hidden bg-gray-100 flex items-center justify-center">
                {item.image ? (
                  <img src={imgSrc(item.image)} alt="" className="w-full h-full object-cover" />
                ) : (
                  <span className="text-gray-300 text-[8px]">--</span>
                )}
              </div>
              <div className="truncate pr-1 pl-1">
                <span className="font-medium">{item.code} - {item.name}</span>
              </div>
              <input
                type="number"
                min="1"
                inputMode="numeric"
                value={item.quantity}
                onChange={(e) => updateQty(item._id, parseInt(e.target.value) || 0)}
                className="w-12 px-1 py-0.5 border rounded text-center text-xs"
              />
              <span className="text-gray-500 text-center truncate text-[10px]">{item.unit}</span>
              <button
                onClick={() => removeItem(item._id)}
                className="text-gray-400 hover:text-red-500 font-bold text-sm"
              >
                <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>
          ))}
        </div>

        <div className="border-t bg-gray-50">
          <div className="flex justify-between px-3 py-2 text-sm">
            <span>Items</span>
            <span className="font-bold">
              {totalItems} ({cart.length})
            </span>
          </div>

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
              className="py-3 bg-gray-200 text-gray-700 text-sm font-medium hover:bg-gray-300 transition-colors"
            >
              Clear
            </button>
            <button
              onClick={handleSave}
              disabled={saving || cart.length === 0}
              className="py-3 bg-gray-700 text-white text-sm font-medium hover:bg-gray-800 disabled:opacity-50 transition-colors"
            >
              {saving ? "Saving..." : "Save Delivery"}
            </button>
          </div>
        </div>
      </div>

      {/* ===== MOBILE SEARCH + FILTER BAR ===== */}
      <div className="md:hidden absolute top-0 left-0 right-0 z-30 bg-white border-b shadow-sm">
        <div className="flex items-center gap-2 p-2">
          <input
            type="text"
            placeholder="Search products..."
            value={search}
            onChange={(e) => { setSearch(e.target.value); setActiveFilter("all"); setFilterType(null); }}
            className="flex-1 px-3 py-2 border border-gray-200 rounded-lg text-sm focus:outline-none focus:ring-1 focus:ring-gray-400"
          />
          <button
            onClick={() => setMobileFilterOpen(!mobileFilterOpen)}
            className={`p-2 rounded-lg border text-sm transition-colors ${
              activeFilter !== "all" ? "bg-gray-700 text-white border-gray-700" : "bg-white text-gray-600 border-gray-200"
            }`}
          >
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M10.5 6h9.75M10.5 6a1.5 1.5 0 11-3 0m3 0a1.5 1.5 0 10-3 0M3.75 6H7.5m3 12h9.75m-9.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-3.75 0H7.5m9-6h3.75m-3.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-9.75 0h9.75" />
            </svg>
          </button>
        </div>

        {/* Active filter pill */}
        {activeFilter !== "all" && filterType && (
          <div className="px-2 pb-2 flex items-center gap-2">
            <span className="text-xs bg-gray-100 text-gray-700 px-2 py-1 rounded-full font-medium">{activeFilter}</span>
            <button
              onClick={() => { setActiveFilter("all"); setFilterType(null); }}
              className="text-xs text-gray-400 hover:text-gray-600"
            >
              Clear
            </button>
          </div>
        )}

        {/* Category progress */}
        {categories.length > 0 && (
          <div className="px-2 pb-2 flex items-center gap-2">
            <div className="flex gap-0.5">
              {categories.map((cat) => (
                <span
                  key={cat}
                  className={`inline-block w-1.5 h-1.5 rounded-full ${
                    visitedCategories.has(cat) ? "bg-green-500" : "bg-gray-300"
                  }`}
                />
              ))}
            </div>
            <span className="text-[10px] text-gray-400">
              {visitedCategories.size}/{categories.length}
            </span>
          </div>
        )}

        {/* Mobile filter dropdown */}
        {mobileFilterOpen && (
          <div className="border-t bg-white max-h-60 overflow-auto">
            <div className="flex border-b">
              <button
                onClick={() => setFilterType("category")}
                className={`flex-1 py-2 text-xs font-medium text-center transition-colors ${
                  filterType === "category" || !filterType ? "bg-gray-700 text-white" : "text-gray-600"
                }`}
              >
                Categories
              </button>
              {showSubCategories && (
                <button
                  onClick={() => setFilterType("subcategory")}
                  className={`flex-1 py-2 text-xs font-medium text-center transition-colors ${
                    filterType === "subcategory" ? "bg-gray-700 text-white" : "text-gray-600"
                  }`}
                >
                  Sub Categories
                </button>
              )}
              {showBrands && (
                <button
                  onClick={() => setFilterType("brand")}
                  className={`flex-1 py-2 text-xs font-medium text-center transition-colors ${
                    filterType === "brand" ? "bg-gray-700 text-white" : "text-gray-600"
                  }`}
                >
                  Brands
                </button>
              )}
            </div>
            <div className="grid grid-cols-3 gap-1 p-2">
              {(filterType === "brand" ? brands : categories).map((opt) => {
                const isVisited = (filterType === "category" || !filterType) && visitedCategories.has(opt);
                return (
                  <button
                    key={opt}
                    onClick={() => selectFilter(filterType || "category", opt)}
                    className={`relative py-2 px-1 text-[11px] font-medium rounded text-center transition-colors ${
                      activeFilter === opt
                        ? "bg-gray-700 text-white"
                        : "bg-gray-50 text-gray-700 hover:bg-gray-100"
                    }`}
                  >
                    {isVisited && (
                      <span className="absolute top-0.5 right-0.5 w-1.5 h-1.5 rounded-full bg-green-500" />
                    )}
                    {opt}
                  </button>
                );
              })}
            </div>
          </div>
        )}
      </div>

      {/* ===== RIGHT PANEL (Products) ===== */}
      <div className="flex-1 min-w-0 flex flex-col relative overflow-hidden">
        {/* Desktop active filter indicator */}
        {activeFilter !== "all" && filterType && (
          <div className="hidden md:flex px-4 py-2 bg-gray-50 border-b items-center justify-between">
            <span className="text-sm text-gray-700 font-medium">{activeFilter}</span>
            <button
              onClick={() => { setActiveFilter("all"); setFilterType(null); }}
              className="text-xs text-gray-500 hover:text-gray-700"
            >
              Show All
            </button>
          </div>
        )}

        {/* Product grid */}
        <div className="flex-1 overflow-auto p-3 md:p-4 md:pr-12 pt-[110px] md:pt-4 pb-20 md:pb-4">
          {msg && (
            <div className={`md:hidden mb-3 p-2 rounded-lg text-xs text-center ${msg.includes("Saved") ? "bg-green-50 text-green-700" : "bg-red-50 text-red-600"}`}>
              {msg}
            </div>
          )}
          <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-4 lg:grid-cols-5 xl:grid-cols-7 gap-2 md:gap-4">
            {filtered.map((product) => {
              const inCart = cart.find((c) => c._id === product._id);
              return (
                <button
                  key={product._id}
                  onClick={() => addToCart(product)}
                  className={`relative flex flex-col items-center p-2 md:p-3 bg-white rounded-lg border hover:shadow transition-all text-center ${
                    inCart ? "border-gray-400 ring-1 ring-gray-300" : "border-gray-200"
                  }`}
                >
                  {inCart && (
                    <span className="absolute -top-1.5 -right-1.5 bg-gray-700 text-white text-[10px] w-5 h-5 rounded-full flex items-center justify-center font-bold">
                      {inCart.quantity}
                    </span>
                  )}
                  <div className="w-14 h-14 md:w-20 md:h-20 flex items-center justify-center mb-1 md:mb-2 overflow-hidden">
                    {product.image ? (
                      <img
                        src={imgSrc(product.image)}
                        alt={product.name}
                        className="max-w-full max-h-full object-contain"
                      />
                    ) : (
                      <div className="w-12 h-12 md:w-16 md:h-16 bg-gray-100 rounded flex items-center justify-center text-gray-300">
                        <svg className="w-6 h-6 md:w-8 md:h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                          <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={1.5} d="M4 16l4.586-4.586a2 2 0 012.828 0L16 16m-2-2l1.586-1.586a2 2 0 012.828 0L20 14m-6-6h.01M6 20h12a2 2 0 002-2V6a2 2 0 00-2-2H6a2 2 0 00-2 2v12a2 2 0 002 2z" />
                        </svg>
                      </div>
                    )}
                  </div>
                  <span className="text-[10px] md:text-xs font-semibold leading-tight line-clamp-2 uppercase">
                    {product.name}
                  </span>
                </button>
              );
            })}
          </div>
        </div>

        {/* ===== DESKTOP RIGHT EDGE - Vertical filter tabs ===== */}
        <div className="hidden md:flex absolute right-0 top-1/2 -translate-y-1/2 flex-col gap-0 z-20">
          <button
            onClick={() => {
              if (filterType === "category") { setFilterType(null); }
              else { setFilterType("category"); }
            }}
            className={`py-6 px-1.5 text-white text-xs font-bold rounded-l cursor-pointer transition-colors ${catTabBg}`}
            style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
          >
            Categories
          </button>
          {showSubCategories && (
            <button
              onClick={() => {
                if (filterType === "subcategory") { setFilterType(null); }
                else { setFilterType("subcategory"); }
              }}
              className={`py-6 px-1.5 text-white text-xs font-bold cursor-pointer transition-colors ${
                filterType === "subcategory" ? "bg-gray-700" : "bg-gray-400 hover:bg-gray-500"
              }`}
              style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
            >
              Sub Categories
            </button>
          )}
          {showBrands && (
            <button
              onClick={() => {
                if (filterType === "brand") { setFilterType(null); }
                else { setFilterType("brand"); }
              }}
              className={`py-6 px-1.5 text-white text-xs font-bold rounded-l cursor-pointer transition-colors ${
                filterType === "brand" ? "bg-gray-700" : "bg-gray-500 hover:bg-gray-600"
              }`}
              style={{ writingMode: "vertical-rl", textOrientation: "mixed" }}
            >
              Brands
            </button>
          )}
        </div>

        {/* ===== DESKTOP FLYOUT PANEL ===== */}
        {filterType && (
          <div className="hidden md:block absolute right-8 top-0 bottom-0 w-64 bg-white border-l shadow-xl z-10 overflow-auto">
            <div className="p-3 border-b bg-gray-50 flex items-center justify-between">
              <span className="font-semibold text-sm text-gray-700 capitalize">
                {filterType === "subcategory" ? "Sub Categories" : filterType === "brand" ? "Brands" : "Categories"}
              </span>
              <button onClick={() => { setFilterType(null); setActiveFilter("all"); }} className="text-gray-400 hover:text-gray-600 text-lg">
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
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
                        ? "border-gray-400 bg-gray-50"
                        : "border-gray-200 bg-white"
                    }`}
                  >
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

      {/* ===== MOBILE FLOATING CART BUTTON ===== */}
      <button
        onClick={() => setMobileCartOpen(true)}
        className={`md:hidden fixed bottom-4 right-4 z-40 bg-gray-700 text-white rounded-full shadow-lg flex items-center gap-2 px-5 py-3 transition-all ${
          cart.length === 0 ? "opacity-60" : "opacity-100"
        }`}
      >
        <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
          <path strokeLinecap="round" strokeLinejoin="round" d="M2.25 3h1.386c.51 0 .955.343 1.087.835l.383 1.437M7.5 14.25a3 3 0 00-3 3h15.75m-12.75-3h11.218c1.121-2.3 2.1-4.684 2.924-7.138a60.114 60.114 0 00-16.536-1.84M7.5 14.25L5.106 5.272M6 20.25a.75.75 0 11-1.5 0 .75.75 0 011.5 0zm12.75 0a.75.75 0 11-1.5 0 .75.75 0 011.5 0z" />
        </svg>
        <span className="font-bold text-sm">{totalItems}</span>
        {cart.length > 0 && (
          <span className="text-xs text-gray-300">({cart.length})</span>
        )}
      </button>

      {/* ===== MOBILE CART BOTTOM SHEET ===== */}
      {mobileCartOpen && (
        <div className="md:hidden fixed inset-0 z-50">
          <div className="absolute inset-0 bg-black/40" onClick={() => setMobileCartOpen(false)} />
          <div className="absolute bottom-0 left-0 right-0 bg-white rounded-t-2xl max-h-[85vh] flex flex-col shadow-2xl">
            {/* Handle */}
            <div className="flex justify-center pt-2 pb-1">
              <div className="w-10 h-1 bg-gray-300 rounded-full" />
            </div>

            {/* Header */}
            <div className="flex items-center justify-between px-4 py-2 border-b">
              <h2 className="font-bold text-gray-800">
                Cart ({totalItems} items)
              </h2>
              <button onClick={() => setMobileCartOpen(false)} className="p-1 text-gray-400">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>

            {/* Cart items */}
            <div className="flex-1 overflow-auto">
              {cart.length === 0 ? (
                <p className="text-gray-400 text-sm text-center py-10">Cart is empty</p>
              ) : (
                <div className="divide-y">
                  {cart.map((item) => (
                    <div key={item._id} className="flex items-center gap-3 px-4 py-3">
                      <div className="w-10 h-10 flex-shrink-0 rounded overflow-hidden bg-gray-100 flex items-center justify-center">
                        {item.image ? (
                          <img src={imgSrc(item.image)} alt="" className="w-full h-full object-cover" />
                        ) : (
                          <span className="text-gray-300 text-[8px]">--</span>
                        )}
                      </div>
                      <div className="flex-1 min-w-0">
                        <p className="text-sm font-medium truncate">{item.name}</p>
                        <p className="text-[10px] text-gray-400">{item.code} / {item.unit}</p>
                      </div>
                      <div className="flex items-center gap-1">
                        <button
                          onClick={() => updateQty(item._id, item.quantity - 1)}
                          className="w-7 h-7 flex items-center justify-center rounded border text-gray-500 hover:bg-gray-50"
                        >
                          -
                        </button>
                        <span className="w-8 text-center text-sm font-bold">{item.quantity}</span>
                        <button
                          onClick={() => updateQty(item._id, item.quantity + 1)}
                          className="w-7 h-7 flex items-center justify-center rounded border text-gray-500 hover:bg-gray-50"
                        >
                          +
                        </button>
                      </div>
                      <button
                        onClick={() => removeItem(item._id)}
                        className="text-gray-300 hover:text-red-500 p-1"
                      >
                        <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" /></svg>
                      </button>
                    </div>
                  ))}
                </div>
              )}
            </div>

            {/* Category progress */}
            {categories.length > 0 && (
              <div className="px-4 py-2 border-t bg-gray-50">
                <div className="flex items-center gap-2">
                  <div className="flex gap-0.5">
                    {categories.map((cat) => (
                      <span
                        key={cat}
                        className={`inline-block w-2 h-2 rounded-full ${
                          visitedCategories.has(cat) ? "bg-green-500" : "bg-gray-300"
                        }`}
                      />
                    ))}
                  </div>
                  <span className="text-[10px] text-gray-400">
                    {allCategoriesVisited
                      ? "All reviewed"
                      : `${categories.length - visitedCategories.size} remaining`}
                  </span>
                </div>
              </div>
            )}

            {msg && (
              <p className={`text-xs px-4 py-2 ${msg.includes("Saved") ? "text-green-600" : "text-red-500"}`}>
                {msg}
              </p>
            )}

            {/* Actions */}
            <div className="grid grid-cols-2 gap-0 border-t safe-area-bottom">
              <button
                onClick={() => { setCart([]); setMsg(""); setVisitedCategories(new Set()); }}
                className="py-4 bg-gray-100 text-gray-700 text-sm font-medium hover:bg-gray-200 transition-colors"
              >
                Clear Cart
              </button>
              <button
                onClick={handleSave}
                disabled={saving || cart.length === 0}
                className="py-4 bg-gray-700 text-white text-sm font-medium hover:bg-gray-800 disabled:opacity-50 transition-colors"
              >
                {saving ? "Saving..." : "Save Delivery"}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
