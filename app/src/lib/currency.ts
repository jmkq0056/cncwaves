// Danish krone is pegged to EUR at the central rate ≈ 7.4604.
// This is the fallback used when the live FX API (frankfurter.app) is
// unreachable. The /api/fx endpoint fetches the live ECB rate and the
// Price page passes that into convert() at runtime.
export const EUR_TO_DKK = 7.4604;

export type Currency = "DKK" | "EUR";

export function convert(
  amount: number,
  from: Currency,
  to: Currency,
  eurToDkk: number = EUR_TO_DKK
): number {
  if (!Number.isFinite(amount)) return 0;
  if (from === to) return amount;
  const rate = Number.isFinite(eurToDkk) && eurToDkk > 0 ? eurToDkk : EUR_TO_DKK;
  if (from === "EUR" && to === "DKK") return amount * rate;
  if (from === "DKK" && to === "EUR") return amount / rate;
  return amount;
}

// Default VAT when the field is missing on the doc (e.g. seeded via raw
// bulk_write that didn't set vatRate). Mongoose schema default is 25% so
// we mirror that here — otherwise undefined-as-NaN collapses to 0 and DKK
// items look VAT-free in the UI. Pass explicit 0 + noVat=true to opt out.
const DEFAULT_VAT_RATE = 0.25;

export function effectiveVatRate(p: { vatRate?: number; noVat?: boolean }): number {
  if (p.noVat === true) return 0;
  const r = Number(p.vatRate);
  return Number.isFinite(r) ? r : DEFAULT_VAT_RATE;
}

export function netToGross(net: number, vat: number): number {
  return Math.round(net * (1 + vat) * 10000) / 10000;
}

export function grossToNet(gross: number, vat: number): number {
  if (1 + vat === 0) return gross;
  return Math.round((gross / (1 + vat)) * 10000) / 10000;
}

export function formatMoney(amount: number, currency: Currency): string {
  const fixed = amount.toFixed(2);
  return currency === "DKK" ? `${fixed} kr` : `€ ${fixed}`;
}
