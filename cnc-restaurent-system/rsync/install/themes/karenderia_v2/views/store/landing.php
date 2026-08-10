<?php
// ── SEO meta ─────────────────────────────────────────────
Yii::app()->clientScript->registerMetaTag('Chicken N Chicken Waves - Bestil burgere, chicken, wraps og meget mere online. Afhent i Waves, Greve.', 'description');
Yii::app()->clientScript->registerMetaTag('Chicken N Chicken, Waves, Greve, burger, chicken, bestil online, takeaway, afhentning', 'keywords');
Yii::app()->clientScript->registerMetaTag('Chicken N Chicken Waves - Bestil Online', null, null, array('property'=>'og:title'));
Yii::app()->clientScript->registerMetaTag('Friske burgere, crispy chicken og meget mere. Bestil online og afhent i Waves, Greve.', null, null, array('property'=>'og:description'));
Yii::app()->clientScript->registerMetaTag(Yii::app()->getBaseUrl(true).'/upload/cnc-logo.png', null, null, array('property'=>'og:image'));
Yii::app()->clientScript->registerMetaTag('website', null, null, array('property'=>'og:type'));
Yii::app()->clientScript->registerMetaTag('da_DK', null, null, array('property'=>'og:locale'));

$assets   = Yii::app()->theme->baseUrl . '/assets/images/landing';
$orderUrl = 'https://chickenwaves.dk/chicken-n-chicken';

/**
 * Inline DK→EN translation for the landing page.
 * Karenderia's t() falls back to the key when no message file exists;
 * this helper guarantees an English render when Yii::app()->language starts with 'en'.
 */
if (!function_exists('cnc_tt')) {
  function cnc_tt($da) {
    static $map = array(
      "NYHED" => "NEW",
      "Prøv nu" => "Try it now",
      "Chicken tikka i varmt naanbrød med salat og sauce. Serveres frisk." => "Chicken tikka in warm naan bread with salad and sauce. Served fresh.",
      "Vores favoritter" => "Our favorites",
      "Se hele menuen" => "See full menu",
      "Sprøde kyllingefileter, frisklavet" => "Crispy chicken fillets, freshly made",
      "M, L, XL. Vælg dit fyld" => "M, L, XL. Choose your fillings",
      "Sprød kylling" => "Crispy chicken",
      "Vinger, drumsticks og bites" => "Wings, drumsticks and bites",
      "Syv smage. Altid iskold" => "Seven flavors. Always ice-cold",
      "Find din nærmeste" => "Find your nearest",
      "Skriv din adresse eller tryk på lokation. Så finder vi den nærmeste." => "Enter your address or tap location. We'll find the nearest one.",
      "Din adresse" => "Your address",
      "Indsæt lokation" => "Enter location",
      "Brug min lokation" => "Use my location",
      "Din nærmeste restaurant" => "Your nearest restaurant",
      "Sulten?" => "Hungry?",
      "Bestil online, hent i butikken. Klar på 15 minutter." => "Order online, pick up in store. Ready in 15 minutes.",
      "Bestil online" => "Order online",
      "Få rutevejledning" => "Get directions",
      "Din nærmeste og næstnærmeste restaurant" => "Your nearest and second-nearest restaurant",
      "Finder din placering…" => "Finding your location…",
      "Kunne ikke finde din placering — vælg manuelt" => "Could not find your location — pick manually",
      "Vælg din restaurant" => "Choose your restaurant",
      "Find os her" => "Find us here",
      "Åbningstider" => "Opening hours",
      "Privacy policy" => "Privacy policy",
      "Terms and conditions" => "Terms and conditions",
      "Cookiepolitik" => "Cookie policy",
      "Se kontrolrapport" => "See inspection report",
    );
    $lang = strtolower((string) Yii::app()->language);
    $isEn = strpos($lang, 'en') === 0;
    if ($isEn && isset($map[$da])) return $map[$da];
    return $da;
  }
}

// ── LCP preload — hero image ─────────────────────────────
$cs = Yii::app()->clientScript;
$cs->registerLinkTag('preload', 'image/avif', "$assets/hero-naan-tikka-800.avif", null, array(
  'as' => 'image',
  'fetchpriority' => 'high',
  'imagesrcset' => "$assets/hero-naan-tikka-400.avif 400w, $assets/hero-naan-tikka-800.avif 800w, $assets/hero-naan-tikka-1200.avif 1200w",
  'imagesizes' => '(min-width: 900px) 720px, 100vw',
));
$cs->registerLinkTag('preconnect', null, 'https://www.google.com');
$cs->registerLinkTag('dns-prefetch', null, 'https://maps.googleapis.com');

// ── LQIP (24px blurred base64 WebP; instant paint) ──────
$lqip = array(
  'hero-naan-tikka' => 'data:image/webp;base64,UklGRjoBAABXRUJQVlA4WAoAAAAQAAAAFwAAFwAAQUxQSIEAAAARb6C2jSQ1duFlzA8REUCx2PzVNajgKACANIIGgwazBFZAC/hfr4AmWIOzBJbguARIgyPOfAEi+j8BYEMVhDRN0xAEiqpZXlXXiY2hGu8P3fP1up9CXF6/hHHO+e9sXpjs/URU9oviP2Qnh5yHyMcQ8SC8n5y6gUfX8/ttjIZCsHgAVlA4IJIAAACwBQCdASoYABgAPu1kq0+ppSOiMBgIATAdiWwAnTKAAaoHxBeFQBkyc+5KXpELLStDiowfaIAA/q62hTCGaN4VdP5yPHatQehzEUyNBuML176qboxO3HpY9D+h+CWMX62Kej3Djvon7Zhod0L4Uz6vulbA2imt26XE3aPeZOmjWnIz5CxLMa7lvbi792TVAP0AAA==',
  'cat-burger' => 'data:image/webp;base64,UklGRlABAABXRUJQVlA4WAoAAAAQAAAAFwAAFwAAQUxQSKcAAAARb6CmbQMWF8K+GhGBpVFfziMc1NaeNomDwpmAkgEUMDLABkoChgpIACkoKSADW+Ogv5rAQEFE/ycA/amk6bquyDJCSLaDMAyXY0dB2myb5Xn+PO09PLxVHbNO1M2rBya5WmkPAm/glrEKXHL0sEBiiBwnCg/Kgy9AmlgAyEGkXYuUPot0XXcdMEiZ589YZTSHZbhwMdVcfF1XZAQA5DJVEA0A5UrFDABWUDggggAAANAEAJ0BKhgAGAA+7WalTamloyIwGAwBMB2JZgCdM47BLGXDJ4j6XSyTls8V9oUAAP6M6qLqiKWZdkRvzTUVidVYnY3+qpv4N+8cjmixk7+N/FB9HU1lJ/gsclKzAGChsXxBNSTZGltJFIuo94nGZeM662KelZIetQUyYVNPjWO8AAA=',
  'cat-taco' => 'data:image/webp;base64,UklGRjwBAABXRUJQVlA4WAoAAAAQAAAAFwAAFwAAQUxQSIUAAAARb6CgbRs2VAT7fxERoPLn0IrwETjLtj2poMFGhDXAEhDBGkADC+ABjv/3EwBLMGnAl4ZrWIKI/k+AsivCMoSJSbA6Q4YTpoFFCFaQEV/74Z5FgaXpccc48OH7zWy35TDn/N/kDKRiPE8ygOcScV4ynhaIx6LfcwGMryXQLuoWUVg6LTo+AFZQOCCQAAAAsAUAnQEqGAAYAD7taKlPqaYjoigNUTAdiWwAnTLjdQeugDDLSSPqRthHLDqnPZQWWOaKqH4AAP6uqOLZHdqyJd7701p80JP8p+oHWLfE7VxlvJ9jL4BEgMPrFpFpY/4JFM4L19cgzo+P2sIHQ7wWELyTukrG1SUbmds7d6zmKaEKc+dtewbMuIsfLDxckQAA',
  'cat-chicken' => 'data:image/webp;base64,UklGRlwBAABXRUJQVlA4WAoAAAAQAAAAFwAAFwAAQUxQSLUAAAARb6CgbRsWl8HdiYhAJ9f+nzaEm2rbluX9SfD9UsB3dHeYtYGvDrsWcHYt8BsF4P0SwNsGp0BE/ycA/pRp0jOWqGQCD5ga6hwGCgCImlbs7nFrCcCS1erCvdI5J0BwfFy7SMSbMsRtRCQi2sTE1oUe+wNjfHvCT/Xd/QnxzSvkz18a3Z7xTevyDId5+05EHH1vnQ2OXETvtJ71qwZLjFezfq2cCmsisGQpHdE1UQQAEDVRFOB9AFZQOCCAAAAAMAUAnQEqGAAYAD7tcLBSqaYko6gIATAdiWYAnTKDK2QkbMCrfGPZoWzBLlix0cjp8wAA/cxdrNCS4OGMtbepoFfeDcMWR0Kvqqj8qS/sInQl7RS4Wb5jjgAOlECmyBpXi2w6Lg3cbnxB7qovuZ4g3RPL7qy8AT8KPkEn72SQAAA=',
  'choco-milkshake' => 'data:image/webp;base64,UklGRiwBAABXRUJQVlA4WAoAAAAQAAAAFwAAFwAAQUxQSKoAAAARb6CgbRsWF8HbjYiA7q9yNX9NOK22bVm+nwl+G8DpDtWlQqK6VJcIie5QHQbwAXQCeKd53x9WiOj/BDDMBw2OWfJBg/2Q+kVNSVaqM29wFB9qTGMi5RidLwMPh/jM6QvXtEj0nwDvroSU5RcAFjJyrAnzP3WF5jJShqgrIb7/AXhXRKJH2IgqSlOZB8A7wSGGbnEqifwWd4CbjwrcAQ52iyNipOMIsDAZY1ZQOCBcAAAA8AMAnQEqGAAYAD7hVqZNv6Sjojf6qAPwHAllALsADfIXODYovK/bwAD8WmlEqYfU8NPMYyFEk0ujydQMK5n/+Z9fycgYYe3rabcYKBYkCQkcxdoQOUO68EcAAAA=',
);

/**
 * Emit a modern <picture> with AVIF > WebP > PNG chain, responsive srcset,
 * width/height for CLS, LQIP background for instant paint, and hooks
 * for the skeleton fade-out.
 */
function cnc_picture($assets, $slug, $alt, $sizes, $eager = false, $lqip = '') {
  $srcAvif = "{$assets}/{$slug}-400.avif 400w, {$assets}/{$slug}-800.avif 800w, {$assets}/{$slug}-1200.avif 1200w";
  $srcWebp = "{$assets}/{$slug}-400.webp 400w, {$assets}/{$slug}-800.webp 800w, {$assets}/{$slug}-1200.webp 1200w";
  $srcPng  = "{$assets}/{$slug}-400.png 400w, {$assets}/{$slug}-800.png 800w, {$assets}/{$slug}-1200.png 1200w";
  $fallback = "{$assets}/{$slug}-800.png";
  $priority = $eager ? 'high' : 'auto';
  $loading  = $eager ? 'eager' : 'lazy';
  $style    = $lqip ? "background:url('{$lqip}') center/cover no-repeat;" : '';
  $altEsc   = htmlspecialchars($alt, ENT_QUOTES, 'UTF-8');
  return '<picture class="cnc-pic">'
    . '<source type="image/avif" srcset="' . $srcAvif . '" sizes="' . $sizes . '">'
    . '<source type="image/webp" srcset="' . $srcWebp . '" sizes="' . $sizes . '">'
    . '<img class="cnc-img" src="' . $fallback . '" srcset="' . $srcPng . '" sizes="' . $sizes . '"'
    . ' alt="' . $altEsc . '" width="1200" height="1200"'
    . ' loading="' . $loading . '" decoding="async" fetchpriority="' . $priority . '"'
    . ' style="' . $style . '" onload="this.classList.add(\'is-loaded\');this.parentNode.classList.add(\'is-loaded\')">'
    . '</picture>';
}
?>
<style>
.cnc-lp * { box-sizing: border-box; }
.cnc-lp {
  --maroon: #3d0d0f;
  --maroon-ink: #250607;
  --brand: #f17d00;
  --brand-dark: #d96b00;
  --ink: #1a0f0a;
  --cream: #faf3ea;
  --cream-line: #efe4d0;
  --warm-brown: #6b4c3b;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Helvetica Neue", Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  color: var(--ink);
  line-height: 1.4;
}
.cnc-lp img { display: block; max-width: 100%; }
.cnc-lp a { color: inherit; text-decoration: none; }

/* ── Skeleton system ───────────────────────────────────── */
.cnc-lp .sk {
  position: relative;
  overflow: hidden;
  background: rgba(255,255,255,.06);
}
.cnc-lp .sk::after {
  content: "";
  position: absolute; inset: 0;
  background: linear-gradient(90deg,
    rgba(255,255,255,0) 0%,
    rgba(255,255,255,.12) 45%,
    rgba(255,255,255,.20) 50%,
    rgba(255,255,255,.12) 55%,
    rgba(255,255,255,0) 100%);
  transform: translateX(-100%);
  animation: cnc-shimmer 1.3s ease-in-out infinite;
}
/* On a light background, the shimmer needs darker tones */
.cnc-lp .sk-light { background: rgba(0,0,0,.06); }
.cnc-lp .sk-light::after {
  background: linear-gradient(90deg,
    rgba(0,0,0,0) 0%,
    rgba(0,0,0,.06) 45%,
    rgba(0,0,0,.10) 50%,
    rgba(0,0,0,.06) 55%,
    rgba(0,0,0,0) 100%);
}
@keyframes cnc-shimmer {
  0%   { transform: translateX(-100%); }
  100% { transform: translateX(100%); }
}

/* Real content is invisible until ready */
.cnc-lp .real { opacity: 0; transition: opacity .35s ease .05s; }
.cnc-lp.is-ready .real { opacity: 1; }
/* Skeletons: collapse from layout once ready so panels tighten to content */
.cnc-lp.is-ready .sk-fade { display: none !important; }
/* Reduced-motion: no shimmer, no fade delay */
@media (prefers-reduced-motion: reduce) {
  .cnc-lp .sk::after { animation: none; }
  .cnc-lp .real, .cnc-lp .sk-fade { transition: none !important; }
}

/* ── Image container (blur-up + skeleton) ───────────── */
.cnc-lp .cnc-pic {
  position: relative;
  display: block;
  overflow: hidden;
}
.cnc-lp .cnc-img {
  opacity: 0;
  transition: opacity .35s ease;
  will-change: opacity;
}
.cnc-lp .cnc-img.is-loaded { opacity: 1; }

/* ── HERO ─────────────────────────────────────────────── */
.cnc-lp .hero {
  position: relative;
  background:
    radial-gradient(circle at 88% 20%, rgba(241,125,0,.20) 0%, transparent 55%),
    var(--maroon);
  color: #fff;
  padding: 50px 24px 60px;
  overflow: hidden;
}
@media (max-width: 899px) {
  .cnc-lp .hero { padding: 16px 12px 22px; }
  .cnc-lp .hero-inner { gap: 12px; }
  .cnc-lp .hero-copy { padding: 0 10px; text-align: center; align-items: center; display: flex; flex-direction: column; min-height: 0; }
  .cnc-lp .hero-copy p { margin-left: auto; margin-right: auto; }
  /* Kill transparent PNG padding: fixed-height container + object-fit:cover crops the empty border */
  .cnc-lp .hero-photo { padding: 0; min-height: 0; height: 46vh; max-height: 360px; }
  .cnc-lp .hero-photo .cnc-pic { max-width: 100%; width: 100%; height: 100%; aspect-ratio: auto; }
  .cnc-lp .hero-photo .cnc-img {
    width: 100%; height: 100%;
    object-fit: cover;
    object-position: center 42%;
    transform: none;
  }
  .cnc-lp.is-ready .hero-photo .cnc-img.is-loaded { animation: none !important; }
  /* Split: tighten panels to content, add mobile side padding */
  .cnc-lp .split { min-height: 0; }
  .cnc-lp .split-left  { padding: 40px 24px 44px; }
  .cnc-lp .split-right { padding: 40px 24px 44px; }
}
.cnc-lp .hero-inner {
  max-width: 1280px; margin: 0 auto;
  display: grid; grid-template-columns: 1fr;
  gap: 24px; align-items: center;
}
@media (min-width: 900px) {
  .cnc-lp .hero-inner { grid-template-columns: 1.15fr 1fr; gap: 40px; }
}
.cnc-lp .hero-photo {
  position: relative;
  display: grid; place-items: center;
  min-height: 380px;
}
.cnc-lp .hero-photo .cnc-pic {
  width: 100%;
  max-width: 620px;
  aspect-ratio: 1 / 1;
}
@media (min-width: 900px) {
  .cnc-lp .hero-photo .cnc-pic { max-width: 720px; }
}
.cnc-lp .hero-photo .cnc-img {
  width: 100%; height: 100%;
  object-fit: contain;
  transform-origin: 50% 100%;
  will-change: transform, opacity;
}
.cnc-lp.is-ready .hero-photo .cnc-img.is-loaded {
  animation: cnc-hero-slam 600ms both;
}
@keyframes cnc-hero-slam {
  0%   { transform: translateY(-120px) scale(1.15); opacity: 0;
         animation-timing-function: cubic-bezier(0.5, 0, 0.75, 0); }
  40%  { transform: translateY(0) scale(1); opacity: 1;
         animation-timing-function: ease-out; }
  55%  { transform: translateY(0) scaleY(0.94) scaleX(1.04);
         animation-timing-function: ease-in-out; }
  75%  { transform: translateY(0) scaleY(1.03) scaleX(0.98);
         animation-timing-function: ease-out; }
  100% { transform: translateY(0) scale(1); opacity: 1; }
}
@media (prefers-reduced-motion: reduce) {
  .cnc-lp.is-ready .hero-photo .cnc-img.is-loaded { animation: none !important; }
}

.cnc-lp .hero-copy { position: relative; min-height: 340px; }
.cnc-lp .eyebrow {
  color: var(--brand);
  font-size: clamp(15px, 1.4vw, 18px);
  font-weight: 800;
  letter-spacing: .22em; text-transform: uppercase;
  margin-bottom: 16px;
}
.cnc-lp .hero-copy h1 {
  font-size: clamp(40px, 6.5vw, 84px);
  line-height: .96; letter-spacing: -.02em;
  font-weight: 900; margin: 0 0 22px; color: #fff;
}
.cnc-lp .hero-copy p {
  font-size: clamp(17px, 1.6vw, 22px);
  color: #f3e6d8; max-width: 560px;
  margin: 0 0 32px; line-height: 1.55;
}
.cnc-lp .hero-cta {
  display: inline-block;
  padding: 15px 38px;
  border: 2px solid #fff; color: #fff;
  font-weight: 800; font-size: 15px;
  letter-spacing: .02em;
  background: transparent; cursor: pointer;
  transition: background .18s, color .18s;
}
.cnc-lp .hero-cta:hover { background: #fff; color: var(--maroon); text-decoration: none; }

/* Hero skeleton overlay (positioned to mirror .real) */
.cnc-lp .hero-copy .sk-block {
  position: absolute; left: 0; right: 0;
}
.cnc-lp .sk-eyebrow { width: 82px; height: 12px; top: 4px; }
.cnc-lp .sk-h1-1   { width: 82%; height: clamp(38px, 6vw, 72px); top: 32px; max-width: 520px; }
.cnc-lp .sk-h1-2   { width: 58%; height: clamp(38px, 6vw, 72px); top: calc(32px + clamp(46px, 7vw, 84px)); max-width: 380px; }
.cnc-lp .sk-p-1    { width: 80%; height: 14px; top: calc(32px + 2 * clamp(46px, 7vw, 84px) + 18px); max-width: 520px; }
.cnc-lp .sk-p-2    { width: 65%; height: 14px; top: calc(32px + 2 * clamp(46px, 7vw, 84px) + 42px); max-width: 460px; }
.cnc-lp .sk-p-3    { width: 40%; height: 14px; top: calc(32px + 2 * clamp(46px, 7vw, 84px) + 66px); max-width: 280px; }
.cnc-lp .sk-btn    { width: 160px; height: 46px; top: calc(32px + 2 * clamp(46px, 7vw, 84px) + 108px); }

/* ── VORES FAVORITTER ────────────────────────────────── */
.cnc-lp .cats-wrap { background: var(--cream); padding: 80px 24px;
  content-visibility: auto; contain-intrinsic-size: 1px 600px; }
.cnc-lp .cats { max-width: 1280px; margin: 0 auto; }
.cnc-lp .cats-head {
  display: flex; align-items: baseline; justify-content: space-between;
  margin-bottom: 32px; gap: 12px; flex-wrap: wrap;
}
.cnc-lp .cats h2 {
  margin: 0;
  font-size: clamp(28px, 3.8vw, 44px);
  font-weight: 900; letter-spacing: -.02em; color: var(--ink);
}
.cnc-lp .cats-head a { color: var(--brand); font-weight: 500; font-size: 15px; }
.cnc-lp .cats-grid { display: grid; grid-template-columns: repeat(2, 1fr); gap: 14px; }
@media (min-width: 780px) { .cnc-lp .cats-grid { grid-template-columns: repeat(4, 1fr); gap: 16px; } }
.cnc-lp .cat {
  background: var(--cream);
  text-align: center;
  transition: transform .2s;
  cursor: pointer;
  display: flex; flex-direction: column;
  gap: 3px;
  height: 100%;
}
.cnc-lp .cat:hover { transform: translateY(-3px); }
.cnc-lp .cat-img {
  aspect-ratio: 1 / 1;
  background: #fff;
  display: grid; place-items: center;
  overflow: hidden;
  position: relative;
}
.cnc-lp .cat-img .cnc-pic {
  width: 118%; height: 118%;
}
.cnc-lp .cat-img .cnc-img {
  width: 100%; height: 100%;
  object-fit: contain;
  transform: scale(1.02);
}
.cnc-lp .cat-text {
  background: #fff;
  padding: 14px 12px 16px;
  display: flex; flex-direction: column;
  justify-content: center; align-items: center;
  gap: 4px;
  min-height: 92px;
  flex: 1 1 auto;
}
.cnc-lp .cat h4 {
  margin: 0; font-size: 17px; font-weight: 900;
  letter-spacing: -.01em; color: var(--maroon);
}
.cnc-lp .cat p {
  margin: 0; color: var(--warm-brown);
  font-size: 13px; font-weight: 400; line-height: 1.4;
}
/* Skeleton bars for cat text (overlay the .real) */
.cnc-lp .cat-text { position: relative; }
.cnc-lp .sk-cat-title { width: 60%; height: 14px; margin: 4px 0 6px; }
.cnc-lp .sk-cat-desc  { width: 80%; height: 11px; }

/* ── LOCATION SPLIT ──────────────────────────────────── */
.cnc-lp .split { display: grid; grid-template-columns: 1fr; min-height: 460px;
  content-visibility: auto; contain-intrinsic-size: 1px 460px; }
@media (min-width: 900px) { .cnc-lp .split { grid-template-columns: 1.15fr 1fr; } }
.cnc-lp .split-left {
  background: var(--maroon); color: #fff;
  /* Left padding tracks the 1280px container's inner edge so content aligns
     with .cats + .find-us; right padding stays a fixed inner gutter. */
  padding: 60px 40px 70px max(24px, calc((100vw - 1280px) / 2 + 24px));
  display: flex; flex-direction: column;
  justify-content: center; align-items: flex-start;
  text-align: left;
  position: relative;
}
@media (max-width: 560px) { .cnc-lp .split-left { padding: 48px 22px 60px; } }
.cnc-lp .split-left h2 {
  font-size: clamp(30px, 4.4vw, 52px);
  font-weight: 900; line-height: 1.02;
  letter-spacing: -.02em; margin: 0 0 22px;
  max-width: 520px; color: #fff;
}
.cnc-lp .split-left .sub {
  margin: 0 0 22px; font-size: 15px;
  color: #f3e6d8; opacity: .85; max-width: 460px;
}
.cnc-lp .split-left .real { width: 100%; display: flex; flex-direction: column; align-items: flex-start; }
.cnc-lp .split-left .finder,
.cnc-lp .split-left .results { margin-left: 0; margin-right: 0; }
.cnc-lp .finder {
  display: flex; align-items: center;
  background: #fff; color: var(--ink);
  padding: 6px;
  box-shadow: 0 8px 24px rgba(0,0,0,.22);
  width: 100%; max-width: 520px; gap: 6px;
}
.cnc-lp .finder-field { flex: 1; min-width: 0; padding: 8px 12px; display: flex; flex-direction: column; text-align: left; }
.cnc-lp .finder-field label {
  font-size: 10px; font-weight: 800; color: var(--ink);
  letter-spacing: .08em; text-transform: uppercase;
}
.cnc-lp .finder-field input {
  border: 0; outline: 0; font-size: 15px; padding: 3px 0;
  background: transparent; color: var(--ink); width: 100%;
  font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Helvetica Neue", Arial, sans-serif;
  font-weight: 500;
}
.cnc-lp .finder-field input::placeholder { color: #b6a99b; font-weight: 400; }
.cnc-lp .finder-loc {
  width: 42px; height: 42px; border: 0;
  background: #fff; color: var(--maroon);
  display: grid; place-items: center; cursor: pointer;
}
.cnc-lp .finder-loc:hover { background: #f5f0eb; }
.cnc-lp .finder-go {
  background: var(--maroon); color: #fff; border: 0;
  padding: 0 24px; height: 42px;
  font-weight: 800; font-size: 14px;
  letter-spacing: .05em; cursor: pointer;
}
.cnc-lp .finder-go:hover { background: var(--maroon-ink); }

/* Split-left skeleton overlay */
.cnc-lp .sk-split-h2-1 { width: 80%; height: clamp(34px, 4vw, 56px); max-width: 500px; margin-bottom: 8px; }
.cnc-lp .sk-split-h2-2 { width: 55%; height: clamp(34px, 4vw, 56px); max-width: 380px; margin-bottom: 22px; }
.cnc-lp .sk-split-sub  { width: 80%; height: 14px; max-width: 460px; margin-bottom: 8px; }
.cnc-lp .sk-split-sub-2{ width: 60%; height: 14px; max-width: 340px; margin-bottom: 22px; }
.cnc-lp .sk-finder     { width: 100%; height: 54px; max-width: 520px; }

.cnc-lp .results {
  width: 100%; max-width: 520px;
  margin-top: 22px; display: none;
  flex-direction: column; gap: 10px;
}
.cnc-lp .results.on { display: flex; }
.cnc-lp .results-lead {
  font-size: 11px; font-weight: 800;
  letter-spacing: .14em; text-transform: uppercase;
  color: #f3e6d8; opacity: .85; margin: 4px 2px 2px;
}
.cnc-lp .row-item {
  display: grid; grid-template-columns: 1fr auto;
  align-items: center; gap: 18px; padding: 22px 26px;
  background: rgba(0,0,0,.22);
  border: 1px solid rgba(255,255,255,.10);
  color: #fff; transition: border-color .15s;
}
.cnc-lp .row-item.nearest { border: 1.5px solid var(--brand); }
.cnc-lp .row-item .main { min-width: 0; display: flex; flex-direction: column; gap: 6px; }
.cnc-lp .row-item .name {
  font-weight: 800; font-size: 20px;
  letter-spacing: -.01em; color: #fff;
}
.cnc-lp .row-item .meta { font-size: 14px; color: #d9c7b3; opacity: .8; }
.cnc-lp .row-item .act {
  padding: 14px 22px; font-weight: 600; font-size: 15px;
  background: var(--brand); color: #fff; border: 0;
  cursor: pointer; white-space: nowrap;
  transition: background .15s;
}
.cnc-lp .row-item .act:hover { background: var(--brand-dark); text-decoration: none; color: #fff; }
.cnc-lp .row-item .act.ghost {
  background: transparent; color: #fff;
  padding: 14px 4px;
  text-decoration: underline;
  text-underline-offset: 4px; text-decoration-thickness: 1.5px;
}
.cnc-lp .row-item .act.ghost:hover { color: var(--brand); }
@media (max-width: 480px) {
  .cnc-lp .row-item { grid-template-columns: 1fr; row-gap: 14px; padding: 18px 20px; }
  .cnc-lp .row-item .act { text-align: center; padding: 13px 18px; font-size: 14px; }
  .cnc-lp .row-item .act.ghost { text-align: left; padding: 4px 0; }
}

.cnc-lp .split-right {
  background: var(--brand); color: #fff;
  padding: 70px max(24px, calc((100vw - 1280px) / 2 + 24px)) 70px 40px;
  display: flex; flex-direction: column;
  justify-content: center; align-items: center;
  text-align: center; position: relative; overflow: hidden;
}
@media (max-width: 560px) { .cnc-lp .split-right { padding: 52px 22px; } }
.cnc-lp .split-right::before {
  content: ""; position: absolute; inset: 0;
  background:
    radial-gradient(circle at 30% 30%, rgba(255,255,255,.22) 0%, transparent 55%),
    radial-gradient(circle at 80% 80%, rgba(0,0,0,.10) 0%, transparent 55%);
  pointer-events: none;
}
.cnc-lp .split-right > * { position: relative; z-index: 1; }
.cnc-lp .split-right h2 {
  font-size: clamp(34px, 4.4vw, 56px);
  font-weight: 900; letter-spacing: -.02em;
  margin: 0 0 18px; color: #fff;
}
.cnc-lp .split-right p {
  margin: 0 0 26px; font-size: 15px;
  color: #fff; max-width: 400px;
  opacity: .95; line-height: 1.55;
}
.cnc-lp .split-right .cta {
  background: var(--maroon); color: #fff;
  padding: 16px 34px; font-weight: 800; font-size: 15px;
  letter-spacing: .04em; border: 0; cursor: pointer;
  transition: background .18s;
}
.cnc-lp .split-right .cta:hover { background: var(--maroon-ink); text-decoration: none; color: #fff; }
.cnc-lp .sk-split-r-h2  { width: 220px; height: clamp(38px, 4.4vw, 56px); margin: 0 auto 18px; }
.cnc-lp .sk-split-r-p-1 { width: 85%; height: 14px; max-width: 400px; margin: 0 auto 8px; }
.cnc-lp .sk-split-r-p-2 { width: 60%; height: 14px; max-width: 280px; margin: 0 auto 26px; }
.cnc-lp .sk-split-r-cta { width: 180px; height: 52px; margin: 0 auto; }
</style>

<div class="cnc-lp">

  <!-- 1. HERO ─────────────────────────────────────── -->
  <section class="hero">
    <div class="hero-inner">
      <div class="hero-photo">
        <?php echo cnc_picture($assets, 'hero-naan-tikka', 'Chicken Tikka Naan', '(min-width: 900px) 720px, 100vw', true, $lqip['hero-naan-tikka']); ?>
      </div>
      <div class="hero-copy">
        <!-- Skeleton (fades out when ready) -->
        <div class="sk sk-fade sk-block sk-eyebrow"></div>
        <div class="sk sk-fade sk-block sk-h1-1"></div>
        <div class="sk sk-fade sk-block sk-h1-2"></div>
        <div class="sk sk-fade sk-block sk-p-1"></div>
        <div class="sk sk-fade sk-block sk-p-2"></div>
        <div class="sk sk-fade sk-block sk-p-3"></div>
        <div class="sk sk-fade sk-block sk-btn"></div>
        <!-- Real content -->
        <div class="real">
          <div class="eyebrow"><?php echo cnc_tt("NYHED")?></div>
          <h1>Chicken Tikka Naan</h1>
          <p><?php echo cnc_tt("Chicken tikka i varmt naanbrød med salat og sauce. Serveres frisk.")?></p>
          <a href="<?php echo $orderUrl ?>" class="hero-cta"><?php echo cnc_tt("Prøv nu")?></a>
        </div>
      </div>
    </div>
  </section>

  <!-- 2. VORES FAVORITTER ─────────────────────────── -->
  <section class="cats-wrap" id="menu">
    <div class="cats">
      <div class="cats-head">
        <h2><?php echo cnc_tt("Vores favoritter")?></h2>
        <a href="<?php echo $orderUrl ?>"><?php echo cnc_tt("Se hele menuen")?> →</a>
      </div>
      <div class="cats-grid">
        <?php
        $cats = array(
          array('slug' => 'cat-burger',      'title' => 'Burgers',                     'desc' => cnc_tt("Sprøde kyllingefileter, frisklavet")),
          array('slug' => 'cat-taco',        'title' => 'Tacos',                       'desc' => cnc_tt("M, L, XL. Vælg dit fyld")),
          array('slug' => 'cat-chicken',     'title' => cnc_tt("Sprød kylling"),       'desc' => cnc_tt("Vinger, drumsticks og bites")),
          array('slug' => 'choco-milkshake', 'title' => 'Milk shake',                  'desc' => cnc_tt("Syv smage. Altid iskold")),
        );
        foreach ($cats as $c):
        ?>
        <div class="cat">
          <div class="cat-img">
            <?php echo cnc_picture($assets, $c['slug'], $c['title'], '(min-width: 780px) 25vw, 50vw', false, $lqip[$c['slug']]); ?>
          </div>
          <div class="cat-text">
            <div class="sk sk-fade sk-light sk-cat-title"></div>
            <div class="sk sk-fade sk-light sk-cat-desc"></div>
            <div class="real">
              <h4><?php echo $c['title']; ?></h4>
              <p><?php echo $c['desc']; ?></p>
            </div>
          </div>
        </div>
        <?php endforeach; ?>
      </div>
    </div>
  </section>

  <!-- 3. LOCATION SPLIT ───────────────────────────── -->
  <section class="split" id="restauranter">
    <div class="split-left">
      <!-- Skeleton -->
      <div class="sk sk-fade sk-split-h2-1"></div>
      <div class="sk sk-fade sk-split-h2-2"></div>
      <div class="sk sk-fade sk-split-sub"></div>
      <div class="sk sk-fade sk-split-sub-2"></div>
      <div class="sk sk-fade sk-finder"></div>
      <!-- Real -->
      <div class="real" style="width:100%;">
        <h2><?php echo cnc_tt("Find din nærmeste")?><br>Chicken N Chicken</h2>
        <p class="sub"><?php echo cnc_tt("Skriv din adresse eller tryk på lokation. Så finder vi den nærmeste.")?></p>

        <div class="finder">
          <div class="finder-field">
            <label for="cnc-addr"><?php echo cnc_tt("Din adresse")?></label>
            <input id="cnc-addr" type="text" placeholder="<?php echo cnc_tt("Indsæt lokation")?>">
          </div>
          <button class="finder-loc" title="<?php echo cnc_tt("Brug min lokation")?>" onclick="cncDetectLocation()" aria-label="<?php echo cnc_tt("Brug min lokation")?>">
            <svg width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.2">
              <circle cx="12" cy="12" r="9"></circle>
              <circle cx="12" cy="12" r="3"></circle>
              <line x1="12" y1="2" x2="12" y2="4"></line>
              <line x1="12" y1="20" x2="12" y2="22"></line>
              <line x1="2" y1="12" x2="4" y2="12"></line>
              <line x1="20" y1="12" x2="22" y2="12"></line>
            </svg>
          </button>
          <button class="finder-go" onclick="cncDetectLocation()">GO</button>
        </div>

        <div class="results" id="cnc-results">
          <div class="results-lead" id="cnc-results-lead"><?php echo cnc_tt("Din nærmeste restaurant")?></div>
          <div id="cnc-cards"></div>
        </div>
      </div>
    </div>

    <div class="split-right">
      <!-- Skeleton -->
      <div class="sk sk-fade sk-split-r-h2"></div>
      <div class="sk sk-fade sk-split-r-p-1"></div>
      <div class="sk sk-fade sk-split-r-p-2"></div>
      <div class="sk sk-fade sk-split-r-cta"></div>
      <!-- Real -->
      <div class="real">
        <h2><?php echo cnc_tt("Sulten?")?></h2>
        <p><?php echo cnc_tt("Bestil online, hent i butikken. Klar på 15 minutter.")?></p>
        <a href="<?php echo $orderUrl ?>" class="cta"><?php echo cnc_tt("Bestil online")?> →</a>
      </div>
    </div>
  </section>

</div>

<script>
(function(){
  var ORDER_URL = <?php echo json_encode($orderUrl) ?>;
  var LOCATIONS = [
    { slug:"waves",   name:"Chicken N Chicken Waves",   address:"Over Bølgen 3, st. 1",   city:"2670 Greve",   lat:55.5989, lon:12.3266, canOrder:true,  orderUrl:ORDER_URL },
    { slug:"horsens", name:"Chicken N Chicken Horsens", address:"Lilli Gyldenkildes Torv 11", city:"8700 Horsens", lat:55.8617, lon:9.8503,  canOrder:false, orderUrl:null   }
  ];
  var LABEL_ORDER      = <?php echo json_encode(cnc_tt("Bestil online")) ?>;
  var LABEL_DIRECTIONS = <?php echo json_encode(cnc_tt("Få rutevejledning")) ?>;
  var LEAD_TWO         = <?php echo json_encode(cnc_tt("Din nærmeste og næstnærmeste restaurant")) ?>;
  var LEAD_LOCATING    = <?php echo json_encode(cnc_tt("Finder din placering…")) ?>;
  var LEAD_FAIL        = <?php echo json_encode(cnc_tt("Kunne ikke finde din placering — vælg manuelt")) ?>;
  var LEAD_PICK        = <?php echo json_encode(cnc_tt("Vælg din restaurant")) ?>;

  function distanceKm(a, b) {
    var R = 6371;
    var dLat = (b.lat - a.lat) * Math.PI / 180;
    var dLon = (b.lon - a.lon) * Math.PI / 180;
    var s = Math.pow(Math.sin(dLat/2),2) +
            Math.cos(a.lat*Math.PI/180) * Math.cos(b.lat*Math.PI/180) *
            Math.pow(Math.sin(dLon/2),2);
    return 2 * R * Math.asin(Math.sqrt(s));
  }
  function fmtKm(km) {
    if (km < 1) return Math.round(km * 1000) + " m";
    if (km < 10) return km.toFixed(1) + " km";
    return Math.round(km) + " km";
  }
  function directionsUrl(loc) {
    return "https://www.google.com/maps/dir/?api=1&destination=" + loc.lat + "," + loc.lon;
  }
  function renderRows(sorted) {
    var grid = document.getElementById("cnc-cards");
    var box  = document.getElementById("cnc-results");
    grid.innerHTML = "";
    box.classList.add("on");
    sorted.forEach(function(loc, i) {
      var isNearest = i === 0;
      var actLabel  = loc.canOrder ? LABEL_ORDER : LABEL_DIRECTIONS;
      var actHref   = loc.canOrder ? loc.orderUrl : directionsUrl(loc);
      var actExtra  = loc.canOrder ? "" : 'target="_blank" rel="noopener"';
      var actClass  = loc.canOrder ? "" : "ghost";
      var meta = (loc.distanceKm != null ? fmtKm(loc.distanceKm) + " · " : "") + loc.city;
      grid.insertAdjacentHTML("beforeend",
        '<div class="row-item ' + (isNearest ? "nearest" : "") + '">' +
          '<div class="main">' +
            '<div class="name">' + loc.name + '</div>' +
            '<div class="meta">' + meta + '</div>' +
          '</div>' +
          '<a class="act ' + actClass + '" href="' + actHref + '" ' + actExtra + '>' + actLabel + '</a>' +
        '</div>'
      );
    });
  }
  window.cncDetectLocation = function() {
    var lead = document.getElementById("cnc-results-lead");
    document.getElementById("cnc-results").classList.add("on");
    if (!navigator.geolocation) {
      lead.textContent = LEAD_PICK;
      renderRows(LOCATIONS.map(function(l){ var c={}; for(var k in l) c[k]=l[k]; c.distanceKm=null; return c; }));
      return;
    }
    lead.textContent = LEAD_LOCATING;
    document.getElementById("cnc-cards").innerHTML = "";
    navigator.geolocation.getCurrentPosition(
      function(pos) {
        var me = { lat: pos.coords.latitude, lon: pos.coords.longitude };
        var withDist = LOCATIONS.map(function(l){
          var c={}; for(var k in l) c[k]=l[k];
          c.distanceKm = distanceKm(me, l);
          return c;
        }).sort(function(a,b){ return a.distanceKm - b.distanceKm; });
        lead.textContent = LEAD_TWO;
        renderRows(withDist);
      },
      function() {
        lead.textContent = LEAD_FAIL;
        renderRows(LOCATIONS.map(function(l){ var c={}; for(var k in l) c[k]=l[k]; c.distanceKm=null; return c; }));
      },
      { enableHighAccuracy: true, timeout: 8000 }
    );
  };

  /* ── Skeleton → real reveal ────────────────────────
     Fires when the hero image loads or after 1200ms max.
     Text/skeletons swap instantly; images blur-up individually. */
  var root = document.querySelector('.cnc-lp');
  function markReady() { if (root) root.classList.add('is-ready'); }
  var heroImg = document.querySelector('.hero-photo .cnc-img');
  if (heroImg && heroImg.complete && heroImg.naturalWidth > 0) { markReady(); }
  else if (heroImg) {
    heroImg.addEventListener('load',  markReady, { once: true });
    heroImg.addEventListener('error', markReady, { once: true });
  } else { markReady(); }
  // Safety net — never hold skeleton longer than 1.2s
  setTimeout(markReady, 1200);
})();
</script>
