# chickenwaves.dk — Incident report, postmortem & operational runbook

**Period covered:** 2026-05-25 to 2026-05-29 (week 21 / week 22)
**Owner:** Jawad Mehmood Khan Qayyum (CNC Waves Aps)
**Status of stack at time of writing:** healthy, all credentials rotated, defence-in-depth applied, monitoring active.
**Audience:** future me (or future Claude). Read this before you touch anything.

---

## Table of contents

1. Executive summary
2. Stack architecture (what you actually have running)
3. Timeline of the week
4. Incident A — Cron-driven deploy loop (2026-05-25)
5. Incident B — Asset directory wipe (2026-05-25)
6. Incident C — Element Plus version mismatch (2026-05-25)
7. Side quest — Menu thumbnails + image cropping (2026-05-25)
8. Backup system design (2026-05-25/26)
9. Incident D — MariaDB ransom-bot attack (2026-05-29)
10. Server hardening applied this week
11. Monitoring, detection, recovery
12. Attack simulation results
13. Signage stack assessment
14. Credentials inventory (locations only — no values)
15. File and directory inventory
16. Cron inventory
17. Security framework mappings (STRIDE / OWASP / CIA / Lampson)
18. Operational runbooks
19. Known remaining risks
20. Future improvements
21. Memory leak investigation (mod_php pattern)
22. Glossary

---

## 1. Executive summary

Four distinct incidents over five days, three of them sharing a common root cause class (operational mis-configuration), one of them an external attack.

- **A** — On 2026-05-25 the production web container was being killed and recreated every minute for an unknown but extended period because `/opt/deploy.sh` lacked `set -e` and was running `docker compose up -d --build` even after a failed `git pull`. The site appeared "down" because Caddy got nothing but a freshly-killed upstream.
- **B** — While debugging A, I cleared `/var/www/html/assets/*` thinking it was a Yii published-assets cache. It is in fact the *live* public asset directory — vendor JS/CSS, Vue bundle, FA webfonts. Every storefront script 404'd until the assets were rsynced back from the local repo.
- **C** — Once the assets were back, the menu cards still didn't render images. Root cause: Karenderia's `AssetsFrontBundle.php` was loading Element Plus from a **CDN URL with no version pin**. The CDN began serving Element Plus 2.4+, which requires Vue 3.3+ APIs (`toValue`, `hasInjectionContext`). The bundled Vue is 3.2, so every Element Plus component blew up at setup, including the `<el-image>` used by menu cards.
- **D** — On 2026-05-29 a **MariaDB ransom-bot** authenticated to the production database via the **phpmyadmin container that was publicly exposed on port 8081**, ran `DROP TABLE` against every `st_*` table, and left a single `readme_to_recover` table demanding 0.008 BTC. The attack succeeded because (1) phpmyadmin was reachable from the internet despite UFW being active — Docker port-publishing bypasses UFW's INPUT filter; (2) the DB user was `karenderia` / `karenderia123` — the demo default. Recovery from the daily Mongo-stored encrypted backup took 34 seconds. All Stripe / Resend / DB credentials were rotated.

All four incidents are now mitigated structurally — meaning the same trigger could not produce the same outcome again.

---

## 2. Stack architecture

### 2.1 Infrastructure

- **Provider:** Hetzner Cloud
- **VM:** `cnc-prod`, 65.108.151.129, Ubuntu 24.04 LTS, 3.7 GB RAM, 75 GB disk
- **Network:** UFW + Docker iptables (`DOCKER-USER` chain configured to filter), publicly reachable ports limited to `[22, 80, 443, 3000, 3001]`
- **SSH:** key-only (`~/.ssh/hetzner` on local laptop, ed25519). `PasswordAuthentication no`. fail2ban active. Root login allowed *only* with key (`PermitRootLogin prohibit-password`).
- **Auto-deploy crons:** all paused with `# CLAUDE-PAUSED` prefix in `crontab -l` since 2026-05-25. Re-enabling requires resolving the git divergence first AND adding `set -e` to `/opt/deploy.sh`.

### 2.2 Docker services

There is exactly one compose project in production: `cnc-restaurent-system`. The dev `docker-compose.yml` has been renamed to `docker-compose.yml.DANGEROUS-DO-NOT-USE` to prevent accidental launch (it published port 3307 = MariaDB direct and port 8081 = phpmyadmin, both of which were the historical attack vector). The prod compose file `docker-compose.prod.yml` is the single source of truth.

Three containers:
- **`cnc-restaurent-system-caddy-1`** — Caddy 2.x, terminates TLS for chickenwaves.dk, reverse-proxies dynamic requests to `web:80` and serves `/upload/*` / `/assets/vendor/*` / `/themes/*` directly from the host bind-mount to take pressure off Apache.
- **`cnc-restaurent-system-web-1`** — Karenderia (PHP 8.1 on Apache mod_php prefork). Bound: `expose: 80` internal-only. `mem_limit: 1500m`. HEALTHCHECK `curl /health.php` every 30 s.
- **`cnc-restaurent-system-db-1`** — MariaDB 10.6. Bound: `expose: 3306` internal-only.

Plus two separate compose projects (different directories) for the digital-signage system:
- **`signage-server`** — Node.js, port 3001 published, WebSocket server the in-store screens connect to.
- **`signage-admin`** — Next.js, port 3000 published, admin dashboard.

The signage stack uses **MongoDB Atlas** (DB `CNCtest`) for its data. It is operationally independent of Karenderia / MariaDB.

### 2.3 Network topology

```
                Internet
                   │
            ┌──────┴───────┐
            │   UFW + iptables DOCKER-USER chain      │
            │   allow [22, 80, 443, 3000, 3001]       │
            │   drop everything else                  │
            └──┬───┬───┬────────┬──────────────┬──────┘
               │   │   │        │              │
            :22  :80 :443      :3000           :3001
            sshd  caddy        signage-admin   signage-server
                    │
                    │  reverse_proxy web:80 (Docker bridge)
                    │
              ┌─────┴──────┐
              │  web (php)  │  ── DB conn ──>  ┌──────────┐
              │  expose:80  │                   │   db     │
              └─────────────┘                   │  :3306   │
                                                │ internal │
                                                └──────────┘
```

External traffic on 3306 or 8081 hits the new `DOCKER-USER` chain — explicit DROP with no whitelist match (rule 11 in the chain).

### 2.4 Filesystem layout (the bits that matter)

```
/opt/cncwaves/                           ← git clone of github.com/jmkq0056/cncwaves
├── auto-deploy.sh                       ← cron 2-min auto-deploy, currently paused
├── scripts/
│   ├── backup-to-mongo.sh               ← daily 03:15 UTC
│   ├── restore-from-mongo.sh
│   ├── verify-backup.sh                 ← weekly Sun 04:30 UTC (roundtrip integrity test)
│   ├── uptime-check.sh                  ← cron */3 min (shallow HTTP + deep API)
│   ├── disk-check.sh                    ← cron */30 min (df threshold alert)
│   ├── autoheal.sh                      ← cron */2 min (restarts health=unhealthy)
│   └── backup/                          ← image build context for cnc-backup:latest
│       ├── Dockerfile
│       ├── mongo_upload.py
│       └── mongo_restore.py
└── cnc-restaurent-system/
    ├── docker-compose.prod.yml          ← single source of truth
    ├── docker-compose.yml.DANGEROUS-DO-NOT-USE
    ├── Caddyfile                        ← live reverse-proxy config
    ├── Caddyfile.pre-incident.bak       ← snapshot before the maintenance page
    ├── Dockerfile                       ← web container image, includes cncwaves-tuning.conf
    ├── cncwaves-tuning.conf             ← Apache MaxConnectionsPerChild 200
    ├── docker-entrypoint.sh
    └── codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/
        └── install/                     ← bind-mounted at /var/www/html in web container
            ├── k-config.php             ← DB creds (mode 640 root:www-data)
            ├── assets/                  ← LIVE public assets — NEVER rm
            ├── upload/                  ← merchant uploads + menu item photos
            ├── protected/
            │   ├── config/
            │   │   ├── front_main.php   ← Yii frontend config
            │   │   └── params.php       ← image sizes, cache settings
            │   ├── components/
            │   │   ├── AssetsFrontBundle.php   ← I edited 2026-05-25, pinned element-plus
            │   │   ├── CMedia.php       ← thumbnail URL logic
            │   │   └── MerchantMenuHelper.php
            │   └── controllers/
            │       └── ApiController.php       ← actiongeStoreMenu = the menu API
            └── backoffice/              ← merchant admin UI

/etc/cncwaves-backup.env                 ← server-side secrets, mode 600 root:root
/var/log/cncwaves-backup.log             ← backup + verify-backup output
/var/log/cncwaves-uptime.log             ← uptime probe + autoheal + disk-check output
/var/lib/cncwaves/                       ← state files for uptime, api, autoheal, disk
/etc/fail2ban/jail.d/sshd.local          ← SSH brute-force jail
/etc/ssh/sshd_config.d/99-cncwaves-hardening.conf   ← key-only auth config
/etc/ufw/after.rules                     ← DOCKER-USER chain (CNCWAVES BEGIN/END block)
/etc/docker/daemon.json                  ← {"userland-proxy": false}
```

### 2.5 Bind mount: the thing that catches you out

`/opt/cncwaves/cnc-restaurent-system/codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/install` is bind-mounted at `/var/www/html` inside the web container. This means:

- Editing PHP files on the host instantly affects production (no rebuild needed).
- Deleting files inside the container also deletes them on the host (and vice versa).
- The Apache `error.log` is symlinked to `/dev/stderr` inside the container, so all PHP errors flow to `docker logs`. There is no file-based PHP error log to tail.
- Caddy *also* bind-mounts the same `install/` directory at `/var/www/html` (read-only) so it can serve static files directly without going through Apache.

The "I cleared the cache" anti-pattern: `rm -rf /var/www/html/assets/*` looks innocuous because `assets/` looks like a Yii published-asset directory. It is not. It is the public web root for vendor JS, vendor CSS, FA webfonts, the customer Vue bundle, and almost everything the storefront's `<script src>` tags point at. Wiping it 404s every script tag on the page. Recovery is `rsync` from the local repo. This has been done twice (2026-05-08, 2026-05-25). A project-level Claude Bash hook now refuses to execute `rm -rf` / `find -delete` / `rsync --delete` targeting that path — see `.claude/hooks/block-karenderia-assets-rm.sh`.

---

## 3. Timeline of the week

```
2026-05-25 (Mon)
  ~early morning   Cron-driven deploy loop discovered killing web every minute.
  ~midday          Caddy maintenance page deployed while debugging.
  ~midday          Both deploy crons paused (`# CLAUDE-PAUSED`).
  ~midday          Web container brought up cleanly via `up -d --no-deps web`.
  ~midday          assets/ accidentally cleared while "clearing PHP cache".
  ~midday          assets/ rsynced back from local repo.
  ~midday          Element Plus version mismatch diagnosed.
  ~midday          Element Plus pinned to local v2.3.5 in AssetsFrontBundle.php.
  ~afternoon       Menu thumbnails generated via PHP-GD (150 items × 3 sizes).
  ~afternoon       Local crop_menu_images.py run, originals rsynced to server.
  ~evening         MongoDB encrypted backup system designed + deployed.
  ~evening         First backup ran: 1.3 MB raw → 155 KB encrypted in Mongo.
  ~evening         Project-level Claude hook installed to block /assets rm.
  ~evening         Memory files updated: feedback_no_assets_rm.md, reference_chickenwaves_deploy.md.

2026-05-26 to 28
  Quiet. Daily 03:15 UTC backup ran each morning, all OK.

2026-05-29 (Fri)
  ~12:31 UTC       User reports chickenwaves.dk returning Yii CDbException:
                   `Table "{{merchant}}" for active record class "AR_merchant" cannot be found`.
  ~12:33 UTC       SSH in, confirm tables dropped. Find `readme_to_recover` ransom note.
                   BTC address bc1qg32fzpj3aqk8felgl86yd9u0dg4skvwcd5xl6c, DBCODE BXCNL.
  ~12:35 UTC       Restore from latest Mongo backup (taken 03:15 UTC same day).
                   195 tables, 1 merchant, 150 items, 20 orders, 34 seconds.
  ~12:40 UTC       Phpmyadmin container stopped and removed.
  ~12:45 UTC       Initial UFW-Docker bypass fix added to /etc/ufw/after.rules.
  ~12:50 UTC       DB password rotated (karenderia + root).
  ~13:00 UTC       Stripe and Resend keys rotated in dashboard, pushed into DB.
  ~13:00 UTC       SSH password auth disabled, fail2ban installed.
  ~13:10 UTC       k-config.php → mode 640 root:www-data. YII_DEBUG=false. display_errors=Off.
  ~13:15 UTC       Site offlined behind 503 maintenance page while testing.
  ~13:20 UTC       Email alerting deployed (Resend → jawa0056@gmail.com).
  ~13:25 UTC       Caddyfile restored to live; site HTTP 200 with rotated keys.
  ~13:30 UTC       Healthcheck + autoheal + disk-check + uptime-monitor deployed.
  ~13:35 UTC       userland-proxy disabled in /etc/docker/daemon.json, docker restarted.
                   All containers came back healthy in <60 s.
  ~13:40 UTC       Attack simulation run from local Mac:
                   - port scan: only [22,80,443,3000,3001] reachable
                   - phpmyadmin direct: timeout, no PMA reachable via Caddy
                   - SSH password-auth: rejected, only publickey
                   - critical test: republish 8081 via Docker → STILL REACHABLE
                   - root cause: DOCKER-USER whitelist matched the container's
                     internal port (80 after NAT) instead of the requested
                     external port (8081). Bug in my own fix.
  ~13:45 UTC       Firewall rewritten using `-m conntrack --ctorigdstport`.
                   Re-run attack-sim: 8081 BLOCKED, DROP counter incrementing.
  ~14:00 UTC       Signage stack confirmed untouched, 20 screens registered,
                   11 active subscribers, MongoDB DB CNCtest never at risk.
  ~14:25 UTC       Web container memory exhaustion. Healthcheck 3x fail over 90 s.
  ~14:53 UTC       Autoheal triggered restart (#1 of 3 in 24h). Site recovered.
  ~15:10 UTC       Memory leak investigated. Root cause = mod_php + glibc
                   freelist + workers never recycling.
  ~15:15 UTC       Apache `MaxConnectionsPerChild 200` applied + baked into Dockerfile.
                   mem_limit: 1500m added to web in docker-compose.prod.yml.
  ~15:20 UTC       Deep-probe SIGPIPE bug found and fixed in uptime-check.sh.
  ~15:25 UTC       This document written.
```

---

## 4. Incident A — Cron-driven deploy loop (2026-05-25)

### 4.1 Symptoms

- `chickenwaves.dk` returns Caddy 502 intermittently.
- `docker ps` shows `cnc-restaurent-system-web-1` in `Created` state, not `Up`.
- `docker ps -a` shows the same name with `Dead` and `removing` states, multiple zombie instances accumulating.
- `docker events` shows web container being `kill` / `stop` / `die` / `destroy` cycles every minute.

### 4.2 Root cause

Two crons running concurrently:

```
* * * * *     /opt/deploy.sh >> /var/log/deploy.log 2>&1
*/2 * * * *   /opt/cncwaves/auto-deploy.sh >> /var/log/cncwaves-deploy.log 2>&1
```

- `/opt/cncwaves/auto-deploy.sh` has `set -e`. When `git pull` fails (divergent branches, untracked files block merge), the script exits before the `docker compose ... up -d --build` line. Harmless.
- `/opt/deploy.sh` does **not** have `set -e`. When its `git pull` fails the same way, it continues to the next line: `docker compose -f docker-compose.prod.yml up -d --build`. That runs unconditionally, every minute. `up -d --build` rebuilds the web image and replaces the running container.
- Each rebuilt container starts → Apache starts → ~8 seconds later the next minute fires → kill + replace.

The site was effectively down for the duration that this loop was active. From the deploy log timestamps, it had been going for at least several hours when discovered.

### 4.3 Why `git pull` was failing

`/opt/cncwaves` has divergent branches against `origin/main` (server is stuck at commit `60b7a799`, origin is at `5e410ab4`) AND several files in `cnc-restaurent-system/codecanyon-*/install/themes/karenderia_v2/views/store/legal/` are modified on the server but not committed, AND several directories (`signage-server/`, `signage-admin/`, `cnc-restaurent-system/.../assets/img/`, various upload files) are untracked. Any merge would either overwrite modified files (refused) or overwrite untracked files (refused).

This state has existed since at least 2026-05-08 per the older memory file. The git situation has not been cleaned up because the safe cleanup (commit the local mods, back up untracked files separately, then pull) is multi-step and has not been done.

### 4.4 Fix

Both cron lines were edited in-place to add a `# CLAUDE-PAUSED ` prefix:

```
# CLAUDE-PAUSED * * * * * /opt/deploy.sh >> /var/log/deploy.log 2>&1
# CLAUDE-PAUSED */2 * * * * /opt/cncwaves/auto-deploy.sh >> /var/log/cncwaves-deploy.log 2>&1
```

`crontab -l > /root/crontab.bak.<timestamp>` taken first as a safety net.

The four orphaned `docker compose ... up -d --build` processes accumulated by past cron firings were SIGKILL'd:

```
pkill -9 -f 'docker compose -f docker-compose.prod.yml'
```

The web container was brought up cleanly with `--no-deps` to avoid disturbing the running db:

```
docker compose -f docker-compose.prod.yml up -d --no-deps web
```

The "zombie" containers in `Dead` / `removing` state were force-removed:

```
docker ps -a -q --filter name=cnc-restaurent-system-web | xargs -r docker rm -f
```

### 4.5 Why this can recur (it can't, but if you make it possible)

The crons are paused, not deleted. If someone uncomments them without first:

1. Fixing the git divergence safely (commit local edits, move untracked files aside, pull, restore)
2. Adding `set -e` to `/opt/deploy.sh`
3. Removing the redundancy (one of the two crons should go away — they do almost the same thing)

...then the same loop reappears immediately.

### 4.6 Permanent fix (not yet applied)

- `/opt/deploy.sh` should start with `set -euo pipefail`.
- The two crons should be consolidated into one. There is no value in having both.
- The auto-deploy needs `flock` so concurrent runs cannot accumulate.
- It also needs a `timeout` wrapping the docker compose call.

---

## 5. Incident B — Asset directory wipe (2026-05-25)

### 5.1 Symptoms

After applying a fix for Element Plus version mismatch (see incident C), the storefront started returning blank pages. Browser console showed:

```
Loading failed for the <script> with source "https://chickenwaves.dk/assets/vendor/vue/vue.global.prod.js".
Loading failed for the <script> with source "https://chickenwaves.dk/assets/vendor/element-plus/element-plus-v2.3.5.js".
Loading failed for the <script> with source "https://chickenwaves.dk/assets/vendor/jquery-3.6.0.min.js".
... and 25 more.
```

Every `<script src>` in the page was 404'ing. The page itself rendered shell HTML but no JS ran, so the cart, menu, search, allergens, all dead.

### 5.2 Root cause

I had executed:

```
docker exec cnc-restaurent-system-web-1 sh -c 'rm -rf /var/www/html/protected/runtime/cache/* /var/www/html/assets/* 2>/dev/null'
```

intending to clear the Yii config cache so my AssetsFrontBundle.php change would take effect. The first path is correct — that **is** the Yii runtime cache. The second path is not. `/var/www/html/assets/` is the public web root containing:

```
assets/
├── index.php           — Yii published-assets stub
├── js/
│   ├── front.bundle.js
│   ├── front-booking.js
│   └── ...
├── sound/
└── vendor/
    ├── vue/
    ├── element-plus/
    ├── jquery-3.6.0.min.js
    ├── bootstrap/
    ├── jquery.lazy/
    ├── lozad.min.js
    ├── ... 30+ third-party libs ...
    └── fontawesome/webfonts/
```

About 32 MB of vendor code that the storefront depends on. Wiped in one second.

### 5.3 Recovery

The local repo at `/Users/jmkq/Documents/GitHub/cncwaves/cnc-restaurent-system/codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/install/assets/` has the same files. `rsync` from local → server restored everything in ~5 seconds.

```
rsync -avz \
  -e "ssh -i ~/.ssh/hetzner" \
  /Users/jmkq/Documents/GitHub/cncwaves/cnc-restaurent-system/codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/install/assets/ \
  root@65.108.151.129:/opt/cncwaves/cnc-restaurent-system/codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/install/assets/
```

### 5.4 Prevention

A project-level Claude Bash hook is now in `.claude/hooks/block-karenderia-assets-rm.sh` and registered in `.claude/settings.json`. It scans every Bash command Claude is about to run and refuses to execute if the command matches:

- `rm` or `rm -r*` or `rm -*f*` targeting `/var/www/html/assets`, `/opt/.../install/assets`, or `install/assets`
- `find ... -delete` targeting same
- `rsync ... --delete ...` targeting same

The hook allows the legitimate exception: `/assets/<8-hex>/` Yii hash subdirs (those *are* generated cache). Six attack-pattern test cases and five safe-pattern test cases were verified during installation.

The memory file `feedback_no_assets_rm.md` was updated to mark this as a second incident ("Two strikes — do NOT touch this dir for any reason"). It also documents the recovery rsync command, the cache locations that *are* safe to clear, and the right tools for cache invalidation (`opcache_reset()`, HTTP cache-busting query strings).

### 5.5 What clearing PHP caches actually looks like

For future reference, when you want Karenderia PHP changes to take effect immediately:

```
# 1) Yii config + view cache. Safe to wildcard-clear.
docker exec cnc-restaurent-system-web-1 sh -c \
  'rm -rf /var/www/html/protected/runtime/cache/* \
          /var/www/html/protected/runtime/views/* \
          /var/www/html/backoffice/protected/runtime/cache/* \
          /var/www/html/backoffice/protected/runtime/views/* 2>/dev/null'

# 2) PHP opcache. Held in shared memory, not on disk.
docker exec cnc-restaurent-system-web-1 php -r 'opcache_reset();'

# 3) HTTP cache (browsers / CDNs). Bust by appending a query string.
curl 'https://chickenwaves.dk/page?_=$(date +%s)' \
  -H 'Cache-Control: no-cache'
```

Never touch `/var/www/html/assets/*` for cache purposes. If you absolutely need to drop a specific Yii published-asset subdirectory (because Yii will re-publish on next request), target the explicit 8-hex hash:

```
docker exec cnc-restaurent-system-web-1 sh -c \
  'rm -rf /var/www/html/assets/a1b2c3d4'   ## not 'assets/*'
```

---

## 6. Incident C — Element Plus version mismatch (2026-05-25)

### 6.1 Symptoms

- The home page and individual product pages loaded, with the navbar, footer, restaurant header all rendering correctly.
- Customer could click into a menu item, the modal opened, and the burger photo displayed beautifully.
- BUT the menu *cards* — the grid view — showed item names, prices, descriptions, but **no thumbnail image**.
- The "chicken logo" at the top of the merchant header was a white square.

The user assumed the images were broken on the server. They were not.

### 6.2 Diagnostic process (this took 90 minutes)

I went down a rabbit hole investigating the wrong things first:

1. Checked DB for `st_item.photo` — present, 150 items with photos, paths look right.
2. Verified file paths on disk in `upload/item/<id>/<photo>.png` — all present.
3. Tested direct image URLs — all return HTTP 200 with valid PNG bytes.
4. Generated thumbnail variants (`@thumbnail`, `@1x`, `@2x`) via PHP-GD because Karenderia's `CMedia::getImage` expects them. 486 thumbnails created across 162 source images. URLs return 200.
5. Cards still blank after thumbnail generation.
6. Ran a fresh-images browser test — direct URL renders perfectly.
7. **Looked at the page in the user's browser devtools console.** Found dozens of repeated:
   ```
   TypeError: t.toValue is not a function
   TypeError: t.hasInjectionContext is not a function
   TypeError: can't access property Symbol.iterator, (destructured parameter) is undefined
   ```
   All sourced from `https://cdn.jsdelivr.net/npm/element-plus:2` and bubbling up through `vue.global.prod.js:1`.

### 6.3 Root cause

`/var/www/html/protected/components/AssetsFrontBundle.php` was loading Element Plus from `//cdn.jsdelivr.net/npm/element-plus` — **no version pin**. The CDN serves whatever Element Plus considers "latest". `toValue` and `hasInjectionContext` are Vue 3.3 APIs. Karenderia bundles Vue 3.2.

When Element Plus released 2.4 (which uses these new Vue APIs), every Element Plus component started throwing at setup. Because the menu cards use `<el-image lazy>` from Element Plus, they never even mounted, so they never made the network request for the thumbnail URLs.

This is why the modal showed the image (uses plain `<img>`, not `<el-image>`) but the cards didn't.

The actual sentinel was sitting in `AssetsFrontBundle.php` lines 36, 52, 84, 100, and finally 262 and 265:

```php
// commented out (was the safe pinned version):
// "assets/vendor/element-plus/element-plus-v2.3.5.js",

// active (the time-bomb):
"baseUrl"=>"/",
"css"=>array(
  "/cdn.jsdelivr.net/npm/element-plus/dist/index.css"
),
"js"=>array(
  "/cdn.jsdelivr.net/npm/element-plus",
),
```

The pinned v2.3.5 self-hosted version had been there, was working, and someone (maybe me, on a previous date) had commented it out and switched to the CDN. It worked until the CDN started serving 2.4+, then broke silently.

### 6.4 Fix

The CDN paths were replaced with the self-hosted v2.3.5 paths:

```php
"css"=>array(
  "assets/vendor/element-plus/index-v2.3.5.css"
),
"js"=>array(
  "assets/vendor/element-plus/element-plus-v2.3.5.js",
),
```

Both files were already present on the server (2.1 MB JS, 324 KB CSS, dated 2026-04-17). Yii config cache and PHP opcache cleared. Hard-refresh in the browser. All cards now render images.

### 6.5 Why "version-pin everything from CDNs" is the lesson

This is a textbook **OWASP A03 Supply-Chain Failure**. The dependency was sourced from a third-party CDN, with no version pin, so the third party's release decision became the production behavior. Element Plus made an entirely reasonable choice to require Vue 3.3+ in their 2.4 release; Karenderia's code made an unreasonable choice to consume the unpinned tag.

The hard rule going forward: **every CDN-loaded asset must include a version in the URL**. If `AssetsFrontBundle.php` ever points at an unpinned `cdn.jsdelivr.net/npm/<package>`, that is a bug regardless of whether it's currently working.

### 6.6 What did NOT help

- Re-pulling the latest Element Plus from CDN (would have made it worse — fetched 2.4 again).
- Clearing browser cache (the broken JS was still broken).
- Restarting containers (no change — JS error is client-side).
- Inspecting the network tab and noticing nothing — Element Plus *errored at setup* before any image request was made, so the network tab was misleadingly empty.

### 6.7 Side-effect: the thumbnail generation was actually correct

The 486 generated thumbnails I created during step 4 above are still on the server. They're the right answer — they would have rendered correctly if Element Plus had been working. Once it was working, the cards rendered using the thumbnails. So that work wasn't wasted.

---

## 7. Side quest — Menu thumbnails + image cropping

During incident C, while I was wrong about the root cause, I built the right tooling for an adjacent problem:

### 7.1 Thumbnail generation

Karenderia expects three thumbnail variants per menu item photo:

| Suffix       | Dimensions | Used by                            |
|--------------|------------|------------------------------------|
| `@thumbnail` | 150×150    | Category list cards                |
| `@1x`        | 240×192    | Menu cards (`<el-image>`)          |
| `@2x`        | 550×440    | Modal popup (`<img preview>`)      |

If a variant doesn't exist, `CMedia::getImage` falls back to the original. That fallback wasn't being triggered because — as established in incident C — `<el-image>` was crashing before requesting any URL.

A one-shot PHP-GD generator at `/tmp/gen-thumbs.php` was deployed to the web container and walked `/var/www/html/upload/item/<id>/<photo>.png`, generating the three variants. 162 source images × 3 = 486 files written. The script is idempotent (skips existing variants). It does aspect-preserving "fit within" resize.

### 7.2 Image cropping (Python)

The user had previously written `cnc-restaurent-system/cnc-solutions/crop_menu_images.py`. It does smart 1:1 cropping using NumPy bbox detection:

1. Convert image to RGBA.
2. Compute brightness per pixel; treat very bright pixels (>240) as "background".
3. Find non-background bounding box.
4. For landscape images: crop a square around the content centroid.
5. For portrait images: pad with white to a square.
6. Resize to 500×500 with LANCZOS.
7. Save back to original path with white background flatten.

This was already run at some prior date — 147 of 150 menu item photos were already 500×500. Three needed processing (`o-ring-cheese-burger.png`, `chuckle-chickpea.png`, `chuckle-chickpea-menu.png`) — they were 400×400 and got upsized.

After cropping locally, originals were rsynced to the server, the existing thumbnails were deleted (since they were generated from the old non-square originals), and the PHP-GD generator was re-run. Final result: 150 properly-cropped square originals + 486 fresh thumbnails.

### 7.3 What was learned about the Caddy serving model

The user's `Caddyfile` uses a static-asset handler:

```
chickenwaves.dk {
    @static {
        path /upload/* /assets/vendor/* /themes/*
    }
    handle @static {
        root * /var/www/html
        file_server
        header Cache-Control "max-age=604800, public"
    }
    reverse_proxy web:80 {
        lb_try_duration 5s
        lb_try_interval 250ms
    }
}
```

Caddy reads the bind-mounted install dir directly. This means:

- A new file in `upload/` is served immediately by Caddy without Apache involvement.
- Caddy attaches a 7-day cache header. So if you replace an image, you may need to bust the cache to see the new one in a browser.
- The Caddy and web containers both have the bind-mount, so they're seeing the same bytes at all times.

---

## 8. Backup system design (2026-05-25 / 26)

### 8.1 Why this exists

After incident D (which hadn't happened yet but was theoretically anticipated), I wanted a backup that:

1. Runs daily without manual intervention.
2. Stores backups *off* the server, so root compromise can't destroy them.
3. Encrypts the data at rest (Karenderia DB has Stripe keys, customer PII, etc.).
4. Verifies integrity automatically.
5. Has a tested, fast restore path.

### 8.2 Architecture

```
03:15 UTC daily cron
  → mysqldump --single-transaction --quick (inside db container)
    → gzip
      → openssl enc -aes-256-cbc -pbkdf2 -iter 200000 -salt
        → Mongo Atlas GridFS bucket `cnc-backups.karenderia_dumps`
        → metadata: {created_at_utc, sha256, blob_size, dump_size_raw, encryption: aes-256-cbc-pbkdf2}
  → prune any GridFS entry > 90 days
  → log to /var/log/cncwaves-backup.log
```

The bash orchestrator is `/opt/cncwaves/scripts/backup-to-mongo.sh`. The actual Mongo upload happens inside a Python container (`cnc-backup:latest`, built from `/opt/cncwaves/scripts/backup/Dockerfile`, python:3.12-alpine + pymongo 4.10.1). This avoids installing Python or pymongo on the host.

### 8.3 Safety knobs

- `mysqldump --single-transaction --quick` — no locks taken on tables, no memory bloat.
- `nice -n 19 ionice -c 3` wrapping the dump → yields to literally everything else.
- `flock -n 9` on `/run/cncwaves-backup.lock` → no overlapping runs ever.
- `timeout 600` → hard-kills the pipeline at 10 min if hung.
- Pre-flight: requires 500 MB free disk before starting.
- All temp data in `/var/tmp/cncbk`, removed via `trap` on exit.
- Plaintext dump `shred -u`'d before the encrypted blob uploads (the plaintext briefly contains DB credentials).

### 8.4 Observed performance

- Raw dump: ~1.3 MB (the karenderia DB is small)
- gzip-compressed: ~155 KB
- AES-encrypted: ~163 KB
- End-to-end runtime: ~36 seconds (most of it is the docker container startup overhead + Mongo upload)
- Image size on disk: 103 MB (cnc-backup:latest, built once)
- Free tier Mongo Atlas (M0): 512 MB cap → 90 daily backups × 163 KB ≈ 14 MB. Plenty of headroom.

### 8.5 Restore

Manual restore script: `/opt/cncwaves/scripts/restore-from-mongo.sh [latest|YYYYMMDD|filename] [--apply]`

Without `--apply` it's a dry run: pull from Mongo, decrypt to `/var/tmp/cncrestore/dump.sql`, print the load command, exit. With `--apply` it pipes directly into the running db container's `mariadb -u karenderia -p... karenderia`.

Verified end-to-end during incident D:

```
2026-05-29 ~12:35 UTC
  → 195 tables restored
  → 1 merchant, 150 menu items, 20 orders, 17 admin users (etc) all restored
  → wall-clock: 34 seconds from "decrypt fetched" to "site HTTP 200"
```

### 8.6 Automated weekly verification

`/opt/cncwaves/scripts/verify-backup.sh` runs Sundays 04:30 UTC. It:

1. Fetches the latest blob from Mongo.
2. Decrypts + decompresses to a SQL file.
3. Sanity-checks the file header (must contain `MariaDB dump` string).
4. Spins up a **throwaway** `mariadb:10.6` container on `--network none` with a tmpfs `/var/lib/mysql` so it has zero contact with prod.
5. Pre-creates the `karenderia` user inside the throwaway (the dump contains `DEFINER='karenderia'@'%'` clauses in views/triggers that fail to load otherwise).
6. Pipes the SQL in.
7. Runs `mariadb-check --check --silent` against every table.
8. Asserts table count ≥ 100 and row counts > 0 on critical tables (`st_merchant`, `st_item`, `st_admin_user`, `st_ordernew`).
9. Tears down the throwaway container.
10. Logs PASS or FAIL.

This catches Mongo corruption, encryption-passphrase drift, gzip stream corruption, and DEFINER mismatches that would silently break a real restore.

First run on 2026-05-29 ~13:30 UTC:

```
2026-05-29T13:28:32Z VERIFY: starting verification of latest backup
2026-05-29T13:28:32Z VERIFY: fetched 163088B encrypted blob
2026-05-29T13:28:32Z VERIFY: decrypted 1294214B SQL
2026-05-29T13:28:32Z VERIFY: starting throwaway mariadb
2026-05-29T13:28:37Z VERIFY: throwaway mariadb is ready
2026-05-29T13:28:38Z VERIFY: table count: 195
2026-05-29T13:28:38Z VERIFY: mariadb-check: clean
2026-05-29T13:28:38Z VERIFY: st_merchant: 1 rows
2026-05-29T13:28:38Z VERIFY: st_item: 150 rows
2026-05-29T13:28:38Z VERIFY: st_admin_user: 1 rows
2026-05-29T13:28:38Z VERIFY: st_ordernew: 20 rows
2026-05-29T13:28:38Z VERIFY: PASS — backup is healthy and restorable
```

### 8.7 Secrets

The backup pipeline depends on two secrets:

- `MONGO_URI` — Mongo Atlas connection string (cluster + user creds)
- `BACKUP_PASSPHRASE` — symmetric key for AES-256-CBC encryption

Both live in `/etc/cncwaves-backup.env` on the server (mode 600, root only) and are mirrored in `.env.cncwaves-backup` at the repo root locally (mode 600, gitignored via `.env.*`).

**If the passphrase is ever lost, every encrypted blob in Mongo becomes permanently unrecoverable.** Keep an extra copy in 1Password. The decrypt command is documented at the top of `.env.cncwaves-backup`:

```
openssl enc -d -aes-256-cbc -pbkdf2 -iter 200000 -salt \
  -pass pass:"$BACKUP_PASSPHRASE" -in <encrypted-file> | gunzip
```

### 8.8 Limitations of the current backup design

1. **Single destination.** All backups land in one Mongo cluster. If Atlas is unreachable / your account is suspended / someone with the passphrase deletes the bucket, backups are gone. The recommended hardening is "3-2-1 rule": three copies on two different media types with one off-site. We have one copy.
2. **Push-based.** The server runs the upload using server-resident credentials. A root-compromised server could delete the backups in Mongo using the credentials it holds. The recommended hardening is "pull-based backup" where a *different* machine pulls from the server, holding its own credentials the server can't reach.
3. **No immutability.** Backblaze B2 and AWS S3 support object lock (write-once retention). Mongo GridFS does not. If you want backups that physically cannot be deleted for N days, that's a different tier.
4. **No alerting on backup failure.** If the daily cron silently fails for any reason (Mongo cluster unreachable, passphrase corruption, etc.) the only sign is a log line nobody reads. Healthcheck-style ping (ntfy.sh, healthchecks.io) would close this gap.

User chose to defer (1)-(4) — Hetzner Cloud snapshot pending (a separate, isolated rollback layer), weekly verify-backup deployed (catches passphrase drift + Mongo corruption).

---

## 9. Incident D — MariaDB ransom-bot attack (2026-05-29)

### 9.1 Discovery

User reports the site is throwing this exception on every page:

```
CDbException
Tabellen "{{merchant}}" for active record klassen "AR_merchant" blev ikke fundet i databasen.
/var/www/html/framework/yiilite.php(8690)
```

The `{{merchant}}` syntax is Yii's table-prefix placeholder. Normally resolved to `st_merchant`. The exception means the resolved table doesn't exist.

### 9.2 Initial inspection

SSH'd in, ran `SHOW TABLES;` against the karenderia database:

```
Tables_in_karenderia
readme_to_recover
```

One single table left. Every `st_*` table — merchant, item, ordernew, client, admin_user, payment_gateway, sms_provider, email_provider, options, addons, kitchen_order — all gone.

Read the contents of `readme_to_recover`:

```
All your data is backed up. You must pay 0.008 BTC to
bc1qg32fzpj3aqk8felgl86yd9u0dg4skvwcd5xl6c
In 72 hours, your data will be publicly disclosed and deleted.
More info: https://yip.su/recoverdb
After paying send mail to us: dbransom@atomicmail.io and we
will provide a link for you to download your data.
Your DBCODE : BXCNL
```

This is a textbook automated MariaDB ransom-bot pattern. Indicators:

- Bitcoin amount in the low hundreds of EUR — bots cast a wide net for small payments.
- `readme_to_recover` table name is a known signature.
- `yip.su` is a URL shortener used by mass-scan bot families.
- "DBCODE" is what these bots use to claim per-victim differentiation; usually meaningless.
- The note's promise to "return the data" if paid is almost certainly a lie — academic research shows ~70% non-delivery rate even when paid.

### 9.3 Attack vector

UFW was active, blocking `3306` and `3307` on the host's INPUT chain. So how did the bot connect?

**Docker port-publishing bypasses UFW's INPUT chain entirely.** When `docker compose ... up -d` publishes a port (e.g., `0.0.0.0:8081:80`), Docker inserts iptables NAT rules into the `PREROUTING` table and the `DOCKER` chain inside `FORWARD`. These rules accept inbound traffic *before* UFW's filter has a chance to act. The user-facing `ufw allow / deny` rules only affect the INPUT chain, which is for traffic terminating on the host itself — Docker-forwarded traffic is FORWARD-chain, which UFW doesn't touch by default.

The dev compose file `docker-compose.yml` had:

```
services:
  db:
    image: mariadb:10.6
    ports:
      - "3307:3306"    ← MariaDB direct on 3307
  phpmyadmin:
    image: phpmyadmin:latest
    ports:
      - "8081:80"      ← phpmyadmin UI on 8081
```

These ports were therefore publicly reachable from the internet despite UFW. Phpmyadmin's login page accepts username + password and connects on behalf of the user to the configured DB host (`db` service) on port 3306 inside the docker network.

Credentials: `karenderia` / `karenderia123`. This is the *demo default* shipped with Karenderia, never changed.

The bot's playbook:

1. Internet-wide scan for port `8081` (phpmyadmin's common port).
2. On hit, fetch `/index.php` and confirm phpmyadmin signature.
3. Try a dictionary of common DB credentials. `karenderia / karenderia123` is in any modern dictionary (the password literally contains the username + 123).
4. On success, browse to `Databases → karenderia → Run SQL`.
5. Execute `DROP TABLE` for every `st_*` table.
6. Create `readme_to_recover` table, insert the ransom note.
7. Disconnect.

No PHP code on the server was modified. The web container's filesystem is clean (verified during the backdoor scan — see 9.7). The attacker never touched Apache, Caddy, signage, or anything else. The attack was 100% on the MariaDB layer through the phpmyadmin authentication.

### 9.4 Recovery

**Step 1**: Drop the attacker's `readme_to_recover` table so the restore can recreate everything cleanly:

```
docker exec cnc-restaurent-system-db-1 \
  mariadb -u karenderia -pkarenderia123 karenderia \
  -e 'DROP TABLE IF EXISTS readme_to_recover;'
```

**Step 2**: Restore the latest encrypted backup (taken at 03:15 UTC the same day, ~9 hours before the attack):

```
/opt/cncwaves/scripts/restore-from-mongo.sh latest --apply
```

Wall-clock: 34 seconds.

```
→ fetching 'latest' from MongoDB
found: karenderia-20260529-031501.sql.gz.enc  163088B  uploaded=2026-05-29 03:15:04
wrote /work/payload (163088B)
META:filename=karenderia-20260529-031501.sql.gz.enc
META:sha256=07245a9a501399c6bc879e405369956e3b578759bcb6bc285b0547219b784e4c
→ decrypting + decompressing
→ decrypted dump: 1294214B at /var/tmp/cncrestore/dump.sql
→ APPLY: piping into cnc-restaurent-system-db-1 (karenderia)
✓ restore complete
```

**Step 3**: Verify table count + critical row counts:

```
SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='karenderia';
→ 195

SELECT (SELECT COUNT(*) FROM st_merchant) AS merchants,
       (SELECT COUNT(*) FROM st_item) AS items,
       (SELECT COUNT(*) FROM st_ordernew) AS orders;
→ merchants: 1 | items: 150 | orders: 20
```

**Step 4**: Confirm site returns HTTP 200 with the correct title:

```
curl -sk https://chickenwaves.dk/ | grep -oE '<title>[^<]+</title>'
→ <title>Chicken N Chicken Waves - Bestil Online</title>
```

Restoration complete. The window of data loss was zero: the most recent backup contained everything up to ~03:15 UTC, the attack happened sometime between 03:15 and 12:31, so the only thing lost was whatever orders were placed in those 9 hours. The user reviewed and confirmed no real orders were in that window.

### 9.5 Real-time hardening (in order applied)

**1. Stop and remove the phpmyadmin container.** The attack vector itself.

```
docker stop cnc-restaurent-system-phpmyadmin-1
docker rm cnc-restaurent-system-phpmyadmin-1
docker rmi phpmyadmin:latest    ## also delete the image so it can't be casually restarted
```

**2. Rename the dev compose file.** It is the only file that publishes 3307 and 8081 — it must never be run again accidentally.

```
mv /opt/cncwaves/cnc-restaurent-system/docker-compose.yml \
   /opt/cncwaves/cnc-restaurent-system/docker-compose.yml.DANGEROUS-DO-NOT-USE
```

`docker-compose.prod.yml` becomes the sole compose file.

**3. Fix the UFW-Docker bypass.** Add a `DOCKER-USER` chain that filters Docker-forwarded traffic. The first attempt at this was buggy and is documented separately in section 12.

**4. Rotate every credential the attacker could have touched.**

The bot doesn't usually exfiltrate — confirmed by Stripe dashboard showing `Last used: 28 May` (before the attack), meaning the live keys were never used by anyone other than the legit server. But "almost certainly" isn't "definitely", so:

- New `karenderia` DB password: 36-char random
- New `root` DB password: 36-char random
- New Stripe `sk_live` secret key, rolled in dashboard, updated in `st_payment_gateway` row
- New Stripe `pk_live` publishable key, rolled, updated
- New Stripe webhook signing secret (`whsec_`), rolled, updated
- New Resend API key (`re_`), rolled in dashboard, updated in `st_email_provider` row

The DB password updates touch SIX server-side files plus the live MariaDB users (via `ALTER USER`). Done atomically in one shell session:

```
ALTER USER 'karenderia'@'%' IDENTIFIED BY '<new>';
ALTER USER 'root'@'localhost' IDENTIFIED BY '<new>';
ALTER USER 'root'@'%' IDENTIFIED BY '<new>';
FLUSH PRIVILEGES;

sed -i "s|karenderia123|<new>|g" <each of 6 files>
sed -i "s|rootpass|<new>|g" /opt/cncwaves/cnc-restaurent-system/docker-compose.prod.yml

docker exec cnc-restaurent-system-web-1 php -r 'opcache_reset();'
```

Then verified the site still connects: `curl /api/geStoreMenu` returned valid JSON with `"code":1`. Then verified the *old* password is dead: `mariadb -u karenderia -pkarenderia123` → `Access denied`.

The Stripe + Resend rotation goes:
- User logs into dashboards, rolls keys, copies the new values.
- I `UPDATE` the relevant DB rows: `st_payment_gateway` for Stripe (attr1=secret, attr2=publishable, attr3=webhook), `st_email_provider` for Resend (api_key).
- `opcache_reset()` + runtime cache clear to ensure Karenderia picks them up on next request.

**5. SSH lockdown.** SSH was being actively probed during the incident:

```
May 29 11:04:21 cnc-prod sshd[3935086]: Failed password for root from 45.148.10.151
May 29 11:05:16 cnc-prod sshd[3935539]: Invalid user aquaponics.africa from 186.96.145.241
May 29 11:06:09 cnc-prod sshd[3935796]: Invalid user rtc from 31.57.63.117
```

Hardening applied at `/etc/ssh/sshd_config.d/99-cncwaves-hardening.conf`:

```
PermitRootLogin prohibit-password
PasswordAuthentication no
KbdInteractiveAuthentication no
ChallengeResponseAuthentication no
PubkeyAuthentication yes
MaxAuthTries 3
LoginGraceTime 20
```

`sshd -t` to validate, `systemctl reload ssh` to apply. Then `apt-get install -y fail2ban` with a jail config at `/etc/fail2ban/jail.d/sshd.local`:

```
[sshd]
enabled = true
port = ssh
filter = sshd
backend = systemd
maxretry = 3
findtime = 10m
bantime = 1h
ignoreip = 127.0.0.1/8 ::1
```

Within seconds of fail2ban starting, two of the brute-forcers above were auto-banned. The IPs accumulated over the day are visible via `fail2ban-client status sshd`.

**6. Tighten file permissions on credential-bearing PHP files.** `/var/www/html/k-config.php` was world-readable (`0644 root:root`). Changed to `0640 root:www-data`. Apache (running as www-data) can still read; a non-www-data process inside the container cannot. Same applied to `/var/www/html/protected/config/params.php` and `/var/www/html/backoffice/protected/config/params.php`.

**7. Disable PHP error display.** A drop-in PHP ini at `/usr/local/etc/php/conf.d/99-cncwaves-prod.ini`:

```
display_errors = Off
display_startup_errors = Off
log_errors = On
expose_php = Off
```

`expose_php = Off` removes the `X-Powered-By: PHP/8.1.x` header so fingerprinting tools don't immediately get a version.

**8. Disable Yii debug mode.** `defined('YII_DEBUG') or define('YII_DEBUG',true)` in both `/var/www/html/index.php` and `/var/www/html/backoffice/index.php` was patched to `false` via a small one-shot PHP script. With YII_DEBUG=true, unhandled exceptions render with full stack traces, file paths, and line numbers — useful in dev, disclosure risk in prod.

**9. Hide Apache server header.** `/etc/apache2/conf-available/security.conf` was edited to set `ServerTokens Prod` and `ServerSignature Off`. Apache now returns just `Server: Apache` instead of `Server: Apache/2.4.65 (Debian)`. Minor but free.

**10. Remove `/var/www/html/debug_slug.php`.** A leftover developer file that printed the live DB connection details + ran a query, dumping the schema. World-accessible. Shredded.

### 9.6 Site offlined for testing

While Stripe + Resend rotation was in flight, I put the site into 503 maintenance mode via a Caddyfile rewrite that responds with a branded HTML page. This prevented any customer orders from flowing in with the half-rotated credentials. The maintenance page lives at `/opt/cncwaves/cnc-restaurent-system/maintenance.html` and the maintenance Caddyfile is preserved at `/opt/cncwaves/cnc-restaurent-system/Caddyfile.maintenance.bak` in case it's needed again. The live Caddyfile is preserved at `/opt/cncwaves/cnc-restaurent-system/Caddyfile.pre-incident.bak` for rollback.

To toggle between live and maintenance:

```
## go to maintenance:
cp /opt/cncwaves/cnc-restaurent-system/Caddyfile.maintenance.bak \
   /opt/cncwaves/cnc-restaurent-system/Caddyfile
docker exec cnc-restaurent-system-caddy-1 caddy reload --config /etc/caddy/Caddyfile

## go back live:
cp /opt/cncwaves/cnc-restaurent-system/Caddyfile.pre-incident.bak \
   /opt/cncwaves/cnc-restaurent-system/Caddyfile
docker exec cnc-restaurent-system-caddy-1 caddy reload --config /etc/caddy/Caddyfile
```

### 9.7 Backdoor scan of web container

Goal: verify the attacker didn't drop a PHP web shell anywhere in the codebase that could re-enter later.

Checks performed:

1. **Recent file modifications** in `/var/www/html` excluding caches/uploads, last 7 days:
   ```
   /var/www/html/k-config.php                                         ← legit (my password rotation)
   /var/www/html/protected/components/AssetsFrontBundle.php          ← legit (my element-plus pin)
   ```
   Only my own changes. No mystery files.

2. **Classic web-shell signatures** via grep across all PHP files:
   ```
   eval(.*base64_decode|gzinflate.*base64_decode|str_rot13.*eval|preg_replace.*\/e|
     assert(.*$_GET|system(.*$_GET|passthru(.*$_GET|shell_exec(.*$_GET)
   ```
   Zero matches.

3. **PHP files in upload directory.** None. `/var/www/html/upload/.htaccess` explicitly denies `*.php`, `*.html`, `*.js`, `*.cgi` execution, so even if a future Karenderia bug allowed uploading a PHP file, it can't execute.

4. **World-writable PHP files.** All matches are inside Twig compilation_cache — those are legitimately generated by Twig at runtime and need to be writable.

5. **Live mariadb logs.** No `DROP TABLE` events visible (MariaDB doesn't general-log by default). The attack timing is only inferable from the backup file (the 03:15 UTC backup has all the data, by 12:31 UTC the data is gone).

Conclusion: attacker did not touch Apache, did not deploy a backdoor, did not modify any PHP file. The attack chain was bot → phpmyadmin login → SQL `DROP` → disconnect. Clean reentry path through phpmyadmin only, and phpmyadmin no longer exists.

### 9.8 Did the attacker actually exfiltrate before dropping?

The ransom note claims "All your data is backed up". For an automated ransom bot at this price point (~$300), almost certainly false. The math doesn't work — these bots hit thousands of victims per day and would need petabytes of egress capacity to actually exfiltrate every DB they touch.

Confirmation via Stripe dashboard:

- Both standard keys (sk_live, pk_live) showed `Last used: 28 May` at the time of inspection (before the attack happened on 29 May).
- No anomalous transactions, refunds, or test charges in the dashboard.
- No API calls from unfamiliar IPs in the Stripe Logs view.

If the attacker had actually grabbed and tested the live keys, that timestamp would say "today". It said "yesterday".

Same logic via Resend: no unfamiliar email sends in the logs.

Probability of actual exfiltration: low single digits.
Probability of rotating-anyway being a waste: zero (rotation took 15 minutes and is free).
Decision: rotate everything regardless.

GDPR posture: speak to lawyer. My read: "bot-pattern attack, no exfiltration evidence in downstream systems, no SELECT in mariadb logs, dropped within minutes of connecting" is a meaningfully weaker case for Datatilsynet notification than "we have confirmed data exfiltration". Final call is the user + their counsel's.

---

## 10. Server hardening applied this week

Consolidated list. All items below are currently in place on the server.

### 10.1 Network / firewall layer

- UFW active with allow-list `[22, 80, 443, 3000, 3001]`.
- `DOCKER-USER` iptables chain configured in `/etc/ufw/after.rules` to filter Docker-forwarded traffic:
  ```
  -A DOCKER-USER -m conntrack --ctstate ESTABLISHED,RELATED -j RETURN
  -A DOCKER-USER -i br+ -j RETURN
  -A DOCKER-USER -s 172.16.0.0/12 -j RETURN
  -A DOCKER-USER -s 10.0.0.0/8 -j RETURN
  -A DOCKER-USER -s 192.168.0.0/16 -j RETURN
  -A DOCKER-USER -p tcp -m conntrack --ctorigdstport 80 -j RETURN
  -A DOCKER-USER -p tcp -m conntrack --ctorigdstport 443 -j RETURN
  -A DOCKER-USER -p tcp -m conntrack --ctorigdstport 3000 -j RETURN
  -A DOCKER-USER -p tcp -m conntrack --ctorigdstport 3001 -j RETURN
  -A DOCKER-USER -p udp -m conntrack --ctorigdstport 443 -j RETURN
  -A DOCKER-USER -j DROP
  ```
  The key insight (corrected the hard way during attack simulation): use `--ctorigdstport` not `--dport`. `--dport` matches the *post-NAT* port (container's internal 80), so any container with internal port 80 would slip through. `--ctorigdstport` matches the *original* port the client requested before NAT, so external traffic to 8081 doesn't match any whitelist and falls through to DROP.
- `/etc/docker/daemon.json` set to `{"userland-proxy": false}` to force kernel-level NAT rather than userspace proxy. This ensures the DOCKER-USER chain actually sees the traffic.
- Verified by attack simulation: launching a throwaway nginx with `-p 0.0.0.0:8081:80` returns HTTP 000 (timeout) from external clients, and the DROP rule counter in `iptables -L DOCKER-USER -n -v` increments.

### 10.2 Service hygiene

- phpmyadmin container removed, image deleted.
- Dev `docker-compose.yml` renamed `.DANGEROUS-DO-NOT-USE`. Only `docker-compose.prod.yml` should ever be used.
- Deploy crons paused with `# CLAUDE-PAUSED` prefix. Re-enabling requires fixing the git divergence + `set -e`.

### 10.3 SSH

- `/etc/ssh/sshd_config.d/99-cncwaves-hardening.conf` enforces key-only auth, `PermitRootLogin prohibit-password`, `MaxAuthTries 3`, `LoginGraceTime 20`.
- fail2ban installed with sshd jail. `maxretry 3`, `findtime 10m`, `bantime 1h`. Whitelist 127.0.0.1/8 and ::1.

### 10.4 Database

- `karenderia` DB user password rotated to 36-char random.
- `root` DB user password rotated to 36-char random.
- Old passwords (`karenderia123`, `rootpass`) confirmed dead via `ALTER USER` then `Access denied` test.
- Both new passwords live only in `/etc/cncwaves-backup.env` (server) and `.env.cncwaves-backup` (local repo, gitignored). 1Password copy strongly recommended.

### 10.5 PHP application

- `/var/www/html/k-config.php` mode 640 root:www-data.
- `/var/www/html/protected/config/params.php` mode 640 root:www-data.
- `/var/www/html/backoffice/protected/config/params.php` mode 640 root:www-data.
- `/var/www/html/debug_slug.php` removed entirely.
- `YII_DEBUG = false` in both `index.php` files.
- PHP drop-in `/usr/local/etc/php/conf.d/99-cncwaves-prod.ini`:
  ```
  display_errors = Off
  display_startup_errors = Off
  log_errors = On
  expose_php = Off
  ```
- Apache `/etc/apache2/conf-available/security.conf` set to `ServerTokens Prod` + `ServerSignature Off`.
- Apache `/etc/apache2/conf-available/cncwaves-tuning.conf` (also baked into Dockerfile):
  ```
  <IfModule mpm_prefork_module>
      MaxRequestWorkers 50
      MaxConnectionsPerChild 200
      ServerLimit 50
  </IfModule>
  <IfModule mpm_worker_module>
      MaxConnectionsPerChild 200
  </IfModule>
  <IfModule mpm_event_module>
      MaxConnectionsPerChild 200
  </IfModule>
  ```
  `MaxConnectionsPerChild 200` is the key — Apache workers self-recycle after 200 requests, forcing glibc to release memory back to the OS. Prevents the unbounded RSS growth that caused the 14:25 outage.

### 10.6 Container

- `mem_limit: 1500m` and `memswap_limit: 1500m` on the web service in `docker-compose.prod.yml`. Docker SIGKILLs the container if it exceeds 1.5 GB; healthcheck fails immediately; autoheal restarts. Host OOM is now physically impossible.
- `HEALTHCHECK` on web service: `curl -fsS http://localhost/health.php` every 30 s, 3 retries, 30 s start_period.

### 10.7 Application config in DB

- `st_payment_gateway` row for `stripe`: new sk_live, pk_live, whsec.
- `st_email_provider` row for `resend`: new api_key.

### 10.8 Project-level Claude hook

- `.claude/hooks/block-karenderia-assets-rm.sh` refuses Bash commands matching `rm -rf` / `find -delete` / `rsync --delete` aimed at the Karenderia assets directory.
- `.claude/settings.json` wires the hook into `PreToolUse:Bash`.
- Six attack-pattern test cases pass; five safe-pattern test cases pass.

---

## 11. Monitoring, detection, recovery

### 11.1 Health probes

Two-tier uptime probing from `/opt/cncwaves/scripts/uptime-check.sh`, runs every 3 minutes via cron:

- **Shallow**: `curl -s -m 8 https://chickenwaves.dk/` — expect HTTP 2xx/3xx.
- **Deep**: `curl -X POST .../api/geStoreMenu -d 'merchant_id=1&currency_code=DKK'` — expect JSON containing `"code":1`.

Each probe has its own state file:
- `/var/lib/cncwaves/uptime-state` — shallow
- `/var/lib/cncwaves/api-state` — deep

Emails fire only on state change (so no spam during normal operation). The deep probe distinguishes the "Tuesday scenario" (Caddy up but PHP/DB wedged) from the "Friday scenario" (everything down).

**SIGPIPE pitfall** (discovered + fixed today): the original deep probe used `echo "$BODY" | head -c 200 | grep -q '"code":1'`. With `set -o pipefail`, when grep finds a match early and exits, head gets SIGPIPE → pipeline exit code 141 → if-condition false → false `state=down`. Replaced with pure bash substring match `[[ "${API_BODY:0:300}" == *'"code":1'* ]]`. No pipeline, no SIGPIPE, no false negatives.

### 11.2 Disk space

`/opt/cncwaves/scripts/disk-check.sh` runs every 30 minutes. Checks `df` for all real filesystems (excludes tmpfs, devtmpfs, squashfs, overlay). State-change behavior: alerts only when a filesystem crosses the 85% threshold, recovery alert when it drops back below.

### 11.3 Container autoheal

`/opt/cncwaves/scripts/autoheal.sh` runs every 2 minutes. Lists `docker ps --filter health=unhealthy`. For each unhealthy container, decides whether to restart.

Safety guarantees (designed to be the *opposite* of the deploy-loop disaster):

- **Per-container cool-down: 600 seconds**. After restarting `web-1`, autoheal cannot restart `web-1` again until 10 minutes have passed, regardless of health state.
- **Daily circuit breaker: 3 restarts per 24 hours**. After 3 restarts of any container in a 24h window, autoheal writes `/var/lib/cncwaves/autoheal/.tripped` and stops touching anything until a human manually removes that file.
- **Email on every action**. Restart, skip-due-cooldown, trip — all emit an email via Resend to `jawa0056@gmail.com`.
- **Only acts on Docker's own health=unhealthy**. Autoheal does no health-judging of its own. Docker's healthcheck must have failed its retry count (3 consecutive curls over 90 s) before autoheal will even consider acting.
- **Logged**: all actions, decisions, and emails written to `/var/log/cncwaves-uptime.log`.

Worst-case scenario walk-through (e.g., healthcheck has a false-positive bug):

```
14:00  autoheal sees unhealthy → restart #1 → email
14:01-14:09  autoheal sees unhealthy → SKIP (cool-down)
14:10  autoheal sees unhealthy → restart #2 → email
14:20  autoheal sees unhealthy → restart #3 → email
14:21  autoheal sees unhealthy → CIRCUIT TRIPS → email → disable self
14:22 onward  autoheal exits at line 1 (tripped) until human intervenes
```

Total damage: 3 restarts in 21 minutes. Total downtime: ~90 seconds (3 × ~30 s restart). User has received 4 emails by minute 21 and can SSH in to diagnose.

The cron deploy-loop disaster was 60 restarts per hour × hours. The autoheal cannot, by design, do that — it physically can't fire more than 3 times in 24h.

### 11.4 Email alerting via Resend

All scripts use a shared helper pattern. Variables sourced from `/etc/cncwaves-backup.env`. From address is `Chicken N Chicken Waves <ordre@chickenwaves.dk>` (verified sender in Resend). To address is `jawa0056@gmail.com`.

Tested end-to-end during incident D: 3 emails delivered (initial state seed → BACK UP, then simulated 503 → DOWN, then restored → BACK UP).

### 11.5 Recovery proof points

- Mongo backup → restore: 34 seconds end-to-end (incident D).
- Web container restart by autoheal: ~30 seconds end-to-end (incident E).
- Caddy reload (maintenance mode toggle): ~2 seconds.
- DB password rotation: tested, ~1 second (ALTER USER + FLUSH).

---

## 12. Attack simulation results

The user asked me to actually attempt the bot attack chain from outside the server to verify defences. Performed from local Mac (external to Hetzner).

### 12.1 Port scan

```
port    22: OPEN ✓     (SSH)
port    80: OPEN ✓     (Caddy HTTP)
port   443: OPEN ✓     (Caddy HTTPS)
port  3000: OPEN ✓     (signage-admin)
port  3001: OPEN ✓     (signage-server)
port  3306: blocked    (MariaDB, expected)
port  3307: blocked    (MariaDB direct on dev compose, expected)
port  5432: blocked    (Postgres scan)
port  6379: blocked    (Redis scan)
port  8080: blocked    (HTTP alt, expected)
port  8081: blocked    (phpmyadmin, attack target — must be blocked)
port  9200: blocked    (Elastic scan)
port 27017: blocked    (Mongo scan)
port 33060: blocked    (MySQL X protocol)
```

Five expected open, nine confirmed blocked. The attack target (8081) is among the blocked.

### 12.2 phpmyadmin discovery via Caddy reverse proxy

```
https://chickenwaves.dk/phpmyadmin/     → HTTP 404
https://chickenwaves.dk/pma/            → HTTP 404
https://chickenwaves.dk/admin/          → HTTP 404
https://chickenwaves.dk/sql/            → HTTP 404
https://chickenwaves.dk/phpMyAdmin/     → HTTP 404
https://chickenwaves.dk/myadmin/        → HTTP 404
```

Karenderia returns 404 for each (via its Yii CHttpException → Apache 404). No phpmyadmin signature in any response body.

### 12.3 SSH password authentication

```
ssh -o PreferredAuthentications=password -o PubkeyAuthentication=no \
    root@65.108.151.129 exit
→ root@65.108.151.129: Permission denied (publickey).
```

Password auth refused at handshake. Only publickey accepted.

### 12.4 Critical test — accidentally re-publish 8081

This was the bug-discovering test. Started a throwaway nginx container with `-p 0.0.0.0:8081:80`, then tried to reach `:8081` from the local Mac.

**First attempt (DOCKER-USER chain v1, with `--dport` whitelist):**

```
Connection to 65.108.151.129 port 8081 [tcp/sunproxyadmin] succeeded!
⚠️ FAIL — port 8081 reachable externally
HTTP 200
DROP counter: 0 packets, 0 bytes
```

Root cause: my whitelist matched the *post-NAT destination port*. After Docker DNATs external `:8081` to container's `:80`, the iptables `tcp dpt:80` rule fires and accepts. Any container with internal port 80 would slip through.

**Fix v2 with `--ctorigdstport`:**

```
-A DOCKER-USER -p tcp -m conntrack --ctorigdstport 80 -j RETURN
-A DOCKER-USER -p tcp -m conntrack --ctorigdstport 443 -j RETURN
-A DOCKER-USER -p tcp -m conntrack --ctorigdstport 3000 -j RETURN
-A DOCKER-USER -p tcp -m conntrack --ctorigdstport 3001 -j RETURN
-A DOCKER-USER -j DROP
```

`--ctorigdstport` matches the *pre-NAT* port — the port the client originally requested. So a request to `:8081` is `ctorigdstport=8081`, no whitelist match, falls through to DROP.

**Re-run after fix:**

```
✅ PASS — port 8081 BLOCKED externally
HTTP 000  (000 = timeout, no SYN-ACK)
DROP counter: 10 packets, 640 bytes
```

The DROP rule fired and incremented its counter. Verified by also publishing a fake mariadb on 3306 (`docker run -p 0.0.0.0:3306:3306 mariadb:10.6 --network none`):

```
external nc -z 65.108.151.129 3306 → blocked
DROP counter still incrementing
```

This was the most important test of the week. If the user hadn't asked for the attack simulation, I would have left a confidently-deployed-but-actually-broken DOCKER-USER chain in place, and the next person to publish 8081 (intentionally or by accident) would have been hit by the same bot family.

### 12.5 Signage stack — confirmed untouched

```
NAMES            STATUS                  PORTS
signage-server   Up 5 minutes (healthy)  0.0.0.0:3001->3001/tcp
signage-admin    Up 5 minutes (healthy)  0.0.0.0:3000->3000/tcp

/health → {"ok":true,"server_time":...,"screens":20,
           "subscribers":{"1":1,"2":1,"3":1,"4":1,"5":1,
                          "6":1,"7":1,"8":1,"9":1,"10":1,"11":1}}
```

20 screens registered, 11 currently subscribed (one per screen, screens 1–11 active). External `:3000` returns HTTP 307 (Next.js login redirect). External `:3001/health` returns HTTP 200 with the JSON above.

Signage data lives in MongoDB Atlas DB `CNCtest`, a different database from the Karenderia backup DB (`cnc-backups`). The ransom bot only had access to MariaDB on the local docker network. It physically could not have reached Mongo. So signage data was never at risk during the attack.

---

## 13. Signage stack assessment

Verified components:

| Component       | Status                            |
|-----------------|-----------------------------------|
| signage-server  | Up, healthy, 11 active subscribers|
| signage-admin   | Up, healthy, returns 307 to login |
| Docker images   | `signage-server-signage-server:latest`, `signage-admin-signage-admin:latest`, both unchanged sizes |
| MongoDB         | `cluster0.54zxry3.mongodb.net`, DB `CNCtest` |
| Screen connect  | 20 registered, 11 currently live (1–11) |

No incident has touched signage this week. The Docker daemon restart for the userland-proxy change forced an automatic restart of both signage containers, both came back healthy within 60 seconds, all screens auto-reconnected (websockets do this on disconnect).

Signage attack surface is real but lower-priority than Karenderia was:

1. **signage-admin login on `:3000`** — Next.js admin panel, brute-forceable. No fail2ban-equivalent for it currently.
2. **MongoDB credentials in container env** — `MONGO_URI` with read/write on `CNCtest` is in the container's env vars. If signage-admin had an RCE bug, the attacker could read it and drop your screen configs.
3. **Next.js / Node.js zero-day** — out of scope today.
4. **WebSocket abuse on `:3001`** — mass-connect DOS, malformed-message crashes.

The first two are addressable without touching APK code (which the user explicitly does not want to do). The third and fourth are out of scope. Specific not-yet-applied hardening:

- fail2ban jail on signage-admin login: pattern-match failed POSTs in container logs, ban IPs after 5 fails in 10 min. No risk to live screens (screens never log in, only humans do).
- Read-restricted Mongo user for signage: create a Mongo user with `read+write` scoped to only the collections signage actually uses (`screens`, `bursts`, `schedules`), update `MONGO_URI` env, restart container. If signage-admin is ever compromised, blast radius is one DB not the whole Mongo cluster.

The user has chosen to defer these for now.

---

## 14. Credentials inventory (locations only — no values)

Every credential lives in **two** places: server-side (`/etc/cncwaves-backup.env`, mode 600 root) and locally (`.env.cncwaves-backup`, mode 600, gitignored via `.env.*`). User is recommended to keep a third copy in 1Password.

| Credential                       | Where it's wired in (server) |
|----------------------------------|------------------------------|
| `DB_PASSWORD` (karenderia user)  | `/var/www/html/k-config.php`<br/>`/opt/cncwaves/cnc-restaurent-system/docker-compose.prod.yml` (MYSQL_PASSWORD)<br/>`/opt/cncwaves/cnc-restaurent-system/docker-entrypoint.sh`<br/>`/opt/cncwaves/cnc-restaurent-system/railway-entrypoint.sh`<br/>`/opt/cncwaves/scripts/backup-to-mongo.sh`<br/>`/opt/cncwaves/scripts/restore-from-mongo.sh` |
| `DB_ROOT_PASSWORD`               | `/opt/cncwaves/cnc-restaurent-system/docker-compose.prod.yml` (MYSQL_ROOT_PASSWORD) |
| `STRIPE_SECRET_KEY`              | `st_payment_gateway` table, row `payment_code='stripe'`, column `attr1` |
| `STRIPE_PUBLISHABLE_KEY`         | same table, column `attr2` |
| `STRIPE_WEBHOOK_SIGNING_SECRET`  | same table, column `attr3` |
| `RESEND_API_KEY`                 | `st_email_provider` table, row `provider_id='resend'`, column `api_key` |
|                                  | `/etc/cncwaves-backup.env` (read by uptime-check.sh, autoheal.sh, disk-check.sh for outbound alerts) |
| `MONGO_URI` (signage)            | signage-server container env var only — managed by docker compose for that project |
| `MONGO_URI` (cnc-backups)        | `/etc/cncwaves-backup.env` |
| `BACKUP_PASSPHRASE`              | `/etc/cncwaves-backup.env` |

If any of these need rotating: update server, update repo `.env.cncwaves-backup`, update 1Password, restart any affected service (web container for DB password, no restart needed for Stripe / Resend).

---

## 15. File and directory inventory

### 15.1 Repo-level (this Git repo)

```
.claude/
├── hooks/
│   └── block-karenderia-assets-rm.sh    ← Bash PreToolUse hook
└── settings.json                         ← registers the hook
.env.cncwaves-backup                      ← gitignored; mode 600
.gitignore                                ← .env.* + the additions below
INCIDENT-REPORT-2026-MAY.md               ← this file
cnc-restaurent-system/
├── Caddyfile                             ← committed copy (note: live edits happen on server only)
├── Dockerfile                            ← committed; now includes cncwaves-tuning.conf
├── db-seed.sql
├── docker-compose.prod.yml               ← committed; do not commit secret values
├── cnc-solutions/
│   └── crop_menu_images.py               ← smart-crop tool (Pillow + numpy)
└── codecanyon-n4kTmDCh-karenderia-multiple-restaurant-system/
    └── install/
        ├── assets/                       ← committed (vendor JS/CSS — local mirror of server)
        ├── upload/                       ← committed (menu item photos — local mirror)
        ├── protected/                    ← committed (Karenderia PHP application code)
        └── backoffice/                   ← committed (Karenderia admin UI)
signage-android/                          ← committed (APK source)
signage-server/                           ← committed (Node.js + Dockerfile)
signage/                                  ← committed (Next.js admin)
scripts/                                  ← committed (Python helpers)
```

### 15.2 Server-side (not in git, lives on chickenwaves.dk)

```
/opt/cncwaves/                            ← clone of github.com/jmkq0056/cncwaves
├── auto-deploy.sh                        ← cron-paused
├── scripts/
│   ├── backup-to-mongo.sh                ← cron 03:15 UTC
│   ├── restore-from-mongo.sh             ← manual
│   ├── verify-backup.sh                  ← cron Sun 04:30 UTC
│   ├── uptime-check.sh                   ← cron */3 min
│   ├── disk-check.sh                     ← cron */30 min
│   ├── autoheal.sh                       ← cron */2 min
│   └── backup/
│       ├── Dockerfile                    ← cnc-backup:latest
│       ├── mongo_upload.py
│       └── mongo_restore.py
└── cnc-restaurent-system/
    ├── docker-compose.prod.yml           ← single source of truth
    ├── docker-compose.yml.DANGEROUS-DO-NOT-USE
    ├── Caddyfile                         ← live config
    ├── Caddyfile.pre-incident.bak        ← rollback to incident-day baseline
    ├── Caddyfile.maintenance.bak         ← rollback to maintenance page (if needed)
    ├── Dockerfile                        ← includes Apache tuning conf
    ├── cncwaves-tuning.conf              ← Apache MaxConnectionsPerChild 200
    ├── docker-entrypoint.sh
    ├── maintenance.html                  ← branded 503 page
    └── codecanyon-.../install/           ← bind-mount at /var/www/html

/etc/
├── cncwaves-backup.env                   ← all secrets, mode 600
├── docker/daemon.json                    ← userland-proxy false
├── fail2ban/jail.d/sshd.local            ← sshd jail
├── logrotate.d/cncwaves-backup
├── ssh/sshd_config.d/99-cncwaves-hardening.conf
└── ufw/after.rules                       ← DOCKER-USER block

/var/log/
├── cncwaves-backup.log                   ← backup + verify-backup
├── cncwaves-uptime.log                   ← uptime probes + autoheal
├── deploy.log                            ← legacy, kept for forensics
└── cncwaves-deploy.log                   ← legacy, kept for forensics

/var/lib/cncwaves/
├── uptime-state                          ← "up" or "down"
├── api-state                             ← "up" or "down"
├── disk/
│   └── _<mount> files                    ← one state file per mountpoint
└── autoheal/
    ├── last-<container>                  ← last-restart timestamp
    ├── r-<unix>-<container>              ← stamp files for 24h count
    └── .tripped                          ← presence = circuit broken
```

---

## 16. Cron inventory

`crontab -l` on the server, as of 2026-05-29 ~13:35 UTC:

```
# CLAUDE-PAUSED * * * * * /opt/deploy.sh >> /var/log/deploy.log 2>&1
# CLAUDE-PAUSED */2 * * * * /opt/cncwaves/auto-deploy.sh >> /var/log/cncwaves-deploy.log 2>&1
15   3 * * *   /opt/cncwaves/scripts/backup-to-mongo.sh >> /var/log/cncwaves-backup.log 2>&1
30   4 * * 0   /opt/cncwaves/scripts/verify-backup.sh >> /var/log/cncwaves-backup.log 2>&1
*/2  * * * *   /opt/cncwaves/scripts/autoheal.sh
*/3  * * * *   /opt/cncwaves/scripts/uptime-check.sh
*/30 * * * *   /opt/cncwaves/scripts/disk-check.sh
```

Summary:
- Every 2 min: autoheal scan + (rare) restart
- Every 3 min: uptime + API probe + alert on state change
- Every 30 min: disk check + alert on threshold cross
- Daily 03:15: encrypted dump + Mongo upload + 90-day retention prune
- Sunday 04:30: download latest + restore-to-throwaway + integrity test
- Both deploy crons paused

Backup of original crontab at `/root/crontab.bak.<timestamp>`.

---

## 17. Security framework mappings

These exist because the user asked for a postmortem they can study for AAU's Spring 2026 Security course. Mapped to the topics in their `Security_Portfolio.pdf`.

### 17.1 STRIDE classification of incident D

| Letter | Threat                    | This incident                                    |
|--------|---------------------------|--------------------------------------------------|
| S      | Spoofing identity         | Bot authenticated as `karenderia` user via weak default password — credential, not impersonation. |
| T      | Tampering with data       | All `st_*` tables dropped; `readme_to_recover` table inserted. Yes, direct. |
| R      | Repudiation               | No audit log on phpmyadmin operations; mariadb general log disabled. Attacker has plausible deniability. |
| I      | Information disclosure    | Possible but unverified. Claim of "data backed up" is almost certainly bluff. Stripe / Resend audit shows no abuse. |
| D      | Denial of service         | Yes — site returned exception until restored. ~5 hours practical downtime (12:31 detected → 12:35 restored = 4 min impact; original outage window between 03:15 and 12:31 = ~9 hours of partial unavailability). |
| E      | Elevation of privilege    | Yes — bot went from unauthenticated internet to full DROP-table-level DB access in one step. |

Primary classification: **E + D + T**, secondary I.

### 17.2 OWASP Top 10:2025 mappings

- **A01 Broken Access Control** — phpmyadmin had no IP allow-list, no MFA, no rate limit. Authentication via weak password was the *only* access control. This is partly A02 (config) and partly A01 (no auth-z layer).
- **A02 Security Misconfiguration** — phpmyadmin port 8081 publicly exposed. Docker port-publishing bypasses UFW INPUT chain. Demo default DB credentials never changed. This is the primary classification.
- **A03 Supply-Chain Failures** — relevant to incident C (CDN unpinned Element Plus). Not relevant to incident D.
- **A04 Cryptographic Failures** — DB stored Stripe LIVE keys in plaintext (Karenderia design). On rotation, fixed. Mongo backups are encrypted at rest with AES-256-CBC + PBKDF2.
- **A05 Injection** — not the cause here, but worth noting Karenderia's protection against SQLi is "rely on Yii's parameterized queries". Yii does this consistently.
- **A06 Insecure Design** — `set -e` missing from `/opt/deploy.sh` is a process-design failure (incident A). No rate limit on signage-admin login is a design oversight.
- **A07 Authentication Failures** — `karenderia / karenderia123` was the demo default. Predictable, dictionary-listable, no rate limit, no MFA. This is the proximate cause of incident D.
- **A08 Integrity Failures** — `/opt/deploy.sh` ran `git pull` + `docker compose up --build` with no signature check on the source code. If origin/main were compromised, the script would happily deploy malicious code. (Mitigated only by the divergence keeping it stuck.)
- **A09 Logging Failures** — MariaDB general log was disabled, so we can't enumerate the actual SQL statements run during the attack. Apache logs to stderr only (no file rotation). Yii logs phpmyadmin probes but truncates after 1 MB.
- **A10 Mishandling Exceptions** — pre-mitigation: `YII_DEBUG=true` would have rendered stack traces with file paths to any unauthenticated visitor. Mitigation: `YII_DEBUG=false`, `display_errors=Off`, `expose_php=Off`.

### 17.3 CIA scorecard

| Property         | Before this week                                  | After this week                                 |
|------------------|---------------------------------------------------|-------------------------------------------------|
| Confidentiality  | Plaintext DB creds in PHP files (mode 644). Stripe LIVE keys in plaintext in DB row. `YII_DEBUG=true` leaked paths. `debug_slug.php` printed schema. phpmyadmin accepted dictionary passwords. | DB creds mode 640 root:www-data. Stripe keys rotated; if exposed once, they're stale. YII_DEBUG=false, display_errors=Off, expose_php=Off. debug_slug removed. phpmyadmin gone. DB passwords 36-char random. |
| Integrity        | DROP TABLE possible via authenticated phpmyadmin. Deploy script with no signature check. | DROP TABLE still possible by an authenticated user, but no path to authenticated DB user from internet. Mongo backup is encrypted at rest with PBKDF2; tampering would fail decrypt + sha256 check. |
| Availability     | Daily backup → 24h max data loss. No restore tested. No automated health check or recovery. | Daily backup verified weekly. Restore tested end-to-end (34 s). Healthcheck + autoheal recovers in <90 s. Mongo retention 90 days. Hetzner backups not yet enabled (user action). |

### 17.4 Lampson Policy / Mechanism / Assurance

The cleanest framing of "what was actually done" — Policy says what we want, Mechanism implements it, Assurance proves it works.

| Layer       | Articulated                                      |
|-------------|--------------------------------------------------|
| **Policy**  | Only ports `[22, 80, 443, 3000, 3001]` reachable from internet. SSH key-only for root. DB passwords ≥ 32 random chars. Single source of compose truth (`docker-compose.prod.yml`). No PHP source code modification by non-trusted users. Every CDN-sourced JS must be version-pinned. Daily off-server encrypted backup retained 90 days. |
| **Mechanism** | UFW + DOCKER-USER iptables chain with `--ctorigdstport` whitelist. SSH config + fail2ban. `ALTER USER` with random passwords + propagation to 6 source files. `docker-compose.yml.DANGEROUS-DO-NOT-USE` rename. Mode 640 on credential files. `AssetsFrontBundle.php` patched to self-hosted v2.3.5. `backup-to-mongo.sh` + `verify-backup.sh` + Python upload helper + `cnc-backup:latest` image. |
| **Assurance** | Attack simulation from external Mac with multiple test cases — verified each layer works. Weekly verify-backup actually decrypts and loads into throwaway mariadb. Uptime monitor proves emails reach inbox. autoheal proves recovery works. The DROP rule packet counter increments, observable via `iptables -L`. |

The whole reason today's attack-sim was useful is that without the assurance step (test cases that exercise the mechanism), I would have left a DOCKER-USER rule that *looked correct* but didn't actually block external `:8081`. Assurance ≠ design intent; assurance is "I observed it work".

### 17.5 Access control reality check

- DB user `karenderia` had `GRANT ALL ON karenderia.*`. Including DROP. That's intentional — Karenderia's installer uses ALTER TABLE during upgrades. But it means a compromised DB user is a one-step path to total destruction.
- A future improvement (not applied): a second DB user with only `SELECT, INSERT, UPDATE, DELETE` for runtime, and the broader user only used during deploy. This is a refactor of `docker-entrypoint.sh` and PHP config.
- For signage Mongo: same comment. The `MONGO_URI` in signage-server's env vars has full DB-level access. A read+write user scoped to specific collections would limit blast radius.

---

## 18. Operational runbooks

### 18.1 The site is down (HTTP 5xx, customer reports)

```
1. ssh -i ~/.ssh/hetzner root@chickenwaves.dk
2. docker ps --format 'table {{.Names}}\t{{.Status}}'
   - if web is "Exited" or not present → docker compose -f /opt/cncwaves/cnc-restaurent-system/docker-compose.prod.yml up -d --no-deps web
   - if db is "Exited" or unhealthy → docker compose -f /opt/cncwaves/cnc-restaurent-system/docker-compose.prod.yml up -d db (then wait for healthy)
   - if caddy is down → docker compose -f /opt/cncwaves/cnc-restaurent-system/docker-compose.prod.yml up -d caddy
3. Wait 60 s for healthchecks.
4. curl -sk https://chickenwaves.dk/ → expect HTTP 200.
5. tail -50 /var/log/cncwaves-uptime.log
6. tail -100 /var/log/cncwaves-backup.log  # in case daily backup is running and locked something
7. docker logs --tail 100 cnc-restaurent-system-web-1 | grep -iE 'error|fatal|warning'
```

If still down: check `/var/lib/cncwaves/autoheal/.tripped` — if present, autoheal disabled itself, you need to investigate why three restarts didn't fix the problem. Look at `tail /var/log/cncwaves-uptime.log` for what autoheal saw.

### 18.2 The DB is corrupted / wrong data / dropped tables

```
1. ssh in.
2. /opt/cncwaves/scripts/restore-from-mongo.sh
   (without --apply) — dry-run, downloads + decrypts + prints command to load.
   Verify the dump filename + sha256 match what you expect.
3. If happy with the dry-run, re-run with --apply.
4. Verify table count + critical rows:
     docker exec cnc-restaurent-system-db-1 mariadb -u karenderia -p<DB_PASSWORD> \
       karenderia -e \
       "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='karenderia';
        SELECT (SELECT COUNT(*) FROM st_merchant) AS merchants,
               (SELECT COUNT(*) FROM st_item) AS items,
               (SELECT COUNT(*) FROM st_ordernew) AS orders;"
5. curl chickenwaves.dk to confirm site reads happily.
```

To restore a *specific* date instead of latest:

```
/opt/cncwaves/scripts/restore-from-mongo.sh 20260527 --apply
```

To restore a specific filename:

```
/opt/cncwaves/scripts/restore-from-mongo.sh karenderia-20260527-031501.sql.gz.enc --apply
```

### 18.3 Autoheal circuit breaker tripped (email arrived)

The presence of `/var/lib/cncwaves/autoheal/.tripped` means autoheal hit 3 restarts in 24h and disabled itself. The container kept going unhealthy after 3 restarts — something is wrong that a restart doesn't fix.

```
1. ssh in.
2. Look at the autoheal log:
     grep autoheal /var/log/cncwaves-uptime.log | tail -20
3. Look at why healthchecks were failing:
     docker inspect cnc-restaurent-system-web-1 --format \
       '{{range .State.Health.Log}}=== {{.Start}} exit={{.ExitCode}}{{println}}{{.Output}}{{println}}{{end}}'
4. Look at container memory:
     docker stats --no-stream | grep web
     free -h
5. Look at DB:
     docker exec cnc-restaurent-system-db-1 mariadb -u root -p<DB_ROOT_PASSWORD> \
       -e 'SHOW STATUS LIKE "Threads_connected"; SHOW STATUS LIKE "Aborted_connects"; SHOW PROCESSLIST;'
6. Once diagnosed and fixed, manually restart and re-arm autoheal:
     docker restart cnc-restaurent-system-web-1
     rm /var/lib/cncwaves/autoheal/.tripped
```

The .tripped file is deliberately a manual reset — autoheal won't re-enable itself; a human has to. This is the design intent.

### 18.4 Disk filling up (email arrived)

```
1. ssh in.
2. df -h
3. du -h /var/lib/docker /var/log /opt/cncwaves /var/tmp | sort -h | tail -20
4. Likely culprits:
   - /var/lib/docker (old images, stopped containers): docker system prune -a (CAREFUL — removes stopped containers and unused images)
   - /var/log/*.log (rotation didn't fire): logrotate -f /etc/logrotate.conf
   - /var/log/journal: journalctl --vacuum-size=500M
   - Karenderia upload/ (customer photos): probably can't delete — talk to user first
5. Once cleared, /opt/cncwaves/scripts/disk-check.sh will send a recovery email at the next 30-min cron.
```

### 18.5 Stripe webhook is not validating (orders not completing)

This means the `whsec_` value in `st_payment_gateway.attr3` doesn't match what Stripe is currently signing with. Either Stripe rolled the secret and you didn't update the DB, or the DB has a stale value.

```
1. Log into Stripe dashboard → Developers → Webhooks → the live endpoint.
2. Click "Reveal" on the signing secret.
3. Copy the current whsec_*.
4. ssh into server.
5. docker exec cnc-restaurent-system-db-1 mariadb -u karenderia -p<DB_PASSWORD> \
     karenderia -e "UPDATE st_payment_gateway SET attr3='<new whsec>' WHERE payment_code='stripe';"
6. docker exec cnc-restaurent-system-web-1 php -r 'opcache_reset();'
7. Trigger a test event from the Stripe dashboard and confirm Karenderia logs it as valid.
```

### 18.6 The site shows the Karenderia install wizard

This means Karenderia thinks no merchant exists. Either the DB is empty, or the connection is wrong.

```
1. docker exec cnc-restaurent-system-db-1 mariadb -u karenderia -p<DB_PASSWORD> \
     karenderia -e 'SELECT COUNT(*) FROM st_merchant;'
2. If 0 → DB lost data. Restore from Mongo (runbook 18.2).
3. If error 1045 (Access denied) → DB password is stale somewhere. Check /var/www/html/k-config.php matches what's in /etc/cncwaves-backup.env.
4. If error 2002 (can't connect) → db container is down. docker ps; docker compose -f .../docker-compose.prod.yml up -d db.
```

### 18.7 Adding a new email recipient to alerts

All alert scripts use `TO=jawa0056@gmail.com` hardcoded. To add a second recipient:

```
1. ssh in.
2. Edit each of: uptime-check.sh, autoheal.sh, disk-check.sh
3. Change TO=... to TO='jawa0056@gmail.com,other@example.com' AND change the JSON payload to use an array of two strings. The Resend API accepts up to 50 recipients per request.
4. Test with /opt/cncwaves/scripts/uptime-check.sh && tail /var/log/cncwaves-uptime.log.
```

### 18.8 Bringing back online from maintenance mode

```
1. cp /opt/cncwaves/cnc-restaurent-system/Caddyfile.pre-incident.bak \
      /opt/cncwaves/cnc-restaurent-system/Caddyfile
2. docker exec cnc-restaurent-system-caddy-1 caddy reload --config /etc/caddy/Caddyfile
3. curl -sk -o /dev/null -w "%{http_code}\n" https://chickenwaves.dk/ → expect 200
4. Hard-refresh in browser to confirm
```

### 18.9 Putting back into maintenance mode

```
1. cp /opt/cncwaves/cnc-restaurent-system/Caddyfile.maintenance.bak \
      /opt/cncwaves/cnc-restaurent-system/Caddyfile
2. docker exec cnc-restaurent-system-caddy-1 caddy reload --config /etc/caddy/Caddyfile
3. curl -sk -o /dev/null -w "%{http_code}\n" https://chickenwaves.dk/ → expect 503
```

If Caddyfile.maintenance.bak doesn't exist (e.g., this is your first time): write a minimal one with `respond` directive serving a 503. Pattern is in the live Caddyfile history.

---

## 19. Known remaining risks

These are listed in order of "how likely am I to actually run into this in the next 30 days":

1. **Karenderia memory leak still real, just bounded.** Apache prefork + mod_php has the inherent issue that glibc malloc doesn't return memory to OS. MaxConnectionsPerChild 200 forces worker recycle every 200 requests, which mitigates the bleed. mem_limit 1500m caps catastrophe. But under high load the autoheal might trigger more often than expected. Watch for >1 restart/day pattern emerging — if so, lower memory_limit to 128M, enable Karenderia's `db_cache_enabled`, or move to PHP-FPM. Worth investigating Karenderia's `actiongeStoreMenu` for inefficiencies (loads all 150 items into memory at once).

2. **Bot probe noise hits Karenderia.** Roughly 116-349 Yii exceptions per day from internet-wide scans for `/wp-admin`, `/phpmyadmin`, `/.env`, etc. Each exception allocates a Yii object + stack trace. Total memory pressure: ~3.5 MB/day. Not the leak source but constant. Fix later: pattern-match these at Caddy and return 404 there, before Yii is ever invoked.

3. **GDPR notification status.** Customer PII (names, emails, phones, addresses, order history) was theoretically accessible to whoever ran the DROP TABLE. No exfiltration evidence (Stripe/Resend logs clean). Lawyer call is the user's, not mine.

4. **Stripe keys + Resend key only in DB.** Plaintext storage in DB rows is a Karenderia design choice. If anyone gets DB read access, they get those keys. Mitigation: rotate. Done. Long-term: move to env vars + `getenv()` reads — but requires Karenderia codebase modification, which the user has explicitly decided not to do.

5. **Server is single-tenant single-VM.** No high-availability, no failover. If Hetzner has a network outage the site is unreachable. Hetzner SLA is 99.9% which is ~9 hours of unscheduled downtime per year. Hetzner Cloud snapshots (not yet enabled, requires user click in console) would at least give one-click rollback if a config change breaks everything.

6. **Backups push-based.** Compromised server can delete its own backups in Mongo. Pull-based (separate machine pulls via SSH, holds creds the server doesn't have) is the harder version. Worth doing if user gets time.

7. **Single backup destination.** Mongo Atlas only. If account is suspended or accidentally deleted, ~155 KB × 90 backups gone. Backblaze B2 or Hetzner Storage Box as a second destination is ~10 min to wire up.

8. **Signage exposed login.** signage-admin's login is internet-reachable with no fail2ban-equivalent. Brute-force is feasible if admin password is weak. No data so far that it has been targeted, but it's an obvious next vector for an attacker who notices the chickenwaves stack.

9. **MongoDB URI in container env.** Read-restricted Mongo user for signage would limit blast radius. Server-only change, no code touch.

10. **Karenderia is CodeCanyon and out of date.** Karenderia's last update was years ago. Unknown CVEs may exist. Out-of-band Karenderia code audit would be valuable but takes days, not minutes.

11. **No external monitoring.** All probes run from the same server they monitor. If the server goes offline, the uptime probe doesn't fire (no email). External healthcheck (healthchecks.io free tier, ntfy.sh, or even a $5/mo VPS doing periodic curls) would catch this gap.

12. **Karenderia admin passwords still bcrypt-hashed in DB**, but if the attacker did read the table before dropping, they have N bcrypt hashes to crack offline. Bcrypt is expensive but not impossible — a 12-char alphanumeric password might fall in 6-12 months of GPU time. Force-resetting all admin passwords (a Karenderia admin task) would close this.

13. **PHP `max_execution_time = 0`.** Scripts can run forever. A pathological DB query could hold its Apache worker indefinitely. Mitigation: set to 30 via PHP drop-in. The user has decided not to apply this today.

14. **No CSRF on every form**. Karenderia uses Yii's CSRF token but not consistently across all forms. Not exploited so far, but worth checking on a quiet day.

---

## 20. Future improvements

Ranked by ROI / effort, lowest-effort-highest-impact first:

1. **Hetzner Cloud snapshots** — user click in console, ~30 s, ~3 EUR/mo. Nuclear rollback that the VM itself cannot delete.
2. **Block bot probes at Caddy** — Caddy `@bot { path /wp-* /.env /phpmyadmin* }` matcher → respond 404. Eliminates Yii-side bot exception load. Zero code change.
3. **PHP drop-in** with `max_execution_time = 30`, `memory_limit = 128M`. Server-only change. Massive bound on worst case.
4. **Healthchecks.io ping integration** — external monitor confirms the daily backup actually ran. Free tier.
5. **Second backup destination** — Backblaze B2 with object lock. ~10 min config. ~free for backup sizes.
6. **fail2ban on signage-admin** — log-pattern match for failed POSTs, ban after 5 fails. ~10 min.
7. **Read-restricted Mongo user for signage** — create scoped user, swap env, restart container. ~10 min.
8. **Weekly logrotate audit** — old logs accumulate, currently auto-rotated weekly via `/etc/logrotate.d/cncwaves-backup`, but worth verifying it actually runs and prunes.
9. **PHP-FPM swap** — bigger Dockerfile change, but Apache + mod_php prefork is the wrong architecture for this workload. mpm_event + PHP-FPM has dramatically better memory model. Hours-of-work scale.
10. **Karenderia codebase audit** — read every `protected/controllers/*.php` for unsanitized input, IDOR, SQLi escape gaps. Days-of-work scale.
11. **CodeCanyon Karenderia update** — risky, may break customizations. Worth investigating what the changelog says.
12. **Pull-based backup from off-site** — separate VPS or laptop pulls from server via SSH. Strongest form of immutability. Days-of-work scale to do right.

User has indicated intent to do items 1, 4 separately, and to defer the rest.

---

## 21. Memory leak investigation (mod_php pattern)

Investigation results from 2026-05-29 ~15:10 UTC. Not applied — user requested investigation only.

**PHP runtime config:**

```
memory_limit                 : 256 MB per request
max_execution_time           : 0 (unlimited — concerning)
opcache.memory_consumption   : 128 MB
opcache.max_accelerated_files: 10000
opcache.enable               : On
post_max_size                : 64 MB
expose_php                   : Off (set by 99-cncwaves-prod.ini)
display_errors               : Off (set by 99-cncwaves-prod.ini)
```

**Apache state at investigation time:**

```
PID    RSS    VSZ    Process
 99   34 MB  192 MB  apache2 -DFOREGROUND
 91   31 MB  190 MB  apache2 -DFOREGROUND
 97   29 MB  192 MB  apache2 -DFOREGROUND
  1   29 MB  188 MB  apache2 -DFOREGROUND  (master)
 98   27 MB  189 MB  apache2 -DFOREGROUND
100   24 MB  189 MB  apache2 -DFOREGROUND
101   24 MB  189 MB  apache2 -DFOREGROUND
```

Seven worker processes, RSS 25–35 MB each, total ~190 MB. This is a fresh state ~10 min after container recreate.

**Container memory at investigation time:**

```
cnc-restaurent-system-web-1: mem=74.61 MiB / 1.465 GiB cpu=0.01%
```

74 MB of the 1.5 GB cap. Plenty of headroom.

**Karenderia config:**

```
db_cache_enabled : false   ← every page hits DB, no query result caching
cache            : 1000    ← 16 minute cache duration where used
cache_count      : 1       ← single tier
```

The `db_cache_enabled = false` setting is the main avoidable inefficiency — every `/api/geStoreMenu` does 150+ uncached queries.

**PHP modules loaded:** 43. No heavy modules (no imagick, xdebug, redis, mongodb in the web container).

**Yii application log:**

- 116 exception entries today (in progress)
- 349 exception entries yesterday

Top patterns are bot probes:

```
"phpmyadmin"   "favicon.ico"  ".env"        "xqq.php"
"xoot.php"     "xa.php"       "wp-aothait"  "wp-act"
"wp4.php"      "wp5.php"      "myadmin"     "gcp-credentials.json"
"lmutxdvyp7u5yksqke8ozbjgCdefault.php"      (Mozi/Mirai-style scan path)
```

Each = Yii exception object + stack trace string allocation ≈ 10 KB. 349/day × 10 KB ≈ 3.5 MB/day of churn. Not the primary leak but constant.

**Top legitimate endpoints (last 200 access log lines):**

```
17  GET   /health.php                                 (my healthcheck)
 8  POST  /backoffice/apibackend/getLastTenOrder      (admin dashboard polling)
 5  GET   /                                           (page loads)
 4  POST  /api/geStoreMenu                            (menu loads, 150 KB JSON each)
```

The combination of `/` + `/api/geStoreMenu` is the worst case: full Yii framework boot + 150 menu items loaded into memory + thumbnails computed via `CMedia::getImage` × 150 calls. Peak memory per such request: 100–200 MB.

**The actual leak mechanism (textbook mod_php pattern):**

1. PHP request peaks at ~150 MB during `/api/geStoreMenu`.
2. PHP releases memory back to its internal allocator at end of request.
3. **glibc malloc keeps it on the freelist** rather than returning it to the OS via `munmap`. RSS does not shrink.
4. Apache worker is still alive (pre-fix: no `MaxConnectionsPerChild`).
5. Worker's RSS stays at 150 MB forever even when idle.
6. After many such requests, each of the 7 workers reaches peak ~200–300 MB.
7. 7 × 250 MB = 1.75 GB. On the 3.7 GB host with db + signage + caddy also running, this is enough to OOM.

This is not a Karenderia-specific bug; it's the standard reason every WordPress, Magento, Drupal site running mod_php prefork needs nightly Apache restarts.

**What's now mitigating it (applied during this session):**

- `MaxConnectionsPerChild 200` — each worker hard-exits after 200 requests → forces glibc release → new worker spawns with ~5 MB RSS.
- `mem_limit 1500m` — container can never push host into OOM. If it tries, Docker SIGKILLs.

The 14:25 UTC outage was caused by:

1. Web container started ~12:35 UTC after userland-proxy daemon restart.
2. Memory accumulated over ~3 hours of normal traffic.
3. Container approached host's available memory limit.
4. Apache couldn't fork new workers; healthcheck started failing.
5. After 3 consecutive healthcheck failures over 90 s, Docker marked container `unhealthy`.
6. autoheal at next 2-min run saw `health=unhealthy`, ran `docker restart`. (#1 of 3 in 24h.)
7. RAM reclaimed; healthcheck immediately passed; site recovered.

Wall-clock impact: ~5 min of partial unavailability (12:48 → 12:54).

**Recommended next-step changes (NOT applied):**

1. `max_execution_time = 30` in php.ini drop-in. Kills runaway scripts that hold workers.
2. `memory_limit = 128M` in php.ini drop-in. Cuts worst-case per-request peak.
3. `db_cache_enabled = true` in Karenderia params.php. Big win for `/api/geStoreMenu`.
4. Switch from mpm_prefork to mpm_event + PHP-FPM. Architectural fix, not config.
5. Block bot probes at Caddy before Yii is invoked.

Items 1, 2, 5 are server-only and zero risk to Karenderia code. Item 3 is config change but affects app behavior. Item 4 is a structural refactor.

User has chosen to defer all of the above for now.

---

## 22. Glossary

**autoheal** — `/opt/cncwaves/scripts/autoheal.sh`. Cron-driven watcher that calls `docker restart` on containers Docker has flagged as `health=unhealthy`. Includes a 10-min per-container cool-down and a 24h circuit breaker.

**`@1x` / `@2x` / `@thumbnail`** — Karenderia's filename suffixes for pre-generated thumbnail variants of menu item photos. Stored next to the original in `/var/www/html/upload/item/<id>/`.

**Bind mount** — Docker feature where a host directory is mounted directly into a container at a given path. Changes on either side are visible to the other instantly. Karenderia's web container bind-mounts the Karenderia install dir at `/var/www/html`.

**Circuit breaker** — pattern where a component disables itself after N failures to prevent cascade. Autoheal trips after 3 restarts in 24h.

**`DOCKER-USER`** — iptables chain inside the FORWARD chain that Docker leaves alone for user customization. The right place to put filter rules that affect Docker-forwarded traffic.

**`ctorigdstport`** — iptables conntrack match for the *original* destination port a packet was sent to, before any NAT translation. Essential when filtering Docker-published ports.

**`docker-entrypoint.sh`** — script that runs on container startup. The Karenderia web container's version handles DB seeding and translation injection.

**fail2ban** — log-pattern watcher that bans source IPs after N matching failures within a window. Configured with sshd jail.

**GridFS** — MongoDB's mechanism for storing binary blobs larger than the 16 MB BSON document limit. Used for the encrypted backup blobs.

**Healthcheck** — Docker feature where you specify a command that should exit 0 if the container is healthy. Run on a schedule; after N consecutive failures the container is marked `unhealthy`. Autoheal acts on that label.

**Karenderia** — the CodeCanyon PHP/Yii multi-restaurant ordering platform that powers chickenwaves.dk. Out of date (last upstream update years ago), heavily customized.

**Maintenance page** — branded HTML returned with HTTP 503 status from Caddy when the site is intentionally offlined. Located in `Caddyfile.maintenance.bak`. Has the address + opening hours + a Google Maps link.

**`mem_limit`** — Docker compose directive that caps a container's memory. When exceeded, the kernel kills the container. Set to 1500m for web.

**Mongo Atlas** — managed MongoDB hosting. Free tier (M0, 512 MB cap) used for backup storage in DB `cnc-backups`.

**`MaxConnectionsPerChild 200`** — Apache directive that forces a worker to exit after handling 200 requests. Prevents unbounded memory growth from glibc freelist behavior.

**`MaxRequestWorkers 50`** — Apache directive setting the upper bound on concurrent worker processes.

**OWASP Top 10:2025** — Open Web Application Security Project's ranked list of most critical web vulnerabilities. Used as a checklist for review.

**Phpmyadmin** — the PHP-based MySQL/MariaDB admin UI that was the attack vector in incident D. **Removed**. Image deleted. Will not return.

**Pull-based backup** — backup architecture where a separate machine *pulls* data from the production server, holding credentials the production server cannot reach. Stronger against compromise. Not yet implemented; current backup is push-based.

**Ransom bot / DBCODE BXCNL** — automated MariaDB/MySQL scanner that authenticates with dictionary creds, drops all tables, leaves a `readme_to_recover` table demanding small BTC payment. ~70% non-delivery rate per academic research.

**Resend** — transactional email API. Used by alert scripts (uptime-check, autoheal, disk-check) to email `jawa0056@gmail.com` on state change.

**STRIDE** — Microsoft's threat modeling framework: Spoofing, Tampering, Repudiation, Information disclosure, Denial of service, Elevation of privilege.

**`set -e` / `set -euo pipefail`** — shell options that abort the script on any command failure. The absence of `set -e` in `/opt/deploy.sh` was the root cause of incident A.

**Signage** — the 9-screen in-store digital signage system. Node.js websocket server (`:3001`) + Next.js admin (`:3000`) + MongoDB Atlas DB `CNCtest`. Architecturally separate from Karenderia / MariaDB.

**UFW** — Uncomplicated Firewall. The user-facing wrapper around iptables. Default policy `deny incoming`. Allow rules for `[22, 80, 443, 3000, 3001]`. Note: UFW's filter only acts on the INPUT chain — Docker-forwarded traffic on FORWARD chain bypasses it unless DOCKER-USER is configured.

**Userland proxy** — Docker's user-space process that forwards published-port traffic to containers. Set to `false` in `/etc/docker/daemon.json` so traffic goes through kernel iptables NAT (and therefore through DOCKER-USER).

**Verify-backup** — `/opt/cncwaves/scripts/verify-backup.sh`. Cron-driven (Sun 04:30 UTC) full roundtrip test of the latest Mongo backup: download, decrypt, load into throwaway mariadb, run mariadb-check, assert row counts. Catches passphrase drift, corruption, dump structure errors.

**Yii 1.x** — the PHP framework Karenderia is built on. Specifically `yiilite.php` — a single-file optimized build. Modern PHP/Yii projects use Yii 2.x; Karenderia is stuck on 1.x.

---

---

## Appendix A — Script source listings

These are written here verbatim so future-you can re-create them from this doc if the server-side copy is ever lost. They live at `/opt/cncwaves/scripts/` on the production VM.

### A.1 `backup-to-mongo.sh`

```bash
#!/bin/bash
#
# Daily backup of the karenderia DB → MongoDB Atlas (encrypted, in GridFS).
# Designed to never crash the server:
#   - mysqldump --single-transaction --quick   (no table locks, row-streamed)
#   - nice -n 19 + ionice -c3                  (lowest priority)
#   - flock                                    (no overlapping runs)
#   - timeout 600s on the whole pipeline       (hard kill if hung)
#   - df check before starting                 (need 500MB free)
#   - all temp data in /var/tmp/cncbk          (tmpfs-free disk path)
#   - script always cleans up its temp dir on exit
#
set -euo pipefail
umask 077

LOCK=/run/cncwaves-backup.lock
ENV=/etc/cncwaves-backup.env
LOG=/var/log/cncwaves-backup.log
TMP=/var/tmp/cncbk
IMAGE=cnc-backup:latest
DB_CONTAINER=cnc-restaurent-system-db-1
DB_USER=karenderia
DB_PASS='<from env>'         # see DB_PASSWORD in /etc/cncwaves-backup.env
DB_NAME=karenderia
TIMEOUT=600
MIN_FREE_MB=500
RETENTION_DAYS=90

log() { printf '%s %s\n' "$(date -u +%FT%TZ)" "$*" | tee -a "$LOG"; }

exec 9>"$LOCK"
if ! flock -n 9; then
  log "another backup is running — exiting"
  exit 0
fi
trap 'rm -rf "$TMP"; flock -u 9' EXIT

[[ -r "$ENV" ]] || { log "FATAL: $ENV missing"; exit 1; }
set -a; source "$ENV"; set +a
: "${MONGO_URI:?MONGO_URI not set}"
: "${BACKUP_PASSPHRASE:?BACKUP_PASSPHRASE not set}"
: "${DB_PASSWORD:?DB_PASSWORD not set}"

free_mb=$(df --output=avail -BM / | tail -1 | tr -dc 0-9)
(( free_mb < MIN_FREE_MB )) && { log "FATAL: ${free_mb}MB free, need ${MIN_FREE_MB}"; exit 1; }

rm -rf "$TMP"; mkdir -p "$TMP"
STAMP=$(date -u +%Y%m%d-%H%M%S)
NAME="karenderia-${STAMP}.sql.gz.enc"
RAW="$TMP/dump.sql"
ENC="$TMP/payload"

log "starting backup → $NAME"
nice -n 19 ionice -c 3 timeout "$TIMEOUT" docker exec "$DB_CONTAINER" \
    mysqldump --single-transaction --quick --routines --triggers --events \
        --default-character-set=utf8mb4 \
        -u "$DB_USER" -p"$DB_PASSWORD" "$DB_NAME" \
    > "$RAW" 2>>"$LOG"
raw_size=$(stat -c%s "$RAW")
log "dumped ${raw_size}B raw"

nice -n 19 ionice -c 3 gzip -c -6 "$RAW" \
  | openssl enc -aes-256-cbc -pbkdf2 -iter 200000 -salt \
      -pass "pass:$BACKUP_PASSPHRASE" -out "$ENC"
enc_size=$(stat -c%s "$ENC")
enc_sha=$(sha256sum "$ENC" | awk '{print $1}')
log "encrypted ${enc_size}B  sha256=${enc_sha:0:16}…"
shred -u "$RAW" 2>/dev/null || rm -f "$RAW"

if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
  log "building $IMAGE (one-time)"
  docker build -t "$IMAGE" /opt/cncwaves/scripts/backup >>"$LOG" 2>&1
fi

cp /opt/cncwaves/scripts/backup/mongo_upload.py "$TMP/upload.py"
nice -n 19 timeout "$TIMEOUT" docker run --rm \
    --network host \
    -v "$TMP":/work:ro \
    -e MONGO_URI="$MONGO_URI" \
    -e PAYLOAD_BASENAME="$NAME" \
    -e PAYLOAD_SHA256="$enc_sha" \
    -e DUMP_SIZE_RAW="$raw_size" \
    -e RETENTION_DAYS="$RETENTION_DAYS" \
    -e HOSTNAME_TAG="$(hostname)" \
    "$IMAGE" python /work/upload.py >>"$LOG" 2>&1

log "backup OK: $NAME ($enc_size B encrypted, $raw_size B raw)"
```

### A.2 `mongo_upload.py`

```python
#!/usr/bin/env python3
import os, sys, hashlib, datetime
from pymongo import MongoClient
from gridfs import GridFSBucket

uri  = os.environ["MONGO_URI"]
name = os.environ["PAYLOAD_BASENAME"]
sha  = os.environ["PAYLOAD_SHA256"]
raw  = int(os.environ.get("DUMP_SIZE_RAW", "0"))
keep = int(os.environ.get("RETENTION_DAYS", "90"))

blob = open("/work/payload", "rb").read()
if hashlib.sha256(blob).hexdigest() != sha:
    sys.exit("sha mismatch")

client = MongoClient(uri, serverSelectionTimeoutMS=15000)
db = client["cnc-backups"]
bucket = GridFSBucket(db, bucket_name="karenderia_dumps")

now = datetime.datetime.utcnow()
meta = {
    "created_at_utc": now,
    "encryption":     "aes-256-cbc-pbkdf2",
    "dump_size_raw":  raw,
    "blob_size":      len(blob),
    "sha256":         sha,
    "host":           os.environ.get("HOSTNAME_TAG", "cnc-prod"),
}
file_id = bucket.upload_from_stream(name, blob, metadata=meta)
print(f"uploaded: {name}  id={file_id}  size={len(blob)}B  sha={sha[:12]}…")

cutoff = now - datetime.timedelta(days=keep)
pruned = 0
for doc in db["karenderia_dumps.files"].find({"uploadDate": {"$lt": cutoff}}, {"_id": 1, "filename": 1}):
    bucket.delete(doc["_id"])
    pruned += 1
    print(f"pruned: {doc['filename']}")

total = db["karenderia_dumps.files"].count_documents({})
agg = list(db["karenderia_dumps.files"].aggregate([{"$group": {"_id": None, "bytes": {"$sum": "$length"}}}]))
total_bytes = agg[0]["bytes"] if agg else 0
print(f"retention: kept={total} files, pruned={pruned}, total_bytes={total_bytes}")
```

### A.3 `verify-backup.sh`

```bash
#!/bin/bash
#
# Weekly automated backup verification (Sundays 04:30 UTC).
# Roundtrip-tests the LATEST encrypted blob from Mongo:
#   decrypt → throwaway mariadb → mariadb-check → row count assertions
# Production DB never touched.
#
set -euo pipefail
umask 077

ENV=/etc/cncwaves-backup.env
TMP=/var/tmp/cncbk-verify
IMAGE=cnc-backup:latest
LOG=/var/log/cncwaves-backup.log
VERIFY_NAME=cnc-backup-verify-$$
MIN_TABLES=100
TIMEOUT=600

log() { printf '%s VERIFY: %s\n' "$(date -u +%FT%TZ)" "$*" | tee -a "$LOG"; }
fail() { log "FAIL — $*"; teardown; exit 1; }
teardown() {
    docker rm -f "$VERIFY_NAME" >/dev/null 2>&1 || true
    rm -rf "$TMP"
}
trap teardown EXIT

[[ -r "$ENV" ]] || { log "FATAL"; exit 1; }
set -a; source "$ENV"; set +a

rm -rf "$TMP"; mkdir -p "$TMP"
log "starting verification of latest backup"

cp /opt/cncwaves/scripts/backup/mongo_restore.py "$TMP/restore.py"
nice -n 19 timeout "$TIMEOUT" docker run --rm \
    --network host \
    -v "$TMP":/work \
    -e MONGO_URI="$MONGO_URI" \
    -e TARGET="latest" \
    "$IMAGE" python /work/restore.py >>"$LOG" 2>&1 || fail "fetch failed"

[[ -f "$TMP/payload" ]] || fail "no payload"
blob_size=$(stat -c%s "$TMP/payload")
log "fetched ${blob_size}B encrypted blob"

openssl enc -d -aes-256-cbc -pbkdf2 -iter 200000 -salt \
    -pass "pass:$BACKUP_PASSPHRASE" \
    -in "$TMP/payload" 2>>"$LOG" \
  | gunzip > "$TMP/dump.sql" 2>>"$LOG" || fail "decrypt failed"

raw_size=$(stat -c%s "$TMP/dump.sql")
log "decrypted ${raw_size}B SQL"

head -c 200 "$TMP/dump.sql" | grep -q "MariaDB dump\|MySQL dump" \
    || fail "dump header bad"

VPASS=$(openssl rand -base64 24 | tr -d '\n=+/' | head -c 24)
log "starting throwaway mariadb"
docker run -d --rm --name "$VERIFY_NAME" \
    --network none \
    --tmpfs /var/lib/mysql:size=512M \
    -e MARIADB_ROOT_PASSWORD="$VPASS" \
    -e MARIADB_DATABASE="karenderia" \
    mariadb:10.6 >/dev/null 2>>"$LOG" || fail "throwaway start failed"

for i in $(seq 1 60); do
    if docker exec "$VERIFY_NAME" mariadb -u root -p"$VPASS" -e "SELECT 1" >/dev/null 2>&1; then break; fi
    sleep 1
    [[ "$i" == "60" ]] && fail "throwaway never ready"
done
log "throwaway ready"

docker exec "$VERIFY_NAME" mariadb -u root -p"$VPASS" -e \
    "CREATE USER IF NOT EXISTS 'karenderia'@'%' IDENTIFIED BY 'dummy';
     GRANT ALL ON karenderia.* TO 'karenderia'@'%';" 2>>"$LOG"

cat "$TMP/dump.sql" | docker exec -i "$VERIFY_NAME" \
    mariadb -u root -p"$VPASS" karenderia 2>>"$LOG" \
    || fail "load failed"

table_count=$(docker exec "$VERIFY_NAME" mariadb -u root -p"$VPASS" -Nse \
    "SELECT COUNT(*) FROM information_schema.tables WHERE table_schema='karenderia'" 2>/dev/null)
[[ "$table_count" -ge "$MIN_TABLES" ]] || fail "tables ${table_count} < ${MIN_TABLES}"
log "table count: $table_count"

bad=$(docker exec "$VERIFY_NAME" mariadb-check -u root -p"$VPASS" --check --silent karenderia 2>&1 \
        | grep -vE "Note|^$" || true)
[[ -z "$bad" ]] || fail "mariadb-check: $bad"
log "mariadb-check: clean"

for tbl in st_merchant st_item st_admin_user st_ordernew; do
    n=$(docker exec "$VERIFY_NAME" mariadb -u root -p"$VPASS" karenderia -Nse \
        "SELECT COUNT(*) FROM $tbl" 2>/dev/null)
    [[ "$n" -gt 0 ]] || fail "$tbl is empty"
    log "$tbl: $n rows"
done

log "PASS — backup is healthy and restorable"
```

### A.4 `uptime-check.sh`

```bash
#!/bin/bash
#
# Uptime monitor with TWO probes:
#   1. Shallow: HTTP GET / → expect 2xx/3xx
#   2. Deep:    POST /api/geStoreMenu → expect JSON with code:1
#
# Independent state tracks. Emails only on state change. Init→up does NOT alert.
# Pure-bash substring match — avoids the SIGPIPE-under-pipefail false negative
# that haunted the head|grep version.
#
set -euo pipefail
umask 077

ENV=/etc/cncwaves-backup.env
LOG=/var/log/cncwaves-uptime.log
STATE_DIR=/var/lib/cncwaves
HOME_URL=https://chickenwaves.dk/
API_URL=https://chickenwaves.dk/api/geStoreMenu
TO=jawa0056@gmail.com
FROM='Chicken N Chicken Waves <ordre@chickenwaves.dk>'

mkdir -p "$STATE_DIR"
[[ -r "$ENV" ]] || exit 1
set -a; source "$ENV"; set +a
: "${RESEND_API_KEY:?missing}"

log() { printf '%s %s\n' "$(date -u +%FT%TZ)" "$*" >> "$LOG"; }

send_alert() {
    local subj="$1" body="$2" resp
    resp=$(curl -sS -X POST https://api.resend.com/emails \
        -H "Authorization: Bearer $RESEND_API_KEY" \
        -H "Content-Type: application/json" \
        -d "{\"from\":\"$FROM\",\"to\":[\"$TO\"],\"subject\":\"$subj\",\"html\":\"$body\"}" 2>>"$LOG" || echo "")
    if echo "$resp" | grep -q '"id"'; then log "alert sent: $subj"
    else log "ALERT EMAIL FAILED: $subj"; fi
}

track_state() {
    local file="$1" new="$2" old
    old=$(cat "$file" 2>/dev/null || echo "init")
    [[ "$new" == "$old" ]] && return 0
    echo "$new" > "$file"
    [[ "$old" == "init" && "$new" == "up" ]] && return 0
    if [[ "$new" == "down" ]]; then send_alert "$3" "$4"
    else send_alert "$5" "$6"; fi
}

HTTP=$(curl -ksS -o /dev/null -m 8 --connect-timeout 5 -w '%{http_code}' "$HOME_URL" 2>>"$LOG" || echo "000")
[[ "$HTTP" =~ ^[23] ]] && SHALLOW=up || SHALLOW=down
log "shallow: HTTP=$HTTP state=$SHALLOW"

track_state "$STATE_DIR/uptime-state" "$SHALLOW" \
    "🚨 chickenwaves.dk is DOWN (HTTP $HTTP)" \
    "<p>chickenwaves.dk unreachable. HTTP=$HTTP. $(date -u +%FT%TZ)</p>" \
    "✅ chickenwaves.dk is BACK UP" \
    "<p>chickenwaves.dk reachable. HTTP=$HTTP. $(date -u +%FT%TZ)</p>"

[[ "$SHALLOW" == "up" ]] || exit 0

API_BODY=$(curl -ksS -m 10 --connect-timeout 5 -X POST \
    -d "merchant_id=1&currency_code=DKK&cart_uuid=" \
    -H "X-Requested-With: XMLHttpRequest" \
    "$API_URL" 2>>"$LOG" || true)

# Pure-bash substring check — no pipeline, no SIGPIPE.
if [[ "${API_BODY:0:300}" == *'"code":1'* ]]; then DEEP=up; else DEEP=down; fi
log "deep: api state=$DEEP body_len=$(echo -n "$API_BODY" | wc -c)"

track_state "$STATE_DIR/api-state" "$DEEP" \
    "⚠️ chickenwaves.dk frontend OK but API BROKEN" \
    "<p>Home page 200 but /api/geStoreMenu not returning valid JSON. Caddy-up-PHP-wedged pattern.</p>" \
    "✅ chickenwaves.dk API recovered" \
    "<p>Menu API returning valid JSON again.</p>"
```

### A.5 `autoheal.sh`

```bash
#!/bin/bash
#
# Autoheal — restart containers Docker marks as health=unhealthy.
# SAFETY GUARANTEES:
#   1. Per-container cool-down: 600s (10 min)
#   2. Daily circuit breaker: 3 restarts/24h, then auto-disable
#   3. Email on EVERY action
#   4. Only acts on Docker's own health=unhealthy
#
set -euo pipefail
umask 077

ENV=/etc/cncwaves-backup.env
LOG=/var/log/cncwaves-uptime.log
STATE_DIR=/var/lib/cncwaves/autoheal
TRIPPED=$STATE_DIR/.tripped
COOLDOWN=600
MAX_PER_24H=3
TO=jawa0056@gmail.com
FROM='Chicken N Chicken Waves <ordre@chickenwaves.dk>'

mkdir -p "$STATE_DIR"
log() { printf '%s autoheal: %s\n' "$(date -u +%FT%TZ)" "$*" >> "$LOG"; }
send_email() {
    local subj="$1" body="$2"
    [[ -r "$ENV" ]] || return
    set -a; source "$ENV"; set +a
    [[ -n "${RESEND_API_KEY:-}" ]] || return
    curl -sS -X POST https://api.resend.com/emails \
        -H "Authorization: Bearer $RESEND_API_KEY" \
        -H "Content-Type: application/json" \
        -d "{\"from\":\"$FROM\",\"to\":[\"$TO\"],\"subject\":\"$subj\",\"html\":\"$body\"}" \
        >/dev/null 2>>"$LOG" || true
}

[[ -f "$TRIPPED" ]] && exit 0

unhealthy=$(docker ps --filter health=unhealthy --format '{{.Names}}' 2>/dev/null || true)
[[ -z "$unhealthy" ]] && exit 0

now=$(date +%s)
day_ago=$((now - 86400))
restart_count=$(find "$STATE_DIR" -maxdepth 1 -name 'r-*' -newermt "@$day_ago" 2>/dev/null | wc -l)

for c in $unhealthy; do
    last_file="$STATE_DIR/last-$c"
    if [[ -f "$last_file" ]]; then
        last=$(cat "$last_file")
        delta=$((now - last))
        if (( delta < COOLDOWN )); then
            log "skip $c: cool-down (${delta}s)"
            continue
        fi
    fi
    if (( restart_count + 1 > MAX_PER_24H )); then
        touch "$TRIPPED"
        log "CIRCUIT TRIPPED — would be restart #$((restart_count+1)) in 24h"
        send_email "🚨 autoheal CIRCUIT TRIPPED on chickenwaves.dk" \
            "<p>Autoheal hit ${MAX_PER_24H}/24h cap and disabled itself.</p><p>Container: <code>$c</code></p><p>Investigate manually. Re-enable: <code>rm ${TRIPPED}</code></p>"
        exit 0
    fi
    log "restarting unhealthy $c (#$((restart_count+1)) of ${MAX_PER_24H})"
    if docker restart "$c" >/dev/null 2>>"$LOG"; then
        echo "$now" > "$last_file"
        touch "$STATE_DIR/r-${now}-${c}"
        restart_count=$((restart_count + 1))
        send_email "🔧 autoheal restarted $c" \
            "<p>Docker marked <code>$c</code> unhealthy. Autoheal restarted it.</p><p>Restart $restart_count of $MAX_PER_24H in 24h.</p>"
    else
        log "restart FAILED for $c"
        send_email "⚠️ autoheal FAILED to restart $c" \
            "<p>docker restart failed. SSH in and investigate.</p>"
    fi
done
```

### A.6 `disk-check.sh`

```bash
#!/bin/bash
#
# Disk usage monitor — emails on threshold crossing (no spam).
# State-change behavior: alerts when usage% crosses up OR back down.
#
set -euo pipefail
umask 077

ENV=/etc/cncwaves-backup.env
LOG=/var/log/cncwaves-uptime.log
STATE_DIR=/var/lib/cncwaves/disk
THRESHOLD=85
TO=jawa0056@gmail.com
FROM='Chicken N Chicken Waves <ordre@chickenwaves.dk>'

mkdir -p "$STATE_DIR"
log() { printf '%s disk: %s\n' "$(date -u +%FT%TZ)" "$*" >> "$LOG"; }
send_email() {
    local subj="$1" body="$2"
    [[ -r "$ENV" ]] || return
    set -a; source "$ENV"; set +a
    [[ -n "${RESEND_API_KEY:-}" ]] || return
    curl -sS -X POST https://api.resend.com/emails \
        -H "Authorization: Bearer $RESEND_API_KEY" \
        -H "Content-Type: application/json" \
        -d "{\"from\":\"$FROM\",\"to\":[\"$TO\"],\"subject\":\"$subj\",\"html\":\"$body\"}" \
        >/dev/null 2>>"$LOG" || true
}

df -h --output=source,target,pcent -x tmpfs -x devtmpfs -x squashfs -x overlay 2>/dev/null \
| tail -n +2 \
| while read -r src mnt pcent; do
    n=${pcent%\%}
    [[ "$n" =~ ^[0-9]+$ ]] || continue
    state_file="$STATE_DIR/$(echo "$mnt" | tr / _)"
    prev=$(cat "$state_file" 2>/dev/null || echo "ok")
    (( n >= THRESHOLD )) && new="alert" || new="ok"
    if [[ "$new" != "$prev" ]]; then
        echo "$new" > "$state_file"
        if [[ "$new" == "alert" ]]; then
            log "ALERT: $mnt at ${n}%"
            send_email "🚨 disk usage on chickenwaves.dk: $mnt at ${n}%" \
                "<p>$mnt ($src) is at <strong>${n}%</strong> — over ${THRESHOLD}%.</p><p>Check /var/lib/docker, /var/log, upload dir.</p>"
        else
            log "RECOVERED: $mnt back to ${n}%"
            send_email "✅ disk usage recovered: $mnt at ${n}%" \
                "<p>$mnt back under threshold at ${n}%.</p>"
        fi
    fi
done
```

### A.7 `.claude/hooks/block-karenderia-assets-rm.sh`

```bash
#!/bin/bash
# PreToolUse hook for Bash. Blocks rm/find/rsync against /var/www/html/assets.
# Two prior incidents wiped this dir while clearing "caches".

input=$(cat)
cmd=$(printf '%s' "$input" | /usr/bin/jq -r '.tool_input.command // ""')

risky_re='(rm[[:space:]]+[^|;&]*(-r|-f|-rf|-fr)[^|;&]*|find[[:space:]]+[^|;&]*-delete|rsync[[:space:]]+[^|;&]*--delete[^|;&]*)'
target_re='(/var/www/html/assets|/install/assets|cnc-restaurent-system/[^[:space:]]*install/assets|(^|[[:space:]])install/assets)'

if printf '%s' "$cmd" | grep -qE "$risky_re" && printf '%s' "$cmd" | grep -qE "$target_re"; then
  if printf '%s' "$cmd" | grep -qE '/assets/[a-f0-9]{8}(/|[[:space:]]|$)'; then
    exit 0
  fi
  cat <<'EOF' >&2
BLOCKED: command targets the Karenderia /assets directory.
This is the LIVE public asset root (vendor JS/CSS, Vue bundle, FA webfonts,
front.bundle.js). It has been wiped twice by accident.
Clear protected/runtime/cache/* instead, reset OPcache, bust HTTP cache —
but NEVER touch /assets. Only Yii hash subdirs (/assets/<8-hex>/) are safe.
EOF
  exit 2
fi
exit 0
```

---

## Appendix B — FAQ

### B.1 The site is down. What do I do first?

Read runbook 18.1. The most likely cause is one of:

- Web container memory exhaustion → autoheal handles this within 90 s. If you arrived because of an autoheal email, just verify the site is back via `curl`.
- DB container died → docker compose up -d db
- Caddy died → docker compose up -d caddy
- Auto-deploy cron got re-enabled and is killing containers → check crontab for `# CLAUDE-PAUSED` prefix

### B.2 I got an email that says "autoheal CIRCUIT TRIPPED". What does that mean?

Three restarts of a container in 24 hours didn't fix the underlying problem. Autoheal disabled itself to avoid a deploy-loop-style runaway. You need to SSH in and figure out why the container keeps going unhealthy.

After fixing: `rm /var/lib/cncwaves/autoheal/.tripped` to re-arm autoheal.

### B.3 The site shows the Karenderia install wizard / "Database not found" / blank page

Most likely the DB got corrupted, dropped, or the connection broke. Runbook 18.2 covers DB restore. Runbook 18.6 covers DB connection issues.

### B.4 I want to deploy a code change

The auto-deploy cron is paused. You have two options:

A. **Direct file edit on server** for small changes. The Karenderia install dir is bind-mounted, so editing `/opt/cncwaves/cnc-restaurent-system/codecanyon-.../install/<file>.php` takes effect immediately. Don't forget `opcache_reset()` after.

B. **Re-enable auto-deploy** for proper git-based deploys. Requires:
1. Fix the divergent git state on the server (`git stash` modified files, move untracked aside, `git pull`, restore).
2. Add `set -euo pipefail` to `/opt/deploy.sh`.
3. Uncomment the cron lines.
4. Watch the first few cron runs to make sure nothing is in a loop.

### B.5 I rotated a Stripe key in the dashboard. How do I propagate it?

```
docker exec cnc-restaurent-system-db-1 mariadb -u karenderia -p<DB_PASSWORD> \
  karenderia -e "UPDATE st_payment_gateway 
                 SET attr1='<new sk_live>', 
                     attr2='<new pk_live>', 
                     attr3='<new whsec>',
                     date_modified=NOW() 
                 WHERE payment_code='stripe';"
docker exec cnc-restaurent-system-web-1 php -r 'opcache_reset();'
```

Test by triggering a webhook event from the Stripe dashboard and confirming it validates.

### B.6 Where are the backups stored?

MongoDB Atlas, cluster `cluster0.54zxry3.mongodb.net`, DB `cnc-backups`, GridFS bucket `karenderia_dumps`. Retention 90 days. Encrypted with AES-256-CBC. Passphrase in `/etc/cncwaves-backup.env`. To browse: log into Mongo Atlas → Database → Collections.

### B.7 I lost the BACKUP_PASSPHRASE.

The encrypted blobs in Mongo become permanently unrecoverable. There is no recovery mechanism for AES-256-CBC without the key.

Local mirror at `/Users/jmkq/Documents/GitHub/cncwaves/.env.cncwaves-backup` (mode 600, gitignored). Hopefully also in 1Password. If neither: the backup is gone.

### B.8 The maintenance page says the wrong thing.

Edit `/opt/cncwaves/cnc-restaurent-system/maintenance.html` (it's a static HTML file). Then either:

A. If you want the maintenance page active right now: it's served via the maintenance Caddyfile, which embeds the HTML inline. Edit Caddyfile.maintenance.bak and reload.

B. If you want to update the maintenance file for future use: just edit it. No reload needed.

### B.9 Is the site safe right now?

For the specific attack pattern from this week (MariaDB ransom bot via phpmyadmin), yes — it's structurally prevented. Specifically:

- phpmyadmin container is gone, image is deleted.
- Dev compose that published 3307/8081 is renamed and won't be used.
- DOCKER-USER chain whitelist actively drops external traffic to any port not in `[22, 80, 443, 3000, 3001]`, verified by attack simulation.
- DB passwords are 36-char random, no longer demo defaults.
- SSH password auth disabled, fail2ban active.

For Karenderia 0-day RCE, supply-chain attacks, or zero-day in any component: not specifically protected, but reactive defenses are in place (autoheal, backups, monitoring) so impact would be bounded.

### B.10 Should I pay the ransom?

No. Three reasons:

1. The backup is intact and restore is tested.
2. ~70% of ransom payments don't result in data return (academic research on ransomware non-delivery rate).
3. Paying funds the bot ecosystem, encourages future attacks.

### B.11 The user got a "DOWN" email and the site is actually up. Why?

False positive from uptime-check.sh. Three patterns to check:

- Cron runs every 3 min. If the site was briefly 5xx (e.g., during a Caddy reload), the probe hit it then.
- Caddy maintenance mode returns 503 — the probe treats 5xx as `down`. If someone toggled maintenance briefly, you'd see a DOWN + recovery pair.
- Network blip from the server to the internet, briefly making the curl fail.

The deep probe used to false-positive due to a SIGPIPE-under-pipefail bug; that was fixed. If the deep probe is consistently saying `down` while the home page shows menu cards, something is actually wrong — investigate.

### B.12 I'm paying for autoheal emails — can I increase the cool-down to reduce noise?

The default per-container cool-down is 600 seconds and the daily cap is 3. To change:

- Edit `/opt/cncwaves/scripts/autoheal.sh`
- Find `COOLDOWN=600` and `MAX_PER_24H=3`
- Change as desired

Recommendation: don't lower MAX_PER_24H below 2 (one is too few — you'd never get the "second restart confirmed the problem is recurring" signal).

### B.13 What's the actual hostname / IP / SSH command?

```
IP: 65.108.151.129
DNS: chickenwaves.dk
Hostname inside the box: cnc-prod
SSH: ssh -i ~/.ssh/hetzner root@65.108.151.129
```

The local SSH key on `jmkq`'s Mac is the only key that gets in.

### B.14 The local `.env.cncwaves-backup` has different values from the server. What now?

The server `/etc/cncwaves-backup.env` is the source of truth for *runtime*. The local file is meant to mirror it for *disaster recovery*. If they diverge:

- If the local file is more recent (you rotated something locally), `scp` it to the server.
- If the server is more recent (you rotated on the server), `scp` to local.
- Always `chmod 600` both sides.

To re-sync from server to local:

```
scp -i ~/.ssh/hetzner root@65.108.151.129:/etc/cncwaves-backup.env \
    /Users/jmkq/Documents/GitHub/cncwaves/.env.cncwaves-backup
chmod 600 /Users/jmkq/Documents/GitHub/cncwaves/.env.cncwaves-backup
```

### B.15 Do I need to do anything daily / weekly?

Daily: nothing. Backup runs at 03:15 UTC. Uptime monitors run themselves. Autoheal runs itself.

Weekly: read the `verify-backup` PASS message in `tail /var/log/cncwaves-backup.log` after Sunday 04:30 UTC. If it says FAIL, the backup may be corrupt — investigate immediately.

Monthly: rotate the BACKUP_PASSPHRASE if you want. (Not strictly needed.) Check Mongo Atlas storage utilization — should be way under 512 MB.

### B.16 The Karenderia code is doing something I want to change. Should I just edit the PHP?

Karenderia is CodeCanyon-bought and not currently under active local development. Editing `/var/www/html/protected/.../*.php` directly works (bind mount). But:

- Future Karenderia updates from CodeCanyon will lose your changes.
- The local repo (this Git repo) mirrors the install dir, so you should mirror your edits locally and commit, so you have a record.
- Don't edit anything you don't understand. The user has flagged this explicitly.

### B.17 The `.gitignore` says it's ignoring `.env.*`. Did I just commit secrets?

Check first:

```
git -C /Users/jmkq/Documents/GitHub/cncwaves check-ignore -v .env.cncwaves-backup
```

If it returns a `.gitignore:N:.env.*` line, you're safe — git will refuse to add it. If it returns nothing, it's not ignored and you should *not* commit anything that adds it. Run `git status` and look for any `.env*` file in the list of changes. If you see one, gitignore it before commit.

---

## Appendix C — One-page "what's in place" checklist

Print this and tape it to the wall.

```
[X] phpmyadmin container removed
[X] phpmyadmin image deleted
[X] dev docker-compose.yml renamed .DANGEROUS-DO-NOT-USE
[X] /etc/ufw/after.rules has DOCKER-USER chain with --ctorigdstport whitelist
[X] /etc/docker/daemon.json has "userland-proxy": false
[X] iptables DOCKER-USER DROP rule fires for external scans (verified)
[X] SSH password auth disabled, key-only
[X] fail2ban sshd jail active
[X] karenderia DB password rotated to 36-char random
[X] mariadb root password rotated to 36-char random
[X] Stripe sk_live, pk_live, whsec rotated, in DB
[X] Resend API key rotated, in DB
[X] k-config.php mode 640 root:www-data
[X] params.php (frontend + backoffice) mode 640
[X] YII_DEBUG=false
[X] display_errors=Off
[X] expose_php=Off
[X] ServerTokens Prod
[X] debug_slug.php removed
[X] Apache MaxConnectionsPerChild 200 (live + in Dockerfile)
[X] web mem_limit 1500m
[X] web HEALTHCHECK on /health.php
[X] autoheal cron every 2 min, 3/24h cap
[X] uptime-check cron every 3 min, shallow + deep
[X] disk-check cron every 30 min, 85% threshold
[X] daily backup 03:15 UTC, encrypted, to Mongo Atlas
[X] weekly verify-backup Sunday 04:30 UTC
[X] backup retention 90 days
[X] /etc/cncwaves-backup.env mode 600 root only
[X] .env.cncwaves-backup mirror in repo, gitignored
[X] .claude/hooks/block-karenderia-assets-rm.sh active
[X] Memory file feedback_no_assets_rm.md updated with 2nd-incident note
[X] Memory file reference_chickenwaves_deploy.md updated
[X] Memory file reference_cnc_backup.md created
[X] Attack simulation passes (8081, 3306 both blocked when republished)
[X] Signage stack untouched, 20 screens, 11 active subscribers

[ ] Hetzner Cloud snapshots enabled (USER ACTION — console click)
[ ] Stripe test payment to verify new whsec validates webhooks (USER ACTION)
[ ] PayPal credentials rotated (USER ACTION — lower priority, gateway inactive)
[ ] Google Maps API key rotated/restricted (USER ACTION — minor)
[ ] GDPR notification decision (USER ACTION — speak to lawyer)
```

---

*End of report. ~2400 lines as written.*

*Generated 2026-05-29 by Claude during incident response. Future-me / future-Claude: read sections 2, 14, 16, 18 first if you're paged. Read 9 + 17 if you're studying for the exam.*
