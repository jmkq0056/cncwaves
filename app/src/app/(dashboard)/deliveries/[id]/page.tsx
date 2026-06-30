"use client";

import { useCallback, useEffect, useState } from "react";
import { useParams, useRouter } from "next/navigation";
import Link from "next/link";

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

function imgSrc(image: string | undefined): string {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

export default function DeliveryDetailPage() {
  const { id } = useParams<{ id: string }>();
  const router = useRouter();
  const [delivery, setDelivery] = useState<Delivery | null>(null);
  const [value, setValue] = useState<ValueResp | null>(null);
  const [loading, setLoading] = useState(true);
  const [err, setErr] = useState("");
  const [msg, setMsg] = useState("");
  const [copied, setCopied] = useState(false);
  const [emailing, setEmailing] = useState(false);

  const load = useCallback(async () => {
    if (!id) return;
    setLoading(true);
    setErr("");
    try {
      const r = await fetch(`/api/deliveries/${id}`, { cache: "no-store" });
      if (!r.ok) throw new Error(await r.text());
      setDelivery(await r.json());
      // value endpoint runs in parallel — failure shouldn't block the page
      fetch(`/api/deliveries/${id}/value`)
        .then((r) => (r.ok ? r.json() : null))
        .then((v) => v && setValue(v))
        .catch(() => {});
    } catch (e: any) {
      setErr(e?.message || "Failed to load");
    } finally {
      setLoading(false);
    }
  }, [id]);

  useEffect(() => {
    load();
  }, [load]);

  async function handleCopyLink() {
    if (!delivery) return;
    const url = `${window.location.origin}/d/${delivery.shareToken}`;
    await navigator.clipboard.writeText(url);
    setCopied(true);
    setTimeout(() => setCopied(false), 2000);
  }

  async function handleEmail() {
    if (!delivery) return;
    setEmailing(true);
    setMsg("");
    const r = await fetch(`/api/deliveries/${delivery._id}/email`, { method: "POST" });
    const d = await r.json();
    setEmailing(false);
    setMsg(r.ok ? `Email sent to ${d.sentTo}` : d.error || "Failed to send email");
  }

  async function handleDelete() {
    if (!delivery) return;
    if (!confirm(`Delete delivery ${delivery.reference}?`)) return;
    const r = await fetch(`/api/deliveries/${delivery._id}`, { method: "DELETE" });
    if (r.ok) router.push("/deliveries");
    else setMsg("Failed to delete");
  }

  if (loading) {
    return (
      <div className="px-3 sm:px-6 py-12 text-center text-sm text-gray-400">Loading…</div>
    );
  }
  if (err || !delivery) {
    return (
      <div className="px-3 sm:px-6 py-12 max-w-3xl mx-auto">
        <Link href="/deliveries" className="text-xs text-gray-500 hover:text-gray-900">
          ← Back to Issuance
        </Link>
        <div className="mt-4 p-6 bg-red-50 border border-red-200 rounded-lg text-sm text-red-700">
          {err || "Not found"}
        </div>
      </div>
    );
  }

  const picked = delivery.items.filter((i) => i.status === "picked").length;
  const pending = delivery.items.filter((i) => i.status === "pending" || !i.status).length;
  const cancelled = delivery.items.filter((i) => i.status === "cancelled").length;

  return (
    <div className="px-3 sm:px-6 py-4 sm:py-6 max-w-5xl mx-auto">
      {/* Breadcrumb / back */}
      <Link href="/deliveries" className="inline-flex items-center gap-1 text-xs text-gray-500 hover:text-gray-900 mb-3">
        <svg className="w-3 h-3" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
          <path strokeLinecap="round" strokeLinejoin="round" d="M15.75 19.5L8.25 12l7.5-7.5" />
        </svg>
        Back to Issuance
      </Link>

      {/* Header */}
      <div className="flex items-start justify-between gap-3 flex-wrap mb-4">
        <div>
          <h1 className="text-xl sm:text-2xl font-bold text-gray-900 font-mono">{delivery.reference}</h1>
          <p className="text-xs text-gray-500 mt-0.5">
            {new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}{" "}
            · {delivery.createdBy}
          </p>
        </div>
        <div className="flex gap-1.5 flex-wrap">
          <button
            type="button"
            onClick={handleCopyLink}
            className="px-3 py-1.5 text-xs font-semibold text-gray-700 border border-gray-300 rounded-md hover:border-gray-900 hover:text-gray-900 transition-colors"
          >
            {copied ? "Copied ✓" : "Copy pick link"}
          </button>
          <button
            type="button"
            onClick={handleEmail}
            disabled={emailing}
            className="px-3 py-1.5 text-xs font-semibold text-gray-700 border border-gray-300 rounded-md hover:border-gray-900 hover:text-gray-900 disabled:opacity-50 transition-colors"
          >
            {emailing ? "Sending…" : "Resend email"}
          </button>
          <button
            type="button"
            onClick={handleDelete}
            className="px-3 py-1.5 text-xs font-semibold text-red-600 border border-red-200 rounded-md hover:bg-red-50 transition-colors"
          >
            Delete
          </button>
        </div>
      </div>

      {msg && (
        <div className={`mb-3 p-2.5 rounded-md text-xs ${msg.startsWith("Email sent") ? "bg-gray-900 text-white" : "bg-red-50 text-red-700"}`}>
          {msg}
        </div>
      )}

      {/* Summary chips */}
      <div className="grid grid-cols-2 sm:grid-cols-4 gap-2 mb-3">
        <Chip label="Status" value={delivery.status} />
        <Chip label="Items handled" value={`${picked} / ${delivery.items.length}`} />
        <Chip
          label="Value (incl. MOMS)"
          value={value ? `${value.grossDKK.toFixed(2)} kr` : "…"}
          accent
        />
        <Chip label="Net value" value={value ? `${value.netDKK.toFixed(2)} kr` : "…"} />
      </div>

      {/* Status tallies */}
      <div className="flex flex-wrap gap-1 text-[11px] mb-4">
        {picked > 0 && (
          <span className="px-2 py-0.5 rounded bg-gray-900 text-white font-medium">{picked} picked</span>
        )}
        {pending > 0 && (
          <span className="px-2 py-0.5 rounded bg-gray-100 text-gray-700 font-medium">{pending} pending</span>
        )}
        {cancelled > 0 && (
          <span className="px-2 py-0.5 rounded bg-gray-50 text-gray-500 font-medium line-through">{cancelled} cancelled</span>
        )}
        {value?.fxRate && (
          <span className="ml-auto text-[10px] text-gray-400 self-center">FX EUR→DKK {value.fxRate.toFixed(4)}</span>
        )}
      </div>

      {/* Items table */}
      <div className="bg-white rounded-lg border border-gray-200 overflow-hidden">
        {/* Desktop */}
        <table className="hidden md:table w-full text-sm">
          <thead>
            <tr className="bg-gray-700 text-white">
              <th className="px-3 py-2 text-left w-12"></th>
              <th className="px-4 py-2 text-left">Item</th>
              <th className="px-4 py-2 text-center">Qty</th>
              <th className="px-4 py-2 text-left">Unit</th>
              <th className="px-4 py-2 text-right">Price</th>
              <th className="px-4 py-2 text-right">Line value (incl.)</th>
              <th className="px-4 py-2 text-center">Status</th>
            </tr>
          </thead>
          <tbody>
            {delivery.items.map((item, i) => {
              const v = value?.perItem?.find(
                (p) => p.code === item.code || (item.productId && p.productId === item.productId)
              );
              return (
                <tr key={i} className="border-b last:border-b-0">
                  <td className="px-3 py-2">
                    {item.image ? (
                      <img
                        src={imgSrc(item.image)}
                        alt=""
                        className="w-10 h-10 rounded object-cover border border-gray-200"
                      />
                    ) : (
                      <div className="w-10 h-10 rounded bg-gray-100 border border-gray-200" />
                    )}
                  </td>
                  <td className="px-4 py-2">
                    <div className="text-gray-900">{item.name}</div>
                    <div className="text-[10px] text-gray-400 font-mono">{item.code}</div>
                  </td>
                  <td className="px-4 py-2 text-center font-bold tabular-nums">{item.quantity}</td>
                  <td className="px-4 py-2 text-gray-600">{item.unit}</td>
                  <td className="px-4 py-2 text-right tabular-nums">
                    {v && v.priceNet > 0 ? (
                      `${v.priceNet.toFixed(2)} ${v.priceCurrency}`
                    ) : (
                      <span className="text-gray-300 text-[10px]">No price</span>
                    )}
                  </td>
                  <td className="px-4 py-2 text-right font-semibold tabular-nums text-gray-900">
                    {v && v.lineGrossDKK > 0 ? (
                      `${v.lineGrossDKK.toFixed(2)} kr`
                    ) : (
                      <span className="text-gray-300">—</span>
                    )}
                  </td>
                  <td className="px-4 py-2 text-center text-[10px] uppercase tracking-wide">
                    {item.status === "picked" ? (
                      <span className="text-gray-900 font-semibold">picked</span>
                    ) : item.status === "cancelled" ? (
                      <span className="text-gray-400 line-through">cancelled</span>
                    ) : (
                      <span className="text-gray-500">pending</span>
                    )}
                  </td>
                </tr>
              );
            })}
          </tbody>
        </table>

        {/* Mobile */}
        <div className="md:hidden divide-y">
          {delivery.items.map((item, i) => {
            const v = value?.perItem?.find(
              (p) => p.code === item.code || (item.productId && p.productId === item.productId)
            );
            const statusLabel =
              item.status === "picked"
                ? "picked"
                : item.status === "cancelled"
                ? "cancelled"
                : "pending";
            const statusClasses =
              item.status === "picked"
                ? "bg-gray-900 text-white"
                : item.status === "cancelled"
                ? "bg-gray-50 text-gray-500 line-through"
                : "bg-gray-100 text-gray-700";
            return (
              <div key={i} className="px-3 py-3 flex items-center gap-3">
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
                  <p className="text-[11px] text-gray-400">
                    {item.code} · {item.unit}
                  </p>
                  <p className="text-[11px] mt-0.5">
                    {v && v.lineGrossDKK > 0 ? (
                      <span className="font-semibold tabular-nums text-gray-900">
                        {v.lineGrossDKK.toFixed(2)} kr
                      </span>
                    ) : (
                      <span className="text-gray-400">no price</span>
                    )}
                    <span
                      className={`ml-2 px-1.5 py-0.5 rounded text-[9px] font-medium tracking-wide ${statusClasses}`}
                    >
                      {statusLabel}
                    </span>
                  </p>
                </div>
                <span className="text-sm font-semibold bg-gray-100 px-2.5 py-1 rounded tabular-nums">
                  {item.quantity}
                </span>
              </div>
            );
          })}
        </div>
      </div>
    </div>
  );
}

function Chip({ label, value, accent }: { label: string; value: string; accent?: boolean }) {
  return (
    <div className="bg-white border border-gray-200 rounded-lg px-3 py-2">
      <div className="text-[10px] uppercase tracking-wider text-gray-500 truncate">{label}</div>
      <div
        className={`text-base sm:text-lg font-bold tabular-nums leading-tight mt-0.5 ${
          accent ? "text-gray-900" : "text-gray-900"
        }`}
      >
        {value}
      </div>
    </div>
  );
}
