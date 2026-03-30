import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";
import { computePlaylistHash } from "@/lib/hash";

export async function GET(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const id = parseInt(params.id);
  if (isNaN(id) || id < 1 || id > 20) {
    return NextResponse.json({ error: "Invalid screen" }, { status: 404 });
  }

  try {
    await connectDB();
    const screen = await Screen.findById(id).lean();
    if (!screen) {
      return NextResponse.json({ error: "Not found" }, { status: 404 });
    }
    return NextResponse.json(screen);
  } catch (e) {
    console.error("GET /api/admin/screens/[id] error:", e);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}

export async function PUT(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  const id = parseInt(params.id);
  if (isNaN(id) || id < 1 || id > 20) {
    return NextResponse.json({ error: "Invalid screen" }, { status: 404 });
  }

  try {
    await connectDB();
    const body = await request.json();

    // Validate name
    if (body.name !== undefined) {
      if (typeof body.name !== "string" || body.name.length > 255) {
        return NextResponse.json(
          { error: "name must be a string (max 255 chars)" },
          { status: 400 }
        );
      }
    }

    // Validate rotationInterval
    if (body.rotationInterval !== undefined) {
      if (
        typeof body.rotationInterval !== "number" ||
        body.rotationInterval < 0 ||
        body.rotationInterval > 300000
      ) {
        return NextResponse.json(
          { error: "rotationInterval must be 0-300000 ms" },
          { status: 400 }
        );
      }
    }

    // Validate images array
    if (body.images !== undefined) {
      if (!Array.isArray(body.images)) {
        return NextResponse.json(
          { error: "images must be an array" },
          { status: 400 }
        );
      }
      for (const img of body.images) {
        if (!img.filename || !img.cloudinaryPublicId || !img.url) {
          return NextResponse.json(
            {
              error:
                "Each image must have filename, cloudinaryPublicId, and url",
            },
            { status: 400 }
          );
        }
      }
    }

    // Fetch current screen to compute hash correctly
    const current: any = await Screen.findById(id).lean();
    if (!current) {
      return NextResponse.json({ error: "Not found" }, { status: 404 });
    }

    const update: any = { updatedAt: new Date() };
    if (body.name !== undefined) update.name = body.name;
    if (body.rotationInterval !== undefined)
      update.rotationInterval = body.rotationInterval;
    if (body.images !== undefined) update.images = body.images;
    if (body.screenOnTime !== undefined) update.screenOnTime = body.screenOnTime;
    if (body.screenOffTime !== undefined) update.screenOffTime = body.screenOffTime;
    if (body.screenOffMode !== undefined) update.screenOffMode = body.screenOffMode;

    // Handle publish toggle
    if (body.published !== undefined) {
      update.published = !!body.published;
      if (body.published) {
        update.publishedAt = new Date();
      }
    }

    // Recompute hash whenever images OR rotationInterval changes
    if (body.images !== undefined || body.rotationInterval !== undefined) {
      const finalImages =
        body.images !== undefined ? body.images : current.images;
      const finalInterval =
        body.rotationInterval !== undefined
          ? body.rotationInterval
          : current.rotationInterval;
      update.playlistHash = computePlaylistHash(finalImages, finalInterval);
    }

    // If publishing, force hash recompute with current data
    if (body.published === true && body.images === undefined && body.rotationInterval === undefined) {
      update.playlistHash = computePlaylistHash(current.images, current.rotationInterval);
    }

    const screen = await Screen.findByIdAndUpdate(id, update, {
      new: true,
    }).lean();

    return NextResponse.json(screen);
  } catch (e) {
    console.error("PUT /api/admin/screens/[id] error:", e);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
