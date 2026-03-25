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
  employeeName: "Owner",
  denominations: Object.fromEntries(DENOMINATIONS.map((d) => [d.key, 0])),
  purchases: 0, onlineSales: 0, posCash: 0, posCard: 0, kioskSales: 0,
  morningCash: 0, eveningCash: 0,
};

const STEPS = [
  { id: "date", label: "Date", group: "Start", color: "bg-blue-500" },
  { id: "employee", label: "Who counted", group: "Start", color: "bg-blue-500" },
  ...DENOMINATIONS.map((d) => ({ id: `d-${d.key}`, label: d.label, group: "Cash Count", color: "bg-amber-500" })),
  { id: "posCash", label: "POS Cash", group: "Sales", color: "bg-emerald-500" },
  { id: "posCard", label: "POS Card", group: "Sales", color: "bg-emerald-500" },
  { id: "kioskSales", label: "KIOSK", group: "Sales", color: "bg-emerald-500" },
  { id: "onlineSales", label: "Online", group: "Sales", color: "bg-emerald-500" },
  { id: "purchases", label: "Purchases", group: "Sales", color: "bg-emerald-500" },
  { id: "morningCash", label: "Morning Cash", group: "Register", color: "bg-violet-500" },
  { id: "eveningCash", label: "Evening Cash", group: "Register", color: "bg-violet-500" },
  { id: "review", label: "Summary", group: "Done", color: "bg-gray-700" },
];

const GROUP_META: Record<string, { color: string; bg: string; border: string }> = {
  "Start": { color: "text-blue-600", bg: "bg-blue-50", border: "border-blue-500" },
  "Cash Count": { color: "text-amber-600", bg: "bg-amber-50", border: "border-amber-500" },
  "Sales": { color: "text-emerald-600", bg: "bg-emerald-50", border: "border-emerald-500" },
  "Register": { color: "text-violet-600", bg: "bg-violet-50", border: "border-violet-500" },
  "Done": { color: "text-gray-600", bg: "bg-gray-50", border: "border-gray-700" },
};

const GROUPS = Object.keys(GROUP_META);

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
  const [menuOpen, setMenuOpen] = useState(false);
  const navRef = useRef<HTMLDivElement>(null);

  const step = STEPS[idx];
  const group = step.group;
  const gm = GROUP_META[group];

  useEffect(() => {
    if (!navRef.current) return;
    const el = navRef.current.querySelector(`[data-g="${group}"]`);
    if (el) el.scrollIntoView({ behavior: "smooth", inline: "center", block: "nearest" });
  }, [group]);

  useEffect(() => {
    const dp = searchParams.get("date");
    if (dp) {
      setForm((f) => ({ ...f, date: dp }));
      fetch(`/api/entries/${dp}`)
        .then((r) => r.ok ? r.json() : null)
        .then((d) => {
          if (d && !d.error) {
            setForm({
              date: d.date, employeeName: d.employeeName || "Owner",
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
  const next = useCallback(() => { setIdx((i) => Math.min(i + 1, STEPS.length - 1)); setMenuOpen(false); }, []);
  const back = useCallback(() => { setIdx((i) => Math.max(i - 1, 0)); setMenuOpen(false); }, []);
  function goGroup(g: string) { const i = STEPS.findIndex((s) => s.group === g); if (i >= 0) { setIdx(i); setMenuOpen(false); } }
  function goStep(i: number) { setIdx(i); setMenuOpen(false); }

  // Which steps have data filled
  function stepHasData(s: typeof STEPS[0], i: number): boolean {
    if (s.id === "date") return !!form.date;
    if (s.id === "employee") return !!form.employeeName;
    if (s.id.startsWith("d-")) {
      const key = s.id.slice(2);
      return (form.denominations[key] || 0) > 0;
    }
    if (s.id === "review") return false;
    return ((form as any)[s.id] || 0) > 0;
  }

  async function handleSave() {
    setSaving(true); setError("");
    const res = await fetch("/api/entries", { method: "POST", headers: { "Content-Type": "application/json" }, body: JSON.stringify(form) });
    if (res.ok) setSaved(true);
    else { const d = await res.json(); setError(d.error || "Failed"); }
    setSaving(false);
  }

  if (saved) return (
    <div className="flex flex-col items-center justify-center min-h-[70vh] p-8 text-center">
      <div className="w-16 h-16 bg-emerald-500 rounded-full flex items-center justify-center mb-5">
        <svg className="w-8 h-8 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>
      </div>
      <p className="text-lg font-bold text-gray-800 mb-1">Done</p>
      <p className="text-sm text-gray-400 mb-8">{form.date} saved</p>
      <button onClick={() => { setForm({ ...EMPTY, date: toDateStr(new Date()) }); setIdx(0); setSaved(false); setIsEdit(false); }} className="w-full max-w-xs py-3.5 bg-gray-700 text-white rounded-xl text-sm font-bold mb-3">Add Another Day</button>
      <button onClick={() => router.push("/")} className="w-full max-w-xs py-3.5 bg-gray-100 text-gray-600 rounded-xl text-sm font-medium">Back to Overview</button>
    </div>
  );

  const denomInfo = step.id.startsWith("d-") ? DENOMINATIONS.find((d) => `d-${d.key}` === step.id) : null;

  return (
    <div className="flex flex-col h-full bg-white">
      {/* Top: group tabs + menu toggle */}
      <div className="flex-shrink-0">
        <div ref={navRef} className="flex border-b overflow-x-auto" style={{ scrollbarWidth: "none" }}>
          {GROUPS.map((g) => {
            const meta = GROUP_META[g];
            const stepsInGroup = STEPS.filter((s) => s.group === g);
            const filledCount = stepsInGroup.filter((s, i) => stepHasData(s, STEPS.indexOf(s))).length;
            const total = stepsInGroup.length;
            return (
              <button key={g} data-g={g} onClick={() => goGroup(g)}
                className={`flex-shrink-0 px-4 py-2.5 text-xs font-semibold border-b-2 transition-colors flex items-center gap-1.5 ${
                  group === g ? `${meta.border} ${meta.color}` : "border-transparent text-gray-300"
                }`}>
                {g}
                {g !== "Done" && <span className={`text-[9px] font-normal ${group === g ? meta.color : "text-gray-300"}`}>{filledCount}/{total}</span>}
              </button>
            );
          })}
          {/* Menu toggle */}
          <button onClick={() => setMenuOpen(!menuOpen)}
            className="flex-shrink-0 ml-auto px-3 py-2.5 text-gray-400 border-b-2 border-transparent">
            <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M3.75 6.75h16.5M3.75 12h16.5m-16.5 5.25h16.5" />
            </svg>
          </button>
        </div>

        {/* Expandable step menu */}
        {menuOpen && (
          <div className="absolute left-0 right-0 top-[42px] z-50 bg-white border-b shadow-lg max-h-[70vh] overflow-auto">
            {GROUPS.filter((g) => g !== "Done").map((g) => {
              const meta = GROUP_META[g];
              const stepsInG = STEPS.filter((s) => s.group === g);
              return (
                <div key={g}>
                  <div className={`px-4 py-2 ${meta.bg} border-b`}>
                    <span className={`text-xs font-bold ${meta.color}`}>{g}</span>
                  </div>
                  <div className="divide-y divide-gray-50">
                    {stepsInG.map((s) => {
                      const si = STEPS.indexOf(s);
                      const filled = stepHasData(s, si);
                      const isCurrent = si === idx;
                      return (
                        <button key={s.id} onClick={() => goStep(si)}
                          className={`w-full flex items-center gap-3 px-4 py-2.5 text-left ${isCurrent ? meta.bg : "hover:bg-gray-50"}`}>
                          <span className={`w-5 h-5 rounded-full flex items-center justify-center flex-shrink-0 ${
                            filled ? "bg-emerald-500" : isCurrent ? s.color + " opacity-50" : "bg-gray-200"
                          }`}>
                            {filled && <svg className="w-3 h-3 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={3}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>}
                          </span>
                          <span className={`text-sm ${isCurrent ? "font-bold text-gray-800" : filled ? "text-gray-600" : "text-gray-400"}`}>
                            {s.label}
                          </span>
                          {/* Show value if filled */}
                          {filled && s.id.startsWith("d-") && (
                            <span className="ml-auto text-xs text-gray-400">{form.denominations[s.id.slice(2)]}</span>
                          )}
                          {filled && !s.id.startsWith("d-") && s.id !== "date" && s.id !== "employee" && s.id !== "review" && (
                            <span className="ml-auto text-xs text-gray-400">{formatDKK((form as any)[s.id])}</span>
                          )}
                        </button>
                      );
                    })}
                  </div>
                </div>
              );
            })}
            {/* Summary link */}
            <button onClick={() => goStep(STEPS.length - 1)}
              className="w-full flex items-center gap-3 px-4 py-3 text-left bg-gray-50 border-t hover:bg-gray-100">
              <span className="w-5 h-5 rounded-full bg-gray-700 flex items-center justify-center flex-shrink-0">
                <svg className="w-3 h-3 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M9 12h3.75M9 15h3.75M9 18h3.75m3 .75H18a2.25 2.25 0 002.25-2.25V6.108c0-1.135-.845-2.098-1.976-2.192a48.424 48.424 0 00-1.123-.08m-5.801 0c-.065.21-.1.433-.1.664 0 .414.336.75.75.75h4.5a.75.75 0 00.75-.75 2.25 2.25 0 00-.1-.664m-5.8 0A2.251 2.251 0 0113.5 2.25H15a2.25 2.25 0 012.15 1.586m-5.8 0c-.376.023-.75.05-1.124.08C9.095 4.01 8.25 4.973 8.25 6.108V8.25m0 0H4.875c-.621 0-1.125.504-1.125 1.125v11.25c0 .621.504 1.125 1.125 1.125h9.75c.621 0 1.125-.504 1.125-1.125V9.375c0-.621-.504-1.125-1.125-1.125H8.25z" /></svg>
              </span>
              <span className="text-sm font-bold text-gray-700">Go to Summary</span>
            </button>
          </div>
        )}

        {/* Section color bar */}
        <div className={`h-1 ${step.color}`} />
      </div>

      {/* Click outside menu to close */}
      {menuOpen && <div className="fixed inset-0 z-40" onClick={() => setMenuOpen(false)} />}

      {/* Missing days */}
      {step.id === "date" && missingDays.length > 0 && (
        <div className="px-5 pt-4">
          <p className="text-xs text-gray-500 mb-2">{missingDays.length} day{missingDays.length > 1 && "s"} not filled:</p>
          <div className="flex gap-2 flex-wrap">
            {missingDays.slice(0, 5).map((d) => (
              <button key={d} onClick={() => setF("date", d)}
                className={`text-xs px-3 py-1.5 rounded-lg font-medium ${form.date === d ? "bg-blue-500 text-white" : "bg-blue-50 text-blue-600"}`}>
                {new Date(d + "T12:00:00").toLocaleDateString("da-DK", { day: "numeric", month: "short" })}
              </button>
            ))}
            {missingDays.length > 5 && <span className="text-xs text-gray-400 self-center">+{missingDays.length - 5}</span>}
          </div>
        </div>
      )}

      {/* === MAIN === */}
      <div className="flex-1 flex flex-col items-center justify-center px-6">

        {step.id === "date" && (
          <div className="w-full max-w-sm text-center">
            <p className="text-sm text-gray-500 mb-4">What day is this for?</p>
            <input type="date" value={form.date} onChange={(e) => setF("date", e.target.value)}
              className="w-full px-4 py-5 border-2 border-blue-200 rounded-2xl text-center text-xl font-bold focus:outline-none focus:border-blue-400 bg-blue-50/30" />
          </div>
        )}

        {step.id === "employee" && (
          <div className="w-full max-w-sm text-center">
            {form.employeeName === "Owner" || !form.employeeName ? (
              <>
                <p className="text-sm text-gray-500 mb-6">Counted by you?</p>
                <button onClick={() => { setF("employeeName", "Owner"); next(); }}
                  className="w-full py-5 bg-blue-500 text-white rounded-2xl text-lg font-bold mb-3">
                  Yes, me
                </button>
                <button onClick={() => setF("employeeName", "")}
                  className="w-full py-4 bg-gray-100 text-gray-500 rounded-2xl text-sm font-medium">
                  Someone else
                </button>
                {form.employeeName === "" && (
                  <input type="text" value="" onChange={(e) => setF("employeeName", e.target.value)}
                    placeholder="Type their name" autoFocus
                    className="w-full mt-4 px-4 py-5 border-2 border-blue-200 rounded-2xl text-center text-xl focus:outline-none focus:border-blue-400" />
                )}
              </>
            ) : (
              <>
                <p className="text-sm text-gray-500 mb-4">Who counted?</p>
                <input type="text" value={form.employeeName} onChange={(e) => setF("employeeName", e.target.value)}
                  placeholder="Name" autoFocus
                  className="w-full px-4 py-5 border-2 border-blue-200 rounded-2xl text-center text-xl focus:outline-none focus:border-blue-400" />
                <button onClick={() => setF("employeeName", "Owner")} className="mt-3 text-xs text-blue-400 underline">Actually, it was me</button>
              </>
            )}
          </div>
        )}

        {denomInfo && (() => {
          const cnt = form.denominations[denomInfo.key] || 0;
          const val = cnt * denomInfo.multiplier;
          return (
            <div className="w-full max-w-sm text-center">
              <p className="text-sm text-gray-400 mb-1">How many</p>
              <p className="text-3xl font-black text-amber-600 mb-6">{denomInfo.label}</p>
              <input type="number" inputMode="numeric" pattern="[0-9]*" value={cnt || ""}
                onChange={(e) => setD(denomInfo.key, parseInt(e.target.value) || 0)}
                placeholder="0"
                className="w-32 mx-auto block text-center text-5xl font-black py-3 border-2 border-amber-200 rounded-2xl focus:outline-none focus:border-amber-400 bg-amber-50/30 text-gray-800 mb-5 [appearance:textfield] [&::-webkit-inner-spin-button]:appearance-none [&::-webkit-outer-spin-button]:appearance-none" />
              <div className="flex items-center justify-center gap-3 mb-4">
                <button onClick={() => setD(denomInfo.key, cnt - 5)} className="w-12 h-12 rounded-xl bg-gray-100 text-gray-500 flex items-center justify-center text-xs font-bold active:bg-gray-200 select-none">−5</button>
                <button onClick={() => setD(denomInfo.key, cnt - 1)} className="w-14 h-14 rounded-xl bg-gray-100 text-gray-600 flex items-center justify-center text-2xl font-bold active:bg-gray-200 select-none">−</button>
                <button onClick={() => setD(denomInfo.key, cnt + 1)} className="w-14 h-14 rounded-xl bg-amber-500 text-white flex items-center justify-center text-2xl font-bold active:bg-amber-600 select-none">+</button>
                <button onClick={() => setD(denomInfo.key, cnt + 5)} className="w-12 h-12 rounded-xl bg-amber-500 text-white flex items-center justify-center text-xs font-bold active:bg-amber-600 select-none">+5</button>
              </div>
              {val > 0 && <p className="text-base text-amber-600 font-semibold">= {formatDKK(val)}</p>}
            </div>
          );
        })()}

        {["posCash", "posCard", "kioskSales", "onlineSales", "purchases"].includes(step.id) && (
          <div className="w-full max-w-sm text-center">
            <p className="text-sm text-gray-500 mb-4">
              {step.id === "purchases" ? "Purchases or cash withdrawals?" : `${step.label} sales`}
            </p>
            <div className="relative">
              <input type="text" inputMode="numeric"
                value={(form[step.id as keyof FormData] as number) || ""}
                onChange={(e) => setF(step.id as keyof FormData, parseFloat(e.target.value) || 0)}
                placeholder="0" autoFocus
                className="w-full px-4 py-5 pr-14 border-2 border-emerald-200 rounded-2xl text-center text-3xl font-bold focus:outline-none focus:border-emerald-400 bg-emerald-50/30" />
              <span className="absolute right-4 top-1/2 -translate-y-1/2 text-emerald-300 text-sm font-medium">kr</span>
            </div>
          </div>
        )}

        {(step.id === "morningCash" || step.id === "eveningCash") && (
          <div className="w-full max-w-sm text-center">
            <p className="text-sm text-gray-500 mb-4">
              {step.id === "morningCash" ? "Cash in register this morning" : "Cash in register tonight"}
            </p>
            <div className="relative">
              <input type="text" inputMode="numeric"
                value={(form[step.id as keyof FormData] as number) || ""}
                onChange={(e) => setF(step.id as keyof FormData, parseFloat(e.target.value) || 0)}
                placeholder="0" autoFocus
                className="w-full px-4 py-5 pr-14 border-2 border-violet-200 rounded-2xl text-center text-3xl font-bold focus:outline-none focus:border-violet-400 bg-violet-50/30" />
              <span className="absolute right-4 top-1/2 -translate-y-1/2 text-violet-300 text-sm font-medium">kr</span>
            </div>
            {step.id === "eveningCash" && form.morningCash > 0 && (
              <p className="text-sm text-violet-500 mt-4 font-medium">
                Morning was {formatDKK(form.morningCash)} — diff: {discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}
              </p>
            )}
          </div>
        )}

        {step.id === "review" && (
          <div className="w-full max-w-sm -mt-8">
            <p className="text-sm text-gray-500 text-center mb-5">Everything look right?</p>
            <div className="rounded-2xl border divide-y text-sm overflow-hidden">
              <button onClick={() => goStep(0)} className="w-full px-4 py-3.5 flex justify-between items-center bg-blue-50/50 hover:bg-blue-50">
                <span className="text-blue-400 text-xs">Day</span>
                <span className="font-bold text-gray-700">{form.date}</span>
              </button>
              <button onClick={() => goStep(1)} className="w-full px-4 py-3.5 flex justify-between items-center bg-blue-50/50 hover:bg-blue-50">
                <span className="text-blue-400 text-xs">Counted by</span>
                <span className="font-medium text-gray-700">{form.employeeName || "—"}</span>
              </button>
              <button onClick={() => goStep(2)} className="w-full px-4 py-3.5 flex justify-between items-center bg-amber-50/50 hover:bg-amber-50">
                <span className="text-amber-500 text-xs">Cash counted</span>
                <span className="font-bold text-gray-700">{formatDKK(coinTotal)}</span>
              </button>
              <button onClick={() => goGroup("Sales")} className="w-full px-4 py-3.5 bg-emerald-50/50 hover:bg-emerald-50">
                <div className="flex justify-between items-center mb-2">
                  <span className="text-emerald-500 text-xs">Sales total</span>
                  <span className="font-bold text-gray-700">{formatDKK(totalSales)}</span>
                </div>
                <div className="grid grid-cols-2 gap-x-4 gap-y-1 text-[11px] text-gray-400">
                  <span>POS Cash: <b className="text-gray-600">{formatDKK(form.posCash)}</b></span>
                  <span>POS Card: <b className="text-gray-600">{formatDKK(form.posCard)}</b></span>
                  <span>KIOSK: <b className="text-gray-600">{formatDKK(form.kioskSales)}</b></span>
                  <span>Online: <b className="text-gray-600">{formatDKK(form.onlineSales)}</b></span>
                </div>
              </button>
              <button onClick={() => goGroup("Register")} className="w-full px-4 py-3.5 bg-violet-50/50 hover:bg-violet-50">
                <div className="flex justify-between items-center mb-1">
                  <span className="text-violet-500 text-xs">Register</span>
                  <span className="font-semibold text-gray-600">{discrepancy >= 0 ? "+" : ""}{formatDKK(discrepancy)}</span>
                </div>
                <div className="text-[11px] text-gray-400">Morning {formatDKK(form.morningCash)} / Evening {formatDKK(form.eveningCash)}</div>
              </button>
            </div>
            {error && <p className="text-sm text-red-400 mt-3 text-center">{error}</p>}
          </div>
        )}
      </div>

      {/* Sticky running total — visible during Cash Count and Sales */}
      {(group === "Cash Count" || group === "Sales") && (
        <div className={`flex-shrink-0 px-4 py-2 ${group === "Cash Count" ? "bg-amber-50 border-t border-amber-100" : "bg-emerald-50 border-t border-emerald-100"}`}>
          <div className="flex justify-between items-center max-w-sm mx-auto">
            <span className={`text-xs font-semibold ${group === "Cash Count" ? "text-amber-600" : "text-emerald-600"}`}>
              {group === "Cash Count" ? "Cash Total" : "Sales Total"}
            </span>
            <span className={`text-lg font-black ${group === "Cash Count" ? "text-amber-700" : "text-emerald-700"}`}>
              {formatDKK(group === "Cash Count" ? coinTotal : totalSales)}
            </span>
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
            <button onClick={handleSave} disabled={saving}
              className="flex-1 py-3.5 bg-gray-700 text-white rounded-xl text-sm font-bold disabled:opacity-50">
              {saving ? "Saving..." : isEdit ? "Update" : "Save"}
            </button>
          ) : (
            <button onClick={next} className={`flex-1 py-3.5 text-white rounded-xl text-sm font-bold ${step.color}`}>
              Next
            </button>
          )}
        </div>
      </div>
    </div>
  );
}
