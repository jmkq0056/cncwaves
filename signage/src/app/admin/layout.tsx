"use client";

import { useEffect, useState } from "react";
import { usePathname } from "next/navigation";

export default function AdminLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  const [authenticated, setAuthenticated] = useState<boolean | null>(null);
  const [pin, setPin] = useState("");
  const [error, setError] = useState("");
  const [loggingIn, setLoggingIn] = useState(false);
  const [loginDone, setLoginDone] = useState(false);
  const pathname = usePathname();

  useEffect(() => {
    let cancelled = false;
    fetch("/api/admin/screens")
      .then((r) => {
        // Don't overwrite a successful login
        if (!cancelled) setAuthenticated(r.ok);
      })
      .catch(() => {
        if (!cancelled) setAuthenticated(false);
      });
    return () => { cancelled = true; };
  }, []);

  async function handleLogin(e: React.FormEvent) {
    e.preventDefault();
    setError("");
    setLoggingIn(true);
    try {
      const res = await fetch("/api/admin/login", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({ pin }),
      });
      if (res.ok) {
        setLoginDone(true);
        setAuthenticated(true);
      } else {
        setError("Invalid PIN");
      }
    } catch {
      setError("Connection failed. Check your internet.");
    } finally {
      setLoggingIn(false);
    }
  }

  if (authenticated === null) {
    return (
      <div className="flex items-center justify-center min-h-screen">
        <div className="text-gray-400">Loading...</div>
      </div>
    );
  }

  if (!authenticated) {
    return (
      <div className="flex items-center justify-center min-h-screen px-4">
        <form
          onSubmit={handleLogin}
          className="bg-gray-900 p-8 rounded-2xl border border-gray-800 w-full max-w-sm"
        >
          <div className="text-center mb-8">
            <div className="text-3xl font-black text-orange-500 mb-1">CNC</div>
            <div className="text-sm text-gray-500">Signage Admin</div>
          </div>
          <input
            type="password"
            inputMode="numeric"
            placeholder="Enter PIN"
            value={pin}
            onChange={(e) => setPin(e.target.value)}
            className="w-full p-4 bg-gray-800 border border-gray-700 rounded-xl text-white text-center text-2xl tracking-[0.3em] mb-4"
            autoFocus
          />
          {error && (
            <p className="text-red-400 text-sm text-center mb-4">{error}</p>
          )}
          <button
            type="submit"
            disabled={loggingIn}
            className="w-full bg-orange-500 hover:bg-orange-600 active:bg-orange-700 text-white font-bold py-4 rounded-xl text-lg transition disabled:opacity-50"
          >
            {loggingIn ? "Logging in..." : "Login"}
          </button>
        </form>
      </div>
    );
  }

  const isScreens = pathname === "/admin";
  const isImages = pathname === "/admin/images";

  return (
    <div className="min-h-screen pb-20 sm:pb-0">
      <nav className="hidden sm:block bg-gray-900 border-b border-gray-800 px-4 py-3">
        <div className="max-w-7xl mx-auto flex items-center justify-between">
          <a href="/admin" className="flex items-center gap-2">
            <span className="text-xl font-black text-orange-500">CNC</span>
            <span className="text-sm text-gray-500">Signage</span>
          </a>
          <div className="flex gap-1">
            <a
              href="/admin"
              className={`px-4 py-2 rounded-lg text-sm font-medium transition ${
                isScreens
                  ? "bg-gray-800 text-white"
                  : "text-gray-400 hover:text-white"
              }`}
            >
              Screens
            </a>
            <a
              href="/admin/images"
              className={`px-4 py-2 rounded-lg text-sm font-medium transition ${
                isImages
                  ? "bg-gray-800 text-white"
                  : "text-gray-400 hover:text-white"
              }`}
            >
              Images
            </a>
          </div>
        </div>
      </nav>

      <div className="sm:hidden bg-gray-900 border-b border-gray-800 px-4 py-3 flex items-center justify-center">
        <span className="text-xl font-black text-orange-500">CNC</span>
        <span className="text-sm text-gray-500 ml-2">Signage</span>
      </div>

      <main className="max-w-7xl mx-auto p-4 sm:p-6">{children}</main>

      <nav className="sm:hidden fixed bottom-0 left-0 right-0 bg-gray-900 border-t border-gray-800 flex safe-area-bottom">
        <a
          href="/admin"
          className={`flex-1 py-4 text-center text-sm font-medium transition ${
            isScreens ? "text-orange-500" : "text-gray-500"
          }`}
        >
          <div className="text-lg mb-0.5">{isScreens ? "■" : "□"}</div>
          Screens
        </a>
        <a
          href="/admin/images"
          className={`flex-1 py-4 text-center text-sm font-medium transition ${
            isImages ? "text-orange-500" : "text-gray-500"
          }`}
        >
          <div className="text-lg mb-0.5">{isImages ? "▣" : "▢"}</div>
          Images
        </a>
      </nav>
    </div>
  );
}
