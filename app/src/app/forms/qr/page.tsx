"use client";

import { useEffect, useState } from "react";
import QRCode from "qrcode";

type FormInfo = { slug: string; title: string; icon: string };

export default function QRPrintPage() {
  const [forms, setForms] = useState<FormInfo[]>([]);
  const [qrCodes, setQrCodes] = useState<Record<string, string>>({});
  const [baseUrl, setBaseUrl] = useState("");

  useEffect(() => {
    setBaseUrl(window.location.origin);
    fetch("/api/forms").then((r) => r.json()).then(setForms).catch(() => {});
  }, []);

  useEffect(() => {
    if (!baseUrl || forms.length === 0) return;
    async function generateAll() {
      const codes: Record<string, string> = {};
      for (const form of forms) {
        const url = `${baseUrl}/forms/${form.slug}`;
        codes[form.slug] = await QRCode.toDataURL(url, {
          width: 150,
          margin: 1,
          color: { dark: "#000000", light: "#ffffff" },
        });
      }
      setQrCodes(codes);
    }
    generateAll();
  }, [forms, baseUrl]);

  if (forms.length === 0) {
    return <div className="p-8 text-gray-400 text-center">Loading...</div>;
  }

  return (
    <div className="bg-white min-h-screen">
      {/* Print styles */}
      <style>{`
        @media print {
          .no-print { display: none !important; }
          body { margin: 0; padding: 0; }
          .print-page { page-break-inside: avoid; }
        }
        @page { size: A4; margin: 15mm; }
      `}</style>

      {/* Print button */}
      <div className="no-print p-4 bg-gray-100 border-b flex items-center justify-between">
        <h1 className="font-bold text-gray-700">QR Codes - All Reports</h1>
        <button
          onClick={() => window.print()}
          className="px-4 py-2 bg-blue-500 text-white rounded text-sm hover:bg-blue-600"
        >
          Print / Save PDF
        </button>
      </div>

      {/* A4 printable page */}
      <div className="print-page max-w-[210mm] mx-auto p-6">
        <h1 className="text-center text-lg font-bold mb-6 text-gray-800">All Reports</h1>

        <div className="grid grid-cols-4 gap-4">
          {forms.map((form) => (
            <div
              key={form.slug}
              className="border border-gray-300 rounded p-3 flex flex-col items-center text-center"
            >
              <p className="text-xs font-bold text-gray-700 mb-2 leading-tight h-8 flex items-center">
                {form.title}
              </p>
              {qrCodes[form.slug] ? (
                <img
                  src={qrCodes[form.slug]}
                  alt={form.title}
                  className="w-[120px] h-[120px]"
                />
              ) : (
                <div className="w-[120px] h-[120px] bg-gray-100 flex items-center justify-center text-gray-400 text-xs">
                  Loading...
                </div>
              )}
            </div>
          ))}
        </div>

        <p className="text-center text-[10px] text-gray-400 mt-6">
          CNC Stock - Scan QR code to open form
        </p>
      </div>
    </div>
  );
}
