-- ═══════════════════════════════════════════════════════════════
-- CNC custom post-seed SQL (idempotent — applied on every deploy)
-- Survives db-seed.sql re-imports because it runs AFTER the main
-- seed and uses INSERT ... ON DUPLICATE KEY UPDATE / UPDATE.
--
-- Allocate translation IDs in the 5000+ range to stay clear of
-- vendor seeds.
-- ═══════════════════════════════════════════════════════════════

SET NAMES utf8mb4;

-- ─── ADMIN PASSWORD + EMAIL — overrides db-seed.sql defaults ────────
-- Without this, every rebuild of a fresh DB would revert to:
--   admin / admin123 / admin@chickennchicken.dk
-- Hash = MD5('Basharat0036'). Email uses a Gmail +alias so the admin
-- can receive reset emails but the address doesn't collide with the
-- same user's client account (jawa0056@gmail.com on the customer side).
UPDATE st_admin_user
   SET password = '0d6bbea382283bae9f2da8f098353237',
       email_address = 'jawa0056+cncadmin@gmail.com'
 WHERE username = 'admin';

-- ─── ASYNC TASK TRANSPORT — fix forgot-password email delivery ──────
-- The framework's runActions() helper posts to /task/* endpoints to do
-- async work like sending the password-reset email. Without this option,
-- it defaults to touchUrl() using fsockopen — which doesn't do TLS on
-- its own and silently fails behind a Caddy HTTPS proxy in Docker.
-- Switch to fastRequest which uses curl for HTTPS URLs.
DELETE FROM st_option WHERE merchant_id=0 AND option_name='runactions_method';
INSERT INTO st_option (merchant_id, option_name, option_value) VALUES (0, 'runactions_method', 'fastRequest');

-- Disable "runInBackground" mode for task actions. The framework's
-- ERunActions::runBackground() uses fastcgi_finish_request() / output
-- flushing tricks that don't fire reliably under Apache+mod_php inside
-- Docker. With runactions_enabled=0 the task actions execute
-- synchronously inside the incoming /task/* request — slower by a
-- second or two but guaranteed to complete the email send.
DELETE FROM st_option WHERE merchant_id=0 AND option_name='runactions_enabled';
INSERT INTO st_option (merchant_id, option_name, option_value) VALUES (0, 'runactions_enabled', '0');

-- ─── BACKFILL admin_id_token for seeded admin rows ──────────────────
-- db-seed.sql seeds the admin user with admin_id_token=''. The token is
-- only generated on isNewRecord=true (first insert), so existing seeded
-- rows keep an empty token forever. The forgot-password email flow
-- passes this token to /task/adminpassword — with an empty token, the
-- task endpoint can't find the admin and the email never sends.
UPDATE st_admin_user
   SET admin_id_token = SHA1(CONCAT(admin_id, NOW(6), RAND()))
 WHERE admin_id_token = '' OR admin_id_token IS NULL;

-- ─── BACKFILL bag_fee into packaging_fee for legacy orders ──────────
-- Orders placed before the ApiController bag_fee→packaging_fee mapping
-- fix had packaging_fee=0 but total=subtotal+4 (bag was tracked only
-- as a cart condition, not persisted). Rehydrate packaging_fee=4 on
-- those orders so the merchant view + receipt show the bag line.
-- Idempotent: only affects rows where the unaccounted delta is
-- exactly 4.00 (i.e. the silent bag fee with nothing else stored).
UPDATE st_ordernew
   SET packaging_fee = 4.0
 WHERE packaging_fee = 0
   AND (total - sub_total - delivery_fee - packaging_fee - tax_total - courier_tip - card_fee - service_fee - small_order_fee + total_discount) = 4.0;

-- ─── POINT backend_forgot_password_tpl at the correct template ──────
-- Seed defaults it to template 50 ("Complete registration"), which is
-- the wrong email. Template 29 ("Forgot password") is the actual reset
-- email (has both da + en content). Without this fix, the forgot-
-- password flow looks up template 50, template 29 body is never
-- rendered, and CEmailer has nothing to send.
DELETE FROM st_option WHERE merchant_id=0 AND option_name='backend_forgot_password_tpl';
INSERT INTO st_option (merchant_id, option_name, option_value) VALUES (0, 'backend_forgot_password_tpl', '29');

-- ─── BAG FEE — Bæredygtig Bærepose ──────────────────────────────
INSERT INTO st_sourcemessage (id, category, message) VALUES
 (5001, 'front', 'Bæredygtig Bærepose'),
 (5002, 'front', 'Vores genbrugelige papirpose'),
 (5003, 'front', 'Vi pakker din mad i en kraftig pose med Chicken N Chicken-logo, så du nemt kan tage den med.'),
 (5004, 'front', 'Lovpligtigt iht. dansk lovgivning'),
 (5005, 'front', 'I henhold til Plastposeloven (2020) skal alle bæreposer prissættes separat med minimum 4 kr inkl. moms. Beløbet er allerede inkluderet i din ordre og kan ikke fravælges.'),
 (5006, 'front', 'Tryk for info · Lovpligtigt'),
 (5007, 'front', 'Lovpligtig — skal pakkes med')
ON DUPLICATE KEY UPDATE message = VALUES(message), category = VALUES(category);

INSERT INTO st_message (id, language, translation) VALUES
 (5001, 'da', 'Bæredygtig Bærepose'),
 (5001, 'en', 'Sustainable Carrier Bag'),
 (5002, 'da', 'Vores genbrugelige papirpose'),
 (5002, 'en', 'Our reusable paper bag'),
 (5003, 'da', 'Vi pakker din mad i en kraftig pose med Chicken N Chicken-logo, så du nemt kan tage den med.'),
 (5003, 'en', 'We pack your food in a sturdy bag with the Chicken N Chicken logo so you can easily carry it home.'),
 (5004, 'da', 'Lovpligtigt iht. dansk lovgivning'),
 (5004, 'en', 'Required by Danish law'),
 (5005, 'da', 'I henhold til Plastposeloven (2020) skal alle bæreposer prissættes separat med minimum 4 kr inkl. moms. Beløbet er allerede inkluderet i din ordre og kan ikke fravælges.'),
 (5005, 'en', 'Under the Danish Bag Law (Plastposeloven, 2020), every carrier bag must be priced separately at a minimum of 4 DKK incl. VAT. The amount is already included in your order and cannot be removed.'),
 (5006, 'da', 'Tryk for info · Lovpligtigt'),
 (5006, 'en', 'Tap for info · Required'),
 (5007, 'da', 'Lovpligtig — skal pakkes med'),
 (5007, 'en', 'Required — must be packed with order')
ON DUPLICATE KEY UPDATE translation = VALUES(translation);
