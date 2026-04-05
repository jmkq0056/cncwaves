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

# Re-seed database on deploy (uses PHP — works with any DB config from k-config.php)
SEED_FILE="/var/www/html/db-seed.sql"
SEED_MARKER="/var/www/html/protected/runtime/.seed_hash"
if [ -f "$SEED_FILE" ]; then
    NEW_HASH=$(md5sum "$SEED_FILE" | cut -d' ' -f1)
    OLD_HASH=""
    [ -f "$SEED_MARKER" ] && OLD_HASH=$(cat "$SEED_MARKER")
    if [ "$NEW_HASH" != "$OLD_HASH" ]; then
        echo "⏳ New DB seed detected — importing..."
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
    else
        echo "✓ DB seed unchanged — skipping"
    fi
fi

# Ensure writable directories
chmod -R 777 /var/www/html/protected/runtime 2>/dev/null || true
chmod -R 777 /var/www/html/upload 2>/dev/null || true
chmod -R 777 /var/www/html/assets 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/assets 2>/dev/null || true

exec "$@"
