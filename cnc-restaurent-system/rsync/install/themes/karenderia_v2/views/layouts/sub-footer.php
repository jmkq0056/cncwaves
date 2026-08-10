<?php
if (!function_exists('cnc_tt')) {
  function cnc_tt($da) {
    static $map = array(
      "Find os her" => "Find us here",
      "Åbningstider" => "Opening hours",
      "Alle dage" => "Every day",
      "Få rutevejledning" => "Get directions",
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
<div class="find-us-section" style="background:#3d0d0f; color:#f3e6d8; padding:32px 24px 28px;">
  <div class="cnc-find-inner">
    <h4 style="text-align:center; color:#fff; font-weight:900; margin:0 0 24px; font-size:clamp(24px, 3vw, 34px); letter-spacing:-.01em; line-height:1.05; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI','Helvetica Neue',Arial,sans-serif;"><?php echo cnc_tt("Find os her")?></h4>
    <div class="cnc-find-grid">
      <div class="cnc-find-map">
        <div style="overflow:hidden; border:1px solid rgba(255,255,255,0.12);">
          <iframe
            src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCL2EoyEg7aw6rVo90aIue6fmJgm8PcIAU&amp;q=Over+B%C3%B8lgen+3,+2670+Greve,+Denmark&amp;zoom=16&amp;language=<?php echo (strpos(strtolower((string)Yii::app()->language),'en')===0 ? 'en' : 'da') ?>"
            width="100%" height="220"
            style="border:0; display:block;"
            allowfullscreen
            loading="lazy"
            referrerpolicy="no-referrer-when-downgrade"
            title="Chicken N Chicken Waves &mdash; Over B&oslash;lgen 3, 2670 Greve"></iframe>
        </div>
      </div>
      <div class="cnc-find-info" style="color:#f3e6d8; font-family:-apple-system,BlinkMacSystemFont,'Segoe UI','Helvetica Neue',Arial,sans-serif;">
        <p style="margin:0 0 10px; font-weight:900; color:#fff; font-size:clamp(22px, 2.4vw, 28px); letter-spacing:-.01em; line-height:1.1;"><?php echo cnc_tt("Åbningstider")?></p>
        <p style="margin:0 0 20px; font-size:17px; font-weight:500; line-height:1.55; color:#e6d7c6;">
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
</div>

<div class="sub-footer py-3">
  <div class="container">
    <div class="row align-items-center">
      <div class="col text-center">
        <a href="<?php echo Yii::app()->createUrl('/privacy')?>" class="cnc-footer-link"><?php echo cnc_tt("Privacy policy")?></a>
        <a href="<?php echo Yii::app()->createUrl('/terms')?>" class="cnc-footer-link"><?php echo cnc_tt("Terms and conditions")?></a>
        <a href="<?php echo Yii::app()->createUrl('/cookies')?>" class="cnc-footer-link"><?php echo cnc_tt("Cookiepolitik")?></a>
        <a href="https://www.findsmiley.dk/1519975" target="_blank" rel="noopener" class="cnc-footer-link cnc-smiley-link" title="<?php echo cnc_tt("Se kontrolrapport")?>">
          <img src="<?php echo Yii::app()->theme->baseUrl?>/assets/img/findsmiley-badge.gif"
               alt="<?php echo cnc_tt("Se kontrolrapport")?> &mdash; findsmiley.dk"
               width="847" height="274" loading="lazy"
               style="height:54px; width:auto; vertical-align:middle;">
        </a>
      </div>
    </div>
    <div class="row mt-2">
      <div class="col text-center" style="font-size:12px; color:#777;">
        2talRent ApS &middot; CVR 38272543
      </div>
    </div>
  </div>
</div>
<style>
.cnc-find-inner { max-width: 1280px; margin: 0 auto; }
.cnc-find-grid { display: grid; grid-template-columns: 1.15fr 1fr; gap: 32px; align-items: center; }
@media (max-width: 899px) { .cnc-find-grid { grid-template-columns: 1fr; gap: 20px; } }
.sub-footer .cnc-footer-link { display: inline-block; margin: 4px 10px; vertical-align: middle; }
.sub-footer .cnc-smiley-link { padding: 2px 4px; }
@media (max-width: 575px) {
  .sub-footer .cnc-footer-link { display: block; margin: 6px auto; }
  .sub-footer .cnc-smiley-link { margin-top: 10px; }
}
.find-us-section .cnc-dir-btn,
.find-us-section .cnc-dir-btn:link,
.find-us-section .cnc-dir-btn:visited {
  display: inline-block;
  background: #f17d00;
  color: #fff !important;
  font-weight: 800;
  font-size: 14px;
  letter-spacing: .04em;
  padding: 13px 26px;
  text-decoration: none !important;
  border: 0;
  border-radius: 0;
  transition: background .18s, color .18s;
  font-family: -apple-system,BlinkMacSystemFont,'Segoe UI','Helvetica Neue',Arial,sans-serif;
}
.find-us-section .cnc-dir-btn:hover,
.find-us-section .cnc-dir-btn:focus,
.find-us-section .cnc-dir-btn:active {
  background: #d96b00;
  color: #fff !important;
  text-decoration: none !important;
}
</style>
