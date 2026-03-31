"use client";

import { useEffect, useState, useRef, useCallback } from "react";

interface ScreenData {
  _id: number;
  name: string;
  images: { filename: string; url: string; order: number }[];
  rotationInterval: number;
  burstEnabled: boolean;
  burstImageUrl: string;
  burstInterval: number;
  burstDuration: number;
  published: boolean;
}

type Mode = "normal" | "burst";

export default function SimulatePage() {
  const [allScreens, setAllScreens] = useState<ScreenData[]>([]);
  const [loading, setLoading] = useState(true);
  const [selectedIds, setSelectedIds] = useState<number[]>([]);
  const [mode, setMode] = useState<Mode>("normal");
  const [showPicker, setShowPicker] = useState(true);

  // Quick range input
  const [rangeInput, setRangeInput] = useState("1-9");

  useEffect(() => {
    async function load() {
      try {
        // Fetch full screen data for all screens
        const listRes = await fetch("/api/admin/screens");
        if (!listRes.ok) return;
        const list = await listRes.json();

        // Fetch full details for each screen in parallel
        const details = await Promise.all(
          list.map((s: any) =>
            fetch(`/api/admin/screens/${s._id}`)
              .then((r) => (r.ok ? r.json() : null))
              .catch(() => null)
          )
        );
        setAllScreens(details.filter(Boolean));
      } catch {
      } finally {
        setLoading(false);
      }
    }
    load();
  }, []);

  function parseRange(input: string): number[] {
    const ids: number[] = [];
    const parts = input.split(/[,\s]+/).filter(Boolean);
    for (const part of parts) {
      if (part.includes("-")) {
        const [a, b] = part.split("-").map(Number);
        if (!isNaN(a) && !isNaN(b)) {
          for (let i = Math.min(a, b); i <= Math.max(a, b); i++) ids.push(i);
        }
      } else {
        const n = Number(part);
        if (!isNaN(n)) ids.push(n);
      }
    }
    return [...new Set(ids)].sort((a, b) => a - b);
  }

  function applyRange() {
    const ids = parseRange(rangeInput);
    setSelectedIds(ids);
    if (ids.length > 0) setShowPicker(false);
  }

  function toggleScreen(id: number) {
    setSelectedIds((prev) =>
      prev.includes(id) ? prev.filter((x) => x !== id) : [...prev, id].sort((a, b) => a - b)
    );
  }

  const activeScreens = allScreens.filter((s) => selectedIds.includes(s._id));

  if (loading) {
    return <div className="text-gray-400 text-center mt-20">Loading screens...</div>;
  }

  return (
    <div className="pb-4">
      {/* Header */}
      <div className="flex items-center justify-between mb-4">
        <div className="flex items-center gap-3">
          <a
            href="/admin"
            className="text-gray-400 hover:text-white text-sm"
          >
            &larr; Back
          </a>
          <h2 className="text-xl font-bold">Simulate</h2>
        </div>
        <div className="flex items-center gap-2">
          <button
            onClick={() => setShowPicker(!showPicker)}
            className="bg-gray-800 hover:bg-gray-700 text-white text-xs font-medium px-3 py-1.5 rounded-lg"
          >
            {showPicker ? "Hide Picker" : "Pick Screens"}
          </button>
          {/* Mode toggle */}
          <div className="flex bg-gray-800 rounded-lg overflow-hidden">
            <button
              onClick={() => setMode("normal")}
              className={`px-3 py-1.5 text-xs font-bold transition ${
                mode === "normal"
                  ? "bg-green-600 text-white"
                  : "text-gray-400 hover:text-white"
              }`}
            >
              Normal
            </button>
            <button
              onClick={() => setMode("burst")}
              className={`px-3 py-1.5 text-xs font-bold transition ${
                mode === "burst"
                  ? "bg-orange-500 text-white"
                  : "text-gray-400 hover:text-white"
              }`}
            >
              Burst
            </button>
          </div>
        </div>
      </div>

      {/* Screen picker */}
      {showPicker && (
        <div className="bg-gray-900 border border-gray-800 rounded-xl p-4 mb-4">
          {/* Quick range */}
          <div className="flex items-center gap-2 mb-3">
            <input
              type="text"
              value={rangeInput}
              onChange={(e) => setRangeInput(e.target.value)}
              onKeyDown={(e) => e.key === "Enter" && applyRange()}
              placeholder="e.g. 1-9 or 1,5,6,7,8"
              className="flex-1 bg-gray-800 border border-gray-700 rounded-lg px-3 py-2 text-white text-sm"
            />
            <button
              onClick={applyRange}
              className="bg-orange-500 hover:bg-orange-600 text-white text-sm font-bold px-4 py-2 rounded-lg"
            >
              Go
            </button>
          </div>

          {/* Quick presets */}
          <div className="flex flex-wrap gap-1.5 mb-3">
            {["1-9", "1-11", "1-20", "10-11", "12-20"].map((preset) => (
              <button
                key={preset}
                onClick={() => {
                  setRangeInput(preset);
                  setSelectedIds(parseRange(preset));
                  setShowPicker(false);
                }}
                className="bg-gray-800 hover:bg-gray-700 text-gray-300 text-xs px-2.5 py-1 rounded"
              >
                {preset}
              </button>
            ))}
          </div>

          {/* Individual toggles */}
          <div className="flex flex-wrap gap-1.5">
            {allScreens.map((s) => (
              <button
                key={s._id}
                onClick={() => toggleScreen(s._id)}
                className={`w-9 h-9 rounded-lg text-xs font-bold transition ${
                  selectedIds.includes(s._id)
                    ? "bg-orange-500 text-white"
                    : "bg-gray-800 text-gray-500 hover:bg-gray-700"
                }`}
              >
                {s._id}
              </button>
            ))}
          </div>
        </div>
      )}

      {/* Simulation area */}
      {activeScreens.length === 0 ? (
        <div className="text-gray-600 text-center py-20 border border-dashed border-gray-800 rounded-xl">
          Select screens above to simulate
        </div>
      ) : (
        <div className="bg-black rounded-xl p-2 overflow-x-auto">
          <div
            className="flex gap-1 mx-auto"
            style={{ width: "fit-content" }}
          >
            {activeScreens.map((screen) => (
              <ScreenPanel
                key={screen._id}
                screen={screen}
                mode={mode}
                totalScreens={activeScreens.length}
              />
            ))}
          </div>
          {/* Labels */}
          <div className="flex gap-1 mt-1" style={{ width: "fit-content", margin: "4px auto 0" }}>
            {activeScreens.map((screen) => (
              <div
                key={screen._id}
                className="text-center text-[10px] text-gray-600"
                style={{
                  width: activeScreens.length <= 4
                    ? "20vh"
                    : activeScreens.length <= 9
                    ? "10vh"
                    : "7vh",
                }}
              >
                #{screen._id} {screen.name}
              </div>
            ))}
          </div>
        </div>
      )}

      {/* Info bar */}
      {activeScreens.length > 0 && (
        <div className="mt-3 text-xs text-gray-600 text-center">
          {activeScreens.length} screen{activeScreens.length !== 1 ? "s" : ""} ·{" "}
          {mode === "burst" ? "Showing burst images" : "Rotating playlist images"} ·{" "}
          {mode === "normal" && "Rotation simulated in real-time"}
        </div>
      )}
    </div>
  );
}

function ScreenPanel({
  screen,
  mode,
  totalScreens,
}: {
  screen: ScreenData;
  mode: Mode;
  totalScreens: number;
}) {
  const [currentIndex, setCurrentIndex] = useState(0);
  const [showBurst, setShowBurst] = useState(mode === "burst");
  const timerRef = useRef<NodeJS.Timeout | null>(null);
  const burstTimerRef = useRef<NodeJS.Timeout | null>(null);

  // Normal mode: rotate through images
  useEffect(() => {
    if (mode !== "normal") return;
    if (!screen.images?.length || screen.rotationInterval <= 0) return;

    timerRef.current = setInterval(() => {
      setCurrentIndex((prev) => (prev + 1) % screen.images.length);
    }, screen.rotationInterval);

    return () => {
      if (timerRef.current) clearInterval(timerRef.current);
    };
  }, [mode, screen.images, screen.rotationInterval]);

  // Normal mode: burst interruptions
  useEffect(() => {
    if (mode !== "normal") return;
    if (!screen.burstEnabled || !screen.burstImageUrl) return;

    const intervalMs = (screen.burstInterval || 3) * 60 * 1000;
    const durationMs = (screen.burstDuration || 10) * 1000;

    burstTimerRef.current = setInterval(() => {
      setShowBurst(true);
      setTimeout(() => setShowBurst(false), durationMs);
    }, intervalMs);

    return () => {
      if (burstTimerRef.current) clearInterval(burstTimerRef.current);
    };
  }, [mode, screen.burstEnabled, screen.burstImageUrl, screen.burstInterval, screen.burstDuration]);

  // Burst mode: always show burst
  useEffect(() => {
    setShowBurst(mode === "burst");
  }, [mode]);

  const currentImage =
    showBurst && screen.burstImageUrl
      ? screen.burstImageUrl
      : screen.images?.[currentIndex]?.url || null;

  // Responsive sizing: fewer screens = bigger panels
  const panelWidth =
    totalScreens <= 4
      ? "20vh"
      : totalScreens <= 9
      ? "10vh"
      : "7vh";

  return (
    <div
      className="relative bg-gray-950 rounded-sm overflow-hidden flex-shrink-0 border border-gray-800"
      style={{
        width: panelWidth,
        aspectRatio: "9 / 16",
      }}
    >
      {currentImage ? (
        <img
          src={currentImage}
          alt={`Screen ${screen._id}`}
          className="w-full h-full object-cover transition-opacity duration-500"
        />
      ) : (
        <div className="w-full h-full flex items-center justify-center">
          <span className="text-gray-700 text-[8px]">No image</span>
        </div>
      )}

      {/* Burst indicator */}
      {showBurst && screen.burstImageUrl && (
        <div className="absolute top-0.5 right-0.5 bg-orange-500 rounded-full w-1.5 h-1.5" />
      )}

      {/* Screen number overlay */}
      <div className="absolute bottom-0.5 left-0.5 bg-black/60 text-white text-[7px] px-1 rounded">
        {screen._id}
      </div>
    </div>
  );
}
