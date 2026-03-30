"use client";

import { useEffect, useState, useRef } from "react";

interface LibraryImage {
  _id: string;
  name: string;
  category: string;
  cloudinaryPublicId: string;
  url: string;
  width: number;
  height: number;
  format: string;
  sizeBytes: number;
  createdAt: string;
  usedByScreens: number[];
}

export default function ImageLibrary() {
  const [images, setImages] = useState<LibraryImage[]>([]);
  const [categories, setCategories] = useState<string[]>([]);
  const [activeCategory, setActiveCategory] = useState<string | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");

  // Upload state
  const [showUpload, setShowUpload] = useState(false);
  const [uploadName, setUploadName] = useState("");
  const [uploadCategory, setUploadCategory] = useState("");
  const [newCategory, setNewCategory] = useState("");
  const [uploadFile, setUploadFile] = useState<File | null>(null);
  const [uploadPreview, setUploadPreview] = useState<string | null>(null);
  const [uploading, setUploading] = useState(false);
  const [uploadError, setUploadError] = useState("");
  const fileRef = useRef<HTMLInputElement>(null);

  // Edit state
  const [editingId, setEditingId] = useState<string | null>(null);
  const [editName, setEditName] = useState("");
  const [editCategory, setEditCategory] = useState("");

  // Delete state
  const [deleting, setDeleting] = useState<string | null>(null);

  async function loadImages() {
    setLoading(true);
    setError("");
    try {
      const url = activeCategory
        ? `/api/admin/images?category=${encodeURIComponent(activeCategory)}`
        : "/api/admin/images";
      const res = await fetch(url);
      if (!res.ok) throw new Error(`Error ${res.status}`);
      const data = await res.json();
      setImages(Array.isArray(data) ? data : []);
    } catch (e: any) {
      setError(e.message || "Failed to load images");
    } finally {
      setLoading(false);
    }
  }

  async function loadCategories() {
    try {
      const res = await fetch("/api/admin/categories");
      if (res.ok) {
        const data = await res.json();
        setCategories(Array.isArray(data) ? data : []);
      }
    } catch {}
  }

  useEffect(() => {
    loadImages();
    loadCategories();
  }, [activeCategory]);

  function handleFileSelect(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    setUploadFile(file);
    setUploadPreview(URL.createObjectURL(file));
    // Auto-fill name from filename (without extension)
    if (!uploadName) {
      setUploadName(file.name.replace(/\.[^.]+$/, ""));
    }
  }

  async function handleUpload() {
    if (!uploadFile || !uploadName.trim()) return;
    setUploading(true);
    setUploadError("");

    const finalCategory = newCategory.trim() || uploadCategory || "Uncategorized";

    try {
      // Step 1: Get signed params
      const sigRes = await fetch("/api/admin/upload");
      if (!sigRes.ok) throw new Error("Failed to get upload signature");
      const sig = await sigRes.json();

      // Step 2: Upload to Cloudinary
      const formData = new FormData();
      formData.append("file", uploadFile);
      formData.append("api_key", sig.apiKey);
      formData.append("timestamp", String(sig.timestamp));
      formData.append("signature", sig.signature);
      formData.append("folder", sig.folder);
      formData.append("format", "png");

      const cloudRes = await fetch(
        `https://api.cloudinary.com/v1_1/${sig.cloudName}/image/upload`,
        { method: "POST", body: formData }
      );
      if (!cloudRes.ok) throw new Error("Upload to Cloudinary failed");
      const cloudData = await cloudRes.json();

      // Step 3: Save metadata to our DB
      const saveRes = await fetch("/api/admin/upload", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          name: uploadName.trim(),
          category: finalCategory,
          cloudinaryPublicId: cloudData.public_id,
          url: cloudData.secure_url,
          width: cloudData.width,
          height: cloudData.height,
          format: cloudData.format,
          sizeBytes: cloudData.bytes,
        }),
      });
      if (!saveRes.ok) throw new Error("Failed to save image metadata");

      // Reset and reload
      setShowUpload(false);
      setUploadName("");
      setUploadCategory("");
      setNewCategory("");
      setUploadFile(null);
      setUploadPreview(null);
      loadImages();
      loadCategories();
    } catch (e: any) {
      setUploadError(e.message || "Upload failed");
    } finally {
      setUploading(false);
    }
  }

  async function handleSaveEdit(id: string) {
    try {
      const res = await fetch("/api/admin/images", {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          _id: id,
          name: editName.trim(),
          category: editCategory.trim() || "Uncategorized",
        }),
      });
      if (!res.ok) throw new Error("Failed to update");
      setEditingId(null);
      loadImages();
      loadCategories();
    } catch (e: any) {
      alert(e.message || "Update failed");
    }
  }

  async function handleDelete(id: string) {
    if (!confirm("Delete this image permanently?")) return;
    setDeleting(id);
    try {
      const res = await fetch("/api/admin/images", {
        method: "DELETE",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ _id: id }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        if (data.screens) {
          alert(`Cannot delete — used by Screen ${data.screens.join(", ")}`);
        } else {
          alert(data.error || "Delete failed");
        }
        return;
      }
      loadImages();
      loadCategories();
    } catch {
      alert("Connection failed");
    } finally {
      setDeleting(null);
    }
  }

  function formatSize(bytes: number) {
    if (!bytes) return "";
    if (bytes < 1024) return bytes + " B";
    if (bytes < 1024 * 1024) return (bytes / 1024).toFixed(0) + " KB";
    return (bytes / (1024 * 1024)).toFixed(1) + " MB";
  }

  return (
    <div>
      {/* Header */}
      <div className="flex items-center justify-between mb-6">
        <h2 className="text-xl sm:text-2xl font-bold">Media Library</h2>
        <button
          onClick={() => setShowUpload(true)}
          className="bg-orange-500 hover:bg-orange-600 active:bg-orange-700 text-white font-bold px-5 py-2.5 rounded-lg text-sm sm:text-base"
        >
          Upload
        </button>
      </div>

      {/* Category filter */}
      <div className="flex gap-2 mb-6 overflow-x-auto pb-2 scrollbar-hide">
        <button
          onClick={() => setActiveCategory(null)}
          className={`px-4 py-1.5 rounded-full text-sm font-medium whitespace-nowrap ${
            activeCategory === null
              ? "bg-orange-500 text-white"
              : "bg-gray-800 text-gray-300 hover:bg-gray-700"
          }`}
        >
          All
        </button>
        {categories.map((cat) => (
          <button
            key={cat}
            onClick={() => setActiveCategory(cat)}
            className={`px-4 py-1.5 rounded-full text-sm font-medium whitespace-nowrap ${
              activeCategory === cat
                ? "bg-orange-500 text-white"
                : "bg-gray-800 text-gray-300 hover:bg-gray-700"
            }`}
          >
            {cat}
          </button>
        ))}
      </div>

      {/* Upload Modal */}
      {showUpload && (
        <div className="fixed inset-0 bg-black/70 flex items-center justify-center z-50 p-4">
          <div className="bg-gray-900 border border-gray-700 rounded-2xl w-full max-w-md p-6">
            <h3 className="text-lg font-bold mb-4">Upload Image</h3>

            {/* File picker */}
            <div
              onClick={() => fileRef.current?.click()}
              className="border-2 border-dashed border-gray-700 rounded-xl p-6 text-center cursor-pointer hover:border-gray-500 mb-4"
            >
              {uploadPreview ? (
                <img
                  src={uploadPreview}
                  alt="Preview"
                  className="max-h-40 mx-auto rounded-lg"
                />
              ) : (
                <div className="text-gray-500">
                  <div className="text-3xl mb-2">+</div>
                  <div className="text-sm">Click to select image</div>
                </div>
              )}
              <input
                ref={fileRef}
                type="file"
                accept="image/*"
                onChange={handleFileSelect}
                className="hidden"
              />
            </div>

            {/* Name */}
            <label className="block text-sm text-gray-400 mb-1">Name</label>
            <input
              type="text"
              value={uploadName}
              onChange={(e) => setUploadName(e.target.value)}
              placeholder="e.g. Summer Promo Banner"
              className="w-full bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white mb-4 text-sm"
            />

            {/* Category */}
            <label className="block text-sm text-gray-400 mb-1">Category</label>
            <select
              value={uploadCategory}
              onChange={(e) => {
                setUploadCategory(e.target.value);
                if (e.target.value !== "__new__") setNewCategory("");
              }}
              className="w-full bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white mb-2 text-sm"
            >
              <option value="">Uncategorized</option>
              {categories.map((cat) => (
                <option key={cat} value={cat}>
                  {cat}
                </option>
              ))}
              <option value="__new__">+ New Category...</option>
            </select>
            {uploadCategory === "__new__" && (
              <input
                type="text"
                value={newCategory}
                onChange={(e) => setNewCategory(e.target.value)}
                placeholder="New category name"
                className="w-full bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white mb-2 text-sm"
                autoFocus
              />
            )}

            {uploadError && (
              <p className="text-red-400 text-sm mb-3">{uploadError}</p>
            )}

            {/* Actions */}
            <div className="flex gap-3 mt-4">
              <button
                onClick={() => {
                  setShowUpload(false);
                  setUploadFile(null);
                  setUploadPreview(null);
                  setUploadName("");
                  setUploadCategory("");
                  setNewCategory("");
                  setUploadError("");
                }}
                className="flex-1 bg-gray-800 hover:bg-gray-700 text-white py-2.5 rounded-lg text-sm font-medium"
              >
                Cancel
              </button>
              <button
                onClick={handleUpload}
                disabled={uploading || !uploadFile || !uploadName.trim()}
                className="flex-1 bg-orange-500 hover:bg-orange-600 disabled:opacity-50 disabled:cursor-not-allowed text-white py-2.5 rounded-lg text-sm font-bold"
              >
                {uploading ? "Uploading..." : "Upload"}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Content */}
      {loading ? (
        <div className="text-gray-400 text-center mt-20">Loading...</div>
      ) : error ? (
        <div className="text-center mt-20">
          <p className="text-red-400 mb-4">{error}</p>
          <button
            onClick={loadImages}
            className="bg-gray-800 text-white px-6 py-2 rounded-lg"
          >
            Retry
          </button>
        </div>
      ) : images.length === 0 ? (
        <div className="text-gray-600 text-center py-20 border border-dashed border-gray-800 rounded-xl">
          {activeCategory
            ? `No images in "${activeCategory}"`
            : "No images uploaded yet."}
        </div>
      ) : (
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4">
          {images.map((img) => (
            <div
              key={img._id}
              className="bg-gray-900 border border-gray-800 rounded-xl overflow-hidden group"
            >
              {/* Image */}
              <div className="aspect-video bg-gray-800 relative">
                <img
                  src={img.url}
                  alt={img.name}
                  className="w-full h-full object-cover"
                />
                {/* Hover overlay with actions */}
                <div className="absolute inset-0 bg-black/60 opacity-0 group-hover:opacity-100 transition-opacity flex items-center justify-center gap-2">
                  <button
                    onClick={() => {
                      setEditingId(img._id);
                      setEditName(img.name);
                      setEditCategory(img.category);
                    }}
                    className="bg-gray-800 hover:bg-gray-700 text-white px-3 py-1.5 rounded-lg text-xs font-medium"
                  >
                    Edit
                  </button>
                  <button
                    onClick={() => handleDelete(img._id)}
                    disabled={deleting === img._id}
                    className="bg-red-600 hover:bg-red-700 disabled:opacity-50 text-white px-3 py-1.5 rounded-lg text-xs font-medium"
                  >
                    {deleting === img._id ? "..." : "Delete"}
                  </button>
                </div>
              </div>

              {/* Info */}
              <div className="p-2.5 sm:p-3">
                {editingId === img._id ? (
                  <div className="space-y-2">
                    <input
                      type="text"
                      value={editName}
                      onChange={(e) => setEditName(e.target.value)}
                      className="w-full bg-gray-800 border border-gray-600 rounded px-2 py-1 text-sm text-white"
                      autoFocus
                    />
                    <input
                      type="text"
                      value={editCategory}
                      onChange={(e) => setEditCategory(e.target.value)}
                      placeholder="Category"
                      className="w-full bg-gray-800 border border-gray-600 rounded px-2 py-1 text-sm text-white"
                    />
                    <div className="flex gap-2">
                      <button
                        onClick={() => setEditingId(null)}
                        className="flex-1 bg-gray-800 text-gray-300 py-1 rounded text-xs"
                      >
                        Cancel
                      </button>
                      <button
                        onClick={() => handleSaveEdit(img._id)}
                        className="flex-1 bg-orange-500 text-white py-1 rounded text-xs font-bold"
                      >
                        Save
                      </button>
                    </div>
                  </div>
                ) : (
                  <>
                    <div className="text-sm text-white font-medium truncate">
                      {img.name}
                    </div>
                    <div className="text-xs text-gray-500 mt-0.5">
                      {img.category}
                      {img.width > 0 && ` \u00B7 ${img.width}\u00D7${img.height}`}
                      {img.sizeBytes > 0 && ` \u00B7 ${formatSize(img.sizeBytes)}`}
                    </div>
                    {img.usedByScreens.length > 0 ? (
                      <div className="text-xs text-green-400 mt-1">
                        Screen {img.usedByScreens.join(", ")}
                      </div>
                    ) : (
                      <div className="text-xs text-gray-600 mt-1">Unused</div>
                    )}
                  </>
                )}
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
