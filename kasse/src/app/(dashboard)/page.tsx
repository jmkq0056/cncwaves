"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { computeTotalSales, formatDKK, toDateStr } from "@/lib/denominations";

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

// Build a timeline: entries + gap markers interleaved
type TimelineItem =
  | { type: "entry"; entry: Entry }
  | { type: "gap"; from: string; to: string; count: number };

function buildTimeline(entries: Entry[]): TimelineItem[] {
  if (entries.length === 0) return [];
  const sorted = [...entries].sort((a, b) => (b.date > a.date ? 1 : -1)); // newest first
  const items: TimelineItem[] = [];

  for (let i = 0; i < sorted.length; i++) {
    items.push({ type: "entry", entry: sorted[i] });

    if (i < sorted.length - 1) {
      const current = new Date(sorted[i].date + "T12:00:00");
      const next = new Date(sorted[i + 1].date + "T12:00:00");
      const diffDays = Math.round((current.getTime() - next.getTime()) / 86400000) - 1;
      if (diffDays > 0) {
        // Gap between these two entries
        const gapFrom = new Date(next);
        gapFrom.setDate(gapFrom.getDate() + 1);
        const gapTo = new Date(current);
        gapTo.setDate(gapTo.getDate() - 1);
        items.push({
          type: "gap",
          from: toDateStr(gapFrom),
          to: toDateStr(gapTo),
          count: diffDays,
        });
      }
    }
  }
  return items;
}

function formatRange(from: string, to: string, count: number): string {
  const opts: Intl.DateTimeFormatOptions = { day: "numeric", month: "short" };
  const f = new Date(from + "T12:00:00").toLocaleDateString("da-DK", opts);
  if (count === 1) return f;
  const t = new Date(to + "T12:00:00").toLocaleDateString("da-DK", opts);
  return `${f} — ${t}`;
}

export default function DashboardPage() {
  const router = useRouter();
  const [entries, setEntries] = useState<Entry[]>([]);
  const [stats, setStats] = useState<any>(null);
  const [loading, setLoading] = useState(true);
  const [daysSinceLast, setDaysSinceLast] = useState(0);

  useEffect(() => {
    const today = toDateStr(new Date());
    const from60 = new Date();
    from60.setDate(from60.getDate() - 60);

    Promise.all([
      fetch(`/api/entries?from=${toDateStr(from60)}&to=${today}`).then((r) => r.json()),
      fetch("/api/stats").then((r) => r.json()),
    ]).then(([recentEntries, statsData]) => {
      setEntries(recentEntries);
      setStats(statsData);
      if (recentEntries.length > 0) {
        const lastDate = recentEntries[0].date;
        const diff = Math.floor((new Date(today).getTime() - new Date(lastDate).getTime()) / 86400000);
        setDaysSinceLast(diff);
      }
      setLoading(false);
    }).catch(() => setLoading(false));
  }, []);

  if (loading) {
    return <div className="flex items-center justify-center h-full"><div className="w-6 h-6 border-2 border-brand/30 border-t-brand rounded-full animate-spin" /></div>;
  }

  const todayStr = toDateStr(new Date());
  const todayEntry = entries.find((e) => e.date === todayStr);
  const last7 = entries.slice(0, 7);
  const weekTotal = last7.reduce((s, e) => s + computeTotalSales(e), 0);
  const weekAvg = last7.length > 0 ? Math.round(weekTotal / last7.length) : 0;
  const timeline = buildTimeline(entries.slice(0, 20));

  return (
    <div className="p-4 md:p-6 max-w-2xl mx-auto">
      {/* Header */}
      <div className="flex items-center justify-between mb-5">
        <div>
          <h1 className="text-lg font-bold text-gray-800">CNC Cashbook</h1>
          <p className="text-xs text-gray-800">{new Date().toLocaleDateString("da-DK", { weekday: "long", day: "numeric", month: "long" })}</p>
        </div>
        <button onClick={() => router.push("/entry")} className="px-4 py-2.5 bg-brand text-white rounded-lg text-sm font-bold">
          New Entry
        </button>
      </div>

      {/* Missing days nudge */}
      {daysSinceLast > 0 && (
        <button
          onClick={() => router.push("/entry")}
          className="w-full mb-4 p-3 bg-brand-50 border border-brand-200 rounded-xl text-left"
        >
          <p className="text-sm font-bold text-brand">
            {daysSinceLast === 1 ? "No entry for today yet" : `${daysSinceLast} days since last entry`}
          </p>
          <p className="text-xs text-brand-400 mt-0.5">Tap to fill in</p>
        </button>
      )}

      {/* Key numbers */}
      <div className="grid grid-cols-2 gap-3 mb-5">
        <div className="bg-white rounded-xl border border-gray-100 p-4">
          <p className="text-[10px] text-gray-800 uppercase font-semibold tracking-wide">Today</p>
          <p className="text-xl font-bold text-gray-800 mt-1">{todayEntry ? formatDKK(computeTotalSales(todayEntry)) : "—"}</p>
        </div>
        <div className="bg-white rounded-xl border border-gray-100 p-4">
          <p className="text-[10px] text-gray-800 uppercase font-semibold tracking-wide">7-Day Avg</p>
          <p className="text-xl font-bold text-gray-800 mt-1">{weekAvg > 0 ? formatDKK(weekAvg) : "—"}</p>
        </div>
        <div className="bg-white rounded-xl border border-gray-100 p-4">
          <p className="text-[10px] text-gray-800 uppercase font-semibold tracking-wide">This Week</p>
          <p className="text-xl font-bold text-gray-800 mt-1">{formatDKK(weekTotal)}</p>
          <p className="text-[10px] text-gray-800">{last7.length} entries</p>
        </div>
        <div className="bg-white rounded-xl border border-gray-100 p-4">
          <p className="text-[10px] text-gray-800 uppercase font-semibold tracking-wide">All Time Avg</p>
          <p className="text-xl font-bold text-gray-800 mt-1">{stats?.avgDaily ? formatDKK(stats.avgDaily) : "—"}</p>
          <p className="text-[10px] text-gray-800">{stats?.entries || 0} entries</p>
        </div>
      </div>

      {/* Channel split */}
      {stats?.channels && stats.totalSales > 0 && (
        <div className="bg-white rounded-xl border border-gray-100 p-4 mb-5">
          <p className="text-[10px] text-gray-800 uppercase font-semibold tracking-wide mb-3">Revenue Split</p>
          {([
            { label: "KIOSK", val: stats.channels.kiosk },
            { label: "POS Card", val: stats.channels.posCard },
            { label: "Online", val: stats.channels.online },
            { label: "POS Cash", val: stats.channels.posCash },
          ]).map((ch) => {
            const pct = (ch.val / stats.totalSales) * 100;
            return (
              <div key={ch.label} className="mb-2.5 last:mb-0">
                <div className="flex justify-between text-xs mb-1">
                  <span className="text-gray-800">{ch.label}</span>
                  <span className="text-gray-800 font-semibold">{formatDKK(ch.val)} ({pct.toFixed(0)}%)</span>
                </div>
                <div className="h-2 bg-brand-50 rounded-full overflow-hidden">
                  <div className="h-full bg-brand rounded-full" style={{ width: `${pct}%` }} />
                </div>
              </div>
            );
          })}
        </div>
      )}

      {/* Timeline — entries with gap markers */}
      <div className="bg-white rounded-xl border border-gray-100">
        <div className="px-4 py-3 border-b">
          <p className="text-[10px] text-gray-800 uppercase font-semibold tracking-wide">Recent</p>
        </div>
        {timeline.length === 0 ? (
          <p className="text-gray-800 text-sm text-center py-8">No entries yet</p>
        ) : (
          <div>
            {timeline.map((item, i) => {
              if (item.type === "gap") {
                return (
                  <button
                    key={`gap-${item.from}`}
                    onClick={() => router.push(`/entry?date=${item.from}`)}
                    className="w-full flex items-center gap-3 px-4 py-2 bg-brand-50/50 border-y border-brand-100 text-left"
                  >
                    <div className="flex-shrink-0 w-8 h-8 rounded-full bg-brand-100 flex items-center justify-center">
                      <span className="text-brand text-xs font-black">{item.count}</span>
                    </div>
                    <div>
                      <p className="text-xs font-semibold text-brand">
                        {item.count === 1 ? "1 missing day" : `${item.count} missing days`}
                      </p>
                      <p className="text-[10px] text-brand-400">{formatRange(item.from, item.to, item.count)}</p>
                    </div>
                    <span className="ml-auto text-brand text-xs font-medium">Fill in</span>
                  </button>
                );
              }
              const e = item.entry;
              const total = computeTotalSales(e);
              return (
                <button key={e._id} onClick={() => router.push(`/entry?date=${e.date}`)} className="w-full flex items-center justify-between px-4 py-3 border-b border-gray-50 text-left">
                  <div>
                    <p className="text-sm font-medium text-gray-800">
                      {new Date(e.date + "T12:00:00").toLocaleDateString("da-DK", { weekday: "short", day: "numeric", month: "short" })}
                    </p>
                    <p className="text-[10px] text-gray-800">{e.employeeName || "—"}</p>
                  </div>
                  <p className="text-sm font-bold text-gray-800">{formatDKK(total)}</p>
                </button>
              );
            })}
          </div>
        )}
      </div>
    </div>
  );
}
