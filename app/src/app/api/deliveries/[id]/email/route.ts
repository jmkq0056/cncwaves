import { NextRequest, NextResponse } from "next/server";
import { Resend } from "resend";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import Setting from "@/lib/models/Setting";
import { generatePackingListPDF } from "@/lib/generate-pdf";
import { computeDeliveryValue } from "@/lib/deliveryValue";

export async function POST(req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
  await requireAuth();
  await connectDB();
  const { id } = await params;

  const delivery = await Delivery.findById(id).lean() as any;
  if (!delivery) return NextResponse.json({ error: "Not found" }, { status: 404 });

  const emailSetting = await Setting.findOne({ key: "recipient_email" }).lean() as any;
  const recipientEmail = emailSetting?.value;
  if (!recipientEmail) {
    return NextResponse.json({ error: "No recipient email configured. Go to Settings." }, { status: 400 });
  }

  const baseUrl = req.headers.get("origin") || `https://${req.headers.get("host")}`;
  const pickUrl = `${baseUrl}/d/${delivery.shareToken}`;

  // Compute value (qty × current priceGross, FX→DKK) for PDF + email body.
  let value: { netDKK: number; grossDKK: number; fxRate: number } | null = null;
  try {
    value = await computeDeliveryValue(delivery.items as any[]);
  } catch {}

  // Generate PDF (with value block when available)
  const pdfBuffer = generatePackingListPDF(delivery, pickUrl, value);

  const valueLine = value
    ? `<p style="color:#1e293b;font-size:14px;margin:8px 0 4px;font-weight:bold;">Value: ${value.grossDKK.toFixed(2)} kr <span style="color:#777;font-weight:normal;font-size:11px;">incl. MOMS</span></p>
       <p style="color:#999;font-size:10px;margin:0 0 14px;">Net ${value.netDKK.toFixed(2)} kr · FX EUR→DKK ${value.fxRate.toFixed(4)}</p>`
    : "";

  // Same template as the create-route auto-email: orange CNC header,
  // big "Open Pick List" button, "PDF packing list attached" footer.
  const html = `
    <div style="font-family:Arial,sans-serif;max-width:450px;margin:0 auto;">
      <div style="background:#f17d00;color:#fff;padding:14px 18px;border-radius:10px 10px 0 0;">
        <h2 style="margin:0;font-size:16px;">Delivery: ${delivery.reference}</h2>
      </div>
      <div style="border:1px solid #eee;border-top:none;border-radius:0 0 10px 10px;padding:20px;text-align:center;">
        <p style="color:#555;font-size:13px;margin:0 0 4px;">${delivery.items.length} items - ${delivery.createdBy}</p>
        <p style="color:#999;font-size:11px;margin:0 0 12px;">${new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}</p>
        ${valueLine}
        <a href="${pickUrl}" style="display:inline-block;background:#f17d00;color:#fff;text-decoration:none;padding:14px 40px;border-radius:8px;font-size:15px;font-weight:bold;">
          Open Pick List
        </a>
        <p style="margin-top:14px;font-size:11px;color:#aaa;">Share this link with the driver. PDF packing list attached.</p>
      </div>
      <p style="text-align:center;color:#ccc;font-size:9px;margin-top:10px;">CNC Manager</p>
    </div>
  `;

  const resend = new Resend(process.env.RESEND_API_KEY);
  const to = recipientEmail.split(",").map((e: string) => e.trim()).filter(Boolean);
  await resend.emails.send({
    from: `${process.env.EMAIL_FROM_NAME} <${process.env.EMAIL_FROM_ADDRESS}>`,
    to,
    subject: `Delivery ${delivery.reference} - ${delivery.items.length} items`,
    html,
    attachments: [{
      filename: `packing-list-${delivery.reference.replace(/\//g, "-")}.pdf`,
      content: pdfBuffer,
    }],
  });

  return NextResponse.json({ success: true, sentTo: recipientEmail });
}
