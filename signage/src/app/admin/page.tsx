"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";

interface ScreenSummary {
  _id: number;
  name: string;
  imageCount: number;
  firstImage: string | null;
  rotationInterval: number;
  published: boolean;
  publishedAt: string | null;
  updatedAt: string;
}

export default function AdminHome() {
  const [screens, setScreens] = useState<ScreenSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [toggling, setToggling] = useState<number | null>(null);
  const router = useRouter();

  async function loadScreens() {
    try {
      const res = await fetch("/api/admin/screens");
      if (!res.ok) throw new Error(`Server error ${res.status}`);
      const data = await res.json();
      if (!Array.isArray(data)) throw new Error("Invalid response");
      setScreens(data);
      setError("");
    } catch (e: any) {
      setError(e.message || "Failed to load screens");
    } finally {
      setLoading(false);
    }
  }

  useEffect(() => {
    loadScreens();
  }, []);

  async function togglePublish(e: React.MouseEvent, screen: ScreenSummary) {
    e.stopPropagation();

    if (!screen.published && screen.imageCount === 0) {
      alert("Add images to this screen before publishing.");
      return;
    }

    setToggling(screen._id);
    try {
      const res = await fetch(`/api/admin/screens/${screen._id}`, {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ published: !screen.published }),
      });
      if (!res.ok) {
        const data = await res.json().catch(() => ({}));
        alert(data.error || "Failed to update");
      }
    } catch {
      alert("Connection failed");
    } finally {
      setToggling(null);
      loadScreens();
    }
  }

  if (loading) {
    return (
      <div className="text-gray-400 text-center mt-20">Loading screens...</div>
    );
  }

  if (error) {
    return (
      <div className="text-center mt-20">
        <p className="text-red-400 mb-4">{error}</p>
        <button
          onClick={() => { setLoading(true); loadScreens(); }}
          className="bg-gray-800 text-white px-6 py-2 rounded-lg"
        >
          Retry
        </button>
      </div>
    );
  }

  return (
    <div>
      <h2 className="text-xl sm:text-2xl font-bold mb-4 sm:mb-6">
        All Screens
      </h2>
      <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4">
        {screens.map((screen) => (
          <div
            key={screen._id}
            onClick={() => router.push(`/admin/screen/${screen._id}`)}
            className={`bg-gray-900 border rounded-xl p-3 sm:p-4 cursor-pointer hover:border-orange-500 active:border-orange-500 transition group ${
              screen.published ? "border-green-700" : "border-gray-800"
            }`}
          >
            <div className="aspect-video bg-gray-800 rounded-lg mb-3 overflow-hidden flex items-center justify-center relative">
              {screen.firstImage ? (
                <img
                  src={screen.firstImage}
                  alt={screen.name}
                  className="w-full h-full object-cover"
                />
              ) : (
                <span className="text-gray-600 text-sm">No images</span>
              )}
              {screen.published && (
                <span className="absolute top-2 right-2 bg-green-600 text-white text-[10px] font-bold px-2 py-0.5 rounded">
                  LIVE
                </span>
              )}
            </div>
            <div className="flex items-start justify-between">
              <div>
                <div className="text-sm text-gray-500">#{screen._id}</div>
                <div className="font-semibold group-hover:text-orange-400 transition text-sm sm:text-base">
                  {screen.name}
                </div>
              </div>
              <span className="bg-gray-800 text-gray-400 text-xs px-2 py-1 rounded">
                {screen.imageCount}
              </span>
            </div>

            <div className="flex items-center justify-between mt-3">
              <div className="text-xs text-gray-600 hidden sm:block">
                {screen.updatedAt
                  ? `Updated ${new Date(screen.updatedAt).toLocaleDateString()}`
                  : ""}
              </div>
              <button
                onClick={(e) => togglePublish(e, screen)}
                disabled={toggling === screen._id}
                className={`text-xs font-bold px-3 py-1.5 rounded transition ${
                  screen.published
                    ? "bg-green-600/20 text-green-400 hover:bg-red-600/20 hover:text-red-400"
                    : "bg-gray-800 text-gray-500 hover:bg-green-600/20 hover:text-green-400"
                }`}
              >
                {toggling === screen._id
                  ? "..."
                  : screen.published
                  ? "Live"
                  : "Publish"}
              </button>
            </div>
          </div>
        ))}
      </div>
    </div>
  );
}
