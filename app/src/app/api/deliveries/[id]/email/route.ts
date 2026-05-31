import { NextRequest, NextResponse } from "next/server";
import { Resend } from "resend";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import Setting from "@/lib/models/Setting";
import { generatePackingListPDF } from "@/lib/generate-pdf";

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

  // Generate PDF (same as auto-email on create)
  const pdfBuffer = generatePackingListPDF(delivery, pickUrl);

  // Same template as the create-route auto-email: orange CNC header,
  // big "Open Pick List" button, "PDF packing list attached" footer.
  const html = `
    <div style="font-family:Arial,sans-serif;max-width:450px;margin:0 auto;">
      <div style="background:#f17d00;color:#fff;padding:14px 18px;border-radius:10px 10px 0 0;">
        <h2 style="margin:0;font-size:16px;">Delivery: ${delivery.reference}</h2>
      </div>
      <div style="border:1px solid #eee;border-top:none;border-radius:0 0 10px 10px;padding:20px;text-align:center;">
        <p style="color:#555;font-size:13px;margin:0 0 4px;">${delivery.items.length} items - ${delivery.createdBy}</p>
        <p style="color:#999;font-size:11px;margin:0 0 20px;">${new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}</p>
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
