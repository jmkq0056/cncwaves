<?php
/**
 * One-time seed: Set opening hours to 10:00-22:00 for merchant_id=1.
 * Deletes ALL existing entries and inserts fresh ones.
 *
 * Run via browser: https://chickenwaves.dk/seed_opening_hours.php
 * DELETE THIS FILE after running.
 */

require_once(dirname(__FILE__) . '/k-config.php');

$db = new PDO(
    'mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8',
    DB_USER,
    DB_PASSWORD
);
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

$merchant_id = 1;
$start_time = '10:00:00';
$end_time = '22:00:00';

$days = [
    ['monday', 1],
    ['tuesday', 2],
    ['wednesday', 3],
    ['thursday', 4],
    ['friday', 5],
    ['saturday', 6],
    ['sunday', 7],
];

// Delete all existing opening hours for this merchant
$db->prepare("DELETE FROM " . DB_PREFIX . "opening_hours WHERE merchant_id = ?")->execute([$merchant_id]);
// Also fix global hours (merchant_id=0)
$db->exec("UPDATE " . DB_PREFIX . "opening_hours SET start_time = '10:00', end_time = '22:00' WHERE merchant_id = 0");
echo "Deleted old opening hours.\n";

// Insert fresh 10:00-22:00 for each day (regular_hours + pickup)
$types = ['regular_hours', 'transaction_type'];
$stmt = $db->prepare(
    "INSERT INTO " . DB_PREFIX . "opening_hours (merchant_id, time_config_type, transaction_type, day, day_of_week, status, start_time, end_time)
     VALUES (?, ?, ?, ?, ?, 'open', ?, ?)"
);

foreach ($types as $type) {
    $tx_type = $type === 'transaction_type' ? 'pickup' : null;
    foreach ($days as [$day, $dow]) {
        $stmt->execute([$merchant_id, $type, $tx_type, ucfirst($day), $dow, $start_time, $end_time]);
        echo "Inserted: $type / $day $start_time - $end_time\n";
    }
}

// Clear Yii cache so changes take effect immediately
$runtime = dirname(__FILE__) . '/protected/runtime/cache';
if (is_dir($runtime)) {
    array_map('unlink', glob("$runtime/*"));
    echo "Cache cleared.\n";
}

echo "\nDone! Opening hours set to 10:00-22:00 for all days.\n";
echo "DELETE THIS FILE NOW.\n";
