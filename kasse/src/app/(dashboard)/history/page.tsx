"use client";

import { useEffect, useState } from "react";
import { useRouter } from "next/navigation";
import { computeTotalSales, formatDKK } from "@/lib/denominations";

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

export default function HistoryPage() {
  const router = useRouter();
  const [entries, setEntries] = useState<Entry[]>([]);
  const [loading, setLoading] = useState(true);
  const [month, setMonth] = useState(() => {
    const now = new Date();
    return `${now.getFullYear()}-${String(now.getMonth() + 1).padStart(2, "0")}`;
  });

  useEffect(() => {
    setLoading(true);
    const [y, m] = month.split("-").map(Number);
    const from = `${month}-01`;
    const lastDay = new Date(y, m, 0).getDate();
    const to = `${month}-${String(lastDay).padStart(2, "0")}`;

    fetch(`/api/entries?from=${from}&to=${to}`)
      .then((r) => r.json())
      .then((data) => { setEntries(data); setLoading(false); })
      .catch(() => setLoading(false));
  }, [month]);

  function prevMonth() {
    const [y, m] = month.split("-").map(Number);
    const d = new Date(y, m - 2, 1);
    setMonth(`${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}`);
  }
  function nextMonth() {
    const [y, m] = month.split("-").map(Number);
    const d = new Date(y, m, 1);
    setMonth(`${d.getFullYear()}-${String(d.getMonth() + 1).padStart(2, "0")}`);
  }

  const [y, m] = month.split("-").map(Number);
  const daysInMonth = new Date(y, m, 0).getDate();
  const firstDow = (new Date(y, m - 1, 1).getDay() + 6) % 7; // Monday = 0
  const entryMap = new Map(entries.map((e) => [e.date, e]));

  const monthTotal = entries.reduce((s, e) => s + computeTotalSales(e), 0);
  const monthLabel = new Date(y, m - 1).toLocaleDateString("da-DK", { month: "long", year: "numeric" });

  return (
    <div className="p-4 md:p-6 max-w-2xl">
      {/* Month navigation */}
      <div className="flex items-center justify-between mb-4">
        <button onClick={prevMonth} className="p-2 rounded-lg hover:bg-gray-100">
          <svg className="w-5 h-5 text-gray-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
          </svg>
        </button>
        <h1 className="text-lg font-bold text-gray-800 capitalize">{monthLabel}</h1>
        <button onClick={nextMonth} className="p-2 rounded-lg hover:bg-gray-100">
          <svg className="w-5 h-5 text-gray-600" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
          </svg>
        </button>
      </div>

      {/* Summary */}
      <div className="flex gap-3 mb-4">
        <div className="flex-1 bg-white rounded-lg border p-3">
          <p className="text-[10px] text-gray-400 uppercase font-semibold">Monthly Total</p>
          <p className="text-lg font-bold text-gray-800">{formatDKK(monthTotal)}</p>
        </div>
        <div className="flex-1 bg-white rounded-lg border p-3">
          <p className="text-[10px] text-gray-400 uppercase font-semibold">Days Filled</p>
          <p className="text-lg font-bold text-gray-800">{entries.length} / {daysInMonth}</p>
        </div>
      </div>

      {/* Calendar grid */}
      <div className="bg-white rounded-lg border p-3 mb-4">
        <div className="grid grid-cols-7 gap-1 mb-2">
          {["Ma", "Ti", "On", "To", "Fr", "Lø", "Sø"].map((d) => (
            <span key={d} className="text-center text-[10px] text-gray-400 font-semibold">{d}</span>
          ))}
        </div>
        <div className="grid grid-cols-7 gap-1">
          {Array.from({ length: firstDow }).map((_, i) => (
            <div key={`empty-${i}`} />
          ))}
          {Array.from({ length: daysInMonth }).map((_, i) => {
            const day = i + 1;
            const dateStr = `${month}-${String(day).padStart(2, "0")}`;
            const entry = entryMap.get(dateStr);
            const isToday = dateStr === new Date().toISOString().slice(0, 10);
            return (
              <button
                key={day}
                onClick={() => router.push(`/entry?date=${dateStr}`)}
                className={`aspect-square rounded-lg flex flex-col items-center justify-center text-xs transition-colors ${
                  isToday ? "ring-2 ring-brand" : ""
                } ${entry ? "bg-green-50 hover:bg-green-100" : "bg-gray-50 hover:bg-gray-100"}`}
              >
                <span className={`font-medium ${entry ? "text-green-700" : "text-gray-400"}`}>{day}</span>
                {entry && <span className="w-1.5 h-1.5 rounded-full bg-green-500 mt-0.5" />}
              </button>
            );
          })}
        </div>
      </div>

      {/* Entry list */}
      {loading ? (
        <div className="flex justify-center py-8">
          <div className="w-6 h-6 border-2 border-brand border-t-transparent rounded-full animate-spin" />
        </div>
      ) : (
        <div className="bg-white rounded-lg border">
          <div className="px-4 py-3 border-b">
            <h3 className="text-xs font-bold text-gray-500 uppercase">Entries this month</h3>
          </div>
          {entries.length === 0 ? (
            <p className="text-gray-400 text-sm text-center py-8">No entries for this month</p>
          ) : (
            <div className="divide-y">
              {entries.map((e) => {
                const total = computeTotalSales(e);
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
                    <p className="text-sm font-bold text-gray-800">{formatDKK(total)}</p>
                  </button>
                );
              })}
            </div>
          )}
        </div>
      )}
    </div>
  );
}
