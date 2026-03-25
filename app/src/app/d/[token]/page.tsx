"use client";

import { useEffect, useState, useCallback } from "react";
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
  const [viewImage, setViewImage] = useState<string | null>(null);
  const [updating, setUpdating] = useState<string | null>(null);

  const loadDelivery = useCallback(async () => {
    const res = await fetch(`/api/deliveries/by-token/${token}`);
    if (res.ok) {
      setDelivery(await res.json());
    } else {
      setError("Delivery not found");
    }
    setLoading(false);
  }, [token]);

  useEffect(() => {
    loadDelivery();
  }, [loadDelivery]);

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
        <div className="text-center">
          <div className="w-8 h-8 border-2 border-brand border-t-transparent rounded-full animate-spin mx-auto mb-3" />
          <p className="text-gray-400 text-sm">Loading delivery...</p>
        </div>
      </div>
    );
  }

  if (error || !delivery) {
    return (
      <div className="min-h-screen bg-gray-50 flex items-center justify-center px-4">
        <div className="text-center">
          <div className="w-14 h-14 bg-red-100 rounded-full flex items-center justify-center mx-auto mb-3">
            <svg className="w-7 h-7 text-red-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M12 9v3.75m9-.75a9 9 0 11-18 0 9 9 0 0118 0zm-9 3.75h.008v.008H12v-.008z" />
            </svg>
          </div>
          <p className="text-red-600 font-medium">{error || "Not found"}</p>
        </div>
      </div>
    );
  }

  const remaining = delivery.items.filter((i) => i.status === "pending");
  const picked = delivery.items.filter((i) => i.status === "picked");
  const cancelled = delivery.items.filter((i) => i.status === "cancelled");
  const isCompleted = delivery.status === "completed" || remaining.length === 0;

  return (
    <div className="min-h-screen bg-gray-50 flex flex-col">
      {/* Sticky header */}
      <div className="sticky top-0 z-30 bg-[#1e293b] text-white shadow-lg">
        <div className="px-4 py-3">
          <div className="flex items-center justify-between">
            <div>
              <h1 className="font-bold text-sm">{delivery.reference}</h1>
              <p className="text-[10px] text-gray-400">
                {new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}
              </p>
            </div>
            <span className={`text-xs px-2.5 py-1 rounded-full font-medium ${
              isCompleted ? "bg-green-500" : "bg-brand"
            }`}>
              {isCompleted ? "Completed" : `${remaining.length} left`}
            </span>
          </div>

          {/* Complete all — always at top */}
          {!isCompleted && (
            <button
              onClick={completeAll}
              className="w-full mt-2 py-3 bg-green-500 text-white rounded-lg font-bold text-sm hover:bg-green-600 active:bg-green-700"
            >
              Pick All Remaining ({remaining.length})
            </button>
          )}
        </div>
      </div>

      {/* Content */}
      <div className="flex-1 flex flex-col">
        {/* Remaining items */}
        {remaining.length > 0 && (
          <div>
            <div className="px-4 py-2 bg-brand/10 border-b">
              <p className="text-xs font-bold text-brand uppercase">Remaining ({remaining.length})</p>
            </div>
            {remaining.map((item) => (
              <ItemRow
                key={item._id}
                item={item}
                updating={updating}
                onPick={() => updateItem(item._id, "picked")}
                onCancel={() => updateItem(item._id, "cancelled")}
                onUndo={() => updateItem(item._id, "pending")}
                onImageClick={() => item.image && setViewImage(imgSrc(item.image))}
              />
            ))}
          </div>
        )}

        {/* Completed banner when all done */}
        {isCompleted && (
          <div className="px-4 py-4 bg-green-50 border-b flex items-center gap-3">
            <div className="w-10 h-10 bg-green-500 rounded-full flex items-center justify-center flex-shrink-0">
              <svg className="w-6 h-6 text-white" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
                <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
              </svg>
            </div>
            <div>
              <p className="font-bold text-green-700">All items handled</p>
              <p className="text-xs text-green-600">{picked.length} picked, {cancelled.length} skipped</p>
            </div>
          </div>
        )}

        {/* Done items — always show */}
        {(picked.length > 0 || cancelled.length > 0) && (
          <div className="flex-1">
            <div className="px-4 py-2 bg-gray-100 border-b">
              <p className="text-xs font-bold text-gray-500 uppercase">Done ({picked.length + cancelled.length})</p>
            </div>
            <div className="overflow-auto">
              {picked.map((item) => (
                <ItemRow
                  key={item._id}
                  item={item}
                  updating={updating}
                  onPick={() => {}}
                  onCancel={() => {}}
                  onUndo={() => updateItem(item._id, "pending")}
                  onImageClick={() => item.image && setViewImage(imgSrc(item.image))}
                />
              ))}
              {cancelled.map((item) => (
                <ItemRow
                  key={item._id}
                  item={item}
                  updating={updating}
                  onPick={() => {}}
                  onCancel={() => {}}
                  onUndo={() => updateItem(item._id, "pending")}
                  onImageClick={() => item.image && setViewImage(imgSrc(item.image))}
                />
              ))}
            </div>
          </div>
        )}
      </div>

      {/* Image viewer */}
      {viewImage && (
        <div
          className="fixed inset-0 bg-black/90 z-50 flex items-center justify-center p-4"
          onClick={() => setViewImage(null)}
        >
          <button className="absolute top-4 right-4 text-white/70 hover:text-white">
            <svg className="w-8 h-8" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
          <img src={viewImage} alt="" className="max-w-full max-h-full object-contain rounded-lg" />
        </div>
      )}
    </div>
  );
}

function ItemRow({
  item,
  updating,
  onPick,
  onCancel,
  onUndo,
  onImageClick,
}: {
  item: DeliveryItem;
  updating: string | null;
  onPick: () => void;
  onCancel: () => void;
  onUndo: () => void;
  onImageClick: () => void;
}) {
  const isPending = item.status === "pending";
  const isPicked = item.status === "picked";
  const isCancelled = item.status === "cancelled";

  return (
    <div className={`flex items-center gap-3 px-4 py-3 border-b bg-white ${isCancelled ? "opacity-50" : ""}`}>
      {/* Image */}
      <button
        onClick={onImageClick}
        className="w-12 h-12 rounded-lg overflow-hidden bg-gray-100 flex-shrink-0 flex items-center justify-center border"
      >
        {item.image ? (
          <img src={imgSrc(item.image)} alt="" className="w-full h-full object-cover" />
        ) : (
          <span className="text-gray-300 text-[8px]">--</span>
        )}
      </button>

      {/* Qty block */}
      <div className={`flex-shrink-0 w-12 h-12 rounded-lg flex flex-col items-center justify-center ${
        isCancelled ? "bg-gray-100" : "bg-gray-100 border border-gray-300"
      }`}>
        <span className={`text-lg font-black leading-none ${isCancelled ? "text-gray-400" : "text-gray-700"}`}>
          {item.quantity}
        </span>
        <span className={`text-[8px] font-medium uppercase leading-tight mt-0.5 max-w-[44px] truncate text-center ${isCancelled ? "text-gray-400" : "text-gray-400"}`}>
          {item.unit}
        </span>
      </div>

      {/* Info */}
      <div className="flex-1 min-w-0">
        <p className={`text-sm font-medium leading-tight ${isCancelled ? "line-through text-gray-400" : "text-gray-800"}`}>
          {item.name}
        </p>
        <p className="text-[10px] text-gray-400 mt-0.5">{item.code}</p>
      </div>

      {/* Actions */}
      {isPending && (
        <div className="flex gap-2 flex-shrink-0">
          <button
            onClick={onPick}
            disabled={updating === item._id}
            className="w-11 h-11 rounded-xl bg-green-500 text-white flex items-center justify-center hover:bg-green-600 active:bg-green-700 disabled:opacity-50 shadow-sm"
          >
            <svg className="w-6 h-6" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
            </svg>
          </button>
          <button
            onClick={onCancel}
            disabled={updating === item._id}
            className="w-11 h-11 rounded-xl bg-gray-100 text-red-500 flex items-center justify-center hover:bg-red-50 active:bg-red-100 disabled:opacity-50"
          >
            <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M6 18L18 6M6 6l12 12" />
            </svg>
          </button>
        </div>
      )}

      {isPicked && (
        <div className="flex items-center gap-2 flex-shrink-0">
          <span className="w-8 h-8 rounded-full bg-green-100 flex items-center justify-center">
            <svg className="w-4 h-4 text-green-500" fill="none" stroke="currentColor" viewBox="0 0 24 24" strokeWidth={2.5}>
              <path strokeLinecap="round" strokeLinejoin="round" d="M4.5 12.75l6 6 9-13.5" />
            </svg>
          </span>
          <button onClick={onUndo} className="text-[10px] text-gray-400 hover:text-gray-600 underline">
            Undo
          </button>
        </div>
      )}

      {isCancelled && (
        <div className="flex items-center gap-2 flex-shrink-0">
          <span className="text-[10px] text-red-400 font-medium">Skipped</span>
          <button onClick={onUndo} className="text-[10px] text-gray-400 hover:text-gray-600 underline">
            Undo
          </button>
        </div>
      )}
    </div>
  );
}
