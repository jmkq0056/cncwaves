import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import { requireAdminOrCron } from "@/lib/cronAuth";
import Product from "@/lib/models/Product";
import StockSnapshot from "@/lib/models/StockSnapshot";

// GET — list snapshots (admin only). Returns lean metadata (no items array)
// for fast paginated load; fetch a single snapshot by id for the items list.
export async function GET(req: NextRequest) {
  await requireAuth();
  await connectDB();
  const { searchParams } = new URL(req.url);
  const limit = Math.min(parseInt(searchParams.get("limit") || "50", 10), 200);
  const from = searchParams.get("from");
  const to = searchParams.get("to");

  const where: any = {};
  if (from || to) {
    where.capturedAt = {};
    if (from) where.capturedAt.$gte = new Date(from);
    if (to) where.capturedAt.$lte = new Date(to);
  }

  const docs = await StockSnapshot.find(where)
    .select("capturedAt source label triggeredBy totals createdAt")
    .sort({ capturedAt: -1 })
    .limit(limit)
    .lean();

  return NextResponse.json(docs);
}

// POST — capture a snapshot of current Product.qty across all products.
// Auth: admin session OR `Authorization: Bearer $CRON_SECRET` (Hetzner cron).
// Body (all optional): { source, label }
export async function POST(req: NextRequest) {
  let auth;
  try {
    auth = await requireAdminOrCron(req);
  } catch {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  await connectDB();

  const body = await req.json().catch(() => ({}));
  const source: string = ["manual", "daily", "hourly", "interval", "delivery"].includes(body.source)
    ? body.source
    : auth.kind === "cron"
    ? "daily"
    : "manual";
  const label: string = typeof body.label === "string" ? body.label.slice(0, 120) : "";

  const products = await Product.find()
    .select("_id code name brand category unit qty priceNet priceCurrency vatRate noVat")
    .lean();

  const items = products.map((p: any) => ({
    productId: p._id,
    code: p.code,
    name: p.name,
    brand: p.brand,
    category: p.category,
    unit: p.unit,
    qty: Number(p.qty) || 0,
    priceNet: Number(p.priceNet) || 0,
    priceCurrency: p.priceCurrency || "DKK",
    vatRate: typeof p.vatRate === "number" ? p.vatRate : 0.25,
    noVat: !!p.noVat,
  }));

  const totalUnits = items.reduce((s, i) => s + i.qty, 0);
  const outOfStockCount = items.filter((i) => i.qty <= 0).length;
  const negativeCount = items.filter((i) => i.qty < 0).length;

  const snapshot = await StockSnapshot.create({
    capturedAt: new Date(),
    source,
    label,
    triggeredBy: auth.email,
    items,
    totals: {
      itemCount: items.length,
      totalUnits,
      outOfStockCount,
      negativeCount,
    },
  });

  return NextResponse.json(
    {
      _id: snapshot._id,
      capturedAt: snapshot.capturedAt,
      source: snapshot.source,
      label: snapshot.label,
      triggeredBy: snapshot.triggeredBy,
      totals: snapshot.totals,
    },
    { status: 201 }
  );
}
