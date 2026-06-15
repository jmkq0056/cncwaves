import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Product from "@/lib/models/Product";
import { grossToNet } from "@/lib/currency";

// PATCH /api/products/:id/price
// Body fields (all optional, partial update):
//   priceNet      — number, stored as-is in the row's currency
//   priceGross    — number, server converts to net using effective VAT
//   priceCurrency — "DKK" | "EUR"
//   vatRate       — number (0..1, e.g. 0.25)
//   noVat         — boolean
// If both priceNet and priceGross are sent, priceNet wins.
export async function PATCH(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;
  const body = await req.json();

  const product = await Product.findById(id);
  if (!product) return NextResponse.json({ error: "Not found" }, { status: 404 });

  // VAT / noVat updates apply before net/gross math so we use the latest rate
  if (typeof body.noVat === "boolean") product.noVat = body.noVat;
  if (typeof body.vatRate === "number" && Number.isFinite(body.vatRate)) {
    product.vatRate = Math.max(0, Math.min(1, body.vatRate));
  }
  if (typeof body.priceCurrency === "string" && ["DKK", "EUR"].includes(body.priceCurrency)) {
    product.priceCurrency = body.priceCurrency;
  }

  const effVat = product.noVat ? 0 : Number(product.vatRate) || 0;
  if (typeof body.priceNet === "number" && Number.isFinite(body.priceNet)) {
    product.priceNet = Math.max(0, Math.round(body.priceNet * 10000) / 10000);
  } else if (typeof body.priceGross === "number" && Number.isFinite(body.priceGross)) {
    const gross = Math.max(0, body.priceGross);
    product.priceNet = Math.max(0, Math.round(grossToNet(gross, effVat) * 10000) / 10000);
  }

  await product.save();
  return NextResponse.json(product.toObject());
}
