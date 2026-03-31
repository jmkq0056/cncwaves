#!/usr/bin/env python3
"""
Generate 9 burst PNGs for signage screens with one shared Easter message
split across all 9 vertical screens (2160x3840 each).

Output:  output/burst_screen_1.png … burst_screen_9.png
Preview: burst_preview.html (just loads the PNGs)
"""

from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

# === CANVAS ===
SCREEN_W = 2160
SCREEN_H = 3840
NUM_SCREENS = 9
TOTAL_W = SCREEN_W * NUM_SCREENS  # 19440
TOTAL_H = SCREEN_H

OUTPUT_DIR = Path(__file__).parent / "output"
OUTPUT_DIR.mkdir(exist_ok=True)

# === BRAND GRADIENTS (dark red → orange, matching existing burst identity) ===
BURST_COLORS = [
    ((61, 13, 15),   (90, 21, 24)),
    ((90, 21, 24),   (114, 28, 31)),
    ((114, 28, 31),  (138, 35, 37)),
    ((138, 35, 37),  (165, 46, 40)),
    ((165, 46, 40),  (192, 58, 28)),
    ((192, 58, 28),  (216, 80, 16)),
    ((216, 80, 16),  (232, 101, 5)),
    ((232, 101, 5),  (241, 125, 0)),
    ((241, 125, 0),  (248, 144, 32)),
]

# === EASTER MESSAGE ===
LINE_TOP = "PÅSKE"
LINE_MID = "ÅBENT  TORSDAG · FREDAG · LØRDAG"
LINE_BOT = "LUKKET  SØNDAG · MANDAG"


def lerp(a, b, t):
    return int(a + (b - a) * t)


def get_font(size):
    for path in [
        "/System/Library/Fonts/Supplemental/Arial Bold.ttf",
        "/System/Library/Fonts/Helvetica.ttc",
        "/usr/share/fonts/truetype/dejavu/DejaVuSans-Bold.ttf",
    ]:
        try:
            return ImageFont.truetype(path, size)
        except Exception:
            continue
    return ImageFont.load_default()


def draw_gradient(draw, x0, y0, w, h, c1, c2):
    """Vertical band gradient for one screen slice."""
    bands = 256
    band_h = max(1, h // bands)
    for i in range(bands + 1):
        t = min(1.0, max(0.0, (i / bands) * 0.7 + 0.15))
        r = lerp(c1[0], c2[0], t)
        g = lerp(c1[1], c2[1], t)
        b = lerp(c1[2], c2[2], t)
        y1 = y0 + i * band_h
        y2 = min(y0 + h, y1 + band_h + 2)
        draw.rectangle([(x0, y1), (x0 + w, y2)], fill=(r, g, b))


def add_vignette(img):
    """Subtle top/bottom darkening for depth."""
    ov = Image.new("RGBA", img.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(ov)
    top_h = int(TOTAL_H * 0.18)
    bot_h = int(TOTAL_H * 0.22)
    for i in range(top_h):
        a = int(70 * (1 - i / top_h))
        d.rectangle([(0, i), (TOTAL_W, i + 1)], fill=(0, 0, 0, a))
    for i in range(bot_h):
        a = int(80 * (i / bot_h))
        y = TOTAL_H - bot_h + i
        d.rectangle([(0, y), (TOTAL_W, y + 1)], fill=(0, 0, 0, a))
    return Image.alpha_composite(img.convert("RGBA"), ov)


def draw_brand_stripes(draw, cx, cy, height=900, on_dark=True):
    """Three CNC brand stripes centered at cx, cy. Adapts colors for background."""
    bar_w = 85
    gap = 50
    total_w = bar_w * 3 + gap * 2
    x = cx - total_w // 2
    y = cy - height // 2
    if on_dark:
        colors = [(245, 245, 245), (193, 163, 124), (245, 245, 245)]
    else:
        # On orange/light bg: use dark brand colors for contrast
        colors = [(255, 255, 255), (90, 21, 24), (255, 255, 255)]
    for i, color in enumerate(colors):
        bx = x + i * (bar_w + gap)
        draw.rounded_rectangle([(bx, y), (bx + bar_w, y + height)], radius=16, fill=color)


def measure_text(draw, text, font):
    bbox = draw.textbbox((0, 0), text, font=font)
    return bbox[2] - bbox[0], bbox[3] - bbox[1]


def draw_centered_text(draw, text, cx, cy, font, fill=(255, 255, 255), shadow=True):
    """Draw text centered at (cx, cy) with optional shadow."""
    tw, th = measure_text(draw, text, font)
    x = cx - tw // 2
    y = cy - th // 2
    if shadow:
        draw.text((x + 12, y + 12), text, font=font, fill=(0, 0, 0, 100))
    draw.text((x, y), text, font=font, fill=fill)


def fit_font(draw, text, max_width, start_size, min_size=200):
    """Find the largest font size that fits within max_width."""
    size = start_size
    while size >= min_size:
        font = get_font(size)
        tw, _ = measure_text(draw, text, font)
        if tw <= max_width:
            return font
        size -= 20
    return get_font(min_size)


def build_master():
    img = Image.new("RGB", (TOTAL_W, TOTAL_H), (0, 0, 0))
    draw = ImageDraw.Draw(img)

    # 1) Per-screen gradients
    for i in range(NUM_SCREENS):
        c1, c2 = BURST_COLORS[i]
        draw_gradient(draw, i * SCREEN_W, 0, SCREEN_W, SCREEN_H, c1, c2)

    # 2) Vignette
    img = add_vignette(img)
    draw = ImageDraw.Draw(img)

    # === LAYOUT ===
    cx = TOTAL_W // 2
    # Usable area: screens 2-8 center (skip screen 1 & 9 for stripes)
    content_x1 = SCREEN_W  # after screen 1
    content_x2 = TOTAL_W - SCREEN_W  # before screen 9
    content_cx = (content_x1 + content_x2) // 2
    content_w = content_x2 - content_x1  # 7 screens wide

    # --- Brand stripes on screen 1 (left, dark bg) and screen 9 (right, orange bg) ---
    draw_brand_stripes(draw, SCREEN_W // 2, int(TOTAL_H * 0.38), height=1200, on_dark=True)
    draw_brand_stripes(draw, TOTAL_W - SCREEN_W // 2, int(TOTAL_H * 0.38), height=1200, on_dark=False)

    # --- "PÅSKE" — huge, centered on screens 2-8 ---
    font_top = fit_font(draw, LINE_TOP, int(content_w * 0.85), 1800)
    draw_centered_text(draw, LINE_TOP, content_cx, int(TOTAL_H * 0.26), font_top)

    # --- Accent line ---
    line_x1 = content_x1 - SCREEN_W // 3
    line_x2 = content_x2 + SCREEN_W // 3
    line_y1 = int(TOTAL_H * 0.42)
    draw.rectangle([(line_x1, line_y1), (line_x2, line_y1 + 10)], fill=(255, 255, 255, 200))

    # --- "ÅBENT  TORSDAG · FREDAG · LØRDAG" — centered on screens 2-8 ---
    font_mid = fit_font(draw, LINE_MID, int(content_w * 0.95), 600)
    draw_centered_text(draw, LINE_MID, content_cx, int(TOTAL_H * 0.54), font_mid)

    # --- "LUKKET  SØNDAG · MANDAG" — centered below ---
    font_bot = fit_font(draw, LINE_BOT, int(content_w * 0.80), 520)
    draw_centered_text(draw, LINE_BOT, content_cx, int(TOTAL_H * 0.68), font_bot)

    # --- Bottom accent line ---
    line_y2 = int(TOTAL_H * 0.78)
    draw.rectangle([(line_x1, line_y2), (line_x2, line_y2 + 10)], fill=(255, 255, 255, 120))

    return img.convert("RGB")


def slice_and_save(master):
    paths = []
    for i in range(NUM_SCREENS):
        x0 = i * SCREEN_W
        crop = master.crop((x0, 0, x0 + SCREEN_W, SCREEN_H))
        out = OUTPUT_DIR / f"burst_screen_{i + 1}.png"
        crop.save(out, "PNG")
        paths.append(out)
        print(f"  Screen {i + 1}: {out.name}")
    return paths


def main():
    print("=== GENERATING EASTER BURST (9 screens) ===\n")

    master = build_master()
    master.save(OUTPUT_DIR / "burst_master.png", "PNG")
    print(f"  Master: burst_master.png ({TOTAL_W}x{TOTAL_H})\n")

    print("Slicing...")
    slice_and_save(master)

    print(f"\nDone! Preview: open cnc-solutions/burst_preview.html")


if __name__ == "__main__":
    main()
