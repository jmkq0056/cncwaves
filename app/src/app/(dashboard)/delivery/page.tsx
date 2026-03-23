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
  const [filterType, setFilterType] = useState<"category" | "brand">("category");
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState("");

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

  const filterOptions = filterType === "category" ? categories : brands;

  const filtered = useMemo(() => {
    let list = products;
    if (activeFilter !== "all") {
      list = list.filter((p) =>
        filterType === "category" ? p.category === activeFilter : p.brand === activeFilter
      );
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
    } else {
      setMsg("Failed to save delivery");
    }
    setSaving(false);
  }

  return (
    <div className="flex h-full">
      {/* Left panel - Cart */}
      <div className="w-96 bg-white border-r flex flex-col">
        <div className="p-4 border-b bg-gray-50">
          <h2 className="font-bold text-lg text-gray-800">CNC Stock</h2>
          <input
            type="text"
            placeholder="Search product by name/code"
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="mt-2 w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-2 focus:ring-blue-400"
          />
        </div>

        {/* Cart items header */}
        <div className="grid grid-cols-[1fr_60px_60px_30px] px-4 py-2 bg-blue-500 text-white text-xs font-bold">
          <span>Product</span>
          <span className="text-center">Qty</span>
          <span className="text-center">Unit</span>
          <span></span>
        </div>

        {/* Cart items */}
        <div className="flex-1 overflow-auto">
          {cart.length === 0 && (
            <p className="text-gray-400 text-sm text-center mt-8">
              Click products to add them
            </p>
          )}
          {cart.map((item) => (
            <div
              key={item._id}
              className="grid grid-cols-[1fr_60px_60px_30px] items-center px-4 py-2 border-b text-sm hover:bg-gray-50"
            >
              <div className="truncate">
                <span className="text-gray-500 text-xs">{item.code}</span>
                <br />
                <span className="font-medium">{item.name}</span>
              </div>
              <input
                type="number"
                min="1"
                value={item.quantity}
                onChange={(e) => updateQty(item._id, parseInt(e.target.value) || 0)}
                className="w-14 px-1 py-1 border rounded text-center text-sm"
              />
              <span className="text-xs text-gray-500 text-center">{item.unit}</span>
              <button
                onClick={() => removeItem(item._id)}
                className="text-red-400 hover:text-red-600 font-bold"
              >
                x
              </button>
            </div>
          ))}
        </div>

        {/* Footer */}
        <div className="border-t p-4 bg-gray-50">
          <div className="flex justify-between text-sm mb-3">
            <span>Items</span>
            <span className="font-bold">{cart.length}</span>
          </div>
          {msg && (
            <p className={`text-sm mb-2 ${msg.includes("Saved") ? "text-green-600" : "text-red-500"}`}>
              {msg}
            </p>
          )}
          <div className="grid grid-cols-2 gap-2">
            <button
              onClick={() => { setCart([]); setMsg(""); }}
              className="py-2 bg-red-400 text-white rounded hover:bg-red-500 text-sm font-medium"
            >
              Clear
            </button>
            <button
              onClick={handleSave}
              disabled={saving || cart.length === 0}
              className="py-2 bg-green-500 text-white rounded hover:bg-green-600 disabled:opacity-50 text-sm font-medium"
            >
              {saving ? "Saving..." : "Save Delivery"}
            </button>
          </div>
        </div>
      </div>

      {/* Right panel - Products grid */}
      <div className="flex-1 flex flex-col">
        {/* Product grid */}
        <div className="flex-1 overflow-auto p-4">
          <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 lg:grid-cols-6 xl:grid-cols-8 gap-3">
            {filtered.map((product) => {
              const inCart = cart.find((c) => c._id === product._id);
              return (
                <button
                  key={product._id}
                  onClick={() => addToCart(product)}
                  className={`relative flex flex-col items-center p-2 bg-white rounded-lg border-2 hover:shadow-md transition-all text-center ${
                    inCart ? "border-blue-400 bg-blue-50" : "border-gray-200"
                  }`}
                >
                  {inCart && (
                    <span className="absolute -top-2 -right-2 bg-blue-500 text-white text-xs w-5 h-5 rounded-full flex items-center justify-center">
                      {inCart.quantity}
                    </span>
                  )}
                  <div className="w-16 h-16 flex items-center justify-center mb-1">
                    {product.image ? (
                      <img
                        src={`/assets/${product.image}`}
                        alt={product.name}
                        className="max-w-full max-h-full object-contain"
                      />
                    ) : (
                      <div className="w-12 h-12 bg-gray-200 rounded flex items-center justify-center text-gray-400 text-xs">
                        No img
                      </div>
                    )}
                  </div>
                  <span className="text-xs font-medium leading-tight line-clamp-2">
                    {product.name}
                  </span>
                </button>
              );
            })}
          </div>
        </div>

        {/* Bottom filter tabs */}
        <div className="border-t bg-white">
          {/* Filter type toggles */}
          <div className="flex border-b">
            <button
              onClick={() => { setFilterType("category"); setActiveFilter("all"); }}
              className={`flex-1 py-2 text-sm font-medium ${
                filterType === "category" ? "bg-blue-500 text-white" : "bg-gray-100 text-gray-600"
              }`}
            >
              Categories
            </button>
            <button
              onClick={() => { setFilterType("brand"); setActiveFilter("all"); }}
              className={`flex-1 py-2 text-sm font-medium ${
                filterType === "brand" ? "bg-blue-500 text-white" : "bg-gray-100 text-gray-600"
              }`}
            >
              Brands
            </button>
          </div>

          {/* Filter options */}
          <div className="flex gap-2 p-3 overflow-x-auto">
            <button
              onClick={() => setActiveFilter("all")}
              className={`px-3 py-1.5 rounded text-xs font-medium whitespace-nowrap ${
                activeFilter === "all"
                  ? "bg-blue-500 text-white"
                  : "bg-gray-200 text-gray-700 hover:bg-gray-300"
              }`}
            >
              All
            </button>
            {filterOptions.map((opt) => (
              <button
                key={opt}
                onClick={() => setActiveFilter(opt)}
                className={`px-3 py-1.5 rounded text-xs font-medium whitespace-nowrap ${
                  activeFilter === opt
                    ? "bg-blue-500 text-white"
                    : "bg-gray-200 text-gray-700 hover:bg-gray-300"
                }`}
              >
                {opt}
              </button>
            ))}
          </div>
        </div>
      </div>
    </div>
  );
}
