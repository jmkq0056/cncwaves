import { NextRequest, NextResponse } from "next/server";
import cloudinary from "@/lib/cloudinary";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";

export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    // Get all images from Cloudinary cnc-signage folder
    const result = await cloudinary.api.resources({
      type: "upload",
      prefix: "cnc-signage/",
      max_results: 500,
      resource_type: "image",
    });

    // Get all screens to check usage
    await connectDB();
    const screens = await Screen.find().lean();

    const usageMap: Record<string, number[]> = {};
    for (const screen of screens) {
      for (const img of (screen as any).images || []) {
        if (!usageMap[img.cloudinaryPublicId]) {
          usageMap[img.cloudinaryPublicId] = [];
        }
        usageMap[img.cloudinaryPublicId].push((screen as any)._id);
      }
    }

    const images = (result.resources || []).map((r: any) => ({
      publicId: r.public_id,
      url: r.secure_url,
      filename: r.public_id.split("/").pop() + "." + (r.format || "png"),
      format: r.format,
      width: r.width,
      height: r.height,
      createdAt: r.created_at,
      usedByScreens: usageMap[r.public_id] || [],
    }));

    return NextResponse.json(images);
  } catch (e: any) {
    console.error("GET /api/admin/images error:", e);
    return NextResponse.json(
      { error: "Failed to fetch images: " + (e.message || "Unknown error") },
      { status: 500 }
    );
  }
}

export async function DELETE(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    const body = await request.json();
    const { publicId } = body;

    if (!publicId || typeof publicId !== "string") {
      return NextResponse.json(
        { error: "publicId required" },
        { status: 400 }
      );
    }

    // Validate publicId format (only allow cnc-signage/ prefix)
    if (!publicId.startsWith("cnc-signage/")) {
      return NextResponse.json(
        { error: "Invalid publicId" },
        { status: 400 }
      );
    }

    // Check if image is used by any screen
    await connectDB();
    const usedBy = await Screen.find({
      "images.cloudinaryPublicId": publicId,
    }).lean();

    if (usedBy.length > 0) {
      return NextResponse.json(
        {
          error: "Image is assigned to screens",
          screens: usedBy.map((s: any) => s._id),
        },
        { status: 409 }
      );
    }

    await cloudinary.uploader.destroy(publicId);
    return NextResponse.json({ success: true });
  } catch (e: any) {
    console.error("DELETE /api/admin/images error:", e);
    return NextResponse.json(
      { error: "Delete failed: " + (e.message || "Unknown error") },
      { status: 500 }
    );
  }
}
