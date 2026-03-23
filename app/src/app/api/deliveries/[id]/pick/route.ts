import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";

// Public — no auth. Driver updates item status via shareToken
export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await connectDB();
  const { id } = await params;
  const { itemId, action, shareToken } = await req.json();

  if (!shareToken || !itemId || !["picked", "cancelled", "pending"].includes(action)) {
    return NextResponse.json({ error: "Invalid request" }, { status: 400 });
  }

  const delivery = await Delivery.findOne({ _id: id, shareToken });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  // Update item status
  const item = delivery.items.id(itemId);
  if (!item) return NextResponse.json({ error: "Item not found" }, { status: 404 });

  item.status = action;

  // Check if all items are picked or cancelled -> mark delivery completed
  const allDone = delivery.items.every((i: any) => i.status === "picked" || i.status === "cancelled");
  if (allDone) {
    delivery.status = "completed";
  } else {
    delivery.status = "in-progress";
  }

  await delivery.save();
  return NextResponse.json({ success: true, deliveryStatus: delivery.status });
}
