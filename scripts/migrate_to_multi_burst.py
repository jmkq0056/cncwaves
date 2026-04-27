#!/usr/bin/env python3
"""
Migrate the screens collection from the legacy single-burst fields to the new
bursts[] array.

What it does (per-screen, ids 1..9 by default):
  1. Mirrors the existing burst (burstEnabled / burstImageUrl / burstInterval /
     burstDuration) into bursts[0] with id=1, animation="wave". This preserves
     the live milkshake configuration unchanged.
  2. Optionally adds a second burst (id=2) by uploading slice files from a
     directory to Cloudinary and pointing bursts[1].imageUrl at them. Use this
     to enable the new "discount" burst alongside the milkshake.
  3. Leaves the legacy fields (burstEnabled, burstImageUrl, etc.) populated so
     that any v1.3 APK still in the field continues to see the first burst.

Reads MONGO_URI / CLOUDINARY_* from signage-android/.env.

Examples:
  # Dry-run: just show what would be written
  python3 scripts/migrate_to_multi_burst.py

  # Migrate legacy bursts into bursts[0] only (no second burst yet)
  python3 scripts/migrate_to_multi_burst.py --apply

  # Migrate + add a 2nd burst from already-sliced PNGs in cnc-solutions/burst-slices
  python3 scripts/migrate_to_multi_burst.py --apply \\
      --add-second-burst \\
      --second-slices cnc-solutions/burst-slices \\
      --second-name "spar 10%" \\
      --second-interval 3 \\
      --second-duration 8 \\
      --second-animation center-out \\
      --second-public-prefix cnc-signage/burst-spar10
"""
import argparse
import io
import sys
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


def upload_slices(slice_dir: Path, public_prefix: str):
    """Upload burst-screen-{1..9}.png files in `slice_dir` to Cloudinary
    using public_id = `{public_prefix}-screen-N`. Returns a dict
    {screen_id: (url, public_id)}.
    """
    out = {}
    for i in range(1, 10):
        f = slice_dir / f"burst-screen-{i}.png"
        if not f.exists():
            sys.exit(f"Missing slice: {f}")
        public_id = f"{public_prefix}-screen-{i}"
        print(f"  uploading {f.name} -> {public_id}")
        up = cloudinary.uploader.upload(
            str(f),
            public_id=public_id,
            overwrite=True,
            resource_type="image",
            invalidate=True,
        )
        out[i] = (up["secure_url"], public_id)
    return out


def build_first_burst(s):
    """Mirror the legacy burst{Enabled,ImageUrl,etc.} into a bursts[] entry.
    Always returns an entry; if there's no legacy URL it's just disabled."""
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


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true",
                    help="Actually write to Mongo (default: dry-run)")
    ap.add_argument("--screens", type=str, default="1-9",
                    help="Range or list of screen ids to migrate (e.g. '1-9' or '1,2,5')")
    ap.add_argument("--add-second-burst", action="store_true",
                    help="Also populate bursts[1] from a slice directory")
    ap.add_argument("--second-slices", type=str, default="",
                    help="Path to dir with burst-screen-{1..9}.png slices")
    ap.add_argument("--second-name", type=str, default="discount")
    ap.add_argument("--second-interval", type=int, default=3,
                    help="Minutes between fires for burst 2")
    ap.add_argument("--second-duration", type=int, default=8,
                    help="Show duration in seconds for burst 2")
    ap.add_argument("--second-animation", type=str, default="center-out",
                    choices=["wave", "center-out"])
    ap.add_argument("--second-public-prefix", type=str, default="cnc-signage/burst-spar10",
                    help="Cloudinary public_id prefix for the 9 uploaded slices")
    args = ap.parse_args()

    # Parse screen id selection
    sel = set()
    for chunk in args.screens.split(","):
        chunk = chunk.strip()
        if "-" in chunk:
            a, b = chunk.split("-", 1)
            for i in range(int(a), int(b) + 1):
                sel.add(i)
        elif chunk:
            sel.add(int(chunk))
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

    # Optional: upload slices for second burst BEFORE touching Mongo so we can
    # populate the URLs in one update.
    second_urls = {}
    if args.add_second_burst:
        if not args.second_slices:
            sys.exit("--add-second-burst requires --second-slices <dir>")
        slice_dir = Path(args.second_slices)
        if not slice_dir.is_absolute():
            slice_dir = REPO / slice_dir
        if not slice_dir.exists():
            sys.exit(f"Slice dir not found: {slice_dir}")
        if args.apply:
            print(f"\nUploading 9 slices from {slice_dir}/ to Cloudinary...")
            second_urls = upload_slices(slice_dir, args.second_public_prefix)
        else:
            # In dry-run mode, fake URLs so the preview reflects the prefix
            for i in range(1, 10):
                second_urls[i] = (
                    f"https://res.cloudinary.com/<cloud>/image/upload/<v>/{args.second_public_prefix}-screen-{i}.png",
                    f"{args.second_public_prefix}-screen-{i}",
                )

    docs = list(db.screens.find({"_id": {"$in": sorted(sel)}}).sort("_id", 1))
    if not docs:
        sys.exit(f"No screen docs found for ids {sorted(sel)}")

    print(f"\nMode: {'APPLY' if args.apply else 'DRY-RUN'}   second burst: {args.add_second_burst}\n")
    print(f"  {'screen':6} {'first (mirror legacy)':40}  {'second':20}")

    for s in docs:
        first = build_first_burst(s)
        bursts = [first]
        if args.add_second_burst:
            url, pub_id = second_urls.get(s["_id"], ("", ""))
            second = {
                "id": 2,
                "name": args.second_name,
                "enabled": bool(url),
                "imageUrl": url,
                "cloudinaryId": pub_id,
                "intervalMin": args.second_interval,
                "durationS": args.second_duration,
                "animation": args.second_animation,
            }
            bursts.append(second)

        first_label = (
            f"id1 {'EN' if first['enabled'] else '--'} "
            f"{first['intervalMin']}m/{first['durationS']}s "
            f"{first['imageUrl'].split('/')[-1] if first['imageUrl'] else '(none)'}"
        )
        if len(bursts) > 1:
            second_label = (
                f"id2 {'EN' if bursts[1]['enabled'] else '--'} "
                f"{bursts[1]['intervalMin']}m/{bursts[1]['durationS']}s "
                f"{bursts[1]['animation']}"
            )
        else:
            second_label = "(unchanged)"
        print(f"   {s['_id']:>4}  {first_label[:39]:39}  {second_label[:19]:19}")

        if args.apply:
            # Set bursts[]; do NOT touch the legacy single-burst fields. Server
            # mirrors them automatically when bursts[0] is updated via API,
            # but for direct DB writes we leave them alone so v1.3 APKs that
            # might still be running keep firing the milkshake.
            db.screens.update_one(
                {"_id": s["_id"]},
                {"$set": {"bursts": bursts}},
            )

    if not args.apply:
        print("\nDry-run only. Re-run with --apply to write changes.")
    else:
        print("\nDone. Hetzner change stream will push the new config to all"
              " connected v1.4 tablets.")


if __name__ == "__main__":
    main()
