import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";
import { computeDeliveryValue } from "@/lib/deliveryValue";

// Public — no auth. Picker page reads via shareToken; the response does
// NOT include any stock numbers — stock is admin-private. Stock side
// effects happen server-side only.
export async function GET(_req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  if (delivery.status === "pending") {
    delivery.status = "in-progress";
    await delivery.save();
  }

  // Attach the computed value so the pickup page can show it inline.
  const value = await computeDeliveryValue((delivery.items || []) as any[]);
  const obj = delivery.toObject();
  (obj as any).value = value;
  return NextResponse.json(obj);
}

// PUT — "complete all": mark every still-pending item as picked AND apply
// the stock effect for each one (mirrors POST /:id/pick). Sign depends on
// delivery.direction: "out" deducts, "in" adds. Idempotent via stockDelta
// per item, so re-running this won't double-count.
export async function PUT(req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;
  const { action } = await req.json();

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  if (action === "complete") {
    const isIncoming = (delivery as any).direction === "in";
    const sign = isIncoming ? 1 : -1;
    for (const item of delivery.items as any[]) {
      if (item.status === "pending") {
        if (!item.pickedQuantity || item.pickedQuantity <= 0) {
          item.pickedQuantity = item.quantity;
        }
        const targetAmount = item.pickedQuantity;
        const currentDelta = item.stockDelta || 0;
        const diff = targetAmount - currentDelta;
        if (diff !== 0 && item.productId) {
          await Product.findByIdAndUpdate(item.productId, { $inc: { qty: sign * diff } });
        }
        item.stockDelta = targetAmount;
        item.status = "picked";
      }
    }
    delivery.status = "completed";
  }

  await delivery.save();
  return NextResponse.json(delivery);
}
