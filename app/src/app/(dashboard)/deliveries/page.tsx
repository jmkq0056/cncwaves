"use client";

import { useEffect, useState } from "react";

type DeliveryItem = {
  productId?: string;
  code: string;
  name: string;
  quantity: number;
  unit: string;
  note: string;
  image?: string;
  pickedQuantity?: number;
  status?: "pending" | "picked" | "cancelled";
};

function imgSrc(image: string | undefined): string {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

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
  // Server-enriched (GET /api/deliveries):
  valueNetDKK?: number;
  valueGrossDKK?: number;
  pickedCount?: number;
  pendingCount?: number;
  cancelledCount?: number;
};

type ValueResp = {
  netDKK: number;
  grossDKK: number;
  fxRate: number;
  perItem?: Array<{
    productId?: string;
    code?: string;
    name?: string;
    quantity: number;
    priceNet: number;
    priceCurrency: "DKK" | "EUR";
    lineGrossDKK: number;
  }>;
};

export default function DeliveriesPage() {
  const [deliveries, setDeliveries] = useState<Delivery[]>([]);
  const [selected, setSelected] = useState<Delivery | null>(null);
  const [value, setValue] = useState<ValueResp | null>(null);

  // Whenever a delivery is opened, fetch its computed value (qty × current
  // priceGross, FX-converted to DKK).
  useEffect(() => {
    if (!selected) { setValue(null); return; }
    let alive = true;
    setValue(null);
    fetch(`/api/deliveries/${selected._id}/value`)
      .then((r) => r.json())
      .then((v) => { if (alive) setValue(v); })
      .catch(() => {});
    return () => { alive = false; };
  }, [selected]);
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

  async function handleClearAll() {
    if (deliveries.length === 0) return;
    const phrase = `DELETE ${deliveries.length}`;
    const typed = window.prompt(
      `This deletes EVERY issuance delivery (${deliveries.length} rows). This cannot be undone.\n\n` +
      `Type the phrase below to confirm:\n\n${phrase}`
    );
    if (typed !== phrase) {
      setMsg("Clear cancelled — phrase did not match.");
      return;
    }
    const r = await fetch("/api/deliveries/clear", { method: "DELETE" });
    if (!r.ok) {
      const d = await r.json().catch(() => ({}));
      setMsg(d.error || "Failed to clear history.");
      return;
    }
    const d = await r.json();
    setDeliveries([]);
    setSelected(null);
    setMsg(`Cleared ${d.deletedCount} delivery${d.deletedCount === 1 ? "" : "s"}.`);
  }

  return (
    <div className="p-4 md:p-6">
      <div className="flex items-center justify-between mb-4 gap-3 flex-wrap">
        <div className="flex items-center gap-3">
          <h1 className="text-xl font-bold text-gray-800">Issuance</h1>
          <span className="text-sm text-gray-500">{deliveries.length} entries</span>
        </div>
        <button
          type="button"
          onClick={handleClearAll}
          disabled={deliveries.length === 0}
          className="px-3 py-1.5 text-xs font-semibold text-gray-700 border border-gray-300 rounded-md hover:border-gray-900 hover:text-gray-900 disabled:opacity-40 disabled:cursor-not-allowed transition-colors"
          title="Hard-delete every issuance row (admin only)"
        >
          Clear history
        </button>
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
              <th className="px-4 py-3 text-right">Value</th>
              <th className="px-4 py-3 text-center">Status</th>
              <th className="px-2 py-3"></th>
              <th className="px-4 py-3 text-right">Actions</th>
            </tr>
          </thead>
          <tbody>
            {loading && (
              <tr><td colSpan={8} className="text-center py-8 text-gray-400">Loading...</td></tr>
            )}
            {!loading && deliveries.length === 0 && (
              <tr><td colSpan={8} className="text-center py-8 text-gray-400">No deliveries yet</td></tr>
            )}
            {deliveries.map((d) => (
              <tr
                key={d._id}
                className="group border-b hover:bg-gray-50 cursor-pointer"
                onClick={() => setSelected(d)}
              >
                <td className="px-4 py-3 text-gray-600 tabular-nums">{new Date(d.createdAt).toLocaleString("da-DK")}</td>
                <td className="px-4 py-3 font-medium text-gray-900 font-mono">{d.reference}</td>
                <td className="px-4 py-3 text-gray-600 truncate max-w-[180px]">{d.createdBy}</td>
                <td className="px-4 py-3 text-center">
                  <ItemsProgress d={d} />
                </td>
                <td className="px-4 py-3 text-right">
                  {typeof d.valueGrossDKK === "number" && d.valueGrossDKK > 0 ? (
                    <span className="font-semibold text-gray-900 tabular-nums">{d.valueGrossDKK.toFixed(2)} kr</span>
                  ) : (
                    <span className="text-gray-300">—</span>
                  )}
                </td>
                <td className="px-4 py-3 text-center">
                  <StatusPill status={d.status} />
                </td>
                <td className="px-2 py-3 text-center text-gray-300 group-hover:text-gray-600">
                  <svg className="w-4 h-4 inline" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                    <path strokeLinecap="round" strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                  </svg>
                </td>
                <td className="px-4 py-3 text-right" onClick={(e) => e.stopPropagation()}>
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
          <div
            key={d._id}
            className="bg-white rounded-lg shadow-sm border border-gray-100 p-3 active:bg-gray-50"
            onClick={() => setSelected(d)}
          >
            <div className="flex items-start justify-between mb-1.5 gap-2">
              <div className="min-w-0 flex-1">
                <p className="font-mono text-sm font-semibold text-gray-900 truncate">{d.reference}</p>
                <p className="text-[11px] text-gray-400">{new Date(d.createdAt).toLocaleString("da-DK")}</p>
              </div>
              <div className="flex items-center gap-1.5 flex-shrink-0">
                <StatusPill status={d.status} />
                <svg className="w-4 h-4 text-gray-300" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                  <path strokeLinecap="round" strokeLinejoin="round" d="M8.25 4.5l7.5 7.5-7.5 7.5" />
                </svg>
              </div>
            </div>
            <div className="flex items-center justify-between gap-2 mb-2">
              <div className="text-[11px] text-gray-500 truncate">
                {d.createdBy}
              </div>
              {typeof d.valueGrossDKK === "number" && d.valueGrossDKK > 0 && (
                <span className="text-sm font-semibold text-gray-900 tabular-nums">{d.valueGrossDKK.toFixed(2)} kr</span>
              )}
            </div>
            <div className="flex items-center justify-between" onClick={(e) => e.stopPropagation()}>
              <div className="text-xs text-gray-500">
                <ItemsProgress d={d} />
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

              {/* Status tallies — neutral pills, no color spam */}
              {(() => {
                const picked = selected.items.filter((i) => i.status === "picked").length;
                const pending = selected.items.filter((i) => i.status === "pending" || !i.status).length;
                const cancelled = selected.items.filter((i) => i.status === "cancelled").length;
                return (
                  <div className="mt-2 flex flex-wrap gap-1 text-[11px]">
                    {picked > 0 && (
                      <span className="px-2 py-0.5 rounded bg-gray-900 text-white font-medium">
                        {picked} picked
                      </span>
                    )}
                    {pending > 0 && (
                      <span className="px-2 py-0.5 rounded bg-gray-100 text-gray-700 font-medium">
                        {pending} pending
                      </span>
                    )}
                    {cancelled > 0 && (
                      <span className="px-2 py-0.5 rounded bg-gray-50 text-gray-500 font-medium line-through">
                        {cancelled} cancelled
                      </span>
                    )}
                  </div>
                );
              })()}

              {value ? (
                <p className="mt-2 pt-2 border-t border-gray-200">
                  <strong>Value:</strong>{" "}
                  <span className="font-bold text-gray-900 tabular-nums">{value.grossDKK.toFixed(2)} kr</span>
                  <span className="text-gray-500"> · net {value.netDKK.toFixed(2)} kr</span>
                  <span className="text-[10px] text-gray-400 ml-2">FX {value.fxRate.toFixed(4)}</span>
                </p>
              ) : (
                <p className="mt-2 pt-2 border-t border-gray-200 text-gray-400">
                  <strong>Value:</strong> calculating…
                </p>
              )}
            </div>

            {/* Desktop table — per-item value from the value endpoint perItem map */}
            <table className="hidden md:table w-full text-sm">
              <thead>
                <tr className="bg-gray-700 text-white">
                  <th className="px-4 py-2 text-left w-12"></th>
                  <th className="px-4 py-2 text-left">Item</th>
                  <th className="px-4 py-2 text-center">Qty</th>
                  <th className="px-4 py-2 text-left">Unit</th>
                  <th className="px-4 py-2 text-right">Price</th>
                  <th className="px-4 py-2 text-right">Line value (incl.)</th>
                  <th className="px-4 py-2 text-center">Status</th>
                </tr>
              </thead>
              <tbody>
                {selected.items.map((item, i) => {
                  const v = value?.perItem?.find((p) => p.code === item.code || (item.productId && p.productId === item.productId));
                  return (
                    <tr key={i} className="border-b">
                      <td className="px-3 py-2">
                        {item.image ? (
                          <img
                            src={imgSrc(item.image)}
                            alt=""
                            className="w-9 h-9 rounded object-cover border border-gray-200"
                          />
                        ) : (
                          <div className="w-9 h-9 rounded bg-gray-100 border border-gray-200" />
                        )}
                      </td>
                      <td className="px-4 py-2">
                        <div className="text-gray-900">{item.name}</div>
                        <div className="text-[10px] text-gray-400 font-mono">{item.code}</div>
                      </td>
                      <td className="px-4 py-2 text-center font-bold tabular-nums">{item.quantity}</td>
                      <td className="px-4 py-2">{item.unit}</td>
                      <td className="px-4 py-2 text-right tabular-nums">
                        {v && v.priceNet > 0
                          ? `${v.priceNet.toFixed(2)} ${v.priceCurrency}`
                          : <span className="text-amber-700 text-[10px]">No price</span>}
                      </td>
                      <td className="px-4 py-2 text-right font-semibold tabular-nums text-gray-900">
                        {v && v.lineGrossDKK > 0 ? `${v.lineGrossDKK.toFixed(2)} kr` : <span className="text-gray-300">—</span>}
                      </td>
                      <td className="px-4 py-2 text-center text-[10px] uppercase tracking-wide">
                        {item.status === "picked" ? <span className="text-gray-900 font-semibold">picked</span>
                          : item.status === "cancelled" ? <span className="text-gray-400 line-through">cancelled</span>
                          : <span className="text-gray-500">pending</span>}
                      </td>
                    </tr>
                  );
                })}
              </tbody>
            </table>

            {/* Mobile list — same data, stacked */}
            <div className="md:hidden divide-y">
              {selected.items.map((item, i) => {
                const v = value?.perItem?.find((p) => p.code === item.code || (item.productId && p.productId === item.productId));
                const statusLabel =
                  item.status === "picked" ? "picked"
                  : item.status === "cancelled" ? "cancelled"
                  : "pending";
                const statusClasses =
                  item.status === "picked" ? "bg-gray-900 text-white"
                  : item.status === "cancelled" ? "bg-gray-50 text-gray-500 line-through"
                  : "bg-gray-100 text-gray-700";
                return (
                  <div key={i} className="px-4 py-3 flex items-center gap-3">
                    {item.image ? (
                      <img
                        src={imgSrc(item.image)}
                        alt=""
                        className="w-10 h-10 rounded object-cover border border-gray-200 flex-shrink-0"
                      />
                    ) : (
                      <div className="w-10 h-10 rounded bg-gray-100 border border-gray-200 flex-shrink-0" />
                    )}
                    <div className="flex-1 min-w-0">
                      <p className="text-sm font-medium truncate">{item.name}</p>
                      <p className="text-[11px] text-gray-400">{item.code} · {item.unit}</p>
                      <p className="text-[11px] mt-0.5">
                        {v && v.lineGrossDKK > 0
                          ? <span className="font-semibold tabular-nums text-gray-900">{v.lineGrossDKK.toFixed(2)} kr</span>
                          : <span className="text-gray-400">no price</span>}
                        <span className={`ml-2 px-1.5 py-0.5 rounded text-[9px] font-medium tracking-wide ${statusClasses}`}>
                          {statusLabel}
                        </span>
                      </p>
                    </div>
                    <span className="text-sm font-semibold bg-gray-100 px-2.5 py-1 rounded tabular-nums">{item.quantity}</span>
                  </div>
                );
              })}
            </div>
          </div>
        </div>
      )}
    </div>
  );
}

// ── Visual status helpers ─────────────────────────────────────────────
// Monochrome by design — one accent (brand) for completed, neutral grays
// for everything else. No dots, no colored dust.
function StatusPill({ status }: { status: string }) {
  const map: Record<string, { bg: string; text: string; label: string }> = {
    completed:     { bg: "bg-gray-900",  text: "text-white",      label: "Completed" },
    "in-progress": { bg: "bg-gray-100",  text: "text-gray-700",   label: "In progress" },
    pending:       { bg: "bg-gray-50",   text: "text-gray-500",   label: "Pending" },
  };
  const m = map[status] || { bg: "bg-gray-50", text: "text-gray-500", label: status };
  return (
    <span className={`inline-flex items-center px-2 py-0.5 rounded text-[10px] font-medium tracking-wide ${m.bg} ${m.text}`}>
      {m.label}
    </span>
  );
}

// Compact items-handled cell: just "N / T" with a thin progress bar.
// Bar uses brand for picked + neutral gray for cancelled. No green/red.
function ItemsProgress({ d }: { d: Delivery }) {
  const total = d.items?.length ?? 0;
  const picked = d.pickedCount ?? d.items?.filter((i) => i.status === "picked").length ?? 0;
  const cancelled = d.cancelledCount ?? d.items?.filter((i) => i.status === "cancelled").length ?? 0;
  if (total === 0) return <span className="text-gray-400">—</span>;
  const handledPct = ((picked + cancelled) / total) * 100;
  return (
    <div className="inline-flex flex-col items-center gap-0.5 min-w-[56px]">
      <span className="text-[11px] tabular-nums text-gray-700">
        <span className="font-semibold">{picked}</span>
        <span className="text-gray-400"> / {total}</span>
      </span>
      <span className="block w-12 h-0.5 rounded-full bg-gray-200 overflow-hidden">
        <span className="block h-full bg-gray-900" style={{ width: handledPct + "%" }} />
      </span>
    </div>
  );
}
