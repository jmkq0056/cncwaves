#!/bin/bash
set -e

echo "=== CNC Waves Railway Entrypoint ==="

# Ensure PHP and OS timezone is Copenhagen
echo "date.timezone = Europe/Copenhagen" > /usr/local/etc/php/conf.d/timezone.ini
ln -sf /usr/share/zoneinfo/Europe/Copenhagen /etc/localtime 2>/dev/null
echo "Europe/Copenhagen" > /etc/timezone 2>/dev/null
echo "✓ Timezone set to Europe/Copenhagen"

DB_NAME="karenderia"
DB_USER="karenderia"
DB_PASS="karenderia123"

# Patch k-config.php for local MySQL
CONFIG="/var/www/html/k-config.php"
if [ -f "$CONFIG" ]; then
    sed -i "s/define( 'DB_NAME', '.*' );/define( 'DB_NAME', '$DB_NAME' );/" "$CONFIG"
    sed -i "s/define( 'DB_USER', '.*' );/define( 'DB_USER', '$DB_USER' );/" "$CONFIG"
    sed -i "s/define( 'DB_PASSWORD', '.*' );/define( 'DB_PASSWORD', '$DB_PASS' );/" "$CONFIG"
    sed -i "s/define( 'DB_HOST', '.*' );/define( 'DB_HOST', '127.0.0.1' );/" "$CONFIG"
    sed -i "s/define( 'KMRS_DEFAULT_LANGUAGE', '.*' );/define( 'KMRS_DEFAULT_LANGUAGE', 'da' );/" "$CONFIG"
    echo "✓ k-config.php patched"
fi

# Initialize MariaDB data dir if empty (first deploy)
if [ ! -d "/data/mysql/mysql" ]; then
    echo "Initializing MariaDB (first deploy)..."
    mysql_install_db --user=mysql --datadir=/data/mysql

    # Start MariaDB temporarily for seeding
    MARIADBD=$(which mariadbd || which mysqld || echo "/usr/sbin/mariadbd")
    $MARIADBD --user=mysql &
    MYSQL_PID=$!

    # Wait for MariaDB
    for i in $(seq 1 30); do
        if mysqladmin ping &>/dev/null; then break; fi
        sleep 1
    done

    # Create DB and user
    mysql -u root <<EOSQL
CREATE DATABASE IF NOT EXISTS $DB_NAME CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';
GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';
FLUSH PRIVILEGES;
EOSQL

    # Import seed
    echo "Importing database seed..."
    mysql -u root "$DB_NAME" < /opt/db-seed.sql
    echo "✓ Database seeded with all CNC data"

    # Fix addon multi_option enum + recreate views without DEFINER dependency
    mysql -u root "$DB_NAME" <<'FIXSQL'
UPDATE st_item_relationship_subcategory SET multi_option='one' WHERE multi_option='single';
DROP VIEW IF EXISTS st_view_item_relationship_subcategory;
CREATE VIEW st_view_item_relationship_subcategory AS
  SELECT a.id, a.merchant_id, a.item_id,
    IFNULL(c.item_token,'') AS item_token, a.item_size_id,
    IFNULL(b.item_token,'') AS size_uuid, a.subcat_id, a.multi_option,
    a.multi_option_min, a.multi_option_value, a.require_addon, a.pre_selected, a.sequence
  FROM st_item_relationship_subcategory a
  LEFT JOIN st_item_relationship_size b ON a.item_size_id = b.item_size_id
  LEFT JOIN st_item c ON a.item_id = c.item_id
  WHERE a.item_size_id > 0;
DROP VIEW IF EXISTS st_view_item_relationship_subcategory_item;
CREATE VIEW st_view_item_relationship_subcategory_item AS
  SELECT b.merchant_id, b.item_id,
    (SELECT item_token FROM st_item WHERE item_id = b.item_id LIMIT 1) AS item_token,
    b.item_size_id, a.subcat_id, a.sub_item_id
  FROM st_subcategory_item_relationships a
  LEFT JOIN st_item_relationship_subcategory b ON a.subcat_id = b.subcat_id
  WHERE a.merchant_id IS NOT NULL;
FIXSQL
    echo "✓ Addon data fixed + views recreated"

    # Clear Yii file cache (stale query results)
    rm -rf /var/www/html/protected/runtime/cache/* 2>/dev/null
    rm -rf /var/www/html/backoffice/protected/runtime/cache/* 2>/dev/null
    echo "✓ Yii file cache cleared"

    # Stop temp MariaDB
    kill $MYSQL_PID
    wait $MYSQL_PID 2>/dev/null
    echo "✓ MariaDB initialized"
else
    echo "✓ MariaDB data exists"
    # Ensure DB user exists (may be missing from failed init)
    MARIADBD=$(which mariadbd || which mysqld || echo "/usr/sbin/mariadbd")
    $MARIADBD --user=mysql &
    MYSQL_PID=$!
    for i in $(seq 1 15); do
        if mysqladmin ping &>/dev/null; then break; fi
        sleep 1
    done
    mysql -u root -e "CREATE DATABASE IF NOT EXISTS $DB_NAME;" 2>/dev/null
    mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'%' IDENTIFIED BY '$DB_PASS';" 2>/dev/null
    mysql -u root -e "CREATE USER IF NOT EXISTS '$DB_USER'@'localhost' IDENTIFIED BY '$DB_PASS';" 2>/dev/null
    mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'%';" 2>/dev/null
    mysql -u root -e "GRANT ALL PRIVILEGES ON $DB_NAME.* TO '$DB_USER'@'localhost';" 2>/dev/null
    mysql -u root -e "FLUSH PRIVILEGES;" 2>/dev/null
    # Re-seed if seed file changed since last import
    SEED_FILE="/opt/db-seed.sql"
    SEED_MARKER="/data/mysql/.seed_hash"
    NEW_HASH=$(md5sum "$SEED_FILE" 2>/dev/null | cut -d' ' -f1)
    OLD_HASH=""
    [ -f "$SEED_MARKER" ] && OLD_HASH=$(cat "$SEED_MARKER")
    if [ "$NEW_HASH" != "$OLD_HASH" ]; then
        echo "⏳ New DB seed detected — re-importing..."
        mysql -u root "$DB_NAME" < "$SEED_FILE" && \
            mysql -u root "$DB_NAME" -e "UPDATE st_item_relationship_subcategory SET multi_option='one' WHERE multi_option='single';" && \
            echo "$NEW_HASH" > "$SEED_MARKER" && \
            rm -rf /var/www/html/protected/runtime/cache/* 2>/dev/null && \
            rm -rf /var/www/html/backoffice/protected/runtime/cache/* 2>/dev/null && \
            echo "✓ Database re-seeded + addon fix + cache cleared" || \
            echo "⚠ DB seed failed"
    else
        echo "✓ DB seed unchanged — skipping"
    fi
    kill $MYSQL_PID 2>/dev/null
    wait $MYSQL_PID 2>/dev/null
    echo "✓ DB user verified"
fi

# Fix permissions
chown -R mysql:mysql /data/mysql /run/mysqld
chmod -R 777 /var/www/html/protected/runtime 2>/dev/null || true
chmod -R 777 /var/www/html/upload 2>/dev/null || true
chmod -R 777 /var/www/html/assets 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/assets 2>/dev/null || true
chmod -R 777 /var/www/html/backoffice/protected/runtime 2>/dev/null || true
mkdir -p /var/www/html/protected/runtime/cache
chmod 777 /var/www/html/protected/runtime/cache

# Fix Apache MPM at runtime — ensure only prefork is loaded
rm -f /etc/apache2/mods-enabled/mpm_event.load /etc/apache2/mods-enabled/mpm_event.conf \
      /etc/apache2/mods-enabled/mpm_worker.load /etc/apache2/mods-enabled/mpm_worker.conf 2>/dev/null
# Keep only prefork
if [ ! -f /etc/apache2/mods-enabled/mpm_prefork.load ]; then
    ln -sf /etc/apache2/mods-available/mpm_prefork.load /etc/apache2/mods-enabled/
    ln -sf /etc/apache2/mods-available/mpm_prefork.conf /etc/apache2/mods-enabled/
fi

echo "✓ Starting Apache + MariaDB"
exec "$@"
