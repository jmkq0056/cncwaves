/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.6.25-MariaDB, for debian-linux-gnu (aarch64)
--
-- Host: localhost    Database: karenderia
-- ------------------------------------------------------
-- Server version	10.6.25-MariaDB-ubu2204

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `st_addons`
--

DROP TABLE IF EXISTS `st_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addon_name` varchar(255) NOT NULL DEFAULT '',
  `uuid` varchar(255) NOT NULL DEFAULT '',
  `version` varchar(5) NOT NULL DEFAULT '',
  `activated` int(1) NOT NULL DEFAULT 0,
  `image` varchar(100) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `purchase_code` varchar(50) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_addons`
--

LOCK TABLES `st_addons` WRITE;
/*!40000 ALTER TABLE `st_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_admin_meta`
--

DROP TABLE IF EXISTS `st_admin_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_admin_meta` (
  `meta_id` int(14) NOT NULL AUTO_INCREMENT,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text DEFAULT NULL,
  `meta_value1` text DEFAULT NULL,
  `meta_value2` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB AUTO_INCREMENT=529 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_admin_meta`
--

LOCK TABLES `st_admin_meta` WRITE;
/*!40000 ALTER TABLE `st_admin_meta` DISABLE KEYS */;
INSERT INTO `st_admin_meta` VALUES (1,'rejection_list','Out of item(s)','','','2022-01-26 22:46:48'),(2,'rejection_list','Kitchen closed','','','2022-01-26 22:46:46'),(3,'rejection_list','There is no possibility of fullfilling the order.','','','2022-01-26 22:46:44'),(4,'rejection_list','Today we are no longer delivering.','','','2022-01-26 22:46:43'),(5,'rejection_list','Too long waiting time.','','','2022-01-26 22:46:41'),(6,'rejection_list','No ingredient.','','','2022-01-26 22:46:39'),(7,'rejection_list','Customer called to cancel','','','2022-01-26 22:46:38'),(8,'rejection_list','Restaurant too busy','','','2022-01-26 22:46:36'),(9,'rejection_list','other','','','2022-01-26 22:46:32'),(37,'action_type','Notification to customer','notification_to_customer','','2022-01-26 22:47:25'),(38,'action_type','Notification to merchant','notification_to_merchant','','2022-01-26 22:47:24'),(39,'action_type','Notification to admin','notification_to_admin','','2022-01-26 22:47:22'),(40,'action_type','Notification to driver','notification_to_driver','','2022-01-26 22:47:20'),(84,'pause_reason','Store is too busy','','','2022-01-26 22:47:10'),(85,'pause_reason','Problem in restaurant','','','2022-01-26 22:47:08'),(86,'pause_reason','Store closed','','','2022-01-26 22:47:07'),(87,'pause_reason','Out of item(s)','','','2022-01-26 22:47:05'),(133,'payout_new_payout_template_id','16','','','2022-01-27 07:56:15'),(134,'payout_paid_template_id','17','','','2022-01-27 07:56:15'),(135,'payout_cancel_template_id','18','','','2022-01-27 07:56:15'),(136,'status_new_order','new','','','2022-01-27 07:48:04'),(137,'status_cancel_order','cancelled','','','2022-01-27 07:48:04'),(138,'status_delivered','delivered','','','2022-01-27 07:48:04'),(139,'status_completed','complete','','','2022-01-27 07:48:04'),(140,'status_rejection','rejected','','','2022-01-27 07:48:05'),(141,'status_delivery_fail','delivery failed','','','2022-01-27 07:48:05'),(142,'status_failed','cancelled','','','2022-01-27 07:48:05'),(143,'tracking_status_receive','','','','2022-01-27 07:54:06'),(144,'tracking_status_process','accepted','','','2022-01-27 07:54:06'),(145,'tracking_status_ready','ready for pickup','','','2022-01-27 07:54:06'),(146,'tracking_status_in_transit','delivery on its way','','','2022-01-27 07:54:06'),(147,'tracking_status_delivered','delivered','','','2022-01-27 07:54:06'),(148,'tracking_status_delivery_failed','delivery failed','','','2022-01-27 07:54:06'),(149,'tracking_status_completed','complete','','','2022-01-27 07:54:06'),(150,'tracking_status_failed','cancelled','','','2022-01-27 07:54:07'),(151,'invoice_create_template_id','2','','','2022-01-27 07:54:40'),(152,'refund_template_id','3','','','2022-01-27 07:54:40'),(153,'partial_refund_template_id','11','','','2022-01-27 07:54:40'),(154,'delayed_template_id','8','','','2022-01-27 07:54:40'),(155,'payout_request_auto_process','1','','','2022-01-27 07:55:53'),(156,'payout_request_enabled','1','','','2022-01-27 07:55:53'),(157,'payout_minimum_amount','100','','','2022-01-27 07:55:53'),(158,'payout_process_days','5','','','2022-01-27 07:55:53'),(159,'payout_number_can_request','2','','','2022-01-27 07:55:53'),(160,'theme_menu_active','370','','','2022-01-27 08:12:44'),(161,'tips','3',NULL,'','2026-04-04 14:09:06'),(162,'tips','4',NULL,'','2026-04-04 14:09:06'),(163,'tips','5',NULL,'','2026-04-04 14:09:06'),(236,'order_decline_reason','Distance is too far',NULL,'',NULL),(237,'order_decline_reason','Excessive wait time',NULL,'',NULL),(238,'order_decline_reason','Order was cancelled',NULL,'',NULL),(239,'order_decline_reason','Restaurant is close',NULL,'',NULL),(240,'order_decline_reason','Order pickup up by someone else',NULL,'',NULL),(242,'order_decline_reason','I don\'t want to do delivery',NULL,'',NULL),(243,'order_decline_reason','Oversize item',NULL,'',NULL),(244,'order_decline_reason','I have too many orders',NULL,'',NULL),(245,'order_help','Unable to find address',NULL,'',NULL),(246,'order_help','Order was cancelled',NULL,'',NULL),(247,'order_help','Food spill',NULL,'',NULL),(248,'order_help','Customer can’t be reached',NULL,'',NULL),(249,'order_help','Dropoff address is changed',NULL,'',NULL),(250,'order_help','Dropoff is inaccessible',NULL,'',NULL),(251,'reason_cancel_booking','Reserved on another day or time','','','2026-04-04 14:09:06'),(252,'reason_cancel_booking','Reserved at another restaurant','','','2026-04-04 14:09:06'),(253,'reason_cancel_booking','No longer dining out','','','2026-04-04 14:09:06'),(254,'reason_cancel_booking','Other','','','2026-04-04 14:09:06'),(274,'seo_page_homepage','23','','','2023-06-15 23:36:11'),(275,'seo_page_search','24','','','2023-06-15 23:36:11'),(276,'seo_page_contactus','25','','','2023-06-15 23:36:11'),(277,'seo_page_cuisine','26','','','2023-06-15 23:36:11'),(278,'seo_page_menu','27','','','2023-06-15 23:36:11'),(279,'seo_page_login','28','','','2023-06-15 23:36:11'),(280,'seo_page_signup','29','','','2023-06-15 23:36:11'),(281,'seo_page_manage_account','30','','','2023-06-15 23:36:11'),(282,'seo_page_change_password','31','','','2023-06-15 23:36:11'),(283,'seo_page_user_order','32','','','2023-06-15 23:36:11'),(284,'seo_page_user_address','32','','','2023-06-15 23:36:11'),(285,'seo_page_user_saved_payments','34','','','2023-06-15 23:36:11'),(286,'seo_page_user_saved_store','35','','','2023-06-15 23:36:11'),(287,'seo_page_restaurant_signup','36','','','2023-06-15 23:36:11'),(288,'seo_page_checkout','37','','','2023-06-15 23:36:11'),(289,'seo_page_guest_checkout','38','','','2023-06-15 23:36:11'),(290,'seo_page_table_booking','39','','','2023-06-15 23:36:11'),(291,'seo_page_manage_table_booking','40','','','2023-06-15 23:36:12'),(292,'seo_page_tracking_orderpage','41','','','2023-06-15 23:36:12'),(518,'call_staff_menu',' Paper napkin','','','2024-04-03 18:04:12'),(519,'call_staff_menu','Wet tissue','','','2024-05-17 08:33:14'),(520,'call_staff_menu','Water refill','','','2024-05-17 08:33:59'),(521,'call_staff_menu','Chopstick','','','2024-05-17 08:33:52'),(522,'call_staff_menu','Ice','','','2024-05-17 08:33:43'),(523,'call_staff_menu','Extra Plate','','','2024-05-17 08:33:32'),(524,'call_staff_menu','Extra Bowl','','','2024-05-17 08:33:22'),(525,'call_staff_menu','Toothpick','','','2024-05-17 08:32:56'),(526,'call_staff_menu','Kids Cutlery','','','2024-05-17 08:31:21'),(527,'call_staff_menu','Phone Charger','','','2024-05-17 08:31:10'),(528,'call_staff_menu','Table Clean','','','2024-05-17 08:30:59');
/*!40000 ALTER TABLE `st_admin_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_admin_meta_translation`
--

DROP TABLE IF EXISTS `st_admin_meta_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_admin_meta_translation` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `meta_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text DEFAULT NULL,
  `meta_value1` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_id` (`meta_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=263 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_admin_meta_translation`
--

LOCK TABLES `st_admin_meta_translation` WRITE;
/*!40000 ALTER TABLE `st_admin_meta_translation` DISABLE KEYS */;
INSERT INTO `st_admin_meta_translation` VALUES (1,9,'ja','',NULL),(2,9,'ar','',NULL),(3,9,'en','other',NULL),(4,8,'ja','',NULL),(5,8,'ar','',NULL),(6,8,'en','Restaurant too busy',NULL),(7,7,'ja','',NULL),(8,7,'ar','',NULL),(9,7,'en','Customer called to cancel',NULL),(10,6,'ja','',NULL),(11,6,'ar','',NULL),(12,6,'en','No ingredient.',NULL),(13,5,'ja','',NULL),(14,5,'ar','',NULL),(15,5,'en','Too long waiting time.',NULL),(16,4,'ja','',NULL),(17,4,'ar','',NULL),(18,4,'en','Today we are no longer delivering.',NULL),(19,3,'ja','',NULL),(20,3,'ar','',NULL),(21,3,'en','There is no possibility of fullfilling the order.',NULL),(22,2,'ja','',NULL),(23,2,'ar','',NULL),(24,2,'en','Kitchen closed',NULL),(25,1,'ja','',NULL),(26,1,'ar','',NULL),(27,1,'en','Out of item(s)',NULL),(28,132,'ja','',NULL),(29,132,'ar','',NULL),(30,132,'en','test reason',NULL),(31,87,'ja','',NULL),(32,87,'ar','',NULL),(33,87,'en','Out of item(s)',NULL),(34,86,'ja','',NULL),(35,86,'ar','',NULL),(36,86,'en','Store closed',NULL),(37,85,'ja','',NULL),(38,85,'ar','',NULL),(39,85,'en','Problem in restaurant',NULL),(40,84,'ja','',NULL),(41,84,'ar','',NULL),(42,84,'en','Store is too busy',NULL),(43,40,'ja','',NULL),(44,40,'ar','',NULL),(45,40,'en','Notification to driver',NULL),(46,39,'ja','',NULL),(47,39,'ar','',NULL),(48,39,'en','Notification to admin',NULL),(49,38,'ja','',NULL),(50,38,'ar','',NULL),(51,38,'en','Notification to merchant',NULL),(52,37,'ja','',NULL),(53,37,'ar','',NULL),(54,37,'en','Notification to customer',NULL),(259,251,'en','Reserved on another day or time',NULL),(260,252,'en','Reserved at another restaurant',NULL),(261,253,'en','No longer dining out',NULL),(262,254,'en','Other',NULL);
/*!40000 ALTER TABLE `st_admin_meta_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_admin_user`
--

DROP TABLE IF EXISTS `st_admin_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_admin_user` (
  `admin_id` int(14) NOT NULL AUTO_INCREMENT,
  `admin_id_token` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `contact_number` varchar(50) NOT NULL DEFAULT '',
  `profile_photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `role` varchar(100) NOT NULL DEFAULT '',
  `main_account` int(1) NOT NULL DEFAULT 1,
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`admin_id`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `admin_id_token` (`admin_id_token`),
  KEY `email_address` (`email_address`),
  KEY `contact_number` (`contact_number`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_admin_user`
--

LOCK TABLES `st_admin_user` WRITE;
/*!40000 ALTER TABLE `st_admin_user` DISABLE KEYS */;
INSERT INTO `st_admin_user` VALUES (1,'','admin','0192023a7bbd73250516f069df18b500','CNC','Admin','admin@chickennchicken.dk','','','','admin',1,'ed4a3d6823906e6e448f790db3f46d79bc1b70e7','active','2026-04-05 03:08:02','2026-04-04 16:22:37','2026-04-04 16:22:37','192.168.97.1');
/*!40000 ALTER TABLE `st_admin_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_availability`
--

DROP TABLE IF EXISTS `st_availability`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_availability` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` varchar(100) NOT NULL DEFAULT '',
  `day_of_week` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `meta_name` (`meta_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_availability`
--

LOCK TABLES `st_availability` WRITE;
/*!40000 ALTER TABLE `st_availability` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_availability` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_bank_deposit`
--

DROP TABLE IF EXISTS `st_bank_deposit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_bank_deposit` (
  `deposit_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `deposit_uuid` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(100) DEFAULT 'pending',
  `deposit_type` varchar(50) NOT NULL DEFAULT 'order',
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `transaction_ref_id` varchar(100) DEFAULT '',
  `account_name` varchar(255) NOT NULL DEFAULT '',
  `amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `use_amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `use_currency_code` varchar(10) NOT NULL DEFAULT '',
  `base_currency_code` varchar(10) NOT NULL DEFAULT '',
  `admin_base_currency` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_merchant_to_admin` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_admin_to_merchant` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `reference_number` varchar(100) NOT NULL DEFAULT '',
  `proof_image` varchar(100) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`deposit_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_bank_deposit`
--

LOCK TABLES `st_bank_deposit` WRITE;
/*!40000 ALTER TABLE `st_bank_deposit` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_bank_deposit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_banner`
--

DROP TABLE IF EXISTS `st_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_banner` (
  `banner_id` int(14) NOT NULL AUTO_INCREMENT,
  `banner_uuid` varchar(100) NOT NULL DEFAULT '',
  `owner` varchar(50) NOT NULL DEFAULT 'admin',
  `title` varchar(255) NOT NULL DEFAULT '',
  `banner_type` varchar(100) NOT NULL DEFAULT '',
  `meta_value1` int(10) NOT NULL DEFAULT 0,
  `meta_value2` int(10) NOT NULL DEFAULT 0,
  `meta_value3` varchar(255) NOT NULL DEFAULT '',
  `meta_value4` int(10) NOT NULL DEFAULT 0,
  `meta_slug` varchar(200) DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `radius` float NOT NULL DEFAULT 0,
  `radius_unit` varchar(5) NOT NULL DEFAULT 'mi',
  `country_id` int(10) NOT NULL DEFAULT 0,
  `state_id` int(10) NOT NULL DEFAULT 0,
  `city_id` int(10) NOT NULL DEFAULT 0,
  `area_id` int(10) NOT NULL DEFAULT 0,
  `sequence` int(10) NOT NULL DEFAULT 0,
  `status` int(10) NOT NULL DEFAULT 1,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`banner_id`),
  KEY `latitude` (`latitude`),
  KEY `longitude` (`longitude`),
  KEY `radius` (`radius`),
  KEY `radius_unit` (`radius_unit`),
  KEY `country_id` (`country_id`),
  KEY `state_id` (`state_id`),
  KEY `city_id` (`city_id`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_banner`
--

LOCK TABLES `st_banner` WRITE;
/*!40000 ALTER TABLE `st_banner` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cache`
--

DROP TABLE IF EXISTS `st_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cache` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `date_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cache`
--

LOCK TABLES `st_cache` WRITE;
/*!40000 ALTER TABLE `st_cache` DISABLE KEYS */;
INSERT INTO `st_cache` VALUES (1,'2026-04-05 13:23:34');
/*!40000 ALTER TABLE `st_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cart`
--

DROP TABLE IF EXISTS `st_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_row` varchar(100) NOT NULL DEFAULT '',
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cat_id` int(14) NOT NULL DEFAULT 0,
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `item_size_id` int(14) NOT NULL DEFAULT 0,
  `qty` int(14) NOT NULL DEFAULT 0,
  `special_instructions` varchar(255) NOT NULL DEFAULT '',
  `if_sold_out` varchar(50) NOT NULL DEFAULT '',
  `hold_order` int(1) NOT NULL DEFAULT 0,
  `hold_order_admin` tinyint(1) NOT NULL DEFAULT 0,
  `held_time` datetime DEFAULT NULL,
  `order_reference` varchar(255) NOT NULL DEFAULT '',
  `hold_order_reference` varchar(100) DEFAULT '',
  `transaction_type` varchar(100) NOT NULL DEFAULT '',
  `table_uuid` varchar(100) NOT NULL DEFAULT '',
  `subtotal` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `item_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `currency_code` varchar(5) NOT NULL DEFAULT '',
  `send_order` int(1) NOT NULL DEFAULT 0,
  `is_view` int(1) NOT NULL DEFAULT 0,
  `payment_status` int(1) NOT NULL DEFAULT 0,
  `change_trans` int(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cart_uuid` (`cart_uuid`),
  KEY `item_token` (`item_token`),
  KEY `item_size_id` (`item_size_id`),
  KEY `cart_row` (`cart_row`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cart`
--

LOCK TABLES `st_cart` WRITE;
/*!40000 ALTER TABLE `st_cart` DISABLE KEYS */;
INSERT INTO `st_cart` VALUES (1,'840ef663-3036-11f1-86f1-4ab0e3a8062d','ceecf908-3034-11f1-86f1-4ab0e3a8062d',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,6,'','substitute',0,0,NULL,'','','','',311.0000,0.00,0.0000,'DKK',0,0,0,0,'2026-04-04 16:56:52','2026-04-04 18:24:14','192.168.97.1'),(2,'b581fb34-303e-11f1-86f1-4ab0e3a8062d','ceecf908-3034-11f1-86f1-4ab0e3a8062d',1,9,'086212f4-3036-11f1-86f1-4ab0e3a8062d',124,1,'','substitute',0,0,NULL,'','','','',311.0000,0.00,0.0000,'DKK',0,0,0,0,'2026-04-04 17:55:31','2026-04-04 17:55:33','192.168.97.1'),(4,'d7977e01-3043-11f1-86f1-4ab0e3a8062d','d7ed9737-3042-11f1-86f1-4ab0e3a8062d',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,2,'','substitute',0,0,NULL,'','','','',94.0000,0.00,0.0000,'DKK',0,0,0,0,'2026-04-04 18:32:16','2026-04-04 19:39:54','192.168.97.1');
/*!40000 ALTER TABLE `st_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cart_addons`
--

DROP TABLE IF EXISTS `st_cart_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cart_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_row` varchar(100) NOT NULL DEFAULT '',
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `subcat_id` int(14) NOT NULL DEFAULT 0,
  `sub_item_id` int(14) NOT NULL DEFAULT 0,
  `qty` int(14) NOT NULL DEFAULT 0,
  `multi_option` varchar(100) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cart_row` (`cart_row`),
  KEY `cart_uuid` (`cart_uuid`),
  KEY `subcat_id` (`subcat_id`),
  KEY `sub_item_id` (`sub_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cart_addons`
--

LOCK TABLES `st_cart_addons` WRITE;
/*!40000 ALTER TABLE `st_cart_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_cart_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cart_attributes`
--

DROP TABLE IF EXISTS `st_cart_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cart_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cart_row` varchar(100) NOT NULL DEFAULT '',
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_id` text DEFAULT NULL,
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `cart_row` (`cart_row`),
  KEY `cart_uuid` (`cart_uuid`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cart_attributes`
--

LOCK TABLES `st_cart_attributes` WRITE;
/*!40000 ALTER TABLE `st_cart_attributes` DISABLE KEYS */;
INSERT INTO `st_cart_attributes` VALUES (1,'0','ceecf908-3034-11f1-86f1-4ab0e3a8062d','transaction_type','pickup','2026-04-04 16:47:58'),(2,'0','ceecf908-3034-11f1-86f1-4ab0e3a8062d','whento_deliver','now','2026-04-04 16:56:52'),(3,'0','d7ed9737-3042-11f1-86f1-4ab0e3a8062d','transaction_type','pickup','2026-04-04 18:25:07'),(4,'0','d7ed9737-3042-11f1-86f1-4ab0e3a8062d','whento_deliver','now','2026-04-04 18:25:07'),(57,'0','b74baaa1-30c9-11f1-b058-9a79972e1847','transaction_type','pickup','2026-04-05 13:23:34'),(58,'0','b74baaa1-30c9-11f1-b058-9a79972e1847','whento_deliver','now','2026-04-05 13:23:34');
/*!40000 ALTER TABLE `st_cart_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_category`
--

DROP TABLE IF EXISTS `st_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_category` (
  `cat_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_description` text DEFAULT NULL,
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) DEFAULT '',
  `icon_path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `available_at_specific` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` varchar(50) NOT NULL DEFAULT '',
  `date_modified` varchar(50) DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cat_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `category_name` (`category_name`),
  KEY `status` (`status`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_category`
--

LOCK TABLES `st_category` WRITE;
/*!40000 ALTER TABLE `st_category` DISABLE KEYS */;
INSERT INTO `st_category` VALUES (1,1,'Beef Burger','Udforsk vores udvalg af lækre bøf burgere',1,'','','','','publish',1,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(2,1,'Chicken & Fish Burgers','Udforsk vores udvalg af de lækreste kyllinge- og fiskeburgere',1,'','','','','publish',2,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(3,1,'Vegi\'s & Salad','Dette er til alle vores kunder, der foretrækker et kødfrit måltid',1,'','','','','publish',3,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(4,1,'Wraps & Tacos','Udforsk vores udvalg af appetitvækkende wraps og tacos',1,'','','','','publish',4,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(5,1,'Family & Social Bucket','Udforsk de mange friturestegte kyllingespande, vi tilbyder!',1,'','','','','publish',5,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(6,1,'Chicken N Chicken','Udforsk vores udvalg af det sprødeste friturestegt kylling: Vinger, ben og underlår!',1,'','','','','publish',6,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(7,1,'Kids Meal','Appetitvækkende menuer + gave til de helt små',1,'','','','','publish',7,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(8,1,'Sides & Dips','Forskellige lækre tilbehør og dyppelse',1,'','','','','publish',8,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(9,1,'Coffee & Cake','Vi tilbyder et bredt udvalg af kaffe og kager',1,'','','','','publish',9,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(10,1,'Ice Cream & Shakes','Velsmagende is og shakes',1,'','','','','publish',10,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(11,1,'Cold Drinks','Køl tørsten ned med en af ​​de mange kolde drinks, vi har',1,'','','','','publish',11,0,'2026-04-04 16:22:37','2026-04-04 16:22:37','');
/*!40000 ALTER TABLE `st_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_category_relationship_dish`
--

DROP TABLE IF EXISTS `st_category_relationship_dish`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_category_relationship_dish` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cat_id` int(11) NOT NULL DEFAULT 0,
  `dish_id` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `dish_id` (`dish_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_category_relationship_dish`
--

LOCK TABLES `st_category_relationship_dish` WRITE;
/*!40000 ALTER TABLE `st_category_relationship_dish` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_category_relationship_dish` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_category_translation`
--

DROP TABLE IF EXISTS `st_category_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_category_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cat_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `category_name` varchar(255) NOT NULL DEFAULT '',
  `category_description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_id` (`cat_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_category_translation`
--

LOCK TABLES `st_category_translation` WRITE;
/*!40000 ALTER TABLE `st_category_translation` DISABLE KEYS */;
INSERT INTO `st_category_translation` VALUES (1,1,1,'en','Beef Burger','Explore our selection of delicious beef burgers'),(2,1,2,'en','Chicken & Fish Burgers','Explore our selection of the tastiest chicken and fish burgers'),(3,1,3,'en','Vegi\'s & Salad','For all our customers who prefer a meat-free meal'),(4,1,4,'en','Wraps & Tacos','Explore our selection of appetizing wraps and tacos'),(5,1,5,'en','Family & Social Bucket','Explore the many fried chicken buckets we offer!'),(6,1,6,'en','Chicken N Chicken','Explore our selection of the crispiest fried chicken: Wings, legs and drumsticks!'),(7,1,7,'en','Kids Meal','Delicious meals + a gift for the little ones'),(8,1,8,'en','Sides & Dips','Various delicious sides and dipping sauces'),(9,1,9,'en','Coffee & Cake','We offer a wide selection of coffee and cakes'),(10,1,10,'en','Ice Cream & Shakes','Delicious ice cream and shakes'),(11,1,11,'en','Cold Drinks','Cool down with one of our many cold drinks');
/*!40000 ALTER TABLE `st_category_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_client`
--

DROP TABLE IF EXISTS `st_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_client` (
  `client_id` int(14) NOT NULL AUTO_INCREMENT,
  `client_uuid` varchar(100) NOT NULL DEFAULT '',
  `social_strategy` varchar(100) NOT NULL DEFAULT 'web',
  `merchant_id` int(10) NOT NULL DEFAULT 0,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `phone_prefix` varchar(5) NOT NULL DEFAULT '',
  `contact_phone` varchar(20) NOT NULL DEFAULT '',
  `avatar` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `social_id` varchar(255) NOT NULL DEFAULT '',
  `social_token` text DEFAULT NULL,
  `token` varchar(255) NOT NULL DEFAULT '',
  `mobile_verification_code` int(14) NOT NULL DEFAULT 0,
  `account_verified` int(1) NOT NULL DEFAULT 0,
  `verify_code_requested` datetime NOT NULL DEFAULT current_timestamp(),
  `reset_password_request` int(1) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`client_id`),
  KEY `social_strategy` (`social_strategy`),
  KEY `email_address` (`email_address`),
  KEY `password` (`password`),
  KEY `contact_phone` (`contact_phone`),
  KEY `status` (`status`),
  KEY `token` (`token`),
  KEY `mobile_verification_code` (`mobile_verification_code`),
  KEY `social_id` (`social_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_client`
--

LOCK TABLES `st_client` WRITE;
/*!40000 ALTER TABLE `st_client` DISABLE KEYS */;
INSERT INTO `st_client` VALUES (1,'1f018fdd-3051-11f1-86f1-4ab0e3a8062d','web',0,'','','','d41d8cd98f00b204e9800998ecf8427e','45','4542781996','','','pending','',NULL,'',7839,0,'2026-04-04 18:07:19',0,'2026-04-04 18:07:19','2026-04-04 20:07:19','2026-04-04 18:07:19','192.168.97.1'),(2,'d02f1252-3056-11f1-86f1-4ab0e3a8062d','web',0,'Jawad','Khan','jawa0056@gmail.com','772e6990814c91c8f0267734a09eef78','45','4512345678','','','active','',NULL,'64e90b5d781f041d8439db68d2e1912670a505b8',3492,0,'2026-04-04 18:48:04',0,'2026-04-05 10:27:06','2026-04-04 20:48:04','2026-04-04 18:48:04','192.168.97.1');
/*!40000 ALTER TABLE `st_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_client_address`
--

DROP TABLE IF EXISTS `st_client_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_client_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `client_id` int(14) NOT NULL DEFAULT 0,
  `address_type` varchar(50) NOT NULL DEFAULT 'map-based',
  `address_uuid` varchar(100) NOT NULL DEFAULT '',
  `place_id` varchar(255) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(200) NOT NULL DEFAULT '',
  `state` varchar(200) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `formatted_address` text DEFAULT NULL,
  `formattedAddress` text DEFAULT NULL,
  `latitude` varchar(255) NOT NULL DEFAULT '',
  `longitude` varchar(255) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `delivery_options` varchar(255) NOT NULL DEFAULT '',
  `delivery_instructions` varchar(255) NOT NULL DEFAULT '',
  `address_label` varchar(255) NOT NULL DEFAULT '',
  `company` varchar(255) NOT NULL DEFAULT '',
  `address_format_use` int(1) NOT NULL DEFAULT 1,
  `custom_field1` varchar(255) NOT NULL DEFAULT '',
  `custom_field2` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`address_id`),
  KEY `place_id` (`place_id`),
  KEY `address_uuid` (`address_uuid`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_client_address`
--

LOCK TABLES `st_client_address` WRITE;
/*!40000 ALTER TABLE `st_client_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_client_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_client_cc`
--

DROP TABLE IF EXISTS `st_client_cc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_client_cc` (
  `cc_id` int(14) NOT NULL AUTO_INCREMENT,
  `card_uuid` varchar(100) NOT NULL DEFAULT '',
  `client_id` int(14) NOT NULL DEFAULT 0,
  `card_name` varchar(255) NOT NULL DEFAULT '',
  `credit_card_number` varchar(20) NOT NULL DEFAULT '',
  `encrypted_card` binary(255) DEFAULT NULL,
  `expiration_month` varchar(5) NOT NULL DEFAULT '',
  `expiration_yr` varchar(5) NOT NULL DEFAULT '',
  `cvv` varchar(20) NOT NULL DEFAULT '',
  `billing_address` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cc_id`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_client_cc`
--

LOCK TABLES `st_client_cc` WRITE;
/*!40000 ALTER TABLE `st_client_cc` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_client_cc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_client_meta`
--

DROP TABLE IF EXISTS `st_client_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_client_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `client_id` bigint(20) NOT NULL DEFAULT 0,
  `meta1` varchar(255) NOT NULL DEFAULT '',
  `meta2` varchar(255) NOT NULL DEFAULT '',
  `meta3` varchar(255) DEFAULT '',
  `meta4` varchar(255) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `meta1` (`meta1`),
  KEY `meta2` (`meta2`),
  KEY `meta3` (`meta3`),
  KEY `meta4` (`meta4`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_client_meta`
--

LOCK TABLES `st_client_meta` WRITE;
/*!40000 ALTER TABLE `st_client_meta` DISABLE KEYS */;
INSERT INTO `st_client_meta` VALUES (1,1,'app_push_notifications','1','','','2026-04-04 20:07:19','192.168.97.1'),(2,1,'promotional_push_notifications','1','','','2026-04-04 20:07:19','192.168.97.1'),(3,1,'app_sms_notifications','1','','','2026-04-04 20:07:19','192.168.97.1'),(4,1,'offers_email_notifications','1','','','2026-04-04 20:07:19','192.168.97.1'),(5,2,'app_push_notifications','1','','','2026-04-04 20:48:04','192.168.97.1'),(6,2,'promotional_push_notifications','1','','','2026-04-04 20:48:04','192.168.97.1'),(7,2,'app_sms_notifications','1','','','2026-04-04 20:48:04','192.168.97.1'),(8,2,'offers_email_notifications','1','','','2026-04-04 20:48:04','192.168.97.1'),(9,2,'stripe','0','0','cus_UH7XFr9sRumDys','2026-04-04 20:51:43','192.168.97.1');
/*!40000 ALTER TABLE `st_client_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_client_payment_method`
--

DROP TABLE IF EXISTS `st_client_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_client_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `client_id` int(14) NOT NULL DEFAULT 0,
  `merchant_id` bigint(20) DEFAULT 0,
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT 0,
  `reference_id` int(14) NOT NULL DEFAULT 0,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_method_id`),
  KEY `client_id` (`client_id`),
  KEY `reference_id` (`reference_id`),
  KEY `payment_uuid` (`payment_uuid`),
  KEY `payment_code` (`payment_code`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_client_payment_method`
--

LOCK TABLES `st_client_payment_method` WRITE;
/*!40000 ALTER TABLE `st_client_payment_method` DISABLE KEYS */;
INSERT INTO `st_client_payment_method` VALUES (2,'d0353c49-3056-11f1-86f1-4ab0e3a8062d',2,0,'cod',0,0,'Cash On delivery','','','2026-04-04 20:48:04','2026-04-04 18:48:04','192.168.97.1'),(3,'98f92f15-305a-11f1-86f1-4ab0e3a8062d',2,0,'stripe',1,0,'Kort','1111********4242','','2026-04-04 21:15:09','2026-04-04 19:15:09','192.168.97.1');
/*!40000 ALTER TABLE `st_client_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_contact`
--

DROP TABLE IF EXISTS `st_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_contact` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `receiver_email_address` varchar(255) NOT NULL DEFAULT '',
  `fullname` varchar(255) NOT NULL DEFAULT '',
  `contact_number` varchar(100) NOT NULL DEFAULT '',
  `country_name` varchar(100) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_contact`
--

LOCK TABLES `st_contact` WRITE;
/*!40000 ALTER TABLE `st_contact` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cooking_ref`
--

DROP TABLE IF EXISTS `st_cooking_ref`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cooking_ref` (
  `cook_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cooking_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cook_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `cooking_name` (`cooking_name`),
  KEY `sequence` (`sequence`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cooking_ref`
--

LOCK TABLES `st_cooking_ref` WRITE;
/*!40000 ALTER TABLE `st_cooking_ref` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_cooking_ref` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cooking_ref_translation`
--

DROP TABLE IF EXISTS `st_cooking_ref_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cooking_ref_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cook_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `cooking_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cook_id` (`cook_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cooking_ref_translation`
--

LOCK TABLES `st_cooking_ref_translation` WRITE;
/*!40000 ALTER TABLE `st_cooking_ref_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_cooking_ref_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cron`
--

DROP TABLE IF EXISTS `st_cron`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cron` (
  `cron_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `url` text DEFAULT NULL,
  `status` smallint(6) NOT NULL DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cron_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cron`
--

LOCK TABLES `st_cron` WRITE;
/*!40000 ALTER TABLE `st_cron` DISABLE KEYS */;
INSERT INTO `st_cron` VALUES (1,'http://localhost/task/senddevicepush?push_uuid=fd76edfb-30c9-11f1-b058-9a79972e1847&key=6EE1E6391DC4EF7E8887444E889418B4&_runaction_touch=1',0,'2026-04-05 10:32:32',NULL,'127.0.0.1'),(2,'http://localhost/task/senddevicepush?push_uuid=fd776b42-30c9-11f1-b058-9a79972e1847&key=6EE1E6391DC4EF7E8887444E889418B4&_runaction_touch=1',0,'2026-04-05 10:32:32',NULL,'127.0.0.1'),(3,'http://localhost/task/senddevicepush?push_uuid=bac0dddf-30df-11f1-b058-9a79972e1847&key=6EE1E6391DC4EF7E8887444E889418B4&_runaction_touch=1',0,'2026-04-05 13:08:09',NULL,'127.0.0.1'),(4,'http://localhost/task/senddevicepush?push_uuid=bac1575e-30df-11f1-b058-9a79972e1847&key=6EE1E6391DC4EF7E8887444E889418B4&_runaction_touch=1',0,'2026-04-05 13:08:09',NULL,'127.0.0.1');
/*!40000 ALTER TABLE `st_cron` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cuisine`
--

DROP TABLE IF EXISTS `st_cuisine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cuisine` (
  `cuisine_id` int(14) NOT NULL AUTO_INCREMENT,
  `cuisine_name` varchar(255) NOT NULL DEFAULT '',
  `featured_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `icon` varchar(255) NOT NULL DEFAULT '',
  `icon_path` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`cuisine_id`),
  KEY `cuisine_name` (`cuisine_name`),
  KEY `sequence` (`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cuisine`
--

LOCK TABLES `st_cuisine` WRITE;
/*!40000 ALTER TABLE `st_cuisine` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_cuisine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cuisine_merchant`
--

DROP TABLE IF EXISTS `st_cuisine_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cuisine_merchant` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` varchar(14) NOT NULL DEFAULT '0',
  `cuisine_id` varchar(14) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `cuisine_id` (`cuisine_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cuisine_merchant`
--

LOCK TABLES `st_cuisine_merchant` WRITE;
/*!40000 ALTER TABLE `st_cuisine_merchant` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_cuisine_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_cuisine_translation`
--

DROP TABLE IF EXISTS `st_cuisine_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_cuisine_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cuisine_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `cuisine_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `cuisine_id` (`cuisine_id`),
  KEY `language` (`language`),
  KEY `cuisine_name` (`cuisine_name`)
) ENGINE=InnoDB AUTO_INCREMENT=124 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_cuisine_translation`
--

LOCK TABLES `st_cuisine_translation` WRITE;
/*!40000 ALTER TABLE `st_cuisine_translation` DISABLE KEYS */;
INSERT INTO `st_cuisine_translation` VALUES (61,21,'ja',''),(62,21,'ar',''),(63,21,'en','Steak'),(64,20,'ja',''),(65,20,'ar',''),(66,20,'en','Vegetarian'),(67,19,'ja',''),(68,19,'ar',''),(69,19,'en','Pizza'),(73,18,'ja',''),(74,18,'ar',''),(75,18,'en','Korean'),(76,17,'ja',''),(77,17,'ar',''),(78,17,'en','Healthy'),(79,16,'ja',''),(80,16,'ar',''),(81,16,'en','Chinese'),(82,15,'ja',''),(83,15,'ar',''),(84,15,'en','Thai'),(85,14,'ja',''),(86,14,'ar',''),(87,14,'en','Middle Eastern'),(88,13,'ja',''),(89,13,'ar',''),(90,13,'en','Japanese'),(91,12,'ja',''),(92,12,'ar',''),(93,12,'en','Greek'),(94,11,'ja',''),(95,11,'ar',''),(96,11,'en','Burgers'),(97,10,'ja',''),(98,10,'ar',''),(99,10,'en','Sushi'),(100,9,'ja',''),(101,9,'ar',''),(102,9,'en','Mexican'),(103,8,'ja',''),(104,8,'ar',''),(105,8,'en','Italian'),(106,7,'ja',''),(107,7,'ar',''),(108,7,'en','Diner'),(109,6,'ja',''),(110,6,'ar',''),(111,6,'en','Barbeque'),(112,5,'ja',''),(113,5,'ar',''),(114,5,'en','Sandwiches'),(115,4,'ja',''),(116,4,'ar',''),(117,4,'en','Mediterranean'),(118,3,'ja',''),(119,3,'ar',''),(120,3,'en','Indian'),(121,2,'ja',''),(122,2,'ar',''),(123,2,'en','Deli');
/*!40000 ALTER TABLE `st_cuisine_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_currency`
--

DROP TABLE IF EXISTS `st_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_currency` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `currency_code` varchar(3) NOT NULL DEFAULT '',
  `currency_symbol` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT 0,
  `is_hidden` int(1) NOT NULL DEFAULT 0,
  `currency_position` varchar(100) NOT NULL DEFAULT 'left',
  `exchange_rate` float(14,4) NOT NULL DEFAULT 0.0000,
  `exchange_rate_fee` float(14,4) NOT NULL DEFAULT 0.0000,
  `number_decimal` int(14) NOT NULL DEFAULT 2,
  `decimal_separator` varchar(5) NOT NULL DEFAULT '.',
  `thousand_separator` varchar(5) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `currency_symbol` (`currency_symbol`),
  KEY `currency_code` (`currency_code`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_currency`
--

LOCK TABLES `st_currency` WRITE;
/*!40000 ALTER TABLE `st_currency` DISABLE KEYS */;
INSERT INTO `st_currency` VALUES (1,'USD','$','United States Dollar',0,0,'right',1.0000,0.0000,2,'','','publish','2021-01-20 08:00:54','2022-01-26 22:41:48','127.0.0.1'),(2,'JPY','¥','Japan Yen',0,0,'left',104.5940,0.0000,2,'.',',','publish','2021-01-20 08:02:20','2021-05-18 23:33:26','127.0.0.1'),(13,'PHP','₱','Philippine Peso',0,0,'left',48.0425,0.0000,2,'.',',','publish','2021-01-20 22:51:46','2021-05-18 23:33:26','127.0.0.1'),(16,'VND','₫','Vietnamese Dong',0,0,'left_space',23028.3281,0.0000,2,'.',',','publish','2021-01-21 07:38:41','2021-05-18 23:33:26','127.0.0.1'),(21,'SAR','﷼','Saudi Riyal',0,0,'left',3.7511,0.0000,3,'.',',','publish','2021-01-22 10:34:06','2021-05-18 23:33:26','127.0.0.1'),(22,'KRW','₩','South Korean Won',0,0,'left',1106.2035,0.0000,2,'.',',','publish','2021-01-22 18:08:45','2021-05-18 23:33:26','127.0.0.1'),(23,'AED','د.إ','UAE Dirham',0,0,'left',3.6732,0.0000,2,'.',',','publish','2021-01-27 15:04:01','2021-05-18 23:33:26','127.0.0.1'),(39,'SGD','$','Singapore Dollar',0,0,'left',1.3264,0.0000,2,'.',',','publish','2021-02-05 10:51:33','2021-05-18 23:33:26','127.0.0.1'),(40,'EUR','€','Euro',0,0,'left',0.8252,0.0000,2,'.',',','publish','2021-02-05 23:20:31','2021-05-18 23:33:26','127.0.0.1'),(41,'BRL','R$','Brazilian Real',0,0,'left',5.3866,0.0000,2,'.',',','publish','2021-02-05 23:21:54','2021-05-18 23:33:26','127.0.0.1'),(42,'INR','₹','Indian Rupee',0,0,'left',72.8289,0.0000,2,'.',',','publish','2021-02-09 09:52:18','2021-05-18 23:33:26','127.0.0.1'),(43,'ZWL','','Zimbabwean Dollar',0,0,'left',322.0000,0.0000,2,'.','','publish','2021-05-18 23:33:19','2022-01-26 15:44:44','127.0.0.1'),(44,'DKK','kr','',1,0,'right_space',1.0000,0.0000,0,',','.','publish','2026-04-04 14:46:01','2026-04-04 14:46:01','');
/*!40000 ALTER TABLE `st_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_currency_exchangerate`
--

DROP TABLE IF EXISTS `st_currency_exchangerate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_currency_exchangerate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `provider` varchar(100) NOT NULL DEFAULT '',
  `base_currency` varchar(10) NOT NULL DEFAULT '',
  `currency_code` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate` decimal(10,4) DEFAULT 0.0000,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `provider` (`provider`),
  KEY `currency_code` (`currency_code`),
  KEY `exchange_rate` (`exchange_rate`),
  KEY `base_currency` (`base_currency`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_currency_exchangerate`
--

LOCK TABLES `st_currency_exchangerate` WRITE;
/*!40000 ALTER TABLE `st_currency_exchangerate` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_currency_exchangerate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_custom_fields`
--

DROP TABLE IF EXISTS `st_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_custom_fields` (
  `field_id` int(11) NOT NULL AUTO_INCREMENT,
  `field_name` varchar(100) NOT NULL,
  `field_label` varchar(100) NOT NULL,
  `field_type` enum('text','number','date','checkbox','select','textarea') NOT NULL,
  `options` text DEFAULT NULL,
  `is_required` tinyint(1) DEFAULT 0,
  `entity` varchar(100) NOT NULL DEFAULT 'client',
  `sequence` int(11) NOT NULL DEFAULT 0,
  `visible` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`field_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_custom_fields`
--

LOCK TABLES `st_custom_fields` WRITE;
/*!40000 ALTER TABLE `st_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_customer_points_ranks`
--

DROP TABLE IF EXISTS `st_customer_points_ranks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_customer_points_ranks` (
  `account_id` int(11) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `total_earning` decimal(10,2) DEFAULT NULL,
  `rank` int(10) DEFAULT NULL,
  `previous_points` decimal(10,2) DEFAULT NULL,
  `total_players` int(10) DEFAULT NULL,
  `percentage_better_than` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_customer_points_ranks`
--

LOCK TABLES `st_customer_points_ranks` WRITE;
/*!40000 ALTER TABLE `st_customer_points_ranks` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_customer_points_ranks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_customer_request`
--

DROP TABLE IF EXISTS `st_customer_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_customer_request` (
  `request_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cart_uuid` varchar(100) NOT NULL DEFAULT '',
  `table_uuid` varchar(100) NOT NULL DEFAULT '',
  `transaction_type` varchar(100) NOT NULL DEFAULT '',
  `timezone` varchar(100) NOT NULL DEFAULT '',
  `request_item` varchar(200) NOT NULL DEFAULT '',
  `qty` int(14) NOT NULL DEFAULT 0,
  `request_time` datetime DEFAULT NULL,
  `completed_time` datetime DEFAULT NULL,
  `request_status` varchar(20) NOT NULL DEFAULT 'pending',
  `is_view` int(1) DEFAULT 0,
  PRIMARY KEY (`request_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `table_uuid` (`table_uuid`),
  KEY `request_status` (`request_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_customer_request`
--

LOCK TABLES `st_customer_request` WRITE;
/*!40000 ALTER TABLE `st_customer_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_customer_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_device`
--

DROP TABLE IF EXISTS `st_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_device` (
  `device_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_type` varchar(50) NOT NULL DEFAULT '',
  `user_id` bigint(20) NOT NULL DEFAULT 0,
  `platform` varchar(50) NOT NULL DEFAULT '',
  `device_token` text DEFAULT NULL,
  `device_uiid` varchar(255) NOT NULL DEFAULT '',
  `browser_agent` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`device_id`),
  KEY `user_type` (`user_type`),
  KEY `user_id` (`user_id`),
  KEY `platform` (`platform`),
  KEY `device_uiid` (`device_uiid`),
  KEY `enabled` (`enabled`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_device`
--

LOCK TABLES `st_device` WRITE;
/*!40000 ALTER TABLE `st_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_device_meta`
--

DROP TABLE IF EXISTS `st_device_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_device_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `device_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text DEFAULT NULL,
  `meta_value1` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `device_id` (`device_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_device_meta`
--

LOCK TABLES `st_device_meta` WRITE;
/*!40000 ALTER TABLE `st_device_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_device_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_discount`
--

DROP TABLE IF EXISTS `st_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_discount` (
  `discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `discount_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(11) NOT NULL DEFAULT 0,
  `transaction_type` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `discount_type` varchar(100) NOT NULL DEFAULT '',
  `amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `minimum_amount` decimal(12,4) DEFAULT 0.0000,
  `maximum_amount` decimal(12,4) NOT NULL DEFAULT 0.0000,
  `start_date` date DEFAULT NULL,
  `expiration_date` date DEFAULT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`discount_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_discount`
--

LOCK TABLES `st_discount` WRITE;
/*!40000 ALTER TABLE `st_discount` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_dishes`
--

DROP TABLE IF EXISTS `st_dishes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_dishes` (
  `dish_id` int(14) NOT NULL AUTO_INCREMENT,
  `dish_name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`dish_id`),
  KEY `dish_name` (`dish_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_dishes`
--

LOCK TABLES `st_dishes` WRITE;
/*!40000 ALTER TABLE `st_dishes` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_dishes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_dishes_translation`
--

DROP TABLE IF EXISTS `st_dishes_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_dishes_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `dish_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `dish_id` (`dish_id`),
  KEY `language` (`language`),
  KEY `dish_name` (`dish_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_dishes_translation`
--

LOCK TABLES `st_dishes_translation` WRITE;
/*!40000 ALTER TABLE `st_dishes_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_dishes_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver`
--

DROP TABLE IF EXISTS `st_driver`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver` (
  `driver_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `driver_uuid` varchar(100) NOT NULL DEFAULT '',
  `token` varchar(255) NOT NULL DEFAULT '',
  `employment_type` varchar(100) NOT NULL DEFAULT 'employee',
  `last_seen` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone_prefix` varchar(5) DEFAULT '',
  `phone` varchar(20) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `photo` varchar(200) NOT NULL DEFAULT '',
  `team_id` int(14) NOT NULL DEFAULT 0,
  `address` tinytext DEFAULT NULL,
  `salary_type` varchar(100) NOT NULL DEFAULT 'salary',
  `salary` decimal(10,2) NOT NULL DEFAULT 0.00,
  `fixed_amount` decimal(10,2) DEFAULT 0.00,
  `commission` decimal(10,2) NOT NULL DEFAULT 0.00,
  `commission_type` varchar(50) NOT NULL DEFAULT 'percentage',
  `incentives_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `allowed_offline_amount` double(10,2) NOT NULL DEFAULT 0.00,
  `license_number` varchar(100) NOT NULL DEFAULT '',
  `license_expiration` date DEFAULT NULL,
  `license_front_photo` varchar(100) NOT NULL DEFAULT '',
  `license_back_photo` varchar(100) DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '#3ecf8e',
  `path` varchar(255) NOT NULL DEFAULT '',
  `path_license` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) DEFAULT 'active',
  `latitude` varchar(50) NOT NULL DEFAULT '',
  `lontitude` varchar(50) NOT NULL DEFAULT '',
  `delivery_distance_covered` decimal(10,2) NOT NULL DEFAULT 10000.00,
  `verification_code` int(10) NOT NULL DEFAULT 0,
  `account_verified` smallint(1) NOT NULL DEFAULT 0,
  `verify_code_requested` datetime DEFAULT NULL,
  `reset_password_request` smallint(1) NOT NULL DEFAULT 0,
  `notification` int(1) NOT NULL DEFAULT 1,
  `default_currency` varchar(5) NOT NULL DEFAULT '',
  `is_online` smallint(1) NOT NULL DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`driver_id`),
  KEY `driver_uuid` (`driver_uuid`),
  KEY `token` (`token`),
  KEY `status` (`status`),
  KEY `team_id` (`team_id`),
  KEY `salary_type` (`salary_type`),
  KEY `latitude` (`latitude`),
  KEY `delivery_distance_covered` (`delivery_distance_covered`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver`
--

LOCK TABLES `st_driver` WRITE;
/*!40000 ALTER TABLE `st_driver` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_activity`
--

DROP TABLE IF EXISTS `st_driver_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` datetime DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `driver_id` bigint(20) DEFAULT 0,
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `reference_id` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT '',
  `remarks` tinytext DEFAULT NULL,
  `remarks_args` tinytext DEFAULT NULL,
  `latitude` varchar(100) NOT NULL DEFAULT '',
  `longitude` varchar(100) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `driver_id` (`driver_id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_activity`
--

LOCK TABLES `st_driver_activity` WRITE;
/*!40000 ALTER TABLE `st_driver_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_attempts`
--

DROP TABLE IF EXISTS `st_driver_attempts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_attempts` (
  `attempt_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `driver_id` int(11) NOT NULL,
  `attempt_status` varchar(100) DEFAULT 'pending',
  `attempt_time` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`attempt_id`),
  KEY `order_id` (`order_id`),
  KEY `driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_attempts`
--

LOCK TABLES `st_driver_attempts` WRITE;
/*!40000 ALTER TABLE `st_driver_attempts` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_attempts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_break`
--

DROP TABLE IF EXISTS `st_driver_break`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_break` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `schedule_id` bigint(20) NOT NULL DEFAULT 0,
  `driver_id` bigint(20) NOT NULL DEFAULT 0,
  `break_duration` varchar(50) NOT NULL DEFAULT '',
  `break_started` datetime DEFAULT NULL,
  `break_ended` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `schedule_id` (`schedule_id`),
  KEY `driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_break`
--

LOCK TABLES `st_driver_break` WRITE;
/*!40000 ALTER TABLE `st_driver_break` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_break` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_collect_cash`
--

DROP TABLE IF EXISTS `st_driver_collect_cash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_collect_cash` (
  `collect_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `collection_uuid` varchar(100) NOT NULL DEFAULT '',
  `reference_id` varchar(255) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `driver_id` bigint(20) NOT NULL DEFAULT 0,
  `amount_collected` decimal(10,4) DEFAULT 0.0000,
  `merchant_base_currency` varchar(5) NOT NULL DEFAULT '',
  `admin_base_currency` varchar(5) NOT NULL DEFAULT '',
  `exchange_rate_merchant_to_admin` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_admin_to_merchant` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `transaction_date` datetime DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`collect_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_collect_cash`
--

LOCK TABLES `st_driver_collect_cash` WRITE;
/*!40000 ALTER TABLE `st_driver_collect_cash` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_collect_cash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_group`
--

DROP TABLE IF EXISTS `st_driver_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_group` (
  `group_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `group_uuid` varchar(100) NOT NULL DEFAULT '',
  `group_name` varchar(100) NOT NULL DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT '',
  PRIMARY KEY (`group_id`),
  KEY `group_uuid` (`group_uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_group`
--

LOCK TABLES `st_driver_group` WRITE;
/*!40000 ALTER TABLE `st_driver_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_group_relations`
--

DROP TABLE IF EXISTS `st_driver_group_relations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_group_relations` (
  `date_created` timestamp NULL DEFAULT NULL,
  `group_id` bigint(20) NOT NULL DEFAULT 0,
  `driver_id` bigint(20) NOT NULL DEFAULT 0,
  `vehicle_id` bigint(20) NOT NULL DEFAULT 0,
  KEY `group_id` (`group_id`),
  KEY `driver_id` (`driver_id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_group_relations`
--

LOCK TABLES `st_driver_group_relations` WRITE;
/*!40000 ALTER TABLE `st_driver_group_relations` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_group_relations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_meta`
--

DROP TABLE IF EXISTS `st_driver_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `reference_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value1` varchar(255) NOT NULL DEFAULT '',
  `meta_value2` varchar(255) NOT NULL DEFAULT '',
  `meta_value3` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`meta_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `reference_id` (`reference_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_meta`
--

LOCK TABLES `st_driver_meta` WRITE;
/*!40000 ALTER TABLE `st_driver_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_payment_method`
--

DROP TABLE IF EXISTS `st_driver_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `driver_id` int(14) NOT NULL DEFAULT 0,
  `merchant_id` bigint(20) DEFAULT 0,
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT 0,
  `reference_id` int(14) NOT NULL DEFAULT 0,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_method_id`),
  KEY `driver_id` (`driver_id`),
  KEY `reference_id` (`reference_id`),
  KEY `payment_uuid` (`payment_uuid`),
  KEY `payment_code` (`payment_code`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_payment_method`
--

LOCK TABLES `st_driver_payment_method` WRITE;
/*!40000 ALTER TABLE `st_driver_payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_reviews`
--

DROP TABLE IF EXISTS `st_driver_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) DEFAULT NULL,
  `customer_id` int(10) DEFAULT NULL,
  `driver_id` int(10) DEFAULT NULL,
  `rating` tinyint(5) DEFAULT 0,
  `review_text` text DEFAULT NULL,
  `as_anonymous` tinyint(1) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`),
  KEY `driver_id` (`driver_id`),
  KEY `rating` (`rating`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_reviews`
--

LOCK TABLES `st_driver_reviews` WRITE;
/*!40000 ALTER TABLE `st_driver_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_schedule`
--

DROP TABLE IF EXISTS `st_driver_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_schedule` (
  `schedule_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `schedule_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `driver_id` int(14) NOT NULL DEFAULT 0,
  `vehicle_id` int(14) NOT NULL DEFAULT 0,
  `zone_id` bigint(20) NOT NULL DEFAULT 0,
  `shift_id` bigint(20) NOT NULL DEFAULT 0,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `shift_time_started` datetime DEFAULT NULL,
  `shift_time_ended` datetime DEFAULT NULL,
  `break_duration` varchar(50) NOT NULL DEFAULT '0',
  `instructions` text DEFAULT NULL,
  `active` smallint(1) NOT NULL DEFAULT 1,
  `on_demand` int(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`schedule_id`),
  KEY `schedule_uuid` (`schedule_uuid`),
  KEY `driver_id` (`driver_id`),
  KEY `vehicle_id` (`vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_schedule`
--

LOCK TABLES `st_driver_schedule` WRITE;
/*!40000 ALTER TABLE `st_driver_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_shift_schedule`
--

DROP TABLE IF EXISTS `st_driver_shift_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_shift_schedule` (
  `shift_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `shift_uuid` varchar(100) NOT NULL DEFAULT '',
  `zone_id` bigint(20) NOT NULL DEFAULT 0,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `time_start` datetime DEFAULT NULL,
  `time_end` datetime DEFAULT NULL,
  `max_allow_slot` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`shift_id`),
  KEY `shift_uuid` (`shift_uuid`),
  KEY `zone_id` (`zone_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_shift_schedule`
--

LOCK TABLES `st_driver_shift_schedule` WRITE;
/*!40000 ALTER TABLE `st_driver_shift_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_shift_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_driver_vehicle`
--

DROP TABLE IF EXISTS `st_driver_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_driver_vehicle` (
  `vehicle_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `vehicle_uuid` varchar(100) NOT NULL DEFAULT '',
  `vehicle_type_id` int(14) DEFAULT 0,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `driver_id` bigint(20) NOT NULL DEFAULT 0,
  `plate_number` varchar(100) NOT NULL DEFAULT '',
  `maker` varchar(100) NOT NULL DEFAULT '',
  `model` varchar(100) NOT NULL DEFAULT '',
  `color` varchar(50) NOT NULL DEFAULT '',
  `photo` varchar(100) NOT NULL DEFAULT '',
  `path` varchar(200) NOT NULL DEFAULT '',
  `active` smallint(1) NOT NULL DEFAULT 1,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`vehicle_id`),
  KEY `vehicle_uuid` (`vehicle_uuid`),
  KEY `active` (`active`),
  KEY `vehicle_type_id` (`vehicle_type_id`),
  KEY `driver_id` (`driver_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_driver_vehicle`
--

LOCK TABLES `st_driver_vehicle` WRITE;
/*!40000 ALTER TABLE `st_driver_vehicle` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_driver_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_email_logs`
--

DROP TABLE IF EXISTS `st_email_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_email_logs` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `subject` varchar(255) NOT NULL DEFAULT '',
  `content` longtext DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `email_provider` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email_address` (`email_address`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_email_logs`
--

LOCK TABLES `st_email_logs` WRITE;
/*!40000 ALTER TABLE `st_email_logs` DISABLE KEYS */;
INSERT INTO `st_email_logs` VALUES (1,'jawa0056@gmail.com','ordre@chickenwaves.dk','Order Summary','<!DOCTYPE html>\n<html lang=\"en\">\n<head>\n<meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n<meta name=\"robots\" content=\"noindex, nofollow\" />\n<link href=\'http://fonts.googleapis.com/css2?family=Petrona:ital,wght@0,100;0,200;0,400;0,500;1,100;1,200&display=swap\' rel=\'stylesheet\' type=\'text/css\'>\n<link href=\'http://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300;0,400;0,600;1,300&display=swap\' rel=\'stylesheet\' type=\'text/css\'>\n<style type=\"text/css\">\nbody {\nfont-family: \'Petrona\', serif;\nbackground:#fff;\n}	\n\np{\nfont-family: \'Petrona\', serif;\nfont-size:14px;\nmargin:0;\n}	\n\nh5{\nfont-size:17px;\n}\nh5,h4,h3,h2,h1{\nmargin:0;	\n}\ntable.collapse {\n  border-collapse: collapse;  \n  font-size:14px;\n}\ntable.collapse thead{\nfont-size:15px;\nfont-weight:600;\n}\n\ntable.collapse td {  \n  padding:8px 10px;\n}\ntable.summary td{\npadding:3px 5px;\n}\n\nth,td {\n  padding: 3pt;  \n}\n\n.summary td,\ntable.items td,\ntable.summary_order td\n{\nfont-size:16px;\n}\ntable.items thead td{\nfont-size:17px;\n}\n\ntable.summary_order b{\nfont-size:18px;\n}\n\n</style>\n</head>\n<body>\n\n\n<table style=\"width:100%;\">\n <tbody><tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    <img style=\"max-width:15%;max-height:50px;\" src=\"\">\n  </td>\n </tr>\n <tr>\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\n    <h2 style=\"margin:0;\">Thanks for your order</h2>\n    <p style=\"padding:10px;\">You\'ll receive an email when your food are ready to deliver. If you have any questions, Call us .</p>\n    <br>    \n    <a href=\"http://localhost/orders/index?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\n     text-decoration:none;font-size:18px;font-weight:bold;\">\n     Track Order\n     </a>\n    \n   </td>\n </tr>\n \n <tr>\n  <td style=\"background:#fef9ef;\">\n      <table style=\"width:100%\" class=\"summary\">\n <tr>\n  <td style=\"width:50%;\" valign=\"top\">        \n    <table style=\"width:100%;\">\n     <tr>\n      <td colspan=\"2\"><h3>SUMMARY</h3></td>          \n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Order Number:</td>\n      <td valign=\"top\">10005</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Order Type:</td>\n      <td valign=\"top\">Afhentning</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Place On:</td>\n      <td valign=\"top\">Place on søn., april 5, 2026 10:32</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Order Total:</td>\n      <td valign=\"top\">47 kr</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Pickup Date/Time:</td>\n      <td valign=\"top\" >\n       	   Asap\n	         </td>\n     </tr>\n    </table>\n  </td>\n  <td style=\"width:50%;\" valign=\"top\">     \n    \n  </td>\n </tr>\n</table>     </td>\n </tr>\n \n <tr>\n   <td style=\"background:#ffffff;\">\n     <table style=\"width:100%\"  class=\"items\" >\n <thead>\n <tr>\n  <td style=\"width:50%;\"><b>ITEMS ORDERED</b></td>\n  <td style=\"width:30%;\"><b>QTY</b></td>\n  <td style=\"width:20%;\"><b>PRICE</b></td>\n </tr>\n </thead>\n <tr>\n  <td colspan=\"3\" style=\"padding:0;\"><div style=\"background-color:#B69A81; min-height:3px;\"></div></td>\n </tr>\n \n   <tr>\n  <td>\n  <b>O&#039;ring Cheese Burger</b>\n    (Standard)\n    \n   <br/>\n  \n       47 kr\n    \n     \n    \n    \n  </td>\n  <td style=\"padding:0 20px 0;\">1</td>\n  <td>\n       47 kr\n    </td>\n </tr>      \n \n<!--ADDON-->\n<!--ADDON-->\n\n <!-- ADDITIONAL CHARGE -->      \n<!-- ADDITIONAL CHARGE -->  \n\n \n  <!--ITEMS-->\n \n <tr>\n  <td colspan=\"3\" style=\"padding:0;\"><div style=\"background-color:#B69A81; min-height:3px;\"></div></td>\n </tr> \n\n <!--SUMMARY-->    \n    \n <tr class=\"summary_order\">\n  <td></td>\n  <td style=\"padding:0 20px 0;\">\n  \n        \n       Sub total (1 items) :\n        \n  </td>\n  <td>\n  \n       \n     47 kr\n       \n  </td>\n </tr> \n     \n <tr class=\"summary_order\">\n  <td></td>\n  <td style=\"padding:0 20px 0;\">\n  \n        \n       <b>I alt : </b>\n        \n  </td>\n  <td>\n  \n       \n     <b>47 kr</b>\n       \n  </td>\n </tr> \n       \n <!--SUMMARY-->      \n\n</table>   </td>\n </tr>\n  \n <tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    \n    <table style=\"width:100%; table-layout: fixed;\">\n	  <tbody><tr>\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\n	  </tr>\n	  <tr>\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\n	     <p></p>\n         <p></p>\n         <p></p>\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\n	    \n	    <table style=\"margin-bottom:20px;\">\n <tbody>\n  <tr>\n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:35px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/facebook.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:40px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/twitter.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:40px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/instagram.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:35px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/whatsapp.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:35px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/youtube.png\"></a></td>	       \n  </tr>\n</tbody>\n</table>	     \n	     <table>\n	      <tbody><tr>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\n	      <td>●</td>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\n	      </tr>\n	     </tbody></table>\n	    \n	    </td>\n	  </tr>\n	</tbody></table>\n  \n  </td>\n </tr>\n \n</tbody></table>\n\n\n</body>\n</html>','sent','resend','2026-04-05 10:32:32','127.0.0.1'),(2,'jawa0056@gmail.com','ordre@chickenwaves.dk','Order Summary','<!DOCTYPE html>\n<html lang=\"da\">\n<head>\n<meta charset=\"utf-8\">\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n<meta name=\"robots\" content=\"noindex, nofollow\" />\n<style type=\"text/css\">\nbody { margin:0; padding:0; background:#f5f5f5; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, sans-serif; }\np { font-size:14px; margin:0; color:#333; }\nh5 { font-size:17px; }\nh5,h4,h3,h2,h1 { margin:0; }\ntable.collapse { border-collapse:collapse; font-size:14px; }\ntable.collapse thead { font-size:15px; font-weight:600; }\ntable.collapse td { padding:8px 10px; }\ntable.summary td { padding:3px 5px; }\nth,td { padding:3pt; }\n.summary td, table.items td, table.summary_order td { font-size:15px; }\ntable.items thead td { font-size:16px; }\ntable.summary_order b { font-size:17px; }\n</style>\n</head>\n<body>\n<table style=\"width:100%;max-width:600px;margin:20px auto;border-collapse:collapse;\">\n<tr>\n <td style=\"background:#3d0d0f;padding:24px 30px;text-align:center;\">\n   <h1 style=\"color:#f17d00;font-size:28px;font-weight:800;letter-spacing:1px;margin:0;\">\n     Chicken <span style=\"color:#fff;\">N</span> Chicken\n   </h1>\n   <p style=\"color:#ccc;font-size:12px;margin-top:4px;\">Waves &middot; Greve</p>\n </td>\n</tr>\n<tr><td style=\"background:#fff;padding:30px;\">\n\n\n\n<table style=\"width:100%;\">\n <tbody><tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    <img style=\"max-width:15%;max-height:50px;\" src=\"\">\n  </td>\n </tr>\n <tr>\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\n    <h2 style=\"margin:0;\">Thanks for your order</h2>\n    <p style=\"padding:10px;\">You\'ll receive an email when your food are ready to deliver. If you have any questions, Call us .</p>\n    <br>    \n    <a href=\"http://localhost/orders/index?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\n     text-decoration:none;font-size:18px;font-weight:bold;\">\n     Track Order\n     </a>\n    \n   </td>\n </tr>\n \n <tr>\n  <td style=\"background:#fef9ef;\">\n      <table style=\"width:100%\" class=\"summary\">\n <tr>\n  <td style=\"width:50%;\" valign=\"top\">        \n    <table style=\"width:100%;\">\n     <tr>\n      <td colspan=\"2\"><h3>SUMMARY</h3></td>          \n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Order Number:</td>\n      <td valign=\"top\">10006</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Order Type:</td>\n      <td valign=\"top\">Afhentning</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Place On:</td>\n      <td valign=\"top\">Place on søn., april 5, 2026 13:08</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Order Total:</td>\n      <td valign=\"top\">53 kr</td>\n     </tr>\n     <tr>\n      <td style=\"width:35%;\" valign=\"top\">Pickup Date/Time:</td>\n      <td valign=\"top\" >\n       	   Asap\n	         </td>\n     </tr>\n    </table>\n  </td>\n  <td style=\"width:50%;\" valign=\"top\">     \n    \n  </td>\n </tr>\n</table>     </td>\n </tr>\n \n <tr>\n   <td style=\"background:#ffffff;\">\n     <table style=\"width:100%\"  class=\"items\" >\n <thead>\n <tr>\n  <td style=\"width:50%;\"><b>ITEMS ORDERED</b></td>\n  <td style=\"width:30%;\"><b>QTY</b></td>\n  <td style=\"width:20%;\"><b>PRICE</b></td>\n </tr>\n </thead>\n <tr>\n  <td colspan=\"3\" style=\"padding:0;\"><div style=\"background-color:#B69A81; min-height:3px;\"></div></td>\n </tr>\n \n   <tr>\n  <td>\n  <b>Peri Peri 30ml</b>\n    (Standard)\n    \n   <br/>\n  \n       6 kr\n    \n     \n    \n    \n  </td>\n  <td style=\"padding:0 20px 0;\">1</td>\n  <td>\n       6 kr\n    </td>\n </tr>      \n \n<!--ADDON-->\n<!--ADDON-->\n\n <!-- ADDITIONAL CHARGE -->      \n<!-- ADDITIONAL CHARGE -->  \n\n \n  <tr>\n  <td>\n  <b>O&#039;ring Cheese Burger</b>\n    (Standard)\n    \n   <br/>\n  \n       47 kr\n    \n     \n    \n    \n  </td>\n  <td style=\"padding:0 20px 0;\">1</td>\n  <td>\n       47 kr\n    </td>\n </tr>      \n \n<!--ADDON-->\n<!--ADDON-->\n\n <!-- ADDITIONAL CHARGE -->      \n<!-- ADDITIONAL CHARGE -->  \n\n \n  <!--ITEMS-->\n \n <tr>\n  <td colspan=\"3\" style=\"padding:0;\"><div style=\"background-color:#B69A81; min-height:3px;\"></div></td>\n </tr> \n\n <!--SUMMARY-->    \n    \n <tr class=\"summary_order\">\n  <td></td>\n  <td style=\"padding:0 20px 0;\">\n  \n        \n       Sub total (2 items) :\n        \n  </td>\n  <td>\n  \n       \n     53 kr\n       \n  </td>\n </tr> \n     \n <tr class=\"summary_order\">\n  <td></td>\n  <td style=\"padding:0 20px 0;\">\n  \n        \n       <b>I alt : </b>\n        \n  </td>\n  <td>\n  \n       \n     <b>53 kr</b>\n       \n  </td>\n </tr> \n       \n <!--SUMMARY-->      \n\n</table>   </td>\n </tr>\n  \n <tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    \n    <table style=\"width:100%; table-layout: fixed;\">\n	  <tbody><tr>\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\n	  </tr>\n	  <tr>\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\n	     <p></p>\n         <p></p>\n         <p></p>\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\n	    \n	    <table style=\"margin-bottom:20px;\">\n <tbody>\n  <tr>\n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:35px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/facebook.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:40px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/twitter.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:40px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/instagram.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:35px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/whatsapp.png\"></a></td>	       \n   <td style=\"padding:0 20px 0 0;\"><a href=\"\" target=\"_blank\"><img style=\"width:35px;\" src=\"http://localhost//themes/karenderia_v2/assets/images/youtube.png\"></a></td>	       \n  </tr>\n</tbody>\n</table>	     \n	     <table>\n	      <tbody><tr>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\n	      <td>●</td>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\n	      </tr>\n	     </tbody></table>\n	    \n	    </td>\n	  </tr>\n	</tbody></table>\n  \n  </td>\n </tr>\n \n</tbody></table>\n\n\n</td></tr>\n<tr>\n <td style=\"background:#3d0d0f;padding:24px 30px;text-align:center;\">\n   <h4 style=\"color:#f17d00;margin-bottom:8px;\">Chicken N Chicken Waves</h4>\n   <p style=\"color:#999;font-size:13px;\">Over B&oslash;lgen 3, st. 1 &middot; 2670 Greve</p>\n   <p style=\"color:#999;font-size:13px;margin-top:4px;\">chickenwaves.dk</p>\n </td>\n</tr>\n</table>\n</body>\n</html>\n','sent','resend','2026-04-05 13:08:09','127.0.0.1');
/*!40000 ALTER TABLE `st_email_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_email_provider`
--

DROP TABLE IF EXISTS `st_email_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_email_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(100) NOT NULL DEFAULT '',
  `provider_name` varchar(255) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT 0,
  `sender_name` varchar(255) NOT NULL DEFAULT '',
  `sender` varchar(255) NOT NULL DEFAULT '',
  `api_key` varchar(255) NOT NULL DEFAULT '',
  `secret_key` varchar(255) NOT NULL DEFAULT '',
  `smtp_host` varchar(255) NOT NULL DEFAULT '',
  `smtp_port` varchar(255) NOT NULL DEFAULT '',
  `smtp_username` varchar(255) NOT NULL DEFAULT '',
  `smtp_password` varchar(255) NOT NULL DEFAULT '',
  `smtp_secure` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  KEY `provider_name` (`provider_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_email_provider`
--

LOCK TABLES `st_email_provider` WRITE;
/*!40000 ALTER TABLE `st_email_provider` DISABLE KEYS */;
INSERT INTO `st_email_provider` VALUES (1,'phpmail','PHP Mail',0,'','','','','','','','','',NULL,'2021-11-28 14:20:01','127.0.0.1'),(2,'smtp','SMTP',0,'','','','','','','','','',NULL,'2021-10-08 09:26:57','::1'),(4,'sendgrid','SendGrid',0,'','','','','','','','','',NULL,'2021-11-27 01:54:53','127.0.0.1'),(5,'mailjet','MailJet',0,'','','','','','','','','',NULL,'2021-10-08 09:27:48','::1'),(6,'elastic','Elastic Email',0,'','','','','','','','','',NULL,'2021-10-08 09:28:06','::1'),(7,'resend','Resend',1,'Chicken N Chicken Waves','ordre@chickenwaves.dk','re_AJWRZn2g_76rYA75AszGvQjjLZTcL6oy5','','','','','','','2026-04-04 18:44:41','2026-04-04 18:44:41','');
/*!40000 ALTER TABLE `st_email_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_favorites`
--

DROP TABLE IF EXISTS `st_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_favorites` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `fav_type` varchar(100) NOT NULL DEFAULT 'restaurant',
  `client_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `cat_id` int(14) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `fav_type` (`fav_type`),
  KEY `client_id` (`client_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_id` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_favorites`
--

LOCK TABLES `st_favorites` WRITE;
/*!40000 ALTER TABLE `st_favorites` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_featured_location`
--

DROP TABLE IF EXISTS `st_featured_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_featured_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `featured_name` varchar(50) NOT NULL DEFAULT '',
  `location_name` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `featured_name` (`featured_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_featured_location`
--

LOCK TABLES `st_featured_location` WRITE;
/*!40000 ALTER TABLE `st_featured_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_featured_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_food_item_reviews`
--

DROP TABLE IF EXISTS `st_food_item_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_food_item_reviews` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) NOT NULL DEFAULT 0,
  `item_id` int(10) NOT NULL DEFAULT 0,
  `order_id` int(10) NOT NULL DEFAULT 0,
  `client_id` int(10) NOT NULL DEFAULT 0,
  `rating` tinyint(5) NOT NULL DEFAULT 0,
  `review_text` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_id` (`item_id`),
  KEY `order_id` (`order_id`),
  KEY `client_id` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_food_item_reviews`
--

LOCK TABLES `st_food_item_reviews` WRITE;
/*!40000 ALTER TABLE `st_food_item_reviews` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_food_item_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_gpdr_request`
--

DROP TABLE IF EXISTS `st_gpdr_request`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_gpdr_request` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `request_type` varchar(255) NOT NULL DEFAULT '',
  `client_id` int(14) NOT NULL DEFAULT 0,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `email_address` varchar(255) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `request_type` (`request_type`),
  KEY `client_id` (`client_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_gpdr_request`
--

LOCK TABLES `st_gpdr_request` WRITE;
/*!40000 ALTER TABLE `st_gpdr_request` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_gpdr_request` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_holidays`
--

DROP TABLE IF EXISTS `st_holidays`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_holidays` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL,
  `holiday_date` date NOT NULL,
  `holiday_name` varchar(255) NOT NULL,
  `is_closed` tinyint(1) DEFAULT 1,
  `open_time` time DEFAULT NULL,
  `close_time` time DEFAULT NULL,
  `reason` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_holidays`
--

LOCK TABLES `st_holidays` WRITE;
/*!40000 ALTER TABLE `st_holidays` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_holidays` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ingredients`
--

DROP TABLE IF EXISTS `st_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ingredients` (
  `ingredients_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `ingredients_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`ingredients_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `ingredients_name` (`ingredients_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ingredients`
--

LOCK TABLES `st_ingredients` WRITE;
/*!40000 ALTER TABLE `st_ingredients` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ingredients_translation`
--

DROP TABLE IF EXISTS `st_ingredients_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ingredients_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `ingredients_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `ingredients_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `ingredients_id` (`ingredients_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ingredients_translation`
--

LOCK TABLES `st_ingredients_translation` WRITE;
/*!40000 ALTER TABLE `st_ingredients_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ingredients_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_inventory_supplier`
--

DROP TABLE IF EXISTS `st_inventory_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_inventory_supplier` (
  `supplier_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `supplier_name` varchar(255) NOT NULL DEFAULT '',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `phone_number` varchar(50) NOT NULL DEFAULT '',
  `address_1` varchar(255) NOT NULL DEFAULT '',
  `address_2` varchar(255) NOT NULL DEFAULT '',
  `city` varchar(100) NOT NULL DEFAULT '',
  `postal_code` varchar(100) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `region` varchar(100) NOT NULL DEFAULT '',
  `notes` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`supplier_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_inventory_supplier`
--

LOCK TABLES `st_inventory_supplier` WRITE;
/*!40000 ALTER TABLE `st_inventory_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_inventory_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_invoice`
--

DROP TABLE IF EXISTS `st_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_invoice` (
  `invoice_number` int(14) NOT NULL AUTO_INCREMENT,
  `invoice_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `restaurant_name` varchar(255) NOT NULL DEFAULT '',
  `business_address` varchar(255) DEFAULT '',
  `contact_email` varchar(200) NOT NULL DEFAULT '',
  `contact_phone` varchar(50) NOT NULL DEFAULT '',
  `invoice_terms` int(14) NOT NULL DEFAULT 0,
  `invoice_total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `amount_paid` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `merchant_base_currency` varchar(10) NOT NULL DEFAULT '',
  `admin_base_currency` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate_merchant_to_admin` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `exchange_rate_admin_to_merchant` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `invoice_created` datetime DEFAULT NULL,
  `due_date` datetime DEFAULT NULL,
  `date_from` datetime DEFAULT NULL,
  `date_to` datetime DEFAULT NULL,
  `payment_status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `viewed` smallint(1) NOT NULL DEFAULT 0,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`invoice_number`),
  KEY `invoice_token` (`invoice_uuid`),
  KEY `merchant_id` (`merchant_id`),
  KEY `date_from` (`date_from`),
  KEY `date_to` (`date_to`),
  KEY `invoice_total` (`invoice_total`),
  KEY `invoice_terms` (`invoice_terms`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_invoice`
--

LOCK TABLES `st_invoice` WRITE;
/*!40000 ALTER TABLE `st_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_invoice_meta`
--

DROP TABLE IF EXISTS `st_invoice_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_invoice_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_number` int(14) NOT NULL DEFAULT 0,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value1` varchar(255) NOT NULL DEFAULT '',
  `meta_value2` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `invoice_number` (`invoice_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_invoice_meta`
--

LOCK TABLES `st_invoice_meta` WRITE;
/*!40000 ALTER TABLE `st_invoice_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_invoice_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item`
--

DROP TABLE IF EXISTS `st_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item` (
  `item_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `item_description` text DEFAULT NULL,
  `item_short_description` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `is_featured` varchar(1) NOT NULL DEFAULT '',
  `featured_priority` int(10) DEFAULT NULL,
  `non_taxable` int(1) NOT NULL DEFAULT 1,
  `available` int(1) NOT NULL DEFAULT 1,
  `points_earned` int(14) NOT NULL DEFAULT 0,
  `points_enabled` int(1) NOT NULL DEFAULT 1,
  `packaging_fee` float(14,4) NOT NULL DEFAULT 0.0000,
  `packaging_incremental` int(1) NOT NULL DEFAULT 0,
  `item_token` varchar(50) NOT NULL DEFAULT '',
  `sku` varchar(255) NOT NULL DEFAULT '',
  `track_stock` int(1) NOT NULL DEFAULT 1,
  `supplier_id` int(14) NOT NULL DEFAULT 0,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_image` varchar(255) NOT NULL DEFAULT '',
  `meta_image_path` varchar(255) NOT NULL DEFAULT '',
  `cooking_ref_required` smallint(1) NOT NULL DEFAULT 0,
  `ingredients_preselected` tinyint(1) NOT NULL DEFAULT 0,
  `available_at_specific` tinyint(1) NOT NULL DEFAULT 0,
  `not_for_sale` tinyint(1) NOT NULL DEFAULT 0,
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `visible` int(1) NOT NULL DEFAULT 1,
  `preparation_time` int(10) NOT NULL DEFAULT 0,
  `extra_preparation_time` int(10) NOT NULL DEFAULT 0,
  `unavailable_until` datetime DEFAULT NULL,
  `is_promo_free_item` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `is_featured` (`is_featured`),
  KEY `points_earned` (`points_earned`),
  KEY `is_promo_free_item` (`is_promo_free_item`),
  KEY `slug` (`slug`),
  KEY `available` (`available`),
  KEY `available_at_specific` (`available_at_specific`),
  KEY `visible` (`visible`),
  KEY `not_for_sale` (`not_for_sale`),
  KEY `item_token` (`item_token`),
  KEY `sequence` (`sequence`),
  KEY `points_enabled` (`points_enabled`),
  FULLTEXT KEY `item_name` (`item_name`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item`
--

LOCK TABLES `st_item` WRITE;
/*!40000 ALTER TABLE `st_item` DISABLE KEYS */;
INSERT INTO `st_item` VALUES (1,1,'O\'ring Cheese Burger','beef-burger-oring-cheese-burger','Oksebøf, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle','','publish','o-ring-cheese-burger.png','upload/item/1/',0,'',NULL,1,1,0,1,0.0000,0,'086180f0-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(2,1,'O\'ring Cheese Burger Meal','beef-burger-oring-cheese-burger-meal','Oksebøf 56g, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle\nPomfritter og sodavand','','publish','o-ring-cheese-burger-meal.png','upload/item/2/',0,'',NULL,1,1,0,1,0.0000,0,'0861a1bc-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(3,1,'Double Cheese Menu','beef-burger-double-cheese-menu','Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing','','publish','double-cheese-menu.png','upload/item/3/',0,'',NULL,1,1,0,1,0.0000,0,'0861a24b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(4,1,'Triple Cheese Burger Menu','beef-burger-triple-cheese-burger-menu','Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing','','publish','triple-cheese-burger-menu.png','upload/item/4/',0,'',NULL,1,1,0,1,0.0000,0,'0861a2a2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(5,1,'Grand Beef Menu','beef-burger-grand-beef-menu','Stor oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle\nPomfritter og sodavand','','publish','grand-beef-menu.png','upload/item/5/',0,'',NULL,1,1,0,1,0.0000,0,'0861a549-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(6,1,'Mega Beef Parmesan Menu','beef-burger-mega-beef-parmesan-menu','Stor oksebøf, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle\nPomfritter og sodavand','','publish','mega-beef-parmesan-menu.png','upload/item/6/',0,'',NULL,1,1,0,1,0.0000,0,'0861a58b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(7,1,'Cheese Burger','beef-burger-cheese-burger','Oksebøf, cheddar, iceberg, mayonnaise, ketchup','','publish','cheese-burger.png','upload/item/7/',0,'',NULL,1,1,0,1,0.0000,0,'0861a5c2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(8,1,'Double Cheese','beef-burger-double-cheese','Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing','','publish','double-cheese.png','upload/item/8/',0,'',NULL,1,1,0,1,0.0000,0,'0861a720-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(9,1,'Triple Cheese Burger','beef-burger-triple-cheese-burger','Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing','','publish','triple-cheese-burger.png','upload/item/9/',0,'',NULL,1,1,0,1,0.0000,0,'0861a7c2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(10,1,'Grand Beef','beef-burger-grand-beef','Stor oksebøf 113g, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle','','publish','grand-beef.png','upload/item/10/',0,'',NULL,1,1,0,1,0.0000,0,'0861a813-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(11,1,'Mega Beef Parmesan','beef-burger-mega-beef-parmesan','Stor oksebøf 113g, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle','','publish','mega-beef-parmesan.png','upload/item/11/',0,'',NULL,1,1,0,1,0.0000,0,'0861a885-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(12,1,'Chuckle Chickpea','chicken-amp-fish-burgers-chuckle-chickpea','Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle','','publish','chuckle-chickpea.png','upload/item/12/',0,'',NULL,1,1,0,1,0.0000,0,'0861a8c6-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(13,1,'Chuckle Chickpea Menu','chicken-amp-fish-burgers-chuckle-chickpea-menu','Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle','','publish','chuckle-chickpea-menu.png','upload/item/13/',0,'',NULL,1,1,0,1,0.0000,0,'0861a8ff-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(14,1,'Chicken Royal Menu','chicken-amp-fish-burgers-chicken-royal-menu','Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise','','publish','chicken-royal-menu.png','upload/item/14/',0,'',NULL,1,1,0,1,0.0000,0,'0861a935-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(15,1,'Chicken Special Menu','chicken-amp-fish-burgers-chicken-special-menu','Frisk paneret kyllingefilet, iceberg, mayonnaise','','publish','chicken-special-menu.png','upload/item/15/',0,'',NULL,1,1,0,1,0.0000,0,'0861a96a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(16,1,'Naan Grill Tikka Menu','chicken-amp-fish-burgers-naan-grill-tikka-menu','Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing','','publish','naan-grill-tikka-menu.png','upload/item/16/',0,'',NULL,1,1,0,1,0.0000,0,'0861a9b9-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(17,1,'Big Chicken Menu','chicken-amp-fish-burgers-big-chicken-menu','Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle\nPomfritter og sodavand','','publish','big-chicken-menu.png','upload/item/17/',0,'',NULL,1,1,0,1,0.0000,0,'0861a9f3-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(18,1,'Tikka Burger Menu','chicken-amp-fish-burgers-tikka-burger-menu','Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise','','publish','tikka-burger-menu.png','upload/item/18/',0,'',NULL,1,1,0,1,0.0000,0,'0861aa39-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(19,1,'Texas Crispy Chicken Menu','chicken-amp-fish-burgers-texas-crispy-chicken-menu','Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise','','publish','texas-crispy-chicken-menu.png','upload/item/19/',0,'',NULL,1,1,0,1,0.0000,0,'0861aaa2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(20,1,'Tikka Baguette Menu','chicken-amp-fish-burgers-tikka-baguette-menu','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','tikka-baguette-menu.png','upload/item/20/',0,'',NULL,1,1,0,1,0.0000,0,'0861aae2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(21,1,'Chicken Baguette Menu','chicken-amp-fish-burgers-chicken-baguette-menu','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-baguette-menu.png','upload/item/21/',0,'',NULL,1,1,0,1,0.0000,0,'0861ab36-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(22,1,'Mega Chicken Parmesan Menu','chicken-amp-fish-burgers-mega-chicken-parmesan-menu','Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle\nPomfritter og s...','','publish','mega-chicken-parmesan-menu.png','upload/item/22/',0,'',NULL,1,1,0,1,0.0000,0,'0861ab9a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(23,1,'Fishy De Fish Menu','chicken-amp-fish-burgers-fishy-de-fish-menu','Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing','','publish','fishy-de-fish-menu.png','upload/item/23/',0,'',NULL,1,1,0,1,0.0000,0,'0861abcc-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(24,1,'Chicken Royal','chicken-amp-fish-burgers-chicken-royal','Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise','','publish','chicken-royal.png','upload/item/24/',0,'',NULL,1,1,0,1,0.0000,0,'0861abf8-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(25,1,'Chicken Special','chicken-amp-fish-burgers-chicken-special','Frisk paneret kyllingefilet, iceberg, mayonnaise','','publish','chicken-special.png','upload/item/25/',0,'',NULL,1,1,0,1,0.0000,0,'0861accd-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(26,1,'Naan Grill Tikka','chicken-amp-fish-burgers-naan-grill-tikka','Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing','','publish','naan-grill-tikka.png','upload/item/26/',0,'',NULL,1,1,0,1,0.0000,0,'0861ad02-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(27,1,'Big Chicken','chicken-amp-fish-burgers-big-chicken','Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle','','publish','big-chicken.png','upload/item/27/',0,'',NULL,1,1,0,1,0.0000,0,'0861f2ff-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(28,1,'Tikka Burger','chicken-amp-fish-burgers-tikka-burger','Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise','','publish','tikka-burger.png','upload/item/28/',0,'',NULL,1,1,0,1,0.0000,0,'0861f455-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(29,1,'Texas Crispy Chicken','chicken-amp-fish-burgers-texas-crispy-chicken','Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise','','publish','texas-crispy-chicken.png','upload/item/29/',0,'',NULL,1,1,0,1,0.0000,0,'0861f4a4-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(30,1,'Tikka Baguette','chicken-amp-fish-burgers-tikka-baguette','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','tikka-baguette.png','upload/item/30/',0,'',NULL,1,1,0,1,0.0000,0,'0861f4d6-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(31,1,'Chicken Baguette','chicken-amp-fish-burgers-chicken-baguette','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-baguette.png','upload/item/31/',0,'',NULL,1,1,0,1,0.0000,0,'0861f503-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(32,1,'Mega Chicken Parmesan','chicken-amp-fish-burgers-mega-chicken-parmesan','Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle','','publish','mega-chicken-parmesan.png','upload/item/32/',0,'',NULL,1,1,0,1,0.0000,0,'0861f52e-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(33,1,'Fishy De Fish','chicken-amp-fish-burgers-fishy-de-fish','Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing','','publish','fishy-de-fish.png','upload/item/33/',0,'',NULL,1,1,0,1,0.0000,0,'0861f55b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(34,1,'Veggie Salad','vegi-s-amp-salad-veggie-salad','Iceberg, tomat, fetaost, gulerod, jalapeños, rødløg, rucola, grøn oliven','','publish','veggie-salad.png','upload/item/34/',0,'',NULL,1,1,0,1,0.0000,0,'0861f5d3-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(35,1,'Chicken Strips Salad','vegi-s-amp-salad-chicken-strips-salad','Frisk paneret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven','','publish','chicken-strips-salad.png','upload/item/35/',0,'',NULL,1,1,0,1,0.0000,0,'0861f60a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(36,1,'Chicken Tikka Salad','vegi-s-amp-salad-chicken-tikka-salad','Grillet tandoorimarineret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven','','publish','chicken-tikka-salad.png','upload/item/36/',0,'',NULL,1,1,0,1,0.0000,0,'0861f634-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(37,1,'Corn','vegi-s-amp-salad-corn','Corn','','publish','corn.png','upload/item/37/',0,'',NULL,1,1,0,1,0.0000,0,'0861f65e-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(38,1,'Taco M Menu','wraps-amp-tacos-taco-m-menu','Pålæg, fromage smørrelse, pomfritter\n1 stk. pålæg efter eget valg. inkl. pomfritter + sodavand','','publish','taco-m-menu.png','upload/item/38/',0,'',NULL,1,1,0,1,0.0000,0,'0861f68c-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(39,1,'Taco L Menu','wraps-amp-tacos-taco-l-menu','Pålæg, fromage smørrelse, pomfritter\n2 stk. pålæg efter eget valg. inkl. pomfritter + sodavand','','publish','taco-m-menu.png','upload/item/39/',0,'',NULL,1,1,0,1,0.0000,0,'0861f754-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(40,1,'Taco XL Menu','wraps-amp-tacos-taco-xl-menu','Pålæg, fromage smørrelse, pomfritter\n3 stk. pålæg efter eget valg. inkl. pomfritter + sodavand','','publish','taco-m-menu.png','upload/item/40/',0,'',NULL,1,1,0,1,0.0000,0,'0861f784-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(41,1,'Chicken Fillet Wrap Menu','wraps-amp-tacos-chicken-fillet-wrap-menu','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-fillet-wrap-menu.png','upload/item/41/',0,'',NULL,1,1,0,1,0.0000,0,'0861f7ae-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(42,1,'Chicken Tikka Wrap Menu','wraps-amp-tacos-chicken-tikka-wrap-menu','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-tikka-wrap-menu.png','upload/item/42/',0,'',NULL,1,1,0,1,0.0000,0,'0861f7d7-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(43,1,'Kebab Wrap Menu','wraps-amp-tacos-kebab-wrap-menu','Kyllinge shawarma, løg, tomat, iceberg, kebab dressing','','publish','kebab-wrap-menu.png','upload/item/43/',0,'',NULL,1,1,0,1,0.0000,0,'0861f80b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(44,1,'Taco M','wraps-amp-tacos-taco-m','','','publish','taco-m.png','upload/item/44/',0,'',NULL,1,1,0,1,0.0000,0,'0861f84a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(45,1,'Taco L','wraps-amp-tacos-taco-l','','','publish','taco-m.png','upload/item/45/',0,'',NULL,1,1,0,1,0.0000,0,'0861f877-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(46,1,'Taco XL','wraps-amp-tacos-taco-xl','','','publish','taco-m.png','upload/item/46/',0,'',NULL,1,1,0,1,0.0000,0,'0861f8a0-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(47,1,'Chicken Fillet Wrap','wraps-amp-tacos-chicken-fillet-wrap','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-fillet-wrap.png','upload/item/47/',0,'',NULL,1,1,0,1,0.0000,0,'0861f8c8-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(48,1,'Chicken Tikka Wrap','wraps-amp-tacos-chicken-tikka-wrap','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-tikka-wrap.png','upload/item/48/',0,'',NULL,1,1,0,1,0.0000,0,'0861f8fe-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(49,1,'Kebab Wrap','wraps-amp-tacos-kebab-wrap','Kyllinge shawarma, løg, tomat, iceberg, kebab dressing','','publish','kebab-wrap.png','upload/item/49/',0,'',NULL,1,1,0,1,0.0000,0,'0861f929-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(50,1,'Family 1','family-amp-social-bucket-family-1','10 stk. Drumsticks','','publish','family-1.png','upload/item/50/',0,'',NULL,1,1,0,1,0.0000,0,'0861f951-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(51,1,'Family 2','family-amp-social-bucket-family-2','6 stk. Drumsticks + 12 stk. Hot Spicy Wings','','publish','family-2.png','upload/item/51/',0,'',NULL,1,1,0,1,0.0000,0,'0861f97a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(52,1,'Family 3','family-amp-social-bucket-family-3','4 stk. Drumsticks + 16 stk. Hot Spicy Wings + 10 stk. Chicken Strips','','publish','family-3.png','upload/item/52/',0,'',NULL,1,1,0,1,0.0000,0,'0861f9ad-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(53,1,'Family 4','family-amp-social-bucket-family-4','24 stk. Hot Spicy Wings','','publish','family-4.png','upload/item/53/',0,'',NULL,1,1,0,1,0.0000,0,'0861fa3a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(54,1,'Family 5','family-amp-social-bucket-family-5','15 stk. Chicken Strips + 22 stk. Hot Spicy Wings','','publish','family-5.png','upload/item/54/',0,'',NULL,1,1,0,1,0.0000,0,'0861fa63-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(55,1,'Family 6','family-amp-social-bucket-family-6','22 stk. Chicken Strips','','publish','family-6.png','upload/item/55/',0,'',NULL,1,1,0,1,0.0000,0,'0861fa8d-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(56,1,'2 stk. Chicken Drumstick Menu','chicken-n-chicken-2-stk.-chicken-drumstick-menu','Kyllingestykker håndpaneret i den unikke \"Chicken n Chicken\" panering.\nVores kyllingestykker er håndpanerede med vores blanding...','','publish','2-stk-chicken-drumstick-menu.png','upload/item/56/',0,'',NULL,1,1,0,1,0.0000,0,'0861fad8-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(57,1,'3 stk. Chicken Drumsticks Menu','chicken-n-chicken-3-stk.-chicken-drumsticks-menu','Kyllingestykker håndpaneret i den unikke \"Chicken n Chicken\" panering.\nVores kyllingestykker er håndpanerede med vores blanding...','','publish','3-stk-chicken-drumsticks-menu.png','upload/item/57/',0,'',NULL,1,1,0,1,0.0000,0,'0861fb12-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(58,1,'8 stk. Hot Spicy Wings Menu','chicken-n-chicken-8-stk.-hot-spicy-wings-menu','Kyllingevinger, som er marineret i en krydret chili-marinade.','','publish','8-stk-hot-spicy-wings-menu.png','upload/item/58/',0,'',NULL,1,1,0,1,0.0000,0,'0861fb3d-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(59,1,'12 stk. Hot Spicy Wings Menu','chicken-n-chicken-12-stk.-hot-spicy-wings-menu','Kyllingevinger, som er marineret i en krydret chili-marinade.','','publish','12-stk-hot-spicy-wings-menu.png','upload/item/59/',0,'',NULL,1,1,0,1,0.0000,0,'0861fb66-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(60,1,'6 stk. Chicken Strips Menu','chicken-n-chicken-6-stk.-chicken-strips-menu','Kyllingefileter, håndpaneret i \"Chicken N Chicken\" paneringen','','publish','6-stk-chicken-strips-menu.png','upload/item/60/',0,'',NULL,1,1,0,1,0.0000,0,'0861fb9a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(61,1,'6 stk. Chicken Tikka Menu','chicken-n-chicken-6-stk.-chicken-tikka-menu','Kyllingefileter, håndpaneret i \"Chicken N Chicken\" paneringen','','publish','6-stk-chicken-tikka-menu.png','upload/item/61/',0,'',NULL,1,1,0,1,0.0000,0,'0861fbc2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(62,1,'6 stk. Chicken Nuggets Menu','chicken-n-chicken-6-stk.-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','6-stk-chicken-nuggets-menu.png','upload/item/62/',0,'',NULL,1,1,0,1,0.0000,0,'0861fbe9-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(63,1,'10 stk. Chicken Nuggets Menu','chicken-n-chicken-10-stk.-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','10-stk-chicken-nuggets-menu.png','upload/item/63/',0,'',NULL,1,1,0,1,0.0000,0,'0861fc12-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(64,1,'15 stk. Chicken Nuggets Menu','chicken-n-chicken-15-stk.-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','10-stk-chicken-nuggets-menu.png','upload/item/64/',0,'',NULL,1,1,0,1,0.0000,0,'0861fcc5-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(65,1,'20 stk. Chicken Nuggets Menu','chicken-n-chicken-20-stk.-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','10-stk-chicken-nuggets-menu.png','upload/item/65/',0,'',NULL,1,1,0,1,0.0000,0,'0861fd45-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(66,1,'12 stk. Chicken Pop Corn Menu','chicken-n-chicken-12-stk.-chicken-pop-corn-menu','','','publish','12-stk-chicken-pop-corn-menu.png','upload/item/66/',0,'',NULL,1,1,0,1,0.0000,0,'0861fd72-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(67,1,'20 stk. Chicken Pop Corn Menu','chicken-n-chicken-20-stk.-chicken-pop-corn-menu','','','publish','12-stk-chicken-pop-corn-menu.png','upload/item/67/',0,'',NULL,1,1,0,1,0.0000,0,'0861fd9c-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(68,1,'1 stk. Chicken Drumstick','chicken-n-chicken-1-stk.-chicken-drumstick','','','publish','1-stk-chicken-drumstick.png','upload/item/68/',0,'',NULL,1,1,0,1,0.0000,0,'0861fe3a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(69,1,'2 stk. Chicken Drumsticks','chicken-n-chicken-2-stk.-chicken-drumsticks','','','publish','2-stk-chicken-drumsticks.png','upload/item/69/',0,'',NULL,1,1,0,1,0.0000,0,'0861fe63-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(70,1,'3 stk. Chicken Drumsticks','chicken-n-chicken-3-stk.-chicken-drumsticks','','','publish','3-stk-chicken-drumsticks.png','upload/item/70/',0,'',NULL,1,1,0,1,0.0000,0,'0861fe8b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(71,1,'4 stk. Chicken Drumsticks','chicken-n-chicken-4-stk.-chicken-drumsticks','','','publish','4-stk-chicken-drumsticks.png','upload/item/71/',0,'',NULL,1,1,0,1,0.0000,0,'0861feb4-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(72,1,'5 stk. Chicken Drumsticks','chicken-n-chicken-5-stk.-chicken-drumsticks','','','publish','5-stk-chicken-drumsticks.png','upload/item/72/',0,'',NULL,1,1,0,1,0.0000,0,'0861fedc-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(73,1,'6 stk. Chicken Drumsticks','chicken-n-chicken-6-stk.-chicken-drumsticks','','','publish','6-stk-chicken-drumsticks.png','upload/item/73/',0,'',NULL,1,1,0,1,0.0000,0,'0861ff03-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(74,1,'8 stk. Hot Spicy Wings','chicken-n-chicken-8-stk.-hot-spicy-wings','','','publish','8-stk-hot-spicy-wings.png','upload/item/74/',0,'',NULL,1,1,0,1,0.0000,0,'0861ff2c-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(75,1,'12 stk. Hot Spicy Wings','chicken-n-chicken-12-stk.-hot-spicy-wings','','','publish','12-stk-hot-spicy-wings.png','upload/item/75/',0,'',NULL,1,1,0,1,0.0000,0,'0861ff54-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(76,1,'17 stk. Hot Spicy Wings','chicken-n-chicken-17-stk.-hot-spicy-wings','','','publish','17-stk-hot-spicy-wings.png','upload/item/76/',0,'',NULL,1,1,0,1,0.0000,0,'0861ff7a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(77,1,'22 stk. Hot Spicy Wings','chicken-n-chicken-22-stk.-hot-spicy-wings','','','publish','22-stk-hot-spicy-wings.png','upload/item/77/',0,'',NULL,1,1,0,1,0.0000,0,'0861ffa7-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(78,1,'6 stk. Chicken Strips','chicken-n-chicken-6-stk.-chicken-strips','','','publish','6-stk-chicken-strips.png','upload/item/78/',0,'',NULL,1,1,0,1,0.0000,0,'086201e0-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(79,1,'10 stk. Chicken Strips','chicken-n-chicken-10-stk.-chicken-strips','','','publish','10-stk-chicken-strips.png','upload/item/79/',0,'',NULL,1,1,0,1,0.0000,0,'08620238-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(80,1,'6 stk. Chicken Tikka','chicken-n-chicken-6-stk.-chicken-tikka','','','publish','6-stk-chicken-tikka.png','upload/item/80/',0,'',NULL,1,1,0,1,0.0000,0,'08620268-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(81,1,'6 stk. Chicken Nuggets','chicken-n-chicken-6-stk.-chicken-nuggets','','','publish','6-stk-chicken-nuggets.png','upload/item/81/',0,'',NULL,1,1,0,1,0.0000,0,'08620293-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(82,1,'10 stk. Chicken Nuggets','chicken-n-chicken-10-stk.-chicken-nuggets','','','publish','6-stk-chicken-nuggets.png','upload/item/82/',0,'',NULL,1,1,0,1,0.0000,0,'086202bc-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(83,1,'15 stk. Chicken Nuggets','chicken-n-chicken-15-stk.-chicken-nuggets','','','publish','6-stk-chicken-nuggets.png','upload/item/83/',0,'',NULL,1,1,0,1,0.0000,0,'086202e5-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(84,1,'20 stk. Chicken Nuggets','chicken-n-chicken-20-stk.-chicken-nuggets','','','publish','6-stk-chicken-nuggets.png','upload/item/84/',0,'',NULL,1,1,0,1,0.0000,0,'08620534-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(85,1,'6 stk. Chicken Pop Corn','chicken-n-chicken-6-stk.-chicken-pop-corn','','','publish','6-stk-chicken-pop-corn.png','upload/item/85/',0,'',NULL,1,1,0,1,0.0000,0,'086205f6-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(86,1,'12 stk. Chicken Pop Corn','chicken-n-chicken-12-stk.-chicken-pop-corn','','','publish','6-stk-chicken-pop-corn.png','upload/item/86/',0,'',NULL,1,1,0,1,0.0000,0,'08620698-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(87,1,'20 stk. Chicken Pop Corn','chicken-n-chicken-20-stk.-chicken-pop-corn','','','publish','6-stk-chicken-pop-corn.png','upload/item/87/',0,'',NULL,1,1,0,1,0.0000,0,'086206ca-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(88,1,'Kids Meal 1 - Hamburger','kids-meal-kids-meal-1---hamburger','Hamburger indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-1-hamburger.png','upload/item/88/',0,'',NULL,1,1,0,1,0.0000,0,'086206f6-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(89,1,'Kids Meal 2 - Chicken Strips 2 Stk.','kids-meal-kids-meal-2---chicken-strips-2-stk.','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-2-chicken-strips-2-stk.png','upload/item/89/',0,'',NULL,1,1,0,1,0.0000,0,'08620722-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(90,1,'Kids Meal 3 - 5 stk. Chicken Pop Corn','kids-meal-kids-meal-3---5-stk.-chicken-pop-corn','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-3-5-stk-chicken-pop-corn.png','upload/item/90/',0,'',NULL,1,1,0,1,0.0000,0,'0862074d-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(91,1,'Kids Meal 4 - 4 stk. Chicken Nuggets','kids-meal-kids-meal-4---4-stk.-chicken-nuggets','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-4-4-stk-chicken-nuggets.png','upload/item/91/',0,'',NULL,1,1,0,1,0.0000,0,'08620777-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(92,1,'Kids Meal 5 - 1 stk. Drumstick','kids-meal-kids-meal-5---1-stk.-drumstick','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-5-1-stk-drumstick.png','upload/item/92/',0,'',NULL,1,1,0,1,0.0000,0,'0862079f-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(93,1,'Pommes Frites (medium)','sides-amp-dips-pommes-frites-(medium)','Pommes Frites (medium)','','publish','pommes-frites-medium.png','upload/item/93/',0,'',NULL,1,1,0,1,0.0000,0,'086207c7-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(94,1,'Pommes Frites (large)','sides-amp-dips-pommes-frites-(large)','Pommes Frites (large)','','publish','pommes-frites-large.png','upload/item/94/',0,'',NULL,1,1,0,1,0.0000,0,'086207f5-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(95,1,'Potatoes Wedges','sides-amp-dips-potatoes-wedges','Potatoes Wedges','','publish','potatoes-wedges.png','upload/item/95/',0,'',NULL,1,1,0,1,0.0000,0,'0862081e-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(96,1,'Frites Spirales','sides-amp-dips-frites-spirales','Frites Spirales','','publish','frites-spirales.png','upload/item/96/',0,'',NULL,1,1,0,1,0.0000,0,'08620847-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(97,1,'Frites Dippers','sides-amp-dips-frites-dippers','Frites Dippers','','publish','frites-dippers.png','upload/item/97/',0,'',NULL,1,1,0,1,0.0000,0,'08620870-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(98,1,'6 Onion Rings','sides-amp-dips-6-onion-rings','6 Onion Rings','','publish','6-onion-rings.png','upload/item/98/',0,'',NULL,1,1,0,1,0.0000,0,'08620898-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(99,1,'10 Chili Cheese Nuggets','sides-amp-dips-10-chili-cheese-nuggets','10 Chili Cheese Nuggets','','publish','10-chili-cheese-nuggets.png','upload/item/99/',0,'',NULL,1,1,0,1,0.0000,0,'086208c0-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(100,1,'6 Mozzarella Sticks','sides-amp-dips-6-mozzarella-sticks','6 Mozzarella Sticks','','publish','6-mozzarella-sticks.png','upload/item/100/',0,'',NULL,1,1,0,1,0.0000,0,'0862094c-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(101,1,'12 Cream Cheese Nuggets','sides-amp-dips-12-cream-cheese-nuggets','12 Cream Cheese Nuggets','','publish','12-cream-cheese-nuggets.png','upload/item/101/',0,'',NULL,1,1,0,1,0.0000,0,'08620975-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(102,1,'Ketchup 25g','sides-amp-dips-ketchup-25g','','','publish','ketchup-25g.png','upload/item/102/',0,'',NULL,1,1,0,1,0.0000,0,'0862099d-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(103,1,'Mayonnaise 25g','sides-amp-dips-mayonnaise-25g','','','publish','mayonnaise-25g.png','upload/item/103/',0,'',NULL,1,1,0,1,0.0000,0,'086209c5-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(104,1,'Barbecue 25g','sides-amp-dips-barbecue-25g','','','publish','barbecue-25g.png','upload/item/104/',0,'',NULL,1,1,0,1,0.0000,0,'086209f4-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(105,1,'Honey Mustard 25g','sides-amp-dips-honey-mustard-25g','','','publish','honey-mustard-25g.png','upload/item/105/',0,'',NULL,1,1,0,1,0.0000,0,'08620a1c-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(106,1,'Sweet & Sour 25g','sides-amp-dips-sweet-&-sour-25g','','','publish','sweet-sour-25g.png','upload/item/106/',0,'',NULL,1,1,0,1,0.0000,0,'08620a44-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(107,1,'Pomfrit Sauce 25g','sides-amp-dips-pomfrit-sauce-25g','','','publish','pomfrit-sauce-25g.png','upload/item/107/',0,'',NULL,1,1,0,1,0.0000,0,'08620a6c-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(108,1,'Curry Mango 25g','sides-amp-dips-curry-mango-25g','','','publish','curry-mango-25g.png','upload/item/108/',0,'',NULL,1,1,0,1,0.0000,0,'08620a93-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(109,1,'Peri Peri 30ml','sides-amp-dips-peri-peri-30ml','','','publish','peri-peri-30ml.png','upload/item/109/',0,'',NULL,1,1,0,1,0.0000,0,'08620aba-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(110,1,'Algérienne 10g','sides-amp-dips-algérienne-10g','','','publish','algerienne-10g.png','upload/item/110/',0,'',NULL,1,1,0,1,0.0000,0,'08620ae1-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(111,1,'Biggy Burger 10g','sides-amp-dips-biggy-burger-10g','','','publish','biggy-burger-10g.png','upload/item/111/',0,'',NULL,1,1,0,1,0.0000,0,'08620b09-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(112,1,'Ketchup 10g','sides-amp-dips-ketchup-10g','','','publish','ketchup-10g.png','upload/item/112/',0,'',NULL,1,1,0,1,0.0000,0,'08620b30-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(113,1,'Mayonnaise 10g','sides-amp-dips-mayonnaise-10g','','','publish','mayonnaise-10g.png','upload/item/113/',0,'',NULL,1,1,0,1,0.0000,0,'08620b5f-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(114,1,'Americano','coffee-amp-cake-americano','Americano','','publish','americano.png','upload/item/114/',0,'',NULL,1,1,0,1,0.0000,0,'08620f1f-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(115,1,'Tea','coffee-amp-cake-tea','Tea','','publish','tea.png','upload/item/115/',0,'',NULL,1,1,0,1,0.0000,0,'08620fb3-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(116,1,'Cappuccino','coffee-amp-cake-cappuccino','Cappuccino','','publish','cappuccino.png','upload/item/116/',0,'',NULL,1,1,0,1,0.0000,0,'08620ff4-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(117,1,'Caffe latte','coffee-amp-cake-caffe-latte','Caffe latte','','publish','caffe-latte.png','upload/item/117/',0,'',NULL,1,1,0,1,0.0000,0,'0862102b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(118,1,'Varm kakao','coffee-amp-cake-varm-kakao','Varm kakao','','publish','varm-kakao.png','upload/item/118/',0,'',NULL,1,1,0,1,0.0000,0,'08621060-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(119,1,'Flat white','coffee-amp-cake-flat-white','Flat white','','publish','flat-white.png','upload/item/119/',0,'',NULL,1,1,0,1,0.0000,0,'086210ab-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(120,1,'Cortador','coffee-amp-cake-cortador','Cortador','','publish','cortador.png','upload/item/120/',0,'',NULL,1,1,0,1,0.0000,0,'086210e2-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(121,1,'Is latte - Vanilla','coffee-amp-cake-is-latte---vanilla','Is latte - Vanilla','','publish','is-latte-vanilla.png','upload/item/121/',0,'',NULL,1,1,0,1,0.0000,0,'08621117-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(122,1,'Is latte - Caramel','coffee-amp-cake-is-latte---caramel','','','publish','is-latte-vanilla.png','upload/item/122/',0,'',NULL,1,1,0,1,0.0000,0,'0862115a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(123,1,'Espresso dobbelt','coffee-amp-cake-espresso-dobbelt','Espresso dobbelt','','publish','espresso-dobbelt.png','upload/item/123/',0,'',NULL,1,1,0,1,0.0000,0,'0862122b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(124,1,'Tiramisu - Chocolate','coffee-amp-cake-tiramisu---chocolate','Tiramisu - Chocolate','','publish','tiramisu-chocolate.png','upload/item/124/',0,'',NULL,1,1,0,1,0.0000,0,'086212f4-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(125,1,'Tiramisu - Caramel','coffee-amp-cake-tiramisu---caramel','Tiramisu - Caramel','','publish','tiramisu-caramel.png','upload/item/125/',0,'',NULL,1,1,0,1,0.0000,0,'08621349-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(126,1,'Chocolate Muffin','coffee-amp-cake-chocolate-muffin','Chocolate muffin','','publish','chocolate-muffin.png','upload/item/126/',0,'',NULL,1,1,0,1,0.0000,0,'0862137b-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(127,1,'SUNDAE - Karamel Toffee','ice-cream-amp-shakes-sundae---karamel-toffee','SUNDAE - Karamel Toffee','','publish','sundae-karamel-toffee.png','upload/item/127/',0,'',NULL,1,1,0,1,0.0000,0,'086213ac-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(128,1,'SUNDAE - Jordbær','ice-cream-amp-shakes-sundae---jordbær','SUNDAE - Jordbær','','publish','sundae-jordbaer.png','upload/item/128/',0,'',NULL,1,1,0,1,0.0000,0,'086213dd-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(129,1,'SUNDAE - Chokolade','ice-cream-amp-shakes-sundae---chokolade','SUNDAE - Chokolade','','publish','sundae-chokolade.png','upload/item/129/',0,'',NULL,1,1,0,1,0.0000,0,'08621407-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(130,1,'SUNDAE - Vanilje','ice-cream-amp-shakes-sundae---vanilje','SUNDAE - Vanilje','','publish','sundae-vanilje.png','upload/item/130/',0,'',NULL,1,1,0,1,0.0000,0,'08621436-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(131,1,'SUNDAE - Oreo','ice-cream-amp-shakes-sundae---oreo','SUNDAE - Oreo','','publish','sundae-oreo.png','upload/item/131/',0,'',NULL,1,1,0,1,0.0000,0,'0862147e-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(132,1,'SUNDAE - Smartis','ice-cream-amp-shakes-sundae---smartis','SUNDAE - Smartis','','publish','sundae-smartis.png','upload/item/132/',0,'',NULL,1,1,0,1,0.0000,0,'086214ad-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(133,1,'Pepsi','cold-drinks-pepsi','Pepsi','','publish','faxe-kondi-zero-0-4-l.png','upload/item/133/',0,'',NULL,1,1,0,1,0.0000,0,'086214f5-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(134,1,'Pepsi Large','cold-drinks-pepsi-large','Pepsi Large','','publish','pepsi.png','upload/item/134/',0,'',NULL,1,1,0,1,0.0000,0,'08621527-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(135,1,'Pepsi Max','cold-drinks-pepsi-max','Pepsi Max','','publish','pepsi.png','upload/item/135/',0,'',NULL,1,1,0,1,0.0000,0,'08621550-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(136,1,'Pepsi Max Large','cold-drinks-pepsi-max-large','Pepsi Max Large','','publish','pepsi.png','upload/item/136/',0,'',NULL,1,1,0,1,0.0000,0,'08621616-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(137,1,'Faxe Kondi','cold-drinks-faxe-kondi','Faxe Kondi','','publish','faxe-kondi-zero.png','upload/item/137/',0,'',NULL,1,1,0,1,0.0000,0,'08621648-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(138,1,'Faxe Kondi  Large','cold-drinks-faxe-kondi--large','Faxe Kondi  Large','','publish','faxe-kondi-zero.png','upload/item/138/',0,'',NULL,1,1,0,1,0.0000,0,'086216c3-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(139,1,'Faxe Kondi Zero','cold-drinks-faxe-kondi-zero','Faxe Kondi Zero','','publish','faxe-kondi-zero-0-4-l.png','upload/item/139/',0,'',NULL,1,1,0,1,0.0000,0,'086216f8-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(140,1,'Faxe Kondi Zero Large','cold-drinks-faxe-kondi-zero-large','Faxe Kondi Zero Large','','publish','faxe-kondi-zero-0-4-l.png','upload/item/140/',0,'',NULL,1,1,0,1,0.0000,0,'08621721-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(141,1,'Faxe Kondi Appelsin','cold-drinks-faxe-kondi-appelsin','Faxe Kondi Appelsin','','publish','faxe-kondi-zero-0-4-l.png','upload/item/141/',0,'',NULL,1,1,0,1,0.0000,0,'0862174a-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(142,1,'Faxe Kondi Appelsin Large','cold-drinks-faxe-kondi-appelsin-large','Faxe Kondi Appelsin Large','','publish','pepsi.png','upload/item/142/',0,'',NULL,1,1,0,1,0.0000,0,'08621771-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(143,1,'Mirinda lemon','cold-drinks-mirinda-lemon','Mirinda lemon','','publish','pepsi.png','upload/item/143/',0,'',NULL,1,1,0,1,0.0000,0,'08621799-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(144,1,'Mirinda lemon Large','cold-drinks-mirinda-lemon-large','Mirinda lemon Large','','publish','pepsi.png','upload/item/144/',0,'',NULL,1,1,0,1,0.0000,0,'086217c1-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(145,1,'Kildevand 0.5l','cold-drinks-kildevand-0.5l','Kildevand 0.5l','','publish','kildevand-0-5l.png','upload/item/145/',0,'',NULL,1,1,0,1,0.0000,0,'086217ea-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(146,1,'Danskvand 0.5l','cold-drinks-danskvand-0.5l','Danskvand 0.5l','','publish','danskvand-0-5l.png','upload/item/146/',0,'',NULL,1,1,0,1,0.0000,0,'08621812-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(147,1,'Faxe Kondi 1.5l','cold-drinks-faxe-kondi-1.5l','Faxe Kondi 1.5l','','publish','faxe-kondi-1-5l.png','upload/item/147/',0,'',NULL,1,1,0,1,0.0000,0,'08621840-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(148,1,'Pepsi Max 1.5l','cold-drinks-pepsi-max-1.5l','Pepsi Max 1.5l','','publish','pepsi-max-1-5-l.png','upload/item/148/',0,'',NULL,1,1,0,1,0.0000,0,'08621880-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(149,1,'Red Bull','cold-drinks-red-bull','Red Bull','','publish','red-bull.png','upload/item/149/',0,'',NULL,1,1,0,1,0.0000,0,'086218ad-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37',''),(150,1,'Capri-Sun','cold-drinks-capri-sun','Capri-Sun','','publish','capri-sun.png','upload/item/150/',0,'',NULL,1,1,0,1,0.0000,0,'086218d5-3036-11f1-86f1-4ab0e3a8062d','',1,0,'',NULL,NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-04 16:22:37','2026-04-04 16:22:37','');
/*!40000 ALTER TABLE `st_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_free_promo`
--

DROP TABLE IF EXISTS `st_item_free_promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_free_promo` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT 0,
  `free_item_id` int(10) DEFAULT NULL,
  `item_token` varchar(50) NOT NULL DEFAULT '',
  `item_size_id` int(10) NOT NULL DEFAULT 0,
  `cat_id` int(10) NOT NULL DEFAULT 0,
  `minimum_cart_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `max_free_quantity` int(1) DEFAULT 1,
  `auto_add` tinyint(1) DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'publish',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`promo_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `free_item_id` (`free_item_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_free_promo`
--

LOCK TABLES `st_item_free_promo` WRITE;
/*!40000 ALTER TABLE `st_item_free_promo` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_item_free_promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_meta`
--

DROP TABLE IF EXISTS `st_item_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_id` varchar(255) NOT NULL DEFAULT '',
  `meta_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `meta_name` (`meta_name`),
  KEY `meta_id` (`meta_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_meta`
--

LOCK TABLES `st_item_meta` WRITE;
/*!40000 ALTER TABLE `st_item_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_item_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_promo`
--

DROP TABLE IF EXISTS `st_item_promo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_promo` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL DEFAULT 0,
  `item_id` int(11) NOT NULL DEFAULT 0,
  `promo_type` varchar(50) NOT NULL DEFAULT '',
  `buy_qty` int(14) DEFAULT 0,
  `get_qty` int(14) DEFAULT 0,
  `item_id_promo` int(14) NOT NULL DEFAULT 0,
  `discount_start` date DEFAULT NULL,
  `discount_end` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`promo_id`),
  KEY `item_id` (`item_id`),
  KEY `item_id_promo` (`item_id_promo`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_promo`
--

LOCK TABLES `st_item_promo` WRITE;
/*!40000 ALTER TABLE `st_item_promo` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_item_promo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_relationship_category`
--

DROP TABLE IF EXISTS `st_item_relationship_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_relationship_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `cat_id` int(14) NOT NULL DEFAULT 0,
  `sequence` int(14) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_id` (`item_id`),
  KEY `cat_id` (`cat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_relationship_category`
--

LOCK TABLES `st_item_relationship_category` WRITE;
/*!40000 ALTER TABLE `st_item_relationship_category` DISABLE KEYS */;
INSERT INTO `st_item_relationship_category` VALUES (1,1,1,1,1),(2,1,2,1,2),(3,1,3,1,3),(4,1,4,1,4),(5,1,5,1,5),(6,1,6,1,6),(7,1,7,1,7),(8,1,8,1,8),(9,1,9,1,9),(10,1,10,1,10),(11,1,11,1,11),(12,1,12,2,1),(13,1,13,2,2),(14,1,14,2,3),(15,1,15,2,4),(16,1,16,2,5),(17,1,17,2,6),(18,1,18,2,7),(19,1,19,2,8),(20,1,20,2,9),(21,1,21,2,10),(22,1,22,2,11),(23,1,23,2,12),(24,1,24,2,13),(25,1,25,2,14),(26,1,26,2,15),(27,1,27,2,16),(28,1,28,2,17),(29,1,29,2,18),(30,1,30,2,19),(31,1,31,2,20),(32,1,32,2,21),(33,1,33,2,22),(34,1,34,3,1),(35,1,35,3,2),(36,1,36,3,3),(37,1,37,3,4),(38,1,38,4,1),(39,1,39,4,2),(40,1,40,4,3),(41,1,41,4,4),(42,1,42,4,5),(43,1,43,4,6),(44,1,44,4,7),(45,1,45,4,8),(46,1,46,4,9),(47,1,47,4,10),(48,1,48,4,11),(49,1,49,4,12),(50,1,50,5,1),(51,1,51,5,2),(52,1,52,5,3),(53,1,53,5,4),(54,1,54,5,5),(55,1,55,5,6),(56,1,56,6,1),(57,1,57,6,2),(58,1,58,6,3),(59,1,59,6,4),(60,1,60,6,5),(61,1,61,6,6),(62,1,62,6,7),(63,1,63,6,8),(64,1,64,6,9),(65,1,65,6,10),(66,1,66,6,11),(67,1,67,6,12),(68,1,68,6,13),(69,1,69,6,14),(70,1,70,6,15),(71,1,71,6,16),(72,1,72,6,17),(73,1,73,6,18),(74,1,74,6,19),(75,1,75,6,20),(76,1,76,6,21),(77,1,77,6,22),(78,1,78,6,23),(79,1,79,6,24),(80,1,80,6,25),(81,1,81,6,26),(82,1,82,6,27),(83,1,83,6,28),(84,1,84,6,29),(85,1,85,6,30),(86,1,86,6,31),(87,1,87,6,32),(88,1,88,7,1),(89,1,89,7,2),(90,1,90,7,3),(91,1,91,7,4),(92,1,92,7,5),(93,1,93,8,1),(94,1,94,8,2),(95,1,95,8,3),(96,1,96,8,4),(97,1,97,8,5),(98,1,98,8,6),(99,1,99,8,7),(100,1,100,8,8),(101,1,101,8,9),(102,1,102,8,10),(103,1,103,8,11),(104,1,104,8,12),(105,1,105,8,13),(106,1,106,8,14),(107,1,107,8,15),(108,1,108,8,16),(109,1,109,8,17),(110,1,110,8,18),(111,1,111,8,19),(112,1,112,8,20),(113,1,113,8,21),(114,1,114,9,1),(115,1,115,9,2),(116,1,116,9,3),(117,1,117,9,4),(118,1,118,9,5),(119,1,119,9,6),(120,1,120,9,7),(121,1,121,9,8),(122,1,122,9,9),(123,1,123,9,10),(124,1,124,9,11),(125,1,125,9,12),(126,1,126,9,13),(127,1,127,10,1),(128,1,128,10,2),(129,1,129,10,3),(130,1,130,10,4),(131,1,131,10,5),(132,1,132,10,6),(133,1,133,11,1),(134,1,134,11,2),(135,1,135,11,3),(136,1,136,11,4),(137,1,137,11,5),(138,1,138,11,6),(139,1,139,11,7),(140,1,140,11,8),(141,1,141,11,9),(142,1,142,11,10),(143,1,143,11,11),(144,1,144,11,12),(145,1,145,11,13),(146,1,146,11,14),(147,1,147,11,15),(148,1,148,11,16),(149,1,149,11,17),(150,1,150,11,18);
/*!40000 ALTER TABLE `st_item_relationship_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_relationship_size`
--

DROP TABLE IF EXISTS `st_item_relationship_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_relationship_size` (
  `item_size_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `item_id` int(14) NOT NULL DEFAULT 0,
  `size_id` int(14) NOT NULL DEFAULT 0,
  `price` float(14,4) NOT NULL DEFAULT 0.0000,
  `cost_price` float(14,4) NOT NULL DEFAULT 0.0000,
  `discount` float(14,4) NOT NULL DEFAULT 0.0000,
  `discount_type` varchar(50) NOT NULL DEFAULT 'fixed',
  `discount_start` date DEFAULT NULL,
  `discount_end` date DEFAULT NULL,
  `sequence` smallint(1) NOT NULL DEFAULT 0,
  `sku` varchar(255) NOT NULL DEFAULT '',
  `barcode` varchar(50) NOT NULL DEFAULT '',
  `available` int(1) NOT NULL DEFAULT 1,
  `low_stock` float(14,2) NOT NULL DEFAULT 0.00,
  `created_at` varchar(50) NOT NULL DEFAULT '',
  `updated_at` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`item_size_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_token` (`item_token`),
  KEY `item_id` (`item_id`),
  KEY `size_id` (`size_id`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_relationship_size`
--

LOCK TABLES `st_item_relationship_size` WRITE;
/*!40000 ALTER TABLE `st_item_relationship_size` DISABLE KEYS */;
INSERT INTO `st_item_relationship_size` VALUES (1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,1,47.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(2,1,'0861a1bc-3036-11f1-86f1-4ab0e3a8062d',2,1,74.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(3,1,'0861a24b-3036-11f1-86f1-4ab0e3a8062d',3,1,77.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(4,1,'0861a2a2-3036-11f1-86f1-4ab0e3a8062d',4,1,84.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(5,1,'0861a549-3036-11f1-86f1-4ab0e3a8062d',5,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(6,1,'0861a58b-3036-11f1-86f1-4ab0e3a8062d',6,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(7,1,'0861a5c2-3036-11f1-86f1-4ab0e3a8062d',7,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(8,1,'0861a720-3036-11f1-86f1-4ab0e3a8062d',8,1,47.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(9,1,'0861a7c2-3036-11f1-86f1-4ab0e3a8062d',9,1,54.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(10,1,'0861a813-3036-11f1-86f1-4ab0e3a8062d',10,1,54.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(11,1,'0861a885-3036-11f1-86f1-4ab0e3a8062d',11,1,64.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(12,1,'0861a8c6-3036-11f1-86f1-4ab0e3a8062d',12,1,54.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(13,1,'0861a8ff-3036-11f1-86f1-4ab0e3a8062d',13,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(14,1,'0861a935-3036-11f1-86f1-4ab0e3a8062d',14,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(15,1,'0861a96a-3036-11f1-86f1-4ab0e3a8062d',15,1,77.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(16,1,'0861a9b9-3036-11f1-86f1-4ab0e3a8062d',16,1,94.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(17,1,'0861a9f3-3036-11f1-86f1-4ab0e3a8062d',17,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(18,1,'0861aa39-3036-11f1-86f1-4ab0e3a8062d',18,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(19,1,'0861aaa2-3036-11f1-86f1-4ab0e3a8062d',19,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(20,1,'0861aae2-3036-11f1-86f1-4ab0e3a8062d',20,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(21,1,'0861ab36-3036-11f1-86f1-4ab0e3a8062d',21,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(22,1,'0861ab9a-3036-11f1-86f1-4ab0e3a8062d',22,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(23,1,'0861abcc-3036-11f1-86f1-4ab0e3a8062d',23,1,78.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(24,1,'0861abf8-3036-11f1-86f1-4ab0e3a8062d',24,1,49.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(25,1,'0861accd-3036-11f1-86f1-4ab0e3a8062d',25,1,47.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(26,1,'0861ad02-3036-11f1-86f1-4ab0e3a8062d',26,1,64.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(27,1,'0861f2ff-3036-11f1-86f1-4ab0e3a8062d',27,1,54.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(28,1,'0861f455-3036-11f1-86f1-4ab0e3a8062d',28,1,54.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(29,1,'0861f4a4-3036-11f1-86f1-4ab0e3a8062d',29,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(30,1,'0861f4d6-3036-11f1-86f1-4ab0e3a8062d',30,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(31,1,'0861f503-3036-11f1-86f1-4ab0e3a8062d',31,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(32,1,'0861f52e-3036-11f1-86f1-4ab0e3a8062d',32,1,64.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(33,1,'0861f55b-3036-11f1-86f1-4ab0e3a8062d',33,1,48.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(34,1,'0861f5d3-3036-11f1-86f1-4ab0e3a8062d',34,1,69.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(35,1,'0861f60a-3036-11f1-86f1-4ab0e3a8062d',35,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(36,1,'0861f634-3036-11f1-86f1-4ab0e3a8062d',36,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(37,1,'0861f65e-3036-11f1-86f1-4ab0e3a8062d',37,1,20.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(38,1,'0861f68c-3036-11f1-86f1-4ab0e3a8062d',38,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(39,1,'0861f754-3036-11f1-86f1-4ab0e3a8062d',39,1,99.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(40,1,'0861f784-3036-11f1-86f1-4ab0e3a8062d',40,1,109.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(41,1,'0861f7ae-3036-11f1-86f1-4ab0e3a8062d',41,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(42,1,'0861f7d7-3036-11f1-86f1-4ab0e3a8062d',42,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(43,1,'0861f80b-3036-11f1-86f1-4ab0e3a8062d',43,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(44,1,'0861f84a-3036-11f1-86f1-4ab0e3a8062d',44,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(45,1,'0861f877-3036-11f1-86f1-4ab0e3a8062d',45,1,69.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(46,1,'0861f8a0-3036-11f1-86f1-4ab0e3a8062d',46,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(47,1,'0861f8c8-3036-11f1-86f1-4ab0e3a8062d',47,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(48,1,'0861f8fe-3036-11f1-86f1-4ab0e3a8062d',48,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(49,1,'0861f929-3036-11f1-86f1-4ab0e3a8062d',49,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(50,1,'0861f951-3036-11f1-86f1-4ab0e3a8062d',50,1,249.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(51,1,'0861f97a-3036-11f1-86f1-4ab0e3a8062d',51,1,259.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(52,1,'0861f9ad-3036-11f1-86f1-4ab0e3a8062d',52,1,269.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(53,1,'0861fa3a-3036-11f1-86f1-4ab0e3a8062d',53,1,229.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(54,1,'0861fa63-3036-11f1-86f1-4ab0e3a8062d',54,1,299.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(55,1,'0861fa8d-3036-11f1-86f1-4ab0e3a8062d',55,1,229.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(56,1,'0861fad8-3036-11f1-86f1-4ab0e3a8062d',56,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(57,1,'0861fb12-3036-11f1-86f1-4ab0e3a8062d',57,1,95.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(58,1,'0861fb3d-3036-11f1-86f1-4ab0e3a8062d',58,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(59,1,'0861fb66-3036-11f1-86f1-4ab0e3a8062d',59,1,112.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(60,1,'0861fb9a-3036-11f1-86f1-4ab0e3a8062d',60,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(61,1,'0861fbc2-3036-11f1-86f1-4ab0e3a8062d',61,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(62,1,'0861fbe9-3036-11f1-86f1-4ab0e3a8062d',62,1,64.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(63,1,'0861fc12-3036-11f1-86f1-4ab0e3a8062d',63,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(64,1,'0861fcc5-3036-11f1-86f1-4ab0e3a8062d',64,1,102.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(65,1,'0861fd45-3036-11f1-86f1-4ab0e3a8062d',65,1,119.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(66,1,'0861fd72-3036-11f1-86f1-4ab0e3a8062d',66,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(67,1,'0861fd9c-3036-11f1-86f1-4ab0e3a8062d',67,1,109.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(68,1,'0861fe3a-3036-11f1-86f1-4ab0e3a8062d',68,1,24.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(69,1,'0861fe63-3036-11f1-86f1-4ab0e3a8062d',69,1,42.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(70,1,'0861fe8b-3036-11f1-86f1-4ab0e3a8062d',70,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(71,1,'0861feb4-3036-11f1-86f1-4ab0e3a8062d',71,1,77.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(72,1,'0861fedc-3036-11f1-86f1-4ab0e3a8062d',72,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(73,1,'0861ff03-3036-11f1-86f1-4ab0e3a8062d',73,1,109.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(74,1,'0861ff2c-3036-11f1-86f1-4ab0e3a8062d',74,1,52.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(75,1,'0861ff54-3036-11f1-86f1-4ab0e3a8062d',75,1,82.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(76,1,'0861ff7a-3036-11f1-86f1-4ab0e3a8062d',76,1,112.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(77,1,'0861ffa7-3036-11f1-86f1-4ab0e3a8062d',77,1,142.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(78,1,'086201e0-3036-11f1-86f1-4ab0e3a8062d',78,1,52.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(79,1,'08620238-3036-11f1-86f1-4ab0e3a8062d',79,1,89.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(80,1,'08620268-3036-11f1-86f1-4ab0e3a8062d',80,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(81,1,'08620293-3036-11f1-86f1-4ab0e3a8062d',81,1,34.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(82,1,'086202bc-3036-11f1-86f1-4ab0e3a8062d',82,1,49.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(83,1,'086202e5-3036-11f1-86f1-4ab0e3a8062d',83,1,72.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(84,1,'08620534-3036-11f1-86f1-4ab0e3a8062d',84,1,94.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(85,1,'086205f6-3036-11f1-86f1-4ab0e3a8062d',85,1,39.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(86,1,'08620698-3036-11f1-86f1-4ab0e3a8062d',86,1,59.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(87,1,'086206ca-3036-11f1-86f1-4ab0e3a8062d',87,1,79.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(88,1,'086206f6-3036-11f1-86f1-4ab0e3a8062d',88,1,45.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(89,1,'08620722-3036-11f1-86f1-4ab0e3a8062d',89,1,45.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(90,1,'0862074d-3036-11f1-86f1-4ab0e3a8062d',90,1,45.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(91,1,'08620777-3036-11f1-86f1-4ab0e3a8062d',91,1,45.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(92,1,'0862079f-3036-11f1-86f1-4ab0e3a8062d',92,1,45.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(93,1,'086207c7-3036-11f1-86f1-4ab0e3a8062d',93,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(94,1,'086207f5-3036-11f1-86f1-4ab0e3a8062d',94,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(95,1,'0862081e-3036-11f1-86f1-4ab0e3a8062d',95,1,33.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(96,1,'08620847-3036-11f1-86f1-4ab0e3a8062d',96,1,33.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(97,1,'08620870-3036-11f1-86f1-4ab0e3a8062d',97,1,33.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(98,1,'08620898-3036-11f1-86f1-4ab0e3a8062d',98,1,33.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(99,1,'086208c0-3036-11f1-86f1-4ab0e3a8062d',99,1,34.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(100,1,'0862094c-3036-11f1-86f1-4ab0e3a8062d',100,1,34.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(101,1,'08620975-3036-11f1-86f1-4ab0e3a8062d',101,1,34.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(102,1,'0862099d-3036-11f1-86f1-4ab0e3a8062d',102,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(103,1,'086209c5-3036-11f1-86f1-4ab0e3a8062d',103,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(104,1,'086209f4-3036-11f1-86f1-4ab0e3a8062d',104,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(105,1,'08620a1c-3036-11f1-86f1-4ab0e3a8062d',105,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(106,1,'08620a44-3036-11f1-86f1-4ab0e3a8062d',106,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(107,1,'08620a6c-3036-11f1-86f1-4ab0e3a8062d',107,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(108,1,'08620a93-3036-11f1-86f1-4ab0e3a8062d',108,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(109,1,'08620aba-3036-11f1-86f1-4ab0e3a8062d',109,1,6.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(110,1,'08620ae1-3036-11f1-86f1-4ab0e3a8062d',110,1,4.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(111,1,'08620b09-3036-11f1-86f1-4ab0e3a8062d',111,1,4.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(112,1,'08620b30-3036-11f1-86f1-4ab0e3a8062d',112,1,4.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(113,1,'08620b5f-3036-11f1-86f1-4ab0e3a8062d',113,1,4.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(114,1,'08620f1f-3036-11f1-86f1-4ab0e3a8062d',114,1,20.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(115,1,'08620fb3-3036-11f1-86f1-4ab0e3a8062d',115,1,20.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(116,1,'08620ff4-3036-11f1-86f1-4ab0e3a8062d',116,1,25.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(117,1,'0862102b-3036-11f1-86f1-4ab0e3a8062d',117,1,25.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(118,1,'08621060-3036-11f1-86f1-4ab0e3a8062d',118,1,25.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(119,1,'086210ab-3036-11f1-86f1-4ab0e3a8062d',119,1,25.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(120,1,'086210e2-3036-11f1-86f1-4ab0e3a8062d',120,1,25.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(121,1,'08621117-3036-11f1-86f1-4ab0e3a8062d',121,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(122,1,'0862115a-3036-11f1-86f1-4ab0e3a8062d',122,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(123,1,'0862122b-3036-11f1-86f1-4ab0e3a8062d',123,1,20.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(124,1,'086212f4-3036-11f1-86f1-4ab0e3a8062d',124,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(125,1,'08621349-3036-11f1-86f1-4ab0e3a8062d',125,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(126,1,'0862137b-3036-11f1-86f1-4ab0e3a8062d',126,1,19.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(127,1,'086213ac-3036-11f1-86f1-4ab0e3a8062d',127,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(128,1,'086213dd-3036-11f1-86f1-4ab0e3a8062d',128,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(129,1,'08621407-3036-11f1-86f1-4ab0e3a8062d',129,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(130,1,'08621436-3036-11f1-86f1-4ab0e3a8062d',130,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(131,1,'0862147e-3036-11f1-86f1-4ab0e3a8062d',131,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(132,1,'086214ad-3036-11f1-86f1-4ab0e3a8062d',132,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(133,1,'086214f5-3036-11f1-86f1-4ab0e3a8062d',133,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(134,1,'08621527-3036-11f1-86f1-4ab0e3a8062d',134,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(135,1,'08621550-3036-11f1-86f1-4ab0e3a8062d',135,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(136,1,'08621616-3036-11f1-86f1-4ab0e3a8062d',136,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(137,1,'08621648-3036-11f1-86f1-4ab0e3a8062d',137,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(138,1,'086216c3-3036-11f1-86f1-4ab0e3a8062d',138,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(139,1,'086216f8-3036-11f1-86f1-4ab0e3a8062d',139,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(140,1,'08621721-3036-11f1-86f1-4ab0e3a8062d',140,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(141,1,'0862174a-3036-11f1-86f1-4ab0e3a8062d',141,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(142,1,'08621771-3036-11f1-86f1-4ab0e3a8062d',142,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(143,1,'08621799-3036-11f1-86f1-4ab0e3a8062d',143,1,27.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(144,1,'086217c1-3036-11f1-86f1-4ab0e3a8062d',144,1,32.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(145,1,'086217ea-3036-11f1-86f1-4ab0e3a8062d',145,1,19.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(146,1,'08621812-3036-11f1-86f1-4ab0e3a8062d',146,1,25.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(147,1,'08621840-3036-11f1-86f1-4ab0e3a8062d',147,1,38.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(148,1,'08621880-3036-11f1-86f1-4ab0e3a8062d',148,1,38.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(149,1,'086218ad-3036-11f1-86f1-4ab0e3a8062d',149,1,29.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'',''),(150,1,'086218d5-3036-11f1-86f1-4ab0e3a8062d',150,1,15.0000,0.0000,0.0000,'fixed',NULL,NULL,1,'','',1,0.00,'','');
/*!40000 ALTER TABLE `st_item_relationship_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_relationship_subcategory`
--

DROP TABLE IF EXISTS `st_item_relationship_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_relationship_subcategory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `item_size_id` int(14) NOT NULL DEFAULT 0,
  `subcat_id` int(14) NOT NULL DEFAULT 0,
  `multi_option` varchar(255) NOT NULL DEFAULT '',
  `multi_option_min` int(14) NOT NULL DEFAULT 0,
  `multi_option_value` varchar(255) NOT NULL DEFAULT '',
  `require_addon` smallint(1) NOT NULL DEFAULT 0,
  `pre_selected` smallint(1) NOT NULL DEFAULT 0,
  `sequence` int(12) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_id` (`item_id`),
  KEY `subcat_id` (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=248 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_relationship_subcategory`
--

LOCK TABLES `st_item_relationship_subcategory` WRITE;
/*!40000 ALTER TABLE `st_item_relationship_subcategory` DISABLE KEYS */;
INSERT INTO `st_item_relationship_subcategory` VALUES (1,1,1,1,1,'multiple',0,'20',0,0,1),(2,1,2,2,2,'single',0,'1',0,0,2),(3,1,2,2,1,'multiple',0,'15',0,0,3),(4,1,2,2,3,'multiple',0,'20',0,0,4),(5,1,2,2,4,'single',0,'1',1,0,5),(6,1,3,3,2,'single',0,'1',0,0,6),(7,1,3,3,1,'multiple',0,'20',0,0,7),(8,1,3,3,3,'multiple',0,'20',0,0,8),(9,1,3,3,4,'single',0,'1',1,0,9),(10,1,4,4,2,'single',0,'1',0,0,10),(11,1,4,4,1,'multiple',0,'20',0,0,11),(12,1,4,4,3,'multiple',0,'20',0,0,12),(13,1,4,4,4,'single',0,'1',1,0,13),(14,1,5,5,2,'single',0,'1',0,0,14),(15,1,5,5,1,'multiple',0,'20',0,0,15),(16,1,5,5,3,'multiple',0,'20',0,0,16),(17,1,5,5,4,'single',0,'1',1,0,17),(18,1,6,6,2,'single',0,'1',0,0,18),(19,1,6,6,1,'multiple',0,'20',0,0,19),(20,1,6,6,3,'multiple',0,'20',0,0,20),(21,1,6,6,4,'single',0,'1',1,0,21),(22,1,7,7,1,'multiple',0,'20',0,0,22),(23,1,8,8,1,'multiple',0,'20',0,0,23),(24,1,9,9,1,'multiple',0,'20',0,0,24),(25,1,10,10,1,'multiple',0,'20',0,0,25),(26,1,11,11,1,'multiple',0,'20',0,0,26),(27,1,12,12,1,'multiple',0,'20',0,0,27),(28,1,13,13,2,'single',0,'1',0,0,28),(29,1,13,13,1,'multiple',0,'20',0,0,29),(30,1,13,13,3,'multiple',0,'20',0,0,30),(31,1,13,13,4,'single',0,'1',1,0,31),(32,1,14,14,2,'single',0,'1',0,0,32),(33,1,14,14,1,'multiple',0,'20',0,0,33),(34,1,14,14,3,'multiple',0,'20',0,0,34),(35,1,14,14,4,'single',0,'1',1,0,35),(36,1,15,15,2,'single',0,'1',0,0,36),(37,1,15,15,1,'multiple',0,'20',0,0,37),(38,1,15,15,3,'multiple',0,'20',0,0,38),(39,1,15,15,4,'single',0,'1',1,0,39),(40,1,16,16,2,'single',0,'1',0,0,40),(41,1,16,16,1,'multiple',0,'20',0,0,41),(42,1,16,16,3,'multiple',0,'20',0,0,42),(43,1,16,16,4,'single',0,'1',1,0,43),(44,1,17,17,2,'single',0,'1',0,0,44),(45,1,17,17,1,'multiple',0,'20',0,0,45),(46,1,17,17,3,'multiple',0,'20',0,0,46),(47,1,17,17,4,'single',0,'1',1,0,47),(48,1,18,18,2,'single',0,'1',0,0,48),(49,1,18,18,1,'multiple',0,'20',0,0,49),(50,1,18,18,3,'multiple',0,'20',0,0,50),(51,1,18,18,4,'single',0,'1',1,0,51),(52,1,19,19,2,'single',0,'1',0,0,52),(53,1,19,19,1,'multiple',0,'20',0,0,53),(54,1,19,19,3,'multiple',0,'20',0,0,54),(55,1,19,19,4,'single',0,'1',1,0,55),(56,1,20,20,2,'single',0,'1',0,0,56),(57,1,20,20,1,'multiple',0,'20',0,0,57),(58,1,20,20,3,'multiple',0,'20',0,0,58),(59,1,20,20,4,'single',0,'1',1,0,59),(60,1,21,21,2,'single',0,'1',0,0,60),(61,1,21,21,1,'multiple',0,'20',0,0,61),(62,1,21,21,3,'multiple',0,'20',0,0,62),(63,1,21,21,4,'single',0,'1',1,0,63),(64,1,22,22,2,'single',0,'1',0,0,64),(65,1,22,22,1,'multiple',0,'20',0,0,65),(66,1,22,22,3,'multiple',0,'20',0,0,66),(67,1,22,22,4,'single',0,'1',1,0,67),(68,1,23,23,2,'single',0,'1',0,0,68),(69,1,23,23,1,'multiple',0,'20',0,0,69),(70,1,23,23,3,'multiple',0,'20',0,0,70),(71,1,23,23,4,'single',0,'1',1,0,71),(72,1,24,24,1,'multiple',0,'20',0,0,72),(73,1,25,25,1,'multiple',0,'20',0,0,73),(74,1,26,26,1,'multiple',0,'20',0,0,74),(75,1,27,27,1,'multiple',0,'20',0,0,75),(76,1,28,28,1,'multiple',0,'20',0,0,76),(77,1,29,29,1,'multiple',0,'20',0,0,77),(78,1,30,30,1,'multiple',0,'20',0,0,78),(79,1,31,31,1,'multiple',0,'20',0,0,79),(80,1,32,32,1,'multiple',0,'20',0,0,80),(81,1,33,33,1,'multiple',0,'20',0,0,81),(82,1,34,34,1,'multiple',0,'20',0,0,82),(83,1,34,34,5,'multiple',0,'20',0,0,83),(84,1,34,34,6,'multiple',0,'20',0,0,84),(85,1,35,35,1,'multiple',0,'20',0,0,85),(86,1,35,35,5,'multiple',0,'20',0,0,86),(87,1,35,35,6,'multiple',0,'6',0,0,87),(88,1,36,36,1,'multiple',0,'20',0,0,88),(89,1,36,36,5,'multiple',0,'20',0,0,89),(90,1,36,36,6,'multiple',0,'6',0,0,90),(91,1,38,38,7,'single',0,'1',1,0,91),(92,1,38,38,8,'single',0,'1',1,0,92),(93,1,38,38,4,'single',0,'1',1,0,93),(94,1,38,38,3,'multiple',0,'20',0,0,94),(95,1,39,39,7,'multiple',0,'2',1,0,95),(96,1,39,39,8,'single',0,'1',1,0,96),(97,1,39,39,3,'multiple',0,'20',0,0,97),(98,1,39,39,4,'single',0,'1',1,0,98),(99,1,40,40,7,'multiple',0,'3',1,0,99),(100,1,40,40,8,'single',0,'1',1,0,100),(101,1,40,40,3,'multiple',0,'20',0,0,101),(102,1,40,40,4,'single',0,'1',1,0,102),(103,1,41,41,1,'multiple',0,'20',0,0,103),(104,1,41,41,2,'single',0,'1',0,0,104),(105,1,41,41,3,'multiple',0,'20',0,0,105),(106,1,41,41,4,'single',0,'1',1,0,106),(107,1,42,42,2,'single',0,'1',0,0,107),(108,1,42,42,1,'multiple',0,'20',0,0,108),(109,1,42,42,3,'multiple',0,'20',0,0,109),(110,1,42,42,4,'single',0,'1',1,0,110),(111,1,43,43,2,'single',0,'1',0,0,111),(112,1,43,43,1,'multiple',0,'20',0,0,112),(113,1,43,43,3,'multiple',0,'20',0,0,113),(114,1,43,43,4,'single',0,'1',1,0,114),(115,1,44,44,7,'single',0,'1',1,0,115),(116,1,44,44,8,'single',0,'1',1,0,116),(117,1,45,45,7,'multiple',0,'2',1,0,117),(118,1,45,45,8,'single',0,'1',1,0,118),(119,1,46,46,7,'multiple',0,'3',1,0,119),(120,1,46,46,8,'single',0,'1',1,0,120),(121,1,47,47,1,'multiple',0,'20',0,0,121),(122,1,48,48,1,'multiple',0,'20',0,0,122),(123,1,49,49,1,'multiple',0,'20',0,0,123),(124,1,50,50,3,'multiple',0,'20',0,0,124),(125,1,50,50,9,'single',0,'1',0,0,125),(126,1,50,50,10,'single',0,'1',1,0,126),(127,1,51,51,3,'multiple',0,'20',0,0,127),(128,1,51,51,9,'single',0,'1',0,0,128),(129,1,51,51,10,'single',0,'1',1,0,129),(130,1,52,52,3,'multiple',0,'20',0,0,130),(131,1,52,52,9,'single',0,'1',0,0,131),(132,1,52,52,10,'single',0,'1',1,0,132),(133,1,53,53,3,'multiple',0,'20',0,0,133),(134,1,53,53,9,'single',0,'1',0,0,134),(135,1,53,53,10,'single',0,'1',1,0,135),(136,1,54,54,3,'multiple',0,'20',0,0,136),(137,1,54,54,9,'single',0,'1',0,0,137),(138,1,54,54,10,'single',0,'1',1,0,138),(139,1,55,55,3,'multiple',0,'20',0,0,139),(140,1,55,55,9,'single',0,'1',0,0,140),(141,1,55,55,10,'single',0,'1',1,0,141),(142,1,56,56,3,'multiple',0,'20',0,0,142),(143,1,56,56,2,'single',0,'1',0,0,143),(144,1,56,56,4,'single',0,'1',1,0,144),(145,1,57,57,3,'multiple',0,'20',0,0,145),(146,1,57,57,2,'single',0,'1',0,0,146),(147,1,57,57,4,'single',0,'1',1,0,147),(148,1,58,58,2,'single',0,'1',0,0,148),(149,1,58,58,3,'multiple',0,'20',0,0,149),(150,1,58,58,4,'single',0,'1',1,0,150),(151,1,59,59,3,'multiple',0,'20',0,0,151),(152,1,59,59,2,'single',0,'1',0,0,152),(153,1,59,59,4,'single',0,'1',1,0,153),(154,1,60,60,3,'multiple',0,'20',0,0,154),(155,1,60,60,2,'single',0,'1',0,0,155),(156,1,60,60,4,'single',0,'1',1,0,156),(157,1,61,61,3,'multiple',0,'20',0,0,157),(158,1,61,61,2,'single',0,'1',0,0,158),(159,1,61,61,4,'single',0,'1',1,0,159),(160,1,62,62,2,'single',0,'1',0,0,160),(161,1,62,62,3,'multiple',0,'20',0,0,161),(162,1,62,62,4,'single',0,'1',1,0,162),(163,1,63,63,2,'single',0,'1',0,0,163),(164,1,63,63,3,'multiple',0,'20',0,0,164),(165,1,63,63,4,'single',0,'1',1,0,165),(166,1,64,64,3,'multiple',0,'20',0,0,166),(167,1,64,64,2,'single',0,'1',0,0,167),(168,1,64,64,4,'single',0,'1',1,0,168),(169,1,65,65,3,'multiple',0,'20',0,0,169),(170,1,65,65,2,'single',0,'1',0,0,170),(171,1,65,65,4,'single',0,'1',1,0,171),(172,1,66,66,3,'multiple',0,'20',0,0,172),(173,1,66,66,2,'single',0,'1',0,0,173),(174,1,66,66,4,'single',0,'1',1,0,174),(175,1,67,67,3,'multiple',0,'20',0,0,175),(176,1,67,67,2,'single',0,'1',0,0,176),(177,1,67,67,4,'single',0,'1',1,0,177),(178,1,68,68,3,'multiple',0,'20',0,0,178),(179,1,69,69,3,'multiple',0,'20',0,0,179),(180,1,70,70,3,'multiple',0,'20',0,0,180),(181,1,71,71,3,'multiple',0,'20',0,0,181),(182,1,72,72,3,'multiple',0,'20',0,0,182),(183,1,73,73,3,'multiple',0,'20',0,0,183),(184,1,74,74,3,'multiple',0,'20',0,0,184),(185,1,75,75,3,'multiple',0,'20',0,0,185),(186,1,76,76,3,'multiple',0,'20',0,0,186),(187,1,77,77,3,'multiple',0,'20',0,0,187),(188,1,78,78,3,'multiple',0,'20',0,0,188),(189,1,79,79,3,'multiple',0,'20',0,0,189),(190,1,80,80,3,'multiple',0,'20',0,0,190),(191,1,81,81,3,'multiple',0,'20',0,0,191),(192,1,82,82,3,'multiple',0,'20',0,0,192),(193,1,83,83,3,'multiple',0,'20',0,0,193),(194,1,84,84,3,'multiple',0,'20',0,0,194),(195,1,85,85,3,'multiple',0,'20',0,0,195),(196,1,86,86,3,'multiple',0,'20',0,0,196),(197,1,87,87,3,'multiple',0,'20',0,0,197),(198,1,88,88,3,'multiple',0,'20',0,0,198),(199,1,89,89,3,'multiple',0,'20',0,0,199),(200,1,89,89,1,'multiple',0,'20',0,0,200),(201,1,90,90,3,'multiple',0,'20',0,0,201),(202,1,90,90,1,'multiple',0,'20',0,0,202),(203,1,91,91,3,'multiple',0,'20',0,0,203),(204,1,91,91,1,'multiple',0,'20',0,0,204),(205,1,92,92,3,'multiple',0,'20',0,0,205),(206,1,92,92,1,'multiple',0,'20',0,0,206),(207,1,93,93,3,'multiple',0,'20',0,0,207),(208,1,93,93,5,'multiple',0,'20',0,0,208),(209,1,94,94,3,'multiple',0,'20',0,0,209),(210,1,94,94,5,'multiple',0,'20',0,0,210),(211,1,95,95,3,'multiple',0,'20',0,0,211),(212,1,95,95,5,'multiple',0,'20',0,0,212),(213,1,96,96,3,'multiple',0,'20',0,0,213),(214,1,96,96,5,'multiple',0,'20',0,0,214),(215,1,97,97,3,'multiple',0,'20',0,0,215),(216,1,97,97,5,'multiple',0,'20',0,0,216),(217,1,98,98,3,'multiple',0,'20',0,0,217),(218,1,98,98,5,'multiple',0,'20',0,0,218),(219,1,99,99,3,'multiple',0,'20',0,0,219),(220,1,99,99,5,'multiple',0,'20',0,0,220),(221,1,100,100,3,'multiple',0,'20',0,0,221),(222,1,100,100,5,'multiple',0,'20',0,0,222),(223,1,101,101,3,'multiple',0,'20',0,0,223),(224,1,101,101,5,'multiple',0,'20',0,0,224),(225,1,114,114,11,'single',0,'1',0,0,225),(226,1,114,114,12,'single',0,'1',0,0,226),(227,1,115,115,13,'single',0,'1',1,0,227),(228,1,115,115,12,'single',0,'1',0,0,228),(229,1,116,116,11,'single',0,'1',0,0,229),(230,1,116,116,12,'single',0,'1',0,0,230),(231,1,117,117,11,'single',0,'1',0,0,231),(232,1,117,117,12,'single',0,'1',0,0,232),(233,1,118,118,11,'single',0,'1',0,0,233),(234,1,118,118,12,'single',0,'1',0,0,234),(235,1,119,119,11,'single',0,'1',0,0,235),(236,1,119,119,12,'single',0,'1',0,0,236),(237,1,120,120,11,'single',0,'1',0,0,237),(238,1,120,120,12,'single',0,'1',0,0,238),(239,1,121,121,11,'single',0,'1',0,0,239),(240,1,122,122,11,'multiple',0,'20',0,0,240),(241,1,123,123,11,'single',0,'1',0,0,241),(242,1,127,127,14,'multiple',0,'20',0,0,242),(243,1,128,128,14,'single',0,'1',0,0,243),(244,1,129,129,14,'single',0,'1',0,0,244),(245,1,130,130,14,'single',0,'1',0,0,245),(246,1,131,131,14,'single',0,'1',0,0,246),(247,1,132,132,14,'multiple',0,'20',0,0,247);
/*!40000 ALTER TABLE `st_item_relationship_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_relationship_subcategory_item`
--

DROP TABLE IF EXISTS `st_item_relationship_subcategory_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_relationship_subcategory_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `subcat_id` int(14) NOT NULL DEFAULT 0,
  `sub_item_id` int(14) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `item_id` (`item_id`),
  KEY `subcat_id` (`subcat_id`),
  KEY `sub_item_id` (`sub_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_relationship_subcategory_item`
--

LOCK TABLES `st_item_relationship_subcategory_item` WRITE;
/*!40000 ALTER TABLE `st_item_relationship_subcategory_item` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_item_relationship_subcategory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_item_translation`
--

DROP TABLE IF EXISTS `st_item_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_item_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text DEFAULT NULL,
  `item_short_description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_id` (`item_id`),
  KEY `language` (`language`),
  KEY `item_name` (`item_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_item_translation`
--

LOCK TABLES `st_item_translation` WRITE;
/*!40000 ALTER TABLE `st_item_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_item_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_job_queue`
--

DROP TABLE IF EXISTS `st_job_queue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_job_queue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_name` varchar(255) NOT NULL,
  `job_data` text NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `job_name` (`job_name`),
  KEY `status` (`status`),
  KEY `created_at` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_job_queue`
--

LOCK TABLES `st_job_queue` WRITE;
/*!40000 ALTER TABLE `st_job_queue` DISABLE KEYS */;
INSERT INTO `st_job_queue` VALUES (1,'AutoPrint','{\"order_uuid\":\"7d3bb630-305d-11f1-86f1-4ab0e3a8062d\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775331352}','pending','2026-04-04 19:35:52','2026-04-04 19:35:52'),(2,'SendTokitchen','{\"order_uuid\":\"7d3bb630-305d-11f1-86f1-4ab0e3a8062d\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775331352}','pending','2026-04-04 19:35:52','2026-04-04 19:35:52'),(3,'SendOrderWhatsapp','{\"order_uuid\":\"7d3bb630-305d-11f1-86f1-4ab0e3a8062d\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775331352}','pending','2026-04-04 19:35:52','2026-04-04 19:35:52'),(4,'AutoPrint','{\"order_uuid\":\"4a6ec2f9-30c8-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377223}','pending','2026-04-05 08:20:23','2026-04-05 08:20:23'),(5,'SendTokitchen','{\"order_uuid\":\"4a6ec2f9-30c8-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377223}','pending','2026-04-05 08:20:23','2026-04-05 08:20:23'),(6,'SendOrderWhatsapp','{\"order_uuid\":\"4a6ec2f9-30c8-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377223}','pending','2026-04-05 08:20:23','2026-04-05 08:20:23'),(7,'AutoPrint','{\"order_uuid\":\"3e6d424b-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377633}','pending','2026-04-05 08:27:13','2026-04-05 08:27:13'),(8,'SendTokitchen','{\"order_uuid\":\"3e6d424b-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377633}','pending','2026-04-05 08:27:13','2026-04-05 08:27:13'),(9,'SendOrderWhatsapp','{\"order_uuid\":\"3e6d424b-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377633}','pending','2026-04-05 08:27:13','2026-04-05 08:27:13'),(10,'Ordercancel','{\"order_uuid\":\"3e6d424b-30c9-11f1-b058-9a79972e1847\",\"refund_type\":\"full_refund\"}','pending','2026-04-05 08:30:20','2026-04-05 08:30:20'),(11,'Ordercancel','{\"order_uuid\":\"4a6ec2f9-30c8-11f1-b058-9a79972e1847\",\"refund_type\":\"full_refund\"}','pending','2026-04-05 08:30:23','2026-04-05 08:30:23'),(12,'AutoPrint','{\"order_uuid\":\"bac8311e-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377841}','pending','2026-04-05 08:30:41','2026-04-05 08:30:41'),(13,'SendTokitchen','{\"order_uuid\":\"bac8311e-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377841}','pending','2026-04-05 08:30:41','2026-04-05 08:30:41'),(14,'SendOrderWhatsapp','{\"order_uuid\":\"bac8311e-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377841}','pending','2026-04-05 08:30:41','2026-04-05 08:30:41'),(15,'AutoPrint','{\"order_uuid\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377951}','pending','2026-04-05 08:32:31','2026-04-05 08:32:31'),(16,'SendTokitchen','{\"order_uuid\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377951}','pending','2026-04-05 08:32:31','2026-04-05 08:32:31'),(17,'SendOrderWhatsapp','{\"order_uuid\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775377951}','pending','2026-04-05 08:32:31','2026-04-05 08:32:31'),(18,'AutoPrint','{\"order_uuid\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775387288}','pending','2026-04-05 11:08:09','2026-04-05 11:08:09'),(19,'SendTokitchen','{\"order_uuid\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775387288}','pending','2026-04-05 11:08:09','2026-04-05 11:08:09'),(20,'SendOrderWhatsapp','{\"order_uuid\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"key\":\"6EE1E6391DC4EF7E8887444E889418B4\",\"language\":\"da\",\"time\":1775387288}','pending','2026-04-05 11:08:09','2026-04-05 11:08:09');
/*!40000 ALTER TABLE `st_job_queue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_kitchen_order`
--

DROP TABLE IF EXISTS `st_kitchen_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_kitchen_order` (
  `kitchen_order_id` int(11) NOT NULL AUTO_INCREMENT,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `order_reference` varchar(50) NOT NULL DEFAULT '',
  `order_ref_id` varchar(100) NOT NULL DEFAULT '',
  `table_uuid` varchar(100) NOT NULL DEFAULT '',
  `room_uuid` varchar(100) NOT NULL DEFAULT '',
  `customer_name` varchar(200) NOT NULL DEFAULT '',
  `transaction_type` varchar(50) NOT NULL DEFAULT '',
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `qty` int(14) NOT NULL DEFAULT 0,
  `item_status` varchar(50) NOT NULL DEFAULT 'queue',
  `special_instructions` text DEFAULT NULL,
  `attributes` text DEFAULT NULL,
  `addons` text DEFAULT NULL,
  `whento_deliver` varchar(50) NOT NULL DEFAULT '',
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(50) NOT NULL DEFAULT '',
  `timezone` varchar(50) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `date_completed` datetime DEFAULT NULL,
  PRIMARY KEY (`kitchen_order_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `table_uuid` (`table_uuid`),
  KEY `item_token` (`item_token`),
  KEY `item_status` (`item_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_kitchen_order`
--

LOCK TABLES `st_kitchen_order` WRITE;
/*!40000 ALTER TABLE `st_kitchen_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_kitchen_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_kitchen_workload_settings`
--

DROP TABLE IF EXISTS `st_kitchen_workload_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_kitchen_workload_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(10) DEFAULT 0,
  `low_workload_max_orders` int(10) NOT NULL DEFAULT 0,
  `low_workload_extra_time` int(10) NOT NULL DEFAULT 0,
  `medium_workload_min_orders` int(10) NOT NULL DEFAULT 0,
  `medium_workload_max_orders` int(10) NOT NULL DEFAULT 0,
  `medium_workload_extra_time` int(10) NOT NULL DEFAULT 0,
  `high_workload_min_orders` int(10) NOT NULL DEFAULT 0,
  `high_workload_extra_time` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_kitchen_workload_settings`
--

LOCK TABLES `st_kitchen_workload_settings` WRITE;
/*!40000 ALTER TABLE `st_kitchen_workload_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_kitchen_workload_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_kot_items`
--

DROP TABLE IF EXISTS `st_kot_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_kot_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kot_id` int(10) NOT NULL DEFAULT 0,
  `order_item_id` int(10) NOT NULL DEFAULT 0,
  `qty` int(10) NOT NULL DEFAULT 0,
  `note` text DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `fk_kot_items_item_id` (`order_item_id`),
  KEY `fk_kot_items_kot_delete` (`kot_id`),
  CONSTRAINT `fk_kot_items_kot_delete` FOREIGN KEY (`kot_id`) REFERENCES `st_kot_tickets` (`kot_id`) ON DELETE CASCADE,
  CONSTRAINT `fk_kot_items_kot_id` FOREIGN KEY (`kot_id`) REFERENCES `st_kot_tickets` (`kot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_kot_items`
--

LOCK TABLES `st_kot_items` WRITE;
/*!40000 ALTER TABLE `st_kot_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_kot_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_kot_tickets`
--

DROP TABLE IF EXISTS `st_kot_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_kot_tickets` (
  `kot_id` int(11) NOT NULL AUTO_INCREMENT,
  `kot_number` int(10) NOT NULL DEFAULT 0,
  `order_id` int(10) NOT NULL DEFAULT 0,
  `merchant_id` int(10) NOT NULL DEFAULT 0,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`kot_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_kot_tickets`
--

LOCK TABLES `st_kot_tickets` WRITE;
/*!40000 ALTER TABLE `st_kot_tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_kot_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_language`
--

DROP TABLE IF EXISTS `st_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `flag` varchar(100) NOT NULL DEFAULT '',
  `rtl` int(1) NOT NULL DEFAULT 0,
  `sequence` int(11) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `code` (`code`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_language`
--

LOCK TABLES `st_language` WRITE;
/*!40000 ALTER TABLE `st_language` DISABLE KEYS */;
INSERT INTO `st_language` VALUES (1,'ar','Arabic','al-\'arabiyyah, العربية','AE',1,3,'draft','2021-05-08 14:46:23','2022-01-27 08:05:31','127.0.0.1'),(2,'en','English','american english','US',0,2,'publish','2021-05-08 14:46:23','2022-01-27 08:05:25','127.0.0.1'),(4,'ja','Japanese','nihongo','JP',0,2,'draft','2021-05-08 14:46:23','2022-01-27 08:05:19','127.0.0.1'),(5,'da','Dansk','Danish','DK',0,1,'publish','2026-04-05 11:42:34','2026-04-05 11:42:34','127.0.0.1');
/*!40000 ALTER TABLE `st_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_location_area`
--

DROP TABLE IF EXISTS `st_location_area`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_location_area` (
  `area_id` int(14) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `city_id` int(14) NOT NULL DEFAULT 0,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`area_id`),
  KEY `city_id` (`city_id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_location_area`
--

LOCK TABLES `st_location_area` WRITE;
/*!40000 ALTER TABLE `st_location_area` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_location_area` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_location_cities`
--

DROP TABLE IF EXISTS `st_location_cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_location_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `postal_code` varchar(255) NOT NULL DEFAULT '',
  `state_id` int(11) NOT NULL,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`city_id`),
  KEY `postal_code` (`postal_code`),
  KEY `state_id` (`state_id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_location_cities`
--

LOCK TABLES `st_location_cities` WRITE;
/*!40000 ALTER TABLE `st_location_cities` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_location_cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_location_countries`
--

DROP TABLE IF EXISTS `st_location_countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_location_countries` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `shortcode` varchar(3) NOT NULL DEFAULT '',
  `country_name` varchar(150) NOT NULL DEFAULT '',
  `phonecode` int(11) NOT NULL,
  PRIMARY KEY (`country_id`),
  KEY `shortcode` (`shortcode`)
) ENGINE=InnoDB AUTO_INCREMENT=247 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_location_countries`
--

LOCK TABLES `st_location_countries` WRITE;
/*!40000 ALTER TABLE `st_location_countries` DISABLE KEYS */;
INSERT INTO `st_location_countries` VALUES (1,'AF','Afghanistan',93),(2,'AL','Albania',355),(3,'DZ','Algeria',213),(4,'AS','American Samoa',1684),(5,'AD','Andorra',376),(6,'AO','Angola',244),(7,'AI','Anguilla',1264),(8,'AQ','Antarctica',0),(9,'AG','Antigua And Barbuda',1268),(10,'AR','Argentina',54),(11,'AM','Armenia',374),(12,'AW','Aruba',297),(13,'AU','Australia',61),(14,'AT','Austria',43),(15,'AZ','Azerbaijan',994),(16,'BS','Bahamas The',1242),(17,'BH','Bahrain',973),(18,'BD','Bangladesh',880),(19,'BB','Barbados',1246),(20,'BY','Belarus',375),(21,'BE','Belgium',32),(22,'BZ','Belize',501),(23,'BJ','Benin',229),(24,'BM','Bermuda',1441),(25,'BT','Bhutan',975),(26,'BO','Bolivia',591),(27,'BA','Bosnia and Herzegovina',387),(28,'BW','Botswana',267),(29,'BV','Bouvet Island',0),(30,'BR','Brazil',55),(31,'IO','British Indian Ocean Territory',246),(32,'BN','Brunei',673),(33,'BG','Bulgaria',359),(34,'BF','Burkina Faso',226),(35,'BI','Burundi',257),(36,'KH','Cambodia',855),(37,'CM','Cameroon',237),(38,'CA','Canada',1),(39,'CV','Cape Verde',238),(40,'KY','Cayman Islands',1345),(41,'CF','Central African Republic',236),(42,'TD','Chad',235),(43,'CL','Chile',56),(44,'CN','China',86),(45,'CX','Christmas Island',61),(46,'CC','Cocos (Keeling) Islands',672),(47,'CO','Colombia',57),(48,'KM','Comoros',269),(49,'CG','Congo',242),(50,'CD','Congo The Democratic Republic Of The',242),(51,'CK','Cook Islands',682),(52,'CR','Costa Rica',506),(53,'CI','Cote D\'Ivoire (Ivory Coast)',225),(54,'HR','Croatia (Hrvatska)',385),(55,'CU','Cuba',53),(56,'CY','Cyprus',357),(57,'CZ','Czech Republic',420),(58,'DK','Denmark',45),(59,'DJ','Djibouti',253),(60,'DM','Dominica',1767),(61,'DO','Dominican Republic',1809),(62,'TP','East Timor',670),(63,'EC','Ecuador',593),(64,'EG','Egypt',20),(65,'SV','El Salvador',503),(66,'GQ','Equatorial Guinea',240),(67,'ER','Eritrea',291),(68,'EE','Estonia',372),(69,'ET','Ethiopia',251),(70,'XA','External Territories of Australia',61),(71,'FK','Falkland Islands',500),(72,'FO','Faroe Islands',298),(73,'FJ','Fiji Islands',679),(74,'FI','Finland',358),(75,'FR','France',33),(76,'GF','French Guiana',594),(77,'PF','French Polynesia',689),(78,'TF','French Southern Territories',0),(79,'GA','Gabon',241),(80,'GM','Gambia The',220),(81,'GE','Georgia',995),(82,'DE','Germany',49),(83,'GH','Ghana',233),(84,'GI','Gibraltar',350),(85,'GR','Greece',30),(86,'GL','Greenland',299),(87,'GD','Grenada',1473),(88,'GP','Guadeloupe',590),(89,'GU','Guam',1671),(90,'GT','Guatemala',502),(91,'XU','Guernsey and Alderney',44),(92,'GN','Guinea',224),(93,'GW','Guinea-Bissau',245),(94,'GY','Guyana',592),(95,'HT','Haiti',509),(96,'HM','Heard and McDonald Islands',0),(97,'HN','Honduras',504),(98,'HK','Hong Kong S.A.R.',852),(99,'HU','Hungary',36),(100,'IS','Iceland',354),(101,'IN','India',91),(102,'ID','Indonesia',62),(103,'IR','Iran',98),(104,'IQ','Iraq',964),(105,'IE','Ireland',353),(106,'IL','Israel',972),(107,'IT','Italy',39),(108,'JM','Jamaica',1876),(109,'JP','Japan',81),(110,'XJ','Jersey',44),(111,'JO','Jordan',962),(112,'KZ','Kazakhstan',7),(113,'KE','Kenya',254),(114,'KI','Kiribati',686),(115,'KP','Korea North',850),(116,'KR','Korea South',82),(117,'KW','Kuwait',965),(118,'KG','Kyrgyzstan',996),(119,'LA','Laos',856),(120,'LV','Latvia',371),(121,'LB','Lebanon',961),(122,'LS','Lesotho',266),(123,'LR','Liberia',231),(124,'LY','Libya',218),(125,'LI','Liechtenstein',423),(126,'LT','Lithuania',370),(127,'LU','Luxembourg',352),(128,'MO','Macau S.A.R.',853),(129,'MK','Macedonia',389),(130,'MG','Madagascar',261),(131,'MW','Malawi',265),(132,'MY','Malaysia',60),(133,'MV','Maldives',960),(134,'ML','Mali',223),(135,'MT','Malta',356),(136,'XM','Man (Isle of)',44),(137,'MH','Marshall Islands',692),(138,'MQ','Martinique',596),(139,'MR','Mauritania',222),(140,'MU','Mauritius',230),(141,'YT','Mayotte',269),(142,'MX','Mexico',52),(143,'FM','Micronesia',691),(144,'MD','Moldova',373),(145,'MC','Monaco',377),(146,'MN','Mongolia',976),(147,'MS','Montserrat',1664),(148,'MA','Morocco',212),(149,'MZ','Mozambique',258),(150,'MM','Myanmar',95),(151,'NA','Namibia',264),(152,'NR','Nauru',674),(153,'NP','Nepal',977),(154,'AN','Netherlands Antilles',599),(155,'NL','Netherlands The',31),(156,'NC','New Caledonia',687),(157,'NZ','New Zealand',64),(158,'NI','Nicaragua',505),(159,'NE','Niger',227),(160,'NG','Nigeria',234),(161,'NU','Niue',683),(162,'NF','Norfolk Island',672),(163,'MP','Northern Mariana Islands',1670),(164,'NO','Norway',47),(165,'OM','Oman',968),(166,'PK','Pakistan',92),(167,'PW','Palau',680),(168,'PS','Palestinian Territory Occupied',970),(169,'PA','Panama',507),(170,'PG','Papua new Guinea',675),(171,'PY','Paraguay',595),(172,'PE','Peru',51),(173,'PH','Philippines',63),(174,'PN','Pitcairn Island',0),(175,'PL','Poland',48),(176,'PT','Portugal',351),(177,'PR','Puerto Rico',1787),(178,'QA','Qatar',974),(179,'RE','Reunion',262),(180,'RO','Romania',40),(181,'RU','Russia',70),(182,'RW','Rwanda',250),(183,'SH','Saint Helena',290),(184,'KN','Saint Kitts And Nevis',1869),(185,'LC','Saint Lucia',1758),(186,'PM','Saint Pierre and Miquelon',508),(187,'VC','Saint Vincent And The Grenadines',1784),(188,'WS','Samoa',684),(189,'SM','San Marino',378),(190,'ST','Sao Tome and Principe',239),(191,'SA','Saudi Arabia',966),(192,'SN','Senegal',221),(193,'RS','Serbia',381),(194,'SC','Seychelles',248),(195,'SL','Sierra Leone',232),(196,'SG','Singapore',65),(197,'SK','Slovakia',421),(198,'SI','Slovenia',386),(199,'XG','Smaller Territories of the UK',44),(200,'SB','Solomon Islands',677),(201,'SO','Somalia',252),(202,'ZA','South Africa',27),(203,'GS','South Georgia',0),(204,'SS','South Sudan',211),(205,'ES','Spain',34),(206,'LK','Sri Lanka',94),(207,'SD','Sudan',249),(208,'SR','Suriname',597),(209,'SJ','Svalbard And Jan Mayen Islands',47),(210,'SZ','Swaziland',268),(211,'SE','Sweden',46),(212,'CH','Switzerland',41),(213,'SY','Syria',963),(214,'TW','Taiwan',886),(215,'TJ','Tajikistan',992),(216,'TZ','Tanzania',255),(217,'TH','Thailand',66),(218,'TG','Togo',228),(219,'TK','Tokelau',690),(220,'TO','Tonga',676),(221,'TT','Trinidad And Tobago',1868),(222,'TN','Tunisia',216),(223,'TR','Turkey',90),(224,'TM','Turkmenistan',7370),(225,'TC','Turks And Caicos Islands',1649),(226,'TV','Tuvalu',688),(227,'UG','Uganda',256),(228,'UA','Ukraine',380),(229,'AE','United Arab Emirates',971),(230,'GB','United Kingdom',44),(231,'US','United States',1),(232,'UM','United States Minor Outlying Islands',1),(233,'UY','Uruguay',598),(234,'UZ','Uzbekistan',998),(235,'VU','Vanuatu',678),(236,'VA','Vatican City State (Holy See)',39),(237,'VE','Venezuela',58),(238,'VN','Vietnam',84),(239,'VG','Virgin Islands (British)',1284),(240,'VI','Virgin Islands (US)',1340),(241,'WF','Wallis And Futuna Islands',681),(242,'EH','Western Sahara',212),(243,'YE','Yemen',967),(244,'YU','Yugoslavia',38),(245,'ZM','Zambia',260),(246,'ZW','Zimbabwe',263);
/*!40000 ALTER TABLE `st_location_countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_location_rate`
--

DROP TABLE IF EXISTS `st_location_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_location_rate` (
  `rate_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `country_id` int(14) NOT NULL DEFAULT 0,
  `state_id` int(14) NOT NULL DEFAULT 0,
  `city_id` int(14) DEFAULT 0,
  `area_id` int(14) NOT NULL DEFAULT 0,
  `fee` float(14,4) NOT NULL DEFAULT 0.0000,
  `minimum_order` float(14,4) NOT NULL DEFAULT 0.0000,
  `maximum_amount` float(14,2) NOT NULL DEFAULT 0.00,
  `free_above_subtotal` float(14,4) NOT NULL DEFAULT 0.0000,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`rate_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `country_id` (`country_id`),
  KEY `state_id` (`state_id`),
  KEY `area_id` (`area_id`),
  KEY `city_id` (`city_id`),
  KEY `fee` (`fee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_location_rate`
--

LOCK TABLES `st_location_rate` WRITE;
/*!40000 ALTER TABLE `st_location_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_location_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_location_states`
--

DROP TABLE IF EXISTS `st_location_states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_location_states` (
  `state_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `country_id` int(11) NOT NULL DEFAULT 1,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`state_id`),
  KEY `country_id` (`country_id`),
  KEY `sequence` (`sequence`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_location_states`
--

LOCK TABLES `st_location_states` WRITE;
/*!40000 ALTER TABLE `st_location_states` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_location_states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_location_time_estimate`
--

DROP TABLE IF EXISTS `st_location_time_estimate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_location_time_estimate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `service_type` varchar(100) NOT NULL DEFAULT '',
  `country_id` int(14) NOT NULL DEFAULT 0,
  `state_id` int(14) NOT NULL DEFAULT 0,
  `city_id` int(14) NOT NULL DEFAULT 0,
  `area_id` int(14) NOT NULL DEFAULT 0,
  `estimated_time_min` int(10) NOT NULL DEFAULT 0,
  `estimated_time_max` int(10) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `service_type` (`service_type`),
  KEY `country_id` (`country_id`),
  KEY `city_id` (`city_id`),
  KEY `state_id` (`state_id`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_location_time_estimate`
--

LOCK TABLES `st_location_time_estimate` WRITE;
/*!40000 ALTER TABLE `st_location_time_estimate` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_location_time_estimate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_map_places`
--

DROP TABLE IF EXISTS `st_map_places`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_map_places` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reference_type` varchar(50) NOT NULL DEFAULT '',
  `reference_id` varchar(255) NOT NULL DEFAULT '',
  `latitude` varchar(20) NOT NULL DEFAULT '',
  `longitude` varchar(20) NOT NULL DEFAULT '',
  `address1` varchar(255) NOT NULL DEFAULT '',
  `address2` varchar(255) NOT NULL DEFAULT '',
  `country` varchar(255) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT '',
  `postal_code` varchar(100) NOT NULL DEFAULT '',
  `formatted_address` varchar(255) NOT NULL DEFAULT '',
  `parsed_address` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `reference_type` (`reference_type`),
  KEY `reference_id` (`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_map_places`
--

LOCK TABLES `st_map_places` WRITE;
/*!40000 ALTER TABLE `st_map_places` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_map_places` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_media_files`
--

DROP TABLE IF EXISTS `st_media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_media_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `upload_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `title` varchar(255) NOT NULL DEFAULT '',
  `filename` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `size` varchar(50) NOT NULL DEFAULT '',
  `media_type` varchar(100) NOT NULL DEFAULT '',
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_media_files`
--

LOCK TABLES `st_media_files` WRITE;
/*!40000 ALTER TABLE `st_media_files` DISABLE KEYS */;
INSERT INTO `st_media_files` VALUES (1,'e4d159a1-3059-11f1-86f1-4ab0e3a8062d',0,'Chicken N Chicken Logo.png','e4d159a1-3059-11f1-86f1-4ab0e3a8062d.png','upload/all','40431','image/png','','2026-04-04 21:10:07','192.168.97.1'),(2,'34fa2c62-305a-11f1-86f1-4ab0e3a8062d',0,'6963703.png','34fa2c62-305a-11f1-86f1-4ab0e3a8062d.png','upload/all','14537','image/png','','2026-04-04 21:12:21','192.168.97.1');
/*!40000 ALTER TABLE `st_media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_menu`
--

DROP TABLE IF EXISTS `st_menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_menu` (
  `menu_id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_type` varchar(100) NOT NULL DEFAULT 'admin',
  `menu_name` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT 0,
  `meta_value1` int(10) NOT NULL DEFAULT 0,
  `link` varchar(255) NOT NULL DEFAULT '',
  `action_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` int(1) NOT NULL DEFAULT 1,
  `visible` int(1) NOT NULL DEFAULT 1,
  `role_create` varchar(255) NOT NULL DEFAULT '',
  `role_update` varchar(255) NOT NULL DEFAULT '',
  `role_delete` varchar(255) NOT NULL DEFAULT '',
  `role_view` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`menu_id`),
  KEY `menu_type` (`menu_type`),
  KEY `parent_id` (`parent_id`),
  KEY `status` (`status`),
  KEY `visible` (`visible`)
) ENGINE=InnoDB AUTO_INCREMENT=101434 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_menu`
--

LOCK TABLES `st_menu` WRITE;
/*!40000 ALTER TABLE `st_menu` DISABLE KEYS */;
INSERT INTO `st_menu` VALUES (1,'admin','Dashboard',0,0,'admin/dashboard','admin.dashboard',1.00,1,1,'','','',''),(2,'admin','Merchant',0,0,'','merchant',3.00,1,1,'','','',''),(5,'admin','Users',0,0,'','admin.user',18.00,1,1,'','','',''),(6,'admin','Orders',0,0,'','admin.orders',5.00,1,1,'','','',''),(16,'admin','Membership',0,0,'','membership',4.00,1,1,'','','',''),(20,'admin','Attributes',0,0,'','attributes',10.00,1,1,'','','',''),(26,'admin','Site configuration',0,0,'admin/site_information','admin.site_information',2.00,1,1,'','','',''),(28,'admin','Promo',0,0,'','promo',11.00,1,1,'','','',''),(30,'admin','Notifications',0,0,'','notifications',12.00,1,1,'','','',''),(37,'admin','Buyers',0,0,'','buyer',13.00,1,1,'','','',''),(46,'admin','SMS',0,0,'','sms',15.00,1,1,'','','',''),(52,'admin','Merchant Registration',51,0,'reports/merchant_registration','reports.merchant_registration',1.00,1,1,'','','',''),(53,'admin','Membership Payment',51,0,'reports/merchant_payment','reports.merchant_payment',2.00,1,1,'','','',''),(54,'admin','Merchant Sales',51,0,'reports/merchant_sales','reports.merchant_sales',3.00,1,1,'','','',''),(60,'merchant','Dashboard',0,0,'merchant/dashboard','merchant.dashboard',1.00,1,1,'','','',''),(61,'merchant','Merchant',0,0,'','merchant',2.00,1,1,'','','',''),(64,'merchant','Orders',0,0,'','merchant.orders',3.00,1,1,'','','',''),(69,'merchant','Settings',67,0,'booking/settings','booking.settings',2.00,1,1,'','','',''),(70,'merchant','Attributes',0,0,'','attributes',5.00,1,1,'','','',''),(75,'merchant','Food',0,0,'','food',6.00,1,1,'','','',''),(80,'merchant','Order type',0,0,'','services.settings',7.00,1,1,'','','',''),(82,'merchant','Promo',0,0,'','promo',9.00,1,1,'','','',''),(85,'merchant','Images',0,0,'','merchant.images',9.00,1,1,'','','',''),(87,'merchant','Account',0,0,'','merchant.account',10.00,1,1,'','','',''),(91,'merchant','SMS',0,0,'','sms',11.00,1,1,'','','',''),(94,'merchant','Buyers',0,0,'','buyer',12.00,1,1,'','','',''),(97,'merchant','Users',0,0,'','merchan.user',13.00,1,1,'','','',''),(100,'merchant','Reports',0,0,'','reports',14.00,1,1,'','','',''),(127,'merchant','Inventory Management',0,0,'','inventory.management',15.00,1,1,'','','',''),(132,'merchant','Time Slot',67,0,'booking/time_slot','booking.time_slot',6.00,1,0,'','','',''),(133,'merchant','Create Time Slot',67,0,'booking/timeslot_create','booking.timeslot_create',7.00,1,0,'','','',''),(134,'merchant','Update Time Slot',67,0,'booking/timeslot_update','booking.timeslot_update',8.00,1,0,'','','',''),(135,'merchant','Delete Time Slot',67,0,'booking/delete_timeslot','booking.delete_timeslot',8.00,1,0,'','','',''),(141,'admin','Payment gateway',0,0,'','payment.gateway',6.00,1,1,'','','',''),(143,'merchant','Payment gateway',0,0,'','payment.gateway',8.00,1,1,'','','',''),(152,'admin','Account',0,0,'','admin.account',7.00,1,1,'','','',''),(154,'admin','Earnings',0,0,'','admin.earnings',8.00,1,1,'','','',''),(156,'admin','Withdrawals',0,0,'','admin.withdrawals',9.00,1,1,'','','',''),(160,'admin','Third Party App',0,0,'','admin.thirdparty',14.00,1,1,'','','',''),(169,'admin','Order earnings',51,0,'reports/order_earnings','reports.order_earnings',4.00,1,1,'','','',''),(171,'merchant','POS',0,0,'','pos',3.00,1,1,'','','',''),(174,'admin','Refund Report',51,0,'reports/refund','reports.refund',5.00,1,1,'','','',''),(368,'admin','Website',0,0,'','sales.channel',19.00,1,1,'','','',''),(370,'website','Company',0,0,'','',0.00,1,1,'','','',''),(373,'website','Service',0,0,'','',0.00,1,1,'','','',''),(374,'website','Find a store',373,0,'https://demo.bastisapp.com/find-store','',0.00,1,1,'','','',''),(375,'website','Services',373,0,'https://demo.bastisapp.com/services','',1.00,1,1,'','','',''),(376,'website','Contact Us',373,0,'https://demo.bastisapp.com/contact-us','',2.00,1,1,'','','',''),(377,'website','Categories',0,0,'','',0.00,1,1,'','','',''),(378,'website','Grocery',377,0,'https://demo.bastisapp.com','',0.00,1,1,'','','',''),(379,'website','Parcel Delivery',377,0,'https://demo.bastisapp.com','',0.00,1,1,'','','',''),(380,'website','Fast Food',377,0,'https://demo.bastisapp.com','',0.00,1,1,'','','',''),(385,'admin','Addon manager',0,0,'addon/manager','addon.manager',21.00,1,1,'','','',''),(399,'admin','Marketing',0,0,'','marketing',12.00,1,1,'','','',''),(402,'admin','Delivery Management',0,0,'','delivery.driver',16.00,1,1,'','','',''),(415,'admin','Mobile Merchant',0,0,'','mobile.merchant',16.00,1,1,'','','',''),(417,'merchant','Printers',0,0,'','printers',14.00,1,1,'','','',''),(419,'admin','Printers',0,0,'','printers',18.00,1,1,'','','',''),(421,'admin','Invoice',0,0,'','invoice',9.00,1,1,'','','',''),(423,'merchant','Invoice',0,0,'','invoice',11.00,1,1,'','','',''),(428,'merchant','Table Booking',0,0,'','table.booking',3.00,1,1,'','','',''),(433,'admin','Utilities',0,0,'','Utilities',21.00,1,1,'','','',''),(436,'admin','Table reservation',0,0,'','table.reservation',9.00,1,1,'','','',''),(446,'website_merchant','Menu1',0,3,'','',0.00,1,1,'','','',''),(447,'website_merchant','Terms and conditions',446,3,'{{site_url}}/terms','',0.00,1,1,'','','',''),(448,'website_merchant','Contact us',446,3,'{{site_url}}/contact-us','',1.00,1,1,'','','',''),(450,'website_merchant','Menu 2',0,3,'','',0.00,1,1,'','','',''),(451,'website_merchant','Terms and conditions',450,3,'{{site_url}}/terms','',3.00,1,1,'','','',''),(455,'admin','Driver Earnings',51,0,'reports/driver_earnings','reports.driver_earnings',6.00,1,1,'','','',''),(456,'admin','Driver wallet',51,0,'reports/driver_wallet','reports.driver_wallet',7.00,1,1,'','','',''),(460,'admin','Loyalty Points',0,0,'','admin.loyalty',16.00,1,1,'','','',''),(5681,'admin','Reports',0,0,'','reports',17.00,1,1,'','','',''),(17642,'admin','Multi Currency',0,0,'','multi.currency',16.10,1,1,'','','',''),(21495,'merchant','Delivery Management',0,0,'','merchant.driver',4.00,1,1,'','','',''),(34926,'admin','Settings',32855,0,'digitalwallet/settings','digitalwallet.settings',1.00,1,1,'','','',''),(34927,'admin','Bonus Funds',32855,0,'digitalwallet/bonus_funds','digitalwallet.bonus_funds',2.00,1,1,'','','',''),(34928,'admin','Transactions',32855,0,'digitalwallet/transactions','digitalwallet.transactions',3.00,1,1,'','','',''),(35816,'admin','Digital Wallet',0,0,'','admin.wallet',16.10,1,1,'','','',''),(36414,'admin','Communication',0,0,'','communication',16.30,1,1,'','','',''),(38314,'merchant','Communication',0,0,'','merchant.communication',4.10,1,1,'','','',''),(41963,'merchant','Settings',91,0,'smsmerchant/sms_settings','smsmerchant.sms_settings',1.00,1,1,'','','',''),(41964,'merchant','BroadCast',91,0,'smsmerchant/broadcast','smsmerchant.broadcast',2.00,1,1,'smsmerchant.smsbroadcast_create','smsmerchant.broadcast_details','smsmerchant.smsbroadcast_delete',''),(45554,'merchant','Loyalty Points',44942,0,'loyalty_points/settings','loyalty_points.settings',1.00,1,1,'','','',''),(45860,'merchant','Campaigns',0,0,'','merchant.campaigns',4.00,1,1,'','','',''),(62705,'admin','Tableside Ordering',0,0,'','tableside.ordering',16.00,1,1,'','','',''),(64272,'admin','Kitchen App',0,0,'','Kitchen.app',16.10,1,1,'','','',''),(69516,'admin','Media Library',0,0,'media/library','media.library',20.00,1,1,'','','',''),(73167,'website','Terms and conditions',370,0,'{{site_url}}/terms-and-conditions','',2.00,1,1,'','','',''),(73169,'website','About Us',370,0,'{{site_url}}/about-us','',3.00,1,1,'','','',''),(89268,'website','Test with video',370,0,'{{site_url}}/test-with-video','',0.00,1,1,'','','',''),(89269,'website','Privacy policy',370,0,'{{site_url}}/privacy-policy','',1.00,1,1,'','','',''),(89605,'website_merchant','Terms and conditions',450,3,'{{site_url}}/terms','',0.00,1,1,'','','',''),(89606,'website_merchant','Contact us',450,3,'{{site_url}}/contact-us','',1.00,1,1,'','','',''),(89607,'website_merchant','Privacy Policy',450,3,'{{site_url}}/privacy-policy2','',2.00,1,1,'','','',''),(101093,'admin','Map API Keys',26,0,'admin/map_keys','admin.map_keys',1.00,1,0,'','','',''),(101094,'admin','Google Recaptcha',26,0,'admin/recaptcha','admin.recaptcha',2.00,1,0,'','','',''),(101095,'admin','Search Mode',26,0,'admin/search_settings','admin.search_settings',3.00,1,0,'','','',''),(101096,'admin','Delivery Fee Management',26,0,'admin/delivery_management','admin.delivery_management',3.10,1,0,'','','admin.delete_location_rate',''),(101097,'admin','Time Estimates Management',26,0,'admin/estimate_management','admin.estimate_management',3.20,1,0,'','','admin.delete_estimate_time',''),(101098,'admin','Fee Management',26,0,'admin/fee_management','admin.fee_management',3.30,1,0,'','','',''),(101099,'admin','Login &amp; Signup',26,0,'admin/login_sigup','admin.login_sigup',4.00,1,0,'','','',''),(101100,'admin','Custom Fields',26,0,'admin/custom_fields','admin.custom_fields',4.10,1,0,'','','',''),(101101,'admin','Phone Settings',26,0,'admin/phone_settings','admin.phone_settings',5.00,1,0,'','','',''),(101102,'admin','Social Settings',26,0,'admin/social_settings','admin.social_settings',6.00,1,0,'','','',''),(101103,'admin','Printer Settings',26,0,'admin/printing','admin.printing',7.00,1,0,'','','',''),(101104,'admin','Reviews',26,0,'admin/reviews','admin.reviews',8.00,1,0,'','','',''),(101105,'admin','Timezone',26,0,'admin/timezone','admin.timezone',9.00,1,0,'','','',''),(101106,'admin','Ordering',26,0,'admin/ordering','admin.ordering',10.00,1,0,'','','',''),(101107,'admin','Automated Status Updates',26,0,'admin/automatedstatus','admin.automatedstatus',10.10,1,0,'','','',''),(101108,'admin','Merchant Registration',26,0,'admin/merchant_registration','admin.merchant_registration',11.00,1,0,'','','',''),(101109,'admin','Notifications',26,0,'admin/notifications','admin.notifications',12.00,1,0,'','','',''),(101110,'admin','Contact Settings',26,0,'admin/contact_settings','admin.contact_settings',13.00,1,0,'','','',''),(101111,'admin','Anaylytics',26,0,'admin/analytics_settings','admin.analytics_settings',14.00,1,0,'','','',''),(101112,'admin','API Access',26,0,'admin/api_access','admin.api_access',15.00,1,0,'','','',''),(101113,'admin','Mobile Page',26,0,'admin/mobilepage','admin.mobilepage',16.00,1,0,'','','',''),(101114,'admin','Mobile Settings',26,0,'admin/mobile_settings','admin.mobile_settings',17.00,1,0,'','','',''),(101115,'admin','Push Notifications',26,0,'admin/push_notifications','admin.push_notifications',18.00,1,0,'','','',''),(101116,'admin','GDPR cookie consent',26,0,'admin/cookie_consent','admin.cookie_consent',19.00,1,0,'','','',''),(101117,'admin','Cron Jobs',26,0,'admin/cronjobs','admin.cronjobs',19.10,1,0,'','','',''),(101118,'admin','Others',26,0,'admin/site_others','admin.site_others',20.00,1,0,'','','',''),(101119,'admin','Test Runactions',26,0,'admin/test_runactions','admin.test_runactions',21.00,1,0,'','','',''),(101120,'admin','List',2,0,'vendor/list','vendor.list',1.00,1,1,'vendor.create','vendor.edit','vendor.delete',''),(101121,'admin','New signup',2,0,'vendor/pending_list','vendor.pending_list',1.10,1,1,'vendor.approved','vendor.denied','vendor.delete',''),(101122,'admin','Sponsored',2,0,'vendor/sponsored','vendor.sponsored',2.00,1,1,'vendor.create_sponsored','vendor.edit_sponsored','vendor.delete_sponsored',''),(101123,'admin','Merchant Upload Bulk',2,0,'vendor/bulkupload','vendor.bulkupload',2.10,1,0,'','','',''),(101124,'admin','Merchant Autologin',2,0,'vendor/autologin','vendor.autologin',3.00,1,0,'','','',''),(101125,'admin','Merchant Login information',2,0,'vendor/login','vendor.login',4.00,1,0,'','','',''),(101126,'admin','Merchant Address',2,0,'vendor/address','vendor.address',5.00,1,0,'','','',''),(101127,'admin','Merchant Zone',2,0,'vendor/zone','vendor.zone',6.00,1,0,'','','',''),(101128,'admin','Merchant type',2,0,'vendor/membership','vendor.membership',7.00,1,0,'','','',''),(101129,'admin','Merchant Featured',2,0,'vendor/featured','vendor.featured',8.00,1,0,'','','',''),(101130,'admin','Merchant Payment History',2,0,'vendor/payment_history','vendor.payment_history',9.00,1,0,'','','',''),(101131,'admin','Subscriptions',2,0,'vendor/subscriptions','vendor.subscriptions',9.10,1,0,'','','',''),(101132,'admin','Merchant Payment Settings',2,0,'vendor/payment_settings','vendor.payment_settings',10.00,1,0,'','','',''),(101133,'admin','Access Settings',2,0,'vendor/access_settings','vendor.access_settings',10.10,1,0,'','','',''),(101134,'admin','Settings',2,0,'vendor/others','vendor.others',11.00,1,0,'','','',''),(101135,'admin','API Access',2,0,'vendor/api_access','vendor.api_access',12.00,1,0,'','','',''),(101136,'admin','Mobile Settings',2,0,'vendor/mobile_settings','vendor.mobile_settings',12.10,1,0,'','','',''),(101137,'admin','Search Mode',2,0,'vendor/search_mode','vendor.search_mode',13.00,1,0,'','','',''),(101138,'admin','Login &amp; Signup',2,0,'vendor/login_sigup','vendor.login_sigup',14.00,1,0,'','','',''),(101139,'admin','Phone Settings',2,0,'vendor/phone_settings','vendor.phone_settings',15.00,1,0,'','','',''),(101140,'admin','Social Settings',2,0,'vendor/social_settings','vendor.social_settings',16.00,1,0,'','','',''),(101141,'admin','Google Recaptcha',2,0,'vendor/recaptcha_settings','vendor.recaptcha_settings',17.00,1,0,'','','',''),(101142,'admin','Map API Keys',2,0,'vendor/map_keys','vendor.map_keys',18.00,1,0,'','','',''),(101143,'admin','Plan List',16,0,'plans/list','plans.list',1.00,1,1,'plans.create','plans.update','plans.plan_delete',''),(101144,'admin','Subscriber List',16,0,'plans/subscriber_list','plans.subscriber_list',1.10,1,1,'','','',''),(101145,'admin','Subscriptions Bank Deposit',16,0,'plans/bank_deposit','plans.bank_deposit',1.20,1,1,'','plans.bank_deposit_view','plans.bank_deposit_delete',''),(101146,'admin','Plan Features',16,0,'plans/features','plans.features',2.00,1,0,'plans.feature_create','plans.feature_update','plans.feature_delete',''),(101147,'admin','Plans Payment ID',16,0,'plans/payment_list','plans.payment_list',18.00,1,0,'','','',''),(101148,'admin','All Orders',6,0,'order/list','order.list',1.00,1,1,'','','','order.view'),(101149,'admin','Order Settings',6,0,'order/settings','order.settings',2.00,1,1,'','','',''),(101150,'admin','View PDF',6,0,'preprint/pdf','preprint.pdf',3.00,1,0,'','','',''),(101151,'admin','Order Tabs',6,0,'order/settings_tabs','order.settings_tabs',3.00,1,0,'','','',''),(101152,'admin','Order Buttons',6,0,'order/settings_buttons','order.settings_buttons',4.00,1,0,'','','',''),(101153,'admin','Order Tracking',6,0,'order/settings_tracking','order.settings_tracking',5.00,1,0,'','','',''),(101154,'admin','Order Template',6,0,'order/settings_template','order.settings_template',6.00,1,0,'','','',''),(101155,'admin','All Payment',141,0,'payment_gateway/list','payment_gateway.list',1.00,1,1,'payment_gateway.create','payment_gateway.update','payment_gateway.delete',''),(101156,'admin','Bank Deposit',141,0,'payment_gateway/bank_deposit','payment_gateway.bank_deposit',2.00,1,1,'','','payment_gateway.bank_deposit_delete','payment_gateway.bank_deposit_view'),(101157,'admin','Pay on delivery',141,0,'payment_gateway/paydelivery_list','payment_gateway.paydelivery_list',3.00,1,1,'payment_gateway.paydelivery_create','payment_gateway.paydelivery_update','payment_gateway.paydelivery_delete',''),(101158,'admin','Transactions',152,0,'account/transactions','account.transactions',1.00,1,1,'api.commissionadjustment','','',''),(101159,'admin','Merchant Earnings',154,0,'earnings/merchant','earnings.merchant',1.00,1,1,'api.merchantEarningAdjustment','','',''),(101160,'admin','Merchant withdrawals',156,0,'withdrawals/merchant','withdrawals.merchant',1.00,1,1,'','','',''),(101161,'admin','Settings',156,0,'withdrawals/settings','withdrawals.settings',2.00,1,1,'','','',''),(101162,'admin','Template',156,0,'withdrawals/settings_template','withdrawals.settings_template',3.00,1,0,'','','',''),(101163,'admin','Invoice List',421,0,'invoice/list','invoice.list',1.00,1,1,'invoice.create','invoice.update','invoice.delete','invoice.view'),(101164,'admin','Invoice View PDF',421,0,'invoice/pdf','invoice.pdf',2.00,1,0,'','','',''),(101165,'admin','Invoice Cancel',421,0,'invoice/cancel','invoice.cancel',2.10,1,0,'','','',''),(101166,'admin','Bank Deposit',421,0,'invoice/deposit','invoice.deposit',3.00,1,1,'','','invoice.bank_deposit_delete','invoice.bank_deposit_view'),(101167,'admin','Invoice Settings',421,0,'invoice/settings','invoice.settings',4.00,1,1,'','','',''),(101168,'admin','Setting',436,0,'reservation/settings','reservation.settings',1.00,1,1,'','','',''),(101169,'admin','Reservation list',436,0,'reservation/list','reservation.list',2.00,1,1,'reservation.create_reservation','reservation.update_reservation','reservation.reservation_delete','reservation.reservation_overview'),(101170,'admin','Update Booking Status',436,0,'reservation/update_status','reservation.update_status',3.00,1,0,'','','',''),(101171,'admin','Promo List',28,0,'promo/coupon','promo.coupon',1.00,1,1,'promo.coupon_create','promo.coupon_update','promo.coupon_delete',''),(101172,'admin','Email Provider',30,0,'notifications/provider','notifications.provider',1.00,1,1,'notifications.provider_create','notifications.provider_update','notifications.email_provider_delete',''),(101173,'admin','Template List',30,0,'notifications/template','notifications.template',2.00,1,1,'notifications.template_create','notifications.template_update','notifications.template_delete',''),(101174,'admin','Email Logs',30,0,'notifications/email_logs','notifications.email_logs',2.00,1,1,'','','notifications.delete_email',''),(101175,'admin','Email Clear',30,0,'notifications/clear_email','notifications.clear_email',2.00,1,0,'','','',''),(101176,'admin','Banner List',399,0,'marketing/banner_list','marketing.banner_list',1.00,1,1,'marketing.banner_create','marketing.banner_update','marketing.banner_delete',''),(101177,'admin','Featured Items',399,0,'marketing/featured_items','marketing.featured_items',1.10,1,1,'','','',''),(101178,'admin','Suggested Items',399,0,'marketing/suggested_items','marketing.suggested_items',1.20,1,1,'','','',''),(101179,'admin','Push notification',399,0,'marketing/notification','marketing.notification',2.00,1,1,'marketing.push_new','','marketing.notification_delete',''),(101180,'admin','Customer list',37,0,'buyer/customers','buyer.customers',1.00,1,1,'buyer.customer_create','buyer.customer_update','buyer.customer_delete',''),(101181,'admin','Customer Address',37,0,'buyer/address','buyer.address',1.00,1,0,'buyer.address_create','buyer.address_update','buyer.address_delete',''),(101182,'admin','Order History',37,0,'buyer/order_history','buyer.order_history',2.00,1,0,'','','',''),(101183,'admin','Review List',37,0,'buyer/review_list','buyer.review_list',3.00,1,1,'','buyer.review_update','buyer.review_delete',''),(101184,'admin','Email Subscribers',37,0,'buyer/email_subscriber','buyer.email_subscriber',4.00,1,1,'','','buyer.esubscriber_delete',''),(101185,'admin','Real time application',160,0,'thirdparty/realtime','thirdparty.realtime',1.00,1,1,'','','',''),(101186,'admin','Web push notification',160,0,'thirdparty/webpush','thirdparty.webpush',2.00,1,1,'','','',''),(101187,'admin','Firebase Configuration',160,0,'thirdparty/firebase','thirdparty.firebase',3.00,1,1,'','','',''),(101188,'admin','Whatsapp Configuration',160,0,'thirdparty/whatsapp_settings','thirdparty.whatsapp_settings',3.00,1,1,'','','',''),(101189,'admin','SMS Provider List',46,0,'sms/settings','sms.settings',1.00,1,1,'sms.provider_create','sms.provider_update','sms.provider_delete',''),(101190,'admin','SMS Logs',46,0,'sms/logs','sms.logs',2.00,1,1,'','','sms.delete',''),(101191,'admin','SMS Clear',46,0,'sms/clear_smslogs','sms.clear_smslogs',3.00,1,0,'','','',''),(101192,'admin','Settings',402,0,'driver/settings','driver.settings',1.00,1,1,'','','',''),(101193,'admin','API Access',402,0,'driver/api_access','driver.api_access',1.10,1,0,'','','',''),(101194,'admin','Delete API Keys',402,0,'driver/delete_apikeys','driver.delete_apikeys',1.20,1,0,'','','',''),(101195,'admin','Push notifications',402,0,'driver/push_notifications','driver.push_notifications',2.00,1,0,'','','',''),(101196,'admin','Firebase Settings',402,0,'driver/firebase_settings','driver.firebase_settings',3.00,1,0,'','','',''),(101197,'admin','Signup Settings',402,0,'driver/signup_settings','driver.signup_settings',4.00,1,0,'','','',''),(101198,'admin','Cashout settings',402,0,'driver/withdrawal_settings','driver.withdrawal_settings',5.00,1,0,'','','',''),(101199,'admin','Order Status',402,0,'driver/order_status','driver.order_status',6.00,1,0,'','','',''),(101200,'admin','Order Tabs',402,0,'driver/settings_tabs','driver.settings_tabs',7.00,1,0,'','','',''),(101201,'admin','Pages',402,0,'driver/settings_page','driver.settings_page',8.00,1,0,'','','',''),(101202,'admin','Cron jobs',402,0,'driver/cronjobs','driver.cronjobs',9.00,1,0,'','','',''),(101203,'admin','Cashout list',402,0,'driver/cashout_list','driver.cashout_list',10.00,1,1,'','','',''),(101204,'admin','Collect cash',402,0,'driver/collect_cash','driver.collect_cash',11.00,1,1,'driver.collect_cash_add','driver.collect_transactions','driver.collect_cash_void',''),(101205,'admin','Driver list',402,0,'driver/list','driver.list',12.00,1,1,'driver.add','driver.update','driver.delete','driver.overview'),(101206,'admin','License',402,0,'driver/license','driver.license',12.10,1,0,'','','',''),(101207,'admin','Vehicle',402,0,'driver/vehicle','driver.vehicle',12.20,1,0,'','','',''),(101208,'admin','Bank Information',402,0,'driver/bank_info','driver.bank_info',12.30,1,0,'','','',''),(101209,'admin','Wallet',402,0,'driver/wallet','driver.wallet',12.40,1,0,'','','',''),(101210,'admin','Cashout Transactions',402,0,'driver/cashout_transactions','driver.cashout_transactions',12.40,1,0,'','','',''),(101211,'admin','Delivery transactions',402,0,'driver/delivery_transactions','driver.delivery_transactions',12.50,1,0,'','','',''),(101212,'admin','Order tips',402,0,'driver/order_tips','driver.order_tips',12.60,1,0,'','','',''),(101213,'admin','Time logs',402,0,'driver/time_logs','driver.time_logs',12.70,1,0,'','','',''),(101214,'admin','Reviews',402,0,'driver/review_ratings','driver.review_ratings',12.80,1,0,'','','',''),(101215,'admin','Car registration',402,0,'driver/carlist','driver.carlist',13.00,1,1,'driver.addcar','driver.update_car','driver.car_delete',''),(101216,'admin','Groups',402,0,'driver/group','driver.group',14.00,1,1,'driver.addgroup','driver.group_update','.group_delete',''),(101217,'admin','Employee Schedule',402,0,'driver/schedule','driver.schedule',15.00,1,1,'schedule.add','schedule.update','schedule.delete','driver.schedule_bulk'),(101218,'admin','Shifts Schedule',402,0,'driver/shift_list','driver.shift_list',16.00,1,1,'driver.addshift','driver.shift_update','driver.shift_delete','driver.shift_bulkupload'),(101219,'admin','Reviews',402,0,'driver/review_list','driver.review_list',17.00,1,1,'','driver.review_update','driver.review_delete',''),(101220,'admin','Map View',402,0,'driver/mapview','driver.mapview',18.00,1,1,'','','',''),(101221,'admin','Settings',415,0,'mobilemerchant/api_access','mobilemerchant.api_access',1.00,1,1,'','','',''),(101222,'admin','Delete API Keys',415,0,'mobilemerchant/delete_apikeys','mobilemerchant.delete_apikeys',2.00,1,0,'','','',''),(101223,'admin','Settings',415,0,'mobilemerchant/settings','mobilemerchant.settings',3.00,1,0,'','','',''),(101224,'admin','Push Notifications',415,0,'mobilemerchant/push_notifications','mobilemerchant.push_notifications',4.00,1,0,'','','',''),(101225,'admin','Pages',415,0,'mobilemerchant/settings_page','mobilemerchant.settings_page',5.00,1,0,'','','',''),(101226,'admin','Settings',62705,0,'tableside/api_access','tableside.api_access',1.00,1,1,'','','',''),(101227,'admin','Settings',64272,0,'kitchen/settings','kitchen.settings',1.00,1,1,'','','',''),(101228,'admin','API Access',64272,0,'kitchen/api_access','kitchen.api_access',2.00,1,0,'','','',''),(101229,'admin','Settings',460,0,'points/settings','points.settings',1.00,1,1,'','','',''),(101230,'admin','Redeem thresholds',460,0,'points/thresholds','points.thresholds',2.00,1,1,'','','',''),(101231,'admin','Monthly thresholds',460,0,'points/monthly_thresholds','points.monthly_thresholds',2.10,1,1,'','','',''),(101232,'admin','User Reward Points',460,0,'points/rewards','points.rewards',3.00,1,1,'','','',''),(101233,'admin','Transactions',460,0,'points/alltransactions','points.alltransactions',4.00,1,1,'','','',''),(101234,'admin','Settings',35816,0,'digitalwallet/settings','digitalwallet.settings',1.00,1,1,'','','',''),(101235,'admin','Bonus Funds',35816,0,'digitalwallet/bonus_funds','digitalwallet.bonus_funds',2.00,1,1,'','','',''),(101236,'admin','Transactions',35816,0,'digitalwallet/transactions','digitalwallet.transactions',3.00,1,1,'','','',''),(101237,'admin','Settings',17642,0,'multicurrency/settings','multicurrency.settings',1.00,1,1,'','','',''),(101238,'admin','Exchange Rates',17642,0,'multicurrency/exchangerate','multicurrency.exchangerate',1.00,1,1,'','','',''),(101239,'admin','Chats',36414,0,'communication/chats','communication.chats',1.00,1,1,'','','',''),(101240,'admin','Settings',36414,0,'communication/settings','communication.settings',2.00,1,1,'','','',''),(101241,'admin','Merchant Registration',5681,0,'reports/merchant_registration','reports.merchant_registration',1.00,1,1,'','','',''),(101242,'admin','Membership Payment',5681,0,'reports/merchant_payment','reports.merchant_payment',2.00,1,1,'','','',''),(101243,'admin','Merchant Sales',5681,0,'reports/merchant_sales','reports.merchant_sales',3.00,1,1,'','','',''),(101244,'admin','Order earnings',5681,0,'reports/order_earnings','reports.order_earnings',4.00,1,1,'','','',''),(101245,'admin','Refund Report',5681,0,'reports/refund','reports.refund',5.00,1,1,'','','',''),(101246,'admin','Driver Earnings',5681,0,'reports/driver_earnings','reports.driver_earnings',6.00,1,1,'','','',''),(101247,'admin','Driver wallet',5681,0,'reports/driver_wallet','reports.driver_wallet',7.00,1,1,'','','',''),(101248,'admin','All User',5,0,'user/list','user.list',1.00,1,1,'user.create','user.update','user.delete',''),(101249,'admin','Change Password',5,0,'user/change_password','user.change_password',2.00,1,0,'','','',''),(101250,'admin','All Roles',5,0,'user/roles_list','user.roles_list',3.00,1,1,'user.role_create','user.role_update','user.role_delete',''),(101251,'admin','Printer List',419,0,'printer/all','printer.all',1.00,1,1,'printer.create','printer.update','printer.delete',''),(101252,'admin','Print Logs',419,0,'printer/logs','printer.logs',2.00,1,1,'','','printer.print_delete','printer.print_view'),(101253,'admin','Clear Print Logs',419,0,'printer/clear_printlogs','printer.clear_printlogs',3.00,1,0,'','','',''),(101254,'admin','Theme',368,0,'theme/changer','theme.changer',1.00,1,1,'','','',''),(101255,'admin','SEO Setup',368,0,'website/seosetup','website.seosetup',1.10,1,1,'','','',''),(101256,'admin','XML Sitemap',368,0,'website/sitemap','website.sitemap',1.20,1,1,'','','',''),(101257,'admin','Theme Settings',368,0,'theme/settings','theme.settings',2.00,1,0,'','','',''),(101258,'admin','Menu',368,0,'theme/menu','theme.menu',3.00,1,0,'','','',''),(101259,'admin','Theme Layout',368,0,'theme/layout','theme.layout',4.00,1,0,'','','',''),(101260,'admin','Upload File',69516,0,'uploadfiles/file','uploadfiles.file',1.00,1,1,'','uploadfiles.getMediaSeleted','uploadfiles.deleteFiles','uploadfiles.getMedia'),(101261,'admin','Addon Install',385,0,'addon/install','addon.install',1.00,1,0,'','','',''),(101262,'admin','Fixed database',433,0,'utilities/fixed_database','utilities.fixed_database',1.00,1,1,'','','',''),(101263,'admin','Clean database',433,0,'utilities/clean_database','utilities.clean_database',2.00,1,1,'','','',''),(101264,'admin','Cron Jobs',433,0,'utilities/cronjobs','utilities.cronjobs',3.00,1,1,'','','',''),(101265,'admin','Migration Tools',433,0,'utilities/migration_tools','utilities.migration_tools',4.00,1,1,'','','',''),(101266,'admin','Clear Cache',433,0,'utilities/clear_cache','utilities.clear_cache',5.00,1,1,'','','',''),(101267,'admin','Cuisine',20,0,'attributes/cuisine_list','attributes.cuisine_list',1.00,1,1,'attributes.cuisine_create','attributes.cuisine_update','attributes.cuisine_delete','attributes.cuisine_sort'),(101268,'admin','Dishes',20,0,'attributes/dish_list','attributes.dish_list',2.00,1,1,'attributes.dish_create','attributes.dish_update','attributes.dishes_delete',''),(101269,'admin','Allergens',20,0,'attributes/allergens_list','attributes.allergens_list',2.10,1,1,'attributes.allergens_create','attributes.allergens_update','attributes.allergens_delete',''),(101270,'admin','Tags',20,0,'attributes/tag_list','attributes.tag_list',3.00,1,1,'attributes.tags_create','attributes.tags_update','attributes.tags_delete',''),(101271,'admin','Order Status',20,0,'attributes/order_status','attributes.order_status',3.10,1,1,'attributes.status_create','attributes.status_update','attributes.status_delete',''),(101272,'admin','Order Status Actions',20,0,'attributes/status_actions','attributes.status_actions',3.20,1,0,'attributes.create_action','attributes.update_action','attributes.status_action_delete',''),(101273,'admin','Currency',20,0,'attributes/currency','attributes.currency',4.00,1,1,'attributes.currency_create','attributes.currency_update','attributes.currency_delete',''),(101274,'admin','Manage Location',20,0,'location/country_list','location.country_list',5.00,1,1,'location.country_create','location.country_update','location.delete_country',''),(101275,'admin','State List',20,0,'location/state_list','location.state_list',6.00,1,0,'location.state_create','location.state_update','location.state_delete',''),(101276,'admin','City List',20,0,'location/city_list','location.city_list',7.00,1,0,'location.city_create','location.city_update','location.city_delete',''),(101277,'admin','Area List',20,0,'location/area_list','location.area_list',8.00,1,0,'location.area_create','location.area_update','location.area_delete',''),(101278,'admin','Zones',20,0,'attributes/zone_list','attributes.zone_list',9.00,1,1,'attributes.zone_create','attributes.zone_update','attributes.zone_delete',''),(101279,'admin','Featured Locations',20,0,'attributes/featured_loc','attributes.featured_loc',10.00,1,1,'attributes.featured_loc_create','attributes.featured_loc_update','attributes.featured_loc_delete',''),(101280,'admin','Pages',20,0,'attributes/pages_list','attributes.pages_list',10.00,1,1,'attributes.pages_create','attributes.page_update','attributes.pages_delete',''),(101281,'admin','Languages',20,0,'attributes/language_list','attributes.language_list',11.00,1,1,'attributes.language_create','attributes.language_update','attributes.language_delete',''),(101282,'admin','Language Settings',20,0,'attributes/language_settings','attributes.language_settings',12.00,1,0,'','','',''),(101283,'admin','Language Import',20,0,'attributes/language_import','attributes.language_import',13.00,1,0,'','','',''),(101284,'admin','Language Translations',20,0,'attributes/language_translation','attributes.language_translation',14.00,1,0,'','','',''),(101285,'admin','Language Export',20,0,'attributes/language_export','attributes.language_export',15.00,1,0,'','','',''),(101286,'admin','Status Management',20,0,'attributes/status_mgt','attributes.status_mgt',16.00,1,1,'attributes.status_mgt_create','attributes.status_mgt_update','attributes.status_mgt_delete',''),(101287,'admin','Order Type',20,0,'attributes/services_list','attributes.services_list',17.00,1,1,'attributes.services_create','attributes.services_update','attributes.services_delete',''),(101288,'admin','Merchant Type',20,0,'attributes/merchant_type_list','attributes.merchant_type_list',18.00,1,1,'attributes.merchant_type_create','attributes.merchant_type_update','attributes.merchant_type_delete',''),(101289,'admin','Rejection List',20,0,'attributes/rejection_list','attributes.rejection_list',19.00,1,1,'attributes.rejection_create','attributes.rejection_update','attributes.rejection_reason_delete',''),(101290,'admin','Pause Order list',20,0,'attributes/pause_reason_list','attributes.pause_reason_list',19.00,1,1,'attributes.pause_create','attributes.pause_reason_update','attributes.pause_reason_delete',''),(101291,'admin','Status Actions',20,0,'attributes/actions_list','attributes.actions_list',20.00,1,1,'attributes.action_create','attributes.action_update','attributes.action_delete',''),(101292,'admin','Tip List',20,0,'attributes/tip_list','attributes.tip_list',21.00,1,1,'attributes.tips_create','attributes.tips_update','attributes.tips_delete',''),(101293,'admin','Booking Cancellation',20,0,'attributes/booking_cancel_list','attributes.booking_cancel_list',22.00,1,1,'attributes.booking_cancellation_create','attributes.booking_cancellation_update','attributes.booking_cancellation_delete',''),(101294,'admin','Cookie Preferences',20,0,'attributes/cookie_preferences','attributes.cookie_preferences',23.00,1,1,'attributes.cookie_preferences_create','attributes.cookie_preferences_update','attributes.cookie_preferences_delete',''),(101295,'admin','Vehicle maker',20,0,'attributes/vehicle','attributes.vehicle',24.00,1,1,'attributes.vehicle_maker_create','attributes.vehicle_maker_update','attributes.vehicle_maker_delete',''),(101296,'admin','Delivery Order Help',20,0,'attributes/delivery_order_help','attributes.delivery_order_help',25.00,1,1,'attributes.delivery_order_help_create','attributes.delivery_order_help_update','attributes.delivery_order_help_delete',''),(101297,'admin','Delivery Decline Reason',20,0,'attributes/delivery_decline_reason','attributes.delivery_decline_reason',26.00,1,1,'attributes.delivery_decline_reason_create','attributes.delivery_decline_reason_update','attributes.delivery_decline_reason_delete',''),(101298,'admin','Call Staff Menu',20,0,'attributes/call_staff_menu','attributes.call_staff_menu',27.00,1,1,'attributes.call_staff_menu_create','attributes.call_staff_menu_update','attributes.call_staff_menu_delete',''),(101299,'merchant','Order Summary',60,0,'merchant/dashboard/order_summary','merchant.dashboard.order_summary',1.00,1,0,'','','',''),(101300,'merchant','Week Sales',60,0,'merchant/dashboard/week_sales','merchant.dashboard.week_sales',2.00,1,0,'','','',''),(101301,'merchant','Daily statistic',60,0,'merchant/dashboard/today_summary','merchant.dashboard.today_summary',2.00,1,0,'','','',''),(101302,'merchant','Last 5 Orders',60,0,'merchant/dashboard/last_5_orders','merchant.dashboard.last_5_orders',3.00,1,0,'','','',''),(101303,'merchant','Popular items',60,0,'merchant/dashboard/popular_items','merchant.dashboard.popular_items',3.00,1,0,'','','',''),(101304,'merchant','Sales overview',60,0,'merchant/dashboard/sales_overview','merchant.dashboard.sales_overview',4.00,1,0,'','','',''),(101305,'merchant','Top Customers',60,0,'merchant/dashboard/top_customer','merchant.dashboard.top_customer',5.00,1,0,'','','',''),(101306,'merchant','Overview of Review',60,0,'merchant/dashboard/review_overview','merchant.dashboard.review_overview',6.00,1,0,'','','',''),(101307,'merchant','Merchant Information',61,0,'merchant/edit','merchant.edit',1.00,1,1,'','','',''),(101308,'merchant','Login information',61,0,'merchant/login','merchant.login',2.00,1,0,'','','',''),(101309,'merchant','Address',61,0,'merchant/address','merchant.address',3.00,1,0,'','','',''),(101310,'merchant','Payment history',61,0,'merchant/payment_history','merchant.payment_history',3.10,1,0,'','','',''),(101311,'merchant','Settings',61,0,'merchant/settings','merchant.settings',4.00,1,1,'','','',''),(101312,'merchant','Time Zone',61,0,'merchant/timezone','merchant.timezone',4.10,1,0,'','','',''),(101313,'merchant','Store Hours',61,0,'merchant/store_hours','merchant.store_hours',5.00,1,0,'merchant.store_hours_create','merchant.store_hours_update','merchant.store_hours_delete',''),(101314,'merchant','Taxes',61,0,'merchant/taxes','merchant.taxes',6.00,1,0,'','','',''),(101315,'merchant','SEO',61,0,'merchant/seo','merchant.seo',6.10,1,0,'','','',''),(101316,'merchant','Kitchen Workload',61,0,'merchant/kitchen_settings','merchant.kitchen_settings',6.11,1,0,'','','',''),(101317,'merchant','Location Management',61,0,'merchant/location_management','merchant.location_management',6.20,1,0,'','','',''),(101318,'merchant','Delivery Management',61,0,'merchant/delivery_management','merchant.delivery_management',6.30,1,0,'','','',''),(101319,'merchant','Time Estimates Management',61,0,'merchant/estimate_management','merchant.estimate_management',6.40,1,0,'','','',''),(101320,'merchant','Zone',61,0,'merchant/zone_settings','merchant.zone_settings',6.20,1,0,'','','',''),(101321,'merchant','Search Mode',61,0,'merchant/search_settings','merchant.search_settings',7.00,1,0,'','','',''),(101322,'merchant','Login &amp; Signup',61,0,'merchant/login_sigup','merchant.login_sigup',8.00,1,0,'','','',''),(101323,'merchant','Phone Settings',61,0,'merchant/phone_settings','merchant.phone_settings',9.00,1,0,'','','',''),(101324,'merchant','Social Settings',61,0,'merchant/social_settings','merchant.social_settings',10.00,1,0,'','','',''),(101325,'merchant','Google Recaptcha',61,0,'merchant/recaptcha_settings','merchant.recaptcha_settings',11.00,1,0,'','','',''),(101326,'merchant','Map API Keys',61,0,'merchant/map_keys','merchant.map_keys',12.00,1,0,'','','',''),(101327,'merchant','Notification Settings',61,0,'merchant/notification_settings','merchant.notification_settings',13.00,1,0,'','','',''),(101328,'merchant','Orders Settings',61,0,'merchant/orders_settings','merchant.orders_settings',14.00,1,0,'','','',''),(101329,'merchant','Menu Options',61,0,'merchant/menu_options','merchant.menu_options',15.00,1,0,'','','',''),(101330,'merchant','Mobile Page',61,0,'merchant/mobilepage','merchant.mobilepage',16.00,1,0,'','','',''),(101331,'merchant','Order limit',61,0,'merchant/time_management','merchant.time_management',17.00,1,1,'merchant.time_management_create','merchant.time_management_update','merchant.time_mgt_delete',''),(101332,'merchant','Banner',61,0,'merchant/banner','merchant.banner',18.00,1,1,'merchant.banner_create','merchant.banner_update','merchant.banner_delete',''),(101333,'merchant','Pages',61,0,'merchant/pages_list','merchant.pages_list',19.00,1,1,'merchant.pages_create','merchant.page_update','merchant.pages_delete',''),(101334,'merchant','Menu',61,0,'merchant/pages_menu','merchant.pages_menu',20.00,1,1,'','','',''),(101335,'merchant','View Order',64,0,'orders/view','orders.view',0.00,1,0,'','','',''),(101336,'merchant','New Orders',64,0,'orders/new','orders.new',1.00,1,1,'','','',''),(101337,'merchant','Orders Processing',64,0,'orders/processing','orders.processing',2.00,1,1,'','','',''),(101338,'merchant','Orders Ready',64,0,'orders/ready','orders.ready',3.00,1,1,'','','',''),(101339,'merchant','Completed',64,0,'orders/completed','orders.completed',4.00,1,1,'','','',''),(101340,'merchant','Scheduled',64,0,'orders/scheduled','orders.scheduled',5.00,1,1,'','','',''),(101341,'merchant','All Orders',64,0,'orders/history','orders.history',6.00,1,1,'','','',''),(101342,'merchant','Create Order',171,0,'pos/create_order','pos.create_order',1.00,1,1,'pos.createorder','','',''),(101343,'merchant','Order History',171,0,'pos/order_history','pos.order_history',2.00,1,1,'pos.orderhistory','','',''),(101344,'merchant','Cashout list',21495,0,'merchantdriver/cashout_list','merchantdriver.cashout_list',1.00,1,1,'','','',''),(101345,'merchant','Collect cash',21495,0,'merchantdriver/collect_cash','merchantdriver.collect_cash',2.00,1,1,'merchantdriver.collect_cash_add','','merchantdriver.collect_cash_delete','merchantdriver.collect_transactions'),(101346,'merchant','Driver list',21495,0,'merchantdriver/list','merchantdriver.list',3.00,1,1,'merchantdriver.add','merchantdriver.update','merchantdriver.delete','merchantdriver.overview'),(101347,'merchant','Driver License',21495,0,'merchantdriver/license','merchantdriver.license',3.10,1,0,'','','',''),(101348,'merchant','Driver Vehicle',21495,0,'merchantdriver/vehicle','merchantdriver.vehicle',3.20,1,0,'','','',''),(101349,'merchant','Driver Bank Information',21495,0,'merchantdriver/bank_info','merchantdriver.bank_info',3.30,1,0,'','','',''),(101350,'merchant','Driver Wallet',21495,0,'merchantdriver/wallet','merchantdriver.wallet',3.40,1,0,'','','',''),(101351,'merchant','Driver Cashout',21495,0,'merchantdriver/cashout_transactions','merchantdriver.cashout_transactions',3.50,1,0,'','','',''),(101352,'merchant','Driver Delivery Transactions',21495,0,'merchantdriver/delivery_transactions','merchantdriver.delivery_transactions',3.60,1,0,'','','',''),(101353,'merchant','Driver Order Tips',21495,0,'merchantdriver/order_tips','merchantdriver.order_tips',3.70,1,0,'','','',''),(101354,'merchant','Driver Time Logs',21495,0,'merchantdriver/time_logs','merchantdriver.time_logs',3.80,1,0,'','','',''),(101355,'merchant','Driver Review',21495,0,'merchantdriver/review_ratings','merchantdriver.review_ratings',3.90,1,0,'','','',''),(101356,'merchant','Car registration',21495,0,'merchantdriver/carlist','merchantdriver.carlist',4.00,1,1,'merchantdriver.addcar','merchantdriver.update_car','merchantdriver.delete_car',''),(101357,'merchant','Groups',21495,0,'merchantdriver/group_list','merchantdriver.group_list',5.00,1,1,'merchantdriver.addgroup','merchantdriver.group_update','merchantdriver.group_delete',''),(101358,'merchant','Zones',21495,0,'merchantdriver/zone_list','merchantdriver.zone_list',6.00,1,1,'merchantdriver.zone_create','merchantdriver.zone_update','merchantdriver.zone_delete',''),(101359,'merchant','Employee Schedule',21495,0,'merchantdriver/schedule_list','merchantdriver.schedule_list',7.00,1,1,'merchantdriver.schedule_add','merchantdriver.schedule_update','merchantdriver.schedule_delete','merchantdriver.schedule_bulk'),(101360,'merchant','Shifts Schedule',21495,0,'merchantdriver/shift_list','merchantdriver.shift_list',8.00,1,1,'merchantdriver.shift_add','merchantdriver.shift_update','merchantdriver.shift_delete','merchantdriver.shift_bulkupload'),(101361,'merchant','Reviews',21495,0,'merchantdriver/review_list','merchantdriver.review_list',9.00,1,1,'merchantdriver.review_create','merchantdriver.review_update','merchantdriver.review_delete',''),(101362,'merchant','Loyalty Points',45860,0,'merchant/loyalty_points','merchant.loyalty_points',1.00,1,1,'','','',''),(101363,'merchant','Suggested Items',45860,0,'merchant/suggested_items','merchant.suggested_items',2.00,1,1,'','','',''),(101364,'merchant','Chats',38314,0,'communications/chats','communications.chats',1.00,1,1,'communications.framechat','','',''),(101365,'merchant','List',428,0,'booking/list','booking.list',1.00,1,1,'booking.create_reservation','booking.update_reservation','booking.reservation_delete','booking.reservation_overview'),(101366,'merchant','Booking Update Status',428,0,'booking/update_status','booking.update_status',2.00,1,0,'','','',''),(101367,'merchant','Settings',428,0,'booking/settings','booking.settings',3.00,1,1,'','','',''),(101368,'merchant','Shifts',428,0,'booking/shifts','booking.shifts',4.00,1,1,'booking.create_shift','booking.update_shift','booking.shift_delete',''),(101369,'merchant','Room',428,0,'booking/room','booking.room',5.00,1,1,'booking.create_room','booking.update_room','booking.room_delete',''),(101370,'merchant','Tables',428,0,'booking/tables','booking.tables',6.00,1,1,'booking.create_table','booking.update_tables','booking.tables_delete',''),(101371,'merchant','Generate Table',428,0,'booking/generate_table','booking.generate_table',6.10,1,0,'','','',''),(101372,'merchant','Tableside QrCode Configuration',428,0,'booking/tableside_config','booking.tableside_config',6.20,1,0,'','','',''),(101373,'merchant','View Table QrCode',428,0,'booking/table_view','booking.table_view',6.30,1,0,'','','',''),(101374,'merchant','Size',70,0,'attrmerchant/size_list','attrmerchant.size_list',1.00,1,1,'attrmerchant.size_create','attrmerchant.size_update','attrmerchant.size_delete',''),(101375,'merchant','Ingredients',70,0,'attrmerchant/ingredients_list','attrmerchant.ingredients_list',2.00,1,1,'attrmerchant.ingredients_create','attrmerchant.ingredients_update','attrmerchant.ingredients_delete',''),(101376,'merchant','Cooking Reference',70,0,'attrmerchant/cookingref_list','attrmerchant.cookingref_list',3.00,1,1,'attrmerchant.cookingref_create','attrmerchant.cookingref_update','attrmerchant.cookingref_delete',''),(101377,'merchant','Category',75,0,'food/category','food.category',1.00,1,1,'food.category_create','food.category_update','food.category_delete','food.category_sort'),(101378,'merchant','Category Availability',75,0,'food/category_availability','food.category_availability',2.00,1,0,'','','',''),(101379,'merchant','Addon Category',75,0,'food/addoncategory','food.addoncategory',3.00,1,1,'food.addoncategory_create','food.addoncategory_update','food.addoncategory_delete','food.addoncategory_sort'),(101380,'merchant','Addon Items',75,0,'food/addonitem','food.addonitem',5.00,1,1,'food.addonitem_create','food.addonitem_update','food.addonitem_delete','food.addonitem_sort'),(101381,'merchant','Items',75,0,'food/items','food.items',7.00,1,1,'food.item_create','food.item_update','food.item_delete','food.item_sort'),(101382,'merchant','Items Availability',75,0,'food/items_availability','food.items_availability',7.10,1,1,'','','',''),(101383,'merchant','Bulk Import',75,0,'food/bulkimport','food.bulkimport',7.01,1,0,'','','',''),(101384,'merchant','Item Duplicate',75,0,'food/item_duplicate','food.item_duplicate',7.02,1,0,'','','',''),(101385,'merchant','Items price',75,0,'food/item_price','food.item_price',7.10,1,0,'food.itemprice_create','food.itemprice_update','food.itemprice_delete',''),(101386,'merchant','Items addon',75,0,'food/item_addon','food.item_addon',7.20,1,0,'food.itemaddon_create','food.itemaddon_update','food.itemaddon_delete','food.itemaddon_sort'),(101387,'merchant','Items attributes',75,0,'food/item_attributes','food.item_attributes',7.30,1,0,'','','',''),(101388,'merchant','Tax',75,0,'food/item_tax','food.item_tax',7.30,1,0,'','','',''),(101389,'merchant','Items availability',75,0,'food/item_availability','food.item_availability',7.40,1,0,'','','',''),(101390,'merchant','Items inventory',75,0,'food/item_inventory','food.item_inventory',7.50,1,0,'','','',''),(101391,'merchant','Items promo',75,0,'food/item_promos','food.item_promos',7.60,1,0,'food.itempromo_create','food.itempromo_update','food.itempromo_delete',''),(101392,'merchant','Items gallery',75,0,'food/item_gallery','food.item_gallery',7.70,1,0,'','','',''),(101393,'merchant','Items seo',75,0,'food/item_seo','food.item_seo',7.80,1,0,'','','',''),(101394,'merchant','Delivery Settings',80,0,'services/delivery_settings','services.delivery_settings',1.00,1,1,'','','',''),(101395,'merchant','Fixed Charge',80,0,'services/fixed_charge','services.fixed_charge',3.00,1,0,'','','',''),(101396,'merchant','Charges Table',80,0,'services/charges_table','services.charges_table',4.00,1,0,'services.chargestable_create','services.chargestable_update','services.chargestable_delete',''),(101397,'merchant','Pickup',80,0,'services/settings_pickup','services.settings_pickup',5.00,1,1,'','','',''),(101398,'merchant','Pickup Instructions',80,0,'services/pickup_instructions','services.pickup_instructions',6.00,1,0,'','','',''),(101399,'merchant','Dinein',80,0,'services/settings_dinein','services.settings_dinein',7.00,1,1,'','','',''),(101400,'merchant','Dinein Instructions',80,0,'services/dinein_instructions','services.dinein_instructions',8.00,1,0,'','','',''),(101401,'merchant','All Payments',143,0,'merchant/payment_list','merchant.payment_list',1.00,1,1,'merchant.payment_create','merchant.payment_update','merchant.payment_delete',''),(101402,'merchant','Bank Deposit',143,0,'merchant/bank_deposit','merchant.bank_deposit',2.00,1,1,'','invoice.bank_deposit_view','invoice.bank_deposit_delete',''),(101403,'merchant','Pay on delivery',143,0,'merchant/payondelivery','merchant.payondelivery',3.00,1,1,'','','',''),(101404,'merchant','Coupon',82,0,'merchant/coupon','merchant.coupon',1.00,1,1,'merchant.coupon_create','merchant.coupon_update','merchant.coupon_delete',''),(101405,'merchant','Offers',82,0,'merchant/offers','merchant.offers',2.00,1,1,'merchant.offer_create','merchant.offer_update','merchant.offer_delete',''),(101406,'merchant','Gallery',85,0,'images/gallery','images.gallery',1.00,1,1,'','','',''),(101407,'merchant','Media Library',85,0,'images/media_library','images.media_library',2.00,1,1,'','','',''),(101408,'merchant','Get Media Files',85,0,'upload/getMedia','upload.getMedia',3.00,1,0,'','','',''),(101409,'merchant','Get Media Files Selected',85,0,'upload/getMediaSeleted','upload.getMediaSeleted',4.00,1,0,'','','',''),(101410,'merchant','Upload Media Files',85,0,'upload/file','upload.file',5.00,1,0,'','','',''),(101411,'merchant','Delete media files',85,0,'upload/deleteFiles','upload.deleteFiles',6.00,1,0,'','','',''),(101412,'merchant','Statement',87,0,'commission/statement','commission.statement',1.00,1,1,'','','',''),(101413,'merchant','Withdrawals',87,0,'commission/withdrawals','commission.withdrawals',1.00,1,1,'','','',''),(101414,'merchant','List',423,0,'invoicemerchant/list','invoicemerchant.list',1.00,1,1,'','','',''),(101415,'merchant','Invoice View',423,0,'invoicemerchant/view','invoicemerchant.view',2.00,1,0,'','','',''),(101416,'merchant','Upload Deposit',423,0,'invoicemerchant/uploaddeposit','invoicemerchant.uploaddeposit',3.00,1,0,'','','',''),(101417,'merchant','View PDF',423,0,'invoicemerchant/pdf','invoicemerchant.pdf',4.00,1,0,'','','',''),(101418,'merchant','Customer list',94,0,'customer/list','customer.list',1.00,1,1,'','','','customer.view'),(101419,'merchant','Address',94,0,'customer/addresses','customer.addresses',2.00,1,0,'customer.address_create','customer.address_update','customer.address_delete',''),(101420,'merchant','Order History',94,0,'customer/order_history','customer.order_history',3.00,1,0,'','','',''),(101421,'merchant','Print PDF',94,0,'print/pdf','print.pdf',4.00,1,0,'','','',''),(101422,'merchant','Review List',94,0,'customer/reviews','customer.reviews',5.00,1,1,'customer.review_reply','customer.review_reply_update','customer.customerreview_delete',''),(101423,'merchant','Email Subscribers',94,0,'customer/email_subscriber','customer.email_subscriber',6.00,1,1,'','','customer.esubscriber_delete',''),(101424,'merchant','All User',97,0,'usermerchant/user_list','usermerchant.user_list',1.00,1,1,'usermerchant.user_create','usermerchant.user_update','usermerchant.user_delete',''),(101425,'merchant','All Roles',97,0,'usermerchant/role_list','usermerchant.role_list',2.00,1,1,'usermerchant.role_create','usermerchant.role_update','usermerchant.role_delete',''),(101426,'merchant','Sales Report',100,0,'merchantreport/sales','merchantreport.sales',1.00,1,1,'','','',''),(101427,'merchant','Daily Sales Report',100,0,'merchantreport/dailysalesreport','merchantreport.dailysalesreport',1.10,1,1,'','','',''),(101428,'merchant','Sales Summary',100,0,'merchantreport/summary','merchantreport.summary',2.00,1,1,'','','',''),(101429,'merchant','Sales Chart',100,0,'merchantreport/summary','merchantreport.summary_chart',2.10,1,0,'','','',''),(101430,'merchant','Refund Report',100,0,'merchantreport/refund','merchantreport.refund',3.00,1,1,'','','',''),(101431,'merchant','All printers',417,0,'printers/all','printers.all',1.00,1,1,'printers.create','printers.update','printers.delete',''),(101432,'merchant','Printer logs',417,0,'printers/logs','printers.logs',2.00,1,1,'printers.print_view','printers.print_delete','printers.clear_printlogs',''),(101433,'merchant','Suppliers',127,0,'supplier/list','supplier.list',1.00,1,1,'supplier.create','supplier.update','supplier.delete','');
/*!40000 ALTER TABLE `st_menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant`
--

DROP TABLE IF EXISTS `st_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant` (
  `merchant_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_uuid` varchar(100) NOT NULL DEFAULT '',
  `restaurant_slug` varchar(255) NOT NULL DEFAULT '',
  `restaurant_name` varchar(255) NOT NULL DEFAULT '',
  `restaurant_phone` varchar(100) NOT NULL DEFAULT '',
  `contact_name` varchar(255) NOT NULL DEFAULT '',
  `contact_phone` varchar(100) NOT NULL DEFAULT '',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `address` text DEFAULT NULL,
  `free_delivery` int(1) NOT NULL DEFAULT 2,
  `username` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `activation_key` varchar(50) NOT NULL DEFAULT '',
  `activation_token` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_activated` datetime NOT NULL DEFAULT current_timestamp(),
  `is_featured` int(1) NOT NULL DEFAULT 1,
  `is_ready` int(1) NOT NULL DEFAULT 1,
  `is_sponsored` int(2) NOT NULL DEFAULT 1,
  `sponsored_expiration` date DEFAULT NULL,
  `lost_password_code` varchar(50) NOT NULL DEFAULT '',
  `is_commission` int(1) NOT NULL DEFAULT 1,
  `percent_commision` decimal(10,2) NOT NULL DEFAULT 0.00,
  `commision_based` varchar(50) NOT NULL DEFAULT '',
  `latitude` varchar(50) NOT NULL DEFAULT '',
  `lontitude` varchar(50) NOT NULL DEFAULT '',
  `logo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `merchant_type` int(1) NOT NULL DEFAULT 1,
  `membership_expired` date DEFAULT NULL,
  `commision_type` varchar(50) NOT NULL DEFAULT '',
  `package_id` int(14) NOT NULL DEFAULT 0,
  `package_payment_code` varchar(100) NOT NULL DEFAULT '',
  `allowed_offline_payment` int(1) NOT NULL DEFAULT 0,
  `invoice_terms` int(14) NOT NULL DEFAULT 0,
  `distance_unit` varchar(20) NOT NULL DEFAULT 'mi',
  `delivery_distance_covered` float(14,2) NOT NULL DEFAULT 0.00,
  `header_image` varchar(255) NOT NULL DEFAULT '',
  `path2` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `short_description` text DEFAULT NULL,
  `close_store` int(1) NOT NULL DEFAULT 0,
  `disabled_ordering` tinyint(1) NOT NULL DEFAULT 0,
  `pause_ordering` tinyint(1) NOT NULL DEFAULT 0,
  `orders_added` int(14) NOT NULL DEFAULT 0,
  `order_limit` int(14) NOT NULL DEFAULT 0,
  `items_added` int(14) NOT NULL DEFAULT 0,
  `item_limit` int(14) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `self_delivery` int(1) DEFAULT 0,
  `charge_type` varchar(50) NOT NULL DEFAULT 'fixed',
  `free_delivery_on_first_order` int(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `access_permission_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`merchant_id`),
  KEY `restaurant_slug` (`restaurant_slug`),
  KEY `restaurant_name` (`restaurant_name`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `status` (`status`),
  KEY `is_featured` (`is_featured`),
  KEY `is_ready` (`is_ready`),
  KEY `is_sponsored` (`is_sponsored`),
  KEY `is_commission` (`is_commission`),
  KEY `percent_commision` (`percent_commision`),
  KEY `merchant_id` (`merchant_id`),
  KEY `latitude` (`latitude`),
  KEY `lontitude` (`lontitude`),
  KEY `merchant_type` (`merchant_type`),
  KEY `close_store` (`close_store`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant`
--

LOCK TABLES `st_merchant` WRITE;
/*!40000 ALTER TABLE `st_merchant` DISABLE KEYS */;
INSERT INTO `st_merchant` VALUES (1,'bf9c1843-3031-11f1-86f1-4ab0e3a8062d','chicken-n-chicken','Chicken N Chicken Waves','','CNC Manager','','info@chickennchicken.dk','Over Bølgen 3, st. 1, 2670 Greve',2,'cncmerchant','d2daf200dbd5947ba03417db6bd7f7e3','','','active','2026-04-04 14:22:45',1,1,1,NULL,'',2,0.00,'','55.59893609','12.32663123','logo.png','upload/merchant/1/',2,NULL,'',0,'',0,0,'km',15.00,'banner.png','upload/merchant/1/','Chicken N Chicken - Lækre burgere, crispy chicken, wraps og meget mere!','Burgers, Chicken, Wraps & More',0,0,0,0,0,150,0,'2026-04-04 14:22:45',0,'fixed',0,'2026-04-04 16:22:37','2026-04-04 16:22:37','',NULL);
/*!40000 ALTER TABLE `st_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_commission_order`
--

DROP TABLE IF EXISTS `st_merchant_commission_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_commission_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `transaction_type` varchar(255) NOT NULL DEFAULT '',
  `commission_type` varchar(255) NOT NULL DEFAULT '',
  `commission` decimal(10,2) NOT NULL DEFAULT 0.00,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `transaction_type` (`transaction_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_commission_order`
--

LOCK TABLES `st_merchant_commission_order` WRITE;
/*!40000 ALTER TABLE `st_merchant_commission_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_merchant_commission_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_location`
--

DROP TABLE IF EXISTS `st_merchant_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_location` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) DEFAULT 0,
  `country_id` int(14) NOT NULL DEFAULT 0,
  `state_id` int(14) NOT NULL DEFAULT 0,
  `city_id` int(14) NOT NULL DEFAULT 0,
  `area_id` int(14) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `country_id` (`country_id`),
  KEY `state_id` (`state_id`),
  KEY `city_id` (`city_id`),
  KEY `area_id` (`area_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_location`
--

LOCK TABLES `st_merchant_location` WRITE;
/*!40000 ALTER TABLE `st_merchant_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_merchant_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_meta`
--

DROP TABLE IF EXISTS `st_merchant_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_meta` (
  `meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) NOT NULL DEFAULT 0,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` text DEFAULT NULL,
  `meta_value1` text DEFAULT NULL,
  `meta_value2` text DEFAULT NULL,
  `meta_value3` text DEFAULT NULL,
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`meta_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `meta_name` (`meta_name`),
  FULLTEXT KEY `meta_value` (`meta_value`),
  FULLTEXT KEY `meta_value1` (`meta_value1`),
  FULLTEXT KEY `meta_value2` (`meta_value2`),
  FULLTEXT KEY `meta_value3` (`meta_value3`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_meta`
--

LOCK TABLES `st_merchant_meta` WRITE;
/*!40000 ALTER TABLE `st_merchant_meta` DISABLE KEYS */;
INSERT INTO `st_merchant_meta` VALUES (1,1,'merchant_currency','DKK','','',NULL,'2026-04-04 16:22:37'),(2,1,'merchant_currency_symbol','kr','','',NULL,'2026-04-04 16:22:37'),(3,1,'merchant_currency_position','right','','',NULL,'2026-04-04 16:22:37'),(4,1,'merchant_decimal_place','0','','',NULL,'2026-04-04 16:22:37'),(5,1,'merchant_order_prefix','CNC','','',NULL,'2026-04-04 16:22:37'),(8,1,'enabled_pickup','1','','',NULL,'2026-04-04 16:22:37'),(10,1,'tax_rate','25','','',NULL,'2026-04-04 16:22:37'),(11,1,'primary_color','#9d292b','','',NULL,'2026-04-04 16:22:37'),(12,1,'secondary_color','#f17d00','','',NULL,'2026-04-04 16:22:37'),(14,1,'services','pickup',NULL,NULL,NULL,'2026-04-04 14:38:37'),(16,1,'default_transaction_type','pickup',NULL,NULL,NULL,'2026-04-04 16:00:08'),(17,1,'merchant_time_selection','1',NULL,NULL,NULL,'2026-04-04 16:34:45'),(18,1,'merchant_timezone','Europe/Copenhagen',NULL,NULL,NULL,'2026-04-04 17:03:53'),(19,1,'payment_gateway','stripe',NULL,NULL,NULL,'2026-04-04 19:34:45');
/*!40000 ALTER TABLE `st_merchant_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_payment_method`
--

DROP TABLE IF EXISTS `st_merchant_payment_method`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_payment_method` (
  `payment_method_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) DEFAULT 0,
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT 0,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `attr4` varchar(255) NOT NULL DEFAULT '',
  `attr5` varchar(255) NOT NULL DEFAULT '',
  `payment_refence` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_method_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_payment_method`
--

LOCK TABLES `st_merchant_payment_method` WRITE;
/*!40000 ALTER TABLE `st_merchant_payment_method` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_merchant_payment_method` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_type`
--

DROP TABLE IF EXISTS `st_merchant_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `type_name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `commision_type` varchar(50) NOT NULL DEFAULT 'percentage',
  `commission` float(14,2) NOT NULL DEFAULT 0.00,
  `commission_data` text DEFAULT NULL,
  `based_on` varchar(50) NOT NULL DEFAULT 'subtotal',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `commision_type` (`commision_type`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_type`
--

LOCK TABLES `st_merchant_type` WRITE;
/*!40000 ALTER TABLE `st_merchant_type` DISABLE KEYS */;
INSERT INTO `st_merchant_type` VALUES (1,1,'Membership','Membership','percentage',0.00,NULL,'subtotal','#ffd6c4','','publish','2021-10-06 07:48:02','2022-01-27 07:45:01','127.0.0.1'),(2,2,'Commission','Commission','percentage',5.00,NULL,'subtotal','#e8989b','','publish','2021-10-06 07:48:02','2022-01-27 07:44:56','127.0.0.1');
/*!40000 ALTER TABLE `st_merchant_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_type_translation`
--

DROP TABLE IF EXISTS `st_merchant_type_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_type_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type_id` int(11) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `type_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `type_id` (`type_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_type_translation`
--

LOCK TABLES `st_merchant_type_translation` WRITE;
/*!40000 ALTER TABLE `st_merchant_type_translation` DISABLE KEYS */;
INSERT INTO `st_merchant_type_translation` VALUES (1,2,'ja',''),(2,2,'ar',''),(3,2,'en','Commission'),(4,1,'ja',''),(5,1,'ar',''),(6,1,'en','Membership');
/*!40000 ALTER TABLE `st_merchant_type_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_merchant_user`
--

DROP TABLE IF EXISTS `st_merchant_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_merchant_user` (
  `merchant_user_id` int(14) NOT NULL AUTO_INCREMENT,
  `user_uuid` varchar(50) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `first_name` varchar(255) NOT NULL DEFAULT '',
  `last_name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(50) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `role` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `contact_email` varchar(255) NOT NULL DEFAULT '',
  `session_token` varchar(255) NOT NULL DEFAULT '',
  `contact_number` varchar(20) NOT NULL DEFAULT '',
  `main_account` int(1) NOT NULL DEFAULT 0,
  `profile_photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `verification_code` int(10) NOT NULL DEFAULT 0,
  `last_login` datetime NOT NULL DEFAULT current_timestamp(),
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`merchant_user_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `status` (`status`),
  KEY `session_token` (`session_token`),
  KEY `user_uuid` (`user_uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_merchant_user`
--

LOCK TABLES `st_merchant_user` WRITE;
/*!40000 ALTER TABLE `st_merchant_user` DISABLE KEYS */;
INSERT INTO `st_merchant_user` VALUES (1,'',1,'CNC','Manager','cncmerchant','d2daf200dbd5947ba03417db6bd7f7e3',1,'active','info@chickennchicken.dk','4d94e24e-3059-11f1-86f1-4ab0e3a8062d','',1,'','',0,'2026-04-05 03:05:53','2026-04-04 16:22:37','2026-04-04 16:22:37','192.168.97.1');
/*!40000 ALTER TABLE `st_merchant_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_message`
--

DROP TABLE IF EXISTS `st_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_message` (
  `id` int(11) NOT NULL,
  `language` varchar(16) NOT NULL,
  `translation` text DEFAULT NULL,
  PRIMARY KEY (`id`,`language`),
  CONSTRAINT `FK_Message_SourceMessage` FOREIGN KEY (`id`) REFERENCES `st_sourcemessage` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_message`
--

LOCK TABLES `st_message` WRITE;
/*!40000 ALTER TABLE `st_message` DISABLE KEYS */;
INSERT INTO `st_message` VALUES (0,'da','Søg i menu'),(16,'da','Annuller'),(17,'da','Bekræft'),(27,'da','Luk'),(65,'da','bedømmelser'),(72,'da','Næste'),(73,'da','Søg'),(75,'da','Adresse'),(78,'da','Gem'),(87,'da','Anmeldelser'),(178,'da','Vilkår og betingelser'),(206,'da','Slet'),(216,'da','Tjenester'),(246,'da','Ingen resultater'),(290,'da','Tilføj'),(318,'da','Ordrer'),(322,'da','Filtre'),(420,'da','Dato'),(441,'da','Send'),(446,'da','I alt'),(447,'da','Kontakt'),(448,'da','E-mail'),(567,'da','Populært'),(606,'da','Årsag'),(701,'da','Lejlighed, suite eller etage'),(702,'da','Tilføj leveringsinstruktioner'),(704,'da','Hjem'),(705,'da','Arbejde'),(706,'da','Skole'),(708,'da','Andet'),(709,'da','Læg ved døren'),(710,'da','Giv til mig'),(711,'da','Mød udenfor'),(762,'da','Subtotal'),(782,'da','Menu'),(790,'da','Profil'),(804,'da','Restaurant'),(807,'da','Få rutevejledning'),(819,'da','Annuller ordre'),(822,'da','Ja'),(823,'da','Okay'),(827,'da','Adresser'),(832,'da','Refunder denne vare'),(906,'da','Mad'),(910,'da','Varer'),(911,'da','Levering'),(927,'da','Afhentning'),(928,'da','Spis her'),(929,'da','Galleri'),(938,'da','Se ordre'),(1147,'da','Firma'),(1148,'da','Service'),(1149,'da','Find en butik'),(1151,'da','Kontakt os'),(1152,'da','Kategorier'),(1153,'da','Dagligvarer'),(1154,'da','Pakkelevering'),(1155,'da','Fast Food'),(1157,'da','Privatlivspolitik'),(1184,'da','Åben'),(1185,'da',''),(1255,'da','Valgfrit'),(1256,'da','Særlige instruktioner'),(1258,'da','Hvis udsolgt'),(1260,'da','Vælg op til'),(1288,'da','Mandag'),(1289,'da','Tirsdag'),(1290,'da','Onsdag'),(1291,'da','Torsdag'),(1292,'da','Fredag'),(1293,'da','Lørdag'),(1294,'da','Søndag'),(1324,'da','Påkrævet'),(1325,'da','Nej'),(1341,'da','Leveringsmuligheder'),(1372,'da','Side ikke fundet'),(1394,'da','Fortsæt'),(1505,'da','Følg butikkens anbefaling'),(1506,'da','Kontakt mig'),(1507,'da','Annuller hele ordren'),(1547,'da','Dette felt er påkrævet'),(1576,'da','Lad os finde det bedste mad til dig'),(1577,'da','Indtast leveringsadresse'),(1594,'da','Ny'),(1599,'da','Ejer du en restaurant?'),(1600,'da','Bliv en del af os'),(1601,'da','Få trin til at blive en del af familien'),(1602,'da','Tilmeld'),(1603,'da','De bedste restauranter'),(1604,'da','I din lomme'),(1606,'da','Download'),(1610,'da','Kurv'),(1611,'da','Log ind'),(1612,'da','Du har ingen ordrer endnu!'),(1613,'da','Lad os ændre det!'),(1614,'da','Log ind'),(1615,'da','Husk mig'),(1616,'da','Glemt adgangskode?'),(1617,'da','Mobilnummer eller e-mail'),(1618,'da','Adgangskode'),(1619,'da','Har du ikke en konto?'),(1620,'da','Opret konto'),(1625,'da','Lad os komme i gang'),(1626,'da','Indtast dit telefonnummer'),(1627,'da','Næste'),(1628,'da','Har du en konto?'),(1629,'da','Indtast koden sendt til'),(1630,'da','Send kode igen'),(1631,'da','Send kode igen om'),(1633,'da','Udfyld dine oplysninger'),(1634,'da','Fornavn'),(1635,'da','Efternavn'),(1636,'da','E-mailadresse'),(1638,'da','Bekræft adgangskode'),(1639,'da','Send'),(1640,'da','Ryd alt'),(1641,'da','Filter'),(1644,'da','Slut på resultater'),(1650,'da','Mest populære'),(1651,'da','Bedømmelse'),(1652,'da','Tilbud'),(1653,'da','Gratis levering første ordre'),(1655,'da','Køkkener'),(1658,'da','Bedømmelser'),(1659,'da','Søg'),(1660,'da','Nu'),(1662,'da','Ingen resultater'),(1670,'da','Rabat {{discount}}%'),(1681,'da','Butikken er lukket lige nu, men du kan planlægge en ordre.'),(1682,'da','Din ordre er blevet afgivet'),(1683,'da','Din ordre fra'),(1684,'da','Oversigt'),(1685,'da','Spor'),(1686,'da','Bestil igen'),(1719,'da','Gem butik'),(1720,'da','Gemt'),(1721,'da','Indtast din adresse'),(1722,'da','Galleri'),(1723,'da','Anmeldelser'),(1724,'da','Baseret på'),(1726,'da','Indlæs flere'),(1727,'da','Kort om {{restaurant_name}}'),(1728,'da','Adresse'),(1729,'da','Få rutevejledning'),(1730,'da','Åbningstider'),(1731,'da','Læg i kurv'),(1732,'da','Menu'),(1735,'da','Ryd'),(1736,'da','Bestil'),(1737,'da','Til kassen'),(1738,'da','Afhentningsdetaljer'),(1739,'da','Skift adresse'),(1740,'da','Vælg tidspunkt'),(1741,'da','Planlæg til senere'),(1742,'da','Færdig'),(1743,'da','Gem'),(1744,'da','Valgfrit'),(1745,'da','Særlige instruktioner'),(1746,'da','Tilføj en note (ekstra ost, ingen løg, osv.)'),(1747,'da','Hvis udsolgt'),(1748,'da','Følg butikkens anbefaling'),(1749,'da','Refunder denne vare'),(1750,'da','Kontakt mig'),(1751,'da','Annuller hele ordren'),(1752,'da','Vælg 1'),(1753,'da','Vælg op til'),(1754,'da','Vælg smag'),(1755,'da','Påkrævet'),(1756,'da','Mandag'),(1757,'da','Tirsdag'),(1758,'da','Onsdag'),(1759,'da','Torsdag'),(1760,'da','Fredag'),(1761,'da','Lørdag'),(1762,'da','Søndag'),(1772,'da','Butikken er lukket'),(1774,'da','Planlæg ordre'),(1775,'da','min'),(1776,'da','Referencenummer'),(1777,'da','Ingredienser'),(1778,'da','Ordretype og tidspunkt'),(1779,'da','Inkluder bestik og tilbehør'),(1782,'da','Andre bestilte også'),(1783,'da','Vælg leveringsadresse'),(1784,'da','Tilføj ny adresse'),(1785,'da','Betalingsmetoder'),(1786,'da','Gemte betalingsmetoder'),(1787,'da','Subtotal'),(1788,'da','Servicegebyr'),(1789,'da','Drikkepenge til bud'),(1790,'da','I alt'),(1791,'da','Tilføj ny betalingsmetode'),(1792,'da','Tilbud tilgængeligt'),(1795,'da','Emballagegebyr'),(1797,'da','Minimumsordre er {{minimum_order}}'),(1798,'da','Maksimumsordre er {{maximum_order}}'),(1801,'da','Tilbage til menu'),(1802,'da','Bekræfter din ordre'),(1803,'da','Skriv en anmeldelse'),(1804,'da','Hvad kunne du lide?'),(1805,'da','Hvad kunne du ikke lide?'),(1806,'da','Tilføj billeder'),(1807,'da','Skriv din anmeldelse'),(1809,'da','Din anmeldelse hjælper os med at træffe bedre valg'),(1811,'da','Tilføj anmeldelse'),(1822,'da','HVORDAN VAR DIN ORDRE?'),(1823,'da','Fortæl os om din levering og hvad du synes om din ordre!'),(1824,'da','Bedøm din ordre'),(1826,'da','Ordre #'),(1827,'da','Subtotal'),(1828,'da','Forbereder din ordre'),(1830,'da','Din ordre er klar'),(1832,'da','Afhent din ordre'),(1838,'da','Ordre fuldført'),(1839,'da','Din ordre er fuldført. Velbekomme!'),(1840,'da','Ordre annulleret'),(1842,'da','Ordre afvist'),(1848,'da','Notifikation'),(1849,'da','Se alle'),(1850,'da','Alle notifikationer'),(1851,'da','Slut på resultater'),(1852,'da','Administrer min konto'),(1853,'da','Ordrer'),(1854,'da','Adresser'),(1855,'da','Betalinger'),(1856,'da','Gemte butikker'),(1859,'da','dage siden'),(1862,'da','siden'),(1863,'da','Profil'),(1864,'da','Grundlæggende oplysninger'),(1865,'da','Skift adgangskode'),(1866,'da','Notifikationer'),(1867,'da','Administrer konto'),(1875,'da','Slet konto'),(1876,'da','Slet ikke'),(1877,'da','Okay'),(1879,'da','Profil opdateret'),(1880,'da','Gammelt adgangskode'),(1881,'da','Nyt adgangskode'),(1905,'da','Søg i ordrer'),(1911,'da','Bestil nu'),(1912,'da','Vi kan lide hinanden'),(1913,'da','Lad os ikke ændre det!'),(1914,'da','Antal ordrer'),(1915,'da','Samlet beløb'),(1916,'da','Bestilt den'),(1917,'da','Se'),(1920,'da','Download PDF'),(1921,'da','Annuller ordre'),(1924,'da','Refusion udstedt'),(1925,'da','Dato udstedt'),(1927,'da','Beløb'),(1928,'da','Beskrivelse'),(1931,'da','Annuller ikke'),(1932,'da','Hvordan vil du fortsætte?'),(1933,'da','Er du sikker?'),(1940,'da','Gå til kassen'),(1941,'da','Din kurv fra'),(1955,'da','Afhent nu'),(1956,'da','Afhent senere'),(1957,'da','Kontakt os'),(1958,'da','Du afhenter nu'),(1959,'da','Afhentning planlagt'),(1960,'da','Kontakt'),(1963,'da','Wow, du kommer vidt omkring :)'),(1964,'da','Ingen adresse, lad os ændre det!'),(1967,'da','Juster nål'),(1968,'da','Leveringsmuligheder'),(1969,'da','Tilføj leveringsinstruktioner'),(1973,'da','Annuller'),(1974,'da','Lejlighed, suite eller etage'),(1976,'da','Bekræft'),(1977,'da','Ja'),(1979,'da','Fuld adresse'),(1980,'da','Rediger'),(1981,'da','Slet'),(1984,'da','Hjem'),(1985,'da','Arbejde'),(1986,'da','Skole'),(1988,'da','Andet'),(1989,'da','Betaling'),(1995,'da','Din samling af restauranter og mad'),(1996,'da','Du har ingen gemte butikker!'),(1997,'da','Mine ordrer'),(1998,'da','Betalingsmuligheder'),(1999,'da','Log ud'),(2011,'da','Fortsæt'),(2041,'da','Vælg'),(2046,'da','Abonner'),(2053,'da','Ups! Den side du leder efter, findes ikke. Prøv igen.'),(2056,'da','{{estimation}} min'),(2058,'da','Læg ved døren'),(2059,'da','Giv til mig'),(2060,'da','Mød udenfor'),(2096,'da','Ordretype'),(2097,'da','Ønsket afhentningstid'),(2099,'da','Tilbud'),(2100,'da','Har du en rabatkode?'),(2101,'da','Tilføj rabatkode'),(2102,'da','Anvend'),(2104,'da','Ikke tilgængelig'),(2125,'da','Ikke tilgængelig i øjeblikket'),(2150,'da','km'),(2173,'da','Filtre'),(2174,'da','Restaurant'),(2175,'da','Mad'),(2176,'da','Se ordre'),(2177,'da','Tryk for åbningstider, adresse og mere'),(2178,'da','Tilføj din restaurant'),(2179,'da','Tilmeld dig som chauffør'),(2180,'da','De bedste restauranter i din lomme'),(2181,'da','Hent appen'),(2185,'da','Tillad retur til forside'),(2200,'da','Afhentning nu'),(2201,'da','Læs mere'),(2202,'da','Læs mindre'),(2203,'da','I alt {total}'),(2204,'da','Opret ny ordre'),(2205,'da','Ny ordre'),(2206,'da','Begivenhed'),(2207,'da','Rediger tilgængelighed'),(2208,'da','Vælg op til {max}'),(2209,'da','Afhent nu'),(2210,'da','Du afhenter nu'),(2211,'da','Afhentning planlagt'),(2212,'da','Kontakt'),(2213,'da','Friske burgere, crispy chicken og meget mere'),(2214,'da','Bestil online'),(2215,'da','Bestil direkte fra vores menu og hent i butikken'),(2216,'da','Afhent nu eller senere'),(2217,'da','Vælg det tidspunkt der passer dig bedst'),(2218,'da','4.8 ud af 5'),(2219,'da','Vores kunder elsker vores mad'),(2220,'da','Åbningstider'),(2221,'da','Mandag - Torsdag'),(2222,'da','Fredag - Lørdag'),(2223,'da','Søndag'),(2224,'da','Har du spørgsmål? Skriv til os herunder.'),(2225,'da','Din besked'),(2226,'da','Dit navn'),(2227,'da','Din email'),(2228,'da','Send besked');
/*!40000 ALTER TABLE `st_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_multicurrency_list`
--

DROP TABLE IF EXISTS `st_multicurrency_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_multicurrency_list` (
  `id` int(11) NOT NULL,
  `currency_name` varchar(50) NOT NULL DEFAULT '',
  `symbol` varchar(5) NOT NULL DEFAULT '',
  `code` varchar(50) NOT NULL DEFAULT '',
  `country_code` varchar(5) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_multicurrency_list`
--

LOCK TABLES `st_multicurrency_list` WRITE;
/*!40000 ALTER TABLE `st_multicurrency_list` DISABLE KEYS */;
INSERT INTO `st_multicurrency_list` VALUES (1,'Albanian Lek','Lek','ALL','AL'),(2,'East Caribbean Dollar','$','XCD','LC'),(3,'Euro','€','EUR','EU'),(4,'Barbadian Dollar','$','BBD','BB'),(5,'Bhutanese Ngultrum','','BTN','BT'),(6,'Brunei Dollar','$','BND','BN'),(7,'Central African CFA Franc','','XAF','CM'),(8,'Cuban Peso','$','CUP','CU'),(9,'United States Dollar','$','USD','US'),(10,'Falkland Islands Pound','£','FKP','FK'),(11,'Gibraltar Pound','£','GIP','GI'),(12,'Hungarian Forint','Ft','HUF','HU'),(13,'Iranian Rial','﷼','IRR','IR'),(14,'Jamaican Dollar','J$','JMD','JM'),(15,'Australian Dollar','$','AUD','AU'),(16,'Lao Kip','₭','LAK','LA'),(17,'Libyan Dinar','','LYD','LY'),(18,'Macedonian Denar','ден','MKD','MK'),(19,'West African CFA Franc','','XOF','BJ'),(20,'New Zealand Dollar','$','NZD','NZ'),(21,'Omani Rial','﷼','OMR','OM'),(22,'Papua New Guinean Kina','','PGK','PG'),(23,'Rwandan Franc','','RWF','RW'),(24,'Samoan Tala','','WST','WS'),(25,'Serbian Dinar','Дин.','RSD','RS'),(26,'Swedish Krona','kr','SEK','SE'),(27,'Tanzanian Shilling','TSh','TZS','TZ'),(28,'Armenian Dram','','AMD','AM'),(29,'Bahamian Dollar','$','BSD','BS'),(30,'Bosnia And Herzegovina Konvertibilna Marka','KM','BAM','BA'),(31,'Cape Verdean Escudo','','CVE','CV'),(32,'Chinese Yuan','¥','CNY','CN'),(33,'Costa Rican Colon','₡','CRC','CR'),(34,'Czech Koruna','Kč','CZK','CZ'),(35,'Eritrean Nakfa','','ERN','ER'),(36,'Georgian Lari','','GEL','GE'),(37,'Haitian Gourde','','HTG','HT'),(38,'Indian Rupee','₹','INR','IN'),(39,'Jordanian Dinar','','JOD','JO'),(40,'South Korean Won','₩','KRW','KR'),(41,'Lebanese Lira','£','LBP','LB'),(42,'Malawian Kwacha','','MWK','MW'),(43,'Mauritanian Ouguiya','','MRO','MR'),(44,'Mozambican Metical','','MZN','MZ'),(45,'Netherlands Antillean Gulden','ƒ','ANG','AN'),(46,'Peruvian Nuevo Sol','S/.','PEN','PE'),(47,'Qatari Riyal','﷼','QAR','QA'),(48,'Sao Tome And Principe Dobra','','STD','ST'),(49,'Sierra Leonean Leone','','SLL','SL'),(50,'Somali Shilling','S','SOS','SO'),(51,'Sudanese Pound','','SDG','SD'),(52,'Syrian Pound','£','SYP','SY'),(53,'Angolan Kwanza','','AOA','AO'),(54,'Aruban Florin','ƒ','AWG','AW'),(55,'Bahraini Dinar','','BHD','BH'),(56,'Belize Dollar','BZ$','BZD','BZ'),(57,'Botswana Pula','P','BWP','BW'),(58,'Burundi Franc','','BIF','BI'),(59,'Cayman Islands Dollar','$','KYD','KY'),(60,'Colombian Peso','$','COP','CO'),(61,'Danish Krone','kr','DKK','DK'),(62,'Guatemalan Quetzal','Q','GTQ',''),(63,'Honduran Lempira','L','HNL','HN'),(64,'Indonesian Rupiah','Rp','IDR','ID'),(65,'Israeli New Sheqel','₪','ILS','IL'),(66,'Kazakhstani Tenge','лв','KZT','KZ'),(67,'Kuwaiti Dinar','','KWD','KW'),(68,'Lesotho Loti','','LSL','LS'),(69,'Malaysian Ringgit','RM','MYR','MY'),(70,'Mauritian Rupee','₨','MUR','MU'),(71,'Mongolian Tugrik','₮','MNT','MN'),(72,'Myanma Kyat','','MMK','MM'),(73,'Nigerian Naira','₦','NGN','NG'),(74,'Panamanian Balboa','B/.','PAB','PA'),(75,'Philippine Peso','₱','PHP','PH'),(76,'Romanian Leu','lei','RON','RO'),(77,'Saudi Riyal','﷼','SAR','SA'),(78,'Singapore Dollar','$','SGD','SG'),(79,'South African Rand','R','ZAR','ZA'),(80,'Surinamese Dollar','$','SRD','SR'),(81,'New Taiwan Dollar','NT$','TWD','TW'),(82,'Paanga','','TOP','TO'),(83,'Venezuelan Bolivar','','VEF','VE'),(84,'Algerian Dinar','','DZD','DZ'),(85,'Argentine Peso','$','ARS','AR'),(86,'Azerbaijani Manat','ман','AZN','AZ'),(87,'Belarusian Ruble','p.','BYR','BY'),(88,'Bolivian Boliviano','$ b','BOB','BO'),(89,'Bulgarian Lev','лв','BGN','BG'),(90,'Canadian Dollar','$','CAD','CA'),(91,'Chilean Peso','$','CLP','CL'),(92,'Congolese Franc','','CDF','CD'),(93,'Dominican Peso','RD$','DOP','DO'),(94,'Fijian Dollar','$','FJD','FJ'),(95,'Gambian Dalasi','','GMD','GM'),(96,'Guyanese Dollar','$','GYD','GY'),(97,'Icelandic Króna','kr','ISK','IS'),(98,'Iraqi Dinar','','IQD','IQ'),(99,'Japanese Yen','¥','JPY','JP'),(100,'North Korean Won','₩','KPW','KP'),(101,'Latvian Lats','Ls','LVL',''),(102,'Swiss Franc','Fr.','CHF','CH'),(103,'Malagasy Ariary','','MGA',''),(104,'Moldovan Leu','','MDL','MD'),(105,'Moroccan Dirham','','MAD','MA'),(106,'Nepalese Rupee','₨','NPR','NP'),(107,'Nicaraguan Cordoba','C$','NIO','NI'),(108,'Pakistani Rupee','₨','PKR','PK'),(109,'Paraguayan Guarani','Gs','PYG','PY'),(110,'Saint Helena Pound','£','SHP','SH'),(111,'Seychellois Rupee','₨','SCR','SC'),(112,'Solomon Islands Dollar','$','SBD','SB'),(113,'Sri Lankan Rupee','₨','LKR','LK'),(114,'Thai Baht','฿','THB','TH'),(115,'Turkish New Lira','','TRY','TR'),(116,'UAE Dirham','','AED','AE'),(117,'Vanuatu Vatu','','VUV','VU'),(118,'Yemeni Rial','﷼','YER','YE'),(119,'Afghan Afghani','؋','AFN','AF'),(120,'Bangladeshi Taka','','BDT','BD'),(121,'Brazilian Real','R$','BRL','BR'),(122,'Cambodian Riel','៛','KHR','KH'),(123,'Comorian Franc','','KMF','KM'),(124,'Croatian Kuna','kn','HRK','HR'),(125,'Djiboutian Franc','','DJF','DJ'),(126,'Egyptian Pound','£','EGP','EG'),(127,'Ethiopian Birr','','ETB','ET'),(128,'CFP Franc','','XPF','WF'),(129,'Ghanaian Cedi','','GHS','GH'),(130,'Guinean Franc','','GNF','GN'),(131,'Hong Kong Dollar','$','HKD','HK'),(132,'Special Drawing Rights','','XDR',''),(133,'Kenyan Shilling','KSh','KES','KE'),(134,'Kyrgyzstani Som','лв','KGS','KG'),(135,'Liberian Dollar','$','LRD','LR'),(136,'Macanese Pataca','','MOP',''),(137,'Maldivian Rufiyaa','','MVR','MV'),(138,'Mexican Peso','$','MXN','MX'),(139,'Namibian Dollar','$','NAD','NA'),(140,'Norwegian Krone','kr','NOK','NO'),(141,'Polish Zloty','zł','PLN','PL'),(142,'Russian Ruble','руб','RUB','RU'),(143,'Swazi Lilangeni','','SZL','SZ'),(144,'Tajikistani Somoni','','TJS','TJ'),(145,'Trinidad and Tobago Dollar','TT$','TTD','TT'),(146,'Ugandan Shilling','USh','UGX','UG'),(147,'Uruguayan Peso','$ U','UYU','UY'),(148,'Vietnamese Dong','₫','VND','VN'),(149,'Tunisian Dinar','','TND','TN'),(150,'Ukrainian Hryvnia','₴','UAH','UA'),(151,'Uzbekistani Som','лв','UZS','UZ'),(152,'Turkmenistan Manat','','TMT','TM'),(153,'British Pound','£','GBP','GB'),(154,'Zambian Kwacha','','ZMW','ZM'),(155,'Bitcoin','BTC','BTC','XBT'),(156,'New Belarusian Ruble','p.','BYN','BY'),(157,'Bermudan Dollar','','BMD','BM'),(158,'Guernsey Pound','','GGP','GG'),(159,'Chilean Unit Of Account','','CLF','CL'),(160,'Cuban Convertible Peso','','CUC','CU'),(161,'Manx pound','','IMP','IM'),(162,'Jersey Pound','','JEP','JE'),(163,'Salvadoran Colón','','SVC','SV'),(164,'Old Zambian Kwacha','','ZMK','ZM'),(165,'Silver (troy ounce)','','XAG','XA'),(166,'Zimbabwean Dollar','','ZWL','ZW');
/*!40000 ALTER TABLE `st_multicurrency_list` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_notifications`
--

DROP TABLE IF EXISTS `st_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_notifications` (
  `notification_uuid` varchar(100) NOT NULL,
  `notication_channel` varchar(50) NOT NULL DEFAULT 'admin',
  `notification_event` varchar(100) NOT NULL DEFAULT '',
  `notification_type` varchar(100) NOT NULL DEFAULT '',
  `message` text DEFAULT NULL,
  `message_parameters` text DEFAULT NULL,
  `meta_data` text DEFAULT NULL,
  `image_type` varchar(50) NOT NULL DEFAULT 'icon',
  `image` varchar(100) NOT NULL DEFAULT '',
  `image_path` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `response` text DEFAULT NULL,
  `visible` smallint(1) NOT NULL DEFAULT 1,
  `viewed` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`notification_uuid`),
  KEY `notication_channel` (`notication_channel`),
  KEY `notification_type` (`notification_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_notifications`
--

LOCK TABLES `st_notifications` WRITE;
/*!40000 ALTER TABLE `st_notifications` DISABLE KEYS */;
INSERT INTO `st_notifications` VALUES ('babd8f4f-30df-11f1-b058-9a79972e1847','d02f1252-3056-11f1-86f1-4ab0e3a8062d','notification-event','order_update','Order Being Processed #{{order_info.order_id}}','{\"{{client_id}}\":2,\"{{merchant_id}}\":1,\"{{order_id}}\":10006,\"{{order_id1}}\":\"Order #10006\",\"{{order_uuid}}\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{order_reference}}\":\"\",\"{{request_from}}\":\"web\",\"{{sub_total}}\":\"53.0000\",\"{{pretty_sub_total}}\":\"53 kr\",\"{{total}}\":\"53.0000\",\"{{total_original}}\":\"53.0000\",\"{{pretty_total}}\":\"53 kr\",\"{{amount_due_raw}}\":0,\"{{amount_due}}\":\"0 kr\",\"{{wallet_amount_raw}}\":0,\"{{wallet_amount}}\":\"0 kr\",\"{{commission}}\":\"0.00\",\"{{delivery_fee}}\":\"0.0000\",\"{{pretty_delivery_fee}}\":\"0 kr\",\"{{use_currency_code}}\":\"DKK\",\"{{base_currency_code}}\":\"DKK\",\"{{exchange_rate}}\":1,\"{{admin_base_currency}}\":\"DKK\",\"{{exchange_rate_use_currency_to_admin}}\":\"1.0000\",\"{{exchange_rate_merchant_to_admin}}\":1,\"{{exchange_rate_admin_to_merchant}}\":1,\"{{total_exchange_rate_use_currency_to_admin}}\":53,\"{{total_exchange_rate_use_currency_to_admin_pretty}}\":\"53,00 kr\",\"{{total_from_used_currency_to_based_currency}}\":53,\"{{total_from_used_currency_to_based_currency_pretty}}\":\"53,00 kr\",\"{{total_from_merchant_to_admin_currency}}\":53,\"{{total_from_merchant_to_admin_currency_pretty}}\":\"53,00 kr\",\"{{status}}\":\"new\",\"{{status1}}\":\"new\",\"{{flow_status}}\":\"draft\",\"{{flow_status1}}\":\"DRAFT\",\"{{flow_status_completed}}\":false,\"{{cannot_voided}}\":false,\"{{is_completed}}\":false,\"{{is_order_failed}}\":false,\"{{is_timepreparation}}\":true,\"{{delivery_status}}\":\"unassigned\",\"{{payment_status}}\":\"paid\",\"{{payment_status1}}\":\"Paid\",\"{{payment_code}}\":\"stripe\",\"{{payment_name}}\":\"Paid by Kort\",\"{{payment_name1}}\":\"Kort\",\"{{payment_by_wallet}}\":\"Paid by Digital Wallet\",\"{{order_type}}\":\"pickup\",\"{{order_type1}}\":\"Afhentning\",\"{{whento_deliver}}\":\"now\",\"{{schedule_at}}\":\"Asap\",\"{{delivery_date}}\":\"2026-04-05\",\"{{delivery_date1}}\":\"05.04.2026\",\"{{delivery_time}}\":\"\",\"{{delivery_time1}}\":null,\"{{place_on}}\":\"Place on s\\u00f8n., april 5, 2026 13:08\",\"{{place_on_raw}}\":\"s\\u00f8n., april 5, 2026 13:08\",\"{{place_on_date}}\":\"s\\u00f8n., april 5, 2026\",\"{{paid_on}}\":\"Paid on s\\u00f8n., april 5, 2026 13:08\",\"{{place_datetime}}\":\"05.04.2026 01:08\",\"{{order_version}}\":\"1\",\"{{complete_delivery_address}}\":\"\",\"{{delivery_address}}\":\"\",\"{{address1}}\":\"\",\"{{address2}}\":\"\",\"{{address_format_use}}\":1,\"{{postal_code}}\":\"\",\"{{company}}\":\"\",\"{{customer_name}}\":\"Jawad Khan\",\"{{contact_number}}\":\"+4512345678\",\"{{contact_email}}\":\"info@chickennchicken.dk\",\"{{include_utensils}}\":\"\",\"{{longitude}}\":\"12.32663123\",\"{{latitude}}\":\"55.59893609\",\"{{rejetion_reason}}\":\"\",\"{{delayed_order}}\":\"\",\"{{delayed_order_mins}}\":\"\",\"{{order_change}}\":0,\"{{order_notes}}\":\"\",\"{{receive_amount}}\":0,\"{{tracking_link}}\":\"http:\\/\\/localhost\\/orders\\/index?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{address_label}}\":\"\",\"{{delivery_options}}\":\"\",\"{{location_name}}\":\"\",\"{{payment_change}}\":0,\"{{payment_change_pretty}}\":\"0 kr\",\"{{receive_amount_pretty}}\":0,\"{{driver_id}}\":0,\"{{order_otp}}\":\"882234\",\"{{timezone}}\":\"Europe\\/Copenhagen\",\"{{delivery_instructions}}\":\"\",\"{{upload_deposit_link}}\":\"\",\"{{points_to_earn}}\":0,\"{{points_label}}\":\"\",\"{{points_label2}}\":\"\",\"{{points_label3}}\":\"\",\"{{total_items}}\":\"2\",\"{{total_items1}}\":\"2 item(s)\",\"{{view_order_link}}\":\"http:\\/\\/localhost\\/backoffice\\/orders\\/view\\/order_uuid\\/b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{custom_field1}}\":\"\",\"{{custom_field2}}\":\"\",\"{{preparation_time_estimation}}\":\"10 minutes\",\"{{preparation_time_estimation_raw}}\":10,\"{{order_accepted_at}}\":null,\"{{order_accepted_at_raw}}\":null,\"{{preparation_starts}}\":null,\"{{delivery_time_estimation}}\":0,\"{{total_estimate_time}}\":10,\"{{estimated_time}}\":\"1:18 - 1:23 PM\",\"{{is_order_ongoing}}\":true,\"{{is_order_late}}\":false,\"{{is_order_need_cancellation}}\":false,\"{{is_preparation_late}}\":false,\"{{is_driver_delivering_late}}\":false,\"{{is_arrived_at_customer}}\":false,\"{{late_notification_sent}}\":0,\"{{preparation_late_sent}}\":0,\"{{delivering_late_sent}}\":0,\"{{send_to_whatsapp}}\":\"http:\\/\\/localhost\\/api\\/sendtowhatsapp?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{merchant_uuid}}\":\"bf9c1843-3031-11f1-86f1-4ab0e3a8062d\",\"{{restaurant_name}}\":\"Chicken N Chicken Waves\",\"{{restaurant_slug}}\":\"chicken-n-chicken\",\"{{address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\",\"{{distance_unit}}\":\"km\",\"{{delivery_distance_covered}}\":15,\"{{merchant_type}}\":2,\"{{commision_type}}\":\"\",\"{{allowed_offline_payment}}\":0,\"{{invoice_terms}}\":0,\"{{logo}}\":\"logo.png\",\"{{path}}\":\"upload\\/merchant\\/1\\/\",\"{{contact_phone}}\":\"\",\"{{cuisine_name}}\":\"\",\"{{url_logo}}\":\"http:\\/\\/localhost\\/upload\\/merchant\\/1\\/\\/logo.png\",\"{{restaurant_url}}\":\"http:\\/\\/localhost\\/chicken-n-chicken\",\"{{restaurant_direction}}\":\"https:\\/\\/www.google.com\\/maps\\/dir\\/?api=1&destination=55.59893609,12.32663123\",\"{{cuisine}}\":[{\"cuisine_name\":\"\",\"bgcolor\":\"#ffd966\",\"fncolor\":\"#000\"}],\"{{merchant_address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\"}','{\"page\":\"order-view\",\"order_uuid\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"status\":\"new\",\"request_from\":\"web\"}','image','logo.png','upload/merchant/1/','pending',NULL,1,0,'2026-04-05 13:08:09','127.0.0.1'),('babfcb3c-30df-11f1-b058-9a79972e1847','bf9c1843-3031-11f1-86f1-4ab0e3a8062d','notification-event','order_update','Order#{{order_id}} from {{customer_name}}','{\"{{client_id}}\":2,\"{{merchant_id}}\":1,\"{{order_id}}\":10006,\"{{order_id1}}\":\"Order #10006\",\"{{order_uuid}}\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{order_reference}}\":\"\",\"{{request_from}}\":\"web\",\"{{sub_total}}\":\"53.0000\",\"{{pretty_sub_total}}\":\"53 kr\",\"{{total}}\":\"53.0000\",\"{{total_original}}\":\"53.0000\",\"{{pretty_total}}\":\"53 kr\",\"{{amount_due_raw}}\":0,\"{{amount_due}}\":\"0 kr\",\"{{wallet_amount_raw}}\":0,\"{{wallet_amount}}\":\"0 kr\",\"{{commission}}\":\"0.00\",\"{{delivery_fee}}\":\"0.0000\",\"{{pretty_delivery_fee}}\":\"0 kr\",\"{{use_currency_code}}\":\"DKK\",\"{{base_currency_code}}\":\"DKK\",\"{{exchange_rate}}\":1,\"{{admin_base_currency}}\":\"DKK\",\"{{exchange_rate_use_currency_to_admin}}\":\"1.0000\",\"{{exchange_rate_merchant_to_admin}}\":1,\"{{exchange_rate_admin_to_merchant}}\":1,\"{{total_exchange_rate_use_currency_to_admin}}\":53,\"{{total_exchange_rate_use_currency_to_admin_pretty}}\":\"53,00 kr\",\"{{total_from_used_currency_to_based_currency}}\":53,\"{{total_from_used_currency_to_based_currency_pretty}}\":\"53,00 kr\",\"{{total_from_merchant_to_admin_currency}}\":53,\"{{total_from_merchant_to_admin_currency_pretty}}\":\"53,00 kr\",\"{{status}}\":\"new\",\"{{status1}}\":\"new\",\"{{flow_status}}\":\"draft\",\"{{flow_status1}}\":\"DRAFT\",\"{{flow_status_completed}}\":false,\"{{cannot_voided}}\":false,\"{{is_completed}}\":false,\"{{is_order_failed}}\":false,\"{{is_timepreparation}}\":true,\"{{delivery_status}}\":\"unassigned\",\"{{payment_status}}\":\"paid\",\"{{payment_status1}}\":\"Paid\",\"{{payment_code}}\":\"stripe\",\"{{payment_name}}\":\"Paid by Kort\",\"{{payment_name1}}\":\"Kort\",\"{{payment_by_wallet}}\":\"Paid by Digital Wallet\",\"{{order_type}}\":\"pickup\",\"{{order_type1}}\":\"Afhentning\",\"{{whento_deliver}}\":\"now\",\"{{schedule_at}}\":\"Asap\",\"{{delivery_date}}\":\"2026-04-05\",\"{{delivery_date1}}\":\"05.04.2026\",\"{{delivery_time}}\":\"\",\"{{delivery_time1}}\":null,\"{{place_on}}\":\"Place on s\\u00f8n., april 5, 2026 13:08\",\"{{place_on_raw}}\":\"s\\u00f8n., april 5, 2026 13:08\",\"{{place_on_date}}\":\"s\\u00f8n., april 5, 2026\",\"{{paid_on}}\":\"Paid on s\\u00f8n., april 5, 2026 13:08\",\"{{place_datetime}}\":\"05.04.2026 01:08\",\"{{order_version}}\":\"1\",\"{{complete_delivery_address}}\":\"\",\"{{delivery_address}}\":\"\",\"{{address1}}\":\"\",\"{{address2}}\":\"\",\"{{address_format_use}}\":1,\"{{postal_code}}\":\"\",\"{{company}}\":\"\",\"{{customer_name}}\":\"Jawad Khan\",\"{{contact_number}}\":\"+4512345678\",\"{{contact_email}}\":\"info@chickennchicken.dk\",\"{{include_utensils}}\":\"\",\"{{longitude}}\":\"12.32663123\",\"{{latitude}}\":\"55.59893609\",\"{{rejetion_reason}}\":\"\",\"{{delayed_order}}\":\"\",\"{{delayed_order_mins}}\":\"\",\"{{order_change}}\":0,\"{{order_notes}}\":\"\",\"{{receive_amount}}\":0,\"{{tracking_link}}\":\"http:\\/\\/localhost\\/orders\\/index?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{address_label}}\":\"\",\"{{delivery_options}}\":\"\",\"{{location_name}}\":\"\",\"{{payment_change}}\":0,\"{{payment_change_pretty}}\":\"0 kr\",\"{{receive_amount_pretty}}\":0,\"{{driver_id}}\":0,\"{{order_otp}}\":\"882234\",\"{{timezone}}\":\"Europe\\/Copenhagen\",\"{{delivery_instructions}}\":\"\",\"{{upload_deposit_link}}\":\"\",\"{{points_to_earn}}\":0,\"{{points_label}}\":\"\",\"{{points_label2}}\":\"\",\"{{points_label3}}\":\"\",\"{{total_items}}\":\"2\",\"{{total_items1}}\":\"2 item(s)\",\"{{view_order_link}}\":\"http:\\/\\/localhost\\/backoffice\\/orders\\/view\\/order_uuid\\/b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{custom_field1}}\":\"\",\"{{custom_field2}}\":\"\",\"{{preparation_time_estimation}}\":\"10 minutes\",\"{{preparation_time_estimation_raw}}\":10,\"{{order_accepted_at}}\":null,\"{{order_accepted_at_raw}}\":null,\"{{preparation_starts}}\":null,\"{{delivery_time_estimation}}\":0,\"{{total_estimate_time}}\":10,\"{{estimated_time}}\":\"1:18 - 1:23 PM\",\"{{is_order_ongoing}}\":true,\"{{is_order_late}}\":false,\"{{is_order_need_cancellation}}\":false,\"{{is_preparation_late}}\":false,\"{{is_driver_delivering_late}}\":false,\"{{is_arrived_at_customer}}\":false,\"{{late_notification_sent}}\":0,\"{{preparation_late_sent}}\":0,\"{{delivering_late_sent}}\":0,\"{{send_to_whatsapp}}\":\"http:\\/\\/localhost\\/api\\/sendtowhatsapp?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{merchant_uuid}}\":\"bf9c1843-3031-11f1-86f1-4ab0e3a8062d\",\"{{restaurant_name}}\":\"Chicken N Chicken Waves\",\"{{restaurant_slug}}\":\"chicken-n-chicken\",\"{{address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\",\"{{distance_unit}}\":\"km\",\"{{delivery_distance_covered}}\":15,\"{{merchant_type}}\":2,\"{{commision_type}}\":\"\",\"{{allowed_offline_payment}}\":0,\"{{invoice_terms}}\":0,\"{{logo}}\":\"logo.png\",\"{{path}}\":\"upload\\/merchant\\/1\\/\",\"{{contact_phone}}\":\"\",\"{{cuisine_name}}\":\"\",\"{{url_logo}}\":\"http:\\/\\/localhost\\/upload\\/merchant\\/1\\/\\/logo.png\",\"{{restaurant_url}}\":\"http:\\/\\/localhost\\/chicken-n-chicken\",\"{{restaurant_direction}}\":\"https:\\/\\/www.google.com\\/maps\\/dir\\/?api=1&destination=55.59893609,12.32663123\",\"{{cuisine}}\":[{\"cuisine_name\":\"\",\"bgcolor\":\"#ffd966\",\"fncolor\":\"#000\"}],\"{{merchant_address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\"}','{\"page\":\"order-view\",\"order_uuid\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"status\":\"new\",\"request_from\":\"web\"}','image','logo.png','upload/merchant/1/','pending',NULL,1,0,'2026-04-05 13:08:09','127.0.0.1'),('bac1ff66-30df-11f1-b058-9a79972e1847','admin-channel','notification-event','order_update','Order#{{order_id}} from {{customer_name}}','{\"{{client_id}}\":2,\"{{merchant_id}}\":1,\"{{order_id}}\":10006,\"{{order_id1}}\":\"Order #10006\",\"{{order_uuid}}\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{order_reference}}\":\"\",\"{{request_from}}\":\"web\",\"{{sub_total}}\":\"53.0000\",\"{{pretty_sub_total}}\":\"53 kr\",\"{{total}}\":\"53.0000\",\"{{total_original}}\":\"53.0000\",\"{{pretty_total}}\":\"53 kr\",\"{{amount_due_raw}}\":0,\"{{amount_due}}\":\"0 kr\",\"{{wallet_amount_raw}}\":0,\"{{wallet_amount}}\":\"0 kr\",\"{{commission}}\":\"0.00\",\"{{delivery_fee}}\":\"0.0000\",\"{{pretty_delivery_fee}}\":\"0 kr\",\"{{use_currency_code}}\":\"DKK\",\"{{base_currency_code}}\":\"DKK\",\"{{exchange_rate}}\":1,\"{{admin_base_currency}}\":\"DKK\",\"{{exchange_rate_use_currency_to_admin}}\":\"1.0000\",\"{{exchange_rate_merchant_to_admin}}\":1,\"{{exchange_rate_admin_to_merchant}}\":1,\"{{total_exchange_rate_use_currency_to_admin}}\":53,\"{{total_exchange_rate_use_currency_to_admin_pretty}}\":\"53,00 kr\",\"{{total_from_used_currency_to_based_currency}}\":53,\"{{total_from_used_currency_to_based_currency_pretty}}\":\"53,00 kr\",\"{{total_from_merchant_to_admin_currency}}\":53,\"{{total_from_merchant_to_admin_currency_pretty}}\":\"53,00 kr\",\"{{status}}\":\"new\",\"{{status1}}\":\"new\",\"{{flow_status}}\":\"draft\",\"{{flow_status1}}\":\"DRAFT\",\"{{flow_status_completed}}\":false,\"{{cannot_voided}}\":false,\"{{is_completed}}\":false,\"{{is_order_failed}}\":false,\"{{is_timepreparation}}\":true,\"{{delivery_status}}\":\"unassigned\",\"{{payment_status}}\":\"paid\",\"{{payment_status1}}\":\"Paid\",\"{{payment_code}}\":\"stripe\",\"{{payment_name}}\":\"Paid by Kort\",\"{{payment_name1}}\":\"Kort\",\"{{payment_by_wallet}}\":\"Paid by Digital Wallet\",\"{{order_type}}\":\"pickup\",\"{{order_type1}}\":\"Afhentning\",\"{{whento_deliver}}\":\"now\",\"{{schedule_at}}\":\"Asap\",\"{{delivery_date}}\":\"2026-04-05\",\"{{delivery_date1}}\":\"05.04.2026\",\"{{delivery_time}}\":\"\",\"{{delivery_time1}}\":null,\"{{place_on}}\":\"Place on s\\u00f8n., april 5, 2026 13:08\",\"{{place_on_raw}}\":\"s\\u00f8n., april 5, 2026 13:08\",\"{{place_on_date}}\":\"s\\u00f8n., april 5, 2026\",\"{{paid_on}}\":\"Paid on s\\u00f8n., april 5, 2026 13:08\",\"{{place_datetime}}\":\"05.04.2026 01:08\",\"{{order_version}}\":\"1\",\"{{complete_delivery_address}}\":\"\",\"{{delivery_address}}\":\"\",\"{{address1}}\":\"\",\"{{address2}}\":\"\",\"{{address_format_use}}\":1,\"{{postal_code}}\":\"\",\"{{company}}\":\"\",\"{{customer_name}}\":\"Jawad Khan\",\"{{contact_number}}\":\"+4512345678\",\"{{contact_email}}\":\"info@chickennchicken.dk\",\"{{include_utensils}}\":\"\",\"{{longitude}}\":\"12.32663123\",\"{{latitude}}\":\"55.59893609\",\"{{rejetion_reason}}\":\"\",\"{{delayed_order}}\":\"\",\"{{delayed_order_mins}}\":\"\",\"{{order_change}}\":0,\"{{order_notes}}\":\"\",\"{{receive_amount}}\":0,\"{{tracking_link}}\":\"http:\\/\\/localhost\\/orders\\/index?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{address_label}}\":\"\",\"{{delivery_options}}\":\"\",\"{{location_name}}\":\"\",\"{{payment_change}}\":0,\"{{payment_change_pretty}}\":\"0 kr\",\"{{receive_amount_pretty}}\":0,\"{{driver_id}}\":0,\"{{order_otp}}\":\"882234\",\"{{timezone}}\":\"Europe\\/Copenhagen\",\"{{delivery_instructions}}\":\"\",\"{{upload_deposit_link}}\":\"\",\"{{points_to_earn}}\":0,\"{{points_label}}\":\"\",\"{{points_label2}}\":\"\",\"{{points_label3}}\":\"\",\"{{total_items}}\":\"2\",\"{{total_items1}}\":\"2 item(s)\",\"{{view_order_link}}\":\"http:\\/\\/localhost\\/backoffice\\/orders\\/view\\/order_uuid\\/b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{custom_field1}}\":\"\",\"{{custom_field2}}\":\"\",\"{{preparation_time_estimation}}\":\"10 minutes\",\"{{preparation_time_estimation_raw}}\":10,\"{{order_accepted_at}}\":null,\"{{order_accepted_at_raw}}\":null,\"{{preparation_starts}}\":null,\"{{delivery_time_estimation}}\":0,\"{{total_estimate_time}}\":10,\"{{estimated_time}}\":\"1:18 - 1:23 PM\",\"{{is_order_ongoing}}\":true,\"{{is_order_late}}\":false,\"{{is_order_need_cancellation}}\":false,\"{{is_preparation_late}}\":false,\"{{is_driver_delivering_late}}\":false,\"{{is_arrived_at_customer}}\":false,\"{{late_notification_sent}}\":0,\"{{preparation_late_sent}}\":0,\"{{delivering_late_sent}}\":0,\"{{send_to_whatsapp}}\":\"http:\\/\\/localhost\\/api\\/sendtowhatsapp?order_uuid=b9b230c2-30df-11f1-b058-9a79972e1847\",\"{{merchant_uuid}}\":\"bf9c1843-3031-11f1-86f1-4ab0e3a8062d\",\"{{restaurant_name}}\":\"Chicken N Chicken Waves\",\"{{restaurant_slug}}\":\"chicken-n-chicken\",\"{{address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\",\"{{distance_unit}}\":\"km\",\"{{delivery_distance_covered}}\":15,\"{{merchant_type}}\":2,\"{{commision_type}}\":\"\",\"{{allowed_offline_payment}}\":0,\"{{invoice_terms}}\":0,\"{{logo}}\":\"logo.png\",\"{{path}}\":\"upload\\/merchant\\/1\\/\",\"{{contact_phone}}\":\"\",\"{{cuisine_name}}\":\"\",\"{{url_logo}}\":\"http:\\/\\/localhost\\/upload\\/merchant\\/1\\/\\/logo.png\",\"{{restaurant_url}}\":\"http:\\/\\/localhost\\/chicken-n-chicken\",\"{{restaurant_direction}}\":\"https:\\/\\/www.google.com\\/maps\\/dir\\/?api=1&destination=55.59893609,12.32663123\",\"{{cuisine}}\":[{\"cuisine_name\":\"\",\"bgcolor\":\"#ffd966\",\"fncolor\":\"#000\"}],\"{{merchant_address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\"}','{\"page\":\"order-view\",\"order_uuid\":\"b9b230c2-30df-11f1-b058-9a79972e1847\",\"status\":\"new\",\"request_from\":\"web\"}','image','logo.png','upload/merchant/1/','pending',NULL,1,0,'2026-04-05 13:08:09','127.0.0.1'),('fd7303d5-30c9-11f1-b058-9a79972e1847','d02f1252-3056-11f1-86f1-4ab0e3a8062d','notification-event','order_update','Order Being Processed #{{order_info.order_id}}','{\"{{client_id}}\":2,\"{{merchant_id}}\":1,\"{{order_id}}\":10005,\"{{order_id1}}\":\"Order #10005\",\"{{order_uuid}}\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{order_reference}}\":\"\",\"{{request_from}}\":\"web\",\"{{sub_total}}\":\"47.0000\",\"{{pretty_sub_total}}\":\"47 kr\",\"{{total}}\":\"47.0000\",\"{{total_original}}\":\"47.0000\",\"{{pretty_total}}\":\"47 kr\",\"{{amount_due_raw}}\":0,\"{{amount_due}}\":\"0 kr\",\"{{wallet_amount_raw}}\":0,\"{{wallet_amount}}\":\"0 kr\",\"{{commission}}\":\"0.00\",\"{{delivery_fee}}\":\"0.0000\",\"{{pretty_delivery_fee}}\":\"0 kr\",\"{{use_currency_code}}\":\"DKK\",\"{{base_currency_code}}\":\"DKK\",\"{{exchange_rate}}\":1,\"{{admin_base_currency}}\":\"DKK\",\"{{exchange_rate_use_currency_to_admin}}\":\"1.0000\",\"{{exchange_rate_merchant_to_admin}}\":1,\"{{exchange_rate_admin_to_merchant}}\":1,\"{{total_exchange_rate_use_currency_to_admin}}\":47,\"{{total_exchange_rate_use_currency_to_admin_pretty}}\":\"47,00 kr\",\"{{total_from_used_currency_to_based_currency}}\":47,\"{{total_from_used_currency_to_based_currency_pretty}}\":\"47,00 kr\",\"{{total_from_merchant_to_admin_currency}}\":47,\"{{total_from_merchant_to_admin_currency_pretty}}\":\"47,00 kr\",\"{{status}}\":\"new\",\"{{status1}}\":\"new\",\"{{flow_status}}\":\"draft\",\"{{flow_status1}}\":\"DRAFT\",\"{{flow_status_completed}}\":false,\"{{cannot_voided}}\":false,\"{{is_completed}}\":false,\"{{is_order_failed}}\":false,\"{{is_timepreparation}}\":true,\"{{delivery_status}}\":\"unassigned\",\"{{payment_status}}\":\"paid\",\"{{payment_status1}}\":\"Paid\",\"{{payment_code}}\":\"stripe\",\"{{payment_name}}\":\"Paid by Kort\",\"{{payment_name1}}\":\"Kort\",\"{{payment_by_wallet}}\":\"Paid by Digital Wallet\",\"{{order_type}}\":\"pickup\",\"{{order_type1}}\":\"Afhentning\",\"{{whento_deliver}}\":\"now\",\"{{schedule_at}}\":\"Asap\",\"{{delivery_date}}\":\"2026-04-05\",\"{{delivery_date1}}\":\"05.04.2026\",\"{{delivery_time}}\":\"\",\"{{delivery_time1}}\":null,\"{{place_on}}\":\"Place on s\\u00f8n., april 5, 2026 10:32\",\"{{place_on_raw}}\":\"s\\u00f8n., april 5, 2026 10:32\",\"{{place_on_date}}\":\"s\\u00f8n., april 5, 2026\",\"{{paid_on}}\":\"Paid on s\\u00f8n., april 5, 2026 10:32\",\"{{place_datetime}}\":\"05.04.2026 10:32\",\"{{order_version}}\":\"1\",\"{{complete_delivery_address}}\":\"\",\"{{delivery_address}}\":\"\",\"{{address1}}\":\"\",\"{{address2}}\":\"\",\"{{address_format_use}}\":1,\"{{postal_code}}\":\"\",\"{{company}}\":\"\",\"{{customer_name}}\":\"Jawad Khan\",\"{{contact_number}}\":\"+4512345678\",\"{{contact_email}}\":\"info@chickennchicken.dk\",\"{{include_utensils}}\":\"\",\"{{longitude}}\":\"12.32663123\",\"{{latitude}}\":\"55.59893609\",\"{{rejetion_reason}}\":\"\",\"{{delayed_order}}\":\"\",\"{{delayed_order_mins}}\":\"\",\"{{order_change}}\":0,\"{{order_notes}}\":\"\",\"{{receive_amount}}\":0,\"{{tracking_link}}\":\"http:\\/\\/localhost\\/orders\\/index?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{address_label}}\":\"\",\"{{delivery_options}}\":\"\",\"{{location_name}}\":\"\",\"{{payment_change}}\":0,\"{{payment_change_pretty}}\":\"0 kr\",\"{{receive_amount_pretty}}\":0,\"{{driver_id}}\":0,\"{{order_otp}}\":\"445178\",\"{{timezone}}\":\"Europe\\/Copenhagen\",\"{{delivery_instructions}}\":\"\",\"{{upload_deposit_link}}\":\"\",\"{{points_to_earn}}\":0,\"{{points_label}}\":\"\",\"{{points_label2}}\":\"\",\"{{points_label3}}\":\"\",\"{{total_items}}\":\"1\",\"{{total_items1}}\":\"1 item\",\"{{view_order_link}}\":\"http:\\/\\/localhost\\/backoffice\\/orders\\/view\\/order_uuid\\/fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{custom_field1}}\":\"\",\"{{custom_field2}}\":\"\",\"{{preparation_time_estimation}}\":\"10 minutes\",\"{{preparation_time_estimation_raw}}\":10,\"{{order_accepted_at}}\":null,\"{{order_accepted_at_raw}}\":null,\"{{preparation_starts}}\":null,\"{{delivery_time_estimation}}\":0,\"{{total_estimate_time}}\":10,\"{{estimated_time}}\":\"10:42 - 10:47 AM\",\"{{is_order_ongoing}}\":true,\"{{is_order_late}}\":false,\"{{is_order_need_cancellation}}\":false,\"{{is_preparation_late}}\":false,\"{{is_driver_delivering_late}}\":false,\"{{is_arrived_at_customer}}\":false,\"{{late_notification_sent}}\":0,\"{{preparation_late_sent}}\":0,\"{{delivering_late_sent}}\":0,\"{{send_to_whatsapp}}\":\"http:\\/\\/localhost\\/api\\/sendtowhatsapp?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{merchant_uuid}}\":\"bf9c1843-3031-11f1-86f1-4ab0e3a8062d\",\"{{restaurant_name}}\":\"Chicken N Chicken\",\"{{restaurant_slug}}\":\"chicken-n-chicken\",\"{{address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\",\"{{distance_unit}}\":\"km\",\"{{delivery_distance_covered}}\":15,\"{{merchant_type}}\":2,\"{{commision_type}}\":\"\",\"{{allowed_offline_payment}}\":0,\"{{invoice_terms}}\":0,\"{{logo}}\":\"logo.png\",\"{{path}}\":\"upload\\/merchant\\/1\\/\",\"{{contact_phone}}\":\"\",\"{{cuisine_name}}\":\"\",\"{{url_logo}}\":\"http:\\/\\/localhost\\/upload\\/merchant\\/1\\/\\/logo.png\",\"{{restaurant_url}}\":\"http:\\/\\/localhost\\/chicken-n-chicken\",\"{{restaurant_direction}}\":\"https:\\/\\/www.google.com\\/maps\\/dir\\/?api=1&destination=55.59893609,12.32663123\",\"{{cuisine}}\":[{\"cuisine_name\":\"\",\"bgcolor\":\"#ffd966\",\"fncolor\":\"#000\"}],\"{{merchant_address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\"}','{\"page\":\"order-view\",\"order_uuid\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"status\":\"new\",\"request_from\":\"web\"}','image','logo.png','upload/merchant/1/','pending',NULL,1,0,'2026-04-05 10:32:32','127.0.0.1'),('fd766249-30c9-11f1-b058-9a79972e1847','bf9c1843-3031-11f1-86f1-4ab0e3a8062d','notification-event','order_update','Order#{{order_id}} from {{customer_name}}','{\"{{client_id}}\":2,\"{{merchant_id}}\":1,\"{{order_id}}\":10005,\"{{order_id1}}\":\"Order #10005\",\"{{order_uuid}}\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{order_reference}}\":\"\",\"{{request_from}}\":\"web\",\"{{sub_total}}\":\"47.0000\",\"{{pretty_sub_total}}\":\"47 kr\",\"{{total}}\":\"47.0000\",\"{{total_original}}\":\"47.0000\",\"{{pretty_total}}\":\"47 kr\",\"{{amount_due_raw}}\":0,\"{{amount_due}}\":\"0 kr\",\"{{wallet_amount_raw}}\":0,\"{{wallet_amount}}\":\"0 kr\",\"{{commission}}\":\"0.00\",\"{{delivery_fee}}\":\"0.0000\",\"{{pretty_delivery_fee}}\":\"0 kr\",\"{{use_currency_code}}\":\"DKK\",\"{{base_currency_code}}\":\"DKK\",\"{{exchange_rate}}\":1,\"{{admin_base_currency}}\":\"DKK\",\"{{exchange_rate_use_currency_to_admin}}\":\"1.0000\",\"{{exchange_rate_merchant_to_admin}}\":1,\"{{exchange_rate_admin_to_merchant}}\":1,\"{{total_exchange_rate_use_currency_to_admin}}\":47,\"{{total_exchange_rate_use_currency_to_admin_pretty}}\":\"47,00 kr\",\"{{total_from_used_currency_to_based_currency}}\":47,\"{{total_from_used_currency_to_based_currency_pretty}}\":\"47,00 kr\",\"{{total_from_merchant_to_admin_currency}}\":47,\"{{total_from_merchant_to_admin_currency_pretty}}\":\"47,00 kr\",\"{{status}}\":\"new\",\"{{status1}}\":\"new\",\"{{flow_status}}\":\"draft\",\"{{flow_status1}}\":\"DRAFT\",\"{{flow_status_completed}}\":false,\"{{cannot_voided}}\":false,\"{{is_completed}}\":false,\"{{is_order_failed}}\":false,\"{{is_timepreparation}}\":true,\"{{delivery_status}}\":\"unassigned\",\"{{payment_status}}\":\"paid\",\"{{payment_status1}}\":\"Paid\",\"{{payment_code}}\":\"stripe\",\"{{payment_name}}\":\"Paid by Kort\",\"{{payment_name1}}\":\"Kort\",\"{{payment_by_wallet}}\":\"Paid by Digital Wallet\",\"{{order_type}}\":\"pickup\",\"{{order_type1}}\":\"Afhentning\",\"{{whento_deliver}}\":\"now\",\"{{schedule_at}}\":\"Asap\",\"{{delivery_date}}\":\"2026-04-05\",\"{{delivery_date1}}\":\"05.04.2026\",\"{{delivery_time}}\":\"\",\"{{delivery_time1}}\":null,\"{{place_on}}\":\"Place on s\\u00f8n., april 5, 2026 10:32\",\"{{place_on_raw}}\":\"s\\u00f8n., april 5, 2026 10:32\",\"{{place_on_date}}\":\"s\\u00f8n., april 5, 2026\",\"{{paid_on}}\":\"Paid on s\\u00f8n., april 5, 2026 10:32\",\"{{place_datetime}}\":\"05.04.2026 10:32\",\"{{order_version}}\":\"1\",\"{{complete_delivery_address}}\":\"\",\"{{delivery_address}}\":\"\",\"{{address1}}\":\"\",\"{{address2}}\":\"\",\"{{address_format_use}}\":1,\"{{postal_code}}\":\"\",\"{{company}}\":\"\",\"{{customer_name}}\":\"Jawad Khan\",\"{{contact_number}}\":\"+4512345678\",\"{{contact_email}}\":\"info@chickennchicken.dk\",\"{{include_utensils}}\":\"\",\"{{longitude}}\":\"12.32663123\",\"{{latitude}}\":\"55.59893609\",\"{{rejetion_reason}}\":\"\",\"{{delayed_order}}\":\"\",\"{{delayed_order_mins}}\":\"\",\"{{order_change}}\":0,\"{{order_notes}}\":\"\",\"{{receive_amount}}\":0,\"{{tracking_link}}\":\"http:\\/\\/localhost\\/orders\\/index?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{address_label}}\":\"\",\"{{delivery_options}}\":\"\",\"{{location_name}}\":\"\",\"{{payment_change}}\":0,\"{{payment_change_pretty}}\":\"0 kr\",\"{{receive_amount_pretty}}\":0,\"{{driver_id}}\":0,\"{{order_otp}}\":\"445178\",\"{{timezone}}\":\"Europe\\/Copenhagen\",\"{{delivery_instructions}}\":\"\",\"{{upload_deposit_link}}\":\"\",\"{{points_to_earn}}\":0,\"{{points_label}}\":\"\",\"{{points_label2}}\":\"\",\"{{points_label3}}\":\"\",\"{{total_items}}\":\"1\",\"{{total_items1}}\":\"1 item\",\"{{view_order_link}}\":\"http:\\/\\/localhost\\/backoffice\\/orders\\/view\\/order_uuid\\/fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{custom_field1}}\":\"\",\"{{custom_field2}}\":\"\",\"{{preparation_time_estimation}}\":\"10 minutes\",\"{{preparation_time_estimation_raw}}\":10,\"{{order_accepted_at}}\":null,\"{{order_accepted_at_raw}}\":null,\"{{preparation_starts}}\":null,\"{{delivery_time_estimation}}\":0,\"{{total_estimate_time}}\":10,\"{{estimated_time}}\":\"10:42 - 10:47 AM\",\"{{is_order_ongoing}}\":true,\"{{is_order_late}}\":false,\"{{is_order_need_cancellation}}\":false,\"{{is_preparation_late}}\":false,\"{{is_driver_delivering_late}}\":false,\"{{is_arrived_at_customer}}\":false,\"{{late_notification_sent}}\":0,\"{{preparation_late_sent}}\":0,\"{{delivering_late_sent}}\":0,\"{{send_to_whatsapp}}\":\"http:\\/\\/localhost\\/api\\/sendtowhatsapp?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{merchant_uuid}}\":\"bf9c1843-3031-11f1-86f1-4ab0e3a8062d\",\"{{restaurant_name}}\":\"Chicken N Chicken\",\"{{restaurant_slug}}\":\"chicken-n-chicken\",\"{{address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\",\"{{distance_unit}}\":\"km\",\"{{delivery_distance_covered}}\":15,\"{{merchant_type}}\":2,\"{{commision_type}}\":\"\",\"{{allowed_offline_payment}}\":0,\"{{invoice_terms}}\":0,\"{{logo}}\":\"logo.png\",\"{{path}}\":\"upload\\/merchant\\/1\\/\",\"{{contact_phone}}\":\"\",\"{{cuisine_name}}\":\"\",\"{{url_logo}}\":\"http:\\/\\/localhost\\/upload\\/merchant\\/1\\/\\/logo.png\",\"{{restaurant_url}}\":\"http:\\/\\/localhost\\/chicken-n-chicken\",\"{{restaurant_direction}}\":\"https:\\/\\/www.google.com\\/maps\\/dir\\/?api=1&destination=55.59893609,12.32663123\",\"{{cuisine}}\":[{\"cuisine_name\":\"\",\"bgcolor\":\"#ffd966\",\"fncolor\":\"#000\"}],\"{{merchant_address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\"}','{\"page\":\"order-view\",\"order_uuid\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"status\":\"new\",\"request_from\":\"web\"}','image','logo.png','upload/merchant/1/','pending',NULL,1,0,'2026-04-05 10:32:32','127.0.0.1'),('fd781d30-30c9-11f1-b058-9a79972e1847','admin-channel','notification-event','order_update','Order#{{order_id}} from {{customer_name}}','{\"{{client_id}}\":2,\"{{merchant_id}}\":1,\"{{order_id}}\":10005,\"{{order_id1}}\":\"Order #10005\",\"{{order_uuid}}\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{order_reference}}\":\"\",\"{{request_from}}\":\"web\",\"{{sub_total}}\":\"47.0000\",\"{{pretty_sub_total}}\":\"47 kr\",\"{{total}}\":\"47.0000\",\"{{total_original}}\":\"47.0000\",\"{{pretty_total}}\":\"47 kr\",\"{{amount_due_raw}}\":0,\"{{amount_due}}\":\"0 kr\",\"{{wallet_amount_raw}}\":0,\"{{wallet_amount}}\":\"0 kr\",\"{{commission}}\":\"0.00\",\"{{delivery_fee}}\":\"0.0000\",\"{{pretty_delivery_fee}}\":\"0 kr\",\"{{use_currency_code}}\":\"DKK\",\"{{base_currency_code}}\":\"DKK\",\"{{exchange_rate}}\":1,\"{{admin_base_currency}}\":\"DKK\",\"{{exchange_rate_use_currency_to_admin}}\":\"1.0000\",\"{{exchange_rate_merchant_to_admin}}\":1,\"{{exchange_rate_admin_to_merchant}}\":1,\"{{total_exchange_rate_use_currency_to_admin}}\":47,\"{{total_exchange_rate_use_currency_to_admin_pretty}}\":\"47,00 kr\",\"{{total_from_used_currency_to_based_currency}}\":47,\"{{total_from_used_currency_to_based_currency_pretty}}\":\"47,00 kr\",\"{{total_from_merchant_to_admin_currency}}\":47,\"{{total_from_merchant_to_admin_currency_pretty}}\":\"47,00 kr\",\"{{status}}\":\"new\",\"{{status1}}\":\"new\",\"{{flow_status}}\":\"draft\",\"{{flow_status1}}\":\"DRAFT\",\"{{flow_status_completed}}\":false,\"{{cannot_voided}}\":false,\"{{is_completed}}\":false,\"{{is_order_failed}}\":false,\"{{is_timepreparation}}\":true,\"{{delivery_status}}\":\"unassigned\",\"{{payment_status}}\":\"paid\",\"{{payment_status1}}\":\"Paid\",\"{{payment_code}}\":\"stripe\",\"{{payment_name}}\":\"Paid by Kort\",\"{{payment_name1}}\":\"Kort\",\"{{payment_by_wallet}}\":\"Paid by Digital Wallet\",\"{{order_type}}\":\"pickup\",\"{{order_type1}}\":\"Afhentning\",\"{{whento_deliver}}\":\"now\",\"{{schedule_at}}\":\"Asap\",\"{{delivery_date}}\":\"2026-04-05\",\"{{delivery_date1}}\":\"05.04.2026\",\"{{delivery_time}}\":\"\",\"{{delivery_time1}}\":null,\"{{place_on}}\":\"Place on s\\u00f8n., april 5, 2026 10:32\",\"{{place_on_raw}}\":\"s\\u00f8n., april 5, 2026 10:32\",\"{{place_on_date}}\":\"s\\u00f8n., april 5, 2026\",\"{{paid_on}}\":\"Paid on s\\u00f8n., april 5, 2026 10:32\",\"{{place_datetime}}\":\"05.04.2026 10:32\",\"{{order_version}}\":\"1\",\"{{complete_delivery_address}}\":\"\",\"{{delivery_address}}\":\"\",\"{{address1}}\":\"\",\"{{address2}}\":\"\",\"{{address_format_use}}\":1,\"{{postal_code}}\":\"\",\"{{company}}\":\"\",\"{{customer_name}}\":\"Jawad Khan\",\"{{contact_number}}\":\"+4512345678\",\"{{contact_email}}\":\"info@chickennchicken.dk\",\"{{include_utensils}}\":\"\",\"{{longitude}}\":\"12.32663123\",\"{{latitude}}\":\"55.59893609\",\"{{rejetion_reason}}\":\"\",\"{{delayed_order}}\":\"\",\"{{delayed_order_mins}}\":\"\",\"{{order_change}}\":0,\"{{order_notes}}\":\"\",\"{{receive_amount}}\":0,\"{{tracking_link}}\":\"http:\\/\\/localhost\\/orders\\/index?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{address_label}}\":\"\",\"{{delivery_options}}\":\"\",\"{{location_name}}\":\"\",\"{{payment_change}}\":0,\"{{payment_change_pretty}}\":\"0 kr\",\"{{receive_amount_pretty}}\":0,\"{{driver_id}}\":0,\"{{order_otp}}\":\"445178\",\"{{timezone}}\":\"Europe\\/Copenhagen\",\"{{delivery_instructions}}\":\"\",\"{{upload_deposit_link}}\":\"\",\"{{points_to_earn}}\":0,\"{{points_label}}\":\"\",\"{{points_label2}}\":\"\",\"{{points_label3}}\":\"\",\"{{total_items}}\":\"1\",\"{{total_items1}}\":\"1 item\",\"{{view_order_link}}\":\"http:\\/\\/localhost\\/backoffice\\/orders\\/view\\/order_uuid\\/fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{custom_field1}}\":\"\",\"{{custom_field2}}\":\"\",\"{{preparation_time_estimation}}\":\"10 minutes\",\"{{preparation_time_estimation_raw}}\":10,\"{{order_accepted_at}}\":null,\"{{order_accepted_at_raw}}\":null,\"{{preparation_starts}}\":null,\"{{delivery_time_estimation}}\":0,\"{{total_estimate_time}}\":10,\"{{estimated_time}}\":\"10:42 - 10:47 AM\",\"{{is_order_ongoing}}\":true,\"{{is_order_late}}\":false,\"{{is_order_need_cancellation}}\":false,\"{{is_preparation_late}}\":false,\"{{is_driver_delivering_late}}\":false,\"{{is_arrived_at_customer}}\":false,\"{{late_notification_sent}}\":0,\"{{preparation_late_sent}}\":0,\"{{delivering_late_sent}}\":0,\"{{send_to_whatsapp}}\":\"http:\\/\\/localhost\\/api\\/sendtowhatsapp?order_uuid=fc5886fe-30c9-11f1-b058-9a79972e1847\",\"{{merchant_uuid}}\":\"bf9c1843-3031-11f1-86f1-4ab0e3a8062d\",\"{{restaurant_name}}\":\"Chicken N Chicken\",\"{{restaurant_slug}}\":\"chicken-n-chicken\",\"{{address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\",\"{{distance_unit}}\":\"km\",\"{{delivery_distance_covered}}\":15,\"{{merchant_type}}\":2,\"{{commision_type}}\":\"\",\"{{allowed_offline_payment}}\":0,\"{{invoice_terms}}\":0,\"{{logo}}\":\"logo.png\",\"{{path}}\":\"upload\\/merchant\\/1\\/\",\"{{contact_phone}}\":\"\",\"{{cuisine_name}}\":\"\",\"{{url_logo}}\":\"http:\\/\\/localhost\\/upload\\/merchant\\/1\\/\\/logo.png\",\"{{restaurant_url}}\":\"http:\\/\\/localhost\\/chicken-n-chicken\",\"{{restaurant_direction}}\":\"https:\\/\\/www.google.com\\/maps\\/dir\\/?api=1&destination=55.59893609,12.32663123\",\"{{cuisine}}\":[{\"cuisine_name\":\"\",\"bgcolor\":\"#ffd966\",\"fncolor\":\"#000\"}],\"{{merchant_address}}\":\"Over B\\u00f8lgen 3, st. 1, 2670 Greve\"}','{\"page\":\"order-view\",\"order_uuid\":\"fc5886fe-30c9-11f1-b058-9a79972e1847\",\"status\":\"new\",\"request_from\":\"web\"}','image','logo.png','upload/merchant/1/','pending',NULL,1,0,'2026-04-05 10:32:32','127.0.0.1');
/*!40000 ALTER TABLE `st_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_offers`
--

DROP TABLE IF EXISTS `st_offers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_offers` (
  `offers_id` int(14) NOT NULL AUTO_INCREMENT,
  `offer_name` varchar(100) NOT NULL DEFAULT '',
  `offer_type` varchar(50) NOT NULL DEFAULT 'percentage',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `offer_percentage` float(14,4) NOT NULL DEFAULT 0.0000,
  `min_order` decimal(10,2) NOT NULL DEFAULT 0.00,
  `offer_price` float(14,4) NOT NULL DEFAULT 0.0000,
  `max_discount_cap` decimal(10,2) NOT NULL DEFAULT 0.00,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `applicable_to` varchar(100) NOT NULL DEFAULT 'all',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `visible` smallint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`offers_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`),
  KEY `visible` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_offers`
--

LOCK TABLES `st_offers` WRITE;
/*!40000 ALTER TABLE `st_offers` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_offers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_opening_hours`
--

DROP TABLE IF EXISTS `st_opening_hours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_opening_hours` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `time_config_type` varchar(50) NOT NULL DEFAULT 'regular_hours',
  `transaction_type` varchar(50) DEFAULT NULL,
  `day` varchar(20) DEFAULT '',
  `day_of_week` int(1) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'open',
  `start_time` varchar(14) NOT NULL DEFAULT '',
  `end_time` varchar(14) NOT NULL DEFAULT '',
  `start_time_pm` varchar(14) NOT NULL DEFAULT '',
  `end_time_pm` varchar(14) NOT NULL DEFAULT '',
  `custom_text` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `day` (`day`),
  KEY `status` (`status`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`),
  KEY `start_time_pm` (`start_time_pm`),
  KEY `end_time_pm` (`end_time_pm`),
  KEY `custom_text` (`custom_text`),
  KEY `day_of_week` (`day_of_week`),
  KEY `time_config_type` (`time_config_type`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_opening_hours`
--

LOCK TABLES `st_opening_hours` WRITE;
/*!40000 ALTER TABLE `st_opening_hours` DISABLE KEYS */;
INSERT INTO `st_opening_hours` VALUES (1,0,'regular_hours',NULL,'monday',1,'open','1:00','23:55','','','','2022-01-29 15:55:16'),(2,0,'regular_hours',NULL,'tuesday',2,'open','1:00','23:55','','','','2022-01-29 15:55:32'),(3,0,'regular_hours',NULL,'wednesday',3,'open','1:00','23:55','','','','2022-01-29 15:55:47'),(4,0,'regular_hours',NULL,'thursday',4,'open','1:00','23:55','','','','2022-01-29 15:56:04'),(5,0,'regular_hours',NULL,'friday',5,'open','1:00','23:55','','','','2022-01-29 15:56:16'),(6,0,'regular_hours',NULL,'saturday',6,'open','1:00','23:55','','','','2022-01-29 15:56:34'),(7,0,'regular_hours',NULL,'sunday',7,'open','1:00','23:55','','','','2022-01-29 15:56:48'),(22,1,'transaction_type','pickup','Monday',1,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(23,1,'transaction_type','pickup','Tuesday',2,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(24,1,'transaction_type','pickup','Wednesday',3,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(25,1,'transaction_type','pickup','Thursday',4,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(26,1,'transaction_type','pickup','Friday',5,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(27,1,'transaction_type','pickup','Saturday',6,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(28,1,'transaction_type','pickup','Sunday',0,'open','11:00','22:00','','','','2026-04-04 15:31:24'),(29,1,'regular_hours',NULL,'Monday',1,'open','11:00','22:00','','','','2026-04-04 17:40:57'),(30,1,'regular_hours',NULL,'Tuesday',2,'open','11:00','22:00','','','','2026-04-04 17:40:57'),(31,1,'regular_hours',NULL,'Wednesday',3,'open','11:00','22:00','','','','2026-04-04 17:40:57'),(32,1,'regular_hours',NULL,'Thursday',4,'open','11:00','22:00','','','','2026-04-04 17:40:57'),(33,1,'regular_hours',NULL,'Friday',5,'open','11:00','22:00','','','','2026-04-04 17:40:57'),(34,1,'regular_hours',NULL,'Saturday',6,'open','11:00','22:00','','','','2026-04-04 17:40:57'),(35,1,'regular_hours',NULL,'Sunday',0,'open','11:00','22:00','','','','2026-04-04 17:40:57');
/*!40000 ALTER TABLE `st_opening_hours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_option`
--

DROP TABLE IF EXISTS `st_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_option` (
  `id` int(14) unsigned NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `option_name` varchar(255) NOT NULL DEFAULT '',
  `option_value` text DEFAULT NULL,
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `option_name` (`option_name`),
  FULLTEXT KEY `option_value` (`option_value`)
) ENGINE=InnoDB AUTO_INCREMENT=35576 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_option`
--

LOCK TABLES `st_option` WRITE;
/*!40000 ALTER TABLE `st_option` DISABLE KEYS */;
INSERT INTO `st_option` VALUES (61,0,'disabled_website_ordering',NULL,'2022-01-27 07:44:32'),(62,0,'website_hide_foodprice',NULL,'2022-01-27 07:44:32'),(63,0,'website_disbaled_auto_cart',NULL,'2022-01-27 07:44:32'),(64,0,'website_disabled_cart_validation',NULL,'2022-01-27 07:44:32'),(65,0,'enabled_merchant_check_closing_time',NULL,'2022-01-27 07:44:32'),(66,0,'disabled_order_confirm_page',NULL,'2022-01-27 07:44:32'),(67,0,'restrict_order_by_status','','2022-01-27 07:44:32'),(68,0,'enabled_map_selection_delivery',NULL,'2022-01-27 07:44:32'),(69,0,'admin_service_fee',NULL,'2022-01-27 07:44:32'),(70,0,'admin_service_fee_applytax',NULL,'2022-01-27 07:44:32'),(71,0,'cancel_order_enabled','1','2022-01-27 07:44:32'),(72,0,'cancel_order_days_applied',NULL,'2022-01-27 07:44:32'),(73,0,'cancel_order_hours',NULL,'2022-01-27 07:44:32'),(74,0,'cancel_order_status_accepted','','2022-01-27 07:44:32'),(75,0,'website_review_approved_status',NULL,'2022-01-27 07:44:32'),(76,0,'enabled_website_ordering','1','2022-01-27 07:44:32'),(90,0,'merchant_enabled_registration','0','2022-01-27 07:45:47'),(91,0,'merchant_default_country','DK','2026-04-04 16:22:37'),(92,0,'merchant_specific_country','[\"DK\"]','2026-04-04 16:22:37'),(93,0,'pre_configure_size','small,medium,large','2022-01-27 07:45:47'),(94,0,'merchant_enabled_registration_capcha','0','2022-01-27 07:45:47'),(95,0,'registration_program','[\"2\",\"1\"]','2022-01-27 07:45:47'),(96,0,'registration_confirm_account_tpl','25','2022-01-27 07:45:47'),(97,0,'registration_welcome_tpl',NULL,'2022-01-27 07:45:47'),(98,0,'registration_terms_condition','By clicking \"Submit,\" you agree to <a href=\"\" class=\"text-green\">Karenderia General Terms and Conditions</a>\r\n     and acknowledge you have read the <a href=\"\" class=\"text-green\">Privacy Policy</a>.','2022-01-27 07:45:47'),(99,0,'merchant_registration_new_tpl','26','2022-01-27 07:45:47'),(100,0,'merchant_registration_welcome_tpl','24','2022-01-27 07:45:47'),(101,0,'merchant_plan_expired_tpl','27','2022-01-27 07:45:47'),(102,0,'merchant_plan_near_expired_tpl','28','2022-01-27 07:45:47'),(103,0,'website_title','Chicken N Chicken Waves','2026-04-04 16:22:37'),(104,0,'home_search_unit_type','km','2026-04-04 16:22:37'),(105,0,'map_provider','google.maps','2022-01-28 07:38:48'),(106,0,'google_geo_api_key','AIzaSyCL2EoyEg7aw6rVo90aIue6fmJgm8PcIAU','2022-01-28 07:38:48'),(107,0,'google_maps_api_key','AIzaSyCL2EoyEg7aw6rVo90aIue6fmJgm8PcIAU','2022-01-28 07:38:48'),(108,0,'mapbox_access_token','XXXX','2022-01-28 07:38:48'),(109,0,'signup_enabled_verification','0','2022-01-28 07:49:14'),(110,0,'signup_verification_type',NULL,'2022-01-28 07:49:14'),(111,0,'blocked_email_add','','2022-01-28 07:49:14'),(112,0,'blocked_mobile','','2022-01-28 07:49:14'),(113,0,'signup_type','email_address','2022-01-28 07:49:14'),(114,0,'signup_enabled_terms','0','2022-01-28 07:49:14'),(115,0,'signup_terms','By clicking \"Submit,\" you agree to <a href=\"\" class=\"text-green\">Karenderia General Terms and Conditions</a>\r\n	     and acknowledge you have read the <a href=\"\" class=\"text-green\">Privacy Policy</a>.','2022-01-28 07:49:14'),(116,0,'signup_enabled_capcha','0','2022-01-28 07:49:14'),(117,0,'signup_welcome_tpl','12','2022-01-28 07:49:14'),(118,0,'signup_verification_tpl','13','2022-01-28 07:49:14'),(119,0,'signup_resetpass_tpl','14','2022-01-28 07:49:14'),(120,0,'signup_resend_counter','','2022-01-28 07:49:14'),(121,0,'signupnew_tpl','19','2022-01-28 07:49:14'),(122,0,'image_resizing','1','2022-01-28 07:49:14'),(123,0,'backend_forgot_password_tpl','50','2026-04-04 14:09:07'),(124,0,'backend_version','2.0.7','2026-04-04 14:09:07'),(125,0,'enabled_home_steps','0','2026-04-04 14:09:07'),(126,0,'enabled_home_promotional','0','2026-04-04 14:09:07'),(127,0,'enabled_signup_section','0','2026-04-04 14:09:07'),(128,0,'enabled_mobileapp_section','0','2026-04-04 14:09:07'),(129,0,'enabled_social_links','0','2026-04-04 14:09:07'),(130,0,'booking_tpl_reservation_canceled','38','2026-04-04 14:09:07'),(131,0,'booking_tpl_reservation_denied','38','2026-04-04 14:09:07'),(132,0,'booking_tpl_reservation_finished','38','2026-04-04 14:09:07'),(133,0,'booking_tpl_reservation_no_show','38','2026-04-04 14:09:07'),(134,0,'booking_tpl_reservation_confirmed','37','2026-04-04 14:09:07'),(135,0,'booking_tpl_reservation_requested','36','2026-04-04 14:09:07'),(136,0,'cookie_theme_mode','light','2026-04-04 14:09:07'),(137,0,'cookie_position','bottom_right','2026-04-04 14:09:07'),(138,0,'cookie_expiration','365','2026-04-04 14:09:07'),(139,0,'cookie_title','Cookie Consent','2026-04-04 14:09:07'),(140,0,'cookie_link_accept_button','Accept','2026-04-04 14:09:07'),(141,0,'cookie_link_reject_button','Decline','2026-04-04 14:09:07'),(142,0,'cookie_message','This website uses cookies or similar technologies, to enhance your browsing experience and provide personalized recommendations. By continuing to use our website, you agree to our {{privacy_policy_link}}','2026-04-04 14:09:07'),(143,0,'runactions_enabled','1','2026-04-04 14:09:07'),(144,0,'menu_layout','left_image','2026-04-04 14:09:07'),(34972,0,'driver_alert_time','5','2024-12-16 18:01:49'),(34974,0,'driver_allowed_number_task','2','2024-12-16 18:01:49'),(34976,0,'driver_map_enabled_cluster','1','2024-12-16 18:01:49'),(34982,0,'driver_time_allowed_accept_order','1','2024-12-16 18:01:49'),(34983,0,'driver_enabled_time_allowed_acceptance','1','2024-12-16 18:01:49'),(34984,0,'driver_missed_order_tpl','42','2024-12-16 18:01:49'),(34986,0,'driver_order_otp_tpl','43','2024-12-16 18:01:49'),(34994,0,'driver_on_demand_availability','1','2024-12-16 18:01:49'),(34996,0,'driver_auto_assign_retry','1','2024-12-16 18:01:49'),(34997,0,'driver_assign_max_retry','1','2024-12-16 18:01:49'),(35532,0,'driver_sendcode_via','email','2024-12-30 23:12:19'),(35534,0,'driver_sendcode_tpl','32','2024-12-30 23:12:19'),(35535,0,'driver_signup_terms_condition','By clicking \"Submit,\" you agree to <a href=\"\" class=\"text-green\">Karenderia General Terms and Conditions</a>\r\n	     and acknowledge you have read the <a href=\"\" class=\"text-green\">Privacy Policy</a>.','2024-12-30 23:12:19'),(35536,0,'driver_employment_type','contractor','2024-12-30 23:12:19'),(35537,0,'driver_salary_type','delivery_fee','2024-12-30 23:12:19'),(35543,0,'driver_enabled_registration','1','2024-12-30 23:12:19'),(35544,0,'website_logo','cnc-logo.png','2026-04-04 14:43:08'),(35545,0,'admin_currency_code','DKK','2026-04-04 14:45:13'),(35546,0,'admin_currency_symbol','kr','2026-04-04 14:45:13'),(35547,0,'admin_currency_position','right','2026-04-04 14:45:13'),(35548,0,'website_language','da','2026-04-04 14:56:03'),(35550,0,'signup_default_country','dk','2026-04-04 18:31:51'),(35551,0,'phone_default_country','dk','2026-04-04 18:31:51'),(35552,0,'default_country_code','+45','2026-04-04 18:31:51'),(35553,0,'mobilephone_settings_default_country','dk','2026-04-04 18:32:48'),(35554,0,'mobilephone_settings_country','[\"dk\"]','2026-04-04 18:32:48'),(35555,0,'email_provider','smtp','2026-04-04 18:41:12'),(35556,0,'smtp_host','smtp.resend.com','2026-04-04 18:41:12'),(35557,0,'smtp_port','587','2026-04-04 18:41:12'),(35558,0,'smtp_username','resend','2026-04-04 18:41:12'),(35559,0,'smtp_password','re_AJWRZn2g_76rYA75AszGvQjjLZTcL6oy5','2026-04-04 18:41:12'),(35560,0,'smtp_secure','tls','2026-04-04 18:41:12'),(35561,0,'email_sender_name','Chicken N Chicken Waves','2026-04-04 18:41:12'),(35562,0,'email_sender_email','ordre@chickenwaves.dk','2026-04-04 18:41:12'),(35563,0,'website_timezone_new','Europe/Copenhagen','2026-04-04 19:03:16'),(35564,0,'website_date_format_new','EEE, MMMM d, y','2026-04-04 19:03:16'),(35565,0,'website_time_format_new','HH:mm','2026-04-04 19:03:16'),(35566,0,'website_time_picker_interval','15','2026-04-04 19:03:16'),(35567,0,'website_twentyfour_format','1','2026-04-04 19:03:16'),(35568,0,'website_date_range','','2026-04-04 19:03:16'),(35569,0,'enabled_contact_form','1','2026-04-05 07:53:52'),(35570,0,'contact_email_receiver','contact@chickenwaves.dk','2026-04-05 07:53:52'),(35571,0,'contact_field','[\"fullname\",\"email_address\",\"message\"]','2026-04-05 07:53:52'),(35572,0,'contact_content','Har du spørgsmål? Skriv til os, og vi vender tilbage hurtigst muligt.','2026-04-05 07:53:52'),(35573,0,'contact_enabled_captcha','0','2026-04-05 07:53:52'),(35574,0,'contact_us_tpl','57','2026-04-05 07:55:46'),(35575,0,'enabled_language_bar_front','1','2026-04-05 11:42:54');
/*!40000 ALTER TABLE `st_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_order_settings_buttons`
--

DROP TABLE IF EXISTS `st_order_settings_buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_order_settings_buttons` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(100) DEFAULT NULL,
  `group_name` varchar(100) NOT NULL DEFAULT '',
  `button_name` varchar(100) NOT NULL DEFAULT '',
  `class_name` varchar(100) DEFAULT 'btn-green',
  `stats_id` int(14) NOT NULL DEFAULT 0,
  `do_actions` varchar(100) NOT NULL DEFAULT '',
  `order_type` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `uuid` (`uuid`),
  KEY `group_name` (`group_name`),
  KEY `stats_id` (`stats_id`),
  KEY `do_actions` (`do_actions`),
  KEY `order_type` (`order_type`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_order_settings_buttons`
--

LOCK TABLES `st_order_settings_buttons` WRITE;
/*!40000 ALTER TABLE `st_order_settings_buttons` DISABLE KEYS */;
INSERT INTO `st_order_settings_buttons` VALUES (1,'b6dbed53-7f02-11ec-9bf7-9c5c8e164c2c','new_order','Accepted','btn-green',24,'','','2022-01-27 07:50:17','2022-01-29 15:51:14','127.0.0.1'),(2,'bbdc9fee-7f02-11ec-9bf7-9c5c8e164c2c','new_order','Reject','btn-black',16,'reject_form','','2022-01-27 07:50:26','2022-01-27 16:03:07','127.0.0.1'),(3,'c6861876-7f02-11ec-9bf7-9c5c8e164c2c','order_processing','Ready for pickup','btn-green',18,'','','2022-01-27 07:50:43','2022-01-27 16:03:14','127.0.0.1'),(4,'cea57e92-7f02-11ec-9bf7-9c5c8e164c2c','order_ready','Delivery on its way','btn-green',21,'','delivery','2022-01-27 07:50:57','2022-01-27 16:03:19','127.0.0.1'),(5,'d3c615ba-7f02-11ec-9bf7-9c5c8e164c2c','order_ready','Delivered','btn-yellow',19,'','delivery','2022-01-27 07:51:06','2022-01-27 16:03:30','127.0.0.1'),(6,'d83d3544-7f02-11ec-9bf7-9c5c8e164c2c','order_ready','Delivery Failed','btn-black',23,'','delivery','2022-01-27 07:51:13','2022-01-27 16:03:35','127.0.0.1'),(7,'dd882377-7f02-11ec-9bf7-9c5c8e164c2c','order_ready','Complete','btn-green',26,'','pickup','2022-01-27 07:51:22','2022-01-27 16:03:49','127.0.0.1'),(8,'ead61c30-7f02-11ec-9bf7-9c5c8e164c2c','order_ready','Order failed','btn-black',16,'','pickup','2022-01-27 07:51:44','2022-01-27 16:03:58','127.0.0.1'),(9,'17b16356-7f03-11ec-9bf7-9c5c8e164c2c','order_ready','Complete','btn-green',26,'','dinein','2022-01-27 07:53:00','2022-01-27 16:04:03','127.0.0.1'),(10,'2156afbe-7f03-11ec-9bf7-9c5c8e164c2c','order_ready','Order failed','btn-black',16,'','dinein','2022-01-27 07:53:16','2022-01-27 16:04:13','127.0.0.1');
/*!40000 ALTER TABLE `st_order_settings_buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_order_settings_tabs`
--

DROP TABLE IF EXISTS `st_order_settings_tabs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_order_settings_tabs` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL DEFAULT 'new_order',
  `stats_id` int(14) NOT NULL DEFAULT 0,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `group_name` (`group_name`),
  KEY `stats_id` (`stats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_order_settings_tabs`
--

LOCK TABLES `st_order_settings_tabs` WRITE;
/*!40000 ALTER TABLE `st_order_settings_tabs` DISABLE KEYS */;
INSERT INTO `st_order_settings_tabs` VALUES (49,'order_processing',24,'2022-07-22 21:46:09','127.0.0.1'),(50,'completed_today',26,'2022-07-22 21:46:42','127.0.0.1'),(51,'completed_today',19,'2022-07-22 21:46:42','127.0.0.1'),(52,'order_ready',21,'2022-07-22 21:46:50','127.0.0.1'),(53,'order_ready',18,'2022-07-22 21:46:50','127.0.0.1'),(72,'assigned',32,'2022-08-04 21:35:36','127.0.0.1'),(73,'assigned',30,'2022-08-04 21:35:36','127.0.0.1'),(74,'assigned',31,'2022-08-04 21:35:36','127.0.0.1'),(75,'assigned',34,'2022-08-04 21:35:36','127.0.0.1'),(76,'assigned',35,'2022-08-04 21:35:36','127.0.0.1'),(77,'assigned',33,'2022-08-04 21:35:36','127.0.0.1'),(78,'assigned',28,'2022-08-04 21:35:36','127.0.0.1'),(79,'assigned',29,'2022-08-04 21:35:36','127.0.0.1'),(80,'completed',39,'2022-08-05 18:32:20','127.0.0.1'),(81,'completed',37,'2022-08-05 18:32:20','127.0.0.1'),(83,'unassigned',38,'2023-02-21 19:12:57','127.0.0.1'),(84,'unassigned',36,'2023-02-21 19:12:57','127.0.0.1'),(87,'new_order',13,'2024-06-28 08:44:39','127.0.0.1');
/*!40000 ALTER TABLE `st_order_settings_tabs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_order_status`
--

DROP TABLE IF EXISTS `st_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_order_status` (
  `stats_id` int(14) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL DEFAULT 'order_status',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `description` varchar(200) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `background_color_hex` varchar(10) NOT NULL DEFAULT '',
  `date_created` date DEFAULT NULL,
  `date_modified` date DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`stats_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_order_status`
--

LOCK TABLES `st_order_status` WRITE;
/*!40000 ALTER TABLE `st_order_status` DISABLE KEYS */;
INSERT INTO `st_order_status` VALUES (13,'order_status',0,'new','black','#d4ecdc','2021-10-11','2023-05-17','127.0.0.1'),(16,'order_status',0,'rejected','white','#ea9895','2021-10-31','2022-01-26','127.0.0.1'),(18,'order_status',0,'ready for pickup','black','#efe5ee','2021-11-01','2023-10-25','127.0.0.1'),(19,'order_status',0,'delivered','white','#3ecf8e','2021-11-01','2023-10-13','127.0.0.1'),(20,'order_status',0,'cancelled','white','#f44336','2021-11-01','2022-01-26','127.0.0.1'),(21,'order_status',0,'delivery on its way','black','#fbd7af','2021-11-01','2022-01-26','127.0.0.1'),(22,'order_status',0,'delayed','#5b5b5b','#cfe2f3','2021-11-01','2022-01-26','127.0.0.1'),(23,'order_status',0,'delivery failed','white','#d34f45','2021-11-01','2022-01-26','127.0.0.1'),(24,'order_status',0,'accepted','white','#f8af01','2021-11-01','2023-10-25','127.0.0.1'),(25,'order_status',0,'delayed','white','#b6d7a8','2021-11-03','2022-01-26','127.0.0.1'),(26,'order_status',0,'complete','#f3f6f4','#8fce00','2021-12-16','2023-10-25','127.0.0.1'),(28,'delivery_status',0,'assigned','white','#ffa726','2022-07-13','2022-07-22','127.0.0.1'),(29,'delivery_status',0,'acknowledged','white','#f8af01','2022-07-13','2022-09-02','127.0.0.1'),(30,'delivery_status',0,'on the way to restaurant','white','#8fce00','2022-07-13','2022-09-02','127.0.0.1'),(31,'delivery_status',0,'arrived at restaurant','white','#ea9999','2022-07-13','2023-05-16','127.0.0.1'),(32,'delivery_status',0,'waiting for order','#5b5b5b','#8fce00','2022-07-13','2022-09-02','127.0.0.1'),(33,'delivery_status',0,'order pickup','white','#8e7cc3','2022-07-13','2022-09-02','127.0.0.1'),(34,'delivery_status',0,'delivery started','white','#c90076','2022-07-13','2022-09-02','127.0.0.1'),(35,'delivery_status',0,'arrived at customer','white','#3d85c6','2022-07-13','2022-09-02','127.0.0.1'),(36,'delivery_status',0,'unassigned','white','#78909c','2022-07-13','2022-07-22','127.0.0.1'),(37,'delivery_status',0,'delivered','white','#3ecf8e','2022-07-15','2022-07-22','127.0.0.1'),(38,'delivery_status',0,'declined','white','#f11707','2022-07-15','2023-02-22','127.0.0.1'),(39,'delivery_status',0,'failed','#999999','#dc1e10','2022-07-15','2023-02-22','127.0.0.1'),(40,'delivery_status',0,'cancelled','white','#f44336','2023-02-28',NULL,'127.0.0.1');
/*!40000 ALTER TABLE `st_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_order_status_actions`
--

DROP TABLE IF EXISTS `st_order_status_actions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_order_status_actions` (
  `action_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `stats_id` bigint(20) NOT NULL DEFAULT 0,
  `action_type` varchar(50) NOT NULL DEFAULT '',
  `action_value` varchar(100) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`action_id`),
  KEY `stats_id` (`stats_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_order_status_actions`
--

LOCK TABLES `st_order_status_actions` WRITE;
/*!40000 ALTER TABLE `st_order_status_actions` DISABLE KEYS */;
INSERT INTO `st_order_status_actions` VALUES (1,13,'notification_to_customer','4','2022-01-27 00:07:12',NULL,'127.0.0.1'),(2,13,'notification_to_merchant','5','2022-01-27 00:07:22',NULL,'127.0.0.1'),(3,13,'notification_to_admin','5','2022-01-27 00:07:31',NULL,'127.0.0.1'),(4,16,'notification_to_customer','6','2022-01-27 00:08:48',NULL,'127.0.0.1'),(5,19,'notification_to_customer','22','2022-01-27 00:09:14',NULL,'127.0.0.1'),(6,20,'notification_to_customer','7','2022-01-27 00:09:37',NULL,'127.0.0.1'),(7,20,'notification_to_merchant','20','2022-01-27 00:09:47',NULL,'127.0.0.1'),(8,20,'notification_to_admin','20','2022-01-27 00:09:55',NULL,'127.0.0.1'),(9,21,'notification_to_customer','21','2022-01-27 00:10:22',NULL,'127.0.0.1'),(10,23,'notification_to_customer','23','2022-01-27 00:10:51',NULL,'127.0.0.1'),(11,24,'notification_to_customer','9','2022-01-27 00:11:09',NULL,'127.0.0.1'),(13,29,'notification_to_admin','30','2022-08-04 11:48:41',NULL,'127.0.0.1'),(14,30,'notification_to_admin','31','2022-08-04 13:15:12',NULL,'127.0.0.1'),(15,37,'notification_to_admin','33','2022-08-27 14:35:44',NULL,'127.0.0.1'),(16,38,'notification_to_admin','33','2022-08-31 13:12:28',NULL,'127.0.0.1'),(17,39,'notification_to_admin','33','2022-08-31 13:12:41',NULL,'127.0.0.1'),(18,31,'notification_to_admin','40','2023-02-04 11:53:43',NULL,'127.0.0.1'),(19,33,'notification_to_admin','41','2023-02-04 11:55:03',NULL,'127.0.0.1'),(20,28,'notification_to_driver','44','2023-02-15 12:08:54',NULL,'127.0.0.1'),(21,18,'notification_to_driver','45','2023-02-15 14:05:30','2023-02-15 14:06:49','127.0.0.1'),(23,26,'notification_to_customer','9','2024-04-18 07:44:25',NULL,'127.0.0.1'),(24,28,'notification_to_admin','46','2024-08-10 00:41:48',NULL,'127.0.0.1');
/*!40000 ALTER TABLE `st_order_status_actions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_order_status_translation`
--

DROP TABLE IF EXISTS `st_order_status_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_order_status_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stats_id` int(1) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `stats_id` (`stats_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_order_status_translation`
--

LOCK TABLES `st_order_status_translation` WRITE;
/*!40000 ALTER TABLE `st_order_status_translation` DISABLE KEYS */;
INSERT INTO `st_order_status_translation` VALUES (7,25,'ja',''),(8,25,'ar',''),(9,25,'en','delayed'),(13,23,'ja',''),(14,23,'ar',''),(15,23,'en','delivery failed'),(16,22,'ja',''),(17,22,'ar',''),(18,22,'en','delayed'),(19,21,'ja',''),(20,21,'ar',''),(21,21,'en','delivery on its way'),(22,20,'ja',''),(23,20,'ar',''),(24,20,'en','cancelled'),(31,16,'ja',''),(32,16,'ar',''),(33,16,'en','rejected'),(129,28,'ar',''),(130,28,'pt_br',''),(131,28,'ja',''),(132,28,'fr',''),(133,28,'en','assigned'),(139,37,'ar',''),(140,37,'pt_br',''),(141,37,'ja',''),(142,37,'fr',''),(143,37,'en','delivered'),(149,36,'ar',''),(150,36,'pt_br',''),(151,36,'ja',''),(152,36,'fr',''),(153,36,'en','unassigned'),(179,29,'ar',''),(180,29,'pt_br',''),(181,29,'ja',''),(182,29,'fr',''),(183,29,'en','acknowledged'),(184,32,'ar',''),(185,32,'pt_br',''),(186,32,'ja',''),(187,32,'fr',''),(188,32,'en','waiting for order'),(194,30,'ar',''),(195,30,'pt_br',''),(196,30,'ja',''),(197,30,'fr',''),(198,30,'en','on the way to restaurant'),(199,33,'ar',''),(200,33,'pt_br',''),(201,33,'ja',''),(202,33,'fr',''),(203,33,'en','order pickup'),(204,34,'ar',''),(205,34,'pt_br',''),(206,34,'ja',''),(207,34,'fr',''),(208,34,'en','delivery started'),(209,35,'ar',''),(210,35,'pt_br',''),(211,35,'ja',''),(212,35,'fr',''),(213,35,'en','arrived at customer'),(219,38,'ar',''),(220,38,'pt_br',''),(221,38,'ja',''),(222,38,'fr',''),(223,38,'en','declined'),(229,39,'ar',''),(230,39,'pt_br',''),(231,39,'ja',''),(232,39,'fr',''),(233,39,'en','failed'),(234,40,'ar',''),(235,40,'pt_br',''),(236,40,'ja',''),(237,40,'fr',''),(238,40,'en','cancelled'),(244,31,'ar','وصل إلى المطعم'),(245,31,'pt_br','chegou ao restaurante'),(246,31,'ja','レストランに到着しました'),(247,31,'fr','arrivé au resto'),(248,31,'en','arrived at restaurant'),(249,13,'ar','جديد'),(250,13,'pt_br','nova'),(251,13,'ja','新着'),(252,13,'fr',''),(253,13,'en','new'),(254,19,'de',''),(255,19,'ar',''),(256,19,'pt_br',''),(257,19,'ja','配達されました'),(258,19,'en','delivered'),(259,24,'de',''),(260,24,'ar',''),(261,24,'pt_br',''),(262,24,'ja','受け入れられました'),(263,24,'en','accepted'),(264,18,'de',''),(265,18,'ar',''),(266,18,'pt_br',''),(267,18,'ja','ピックアップの準備ができて'),(268,18,'en','ready for pickup'),(269,26,'de',''),(270,26,'ar',''),(271,26,'pt_br',''),(272,26,'ja','完了'),(273,26,'en','complete');
/*!40000 ALTER TABLE `st_order_status_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_order_time_management`
--

DROP TABLE IF EXISTS `st_order_time_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_order_time_management` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(14) NOT NULL DEFAULT 0,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `transaction_type` varchar(100) NOT NULL DEFAULT '',
  `days` varchar(200) NOT NULL DEFAULT '',
  `start_time` varchar(5) NOT NULL DEFAULT '',
  `end_time` varchar(5) NOT NULL DEFAULT '',
  `number_order_allowed` int(14) NOT NULL DEFAULT 0,
  `order_status` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  PRIMARY KEY (`id`),
  KEY `group_id` (`group_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `transaction_type` (`transaction_type`),
  KEY `days` (`days`),
  KEY `start_time` (`start_time`),
  KEY `end_time` (`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_order_time_management`
--

LOCK TABLES `st_order_time_management` WRITE;
/*!40000 ALTER TABLE `st_order_time_management` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_order_time_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew`
--

DROP TABLE IF EXISTS `st_ordernew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_uuid` varchar(100) NOT NULL DEFAULT '',
  `order_reference` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `client_id` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'draft',
  `payment_status` varchar(100) NOT NULL DEFAULT 'unpaid',
  `delivery_status` varchar(100) NOT NULL DEFAULT 'unassigned',
  `flow_status` varchar(30) NOT NULL DEFAULT 'draft',
  `service_code` varchar(100) NOT NULL,
  `payment_code` varchar(100) NOT NULL,
  `total_discount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `points` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `sub_total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `sub_total_less_discount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `service_fee` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `small_order_fee` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `delivery_fee` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `packaging_fee` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `card_fee` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `tax_type` varchar(50) NOT NULL DEFAULT '',
  `tax` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `tax_total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `courier_tip` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `amount_due` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `wallet_amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `promo_code` varchar(100) NOT NULL DEFAULT '',
  `promo_total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `promo_cap` decimal(10,2) NOT NULL DEFAULT 0.00,
  `promo_owner` varchar(50) NOT NULL DEFAULT 'admin',
  `offer_discount` varchar(100) NOT NULL DEFAULT '',
  `offer_total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `offer_cap` decimal(10,2) NOT NULL DEFAULT 0.00,
  `whento_deliver` varchar(100) NOT NULL DEFAULT '',
  `delivery_date` date DEFAULT NULL,
  `delivery_time` varchar(50) NOT NULL DEFAULT '',
  `delivery_date_time` datetime DEFAULT NULL,
  `delivery_time_end` varchar(50) NOT NULL DEFAULT '',
  `order_accepted_at` timestamp NULL DEFAULT NULL,
  `preparation_time_estimation` int(10) DEFAULT NULL,
  `pickup_time` timestamp NULL DEFAULT NULL,
  `delivery_time_estimation` int(10) DEFAULT NULL,
  `commission_type` varchar(100) NOT NULL DEFAULT '',
  `commission_value` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `commission_based` varchar(100) NOT NULL DEFAULT '',
  `commission` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `merchant_earning` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `total_original` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `commission_original` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `merchant_earning_original` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `adjustment_commission` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `adjustment_total` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `use_currency_code` varchar(5) NOT NULL DEFAULT '',
  `base_currency_code` varchar(5) NOT NULL DEFAULT '',
  `exchange_rate` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `admin_base_currency` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate_use_currency_to_admin` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_merchant_to_admin` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_admin_to_merchant` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `formatted_address` varchar(255) NOT NULL DEFAULT '',
  `driver_id` bigint(20) NOT NULL DEFAULT 0,
  `vehicle_id` int(14) NOT NULL DEFAULT 0,
  `assigned_at` timestamp NULL DEFAULT NULL,
  `assigned_expired_at` datetime DEFAULT NULL,
  `date_cancelled` timestamp NULL DEFAULT NULL,
  `is_view` int(1) NOT NULL DEFAULT 0,
  `is_critical` int(1) NOT NULL DEFAULT 0,
  `earning_approve` int(1) NOT NULL DEFAULT 0,
  `delivered_at` datetime DEFAULT NULL,
  `request_from` varchar(50) NOT NULL DEFAULT 'web',
  `late_notification_sent` tinyint(1) NOT NULL DEFAULT 0,
  `preparation_late_sent` tinyint(1) NOT NULL DEFAULT 0,
  `delivering_late_sent` tinyint(1) NOT NULL DEFAULT 0,
  `retry_attempts` int(1) NOT NULL DEFAULT 0,
  `last_retry` timestamp NULL DEFAULT NULL,
  `auto_assign_status` varchar(50) NOT NULL DEFAULT 'pending',
  `date_created` datetime DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `is_commission_applied` tinyint(1) NOT NULL DEFAULT 0,
  `merchant_subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `merchant_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`order_id`),
  KEY `order_uuid` (`order_uuid`),
  KEY `merchant_id` (`merchant_id`),
  KEY `client_id` (`client_id`),
  KEY `service_code` (`service_code`),
  KEY `payment_code` (`payment_code`),
  KEY `status` (`status`),
  KEY `payment_status` (`payment_status`),
  KEY `is_critical` (`is_critical`),
  KEY `driver_id` (`driver_id`),
  KEY `delivery_status` (`delivery_status`),
  KEY `date_created` (`date_created`),
  KEY `created_at` (`created_at`),
  KEY `flow_status` (`flow_status`),
  KEY `order_reference` (`order_reference`),
  KEY `created_at_2` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=10007 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew`
--

LOCK TABLES `st_ordernew` WRITE;
/*!40000 ALTER TABLE `st_ordernew` DISABLE KEYS */;
INSERT INTO `st_ordernew` VALUES (1,'7d3bb630-305d-11f1-86f1-4ab0e3a8062d','CNC-10001',1,2,'new','paid','unassigned','draft','pickup','stripe',0.0000,0.0000,423.0000,423.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'',0.0000,0.0000,0.0000,423.0000,0.0000,0.0000,'',0.0000,0.00,'admin','',0.0000,0.00,'now','2026-04-04','','2026-04-04 21:35:51','',NULL,10,NULL,0,'',0.0000,'subtotal',0.0000,0.0000,423.0000,0.0000,0.0000,0.0000,0.0000,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,1.0000,'',0,0,NULL,NULL,NULL,0,0,0,NULL,'web',0,0,0,0,NULL,'pending','2026-04-04 21:35:51','2026-04-04','2026-04-04 21:35:52','192.168.97.1',0,0.00,0.00),(10002,'4a6ec2f9-30c8-11f1-b058-9a79972e1847','',1,2,'cancelled','paid','cancelled','draft','pickup','stripe',0.0000,0.0000,94.0000,94.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'',0.0000,0.0000,0.0000,94.0000,0.0000,0.0000,'',0.0000,0.00,'admin','',0.0000,0.00,'schedule','2026-04-05','12:45:00','2026-04-05 12:45:00','13:00:00',NULL,10,NULL,0,'',0.0000,'subtotal',0.0000,0.0000,94.0000,0.0000,0.0000,0.0000,0.0000,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,1.0000,'',0,0,NULL,NULL,NULL,0,0,0,NULL,'web',0,0,0,0,NULL,'pending','2026-04-05 10:20:22','2026-04-05','2026-04-05 10:30:23','192.168.97.1',0,0.00,0.00),(10003,'3e6d424b-30c9-11f1-b058-9a79972e1847','',1,2,'cancelled','paid','cancelled','draft','pickup','stripe',0.0000,0.0000,47.0000,47.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'',0.0000,0.0000,0.0000,47.0000,0.0000,0.0000,'',0.0000,0.00,'admin','',0.0000,0.00,'now','2026-04-05','','2026-04-05 10:27:11','',NULL,10,NULL,0,'',0.0000,'subtotal',0.0000,0.0000,47.0000,0.0000,0.0000,0.0000,0.0000,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,1.0000,'',0,0,NULL,NULL,NULL,0,0,0,NULL,'web',0,0,0,0,NULL,'pending','2026-04-05 10:27:11','2026-04-05','2026-04-05 10:30:20','192.168.97.1',0,0.00,0.00),(10004,'bac8311e-30c9-11f1-b058-9a79972e1847','',1,2,'new','paid','unassigned','draft','pickup','stripe',0.0000,0.0000,423.0000,423.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'',0.0000,0.0000,0.0000,423.0000,0.0000,0.0000,'',0.0000,0.00,'admin','',0.0000,0.00,'now','2026-04-05','','2026-04-05 10:30:40','',NULL,10,NULL,0,'',0.0000,'subtotal',0.0000,0.0000,423.0000,0.0000,0.0000,0.0000,0.0000,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,1.0000,'',0,0,NULL,NULL,NULL,0,0,0,NULL,'web',0,0,0,0,NULL,'pending','2026-04-05 10:30:40','2026-04-05','2026-04-05 10:30:41','192.168.97.1',0,0.00,0.00),(10005,'fc5886fe-30c9-11f1-b058-9a79972e1847','',1,2,'new','paid','unassigned','draft','pickup','stripe',0.0000,0.0000,47.0000,47.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'',0.0000,0.0000,0.0000,47.0000,0.0000,0.0000,'',0.0000,0.00,'admin','',0.0000,0.00,'now','2026-04-05','','2026-04-05 10:32:30','',NULL,10,NULL,0,'',0.0000,'subtotal',0.0000,0.0000,47.0000,0.0000,0.0000,0.0000,0.0000,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,1.0000,'',0,0,NULL,NULL,NULL,0,0,0,NULL,'web',0,0,0,0,NULL,'pending','2026-04-05 10:32:30','2026-04-05','2026-04-05 10:32:31','192.168.97.1',0,0.00,0.00),(10006,'b9b230c2-30df-11f1-b058-9a79972e1847','',1,2,'new','paid','unassigned','draft','pickup','stripe',0.0000,0.0000,53.0000,53.0000,0.0000,0.0000,0.0000,0.0000,0.0000,'',0.0000,0.0000,0.0000,53.0000,0.0000,0.0000,'',0.0000,0.00,'admin','',0.0000,0.00,'now','2026-04-05','','2026-04-05 13:08:07','',NULL,10,NULL,0,'',0.0000,'subtotal',0.0000,0.0000,53.0000,0.0000,0.0000,0.0000,0.0000,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,1.0000,'',0,0,NULL,NULL,NULL,0,0,0,NULL,'web',0,0,0,0,NULL,'pending','2026-04-05 13:08:07','2026-04-05','2026-04-05 13:08:08','192.168.97.1',0,0.00,0.00);
/*!40000 ALTER TABLE `st_ordernew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_additional_charge`
--

DROP TABLE IF EXISTS `st_ordernew_additional_charge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_additional_charge` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `charge_name` varchar(200) NOT NULL DEFAULT '',
  `additional_charge` float(14,4) NOT NULL DEFAULT 0.0000,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_row` (`item_row`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_additional_charge`
--

LOCK TABLES `st_ordernew_additional_charge` WRITE;
/*!40000 ALTER TABLE `st_ordernew_additional_charge` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ordernew_additional_charge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_addons`
--

DROP TABLE IF EXISTS `st_ordernew_addons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_addons` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `subcat_id` int(14) NOT NULL DEFAULT 0,
  `sub_item_id` int(14) NOT NULL DEFAULT 0,
  `qty` int(14) NOT NULL DEFAULT 0,
  `price` float(14,4) NOT NULL DEFAULT 0.0000,
  `addons_total` float(14,4) NOT NULL DEFAULT 0.0000,
  `multi_option` varchar(100) NOT NULL DEFAULT '',
  `merchant_price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `commission_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `merchant_earning` decimal(10,2) NOT NULL DEFAULT 0.00,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_row` (`item_row`),
  KEY `subcat_id` (`subcat_id`),
  KEY `sub_item_id` (`sub_item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_addons`
--

LOCK TABLES `st_ordernew_addons` WRITE;
/*!40000 ALTER TABLE `st_ordernew_addons` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ordernew_addons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_attributes`
--

DROP TABLE IF EXISTS `st_ordernew_attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_attributes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_row` (`item_row`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_attributes`
--

LOCK TABLES `st_ordernew_attributes` WRITE;
/*!40000 ALTER TABLE `st_ordernew_attributes` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ordernew_attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_history`
--

DROP TABLE IF EXISTS `st_ordernew_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT '',
  `remarks` text DEFAULT NULL,
  `ramarks_trans` text DEFAULT NULL,
  `change_by` varchar(100) NOT NULL DEFAULT '',
  `latitude` varchar(100) NOT NULL DEFAULT '',
  `longitude` varchar(100) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_history`
--

LOCK TABLES `st_ordernew_history` WRITE;
/*!40000 ALTER TABLE `st_ordernew_history` DISABLE KEYS */;
INSERT INTO `st_ordernew_history` VALUES (1,'2026-04-04 21:35:52',1,'new','Order placed by {{customer_name}}','{\"{{customer_name}}\":\"Jawad Khan\"}','','','','192.168.97.1'),(2,'2026-04-05 10:20:23',10002,'new','Order placed by {{customer_name}}','{\"{{customer_name}}\":\"Jawad Khan\"}','','','','192.168.97.1'),(3,'2026-04-05 10:27:13',10003,'new','Order placed by {{customer_name}}','{\"{{customer_name}}\":\"Jawad Khan\"}','','','','192.168.97.1'),(4,'2026-04-05 10:30:20',10003,'cancelled','Customer cancel this order',NULL,'','','','192.168.97.1'),(5,'2026-04-05 10:30:23',10002,'cancelled','Customer cancel this order',NULL,'','','','192.168.97.1'),(6,'2026-04-05 10:30:41',10004,'new','Order placed by {{customer_name}}','{\"{{customer_name}}\":\"Jawad Khan\"}','','','','192.168.97.1'),(7,'2026-04-05 10:32:31',10005,'new','Order placed by {{customer_name}}','{\"{{customer_name}}\":\"Jawad Khan\"}','','','','192.168.97.1'),(8,'2026-04-05 13:08:08',10006,'new','Order placed by {{customer_name}}','{\"{{customer_name}}\":\"Jawad Khan\"}','','','','192.168.97.1');
/*!40000 ALTER TABLE `st_ordernew_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_item`
--

DROP TABLE IF EXISTS `st_ordernew_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `item_row` varchar(100) NOT NULL DEFAULT '',
  `cat_id` int(14) NOT NULL DEFAULT 0,
  `item_id` int(14) NOT NULL DEFAULT 0,
  `item_token` varchar(255) NOT NULL DEFAULT '',
  `item_size_id` int(14) NOT NULL DEFAULT 0,
  `qty` int(14) NOT NULL DEFAULT 0,
  `special_instructions` varchar(255) NOT NULL DEFAULT '',
  `if_sold_out` varchar(50) NOT NULL DEFAULT '',
  `price` float(14,5) NOT NULL DEFAULT 0.00000,
  `discount` float(14,5) NOT NULL DEFAULT 0.00000,
  `discount_type` varchar(100) NOT NULL DEFAULT '',
  `merchant_price` decimal(10,2) DEFAULT 0.00,
  `commission_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `merchant_earning` decimal(10,2) NOT NULL DEFAULT 0.00,
  `item_changes` varchar(100) NOT NULL DEFAULT '1',
  `item_changes_meta1` varchar(100) NOT NULL DEFAULT '',
  `tax_use` text DEFAULT NULL,
  `is_free` tinyint(1) NOT NULL DEFAULT 0,
  `kot_status` varchar(100) NOT NULL DEFAULT 'pending',
  `voided_by` varchar(100) NOT NULL DEFAULT '',
  `voided_at` datetime DEFAULT NULL,
  `void_reason` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `item_row` (`item_row`),
  KEY `cat_id` (`cat_id`),
  KEY `item_token` (`item_token`),
  KEY `item_size_id` (`item_size_id`),
  KEY `item_id` (`item_id`),
  KEY `kot_status` (`kot_status`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_item`
--

LOCK TABLES `st_ordernew_item` WRITE;
/*!40000 ALTER TABLE `st_ordernew_item` DISABLE KEYS */;
INSERT INTO `st_ordernew_item` VALUES (1,1,'a89e9dae-305a-11f1-86f1-4ab0e3a8062d',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,9,'','substitute',47.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL),(2,10002,'6ad1c6b0-30c1-11f1-b058-9a79972e1847',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,2,'','substitute',47.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL),(3,10003,'32e22d7b-30c9-11f1-b058-9a79972e1847',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,1,'','substitute',47.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL),(4,10004,'b74bab58-30c9-11f1-b058-9a79972e1847',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,9,'','',47.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL),(5,10005,'fac0534c-30c9-11f1-b058-9a79972e1847',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,1,'','substitute',47.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL),(6,10006,'d7a2af9e-30de-11f1-b058-9a79972e1847',8,109,'08620aba-3036-11f1-86f1-4ab0e3a8062d',109,1,'','substitute',6.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL),(7,10006,'51cef1eb-30df-11f1-b058-9a79972e1847',1,1,'086180f0-3036-11f1-86f1-4ab0e3a8062d',1,1,'','substitute',47.00000,0.00000,'fixed',0.00,0.00,0.00,'1','','[]',0,'pending','',NULL,NULL);
/*!40000 ALTER TABLE `st_ordernew_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_meta`
--

DROP TABLE IF EXISTS `st_ordernew_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_meta` (
  `meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` longtext DEFAULT NULL,
  PRIMARY KEY (`meta_id`),
  KEY `order_id` (`order_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_meta`
--

LOCK TABLES `st_ordernew_meta` WRITE;
/*!40000 ALTER TABLE `st_ordernew_meta` DISABLE KEYS */;
INSERT INTO `st_ordernew_meta` VALUES (1,1,'contact_number','4512345678'),(2,1,'contact_email','jawa0056@gmail.com'),(3,1,'customer_name','Jawad Khan'),(4,1,'payment_change','0'),(5,1,'self_delivery','0'),(6,1,'points_to_earn','0'),(7,1,'timezone','Europe/Copenhagen'),(8,1,'order_version','1'),(9,1,'order_otp','689757'),(10,10002,'contact_number','4512345678'),(11,10002,'contact_email','jawa0056@gmail.com'),(12,10002,'customer_name','Jawad Khan'),(13,10002,'payment_change','0'),(14,10002,'self_delivery','0'),(15,10002,'points_to_earn','0'),(16,10002,'timezone','Europe/Copenhagen'),(17,10002,'order_version','1'),(18,10002,'order_otp','027138'),(19,10003,'contact_number','4512345678'),(20,10003,'contact_email','jawa0056@gmail.com'),(21,10003,'customer_name','Jawad Khan'),(22,10003,'payment_change','0'),(23,10003,'self_delivery','0'),(24,10003,'points_to_earn','0'),(25,10003,'timezone','Europe/Copenhagen'),(26,10003,'order_version','1'),(27,10003,'order_otp','575324'),(28,10003,'rejetion_reason','Customer cancel this order'),(29,10002,'rejetion_reason','Customer cancel this order'),(30,10004,'contact_number','4512345678'),(31,10004,'contact_email','jawa0056@gmail.com'),(32,10004,'customer_name','Jawad Khan'),(33,10004,'payment_change','0'),(34,10004,'self_delivery','0'),(35,10004,'points_to_earn','0'),(36,10004,'timezone','Europe/Copenhagen'),(37,10004,'order_version','1'),(38,10004,'order_otp','014564'),(39,10005,'contact_number','4512345678'),(40,10005,'contact_email','jawa0056@gmail.com'),(41,10005,'customer_name','Jawad Khan'),(42,10005,'payment_change','0'),(43,10005,'self_delivery','0'),(44,10005,'points_to_earn','0'),(45,10005,'timezone','Europe/Copenhagen'),(46,10005,'order_version','1'),(47,10005,'order_otp','445178'),(48,10006,'contact_number','4512345678'),(49,10006,'contact_email','jawa0056@gmail.com'),(50,10006,'customer_name','Jawad Khan'),(51,10006,'payment_change','0'),(52,10006,'self_delivery','0'),(53,10006,'points_to_earn','0'),(54,10006,'timezone','Europe/Copenhagen'),(55,10006,'order_version','1'),(56,10006,'order_otp','882234');
/*!40000 ALTER TABLE `st_ordernew_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_summary_transaction`
--

DROP TABLE IF EXISTS `st_ordernew_summary_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_summary_transaction` (
  `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_uuid` varchar(50) NOT NULL DEFAULT '',
  `order_id` bigint(20) DEFAULT 0,
  `transaction_date` timestamp NULL DEFAULT NULL,
  `transaction_type` varchar(50) NOT NULL DEFAULT 'debit',
  `transaction_description` varchar(255) NOT NULL DEFAULT '',
  `transaction_description_parameters` varchar(255) NOT NULL DEFAULT '',
  `transaction_amount` float(14,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`),
  KEY `transaction_uuid` (`transaction_uuid`),
  KEY `order_id` (`order_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_summary_transaction`
--

LOCK TABLES `st_ordernew_summary_transaction` WRITE;
/*!40000 ALTER TABLE `st_ordernew_summary_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ordernew_summary_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_trans_meta`
--

DROP TABLE IF EXISTS `st_ordernew_trans_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_trans_meta` (
  `meta_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(14) NOT NULL DEFAULT 0,
  `order_id` int(14) NOT NULL DEFAULT 0,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` longtext DEFAULT NULL,
  `meta_binary` binary(255) NOT NULL DEFAULT '\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0',
  PRIMARY KEY (`meta_id`),
  KEY `order_id` (`order_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_trans_meta`
--

LOCK TABLES `st_ordernew_trans_meta` WRITE;
/*!40000 ALTER TABLE `st_ordernew_trans_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_ordernew_trans_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_ordernew_transaction`
--

DROP TABLE IF EXISTS `st_ordernew_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_ordernew_transaction` (
  `transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_uuid` varchar(50) NOT NULL DEFAULT '',
  `payment_uuid` varchar(50) DEFAULT '',
  `order_id` int(14) NOT NULL DEFAULT 0,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `client_id` int(14) NOT NULL DEFAULT 0,
  `payment_code` varchar(100) NOT NULL DEFAULT '',
  `transaction_name` varchar(20) NOT NULL DEFAULT 'payment',
  `transaction_type` varchar(100) NOT NULL DEFAULT 'credit',
  `transaction_description` varchar(255) NOT NULL DEFAULT 'Payment',
  `trans_amount` float(14,4) NOT NULL DEFAULT 0.0000,
  `merchant_amount` decimal(10,2) NOT NULL DEFAULT 0.00,
  `currency_code` varchar(5) NOT NULL DEFAULT '',
  `to_currency_code` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `admin_base_currency` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate_merchant_to_admin` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_admin_to_merchant` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `payment_reference` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'unpaid',
  `reason` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`transaction_id`),
  KEY `order_id` (`order_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `client_id` (`client_id`),
  KEY `payment_code` (`payment_code`),
  KEY `status` (`status`),
  KEY `transaction_type` (`transaction_type`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_ordernew_transaction`
--

LOCK TABLES `st_ordernew_transaction` WRITE;
/*!40000 ALTER TABLE `st_ordernew_transaction` DISABLE KEYS */;
INSERT INTO `st_ordernew_transaction` VALUES (1,'7df2a22f-305d-11f1-86f1-4ab0e3a8062d','98f92f15-305a-11f1-86f1-4ab0e3a8062d',1,1,2,'stripe','payment','credit','Payment',423.0000,0.00,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,'pi_3TIZz2E4iIFf0ivg0pUtp4y4','paid','','2026-04-04 21:35:52','2026-04-04 19:35:52','192.168.97.1'),(2,'4b375a0f-30c8-11f1-b058-9a79972e1847','98f92f15-305a-11f1-86f1-4ab0e3a8062d',10002,1,2,'stripe','payment','credit','Payment',94.0000,0.00,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,'pi_3TIlutE4iIFf0ivg1nenmuZE','paid','','2026-04-05 10:20:23','2026-04-05 08:20:23','192.168.97.1'),(3,'3f592375-30c9-11f1-b058-9a79972e1847','98f92f15-305a-11f1-86f1-4ab0e3a8062d',10003,1,2,'stripe','payment','credit','Payment',47.0000,0.00,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,'pi_3TIm1UE4iIFf0ivg1bvReU4B','paid','','2026-04-05 10:27:13','2026-04-05 08:27:13','192.168.97.1'),(4,'bb7e5182-30c9-11f1-b058-9a79972e1847','98f92f15-305a-11f1-86f1-4ab0e3a8062d',10004,1,2,'stripe','payment','credit','Payment',423.0000,0.00,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,'pi_3TIm4rE4iIFf0ivg17E0M9RN','paid','','2026-04-05 10:30:41','2026-04-05 08:30:41','192.168.97.1'),(5,'fd0f4e19-30c9-11f1-b058-9a79972e1847','98f92f15-305a-11f1-86f1-4ab0e3a8062d',10005,1,2,'stripe','payment','credit','Payment',47.0000,0.00,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,'pi_3TIm6dE4iIFf0ivg19IQrvhJ','paid','','2026-04-05 10:32:31','2026-04-05 08:32:31','192.168.97.1'),(6,'ba836eeb-30df-11f1-b058-9a79972e1847','98f92f15-305a-11f1-86f1-4ab0e3a8062d',10006,1,2,'stripe','payment','credit','Payment',53.0000,0.00,'DKK','DKK',1.0000,'DKK',1.0000,1.0000,'pi_3TIoXEE4iIFf0ivg1aUdfwOx','paid','','2026-04-05 13:08:09','2026-04-05 11:08:09','192.168.97.1');
/*!40000 ALTER TABLE `st_ordernew_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_package_details`
--

DROP TABLE IF EXISTS `st_package_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_package_details` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `package_id` int(14) NOT NULL DEFAULT 0,
  `description` text DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_package_details`
--

LOCK TABLES `st_package_details` WRITE;
/*!40000 ALTER TABLE `st_package_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_package_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_pages`
--

DROP TABLE IF EXISTS `st_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_pages` (
  `page_id` int(11) NOT NULL AUTO_INCREMENT,
  `owner` varchar(50) NOT NULL DEFAULT 'admin',
  `merchant_id` int(10) NOT NULL DEFAULT 0,
  `page_type` varchar(255) NOT NULL DEFAULT 'page',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `long_content` mediumtext DEFAULT NULL,
  `short_content` varchar(255) NOT NULL DEFAULT '',
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text DEFAULT NULL,
  `meta_keywords` text DEFAULT NULL,
  `meta_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`page_id`),
  KEY `slug` (`slug`),
  KEY `title` (`title`),
  KEY `page_type` (`page_type`),
  KEY `status` (`status`),
  KEY `merchant_id` (`merchant_id`),
  KEY `owner` (`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_pages`
--

LOCK TABLES `st_pages` WRITE;
/*!40000 ALTER TABLE `st_pages` DISABLE KEYS */;
INSERT INTO `st_pages` VALUES (1,'admin',0,'page','terms-and-conditions','Terms and conditions','<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id sapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel nulla eget porttitor. In varius vehicula facilisis.','','','','','','publish','2022-01-27 08:03:58','2022-01-27 08:03:58','127.0.0.1'),(2,'admin',0,'page','privacy-policy','Privacy policy','<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id sapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel nulla eget porttitor. In varius vehicula facilisis. ','','','','','','publish','2022-01-27 08:05:00','2022-01-27 08:05:00','127.0.0.1'),(23,'seo',0,'page','order-delicious-food-from-the-comfort-of-your-home-explore-our-restaurant-food-ordering-website-now','Homepage',NULL,'','Chicken N Chicken Waves - Burgere, Chicken & Wraps i Greve','Velkommen til Chicken N Chicken Waves. Bestil online og hent lækre burgere, crispy chicken, wraps, sides og kolde drikke.','Delicious cuisine,Dining experience,International cuisine,Fine dining,Family-friendly,Special occasions','','','publish','2023-06-15 18:35:44','2023-06-15 18:41:51','127.0.0.1'),(24,'seo',0,'page','find-your-perfect-meal-with-our-restaurant-food-ordering-search-explore-the-best-restaurant-results-now','Search results',NULL,'','Find Your Perfect Meal with Our Restaurant Food Ordering Search - Explore the Best Restaurant Results Now!','Looking for the best dining experience? Look no further than our multiple restaurant Karenderia! Our website offers a seamless food ordering process and a comprehensive search feature that allows you to find the perfect restaurant for your taste buds. Wit','Restaurants,Dining,Cuisine,Menu,Food,Reservation,Offers','','','publish','2023-06-15 18:37:42','2023-06-15 18:43:28','127.0.0.1'),(25,'seo',0,'page','get-in-touch-with-us-contact-our-team-for-exceptional-customer-service-and-support','Contact us',NULL,'','Kontakt os - Chicken N Chicken Waves','Looking to get in touch with us? Our contact page is the perfect place to start. Whether you have a question, comment, or feedback, we\'re always happy to hear from our customers. Simply fill out the form on our contact page, and we\'ll get back to you as s','','','','publish','2023-06-15 18:38:48','2023-06-15 18:43:59','127.0.0.1'),(26,'seo',0,'page','explore-our-mouth-watering-cuisine-list-a-culinary-journey-you-dont-want-to-miss','Cuisine',NULL,'','Explore Our Mouth-Watering Cuisine List - A Culinary Journey You Don\'t Want to Miss!','At our multiple restaurant karenderia, we offer a diverse cuisine list that caters to all taste buds. From savory Filipino dishes to international favorites, our menu is sure to satisfy your cravings. Indulge in our delicious meals and experience the best','','','','publish','2023-06-15 18:40:07','2023-06-15 18:44:26','127.0.0.1'),(27,'seo',0,'page','explore-our-mouth-watering-menu-delicious-burgers-fries-and-more','Menu',NULL,'','Chicken N Chicken Waves - Bestil lækker mad online','Bestil lækre burgere, crispy chicken, wraps og meget mere fra Chicken N Chicken. Friske ingredienser, hurtig afhentning i Greve.','','','','publish','2023-06-15 18:46:27','2023-06-15 23:27:39','127.0.0.1'),(28,'seo',0,'page','login-to-your-restaurant-account-manage-your-menu-and-orders-with-ease','Login',NULL,'','Log ind - Chicken N Chicken Waves','Welcome to our restaurant login page! Access your account and manage your restaurant\'s menu, orders, and promotions with ease. Join our platform today and offer your customers the best dining experience. Sign in now and take your business to new heights!','','','','publish','2023-06-15 18:47:13','2023-06-15 18:47:13','127.0.0.1'),(29,'seo',0,'page','join-our-restaurant-network-and-expand-your-reach-signup-today','Signup page',NULL,'','Opret konto - Chicken N Chicken Waves','Looking to expand your restaurant\'s online presence? Sign up with our multiple restaurant Karenderia platform and showcase your delicious cuisine to a wider audience. Our user-friendly interface and powerful marketing tools make it easy to manage your onl','','','','publish','2023-06-15 18:48:23','2023-06-15 18:48:23','127.0.0.1'),(30,'seo',0,'page','effortlessly-manage-your-account-profile-with-our-user-friendly-platform-sign-up-today','Manage account',NULL,'','Min profil - Chicken N Chicken Waves','Effortlessly manage your account profile with our user-friendly platform. Update your personal information, track your orders, and enjoy a seamless dining experience at our multiple restaurant karenderia.','','','','publish','2023-06-15 18:50:57','2023-06-15 18:54:15','127.0.0.1'),(31,'seo',0,'page','secure-your-account-change-password-for-enhanced-online-security','Change password',NULL,'','Secure Your Account: Change Password for Enhanced Online Security','Boost your account security with a password change on our website. Safeguard your personal information and enjoy peace of mind knowing your account is protected. Follow our simple steps to update your password and fortify your online presence today.','','','','publish','2023-06-15 18:56:26','2023-06-15 18:56:26','127.0.0.1'),(32,'seo',0,'page','manage-your-orders-convenient-access-to-your-restaurant-accounts-order-list','User Orders',NULL,'','Mine ordrer - Chicken N Chicken Waves','Easily track and manage your restaurant orders with our user-friendly account interface. Stay organized and informed with instant access to your order list, allowing you to review, modify, and monitor the status of your past and current orders. Streamline your dining experience and enjoy seamless control over your restaurant account\'s order history.','','','','publish','2023-06-15 18:58:09','2023-06-15 18:59:08','127.0.0.1'),(33,'seo',0,'page','effortless-address-management-save-and-update-your-accounts-address','User address',NULL,'','Effortless Address Management: Save and Update Your Account\'s Address','Simplify your address management with our account feature that allows you to save and update your addresses effortlessly. Whether it\'s for shipping, billing, or personal preferences, easily store multiple addresses and conveniently select them during checkout. Experience convenience and efficiency as you streamline your account\'s address information to enhance your online experience.','','','','publish','2023-06-15 19:01:00','2023-06-15 19:01:00','127.0.0.1'),(34,'seo',0,'page','secure-and-convenient-manage-saved-payment-methods-in-your-account','User saved payments',NULL,'','Secure and Convenient: Manage Saved Payment Methods in Your Account','Experience hassle-free transactions with our account\'s saved payment feature. Safely store your preferred payment methods for quick and secure checkouts. Enjoy the convenience of managing and updating your saved payment options, providing you with a seamless and efficient payment experience. Simplify your online transactions and enjoy peace of mind with our reliable and secure account saved payment feature.','','','','publish','2023-06-15 19:01:57','2023-06-15 19:01:57','127.0.0.1'),(35,'seo',0,'page','personalized-favorites-store-and-access-your-accounts-preferred-selections','User saved store',NULL,'','Personalized Favorites: Store and Access Your Account\'s Preferred Selections','Make your online experience truly tailored to your preferences by utilizing our account\'s \'Store Favorites\' feature. Save your favorite items, products, or content to easily access them whenever you visit our website. Whether it\'s for shopping, browsing, or entertainment, enjoy the convenience of having your preferred selections readily available at your fingertips. Enhance your user experience and discover the power of personalized favorites with our account\'s intuitive feature.','','','','publish','2023-06-15 19:02:51','2023-06-15 19:02:51','127.0.0.1'),(36,'seo',0,'page','join-the-culinary-experience-sign-up-for-a-memorable-restaurant-account','Restaurant signup',NULL,'','Join the Culinary Experience: Sign Up for a Memorable Restaurant Account','Embark on a delightful culinary journey by signing up for a restaurant account. Unlock exclusive benefits, personalized recommendations, and seamless online ordering. Experience the convenience of managing reservations, accessing loyalty programs, and receiving updates on special promotions. Join today and indulge in a memorable dining experience tailored to your preferences. Start your gastronomic adventure with our easy restaurant signup process.','','','','publish','2023-06-15 19:04:07','2023-06-15 19:04:07','127.0.0.1'),(37,'seo',0,'page','effortless-dining-experience-streamlined-checkout-at-our-restaurant','Checkout',NULL,'','Effortless Dining Experience: Streamlined Checkout at Our Restaurant','Enjoy a seamless and hassle-free checkout experience at our restaurant. Our user-friendly checkout page ensures a smooth transaction process, allowing you to review your order, make any necessary modifications, and securely complete your payment. With convenient options for delivery or pickup, you can finalize your dining experience with ease. Experience efficiency and satisfaction as you navigate our optimized restaurant checkout page, making your journey from selection to satisfaction a breeze.','','','','publish','2023-06-15 19:05:04','2023-06-15 19:05:04','127.0.0.1'),(38,'seo',0,'page','simplified-dining-experience-guest-checkout-at-our-restaurant','Guest checkout',NULL,'','Simplified Dining Experience: Guest Checkout at Our Restaurant','Indulge in a hassle-free dining experience with our guest checkout option at the restaurant. No account creation required! Seamlessly proceed through the checkout process, review your order details, and securely complete your payment as a guest. Whether you\'re a first-time visitor or prefer to skip the account setup, our streamlined guest checkout page ensures a smooth and efficient transaction. Enjoy the convenience and ease of a simplified dining experience, tailored for guests like you.','','','','publish','2023-06-15 19:06:03','2023-06-15 19:06:03','127.0.0.1'),(39,'seo',0,'page','reserve-your-table-effortless-restaurant-table-booking','Table booking',NULL,'','Reserve Your Table: Effortless Restaurant Table Booking','Secure your dining experience with ease through our hassle-free restaurant table booking. Reserve your preferred table in advance, ensuring a seamless and enjoyable dining occasion. Whether it\'s for a romantic dinner, a family gathering, or a business meeting, our convenient booking process allows you to select the date, time, and party size effortlessly. Experience personalized hospitality and guarantee your spot at our restaurant by making a reservation today. Unlock exceptional dining moments with our effortless table booking service.','','','','publish','2023-06-15 19:07:18','2023-06-15 19:07:18','127.0.0.1'),(40,'seo',0,'page','take-control-of-your-reservations-manage-restaurant-table-bookings','Manage table booking',NULL,'','Take Control of Your Reservations: Manage Restaurant Table Bookings','Empower yourself with the ability to effortlessly manage your restaurant table bookings. With our intuitive management system, you can easily view, modify, and cancel your reservations. Keep track of your upcoming dining plans, make adjustments as needed, and ensure a smooth and seamless experience. Take control of your restaurant bookings and enjoy the convenience of managing your table reservations with ease. Enhance your dining journey with our efficient table booking management feature.','','','','publish','2023-06-15 19:07:59','2023-06-15 19:07:59','127.0.0.1'),(41,'seo',0,'page','stay-in-the-know-track-your-favorite-restaurants-latest-updates-and-specials','Tracking order',NULL,'','Stay in the Know: Track Your Favorite Restaurant\'s Latest Updates and Specials!','Welcome to our Restaurant Tracking Page! Stay informed and never miss a beat with the latest updates from your favorite dining establishments. Track new menu additions, seasonal specials, promotions, and events happening at the restaurants you love. Our comprehensive tracking system ensures you\'re always in the loop, allowing you to plan your culinary adventures with ease. Discover the freshest flavors, follow the trends, and satisfy your cravings by staying connected to the pulse of the restaurant scene. Start tracking today and never miss out on the exciting happenings at your go-to restaurants!','','','','publish','2023-06-15 23:34:56','2023-06-15 23:34:56','127.0.0.1');
/*!40000 ALTER TABLE `st_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_pages_translation`
--

DROP TABLE IF EXISTS `st_pages_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_pages_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `long_content` mediumtext DEFAULT NULL,
  `meta_title` varchar(255) NOT NULL DEFAULT '',
  `meta_description` text DEFAULT NULL,
  `meta_keywords` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `page_id` (`page_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_pages_translation`
--

LOCK TABLES `st_pages_translation` WRITE;
/*!40000 ALTER TABLE `st_pages_translation` DISABLE KEYS */;
INSERT INTO `st_pages_translation` VALUES (1,1,'ja','','','','',''),(2,1,'ar','','','','',''),(3,1,'en','Terms and conditions','<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>','','',''),(4,2,'ja','','','','',''),(5,2,'ar','','','','',''),(6,2,'en','Privacy policy','<div>\r\n<p>\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Nullam id \r\nsapien massa. Sed porta interdum nulla sed accumsan. Proin lacinia vel \r\nnulla eget porttitor. In varius vehicula facilisis. Maecenas non \r\nvehicula massa. Maecenas vel eros nec ante rutrum fringilla vel sit amet\r\n ipsum. Sed ut tellus nisl. Aenean vehicula, diam nec sollicitudin \r\nporttitor, purus augue mattis risus, porta elementum augue nibh eget \r\nsapien. Fusce a efficitur ipsum. In urna mi, ullamcorper ut ultrices sit\r\n amet, faucibus et risus. Maecenas vestibulum molestie ex.\r\n</p>\r\n<p>\r\nMaecenas ut lectus eget ante faucibus tristique. In sodales turpis orci,\r\n quis commodo lectus feugiat quis. Aliquam varius metus diam, id luctus \r\neros sagittis vel. Nulla facilisi. Suspendisse mollis eros lacus, at \r\nmaximus enim imperdiet quis. Nulla eget diam ac diam condimentum \r\nelementum. Ut at ipsum vitae ipsum ullamcorper vestibulum. Aliquam \r\neuismod enim vitae blandit tristique.\r\n</p>\r\n<p>\r\nVestibulum malesuada, diam sit amet tristique finibus, sem lacus \r\nelementum diam, et semper ipsum odio eu quam. Sed hendrerit tincidunt \r\neuismod. Aliquam finibus quis elit at sollicitudin. In at magna euismod,\r\n tincidunt lectus sed, posuere dui. Curabitur congue ante non ligula \r\nsagittis, non blandit metus consectetur. Nunc nisi purus, ultrices in \r\nodio quis, mattis condimentum quam. Nullam vestibulum ex et erat \r\nvolutpat hendrerit. Vestibulum luctus quam vestibulum mollis euismod. \r\nEtiam efficitur mauris vel mi pretium iaculis. Donec sed erat tincidunt,\r\n elementum sem in, consectetur ipsum. Nulla pellentesque porta sapien, \r\neu venenatis justo vulputate vitae. Nunc et finibus ex, non finibus \r\nmassa. Nulla non turpis rutrum, molestie dui id, pharetra massa.\r\n</p>\r\n<p>\r\nDuis a arcu quis quam sodales dapibus. Curabitur consectetur sit amet \r\ndiam sed consectetur. Sed facilisis ultricies odio, nec sagittis enim \r\nlacinia non. Maecenas non congue est, sed condimentum mi. Cras a \r\nporttitor libero. Praesent massa risus, sollicitudin eget accumsan \r\nelementum, ornare nec felis. Vestibulum porttitor imperdiet rhoncus. \r\nMauris consequat fermentum metus feugiat facilisis. Sed eleifend mollis \r\nmattis. Nunc imperdiet lectus non quam ullamcorper, at ultrices ante \r\ncongue. Etiam aliquam arcu felis. Class aptent taciti sociosqu ad litora\r\n torquent per conubia nostra, per inceptos himenaeos. Nulla consequat, \r\nturpis sit amet pharetra elementum, quam lacus placerat sapien, at \r\nsagittis nunc erat in sem. Nulla sed aliquet neque, a tempor leo. \r\nAliquam erat volutpat. Sed tempor libero neque, condimentum feugiat \r\ndolor lobortis in.\r\n</p>\r\n<p>\r\nFusce convallis quis augue vitae scelerisque. Sed auctor lectus a odio \r\neleifend, eget auctor enim vestibulum. Integer neque urna, eleifend in \r\nporta a, vehicula et risus. Vestibulum vehicula placerat ante sed \r\nlaoreet. Integer varius felis a magna tempor, a efficitur ex fringilla. \r\nDonec in diam a diam placerat luctus et nec nisi. Sed efficitur lacus \r\nfelis, vitae rutrum nibh eleifend in.\r\n</p></div>','','','');
/*!40000 ALTER TABLE `st_pages_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_paydelivery`
--

DROP TABLE IF EXISTS `st_paydelivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_paydelivery` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(255) NOT NULL DEFAULT '',
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `payment_name` (`payment_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_paydelivery`
--

LOCK TABLES `st_paydelivery` WRITE;
/*!40000 ALTER TABLE `st_paydelivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_paydelivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_payment_gateway`
--

DROP TABLE IF EXISTS `st_payment_gateway`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_payment_gateway` (
  `payment_id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_name` varchar(255) NOT NULL DEFAULT '',
  `payment_code` varchar(255) NOT NULL DEFAULT '',
  `is_online` tinyint(1) NOT NULL DEFAULT 0,
  `is_payout` tinyint(1) NOT NULL DEFAULT 0,
  `is_plan` tinyint(1) NOT NULL DEFAULT 0,
  `logo_type` varchar(50) NOT NULL DEFAULT 'icon',
  `logo_class` varchar(100) NOT NULL DEFAULT '',
  `logo_image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `sequence` int(11) NOT NULL DEFAULT 0,
  `is_live` tinyint(1) NOT NULL DEFAULT 1,
  `attr_json` text DEFAULT NULL,
  `attr_json1` text DEFAULT NULL,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `attr4` text DEFAULT NULL,
  `attr5` varchar(255) NOT NULL DEFAULT '',
  `attr6` varchar(255) NOT NULL DEFAULT '',
  `attr7` varchar(255) NOT NULL DEFAULT '',
  `attr8` varchar(255) NOT NULL DEFAULT '',
  `attr9` text DEFAULT NULL,
  `split` smallint(1) NOT NULL DEFAULT 0,
  `capture` smallint(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`payment_id`),
  KEY `payment_code` (`payment_code`),
  KEY `is_online` (`is_online`),
  KEY `is_payout` (`is_payout`),
  KEY `is_plan` (`is_plan`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_payment_gateway`
--

LOCK TABLES `st_payment_gateway` WRITE;
/*!40000 ALTER TABLE `st_payment_gateway` DISABLE KEYS */;
INSERT INTO `st_payment_gateway` VALUES (1,'Cash On delivery','cod',0,0,0,'icon','zmdi zmdi-money-box','','','inactive',1,1,'{\n	\"attr1\": {\n		\"label\": \"Change required, if required value = 1\"\n	},\n	\"attr2\": {\n		\"label\": \"Maximum limit\"\n	}\n}',NULL,'','','','','','','','',NULL,0,0,NULL,'2026-04-04 20:45:01','192.168.97.1'),(2,'Credit/Debit Card','ocr',0,0,0,'image','zmdi zmdi-card','','','inactive',2,1,NULL,NULL,'','','','','','','','',NULL,0,0,NULL,'2026-04-04 21:09:06','192.168.97.1'),(5,'Paypal','paypal',1,1,1,'image','zmdi zmdi-paypal','9e9d3f64-40ed-11ef-8e54-9c5c8e164c2c.png','upload/all','inactive',12,0,'{\"attr1\":{\"label\":\"Client ID\"},\"attr2\":{\"label\":\"Secret ID\"},\"attr5\":{\"label\":\"Card fee %\"},\"attr6\":{\"label\":\"Card fixed fee\"}}','{\"email_address\":\"Email Address\"}','AT4L2f5cPeFy2cOkKW11AIZbuE3nPQxEdDIetVEAinq47vIF2fAs6FAC5Zs-9GetL0rNNplpqq1gTDQa','ECjkntbfOoq6OpSCBvtBPr3QOyTmT3dMepglPAe9AdOOfac764TYzjx7EsfTF8JyN7GcntXfkx3Kp1i0','','{\"Webhooks Plan\":\"{site_url}/paypal/apiv2/webhooksplans\",\"Events\":\"BILLING.SUBSCRIPTION.ACTIVATED, BILLING.SUBSCRIPTION.CREATED, BILLING.SUBSCRIPTION.CANCELLED, BILLING.SUBSCRIPTION.PAYMENT.FAILED\"}','','','','',NULL,0,0,NULL,'2026-04-04 20:44:54','192.168.97.1'),(6,'Kort','stripe',1,1,1,'image','zmdi zmdi-card','34fa2c62-305a-11f1-86f1-4ab0e3a8062d.png','upload/all','active',13,0,'{\"attr1\":{\"label\":\"Secret key\"},\"attr2\":{\"label\":\"Publishable Key\"},\"attr3\":{\"label\":\"Webhooks Signing secret\"}}','{\"account_number\":\"Account number\",\"account_holder_name\":\"Account name\",\"account_holder_type\":\"Account type\",\"currency\":\"Currency\",\"routing_number\":\"Routing number\",\"country\":\"Country\"}','sk_test_f95wSoGGaVzxbOgxcUXV0dvx','pk_test_svqQz6KfEyJ8S0UO3ac0wAn0','whsec_e6QK2fODcE4lfLOz3bk9iqwWWiIKKyEi','{\"Webhooks Plan\":\"{site_url}/stripe/apiv2/webhooksplans\",\"Events\":\"checkout.session.completed, invoice.paid, invoice.payment_failed, customer.subscription.deleted, subscription_schedule.canceled\"}','','','','',NULL,0,0,NULL,'2026-04-04 21:12:33','192.168.97.1'),(7,'Razorpay','razorpay',1,1,1,'image','','40153c1c-80b2-11ec-859e-99479722e411.png','upload/all','inactive',14,0,'{\"attr1\":{\"label\":\"Key ID\"},\"attr2\":{\"label\":\"Key Secret\"}}',NULL,'rzp_test_fUeXTtpM4rngDl','t37LVcdi49KVjj1AE2WCtjkD','','{\"Webhooks Plan\":\"{site_url}/razorpay/apiv2/webhooksplans\",\"Events\":\"subscription.charged, subscription.updated, subscription.cancelled, subscription.pending, subscription.halted\"}','','','','',NULL,0,0,'2021-10-14 20:42:19','2026-04-04 20:45:09','192.168.97.1'),(8,'Mercadopago','mercadopago',1,0,0,'image','x','2f76795f-80b2-11ec-859e-99479722e411.png','upload/all','inactive',7,0,'{\"attr1\":{\"label\":\"Public Key\"},\"attr2\":{\"label\":\"Access Token\"}}',NULL,'TEST-287c4601-0425-4eff-84ec-e42f05006d29','TEST-3846096499578652-050720-4c7dbc49ba67bf1f86b0594cd222bfaa-131280449','','','','','','',NULL,0,0,'2021-10-19 10:16:21','2026-04-04 20:45:08','192.168.97.1'),(9,'Bank Transfer','bank',0,1,0,'icon','zmdi zmdi-store','','','inactive',8,0,'{\n  \"attr9\": {\n    \"label\": \"Bank Instructions\",\n    \"field_type\": \"textarea\"\n  },\n  \"attr1\": {\n    \"label\": \"Subject\",\n    \"field_type\": \"text\"\n  }\n}','{\"full_name\":\"Full Name\",\"billing_address1\":\"Billing Address Line 1\",\"billing_address2\":\"Billing Address Line 2\",\"city\":\"City\",\"state\":\"State\",\"post_code\":\"Postcode\",\"country\":\"Country\",\"account_name\":\"Bank Account Holder\'s Name\",\"account_number\":\"Bank Account Number\\/IBAN\",\"swift_code\":\"SWIFT Code\",\"bank_name\":\"Bank Name in Full\",\"bank_branch\":\"Bank Branch City\"}','Bank instructions deposit','Bank instructions deposit','','','','','','','<p>Hi {{first_name}},<br><br>Deposit Instructions<br><br>Please deposit {{amount}} to :<br><br>Bank : Your bank name<br>Account Number : Your bank account number<br>Account Name : Your bank account name<br><br>When deposit is completed<br>fill in your bank deposit information {{upload_deposit_url}}<br><br><br>Kind Regards<br></p>',0,0,'2021-11-17 03:32:31','2026-04-04 20:45:07','192.168.97.1'),(10,'Pay on delivery','paydelivery',0,0,0,'icon','zmdi zmdi-card','','','inactive',0,1,NULL,NULL,'','','','','','','','',NULL,0,0,'2023-08-05 01:39:31','2026-04-04 21:08:07','192.168.97.1');
/*!40000 ALTER TABLE `st_payment_gateway` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_payment_gateway_merchant`
--

DROP TABLE IF EXISTS `st_payment_gateway_merchant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_payment_gateway_merchant` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `payment_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(14) NOT NULL DEFAULT 0,
  `payment_id` bigint(20) DEFAULT 0,
  `payment_code` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(100) NOT NULL DEFAULT 'active',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `is_live` int(1) NOT NULL DEFAULT 1,
  `attr_json` text DEFAULT NULL,
  `attr1` varchar(255) NOT NULL DEFAULT '',
  `attr2` varchar(255) NOT NULL DEFAULT '',
  `attr3` varchar(255) NOT NULL DEFAULT '',
  `attr4` varchar(255) NOT NULL DEFAULT '',
  `attr5` varchar(255) NOT NULL DEFAULT '',
  `attr6` varchar(255) NOT NULL DEFAULT '',
  `attr7` varchar(255) NOT NULL DEFAULT '',
  `attr8` varchar(255) NOT NULL DEFAULT '',
  `attr9` text DEFAULT NULL,
  `split` smallint(1) NOT NULL DEFAULT 0,
  `capture` smallint(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `payment_uuid` (`payment_uuid`),
  KEY `merchant_id` (`merchant_id`),
  KEY `payment_id` (`payment_id`),
  KEY `payment_code` (`payment_code`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_payment_gateway_merchant`
--

LOCK TABLES `st_payment_gateway_merchant` WRITE;
/*!40000 ALTER TABLE `st_payment_gateway_merchant` DISABLE KEYS */;
INSERT INTO `st_payment_gateway_merchant` VALUES (1,'a0026db1-305c-11f1-86f1-4ab0e3a8062d',1,6,'stripe','active',1,0,NULL,'','','','','','','','',NULL,0,0,'2026-04-04 19:29:40','2026-04-04 19:29:40','');
/*!40000 ALTER TABLE `st_payment_gateway_merchant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_payment_method_meta`
--

DROP TABLE IF EXISTS `st_payment_method_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_payment_method_meta` (
  `id` bigint(14) NOT NULL AUTO_INCREMENT,
  `payment_method_id` bigint(20) DEFAULT NULL,
  `meta_name` varchar(255) NOT NULL DEFAULT '',
  `meta_value` longtext DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_method_id` (`payment_method_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_payment_method_meta`
--

LOCK TABLES `st_payment_method_meta` WRITE;
/*!40000 ALTER TABLE `st_payment_method_meta` DISABLE KEYS */;
INSERT INTO `st_payment_method_meta` VALUES (1,3,'payment_customer_id','cus_UH7XFr9sRumDys','2026-04-04 21:15:09'),(2,3,'payment_method_id','pm_1TIZeyE4iIFf0ivghMl0e4uK','2026-04-04 21:15:09'),(3,3,'is_live','0','2026-04-04 21:15:09');
/*!40000 ALTER TABLE `st_payment_method_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_payment_reference`
--

DROP TABLE IF EXISTS `st_payment_reference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_payment_reference` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `payment_type` varchar(50) NOT NULL DEFAULT 'order',
  `reference_id` varchar(100) DEFAULT NULL,
  `payment_reference_id` varchar(100) DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_type` (`payment_type`),
  KEY `reference_id` (`reference_id`),
  KEY `payment_reference_id` (`payment_reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_payment_reference`
--

LOCK TABLES `st_payment_reference` WRITE;
/*!40000 ALTER TABLE `st_payment_reference` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_payment_reference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plan_subscriptions`
--

DROP TABLE IF EXISTS `st_plan_subscriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plan_subscriptions` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(50) NOT NULL DEFAULT '',
  `payment_code` varchar(50) NOT NULL DEFAULT '',
  `subscriber_id` int(10) NOT NULL DEFAULT 0,
  `package_id` int(10) NOT NULL DEFAULT 0,
  `plan_name` varchar(255) NOT NULL DEFAULT '',
  `billing_cycle` varchar(50) NOT NULL DEFAULT '',
  `amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `currency_code` varchar(5) NOT NULL DEFAULT '',
  `subscriber_type` varchar(50) NOT NULL DEFAULT 'merchant',
  `subscription_id` varchar(255) NOT NULL DEFAULT '',
  `created_at` date DEFAULT NULL,
  `next_due` date DEFAULT NULL,
  `expiration` date DEFAULT NULL,
  `current_start` date DEFAULT NULL,
  `current_end` date DEFAULT NULL,
  `jobs` varchar(100) NOT NULL DEFAULT '',
  `sucess_url` varchar(255) NOT NULL DEFAULT '',
  `failed_url` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `date_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriber_id` (`subscriber_id`),
  KEY `subscriber_type` (`subscriber_type`),
  KEY `package_id` (`package_id`),
  KEY `subscription_id` (`subscription_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plan_subscriptions`
--

LOCK TABLES `st_plan_subscriptions` WRITE;
/*!40000 ALTER TABLE `st_plan_subscriptions` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plan_subscriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plans`
--

DROP TABLE IF EXISTS `st_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plans` (
  `package_id` int(14) NOT NULL AUTO_INCREMENT,
  `package_uuid` varchar(50) NOT NULL DEFAULT '',
  `plan_type` varchar(50) NOT NULL DEFAULT 'membership',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `price` float(14,4) NOT NULL DEFAULT 0.0000,
  `promo_price` float(14,4) NOT NULL DEFAULT 0.0000,
  `package_period` varchar(50) NOT NULL DEFAULT 'monthly',
  `ordering_enabled` tinyint(1) NOT NULL DEFAULT 1,
  `item_limit` int(14) NOT NULL DEFAULT 0,
  `order_limit` int(14) NOT NULL DEFAULT 0,
  `trial_period` int(14) NOT NULL DEFAULT 0,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT '',
  `pos` tinyint(1) NOT NULL DEFAULT 0,
  `self_delivery` tinyint(1) NOT NULL DEFAULT 0,
  `chat` tinyint(1) NOT NULL DEFAULT 0,
  `loyalty_program` tinyint(1) NOT NULL DEFAULT 0,
  `table_reservation` tinyint(1) NOT NULL DEFAULT 0,
  `inventory_management` tinyint(1) NOT NULL DEFAULT 0,
  `marketing_tools` tinyint(1) NOT NULL DEFAULT 0,
  `mobile_app` tinyint(1) NOT NULL DEFAULT 0,
  `payment_processing` tinyint(1) NOT NULL DEFAULT 0,
  `customer_feedback` tinyint(1) NOT NULL DEFAULT 0,
  `coupon_creation` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`package_id`),
  KEY `status` (`status`),
  KEY `package_uuid` (`package_uuid`),
  KEY `plan_type` (`plan_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plans`
--

LOCK TABLES `st_plans` WRITE;
/*!40000 ALTER TABLE `st_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plans_create_payment`
--

DROP TABLE IF EXISTS `st_plans_create_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plans_create_payment` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `payment_id` varchar(100) NOT NULL DEFAULT '',
  `package_id` int(14) NOT NULL DEFAULT 0,
  `subscriber_id` int(14) NOT NULL DEFAULT 0,
  `subscription_type` varchar(50) NOT NULL DEFAULT '',
  `subscriber_type` varchar(50) NOT NULL DEFAULT 'merchant',
  `jobs` varchar(100) NOT NULL DEFAULT '',
  `success_url` varchar(255) DEFAULT '',
  `failed_url` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `package_id` (`package_id`),
  KEY `subscriber_id` (`subscriber_id`),
  KEY `subscription_type` (`subscription_type`),
  KEY `subscriber_type` (`subscriber_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plans_create_payment`
--

LOCK TABLES `st_plans_create_payment` WRITE;
/*!40000 ALTER TABLE `st_plans_create_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plans_create_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plans_customer`
--

DROP TABLE IF EXISTS `st_plans_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plans_customer` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `payment_code` varchar(50) NOT NULL DEFAULT '',
  `subscriber_id` int(14) NOT NULL DEFAULT 0,
  `subscriber_type` varchar(50) NOT NULL DEFAULT '',
  `customer_id` varchar(100) NOT NULL DEFAULT '',
  `livemode` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subscriber_id` (`subscriber_id`),
  KEY `subscriber_type` (`subscriber_type`),
  KEY `customer_id` (`customer_id`),
  KEY `livemode` (`livemode`),
  KEY `payment_code` (`payment_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plans_customer`
--

LOCK TABLES `st_plans_customer` WRITE;
/*!40000 ALTER TABLE `st_plans_customer` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plans_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plans_invoice`
--

DROP TABLE IF EXISTS `st_plans_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plans_invoice` (
  `invoice_number` bigint(20) NOT NULL AUTO_INCREMENT,
  `invoice_uuid` varchar(50) NOT NULL DEFAULT '',
  `invoice_type` varchar(50) NOT NULL DEFAULT 'membership',
  `payment_code` varchar(10) NOT NULL DEFAULT '',
  `amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) DEFAULT 0,
  `package_id` bigint(20) DEFAULT 0,
  `invoice_ref_number` varchar(50) NOT NULL DEFAULT '',
  `payment_ref1` varchar(100) NOT NULL DEFAULT '',
  `created` timestamp NULL DEFAULT NULL,
  `due_date` timestamp NULL DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`invoice_number`),
  KEY `invoice_uuid` (`invoice_uuid`),
  KEY `invoice_type` (`invoice_type`),
  KEY `payment_code` (`payment_code`),
  KEY `merchant_id` (`merchant_id`),
  KEY `package_id` (`package_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plans_invoice`
--

LOCK TABLES `st_plans_invoice` WRITE;
/*!40000 ALTER TABLE `st_plans_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plans_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plans_translation`
--

DROP TABLE IF EXISTS `st_plans_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plans_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `package_id` (`package_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plans_translation`
--

LOCK TABLES `st_plans_translation` WRITE;
/*!40000 ALTER TABLE `st_plans_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plans_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_plans_webhooks`
--

DROP TABLE IF EXISTS `st_plans_webhooks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_plans_webhooks` (
  `event_id` int(10) NOT NULL AUTO_INCREMENT,
  `id` varchar(255) NOT NULL,
  `event_type` varchar(255) NOT NULL DEFAULT '',
  `processed_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_plans_webhooks`
--

LOCK TABLES `st_plans_webhooks` WRITE;
/*!40000 ALTER TABLE `st_plans_webhooks` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_plans_webhooks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_printer`
--

DROP TABLE IF EXISTS `st_printer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_printer` (
  `printer_id` int(11) NOT NULL AUTO_INCREMENT,
  `platform` varchar(20) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `device_uuid` varchar(255) NOT NULL DEFAULT '',
  `printer_uuid` varchar(100) NOT NULL,
  `printer_name` varchar(100) NOT NULL DEFAULT '',
  `printer_bt_name` varchar(255) NOT NULL DEFAULT '',
  `printer_model` varchar(100) NOT NULL DEFAULT 'bluetooth',
  `device_id` varchar(100) NOT NULL DEFAULT '',
  `service_id` varchar(100) NOT NULL DEFAULT '',
  `characteristics` varchar(100) NOT NULL DEFAULT '',
  `paper_width` int(10) NOT NULL DEFAULT 58,
  `auto_print` int(1) NOT NULL DEFAULT 0,
  `print_type` varchar(20) NOT NULL DEFAULT 'raw',
  `character_code` varchar(20) NOT NULL DEFAULT '',
  `auto_close` int(1) NOT NULL DEFAULT 1,
  `status` int(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`printer_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_printer`
--

LOCK TABLES `st_printer` WRITE;
/*!40000 ALTER TABLE `st_printer` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_printer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_printer_logs`
--

DROP TABLE IF EXISTS `st_printer_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_printer_logs` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `order_id` bigint(20) NOT NULL DEFAULT 0,
  `merchant_id` bigint(20) NOT NULL DEFAULT 0,
  `printer_type` varchar(100) NOT NULL DEFAULT 'feie',
  `printer_number` varchar(100) NOT NULL DEFAULT '',
  `print_content` text DEFAULT NULL,
  `job_id` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `printer_type` (`printer_type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_printer_logs`
--

LOCK TABLES `st_printer_logs` WRITE;
/*!40000 ALTER TABLE `st_printer_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_printer_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_printer_meta`
--

DROP TABLE IF EXISTS `st_printer_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_printer_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `printer_id` int(14) NOT NULL DEFAULT 0,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value1` varchar(255) NOT NULL DEFAULT '',
  `meta_value2` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `printer_id` (`printer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_printer_meta`
--

LOCK TABLES `st_printer_meta` WRITE;
/*!40000 ALTER TABLE `st_printer_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_printer_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_promos`
--

DROP TABLE IF EXISTS `st_promos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_promos` (
  `promo_id` int(11) NOT NULL AUTO_INCREMENT,
  `id` int(11) DEFAULT NULL,
  `merchant_id` int(11) DEFAULT NULL,
  `valid_from` date DEFAULT NULL,
  `valid_to` date DEFAULT NULL,
  `offer_type` varchar(100) NOT NULL DEFAULT '',
  `discount_name` varchar(255) NOT NULL DEFAULT '',
  `offer_amount` decimal(10,2) DEFAULT NULL,
  `discount_type` varchar(100) NOT NULL DEFAULT '',
  `min_order` decimal(10,2) DEFAULT NULL,
  `max_order` decimal(10,2) NOT NULL DEFAULT 0.00,
  `max_discount_cap` decimal(10,2) NOT NULL DEFAULT 0.00,
  `applicable_to` varchar(255) DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  `visible` smallint(1) NOT NULL DEFAULT 1,
  `monday` smallint(1) NOT NULL DEFAULT 1,
  `tuesday` smallint(1) NOT NULL DEFAULT 1,
  `wednesday` smallint(1) NOT NULL DEFAULT 1,
  `thursday` smallint(1) NOT NULL DEFAULT 1,
  `friday` smallint(1) NOT NULL DEFAULT 1,
  `saturday` smallint(1) NOT NULL DEFAULT 1,
  `sunday` smallint(1) NOT NULL DEFAULT 1,
  PRIMARY KEY (`promo_id`),
  KEY `id` (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `valid_from` (`valid_from`),
  KEY `valid_to` (`valid_to`),
  KEY `offer_type` (`offer_type`),
  KEY `status` (`status`),
  KEY `visible` (`visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_promos`
--

LOCK TABLES `st_promos` WRITE;
/*!40000 ALTER TABLE `st_promos` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_promos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_push`
--

DROP TABLE IF EXISTS `st_push`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_push` (
  `push_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `push_type` varchar(50) NOT NULL DEFAULT '',
  `provider` varchar(50) NOT NULL DEFAULT '',
  `channel_device_id` text DEFAULT NULL,
  `platform` varchar(50) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `body` text DEFAULT NULL,
  `image` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) NOT NULL DEFAULT '',
  `status` varchar(50) NOT NULL DEFAULT 'pending',
  `response` text DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`push_uuid`),
  KEY `push_type` (`push_type`),
  KEY `provider` (`provider`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_push`
--

LOCK TABLES `st_push` WRITE;
/*!40000 ALTER TABLE `st_push` DISABLE KEYS */;
INSERT INTO `st_push` VALUES ('bac0dddf-30df-11f1-b058-9a79972e1847',0,'broadcast','firebase','bf9c1843-3031-11f1-86f1-4ab0e3a8062d','android','You have new order from Jawad Khan','Order#10006 from Jawad Khan','logo.png','upload/merchant/1/','pending',NULL,'2026-04-05 13:08:09','127.0.0.1'),('bac1575e-30df-11f1-b058-9a79972e1847',0,'broadcast','firebase','bf9c1843-3031-11f1-86f1-4ab0e3a8062d','ios','You have new order from Jawad Khan','Order#10006 from Jawad Khan','logo.png','upload/merchant/1/','pending',NULL,'2026-04-05 13:08:09','127.0.0.1'),('fd76edfb-30c9-11f1-b058-9a79972e1847',0,'broadcast','firebase','bf9c1843-3031-11f1-86f1-4ab0e3a8062d','android','You have new order from Jawad Khan','Order#10005 from Jawad Khan','logo.png','upload/merchant/1/','pending',NULL,'2026-04-05 10:32:32','127.0.0.1'),('fd776b42-30c9-11f1-b058-9a79972e1847',0,'broadcast','firebase','bf9c1843-3031-11f1-86f1-4ab0e3a8062d','ios','You have new order from Jawad Khan','Order#10005 from Jawad Khan','logo.png','upload/merchant/1/','pending',NULL,'2026-04-05 10:32:32','127.0.0.1');
/*!40000 ALTER TABLE `st_push` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_review`
--

DROP TABLE IF EXISTS `st_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_review` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `client_id` int(14) NOT NULL DEFAULT 0,
  `driver_id` int(14) NOT NULL DEFAULT 0,
  `review` text DEFAULT NULL,
  `rating` float(14,1) NOT NULL DEFAULT 0.0,
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `order_id` varchar(14) NOT NULL DEFAULT '',
  `parent_id` int(14) NOT NULL DEFAULT 0,
  `reply_from` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `as_anonymous` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `client_id` (`client_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `rating` (`rating`),
  KEY `status` (`status`),
  KEY `parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_review`
--

LOCK TABLES `st_review` WRITE;
/*!40000 ALTER TABLE `st_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_review_meta`
--

DROP TABLE IF EXISTS `st_review_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_review_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `review_id` int(14) NOT NULL DEFAULT 0,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `review_id` (`review_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_review_meta`
--

LOCK TABLES `st_review_meta` WRITE;
/*!40000 ALTER TABLE `st_review_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_review_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role`
--

DROP TABLE IF EXISTS `st_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role` (
  `role_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_type` varchar(50) NOT NULL DEFAULT 'admin',
  `merchant_id` int(11) NOT NULL DEFAULT 0,
  `role_name` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role`
--

LOCK TABLES `st_role` WRITE;
/*!40000 ALTER TABLE `st_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_role_access`
--

DROP TABLE IF EXISTS `st_role_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_role_access` (
  `role_access_id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `action_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`role_access_id`),
  KEY `role_id` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_role_access`
--

LOCK TABLES `st_role_access` WRITE;
/*!40000 ALTER TABLE `st_role_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_role_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_services`
--

DROP TABLE IF EXISTS `st_services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_services` (
  `service_id` int(11) NOT NULL AUTO_INCREMENT,
  `service_code` varchar(255) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`service_id`),
  KEY `service_code` (`service_code`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_services`
--

LOCK TABLES `st_services` WRITE;
/*!40000 ALTER TABLE `st_services` DISABLE KEYS */;
INSERT INTO `st_services` VALUES (1,'delivery','Levering','Use the {site_name} to get orders to customer','#9fc5e8','white',0,'publish','2021-08-03 10:12:43','2024-05-29 00:01:03','127.0.0.1'),(2,'pickup','Afhentning','Let customer {transaction_type} their orders to get more sales at a low fee','#e8989b','white',1,'publish','2021-08-03 10:12:43','2024-04-02 09:54:47','127.0.0.1'),(3,'dinein','Spis her','Let customer {transaction_type} at your restaurant at low fee','#ffd966','#bcbcbc',2,'publish','2021-08-03 10:12:43','2024-04-02 09:54:47','127.0.0.1'),(4,'takeout','Take away','','#eeeeee','#c90076',3,'publish','2024-04-02 09:54:24','2024-04-10 09:31:01','127.0.0.1');
/*!40000 ALTER TABLE `st_services` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_services_fee`
--

DROP TABLE IF EXISTS `st_services_fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_services_fee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `merchant_id` int(11) NOT NULL DEFAULT 0,
  `charge_type` varchar(50) NOT NULL DEFAULT 'fixed',
  `service_fee` float(14,4) NOT NULL DEFAULT 0.0000,
  `small_order_fee` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `small_less_order_based` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_services_fee`
--

LOCK TABLES `st_services_fee` WRITE;
/*!40000 ALTER TABLE `st_services_fee` DISABLE KEYS */;
INSERT INTO `st_services_fee` VALUES (1,4,0,'fixed',0.0000,0.0000,0.0000,'2022-01-27 16:10:25'),(2,3,0,'fixed',0.0000,0.0000,0.0000,'2022-01-27 16:10:30'),(3,2,0,'fixed',0.0000,0.0000,0.0000,'2022-01-27 16:10:35'),(4,1,0,'fixed',0.0000,0.0000,0.0000,'2022-01-27 16:10:39');
/*!40000 ALTER TABLE `st_services_fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_services_translation`
--

DROP TABLE IF EXISTS `st_services_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_services_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `service_id` int(11) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `service_name` varchar(255) NOT NULL DEFAULT '',
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `service_id` (`service_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_services_translation`
--

LOCK TABLES `st_services_translation` WRITE;
/*!40000 ALTER TABLE `st_services_translation` DISABLE KEYS */;
INSERT INTO `st_services_translation` VALUES (16,4,'ja','','2022-01-27 16:10:25'),(17,4,'ar','','2022-01-27 16:10:25'),(18,4,'en','Takeout','2022-01-27 16:10:25'),(19,3,'ja','','2022-01-27 16:10:30'),(20,3,'ar','','2022-01-27 16:10:30'),(21,3,'en','Dinein','2022-01-27 16:10:30'),(22,2,'ja','','2022-01-27 16:10:35'),(23,2,'ar','','2022-01-27 16:10:35'),(24,2,'en','Pickup','2022-01-27 16:10:35'),(25,1,'ja','','2022-01-27 16:10:39'),(26,1,'ar','','2022-01-27 16:10:39'),(27,1,'en','Delivery','2022-01-27 16:10:39'),(28,2,'da','Afhentning','2026-04-04 15:26:52'),(29,1,'da','Levering','2026-04-04 15:26:52'),(30,3,'da','Spis her','2026-04-04 15:26:52'),(31,4,'da','Take away','2026-04-04 15:26:52');
/*!40000 ALTER TABLE `st_services_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_shipping_rate`
--

DROP TABLE IF EXISTS `st_shipping_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_shipping_rate` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `service_code` varchar(255) NOT NULL DEFAULT 'delivery',
  `charge_type` varchar(100) NOT NULL DEFAULT 'dynamic',
  `shipping_type` varchar(100) NOT NULL DEFAULT 'standard',
  `distance_from` float(14,2) NOT NULL DEFAULT 0.00,
  `distance_to` float(14,2) NOT NULL DEFAULT 0.00,
  `shipping_units` varchar(5) NOT NULL DEFAULT '',
  `distance_price` float(14,4) NOT NULL DEFAULT 0.0000,
  `minimum_order` float(14,4) NOT NULL DEFAULT 0.0000,
  `maximum_order` float(14,4) NOT NULL DEFAULT 0.0000,
  `estimation` varchar(20) NOT NULL DEFAULT '',
  `fixed_free_delivery_threshold` float(10,2) NOT NULL DEFAULT 0.00,
  `cap_delivery_charge` float(10,2) NOT NULL DEFAULT 0.00,
  `time_per_additional` float(10,2) NOT NULL DEFAULT 0.00,
  `delivery_radius` float(10,2) NOT NULL DEFAULT 0.00,
  `last_update` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `service_code` (`service_code`),
  KEY `charge_type` (`charge_type`),
  KEY `shipping_type` (`shipping_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_shipping_rate`
--

LOCK TABLES `st_shipping_rate` WRITE;
/*!40000 ALTER TABLE `st_shipping_rate` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_shipping_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_size`
--

DROP TABLE IF EXISTS `st_size`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_size` (
  `size_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `size_name` varchar(255) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT 'published',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`size_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `size_name` (`size_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_size`
--

LOCK TABLES `st_size` WRITE;
/*!40000 ALTER TABLE `st_size` DISABLE KEYS */;
INSERT INTO `st_size` VALUES (1,1,'Standard',1,'published','2026-04-04 16:22:37','2026-04-04 16:22:37','');
/*!40000 ALTER TABLE `st_size` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_size_translation`
--

DROP TABLE IF EXISTS `st_size_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_size_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `size_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `size_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `size_id` (`size_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_size_translation`
--

LOCK TABLES `st_size_translation` WRITE;
/*!40000 ALTER TABLE `st_size_translation` DISABLE KEYS */;
INSERT INTO `st_size_translation` VALUES (1,1,1,'da','Standard');
/*!40000 ALTER TABLE `st_size_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_sms_broadcast`
--

DROP TABLE IF EXISTS `st_sms_broadcast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_sms_broadcast` (
  `broadcast_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `send_to` int(14) NOT NULL DEFAULT 0,
  `list_mobile_number` text NOT NULL,
  `sms_alert_message` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`broadcast_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `send_to` (`send_to`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_sms_broadcast`
--

LOCK TABLES `st_sms_broadcast` WRITE;
/*!40000 ALTER TABLE `st_sms_broadcast` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_sms_broadcast` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_sms_broadcast_details`
--

DROP TABLE IF EXISTS `st_sms_broadcast_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_sms_broadcast_details` (
  `id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `broadcast_id` int(14) NOT NULL DEFAULT 0,
  `client_id` int(14) NOT NULL DEFAULT 0,
  `client_name` varchar(255) NOT NULL DEFAULT '',
  `contact_phone` varchar(50) NOT NULL DEFAULT '',
  `sms_message` text DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `gateway_response` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_executed` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `gateway` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `broadcast_id` (`broadcast_id`),
  KEY `client_id` (`client_id`),
  KEY `status` (`status`),
  KEY `gateway` (`gateway`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_sms_broadcast_details`
--

LOCK TABLES `st_sms_broadcast_details` WRITE;
/*!40000 ALTER TABLE `st_sms_broadcast_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_sms_broadcast_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_sms_provider`
--

DROP TABLE IF EXISTS `st_sms_provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_sms_provider` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` varchar(100) NOT NULL DEFAULT '',
  `provider_name` varchar(255) NOT NULL DEFAULT '',
  `as_default` int(1) NOT NULL DEFAULT 0,
  `key1` varchar(255) NOT NULL DEFAULT '',
  `key2` varchar(255) NOT NULL DEFAULT '',
  `key3` varchar(255) NOT NULL DEFAULT '',
  `key4` varchar(255) NOT NULL DEFAULT '',
  `key5` varchar(255) NOT NULL DEFAULT '',
  `key6` varchar(255) NOT NULL DEFAULT '',
  `key7` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  KEY `as_default` (`as_default`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_sms_provider`
--

LOCK TABLES `st_sms_provider` WRITE;
/*!40000 ALTER TABLE `st_sms_provider` DISABLE KEYS */;
INSERT INTO `st_sms_provider` VALUES (1,'twilio','Twilio',0,'','','','','','',''),(2,'nexmo','Nexmo',0,'','','','','','',''),(3,'clickatell','Clickatell',0,'','','','','','',''),(5,'smsglobal','SMS Global',0,'','','','','','',''),(7,'msg91','Msg91',0,'','','','','','','');
/*!40000 ALTER TABLE `st_sms_provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_sourcemessage`
--

DROP TABLE IF EXISTS `st_sourcemessage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_sourcemessage` (
  `id` int(11) NOT NULL,
  `category` varchar(32) DEFAULT NULL,
  `message` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_sourcemessage`
--

LOCK TABLES `st_sourcemessage` WRITE;
/*!40000 ALTER TABLE `st_sourcemessage` DISABLE KEYS */;
INSERT INTO `st_sourcemessage` VALUES (0,'front','Search in menu'),(1,'backend','Total Sales'),(2,'backend','Total Merchant'),(3,'backend','Total Commission'),(4,'backend','Total Subscriptions'),(5,'backend','Commission this week'),(6,'backend','Commission this month'),(7,'backend','Subscriptions this month'),(8,'backend','Order received'),(9,'backend','Today delivered'),(10,'backend','New customer'),(11,'backend','Total refund'),(12,'backend','Last Orders'),(13,'backend','Quick management of the last {{limit}} orders'),(14,'backend','Block Customer'),(15,'backend','You are about to block this customer from ordering to your restaurant, click confirm to continue?'),(16,'backend','Cancel'),(17,'backend','Confirm'),(18,'backend','Sold'),(19,'backend','sales'),(20,'backend','Sales overview'),(21,'backend','Top Customers'),(22,'backend','Overview of Review'),(23,'backend','Star'),(24,'backend','Checkout All Reviews'),(25,'backend','Recent payout'),(26,'backend','Withdrawals Details'),(27,'backend','Close'),(28,'backend','Process this payout'),(29,'backend','Cancel this payout'),(30,'backend','Set status to paid'),(31,'backend','All'),(32,'backend','Processing'),(33,'backend','Ready'),(34,'backend','Completed'),(35,'backend','Popular items'),(36,'backend','latest popular items'),(37,'backend','Last 30 days sales'),(38,'backend','sales for last 30 days'),(39,'backend','Popular merchants'),(40,'backend','best selling restaurant'),(41,'backend','Popular by review'),(42,'backend','most reviewed'),(45,'backend','The difference between the DateTimes is NaN.'),(46,'backend','Moments ago'),(47,'backend','Seconds from now'),(48,'backend','Yesterday'),(49,'backend','Tomorrow'),(50,'backend','year'),(51,'backend','minutes'),(52,'backend','ago'),(53,'backend','hours'),(54,'backend','days'),(55,'backend','minute'),(56,'backend','hour'),(57,'backend','day'),(58,'backend','Member since {{date_created}}'),(59,'backend','{{total_sold}} orders'),(60,'backend','{{total_sold}} sold'),(61,'backend','This month you got {{count}} New Reviews'),(62,'backend','You don\'t have current orders.'),(63,'backend','Order #{{order_id}}'),(64,'backend','{{sold}} sold'),(65,'backend','ratings'),(66,'backend','Title'),(67,'backend','Select File'),(68,'backend','Upload New'),(69,'backend','Website logo'),(70,'backend','Add Files'),(71,'backend','Previous'),(72,'backend','Next'),(73,'backend','Search'),(74,'backend','Business Address'),(75,'backend','Address'),(76,'backend','Contact Phone Number'),(77,'backend','Contact email'),(78,'backend','Save'),(79,'backend','Site information'),(80,'backend','Map API Keys'),(81,'backend','Google Recaptcha'),(82,'backend','Search Mode'),(83,'backend','Login & Signup'),(84,'backend','Phone Settings'),(85,'backend','Social Login'),(86,'backend','Printing Settings'),(87,'backend','Reviews'),(88,'backend','Timezone'),(89,'backend','Ordering'),(90,'backend','Merchant Registration'),(91,'backend','Notifications'),(92,'backend','Contact Settings'),(93,'backend','Analytics'),(94,'backend','Choose Map Provider'),(95,'backend','Google Maps'),(96,'backend','Mapbox'),(97,'backend','Google Maps (default)'),(98,'backend','Geocoding API Key'),(99,'backend','Google Maps JavaScript API'),(100,'backend','Mapbox Access Token'),(101,'backend','Site configuration'),(102,'backend','reCAPTCHA v2'),(103,'backend','Captcha Site Key'),(104,'backend','Captcha Secret'),(105,'backend','Captcha Lang'),(106,'backend','default is = en'),(107,'backend','Administration login'),(108,'backend','Enabled'),(109,'backend','Merchant login'),(111,'backend','Address using map provider'),(112,'backend','Zone'),(113,'backend','Location using define address'),(114,'backend','Settings for Address'),(115,'backend','Enabled choose address from map'),(116,'backend','Set Specific Country'),(117,'backend','leave empty to show all country'),(118,'backend','Settings for define locations'),(119,'backend','City / Area'),(120,'backend','State / City'),(121,'backend','PostalCode/ZipCode'),(122,'backend','All Country'),(123,'backend','No results.'),(124,'backend','Key'),(125,'backend','Value'),(126,'backend','Search key'),(127,'backend','Add Key'),(128,'backend','First'),(129,'backend','Last'),(130,'backend','Signup Type'),(131,'backend','Standard signup'),(132,'backend','Mobile phone signup'),(133,'backend','Signup Verifications'),(134,'backend','This settings only works in standard signup'),(135,'backend','Resend code interval'),(136,'backend','Google reCapcha'),(137,'backend','Terms and condition'),(138,'backend','Welcome Template'),(139,'backend','New Signup Template'),(140,'backend','this template will send to admin user'),(141,'backend','Verification Template'),(142,'backend','Reset Password Template'),(143,'backend','Block user from registering'),(144,'backend','Multiple email separated by comma'),(145,'backend','Multiple mobile separated by comma'),(146,'backend','Phone country list'),(147,'backend','define the country selection for mobile phone, empty means will show all.'),(148,'backend','Default country'),(149,'backend','default mobile country'),(150,'backend','Facebook'),(151,'backend','Enabled Facebook Login'),(152,'backend','App ID'),(153,'backend','App Secret'),(154,'backend','Enabled Google Login'),(155,'backend','Client ID'),(156,'backend','Client Secret'),(157,'backend','Google'),(158,'backend','Receipt Thank you text'),(159,'backend','Receipt Footer text'),(160,'backend','Receipt Logo'),(161,'backend','Item translations'),(162,'backend','Merchant can edit/delete review'),(163,'backend','Resize image width'),(164,'backend','upload review image will resize to set width, if below set width no resizing will happen.'),(165,'backend','Template review'),(166,'backend','Send email reminder to customer to review there order.'),(167,'backend','Time Zone'),(168,'backend','Date Format'),(169,'backend','Time Format'),(170,'backend','Time interval'),(171,'backend','Enabled Ordering'),(172,'backend','Cannot do order again if previous order status is'),(173,'backend','Order Cancellation'),(174,'backend','Enabled cancellation of order'),(175,'backend','Enabled Registration'),(176,'backend','Enabled CAPTCHA'),(177,'backend','Membership Program'),(178,'backend','Terms and conditions'),(179,'backend','Pre-configure food item size'),(180,'backend','Templates'),(181,'backend','this will be added as default food item size to merchant during registration. value must be separated by comma eg. small,medium,large'),(182,'backend','Confirm Account'),(183,'backend','Welcome email'),(184,'backend','Plan Near Expiration'),(185,'backend','Plan Expired'),(186,'backend','New Signup'),(187,'backend','this template will send to admin'),(188,'backend','Enabled Notification'),(189,'backend','Email and Mobile number who will receive notifications like new order and cancel order.'),(190,'backend','Multiple email/mobile must be separated by comma.'),(191,'backend','Email address'),(192,'backend','Mobile number'),(193,'backend','Receiver Email Address'),(194,'backend','Content'),(195,'backend','Contact Fields'),(196,'backend','Facebook Pixel Setting'),(197,'backend','Facebook Pixel ID'),(198,'backend','Google Analytics Setting'),(199,'backend','Tracking ID'),(200,'backend','All Merchant'),(201,'backend','Name'),(202,'backend','Charge Type'),(203,'backend','Actions'),(204,'backend','Add new'),(205,'backend','Update'),(206,'backend','Delete'),(207,'backend','Edit Merchant'),(208,'backend','Restaurant name'),(209,'backend','Restaurant Slug'),(210,'backend','Contact Name'),(211,'backend','Contact Phone'),(212,'backend','Header'),(213,'backend','About'),(214,'backend','Short About'),(215,'backend','Cuisine'),(216,'backend','Services'),(217,'backend','Tags'),(218,'backend','Featured'),(219,'backend','Delivery Distance Covered'),(220,'backend','Published Merchant'),(221,'backend','Miles'),(222,'backend','Kilometers'),(223,'backend','Status'),(224,'backend','Logo'),(225,'backend','Merchant information'),(226,'backend','Login information'),(227,'backend','Merchant Type'),(229,'backend','Payment history'),(230,'backend','Payment settings'),(231,'backend','Others'),(232,'backend','First Name'),(233,'backend','Last Name'),(235,'backend','Contact number'),(236,'backend','Username'),(237,'backend','New Password'),(238,'backend','Confirm Password'),(239,'backend','Address details'),(241,'backend','Geolocation'),(242,'backend','Latitude'),(243,'backend','Lontitude'),(244,'backend','Radius distance covered'),(245,'backend','Get your address geolocation via service like [link] or [link2], entering invalid coordinates will make your store not available for ordering'),(246,'backend','No results'),(247,'backend','Searching...'),(248,'backend','Type'),(249,'backend','commission on orders'),(250,'backend','Percent Commision'),(251,'backend','Plan'),(252,'backend','Created'),(253,'backend','Payment'),(254,'backend','Invoice #'),(255,'backend','No data available in table'),(256,'backend','Showing [start] to [end] of [total] entries'),(257,'backend','Showing 0 to 0 of 0 entries'),(258,'backend','(filtered from [max] total entries)'),(259,'backend','Show [menu] entries'),(260,'backend','Loading...'),(261,'backend','Search:'),(262,'backend','No matching records found'),(266,'backend',': activate to sort column ascending'),(267,'backend',': activate to sort column descending'),(268,'backend','Enabled Payment gateway'),(269,'backend','Check All'),(270,'backend','Close this store'),(272,'backend','Add Merchant'),(273,'backend','Edit Merchant - information'),(274,'backend','Edit Merchant - login'),(275,'backend','Edit Merchant - Merchant type'),(276,'backend','Edit Merchant - Featured'),(277,'backend','Edit Merchant - Address'),(278,'backend','Edit Merchant - Zone'),(280,'backend','Merchant - Payment Settings'),(281,'backend','Merchant - Others'),(282,'backend','Merchant - Access'),(283,'backend','All Sponsored'),(284,'backend','Expiration Date'),(285,'backend','Plan list'),(286,'backend','Description'),(287,'backend','Price'),(288,'backend','Promo'),(289,'backend','All Plans'),(290,'backend','Add'),(291,'backend','Promo Price'),(292,'backend','Plan period'),(293,'backend','Item limit'),(294,'backend','0 is unlimited numbers of items'),(295,'backend','Order limit'),(296,'backend','Trial Period'),(297,'backend','0 is unlimited numbers of orders per period'),(298,'backend','trial period number of days'),(299,'backend','Unlimited'),(300,'backend','Limited'),(301,'backend','Daily'),(302,'backend','Monthly'),(303,'backend','Anually'),(304,'backend','Weekly'),(305,'backend','Details'),(306,'backend','Features'),(307,'backend','Plans Payment ID'),(308,'backend','Paypal'),(309,'backend','Plan ID'),(310,'backend','Stripe'),(311,'backend','Price IDs'),(312,'backend','Razorpay'),(313,'backend','No payment yet available'),(314,'backend','Order Information'),(315,'backend','Order ID'),(316,'backend','Merchant'),(317,'backend','Customer'),(318,'backend','Orders'),(320,'backend','Total Orders'),(321,'backend','All Orders'),(322,'backend','Filters'),(323,'backend','{{total_items}} items'),(324,'backend','Order Type.'),(325,'backend','Total. {{total}}'),(326,'backend','Place on {{date}}'),(327,'backend','Start date -- End date'),(328,'backend','to'),(329,'backend','Order type'),(330,'backend','Su'),(331,'backend','Mo'),(332,'backend','Tu'),(333,'backend','We'),(334,'backend','Th'),(335,'backend','Fr'),(336,'backend','Sa'),(337,'backend','January'),(338,'backend','February'),(339,'backend','March'),(340,'backend','April'),(341,'backend','May'),(342,'backend','June'),(343,'backend','July'),(344,'backend','August'),(345,'backend','September'),(346,'backend','October'),(347,'backend','November'),(348,'backend','December'),(349,'backend','Today'),(351,'backend','Last 7 Days'),(352,'backend','Last 30 Days'),(353,'backend','This Month'),(354,'backend','Last Month'),(355,'backend','Custom Range'),(357,'backend','By Merchant'),(358,'backend','By customer'),(359,'backend','By Status'),(360,'backend','By Order Type'),(361,'backend','Clear Filters'),(362,'backend','Apply Filters'),(363,'backend','Status for new order'),(364,'backend','Status for delivered order'),(365,'backend','Status for completed pickup/dinein order'),(366,'backend','Status for cancel order'),(367,'backend','Status for order rejection'),(368,'backend','Status for delivery failed'),(369,'backend','Status for failed pickup/dinein order'),(370,'backend','Order Status'),(371,'backend','Order Tabs'),(372,'backend','Order Buttons'),(373,'backend','Order Tracking'),(374,'backend','Template'),(375,'backend','Settings'),(376,'backend','New Orders'),(377,'backend','select the status that will show on this tab.'),(378,'backend','Orders Processing'),(380,'backend','Orders Ready'),(381,'backend','Completed Today'),(382,'backend','define the buttons for this tab'),(383,'backend','Button Name'),(385,'backend','Order Processing'),(386,'backend','Button CSS class name eg. btn-green, btn-black'),(387,'backend','Status for order processing'),(388,'backend','Status for food ready'),(389,'backend','Status for in transit'),(390,'backend','Status for delivered'),(391,'backend','Template Invoice'),(392,'backend','Template Refund'),(393,'backend','Template Partial Refund'),(394,'backend','Delay Order'),(395,'backend','All Payment gateway'),(396,'backend','Add Gateway'),(397,'backend','Payment gateway list'),(398,'backend','Online Payment'),(399,'backend','Available for payout'),(400,'backend','Available for plan'),(401,'backend','Payment code'),(402,'backend','This fields must not have spaces'),(403,'backend','Payment name'),(404,'backend','Logo type'),(405,'backend','Logo class icon'),(406,'backend','Get icon here'),(407,'backend','Featured Image'),(408,'backend','Drop files anywhere to upload'),(409,'backend','or'),(410,'backend','Select Files'),(411,'backend','Icon'),(412,'backend','Image'),(413,'backend','Click here'),(414,'backend','Transaction History'),(415,'backend','Earnings'),(416,'backend','Your commission transaction for all orders'),(418,'backend','Create a Transaction'),(419,'backend','Adjustment'),(420,'backend','Date'),(421,'backend','Transaction'),(422,'backend','Debit/Credit'),(423,'backend','Running Balance'),(424,'backend','Credit'),(425,'backend','Debit'),(426,'backend','Payout'),(427,'backend','Cash In'),(428,'backend','All transactions'),(429,'backend','Statement'),(430,'backend','Total Balance'),(431,'backend','Merchant Earnings'),(432,'backend','Balance'),(435,'backend','Deactivate Merchant'),(436,'backend','You are about to deactivate this merchant, click confirm to continue?'),(437,'backend','Create adjustment'),(438,'backend','Transaction Description'),(439,'backend','Amount'),(441,'backend','Submit'),(442,'backend','Membership History'),(445,'backend','Refund'),(446,'backend','Total'),(447,'backend','Contact'),(448,'backend','Email'),(449,'backend','Member since'),(450,'backend','Activate Merchant'),(451,'backend','Merchant Info'),(452,'backend','Withdrawals'),(453,'backend','Unpaid'),(454,'backend','Paid'),(455,'backend','Total Unpaid'),(456,'backend','Total Paid'),(457,'backend','Payment status'),(458,'backend','Account number'),(459,'backend','Account name'),(460,'backend','Account type'),(461,'backend','Account currency'),(462,'backend','Routing number'),(463,'backend','Country'),(464,'backend','Account Holders Name'),(465,'backend','Bank Account Number/IBAN'),(466,'backend','SWIFT Code'),(467,'backend','Bank Name in Full'),(468,'backend','Bank Branch City'),(469,'backend','Date requested'),(470,'backend','Payment Method'),(472,'backend','offline payment'),(473,'backend','Emabled request payout'),(474,'backend','Payout request auto process'),(475,'backend','Payout number of days to process'),(476,'backend','number of days that payout will automatically process (this works only if payout auto process is enabled). count starts from the day of request of merchant'),(477,'backend','Payout minimum amount'),(478,'backend','Number of payouts'),(479,'backend','Number of payouts can request per month.'),(480,'backend','Template new payout request - for admin'),(481,'backend','Template Payout paid'),(482,'backend','Template Payout Cancel'),(483,'backend','Cuisine list'),(484,'backend','All Cuisine'),(485,'backend','Add Cuisine'),(486,'backend','Cuisine Name'),(487,'backend','Background Color Hex'),(488,'backend','Font Color Hex'),(489,'backend','{{lang}} translation'),(490,'backend','Enter {{lang}} name here'),(491,'backend','Update Cuisine'),(492,'backend','Dishes list'),(493,'backend','Add Dishes'),(494,'backend','Dish Name'),(495,'backend','All Dishes'),(496,'backend','Update Dishes'),(497,'backend','Tags list'),(498,'backend','Tag Name'),(499,'backend','All Tags'),(500,'backend','Add Tags'),(501,'backend','Update Tags'),(502,'backend','Status list'),(503,'backend','Color Hex'),(505,'backend','Update Status'),(506,'backend','Status actions'),(507,'backend','ID'),(508,'backend','Action Type'),(509,'backend','Add actions'),(510,'backend','Update actions'),(511,'backend','Delete Confirmation'),(512,'backend','Are you sure you want to permanently delete the selected item?'),(513,'backend','Currency list'),(514,'backend','Default'),(515,'backend','All Currency'),(516,'backend','Add Currency'),(517,'backend','Set as Default'),(518,'backend','Currency'),(519,'backend','Position'),(520,'backend','Rate'),(521,'backend','+ Exchange fee'),(522,'backend','Decimals'),(523,'backend','Decimal Separator'),(524,'backend','Thousand Separator'),(525,'backend','Please select'),(526,'backend','Left $11'),(527,'backend','Right 11$'),(528,'backend','Left with space $ 11'),(529,'backend','Right with space 11 $'),(530,'backend','Update Currency'),(531,'backend','Country List'),(532,'backend','Add Country'),(533,'backend','Phone Code'),(534,'backend','Code'),(535,'backend','Update Country'),(536,'backend','State List'),(537,'backend','City List'),(538,'backend','District/Area List'),(539,'backend','Sequence'),(540,'backend','Add State'),(542,'backend','State Name'),(543,'backend','All State'),(544,'backend','City'),(545,'backend','State'),(546,'backend','City Name'),(547,'backend','Postal Code/Zip code'),(548,'backend','Select State'),(549,'backend','Add City'),(550,'backend','All City'),(551,'backend','Area List'),(552,'backend','Area Name'),(553,'backend','Select City'),(554,'backend','Add Area'),(555,'backend','All Area'),(556,'backend','Zones list'),(557,'backend','Create Zones'),(558,'backend','Featured locations'),(559,'backend','All featured locations'),(562,'backend','Location name'),(563,'backend','Longitude'),(564,'backend','Featured name'),(565,'backend','Update featured locations'),(566,'backend','New Restaurant'),(567,'backend','Popular'),(568,'backend','Best Seller'),(569,'backend','Recommended'),(570,'backend','Pages list'),(571,'backend','All Pages'),(572,'backend','Add Page'),(573,'backend','Short Description'),(574,'backend','SEO'),(575,'backend','Meta Title'),(576,'backend','Meta description'),(577,'backend','Keywords'),(578,'backend','Update Page'),(579,'backend','Languages list'),(580,'backend','All Language'),(581,'backend','Add Language'),(582,'backend','Locale'),(583,'backend','Select Flag'),(584,'backend','RTL'),(585,'backend','Translation'),(586,'backend','Translation Key'),(587,'backend','Status Management list'),(588,'backend','Group'),(589,'backend','Group Name'),(590,'backend','Status Key'),(591,'backend','All Status'),(592,'backend','Add Status'),(593,'backend','Date Created. {{date_created}}'),(594,'backend','Services list'),(595,'backend','Service fee'),(596,'backend','All Services'),(597,'backend','Add Services'),(598,'backend','Update Services'),(599,'backend','All Type'),(600,'backend','Update Merchant Type'),(601,'backend','Commission Type'),(602,'backend','Commission based on Subtotal / Total'),(603,'backend','Commission'),(604,'backend','Add Merchant Type'),(605,'backend','Rejection Reason List'),(606,'backend','Reason'),(607,'backend','Add Rejection'),(608,'backend','Update Rejection'),(609,'backend','Pause Reason List'),(610,'backend','Add Pause reason'),(611,'backend','Update Pause reason'),(612,'backend','Status action List'),(614,'backend','Key must not have spaces'),(616,'backend','Update action status'),(617,'backend','Add action status'),(618,'backend','Coupon list'),(619,'backend','#Used'),(620,'backend','All Coupon'),(621,'backend','Add Coupon'),(622,'backend','Coupon Type'),(623,'backend','Days Available'),(625,'backend','Min Order'),(626,'backend','Applicable to merchant'),(627,'backend','Expiration'),(628,'backend','Coupon Options'),(629,'backend','Coupon name'),(630,'backend','fixed amount'),(631,'backend','percentage'),(632,'backend','Unlimited for all user'),(633,'backend','Use only once'),(634,'backend','Once per user'),(635,'backend','Once for new user first order'),(636,'backend','Custom limit per user'),(637,'backend','Only to selected customer'),(638,'backend','Define max number of use'),(639,'backend','Select Customer'),(640,'backend','Email Provider'),(641,'backend','All Provider'),(642,'backend','Add Provider'),(643,'backend','Provider ID'),(644,'backend','Provider name'),(645,'backend','Sender email'),(646,'backend','Sender name'),(648,'backend','Update Provider'),(649,'backend','API KEY'),(650,'backend','Create your account [url]'),(651,'backend','SECRET KEY'),(652,'backend','SMTP host'),(653,'backend','SMTP port'),(654,'backend','Password'),(655,'backend','Secure Connection'),(656,'backend','TLS'),(657,'backend','SSL'),(658,'backend','normal'),(659,'backend','flash'),(660,'backend','unicode'),(661,'backend','ndnd'),(662,'backend','dnd'),(663,'backend','premium'),(664,'backend','lowcost'),(665,'backend','SMS'),(666,'backend','Push'),(667,'backend','All Templates'),(668,'backend','Add Template'),(669,'backend','Template name'),(670,'backend','Enabled Email'),(671,'backend','Enabled SMS'),(672,'backend','Enabled Push'),(673,'backend','Email Templates'),(674,'backend','SMS Templates'),(675,'backend','Push Templates'),(676,'backend','{{lang}} Template'),(677,'backend','Enter {{lang}} Type here'),(678,'backend','Enter {{lang}} Subject here'),(679,'backend','Enter {{lang}} Title here'),(680,'backend','Enter {{lang}} Content here'),(681,'backend','Update Template'),(682,'backend','Email Logs'),(684,'backend','View SMS'),(685,'backend','Push logs'),(686,'backend','Platform'),(687,'backend','Message'),(688,'backend','Channel/Device'),(689,'backend','View Push'),(690,'backend','Customer list'),(691,'backend','All Customer'),(692,'backend','Add Customer'),(694,'backend','Update Customer'),(695,'backend','Basic Details'),(696,'backend','Order history'),(697,'backend','Address list'),(700,'backend','Places ID'),(701,'backend','Aparment, suite or floor'),(702,'backend','Add delivery instructions'),(703,'backend','Address label'),(704,'backend','Home'),(705,'backend','Work'),(706,'backend','School'),(707,'backend','Friend house'),(708,'backend','Other'),(709,'backend','Leave it at my door'),(710,'backend','Hand it to me'),(711,'backend','Meet outside'),(712,'backend','Order list'),(713,'backend','Phone'),(714,'backend','All Review'),(715,'backend','Update Review'),(716,'backend','Customer reviews'),(718,'backend','Customer. [customer_name]'),(719,'backend','Rating. [rating]'),(720,'backend','Date. [date_created]'),(721,'backend','Real time applications'),(722,'backend','Select Realtime Provider'),(723,'backend','Pusher App Id'),(724,'backend','Pusher Key'),(725,'backend','Pusher Secret'),(726,'backend','Pusher Cluster'),(727,'backend','Private API Key'),(728,'backend','Cluster ID'),(730,'backend','API secret'),(731,'backend','WebSocket API endpoint'),(732,'backend','signup and get your credentials in'),(733,'backend','Web push notifications'),(734,'backend','Select Web Push Provider'),(735,'backend','Instance ID'),(736,'backend','Primary key'),(737,'backend','SMS Provider List'),(739,'backend','Sender ID'),(740,'backend','API username'),(741,'backend','API password'),(743,'backend','Account SID'),(744,'backend','AUTH Token'),(745,'backend','Secret'),(746,'backend','Provider'),(747,'backend','SMS Logs'),(748,'backend','Total Registered'),(749,'backend','Commission Total'),(750,'backend','Membership Total'),(751,'backend','Total Active'),(752,'backend','Total Inactive'),(753,'backend','Membership Payment'),(754,'backend','Payment type'),(755,'backend','Merchant Sales Report'),(756,'backend','Order earnings report'),(757,'backend','Count'),(758,'backend','Admin earned'),(759,'backend','Merchant earned'),(760,'backend','Total sell'),(762,'backend','Subtotal'),(764,'backend','Admin commission'),(765,'backend','Refund Report'),(766,'backend','All Payment status'),(767,'backend','Payment reference# {{payment_reference}}'),(768,'backend','Refund on {{date}}'),(769,'backend','Full refund'),(770,'backend','Partial refund'),(771,'backend','All User'),(772,'backend','Role'),(773,'backend','Confirm New Password'),(774,'backend','Edit User'),(775,'backend','All Roles'),(776,'backend','Access'),(777,'backend','Add Role'),(778,'backend','Themes'),(779,'backend','Active theme'),(780,'backend','Customize'),(781,'backend','Organize your menu'),(782,'backend','Menu'),(783,'backend','Setting'),(784,'backend','Media Library'),(785,'backend','Media List'),(786,'backend','Delete File'),(787,'backend','Notification'),(788,'backend','Clear all'),(789,'backend','View all'),(790,'backend','Profile'),(791,'backend','Logout'),(792,'backend','Change Password'),(793,'backend','Web Notifications'),(794,'backend','Old Password'),(795,'backend','Notifications Settings'),(797,'backend','Select notification type'),(798,'backend','Order updates'),(799,'backend','Customer new signup'),(800,'backend','Merchant new signup'),(801,'backend','Payout request'),(802,'backend','All notifications'),(803,'backend','Order #'),(804,'backend','Restaurant'),(806,'backend','Delivery information'),(807,'backend','Get direction'),(809,'backend','Delivery Date/Time'),(810,'backend','Include utensils'),(815,'backend','Summary'),(816,'backend','Print'),(817,'backend','Contact customer'),(819,'backend','Cancel order'),(820,'backend','Timeline'),(821,'backend','Download PDF (A4)'),(822,'backend','Yes'),(823,'backend','Okay'),(824,'backend','Customer Info'),(825,'backend','Action'),(826,'backend','Customer ID'),(827,'backend','Addresses'),(828,'backend','Unblock Custome'),(830,'backend','Customer information not found'),(831,'backend','Are you sure you want to continue'),(832,'backend','Refund this item'),(833,'backend','This automatically remove this item from your active orders.'),(834,'backend','Go back'),(836,'backend','Remove this item'),(837,'backend','This will remove this item from your active orders.'),(840,'backend','Item is Out of Stock'),(841,'backend','Order decrease'),(842,'backend','Order Increase'),(843,'backend','By accepting this order, we will refund the amount of {{amount}} to customer.'),(844,'backend','Total amount for this order has increase, Send invoice to customer or less from your account with total amount of {{amount}}.'),(847,'backend','Send invoice'),(848,'backend','Less on my account'),(849,'backend','This order has unpaid invoice, until its paid you cannot change the order status.'),(851,'backend','How much additional time you need?'),(852,'backend','We\'ll notify the customer about the delay.'),(854,'backend','Enter why you cannot make this order.'),(855,'backend','Reject order'),(856,'backend','Are you sure you want to continue?'),(857,'backend','Delivery fee'),(858,'backend','Sub total ([count] items)'),(859,'backend','Courier tip'),(860,'backend','Dashboard'),(862,'backend','List'),(863,'backend','Sponsored'),(864,'backend','Users'),(866,'backend','All order'),(867,'backend','Order settings'),(869,'backend','Add User'),(870,'backend','Delete User'),(871,'backend','Membership'),(872,'backend','Plans'),(873,'backend','Add Plan'),(874,'backend','Delete Plan'),(875,'backend','Attributes'),(880,'backend','Pages'),(881,'backend','Languages'),(882,'backend','Buyers'),(883,'backend','Customers'),(885,'backend','Create Role'),(886,'backend','Update Role'),(887,'backend','Delete Role'),(889,'backend','Manage Location'),(891,'backend','Providers'),(892,'backend','Logs'),(893,'backend','Reports'),(896,'backend','Merchant Sales'),(897,'backend','Status Management'),(899,'backend','Information'),(903,'backend','Size'),(904,'backend','Ingredients'),(905,'backend','Cooking Reference'),(906,'backend','Food'),(907,'backend','Category'),(908,'backend','Addon Category'),(909,'backend','Addon Items'),(910,'backend','Items'),(911,'backend','Delivery'),(913,'backend','Coupon'),(914,'backend','Offers'),(915,'backend','Images'),(916,'backend','Account'),(920,'backend','BroadCast'),(925,'backend','Sales Report'),(926,'backend','Sales Summary'),(927,'backend','Pickup'),(928,'backend','Dinein'),(929,'backend','Gallery'),(933,'backend','Store Hours'),(934,'backend','Tracking Time'),(935,'backend','Add Store Hours'),(936,'backend','Update Store Hours'),(937,'backend','Delete Store Hours'),(938,'backend','View Order'),(939,'backend','Delete Order'),(940,'backend','Create Time Management'),(941,'backend','Update Time Management'),(942,'backend','Delete Time Management'),(943,'backend','Inventory Management'),(944,'backend','Suppliers'),(945,'backend','Time Slot'),(946,'backend','Create Time Slot'),(947,'backend','Update Time Slot'),(948,'backend','Delete Time Slot'),(949,'backend','Create Size'),(950,'backend','Update Size'),(951,'backend','Delete Size'),(952,'backend','Ingredients create'),(953,'backend','Payment gateway'),(954,'backend','All Payment'),(956,'backend','All payments'),(957,'backend','Archive'),(959,'backend','Rejection Reason'),(962,'backend','Transactions'),(965,'backend','Merchant withdrawals'),(967,'backend','Third Party App'),(968,'backend','Real time application'),(969,'backend','Web push notification'),(971,'backend','Scheduled'),(973,'backend','Zones'),(974,'backend','Pause order reason'),(976,'backend','Order earnings'),(978,'backend','POS'),(979,'backend','POS create order'),(983,'backend','Login &amp; Signup'),(989,'backend','Upload CSV'),(990,'backend','Add sponsored'),(991,'backend','Update sponsored'),(993,'backend','Print PDF'),(996,'backend','Update Gateway'),(997,'backend','Withdrawals Template'),(998,'backend','Cuisine create'),(999,'backend','Cuisine update'),(1000,'backend','Dishes create'),(1001,'backend','Dishes update'),(1002,'backend','Dishes delete'),(1003,'backend','Cuisine delete'),(1004,'backend','Tags create'),(1005,'backend','Tags update'),(1006,'backend','Tags delete'),(1007,'backend','Status create'),(1008,'backend','Status update'),(1009,'backend','Status delete'),(1011,'backend','Status actions create'),(1012,'backend','Status actions update'),(1013,'backend','Currency create'),(1014,'backend','Currency update'),(1015,'backend','Currency delete'),(1016,'backend','Country create'),(1017,'backend','Country update'),(1020,'backend','State create'),(1021,'backend','State update'),(1022,'backend','State delete'),(1024,'backend','City create'),(1025,'backend','City delete'),(1027,'backend','Area create'),(1028,'backend','Area update'),(1029,'backend','Area delete'),(1030,'backend','Zone create'),(1031,'backend','Zone update'),(1032,'backend','Zone delete'),(1033,'backend','Featured create'),(1034,'backend','Featured update'),(1035,'backend','Featured delete'),(1036,'backend','Pages create'),(1037,'backend','Pages update'),(1038,'backend','Pages delete'),(1039,'backend','Language create'),(1040,'backend','Language update'),(1041,'backend','Language delete'),(1042,'backend','Status Management create'),(1043,'backend','Status Management update'),(1044,'backend','Status Management delete'),(1045,'backend','Order type create'),(1046,'backend','Order type update'),(1047,'backend','Order type delete'),(1048,'backend','Merchant type create'),(1049,'backend','Merchant type update'),(1050,'backend','Merchant type delete'),(1051,'backend','Rejection reason create'),(1052,'backend','Rejection reason update'),(1054,'backend','Rejection reason delete'),(1055,'backend','Pause reason create'),(1056,'backend','Pause reason update'),(1057,'backend','Pause reason delete'),(1058,'backend','Status action create'),(1059,'backend','Status reason update'),(1060,'backend','Status reason delete'),(1061,'backend','Coupon create'),(1062,'backend','Coupon update'),(1063,'backend','Coupon delete'),(1064,'backend','Email Provider create'),(1065,'backend','Email Provider update'),(1066,'backend','Email Provider delete'),(1067,'backend','Templates create'),(1068,'backend','Templates update'),(1069,'backend','Templates delete'),(1070,'backend','Email Logs delete'),(1071,'backend','Push logs delete'),(1072,'backend','Customer create'),(1073,'backend','Customer update'),(1074,'backend','Customer delete'),(1075,'backend','Customer address'),(1076,'backend','Customer order history'),(1077,'backend','Address create'),(1078,'backend','Address delete'),(1079,'backend','Address update'),(1080,'backend','Review update'),(1081,'backend','Review delete'),(1082,'backend','SMS provider create'),(1083,'backend','SMS provider update'),(1084,'backend','SMS provider delete'),(1085,'backend','SMS delete logs'),(1086,'backend','Update User'),(1088,'backend','Taxes'),(1089,'backend','Social Settings'),(1090,'backend','Notification Settings'),(1091,'backend','Order limit create'),(1092,'backend','Order view PDF'),(1093,'backend','Ingredients update'),(1094,'backend','Cooking create'),(1095,'backend','Ingredients delete'),(1096,'backend','Cooking update'),(1097,'backend','Cooking delete'),(1098,'backend','Category create'),(1099,'backend','Category update'),(1100,'backend','Category delete'),(1101,'backend','Category availability'),(1102,'backend','Addon Category create'),(1103,'backend','Addon Category update'),(1104,'backend','Addon Category delete'),(1105,'backend','Addon Item create'),(1106,'backend','Addon Item update'),(1107,'backend','Addon Item delete'),(1108,'backend','Item create'),(1109,'backend','Item update'),(1110,'backend','Item delete'),(1111,'backend','Item price'),(1112,'backend','Item price delete'),(1113,'backend','Item price update'),(1114,'backend','Item addon'),(1115,'backend','Item addon create'),(1116,'backend','Item addon update'),(1117,'backend','Item addon delete'),(1118,'backend','Item attributes'),(1119,'backend','Item availability'),(1120,'backend','Item inventory'),(1121,'backend','Item promo'),(1122,'backend','Item promo create'),(1123,'backend','Item promo update'),(1124,'backend','Item promo delete'),(1125,'backend','Item gallery'),(1126,'backend','Item SEO'),(1127,'backend','Dynamic Rates'),(1128,'backend','Fixed Charge'),(1129,'backend','Pickup instructions'),(1130,'backend','Dinein instructions'),(1132,'backend','Offer create'),(1133,'backend','Offer update'),(1134,'backend','Offer delete'),(1135,'backend','Review reply'),(1136,'backend','User create'),(1137,'backend','User update'),(1138,'backend','User delete'),(1139,'backend','Role create'),(1140,'backend','Role update'),(1141,'backend','Role delete'),(1142,'backend','Supplier create'),(1143,'backend','Supplier update'),(1144,'backend','Supplier delete'),(1145,'backend','Website'),(1146,'backend','Theme'),(1147,'backend','Company'),(1148,'backend','Service'),(1149,'backend','Find a store'),(1151,'backend','Contact Us'),(1152,'backend','Categories'),(1153,'backend','Grocery'),(1154,'backend','Parcel Delivery'),(1155,'backend','Fast Food'),(1157,'backend','Privacy policy'),(1158,'backend','Dishes'),(1159,'backend','No notifications yet'),(1160,'backend','When you get notifications, they\'ll show up here'),(1161,'backend','active'),(1162,'backend','Total Cancel'),(1163,'backend','Sales this week'),(1164,'backend','Earning this week'),(1165,'backend','Your balance'),(1166,'backend','Today sales'),(1167,'backend','Today refund'),(1168,'backend','days ago'),(1169,'backend','Accepting Orders'),(1170,'backend','Update Information'),(1171,'backend','Basic Settings'),(1172,'backend','Orders Settings'),(1173,'backend','This will appear in your receipt'),(1174,'backend','Two Flavor Options'),(1175,'backend','Close Store'),(1176,'backend','Enabled Voucher'),(1177,'backend','Enabled Tips'),(1178,'backend','Default Tip'),(1179,'backend','Please select...'),(1180,'backend','Website address'),(1181,'backend','Tax number'),(1182,'backend','All Store Hours'),(1184,'backend','Open'),(1185,'backend','From'),(1187,'backend','Custom Message'),(1188,'backend','Tax enabled'),(1189,'backend','Tax on service fee'),(1190,'backend','Tax on delivery fee'),(1191,'backend','Tax on packaging fee'),(1192,'backend','Tax Type'),(1193,'backend','Standard'),(1194,'backend','Multiple tax'),(1195,'backend','Tax not in prices (prices does not include tax)'),(1197,'backend','Add new tax'),(1198,'backend','Tax name'),(1199,'backend','Rate %'),(1200,'backend','Default tax'),(1201,'backend','Facebook Page'),(1202,'backend','Twitter Page'),(1203,'backend','Google Page'),(1204,'backend','Merchant Mobile Alert'),(1205,'backend','Define how many minutes that order set to critical order and needs attentions.'),(1206,'backend','Critical minutes'),(1207,'backend','Define how many minutes that order will auto rejected.'),(1208,'backend','Reject order minutes'),(1210,'backend','Days/Time'),(1211,'backend','All Time'),(1212,'backend','Add Time Management'),(1213,'backend','Transaction Type'),(1215,'backend','Start Time'),(1216,'backend','End Time'),(1217,'backend','Number Order Allowed'),(1219,'backend','Status that will count the existing order, if empty will use all status.'),(1220,'backend','Orders as of today {{date}}'),(1221,'backend','How to manage orders'),(1222,'backend','Filter by order number or customer name'),(1226,'backend','Sort'),(1227,'backend','Order ID - Ascending'),(1228,'backend','Order ID - Descending'),(1229,'backend','Delivery Time - Ascending'),(1230,'backend','Delivery Time - Descending'),(1231,'backend','no results\''),(1232,'backend','Order Details will show here'),(1233,'backend','Not accepting orders'),(1234,'backend','Store pause for'),(1235,'backend','Store Pause'),(1236,'backend','Would you like to resume accepting orders?'),(1237,'backend','Pause New Orders'),(1238,'backend','How long you would like to pause new orders?'),(1241,'backend','Reason for pausing'),(1242,'backend','{{mins}} min(s)'),(1243,'backend','{{total}} results'),(1244,'backend','Discount'),(1245,'backend','Reset'),(1246,'backend','Proceed to pay'),(1247,'backend','Clear all items'),(1248,'backend','Have a promo code?'),(1249,'backend','Add promo code'),(1250,'backend','Apply'),(1251,'backend','Create Payment'),(1252,'backend','Total Due'),(1253,'backend','are you sure?'),(1254,'backend','Walk-in Customer'),(1255,'backend','Optional'),(1256,'backend','Special Instructions'),(1257,'backend','Add a note (extra cheese, no onions, etc.)'),(1258,'backend','If sold out'),(1259,'backend','Add to order'),(1260,'backend','Choose up to'),(1261,'backend','Select flavor'),(1262,'backend','Select 1'),(1263,'backend','POS Orders'),(1264,'backend','Size List'),(1265,'backend','Ingredients List'),(1266,'backend','All Size'),(1267,'backend','Add Size'),(1268,'backend','Size Name'),(1269,'backend','All Ingredients'),(1270,'backend','Add Ingredients'),(1271,'backend','Ingredients Name'),(1272,'backend','Update Ingredients'),(1273,'backend','Cooking Reference List'),(1274,'backend','All Cooking Reference'),(1275,'backend','Add Cooking Reference'),(1276,'backend','Update Cooking Reference'),(1277,'backend','Category List'),(1278,'backend','All Category'),(1279,'backend','Add Category'),(1280,'backend','Dish'),(1281,'backend','Update Category'),(1282,'backend','Availability'),(1283,'backend','Available at specified times'),(1284,'backend','Addon Category List'),(1285,'backend','All Addon Category'),(1286,'backend','Add Addon Category'),(1287,'backend','Update Addon Category'),(1288,'backend','monday'),(1289,'backend','tuesday'),(1290,'backend','wednesday'),(1291,'backend','thursday'),(1292,'backend','friday'),(1293,'backend','saturday'),(1294,'backend','sunday'),(1295,'backend','Addon Item List'),(1296,'backend','All Addon Item'),(1297,'backend','Add Addon Item'),(1298,'backend','AddOn Item'),(1300,'backend','Update Addon Item'),(1301,'backend','Item List'),(1302,'backend','All Item'),(1303,'backend','Add Item'),(1304,'backend','Long Description'),(1306,'backend','Select Unit'),(1307,'backend','Item Name'),(1308,'backend','Available'),(1309,'backend','Update Item'),(1310,'backend','Addon'),(1311,'backend','Inventory'),(1312,'backend','Sales Promotion'),(1314,'backend','Add Price'),(1315,'backend','Cost Price'),(1316,'backend','Discount Start'),(1317,'backend','Discount End'),(1318,'backend','Discount Type'),(1319,'backend','SKU'),(1320,'backend','Fixed'),(1322,'backend','Select Type'),(1323,'backend','Select Value'),(1324,'backend','Required'),(1325,'backend','No'),(1326,'backend','multiple'),(1327,'backend','All Addon'),(1330,'backend','Pre-selected'),(1331,'backend','Select Item Price'),(1332,'backend','Can Select Only One'),(1333,'backend','Can Select Multiple'),(1334,'backend','Two Flavors'),(1335,'backend','Custom'),(1336,'backend','Enabled Points'),(1337,'backend','Enabled Packaging Incrementals'),(1338,'backend','Cooking Reference Mandatory'),(1339,'backend','Points earned'),(1340,'backend','Packaging fee'),(1341,'backend','Delivery options'),(1342,'backend','Select vehicle type for this item can be used for delivery'),(1343,'backend','Not for sale'),(1344,'backend','Track Stock'),(1345,'backend','Supplier'),(1346,'backend','Select Supplier'),(1347,'backend','Add Item Promo'),(1348,'backend','Buy (qty)'),(1349,'backend','Get (qty'),(1350,'backend','Select Item'),(1351,'backend','Buy (qty) to get the (qty) item free'),(1352,'backend','Buy (qty) and get 1 at (percen)% off'),(1353,'backend','Promo Type'),(1355,'backend','Gallery Image'),(1356,'backend','Enabled Opt in for no contact delivery'),(1357,'backend','Free Delivery On First Order'),(1358,'backend','Delivery Charge Type'),(1359,'backend','Standard delivery fee'),(1360,'backend','Delivery Settings'),(1361,'backend','Delivery estimation'),(1362,'backend','in minutes example 10-20mins'),(1363,'backend','Minimum Order'),(1364,'backend','Maximum Order'),(1365,'backend','Pickup estimation'),(1366,'backend','Instructions'),(1367,'backend','Customer Pickup Instructions'),(1368,'backend','Describe how a customer will pickup their order when they arrive to your store. Instructions will be displayed on a customer\'s order status page.'),(1369,'backend','Dinein estimation'),(1370,'backend','Customer Dinein Instructions'),(1371,'backend','Describe how customer will dinein in your restaurant. Instructions will be displayed on a customer\'s order status page'),(1372,'backend','Page not found'),(1373,'backend','This page is not available in your account.'),(1374,'backend','Update Coupon'),(1375,'backend','Offers list'),(1376,'backend','Valid'),(1377,'backend','All Offers'),(1378,'backend','Add Offers'),(1379,'backend','Offer Percentage'),(1380,'backend','Orders Over'),(1381,'backend','Valid From'),(1382,'backend','Valid To'),(1383,'backend','Applicable to'),(1384,'backend','Gallery list'),(1385,'backend','Your sales, cash in and referral earnings'),(1386,'backend','Available Balance'),(1388,'backend','Request Payout'),(1389,'backend','Add to your balance'),(1390,'backend','Minimum amount'),(1391,'backend','how much do you want to add to your account?'),(1392,'backend','Enter top up amount'),(1394,'backend','Continue'),(1395,'backend','Minimum amount {{amonut}}'),(1396,'backend','Adjustment commission order #{{order_id}}'),(1397,'backend','Refund commission order #{{order_id}}'),(1398,'backend','Commission on order #{{order_id}}'),(1399,'backend','Sales on order #{{order_id}}'),(1400,'backend','Payment to order #{{order_id}}'),(1401,'backend','Payout to {{account}}'),(1402,'backend','Payout History'),(1404,'backend','Payout account'),(1406,'backend','Set Account'),(1407,'backend','Date Processed'),(1408,'backend','Set your default payout account'),(1410,'backend','Individual'),(1411,'backend','Account information'),(1412,'backend','Bank Account Holders Name'),(1413,'backend','Reply'),(1414,'backend','Customer review'),(1415,'backend','Your Reply'),(1416,'backend','Comments ([number_comments])'),(1417,'backend','Date Created. [date_created]'),(1418,'backend','User List'),(1419,'backend','Sales Summary Report'),(1420,'backend','Average price'),(1421,'backend','Total qty sold'),(1423,'backend','Sales chart'),(1424,'backend','All Items'),(1425,'backend','Supplier List'),(1426,'backend','Contacts'),(1427,'backend','Add Supplier'),(1428,'backend','Phone Number'),(1429,'backend','Address 1'),(1430,'backend','Address 2'),(1431,'backend','Postal/zip code'),(1432,'backend','Region'),(1433,'backend','Notes'),(1434,'backend','Supplier Name'),(1435,'backend','Archive Order List'),(1436,'backend','Order has the same status'),(1437,'backend','Status Updated'),(1438,'backend','Amount to refund cannot be less than 0'),(1439,'backend','You don\'t have enough balance in your account. please load your account to process this order.'),(1440,'backend','Amount to less cannot be less than 0'),(1441,'backend','Less on account'),(1445,'backend','Status not found'),(1447,'backend','Order is cancelled'),(1448,'backend','Order is delayed by [mins]min(s)'),(1449,'backend','Customer is notified about the delayed.'),(1450,'backend','Item row not found'),(1451,'backend','Succesful'),(1452,'backend','Additional charge must be greater than zero'),(1453,'backend','Item added to order'),(1454,'backend','Customer name is requied'),(1455,'backend','Customer contact number is requied'),(1456,'backend','Delivery address is requied'),(1457,'backend','Delivery coordinates is requied'),(1459,'backend','Order Information updated'),(1460,'backend','Client information not found'),(1461,'backend','Invalid email address'),(1462,'backend','Account number is required'),(1463,'backend','Account name is required'),(1464,'backend','Bank name is required'),(1465,'backend','Swift code is required'),(1466,'backend','Country is required'),(1467,'backend','Payout account saved'),(1468,'backend','Payout request successfully logged'),(1470,'backend','Setting saved'),(1471,'backend','Tax not found'),(1473,'backend','No item solds yet'),(1474,'backend','You don\'t have customer yet'),(1475,'backend','You don\'t have sales yet'),(1477,'backend','Voucher code not found'),(1478,'backend','Customer succesfully created'),(1479,'backend','Order created by {{merchant_user}}'),(1482,'backend','Record not found'),(1483,'backend','Merchant not found'),(1484,'backend','Payout status set to paid'),(1485,'backend','Transaction not found'),(1486,'backend','Payout cancelled'),(1487,'backend','Payout will process in a minute or two'),(1488,'backend','device updated'),(1489,'backend','user device not found'),(1494,'backend','No recent payout request'),(1495,'backend','Sort menu saved'),(1496,'backend','Invalid ID'),(1497,'backend','View'),(1500,'backend','History'),(1501,'backend','Manage Plan'),(1502,'backend','Avatar'),(1503,'backend','Order#{{order_id}} from {{customer_name}}'),(1504,'backend','Your order #{{order_id}} is accepted by {{restaurant_name}}'),(1505,'backend','Go with merchant recommendation'),(1506,'backend','Contact me'),(1507,'backend','Cancel the entire order'),(1508,'backend','Order Details'),(1509,'backend','Merchant - information'),(1510,'backend','Merchant - login'),(1514,'backend','Merchant - Payment history'),(1517,'backend','View Order #[order_id]'),(1519,'backend','Cancel Orders'),(1524,'backend','Update Offers'),(1530,'backend','Printing Options'),(1534,'backend','Security'),(1535,'backend','Menu Options'),(1538,'backend','Booking'),(1541,'backend','Update Language'),(1545,'backend','Add featured locations'),(1546,'backend','Succesfully updated'),(1547,'backend','This field is required'),(1549,'backend','Initial Password must be repeated exactly.'),(1550,'backend','Email address already exist.'),(1551,'backend','{value}\" has already been taken.'),(1552,'backend','{value}\" has already been added.'),(1553,'backend','{attribute} is not a valid URL.'),(1554,'backend','This field must be a number.'),(1555,'backend','{attribute} is too small (minimum is {min}).'),(1556,'backend','{attribute} is too big (maximum is {max}).'),(1557,'backend','this field must be time example hh:mm.'),(1560,'backend','Succesfully created'),(1561,'backend','Settings saved'),(1562,'backend','Failed cannot update'),(1563,'backend','Failed cannot save'),(1564,'backend','The file was larger than 10MB. Please upload a smaller file.'),(1565,'backend','The file \"{file}\" cannot be uploaded. Only files with these extensions are allowed: {extensions}.'),(1566,'backend','This field cannot be blank.'),(1567,'backend','New Password must be repeated exactly'),(1568,'backend','this field is too short (minimum is {min} characters).'),(1569,'backend','this field is too long (maximum is {max} characters).'),(1570,'backend','Record not found.'),(1572,'backend','Please correct the forms'),(1573,'backend','You are not authorized to perform this action'),(1574,'backend','This field is not a valid URL'),(1575,'backend','Front Translation'),(1576,'front','Let\'s find best food for you'),(1577,'front','Enter delivery address'),(1578,'front','Cuisine type'),(1579,'front','No Minimum Order'),(1580,'front','Order in for yourself or for the group, with no restrictions on order value'),(1581,'front','Live Order Tracking'),(1582,'front','Know where your order is at all times, from the restaurant to your doorstep'),(1583,'front','Lightning-Fast Delivery'),(1584,'front','Experience karenderia superfast delivery for food delivered fresh & on time'),(1585,'front','Best promotions in your area'),(1586,'front','Rising stars restaurants'),(1587,'front','Fastest delivery for you!'),(1588,'front','Party night?'),(1589,'front','Popular nearby'),(1590,'front','Up to'),(1591,'front','Try something'),(1592,'front','Best quick'),(1593,'front','Maybe'),(1594,'front','New'),(1595,'front','Lunch'),(1596,'front','Snacks?'),(1597,'front','Check'),(1598,'front','New restaurant'),(1599,'front','Are you a restaurant owner?'),(1600,'front','Join us and reach new customers'),(1601,'front','Just a few steps to join our family'),(1602,'front','Join'),(1603,'front','Best restaurants'),(1604,'front','In your pocket'),(1606,'front','Download'),(1607,'front','K mobile app'),(1608,'front','Order from your favorite restaurants & track on the go, with the all-new K app.'),(1609,'front','Website'),(1610,'front','Cart'),(1611,'front','Sign in'),(1612,'front','You don\'t have any orders here!'),(1613,'front','let\'s change that!'),(1614,'front','Login'),(1615,'front','Remember me'),(1616,'front','Forgot password?'),(1617,'front','Mobile number or email'),(1618,'front','Password'),(1619,'front','Don\'t have an account?'),(1620,'front','Sign Up'),(1621,'front','User cancelled login or did not fully authorize.'),(1622,'front','Login with Facebook'),(1624,'front','Login with Google'),(1625,'front','Let\'s get started'),(1626,'front','Enter your phone number'),(1627,'front','Next'),(1628,'front','Have an account?'),(1629,'front','Enter the code sent to'),(1630,'front','Resend Code'),(1631,'front','Resend Code in'),(1633,'front','Fill your information'),(1634,'front','First name'),(1635,'front','Last name'),(1636,'front','Email address'),(1638,'front','Confirm Password'),(1639,'front','Submit'),(1640,'front','Clear all'),(1641,'front','Filter'),(1642,'front','Over'),(1643,'front','Free delivery'),(1644,'front','end of result'),(1645,'front','Fastest delivery in'),(1646,'front','Receive food in less than 20 minutes'),(1647,'front','Sorry! We\'re not there yet'),(1648,'front','We\'re working hard to expand our area. However, we\'re not in this location yet. So sorry about this, we\'d still love to have you as a customer.'),(1649,'front','Try something new in'),(1650,'front','Most popular'),(1651,'front','Rating'),(1652,'front','Promo'),(1653,'front','Free delivery first order'),(1654,'front','Price range'),(1655,'front','Cuisines'),(1656,'front','Max Delivery Fee'),(1657,'front','Delivery Fee'),(1658,'front','Ratings'),(1659,'front','Search'),(1660,'front','Now'),(1661,'front','No default map provider, check your settings.'),(1662,'front','No results'),(1663,'front','Invalid file'),(1664,'front','Record not found'),(1665,'front','invalid error'),(1666,'front','You already added review for this order'),(1667,'front','Login successful'),(1668,'front','Please wait until we redirect you'),(1669,'front','Registration successful'),(1670,'front','Discount {{discount}}%'),(1671,'front','Pin location is too far from the address'),(1672,'front','User not login or session has expired'),(1673,'front','We sent a code to {{email_address}}.'),(1674,'front','Your verification code is {{code}}'),(1676,'front','Your session has expired please relogin'),(1677,'front','Invalid 6 digit code'),(1678,'front','Succesfull change contact number'),(1679,'front','Voucher code not found'),(1680,'front','Payment provider not found'),(1681,'front','This store is close right now, but you can schedulean order later.'),(1682,'front','Your Order has been place'),(1683,'front','Your order from'),(1684,'front','Summary'),(1685,'front','Track'),(1686,'front','Buy again'),(1687,'front','Customer cancel this order'),(1688,'front','Your order is now cancel. your refund is on its way.'),(1689,'front','Your order is now cancel. your partial refund is on its way.'),(1690,'front','This order has already been cancelled'),(1691,'front','Customer cancell this order'),(1692,'front','Your order is now cancel.'),(1693,'front','not login'),(1694,'front','You must login to save this store'),(1695,'front','Merchant has not set time opening yet'),(1696,'front','Phone number already exist'),(1697,'front','Accout not verified'),(1698,'front','Your account is {{status}}'),(1699,'front','Check {{email_address}} for an email to reset your password.'),(1700,'front','Your account is either inactive or not verified.'),(1701,'front','No email address found in our records. please verify your email.'),(1703,'front','Your password is now updated.'),(1704,'front','You have already existing request.'),(1706,'front','Invalid file extension'),(1707,'front','Invalid file size, allowed size are {{size}}'),(1708,'front','Failed cannot upload file.'),(1709,'front','Profile photo saved'),(1710,'front','Invalid data'),(1711,'front','File not found'),(1712,'front','ID is empty'),(1714,'front','Payment not found'),(1715,'front','{{count}} store'),(1716,'front','{{count}} stores'),(1717,'front','low cost restaurant'),(1718,'front','{{review_count}} reviews'),(1719,'front','Save store'),(1720,'front','Saved'),(1721,'front','Enter your address'),(1722,'front','Gallery'),(1723,'front','Reviews'),(1724,'front','Based on'),(1726,'front','Load more'),(1727,'front','Few words about {{restaurant_name}}'),(1728,'front','Address'),(1729,'front','Get direction'),(1730,'front','Opening hours'),(1731,'front','Add to cart'),(1732,'front','Menu'),(1735,'front','Clear'),(1736,'front','Place Order'),(1737,'front','Checkout'),(1738,'front','Delivery details'),(1739,'front','Change address'),(1740,'front','Pick a time'),(1741,'front','Schedule for later'),(1742,'front','Done'),(1743,'front','Save'),(1744,'front','Optional'),(1745,'front','Special Instructions'),(1746,'front','Add a note (extra cheese, no onions, etc.)'),(1747,'front','If sold out'),(1748,'front','Go with merchant recommendation'),(1749,'front','Refund this item'),(1750,'front','Contact me'),(1751,'front','Cancel the entire order'),(1752,'front','Select 1'),(1753,'front','Choose up to'),(1754,'front','Select flavor'),(1755,'front','Required'),(1756,'front','monday'),(1757,'front','tuesday'),(1758,'front','wednesday'),(1759,'front','thursday'),(1760,'front','friday'),(1761,'front','saturday'),(1762,'front','sunday'),(1763,'front','You\'re out of range'),(1764,'front','This restaurant cannot deliver to'),(1768,'front','We\'ll confirm that you can have this restaurant delivered.'),(1769,'front','add Address'),(1770,'front','Delivery Address'),(1772,'front','Store is close'),(1774,'front','Schedule Order'),(1775,'front','min'),(1776,'front','Cooking Reference'),(1777,'front','Ingredients'),(1778,'front','Order type and time'),(1779,'front','Include utensils and condoments'),(1780,'front','Tip the courier'),(1781,'front','Optional tip for the courier'),(1782,'front','People also ordered'),(1783,'front','Choose a delivery address'),(1784,'front','Add new address'),(1785,'front','Payment Methods'),(1786,'front','Saved Payment Methods'),(1787,'front','Sub total'),(1788,'front','Service fee'),(1789,'front','Courier tip'),(1790,'front','Total'),(1791,'front','Add New Payment Method'),(1792,'front','Promotion available'),(1793,'front','{{tax_name}} {{tax}}%'),(1794,'front','{{tax_name}} ({{tax}}% included)'),(1795,'front','Packaging fee'),(1797,'front','minimum order is {{minimum_order}}'),(1798,'front','maximum order is {{maximum_order}}'),(1800,'front','This restaurant cannot deliver to your location.'),(1801,'front','Back to Menu'),(1802,'front','Confirming your order'),(1803,'front','Write A Review'),(1804,'front','What did you like?'),(1805,'front','What did you not like?'),(1806,'front','Add Photos'),(1807,'front','Write your review'),(1808,'front','post review as anonymous'),(1809,'front','Your review helps us to make better choices'),(1810,'front','Drop files here to upload'),(1811,'front','Add Review'),(1812,'front','Maximum files exceeded'),(1813,'front','Your browser does not support drag\'n\'drop file uploads.'),(1814,'front','Please use the fallback form below to upload your files like in the olden days.'),(1815,'front','File is too big ({{filesize}}MiB). Max filesize: {{maxFilesize}}MiB.w'),(1816,'front','You can\'t upload files of this type.'),(1817,'front','Server responded with {{statusCode}} code.'),(1818,'front','Cancel upload'),(1819,'front','Are you sure you want to cancel this upload?'),(1820,'front','Remove file'),(1821,'front','You can not upload any more files.'),(1822,'front','HOWS WAS YOUR ORDER?'),(1823,'front','let us know how your delivery wen and how you liked your order!'),(1824,'front','Rate Your Order'),(1825,'front','UPON ARRIVAL'),(1826,'front','Order #'),(1827,'front','Subtotal'),(1828,'front','Preparing your order'),(1829,'front','{{restaurant_name}} is preparing your  order.'),(1830,'front','Your order is ready'),(1831,'front','Your order is ready to pickup by driver.'),(1832,'front','Pickup your order'),(1833,'front','Your order is ready. Time to go to {{restaurant_name}} to pickup your order.'),(1835,'front','Your order is ready. Time to go to {{restaurant_name}} to eat your order.'),(1836,'front','Heading to you'),(1837,'front','Your delivery guy is heading to you with your order.'),(1838,'front','Order Complete'),(1839,'front','Your order is completed. Enjoy!'),(1840,'front','Order cancelled'),(1841,'front','Unfortunately, the restaurant is not able to complete this order due to the following reason: {{rejetion_reason}}'),(1842,'front','Order rejected'),(1845,'front','Your order failed to complete'),(1846,'front','Unfortunately, the restaurant is not able to complete your order.'),(1847,'front','We sent your order to {{restaurant_name}} for final confirmation.'),(1848,'front','Notification'),(1849,'front','View all'),(1850,'front','All notifications'),(1851,'front','end of results'),(1852,'front','Manage my account'),(1853,'front','Orders'),(1854,'front','Addresses'),(1855,'front','Payments'),(1856,'front','Saved Stores'),(1857,'front','Order#{{order_id}} from {{customer_name}}'),(1858,'front','Your order #{{order_id}} is accepted by {{restaurant_name}}'),(1859,'front','days ago'),(1860,'front','day'),(1861,'front','days'),(1862,'front','ago'),(1863,'front','Profile'),(1864,'front','Basic Details'),(1865,'front','Change Password'),(1866,'front','Notifications'),(1867,'front','Manage Account'),(1868,'front','For your security, we want to make sure it\'s really you.'),(1869,'front','Enter 6-digit code'),(1872,'front','Code'),(1873,'front','Confirm account deletion'),(1874,'front','(\"Are you sure you want to delete your account and customer data from {{site_title}}?{{new_line}} This action is permanent and cannot be undone.'),(1875,'front','Delete Account'),(1876,'front','Don\'t Delete'),(1877,'front','Okay'),(1878,'front','2-Step Verification'),(1879,'front','Profile updated'),(1880,'front','Old password'),(1881,'front','New password'),(1882,'front','Notifications Settings'),(1883,'front','Enabled'),(1884,'front','Communication preferences'),(1885,'front','Could not get device interests'),(1886,'front','notifications enabled'),(1887,'front','notifications disabled'),(1888,'front','Could not stop Beams SDK'),(1889,'front','Could not start Beams SDK'),(1890,'front','Notification type save'),(1891,'front','Could not set device interests'),(1893,'front','Select only the marketing messages you would like to receive from {{settings.site_name}}. You will still receive transactional emails including but not limited to information about your account and certain other updates such as those related to safety and privacy.'),(1895,'front','Account Data'),(1896,'front','You can request an archive of your personal information. We\'ll notify you when it\'s ready to download.'),(1897,'front','Request archive'),(1898,'front','We received your data request'),(1899,'front','we\'ll send your data as soon as we can. this process may take a few days. You will receive an email once your data is ready.'),(1901,'front','You can request to have your account deleted and personal information removed. If you have both a DoorDash and Caviar account, then the information associated with both will be affected to the extent we can identify that the accounts are owned by the same user.'),(1902,'front','Your account is being deleted'),(1903,'front','You will be automatically logged out. Your account will be deleted in the next few minutes.'),(1904,'front','Note: We may retain some information when permitted by law.'),(1905,'front','Search order'),(1910,'front','Sorry we cannot find what your looking for'),(1911,'front','Order now'),(1912,'front','We like each other'),(1913,'front','Let\'s not change this!'),(1914,'front','Orders Qty'),(1915,'front','Total amount'),(1916,'front','Place on'),(1917,'front','View'),(1920,'front','Download PDF'),(1921,'front','Cancel order'),(1924,'front','Refund Issued'),(1925,'front','Date issued'),(1926,'front','Issued to'),(1927,'front','Amount'),(1928,'front','Description'),(1929,'front','Replacement'),(1931,'front','Don\'t cancel'),(1932,'front','How would you like to proceed?'),(1933,'front','Are you sure?'),(1934,'front','Order #{{order_id}}'),(1935,'front','{{total}} item'),(1936,'front','{{total}} items'),(1937,'front','Sub total ({{count}} items)'),(1938,'front','Place on {{date}}'),(1939,'front','Payment by {{payment_name}}'),(1940,'front','Go to checkout'),(1941,'front','Your cart from'),(1942,'front','Your order has not been accepted so there is no charge to cancel. Your payment will be refunded to your account.'),(1943,'front','Your total refund will be {{amount}}'),(1944,'front','Your driver is already on their way to pick up your order, so we can only refund the subtotal and tax'),(1946,'front','The store has started preparing this order so we can only refund the delivery charges and driver tip'),(1947,'front','Store has confirmed order and a driver has been assigned, so we cannot cancel this order'),(1948,'front','Refund is not available for this order'),(1949,'front','Your order has not been accepted so there is no charge to cancel, click cancel order to proceed'),(1950,'front','The driver has already on the way to pickup your order so we cannot cannot cancel this order'),(1951,'front','The restaurant has started preparing this order so we cannot cancel this order'),(1953,'front','this order has no items available'),(1954,'front','order not found'),(1955,'front','Discount {{discount}}'),(1956,'front','Pickup later'),(1957,'front','Item refund for {{item_name}}'),(1958,'front','Item out of stock for {{item_name}}'),(1959,'front','Cannot cancel this order, this order has existing refund.'),(1960,'front','transaction not found'),(1961,'front','No invoice payment found'),(1962,'front','no payment has found'),(1963,'front','Wow, man of many places :)'),(1964,'front','No address, lets change that!'),(1967,'front','Adjust pin'),(1968,'front','Delivery options'),(1969,'front','Add delivery instructions'),(1970,'front','eg. ring the bell after dropoff, leave next to the porch, call upon arrival, etc'),(1971,'front','Address label'),(1973,'front','Cancel'),(1974,'front','Aparment, suite or floor'),(1976,'front','Confirm'),(1977,'front','Yes'),(1978,'front','Are you sure you want to continue?'),(1979,'front','Complete Address'),(1980,'front','Edit'),(1981,'front','Delete'),(1982,'front','Address details'),(1984,'front','Home'),(1985,'front','Work'),(1986,'front','School'),(1987,'front','Friend house'),(1988,'front','Other'),(1989,'front','Payment'),(1990,'front','You can add your payment info here'),(1991,'front','Add new payment'),(1992,'front','Close Payment'),(1993,'front','Set Default'),(1995,'front','Your collection of restaurant and foods'),(1996,'front','You don\'t have any save stores here!'),(1997,'front','My orders'),(1998,'front','Payments Options'),(1999,'front','Logout'),(2003,'front','You\'ll be contacted soon!'),(2004,'front','{{website_title}} needs to be contact you for more information. You can expect a phone call or email in 1-3 business days'),(2005,'front','THANKS FOR LOADING'),(2006,'front','Payment successful.'),(2007,'front','check your account statements account.'),(2008,'front','Go to statement'),(2009,'front','Cash In'),(2010,'front','Cash In Amount'),(2011,'front','Continue'),(2012,'front','Confirm cash in'),(2013,'front','Cash in amount {{amount}}, click yes to continue.'),(2016,'front','Back to dashboard'),(2017,'front','Subscription Plans'),(2018,'front','Privacy Notice'),(2019,'front','Become Restaurant partner'),(2020,'front','Get a sales boost of up to 30% from takeaways'),(2022,'front','Why partner with Us?'),(2023,'front','Increase sales'),(2024,'front','Keep the kitchen busy'),(2025,'front','Join a well-oiled marketing machine and watch the orders come in through your door and online.'),(2026,'front','Meet them and keep them'),(2027,'front','Attract new local customers and keep them coming back for more.'),(2028,'front','Use our services'),(2029,'front','For businesses big and small'),(2030,'front','Whatever your size we have tools, business support and savings to help grow your business.'),(2031,'front','Overtake competitors'),(2032,'front','Become a Multi Restaurant partner today.'),(2033,'front','Store name'),(2034,'front','Store address'),(2035,'front','Choose your membership program'),(2036,'front','Register user'),(2037,'front','Signup'),(2039,'front','Username'),(2040,'front','Select Payment'),(2041,'front','Select'),(2042,'front','weekly'),(2043,'front','monthly'),(2044,'front','anually'),(2045,'front','Enter your card details'),(2046,'front','Subscribe'),(2048,'front','Cardholder name'),(2049,'front','THANKS FOR JOINING'),(2050,'front','Your registration is complete!'),(2051,'front','You can login to merchant portal by clicking {{start_link}}here{{end_link}}'),(2052,'front','Something went wrong.'),(2053,'front','uh-oh! Looks like the page you are trying to access, doesn\'t exist. Please start afresh.'),(2054,'front','Processing payment..'),(2055,'front','don\'t close this window'),(2056,'front','{{estimation}} mins'),(2057,'front','{{distance}} {{unit}} delivery distance'),(2058,'front','Leave it at my door'),(2059,'front','Hand it to me'),(2060,'front','Meet outside'),(2061,'front','Add tip'),(2062,'front','Default'),(2063,'front','Add Cash On delivery'),(2064,'front','Cash on Delivery or COD is a payment method that allows pay for the items you have ordered only when it gets delivered.'),(2065,'front','Add Cash'),(2066,'front','Add New Card'),(2067,'front','Card Number'),(2068,'front','Exp. Date'),(2069,'front','Security Code'),(2070,'front','Card Name'),(2071,'front','Billing Address'),(2072,'front','Add Card'),(2073,'front','Add Paypal'),(2074,'front','Pay using your paypal account'),(2075,'front','Add Stripe'),(2076,'front','Add your stripe account'),(2077,'front','You will re-direct to Stripe account to login to your account.'),(2079,'front','I authorise {{website_name}} to send instructions to the financial institution that issued my card to take payments from my card account in accordance with the terms of my agreement with {{website_name}}'),(2080,'front','An error has occured'),(2081,'front','Add Razorpay'),(2082,'front','Pay using your Razorpay account'),(2083,'front','Pay using Razorpay'),(2084,'front','You will re-direct to Razorpay account to login to your account.'),(2085,'front','Pay with Razorpay'),(2086,'front','Creating account'),(2087,'front','Getting payment information....'),(2088,'front','Add mercadopago'),(2089,'front','Pay using your mercadopago account'),(2090,'front','Exp. Date MM/YYYY'),(2091,'front','Identification Number'),(2092,'front','Identification'),(2093,'front','Enter CVV for card'),(2095,'front','Verification'),(2096,'front','Order Type'),(2097,'front','Desired delivery time'),(2098,'front','Edit phone number'),(2099,'front','Promotions'),(2100,'front','Have a promo code?'),(2101,'front','Add promo code'),(2102,'front','Apply'),(2103,'front','Add promo'),(2104,'front','Not available'),(2105,'front','You\'re saving {{discount}}'),(2106,'front','Use until {{date}}'),(2107,'front','({{coupon_name}}) {{amount}}% off'),(2108,'front','({{coupon_name}}) {{amount}} off'),(2109,'front','Min. spend {{amount}}'),(2110,'front','{{amount}}% off over {{order_over}} on {{transaction}}'),(2111,'front','valid {{from}} to {{to}}'),(2112,'front','row not found'),(2113,'front','cart uuid not found'),(2114,'front','order has no item'),(2115,'front','Address not found'),(2116,'front','no default email provider'),(2117,'front','Place ID is empty'),(2118,'front','Map provider not set'),(2119,'front','merchant not found'),(2120,'front','Place id not found'),(2121,'front','Invalid filter'),(2122,'front','Invalid coordinates'),(2123,'front','Invalid distance unit'),(2124,'front','Selected delivery time is already past'),(2125,'front','Currently unavailable'),(2126,'front','no memberhisp program'),(2127,'front','no available payment method'),(2128,'front','no results payment credentials'),(2129,'front','no available saved payment'),(2130,'front','cannot delete records please try again.'),(2131,'front','No payment method meta found'),(2133,'front','Please validated captcha'),(2134,'front','Invalid recaptcha secret key'),(2135,'front','Invalid google recaptcha error'),(2136,'front','Invalid response from google recaptcha'),(2138,'front','invalid response'),(2139,'front','no sms provider set in admin panel'),(2140,'front','Undefined facebook response'),(2141,'front','Invalid ID token'),(2142,'front','Invalid api keys'),(2143,'front','undefined map provider'),(2144,'front','invalid place id parameters'),(2145,'front','over query limit'),(2146,'front','input parameter is missing'),(2147,'front','unknow error'),(2148,'front','undefined error'),(2149,'front','miles'),(2150,'front','km'),(2151,'front','ft'),(2152,'front','invalid latitude parameters'),(2153,'front','invalid longitude parameters'),(2154,'front','Search tag'),(2155,'front','Reach more customers'),(2156,'backend','Replace Item'),(2157,'backend','Refund payment'),(2158,'backend','Refund the full amount'),(2159,'backend','Show language selection'),(2160,'backend','Languages settings'),(2161,'backend','Default language'),(2162,'backend','Backend Translation'),(2164,'backend','Export Backend translation'),(2165,'backend','Export Front translation'),(2166,'backend','Backend'),(2167,'backend','Front end'),(2168,'backend','Import language file'),(2169,'backend','Succesfully imported'),(2170,'backend','Invalid csv data'),(2171,'backend','Important notice, all the previous save words will be replace by the csv you uploaded.'),(2172,'backend','Import'),(2173,'front','Filters'),(2174,'front','Restaurant'),(2175,'front','Food'),(2176,'front','View order'),(2177,'front','Tap for hours,address, and more'),(2178,'front','Add your restaurant'),(2179,'front','Sign up to deliver'),(2180,'front','Best restaurants In your pocket'),(2181,'front','Get the app'),(2182,'backend','An error has occured.'),(2183,'backend','Your password has been reset.'),(2184,'backend','Forgot Backend Password Template'),(2185,'backend','Allow return to home'),(2186,'backend','Version {{version}}'),(2200,'front','Pickup Now'),(2201,'front','Read More'),(2202,'front','Read less'),(2203,'front','Total {total}'),(2204,'front','Create new order'),(2205,'front','New order'),(2206,'front','Event Name'),(2207,'front','Edit availability'),(2208,'front','Choose up to {max}'),(2209,'front','Pickup now'),(2210,'front','Picking up now'),(2211,'front','Pickup scheduled'),(2212,'front','Contact'),(2213,'front','Fresh burgers, crispy chicken and much more'),(2214,'front','Order online'),(2215,'front','Order directly from our menu and pick up in store'),(2216,'front','Pickup now or later'),(2217,'front','Choose the time that suits you best'),(2218,'front','4.8 out of 5'),(2219,'front','Our customers love our food'),(2220,'front','Opening hours'),(2221,'front','Monday - Thursday'),(2222,'front','Friday - Saturday'),(2223,'front','Sunday'),(2224,'front','Have questions? Write to us below.'),(2225,'front','Your message'),(2226,'front','Your name'),(2227,'front','Your email'),(2228,'front','Send message');
/*!40000 ALTER TABLE `st_sourcemessage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_status_management`
--

DROP TABLE IF EXISTS `st_status_management`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_status_management` (
  `status_id` int(11) NOT NULL AUTO_INCREMENT,
  `group_name` varchar(100) NOT NULL DEFAULT '',
  `status` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `color_hex` varchar(10) NOT NULL DEFAULT '',
  `font_color_hex` varchar(10) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`status_id`),
  KEY `group_name` (`group_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_status_management`
--

LOCK TABLES `st_status_management` WRITE;
/*!40000 ALTER TABLE `st_status_management` DISABLE KEYS */;
INSERT INTO `st_status_management` VALUES (1,'customer','pending','Pending for approval','#ffd6c4','','2021-05-19 08:35:32','2022-01-26 22:44:35','127.0.0.1'),(2,'customer','active','active','#ffd966','','2021-05-19 08:35:32','2022-01-26 22:45:04','127.0.0.1'),(3,'customer','suspended','suspended','#ea9895','white','2021-05-19 08:35:32','2022-01-26 22:45:01','127.0.0.1'),(4,'customer','blocked','blocked','#e8989b','white','2021-05-19 08:35:32','2022-01-26 22:44:59','127.0.0.1'),(5,'customer','expired','Expired','#ea9895','white','2021-05-19 08:35:32','2022-01-26 22:44:57','127.0.0.1'),(6,'post','publish','Publish','#ffd966','','2021-05-19 08:35:32','2022-01-26 22:44:53','127.0.0.1'),(7,'post','pending','Pending for review','#ffd6c4','','2021-05-19 08:35:32','2022-01-26 22:44:50','127.0.0.1'),(8,'post','draft','Draft','#e8989b','white','2021-05-19 08:35:32','2022-01-26 22:44:47','127.0.0.1'),(9,'booking','pending','pending','#ffd6c4','','2021-05-19 08:35:32','2022-01-26 22:44:44','127.0.0.1'),(10,'booking','approved','approved','#d4ecdc','','2021-05-19 08:35:32','2022-01-26 22:44:40','127.0.0.1'),(11,'booking','denied','denied','#e8989b','','2021-05-19 08:35:32','2022-01-26 22:44:37','127.0.0.1'),(12,'booking','request_cancel_booking','request cancel booking','#d4ecdc','','2021-05-19 08:35:32','2022-01-26 22:44:09','127.0.0.1'),(13,'booking','cancel_booking_approved','cancel booking approved','#efe5ee','','2021-05-19 08:35:32','2022-01-26 22:44:07','127.0.0.1'),(15,'transaction','process','Process','#ffd966','','2021-05-19 02:46:46','2022-01-26 22:44:05','127.0.0.1'),(16,'payment','paid','Paid','#ffd966','','2021-05-19 05:12:47','2022-01-26 22:44:03','127.0.0.1'),(19,'payment','unpaid','Unpaid','#2986cc','white','2021-10-12 04:55:38','2022-01-26 22:44:01','127.0.0.1'),(20,'payment','failed','Failed','#f44336','white','2021-10-12 04:55:53','2022-01-26 22:43:58','127.0.0.1'),(21,'gateway','active','Active','#8fce00','white','2021-10-12 04:57:21','2022-01-26 22:43:56','127.0.0.1'),(22,'gateway','inactive','Inactive','#f44336','white','2021-10-12 04:58:12','2022-01-26 22:43:54','127.0.0.1'),(23,'payment','pending','Pending','#8fce00','white','2021-11-20 02:23:22','2022-01-26 22:43:52','127.0.0.1'),(24,'payment','cancelled','Cancelled','#eb786f','white','2021-12-03 14:44:59','2022-01-26 22:43:33','127.0.0.1'),(27,'customer','deleted','deleted','#880808','white','2023-04-01 11:12:04','2023-04-01 11:12:04','127.0.0.1');
/*!40000 ALTER TABLE `st_status_management` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_status_management_translation`
--

DROP TABLE IF EXISTS `st_status_management_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_status_management_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status_id` int(1) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `status_id` (`status_id`),
  KEY `language` (`language`),
  KEY `title` (`title`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_status_management_translation`
--

LOCK TABLES `st_status_management_translation` WRITE;
/*!40000 ALTER TABLE `st_status_management_translation` DISABLE KEYS */;
INSERT INTO `st_status_management_translation` VALUES (1,24,'ja',''),(2,24,'ar',''),(3,24,'en','Cancelled'),(4,23,'ja',''),(5,23,'ar',''),(6,23,'en','Pending'),(7,22,'ja',''),(8,22,'ar',''),(9,22,'en','Inactive'),(10,21,'ja',''),(11,21,'ar',''),(12,21,'en','Active'),(13,20,'ja',''),(14,20,'ar',''),(15,20,'en','Failed'),(16,19,'ja',''),(17,19,'ar',''),(18,19,'en','Unpaid'),(19,16,'ja',''),(20,16,'ar',''),(21,16,'en','Paid'),(22,15,'ja',''),(23,15,'ar',''),(24,15,'en','Process'),(25,13,'ja',''),(26,13,'ar',''),(27,13,'en','cancel booking approved'),(28,12,'ja',''),(29,12,'ar',''),(30,12,'en','request cancel booking'),(31,1,'ja',''),(32,1,'ar',''),(33,1,'en','Pending for approval'),(34,11,'ja',''),(35,11,'ar',''),(36,11,'en','denied'),(37,10,'ja',''),(38,10,'ar',''),(39,10,'en','approved'),(40,9,'ja',''),(41,9,'ar',''),(42,9,'en','pending'),(43,8,'ja',''),(44,8,'ar',''),(45,8,'en','Draft'),(46,7,'ja',''),(47,7,'ar',''),(48,7,'en','Pending for review'),(49,6,'ja',''),(50,6,'ar',''),(51,6,'en','Publish'),(52,5,'ja',''),(53,5,'ar',''),(54,5,'en','Expired'),(55,4,'ja',''),(56,4,'ar',''),(57,4,'en','blocked'),(58,3,'ja',''),(59,3,'ar',''),(60,3,'en','suspended'),(61,2,'ja',''),(62,2,'ar',''),(63,2,'en','active');
/*!40000 ALTER TABLE `st_status_management_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subcategory`
--

DROP TABLE IF EXISTS `st_subcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subcategory` (
  `subcat_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `subcategory_name` varchar(255) NOT NULL DEFAULT '',
  `subcategory_description` text DEFAULT NULL,
  `featured_image` varchar(255) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `path` varchar(255) NOT NULL DEFAULT '',
  `discount` varchar(20) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'publish',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`subcat_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `subcategory_name` (`subcategory_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subcategory`
--

LOCK TABLES `st_subcategory` WRITE;
/*!40000 ALTER TABLE `st_subcategory` DISABLE KEYS */;
INSERT INTO `st_subcategory` VALUES (1,1,'Extras','Vælg ekstra toppings, tilbehør eller dyppelse for en mere tilfredsstillende oplevelse','',1,'','',1,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(2,1,'Size','','',1,'','',2,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(3,1,'Dip','Vælg din dip','',1,'','',3,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(4,1,'Menu Drinks','','',1,'','',4,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(5,1,'Drikkevarer','Vælg mellem en række forskellige drikkevarer til din mad','',1,'','',5,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(6,1,'Salad Dip','','',1,'','',6,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(7,1,'Taco pålæg','Vælg mellem adskillige pålæg til dine tacos','',1,'','',7,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(8,1,'Taco dressing','Vælg en dressing for dine tacos','',1,'','',8,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(9,1,'Family Size','','',1,'','',9,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(10,1,'Family Drink','','',1,'','',10,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(11,1,'Extras Coffee','','',1,'','',11,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(12,1,'Coffee size','','',1,'','',12,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(13,1,'Tea','','',1,'','',13,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(14,1,'Extras icecream','','',1,'','',14,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37','');
/*!40000 ALTER TABLE `st_subcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subcategory_item`
--

DROP TABLE IF EXISTS `st_subcategory_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subcategory_item` (
  `sub_item_id` int(14) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `sub_item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text DEFAULT NULL,
  `category` varchar(255) NOT NULL DEFAULT '',
  `price` varchar(15) NOT NULL DEFAULT '',
  `available` tinyint(1) NOT NULL DEFAULT 1,
  `photo` varchar(255) NOT NULL DEFAULT '',
  `path` varchar(255) DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(50) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`sub_item_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `sub_item_name` (`sub_item_name`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subcategory_item`
--

LOCK TABLES `st_subcategory_item` WRITE;
/*!40000 ALTER TABLE `st_subcategory_item` DISABLE KEYS */;
INSERT INTO `st_subcategory_item` VALUES (1,1,'Vegetarbøf','','','15.0',1,'vegetarbof.png','upload/subcategory_item/1/',1,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(2,1,'Oksekødsbøf','','','15.0',1,'oksekodsbof.png','upload/subcategory_item/2/',2,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(3,1,'Cordon Bleu','Kød viklet rundt om ost/med ostefyld','','15.0',1,'cordon-bleu.png','upload/subcategory_item/3/',3,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(4,1,'Karrykylling','','','15.0',1,'karrykylling.png','upload/subcategory_item/4/',4,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(5,1,'Kyllinge nuggets','','','15.0',1,'kyllinge-nuggets.png','upload/subcategory_item/5/',5,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(6,1,'Kyllingeinderfilet','','','15.0',1,'kyllingeinderfilet.png','upload/subcategory_item/6/',6,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(7,1,'Tikka kylling','Kylling marineret i tikka krydderier','','15.0',1,'tikka-kylling.png','upload/subcategory_item/7/',7,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(8,1,'Kyllingekebab','','','15.0',1,'kyllingekebab.png','upload/subcategory_item/8/',8,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(9,1,'Hash Brown kartoffel','','','15.0',1,'hash-brown-kartoffel.png','upload/subcategory_item/9/',9,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(10,1,'Løg','','','8.0',1,'log.jpg','upload/subcategory_item/10/',10,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(11,1,'Tomat','','','8.0',1,'tomat.jpg','upload/subcategory_item/11/',11,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(12,1,'Iceberg','Iceberg salat','','8.0',1,'iceberg.jpg','upload/subcategory_item/12/',12,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(13,1,'Cheddar','Cheddar ost','','10.0',1,'cheddar.png','upload/subcategory_item/13/',13,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(14,1,'Large Upgrade','','','10.0',1,'large-upgrade.png','upload/subcategory_item/14/',14,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(15,1,'Curry Mango 25g','Dyppelse/dressing','','8.0',1,'curry-mango-25g.png','upload/subcategory_item/15/',15,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(16,1,'Mayonnaise 25g','Dyppelse/dressing','','8.0',1,'mayonnaise-25g.png','upload/subcategory_item/16/',16,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(17,1,'Ketchup 25g','Dyppelse/dressing','','8.0',1,'ketchup-25g.png','upload/subcategory_item/17/',17,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(18,1,'Barbecue 25g','Dyppelse/dressing','','8.0',1,'barbecue-25g.png','upload/subcategory_item/18/',18,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(19,1,'Sweet & Sour 25g','Dyppelse/dressing','','8.0',1,'sweet-sour-25g.png','upload/subcategory_item/19/',19,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(20,1,'Hvidløg 25g','Dyppelse/dressing','','8.0',1,'hvidlog-25g.png','upload/subcategory_item/20/',20,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(21,1,'Peri Peri 30ml','Dyppelse/dressing','','8.0',1,'peri-peri-30ml.png','upload/subcategory_item/21/',21,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(22,1,'Algérienne 10g','Dyppelse/dressing','','5.0',1,'algerienne-10g.png','upload/subcategory_item/22/',22,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(23,1,'Biggy Burger 10g','Dyppelse/dressing','','5.0',1,'biggy-burger-10g.png','upload/subcategory_item/23/',23,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(24,1,'Samourai 10g','Dyppelse/dressing','','5.0',1,'samourai-10g.png','upload/subcategory_item/24/',24,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(25,1,'Mayonaise 10g','Dyppelse/dressing','','4.0',1,'mayonaise-10g.png','upload/subcategory_item/25/',25,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(26,1,'Ketchup 10g','Dyppelse/dressing','','4.0',1,'ketchup-10g.png','upload/subcategory_item/26/',26,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(27,1,'Pepsi','','','0.0',1,'pepsi.png','upload/subcategory_item/27/',27,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(28,1,'Pepsi Max','','','0.0',1,'pepsi.png','upload/subcategory_item/28/',28,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(29,1,'Faxe Kondi','','','0.0',1,'pepsi.png','upload/subcategory_item/29/',29,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(30,1,'Faxe Kondi Zero','','','0.0',1,'faxe-kondi-zero.png','upload/subcategory_item/30/',30,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(31,1,'Faxe Kondi Appelsin','','','0.0',1,'faxe-kondi-zero.png','upload/subcategory_item/31/',31,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(32,1,'Mirinda lemon','','','0.0',1,'pepsi.png','upload/subcategory_item/32/',32,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(33,1,'Red Bull','Energi drink','','29.0',1,'red-bull.png','upload/subcategory_item/33/',33,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(34,1,'Pepsi 0.4l','Sodavand','','27.0',1,'faxe-kondi-zero.png','upload/subcategory_item/34/',34,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(35,1,'Pepsi Max 0.4 l','Sodavand','','27.0',1,'faxe-kondi-zero.png','upload/subcategory_item/35/',35,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(36,1,'Faxe Kondi 0.4 l','Sodavand','','27.0',1,'faxe-kondi-zero.png','upload/subcategory_item/36/',36,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(37,1,'Faxe Kondi Zero 0.4 l','Sodavand','','27.0',1,'faxe-kondi-zero-0-4-l.png','upload/subcategory_item/37/',37,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(38,1,'Faxe Kondi Appelsin 0.4 l','Sodavand','','27.0',1,'faxe-kondi-zero.png','upload/subcategory_item/38/',38,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(39,1,'Mirinda lemon 0.4 l','Sodavand','','27.0',1,'faxe-kondi-zero-0-4-l.png','upload/subcategory_item/39/',39,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(40,1,'Pepsi 0.5 l','Sodavand','','32.0',1,'pepsi.png','upload/subcategory_item/40/',40,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(41,1,'Pepsi Max 0.5 l','Sodavand','','32.0',1,'pepsi.png','upload/subcategory_item/41/',41,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(42,1,'Faxe Kondi 0.5 l','Sodavand','','32.0',1,'pepsi.png','upload/subcategory_item/42/',42,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(43,1,'Faxe Kondi Zero 0.5 l','Sodavand','','32.0',1,'pepsi.png','upload/subcategory_item/43/',43,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(44,1,'Faxe Kondi Appelsin 0.5 l','Sodavand','','32.0',1,'pepsi.png','upload/subcategory_item/44/',44,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(45,1,'Mirinda lemon 0.5 l','Sodavand','','32.0',1,'pepsi.png','upload/subcategory_item/45/',45,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(46,1,'Pepsi Max 1.5 l','Sodavand','','38.0',1,'pepsi-max-1-5-l.png','upload/subcategory_item/46/',46,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(47,1,'Faxe Kondi 1.5l','Sodavand','','38.0',1,'faxe-kondi-1-5l.png','upload/subcategory_item/47/',47,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(48,1,'Danskvand 0.5l','Vand','','28.0',1,'danskvand-0-5l.png','upload/subcategory_item/48/',48,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(49,1,'Kildevand 0.5l','Vand','','28.0',1,'kildevand-0-5l.png','upload/subcategory_item/49/',49,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(50,1,'Capri-Sun','Juice','','15.0',1,'capri-sun.png','upload/subcategory_item/50/',50,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(51,1,'Vegetarbøf','','','0.0',1,'large-upgrade.png','upload/subcategory_item/51/',51,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(52,1,'Oksekødsbøf','','','0.0',1,'large-upgrade.png','upload/subcategory_item/52/',52,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(53,1,'Cordon Bleu','','','0.0',1,'large-upgrade.png','upload/subcategory_item/53/',53,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(54,1,'Karrykylling','','','0.0',1,'large-upgrade.png','upload/subcategory_item/54/',54,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(55,1,'Kyllinge nuggets','','','0.0',1,'large-upgrade.png','upload/subcategory_item/55/',55,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(56,1,'Kyllingeinderfilet','','','0.0',1,'large-upgrade.png','upload/subcategory_item/56/',56,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(57,1,'Tikka kylling','Kylling marineret i tikka krydderier','','0.0',1,'large-upgrade.png','upload/subcategory_item/57/',57,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(58,1,'Kyllingekebab','','','0.0',1,'large-upgrade.png','upload/subcategory_item/58/',58,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(59,1,'Hash Brown kartoffel','','','0.0',1,'large-upgrade.png','upload/subcategory_item/59/',59,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(60,1,'Cheddar','Cheddar ost','','0.0',1,'large-upgrade.png','upload/subcategory_item/60/',60,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(61,1,'Iceberg','Iceberg salat','','0.0',1,'large-upgrade.png','upload/subcategory_item/61/',61,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(62,1,'Tomat','','','0.0',1,'large-upgrade.png','upload/subcategory_item/62/',62,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(63,1,'Løg','','','0.0',1,'large-upgrade.png','upload/subcategory_item/63/',63,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(64,1,'Algérienne','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/64/',64,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(65,1,'Biggy Burger','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/65/',65,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(66,1,'Peri Peri','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/66/',66,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(67,1,'Marocaine','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/67/',67,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(68,1,'Pitta Kebab','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/68/',68,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(69,1,'Curry Mango','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/69/',69,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(70,1,'Barbecue','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/70/',70,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(71,1,'Samourai','Dyppelse/dressing','','0.0',1,'large-upgrade.png','upload/subcategory_item/71/',71,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(72,1,'Large Upgrade','','','30.0',1,'large-upgrade.png','upload/subcategory_item/72/',72,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(73,1,'Faxe Kondi','','','0.0',1,'large-upgrade.png','upload/subcategory_item/73/',73,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(74,1,'Pepsi Max','','','0.0',1,'large-upgrade.png','upload/subcategory_item/74/',74,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(75,1,'Ektra - Ekstra espresso shot','Kaffe','','6.0',1,'ektra-ekstra-espresso-shot.png','upload/subcategory_item/75/',75,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(76,1,'Ekstra - Monin Chocolate','Sirup','','6.0',1,'ekstra-monin-chocolate.png','upload/subcategory_item/76/',76,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(77,1,'Ekstra - Monin Karamel Sukkerfri','Sirup','','6.0',1,'ekstra-monin-karamel-sukkerfri.png','upload/subcategory_item/77/',77,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(78,1,'Ekstra - Monin Vanilje Sukkerfri','Sirup','','6.0',1,'ekstra-monin-vanilje-sukkerfri.png','upload/subcategory_item/78/',78,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(79,1,'Ekstra - Monin Pumpkin Spice','Sirup','','6.0',1,'ekstra-monin-pumpkin-spice.png','upload/subcategory_item/79/',79,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(80,1,'Large Upgrade','','','5.0',1,'large-upgrade.png','upload/subcategory_item/80/',80,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(81,1,'Pukka - After Dinner','','','0.0',1,'large-upgrade.png','upload/subcategory_item/81/',81,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(82,1,'Pukka - Green Collection','','','0.0',1,'large-upgrade.png','upload/subcategory_item/82/',82,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(83,1,'Pukka - Supreme Matcha Green','','','0.0',1,'large-upgrade.png','upload/subcategory_item/83/',83,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(84,1,'Pukka - Winter Warmer','','','0.0',1,'large-upgrade.png','upload/subcategory_item/84/',84,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(85,1,'Ekstra - Monin Chocolate','Sirup','','6.0',1,'ekstra-monin-chocolate.png','upload/subcategory_item/85/',85,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(86,1,'Ekstra - Monin Karamel Sukkerfri','Sirup','','6.0',1,'ekstra-monin-karamel-sukkerfri.png','upload/subcategory_item/86/',86,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(87,1,'Ekstra - Monin Vanilje Sukkerfri','Sirup','','6.0',1,'ekstra-monin-vanilje-sukkerfri.png','upload/subcategory_item/87/',87,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(88,1,'Ekstra - Monin Pumpkin Spice','Sirup','','6.0',1,'ekstra-monin-pumpkin-spice.png','upload/subcategory_item/88/',88,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(89,1,'Ekstra - Tivoli Drys','Drys','','6.0',1,'ekstra-tivoli-drys.png','upload/subcategory_item/89/',89,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(90,1,'Ekstra - Smarties Drys','Drys','','6.0',1,'ekstra-smarties-drys.png','upload/subcategory_item/90/',90,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(91,1,'Ekstra - Oreo Drys','Drys','','6.0',1,'ekstra-oreo-drys.png','upload/subcategory_item/91/',91,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(92,1,'Ekstra - Flødeskum','','','6.0',1,'ekstra-flodeskum.png','upload/subcategory_item/92/',92,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37',''),(93,1,'Ekstra - Kinder Maxi','Chokolade','','6.0',1,'large-upgrade.png','upload/subcategory_item/93/',93,'publish','2026-04-04 16:22:37','2026-04-04 16:22:37','');
/*!40000 ALTER TABLE `st_subcategory_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subcategory_item_relationships`
--

DROP TABLE IF EXISTS `st_subcategory_item_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subcategory_item_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `subcat_id` int(14) NOT NULL DEFAULT 0,
  `sub_item_id` int(14) NOT NULL DEFAULT 0,
  `sequence` int(12) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `sub_item_id` (`sub_item_id`),
  KEY `subcat_id` (`subcat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=94 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subcategory_item_relationships`
--

LOCK TABLES `st_subcategory_item_relationships` WRITE;
/*!40000 ALTER TABLE `st_subcategory_item_relationships` DISABLE KEYS */;
INSERT INTO `st_subcategory_item_relationships` VALUES (1,1,1,1,1),(2,1,1,2,2),(3,1,1,3,3),(4,1,1,4,4),(5,1,1,5,5),(6,1,1,6,6),(7,1,1,7,7),(8,1,1,8,8),(9,1,1,9,9),(10,1,1,10,10),(11,1,1,11,11),(12,1,1,12,12),(13,1,1,13,13),(14,1,2,14,14),(15,1,3,15,15),(16,1,3,16,16),(17,1,3,17,17),(18,1,3,18,18),(19,1,3,19,19),(20,1,3,20,20),(21,1,3,21,21),(22,1,3,22,22),(23,1,3,23,23),(24,1,3,24,24),(25,1,3,25,25),(26,1,3,26,26),(27,1,4,27,27),(28,1,4,28,28),(29,1,4,29,29),(30,1,4,30,30),(31,1,4,31,31),(32,1,4,32,32),(33,1,5,33,33),(34,1,5,34,34),(35,1,5,35,35),(36,1,5,36,36),(37,1,5,37,37),(38,1,5,38,38),(39,1,5,39,39),(40,1,5,40,40),(41,1,5,41,41),(42,1,5,42,42),(43,1,5,43,43),(44,1,5,44,44),(45,1,5,45,45),(46,1,5,46,46),(47,1,5,47,47),(48,1,5,48,48),(49,1,5,49,49),(50,1,5,50,50),(51,1,7,51,51),(52,1,7,52,52),(53,1,7,53,53),(54,1,7,54,54),(55,1,7,55,55),(56,1,7,56,56),(57,1,7,57,57),(58,1,7,58,58),(59,1,7,59,59),(60,1,7,60,60),(61,1,7,61,61),(62,1,7,62,62),(63,1,7,63,63),(64,1,8,64,64),(65,1,8,65,65),(66,1,8,66,66),(67,1,8,67,67),(68,1,8,68,68),(69,1,8,69,69),(70,1,8,70,70),(71,1,8,71,71),(72,1,9,72,72),(73,1,10,73,73),(74,1,10,74,74),(75,1,11,75,75),(76,1,11,76,76),(77,1,11,77,77),(78,1,11,78,78),(79,1,11,79,79),(80,1,12,80,80),(81,1,13,81,81),(82,1,13,82,82),(83,1,13,83,83),(84,1,13,84,84),(85,1,14,85,85),(86,1,14,86,86),(87,1,14,87,87),(88,1,14,88,88),(89,1,14,89,89),(90,1,14,90,90),(91,1,14,91,91),(92,1,14,92,92),(93,1,14,93,93);
/*!40000 ALTER TABLE `st_subcategory_item_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subcategory_item_translation`
--

DROP TABLE IF EXISTS `st_subcategory_item_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subcategory_item_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `sub_item_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `sub_item_name` varchar(255) NOT NULL DEFAULT '',
  `item_description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_item_id` (`sub_item_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subcategory_item_translation`
--

LOCK TABLES `st_subcategory_item_translation` WRITE;
/*!40000 ALTER TABLE `st_subcategory_item_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_subcategory_item_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subcategory_translation`
--

DROP TABLE IF EXISTS `st_subcategory_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subcategory_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `subcat_id` int(14) NOT NULL DEFAULT 0,
  `language` varchar(10) NOT NULL DEFAULT '',
  `subcategory_name` varchar(255) NOT NULL DEFAULT '',
  `subcategory_description` text DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subcat_id` (`subcat_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subcategory_translation`
--

LOCK TABLES `st_subcategory_translation` WRITE;
/*!40000 ALTER TABLE `st_subcategory_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_subcategory_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_subscriber`
--

DROP TABLE IF EXISTS `st_subscriber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_subscriber` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email_address` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `subcsribe_type` varchar(50) NOT NULL DEFAULT 'website',
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `email_address` (`email_address`),
  KEY `merchant_id` (`merchant_id`),
  KEY `subcsribe_type` (`subcsribe_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_subscriber`
--

LOCK TABLES `st_subscriber` WRITE;
/*!40000 ALTER TABLE `st_subscriber` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_subscriber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_suggested_items`
--

DROP TABLE IF EXISTS `st_suggested_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_suggested_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(11) DEFAULT NULL,
  `item_id` int(10) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'pending',
  `reason` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_suggested_items`
--

LOCK TABLES `st_suggested_items` WRITE;
/*!40000 ALTER TABLE `st_suggested_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_suggested_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_device`
--

DROP TABLE IF EXISTS `st_table_device`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_device` (
  `table_uuid` varchar(100) NOT NULL DEFAULT '',
  `device_id` varchar(50) NOT NULL DEFAULT '',
  `device_info` varchar(50) NOT NULL DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  KEY `table_uuid` (`table_uuid`),
  KEY `device_id` (`device_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_device`
--

LOCK TABLES `st_table_device` WRITE;
/*!40000 ALTER TABLE `st_table_device` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_device` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_reservation`
--

DROP TABLE IF EXISTS `st_table_reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_reservation` (
  `reservation_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `reservation_uuid` varchar(100) NOT NULL DEFAULT '',
  `client_id` int(14) DEFAULT 0,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `room_id` int(14) NOT NULL DEFAULT 0,
  `table_id` int(14) NOT NULL DEFAULT 0,
  `reservation_date` date DEFAULT NULL,
  `reservation_time` time DEFAULT NULL,
  `guest_number` int(14) NOT NULL DEFAULT 0,
  `special_request` varchar(255) NOT NULL DEFAULT '',
  `cancellation_reason` text DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) DEFAULT '',
  PRIMARY KEY (`reservation_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `reservation_date` (`reservation_date`),
  KEY `table_id` (`table_id`),
  KEY `guest_number` (`guest_number`),
  KEY `status` (`status`)
) ENGINE=InnoDB AUTO_INCREMENT=10000 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_reservation`
--

LOCK TABLES `st_table_reservation` WRITE;
/*!40000 ALTER TABLE `st_table_reservation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_reservation_history`
--

DROP TABLE IF EXISTS `st_table_reservation_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_reservation_history` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `reservation_id` bigint(20) NOT NULL DEFAULT 0,
  `status` varchar(255) NOT NULL DEFAULT '',
  `remarks` text DEFAULT NULL,
  `ramarks_trans` text DEFAULT NULL,
  `change_by` varchar(100) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_reservation_history`
--

LOCK TABLES `st_table_reservation_history` WRITE;
/*!40000 ALTER TABLE `st_table_reservation_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_reservation_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_room`
--

DROP TABLE IF EXISTS `st_table_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_room` (
  `room_id` int(14) NOT NULL AUTO_INCREMENT,
  `room_uuid` varchar(100) NOT NULL DEFAULT '',
  `room_name` varchar(255) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'pending',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`room_id`),
  KEY `room_uuid` (`room_uuid`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_room`
--

LOCK TABLES `st_table_room` WRITE;
/*!40000 ALTER TABLE `st_table_room` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_shift`
--

DROP TABLE IF EXISTS `st_table_shift`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_shift` (
  `shift_id` int(14) NOT NULL AUTO_INCREMENT,
  `shift_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `shift_name` varchar(255) NOT NULL DEFAULT '',
  `days_of_week` text DEFAULT NULL,
  `first_seating` time DEFAULT NULL,
  `last_seating` time DEFAULT NULL,
  `shift_interval` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT '',
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`shift_id`),
  UNIQUE KEY `shift_uuid` (`shift_uuid`),
  KEY `merchant_id` (`merchant_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_shift`
--

LOCK TABLES `st_table_shift` WRITE;
/*!40000 ALTER TABLE `st_table_shift` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_shift` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_shift_days`
--

DROP TABLE IF EXISTS `st_table_shift_days`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_shift_days` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `shift_id` int(14) NOT NULL DEFAULT 0,
  `day_of_week` int(10) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `shift_id` (`shift_id`),
  KEY `day_of_week` (`day_of_week`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_shift_days`
--

LOCK TABLES `st_table_shift_days` WRITE;
/*!40000 ALTER TABLE `st_table_shift_days` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_shift_days` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_status`
--

DROP TABLE IF EXISTS `st_table_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_status` (
  `table_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `status` varchar(20) NOT NULL DEFAULT 'available',
  KEY `table_uuid` (`table_uuid`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_status`
--

LOCK TABLES `st_table_status` WRITE;
/*!40000 ALTER TABLE `st_table_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_table_tables`
--

DROP TABLE IF EXISTS `st_table_tables`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_table_tables` (
  `table_id` int(14) NOT NULL AUTO_INCREMENT,
  `table_uuid` varchar(100) NOT NULL DEFAULT '',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `room_id` int(14) NOT NULL DEFAULT 0,
  `table_name` varchar(255) NOT NULL DEFAULT '',
  `min_covers` int(14) NOT NULL DEFAULT 0,
  `max_covers` int(14) NOT NULL DEFAULT 0,
  `available` smallint(1) NOT NULL DEFAULT 1,
  `device_id` varchar(50) NOT NULL DEFAULT '',
  `device_info` varchar(100) NOT NULL DEFAULT '',
  `sequence` int(14) NOT NULL DEFAULT 0,
  `status` varchar(100) NOT NULL DEFAULT 'available',
  `current_order_id` int(10) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`table_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `room_id` (`room_id`),
  KEY `min_covers` (`min_covers`),
  KEY `max_covers` (`max_covers`),
  KEY `available` (`available`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_table_tables`
--

LOCK TABLES `st_table_tables` WRITE;
/*!40000 ALTER TABLE `st_table_tables` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_table_tables` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_tags`
--

DROP TABLE IF EXISTS `st_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_tags` (
  `tag_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  `slug` varchar(255) NOT NULL DEFAULT '',
  `description` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tag_id`),
  KEY `tag_name` (`tag_name`),
  KEY `slug` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_tags`
--

LOCK TABLES `st_tags` WRITE;
/*!40000 ALTER TABLE `st_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_tags_relationship`
--

DROP TABLE IF EXISTS `st_tags_relationship`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_tags_relationship` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(14) NOT NULL DEFAULT 0,
  `tag_id` int(14) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `banner_id` (`banner_id`),
  KEY `tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_tags_relationship`
--

LOCK TABLES `st_tags_relationship` WRITE;
/*!40000 ALTER TABLE `st_tags_relationship` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_tags_relationship` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_tags_translation`
--

DROP TABLE IF EXISTS `st_tags_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_tags_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) NOT NULL DEFAULT 0,
  `language` varchar(100) NOT NULL DEFAULT '',
  `tag_name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `language` (`language`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_tags_translation`
--

LOCK TABLES `st_tags_translation` WRITE;
/*!40000 ALTER TABLE `st_tags_translation` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_tags_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_tax`
--

DROP TABLE IF EXISTS `st_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_tax` (
  `tax_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `tax_uuid` varchar(100) DEFAULT '',
  `merchant_id` bigint(20) DEFAULT 0,
  `tax_type` varchar(50) DEFAULT 'standard',
  `tax_name` varchar(100) NOT NULL DEFAULT '',
  `tax_in_price` tinyint(1) NOT NULL DEFAULT 0,
  `tax_rate` decimal(10,2) NOT NULL DEFAULT 0.00,
  `tax_rate_type` varchar(50) NOT NULL DEFAULT 'percent',
  `default_tax` tinyint(1) NOT NULL DEFAULT 0,
  `active` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`tax_id`),
  KEY `merchant_id` (`merchant_id`),
  KEY `active` (`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_tax`
--

LOCK TABLES `st_tax` WRITE;
/*!40000 ALTER TABLE `st_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_templates`
--

DROP TABLE IF EXISTS `st_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_templates` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_key` varchar(255) NOT NULL DEFAULT '',
  `template_name` varchar(255) NOT NULL DEFAULT '',
  `enabled_email` int(1) NOT NULL DEFAULT 0,
  `enabled_sms` int(1) NOT NULL DEFAULT 0,
  `enabled_push` int(1) NOT NULL DEFAULT 0,
  `tags` text DEFAULT NULL,
  `sms_template_id` varchar(255) NOT NULL DEFAULT '',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`template_id`),
  KEY `template_key` (`template_key`),
  KEY `enabled_email` (`enabled_email`),
  KEY `enabled_sms` (`enabled_sms`),
  KEY `enabled_push` (`enabled_push`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_templates`
--

LOCK TABLES `st_templates` WRITE;
/*!40000 ALTER TABLE `st_templates` DISABLE KEYS */;
INSERT INTO `st_templates` VALUES (2,'','Order Invoice',1,0,1,NULL,'','2021-11-26 14:52:10','2021-11-26 21:52:10','127.0.0.1'),(3,'','Customer Full Refund',1,0,1,NULL,'','2021-11-27 04:43:58','2021-11-27 11:43:58','49.147.246.254'),(4,'','Receipt',1,0,1,NULL,'60df2ddaf5f97b279045d663','2021-11-27 15:47:38','2021-11-27 22:47:38','127.0.0.1'),(5,'','New Order',1,0,1,NULL,'','2021-11-27 15:54:09','2021-11-27 22:54:09','127.0.0.1'),(6,'','Order rejected',1,0,1,NULL,'','2021-11-27 16:02:27','2021-11-27 23:02:27','127.0.0.1'),(7,'','Order Cancel',1,0,1,NULL,'','2021-11-29 02:10:41','2021-11-29 09:10:41','127.0.0.1'),(8,'','Delay Order',1,0,1,NULL,'','2021-11-29 03:11:41','2021-11-29 10:11:41','127.0.0.1'),(9,'','Order Accepted',1,0,1,NULL,'','2021-11-29 08:01:07','2021-11-29 15:01:07','127.0.0.1'),(10,'','Driver on its way',1,0,1,NULL,'','2021-11-29 08:11:06','2021-11-29 15:11:06','127.0.0.1'),(11,'','Customer Partial Full Refund',1,0,1,NULL,'','2021-11-29 10:44:22','2021-11-29 17:44:22','127.0.0.1'),(12,'','Customer Welcome',1,0,0,NULL,'','2021-11-29 15:19:51','2021-11-29 22:19:51','127.0.0.1'),(13,'','Customer Verification',1,1,0,NULL,'','2021-11-29 15:20:09','2021-11-29 22:20:09','127.0.0.1'),(14,'','Customer Reset Password',1,0,0,NULL,'','2021-11-29 15:20:19','2021-11-29 22:20:19','127.0.0.1'),(15,'','Review',1,0,0,NULL,'','2021-12-01 07:53:27','2021-12-01 14:53:27','127.0.0.1'),(16,'','Payout new request',1,0,1,NULL,'','2021-12-04 03:35:08','2021-12-04 10:35:08','127.0.0.1'),(17,'','Payout paid',1,0,0,NULL,'','2021-12-04 03:35:18','2021-12-04 10:35:18','127.0.0.1'),(18,'','Payout Cancel',1,0,1,NULL,'','2021-12-04 03:35:24','2021-12-04 10:35:24','127.0.0.1'),(19,'','New customer signup',0,0,1,NULL,'','2021-12-10 02:00:54','2021-12-10 09:00:54','127.0.0.1'),(20,'','New cancell order',0,0,1,NULL,'','2021-12-10 04:44:40','2021-12-10 11:44:40','127.0.0.1'),(21,'','Order on its way',0,0,1,NULL,'','2021-12-14 09:43:19','2021-12-14 16:43:19','127.0.0.1'),(22,'','Order delivered',0,0,1,NULL,'','2021-12-14 09:43:44','2021-12-14 16:43:44','127.0.0.1'),(23,'','Order delivery failed',0,0,1,NULL,'','2021-12-14 09:44:34','2021-12-14 16:44:34','127.0.0.1'),(24,'','Merchant Welcome Email',1,0,0,NULL,'','2021-12-23 02:10:07','2021-12-23 09:10:07','127.0.0.1'),(25,'','Merchant Confirm account',1,0,1,NULL,'','2021-12-23 02:13:15','2021-12-23 09:13:15','127.0.0.1'),(26,'','Merchant new signup',1,0,1,NULL,'','2021-12-23 11:50:50','2021-12-23 18:50:50','127.0.0.1'),(27,'','Merchant plan expired',1,0,1,NULL,'','2021-12-29 16:09:44','2021-12-29 23:09:44','127.0.0.1'),(28,'','Merchant plan near expiration',1,0,1,NULL,'','2021-12-29 16:17:51','2021-12-29 23:17:51','127.0.0.1'),(29,'','Forgot password',1,0,0,NULL,'','2022-02-20 18:07:48','2022-02-20 18:07:48','127.0.0.1'),(34,'','Invoice created',1,0,1,NULL,'','2022-12-10 19:57:24','2022-12-10 19:57:24','127.0.0.1'),(35,'','Invoice new upload deposit',1,0,1,NULL,'','2022-12-10 20:02:20','2022-12-10 20:02:20','127.0.0.1'),(36,'','Booking requested',1,0,0,NULL,'','2022-12-13 07:51:17','2022-12-13 07:51:17','127.0.0.1'),(37,'','Booking confirmed',1,0,0,NULL,'','2022-12-13 07:55:48','2022-12-13 07:55:48','127.0.0.1'),(38,'','Booking Update status',1,0,0,NULL,'','2022-12-24 19:21:55','2022-12-24 19:21:55','127.0.0.1'),(39,'','Contact Us',1,0,1,NULL,'','2022-12-28 18:56:04','2022-12-28 18:56:04','127.0.0.1'),(40,'','Delivery arrived at restaurant',0,0,1,NULL,'','2023-02-04 19:53:22','2023-02-04 19:53:22','127.0.0.1'),(41,'','Delivery order pickup',0,0,1,NULL,'','2023-02-04 19:54:53','2023-02-04 19:54:53','127.0.0.1'),(42,'','Delivery missed assigned task',0,0,1,NULL,'','2023-02-10 18:59:39','2023-02-10 18:59:39','127.0.0.1'),(43,'','Delivery order OTP to customer',1,0,1,NULL,'','2023-02-15 10:15:44','2023-02-15 10:15:44','127.0.0.1'),(44,'','Delivery order assigned to driver',0,0,1,NULL,'','2023-02-15 20:06:33','2023-02-15 20:06:33','127.0.0.1'),(45,'','Delivery order ready for pickup',0,0,1,NULL,'','2023-02-15 22:05:04','2023-02-15 22:05:04','127.0.0.1'),(46,'','Delivery auto assign order',0,0,1,NULL,'','2023-02-16 19:35:57','2023-02-16 19:35:57','127.0.0.1'),(47,'','Delivery started to customer',0,0,1,NULL,'','2023-02-22 09:59:37','2023-02-22 09:59:37','127.0.0.1'),(48,'','Delivery arrived at customer location',0,0,1,NULL,'','2023-02-22 10:00:53','2023-02-22 10:00:53','127.0.0.1'),(49,'','Test runactions',1,1,1,NULL,'5eefb314d6fc0513522d4747','2023-05-17 20:10:42','2023-05-17 20:10:42','127.0.0.1'),(50,'','Complete registration',1,0,0,NULL,'','2023-12-30 23:20:36','2023-12-30 23:20:36','127.0.0.1'),(51,'','New Bank Deposit Uploaded for Subscription Payment',1,0,1,NULL,'','2024-08-05 18:01:23','2024-08-05 18:01:23','127.0.0.1'),(52,'','Bank Subscription Approved',1,0,0,NULL,'','2024-08-07 17:51:52','2024-08-07 17:51:52','127.0.0.1'),(53,'','Merchant Registration is Approved',1,0,0,NULL,'','2024-08-08 10:05:24','2024-08-08 10:05:24','127.0.0.1'),(54,'','Subscription Payment Received and Processed',1,0,0,NULL,'','2024-08-08 19:13:52','2024-08-08 19:13:52','127.0.0.1'),(55,'','Subscription Payment Failed',1,0,0,NULL,'','2024-08-08 22:01:42','2024-08-08 22:01:42','127.0.0.1'),(56,'','Subscription Canceled',1,0,0,NULL,'','2024-08-09 16:59:48','2024-08-09 16:59:48','127.0.0.1'),(57,'','Contact Form',1,0,0,NULL,'','2026-04-05 07:55:46','2026-04-05 07:55:46','');
/*!40000 ALTER TABLE `st_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_templates_translation`
--

DROP TABLE IF EXISTS `st_templates_translation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_templates_translation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(14) NOT NULL DEFAULT 0,
  `template_type` varchar(100) NOT NULL DEFAULT '',
  `language` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `content` longtext DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `template_id` (`template_id`),
  KEY `language` (`language`),
  KEY `template_type` (`template_type`)
) ENGINE=InnoDB AUTO_INCREMENT=4858 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_templates_translation`
--

LOCK TABLES `st_templates_translation` WRITE;
/*!40000 ALTER TABLE `st_templates_translation` DISABLE KEYS */;
INSERT INTO `st_templates_translation` VALUES (1279,4,'email','en','Order Summary','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Thanks for your order</h2>\r\n    <p style=\"padding:10px;\">You\'ll receive an email when your food are ready to deliver. If you have any questions, Call us {{merchant.contact_phone}}.</p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(1280,4,'email','ja','',''),(1281,4,'email','ar','',''),(1282,4,'sms','en','','Your Order Being Processed #{{order_info.order_id}}'),(1283,4,'sms','ja','',''),(1284,4,'sms','ar','',''),(1285,4,'push','en','','Order Being Processed #{{order_info.order_id}}'),(1286,4,'push','ja','',''),(1287,4,'push','ar','',''),(1423,11,'email','en','Partial refund for your #{{order_info.order_id}}','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n   \r\n\r\n    <p style=\"padding-bottom:15px\">Hi {{order_info.customer_name}},</p>\r\n	<p style=\"line-height:20px;\">\r\n	Good News! We’ve processed your partial refund of {{additional_data.refund_amount}} for your item(s) from order #{{order_info.order_id}}.\r\n	</p>\r\n	\r\n	<p style=\"line-height:20px;\">Reversal may take 1 to 2 billing cycles or 5 to 15 banking days for local credit cards, and up to 45 banking days for international credit and debit cards, depending on your bank\'s processing time.</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(1424,11,'email','ja','',''),(1425,11,'email','ar','',''),(1426,11,'sms','en','',''),(1427,11,'sms','ja','',''),(1428,11,'sms','ar','',''),(1429,11,'push','en','',''),(1430,11,'push','ja','',''),(1431,11,'push','ar','',''),(1495,13,'email','en','OTP!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p>Hi <br></p>\r\n	\r\n	<p>Your OTP is {{code}}.</p>		\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1496,13,'email','ja','',''),(1497,13,'email','ar','',''),(1498,13,'sms','en','','Your OTP is {{code}}.'),(1499,13,'sms','ja','',''),(1500,13,'sms','ar','',''),(1501,13,'push','en','',''),(1502,13,'push','ja','',''),(1503,13,'push','ar','',''),(1522,12,'email','en','{{site.title}} - Registration','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	<p>You\'ve successfully signed up for a {{site.title}} account! You can use this next time you order through {{site.title}},</p>		\r\n	<p>and you’ll get the latest promos, news, and updates.</p>\r\n	\r\n	<div style=\"padding-top:20px;\">\r\n	<p>Thank You!</p>\r\n	<p>{{site.title}} Team</p>\r\n	</div>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1523,12,'email','ja','',''),(1524,12,'email','ar','',''),(1525,12,'sms','en','',''),(1526,12,'sms','ja','',''),(1527,12,'sms','ar','',''),(1528,12,'push','en','',''),(1529,12,'push','ja','',''),(1530,12,'push','ar','',''),(1531,15,'email','en','Review your order {{order_info.order_id}}',''),(1532,15,'email','ja','',''),(1533,15,'email','ar','',''),(1534,15,'sms','en','',''),(1535,15,'sms','ja','',''),(1536,15,'sms','ar','',''),(1537,15,'push','en','',''),(1538,15,'push','ja','',''),(1539,15,'push','ar','',''),(1585,14,'email','en','Password change instructions','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">It looks like you have forgotten your password. We can help you to create a new password.</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{reset_password_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Reset Password\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{reset_password_link}}\">{{reset_password_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1586,14,'email','ja','',''),(1587,14,'email','ar','',''),(1588,14,'sms','en','',''),(1589,14,'sms','ja','',''),(1590,14,'sms','ar','',''),(1591,14,'push','en','',''),(1592,14,'push','ja','',''),(1593,14,'push','ar','',''),(1639,17,'email','en','Payout paid','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your Payout with transaction #{{transaction_id}} has been paid.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_methood}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1640,17,'email','ja','',''),(1641,17,'email','ar','',''),(1642,17,'sms','en','',''),(1643,17,'sms','ja','',''),(1644,17,'sms','ar','',''),(1645,17,'push','en','',''),(1646,17,'push','ja','',''),(1647,17,'push','ar','',''),(1738,5,'email','en','New order #{{order_info.order_id}} from {{order_info.customer_name}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr> \r\n <tr>\r\n  <td style=\"background:#ffffff;\">\r\n  \r\n    {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td>\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1739,5,'email','ja','',''),(1740,5,'email','ar','',''),(1741,5,'sms','en','','New order #{{order_info.order_id}} from {{order_info.customer_name}}'),(1742,5,'sms','ja','',''),(1743,5,'sms','ar','',''),(1744,5,'push','en','You have new order from {{customer_name}}','Order#{{order_id}} from {{customer_name}}'),(1745,5,'push','ja','',''),(1746,5,'push','ar','',''),(1837,19,'email','en','You have new customer signup','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p>You have new customer signup.</p>	\r\n	\r\n	<h5>Customer Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">First name</td>\r\n	  <td>{{first_name}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Last name</td>\r\n	  <td>{{last_name}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Email address</td>\r\n	  <td>{{email_address}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Phone number</td>\r\n	  <td>{{contact_phone}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1838,19,'email','ja','',''),(1839,19,'email','ar','',''),(1840,19,'sms','en','','You have new customer signup'),(1841,19,'sms','ja','',''),(1842,19,'sms','ar','',''),(1843,19,'push','en','You have new customer signup','{{first_name}} {{last_name}} has signup'),(1844,19,'push','ja','',''),(1845,19,'push','ar','',''),(1864,20,'email','en','',''),(1865,20,'email','ja','',''),(1866,20,'email','ar','',''),(1867,20,'sms','en','',''),(1868,20,'sms','ja','',''),(1869,20,'sms','ar','',''),(1870,20,'push','en','Order #{{order_id}} from {{customer_name}} is cancelled','Order #{{order_id}} from {{customer_name}} is cancelled'),(1871,20,'push','ja','',''),(1872,20,'push','ar','',''),(1909,16,'email','en','Payout new request','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p style=\"margin-bottom:10px;\">New payout request by merchant details below.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_method}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1910,16,'email','ja','',''),(1911,16,'email','ar','',''),(1912,16,'sms','en','',''),(1913,16,'sms','ja','',''),(1914,16,'sms','ar','',''),(1915,16,'push','en','New payout new request','New payout new request from {{restaurant_name}}'),(1916,16,'push','ja','',''),(1917,16,'push','ar','',''),(1927,18,'email','en','Payout cancelled','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your Payout with transaction #{{transaction_id}} has been cancelled.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_methood}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1928,18,'email','ja','',''),(1929,18,'email','ar','',''),(1930,18,'sms','en','',''),(1931,18,'sms','ja','',''),(1932,18,'sms','ar','',''),(1933,18,'push','en','Your payout request is cancelled','{{restaurant_name}} Your payout request with the amount of {{transaction_amount}} is cancel'),(1934,18,'push','ja','',''),(1935,18,'push','ar','',''),(1981,8,'email','en','Sorry for the delay in delivery!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p>Hi {{order_info.customer_name}},</p>\r\n	\r\n	<p>We are sorry the item(s) from your order {{order_info.order_id}} is taking longer than expected. \r\n	We are working closely with the restaurant team to deliver this order as soon as possible.​</p>\r\n	\r\n	<p><b>{{order_info.delayed_order}}</b></p>\r\n	\r\n	<p>\r\n	Please make sure to turn on your App notification to get the latest updates on your order. \r\n	</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(1982,8,'email','ja','',''),(1983,8,'email','ar','',''),(1984,8,'sms','en','',''),(1985,8,'sms','ja','',''),(1986,8,'sms','ar','',''),(1987,8,'push','en','Order #{{order_id}} will be late, {{delayed_order_mins}}min(s)','Your order@{{order_id}} will be late, in {{delayed_order_mins}}min(s)'),(1988,8,'push','ja','',''),(1989,8,'push','ar','',''),(2008,7,'email','en','Your order #{{order_info.order_id}} is cancelled','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Your order #{{order_id}} has been cancelled</h2>\r\n    <p style=\"padding:10px;\">unfortunately merchant cannot fulfill your order, merchant says <b>{{order_info.rejetion_reason}}</b></p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2009,7,'email','ja','',''),(2010,7,'email','ar','',''),(2011,7,'sms','en','',''),(2012,7,'sms','ja','',''),(2013,7,'sms','ar','',''),(2014,7,'push','en','Your order #{{order_id}} is cancelled','Your order #{{order_id}} is cancelled'),(2015,7,'push','ja','',''),(2016,7,'push','ar','',''),(2017,9,'email','en','Your order #{{order_info.order_id}} is accepted by {{merchant.restaurant_name}}','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order Accepted<br></h2>\r\n    <p>Your order is confirmed and is now being prepared by the store. We\'ll let you know once our rider is on his way to you.</p><p>Conveniently track your order by clicking track order.<br></p>\r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(2018,9,'email','ja','',''),(2019,9,'email','ar','',''),(2020,9,'sms','en','',''),(2021,9,'sms','ja','',''),(2022,9,'sms','ar','',''),(2023,9,'push','en','Your order #{{order_id}} is accepted by {{restaurant_name}}','Your order #{{order_id}} is accepted by {{restaurant_name}}'),(2024,9,'push','ja','',''),(2025,9,'push','ar','',''),(2035,6,'email','en','Your order #{{order_id}} has been rejected','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Your order #{{order_id}} has been rejected</h2>\r\n    <p style=\"padding:10px;\">unfortunately merchant cannot fulfill your order, merchant says <b>{{order_info.rejetion_reason}}</b></p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2036,6,'email','ja','',''),(2037,6,'email','ar','',''),(2038,6,'sms','en','',''),(2039,6,'sms','ja','',''),(2040,6,'sms','ar','',''),(2041,6,'push','en','Your order #{{order_id}} has been rejected','Your order #{{order_id}} has been rejected'),(2042,6,'push','ja','',''),(2043,6,'push','ar','',''),(2053,22,'email','en','',''),(2054,22,'email','ja','',''),(2055,22,'email','ar','',''),(2056,22,'sms','en','',''),(2057,22,'sms','ja','',''),(2058,22,'sms','ar','',''),(2059,22,'push','en','Your order #{{order_id}} successfully delivered','Your order #{{order_id}} successfully delivered'),(2060,22,'push','ja','',''),(2061,22,'push','ar','',''),(2071,10,'email','en','Order is on the way!','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order is on the way!<br></h2>\r\n    <p style=\"padding:10px;\">For everyone safety is our priority so remember to wash your hands before and after receiving your order<br></p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(2072,10,'email','ja','',''),(2073,10,'email','ar','',''),(2074,10,'sms','en','',''),(2075,10,'sms','ja','',''),(2076,10,'sms','ar','',''),(2077,10,'push','en','Your order #{{order_id}} is on its way!','Your order #{{order_id}} is on its way!'),(2078,10,'push','ja','',''),(2079,10,'push','ar','',''),(2080,21,'email','en','Order is on the way!','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order is on the way!<br></h2>\r\n    <p style=\"padding:10px;\">For everyone safety is our priority so remember to wash your hands before and after receiving your order<br></p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(2081,21,'email','ja','',''),(2082,21,'email','ar','',''),(2083,21,'sms','en','',''),(2084,21,'sms','ja','',''),(2085,21,'sms','ar','',''),(2086,21,'push','en','Your order #{{order_id}} is on its way!','Your order #{{order_id}} is on its way!'),(2087,21,'push','ja','',''),(2088,21,'push','ar','',''),(2089,23,'email','en','',''),(2090,23,'email','ja','',''),(2091,23,'email','ar','',''),(2092,23,'sms','en','',''),(2093,23,'sms','ja','',''),(2094,23,'sms','ar','',''),(2095,23,'push','en','unfortunately your order#{{order_id}} has failed to deliver','unfortunately your order#{{order_id}} has failed to deliver'),(2096,23,'push','ja','',''),(2097,23,'push','ar','',''),(2170,2,'email','en','Invoice for your order #{{order_info.order_id}}','{% include \'header.html\' %}\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;padding-bottom:10px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Invoice #{{additional_data.invoice_number}}</h2>    \r\n   </td>   \r\n </tr>\r\n <tr>\r\n   <td style=\"padding-bottom:10px;background:#ffffff;\" valign=\"middle\">\r\n     <table width=\"80%\" align=\"center\">\r\n      <tbody><tr> \r\n       <td>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper sapien ullamcorper nibh aliquam, non rutrum orci vulputate. Donec congue ac tortor eu dignissim. Cras a libero lobortis tellus elementum consequat eget vitae turpis. Mauris non lorem odio. Integer in lacus bibendum, accumsan risus nec, pretium felis. Aliquam auctor nec eros a mattis. Praesent eu ligula vitae ex rhoncus aliquam. Pellentesque ut mattis lectus. Maecenas ultrices a lorem et interdum. Mauris lacinia nec libero id tincidunt. Nunc accumsan quis enim vitae pellentesque.</p>        \r\n       </td>\r\n      </tr>\r\n     </tbody></table>\r\n   </td>   \r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"padding:30px;\" align=\"center\">\r\n     <a href=\"{{additional_data.payment_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Pay Now\r\n     </a>\r\n  </td>\r\n </tr>\r\n \r\n  <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n     <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n\r\n{% include \'footer.html\' %}\r\n'),(2171,2,'email','ja','',''),(2172,2,'email','ar','',''),(2173,2,'sms','en','','Your order #{{order_info.order_id}}, has a balance of {{additional_data.balance}}.\r\npay here {{additional_data.payment_link}}'),(2174,2,'sms','ja','',''),(2175,2,'sms','ar','',''),(2176,2,'push','en','Your order #{{order_id}}, has a balance of {{balance}}. pay here {{payment_link}}','Your order #{{order_id}}, has a balance of {{balance}}.\r\npay here {{payment_link}}'),(2177,2,'push','ja','',''),(2178,2,'push','ar','',''),(2179,24,'email','en','Your registration is complete!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{restaurant_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis nunc ut metus vulputate imperdiet at eget ipsum. Duis pharetra eros nec purus auctor, ut dapibus nunc convallis. Phasellus pellentesque lorem eros, et molestie velit pulvinar eget. Praesent orci orci, pulvinar ac nisi sit amet, cursus imperdiet mauris. Sed pharetra, nibh non maximus blandit, ex felis sagittis turpis, et porttitor dui nibh a eros. Donec imperdiet non ex molestie consequat. Duis posuere tortor eget nibh imperdiet sollicitudin. Curabitur porta placerat ex, vitae consequat turpis semper in. Integer non nulla justo. Phasellus posuere faucibus erat, ac ornare odio suscipit sed. Cras et erat dui. </p>		\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2180,24,'email','ja','',''),(2181,24,'email','ar','',''),(2182,24,'sms','en','',''),(2183,24,'sms','ja','',''),(2184,24,'sms','ar','',''),(2185,24,'push','en','',''),(2186,24,'push','ja','',''),(2187,24,'push','ar','',''),(2305,25,'email','en','Welcome to {{site.site_name}}. Confirm your account!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{restaurant_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Welcome</p>\r\n	 <p>Before you get full access to all features of your restaurant in {{site.site_name}}, please confirm your email address</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{confirm_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Confirm email\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{confirm_link}}\">{{confirm_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2306,25,'email','ja','',''),(2307,25,'email','ar','',''),(2308,25,'sms','en','',''),(2309,25,'sms','ja','',''),(2310,25,'sms','ar','',''),(2311,25,'push','en','Welcome to {{site_name}}. Confirm your account!','Welcome to {{site_name}}. Confirm your account!'),(2312,25,'push','ja','',''),(2313,25,'push','ar','',''),(2332,26,'email','en','You have new merchant signup','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p style=\"margin-bottom: 15px;\">You have new merchant signup.</p>	\r\n	\r\n	<h5>Customer Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Restaurant name<br></td>\r\n	  <td>{{restaurant_name}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Address<br></td>\r\n	  <td>{{address}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Membership Program<br></td>\r\n	  <td>{{plan_title}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Phone number</td>\r\n	  <td>{{contact_phone}}</td>\r\n	 </tr><tr><td>Email address<br></td><td>{{contact_email}}<br></td></tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2333,26,'email','ja','',''),(2334,26,'email','ar','',''),(2335,26,'sms','en','',''),(2336,26,'sms','ja','',''),(2337,26,'sms','ar','',''),(2338,26,'push','en','You have new merchant signup','You have new merchant signup'),(2339,26,'push','ja','',''),(2340,26,'push','ar','',''),(2350,28,'email','en','Your membership will expired on {{expiration_date}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your&nbsp; membership will expired on {{expiration_date}}.</p>	\r\n	\r\n	\r\n	\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2351,28,'email','ja','',''),(2352,28,'email','ar','',''),(2353,28,'sms','en','',''),(2354,28,'sms','ja','',''),(2355,28,'sms','ar','',''),(2356,28,'push','en','Your membership will expired on {{expiration_date}}','Your membership will expired on {{expiration_date}}'),(2357,28,'push','ja','',''),(2358,28,'push','ar','',''),(2359,27,'email','en','Your membership has expired','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your&nbsp; membership has expired.</p>	\r\n	\r\n	\r\n	\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2360,27,'email','ja','',''),(2361,27,'email','ar','',''),(2362,27,'sms','en','',''),(2363,27,'sms','ja','',''),(2364,27,'sms','ar','',''),(2365,27,'push','en','Your membership has expired','Your membership has expired'),(2366,27,'push','ja','',''),(2367,27,'push','ar','',''),(2377,3,'email','en','Refund for your #{{order_info.order_id}}','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n   \r\n\r\n    <p style=\"padding-bottom:15px\">Hi {{order_info.customer_name}},</p>\r\n	<p style=\"line-height:20px;\">\r\n	Good News! We’ve processed your full refund of {{additional_data.refund_amount}} for your item(s) from order #{{order_info.order_id}}.\r\n	</p>\r\n	\r\n	<p style=\"line-height:20px;\">Reversal may take 1 to 2 billing cycles or 5 to 15 banking days for local credit cards, and up to 45 banking days for international credit and debit cards, depending on your bank\'s processing time.</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(2378,3,'email','ja','',''),(2379,3,'email','ar','',''),(2380,3,'sms','en','',''),(2381,3,'sms','ja','',''),(2382,3,'sms','ar','',''),(2383,3,'push','en','Your refund has been process for order #{{order_info.order_id}} ','Your refund has been process for order #{{order_info.order_id}} '),(2384,3,'push','ja','',''),(2385,3,'push','ar','',''),(2386,29,'email','en','Forgot password','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">It looks like you have forgotten your password. We can help you to create a new password.</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{reset_password_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Reset Password\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{reset_password_link}}\">{{reset_password_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2387,29,'email','ar','',''),(2388,29,'email','ja','',''),(2389,29,'sms','en','',''),(2390,29,'sms','ar','',''),(2391,29,'sms','ja','',''),(2392,29,'push','en','',''),(2393,29,'push','ar','',''),(2394,29,'push','ja','',''),(2749,34,'email','en','You have new Invoice #{{invoice_number}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr> \r\n <tr>\r\n  <td style=\"background:#ffffff;\">\r\n  \r\n   <p>Your invoice is now ready, you can view your invoice by going to backoffice</p>\r\n   \r\n   \r\n  </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(2759,34,'push','en','You have new Invoice #{{invoice_number}}','You have new Invoice #{{invoice_number}}'),(2809,35,'email','en','New bank deposit with invoice #{{invoice_number}}','<p>New bank deposit with invoice #{{invoice_number}}<br></p>'),(2819,35,'push','en','New bank deposit with invoice #{{invoice_number}}','New bank deposit with invoice #{{invoice_number}}'),(3019,38,'email','en','Reservation {{status}} at {{restaurant_name}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Your reservation at {{restaurant_name}} is {{status}}!</p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">RESERVATION DETAILS</h5>\r\n	 \r\n	 <table>	 \r\n	 <tbody><tr><td>Name of guest:</td><td>: {{guest_fullname}}</td></tr>\r\n	 <tr><td>Number of guests</td><td>: {{guest_number}}</td></tr>\r\n	 <tr><td>Time of arrival</td><td>: {{reservation_datetime}}</td></tr>	 \r\n	 </tbody></table>\r\n	 \r\n	 <p style=\"margin-bottom:10px;\">Your Reservation ID is <b>{{reservation_id}}</b></p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">Special Requests</h5>\r\n	 <p style=\"margin-bottom:10px;\">{{special_request}}</p>\r\n	\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(3029,38,'push','en','Reservation {{status}} at {{restaurant_name}}','Reservation {{status}} at {{restaurant_name}}'),(3064,37,'email','en','Reservation Confirmed at {{restaurant_name}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Your reservation at {{restaurant_name}} is confirmed!</p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">RESERVATION DETAILS</h5>\r\n	 \r\n	 <table>	 \r\n	 <tbody><tr><td>Name of guest:</td><td>: {{guest_fullname}}</td></tr>\r\n	 <tr><td>Number of guests</td><td>: {{guest_number}}</td></tr>\r\n	 <tr><td>Time of arrival</td><td>: {{reservation_datetime}}</td></tr>	 \r\n	 </tbody></table>\r\n	 \r\n	 <p style=\"margin-bottom:10px;\">Your Reservation ID is <b>{{reservation_id}}</b></p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{manage_reservation_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Manage reservation\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{manage_reservation_link}}\">{{manage_reservation_link}}</a></p>\r\n	\r\n	<br><br>\r\n	<h5 style=\"margin-bottom:10px;\">Special Requests</h5>\r\n	<p style=\"margin-bottom:10px;\">{{special_request}}</p>\r\n	<br><br>\r\n	\r\n	<h5 style=\"margin-bottom:10px;\">RESTAURANT DETAILS</h5>\r\n	<p style=\"margin-bottom:10px;\">{{restaurant_name}}</p>\r\n	<p style=\"margin-bottom:10px;\">{{restaurant_contact_phone}} / {{restaurant_contact_email}}</p>\r\n	<br><br>\r\n	\r\n	<h5 style=\"margin-bottom:10px;\">Notes from the restaurant</h5>\r\n	<p style=\"margin-bottom:10px;\">{{notes_from_restaurant}}</p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(3074,37,'push','en','Reservation Confirmed at {{restaurant_name}}, Reservation ID#{{reservation_id}}','Reservation Confirmed at {{restaurant_name}}, Reservation ID#{{reservation_id}}'),(3079,36,'email','en','Online Reservation Confirmation Notification','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">You have received an online reservation.</p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">RESERVATION DETAILS</h5>\r\n	 \r\n	 <table>\r\n	 <tbody><tr><td>Restaurant Name</td><td>: {{restaurant_name}}</td></tr>\r\n	 <tr><td>Guest Name</td><td>: {{guest_fullname}}</td></tr>\r\n	 <tr><td>Guest Phone</td><td>: {{contact_phone}}</td></tr>\r\n	 <tr><td>Guest Email</td><td>: {{email_address}}</td></tr>\r\n	 <tr><td>Reservation ID</td><td>: {{reservation_id}}</td></tr>\r\n	 <tr><td>Date of booking</td><td>: {{date_created}}</td></tr>\r\n	 <tr><td>Time of arrival</td><td>: {{reservation_datetime}}</td></tr>\r\n	 <tr><td>Party of</td><td>: {{guest_number}}</td></tr>\r\n	 <tr><td>Special Request</td><td>: {{special_request}}</td></tr>\r\n	 </tbody></table>\r\n	 \r\n	\r\n	<br><br>\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{manage_reservation_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Manage reservation\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{manage_reservation_link}}\">{{manage_reservation_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(3089,36,'push','en','Online Reservation Confirmation Notification, Reservation ID#{{reservation_id}}','Online Reservation Confirmation Notification, Reservation ID#{{reservation_id}}'),(3109,39,'email','en','New contact form from {{email_address}}','{% include \'header.html\' %}\n<table style=\"width:100%;\">\n <tbody><tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\n  </td>\n </tr>\n <tr>\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\n    \n   <table width=\"50%\" align=\"center\">\n   <tbody><tr>\n    <td>\n		 \n	\n	 <h5 style=\"margin-bottom:10px;\">CONTACT DETAILS</h5>\n	 \n	 <table>	 \n	 <tbody><tr><td>Email address:</td><td>: {{email_address}}</td></tr>	 \n	 <tr><td>Full name</td><td>: {{fullname}}</td></tr>	 \n	 <tr><td>Contact number</td><td>: {{contact_number}}</td></tr>	 \n	 <tr><td>Country</td><td>: {{country_name}}</td></tr>	 \n	 <tr><td>Message</td><td>: {{message}}</td></tr>	 \n	 </tbody></table>\n	 \n	 \n	\n	</td>\n   </tr>\n   </tbody></table>\n	\n   </td>\n </tr>\n \n \n \n  \n <tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    \n   <table style=\"width:100%; table-layout: fixed;\">\n	  <tbody><tr>\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\n	  </tr>\n	  <tr>\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\n	     <p>{{site.address}}</p>\n         <p>{{site.contact}}</p>\n         <p>{{site.email}}</p>\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\n	    \n	      {% include \'social_link.html\' %}\n	     \n	     <table>\n	      <tbody><tr>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\n	      <td>●</td>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\n	      </tr>\n	     </tbody></table>\n	    \n	    </td>\n	  </tr>\n	</tbody></table>\n  \n  </td>\n </tr>\n \n</tbody></table>\n{% include \'footer.html\' %}\n'),(3119,39,'push','en','New contact form from {{email_address}}','New contact form from {{email_address}}'),(3329,45,'push','en','Order#{{order_id}} is ready for pickup at {{restaurant_name}}','Order#{{order_id}} is ready for pickup at {{restaurant_name}}'),(3334,44,'email','en','You have new assigned order#{{order_info.order_id}} from {{merchant.restaurant_name}}','You have new assigned order#{{order_info.order_id}} from {{merchant.restaurant_name}}'),(3344,44,'push','en','You have new assigned order#{{order_id}} from {{restaurant_name}}','You have new assigned order#{{order_id}} from {{restaurant_name}}'),(3349,43,'email','en','Your order#{{order_id}} OTP is {{code}}','Your order#{{order_id}} OTP is {{code}}'),(3359,43,'push','en','Your order#{{order_id}} OTP is {{code}}','Your order#{{order_id}} OTP is {{code}}'),(3374,42,'push','en','{{driver_name}} has missed the assign order#{{order_id}}','{{driver_name}} has missed the assign order#{{order_id}}'),(3449,40,'push','en','{{driver_firstname}} has arrived restaurant {{restaurant_name}}','{{driver_firstname}} has arrived restaurant {{restaurant_name}}'),(3464,41,'push','en','{{driver_firstname}} pickup the order#{{order_id}}','{{driver_firstname}} pickup the order#{{order_id}}'),(3479,46,'push','en','Order#{{order_id}} is assigned to {{driver_name}}','Order#{{order_id}} is assigned to {{driver_name}}'),(3494,47,'push','en','Your delivery rider is it is way to you location','Your delivery rider is it is way to you location'),(3509,48,'push','en','Your delivery rider has arrived to your location','Your delivery rider has arrived to your location'),(3754,50,'email','en','Complete your signup for {{site.site_name}}','<p>Dear {{first_name}},</p><p>Thank you for signing up for {{site.site_name}}!</p><p>To ensure the security of your account and complete the signup process, \nplease verify your email address by clicking the link below:</p>\n\n<p><a href=\"{{verification_link}}\" target=\"_blank\">\nClick here\n</a></p>\n\n<p>If the above link doesn\'t work, copy and paste the following URL into your browser\'s address bar:</p><p>{{verification_link}}</p><p>Thank you for choosing {{site.site_name}}. If you have any questions or need assistance, feel free to contact our support team at {{site.email}} / {{site.contact}} .</p><p>Best regards,</p><p>{{site_name}} Team</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>'),(4024,49,'email','en','Test runactions','<p>this is a test runactions<br></p>'),(4034,49,'push','en','Test runactions','Test runactions'),(4489,51,'email','en','New Bank Deposit Uploaded for Subscription Payment','Dear Admin,<br><br>We have received a new bank deposit upload for a subscription payment.<br><br>Details:<br>- **Merchant Name:** {{restaurant_name}}<br>- **Merchant Email:** {{restaurant_email}}<br>- **Subscription Plan:** {{plan_name}}<br>- **Amount:** {{amount}}<br>- **Reference Number:** {{reference_number}}<br>- **Upload Date:** {{uploaded_date}}<br><br>Please verify the payment and update the subscription status accordingly.<br><br>Best regards,<br>{{site_title}}<br><br>'),(4499,51,'push','en','New bank deposit uploaded for subscription payment by {{restaurant_name}} with the amount of {{amount}}.','New bank deposit uploaded for subscription payment by {{restaurant_name}} with the amount of {{amount}}.'),(4564,53,'email','en','Your Merchant Registration is Approved','<p>Dear {{restaurant_name}},<br><br>We are delighted to inform you that your merchant registration has been approved. You can now access your merchant panel and start managing your restaurant\'s orders, menu, and other settings.<br><br><br>You can log in to your merchant panel using the following link:<br>{{merchant_panel_url}}<br><br>If you have any questions or need assistance, please feel free to contact our support team.<br><br>Thank you for choosing our services. We look forward to a successful partnership!<br><br>Best regards,<br>{{site_title}}<br><br></p>'),(4574,53,'push','en','Your registration is approved! You can now access the merchant panel to start managing your restaurant.','Your registration is approved! You can now access the merchant panel to start managing your restaurant.\n'),(4579,52,'email','en','Your Subscription is Approved and Account is Now Active','<p>Dear {{restaurant_name}},<br><br>We are pleased to inform you that your bank deposit has been verified, and your subscription is now approved. Your account is active and you can now proceed to the merchant panel to start using our services.<br><br>Subscription Details:<br>- **Subscription Plan:** {{plan_name}}<br>- **Start Date:** {{start_date}}<br>- **End Date:** {{end_date}}<br><br>You can log in to your merchant panel here: {{merchant_panel_url}}<br><br>If you have any questions or need assistance, please do not hesitate to contact our support team.<br><br>Best regards,<br>{{site_title}}<br><br></p>'),(4589,52,'push','en','Subscription Approved','Your subscription is approved and your account is active. You can now proceed to the merchant panel.'),(4654,54,'email','en','Subscription Payment Received and Processed','<p>Dear {{restaurant_name}},<br><br>We have successfully received and processed your subscription payment. Thank you for your prompt payment!<br><br>**Subscription Details:**<br>- **Subscription Plan:** {{plan_name}}<br>- **Amount Paid:** {{amount}}<br>- **Payment Date:** {{payment_date}}<br>- **Subscription Period:** {{start_date}} to {{end_date}}<br><br>Your account is now active, and you can continue to use all the features associated with your subscription plan.<br><br>You can log in to your merchant panel here: {{merchant_panel_url}}<br><br>If you have any questions or need further assistance, please do not hesitate to contact our support team.<br><br>Thank you for choosing our services!<br><br>Best regards,<br>{{site_title}}<br><br></p>'),(4664,54,'push','en','Payment Processed','Your subscription payment has been successfully processed. Your account is now active. Thank you for choosing {{site_title}}!'),(4699,55,'email','en','Important: Subscription Payment Failed','<p>Dear {{merchant_name}},<br><br>We regret to inform you that your recent attempt to process the payment for your subscription has failed.<br><br>**Subscription Details:**<br>- **Subscription Plan:** {{plan_name}}<br>- **Amount Due:** {{amount}}<br>- **Payment Date:** {{attempted_payment_date}}<br><br>Unfortunately, we were unable to process.<br><br>To ensure uninterrupted access to your subscription, please update your payment information and try again. You can update your payment details by logging in to your merchant panel using the following link:<br><br>{{merchant_panel_url}}<br><br>If the issue persists or if you need any assistance, please do not hesitate to contact our support team. We are here to help you resolve the issue as quickly as possible.<br><br>Thank you for your attention to this matter.<br><br>Best regards, &nbsp;<br>{{site_title}}<br><br></p>'),(4709,55,'push','en','Subscription Payment Failed','Payment failed for your subscription plan. Please update your payment details in your merchant panel to avoid service disruption. Need help? Contact our support team.'),(4729,56,'email','en','Your Subscription Has Been Canceled','Dear {{restaurant_name}},<br><br>We’re writing to inform you that your subscription to the {{plan_name}} plan has been canceled effective {{cancellation_date}}.<br><br>**What This Means:**<br>- You will no longer have access to the features included in the {{plan_name}} plan.<br>- Your account will be placed in an inactive status, and certain services may be limited or unavailable.<br><br>**Next Steps:**<br>If this cancellation was not intended or if you wish to reactivate your subscription, please contact our support team or log in to your merchant panel to choose a new subscription plan.<br><br>We value your partnership with us and hope to continue supporting your business in the future. If there’s anything we can do to assist you or if you have any questions, please don’t hesitate to reach out to us.<br><br>Thank you for being a valued customer.<br><br>Best regards, &nbsp;<br>{{site_title}}<br>{{contact_number}}'),(4730,57,'email','da','Ny besked fra kontaktformular','<h3>Ny kontaktbesked</h3><p><strong>Navn:</strong> {{fullname}}</p><p><strong>Email:</strong> {{email_address}}</p><p><strong>Besked:</strong></p><p>{{message}}</p>'),(4731,19,'email','da','You have new customer signup','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p>You have new customer signup.</p>	\r\n	\r\n	<h5>Customer Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">First name</td>\r\n	  <td>{{first_name}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Last name</td>\r\n	  <td>{{last_name}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Email address</td>\r\n	  <td>{{email_address}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Phone number</td>\r\n	  <td>{{contact_phone}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4732,19,'sms','da','','You have new customer signup'),(4733,19,'push','da','You have new customer signup','{{first_name}} {{last_name}} has signup'),(4734,20,'email','da','',''),(4735,20,'sms','da','',''),(4736,20,'push','da','Order #{{order_id}} from {{customer_name}} is cancelled','Order #{{order_id}} from {{customer_name}} is cancelled'),(4737,21,'email','da','Order is on the way!','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order is on the way!<br></h2>\r\n    <p style=\"padding:10px;\">For everyone safety is our priority so remember to wash your hands before and after receiving your order<br></p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(4738,21,'sms','da','',''),(4739,21,'push','da','Your order #{{order_id}} is on its way!','Your order #{{order_id}} is on its way!'),(4740,22,'email','da','',''),(4741,22,'sms','da','',''),(4742,22,'push','da','Your order #{{order_id}} successfully delivered','Your order #{{order_id}} successfully delivered'),(4743,23,'email','da','',''),(4744,23,'sms','da','',''),(4745,23,'push','da','unfortunately your order#{{order_id}} has failed to deliver','unfortunately your order#{{order_id}} has failed to deliver'),(4746,40,'push','da','{{driver_firstname}} has arrived restaurant {{restaurant_name}}','{{driver_firstname}} has arrived restaurant {{restaurant_name}}'),(4747,41,'push','da','{{driver_firstname}} pickup the order#{{order_id}}','{{driver_firstname}} pickup the order#{{order_id}}'),(4748,42,'push','da','{{driver_name}} has missed the assign order#{{order_id}}','{{driver_name}} has missed the assign order#{{order_id}}'),(4749,44,'email','da','You have new assigned order#{{order_info.order_id}} from {{merchant.restaurant_name}}','You have new assigned order#{{order_info.order_id}} from {{merchant.restaurant_name}}'),(4750,44,'push','da','You have new assigned order#{{order_id}} from {{restaurant_name}}','You have new assigned order#{{order_id}} from {{restaurant_name}}'),(4751,45,'push','da','Order#{{order_id}} is ready for pickup at {{restaurant_name}}','Order#{{order_id}} is ready for pickup at {{restaurant_name}}'),(4752,46,'push','da','Order#{{order_id}} is assigned to {{driver_name}}','Order#{{order_id}} is assigned to {{driver_name}}'),(4753,47,'push','da','Your delivery rider is it is way to you location','Your delivery rider is it is way to you location'),(4754,48,'push','da','Your delivery rider has arrived to your location','Your delivery rider has arrived to your location'),(4755,2,'sms','da','','Your order #{{order_info.order_id}}, has a balance of {{additional_data.balance}}.\r\npay here {{additional_data.payment_link}}'),(4756,2,'push','da','Your order #{{order_id}}, has a balance of {{balance}}. pay here {{payment_link}}','Your order #{{order_id}}, has a balance of {{balance}}.\r\npay here {{payment_link}}'),(4757,3,'sms','da','',''),(4758,3,'push','da','Your refund has been process for order #{{order_info.order_id}} ','Your refund has been process for order #{{order_info.order_id}} '),(4759,4,'sms','da','','Your Order Being Processed #{{order_info.order_id}}'),(4760,4,'push','da','','Order Being Processed #{{order_info.order_id}}'),(4761,5,'sms','da','','New order #{{order_info.order_id}} from {{order_info.customer_name}}'),(4762,5,'push','da','You have new order from {{customer_name}}','Order#{{order_id}} from {{customer_name}}'),(4763,6,'sms','da','',''),(4764,6,'push','da','Your order #{{order_id}} has been rejected','Your order #{{order_id}} has been rejected'),(4765,7,'sms','da','',''),(4766,7,'push','da','Your order #{{order_id}} is cancelled','Your order #{{order_id}} is cancelled'),(4767,8,'sms','da','',''),(4768,8,'push','da','Order #{{order_id}} will be late, {{delayed_order_mins}}min(s)','Your order@{{order_id}} will be late, in {{delayed_order_mins}}min(s)'),(4769,9,'sms','da','',''),(4770,9,'push','da','Your order #{{order_id}} is accepted by {{restaurant_name}}','Your order #{{order_id}} is accepted by {{restaurant_name}}'),(4771,2,'email','da','Invoice for your order #{{order_info.order_id}}','{% include \'header.html\' %}\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;padding-bottom:10px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Invoice #{{additional_data.invoice_number}}</h2>    \r\n   </td>   \r\n </tr>\r\n <tr>\r\n   <td style=\"padding-bottom:10px;background:#ffffff;\" valign=\"middle\">\r\n     <table width=\"80%\" align=\"center\">\r\n      <tbody><tr> \r\n       <td>\r\n        <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis ullamcorper sapien ullamcorper nibh aliquam, non rutrum orci vulputate. Donec congue ac tortor eu dignissim. Cras a libero lobortis tellus elementum consequat eget vitae turpis. Mauris non lorem odio. Integer in lacus bibendum, accumsan risus nec, pretium felis. Aliquam auctor nec eros a mattis. Praesent eu ligula vitae ex rhoncus aliquam. Pellentesque ut mattis lectus. Maecenas ultrices a lorem et interdum. Mauris lacinia nec libero id tincidunt. Nunc accumsan quis enim vitae pellentesque.</p>        \r\n       </td>\r\n      </tr>\r\n     </tbody></table>\r\n   </td>   \r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"padding:30px;\" align=\"center\">\r\n     <a href=\"{{additional_data.payment_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Pay Now\r\n     </a>\r\n  </td>\r\n </tr>\r\n \r\n  <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n     <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n\r\n{% include \'footer.html\' %}\r\n'),(4772,3,'email','da','Refund for your #{{order_info.order_id}}','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n   \r\n\r\n    <p style=\"padding-bottom:15px\">Hi {{order_info.customer_name}},</p>\r\n	<p style=\"line-height:20px;\">\r\n	Good News! We’ve processed your full refund of {{additional_data.refund_amount}} for your item(s) from order #{{order_info.order_id}}.\r\n	</p>\r\n	\r\n	<p style=\"line-height:20px;\">Reversal may take 1 to 2 billing cycles or 5 to 15 banking days for local credit cards, and up to 45 banking days for international credit and debit cards, depending on your bank\'s processing time.</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(4773,10,'sms','da','',''),(4774,10,'push','da','Your order #{{order_id}} is on its way!','Your order #{{order_id}} is on its way!'),(4775,11,'sms','da','',''),(4776,11,'push','da','',''),(4777,12,'sms','da','',''),(4778,12,'push','da','',''),(4779,13,'sms','da','','Your OTP is {{code}}.'),(4780,13,'push','da','',''),(4781,14,'sms','da','',''),(4782,14,'push','da','',''),(4783,15,'email','da','Review your order {{order_info.order_id}}',''),(4784,15,'sms','da','',''),(4785,15,'push','da','',''),(4786,16,'sms','da','',''),(4787,16,'push','da','New payout new request','New payout new request from {{restaurant_name}}'),(4788,17,'sms','da','',''),(4789,17,'push','da','',''),(4790,18,'sms','da','',''),(4791,18,'push','da','Your payout request is cancelled','{{restaurant_name}} Your payout request with the amount of {{transaction_amount}} is cancel'),(4792,24,'sms','da','',''),(4793,24,'push','da','',''),(4794,25,'sms','da','',''),(4795,25,'push','da','Welcome to {{site_name}}. Confirm your account!','Welcome to {{site_name}}. Confirm your account!'),(4796,26,'sms','da','',''),(4797,26,'push','da','You have new merchant signup','You have new merchant signup'),(4798,27,'sms','da','',''),(4799,27,'push','da','Your membership has expired','Your membership has expired'),(4800,28,'sms','da','',''),(4801,28,'push','da','Your membership will expired on {{expiration_date}}','Your membership will expired on {{expiration_date}}'),(4802,29,'sms','da','',''),(4803,29,'push','da','',''),(4804,34,'push','da','You have new Invoice #{{invoice_number}}','You have new Invoice #{{invoice_number}}'),(4805,35,'email','da','New bank deposit with invoice #{{invoice_number}}','<p>New bank deposit with invoice #{{invoice_number}}<br></p>'),(4806,35,'push','da','New bank deposit with invoice #{{invoice_number}}','New bank deposit with invoice #{{invoice_number}}'),(4807,36,'push','da','Online Reservation Confirmation Notification, Reservation ID#{{reservation_id}}','Online Reservation Confirmation Notification, Reservation ID#{{reservation_id}}'),(4808,37,'push','da','Reservation Confirmed at {{restaurant_name}}, Reservation ID#{{reservation_id}}','Reservation Confirmed at {{restaurant_name}}, Reservation ID#{{reservation_id}}'),(4809,38,'push','da','Reservation {{status}} at {{restaurant_name}}','Reservation {{status}} at {{restaurant_name}}'),(4810,39,'push','da','New contact form from {{email_address}}','New contact form from {{email_address}}'),(4811,43,'email','da','Your order#{{order_id}} OTP is {{code}}','Your order#{{order_id}} OTP is {{code}}'),(4812,43,'push','da','Your order#{{order_id}} OTP is {{code}}','Your order#{{order_id}} OTP is {{code}}'),(4813,49,'email','da','Test runactions','<p>this is a test runactions<br></p>'),(4814,4,'email','da','Order Summary','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Thanks for your order</h2>\r\n    <p style=\"padding:10px;\">You\'ll receive an email when your food are ready to deliver. If you have any questions, Call us {{merchant.contact_phone}}.</p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(4815,5,'email','da','New order #{{order_info.order_id}} from {{order_info.customer_name}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr> \r\n <tr>\r\n  <td style=\"background:#ffffff;\">\r\n  \r\n    {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td>\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4816,6,'email','da','Your order #{{order_id}} has been rejected','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Your order #{{order_id}} has been rejected</h2>\r\n    <p style=\"padding:10px;\">unfortunately merchant cannot fulfill your order, merchant says <b>{{order_info.rejetion_reason}}</b></p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4817,49,'push','da','Test runactions','Test runactions'),(4818,50,'email','da','Complete your signup for {{site.site_name}}','<p>Dear {{first_name}},</p><p>Thank you for signing up for {{site.site_name}}!</p><p>To ensure the security of your account and complete the signup process, \nplease verify your email address by clicking the link below:</p>\n\n<p><a href=\"{{verification_link}}\" target=\"_blank\">\nClick here\n</a></p>\n\n<p>If the above link doesn\'t work, copy and paste the following URL into your browser\'s address bar:</p><p>{{verification_link}}</p><p>Thank you for choosing {{site.site_name}}. If you have any questions or need assistance, feel free to contact our support team at {{site.email}} / {{site.contact}} .</p><p>Best regards,</p><p>{{site_name}} Team</p><p></p><p></p><p></p><p></p><p></p><p></p><p></p>'),(4819,51,'email','da','New Bank Deposit Uploaded for Subscription Payment','Dear Admin,<br><br>We have received a new bank deposit upload for a subscription payment.<br><br>Details:<br>- **Merchant Name:** {{restaurant_name}}<br>- **Merchant Email:** {{restaurant_email}}<br>- **Subscription Plan:** {{plan_name}}<br>- **Amount:** {{amount}}<br>- **Reference Number:** {{reference_number}}<br>- **Upload Date:** {{uploaded_date}}<br><br>Please verify the payment and update the subscription status accordingly.<br><br>Best regards,<br>{{site_title}}<br><br>'),(4820,51,'push','da','New bank deposit uploaded for subscription payment by {{restaurant_name}} with the amount of {{amount}}.','New bank deposit uploaded for subscription payment by {{restaurant_name}} with the amount of {{amount}}.'),(4821,52,'email','da','Your Subscription is Approved and Account is Now Active','<p>Dear {{restaurant_name}},<br><br>We are pleased to inform you that your bank deposit has been verified, and your subscription is now approved. Your account is active and you can now proceed to the merchant panel to start using our services.<br><br>Subscription Details:<br>- **Subscription Plan:** {{plan_name}}<br>- **Start Date:** {{start_date}}<br>- **End Date:** {{end_date}}<br><br>You can log in to your merchant panel here: {{merchant_panel_url}}<br><br>If you have any questions or need assistance, please do not hesitate to contact our support team.<br><br>Best regards,<br>{{site_title}}<br><br></p>'),(4822,7,'email','da','Your order #{{order_info.order_id}} is cancelled','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Your order #{{order_id}} has been cancelled</h2>\r\n    <p style=\"padding:10px;\">unfortunately merchant cannot fulfill your order, merchant says <b>{{order_info.rejetion_reason}}</b></p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4823,8,'email','da','Sorry for the delay in delivery!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p>Hi {{order_info.customer_name}},</p>\r\n	\r\n	<p>We are sorry the item(s) from your order {{order_info.order_id}} is taking longer than expected. \r\n	We are working closely with the restaurant team to deliver this order as soon as possible.​</p>\r\n	\r\n	<p><b>{{order_info.delayed_order}}</b></p>\r\n	\r\n	<p>\r\n	Please make sure to turn on your App notification to get the latest updates on your order. \r\n	</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n  \r\n     {% include \'summary.html\' %}\r\n   \r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4824,9,'email','da','Your order #{{order_info.order_id}} is accepted by {{merchant.restaurant_name}}','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order Accepted<br></h2>\r\n    <p>Your order is confirmed and is now being prepared by the store. We\'ll let you know once our rider is on his way to you.</p><p>Conveniently track your order by clicking track order.<br></p>\r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(4825,52,'push','da','Subscription Approved','Your subscription is approved and your account is active. You can now proceed to the merchant panel.'),(4826,53,'email','da','Your Merchant Registration is Approved','<p>Dear {{restaurant_name}},<br><br>We are delighted to inform you that your merchant registration has been approved. You can now access your merchant panel and start managing your restaurant\'s orders, menu, and other settings.<br><br><br>You can log in to your merchant panel using the following link:<br>{{merchant_panel_url}}<br><br>If you have any questions or need assistance, please feel free to contact our support team.<br><br>Thank you for choosing our services. We look forward to a successful partnership!<br><br>Best regards,<br>{{site_title}}<br><br></p>'),(4827,53,'push','da','Your registration is approved! You can now access the merchant panel to start managing your restaurant.','Your registration is approved! You can now access the merchant panel to start managing your restaurant.\n'),(4828,54,'push','da','Payment Processed','Your subscription payment has been successfully processed. Your account is now active. Thank you for choosing {{site_title}}!'),(4829,55,'push','da','Subscription Payment Failed','Payment failed for your subscription plan. Please update your payment details in your merchant panel to avoid service disruption. Need help? Contact our support team.'),(4830,10,'email','da','Order is on the way!','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"center\">\r\n    <h2 style=\"margin:0;\">Order is on the way!<br></h2>\r\n    <p style=\"padding:10px;\">For everyone safety is our priority so remember to wash your hands before and after receiving your order<br></p>\r\n    <br>    \r\n    <a href=\"{{order.order_info.tracking_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Track Order\r\n     </a>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(4831,11,'email','da','Partial refund for your #{{order_info.order_id}}','{% include \'header.html\' %}\r\n\r\n\r\n\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:15%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n   \r\n\r\n    <p style=\"padding-bottom:15px\">Hi {{order_info.customer_name}},</p>\r\n	<p style=\"line-height:20px;\">\r\n	Good News! We’ve processed your partial refund of {{additional_data.refund_amount}} for your item(s) from order #{{order_info.order_id}}.\r\n	</p>\r\n	\r\n	<p style=\"line-height:20px;\">Reversal may take 1 to 2 billing cycles or 5 to 15 banking days for local credit cards, and up to 45 banking days for international credit and debit cards, depending on your bank\'s processing time.</p>\r\n    \r\n   </td>\r\n </tr>\r\n \r\n <tr>\r\n  <td style=\"background:#fef9ef;\">\r\n      {% include \'summary.html\' %}\r\n  </td>\r\n </tr>\r\n \r\n <tr>\r\n   <td style=\"background:#ffffff;\">\r\n     {% include \'items.html\' %}\r\n   </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n    <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	    {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n\r\n{% include \'footer.html\' %}'),(4832,12,'email','da','{{site.title}} - Registration','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	<p>You\'ve successfully signed up for a {{site.title}} account! You can use this next time you order through {{site.title}},</p>		\r\n	<p>and you’ll get the latest promos, news, and updates.</p>\r\n	\r\n	<div style=\"padding-top:20px;\">\r\n	<p>Thank You!</p>\r\n	<p>{{site.title}} Team</p>\r\n	</div>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4833,13,'email','da','OTP!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p>Hi <br></p>\r\n	\r\n	<p>Your OTP is {{code}}.</p>		\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4834,14,'email','da','Password change instructions','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">It looks like you have forgotten your password. We can help you to create a new password.</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{reset_password_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Reset Password\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{reset_password_link}}\">{{reset_password_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4835,16,'email','da','Payout new request','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p style=\"margin-bottom:10px;\">New payout request by merchant details below.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_method}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4836,17,'email','da','Payout paid','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your Payout with transaction #{{transaction_id}} has been paid.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_methood}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4837,18,'email','da','Payout cancelled','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your Payout with transaction #{{transaction_id}} has been cancelled.</p>	\r\n	\r\n	<h5>Payout Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Amount</td>\r\n	  <td>{{transaction_amount}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Payment Method</td>\r\n	  <td>{{payment_methood}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Transaction</td>\r\n	  <td>{{transaction_description}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Date requested</td>\r\n	  <td>{{transaction_date}}</td>\r\n	 </tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4838,24,'email','da','Your registration is complete!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{restaurant_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus quis nunc ut metus vulputate imperdiet at eget ipsum. Duis pharetra eros nec purus auctor, ut dapibus nunc convallis. Phasellus pellentesque lorem eros, et molestie velit pulvinar eget. Praesent orci orci, pulvinar ac nisi sit amet, cursus imperdiet mauris. Sed pharetra, nibh non maximus blandit, ex felis sagittis turpis, et porttitor dui nibh a eros. Donec imperdiet non ex molestie consequat. Duis posuere tortor eget nibh imperdiet sollicitudin. Curabitur porta placerat ex, vitae consequat turpis semper in. Integer non nulla justo. Phasellus posuere faucibus erat, ac ornare odio suscipit sed. Cras et erat dui. </p>		\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4839,25,'email','da','Welcome to {{site.site_name}}. Confirm your account!','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{restaurant_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Welcome</p>\r\n	 <p>Before you get full access to all features of your restaurant in {{site.site_name}}, please confirm your email address</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{confirm_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Confirm email\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{confirm_link}}\">{{confirm_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4840,26,'email','da','You have new merchant signup','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi <br></p>\r\n	\r\n	<p style=\"margin-bottom: 15px;\">You have new merchant signup.</p>	\r\n	\r\n	<h5>Customer Details</h5>\r\n	<table width=\"60%\">\r\n	 <tbody><tr>\r\n	  <td width=\"25%\">Restaurant name<br></td>\r\n	  <td>{{restaurant_name}}</td>\r\n	 </tr>\r\n	 <tr>\r\n	  <td>Address<br></td>\r\n	  <td>{{address}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Membership Program<br></td>\r\n	  <td>{{plan_title}}</td>\r\n	 </tr>	\r\n	  <tr>\r\n	  <td>Phone number</td>\r\n	  <td>{{contact_phone}}</td>\r\n	 </tr><tr><td>Email address<br></td><td>{{contact_email}}<br></td></tr>	 \r\n	</tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4841,27,'email','da','Your membership has expired','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your&nbsp; membership has expired.</p>	\r\n	\r\n	\r\n	\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4842,28,'email','da','Your membership will expired on {{expiration_date}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n    <p style=\"margin-bottom:15px;\">Hi {{restaurant_name}}<br></p>\r\n	\r\n	<p>Your&nbsp; membership will expired on {{expiration_date}}.</p>	\r\n	\r\n	\r\n	\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4843,29,'email','da','Forgot password','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">Hi {{first_name}} {{last_name}},</p>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">It looks like you have forgotten your password. We can help you to create a new password.</p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{reset_password_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Reset Password\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{reset_password_link}}\">{{reset_password_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4844,34,'email','da','You have new Invoice #{{invoice_number}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr> \r\n <tr>\r\n  <td style=\"background:#ffffff;\">\r\n  \r\n   <p>Your invoice is now ready, you can view your invoice by going to backoffice</p>\r\n   \r\n   \r\n  </td>\r\n </tr>\r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4845,36,'email','da','Online Reservation Confirmation Notification','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	<p style=\"margin-bottom:10px;\">You have received an online reservation.</p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">RESERVATION DETAILS</h5>\r\n	 \r\n	 <table>\r\n	 <tbody><tr><td>Restaurant Name</td><td>: {{restaurant_name}}</td></tr>\r\n	 <tr><td>Guest Name</td><td>: {{guest_fullname}}</td></tr>\r\n	 <tr><td>Guest Phone</td><td>: {{contact_phone}}</td></tr>\r\n	 <tr><td>Guest Email</td><td>: {{email_address}}</td></tr>\r\n	 <tr><td>Reservation ID</td><td>: {{reservation_id}}</td></tr>\r\n	 <tr><td>Date of booking</td><td>: {{date_created}}</td></tr>\r\n	 <tr><td>Time of arrival</td><td>: {{reservation_datetime}}</td></tr>\r\n	 <tr><td>Party of</td><td>: {{guest_number}}</td></tr>\r\n	 <tr><td>Special Request</td><td>: {{special_request}}</td></tr>\r\n	 </tbody></table>\r\n	 \r\n	\r\n	<br><br>\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{manage_reservation_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Manage reservation\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{manage_reservation_link}}\">{{manage_reservation_link}}</a></p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4846,37,'email','da','Reservation Confirmed at {{restaurant_name}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Your reservation at {{restaurant_name}} is confirmed!</p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">RESERVATION DETAILS</h5>\r\n	 \r\n	 <table>	 \r\n	 <tbody><tr><td>Name of guest:</td><td>: {{guest_fullname}}</td></tr>\r\n	 <tr><td>Number of guests</td><td>: {{guest_number}}</td></tr>\r\n	 <tr><td>Time of arrival</td><td>: {{reservation_datetime}}</td></tr>	 \r\n	 </tbody></table>\r\n	 \r\n	 <p style=\"margin-bottom:10px;\">Your Reservation ID is <b>{{reservation_id}}</b></p>\r\n	\r\n	<div style=\"margin:auto;text-align:center;padding-top:10px; padding-bottom:10px;\">\r\n	 <a href=\"{{manage_reservation_link}}\" target=\"_blank\" style=\"display:block;margin:auto;max-width:200px;padding:10px;background:#3ecf8e;color:#fff;\r\n     text-decoration:none;font-size:18px;font-weight:bold;\">\r\n     Manage reservation\r\n     </a>\r\n	</div>\r\n	 \r\n	<p style=\"text-align:center;\">or click this link:</p>\r\n	<p style=\"text-align:center;\"><a href=\"{{manage_reservation_link}}\">{{manage_reservation_link}}</a></p>\r\n	\r\n	<br><br>\r\n	<h5 style=\"margin-bottom:10px;\">Special Requests</h5>\r\n	<p style=\"margin-bottom:10px;\">{{special_request}}</p>\r\n	<br><br>\r\n	\r\n	<h5 style=\"margin-bottom:10px;\">RESTAURANT DETAILS</h5>\r\n	<p style=\"margin-bottom:10px;\">{{restaurant_name}}</p>\r\n	<p style=\"margin-bottom:10px;\">{{restaurant_contact_phone}} / {{restaurant_contact_email}}</p>\r\n	<br><br>\r\n	\r\n	<h5 style=\"margin-bottom:10px;\">Notes from the restaurant</h5>\r\n	<p style=\"margin-bottom:10px;\">{{notes_from_restaurant}}</p>\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4847,38,'email','da','Reservation {{status}} at {{restaurant_name}}','{% include \'header.html\' %}\r\n<table style=\"width:100%;\">\r\n <tbody><tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\r\n  </td>\r\n </tr>\r\n <tr>\r\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\r\n    \r\n   <table width=\"50%\" align=\"center\">\r\n   <tbody><tr>\r\n    <td>\r\n	\r\n	 <p style=\"margin-bottom:10px;\">Your reservation at {{restaurant_name}} is {{status}}!</p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">RESERVATION DETAILS</h5>\r\n	 \r\n	 <table>	 \r\n	 <tbody><tr><td>Name of guest:</td><td>: {{guest_fullname}}</td></tr>\r\n	 <tr><td>Number of guests</td><td>: {{guest_number}}</td></tr>\r\n	 <tr><td>Time of arrival</td><td>: {{reservation_datetime}}</td></tr>	 \r\n	 </tbody></table>\r\n	 \r\n	 <p style=\"margin-bottom:10px;\">Your Reservation ID is <b>{{reservation_id}}</b></p>\r\n	\r\n	 <h5 style=\"margin-bottom:10px;\">Special Requests</h5>\r\n	 <p style=\"margin-bottom:10px;\">{{special_request}}</p>\r\n	\r\n	\r\n	</td>\r\n   </tr>\r\n   </tbody></table>\r\n	\r\n   </td>\r\n </tr>\r\n \r\n \r\n \r\n  \r\n <tr>\r\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\r\n    \r\n   <table style=\"width:100%; table-layout: fixed;\">\r\n	  <tbody><tr>\r\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\r\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\r\n	  </tr>\r\n	  <tr>\r\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\r\n	     <p>{{site.address}}</p>\r\n         <p>{{site.contact}}</p>\r\n         <p>{{site.email}}</p>\r\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\r\n	    \r\n	      {% include \'social_link.html\' %}\r\n	     \r\n	     <table>\r\n	      <tbody><tr>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\r\n	      <td>●</td>\r\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\r\n	      </tr>\r\n	     </tbody></table>\r\n	    \r\n	    </td>\r\n	  </tr>\r\n	</tbody></table>\r\n  \r\n  </td>\r\n </tr>\r\n \r\n</tbody></table>\r\n{% include \'footer.html\' %}\r\n'),(4848,39,'email','da','New contact form from {{email_address}}','{% include \'header.html\' %}\n<table style=\"width:100%;\">\n <tbody><tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    <img style=\"max-width:20%;max-height:50px;\" src=\"{{logo}}\">\n  </td>\n </tr>\n <tr>\n   <td style=\"padding:30px;background:#ffffff;\" valign=\"middle\" align=\"left\">\n    \n   <table width=\"50%\" align=\"center\">\n   <tbody><tr>\n    <td>\n		 \n	\n	 <h5 style=\"margin-bottom:10px;\">CONTACT DETAILS</h5>\n	 \n	 <table>	 \n	 <tbody><tr><td>Email address:</td><td>: {{email_address}}</td></tr>	 \n	 <tr><td>Full name</td><td>: {{fullname}}</td></tr>	 \n	 <tr><td>Contact number</td><td>: {{contact_number}}</td></tr>	 \n	 <tr><td>Country</td><td>: {{country_name}}</td></tr>	 \n	 <tr><td>Message</td><td>: {{message}}</td></tr>	 \n	 </tbody></table>\n	 \n	 \n	\n	</td>\n   </tr>\n   </tbody></table>\n	\n   </td>\n </tr>\n \n \n \n  \n <tr>\n  <td style=\"background:#fef9ef;padding:20px 30px;\">\n    \n   <table style=\"width:100%; table-layout: fixed;\">\n	  <tbody><tr>\n	    <th colspan=\"3\" style=\"text-align: left;\"><h5>Contact Us</h5></th>\n	    <th colspan=\"7\" style=\"text-align: left;\"><h5>For  promos, news, and updates, follow us on:</h5></th>\n	  </tr>\n	  <tr>\n	    <td colspan=\"3\" style=\"text-align: left; padding:0 3px;\" valign=\"top\">\n	     <p>{{site.address}}</p>\n         <p>{{site.contact}}</p>\n         <p>{{site.email}}</p>\n	    </td><td colspan=\"7\" style=\"padding:0 3px;\" valign=\"top\">\n	    \n	      {% include \'social_link.html\' %}\n	     \n	     <table>\n	      <tbody><tr>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Terms and Conditions</a></td>\n	      <td>●</td>\n	      <td style=\"padding:0;\"><a href=\"#\" style=\"color:#000;font-size:16px;\">Privacy Policy</a></td>\n	      </tr>\n	     </tbody></table>\n	    \n	    </td>\n	  </tr>\n	</tbody></table>\n  \n  </td>\n </tr>\n \n</tbody></table>\n{% include \'footer.html\' %}\n'),(4849,54,'email','da','Subscription Payment Received and Processed','<p>Dear {{restaurant_name}},<br><br>We have successfully received and processed your subscription payment. Thank you for your prompt payment!<br><br>**Subscription Details:**<br>- **Subscription Plan:** {{plan_name}}<br>- **Amount Paid:** {{amount}}<br>- **Payment Date:** {{payment_date}}<br>- **Subscription Period:** {{start_date}} to {{end_date}}<br><br>Your account is now active, and you can continue to use all the features associated with your subscription plan.<br><br>You can log in to your merchant panel here: {{merchant_panel_url}}<br><br>If you have any questions or need further assistance, please do not hesitate to contact our support team.<br><br>Thank you for choosing our services!<br><br>Best regards,<br>{{site_title}}<br><br></p>'),(4850,55,'email','da','Important: Subscription Payment Failed','<p>Dear {{merchant_name}},<br><br>We regret to inform you that your recent attempt to process the payment for your subscription has failed.<br><br>**Subscription Details:**<br>- **Subscription Plan:** {{plan_name}}<br>- **Amount Due:** {{amount}}<br>- **Payment Date:** {{attempted_payment_date}}<br><br>Unfortunately, we were unable to process.<br><br>To ensure uninterrupted access to your subscription, please update your payment information and try again. You can update your payment details by logging in to your merchant panel using the following link:<br><br>{{merchant_panel_url}}<br><br>If the issue persists or if you need any assistance, please do not hesitate to contact our support team. We are here to help you resolve the issue as quickly as possible.<br><br>Thank you for your attention to this matter.<br><br>Best regards, &nbsp;<br>{{site_title}}<br><br></p>'),(4851,56,'email','da','Your Subscription Has Been Canceled','Dear {{restaurant_name}},<br><br>We’re writing to inform you that your subscription to the {{plan_name}} plan has been canceled effective {{cancellation_date}}.<br><br>**What This Means:**<br>- You will no longer have access to the features included in the {{plan_name}} plan.<br>- Your account will be placed in an inactive status, and certain services may be limited or unavailable.<br><br>**Next Steps:**<br>If this cancellation was not intended or if you wish to reactivate your subscription, please contact our support team or log in to your merchant panel to choose a new subscription plan.<br><br>We value your partnership with us and hope to continue supporting your business in the future. If there’s anything we can do to assist you or if you have any questions, please don’t hesitate to reach out to us.<br><br>Thank you for being a valued customer.<br><br>Best regards, &nbsp;<br>{{site_title}}<br>{{contact_number}}');
/*!40000 ALTER TABLE `st_templates_translation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_user_custom_field_values`
--

DROP TABLE IF EXISTS `st_user_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_user_custom_field_values` (
  `value_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `field_id` int(11) NOT NULL,
  `value` text DEFAULT NULL,
  `entity` varchar(50) NOT NULL DEFAULT 'client',
  PRIMARY KEY (`value_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_user_custom_field_values`
--

LOCK TABLES `st_user_custom_field_values` WRITE;
/*!40000 ALTER TABLE `st_user_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_user_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `st_view_client_address_locations`
--

DROP TABLE IF EXISTS `st_view_client_address_locations`;
/*!50001 DROP VIEW IF EXISTS `st_view_client_address_locations`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_client_address_locations` AS SELECT
 1 AS `address_id`,
  1 AS `client_id`,
  1 AS `address_uuid`,
  1 AS `street`,
  1 AS `street_number`,
  1 AS `state_name`,
  1 AS `city_name`,
  1 AS `area_name`,
  1 AS `country_name`,
  1 AS `country_code`,
  1 AS `location_name`,
  1 AS `delivery_options`,
  1 AS `delivery_instructions`,
  1 AS `address_label`,
  1 AS `country_id`,
  1 AS `state_id`,
  1 AS `city_id`,
  1 AS `area_id`,
  1 AS `zip_code`,
  1 AS `house_number`,
  1 AS `latitude`,
  1 AS `longitude`,
  1 AS `date_created`,
  1 AS `date_modified` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_cuisine`
--

DROP TABLE IF EXISTS `st_view_cuisine`;
/*!50001 DROP VIEW IF EXISTS `st_view_cuisine`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_cuisine` AS SELECT
 1 AS `cuisine_id`,
  1 AS `language`,
  1 AS `cuisine_name`,
  1 AS `status`,
  1 AS `featured_image`,
  1 AS `slug`,
  1 AS `color_hex`,
  1 AS `font_color_hex` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_cuisine_merchant`
--

DROP TABLE IF EXISTS `st_view_cuisine_merchant`;
/*!50001 DROP VIEW IF EXISTS `st_view_cuisine_merchant`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_cuisine_merchant` AS SELECT
 1 AS `merchant_id`,
  1 AS `language`,
  1 AS `cuisines` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_customer_points`
--

DROP TABLE IF EXISTS `st_view_customer_points`;
/*!50001 DROP VIEW IF EXISTS `st_view_customer_points`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_customer_points` AS SELECT
 1 AS `card_id`,
  1 AS `account_id`,
  1 AS `first_name`,
  1 AS `last_name`,
  1 AS `total_earning` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_item_lang_size`
--

DROP TABLE IF EXISTS `st_view_item_lang_size`;
/*!50001 DROP VIEW IF EXISTS `st_view_item_lang_size`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_item_lang_size` AS SELECT
 1 AS `merchant_id`,
  1 AS `item_id`,
  1 AS `item_size_id`,
  1 AS `size_uuid`,
  1 AS `price`,
  1 AS `size_id`,
  1 AS `original_size_name`,
  1 AS `size_name`,
  1 AS `language`,
  1 AS `available`,
  1 AS `discount`,
  1 AS `discount_type`,
  1 AS `discount_start`,
  1 AS `discount_end` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_item_relationship_subcategory`
--

DROP TABLE IF EXISTS `st_view_item_relationship_subcategory`;
/*!50001 DROP VIEW IF EXISTS `st_view_item_relationship_subcategory`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_item_relationship_subcategory` AS SELECT
 1 AS `id`,
  1 AS `merchant_id`,
  1 AS `item_id`,
  1 AS `item_token`,
  1 AS `item_size_id`,
  1 AS `size_uuid`,
  1 AS `subcat_id`,
  1 AS `multi_option`,
  1 AS `multi_option_min`,
  1 AS `multi_option_value`,
  1 AS `require_addon`,
  1 AS `pre_selected`,
  1 AS `sequence` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_item_relationship_subcategory_item`
--

DROP TABLE IF EXISTS `st_view_item_relationship_subcategory_item`;
/*!50001 DROP VIEW IF EXISTS `st_view_item_relationship_subcategory_item`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_item_relationship_subcategory_item` AS SELECT
 1 AS `merchant_id`,
  1 AS `item_id`,
  1 AS `item_token`,
  1 AS `item_size_id`,
  1 AS `subcat_id`,
  1 AS `sub_item_id` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_item_size`
--

DROP TABLE IF EXISTS `st_view_item_size`;
/*!50001 DROP VIEW IF EXISTS `st_view_item_size`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_item_size` AS SELECT
 1 AS `item_size_id`,
  1 AS `merchant_id`,
  1 AS `item_token`,
  1 AS `item_id`,
  1 AS `size_id`,
  1 AS `size_name`,
  1 AS `price`,
  1 AS `sku`,
  1 AS `sequence` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_location_rates`
--

DROP TABLE IF EXISTS `st_view_location_rates`;
/*!50001 DROP VIEW IF EXISTS `st_view_location_rates`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_location_rates` AS SELECT
 1 AS `rate_id`,
  1 AS `merchant_id`,
  1 AS `country_name`,
  1 AS `state_name`,
  1 AS `city_name`,
  1 AS `area_name`,
  1 AS `delivery_fee`,
  1 AS `minimum_amount`,
  1 AS `maximum_amount`,
  1 AS `free_above_subtotal`,
  1 AS `date_created` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_location_time_estimate`
--

DROP TABLE IF EXISTS `st_view_location_time_estimate`;
/*!50001 DROP VIEW IF EXISTS `st_view_location_time_estimate`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_location_time_estimate` AS SELECT
 1 AS `id`,
  1 AS `service_type`,
  1 AS `merchant_id`,
  1 AS `country_name`,
  1 AS `state_name`,
  1 AS `city_name`,
  1 AS `area_name`,
  1 AS `estimated_time_min`,
  1 AS `estimated_time_max`,
  1 AS `created_at` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_merchant_location`
--

DROP TABLE IF EXISTS `st_view_merchant_location`;
/*!50001 DROP VIEW IF EXISTS `st_view_merchant_location`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_merchant_location` AS SELECT
 1 AS `id`,
  1 AS `merchant_id`,
  1 AS `country_name`,
  1 AS `state_name`,
  1 AS `city_name`,
  1 AS `area_name`,
  1 AS `created_at` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_offers`
--

DROP TABLE IF EXISTS `st_view_offers`;
/*!50001 DROP VIEW IF EXISTS `st_view_offers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_offers` AS SELECT
 1 AS `discount_type`,
  1 AS `id`,
  1 AS `merchant_id`,
  1 AS `discount_name`,
  1 AS `offer_amount`,
  1 AS `valid_from`,
  1 AS `valid_to`,
  1 AS `offer_type`,
  1 AS `min_order`,
  1 AS `status`,
  1 AS `visible`,
  1 AS `monday`,
  1 AS `tuesday`,
  1 AS `wednesday`,
  1 AS `thursday`,
  1 AS `friday`,
  1 AS `saturday`,
  1 AS `sunday` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_order_status`
--

DROP TABLE IF EXISTS `st_view_order_status`;
/*!50001 DROP VIEW IF EXISTS `st_view_order_status`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_order_status` AS SELECT
 1 AS `stats_id`,
  1 AS `group_name`,
  1 AS `description`,
  1 AS `language`,
  1 AS `description_trans` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_ratings`
--

DROP TABLE IF EXISTS `st_view_ratings`;
/*!50001 DROP VIEW IF EXISTS `st_view_ratings`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_ratings` AS SELECT
 1 AS `merchant_id`,
  1 AS `review_count`,
  1 AS `ratings` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_services_fee`
--

DROP TABLE IF EXISTS `st_view_services_fee`;
/*!50001 DROP VIEW IF EXISTS `st_view_services_fee`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_services_fee` AS SELECT
 1 AS `merchant_id`,
  1 AS `restaurant_name`,
  1 AS `merchant_type`,
  1 AS `service_code`,
  1 AS `service_fee` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_status_management`
--

DROP TABLE IF EXISTS `st_view_status_management`;
/*!50001 DROP VIEW IF EXISTS `st_view_status_management`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_status_management` AS SELECT
 1 AS `status_id`,
  1 AS `group_name`,
  1 AS `status`,
  1 AS `title`,
  1 AS `color_hex`,
  1 AS `font_color_hex`,
  1 AS `language`,
  1 AS `title_trans` */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `st_view_user_union`
--

DROP TABLE IF EXISTS `st_view_user_union`;
/*!50001 DROP VIEW IF EXISTS `st_view_user_union`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8mb4;
/*!50001 CREATE VIEW `st_view_user_union` AS SELECT
 1 AS `uuid`,
  1 AS `user_type`,
  1 AS `first_name`,
  1 AS `last_name`,
  1 AS `avatar`,
  1 AS `path` */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `st_voucher_new`
--

DROP TABLE IF EXISTS `st_voucher_new`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_voucher_new` (
  `voucher_id` int(14) NOT NULL AUTO_INCREMENT,
  `voucher_owner` varchar(255) NOT NULL DEFAULT 'merchant',
  `merchant_id` int(14) NOT NULL DEFAULT 0,
  `joining_merchant` text DEFAULT NULL,
  `voucher_name` varchar(255) NOT NULL DEFAULT '',
  `voucher_type` varchar(255) NOT NULL DEFAULT '',
  `amount` float(14,4) NOT NULL DEFAULT 0.0000,
  `expiration` date DEFAULT NULL,
  `used_once` int(1) NOT NULL DEFAULT 1,
  `min_order` decimal(14,2) NOT NULL DEFAULT 0.00,
  `max_order` decimal(10,2) DEFAULT 0.00,
  `max_discount_cap` decimal(10,2) NOT NULL DEFAULT 0.00,
  `monday` int(1) NOT NULL DEFAULT 0,
  `tuesday` int(1) NOT NULL DEFAULT 0,
  `wednesday` int(1) NOT NULL DEFAULT 0,
  `thursday` int(1) NOT NULL DEFAULT 0,
  `friday` int(1) NOT NULL DEFAULT 0,
  `saturday` int(1) NOT NULL DEFAULT 0,
  `sunday` int(1) NOT NULL DEFAULT 0,
  `max_number_use` int(14) NOT NULL DEFAULT 0,
  `selected_customer` text DEFAULT NULL,
  `applicable_to` text DEFAULT NULL,
  `status` varchar(100) NOT NULL DEFAULT '',
  `visible` smallint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_modified` datetime NOT NULL DEFAULT current_timestamp(),
  `ip_address` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`voucher_id`),
  KEY `voucher_name` (`voucher_name`),
  KEY `status` (`status`),
  KEY `voucher_owner` (`voucher_owner`),
  KEY `merchant_id` (`merchant_id`),
  KEY `voucher_type` (`voucher_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_voucher_new`
--

LOCK TABLES `st_voucher_new` WRITE;
/*!40000 ALTER TABLE `st_voucher_new` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_voucher_new` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_wallet_cards`
--

DROP TABLE IF EXISTS `st_wallet_cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_wallet_cards` (
  `card_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `card_uuid` varchar(50) NOT NULL DEFAULT '',
  `account_type` varchar(50) NOT NULL DEFAULT '',
  `account_id` bigint(20) NOT NULL DEFAULT 0,
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`card_id`),
  KEY `card_uuid` (`card_uuid`),
  KEY `account_type` (`account_type`),
  KEY `account_id` (`account_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_wallet_cards`
--

LOCK TABLES `st_wallet_cards` WRITE;
/*!40000 ALTER TABLE `st_wallet_cards` DISABLE KEYS */;
INSERT INTO `st_wallet_cards` VALUES (1,'8722736e-7eb4-11ec-aa6d-9c5c8e164c2c','admin',0,'2022-01-26 14:30:36',NULL,'127.0.0.1'),(2,'a5b1b2bb-3057-11f1-86f1-4ab0e3a8062d','digital_wallet',2,'2026-04-04 20:54:02',NULL,'192.168.97.1');
/*!40000 ALTER TABLE `st_wallet_cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_wallet_transactions`
--

DROP TABLE IF EXISTS `st_wallet_transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_wallet_transactions` (
  `transaction_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_uuid` varchar(100) NOT NULL DEFAULT '',
  `card_id` bigint(20) NOT NULL DEFAULT 0,
  `transaction_date` timestamp NULL DEFAULT NULL,
  `transaction_description` varchar(255) NOT NULL DEFAULT '',
  `transaction_description_parameters` varchar(255) NOT NULL DEFAULT '',
  `transaction_type` varchar(50) NOT NULL DEFAULT '',
  `transaction_amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `running_balance` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `status` varchar(100) NOT NULL DEFAULT 'paid',
  `orig_transaction_amount` decimal(10,4) NOT NULL DEFAULT 0.0000,
  `merchant_base_currency` varchar(10) NOT NULL DEFAULT '',
  `admin_base_currency` varchar(10) NOT NULL DEFAULT '',
  `exchange_rate_merchant_to_admin` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `exchange_rate_admin_to_merchant` decimal(10,4) NOT NULL DEFAULT 1.0000,
  `reference_id` varchar(255) NOT NULL DEFAULT '',
  `reference_id1` varchar(255) NOT NULL DEFAULT '',
  `reference_id2` varchar(100) NOT NULL DEFAULT '',
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  `expiry_date` date DEFAULT NULL,
  `expired_flag` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`transaction_id`),
  KEY `card_id` (`card_id`),
  KEY `transaction_uuid` (`transaction_uuid`),
  KEY `transaction_type` (`transaction_type`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_wallet_transactions`
--

LOCK TABLES `st_wallet_transactions` WRITE;
/*!40000 ALTER TABLE `st_wallet_transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_wallet_transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_wallet_transactions_meta`
--

DROP TABLE IF EXISTS `st_wallet_transactions_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_wallet_transactions_meta` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `transaction_id` bigint(20) NOT NULL DEFAULT 0,
  `meta_name` varchar(100) NOT NULL DEFAULT '',
  `meta_value` text DEFAULT NULL,
  `meta_value2` varchar(255) DEFAULT NULL,
  `meta_value3` varchar(255) DEFAULT NULL,
  `date_created` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `transaction_id` (`transaction_id`),
  KEY `meta_name` (`meta_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_wallet_transactions_meta`
--

LOCK TABLES `st_wallet_transactions_meta` WRITE;
/*!40000 ALTER TABLE `st_wallet_transactions_meta` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_wallet_transactions_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `st_zones`
--

DROP TABLE IF EXISTS `st_zones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8mb4 */;
CREATE TABLE `st_zones` (
  `zone_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `zone_uuid` varchar(50) NOT NULL DEFAULT '',
  `merchant_id` bigint(20) DEFAULT 0,
  `zone_name` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  `date_created` timestamp NULL DEFAULT NULL,
  `date_modified` timestamp NULL DEFAULT NULL,
  `ip_address` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`zone_id`),
  KEY `zone_name` (`zone_name`),
  KEY `zone_uuid` (`zone_uuid`),
  KEY `merchant_id` (`merchant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `st_zones`
--

LOCK TABLES `st_zones` WRITE;
/*!40000 ALTER TABLE `st_zones` DISABLE KEYS */;
/*!40000 ALTER TABLE `st_zones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `st_view_client_address_locations`
--

/*!50001 DROP VIEW IF EXISTS `st_view_client_address_locations`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_client_address_locations` AS select `a`.`address_id` AS `address_id`,`a`.`client_id` AS `client_id`,`a`.`address_uuid` AS `address_uuid`,`a`.`formatted_address` AS `street`,`a`.`address1` AS `street_number`,`state`.`name` AS `state_name`,`city`.`name` AS `city_name`,`area`.`name` AS `area_name`,`b`.`country_name` AS `country_name`,`b`.`shortcode` AS `country_code`,`a`.`location_name` AS `location_name`,`a`.`delivery_options` AS `delivery_options`,`a`.`delivery_instructions` AS `delivery_instructions`,`a`.`address_label` AS `address_label`,`b`.`country_id` AS `country_id`,`state`.`state_id` AS `state_id`,`city`.`city_id` AS `city_id`,`area`.`area_id` AS `area_id`,`a`.`company` AS `zip_code`,`a`.`custom_field2` AS `house_number`,`a`.`latitude` AS `latitude`,`a`.`longitude` AS `longitude`,`a`.`date_created` AS `date_created`,`a`.`date_modified` AS `date_modified` from ((((`st_client_address` `a` left join `st_location_countries` `b` on(`a`.`country_code` = `b`.`country_id`)) left join `st_location_states` `state` on(`a`.`postal_code` = `state`.`state_id`)) left join `st_location_cities` `city` on(`a`.`address2` = `city`.`city_id`)) left join `st_location_area` `area` on(`a`.`custom_field1` = `area`.`area_id`)) where `a`.`address_type` = 'location-based' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_cuisine`
--

/*!50001 DROP VIEW IF EXISTS `st_view_cuisine`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_cuisine` AS select `a`.`cuisine_id` AS `cuisine_id`,ifnull(`b`.`language`,'en') AS `language`,if(`b`.`cuisine_name` is null or `b`.`cuisine_name` = '',`a`.`cuisine_name`,`b`.`cuisine_name`) AS `cuisine_name`,`a`.`status` AS `status`,`a`.`featured_image` AS `featured_image`,`a`.`slug` AS `slug`,`a`.`color_hex` AS `color_hex`,`a`.`font_color_hex` AS `font_color_hex` from (`st_cuisine` `a` left join `st_cuisine_translation` `b` on(`a`.`cuisine_id` = `b`.`cuisine_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_cuisine_merchant`
--

/*!50001 DROP VIEW IF EXISTS `st_view_cuisine_merchant`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_cuisine_merchant` AS select `cm`.`merchant_id` AS `merchant_id`,`vc`.`language` AS `language`,group_concat(`vc`.`cuisine_name` order by `vc`.`cuisine_name` ASC separator ',') AS `cuisines` from (`st_cuisine_merchant` `cm` join `st_view_cuisine` `vc` on(`cm`.`cuisine_id` = `vc`.`cuisine_id`)) group by `cm`.`merchant_id`,`vc`.`language` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_customer_points`
--

/*!50001 DROP VIEW IF EXISTS `st_view_customer_points`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_customer_points` AS select `a`.`card_id` AS `card_id`,`b`.`account_id` AS `account_id`,`c`.`first_name` AS `first_name`,`c`.`last_name` AS `last_name`,sum(case when `a`.`transaction_type` in ('points_earned','points_signup','points_firstorder','points_review','points_booking') then `a`.`transaction_amount` end) AS `total_earning` from ((`st_wallet_transactions` `a` left join `st_wallet_cards` `b` on(`a`.`card_id` = `b`.`card_id`)) left join `st_client` `c` on(`b`.`account_id` = `c`.`client_id`)) where `b`.`account_type` = 'customer_points' group by `a`.`card_id`,`b`.`account_id`,`c`.`first_name`,`c`.`last_name` order by `a`.`card_id` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_item_lang_size`
--

/*!50001 DROP VIEW IF EXISTS `st_view_item_lang_size`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_item_lang_size` AS select `a`.`merchant_id` AS `merchant_id`,`a`.`item_id` AS `item_id`,`a`.`item_size_id` AS `item_size_id`,`a`.`item_token` AS `size_uuid`,`a`.`price` AS `price`,`a`.`size_id` AS `size_id`,ifnull(`c`.`size_name`,'') AS `original_size_name`,ifnull(`b`.`size_name`,'') AS `size_name`,ifnull(`b`.`language`,'') AS `language`,`a`.`available` AS `available`,`a`.`discount` AS `discount`,`a`.`discount_type` AS `discount_type`,`a`.`discount_start` AS `discount_start`,`a`.`discount_end` AS `discount_end` from ((`st_item_relationship_size` `a` left join `st_size_translation` `b` on(`a`.`size_id` = `b`.`size_id`)) left join `st_size` `c` on(`a`.`size_id` = `c`.`size_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_item_relationship_subcategory`
--

/*!50001 DROP VIEW IF EXISTS `st_view_item_relationship_subcategory`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_item_relationship_subcategory` AS select `a`.`id` AS `id`,`a`.`merchant_id` AS `merchant_id`,`a`.`item_id` AS `item_id`,ifnull(`c`.`item_token`,'') AS `item_token`,`a`.`item_size_id` AS `item_size_id`,ifnull(`b`.`item_token`,'') AS `size_uuid`,`a`.`subcat_id` AS `subcat_id`,`a`.`multi_option` AS `multi_option`,`a`.`multi_option_min` AS `multi_option_min`,`a`.`multi_option_value` AS `multi_option_value`,`a`.`require_addon` AS `require_addon`,`a`.`pre_selected` AS `pre_selected`,`a`.`sequence` AS `sequence` from ((`st_item_relationship_subcategory` `a` left join `st_item_relationship_size` `b` on(`a`.`item_size_id` = `b`.`item_size_id`)) left join `st_item` `c` on(`a`.`item_id` = `c`.`item_id`)) where `a`.`item_size_id` > 0 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_item_relationship_subcategory_item`
--

/*!50001 DROP VIEW IF EXISTS `st_view_item_relationship_subcategory_item`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_item_relationship_subcategory_item` AS select `b`.`merchant_id` AS `merchant_id`,`b`.`item_id` AS `item_id`,(select `st_item`.`item_token` from `st_item` where `st_item`.`item_id` = `b`.`item_id` limit 0,1) AS `item_token`,`b`.`item_size_id` AS `item_size_id`,`a`.`subcat_id` AS `subcat_id`,`a`.`sub_item_id` AS `sub_item_id` from (`st_subcategory_item_relationships` `a` left join `st_item_relationship_subcategory` `b` on(`a`.`subcat_id` = `b`.`subcat_id`)) where `a`.`merchant_id` is not null */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_item_size`
--

/*!50001 DROP VIEW IF EXISTS `st_view_item_size`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_item_size` AS select `a`.`item_size_id` AS `item_size_id`,`a`.`merchant_id` AS `merchant_id`,`a`.`item_token` AS `item_token`,`a`.`item_id` AS `item_id`,`a`.`size_id` AS `size_id`,ifnull(`b`.`size_name`,'') AS `size_name`,`a`.`price` AS `price`,`a`.`sku` AS `sku`,`a`.`sequence` AS `sequence` from (`st_item_relationship_size` `a` left join `st_size` `b` on(`a`.`size_id` = `b`.`size_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_location_rates`
--

/*!50001 DROP VIEW IF EXISTS `st_view_location_rates`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_location_rates` AS select `a`.`rate_id` AS `rate_id`,`a`.`merchant_id` AS `merchant_id`,`b`.`country_name` AS `country_name`,`state`.`name` AS `state_name`,`city`.`name` AS `city_name`,`area`.`name` AS `area_name`,`a`.`fee` AS `delivery_fee`,`a`.`minimum_order` AS `minimum_amount`,`a`.`maximum_amount` AS `maximum_amount`,`a`.`free_above_subtotal` AS `free_above_subtotal`,`a`.`date_created` AS `date_created` from ((((`st_location_rate` `a` left join `st_location_countries` `b` on(`a`.`country_id` = `b`.`country_id`)) left join `st_location_states` `state` on(`a`.`state_id` = `state`.`state_id`)) left join `st_location_cities` `city` on(`a`.`city_id` = `city`.`city_id`)) left join `st_location_area` `area` on(`a`.`area_id` = `area`.`area_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_location_time_estimate`
--

/*!50001 DROP VIEW IF EXISTS `st_view_location_time_estimate`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_location_time_estimate` AS select `a`.`id` AS `id`,`a`.`service_type` AS `service_type`,`a`.`merchant_id` AS `merchant_id`,`b`.`country_name` AS `country_name`,`state`.`name` AS `state_name`,`city`.`name` AS `city_name`,`area`.`name` AS `area_name`,`a`.`estimated_time_min` AS `estimated_time_min`,`a`.`estimated_time_max` AS `estimated_time_max`,`a`.`created_at` AS `created_at` from ((((`st_location_time_estimate` `a` left join `st_location_countries` `b` on(`a`.`country_id` = `b`.`country_id`)) left join `st_location_states` `state` on(`a`.`state_id` = `state`.`state_id`)) left join `st_location_cities` `city` on(`a`.`city_id` = `city`.`city_id`)) left join `st_location_area` `area` on(`a`.`area_id` = `area`.`area_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_merchant_location`
--

/*!50001 DROP VIEW IF EXISTS `st_view_merchant_location`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_merchant_location` AS select `a`.`id` AS `id`,`a`.`merchant_id` AS `merchant_id`,`b`.`country_name` AS `country_name`,`state`.`name` AS `state_name`,`city`.`name` AS `city_name`,`area`.`name` AS `area_name`,`a`.`created_at` AS `created_at` from ((((`st_merchant_location` `a` left join `st_location_countries` `b` on(`a`.`country_id` = `b`.`country_id`)) left join `st_location_states` `state` on(`a`.`state_id` = `state`.`state_id`)) left join `st_location_cities` `city` on(`a`.`city_id` = `city`.`city_id`)) left join `st_location_area` `area` on(`a`.`area_id` = `area`.`area_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_offers`
--

/*!50001 DROP VIEW IF EXISTS `st_view_offers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_offers` AS select 'voucher' AS `discount_type`,`st_voucher_new`.`voucher_id` AS `id`,`st_voucher_new`.`merchant_id` AS `merchant_id`,`st_voucher_new`.`voucher_name` AS `discount_name`,`st_voucher_new`.`amount` AS `offer_amount`,date_format(current_timestamp(),'%Y-%m-%d') AS `valid_from`,`st_voucher_new`.`expiration` AS `valid_to`,`st_voucher_new`.`voucher_type` AS `offer_type`,`st_voucher_new`.`min_order` AS `min_order`,`st_voucher_new`.`status` AS `status`,`st_voucher_new`.`visible` AS `visible`,`st_voucher_new`.`monday` AS `monday`,`st_voucher_new`.`tuesday` AS `tuesday`,`st_voucher_new`.`wednesday` AS `wednesday`,`st_voucher_new`.`thursday` AS `thursday`,`st_voucher_new`.`friday` AS `friday`,`st_voucher_new`.`saturday` AS `saturday`,`st_voucher_new`.`sunday` AS `sunday` from `st_voucher_new` union all select 'offers' AS `discount_type`,`st_offers`.`offers_id` AS `id`,`st_offers`.`merchant_id` AS `merchant_id`,`st_offers`.`offer_percentage` AS `discount_name`,`st_offers`.`offer_price` AS `offer_amount`,`st_offers`.`valid_from` AS `valid_from`,`st_offers`.`valid_to` AS `valid_to`,`st_offers`.`offer_type` AS `offer_type`,`st_offers`.`offer_price` AS `min_order`,`st_offers`.`status` AS `status`,`st_offers`.`visible` AS `visible`,1 AS `monday`,1 AS `tuesday`,1 AS `wednesday`,1 AS `thursday`,1 AS `friday`,1 AS `saturday`,1 AS `sunday` from `st_offers` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_order_status`
--

/*!50001 DROP VIEW IF EXISTS `st_view_order_status`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_order_status` AS select `a`.`stats_id` AS `stats_id`,`a`.`group_name` AS `group_name`,`a`.`description` AS `description`,ifnull(`b`.`language`,'en') AS `language`,if(`b`.`description` is null or `b`.`description` = '',`a`.`description`,`b`.`description`) AS `description_trans` from (`st_order_status` `a` left join `st_order_status_translation` `b` on(`a`.`stats_id` = `b`.`stats_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_ratings`
--

/*!50001 DROP VIEW IF EXISTS `st_view_ratings`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_ratings` AS select `st_review`.`merchant_id` AS `merchant_id`,count(0) AS `review_count`,sum(`st_review`.`rating`) / count(0) AS `ratings` from `st_review` where `st_review`.`status` in ('publish','published') group by `st_review`.`merchant_id` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_services_fee`
--

/*!50001 DROP VIEW IF EXISTS `st_view_services_fee`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_services_fee` AS select `a`.`merchant_id` AS `merchant_id`,`b`.`restaurant_name` AS `restaurant_name`,`b`.`merchant_type` AS `merchant_type`,`a`.`meta_value` AS `service_code`,ifnull(if(`b`.`merchant_type` = 2,(select `st_services_fee`.`service_fee` from `st_services_fee` where `st_services_fee`.`merchant_id` = 0 and `st_services_fee`.`service_id` in (select `st_services`.`service_id` from `st_services` where `st_services`.`service_code` = `a`.`meta_value`)),(select `st_services_fee`.`service_fee` from `st_services_fee` where `st_services_fee`.`merchant_id` = `a`.`merchant_id` and `st_services_fee`.`service_id` in (select `st_services`.`service_id` from `st_services` where `st_services`.`service_code` = `a`.`meta_value`))),0) AS `service_fee` from (`st_merchant_meta` `a` left join `st_merchant` `b` on(`a`.`merchant_id` = `b`.`merchant_id`)) where `a`.`meta_name` = 'services' */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_status_management`
--

/*!50001 DROP VIEW IF EXISTS `st_view_status_management`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_status_management` AS select `a`.`status_id` AS `status_id`,`a`.`group_name` AS `group_name`,`a`.`status` AS `status`,`a`.`title` AS `title`,`a`.`color_hex` AS `color_hex`,`a`.`font_color_hex` AS `font_color_hex`,ifnull(`b`.`language`,'en') AS `language`,if(`b`.`title` is null or `b`.`title` = '',`a`.`title`,`b`.`title`) AS `title_trans` from (`st_status_management` `a` left join `st_status_management_translation` `b` on(`a`.`status_id` = `b`.`status_id`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `st_view_user_union`
--

/*!50001 DROP VIEW IF EXISTS `st_view_user_union`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb3 */;
/*!50001 SET character_set_results     = utf8mb3 */;
/*!50001 SET collation_connection      = utf8mb3_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`karenderia`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `st_view_user_union` AS select `st_client`.`client_uuid` AS `uuid`,'customer' AS `user_type`,`st_client`.`first_name` AS `first_name`,`st_client`.`last_name` AS `last_name`,`st_client`.`avatar` AS `avatar`,`st_client`.`path` AS `path` from `st_client` union all select `st_merchant_user`.`user_uuid` AS `uuid`,'merchant' AS `user_type`,`st_merchant_user`.`first_name` AS `first_name`,`st_merchant_user`.`last_name` AS `last_name`,`st_merchant_user`.`profile_photo` AS `avatar`,`st_merchant_user`.`path` AS `path` from `st_merchant_user` union all select `st_admin_user`.`admin_id_token` AS `uuid`,'admin' AS `user_type`,`st_admin_user`.`first_name` AS `first_name`,`st_admin_user`.`last_name` AS `last_name`,`st_admin_user`.`profile_photo` AS `avatar`,`st_admin_user`.`path` AS `path` from `st_admin_user` union all select `st_merchant`.`merchant_uuid` AS `uuid`,'merchant' AS `user_type`,`st_merchant`.`restaurant_name` AS `first_name`,`st_merchant`.`contact_name` AS `last_name`,`st_merchant`.`logo` AS `avatar`,`st_merchant`.`path` AS `path` from `st_merchant` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-05 11:57:39

-- ========== PROD MENU OVERRIDE (10% markup) ==========
-- Karenderia menu seed (markup: 1.1x)
-- Generated: 2026-04-06 07:25:50
-- Source: full-menu.json (scraped + enriched from yammi.dk)

SET NAMES utf8mb4;
SET CHARACTER SET utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ========== CATEGORIES ==========
DELETE FROM st_category WHERE merchant_id = 1;
INSERT INTO st_category (cat_id, merchant_id, category_name, category_description, available, photo, path, icon, icon_path, status, sequence, available_at_specific, date_created, date_modified, ip_address) VALUES
(1,1,'Beef Burger','Udforsk vores udvalg af lækre bøf burgere',1,'','','','','publish',1,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(2,1,'Chicken & Fish Burgers','Udforsk vores udvalg af de lækreste kyllinge- og fiskeburgere',1,'','','','','publish',2,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(3,1,'Vegi\'s & Salad','Dette er til alle vores kunder, der foretrækker et kødfrit måltid',1,'','','','','publish',3,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(4,1,'Wraps & Tacos','Udforsk vores udvalg af appetitvækkende wraps og tacos',1,'','','','','publish',4,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(5,1,'Family & Social Bucket','Udforsk de mange friturestegte kyllingespande, vi tilbyder!',1,'','','','','publish',5,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(6,1,'Chicken N Chicken','Udforsk vores udvalg af det sprødeste friturestegt kylling: Vinger, ben og underlår!',1,'','','','','publish',6,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(7,1,'Kids Meal','Appetitvækkende menuer + gave til de helt små',1,'','','','','publish',7,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(8,1,'Sides & Dips','Forskellige lækre tilbehør og dyppelse',1,'','','','','publish',8,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(9,1,'Coffee & Cake','Vi tilbyder et bredt udvalg af kaffe og kager',1,'','','','','publish',9,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(10,1,'Ice Cream & Shakes','Velsmagende is og shakes',1,'','','','','publish',10,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(11,1,'Cold Drinks','Køl tørsten ned med en af ​​de mange kolde drinks, vi har',1,'','','','','publish',11,0,'2026-04-06 07:25:50','2026-04-06 07:25:50','');

-- ========== ITEMS ==========
DELETE FROM st_item WHERE merchant_id = 1;
DELETE FROM st_item_relationship_category WHERE merchant_id = 1;
DELETE FROM st_item_relationship_size WHERE merchant_id = 1;
INSERT INTO st_item (item_id, merchant_id, item_name, slug, item_description, item_short_description, status, photo, path, sequence, is_featured, featured_priority, non_taxable, available, points_earned, points_enabled, packaging_fee, packaging_incremental, item_token, sku, track_stock, supplier_id, meta_title, meta_description, meta_keywords, meta_image, meta_image_path, cooking_ref_required, ingredients_preselected, available_at_specific, not_for_sale, color_hex, visible, preparation_time, extra_preparation_time, unavailable_until, is_promo_free_item, date_created, date_modified, ip_address) VALUES
(1,1,'O\'ring Cheese Burger','beef-burger-o-ring-cheese-burger','Oksebøf, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle','','publish','o-ring-cheese-burger.png','upload/item/1/',1,'',NULL,1,1,0,1,0.0000,0,'12f26200-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(2,1,'O\'ring Cheese Burger Meal','beef-burger-o-ring-cheese-burger-meal','Oksebøf 56g, cheddar, iceberg, onion rings, algérienne, brioche burgerbolle\nPomfritter og sodavand','','publish','o-ring-cheese-burger-meal.png','upload/item/2/',2,'',NULL,1,1,0,1,0.0000,0,'12f262dc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(3,1,'Double Cheese Menu','beef-burger-double-cheese-menu','Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing','','publish','double-cheese-menu.png','upload/item/3/',3,'',NULL,1,1,0,1,0.0000,0,'12f26336-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(4,1,'Triple Cheese Burger Menu','beef-burger-triple-cheese-burger-menu','Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing','','publish','triple-cheese-burger-menu.png','upload/item/4/',4,'',NULL,1,1,0,1,0.0000,0,'12f2637c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(5,1,'Grand Beef Menu','beef-burger-grand-beef-menu','Stor oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle\nPomfritter og sodavand','','publish','grand-beef-menu.png','upload/item/5/',5,'',NULL,1,1,0,1,0.0000,0,'12f263d6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(6,1,'Mega Beef Parmesan Menu','beef-burger-mega-beef-parmesan-menu','Stor oksebøf, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle\nPomfritter og sodavand','','publish','mega-beef-parmesan-menu.png','upload/item/6/',6,'',NULL,1,1,0,1,0.0000,0,'12f26426-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(7,1,'Cheese Burger','beef-burger-cheese-burger','Oksebøf, cheddar, iceberg, mayonnaise, ketchup','','publish','cheese-burger.png','upload/item/7/',7,'',NULL,1,1,0,1,0.0000,0,'12f26480-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(8,1,'Double Cheese','beef-burger-double-cheese','Dobbelt oksebøf, dobbelt cheddar, tomat, iceberg, biggy dressing','','publish','double-cheese.png','upload/item/8/',8,'',NULL,1,1,0,1,0.0000,0,'12f264d0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(9,1,'Triple Cheese Burger','beef-burger-triple-cheese-burger','Tredobbelt oksebøf, tredobbelt cheddar, tomat, iceberg, biggy dressing','','publish','triple-cheese-burger.png','upload/item/9/',9,'',NULL,1,1,0,1,0.0000,0,'12f2652a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(10,1,'Grand Beef','beef-burger-grand-beef','Stor oksebøf 113g, dobbelt cheddar, tomat, iceberg, biggy dressing, brioche burgerbolle','','publish','grand-beef.png','upload/item/10/',10,'',NULL,1,1,0,1,0.0000,0,'12f26570-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(11,1,'Mega Beef Parmesan','beef-burger-mega-beef-parmesan','Stor oksebøf 113g, parmesan ost, tomat, iceberg, jalapeños, biggy dressing, brioche burgerbolle','','publish','mega-beef-parmesan.png','upload/item/11/',11,'',NULL,1,1,0,1,0.0000,0,'12f265ac-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(12,1,'Chuckle Chickpea','chicken-fish-burgers-chuckle-chickpea','Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle','','publish','chuckle-chickpea.png','upload/item/12/',1,'',NULL,1,1,0,1,0.0000,0,'12f265f2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(13,1,'Chuckle Chickpea Menu','chicken-fish-burgers-chuckle-chickpea-menu','Vegetarbøf, tomat, iceberg, tahini dressing, brioche burgerbolle','','publish','chuckle-chickpea-menu.png','upload/item/13/',2,'',NULL,1,1,0,1,0.0000,0,'12f26642-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(14,1,'Chicken Royal Menu','chicken-fish-burgers-chicken-royal-menu','Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise','','publish','chicken-royal-menu.png','upload/item/14/',3,'',NULL,1,1,0,1,0.0000,0,'12f2667e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(15,1,'Chicken Special Menu','chicken-fish-burgers-chicken-special-menu','Frisk paneret kyllingefilet, iceberg, mayonnaise','','publish','chicken-special-menu.png','upload/item/15/',4,'',NULL,1,1,0,1,0.0000,0,'12f266ce-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(16,1,'Naan Grill Tikka Menu','chicken-fish-burgers-naan-grill-tikka-menu','Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing','','publish','naan-grill-tikka-menu.png','upload/item/16/',5,'',NULL,1,1,0,1,0.0000,0,'12f2670a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(17,1,'Big Chicken Menu','chicken-fish-burgers-big-chicken-menu','Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle\nPomfritter og sodavand','','publish','big-chicken-menu.png','upload/item/17/',6,'',NULL,1,1,0,1,0.0000,0,'12f26746-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(18,1,'Tikka Burger Menu','chicken-fish-burgers-tikka-burger-menu','Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise','','publish','tikka-burger-menu.png','upload/item/18/',7,'',NULL,1,1,0,1,0.0000,0,'12f267a0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(19,1,'Texas Crispy Chicken Menu','chicken-fish-burgers-texas-crispy-chicken-menu','Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise','','publish','texas-crispy-chicken-menu.png','upload/item/19/',8,'',NULL,1,1,0,1,0.0000,0,'12f267dc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(20,1,'Tikka Baguette Menu','chicken-fish-burgers-tikka-baguette-menu','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','tikka-baguette-menu.png','upload/item/20/',9,'',NULL,1,1,0,1,0.0000,0,'12f2680e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(21,1,'Chicken Baguette Menu','chicken-fish-burgers-chicken-baguette-menu','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-baguette-menu.png','upload/item/21/',10,'',NULL,1,1,0,1,0.0000,0,'12f26868-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(22,1,'Mega Chicken Parmesan Menu','chicken-fish-burgers-mega-chicken-parmesan-menu','Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle\nPomfritter og s...','','publish','mega-chicken-parmesan-menu.png','upload/item/22/',11,'',NULL,1,1,0,1,0.0000,0,'12f268ae-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(23,1,'Fishy De Fish Menu','chicken-fish-burgers-fishy-de-fish-menu','Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing','','publish','fishy-de-fish-menu.png','upload/item/23/',12,'',NULL,1,1,0,1,0.0000,0,'12f268ea-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(24,1,'Chicken Royal','chicken-fish-burgers-chicken-royal','Frisk paneret kyllingefilet, cheddar, hash brown kartoffel, iceberg, mayonnaise','','publish','chicken-royal.png','upload/item/24/',13,'',NULL,1,1,0,1,0.0000,0,'12f26944-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(25,1,'Chicken Special','chicken-fish-burgers-chicken-special','Frisk paneret kyllingefilet, iceberg, mayonnaise','','publish','chicken-special.png','upload/item/25/',14,'',NULL,1,1,0,1,0.0000,0,'12f26976-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(26,1,'Naan Grill Tikka','chicken-fish-burgers-naan-grill-tikka','Grillet tandoorimarineret kyllingefilet, grillet løg, tomat, iceberg, algérienne dressing','','publish','naan-grill-tikka.png','upload/item/26/',15,'',NULL,1,1,0,1,0.0000,0,'12f269d0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(27,1,'Big Chicken','chicken-fish-burgers-big-chicken','Grillet citronmarineret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise, sesam bolle','','publish','big-chicken.png','upload/item/27/',16,'',NULL,1,1,0,1,0.0000,0,'12f26a0c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(28,1,'Tikka Burger','chicken-fish-burgers-tikka-burger','Grillet tandoorimarineret kyllingefilet, cheddar, iceberg, mayonnaise','','publish','tikka-burger.png','upload/item/28/',17,'',NULL,1,1,0,1,0.0000,0,'12f26a48-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(29,1,'Texas Crispy Chicken','chicken-fish-burgers-texas-crispy-chicken','Frisk paneret kyllingefilet, dobbelt cheddar, tomat, iceberg, mayonnaise','','publish','texas-crispy-chicken.png','upload/item/29/',18,'',NULL,1,1,0,1,0.0000,0,'12f26a7a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(30,1,'Tikka Baguette','chicken-fish-burgers-tikka-baguette','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','tikka-baguette.png','upload/item/30/',19,'',NULL,1,1,0,1,0.0000,0,'12f26ad4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(31,1,'Chicken Baguette','chicken-fish-burgers-chicken-baguette','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-baguette.png','upload/item/31/',20,'',NULL,1,1,0,1,0.0000,0,'12f26b10-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(32,1,'Mega Chicken Parmesan','chicken-fish-burgers-mega-chicken-parmesan','Grillet citronmarineret kyllingefilet, parmesan ost, tomat, iceberg, jalapeños, mayonnaise, brioche burgerbolle','','publish','mega-chicken-parmesan.png','upload/item/32/',21,'',NULL,1,1,0,1,0.0000,0,'12f26b4c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(33,1,'Fishy De Fish','chicken-fish-burgers-fishy-de-fish','Frisk paneret fiskefilet, cheddar, iceberg, fiske dressing','','publish','fishy-de-fish.png','upload/item/33/',22,'',NULL,1,1,0,1,0.0000,0,'12f26b7e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(34,1,'Veggie Salad','vegi-s-salad-veggie-salad','Iceberg, tomat, fetaost, gulerod, jalapeños, rødløg, rucola, grøn oliven','','publish','veggie-salad.png','upload/item/34/',1,'',NULL,1,1,0,1,0.0000,0,'12f26bba-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(35,1,'Chicken Strips Salad','vegi-s-salad-chicken-strips-salad','Frisk paneret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven','','publish','chicken-strips-salad.png','upload/item/35/',2,'',NULL,1,1,0,1,0.0000,0,'12f26bf6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(36,1,'Chicken Tikka Salad','vegi-s-salad-chicken-tikka-salad','Grillet tandoorimarineret kyllingefilet, iceberg, tomat, fetaost, gulerod, jalapeños, grøn oliven','','publish','chicken-tikka-salad.png','upload/item/36/',3,'',NULL,1,1,0,1,0.0000,0,'12f26c32-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(37,1,'Corn','vegi-s-salad-corn','Corn','','publish','corn.png','upload/item/37/',4,'',NULL,1,1,0,1,0.0000,0,'12f26c64-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(38,1,'Taco M Menu','wraps-tacos-taco-m-menu','Pålæg, fromage smørrelse, pomfritter\n1 stk. pålæg efter eget valg. inkl. pomfritter + sodavand','','publish','taco-m-menu.png','upload/item/38/',1,'',NULL,1,1,0,1,0.0000,0,'12f26ca0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(39,1,'Taco L Menu','wraps-tacos-taco-l-menu','Pålæg, fromage smørrelse, pomfritter\n2 stk. pålæg efter eget valg. inkl. pomfritter + sodavand','','publish','taco-l-menu.png','upload/item/39/',2,'',NULL,1,1,0,1,0.0000,0,'12f26cdc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(40,1,'Taco XL Menu','wraps-tacos-taco-xl-menu','Pålæg, fromage smørrelse, pomfritter\n3 stk. pålæg efter eget valg. inkl. pomfritter + sodavand','','publish','taco-xl-menu.png','upload/item/40/',3,'',NULL,1,1,0,1,0.0000,0,'12f26d0e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(41,1,'Chicken Fillet Wrap Menu','wraps-tacos-chicken-fillet-wrap-menu','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-fillet-wrap-menu.png','upload/item/41/',4,'',NULL,1,1,0,1,0.0000,0,'12f26d4a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(42,1,'Chicken Tikka Wrap Menu','wraps-tacos-chicken-tikka-wrap-menu','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-tikka-wrap-menu.png','upload/item/42/',5,'',NULL,1,1,0,1,0.0000,0,'12f26d90-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(43,1,'Kebab Wrap Menu','wraps-tacos-kebab-wrap-menu','Kyllinge shawarma, løg, tomat, iceberg, kebab dressing','','publish','kebab-wrap-menu.png','upload/item/43/',6,'',NULL,1,1,0,1,0.0000,0,'12f26dcc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(44,1,'Taco M','wraps-tacos-taco-m','','','publish','taco-m.png','upload/item/44/',7,'',NULL,1,1,0,1,0.0000,0,'12f26e26-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(45,1,'Taco L','wraps-tacos-taco-l','','','publish','taco-l.png','upload/item/45/',8,'',NULL,1,1,0,1,0.0000,0,'12f26e58-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(46,1,'Taco XL','wraps-tacos-taco-xl','','','publish','taco-xl.png','upload/item/46/',9,'',NULL,1,1,0,1,0.0000,0,'12f26e94-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(47,1,'Chicken Fillet Wrap','wraps-tacos-chicken-fillet-wrap','Frisk paneret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-fillet-wrap.png','upload/item/47/',10,'',NULL,1,1,0,1,0.0000,0,'12f26ee4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(48,1,'Chicken Tikka Wrap','wraps-tacos-chicken-tikka-wrap','Grillet tandoorimarineret kyllingefilet, tomat, iceberg, mayonnaise','','publish','chicken-tikka-wrap.png','upload/item/48/',11,'',NULL,1,1,0,1,0.0000,0,'12f26f20-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(49,1,'Kebab Wrap','wraps-tacos-kebab-wrap','Kyllinge shawarma, løg, tomat, iceberg, kebab dressing','','publish','kebab-wrap.png','upload/item/49/',12,'',NULL,1,1,0,1,0.0000,0,'12f26f52-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(50,1,'Family 1','family-social-bucket-family-1','10 stk. Drumsticks','','publish','family-1.png','upload/item/50/',1,'',NULL,1,1,0,1,0.0000,0,'12f26fa2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(51,1,'Family 2','family-social-bucket-family-2','6 stk. Drumsticks + 12 stk. Hot Spicy Wings','','publish','family-2.png','upload/item/51/',2,'',NULL,1,1,0,1,0.0000,0,'12f26fde-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(52,1,'Family 3','family-social-bucket-family-3','4 stk. Drumsticks + 16 stk. Hot Spicy Wings + 10 stk. Chicken Strips','','publish','family-3.png','upload/item/52/',3,'',NULL,1,1,0,1,0.0000,0,'12f27010-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(53,1,'Family 4','family-social-bucket-family-4','24 stk. Hot Spicy Wings','','publish','family-4.png','upload/item/53/',4,'',NULL,1,1,0,1,0.0000,0,'12f27060-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(54,1,'Family 5','family-social-bucket-family-5','15 stk. Chicken Strips + 22 stk. Hot Spicy Wings','','publish','family-5.png','upload/item/54/',5,'',NULL,1,1,0,1,0.0000,0,'12f2709c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(55,1,'Family 6','family-social-bucket-family-6','22 stk. Chicken Strips','','publish','family-6.png','upload/item/55/',6,'',NULL,1,1,0,1,0.0000,0,'12f270e2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(56,1,'2 stk. Chicken Drumstick Menu','chicken-n-chicken-2-stk-chicken-drumstick-menu','Kyllingestykker håndpaneret i den unikke "Chicken n Chicken" panering.\nVores kyllingestykker er håndpanerede med vores blanding...','','publish','2-stk-chicken-drumstick-menu.png','upload/item/56/',1,'',NULL,1,1,0,1,0.0000,0,'12f27128-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(57,1,'3 stk. Chicken Drumsticks Menu','chicken-n-chicken-3-stk-chicken-drumsticks-menu','Kyllingestykker håndpaneret i den unikke "Chicken n Chicken" panering.\nVores kyllingestykker er håndpanerede med vores blanding...','','publish','3-stk-chicken-drumsticks-menu.png','upload/item/57/',2,'',NULL,1,1,0,1,0.0000,0,'12f2716e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(58,1,'8 stk. Hot Spicy Wings Menu','chicken-n-chicken-8-stk-hot-spicy-wings-menu','Kyllingevinger, som er marineret i en krydret chili-marinade.','','publish','8-stk-hot-spicy-wings-menu.png','upload/item/58/',3,'',NULL,1,1,0,1,0.0000,0,'12f271c8-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(59,1,'12 stk. Hot Spicy Wings Menu','chicken-n-chicken-12-stk-hot-spicy-wings-menu','Kyllingevinger, som er marineret i en krydret chili-marinade.','','publish','12-stk-hot-spicy-wings-menu.png','upload/item/59/',4,'',NULL,1,1,0,1,0.0000,0,'12f27204-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(60,1,'6 stk. Chicken Strips Menu','chicken-n-chicken-6-stk-chicken-strips-menu','Kyllingefileter, håndpaneret i "Chicken N Chicken" paneringen','','publish','6-stk-chicken-strips-menu.png','upload/item/60/',5,'',NULL,1,1,0,1,0.0000,0,'12f27240-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(61,1,'6 stk. Chicken Tikka Menu','chicken-n-chicken-6-stk-chicken-tikka-menu','Kyllingefileter, håndpaneret i "Chicken N Chicken" paneringen','','publish','6-stk-chicken-tikka-menu.png','upload/item/61/',6,'',NULL,1,1,0,1,0.0000,0,'12f2729a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(62,1,'6 stk. Chicken Nuggets Menu','chicken-n-chicken-6-stk-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','6-stk-chicken-nuggets-menu.png','upload/item/62/',7,'',NULL,1,1,0,1,0.0000,0,'12f272d6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(63,1,'10 stk. Chicken Nuggets Menu','chicken-n-chicken-10-stk-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','10-stk-chicken-nuggets-menu.png','upload/item/63/',8,'',NULL,1,1,0,1,0.0000,0,'12f27326-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(64,1,'15 stk. Chicken Nuggets Menu','chicken-n-chicken-15-stk-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','15-stk-chicken-nuggets-menu.png','upload/item/64/',9,'',NULL,1,1,0,1,0.0000,0,'12f27362-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(65,1,'20 stk. Chicken Nuggets Menu','chicken-n-chicken-20-stk-chicken-nuggets-menu','Gyldne og sprøde nuggets er perfekte til både børn og voksne','','publish','20-stk-chicken-nuggets-menu.png','upload/item/65/',10,'',NULL,1,1,0,1,0.0000,0,'12f2739e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(66,1,'12 stk. Chicken Pop Corn Menu','chicken-n-chicken-12-stk-chicken-pop-corn-menu','','','publish','12-stk-chicken-pop-corn-menu.png','upload/item/66/',11,'',NULL,1,1,0,1,0.0000,0,'12f273f8-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(67,1,'20 stk. Chicken Pop Corn Menu','chicken-n-chicken-20-stk-chicken-pop-corn-menu','','','publish','20-stk-chicken-pop-corn-menu.png','upload/item/67/',12,'',NULL,1,1,0,1,0.0000,0,'12f27434-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(68,1,'1 stk. Chicken Drumstick','chicken-n-chicken-1-stk-chicken-drumstick','','','publish','1-stk-chicken-drumstick.png','upload/item/68/',13,'',NULL,1,1,0,1,0.0000,0,'12f2748e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(69,1,'2 stk. Chicken Drumsticks','chicken-n-chicken-2-stk-chicken-drumsticks','','','publish','2-stk-chicken-drumsticks.png','upload/item/69/',14,'',NULL,1,1,0,1,0.0000,0,'12f274c0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(70,1,'3 stk. Chicken Drumsticks','chicken-n-chicken-3-stk-chicken-drumsticks','','','publish','3-stk-chicken-drumsticks.png','upload/item/70/',15,'',NULL,1,1,0,1,0.0000,0,'12f274fc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(71,1,'4 stk. Chicken Drumsticks','chicken-n-chicken-4-stk-chicken-drumsticks','','','publish','4-stk-chicken-drumsticks.png','upload/item/71/',16,'',NULL,1,1,0,1,0.0000,0,'12f2754c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(72,1,'5 stk. Chicken Drumsticks','chicken-n-chicken-5-stk-chicken-drumsticks','','','publish','5-stk-chicken-drumsticks.png','upload/item/72/',17,'',NULL,1,1,0,1,0.0000,0,'12f27588-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(73,1,'6 stk. Chicken Drumsticks','chicken-n-chicken-6-stk-chicken-drumsticks','','','publish','6-stk-chicken-drumsticks.png','upload/item/73/',18,'',NULL,1,1,0,1,0.0000,0,'12f275c4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(74,1,'8 stk. Hot Spicy Wings','chicken-n-chicken-8-stk-hot-spicy-wings','','','publish','8-stk-hot-spicy-wings.png','upload/item/74/',19,'',NULL,1,1,0,1,0.0000,0,'12f275f6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(75,1,'12 stk. Hot Spicy Wings','chicken-n-chicken-12-stk-hot-spicy-wings','','','publish','12-stk-hot-spicy-wings.png','upload/item/75/',20,'',NULL,1,1,0,1,0.0000,0,'12f27650-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(76,1,'17 stk. Hot Spicy Wings','chicken-n-chicken-17-stk-hot-spicy-wings','','','publish','17-stk-hot-spicy-wings.png','upload/item/76/',21,'',NULL,1,1,0,1,0.0000,0,'12f27682-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(77,1,'22 stk. Hot Spicy Wings','chicken-n-chicken-22-stk-hot-spicy-wings','','','publish','22-stk-hot-spicy-wings.png','upload/item/77/',22,'',NULL,1,1,0,1,0.0000,0,'12f276dc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(78,1,'6 stk. Chicken Strips','chicken-n-chicken-6-stk-chicken-strips','','','publish','6-stk-chicken-strips.png','upload/item/78/',23,'',NULL,1,1,0,1,0.0000,0,'12f27718-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(79,1,'10 stk. Chicken Strips','chicken-n-chicken-10-stk-chicken-strips','','','publish','10-stk-chicken-strips.png','upload/item/79/',24,'',NULL,1,1,0,1,0.0000,0,'12f27768-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(80,1,'6 stk. Chicken Tikka','chicken-n-chicken-6-stk-chicken-tikka','','','publish','6-stk-chicken-tikka.png','upload/item/80/',25,'',NULL,1,1,0,1,0.0000,0,'12f277b8-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(81,1,'6 stk. Chicken Nuggets','chicken-n-chicken-6-stk-chicken-nuggets','','','publish','6-stk-chicken-nuggets.png','upload/item/81/',26,'',NULL,1,1,0,1,0.0000,0,'12f277f4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(82,1,'10 stk. Chicken Nuggets','chicken-n-chicken-10-stk-chicken-nuggets','','','publish','10-stk-chicken-nuggets.png','upload/item/82/',27,'',NULL,1,1,0,1,0.0000,0,'12f27844-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(83,1,'15 stk. Chicken Nuggets','chicken-n-chicken-15-stk-chicken-nuggets','','','publish','15-stk-chicken-nuggets.png','upload/item/83/',28,'',NULL,1,1,0,1,0.0000,0,'12f27880-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(84,1,'20 stk. Chicken Nuggets','chicken-n-chicken-20-stk-chicken-nuggets','','','publish','20-stk-chicken-nuggets.png','upload/item/84/',29,'',NULL,1,1,0,1,0.0000,0,'12f278b2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(85,1,'6 stk. Chicken Pop Corn','chicken-n-chicken-6-stk-chicken-pop-corn','','','publish','6-stk-chicken-pop-corn.png','upload/item/85/',30,'',NULL,1,1,0,1,0.0000,0,'12f2790c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(86,1,'12 stk. Chicken Pop Corn','chicken-n-chicken-12-stk-chicken-pop-corn','','','publish','12-stk-chicken-pop-corn.png','upload/item/86/',31,'',NULL,1,1,0,1,0.0000,0,'12f27948-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(87,1,'20 stk. Chicken Pop Corn','chicken-n-chicken-20-stk-chicken-pop-corn','','','publish','20-stk-chicken-pop-corn.png','upload/item/87/',32,'',NULL,1,1,0,1,0.0000,0,'12f279a2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(88,1,'Kids Meal 1 - Hamburger','kids-meal-kids-meal-1-hamburger','Hamburger indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-1-hamburger.png','upload/item/88/',1,'',NULL,1,1,0,1,0.0000,0,'12f279de-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(89,1,'Kids Meal 2 - Chicken Strips 2 Stk.','kids-meal-kids-meal-2-chicken-strips-2-stk','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-2-chicken-strips-2-stk.png','upload/item/89/',2,'',NULL,1,1,0,1,0.0000,0,'12f27a24-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(90,1,'Kids Meal 3 - 5 stk. Chicken Pop Corn','kids-meal-kids-meal-3-5-stk-chicken-pop-corn','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-3-5-stk-chicken-pop-corn.png','upload/item/90/',3,'',NULL,1,1,0,1,0.0000,0,'12f27a7e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(91,1,'Kids Meal 4 - 4 stk. Chicken Nuggets','kids-meal-kids-meal-4-4-stk-chicken-nuggets','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-4-4-stk-chicken-nuggets.png','upload/item/91/',4,'',NULL,1,1,0,1,0.0000,0,'12f27ac4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(92,1,'Kids Meal 5 - 1 stk. Drumstick','kids-meal-kids-meal-5-1-stk-drumstick','Indeholder: 1 x Capri Sonne + 1 x Pomfrit + 1 x 3d widgets','','publish','kids-meal-5-1-stk-drumstick.png','upload/item/92/',5,'',NULL,1,1,0,1,0.0000,0,'12f27b14-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(93,1,'Pommes Frites (medium)','sides-dips-pommes-frites-medium','Pommes Frites (medium)','','publish','pommes-frites-medium.png','upload/item/93/',1,'',NULL,1,1,0,1,0.0000,0,'12f27b50-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(94,1,'Pommes Frites (large)','sides-dips-pommes-frites-large','Pommes Frites (large)','','publish','pommes-frites-large.png','upload/item/94/',2,'',NULL,1,1,0,1,0.0000,0,'12f27b8c-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(95,1,'Potatoes Wedges','sides-dips-potatoes-wedges','Potatoes Wedges','','publish','potatoes-wedges.png','upload/item/95/',3,'',NULL,1,1,0,1,0.0000,0,'12f27be6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(96,1,'Frites Spirales','sides-dips-frites-spirales','Frites Spirales','','publish','frites-spirales.png','upload/item/96/',4,'',NULL,1,1,0,1,0.0000,0,'12f27c18-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(97,1,'Frites Dippers','sides-dips-frites-dippers','Frites Dippers','','publish','frites-dippers.png','upload/item/97/',5,'',NULL,1,1,0,1,0.0000,0,'12f27c54-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(98,1,'6 Onion Rings','sides-dips-6-onion-rings','6 Onion Rings','','publish','6-onion-rings.png','upload/item/98/',6,'',NULL,1,1,0,1,0.0000,0,'12f27ca4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(99,1,'10 Chili Cheese Nuggets','sides-dips-10-chili-cheese-nuggets','10 Chili Cheese Nuggets','','publish','10-chili-cheese-nuggets.png','upload/item/99/',7,'',NULL,1,1,0,1,0.0000,0,'12f27cea-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(100,1,'6 Mozzarella Sticks','sides-dips-6-mozzarella-sticks','6 Mozzarella Sticks','','publish','6-mozzarella-sticks.png','upload/item/100/',8,'',NULL,1,1,0,1,0.0000,0,'12f27d3a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(101,1,'12 Cream Cheese Nuggets','sides-dips-12-cream-cheese-nuggets','12 Cream Cheese Nuggets','','publish','12-cream-cheese-nuggets.png','upload/item/101/',9,'',NULL,1,1,0,1,0.0000,0,'12f27d80-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(102,1,'Ketchup 25g','sides-dips-ketchup-25g','','','publish','ketchup-25g.png','upload/item/102/',10,'',NULL,1,1,0,1,0.0000,0,'12f27db2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(103,1,'Mayonnaise 25g','sides-dips-mayonnaise-25g','','','publish','mayonnaise-25g.png','upload/item/103/',11,'',NULL,1,1,0,1,0.0000,0,'12f27e02-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(104,1,'Barbecue 25g','sides-dips-barbecue-25g','','','publish','barbecue-25g.png','upload/item/104/',12,'',NULL,1,1,0,1,0.0000,0,'12f27e3e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(105,1,'Honey Mustard 25g','sides-dips-honey-mustard-25g','','','publish','honey-mustard-25g.png','upload/item/105/',13,'',NULL,1,1,0,1,0.0000,0,'12f27e70-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(106,1,'Sweet & Sour 25g','sides-dips-sweet-sour-25g','','','publish','sweet-sour-25g.png','upload/item/106/',14,'',NULL,1,1,0,1,0.0000,0,'12f27ec0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(107,1,'Pomfrit Sauce 25g','sides-dips-pomfrit-sauce-25g','','','publish','pomfrit-sauce-25g.png','upload/item/107/',15,'',NULL,1,1,0,1,0.0000,0,'12f27efc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(108,1,'Curry Mango 25g','sides-dips-curry-mango-25g','','','publish','curry-mango-25g.png','upload/item/108/',16,'',NULL,1,1,0,1,0.0000,0,'12f27f2e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(109,1,'Peri Peri 30ml','sides-dips-peri-peri-30ml','','','publish','peri-peri-30ml.png','upload/item/109/',17,'',NULL,1,1,0,1,0.0000,0,'12f27f7e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(110,1,'Algérienne 10g','sides-dips-algerienne-10g','','','publish','algerienne-10g.png','upload/item/110/',18,'',NULL,1,1,0,1,0.0000,0,'12f27fc4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(111,1,'Biggy Burger 10g','sides-dips-biggy-burger-10g','','','publish','biggy-burger-10g.png','upload/item/111/',19,'',NULL,1,1,0,1,0.0000,0,'12f28014-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(112,1,'Ketchup 10g','sides-dips-ketchup-10g','','','publish','ketchup-10g.png','upload/item/112/',20,'',NULL,1,1,0,1,0.0000,0,'12f28050-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(113,1,'Mayonnaise 10g','sides-dips-mayonnaise-10g','','','publish','mayonnaise-10g.png','upload/item/113/',21,'',NULL,1,1,0,1,0.0000,0,'12f28082-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(114,1,'Americano','coffee-cake-americano','Americano','','publish','americano.png','upload/item/114/',1,'',NULL,1,1,0,1,0.0000,0,'12f280be-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(115,1,'Tea','coffee-cake-tea','Tea','','publish','tea.png','upload/item/115/',2,'',NULL,1,1,0,1,0.0000,0,'12f2810e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(116,1,'Cappuccino','coffee-cake-cappuccino','Cappuccino','','publish','cappuccino.png','upload/item/116/',3,'',NULL,1,1,0,1,0.0000,0,'12f28140-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(117,1,'Caffe latte','coffee-cake-caffe-latte','Caffe latte','','publish','caffe-latte.png','upload/item/117/',4,'',NULL,1,1,0,1,0.0000,0,'12f28190-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(118,1,'Varm kakao','coffee-cake-varm-kakao','Varm kakao','','publish','varm-kakao.png','upload/item/118/',5,'',NULL,1,1,0,1,0.0000,0,'12f281c2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(119,1,'Flat white','coffee-cake-flat-white','Flat white','','publish','flat-white.png','upload/item/119/',6,'',NULL,1,1,0,1,0.0000,0,'12f281fe-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(120,1,'Cortador','coffee-cake-cortador','Cortador','','publish','cortador.png','upload/item/120/',7,'',NULL,1,1,0,1,0.0000,0,'12f28244-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(121,1,'Is latte - Vanilla','coffee-cake-is-latte-vanilla','Is latte - Vanilla','','publish','is-latte-vanilla.png','upload/item/121/',8,'',NULL,1,1,0,1,0.0000,0,'12f28280-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(122,1,'Is latte - Caramel','coffee-cake-is-latte-caramel','','','publish','is-latte-caramel.png','upload/item/122/',9,'',NULL,1,1,0,1,0.0000,0,'12f282bc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(123,1,'Espresso dobbelt','coffee-cake-espresso-dobbelt','Espresso dobbelt','','publish','espresso-dobbelt.png','upload/item/123/',10,'',NULL,1,1,0,1,0.0000,0,'12f28302-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(124,1,'Tiramisu - Chocolate','coffee-cake-tiramisu-chocolate','Tiramisu - Chocolate','','publish','tiramisu-chocolate.png','upload/item/124/',11,'',NULL,1,1,0,1,0.0000,0,'12f2833e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(125,1,'Tiramisu - Caramel','coffee-cake-tiramisu-caramel','Tiramisu - Caramel','','publish','tiramisu-caramel.png','upload/item/125/',12,'',NULL,1,1,0,1,0.0000,0,'12f28370-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(126,1,'Chocolate Muffin','coffee-cake-chocolate-muffin','Chocolate muffin','','publish','chocolate-muffin.png','upload/item/126/',13,'',NULL,1,1,0,1,0.0000,0,'12f283c0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(127,1,'SUNDAE - Karamel Toffee','ice-cream-shakes-sundae-karamel-toffee','SUNDAE - Karamel Toffee','','publish','sundae-karamel-toffee.png','upload/item/127/',1,'',NULL,1,1,0,1,0.0000,0,'12f283fc-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(128,1,'SUNDAE - Jordbær','ice-cream-shakes-sundae-jordbaer','SUNDAE - Jordbær','','publish','sundae-jordbaer.png','upload/item/128/',2,'',NULL,1,1,0,1,0.0000,0,'12f28456-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(129,1,'SUNDAE - Chokolade','ice-cream-shakes-sundae-chokolade','SUNDAE - Chokolade','','publish','sundae-chokolade.png','upload/item/129/',3,'',NULL,1,1,0,1,0.0000,0,'12f28488-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(130,1,'SUNDAE - Vanilje','ice-cream-shakes-sundae-vanilje','SUNDAE - Vanilje','','publish','sundae-vanilje.png','upload/item/130/',4,'',NULL,1,1,0,1,0.0000,0,'12f284c4-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(131,1,'SUNDAE - Oreo','ice-cream-shakes-sundae-oreo','SUNDAE - Oreo','','publish','sundae-oreo.png','upload/item/131/',5,'',NULL,1,1,0,1,0.0000,0,'12f28500-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(132,1,'SUNDAE - Smartis','ice-cream-shakes-sundae-smartis','SUNDAE - Smartis','','publish','sundae-smartis.png','upload/item/132/',6,'',NULL,1,1,0,1,0.0000,0,'12f28550-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(133,1,'Pepsi','cold-drinks-pepsi','Pepsi','','publish','pepsi.png','upload/item/133/',1,'',NULL,1,1,0,1,0.0000,0,'12f28582-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(134,1,'Pepsi Large','cold-drinks-pepsi-large','Pepsi Large','','publish','pepsi-large.png','upload/item/134/',2,'',NULL,1,1,0,1,0.0000,0,'12f285d2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(135,1,'Pepsi Max','cold-drinks-pepsi-max','Pepsi Max','','publish','pepsi-max.png','upload/item/135/',3,'',NULL,1,1,0,1,0.0000,0,'12f28604-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(136,1,'Pepsi Max Large','cold-drinks-pepsi-max-large','Pepsi Max Large','','publish','pepsi-max-large.png','upload/item/136/',4,'',NULL,1,1,0,1,0.0000,0,'12f2865e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(137,1,'Faxe Kondi','cold-drinks-faxe-kondi','Faxe Kondi','','publish','faxe-kondi.png','upload/item/137/',5,'',NULL,1,1,0,1,0.0000,0,'12f2869a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(138,1,'Faxe Kondi  Large','cold-drinks-faxe-kondi-large','Faxe Kondi  Large','','publish','faxe-kondi-large.png','upload/item/138/',6,'',NULL,1,1,0,1,0.0000,0,'12f286d6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(139,1,'Faxe Kondi Zero','cold-drinks-faxe-kondi-zero','Faxe Kondi Zero','','publish','faxe-kondi-zero.png','upload/item/139/',7,'',NULL,1,1,0,1,0.0000,0,'12f28708-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(140,1,'Faxe Kondi Zero Large','cold-drinks-faxe-kondi-zero-large','Faxe Kondi Zero Large','','publish','faxe-kondi-zero-large.png','upload/item/140/',8,'',NULL,1,1,0,1,0.0000,0,'12f28758-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(141,1,'Faxe Kondi Appelsin','cold-drinks-faxe-kondi-appelsin','Faxe Kondi Appelsin','','publish','faxe-kondi-appelsin.png','upload/item/141/',9,'',NULL,1,1,0,1,0.0000,0,'12f28794-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(142,1,'Faxe Kondi Appelsin Large','cold-drinks-faxe-kondi-appelsin-large','Faxe Kondi Appelsin Large','','publish','faxe-kondi-appelsin-large.png','upload/item/142/',10,'',NULL,1,1,0,1,0.0000,0,'12f287d0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(143,1,'Mirinda lemon','cold-drinks-mirinda-lemon','Mirinda lemon','','publish','mirinda-lemon.png','upload/item/143/',11,'',NULL,1,1,0,1,0.0000,0,'12f2882a-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(144,1,'Mirinda lemon Large','cold-drinks-mirinda-lemon-large','Mirinda lemon Large','','publish','mirinda-lemon-large.png','upload/item/144/',12,'',NULL,1,1,0,1,0.0000,0,'12f28866-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(145,1,'Kildevand 0.5l','cold-drinks-kildevand-0-5l','Kildevand 0.5l','','publish','kildevand-0-5l.png','upload/item/145/',13,'',NULL,1,1,0,1,0.0000,0,'12f288b6-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(146,1,'Danskvand 0.5l','cold-drinks-danskvand-0-5l','Danskvand 0.5l','','publish','danskvand-0-5l.png','upload/item/146/',14,'',NULL,1,1,0,1,0.0000,0,'12f288f2-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(147,1,'Faxe Kondi 1.5l','cold-drinks-faxe-kondi-1-5l','Faxe Kondi 1.5l','','publish','faxe-kondi-1-5l.png','upload/item/147/',15,'',NULL,1,1,0,1,0.0000,0,'12f2892e-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(148,1,'Pepsi Max 1.5l','cold-drinks-pepsi-max-1-5l','Pepsi Max 1.5l','','publish','pepsi-max-1-5l.png','upload/item/148/',16,'',NULL,1,1,0,1,0.0000,0,'12f28960-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(149,1,'Red Bull','cold-drinks-red-bull','Red Bull','','publish','red-bull.png','upload/item/149/',17,'',NULL,1,1,0,1,0.0000,0,'12f289b0-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(150,1,'Capri-Sun','cold-drinks-capri-sun','Capri-Sun','','publish','capri-sun.png','upload/item/150/',18,'',NULL,1,1,0,1,0.0000,0,'12f289ec-3179-11f1-9f3b-1a3dac98ec63','',1,0,'','',NULL,'','',0,0,0,0,'',1,0,0,NULL,0,'2026-04-06 07:25:50','2026-04-06 07:25:50','');

INSERT INTO st_item_relationship_category (id, merchant_id, item_id, cat_id, sequence) VALUES
(1,1,1,1,1),
(2,1,2,1,2),
(3,1,3,1,3),
(4,1,4,1,4),
(5,1,5,1,5),
(6,1,6,1,6),
(7,1,7,1,7),
(8,1,8,1,8),
(9,1,9,1,9),
(10,1,10,1,10),
(11,1,11,1,11),
(12,1,12,2,1),
(13,1,13,2,2),
(14,1,14,2,3),
(15,1,15,2,4),
(16,1,16,2,5),
(17,1,17,2,6),
(18,1,18,2,7),
(19,1,19,2,8),
(20,1,20,2,9),
(21,1,21,2,10),
(22,1,22,2,11),
(23,1,23,2,12),
(24,1,24,2,13),
(25,1,25,2,14),
(26,1,26,2,15),
(27,1,27,2,16),
(28,1,28,2,17),
(29,1,29,2,18),
(30,1,30,2,19),
(31,1,31,2,20),
(32,1,32,2,21),
(33,1,33,2,22),
(34,1,34,3,1),
(35,1,35,3,2),
(36,1,36,3,3),
(37,1,37,3,4),
(38,1,38,4,1),
(39,1,39,4,2),
(40,1,40,4,3),
(41,1,41,4,4),
(42,1,42,4,5),
(43,1,43,4,6),
(44,1,44,4,7),
(45,1,45,4,8),
(46,1,46,4,9),
(47,1,47,4,10),
(48,1,48,4,11),
(49,1,49,4,12),
(50,1,50,5,1),
(51,1,51,5,2),
(52,1,52,5,3),
(53,1,53,5,4),
(54,1,54,5,5),
(55,1,55,5,6),
(56,1,56,6,1),
(57,1,57,6,2),
(58,1,58,6,3),
(59,1,59,6,4),
(60,1,60,6,5),
(61,1,61,6,6),
(62,1,62,6,7),
(63,1,63,6,8),
(64,1,64,6,9),
(65,1,65,6,10),
(66,1,66,6,11),
(67,1,67,6,12),
(68,1,68,6,13),
(69,1,69,6,14),
(70,1,70,6,15),
(71,1,71,6,16),
(72,1,72,6,17),
(73,1,73,6,18),
(74,1,74,6,19),
(75,1,75,6,20),
(76,1,76,6,21),
(77,1,77,6,22),
(78,1,78,6,23),
(79,1,79,6,24),
(80,1,80,6,25),
(81,1,81,6,26),
(82,1,82,6,27),
(83,1,83,6,28),
(84,1,84,6,29),
(85,1,85,6,30),
(86,1,86,6,31),
(87,1,87,6,32),
(88,1,88,7,1),
(89,1,89,7,2),
(90,1,90,7,3),
(91,1,91,7,4),
(92,1,92,7,5),
(93,1,93,8,1),
(94,1,94,8,2),
(95,1,95,8,3),
(96,1,96,8,4),
(97,1,97,8,5),
(98,1,98,8,6),
(99,1,99,8,7),
(100,1,100,8,8),
(101,1,101,8,9),
(102,1,102,8,10),
(103,1,103,8,11),
(104,1,104,8,12),
(105,1,105,8,13),
(106,1,106,8,14),
(107,1,107,8,15),
(108,1,108,8,16),
(109,1,109,8,17),
(110,1,110,8,18),
(111,1,111,8,19),
(112,1,112,8,20),
(113,1,113,8,21),
(114,1,114,9,1),
(115,1,115,9,2),
(116,1,116,9,3),
(117,1,117,9,4),
(118,1,118,9,5),
(119,1,119,9,6),
(120,1,120,9,7),
(121,1,121,9,8),
(122,1,122,9,9),
(123,1,123,9,10),
(124,1,124,9,11),
(125,1,125,9,12),
(126,1,126,9,13),
(127,1,127,10,1),
(128,1,128,10,2),
(129,1,129,10,3),
(130,1,130,10,4),
(131,1,131,10,5),
(132,1,132,10,6),
(133,1,133,11,1),
(134,1,134,11,2),
(135,1,135,11,3),
(136,1,136,11,4),
(137,1,137,11,5),
(138,1,138,11,6),
(139,1,139,11,7),
(140,1,140,11,8),
(141,1,141,11,9),
(142,1,142,11,10),
(143,1,143,11,11),
(144,1,144,11,12),
(145,1,145,11,13),
(146,1,146,11,14),
(147,1,147,11,15),
(148,1,148,11,16),
(149,1,149,11,17),
(150,1,150,11,18);

INSERT INTO st_item_relationship_size (item_size_id, merchant_id, item_token, item_id, size_id, price, cost_price, discount, discount_type, discount_start, discount_end, sequence, sku, barcode, available, low_stock, created_at, updated_at) VALUES
(1,1,'12f26200-3179-11f1-9f3b-1a3dac98ec63',1,0,52.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(2,1,'12f262dc-3179-11f1-9f3b-1a3dac98ec63',2,0,82.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(3,1,'12f26336-3179-11f1-9f3b-1a3dac98ec63',3,0,85.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(4,1,'12f2637c-3179-11f1-9f3b-1a3dac98ec63',4,0,93.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(5,1,'12f263d6-3179-11f1-9f3b-1a3dac98ec63',5,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(6,1,'12f26426-3179-11f1-9f3b-1a3dac98ec63',6,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(7,1,'12f26480-3179-11f1-9f3b-1a3dac98ec63',7,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(8,1,'12f264d0-3179-11f1-9f3b-1a3dac98ec63',8,0,52.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(9,1,'12f2652a-3179-11f1-9f3b-1a3dac98ec63',9,0,60.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(10,1,'12f26570-3179-11f1-9f3b-1a3dac98ec63',10,0,60.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(11,1,'12f265ac-3179-11f1-9f3b-1a3dac98ec63',11,0,71.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(12,1,'12f265f2-3179-11f1-9f3b-1a3dac98ec63',12,0,60.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(13,1,'12f26642-3179-11f1-9f3b-1a3dac98ec63',13,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(14,1,'12f2667e-3179-11f1-9f3b-1a3dac98ec63',14,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(15,1,'12f266ce-3179-11f1-9f3b-1a3dac98ec63',15,0,85.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(16,1,'12f2670a-3179-11f1-9f3b-1a3dac98ec63',16,0,104.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(17,1,'12f26746-3179-11f1-9f3b-1a3dac98ec63',17,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(18,1,'12f267a0-3179-11f1-9f3b-1a3dac98ec63',18,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(19,1,'12f267dc-3179-11f1-9f3b-1a3dac98ec63',19,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(20,1,'12f2680e-3179-11f1-9f3b-1a3dac98ec63',20,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(21,1,'12f26868-3179-11f1-9f3b-1a3dac98ec63',21,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(22,1,'12f268ae-3179-11f1-9f3b-1a3dac98ec63',22,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(23,1,'12f268ea-3179-11f1-9f3b-1a3dac98ec63',23,0,86.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(24,1,'12f26944-3179-11f1-9f3b-1a3dac98ec63',24,0,54.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(25,1,'12f26976-3179-11f1-9f3b-1a3dac98ec63',25,0,52.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(26,1,'12f269d0-3179-11f1-9f3b-1a3dac98ec63',26,0,71.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(27,1,'12f26a0c-3179-11f1-9f3b-1a3dac98ec63',27,0,60.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(28,1,'12f26a48-3179-11f1-9f3b-1a3dac98ec63',28,0,60.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(29,1,'12f26a7a-3179-11f1-9f3b-1a3dac98ec63',29,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(30,1,'12f26ad4-3179-11f1-9f3b-1a3dac98ec63',30,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(31,1,'12f26b10-3179-11f1-9f3b-1a3dac98ec63',31,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(32,1,'12f26b4c-3179-11f1-9f3b-1a3dac98ec63',32,0,71.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(33,1,'12f26b7e-3179-11f1-9f3b-1a3dac98ec63',33,0,53.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(34,1,'12f26bba-3179-11f1-9f3b-1a3dac98ec63',34,0,76.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(35,1,'12f26bf6-3179-11f1-9f3b-1a3dac98ec63',35,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(36,1,'12f26c32-3179-11f1-9f3b-1a3dac98ec63',36,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(37,1,'12f26c64-3179-11f1-9f3b-1a3dac98ec63',37,0,22.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(38,1,'12f26ca0-3179-11f1-9f3b-1a3dac98ec63',38,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(39,1,'12f26cdc-3179-11f1-9f3b-1a3dac98ec63',39,0,109.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(40,1,'12f26d0e-3179-11f1-9f3b-1a3dac98ec63',40,0,120.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(41,1,'12f26d4a-3179-11f1-9f3b-1a3dac98ec63',41,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(42,1,'12f26d90-3179-11f1-9f3b-1a3dac98ec63',42,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(43,1,'12f26dcc-3179-11f1-9f3b-1a3dac98ec63',43,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(44,1,'12f26e26-3179-11f1-9f3b-1a3dac98ec63',44,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(45,1,'12f26e58-3179-11f1-9f3b-1a3dac98ec63',45,0,76.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(46,1,'12f26e94-3179-11f1-9f3b-1a3dac98ec63',46,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(47,1,'12f26ee4-3179-11f1-9f3b-1a3dac98ec63',47,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(48,1,'12f26f20-3179-11f1-9f3b-1a3dac98ec63',48,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(49,1,'12f26f52-3179-11f1-9f3b-1a3dac98ec63',49,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(50,1,'12f26fa2-3179-11f1-9f3b-1a3dac98ec63',50,0,274.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(51,1,'12f26fde-3179-11f1-9f3b-1a3dac98ec63',51,0,285.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(52,1,'12f27010-3179-11f1-9f3b-1a3dac98ec63',52,0,296.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(53,1,'12f27060-3179-11f1-9f3b-1a3dac98ec63',53,0,252.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(54,1,'12f2709c-3179-11f1-9f3b-1a3dac98ec63',54,0,329.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(55,1,'12f270e2-3179-11f1-9f3b-1a3dac98ec63',55,0,252.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(56,1,'12f27128-3179-11f1-9f3b-1a3dac98ec63',56,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(57,1,'12f2716e-3179-11f1-9f3b-1a3dac98ec63',57,0,105.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(58,1,'12f271c8-3179-11f1-9f3b-1a3dac98ec63',58,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(59,1,'12f27204-3179-11f1-9f3b-1a3dac98ec63',59,0,124.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(60,1,'12f27240-3179-11f1-9f3b-1a3dac98ec63',60,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(61,1,'12f2729a-3179-11f1-9f3b-1a3dac98ec63',61,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(62,1,'12f272d6-3179-11f1-9f3b-1a3dac98ec63',62,0,71.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(63,1,'12f27326-3179-11f1-9f3b-1a3dac98ec63',63,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(64,1,'12f27362-3179-11f1-9f3b-1a3dac98ec63',64,0,113.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(65,1,'12f2739e-3179-11f1-9f3b-1a3dac98ec63',65,0,131.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(66,1,'12f273f8-3179-11f1-9f3b-1a3dac98ec63',66,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(67,1,'12f27434-3179-11f1-9f3b-1a3dac98ec63',67,0,120.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(68,1,'12f2748e-3179-11f1-9f3b-1a3dac98ec63',68,0,27.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(69,1,'12f274c0-3179-11f1-9f3b-1a3dac98ec63',69,0,47.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(70,1,'12f274fc-3179-11f1-9f3b-1a3dac98ec63',70,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(71,1,'12f2754c-3179-11f1-9f3b-1a3dac98ec63',71,0,85.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(72,1,'12f27588-3179-11f1-9f3b-1a3dac98ec63',72,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(73,1,'12f275c4-3179-11f1-9f3b-1a3dac98ec63',73,0,120.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(74,1,'12f275f6-3179-11f1-9f3b-1a3dac98ec63',74,0,58.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(75,1,'12f27650-3179-11f1-9f3b-1a3dac98ec63',75,0,91.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(76,1,'12f27682-3179-11f1-9f3b-1a3dac98ec63',76,0,124.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(77,1,'12f276dc-3179-11f1-9f3b-1a3dac98ec63',77,0,157.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(78,1,'12f27718-3179-11f1-9f3b-1a3dac98ec63',78,0,58.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(79,1,'12f27768-3179-11f1-9f3b-1a3dac98ec63',79,0,98.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(80,1,'12f277b8-3179-11f1-9f3b-1a3dac98ec63',80,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(81,1,'12f277f4-3179-11f1-9f3b-1a3dac98ec63',81,0,38.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(82,1,'12f27844-3179-11f1-9f3b-1a3dac98ec63',82,0,54.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(83,1,'12f27880-3179-11f1-9f3b-1a3dac98ec63',83,0,80.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(84,1,'12f278b2-3179-11f1-9f3b-1a3dac98ec63',84,0,104.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(85,1,'12f2790c-3179-11f1-9f3b-1a3dac98ec63',85,0,43.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(86,1,'12f27948-3179-11f1-9f3b-1a3dac98ec63',86,0,65.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(87,1,'12f279a2-3179-11f1-9f3b-1a3dac98ec63',87,0,87.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(88,1,'12f279de-3179-11f1-9f3b-1a3dac98ec63',88,0,50.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(89,1,'12f27a24-3179-11f1-9f3b-1a3dac98ec63',89,0,50.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(90,1,'12f27a7e-3179-11f1-9f3b-1a3dac98ec63',90,0,50.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(91,1,'12f27ac4-3179-11f1-9f3b-1a3dac98ec63',91,0,50.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(92,1,'12f27b14-3179-11f1-9f3b-1a3dac98ec63',92,0,50.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(93,1,'12f27b50-3179-11f1-9f3b-1a3dac98ec63',93,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(94,1,'12f27b8c-3179-11f1-9f3b-1a3dac98ec63',94,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(95,1,'12f27be6-3179-11f1-9f3b-1a3dac98ec63',95,0,37.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(96,1,'12f27c18-3179-11f1-9f3b-1a3dac98ec63',96,0,37.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(97,1,'12f27c54-3179-11f1-9f3b-1a3dac98ec63',97,0,37.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(98,1,'12f27ca4-3179-11f1-9f3b-1a3dac98ec63',98,0,37.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(99,1,'12f27cea-3179-11f1-9f3b-1a3dac98ec63',99,0,38.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(100,1,'12f27d3a-3179-11f1-9f3b-1a3dac98ec63',100,0,38.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(101,1,'12f27d80-3179-11f1-9f3b-1a3dac98ec63',101,0,38.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(102,1,'12f27db2-3179-11f1-9f3b-1a3dac98ec63',102,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(103,1,'12f27e02-3179-11f1-9f3b-1a3dac98ec63',103,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(104,1,'12f27e3e-3179-11f1-9f3b-1a3dac98ec63',104,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(105,1,'12f27e70-3179-11f1-9f3b-1a3dac98ec63',105,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(106,1,'12f27ec0-3179-11f1-9f3b-1a3dac98ec63',106,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(107,1,'12f27efc-3179-11f1-9f3b-1a3dac98ec63',107,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(108,1,'12f27f2e-3179-11f1-9f3b-1a3dac98ec63',108,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(109,1,'12f27f7e-3179-11f1-9f3b-1a3dac98ec63',109,0,7.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(110,1,'12f27fc4-3179-11f1-9f3b-1a3dac98ec63',110,0,5.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(111,1,'12f28014-3179-11f1-9f3b-1a3dac98ec63',111,0,5.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(112,1,'12f28050-3179-11f1-9f3b-1a3dac98ec63',112,0,5.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(113,1,'12f28082-3179-11f1-9f3b-1a3dac98ec63',113,0,5.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(114,1,'12f280be-3179-11f1-9f3b-1a3dac98ec63',114,0,22.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(115,1,'12f2810e-3179-11f1-9f3b-1a3dac98ec63',115,0,22.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(116,1,'12f28140-3179-11f1-9f3b-1a3dac98ec63',116,0,28.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(117,1,'12f28190-3179-11f1-9f3b-1a3dac98ec63',117,0,28.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(118,1,'12f281c2-3179-11f1-9f3b-1a3dac98ec63',118,0,28.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(119,1,'12f281fe-3179-11f1-9f3b-1a3dac98ec63',119,0,28.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(120,1,'12f28244-3179-11f1-9f3b-1a3dac98ec63',120,0,28.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(121,1,'12f28280-3179-11f1-9f3b-1a3dac98ec63',121,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(122,1,'12f282bc-3179-11f1-9f3b-1a3dac98ec63',122,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(123,1,'12f28302-3179-11f1-9f3b-1a3dac98ec63',123,0,22.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(124,1,'12f2833e-3179-11f1-9f3b-1a3dac98ec63',124,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(125,1,'12f28370-3179-11f1-9f3b-1a3dac98ec63',125,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(126,1,'12f283c0-3179-11f1-9f3b-1a3dac98ec63',126,0,21.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(127,1,'12f283fc-3179-11f1-9f3b-1a3dac98ec63',127,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(128,1,'12f28456-3179-11f1-9f3b-1a3dac98ec63',128,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(129,1,'12f28488-3179-11f1-9f3b-1a3dac98ec63',129,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(130,1,'12f284c4-3179-11f1-9f3b-1a3dac98ec63',130,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(131,1,'12f28500-3179-11f1-9f3b-1a3dac98ec63',131,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(132,1,'12f28550-3179-11f1-9f3b-1a3dac98ec63',132,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(133,1,'12f28582-3179-11f1-9f3b-1a3dac98ec63',133,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(134,1,'12f285d2-3179-11f1-9f3b-1a3dac98ec63',134,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(135,1,'12f28604-3179-11f1-9f3b-1a3dac98ec63',135,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(136,1,'12f2865e-3179-11f1-9f3b-1a3dac98ec63',136,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(137,1,'12f2869a-3179-11f1-9f3b-1a3dac98ec63',137,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(138,1,'12f286d6-3179-11f1-9f3b-1a3dac98ec63',138,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(139,1,'12f28708-3179-11f1-9f3b-1a3dac98ec63',139,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(140,1,'12f28758-3179-11f1-9f3b-1a3dac98ec63',140,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(141,1,'12f28794-3179-11f1-9f3b-1a3dac98ec63',141,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(142,1,'12f287d0-3179-11f1-9f3b-1a3dac98ec63',142,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(143,1,'12f2882a-3179-11f1-9f3b-1a3dac98ec63',143,0,30.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(144,1,'12f28866-3179-11f1-9f3b-1a3dac98ec63',144,0,36.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(145,1,'12f288b6-3179-11f1-9f3b-1a3dac98ec63',145,0,21.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(146,1,'12f288f2-3179-11f1-9f3b-1a3dac98ec63',146,0,28.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(147,1,'12f2892e-3179-11f1-9f3b-1a3dac98ec63',147,0,42.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(148,1,'12f28960-3179-11f1-9f3b-1a3dac98ec63',148,0,42.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(149,1,'12f289b0-3179-11f1-9f3b-1a3dac98ec63',149,0,32.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50'),
(150,1,'12f289ec-3179-11f1-9f3b-1a3dac98ec63',150,0,17.0000,0.0000,0.0000,'fixed',NULL,NULL,0,'','',1,0.00,'2026-04-06 07:25:50','2026-04-06 07:25:50');

-- ========== ADDON GROUPS (subcategories) ==========
DELETE FROM st_subcategory WHERE merchant_id = 1;
DELETE FROM st_subcategory_item WHERE merchant_id = 1;
DELETE FROM st_subcategory_item_relationships WHERE merchant_id = 1;
DELETE FROM st_item_relationship_subcategory WHERE merchant_id = 1;
INSERT INTO st_subcategory (subcat_id, merchant_id, subcategory_name, subcategory_description, featured_image, available, path, discount, sequence, status, date_created, date_modified, ip_address) VALUES
(1,1,'Extras','Vælg ekstra toppings, tilbehør eller dyppelse for en mere tilfredsstillende oplevelse','',1,'','',1,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(2,1,'Size','','',1,'','',2,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(3,1,'Dip','Vælg din dip','',1,'','',3,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(4,1,'Menu Drinks','','',1,'','',4,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(5,1,'Drikkevarer','Vælg mellem en række forskellige drikkevarer til din mad','',1,'','',5,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(6,1,'Salad Dip','','',1,'','',6,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(7,1,'Taco pålæg','Vælg mellem adskillige pålæg til dine tacos','',1,'','',7,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(8,1,'Taco dressing','Vælg en dressing for dine tacos','',1,'','',8,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(9,1,'Family Size','','',1,'','',9,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(10,1,'Family Drink','','',1,'','',10,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(11,1,'Extras Coffee','','',1,'','',11,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(12,1,'Coffee size','','',1,'','',12,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(13,1,'Tea','','',1,'','',13,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(14,1,'Extras icecream','','',1,'','',14,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50','');

-- ========== ADDON OPTIONS (subcategory items) ==========
INSERT INTO st_subcategory_item (sub_item_id, merchant_id, sub_item_name, item_description, category, price, available, photo, path, sequence, status, date_created, date_modified, ip_address) VALUES
(1,1,'Vegetarbøf','','','17.0',1,'vegetarbof.png','upload/subcategory_item/1/',1,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(2,1,'Oksekødsbøf','','','17.0',1,'oksekodsbof.png','upload/subcategory_item/2/',2,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(3,1,'Cordon Bleu','Kød viklet rundt om ost/med ostefyld','','17.0',1,'cordon-bleu.png','upload/subcategory_item/3/',3,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(4,1,'Karrykylling','','','17.0',1,'karrykylling.png','upload/subcategory_item/4/',4,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(5,1,'Kyllinge nuggets','','','17.0',1,'kyllinge-nuggets.png','upload/subcategory_item/5/',5,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(6,1,'Kyllingeinderfilet','','','17.0',1,'kyllingeinderfilet.png','upload/subcategory_item/6/',6,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(7,1,'Tikka kylling','Kylling marineret i tikka krydderier','','17.0',1,'tikka-kylling.png','upload/subcategory_item/7/',7,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(8,1,'Kyllingekebab','','','17.0',1,'kyllingekebab.png','upload/subcategory_item/8/',8,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(9,1,'Hash Brown kartoffel','','','17.0',1,'hash-brown-kartoffel.png','upload/subcategory_item/9/',9,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(10,1,'Løg','','','9.0',1,'log.png','upload/subcategory_item/10/',10,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(11,1,'Tomat','','','9.0',1,'tomat.png','upload/subcategory_item/11/',11,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(12,1,'Iceberg','Iceberg salat','','9.0',1,'iceberg.png','upload/subcategory_item/12/',12,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(13,1,'Cheddar','Cheddar ost','','11.0',1,'cheddar.png','upload/subcategory_item/13/',13,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(14,1,'Large Upgrade','','','11.0',1,'large-upgrade.png','upload/subcategory_item/14/',14,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(15,1,'Curry Mango 25g','Dyppelse/dressing','','9.0',1,'curry-mango-25g.png','upload/subcategory_item/15/',15,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(16,1,'Mayonnaise 25g','Dyppelse/dressing','','9.0',1,'mayonnaise-25g.png','upload/subcategory_item/16/',16,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(17,1,'Ketchup 25g','Dyppelse/dressing','','9.0',1,'ketchup-25g.png','upload/subcategory_item/17/',17,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(18,1,'Barbecue 25g','Dyppelse/dressing','','9.0',1,'barbecue-25g.png','upload/subcategory_item/18/',18,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(19,1,'Sweet & Sour 25g','Dyppelse/dressing','','9.0',1,'sweet-sour-25g.png','upload/subcategory_item/19/',19,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(20,1,'Hvidløg 25g','Dyppelse/dressing','','9.0',1,'hvidlog-25g.png','upload/subcategory_item/20/',20,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(21,1,'Peri Peri 30ml','Dyppelse/dressing','','9.0',1,'peri-peri-30ml.png','upload/subcategory_item/21/',21,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(22,1,'Algérienne 10g','Dyppelse/dressing','','6.0',1,'algerienne-10g.png','upload/subcategory_item/22/',22,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(23,1,'Biggy Burger 10g','Dyppelse/dressing','','6.0',1,'biggy-burger-10g.png','upload/subcategory_item/23/',23,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(24,1,'Samourai 10g','Dyppelse/dressing','','6.0',1,'samourai-10g.png','upload/subcategory_item/24/',24,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(25,1,'Mayonaise 10g','Dyppelse/dressing','','5.0',1,'mayonaise-10g.png','upload/subcategory_item/25/',25,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(26,1,'Ketchup 10g','Dyppelse/dressing','','5.0',1,'ketchup-10g.png','upload/subcategory_item/26/',26,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(27,1,'Pepsi','','','0.0',1,'pepsi.png','upload/subcategory_item/27/',27,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(28,1,'Pepsi Max','','','0.0',1,'pepsi-max.png','upload/subcategory_item/28/',28,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(29,1,'Faxe Kondi','','','0.0',1,'faxe-kondi.png','upload/subcategory_item/29/',29,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(30,1,'Faxe Kondi Zero','','','0.0',1,'faxe-kondi-zero.png','upload/subcategory_item/30/',30,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(31,1,'Faxe Kondi Appelsin','','','0.0',1,'faxe-kondi-appelsin.png','upload/subcategory_item/31/',31,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(32,1,'Mirinda lemon','','','0.0',1,'mirinda-lemon.png','upload/subcategory_item/32/',32,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(33,1,'Red Bull','Energi drink','','32.0',1,'red-bull.png','upload/subcategory_item/33/',33,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(34,1,'Pepsi 0.4l','Sodavand','','30.0',1,'pepsi-0-4l.png','upload/subcategory_item/34/',34,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(35,1,'Pepsi Max 0.4 l','Sodavand','','30.0',1,'pepsi-max-0-4-l.png','upload/subcategory_item/35/',35,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(36,1,'Faxe Kondi 0.4 l','Sodavand','','30.0',1,'faxe-kondi-0-4-l.png','upload/subcategory_item/36/',36,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(37,1,'Faxe Kondi Zero 0.4 l','Sodavand','','30.0',1,'faxe-kondi-zero-0-4-l.png','upload/subcategory_item/37/',37,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(38,1,'Faxe Kondi Appelsin 0.4 l','Sodavand','','30.0',1,'faxe-kondi-appelsin-0-4-l.png','upload/subcategory_item/38/',38,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(39,1,'Mirinda lemon 0.4 l','Sodavand','','30.0',1,'mirinda-lemon-0-4-l.png','upload/subcategory_item/39/',39,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(40,1,'Pepsi 0.5 l','Sodavand','','36.0',1,'pepsi-0-5-l.png','upload/subcategory_item/40/',40,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(41,1,'Pepsi Max 0.5 l','Sodavand','','36.0',1,'pepsi-max-0-5-l.png','upload/subcategory_item/41/',41,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(42,1,'Faxe Kondi 0.5 l','Sodavand','','36.0',1,'faxe-kondi-0-5-l.png','upload/subcategory_item/42/',42,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(43,1,'Faxe Kondi Zero 0.5 l','Sodavand','','36.0',1,'faxe-kondi-zero-0-5-l.png','upload/subcategory_item/43/',43,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(44,1,'Faxe Kondi Appelsin 0.5 l','Sodavand','','36.0',1,'faxe-kondi-appelsin-0-5-l.png','upload/subcategory_item/44/',44,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(45,1,'Mirinda lemon 0.5 l','Sodavand','','36.0',1,'mirinda-lemon-0-5-l.png','upload/subcategory_item/45/',45,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(46,1,'Pepsi Max 1.5 l','Sodavand','','42.0',1,'pepsi-max-1-5-l.png','upload/subcategory_item/46/',46,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(47,1,'Faxe Kondi 1.5l','Sodavand','','42.0',1,'faxe-kondi-1-5l.png','upload/subcategory_item/47/',47,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(48,1,'Danskvand 0.5l','Vand','','31.0',1,'danskvand-0-5l.png','upload/subcategory_item/48/',48,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(49,1,'Kildevand 0.5l','Vand','','31.0',1,'kildevand-0-5l.png','upload/subcategory_item/49/',49,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(50,1,'Capri-Sun','Juice','','17.0',1,'capri-sun.png','upload/subcategory_item/50/',50,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(51,1,'Vegetarbøf','','','0.0',1,'vegetarbof.png','upload/subcategory_item/51/',51,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(52,1,'Oksekødsbøf','','','0.0',1,'oksekodsbof.png','upload/subcategory_item/52/',52,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(53,1,'Cordon Bleu','','','0.0',1,'cordon-bleu.png','upload/subcategory_item/53/',53,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(54,1,'Karrykylling','','','0.0',1,'karrykylling.png','upload/subcategory_item/54/',54,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(55,1,'Kyllinge nuggets','','','0.0',1,'kyllinge-nuggets.png','upload/subcategory_item/55/',55,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(56,1,'Kyllingeinderfilet','','','0.0',1,'kyllingeinderfilet.png','upload/subcategory_item/56/',56,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(57,1,'Tikka kylling','Kylling marineret i tikka krydderier','','0.0',1,'tikka-kylling.png','upload/subcategory_item/57/',57,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(58,1,'Kyllingekebab','','','0.0',1,'kyllingekebab.png','upload/subcategory_item/58/',58,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(59,1,'Hash Brown kartoffel','','','0.0',1,'hash-brown-kartoffel.png','upload/subcategory_item/59/',59,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(60,1,'Cheddar','Cheddar ost','','0.0',1,'cheddar.png','upload/subcategory_item/60/',60,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(61,1,'Iceberg','Iceberg salat','','0.0',1,'iceberg.png','upload/subcategory_item/61/',61,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(62,1,'Tomat','','','0.0',1,'tomat.png','upload/subcategory_item/62/',62,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(63,1,'Løg','','','0.0',1,'log.png','upload/subcategory_item/63/',63,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(64,1,'Algérienne','Dyppelse/dressing','','0.0',1,'algerienne.png','upload/subcategory_item/64/',64,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(65,1,'Biggy Burger','Dyppelse/dressing','','0.0',1,'biggy-burger.png','upload/subcategory_item/65/',65,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(66,1,'Peri Peri','Dyppelse/dressing','','0.0',1,'peri-peri.png','upload/subcategory_item/66/',66,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(67,1,'Marocaine','Dyppelse/dressing','','0.0',1,'marocaine.png','upload/subcategory_item/67/',67,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(68,1,'Pitta Kebab','Dyppelse/dressing','','0.0',1,'pitta-kebab.png','upload/subcategory_item/68/',68,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(69,1,'Curry Mango','Dyppelse/dressing','','0.0',1,'curry-mango.png','upload/subcategory_item/69/',69,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(70,1,'Barbecue','Dyppelse/dressing','','0.0',1,'barbecue.png','upload/subcategory_item/70/',70,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(71,1,'Samourai','Dyppelse/dressing','','0.0',1,'samourai.png','upload/subcategory_item/71/',71,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(72,1,'Large Upgrade','','','33.0',1,'large-upgrade.png','upload/subcategory_item/72/',72,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(73,1,'Faxe Kondi','','','0.0',1,'faxe-kondi.png','upload/subcategory_item/73/',73,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(74,1,'Pepsi Max','','','0.0',1,'pepsi-max.png','upload/subcategory_item/74/',74,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(75,1,'Ektra - Ekstra espresso shot','Kaffe','','7.0',1,'ektra-ekstra-espresso-shot.png','upload/subcategory_item/75/',75,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(76,1,'Ekstra - Monin Chocolate','Sirup','','7.0',1,'ekstra-monin-chocolate.png','upload/subcategory_item/76/',76,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(77,1,'Ekstra - Monin Karamel Sukkerfri','Sirup','','7.0',1,'ekstra-monin-karamel-sukkerfri.png','upload/subcategory_item/77/',77,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(78,1,'Ekstra - Monin Vanilje Sukkerfri','Sirup','','7.0',1,'ekstra-monin-vanilje-sukkerfri.png','upload/subcategory_item/78/',78,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(79,1,'Ekstra - Monin Pumpkin Spice','Sirup','','7.0',1,'ekstra-monin-pumpkin-spice.png','upload/subcategory_item/79/',79,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(80,1,'Large Upgrade','','','6.0',1,'large-upgrade.png','upload/subcategory_item/80/',80,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(81,1,'Pukka - After Dinner','','','0.0',1,'pukka-after-dinner.png','upload/subcategory_item/81/',81,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(82,1,'Pukka - Green Collection','','','0.0',1,'pukka-green-collection.png','upload/subcategory_item/82/',82,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(83,1,'Pukka - Supreme Matcha Green','','','0.0',1,'pukka-supreme-matcha-green.png','upload/subcategory_item/83/',83,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(84,1,'Pukka - Winter Warmer','','','0.0',1,'pukka-winter-warmer.png','upload/subcategory_item/84/',84,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(85,1,'Ekstra - Monin Chocolate','Sirup','','7.0',1,'ekstra-monin-chocolate.png','upload/subcategory_item/85/',85,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(86,1,'Ekstra - Monin Karamel Sukkerfri','Sirup','','7.0',1,'ekstra-monin-karamel-sukkerfri.png','upload/subcategory_item/86/',86,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(87,1,'Ekstra - Monin Vanilje Sukkerfri','Sirup','','7.0',1,'ekstra-monin-vanilje-sukkerfri.png','upload/subcategory_item/87/',87,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(88,1,'Ekstra - Monin Pumpkin Spice','Sirup','','7.0',1,'ekstra-monin-pumpkin-spice.png','upload/subcategory_item/88/',88,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(89,1,'Ekstra - Tivoli Drys','Drys','','7.0',1,'ekstra-tivoli-drys.png','upload/subcategory_item/89/',89,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(90,1,'Ekstra - Smarties Drys','Drys','','7.0',1,'ekstra-smarties-drys.png','upload/subcategory_item/90/',90,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(91,1,'Ekstra - Oreo Drys','Drys','','7.0',1,'ekstra-oreo-drys.png','upload/subcategory_item/91/',91,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(92,1,'Ekstra - Flødeskum','','','7.0',1,'ekstra-flodeskum.png','upload/subcategory_item/92/',92,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50',''),
(93,1,'Ekstra - Kinder Maxi','Chokolade','','7.0',1,'ekstra-kinder-maxi.png','upload/subcategory_item/93/',93,'publish','2026-04-06 07:25:50','2026-04-06 07:25:50','');

INSERT INTO st_subcategory_item_relationships (id, merchant_id, subcat_id, sub_item_id, sequence) VALUES
(1,1,1,1,1),
(2,1,1,2,2),
(3,1,1,3,3),
(4,1,1,4,4),
(5,1,1,5,5),
(6,1,1,6,6),
(7,1,1,7,7),
(8,1,1,8,8),
(9,1,1,9,9),
(10,1,1,10,10),
(11,1,1,11,11),
(12,1,1,12,12),
(13,1,1,13,13),
(14,1,2,14,14),
(15,1,3,15,15),
(16,1,3,16,16),
(17,1,3,17,17),
(18,1,3,18,18),
(19,1,3,19,19),
(20,1,3,20,20),
(21,1,3,21,21),
(22,1,3,22,22),
(23,1,3,23,23),
(24,1,3,24,24),
(25,1,3,25,25),
(26,1,3,26,26),
(27,1,4,27,27),
(28,1,4,28,28),
(29,1,4,29,29),
(30,1,4,30,30),
(31,1,4,31,31),
(32,1,4,32,32),
(33,1,5,33,33),
(34,1,5,34,34),
(35,1,5,35,35),
(36,1,5,36,36),
(37,1,5,37,37),
(38,1,5,38,38),
(39,1,5,39,39),
(40,1,5,40,40),
(41,1,5,41,41),
(42,1,5,42,42),
(43,1,5,43,43),
(44,1,5,44,44),
(45,1,5,45,45),
(46,1,5,46,46),
(47,1,5,47,47),
(48,1,5,48,48),
(49,1,5,49,49),
(50,1,5,50,50),
(51,1,7,51,51),
(52,1,7,52,52),
(53,1,7,53,53),
(54,1,7,54,54),
(55,1,7,55,55),
(56,1,7,56,56),
(57,1,7,57,57),
(58,1,7,58,58),
(59,1,7,59,59),
(60,1,7,60,60),
(61,1,7,61,61),
(62,1,7,62,62),
(63,1,7,63,63),
(64,1,8,64,64),
(65,1,8,65,65),
(66,1,8,66,66),
(67,1,8,67,67),
(68,1,8,68,68),
(69,1,8,69,69),
(70,1,8,70,70),
(71,1,8,71,71),
(72,1,9,72,72),
(73,1,10,73,73),
(74,1,10,74,74),
(75,1,11,75,75),
(76,1,11,76,76),
(77,1,11,77,77),
(78,1,11,78,78),
(79,1,11,79,79),
(80,1,12,80,80),
(81,1,13,81,81),
(82,1,13,82,82),
(83,1,13,83,83),
(84,1,13,84,84),
(85,1,14,85,85),
(86,1,14,86,86),
(87,1,14,87,87),
(88,1,14,88,88),
(89,1,14,89,89),
(90,1,14,90,90),
(91,1,14,91,91),
(92,1,14,92,92),
(93,1,14,93,93);

-- ========== ITEM ↔ ADDON GROUP LINKS ==========
INSERT INTO st_item_relationship_subcategory (id, merchant_id, item_id, item_size_id, subcat_id, multi_option, multi_option_min, multi_option_value, require_addon, pre_selected, sequence) VALUES
(1,1,1,1,1,'multiple',0,'20',0,0,1),
(2,1,2,2,2,'single',0,'1',0,0,1),
(3,1,2,2,1,'multiple',0,'15',0,0,2),
(4,1,2,2,3,'multiple',0,'20',0,0,3),
(5,1,2,2,4,'single',0,'1',1,0,4),
(6,1,3,3,2,'single',0,'1',0,0,1),
(7,1,3,3,1,'multiple',0,'20',0,0,2),
(8,1,3,3,3,'multiple',0,'20',0,0,3),
(9,1,3,3,4,'single',0,'1',1,0,4),
(10,1,4,4,2,'single',0,'1',0,0,1),
(11,1,4,4,1,'multiple',0,'20',0,0,2),
(12,1,4,4,3,'multiple',0,'20',0,0,3),
(13,1,4,4,4,'single',0,'1',1,0,4),
(14,1,5,5,2,'single',0,'1',0,0,1),
(15,1,5,5,1,'multiple',0,'20',0,0,2),
(16,1,5,5,3,'multiple',0,'20',0,0,3),
(17,1,5,5,4,'single',0,'1',1,0,4),
(18,1,6,6,2,'single',0,'1',0,0,1),
(19,1,6,6,1,'multiple',0,'20',0,0,2),
(20,1,6,6,3,'multiple',0,'20',0,0,3),
(21,1,6,6,4,'single',0,'1',1,0,4),
(22,1,7,7,1,'multiple',0,'20',0,0,1),
(23,1,8,8,1,'multiple',0,'20',0,0,1),
(24,1,9,9,1,'multiple',0,'20',0,0,1),
(25,1,10,10,1,'multiple',0,'20',0,0,1),
(26,1,11,11,1,'multiple',0,'20',0,0,1),
(27,1,12,12,1,'multiple',0,'20',0,0,1),
(28,1,13,13,2,'single',0,'1',0,0,1),
(29,1,13,13,1,'multiple',0,'20',0,0,2),
(30,1,13,13,3,'multiple',0,'20',0,0,3),
(31,1,13,13,4,'single',0,'1',1,0,4),
(32,1,14,14,2,'single',0,'1',0,0,1),
(33,1,14,14,1,'multiple',0,'20',0,0,2),
(34,1,14,14,3,'multiple',0,'20',0,0,3),
(35,1,14,14,4,'single',0,'1',1,0,4),
(36,1,15,15,2,'single',0,'1',0,0,1),
(37,1,15,15,1,'multiple',0,'20',0,0,2),
(38,1,15,15,3,'multiple',0,'20',0,0,3),
(39,1,15,15,4,'single',0,'1',1,0,4),
(40,1,16,16,2,'single',0,'1',0,0,1),
(41,1,16,16,1,'multiple',0,'20',0,0,2),
(42,1,16,16,3,'multiple',0,'20',0,0,3),
(43,1,16,16,4,'single',0,'1',1,0,4),
(44,1,17,17,2,'single',0,'1',0,0,1),
(45,1,17,17,1,'multiple',0,'20',0,0,2),
(46,1,17,17,3,'multiple',0,'20',0,0,3),
(47,1,17,17,4,'single',0,'1',1,0,4),
(48,1,18,18,2,'single',0,'1',0,0,1),
(49,1,18,18,1,'multiple',0,'20',0,0,2),
(50,1,18,18,3,'multiple',0,'20',0,0,3),
(51,1,18,18,4,'single',0,'1',1,0,4),
(52,1,19,19,2,'single',0,'1',0,0,1),
(53,1,19,19,1,'multiple',0,'20',0,0,2),
(54,1,19,19,3,'multiple',0,'20',0,0,3),
(55,1,19,19,4,'single',0,'1',1,0,4),
(56,1,20,20,2,'single',0,'1',0,0,1),
(57,1,20,20,1,'multiple',0,'20',0,0,2),
(58,1,20,20,3,'multiple',0,'20',0,0,3),
(59,1,20,20,4,'single',0,'1',1,0,4),
(60,1,21,21,2,'single',0,'1',0,0,1),
(61,1,21,21,1,'multiple',0,'20',0,0,2),
(62,1,21,21,3,'multiple',0,'20',0,0,3),
(63,1,21,21,4,'single',0,'1',1,0,4),
(64,1,22,22,2,'single',0,'1',0,0,1),
(65,1,22,22,1,'multiple',0,'20',0,0,2),
(66,1,22,22,3,'multiple',0,'20',0,0,3),
(67,1,22,22,4,'single',0,'1',1,0,4),
(68,1,23,23,2,'single',0,'1',0,0,1),
(69,1,23,23,1,'multiple',0,'20',0,0,2),
(70,1,23,23,3,'multiple',0,'20',0,0,3),
(71,1,23,23,4,'single',0,'1',1,0,4),
(72,1,24,24,1,'multiple',0,'20',0,0,1),
(73,1,25,25,1,'multiple',0,'20',0,0,1),
(74,1,26,26,1,'multiple',0,'20',0,0,1),
(75,1,27,27,1,'multiple',0,'20',0,0,1),
(76,1,28,28,1,'multiple',0,'20',0,0,1),
(77,1,29,29,1,'multiple',0,'20',0,0,1),
(78,1,30,30,1,'multiple',0,'20',0,0,1),
(79,1,31,31,1,'multiple',0,'20',0,0,1),
(80,1,32,32,1,'multiple',0,'20',0,0,1),
(81,1,33,33,1,'multiple',0,'20',0,0,1),
(82,1,34,34,1,'multiple',0,'20',0,0,1),
(83,1,34,34,5,'multiple',0,'20',0,0,2),
(84,1,34,34,6,'multiple',0,'20',0,0,3),
(85,1,35,35,1,'multiple',0,'20',0,0,1),
(86,1,35,35,5,'multiple',0,'20',0,0,2),
(87,1,35,35,6,'multiple',0,'6',0,0,3),
(88,1,36,36,1,'multiple',0,'20',0,0,1),
(89,1,36,36,5,'multiple',0,'20',0,0,2),
(90,1,36,36,6,'multiple',0,'6',0,0,3),
(91,1,38,38,7,'single',0,'1',1,0,1),
(92,1,38,38,8,'single',0,'1',1,0,2),
(93,1,38,38,4,'single',0,'1',1,0,3),
(94,1,38,38,3,'multiple',0,'20',0,0,4),
(95,1,39,39,7,'multiple',0,'2',1,0,1),
(96,1,39,39,8,'single',0,'1',1,0,2),
(97,1,39,39,3,'multiple',0,'20',0,0,3),
(98,1,39,39,4,'single',0,'1',1,0,4),
(99,1,40,40,7,'multiple',0,'3',1,0,1),
(100,1,40,40,8,'single',0,'1',1,0,2),
(101,1,40,40,3,'multiple',0,'20',0,0,3),
(102,1,40,40,4,'single',0,'1',1,0,4),
(103,1,41,41,1,'multiple',0,'20',0,0,1),
(104,1,41,41,2,'single',0,'1',0,0,2),
(105,1,41,41,3,'multiple',0,'20',0,0,3),
(106,1,41,41,4,'single',0,'1',1,0,4),
(107,1,42,42,2,'single',0,'1',0,0,1),
(108,1,42,42,1,'multiple',0,'20',0,0,2),
(109,1,42,42,3,'multiple',0,'20',0,0,3),
(110,1,42,42,4,'single',0,'1',1,0,4),
(111,1,43,43,2,'single',0,'1',0,0,1),
(112,1,43,43,1,'multiple',0,'20',0,0,2),
(113,1,43,43,3,'multiple',0,'20',0,0,3),
(114,1,43,43,4,'single',0,'1',1,0,4),
(115,1,44,44,7,'single',0,'1',1,0,1),
(116,1,44,44,8,'single',0,'1',1,0,2),
(117,1,45,45,7,'multiple',0,'2',1,0,1),
(118,1,45,45,8,'single',0,'1',1,0,2),
(119,1,46,46,7,'multiple',0,'3',1,0,1),
(120,1,46,46,8,'single',0,'1',1,0,2),
(121,1,47,47,1,'multiple',0,'20',0,0,1),
(122,1,48,48,1,'multiple',0,'20',0,0,1),
(123,1,49,49,1,'multiple',0,'20',0,0,1),
(124,1,50,50,3,'multiple',0,'20',0,0,1),
(125,1,50,50,9,'single',0,'1',0,0,2),
(126,1,50,50,10,'single',0,'1',1,0,3),
(127,1,51,51,3,'multiple',0,'20',0,0,1),
(128,1,51,51,9,'single',0,'1',0,0,2),
(129,1,51,51,10,'single',0,'1',1,0,3),
(130,1,52,52,3,'multiple',0,'20',0,0,1),
(131,1,52,52,9,'single',0,'1',0,0,2),
(132,1,52,52,10,'single',0,'1',1,0,3),
(133,1,53,53,3,'multiple',0,'20',0,0,1),
(134,1,53,53,9,'single',0,'1',0,0,2),
(135,1,53,53,10,'single',0,'1',1,0,3),
(136,1,54,54,3,'multiple',0,'20',0,0,1),
(137,1,54,54,9,'single',0,'1',0,0,2),
(138,1,54,54,10,'single',0,'1',1,0,3),
(139,1,55,55,3,'multiple',0,'20',0,0,1),
(140,1,55,55,9,'single',0,'1',0,0,2),
(141,1,55,55,10,'single',0,'1',1,0,3),
(142,1,56,56,3,'multiple',0,'20',0,0,1),
(143,1,56,56,2,'single',0,'1',0,0,2),
(144,1,56,56,4,'single',0,'1',1,0,3),
(145,1,57,57,3,'multiple',0,'20',0,0,1),
(146,1,57,57,2,'single',0,'1',0,0,2),
(147,1,57,57,4,'single',0,'1',1,0,3),
(148,1,58,58,2,'single',0,'1',0,0,1),
(149,1,58,58,3,'multiple',0,'20',0,0,2),
(150,1,58,58,4,'single',0,'1',1,0,3),
(151,1,59,59,3,'multiple',0,'20',0,0,1),
(152,1,59,59,2,'single',0,'1',0,0,2),
(153,1,59,59,4,'single',0,'1',1,0,3),
(154,1,60,60,3,'multiple',0,'20',0,0,1),
(155,1,60,60,2,'single',0,'1',0,0,2),
(156,1,60,60,4,'single',0,'1',1,0,3),
(157,1,61,61,3,'multiple',0,'20',0,0,1),
(158,1,61,61,2,'single',0,'1',0,0,2),
(159,1,61,61,4,'single',0,'1',1,0,3),
(160,1,62,62,2,'single',0,'1',0,0,1),
(161,1,62,62,3,'multiple',0,'20',0,0,2),
(162,1,62,62,4,'single',0,'1',1,0,3),
(163,1,63,63,2,'single',0,'1',0,0,1),
(164,1,63,63,3,'multiple',0,'20',0,0,2),
(165,1,63,63,4,'single',0,'1',1,0,3),
(166,1,64,64,3,'multiple',0,'20',0,0,1),
(167,1,64,64,2,'single',0,'1',0,0,2),
(168,1,64,64,4,'single',0,'1',1,0,3),
(169,1,65,65,3,'multiple',0,'20',0,0,1),
(170,1,65,65,2,'single',0,'1',0,0,2),
(171,1,65,65,4,'single',0,'1',1,0,3),
(172,1,66,66,3,'multiple',0,'20',0,0,1),
(173,1,66,66,2,'single',0,'1',0,0,2),
(174,1,66,66,4,'single',0,'1',1,0,3),
(175,1,67,67,3,'multiple',0,'20',0,0,1),
(176,1,67,67,2,'single',0,'1',0,0,2),
(177,1,67,67,4,'single',0,'1',1,0,3),
(178,1,68,68,3,'multiple',0,'20',0,0,1),
(179,1,69,69,3,'multiple',0,'20',0,0,1),
(180,1,70,70,3,'multiple',0,'20',0,0,1),
(181,1,71,71,3,'multiple',0,'20',0,0,1),
(182,1,72,72,3,'multiple',0,'20',0,0,1),
(183,1,73,73,3,'multiple',0,'20',0,0,1),
(184,1,74,74,3,'multiple',0,'20',0,0,1),
(185,1,75,75,3,'multiple',0,'20',0,0,1),
(186,1,76,76,3,'multiple',0,'20',0,0,1),
(187,1,77,77,3,'multiple',0,'20',0,0,1),
(188,1,78,78,3,'multiple',0,'20',0,0,1),
(189,1,79,79,3,'multiple',0,'20',0,0,1),
(190,1,80,80,3,'multiple',0,'20',0,0,1),
(191,1,81,81,3,'multiple',0,'20',0,0,1),
(192,1,82,82,3,'multiple',0,'20',0,0,1),
(193,1,83,83,3,'multiple',0,'20',0,0,1),
(194,1,84,84,3,'multiple',0,'20',0,0,1),
(195,1,85,85,3,'multiple',0,'20',0,0,1),
(196,1,86,86,3,'multiple',0,'20',0,0,1),
(197,1,87,87,3,'multiple',0,'20',0,0,1),
(198,1,88,88,3,'multiple',0,'20',0,0,1),
(199,1,89,89,3,'multiple',0,'20',0,0,1),
(200,1,89,89,1,'multiple',0,'20',0,0,2),
(201,1,90,90,3,'multiple',0,'20',0,0,1),
(202,1,90,90,1,'multiple',0,'20',0,0,2),
(203,1,91,91,3,'multiple',0,'20',0,0,1),
(204,1,91,91,1,'multiple',0,'20',0,0,2),
(205,1,92,92,3,'multiple',0,'20',0,0,1),
(206,1,92,92,1,'multiple',0,'20',0,0,2),
(207,1,93,93,3,'multiple',0,'20',0,0,1),
(208,1,93,93,5,'multiple',0,'20',0,0,2),
(209,1,94,94,3,'multiple',0,'20',0,0,1),
(210,1,94,94,5,'multiple',0,'20',0,0,2),
(211,1,95,95,3,'multiple',0,'20',0,0,1),
(212,1,95,95,5,'multiple',0,'20',0,0,2),
(213,1,96,96,3,'multiple',0,'20',0,0,1),
(214,1,96,96,5,'multiple',0,'20',0,0,2),
(215,1,97,97,3,'multiple',0,'20',0,0,1),
(216,1,97,97,5,'multiple',0,'20',0,0,2),
(217,1,98,98,3,'multiple',0,'20',0,0,1),
(218,1,98,98,5,'multiple',0,'20',0,0,2),
(219,1,99,99,3,'multiple',0,'20',0,0,1),
(220,1,99,99,5,'multiple',0,'20',0,0,2),
(221,1,100,100,3,'multiple',0,'20',0,0,1),
(222,1,100,100,5,'multiple',0,'20',0,0,2),
(223,1,101,101,3,'multiple',0,'20',0,0,1),
(224,1,101,101,5,'multiple',0,'20',0,0,2),
(225,1,114,114,11,'single',0,'1',0,0,1),
(226,1,114,114,12,'single',0,'1',0,0,2),
(227,1,115,115,13,'single',0,'1',1,0,1),
(228,1,115,115,12,'single',0,'1',0,0,2),
(229,1,116,116,11,'single',0,'1',0,0,1),
(230,1,116,116,12,'single',0,'1',0,0,2),
(231,1,117,117,11,'single',0,'1',0,0,1),
(232,1,117,117,12,'single',0,'1',0,0,2),
(233,1,118,118,11,'single',0,'1',0,0,1),
(234,1,118,118,12,'single',0,'1',0,0,2),
(235,1,119,119,11,'single',0,'1',0,0,1),
(236,1,119,119,12,'single',0,'1',0,0,2),
(237,1,120,120,11,'single',0,'1',0,0,1),
(238,1,120,120,12,'single',0,'1',0,0,2),
(239,1,121,121,11,'single',0,'1',0,0,1),
(240,1,122,122,11,'multiple',0,'20',0,0,1),
(241,1,123,123,11,'single',0,'1',0,0,1),
(242,1,127,127,14,'multiple',0,'20',0,0,1),
(243,1,128,128,14,'single',0,'1',0,0,1),
(244,1,129,129,14,'single',0,'1',0,0,1),
(245,1,130,130,14,'single',0,'1',0,0,1),
(246,1,131,131,14,'single',0,'1',0,0,1),
(247,1,132,132,14,'multiple',0,'20',0,0,1);

SET FOREIGN_KEY_CHECKS = 1;

-- Summary: 11 categories, 150 items, 14 addon groups, 93 addon options, 247 item-addon links
-- Price markup: 1.1x (10% increase)

-- ========== FIX OPENING HOURS (10:00-22:00 Copenhagen) ==========
UPDATE st_opening_hours SET start_time = '10:00', end_time = '22:00' WHERE merchant_id = 0;
UPDATE st_opening_hours SET start_time = '10:00', end_time = '22:00' WHERE merchant_id = 1;
