import { NextRequest, NextResponse } from "next/server";
import cloudinary from "@/lib/cloudinary";
import { connectDB } from "@/lib/db";
import ImageModel from "@/models/Image";
import { verifyAdmin } from "@/lib/auth";

// Step 1: GET signed params for direct Cloudinary upload
export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const timestamp = Math.round(Date.now() / 1000);
  const params = {
    timestamp,
    folder: "cnc-signage",
    format: "png",
  };

  const signature = cloudinary.utils.api_sign_request(
    params,
    process.env.CLOUDINARY_API_SECRET!
  );

  return NextResponse.json({
    signature,
    timestamp,
    cloudName: process.env.CLOUDINARY_CLOUD_NAME!,
    apiKey: process.env.CLOUDINARY_API_KEY!,
    folder: "cnc-signage",
  });
}

// Step 2: POST to save image metadata after Cloudinary upload completes
export async function POST(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const body = await request.json();
  const { name, category, cloudinaryPublicId, url, width, height, format, sizeBytes } = body;

  if (!name || !cloudinaryPublicId || !url) {
    return NextResponse.json(
      { error: "name, cloudinaryPublicId, and url are required" },
      { status: 400 }
    );
  }

  await connectDB();

  const image = await ImageModel.create({
    name: name.trim(),
    category: (category || "Uncategorized").trim(),
    cloudinaryPublicId,
    url,
    width: width || 0,
    height: height || 0,
    format: format || "png",
    sizeBytes: sizeBytes || 0,
  });

  return NextResponse.json(image, { status: 201 });
}
