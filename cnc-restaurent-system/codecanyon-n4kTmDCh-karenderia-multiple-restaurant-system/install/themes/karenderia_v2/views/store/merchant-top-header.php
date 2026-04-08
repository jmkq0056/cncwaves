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
						<button class="btn cnc-btn-pickup-now" onclick="setCncPickup('now')"><?php echo t("Pickup now")?></button>
						<button class="btn cnc-btn-pickup-later" onclick="setCncPickup('later')"><?php echo t("Pickup later")?></button>
						<div class="cnc-chat-wrapper">
							<button class="btn cnc-btn-contact" title="<?php echo t("Contact us")?>" onclick="if(typeof Tawk_API!=='undefined'){Tawk_API.showWidget();Tawk_API.maximize()}; var b=document.querySelector('.cnc-chat-bubble'); if(b) b.style.display='none';"><i class="zmdi zmdi-comment-text"></i></button>
							<div class="cnc-chat-bubble" onclick="if(typeof Tawk_API!=='undefined'){Tawk_API.showWidget();Tawk_API.maximize()}; this.style.display='none';">
								<span class="cnc-chat-bubble-text"></span>
								<span class="cnc-chat-bubble-close" onclick="event.stopPropagation(); this.parentElement.style.display='none';">&times;</span>
								<div class="cnc-chat-bubble-arrow"></div>
							</div>
						</div>
					</div>
					<p class="cnc-pickup-status mt-1 mb-0" id="cnc-pickup-status-desktop"></p>

					<!-- 10% promo badge -->
					<div class="cnc-hero-promo mt-2">
						<span class="cnc-hero-promo-badge"><?php echo t("TILBUD")?></span>
						<span class="cnc-hero-promo-text"><?php echo t("10% online rabat på hele menuen!")?></span>
					</div>

				</div>
				<!-- right-->
			  </div>
			  <!-- d-flex -->

			

		   </div>
		   <!-- col -->
		   <!-- Banner/heart column hidden for CNC single-restaurant -->
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

<!-- mobile banner hidden for CNC single-restaurant -->