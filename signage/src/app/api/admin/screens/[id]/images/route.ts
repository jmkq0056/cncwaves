import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";
import { computePlaylistHash } from "@/lib/hash";

export async function POST(
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
    const { filename, cloudinaryPublicId, url } = body;

    if (!filename || !cloudinaryPublicId || !url) {
      return NextResponse.json({ error: "Missing fields" }, { status: 400 });
    }

    // Validate filename (no path traversal)
    if (/[\/\\]|\.\./.test(filename)) {
      return NextResponse.json(
        { error: "Invalid filename" },
        { status: 400 }
      );
    }

    // Atomic push + get updated doc
    const screen = await Screen.findByIdAndUpdate(
      id,
      {
        $push: {
          images: { filename, cloudinaryPublicId, url, order: Date.now() },
        },
        $set: { updatedAt: new Date() },
      },
      { new: true }
    );

    if (!screen) {
      return NextResponse.json({ error: "Not found" }, { status: 404 });
    }

    // Recompute hash after atomic push
    screen.playlistHash = computePlaylistHash(
      screen.images,
      screen.rotationInterval
    );
    await screen.save();

    return NextResponse.json(screen);
  } catch (e) {
    console.error("POST /api/admin/screens/[id]/images error:", e);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}

export async function DELETE(
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
    const { filename } = body;

    if (!filename) {
      return NextResponse.json(
        { error: "filename required" },
        { status: 400 }
      );
    }

    // Atomic pull + get updated doc
    const screen = await Screen.findByIdAndUpdate(
      id,
      {
        $pull: { images: { filename } },
        $set: { updatedAt: new Date() },
      },
      { new: true }
    );

    if (!screen) {
      return NextResponse.json({ error: "Not found" }, { status: 404 });
    }

    // Recompute hash after atomic pull
    screen.playlistHash = computePlaylistHash(
      screen.images,
      screen.rotationInterval
    );
    await screen.save();

    return NextResponse.json(screen);
  } catch (e) {
    console.error("DELETE /api/admin/screens/[id]/images error:", e);
    return NextResponse.json({ error: "Internal server error" }, { status: 500 });
  }
}
