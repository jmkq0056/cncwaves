import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";

// Public — no auth. Get delivery by share token + mark as in-progress on
// first open. Stock-blind on purpose; the picker just confirms items.
export async function GET(_req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  if (delivery.status === "pending") {
    delivery.status = "in-progress";
    await delivery.save();
  }

  return NextResponse.json(delivery);
}

// PUT — "complete all": mark every still-pending item as picked.
export async function PUT(req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;
  const { action } = await req.json();

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  if (action === "complete") {
    for (const item of delivery.items as any[]) {
      if (item.status === "pending") {
        if (!item.pickedQuantity || item.pickedQuantity <= 0) {
          item.pickedQuantity = item.quantity;
        }
        item.status = "picked";
      }
    }
    delivery.status = "completed";
  }

  await delivery.save();
  return NextResponse.json(delivery);
}
