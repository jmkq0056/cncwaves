"use client";

import { useEffect, useState } from "react";

export default function SettingsPage() {
  const [recipientEmail, setRecipientEmail] = useState("");
  const [loading, setLoading] = useState(true);
  const [saving, setSaving] = useState(false);
  const [msg, setMsg] = useState("");

  useEffect(() => {
    fetch("/api/settings")
      .then((r) => r.json())
      .then((data) => {
        setRecipientEmail(data.recipient_email || "");
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
      body: JSON.stringify({ recipient_email: recipientEmail }),
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

      <div className="bg-white rounded-lg shadow p-6">
        <h2 className="font-medium text-gray-700 mb-4">Email Notifications</h2>

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
    </div>
  );
}
