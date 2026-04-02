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
  screenOnTime: string;
  screenOffTime: string;
  screenOffMode: string;
  burstEnabled: boolean;
  burstInterval: number;
  burstDuration: number;
  deviceIp: string;
  lastSeenAt: string | null;
}

export default function AdminHome() {
  const [screens, setScreens] = useState<ScreenSummary[]>([]);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [toggling, setToggling] = useState<number | null>(null);
  const router = useRouter();

  // Selection mode
  const [selectMode, setSelectMode] = useState(false);
  const [selected, setSelected] = useState<Set<number>>(new Set());

  // Bulk modals
  const [showScheduleModal, setShowScheduleModal] = useState(false);
  const [showBurstModal, setShowBurstModal] = useState(false);
  const [bulkLoading, setBulkLoading] = useState(false);
  const [bulkMsg, setBulkMsg] = useState("");

  // Bulk schedule form
  const [bulkOnTime, setBulkOnTime] = useState("10:45");
  const [bulkOffTime, setBulkOffTime] = useState("00:05");
  const [bulkOffMode, setBulkOffMode] = useState("dim");

  // Bulk burst form
  const [bulkBurstEnabled, setBulkBurstEnabled] = useState(true);
  const [bulkBurstInterval, setBulkBurstInterval] = useState(2);
  const [bulkBurstDuration, setBulkBurstDuration] = useState(10);

  // Network modal
  const [showNetworkModal, setShowNetworkModal] = useState(false);

  // Force sync state
  const [syncing, setSyncing] = useState<Set<number>>(new Set());

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

  async function forceSync(e: React.MouseEvent, screenId: number) {
    e.stopPropagation();
    setSyncing((prev) => new Set(prev).add(screenId));
    try {
      const res = await fetch("/api/admin/screens/force-sync", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ screenIds: [screenId] }),
      });
      if (!res.ok) throw new Error("Sync failed");
    } catch {
      alert("Force sync failed");
    } finally {
      setTimeout(() => {
        setSyncing((prev) => {
          const next = new Set(prev);
          next.delete(screenId);
          return next;
        });
      }, 1500);
    }
  }

  function toggleSelect(e: React.MouseEvent, id: number) {
    e.stopPropagation();
    setSelected((prev) => {
      const next = new Set(prev);
      if (next.has(id)) next.delete(id);
      else next.add(id);
      return next;
    });
  }

  function selectAll() {
    setSelected(new Set(screens.map((s) => s._id)));
  }

  function deselectAll() {
    setSelected(new Set());
  }

  async function bulkForceSync() {
    if (selected.size === 0) return;
    setBulkLoading(true);
    try {
      const res = await fetch("/api/admin/screens/force-sync", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ screenIds: Array.from(selected) }),
      });
      if (!res.ok) throw new Error("Failed");
      const data = await res.json();
      setBulkMsg(`Synced ${data.synced.length} screens`);
      setTimeout(() => setBulkMsg(""), 3000);
    } catch {
      alert("Bulk sync failed");
    } finally {
      setBulkLoading(false);
    }
  }

  async function bulkPublish(publish: boolean) {
    if (selected.size === 0) return;
    setBulkLoading(true);
    try {
      const res = await fetch("/api/admin/screens/bulk", {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          screenIds: Array.from(selected),
          updates: { published: publish },
        }),
      });
      if (!res.ok) throw new Error("Failed");
      await loadScreens();
      setBulkMsg(`${publish ? "Published" : "Unpublished"} ${selected.size} screens`);
      setTimeout(() => setBulkMsg(""), 3000);
    } catch {
      alert("Bulk update failed");
    } finally {
      setBulkLoading(false);
    }
  }

  async function applyBulkSchedule() {
    if (selected.size === 0) return;
    setBulkLoading(true);
    try {
      const res = await fetch("/api/admin/screens/bulk", {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          screenIds: Array.from(selected),
          updates: {
            screenOnTime: bulkOnTime,
            screenOffTime: bulkOffTime,
            screenOffMode: bulkOffMode,
          },
        }),
      });
      if (!res.ok) throw new Error("Failed");
      await loadScreens();
      setShowScheduleModal(false);
      setBulkMsg(`Schedule set for ${selected.size} screens`);
      setTimeout(() => setBulkMsg(""), 3000);
    } catch {
      alert("Failed to set schedule");
    } finally {
      setBulkLoading(false);
    }
  }

  async function applyBulkBurst() {
    if (selected.size === 0) return;
    setBulkLoading(true);
    try {
      const res = await fetch("/api/admin/screens/bulk", {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          screenIds: Array.from(selected),
          updates: {
            burstEnabled: bulkBurstEnabled,
            burstInterval: bulkBurstInterval,
            burstDuration: bulkBurstDuration,
          },
        }),
      });
      if (!res.ok) throw new Error("Failed");
      await loadScreens();
      setShowBurstModal(false);
      setBulkMsg(`Burst config set for ${selected.size} screens`);
      setTimeout(() => setBulkMsg(""), 3000);
    } catch {
      alert("Failed to set burst config");
    } finally {
      setBulkLoading(false);
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
          onClick={() => {
            setLoading(true);
            loadScreens();
          }}
          className="bg-gray-800 text-white px-6 py-2 rounded-lg"
        >
          Retry
        </button>
      </div>
    );
  }

  return (
    <div className="pb-24">
      {/* Header */}
      <div className="flex items-center justify-between mb-4 sm:mb-6">
        <h2 className="text-xl sm:text-2xl font-bold">All Screens</h2>
        <div className="flex items-center gap-2">
          {bulkMsg && (
            <span className="text-green-400 text-xs font-medium">{bulkMsg}</span>
          )}
          <button
            onClick={() => setShowNetworkModal(true)}
            className="px-3 py-1.5 rounded-lg text-xs font-bold bg-gray-800 text-gray-400 hover:bg-gray-700 transition"
          >
            Network
          </button>
          <button
            onClick={() => {
              setSelectMode(!selectMode);
              if (selectMode) deselectAll();
            }}
            className={`px-3 py-1.5 rounded-lg text-xs font-bold transition ${
              selectMode
                ? "bg-orange-500 text-white"
                : "bg-gray-800 text-gray-400 hover:bg-gray-700"
            }`}
          >
            {selectMode ? "Done" : "Select"}
          </button>
        </div>
      </div>

      {/* Select all bar */}
      {selectMode && (
        <div className="flex items-center gap-3 mb-4 text-sm">
          <span className="text-gray-400">{selected.size} selected</span>
          <button
            onClick={selectAll}
            className="text-orange-400 hover:text-orange-300 text-xs"
          >
            Select All
          </button>
          <button
            onClick={deselectAll}
            className="text-gray-500 hover:text-gray-400 text-xs"
          >
            Clear
          </button>
        </div>
      )}

      {/* Screen grid */}
      <div className="grid grid-cols-2 sm:grid-cols-3 lg:grid-cols-4 gap-3 sm:gap-4">
        {screens.map((screen) => (
          <div
            key={screen._id}
            onClick={() => {
              if (selectMode) {
                setSelected((prev) => {
                  const next = new Set(prev);
                  if (next.has(screen._id)) next.delete(screen._id);
                  else next.add(screen._id);
                  return next;
                });
              } else {
                router.push(`/admin/screen/${screen._id}`);
              }
            }}
            className={`bg-gray-900 border rounded-xl p-3 sm:p-4 cursor-pointer hover:border-orange-500 active:border-orange-500 transition group ${
              selectMode && selected.has(screen._id)
                ? "border-orange-500 ring-1 ring-orange-500"
                : screen.published
                ? "border-green-700"
                : "border-gray-800"
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
              {selectMode && (
                <div
                  className={`absolute top-2 left-2 w-5 h-5 rounded border-2 flex items-center justify-center ${
                    selected.has(screen._id)
                      ? "bg-orange-500 border-orange-500"
                      : "border-gray-400 bg-black/40"
                  }`}
                >
                  {selected.has(screen._id) && (
                    <span className="text-white text-xs font-bold">&#10003;</span>
                  )}
                </div>
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
              <div className="flex items-center gap-2">
                <div className="text-xs text-gray-600 hidden sm:block">
                  {screen.updatedAt
                    ? `Updated ${new Date(screen.updatedAt).toLocaleDateString()}`
                    : ""}
                </div>
                {/* Force sync button */}
                {!selectMode && (
                  <button
                    onClick={(e) => forceSync(e, screen._id)}
                    disabled={syncing.has(screen._id)}
                    title="Force Sync"
                    className="text-gray-600 hover:text-orange-400 transition p-1"
                  >
                    {syncing.has(screen._id) ? (
                      <span className="text-green-400 text-xs">&#10003;</span>
                    ) : (
                      <svg
                        className="w-3.5 h-3.5"
                        fill="none"
                        stroke="currentColor"
                        viewBox="0 0 24 24"
                      >
                        <path
                          strokeLinecap="round"
                          strokeLinejoin="round"
                          strokeWidth={2}
                          d="M4 4v5h.582m15.356 2A8.001 8.001 0 004.582 9m0 0H9m11 11v-5h-.581m0 0a8.003 8.003 0 01-15.357-2m15.357 2H15"
                        />
                      </svg>
                    )}
                  </button>
                )}
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

      {/* Bulk action bar */}
      {selectMode && selected.size > 0 && (
        <div className="fixed bottom-16 sm:bottom-0 left-0 right-0 bg-gray-900 border-t border-gray-700 px-4 py-3 z-40">
          <div className="max-w-5xl mx-auto flex items-center gap-2 overflow-x-auto">
            <span className="text-sm text-gray-300 font-medium whitespace-nowrap mr-2">
              {selected.size} selected
            </span>
            <button
              onClick={() => setShowScheduleModal(true)}
              disabled={bulkLoading}
              className="bg-gray-800 hover:bg-gray-700 text-white text-xs font-medium px-3 py-2 rounded-lg whitespace-nowrap"
            >
              Set Schedule
            </button>
            <button
              onClick={() => setShowBurstModal(true)}
              disabled={bulkLoading}
              className="bg-gray-800 hover:bg-gray-700 text-white text-xs font-medium px-3 py-2 rounded-lg whitespace-nowrap"
            >
              Set Burst
            </button>
            <button
              onClick={bulkForceSync}
              disabled={bulkLoading}
              className="bg-gray-800 hover:bg-gray-700 text-white text-xs font-medium px-3 py-2 rounded-lg whitespace-nowrap"
            >
              Force Sync
            </button>
            <button
              onClick={() => bulkPublish(true)}
              disabled={bulkLoading}
              className="bg-green-700 hover:bg-green-600 text-white text-xs font-medium px-3 py-2 rounded-lg whitespace-nowrap"
            >
              Publish All
            </button>
            <button
              onClick={() => bulkPublish(false)}
              disabled={bulkLoading}
              className="bg-red-700/60 hover:bg-red-700 text-white text-xs font-medium px-3 py-2 rounded-lg whitespace-nowrap"
            >
              Unpublish
            </button>
          </div>
        </div>
      )}

      {/* Schedule Modal */}
      {showScheduleModal && (
        <div
          className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4"
          onClick={() => setShowScheduleModal(false)}
        >
          <div
            className="bg-gray-900 border border-gray-700 rounded-xl p-6 w-full max-w-sm"
            onClick={(e) => e.stopPropagation()}
          >
            <h3 className="text-lg font-bold mb-4">
              Set Schedule ({selected.size} screens)
            </h3>

            <label className="block text-sm text-gray-400 mb-1">Turn ON at</label>
            <input
              type="time"
              value={bulkOnTime}
              onChange={(e) => setBulkOnTime(e.target.value)}
              className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white mb-3"
            />

            <label className="block text-sm text-gray-400 mb-1">Turn OFF at</label>
            <input
              type="time"
              value={bulkOffTime}
              onChange={(e) => setBulkOffTime(e.target.value)}
              className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white mb-3"
            />

            <label className="block text-sm text-gray-400 mb-1">When off</label>
            <select
              value={bulkOffMode}
              onChange={(e) => setBulkOffMode(e.target.value)}
              className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white mb-4"
            >
              <option value="dim">Dim screen</option>
              <option value="reboot">Reboot device</option>
            </select>

            <div className="flex gap-3">
              <button
                onClick={() => setShowScheduleModal(false)}
                className="flex-1 bg-gray-800 hover:bg-gray-700 text-white py-2.5 rounded-lg text-sm"
              >
                Cancel
              </button>
              <button
                onClick={applyBulkSchedule}
                disabled={bulkLoading}
                className="flex-1 bg-orange-500 hover:bg-orange-600 disabled:opacity-50 text-white py-2.5 rounded-lg text-sm font-bold"
              >
                {bulkLoading ? "Applying..." : "Apply"}
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Network Modal */}
      {showNetworkModal && (
        <div
          className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4"
          onClick={() => setShowNetworkModal(false)}
        >
          <div
            className="bg-gray-900 border border-gray-700 rounded-xl p-6 w-full max-w-lg max-h-[80vh] overflow-y-auto"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="flex items-center justify-between mb-4">
              <h3 className="text-lg font-bold">Screen Network</h3>
              <button
                onClick={() => setShowNetworkModal(false)}
                className="text-gray-500 hover:text-white text-xl"
              >
                &times;
              </button>
            </div>
            <p className="text-xs text-gray-500 mb-4">
              Run <code className="bg-gray-800 px-1.5 py-0.5 rounded text-orange-400">python3 cnc-solutions/discover_screens.py</code> to scan &amp; update
            </p>
            <div className="space-y-2">
              {screens.map((s) => (
                <div
                  key={s._id}
                  className={`flex items-center justify-between p-3 rounded-lg border ${
                    s.deviceIp
                      ? "border-green-800 bg-green-900/20"
                      : "border-gray-800 bg-gray-800/30"
                  }`}
                >
                  <div className="flex items-center gap-3">
                    <div
                      className={`w-2 h-2 rounded-full ${
                        s.deviceIp ? "bg-green-500" : "bg-gray-600"
                      }`}
                    />
                    <div>
                      <span className="text-sm font-medium">
                        #{s._id} {s.name}
                      </span>
                    </div>
                  </div>
                  <div className="text-right">
                    {s.deviceIp ? (
                      <>
                        <div className="text-sm font-mono text-green-400">
                          {s.deviceIp}:5555
                        </div>
                        <div className="text-[10px] text-gray-500">
                          {s.lastSeenAt
                            ? `Seen ${new Date(s.lastSeenAt).toLocaleString()}`
                            : ""}
                        </div>
                      </>
                    ) : (
                      <span className="text-xs text-gray-600">No IP</span>
                    )}
                  </div>
                </div>
              ))}
            </div>
            <div className="mt-4 pt-3 border-t border-gray-800 flex items-center justify-between">
              <span className="text-xs text-gray-500">
                {screens.filter((s) => s.deviceIp).length} / {screens.length} online
              </span>
              <button
                onClick={() => setShowNetworkModal(false)}
                className="bg-gray-800 hover:bg-gray-700 text-white text-sm px-4 py-2 rounded-lg"
              >
                Close
              </button>
            </div>
          </div>
        </div>
      )}

      {/* Burst Modal */}
      {showBurstModal && (
        <div
          className="fixed inset-0 bg-black/80 flex items-center justify-center z-50 p-4"
          onClick={() => setShowBurstModal(false)}
        >
          <div
            className="bg-gray-900 border border-gray-700 rounded-xl p-6 w-full max-w-sm"
            onClick={(e) => e.stopPropagation()}
          >
            <h3 className="text-lg font-bold mb-4">
              Set Burst ({selected.size} screens)
            </h3>

            <div className="flex items-center justify-between mb-4">
              <span className="text-sm text-gray-300">Burst enabled</span>
              <button
                onClick={() => setBulkBurstEnabled(!bulkBurstEnabled)}
                className={`relative inline-flex h-7 w-12 items-center rounded-full transition-colors ${
                  bulkBurstEnabled ? "bg-orange-500" : "bg-gray-700"
                }`}
              >
                <span
                  className={`inline-block h-5 w-5 transform rounded-full bg-white transition-transform ${
                    bulkBurstEnabled ? "translate-x-6" : "translate-x-1"
                  }`}
                />
              </button>
            </div>

            {bulkBurstEnabled && (
              <>
                <label className="block text-sm text-gray-400 mb-1">
                  Every (minutes)
                </label>
                <input
                  type="number"
                  min="1"
                  max="60"
                  value={bulkBurstInterval}
                  onChange={(e) =>
                    setBulkBurstInterval(
                      Math.max(1, Math.min(60, Number(e.target.value)))
                    )
                  }
                  className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white mb-1"
                />
                <p className="text-xs text-gray-600 mb-3">
                  {bulkBurstInterval === 1
                    ? "60 bursts/hour"
                    : `${Math.floor(60 / bulkBurstInterval)} bursts/hour`}
                </p>

                <label className="block text-sm text-gray-400 mb-1">
                  Show for (seconds)
                </label>
                <input
                  type="number"
                  min="3"
                  max="120"
                  value={bulkBurstDuration}
                  onChange={(e) =>
                    setBulkBurstDuration(
                      Math.max(3, Math.min(120, Number(e.target.value)))
                    )
                  }
                  className="w-full p-3 bg-gray-800 border border-gray-700 rounded-lg text-white mb-4"
                />
              </>
            )}

            <div className="flex gap-3">
              <button
                onClick={() => setShowBurstModal(false)}
                className="flex-1 bg-gray-800 hover:bg-gray-700 text-white py-2.5 rounded-lg text-sm"
              >
                Cancel
              </button>
              <button
                onClick={applyBulkBurst}
                disabled={bulkLoading}
                className="flex-1 bg-orange-500 hover:bg-orange-600 disabled:opacity-50 text-white py-2.5 rounded-lg text-sm font-bold"
              >
                {bulkLoading ? "Applying..." : "Apply"}
              </button>
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
