import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";

// Public — no auth. Driver updates item status via shareToken.
//
// Body: { itemId, action, shareToken, pickedQuantity?, override? }
//   - action: "picked" | "cancelled" | "pending"
//   - pickedQuantity (optional, only meaningful when action === "picked"):
//     overrides the ordered quantity. If omitted, item.pickedQuantity stays
//     as-is; if also unset, defaults to item.quantity.
//   - override: when true, allow Product.qty to go negative (stock mismatch
//     case — driver physically has the goods even though system shows 0).
//
// Stock side-effect (atomic via $inc on Product, DEDUCTS from stock):
//   target_removal = (status === "picked") ? pickedQuantity : 0
//   diff = target_removal - currentStockDelta   // positive = remove MORE
//   Product.qty -= diff                          // atomic via $inc
//   item.stockDelta = target_removal
// This makes every transition reversible and idempotent — clicking pick
// twice has no double-counting effect; undoing a pick restores the qty.
//
// Insufficient-stock guard:
//   If we'd take Product.qty below 0 AND override !== true, return 409
//   so the UI can ask the picker to confirm the mismatch.
export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await connectDB();
  const { id } = await params;
  const { itemId, action, shareToken, pickedQuantity, override } = await req.json();

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

  const targetRemoval = action === "picked" ? (item.pickedQuantity || 0) : 0;
  const currentDelta = item.stockDelta || 0;
  const diff = targetRemoval - currentDelta; // positive = removing more, negative = restoring

  // Pre-flight: check whether we'd take stock below 0 (only matters when REMOVING more)
  if (diff > 0 && item.productId && !override) {
    const current = await Product.findById(item.productId).select("qty").lean<{ qty?: number }>();
    const currentQty = current?.qty ?? 0;
    if (currentQty - diff < 0) {
      return NextResponse.json(
        {
          error: "Insufficient stock",
          code: "INSUFFICIENT_STOCK",
          available: currentQty,
          requested: item.pickedQuantity,
          shortage: diff - currentQty,
        },
        { status: 409 }
      );
    }
  }

  // Apply stock change (deducts on pick, restores on undo/cancel)
  if (diff !== 0 && item.productId) {
    await Product.findByIdAndUpdate(item.productId, { $inc: { qty: -diff } });
  }
  item.stockDelta = targetRemoval;
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
