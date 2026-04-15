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

<!-- Bæredygtig Leveringspose — info modal triggered by tapping the bag fee line -->
<div class="modal fade" id="cncBagInfoModal" tabindex="-1" role="dialog" aria-labelledby="cncBagInfoModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered" role="document">
    <div class="modal-content" style="border:none; border-radius:14px; overflow:hidden;">
      <div class="modal-header" style="background:linear-gradient(135deg,#3d0d0f,#9d292b); color:#fff; border-bottom:none;">
        <h5 class="modal-title" id="cncBagInfoModalLabel" style="font-weight:700;">Bæredygtig Leveringspose</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close" style="color:#fff; opacity:0.9; text-shadow:none;">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body text-center" style="padding:24px 24px 28px;">
        <img src="<?php echo Yii::app()->theme->baseUrl?>/assets/images/shopping-bag.png"
             alt="Chicken N Chicken bag"
             style="max-width:280px; width:80%; height:auto; margin:0 auto 16px;" />
        <div style="display:inline-block; background:#f17d00; color:#fff; padding:6px 18px; border-radius:20px; font-weight:700; font-size:18px; margin-bottom:14px;">
          4,00 kr
        </div>
        <h6 style="font-weight:700; color:#3d0d0f; margin-bottom:8px;">Vores genbrugelige papirpose</h6>
        <p style="margin-bottom:12px; color:#444; font-size:14px; line-height:1.5;">
          Vi pakker din mad i en kraftig pose med Chicken N&nbsp;Chicken-logo, så du nemt kan tage den med hjem eller modtage den til døren.
        </p>
        <div style="background:#fff8f0; border-left:3px solid #f17d00; padding:10px 14px; text-align:left; border-radius:4px; font-size:12px; color:#5a1a1d;">
          <strong>Lovpligtigt iht. dansk lovgivning</strong><br>
          I henhold til <em>Plastposeloven</em> (2020) skal alle bæreposer prissættes separat med minimum 4 kr inkl. moms. Beløbet er allerede inkluderet i din ordre og kan ikke fravælges.
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