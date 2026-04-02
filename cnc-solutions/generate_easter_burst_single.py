#!/usr/bin/env python3
"""
Generate a single-screen Easter burst PNG (2160x3840)
with CNC logo banner and Easter opening hours.

Output: output/burst_single.png
"""

from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

# === CANVAS (single vertical screen) ===
SCREEN_W = 2160
SCREEN_H = 3840

OUTPUT_DIR = Path(__file__).parent / "output"
OUTPUT_DIR.mkdir(exist_ok=True)

LOGO_PATH = OUTPUT_DIR / "logo_red.png"

# === BRAND GRADIENT (dark red → warm red) ===
GRAD_TOP = (61, 13, 15)
GRAD_BOT = (165, 46, 40)

# === EASTER MESSAGE ===
LINE_TOP = "PÅSKE"
LINE_MID = "ÅBENT"
LINE_MID2 = "TORSDAG · FREDAG · LØRDAG"
LINE_BOT = "LUKKET"
LINE_BOT2 = "SØNDAG · MANDAG"


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


def draw_gradient(draw, w, h, c1, c2):
    """Full-screen vertical gradient — pixel-perfect, no gaps."""
    for y in range(h):
        t = y / max(1, h - 1)
        r = lerp(c1[0], c2[0], t)
        g = lerp(c1[1], c2[1], t)
        b = lerp(c1[2], c2[2], t)
        draw.rectangle([(0, y), (w, y + 1)], fill=(r, g, b))


def add_vignette(img):
    """Top/bottom darkening for depth."""
    ov = Image.new("RGBA", img.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(ov)
    top_h = int(SCREEN_H * 0.15)
    bot_h = int(SCREEN_H * 0.20)
    for i in range(top_h):
        a = int(60 * (1 - i / top_h))
        d.rectangle([(0, i), (SCREEN_W, i + 1)], fill=(0, 0, 0, a))
    for i in range(bot_h):
        a = int(70 * (i / bot_h))
        y = SCREEN_H - bot_h + i
        d.rectangle([(0, y), (SCREEN_W, y + 1)], fill=(0, 0, 0, a))
    return Image.alpha_composite(img.convert("RGBA"), ov)


def measure_text(draw, text, font):
    bbox = draw.textbbox((0, 0), text, font=font)
    return bbox[2] - bbox[0], bbox[3] - bbox[1]


def draw_centered_text(draw, text, cx, cy, font, fill=(255, 255, 255), shadow=True):
    tw, th = measure_text(draw, text, font)
    x = cx - tw // 2
    y = cy - th // 2
    if shadow:
        draw.text((x + 8, y + 8), text, font=font, fill=(0, 0, 0, 80))
    draw.text((x, y), text, font=font, fill=fill)


def fit_font(draw, text, max_width, start_size, min_size=80):
    size = start_size
    while size >= min_size:
        font = get_font(size)
        tw, _ = measure_text(draw, text, font)
        if tw <= max_width:
            return font
        size -= 10
    return get_font(min_size)


def draw_brand_stripes(draw, cx, cy, height=600):
    """Three CNC brand stripes."""
    bar_w = 55
    gap = 35
    total_w = bar_w * 3 + gap * 2
    x = cx - total_w // 2
    y = cy - height // 2
    colors = [(245, 245, 245), (193, 163, 124), (245, 245, 245)]
    for i, color in enumerate(colors):
        bx = x + i * (bar_w + gap)
        draw.rounded_rectangle([(bx, y), (bx + bar_w, y + height)], radius=12, fill=color)


def draw_accent_line(draw, y, width_frac=0.75):
    margin = int(SCREEN_W * (1 - width_frac) / 2)
    draw.rectangle([(margin, y), (SCREEN_W - margin, y + 6)],
                   fill=(255, 255, 255, 160))


def build_single():
    img = Image.new("RGB", (SCREEN_W, SCREEN_H), (0, 0, 0))
    draw = ImageDraw.Draw(img)

    # 1) Gradient background (no vignette — clean edges)
    draw_gradient(draw, SCREEN_W, SCREEN_H, GRAD_TOP, GRAD_BOT)

    cx = SCREEN_W // 2

    # 2) White banner at top for logo contrast
    banner_h = int(SCREEN_H * 0.12)
    draw.rectangle([(0, 0), (SCREEN_W, banner_h)], fill=(255, 255, 255))

    # 3) Logo on white banner
    if LOGO_PATH.exists():
        logo = Image.open(LOGO_PATH).convert("RGBA")
        # Scale logo to fit nicely — target ~65% screen width
        target_w = int(SCREEN_W * 0.65)
        scale = target_w / logo.width
        new_w = int(logo.width * scale)
        new_h = int(logo.height * scale)
        logo = logo.resize((new_w, new_h), Image.LANCZOS)
        logo_x = cx - new_w // 2
        logo_y = banner_h // 2 - new_h // 2
        img.paste(logo, (logo_x, logo_y), logo)
        draw = ImageDraw.Draw(img)

    # 4) Accent line below banner
    draw_accent_line(draw, int(SCREEN_H * 0.20))

    # 5) "PÅSKE" — big
    usable_w = int(SCREEN_W * 0.85)
    font_top = fit_font(draw, LINE_TOP, usable_w, 500)
    draw_centered_text(draw, LINE_TOP, cx, int(SCREEN_H * 0.30), font_top)

    # 6) Accent line
    draw_accent_line(draw, int(SCREEN_H * 0.39))

    # 7) "ÅBENT" label
    font_label = fit_font(draw, LINE_MID, usable_w, 280)
    draw_centered_text(draw, LINE_MID, cx, int(SCREEN_H * 0.48), font_label,
                       fill=(255, 220, 150))

    # 8) "TORSDAG · FREDAG · LØRDAG"
    font_days = fit_font(draw, LINE_MID2, usable_w, 180)
    draw_centered_text(draw, LINE_MID2, cx, int(SCREEN_H * 0.55), font_days)

    # 9) Accent line
    draw_accent_line(draw, int(SCREEN_H * 0.62), width_frac=0.5)

    # 10) "LUKKET" label
    font_label2 = fit_font(draw, LINE_BOT, usable_w, 280)
    draw_centered_text(draw, LINE_BOT, cx, int(SCREEN_H * 0.71), font_label2,
                       fill=(255, 180, 140))

    # 11) "SØNDAG · MANDAG"
    font_days2 = fit_font(draw, LINE_BOT2, usable_w, 180)
    draw_centered_text(draw, LINE_BOT2, cx, int(SCREEN_H * 0.78), font_days2)

    # 12) Bottom accent line
    draw_accent_line(draw, int(SCREEN_H * 0.85), width_frac=0.5)

    return img.convert("RGB")


def main():
    print("=== GENERATING SINGLE-SCREEN EASTER BURST ===\n")
    img = build_single()
    out = OUTPUT_DIR / "burst_single.png"
    img.save(out, "PNG")
    print(f"  Output: {out} ({SCREEN_W}x{SCREEN_H})")
    print("Done!")


if __name__ == "__main__":
    main()
