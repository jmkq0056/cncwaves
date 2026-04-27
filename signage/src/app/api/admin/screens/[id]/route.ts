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
    if (body.burstEnabled !== undefined) update.burstEnabled = !!body.burstEnabled;
    if (body.burstImageUrl !== undefined) update.burstImageUrl = body.burstImageUrl;
    if (body.burstCloudinaryId !== undefined) update.burstCloudinaryId = body.burstCloudinaryId;
    if (body.burstInterval !== undefined) update.burstInterval = Math.max(1, Math.min(60, Number(body.burstInterval) || 3));
    if (body.burstDuration !== undefined) update.burstDuration = Math.max(3, Math.min(120, Number(body.burstDuration) || 10));

    // New multi-burst array. Validate shape strictly so a malformed payload
    // can't silently corrupt the live config. We also mirror bursts[0] into
    // the legacy single-burst fields so v1.3 APKs see the first burst.
    if (body.bursts !== undefined) {
      if (!Array.isArray(body.bursts) || body.bursts.length > 3) {
        return NextResponse.json(
          { error: "bursts must be an array of at most 3 entries" },
          { status: 400 }
        );
      }
      const seenIds = new Set<number>();
      const cleaned: any[] = [];
      for (const b of body.bursts) {
        const id = Number(b?.id);
        if (!Number.isInteger(id) || id < 1 || id > 3) {
          return NextResponse.json(
            { error: `burst.id must be an integer 1..3, got ${b?.id}` },
            { status: 400 }
          );
        }
        if (seenIds.has(id)) {
          return NextResponse.json(
            { error: `duplicate burst.id ${id}` },
            { status: 400 }
          );
        }
        seenIds.add(id);
        cleaned.push({
          id,
          name: typeof b.name === "string" ? b.name.slice(0, 64) : "",
          enabled: !!b.enabled,
          imageUrl: typeof b.imageUrl === "string" ? b.imageUrl : "",
          cloudinaryId: typeof b.cloudinaryId === "string" ? b.cloudinaryId : "",
          intervalMin: Math.max(1, Math.min(60, Number(b.intervalMin) || 2)),
          durationS: Math.max(3, Math.min(120, Number(b.durationS) || 10)),
          animation: b.animation === "center-out" ? "center-out" : "wave",
        });
      }
      cleaned.sort((a, b) => a.id - b.id);
      update.bursts = cleaned;
      // Legacy mirror: keep bursts[0] in the deprecated top-level fields so
      // v1.3 APKs and the legacy /api/admin/burst toggle see consistent state.
      const first = cleaned.find((b) => b.enabled) || cleaned[0];
      if (first) {
        if (update.burstEnabled === undefined) update.burstEnabled = !!first.enabled;
        if (update.burstImageUrl === undefined) update.burstImageUrl = first.imageUrl;
        if (update.burstCloudinaryId === undefined) update.burstCloudinaryId = first.cloudinaryId;
        if (update.burstInterval === undefined) update.burstInterval = first.intervalMin;
        if (update.burstDuration === undefined) update.burstDuration = first.durationS;
      }
    }

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
