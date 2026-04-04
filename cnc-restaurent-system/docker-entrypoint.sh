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

# Ensure writable directories
chmod -R 777 /var/www/html/protected/runtime 2>/dev/null || true
chmod -R 777 /var/www/html/upload 2>/dev/null || true
chmod -R 777 /var/www/html/assets 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/assets 2>/dev/null || true

exec "$@"
