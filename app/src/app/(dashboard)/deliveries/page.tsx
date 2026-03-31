"use client";

import { useEffect, useState } from "react";

type DeliveryItem = {
  code: string;
  name: string;
  quantity: number;
  unit: string;
  note: string;
};

type Delivery = {
  _id: string;
  reference: string;
  shareToken: string;
  items: DeliveryItem[];
  status: string;
  createdBy: string;
  createdAt: string;
  emailSent: boolean;
  emailError: string;
};

export default function DeliveriesPage() {
  const [deliveries, setDeliveries] = useState<Delivery[]>([]);
  const [selected, setSelected] = useState<Delivery | null>(null);
  const [loading, setLoading] = useState(true);
  const [emailingId, setEmailingId] = useState<string | null>(null);
  const [msg, setMsg] = useState("");
  const [copiedId, setCopiedId] = useState<string | null>(null);

  function handleCopyLink(d: Delivery) {
    const url = `${window.location.origin}/d/${d.shareToken}`;
    navigator.clipboard.writeText(url).then(() => {
      setCopiedId(d._id);
      setMsg(`Link copied for ${d.reference}`);
      setTimeout(() => setCopiedId(null), 2000);
    });
  }

  useEffect(() => {
    loadDeliveries();
  }, []);

  async function loadDeliveries() {
    setLoading(true);
    const res = await fetch("/api/deliveries");
    if (res.ok) setDeliveries(await res.json());
    setLoading(false);
  }

  async function handleDelete(id: string) {
    if (!confirm("Delete this delivery?")) return;
    await fetch(`/api/deliveries/${id}`, { method: "DELETE" });
    setDeliveries((prev) => prev.filter((d) => d._id !== id));
    if (selected?._id === id) setSelected(null);
  }

  async function handleEmail(id: string) {
    setEmailingId(id);
    setMsg("");
    const res = await fetch(`/api/deliveries/${id}/email`, { method: "POST" });
    const data = await res.json();
    if (res.ok) {
      setMsg(`Email sent to ${data.sentTo}`);
    } else {
      setMsg(data.error || "Failed to send email");
    }
    setEmailingId(null);
  }

  return (
    <div className="p-4 md:p-6">
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-xl font-bold text-gray-800">Deliveries</h1>
        <span className="text-sm text-gray-500">{deliveries.length} entries</span>
      </div>

      {msg && (
        <div className={`mb-4 p-3 rounded-lg text-sm ${msg.includes("sent") ? "bg-green-50 text-green-700" : "bg-red-50 text-red-700"}`}>
          {msg}
        </div>
      )}

      {/* Desktop Table */}
      <div className="hidden md:block bg-white rounded-lg shadow overflow-hidden">
        <table className="w-full text-sm">
          <thead>
            <tr className="bg-gray-700 text-white">
              <th className="px-4 py-3 text-left">Date</th>
              <th className="px-4 py-3 text-left">Reference</th>
              <th className="px-4 py-3 text-left">Created By</th>
              <th className="px-4 py-3 text-center">Items</th>
              <th className="px-4 py-3 text-center">Status</th>
              <th className="px-4 py-3 text-right">Actions</th>
            </tr>
          </thead>
          <tbody>
            {loading && (
              <tr><td colSpan={6} className="text-center py-8 text-gray-400">Loading...</td></tr>
            )}
            {!loading && deliveries.length === 0 && (
              <tr><td colSpan={6} className="text-center py-8 text-gray-400">No deliveries yet</td></tr>
            )}
            {deliveries.map((d) => (
              <tr key={d._id} className="border-b hover:bg-gray-50">
                <td className="px-4 py-3">{new Date(d.createdAt).toLocaleString("da-DK")}</td>
                <td className="px-4 py-3 font-medium">{d.reference}</td>
                <td className="px-4 py-3">{d.createdBy}</td>
                <td className="px-4 py-3 text-center">{d.items.length}</td>
                <td className="px-4 py-3 text-center">
                  <span className={`px-2 py-1 rounded text-xs font-medium ${
                    d.status === "completed"
                      ? "bg-green-50 text-green-700"
                      : "bg-gray-100 text-gray-600"
                  }`}>
                    {d.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-right">
                  <div className="flex gap-1 justify-end">
                    <button
                      onClick={() => setSelected(d)}
                      className="p-1.5 bg-gray-100 text-gray-600 rounded hover:bg-gray-200 transition-colors"
                      title="View packing list"
                    >
                      <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" /><path strokeLinecap="round" strokeLinejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" /></svg>
                    </button>
                    <button
                      onClick={() => handleCopyLink(d)}
                      className={`p-1.5 rounded transition-colors ${copiedId === d._id ? "bg-green-100 text-green-600" : "bg-gray-100 text-gray-600 hover:bg-gray-200"}`}
                      title="Copy pick list link"
                    >
                      {copiedId === d._id ? (
                        <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>
                      ) : (
                        <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M13.19 8.688a4.5 4.5 0 011.242 7.244l-4.5 4.5a4.5 4.5 0 01-6.364-6.364l1.757-1.757m9.86-2.54a4.5 4.5 0 00-1.242-7.244l-4.5-4.5a4.5 4.5 0 00-6.364 6.364L4.25 8.81" /></svg>
                      )}
                    </button>
                    <button
                      onClick={() => handleEmail(d._id)}
                      disabled={emailingId === d._id}
                      className="p-1.5 bg-gray-100 text-gray-600 rounded hover:bg-gray-200 disabled:opacity-50 transition-colors"
                      title="Send via email"
                    >
                      <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" /></svg>
                    </button>
                    <button
                      onClick={() => handleDelete(d._id)}
                      className="p-1.5 bg-gray-100 text-gray-600 rounded hover:bg-red-50 hover:text-red-500 transition-colors"
                      title="Delete"
                    >
                      <svg className="w-3.5 h-3.5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" /></svg>
                    </button>
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Mobile Card View */}
      <div className="md:hidden space-y-2">
        {loading && <p className="text-center py-8 text-gray-400">Loading...</p>}
        {!loading && deliveries.length === 0 && <p className="text-center py-8 text-gray-400">No deliveries yet</p>}
        {deliveries.map((d) => (
          <div key={d._id} className="bg-white rounded-lg shadow-sm border border-gray-100 p-3">
            <div className="flex items-start justify-between mb-2">
              <div>
                <p className="font-medium text-sm">{d.reference}</p>
                <p className="text-xs text-gray-400">{new Date(d.createdAt).toLocaleString("da-DK")}</p>
              </div>
              <span className={`px-2 py-0.5 rounded text-[10px] font-medium ${
                d.status === "completed"
                  ? "bg-green-50 text-green-700"
                  : "bg-gray-100 text-gray-600"
              }`}>
                {d.status}
              </span>
            </div>
            <div className="flex items-center justify-between">
              <div className="text-xs text-gray-500">
                <span>{d.createdBy}</span>
                <span className="mx-1.5 text-gray-300">|</span>
                <span>{d.items.length} items</span>
              </div>
              <div className="flex gap-1">
                <button
                  onClick={() => setSelected(d)}
                  className="p-2 rounded-lg bg-gray-50 text-gray-600 hover:bg-gray-100 transition-colors"
                >
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M2.036 12.322a1.012 1.012 0 010-.639C3.423 7.51 7.36 4.5 12 4.5c4.638 0 8.573 3.007 9.963 7.178.07.207.07.431 0 .639C20.577 16.49 16.64 19.5 12 19.5c-4.638 0-8.573-3.007-9.963-7.178z" /><path strokeLinecap="round" strokeLinejoin="round" d="M15 12a3 3 0 11-6 0 3 3 0 016 0z" /></svg>
                </button>
                <button
                  onClick={() => handleCopyLink(d)}
                  className={`p-2 rounded-lg transition-colors ${copiedId === d._id ? "bg-green-50 text-green-600" : "bg-gray-50 text-gray-600 hover:bg-gray-100"}`}
                >
                  {copiedId === d._id ? (
                    <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" /></svg>
                  ) : (
                    <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M13.19 8.688a4.5 4.5 0 011.242 7.244l-4.5 4.5a4.5 4.5 0 01-6.364-6.364l1.757-1.757m9.86-2.54a4.5 4.5 0 00-1.242-7.244l-4.5-4.5a4.5 4.5 0 00-6.364 6.364L4.25 8.81" /></svg>
                  )}
                </button>
                <button
                  onClick={() => handleEmail(d._id)}
                  disabled={emailingId === d._id}
                  className="p-2 rounded-lg bg-gray-50 text-gray-600 hover:bg-gray-100 disabled:opacity-50 transition-colors"
                >
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M21.75 6.75v10.5a2.25 2.25 0 01-2.25 2.25h-15a2.25 2.25 0 01-2.25-2.25V6.75m19.5 0A2.25 2.25 0 0019.5 4.5h-15a2.25 2.25 0 00-2.25 2.25m19.5 0v.243a2.25 2.25 0 01-1.07 1.916l-7.5 4.615a2.25 2.25 0 01-2.36 0L3.32 8.91a2.25 2.25 0 01-1.07-1.916V6.75" /></svg>
                </button>
                <button
                  onClick={() => handleDelete(d._id)}
                  className="p-2 rounded-lg bg-gray-50 text-gray-600 hover:bg-red-50 hover:text-red-500 transition-colors"
                >
                  <svg className="w-4 h-4" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={1.5}><path strokeLinecap="round" strokeLinejoin="round" d="M14.74 9l-.346 9m-4.788 0L9.26 9m9.968-3.21c.342.052.682.107 1.022.166m-1.022-.165L18.16 19.673a2.25 2.25 0 01-2.244 2.077H8.084a2.25 2.25 0 01-2.244-2.077L4.772 5.79m14.456 0a48.108 48.108 0 00-3.478-.397m-12 .562c.34-.059.68-.114 1.022-.165m0 0a48.11 48.11 0 013.478-.397m7.5 0v-.916c0-1.18-.91-2.164-2.09-2.201a51.964 51.964 0 00-3.32 0c-1.18.037-2.09 1.022-2.09 2.201v.916m7.5 0a48.667 48.667 0 00-7.5 0" /></svg>
                </button>
              </div>
            </div>
          </div>
        ))}
      </div>

      {/* Packing List Modal */}
      {selected && (
        <div className="fixed inset-0 bg-black/50 flex items-end md:items-center justify-center z-50">
          <div className="bg-white rounded-t-2xl md:rounded-lg shadow-xl w-full max-w-lg max-h-[85vh] overflow-auto">
            <div className="flex items-center justify-between p-4 border-b">
              <h2 className="font-bold text-lg">PACKING LIST</h2>
              <button
                onClick={() => setSelected(null)}
                className="p-1 text-gray-400 hover:text-gray-600"
              >
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}><path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" /></svg>
              </button>
            </div>

            <div className="p-4 bg-gray-50 text-sm">
              <p><strong>Reference:</strong> {selected.reference}</p>
              <p><strong>Date:</strong> {new Date(selected.createdAt).toLocaleString("da-DK")}</p>
              <p><strong>Created by:</strong> {selected.createdBy}</p>
            </div>

            {/* Desktop table */}
            <table className="hidden md:table w-full text-sm">
              <thead>
                <tr className="bg-gray-700 text-white">
                  <th className="px-4 py-2 text-left">Name</th>
                  <th className="px-4 py-2 text-center">Quantity</th>
                  <th className="px-4 py-2 text-left">Unit</th>
                </tr>
              </thead>
              <tbody>
                {selected.items.map((item, i) => (
                  <tr key={i} className="border-b">
                    <td className="px-4 py-2">{item.code} - {item.name}</td>
                    <td className="px-4 py-2 text-center">{item.quantity}</td>
                    <td className="px-4 py-2">{item.unit}</td>
                  </tr>
                ))}
              </tbody>
            </table>

            {/* Mobile list */}
            <div className="md:hidden divide-y">
              {selected.items.map((item, i) => (
                <div key={i} className="px-4 py-3 flex items-center justify-between">
                  <div>
                    <p className="text-sm font-medium">{item.name}</p>
                    <p className="text-xs text-gray-400">{item.code} / {item.unit}</p>
                  </div>
                  <span className="text-sm font-bold bg-gray-100 px-2.5 py-1 rounded">{item.quantity}</span>
                </div>
              ))}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}
