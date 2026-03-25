"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { computeTotalSales, formatDKK, toDateStr, getMissingDays } from "@/lib/denominations";

type Entry = {
  _id: string;
  date: string;
  employeeName: string;
  posCash: number;
  posCard: number;
  kioskSales: number;
  onlineSales: number;
  morningCash: number;
  eveningCash: number;
};

export default function DashboardPage() {
  const router = useRouter();
  const [entries, setEntries] = useState<Entry[]>([]);
  const [stats, setStats] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [missingDays, setMissingDays] = useState<string[]>([]);

  useEffect(() => {
    const today = toDateStr(new Date());
    const from30 = new Date();
    from30.setDate(from30.getDate() - 30);

    Promise.all([
      fetch(`/api/entries?from=${toDateStr(from30)}&to=${today}`).then((r) => r.json()),
      fetch("/api/stats").then((r) => r.json()),
    ]).then(([recentEntries, statsData]) => {
      setEntries(recentEntries);
      setStats(statsData);

      const from14 = new Date();
      from14.setDate(from14.getDate() - 14);
      setMissingDays(getMissingDays(recentEntries, toDateStr(from14), today));
      setLoading(false);
    }).catch(() => setLoading(false));
  }, []);

  if (loading) {
    return (
      <div className="flex items-center justify-center h-full">
        <div className="w-6 h-6 border-2 border-brand border-t-transparent rounded-full animate-spin" />
      </div>
    );
  }

  const todayStr = toDateStr(new Date());
  const todayEntry = entries.find((e) => e.date === todayStr);
  const last7 = entries.slice(0, 7);
  const weekTotal = last7.reduce((s, e) => s + computeTotalSales(e), 0);

  return (
    <div className="p-4 md:p-6 max-w-2xl">
      <div className="flex items-center justify-between mb-6">
        <h1 className="text-xl font-bold text-gray-800">Overview</h1>
        <button
          onClick={() => router.push("/entry")}
          className="px-4 py-2.5 bg-brand text-white rounded-lg text-sm font-bold hover:bg-brand-600 shadow-sm"
        >
          + New Entry
        </button>
      </div>

      {/* Missing days alert */}
      {missingDays.length > 0 && (
        <div className="mb-4 p-3 bg-amber-50 border border-amber-200 rounded-lg">
          <p className="text-xs font-bold text-amber-700 mb-1.5">
            {missingDays.length} missing {missingDays.length === 1 ? "day" : "days"} (last 14 days)
          </p>
          <div className="flex gap-1.5 flex-wrap">
            {missingDays.slice(0, 5).map((d) => (
              <button
                key={d}
                onClick={() => router.push(`/entry?date=${d}`)}
                className="text-[11px] px-2.5 py-1 rounded-full bg-amber-100 text-amber-700 hover:bg-amber-200 font-medium"
              >
                {new Date(d + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "short" })}
              </button>
            ))}
            {missingDays.length > 5 && (
              <span className="text-[11px] text-amber-500 self-center">+{missingDays.length - 5} more</span>
            )}
          </div>
        </div>
      )}

      {/* Stat cards */}
      <div className="grid grid-cols-2 gap-3 mb-6">
        <div className="bg-white rounded-lg border p-4">
          <p className="text-[10px] text-gray-400 uppercase font-semibold">Today</p>
          <p className="text-lg font-bold text-gray-800 mt-1">
            {todayEntry ? formatDKK(computeTotalSales(todayEntry)) : "—"}
          </p>
          {!todayEntry && (
            <button onClick={() => router.push("/entry")} className="text-[10px] text-brand font-medium mt-1">
              Fill in today
            </button>
          )}
        </div>
        <div className="bg-white rounded-lg border p-4">
          <p className="text-[10px] text-gray-400 uppercase font-semibold">Last 7 Days</p>
          <p className="text-lg font-bold text-gray-800 mt-1">{formatDKK(weekTotal)}</p>
          <p className="text-[10px] text-gray-400">{last7.length} entries</p>
        </div>
        <div className="bg-white rounded-lg border p-4">
          <p className="text-[10px] text-gray-400 uppercase font-semibold">Avg Daily</p>
          <p className="text-lg font-bold text-gray-800 mt-1">{stats ? formatDKK(stats.avgDaily) : "—"}</p>
        </div>
        <div className="bg-white rounded-lg border p-4">
          <p className="text-[10px] text-gray-400 uppercase font-semibold">Total Entries</p>
          <p className="text-lg font-bold text-gray-800 mt-1">{stats?.entries || 0}</p>
          {stats?.dateRange && (
            <p className="text-[10px] text-gray-400">{stats.dateRange.from} — {stats.dateRange.to}</p>
          )}
        </div>
      </div>

      {/* Channel breakdown */}
      {stats?.channels && (
        <div className="bg-white rounded-lg border p-4 mb-6">
          <h3 className="text-xs font-bold text-gray-500 uppercase mb-3">Revenue by Channel (All Time)</h3>
          <div className="space-y-2">
            {([
              { label: "KIOSK", value: stats.channels.kiosk, color: "bg-brand" },
              { label: "POS Card", value: stats.channels.posCard, color: "bg-blue-500" },
              { label: "Online", value: stats.channels.online, color: "bg-green-500" },
              { label: "POS Cash", value: stats.channels.posCash, color: "bg-gray-500" },
            ]).map((ch) => {
              const pct = stats.totalSales > 0 ? (ch.value / stats.totalSales) * 100 : 0;
              return (
                <div key={ch.label}>
                  <div className="flex justify-between text-xs mb-0.5">
                    <span className="text-gray-600 font-medium">{ch.label}</span>
                    <span className="text-gray-800 font-bold">{formatDKK(ch.value)} ({pct.toFixed(0)}%)</span>
                  </div>
                  <div className="h-2 bg-gray-100 rounded-full overflow-hidden">
                    <div className={`h-full ${ch.color} rounded-full`} style={{ width: `${pct}%` }} />
                  </div>
                </div>
              );
            })}
          </div>
        </div>
      )}

      {/* Recent entries */}
      <div className="bg-white rounded-lg border">
        <div className="px-4 py-3 border-b">
          <h3 className="text-xs font-bold text-gray-500 uppercase">Recent Entries</h3>
        </div>
        {entries.length === 0 ? (
          <p className="text-gray-400 text-sm text-center py-8">No entries yet</p>
        ) : (
          <div className="divide-y">
            {entries.slice(0, 10).map((e) => {
              const total = computeTotalSales(e);
              const disc = e.eveningCash - e.morningCash;
              return (
                <button
                  key={e._id}
                  onClick={() => router.push(`/entry?date=${e.date}`)}
                  className="w-full flex items-center justify-between px-4 py-3 hover:bg-gray-50 text-left"
                >
                  <div>
                    <p className="text-sm font-medium text-gray-800">
                      {new Date(e.date + "T12:00:00").toLocaleDateString("da-DK", { weekday: "short", day: "numeric", month: "short" })}
                    </p>
                    <p className="text-[10px] text-gray-400">{e.employeeName || "—"}</p>
                  </div>
                  <div className="text-right">
                    <p className="text-sm font-bold text-gray-800">{formatDKK(total)}</p>
                    {e.morningCash > 0 && (
                      <p className={`text-[10px] font-medium ${Math.abs(disc) > 500 ? "text-red-500" : "text-green-500"}`}>
                        {disc >= 0 ? "+" : ""}{formatDKK(disc)}
                      </p>
                    )}
                  </div>
                </button>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
