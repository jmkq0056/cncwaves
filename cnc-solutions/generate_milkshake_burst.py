#!/usr/bin/env python3
"""
9-screen milkshake burst.
Screens 1-3: Zoomed-in group shot of 3 milkshakes (strawberry, vanilla, chocolate).
Screens 4-9: Bold panoramic text — DRIK VORES LÆKRE MILKSHAKE.
"""

from __future__ import annotations
import random
from pathlib import Path
from PIL import Image, ImageDraw, ImageFont, ImageFilter

NUM_SCREENS = 9
SCREEN_W = 2160
SCREEN_H = 3840
TOTAL_W = SCREEN_W * NUM_SCREENS

# Left zone = screens 1-3, right zone = screens 4-9
LEFT_W = SCREEN_W * 3   # 6480
RIGHT_W = SCREEN_W * 6  # 12960

OUTPUT_DIR = Path(__file__).parent / "output" / "burst_milkshake"
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)

LOGO_PATH = Path(__file__).parent / "output" / "logo_red.png"
HIRES_DIR = Path("/tmp/milkshake_hires")
ITEMS_DIR = Path(__file__).parent / ".." / "kiosk-inspiration" / "api-data" / "images" / "items"

# The 3 flavors
SHAKES = [
    "milkshake-jordb-r.png",     # Strawberry
    "milkshake-vanilje.png",     # Vanilla
    "milkshake-chokolade.png",   # Chocolate
]

BG_DARK = (35, 6, 8)
BG_MID = (75, 18, 15)
BG_WARM = (130, 38, 30)
GOLD = (193, 163, 124)
CREAM = (255, 243, 225)
WHITE = (255, 255, 255)


def lerp(a, b, t):
    return int(a + (b - a) * t)

def lerp_color(c1, c2, t):
    return tuple(lerp(a, b, t) for a, b in zip(c1, c2))

def get_font(size, style="bold"):
    styles = {
        "bold": ["/System/Library/Fonts/Supplemental/Arial Bold.ttf",
                 "/System/Library/Fonts/Helvetica.ttc"],
        "regular": ["/System/Library/Fonts/Supplemental/Arial.ttf",
                    "/System/Library/Fonts/Helvetica.ttc"],
        "italic": ["/System/Library/Fonts/Supplemental/Arial Bold Italic.ttf",
                   "/System/Library/Fonts/Supplemental/Arial Italic.ttf",
                   "/System/Library/Fonts/Supplemental/Georgia Italic.ttf",
                   "/System/Library/Fonts/Supplemental/Times New Roman Italic.ttf"],
    }
    for p in styles.get(style, styles["bold"]):
        try: return ImageFont.truetype(p, size)
        except: continue
    return ImageFont.load_default()

def measure(draw, text, font):
    bb = draw.textbbox((0, 0), text, font=font)
    return bb[2] - bb[0], bb[3] - bb[1]

def text_centered(draw, text, cx, cy, font, fill=WHITE, shadow=14):
    tw, th = measure(draw, text, font)
    x, y = cx - tw // 2, cy - th // 2
    if shadow:
        for s in range(shadow, 0, -2):
            a = int(50 * (s / shadow))
            draw.text((x + s, y + s), text, font=font, fill=(0, 0, 0, a))
    draw.text((x, y), text, font=font, fill=fill)

def draw_bg(draw, w, h):
    for y in range(h):
        t = y / max(1, h - 1)
        if t < 0.35:
            c = lerp_color(BG_DARK, BG_MID, t / 0.35)
        else:
            c = lerp_color(BG_MID, BG_WARM, (t - 0.35) / 0.65)
        draw.rectangle([(0, y), (w, y + 1)], fill=c)

def add_bokeh(img, x_start, x_end):
    ov = Image.new("RGBA", img.size, (0, 0, 0, 0))
    d = ImageDraw.Draw(ov)
    random.seed(99)
    for _ in range(60):
        x = random.randint(x_start, x_end)
        y = random.randint(int(SCREEN_H * 0.15), int(SCREEN_H * 0.95))
        r = random.randint(30, 140)
        alpha = random.randint(10, 28)
        d.ellipse([x - r, y - r, x + r, y + r],
                  fill=(255, 220, 180, alpha))
    ov = ov.filter(ImageFilter.GaussianBlur(radius=35))
    return Image.alpha_composite(img.convert("RGBA"), ov)

def add_glow(img, cx, cy, radius, color):
    glow = Image.new("RGBA", (radius * 2, radius * 2), (0, 0, 0, 0))
    gd = ImageDraw.Draw(glow)
    for r in range(radius, 0, -2):
        t = r / radius
        alpha = int(65 * (1 - t) ** 1.3)
        gd.ellipse([radius - r, radius - r, radius + r, radius + r],
                    fill=(color[0], color[1], color[2], alpha))
    gx = max(0, cx - radius)
    gy = max(0, cy - radius)
    cw = min(radius * 2, img.width - gx)
    ch = min(radius * 2, img.height - gy)
    if cw <= 0 or ch <= 0: return
    region = img.crop((gx, gy, gx + cw, gy + ch)).convert("RGBA")
    gc = glow.crop((0, 0, cw, ch))
    img.paste(Image.alpha_composite(region, gc), (gx, gy))

def gold_line(draw, y, x0, x1, thickness=12):
    for dy in range(thickness):
        t = dy / max(1, thickness - 1)
        a = int(200 * (1 - abs(t - 0.5) * 2) + 55)
        draw.rectangle([(x0, y + dy), (x1, y + dy + 1)],
                       fill=(GOLD[0], GOLD[1], GOLD[2], min(255, a)))

def load_shake(filename):
    hires = HIRES_DIR / filename
    local = ITEMS_DIR / filename
    path = hires if hires.exists() else local
    if not path.exists(): return None
    im = Image.open(path).convert("RGBA")
    bb = im.getbbox()
    if bb: im = im.crop(bb)
    return im


def build():
    img = Image.new("RGBA", (TOTAL_W, SCREEN_H), (0, 0, 0, 255))
    draw = ImageDraw.Draw(img)

    # ── Background ──
    draw_bg(draw, TOTAL_W, SCREEN_H)

    # ── Bokeh on text side ──
    img = add_bokeh(img, LEFT_W, TOTAL_W)
    draw = ImageDraw.Draw(img)

    # ── White banner with logo repeating across full width ──
    banner_h = int(SCREEN_H * 0.12)
    draw.rectangle([(0, 0), (TOTAL_W, banner_h)], fill=WHITE)
    draw.rectangle([(0, banner_h - 8), (TOTAL_W, banner_h)], fill=GOLD)

    if LOGO_PATH.exists():
        logo = Image.open(LOGO_PATH).convert("RGBA")
        target_h = int(banner_h * 0.60)
        sc = target_h / logo.height
        logo = logo.resize((int(logo.width * sc), int(logo.height * sc)), Image.LANCZOS)
        # Tile logo across entire width
        gap = int(logo.width * 0.4)
        total_tile = logo.width + gap
        ly = banner_h // 2 - logo.height // 2
        x = gap // 2
        while x < TOTAL_W:
            img.paste(logo, (x, ly), logo)
            x += total_tile
        draw = ImageDraw.Draw(img)

    # ═══════════════════════════════════════════════════
    # LEFT ZONE (screens 1-3): Milkshake group shot
    # ═══════════════════════════════════════════════════

    shakes = [load_shake(f) for f in SHAKES]
    left_cx = LEFT_W // 2  # center of 3-screen zone

    # Make them BIG — each shake ~70% of screen height
    shake_h = int(SCREEN_H * 0.80)  # massive — fills most of screen

    glows = [
        (255, 130, 130),  # strawberry pink
        (255, 235, 190),  # vanilla warm
        (170, 115, 75),   # chocolate brown
    ]

    # Grouped, overlapping, extending to bottom edge
    positions = [
        (1, 0,      int(SCREEN_H * 1.02), 1.0),    # Vanilla: center, tallest
        (0, -1100,  int(SCREEN_H * 1.05), 0.95),   # Strawberry: left, slightly forward
        (2, 1100,   int(SCREEN_H * 1.05), 0.95),   # Chocolate: right, slightly forward
    ]

    for shake_idx, x_off, y_bot, scale_m in positions:
        shake = shakes[shake_idx]
        if not shake: continue

        h = int(shake_h * scale_m)
        sc = h / shake.height
        w = int(shake.width * sc)
        shake_resized = shake.resize((w, h), Image.LANCZOS)

        scx = left_cx + x_off
        sx = scx - w // 2
        sy = y_bot - h

        # Big warm glow
        add_glow(img, scx, sy + h // 2, int(h * 0.7), glows[shake_idx])
        draw = ImageDraw.Draw(img)

        # Paste shake
        img.paste(shake_resized, (sx, sy), shake_resized)

    draw = ImageDraw.Draw(img)

    # Subtle vertical gold divider between zones
    div_x = LEFT_W - 6
    for dx in range(12):
        t = dx / 11
        a = int(180 * (1 - abs(t - 0.5) * 2))
        draw.rectangle([(div_x + dx, banner_h), (div_x + dx + 1, SCREEN_H)],
                       fill=(GOLD[0], GOLD[1], GOLD[2], a))

    # ═══════════════════════════════════════════════════
    # RIGHT ZONE (screens 4-9): Bold text
    # ═══════════════════════════════════════════════════

    tcx = LEFT_W + RIGHT_W // 2  # text center x

    # MILKSHAKE = big bold, supporting text = smaller regular font, equal gaps
    usable_w = int(RIGHT_W * 0.90)

    def fit_font_w(text, max_w, start=2000, style="bold"):
        for sz in range(start, 100, -20):
            f = get_font(sz, style=style)
            tw, th = measure(draw, text, f)
            if tw <= max_w:
                return f, tw, th
        return get_font(100, style=style), 0, 0

    # MILKSHAKE — big bold, fills width (keep as-is)
    f_milk, _, h_milk = fit_font_w("MILKSHAKE", usable_w, 2000, style="bold")

    # Supporting text — italic tagline feel for top, regular for bottom, same size
    support_size = int(h_milk * 0.38)
    f_top = get_font(support_size, style="italic")
    _, h_top = measure(draw, "Drik vores lækre", f_top)
    f_bot = get_font(support_size, style="regular")
    _, h_bot = measure(draw, "FRISKE · CREMEDE · LÆKRE", f_bot)

    # Distribute spacing — more room below MILKSHAKE
    usable_top = int(SCREEN_H * 0.14)
    usable_bot = int(SCREEN_H * 0.98)
    usable_h = usable_bot - usable_top
    total_text = h_top + h_milk + h_bot
    total_gaps = usable_h - total_text

    # Font descender space makes visual gap uneven — compensate
    # Push bottom text further down so it LOOKS equal to the top gap
    gap_top = int(total_gaps * 0.12)
    gap_mid_above = int(total_gaps * 0.22)
    gap_mid_below = int(total_gaps * 0.40) # much bigger to visually match gap_mid_above
    gap_bottom = int(total_gaps * 0.26)

    y_top = usable_top + gap_top + h_top // 2
    y_milk = usable_top + gap_top + h_top + gap_mid_above + h_milk // 2
    y_bot = usable_top + gap_top + h_top + gap_mid_above + h_milk + gap_mid_below + h_bot // 2

    text_centered(draw, "DRIK VORES LÆKRE", tcx, y_top, f_top, fill=CREAM, shadow=8)
    text_centered(draw, "MILKSHAKE", tcx, y_milk, f_milk, fill=WHITE, shadow=20)
    text_centered(draw, "FRISKE · CREMEDE · LÆKRE", tcx, y_bot, f_bot, fill=GOLD, shadow=8)

    return img.convert("RGB")


def main():
    print("=== GENERATING 9-SCREEN MILKSHAKE BURST ===\n")
    pano = build()

    p = OUTPUT_DIR / "panoramic_full.png"
    pano.save(str(p), "PNG")
    print(f"  Panoramic: {p} ({TOTAL_W}x{SCREEN_H})")

    for i in range(NUM_SCREENS):
        left = i * SCREEN_W
        s = pano.crop((left, 0, left + SCREEN_W, SCREEN_H))
        sp = OUTPUT_DIR / f"burst_screen_{i + 1}.png"
        s.save(str(sp), "PNG")
        print(f"  Screen {i + 1}: {sp}")

    print("\nDone!")


if __name__ == "__main__":
    main()
