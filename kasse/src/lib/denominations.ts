export const DENOMINATIONS = [
  { key: "0.50", label: "50 øre", multiplier: 0.5 },
  { key: "1", label: "1 kr", multiplier: 1 },
  { key: "2", label: "2 kr", multiplier: 2 },
  { key: "5", label: "5 kr", multiplier: 5 },
  { key: "10", label: "10 kr", multiplier: 10 },
  { key: "20", label: "20 kr", multiplier: 20 },
  { key: "50", label: "50 kr", multiplier: 50 },
  { key: "100", label: "100 kr", multiplier: 100 },
  { key: "200", label: "200 kr", multiplier: 200 },
  { key: "500", label: "500 kr", multiplier: 500 },
  { key: "1000", label: "1000 kr", multiplier: 1000 },
] as const;

export function computeCoinTotal(denoms: Record<string, number>): number {
  return DENOMINATIONS.reduce((sum, d) => sum + (denoms[d.key] || 0) * d.multiplier, 0);
}

export function computeTotalSales(e: { posCash: number; posCard: number; kioskSales: number; onlineSales: number }): number {
  return e.posCash + e.posCard + e.kioskSales + e.onlineSales;
}

export function formatDKK(amount: number): string {
  return amount.toLocaleString("da-DK", { minimumFractionDigits: 0, maximumFractionDigits: 0 }) + " kr";
}

export function toDateStr(d: Date): string {
  return d.toLocaleDateString("sv-SE", { timeZone: "Europe/Copenhagen" }); // YYYY-MM-DD
}

export function todayCPH(): string {
  return new Date().toLocaleDateString("sv-SE", { timeZone: "Europe/Copenhagen" });
}

export function getMissingDays(entries: { date: string }[], from: string, to: string): string[] {
  const existing = new Set(entries.map((e) => e.date));
  const missing: string[] = [];
  const current = new Date(from);
  const end = new Date(to);
  while (current <= end) {
    const ds = toDateStr(current);
    if (!existing.has(ds)) missing.push(ds);
    current.setDate(current.getDate() + 1);
  }
  return missing;
}
