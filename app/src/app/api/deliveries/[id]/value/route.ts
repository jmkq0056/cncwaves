import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import { computeDeliveryValue } from "@/lib/deliveryValue";

// GET /api/deliveries/:id/value — total value of the delivery
//   total = Σ(quantity × current priceGross), FX-converted to DKK.
// Auth: requires logged-in user (any role). Stock-blind in the sense
// that we don't reveal current stock counts, only the delivery's value.
export async function GET(_req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;
  const delivery = await Delivery.findById(id).lean<{ items?: any[] }>();
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });
  const value = await computeDeliveryValue(delivery.items || []);
  return NextResponse.json(value);
}
