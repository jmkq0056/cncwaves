import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import { getFormBySlug } from "@/lib/form-definitions";
import Submission from "@/lib/models/Submission";

// Sanitize: strip HTML tags, trim, limit length
function sanitize(value: unknown): string {
  if (value === null || value === undefined) return "";
  const str = String(value).trim();
  // Strip HTML tags
  const clean = str.replace(/<[^>]*>/g, "");
  // Limit to 5000 chars
  return clean.slice(0, 5000);
}

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

  // Validate required fields and sanitize all values
  const sanitized: Record<string, string> = {};
  for (const field of formDef.fields) {
    const raw = data[field.name];
    const value = sanitize(raw);

    if (field.required && !value) {
      return NextResponse.json(
        { error: `${field.label} is required` },
        { status: 400 }
      );
    }

    // Validate select fields
    if (field.type === "select" && value && field.options) {
      if (!field.options.includes(value)) {
        return NextResponse.json(
          { error: `Invalid value for ${field.label}` },
          { status: 400 }
        );
      }
    }

    // Validate email
    if (field.type === "email" && value && !/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(value)) {
      return NextResponse.json(
        { error: `Invalid email address` },
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

  return NextResponse.json({ success: true, id: submission._id }, { status: 201 });
}
