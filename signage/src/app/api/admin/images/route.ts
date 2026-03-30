import { NextRequest, NextResponse } from "next/server";
import cloudinary from "@/lib/cloudinary";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import ImageModel from "@/models/Image";
import { verifyAdmin } from "@/lib/auth";

// GET: list all images, optionally filter by ?category=
export async function GET(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    await connectDB();

    const category = request.nextUrl.searchParams.get("category");
    const filter: any = {};
    if (category) filter.category = category;

    const images = await ImageModel.find(filter)
      .sort({ category: 1, name: 1 })
      .lean();

    // Get screen usage
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

    const result = images.map((img: any) => ({
      _id: img._id,
      name: img.name,
      category: img.category,
      cloudinaryPublicId: img.cloudinaryPublicId,
      url: img.url,
      width: img.width,
      height: img.height,
      format: img.format,
      sizeBytes: img.sizeBytes,
      createdAt: img.createdAt,
      usedByScreens: usageMap[img.cloudinaryPublicId] || [],
    }));

    return NextResponse.json(result);
  } catch (e: any) {
    console.error("GET /api/admin/images error:", e);
    return NextResponse.json(
      { error: "Failed to fetch images" },
      { status: 500 }
    );
  }
}

// PUT: rename or recategorize an image
export async function PUT(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    const body = await request.json();
    const { _id, name, category } = body;

    if (!_id) {
      return NextResponse.json({ error: "_id required" }, { status: 400 });
    }

    await connectDB();
    const update: any = {};
    if (name !== undefined) update.name = name.trim();
    if (category !== undefined) update.category = category.trim() || "Uncategorized";

    const image = await ImageModel.findByIdAndUpdate(_id, update, { new: true }).lean();
    if (!image) {
      return NextResponse.json({ error: "Image not found" }, { status: 404 });
    }

    return NextResponse.json(image);
  } catch (e: any) {
    console.error("PUT /api/admin/images error:", e);
    return NextResponse.json({ error: "Update failed" }, { status: 500 });
  }
}

// DELETE: remove image from library and Cloudinary
export async function DELETE(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    const body = await request.json();
    const { _id } = body;

    if (!_id) {
      return NextResponse.json({ error: "_id required" }, { status: 400 });
    }

    await connectDB();
    const image = await ImageModel.findById(_id).lean();
    if (!image) {
      return NextResponse.json({ error: "Image not found" }, { status: 404 });
    }

    const publicId = (image as any).cloudinaryPublicId;

    // Check if image is used by any screen
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

    // Delete from Cloudinary and MongoDB
    await cloudinary.uploader.destroy(publicId);
    await ImageModel.findByIdAndDelete(_id);

    return NextResponse.json({ success: true });
  } catch (e: any) {
    console.error("DELETE /api/admin/images error:", e);
    return NextResponse.json({ error: "Delete failed" }, { status: 500 });
  }
}
