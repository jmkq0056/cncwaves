-- ═══════════════════════════════════════════════════════════════
-- CNC custom translations (idempotent — applied on every deploy)
-- Survives db-seed.sql re-imports because it runs AFTER the main
-- seed and uses INSERT ... ON DUPLICATE KEY UPDATE.
--
-- Allocate IDs in the 5000+ range to stay clear of vendor seeds.
-- ═══════════════════════════════════════════════════════════════

SET NAMES utf8mb4;

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
