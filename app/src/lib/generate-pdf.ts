import { jsPDF } from "jspdf";

export function generatePackingListPDF(delivery: any, pickUrl: string): Buffer {
  const doc = new jsPDF();
  const pageWidth = doc.internal.pageSize.getWidth();

  // Header
  doc.setFillColor(241, 125, 0); // brand orange
  doc.rect(0, 0, pageWidth, 25, "F");
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(16);
  doc.setFont("helvetica", "bold");
  doc.text("PACKING LIST", 14, 16);

  // Reference info
  doc.setTextColor(50, 50, 50);
  doc.setFontSize(10);
  doc.setFont("helvetica", "normal");
  let y = 35;
  doc.text(`Reference: ${delivery.reference}`, 14, y);
  y += 6;
  const date = new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" });
  doc.text(`Date: ${date}`, 14, y);
  y += 6;
  doc.text(`Created by: ${delivery.createdBy}`, 14, y);
  y += 10;

  // Table header
  doc.setFillColor(241, 125, 0);
  doc.rect(14, y, pageWidth - 28, 8, "F");
  doc.setTextColor(255, 255, 255);
  doc.setFontSize(9);
  doc.setFont("helvetica", "bold");
  doc.text("Item", 16, y + 5.5);
  doc.text("Qty", pageWidth - 55, y + 5.5);
  doc.text("Pick", pageWidth - 22, y + 5.5);
  y += 10;

  // Table rows
  doc.setFont("helvetica", "normal");
  doc.setTextColor(50, 50, 50);
  doc.setFontSize(9);

  for (const item of delivery.items) {
    if (y > 270) {
      doc.addPage();
      y = 15;
    }

    // Alternating row bg
    if (delivery.items.indexOf(item) % 2 === 0) {
      doc.setFillColor(248, 248, 248);
      doc.rect(14, y - 4, pageWidth - 28, 8, "F");
    }

    const name = `${item.code} - ${item.name}`;
    const truncated = name.length > 50 ? name.slice(0, 47) + "..." : name;
    doc.text(truncated, 16, y);
    doc.text(`${item.quantity} ${item.unit || ""}`, pageWidth - 55, y);

    // Checkbox
    doc.setDrawColor(180, 180, 180);
    doc.rect(pageWidth - 22, y - 3.5, 4, 4);

    y += 8;
  }

  // Footer with pick URL
  y += 5;
  doc.setDrawColor(220, 220, 220);
  doc.line(14, y, pageWidth - 14, y);
  y += 8;
  doc.setFontSize(8);
  doc.setTextColor(120, 120, 120);
  doc.text("Online pick list:", 14, y);
  doc.setTextColor(241, 125, 0);
  doc.text(pickUrl, 14, y + 5);
  doc.setTextColor(150, 150, 150);
  doc.setFontSize(7);
  doc.text("CNC Manager", 14, y + 12);

  // Return as Buffer
  const arrayBuffer = doc.output("arraybuffer");
  return Buffer.from(arrayBuffer);
}
