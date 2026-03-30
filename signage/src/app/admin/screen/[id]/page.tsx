"use client";

import { useEffect, useState, useRef } from "react";
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
  screenOnTime: string;
  screenOffTime: string;
  screenOffMode: string;
}

interface LibraryImage {
  _id: string;
  name: string;
  category: string;
  cloudinaryPublicId: string;
  url: string;
}

const INTERVAL_PRESETS = [0, 3, 5, 7, 10, 15, 20, 30, 45, 60, 90, 120];

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
  const [screenOnTime, setScreenOnTime] = useState("");
  const [screenOffTime, setScreenOffTime] = useState("");
  const [screenOffMode, setScreenOffMode] = useState("dim");

  // Library modal
  const [showLibrary, setShowLibrary] = useState(false);
  const [libraryImages, setLibraryImages] = useState<LibraryImage[]>([]);
  const [libraryCategories, setLibraryCategories] = useState<string[]>([]);
  const [libraryCategory, setLibraryCategory] = useState<string | null>(null);
  const [libraryLoading, setLibraryLoading] = useState(false);

  // Upload modal
  const [showUpload, setShowUpload] = useState(false);
  const [uploadName, setUploadName] = useState("");
  const [uploadCategory, setUploadCategory] = useState("");
  const [newCategory, setNewCategory] = useState("");
  const [uploadFile, setUploadFile] = useState<File | null>(null);
  const [uploadPreview, setUploadPreview] = useState<string | null>(null);
  const [uploading, setUploading] = useState(false);
  const [uploadError, setUploadError] = useState("");
  const fileRef = useRef<HTMLInputElement>(null);

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
        setScreenOnTime(data.screenOnTime || "");
        setScreenOffTime(data.screenOffTime || "");
        setScreenOffMode(data.screenOffMode || "dim");
      } catch (e: any) {
        setLoadError(e.message || "Failed to load screen");
      }
    }
    load();
  }, [id]);

  async function loadLibrary() {
    setLibraryLoading(true);
    try {
      const [imgRes, catRes] = await Promise.all([
        fetch(
          libraryCategory
            ? `/api/admin/images?category=${encodeURIComponent(libraryCategory)}`
            : "/api/admin/images"
        ),
        fetch("/api/admin/categories"),
      ]);
      if (!imgRes.ok) throw new Error("Failed to load images");
      const imgData = await imgRes.json();
      setLibraryImages(Array.isArray(imgData) ? imgData : []);
      if (catRes.ok) {
        const catData = await catRes.json();
        setLibraryCategories(Array.isArray(catData) ? catData : []);
      }
      setShowLibrary(true);
    } catch {
      alert("Failed to load image library.");
    } finally {
      setLibraryLoading(false);
    }
  }

  // Reload library when category filter changes
  useEffect(() => {
    if (showLibrary) {
      (async () => {
        try {
          const url = libraryCategory
            ? `/api/admin/images?category=${encodeURIComponent(libraryCategory)}`
            : "/api/admin/images";
          const res = await fetch(url);
          if (res.ok) {
            const data = await res.json();
            setLibraryImages(Array.isArray(data) ? data : []);
          }
        } catch {}
      })();
    }
  }, [libraryCategory, showLibrary]);

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
          screenOnTime,
          screenOffTime,
          screenOffMode,
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

  function handleFileSelect(e: React.ChangeEvent<HTMLInputElement>) {
    const file = e.target.files?.[0];
    if (!file) return;
    setUploadFile(file);
    setUploadPreview(URL.createObjectURL(file));
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

      // Step 3: Save metadata to DB
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

      // Add to screen images
      setImages([
        ...images,
        {
          filename: uploadName.trim(),
          cloudinaryPublicId: cloudData.public_id,
          url: cloudData.secure_url,
          order: images.length + 1,
        },
      ]);

      // Reset upload modal
      setShowUpload(false);
      setUploadName("");
      setUploadCategory("");
      setNewCategory("");
      setUploadFile(null);
      setUploadPreview(null);
    } catch (e: any) {
      setUploadError(e.message || "Upload failed");
    } finally {
      setUploading(false);
    }
  }

  function addFromLibrary(img: LibraryImage) {
    const already = images.some(
      (i) => i.cloudinaryPublicId === img.cloudinaryPublicId
    );
    if (already) return;
    setImages([
      ...images,
      {
        filename: img.name,
        cloudinaryPublicId: img.cloudinaryPublicId,
        url: img.url,
        order: images.length + 1,
      },
    ]);
    setShowLibrary(false);
  }

  function removeImage(index: number) {
    setImages(images.filter((_, i) => i !== index));
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
    JSON.stringify(images.map((i) => i.cloudinaryPublicId)) !==
      JSON.stringify(
        (screen.images || []).map((i: any) => i.cloudinaryPublicId)
      ) ||
    screenOnTime !== (screen.screenOnTime || "") ||
    screenOffTime !== (screen.screenOffTime || "") ||
    screenOffMode !== (screen.screenOffMode || "dim");

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
              Rotation Interval (seconds)
            </label>
            <input
              type="number"
              min="0"
              max="300"
              value={interval / 1000}
              onChange={(e) => setInterval(Math.max(0, Math.min(300, Number(e.target.value))) * 1000)}
              className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white mb-2"
            />
            <div className="flex flex-wrap gap-1.5">
              {INTERVAL_PRESETS.map((s) => (
                <button
                  key={s}
                  type="button"
                  onClick={() => setInterval(s * 1000)}
                  className={`px-2.5 py-1 rounded text-xs font-medium ${
                    interval === s * 1000
                      ? "bg-orange-500 text-white"
                      : "bg-gray-800 text-gray-400 hover:bg-gray-700"
                  }`}
                >
                  {s === 0 ? "Static" : `${s}s`}
                </button>
              ))}
            </div>
          </div>
        </div>

        {/* Schedule */}
        <div className="mb-6">
          <h3 className="text-lg font-semibold mb-3">Schedule</h3>
          <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
            <div>
              <label className="block text-sm text-gray-400 mb-1">
                Turn ON at
              </label>
              <input
                type="time"
                value={screenOnTime}
                onChange={(e) => setScreenOnTime(e.target.value)}
                className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white"
              />
            </div>
            <div>
              <label className="block text-sm text-gray-400 mb-1">
                Turn OFF at
              </label>
              <input
                type="time"
                value={screenOffTime}
                onChange={(e) => setScreenOffTime(e.target.value)}
                className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white"
              />
            </div>
          </div>
          {screenOnTime && screenOffTime && (
            <div className="mt-3">
              <label className="block text-sm text-gray-400 mb-1">
                When off
              </label>
              <select
                value={screenOffMode}
                onChange={(e) => setScreenOffMode(e.target.value)}
                className="bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white text-sm"
              >
                <option value="dim">Dim screen (brightness 0)</option>
                <option value="reboot">Reboot device</option>
              </select>
            </div>
          )}
          <div className="flex items-center gap-3 mt-2">
            <span className="text-xs text-gray-500">
              {screenOnTime && screenOffTime
                ? screenOnTime <= screenOffTime
                  ? `Screen on ${screenOnTime} — ${screenOffTime} (Copenhagen)`
                  : `Screen on ${screenOnTime} — ${screenOffTime} next day (Copenhagen)`
                : "Always on (no schedule)"}
            </span>
            {(screenOnTime || screenOffTime) && (
              <button
                type="button"
                onClick={() => { setScreenOnTime(""); setScreenOffTime(""); }}
                className="text-xs text-red-400 hover:text-red-300"
              >
                Clear schedule
              </button>
            )}
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
                key={img.cloudinaryPublicId}
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
                    onClick={() => removeImage(index)}
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
          <button
            onClick={() => setShowUpload(true)}
            className="bg-gray-800 hover:bg-gray-700 active:bg-gray-600 text-white px-4 py-2 rounded-lg text-sm"
          >
            Upload New
          </button>
        </div>

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

      {/* Library Modal */}
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

            {/* Category filter in library modal */}
            <div className="flex gap-2 mb-4 overflow-x-auto pb-2">
              <button
                onClick={() => setLibraryCategory(null)}
                className={`px-3 py-1 rounded-full text-xs font-medium whitespace-nowrap ${
                  libraryCategory === null
                    ? "bg-orange-500 text-white"
                    : "bg-gray-800 text-gray-300 hover:bg-gray-700"
                }`}
              >
                All
              </button>
              {libraryCategories.map((cat) => (
                <button
                  key={cat}
                  onClick={() => setLibraryCategory(cat)}
                  className={`px-3 py-1 rounded-full text-xs font-medium whitespace-nowrap ${
                    libraryCategory === cat
                      ? "bg-orange-500 text-white"
                      : "bg-gray-800 text-gray-300 hover:bg-gray-700"
                  }`}
                >
                  {cat}
                </button>
              ))}
            </div>

            {libraryImages.length === 0 ? (
              <p className="text-gray-500 text-center py-8">
                No images found. Upload one first.
              </p>
            ) : (
              <div className="grid grid-cols-2 sm:grid-cols-3 md:grid-cols-4 gap-3">
                {libraryImages.map((img) => {
                  const alreadyAdded = images.some(
                    (i) =>
                      i.cloudinaryPublicId === img.cloudinaryPublicId
                  );
                  return (
                    <div
                      key={img.cloudinaryPublicId}
                      onClick={() => !alreadyAdded && addFromLibrary(img)}
                      className={`rounded-lg overflow-hidden border-2 cursor-pointer transition ${
                        alreadyAdded
                          ? "border-green-500 opacity-50 cursor-not-allowed"
                          : "border-gray-700 hover:border-orange-500 active:border-orange-400"
                      }`}
                    >
                      <div className="aspect-video">
                        <img
                          src={img.url}
                          alt={img.name}
                          className="w-full h-full object-cover"
                        />
                      </div>
                      <div className="p-2 bg-gray-800">
                        <div className="text-xs text-white truncate">
                          {img.name}
                        </div>
                        <div className="text-xs text-gray-500">
                          {img.category}
                        </div>
                      </div>
                    </div>
                  );
                })}
              </div>
            )}
          </div>
        </div>
      )}

      {/* Upload Modal */}
      {showUpload && (
        <div className="fixed inset-0 bg-black/70 flex items-center justify-center z-50 p-4">
          <div className="bg-gray-900 border border-gray-700 rounded-2xl w-full max-w-md p-6">
            <h3 className="text-lg font-bold mb-4">Upload Image</h3>

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

            <label className="block text-sm text-gray-400 mb-1">Name</label>
            <input
              type="text"
              value={uploadName}
              onChange={(e) => setUploadName(e.target.value)}
              placeholder="e.g. Summer Promo Banner"
              className="w-full bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white mb-4 text-sm"
            />

            <label className="block text-sm text-gray-400 mb-1">
              Category
            </label>
            <select
              value={uploadCategory}
              onChange={(e) => {
                setUploadCategory(e.target.value);
                if (e.target.value !== "__new__") setNewCategory("");
              }}
              className="w-full bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white mb-2 text-sm"
            >
              <option value="">Uncategorized</option>
              {libraryCategories.map((cat) => (
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
                {uploading ? "Uploading..." : "Upload & Add"}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
