-- MySQL dump 10.13  Distrib 5.7.25, for Linux (x86_64)
--
-- Host: localhost    Database: musashinohd
-- ------------------------------------------------------
-- Server version	5.7.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `daily_work_reports`
--

DROP TABLE IF EXISTS `daily_work_reports`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `daily_work_reports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `work_classification_id` int(11) DEFAULT NULL,
  `work_schedule_id` int(11) DEFAULT NULL,
  `report_date` date DEFAULT NULL,
  `cause` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `failure_degree` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `completion` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_start_time` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `work_end_time` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `situation` text COLLATE utf8_unicode_ci,
  `cause_details` text COLLATE utf8_unicode_ci,
  `fix` text COLLATE utf8_unicode_ci,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `company_id` (`company_id`),
  KEY `factory_id` (`factory_id`),
  KEY `equipment_id` (`equipment_id`),
  KEY `staff_id` (`staff_id`),
  KEY `work_classification_id` (`work_classification_id`),
  KEY `work_schedule_id` (`work_schedule_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_work_reports`
--

LOCK TABLES `daily_work_reports` WRITE;
/*!40000 ALTER TABLE `daily_work_reports` DISABLE KEYS */;
INSERT INTO `daily_work_reports` VALUES (1,NULL,1,1,1,NULL,6,'2019-05-29',NULL,NULL,NULL,'19:20:00',NULL,'2019/05/01 ',NULL,NULL,NULL,NULL,NULL,NULL,'2019-05-01 21:34:41','2019-05-01 21:34:41'),(2,NULL,1,1,1,NULL,6,'2019-04-30',NULL,NULL,NULL,'18:20:00',NULL,'2019/04/30 ',NULL,NULL,NULL,NULL,NULL,NULL,'2019-05-01 21:34:41','2019-05-01 21:34:41');
/*!40000 ALTER TABLE `daily_work_reports` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `equipments`
--

DROP TABLE IF EXISTS `equipments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `equipments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factory_id` int(11) DEFAULT NULL,
  `asset_ledger_id` int(11) DEFAULT NULL,
  `location` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category1` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `category2` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `machine_category` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `manufacture_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `specification_no` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `line_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_management_number` char(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `branch_number` char(3) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `latest_maintenance_date` date DEFAULT NULL,
  `work_result` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `factory_id` (`factory_id`),
  KEY `asset_ledger_id` (`asset_ledger_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `equipments`
--

LOCK TABLES `equipments` WRITE;
/*!40000 ALTER TABLE `equipments` DISABLE KEYS */;
INSERT INTO `equipments` VALUES (1,1,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'012345','001',NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 22:51:37','2019-04-30 22:51:37'),(2,1,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'372612','002',NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 22:51:37','2019-04-30 22:51:37'),(3,2,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL,'822638','001',NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 22:51:37','2019-04-30 22:51:37');
/*!40000 ALTER TABLE `equipments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factories`
--

DROP TABLE IF EXISTS `factories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `factories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `no` char(3) COLLATE utf8_unicode_ci NOT NULL,
  `department_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `asset_layout_file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `daily_switching_time` char(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `company_id` (`company_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factories`
--

LOCK TABLES `factories` WRITE;
/*!40000 ALTER TABLE `factories` DISABLE KEYS */;
INSERT INTO `factories` VALUES (1,1,'001','01','saitama',NULL,NULL,'06:00',NULL,NULL,NULL,'2019-04-29 21:53:16','2019-04-29 21:53:16'),(2,1,'002','02','asaka',NULL,NULL,'06:00',NULL,NULL,NULL,'2019-04-29 21:53:16','2019-04-29 21:53:16'),(3,1,'003','03','yokohama',NULL,NULL,'06:00',NULL,NULL,'2019-04-29 21:53:16','2019-04-29 21:53:16','2019-04-29 21:53:16');
/*!40000 ALTER TABLE `factories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `job` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `staff_id` (`staff_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,6,24,NULL,NULL,NULL,'2019-11-09 14:18:47','2019-11-09 14:18:47'),(2,2,32,NULL,NULL,NULL,'2019-11-09 14:21:51','2019-11-09 14:21:51');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `report_images`
--

DROP TABLE IF EXISTS `report_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `report_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_work_report_id` int(11) DEFAULT NULL,
  `file_path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `daily_work_report_id` (`daily_work_report_id`),
  KEY `idx_deleted_date` (`deleted_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `report_images`
--

LOCK TABLES `report_images` WRITE;
/*!40000 ALTER TABLE `report_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `report_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staffs`
--

DROP TABLE IF EXISTS `staffs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staffs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id` int(11) DEFAULT NULL,
  `factory_id` int(11) DEFAULT NULL,
  `code` char(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `roman_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position_code` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `company_id` (`company_id`),
  KEY `factory_id` (`factory_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staffs`
--

LOCK TABLES `staffs` WRITE;
/*!40000 ALTER TABLE `staffs` DISABLE KEYS */;
INSERT INTO `staffs` VALUES (1,NULL,1,'12345678','dfsf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-24 23:12:44','2019-04-30 17:29:56'),(2,NULL,2,'12345600','sjgf',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-24 23:13:26','2019-04-24 23:13:26'),(3,NULL,3,'1345342','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-24 23:14:08','2019-04-24 23:14:08'),(4,NULL,1,'12321178','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 18:11:26','2019-04-30 18:11:26'),(5,NULL,1,'82766844','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 18:12:01','2019-04-30 18:12:01'),(6,NULL,3,'01234567','aaa',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-11-09 12:31:49','2019-11-09 14:18:47');
/*!40000 ALTER TABLE `staffs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `work_schedules`
--

DROP TABLE IF EXISTS `work_schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `work_schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `factory_id` int(11) DEFAULT NULL,
  `equipment_id` int(11) DEFAULT NULL,
  `work_id` int(11) DEFAULT NULL,
  `work_classification_id` int(11) DEFAULT NULL,
  `work_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `status` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `overview` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `factory_id` (`factory_id`),
  KEY `equipment_id` (`equipment_id`),
  KEY `work_id` (`work_id`),
  KEY `work_classification_id` (`work_classification_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `work_schedules`
--

LOCK TABLES `work_schedules` WRITE;
/*!40000 ALTER TABLE `work_schedules` DISABLE KEYS */;
INSERT INTO `work_schedules` VALUES (1,1,2,1,2,'2019-04-25',NULL,'3',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45'),(2,1,2,1,2,'2019-04-27',NULL,'2',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45'),(3,1,2,1,2,'2019-04-29',NULL,'1',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45'),(4,1,2,1,2,'2019-05-01',NULL,'1',NULL,NULL,'edit....edit....',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-05-02 00:47:38'),(5,1,2,1,2,'2019-05-10',NULL,'1',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45'),(6,1,1,3,1,'2019-04-29',NULL,'1',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45'),(7,1,1,3,1,'2019-04-30',NULL,'2',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45'),(8,2,3,4,1,'2019-04-29',NULL,'1',NULL,NULL,'',NULL,NULL,NULL,'2019-04-30 23:15:45','2019-04-30 23:15:45');
/*!40000 ALTER TABLE `work_schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `workers`
--

DROP TABLE IF EXISTS `workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `workers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `daily_work_report_id` int(11) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `daily_work_report_id` (`daily_work_report_id`),
  KEY `staff_id` (`staff_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `workers`
--

LOCK TABLES `workers` WRITE;
/*!40000 ALTER TABLE `workers` DISABLE KEYS */;
/*!40000 ALTER TABLE `workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `works`
--

DROP TABLE IF EXISTS `works`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `works` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `equipment_id` int(11) DEFAULT NULL,
  `inspection_id` int(11) DEFAULT NULL,
  `work_classification_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cycle` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `times` int(11) DEFAULT NULL,
  `work_time` decimal(5,2) DEFAULT NULL,
  `overview` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `method` varchar(2048) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remarks` text COLLATE utf8_unicode_ci,
  `deleted` tinyint(1) DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `equipment_id` (`equipment_id`),
  KEY `work_classification_id` (`work_classification_id`),
  KEY `inspection_id` (`inspection_id`),
  KEY `idx_deleted_date` (`deleted_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works`
--

LOCK TABLES `works` WRITE;
/*!40000 ALTER TABLE `works` DISABLE KEYS */;
INSERT INTO `works` VALUES (1,2,NULL,2,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 23:02:49','2019-04-30 23:02:49'),(2,1,NULL,3,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 23:02:49','2019-04-30 23:02:49'),(3,1,NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 23:02:49','2019-04-30 23:02:49'),(4,3,NULL,1,'',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2019-04-30 23:02:49','2019-04-30 23:02:49');
/*!40000 ALTER TABLE `works` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-11-10 14:42:39
