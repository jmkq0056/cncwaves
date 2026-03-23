"use client";

import { useEffect, useState } from "react";

export default function SettingsPage() {
  const [recipientEmail, setRecipientEmail] = useState("");
  const [showSubCategories, setShowSubCategories] = useState(true);
  const [showBrands, setShowBrands] = useState(true);
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState("");

  useEffect(() => {
    fetch("/api/settings")
      .then((r) => r.json())
      .then((data) => {
        setRecipientEmail(data.recipient_email || "");
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
    <div className="p-6 max-w-lg">
      <h1 className="text-xl font-bold text-gray-800 mb-6">Settings</h1>

      {/* Email Settings */}
      <div className="bg-white rounded-lg shadow p-6 mb-6">
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
            Packing lists will be sent to this email address as a mobile-friendly HTML email.
          </p>
          <input
            type="email"
            value={recipientEmail}
            onChange={(e) => setRecipientEmail(e.target.value)}
            placeholder="e.g. info@example.com"
            className="w-full px-3 py-2 border rounded text-sm focus:outline-none focus:ring-2 focus:ring-blue-400"
          />
        </div>
      </div>

      {/* Delivery Page Settings */}
      <div className="bg-white rounded-lg shadow p-6 mb-6">
        <h2 className="font-medium text-gray-700 mb-4 flex items-center gap-2">
          <svg className="w-5 h-5 text-gray-400" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}>
            <path strokeLinecap="round" strokeLinejoin="round" d="M10.5 6h9.75M10.5 6a1.5 1.5 0 11-3 0m3 0a1.5 1.5 0 10-3 0M3.75 6H7.5m3 12h9.75m-9.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-3.75 0H7.5m9-6h3.75m-3.75 0a1.5 1.5 0 01-3 0m3 0a1.5 1.5 0 00-3 0m-9.75 0h9.75" />
          </svg>
          Delivery Page Filters
        </h2>
        <p className="text-xs text-gray-400 mb-4">
          Toggle which filter tabs are visible on the delivery page. Categories is always shown.
        </p>

        <div className="space-y-3">
          {/* Sub Categories toggle */}
          <label className="flex items-center justify-between cursor-pointer">
            <div>
              <span className="text-sm font-medium text-gray-700">Sub Categories</span>
              <p className="text-xs text-gray-400">Show the Sub Categories tab on the delivery page</p>
            </div>
            <button
              type="button"
              onClick={() => setShowSubCategories(!showSubCategories)}
              className={`relative w-11 h-6 rounded-full transition-colors ${
                showSubCategories ? "bg-blue-500" : "bg-gray-300"
              }`}
            >
              <span
                className={`absolute top-0.5 left-0.5 w-5 h-5 bg-white rounded-full shadow transition-transform ${
                  showSubCategories ? "translate-x-5" : "translate-x-0"
                }`}
              />
            </button>
          </label>

          {/* Brands toggle */}
          <label className="flex items-center justify-between cursor-pointer">
            <div>
              <span className="text-sm font-medium text-gray-700">Brands</span>
              <p className="text-xs text-gray-400">Show the Brands tab on the delivery page</p>
            </div>
            <button
              type="button"
              onClick={() => setShowBrands(!showBrands)}
              className={`relative w-11 h-6 rounded-full transition-colors ${
                showBrands ? "bg-blue-500" : "bg-gray-300"
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
        className="px-6 py-2 bg-blue-500 text-white rounded text-sm hover:bg-blue-600 disabled:opacity-50 font-medium"
      >
        {saving ? "Saving..." : "Save Settings"}
      </button>
    </div>
  );
}
