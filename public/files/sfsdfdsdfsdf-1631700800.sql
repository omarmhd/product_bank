-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: mpwh
-- ------------------------------------------------------
-- Server version	8.0.23

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `buildings`
--

DROP TABLE IF EXISTS `buildings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buildings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_project` bigint unsigned NOT NULL,
  `num_building` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `num_apartment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `size_apartment` double DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orientation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `buildings_num_apartment_unique` (`num_apartment`),
  KEY `buildings_id_project_foreign` (`id_project`),
  CONSTRAINT `buildings_id_project_foreign` FOREIGN KEY (`id_project`) REFERENCES `projects` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buildings`
--

LOCK TABLES `buildings` WRITE;
/*!40000 ALTER TABLE `buildings` DISABLE KEYS */;
INSERT INTO `buildings` VALUES (1,1,'1','106',105,'1','غربي','مشطبة','2021-09-13 10:51:42',NULL,NULL),(2,2,'250','108',120,'2','شرقي','مشطبة','2021-09-13 10:51:42',NULL,NULL),(3,3,'88','110',70,'4','شمالي','عظم','2021-09-13 10:51:42',NULL,NULL);
/*!40000 ALTER TABLE `buildings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `buildings_BEFORE_INSERT` BEFORE INSERT ON `buildings` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `buildings_BEFORE_UPDATE` BEFORE UPDATE ON `buildings` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `dottings`
--

DROP TABLE IF EXISTS `dottings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dottings` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_dotting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `degree_dotting` int NOT NULL,
  `method_show` tinyint(1) NOT NULL,
  `sub_dotting` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dottings`
--

LOCK TABLES `dottings` WRITE;
/*!40000 ALTER TABLE `dottings` DISABLE KEYS */;
INSERT INTO `dottings` VALUES (1,'إعاقة',10,1,NULL,'2021-09-13 10:51:40',NULL,NULL),(2,'كبار سن',20,0,NULL,'2021-09-13 10:51:41',NULL,NULL),(3,'معيل',30,0,NULL,'2021-09-13 10:51:41',NULL,NULL),(4,'وفاة',40,1,NULL,'2021-09-13 10:51:41',NULL,NULL);
/*!40000 ALTER TABLE `dottings` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `dottings_data_BEFORE_INSERT` BEFORE INSERT ON `dottings` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `dottings_BEFORE_UPDATE` BEFORE UPDATE ON `dottings` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_permissions`
--

DROP TABLE IF EXISTS `group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `group_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_permissions`
--

LOCK TABLES `group_permissions` WRITE;
/*!40000 ALTER TABLE `group_permissions` DISABLE KEYS */;
INSERT INTO `group_permissions` VALUES (1,'طلبات الإنتفاع','2021-09-13 10:51:42',NULL,NULL),(2,'البحث الإجتماعي - التنقيط','2021-09-13 10:51:42',NULL,NULL),(3,'المشاريع','2021-09-13 10:51:42',NULL,NULL),(4,'الشقق السكنية','2021-09-13 10:51:42',NULL,NULL),(5,'المستخدمين','2021-09-13 10:51:43',NULL,NULL),(6,'الإعدادت - ثواب النظام','2021-09-13 10:51:43',NULL,NULL),(7,'الإعدادت - صلاحيات المستخدم','2021-09-13 10:51:43',NULL,NULL),(8,'الإعدادت - صلاحيات النوع','2021-09-13 10:51:43',NULL,NULL);
/*!40000 ALTER TABLE `group_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `group_permissions_BEFORE_INSERT` BEFORE INSERT ON `group_permissions` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `group_permissions_BEFORE_UPDATE` BEFORE UPDATE ON `group_permissions` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `group_permissions_AFTER_UPDATE` AFTER UPDATE ON `group_permissions` FOR EACH ROW BEGIN
                    update permissions set deleted_at=new.deleted_at where id_group=old.id;
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `list_menuses`
--

DROP TABLE IF EXISTS `list_menuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `list_menuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_sub_menus` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `list_menuses_id_sub_menus_foreign` (`id_sub_menus`),
  CONSTRAINT `list_menuses_id_sub_menus_foreign` FOREIGN KEY (`id_sub_menus`) REFERENCES `sub_menuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `list_menuses`
--

LOCK TABLES `list_menuses` WRITE;
/*!40000 ALTER TABLE `list_menuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `list_menuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user` bigint unsigned DEFAULT NULL,
  `ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mac` varchar(17) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_row` int DEFAULT NULL,
  `type_event` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_ajax` tinyint(1) DEFAULT NULL,
  `values` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `logs_BEFORE_INSERT` BEFORE INSERT ON `logs` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `logs_BEFORE_UPDATE` BEFORE UPDATE ON `logs` FOR EACH ROW BEGIN
                signal sqlstate '48101' set  message_text='Your cant not  edit this is table ';
           END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `logs_BEFORE_DELETE` BEFORE DELETE ON `logs` FOR EACH ROW BEGIN
                signal sqlstate '48102' set  message_text='Your cant not  Delete this is row ';
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `menuses`
--

DROP TABLE IF EXISTS `menuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `have_sub` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menuses`
--

LOCK TABLES `menuses` WRITE;
/*!40000 ALTER TABLE `menuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `menuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_07_29_105709_create_group_permissions_table',1),(2,'2014_08_01_072000_create_permissions_table',1),(3,'2014_08_01_072014_create_roles_table',1),(4,'2014_10_12_000000_create_users_table',1),(5,'2014_10_12_100000_create_password_resets_table',1),(6,'2019_08_19_000000_create_failed_jobs_table',1),(7,'2021_07_04_065728_create_files_table',1),(8,'2021_07_15_065011_create_dottings_table',1),(9,'2021_08_01_070722_create_logs_table',1),(10,'2021_08_01_073018_create_user_permissions_table',1),(11,'2021_08_01_075957_create_menuses_table',1),(12,'2021_08_01_080136_create_sub_menuses_table',1),(13,'2021_08_01_080314_create_list_menuses_table',1),(14,'2021_08_12_102534_create_projects_table',1),(15,'2021_08_22_095846_create_orders_table',1),(16,'2021_08_25_085020_create_static_data_table',1),(17,'2021_08_30_075927_create_buildings_table',1),(18,'2021_09_12_093218_create_sessions_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name_applicant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_applicant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_applicant` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_governorate` enum('غزة','الوسطى','رفح','خان يونس','شمال غزة') COLLATE utf8mb4_unicode_ci NOT NULL,
  `municipal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark_near` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `social_status` enum('متزوج','مطلق','أعزب','أرمل') COLLATE utf8mb4_unicode_ci NOT NULL,
  `work_details` enum('موظف حكومي','موظف قطاع خاص','لايوجد') COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_families` int NOT NULL,
  `total_people` int NOT NULL,
  `value_income` double NOT NULL,
  `sources_income` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `existing_patients` enum('نعم','لا') COLLATE utf8mb4_unicode_ci NOT NULL,
  `benefit_affairs` enum('نعم','لا') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_affairs` double NOT NULL,
  `number_patients` int NOT NULL,
  `number_family_members` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
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
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_group` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `permissions_id_group_foreign` (`id_group`),
  CONSTRAINT `permissions_id_group_foreign` FOREIGN KEY (`id_group`) REFERENCES `group_permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'إضافة','utilization.order.create',1,'2021-09-13 10:51:43',NULL,NULL),(2,'عرض واجهة الإضافة','utilization.order.add',1,'2021-09-13 10:51:44',NULL,NULL),(3,'بحث','utilization.order.search',1,'2021-09-13 10:51:44',NULL,NULL),(4,'عرض واجهة البحث','utilization.order.show',1,'2021-09-13 10:51:44',NULL,NULL),(5,'إضافة','Dotting.store',2,'2021-09-13 10:51:44',NULL,NULL),(6,'بحث','Dotting.show',2,'2021-09-13 10:51:44',NULL,NULL),(7,'عرض الواجهة','Dotting.index',2,'2021-09-13 10:51:44',NULL,NULL),(8,'حذف ( سلة المهملات )','dotting.moveToTrash',2,'2021-09-13 10:51:45',NULL,NULL),(9,'تحديث','Dotting.update',2,'2021-09-13 10:51:45',NULL,NULL),(10,'حذف نهائي','Dotting.destroy',2,'2021-09-13 10:51:45',NULL,NULL),(11,'حذف نهائي للبند الفرعي','Dotting.subdot.destroy',2,'2021-09-13 10:51:45',NULL,NULL),(12,'إضافة بند فرعي','Dotting.add_sub_dot',2,'2021-09-13 10:51:45',NULL,NULL),(13,'إضافة','Project.store',3,'2021-09-13 10:51:45',NULL,NULL),(14,'عرض واجهة الإضافة','project.add',3,'2021-09-13 10:51:45',NULL,NULL),(15,'بحث','Project.show',3,'2021-09-13 10:51:45',NULL,NULL),(16,'عرض واجهة البحث','Project.index',3,'2021-09-13 10:51:45',NULL,NULL),(17,'حذف ( سلة المهملات )','project.moveToTrash',3,'2021-09-13 10:51:45',NULL,NULL),(18,'تحديث','project.update',3,'2021-09-13 10:51:45',NULL,NULL),(19,'حذف نهائي','Project.destroy',3,'2021-09-13 10:51:46',NULL,NULL),(20,'إضافة','Building.store',4,'2021-09-13 10:51:46',NULL,NULL),(21,'عرض واجهة الإضافة','building.add',4,'2021-09-13 10:51:46',NULL,NULL),(22,'بحث','Building.show',4,'2021-09-13 10:51:46',NULL,NULL),(23,'عرض واجهة البحث','Building.index',4,'2021-09-13 10:51:46',NULL,NULL),(24,'حذف ( سلة المهملات )','building.moveToTrash',4,'2021-09-13 10:51:47',NULL,NULL),(25,'تحديث','building.update',4,'2021-09-13 10:51:47',NULL,NULL),(26,'حذف نهائي','Building.destroy',4,'2021-09-13 10:51:47',NULL,NULL),(27,'إضافة','User.store',5,'2021-09-13 10:51:47',NULL,NULL),(28,'عرض واجهة الإضافة','user.add',5,'2021-09-13 10:51:48',NULL,NULL),(29,'بحث','User.show',5,'2021-09-13 10:51:48',NULL,NULL),(30,'عرض واجهة البحث','User.index',5,'2021-09-13 10:51:48',NULL,NULL),(31,'حذف ( سلة المهملات )','user.moveToTrash',5,'2021-09-13 10:51:48',NULL,NULL),(32,'تحديث','user.update',5,'2021-09-13 10:51:48',NULL,NULL),(33,'حذف نهائي','User.destroy',5,'2021-09-13 10:51:48',NULL,NULL),(34,'إضافة','StaticData.store',6,'2021-09-13 10:51:48',NULL,NULL),(35,'بحث','StaticData.show',6,'2021-09-13 10:51:48',NULL,NULL),(36,'عرض الواجهة','StaticData.index',6,'2021-09-13 10:51:48',NULL,NULL),(37,'حذف ( سلة المهملات )','staticData.moveToTrash',6,'2021-09-13 10:51:49',NULL,NULL),(38,'تحديث','staticData.update',6,'2021-09-13 10:51:49',NULL,NULL),(39,'حذف النهائي','StaticData.destroy',6,'2021-09-13 10:51:49',NULL,NULL),(40,'عرض جدول الأقساط','installments.table.show',6,'2021-09-13 10:51:49',NULL,NULL),(41,'عرض جدول العملات','currency.table.show',6,'2021-09-13 10:51:49',NULL,NULL),(42,'إضافة','UserPermission.store',7,'2021-09-13 10:51:49',NULL,NULL),(43,'بحث','UserPermission.show',7,'2021-09-13 10:51:49',NULL,NULL),(44,'عرض الواجهة','UserPermission.index',7,'2021-09-13 10:51:49',NULL,NULL),(45,'حذف ( سلة المهملات )','UserPermission.moveToTrash',7,'2021-09-13 10:51:49',NULL,NULL),(46,'تحديث','permission.user.update',7,'2021-09-13 10:51:49',NULL,NULL),(47,'حذف النهائي','UserPermission.destroy',7,'2021-09-13 10:51:49',NULL,NULL),(48,'إضافة','Role.store',8,'2021-09-13 10:51:50',NULL,NULL),(49,'بحث','Role.show',8,'2021-09-13 10:51:50',NULL,NULL),(50,'عرض الواجهة','Role.index',8,'2021-09-13 10:51:50',NULL,NULL),(51,'حذف ( سلة المهملات )','Role.moveToTrash',8,'2021-09-13 10:51:50',NULL,NULL),(52,'تحديث','Role.update',8,'2021-09-13 10:51:50',NULL,NULL),(53,'حذف النهائي','Role.destroy',8,'2021-09-13 10:51:50',NULL,NULL);
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `permissions_BEFORE_INSERT` BEFORE INSERT ON `permissions` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `permissions_BEFORE_UPDATE` BEFORE UPDATE ON `permissions` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `permissions_AFTER_UPDATE` AFTER UPDATE ON `permissions` FOR EACH ROW BEGIN
                    update roles set deleted_at=new.deleted_at where id_permission=old.id;
                    update user_permissions set deleted_at=new.deleted_at where id_permission=old.id;
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sponsor` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_publish` datetime NOT NULL,
  `type_project` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Standards` json DEFAULT NULL,
  `address` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `projects_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,'GT105','أبراج حمد','قطر','2021-09-02 00:00:00','pay','[{\"id\": \"1\", \"name\": \"إعاقة\", \"degree\": \"20\"}, {\"id\": \"2\", \"name\": \"كبار سن\", \"degree\": \"15\"}, {\"id\": \"4\", \"name\": \"وفاة\", \"degree\": \"50\"}]','{\"City\": \"خانيونس\", \"address\": \"الزيتون-شارع النديم -جامع شهداء الزيتون\", \"Governorate\": \"خانيونس\"}','2021-09-13 10:51:41',NULL,NULL),(2,'UNCEF105','إعمار غزة','الامم المتحدة','2021-09-10 00:00:00','pay','[{\"id\": \"2\", \"name\": \"كبار سن\", \"degree\": \"15\"}, {\"id\": \"4\", \"name\": \"وفاة\", \"degree\": \"50\"}]','{\"City\": \"بني سهيلة\", \"address\": \"الزيتون-شارع النديم -جامع شهداء الزيتون\", \"Governorate\": \"الوسطى\"}','2021-09-13 10:51:41',NULL,NULL),(3,'UNCEF','الإعمار','مصر','2021-08-02 00:00:00','free','[{\"id\": \"1\", \"name\": \"إعاقة\", \"degree\": \"20\"}, {\"id\": \"2\", \"name\": \"كبار سن\", \"degree\": \"15\"}, {\"id\": \"4\", \"name\": \"وفاة\", \"degree\": \"50\"}]','{\"City\": \"جحر الديك\", \"address\": \"حي الزيتون - شارع النديم\", \"Governorate\": \"غزة\"}','2021-09-13 10:51:41',NULL,NULL);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `projects_data_BEFORE_INSERT` BEFORE INSERT ON `projects` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `projects_BEFORE_UPDATE` BEFORE UPDATE ON `projects` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `projects_AFTER_UPDATE` AFTER UPDATE ON `projects` FOR EACH ROW BEGIN
                    update buildings set deleted_at=new.deleted_at where id_project=old.id;
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_role` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_permission` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `roles_id_permission_foreign` (`id_permission`),
  CONSTRAINT `roles_id_permission_foreign` FOREIGN KEY (`id_permission`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,1,'مدير النظام',1,'2021-09-13 10:51:50',NULL,NULL),(2,1,'مدير النظام',2,'2021-09-13 10:51:50',NULL,NULL),(3,1,'مدير النظام',3,'2021-09-13 10:51:50',NULL,NULL),(4,1,'مدير النظام',4,'2021-09-13 10:51:50',NULL,NULL),(5,1,'مدير النظام',5,'2021-09-13 10:51:51',NULL,NULL),(6,1,'مدير النظام',6,'2021-09-13 10:51:51',NULL,NULL),(7,1,'مدير النظام',7,'2021-09-13 10:51:51',NULL,NULL),(8,1,'مدير النظام',8,'2021-09-13 10:51:51',NULL,NULL),(9,1,'مدير النظام',9,'2021-09-13 10:51:51',NULL,NULL),(10,1,'مدير النظام',10,'2021-09-13 10:51:51',NULL,NULL),(11,1,'مدير النظام',11,'2021-09-13 10:51:52',NULL,NULL),(12,1,'مدير النظام',12,'2021-09-13 10:51:52',NULL,NULL),(13,1,'مدير النظام',13,'2021-09-13 10:51:52',NULL,NULL),(14,1,'مدير النظام',14,'2021-09-13 10:51:52',NULL,NULL),(15,1,'مدير النظام',15,'2021-09-13 10:51:53',NULL,NULL),(16,1,'مدير النظام',16,'2021-09-13 10:51:53',NULL,NULL),(17,1,'مدير النظام',17,'2021-09-13 10:51:53',NULL,NULL),(18,1,'مدير النظام',18,'2021-09-13 10:51:53',NULL,NULL),(19,1,'مدير النظام',19,'2021-09-13 10:51:53',NULL,NULL),(20,1,'مدير النظام',20,'2021-09-13 10:51:53',NULL,NULL),(21,1,'مدير النظام',21,'2021-09-13 10:51:53',NULL,NULL),(22,1,'مدير النظام',22,'2021-09-13 10:51:53',NULL,NULL),(23,1,'مدير النظام',23,'2021-09-13 10:51:54',NULL,NULL),(24,1,'مدير النظام',24,'2021-09-13 10:51:54',NULL,NULL),(25,1,'مدير النظام',25,'2021-09-13 10:51:54',NULL,NULL),(26,1,'مدير النظام',26,'2021-09-13 10:51:54',NULL,NULL),(27,1,'مدير النظام',27,'2021-09-13 10:51:54',NULL,NULL),(28,1,'مدير النظام',28,'2021-09-13 10:51:54',NULL,NULL),(29,1,'مدير النظام',29,'2021-09-13 10:51:54',NULL,NULL),(30,1,'مدير النظام',30,'2021-09-13 10:51:54',NULL,NULL),(31,1,'مدير النظام',31,'2021-09-13 10:51:55',NULL,NULL),(32,1,'مدير النظام',32,'2021-09-13 10:51:55',NULL,NULL),(33,1,'مدير النظام',33,'2021-09-13 10:51:55',NULL,NULL),(34,1,'مدير النظام',34,'2021-09-13 10:51:55',NULL,NULL),(35,1,'مدير النظام',35,'2021-09-13 10:51:55',NULL,NULL),(36,1,'مدير النظام',36,'2021-09-13 10:51:55',NULL,NULL),(37,1,'مدير النظام',37,'2021-09-13 10:51:55',NULL,NULL),(38,1,'مدير النظام',38,'2021-09-13 10:51:55',NULL,NULL),(39,1,'مدير النظام',39,'2021-09-13 10:51:56',NULL,NULL),(40,1,'مدير النظام',40,'2021-09-13 10:51:56',NULL,NULL),(41,1,'مدير النظام',41,'2021-09-13 10:51:56',NULL,NULL),(42,1,'مدير النظام',42,'2021-09-13 10:51:56',NULL,NULL),(43,1,'مدير النظام',43,'2021-09-13 10:51:57',NULL,NULL),(44,1,'مدير النظام',44,'2021-09-13 10:51:57',NULL,NULL),(45,1,'مدير النظام',45,'2021-09-13 10:51:57',NULL,NULL),(46,1,'مدير النظام',46,'2021-09-13 10:51:57',NULL,NULL),(47,1,'مدير النظام',47,'2021-09-13 10:51:57',NULL,NULL),(48,1,'مدير النظام',48,'2021-09-13 10:51:57',NULL,NULL),(49,1,'مدير النظام',49,'2021-09-13 10:51:57',NULL,NULL),(50,1,'مدير النظام',50,'2021-09-13 10:51:57',NULL,NULL),(51,1,'مدير النظام',51,'2021-09-13 10:51:57',NULL,NULL),(52,1,'مدير النظام',52,'2021-09-13 10:51:57',NULL,NULL),(53,1,'مدير النظام',53,'2021-09-13 10:51:58',NULL,NULL),(54,2,'مستخدم',1,'2021-09-13 10:51:58',NULL,NULL),(55,3,'موظف المشاريع',13,'2021-09-13 10:51:58',NULL,NULL),(56,3,'موظف المشاريع',14,'2021-09-13 10:51:58',NULL,NULL),(57,3,'موظف المشاريع',15,'2021-09-13 10:51:58',NULL,NULL),(58,3,'موظف المشاريع',16,'2021-09-13 10:51:58',NULL,NULL),(59,3,'موظف المشاريع',17,'2021-09-13 10:51:58',NULL,NULL),(60,3,'موظف المشاريع',18,'2021-09-13 10:51:58',NULL,NULL),(61,3,'موظف المشاريع',19,'2021-09-13 10:51:58',NULL,NULL);
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `roles_BEFORE_INSERT` BEFORE INSERT ON `roles` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `roles_BEFORE_UPDATE` BEFORE UPDATE ON `roles` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `static_data`
--

DROP TABLE IF EXISTS `static_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `static_data` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `static_data_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `static_data`
--

LOCK TABLES `static_data` WRITE;
/*!40000 ALTER TABLE `static_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `static_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `static_data_BEFORE_INSERT` BEFORE INSERT ON `static_data` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `static_data_BEFORE_UPDATE` BEFORE UPDATE ON `static_data` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `sub_menuses`
--

DROP TABLE IF EXISTS `sub_menuses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sub_menuses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_menus` bigint unsigned NOT NULL,
  `icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_route` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `have_list` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_menuses_id_menus_foreign` (`id_menus`),
  CONSTRAINT `sub_menuses_id_menus_foreign` FOREIGN KEY (`id_menus`) REFERENCES `menuses` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sub_menuses`
--

LOCK TABLES `sub_menuses` WRITE;
/*!40000 ALTER TABLE `sub_menuses` DISABLE KEYS */;
/*!40000 ALTER TABLE `sub_menuses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_permissions`
--

DROP TABLE IF EXISTS `user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_user` bigint unsigned NOT NULL,
  `id_permission` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_permissions_id_permission_foreign` (`id_permission`),
  KEY `user_permissions_id_user_foreign` (`id_user`),
  CONSTRAINT `user_permissions_id_permission_foreign` FOREIGN KEY (`id_permission`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `user_permissions_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_permissions`
--

LOCK TABLES `user_permissions` WRITE;
/*!40000 ALTER TABLE `user_permissions` DISABLE KEYS */;
INSERT INTO `user_permissions` VALUES (1,1,1,'2021-09-13 10:51:59',NULL,NULL),(2,1,2,'2021-09-13 10:51:59',NULL,NULL),(3,1,3,'2021-09-13 10:51:59',NULL,NULL),(4,1,4,'2021-09-13 10:51:59',NULL,NULL),(5,1,5,'2021-09-13 10:51:59',NULL,NULL),(6,1,6,'2021-09-13 10:52:00',NULL,NULL),(7,1,7,'2021-09-13 10:52:00',NULL,NULL),(8,1,8,'2021-09-13 10:52:00',NULL,NULL),(9,1,9,'2021-09-13 10:52:00',NULL,NULL),(10,1,10,'2021-09-13 10:52:00',NULL,NULL),(11,1,11,'2021-09-13 10:52:01',NULL,NULL),(12,1,12,'2021-09-13 10:52:01',NULL,NULL),(13,1,13,'2021-09-13 10:52:01',NULL,NULL),(14,1,14,'2021-09-13 10:52:01',NULL,NULL),(15,1,15,'2021-09-13 10:52:01',NULL,NULL),(16,1,16,'2021-09-13 10:52:01',NULL,NULL),(17,1,17,'2021-09-13 10:52:02',NULL,NULL),(18,1,18,'2021-09-13 10:52:02',NULL,NULL),(19,1,19,'2021-09-13 10:52:02',NULL,NULL),(20,1,20,'2021-09-13 10:52:02',NULL,NULL),(21,1,21,'2021-09-13 10:52:02',NULL,NULL),(22,1,22,'2021-09-13 10:52:02',NULL,NULL),(23,1,23,'2021-09-13 10:52:02',NULL,NULL),(24,1,24,'2021-09-13 10:52:02',NULL,NULL),(25,1,25,'2021-09-13 10:52:02',NULL,NULL),(26,1,26,'2021-09-13 10:52:03',NULL,NULL),(27,1,27,'2021-09-13 10:52:03',NULL,NULL),(28,1,28,'2021-09-13 10:52:03',NULL,NULL),(29,1,29,'2021-09-13 10:52:03',NULL,NULL),(30,1,30,'2021-09-13 10:52:03',NULL,NULL),(31,1,31,'2021-09-13 10:52:03',NULL,NULL),(32,1,32,'2021-09-13 10:52:03',NULL,NULL),(33,1,33,'2021-09-13 10:52:04',NULL,NULL),(34,1,34,'2021-09-13 10:52:04',NULL,NULL),(35,1,35,'2021-09-13 10:52:04',NULL,NULL),(36,1,36,'2021-09-13 10:52:04',NULL,NULL),(37,1,37,'2021-09-13 10:52:04',NULL,NULL),(38,1,38,'2021-09-13 10:52:04',NULL,NULL),(39,1,39,'2021-09-13 10:52:04',NULL,NULL),(40,1,40,'2021-09-13 10:52:04',NULL,NULL),(41,1,41,'2021-09-13 10:52:05',NULL,NULL),(42,1,42,'2021-09-13 10:52:05',NULL,NULL),(43,1,43,'2021-09-13 10:52:05',NULL,NULL),(44,1,44,'2021-09-13 10:52:05',NULL,NULL),(45,1,45,'2021-09-13 10:52:05',NULL,NULL),(46,1,46,'2021-09-13 10:52:05',NULL,NULL),(47,1,47,'2021-09-13 10:52:05',NULL,NULL),(48,1,48,'2021-09-13 10:52:05',NULL,NULL),(49,1,49,'2021-09-13 10:52:05',NULL,NULL),(50,1,50,'2021-09-13 10:52:05',NULL,NULL),(51,1,51,'2021-09-13 10:52:05',NULL,NULL),(52,1,52,'2021-09-13 10:52:06',NULL,NULL),(53,1,53,'2021-09-13 10:52:06',NULL,NULL);
/*!40000 ALTER TABLE `user_permissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `user_permissions_BEFORE_INSERT` BEFORE INSERT ON `user_permissions` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `user_permissions_BEFORE_UPDATE` BEFORE UPDATE ON `user_permissions` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_job` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_role` bigint unsigned DEFAULT NULL,
  `id_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_job` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_id_number_unique` (`id_number`),
  UNIQUE KEY `users_email_unique` (`email`),
  UNIQUE KEY `users_id_job_unique` (`id_job`),
  KEY `users_id_role_foreign` (`id_role`),
  CONSTRAINT `users_id_role_foreign` FOREIGN KEY (`id_role`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'شريف طارق شريف رجب','مطور برمجيات','0597369443',1,'403762099',NULL,'100shareef10000ps@gmail.com',NULL,'$2y$10$EDuDovLEFfc09e7rVEW9yetuG.B8CL8FFjsWVFVQFqSLPyM1tY7LS',NULL,'2021-09-13 10:51:59',NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `users_BEFORE_INSERT` BEFORE INSERT ON `users` FOR EACH ROW BEGIN
                set new.created_at=sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `users_BEFORE_UPDATE` BEFORE UPDATE ON `users` FOR EACH ROW BEGIN
                    set new.updated_at = sysdate();
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_unicode_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE TRIGGER `users_AFTER_UPDATE` AFTER UPDATE ON `users` FOR EACH ROW BEGIN
                    update user_permissions set deleted_at=new.deleted_at where id_user=old.id;
            END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Dumping events for database 'mpwh'
--

--
-- Dumping routines for database 'mpwh'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-09-13 13:53:47
