import { DENOMINATIONS, computeTotalSales } from "@/lib/denominations";

const DATE_RE = /^\d{4}-\d{2}-\d{2}$/;

const NUMBER_FIELDS = [
  "purchases",
  "onlineSales",
  "posCash",
  "posCard",
  "kioskSales",
  "morningCash",
  "eveningCash",
] as const;

export type ValidationResult = {
  errors: string[];
  warnings: string[];
};

export function validateEntry(body: any): ValidationResult {
  const errors: string[] = [];
  const warnings: string[] = [];

  // --- Date validation ---
  if (!body.date || !DATE_RE.test(body.date)) {
    errors.push("Date must be in YYYY-MM-DD format.");
  } else {
    const parsed = new Date(body.date + "T12:00:00");
    if (isNaN(parsed.getTime())) {
      errors.push("Date is not a valid calendar date.");
    } else {
      const now = new Date();
      const tomorrow = new Date(now);
      tomorrow.setDate(tomorrow.getDate() + 1);
      const tomorrowStr = tomorrow.toISOString().slice(0, 10);
      if (body.date > tomorrowStr) {
        errors.push("Date cannot be in the future.");
      }

      const twoYearsAgo = new Date(now);
      twoYearsAgo.setFullYear(twoYearsAgo.getFullYear() - 2);
      const twoYearsAgoStr = twoYearsAgo.toISOString().slice(0, 10);
      if (body.date < twoYearsAgoStr) {
        errors.push("Date cannot be older than 2 years.");
      }
    }
  }

  // --- Number field validation ---
  for (const field of NUMBER_FIELDS) {
    const val = body[field];
    if (val !== undefined && val !== null) {
      if (typeof val !== "number" || !isFinite(val)) {
        errors.push(`${field} must be a valid number.`);
      } else if (val < 0) {
        errors.push(`${field} cannot be negative.`);
      } else if (val > 500_000) {
        errors.push(`${field} cannot exceed 500,000 kr.`);
      }
    }
  }

  // --- Denomination validation ---
  if (body.denominations && typeof body.denominations === "object") {
    for (const d of DENOMINATIONS) {
      const val = body.denominations[d.key];
      if (val !== undefined && val !== null) {
        if (typeof val !== "number" || !isFinite(val)) {
          errors.push(`Denomination ${d.label} must be a valid number.`);
        } else if (val < 0) {
          errors.push(`Denomination ${d.label} cannot be negative.`);
        } else if (val > 999) {
          errors.push(`Denomination ${d.label} count cannot exceed 999.`);
        }
      }
    }
  }

  // --- Warnings for unusual values ---
  if (errors.length === 0) {
    const totalSales = computeTotalSales({
      posCash: body.posCash || 0,
      posCard: body.posCard || 0,
      kioskSales: body.kioskSales || 0,
      onlineSales: body.onlineSales || 0,
    });

    if (totalSales > 200_000) {
      warnings.push(
        `Total sales are ${totalSales.toLocaleString("da-DK")} kr — that is unusually high. Please double-check.`
      );
    }
  }

  return { errors, warnings };
}
