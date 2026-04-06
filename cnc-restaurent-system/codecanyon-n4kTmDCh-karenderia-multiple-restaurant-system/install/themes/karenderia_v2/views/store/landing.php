<?php
// SEO meta tags
Yii::app()->clientScript->registerMetaTag('Chicken N Chicken Waves - Bestil burgere, chicken, wraps og meget mere online. Afhent i Waves, Greve.', 'description');
Yii::app()->clientScript->registerMetaTag('Chicken N Chicken, Waves, Greve, burger, chicken, bestil online, takeaway, afhentning', 'keywords');
Yii::app()->clientScript->registerMetaTag('Chicken N Chicken Waves - Bestil Online', null, null, array('property'=>'og:title'));
Yii::app()->clientScript->registerMetaTag('Friske burgere, crispy chicken og meget mere. Bestil online og afhent i Waves, Greve.', null, null, array('property'=>'og:description'));
Yii::app()->clientScript->registerMetaTag(Yii::app()->getBaseUrl(true).'/upload/cnc-logo.png', null, null, array('property'=>'og:image'));
Yii::app()->clientScript->registerMetaTag('website', null, null, array('property'=>'og:type'));
Yii::app()->clientScript->registerMetaTag('da_DK', null, null, array('property'=>'og:locale'));
?>
<style>
.cnc-landing * { box-sizing: border-box; }
.cnc-hero {
  background: linear-gradient(160deg, #3d0d0f 0%, #5a1518 40%, #3d0d0f 100%);
  padding: 60px 20px 70px;
  text-align: center;
  position: relative;
  overflow: hidden;
}
.cnc-hero::before {
  content: '';
  position: absolute;
  top: -50%; left: -50%;
  width: 200%; height: 200%;
  background: radial-gradient(circle at 30% 70%, rgba(241,125,0,0.12) 0%, transparent 50%);
}
.cnc-hero .cnc-logo-img {
  max-width: 340px;
  width: 80%;
  height: auto;
  position: relative;
  margin-bottom: 16px;
  filter: brightness(0) invert(1);
}
.cnc-hero .location-name {
  font-size: 52px;
  font-weight: 800;
  color: #fff;
  letter-spacing: 3px;
  margin: 0;
  position: relative;
  text-transform: uppercase;
}
.cnc-hero .location-name span {
  color: #f17d00;
}
.cnc-hero .location-dot {
  color: #f17d00;
  margin: 0 6px;
}
.cnc-hero .tagline {
  color: rgba(255,255,255,0.7);
  font-size: 18px;
  margin: 16px 0 32px;
  font-weight: 300;
  position: relative;
}
.cnc-hero .cta {
  display: inline-block;
  background: #f17d00;
  color: #000;
  font-size: 18px;
  font-weight: 700;
  padding: 16px 48px;
  border-radius: 30px;
  text-decoration: none;
  transition: all 0.3s;
  position: relative;
}
.cnc-hero .cta:hover {
  background: #fff;
  color: #3d0d0f;
  transform: translateY(-2px);
  box-shadow: 0 8px 25px rgba(241,125,0,0.4);
}

.cnc-features {
  display: flex;
  justify-content: center;
  gap: 40px;
  flex-wrap: wrap;
  padding: 50px 20px;
  background: #fff;
  max-width: 900px;
  margin: 0 auto;
}
.cnc-feature {
  text-align: center;
  max-width: 220px;
}
.cnc-feature-icon {
  width: 60px;
  height: 60px;
  border-radius: 50%;
  background: #fff8f0;
  display: flex;
  align-items: center;
  justify-content: center;
  margin: 0 auto 12px;
  font-size: 24px;
  color: #f17d00;
}
.cnc-feature h3 {
  font-size: 17px;
  color: #3d0d0f;
  margin: 0 0 6px;
}
.cnc-feature p {
  font-size: 14px;
  color: #666;
  margin: 0;
}

.cnc-hours {
  background: #fff8f0;
  padding: 40px 20px;
  text-align: center;
}
.cnc-hours h2 {
  color: #3d0d0f;
  font-size: 26px;
  margin: 0 0 20px;
}
.cnc-hours-grid {
  display: inline-block;
  text-align: left;
  font-size: 15px;
  color: #333;
  line-height: 2;
}
.cnc-hours-grid b { color: #3d0d0f; min-width: 120px; display: inline-block; }

.cnc-contact {
  background: #fff;
  padding: 50px 20px;
  max-width: 600px;
  margin: 0 auto;
}
.cnc-contact h2 {
  text-align: center;
  color: #3d0d0f;
  font-size: 26px;
  margin: 0 0 8px;
}
.cnc-contact .contact-sub {
  text-align: center;
  color: #666;
  font-size: 14px;
  margin: 0 0 24px;
}
.cnc-contact .form-control {
  border: 2px solid #eee;
  border-radius: 10px;
  padding: 14px 16px;
  font-size: 15px;
  margin-bottom: 12px;
  width: 100%;
  transition: border-color 0.2s;
}
.cnc-contact .form-control:focus {
  border-color: #f17d00;
  outline: none;
  box-shadow: 0 0 0 3px rgba(241,125,0,0.1);
}
.cnc-contact textarea.form-control { min-height: 120px; resize: vertical; }
.cnc-contact .btn-submit {
  background: #f17d00;
  color: #000;
  font-weight: 700;
  font-size: 16px;
  padding: 14px;
  border: none;
  border-radius: 25px;
  width: 100%;
  cursor: pointer;
  transition: all 0.2s;
}
.cnc-contact .btn-submit:hover {
  background: #3d0d0f;
  color: #fff;
}

@media (max-width: 600px) {
  .cnc-hero { padding: 40px 16px 50px; }
  .cnc-hero .cnc-logo-img { max-width: 240px; }
  .cnc-hero .location-name { font-size: 32px; letter-spacing: 2px; }
  .cnc-hero .tagline { font-size: 15px; }
  .cnc-hero .cta { padding: 14px 36px; font-size: 16px; }
  .cnc-features { gap: 24px; padding: 30px 16px; }
}
</style>

<div class="cnc-landing">

<!-- HERO -->
<div class="cnc-hero">
  <img src="<?php echo Yii::app()->getBaseUrl()?>/upload/cnc-logo.png" alt="Chicken N Chicken" class="cnc-logo-img">
  <h2 class="location-name"><span>Waves</span> <span class="location-dot">&middot;</span> Greve</h2>
  <p class="tagline"><?php echo t("Fresh burgers, crispy chicken and much more")?></p>
  <a href="<?php echo Yii::app()->createUrl('/chicken-n-chicken')?>" class="cta"><?php echo t("Order online")?></a>
</div>

<!-- FEATURES -->
<div class="cnc-features">
  <div class="cnc-feature">
    <div class="cnc-feature-icon"><i class="zmdi zmdi-shopping-basket"></i></div>
    <h3><?php echo t("Order online")?></h3>
    <p><?php echo t("Order directly from our menu and pick up in store")?></p>
  </div>
  <div class="cnc-feature">
    <div class="cnc-feature-icon"><i class="zmdi zmdi-time"></i></div>
    <h3><?php echo t("Pickup now or later")?></h3>
    <p><?php echo t("Choose the time that suits you best")?></p>
  </div>
  <div class="cnc-feature">
    <div class="cnc-feature-icon"><i class="zmdi zmdi-star"></i></div>
    <h3><?php echo t("4.8 out of 5")?></h3>
    <p><?php echo t("Our customers love our food")?></p>
  </div>
</div>

<!-- OPENING HOURS -->
<div class="cnc-hours">
  <h2><?php echo t("Opening hours")?></h2>
  <div class="cnc-hours-grid">
    <b><?php echo t("Monday - Thursday")?></b> 11:00 - 22:00<br>
    <b><?php echo t("Friday - Saturday")?></b> 11:00 - 22:00<br>
    <b><?php echo t("Sunday")?></b> 11:00 - 22:00
  </div>
  <p style="margin-top:16px;color:#666;font-size:14px;">
    <i class="zmdi zmdi-pin mr-1"></i>Over B&oslash;lgen 3, st. 1 &middot; 2670 Greve
  </p>
</div>

<!-- CONTACT FORM -->
<div class="cnc-contact">
  <h2><?php echo t("Kontakt os")?></h2>
  <p class="contact-sub"><?php echo t("Har du spørgsmål? Skriv til os herunder.")?></p>

  <?php if(Yii::app()->user->hasFlash('success')): ?>
  <div class="alert alert-success" style="background:#d4edda;color:#155724;padding:12px;border-radius:8px;margin-bottom:16px;text-align:center;">
    <?php echo Yii::app()->user->getFlash('success'); ?>
  </div>
  <?php endif;?>
  <?php if(Yii::app()->user->hasFlash('error')): ?>
  <div class="alert alert-danger" style="background:#f8d7da;color:#721c24;padding:12px;border-radius:8px;margin-bottom:16px;text-align:center;">
    <?php echo Yii::app()->user->getFlash('error'); ?>
  </div>
  <?php endif;?>

  <?php
  $form = $this->beginWidget('CActiveForm', array(
    'id' => 'landing-contact-form',
    'enableAjaxValidation' => false,
  ));
  ?>

  <?php if(is_array($contact_field)):?>
  <?php foreach ($contact_field as $item):?>
    <?php if($item=="message"):?>
      <textarea name="AR_contact[<?php echo $item?>]" class="form-control" placeholder="<?php echo t("Your message")?>" ><?php echo CHtml::encode($model->$item)?></textarea>
    <?php else:?>
      <input type="<?php echo $item=='email_address'?'email':'text'?>" name="AR_contact[<?php echo $item?>]" class="form-control"
        placeholder="<?php echo $item=='fullname'?t("Your name"):t("Your email")?>"
        value="<?php echo CHtml::encode($model->$item)?>" />
    <?php endif?>
  <?php endforeach;?>
  <?php endif?>

  <button type="submit" class="btn-submit"><?php echo t("Send message")?></button>

  <?php $this->endWidget(); ?>
</div>


</div>
