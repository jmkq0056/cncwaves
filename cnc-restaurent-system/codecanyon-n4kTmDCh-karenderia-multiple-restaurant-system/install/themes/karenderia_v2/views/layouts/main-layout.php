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
<body class="position-relative <?php echo $this->getBodyClasses(); ?>" data-spy="scroll" data-target="#menu-category" data-offset="75" >
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

<!--Start of Tawk.to Script — only on landing + menu pages, minimized by default -->
<script type="text/javascript">
(function(){
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