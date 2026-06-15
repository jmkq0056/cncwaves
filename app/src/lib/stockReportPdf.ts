import { jsPDF } from "jspdf";

export type StockReportItem = {
  code?: string;
  name?: string;
  brand?: string;
  category?: string;
  unit?: string;
  qty?: number;
};

export type StockReportInput = {
  title: string;            // e.g. "Stock Report"
  capturedAt: Date | string; // when the snapshot was taken
  source?: string;          // "manual" / "daily" / "live"
  label?: string;
  triggeredBy?: string;
  items: StockReportItem[];
};

/**
 * Builds a mobile-friendly PDF (portrait A4, big readable type, alternating
 * row backgrounds, grouped by category). Returns the jsPDF document; caller
 * can `.save(filename)` or `.output("blob")` for download/share.
 */
export function buildStockReportPdf(input: StockReportInput): jsPDF {
  const doc = new jsPDF({ format: "a4", unit: "mm", orientation: "portrait" });
  const pageWidth = doc.internal.pageSize.getWidth();
  const pageHeight = doc.internal.pageSize.getHeight();
  const left = 12;
  const right = pageWidth - 12;

  const capturedAt = new Date(input.capturedAt);
  const capturedAtLabel = capturedAt.toLocaleString("da-DK", {
    timeZone: "Europe/Copenhagen",
    day: "2-digit",
    month: "2-digit",
    year: "numeric",
    hour: "2-digit",
    minute: "2-digit",
  });

  // ── Header band ───────────────────────────────────────────────
  doc.setFillColor(241, 125, 0);
  doc.rect(0, 0, pageWidth, 22, "F");
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(15);
  doc.setFont("helvetica", "bold");
  doc.text(input.title.toUpperCase(), left, 14);
  doc.setFontSize(9);
  doc.setFont("helvetica", "normal");
  doc.text(capturedAtLabel, right, 14, { align: "right" });

  // ── Meta line ────────────────────────────────────────────────
  let y = 30;
  doc.setTextColor(80, 80, 80);
  doc.setFontSize(9);
  const meta: string[] = [];
  if (input.source) meta.push(`Source: ${input.source}`);
  if (input.label) meta.push(`Label: ${input.label}`);
  if (input.triggeredBy) meta.push(`By: ${input.triggeredBy}`);
  if (meta.length) {
    doc.text(meta.join("   ·   "), left, y);
    y += 5;
  }

  // ── Summary chips ────────────────────────────────────────────
  const items = input.items.slice().sort((a, b) => {
    const c = (a.category || "").localeCompare(b.category || "");
    if (c !== 0) return c;
    return (a.name || "").localeCompare(b.name || "");
  });
  const totalUnits = items.reduce((s, i) => s + (Number(i.qty) || 0), 0);
  const outCount = items.filter((i) => (Number(i.qty) || 0) <= 0).length;
  const negCount = items.filter((i) => (Number(i.qty) || 0) < 0).length;
  y += 2;
  drawSummaryChip(doc, left, y, 38, "Items", String(items.length), [80, 80, 80]);
  drawSummaryChip(doc, left + 42, y, 50, "Total units", String(totalUnits), [30, 30, 30]);
  drawSummaryChip(doc, left + 96, y, 44, "Out of stock", String(outCount), outCount > 0 ? [200, 50, 50] : [40, 130, 70]);
  if (negCount > 0) {
    drawSummaryChip(doc, left + 144, y, 36, "Negative", String(negCount), [200, 50, 50]);
  }
  y += 18;

  // ── Table ────────────────────────────────────────────────────
  const headerHeight = 7;
  const rowHeight = 7;

  function drawTableHeader(yy: number) {
    doc.setFillColor(40, 40, 50);
    doc.rect(left, yy, right - left, headerHeight, "F");
    doc.setTextColor(255, 255, 255);
    doc.setFontSize(8);
    doc.setFont("helvetica", "bold");
    doc.text("CODE", left + 2, yy + 4.8);
    doc.text("NAME", left + 22, yy + 4.8);
    doc.text("BRAND", left + 90, yy + 4.8);
    doc.text("UNIT", left + 132, yy + 4.8);
    doc.text("QTY", right - 4, yy + 4.8, { align: "right" });
  }
  drawTableHeader(y);
  y += headerHeight + 1;

  doc.setFont("helvetica", "normal");
  doc.setTextColor(50, 50, 50);
  doc.setFontSize(9);

  let currentCat = "";
  let rowIdx = 0;
  for (const it of items) {
    if (y > pageHeight - 16) {
      doc.addPage();
      y = 14;
      drawTableHeader(y);
      y += headerHeight + 1;
      currentCat = "";
      rowIdx = 0;
    }

    // Category band
    if ((it.category || "") !== currentCat) {
      currentCat = it.category || "";
      doc.setFillColor(245, 240, 232);
      doc.rect(left, y, right - left, 5, "F");
      doc.setTextColor(120, 80, 0);
      doc.setFont("helvetica", "bold");
      doc.setFontSize(7.5);
      doc.text((currentCat || "Uncategorized").toUpperCase(), left + 2, y + 3.5);
      doc.setFont("helvetica", "normal");
      doc.setTextColor(50, 50, 50);
      doc.setFontSize(9);
      y += 6;
      rowIdx = 0;
    }

    // Alternating row background
    if (rowIdx % 2 === 0) {
      doc.setFillColor(250, 250, 250);
      doc.rect(left, y, right - left, rowHeight, "F");
    }

    const qty = Number(it.qty) || 0;
    const isNeg = qty < 0;
    const isOut = qty === 0;
    doc.setTextColor(120, 120, 120);
    doc.text(String(it.code || ""), left + 2, y + 4.8);

    doc.setTextColor(30, 30, 30);
    const nameMax = 65;
    const name = (it.name || "").length > nameMax ? (it.name || "").slice(0, nameMax - 1) + "…" : (it.name || "");
    doc.text(name, left + 22, y + 4.8);

    doc.setTextColor(110, 110, 110);
    const brand = (it.brand || "").length > 22 ? (it.brand || "").slice(0, 21) + "…" : (it.brand || "");
    doc.text(brand, left + 90, y + 4.8);
    doc.text(String(it.unit || ""), left + 132, y + 4.8);

    if (isNeg) doc.setTextColor(200, 50, 50);
    else if (isOut) doc.setTextColor(160, 100, 0);
    else doc.setTextColor(30, 30, 30);
    doc.setFont("helvetica", "bold");
    doc.text(String(qty), right - 4, y + 4.8, { align: "right" });
    doc.setFont("helvetica", "normal");

    y += rowHeight;
    rowIdx++;
  }

  // ── Page numbers ─────────────────────────────────────────────
  const total = (doc as any).getNumberOfPages();
  for (let i = 1; i <= total; i++) {
    doc.setPage(i);
    doc.setFontSize(7);
    doc.setTextColor(170, 170, 170);
    doc.text(`CNC Stock · page ${i} / ${total}`, right, pageHeight - 5, { align: "right" });
  }

  return doc;
}

function drawSummaryChip(
  doc: jsPDF,
  x: number,
  y: number,
  width: number,
  label: string,
  value: string,
  valueRGB: [number, number, number]
) {
  doc.setDrawColor(220, 220, 220);
  doc.setFillColor(255, 255, 255);
  doc.roundedRect(x, y, width, 14, 2, 2, "FD");
  doc.setFontSize(6.5);
  doc.setTextColor(140, 140, 140);
  doc.text(label.toUpperCase(), x + 3, y + 4.5);
  doc.setFontSize(13);
  doc.setFont("helvetica", "bold");
  doc.setTextColor(valueRGB[0], valueRGB[1], valueRGB[2]);
  doc.text(value, x + 3, y + 11);
  doc.setFont("helvetica", "normal");
}

export function downloadStockReportPdf(input: StockReportInput, filename = "stock-report.pdf") {
  const doc = buildStockReportPdf(input);
  doc.save(filename);
}
