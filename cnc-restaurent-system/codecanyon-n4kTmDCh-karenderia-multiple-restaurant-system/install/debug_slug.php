<?php
error_reporting(E_ALL);
ini_set("display_errors", 1);
require_once("k-config.php");
$db = new PDO("mysql:host=" . DB_HOST . ";dbname=" . DB_NAME . ";charset=" . DB_CHARSET, DB_USER, DB_PASSWORD);
$stmt = $db->prepare("SELECT merchant_id, restaurant_slug, status FROM " . DB_PREFIX . "merchant WHERE restaurant_slug=? AND status=?");
$stmt->execute(["chicken-n-chicken", "active"]);
$row = $stmt->fetch(PDO::FETCH_ASSOC);
echo "<pre>";
echo "DB connection: OK\n";
echo "Query result: ";
var_dump($row);
echo "\nChecking Yii cache config...\n";

// Check if params.php has cache configured
$params_file = __DIR__ . "/protected/config/params.php";
if (file_exists($params_file)) {
    $params = require($params_file);
    echo "Cache duration: " . ($params["cache"] ?? "NOT SET") . "\n";
}

// Check runtime dir
echo "Runtime dir writable: " . (is_writable(__DIR__ . "/protected/runtime") ? "YES" : "NO") . "\n";
echo "Runtime dir exists: " . (is_dir(__DIR__ . "/protected/runtime") ? "YES" : "NO") . "\n";
echo "</pre>";
