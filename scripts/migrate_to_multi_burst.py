#!/usr/bin/env python3
"""
Migrate the screens collection from the legacy single-burst design to the new
bursts[] rotation model.

What it does (per-screen, ids 1..9 by default):
  1. Mirrors the existing burst (burstEnabled / burstImageUrl / burstInterval /
     burstDuration) into bursts[0] with id=1, animation="wave". This preserves
     the live milkshake configuration unchanged — we do NOT re-upload those
     images, just point bursts[0].imageUrl at the existing Cloudinary URL.
  2. (Optional) Uploads the local discount slices in
     cnc-solutions/burst-slices/burst-screen-{1..9}.png to Cloudinary with
     fresh public_ids, registers them in the Media Library (images
     collection), and wires them into bursts[1] with the chosen animation.
  3. Leaves the legacy burstEnabled / burstImageUrl / etc. fields populated
     so any v1.3 APK still in the field continues to see bursts[0].

Reads MONGO_URI / CLOUDINARY_* from signage-android/.env.

Examples:
  # Dry-run: show what would happen, don't write anything anywhere
  python3 scripts/migrate_to_multi_burst.py

  # Mirror legacy fields into bursts[0] only (no second burst yet)
  python3 scripts/migrate_to_multi_burst.py --apply

  # Mirror legacy AND add the 2nd burst from the already-sliced PNGs
  python3 scripts/migrate_to_multi_burst.py --apply \\
      --add-second-burst \\
      --slices-dir cnc-solutions/burst-slices \\
      --burst2-name "spar 10%" \\
      --burst2-interval 3 \\
      --burst2-duration 8 \\
      --burst2-animation center-out \\
      --burst2-public-prefix cnc-signage/burst-spar10
"""
import argparse
import sys
from datetime import datetime, timezone
from pathlib import Path

REPO = Path(__file__).resolve().parent.parent
ENV_FILE = REPO / "signage-android" / ".env"

try:
    from dotenv import dotenv_values
    import pymongo
    import cloudinary
    import cloudinary.uploader
except ImportError as e:
    sys.exit(
        f"Missing dependency: {e.name}\n"
        "Install with: pip3 install pymongo cloudinary python-dotenv"
    )


def load_env():
    if not ENV_FILE.exists():
        sys.exit(f"Env file not found: {ENV_FILE}")
    env = dotenv_values(ENV_FILE)
    needed = ["MONGO_URI", "CLOUDINARY_CLOUD_NAME", "CLOUDINARY_API_KEY", "CLOUDINARY_API_SECRET"]
    missing = [k for k in needed if not env.get(k)]
    if missing:
        sys.exit(f"Missing env vars: {missing}")
    return env


def upload_burst2_slices(slices_dir: Path, public_prefix: str, screen_ids):
    """Upload burst-screen-{N}.png from `slices_dir` to Cloudinary with
    public_id `{public_prefix}-screen-{N}`. Returns
    {screen_id: {url, public_id, width, height, sizeBytes, format}}.
    """
    out = {}
    for sid in screen_ids:
        src = slices_dir / f"burst-screen-{sid}.png"
        if not src.exists():
            sys.exit(f"Missing slice: {src}")
        public_id = f"{public_prefix}-screen-{sid}"
        print(f"  uploading {src.name} -> {public_id}")
        up = cloudinary.uploader.upload(
            str(src),
            public_id=public_id,
            overwrite=True,
            resource_type="image",
            invalidate=True,
        )
        out[sid] = {
            "url": up["secure_url"],
            "public_id": public_id,
            "width": int(up.get("width", 0)),
            "height": int(up.get("height", 0)),
            "format": up.get("format", "png"),
            "sizeBytes": int(up.get("bytes", 0)),
        }
    return out


def upsert_media_library(db, uploaded, name_prefix, category):
    """Add/update the uploaded slices in the Mongo `images` collection so
    they show up in /admin/images filtered by category."""
    now = datetime.now(timezone.utc)
    for sid, info in uploaded.items():
        public_id = info["public_id"]
        slice_name = f"{name_prefix}-screen-{sid}"
        db.images.update_one(
            {"cloudinaryPublicId": public_id},
            {
                "$set": {
                    "name": slice_name,
                    "category": category,
                    "url": info["url"],
                    "width": info["width"],
                    "height": info["height"],
                    "format": info["format"],
                    "sizeBytes": info["sizeBytes"],
                    "updatedAt": now,
                },
                "$setOnInsert": {"createdAt": now},
            },
            upsert=True,
        )


def build_burst1_from_legacy(s):
    """bursts[0] = exact mirror of the live milkshake config. We do NOT touch
    Cloudinary or imageUrl here — just point at whatever is currently in the
    legacy fields so production behavior doesn't change."""
    return {
        "id": 1,
        "name": "milkshake",
        "enabled": bool(s.get("burstEnabled")) and bool(s.get("burstImageUrl")),
        "imageUrl": s.get("burstImageUrl") or "",
        "cloudinaryId": s.get("burstCloudinaryId") or "",
        "intervalMin": int(s.get("burstInterval") or 2),
        "durationS": int(s.get("burstDuration") or 10),
        "animation": "wave",
    }


def parse_screen_ids(spec):
    sel = set()
    for chunk in spec.split(","):
        chunk = chunk.strip()
        if not chunk:
            continue
        if "-" in chunk:
            a, b = chunk.split("-", 1)
            for i in range(int(a), int(b) + 1):
                sel.add(i)
        else:
            sel.add(int(chunk))
    return sorted(sel)


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true",
                    help="Actually write to Cloudinary and Mongo (default: dry-run)")
    ap.add_argument("--screens", default="1-9",
                    help="Range or list of screen ids to migrate (e.g. '1-9' or '1,2,5')")
    ap.add_argument("--add-second-burst", action="store_true",
                    help="Upload + wire bursts[1] from a slice directory")
    ap.add_argument("--slices-dir", default="cnc-solutions/burst-slices",
                    help="Directory containing burst-screen-{1..9}.png slices")
    ap.add_argument("--burst2-name", default="spar 10%")
    ap.add_argument("--burst2-interval", type=int, default=2,
                    help="Gap (minutes) AFTER burst 2 fires before burst 1 fires again")
    ap.add_argument("--burst2-duration", type=int, default=8,
                    help="Burst 2 show duration in seconds")
    ap.add_argument("--burst2-animation", default="center-out",
                    choices=["wave", "center-out"])
    ap.add_argument("--burst2-public-prefix", default="cnc-signage/burst-spar10",
                    help="Cloudinary public_id prefix (-screen-N is appended)")
    ap.add_argument("--burst2-category", default="Burst",
                    help="Media Library category for the uploaded slices")
    args = ap.parse_args()

    sel = parse_screen_ids(args.screens)
    if not sel:
        sys.exit("No screens selected")

    env = load_env()
    cloudinary.config(
        cloud_name=env["CLOUDINARY_CLOUD_NAME"],
        api_key=env["CLOUDINARY_API_KEY"],
        api_secret=env["CLOUDINARY_API_SECRET"],
        secure=True,
    )
    mongo = pymongo.MongoClient(env["MONGO_URI"])
    db = mongo.get_database(env.get("MONGO_DB", "CNCtest"))

    print(f"Mode: {'APPLY' if args.apply else 'DRY-RUN'}")
    print(f"Screens: {sel}")
    print(f"Add second burst: {args.add_second_burst}")
    if args.add_second_burst:
        print(f"  slices dir:    {args.slices_dir}")
        print(f"  public prefix: {args.burst2_public_prefix}")
        print(f"  name:          {args.burst2_name}")
        print(f"  gap-to-next:   {args.burst2_interval} min")
        print(f"  duration:      {args.burst2_duration} s")
        print(f"  animation:     {args.burst2_animation}")
    print()

    # Step 1: upload burst 2 slices to Cloudinary + register in media library
    burst2_uploaded = {}
    if args.add_second_burst:
        slices_dir = Path(args.slices_dir)
        if not slices_dir.is_absolute():
            slices_dir = REPO / slices_dir
        if not slices_dir.exists():
            sys.exit(f"Slices dir not found: {slices_dir}")
        if args.apply:
            print(f"[1/3] Uploading 9 slices from {slices_dir}/ to Cloudinary...")
            burst2_uploaded = upload_burst2_slices(
                slices_dir, args.burst2_public_prefix, sel
            )
            print(f"\n[2/3] Adding to Media Library (category={args.burst2_category!r})...")
            upsert_media_library(
                db, burst2_uploaded, args.burst2_public_prefix.split("/")[-1],
                args.burst2_category,
            )
        else:
            # Dry-run: synthesize fake URLs so the per-screen plan below
            # still prints something readable.
            for sid in sel:
                burst2_uploaded[sid] = {
                    "url": f"https://res.cloudinary.com/<cloud>/image/upload/<v>/{args.burst2_public_prefix}-screen-{sid}.png",
                    "public_id": f"{args.burst2_public_prefix}-screen-{sid}",
                }

    # Step 2: per-screen Mongo update
    docs = list(db.screens.find({"_id": {"$in": sel}}).sort("_id", 1))
    if not docs:
        sys.exit(f"No screens found for ids {sel}")

    print(f"\n[3/3] Per-screen plan:\n")
    print(f"  {'screen':>6}  {'bursts[0] (mirror legacy)':46}  bursts[1]")
    print(f"  {'-' * 6}  {'-' * 46}  {'-' * 30}")

    for s in docs:
        b1 = build_burst1_from_legacy(s)
        bursts = [b1]
        if args.add_second_burst and s["_id"] in burst2_uploaded:
            info = burst2_uploaded[s["_id"]]
            b2 = {
                "id": 2,
                "name": args.burst2_name,
                "enabled": True,
                "imageUrl": info["url"],
                "cloudinaryId": info["public_id"],
                "intervalMin": args.burst2_interval,
                "durationS": args.burst2_duration,
                "animation": args.burst2_animation,
            }
            bursts.append(b2)

        b1_label = (
            f"id1 {'EN' if b1['enabled'] else '--'} gap={b1['intervalMin']}m "
            f"dur={b1['durationS']}s "
            f"{(b1['imageUrl'].split('/')[-1] if b1['imageUrl'] else '(none)')[:20]}"
        )
        b2_label = (
            f"id2 EN gap={bursts[1]['intervalMin']}m dur={bursts[1]['durationS']}s "
            f"{bursts[1]['animation']}"
            if len(bursts) > 1 else "(unchanged)"
        )
        print(f"  {s['_id']:>6}  {b1_label[:46]:46}  {b2_label}")

        if args.apply:
            db.screens.update_one(
                {"_id": s["_id"]},
                {"$set": {"bursts": bursts}},
            )

    print()
    if not args.apply:
        print("Dry-run only. Re-run with --apply to upload + write changes.")
    else:
        print("Done. The Hetzner change stream will push the new config to all"
              " connected v1.4 tablets within a second.")


if __name__ == "__main__":
    main()
