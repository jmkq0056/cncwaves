"use client";

import { useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";

interface ScreenImage {
  filename: string;
  cloudinaryPublicId: string;
  url: string;
  order: number;
}

interface ScreenData {
  _id: number;
  name: string;
  rotationInterval: number;
  images: ScreenImage[];
  playlistHash: string;
  published: boolean;
  publishedAt: string | null;
}

interface LibraryImage {
  publicId: string;
  url: string;
  filename: string;
}

const INTERVALS = [
  { label: "Static (no rotation)", value: 0 },
  { label: "5 seconds", value: 5000 },
  { label: "10 seconds", value: 10000 },
  { label: "15 seconds", value: 15000 },
  { label: "30 seconds", value: 30000 },
  { label: "60 seconds", value: 60000 },
];

export default function EditScreen() {
  const { id } = useParams();
  const router = useRouter();
  const [screen, setScreen] = useState<ScreenData | null>(null);
  const [loadError, setLoadError] = useState("");
  const [name, setName] = useState("");
  const [interval, setInterval] = useState(10000);
  const [images, setImages] = useState<ScreenImage[]>([]);
  const [published, setPublished] = useState(false);
  const [saving, setSaving] = useState(false);
  const [saveError, setSaveError] = useState("");
  const [saved, setSaved] = useState(false);
  const [showLibrary, setShowLibrary] = useState(false);
  const [libraryImages, setLibraryImages] = useState<LibraryImage[]>([]);
  const [libraryLoading, setLibraryLoading] = useState(false);
  const [uploading, setUploading] = useState(false);
  const [uploadError, setUploadError] = useState("");

  useEffect(() => {
    async function load() {
      try {
        const res = await fetch(`/api/admin/screens/${id}`);
        if (!res.ok) throw new Error(`Error ${res.status}`);
        const data: ScreenData = await res.json();
        setScreen(data);
        setName(data.name);
        setInterval(data.rotationInterval);
        setImages(data.images || []);
        setPublished(data.published || false);
      } catch (e: any) {
        setLoadError(e.message || "Failed to load screen");
      }
    }
    load();
  }, [id]);

  async function loadLibrary() {
    setLibraryLoading(true);
    try {
      const res = await fetch("/api/admin/images");
      if (!res.ok) throw new Error("Failed to load images");
      const data = await res.json();
      setLibraryImages(Array.isArray(data) ? data : []);
      setShowLibrary(true);
    } catch {
      alert("Failed to load image library. Check your connection.");
    } finally {
      setLibraryLoading(false);
    }
  }

  async function handleSave() {
    setSaving(true);
    setSaved(false);
    setSaveError("");
    try {
      const res = await fetch(`/api/admin/screens/${id}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          name,
          rotationInterval: interval,
          images: images.map((img, i) => ({ ...img, order: i + 1 })),
          published,
        }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        throw new Error(data.error || `Save failed (${res.status})`);
      }
      const data = await res.json();
      setScreen(data);
      setSaved(true);
      setTimeout(() => setSaved(false), 3000);
    } catch (e: any) {
      setSaveError(e.message || "Save failed");
    } finally {
      setSaving(false);
    }
  }

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
      const data = await res.json();
      const publicId = data.public_id;
      setImages([
        ...images,
        {
          filename: publicId.split("/").pop() + ".png",
          cloudinaryPublicId: publicId,
          url: data.secure_url,
          order: images.length + 1,
        },
      ]);
    } catch (e: any) {
      setUploadError(e.message || "Upload failed");
      setTimeout(() => setUploadError(""), 5000);
    } finally {
      setUploading(false);
      e.target.value = "";
    }
  }

  function addFromLibrary(img: LibraryImage) {
    const already = images.some((i) => i.cloudinaryPublicId === img.publicId);
    if (already) return;
    setImages([
      ...images,
      {
        filename: img.filename,
        cloudinaryPublicId: img.publicId,
        url: img.url,
        order: images.length + 1,
      },
    ]);
    setShowLibrary(false);
  }

  function removeImage(filename: string) {
    setImages(images.filter((i) => i.filename !== filename));
  }

  function moveImage(index: number, direction: -1 | 1) {
    const newImages = [...images];
    const target = index + direction;
    if (target < 0 || target >= newImages.length) return;
    [newImages[index], newImages[target]] = [
      newImages[target],
      newImages[index],
    ];
    setImages(newImages);
  }

  if (loadError) {
    return (
      <div className="text-center mt-20">
        <p className="text-red-400 mb-4">{loadError}</p>
        <button
          onClick={() => router.push("/admin")}
          className="bg-gray-800 text-white px-6 py-2 rounded-lg"
        >
          Back to Screens
        </button>
      </div>
    );
  }

  if (!screen) {
    return <div className="text-gray-400 text-center mt-20">Loading...</div>;
  }

  const hasUnsavedChanges =
    name !== screen.name ||
    interval !== screen.rotationInterval ||
    published !== (screen.published || false) ||
    JSON.stringify(images.map((i) => i.filename)) !==
      JSON.stringify((screen.images || []).map((i: any) => i.filename));

  return (
    <div>
      <button
        onClick={() => router.push("/admin")}
        className="text-gray-400 hover:text-white mb-4 inline-block text-sm"
      >
        &larr; Back
      </button>

      <div className="bg-gray-900 border border-gray-800 rounded-xl p-4 sm:p-6">
        <div className="flex flex-col sm:flex-row sm:items-center justify-between mb-6 gap-3">
          <h2 className="text-xl sm:text-2xl font-bold">
            Screen #{screen._id}
          </h2>
          <div className="flex items-center gap-3">
            {screen.publishedAt && (
              <span className="text-xs text-gray-500 hidden sm:inline">
                Published{" "}
                {new Date(screen.publishedAt).toLocaleDateString()}
              </span>
            )}
            <button
              onClick={() => setPublished(!published)}
              className={`relative inline-flex h-8 w-14 items-center rounded-full transition-colors ${
                published ? "bg-green-600" : "bg-gray-700"
              }`}
            >
              <span
                className={`inline-block h-6 w-6 transform rounded-full bg-white transition-transform ${
                  published ? "translate-x-7" : "translate-x-1"
                }`}
              />
            </button>
            <span
              className={`text-sm font-bold ${
                published ? "text-green-400" : "text-gray-500"
              }`}
            >
              {published ? "LIVE" : "DRAFT"}
            </span>
          </div>
        </div>

        <div className="grid grid-cols-1 md:grid-cols-2 gap-4 sm:gap-6 mb-6">
          <div>
            <label className="block text-sm text-gray-400 mb-1">
              Screen Name
            </label>
            <input
              type="text"
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white"
            />
          </div>
          <div>
            <label className="block text-sm text-gray-400 mb-1">
              Rotation Interval
            </label>
            <select
              value={interval}
              onChange={(e) => setInterval(Number(e.target.value))}
              className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white"
            >
              {INTERVALS.map((opt) => (
                <option key={opt.value} value={opt.value}>
                  {opt.label}
                </option>
              ))}
            </select>
          </div>
        </div>

        <h3 className="text-lg font-semibold mb-3">
          Images ({images.length})
        </h3>

        {images.length === 0 ? (
          <div className="text-gray-600 text-center py-8 border border-dashed border-gray-800 rounded-lg mb-4">
            No images assigned
          </div>
        ) : (
          <div className="space-y-2 mb-4">
            {images.map((img, index) => (
              <div
                key={img.filename}
                className="flex items-center gap-3 sm:gap-4 bg-gray-800 rounded-lg p-2 sm:p-3"
              >
                <img
                  src={img.url}
                  alt={img.filename}
                  className="w-16 h-12 sm:w-20 sm:h-14 object-cover rounded"
                />
                <span className="flex-1 text-xs sm:text-sm text-gray-300 truncate">
                  {img.filename}
                </span>
                <div className="flex gap-1">
                  <button
                    onClick={() => moveImage(index, -1)}
                    disabled={index === 0}
                    className="px-2 py-1 text-gray-400 hover:text-white disabled:opacity-30 text-lg"
                  >
                    &uarr;
                  </button>
                  <button
                    onClick={() => moveImage(index, 1)}
                    disabled={index === images.length - 1}
                    className="px-2 py-1 text-gray-400 hover:text-white disabled:opacity-30 text-lg"
                  >
                    &darr;
                  </button>
                  <button
                    onClick={() => removeImage(img.filename)}
                    className="px-2 py-1 text-red-400 hover:text-red-300 text-lg"
                  >
                    &times;
                  </button>
                </div>
              </div>
            ))}
          </div>
        )}

        <div className="flex flex-wrap gap-3 mb-6">
          <button
            onClick={loadLibrary}
            disabled={libraryLoading}
            className="bg-gray-800 hover:bg-gray-700 active:bg-gray-600 text-white px-4 py-2 rounded-lg text-sm disabled:opacity-50"
          >
            {libraryLoading ? "Loading..." : "Add from Library"}
          </button>
          <label className="bg-gray-800 hover:bg-gray-700 active:bg-gray-600 text-white px-4 py-2 rounded-lg text-sm cursor-pointer">
            {uploading ? "Uploading..." : "Upload New"}
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

        <div className="flex flex-wrap items-center gap-3">
          <button
            onClick={handleSave}
            disabled={saving}
            className={`font-bold px-6 sm:px-8 py-3 rounded-lg disabled:opacity-50 transition ${
              hasUnsavedChanges
                ? "bg-orange-600 hover:bg-orange-700 active:bg-orange-800 text-white"
                : "bg-gray-700 text-gray-400"
            }`}
          >
            {saving ? "Saving..." : "Save"}
          </button>
          {saved && (
            <span className="text-green-400 text-sm font-semibold">
              Saved!
            </span>
          )}
          {saveError && (
            <span className="text-red-400 text-sm">{saveError}</span>
          )}
          {hasUnsavedChanges && !saving && !saveError && (
            <span className="text-yellow-400 text-xs">Unsaved changes</span>
          )}
        </div>
      </div>

      {showLibrary && (
        <div
          className="fixed inset-0 bg-black/80 flex items-end sm:items-center justify-center z-50"
          onClick={() => setShowLibrary(false)}
        >
          <div
            className="bg-gray-900 border border-gray-800 rounded-t-2xl sm:rounded-xl p-4 sm:p-6 w-full sm:max-w-4xl max-h-[80vh] overflow-y-auto"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex justify-between items-center mb-4">
              <h3 className="text-lg font-bold">Image Library</h3>
              <button
                onClick={() => setShowLibrary(false)}
                className="text-gray-400 hover:text-white text-2xl px-2"
              >
                &times;
              </button>
            </div>
            {libraryImages.length === 0 ? (
              <p className="text-gray-500 text-center py-8">
                No images in library. Upload one first.
              </p>
            ) : (
              <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3">
                {libraryImages.map((img) => {
                  const alreadyAdded = images.some(
                    (i) => i.cloudinaryPublicId === img.publicId
                  );
                  return (
                    <div
                      key={img.publicId}
                      onClick={() => !alreadyAdded && addFromLibrary(img)}
                      className={`aspect-video rounded-lg overflow-hidden border-2 cursor-pointer transition ${
                        alreadyAdded
                          ? "border-green-500 opacity-50 cursor-not-allowed"
                          : "border-gray-700 hover:border-orange-500 active:border-orange-400"
                      }`}
                    >
                      <img
                        src={img.url}
                        alt={img.filename}
                        className="w-full h-full object-cover"
                      />
                    </div>
                  );
                })}
              </div>
            )}
          </div>
        </div>
      )}
    </div>
  );
}
