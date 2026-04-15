<!DOCTYPE html>
<html lang="<?php echo Yii::app()->language;?>" dir="<?php echo Yii::app()->params['is_rtl']==true?'rtl':'ltr'?>" >
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="<?php echo Yii::app()->request->csrfTokenName?>" content="<?php echo Yii::app()->request->csrfToken?>" />    
<link rel="apple-touch-icon" sizes="76x76" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/apple-touch-icon.png">
<link rel="icon" type="image/png" sizes="32x32" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/favicon-32x32.png">
<link rel="icon" type="image/png" sizes="16x16" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/favicon-16x16.png">
<link rel="manifest" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/site.webmanifest">
<link rel="mask-icon" href="<?php echo Yii::app()->theme->baseUrl?>/assets/icons/safari-pinned-tab.svg" color="#5bbad5">
<meta name="msapplication-TileColor" content="#da532c">
<meta name="theme-color" content="#ffffff">
<title><?php echo CHtml::encode($this->pageTitle); ?></title>
<?php $this->widget('application.components.WidgetFacebookPixel',array(
    'data'=>Yii::app()->params['settings']
));?>
</head>
<body class="position-relative <?php echo $this->getBodyClasses(); ?>" data-spy="scroll" data-target="#menu-category" data-offset="200" >
<script>
// Fix broken choosen_delivery cookie before Karenderia JS loads
// Karenderia setCookie stores raw value (no encoding), getCookie reads raw then JSON.parse
(function(){
  try{
    var c=document.cookie.match(/choosen_delivery=([^;]*)/);
    if(c&&c[1]){JSON.parse(c[1]);}else{throw 1;}
  }catch(e){
    // Set valid JSON string directly (no encoding — matches Karenderia's setCookie format)
    var val=JSON.stringify({whento_deliver:"now",delivery_date:"",delivery_time:"",transaction_type:"pickup"});
    var exp=new Date();exp.setTime(exp.getTime()+30*24*60*60*1000);
    document.cookie='choosen_delivery='+val+';expires='+exp.toUTCString()+';path=/';
  }
})();
</script>

<?php echo $content; ?>

<!-- Bæredygtig Bærepose — info modal triggered by tapping the bag fee line.
     All strings translated via t() so language switcher works (da + en in DB). -->
<div class="modal fade cnc-bag-modal" id="cncBagInfoModal" tabindex="-1" role="dialog" aria-labelledby="cncBagInfoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="border:none !important; border-radius:14px !important; overflow:hidden !important; background:#ffffff !important; color:#222 !important;">
      <div class="modal-header" style="background:linear-gradient(135deg,#3d0d0f,#9d292b) !important; border-bottom:none !important; padding:16px 20px !important;">
        <h5 class="modal-title" id="cncBagInfoModalLabel" style="font-weight:700 !important; color:#ffffff !important; margin:0 !important; font-size:18px !important;"><?php echo t("Bæredygtig Bærepose")?></h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#ffffff !important; opacity:1 !important; text-shadow:none !important; font-size:28px !important; font-weight:300 !important; padding:0 8px !important; margin:0 !important;">
          <span aria-hidden="true" style="color:#ffffff !important;">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center" style="padding:24px 20px 26px !important; background:#ffffff !important; color:#222 !important;">
        <img src="<?php echo Yii::app()->theme->baseUrl?>/assets/images/shopping-bag.png"
             alt="Chicken N Chicken bag"
             style="max-width:240px; width:70%; height:auto; margin:0 auto 14px; display:block;" />
        <div style="display:inline-block; background:#f17d00; color:#ffffff !important; padding:8px 22px; border-radius:22px; font-weight:800; font-size:20px; margin-bottom:16px; letter-spacing:0.3px;">
          4,00 kr
        </div>
        <h6 style="font-weight:700 !important; color:#3d0d0f !important; margin:0 0 8px 0 !important; font-size:16px !important;"><?php echo t("Vores genbrugelige papirpose")?></h6>
        <p style="margin:0 0 14px 0 !important; color:#444 !important; font-size:14px !important; line-height:1.5 !important;">
          <?php echo t("Vi pakker din mad i en kraftig pose med Chicken N Chicken-logo, så du nemt kan tage den med.")?>
        </p>
        <div style="background:#fff5e8 !important; border-left:3px solid #f17d00; padding:10px 14px; text-align:left; border-radius:4px; font-size:12px !important; color:#3d0d0f !important; line-height:1.5 !important;">
          <strong style="color:#3d0d0f !important;"><?php echo t("Lovpligtigt iht. dansk lovgivning")?></strong><br>
          <span style="color:#444 !important;"><?php echo t("I henhold til Plastposeloven (2020) skal alle bæreposer prissættes separat med minimum 4 kr inkl. moms. Beløbet er allerede inkluderet i din ordre og kan ikke fravælges.")?></span>
        </div>
      </div>
    </div>
  </div>
</div>

<!--Start of Tawk.to Script — only on landing + menu pages, minimized by default -->
<!-- DISABLED: Tawk.to is kept in code for future re-enable but not loaded for users.
     Chat bubble button now redirects to the on-site contact form (#contact).
     To re-enable, remove the early `return;` below. -->
<script type="text/javascript">
(function(){
  return; /* Tawk.to disabled — chat button routes to #contact instead */
  var path = window.location.pathname;
  if (path === '/' || path.indexOf('/chicken-n-chicken') === 0) {
    var Tawk_API = window.Tawk_API || {};
    window.Tawk_API = Tawk_API;
    Tawk_API.onLoad = function(){
      Tawk_API.hideWidget();
    };
    Tawk_API.customStyle = { zIndex: 999 };
    var Tawk_LoadStart = new Date();
    var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
    s1.async=true;
    s1.src='https://embed.tawk.to/69d215e0e360ca1c3ce30616/1jleaatpc';
    s1.charset='UTF-8';
    s1.setAttribute('crossorigin','*');
    s0.parentNode.insertBefore(s1,s0);
  }
})();
</script>
<!--End of Tawk.to Script-->

</body>
</html>