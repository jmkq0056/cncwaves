"use client";

import { useEffect, useState, useMemo, Suspense, useRef, useCallback } from "react";
import { useSearchParams, useRouter } from "next/navigation";
import { DENOMINATIONS, computeCoinTotal, computeTotalSales, formatDKK, toDateStr, todayCPH } from "@/lib/denominations";

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
  date: todayCPH(),
  employeeName: "Owner",
  denominations: Object.fromEntries(DENOMINATIONS.map((d) => [d.key, 0])),
  purchases: 0, onlineSales: 0, posCash: 0, posCard: 0, kioskSales: 0,
  morningCash: 0, eveningCash: 0,
};

const STEPS = [
  { id: "date", label: "Date", group: "Start" },
  { id: "employee", label: "Who counted", group: "Start" },
  ...DENOMINATIONS.map((d) => ({ id: `d-${d.key}`, label: d.label, group: "Cash Count" })),
  { id: "posCash", label: "POS Cash", group: "Sales" },
  { id: "posCard", label: "POS Card", group: "Sales" },
  { id: "kioskSales", label: "KIOSK", group: "Sales" },
  { id: "onlineSales", label: "Online", group: "Sales" },
  { id: "purchases", label: "Purchases", group: "Sales" },
  { id: "morningCash", label: "Morning Cash", group: "Register" },
  { id: "eveningCash", label: "Evening Cash", group: "Register" },
  { id: "review", label: "Summary", group: "Done" },
];

const GROUPS = ["Start", "Cash Count", "Sales", "Register", "Done"];

export default function EntryPage() {
  return (
    <Suspense fallback={<div className="flex items-center justify-center h-full"><div className="w-6 h-6 border-2 border-brand/30 border-t-brand rounded-full animate-spin" /></div>}>
      <EntryForm />
    </Suspense>
  );
}

/* ---------- helpers for client-side warnings ---------- */
function getReviewWarnings(form: FormData, isEdit: boolean): string[] {
  const w: string[] = [];

  // Denomination warnings
  for (const d of DENOMINATIONS) {
    const count = form.denominations[d.key] || 0;
    if (count > 200) {
      w.push(`${d.label} x ${count} seems very high — please double-check.`);
    }
  }

  const totalSales = computeTotalSales(form);
  const coinTotal = computeCoinTotal(form.denominations);
  const hasDenomData = Object.values(form.denominations).some((v) => v > 0);

  if (totalSales > 100_000) {
    w.push(`Total sales are ${formatDKK(totalSales)} — that is unusually high.`);
  }

  if (totalSales === 0 && hasDenomData) {
    w.push("Sales are 0 but cash was counted — did you forget to enter sales?");
  }

  const today = toDateStr(new Date());
  if (form.date === today && form.morningCash === 0) {
    w.push("Morning cash is 0 for today — is that correct?");
  }

  if (form.eveningCash === 0 && (hasDenomData || totalSales > 0 || form.morningCash > 0)) {
    w.push("Evening cash is 0 but other fields have data — did you forget?");
  }

  if (isEdit) {
    w.push("You are editing an existing entry — the previous version will be backed up.");
  }

  return w;
}

function getDateError(dateStr: string): string | null {
  if (!dateStr) return null;
  const d = new Date(dateStr + "T12:00:00");
  if (isNaN(d.getTime())) return "This is not a valid date.";
  const now = new Date();
  const tomorrow = new Date(now);
  tomorrow.setDate(tomorrow.getDate() + 1);
  if (dateStr > toDateStr(tomorrow)) return "You cannot pick a future date.";
  return null;
}

function getDateWarning(dateStr: string): string | null {
  if (!dateStr) return null;
  const d = new Date(dateStr + "T12:00:00");
  const now = new Date();
  const thirtyDaysAgo = new Date(now);
  thirtyDaysAgo.setDate(thirtyDaysAgo.getDate() - 30);
  if (d < thirtyDaysAgo) return "This date is more than 30 days ago — are you sure?";
  return null;
}

/** Should the numpad value show in warning color? */
function isNumpadWarning(denomInfo: (typeof DENOMINATIONS)[number] | null | undefined, value: number): boolean {
  if (denomInfo) return value > 200;
  return value > 100_000;
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
  const [menuOpen, setMenuOpen] = useState(false);
  const [serverWarnings, setServerWarnings] = useState<string[]>([]);
  const [rangeFrom, setRangeFrom] = useState("");
  const [rangeTo, setRangeTo] = useState("");
  const [rangeDays, setRangeDays] = useState(1);
  const [ready, setReady] = useState(false);
  const [singleDayMode, setSingleDayMode] = useState(false);
  const navRef = useRef<HTMLDivElement>(null);

  const step = STEPS[idx];
  const group = step.group;

  useEffect(() => {
    if (!navRef.current) return;
    const el = navRef.current.querySelector(`[data-g="${group}"]`);
    if (el) el.scrollIntoView({ behavior: "smooth", inline: "center", block: "nearest" });
  }, [group]);

  useEffect(() => {
    const today = todayCPH();
    const dp = searchParams.get("date");

    if (dp) {
      setSingleDayMode(true);
      setRangeFrom(dp);
      setRangeTo(dp);
      setRangeDays(1);
      setForm((f) => ({ ...f, date: dp }));
      fetch(`/api/entries/${dp}`)
        .then((r) => r.ok ? r.json() : null)
        .then((d) => {
          if (d && !d.error) {
            setForm({ date: d.date, employeeName: d.employeeName || "Owner", denominations: d.denominations || EMPTY.denominations, purchases: d.purchases || 0, onlineSales: d.onlineSales || 0, posCash: d.posCash || 0, posCard: d.posCard || 0, kioskSales: d.kioskSales || 0, morningCash: d.morningCash || 0, eveningCash: d.eveningCash || 0 });
            setIsEdit(true);
          }
        }).catch(() => {})
        .finally(() => setReady(true));
      return;
    }

    fetch("/api/entries?from=2020-01-01&to=2099-01-01")
      .then((r) => r.json())
      .then(async (entries: any[]) => {
        if (!entries.length) {
          setRangeFrom(today); setRangeTo(today); setRangeDays(1);
          return;
        }
        const lastEntryDate = entries[0]?.date;
        if (!lastEntryDate || lastEntryDate >= today) {
          setRangeFrom(today); setRangeTo(today); setRangeDays(1); setIsEdit(true);
          try {
            const r = await fetch(`/api/entries/${today}`);
            if (r.ok) {
              const d = await r.json();
              if (d && !d.error) {
                setForm({ date: d.date, employeeName: d.employeeName || "Owner", denominations: d.denominations || EMPTY.denominations, purchases: d.purchases || 0, onlineSales: d.onlineSales || 0, posCash: d.posCash || 0, posCard: d.posCard || 0, kioskSales: d.kioskSales || 0, morningCash: d.morningCash || 0, eveningCash: d.eveningCash || 0 });
              }
            }
          } catch {}
          return;
        }
        const dayAfter = new Date(lastEntryDate + "T12:00:00");
        dayAfter.setDate(dayAfter.getDate() + 1);
        const fromStr = toDateStr(dayAfter);
        const days = Math.round((new Date(today + "T12:00:00").getTime() - dayAfter.getTime()) / 86400000) + 1;
        setRangeFrom(fromStr); setRangeTo(today); setRangeDays(Math.max(1, days));
        setForm((f) => ({ ...f, date: today }));
      }).catch(() => {})
      .finally(() => setReady(true));
  }, [searchParams]);

  const coinTotal = useMemo(() => computeCoinTotal(form.denominations), [form.denominations]);
  const totalSales = useMemo(() => computeTotalSales(form), [form.posCash, form.posCard, form.kioskSales, form.onlineSales]);
  const discrepancy = form.eveningCash - form.morningCash;

  // Date step validation
  const dateError = step.id === "date" ? getDateError(form.date) : null;
  const dateWarning = step.id === "date" ? getDateWarning(form.date) : null;

  // Review step warnings
  const reviewWarnings = step.id === "review" ? getReviewWarnings(form, isEdit) : [];

  function setD(key: string, val: number) { setForm((f) => ({ ...f, denominations: { ...f.denominations, [key]: Math.max(0, val) } })); }
  function setF(key: keyof FormData, val: any) { setForm((f) => ({ ...f, [key]: val })); }
  const next = useCallback(() => { setIdx((i) => Math.min(i + 1, STEPS.length - 1)); setMenuOpen(false); }, []);
  const back = useCallback(() => { setIdx((i) => Math.max(i - 1, 0)); setMenuOpen(false); }, []);
  function goGroup(g: string) { const i = STEPS.findIndex((s) => s.group === g); if (i >= 0) { setIdx(i); setMenuOpen(false); } }
  function goStep(i: number) { setIdx(i); setMenuOpen(false); }

  function stepHasData(s: typeof STEPS[0]): boolean {
    if (s.id === "date") return !!form.date;
    if (s.id === "employee") return !!form.employeeName;
    if (s.id.startsWith("d-")) return (form.denominations[s.id.slice(2)] || 0) > 0;
    if (s.id === "review") return false;
    return ((form as any)[s.id] || 0) > 0;
  }

  async function handleSave() {
    setSaving(true); setError(""); setServerWarnings([]);
    try {
      const res = await fetch("/api/entries", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(form) });
      if (res.ok) {
        const data = await res.json();
        if (data.warnings && data.warnings.length > 0) {
          setServerWarnings(data.warnings);
          // Show warnings but still mark as saved
          alert("Saved, but please note:\n\n" + data.warnings.join("\n"));
        }
        setSaved(true);
      } else {
        const d = await res.json();
        setError(d.error || "Failed");
      }
    } catch {
      setError("Network error — please try again.");
    }
    setSaving(false);
  }

  /** Block Next on date step if date is invalid (future) */
  function handleNext() {
    if (step.id === "date" && dateError) return; // blocked
    next();
  }

  if (!ready) return (
    <div className="flex items-center justify-center h-full">
      <div className="w-8 h-8 border-3 border-brand/30 border-t-brand rounded-full animate-spin" />
    </div>
  );

  if (saved) return (
    <div className="flex flex-col items-center justify-center min-h-[70vh] p-8 text-center">
      <div className="w-16 h-16 bg-brand rounded-full flex items-center justify-center mb-5">
        <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>
      </div>
      <p className="text-lg font-bold text-gray-800 mb-1">Done</p>
      <p className="text-sm text-gray-800 mb-8">{rangeDays > 1 && !singleDayMode ? `${rangeFrom} — ${rangeTo} (${rangeDays} days)` : form.date} saved</p>
      <button onClick={() => { setForm({ ...EMPTY, date: toDateStr(new Date()) }); setIdx(0); setSaved(false); setIsEdit(false); setServerWarnings([]); }} className="w-full max-w-xs py-3.5 bg-brand text-white rounded-xl text-sm font-bold mb-3">Add Another Day</button>
      <button onClick={() => router.push("/")} className="w-full max-w-xs py-3.5 bg-gray-100 text-gray-600 rounded-xl text-sm font-medium">Back to Overview</button>
    </div>
  );

  const denomInfo = step.id.startsWith("d-") ? DENOMINATIONS.find((d) => `d-${d.key}` === step.id) : null;
  // For numpad: get/set the current numeric value
  const isNumpad = denomInfo || ["posCash", "posCard", "kioskSales", "onlineSales", "purchases", "morningCash", "eveningCash"].includes(step.id);
  const numVal = denomInfo ? (form.denominations[denomInfo.key] || 0) : ((form as any)[step.id] || 0);
  const numWarn = isNumpad ? isNumpadWarning(denomInfo ?? null, numVal) : false;

  function numSet(v: number) {
    if (denomInfo) setD(denomInfo.key, v);
    else setF(step.id as keyof FormData, v);
  }
  function numpadPress(key: string) {
    if (key === "C") { numSet(0); return; }
    if (key === "\u2190") { numSet(Math.floor(numVal / 10)); return; }
    const digit = parseInt(key);
    if (isNaN(digit)) return;
    numSet(numVal * 10 + digit);
  }

  return (
    <div className="flex flex-col h-full bg-white">
      {/* Top bar — current section + menu */}
      <div className="flex-shrink-0">
        <div className="flex items-center justify-between px-4 py-2.5 bg-white border-b">
          <div className="flex items-center gap-2">
            <span className="text-sm font-bold text-brand">{group}</span>
            <span className="text-[10px] text-gray-800 font-medium">{step.label}</span>
          </div>
          <button onClick={() => setMenuOpen(!menuOpen)} className="flex items-center gap-1.5 px-3 py-1.5 rounded-lg bg-brand-50 text-brand text-xs font-semibold">
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" /></svg>
            {idx + 1}/{STEPS.length}
          </button>
        </div>

        {/* Full step menu */}
        {menuOpen && (
          <>
            <div className="fixed inset-0 z-40 bg-black/20" onClick={() => setMenuOpen(false)} />
            <div className="absolute left-0 right-0 z-50 bg-white border-b shadow-xl max-h-[75vh] overflow-auto rounded-b-2xl">
              {GROUPS.filter((g) => g !== "Done").map((g) => {
                const stepsInG = STEPS.filter((s) => s.group === g);
                const filled = stepsInG.filter((s) => stepHasData(s)).length;
                return (
                  <div key={g}>
                    <div className="px-4 py-2 bg-brand-50 border-b flex items-center justify-between">
                      <span className="text-xs font-bold text-brand">{g}</span>
                      <span className="text-[10px] font-bold text-brand">{filled}/{stepsInG.length}</span>
                    </div>
                    <div className="divide-y divide-gray-50">
                      {stepsInG.map((s) => {
                        const si = STEPS.indexOf(s);
                        const isFilled = stepHasData(s);
                        const cur = si === idx;
                        return (
                          <button key={s.id} onClick={() => goStep(si)} className={`w-full flex items-center gap-3 px-4 py-2.5 text-left ${cur ? "bg-brand-50" : ""}`}>
                            <span className={`w-5 h-5 rounded-full flex items-center justify-center flex-shrink-0 ${isFilled ? "bg-brand" : cur ? "bg-brand/30" : "bg-gray-200"}`}>
                              {isFilled && <svg className="w-3 h-3 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={3}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>}
                            </span>
                            <span className={`text-sm ${cur ? "font-bold" : ""} ${isFilled ? "text-gray-900" : "text-gray-800"}`}>{s.label}</span>
                            {isFilled && s.id.startsWith("d-") && <span className="ml-auto text-xs text-gray-800">{form.denominations[s.id.slice(2)]}</span>}
                            {isFilled && !s.id.startsWith("d-") && !["date", "employee", "review"].includes(s.id) && <span className="ml-auto text-xs text-gray-800">{formatDKK((form as any)[s.id])}</span>}
                          </button>
                        );
                      })}
                    </div>
                  </div>
                );
              })}
              <button onClick={() => goStep(STEPS.length - 1)} className="w-full flex items-center gap-3 px-4 py-3 text-left border-t">
                <span className="w-5 h-5 rounded-full bg-brand flex-shrink-0" />
                <span className="text-sm font-bold text-gray-900">Go to Summary</span>
              </button>
            </div>
          </>
        )}

        <div className="h-0.5 bg-brand-50"><div className="h-full bg-brand transition-all" style={{ width: `${((idx + 1) / STEPS.length) * 100}%` }} /></div>
      </div>

      {/* === MAIN CONTENT === */}
      <div className="flex-1 flex flex-col items-center justify-center px-6 min-h-0">

        {step.id === "date" && (
          <div className="w-full max-w-sm text-center">
            {singleDayMode ? (
              <>
                <p className="text-sm text-gray-800 mb-2">Filling in for</p>
                <p className="text-2xl font-black text-brand">
                  {new Date(form.date + "T12:00:00").toLocaleDateString("da-DK", { weekday: "long", day: "numeric", month: "long" })}
                </p>
                {isEdit && <p className="text-xs text-brand-400 mt-2">Editing existing entry</p>}
              </>
            ) : rangeDays > 1 ? (
              <>
                <p className="text-sm text-gray-800 mb-2">This entry covers</p>
                <div className="bg-brand-50 border border-brand-200 rounded-2xl px-5 py-5 mb-3">
                  <p className="text-xl font-black text-brand">
                    {new Date(rangeFrom + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "short" })} — {new Date(rangeTo + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "short" })}
                  </p>
                  <p className="text-sm text-brand-600 font-semibold mt-1">{rangeDays} days</p>
                </div>
                <p className="text-xs text-gray-800">Numbers you enter will be saved for this range</p>
              </>
            ) : (
              <>
                <p className="text-sm text-gray-800 mb-2">Filling in for today</p>
                <p className="text-2xl font-black text-brand">
                  {new Date(rangeTo + "T12:00:00").toLocaleDateString("da-DK", { weekday: "long", day: "numeric", month: "long" })}
                </p>
                {isEdit && <p className="text-xs text-brand-400 mt-2">Updating today&apos;s entry</p>}
              </>
            )}
          </div>
        )}

        {step.id === "employee" && (
          <div className="w-full max-w-sm text-center">
            {form.employeeName === "Owner" || !form.employeeName ? (
              <>
                <p className="text-sm text-gray-500 mb-6">Counted by you?</p>
                <button onClick={() => { setF("employeeName", "Owner"); next(); }} className="w-full py-5 bg-brand text-white rounded-2xl text-lg font-bold mb-3">Yes, me</button>
                <button onClick={() => setF("employeeName", "")} className="w-full py-4 bg-gray-100 text-gray-500 rounded-2xl text-sm font-medium">Someone else</button>
                {form.employeeName === "" && (
                  <input type="text" value="" onChange={(e) => setF("employeeName", e.target.value)} placeholder="Type their name" autoFocus
                    className="w-full mt-4 px-4 py-5 border-2 border-brand-200 rounded-2xl text-center text-xl focus:outline-none focus:border-brand" />
                )}
              </>
            ) : (
              <>
                <p className="text-sm text-gray-500 mb-4">Who counted?</p>
                <input type="text" value={form.employeeName} onChange={(e) => setF("employeeName", e.target.value)} placeholder="Name" autoFocus
                  className="w-full px-4 py-5 border-2 border-brand-200 rounded-2xl text-center text-xl focus:outline-none focus:border-brand" />
                <button onClick={() => setF("employeeName", "Owner")} className="mt-3 text-xs text-brand underline">Actually, it was me</button>
              </>
            )}
          </div>
        )}

        {/* NUMPAD SCREEN — denominations + amount fields */}
        {isNumpad && step.id !== "date" && step.id !== "employee" && step.id !== "review" && (
          <div className="w-full max-w-sm text-center flex flex-col items-center">
            {/* Label */}
            {denomInfo ? (
              <>
                <p className="text-xs text-gray-400 mb-0.5">How many</p>
                <p className="text-2xl font-black text-brand mb-3">{denomInfo.label}</p>
              </>
            ) : (
              <p className="text-sm text-gray-500 mb-3">
                {step.id === "morningCash" ? "Morning cash" : step.id === "eveningCash" ? "Evening cash" : step.id === "purchases" ? "Purchases" : `${step.label} sales`}
              </p>
            )}

            {/* Display — orange/warning color when over threshold */}
            <div className="mb-1">
              <span className={`text-5xl font-black ${numWarn ? "text-amber-500" : "text-gray-800"}`}>{numVal || "0"}</span>
              {!denomInfo && <span className="text-xl text-gray-300 ml-1">kr</span>}
            </div>
            {denomInfo && numVal > 0 && <p className="text-sm text-brand font-semibold mb-1">= {formatDKK(numVal * denomInfo.multiplier)}</p>}
            {numWarn && (
              <p className="text-xs text-amber-600 font-medium mb-1">
                {denomInfo ? `${numVal} bills/coins seems high — double-check` : "That is an unusually large amount"}
              </p>
            )}

            {/* On-screen numpad */}
            <div className="grid grid-cols-3 gap-2 w-full max-w-[260px] mt-4">
              {["1","2","3","4","5","6","7","8","9","C","0","\u2190"].map((k) => (
                <button key={k} onClick={() => numpadPress(k)}
                  className={`h-14 rounded-xl text-xl font-bold flex items-center justify-center select-none transition-colors ${
                    k === "C" ? "bg-gray-100 text-gray-500 active:bg-gray-200"
                    : k === "\u2190" ? "bg-gray-100 text-gray-500 active:bg-gray-200"
                    : "bg-brand-50 text-brand-700 active:bg-brand-100"
                  }`}>
                  {k === "\u2190" ? (
                    <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M12 9.75L14.25 12m0 0l2.25 2.25M14.25 12l2.25-2.25M14.25 12L12 14.25m-2.58 4.92l-6.374-6.375a1.125 1.125 0 010-1.59L9.42 4.83c.21-.211.497-.33.795-.33H19.5a2.25 2.25 0 012.25 2.25v10.5a2.25 2.25 0 01-2.25 2.25h-9.284c-.298 0-.585-.119-.795-.33z" /></svg>
                  ) : k}
                </button>
              ))}
            </div>

            {/* None — skip with 0 */}
            <button onClick={() => { numSet(0); next(); }}
              className="mt-4 w-full max-w-[260px] py-3 bg-gray-100 text-gray-500 rounded-xl text-sm font-semibold active:bg-gray-200">
              None — skip
            </button>
          </div>
        )}

        {/* REVIEW — receipt style */}
        {step.id === "review" && (
          <div className="w-full max-w-sm overflow-auto -mt-4" style={{ maxHeight: "calc(100vh - 200px)" }}>
            {/* Warnings */}
            {reviewWarnings.length > 0 && (
              <div className="mb-4 rounded-xl border border-amber-200 bg-amber-50 p-3 space-y-1.5">
                {reviewWarnings.map((w, i) => (
                  <div key={i} className="flex items-start gap-2">
                    <svg className="w-4 h-4 text-amber-500 flex-shrink-0 mt-0.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M12 9v3.75m-9.303 3.376c-.866 1.5.217 3.374 1.948 3.374h14.71c1.73 0 2.813-1.874 1.948-3.374L13.949 3.378c-.866-1.5-3.032-1.5-3.898 0L2.697 16.126zM12 15.75h.007v.008H12v-.008z" /></svg>
                    <p className="text-xs text-amber-700">{w}</p>
                  </div>
                ))}
              </div>
            )}

            {/* Receipt */}
            <div className="bg-orange-50/40 border border-brand-100 rounded-2xl shadow-sm overflow-hidden" style={{ fontFamily: "'Courier New', Courier, monospace" }}>
              {/* Header */}
              <div className="bg-brand px-5 py-4 text-center">
                <p className="text-white font-bold text-sm tracking-widest uppercase">CNC Cashbook</p>
                <p className="text-white/70 text-xs mt-0.5">Daily Register Statement</p>
              </div>

              <div className="px-5 py-4">
                {/* Date & employee */}
                <div className="text-center mb-4 pb-3" style={{ borderBottom: "1px dashed #e5e7eb" }}>
                  {rangeDays > 1 && !singleDayMode ? (
                    <>
                      <p className="text-lg font-bold text-gray-800">
                        {new Date(rangeFrom + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "long" })} — {new Date(rangeTo + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "long", year: "numeric" })}
                      </p>
                      <p className="text-xs text-brand font-semibold mt-0.5">{rangeDays} days</p>
                    </>
                  ) : (
                    <p className="text-lg font-bold text-gray-800">{new Date(form.date + "T12:00:00").toLocaleDateString("da-DK", { weekday: "long", day: "numeric", month: "long", year: "numeric" })}</p>
                  )}
                  <p className="text-xs text-gray-800 mt-1">Counted by: <span className="font-medium">{form.employeeName || "—"}</span></p>
                </div>

                {/* Cash count section */}
                <button onClick={() => goStep(2)} className="w-full text-left mb-3 active:bg-brand-50 rounded-lg -mx-1 px-1">
                  <p className="text-[10px] text-brand font-bold uppercase tracking-wider mb-1.5">Cash in Register</p>
                  <div className="space-y-0.5">
                    {DENOMINATIONS.filter((d) => (form.denominations[d.key] || 0) > 0).map((d) => {
                      const cnt = form.denominations[d.key];
                      return (
                        <div key={d.key} className="flex justify-between text-xs">
                          <span className="text-gray-600">{d.label} x {cnt}</span>
                          <span className="text-gray-700 font-medium">{formatDKK(cnt * d.multiplier)}</span>
                        </div>
                      );
                    })}
                    {Object.values(form.denominations).every((v) => !v) && (
                      <p className="text-xs text-gray-300 italic">No cash counted</p>
                    )}
                  </div>
                  <div className="flex justify-between mt-2 pt-1.5 text-sm font-bold" style={{ borderTop: "1px dashed #e5e7eb" }}>
                    <span className="text-gray-600">Cash Total</span>
                    <span className="text-brand">{formatDKK(coinTotal)}</span>
                  </div>
                </button>

                {/* Sales section */}
                <button onClick={() => goGroup("Sales")} className="w-full text-left mb-3 active:bg-brand-50 rounded-lg -mx-1 px-1">
                  <p className="text-[10px] text-brand font-bold uppercase tracking-wider mb-1.5">Sales</p>
                  {([
                    { label: "POS Cash", val: form.posCash },
                    { label: "POS Card", val: form.posCard },
                    { label: "KIOSK", val: form.kioskSales },
                    { label: "Online", val: form.onlineSales },
                    { label: "Purchases", val: form.purchases },
                  ] as const).map((ch) => (
                    <div key={ch.label} className="flex justify-between text-xs mb-0.5">
                      <span className="text-gray-600">{ch.label}</span>
                      <span className={`font-medium ${ch.val > 0 ? "text-gray-700" : "text-gray-300"}`}>{ch.val > 0 ? formatDKK(ch.val) : "—"}</span>
                    </div>
                  ))}
                  <div className="flex justify-between mt-2 pt-1.5 text-sm font-bold" style={{ borderTop: "1px dashed #e5e7eb" }}>
                    <span className="text-gray-600">Sales Total</span>
                    <span className="text-brand">{formatDKK(totalSales)}</span>
                  </div>
                </button>

                {/* Register section */}
                <button onClick={() => goGroup("Register")} className="w-full text-left mb-1 active:bg-brand-50 rounded-lg -mx-1 px-1">
                  <p className="text-[10px] text-brand font-bold uppercase tracking-wider mb-1.5">Register</p>
                  <div className="flex justify-between text-xs mb-0.5">
                    <span className="text-gray-500">Morning</span>
                    <span className="text-gray-700 font-medium">{form.morningCash > 0 ? formatDKK(form.morningCash) : "—"}</span>
                  </div>
                  <div className="flex justify-between text-xs mb-0.5">
                    <span className="text-gray-500">Evening</span>
                    <span className="text-gray-700 font-medium">{form.eveningCash > 0 ? formatDKK(form.eveningCash) : "—"}</span>
                  </div>
                  <div className="flex justify-between mt-2 pt-1.5 text-sm font-bold" style={{ borderTop: "1px dashed #e5e7eb" }}>
                    <span className="text-gray-600">Difference</span>
                    <span className={discrepancy >= 0 ? "text-gray-700" : "text-red-500"}>{discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}</span>
                  </div>
                </button>
              </div>

              {/* Footer */}
              <div className="px-5 py-3 text-center" style={{ borderTop: "1px dashed #e5e7eb" }}>
                <p className="text-[10px] text-brand-300 tracking-wider">TAP ANY SECTION TO EDIT</p>
              </div>
            </div>
            {error && <p className="text-sm text-red-400 mt-3 text-center">{error}</p>}
          </div>
        )}
      </div>

      {/* Sticky running total */}
      {(group === "Cash Count" || group === "Sales") && (
        <div className="flex-shrink-0 px-4 py-2.5 bg-brand-50 border-t border-brand-100">
          <div className="flex justify-between items-center max-w-sm mx-auto">
            <span className="text-xs font-semibold text-brand-700">{group === "Cash Count" ? "Cash Total" : "Sales Total"}</span>
            <span className="text-lg font-black text-brand">{formatDKK(group === "Cash Count" ? coinTotal : totalSales)}</span>
          </div>
        </div>
      )}

      {/* Bottom nav */}
      <div className="flex-shrink-0 border-t bg-white safe-area-bottom">
        <div className="flex items-center px-4 py-3 gap-3 max-w-sm mx-auto">
          {idx > 0 ? (
            <button onClick={back} className="w-12 h-12 rounded-xl bg-gray-100 text-gray-500 flex items-center justify-center flex-shrink-0">
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" /></svg>
            </button>
          ) : <div className="w-12" />}
          {step.id === "review" ? (
            <button onClick={handleSave} disabled={saving} className="flex-1 py-3.5 bg-brand text-white rounded-xl text-sm font-bold disabled:opacity-50">
              {saving ? "Saving..." : isEdit ? "Update" : "Save"}
            </button>
          ) : (
            <button onClick={handleNext} disabled={step.id === "date" && !!dateError}
              className={`flex-1 py-3.5 rounded-xl text-sm font-bold ${
                step.id === "date" && dateError
                  ? "bg-gray-200 text-gray-400 cursor-not-allowed"
                  : "bg-brand text-white"
              }`}>
              Next
            </button>
          )}
        </div>
      </div>
    </div>
  );
}
