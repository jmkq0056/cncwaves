"use client";

import { useEffect, useState, useRef } from "react";
import { useRouter } from "next/navigation";
import JSZip from "jszip";

interface MenuScreenSummary {
  _id: string;
  screenId: string;
  title: string;
  layout: string;
  items: any[];
  extraItems?: any[];
  sortOrder: number;
}

export default function MenuOverview() {
  const [screens, setScreens] = useState<MenuScreenSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [exportProgress, setExportProgress] = useState<{ active: boolean; done: number; total: number; current: string; failed: string[] } | null>(null);
  const router = useRouter();

  useEffect(() => {
    fetch("/api/admin/menu/screens")
      .then((r) => {
        if (!r.ok) throw new Error(`Error ${r.status}`);
        return r.json();
      })
      .then((data) => setScreens(data))
      .catch((e) => setError(e.message))
      .finally(() => setLoading(false));
  }, []);

  if (loading) {
    return <div className="text-gray-400 text-center mt-20">Loading menu screens...</div>;
  }

  if (error) {
    return (
      <div className="text-center mt-20">
        <p className="text-red-400 mb-4">{error}</p>
        <button onClick={() => window.location.reload()} className="bg-gray-800 text-white px-6 py-2 rounded-lg">Retry</button>
      </div>
    );
  }

  const layoutLabels: Record<string, string> = {
    "meal-rows": "Meal Board",
    "grid-2col": "Grid",
    "family": "Family",
    "tacos": "Tacos",
    "kids": "Kids",
    "price-list": "Price List",
    "drinks": "Drinks",
    "coffee": "Coffee",
  };

  return (
    <div>
      <div className="flex items-center justify-between mb-6">
        <h2 className="text-xl sm:text-2xl font-bold">Menu Boards</h2>
        <div className="flex items-center gap-3">
          <span className="text-sm text-gray-500">{screens.length} screens</span>
          <button
            onClick={async () => {
              if (exportProgress?.active) return;
              const zip = new JSZip();
              const ids = screens.map(s => s.screenId);
              const total = ids.length;
              const failed: string[] = [];
              setExportProgress({ active: true, done: 0, total, current: ids[0], failed: [] });

              const folderMap: Record<string, string> = {
                "screen-1": "screen-1",
                "screen-2a": "screen-2", "screen-2b": "screen-2", "screen-2c": "screen-2",
                "screen-3": "screen-3", "screen-4": "screen-4", "screen-5": "screen-5",
                "screen-6": "screen-6", "screen-7": "screen-7", "screen-8": "screen-8",
                "screen-9a": "screen-9", "screen-9b": "screen-9",
              };

              // Process 3 at a time
              let done = 0;
              const queue = [...ids];
              const workers = Array.from({ length: 3 }, async () => {
                while (queue.length > 0) {
                  const sid = queue.shift()!;
                  setExportProgress(p => p ? { ...p, current: sid } : p);
                  try {
                    const res = await fetch("/api/admin/menu/export", {
                      method: "POST",
                      headers: { "Content-Type": "application/json" },
                      body: JSON.stringify({ screenId: sid }),
                    });
                    if (!res.ok) throw new Error(`${res.status}`);
                    const blob = await res.blob();
                    const buf = await blob.arrayBuffer();
                    const folder = folderMap[sid] || sid;
                    zip.file(`screens/${folder}/${sid}.png`, buf);
                  } catch {
                    failed.push(sid);
                  }
                  done++;
                  setExportProgress(p => p ? { ...p, done, failed: [...failed] } : p);
                }
              });
              await Promise.all(workers);

              // Download ZIP
              const blob = await zip.generateAsync({ type: "blob" });
              const url = URL.createObjectURL(blob);
              const a = document.createElement("a"); a.download = "cnc-menu-screens.zip"; a.href = url; a.click();
              URL.revokeObjectURL(url);

              setExportProgress(p => p ? { ...p, active: false, current: "Done!" } : p);
              setTimeout(() => setExportProgress(null), 4000);
            }}
            disabled={!!exportProgress?.active}
            className="bg-orange-500 hover:bg-orange-600 disabled:opacity-50 text-white font-bold px-4 py-2 rounded-lg text-sm"
          >
            {exportProgress?.active
              ? `${exportProgress.done}/${exportProgress.total} — ${exportProgress.current}`
              : exportProgress?.current === "Done!"
              ? `Done! ${exportProgress.failed.length > 0 ? `(${exportProgress.failed.length} failed)` : ""}`
              : "Export All (ZIP)"}
          </button>
        </div>
      </div>

      <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4">
        {screens.map((screen) => {
          const soldOutCount = screen.items.filter((i: any) => i.soldOut).length;
          const firstImg = screen.items.find((i: any) => i.cleanImage || i.image)?.cleanImage || screen.items.find((i: any) => i.image)?.image;

          return (
            <div
              key={screen._id}
              onClick={() => router.push(`/admin/menu/${screen.screenId}`)}
              className="bg-gray-900 border border-gray-800 rounded-xl p-3 sm:p-4 cursor-pointer hover:border-orange-500 transition group"
            >
              <div className="aspect-[9/16] bg-gray-800 rounded-lg mb-3 overflow-hidden flex items-center justify-center relative">
                {firstImg ? (
                  <img src={firstImg} alt={screen.title} className="w-full h-full object-cover" />
                ) : (
                  <span className="text-gray-600 text-sm">No preview</span>
                )}
                {soldOutCount > 0 && (
                  <span className="absolute top-2 right-2 bg-red-600 text-white text-[10px] font-bold px-2 py-0.5 rounded">
                    {soldOutCount} UDSOLGT
                  </span>
                )}
              </div>
              <div className="font-semibold text-sm sm:text-base group-hover:text-orange-400 transition whitespace-pre-line leading-tight">
                {screen.title}
              </div>
              <div className="flex items-center justify-between mt-2">
                <span className="text-xs text-gray-500">
                  {layoutLabels[screen.layout] || screen.layout}
                </span>
                <span className="bg-gray-800 text-gray-400 text-xs px-2 py-0.5 rounded">
                  {screen.items.length} items
                </span>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}
