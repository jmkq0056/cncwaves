import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";

// Public — no auth. Driver/receiver updates item status via shareToken.
//
// Body: { itemId, action, shareToken, pickedQuantity? }
//   - action: "picked" | "cancelled" | "pending"
//   - pickedQuantity (optional, only meaningful when action === "picked"):
//     overrides the ordered quantity. If omitted, item.pickedQuantity stays
//     as-is; if also unset, defaults to item.quantity.
//
// Stock side-effect (atomic via $inc on Product):
//   target_delta = (status === "picked") ? pickedQuantity : 0
//   diff = target_delta - currentStockDelta
//   Product.qty += diff
//   item.stockDelta = target_delta
// This makes every transition reversible and idempotent — clicking pick
// twice has no double-counting effect.
export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await connectDB();
  const { id } = await params;
  const { itemId, action, shareToken, pickedQuantity } = await req.json();

  if (!shareToken || !itemId || !["picked", "cancelled", "pending"].includes(action)) {
    return NextResponse.json({ error: "Invalid request" }, { status: 400 });
  }

  const delivery = await Delivery.findOne({ _id: id, shareToken });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  const item = delivery.items.id(itemId);
  if (!item) return NextResponse.json({ error: "Item not found" }, { status: 404 });

  // Resolve picked quantity for this transition
  if (action === "picked") {
    if (typeof pickedQuantity === "number" && Number.isFinite(pickedQuantity) && pickedQuantity >= 0) {
      item.pickedQuantity = Math.floor(pickedQuantity);
    } else if (!item.pickedQuantity || item.pickedQuantity <= 0) {
      item.pickedQuantity = item.quantity;
    }
  }

  // Apply stock diff
  const targetDelta = action === "picked" ? (item.pickedQuantity || 0) : 0;
  const currentDelta = item.stockDelta || 0;
  const diff = targetDelta - currentDelta;
  if (diff !== 0 && item.productId) {
    await Product.findByIdAndUpdate(item.productId, { $inc: { qty: diff } });
  }
  item.stockDelta = targetDelta;
  item.status = action;

  // Roll up delivery status
  const allDone = delivery.items.every((i: any) => i.status === "picked" || i.status === "cancelled");
  delivery.status = allDone ? "completed" : "in-progress";

  await delivery.save();

  return NextResponse.json({
    success: true,
    deliveryStatus: delivery.status,
    pickedQuantity: item.pickedQuantity,
    stockDelta: item.stockDelta,
  });
}
