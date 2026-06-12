# Local prod-mirror dev environment

A bit-for-bit copy of the prod Karenderia stack, running on `http://localhost:8080`. Use this to develop new features (e.g., the "new-order bell ring") without touching production. The whole directory is gitignored — recreate it from prod whenever you need a fresh snapshot.

## What's in here

```
rsync/
├── install/                       ← Karenderia code + assets + uploads (319 MB, from prod)
├── Dockerfile                     ← same as prod
├── docker-entrypoint.sh           ← same as prod (patches k-config.php from env vars)
├── cncwaves-tuning.conf           ← Apache MaxConnectionsPerChild 200
├── db-seed.sql                    ← Karenderia install seed
├── create_views.sql               ← Yii views
├── cnc-translations.sql           ← CNC custom translations
├── karenderia-prod-dump.sql       ← FRESH prod DB dump (1.4 MB, ~178 tables)
├── local-fixups.sql               ← Runs after dump load: wipes Stripe + Resend secrets
├── docker-compose.local.yml       ← local-only stack (port 8080, no TLS)
├── Caddyfile.local                ← local-only Caddy
├── .env.local                     ← placeholder for Stripe TEST keys
└── README.md                      ← this file
```

## Quick start

```bash
cd /Users/jmkq/Documents/GitHub/cncwaves/cnc-restaurent-system/rsync
docker compose -f docker-compose.local.yml up -d
# wait ~15 seconds, then:
open http://localhost:8080
```

The site should render exactly like chickenwaves.dk does in prod. **No real Stripe key is configured** — payment flows will show a 'not configured' error until you do step 4 below.

## Daily commands

```bash
# Start / stop without losing data
docker compose -f docker-compose.local.yml up -d
docker compose -f docker-compose.local.yml stop

# Tail logs
docker compose -f docker-compose.local.yml logs -f web
docker compose -f docker-compose.local.yml logs -f db

# Shell into web container (where Karenderia PHP lives)
docker compose -f docker-compose.local.yml exec web bash

# MySQL shell
docker compose -f docker-compose.local.yml exec db mariadb -u karenderia -plocaldev karenderia
```

## Reset to a fresh prod snapshot

```bash
# 1) Stop + nuke the local DB volume (you lose any local-only test data)
docker compose -f docker-compose.local.yml down -v

# 2) Re-dump prod (overwrites karenderia-prod-dump.sql)
ssh -i ~/.ssh/hetzner root@65.108.151.129 \
  "PASS=\$(grep DB_PASSWORD /etc/cncwaves-backup.env | cut -d\"'\" -f2); \
   docker exec cnc-restaurent-system-db-1 mysqldump --single-transaction --quick \
     --routines --triggers --events --default-character-set=utf8mb4 \
     -u karenderia -p\"\$PASS\" karenderia" \
  > karenderia-prod-dump.sql

# 3) Re-rsync the install/ dir (picks up any prod-side file edits)
rsync -avz --partial \
  --exclude='protected/runtime/cache/*' \
  --exclude='protected/runtime/views/*' \
  --exclude='backoffice/protected/runtime/cache/*' \
  --exclude='backoffice/protected/runtime/views/*' \
  --exclude='backoffice/twig/compilation_cache/*' \
  -e "ssh -i ~/.ssh/hetzner" \
  root@65.108.151.129:/opt/cncwaves/cnc-restaurent-system/codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/install/ \
  ./install/

# 4) Bring it back up
docker compose -f docker-compose.local.yml up -d
```

## Step 4: Wire up Stripe TEST keys (for testing checkout flow locally)

In the Stripe dashboard, toggle to **Test mode** (top-right). Grab the test keys (Developers → API keys):

- `sk_test_...`
- `pk_test_...`

Add a test webhook endpoint (Developers → Webhooks → "Add endpoint", URL `http://localhost:8080/stripe/apiv2/webhooksplans`, events `checkout.session.completed, invoice.paid, invoice.payment_failed, customer.subscription.deleted, subscription_schedule.canceled`) and copy the signing secret `whsec_...`.

Paste into `.env.local`:
```
STRIPE_TEST_SECRET_KEY=sk_test_...
STRIPE_TEST_PUBLISHABLE_KEY=pk_test_...
STRIPE_TEST_WEBHOOK_SECRET=whsec_...
```

Apply to the local DB:
```bash
source .env.local
docker compose -f docker-compose.local.yml exec db \
  mariadb -u karenderia -plocaldev karenderia -e \
  "UPDATE st_payment_gateway
      SET attr1='${STRIPE_TEST_SECRET_KEY}',
          attr2='${STRIPE_TEST_PUBLISHABLE_KEY}',
          attr3='${STRIPE_TEST_WEBHOOK_SECRET}',
          is_live=0
    WHERE payment_code='stripe';"
docker compose -f docker-compose.local.yml exec web \
  php -r 'opcache_reset();'
```

`is_live=0` tells Karenderia to treat this as test mode. Now you can place test orders using Stripe test card `4242 4242 4242 4242` (any future expiry, any CVC, any postal).

## Test cards reference

- `4242 4242 4242 4242` — success
- `4000 0000 0000 9995` — declined (insufficient funds)
- `4000 0025 0000 3155` — requires 3DS authentication
- More: https://stripe.com/docs/testing

## Forwarding Stripe webhook events to localhost

For Stripe to reach `http://localhost:8080/stripe/apiv2/webhooksplans` over the internet, install Stripe CLI and run:

```bash
brew install stripe/stripe-cli/stripe
stripe login
stripe listen --forward-to http://localhost:8080/stripe/apiv2/webhooksplans
```

The CLI prints a `whsec_...` signing secret in its output — use **that** as `STRIPE_TEST_WEBHOOK_SECRET`, not the dashboard one (the CLI generates per-session secrets).

## Things to know

- **The Karenderia code is bind-mounted from `./install/`** — editing PHP files locally takes effect immediately. No rebuild needed. Run `docker compose ... exec web php -r 'opcache_reset();'` to clear PHP opcache between edits.
- **Local DB persists across `up`/`down`**. To reset to fresh prod, use `down -v` (note the `-v`).
- **No real email goes out** — `st_email_provider` default flipped to `phpmail` (no-op without SMTP configured).
- **No real Stripe charges** — until you put test keys in, payment routes fail with 'not configured'. With test keys + `is_live=0`, real money cannot move.
- **The `_local_dev_marker` table** is added by `local-fixups.sql` so future-you can tell at a glance this is a dev DB, not prod.
- **Memory cap on web container: 800 MB** (vs 1.5 GB on prod). If Karenderia OOMs locally during heavy testing, raise it in `docker-compose.local.yml`.

## Verifying you're on the local stack, not prod

```bash
docker compose -f docker-compose.local.yml exec db \
  mariadb -u karenderia -plocaldev karenderia -e \
  "SELECT * FROM _local_dev_marker;"
```

If it returns a row, you're on local. If it errors with `Table doesn't exist` — **stop**, you're on prod by accident.

## Bell-ring on new order — the actual feature

The plan (next iteration):
1. Add audio file to `install/themes/karenderia_v2/assets/sound/new-order.mp3`
2. Patch the backoffice merchant-orders page JS to:
   - Poll the orders API every N seconds
   - When new order count > previous, play the audio
   - Show a visual flash
3. Test locally by placing a test Stripe order — verify bell rings on admin page
4. Once happy, scp the changed files to prod's bind-mounted install/

This README + the local stack make all of that safe — no chance of breaking prod while iterating.
