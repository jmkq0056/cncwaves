"use client";

import { useEffect, useState, useMemo, Suspense, useRef, useCallback } from "react";
import { useSearchParams, useRouter } from "next/navigation";
import { DENOMINATIONS, computeCoinTotal, computeTotalSales, formatDKK, toDateStr } from "@/lib/denominations";

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
  purchases: 0, onlineSales: 0, posCash: 0, posCard: 0, kioskSales: 0,
  morningCash: 0, eveningCash: 0,
};

// Every single input as its own step
const STEPS = [
  { id: "date", label: "Date", group: "Start" },
  { id: "employee", label: "Who counted?", group: "Start" },
  ...DENOMINATIONS.map((d) => ({ id: `d-${d.key}`, label: d.label, group: "Cash Count" })),
  { id: "posCash", label: "POS Cash", group: "Sales" },
  { id: "posCard", label: "POS Card", group: "Sales" },
  { id: "kioskSales", label: "KIOSK", group: "Sales" },
  { id: "onlineSales", label: "Online", group: "Sales" },
  { id: "purchases", label: "Purchases", group: "Sales" },
  { id: "morningCash", label: "Morning Cash", group: "Register" },
  { id: "eveningCash", label: "Evening Cash", group: "Register" },
  { id: "review", label: "Review", group: "Done" },
];

const GROUPS = ["Start", "Cash Count", "Sales", "Register", "Done"];

export default function EntryPage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center h-full"><div className="w-6 h-6 border-2 border-gray-300 border-t-gray-600 rounded-full animate-spin" /></div>}>
      <EntryForm />
    </Suspense>
  );
}

function EntryForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const [idx, setIdx] = useState(0);
  const [form, setForm] = useState<FormData>({ ...EMPTY });
  const [saving, setSaving] = useState(false);
  const [saved, setSaved] = useState(false);
  const [error, setError] = useState("");
  const [isEdit, setIsEdit] = useState(false);
  const [missingDays, setMissingDays] = useState<string[]>([]);
  const navRef = useRef<HTMLDivElement>(null);

  const step = STEPS[idx];
  const group = step.group;

  // Scroll nav to show current group
  useEffect(() => {
    if (!navRef.current) return;
    const el = navRef.current.querySelector(`[data-g="${group}"]`);
    if (el) el.scrollIntoView({ behavior: "smooth", inline: "center", block: "nearest" });
  }, [group]);

  // Load entry if editing, detect missing days
  useEffect(() => {
    const dp = searchParams.get("date");
    if (dp) {
      setForm((f) => ({ ...f, date: dp }));
      fetch(`/api/entries/${dp}`)
        .then((r) => r.ok ? r.json() : null)
        .then((d) => {
          if (d && !d.error) {
            setForm({
              date: d.date, employeeName: d.employeeName || "",
              denominations: d.denominations || EMPTY.denominations,
              purchases: d.purchases || 0, onlineSales: d.onlineSales || 0,
              posCash: d.posCash || 0, posCard: d.posCard || 0,
              kioskSales: d.kioskSales || 0,
              morningCash: d.morningCash || 0, eveningCash: d.eveningCash || 0,
            });
            setIsEdit(true);
          }
        }).catch(() => {});
    }
    // Missing = days after last entry up to today
    fetch("/api/entries?from=2020-01-01&to=2099-01-01")
      .then((r) => r.json())
      .then((entries: any[]) => {
        if (!entries.length) return;
        const last = entries[0]?.date;
        if (!last) return;
        const today = toDateStr(new Date());
        if (last >= today) return;
        const m: string[] = [];
        const c = new Date(last + "T12:00:00");
        c.setDate(c.getDate() + 1);
        const end = new Date(today + "T12:00:00");
        while (c <= end) { m.push(toDateStr(c)); c.setDate(c.getDate() + 1); }
        setMissingDays(m);
      }).catch(() => {});
  }, [searchParams]);

  const coinTotal = useMemo(() => computeCoinTotal(form.denominations), [form.denominations]);
  const totalSales = useMemo(() => computeTotalSales(form), [form.posCash, form.posCard, form.kioskSales, form.onlineSales]);
  const discrepancy = form.eveningCash - form.morningCash;

  function setD(key: string, val: number) {
    setForm((f) => ({ ...f, denominations: { ...f.denominations, [key]: Math.max(0, val) } }));
  }
  function setF(key: keyof FormData, val: any) {
    setForm((f) => ({ ...f, [key]: val }));
  }
  const next = useCallback(() => setIdx((i) => Math.min(i + 1, STEPS.length - 1)), []);
  const back = useCallback(() => setIdx((i) => Math.max(i - 1, 0)), []);
  function goGroup(g: string) { const i = STEPS.findIndex((s) => s.group === g); if (i >= 0) setIdx(i); }

  async function handleSave() {
    setSaving(true); setError("");
    const res = await fetch("/api/entries", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(form) });
    if (res.ok) setSaved(true);
    else { const d = await res.json(); setError(d.error || "Failed"); }
    setSaving(false);
  }

  // --- SAVED ---
  if (saved) return (
    <div className="flex flex-col items-center justify-center min-h-[70vh] p-8 text-center">
      <div className="w-16 h-16 bg-gray-700 rounded-full flex items-center justify-center mb-5">
        <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>
      </div>
      <p className="text-lg font-bold text-gray-800 mb-1">Done</p>
      <p className="text-sm text-gray-400 mb-8">{form.date} saved</p>
      <button onClick={() => { setForm({ ...EMPTY, date: toDateStr(new Date()) }); setIdx(0); setSaved(false); setIsEdit(false); }} className="w-full max-w-xs py-3.5 bg-gray-700 text-white rounded-xl text-sm font-bold mb-3">Add Another Day</button>
      <button onClick={() => router.push("/")} className="w-full max-w-xs py-3.5 bg-gray-100 text-gray-600 rounded-xl text-sm font-medium">Back to Overview</button>
    </div>
  );

  // Current denomination
  const denomInfo = step.id.startsWith("d-") ? DENOMINATIONS.find((d) => `d-${d.key}` === step.id) : null;

  return (
    <div className="flex flex-col h-full bg-white">
      {/* Top group nav */}
      <div ref={navRef} className="flex border-b overflow-x-auto flex-shrink-0" style={{ scrollbarWidth: "none" }}>
        {GROUPS.map((g) => (
          <button key={g} data-g={g} onClick={() => goGroup(g)}
            className={`flex-shrink-0 px-5 py-3 text-xs font-semibold border-b-2 transition-colors ${group === g ? "border-gray-700 text-gray-800" : "border-transparent text-gray-300"}`}>
            {g}
          </button>
        ))}
      </div>

      {/* Thin progress */}
      <div className="h-0.5 bg-gray-100 flex-shrink-0">
        <div className="h-full bg-gray-500 transition-all" style={{ width: `${((idx + 1) / STEPS.length) * 100}%` }} />
      </div>

      {/* Missing days hint */}
      {step.id === "date" && missingDays.length > 0 && (
        <div className="px-5 pt-4">
          <p className="text-xs text-gray-500 mb-2">{missingDays.length} day{missingDays.length > 1 && "s"} not filled in:</p>
          <div className="flex gap-2 flex-wrap">
            {missingDays.slice(0, 5).map((d) => (
              <button key={d} onClick={() => setF("date", d)}
                className={`text-xs px-3 py-1.5 rounded-lg font-medium ${form.date === d ? "bg-gray-700 text-white" : "bg-gray-100 text-gray-600"}`}>
                {new Date(d + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "short" })}
              </button>
            ))}
            {missingDays.length > 5 && <span className="text-xs text-gray-400 self-center">+{missingDays.length - 5}</span>}
          </div>
        </div>
      )}

      {/* === MAIN CONTENT: one field, centered, big === */}
      <div className="flex-1 flex flex-col items-center justify-center px-6">

        {/* DATE */}
        {step.id === "date" && (
          <div className="w-full max-w-sm text-center">
            <p className="text-sm text-gray-400 mb-4">What day is this for?</p>
            <input type="date" value={form.date} onChange={(e) => setF("date", e.target.value)}
              className="w-full px-4 py-5 border-2 border-gray-200 rounded-2xl text-center text-xl font-bold focus:outline-none focus:border-gray-400 bg-white" />
          </div>
        )}

        {/* EMPLOYEE */}
        {step.id === "employee" && (
          <div className="w-full max-w-sm text-center">
            <p className="text-sm text-gray-400 mb-4">Who counted the register?</p>
            <input type="text" value={form.employeeName} onChange={(e) => setF("employeeName", e.target.value)}
              placeholder="Name" autoFocus
              className="w-full px-4 py-5 border-2 border-gray-200 rounded-2xl text-center text-xl focus:outline-none focus:border-gray-400" />
          </div>
        )}

        {/* DENOMINATION — big +/- */}
        {denomInfo && (() => {
          const cnt = form.denominations[denomInfo.key] || 0;
          const val = cnt * denomInfo.multiplier;
          return (
            <div className="w-full max-w-sm text-center">
              <p className="text-sm text-gray-400 mb-1">How many</p>
              <p className="text-3xl font-black text-gray-800 mb-10">{denomInfo.label}</p>

              {/* Big counter */}
              <div className="flex items-center justify-center gap-8 mb-6">
                <button onClick={() => setD(denomInfo.key, cnt - 1)}
                  className="w-20 h-20 rounded-full bg-gray-100 text-gray-500 flex items-center justify-center text-4xl font-light active:bg-gray-200 select-none transition-colors">
                  −
                </button>
                <input type="text" inputMode="numeric" value={cnt || ""}
                  onChange={(e) => setD(denomInfo.key, parseInt(e.target.value) || 0)}
                  className="w-24 text-center text-5xl font-black border-none py-2 focus:outline-none bg-transparent text-gray-800" />
                <button onClick={() => setD(denomInfo.key, cnt + 1)}
                  className="w-20 h-20 rounded-full bg-gray-100 text-gray-500 flex items-center justify-center text-4xl font-light active:bg-gray-200 select-none transition-colors">
                  +
                </button>
              </div>

              {val > 0 && <p className="text-lg text-gray-400 font-medium">= {formatDKK(val)}</p>}
              <p className="text-xs text-gray-300 mt-6">Total so far: {formatDKK(coinTotal)}</p>
            </div>
          );
        })()}

        {/* AMOUNT FIELDS (sales + register) */}
        {["posCash", "posCard", "kioskSales", "onlineSales", "purchases", "morningCash", "eveningCash"].includes(step.id) && (
          <div className="w-full max-w-sm text-center">
            <p className="text-sm text-gray-400 mb-4">
              {step.id === "morningCash" ? "Cash in register this morning" :
               step.id === "eveningCash" ? "Cash in register tonight" :
               step.id === "purchases" ? "Any purchases or cash withdrawals?" :
               `${step.label} sales`}
            </p>
            <div className="relative">
              <input type="text" inputMode="numeric"
                value={(form[step.id as keyof FormData] as number) || ""}
                onChange={(e) => setF(step.id as keyof FormData, parseFloat(e.target.value) || 0)}
                placeholder="0" autoFocus
                className="w-full px-4 py-5 pr-16 border-2 border-gray-200 rounded-2xl text-center text-3xl font-bold focus:outline-none focus:border-gray-400" />
              <span className="absolute right-5 top-1/2 -translate-y-1/2 text-gray-300 text-sm">kr</span>
            </div>
            {step.group === "Sales" && totalSales > 0 && (
              <p className="text-xs text-gray-300 mt-6">Sales so far: {formatDKK(totalSales)}</p>
            )}
            {step.id === "eveningCash" && form.morningCash > 0 && (
              <p className="text-xs text-gray-400 mt-6">
                Morning was {formatDKK(form.morningCash)} — diff: {discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}
              </p>
            )}
          </div>
        )}

        {/* REVIEW */}
        {step.id === "review" && (
          <div className="w-full max-w-sm -mt-8">
            <p className="text-sm text-gray-400 text-center mb-5">Everything look right?</p>
            <div className="bg-gray-50 rounded-2xl divide-y divide-gray-100 text-sm">
              <button onClick={() => setIdx(0)} className="w-full px-4 py-3.5 flex justify-between items-center">
                <span className="text-gray-400 text-xs">Day</span>
                <span className="font-bold text-gray-700">{form.date}</span>
              </button>
              <button onClick={() => setIdx(1)} className="w-full px-4 py-3.5 flex justify-between items-center">
                <span className="text-gray-400 text-xs">Counted by</span>
                <span className="font-medium text-gray-700">{form.employeeName || "—"}</span>
              </button>
              <button onClick={() => setIdx(2)} className="w-full px-4 py-3.5 flex justify-between items-center">
                <span className="text-gray-400 text-xs">Cash counted</span>
                <span className="font-bold text-gray-700">{formatDKK(coinTotal)}</span>
              </button>
              <button onClick={() => goGroup("Sales")} className="w-full px-4 py-3.5">
                <div className="flex justify-between items-center mb-2">
                  <span className="text-gray-400 text-xs">Sales total</span>
                  <span className="font-bold text-gray-700">{formatDKK(totalSales)}</span>
                </div>
                <div className="grid grid-cols-2 gap-x-4 gap-y-1 text-[11px] text-gray-400">
                  <span>POS Cash: <b className="text-gray-600">{formatDKK(form.posCash)}</b></span>
                  <span>POS Card: <b className="text-gray-600">{formatDKK(form.posCard)}</b></span>
                  <span>KIOSK: <b className="text-gray-600">{formatDKK(form.kioskSales)}</b></span>
                  <span>Online: <b className="text-gray-600">{formatDKK(form.onlineSales)}</b></span>
                </div>
              </button>
              <button onClick={() => goGroup("Register")} className="w-full px-4 py-3.5">
                <div className="flex justify-between items-center mb-1">
                  <span className="text-gray-400 text-xs">Register</span>
                  <span className="font-semibold text-gray-600">{discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}</span>
                </div>
                <div className="text-[11px] text-gray-400">
                  Morning {formatDKK(form.morningCash)} / Evening {formatDKK(form.eveningCash)}
                </div>
              </button>
            </div>
            {error && <p className="text-sm text-gray-500 mt-3 text-center">{error}</p>}
          </div>
        )}
      </div>

      {/* Bottom bar */}
      <div className="flex-shrink-0 border-t bg-white safe-area-bottom">
        <div className="flex items-center px-4 py-3 gap-3 max-w-sm mx-auto">
          {idx > 0 ? (
            <button onClick={back} className="w-12 h-12 rounded-xl bg-gray-100 text-gray-500 flex items-center justify-center flex-shrink-0">
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" /></svg>
            </button>
          ) : <div className="w-12" />}

          {step.id === "review" ? (
            <button onClick={handleSave} disabled={saving}
              className="flex-1 py-3.5 bg-gray-700 text-white rounded-xl text-sm font-bold disabled:opacity-50">
              {saving ? "Saving..." : isEdit ? "Update" : "Save"}
            </button>
          ) : (
            <button onClick={next} className="flex-1 py-3.5 bg-gray-700 text-white rounded-xl text-sm font-bold">
              Next
            </button>
          )}
        </div>
      </div>
    </div>
  );
}
