import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";

// Public — no auth. Get delivery by share token + mark as in-progress on first open
export async function GET(_req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  // Mark as in-progress when first opened
  if (delivery.status === "pending") {
    delivery.status = "in-progress";
    await delivery.save();
  }

  return NextResponse.json(delivery);
}

// Complete delivery
export async function PUT(req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;
  const { action } = await req.json();

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  if (action === "complete") {
    delivery.status = "completed";
    // Mark all pending items as picked
    for (const item of delivery.items) {
      if ((item as any).status === "pending") {
        (item as any).status = "picked";
      }
    }
  }

  await delivery.save();
  return NextResponse.json(delivery);
}
