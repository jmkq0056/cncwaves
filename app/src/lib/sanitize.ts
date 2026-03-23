/**
 * Sanitization & formatting for form field values.
 * Ensures data is clean, consistent, and ready for stats aggregation.
 */

// Strip HTML tags
function stripHtml(s: string): string {
  return s.replace(/<[^>]*>/g, "");
}

// Title case: "john doe" -> "John Doe"
function titleCase(s: string): string {
  return s
    .toLowerCase()
    .split(" ")
    .map((w) => (w.length > 0 ? w[0].toUpperCase() + w.slice(1) : ""))
    .join(" ");
}

// Sanitize a text field (names, general text)
export function sanitizeText(value: unknown, maxLen = 200): string {
  if (value === null || value === undefined) return "";
  return stripHtml(String(value)).trim().slice(0, maxLen);
}

// Sanitize a name field — title case, no numbers, trimmed
export function sanitizeName(value: unknown): string {
  if (value === null || value === undefined) return "";
  let s = stripHtml(String(value)).trim();
  // Remove digits
  s = s.replace(/[0-9]/g, "").trim();
  // Collapse multiple spaces
  s = s.replace(/\s+/g, " ");
  return titleCase(s).slice(0, 100);
}

// Sanitize a quantity field — extract number, ensure non-negative, max 99999
export function sanitizeQty(value: unknown): string {
  if (value === null || value === undefined) return "0";
  const s = String(value).trim();
  // Extract first number (int or float)
  const match = s.match(/-?\d+(\.\d+)?/);
  if (!match) return "0";
  let num = parseFloat(match[0]);
  if (isNaN(num) || num < 0) num = 0;
  if (num > 99999) num = 99999;
  // Return as integer string if whole number, else 1 decimal
  return Number.isInteger(num) ? String(num) : num.toFixed(1);
}

// Sanitize email
export function sanitizeEmail(value: unknown): string {
  if (value === null || value === undefined) return "";
  const s = stripHtml(String(value)).trim().toLowerCase();
  return s.slice(0, 254);
}

// Sanitize phone — digits only, allow + prefix
export function sanitizePhone(value: unknown): string {
  if (value === null || value === undefined) return "";
  let s = String(value).trim();
  const hasPlus = s.startsWith("+");
  s = s.replace(/[^\d]/g, "");
  if (hasPlus) s = "+" + s;
  return s.slice(0, 20);
}

// Sanitize CPR/ID number — digits and dashes only
export function sanitizeCPR(value: unknown): string {
  if (value === null || value === undefined) return "";
  return String(value).trim().replace(/[^\d-]/g, "").slice(0, 20);
}

// Sanitize bank account/reg number — digits only
export function sanitizeBankNumber(value: unknown): string {
  if (value === null || value === undefined) return "";
  return String(value).trim().replace(/[^\d]/g, "").slice(0, 30);
}

// Sanitize a select field value — must match one of the options
export function sanitizeSelect(value: unknown, options: string[]): string {
  if (value === null || value === undefined) return "";
  const s = String(value).trim();
  if (options.includes(s)) return s;
  return "";
}

// Sanitize datetime — ensure valid ISO-ish format
export function sanitizeDatetime(value: unknown): string {
  if (value === null || value === undefined) return "";
  const s = String(value).trim();
  // Try parsing
  const d = new Date(s);
  if (isNaN(d.getTime())) return "";
  return d.toISOString();
}

// Sanitize date only
export function sanitizeDate(value: unknown): string {
  if (value === null || value === undefined) return "";
  const s = String(value).trim();
  const d = new Date(s);
  if (isNaN(d.getTime())) return "";
  return d.toISOString().split("T")[0];
}

// Sanitize a file URL (must be cloudinary or empty)
export function sanitizeFileUrl(value: unknown): string {
  if (value === null || value === undefined) return "";
  const s = String(value).trim();
  if (s.startsWith("https://res.cloudinary.com/")) return s;
  return "";
}

// Sanitize textarea — longer text, strip HTML
export function sanitizeTextarea(value: unknown): string {
  if (value === null || value === undefined) return "";
  return stripHtml(String(value)).trim().slice(0, 5000);
}

// Sanitize checkbox values (comma-separated options)
export function sanitizeCheckbox(value: unknown, options?: string[]): string {
  if (value === null || value === undefined) return "";
  const s = String(value).trim();
  if (!options) return s === "true" ? "true" : "false";
  // Validate each comma-separated value
  const parts = s.split(",").map((p) => p.trim()).filter(Boolean);
  const valid = parts.filter((p) => options.includes(p));
  return valid.join(", ");
}

/**
 * Master sanitizer — picks the right sanitizer based on field config.
 * Field name patterns are used for extra context (e.g. fields ending in _qty get number sanitization).
 */
export function sanitizeField(
  fieldName: string,
  fieldType: string,
  value: unknown,
  options?: string[]
): string {
  // File uploads
  if (fieldType === "file") return sanitizeFileUrl(value);

  // Select fields
  if (fieldType === "select" && options) return sanitizeSelect(value, options);

  // Checkbox fields
  if (fieldType === "checkbox") return sanitizeCheckbox(value, options);

  // Email
  if (fieldType === "email") return sanitizeEmail(value);

  // Phone/tel
  if (fieldType === "tel") return sanitizePhone(value);

  // Datetime
  if (fieldType === "datetime") return sanitizeDatetime(value);

  // Date
  if (fieldType === "date") return sanitizeDate(value);

  // Number
  if (fieldType === "number") return sanitizeQty(value);

  // Textarea
  if (fieldType === "textarea") return sanitizeTextarea(value);

  // Name-like fields
  const namePatterns = ["name", "navn", "full_name", "first_name", "surname", "handler_name", "employee_name", "your_name", "customer_name", "fulde_navn"];
  if (namePatterns.some((p) => fieldName === p || fieldName.endsWith("_name"))) {
    return sanitizeName(value);
  }

  // Quantity fields (ending in _qty)
  if (fieldName.endsWith("_qty")) return sanitizeQty(value);

  // CPR fields
  if (fieldName.includes("cpr")) return sanitizeCPR(value);

  // Bank fields
  if (fieldName.includes("bank_")) return sanitizeBankNumber(value);

  // Phone fields
  if (fieldName.includes("tlf") || fieldName.includes("phone")) return sanitizePhone(value);

  // Default: plain text
  return sanitizeText(value);
}
