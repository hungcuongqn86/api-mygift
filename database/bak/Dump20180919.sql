-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: api_laravel
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.32-MariaDB

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
-- Table structure for table `bases`
--

DROP TABLE IF EXISTS `bases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_base` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `cdx` int(11) DEFAULT '0',
  `cdy` int(11) DEFAULT '0',
  `img_height` int(11) DEFAULT '0',
  `img_width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `width` int(11) DEFAULT '0',
  `curls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotate` int(11) DEFAULT '0',
  `pulled_oblique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete_f` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bases`
--

LOCK TABLES `bases` WRITE;
/*!40000 ALTER TABLE `bases` DISABLE KEYS */;
INSERT INTO `bases` VALUES (1,'BT.COC.001','Cốc sứ Bát Tràng men trắng dáng vại','100000','12000','Cốc sứ Bát Tràng men trắng dáng vại','upload%2F2018%2F06%2F26%2F1530028855.jpg',1,280,220,472,629,100,100,'12',8,'123333','#ffffff',0,'2018-06-23 11:48:55','2018-07-01 01:41:49'),(2,'BT.COC.002','Chén sứ Bát Tràng men trắng dáng quả lựu','20000','50000','test','upload%2F2018%2F06%2F26%2F1530028876.jpg',1,0,0,502,599,0,0,NULL,0,NULL,NULL,0,'2018-06-23 11:54:42','2018-06-28 00:55:39'),(3,'BT.COC.003','Đĩa sứ Bát Tràng men trắng dáng bưởi','500000','600000',NULL,'upload%2F2018%2F06%2F26%2F1530028898.jpg',1,0,0,600,900,0,0,NULL,0,NULL,NULL,0,'2018-06-23 12:32:35','2018-06-28 00:55:59');
/*!40000 ALTER TABLE `bases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8_unicode_ci,
  `delete_f` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'HN.00001','Nguyễn Hùng Cường','09110350002','hungcuongqn86@gmail.com','31 Lạc Trung, Hai Bà Trưng, Hà Nội, Việt Nam','tesst',0,'2018-06-24 09:51:05','2018-06-24 09:59:20'),(2,'HN.00002','Nguyễn Hùng Anh','0911031993','hungcuongqn86@gmail.com','Số 22A, Hai Bà Trưng, Phường Tràng Tiền, Quận Hoàn Kiếm, Hà Nôi','khác',1,'2018-06-24 09:55:15','2018-06-24 10:01:11'),(3,'HN.00003','Phạm Minh Tuấn','0904632568','admin@dsmg.co.uk','Ngõ 562-Láng Trung -Láng Hạ - Hà Nội','thông tin khác',0,'2018-06-24 10:01:56','2018-06-24 10:01:56');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2016_06_01_000001_create_oauth_auth_codes_table',1),(4,'2016_06_01_000002_create_oauth_access_tokens_table',1),(5,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(6,'2016_06_01_000004_create_oauth_clients_table',1),(7,'2016_06_01_000005_create_oauth_personal_access_clients_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mockups`
--

DROP TABLE IF EXISTS `mockups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mockups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_id` int(11) NOT NULL,
  `img` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cdx` int(11) DEFAULT '0',
  `cdy` int(11) DEFAULT '0',
  `img_height` int(11) DEFAULT '0',
  `img_width` int(11) DEFAULT '0',
  `height` int(11) DEFAULT '0',
  `width` int(11) DEFAULT '0',
  `curls` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotate` int(11) DEFAULT '0',
  `pulled_oblique` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `delete_f` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mockups`
--

LOCK TABLES `mockups` WRITE;
/*!40000 ALTER TABLE `mockups` DISABLE KEYS */;
/*!40000 ALTER TABLE `mockups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
INSERT INTO `oauth_access_tokens` VALUES ('0f629ff4a5f3877f580f5181303bf76c799f2562a46c558d420e90381f1998c2fa8193464600f3c4',9,1,'Personal Access Token','[]',0,'2018-06-18 00:58:32','2018-06-18 00:58:32','2019-06-18 07:58:32'),('456595c2973b7afa2e718e583587336af4d737b0c20ac263e90b16e24cc00e8431aa1cfa5b69ff71',9,1,'Personal Access Token','[]',0,'2018-06-23 01:32:31','2018-06-23 01:32:31','2019-06-23 08:32:31'),('46d8b5f72629c0f2884a1d1776a436cd2a23108e23fa270bd3f94e8c32eb15366cbd9575b636ff71',9,1,'Personal Access Token','[]',0,'2018-06-17 08:00:07','2018-06-17 08:00:07','2019-06-17 15:00:07'),('557b7ddd4bb54f09d65a71b4b6289d5525d2dc1c3832fc43bdb36a22c5a7ae22c66ba99c6995708f',9,1,'Personal Access Token','[]',0,'2018-06-22 07:56:54','2018-06-22 07:56:54','2019-06-22 14:56:54'),('603c95e6f7c804bd6bdb3c7a33e7c0d90d44a87922f1c888ffdd9b928138454aa368ab721d69d948',9,1,'Personal Access Token','[]',0,'2018-06-22 07:56:20','2018-06-22 07:56:20','2019-06-22 14:56:20'),('68ee77ace807ef8dd77904b26fc4254cf8472ed3c6085631875129dcf0556697cb9c3922211640e1',9,1,'Personal Access Token','[]',0,'2018-06-17 08:34:29','2018-06-17 08:34:29','2019-06-17 15:34:29'),('6d88ed5a07e8874d5973758a1e6dea7e2e82752bbbb045a03cc7f6740916f5f5ff641e72bd4ff01a',9,1,'Personal Access Token','[]',0,'2018-06-17 08:05:20','2018-06-17 08:05:20','2019-06-17 15:05:20'),('87c5ec0392162ca24a7d99ea507d5fda02e9afd9165002b9a6e04364c85abf6c571c305c8f579cd2',9,1,'Personal Access Token','[]',0,'2018-06-22 07:59:01','2018-06-22 07:59:01','2019-06-22 14:59:01'),('946799b093d176f475c7abf5f4b69a180133217742107df9f4319895184addcc566e2cd1917c745b',9,1,'Personal Access Token','[]',0,'2018-06-17 08:09:33','2018-06-17 08:09:33','2019-06-17 15:09:33'),('9f47ca7067ed74cf004e722c73d489f78d31559965fc53158ba09413e2e8fb1e493e6688a0bcc264',9,1,'Personal Access Token','[]',0,'2018-06-17 08:00:18','2018-06-17 08:00:18','2019-06-17 15:00:18'),('ae58644f356c9cc2de029a551a19c6ec91b740047e75d77c16a688e7c5514a1e7f793ad6587a0f9e',9,1,'Personal Access Token','[]',0,'2018-06-17 01:44:40','2018-06-17 01:44:40','2019-06-17 08:44:40'),('ae8bdbf3372579992054855e80bc9e7d4b8835ce1335793ec72feda6f7c704fb018c25d01ad963ab',9,1,'Personal Access Token','[]',0,'2018-06-17 08:08:00','2018-06-17 08:08:00','2019-06-17 15:08:00'),('b68d99d998c806dc396614762620dd7ebb4f633b86c53692555a6327fc5cb2c4f14e7f43e9be588f',9,1,'Personal Access Token','[]',0,'2018-06-22 07:58:00','2018-06-22 07:58:00','2019-06-22 14:58:00'),('c53dcae11af11bafe7eb36f6c42ed4b6a2bce0db6220e6edf8ad881a0046fe3caa6c298558e5cd3a',9,1,'Personal Access Token','[]',0,'2018-06-22 07:55:44','2018-06-22 07:55:44','2019-06-22 14:55:44'),('d2fd6ebc2f8016db5569aa449208f8e82af9ba79c56d58e19d0580317c0576a186d7a5f865bdcaf2',9,1,'Personal Access Token','[]',0,'2018-06-17 08:06:15','2018-06-17 08:06:15','2019-06-17 15:06:15'),('e7c15ade69c312f2d8459a10bb38be8b325eae8ae139afc3a7315acfd8047e6e3a2055efb764e178',9,1,'Personal Access Token','[]',0,'2018-06-17 01:45:31','2018-06-17 01:45:31','2019-06-17 08:45:31'),('fad74a99993d47af5b2b425e3f9fc1515d012ba60255d66ce435eda1990bcbe3c88db19e42fedfff',9,1,'Personal Access Token','[]',0,'2018-06-17 08:29:00','2018-06-17 08:29:00','2019-06-17 15:29:00'),('fda4a032b991cc47d1c6e3e31fcee0e93508c67d6c6663f81ab12a073a315393ee17ab48f687c469',9,1,'Personal Access Token','[]',0,'2018-06-17 08:09:57','2018-06-17 08:09:57','2019-06-17 15:09:57');
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
INSERT INTO `oauth_clients` VALUES (1,NULL,'Laravel Personal Access Client','X14EkyXK9Paj1wwRNJxIM2Mo7C4CUtg0C0RpgHD6','http://localhost',1,0,0,'2018-06-17 01:00:00','2018-06-17 01:00:00'),(2,NULL,'Laravel Password Grant Client','qK1c0MCLuA0C0kLg8PiJxado3yZvKYUdk2wmyQWp','http://localhost',0,1,0,'2018-06-17 01:00:00','2018-06-17 01:00:00');
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
INSERT INTO `oauth_personal_access_clients` VALUES (1,1,'2018-06-17 01:00:00','2018-06-17 01:00:00');
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(45) COLLATE utf8_unicode_ci NOT NULL,
  `base_id` int(11) NOT NULL,
  `count` int(11) DEFAULT NULL,
  `price` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `total` varchar(9) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `customer_id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
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
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
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
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'avatar.png',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `activation_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (9,'Admin','hungcuongqn86@gmail.com','$2y$10$bTQWqCbspM7/c1ksG1ZGYehFWKQKGtvwR5O6Cb9lsm025MvRLe66e','avatar.png',1,'',NULL,'2018-06-17 01:31:53','2018-06-17 01:32:44',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-19 21:34:13
