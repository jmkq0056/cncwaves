"use client";

import { useEffect, useState } from "react";

type Stats = {
  overview: {
    totalSubmissions: number;
    thisWeekCount: number;
    thisMonthCount: number;
    lastMonthCount: number;
    complaintsThisWeek: number;
    complaintsLastWeek: number;
    reviewsThisMonth: number;
  };
  perFormStats: { _id: string; title: string; count: number; lastSubmission: string }[];
  compliance: { slug: string; title: string; lastSubmission: string | null; hoursAgo: number; overdue: boolean }[];
  dailyActivity: { _id: string; count: number }[];
  imageTimeline: { id: string; formTitle: string; formSlug: string; images: string[]; name: string; date: string; hour: number }[];
  dailyItemsTrend: any[];
  leftoversTrend: any[];
};

function StatCard({ label, value, sub, color }: { label: string; value: string | number; sub?: string; color?: string }) {
  return (
    <div className="bg-white rounded-lg shadow p-4">
      <p className={`text-2xl font-bold ${color || "text-gray-800"}`}>{value}</p>
      <p className="text-xs text-gray-500">{label}</p>
      {sub && <p className="text-[10px] text-gray-400 mt-0.5">{sub}</p>}
    </div>
  );
}

export default function StatsPage() {
  const [stats, setStats] = useState<Stats | null>(null);
  const [loading, setLoading] = useState(true);
  const [imageFilter, setImageFilter] = useState<string>("all");

  useEffect(() => {
    fetch("/api/stats")
      .then((r) => r.json())
      .then((d) => { setStats(d); setLoading(false); })
      .catch(() => setLoading(false));
  }, []);

  if (loading) return <div className="p-6 text-gray-400">Loading stats...</div>;
  if (!stats) return <div className="p-6 text-gray-400">Failed to load</div>;

  const { overview, perFormStats, compliance, dailyActivity, imageTimeline, dailyItemsTrend, leftoversTrend } = stats;

  const monthChange = overview.lastMonthCount > 0
    ? Math.round(((overview.thisMonthCount - overview.lastMonthCount) / overview.lastMonthCount) * 100)
    : 0;

  const maxDaily = Math.max(...dailyActivity.map((d) => d.count), 1);

  const filteredImages = imageFilter === "all"
    ? imageTimeline
    : imageTimeline.filter((i) => i.formSlug === imageFilter);

  // Group images by date
  const imagesByDate: Record<string, typeof imageTimeline> = {};
  for (const img of filteredImages) {
    const date = new Date(img.date).toLocaleDateString("da-DK");
    if (!imagesByDate[date]) imagesByDate[date] = [];
    imagesByDate[date].push(img);
  }

  return (
    <div className="p-6 space-y-6">
      <h1 className="text-xl font-bold text-gray-800">Dashboard</h1>

      {/* Overview cards */}
      <div className="grid grid-cols-2 sm:grid-cols-4 lg:grid-cols-7 gap-3">
        <StatCard label="Total Submissions" value={overview.totalSubmissions} />
        <StatCard label="This Week" value={overview.thisWeekCount} color="text-brand" />
        <StatCard
          label="This Month"
          value={overview.thisMonthCount}
          sub={monthChange !== 0 ? `${monthChange > 0 ? "+" : ""}${monthChange}% vs last month` : undefined}
        />
        <StatCard
          label="Complaints (Week)"
          value={overview.complaintsThisWeek}
          color={overview.complaintsThisWeek > overview.complaintsLastWeek ? "text-red-600" : "text-green-600"}
          sub={`Last week: ${overview.complaintsLastWeek}`}
        />
        <StatCard label="Reviews (Month)" value={overview.reviewsThisMonth} color="text-cnc-green" />
        {compliance.map((c) => (
          <StatCard
            key={c.slug}
            label={c.title}
            value={c.overdue ? "OVERDUE" : `${c.hoursAgo}h ago`}
            color={c.overdue ? "text-red-600" : "text-green-600"}
            sub={c.lastSubmission ? new Date(c.lastSubmission).toLocaleString("da-DK") : "Never"}
          />
        ))}
      </div>

      {/* Daily activity bar chart */}
      <div className="bg-white rounded-lg shadow p-4">
        <h2 className="font-medium text-sm text-gray-700 mb-3">Daily Activity (Last 30 days)</h2>
        <div className="flex items-end gap-[2px] h-24">
          {dailyActivity.map((d) => (
            <div
              key={d._id}
              className="flex-1 bg-brand/80 hover:bg-brand rounded-t transition-colors"
              style={{ height: `${(d.count / maxDaily) * 100}%`, minHeight: d.count > 0 ? "4px" : "0" }}
              title={`${d._id}: ${d.count} submissions`}
            />
          ))}
        </div>
        <div className="flex justify-between text-[9px] text-gray-400 mt-1">
          <span>{dailyActivity[0]?._id}</span>
          <span>{dailyActivity[dailyActivity.length - 1]?._id}</span>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-2 gap-6">
        {/* Per-form breakdown */}
        <div className="bg-white rounded-lg shadow">
          <div className="px-4 py-3 border-b">
            <h2 className="font-medium text-sm text-gray-700">Submissions by Form</h2>
          </div>
          <div className="divide-y">
            {perFormStats.map((s) => {
              const maxCount = perFormStats[0]?.count || 1;
              return (
                <div key={s._id} className="px-4 py-2.5 flex items-center gap-3">
                  <div className="flex-1 min-w-0">
                    <p className="text-sm font-medium text-gray-700 truncate">{s.title}</p>
                    <div className="w-full bg-gray-100 rounded-full h-1.5 mt-1">
                      <div
                        className="bg-brand h-1.5 rounded-full"
                        style={{ width: `${(s.count / maxCount) * 100}%` }}
                      />
                    </div>
                  </div>
                  <span className="text-sm font-bold text-gray-600 w-8 text-right">{s.count}</span>
                </div>
              );
            })}
            {perFormStats.length === 0 && (
              <p className="px-4 py-6 text-center text-gray-400 text-sm">No data</p>
            )}
          </div>
        </div>

        {/* Leftovers trend */}
        {leftoversTrend.length > 0 && (
          <div className="bg-white rounded-lg shadow p-4">
            <h2 className="font-medium text-sm text-gray-700 mb-3">Leftover Food Trend</h2>
            <div className="space-y-2">
              {leftoversTrend.map((s: any, i: number) => {
                const strips = parseFloat(s.data?.strips_qty) || 0;
                const hotwings = parseFloat(s.data?.hotwings_qty) || 0;
                const drumstick = parseFloat(s.data?.drumstick_qty) || 0;
                const total = strips + hotwings + drumstick;
                const date = new Date(s.createdAt).toLocaleDateString("da-DK");
                const time = new Date(s.createdAt).toLocaleTimeString("da-DK", { hour: "2-digit", minute: "2-digit" });
                return (
                  <div key={i} className="flex items-center gap-2 text-xs">
                    <span className="text-gray-400 w-16">{date}</span>
                    <span className="text-gray-400 w-10">{time}</span>
                    <div className="flex-1 flex gap-1 items-center">
                      <div className="bg-red-400 h-3 rounded" style={{ width: `${Math.min(strips * 3, 100)}%` }} title={`Strips: ${strips}`} />
                      <div className="bg-orange-400 h-3 rounded" style={{ width: `${Math.min(hotwings * 3, 100)}%` }} title={`Hotwings: ${hotwings}`} />
                      <div className="bg-yellow-400 h-3 rounded" style={{ width: `${Math.min(drumstick * 3, 100)}%` }} title={`Drumstick: ${drumstick}`} />
                    </div>
                    <span className="text-gray-600 font-medium w-8 text-right">{total}</span>
                  </div>
                );
              })}
            </div>
            <div className="flex gap-4 mt-2 text-[10px] text-gray-400">
              <span className="flex items-center gap-1"><span className="w-2 h-2 bg-red-400 rounded" />Strips</span>
              <span className="flex items-center gap-1"><span className="w-2 h-2 bg-orange-400 rounded" />Hotwings</span>
              <span className="flex items-center gap-1"><span className="w-2 h-2 bg-yellow-400 rounded" />Drumstick</span>
            </div>
          </div>
        )}
      </div>

      {/* Image Timeline */}
      <div className="bg-white rounded-lg shadow">
        <div className="px-4 py-3 border-b flex items-center justify-between">
          <h2 className="font-medium text-sm text-gray-700">Photo Timeline</h2>
          <div className="flex gap-1">
            {["all", "cleaning-report", "filter-change", "leftover-food", "machine-parts-changes"].map((f) => (
              <button
                key={f}
                onClick={() => setImageFilter(f)}
                className={`px-2 py-1 text-[10px] rounded ${
                  imageFilter === f ? "bg-brand text-white" : "bg-gray-100 text-gray-600 hover:bg-gray-200"
                }`}
              >
                {f === "all" ? "All" : f.split("-").map((w) => w[0].toUpperCase() + w.slice(1)).join(" ")}
              </button>
            ))}
          </div>
        </div>

        {Object.keys(imagesByDate).length === 0 ? (
          <p className="px-4 py-8 text-center text-gray-400 text-sm">No photos yet</p>
        ) : (
          <div className="p-4 space-y-6">
            {Object.entries(imagesByDate).map(([date, items]) => (
              <div key={date}>
                <p className="text-xs font-bold text-gray-500 mb-2">{date}</p>
                <div className="grid grid-cols-3 sm:grid-cols-4 md:grid-cols-6 gap-2">
                  {items.map((item) =>
                    item.images.map((url, j) => (
                      <a
                        key={`${item.id}-${j}`}
                        href={url}
                        target="_blank"
                        rel="noopener noreferrer"
                        className="group relative aspect-square rounded-lg overflow-hidden border hover:border-brand"
                      >
                        <img src={url} alt="" className="w-full h-full object-cover" />
                        <div className="absolute inset-0 bg-black/0 group-hover:bg-black/40 transition-colors flex items-end">
                          <div className="p-1.5 opacity-0 group-hover:opacity-100 transition-opacity w-full">
                            <p className="text-white text-[9px] font-medium truncate">{item.formTitle}</p>
                            <p className="text-white/70 text-[8px]">
                              {item.name} - {new Date(item.date).toLocaleTimeString("da-DK", { hour: "2-digit", minute: "2-digit" })}
                            </p>
                          </div>
                        </div>
                      </a>
                    ))
                  )}
                </div>
              </div>
            ))}
          </div>
        )}
      </div>
    </div>
  );
}
