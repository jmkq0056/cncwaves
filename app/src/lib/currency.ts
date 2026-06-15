// Danish krone is pegged to EUR at the central rate ≈ 7.4604.
// This is "good-enough" for accounting/inventory-value display. Change here
// if business policy wants a different conversion rate.
export const EUR_TO_DKK = 7.4604;

export type Currency = "DKK" | "EUR";

export function convert(amount: number, from: Currency, to: Currency): number {
  if (!Number.isFinite(amount)) return 0;
  if (from === to) return amount;
  if (from === "EUR" && to === "DKK") return amount * EUR_TO_DKK;
  if (from === "DKK" && to === "EUR") return amount / EUR_TO_DKK;
  return amount;
}

export function effectiveVatRate(p: { vatRate?: number; noVat?: boolean }): number {
  if (p.noVat) return 0;
  return Number(p.vatRate) || 0;
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
