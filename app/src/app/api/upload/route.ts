import { NextRequest, NextResponse } from "next/server";
import { requireAuth } from "@/lib/auth";
import cloudinary from "@/lib/cloudinary";

export async function POST(req: NextRequest) {
  await requireAuth();

  const formData = await req.formData();
  const file = formData.get("file") as File | null;

  if (!file) {
    return NextResponse.json({ error: "No file provided" }, { status: 400 });
  }

  // Convert file to base64 data URI for cloudinary upload
  const bytes = await file.arrayBuffer();
  const buffer = Buffer.from(bytes);
  const base64 = `data:${file.type};base64,${buffer.toString("base64")}`;

  try {
    const result = await cloudinary.uploader.upload(base64, {
      folder: "cnc-stock/products",
      resource_type: "image",
      transformation: [
        { width: 800, height: 800, crop: "limit", quality: "auto" },
      ],
    });

    return NextResponse.json({
      url: result.secure_url,
      public_id: result.public_id,
    });
  } catch (err: any) {
    console.error("Cloudinary upload error:", err);
    return NextResponse.json(
      { error: "Upload failed: " + (err.message || "Unknown error") },
      { status: 500 }
    );
  }
}
