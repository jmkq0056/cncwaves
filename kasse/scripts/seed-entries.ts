import dotenv from "dotenv";
dotenv.config({ path: ".env.local" });
import mongoose from "mongoose";
import * as XLSX from "xlsx";
import * as path from "path";

const MONGO_URI = process.env.MONGO_URI!;

const CashEntrySchema = new mongoose.Schema({
  date: { type: String, required: true },
  restaurant: { type: String, default: "cnc" },
  employeeName: { type: String, default: "" },
  denominations: {
    "0.50": { type: Number, default: 0 },
    "1": { type: Number, default: 0 },
    "2": { type: Number, default: 0 },
    "5": { type: Number, default: 0 },
    "10": { type: Number, default: 0 },
    "20": { type: Number, default: 0 },
    "50": { type: Number, default: 0 },
    "100": { type: Number, default: 0 },
    "200": { type: Number, default: 0 },
    "500": { type: Number, default: 0 },
    "1000": { type: Number, default: 0 },
  },
  purchases: { type: Number, default: 0 },
  onlineSales: { type: Number, default: 0 },
  posCash: { type: Number, default: 0 },
  posCard: { type: Number, default: 0 },
  kioskSales: { type: Number, default: 0 },
  morningCash: { type: Number, default: 0 },
  eveningCash: { type: Number, default: 0 },
}, { timestamps: true });

CashEntrySchema.index({ date: 1, restaurant: 1 }, { unique: true });

const DENOM_MAP: Record<string, { key: string; multiplier: number }> = {
  "kr. 0,50": { key: "0.50", multiplier: 0.5 },
  "kr. 1": { key: "1", multiplier: 1 },
  "kr. 2": { key: "2", multiplier: 2 },
  "kr. 5": { key: "5", multiplier: 5 },
  "kr. 10": { key: "10", multiplier: 10 },
  "kr. 20": { key: "20", multiplier: 20 },
  "kr. 50": { key: "50", multiplier: 50 },
  "kr. 100": { key: "100", multiplier: 100 },
  "kr. 200": { key: "200", multiplier: 200 },
  "kr. 500": { key: "500", multiplier: 500 },
  "kr. 1000": { key: "1000", multiplier: 1000 },
};

function parseDate(val: any): string | null {
  if (!val) return null;
  if (typeof val === "number") {
    // Excel serial date
    const d = XLSX.SSF.parse_date_code(val);
    if (!d) return null;
    return `${d.y}-${String(d.m).padStart(2, "0")}-${String(d.d).padStart(2, "0")}`;
  }
  if (val instanceof Date) {
    return val.toISOString().slice(0, 10);
  }
  const s = String(val);
  const m = s.match(/(\d{4})-(\d{2})-(\d{2})/);
  if (m) return m[0];
  return null;
}

function num(val: any): number {
  if (typeof val === "number" && isFinite(val)) return val;
  const n = parseFloat(String(val));
  return isFinite(n) ? n : 0;
}

async function main() {
  console.log("Connecting to MongoDB...");
  await mongoose.connect(MONGO_URI);

  const CashEntry = mongoose.model("CashEntry", CashEntrySchema);

  const xlsxPath = path.join(__dirname, "..", "Cash reconciliation", "CNC Kasseopgørelse.xlsx");
  console.log(`Reading: ${xlsxPath}`);

  const wb = XLSX.readFile(xlsxPath);
  const ws = wb.Sheets["24-25"];
  if (!ws) {
    console.error("Sheet '24-25' not found!");
    process.exit(1);
  }

  const rows: any[] = XLSX.utils.sheet_to_json(ws, { defval: 0 });
  console.log(`Found ${rows.length} rows`);

  let imported = 0;
  let skipped = 0;

  for (const row of rows) {
    const date = parseDate(row["Dato"]);
    if (!date || date.startsWith("1970")) {
      skipped++;
      continue;
    }

    const denominations: Record<string, number> = {};
    for (const [excelCol, { key, multiplier }] of Object.entries(DENOM_MAP)) {
      const dkkValue = num(row[excelCol]);
      denominations[key] = Math.round(dkkValue / multiplier);
    }

    await CashEntry.findOneAndUpdate(
      { date, restaurant: "cnc" },
      {
        date,
        restaurant: "cnc",
        employeeName: row["Navn"] ? String(row["Navn"]) : "",
        denominations,
        purchases: num(row["Varekøb, kontantehævningerh"]),
        onlineSales: num(row["Online"]),
        posCash: num(row["Kasse (POS Kontant)"]),
        posCard: num(row["Kasse (POS Kreditkort)"]),
        kioskSales: num(row["KIOSK"]),
        morningCash: num(row["Kassebeholding morgen"]),
        eveningCash: num(row["Kassebeholding aften Optalt beholding"]),
      },
      { upsert: true }
    );
    imported++;
  }

  console.log(`Done! Imported: ${imported}, Skipped: ${skipped}`);
  await mongoose.disconnect();
}

main().catch((err) => {
  console.error("Seed failed:", err);
  process.exit(1);
});
