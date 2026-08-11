<?php
if (!function_exists('cnc_tt')) {
  function cnc_tt($da) {
    static $map = array(
      "Find os her" => "Find us here",
      "Åbningstider" => "Opening hours",
      "Alle dage" => "Every day",
      "Få rutevejledning" => "Get directions",
      "Mere" => "More",
      "Følg os" => "Follow us",
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
?>
<section class="cnc-footer" style="background:#3d0d0f; color:#f3e6d8; padding:42px 24px 26px;">
  <div class="cnc-footer-inner">
    <div class="cnc-footer-grid">

      <!-- LEFT: Find os her -->
      <div class="cnc-footer-col">
        <h4 class="cnc-footer-title"><?php echo cnc_tt("Find os her")?></h4>
        <div class="cnc-find-body">
          <div class="cnc-map">
            <iframe
              src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCL2EoyEg7aw6rVo90aIue6fmJgm8PcIAU&amp;q=Over+B%C3%B8lgen+3,+2670+Greve,+Denmark&amp;zoom=16&amp;language=<?php echo (strpos(strtolower((string)Yii::app()->language),'en')===0 ? 'en' : 'da') ?>"
              width="100%" height="220"
              style="border:0; display:block;"
              allowfullscreen
              loading="lazy"
              referrerpolicy="no-referrer-when-downgrade"
              title="Chicken N Chicken Waves &mdash; Over B&oslash;lgen 3, 2670 Greve"></iframe>
          </div>
          <div class="cnc-find-meta">
            <p class="cnc-find-label"><?php echo cnc_tt("Åbningstider")?></p>
            <p class="cnc-find-hours">
              <?php echo cnc_tt("Alle dage")?> 11:00&ndash;22:00
            </p>
            <a href="https://www.google.com/maps/dir/?api=1&destination=Over+B%C3%B8lgen+3%2C+2670+Greve"
               target="_blank" rel="noopener"
               class="cnc-dir-btn">
              <?php echo cnc_tt("Få rutevejledning")?>
            </a>
          </div>
        </div>
      </div>

      <!-- RIGHT: Mere / More -->
      <div class="cnc-footer-col">
        <h4 class="cnc-footer-title"><?php echo cnc_tt("Mere")?></h4>
        <div class="cnc-socials" aria-label="<?php echo cnc_tt("Følg os")?>">
          <a href="https://www.facebook.com/profile.php?id=61554289204645" target="_blank" rel="noopener" aria-label="Facebook">
            <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M9.101 23.691v-7.98H6.627v-3.667h2.474v-1.58c0-4.085 1.848-5.978 5.858-5.978.401 0 .955.042 1.468.103a8.68 8.68 0 0 1 1.141.195v3.325a8.623 8.623 0 0 0-.653-.036 26.805 26.805 0 0 0-.733-.009c-.707 0-1.259.096-1.675.309a1.686 1.686 0 0 0-.679.622c-.258.42-.374.995-.374 1.752v1.297h3.919l-.386 2.103-.287 1.564h-3.246v8.245C19.396 23.238 24 18.179 24 12.044c0-6.627-5.373-12-12-12s-12 5.373-12 12c0 5.628 3.874 10.35 9.101 11.647Z"/></svg>
          </a>
          <a href="https://www.instagram.com/chickennchickendk/" target="_blank" rel="noopener" aria-label="Instagram">
            <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M12 2.163c3.204 0 3.584.012 4.85.07 3.252.148 4.771 1.691 4.919 4.919.058 1.265.069 1.645.069 4.849 0 3.205-.012 3.584-.069 4.849-.149 3.225-1.664 4.771-4.919 4.919-1.266.058-1.644.07-4.85.07-3.204 0-3.584-.012-4.849-.07-3.26-.149-4.771-1.699-4.919-4.92-.058-1.265-.07-1.644-.07-4.849 0-3.204.013-3.583.07-4.849.149-3.227 1.664-4.771 4.919-4.919 1.266-.057 1.645-.069 4.849-.069zM12 0C8.741 0 8.333.014 7.053.072 2.695.272.273 2.69.073 7.052.014 8.333 0 8.741 0 12c0 3.259.014 3.668.072 4.948.2 4.358 2.618 6.78 6.98 6.98C8.333 23.986 8.741 24 12 24c3.259 0 3.668-.014 4.948-.072 4.354-.2 6.782-2.618 6.979-6.98.059-1.28.073-1.689.073-4.948 0-3.259-.014-3.667-.072-4.947-.196-4.354-2.617-6.78-6.979-6.98C15.668.014 15.259 0 12 0zm0 5.838a6.162 6.162 0 100 12.324 6.162 6.162 0 000-12.324zM12 16a4 4 0 110-8 4 4 0 010 8zm6.406-11.845a1.44 1.44 0 100 2.881 1.44 1.44 0 000-2.881z"/></svg>
          </a>
          <a href="https://www.tiktok.com/@chicken_n_chicken_dk?lang=en" target="_blank" rel="noopener" aria-label="TikTok">
            <svg viewBox="0 0 24 24" fill="currentColor" aria-hidden="true"><path d="M19.59 6.69a4.83 4.83 0 01-3.77-4.25V2h-3.45v13.67a2.89 2.89 0 01-5.2 1.74 2.89 2.89 0 012.31-4.64 2.93 2.93 0 01.88.13V9.4a6.84 6.84 0 00-1-.05A6.33 6.33 0 005.8 20.1a6.34 6.34 0 0010.86-4.43v-7a8.16 8.16 0 004.77 1.52v-3.4a4.85 4.85 0 01-1.84-.1z"/></svg>
          </a>
        </div>
        <ul class="cnc-more-links">
          <li><a href="<?php echo Yii::app()->createUrl('/privacy')?>"><?php echo cnc_tt("Privacy policy")?></a></li>
          <li><a href="<?php echo Yii::app()->createUrl('/terms')?>"><?php echo cnc_tt("Terms and conditions")?></a></li>
          <li><a href="<?php echo Yii::app()->createUrl('/cookies')?>"><?php echo cnc_tt("Cookiepolitik")?></a></li>
        </ul>
        <a href="https://www.findsmiley.dk/1519975" target="_blank" rel="noopener" class="cnc-smiley" title="<?php echo cnc_tt("Se kontrolrapport")?>">
          <img src="<?php echo Yii::app()->theme->baseUrl?>/assets/img/findsmiley-badge.gif"
               alt="<?php echo cnc_tt("Se kontrolrapport")?> &mdash; findsmiley.dk"
               width="847" height="274" loading="lazy">
        </a>
      </div>
    </div>

    <hr class="cnc-footer-rule">
    <div class="cnc-footer-bottom">
      <span>&copy; <?php echo date("Y")?> Chicken N Chicken</span>
      <span>2talRent ApS &middot; CVR 38272543</span>
    </div>
  </div>
</section>

<style>
.cnc-footer, .cnc-footer * { font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", "Helvetica Neue", Arial, sans-serif; }
.cnc-footer-inner { max-width: 1280px; margin: 0 auto; }
.cnc-footer-grid {
  display: grid;
  grid-template-columns: 1.55fr 1fr;
  gap: 48px;
  align-items: start;
}
@media (max-width: 899px) {
  .cnc-footer-grid { grid-template-columns: 1fr; gap: 32px; }
}
.cnc-footer-col { min-width: 0; }
.cnc-footer-title {
  color: #fff;
  font-weight: 900;
  font-size: clamp(24px, 3vw, 34px);
  letter-spacing: -.01em;
  line-height: 1.05;
  margin: 0 0 20px;
  text-align: left;
}
.cnc-find-body { display: grid; grid-template-columns: 1.35fr 1fr; gap: 28px; align-items: start; }
@media (max-width: 559px) { .cnc-find-body { grid-template-columns: 1fr; gap: 18px; } }
.cnc-map { overflow: hidden; border: 1px solid rgba(255,255,255,0.12); }
.cnc-find-meta { color: #f3e6d8; }
.cnc-find-label {
  margin: 0 0 10px;
  color: #fff;
  font-weight: 900;
  font-size: clamp(20px, 2vw, 26px);
  letter-spacing: -.01em;
  line-height: 1.1;
}
.cnc-find-hours {
  margin: 0 0 22px;
  font-size: 17px;
  font-weight: 500;
  line-height: 1.55;
  color: #e6d7c6;
}
.cnc-dir-btn,
.cnc-dir-btn:link,
.cnc-dir-btn:visited {
  display: inline-block;
  background: #f17d00;
  color: #fff !important;
  font-weight: 800;
  font-size: 14px;
  letter-spacing: .04em;
  padding: 13px 26px;
  text-decoration: none !important;
  border: 0;
  transition: background .18s;
}
.cnc-dir-btn:hover,
.cnc-dir-btn:focus,
.cnc-dir-btn:active { background: #d96b00; color: #fff !important; text-decoration: none !important; }

.cnc-socials {
  display: flex;
  align-items: center;
  gap: 12px;
  margin: 0 0 22px;
}
.cnc-socials a {
  width: 40px; height: 40px;
  display: inline-grid; place-items: center;
  color: #f3e6d8;
  background: rgba(255,255,255,.05);
  border: 1px solid rgba(255,255,255,.10);
  border-radius: 0;
  transition: color .15s, background .15s, border-color .15s, transform .15s;
}
.cnc-socials a:hover,
.cnc-socials a:focus {
  color: #fff !important;
  background: #f17d00;
  border-color: #f17d00;
  transform: translateY(-2px);
  text-decoration: none;
}
.cnc-socials svg { width: 20px; height: 20px; display: block; fill: currentColor; }
.cnc-socials a:hover svg,
.cnc-socials a:focus svg { fill: #fff !important; }

.cnc-more-links {
  list-style: none;
  padding: 0;
  margin: 0 0 24px;
}
.cnc-more-links li { margin: 0 0 12px; }
.cnc-more-links a {
  color: #f3e6d8;
  text-decoration: none;
  font-weight: 500;
  font-size: 16px;
  transition: color .15s;
}
.cnc-more-links a:hover { color: #f17d00; }
.cnc-smiley { display: inline-block; }
.cnc-smiley img { height: 54px; width: auto; display: block; }

.cnc-footer-rule {
  border: 0;
  border-top: 1px solid rgba(255,255,255,.12);
  margin: 30px 0 18px;
}
.cnc-footer-bottom {
  display: flex;
  justify-content: space-between;
  align-items: center;
  color: #a89786;
  font-size: 13px;
  gap: 16px;
  flex-wrap: wrap;
}
@media (max-width: 559px) {
  .cnc-footer-bottom { justify-content: center; text-align: center; }
}
</style>
