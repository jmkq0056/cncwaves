import { NextRequest, NextResponse } from "next/server";
import { connectDB } from "@/lib/db";
import Screen from "@/models/Screen";

// Build the burst-related fields for the tablet's HTTP content sync. Returns
// the new bursts[] array (v1.4+) and the legacy burst{} object (v1.3) so a
// single response works for both client versions.
function burstFields(screen: any) {
  const enabledBursts = (screen.bursts || [])
    .filter((b: any) => b && b.enabled && b.imageUrl)
    .map((b: any) => ({
      id: b.id,
      enabled: true,
      imageUrl: b.imageUrl,
      interval: b.intervalMin || 2,
      duration: b.durationS || 10,
      animation: b.animation === "center-out" ? "center-out" : "wave",
    }));
  // If no bursts[] populated, synthesize from legacy single-burst fields so
  // pre-migration screens still appear in the response with the same data.
  if (enabledBursts.length === 0 && screen.burstEnabled && screen.burstImageUrl) {
    enabledBursts.push({
      id: 1,
      enabled: true,
      imageUrl: screen.burstImageUrl,
      interval: screen.burstInterval || 3,
      duration: screen.burstDuration || 10,
      animation: "wave",
    });
  }
  const legacy = enabledBursts[0] || {
    enabled: false,
    imageUrl: "",
    interval: 3,
    duration: 10,
  };
  return {
    bursts: enabledBursts,
    burst: {
      enabled: !!legacy.enabled,
      imageUrl: legacy.imageUrl || "",
      interval: legacy.interval || 3,
      duration: legacy.duration || 10,
    },
  };
}

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

    const bursts = burstFields(screen);

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
        screenOffMode: screen.screenOffMode || "dim",
        ...bursts,
        serverTime: Date.now(),
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
      ...bursts,
      serverTime: Date.now(),
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
