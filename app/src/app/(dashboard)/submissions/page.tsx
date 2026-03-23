"use client";

import { useEffect, useState } from "react";

type Submission = {
  _id: string;
  formSlug: string;
  formTitle: string;
  data: Record<string, string>;
  createdAt: string;
};

type Stat = { _id: string; count: number; lastSubmission: string };

export default function SubmissionsPage() {
  const [submissions, setSubmissions] = useState<Submission[]>([]);
  const [stats, setStats] = useState<Stat[]>([]);
  const [total, setTotal] = useState(0);
  const [loading, setLoading] = useState(true);
  const [filterForm, setFilterForm] = useState("");
  const [selected, setSelected] = useState<Submission | null>(null);

  useEffect(() => {
    loadData();
  }, [filterForm]);

  async function loadData() {
    setLoading(true);
    const params = new URLSearchParams();
    if (filterForm) params.set("form", filterForm);
    const res = await fetch(`/api/submissions?${params}`);
    if (res.ok) {
      const data = await res.json();
      setSubmissions(data.submissions);
      setTotal(data.total);
      setStats(data.stats);
    }
    setLoading(false);
  }

  const totalSubmissions = stats.reduce((s, st) => s + st.count, 0);

  return (
    <div className="p-6">
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-xl font-bold text-gray-800">Form Submissions</h1>
        <a
          href="/forms/qr"
          target="_blank"
          className="px-3 py-2 bg-gray-700 text-white rounded text-sm hover:bg-gray-800 flex items-center gap-1.5"
        >
          <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M3.75 4.875c0-.621.504-1.125 1.125-1.125h4.5c.621 0 1.125.504 1.125 1.125v4.5c0 .621-.504 1.125-1.125 1.125h-4.5A1.125 1.125 0 013.75 9.375v-4.5zM3.75 14.625c0-.621.504-1.125 1.125-1.125h4.5c.621 0 1.125.504 1.125 1.125v4.5c0 .621-.504 1.125-1.125 1.125h-4.5a1.125 1.125 0 01-1.125-1.125v-4.5zM13.5 4.875c0-.621.504-1.125 1.125-1.125h4.5c.621 0 1.125.504 1.125 1.125v4.5c0 .621-.504 1.125-1.125 1.125h-4.5A1.125 1.125 0 0113.5 9.375v-4.5z" />
            <path strokeLinecap="round" strokeLinejoin="round" d="M6.75 6.75h.75v.75h-.75v-.75zM6.75 16.5h.75v.75h-.75v-.75zM16.5 6.75h.75v.75h-.75v-.75zM13.5 13.5h.75v.75h-.75v-.75zM13.5 19.5h.75v.75h-.75v-.75zM19.5 13.5h.75v.75h-.75v-.75zM19.5 19.5h.75v.75h-.75v-.75zM16.5 16.5h.75v.75h-.75v-.75z" />
          </svg>
          Print QR Codes
        </a>
      </div>

      {/* Stats cards */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-3 mb-6">
        <div className="bg-white rounded-lg shadow p-4">
          <p className="text-2xl font-bold text-gray-800">{totalSubmissions}</p>
          <p className="text-xs text-gray-500">Total Submissions</p>
        </div>
        <div className="bg-white rounded-lg shadow p-4">
          <p className="text-2xl font-bold text-gray-800">{stats.length}</p>
          <p className="text-xs text-gray-500">Active Forms</p>
        </div>
        {stats.slice(0, 2).map((s) => (
          <div key={s._id} className="bg-white rounded-lg shadow p-4">
            <p className="text-2xl font-bold text-blue-600">{s.count}</p>
            <p className="text-xs text-gray-500 truncate">{s._id}</p>
          </div>
        ))}
      </div>

      {/* Per-form breakdown */}
      <div className="bg-white rounded-lg shadow mb-6 overflow-hidden">
        <div className="px-4 py-3 border-b bg-gray-50">
          <h2 className="font-medium text-sm text-gray-700">Submissions by Form</h2>
        </div>
        <div className="divide-y">
          {stats.map((s) => (
            <button
              key={s._id}
              onClick={() => setFilterForm(filterForm === s._id ? "" : s._id)}
              className={`flex items-center justify-between w-full px-4 py-3 text-sm hover:bg-gray-50 transition-colors ${
                filterForm === s._id ? "bg-blue-50" : ""
              }`}
            >
              <span className="font-medium text-gray-700">{s._id}</span>
              <div className="flex items-center gap-3">
                <span className="text-xs text-gray-400">
                  Last: {new Date(s.lastSubmission).toLocaleDateString("da-DK")}
                </span>
                <span className="bg-blue-100 text-blue-700 text-xs font-bold px-2 py-0.5 rounded">
                  {s.count}
                </span>
              </div>
            </button>
          ))}
          {stats.length === 0 && !loading && (
            <p className="px-4 py-6 text-center text-gray-400 text-sm">No submissions yet</p>
          )}
        </div>
      </div>

      {/* Filter indicator */}
      {filterForm && (
        <div className="flex items-center gap-2 mb-3">
          <span className="text-sm text-gray-500">Filtered by:</span>
          <span className="bg-blue-100 text-blue-700 text-xs font-medium px-2 py-1 rounded">{filterForm}</span>
          <button onClick={() => setFilterForm("")} className="text-xs text-gray-400 hover:text-gray-600">Clear</button>
        </div>
      )}

      {/* Submissions table */}
      <div className="bg-white rounded-lg shadow overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="bg-gray-700 text-white">
              <th className="px-4 py-3 text-left">Date</th>
              <th className="px-4 py-3 text-left">Form</th>
              <th className="px-4 py-3 text-left">Summary</th>
              <th className="px-4 py-3 text-right">Action</th>
            </tr>
          </thead>
          <tbody>
            {loading && (
              <tr><td colSpan={4} className="text-center py-8 text-gray-400">Loading...</td></tr>
            )}
            {!loading && submissions.length === 0 && (
              <tr><td colSpan={4} className="text-center py-8 text-gray-400">No submissions</td></tr>
            )}
            {submissions.map((s) => {
              // Show first 2-3 non-empty values as summary
              const vals = Object.entries(s.data)
                .filter(([, v]) => v && v !== "false")
                .slice(0, 3)
                .map(([, v]) => v);
              return (
                <tr key={s._id} className="border-b hover:bg-gray-50">
                  <td className="px-4 py-3 whitespace-nowrap">
                    {new Date(s.createdAt).toLocaleString("da-DK")}
                  </td>
                  <td className="px-4 py-3">
                    <span className="bg-gray-100 text-gray-600 text-xs px-2 py-0.5 rounded">
                      {s.formTitle}
                    </span>
                  </td>
                  <td className="px-4 py-3 text-gray-500 truncate max-w-xs">
                    {vals.join(" / ")}
                  </td>
                  <td className="px-4 py-3 text-right">
                    <div className="flex gap-1 justify-end">
                      <button
                        onClick={() => setSelected(s)}
                        className="p-1.5 bg-blue-500 text-white rounded hover:bg-blue-600"
                        title="View details"
                      >
                        <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                          <path strokeLinecap="round" strokeLinejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" />
                          <path strokeLinecap="round" strokeLinejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" />
                        </svg>
                      </button>
                      <button
                        onClick={async () => {
                          if (!confirm("Delete this submission?")) return;
                          await fetch(`/api/submissions/${s._id}`, { method: "DELETE" });
                          loadData();
                        }}
                        className="p-1.5 bg-red-500 text-white rounded hover:bg-red-600"
                        title="Delete"
                      >
                        <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                          <path strokeLinecap="round" strokeLinejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" />
                        </svg>
                      </button>
                    </div>
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>
      </div>

      <p className="text-sm text-gray-500 mt-2">{total} total submissions</p>

      {/* Detail modal */}
      {selected && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-xl w-full max-w-md max-h-[80vh] overflow-auto">
            <div className="flex items-center justify-between p-4 border-b">
              <div>
                <h2 className="font-bold">{selected.formTitle}</h2>
                <p className="text-xs text-gray-400">
                  {new Date(selected.createdAt).toLocaleString("da-DK")}
                </p>
              </div>
              <button onClick={() => setSelected(null)} className="text-gray-400 hover:text-gray-600 text-xl">x</button>
            </div>
            <div className="p-4 space-y-3">
              {Object.entries(selected.data).map(([key, value]) => (
                <div key={key}>
                  <label className="block text-xs font-medium text-gray-500 uppercase tracking-wider">
                    {key.replace(/_/g, " ")}
                  </label>
                  <p className="text-sm text-gray-800 mt-0.5">{value || "-"}</p>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
