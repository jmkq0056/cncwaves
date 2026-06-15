import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";

// Public — no auth. Driver updates item status via shareToken.
//
// IMPORTANT: this endpoint is stock-blind on purpose. Stock is private
// to admins; the delivery picker (employees / drivers) only confirms
// what was picked/cancelled. Receivings (admin-only, /api/receivings)
// handle the stock side of inventory.
//
// Body: { itemId, action, shareToken, pickedQuantity? }
//   - action: "picked" | "cancelled" | "pending"
//   - pickedQuantity (optional, only meaningful when action === "picked"):
//     overrides the ordered quantity. If omitted, item.pickedQuantity stays
//     as-is; if also unset, defaults to item.quantity.
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
  item.status = action;

  const allDone = delivery.items.every((i: any) => i.status === "picked" || i.status === "cancelled");
  delivery.status = allDone ? "completed" : "in-progress";

  await delivery.save();

  return NextResponse.json({
    success: true,
    deliveryStatus: delivery.status,
    pickedQuantity: item.pickedQuantity,
  });
}
