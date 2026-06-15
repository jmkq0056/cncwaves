import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Product from "@/lib/models/Product";

// PATCH /api/products/:id/stock
// Body: { qty: number }  → set absolute stock
//   or  { delta: number } → increment/decrement
export async function PATCH(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;
  const body = await req.json();

  const hasQty = typeof body.qty === "number" && Number.isFinite(body.qty);
  const hasDelta = typeof body.delta === "number" && Number.isFinite(body.delta);

  if (!hasQty && !hasDelta) {
    return NextResponse.json({ error: "qty or delta is required" }, { status: 400 });
  }

  let updated;
  if (hasQty) {
    const qty = Math.max(0, Math.floor(body.qty));
    updated = await Product.findByIdAndUpdate(id, { qty }, { new: true }).lean();
  } else {
    const delta = Math.floor(body.delta);
    const current = await Product.findById(id).lean<{ qty?: number }>();
    if (!current) return NextResponse.json({ error: "Not found" }, { status: 404 });
    const next = Math.max(0, (current.qty ?? 0) + delta);
    updated = await Product.findByIdAndUpdate(id, { qty: next }, { new: true }).lean();
  }

  if (!updated) return NextResponse.json({ error: "Not found" }, { status: 404 });
  return NextResponse.json(updated);
}
