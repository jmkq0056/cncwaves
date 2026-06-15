import { jsPDF } from "jspdf";
import {
  EUR_TO_DKK,
  convert,
  effectiveVatRate,
  formatMoney,
  netToGross,
  type Currency,
} from "./currency";

export type StockReportItem = {
  code?: string;
  name?: string;
  brand?: string;
  category?: string;
  unit?: string;
  qty?: number;
  priceNet?: number;
  priceCurrency?: Currency;
  vatRate?: number;
  noVat?: boolean;
};

export type StockReportInput = {
  title: string;
  capturedAt: Date | string;
  source?: string;
  label?: string;
  triggeredBy?: string;
  displayCurrency?: Currency;
  eurToDkk?: number;
  items: StockReportItem[];
};

/**
 * Builds a mobile-friendly multi-page PDF:
 *   • Page 1: cover / front matter — big summary stats (items, units,
 *     inventory value net & gross in chosen currency, out-of-stock,
 *     top categories by value).
 *   • Page 2+: detailed table grouped by category, with price (gross),
 *     line value, alternating row backgrounds and a footer with pagination.
 */
export function buildStockReportPdf(input: StockReportInput): jsPDF {
  const doc = new jsPDF({ format: "a4", unit: "mm", orientation: "portrait" });
  const pageWidth = doc.internal.pageSize.getWidth();
  const pageHeight = doc.internal.pageSize.getHeight();
  const left = 12;
  const right = pageWidth - 12;

  const displayCurrency: Currency = input.displayCurrency || "DKK";
  const eurToDkk: number = Number.isFinite(input.eurToDkk) && (input.eurToDkk as number) > 0
    ? (input.eurToDkk as number)
    : EUR_TO_DKK;

  const capturedAt = new Date(input.capturedAt);
  const capturedAtLabel = capturedAt.toLocaleString("da-DK", {
    timeZone: "Europe/Copenhagen",
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });

  const items = input.items.slice().sort((a, b) => {
    const c = (a.category || "").localeCompare(b.category || "");
    if (c !== 0) return c;
    return (a.name || "").localeCompare(b.name || "");
  });

  // Enriched per-row computations: gross price + line value in display currency
  const rows = items.map((it) => {
    const qty = Number(it.qty) || 0;
    const priceNet = Number(it.priceNet) || 0;
    const rowCurrency: Currency = (it.priceCurrency as Currency) || "DKK";
    const vat = effectiveVatRate({ vatRate: it.vatRate, noVat: it.noVat });
    const priceGrossRow = netToGross(priceNet, vat);
    const priceGrossDisplayed = convert(priceGrossRow, rowCurrency, displayCurrency, eurToDkk);
    const lineNetDisplayed = convert(qty * priceNet, rowCurrency, displayCurrency, eurToDkk);
    const lineGrossDisplayed = lineNetDisplayed * (1 + vat);
    return {
      ...it,
      qty,
      priceNet,
      vat,
      priceGrossDisplayed,
      lineNetDisplayed,
      lineGrossDisplayed,
    };
  });

  const totalUnits = rows.reduce((s, r) => s + r.qty, 0);
  const valueNet = rows.reduce((s, r) => s + r.lineNetDisplayed, 0);
  const valueGross = rows.reduce((s, r) => s + r.lineGrossDisplayed, 0);
  const outCount = rows.filter((r) => r.qty <= 0).length;
  const negCount = rows.filter((r) => r.qty < 0).length;
  const unpricedCount = rows.filter((r) => r.priceNet <= 0).length;

  // Category roll-ups for the cover page
  const catTotals = new Map<string, { units: number; value: number }>();
  for (const r of rows) {
    const k = r.category || "Uncategorized";
    const acc = catTotals.get(k) || { units: 0, value: 0 };
    acc.units += r.qty;
    acc.value += r.lineGrossDisplayed;
    catTotals.set(k, acc);
  }
  const topCats = Array.from(catTotals.entries())
    .sort((a, b) => b[1].value - a[1].value)
    .slice(0, 6);

  // ═══════════════════════════════════════════════════════════════════════
  // PAGE 1 — Cover / front matter
  // ═══════════════════════════════════════════════════════════════════════
  doc.setFillColor(241, 125, 0);
  doc.rect(0, 0, pageWidth, 38, "F");
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(22);
  doc.setFont("helvetica", "bold");
  doc.text(input.title.toUpperCase(), left, 18);
  doc.setFontSize(11);
  doc.setFont("helvetica", "normal");
  doc.text(capturedAtLabel, left, 28);
  doc.setFontSize(8);
  doc.text("CNC Manager · Stock", right, 28, { align: "right" });

  let y = 50;
  doc.setTextColor(50, 50, 50);
  const meta: string[] = [];
  if (input.source) meta.push(`Source: ${input.source}`);
  if (input.label) meta.push(`Label: ${input.label}`);
  if (input.triggeredBy) meta.push(`By: ${input.triggeredBy}`);
  meta.push(`FX EUR→DKK ${eurToDkk.toFixed(4)}`);
  doc.setFontSize(9);
  doc.text(meta.join("   ·   "), left, y);
  y += 8;

  // Big-stat grid (2×3) of summary cards
  const cardW = (right - left - 6) / 3;
  const cardH = 26;
  const drawCard = (idx: number, label: string, value: string, sub?: string, accent?: [number, number, number]) => {
    const col = idx % 3;
    const row = Math.floor(idx / 3);
    const x = left + col * (cardW + 3);
    const yy = y + row * (cardH + 4);
    doc.setDrawColor(225, 225, 225);
    doc.setFillColor(252, 252, 252);
    doc.roundedRect(x, yy, cardW, cardH, 2, 2, "FD");
    doc.setFontSize(7);
    doc.setTextColor(140, 140, 140);
    doc.text(label.toUpperCase(), x + 4, yy + 6);
    doc.setFontSize(18);
    doc.setFont("helvetica", "bold");
    doc.setTextColor(accent ? accent[0] : 30, accent ? accent[1] : 30, accent ? accent[2] : 30);
    doc.text(value, x + 4, yy + 18);
    if (sub) {
      doc.setFontSize(7.5);
      doc.setFont("helvetica", "normal");
      doc.setTextColor(120, 120, 120);
      doc.text(sub, x + 4, yy + 23);
    }
    doc.setFont("helvetica", "normal");
  };
  drawCard(0, "Items", String(rows.length));
  drawCard(1, "Total units", String(totalUnits));
  drawCard(2, "Unpriced", String(unpricedCount), undefined, unpricedCount > 0 ? [180, 100, 0] : undefined);
  drawCard(3, `Value net · ${displayCurrency}`, formatMoney(valueNet, displayCurrency));
  drawCard(4, `Value w/ MOMS · ${displayCurrency}`, formatMoney(valueGross, displayCurrency), undefined, [241, 125, 0]);
  drawCard(
    5,
    negCount > 0 ? "Negative stock" : "Out of stock",
    String(negCount > 0 ? negCount : outCount),
    undefined,
    negCount > 0 ? [200, 50, 50] : outCount > 0 ? [180, 100, 0] : [40, 130, 70]
  );
  y += cardH * 2 + 4 + 8;

  // Top categories by value
  doc.setFontSize(9);
  doc.setFont("helvetica", "bold");
  doc.setTextColor(60, 60, 60);
  doc.text("Top categories by value", left, y);
  y += 5;
  doc.setFont("helvetica", "normal");
  doc.setFontSize(8.5);
  if (topCats.length === 0) {
    doc.setTextColor(160, 160, 160);
    doc.text("No category data.", left, y);
    y += 5;
  } else {
    for (const [cat, t] of topCats) {
      doc.setFillColor(248, 248, 248);
      doc.rect(left, y - 3.5, right - left, 6, "F");
      doc.setTextColor(40, 40, 40);
      doc.text(cat, left + 2, y + 0.5);
      doc.setTextColor(80, 80, 80);
      doc.text(`${t.units} units`, left + 80, y + 0.5);
      doc.setTextColor(241, 125, 0);
      doc.setFont("helvetica", "bold");
      doc.text(formatMoney(t.value, displayCurrency), right - 2, y + 0.5, { align: "right" });
      doc.setFont("helvetica", "normal");
      y += 6;
      if (y > pageHeight - 14) break;
    }
  }

  // ═══════════════════════════════════════════════════════════════════════
  // PAGE 2+ — Detailed table
  // ═══════════════════════════════════════════════════════════════════════
  doc.addPage();
  y = 14;
  doc.setTextColor(30, 30, 30);
  doc.setFontSize(11);
  doc.setFont("helvetica", "bold");
  doc.text("Detailed inventory", left, y);
  doc.setFontSize(8);
  doc.setFont("helvetica", "normal");
  doc.setTextColor(120, 120, 120);
  doc.text(`Values shown in ${displayCurrency}`, right, y, { align: "right" });
  y += 4;

  const headerHeight = 7;
  const rowHeight = 7;
  // Column x-positions (mm). pageWidth ≈ 210 for A4 portrait.
  const colCode = left + 2;
  const colName = left + 22;
  const colBrand = left + 86;
  const colUnit = left + 122;
  const colQty = left + 145;
  const colPrice = left + 168;
  const colValue = right - 2;

  function drawTableHeader(yy: number) {
    doc.setFillColor(40, 40, 50);
    doc.rect(left, yy, right - left, headerHeight, "F");
    doc.setTextColor(255, 255, 255);
    doc.setFontSize(7.5);
    doc.setFont("helvetica", "bold");
    doc.text("CODE", colCode, yy + 4.8);
    doc.text("NAME", colName, yy + 4.8);
    doc.text("BRAND", colBrand, yy + 4.8);
    doc.text("UNIT", colUnit, yy + 4.8);
    doc.text("QTY", colQty, yy + 4.8, { align: "left" });
    doc.text("PRICE", colPrice, yy + 4.8, { align: "left" });
    doc.text("LINE VALUE", colValue, yy + 4.8, { align: "right" });
  }
  drawTableHeader(y);
  y += headerHeight + 1;

  doc.setFont("helvetica", "normal");
  doc.setFontSize(8.5);

  let currentCat = "";
  let rowIdx = 0;
  for (const r of rows) {
    if (y > pageHeight - 16) {
      doc.addPage();
      y = 14;
      drawTableHeader(y);
      y += headerHeight + 1;
      currentCat = "";
      rowIdx = 0;
    }

    if ((r.category || "") !== currentCat) {
      currentCat = r.category || "";
      doc.setFillColor(245, 240, 232);
      doc.rect(left, y, right - left, 5, "F");
      doc.setTextColor(120, 80, 0);
      doc.setFont("helvetica", "bold");
      doc.setFontSize(7);
      doc.text((currentCat || "Uncategorized").toUpperCase(), left + 2, y + 3.5);
      doc.setFont("helvetica", "normal");
      doc.setTextColor(50, 50, 50);
      doc.setFontSize(8.5);
      y += 6;
      rowIdx = 0;
    }

    if (rowIdx % 2 === 0) {
      doc.setFillColor(250, 250, 250);
      doc.rect(left, y, right - left, rowHeight, "F");
    }

    doc.setTextColor(120, 120, 120);
    doc.text(String(r.code || ""), colCode, y + 4.8);

    doc.setTextColor(30, 30, 30);
    const name = (r.name || "").length > 36 ? (r.name || "").slice(0, 35) + "…" : (r.name || "");
    doc.text(name, colName, y + 4.8);

    doc.setTextColor(110, 110, 110);
    const brand = (r.brand || "").length > 20 ? (r.brand || "").slice(0, 19) + "…" : (r.brand || "");
    doc.text(brand, colBrand, y + 4.8);
    doc.text(String(r.unit || ""), colUnit, y + 4.8);

    const isNeg = r.qty < 0;
    const isOut = r.qty === 0;
    if (isNeg) doc.setTextColor(200, 50, 50);
    else if (isOut) doc.setTextColor(160, 100, 0);
    else doc.setTextColor(30, 30, 30);
    doc.setFont("helvetica", "bold");
    doc.text(String(r.qty), colQty, y + 4.8);
    doc.setFont("helvetica", "normal");

    doc.setTextColor(60, 60, 60);
    if (r.priceNet > 0) {
      doc.text(formatMoney(r.priceGrossDisplayed, displayCurrency), colPrice, y + 4.8);
    } else {
      doc.setTextColor(180, 100, 0);
      doc.text("—", colPrice, y + 4.8);
    }

    doc.setTextColor(241, 125, 0);
    doc.setFont("helvetica", "bold");
    if (r.qty > 0 && r.priceNet > 0) {
      doc.text(formatMoney(r.lineGrossDisplayed, displayCurrency), colValue, y + 4.8, { align: "right" });
    } else {
      doc.setTextColor(180, 180, 180);
      doc.text("—", colValue, y + 4.8, { align: "right" });
    }
    doc.setFont("helvetica", "normal");

    y += rowHeight;
    rowIdx++;
  }

  // ── Totals row + Page numbers ────────────────────────────────────────
  if (y > pageHeight - 18) {
    doc.addPage();
    y = 14;
  }
  doc.setFillColor(40, 40, 50);
  doc.rect(left, y, right - left, 8, "F");
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(9);
  doc.setFont("helvetica", "bold");
  doc.text(`TOTAL · ${rows.length} items · ${totalUnits} units`, left + 2, y + 5.5);
  doc.text(
    `Net ${formatMoney(valueNet, displayCurrency)}   ·   w/ MOMS ${formatMoney(valueGross, displayCurrency)}`,
    right - 2,
    y + 5.5,
    { align: "right" }
  );

  const total = (doc as any).getNumberOfPages();
  for (let i = 1; i <= total; i++) {
    doc.setPage(i);
    doc.setFontSize(7);
    doc.setTextColor(170, 170, 170);
    doc.text(`CNC Stock · page ${i} / ${total}`, right, pageHeight - 5, { align: "right" });
  }

  return doc;
}

export function downloadStockReportPdf(input: StockReportInput, filename = "stock-report.pdf") {
  const doc = buildStockReportPdf(input);
  doc.save(filename);
}
