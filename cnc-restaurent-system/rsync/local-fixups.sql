-- Runs ONCE after the prod dump loads (on fresh db_data_local volume).
-- Strips production secrets so the local stack cannot accidentally call
-- live Stripe or live Resend even if env vars are set wrong.

USE karenderia;

-- ── Stripe: clear LIVE keys; user pastes TEST keys via UPDATE later ─────────
UPDATE st_payment_gateway
   SET attr1 = '',
       attr2 = '',
       attr3 = ''
 WHERE payment_code = 'stripe';

-- ── Resend: blank the API key so the local stack can't send real email ─────
UPDATE st_email_provider
   SET api_key = ''
 WHERE provider_id = 'resend';

-- ── Set email provider to phpmail (no-op for local) just to be extra safe ──
UPDATE st_email_provider SET as_default = 0;
UPDATE st_email_provider SET as_default = 1 WHERE provider_id = 'phpmail';

-- ── Marker row so future-me can see the local-fixups ran ───────────────────
CREATE TABLE IF NOT EXISTS _local_dev_marker (
    note VARCHAR(255),
    applied_at DATETIME DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO _local_dev_marker (note) VALUES
    ('Local dev DB. Stripe + Resend keys wiped. Apply test creds via README step 4.');
