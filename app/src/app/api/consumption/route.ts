import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAdmin } from "@/lib/adminAuth";
import Delivery from "@/lib/models/Delivery";
import Product from "@/lib/models/Product";
import {
  EUR_TO_DKK,
  convert,
  effectiveVatRate,
  type Currency,
} from "@/lib/currency";

// GET /api/consumption?from=YYYY-MM-DD&to=YYYY-MM-DD
//
// Derived report: aggregates every PICKED line across outgoing deliveries
// (direction !== "in") in the time window, multiplies the consumed quantity
// by the CURRENT Product price, and returns one row per productId with
// net + gross totals in DKK.
//
// "Consumption" here = what physically left stock through the issuance flow.
// No separate data entry — this is pure analytics on Delivery + Product.
// Admin-only (same gate as Stock, Pricing, Purchases, Receiving).
export async function GET(req: NextRequest) {
  try {
    await requireAdmin();
  } catch {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }
  await connectDB();

  const { searchParams } = new URL(req.url);
  const fromStr = searchParams.get("from");
  const toStr = searchParams.get("to");
  const from = fromStr ? new Date(fromStr) : new Date(Date.now() - 30 * 24 * 60 * 60 * 1000);
  const to = toStr ? new Date(toStr) : new Date();
  // toStr is a date — push to the END of that day so picks at 23:59 land in
  to.setHours(23, 59, 59, 999);

  // Aggregate at the database level so this stays fast even with thousands
  // of deliveries: sum of pickedQuantity per productId, plus a count.
  const pipeline: any[] = [
    {
      $match: {
        direction: { $ne: "in" },
        createdAt: { $gte: from, $lte: to },
      },
    },
    { $unwind: "$items" },
    { $match: { "items.status": "picked", "items.productId": { $ne: null } } },
    {
      $group: {
        _id: "$items.productId",
        code: { $last: "$items.code" },
        name: { $last: "$items.name" },
        unit: { $last: "$items.unit" },
        qty: { $sum: "$items.pickedQuantity" },
        lineCount: { $sum: 1 },
        deliveryCount: { $addToSet: "$_id" },
      },
    },
    {
      $project: {
        _id: 1,
        code: 1,
        name: 1,
        unit: 1,
        qty: 1,
        lineCount: 1,
        deliveryCount: { $size: "$deliveryCount" },
      },
    },
    { $sort: { qty: -1 } },
  ];
  const groups = (await Delivery.aggregate(pipeline)) as Array<{
    _id: any;
    code?: string;
    name?: string;
    unit?: string;
    qty: number;
    lineCount: number;
    deliveryCount: number;
  }>;

  // Fetch current pricing for each productId in one round-trip
  const productIds = groups.map((g) => g._id);
  const products = productIds.length
    ? await Product.find({ _id: { $in: productIds } })
        .select("_id code name brand category unit image priceNet priceCurrency vatRate noVat")
        .lean<
          Array<{
            _id: any;
            code: string;
            name: string;
            brand?: string;
            category?: string;
            unit?: string;
            image?: string;
            priceNet?: number;
            priceCurrency?: string;
            vatRate?: number;
            noVat?: boolean;
          }>
        >()
    : [];
  const productById = new Map(products.map((p) => [String(p._id), p]));

  // Live FX (frankfurter.app, 1h CDN cache) so the report mirrors the rest
  // of the app's currency conversions.
  let fxRate = EUR_TO_DKK;
  try {
    const r = await fetch("https://api.frankfurter.app/latest?from=EUR&to=DKK", {
      next: { revalidate: 3600 },
    });
    if (r.ok) {
      const d = await r.json();
      const v = Number(d?.rates?.DKK);
      if (Number.isFinite(v) && v > 0) fxRate = v;
    }
  } catch {}

  let totalNetDKK = 0;
  let totalGrossDKK = 0;
  let unpricedCount = 0;
  const rows = groups.map((g) => {
    const p = productById.get(String(g._id));
    const priceNet = Number(p?.priceNet) || 0;
    const rowCur: Currency = (p?.priceCurrency === "EUR" ? "EUR" : "DKK");
    const vat = effectiveVatRate({ vatRate: p?.vatRate, noVat: p?.noVat });
    const lineNet = g.qty * priceNet;
    const lineGross = lineNet * (1 + vat);
    const lineNetDKK = convert(lineNet, rowCur, "DKK", fxRate);
    const lineGrossDKK = lineNetDKK * (1 + vat);
    totalNetDKK += lineNetDKK;
    totalGrossDKK += lineGrossDKK;
    if (priceNet <= 0) unpricedCount++;
    return {
      productId: String(g._id),
      code: p?.code || g.code || "",
      name: p?.name || g.name || "",
      brand: p?.brand || "",
      category: p?.category || "",
      unit: p?.unit || g.unit || "",
      image: p?.image || "",
      qty: g.qty,
      lineCount: g.lineCount,
      deliveryCount: g.deliveryCount,
      priceNet,
      priceCurrency: rowCur,
      lineNet,
      lineGross,
      lineNetDKK: Math.round(lineNetDKK * 100) / 100,
      lineGrossDKK: Math.round(lineGrossDKK * 100) / 100,
    };
  });

  return NextResponse.json({
    from: from.toISOString(),
    to: to.toISOString(),
    fxRate,
    totals: {
      lines: rows.length,
      units: rows.reduce((s, r) => s + r.qty, 0),
      netDKK: Math.round(totalNetDKK * 100) / 100,
      grossDKK: Math.round(totalGrossDKK * 100) / 100,
      unpricedCount,
    },
    rows,
  });
}
