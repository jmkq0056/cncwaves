"use client";

import { useEffect, useState, useMemo, Suspense } from "react";
import { useSearchParams, useRouter } from "next/navigation";
import { DENOMINATIONS, computeCoinTotal, computeTotalSales, formatDKK, toDateStr, getMissingDays } from "@/lib/denominations";

type FormData = {
  date: string;
  employeeName: string;
  denominations: Record<string, number>;
  purchases: number;
  onlineSales: number;
  posCash: number;
  posCard: number;
  kioskSales: number;
  morningCash: number;
  eveningCash: number;
};

const EMPTY: FormData = {
  date: toDateStr(new Date()),
  employeeName: "",
  denominations: Object.fromEntries(DENOMINATIONS.map((d) => [d.key, 0])),
  purchases: 0,
  onlineSales: 0,
  posCash: 0,
  posCard: 0,
  kioskSales: 0,
  morningCash: 0,
  eveningCash: 0,
};

const STEPS = ["Date", "Coins & Bills", "Sales", "Register", "Review"];

export default function EntryPage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center h-full"><div className="w-6 h-6 border-2 border-brand border-t-transparent rounded-full animate-spin" /></div>}>
      <EntryForm />
    </Suspense>
  );
}

function EntryForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [step, setStep] = useState(0);
  const [form, setForm] = useState<FormData>({ ...EMPTY });
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState("");
  const [missingDays, setMissingDays] = useState<string[]>([]);
  const [isEdit, setIsEdit] = useState(false);

  // Load existing entry if date param or detect missing days
  useEffect(() => {
    const dateParam = searchParams.get("date");
    if (dateParam) {
      setForm((f) => ({ ...f, date: dateParam }));
      fetch(`/api/entries/${dateParam}`)
        .then((r) => (r.ok ? r.json() : null))
        .then((data) => {
          if (data && !data.error) {
            setForm({
              date: data.date,
              employeeName: data.employeeName || "",
              denominations: data.denominations || EMPTY.denominations,
              purchases: data.purchases || 0,
              onlineSales: data.onlineSales || 0,
              posCash: data.posCash || 0,
              posCard: data.posCard || 0,
              kioskSales: data.kioskSales || 0,
              morningCash: data.morningCash || 0,
              eveningCash: data.eveningCash || 0,
            });
            setIsEdit(true);
          }
        })
        .catch(() => {});
    }

    // Find missing days (last 14 days)
    const to = toDateStr(new Date());
    const fromDate = new Date();
    fromDate.setDate(fromDate.getDate() - 14);
    const from = toDateStr(fromDate);
    fetch(`/api/entries?from=${from}&to=${to}`)
      .then((r) => r.json())
      .then((entries) => {
        const missing = getMissingDays(entries, from, to);
        setMissingDays(missing);
      })
      .catch(() => {});
  }, [searchParams]);

  const coinTotal = useMemo(() => computeCoinTotal(form.denominations), [form.denominations]);
  const totalSales = useMemo(() => computeTotalSales(form), [form.posCash, form.posCard, form.kioskSales, form.onlineSales]);
  const discrepancy = form.eveningCash - form.morningCash;

  function setDenom(key: string, val: number) {
    setForm((f) => ({
      ...f,
      denominations: { ...f.denominations, [key]: Math.max(0, val) },
    }));
  }

  function setField(key: keyof FormData, val: any) {
    setForm((f) => ({ ...f, [key]: val }));
  }

  async function handleSave() {
    setSaving(true);
    setError("");
    const res = await fetch("/api/entries", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(form),
    });
    if (res.ok) {
      setSaved(true);
    } else {
      const data = await res.json();
      setError(data.error || "Failed to save");
    }
    setSaving(false);
  }

  if (saved) {
    return (
      <div className="flex flex-col items-center justify-center min-h-[60vh] p-6 text-center">
        <div className="w-16 h-16 bg-green-500 rounded-full flex items-center justify-center mb-4">
          <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
          </svg>
        </div>
        <h2 className="text-xl font-bold text-gray-800 mb-1">Saved!</h2>
        <p className="text-gray-500 text-sm mb-6">{form.date} entry saved successfully</p>
        <div className="flex gap-3">
          <button
            onClick={() => { setForm({ ...EMPTY, date: toDateStr(new Date()) }); setStep(0); setSaved(false); setIsEdit(false); }}
            className="px-4 py-2 bg-gray-700 text-white rounded-lg text-sm font-medium"
          >
            New Entry
          </button>
          <button
            onClick={() => router.push("/")}
            className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg text-sm font-medium"
          >
            Dashboard
          </button>
        </div>
      </div>
    );
  }

  return (
    <div className="flex flex-col h-full">
      {/* Missing days alert */}
      {missingDays.length > 0 && step === 0 && (
        <div className="mx-4 mt-4 p-3 bg-amber-50 border border-amber-200 rounded-lg">
          <p className="text-xs font-bold text-amber-700 mb-1">
            {missingDays.length} missing {missingDays.length === 1 ? "day" : "days"}
          </p>
          <div className="flex gap-1.5 flex-wrap">
            {missingDays.slice(0, 7).map((d) => (
              <button
                key={d}
                onClick={() => { setField("date", d); }}
                className={`text-[11px] px-2 py-1 rounded-full font-medium transition-colors ${
                  form.date === d ? "bg-amber-600 text-white" : "bg-amber-100 text-amber-700 hover:bg-amber-200"
                }`}
              >
                {new Date(d + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "short" })}
              </button>
            ))}
            {missingDays.length > 7 && (
              <span className="text-[11px] text-amber-500 self-center">+{missingDays.length - 7} more</span>
            )}
          </div>
        </div>
      )}

      {/* Step indicator */}
      <div className="flex items-center justify-center gap-1.5 px-4 pt-4 pb-2">
        {STEPS.map((s, i) => (
          <button
            key={s}
            onClick={() => setStep(i)}
            className={`flex items-center gap-1 transition-colors ${
              i === step ? "text-gray-800" : i < step ? "text-green-500" : "text-gray-300"
            }`}
          >
            <span className={`w-7 h-7 rounded-full flex items-center justify-center text-xs font-bold ${
              i === step ? "bg-gray-700 text-white" : i < step ? "bg-green-100 text-green-600" : "bg-gray-100 text-gray-400"
            }`}>
              {i < step ? (
                <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
                  <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
                </svg>
              ) : i + 1}
            </span>
            <span className="text-[10px] font-medium hidden sm:inline">{s}</span>
          </button>
        ))}
      </div>

      {/* Step content */}
      <div className="flex-1 overflow-auto px-4 pb-24">
        {/* STEP 0: Date + Employee */}
        {step === 0 && (
          <div className="max-w-md mx-auto space-y-4 mt-4">
            <h2 className="text-lg font-bold text-gray-800">{isEdit ? "Edit Entry" : "New Entry"}</h2>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1.5">Date</label>
              <input
                type="date"
                value={form.date}
                onChange={(e) => setField("date", e.target.value)}
                className="w-full px-3 py-3 border rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-gray-400 bg-white"
              />
            </div>
            <div>
              <label className="block text-xs font-semibold text-gray-500 uppercase mb-1.5">Employee Name</label>
              <input
                type="text"
                value={form.employeeName}
                onChange={(e) => setField("employeeName", e.target.value)}
                placeholder="Who counted today?"
                className="w-full px-3 py-3 border rounded-lg text-sm focus:outline-none focus:ring-2 focus:ring-gray-400"
              />
            </div>
          </div>
        )}

        {/* STEP 1: Denominations */}
        {step === 1 && (
          <div className="max-w-md mx-auto mt-4">
            <h2 className="text-lg font-bold text-gray-800 mb-1">Coins & Bills</h2>
            <p className="text-xs text-gray-400 mb-4">Count each denomination in the register</p>
            <div className="space-y-2">
              {DENOMINATIONS.map((d) => {
                const count = form.denominations[d.key] || 0;
                const value = count * d.multiplier;
                return (
                  <div key={d.key} className="flex items-center gap-3 bg-white rounded-lg border p-3">
                    <span className="text-sm font-bold text-gray-700 w-16">{d.label}</span>
                    <div className="flex items-center gap-1">
                      <button
                        onClick={() => setDenom(d.key, count - 1)}
                        className="w-9 h-9 rounded-lg bg-gray-100 text-gray-600 flex items-center justify-center text-lg font-bold hover:bg-gray-200 active:bg-gray-300"
                      >
                        -
                      </button>
                      <input
                        type="text"
                        inputMode="numeric"
                        value={count || ""}
                        onChange={(e) => setDenom(d.key, parseInt(e.target.value) || 0)}
                        className="w-14 text-center py-1.5 border rounded-lg text-sm font-bold"
                      />
                      <button
                        onClick={() => setDenom(d.key, count + 1)}
                        className="w-9 h-9 rounded-lg bg-gray-100 text-gray-600 flex items-center justify-center text-lg font-bold hover:bg-gray-200 active:bg-gray-300"
                      >
                        +
                      </button>
                    </div>
                    <span className="ml-auto text-sm text-gray-500 font-medium">
                      {value > 0 ? formatDKK(value) : "—"}
                    </span>
                  </div>
                );
              })}
            </div>
            <div className="mt-4 p-3 bg-gray-700 text-white rounded-lg flex justify-between items-center">
              <span className="text-sm font-medium">Cash Total</span>
              <span className="text-lg font-bold">{formatDKK(coinTotal)}</span>
            </div>
          </div>
        )}

        {/* STEP 2: Sales Channels */}
        {step === 2 && (
          <div className="max-w-md mx-auto mt-4">
            <h2 className="text-lg font-bold text-gray-800 mb-1">Sales</h2>
            <p className="text-xs text-gray-400 mb-4">Enter sales from each channel</p>
            <div className="space-y-3">
              {([
                { key: "posCash", label: "POS Cash", icon: "💵" },
                { key: "posCard", label: "POS Credit Card", icon: "💳" },
                { key: "kioskSales", label: "KIOSK", icon: "🖥" },
                { key: "onlineSales", label: "Online", icon: "🌐" },
                { key: "purchases", label: "Purchases / Withdrawals", icon: "📦" },
              ] as const).map((ch) => (
                <div key={ch.key} className="bg-white rounded-lg border p-4">
                  <label className="block text-xs font-semibold text-gray-500 uppercase mb-2">{ch.label}</label>
                  <div className="relative">
                    <input
                      type="text"
                      inputMode="numeric"
                      value={(form[ch.key] as number) || ""}
                      onChange={(e) => setField(ch.key, parseFloat(e.target.value) || 0)}
                      placeholder="0"
                      className="w-full px-3 py-3 pr-12 border rounded-lg text-lg font-bold focus:outline-none focus:ring-2 focus:ring-gray-400"
                    />
                    <span className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 text-sm">DKK</span>
                  </div>
                </div>
              ))}
            </div>
            <div className="mt-4 p-3 bg-gray-700 text-white rounded-lg flex justify-between items-center">
              <span className="text-sm font-medium">Total Sales</span>
              <span className="text-lg font-bold">{formatDKK(totalSales)}</span>
            </div>
          </div>
        )}

        {/* STEP 3: Register Holdings */}
        {step === 3 && (
          <div className="max-w-md mx-auto mt-4">
            <h2 className="text-lg font-bold text-gray-800 mb-1">Register</h2>
            <p className="text-xs text-gray-400 mb-4">Morning opening and evening closing cash</p>
            <div className="space-y-3">
              <div className="bg-white rounded-lg border p-4">
                <label className="block text-xs font-semibold text-gray-500 uppercase mb-2">Morning Cash (Opening)</label>
                <div className="relative">
                  <input
                    type="text"
                    inputMode="numeric"
                    value={form.morningCash || ""}
                    onChange={(e) => setField("morningCash", parseFloat(e.target.value) || 0)}
                    placeholder="0"
                    className="w-full px-3 py-3 pr-12 border rounded-lg text-lg font-bold focus:outline-none focus:ring-2 focus:ring-gray-400"
                  />
                  <span className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 text-sm">DKK</span>
                </div>
              </div>
              <div className="bg-white rounded-lg border p-4">
                <label className="block text-xs font-semibold text-gray-500 uppercase mb-2">Evening Cash (Closing)</label>
                <div className="relative">
                  <input
                    type="text"
                    inputMode="numeric"
                    value={form.eveningCash || ""}
                    onChange={(e) => setField("eveningCash", parseFloat(e.target.value) || 0)}
                    placeholder="0"
                    className="w-full px-3 py-3 pr-12 border rounded-lg text-lg font-bold focus:outline-none focus:ring-2 focus:ring-gray-400"
                  />
                  <span className="absolute right-3 top-1/2 -translate-y-1/2 text-gray-400 text-sm">DKK</span>
                </div>
              </div>
            </div>
            <div className={`mt-4 p-3 rounded-lg flex justify-between items-center ${
              Math.abs(discrepancy) > 500 ? "bg-red-50 border border-red-200" : "bg-green-50 border border-green-200"
            }`}>
              <span className={`text-sm font-medium ${Math.abs(discrepancy) > 500 ? "text-red-700" : "text-green-700"}`}>
                Difference (Evening - Morning)
              </span>
              <span className={`text-lg font-bold ${discrepancy >= 0 ? "text-green-700" : "text-red-700"}`}>
                {discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}
              </span>
            </div>
          </div>
        )}

        {/* STEP 4: Review */}
        {step === 4 && (
          <div className="max-w-md mx-auto mt-4">
            <h2 className="text-lg font-bold text-gray-800 mb-4">Review</h2>

            <div className="bg-white rounded-lg border divide-y">
              <div className="p-3 flex justify-between">
                <span className="text-xs text-gray-500">Date</span>
                <span className="text-sm font-bold">{form.date}</span>
              </div>
              <div className="p-3 flex justify-between">
                <span className="text-xs text-gray-500">Employee</span>
                <span className="text-sm font-medium">{form.employeeName || "—"}</span>
              </div>
              <div className="p-3 flex justify-between">
                <span className="text-xs text-gray-500">Cash in Register</span>
                <span className="text-sm font-bold">{formatDKK(coinTotal)}</span>
              </div>
              <div className="p-3">
                <span className="text-xs text-gray-500 block mb-2">Sales Breakdown</span>
                <div className="grid grid-cols-2 gap-2 text-xs">
                  <div className="flex justify-between bg-gray-50 rounded p-2">
                    <span className="text-gray-500">POS Cash</span>
                    <span className="font-bold">{formatDKK(form.posCash)}</span>
                  </div>
                  <div className="flex justify-between bg-gray-50 rounded p-2">
                    <span className="text-gray-500">POS Card</span>
                    <span className="font-bold">{formatDKK(form.posCard)}</span>
                  </div>
                  <div className="flex justify-between bg-gray-50 rounded p-2">
                    <span className="text-gray-500">KIOSK</span>
                    <span className="font-bold">{formatDKK(form.kioskSales)}</span>
                  </div>
                  <div className="flex justify-between bg-gray-50 rounded p-2">
                    <span className="text-gray-500">Online</span>
                    <span className="font-bold">{formatDKK(form.onlineSales)}</span>
                  </div>
                </div>
              </div>
              <div className="p-3 flex justify-between">
                <span className="text-xs text-gray-500">Total Sales</span>
                <span className="text-sm font-bold text-brand">{formatDKK(totalSales)}</span>
              </div>
              <div className="p-3 flex justify-between">
                <span className="text-xs text-gray-500">Morning Cash</span>
                <span className="text-sm font-medium">{formatDKK(form.morningCash)}</span>
              </div>
              <div className="p-3 flex justify-between">
                <span className="text-xs text-gray-500">Evening Cash</span>
                <span className="text-sm font-medium">{formatDKK(form.eveningCash)}</span>
              </div>
              <div className={`p-3 flex justify-between ${Math.abs(discrepancy) > 500 ? "bg-red-50" : "bg-green-50"}`}>
                <span className="text-xs text-gray-500">Discrepancy</span>
                <span className={`text-sm font-bold ${discrepancy >= 0 ? "text-green-700" : "text-red-700"}`}>
                  {discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}
                </span>
              </div>
            </div>

            {error && (
              <p className="text-red-500 text-sm mt-3 text-center">{error}</p>
            )}
          </div>
        )}
      </div>

      {/* Fixed bottom nav */}
      <div className="fixed bottom-0 left-0 right-0 bg-white border-t px-4 py-3 flex gap-3 safe-area-bottom z-40">
        {step > 0 && (
          <button
            onClick={() => setStep(step - 1)}
            className="flex-1 py-3 bg-gray-100 text-gray-700 rounded-lg text-sm font-medium hover:bg-gray-200"
          >
            Back
          </button>
        )}
        {step < STEPS.length - 1 ? (
          <button
            onClick={() => setStep(step + 1)}
            className="flex-1 py-3 bg-gray-700 text-white rounded-lg text-sm font-bold hover:bg-gray-800"
          >
            Next
          </button>
        ) : (
          <button
            onClick={handleSave}
            disabled={saving}
            className="flex-1 py-3 bg-brand text-white rounded-lg text-sm font-bold hover:bg-brand-600 disabled:opacity-50"
          >
            {saving ? "Saving..." : isEdit ? "Update Entry" : "Save Entry"}
          </button>
        )}
      </div>
    </div>
  );
}
