"use client";

import { useEffect, useState } from "react";
import { useParams } from "next/navigation";

type DeliveryItem = {
  _id: string;
  code: string;
  name: string;
  unit: string;
  image: string;
  quantity: number;
  status: "pending" | "picked" | "cancelled";
};

type Delivery = {
  _id: string;
  reference: string;
  items: DeliveryItem[];
  status: string;
  createdBy: string;
  createdAt: string;
};

function imgSrc(image: string) {
  if (!image) return "";
  if (image.startsWith("http")) return image;
  return `/assets/${image}`;
}

export default function DriverPickPage() {
  const { token } = useParams();
  const [delivery, setDelivery] = useState<Delivery | null>(null);
  const [loading, setLoading] = useState(true);
  const [error, setError] = useState("");
  const [tab, setTab] = useState<"remaining" | "done">("remaining");
  const [viewImage, setViewImage] = useState<string | null>(null);
  const [updating, setUpdating] = useState<string | null>(null);

  async function loadDelivery() {
    const res = await fetch(`/api/deliveries/by-token/${token}`);
    if (res.ok) {
      setDelivery(await res.json());
    } else {
      setError("Delivery not found");
    }
    setLoading(false);
  }

  useEffect(() => {
    loadDelivery();
  }, [token]);

  async function updateItem(itemId: string, action: "picked" | "cancelled" | "pending") {
    if (!delivery) return;
    setUpdating(itemId);
    await fetch(`/api/deliveries/${delivery._id}/pick`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ itemId, action, shareToken: token }),
    });
    await loadDelivery();
    setUpdating(null);
  }

  async function completeAll() {
    if (!delivery) return;
    await fetch(`/api/deliveries/by-token/${token}`, {
      method: "PUT",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify({ action: "complete" }),
    });
    await loadDelivery();
  }

  if (loading) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <p className="text-gray-400">Loading delivery...</p>
      </div>
    );
  }

  if (error || !delivery) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center">
        <p className="text-red-500">{error || "Not found"}</p>
      </div>
    );
  }

  const remaining = delivery.items.filter((i) => i.status === "pending");
  const done = delivery.items.filter((i) => i.status === "picked" || i.status === "cancelled");
  const isCompleted = delivery.status === "completed";

  return (
    <div className="min-h-screen bg-gray-50">
      {/* Header - sticky */}
      <div className="sticky top-0 z-30 bg-[#1e293b] text-white">
        <div className="px-4 py-3">
          <div className="flex items-center justify-between">
            <div>
              <h1 className="font-bold text-sm">{delivery.reference}</h1>
              <p className="text-[10px] text-gray-400">
                {new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}
              </p>
            </div>
            <div className="text-right">
              <span className={`text-xs px-2 py-1 rounded font-medium ${
                isCompleted ? "bg-green-500" : remaining.length === 0 ? "bg-green-500" : "bg-brand"
              }`}>
                {isCompleted ? "Completed" : `${remaining.length} remaining`}
              </span>
            </div>
          </div>

          {/* Complete all button - always visible at top */}
          {!isCompleted && remaining.length > 0 && (
            <button
              onClick={completeAll}
              className="w-full mt-2 py-2.5 bg-green-500 text-white rounded-lg font-medium text-sm hover:bg-green-600"
            >
              Mark All as Picked ({remaining.length} items)
            </button>
          )}
        </div>

        {/* Tabs */}
        <div className="flex border-t border-white/10">
          <button
            onClick={() => setTab("remaining")}
            className={`flex-1 py-2 text-sm font-medium transition-colors ${
              tab === "remaining" ? "text-white border-b-2 border-brand" : "text-gray-400"
            }`}
          >
            Remaining ({remaining.length})
          </button>
          <button
            onClick={() => setTab("done")}
            className={`flex-1 py-2 text-sm font-medium transition-colors ${
              tab === "done" ? "text-white border-b-2 border-green-400" : "text-gray-400"
            }`}
          >
            Done ({done.length})
          </button>
        </div>
      </div>

      {/* Item list */}
      <div className="pb-20">
        {tab === "remaining" && remaining.length === 0 && (
          <div className="text-center py-12">
            <div className="w-16 h-16 bg-green-100 rounded-full flex items-center justify-center mx-auto mb-3">
              <svg className="w-8 h-8 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
              </svg>
            </div>
            <p className="text-green-600 font-medium">All items picked!</p>
          </div>
        )}

        {tab === "done" && done.length === 0 && (
          <p className="text-center py-12 text-gray-400 text-sm">No items picked yet</p>
        )}

        {(tab === "remaining" ? remaining : done).map((item) => (
          <div
            key={item._id}
            className={`flex items-center gap-3 px-4 py-3 border-b bg-white ${
              item.status === "cancelled" ? "opacity-50" : ""
            }`}
          >
            {/* Image */}
            <button
              onClick={() => item.image ? setViewImage(imgSrc(item.image)) : null}
              className="w-14 h-14 rounded-lg overflow-hidden bg-gray-100 flex-shrink-0 flex items-center justify-center"
            >
              {item.image ? (
                <img src={imgSrc(item.image)} alt="" className="w-full h-full object-cover" />
              ) : (
                <span className="text-gray-300 text-xs">--</span>
              )}
            </button>

            {/* Info */}
            <div className="flex-1 min-w-0">
              <p className={`text-sm font-medium ${item.status === "cancelled" ? "line-through text-gray-400" : "text-gray-800"}`}>
                {item.name}
              </p>
              <p className="text-xs text-gray-400">{item.code} - {item.quantity} {item.unit}</p>
            </div>

            {/* Actions */}
            {item.status === "pending" && (
              <div className="flex gap-1.5 flex-shrink-0">
                <button
                  onClick={() => updateItem(item._id, "picked")}
                  disabled={updating === item._id}
                  className="w-10 h-10 rounded-lg bg-green-500 text-white flex items-center justify-center hover:bg-green-600 disabled:opacity-50"
                >
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
                    <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
                  </svg>
                </button>
                <button
                  onClick={() => updateItem(item._id, "cancelled")}
                  disabled={updating === item._id}
                  className="w-10 h-10 rounded-lg bg-red-100 text-red-500 flex items-center justify-center hover:bg-red-200 disabled:opacity-50"
                >
                  <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
                    <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
                  </svg>
                </button>
              </div>
            )}

            {item.status === "picked" && (
              <div className="flex items-center gap-1.5">
                <span className="text-green-500 text-xs font-medium">Picked</span>
                <button
                  onClick={() => updateItem(item._id, "pending")}
                  className="text-gray-400 text-xs hover:text-gray-600"
                >
                  Undo
                </button>
              </div>
            )}

            {item.status === "cancelled" && (
              <div className="flex items-center gap-1.5">
                <span className="text-red-400 text-xs font-medium">Skipped</span>
                <button
                  onClick={() => updateItem(item._id, "pending")}
                  className="text-gray-400 text-xs hover:text-gray-600"
                >
                  Undo
                </button>
              </div>
            )}
          </div>
        ))}
      </div>

      {/* Image viewer modal */}
      {viewImage && (
        <div
          className="fixed inset-0 bg-black/80 z-50 flex items-center justify-center p-4"
          onClick={() => setViewImage(null)}
        >
          <img src={viewImage} alt="" className="max-w-full max-h-full object-contain rounded-lg" />
        </div>
      )}
    </div>
  );
}
