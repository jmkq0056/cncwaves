"use client";

import { useEffect, useState } from "react";

type VacationRecord = {
  _id: string;
  employeeName: string;
  year: number;
  weeks: Record<string, string>;
};

export default function VacationsPage() {
  const [records, setRecords] = useState<VacationRecord[]>([]);
  const [loading, setLoading] = useState(true);
  const year = new Date().getFullYear();

  useEffect(() => { loadData(); }, []);

  async function loadData() {
    setLoading(true);
    const res = await fetch(`/api/vacations?year=${year}`);
    if (res.ok) setRecords(await res.json());
    setLoading(false);
  }

  async function toggleWeek(employeeName: string, week: number, currentStatus: string) {
    // Cycle: requested -> approved -> "" (clear)
    let newStatus = "";
    if (currentStatus === "requested") newStatus = "approved";
    else if (currentStatus === "approved") newStatus = "";
    else newStatus = "approved";

    await fetch("/api/vacations", {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        employeeName,
        year,
        weeks: { [String(week)]: newStatus },
      }),
    });
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

      <p className="text-xs text-gray-400 mb-4">Click a yellow cell to approve, click green to revoke. Employees request via the public form.</p>

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
                    return (
                      <td key={week} className="px-0 py-0 text-center border-r border-gray-100">
                        <button
                          onClick={() => toggleWeek(r.employeeName, week, status)}
                          className={`w-full h-7 transition-colors ${
                            status === "approved"
                              ? "bg-green-400 hover:bg-green-500"
                              : status === "requested"
                              ? "bg-yellow-300 hover:bg-yellow-400"
                              : "hover:bg-gray-100"
                          }`}
                          title={`Week ${week}: ${status || "empty"}`}
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
    </div>
  );
}
