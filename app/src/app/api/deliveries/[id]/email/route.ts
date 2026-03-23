import { NextRequest, NextResponse } from "next/server";
import nodemailer from "nodemailer";
import { connectDB } from "@/lib/db";
import { requireAuth } from "@/lib/auth";
import Delivery from "@/lib/models/Delivery";
import Setting from "@/lib/models/Setting";

export async function POST(_req: NextRequest, { params }: { params: Promise<{ id: string }> }) {
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

  const itemRows = delivery.items
    .map((item: any) =>
      `<tr>
        <td style="padding:8px;border:1px solid #ddd;">${item.code} - ${item.name}</td>
        <td style="padding:8px;border:1px solid #ddd;text-align:center;">${item.quantity} ${item.unit || ""}</td>
        <td style="padding:8px;border:1px solid #ddd;">${item.note || ""}</td>
      </tr>`
    )
    .join("");

  const html = `
    <div style="font-family:Arial,sans-serif;max-width:600px;margin:0 auto;">
      <h2 style="background:#2c3e50;color:#fff;padding:15px;margin:0;">PACKING LIST</h2>
      <div style="padding:15px;background:#f9f9f9;border:1px solid #ddd;">
        <p><strong>Reference:</strong> ${delivery.reference}</p>
        <p><strong>Date:</strong> ${new Date(delivery.createdAt).toLocaleString("da-DK")}</p>
        <p><strong>Created by:</strong> ${delivery.createdBy}</p>
      </div>
      <table style="width:100%;border-collapse:collapse;margin-top:15px;">
        <thead>
          <tr style="background:#3498db;color:#fff;">
            <th style="padding:10px;border:1px solid #ddd;text-align:left;">Name</th>
            <th style="padding:10px;border:1px solid #ddd;text-align:center;">Quantity</th>
            <th style="padding:10px;border:1px solid #ddd;text-align:left;">Note</th>
          </tr>
        </thead>
        <tbody>${itemRows}</tbody>
      </table>
      <p style="margin-top:20px;color:#888;font-size:12px;">Sent from CNC Manager</p>
    </div>
  `;

  const transporter = nodemailer.createTransport({
    host: process.env.SMTP_HOST,
    port: Number(process.env.SMTP_PORT),
    secure: process.env.SMTP_SECURE === "true",
    auth: {
      user: process.env.SMTP_USER,
      pass: process.env.SMTP_PASSWORD,
    },
  });

  await transporter.sendMail({
    from: `"${process.env.EMAIL_FROM_NAME}" <${process.env.EMAIL_FROM_ADDRESS}>`,
    to: recipientEmail,
    subject: `Packing List - ${delivery.reference}`,
    html,
  });

  return NextResponse.json({ success: true, sentTo: recipientEmail });
}
