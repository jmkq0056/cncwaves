import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";

export async function GET(
  request: NextRequest,
  { params }: { params: { id: string } }
) {
  try {
    const id = parseInt(params.id);
    if (isNaN(id) || id < 1 || id > 20) {
      return NextResponse.json({ error: "Invalid screen" }, { status: 404 });
    }

    await connectDB();
    const screen: any = await Screen.findById(id).lean();
    if (!screen) {
      return NextResponse.json({ error: "Not found" }, { status: 404 });
    }

    // Only serve content if published AND has images
    // If not published, return empty hash so Android keeps its cached content
    if (!screen.published || !screen.images || screen.images.length === 0) {
      return NextResponse.json({
        screenId: screen._id,
        name: screen.name,
        hash: "",
        rotationInterval: screen.rotationInterval,
        screenOnTime: screen.screenOnTime || "",
        screenOffTime: screen.screenOffTime || "",
        images: [],
      });
    }

    return NextResponse.json({
      screenId: screen._id,
      name: screen.name,
      hash: screen.playlistHash,
      rotationInterval: screen.rotationInterval,
      screenOnTime: screen.screenOnTime || "",
      screenOffTime: screen.screenOffTime || "",
      screenOffMode: screen.screenOffMode || "dim",
      images: screen.images.map((img: any) => ({
        filename: img.filename,
        url: img.url,
        order: img.order,
      })),
    });
  } catch (e) {
    console.error("GET /api/screens/[id] error:", e);
    return NextResponse.json(
      { error: "Internal server error" },
      { status: 500 }
    );
  }
}
