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
  items: DeliveryItem[];
  status: string;
  createdBy: string;
  createdAt: string;
};

export default function DeliveriesPage() {
  const [deliveries, setDeliveries] = useState<Delivery[]>([]);
  const [selected, setSelected] = useState<Delivery | null>(null);
  const [loading, setLoading] = useState(true);
  const [emailingId, setEmailingId] = useState<string | null>(null);
  const [msg, setMsg] = useState("");

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
    <div className="p-6">
      <div className="flex items-center justify-between mb-4">
        <h1 className="text-xl font-bold text-gray-800">Deliveries</h1>
        <span className="text-sm text-gray-500">{deliveries.length} entries</span>
      </div>

      {msg && (
        <div className={`mb-4 p-3 rounded text-sm ${msg.includes("sent") ? "bg-green-100 text-green-700" : "bg-red-100 text-red-700"}`}>
          {msg}
        </div>
      )}

      {/* Table */}
      <div className="bg-white rounded-lg shadow overflow-hidden">
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
              <tr>
                <td colSpan={6} className="text-center py-8 text-gray-400">Loading...</td>
              </tr>
            )}
            {!loading && deliveries.length === 0 && (
              <tr>
                <td colSpan={6} className="text-center py-8 text-gray-400">No deliveries yet</td>
              </tr>
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
                      ? "bg-green-100 text-green-700"
                      : "bg-orange-100 text-orange-700"
                  }`}>
                    {d.status}
                  </span>
                </td>
                <td className="px-4 py-3 text-right">
                  <div className="flex gap-1 justify-end">
                    <button
                      onClick={() => setSelected(d)}
                      className="px-2 py-1 bg-blue-500 text-white rounded text-xs hover:bg-blue-600"
                    >
                      View
                    </button>
                    <button
                      onClick={() => handleEmail(d._id)}
                      disabled={emailingId === d._id}
                      className="px-2 py-1 bg-green-500 text-white rounded text-xs hover:bg-green-600 disabled:opacity-50"
                    >
                      {emailingId === d._id ? "..." : "Email"}
                    </button>
                    <button
                      onClick={() => handleDelete(d._id)}
                      className="px-2 py-1 bg-red-500 text-white rounded text-xs hover:bg-red-600"
                    >
                      Delete
                    </button>
                  </div>
                </td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>

      {/* Packing List Modal */}
      {selected && (
        <div className="fixed inset-0 bg-black/50 flex items-center justify-center z-50">
          <div className="bg-white rounded-lg shadow-xl w-full max-w-lg max-h-[80vh] overflow-auto">
            <div className="flex items-center justify-between p-4 border-b">
              <h2 className="font-bold text-lg">PACKING LIST</h2>
              <button
                onClick={() => setSelected(null)}
                className="text-gray-400 hover:text-gray-600 text-xl"
              >
                x
              </button>
            </div>

            <div className="p-4 bg-gray-50 text-sm">
              <p><strong>Reference:</strong> {selected.reference}</p>
              <p><strong>Date:</strong> {new Date(selected.createdAt).toLocaleString("da-DK")}</p>
              <p><strong>Created by:</strong> {selected.createdBy}</p>
            </div>

            <table className="w-full text-sm">
              <thead>
                <tr className="bg-blue-500 text-white">
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
          </div>
        </div>
      )}
    </div>
  );
}
