import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";

// Public — no auth. Driver updates item status via shareToken.
//
// Stock is private to admins — the response NEVER includes stock numbers
// and the picker UI never reads them. But under the hood every pick still
// adjusts Product.qty atomically so the inventory equation stays correct:
//
//   Opening + Receiving (direction:"in") − Issuing (direction:"out") = Current
//
// Idempotent: stockDelta on each item tracks the currently-applied change,
// so clicking pick twice / undo / re-pick all settle correctly without
// double-counting.
//
// Body: { itemId, action, shareToken, pickedQuantity? }
//   - action: "picked" | "cancelled" | "pending"
//   - pickedQuantity (only meaningful when picked): overrides ordered qty.
//
// Negative stock is allowed silently — employees never see it. Admins
// reconcile in /stock if a recount is needed.
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

  if (action === "picked") {
    if (typeof pickedQuantity === "number" && Number.isFinite(pickedQuantity) && pickedQuantity >= 0) {
      item.pickedQuantity = Math.floor(pickedQuantity);
    } else if (!item.pickedQuantity || item.pickedQuantity <= 0) {
      item.pickedQuantity = item.quantity;
    }
  }

  // Direction decides the sign:
  //   "out" = issuing  → deduct
  //   "in"  = receiving → add
  const isIncoming = (delivery as any).direction === "in";
  const targetAmount = action === "picked" ? (item.pickedQuantity || 0) : 0;
  const currentDelta = item.stockDelta || 0;
  const diff = targetAmount - currentDelta; // positive = more activity, negative = restoring

  if (diff !== 0 && item.productId) {
    const sign = isIncoming ? 1 : -1;
    await Product.findByIdAndUpdate(item.productId, { $inc: { qty: sign * diff } });
  }
  item.stockDelta = targetAmount;
  item.status = action;

  const allDone = delivery.items.every((i: any) => i.status === "picked" || i.status === "cancelled");
  delivery.status = allDone ? "completed" : "in-progress";

  await delivery.save();

  return NextResponse.json({
    success: true,
    deliveryStatus: delivery.status,
    pickedQuantity: item.pickedQuantity,
    // intentionally NOT echoing stockDelta or Product.qty to keep employees
    // stock-blind.
  });
}
