<!--TOP SECTION-->
<div class="container-fluid p-0">
 <div id="top-navigation" class="row m-0" style="flex-wrap:nowrap;">

    <div class="col-auto d-flex align-items-center px-3">
       <?php
       $this->widget('application.components.WidgetSiteLogo',array(
         'class_name'=>'top-logo'
       ));
       ?>
    </div>

    <?php $home_search_mode = 'address'; ?>

    <div class="col d-flex justify-content-end align-items-center px-3">
     <?php $this->widget('application.components.WidgetUserNav');?>
    </div>

 </div>
</div> <!--container-->
<!--END TOP SECTION-->
