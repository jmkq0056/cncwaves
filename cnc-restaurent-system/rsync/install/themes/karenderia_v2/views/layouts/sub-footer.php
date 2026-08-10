<?php
if (!function_exists('cnc_tt')) {
  function cnc_tt($da) {
    static $map = array(
      "Find os her" => "Find us here",
      "Åbningstider" => "Opening hours",
      "Alle dage" => "Every day",
      "Få rutevejledning" => "Get directions",
      "Mere" => "More",
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
