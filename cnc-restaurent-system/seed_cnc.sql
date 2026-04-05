SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

-- Admin user
INSERT INTO st_admin_user (admin_id, username, password, first_name, last_name, email_address, role, main_account, status, date_created, date_modified)
VALUES (1, 'admin', '0192023a7bbd73250516f069df18b500', 'CNC', 'Admin', 'admin@chickennchicken.dk', 'admin', 1, 'active', '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE username='admin', password='0192023a7bbd73250516f069df18b500', first_name='CNC', last_name='Admin', email_address='admin@chickennchicken.dk', status='active';

-- Site settings: CNC branding
UPDATE st_option SET option_value='Chicken N Chicken', last_update='2026-04-04 16:22:37' WHERE option_name='website_title' AND merchant_id=0;
INSERT IGNORE INTO st_option (merchant_id, option_name, option_value, last_update) SELECT 0, 'website_title', 'Chicken N Chicken', '2026-04-04 16:22:37' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM st_option WHERE option_name='website_title' AND merchant_id=0);
UPDATE st_option SET option_value='Europe/Copenhagen', last_update='2026-04-04 16:22:37' WHERE option_name='website_timezone_new' AND merchant_id=0;
INSERT IGNORE INTO st_option (merchant_id, option_name, option_value, last_update) SELECT 0, 'website_timezone_new', 'Europe/Copenhagen', '2026-04-04 16:22:37' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM st_option WHERE option_name='website_timezone_new' AND merchant_id=0);
UPDATE st_option SET option_value='km', last_update='2026-04-04 16:22:37' WHERE option_name='home_search_unit_type' AND merchant_id=0;
INSERT IGNORE INTO st_option (merchant_id, option_name, option_value, last_update) SELECT 0, 'home_search_unit_type', 'km', '2026-04-04 16:22:37' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM st_option WHERE option_name='home_search_unit_type' AND merchant_id=0);
UPDATE st_option SET option_value='[\"DK\"]', last_update='2026-04-04 16:22:37' WHERE option_name='merchant_specific_country' AND merchant_id=0;
INSERT IGNORE INTO st_option (merchant_id, option_name, option_value, last_update) SELECT 0, 'merchant_specific_country', '[\"DK\"]', '2026-04-04 16:22:37' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM st_option WHERE option_name='merchant_specific_country' AND merchant_id=0);
UPDATE st_option SET option_value='DK', last_update='2026-04-04 16:22:37' WHERE option_name='merchant_default_country' AND merchant_id=0;
INSERT IGNORE INTO st_option (merchant_id, option_name, option_value, last_update) SELECT 0, 'merchant_default_country', 'DK', '2026-04-04 16:22:37' FROM DUAL WHERE NOT EXISTS (SELECT 1 FROM st_option WHERE option_name='merchant_default_country' AND merchant_id=0);

-- Merchant: Chicken N Chicken
INSERT INTO st_merchant (merchant_id, merchant_uuid, restaurant_slug, restaurant_name, restaurant_phone,
  contact_name, contact_phone, contact_email, address, username, password, status, is_featured, is_ready,
  is_commission, latitude, lontitude, logo, path, merchant_type, distance_unit, delivery_distance_covered,
  close_store, description, short_description, date_created, date_modified)
VALUES (1, UUID(), 'chicken-n-chicken', 'Chicken N Chicken', '+4550507179',
  'CNC Manager', '+4550507179', 'info@chickennchicken.dk',
  'Over Bølgen 3, st. 1, 2670 Greve', 'cncmerchant', 'd2daf200dbd5947ba03417db6bd7f7e3', 'active', 1, 1,
  2, '55.5833', '12.2942',
  'https://res.cloudinary.com/dtcjxk8si/image/upload/v1/cnc-menu/cnc-logo.png', '',
  1, 'km', 15.00,
  0, 'Chicken N Chicken - Lækre burgere, crispy chicken, wraps og meget mere!',
  'Burgers, Chicken, Wraps & More', '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE restaurant_name='Chicken N Chicken', restaurant_phone='+4550507179',
  address='Over Bølgen 3, st. 1, 2670 Greve', status='active', is_ready=1, close_store=0,
  username='cncmerchant', password='d2daf200dbd5947ba03417db6bd7f7e3', distance_unit='km';

-- Merchant user for backoffice login
INSERT INTO st_merchant_user (merchant_user_id, merchant_id, first_name, last_name, username, password,
  role, status, contact_email, main_account, date_created, date_modified)
VALUES (1, 1, 'CNC', 'Manager', 'cncmerchant', 'd2daf200dbd5947ba03417db6bd7f7e3',
  1, 'active', 'info@chickennchicken.dk', 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE username='cncmerchant', password='d2daf200dbd5947ba03417db6bd7f7e3', status='active';

-- Default size
INSERT INTO st_size (size_id, merchant_id, size_name, sequence, status, date_created, date_modified)
VALUES (1, 1, 'Regular', 1, 'published', '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE size_name='Regular';

-- Categories
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (1, 1, 'Beef Burger', 'Udforsk vores udvalg af lækre bøf burgere', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Beef Burger', category_description='Udforsk vores udvalg af lækre bøf burgere', status='publish', available=1, sequence=1;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (2, 1, 'Chicken & Fish Burgers', 'Udforsk vores udvalg af de lækreste kyllinge- og fiskeburgere', 'publish', 1, 2, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Chicken & Fish Burgers', category_description='Udforsk vores udvalg af de lækreste kyllinge- og fiskeburgere', status='publish', available=1, sequence=2;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (3, 1, 'Vegi\'s & Salad', 'Dette er til alle vores kunder, der foretrækker et kødfrit måltid', 'publish', 1, 3, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Vegi\'s & Salad', category_description='Dette er til alle vores kunder, der foretrækker et kødfrit måltid', status='publish', available=1, sequence=3;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (4, 1, 'Wraps & Tacos', 'Udforsk vores udvalg af appetitvækkende wraps og tacos', 'publish', 1, 4, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Wraps & Tacos', category_description='Udforsk vores udvalg af appetitvækkende wraps og tacos', status='publish', available=1, sequence=4;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (5, 1, 'Family & Social Bucket', 'Udforsk de mange friturestegte kyllingespande, vi tilbyder!', 'publish', 1, 5, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Family & Social Bucket', category_description='Udforsk de mange friturestegte kyllingespande, vi tilbyder!', status='publish', available=1, sequence=5;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (6, 1, 'Chicken N Chicken', 'Udforsk vores udvalg af det sprødeste friturestegt kylling: Vinger, ben og underlår!', 'publish', 1, 6, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Chicken N Chicken', category_description='Udforsk vores udvalg af det sprødeste friturestegt kylling: Vinger, ben og underlår!', status='publish', available=1, sequence=6;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (7, 1, 'Kids Meal', 'Appetitvækkende menuer + gave til de helt små', 'publish', 1, 7, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Kids Meal', category_description='Appetitvækkende menuer + gave til de helt små', status='publish', available=1, sequence=7;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (8, 1, 'Sides & Dips', 'Forskellige lækre tilbehør og dyppelse', 'publish', 1, 8, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Sides & Dips', category_description='Forskellige lækre tilbehør og dyppelse', status='publish', available=1, sequence=8;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (9, 1, 'Coffee & Cake', 'Vi tilbyder et bredt udvalg af kaffe og kager', 'publish', 1, 9, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Coffee & Cake', category_description='Vi tilbyder et bredt udvalg af kaffe og kager', status='publish', available=1, sequence=9;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (10, 1, 'Ice Cream & Shakes', 'Velsmagende is og shakes', 'publish', 1, 10, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Ice Cream & Shakes', category_description='Velsmagende is og shakes', status='publish', available=1, sequence=10;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, status, available, sequence, date_created, date_modified)
VALUES (11, 1, 'Cold Drinks', 'Køl tørsten ned med en af ​​de mange kolde drinks, vi har', 'publish', 1, 11, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE category_name='Cold Drinks', category_description='Køl tørsten ned med en af ​​de mange kolde drinks, vi har', status='publish', available=1, sequence=11;

-- Menu items, prices, category links
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (1, 1, 'O\'ring Cheese Burger', 'beef-burger-oring-cheese-burger', 'Oksebøf, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752451/cnc-menu/beef-burger/o-ring-cheese-burger.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='O\'ring Cheese Burger', item_description='Oksebøf, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752451/cnc-menu/beef-burger/o-ring-cheese-burger.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (1, 1, 1, 1, 1)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (1, 1, 1, 1, 47.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=47.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (2, 1, 'O\'ring Cheese Burger Meal', 'beef-burger-oring-cheese-burger-meal', 'Oksebøf 56g, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle
Pomfritter og sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752453/cnc-menu/beef-burger/o-ring-cheese-burger-meal.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='O\'ring Cheese Burger Meal', item_description='Oksebøf 56g, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle
Pomfritter og sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752453/cnc-menu/beef-burger/o-ring-cheese-burger-meal.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (2, 1, 2, 1, 2)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (2, 1, 2, 1, 74.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=74.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (3, 1, 'Double Cheese Menu', 'beef-burger-double-cheese-menu', 'Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752454/cnc-menu/beef-burger/double-cheese-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Double Cheese Menu', item_description='Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752454/cnc-menu/beef-burger/double-cheese-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (3, 1, 3, 1, 3)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (3, 1, 3, 1, 77.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=77.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (4, 1, 'Triple Cheese Burger Menu', 'beef-burger-triple-cheese-burger-menu', 'Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752456/cnc-menu/beef-burger/triple-cheese-burger-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Triple Cheese Burger Menu', item_description='Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752456/cnc-menu/beef-burger/triple-cheese-burger-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (4, 1, 4, 1, 4)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (4, 1, 4, 1, 84.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=84.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (5, 1, 'Grand Beef Menu', 'beef-burger-grand-beef-menu', 'Stor oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle
Pomfritter og sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752458/cnc-menu/beef-burger/grand-beef-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Grand Beef Menu', item_description='Stor oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle
Pomfritter og sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752458/cnc-menu/beef-burger/grand-beef-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (5, 1, 5, 1, 5)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (5, 1, 5, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (6, 1, 'Mega Beef Parmesan Menu', 'beef-burger-mega-beef-parmesan-menu', 'Stor oksebøf, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle
Pomfritter og sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752459/cnc-menu/beef-burger/mega-beef-parmesan-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mega Beef Parmesan Menu', item_description='Stor oksebøf, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle
Pomfritter og sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752459/cnc-menu/beef-burger/mega-beef-parmesan-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (6, 1, 6, 1, 6)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (6, 1, 6, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (7, 1, 'Cheese Burger', 'beef-burger-cheese-burger', 'Oksebøf, cheddar, iceberg, mayonnaise, ketchup', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752461/cnc-menu/beef-burger/cheese-burger.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Cheese Burger', item_description='Oksebøf, cheddar, iceberg, mayonnaise, ketchup', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752461/cnc-menu/beef-burger/cheese-burger.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (7, 1, 7, 1, 7)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (7, 1, 7, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (8, 1, 'Double Cheese', 'beef-burger-double-cheese', 'Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752463/cnc-menu/beef-burger/double-cheese.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Double Cheese', item_description='Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752463/cnc-menu/beef-burger/double-cheese.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (8, 1, 8, 1, 8)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (8, 1, 8, 1, 47.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=47.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (9, 1, 'Triple Cheese Burger', 'beef-burger-triple-cheese-burger', 'Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752464/cnc-menu/beef-burger/triple-cheese-burger.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Triple Cheese Burger', item_description='Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752464/cnc-menu/beef-burger/triple-cheese-burger.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (9, 1, 9, 1, 9)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (9, 1, 9, 1, 54.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=54.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (10, 1, 'Grand Beef', 'beef-burger-grand-beef', 'Stor oksebøf 113g, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752466/cnc-menu/beef-burger/grand-beef.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Grand Beef', item_description='Stor oksebøf 113g, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752466/cnc-menu/beef-burger/grand-beef.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (10, 1, 10, 1, 10)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (10, 1, 10, 1, 54.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=54.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (11, 1, 'Mega Beef Parmesan', 'beef-burger-mega-beef-parmesan', 'Stor oksebøf 113g, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752468/cnc-menu/beef-burger/mega-beef-parmesan.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mega Beef Parmesan', item_description='Stor oksebøf 113g, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752468/cnc-menu/beef-burger/mega-beef-parmesan.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (11, 1, 11, 1, 11)
ON DUPLICATE KEY UPDATE cat_id=1, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (11, 1, 11, 1, 64.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=64.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (12, 1, 'Chuckle Chickpea', 'chicken-amp-fish-burgers-chuckle-chickpea', 'Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752469/cnc-menu/chicken-amp-fish-burgers/chuckle-chickpea.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chuckle Chickpea', item_description='Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752469/cnc-menu/chicken-amp-fish-burgers/chuckle-chickpea.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (12, 1, 12, 2, 1)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (12, 1, 12, 1, 54.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=54.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (13, 1, 'Chuckle Chickpea Menu', 'chicken-amp-fish-burgers-chuckle-chickpea-menu', 'Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752470/cnc-menu/chicken-amp-fish-burgers/chuckle-chickpea-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chuckle Chickpea Menu', item_description='Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752470/cnc-menu/chicken-amp-fish-burgers/chuckle-chickpea-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (13, 1, 13, 2, 2)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (13, 1, 13, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (14, 1, 'Chicken Royal Menu', 'chicken-amp-fish-burgers-chicken-royal-menu', 'Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752474/cnc-menu/chicken-amp-fish-burgers/chicken-royal-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Royal Menu', item_description='Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752474/cnc-menu/chicken-amp-fish-burgers/chicken-royal-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (14, 1, 14, 2, 3)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (14, 1, 14, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (15, 1, 'Chicken Special Menu', 'chicken-amp-fish-burgers-chicken-special-menu', 'Frisk paneret kyllingefilet, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752476/cnc-menu/chicken-amp-fish-burgers/chicken-special-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Special Menu', item_description='Frisk paneret kyllingefilet, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752476/cnc-menu/chicken-amp-fish-burgers/chicken-special-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (15, 1, 15, 2, 4)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (15, 1, 15, 1, 77.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=77.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (16, 1, 'Naan Grill Tikka Menu', 'chicken-amp-fish-burgers-naan-grill-tikka-menu', 'Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752483/cnc-menu/chicken-amp-fish-burgers/naan-grill-tikka-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Naan Grill Tikka Menu', item_description='Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752483/cnc-menu/chicken-amp-fish-burgers/naan-grill-tikka-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (16, 1, 16, 2, 5)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (16, 1, 16, 1, 94.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=94.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (17, 1, 'Big Chicken Menu', 'chicken-amp-fish-burgers-big-chicken-menu', 'Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle
Pomfritter og sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752484/cnc-menu/chicken-amp-fish-burgers/big-chicken-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Big Chicken Menu', item_description='Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle
Pomfritter og sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752484/cnc-menu/chicken-amp-fish-burgers/big-chicken-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (17, 1, 17, 2, 6)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (17, 1, 17, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (18, 1, 'Tikka Burger Menu', 'chicken-amp-fish-burgers-tikka-burger-menu', 'Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752486/cnc-menu/chicken-amp-fish-burgers/tikka-burger-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tikka Burger Menu', item_description='Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752486/cnc-menu/chicken-amp-fish-burgers/tikka-burger-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (18, 1, 18, 2, 7)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (18, 1, 18, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (19, 1, 'Texas Crispy Chicken Menu', 'chicken-amp-fish-burgers-texas-crispy-chicken-menu', 'Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752488/cnc-menu/chicken-amp-fish-burgers/texas-crispy-chicken-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Texas Crispy Chicken Menu', item_description='Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752488/cnc-menu/chicken-amp-fish-burgers/texas-crispy-chicken-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (19, 1, 19, 2, 8)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (19, 1, 19, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (20, 1, 'Tikka Baguette Menu', 'chicken-amp-fish-burgers-tikka-baguette-menu', 'Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752489/cnc-menu/chicken-amp-fish-burgers/tikka-baguette-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tikka Baguette Menu', item_description='Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752489/cnc-menu/chicken-amp-fish-burgers/tikka-baguette-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (20, 1, 20, 2, 9)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (20, 1, 20, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (21, 1, 'Chicken Baguette Menu', 'chicken-amp-fish-burgers-chicken-baguette-menu', 'Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752492/cnc-menu/chicken-amp-fish-burgers/chicken-baguette-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Baguette Menu', item_description='Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752492/cnc-menu/chicken-amp-fish-burgers/chicken-baguette-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (21, 1, 21, 2, 10)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (21, 1, 21, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (22, 1, 'Mega Chicken Parmesan Menu', 'chicken-amp-fish-burgers-mega-chicken-parmesan-menu', 'Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle
Pomfritter og s...', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752494/cnc-menu/chicken-amp-fish-burgers/mega-chicken-parmesan-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mega Chicken Parmesan Menu', item_description='Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle
Pomfritter og s...', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752494/cnc-menu/chicken-amp-fish-burgers/mega-chicken-parmesan-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (22, 1, 22, 2, 11)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (22, 1, 22, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (23, 1, 'Fishy De Fish Menu', 'chicken-amp-fish-burgers-fishy-de-fish-menu', 'Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752495/cnc-menu/chicken-amp-fish-burgers/fishy-de-fish-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Fishy De Fish Menu', item_description='Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752495/cnc-menu/chicken-amp-fish-burgers/fishy-de-fish-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (23, 1, 23, 2, 12)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=12;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (23, 1, 23, 1, 78.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=78.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (24, 1, 'Chicken Royal', 'chicken-amp-fish-burgers-chicken-royal', 'Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752496/cnc-menu/chicken-amp-fish-burgers/chicken-royal.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Royal', item_description='Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752496/cnc-menu/chicken-amp-fish-burgers/chicken-royal.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (24, 1, 24, 2, 13)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=13;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (24, 1, 24, 1, 49.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=49.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (25, 1, 'Chicken Special', 'chicken-amp-fish-burgers-chicken-special', 'Frisk paneret kyllingefilet, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752500/cnc-menu/chicken-amp-fish-burgers/chicken-special.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Special', item_description='Frisk paneret kyllingefilet, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752500/cnc-menu/chicken-amp-fish-burgers/chicken-special.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (25, 1, 25, 2, 14)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=14;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (25, 1, 25, 1, 47.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=47.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (26, 1, 'Naan Grill Tikka', 'chicken-amp-fish-burgers-naan-grill-tikka', 'Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752501/cnc-menu/chicken-amp-fish-burgers/naan-grill-tikka.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Naan Grill Tikka', item_description='Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752501/cnc-menu/chicken-amp-fish-burgers/naan-grill-tikka.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (26, 1, 26, 2, 15)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=15;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (26, 1, 26, 1, 64.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=64.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (27, 1, 'Big Chicken', 'chicken-amp-fish-burgers-big-chicken', 'Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752502/cnc-menu/chicken-amp-fish-burgers/big-chicken.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Big Chicken', item_description='Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752502/cnc-menu/chicken-amp-fish-burgers/big-chicken.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (27, 1, 27, 2, 16)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=16;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (27, 1, 27, 1, 54.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=54.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (28, 1, 'Tikka Burger', 'chicken-amp-fish-burgers-tikka-burger', 'Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752503/cnc-menu/chicken-amp-fish-burgers/tikka-burger.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tikka Burger', item_description='Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752503/cnc-menu/chicken-amp-fish-burgers/tikka-burger.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (28, 1, 28, 2, 17)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=17;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (28, 1, 28, 1, 54.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=54.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (29, 1, 'Texas Crispy Chicken', 'chicken-amp-fish-burgers-texas-crispy-chicken', 'Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752505/cnc-menu/chicken-amp-fish-burgers/texas-crispy-chicken.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Texas Crispy Chicken', item_description='Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752505/cnc-menu/chicken-amp-fish-burgers/texas-crispy-chicken.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (29, 1, 29, 2, 18)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=18;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (29, 1, 29, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (30, 1, 'Tikka Baguette', 'chicken-amp-fish-burgers-tikka-baguette', 'Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752506/cnc-menu/chicken-amp-fish-burgers/tikka-baguette.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tikka Baguette', item_description='Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752506/cnc-menu/chicken-amp-fish-burgers/tikka-baguette.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (30, 1, 30, 2, 19)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=19;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (30, 1, 30, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (31, 1, 'Chicken Baguette', 'chicken-amp-fish-burgers-chicken-baguette', 'Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752507/cnc-menu/chicken-amp-fish-burgers/chicken-baguette.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Baguette', item_description='Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752507/cnc-menu/chicken-amp-fish-burgers/chicken-baguette.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (31, 1, 31, 2, 20)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=20;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (31, 1, 31, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (32, 1, 'Mega Chicken Parmesan', 'chicken-amp-fish-burgers-mega-chicken-parmesan', 'Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752509/cnc-menu/chicken-amp-fish-burgers/mega-chicken-parmesan.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mega Chicken Parmesan', item_description='Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752509/cnc-menu/chicken-amp-fish-burgers/mega-chicken-parmesan.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (32, 1, 32, 2, 21)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=21;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (32, 1, 32, 1, 64.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=64.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (33, 1, 'Fishy De Fish', 'chicken-amp-fish-burgers-fishy-de-fish', 'Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752510/cnc-menu/chicken-amp-fish-burgers/fishy-de-fish.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Fishy De Fish', item_description='Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752510/cnc-menu/chicken-amp-fish-burgers/fishy-de-fish.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (33, 1, 33, 2, 22)
ON DUPLICATE KEY UPDATE cat_id=2, sequence=22;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (33, 1, 33, 1, 48.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=48.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (34, 1, 'Veggie Salad', 'vegi-s-amp-salad-veggie-salad', 'Iceberg, tomat, fetaost, gulerod, jalapeños, rødløg, rucola, grøn oliven', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752512/cnc-menu/vegi-s-amp-salad/veggie-salad.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Veggie Salad', item_description='Iceberg, tomat, fetaost, gulerod, jalapeños, rødløg, rucola, grøn oliven', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752512/cnc-menu/vegi-s-amp-salad/veggie-salad.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (34, 1, 34, 3, 1)
ON DUPLICATE KEY UPDATE cat_id=3, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (34, 1, 34, 1, 69.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=69.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (35, 1, 'Chicken Strips Salad', 'vegi-s-amp-salad-chicken-strips-salad', 'Frisk paneret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752513/cnc-menu/vegi-s-amp-salad/chicken-strips-salad.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Strips Salad', item_description='Frisk paneret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752513/cnc-menu/vegi-s-amp-salad/chicken-strips-salad.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (35, 1, 35, 3, 2)
ON DUPLICATE KEY UPDATE cat_id=3, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (35, 1, 35, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (36, 1, 'Chicken Tikka Salad', 'vegi-s-amp-salad-chicken-tikka-salad', 'Grillet tandoorimarineret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752514/cnc-menu/vegi-s-amp-salad/chicken-tikka-salad.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Tikka Salad', item_description='Grillet tandoorimarineret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752514/cnc-menu/vegi-s-amp-salad/chicken-tikka-salad.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (36, 1, 36, 3, 3)
ON DUPLICATE KEY UPDATE cat_id=3, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (36, 1, 36, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (37, 1, 'Corn', 'vegi-s-amp-salad-corn', 'Corn', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752515/cnc-menu/vegi-s-amp-salad/corn.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Corn', item_description='Corn', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752515/cnc-menu/vegi-s-amp-salad/corn.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (37, 1, 37, 3, 4)
ON DUPLICATE KEY UPDATE cat_id=3, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (37, 1, 37, 1, 20.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=20.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (38, 1, 'Taco M Menu', 'wraps-amp-tacos-taco-m-menu', 'Pålæg, fromage smørrelse, pomfritter
1 stk. pålæg efter eget valg. inkl. pomfritter + sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752516/cnc-menu/wraps-amp-tacos/taco-m-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Taco M Menu', item_description='Pålæg, fromage smørrelse, pomfritter
1 stk. pålæg efter eget valg. inkl. pomfritter + sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752516/cnc-menu/wraps-amp-tacos/taco-m-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (38, 1, 38, 4, 1)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (38, 1, 38, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (39, 1, 'Taco L Menu', 'wraps-amp-tacos-taco-l-menu', 'Pålæg, fromage smørrelse, pomfritter
2 stk. pålæg efter eget valg. inkl. pomfritter + sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752516/cnc-menu/wraps-amp-tacos/taco-m-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Taco L Menu', item_description='Pålæg, fromage smørrelse, pomfritter
2 stk. pålæg efter eget valg. inkl. pomfritter + sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752516/cnc-menu/wraps-amp-tacos/taco-m-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (39, 1, 39, 4, 2)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (39, 1, 39, 1, 99.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=99.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (40, 1, 'Taco XL Menu', 'wraps-amp-tacos-taco-xl-menu', 'Pålæg, fromage smørrelse, pomfritter
3 stk. pålæg efter eget valg. inkl. pomfritter + sodavand', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752516/cnc-menu/wraps-amp-tacos/taco-m-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Taco XL Menu', item_description='Pålæg, fromage smørrelse, pomfritter
3 stk. pålæg efter eget valg. inkl. pomfritter + sodavand', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752516/cnc-menu/wraps-amp-tacos/taco-m-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (40, 1, 40, 4, 3)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (40, 1, 40, 1, 109.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=109.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (41, 1, 'Chicken Fillet Wrap Menu', 'wraps-amp-tacos-chicken-fillet-wrap-menu', 'Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752519/cnc-menu/wraps-amp-tacos/chicken-fillet-wrap-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Fillet Wrap Menu', item_description='Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752519/cnc-menu/wraps-amp-tacos/chicken-fillet-wrap-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (41, 1, 41, 4, 4)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (41, 1, 41, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (42, 1, 'Chicken Tikka Wrap Menu', 'wraps-amp-tacos-chicken-tikka-wrap-menu', 'Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752520/cnc-menu/wraps-amp-tacos/chicken-tikka-wrap-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Tikka Wrap Menu', item_description='Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752520/cnc-menu/wraps-amp-tacos/chicken-tikka-wrap-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (42, 1, 42, 4, 5)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (42, 1, 42, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (43, 1, 'Kebab Wrap Menu', 'wraps-amp-tacos-kebab-wrap-menu', 'Kyllinge shawarma, løg, tomat, iceberg, kebab dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752522/cnc-menu/wraps-amp-tacos/kebab-wrap-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kebab Wrap Menu', item_description='Kyllinge shawarma, løg, tomat, iceberg, kebab dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752522/cnc-menu/wraps-amp-tacos/kebab-wrap-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (43, 1, 43, 4, 6)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (43, 1, 43, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (44, 1, 'Taco M', 'wraps-amp-tacos-taco-m', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752523/cnc-menu/wraps-amp-tacos/taco-m.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Taco M', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752523/cnc-menu/wraps-amp-tacos/taco-m.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (44, 1, 44, 4, 7)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (44, 1, 44, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (45, 1, 'Taco L', 'wraps-amp-tacos-taco-l', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752523/cnc-menu/wraps-amp-tacos/taco-m.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Taco L', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752523/cnc-menu/wraps-amp-tacos/taco-m.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (45, 1, 45, 4, 8)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (45, 1, 45, 1, 69.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=69.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (46, 1, 'Taco XL', 'wraps-amp-tacos-taco-xl', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752523/cnc-menu/wraps-amp-tacos/taco-m.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Taco XL', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752523/cnc-menu/wraps-amp-tacos/taco-m.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (46, 1, 46, 4, 9)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (46, 1, 46, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (47, 1, 'Chicken Fillet Wrap', 'wraps-amp-tacos-chicken-fillet-wrap', 'Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752526/cnc-menu/wraps-amp-tacos/chicken-fillet-wrap.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Fillet Wrap', item_description='Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752526/cnc-menu/wraps-amp-tacos/chicken-fillet-wrap.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (47, 1, 47, 4, 10)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (47, 1, 47, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (48, 1, 'Chicken Tikka Wrap', 'wraps-amp-tacos-chicken-tikka-wrap', 'Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752527/cnc-menu/wraps-amp-tacos/chicken-tikka-wrap.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chicken Tikka Wrap', item_description='Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752527/cnc-menu/wraps-amp-tacos/chicken-tikka-wrap.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (48, 1, 48, 4, 11)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (48, 1, 48, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (49, 1, 'Kebab Wrap', 'wraps-amp-tacos-kebab-wrap', 'Kyllinge shawarma, løg, tomat, iceberg, kebab dressing', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752528/cnc-menu/wraps-amp-tacos/kebab-wrap.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kebab Wrap', item_description='Kyllinge shawarma, løg, tomat, iceberg, kebab dressing', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752528/cnc-menu/wraps-amp-tacos/kebab-wrap.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (49, 1, 49, 4, 12)
ON DUPLICATE KEY UPDATE cat_id=4, sequence=12;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (49, 1, 49, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (50, 1, 'Family 1', 'family-amp-social-bucket-family-1', '10 stk. Drumsticks', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752530/cnc-menu/family-amp-social-bucket/family-1.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Family 1', item_description='10 stk. Drumsticks', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752530/cnc-menu/family-amp-social-bucket/family-1.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (50, 1, 50, 5, 1)
ON DUPLICATE KEY UPDATE cat_id=5, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (50, 1, 50, 1, 249.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=249.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (51, 1, 'Family 2', 'family-amp-social-bucket-family-2', '6 stk. Drumsticks + 12 stk. Hot Spicy Wings', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752531/cnc-menu/family-amp-social-bucket/family-2.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Family 2', item_description='6 stk. Drumsticks + 12 stk. Hot Spicy Wings', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752531/cnc-menu/family-amp-social-bucket/family-2.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (51, 1, 51, 5, 2)
ON DUPLICATE KEY UPDATE cat_id=5, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (51, 1, 51, 1, 259.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=259.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (52, 1, 'Family 3', 'family-amp-social-bucket-family-3', '4 stk. Drumsticks + 16 stk. Hot Spicy Wings + 10 stk. Chicken Strips', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752532/cnc-menu/family-amp-social-bucket/family-3.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Family 3', item_description='4 stk. Drumsticks + 16 stk. Hot Spicy Wings + 10 stk. Chicken Strips', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752532/cnc-menu/family-amp-social-bucket/family-3.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (52, 1, 52, 5, 3)
ON DUPLICATE KEY UPDATE cat_id=5, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (52, 1, 52, 1, 269.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=269.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (53, 1, 'Family 4', 'family-amp-social-bucket-family-4', '24 stk. Hot Spicy Wings', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752533/cnc-menu/family-amp-social-bucket/family-4.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Family 4', item_description='24 stk. Hot Spicy Wings', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752533/cnc-menu/family-amp-social-bucket/family-4.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (53, 1, 53, 5, 4)
ON DUPLICATE KEY UPDATE cat_id=5, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (53, 1, 53, 1, 229.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=229.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (54, 1, 'Family 5', 'family-amp-social-bucket-family-5', '15 stk. Chicken Strips + 22 stk. Hot Spicy Wings', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752535/cnc-menu/family-amp-social-bucket/family-5.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Family 5', item_description='15 stk. Chicken Strips + 22 stk. Hot Spicy Wings', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752535/cnc-menu/family-amp-social-bucket/family-5.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (54, 1, 54, 5, 5)
ON DUPLICATE KEY UPDATE cat_id=5, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (54, 1, 54, 1, 299.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=299.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (55, 1, 'Family 6', 'family-amp-social-bucket-family-6', '22 stk. Chicken Strips', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752536/cnc-menu/family-amp-social-bucket/family-6.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Family 6', item_description='22 stk. Chicken Strips', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752536/cnc-menu/family-amp-social-bucket/family-6.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (55, 1, 55, 5, 6)
ON DUPLICATE KEY UPDATE cat_id=5, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (55, 1, 55, 1, 229.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=229.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (56, 1, '2 stk. Chicken Drumstick Menu', 'chicken-n-chicken-2-stk.-chicken-drumstick-menu', 'Kyllingestykker håndpaneret i den unikke \"Chicken n Chicken\" panering.
Vores kyllingestykker er håndpanerede med vores blanding...', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752537/cnc-menu/chicken-n-chicken/2-stk-chicken-drumstick-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='2 stk. Chicken Drumstick Menu', item_description='Kyllingestykker håndpaneret i den unikke \"Chicken n Chicken\" panering.
Vores kyllingestykker er håndpanerede med vores blanding...', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752537/cnc-menu/chicken-n-chicken/2-stk-chicken-drumstick-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (56, 1, 56, 6, 1)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (56, 1, 56, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (57, 1, '3 stk. Chicken Drumsticks Menu', 'chicken-n-chicken-3-stk.-chicken-drumsticks-menu', 'Kyllingestykker håndpaneret i den unikke \"Chicken n Chicken\" panering.
Vores kyllingestykker er håndpanerede med vores blanding...', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752539/cnc-menu/chicken-n-chicken/3-stk-chicken-drumsticks-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='3 stk. Chicken Drumsticks Menu', item_description='Kyllingestykker håndpaneret i den unikke \"Chicken n Chicken\" panering.
Vores kyllingestykker er håndpanerede med vores blanding...', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752539/cnc-menu/chicken-n-chicken/3-stk-chicken-drumsticks-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (57, 1, 57, 6, 2)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (57, 1, 57, 1, 95.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=95.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (58, 1, '8 stk. Hot Spicy Wings Menu', 'chicken-n-chicken-8-stk.-hot-spicy-wings-menu', 'Kyllingevinger, som er marineret i en krydret chili-marinade.', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752540/cnc-menu/chicken-n-chicken/8-stk-hot-spicy-wings-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='8 stk. Hot Spicy Wings Menu', item_description='Kyllingevinger, som er marineret i en krydret chili-marinade.', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752540/cnc-menu/chicken-n-chicken/8-stk-hot-spicy-wings-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (58, 1, 58, 6, 3)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (58, 1, 58, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (59, 1, '12 stk. Hot Spicy Wings Menu', 'chicken-n-chicken-12-stk.-hot-spicy-wings-menu', 'Kyllingevinger, som er marineret i en krydret chili-marinade.', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752541/cnc-menu/chicken-n-chicken/12-stk-hot-spicy-wings-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='12 stk. Hot Spicy Wings Menu', item_description='Kyllingevinger, som er marineret i en krydret chili-marinade.', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752541/cnc-menu/chicken-n-chicken/12-stk-hot-spicy-wings-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (59, 1, 59, 6, 4)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (59, 1, 59, 1, 112.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=112.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (60, 1, '6 stk. Chicken Strips Menu', 'chicken-n-chicken-6-stk.-chicken-strips-menu', 'Kyllingefileter, håndpaneret i \"Chicken N Chicken\" paneringen', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752542/cnc-menu/chicken-n-chicken/6-stk-chicken-strips-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Strips Menu', item_description='Kyllingefileter, håndpaneret i \"Chicken N Chicken\" paneringen', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752542/cnc-menu/chicken-n-chicken/6-stk-chicken-strips-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (60, 1, 60, 6, 5)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (60, 1, 60, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (61, 1, '6 stk. Chicken Tikka Menu', 'chicken-n-chicken-6-stk.-chicken-tikka-menu', 'Kyllingefileter, håndpaneret i \"Chicken N Chicken\" paneringen', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752544/cnc-menu/chicken-n-chicken/6-stk-chicken-tikka-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Tikka Menu', item_description='Kyllingefileter, håndpaneret i \"Chicken N Chicken\" paneringen', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752544/cnc-menu/chicken-n-chicken/6-stk-chicken-tikka-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (61, 1, 61, 6, 6)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (61, 1, 61, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (62, 1, '6 stk. Chicken Nuggets Menu', 'chicken-n-chicken-6-stk.-chicken-nuggets-menu', 'Gyldne og sprøde nuggets er perfekte til både børn og voksne', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752545/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Nuggets Menu', item_description='Gyldne og sprøde nuggets er perfekte til både børn og voksne', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752545/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (62, 1, 62, 6, 7)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (62, 1, 62, 1, 64.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=64.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (63, 1, '10 stk. Chicken Nuggets Menu', 'chicken-n-chicken-10-stk.-chicken-nuggets-menu', 'Gyldne og sprøde nuggets er perfekte til både børn og voksne', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752546/cnc-menu/chicken-n-chicken/10-stk-chicken-nuggets-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='10 stk. Chicken Nuggets Menu', item_description='Gyldne og sprøde nuggets er perfekte til både børn og voksne', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752546/cnc-menu/chicken-n-chicken/10-stk-chicken-nuggets-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (63, 1, 63, 6, 8)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (63, 1, 63, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (64, 1, '15 stk. Chicken Nuggets Menu', 'chicken-n-chicken-15-stk.-chicken-nuggets-menu', 'Gyldne og sprøde nuggets er perfekte til både børn og voksne', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752546/cnc-menu/chicken-n-chicken/10-stk-chicken-nuggets-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='15 stk. Chicken Nuggets Menu', item_description='Gyldne og sprøde nuggets er perfekte til både børn og voksne', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752546/cnc-menu/chicken-n-chicken/10-stk-chicken-nuggets-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (64, 1, 64, 6, 9)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (64, 1, 64, 1, 102.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=102.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (65, 1, '20 stk. Chicken Nuggets Menu', 'chicken-n-chicken-20-stk.-chicken-nuggets-menu', 'Gyldne og sprøde nuggets er perfekte til både børn og voksne', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752546/cnc-menu/chicken-n-chicken/10-stk-chicken-nuggets-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='20 stk. Chicken Nuggets Menu', item_description='Gyldne og sprøde nuggets er perfekte til både børn og voksne', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752546/cnc-menu/chicken-n-chicken/10-stk-chicken-nuggets-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (65, 1, 65, 6, 10)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (65, 1, 65, 1, 119.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=119.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (66, 1, '12 stk. Chicken Pop Corn Menu', 'chicken-n-chicken-12-stk.-chicken-pop-corn-menu', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752549/cnc-menu/chicken-n-chicken/12-stk-chicken-pop-corn-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='12 stk. Chicken Pop Corn Menu', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752549/cnc-menu/chicken-n-chicken/12-stk-chicken-pop-corn-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (66, 1, 66, 6, 11)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (66, 1, 66, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (67, 1, '20 stk. Chicken Pop Corn Menu', 'chicken-n-chicken-20-stk.-chicken-pop-corn-menu', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752549/cnc-menu/chicken-n-chicken/12-stk-chicken-pop-corn-menu.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='20 stk. Chicken Pop Corn Menu', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752549/cnc-menu/chicken-n-chicken/12-stk-chicken-pop-corn-menu.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (67, 1, 67, 6, 12)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=12;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (67, 1, 67, 1, 109.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=109.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (68, 1, '1 stk. Chicken Drumstick', 'chicken-n-chicken-1-stk.-chicken-drumstick', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752551/cnc-menu/chicken-n-chicken/1-stk-chicken-drumstick.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='1 stk. Chicken Drumstick', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752551/cnc-menu/chicken-n-chicken/1-stk-chicken-drumstick.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (68, 1, 68, 6, 13)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=13;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (68, 1, 68, 1, 24.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=24.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (69, 1, '2 stk. Chicken Drumsticks', 'chicken-n-chicken-2-stk.-chicken-drumsticks', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752552/cnc-menu/chicken-n-chicken/2-stk-chicken-drumsticks.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='2 stk. Chicken Drumsticks', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752552/cnc-menu/chicken-n-chicken/2-stk-chicken-drumsticks.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (69, 1, 69, 6, 14)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=14;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (69, 1, 69, 1, 42.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=42.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (70, 1, '3 stk. Chicken Drumsticks', 'chicken-n-chicken-3-stk.-chicken-drumsticks', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752553/cnc-menu/chicken-n-chicken/3-stk-chicken-drumsticks.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='3 stk. Chicken Drumsticks', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752553/cnc-menu/chicken-n-chicken/3-stk-chicken-drumsticks.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (70, 1, 70, 6, 15)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=15;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (70, 1, 70, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (71, 1, '4 stk. Chicken Drumsticks', 'chicken-n-chicken-4-stk.-chicken-drumsticks', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752554/cnc-menu/chicken-n-chicken/4-stk-chicken-drumsticks.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='4 stk. Chicken Drumsticks', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752554/cnc-menu/chicken-n-chicken/4-stk-chicken-drumsticks.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (71, 1, 71, 6, 16)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=16;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (71, 1, 71, 1, 77.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=77.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (72, 1, '5 stk. Chicken Drumsticks', 'chicken-n-chicken-5-stk.-chicken-drumsticks', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752556/cnc-menu/chicken-n-chicken/5-stk-chicken-drumsticks.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='5 stk. Chicken Drumsticks', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752556/cnc-menu/chicken-n-chicken/5-stk-chicken-drumsticks.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (72, 1, 72, 6, 17)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=17;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (72, 1, 72, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (73, 1, '6 stk. Chicken Drumsticks', 'chicken-n-chicken-6-stk.-chicken-drumsticks', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752557/cnc-menu/chicken-n-chicken/6-stk-chicken-drumsticks.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Drumsticks', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752557/cnc-menu/chicken-n-chicken/6-stk-chicken-drumsticks.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (73, 1, 73, 6, 18)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=18;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (73, 1, 73, 1, 109.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=109.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (74, 1, '8 stk. Hot Spicy Wings', 'chicken-n-chicken-8-stk.-hot-spicy-wings', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752559/cnc-menu/chicken-n-chicken/8-stk-hot-spicy-wings.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='8 stk. Hot Spicy Wings', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752559/cnc-menu/chicken-n-chicken/8-stk-hot-spicy-wings.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (74, 1, 74, 6, 19)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=19;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (74, 1, 74, 1, 52.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=52.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (75, 1, '12 stk. Hot Spicy Wings', 'chicken-n-chicken-12-stk.-hot-spicy-wings', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752560/cnc-menu/chicken-n-chicken/12-stk-hot-spicy-wings.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='12 stk. Hot Spicy Wings', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752560/cnc-menu/chicken-n-chicken/12-stk-hot-spicy-wings.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (75, 1, 75, 6, 20)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=20;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (75, 1, 75, 1, 82.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=82.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (76, 1, '17 stk. Hot Spicy Wings', 'chicken-n-chicken-17-stk.-hot-spicy-wings', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752561/cnc-menu/chicken-n-chicken/17-stk-hot-spicy-wings.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='17 stk. Hot Spicy Wings', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752561/cnc-menu/chicken-n-chicken/17-stk-hot-spicy-wings.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (76, 1, 76, 6, 21)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=21;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (76, 1, 76, 1, 112.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=112.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (77, 1, '22 stk. Hot Spicy Wings', 'chicken-n-chicken-22-stk.-hot-spicy-wings', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752563/cnc-menu/chicken-n-chicken/22-stk-hot-spicy-wings.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='22 stk. Hot Spicy Wings', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752563/cnc-menu/chicken-n-chicken/22-stk-hot-spicy-wings.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (77, 1, 77, 6, 22)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=22;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (77, 1, 77, 1, 142.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=142.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (78, 1, '6 stk. Chicken Strips', 'chicken-n-chicken-6-stk.-chicken-strips', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752564/cnc-menu/chicken-n-chicken/6-stk-chicken-strips.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Strips', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752564/cnc-menu/chicken-n-chicken/6-stk-chicken-strips.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (78, 1, 78, 6, 23)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=23;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (78, 1, 78, 1, 52.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=52.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (79, 1, '10 stk. Chicken Strips', 'chicken-n-chicken-10-stk.-chicken-strips', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752565/cnc-menu/chicken-n-chicken/10-stk-chicken-strips.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='10 stk. Chicken Strips', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752565/cnc-menu/chicken-n-chicken/10-stk-chicken-strips.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (79, 1, 79, 6, 24)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=24;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (79, 1, 79, 1, 89.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=89.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (80, 1, '6 stk. Chicken Tikka', 'chicken-n-chicken-6-stk.-chicken-tikka', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752566/cnc-menu/chicken-n-chicken/6-stk-chicken-tikka.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Tikka', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752566/cnc-menu/chicken-n-chicken/6-stk-chicken-tikka.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (80, 1, 80, 6, 25)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=25;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (80, 1, 80, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (81, 1, '6 stk. Chicken Nuggets', 'chicken-n-chicken-6-stk.-chicken-nuggets', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Nuggets', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (81, 1, 81, 6, 26)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=26;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (81, 1, 81, 1, 34.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=34.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (82, 1, '10 stk. Chicken Nuggets', 'chicken-n-chicken-10-stk.-chicken-nuggets', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='10 stk. Chicken Nuggets', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (82, 1, 82, 6, 27)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=27;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (82, 1, 82, 1, 49.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=49.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (83, 1, '15 stk. Chicken Nuggets', 'chicken-n-chicken-15-stk.-chicken-nuggets', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='15 stk. Chicken Nuggets', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (83, 1, 83, 6, 28)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=28;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (83, 1, 83, 1, 72.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=72.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (84, 1, '20 stk. Chicken Nuggets', 'chicken-n-chicken-20-stk.-chicken-nuggets', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='20 stk. Chicken Nuggets', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752567/cnc-menu/chicken-n-chicken/6-stk-chicken-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (84, 1, 84, 6, 29)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=29;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (84, 1, 84, 1, 94.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=94.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (85, 1, '6 stk. Chicken Pop Corn', 'chicken-n-chicken-6-stk.-chicken-pop-corn', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752571/cnc-menu/chicken-n-chicken/6-stk-chicken-pop-corn.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 stk. Chicken Pop Corn', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752571/cnc-menu/chicken-n-chicken/6-stk-chicken-pop-corn.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (85, 1, 85, 6, 30)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=30;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (85, 1, 85, 1, 39.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=39.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (86, 1, '12 stk. Chicken Pop Corn', 'chicken-n-chicken-12-stk.-chicken-pop-corn', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752571/cnc-menu/chicken-n-chicken/6-stk-chicken-pop-corn.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='12 stk. Chicken Pop Corn', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752571/cnc-menu/chicken-n-chicken/6-stk-chicken-pop-corn.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (86, 1, 86, 6, 31)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=31;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (86, 1, 86, 1, 59.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=59.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (87, 1, '20 stk. Chicken Pop Corn', 'chicken-n-chicken-20-stk.-chicken-pop-corn', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752571/cnc-menu/chicken-n-chicken/6-stk-chicken-pop-corn.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='20 stk. Chicken Pop Corn', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752571/cnc-menu/chicken-n-chicken/6-stk-chicken-pop-corn.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (87, 1, 87, 6, 32)
ON DUPLICATE KEY UPDATE cat_id=6, sequence=32;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (87, 1, 87, 1, 79.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=79.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (88, 1, 'Kids Meal 1 - Hamburger', 'kids-meal-kids-meal-1---hamburger', 'Hamburger indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752575/cnc-menu/kids-meal/kids-meal-1-hamburger.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kids Meal 1 - Hamburger', item_description='Hamburger indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752575/cnc-menu/kids-meal/kids-meal-1-hamburger.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (88, 1, 88, 7, 1)
ON DUPLICATE KEY UPDATE cat_id=7, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (88, 1, 88, 1, 45.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=45.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (89, 1, 'Kids Meal 2 - Chicken Strips 2 Stk.', 'kids-meal-kids-meal-2---chicken-strips-2-stk.', 'Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752576/cnc-menu/kids-meal/kids-meal-2-chicken-strips-2-stk.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kids Meal 2 - Chicken Strips 2 Stk.', item_description='Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752576/cnc-menu/kids-meal/kids-meal-2-chicken-strips-2-stk.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (89, 1, 89, 7, 2)
ON DUPLICATE KEY UPDATE cat_id=7, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (89, 1, 89, 1, 45.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=45.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (90, 1, 'Kids Meal 3 - 5 stk. Chicken Pop Corn', 'kids-meal-kids-meal-3---5-stk.-chicken-pop-corn', 'Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752577/cnc-menu/kids-meal/kids-meal-3-5-stk-chicken-pop-corn.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kids Meal 3 - 5 stk. Chicken Pop Corn', item_description='Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752577/cnc-menu/kids-meal/kids-meal-3-5-stk-chicken-pop-corn.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (90, 1, 90, 7, 3)
ON DUPLICATE KEY UPDATE cat_id=7, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (90, 1, 90, 1, 45.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=45.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (91, 1, 'Kids Meal 4 - 4 stk. Chicken Nuggets', 'kids-meal-kids-meal-4---4-stk.-chicken-nuggets', 'Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752578/cnc-menu/kids-meal/kids-meal-4-4-stk-chicken-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kids Meal 4 - 4 stk. Chicken Nuggets', item_description='Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752578/cnc-menu/kids-meal/kids-meal-4-4-stk-chicken-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (91, 1, 91, 7, 4)
ON DUPLICATE KEY UPDATE cat_id=7, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (91, 1, 91, 1, 45.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=45.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (92, 1, 'Kids Meal 5 - 1 stk. Drumstick', 'kids-meal-kids-meal-5---1-stk.-drumstick', 'Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752580/cnc-menu/kids-meal/kids-meal-5-1-stk-drumstick.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kids Meal 5 - 1 stk. Drumstick', item_description='Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752580/cnc-menu/kids-meal/kids-meal-5-1-stk-drumstick.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (92, 1, 92, 7, 5)
ON DUPLICATE KEY UPDATE cat_id=7, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (92, 1, 92, 1, 45.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=45.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (93, 1, 'Pommes Frites (medium)', 'sides-amp-dips-pommes-frites-(medium)', 'Pommes Frites (medium)', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752581/cnc-menu/sides-amp-dips/pommes-frites-medium.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pommes Frites (medium)', item_description='Pommes Frites (medium)', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752581/cnc-menu/sides-amp-dips/pommes-frites-medium.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (93, 1, 93, 8, 1)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (93, 1, 93, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (94, 1, 'Pommes Frites (large)', 'sides-amp-dips-pommes-frites-(large)', 'Pommes Frites (large)', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752582/cnc-menu/sides-amp-dips/pommes-frites-large.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pommes Frites (large)', item_description='Pommes Frites (large)', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752582/cnc-menu/sides-amp-dips/pommes-frites-large.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (94, 1, 94, 8, 2)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (94, 1, 94, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (95, 1, 'Potatoes Wedges', 'sides-amp-dips-potatoes-wedges', 'Potatoes Wedges', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752583/cnc-menu/sides-amp-dips/potatoes-wedges.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Potatoes Wedges', item_description='Potatoes Wedges', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752583/cnc-menu/sides-amp-dips/potatoes-wedges.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (95, 1, 95, 8, 3)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (95, 1, 95, 1, 33.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=33.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (96, 1, 'Frites Spirales', 'sides-amp-dips-frites-spirales', 'Frites Spirales', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752584/cnc-menu/sides-amp-dips/frites-spirales.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Frites Spirales', item_description='Frites Spirales', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752584/cnc-menu/sides-amp-dips/frites-spirales.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (96, 1, 96, 8, 4)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (96, 1, 96, 1, 33.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=33.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (97, 1, 'Frites Dippers', 'sides-amp-dips-frites-dippers', 'Frites Dippers', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752585/cnc-menu/sides-amp-dips/frites-dippers.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Frites Dippers', item_description='Frites Dippers', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752585/cnc-menu/sides-amp-dips/frites-dippers.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (97, 1, 97, 8, 5)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (97, 1, 97, 1, 33.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=33.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (98, 1, '6 Onion Rings', 'sides-amp-dips-6-onion-rings', '6 Onion Rings', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752588/cnc-menu/sides-amp-dips/6-onion-rings.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 Onion Rings', item_description='6 Onion Rings', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752588/cnc-menu/sides-amp-dips/6-onion-rings.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (98, 1, 98, 8, 6)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (98, 1, 98, 1, 33.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=33.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (99, 1, '10 Chili Cheese Nuggets', 'sides-amp-dips-10-chili-cheese-nuggets', '10 Chili Cheese Nuggets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752589/cnc-menu/sides-amp-dips/10-chili-cheese-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='10 Chili Cheese Nuggets', item_description='10 Chili Cheese Nuggets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752589/cnc-menu/sides-amp-dips/10-chili-cheese-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (99, 1, 99, 8, 7)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (99, 1, 99, 1, 34.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=34.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (100, 1, '6 Mozzarella Sticks', 'sides-amp-dips-6-mozzarella-sticks', '6 Mozzarella Sticks', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752590/cnc-menu/sides-amp-dips/6-mozzarella-sticks.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='6 Mozzarella Sticks', item_description='6 Mozzarella Sticks', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752590/cnc-menu/sides-amp-dips/6-mozzarella-sticks.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (100, 1, 100, 8, 8)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (100, 1, 100, 1, 34.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=34.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (101, 1, '12 Cream Cheese Nuggets', 'sides-amp-dips-12-cream-cheese-nuggets', '12 Cream Cheese Nuggets', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752592/cnc-menu/sides-amp-dips/12-cream-cheese-nuggets.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='12 Cream Cheese Nuggets', item_description='12 Cream Cheese Nuggets', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752592/cnc-menu/sides-amp-dips/12-cream-cheese-nuggets.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (101, 1, 101, 8, 9)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (101, 1, 101, 1, 34.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=34.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (102, 1, 'Ketchup 25g', 'sides-amp-dips-ketchup-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752593/cnc-menu/sides-amp-dips/ketchup-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Ketchup 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752593/cnc-menu/sides-amp-dips/ketchup-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (102, 1, 102, 8, 10)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (102, 1, 102, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (103, 1, 'Mayonnaise 25g', 'sides-amp-dips-mayonnaise-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752594/cnc-menu/sides-amp-dips/mayonnaise-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mayonnaise 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752594/cnc-menu/sides-amp-dips/mayonnaise-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (103, 1, 103, 8, 11)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (103, 1, 103, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (104, 1, 'Barbecue 25g', 'sides-amp-dips-barbecue-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752595/cnc-menu/sides-amp-dips/barbecue-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Barbecue 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752595/cnc-menu/sides-amp-dips/barbecue-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (104, 1, 104, 8, 12)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=12;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (104, 1, 104, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (105, 1, 'Honey Mustard 25g', 'sides-amp-dips-honey-mustard-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752596/cnc-menu/sides-amp-dips/honey-mustard-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Honey Mustard 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752596/cnc-menu/sides-amp-dips/honey-mustard-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (105, 1, 105, 8, 13)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=13;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (105, 1, 105, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (106, 1, 'Sweet & Sour 25g', 'sides-amp-dips-sweet-&-sour-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752597/cnc-menu/sides-amp-dips/sweet-sour-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Sweet & Sour 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752597/cnc-menu/sides-amp-dips/sweet-sour-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (106, 1, 106, 8, 14)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=14;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (106, 1, 106, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (107, 1, 'Pomfrit Sauce 25g', 'sides-amp-dips-pomfrit-sauce-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752599/cnc-menu/sides-amp-dips/pomfrit-sauce-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pomfrit Sauce 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752599/cnc-menu/sides-amp-dips/pomfrit-sauce-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (107, 1, 107, 8, 15)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=15;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (107, 1, 107, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (108, 1, 'Curry Mango 25g', 'sides-amp-dips-curry-mango-25g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752600/cnc-menu/sides-amp-dips/curry-mango-25g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Curry Mango 25g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752600/cnc-menu/sides-amp-dips/curry-mango-25g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (108, 1, 108, 8, 16)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=16;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (108, 1, 108, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (109, 1, 'Peri Peri 30ml', 'sides-amp-dips-peri-peri-30ml', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752601/cnc-menu/sides-amp-dips/peri-peri-30ml.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Peri Peri 30ml', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752601/cnc-menu/sides-amp-dips/peri-peri-30ml.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (109, 1, 109, 8, 17)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=17;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (109, 1, 109, 1, 6.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=6.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (110, 1, 'Algérienne 10g', 'sides-amp-dips-algérienne-10g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752602/cnc-menu/sides-amp-dips/algerienne-10g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Algérienne 10g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752602/cnc-menu/sides-amp-dips/algerienne-10g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (110, 1, 110, 8, 18)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=18;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (110, 1, 110, 1, 4.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=4.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (111, 1, 'Biggy Burger 10g', 'sides-amp-dips-biggy-burger-10g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752604/cnc-menu/sides-amp-dips/biggy-burger-10g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Biggy Burger 10g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752604/cnc-menu/sides-amp-dips/biggy-burger-10g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (111, 1, 111, 8, 19)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=19;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (111, 1, 111, 1, 4.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=4.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (112, 1, 'Ketchup 10g', 'sides-amp-dips-ketchup-10g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752606/cnc-menu/sides-amp-dips/ketchup-10g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Ketchup 10g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752606/cnc-menu/sides-amp-dips/ketchup-10g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (112, 1, 112, 8, 20)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=20;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (112, 1, 112, 1, 4.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=4.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (113, 1, 'Mayonnaise 10g', 'sides-amp-dips-mayonnaise-10g', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752607/cnc-menu/sides-amp-dips/mayonnaise-10g.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mayonnaise 10g', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752607/cnc-menu/sides-amp-dips/mayonnaise-10g.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (113, 1, 113, 8, 21)
ON DUPLICATE KEY UPDATE cat_id=8, sequence=21;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (113, 1, 113, 1, 4.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=4.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (114, 1, 'Americano', 'coffee-amp-cake-americano', 'Americano', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752608/cnc-menu/coffee-amp-cake/americano.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Americano', item_description='Americano', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752608/cnc-menu/coffee-amp-cake/americano.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (114, 1, 114, 9, 1)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (114, 1, 114, 1, 20.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=20.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (115, 1, 'Tea', 'coffee-amp-cake-tea', 'Tea', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752608/cnc-menu/coffee-amp-cake/tea.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tea', item_description='Tea', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752608/cnc-menu/coffee-amp-cake/tea.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (115, 1, 115, 9, 2)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (115, 1, 115, 1, 20.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=20.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (116, 1, 'Cappuccino', 'coffee-amp-cake-cappuccino', 'Cappuccino', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752609/cnc-menu/coffee-amp-cake/cappuccino.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Cappuccino', item_description='Cappuccino', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752609/cnc-menu/coffee-amp-cake/cappuccino.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (116, 1, 116, 9, 3)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (116, 1, 116, 1, 25.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=25.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (117, 1, 'Caffe latte', 'coffee-amp-cake-caffe-latte', 'Caffe latte', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752610/cnc-menu/coffee-amp-cake/caffe-latte.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Caffe latte', item_description='Caffe latte', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752610/cnc-menu/coffee-amp-cake/caffe-latte.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (117, 1, 117, 9, 4)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (117, 1, 117, 1, 25.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=25.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (118, 1, 'Varm kakao', 'coffee-amp-cake-varm-kakao', 'Varm kakao', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752611/cnc-menu/coffee-amp-cake/varm-kakao.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Varm kakao', item_description='Varm kakao', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752611/cnc-menu/coffee-amp-cake/varm-kakao.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (118, 1, 118, 9, 5)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (118, 1, 118, 1, 25.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=25.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (119, 1, 'Flat white', 'coffee-amp-cake-flat-white', 'Flat white', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752612/cnc-menu/coffee-amp-cake/flat-white.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Flat white', item_description='Flat white', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752612/cnc-menu/coffee-amp-cake/flat-white.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (119, 1, 119, 9, 6)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (119, 1, 119, 1, 25.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=25.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (120, 1, 'Cortador', 'coffee-amp-cake-cortador', 'Cortador', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752612/cnc-menu/coffee-amp-cake/cortador.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Cortador', item_description='Cortador', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752612/cnc-menu/coffee-amp-cake/cortador.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (120, 1, 120, 9, 7)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (120, 1, 120, 1, 25.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=25.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (121, 1, 'Is latte - Vanilla', 'coffee-amp-cake-is-latte---vanilla', 'Is latte - Vanilla', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752613/cnc-menu/coffee-amp-cake/is-latte-vanilla.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Is latte - Vanilla', item_description='Is latte - Vanilla', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752613/cnc-menu/coffee-amp-cake/is-latte-vanilla.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (121, 1, 121, 9, 8)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (121, 1, 121, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (122, 1, 'Is latte - Caramel', 'coffee-amp-cake-is-latte---caramel', '', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752613/cnc-menu/coffee-amp-cake/is-latte-vanilla.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Is latte - Caramel', item_description='', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752613/cnc-menu/coffee-amp-cake/is-latte-vanilla.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (122, 1, 122, 9, 9)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (122, 1, 122, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (123, 1, 'Espresso dobbelt', 'coffee-amp-cake-espresso-dobbelt', 'Espresso dobbelt', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752615/cnc-menu/coffee-amp-cake/espresso-dobbelt.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Espresso dobbelt', item_description='Espresso dobbelt', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752615/cnc-menu/coffee-amp-cake/espresso-dobbelt.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (123, 1, 123, 9, 10)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (123, 1, 123, 1, 20.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=20.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (124, 1, 'Tiramisu - Chocolate', 'coffee-amp-cake-tiramisu---chocolate', 'Tiramisu - Chocolate', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752617/cnc-menu/coffee-amp-cake/tiramisu-chocolate.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tiramisu - Chocolate', item_description='Tiramisu - Chocolate', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752617/cnc-menu/coffee-amp-cake/tiramisu-chocolate.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (124, 1, 124, 9, 11)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (124, 1, 124, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (125, 1, 'Tiramisu - Caramel', 'coffee-amp-cake-tiramisu---caramel', 'Tiramisu - Caramel', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752618/cnc-menu/coffee-amp-cake/tiramisu-caramel.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Tiramisu - Caramel', item_description='Tiramisu - Caramel', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752618/cnc-menu/coffee-amp-cake/tiramisu-caramel.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (125, 1, 125, 9, 12)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=12;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (125, 1, 125, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (126, 1, 'Chocolate Muffin', 'coffee-amp-cake-chocolate-muffin', 'Chocolate muffin', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752619/cnc-menu/coffee-amp-cake/chocolate-muffin.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Chocolate Muffin', item_description='Chocolate muffin', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752619/cnc-menu/coffee-amp-cake/chocolate-muffin.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (126, 1, 126, 9, 13)
ON DUPLICATE KEY UPDATE cat_id=9, sequence=13;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (126, 1, 126, 1, 19.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=19.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (127, 1, 'SUNDAE - Karamel Toffee', 'ice-cream-amp-shakes-sundae---karamel-toffee', 'SUNDAE - Karamel Toffee', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752620/cnc-menu/ice-cream-amp-shakes/sundae-karamel-toffee.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='SUNDAE - Karamel Toffee', item_description='SUNDAE - Karamel Toffee', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752620/cnc-menu/ice-cream-amp-shakes/sundae-karamel-toffee.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (127, 1, 127, 10, 1)
ON DUPLICATE KEY UPDATE cat_id=10, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (127, 1, 127, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (128, 1, 'SUNDAE - Jordbær', 'ice-cream-amp-shakes-sundae---jordbær', 'SUNDAE - Jordbær', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752621/cnc-menu/ice-cream-amp-shakes/sundae-jordbaer.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='SUNDAE - Jordbær', item_description='SUNDAE - Jordbær', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752621/cnc-menu/ice-cream-amp-shakes/sundae-jordbaer.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (128, 1, 128, 10, 2)
ON DUPLICATE KEY UPDATE cat_id=10, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (128, 1, 128, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (129, 1, 'SUNDAE - Chokolade', 'ice-cream-amp-shakes-sundae---chokolade', 'SUNDAE - Chokolade', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752622/cnc-menu/ice-cream-amp-shakes/sundae-chokolade.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='SUNDAE - Chokolade', item_description='SUNDAE - Chokolade', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752622/cnc-menu/ice-cream-amp-shakes/sundae-chokolade.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (129, 1, 129, 10, 3)
ON DUPLICATE KEY UPDATE cat_id=10, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (129, 1, 129, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (130, 1, 'SUNDAE - Vanilje', 'ice-cream-amp-shakes-sundae---vanilje', 'SUNDAE - Vanilje', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752623/cnc-menu/ice-cream-amp-shakes/sundae-vanilje.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='SUNDAE - Vanilje', item_description='SUNDAE - Vanilje', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752623/cnc-menu/ice-cream-amp-shakes/sundae-vanilje.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (130, 1, 130, 10, 4)
ON DUPLICATE KEY UPDATE cat_id=10, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (130, 1, 130, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (131, 1, 'SUNDAE - Oreo', 'ice-cream-amp-shakes-sundae---oreo', 'SUNDAE - Oreo', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752624/cnc-menu/ice-cream-amp-shakes/sundae-oreo.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='SUNDAE - Oreo', item_description='SUNDAE - Oreo', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752624/cnc-menu/ice-cream-amp-shakes/sundae-oreo.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (131, 1, 131, 10, 5)
ON DUPLICATE KEY UPDATE cat_id=10, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (131, 1, 131, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (132, 1, 'SUNDAE - Smartis', 'ice-cream-amp-shakes-sundae---smartis', 'SUNDAE - Smartis', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752625/cnc-menu/ice-cream-amp-shakes/sundae-smartis.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='SUNDAE - Smartis', item_description='SUNDAE - Smartis', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752625/cnc-menu/ice-cream-amp-shakes/sundae-smartis.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (132, 1, 132, 10, 6)
ON DUPLICATE KEY UPDATE cat_id=10, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (132, 1, 132, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (133, 1, 'Pepsi', 'cold-drinks-pepsi', 'Pepsi', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pepsi', item_description='Pepsi', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (133, 1, 133, 11, 1)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=1;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (133, 1, 133, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (134, 1, 'Pepsi Large', 'cold-drinks-pepsi-large', 'Pepsi Large', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pepsi Large', item_description='Pepsi Large', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (134, 1, 134, 11, 2)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=2;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (134, 1, 134, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (135, 1, 'Pepsi Max', 'cold-drinks-pepsi-max', 'Pepsi Max', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pepsi Max', item_description='Pepsi Max', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (135, 1, 135, 11, 3)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=3;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (135, 1, 135, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (136, 1, 'Pepsi Max Large', 'cold-drinks-pepsi-max-large', 'Pepsi Max Large', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pepsi Max Large', item_description='Pepsi Max Large', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (136, 1, 136, 11, 4)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=4;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (136, 1, 136, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (137, 1, 'Faxe Kondi', 'cold-drinks-faxe-kondi', 'Faxe Kondi', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi', item_description='Faxe Kondi', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (137, 1, 137, 11, 5)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=5;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (137, 1, 137, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (138, 1, 'Faxe Kondi  Large', 'cold-drinks-faxe-kondi--large', 'Faxe Kondi  Large', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi  Large', item_description='Faxe Kondi  Large', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (138, 1, 138, 11, 6)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=6;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (138, 1, 138, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (139, 1, 'Faxe Kondi Zero', 'cold-drinks-faxe-kondi-zero', 'Faxe Kondi Zero', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi Zero', item_description='Faxe Kondi Zero', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (139, 1, 139, 11, 7)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=7;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (139, 1, 139, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (140, 1, 'Faxe Kondi Zero Large', 'cold-drinks-faxe-kondi-zero-large', 'Faxe Kondi Zero Large', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi Zero Large', item_description='Faxe Kondi Zero Large', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (140, 1, 140, 11, 8)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=8;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (140, 1, 140, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (141, 1, 'Faxe Kondi Appelsin', 'cold-drinks-faxe-kondi-appelsin', 'Faxe Kondi Appelsin', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi Appelsin', item_description='Faxe Kondi Appelsin', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (141, 1, 141, 11, 9)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=9;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (141, 1, 141, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (142, 1, 'Faxe Kondi Appelsin Large', 'cold-drinks-faxe-kondi-appelsin-large', 'Faxe Kondi Appelsin Large', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi Appelsin Large', item_description='Faxe Kondi Appelsin Large', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (142, 1, 142, 11, 10)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=10;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (142, 1, 142, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (143, 1, 'Mirinda lemon', 'cold-drinks-mirinda-lemon', 'Mirinda lemon', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mirinda lemon', item_description='Mirinda lemon', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (143, 1, 143, 11, 11)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=11;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (143, 1, 143, 1, 27.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=27.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (144, 1, 'Mirinda lemon Large', 'cold-drinks-mirinda-lemon-large', 'Mirinda lemon Large', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Mirinda lemon Large', item_description='Mirinda lemon Large', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (144, 1, 144, 11, 12)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=12;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (144, 1, 144, 1, 32.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=32.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (145, 1, 'Kildevand 0.5l', 'cold-drinks-kildevand-0.5l', 'Kildevand 0.5l', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874076/cnc-menu/vegi-s-amp-salad/addons/kildevand-0-5l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Kildevand 0.5l', item_description='Kildevand 0.5l', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874076/cnc-menu/vegi-s-amp-salad/addons/kildevand-0-5l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (145, 1, 145, 11, 13)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=13;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (145, 1, 145, 1, 19.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=19.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (146, 1, 'Danskvand 0.5l', 'cold-drinks-danskvand-0.5l', 'Danskvand 0.5l', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874076/cnc-menu/vegi-s-amp-salad/addons/danskvand-0-5l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Danskvand 0.5l', item_description='Danskvand 0.5l', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874076/cnc-menu/vegi-s-amp-salad/addons/danskvand-0-5l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (146, 1, 146, 11, 14)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=14;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (146, 1, 146, 1, 25.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=25.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (147, 1, 'Faxe Kondi 1.5l', 'cold-drinks-faxe-kondi-1.5l', 'Faxe Kondi 1.5l', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874075/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-1-5l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Faxe Kondi 1.5l', item_description='Faxe Kondi 1.5l', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874075/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-1-5l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (147, 1, 147, 11, 15)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=15;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (147, 1, 147, 1, 38.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=38.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (148, 1, 'Pepsi Max 1.5l', 'cold-drinks-pepsi-max-1.5l', 'Pepsi Max 1.5l', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874074/cnc-menu/vegi-s-amp-salad/addons/pepsi-max-1-5-l.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Pepsi Max 1.5l', item_description='Pepsi Max 1.5l', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874074/cnc-menu/vegi-s-amp-salad/addons/pepsi-max-1-5-l.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (148, 1, 148, 11, 16)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=16;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (148, 1, 148, 1, 38.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=38.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (149, 1, 'Red Bull', 'cold-drinks-red-bull', 'Red Bull', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752640/cnc-menu/cold-drinks/red-bull.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Red Bull', item_description='Red Bull', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774752640/cnc-menu/cold-drinks/red-bull.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (149, 1, 149, 11, 17)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=17;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (149, 1, 149, 1, 29.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=29.0000;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, photo, status, available, visible, date_created, date_modified)
VALUES (150, 1, 'Capri-Sun', 'cold-drinks-capri-sun', 'Capri-Sun', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874078/cnc-menu/vegi-s-amp-salad/addons/capri-sun.png', 'publish', 1, 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE item_name='Capri-Sun', item_description='Capri-Sun', photo='https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874078/cnc-menu/vegi-s-amp-salad/addons/capri-sun.png', status='publish', available=1;
INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence)
VALUES (150, 1, 150, 11, 18)
ON DUPLICATE KEY UPDATE cat_id=11, sequence=18;
INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_id, size_id, price, sequence, available)
VALUES (150, 1, 150, 1, 15.0000, 1, 1)
ON DUPLICATE KEY UPDATE price=15.0000;

-- Addon groups (subcategories) and addon items
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (1, 1, 'Extras', 'Vælg ekstra toppings, tilbehør eller dyppelse for en mere tilfredsstillende oplevelse', 1, 'publish', 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Extras';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (1, 1, 'Vegetarbøf', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774873999/cnc-menu/beef-burger/addons/vegetarbof.png', 1, 'publish', 1, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Vegetarbøf', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (1, 1, 1, 1, 1)
ON DUPLICATE KEY UPDATE sequence=1;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (2, 1, 'Oksekødsbøf', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874001/cnc-menu/beef-burger/addons/oksekodsbof.png', 1, 'publish', 2, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Oksekødsbøf', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (2, 1, 1, 2, 2)
ON DUPLICATE KEY UPDATE sequence=2;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (3, 1, 'Cordon Bleu', 'Kød viklet rundt om ost/med ostefyld', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874002/cnc-menu/beef-burger/addons/cordon-bleu.png', 1, 'publish', 3, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Cordon Bleu', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (3, 1, 1, 3, 3)
ON DUPLICATE KEY UPDATE sequence=3;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (4, 1, 'Karrykylling', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874003/cnc-menu/beef-burger/addons/karrykylling.png', 1, 'publish', 4, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Karrykylling', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (4, 1, 1, 4, 4)
ON DUPLICATE KEY UPDATE sequence=4;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (5, 1, 'Kyllinge nuggets', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874004/cnc-menu/beef-burger/addons/kyllinge-nuggets.png', 1, 'publish', 5, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kyllinge nuggets', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (5, 1, 1, 5, 5)
ON DUPLICATE KEY UPDATE sequence=5;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (6, 1, 'Kyllingeinderfilet', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874005/cnc-menu/beef-burger/addons/kyllingeinderfilet.png', 1, 'publish', 6, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kyllingeinderfilet', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (6, 1, 1, 6, 6)
ON DUPLICATE KEY UPDATE sequence=6;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (7, 1, 'Tikka kylling', 'Kylling marineret i tikka krydderier', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874006/cnc-menu/beef-burger/addons/tikka-kylling.png', 1, 'publish', 7, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Tikka kylling', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (7, 1, 1, 7, 7)
ON DUPLICATE KEY UPDATE sequence=7;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (8, 1, 'Kyllingekebab', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874007/cnc-menu/beef-burger/addons/kyllingekebab.png', 1, 'publish', 8, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kyllingekebab', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (8, 1, 1, 8, 8)
ON DUPLICATE KEY UPDATE sequence=8;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (9, 1, 'Hash Brown kartoffel', '', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874008/cnc-menu/beef-burger/addons/hash-brown-kartoffel.png', 1, 'publish', 9, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Hash Brown kartoffel', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (9, 1, 1, 9, 9)
ON DUPLICATE KEY UPDATE sequence=9;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (10, 1, 'Løg', '', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874015/cnc-menu/beef-burger/addons/log.jpg', 1, 'publish', 10, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Løg', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (10, 1, 1, 10, 10)
ON DUPLICATE KEY UPDATE sequence=10;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (11, 1, 'Tomat', '', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874017/cnc-menu/beef-burger/addons/tomat.jpg', 1, 'publish', 11, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Tomat', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (11, 1, 1, 11, 11)
ON DUPLICATE KEY UPDATE sequence=11;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (12, 1, 'Iceberg', 'Iceberg salat', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874019/cnc-menu/beef-burger/addons/iceberg.jpg', 1, 'publish', 12, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Iceberg', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (12, 1, 1, 12, 12)
ON DUPLICATE KEY UPDATE sequence=12;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (13, 1, 'Cheddar', 'Cheddar ost', '10.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874020/cnc-menu/beef-burger/addons/cheddar.png', 1, 'publish', 13, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Cheddar', price='10.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (13, 1, 1, 13, 13)
ON DUPLICATE KEY UPDATE sequence=13;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (2, 1, 'Size', '', 1, 'publish', 2, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Size';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (14, 1, 'Large Upgrade', '', '10.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 14, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Large Upgrade', price='10.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (14, 1, 2, 14, 14)
ON DUPLICATE KEY UPDATE sequence=14;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (3, 1, 'Dip', 'Vælg din dip', 1, 'publish', 3, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Dip';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (15, 1, 'Curry Mango 25g', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874023/cnc-menu/beef-burger/addons/curry-mango-25g.png', 1, 'publish', 15, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Curry Mango 25g', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (15, 1, 3, 15, 15)
ON DUPLICATE KEY UPDATE sequence=15;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (16, 1, 'Mayonnaise 25g', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874024/cnc-menu/beef-burger/addons/mayonnaise-25g.png', 1, 'publish', 16, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Mayonnaise 25g', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (16, 1, 3, 16, 16)
ON DUPLICATE KEY UPDATE sequence=16;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (17, 1, 'Ketchup 25g', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874025/cnc-menu/beef-burger/addons/ketchup-25g.png', 1, 'publish', 17, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ketchup 25g', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (17, 1, 3, 17, 17)
ON DUPLICATE KEY UPDATE sequence=17;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (18, 1, 'Barbecue 25g', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874026/cnc-menu/beef-burger/addons/barbecue-25g.png', 1, 'publish', 18, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Barbecue 25g', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (18, 1, 3, 18, 18)
ON DUPLICATE KEY UPDATE sequence=18;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (19, 1, 'Sweet & Sour 25g', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874027/cnc-menu/beef-burger/addons/sweet-sour-25g.png', 1, 'publish', 19, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Sweet & Sour 25g', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (19, 1, 3, 19, 19)
ON DUPLICATE KEY UPDATE sequence=19;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (20, 1, 'Hvidløg 25g', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874028/cnc-menu/beef-burger/addons/hvidlog-25g.png', 1, 'publish', 20, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Hvidløg 25g', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (20, 1, 3, 20, 20)
ON DUPLICATE KEY UPDATE sequence=20;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (21, 1, 'Peri Peri 30ml', 'Dyppelse/dressing', '8.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874030/cnc-menu/beef-burger/addons/peri-peri-30ml.png', 1, 'publish', 21, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Peri Peri 30ml', price='8.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (21, 1, 3, 21, 21)
ON DUPLICATE KEY UPDATE sequence=21;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (22, 1, 'Algérienne 10g', 'Dyppelse/dressing', '5.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874031/cnc-menu/beef-burger/addons/algerienne-10g.png', 1, 'publish', 22, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Algérienne 10g', price='5.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (22, 1, 3, 22, 22)
ON DUPLICATE KEY UPDATE sequence=22;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (23, 1, 'Biggy Burger 10g', 'Dyppelse/dressing', '5.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874032/cnc-menu/beef-burger/addons/biggy-burger-10g.png', 1, 'publish', 23, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Biggy Burger 10g', price='5.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (23, 1, 3, 23, 23)
ON DUPLICATE KEY UPDATE sequence=23;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (24, 1, 'Samourai 10g', 'Dyppelse/dressing', '5.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874033/cnc-menu/beef-burger/addons/samourai-10g.png', 1, 'publish', 24, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Samourai 10g', price='5.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (24, 1, 3, 24, 24)
ON DUPLICATE KEY UPDATE sequence=24;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (25, 1, 'Mayonaise 10g', 'Dyppelse/dressing', '4.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874035/cnc-menu/beef-burger/addons/mayonaise-10g.png', 1, 'publish', 25, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Mayonaise 10g', price='4.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (25, 1, 3, 25, 25)
ON DUPLICATE KEY UPDATE sequence=25;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (26, 1, 'Ketchup 10g', 'Dyppelse/dressing', '4.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874036/cnc-menu/beef-burger/addons/ketchup-10g.png', 1, 'publish', 26, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ketchup 10g', price='4.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (26, 1, 3, 26, 26)
ON DUPLICATE KEY UPDATE sequence=26;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (4, 1, 'Menu Drinks', '', 1, 'publish', 4, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Menu Drinks';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (27, 1, 'Pepsi', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 27, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (27, 1, 4, 27, 27)
ON DUPLICATE KEY UPDATE sequence=27;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (28, 1, 'Pepsi Max', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 28, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi Max', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (28, 1, 4, 28, 28)
ON DUPLICATE KEY UPDATE sequence=28;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (29, 1, 'Faxe Kondi', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 29, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (29, 1, 4, 29, 29)
ON DUPLICATE KEY UPDATE sequence=29;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (30, 1, 'Faxe Kondi Zero', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 1, 'publish', 30, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi Zero', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (30, 1, 4, 30, 30)
ON DUPLICATE KEY UPDATE sequence=30;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (31, 1, 'Faxe Kondi Appelsin', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 1, 'publish', 31, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi Appelsin', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (31, 1, 4, 31, 31)
ON DUPLICATE KEY UPDATE sequence=31;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (32, 1, 'Mirinda lemon', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 32, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Mirinda lemon', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (32, 1, 4, 32, 32)
ON DUPLICATE KEY UPDATE sequence=32;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (5, 1, 'Drikkevarer', 'Vælg mellem en række forskellige drikkevarer til din mad', 1, 'publish', 5, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Drikkevarer';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (33, 1, 'Red Bull', 'Energi drink', '29.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/red-bull.png', 1, 'publish', 33, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Red Bull', price='29.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (33, 1, 5, 33, 33)
ON DUPLICATE KEY UPDATE sequence=33;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (34, 1, 'Pepsi 0.4l', 'Sodavand', '27.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 1, 'publish', 34, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi 0.4l', price='27.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (34, 1, 5, 34, 34)
ON DUPLICATE KEY UPDATE sequence=34;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (35, 1, 'Pepsi Max 0.4 l', 'Sodavand', '27.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 1, 'publish', 35, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi Max 0.4 l', price='27.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (35, 1, 5, 35, 35)
ON DUPLICATE KEY UPDATE sequence=35;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (36, 1, 'Faxe Kondi 0.4 l', 'Sodavand', '27.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 1, 'publish', 36, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi 0.4 l', price='27.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (36, 1, 5, 36, 36)
ON DUPLICATE KEY UPDATE sequence=36;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (37, 1, 'Faxe Kondi Zero 0.4 l', 'Sodavand', '27.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', 1, 'publish', 37, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi Zero 0.4 l', price='27.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (37, 1, 5, 37, 37)
ON DUPLICATE KEY UPDATE sequence=37;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (38, 1, 'Faxe Kondi Appelsin 0.4 l', 'Sodavand', '27.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874039/cnc-menu/beef-burger/addons/faxe-kondi-zero.png', 1, 'publish', 38, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi Appelsin 0.4 l', price='27.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (38, 1, 5, 38, 38)
ON DUPLICATE KEY UPDATE sequence=38;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (39, 1, 'Mirinda lemon 0.4 l', 'Sodavand', '27.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874073/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-zero-0-4-l.png', 1, 'publish', 39, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Mirinda lemon 0.4 l', price='27.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (39, 1, 5, 39, 39)
ON DUPLICATE KEY UPDATE sequence=39;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (40, 1, 'Pepsi 0.5 l', 'Sodavand', '32.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 40, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi 0.5 l', price='32.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (40, 1, 5, 40, 40)
ON DUPLICATE KEY UPDATE sequence=40;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (41, 1, 'Pepsi Max 0.5 l', 'Sodavand', '32.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 41, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi Max 0.5 l', price='32.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (41, 1, 5, 41, 41)
ON DUPLICATE KEY UPDATE sequence=41;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (42, 1, 'Faxe Kondi 0.5 l', 'Sodavand', '32.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 42, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi 0.5 l', price='32.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (42, 1, 5, 42, 42)
ON DUPLICATE KEY UPDATE sequence=42;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (43, 1, 'Faxe Kondi Zero 0.5 l', 'Sodavand', '32.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 43, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi Zero 0.5 l', price='32.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (43, 1, 5, 43, 43)
ON DUPLICATE KEY UPDATE sequence=43;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (44, 1, 'Faxe Kondi Appelsin 0.5 l', 'Sodavand', '32.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 44, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi Appelsin 0.5 l', price='32.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (44, 1, 5, 44, 44)
ON DUPLICATE KEY UPDATE sequence=44;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (45, 1, 'Mirinda lemon 0.5 l', 'Sodavand', '32.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874037/cnc-menu/beef-burger/addons/pepsi.png', 1, 'publish', 45, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Mirinda lemon 0.5 l', price='32.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (45, 1, 5, 45, 45)
ON DUPLICATE KEY UPDATE sequence=45;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (46, 1, 'Pepsi Max 1.5 l', 'Sodavand', '38.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874074/cnc-menu/vegi-s-amp-salad/addons/pepsi-max-1-5-l.png', 1, 'publish', 46, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi Max 1.5 l', price='38.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (46, 1, 5, 46, 46)
ON DUPLICATE KEY UPDATE sequence=46;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (47, 1, 'Faxe Kondi 1.5l', 'Sodavand', '38.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874075/cnc-menu/vegi-s-amp-salad/addons/faxe-kondi-1-5l.png', 1, 'publish', 47, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi 1.5l', price='38.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (47, 1, 5, 47, 47)
ON DUPLICATE KEY UPDATE sequence=47;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (48, 1, 'Danskvand 0.5l', 'Vand', '28.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874076/cnc-menu/vegi-s-amp-salad/addons/danskvand-0-5l.png', 1, 'publish', 48, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Danskvand 0.5l', price='28.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (48, 1, 5, 48, 48)
ON DUPLICATE KEY UPDATE sequence=48;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (49, 1, 'Kildevand 0.5l', 'Vand', '28.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874076/cnc-menu/vegi-s-amp-salad/addons/kildevand-0-5l.png', 1, 'publish', 49, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kildevand 0.5l', price='28.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (49, 1, 5, 49, 49)
ON DUPLICATE KEY UPDATE sequence=49;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (50, 1, 'Capri-Sun', 'Juice', '15.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874078/cnc-menu/vegi-s-amp-salad/addons/capri-sun.png', 1, 'publish', 50, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Capri-Sun', price='15.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (50, 1, 5, 50, 50)
ON DUPLICATE KEY UPDATE sequence=50;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (6, 1, 'Salad Dip', '', 1, 'publish', 6, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Salad Dip';
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (7, 1, 'Taco pålæg', 'Vælg mellem adskillige pålæg til dine tacos', 1, 'publish', 7, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Taco pålæg';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (51, 1, 'Vegetarbøf', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 51, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Vegetarbøf', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (51, 1, 7, 51, 51)
ON DUPLICATE KEY UPDATE sequence=51;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (52, 1, 'Oksekødsbøf', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 52, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Oksekødsbøf', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (52, 1, 7, 52, 52)
ON DUPLICATE KEY UPDATE sequence=52;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (53, 1, 'Cordon Bleu', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 53, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Cordon Bleu', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (53, 1, 7, 53, 53)
ON DUPLICATE KEY UPDATE sequence=53;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (54, 1, 'Karrykylling', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 54, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Karrykylling', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (54, 1, 7, 54, 54)
ON DUPLICATE KEY UPDATE sequence=54;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (55, 1, 'Kyllinge nuggets', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 55, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kyllinge nuggets', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (55, 1, 7, 55, 55)
ON DUPLICATE KEY UPDATE sequence=55;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (56, 1, 'Kyllingeinderfilet', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 56, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kyllingeinderfilet', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (56, 1, 7, 56, 56)
ON DUPLICATE KEY UPDATE sequence=56;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (57, 1, 'Tikka kylling', 'Kylling marineret i tikka krydderier', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 57, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Tikka kylling', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (57, 1, 7, 57, 57)
ON DUPLICATE KEY UPDATE sequence=57;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (58, 1, 'Kyllingekebab', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 58, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Kyllingekebab', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (58, 1, 7, 58, 58)
ON DUPLICATE KEY UPDATE sequence=58;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (59, 1, 'Hash Brown kartoffel', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 59, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Hash Brown kartoffel', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (59, 1, 7, 59, 59)
ON DUPLICATE KEY UPDATE sequence=59;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (60, 1, 'Cheddar', 'Cheddar ost', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 60, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Cheddar', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (60, 1, 7, 60, 60)
ON DUPLICATE KEY UPDATE sequence=60;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (61, 1, 'Iceberg', 'Iceberg salat', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 61, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Iceberg', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (61, 1, 7, 61, 61)
ON DUPLICATE KEY UPDATE sequence=61;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (62, 1, 'Tomat', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 62, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Tomat', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (62, 1, 7, 62, 62)
ON DUPLICATE KEY UPDATE sequence=62;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (63, 1, 'Løg', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 63, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Løg', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (63, 1, 7, 63, 63)
ON DUPLICATE KEY UPDATE sequence=63;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (8, 1, 'Taco dressing', 'Vælg en dressing for dine tacos', 1, 'publish', 8, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Taco dressing';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (64, 1, 'Algérienne', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 64, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Algérienne', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (64, 1, 8, 64, 64)
ON DUPLICATE KEY UPDATE sequence=64;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (65, 1, 'Biggy Burger', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 65, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Biggy Burger', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (65, 1, 8, 65, 65)
ON DUPLICATE KEY UPDATE sequence=65;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (66, 1, 'Peri Peri', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 66, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Peri Peri', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (66, 1, 8, 66, 66)
ON DUPLICATE KEY UPDATE sequence=66;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (67, 1, 'Marocaine', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 67, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Marocaine', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (67, 1, 8, 67, 67)
ON DUPLICATE KEY UPDATE sequence=67;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (68, 1, 'Pitta Kebab', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 68, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pitta Kebab', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (68, 1, 8, 68, 68)
ON DUPLICATE KEY UPDATE sequence=68;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (69, 1, 'Curry Mango', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 69, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Curry Mango', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (69, 1, 8, 69, 69)
ON DUPLICATE KEY UPDATE sequence=69;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (70, 1, 'Barbecue', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 70, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Barbecue', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (70, 1, 8, 70, 70)
ON DUPLICATE KEY UPDATE sequence=70;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (71, 1, 'Samourai', 'Dyppelse/dressing', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 71, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Samourai', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (71, 1, 8, 71, 71)
ON DUPLICATE KEY UPDATE sequence=71;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (9, 1, 'Family Size', '', 1, 'publish', 9, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Family Size';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (72, 1, 'Large Upgrade', '', '30.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 72, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Large Upgrade', price='30.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (72, 1, 9, 72, 72)
ON DUPLICATE KEY UPDATE sequence=72;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (10, 1, 'Family Drink', '', 1, 'publish', 10, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Family Drink';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (73, 1, 'Faxe Kondi', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 73, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Faxe Kondi', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (73, 1, 10, 73, 73)
ON DUPLICATE KEY UPDATE sequence=73;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (74, 1, 'Pepsi Max', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 74, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pepsi Max', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (74, 1, 10, 74, 74)
ON DUPLICATE KEY UPDATE sequence=74;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (11, 1, 'Extras Coffee', '', 1, 'publish', 11, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Extras Coffee';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (75, 1, 'Ektra - Ekstra espresso shot', 'Kaffe', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874136/cnc-menu/coffee-amp-cake/addons/ektra-ekstra-espresso-shot.png', 1, 'publish', 75, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ektra - Ekstra espresso shot', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (75, 1, 11, 75, 75)
ON DUPLICATE KEY UPDATE sequence=75;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (76, 1, 'Ekstra - Monin Chocolate', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874136/cnc-menu/coffee-amp-cake/addons/ekstra-monin-chocolate.png', 1, 'publish', 76, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Chocolate', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (76, 1, 11, 76, 76)
ON DUPLICATE KEY UPDATE sequence=76;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (77, 1, 'Ekstra - Monin Karamel Sukkerfri', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874138/cnc-menu/coffee-amp-cake/addons/ekstra-monin-karamel-sukkerfri.png', 1, 'publish', 77, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Karamel Sukkerfri', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (77, 1, 11, 77, 77)
ON DUPLICATE KEY UPDATE sequence=77;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (78, 1, 'Ekstra - Monin Vanilje Sukkerfri', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874139/cnc-menu/coffee-amp-cake/addons/ekstra-monin-vanilje-sukkerfri.png', 1, 'publish', 78, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Vanilje Sukkerfri', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (78, 1, 11, 78, 78)
ON DUPLICATE KEY UPDATE sequence=78;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (79, 1, 'Ekstra - Monin Pumpkin Spice', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874140/cnc-menu/coffee-amp-cake/addons/ekstra-monin-pumpkin-spice.png', 1, 'publish', 79, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Pumpkin Spice', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (79, 1, 11, 79, 79)
ON DUPLICATE KEY UPDATE sequence=79;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (12, 1, 'Coffee size', '', 1, 'publish', 12, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Coffee size';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (80, 1, 'Large Upgrade', '', '5.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 80, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Large Upgrade', price='5.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (80, 1, 12, 80, 80)
ON DUPLICATE KEY UPDATE sequence=80;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (13, 1, 'Tea', '', 1, 'publish', 13, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Tea';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (81, 1, 'Pukka - After Dinner', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 81, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pukka - After Dinner', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (81, 1, 13, 81, 81)
ON DUPLICATE KEY UPDATE sequence=81;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (82, 1, 'Pukka - Green Collection', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 82, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pukka - Green Collection', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (82, 1, 13, 82, 82)
ON DUPLICATE KEY UPDATE sequence=82;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (83, 1, 'Pukka - Supreme Matcha Green', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 83, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pukka - Supreme Matcha Green', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (83, 1, 13, 83, 83)
ON DUPLICATE KEY UPDATE sequence=83;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (84, 1, 'Pukka - Winter Warmer', '', '0.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 84, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Pukka - Winter Warmer', price='0.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (84, 1, 13, 84, 84)
ON DUPLICATE KEY UPDATE sequence=84;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, available, status, sequence, date_created, date_modified)
VALUES (14, 1, 'Extras icecream', '', 1, 'publish', 14, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE subcategory_name='Extras icecream';
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (85, 1, 'Ekstra - Monin Chocolate', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874136/cnc-menu/coffee-amp-cake/addons/ekstra-monin-chocolate.png', 1, 'publish', 85, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Chocolate', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (85, 1, 14, 85, 85)
ON DUPLICATE KEY UPDATE sequence=85;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (86, 1, 'Ekstra - Monin Karamel Sukkerfri', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874138/cnc-menu/coffee-amp-cake/addons/ekstra-monin-karamel-sukkerfri.png', 1, 'publish', 86, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Karamel Sukkerfri', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (86, 1, 14, 86, 86)
ON DUPLICATE KEY UPDATE sequence=86;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (87, 1, 'Ekstra - Monin Vanilje Sukkerfri', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874139/cnc-menu/coffee-amp-cake/addons/ekstra-monin-vanilje-sukkerfri.png', 1, 'publish', 87, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Vanilje Sukkerfri', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (87, 1, 14, 87, 87)
ON DUPLICATE KEY UPDATE sequence=87;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (88, 1, 'Ekstra - Monin Pumpkin Spice', 'Sirup', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874140/cnc-menu/coffee-amp-cake/addons/ekstra-monin-pumpkin-spice.png', 1, 'publish', 88, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Monin Pumpkin Spice', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (88, 1, 14, 88, 88)
ON DUPLICATE KEY UPDATE sequence=88;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (89, 1, 'Ekstra - Tivoli Drys', 'Drys', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874150/cnc-menu/ice-cream-amp-shakes/addons/ekstra-tivoli-drys.png', 1, 'publish', 89, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Tivoli Drys', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (89, 1, 14, 89, 89)
ON DUPLICATE KEY UPDATE sequence=89;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (90, 1, 'Ekstra - Smarties Drys', 'Drys', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874151/cnc-menu/ice-cream-amp-shakes/addons/ekstra-smarties-drys.png', 1, 'publish', 90, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Smarties Drys', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (90, 1, 14, 90, 90)
ON DUPLICATE KEY UPDATE sequence=90;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (91, 1, 'Ekstra - Oreo Drys', 'Drys', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874152/cnc-menu/ice-cream-amp-shakes/addons/ekstra-oreo-drys.png', 1, 'publish', 91, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Oreo Drys', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (91, 1, 14, 91, 91)
ON DUPLICATE KEY UPDATE sequence=91;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (92, 1, 'Ekstra - Flødeskum', '', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874153/cnc-menu/ice-cream-amp-shakes/addons/ekstra-flodeskum.png', 1, 'publish', 92, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Flødeskum', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (92, 1, 14, 92, 92)
ON DUPLICATE KEY UPDATE sequence=92;
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, price, photo, available, status, sequence, date_created, date_modified)
VALUES (93, 1, 'Ekstra - Kinder Maxi', 'Chokolade', '6.0', 'https://res.cloudinary.com/dtcjxk8si/image/upload/v1774874022/cnc-menu/beef-burger/addons/large-upgrade.png', 1, 'publish', 93, '2026-04-04 16:22:37', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE sub_item_name='Ekstra - Kinder Maxi', price='6.0';
INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence)
VALUES (93, 1, 14, 93, 93)
ON DUPLICATE KEY UPDATE sequence=93;

-- Link addon groups to menu items
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (1, 1, 1, 0, 1, 'multiple', 0, '20', 0, 1)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (2, 1, 2, 0, 2, 'single', 0, '0', 0, 2)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (3, 1, 2, 0, 1, 'single', 0, '15', 0, 3)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (4, 1, 2, 0, 3, 'multiple', 0, '20', 0, 4)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (5, 1, 2, 0, 4, 'single', 0, '0', 1, 5)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (6, 1, 3, 0, 2, 'single', 0, '0', 0, 6)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (7, 1, 3, 0, 1, 'single', 0, '20', 0, 7)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (8, 1, 3, 0, 3, 'multiple', 0, '20', 0, 8)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (9, 1, 3, 0, 4, 'single', 0, '0', 1, 9)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (10, 1, 4, 0, 2, 'single', 0, '0', 0, 10)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (11, 1, 4, 0, 1, 'single', 0, '20', 0, 11)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (12, 1, 4, 0, 3, 'multiple', 0, '20', 0, 12)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (13, 1, 4, 0, 4, 'single', 0, '0', 1, 13)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (14, 1, 5, 0, 2, 'single', 0, '0', 0, 14)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (15, 1, 5, 0, 1, 'single', 0, '20', 0, 15)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (16, 1, 5, 0, 3, 'multiple', 0, '20', 0, 16)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (17, 1, 5, 0, 4, 'single', 0, '0', 1, 17)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (18, 1, 6, 0, 2, 'single', 0, '0', 0, 18)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (19, 1, 6, 0, 1, 'single', 0, '20', 0, 19)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (20, 1, 6, 0, 3, 'multiple', 0, '20', 0, 20)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (21, 1, 6, 0, 4, 'single', 0, '0', 1, 21)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (22, 1, 7, 0, 1, 'multiple', 0, '20', 0, 22)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (23, 1, 8, 0, 1, 'multiple', 0, '20', 0, 23)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (24, 1, 9, 0, 1, 'multiple', 0, '20', 0, 24)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (25, 1, 10, 0, 1, 'multiple', 0, '20', 0, 25)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (26, 1, 11, 0, 1, 'multiple', 0, '20', 0, 26)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (27, 1, 12, 0, 1, 'single', 0, '20', 0, 27)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (28, 1, 13, 0, 2, 'single', 0, '0', 0, 28)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (29, 1, 13, 0, 1, 'single', 0, '20', 0, 29)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (30, 1, 13, 0, 3, 'multiple', 0, '20', 0, 30)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (31, 1, 13, 0, 4, 'single', 0, '0', 1, 31)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (32, 1, 14, 0, 2, 'single', 0, '0', 0, 32)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (33, 1, 14, 0, 1, 'single', 0, '20', 0, 33)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (34, 1, 14, 0, 3, 'multiple', 0, '20', 0, 34)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (35, 1, 14, 0, 4, 'single', 0, '0', 1, 35)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (36, 1, 15, 0, 2, 'single', 0, '0', 0, 36)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (37, 1, 15, 0, 1, 'single', 0, '20', 0, 37)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (38, 1, 15, 0, 3, 'multiple', 0, '20', 0, 38)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (39, 1, 15, 0, 4, 'single', 0, '0', 1, 39)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (40, 1, 16, 0, 2, 'single', 0, '0', 0, 40)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (41, 1, 16, 0, 1, 'single', 0, '20', 0, 41)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (42, 1, 16, 0, 3, 'multiple', 0, '20', 0, 42)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (43, 1, 16, 0, 4, 'single', 0, '0', 1, 43)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (44, 1, 17, 0, 2, 'single', 0, '0', 0, 44)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (45, 1, 17, 0, 1, 'single', 0, '20', 0, 45)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (46, 1, 17, 0, 3, 'multiple', 0, '20', 0, 46)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (47, 1, 17, 0, 4, 'single', 0, '0', 1, 47)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (48, 1, 18, 0, 2, 'single', 0, '0', 0, 48)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (49, 1, 18, 0, 1, 'single', 0, '20', 0, 49)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (50, 1, 18, 0, 3, 'multiple', 0, '20', 0, 50)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (51, 1, 18, 0, 4, 'single', 0, '0', 1, 51)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (52, 1, 19, 0, 2, 'single', 0, '0', 0, 52)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (53, 1, 19, 0, 1, 'single', 0, '20', 0, 53)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (54, 1, 19, 0, 3, 'multiple', 0, '20', 0, 54)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (55, 1, 19, 0, 4, 'single', 0, '0', 1, 55)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (56, 1, 20, 0, 2, 'single', 0, '0', 0, 56)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (57, 1, 20, 0, 1, 'single', 0, '20', 0, 57)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (58, 1, 20, 0, 3, 'multiple', 0, '20', 0, 58)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (59, 1, 20, 0, 4, 'single', 0, '0', 1, 59)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (60, 1, 21, 0, 2, 'single', 0, '0', 0, 60)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (61, 1, 21, 0, 1, 'single', 0, '20', 0, 61)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (62, 1, 21, 0, 3, 'multiple', 0, '20', 0, 62)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (63, 1, 21, 0, 4, 'single', 0, '0', 1, 63)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (64, 1, 22, 0, 2, 'single', 0, '0', 0, 64)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (65, 1, 22, 0, 1, 'single', 0, '20', 0, 65)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (66, 1, 22, 0, 3, 'multiple', 0, '20', 0, 66)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (67, 1, 22, 0, 4, 'single', 0, '0', 1, 67)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (68, 1, 23, 0, 2, 'single', 0, '0', 0, 68)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (69, 1, 23, 0, 1, 'single', 0, '20', 0, 69)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (70, 1, 23, 0, 3, 'multiple', 0, '20', 0, 70)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (71, 1, 23, 0, 4, 'single', 0, '0', 1, 71)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (72, 1, 24, 0, 1, 'multiple', 0, '20', 0, 72)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (73, 1, 25, 0, 1, 'multiple', 0, '20', 0, 73)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (74, 1, 26, 0, 1, 'multiple', 0, '20', 0, 74)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (75, 1, 27, 0, 1, 'multiple', 0, '20', 0, 75)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (76, 1, 28, 0, 1, 'multiple', 0, '20', 0, 76)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (77, 1, 29, 0, 1, 'multiple', 0, '20', 0, 77)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (78, 1, 30, 0, 1, 'multiple', 0, '20', 0, 78)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (79, 1, 31, 0, 1, 'multiple', 0, '20', 0, 79)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (80, 1, 32, 0, 1, 'multiple', 0, '20', 0, 80)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (81, 1, 33, 0, 1, 'multiple', 0, '20', 0, 81)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (82, 1, 34, 0, 1, 'multiple', 0, '20', 0, 82)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (83, 1, 34, 0, 5, 'single', 0, '20', 0, 83)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (84, 1, 34, 0, 6, 'multiple', 0, '20', 0, 84)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (85, 1, 35, 0, 1, 'multiple', 0, '20', 0, 85)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (86, 1, 35, 0, 5, 'single', 0, '20', 0, 86)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (87, 1, 35, 0, 6, 'multiple', 0, '6', 0, 87)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (88, 1, 36, 0, 1, 'multiple', 0, '20', 0, 88)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (89, 1, 36, 0, 5, 'single', 0, '20', 0, 89)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (90, 1, 36, 0, 6, 'multiple', 0, '6', 0, 90)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (91, 1, 38, 0, 7, 'single', 0, '0', 1, 91)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (92, 1, 38, 0, 8, 'single', 0, '0', 1, 92)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (93, 1, 38, 0, 4, 'single', 0, '0', 1, 93)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (94, 1, 38, 0, 3, 'multiple', 0, '20', 0, 94)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (95, 1, 39, 0, 7, 'single', 0, '2', 1, 95)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (96, 1, 39, 0, 8, 'single', 0, '0', 1, 96)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (97, 1, 39, 0, 3, 'multiple', 0, '20', 0, 97)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (98, 1, 39, 0, 4, 'single', 0, '0', 1, 98)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (99, 1, 40, 0, 7, 'single', 0, '3', 1, 99)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (100, 1, 40, 0, 8, 'single', 0, '0', 1, 100)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (101, 1, 40, 0, 3, 'multiple', 0, '20', 0, 101)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (102, 1, 40, 0, 4, 'single', 0, '0', 1, 102)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (103, 1, 41, 0, 1, 'single', 0, '20', 0, 103)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (104, 1, 41, 0, 2, 'single', 0, '0', 0, 104)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (105, 1, 41, 0, 3, 'multiple', 0, '20', 0, 105)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (106, 1, 41, 0, 4, 'single', 0, '0', 1, 106)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (107, 1, 42, 0, 2, 'single', 0, '0', 0, 107)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (108, 1, 42, 0, 1, 'single', 0, '20', 0, 108)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (109, 1, 42, 0, 3, 'multiple', 0, '20', 0, 109)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (110, 1, 42, 0, 4, 'single', 0, '0', 1, 110)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (111, 1, 43, 0, 2, 'single', 0, '0', 0, 111)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (112, 1, 43, 0, 1, 'single', 0, '20', 0, 112)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (113, 1, 43, 0, 3, 'multiple', 0, '20', 0, 113)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (114, 1, 43, 0, 4, 'single', 0, '0', 1, 114)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (115, 1, 44, 0, 7, 'single', 0, '0', 1, 115)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (116, 1, 44, 0, 8, 'single', 0, '0', 1, 116)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (117, 1, 45, 0, 7, 'multiple', 0, '2', 1, 117)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (118, 1, 45, 0, 8, 'single', 0, '0', 1, 118)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (119, 1, 46, 0, 7, 'multiple', 0, '3', 1, 119)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (120, 1, 46, 0, 8, 'single', 0, '0', 1, 120)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (121, 1, 47, 0, 1, 'multiple', 0, '20', 0, 121)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (122, 1, 48, 0, 1, 'multiple', 0, '20', 0, 122)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (123, 1, 49, 0, 1, 'multiple', 0, '20', 0, 123)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (124, 1, 50, 0, 3, 'multiple', 0, '20', 0, 124)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (125, 1, 50, 0, 9, 'single', 0, '0', 0, 125)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (126, 1, 50, 0, 10, 'single', 0, '0', 1, 126)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (127, 1, 51, 0, 3, 'multiple', 0, '20', 0, 127)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (128, 1, 51, 0, 9, 'single', 0, '0', 0, 128)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (129, 1, 51, 0, 10, 'single', 0, '0', 1, 129)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (130, 1, 52, 0, 3, 'multiple', 0, '20', 0, 130)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (131, 1, 52, 0, 9, 'single', 0, '0', 0, 131)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (132, 1, 52, 0, 10, 'single', 0, '0', 1, 132)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (133, 1, 53, 0, 3, 'multiple', 0, '20', 0, 133)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (134, 1, 53, 0, 9, 'single', 0, '0', 0, 134)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (135, 1, 53, 0, 10, 'single', 0, '0', 1, 135)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (136, 1, 54, 0, 3, 'multiple', 0, '20', 0, 136)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (137, 1, 54, 0, 9, 'single', 0, '0', 0, 137)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (138, 1, 54, 0, 10, 'single', 0, '0', 1, 138)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (139, 1, 55, 0, 3, 'multiple', 0, '20', 0, 139)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (140, 1, 55, 0, 9, 'single', 0, '0', 0, 140)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (141, 1, 55, 0, 10, 'single', 0, '0', 1, 141)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (142, 1, 56, 0, 3, 'multiple', 0, '20', 0, 142)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (143, 1, 56, 0, 2, 'single', 0, '0', 0, 143)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (144, 1, 56, 0, 4, 'single', 0, '0', 1, 144)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (145, 1, 57, 0, 3, 'multiple', 0, '20', 0, 145)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (146, 1, 57, 0, 2, 'single', 0, '0', 0, 146)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (147, 1, 57, 0, 4, 'single', 0, '0', 1, 147)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (148, 1, 58, 0, 2, 'single', 0, '0', 0, 148)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (149, 1, 58, 0, 3, 'multiple', 0, '20', 0, 149)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (150, 1, 58, 0, 4, 'single', 0, '0', 1, 150)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (151, 1, 59, 0, 3, 'multiple', 0, '20', 0, 151)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (152, 1, 59, 0, 2, 'single', 0, '0', 0, 152)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (153, 1, 59, 0, 4, 'single', 0, '0', 1, 153)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (154, 1, 60, 0, 3, 'multiple', 0, '20', 0, 154)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (155, 1, 60, 0, 2, 'single', 0, '0', 0, 155)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (156, 1, 60, 0, 4, 'single', 0, '0', 1, 156)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (157, 1, 61, 0, 3, 'multiple', 0, '20', 0, 157)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (158, 1, 61, 0, 2, 'single', 0, '0', 0, 158)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (159, 1, 61, 0, 4, 'single', 0, '0', 1, 159)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (160, 1, 62, 0, 2, 'single', 0, '0', 0, 160)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (161, 1, 62, 0, 3, 'multiple', 0, '20', 0, 161)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (162, 1, 62, 0, 4, 'single', 0, '0', 1, 162)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (163, 1, 63, 0, 2, 'single', 0, '0', 0, 163)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (164, 1, 63, 0, 3, 'multiple', 0, '20', 0, 164)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (165, 1, 63, 0, 4, 'single', 0, '0', 1, 165)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (166, 1, 64, 0, 3, 'multiple', 0, '20', 0, 166)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (167, 1, 64, 0, 2, 'single', 0, '0', 0, 167)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (168, 1, 64, 0, 4, 'single', 0, '0', 1, 168)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (169, 1, 65, 0, 3, 'multiple', 0, '20', 0, 169)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (170, 1, 65, 0, 2, 'single', 0, '0', 0, 170)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (171, 1, 65, 0, 4, 'single', 0, '0', 1, 171)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (172, 1, 66, 0, 3, 'multiple', 0, '20', 0, 172)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (173, 1, 66, 0, 2, 'single', 0, '0', 0, 173)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (174, 1, 66, 0, 4, 'single', 0, '0', 1, 174)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (175, 1, 67, 0, 3, 'multiple', 0, '20', 0, 175)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (176, 1, 67, 0, 2, 'single', 0, '0', 0, 176)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (177, 1, 67, 0, 4, 'single', 0, '0', 1, 177)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (178, 1, 68, 0, 3, 'multiple', 0, '20', 0, 178)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (179, 1, 69, 0, 3, 'multiple', 0, '20', 0, 179)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (180, 1, 70, 0, 3, 'multiple', 0, '20', 0, 180)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (181, 1, 71, 0, 3, 'multiple', 0, '20', 0, 181)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (182, 1, 72, 0, 3, 'multiple', 0, '20', 0, 182)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (183, 1, 73, 0, 3, 'multiple', 0, '20', 0, 183)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (184, 1, 74, 0, 3, 'multiple', 0, '20', 0, 184)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (185, 1, 75, 0, 3, 'multiple', 0, '20', 0, 185)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (186, 1, 76, 0, 3, 'multiple', 0, '20', 0, 186)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (187, 1, 77, 0, 3, 'multiple', 0, '20', 0, 187)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (188, 1, 78, 0, 3, 'multiple', 0, '20', 0, 188)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (189, 1, 79, 0, 3, 'multiple', 0, '20', 0, 189)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (190, 1, 80, 0, 3, 'multiple', 0, '20', 0, 190)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (191, 1, 81, 0, 3, 'multiple', 0, '20', 0, 191)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (192, 1, 82, 0, 3, 'multiple', 0, '20', 0, 192)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (193, 1, 83, 0, 3, 'multiple', 0, '20', 0, 193)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (194, 1, 84, 0, 3, 'multiple', 0, '20', 0, 194)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (195, 1, 85, 0, 3, 'multiple', 0, '20', 0, 195)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (196, 1, 86, 0, 3, 'multiple', 0, '20', 0, 196)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (197, 1, 87, 0, 3, 'multiple', 0, '20', 0, 197)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (198, 1, 88, 0, 3, 'multiple', 0, '20', 0, 198)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (199, 1, 89, 0, 3, 'multiple', 0, '20', 0, 199)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (200, 1, 89, 0, 1, 'multiple', 0, '20', 0, 200)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (201, 1, 90, 0, 3, 'multiple', 0, '20', 0, 201)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (202, 1, 90, 0, 1, 'multiple', 0, '20', 0, 202)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (203, 1, 91, 0, 3, 'multiple', 0, '20', 0, 203)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (204, 1, 91, 0, 1, 'multiple', 0, '20', 0, 204)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (205, 1, 92, 0, 3, 'multiple', 0, '20', 0, 205)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (206, 1, 92, 0, 1, 'multiple', 0, '20', 0, 206)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (207, 1, 93, 0, 3, 'multiple', 0, '20', 0, 207)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (208, 1, 93, 0, 5, 'multiple', 0, '20', 0, 208)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (209, 1, 94, 0, 3, 'multiple', 0, '20', 0, 209)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (210, 1, 94, 0, 5, 'multiple', 0, '20', 0, 210)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (211, 1, 95, 0, 3, 'multiple', 0, '20', 0, 211)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (212, 1, 95, 0, 5, 'multiple', 0, '20', 0, 212)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (213, 1, 96, 0, 3, 'multiple', 0, '20', 0, 213)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (214, 1, 96, 0, 5, 'multiple', 0, '20', 0, 214)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (215, 1, 97, 0, 3, 'multiple', 0, '20', 0, 215)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (216, 1, 97, 0, 5, 'multiple', 0, '20', 0, 216)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (217, 1, 98, 0, 3, 'multiple', 0, '20', 0, 217)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (218, 1, 98, 0, 5, 'multiple', 0, '20', 0, 218)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (219, 1, 99, 0, 3, 'multiple', 0, '20', 0, 219)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (220, 1, 99, 0, 5, 'multiple', 0, '20', 0, 220)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (221, 1, 100, 0, 3, 'multiple', 0, '20', 0, 221)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (222, 1, 100, 0, 5, 'multiple', 0, '20', 0, 222)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (223, 1, 101, 0, 3, 'multiple', 0, '20', 0, 223)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (224, 1, 101, 0, 5, 'multiple', 0, '20', 0, 224)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (225, 1, 114, 0, 11, 'single', 0, '0', 0, 225)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (226, 1, 114, 0, 12, 'single', 0, '0', 0, 226)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (227, 1, 115, 0, 13, 'single', 0, '0', 1, 227)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=1;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (228, 1, 115, 0, 12, 'single', 0, '0', 0, 228)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (229, 1, 116, 0, 11, 'single', 0, '0', 0, 229)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (230, 1, 116, 0, 12, 'single', 0, '0', 0, 230)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (231, 1, 117, 0, 11, 'single', 0, '0', 0, 231)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (232, 1, 117, 0, 12, 'single', 0, '0', 0, 232)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (233, 1, 118, 0, 11, 'single', 0, '0', 0, 233)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (234, 1, 118, 0, 12, 'single', 0, '0', 0, 234)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (235, 1, 119, 0, 11, 'single', 0, '0', 0, 235)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (236, 1, 119, 0, 12, 'single', 0, '0', 0, 236)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (237, 1, 120, 0, 11, 'single', 0, '0', 0, 237)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (238, 1, 120, 0, 12, 'single', 0, '0', 0, 238)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (239, 1, 121, 0, 11, 'single', 0, '0', 0, 239)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (240, 1, 122, 0, 11, 'multiple', 0, '20', 0, 240)
ON DUPLICATE KEY UPDATE multi_option='multiple', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (241, 1, 123, 0, 11, 'single', 0, '0', 0, 241)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (242, 1, 127, 0, 14, 'single', 0, '20', 0, 242)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (243, 1, 128, 0, 14, 'single', 0, '0', 0, 243)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (244, 1, 129, 0, 14, 'single', 0, '0', 0, 244)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (245, 1, 130, 0, 14, 'single', 0, '0', 0, 245)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (246, 1, 131, 0, 14, 'single', 0, '0', 0, 246)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, sequence)
VALUES (247, 1, 132, 0, 14, 'single', 0, '20', 0, 247)
ON DUPLICATE KEY UPDATE multi_option='single', require_addon=0;

-- Merchant meta
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (1, 1, 'merchant_currency', 'DKK', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='DKK';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (2, 1, 'merchant_currency_symbol', 'kr', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='kr';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (3, 1, 'merchant_currency_position', 'right', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='right';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (4, 1, 'merchant_decimal_place', '2', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='2';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (5, 1, 'merchant_order_prefix', 'CNC', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='CNC';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (6, 1, 'services', '[\"delivery\",\"pickup\",\"dinein\"]', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='[\"delivery\",\"pickup\",\"dinein\"]';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (7, 1, 'enabled_delivery', '1', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='1';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (8, 1, 'enabled_pickup', '1', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='1';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (9, 1, 'enabled_dinein', '1', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='1';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (10, 1, 'tax_rate', '25', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='25';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (11, 1, 'primary_color', '#9d292b', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='#9d292b';
INSERT INTO st_merchant_meta (meta_id, merchant_id, meta_name, meta_value, meta_value1, meta_value2, date_modified)
VALUES (12, 1, 'secondary_color', '#f17d00', '', '', '2026-04-04 16:22:37')
ON DUPLICATE KEY UPDATE meta_value='#f17d00';

UPDATE st_merchant SET items_added=150 WHERE merchant_id=1;

SET FOREIGN_KEY_CHECKS=1;
COMMIT;