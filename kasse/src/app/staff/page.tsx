"use client";

import { useState, useRef, useCallback } from "react";
import EntryWizard, { type FormData, type SaveResult } from "@/components/EntryWizard";

type Screen = "pin" | "form" | "locked";

const PIN_LENGTH = 4;

export default function StaffApp() {
  const [screen, setScreen] = useState<Screen>("pin");
  const [pin, setPin] = useState("");
  const [error, setError] = useState("");
  const [checking, setChecking] = useState(false);
  const [lockedDate, setLockedDate] = useState("");
  const tokenRef = useRef<string>("");      // in-memory only — PIN required every launch
  const dateRef = useRef<string>("");

  const reset = useCallback(() => {
    tokenRef.current = "";
    dateRef.current = "";
    setPin("");
    setError("");
    setScreen("pin");
  }, []);

  async function verifyPin(code: string) {
    setChecking(true);
    setError("");
    try {
      const res = await fetch("/api/staff/verify", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ pin: code }),
      });
      const data = await res.json().catch(() => ({}));
      if (!res.ok) {
        setError(data.error || "Forkert kode");
        setPin("");
        setChecking(false);
        return;
      }
      if (data.alreadyDone) {
        setLockedDate(data.date || "");
        setScreen("locked");
        setChecking(false);
        return;
      }
      tokenRef.current = data.token;
      dateRef.current = data.date;
      setScreen("form");
    } catch {
      setError("Netværksfejl — prøv igen.");
      setPin("");
    }
    setChecking(false);
  }

  function pressDigit(d: string) {
    if (checking) return;
    setError("");
    setPin((p) => {
      if (p.length >= PIN_LENGTH) return p;
      const nextPin = p + d;
      if (nextPin.length === PIN_LENGTH) {
        // auto-submit once full
        setTimeout(() => verifyPin(nextPin), 80);
      }
      return nextPin;
    });
  }

  function pressBack() {
    if (checking) return;
    setError("");
    setPin((p) => p.slice(0, -1));
  }

  const staffSave = useCallback(async (form: FormData): Promise<SaveResult> => {
    try {
      const res = await fetch("/api/staff/entries", {
        method: "POST",
        headers: {
          "Content-Type": "application/json",
          Authorization: `Bearer ${tokenRef.current}`,
        },
        body: JSON.stringify(form),
      });
      const data = await res.json().catch(() => ({}));
      if (res.ok) return { ok: true, warnings: data.warnings };
      if (res.status === 409 || data.alreadyDone) {
        return { ok: false, alreadyDone: true, error: data.error };
      }
      return { ok: false, error: data.error || "Kunne ikke gemme." };
    } catch {
      return { ok: false, error: "Netværksfejl — prøv igen." };
    }
  }, []);

  // ---- FORM ----
  if (screen === "form") {
    return (
      <EntryWizard
        mode="staff"
        fixedDate={dateRef.current}
        onSave={staffSave}
        onAlreadyDone={() => {
          setLockedDate(dateRef.current);
          setScreen("locked");
        }}
        onExit={reset}
      />
    );
  }

  // ---- LOCKED (today already closed) ----
  if (screen === "locked") {
    return (
      <div className="flex flex-col items-center justify-center h-full px-8 text-center bg-[#1e293b]">
        <div className="w-20 h-20 rounded-full bg-white/10 flex items-center justify-center mb-6">
          <svg className="w-10 h-10 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M16.5 10.5V6.75a4.5 4.5 0 10-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 002.25-2.25v-6.75a2.25 2.25 0 00-2.25-2.25H6.75a2.25 2.25 0 00-2.25 2.25v6.75a2.25 2.25 0 002.25 2.25z" />
          </svg>
        </div>
        <h1 className="text-xl font-bold text-white mb-2">Allerede afsluttet</h1>
        <p className="text-sm text-gray-300 max-w-xs">
          Kasseopgørelsen for {lockedDate || "i dag"} er allerede lavet. Der er ikke mere at gøre i dag.
        </p>
        <button onClick={reset} className="mt-8 px-6 py-3 bg-white/10 text-white rounded-xl text-sm font-semibold">
          Tilbage
        </button>
      </div>
    );
  }

  // ---- PIN ----
  const keys = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "", "0", "⌫"];
  return (
    <div className="flex flex-col items-center justify-center h-full px-8 bg-[#1e293b] safe-area-top safe-area-bottom">
      <div className="w-14 h-14 rounded-full bg-brand flex items-center justify-center shadow-lg shadow-brand/40 mb-5">
        <span className="text-white font-black text-xs tracking-wider">CNC</span>
      </div>
      <h1 className="text-lg font-bold text-white mb-1">Kasse — Personale</h1>
      <p className="text-xs text-gray-400 mb-7">Indtast kode for at fortsætte</p>

      {/* PIN dots */}
      <div className="flex gap-3 mb-4 h-4 items-center">
        {Array.from({ length: PIN_LENGTH }).map((_, i) => (
          <span
            key={i}
            className={`w-3.5 h-3.5 rounded-full transition-colors ${
              i < pin.length ? "bg-brand" : "bg-white/15"
            }`}
          />
        ))}
      </div>

      <div className="h-5 mb-3">
        {checking ? (
          <span className="text-xs text-gray-400">Kontrollerer…</span>
        ) : error ? (
          <span className="text-xs text-red-400 font-medium">{error}</span>
        ) : null}
      </div>

      {/* Keypad */}
      <div className="grid grid-cols-3 gap-3 w-full max-w-[280px]">
        {keys.map((k, i) =>
          k === "" ? (
            <div key={i} />
          ) : k === "⌫" ? (
            <button
              key={i}
              onClick={pressBack}
              className="h-16 rounded-2xl bg-white/5 text-white text-2xl flex items-center justify-center active:bg-white/10"
            >
              <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M12 9.75L14.25 12m0 0l2.25 2.25M14.25 12l2.25-2.25M14.25 12L12 14.25m-2.58 4.92l-6.374-6.375a1.125 1.125 0 010-1.59L9.42 4.83c.21-.211.497-.33.795-.33H19.5a2.25 2.25 0 012.25 2.25v10.5a2.25 2.25 0 01-2.25 2.25h-9.284c-.298 0-.585-.119-.795-.33z" />
              </svg>
            </button>
          ) : (
            <button
              key={i}
              onClick={() => pressDigit(k)}
              className="h-16 rounded-2xl bg-white/10 text-white text-2xl font-semibold flex items-center justify-center active:bg-white/20 select-none"
            >
              {k}
            </button>
          )
        )}
      </div>

      <p className="text-[10px] text-gray-600 mt-8">Kun dagens opgørelse · Adgang kræver kode hver gang</p>
    </div>
  );
}
