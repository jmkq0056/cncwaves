"use client";

import { useEffect, useState } from "react";

type VacationRecord = {
  _id: string;
  employeeName: string;
  year: number;
  weeks: Record<string, string>;
};

type Selection = { employee: string; week: number };
type UndoAction = { employee: string; weeks: Record<string, string> }[];

export default function VacationsPage() {
  const [records, setRecords] = useState<VacationRecord[]>([]);
  const [loading, setLoading] = useState(true);
  const [selected, setSelected] = useState<Selection[]>([]);
  const [applying, setApplying] = useState(false);
  const [undo, setUndo] = useState<UndoAction | null>(null);
  const year = new Date().getFullYear();

  useEffect(() => { loadData(); }, []);

  async function loadData() {
    setLoading(true);
    const res = await fetch(`/api/vacations?year=${year}`);
    if (res.ok) setRecords(await res.json());
    setLoading(false);
  }

  function toggleSelect(employee: string, week: number) {
    setSelected((prev) => {
      const exists = prev.find((s) => s.employee === employee && s.week === week);
      if (exists) return prev.filter((s) => !(s.employee === employee && s.week === week));
      return [...prev, { employee, week }];
    });
  }

  function isSelected(employee: string, week: number) {
    return selected.some((s) => s.employee === employee && s.week === week);
  }

  async function applyAction(action: "approved" | "requested" | "") {
    if (selected.length === 0) return;
    setApplying(true);

    // Save current state for undo
    const undoData: UndoAction = [];
    const grouped: Record<string, Record<string, string>> = {};

    for (const sel of selected) {
      if (!grouped[sel.employee]) grouped[sel.employee] = {};
      // Save old value for undo
      const record = records.find((r) => r.employeeName === sel.employee);
      const oldVal = record?.weeks[String(sel.week)] || "";

      const existing = undoData.find((u) => u.employee === sel.employee);
      if (existing) {
        existing.weeks[String(sel.week)] = oldVal;
      } else {
        undoData.push({ employee: sel.employee, weeks: { [String(sel.week)]: oldVal } });
      }

      grouped[sel.employee][String(sel.week)] = action;
    }

    // Apply all changes
    for (const [employee, weeks] of Object.entries(grouped)) {
      await fetch("/api/vacations", {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ employeeName: employee, year, weeks }),
      });
    }

    setUndo(undoData);
    setSelected([]);
    await loadData();
    setApplying(false);

    // Auto-hide undo after 8 seconds
    setTimeout(() => setUndo(null), 8000);
  }

  async function handleUndo() {
    if (!undo) return;
    for (const item of undo) {
      await fetch("/api/vacations", {
        method: "PUT",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ employeeName: item.employee, year, weeks: item.weeks }),
      });
    }
    setUndo(null);
    loadData();
  }

  const totalRequested = records.reduce((s, r) => s + Object.values(r.weeks).filter((v) => v === "requested").length, 0);
  const totalApproved = records.reduce((s, r) => s + Object.values(r.weeks).filter((v) => v === "approved").length, 0);

  return (
    <div className="p-6">
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-xl font-bold text-gray-800">Vacation Schedule {year}</h1>
        <div className="flex gap-4 text-sm">
          <span className="flex items-center gap-1">
            <span className="w-3 h-3 rounded bg-yellow-400 inline-block" /> {totalRequested} requested
          </span>
          <span className="flex items-center gap-1">
            <span className="w-3 h-3 rounded bg-green-500 inline-block" /> {totalApproved} approved
          </span>
        </div>
      </div>

      <p className="text-xs text-gray-400 mb-4">Click cells to select, then choose an action below.</p>

      <div className="bg-white rounded-lg shadow overflow-auto">
        {loading ? (
          <p className="p-8 text-center text-gray-400">Loading...</p>
        ) : records.length === 0 ? (
          <p className="p-8 text-center text-gray-400">No vacation requests yet</p>
        ) : (
          <table className="text-xs border-collapse">
            <thead>
              <tr>
                <th className="sticky left-0 bg-gray-700 text-white px-3 py-2 text-left min-w-[140px] z-10">Employee</th>
                {Array.from({ length: 53 }, (_, i) => (
                  <th key={i} className="bg-gray-700 text-white px-1 py-2 text-center min-w-[28px]">{i + 1}</th>
                ))}
              </tr>
            </thead>
            <tbody>
              {records.map((r) => (
                <tr key={r._id} className="border-b">
                  <td className="sticky left-0 bg-white px-3 py-2 font-medium border-r z-10">{r.employeeName}</td>
                  {Array.from({ length: 53 }, (_, i) => {
                    const week = i + 1;
                    const status = r.weeks[String(week)] || "";
                    const sel = isSelected(r.employeeName, week);
                    return (
                      <td key={week} className="px-0 py-0 text-center border-r border-gray-100">
                        <button
                          onClick={() => toggleSelect(r.employeeName, week)}
                          className={`w-full h-7 transition-all ${
                            sel
                              ? "ring-2 ring-brand ring-inset bg-brand/20"
                              : status === "approved"
                              ? "bg-green-400 hover:bg-green-500"
                              : status === "requested"
                              ? "bg-yellow-300 hover:bg-yellow-400"
                              : "hover:bg-gray-100"
                          }`}
                          title={`Week ${week}: ${status || "empty"}${sel ? " (selected)" : ""}`}
                        />
                      </td>
                    );
                  })}
                </tr>
              ))}
            </tbody>
          </table>
        )}
      </div>

      {/* Action bar — shows when cells are selected */}
      {selected.length > 0 && (
        <div className="sticky bottom-4 mt-4 bg-white rounded-xl shadow-xl border p-3 flex items-center justify-between gap-3 z-20">
          <span className="text-sm font-medium text-gray-700">
            {selected.length} week{selected.length > 1 ? "s" : ""} selected
          </span>
          <div className="flex gap-2">
            <button
              onClick={() => applyAction("approved")}
              disabled={applying}
              className="px-4 py-2 bg-green-500 text-white rounded-lg text-sm font-medium hover:bg-green-600 disabled:opacity-50"
            >
              Approve
            </button>
            <button
              onClick={() => applyAction("requested")}
              disabled={applying}
              className="px-4 py-2 bg-yellow-400 text-yellow-900 rounded-lg text-sm font-medium hover:bg-yellow-500 disabled:opacity-50"
            >
              Requested
            </button>
            <button
              onClick={() => applyAction("")}
              disabled={applying}
              className="px-4 py-2 bg-gray-200 text-gray-600 rounded-lg text-sm font-medium hover:bg-gray-300 disabled:opacity-50"
            >
              Clear
            </button>
            <button
              onClick={() => setSelected([])}
              className="px-3 py-2 text-gray-400 text-sm hover:text-gray-600"
            >
              Cancel
            </button>
          </div>
        </div>
      )}

      {/* Undo toast */}
      {undo && (
        <div className="fixed bottom-6 left-1/2 -translate-x-1/2 bg-gray-800 text-white px-4 py-3 rounded-xl shadow-xl flex items-center gap-3 z-50">
          <span className="text-sm">Action applied</span>
          <button
            onClick={handleUndo}
            className="px-3 py-1 bg-white text-gray-800 rounded-lg text-sm font-bold hover:bg-gray-100"
          >
            Undo
          </button>
          <button onClick={() => setUndo(null)} className="text-gray-400 hover:text-white ml-1">
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
      )}
    </div>
  );
}
