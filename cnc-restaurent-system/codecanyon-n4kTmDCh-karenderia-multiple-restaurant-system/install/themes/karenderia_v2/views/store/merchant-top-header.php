<DIV id="vue-merchant-details">

<div class="merchant-top-header d-none d-lg-block" v-cloak>
   <div class="container pt-2 pb-3">
	
		<div class="pt-1 pb-3" >
			<el-breadcrumb>
				<el-breadcrumb-item ><a href="<?php echo Yii::app()->createUrl("/store/index")?>"><?php echo t("Home")?></a></el-breadcrumb-item>
				<el-breadcrumb-item><a href="<?php echo Yii::app()->createUrl("/store/restaurants")?>"><?php echo t("Restaurant")?></a></el-breadcrumb-item>
				<el-breadcrumb-item>
				<span class="d-inline-block text-truncate" style="max-width: 300px;">
				<?php echo CommonUtility::safeDecode($data['restaurant_name'])?> -        
				<?php echo CommonUtility::safeDecode($data['address'])?>
				</span>
				</el-breadcrumb-item>    
			</el-breadcrumb>
		</div>


		<div class="row" v-cloak>
		   <div class="col-6 left-info p-3">
			
		      <div class="d-flex align-items-start">			  
				<div>
				    <el-image
						style="width: 130px; max-height: 130px;min-width: 130px; min-height: 100px"
						src="<?php echo $data['url_logo'];?>"
						fit="contain"
						lazy
						class="img-thumbnail"
					>
					</el-image>												
				</div>
				<!-- left -->
				<div class="pl-3" style="min-width:300px;">					
					<template v-if="is_loading" >
						<el-skeleton animated :loading="is_loading"  :rows="1">
							<el-skeleton-item variant="text" style="margin-right: 16px" ></el-skeleton-item>
							<el-skeleton-item variant="text" style="width: 30%"></el-skeleton-item>
						</el-skeleton>
					</template>
					<template v-else>

						<?php if(is_array($data['cuisine']) && count($data['cuisine'])>=1):?> 		
						<ul class="p-0 m-0 mb-1 text-grey">
							<?php foreach ($data['cuisine'] as $cuisine_key=> $item_cuisine):?> 
							<li><?php echo $item_cuisine;?></li>
							<?php if($cuisine_key>2){break;}?>
							<div class="info-items-dot-separator"></div>						
							<?php endforeach?>
						</ul>
						<?php endif?>

						<h4><?php echo CommonUtility::safeDecode($data['restaurant_name'])?></h4>

						<ul class="p-0 m-0 mb-1">
							<li class="mr-1"><i class="zmdi zmdi-star"></i><i class="zmdi zmdi-star"></i><i class="zmdi zmdi-star"></i><i class="zmdi zmdi-star"></i><i class="zmdi zmdi-star-half"></i></li>
							<li><b>4.8</b> <span>(27)</span></li>
							<?php if(!empty($open_end)):?>
							<div class="info-items-dot-separator"></div>
							<li class="mr-1"><i class="zmdi zmdi-time"></i></li>
							<li>
								<?php echo t("Open until {ends}",[
									'{ends}'=>$open_end
								])?>
							</li>
							<?php endif;?>
						</ul>					

					</template>
					<component-promo-details
						:merchant_id="<?php echo intval($data['merchant_id'])?>"
						:label="{
						title:'<?php echo CJavaScript::quote(t("Promotions"))?>', 
						enjoy:'<?php echo CJavaScript::quote(t("Enjoy discounts on items"))?>', 		
						see_details:'<?php echo CJavaScript::quote(t("See details"))?>', 														
						}"
					>
					</component-promo-details>		
					
					<!-- Pickup buttons (desktop) -->
					<div class="pt-2 cnc-pickup-buttons">
						<button class="btn cnc-btn-pickup-now" onclick="setCncPickup('now')">Afhent nu</button>
						<button class="btn cnc-btn-pickup-later" onclick="setCncPickup('later')">Afhent senere</button>
						<button class="btn cnc-btn-contact" title="Kontakt os" onclick="if(typeof Tawk_API!=='undefined')Tawk_API.maximize()"><i class="zmdi zmdi-comment-text"></i></button>
					</div>
					<p class="cnc-pickup-status mt-1 mb-0" id="cnc-pickup-status-desktop"></p>									
					
				</div>	
				<!-- right-->
			  </div>
			  <!-- d-flex -->

			

		   </div>
		   <!-- col -->
		   <div class="col-6 right-infox position-relative rounded" >               			   
			   <div class="fav-wrap" style="z-index: 99;">
					<component-save-store
					:active="found"
					:merchant_id="<?php echo intval($data['merchant_id'])?>"
					@after-save="getSaveStore"
					:is_guest="<?php echo Yii::app()->user->isGuest;?>"
					please_login="<?php echo CHtml::encode(t("Login to save it to your favorites"))?>"
					/>
					</component-save-store>	        
				</div>	     
				<?php if(!empty($data['url_header']) && $data['has_header'] ):?>
				<el-image class="w-100" style="max-height: 250px;" src="<?php echo $data['url_header']?>" fit="contain" lazy ></el-image>
				<?php endif;?>
		   </div>
		   <!-- col -->
		</div>
		<!-- row -->

   </div>
   <!-- container -->
</div>
<!-- merchant-top-header -->

<!-- </DIV> -->
<!-- vue-merchant-details -->

<!-- mobile view -->
<div class="d-block d-lg-none">
 <div class="top-merchant-details mobile-merchant-details position-relative">

 
 <div class="sub">
	 <div class="container p-4">
     <div class="d-flex justify-content-end">		
		<template v-if="!is_loading"> 	          
		<component-save-store
			:active="found"
			:merchant_id="<?php echo intval($data['merchant_id'])?>"
			@after-save="getSaveStore"
		/>
		</component-save-store>	        
		</template>
	</div>  <!-- d-flex -->	
	</div> <!--  container -->
 </div> 
 <!-- sub -->
</div>   
<!-- top-merchant-details -->