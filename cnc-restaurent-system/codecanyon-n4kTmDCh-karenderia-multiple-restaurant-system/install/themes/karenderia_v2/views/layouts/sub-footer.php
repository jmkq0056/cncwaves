<div class="find-us-section py-4" style="background:#f6f7f8;">
  <div class="container">
    <h4 class="text-center mb-3" style="color:#3d0d0f; font-weight:700;">Find os her</h4>
    <div class="row align-items-center">
      <div class="col-lg-8 col-md-7 mb-3 mb-md-0">
        <div id="cnc-map-wrap" style="border-radius:12px; overflow:hidden; box-shadow:0 2px 12px rgba(0,0,0,0.1); position:relative;">
          <div id="cnc-map-placeholder"
               role="button"
               tabindex="0"
               aria-label="Vis Google Maps kort"
               onclick="cncLoadMap()"
               onkeypress="if(event.key==='Enter'||event.key===' '){cncLoadMap();}"
               style="height:300px; background:#eef1f5; display:flex; align-items:center; justify-content:center; flex-direction:column; cursor:pointer; padding:20px; text-align:center;">
            <div style="font-size:48px; line-height:1; margin-bottom:12px;">&#128205;</div>
            <p style="margin:0 0 6px; color:#3d0d0f; font-weight:700; font-size:18px;">Over B&oslash;lgen 3, st. 1, 2670 Greve</p>
            <p style="margin:0 0 14px; color:#666; font-size:13px; max-width:380px;">
              Kortet indl&aelig;ses fra Google Maps og kan s&aelig;tte cookies samt sende din IP-adresse til Google.
            </p>
            <button type="button"
                    style="background:#f17d00; color:#000; font-weight:700; border:0; border-radius:25px; padding:8px 24px; cursor:pointer;"
                    onclick="event.stopPropagation(); cncLoadMap();">
              Vis kort
            </button>
          </div>
        </div>
        <script>
          function cncLoadMap(){
            var wrap = document.getElementById('cnc-map-wrap');
            if(!wrap || wrap.dataset.loaded === '1') return;
            wrap.dataset.loaded = '1';
            wrap.innerHTML = '<iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyCL2EoyEg7aw6rVo90aIue6fmJgm8PcIAU&q=Over+B%C3%B8lgen+3,+2670+Greve,+Denmark&zoom=16&language=da" width="100%" height="300" style="border:0; display:block;" allowfullscreen loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>';
          }
        </script>
      </div>
      <div class="col-lg-4 col-md-5">
        <div class="text-center text-md-left" style="color:#3d0d0f;">
          <h5 style="font-weight:700; color:#9d292b;">Chicken N Chicken</h5>
          <p class="mb-2">Over Bølgen 3, st. 1<br>2670 Greve</p>
          <p class="mb-2"><strong>Åbningstider:</strong><br>
            Man–Tor: 11:00–22:00<br>
            Fre–Lør: 11:00–22:00<br>
            Søn: 11:00–22:00
          </p>
          <a href="https://www.google.com/maps/dir/?api=1&destination=Over+B%C3%B8lgen+3%2C+2670+Greve"
             target="_blank"
             class="btn mt-2 cnc-directions-btn"
             style="background:#f17d00; color:#000 !important; font-weight:700; border-radius:25px; padding:8px 24px;"
             onmouseover="this.style.background='#9d292b';this.style.color='#fff'"
             onmouseout="this.style.background='#f17d00';this.style.color='#000'">
            Få rutevejledning
          </a>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="sub-footer py-3">
  <div class="container">
    <div class="row align-items-center">
      <div class="col text-center">
        <a href="<?php echo Yii::app()->createUrl('/privacy')?>" class="cnc-footer-link"><?php echo t("Privacy policy")?></a>
        <a href="<?php echo Yii::app()->createUrl('/terms')?>" class="cnc-footer-link"><?php echo t("Terms and conditions")?></a>
        <a href="<?php echo Yii::app()->createUrl('/cookies')?>" class="cnc-footer-link"><?php echo t("Cookiepolitik")?></a>
        <a href="https://www.findsmiley.dk/1519975" target="_blank" rel="noopener" class="cnc-footer-link"><?php echo t("Kontrolrapporter")?></a>
      </div>
    </div>
    <div class="row mt-2">
      <div class="col text-center" style="font-size:12px; color:#777;">
        2talRent ApS &middot; CVR 38272543 &middot; Over B&oslash;lgen 3, st. 1, 2670 Greve
      </div>
    </div>
  </div>
</div>
<style>
.sub-footer .cnc-footer-link { display: inline-block; margin: 4px 10px; }
@media (max-width: 575px) {
  .sub-footer .cnc-footer-link { display: block; margin: 6px 0; }
}
</style>
