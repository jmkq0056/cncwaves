"use client";

import { useEffect, useState } from "react";

export default function SettingsPage() {
  const [recipientEmail, setRecipientEmail] = useState("");
  const [adminPasscode, setAdminPasscode] = useState("");
  const [showSubCategories, setShowSubCategories] = useState(true);
  const [showBrands, setShowBrands] = useState(true);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState("");
  const [seeding, setSeeding] = useState(false);
  const [resetCode, setResetCode] = useState("");
  const [resetting, setResetting] = useState(false);
  const [showResetConfirm, setShowResetConfirm] = useState(false);

  useEffect(() => {
    fetch("/api/settings")
      .then((r) => r.json())
      .then((data) => {
        setRecipientEmail(data.recipient_email || "");
        setAdminPasscode(data.admin_passcode || "2670");
        setShowSubCategories(data.show_subcategories !== "false");
        setShowBrands(data.show_brands !== "false");
        setLoading(false);
      })
      .catch(() => setLoading(false));
  }, []);

  async function handleSave() {
    setSaving(true);
    setMsg("");
    const res = await fetch("/api/settings", {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({
        recipient_email: recipientEmail,
        admin_passcode: adminPasscode,
        show_subcategories: showSubCategories ? "true" : "false",
        show_brands: showBrands ? "true" : "false",
      }),
    });
    if (res.ok) {
      setMsg("Settings saved!");
    } else {
      setMsg("Failed to save settings");
    }
    setSaving(false);
  }

  if (loading) return <div className="p-6 text-gray-400">Loading...</div>;

  return (
    <div className="p-4 md:p-6 max-w-lg">
      <h1 className="text-xl font-bold text-gray-800 mb-6">Settings</h1>

      {/* Admin Passcode */}
      <div className="bg-white rounded-lg shadow-sm border border-gray-100 p-4 md:p-6 mb-4 md:mb-6">
        <h2 className="font-medium text-gray-700 mb-4 flex items-center gap-2">
          <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M16.5 10.5V6.75a4.5 4.5 0 10-9 0v3.75m-.75 11.25h10.5a2.25 2.25 0 002.25-2.25v-6.75a2.25 2.25 0 00-2.25-2.25H6.75a2.25 2.25 0 00-2.25 2.25v6.75a2.25 2.25 0 002.25 2.25z" />
          </svg>
          Admin Passcode
        </h2>
        <p className="text-xs text-gray-400 mb-2">
          Required to access Dashboard, Vacations, Submissions, and Settings. Valid for 2 hours per session.
        </p>
        <input
          type="text"
          inputMode="numeric"
          value={adminPasscode}
          onChange={(e) => setAdminPasscode(e.target.value.replace(/[^0-9]/g, ""))}
          placeholder="e.g. 2670"
          maxLength={10}
          className="w-full px-3 py-2 border rounded-lg text-sm tracking-widest focus:outline-none focus:ring-1 focus:ring-gray-400"
        />
      </div>

      {/* Email Settings */}
      <div className="bg-white rounded-lg shadow-sm border border-gray-100 p-4 md:p-6 mb-4 md:mb-6">
        <h2 className="font-medium text-gray-700 mb-4 flex items-center gap-2">
          <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" />
          </svg>
          Email Notifications
        </h2>

        <div className="mb-4">
          <label className="block text-sm font-medium text-gray-600 mb-1">
            Recipient Email
          </label>
          <p className="text-xs text-gray-400 mb-2">
            Packing lists will be sent to this email address.
          </p>
          <input
            type="email"
            value={recipientEmail}
            onChange={(e) => setRecipientEmail(e.target.value)}
            placeholder="e.g. info@example.com"
            className="w-full px-3 py-2 border rounded-lg text-sm focus:outline-none focus:ring-1 focus:ring-gray-400"
          />
        </div>
      </div>

      {/* Delivery Page Settings */}
      <div className="bg-white rounded-lg shadow-sm border border-gray-100 p-4 md:p-6 mb-4 md:mb-6">
        <h2 className="font-medium text-gray-700 mb-4 flex items-center gap-2">
          <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M10.5 6h9.75M10.5 6a1.5 1.5 0 11-3 0m3 0a1.5 1.5 0 10-3 0M3.75 6H7.5m3 12h9.75m-9.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-3.75 0H7.5m9-6h3.75m-3.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-9.75 0h9.75" />
          </svg>
          Delivery Page Filters
        </h2>
        <p className="text-xs text-gray-400 mb-4">
          Toggle which filter tabs are visible on the delivery page.
        </p>

        <div className="space-y-3">
          <label className="flex items-center justify-between cursor-pointer">
            <div>
              <span className="text-sm font-medium text-gray-700">Sub Categories</span>
              <p className="text-xs text-gray-400">Show the Sub Categories filter</p>
            </div>
            <button
              type="button"
              onClick={() => setShowSubCategories(!showSubCategories)}
              className={`relative w-11 h-6 rounded-full transition-colors ${
                showSubCategories ? "bg-gray-700" : "bg-gray-300"
              }`}
            >
              <span
                className={`absolute top-0.5 left-0.5 w-5 h-5 bg-white rounded-full shadow transition-transform ${
                  showSubCategories ? "translate-x-5" : "translate-x-0"
                }`}
              />
            </button>
          </label>

          <label className="flex items-center justify-between cursor-pointer">
            <div>
              <span className="text-sm font-medium text-gray-700">Brands</span>
              <p className="text-xs text-gray-400">Show the Brands filter</p>
            </div>
            <button
              type="button"
              onClick={() => setShowBrands(!showBrands)}
              className={`relative w-11 h-6 rounded-full transition-colors ${
                showBrands ? "bg-gray-700" : "bg-gray-300"
              }`}
            >
              <span
                className={`absolute top-0.5 left-0.5 w-5 h-5 bg-white rounded-full shadow transition-transform ${
                  showBrands ? "translate-x-5" : "translate-x-0"
                }`}
              />
            </button>
          </label>
        </div>
      </div>

      {msg && (
        <p className={`text-sm mb-3 ${msg.includes("saved") ? "text-green-600" : "text-red-500"}`}>
          {msg}
        </p>
      )}

      <button
        onClick={handleSave}
        disabled={saving}
        className="px-6 py-2.5 bg-gray-700 text-white rounded-lg text-sm hover:bg-gray-800 disabled:opacity-50 font-medium transition-colors"
      >
        {saving ? "Saving..." : "Save Settings"}
      </button>

      {/* Developer Tools */}
      <div className="bg-white rounded-lg shadow-sm border border-gray-100 p-4 md:p-6 mt-8 border-t-4 border-t-gray-300">
        <h2 className="font-medium text-gray-700 mb-4 flex items-center gap-2">
          <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M11.42 15.17l-5.1-5.1m0 0L11.42 4.97m-5.1 5.1h12.76" />
          </svg>
          Developer Tools
        </h2>

        <div className="space-y-4">
          <div>
            <p className="text-sm font-medium text-gray-700">Seed Test Data</p>
            <p className="text-xs text-gray-400 mb-2">
              Generates ~50 fake form submissions and vacation requests for testing.
            </p>
            <button
              onClick={async () => {
                setSeeding(true);
                setMsg("");
                const res = await fetch("/api/admin/seed", { method: "POST" });
                const data = await res.json();
                setMsg(data.message || "Seeded!");
                setSeeding(false);
              }}
              disabled={seeding}
              className="px-4 py-2 bg-gray-100 text-gray-700 rounded-lg text-sm hover:bg-gray-200 disabled:opacity-50 font-medium transition-colors"
            >
              {seeding ? "Seeding..." : "Seed Test Data"}
            </button>
          </div>

          <div className="pt-4 border-t">
            <p className="text-sm font-medium text-red-600">Reset Database</p>
            <p className="text-xs text-gray-400 mb-2">
              Deletes ALL submissions, deliveries, vacations, and sessions. Products and users are preserved.
            </p>
            {!showResetConfirm ? (
              <button
                onClick={() => setShowResetConfirm(true)}
                className="px-4 py-2 bg-red-50 text-red-600 rounded-lg text-sm hover:bg-red-100 font-medium transition-colors"
              >
                Reset Database...
              </button>
            ) : (
              <div className="bg-red-50 border border-red-200 rounded-lg p-4">
                <p className="text-sm text-red-700 font-medium mb-2">
                  Type the reset code to confirm:
                </p>
                <input
                  type="text"
                  value={resetCode}
                  onChange={(e) => setResetCode(e.target.value)}
                  placeholder="Enter reset code"
                  className="w-full px-3 py-2 border border-red-300 rounded-lg text-sm mb-2 focus:outline-none focus:ring-1 focus:ring-red-400 font-mono"
                />
                <div className="flex gap-2">
                  <button
                    onClick={() => { setShowResetConfirm(false); setResetCode(""); }}
                    className="px-3 py-1.5 bg-gray-100 text-gray-700 rounded-lg text-sm hover:bg-gray-200 transition-colors"
                  >
                    Cancel
                  </button>
                  <button
                    onClick={async () => {
                      setResetting(true);
                      setMsg("");
                      const res = await fetch("/api/admin/reset", {
                        method: "POST",
                        headers: { "Content-Type": "application/json" },
                        body: JSON.stringify({ code: resetCode }),
                      });
                      const data = await res.json();
                      if (res.ok) {
                        setMsg(`Reset complete: ${JSON.stringify(data.deleted)}`);
                        setShowResetConfirm(false);
                        setResetCode("");
                      } else {
                        setMsg(data.error || "Reset failed");
                      }
                      setResetting(false);
                    }}
                    disabled={resetting || !resetCode}
                    className="px-3 py-1.5 bg-red-600 text-white rounded-lg text-sm hover:bg-red-700 disabled:opacity-50 font-medium transition-colors"
                  >
                    {resetting ? "Resetting..." : "Confirm Reset"}
                  </button>
                </div>
              </div>
            )}
          </div>
        </div>
      </div>
    </div>
  );
}
