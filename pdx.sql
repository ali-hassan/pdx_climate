-- MySQL dump 10.13  Distrib 5.7.36, for Linux (x86_64)
--
-- Host: localhost    Database: pdx_prod
-- ------------------------------------------------------
-- Server version	5.7.36-0ubuntu0.18.04.1

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
-- Table structure for table `active_sessions`
--

DROP TABLE IF EXISTS `active_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_sessions` (
  `id` binary(16) NOT NULL,
  `person_id` varchar(22) NOT NULL,
  `community_id` int(11) NOT NULL,
  `refreshed_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_active_sessions_on_person_id` (`person_id`),
  KEY `index_active_sessions_on_community_id` (`community_id`),
  KEY `index_active_sessions_on_refreshed_at` (`refreshed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_sessions`
--

LOCK TABLES `active_sessions` WRITE;
/*!40000 ALTER TABLE `active_sessions` DISABLE KEYS */;
INSERT INTO `active_sessions` VALUES (_binary '\Ï\0	Ôñ∂úÉ@˛îw\·','lHWG5Y2z6chmZPFTFWBZzw',1,'2021-08-18 09:45:34','2021-08-18 09:45:34','2021-08-18 09:45:34'),(_binary '\Ï<ˆ|\Ô–†¯@˛îw\·','v4LxAWSIxaswezqqvHFQGA',1,'2021-08-26 07:12:24','2021-08-26 07:12:24','2021-08-26 07:12:24'),(_binary '\Ï•˜Wú∂j@˛îw\·','v4LxAWSIxaswezqqvHFQGA',1,'2021-11-01 17:40:26','2021-08-26 19:44:02','2021-11-01 17:40:26'),(_binary '\Ï6D<´lΩ\"@˛îw\·','NQXdZK130o52pyjh6cf2eQ',1,'2021-10-26 04:00:32','2021-10-26 04:00:32','2021-10-26 04:00:32'),(_binary '\Ï7-^\nLá˛@˛îw\·','tvNYAmURaFGVnbRimB3VmA',1,'2021-11-01 17:34:25','2021-10-27 13:54:13','2021-11-01 17:34:25'),(_binary '\Ï7LVÅbêá˛@˛îw\·','NQXdZK130o52pyjh6cf2eQ',1,'2021-10-27 17:35:55','2021-10-27 17:35:55','2021-10-27 17:35:55'),(_binary '\Ï8j†∫ºö\Œ@˛îw\·','tvNYAmURaFGVnbRimB3VmA',1,'2021-10-31 13:48:39','2021-10-29 03:45:15','2021-10-31 13:48:39'),(_binary '\Ï8\¬\0º*Ω\"@˛îw\·','tvNYAmURaFGVnbRimB3VmA',1,'2021-10-29 14:10:41','2021-10-29 14:10:41','2021-10-29 14:10:41'),(_binary '\Ï8\Ã{\—|Ω\"@˛îw\·','lHWG5Y2z6chmZPFTFWBZzw',1,'2021-10-29 15:22:20','2021-10-29 15:22:20','2021-10-29 15:22:20'),(_binary '\Ï8ˆ(\·,ö\Œ@˛îw\·','NQXdZK130o52pyjh6cf2eQ',1,'2021-10-29 20:24:02','2021-10-29 20:24:02','2021-10-29 20:24:02'),(_binary '\Ï8¸Ωß˜\\ö\Œ@˛îw\·','occd7nXvyup3xXM-FhNXAQ',1,'2021-10-29 21:11:10','2021-10-29 21:11:10','2021-10-29 21:11:10'),(_binary '\Ï:^kñΩ\"@˛îw\·','NQXdZK130o52pyjh6cf2eQ',1,'2021-10-31 15:20:29','2021-10-31 15:20:29','2021-10-31 15:20:29');
/*!40000 ALTER TABLE `active_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','production','2021-08-18 09:29:50','2021-08-18 09:29:50');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_tokens`
--

DROP TABLE IF EXISTS `auth_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `token` varchar(255) DEFAULT NULL,
  `token_type` varchar(255) DEFAULT 'unsubscribe',
  `person_id` varchar(255) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `usages_left` int(11) DEFAULT NULL,
  `last_use_attempt` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_auth_tokens_on_token` (`token`),
  KEY `index_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_tokens`
--

LOCK TABLES `auth_tokens` WRITE;
/*!40000 ALTER TABLE `auth_tokens` DISABLE KEYS */;
INSERT INTO `auth_tokens` VALUES (1,'XNQAWbksqQg','login','v4LxAWSIxaswezqqvHFQGA','2021-08-18 09:45:41',1,NULL,'2021-08-18 09:35:41','2021-08-18 09:35:41');
/*!40000 ALTER TABLE `auth_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `billing_agreements`
--

DROP TABLE IF EXISTS `billing_agreements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `billing_agreements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_account_id` int(11) NOT NULL,
  `billing_agreement_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `paypal_username_to` varchar(255) NOT NULL,
  `request_token` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_billing_agreements_on_paypal_account_id` (`paypal_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `billing_agreements`
--

LOCK TABLES `billing_agreements` WRITE;
/*!40000 ALTER TABLE `billing_agreements` DISABLE KEYS */;
/*!40000 ALTER TABLE `billing_agreements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) DEFAULT NULL,
  `start_on` date DEFAULT NULL,
  `end_on` date DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `per_hour` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_bookings_on_transaction_id` (`transaction_id`),
  KEY `index_bookings_on_per_hour` (`per_hour`),
  KEY `index_bookings_on_start_time` (`start_time`),
  KEY `index_bookings_on_end_time` (`end_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_parent_id` (`parent_id`),
  KEY `index_categories_on_url` (`url`),
  KEY `index_categories_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,NULL,NULL,'2021-08-18 09:35:40','2021-10-28 00:47:03',1,NULL,'activism'),(2,NULL,NULL,'2021-10-27 14:47:05','2021-10-28 00:50:16',1,1,'policy'),(3,NULL,NULL,'2021-10-28 00:50:26','2021-10-28 00:50:26',1,2,'meeting'),(4,NULL,NULL,'2021-10-28 00:50:35','2021-10-28 00:50:35',1,3,'event'),(5,NULL,NULL,'2021-10-28 00:50:57','2021-10-28 00:50:57',1,4,'other');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_custom_fields`
--

DROP TABLE IF EXISTS `category_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `custom_field_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_category_custom_fields_on_category_id_and_custom_field_id` (`category_id`,`custom_field_id`),
  KEY `index_category_custom_fields_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_custom_fields`
--

LOCK TABLES `category_custom_fields` WRITE;
/*!40000 ALTER TABLE `category_custom_fields` DISABLE KEYS */;
INSERT INTO `category_custom_fields` VALUES (49,1,5,'2021-10-28 01:27:00','2021-10-28 01:27:00'),(50,2,5,'2021-10-28 01:27:00','2021-10-28 01:27:00'),(51,3,5,'2021-10-28 01:27:00','2021-10-28 01:27:00'),(52,4,5,'2021-10-28 01:27:00','2021-10-28 01:27:00'),(53,5,5,'2021-10-28 01:27:00','2021-10-28 01:27:00'),(54,1,6,'2021-10-28 01:27:13','2021-10-28 01:27:13'),(55,2,6,'2021-10-28 01:27:13','2021-10-28 01:27:13'),(56,3,6,'2021-10-28 01:27:13','2021-10-28 01:27:13'),(57,4,6,'2021-10-28 01:27:13','2021-10-28 01:27:13'),(58,5,6,'2021-10-28 01:27:13','2021-10-28 01:27:13'),(59,1,7,'2021-10-28 01:27:20','2021-10-28 01:27:20'),(60,2,7,'2021-10-28 01:27:20','2021-10-28 01:27:20'),(61,3,7,'2021-10-28 01:27:20','2021-10-28 01:27:20'),(62,4,7,'2021-10-28 01:27:20','2021-10-28 01:27:20'),(63,5,7,'2021-10-28 01:27:20','2021-10-28 01:27:20'),(64,1,8,'2021-10-28 01:27:26','2021-10-28 01:27:26'),(65,2,8,'2021-10-28 01:27:26','2021-10-28 01:27:26'),(66,3,8,'2021-10-28 01:27:26','2021-10-28 01:27:26'),(67,4,8,'2021-10-28 01:27:26','2021-10-28 01:27:26'),(68,5,8,'2021-10-28 01:27:26','2021-10-28 01:27:26'),(69,1,9,'2021-10-28 01:27:31','2021-10-28 01:27:31'),(70,2,9,'2021-10-28 01:27:31','2021-10-28 01:27:31'),(71,3,9,'2021-10-28 01:27:31','2021-10-28 01:27:31'),(72,4,9,'2021-10-28 01:27:31','2021-10-28 01:27:31'),(73,5,9,'2021-10-28 01:27:31','2021-10-28 01:27:31'),(79,1,10,'2021-10-28 01:27:58','2021-10-28 01:27:58'),(80,2,10,'2021-10-28 01:27:58','2021-10-28 01:27:58'),(81,3,10,'2021-10-28 01:27:58','2021-10-28 01:27:58'),(82,4,10,'2021-10-28 01:27:58','2021-10-28 01:27:58'),(83,5,10,'2021-10-28 01:27:58','2021-10-28 01:27:58'),(84,1,11,'2021-10-28 01:28:04','2021-10-28 01:28:04'),(85,2,11,'2021-10-28 01:28:04','2021-10-28 01:28:04'),(86,3,11,'2021-10-28 01:28:04','2021-10-28 01:28:04'),(87,4,11,'2021-10-28 01:28:04','2021-10-28 01:28:04'),(88,5,11,'2021-10-28 01:28:04','2021-10-28 01:28:04'),(89,1,12,'2021-10-28 01:28:18','2021-10-28 01:28:18'),(90,2,12,'2021-10-28 01:28:18','2021-10-28 01:28:18'),(91,3,12,'2021-10-28 01:28:18','2021-10-28 01:28:18'),(92,4,12,'2021-10-28 01:28:18','2021-10-28 01:28:18'),(93,5,12,'2021-10-28 01:28:18','2021-10-28 01:28:18'),(94,1,13,'2021-10-28 01:30:28','2021-10-28 01:30:28'),(95,2,13,'2021-10-28 01:30:28','2021-10-28 01:30:28'),(96,3,13,'2021-10-28 01:30:28','2021-10-28 01:30:28'),(97,4,13,'2021-10-28 01:30:28','2021-10-28 01:30:28'),(98,5,13,'2021-10-28 01:30:28','2021-10-28 01:30:28'),(99,1,3,'2021-10-29 16:33:40','2021-10-29 16:33:40'),(100,2,3,'2021-10-29 16:33:40','2021-10-29 16:33:40'),(101,3,3,'2021-10-29 16:33:40','2021-10-29 16:33:40'),(102,4,3,'2021-10-29 16:33:40','2021-10-29 16:33:40'),(103,5,3,'2021-10-29 16:33:40','2021-10-29 16:33:40');
/*!40000 ALTER TABLE `category_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_listing_shapes`
--

DROP TABLE IF EXISTS `category_listing_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_listing_shapes` (
  `category_id` int(11) NOT NULL,
  `listing_shape_id` int(11) NOT NULL,
  UNIQUE KEY `unique_listing_shape_category_joins` (`listing_shape_id`,`category_id`),
  KEY `index_category_listing_shapes_on_category_id` (`category_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_listing_shapes`
--

LOCK TABLES `category_listing_shapes` WRITE;
/*!40000 ALTER TABLE `category_listing_shapes` DISABLE KEYS */;
INSERT INTO `category_listing_shapes` VALUES (1,1),(1,2),(2,1),(2,2),(3,1),(3,2),(4,1),(4,2),(5,1),(5,2);
/*!40000 ALTER TABLE `category_listing_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category_translations`
--

DROP TABLE IF EXISTS `category_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_category_translations_on_category_id` (`category_id`),
  KEY `category_id_with_locale` (`category_id`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category_translations`
--

LOCK TABLES `category_translations` WRITE;
/*!40000 ALTER TABLE `category_translations` DISABLE KEYS */;
INSERT INTO `category_translations` VALUES (1,1,'en','Activism','2021-08-18 09:35:40','2021-10-28 00:47:03',NULL),(2,2,'en','Policy','2021-10-27 14:47:05','2021-10-28 00:50:16',NULL),(3,3,'en','Meeting','2021-10-28 00:50:26','2021-10-28 00:50:26',NULL),(4,4,'en','Event','2021-10-28 00:50:35','2021-10-28 00:50:35',NULL),(5,5,'en','Other','2021-10-28 00:50:57','2021-10-28 00:50:57',NULL);
/*!40000 ALTER TABLE `category_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `checkout_accounts`
--

DROP TABLE IF EXISTS `checkout_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checkout_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_id_or_personal_id` varchar(255) DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `merchant_key` varchar(255) NOT NULL,
  `person_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checkout_accounts`
--

LOCK TABLES `checkout_accounts` WRITE;
/*!40000 ALTER TABLE `checkout_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `checkout_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` varchar(255) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_comments_on_listing_id` (`listing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `communities`
--

DROP TABLE IF EXISTS `communities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` binary(16) NOT NULL,
  `ident` varchar(255) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `use_domain` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `settings` text,
  `consent` varchar(255) DEFAULT NULL,
  `transaction_agreement_in_use` tinyint(1) DEFAULT '0',
  `email_admins_about_new_members` tinyint(1) DEFAULT '0',
  `use_fb_like` tinyint(1) DEFAULT '0',
  `real_name_required` tinyint(1) DEFAULT '1',
  `automatic_newsletters` tinyint(1) DEFAULT '1',
  `join_with_invite_only` tinyint(1) DEFAULT '0',
  `allowed_emails` mediumtext,
  `users_can_invite_new_users` tinyint(1) DEFAULT '1',
  `private` tinyint(1) DEFAULT '0',
  `label` varchar(255) DEFAULT NULL,
  `show_date_in_listings_list` tinyint(1) DEFAULT '0',
  `all_users_can_add_news` tinyint(1) DEFAULT '1',
  `custom_frontpage_sidebar` tinyint(1) DEFAULT '0',
  `event_feed_enabled` tinyint(1) DEFAULT '1',
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `country` varchar(255) DEFAULT NULL,
  `members_count` int(11) DEFAULT '0',
  `user_limit` int(11) DEFAULT NULL,
  `monthly_price_in_euros` float DEFAULT NULL,
  `logo_file_name` varchar(255) DEFAULT NULL,
  `logo_content_type` varchar(255) DEFAULT NULL,
  `logo_file_size` int(11) DEFAULT NULL,
  `logo_updated_at` datetime DEFAULT NULL,
  `cover_photo_file_name` varchar(255) DEFAULT NULL,
  `cover_photo_content_type` varchar(255) DEFAULT NULL,
  `cover_photo_file_size` int(11) DEFAULT NULL,
  `cover_photo_updated_at` datetime DEFAULT NULL,
  `small_cover_photo_file_name` varchar(255) DEFAULT NULL,
  `small_cover_photo_content_type` varchar(255) DEFAULT NULL,
  `small_cover_photo_file_size` int(11) DEFAULT NULL,
  `small_cover_photo_updated_at` datetime DEFAULT NULL,
  `custom_color1` varchar(255) DEFAULT NULL,
  `custom_color2` varchar(255) DEFAULT NULL,
  `slogan_color` varchar(6) DEFAULT NULL,
  `description_color` varchar(6) DEFAULT NULL,
  `stylesheet_url` varchar(255) DEFAULT NULL,
  `stylesheet_needs_recompile` tinyint(1) DEFAULT '0',
  `service_logo_style` varchar(255) DEFAULT 'full-logo',
  `currency` varchar(3) NOT NULL,
  `facebook_connect_enabled` tinyint(1) DEFAULT '1',
  `minimum_price_cents` int(11) DEFAULT NULL,
  `hide_expiration_date` tinyint(1) DEFAULT '1',
  `facebook_connect_id` varchar(255) DEFAULT NULL,
  `facebook_connect_secret` varchar(255) DEFAULT NULL,
  `google_analytics_key` varchar(255) DEFAULT NULL,
  `google_maps_key` varchar(64) DEFAULT NULL,
  `name_display_type` varchar(255) DEFAULT 'first_name_with_initial',
  `twitter_handle` varchar(255) DEFAULT NULL,
  `use_community_location_as_default` tinyint(1) DEFAULT '0',
  `preproduction_stylesheet_url` varchar(255) DEFAULT NULL,
  `show_category_in_listing_list` tinyint(1) DEFAULT '0',
  `default_browse_view` varchar(255) DEFAULT 'grid',
  `wide_logo_file_name` varchar(255) DEFAULT NULL,
  `wide_logo_content_type` varchar(255) DEFAULT NULL,
  `wide_logo_file_size` int(11) DEFAULT NULL,
  `wide_logo_updated_at` datetime DEFAULT NULL,
  `listing_comments_in_use` tinyint(1) DEFAULT '0',
  `show_listing_publishing_date` tinyint(1) DEFAULT '0',
  `require_verification_to_post_listings` tinyint(1) DEFAULT '0',
  `show_price_filter` tinyint(1) DEFAULT '0',
  `price_filter_min` int(11) DEFAULT '0',
  `price_filter_max` int(11) DEFAULT '100000',
  `automatic_confirmation_after_days` int(11) DEFAULT '14',
  `favicon_file_name` varchar(255) DEFAULT NULL,
  `favicon_content_type` varchar(255) DEFAULT NULL,
  `favicon_file_size` int(11) DEFAULT NULL,
  `favicon_updated_at` datetime DEFAULT NULL,
  `default_min_days_between_community_updates` int(11) DEFAULT '7',
  `listing_location_required` tinyint(1) DEFAULT '0',
  `custom_head_script` text,
  `follow_in_use` tinyint(1) NOT NULL DEFAULT '1',
  `logo_processing` tinyint(1) DEFAULT NULL,
  `wide_logo_processing` tinyint(1) DEFAULT NULL,
  `cover_photo_processing` tinyint(1) DEFAULT NULL,
  `small_cover_photo_processing` tinyint(1) DEFAULT NULL,
  `favicon_processing` tinyint(1) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT NULL,
  `google_connect_secret` varchar(255) DEFAULT NULL,
  `google_connect_id` varchar(255) DEFAULT NULL,
  `google_connect_enabled` tinyint(1) DEFAULT '1',
  `end_user_analytics` tinyint(1) DEFAULT '1',
  `footer_theme` int(11) DEFAULT '0',
  `footer_copyright` text,
  `footer_enabled` tinyint(1) DEFAULT '0',
  `show_slogan` tinyint(1) DEFAULT '1',
  `show_description` tinyint(1) DEFAULT '1',
  `hsts_max_age` int(11) DEFAULT NULL,
  `logo_link` varchar(255) DEFAULT NULL,
  `linkedin_connect_enabled` tinyint(1) DEFAULT NULL,
  `linkedin_connect_id` varchar(255) DEFAULT NULL,
  `linkedin_connect_secret` varchar(255) DEFAULT NULL,
  `pre_approved_listings` tinyint(1) DEFAULT '0',
  `allow_free_conversations` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_communities_on_uuid` (`uuid`),
  KEY `index_communities_on_domain` (`domain`),
  KEY `index_communities_on_ident` (`ident`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communities`
--

LOCK TABLES `communities` WRITE;
/*!40000 ALTER TABLE `communities` DISABLE KEYS */;
INSERT INTO `communities` VALUES (1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','pdx-climate-action-hub',NULL,0,'2021-08-18 09:35:40','2021-11-01 17:38:12','---\nlocales:\n- en\n','SHARETRIBE1.0',0,0,0,1,1,0,NULL,1,0,NULL,0,1,0,1,NULL,NULL,'US',8,NULL,NULL,'ORCLimateHubLOGOSquare2-01.png','image/png',62967,'2021-11-01 17:38:11','Portland_and_Mt_Hood-1920-450-70dpi.jpg','image/jpeg',127251,'2021-08-25 02:52:44','Portland_and_Mt_Hood-1920-96px-70dpi.jpg','image/jpeg',47114,'2021-08-25 02:52:45',NULL,NULL,NULL,NULL,NULL,0,'full-logo','USD',1,NULL,0,NULL,NULL,NULL,NULL,'first_name_with_initial',NULL,0,NULL,0,'grid','ORCLimateHubLOGOBanner2-01.png','image/png',12534,'2021-11-01 17:38:11',0,0,1,0,0,100000,14,'favicon-pdx-climate-action-32px.png','image/png',2738,'2021-08-25 02:52:45',7,1,'',1,0,0,0,0,0,NULL,NULL,NULL,1,1,0,'',1,1,0,NULL,NULL,NULL,NULL,NULL,0,1);
/*!40000 ALTER TABLE `communities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_customizations`
--

DROP TABLE IF EXISTS `community_customizations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_customizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `blank_slate` text,
  `welcome_email_content` text,
  `how_to_use_page_content` mediumtext,
  `about_page_content` mediumtext,
  `terms_page_content` mediumtext,
  `privacy_page_content` mediumtext,
  `signup_info_content` text,
  `private_community_homepage_content` mediumtext,
  `verification_to_post_listings_info_content` mediumtext,
  `search_placeholder` varchar(255) DEFAULT NULL,
  `transaction_agreement_label` varchar(255) DEFAULT NULL,
  `transaction_agreement_content` mediumtext,
  `social_media_title` varchar(255) DEFAULT NULL,
  `social_media_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `meta_description` text,
  `search_meta_title` varchar(255) DEFAULT NULL,
  `search_meta_description` text,
  `listing_meta_title` varchar(255) DEFAULT NULL,
  `listing_meta_description` text,
  `category_meta_title` varchar(255) DEFAULT NULL,
  `category_meta_description` text,
  `profile_meta_title` varchar(255) DEFAULT NULL,
  `profile_meta_description` text,
  PRIMARY KEY (`id`),
  KEY `index_community_customizations_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_customizations`
--

LOCK TABLES `community_customizations` WRITE;
/*!40000 ALTER TABLE `community_customizations` DISABLE KEYS */;
INSERT INTO `community_customizations` VALUES (1,1,'en','Oregon Climate Action Hub','Be part of the solution. ','Description...','2021-08-18 09:35:40','2021-10-29 15:22:28',NULL,NULL,'<h1>How It Works</h1><div>Our partner climate organizations will be able to post events, meetings, actions, projects, policy initiatives and community work days so others can get involved, join, volunteer or donate to help us create a world that works for all. Use the buttons at the top left to choose from the \"Post\", \"Events\" or \"Place (map)\" view. Choose the post \"Type\" for \"online\" or \"in-person\" posts. You can filter posts to show any Category or Climate Solution Sector or Area. Find something that fits your passion and Get Into Action.&nbsp;</div>','<h2>Oregon Climate <i>Action </i>Hub</h2>\n<p>This is a place find how you can make a difference. This is where organizations can find volunteers.&nbsp;</p>\n<p><br></p>','<h2>PDX Climate Action Hub terms of use</h2>\n<p>\nPDX Climate Action Hub is a web service built on the EngagingNet platform by Engaging Press. The general terms of EngagingNet&nbsp;below apply also to the use of PDX Climate Action Hub.</p>\n<p>\nEngagingNet is a community platform&nbsp;that allows its users to post&nbsp;and communicate with each other. The EngagingNet service&nbsp;may only be used in accordance with these terms of use. The service provider reserves the right to change these terms of use if required.\n</p>\n<h3>Rights of Content</h3>\n<p>\nThe users themselves retain the right to all text, pictures and other content that they create in the service. The users allow others to utilize the content in accordance with the nature of the service and furthermore allow the service provider to file information and data and make changes that are necessary for the service or the study, however other rights are not transferred from the users, unless specifically otherwise agreed. The responsibility of the content lies with the user, who has produced it to the service. The service provider has the right to remove any material when it deems it necessary.\n</p>\n<h3>Disclaimer</h3>\n<p>\nNo guarantees of the functioning of the EngagingNet&nbsp;service are given. The users are themselves responsible for their actions in the service and they should estimate the reliability of other users before dealing with them. The service provider can under no circumstances be liable for damage that is caused to the user. The user may not store any information or data in the service, and expect it to remain there.\n</p>\n<h3>The Removal of a User</h3>\n<p>\nThe service provider has the right to remove any users from EngagingNet&nbsp;and terminate their right of use of the service without any specific reason and without being liable for compensation.\n</p>\n<h3>Applicable Jurisdiction</h3>\n<p>\nThe jurisdiction that is applicable in this service and these terms of use is that of the United States, unless something else is required by binding law.\n</p>','<h3><span style=\"font-size: 1em;\">Use of personal details</span><br></h3>\n<p>\nPersonal details are collected to make communication and use of service possible. Details can be used for communication between service providers and users and also for direct communication between users. Some personal details are visible on the profile page of the user, but those details are voluntary (except name).\n</p>\n<p>\nThe handling of personal details is not outsourced, but the register data is stored on a server that is rented from a third party company.\n</p>\n<h3>\nInformation content of the register\n</h3>\n<p>\nThe following information may be stored in the register:\n</p><ul>\n<li>\nPersonal details: Name, email address, phone number, street address\n</li>\n<li>\nAccount details: username, password (stored in encrypted format)\n</li>\n<li>\nThe description text that the user may write about him/herself\n</li>\n<li>\nThe offers and requests the user has posted to the service\n</li>\n<li>\nThe given and received feedback and badges\n</li>\n<li>\nStatistical data about service usage, e.g. number times the user has logged in\n</li>\n</ul>\n<p></p>\n<h3>\nRegular sources of information\n</h3>\n<p>\nPersonal details are given by the user on registration to the service or when using it later.\n</p>\n<h3>\nRegular handovers of the information\n</h3>\n<p>\nThe information may be handed over for research purposes as described in the\n<a href=\"/en/infos/terms\">Terms of use</a>\nthat the user accepts before starting to use the service. The researchers may not publish any research results so that identifying information would be revealed or that any specific user could be detected.\n</p>\n<p>\nInformation considering users of a single PDX Climate Action Hub community may be handed over to the client who has founded that community or to the community administrators appointed by that client.</p>\n<h3>\nRegister protection principles\n</h3>\n<p>\nThe information is stored on computers. The access to the information is restricted with passwords and physical access to the computers is restricted by the server hosting company.\n</p>','<span class=\"blue\"><span class=\"blue\"></span></span><h3><span style=\"background-color:#33CCFF\"></span><font color=\"#660000\">We will keep your info safe.&nbsp;</font></h3><div><font color=\"#660000\"><br></font></div><div><br></div><h3><br></h3>',NULL,'Oregon Climate Action Hub requires people to be verified manually by admin before they can post listings. You have not yet been verified. Please <a href=\"/en/user_feedbacks/new\">contact the Oregon Climate Action Hub team</a> to be verified.','Search for ways to help',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `community_customizations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_memberships`
--

DROP TABLE IF EXISTS `community_memberships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_memberships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) NOT NULL,
  `community_id` int(11) NOT NULL,
  `admin` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `consent` varchar(255) DEFAULT NULL,
  `invitation_id` int(11) DEFAULT NULL,
  `last_page_load_date` datetime DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'accepted',
  `can_post_listings` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_community_memberships_on_person_id` (`person_id`),
  KEY `index_community_memberships_on_community_id` (`community_id`),
  KEY `community_person_status` (`community_id`,`person_id`,`status`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_memberships`
--

LOCK TABLES `community_memberships` WRITE;
/*!40000 ALTER TABLE `community_memberships` DISABLE KEYS */;
INSERT INTO `community_memberships` VALUES (1,'v4LxAWSIxaswezqqvHFQGA',1,1,'2021-08-18 09:35:41','2021-11-01 17:40:27','SHARETRIBE1.0',NULL,'2021-11-01 17:40:27','accepted',1),(2,'lHWG5Y2z6chmZPFTFWBZzw',1,0,'2021-08-18 09:45:34','2021-08-18 09:45:34','SHARETRIBE1.0',NULL,'2021-08-18 09:45:34','pending_email_confirmation',0),(3,'tvNYAmURaFGVnbRimB3VmA',1,0,'2021-09-14 19:36:15','2021-09-14 19:36:15','SHARETRIBE1.0',NULL,'2021-09-14 19:36:15','pending_email_confirmation',0),(4,'kS5u1shcv6nXzXzziGRa3w',1,0,'2021-10-12 19:35:37','2021-10-12 19:35:37','SHARETRIBE1.0',NULL,'2021-10-12 19:35:37','pending_email_confirmation',0),(5,'NQXdZK130o52pyjh6cf2eQ',1,0,'2021-10-26 04:00:32','2021-10-26 04:00:32','SHARETRIBE1.0',NULL,'2021-10-26 04:00:32','pending_email_confirmation',0),(6,'ZYCFufoW34uR0hTlq6gMsA',1,0,'2021-10-27 19:33:40','2021-10-27 19:33:40','SHARETRIBE1.0',NULL,'2021-10-27 19:33:40','pending_email_confirmation',0),(7,'m0H0sUcZzsE6lnUxjy1Hiw',1,0,'2021-10-29 20:20:58','2021-10-29 20:20:58','SHARETRIBE1.0',NULL,'2021-10-29 20:20:58','pending_email_confirmation',0),(8,'occd7nXvyup3xXM-FhNXAQ',1,0,'2021-10-29 21:11:10','2021-10-29 21:11:10','SHARETRIBE1.0',NULL,'2021-10-29 21:11:10','pending_email_confirmation',0);
/*!40000 ALTER TABLE `community_memberships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_social_logos`
--

DROP TABLE IF EXISTS `community_social_logos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_social_logos` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` bigint(20) DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_community_social_logos_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_social_logos`
--

LOCK TABLES `community_social_logos` WRITE;
/*!40000 ALTER TABLE `community_social_logos` DISABLE KEYS */;
/*!40000 ALTER TABLE `community_social_logos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `community_translations`
--

DROP TABLE IF EXISTS `community_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `community_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `locale` varchar(16) NOT NULL,
  `translation_key` varchar(255) NOT NULL,
  `translation` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_community_translations_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `community_translations`
--

LOCK TABLES `community_translations` WRITE;
/*!40000 ALTER TABLE `community_translations` DISABLE KEYS */;
INSERT INTO `community_translations` VALUES (1,1,'en','ecd9322a-0c20-494d-b295-b89cee8993ca','In-Person','2021-08-18 09:35:40','2021-10-28 00:48:20'),(2,1,'en','30d2e0e8-310f-4c21-ba3b-7b24e48303df','In-Person','2021-08-18 09:35:40','2021-10-28 00:48:20'),(3,1,'en','14ce3dd8-aacc-4717-b07a-cd62208da56d','Online','2021-08-18 09:35:40','2021-10-28 00:48:45'),(4,1,'en','c018257d-a731-49ec-aeef-1816ee57982b','Online','2021-08-18 09:35:40','2021-10-28 00:48:45'),(5,1,'en','6074b1a3-a0fe-4475-b31c-69f1c018cb18','Requesting','2021-08-25 02:58:59','2021-08-25 02:58:59'),(6,1,'en','bf412bb3-3afd-4e7d-a736-85d2141cbc5f','Offer','2021-08-25 02:58:59','2021-08-25 02:58:59');
/*!40000 ALTER TABLE `community_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_requests`
--

DROP TABLE IF EXISTS `contact_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `plan_type` varchar(255) DEFAULT NULL,
  `marketplace_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_requests`
--

LOCK TABLES `contact_requests` WRITE;
/*!40000 ALTER TABLE `contact_requests` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_requests` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conversations`
--

DROP TABLE IF EXISTS `conversations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conversations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_message_at` datetime DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `starting_page` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_conversations_on_listing_id` (`listing_id`),
  KEY `index_conversations_on_community_id` (`community_id`),
  KEY `index_conversations_on_last_message_at` (`last_message_at`),
  KEY `index_conversations_on_starting_page` (`starting_page`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conversations`
--

LOCK TABLES `conversations` WRITE;
/*!40000 ALTER TABLE `conversations` DISABLE KEYS */;
INSERT INTO `conversations` VALUES (1,'Check',1,'2021-08-25 02:54:17','2021-08-25 02:54:17','2021-08-25 02:54:17',1,NULL),(2,'Check',2,'2021-08-25 02:55:55','2021-08-25 02:55:55','2021-08-25 02:55:55',1,NULL),(3,'Check',1,'2021-08-25 02:56:25','2021-08-25 02:56:25','2021-08-25 02:56:25',1,NULL),(4,'Check',3,'2021-08-25 03:00:44','2021-08-25 03:00:44','2021-08-25 03:00:44',1,NULL),(5,'Check',4,'2021-08-25 03:02:37','2021-08-25 03:02:37','2021-08-25 03:02:37',1,NULL),(6,'Check',2,'2021-08-25 03:03:28','2021-08-25 03:03:28','2021-08-25 03:03:28',1,NULL),(7,'Check',2,'2021-08-25 03:04:20','2021-08-25 03:04:20','2021-08-25 03:04:20',1,NULL),(8,'Check',5,'2021-08-25 03:05:48','2021-08-25 03:05:48','2021-08-25 03:05:48',1,NULL),(9,'Check',6,'2021-08-26 07:11:52','2021-08-26 07:11:52','2021-08-26 07:11:52',1,NULL),(10,'Check',7,'2021-08-26 07:13:04','2021-08-26 07:13:04','2021-08-26 07:13:04',1,NULL),(11,'Check',7,'2021-08-26 09:56:29','2021-08-26 09:56:29','2021-08-26 09:56:29',1,NULL),(12,'Check',3,'2021-08-26 09:56:45','2021-08-26 09:56:45','2021-08-26 09:56:45',1,NULL),(13,'Check',1,'2021-08-26 09:56:53','2021-08-26 09:56:53','2021-08-26 09:56:53',1,NULL),(14,'Check',2,'2021-08-26 09:57:04','2021-08-26 09:57:04','2021-08-26 09:57:04',1,NULL),(15,'Check',1,'2021-09-13 17:28:16','2021-09-13 17:28:16','2021-09-13 17:28:16',1,NULL),(16,'Check',1,'2021-09-13 17:33:46','2021-09-13 17:33:46','2021-09-13 17:33:46',1,NULL),(17,'Check',1,'2021-09-13 17:34:11','2021-09-13 17:34:11','2021-09-13 17:34:11',1,NULL),(18,'Check',1,'2021-09-13 17:34:56','2021-09-13 17:34:56','2021-09-13 17:34:56',1,NULL),(19,'Check',1,'2021-09-13 17:35:03','2021-09-13 17:35:03','2021-09-13 17:35:03',1,NULL),(20,'Check',3,'2021-09-13 17:35:14','2021-09-13 17:35:14','2021-09-13 17:35:14',1,NULL),(21,'Check',1,'2021-09-13 17:35:26','2021-09-13 17:35:26','2021-09-13 17:35:26',1,NULL),(22,'Check',3,'2021-09-13 17:35:41','2021-09-13 17:35:41','2021-09-13 17:35:41',1,NULL),(23,'Check',1,'2021-09-13 17:41:38','2021-09-13 17:41:38','2021-09-13 17:41:38',1,NULL),(24,'Check',8,'2021-09-13 17:42:49','2021-09-13 17:42:49','2021-09-13 17:42:49',1,NULL),(25,'Check',8,'2021-09-13 17:44:01','2021-09-13 17:44:01','2021-09-13 17:44:01',1,NULL),(26,'Check',3,'2021-09-16 13:52:13','2021-09-16 13:52:13','2021-09-16 13:52:13',1,NULL),(27,'Check',3,'2021-09-16 14:03:01','2021-09-16 14:03:01','2021-09-16 14:03:01',1,NULL),(28,'Check',3,'2021-09-16 14:03:47','2021-09-16 14:03:47','2021-09-16 14:03:47',1,NULL),(29,'Check',3,'2021-09-16 14:06:20','2021-09-16 14:06:20','2021-09-16 14:06:20',1,NULL),(30,'Check',3,'2021-09-16 14:06:43','2021-09-16 14:06:43','2021-09-16 14:06:43',1,NULL),(31,'Check',8,'2021-09-16 14:06:50','2021-09-16 14:06:50','2021-09-16 14:06:50',1,NULL),(32,'Check',4,'2021-09-16 14:07:04','2021-09-16 14:07:04','2021-09-16 14:07:03',1,NULL),(33,'Check',8,'2021-09-16 14:30:54','2021-09-16 14:30:54','2021-09-16 14:30:54',1,NULL),(34,'Check',9,'2021-09-16 14:31:54','2021-09-16 14:31:54','2021-09-16 14:31:54',1,NULL),(35,'Check',4,'2021-09-16 15:06:01','2021-09-16 15:06:01','2021-09-16 15:06:01',1,NULL),(36,'Check',9,'2021-09-16 15:54:20','2021-09-16 15:54:20','2021-09-16 15:54:20',1,NULL),(37,'Check',1,'2021-09-17 23:50:12','2021-09-17 23:50:12','2021-09-17 23:50:12',1,NULL),(38,'Check',3,'2021-09-17 23:51:15','2021-09-17 23:51:15','2021-09-17 23:51:15',1,NULL),(39,'Check',3,'2021-09-25 19:06:29','2021-09-25 19:06:29','2021-09-25 19:06:29',1,NULL),(40,'Check',8,'2021-09-26 13:52:31','2021-09-26 13:52:31','2021-09-26 13:52:31',1,NULL),(41,'Check',3,'2021-09-26 13:52:40','2021-09-26 13:52:40','2021-09-26 13:52:40',1,NULL),(42,'Check',1,'2021-10-16 19:23:50','2021-10-16 19:23:50','2021-10-16 19:23:50',1,NULL),(43,'Check',3,'2021-10-16 19:31:05','2021-10-16 19:31:05','2021-10-16 19:31:05',1,NULL),(44,'Check',4,'2021-10-16 19:31:42','2021-10-16 19:31:42','2021-10-16 19:31:42',1,NULL),(45,'Check',4,'2021-10-26 23:33:13','2021-10-26 23:33:13','2021-10-26 23:33:13',1,NULL),(46,'Check',4,'2021-10-26 23:33:22','2021-10-26 23:33:22','2021-10-26 23:33:22',1,NULL),(47,'Check',8,'2021-10-27 14:48:56','2021-10-27 14:48:56','2021-10-27 14:48:56',1,NULL),(48,'Check',10,'2021-10-27 14:50:26','2021-10-27 14:50:26','2021-10-27 14:50:26',1,NULL),(49,'Check',10,'2021-10-27 14:50:45','2021-10-27 14:50:45','2021-10-27 14:50:45',1,NULL),(50,'Check',5,'2021-10-27 14:51:26','2021-10-27 14:51:26','2021-10-27 14:51:26',1,NULL),(51,'Check',5,'2021-10-27 14:51:48','2021-10-27 14:51:48','2021-10-27 14:51:48',1,NULL),(52,'Check',10,'2021-10-27 14:52:09','2021-10-27 14:52:09','2021-10-27 14:52:09',1,NULL),(53,'Check',10,'2021-10-27 14:52:57','2021-10-27 14:52:57','2021-10-27 14:52:57',1,NULL),(54,'Check',10,'2021-10-27 15:01:30','2021-10-27 15:01:30','2021-10-27 15:01:30',1,NULL),(55,'Check',11,'2021-10-27 15:09:53','2021-10-27 15:09:53','2021-10-27 15:09:53',1,NULL),(56,'Check',11,'2021-10-27 16:09:17','2021-10-27 16:09:17','2021-10-27 16:09:17',1,NULL),(57,'Check',11,'2021-10-27 16:10:06','2021-10-27 16:10:06','2021-10-27 16:10:06',1,NULL),(58,'Check',11,'2021-10-27 16:11:45','2021-10-27 16:11:45','2021-10-27 16:11:45',1,NULL),(59,'Check',10,'2021-10-27 17:03:36','2021-10-27 17:03:36','2021-10-27 17:03:36',1,NULL),(60,'Check',10,'2021-10-27 17:04:35','2021-10-27 17:04:35','2021-10-27 17:04:35',1,NULL),(61,'Check',10,'2021-10-27 17:49:13','2021-10-27 17:49:13','2021-10-27 17:49:13',1,NULL),(62,'Check',8,'2021-10-27 21:07:19','2021-10-27 21:07:19','2021-10-27 21:07:19',1,NULL),(63,'Check',10,'2021-10-27 21:07:29','2021-10-27 21:07:29','2021-10-27 21:07:29',1,NULL),(64,'Check',1,'2021-10-27 21:28:45','2021-10-27 21:28:45','2021-10-27 21:28:45',1,NULL),(65,'Check',12,'2021-10-28 01:08:33','2021-10-28 01:08:33','2021-10-28 01:08:33',1,NULL),(66,'Check',12,'2021-10-28 01:09:17','2021-10-28 01:09:17','2021-10-28 01:09:17',1,NULL),(67,'Check',12,'2021-10-28 01:09:55','2021-10-28 01:09:55','2021-10-28 01:09:55',1,NULL),(68,'Check',12,'2021-10-28 01:11:46','2021-10-28 01:11:46','2021-10-28 01:11:46',1,NULL),(69,'Check',12,'2021-10-28 01:12:23','2021-10-28 01:12:23','2021-10-28 01:12:23',1,NULL),(70,'Check',12,'2021-10-28 01:13:30','2021-10-28 01:13:30','2021-10-28 01:13:30',1,NULL),(71,'Check',12,'2021-10-28 01:14:03','2021-10-28 01:14:03','2021-10-28 01:14:03',1,NULL),(72,'Check',12,'2021-10-28 01:18:25','2021-10-28 01:18:25','2021-10-28 01:18:25',1,NULL),(73,'Check',12,'2021-10-28 01:19:21','2021-10-28 01:19:21','2021-10-28 01:19:21',1,NULL),(74,'Check',12,'2021-10-28 01:20:26','2021-10-28 01:20:26','2021-10-28 01:20:26',1,NULL),(75,'Check',12,'2021-10-28 01:22:15','2021-10-28 01:22:15','2021-10-28 01:22:15',1,NULL),(76,'Check',12,'2021-10-28 01:22:52','2021-10-28 01:22:52','2021-10-28 01:22:52',1,NULL),(77,'Check',12,'2021-10-28 01:23:17','2021-10-28 01:23:17','2021-10-28 01:23:17',1,NULL),(78,'Check',12,'2021-10-28 01:23:39','2021-10-28 01:23:39','2021-10-28 01:23:39',1,NULL),(79,'Check',12,'2021-10-28 01:23:48','2021-10-28 01:23:48','2021-10-28 01:23:48',1,NULL),(80,'Check',12,'2021-10-28 01:24:57','2021-10-28 01:24:57','2021-10-28 01:24:57',1,NULL),(81,'Check',12,'2021-10-28 01:28:55','2021-10-28 01:28:55','2021-10-28 01:28:55',1,NULL),(82,'Check',12,'2021-10-28 01:30:36','2021-10-28 01:30:36','2021-10-28 01:30:36',1,NULL),(83,'Check',12,'2021-10-28 01:31:04','2021-10-28 01:31:04','2021-10-28 01:31:04',1,NULL),(84,'Check',12,'2021-10-28 02:14:32','2021-10-28 02:14:32','2021-10-28 02:14:32',1,NULL),(85,'Check',12,'2021-10-28 02:15:35','2021-10-28 02:15:35','2021-10-28 02:15:35',1,NULL),(86,'Check',12,'2021-10-28 20:48:30','2021-10-28 20:48:30','2021-10-28 20:48:30',1,NULL),(87,'Check',12,'2021-10-28 20:51:46','2021-10-28 20:51:46','2021-10-28 20:51:46',1,NULL),(88,'Check',12,'2021-10-29 02:18:53','2021-10-29 02:18:53','2021-10-29 02:18:53',1,NULL),(89,'Check',1,'2021-10-29 02:19:57','2021-10-29 02:19:57','2021-10-29 02:19:57',1,NULL),(90,'Check',8,'2021-10-29 02:20:15','2021-10-29 02:20:15','2021-10-29 02:20:15',1,NULL),(91,'Check',4,'2021-10-29 02:20:35','2021-10-29 02:20:35','2021-10-29 02:20:35',1,NULL),(92,'Check',3,'2021-10-29 02:20:49','2021-10-29 02:20:49','2021-10-29 02:20:49',1,NULL),(93,'Check',12,'2021-10-29 02:48:08','2021-10-29 02:48:08','2021-10-29 02:48:08',1,NULL),(94,'Check',12,'2021-10-29 02:52:25','2021-10-29 02:52:25','2021-10-29 02:52:25',1,NULL),(95,'Check',12,'2021-10-29 02:55:10','2021-10-29 02:55:10','2021-10-29 02:55:10',1,NULL),(96,'Check',13,'2021-10-29 03:13:44','2021-10-29 03:13:44','2021-10-29 03:13:44',1,NULL),(97,'Check',13,'2021-10-29 14:13:06','2021-10-29 14:13:06','2021-10-29 14:13:06',1,NULL),(98,'Check',13,'2021-10-29 14:13:42','2021-10-29 14:13:42','2021-10-29 14:13:42',1,NULL),(99,'Check',12,'2021-10-29 15:27:47','2021-10-29 15:27:47','2021-10-29 15:27:47',1,NULL),(100,'Check',13,'2021-10-29 15:29:41','2021-10-29 15:29:41','2021-10-29 15:29:41',1,NULL),(101,'Check',13,'2021-10-29 16:33:54','2021-10-29 16:33:54','2021-10-29 16:33:54',1,NULL),(102,'Check',13,'2021-10-29 16:34:15','2021-10-29 16:34:15','2021-10-29 16:34:15',1,NULL),(103,'Check',14,'2021-10-31 15:29:32','2021-10-31 15:29:32','2021-10-31 15:29:32',1,NULL),(104,'Check',14,'2021-10-31 15:30:17','2021-10-31 15:30:17','2021-10-31 15:30:17',1,NULL),(105,'Check',14,'2021-10-31 15:35:53','2021-10-31 15:35:53','2021-10-31 15:35:53',1,NULL),(106,'Check',15,'2021-11-01 17:45:21','2021-11-01 17:45:21','2021-11-01 17:45:21',1,NULL);
/*!40000 ALTER TABLE `conversations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_names`
--

DROP TABLE IF EXISTS `custom_field_names`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_names` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `custom_field_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_names_on_custom_field_id` (`custom_field_id`),
  KEY `locale_index` (`custom_field_id`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_names`
--

LOCK TABLES `custom_field_names` WRITE;
/*!40000 ALTER TABLE `custom_field_names` DISABLE KEYS */;
INSERT INTO `custom_field_names` VALUES (3,'Solution Sector or Area','en','3','2021-09-13 17:41:19','2021-10-28 00:46:35'),(4,'Organization Name','en','4','2021-10-26 23:20:20','2021-10-26 23:20:20'),(5,'If you selected \"Other\" please explain.','en','5','2021-10-28 00:53:17','2021-10-28 00:53:17'),(6,'Sponsoring organization','en','6','2021-10-28 00:55:49','2021-10-28 00:55:49'),(7,'Start Date','en','7','2021-10-28 00:57:11','2021-10-28 00:57:11'),(8,'Start Time','en','8','2021-10-28 00:59:12','2021-10-28 00:59:12'),(9,'End Time','en','9','2021-10-28 00:59:46','2021-10-28 00:59:46'),(10,'URL for Website Opportunity','en','10','2021-10-28 01:01:22','2021-10-28 01:01:22'),(11,'Cost in Dollars','en','11','2021-10-28 01:02:24','2021-10-28 01:02:24'),(12,'Instructions to participate','en','12','2021-10-28 01:03:17','2021-10-28 01:03:17'),(13,'Time Commitment','en','13','2021-10-28 01:30:28','2021-10-28 01:30:28'),(14,'What type of organization are you representing?','en','14','2021-10-28 01:55:15','2021-10-28 01:55:15'),(15,'If \"other\" kind of organization, please explain.','en','15','2021-10-28 01:56:17','2021-10-28 01:56:17'),(16,'Describe your mission or commitment.','en','16','2021-10-28 02:05:32','2021-10-28 02:05:32');
/*!40000 ALTER TABLE `custom_field_names` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_option_selections`
--

DROP TABLE IF EXISTS `custom_field_option_selections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_option_selections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_value_id` int(11) DEFAULT NULL,
  `custom_field_option_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_selected_options_on_custom_field_value_id` (`custom_field_value_id`),
  KEY `index_custom_field_option_selections_on_custom_field_option_id` (`custom_field_option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_option_selections`
--

LOCK TABLES `custom_field_option_selections` WRITE;
/*!40000 ALTER TABLE `custom_field_option_selections` DISABLE KEYS */;
INSERT INTO `custom_field_option_selections` VALUES (1,11,1,8,'2021-09-13 17:42:49','2021-09-13 17:42:49'),(2,12,1,9,'2021-09-16 14:31:53','2021-09-16 14:31:53'),(5,17,3,11,'2021-10-27 16:11:44','2021-10-27 16:11:44'),(9,95,3,12,'2021-10-28 20:51:46','2021-10-28 20:51:46'),(10,102,10,NULL,'2021-10-29 02:53:45','2021-10-29 02:53:45'),(25,118,1,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(26,118,2,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(27,118,3,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(28,118,4,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(29,118,5,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(30,118,6,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(31,118,7,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(32,118,17,13,'2021-10-29 16:34:15','2021-10-29 16:34:15'),(35,145,17,14,'2021-10-31 15:35:52','2021-10-31 15:35:52'),(36,150,3,15,'2021-11-01 17:45:20','2021-11-01 17:45:20');
/*!40000 ALTER TABLE `custom_field_option_selections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_option_titles`
--

DROP TABLE IF EXISTS `custom_field_option_titles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_option_titles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(255) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `custom_field_option_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_option_titles_on_custom_field_option_id` (`custom_field_option_id`),
  KEY `locale_index` (`custom_field_option_id`,`locale`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_option_titles`
--

LOCK TABLES `custom_field_option_titles` WRITE;
/*!40000 ALTER TABLE `custom_field_option_titles` DISABLE KEYS */;
INSERT INTO `custom_field_option_titles` VALUES (1,'Energy','en',1,'2021-09-13 17:41:19','2021-09-13 17:41:19'),(2,'Transportation','en',2,'2021-09-13 17:41:19','2021-09-13 17:41:19'),(3,'Food','en',3,'2021-10-27 15:06:55','2021-10-27 15:06:55'),(4,'Land Use','en',4,'2021-10-27 15:06:55','2021-10-27 15:06:55'),(5,'Buildings','en',5,'2021-10-27 15:06:55','2021-10-27 15:06:55'),(6,'Industry','en',6,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(7,'Protecting Land Sinks','en',7,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(8,'Tackling Pollution','en',8,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(9,'Mitigating Climate Harm','en',9,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(10,'Stand alone non-profit organization','en',10,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(11,'Local chapter of a larger non-profit organization','en',11,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(12,'Business','en',12,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(13,'Government agency','en',13,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(14,'Neighborhood Association','en',14,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(15,'Myself as an individual','en',15,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(16,'Other','en',16,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(17,'All Solution Sectors','en',17,'2021-10-29 16:33:40','2021-10-29 16:33:40');
/*!40000 ALTER TABLE `custom_field_option_titles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_options`
--

DROP TABLE IF EXISTS `custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_options_on_custom_field_id` (`custom_field_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_options`
--

LOCK TABLES `custom_field_options` WRITE;
/*!40000 ALTER TABLE `custom_field_options` DISABLE KEYS */;
INSERT INTO `custom_field_options` VALUES (1,3,1,'2021-09-13 17:41:19','2021-09-13 17:41:19'),(2,3,2,'2021-09-13 17:41:19','2021-09-13 17:41:19'),(3,3,3,'2021-10-27 15:06:55','2021-10-27 15:06:55'),(4,3,4,'2021-10-27 15:06:55','2021-10-27 15:06:55'),(5,3,5,'2021-10-27 15:06:55','2021-10-27 15:06:55'),(6,3,6,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(7,3,7,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(8,3,8,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(9,3,9,'2021-10-28 00:46:35','2021-10-28 00:46:35'),(10,14,1,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(11,14,2,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(12,14,3,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(13,14,4,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(14,14,5,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(15,14,6,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(16,14,7,'2021-10-28 01:55:15','2021-10-28 01:55:15'),(17,3,10,'2021-10-29 16:33:40','2021-10-29 16:33:40');
/*!40000 ALTER TABLE `custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_field_values`
--

DROP TABLE IF EXISTS `custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_field_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `text_value` text,
  `numeric_value` float DEFAULT NULL,
  `date_value` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `person_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_custom_field_values_on_listing_id` (`listing_id`),
  KEY `index_custom_field_values_on_type` (`type`),
  KEY `index_custom_field_values_on_person_id` (`person_id`)
) ENGINE=InnoDB AUTO_INCREMENT=156 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_field_values`
--

LOCK TABLES `custom_field_values` WRITE;
/*!40000 ALTER TABLE `custom_field_values` DISABLE KEYS */;
INSERT INTO `custom_field_values` VALUES (11,3,8,NULL,NULL,NULL,'2021-09-13 17:42:49','2021-09-13 17:42:49','CheckboxFieldValue',0,NULL),(12,3,9,NULL,NULL,NULL,'2021-09-16 14:31:53','2021-09-16 14:31:53','CheckboxFieldValue',0,NULL),(13,4,NULL,NULL,NULL,NULL,'2021-10-27 03:17:53','2021-10-27 03:17:53','TextFieldValue',0,'NQXdZK130o52pyjh6cf2eQ'),(14,4,NULL,'',NULL,NULL,'2021-10-27 14:40:27','2021-10-29 02:53:45','TextFieldValue',0,'tvNYAmURaFGVnbRimB3VmA'),(17,3,11,NULL,NULL,NULL,'2021-10-27 16:11:44','2021-10-27 16:11:44','CheckboxFieldValue',0,NULL),(18,4,NULL,'',NULL,NULL,'2021-10-27 17:05:00','2021-10-29 14:27:10','TextFieldValue',0,'kS5u1shcv6nXzXzziGRa3w'),(19,4,NULL,NULL,NULL,NULL,'2021-10-27 21:45:30','2021-10-27 21:45:30','TextFieldValue',0,'lHWG5Y2z6chmZPFTFWBZzw'),(89,6,12,'Carbon Footprint Eating ',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(90,12,12,'Choose the pathway on our site that will bring you success. ',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(91,7,12,NULL,NULL,'2021-10-20 00:00:00','2021-10-28 20:51:46','2021-10-28 20:51:46','DateFieldValue',0,NULL),(92,13,12,'30 days',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(93,8,12,'7 pm',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(94,9,12,'7 pm',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(95,3,12,NULL,NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','CheckboxFieldValue',0,NULL),(96,10,12,'https://www.CarbonFootprintEating.org',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(97,5,12,'Plant Based Diet',NULL,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','TextFieldValue',0,NULL),(98,11,12,NULL,0,NULL,'2021-10-28 20:51:46','2021-10-28 20:51:46','NumericFieldValue',0,NULL),(99,14,NULL,NULL,NULL,NULL,'2021-10-29 02:00:36','2021-10-29 02:00:36','DropdownFieldValue',0,'kS5u1shcv6nXzXzziGRa3w'),(100,15,NULL,'',NULL,NULL,'2021-10-29 02:00:36','2021-10-29 14:27:10','TextFieldValue',0,'kS5u1shcv6nXzXzziGRa3w'),(101,16,NULL,'',NULL,NULL,'2021-10-29 02:00:36','2021-10-29 14:27:10','TextFieldValue',0,'kS5u1shcv6nXzXzziGRa3w'),(102,14,NULL,NULL,NULL,NULL,'2021-10-29 02:52:45','2021-10-29 02:52:45','DropdownFieldValue',0,'tvNYAmURaFGVnbRimB3VmA'),(103,15,NULL,'',NULL,NULL,'2021-10-29 02:52:45','2021-10-29 02:53:45','TextFieldValue',0,'tvNYAmURaFGVnbRimB3VmA'),(104,16,NULL,'Committed to spreading the word about Drawdown Climate Solutions. ',NULL,NULL,'2021-10-29 02:52:45','2021-10-29 02:53:45','TextFieldValue',0,'tvNYAmURaFGVnbRimB3VmA'),(117,9,13,'8:00 PM',NULL,NULL,'2021-10-29 16:34:15','2021-10-29 16:34:15','TextFieldValue',0,NULL),(118,3,13,NULL,NULL,NULL,'2021-10-29 16:34:15','2021-10-29 16:34:15','CheckboxFieldValue',0,NULL),(119,6,13,'Drawdown.org',NULL,NULL,'2021-10-29 16:34:15','2021-10-29 16:34:15','TextFieldValue',0,NULL),(120,7,13,NULL,NULL,'2021-10-28 00:00:00','2021-10-29 16:34:15','2021-10-29 16:34:15','DateFieldValue',0,NULL),(121,13,13,'1 hour',NULL,NULL,'2021-10-29 16:34:15','2021-10-29 16:34:15','TextFieldValue',0,NULL),(122,8,13,'7:00 PM',NULL,NULL,'2021-10-29 16:34:15','2021-10-29 16:34:15','TextFieldValue',0,NULL),(139,6,14,'Greater Portland Sustainability Education Network (GPSEN) and Portland Youth Climate Collective',NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','TextFieldValue',0,NULL),(140,12,14,'Learn more about planning committee details and more at https://linktr.ee/PdxYouthClimate. Volunteer positions are also available.',NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','TextFieldValue',0,NULL),(141,7,14,NULL,NULL,'2021-10-29 00:00:00','2021-10-31 15:35:52','2021-10-31 15:35:52','DateFieldValue',0,NULL),(142,13,14,'4-5 hours per week through April ',NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','TextFieldValue',0,NULL),(143,8,14,'N/A',NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','TextFieldValue',0,NULL),(144,9,14,'N/A',NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','TextFieldValue',0,NULL),(145,3,14,NULL,NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','CheckboxFieldValue',0,NULL),(146,10,14,'https://linktr.ee/PdxYouthClimate',NULL,NULL,'2021-10-31 15:35:52','2021-10-31 15:35:52','TextFieldValue',0,NULL),(147,13,15,'30 minutes',NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','TextFieldValue',0,NULL),(148,8,15,'1:30 pm',NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','TextFieldValue',0,NULL),(149,9,15,'2:00 PM',NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','TextFieldValue',0,NULL),(150,3,15,NULL,NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','CheckboxFieldValue',0,NULL),(151,10,15,'www.KCDrawdown.org',NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','TextFieldValue',0,NULL),(152,11,15,NULL,0,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','NumericFieldValue',0,NULL),(153,6,15,'KC Drawdown Society',NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','TextFieldValue',0,NULL),(154,12,15,'Come in work clothes and garden gloves. ',NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','TextFieldValue',0,NULL),(155,7,15,NULL,NULL,'2021-11-02 00:00:00','2021-11-01 17:45:20','2021-11-01 17:45:20','DateFieldValue',0,NULL);
/*!40000 ALTER TABLE `custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `custom_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT NULL,
  `search_filter` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `community_id` int(11) DEFAULT NULL,
  `required` tinyint(1) DEFAULT '1',
  `min` float DEFAULT NULL,
  `max` float DEFAULT NULL,
  `allow_decimals` tinyint(1) DEFAULT '0',
  `entity_type` int(11) DEFAULT '0',
  `public` tinyint(1) DEFAULT '0',
  `assignment` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_custom_fields_on_community_id` (`community_id`),
  KEY `index_custom_fields_on_search_filter` (`search_filter`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `custom_fields`
--

LOCK TABLES `custom_fields` WRITE;
/*!40000 ALTER TABLE `custom_fields` DISABLE KEYS */;
INSERT INTO `custom_fields` VALUES (3,'CheckboxField',NULL,1,'2021-09-13 17:41:19','2021-10-28 00:46:35',1,1,NULL,NULL,0,0,0,0),(4,'TextField',1,1,'2021-10-26 23:20:20','2021-10-26 23:20:20',1,0,NULL,NULL,0,1,1,0),(5,'TextField',NULL,0,'2021-10-28 00:53:17','2021-10-28 00:53:17',1,0,NULL,NULL,0,0,0,0),(6,'TextField',NULL,0,'2021-10-28 00:55:49','2021-10-28 00:55:49',1,1,NULL,NULL,0,0,0,0),(7,'DateField',NULL,0,'2021-10-28 00:57:11','2021-10-28 00:57:11',1,1,NULL,NULL,0,0,0,0),(8,'TextField',NULL,0,'2021-10-28 00:59:12','2021-10-28 00:59:12',1,1,NULL,NULL,0,0,0,0),(9,'TextField',NULL,0,'2021-10-28 00:59:46','2021-10-28 00:59:46',1,1,NULL,NULL,0,0,0,0),(10,'TextField',NULL,0,'2021-10-28 01:01:22','2021-10-28 01:01:22',1,0,NULL,NULL,0,0,0,0),(11,'NumericField',NULL,0,'2021-10-28 01:02:24','2021-10-28 01:02:24',1,0,0,9999,1,0,0,0),(12,'TextField',NULL,0,'2021-10-28 01:03:17','2021-10-28 01:03:17',1,0,NULL,NULL,0,0,0,0),(13,'TextField',NULL,0,'2021-10-28 01:30:28','2021-10-28 01:30:28',1,1,NULL,NULL,0,0,0,0),(14,'DropdownField',2,1,'2021-10-28 01:55:15','2021-10-28 01:55:15',1,0,NULL,NULL,0,1,0,0),(15,'TextField',3,1,'2021-10-28 01:56:17','2021-10-28 01:56:17',1,0,NULL,NULL,0,1,0,0),(16,'TextField',4,1,'2021-10-28 02:05:32','2021-10-28 02:05:32',1,0,NULL,NULL,0,1,1,0);
/*!40000 ALTER TABLE `custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `delayed_jobs`
--

DROP TABLE IF EXISTS `delayed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `delayed_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `priority` int(11) DEFAULT '0',
  `attempts` int(11) DEFAULT '0',
  `handler` text,
  `last_error` text,
  `run_at` datetime DEFAULT NULL,
  `locked_at` datetime DEFAULT NULL,
  `failed_at` datetime DEFAULT NULL,
  `locked_by` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `queue` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `delayed_jobs_priority` (`priority`,`run_at`),
  KEY `index_delayed_jobs_on_locked_created` (`locked_at`,`created_at`),
  KEY `index_delayed_jobs_on_attempts_and_run_at_and_priority` (`attempts`,`run_at`,`priority`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `delayed_jobs`
--

LOCK TABLES `delayed_jobs` WRITE;
/*!40000 ALTER TABLE `delayed_jobs` DISABLE KEYS */;
INSERT INTO `delayed_jobs` VALUES (240,5,0,'--- !ruby/struct:NotifyFollowersJob\nlisting_id: 15\ncommunity_id: 1\n',NULL,'2021-11-01 18:15:20',NULL,NULL,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','default');
/*!40000 ALTER TABLE `delayed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `emails`
--

DROP TABLE IF EXISTS `emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `confirmation_sent_at` datetime DEFAULT NULL,
  `confirmation_token` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `send_notifications` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_emails_on_address_and_community_id` (`address`,`community_id`),
  KEY `index_emails_on_person_id` (`person_id`),
  KEY `index_emails_on_address` (`address`),
  KEY `index_emails_on_confirmation_token` (`confirmation_token`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emails`
--

LOCK TABLES `emails` WRITE;
/*!40000 ALTER TABLE `emails` DISABLE KEYS */;
INSERT INTO `emails` VALUES (1,'v4LxAWSIxaswezqqvHFQGA',1,'ali.hassan.mirzaa@gmail.com','2021-08-18 09:36:47','2021-08-18 09:35:43',NULL,'2021-08-18 09:35:41','2021-08-18 09:36:47',1),(2,'lHWG5Y2z6chmZPFTFWBZzw',1,'rick@engagingeverystudent.com','2021-10-13 15:11:49','2021-08-18 09:45:38','84E0p/7DEOojfALL','2021-08-18 09:45:34','2021-10-13 15:11:49',1),(3,'tvNYAmURaFGVnbRimB3VmA',1,'calicoonlap@gmail.com','2021-10-13 15:01:09','2021-09-14 19:36:17','uPAw/R86U5AUzTbQ','2021-09-14 19:36:15','2021-10-13 15:01:09',1),(4,'kS5u1shcv6nXzXzziGRa3w',1,'hdianajo@gmail.com','2021-10-13 14:59:32','2021-10-12 19:35:40','kHXTVzuKA2jB1fxX','2021-10-12 19:35:37','2021-10-13 14:59:32',1),(5,'NQXdZK130o52pyjh6cf2eQ',1,'karen@igpdx.com','2021-10-27 18:29:28','2021-10-27 03:17:49','r4PLKfDxn/Fzw8We','2021-10-26 04:00:32','2021-10-27 18:29:28',1),(6,'ZYCFufoW34uR0hTlq6gMsA',1,'sam@sambutler.us',NULL,'2021-11-01 17:38:02','gKlp8BXodmDLsCnW','2021-10-27 19:33:40','2021-11-01 17:38:02',1),(7,'m0H0sUcZzsE6lnUxjy1Hiw',1,'hulledwards@gmail.com',NULL,'2021-11-01 17:38:03','3HAqyGOEslRSLmz3','2021-10-29 20:20:58','2021-11-01 17:38:03',1),(8,'occd7nXvyup3xXM-FhNXAQ',1,'pachamamaportland@gmail.com',NULL,'2021-11-01 17:38:03','RVVBYPXG+WIx+NCS','2021-10-29 21:11:10','2021-11-01 17:38:03',1);
/*!40000 ALTER TABLE `emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `start_at_time` time DEFAULT NULL,
  `end_at_time` time DEFAULT NULL,
  `event_rule_hash` text,
  PRIMARY KEY (`id`),
  KEY `index_listing_id` (`listing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `events`
--

LOCK TABLES `events` WRITE;
/*!40000 ALTER TABLE `events` DISABLE KEYS */;
INSERT INTO `events` VALUES (1,'2022-10-13 07:00:00','2022-10-13 07:00:00','2021-08-25 02:54:17','2021-09-13 17:34:11',1,'04:30:00','05:30:00',NULL),(2,'2021-10-28 07:00:00','2021-11-25 08:00:00','2021-10-28 01:08:32','2021-10-28 20:51:46',12,'04:00:00','04:30:00',NULL),(3,'2021-11-02 07:00:00','2021-11-02 07:00:00','2021-11-01 17:45:20','2021-11-01 17:45:20',15,'21:30:00','22:00:00',NULL);
/*!40000 ALTER TABLE `events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `export_task_results`
--

DROP TABLE IF EXISTS `export_task_results`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `export_task_results` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `file_file_name` varchar(255) DEFAULT NULL,
  `file_content_type` varchar(255) DEFAULT NULL,
  `file_file_size` int(11) DEFAULT NULL,
  `file_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `export_task_results`
--

LOCK TABLES `export_task_results` WRITE;
/*!40000 ALTER TABLE `export_task_results` DISABLE KEYS */;
/*!40000 ALTER TABLE `export_task_results` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feature_flags`
--

DROP TABLE IF EXISTS `feature_flags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feature_flags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `feature` varchar(255) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_feature_flags_on_community_id_and_person_id` (`community_id`,`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feature_flags`
--

LOCK TABLES `feature_flags` WRITE;
/*!40000 ALTER TABLE `feature_flags` DISABLE KEYS */;
/*!40000 ALTER TABLE `feature_flags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `feedbacks`
--

DROP TABLE IF EXISTS `feedbacks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `author_id` varchar(255) DEFAULT NULL,
  `url` varchar(2048) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_handled` int(11) DEFAULT '0',
  `email` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `feedbacks`
--

LOCK TABLES `feedbacks` WRITE;
/*!40000 ALTER TABLE `feedbacks` DISABLE KEYS */;
/*!40000 ALTER TABLE `feedbacks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `follower_relationships`
--

DROP TABLE IF EXISTS `follower_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `follower_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) NOT NULL,
  `follower_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_follower_relationships_on_person_id_and_follower_id` (`person_id`,`follower_id`),
  KEY `index_follower_relationships_on_person_id` (`person_id`),
  KEY `index_follower_relationships_on_follower_id` (`follower_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `follower_relationships`
--

LOCK TABLES `follower_relationships` WRITE;
/*!40000 ALTER TABLE `follower_relationships` DISABLE KEYS */;
/*!40000 ALTER TABLE `follower_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitation_unsubscribes`
--

DROP TABLE IF EXISTS `invitation_unsubscribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitation_unsubscribes` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invitation_unsubscribes_on_community_id` (`community_id`),
  KEY `index_invitation_unsubscribes_on_email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitation_unsubscribes`
--

LOCK TABLES `invitation_unsubscribes` WRITE;
/*!40000 ALTER TABLE `invitation_unsubscribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `invitation_unsubscribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `invitations`
--

DROP TABLE IF EXISTS `invitations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `invitations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `usages_left` int(11) DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `information` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `inviter_id` varchar(255) DEFAULT NULL,
  `message` text,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_invitations_on_inviter_id` (`inviter_id`),
  KEY `index_invitations_on_code` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `invitations`
--

LOCK TABLES `invitations` WRITE;
/*!40000 ALTER TABLE `invitations` DISABLE KEYS */;
INSERT INTO `invitations` VALUES (1,'U5ZBVL',1,1,NULL,NULL,'2021-08-25 03:05:24','2021-08-25 03:05:24','lHWG5Y2z6chmZPFTFWBZzw','','rickrey@gmail.com'),(2,'VUE17P',1,1,NULL,NULL,'2021-10-29 01:49:31','2021-10-29 01:49:31','kS5u1shcv6nXzXzziGRa3w','Pamela - this is a test !','hulledwards@gmail.com'),(3,'DAQ62U',1,1,NULL,NULL,'2021-10-29 03:02:04','2021-10-29 03:02:04','tvNYAmURaFGVnbRimB3VmA','Pamela, This is the \"invite new users\" page for Admins on the OR Climate Action Hub, where you can invite someone to become a user, then make them an admin or liaison. Thanks, David\r\nLet me know if this works. ','hulledwards@gmail.com'),(4,'ZZ34AX',1,1,NULL,NULL,'2021-10-29 03:02:04','2021-10-29 03:02:04','tvNYAmURaFGVnbRimB3VmA','Pamela, This is the \"invite new users\" page for Admins on the OR Climate Action Hub, where you can invite someone to become a user, then make them an admin or liaison. Thanks, David\r\nLet me know if this works. ','DavidHakan@gmail.com');
/*!40000 ALTER TABLE `invitations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_page_versions`
--

DROP TABLE IF EXISTS `landing_page_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landing_page_versions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `released` datetime DEFAULT NULL,
  `content` mediumtext NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_landing_page_versions_on_community_id_and_version` (`community_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_page_versions`
--

LOCK TABLES `landing_page_versions` WRITE;
/*!40000 ALTER TABLE `landing_page_versions` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_page_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `landing_pages`
--

DROP TABLE IF EXISTS `landing_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `landing_pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `enabled` tinyint(1) NOT NULL DEFAULT '0',
  `released_version` int(11) DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_landing_pages_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `landing_pages`
--

LOCK TABLES `landing_pages` WRITE;
/*!40000 ALTER TABLE `landing_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `landing_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_followers`
--

DROP TABLE IF EXISTS `listing_followers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_followers` (
  `person_id` varchar(255) DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  KEY `index_listing_followers_on_listing_id` (`listing_id`),
  KEY `index_listing_followers_on_person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_followers`
--

LOCK TABLES `listing_followers` WRITE;
/*!40000 ALTER TABLE `listing_followers` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_followers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_images`
--

DROP TABLE IF EXISTS `listing_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `image_downloaded` tinyint(1) DEFAULT '0',
  `error` varchar(255) DEFAULT NULL,
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `position` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_listing_images_on_listing_id` (`listing_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_images`
--

LOCK TABLES `listing_images` WRITE;
/*!40000 ALTER TABLE `listing_images` DISABLE KEYS */;
INSERT INTO `listing_images` VALUES (1,1,'2021-08-25 02:53:54','2021-08-25 02:53:56','pdx-climate-action-hub-logo.jpg','image/jpeg',774760,'2021-08-25 02:53:55',0,1,NULL,1180,756,'lHWG5Y2z6chmZPFTFWBZzw',1),(2,3,'2021-08-25 03:00:19','2021-08-25 03:00:22','solve-masks.jpg','image/jpeg',79303,'2021-08-25 03:00:22',0,1,NULL,660,440,'lHWG5Y2z6chmZPFTFWBZzw',1),(3,4,'2021-08-25 03:02:10','2021-08-25 03:02:13','winter_light_festival--660.jpg','image/jpeg',60785,'2021-08-25 03:02:13',0,1,NULL,660,440,'lHWG5Y2z6chmZPFTFWBZzw',1),(4,6,'2021-08-26 07:11:45','2021-08-26 07:11:49','bannerImg.jpeg','image/jpeg',147471,'2021-08-26 07:11:49',0,1,NULL,1280,487,'lHWG5Y2z6chmZPFTFWBZzw',1),(5,7,'2021-08-26 07:12:55','2021-08-26 07:13:00','bannerImg.jpeg','image/jpeg',147471,'2021-08-26 07:13:00',0,1,NULL,1280,487,'v4LxAWSIxaswezqqvHFQGA',1),(7,8,'2021-09-13 17:42:30','2021-09-13 17:42:33','pdx-climate-action-hub-logo-660px.jpg','image/jpeg',42950,'2021-09-13 17:42:33',0,1,NULL,660,440,'lHWG5Y2z6chmZPFTFWBZzw',1),(8,NULL,'2021-09-14 14:14:37','2021-09-14 14:14:41','bacj.jpeg','image/jpeg',162770,'2021-09-14 14:14:40',0,1,NULL,900,1600,'v4LxAWSIxaswezqqvHFQGA',1),(9,3,'2021-09-16 14:03:37','2021-09-16 14:03:43','bannerImg.jpeg','image/jpeg',147471,'2021-09-16 14:03:42',0,1,NULL,1280,487,'v4LxAWSIxaswezqqvHFQGA',2),(10,9,'2021-09-16 14:31:43','2021-09-16 14:31:48','bannerImg.jpeg','image/jpeg',147471,'2021-09-16 14:31:47',0,1,NULL,1280,487,'v4LxAWSIxaswezqqvHFQGA',2),(11,9,'2021-09-16 14:31:43','2021-09-16 14:31:49','bannerImg.jpeg','image/jpeg',147471,'2021-09-16 14:31:48',0,1,NULL,1280,487,'v4LxAWSIxaswezqqvHFQGA',3),(12,11,'2021-10-27 15:08:56','2021-11-01 17:38:07','TofuVegan.jpg','image/jpeg',349634,'2021-11-01 17:38:06',0,1,NULL,1280,740,'tvNYAmURaFGVnbRimB3VmA',2),(13,12,'2021-10-28 01:05:33','2021-11-01 17:38:08','CarbonFootprintLogoA.png','image/png',29250,'2021-11-01 17:38:07',0,1,NULL,1064,1002,'tvNYAmURaFGVnbRimB3VmA',2),(14,13,'2021-10-29 03:12:14','2021-11-01 17:38:10','KCDrawdownLOGO8.print.jpeg','image/jpeg',223716,'2021-11-01 17:38:09',0,1,NULL,1600,1600,'tvNYAmURaFGVnbRimB3VmA',2),(15,13,'2021-10-29 14:13:32','2021-11-01 17:38:11','ORCLimateHubLOGO3-01.png','image/png',12331,'2021-11-01 17:38:10',0,1,NULL,335,90,'tvNYAmURaFGVnbRimB3VmA',3),(16,14,'2021-10-31 15:26:52','2021-11-01 17:38:12','F3F4DE0E-3682-4639-A0AF-D0E22886CE0E.jpeg','image/jpeg',37875,'2021-11-01 17:38:12',0,1,NULL,250,250,'NQXdZK130o52pyjh6cf2eQ',2),(17,15,'2021-11-01 17:42:39','2021-11-01 17:42:44','WormBinsDone.jpg','image/jpeg',835195,'2021-11-01 17:42:43',0,1,NULL,1200,1600,'tvNYAmURaFGVnbRimB3VmA',2),(18,NULL,'2021-11-01 17:43:14','2021-11-01 17:43:21','1.png','image/png',594178,'2021-11-01 17:43:19',0,1,NULL,1436,588,'v4LxAWSIxaswezqqvHFQGA',3);
/*!40000 ALTER TABLE `listing_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_shapes`
--

DROP TABLE IF EXISTS `listing_shapes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_shapes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `transaction_process_id` int(11) NOT NULL,
  `price_enabled` tinyint(1) NOT NULL,
  `shipping_enabled` tinyint(1) NOT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `name` varchar(255) NOT NULL,
  `name_tr_key` varchar(255) NOT NULL,
  `action_button_tr_key` varchar(255) NOT NULL,
  `sort_priority` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_listing_shapes_on_community_id` (`community_id`),
  KEY `index_listing_shapes_on_name` (`name`),
  KEY `multicol_index` (`community_id`,`deleted`,`sort_priority`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_shapes`
--

LOCK TABLES `listing_shapes` WRITE;
/*!40000 ALTER TABLE `listing_shapes` DISABLE KEYS */;
INSERT INTO `listing_shapes` VALUES (1,1,1,0,0,'none','offering-without-online-payment','ecd9322a-0c20-494d-b295-b89cee8993ca','30d2e0e8-310f-4c21-ba3b-7b24e48303df',0,'2021-08-18 09:35:40','2021-08-25 02:59:26',0),(2,1,1,0,0,'none','offering-with-online-payment','14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',0,'2021-08-18 09:35:40','2021-08-25 02:58:28',0),(3,1,2,0,0,'none','requesting','6074b1a3-a0fe-4475-b31c-69f1c018cb18','bf412bb3-3afd-4e7d-a736-85d2141cbc5f',0,'2021-08-25 02:58:59','2021-10-28 00:49:04',1);
/*!40000 ALTER TABLE `listing_shapes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_units`
--

DROP TABLE IF EXISTS `listing_units`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_units` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unit_type` varchar(32) NOT NULL,
  `quantity_selector` varchar(32) NOT NULL,
  `kind` varchar(32) NOT NULL,
  `name_tr_key` varchar(64) DEFAULT NULL,
  `selector_tr_key` varchar(64) DEFAULT NULL,
  `listing_shape_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_units_on_listing_shape_id` (`listing_shape_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_units`
--

LOCK TABLES `listing_units` WRITE;
/*!40000 ALTER TABLE `listing_units` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_units` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listing_working_time_slots`
--

DROP TABLE IF EXISTS `listing_working_time_slots`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listing_working_time_slots` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `listing_id` int(11) DEFAULT NULL,
  `week_day` int(11) DEFAULT NULL,
  `from` varchar(255) DEFAULT NULL,
  `till` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_listing_working_time_slots_on_listing_id` (`listing_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listing_working_time_slots`
--

LOCK TABLES `listing_working_time_slots` WRITE;
/*!40000 ALTER TABLE `listing_working_time_slots` DISABLE KEYS */;
/*!40000 ALTER TABLE `listing_working_time_slots` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `listings`
--

DROP TABLE IF EXISTS `listings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` binary(16) NOT NULL,
  `community_id` int(11) NOT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `category_old` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `times_viewed` int(11) DEFAULT '0',
  `language` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updates_email_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `sort_date` datetime DEFAULT NULL,
  `listing_type_old` varchar(255) DEFAULT NULL,
  `description` text,
  `origin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `valid_until` datetime DEFAULT NULL,
  `delta` tinyint(1) NOT NULL DEFAULT '1',
  `open` tinyint(1) DEFAULT '1',
  `share_type_old` varchar(255) DEFAULT NULL,
  `privacy` varchar(255) DEFAULT 'private',
  `comments_count` int(11) DEFAULT '0',
  `subcategory_old` varchar(255) DEFAULT NULL,
  `old_category_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `share_type_id` int(11) DEFAULT NULL,
  `listing_shape_id` int(11) DEFAULT NULL,
  `transaction_process_id` int(11) DEFAULT NULL,
  `shape_name_tr_key` varchar(255) DEFAULT NULL,
  `action_button_tr_key` varchar(255) DEFAULT NULL,
  `price_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `quantity` varchar(255) DEFAULT NULL,
  `unit_type` varchar(32) DEFAULT NULL,
  `quantity_selector` varchar(32) DEFAULT NULL,
  `unit_tr_key` varchar(64) DEFAULT NULL,
  `unit_selector_tr_key` varchar(64) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `require_shipping_address` tinyint(1) DEFAULT '0',
  `pickup_enabled` tinyint(1) DEFAULT '0',
  `shipping_price_cents` int(11) DEFAULT NULL,
  `shipping_price_additional_cents` int(11) DEFAULT NULL,
  `external_payment_link` text,
  `availability` varchar(32) DEFAULT 'none',
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `per_hour_ready` tinyint(1) DEFAULT '0',
  `is_deleted` tinyint(1) DEFAULT '0',
  `state` varchar(255) DEFAULT 'approved',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_listings_on_uuid` (`uuid`),
  KEY `index_listings_on_open` (`open`),
  KEY `index_listings_on_category_id` (`old_category_id`),
  KEY `index_listings_on_listing_shape_id` (`listing_shape_id`),
  KEY `index_listings_on_new_category_id` (`category_id`),
  KEY `index_listings_on_community_id` (`community_id`),
  KEY `person_listings` (`community_id`,`author_id`),
  KEY `index_on_author_id_and_deleted` (`author_id`,`deleted`),
  KEY `community_author_deleted` (`community_id`,`author_id`,`deleted`),
  KEY `index_listings_on_state` (`state`),
  KEY `listings_homepage_query` (`community_id`,`open`,`state`,`deleted`,`valid_until`,`sort_date`),
  KEY `listings_updates_email` (`community_id`,`open`,`state`,`deleted`,`valid_until`,`updates_email_at`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `listings`
--

LOCK TABLES `listings` WRITE;
/*!40000 ALTER TABLE `listings` DISABLE KEYS */;
INSERT INTO `listings` VALUES (1,_binary '\ÏOº¿\r$úÉ@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Join the PDX Climate Action Hub!',0,NULL,'2021-08-25 02:54:17','2021-08-25 02:54:17','2021-09-13 17:33:46',NULL,'2021-08-26 09:56:56',NULL,'','Portland, OR, USA',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,1,1,'ecd9322a-0c20-494d-b295-b89cee8993ca','30d2e0e8-310f-4c21-ba3b-7b24e48303df',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,'http://','offering-without-online-payment',45.5202,-122.674,0,0,'approved'),(2,_binary '\ÏO˜Ucî†¯@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Test 2',0,NULL,'2021-08-25 02:55:55','2021-08-25 02:55:55','2021-08-26 09:57:09',NULL,'2021-08-25 02:55:55',NULL,'<p>Yadda yadda....</p>\n','1536 NE Saratoga St., Portland, OR',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,1,1,'ecd9322a-0c20-494d-b295-b89cee8993ca','30d2e0e8-310f-4c21-ba3b-7b24e48303df',0,'USD',NULL,'hour','number',NULL,NULL,1,0,0,NULL,NULL,'http://','offering-without-online-payment',45.5724,-122.649,0,0,'approved'),(3,_binary '\ÏP£èìñúÉ@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Help Needed',0,NULL,'2021-08-25 03:00:44','2021-08-25 03:00:44','2021-09-16 14:03:43',NULL,'2021-08-26 09:56:48',NULL,'<p>Help us...</p>','Camassia Nature Preserve, 4800 Walnut St, West Linn, OR 97068, USA',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,1,NULL,NULL,2,'6074b1a3-a0fe-4475-b31c-69f1c018cb18','bf412bb3-3afd-4e7d-a736-85d2141cbc5f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'requesting',NULL,NULL,0,0,'approved'),(4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Test Post',0,NULL,'2021-08-25 03:02:37','2021-08-25 03:02:37','2021-08-25 03:02:37',NULL,'2021-08-25 03:02:37',NULL,'<p>Description...</p>\n','4325 NE Marine Drive , Portland, OR',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,1,1,'ecd9322a-0c20-494d-b295-b89cee8993ca','30d2e0e8-310f-4c21-ba3b-7b24e48303df',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'offering-without-online-payment',45.5994,-122.61,0,0,'approved'),(5,_binary '\ÏQXh˛‚úÉ@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Test',0,NULL,'2021-08-25 03:05:47','2021-08-25 03:05:47','2021-08-25 03:05:47',NULL,'2021-08-25 03:05:47',NULL,'','Portland, OR',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,1,'14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'offering-with-online-payment',45.5202,-122.674,0,0,'approved'),(6,_binary '\Ï<\„\Z¨¢†¯@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Test - Booking',0,NULL,'2021-08-26 07:11:52','2021-08-26 07:11:52','2021-08-26 07:12:04',NULL,'2021-08-26 07:11:52',NULL,'<p>test</p>\n','Portland, OR',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,1,'14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,'offering-with-online-payment',45.5202,-122.674,0,0,'approved'),(7,_binary '\Ï=\rµ*Ç†¯@˛îw\·',1,'v4LxAWSIxaswezqqvHFQGA',NULL,'Porter-Cable 6-Gallon Air Compressor',0,NULL,'2021-08-26 07:13:03','2021-08-26 07:13:03','2021-08-26 09:56:35',NULL,'2021-08-26 07:13:03',NULL,'<p>test</p>\n','lahore',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,1,'14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,'offering-with-online-payment',31.5657,74.3142,0,0,'approved'),(8,_binary '\Ï∫\r}∂j@˛îw\·',1,'lHWG5Y2z6chmZPFTFWBZzw',NULL,'Testing',0,NULL,'2021-09-13 17:42:49','2021-09-13 17:42:49','2021-09-13 17:42:49',NULL,'2021-09-13 17:42:49',NULL,'<p>Test...</p>\n','Portland, OR',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,1,NULL,NULL,2,'6074b1a3-a0fe-4475-b31c-69f1c018cb18','bf412bb3-3afd-4e7d-a736-85d2141cbc5f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'requesting',45.5202,-122.674,0,0,'approved'),(9,_binary '\Ï˙\’˘∫N∏#@˛îw\·',1,'v4LxAWSIxaswezqqvHFQGA',NULL,'test',0,NULL,'2021-09-16 14:31:53','2021-09-16 14:31:53','2021-09-16 15:54:27',NULL,'2021-09-16 14:31:53',NULL,'<p>test</p>\n','lahore',NULL,NULL,0,1,NULL,'private',0,NULL,NULL,1,NULL,2,1,'14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,1,0,0,NULL,NULL,NULL,'offering-with-online-payment',31.5657,74.3142,0,0,'approved'),(10,_binary '\Ï758SM|á˛@˛îw\·',1,'tvNYAmURaFGVnbRimB3VmA',NULL,'compost party',0,NULL,'2021-10-27 14:50:25','2021-10-27 14:50:25','2021-10-27 14:50:45',NULL,'2021-10-27 14:50:25',NULL,'<p>Test post categories</p>','',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,2,NULL,NULL,2,'6074b1a3-a0fe-4475-b31c-69f1c018cb18','bf412bb3-3afd-4e7d-a736-85d2141cbc5f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'requesting',NULL,NULL,0,0,'approved'),(11,_binary '\Ï77\Ô\Ë[$ö\Œ@˛îw\·',1,'tvNYAmURaFGVnbRimB3VmA',NULL,'Food Waste Seminar',0,NULL,'2021-10-27 15:09:52','2021-10-27 15:09:52','2021-11-01 17:38:07',NULL,'2021-10-27 15:09:52',NULL,'<p>Learn how food waste adds to greenhouse gas emissions.&nbsp;</p><p><a target=\"_blank\" href=\"https://sites.google.com/view/carbon-footprint-eating/home\">www.CarbonFootprintEating.org</a></p>','',NULL,NULL,0,0,NULL,'private',0,NULL,NULL,2,NULL,NULL,2,'6074b1a3-a0fe-4475-b31c-69f1c018cb18','bf412bb3-3afd-4e7d-a736-85d2141cbc5f',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'requesting',NULL,NULL,0,0,'approved'),(12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',1,'tvNYAmURaFGVnbRimB3VmA',NULL,'Carbon Footprint Eating Challenge',0,NULL,'2021-10-28 01:08:32','2021-10-28 01:08:32','2021-11-01 17:38:08',NULL,'2021-10-28 01:08:32',NULL,'<p>Take the Meatless Month for Mother Earth Challenge.&nbsp;</p><p><a target=\"_blank\" href=\"http://sites.google.com/view/carbon-footprint-eating/home\">www.CarbonFootprintEating.org</a>&nbsp;</p>','Portland, OR, USA',NULL,'2022-01-28 07:59:59',0,1,NULL,'private',0,NULL,NULL,5,NULL,2,1,'14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'offering-with-online-payment',45.5202,-122.674,0,0,'approved'),(13,_binary '\Ï8f8\“h<á˛@˛îw\·',1,'tvNYAmURaFGVnbRimB3VmA',NULL,'Intro to Drawdown at the Central Library',0,NULL,'2021-10-29 03:13:43','2021-10-29 03:13:43','2021-11-01 17:38:11',NULL,'2021-10-29 03:13:43',NULL,'<p>Come find out how to reverse global warming.&nbsp;</p>','801 SW 10th Ave, Portland, OR 97205, USA',NULL,'2021-10-31 06:59:59',0,1,NULL,'private',0,NULL,NULL,4,NULL,1,1,'ecd9322a-0c20-494d-b295-b89cee8993ca','30d2e0e8-310f-4c21-ba3b-7b24e48303df',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'offering-without-online-payment',45.5192,-122.683,0,0,'approved'),(14,_binary '\Ï:_XE∑Fö\Œ@˛îw\·',1,'NQXdZK130o52pyjh6cf2eQ',NULL,'Join the Portland Youth Climate Summit Planning Committee',0,NULL,'2021-10-31 15:29:32','2021-10-31 15:29:32','2021-11-01 17:38:12',NULL,'2021-10-31 15:29:32',NULL,'<p>Calling all Portland area youth passionate about climate action and environmental justice!&nbsp;</p><p>The Portland Youth Climate Summit is recruiting a youth planning committee with stipend positions available for ages 16-26.&nbsp;</p><p>Questions? Email pycc@gpsen.org.</p>','Portland, OR, USA',NULL,'2021-11-01 06:59:59',0,1,NULL,'private',0,NULL,NULL,5,NULL,2,1,'14ce3dd8-aacc-4717-b07a-cd62208da56d','c018257d-a731-49ec-aeef-1816ee57982b',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'offering-with-online-payment',45.5202,-122.674,0,0,'approved'),(15,_binary '\Ï;;{xS|Ω\"@˛îw\·',1,'tvNYAmURaFGVnbRimB3VmA',NULL,'Worm Composting at the Library',0,NULL,'2021-11-01 17:45:20','2021-11-01 17:45:20','2021-11-01 17:45:20',NULL,'2021-11-01 17:45:20',NULL,'<p>Worm Compost bins in your kitchen.&nbsp;</p>\n','801 SW 10th Ave, Portland, OR 97205',NULL,'2021-11-03 06:59:59',0,1,NULL,'private',0,NULL,NULL,4,NULL,1,1,'ecd9322a-0c20-494d-b295-b89cee8993ca','30d2e0e8-310f-4c21-ba3b-7b24e48303df',NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,0,0,NULL,NULL,NULL,'offering-without-online-payment',45.5192,-122.683,0,0,'approved');
/*!40000 ALTER TABLE `listings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `google_address` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `person_id` varchar(255) DEFAULT NULL,
  `location_type` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_locations_on_person_id` (`person_id`),
  KEY `index_locations_on_listing_id` (`listing_id`),
  KEY `index_locations_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
INSERT INTO `locations` VALUES (2,45.5724,-122.649,'1536 NE Saratoga St, Portland, OR 97211, USA','1536 NE Saratoga St, Portland, OR 97211, USA','2021-08-25 02:55:55','2021-08-25 02:55:55',2,NULL,'origin_loc',NULL),(4,45.6008,-122.619,'4325 NE Marine Dr, Portland, OR 97218, USA','4325 NE Marine Dr, Portland, OR 97218, USA','2021-08-25 03:02:37','2021-08-25 03:02:37',4,NULL,'origin_loc',NULL),(5,45.5051,-122.675,'Portland, OR','Portland, OR, USA','2021-08-25 03:04:14','2021-08-25 03:04:14',NULL,'lHWG5Y2z6chmZPFTFWBZzw','person',NULL),(6,45.5051,-122.675,'Portland, OR','Portland, OR, USA','2021-08-25 03:05:47','2021-08-25 03:05:47',5,NULL,'origin_loc',NULL),(7,45.5051,-122.675,'Portland, OR','Portland, OR, USA','2021-08-26 07:11:52','2021-08-26 07:11:52',6,NULL,'origin_loc',NULL),(8,31.5204,74.3587,'Lahore, Punjab, Pakistan','Lahore, Punjab, Pakistan','2021-08-26 07:13:03','2021-08-26 07:13:03',7,NULL,'origin_loc',NULL),(10,45.5051,-122.675,'Portland, OR, USA','Portland, OR, USA','2021-09-13 17:34:11','2021-09-13 17:34:11',1,NULL,'origin_loc',NULL),(11,45.5051,-122.675,'Portland, OR','Portland, OR, USA','2021-09-13 17:42:49','2021-09-13 17:42:49',8,NULL,'origin_loc',NULL),(13,45.3592,-122.618,'Camassia Nature Preserve, 4800 Walnut St, West Linn, OR 97068, USA','Camassia Nature Preserve, 4800 Walnut St, West Linn, OR 97068, USA','2021-09-16 14:03:46','2021-09-16 14:03:46',3,NULL,'origin_loc',NULL),(14,31.5204,74.3587,'Lahore, Punjab, Pakistan','Lahore, Punjab, Pakistan','2021-09-16 14:31:53','2021-09-16 14:31:53',9,NULL,'origin_loc',NULL),(23,45.5152,-122.678,'Portland, OR, USA','Portland, OR, USA','2021-10-28 20:51:46','2021-10-28 20:51:46',12,NULL,'origin_loc',NULL),(26,45.5191,-122.683,'801 SW 10th Ave, Portland, OR 97205, USA','801 SW 10th Ave, Portland, OR 97205, USA','2021-10-29 16:34:15','2021-10-29 16:34:15',13,NULL,'origin_loc',NULL),(29,45.5152,-122.678,'Portland, OR, USA','Portland, OR, USA','2021-10-31 15:35:52','2021-10-31 15:35:52',14,NULL,'origin_loc',NULL),(30,45.5191,-122.683,'801 SW 10th Ave, Portland, OR 97205, USA','801 SW 10th Ave, Portland, OR 97205, USA','2021-11-01 17:45:20','2021-11-01 17:45:20',15,NULL,'origin_loc',NULL);
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_configurations`
--

DROP TABLE IF EXISTS `marketplace_configurations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_configurations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `main_search` varchar(255) NOT NULL DEFAULT 'keyword',
  `distance_unit` varchar(255) NOT NULL DEFAULT 'metric',
  `limit_priority_links` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `limit_search_distance` tinyint(1) NOT NULL DEFAULT '1',
  `display_about_menu` tinyint(1) DEFAULT '1',
  `display_contact_menu` tinyint(1) DEFAULT '1',
  `display_invite_menu` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `index_marketplace_configurations_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_configurations`
--

LOCK TABLES `marketplace_configurations` WRITE;
/*!40000 ALTER TABLE `marketplace_configurations` DISABLE KEYS */;
INSERT INTO `marketplace_configurations` VALUES (1,1,'keyword','imperial',NULL,'2021-08-18 09:35:40','2021-08-18 09:35:40',0,1,1,1);
/*!40000 ALTER TABLE `marketplace_configurations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_plans`
--

DROP TABLE IF EXISTS `marketplace_plans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_plans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `status` varchar(22) DEFAULT NULL,
  `features` text,
  `member_limit` int(11) DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_plans_on_community_id` (`community_id`),
  KEY `index_marketplace_plans_on_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_plans`
--

LOCK TABLES `marketplace_plans` WRITE;
/*!40000 ALTER TABLE `marketplace_plans` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_plans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_sender_emails`
--

DROP TABLE IF EXISTS `marketplace_sender_emails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_sender_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `verification_status` varchar(32) NOT NULL,
  `verification_requested_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_sender_emails_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_sender_emails`
--

LOCK TABLES `marketplace_sender_emails` WRITE;
/*!40000 ALTER TABLE `marketplace_sender_emails` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_sender_emails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_setup_steps`
--

DROP TABLE IF EXISTS `marketplace_setup_steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_setup_steps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `slogan_and_description` tinyint(1) NOT NULL DEFAULT '0',
  `cover_photo` tinyint(1) NOT NULL DEFAULT '0',
  `filter` tinyint(1) NOT NULL DEFAULT '0',
  `paypal` tinyint(1) NOT NULL DEFAULT '0',
  `listing` tinyint(1) NOT NULL DEFAULT '0',
  `invitation` tinyint(1) NOT NULL DEFAULT '0',
  `payment` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_marketplace_setup_steps_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_setup_steps`
--

LOCK TABLES `marketplace_setup_steps` WRITE;
/*!40000 ALTER TABLE `marketplace_setup_steps` DISABLE KEYS */;
INSERT INTO `marketplace_setup_steps` VALUES (1,1,1,1,1,0,1,1,1);
/*!40000 ALTER TABLE `marketplace_setup_steps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marketplace_trials`
--

DROP TABLE IF EXISTS `marketplace_trials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marketplace_trials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_marketplace_trials_on_community_id` (`community_id`),
  KEY `index_marketplace_trials_on_created_at` (`created_at`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marketplace_trials`
--

LOCK TABLES `marketplace_trials` WRITE;
/*!40000 ALTER TABLE `marketplace_trials` DISABLE KEYS */;
/*!40000 ALTER TABLE `marketplace_trials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_link_translations`
--

DROP TABLE IF EXISTS `menu_link_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_link_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_link_id` int(11) DEFAULT NULL,
  `locale` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_menu_link_translations_on_menu_link_id` (`menu_link_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_link_translations`
--

LOCK TABLES `menu_link_translations` WRITE;
/*!40000 ALTER TABLE `menu_link_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_link_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_links`
--

DROP TABLE IF EXISTS `menu_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `sort_priority` int(11) DEFAULT '0',
  `entity_type` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_menu_links_on_community_and_sort` (`community_id`,`sort_priority`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_links`
--

LOCK TABLES `menu_links` WRITE;
/*!40000 ALTER TABLE `menu_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `menu_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mercury_images`
--

DROP TABLE IF EXISTS `mercury_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mercury_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mercury_images`
--

LOCK TABLES `mercury_images` WRITE;
/*!40000 ALTER TABLE `mercury_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `mercury_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `messages`
--

DROP TABLE IF EXISTS `messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sender_id` varchar(255) DEFAULT NULL,
  `content` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_messages_on_conversation_id` (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `messages`
--

LOCK TABLES `messages` WRITE;
/*!40000 ALTER TABLE `messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_permissions`
--

DROP TABLE IF EXISTS `order_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `order_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_account_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `request_token` varchar(255) DEFAULT NULL,
  `paypal_username_to` varchar(255) NOT NULL,
  `scope` varchar(255) DEFAULT NULL,
  `verification_code` varchar(255) DEFAULT NULL,
  `onboarding_id` varchar(36) DEFAULT NULL,
  `permissions_granted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_order_permissions_on_paypal_account_id` (`paypal_account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_permissions`
--

LOCK TABLES `order_permissions` WRITE;
/*!40000 ALTER TABLE `order_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `order_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `participations`
--

DROP TABLE IF EXISTS `participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT '0',
  `is_starter` tinyint(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `last_sent_at` datetime DEFAULT NULL,
  `last_received_at` datetime DEFAULT NULL,
  `feedback_skipped` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_participations_on_person_id` (`person_id`),
  KEY `index_participations_on_conversation_id` (`conversation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `participations`
--

LOCK TABLES `participations` WRITE;
/*!40000 ALTER TABLE `participations` DISABLE KEYS */;
/*!40000 ALTER TABLE `participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_settings`
--

DROP TABLE IF EXISTS `payment_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `community_id` int(11) NOT NULL,
  `payment_gateway` varchar(64) DEFAULT NULL,
  `payment_process` varchar(64) DEFAULT NULL,
  `commission_from_seller` int(11) DEFAULT NULL,
  `minimum_price_cents` int(11) DEFAULT NULL,
  `minimum_price_currency` varchar(3) DEFAULT NULL,
  `minimum_transaction_fee_cents` int(11) DEFAULT NULL,
  `minimum_transaction_fee_currency` varchar(3) DEFAULT NULL,
  `confirmation_after_days` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `api_client_id` varchar(255) DEFAULT NULL,
  `api_private_key` varchar(255) DEFAULT NULL,
  `api_publishable_key` varchar(255) DEFAULT NULL,
  `api_verified` tinyint(1) DEFAULT NULL,
  `api_visible_private_key` varchar(255) DEFAULT NULL,
  `api_country` varchar(255) DEFAULT NULL,
  `commission_from_buyer` int(11) DEFAULT NULL,
  `minimum_buyer_transaction_fee_cents` int(11) DEFAULT NULL,
  `minimum_buyer_transaction_fee_currency` varchar(3) DEFAULT NULL,
  `key_encryption_padding` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_payment_settings_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_settings`
--

LOCK TABLES `payment_settings` WRITE;
/*!40000 ALTER TABLE `payment_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_accounts`
--

DROP TABLE IF EXISTS `paypal_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `active` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_paypal_accounts_on_community_id` (`community_id`),
  KEY `index_paypal_accounts_on_payer_id` (`payer_id`),
  KEY `index_paypal_accounts_on_person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_accounts`
--

LOCK TABLES `paypal_accounts` WRITE;
/*!40000 ALTER TABLE `paypal_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_ipn_messages`
--

DROP TABLE IF EXISTS `paypal_ipn_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_ipn_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `body` text,
  `status` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_ipn_messages`
--

LOCK TABLES `paypal_ipn_messages` WRITE;
/*!40000 ALTER TABLE `paypal_ipn_messages` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_ipn_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_payments`
--

DROP TABLE IF EXISTS `paypal_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `payer_id` varchar(64) NOT NULL,
  `receiver_id` varchar(64) NOT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `order_id` varchar(64) DEFAULT NULL,
  `order_date` datetime DEFAULT NULL,
  `currency` varchar(8) NOT NULL,
  `order_total_cents` int(11) DEFAULT NULL,
  `authorization_id` varchar(64) DEFAULT NULL,
  `authorization_date` datetime DEFAULT NULL,
  `authorization_expires_date` datetime DEFAULT NULL,
  `authorization_total_cents` int(11) DEFAULT NULL,
  `payment_id` varchar(64) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_total_cents` int(11) DEFAULT NULL,
  `fee_total_cents` int(11) DEFAULT NULL,
  `payment_status` varchar(64) NOT NULL,
  `pending_reason` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `commission_payment_id` varchar(64) DEFAULT NULL,
  `commission_payment_date` datetime DEFAULT NULL,
  `commission_status` varchar(64) NOT NULL DEFAULT 'not_charged',
  `commission_pending_reason` varchar(64) DEFAULT NULL,
  `commission_total_cents` int(11) DEFAULT NULL,
  `commission_fee_total_cents` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_payments_on_transaction_id` (`transaction_id`),
  UNIQUE KEY `index_paypal_payments_on_order_id` (`order_id`),
  UNIQUE KEY `index_paypal_payments_on_authorization_id` (`authorization_id`),
  KEY `index_paypal_payments_on_community_id` (`community_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_payments`
--

LOCK TABLES `paypal_payments` WRITE;
/*!40000 ALTER TABLE `paypal_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_process_tokens`
--

DROP TABLE IF EXISTS `paypal_process_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_process_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_token` varchar(64) NOT NULL,
  `community_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `op_completed` tinyint(1) NOT NULL DEFAULT '0',
  `op_name` varchar(64) NOT NULL,
  `op_input` text,
  `op_output` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_process_tokens_on_process_token` (`process_token`),
  UNIQUE KEY `index_paypal_process_tokens_on_transaction` (`transaction_id`,`community_id`,`op_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_process_tokens`
--

LOCK TABLES `paypal_process_tokens` WRITE;
/*!40000 ALTER TABLE `paypal_process_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_process_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_refunds`
--

DROP TABLE IF EXISTS `paypal_refunds`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_refunds` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `paypal_payment_id` int(11) DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `payment_total_cents` int(11) DEFAULT NULL,
  `fee_total_cents` int(11) DEFAULT NULL,
  `refunding_id` varchar(64) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_refunds_on_refunding_id` (`refunding_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_refunds`
--

LOCK TABLES `paypal_refunds` WRITE;
/*!40000 ALTER TABLE `paypal_refunds` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_refunds` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paypal_tokens`
--

DROP TABLE IF EXISTS `paypal_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `paypal_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) NOT NULL,
  `token` varchar(64) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `payment_action` varchar(32) DEFAULT NULL,
  `merchant_id` varchar(255) NOT NULL,
  `receiver_id` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `item_name` varchar(255) DEFAULT NULL,
  `item_quantity` int(11) DEFAULT NULL,
  `item_price_cents` int(11) DEFAULT NULL,
  `currency` varchar(8) DEFAULT NULL,
  `express_checkout_url` varchar(255) DEFAULT NULL,
  `shipping_total_cents` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_tokens_on_token` (`token`),
  KEY `index_paypal_tokens_on_community_id` (`community_id`),
  KEY `index_paypal_tokens_on_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paypal_tokens`
--

LOCK TABLES `paypal_tokens` WRITE;
/*!40000 ALTER TABLE `paypal_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `paypal_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` varchar(22) NOT NULL,
  `uuid` binary(16) NOT NULL,
  `community_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_admin` int(11) DEFAULT '0',
  `locale` varchar(255) DEFAULT 'fi',
  `preferences` text,
  `active_days_count` int(11) DEFAULT '0',
  `last_page_load_date` datetime DEFAULT NULL,
  `test_group_number` int(11) DEFAULT '1',
  `username` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `legacy_encrypted_password` varchar(255) DEFAULT NULL,
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `password_salt` varchar(255) DEFAULT NULL,
  `given_name` varchar(255) DEFAULT NULL,
  `family_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `description` text,
  `image_file_name` varchar(255) DEFAULT NULL,
  `image_content_type` varchar(255) DEFAULT NULL,
  `image_file_size` int(11) DEFAULT NULL,
  `image_updated_at` datetime DEFAULT NULL,
  `image_processing` tinyint(1) DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `authentication_token` varchar(255) DEFAULT NULL,
  `community_updates_last_sent_at` datetime DEFAULT NULL,
  `min_days_between_community_updates` int(11) DEFAULT '1',
  `deleted` tinyint(1) DEFAULT '0',
  `cloned_from` varchar(22) DEFAULT NULL,
  `is_payment_setup_notification_dismissed` tinyint(1) DEFAULT '0',
  `google_id` varchar(255) DEFAULT NULL,
  `google_oauth2_id` varchar(255) DEFAULT NULL,
  `linkedin_id` varchar(255) DEFAULT NULL,
  UNIQUE KEY `index_people_on_username_and_community_id` (`username`,`community_id`),
  UNIQUE KEY `index_people_on_uuid` (`uuid`),
  UNIQUE KEY `index_people_on_email` (`email`),
  UNIQUE KEY `index_people_on_reset_password_token` (`reset_password_token`),
  UNIQUE KEY `index_people_on_facebook_id_and_community_id` (`facebook_id`,`community_id`),
  KEY `index_people_on_username` (`username`),
  KEY `index_people_on_community_id` (`community_id`),
  KEY `index_people_on_id` (`id`),
  KEY `index_people_on_authentication_token` (`authentication_token`),
  KEY `index_people_on_facebook_id` (`facebook_id`),
  KEY `index_people_on_google_oauth2_id` (`google_oauth2_id`),
  KEY `index_people_on_community_id_and_google_oauth2_id` (`community_id`,`google_oauth2_id`),
  KEY `index_people_on_linkedin_id` (`linkedin_id`),
  KEY `index_people_on_community_id_and_linkedin_id` (`community_id`,`linkedin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES ('v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',1,'2021-08-18 09:35:41','2021-08-26 19:44:02',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,2,'alih',NULL,'$2a$10$O7N5Qb1g7JtXNngJAM2W2emCvfH.JUn8B6AhSRomreMdtXbItwTrW',NULL,NULL,NULL,NULL,3,'2021-08-26 19:44:02','2021-08-26 07:12:24','198.16.66.140','198.16.66.140',NULL,'ali','hassan',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',1,'2021-09-14 19:36:15','2021-11-01 17:38:09',1,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,2,'davidhakan',NULL,'$2a$10$Qzn7j9jrbDXdzo4ya9faGu/rcEhMkRZy7rwaFX79VpstjR1hCBpfG',NULL,NULL,NULL,NULL,7,'2021-10-29 14:10:41','2021-10-29 03:45:15','136.32.19.88','136.32.19.88',NULL,'David','Hakan','David H. ','','','CarbonFootprintLogoA.png','image/png',74814,'2021-11-01 17:38:08',0,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('kS5u1shcv6nXzXzziGRa3w',_binary '\Ï+ììhïÓó∫@˛îw\·',1,'2021-10-12 19:35:37','2021-10-29 14:27:10',1,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,2,'hdianajo53',NULL,'$2a$10$oLp2ZPlgtshuSeM24.C4b.MbWHY/Pme4uooDAb5h1pXNZWUcVCuyS',NULL,NULL,NULL,NULL,1,'2021-10-12 19:35:37','2021-10-12 19:35:37','76.115.138.115','76.115.138.115',NULL,'Diana','Jones','','','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·',1,'2021-10-26 04:00:32','2021-10-31 15:20:29',1,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,3,'karenwolfgang',NULL,'$2a$10$y3YDP9Pk4k1pE04tgow0yOyb6uWL0u8zApmsSrV4tJT3N996.kmsG',NULL,NULL,NULL,NULL,9,'2021-10-31 15:20:29','2021-10-29 20:24:02','174.204.205.66','97.120.227.218',NULL,'Karen','Wolfgang',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('m0H0sUcZzsE6lnUxjy1Hiw',_binary '\Ï8ı∫f‹Ω\"@˛îw\·',1,'2021-10-29 20:20:58','2021-10-29 20:20:58',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,2,'pamelaedwards',NULL,'$2a$10$tgPZ3HQkQTJJ3QroYaj6tumVILO/62rL7cXM2soCiOXjXsffKIfXC',NULL,NULL,NULL,NULL,1,'2021-10-29 20:20:58','2021-10-29 20:20:58','97.120.227.218','97.120.227.218',NULL,'Pamela','Edwards',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('occd7nXvyup3xXM-FhNXAQ',_binary '\Ï8¸Ωûi\‰ö\Œ@˛îw\·',1,'2021-10-29 21:11:10','2021-10-29 21:11:10',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,3,'pa_pdx',NULL,'$2a$10$bU/LW9Cftb0.XBEFwCc9heeMOueBZoNSsGB/bvxVf6lGOMqSpRxWy',NULL,NULL,NULL,NULL,1,'2021-10-29 21:11:10','2021-10-29 21:11:10','76.115.138.115','76.115.138.115',NULL,'Diana','Jones',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,'2021-08-18 09:45:34','2021-10-29 15:22:20',1,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,2,'rick',NULL,'$2a$10$x39Yd.Fgiy5ZdrnckSSkdON5m7PLNNPwcHiAgT10tajlcqNfOS32C',NULL,NULL,NULL,NULL,17,'2021-10-29 15:22:20','2021-10-25 20:33:51','24.20.42.15','24.20.42.15',NULL,'Richard','Reynolds','Rick','5033804140','About me...',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL),('ZYCFufoW34uR0hTlq6gMsA',_binary '\Ï7\\\ Ä÷Ω\"@˛îw\·',1,'2021-10-27 19:33:40','2021-10-27 19:33:40',0,'en','---\nemail_about_new_messages: true\nemail_about_new_comments_to_own_listing: true\nemail_when_conversation_accepted: true\nemail_when_conversation_rejected: true\nemail_about_new_received_testimonials: true\nemail_about_confirm_reminders: true\nemail_about_testimonial_reminders: true\nemail_about_completed_transactions: true\nemail_about_new_payments: true\nemail_about_new_listings_by_followed_people: true\nemail_from_admins: true\n',0,NULL,4,'sam',NULL,'$2a$10$JSHgvrKc4x.Yhw72FR59G.HfdB01TSY/mHP4uYEkVdcgqv8HLY3Wu',NULL,NULL,NULL,NULL,1,'2021-10-27 19:33:40','2021-10-27 19:33:40','86.32.59.34','86.32.59.34',NULL,'Sam','Butler',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,7,0,NULL,0,NULL,NULL,NULL);
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recurring_events`
--

DROP TABLE IF EXISTS `recurring_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recurring_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recurring_events`
--

LOCK TABLES `recurring_events` WRITE;
/*!40000 ALTER TABLE `recurring_events` DISABLE KEYS */;
/*!40000 ALTER TABLE `recurring_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schedules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `schedulable_id` int(11) DEFAULT NULL,
  `schedulable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  `rule` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `interval` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `day` text COLLATE utf8_unicode_ci,
  `day_of_week` text COLLATE utf8_unicode_ci,
  `until` datetime DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20080806070738'),('20080807071903'),('20080807080513'),('20080808095031'),('20080815075550'),('20080818091109'),('20080818092139'),('20080821103835'),('20080825064927'),('20080825114546'),('20080828104013'),('20080828104239'),('20080919122825'),('20080925100643'),('20080925100743'),('20080925103547'),('20080925103759'),('20080925112423'),('20080925114309'),('20080929102121'),('20081008115110'),('20081009160751'),('20081010114150'),('20081024154431'),('20081024182346'),('20081024183444'),('20081103092143'),('20081104070403'),('20081118145857'),('20081121084337'),('20081202140109'),('20081205142238'),('20081215145238'),('20081216060503'),('20090119114525'),('20090218112317'),('20090219094209'),('20090225073742'),('20090323121824'),('20090330064443'),('20090330070210'),('20090330072036'),('20090401181848'),('20090401184511'),('20090401185039'),('20090402144456'),('20090403093157'),('20090406081353'),('20090414142556'),('20090415085812'),('20090415130553'),('20090415131023'),('20090424093506'),('20090424100145'),('20090618112730'),('20090629113838'),('20090629131727'),('20090701065350'),('20090701110931'),('20090713130351'),('20090729124418'),('20090730093917'),('20090730094216'),('20090731134028'),('20090821075949'),('20090904120242'),('20090907155717'),('20091006112446'),('20091028095545'),('20091028131201'),('20091109161516'),('20100322132547'),('20100505110646'),('20100707105549'),('20100721120037'),('20100721123825'),('20100721124444'),('20100726071811'),('20100727102551'),('20100727103659'),('20100729112458'),('20100729124210'),('20100729141955'),('20100729142416'),('20100730120601'),('20100730132825'),('20100809090550'),('20100809120502'),('20100813161213'),('20100817115816'),('20100818102743'),('20100819114104'),('20100820122449'),('20100902135234'),('20100902142325'),('20100908112841'),('20100909105810'),('20100909114132'),('20100920075651'),('20100921155612'),('20100922081110'),('20100922102321'),('20100922122740'),('20100923074241'),('20100927150547'),('20101007131610'),('20101007131827'),('20101013115208'),('20101013124056'),('20101026082126'),('20101027103753'),('20101028151541'),('20101103154108'),('20101103161641'),('20101103163019'),('20101109131431'),('20101116105410'),('20101124104905'),('20101125150638'),('20101126093026'),('20101201105920'),('20101201133429'),('20101203115308'),('20101203115634'),('20101213152125'),('20101216150725'),('20101216151447'),('20101216152952'),('20110308172759'),('20110308192757'),('20110321103604'),('20110322141439'),('20110322151957'),('20110325120932'),('20110412075940'),('20110414105702'),('20110414124938'),('20110421075758'),('20110428134543'),('20110529110417'),('20110629135331'),('20110704123058'),('20110704144650'),('20110707163036'),('20110728110124'),('20110808110217'),('20110808161514'),('20110817123457'),('20110819111416'),('20110819123636'),('20110909072646'),('20110912061834'),('20110912064526'),('20110912065222'),('20110913080622'),('20110914080549'),('20110914115824'),('20110915084232'),('20110915101535'),('20111111140246'),('20111111154416'),('20111111162432'),('20111114122125'),('20111114122315'),('20111116144337'),('20111116164728'),('20111116182825'),('20111123071116'),('20111123071850'),('20111124174508'),('20111210165312'),('20111210165854'),('20111210170231'),('20111211175403'),('20111228153911'),('20120104224115'),('20120105162140'),('20120113091548'),('20120121091558'),('20120206052931'),('20120208145336'),('20120210171827'),('20120303113202'),('20120303125412'),('20120303152837'),('20120303172713'),('20120510094327'),('20120510175152'),('20120514001557'),('20120514050302'),('20120516204538'),('20120518203511'),('20120522162329'),('20120522183329'),('20120526021050'),('20120614052244'),('20120625211426'),('20120628121713'),('20120704072606'),('20120705135703'),('20120705140109'),('20120710084323'),('20120711140918'),('20120718031225'),('20120730024756'),('20120907010347'),('20120907023525'),('20120908052908'),('20120909143322'),('20120929084903'),('20120929091629'),('20121023050946'),('20121105115053'),('20121203142830'),('20121212145626'),('20121214083430'),('20121218125831'),('20121220133808'),('20121229224803'),('20130103081705'),('20130103125240'),('20130103145816'),('20130104071929'),('20130104122958'),('20130105153450'),('20130107095027'),('20130110222425'),('20130123163722'),('20130123164653'),('20130124150000'),('20130208085827'),('20130212104852'),('20130213150133'),('20130213160145'),('20130217121320'),('20130218070405'),('20130305095824'),('20130306172327'),('20130309142322'),('20130317162509'),('20130318083721'),('20130318084043'),('20130318085152'),('20130319162158'),('20130319163113'),('20130320093549'),('20130322171458'),('20130323143126'),('20130325143038'),('20130325153817'),('20130325161150'),('20130325165508'),('20130325174608'),('20130325181741'),('20130326160252'),('20130328124654'),('20130328155825'),('20130329080756'),('20130329081612'),('20130331095134'),('20130331144047'),('20130331200801'),('20130405114540'),('20130418172231'),('20130418173835'),('20130423173017'),('20130424180017'),('20130424183653'),('20130425140120'),('20130514214222'),('20130517133311'),('20130520092054'),('20130520092357'),('20130520103753'),('20130520125924'),('20130520140756'),('20130520172713'),('20130521122031'),('20130521124342'),('20130521171401'),('20130521225614'),('20130531072349'),('20130605074725'),('20130607165451'),('20130710084408'),('20130718104939'),('20130719093816'),('20130719113330'),('20130724065048'),('20130724070139'),('20130729081847'),('20130807083847'),('20130815072527'),('20130815073546'),('20130815075659'),('20130815101112'),('20130823110113'),('20130902140027'),('20130910133213'),('20130917094727'),('20130920121927'),('20130925071631'),('20130925081815'),('20130926070322'),('20130926121237'),('20130930080143'),('20131024081428'),('20131028110133'),('20131028154626'),('20131028183014'),('20131030130320'),('20131031072301'),('20131031093809'),('20131101183938'),('20131104090808'),('20131107124835'),('20131107125413'),('20131108091824'),('20131108113632'),('20131108113650'),('20131111140902'),('20131112115307'),('20131112115308'),('20131112115435'),('20131114112955'),('20131119085439'),('20131119085625'),('20131122175753'),('20131126113141'),('20131126131750'),('20131126134024'),('20131126184439'),('20131128074254'),('20131128074910'),('20131128094614'),('20131128094758'),('20131128094839'),('20131128103251'),('20131128143205'),('20131129095727'),('20131202140547'),('20131203072124'),('20131204091623'),('20131204103910'),('20131206163837'),('20131209073416'),('20131209133946'),('20131210155502'),('20131212065037'),('20131214142413'),('20131214143004'),('20131214143005'),('20131220084742'),('20131220104804'),('20131220104805'),('20131227080454'),('20131227081256'),('20140102125702'),('20140102141643'),('20140102144755'),('20140102145633'),('20140102150134'),('20140102153949'),('20140103084331'),('20140103131350'),('20140106114557'),('20140109091819'),('20140109093432'),('20140109143257'),('20140109190928'),('20140116131654'),('20140123141906'),('20140124095930'),('20140124141214'),('20140128094422'),('20140128094642'),('20140128095047'),('20140129081030'),('20140204082210'),('20140205092212'),('20140205101011'),('20140205121010'),('20140206103152'),('20140207133412'),('20140219160247'),('20140219162023'),('20140222080916'),('20140223190922'),('20140223202734'),('20140223210213'),('20140224150322'),('20140224151953'),('20140225143012'),('20140226074348'),('20140226074445'),('20140226074710'),('20140226074751'),('20140226121423'),('20140227102627'),('20140228164206'),('20140228164428'),('20140228165024'),('20140301074143'),('20140303131213'),('20140304135448'),('20140306083247'),('20140312145533'),('20140312150455'),('20140314132659'),('20140318131351'),('20140319182117'),('20140324073247'),('20140328124957'),('20140328133415'),('20140402070713'),('20140402070714'),('20140411121926'),('20140415092507'),('20140415093234'),('20140417084647'),('20140417085905'),('20140417162548'),('20140417235732'),('20140422120515'),('20140425080207'),('20140425080603'),('20140425080731'),('20140425081001'),('20140425111235'),('20140428132517'),('20140428134415'),('20140507104933'),('20140507105154'),('20140509115747'),('20140512062911'),('20140516095154'),('20140519102507'),('20140519123344'),('20140519132638'),('20140519164823'),('20140523082452'),('20140526064017'),('20140530105841'),('20140530115044'),('20140530115433'),('20140604075725'),('20140604135743'),('20140610115132'),('20140610115217'),('20140611094552'),('20140611094703'),('20140612084036'),('20140613132734'),('20140623112935'),('20140701081453'),('20140701135724'),('20140701140655'),('20140703074142'),('20140703075424'),('20140710125950'),('20140710131146'),('20140711094414'),('20140724084559'),('20140724093459'),('20140724123125'),('20140805102757'),('20140811133602'),('20140811133603'),('20140811133605'),('20140811133606'),('20140811144528'),('20140812065415'),('20140815055023'),('20140815085018'),('20140819054528'),('20140819134039'),('20140819134055'),('20140820132249'),('20140829075839'),('20140829113807'),('20140901082541'),('20140901130206'),('20140902095905'),('20140903111344'),('20140903112203'),('20140903120109'),('20140909074331'),('20140912084032'),('20140912115758'),('20140925093828'),('20140925095608'),('20140925111706'),('20140925112419'),('20140929090537'),('20140930064120'),('20140930064130'),('20140930064140'),('20140930064150'),('20140930064160'),('20140930064170'),('20140930064180'),('20140930064185'),('20140930064190'),('20140930064200'),('20140930074731'),('20140930083026'),('20141001065955'),('20141001070716'),('20141001113744'),('20141003113756'),('20141006100239'),('20141006114330'),('20141007144442'),('20141009083833'),('20141015062240'),('20141015071419'),('20141015080454'),('20141015135248'),('20141015135601'),('20141015150328'),('20141017080930'),('20141020113323'),('20141020225349'),('20141022084419'),('20141022190428'),('20141023120743'),('20141023141235'),('20141023150700'),('20141028080346'),('20141028104522'),('20141028104537'),('20141029090632'),('20141029121848'),('20141029121945'),('20141030140809'),('20141102192640'),('20141104213501'),('20141111183125'),('20141112131736'),('20141113204444'),('20141117165348'),('20141203095726'),('20141204084648'),('20141205094929'),('20141216132850'),('20141216132851'),('20141217152335'),('20141218082446'),('20141219205556'),('20141222130455'),('20150103143459'),('20150107155205'),('20150116125629'),('20150121124432'),('20150121130521'),('20150128113129'),('20150202112254'),('20150204124735'),('20150204124802'),('20150205155400'),('20150205155519'),('20150206125017'),('20150206151234'),('20150212125111'),('20150213091223'),('20150213092629'),('20150213094110'),('20150224140913'),('20150225081656'),('20150225082144'),('20150225122608'),('20150226124214'),('20150226130928'),('20150226131628'),('20150303134630'),('20150303140556'),('20150304074313'),('20150304084451'),('20150311073502'),('20150311100232'),('20150311111824'),('20150311113118'),('20150316084339'),('20150316135852'),('20150316140016'),('20150316140637'),('20150316151552'),('20150316173800'),('20150317080017'),('20150317122824'),('20150317142931'),('20150319121616'),('20150320091305'),('20150320144657'),('20150323085034'),('20150323152147'),('20150324072928'),('20150324112018'),('20150324112042'),('20150324112053'),('20150324112658'),('20150324114726'),('20150325164209'),('20150327075649'),('20150330072934'),('20150330093441'),('20150330094735'),('20150331103317'),('20150331105616'),('20150331112417'),('20150401071256'),('20150401072129'),('20150401140830'),('20150402090934'),('20150402111115'),('20150403101215'),('20150407123639'),('20150407124816'),('20150407130810'),('20150407131139'),('20150413104519'),('20150413134627'),('20150415092447'),('20150416112541'),('20150416134422'),('20150420072530'),('20150420083201'),('20150426113955'),('20150429155804'),('20150507082447'),('20150507084754'),('20150507165715'),('20150508141500'),('20150512082544'),('20150512083212'),('20150512083411'),('20150512083842'),('20150518120830'),('20150518123758'),('20150519124846'),('20150520104604'),('20150520130243'),('20150520131057'),('20150527091815'),('20150527133928'),('20150528120338'),('20150528120717'),('20150608135024'),('20150608140024'),('20150608144130'),('20150609084012'),('20150612104320'),('20150622080657'),('20150630082932'),('20150630122552'),('20150729062045'),('20150729062215'),('20150731115141'),('20150731115426'),('20150731115742'),('20150804113139'),('20150804114651'),('20150805084232'),('20150806114405'),('20150806114717'),('20150807141947'),('20150821131310'),('20150821131616'),('20150825120916'),('20150825121715'),('20150825122606'),('20150828094836'),('20150902090425'),('20150902103231'),('20150914203247'),('20150922192640'),('20151008090106'),('20151008130725'),('20151022180225'),('20151022180242'),('20151022183133'),('20151102084029'),('20151202062609'),('20151204083028'),('20151209102951'),('20151215071150'),('20151230071554'),('20151230095128'),('20151231083524'),('20160119092239'),('20160119092534'),('20160120112839'),('20160126134509'),('20160126141249'),('20160209172619'),('20160209183917'),('20160216084624'),('20160221065653'),('20160221183416'),('20160223083004'),('20160223084741'),('20160229114242'),('20160311070106'),('20160322103154'),('20160322103155'),('20160322103156'),('20160407103437'),('20160407132641'),('20160408061218'),('20160408070000'),('20160408070005'),('20160420100304'),('20160420200020'),('20160420200030'),('20160420200040'),('20160420200050'),('20160420200060'),('20160420200065'),('20160420200066'),('20160420200080'),('20160420200090'),('20160420200100'),('20160420200110'),('20160422074608'),('20160422075215'),('20160422094212'),('20160422094431'),('20160422094536'),('20160422114240'),('20160422114747'),('20160422123125'),('20160422123211'),('20160425144703'),('20160427113446'),('20160509111922'),('20160511130006'),('20160518060235'),('20160608130531'),('20160609070256'),('20160609080700'),('20160609081158'),('20160614071055'),('20160615145518'),('20160627063918'),('20160708084933'),('20160728102918'),('20160728130503'),('20160816083020'),('20160816083028'),('20160816083349'),('20160816083607'),('20160816123633'),('20160817130729'),('20160817140558'),('20160818090814'),('20160818110351'),('20160818111044'),('20160818111724'),('20160823073938'),('20160823115429'),('20160823120425'),('20160823120704'),('20160823120845'),('20160831054404'),('20160831054544'),('20160831054909'),('20160831054910'),('20160902103712'),('20160902104733'),('20160907095103'),('20160908091353'),('20160913110411'),('20160913112734'),('20160914070509'),('20160914071634'),('20160914072428'),('20160914072601'),('20160920081409'),('20160920102506'),('20160920102507'),('20160920103321'),('20160921130544'),('20160926111847'),('20160928080048'),('20160928080819'),('20160929114326'),('20160929124124'),('20160930070122'),('20161004141208'),('20161006074506'),('20161012132850'),('20161018090313'),('20161018090314'),('20161018090517'),('20161018093208'),('20161018100657'),('20161018105036'),('20161018105521'),('20161019125057'),('20161023074355'),('20161101104218'),('20161101124317'),('20161101124829'),('20161102101418'),('20161102101419'),('20161102193340'),('20161103063652'),('20161107092030'),('20161107105050'),('20161107112025'),('20161107131859'),('20161107132513'),('20161107141257'),('20161109094513'),('20170216134444'),('20170220123526'),('20170309104456'),('20170313201104'),('20170314075755'),('20170518221458'),('20170526200811'),('20170613153959'),('20170613153960'),('20170613153961'),('20170613153965'),('20170616114938'),('20170626065542'),('20170706193821'),('20170801125553'),('20170814125622'),('20170817035830'),('20170929211550'),('20171023070523'),('20171107063241'),('20171117062422'),('20171128122539'),('20171129152027'),('20171207073027'),('20171207075640'),('20180108061342'),('20180108093607'),('20180514083133'),('20180518073348'),('20180523121344'),('20180524075239'),('20180524081429'),('20180717122957'),('20180720044534'),('20180720065907'),('20180723115548'),('20180810123440'),('20180816175248'),('20180826074607'),('20180904075653'),('20180918172641'),('20181012065625'),('20181024094615'),('20181029064728'),('20181029132748'),('20181031072643'),('20181106212306'),('20181211125306'),('20181216162138'),('20181219090801'),('20181221120927'),('20190104083132'),('20190108075512'),('20190111122204'),('20190114141250'),('20190115083941'),('20190121064002'),('20190213073532'),('20190213082646'),('20190227111355'),('20190228084827'),('20190305112030'),('20190319114719'),('20190319122745'),('20190717105844');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `session_id` varchar(255) NOT NULL,
  `data` text,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_sessions_on_session_id` (`session_id`),
  KEY `index_sessions_on_updated_at` (`updated_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shipping_addresses`
--

DROP TABLE IF EXISTS `shipping_addresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `shipping_addresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `status` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `state_or_province` varchar(255) DEFAULT NULL,
  `street1` varchar(255) DEFAULT NULL,
  `street2` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `country_code` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_shipping_addresses_on_transaction_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shipping_addresses`
--

LOCK TABLES `shipping_addresses` WRITE;
/*!40000 ALTER TABLE `shipping_addresses` DISABLE KEYS */;
/*!40000 ALTER TABLE `shipping_addresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_links`
--

DROP TABLE IF EXISTS `social_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_links` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `provider` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `sort_priority` int(11) DEFAULT '0',
  `enabled` tinyint(1) DEFAULT '0',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_social_links_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_links`
--

LOCK TABLES `social_links` WRITE;
/*!40000 ALTER TABLE `social_links` DISABLE KEYS */;
INSERT INTO `social_links` VALUES (1,1,0,'',0,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(2,1,1,'',1,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(3,1,2,'',2,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(4,1,3,'',3,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(5,1,4,'',4,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(6,1,5,'',5,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(7,1,6,'',6,0,'2021-09-13 18:08:31','2021-09-13 18:08:31'),(8,1,7,'',7,0,'2021-09-13 18:08:31','2021-09-13 18:08:31');
/*!40000 ALTER TABLE `social_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_accounts`
--

DROP TABLE IF EXISTS `stripe_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stripe_accounts` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `person_id` varchar(255) DEFAULT NULL,
  `community_id` int(11) DEFAULT NULL,
  `stripe_seller_id` varchar(255) DEFAULT NULL,
  `stripe_bank_id` varchar(255) DEFAULT NULL,
  `stripe_customer_id` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_stripe_accounts_on_community_id` (`community_id`),
  KEY `index_stripe_accounts_on_person_id` (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_accounts`
--

LOCK TABLES `stripe_accounts` WRITE;
/*!40000 ALTER TABLE `stripe_accounts` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stripe_payments`
--

DROP TABLE IF EXISTS `stripe_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stripe_payments` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `payer_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `sum_cents` int(11) DEFAULT NULL,
  `commission_cents` int(11) DEFAULT NULL,
  `currency` varchar(255) DEFAULT NULL,
  `stripe_charge_id` varchar(255) DEFAULT NULL,
  `stripe_transfer_id` varchar(255) DEFAULT NULL,
  `fee_cents` int(11) DEFAULT NULL,
  `real_fee_cents` int(11) DEFAULT NULL,
  `subtotal_cents` int(11) DEFAULT NULL,
  `transfered_at` datetime DEFAULT NULL,
  `available_on` datetime DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `buyer_commission_cents` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stripe_payments`
--

LOCK TABLES `stripe_payments` WRITE;
/*!40000 ALTER TABLE `stripe_payments` DISABLE KEYS */;
/*!40000 ALTER TABLE `stripe_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` float DEFAULT NULL,
  `text` text,
  `author_id` varchar(255) DEFAULT NULL,
  `participation_id` int(11) DEFAULT NULL,
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `blocked` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_testimonials_on_receiver_id` (`receiver_id`),
  KEY `index_testimonials_on_transaction_id` (`transaction_id`),
  KEY `index_testimonials_on_author_id` (`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `testimonials`
--

LOCK TABLES `testimonials` WRITE;
/*!40000 ALTER TABLE `testimonials` DISABLE KEYS */;
/*!40000 ALTER TABLE `testimonials` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_process_tokens`
--

DROP TABLE IF EXISTS `transaction_process_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_process_tokens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `process_token` binary(16) DEFAULT NULL,
  `community_id` int(11) NOT NULL,
  `transaction_id` int(11) NOT NULL,
  `op_completed` tinyint(1) NOT NULL DEFAULT '0',
  `op_name` varchar(64) NOT NULL,
  `op_input` text,
  `op_output` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_paypal_process_tokens_on_transaction` (`transaction_id`,`community_id`,`op_name`),
  UNIQUE KEY `index_transaction_process_tokens_on_process_token` (`process_token`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_process_tokens`
--

LOCK TABLES `transaction_process_tokens` WRITE;
/*!40000 ALTER TABLE `transaction_process_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_process_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_processes`
--

DROP TABLE IF EXISTS `transaction_processes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_processes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `community_id` int(11) DEFAULT NULL,
  `process` varchar(32) NOT NULL,
  `author_is_seller` tinyint(1) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `index_transaction_process_on_community_id` (`community_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_processes`
--

LOCK TABLES `transaction_processes` WRITE;
/*!40000 ALTER TABLE `transaction_processes` DISABLE KEYS */;
INSERT INTO `transaction_processes` VALUES (1,1,'none',1,'2021-08-18 09:35:40','2021-08-18 09:35:40'),(2,1,'none',0,'2021-08-18 09:35:40','2021-08-18 09:35:40'),(3,1,'preauthorize',1,'2021-08-18 09:35:40','2021-08-18 09:35:40');
/*!40000 ALTER TABLE `transaction_processes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transaction_transitions`
--

DROP TABLE IF EXISTS `transaction_transitions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transaction_transitions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to_state` varchar(255) DEFAULT NULL,
  `metadata` text,
  `sort_key` int(11) DEFAULT '0',
  `transaction_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `most_recent` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_transaction_transitions_on_sort_key_and_conversation_id` (`sort_key`,`transaction_id`),
  KEY `index_transaction_transitions_on_conversation_id` (`transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction_transitions`
--

LOCK TABLES `transaction_transitions` WRITE;
/*!40000 ALTER TABLE `transaction_transitions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transaction_transitions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `starter_id` varchar(255) NOT NULL,
  `starter_uuid` binary(16) NOT NULL,
  `listing_id` int(11) NOT NULL,
  `listing_uuid` binary(16) NOT NULL,
  `conversation_id` int(11) DEFAULT NULL,
  `automatic_confirmation_after_days` int(11) NOT NULL,
  `community_id` int(11) NOT NULL,
  `community_uuid` binary(16) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `starter_skipped_feedback` tinyint(1) DEFAULT '0',
  `author_skipped_feedback` tinyint(1) DEFAULT '0',
  `last_transition_at` datetime DEFAULT NULL,
  `current_state` varchar(255) DEFAULT NULL,
  `commission_from_seller` int(11) DEFAULT NULL,
  `minimum_commission_cents` int(11) DEFAULT '0',
  `minimum_commission_currency` varchar(255) DEFAULT NULL,
  `payment_gateway` varchar(255) NOT NULL DEFAULT 'none',
  `listing_quantity` int(11) DEFAULT '1',
  `listing_author_id` varchar(255) NOT NULL,
  `listing_author_uuid` binary(16) NOT NULL,
  `listing_title` varchar(255) DEFAULT NULL,
  `unit_type` varchar(32) DEFAULT NULL,
  `unit_price_cents` int(11) DEFAULT NULL,
  `unit_price_currency` varchar(8) DEFAULT NULL,
  `unit_tr_key` varchar(64) DEFAULT NULL,
  `unit_selector_tr_key` varchar(64) DEFAULT NULL,
  `payment_process` varchar(31) DEFAULT 'none',
  `delivery_method` varchar(31) DEFAULT 'none',
  `shipping_price_cents` int(11) DEFAULT NULL,
  `availability` varchar(32) DEFAULT 'none',
  `booking_uuid` binary(16) DEFAULT NULL,
  `deleted` tinyint(1) DEFAULT '0',
  `commission_from_buyer` int(11) DEFAULT NULL,
  `minimum_buyer_fee_cents` int(11) DEFAULT '0',
  `minimum_buyer_fee_currency` varchar(3) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_transactions_on_listing_id` (`listing_id`),
  KEY `index_transactions_on_conversation_id` (`conversation_id`),
  KEY `index_transactions_on_community_id` (`community_id`),
  KEY `index_transactions_on_last_transition_at` (`last_transition_at`),
  KEY `transactions_on_cid_and_deleted` (`community_id`,`deleted`),
  KEY `index_transactions_on_deleted` (`deleted`),
  KEY `index_transactions_on_starter_id` (`starter_id`),
  KEY `index_transactions_on_listing_author_id` (`listing_author_id`),
  KEY `community_starter_state` (`community_id`,`starter_id`,`current_state`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES (1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',1,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 02:54:17','2021-08-25 02:54:17',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(2,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',2,_binary '\ÏO˜Ucî†¯@˛îw\·',2,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 02:55:55','2021-08-25 02:55:55',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test 2','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(3,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',3,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 02:56:25','2021-08-25 02:56:25',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(4,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',4,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 03:00:44','2021-08-25 03:00:44',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(5,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',5,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 03:02:37','2021-08-25 03:02:37',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(6,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',2,_binary '\ÏO˜Ucî†¯@˛îw\·',6,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 03:03:28','2021-08-25 03:03:29',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test 2','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(7,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',2,_binary '\ÏO˜Ucî†¯@˛îw\·',7,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 03:04:20','2021-08-25 03:04:21',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test 2','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(8,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',5,_binary '\ÏQXh˛‚úÉ@˛îw\·',8,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-25 03:05:48','2021-08-25 03:05:48',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(9,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',6,_binary '\Ï<\„\Z¨¢†¯@˛îw\·',9,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-26 07:11:52','2021-08-26 07:11:52',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test - Booking','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(10,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',7,_binary '\Ï=\rµ*Ç†¯@˛îw\·',10,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-26 07:13:04','2021-08-26 07:13:04',0,0,NULL,NULL,0,0,NULL,'none',1,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·','Porter-Cable 6-Gallon Air Compressor','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(11,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',7,_binary '\Ï=\rµ*Ç†¯@˛îw\·',11,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-26 09:56:29','2021-08-26 09:56:29',0,0,NULL,NULL,0,0,NULL,'none',1,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·','Porter-Cable 6-Gallon Air Compressor','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(12,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',12,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-26 09:56:45','2021-08-26 09:56:45',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(13,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',13,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-26 09:56:53','2021-08-26 09:56:53',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(14,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',2,_binary '\ÏO˜Ucî†¯@˛îw\·',14,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-08-26 09:57:04','2021-08-26 09:57:04',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test 2','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(15,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',15,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:28:16','2021-09-13 17:28:16',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(16,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',16,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:33:46','2021-09-13 17:33:46',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(17,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',17,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:34:11','2021-09-13 17:34:11',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(18,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',18,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:34:56','2021-09-13 17:34:56',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(19,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',19,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:35:03','2021-09-13 17:35:03',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(20,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',20,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:35:14','2021-09-13 17:35:14',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(21,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',21,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:35:26','2021-09-13 17:35:26',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(22,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',22,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:35:41','2021-09-13 17:35:41',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(23,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',23,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:41:38','2021-09-13 17:41:38',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(24,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',24,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:42:49','2021-09-13 17:42:49',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(25,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',25,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-13 17:44:00','2021-09-13 17:44:01',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(26,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',26,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 13:52:13','2021-09-16 13:52:13',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(27,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',27,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:03:01','2021-09-16 14:03:01',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(28,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',28,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:03:47','2021-09-16 14:03:47',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(29,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',29,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:06:20','2021-09-16 14:06:20',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(30,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',30,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:06:43','2021-09-16 14:06:43',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(31,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',31,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:06:50','2021-09-16 14:06:50',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(32,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',32,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:07:03','2021-09-16 14:07:04',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(33,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',33,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:30:54','2021-09-16 14:30:54',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(34,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',9,_binary '\Ï˙\’˘∫N∏#@˛îw\·',34,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 14:31:54','2021-09-16 14:31:54',0,0,NULL,NULL,0,0,NULL,'none',1,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·','test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(35,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',35,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 15:06:01','2021-09-16 15:06:01',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(36,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',9,_binary '\Ï˙\’˘∫N∏#@˛îw\·',36,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-16 15:54:20','2021-09-16 15:54:20',0,0,NULL,NULL,0,0,NULL,'none',1,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·','test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(37,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',37,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-17 23:50:12','2021-09-17 23:50:12',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(38,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',38,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-17 23:51:15','2021-09-17 23:51:15',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(39,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',39,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-25 19:06:29','2021-09-25 19:06:29',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(40,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',40,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-26 13:52:31','2021-09-26 13:52:31',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(41,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',41,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-09-26 13:52:40','2021-09-26 13:52:40',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(42,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',42,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-16 19:23:50','2021-10-16 19:23:50',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(43,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',43,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-16 19:31:05','2021-10-16 19:31:05',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(44,'v4LxAWSIxaswezqqvHFQGA',_binary '\Ï\0ß6zµ±@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',44,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-16 19:31:42','2021-10-16 19:31:42',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(45,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',45,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-26 23:33:13','2021-10-26 23:33:13',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(46,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',46,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-26 23:33:22','2021-10-26 23:33:22',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(47,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',47,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:48:56','2021-10-27 14:48:56',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(48,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',48,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:50:26','2021-10-27 14:50:26',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(49,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',49,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:50:45','2021-10-27 14:50:45',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(50,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',5,_binary '\ÏQXh˛‚úÉ@˛îw\·',50,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:51:26','2021-10-27 14:51:26',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(51,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',5,_binary '\ÏQXh˛‚úÉ@˛îw\·',51,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:51:48','2021-10-27 14:51:48',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(52,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',52,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:52:09','2021-10-27 14:52:09',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(53,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',53,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 14:52:57','2021-10-27 14:52:57',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(54,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',54,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 15:01:30','2021-10-27 15:01:30',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(55,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',11,_binary '\Ï77\Ô\Ë[$ö\Œ@˛îw\·',55,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 15:09:53','2021-10-27 15:09:53',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Food Waste Seminar','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(56,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',11,_binary '\Ï77\Ô\Ë[$ö\Œ@˛îw\·',56,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 16:09:17','2021-10-27 16:09:17',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Food Waste Seminar','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(57,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',11,_binary '\Ï77\Ô\Ë[$ö\Œ@˛îw\·',57,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 16:10:06','2021-10-27 16:10:06',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Food Waste Seminar','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(58,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',11,_binary '\Ï77\Ô\Ë[$ö\Œ@˛îw\·',58,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 16:11:45','2021-10-27 16:11:45',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Food Waste Seminar','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(59,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',59,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 17:03:36','2021-10-27 17:03:36',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(60,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',60,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 17:04:35','2021-10-27 17:04:35',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(61,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',61,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 17:49:13','2021-10-27 17:49:13',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(62,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',62,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 21:07:19','2021-10-27 21:07:19',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(63,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',10,_binary '\Ï758SM|á˛@˛îw\·',63,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 21:07:29','2021-10-27 21:07:29',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','compost party','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(64,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',64,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-27 21:28:45','2021-10-27 21:28:45',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(65,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',65,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:08:33','2021-10-28 01:08:33',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(66,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',66,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:09:17','2021-10-28 01:09:17',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(67,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',67,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:09:55','2021-10-28 01:09:55',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(68,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',68,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:11:46','2021-10-28 01:11:46',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(69,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',69,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:12:22','2021-10-28 01:12:23',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(70,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',70,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:13:30','2021-10-28 01:13:30',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(71,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',71,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:14:03','2021-10-28 01:14:03',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(72,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',72,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:18:25','2021-10-28 01:18:25',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(73,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',73,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:19:21','2021-10-28 01:19:21',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(74,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',74,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:20:26','2021-10-28 01:20:26',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(75,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',75,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:22:15','2021-10-28 01:22:15',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(76,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',76,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:22:52','2021-10-28 01:22:52',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(77,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',77,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:23:17','2021-10-28 01:23:17',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(78,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',78,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:23:39','2021-10-28 01:23:39',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(79,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',79,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:23:48','2021-10-28 01:23:48',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(80,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',80,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:24:57','2021-10-28 01:24:57',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(81,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',81,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:28:55','2021-10-28 01:28:55',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(82,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',82,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:30:36','2021-10-28 01:30:36',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(83,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',83,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 01:31:04','2021-10-28 01:31:04',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(84,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',84,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 02:14:32','2021-10-28 02:14:32',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(85,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',85,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 02:15:35','2021-10-28 02:15:35',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(86,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',86,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 20:48:30','2021-10-28 20:48:30',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(87,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',87,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-28 20:51:46','2021-10-28 20:51:47',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(88,'kS5u1shcv6nXzXzziGRa3w',_binary '\Ï+ììhïÓó∫@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',88,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:18:53','2021-10-29 02:18:53',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(89,'kS5u1shcv6nXzXzziGRa3w',_binary '\Ï+ììhïÓó∫@˛îw\·',1,_binary '\ÏOº¿\r$úÉ@˛îw\·',89,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:19:57','2021-10-29 02:19:57',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Join the PDX Climate Action Hub!','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(90,'kS5u1shcv6nXzXzziGRa3w',_binary '\Ï+ììhïÓó∫@˛îw\·',8,_binary '\Ï∫\r}∂j@˛îw\·',90,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:20:15','2021-10-29 02:20:15',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Testing','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(91,'kS5u1shcv6nXzXzziGRa3w',_binary '\Ï+ììhïÓó∫@˛îw\·',4,_binary '\ÏP\Êˆ±†úÉ@˛îw\·',91,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:20:35','2021-10-29 02:20:35',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Test Post','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(92,'kS5u1shcv6nXzXzziGRa3w',_binary '\Ï+ììhïÓó∫@˛îw\·',3,_binary '\ÏP£èìñúÉ@˛îw\·',92,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:20:49','2021-10-29 02:20:49',0,0,NULL,NULL,0,0,NULL,'none',1,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·','Help Needed','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(93,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',93,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:48:07','2021-10-29 02:48:08',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(94,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',94,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:52:25','2021-10-29 02:52:25',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(95,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',95,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 02:55:10','2021-10-29 02:55:10',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(96,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',13,_binary '\Ï8f8\“h<á˛@˛îw\·',96,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 03:13:44','2021-10-29 03:13:44',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Intro to Drawdown at the Central Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(97,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',13,_binary '\Ï8f8\“h<á˛@˛îw\·',97,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 14:13:06','2021-10-29 14:13:06',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Intro to Drawdown at the Central Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(98,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',13,_binary '\Ï8f8\“h<á˛@˛îw\·',98,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 14:13:42','2021-10-29 14:13:42',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Intro to Drawdown at the Central Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(99,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',12,_binary '\Ï7ãëE∫|ö\Œ@˛îw\·',99,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 15:27:47','2021-10-29 15:27:47',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Carbon Footprint Eating Challenge','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(100,'lHWG5Y2z6chmZPFTFWBZzw',_binary '\Ï\0	\Ï]púÉ@˛îw\·',13,_binary '\Ï8f8\“h<á˛@˛îw\·',100,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 15:29:41','2021-10-29 15:29:41',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Intro to Drawdown at the Central Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(101,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',13,_binary '\Ï8f8\“h<á˛@˛îw\·',101,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 16:33:54','2021-10-29 16:33:54',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Intro to Drawdown at the Central Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(102,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',13,_binary '\Ï8f8\“h<á˛@˛îw\·',102,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-29 16:34:15','2021-10-29 16:34:15',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Intro to Drawdown at the Central Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(103,'NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·',14,_binary '\Ï:_XE∑Fö\Œ@˛îw\·',103,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-31 15:29:32','2021-10-31 15:29:32',0,0,NULL,NULL,0,0,NULL,'none',1,'NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·','Join the Portland Youth Climate Summit Planning Committee','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(104,'NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·',14,_binary '\Ï:_XE∑Fö\Œ@˛îw\·',104,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-31 15:30:17','2021-10-31 15:30:17',0,0,NULL,NULL,0,0,NULL,'none',1,'NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·','Join the Portland Youth Climate Summit Planning Committee','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(105,'NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·',14,_binary '\Ï:_XE∑Fö\Œ@˛îw\·',105,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-10-31 15:35:53','2021-10-31 15:35:53',0,0,NULL,NULL,0,0,NULL,'none',1,'NQXdZK130o52pyjh6cf2eQ',_binary '\Ï6D9).Ω\"@˛îw\·','Join the Portland Youth Climate Summit Planning Committee','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL),(106,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·',15,_binary '\Ï;;{xS|Ω\"@˛îw\·',106,0,1,_binary '\Ï\0¶\⁄\‰Ùµ±@˛îw\·','2021-11-01 17:45:21','2021-11-01 17:45:21',0,0,NULL,NULL,0,0,NULL,'none',1,'tvNYAmURaFGVnbRimB3VmA',_binary '\ÏìKâ¨äO@˛îw\·','Worm Composting at the Library','custom',0,'EUR',NULL,NULL,'none','none',NULL,'none',NULL,0,NULL,0,NULL);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unavailable_dates`
--

DROP TABLE IF EXISTS `unavailable_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unavailable_dates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `listing_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unavailable_dates`
--

LOCK TABLES `unavailable_dates` WRITE;
/*!40000 ALTER TABLE `unavailable_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `unavailable_dates` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-01 17:51:42
