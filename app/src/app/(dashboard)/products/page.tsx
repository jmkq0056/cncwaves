"use client";

import { useEffect, useState, useMemo, useRef } from "react";

type Product = {
  _id: string;
  code: string;
  name: string;
  brand: string;
  category: string;
  unit: string;
  image: string;
};

const emptyForm = { name: "", brand: "", category: "", unit: "", image: "" };

function imgSrc(image: string) {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

function ComboInput({
  label,
  value,
  onChange,
  options,
  placeholder,
}: {
  label: string;
  value: string;
  onChange: (v: string) => void;
  options: string[];
  placeholder?: string;
}) {
  const [open, setOpen] = useState(false);
  const [filter, setFilter] = useState("");
  const ref = useRef<HTMLDivElement>(null);

  const filtered = useMemo(() => {
    if (!filter) return options;
    const q = filter.toLowerCase();
    return options.filter((o) => o.toLowerCase().includes(q));
  }, [options, filter]);

  useEffect(() => {
    function handleClick(e: MouseEvent) {
      if (ref.current && !ref.current.contains(e.target as Node)) setOpen(false);
    }
    document.addEventListener("mousedown", handleClick);
    return () => document.removeEventListener("mousedown", handleClick);
  }, []);

  return (
    <div ref={ref} className="relative">
      <label className="block text-sm font-medium text-gray-700 mb-1">{label}</label>
      <input
        value={value}
        onChange={(e) => {
          onChange(e.target.value);
          setFilter(e.target.value);
          setOpen(true);
        }}
        onFocus={() => { setFilter(value); setOpen(true); }}
        placeholder={placeholder || `Select or type new ${label.toLowerCase()}`}
        className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-gray-400"
      />
      {open && filtered.length > 0 && (
        <div className="absolute z-50 left-0 right-0 mt-1 bg-white border rounded shadow-lg max-h-40 overflow-auto">
          {filtered.map((opt) => (
            <button
              key={opt}
              type="button"
              onClick={() => {
                onChange(opt);
                setOpen(false);
              }}
              className={`block w-full text-left px-3 py-1.5 text-sm hover:bg-gray-50 ${
                opt === value ? "bg-gray-50 font-medium" : ""
              }`}
            >
              {opt}
            </button>
          ))}
        </div>
      )}
    </div>
  );
}

export default function ProductsPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [filterCategory, setFilterCategory] = useState("");
  const [filterBrand, setFilterBrand] = useState("");
  const [showForm, setShowForm] = useState(false);
  const [editId, setEditId] = useState<string | null>(null);
  const [form, setForm] = useState(emptyForm);
  const [saving, setSaving] = useState(false);
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    loadProducts();
  }, []);

  const existingBrands = useMemo(
    () => [...new Set(products.map((p) => p.brand).filter(Boolean))].sort(),
    [products]
  );
  const existingCategories = useMemo(
    () => [...new Set(products.map((p) => p.category).filter(Boolean))].sort(),
    [products]
  );
  const existingUnits = useMemo(
    () => [...new Set(products.map((p) => p.unit).filter(Boolean))].sort(),
    [products]
  );

  async function loadProducts() {
    setLoading(true);
    const res = await fetch("/api/products");
    if (res.ok) setProducts(await res.json());
    setLoading(false);
  }

  function handleEdit(product: Product) {
    setEditId(product._id);
    setForm({
      name: product.name,
      brand: product.brand,
      category: product.category,
      unit: product.unit,
      image: product.image,
    });
    setShowForm(true);
    setError("");
  }

  function handleNew() {
    setEditId(null);
    setForm(emptyForm);
    setShowForm(true);
    setError("");
  }

  async function handleImageUpload(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    setUploading(true);
    setError("");
    const formData = new FormData();
    formData.append("file", file);
    try {
      const res = await fetch("/api/upload", { method: "POST", body: formData });
      const data = await res.json();
      if (res.ok) {
        setForm((prev) => ({ ...prev, image: data.url }));
      } else {
        setError(data.error || "Upload failed");
      }
    } catch {
      setError("Upload failed");
    }
    setUploading(false);
  }

  async function handleSave() {
    setSaving(true);
    setError("");

    const url = editId ? `/api/products/${editId}` : "/api/products";
    const method = editId ? "PUT" : "POST";

    const res = await fetch(url, {
      method,
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(form),
    });

    if (res.ok) {
      setShowForm(false);
      loadProducts();
    } else {
      const data = await res.json();
      setError(data.error || "Failed to save");
    }
    setSaving(false);
  }

  async function handleDelete(id: string) {
    if (!confirm("Delete this product?")) return;
    await fetch(`/api/products/${id}`, { method: "DELETE" });
    setProducts((prev) => prev.filter((p) => p._id !== id));
  }

  const filtered = useMemo(() => {
    let list = products;
    if (search) {
      const q = search.toLowerCase();
      list = list.filter(
        (p) =>
          p.name.toLowerCase().includes(q) ||
          p.code.toLowerCase().includes(q) ||
          p.category.toLowerCase().includes(q) ||
          p.brand.toLowerCase().includes(q)
      );
    }
    if (filterCategory) {
      list = list.filter((p) => p.category === filterCategory);
    }
    if (filterBrand) {
      list = list.filter((p) => p.brand === filterBrand);
    }
    return list;
  }, [products, search, filterCategory, filterBrand]);

  const activeFilters = (filterCategory ? 1 : 0) + (filterBrand ? 1 : 0);

  return (
    <div className="p-4 md:p-6">
      {/* Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-3 mb-4">
        <h1 className="text-xl font-bold text-gray-800">Products</h1>
        <div className="flex gap-2 items-center">
          <input
            type="text"
            placeholder="Search..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="px-3 py-2 border rounded-lg text-sm flex-1 sm:w-48 focus:outline-none focus:ring-1 focus:ring-gray-400"
          />
          <button
            onClick={handleNew}
            className="px-4 py-2 bg-gray-700 text-white rounded-lg text-sm hover:bg-gray-800 font-medium whitespace-nowrap transition-colors"
          >
            + Add
          </button>
        </div>
      </div>

      {/* Filters */}
      <div className="flex flex-wrap gap-2 mb-4">
        <select
          value={filterCategory}
          onChange={(e) => setFilterCategory(e.target.value)}
          className={`px-3 py-1.5 border rounded-lg text-sm transition-colors ${
            filterCategory ? "bg-gray-700 text-white border-gray-700" : "bg-white text-gray-600 border-gray-200"
          }`}
        >
          <option value="">All Categories</option>
          {existingCategories.map((c) => (
            <option key={c} value={c}>{c}</option>
          ))}
        </select>
        <select
          value={filterBrand}
          onChange={(e) => setFilterBrand(e.target.value)}
          className={`px-3 py-1.5 border rounded-lg text-sm transition-colors ${
            filterBrand ? "bg-gray-700 text-white border-gray-700" : "bg-white text-gray-600 border-gray-200"
          }`}
        >
          <option value="">All Brands</option>
          {existingBrands.map((b) => (
            <option key={b} value={b}>{b}</option>
          ))}
        </select>
        {activeFilters > 0 && (
          <button
            onClick={() => { setFilterCategory(""); setFilterBrand(""); }}
            className="px-3 py-1.5 text-xs text-gray-500 hover:text-gray-700"
          >
            Clear filters
          </button>
        )}
      </div>

      {/* Desktop Table */}
      <div className="hidden md:block bg-white rounded-lg shadow overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="bg-gray-700 text-white">
              <th className="px-4 py-3 text-left w-16">Image</th>
              <th className="px-4 py-3 text-left">Code</th>
              <th className="px-4 py-3 text-left">Name</th>
              <th className="px-4 py-3 text-left">Brand</th>
              <th className="px-4 py-3 text-left">Category</th>
              <th className="px-4 py-3 text-left">Unit</th>
              <th className="px-4 py-3 text-right">Actions</th>
            </tr>
          </thead>
          <tbody>
            {loading && (
              <tr><td colSpan={7} className="text-center py-8 text-gray-400">Loading...</td></tr>
            )}
            {!loading && filtered.length === 0 && (
              <tr><td colSpan={7} className="text-center py-8 text-gray-400">No products found</td></tr>
            )}
            {filtered.map((p) => (
              <tr key={p._id} className="border-b hover:bg-gray-50">
                <td className="px-4 py-2">
                  <div className="w-10 h-10 overflow-hidden rounded bg-gray-100 flex items-center justify-center">
                    {p.image ? (
                      <img src={imgSrc(p.image)} alt="" className="max-w-full max-h-full object-contain" />
                    ) : (
                      <span className="text-gray-400 text-xs">--</span>
                    )}
                  </div>
                </td>
                <td className="px-4 py-2 font-mono">{p.code}</td>
                <td className="px-4 py-2">{p.name}</td>
                <td className="px-4 py-2">{p.brand}</td>
                <td className="px-4 py-2">{p.category}</td>
                <td className="px-4 py-2">{p.unit}</td>
                <td className="px-4 py-2 text-right">
                  <button onClick={() => handleEdit(p)} className="px-2.5 py-1 bg-gray-100 text-gray-700 rounded text-xs hover:bg-gray-200 mr-1 transition-colors">Edit</button>
                  <button onClick={() => handleDelete(p._id)} className="px-2.5 py-1 bg-gray-100 text-gray-700 rounded text-xs hover:bg-red-50 hover:text-red-600 transition-colors">Delete</button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Mobile Card View */}
      <div className="md:hidden space-y-2">
        {loading && <p className="text-center py-8 text-gray-400">Loading...</p>}
        {!loading && filtered.length === 0 && <p className="text-center py-8 text-gray-400">No products found</p>}
        {filtered.map((p) => (
          <div key={p._id} className="bg-white rounded-lg shadow-sm border border-gray-100 p-3 flex items-center gap-3">
            <div className="w-12 h-12 flex-shrink-0 rounded-lg overflow-hidden bg-gray-100 flex items-center justify-center">
              {p.image ? (
                <img src={imgSrc(p.image)} alt="" className="max-w-full max-h-full object-contain" />
              ) : (
                <span className="text-gray-300 text-xs">--</span>
              )}
            </div>
            <div className="flex-1 min-w-0">
              <p className="text-sm font-medium truncate">{p.name}</p>
              <p className="text-xs text-gray-400 truncate">{p.code} / {p.brand} / {p.category}</p>
              <p className="text-[10px] text-gray-400">{p.unit}</p>
            </div>
            <div className="flex gap-1 flex-shrink-0">
              <button onClick={() => handleEdit(p)} className="p-2 rounded-lg bg-gray-50 text-gray-600 hover:bg-gray-100 transition-colors">
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M16.862 4.487l1.687-1.688a1.875 1.875 0 112.652 2.652L10.582 16.07a4.5 4.5 0 01-1.897 1.13L6 18l.8-2.685a4.5 4.5 0 011.13-1.897l8.932-8.931zm0 0L19.5 7.125M18 14v4.75A2.25 2.25 0 0115.75 21H5.25A2.25 2.25 0 013 18.75V8.25A2.25 2.25 0 015.25 6H10" /></svg>
              </button>
              <button onClick={() => handleDelete(p._id)} className="p-2 rounded-lg bg-gray-50 text-gray-600 hover:bg-red-50 hover:text-red-500 transition-colors">
                <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" /></svg>
              </button>
            </div>
          </div>
        ))}
      </div>

      <p className="text-sm text-gray-500 mt-3">Showing {filtered.length} of {products.length} products</p>

      {/* Add/Edit Modal */}
      {showForm && (
        <div className="fixed inset-0 bg-black/50 flex items-end md:items-center justify-center z-50">
          <div className="bg-white rounded-t-2xl md:rounded-lg shadow-xl w-full max-w-md max-h-[90vh] overflow-auto md:mx-4">
            <div className="flex items-center justify-between p-4 border-b">
              <h2 className="font-bold text-lg">
                {editId ? "Edit Product" : "Add Product"}
              </h2>
              <button onClick={() => setShowForm(false)} className="p-1 text-gray-400 hover:text-gray-600">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>

            <div className="p-4 space-y-3">
              {editId && (
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Code</label>
                  <div className="px-3 py-2 bg-gray-100 border rounded text-sm text-gray-500 font-mono">
                    {products.find((p) => p._id === editId)?.code || ""}
                  </div>
                </div>
              )}
              {!editId && (
                <p className="text-xs text-gray-400 bg-gray-50 px-3 py-2 rounded">
                  Code will be auto-generated
                </p>
              )}

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Name *</label>
                <input
                  value={form.name}
                  onChange={(e) => setForm({ ...form, name: e.target.value })}
                  className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-gray-400"
                  placeholder="Product name"
                />
              </div>

              <div className="grid grid-cols-2 gap-3">
                <ComboInput
                  label="Brand"
                  value={form.brand}
                  onChange={(v) => setForm({ ...form, brand: v })}
                  options={existingBrands}
                />
                <ComboInput
                  label="Category"
                  value={form.category}
                  onChange={(v) => setForm({ ...form, category: v })}
                  options={existingCategories}
                />
              </div>

              <ComboInput
                label="Unit"
                value={form.unit}
                onChange={(v) => setForm({ ...form, unit: v })}
                options={existingUnits}
                placeholder="e.g. Box 100 Pc, 1 kg, 500g"
              />

              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Product Image</label>
                <div className="flex items-start gap-3">
                  <div className="w-20 h-20 border rounded bg-gray-50 flex items-center justify-center flex-shrink-0 overflow-hidden">
                    {form.image ? (
                      <img src={imgSrc(form.image)} alt="Preview" className="max-w-full max-h-full object-contain" />
                    ) : (
                      <span className="text-gray-300 text-xs">No image</span>
                    )}
                  </div>
                  <div className="flex-1">
                    <label
                      className={`block w-full text-center px-3 py-2 border-2 border-dashed rounded cursor-pointer transition-colors ${
                        uploading
                          ? "border-gray-300 bg-gray-50 text-gray-500"
                          : "border-gray-300 hover:border-gray-400 text-gray-500 hover:text-gray-600"
                      }`}
                    >
                      <input type="file" accept="image/*" onChange={handleImageUpload} className="hidden" disabled={uploading} />
                      {uploading ? (
                        <span className="text-sm flex items-center justify-center gap-2">
                          <svg className="w-4 h-4 animate-spin" fill="none" viewBox="0 0 24 24">
                            <circle className="opacity-25" cx="12" cy="12" r="10" stroke="currentColor" strokeWidth="4" />
                            <path className="opacity-75" fill="currentColor" d="M4 12a8 8 0 018-8V0C5.373 0 0 5.373 0 12h4zm2 5.291A7.962 7.962 0 014 12H0c0 3.042 1.135 5.824 3 7.938l3-2.647z" />
                          </svg>
                          Uploading...
                        </span>
                      ) : (
                        <span className="text-sm">Click to upload image</span>
                      )}
                    </label>
                    {form.image && (
                      <button type="button" onClick={() => setForm({ ...form, image: "" })} className="text-xs text-gray-400 hover:text-red-500 mt-1">
                        Remove image
                      </button>
                    )}
                  </div>
                </div>
              </div>
            </div>

            {error && <p className="text-red-500 text-sm px-4 pb-2">{error}</p>}

            <div className="flex gap-2 p-4 border-t">
              <button onClick={() => setShowForm(false)} className="flex-1 py-2.5 bg-gray-100 text-gray-700 rounded-lg text-sm hover:bg-gray-200 transition-colors">Cancel</button>
              <button
                onClick={handleSave}
                disabled={saving || uploading || !form.name}
                className="flex-1 py-2.5 bg-gray-700 text-white rounded-lg text-sm hover:bg-gray-800 disabled:opacity-50 transition-colors"
              >
                {saving ? "Saving..." : "Save"}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
