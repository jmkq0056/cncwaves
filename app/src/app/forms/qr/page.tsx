"use client";

import { useEffect, useState, useRef } from "react";
import QRCode from "qrcode";

type QRItem = { title: string; url: string };

const DRIVER_APK_URL = "https://github.com/jmkq0056/cncwaves/releases/download/driver-app-v1/driver.apk";

/** Generate QR code with "CNC" text overlay in the center */
async function generateQRWithLogo(url: string): Promise<string> {
  // Generate base QR with high error correction (allows 30% obstruction)
  const qrDataUrl = await QRCode.toDataURL(url, {
    width: 300,
    margin: 1,
    errorCorrectionLevel: "H",
    color: { dark: "#000000", light: "#ffffff" },
  });

  // Draw on canvas with CNC overlay
  return new Promise((resolve) => {
    const canvas = document.createElement("canvas");
    canvas.width = 300;
    canvas.height = 300;
    const ctx = canvas.getContext("2d")!;

    const img = new Image();
    img.onload = () => {
      ctx.drawImage(img, 0, 0);

      // White circle background in center
      const cx = 150, cy = 150, r = 32;
      ctx.beginPath();
      ctx.arc(cx, cy, r, 0, Math.PI * 2);
      ctx.fillStyle = "#ffffff";
      ctx.fill();

      // Orange border
      ctx.beginPath();
      ctx.arc(cx, cy, r, 0, Math.PI * 2);
      ctx.strokeStyle = "#f17d00";
      ctx.lineWidth = 3;
      ctx.stroke();

      // "CNC" text
      ctx.fillStyle = "#f17d00";
      ctx.font = "bold 18px Arial";
      ctx.textAlign = "center";
      ctx.textBaseline = "middle";
      ctx.fillText("CNC", cx, cy);

      resolve(canvas.toDataURL());
    };
    img.src = qrDataUrl;
  });
}

export default function QRPrintPage() {
  const [items, setItems] = useState<QRItem[]>([]);
  const [qrCodes, setQrCodes] = useState<Record<string, string>>({});

  useEffect(() => {
    const base = window.location.origin;
    import("@/lib/form-definitions").then(({ FORM_DEFINITIONS }) => {
      const formItems: QRItem[] = FORM_DEFINITIONS.map((f) => ({
        title: f.title,
        url: `${base}/forms/${f.slug}`,
      }));
      formItems.push({ title: "Vacation Schedule", url: `${base}/forms/vacation` });
      formItems.push({ title: "Android Driver App", url: DRIVER_APK_URL });
      setItems(formItems);
    });
  }, []);

  useEffect(() => {
    if (items.length === 0) return;
    async function generateAll() {
      const codes: Record<string, string> = {};
      for (const item of items) {
        codes[item.title] = await generateQRWithLogo(item.url);
      }
      setQrCodes(codes);
    }
    generateAll();
  }, [items]);

  if (items.length === 0) {
    return <div className="p-8 text-gray-400 text-center">Loading...</div>;
  }

  return (
    <div className="bg-white min-h-screen">
      <style>{`
        @media print {
          .no-print { display: none !important; }
          body { margin: 0; padding: 0; }
          .print-page { page-break-inside: avoid; }
        }
        @page { size: A4; margin: 12mm; }
      `}</style>

      <div className="no-print p-4 bg-gray-100 border-b flex items-center justify-between">
        <h1 className="font-bold text-gray-700">QR Codes - All Reports</h1>
        <button
          onClick={() => window.print()}
          className="px-4 py-2 bg-brand text-white rounded text-sm hover:bg-brand-700"
        >
          Print / Save PDF
        </button>
      </div>

      <div className="print-page max-w-[210mm] mx-auto p-6">
        <h1 className="text-center text-lg font-bold mb-6 text-gray-800">All Reports</h1>

        <div className="grid grid-cols-4 gap-3">
          {items.map((item) => (
            <div
              key={item.title}
              className="border border-gray-300 rounded p-2 flex flex-col items-center text-center"
            >
              <p className="text-[10px] font-bold text-gray-700 mb-1 leading-tight h-7 flex items-center">
                {item.title}
              </p>
              {qrCodes[item.title] ? (
                <img src={qrCodes[item.title]} alt={item.title} className="w-[110px] h-[110px]" />
              ) : (
                <div className="w-[110px] h-[110px] bg-gray-100 flex items-center justify-center text-gray-400 text-xs">...</div>
              )}
            </div>
          ))}
        </div>

        <p className="text-center text-[9px] text-gray-400 mt-4">
          CNC Stock - Scan QR code to open form
        </p>
      </div>
    </div>
  );
}
