-- =============================================================================
-- Karenderia MRS: All CREATE OR REPLACE VIEW statements
-- Extracted from MG_view_*.php migrations, with {{table}} -> st_table
-- =============================================================================

-- Source: MG_view_status_management.php
CREATE OR REPLACE VIEW st_view_status_management as
select
a.status_id,a.group_name,a.status,a.title,a.color_hex,font_color_hex,

IFNULL(b.language,'en') as language,
IF(b.title IS NULL or b.title = '',a.title,b.title) as title_trans

from  st_status_management a
left join  st_status_management_translation b
on
a.status_id = b.status_id;

-- Source: MG_view_ratings.php
CREATE OR REPLACE VIEW st_view_ratings AS
select
  merchant_id AS merchant_id,
  count(0) AS review_count,
  (
    sum(rating) / count(0)
  ) AS ratings
from
  st_review
where
  (
    status in ('publish', 'published')
  )
group by merchant_id;

-- Source: MG_view_cuisine.php
CREATE OR REPLACE VIEW st_view_cuisine as
select
a.cuisine_id,
IFNULL(b.language,'en') as language,
IF(b.cuisine_name IS NULL or b.cuisine_name = '',a.cuisine_name,b.cuisine_name) as cuisine_name,
a.status,
a.featured_image,
a.slug,
a.color_hex,
a.font_color_hex

from  st_cuisine a
left join  st_cuisine_translation b
on
a.cuisine_id = b.cuisine_id;

-- Source: MG_view_item_lang_size.php
CREATE OR REPLACE VIEW st_view_item_lang_size as
select
a.merchant_id,
a.item_id,
a.item_size_id,
a.item_token as size_uuid,
a.price,
a.size_id,
IFNULL(c.size_name,'') as original_size_name,
IFNULL(b.size_name,'') as size_name,
IFNULL(b.language,'') as language,
a.available,
a.discount,
a.discount_type,
a.discount_start,
a.discount_end

from st_item_relationship_size a
left join st_size_translation b
on
a.size_id = b.size_id

left join st_size c
on
a.size_id = c.size_id;

-- Source: MG_view_item_relationship_subcategory.php
CREATE OR REPLACE VIEW st_view_item_relationship_subcategory as
select
a.id,
a.merchant_id,
a.item_id,
IFNULL(c.item_token,'') as item_token,
a.item_size_id,
IFNULL(b.item_token,'') as size_uuid,
a.subcat_id,
a.multi_option,
a.multi_option_min,
a.multi_option_value,
a.require_addon,
a.pre_selected,
a.sequence

from st_item_relationship_subcategory a
left join  st_item_relationship_size b
on
a.item_size_id = b.item_size_id

left join  st_item c
on
a.item_id = c.item_id

where a.item_size_id>0;

-- Source: MG_view_item_relationship_subcategory_item.php
CREATE OR REPLACE VIEW st_view_item_relationship_subcategory_item as
select
b.merchant_id,
b.item_id,
(
select item_token from st_item
where item_id = b.item_id
limit 0,1
) as item_token,
b.item_size_id,
a.subcat_id,a.sub_item_id
from st_subcategory_item_relationships a
left join st_item_relationship_subcategory b
on
a.subcat_id = b.subcat_id

where a.merchant_id IS NOT NULL;

-- Source: MG_view_item_size.php
CREATE OR REPLACE VIEW st_view_item_size as
select
a.item_size_id,
a.merchant_id,
a.item_token,
a.item_id,
a.size_id,
IFNULL(b.size_name,'') as size_name,
a.price,
a.sku,
a.sequence

from
st_item_relationship_size a
left join st_size b
on
a.size_id = b.size_id;

-- Source: MG_view_services_fee.php
CREATE OR REPLACE VIEW st_view_services_fee as
select
a.merchant_id,
b.restaurant_name,
b.merchant_type,
a.meta_value as service_code,

IFNULL(IF(b.merchant_type=2,
 (
   select service_fee
   from st_services_fee
   where merchant_id = 0
   and service_id IN (
     select service_id from st_services where service_code = a.meta_value
   )
 )
,

(
select service_fee
from st_services_fee
where merchant_id = a.merchant_id
and service_id IN (
     select service_id from st_services where service_code = a.meta_value
   )
)

),0) as service_fee

from st_merchant_meta a
left join st_merchant b
on
a.merchant_id = b.merchant_id

where
a.meta_name='services';

-- Source: MG_view_order_status.php
CREATE OR REPLACE VIEW st_view_order_status as
select
a.stats_id,
a.group_name,
a.description,
IFNULL(b.language,'en') as language,
IF(b.description IS NULL or b.description = '',a.description,b.description) as description_trans

from  st_order_status a
left join  st_order_status_translation b
on
a.stats_id = b.stats_id;

-- Source: MG_view_offers.php
CREATE OR REPLACE VIEW st_view_offers as
select
'voucher' as discount_type,
voucher_id as id,
merchant_id,
voucher_name as discount_name,
amount as offer_amount,
DATE_FORMAT(NOW(),'%Y-%m-%d') as valid_from,
expiration as valid_to,
voucher_type as offer_type,
min_order,
status,
visible,
monday,
tuesday,
wednesday,
thursday,
friday,
saturday,
sunday
from st_voucher_new

UNION ALL

select
'offers' as discount_type,
offers_id  as id,
merchant_id,
offer_percentage as discount_name,
offer_price as offer_amount,
valid_from ,
valid_to ,
offer_type,
offer_price as min_order,
status,
visible,
1 as monday,
1 as tuesday,
1 as wednesday,
1 as thursday,
1 as friday,
1 as saturday,
1 as sunday
from
st_offers;

-- Source: MG_view_user_union.php
CREATE OR REPLACE VIEW st_view_user_union as
select
client_uuid as uuid,
'customer' as user_type,
first_name,
last_name,
avatar,
path
from  st_client

UNION ALL

select
user_uuid as uuid,
'merchant' as user_type,
first_name,
last_name,
profile_photo as avatar,
path
from  st_merchant_user

UNION ALL

select
admin_id_token as uuid,
'admin' as user_type,
first_name,
last_name,
profile_photo as avatar,
path
from  st_admin_user

UNION ALL

select
merchant_uuid as uuid,
'merchant' as user_type,
restaurant_name as first_name,
contact_name as last_name,
logo as avatar,
path
from  st_merchant;

-- Source: MG_view_location_rates.php
CREATE OR REPLACE VIEW st_view_location_rates as
SELECT
a.rate_id,
a.merchant_id,
b.country_name,
state.name as state_name,
city.name as city_name,
area.name as area_name,
a.fee as delivery_fee,
a.minimum_order as minimum_amount,
a.maximum_amount,
a.free_above_subtotal,
a.date_created

FROM st_location_rate a
left JOIN st_location_countries b
ON
a.country_id = b.country_id

left JOIN st_location_states state
ON
a.state_id = state.state_id

left JOIN st_location_cities city
ON
a.city_id = city.city_id

left JOIN st_location_area area
ON
a.area_id = area.area_id;

-- Source: MG_view_merchant_location.php
CREATE OR REPLACE VIEW st_view_merchant_location as
SELECT
a.id,
a.merchant_id,
b.country_name,
state.name as state_name,
city.name as city_name,
area.name as area_name,
a.created_at

FROM st_merchant_location a
left JOIN st_location_countries b
ON
a.country_id = b.country_id

left JOIN st_location_states state
ON
a.state_id = state.state_id

left JOIN st_location_cities city
ON
a.city_id = city.city_id

left JOIN st_location_area area
ON
a.area_id = area.area_id;

-- Source: MG_view_location_time_estimate.php
CREATE OR REPLACE VIEW st_view_location_time_estimate as
SELECT
a.id,
a.service_type,
a.merchant_id,
b.country_name,
state.name as state_name,
city.name as city_name,
area.name as area_name,
a.estimated_time_min,
a.estimated_time_max,
a.created_at

FROM st_location_time_estimate a
left JOIN st_location_countries b
ON
a.country_id = b.country_id

left JOIN st_location_states state
ON
a.state_id = state.state_id

left JOIN st_location_cities city
ON
a.city_id = city.city_id

left JOIN st_location_area area
ON
a.area_id = area.area_id;

-- Source: MG_view_client_address_locations.php
CREATE OR REPLACE VIEW st_view_client_address_locations as
SELECT
a.address_id,
a.client_id,
a.address_uuid,
a.formatted_address as street,
a.address1 as street_number,
state.name as state_name,
city.name as city_name,
area.name as area_name,
b.country_name,
b.shortcode as country_code,
a.location_name,
a.delivery_options,
a.delivery_instructions,
a.address_label,

b.country_id,
state.state_id,
city.city_id,
area.area_id,
a.company as zip_code,
a.custom_field2 as house_number,
a.latitude,
a.longitude,

a.date_created,
a.date_modified

FROM st_client_address a
left JOIN st_location_countries b
ON
a.country_code = b.country_id

left JOIN st_location_states state
ON
a.postal_code = state.state_id

left JOIN st_location_cities city
ON
a.address2 = city.city_id

left JOIN st_location_area area
ON
a.custom_field1 = area.area_id

WHERE
a.address_type='location-based';

-- Source: MG_view_cuisine_merchant.php
CREATE OR REPLACE VIEW st_view_cuisine_merchant as
SELECT
cm.merchant_id,
vc.language,
GROUP_CONCAT(vc.cuisine_name ORDER BY vc.cuisine_name SEPARATOR ',') AS cuisines
FROM st_cuisine_merchant cm
JOIN st_view_cuisine vc ON cm.cuisine_id = vc.cuisine_id
GROUP BY
cm.merchant_id,vc.language;

-- Source: MG_view_customer_points.php
CREATE OR REPLACE VIEW st_view_customer_points AS
SELECT
	a.card_id,
	b.account_id,
	c.first_name,
	c.last_name,
	SUM(
		CASE
			WHEN a.transaction_type IN ('points_earned', 'points_signup', 'points_firstorder', 'points_review', 'points_booking')
			THEN a.transaction_amount
		END
	) AS total_earning
FROM
	st_wallet_transactions a
LEFT JOIN
	st_wallet_cards b
	ON a.card_id = b.card_id
LEFT JOIN
	st_client c
	ON b.account_id = c.client_id
WHERE
	b.account_type = 'customer_points'
GROUP BY
	a.card_id, b.account_id, c.first_name, c.last_name
ORDER BY
	a.card_id DESC;

-- Source: MG_view_customer_points_ranks.php
-- Skipped: MySQL/MariaDB does not allow session variables in views.
-- This view is not needed for core restaurant functionality.
