"use client";

import { useEffect, useState } from "react";

type Product = {
  _id: string;
  code: string;
  name: string;
  brand: string;
  category: string;
  unit: string;
  image: string;
};

const emptyForm = { code: "", name: "", brand: "", category: "", unit: "", image: "" };

/** If starts with http → use as-is (cloudinary), else → local /assets/ fallback */
function imgSrc(image: string) {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

export default function ProductsPage() {
  const [products, setProducts] = useState<Product[]>([]);
  const [loading, setLoading] = useState(true);
  const [search, setSearch] = useState("");
  const [showForm, setShowForm] = useState(false);
  const [editId, setEditId] = useState<string | null>(null);
  const [form, setForm] = useState(emptyForm);
  const [saving, setSaving] = useState(false);
  const [uploading, setUploading] = useState(false);
  const [error, setError] = useState("");

  useEffect(() => {
    loadProducts();
  }, []);

  async function loadProducts() {
    setLoading(true);
    const res = await fetch("/api/products");
    if (res.ok) setProducts(await res.json());
    setLoading(false);
  }

  function handleEdit(product: Product) {
    setEditId(product._id);
    setForm({
      code: product.code,
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
      setError("Upload failed — check connection");
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

  const filtered = search
    ? products.filter(
        (p) =>
          p.name.toLowerCase().includes(search.toLowerCase()) ||
          p.code.toLowerCase().includes(search.toLowerCase()) ||
          p.category.toLowerCase().includes(search.toLowerCase())
      )
    : products;

  return (
    <div className="p-6">
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-xl font-bold text-gray-800">Products</h1>
        <div className="flex gap-3 items-center">
          <input
            type="text"
            placeholder="Search..."
            value={search}
            onChange={(e) => setSearch(e.target.value)}
            className="px-3 py-2 border rounded text-sm w-64"
          />
          <button
            onClick={handleNew}
            className="px-4 py-2 bg-blue-500 text-white rounded text-sm hover:bg-blue-600 font-medium"
          >
            + Add Product
          </button>
        </div>
      </div>

      <div className="bg-white rounded-lg shadow overflow-hidden">
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
                  {p.image ? (
                    <img src={imgSrc(p.image)} alt="" className="w-10 h-10 object-contain" />
                  ) : (
                    <div className="w-10 h-10 bg-gray-200 rounded flex items-center justify-center text-gray-400 text-xs">
                      --
                    </div>
                  )}
                </td>
                <td className="px-4 py-2 font-mono">{p.code}</td>
                <td className="px-4 py-2">{p.name}</td>
                <td className="px-4 py-2">{p.brand}</td>
                <td className="px-4 py-2">{p.category}</td>
                <td className="px-4 py-2">{p.unit}</td>
                <td className="px-4 py-2 text-right">
                  <button
                    onClick={() => handleEdit(p)}
                    className="px-2 py-1 bg-yellow-400 text-white rounded text-xs hover:bg-yellow-500 mr-1"
                  >
                    Edit
                  </button>
                  <button
                    onClick={() => handleDelete(p._id)}
                    className="px-2 py-1 bg-red-500 text-white rounded text-xs hover:bg-red-600"
                  >
                    Delete
                  </button>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      <p className="text-sm text-gray-500 mt-2">Showing {filtered.length} of {products.length} products</p>

      {/* Add/Edit Modal */}
      {showForm && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-xl w-full max-w-md p-6">
            <h2 className="font-bold text-lg mb-4">
              {editId ? "Edit Product" : "Add Product"}
            </h2>

            <div className="space-y-3">
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Code *</label>
                <input
                  value={form.code}
                  onChange={(e) => setForm({ ...form, code: e.target.value })}
                  className="w-full px-3 py-2 border rounded text-sm"
                  disabled={!!editId}
                />
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Name *</label>
                <input
                  value={form.name}
                  onChange={(e) => setForm({ ...form, name: e.target.value })}
                  className="w-full px-3 py-2 border rounded text-sm"
                />
              </div>
              <div className="grid grid-cols-2 gap-3">
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Brand</label>
                  <input
                    value={form.brand}
                    onChange={(e) => setForm({ ...form, brand: e.target.value })}
                    className="w-full px-3 py-2 border rounded text-sm"
                  />
                </div>
                <div>
                  <label className="block text-sm font-medium text-gray-700 mb-1">Category</label>
                  <input
                    value={form.category}
                    onChange={(e) => setForm({ ...form, category: e.target.value })}
                    className="w-full px-3 py-2 border rounded text-sm"
                  />
                </div>
              </div>
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Unit</label>
                <input
                  value={form.unit}
                  onChange={(e) => setForm({ ...form, unit: e.target.value })}
                  className="w-full px-3 py-2 border rounded text-sm"
                />
              </div>

              {/* Image upload */}
              <div>
                <label className="block text-sm font-medium text-gray-700 mb-1">Product Image</label>
                <div className="flex items-start gap-3">
                  {/* Preview */}
                  <div className="w-20 h-20 border rounded bg-gray-50 flex items-center justify-center flex-shrink-0 overflow-hidden">
                    {form.image ? (
                      <img
                        src={imgSrc(form.image)}
                        alt="Preview"
                        className="w-full h-full object-contain"
                      />
                    ) : (
                      <span className="text-gray-300 text-xs">No image</span>
                    )}
                  </div>
                  <div className="flex-1">
                    <label
                      className={`block w-full text-center px-3 py-2 border-2 border-dashed rounded cursor-pointer transition-colors ${
                        uploading
                          ? "border-blue-300 bg-blue-50 text-blue-500"
                          : "border-gray-300 hover:border-blue-400 text-gray-500 hover:text-blue-500"
                      }`}
                    >
                      <input
                        type="file"
                        accept="image/*"
                        onChange={handleImageUpload}
                        className="hidden"
                        disabled={uploading}
                      />
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
                      <button
                        type="button"
                        onClick={() => setForm({ ...form, image: "" })}
                        className="text-xs text-red-500 hover:text-red-700 mt-1"
                      >
                        Remove image
                      </button>
                    )}
                  </div>
                </div>
              </div>
            </div>

            {error && <p className="text-red-500 text-sm mt-2">{error}</p>}

            <div className="flex gap-2 mt-4">
              <button
                onClick={() => setShowForm(false)}
                className="flex-1 py-2 bg-gray-200 rounded text-sm hover:bg-gray-300"
              >
                Cancel
              </button>
              <button
                onClick={handleSave}
                disabled={saving || uploading || !form.code || !form.name}
                className="flex-1 py-2 bg-blue-500 text-white rounded text-sm hover:bg-blue-600 disabled:opacity-50"
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
