import Product from "./models/Product";
import { EUR_TO_DKK, convert, effectiveVatRate, type Currency } from "./currency";

type DeliveryItemLike = {
  productId?: any;
  code?: string;
  name?: string;
  quantity?: number;
};

export type DeliveryValue = {
  netDKK: number;
  grossDKK: number;
  netEUR: number;
  grossEUR: number;
  fxRate: number;
  perItem: Array<{
    productId?: string;
    code?: string;
    name?: string;
    quantity: number;
    priceNet: number;
    priceCurrency: Currency;
    lineNet: number;       // in row currency
    lineGross: number;     // in row currency
    lineNetDKK: number;    // converted
    lineGrossDKK: number;  // converted
  }>;
};

// Fetch the live EUR→DKK rate from frankfurter.app (1h CDN cache).
// Falls back to the constant if unreachable.
async function liveFx(): Promise<number> {
  try {
    const r = await fetch("https://api.frankfurter.app/latest?from=EUR&to=DKK", {
      next: { revalidate: 3600 },
    });
    if (!r.ok) throw new Error("fx upstream " + r.status);
    const j = await r.json();
    const v = Number(j?.rates?.DKK);
    return Number.isFinite(v) && v > 0 ? v : EUR_TO_DKK;
  } catch {
    return EUR_TO_DKK;
  }
}

/**
 * Total VALUE of a delivery's items, looked up from current Product prices.
 *   - sums each item's quantity × priceGross in the row's currency
 *   - converts to DKK using the live FX rate (falls back to EUR_TO_DKK)
 *   - returns both net and gross totals in DKK AND EUR for convenience
 *
 * Caller responsibility: ensure Mongo is connected before calling.
 */
export async function computeDeliveryValue(
  items: DeliveryItemLike[]
): Promise<DeliveryValue> {
  const productIds = (items || [])
    .map((i) => i.productId)
    .filter(Boolean);

  const products = productIds.length
    ? await Product.find({ _id: { $in: productIds } })
        .select("_id code priceNet priceCurrency vatRate noVat")
        .lean<Array<{ _id: any; code: string; priceNet?: number; priceCurrency?: string; vatRate?: number; noVat?: boolean }>>()
    : [];
  const byId = new Map(products.map((p) => [String(p._id), p]));

  const fxRate = await liveFx();

  const perItem: DeliveryValue["perItem"] = [];
  let netDKK = 0;
  let grossDKK = 0;

  for (const it of items || []) {
    const qty = Number(it.quantity) || 0;
    const pid = it.productId ? String(it.productId) : null;
    const prod = pid ? byId.get(pid) : null;
    const priceNet = Number(prod?.priceNet) || 0;
    const rowCurrency: Currency = (prod?.priceCurrency === "EUR" ? "EUR" : "DKK");
    const vat = effectiveVatRate({
      vatRate: prod?.vatRate,
      noVat: prod?.noVat,
    });
    const lineNet = qty * priceNet;
    const lineGross = lineNet * (1 + vat);
    const lineNetDKK = convert(lineNet, rowCurrency, "DKK", fxRate);
    const lineGrossDKK = lineNetDKK * (1 + vat);
    netDKK += lineNetDKK;
    grossDKK += lineGrossDKK;
    perItem.push({
      productId: pid ?? undefined,
      code: it.code,
      name: it.name,
      quantity: qty,
      priceNet,
      priceCurrency: rowCurrency,
      lineNet,
      lineGross,
      lineNetDKK,
      lineGrossDKK,
    });
  }

  return {
    netDKK: Math.round(netDKK * 100) / 100,
    grossDKK: Math.round(grossDKK * 100) / 100,
    netEUR: Math.round((netDKK / fxRate) * 100) / 100,
    grossEUR: Math.round((grossDKK / fxRate) * 100) / 100,
    fxRate,
    perItem,
  };
}

export function formatDKK(n: number): string {
  return `${n.toFixed(2)} kr`;
}
