import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";
import { verifyAdmin } from "@/lib/auth";
import { computePlaylistHash } from "@/lib/hash";

export async function POST(request: NextRequest) {
  if (!verifyAdmin(request)) {
    return NextResponse.json({ error: "Unauthorized" }, { status: 401 });
  }

  try {
    const { screenIds } = await request.json();
    if (!Array.isArray(screenIds) || screenIds.length === 0) {
      return NextResponse.json(
        { error: "screenIds must be a non-empty array" },
        { status: 400 }
      );
    }

    await connectDB();
    const synced: number[] = [];

    for (const id of screenIds) {
      const screen = await Screen.findById(id);
      if (!screen) continue;

      // Recompute hash with timestamp nonce to force Android re-download
      const nonce = Date.now().toString();
      const newHash = computePlaylistHash(
        screen.images || [],
        screen.rotationInterval || 10000,
        nonce
      );

      screen.playlistHash = newHash;
      screen.updatedAt = new Date();
      await screen.save();
      synced.push(id);
    }

    return NextResponse.json({ success: true, synced });
  } catch (e) {
    console.error("POST /api/admin/screens/force-sync error:", e);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
