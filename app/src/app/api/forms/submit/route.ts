import { NextRequest, NextResponse } from "next/server";
import { Resend } from "resend";
import { connectDB } from "@/lib/db";
import { getFormBySlug } from "@/lib/form-definitions";
import { sanitizeField } from "@/lib/sanitize";
import Submission from "@/lib/models/Submission";
import Setting from "@/lib/models/Setting";

export async function POST(req: NextRequest) {
  const body = await req.json();
  const { formSlug, data } = body;

  if (!formSlug || !data) {
    return NextResponse.json({ error: "formSlug and data are required" }, { status: 400 });
  }

  const formDef = getFormBySlug(formSlug);
  if (!formDef) {
    return NextResponse.json({ error: "Unknown form" }, { status: 400 });
  }

  const sanitized: Record<string, string> = {};
  for (const field of formDef.fields) {
    const raw = data[field.name];
    const value = sanitizeField(field.name, field.type, raw, field.options);

    if (field.required && !value && field.type !== "checkbox") {
      return NextResponse.json(
        { error: `${field.label} is required` },
        { status: 400 }
      );
    }

    if (field.type === "email" && value && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value)) {
      return NextResponse.json({ error: "Invalid email address" }, { status: 400 });
    }

    if (field.type === "select" && field.required && !value) {
      return NextResponse.json(
        { error: `Please select a valid option for ${field.label}` },
        { status: 400 }
      );
    }

    sanitized[field.name] = value;
  }

  await connectDB();

  const submission = await Submission.create({
    formSlug,
    formTitle: formDef.title,
    data: sanitized,
  });

  // Email notification
  try {
    const emailSetting = await Setting.findOne({ key: "recipient_email" }).lean() as any;
    const recipientEmail = emailSetting?.value;
    if (recipientEmail) {
      const baseUrl = req.headers.get("origin") || req.headers.get("host") || "";
      const viewUrl = `${baseUrl.startsWith("http") ? baseUrl : "https://" + baseUrl}/submissions?view=${submission._id}`;

      const fieldRows = formDef.fields
        .map((f) => {
          const val = sanitized[f.name];
          if (!val) return "";
          const display = f.type === "file" && val.startsWith("http")
            ? `<a href="${val}" style="color:#f17d00;">View file</a>`
            : val;
          return `<tr><td style="padding:6px 10px;border-bottom:1px solid #eee;color:#666;font-size:13px;">${f.label}</td><td style="padding:6px 10px;border-bottom:1px solid #eee;font-size:13px;">${display}</td></tr>`;
        })
        .filter(Boolean)
        .join("");

      const html = `
        <div style="font-family:Arial,sans-serif;max-width:500px;margin:0 auto;">
          <div style="background:#f17d00;color:#fff;padding:12px 16px;border-radius:8px 8px 0 0;">
            <h2 style="margin:0;font-size:16px;">New: ${formDef.title}</h2>
          </div>
          <div style="border:1px solid #eee;border-top:none;border-radius:0 0 8px 8px;overflow:hidden;">
            <table style="width:100%;border-collapse:collapse;">${fieldRows}</table>
            <div style="padding:12px 16px;">
              <a href="${viewUrl}" style="display:inline-block;background:#f17d00;color:#fff;text-decoration:none;padding:8px 20px;border-radius:6px;font-size:13px;font-weight:bold;">View Submission</a>
            </div>
          </div>
          <p style="text-align:center;color:#999;font-size:11px;margin-top:12px;">CNC Manager</p>
        </div>`;

      const resend = new Resend(process.env.RESEND_API_KEY);
      const to = recipientEmail.split(",").map((e: string) => e.trim()).filter(Boolean);
      await resend.emails.send({
        from: `${process.env.EMAIL_FROM_NAME} <${process.env.EMAIL_FROM_ADDRESS}>`,
        to,
        subject: `New: ${formDef.title} - CNC Manager`,
        html,
      });
    }
  } catch (err) {
    console.error("Email notification failed:", err);
  }

  return NextResponse.json({ success: true, id: submission._id }, { status: 201 });
}
