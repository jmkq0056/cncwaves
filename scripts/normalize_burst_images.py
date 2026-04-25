#!/usr/bin/env python3
"""
Normalize the 9 burst images on Cloudinary + MongoDB so all screens decode
in roughly the same time on the RK3288 tablets.

Why file size alone isn't the full story: all 9 images are already 2160x3840
PNG, so the *decoded bitmap* is identical in memory and the GPU upload cost
is the same. The outlier (2.2 MB screen-2) just takes longer to PNG-decompress.
Re-encoding with the same compression settings normalizes that. Downscaling
to the tablet's native 1080x1920 is the bigger win — cuts decode work ~4x.

Reads MONGO_URI / CLOUDINARY_* from signage-android/.env.

Usage:
  # dry-run (no uploads, no Mongo writes)
  python3 scripts/normalize_burst_images.py

  # apply: lossless recompression at original 2160x3840
  python3 scripts/normalize_burst_images.py --apply

  # apply + downscale to 1080x1920 (recommended for RK3288)
  python3 scripts/normalize_burst_images.py --apply --resize 1080x1920

  # apply + palette mode (smaller + more uniform, mild quality loss)
  python3 scripts/normalize_burst_images.py --apply --resize 1080x1920 --lossy
"""
import argparse
import io
import sys
import urllib.request
from pathlib import Path

ENV_FILE = Path(__file__).resolve().parent.parent / "signage-android" / ".env"

try:
    from dotenv import dotenv_values
    from PIL import Image
    import cloudinary
    import cloudinary.uploader
    import pymongo
except ImportError as e:
    sys.exit(
        f"Missing dependency: {e.name}\n"
        "Install with: pip3 install pymongo cloudinary pillow python-dotenv"
    )


def load_env():
    if not ENV_FILE.exists():
        sys.exit(f"Env file not found: {ENV_FILE}")
    env = dotenv_values(ENV_FILE)
    need = ["MONGO_URI", "CLOUDINARY_CLOUD_NAME", "CLOUDINARY_API_KEY", "CLOUDINARY_API_SECRET"]
    missing = [k for k in need if not env.get(k)]
    if missing:
        sys.exit(f"Missing env vars in {ENV_FILE}: {missing}")
    return env


def cloudinary_public_id(url: str) -> str:
    """Parse public_id out of a Cloudinary URL.
    https://res.cloudinary.com/<cloud>/image/upload/v123/cnc-signage/burst-milkshake-screen-1.png
      -> cnc-signage/burst-milkshake-screen-1
    """
    after_upload = url.split("/upload/", 1)
    if len(after_upload) != 2:
        return ""
    segments = after_upload[1].split("/")
    # Drop version segment (v123456)
    if segments and segments[0].startswith("v") and segments[0][1:].isdigit():
        segments = segments[1:]
    joined = "/".join(segments)
    # Drop extension
    if "." in joined.rsplit("/", 1)[-1]:
        joined = joined.rsplit(".", 1)[0]
    return joined


def reencode(raw: bytes, resize=None, lossy=False) -> bytes:
    img = Image.open(io.BytesIO(raw))
    if img.mode != "RGBA":
        img = img.convert("RGBA")
    if resize:
        img = img.resize(resize, Image.LANCZOS)

    out = io.BytesIO()
    if lossy:
        # Palette-mode PNG: quantize to 256 colors. For the milkshake burst
        # this is visually near-identical but the file is much smaller and
        # more uniform across screens (PNG complexity variance collapses).
        palette = img.quantize(colors=256, method=Image.FASTOCTREE, dither=Image.FLOYDSTEINBERG)
        palette.save(out, format="PNG", optimize=True, compress_level=9)
    else:
        img.save(out, format="PNG", optimize=True, compress_level=9)
    return out.getvalue()


def parse_resize(s):
    if not s:
        return None
    try:
        w, h = s.lower().split("x")
        return (int(w), int(h))
    except Exception:
        sys.exit(f"--resize must be WxH (e.g. 1080x1920), got: {s!r}")


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--apply", action="store_true",
                    help="Actually upload to Cloudinary + update MongoDB (default: dry-run)")
    ap.add_argument("--resize", default="",
                    help="Resize to WxH (e.g. 1080x1920). Omit to keep original dimensions.")
    ap.add_argument("--lossy", action="store_true",
                    help="Quantize to 256-color palette (smaller + uniform, mild quality loss)")
    args = ap.parse_args()
    resize = parse_resize(args.resize)

    env = load_env()
    cloudinary.config(
        cloud_name=env["CLOUDINARY_CLOUD_NAME"],
        api_key=env["CLOUDINARY_API_KEY"],
        api_secret=env["CLOUDINARY_API_SECRET"],
        secure=True,
    )
    mongo = pymongo.MongoClient(env["MONGO_URI"])
    db = mongo.get_database(env.get("MONGO_DB", "CNCtest"))

    screens = list(
        db.screens.find({"burstEnabled": True, "burstImageUrl": {"$ne": ""}}).sort("_id", 1)
    )
    mode = "APPLY" if args.apply else "DRY-RUN"
    print(f"Mode: {mode}   resize: {resize or 'keep original'}   lossy: {args.lossy}")
    print(f"Processing {len(screens)} burst-enabled screen(s)\n")

    outputs = []  # (screen_doc, new_png_bytes)
    for s in screens:
        url = s["burstImageUrl"]
        raw = urllib.request.urlopen(url, timeout=30).read()
        new = reencode(raw, resize=resize, lossy=args.lossy)
        before = len(raw) / 1024
        after = len(new) / 1024
        delta = (after - before) / before * 100
        print(f"  screen {s['_id']}: {before:7.1f} KB -> {after:7.1f} KB  ({delta:+6.1f}%)")
        outputs.append((s, new))

    sizes_kb = [len(b) / 1024 for _, b in outputs]
    print(
        f"\n  spread: min={min(sizes_kb):.1f} KB  "
        f"max={max(sizes_kb):.1f} KB  "
        f"diff={max(sizes_kb) - min(sizes_kb):.1f} KB"
    )

    if not args.apply:
        print("\nDry-run only. Re-run with --apply to upload + update Mongo.")
        return

    print("\nUploading to Cloudinary and updating MongoDB...")
    from datetime import datetime
    for s, new_bytes in outputs:
        pub_id = cloudinary_public_id(s["burstImageUrl"])
        if not pub_id:
            print(f"  screen {s['_id']}: cannot parse public_id, skipping")
            continue
        up = cloudinary.uploader.upload(
            new_bytes,
            public_id=pub_id,
            overwrite=True,
            resource_type="image",
            invalidate=True,
        )
        new_url = up["secure_url"]
        # 1) Update screen.burstImageUrl (what tablets read)
        db.screens.update_one(
            {"_id": s["_id"]},
            {"$set": {"burstImageUrl": new_url, "burstCloudinaryId": pub_id}},
        )
        # 2) Upsert into the Media Library ('images' collection) so it shows
        #    up in /admin/images. Same public_id means existing entry updates.
        now = datetime.utcnow()
        display_name = pub_id.rsplit("/", 1)[-1]
        db.images.update_one(
            {"cloudinaryPublicId": pub_id},
            {
                "$set": {
                    "name": display_name,
                    "category": "Burst",
                    "url": new_url,
                    "width": int(up.get("width", 0)),
                    "height": int(up.get("height", 0)),
                    "format": up.get("format", "png"),
                    "sizeBytes": int(up.get("bytes", len(new_bytes))),
                    "updatedAt": now,
                },
                "$setOnInsert": {"createdAt": now},
            },
            upsert=True,
        )
        print(f"  screen {s['_id']}: updated -> {new_url}")

    print("\nDone. The Hetzner signage-server's change stream will push the new")
    print("burstImageUrl to connected tablets on its next 'config' broadcast.")


if __name__ == "__main__":
    main()
