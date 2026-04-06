import { NextRequest, NextResponse } from "next/server";
import { Resend } from "resend";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import Setting from "@/lib/models/Setting";
import { generatePackingListPDF } from "@/lib/generate-pdf";

function generateRef() {
  const now = new Date();
  const y = now.getFullYear();
  const m = String(now.getMonth() + 1).padStart(2, "0");
  const rand = String(Math.floor(Math.random() * 10000)).padStart(4, "0");
  return `DEL${y}/${m}/${rand}`;
}

export async function GET() {
  await requireAuth();
  await connectDB();
  const deliveries = await Delivery.find().sort({ createdAt: -1 }).lean();
  return NextResponse.json(deliveries);
}

export async function POST(req: NextRequest) {
  const session = await requireAuth();
  await connectDB();

  const { items } = await req.json();
  if (!items || items.length === 0) {
    return NextResponse.json({ error: "At least one item is required" }, { status: 400 });
  }

  const itemsWithStatus = items.map((item: any) => ({
    ...item,
    status: "pending",
  }));

  const delivery = await Delivery.create({
    reference: generateRef(),
    items: itemsWithStatus,
    createdBy: session.email,
  });

  // Auto-send email
  let emailSent = false;
  let emailError = "";

  try {
    const emailSetting = await Setting.findOne({ key: "recipient_email" }).lean() as any;
    const recipientEmail = emailSetting?.value;

    if (recipientEmail) {
      const baseUrl = req.headers.get("origin") || `https://${req.headers.get("host")}`;
      const pickUrl = `${baseUrl}/d/${delivery.shareToken}`;

      // Generate PDF
      const pdfBuffer = generatePackingListPDF(delivery, pickUrl);

      const html = `
        <div style="font-family:Arial,sans-serif;max-width:450px;margin:0 auto;">
          <div style="background:#f17d00;color:#fff;padding:14px 18px;border-radius:10px 10px 0 0;">
            <h2 style="margin:0;font-size:16px;">New Delivery: ${delivery.reference}</h2>
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
      await resend.emails.send({
        from: `${process.env.EMAIL_FROM_NAME} <${process.env.EMAIL_FROM_ADDRESS}>`,
        to: recipientEmail,
        subject: `Delivery ${delivery.reference} - ${delivery.items.length} items`,
        html,
        attachments: [{
          filename: `packing-list-${delivery.reference.replace(/\//g, "-")}.pdf`,
          content: pdfBuffer,
        }],
      });

      emailSent = true;
    }
  } catch (err: any) {
    emailError = err.message || "Email failed";
    console.error("Delivery email failed:", err);
  }

  delivery.emailSent = emailSent;
  delivery.emailError = emailError;
  await delivery.save();

  return NextResponse.json({
    ...delivery.toObject(),
    emailSent,
    emailError,
  }, { status: 201 });
}
