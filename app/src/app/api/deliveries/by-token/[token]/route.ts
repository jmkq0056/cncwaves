import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";

// Enrich a delivery doc with current Product.qty per item so the pick UI
// can show stock + the "OUT" warning.
async function enrichWithStock(delivery: any) {
  const productIds = (delivery.items || [])
    .map((i: any) => i.productId)
    .filter(Boolean);
  if (productIds.length === 0) return delivery;
  const products = await Product.find({ _id: { $in: productIds } })
    .select("_id qty")
    .lean();
  const stockMap = new Map<string, number>(
    products.map((p: any) => [String(p._id), Number(p.qty) || 0])
  );
  const obj = typeof delivery.toObject === "function" ? delivery.toObject() : delivery;
  obj.items = (obj.items || []).map((i: any) => ({
    ...i,
    currentStock: i.productId ? stockMap.get(String(i.productId)) ?? 0 : 0,
  }));
  return obj;
}

// Public — no auth. Get delivery by share token + mark as in-progress on first open.
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

  const enriched = await enrichWithStock(delivery);
  return NextResponse.json(enriched);
}

// Complete delivery — batch-mark all still-pending items as picked AND apply
// stock for each one (mirrors the per-item /pick endpoint, idempotent).
export async function PUT(req: NextRequest, { params }: { params: Promise<{ token: string }> }) {
  await connectDB();
  const { token } = await params;
  const { action } = await req.json();

  const delivery = await Delivery.findOne({ shareToken: token });
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  if (action === "complete") {
    // "Pick All Remaining" implies override = true: if the picker hits this
    // button they're confirming everything physically left the building, even
    // if system stock disagrees. Allow Product.qty to go negative.
    for (const item of delivery.items as any[]) {
      if (item.status === "pending") {
        if (!item.pickedQuantity || item.pickedQuantity <= 0) {
          item.pickedQuantity = item.quantity;
        }
        const targetRemoval = item.pickedQuantity;
        const currentDelta = item.stockDelta || 0;
        const diff = targetRemoval - currentDelta;
        if (diff !== 0 && item.productId) {
          await Product.findByIdAndUpdate(item.productId, { $inc: { qty: -diff } });
        }
        item.stockDelta = targetRemoval;
        item.status = "picked";
      }
    }
    delivery.status = "completed";
  }

  await delivery.save();
  const enriched = await enrichWithStock(delivery);
  return NextResponse.json(enriched);
}
