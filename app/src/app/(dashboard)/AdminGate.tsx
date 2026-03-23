"use client";

import { useEffect, useState } from "react";

const ADMIN_PAGES = ["/stats", "/vacations", "/submissions", "/settings"];

export default function AdminGate({
  pathname,
  children,
}: {
  pathname: string;
  children: React.ReactNode;
}) {
  const [checking, setChecking] = useState(true);
  const [authorized, setAuthorized] = useState(false);
  const [passcode, setPasscode] = useState("");
  const [error, setError] = useState("");
  const [submitting, setSubmitting] = useState(false);
  const [expiresAt, setExpiresAt] = useState<string | null>(null);

  const needsAdmin = ADMIN_PAGES.some((p) => pathname.startsWith(p));

  useEffect(() => {
    if (!needsAdmin) {
      setAuthorized(true);
      setChecking(false);
      return;
    }

    fetch("/api/admin-auth")
      .then((r) => r.json())
      .then((data) => {
        setAuthorized(data.valid);
        if (data.valid) setExpiresAt(data.expiresAt);
        setChecking(false);
      })
      .catch(() => setChecking(false));
  }, [needsAdmin, pathname]);

  async function handleSubmit(e: React.FormEvent) {
    e.preventDefault();
    setSubmitting(true);
    setError("");

    const res = await fetch("/api/admin-auth", {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ passcode }),
    });

    const data = await res.json();
    if (res.ok) {
      setAuthorized(true);
      setExpiresAt(data.expiresAt);
    } else {
      setError(data.error || "Invalid passcode");
    }
    setSubmitting(false);
  }

  if (!needsAdmin || authorized) {
    return <>{children}</>;
  }

  if (checking) {
    return (
      <div className="flex items-center justify-center h-full">
        <p className="text-gray-400 text-sm">Checking access...</p>
      </div>
    );
  }

  // Passcode prompt
  return (
    <div className="flex items-center justify-center h-full">
      <div className="bg-white rounded-xl shadow-lg p-6 w-full max-w-xs">
        <div className="text-center mb-5">
          <div className="w-12 h-12 rounded-full bg-brand/10 flex items-center justify-center mx-auto mb-3">
            <svg className="w-6 h-6 text-brand" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M16.5 10.5V6.75a4.5 4.5 0 10-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 002.25-2.25v-6.75a2.25 2.25 0 00-2.25-2.25H6.75a2.25 2.25 0 00-2.25 2.25v6.75a2.25 2.25 0 002.25 2.25z" />
            </svg>
          </div>
          <h2 className="font-bold text-gray-800">Admin Access</h2>
          <p className="text-xs text-gray-400 mt-1">Enter passcode to continue</p>
        </div>

        <form onSubmit={handleSubmit}>
          <input
            type="password"
            inputMode="numeric"
            pattern="[0-9]*"
            maxLength={10}
            value={passcode}
            onChange={(e) => setPasscode(e.target.value)}
            placeholder="Passcode"
            autoFocus
            className="w-full px-4 py-3 text-center text-lg tracking-[0.5em] border rounded-lg focus:outline-none focus:ring-2 focus:ring-brand focus:border-transparent"
          />

          {error && (
            <p className="text-red-500 text-xs text-center mt-2">{error}</p>
          )}

          <button
            type="submit"
            disabled={submitting || !passcode}
            className="w-full mt-3 py-2.5 bg-brand text-white rounded-lg hover:bg-brand-700 disabled:opacity-50 font-medium text-sm"
          >
            {submitting ? "Verifying..." : "Unlock"}
          </button>
        </form>

        <p className="text-[10px] text-gray-400 text-center mt-3">Access valid for 2 hours</p>
      </div>
    </div>
  );
}
