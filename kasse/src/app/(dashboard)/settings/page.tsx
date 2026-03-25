"use client";

import { useState } from "react";
import { formatDKK, toDateStr } from "@/lib/denominations";

type Backup = {
  _id: string;
  originalDate: string;
  restaurant: string;
  reason: string;
  createdAt: string;
  snapshot: any;
};

export default function SettingsPage() {
  const [date, setDate] = useState(toDateStr(new Date()));
  const [backups, setBackups] = useState<Backup[]>([]);
  const [loading, setLoading] = useState(false);
  const [error, setError] = useState("");
  const [restoring, setRestoring] = useState<string | null>(null);
  const [message, setMessage] = useState("");
  const [confirmId, setConfirmId] = useState<string | null>(null);

  async function fetchBackups() {
    setLoading(true);
    setError("");
    setMessage("");
    setBackups([]);
    try {
      const res = await fetch(`/api/backups?date=${date}&restaurant=cnc`);
      if (!res.ok) {
        const d = await res.json();
        setError(d.error || "Could not load backups.");
        return;
      }
      const data = await res.json();
      setBackups(data);
      if (data.length === 0) {
        setMessage("No backups found for this date.");
      }
    } catch {
      setError("Network error.");
    } finally {
      setLoading(false);
    }
  }

  async function handleRestore(backupId: string) {
    setRestoring(backupId);
    setError("");
    setMessage("");
    try {
      const res = await fetch("/api/backups/restore", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ backupId }),
      });
      if (!res.ok) {
        const d = await res.json();
        setError(d.error || "Restore failed.");
      } else {
        setMessage("Restored successfully. The previous version was backed up first.");
        // Refresh the list
        fetchBackups();
      }
    } catch {
      setError("Network error.");
    } finally {
      setRestoring(null);
      setConfirmId(null);
    }
  }

  function formatTime(iso: string) {
    const d = new Date(iso);
    return d.toLocaleString("da-DK", {
      day: "numeric",
      month: "short",
      year: "numeric",
      hour: "2-digit",
      minute: "2-digit",
    });
  }

  function reasonLabel(r: string) {
    if (r === "edit-overwrite") return "Before edit";
    if (r === "auto-save") return "Auto-save";
    if (r === "manual") return "Manual";
    return r;
  }

  return (
    <div className="max-w-lg mx-auto p-5">
      <h1 className="text-xl font-bold text-gray-800 mb-1">Settings</h1>
      <p className="text-sm text-gray-400 mb-6">Manage backups and restore old data.</p>

      {/* Backup / Restore section */}
      <div className="bg-white rounded-2xl border p-5">
        <h2 className="text-sm font-bold text-gray-700 mb-3">Backup &amp; Restore</h2>
        <p className="text-xs text-gray-400 mb-4">
          Every time you edit a day, the old version is saved automatically.
          You can view and restore those backups here.
        </p>

        <div className="flex gap-2 mb-4">
          <input
            type="date"
            value={date}
            onChange={(e) => setDate(e.target.value)}
            className="flex-1 px-3 py-2.5 border rounded-xl text-sm focus:outline-none focus:border-brand"
          />
          <button
            onClick={fetchBackups}
            disabled={loading}
            className="px-5 py-2.5 bg-brand text-white rounded-xl text-sm font-bold disabled:opacity-50"
          >
            {loading ? "Loading..." : "Find Backups"}
          </button>
        </div>

        {error && (
          <div className="mb-3 px-3 py-2 bg-red-50 border border-red-200 rounded-xl">
            <p className="text-sm text-red-600">{error}</p>
          </div>
        )}
        {message && (
          <div className="mb-3 px-3 py-2 bg-green-50 border border-green-200 rounded-xl">
            <p className="text-sm text-green-700">{message}</p>
          </div>
        )}

        {backups.length > 0 && (
          <div className="space-y-2">
            {backups.map((b) => {
              const snap = b.snapshot || {};
              const totalSales =
                (snap.posCash || 0) +
                (snap.posCard || 0) +
                (snap.kioskSales || 0) +
                (snap.onlineSales || 0);
              return (
                <div
                  key={b._id}
                  className="border rounded-xl p-3 flex flex-col sm:flex-row sm:items-center gap-2"
                >
                  <div className="flex-1 min-w-0">
                    <p className="text-sm font-semibold text-gray-700">
                      {formatTime(b.createdAt)}
                    </p>
                    <p className="text-xs text-gray-400">
                      {reasonLabel(b.reason)} &middot; Sales: {formatDKK(totalSales)} &middot; Morning: {formatDKK(snap.morningCash || 0)} &middot; Evening: {formatDKK(snap.eveningCash || 0)}
                    </p>
                  </div>
                  {confirmId === b._id ? (
                    <div className="flex gap-2 flex-shrink-0">
                      <button
                        onClick={() => handleRestore(b._id)}
                        disabled={restoring === b._id}
                        className="px-3 py-1.5 bg-red-500 text-white rounded-lg text-xs font-bold disabled:opacity-50"
                      >
                        {restoring === b._id ? "Restoring..." : "Yes, restore"}
                      </button>
                      <button
                        onClick={() => setConfirmId(null)}
                        className="px-3 py-1.5 bg-gray-100 text-gray-600 rounded-lg text-xs font-medium"
                      >
                        Cancel
                      </button>
                    </div>
                  ) : (
                    <button
                      onClick={() => setConfirmId(b._id)}
                      className="px-4 py-1.5 bg-brand-50 text-brand rounded-lg text-xs font-bold flex-shrink-0 hover:bg-brand-100"
                    >
                      Restore
                    </button>
                  )}
                </div>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
