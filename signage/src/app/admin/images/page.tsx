"use client";

import { useEffect, useState } from "react";

interface LibraryImage {
  publicId: string;
  url: string;
  filename: string;
  width: number;
  height: number;
  createdAt: string;
  usedByScreens: number[];
}

export default function ImageLibrary() {
  const [images, setImages] = useState<LibraryImage[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [uploading, setUploading] = useState(false);
  const [uploadError, setUploadError] = useState("");
  const [deleting, setDeleting] = useState<string | null>(null);

  async function loadImages() {
    setLoading(true);
    setError("");
    try {
      const res = await fetch("/api/admin/images");
      if (!res.ok) throw new Error(`Error ${res.status}`);
      const data = await res.json();
      setImages(Array.isArray(data) ? data : []);
    } catch (e: any) {
      setError(e.message || "Failed to load images");
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    loadImages();
  }, []);

  async function handleUpload(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    setUploading(true);
    setUploadError("");

    try {
      // Get signed params from server
      const sigRes = await fetch("/api/admin/upload", { method: "POST" });
      if (!sigRes.ok) throw new Error("Failed to get upload signature");
      const sig = await sigRes.json();

      // Upload directly to Cloudinary (bypasses Vercel 4.5MB limit)
      const formData = new FormData();
      formData.append("file", file);
      formData.append("api_key", sig.apiKey);
      formData.append("timestamp", String(sig.timestamp));
      formData.append("signature", sig.signature);
      formData.append("folder", sig.folder);
      formData.append("format", "png");

      const res = await fetch(
        `https://api.cloudinary.com/v1_1/${sig.cloudName}/image/upload`,
        { method: "POST", body: formData }
      );
      if (!res.ok) throw new Error("Upload to Cloudinary failed");
    } catch (e: any) {
      setUploadError(e.message || "Upload failed");
      setTimeout(() => setUploadError(""), 5000);
    } finally {
      setUploading(false);
      e.target.value = "";
      loadImages();
    }
  }

  async function handleDelete(publicId: string) {
    if (!confirm("Delete this image?")) return;
    setDeleting(publicId);

    try {
      const res = await fetch("/api/admin/images", {
        method: "DELETE",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ publicId }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        alert(data.error || "Failed to delete");
      }
    } catch {
      alert("Connection failed");
    } finally {
      setDeleting(null);
      loadImages();
    }
  }

  if (loading) {
    return (
      <div className="text-gray-400 text-center mt-20">Loading images...</div>
    );
  }

  if (error) {
    return (
      <div className="text-center mt-20">
        <p className="text-red-400 mb-4">{error}</p>
        <button
          onClick={loadImages}
          className="bg-gray-800 text-white px-6 py-2 rounded-lg"
        >
          Retry
        </button>
      </div>
    );
  }

  return (
    <div>
      <div className="flex items-center justify-between mb-4 sm:mb-6">
        <h2 className="text-xl sm:text-2xl font-bold">Images</h2>
        <label className="bg-orange-500 hover:bg-orange-600 active:bg-orange-700 text-white font-bold px-4 sm:px-6 py-2.5 sm:py-3 rounded-lg cursor-pointer text-sm sm:text-base">
          {uploading ? "Uploading..." : "Upload"}
          <input
            type="file"
            accept="image/*"
            onChange={handleUpload}
            className="hidden"
            disabled={uploading}
          />
        </label>
      </div>

      {uploadError && (
        <p className="text-red-400 text-sm mb-4">{uploadError}</p>
      )}

      {images.length === 0 ? (
        <div className="text-gray-600 text-center py-20 border border-dashed border-gray-800 rounded-xl">
          No images uploaded yet.
        </div>
      ) : (
        <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4">
          {images.map((img) => (
            <div
              key={img.publicId}
              className="bg-gray-900 border border-gray-800 rounded-xl overflow-hidden"
            >
              <div className="aspect-video bg-gray-800">
                <img
                  src={img.url}
                  alt={img.filename}
                  className="w-full h-full object-cover"
                />
              </div>
              <div className="p-2.5 sm:p-3">
                <div className="text-xs sm:text-sm text-gray-300 truncate mb-1">
                  {img.filename}
                </div>
                <div className="text-xs text-gray-500 mb-2">
                  {img.width}&times;{img.height}
                </div>
                {img.usedByScreens.length > 0 ? (
                  <div className="text-xs text-green-400">
                    Screen {img.usedByScreens.join(", ")}
                  </div>
                ) : (
                  <div className="flex items-center justify-between">
                    <span className="text-xs text-gray-600">Unused</span>
                    <button
                      onClick={() => handleDelete(img.publicId)}
                      disabled={deleting === img.publicId}
                      className="text-xs text-red-400 hover:text-red-300 active:text-red-200 disabled:opacity-50"
                    >
                      {deleting === img.publicId ? "..." : "Delete"}
                    </button>
                  </div>
                )}
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}
