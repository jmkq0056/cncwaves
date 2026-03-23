"use client";

import { useState } from "react";
import Link from "next/link";

export default function VacationRequestPage() {
  const [name, setName] = useState("");
  const [selectedWeeks, setSelectedWeeks] = useState<Set<number>>(new Set());
  const [submitting, setSubmitting] = useState(false);
  const [submitted, setSubmitted] = useState(false);
  const [error, setError] = useState("");
  const year = new Date().getFullYear();

  function toggleWeek(w: number) {
    setSelectedWeeks((prev) => {
      const next = new Set(prev);
      if (next.has(w)) next.delete(w);
      else next.add(w);
      return next;
    });
  }

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    if (!name.trim() || selectedWeeks.size === 0) {
      setError("Enter your name and select at least one week");
      return;
    }
    setSubmitting(true);
    setError("");

    const weeks: Record<string, string> = {};
    for (const w of selectedWeeks) weeks[String(w)] = "requested";

    const res = await fetch("/api/vacations", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ employeeName: name.trim(), year, weeks }),
    });

    if (res.ok) {
      setSubmitted(true);
    } else {
      const data = await res.json();
      setError(data.error || "Failed to submit");
    }
    setSubmitting(false);
  }

  if (submitted) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center px-4">
        <div className="text-center max-w-sm">
          <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-4">
            <svg className="w-8 h-8 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
            </svg>
          </div>
          <h2 className="text-xl font-bold text-gray-800 mb-2">Request Submitted!</h2>
          <p className="text-gray-500 text-sm mb-6">
            Your vacation request for {selectedWeeks.size} week(s) has been sent for approval.
          </p>
          <Link href="/forms" className="px-4 py-2 bg-gray-200 rounded text-sm hover:bg-gray-300">
            Back to Forms
          </Link>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-screen bg-gray-50">
      <div className="max-w-2xl mx-auto px-4 py-8">
        <Link href="/forms" className="text-brand text-sm hover:text-brand-700 mb-2 inline-block">
          &larr; All Forms
        </Link>
        <h1 className="text-xl font-bold text-gray-800">Vacation Schedule {year}</h1>
        <p className="text-gray-500 text-sm mb-1">Select the weeks you want vacation. Yellow = requested, Green = approved by admin.</p>
        <p className="text-xs text-gray-400 mb-4">Deadline is January 1st.</p>

        <form onSubmit={handleSubmit}>
          <div className="bg-white rounded-lg shadow p-5 mb-4">
            <label className="block text-sm font-medium text-gray-700 mb-1">
              Employee Name <span className="text-red-400">*</span>
            </label>
            <input
              value={name}
              onChange={(e) => setName(e.target.value)}
              className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-1 focus:ring-brand mb-4"
              placeholder="Your full name"
              required
            />

            <p className="text-sm font-medium text-gray-700 mb-2">
              Select weeks <span className="text-gray-400">({selectedWeeks.size} selected)</span>
            </p>
            <div className="grid grid-cols-10 sm:grid-cols-13 gap-1">
              {Array.from({ length: 53 }, (_, i) => i + 1).map((w) => (
                <button
                  key={w}
                  type="button"
                  onClick={() => toggleWeek(w)}
                  className={`w-full aspect-square rounded text-xs font-medium transition-colors ${
                    selectedWeeks.has(w)
                      ? "bg-yellow-400 text-yellow-900"
                      : "bg-gray-100 text-gray-500 hover:bg-gray-200"
                  }`}
                >
                  {w}
                </button>
              ))}
            </div>
          </div>

          {error && (
            <div className="text-red-600 text-sm bg-red-50 rounded px-3 py-2 mb-4">{error}</div>
          )}

          <button
            type="submit"
            disabled={submitting}
            className="w-full py-2.5 bg-brand text-white rounded-lg hover:bg-brand-700 disabled:opacity-50 font-medium text-sm"
          >
            {submitting ? "Submitting..." : "Submit Vacation Request"}
          </button>
        </form>
      </div>
    </div>
  );
}
