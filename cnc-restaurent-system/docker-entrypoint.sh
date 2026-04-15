#!/bin/bash
set -e

# Patch k-config.php with Docker environment variables
CONFIG_FILE="/var/www/html/k-config.php"

if [ -f "$CONFIG_FILE" ]; then
    sed -i "s/define( 'DB_NAME', '.*' );/define( 'DB_NAME', '${DB_NAME:-karenderia}' );/" "$CONFIG_FILE"
    sed -i "s/define( 'DB_USER', '.*' );/define( 'DB_USER', '${DB_USER:-karenderia}' );/" "$CONFIG_FILE"
    sed -i "s/define( 'DB_PASSWORD', '.*' );/define( 'DB_PASSWORD', '${DB_PASSWORD:-karenderia123}' );/" "$CONFIG_FILE"
    sed -i "s/define( 'DB_HOST', '.*' );/define( 'DB_HOST', '${DB_HOST:-db}' );/" "$CONFIG_FILE"
    sed -i "s/define( 'KMRS_DEFAULT_LANGUAGE', '.*' );/define( 'KMRS_DEFAULT_LANGUAGE', 'da' );/" "$CONFIG_FILE"
    echo "✓ k-config.php updated with Docker DB settings"
fi

# Set timezone to Copenhagen
echo "date.timezone = Europe/Copenhagen" > /usr/local/etc/php/conf.d/timezone.ini
ln -sf /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime
echo "Europe/Copenhagen" > /etc/timezone
echo "✓ Timezone set to Europe/Copenhagen"

# Fix Apache ServerName warning
echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Re-seed database ONLY on a genuinely fresh DB (no admin user exists).
# Previously this was gated on /opt/.seed_hash inside the container filesystem,
# but a --build rebuild resets that file → seed re-ran and WIPED production
# data (Stripe keys, merchant/menu, customers, orders, email provider).
# New check: query st_admin_user — if rows exist, the DB has real data, skip.
SEED_FILE="/opt/db-seed.sql"
SEED_MARKER="/opt/.seed_hash"
SHOULD_SEED="no"
if [ -f "$SEED_FILE" ]; then
    SHOULD_SEED=$(php -r "
    try {
        require '/var/www/html/k-config.php';
        \$pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset='.DB_CHARSET, DB_USER, DB_PASSWORD);
        \$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        \$row = \$pdo->query('SELECT COUNT(*) FROM st_admin_user')->fetch(PDO::FETCH_NUM);
        echo (\$row && intval(\$row[0]) > 0) ? 'no' : 'yes';
    } catch (Exception \$e) {
        // Table missing → fresh DB → seed
        echo 'yes';
    }
    ")
fi

if [ "$SHOULD_SEED" = "yes" ]; then
    NEW_HASH=$(md5sum "$SEED_FILE" | cut -d' ' -f1)
    echo "⏳ Fresh database detected — importing seed (first-run only)..."
    php -r "
    require '/var/www/html/k-config.php';
    try {
        \$pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset='.DB_CHARSET, DB_USER, DB_PASSWORD);
        \$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        \$sql = file_get_contents('$SEED_FILE');
        \$pdo->exec(\$sql);
        echo '✓ Database seeded successfully' . PHP_EOL;
    } catch (Exception \$e) {
        echo '⚠ DB seed: ' . \$e->getMessage() . PHP_EOL;
    }
    " && echo "$NEW_HASH" > "$SEED_MARKER"

    # Apply addon enum fix + recreate views (first-run only)
    echo "⏳ Applying addon fix + recreating views..."
    php -r "
    require '/var/www/html/k-config.php';
    try {
        \$pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset='.DB_CHARSET, DB_USER, DB_PASSWORD);
        \$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        \$pdo->exec(\"UPDATE st_item_relationship_subcategory SET multi_option='one' WHERE multi_option='single'\");
        echo '✓ Addon multi_option fix applied' . PHP_EOL;
        \$viewsFile = '/opt/create_views.sql';
        if (file_exists(\$viewsFile)) {
            \$sql = file_get_contents(\$viewsFile);
            \$pdo->exec(\$sql);
            echo '✓ Views recreated' . PHP_EOL;
        }
    } catch (Exception \$e) {
        echo '⚠ Post-seed fix: ' . \$e->getMessage() . PHP_EOL;
    }
    "

    # Clear Yii file cache
    rm -rf /var/www/html/protected/runtime/cache/* 2>/dev/null
    rm -rf /var/www/html/backoffice/protected/runtime/cache/* 2>/dev/null
    echo "✓ Yii cache cleared"
else
    echo "✓ DB already contains data — skipping seed (production data preserved)"
fi

# Apply CNC custom translations on EVERY container start (idempotent, ON DUPLICATE KEY UPDATE).
# This must run regardless of the seed-hash gate above, because a container rebuild wipes
# /opt/.seed_hash → re-imports db-seed.sql → erases translations added in past deploys.
TRANSLATIONS_FILE="/opt/cnc-translations.sql"
if [ -f "$TRANSLATIONS_FILE" ]; then
    echo "⏳ Applying CNC custom translations..."
    php -r "
    require '/var/www/html/k-config.php';
    try {
        \$pdo = new PDO('mysql:host='.DB_HOST.';dbname='.DB_NAME.';charset='.DB_CHARSET, DB_USER, DB_PASSWORD);
        \$pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        \$sql = file_get_contents('$TRANSLATIONS_FILE');
        \$pdo->exec(\$sql);
        echo '✓ CNC translations applied' . PHP_EOL;
    } catch (Exception \$e) {
        echo '⚠ CNC translations: ' . \$e->getMessage() . PHP_EOL;
    }
    "
    # Clear Yii's translation cache so the new strings are picked up immediately
    rm -rf /var/www/html/protected/runtime/cache/* 2>/dev/null
    rm -rf /var/www/html/backoffice/protected/runtime/cache/* 2>/dev/null
fi

# Ensure writable directories
mkdir -p /var/www/html/protected/runtime/cache /var/www/html/backoffice/protected/runtime/cache 2>/dev/null || true
chmod -R 777 /var/www/html/protected/runtime 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/protected/runtime 2>/dev/null || true
chmod -R 777 /var/www/html/upload 2>/dev/null || true
chmod -R 777 /var/www/html/assets 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/assets 2>/dev/null || true
# Twig compilation cache — CEmailer/runActions renders templates here.
# Without this the password-reset task silently throws
# "Unable to create the cache directory".
mkdir -p /var/www/html/backoffice/twig/compilation_cache 2>/dev/null || true
mkdir -p /var/www/html/protected/twig/compilation_cache 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/twig 2>/dev/null || true
chmod -R 777 /var/www/html/protected/twig 2>/dev/null || true

exec "$@"
