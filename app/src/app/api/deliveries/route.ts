import { NextRequest, NextResponse } from "next/server";
import nodemailer from "nodemailer";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import Setting from "@/lib/models/Setting";

function generateRef() {
  const now = new Date();
  const y = now.getFullYear();
  const m = String(now.getMonth() + 1).padStart(2, "0");
  const rand = String(Math.floor(Math.random() * 10000)).padStart(4, "0");
  return `DEL${y}/${m}/${rand}`;
}

function buildPdfHtml(delivery: any, pickUrl: string) {
  const rows = delivery.items
    .map((item: any) =>
      `<tr>
        <td style="padding:8px;border:1px solid #ddd;">${item.code} - ${item.name}</td>
        <td style="padding:8px;border:1px solid #ddd;text-align:center;">${item.quantity} ${item.unit || ""}</td>
        <td style="padding:8px;border:1px solid #ddd;text-align:center;">☐</td>
      </tr>`
    )
    .join("");

  return `
    <html><body style="font-family:Arial,sans-serif;padding:20px;">
      <h2 style="color:#f17d00;">PACKING LIST</h2>
      <p><strong>Reference:</strong> ${delivery.reference}</p>
      <p><strong>Date:</strong> ${new Date(delivery.createdAt).toLocaleString("da-DK", { timeZone: "Europe/Copenhagen" })}</p>
      <p><strong>Created by:</strong> ${delivery.createdBy}</p>
      <table style="width:100%;border-collapse:collapse;margin-top:15px;">
        <thead>
          <tr style="background:#f17d00;color:#fff;">
            <th style="padding:10px;border:1px solid #ddd;text-align:left;">Item</th>
            <th style="padding:10px;border:1px solid #ddd;text-align:center;">Qty</th>
            <th style="padding:10px;border:1px solid #ddd;text-align:center;width:60px;">Pick</th>
          </tr>
        </thead>
        <tbody>${rows}</tbody>
      </table>
      <p style="margin-top:20px;font-size:12px;color:#888;">
        Online pick list: <a href="${pickUrl}">${pickUrl}</a>
      </p>
      <p style="font-size:11px;color:#aaa;">CNC Manager</p>
    </body></html>
  `;
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

  // Add default status to each item
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
      const pdfHtml = buildPdfHtml(delivery, pickUrl);

      const itemList = delivery.items
        .map((item: any) =>
          `<tr>
            <td style="padding:6px 10px;border-bottom:1px solid #eee;font-size:13px;">${item.code} - ${item.name}</td>
            <td style="padding:6px 10px;border-bottom:1px solid #eee;text-align:center;font-size:13px;">${item.quantity} ${item.unit || ""}</td>
          </tr>`
        )
        .join("");

      const html = `
        <div style="font-family:Arial,sans-serif;max-width:500px;margin:0 auto;">
          <div style="background:#f17d00;color:#fff;padding:12px 16px;border-radius:8px 8px 0 0;">
            <h2 style="margin:0;font-size:16px;">New Delivery: ${delivery.reference}</h2>
          </div>
          <div style="border:1px solid #eee;border-top:none;border-radius:0 0 8px 8px;overflow:hidden;">
            <div style="padding:10px 16px;font-size:12px;color:#666;">
              ${delivery.items.length} items - ${delivery.createdBy}
            </div>
            <table style="width:100%;border-collapse:collapse;">${itemList}</table>
            <div style="padding:16px;text-align:center;">
              <a href="${pickUrl}" style="display:inline-block;background:#f17d00;color:#fff;text-decoration:none;padding:12px 30px;border-radius:8px;font-size:14px;font-weight:bold;">
                Open Pick List
              </a>
              <p style="margin-top:8px;font-size:11px;color:#999;">Share this link with the driver</p>
            </div>
          </div>
          <p style="text-align:center;color:#999;font-size:10px;margin-top:10px;">CNC Manager</p>
        </div>
      `;

      const transporter = nodemailer.createTransport({
        host: process.env.SMTP_HOST,
        port: Number(process.env.SMTP_PORT),
        secure: process.env.SMTP_SECURE === "true",
        auth: { user: process.env.SMTP_USER, pass: process.env.SMTP_PASSWORD },
      });

      await transporter.sendMail({
        from: `"${process.env.EMAIL_FROM_NAME}" <${process.env.EMAIL_FROM_ADDRESS}>`,
        to: recipientEmail,
        subject: `Delivery ${delivery.reference} - ${delivery.items.length} items`,
        html,
        attachments: [{
          filename: `packing-list-${delivery.reference.replace(/\//g, "-")}.html`,
          content: pdfHtml,
          contentType: "text/html",
        }],
      });

      emailSent = true;
    }
  } catch (err: any) {
    emailError = err.message || "Email failed";
    console.error("Delivery email failed:", err);
  }

  // Update email status
  delivery.emailSent = emailSent;
  delivery.emailError = emailError;
  await delivery.save();

  return NextResponse.json({
    ...delivery.toObject(),
    emailSent,
    emailError,
  }, { status: 201 });
}
