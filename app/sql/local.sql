-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: localhost    Database: local
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_commentmeta`
--

LOCK TABLES `wp_commentmeta` WRITE;
/*!40000 ALTER TABLE `wp_commentmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_commentmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_comments`
--

LOCK TABLES `wp_comments` WRITE;
/*!40000 ALTER TABLE `wp_comments` DISABLE KEYS */;
INSERT INTO `wp_comments` VALUES (1,1,'A WordPress Commenter','wapuu@wordpress.example','https://wordpress.org/','','2024-09-10 14:45:37','2024-09-10 14:45:37','Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://en.gravatar.com/\">Gravatar</a>.',0,'1','','comment',0,0);
/*!40000 ALTER TABLE `wp_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_links`
--

LOCK TABLES `wp_links` WRITE;
/*!40000 ALTER TABLE `wp_links` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1674 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_options`
--

LOCK TABLES `wp_options` WRITE;
/*!40000 ALTER TABLE `wp_options` DISABLE KEYS */;
INSERT INTO `wp_options` VALUES (1,'cron','a:11:{i:1729690241;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1729691138;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1729694738;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729695155;a:3:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729695157;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729698337;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729700137;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729701101;a:1:{s:21:\"ai1wm_storage_cleanup\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1729701937;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1729919846;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}','auto');
INSERT INTO `wp_options` VALUES (2,'siteurl','http://oha.local','on');
INSERT INTO `wp_options` VALUES (3,'home','http://oha.local','on');
INSERT INTO `wp_options` VALUES (4,'blogname','OHA!','on');
INSERT INTO `wp_options` VALUES (5,'blogdescription','','on');
INSERT INTO `wp_options` VALUES (6,'users_can_register','0','on');
INSERT INTO `wp_options` VALUES (7,'admin_email','dev-email@wpengine.local','on');
INSERT INTO `wp_options` VALUES (8,'start_of_week','1','on');
INSERT INTO `wp_options` VALUES (9,'use_balanceTags','0','on');
INSERT INTO `wp_options` VALUES (10,'use_smilies','1','on');
INSERT INTO `wp_options` VALUES (11,'require_name_email','1','on');
INSERT INTO `wp_options` VALUES (12,'comments_notify','1','on');
INSERT INTO `wp_options` VALUES (13,'posts_per_rss','10','on');
INSERT INTO `wp_options` VALUES (14,'rss_use_excerpt','0','on');
INSERT INTO `wp_options` VALUES (15,'mailserver_url','mail.example.com','on');
INSERT INTO `wp_options` VALUES (16,'mailserver_login','login@example.com','on');
INSERT INTO `wp_options` VALUES (17,'mailserver_pass','password','on');
INSERT INTO `wp_options` VALUES (18,'mailserver_port','110','on');
INSERT INTO `wp_options` VALUES (19,'default_category','1','on');
INSERT INTO `wp_options` VALUES (20,'default_comment_status','open','on');
INSERT INTO `wp_options` VALUES (21,'default_ping_status','open','on');
INSERT INTO `wp_options` VALUES (22,'default_pingback_flag','1','on');
INSERT INTO `wp_options` VALUES (23,'posts_per_page','3','on');
INSERT INTO `wp_options` VALUES (24,'date_format','F j, Y','on');
INSERT INTO `wp_options` VALUES (25,'time_format','g:i a','on');
INSERT INTO `wp_options` VALUES (26,'links_updated_date_format','F j, Y g:i a','on');
INSERT INTO `wp_options` VALUES (27,'comment_moderation','0','on');
INSERT INTO `wp_options` VALUES (28,'moderation_notify','1','on');
INSERT INTO `wp_options` VALUES (29,'permalink_structure','/%postname%/','on');
INSERT INTO `wp_options` VALUES (30,'rewrite_rules','a:232:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:7:\"case/?$\";s:24:\"index.php?post_type=case\";s:37:\"case/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=case&feed=$matches[1]\";s:32:\"case/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?post_type=case&feed=$matches[1]\";s:24:\"case/page/([0-9]{1,})/?$\";s:42:\"index.php?post_type=case&paged=$matches[1]\";s:13:\"how_to_use/?$\";s:30:\"index.php?post_type=how_to_use\";s:43:\"how_to_use/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=how_to_use&feed=$matches[1]\";s:38:\"how_to_use/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=how_to_use&feed=$matches[1]\";s:30:\"how_to_use/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=how_to_use&paged=$matches[1]\";s:8:\"merit/?$\";s:25:\"index.php?post_type=merit\";s:38:\"merit/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=merit&feed=$matches[1]\";s:33:\"merit/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?post_type=merit&feed=$matches[1]\";s:25:\"merit/page/([0-9]{1,})/?$\";s:43:\"index.php?post_type=merit&paged=$matches[1]\";s:10:\"compare/?$\";s:27:\"index.php?post_type=compare\";s:40:\"compare/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=compare&feed=$matches[1]\";s:35:\"compare/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=compare&feed=$matches[1]\";s:27:\"compare/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=compare&paged=$matches[1]\";s:5:\"qa/?$\";s:22:\"index.php?post_type=qa\";s:35:\"qa/feed/(feed|rdf|rss|rss2|atom)/?$\";s:39:\"index.php?post_type=qa&feed=$matches[1]\";s:30:\"qa/(feed|rdf|rss|rss2|atom)/?$\";s:39:\"index.php?post_type=qa&feed=$matches[1]\";s:22:\"qa/page/([0-9]{1,})/?$\";s:40:\"index.php?post_type=qa&paged=$matches[1]\";s:10:\"gallery/?$\";s:27:\"index.php?post_type=gallery\";s:40:\"gallery/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:35:\"gallery/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=gallery&feed=$matches[1]\";s:27:\"gallery/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=gallery&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"how_to_use/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"how_to_use/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"how_to_use/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"how_to_use/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"how_to_use/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"how_to_use/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"how_to_use/([^/]+)/embed/?$\";s:43:\"index.php?how_to_use=$matches[1]&embed=true\";s:31:\"how_to_use/([^/]+)/trackback/?$\";s:37:\"index.php?how_to_use=$matches[1]&tb=1\";s:51:\"how_to_use/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?how_to_use=$matches[1]&feed=$matches[2]\";s:46:\"how_to_use/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?how_to_use=$matches[1]&feed=$matches[2]\";s:39:\"how_to_use/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?how_to_use=$matches[1]&paged=$matches[2]\";s:46:\"how_to_use/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?how_to_use=$matches[1]&cpage=$matches[2]\";s:35:\"how_to_use/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?how_to_use=$matches[1]&page=$matches[2]\";s:27:\"how_to_use/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"how_to_use/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"how_to_use/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"how_to_use/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"how_to_use/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"how_to_use/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"case/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"case/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"case/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"case/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"case/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"case/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"case/([^/]+)/embed/?$\";s:37:\"index.php?case=$matches[1]&embed=true\";s:25:\"case/([^/]+)/trackback/?$\";s:31:\"index.php?case=$matches[1]&tb=1\";s:45:\"case/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?case=$matches[1]&feed=$matches[2]\";s:40:\"case/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?case=$matches[1]&feed=$matches[2]\";s:33:\"case/([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?case=$matches[1]&paged=$matches[2]\";s:40:\"case/([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?case=$matches[1]&cpage=$matches[2]\";s:29:\"case/([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?case=$matches[1]&page=$matches[2]\";s:21:\"case/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:31:\"case/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:51:\"case/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"case/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:46:\"case/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:27:\"case/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"merit/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"merit/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"merit/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"merit/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"merit/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"merit/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"merit/([^/]+)/embed/?$\";s:38:\"index.php?merit=$matches[1]&embed=true\";s:26:\"merit/([^/]+)/trackback/?$\";s:32:\"index.php?merit=$matches[1]&tb=1\";s:46:\"merit/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?merit=$matches[1]&feed=$matches[2]\";s:41:\"merit/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?merit=$matches[1]&feed=$matches[2]\";s:34:\"merit/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?merit=$matches[1]&paged=$matches[2]\";s:41:\"merit/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?merit=$matches[1]&cpage=$matches[2]\";s:30:\"merit/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?merit=$matches[1]&page=$matches[2]\";s:22:\"merit/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"merit/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"merit/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"merit/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"merit/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"merit/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"compare/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"compare/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"compare/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"compare/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"compare/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"compare/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"compare/([^/]+)/embed/?$\";s:40:\"index.php?compare=$matches[1]&embed=true\";s:28:\"compare/([^/]+)/trackback/?$\";s:34:\"index.php?compare=$matches[1]&tb=1\";s:48:\"compare/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?compare=$matches[1]&feed=$matches[2]\";s:43:\"compare/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?compare=$matches[1]&feed=$matches[2]\";s:36:\"compare/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?compare=$matches[1]&paged=$matches[2]\";s:43:\"compare/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?compare=$matches[1]&cpage=$matches[2]\";s:32:\"compare/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?compare=$matches[1]&page=$matches[2]\";s:24:\"compare/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"compare/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"compare/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"compare/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"compare/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"compare/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"qa/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"qa/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"qa/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"qa/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"qa/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"qa/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:19:\"qa/([^/]+)/embed/?$\";s:35:\"index.php?qa=$matches[1]&embed=true\";s:23:\"qa/([^/]+)/trackback/?$\";s:29:\"index.php?qa=$matches[1]&tb=1\";s:43:\"qa/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?qa=$matches[1]&feed=$matches[2]\";s:38:\"qa/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:41:\"index.php?qa=$matches[1]&feed=$matches[2]\";s:31:\"qa/([^/]+)/page/?([0-9]{1,})/?$\";s:42:\"index.php?qa=$matches[1]&paged=$matches[2]\";s:38:\"qa/([^/]+)/comment-page-([0-9]{1,})/?$\";s:42:\"index.php?qa=$matches[1]&cpage=$matches[2]\";s:27:\"qa/([^/]+)(?:/([0-9]+))?/?$\";s:41:\"index.php?qa=$matches[1]&page=$matches[2]\";s:19:\"qa/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:29:\"qa/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:49:\"qa/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:44:\"qa/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:44:\"qa/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:25:\"qa/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"gallery/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"gallery/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"gallery/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"gallery/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"gallery/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"gallery/([^/]+)/embed/?$\";s:40:\"index.php?gallery=$matches[1]&embed=true\";s:28:\"gallery/([^/]+)/trackback/?$\";s:34:\"index.php?gallery=$matches[1]&tb=1\";s:48:\"gallery/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:43:\"gallery/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?gallery=$matches[1]&feed=$matches[2]\";s:36:\"gallery/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&paged=$matches[2]\";s:43:\"gallery/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?gallery=$matches[1]&cpage=$matches[2]\";s:32:\"gallery/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?gallery=$matches[1]&page=$matches[2]\";s:24:\"gallery/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"gallery/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"gallery/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"gallery/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"gallery/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:40:\"index.php?&page_id=131&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}','on');
INSERT INTO `wp_options` VALUES (31,'hack_file','0','on');
INSERT INTO `wp_options` VALUES (32,'blog_charset','UTF-8','on');
INSERT INTO `wp_options` VALUES (33,'moderation_keys','','off');
INSERT INTO `wp_options` VALUES (34,'active_plugins','a:6:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";i:2;s:36:\"contact-form-7/wp-contact-form-7.php\";i:3;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:4;s:33:\"duplicate-post/duplicate-post.php\";i:5;s:47:\"show-current-template/show-current-template.php\";}','on');
INSERT INTO `wp_options` VALUES (35,'category_base','','on');
INSERT INTO `wp_options` VALUES (36,'ping_sites','http://rpc.pingomatic.com/','on');
INSERT INTO `wp_options` VALUES (37,'comment_max_links','2','on');
INSERT INTO `wp_options` VALUES (38,'gmt_offset','0','on');
INSERT INTO `wp_options` VALUES (39,'default_email_category','1','on');
INSERT INTO `wp_options` VALUES (40,'recently_edited','','off');
INSERT INTO `wp_options` VALUES (41,'template','oha','on');
INSERT INTO `wp_options` VALUES (42,'stylesheet','oha','on');
INSERT INTO `wp_options` VALUES (43,'comment_registration','0','on');
INSERT INTO `wp_options` VALUES (44,'html_type','text/html','on');
INSERT INTO `wp_options` VALUES (45,'use_trackback','0','on');
INSERT INTO `wp_options` VALUES (46,'default_role','subscriber','on');
INSERT INTO `wp_options` VALUES (47,'db_version','57155','on');
INSERT INTO `wp_options` VALUES (48,'uploads_use_yearmonth_folders','1','on');
INSERT INTO `wp_options` VALUES (49,'upload_path','','on');
INSERT INTO `wp_options` VALUES (50,'blog_public','1','on');
INSERT INTO `wp_options` VALUES (51,'default_link_category','2','on');
INSERT INTO `wp_options` VALUES (52,'show_on_front','page','on');
INSERT INTO `wp_options` VALUES (53,'tag_base','','on');
INSERT INTO `wp_options` VALUES (54,'show_avatars','1','on');
INSERT INTO `wp_options` VALUES (55,'avatar_rating','G','on');
INSERT INTO `wp_options` VALUES (56,'upload_url_path','','on');
INSERT INTO `wp_options` VALUES (57,'thumbnail_size_w','150','on');
INSERT INTO `wp_options` VALUES (58,'thumbnail_size_h','150','on');
INSERT INTO `wp_options` VALUES (59,'thumbnail_crop','1','on');
INSERT INTO `wp_options` VALUES (60,'medium_size_w','300','on');
INSERT INTO `wp_options` VALUES (61,'medium_size_h','300','on');
INSERT INTO `wp_options` VALUES (62,'avatar_default','mystery','on');
INSERT INTO `wp_options` VALUES (63,'large_size_w','1024','on');
INSERT INTO `wp_options` VALUES (64,'large_size_h','1024','on');
INSERT INTO `wp_options` VALUES (65,'image_default_link_type','none','on');
INSERT INTO `wp_options` VALUES (66,'image_default_size','','on');
INSERT INTO `wp_options` VALUES (67,'image_default_align','','on');
INSERT INTO `wp_options` VALUES (68,'close_comments_for_old_posts','0','on');
INSERT INTO `wp_options` VALUES (69,'close_comments_days_old','14','on');
INSERT INTO `wp_options` VALUES (70,'thread_comments','1','on');
INSERT INTO `wp_options` VALUES (71,'thread_comments_depth','5','on');
INSERT INTO `wp_options` VALUES (72,'page_comments','0','on');
INSERT INTO `wp_options` VALUES (73,'comments_per_page','50','on');
INSERT INTO `wp_options` VALUES (74,'default_comments_page','newest','on');
INSERT INTO `wp_options` VALUES (75,'comment_order','asc','on');
INSERT INTO `wp_options` VALUES (76,'sticky_posts','a:0:{}','on');
INSERT INTO `wp_options` VALUES (77,'widget_categories','a:0:{}','on');
INSERT INTO `wp_options` VALUES (78,'widget_text','a:0:{}','on');
INSERT INTO `wp_options` VALUES (79,'widget_rss','a:0:{}','on');
INSERT INTO `wp_options` VALUES (80,'uninstall_plugins','a:0:{}','off');
INSERT INTO `wp_options` VALUES (81,'timezone_string','','on');
INSERT INTO `wp_options` VALUES (82,'page_for_posts','0','on');
INSERT INTO `wp_options` VALUES (83,'page_on_front','131','on');
INSERT INTO `wp_options` VALUES (84,'default_post_format','0','on');
INSERT INTO `wp_options` VALUES (85,'link_manager_enabled','0','on');
INSERT INTO `wp_options` VALUES (86,'finished_splitting_shared_terms','1','on');
INSERT INTO `wp_options` VALUES (87,'site_icon','0','on');
INSERT INTO `wp_options` VALUES (88,'medium_large_size_w','768','on');
INSERT INTO `wp_options` VALUES (89,'medium_large_size_h','0','on');
INSERT INTO `wp_options` VALUES (90,'wp_page_for_privacy_policy','3','on');
INSERT INTO `wp_options` VALUES (91,'show_comments_cookies_opt_in','1','on');
INSERT INTO `wp_options` VALUES (92,'admin_email_lifespan','1741531537','on');
INSERT INTO `wp_options` VALUES (93,'disallowed_keys','','off');
INSERT INTO `wp_options` VALUES (94,'comment_previously_approved','1','on');
INSERT INTO `wp_options` VALUES (95,'auto_plugin_theme_update_emails','a:0:{}','off');
INSERT INTO `wp_options` VALUES (96,'auto_update_core_dev','enabled','on');
INSERT INTO `wp_options` VALUES (97,'auto_update_core_minor','enabled','on');
INSERT INTO `wp_options` VALUES (98,'auto_update_core_major','enabled','on');
INSERT INTO `wp_options` VALUES (99,'wp_force_deactivated_plugins','a:0:{}','on');
INSERT INTO `wp_options` VALUES (100,'wp_attachment_pages_enabled','0','on');
INSERT INTO `wp_options` VALUES (101,'initial_db_version','57155','on');
INSERT INTO `wp_options` VALUES (102,'wp_user_roles','a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:62:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:35:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:10:\"copy_posts\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}','auto');
INSERT INTO `wp_options` VALUES (103,'fresh_site','0','auto');
INSERT INTO `wp_options` VALUES (104,'user_count','1','off');
INSERT INTO `wp_options` VALUES (105,'widget_block','a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (106,'sidebars_widgets','a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}','auto');
INSERT INTO `wp_options` VALUES (107,'widget_pages','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (108,'widget_calendar','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (109,'widget_archives','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (110,'widget_media_audio','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (111,'widget_media_image','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (112,'widget_media_gallery','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (113,'widget_media_video','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (114,'widget_meta','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (115,'widget_search','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (116,'widget_recent-posts','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (117,'widget_recent-comments','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (118,'widget_tag_cloud','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (119,'widget_nav_menu','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (120,'widget_custom_html','a:1:{s:12:\"_multiwidget\";i:1;}','auto');
INSERT INTO `wp_options` VALUES (121,'_transient_wp_core_block_css_files','a:2:{s:7:\"version\";s:5:\"6.6.2\";s:5:\"files\";a:496:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:29:\"comment-content/style-rtl.css\";i:77;s:33:\"comment-content/style-rtl.min.css\";i:78;s:25:\"comment-content/style.css\";i:79;s:29:\"comment-content/style.min.css\";i:80;s:30:\"comment-template/style-rtl.css\";i:81;s:34:\"comment-template/style-rtl.min.css\";i:82;s:26:\"comment-template/style.css\";i:83;s:30:\"comment-template/style.min.css\";i:84;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:85;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:86;s:38:\"comments-pagination-numbers/editor.css\";i:87;s:42:\"comments-pagination-numbers/editor.min.css\";i:88;s:34:\"comments-pagination/editor-rtl.css\";i:89;s:38:\"comments-pagination/editor-rtl.min.css\";i:90;s:30:\"comments-pagination/editor.css\";i:91;s:34:\"comments-pagination/editor.min.css\";i:92;s:33:\"comments-pagination/style-rtl.css\";i:93;s:37:\"comments-pagination/style-rtl.min.css\";i:94;s:29:\"comments-pagination/style.css\";i:95;s:33:\"comments-pagination/style.min.css\";i:96;s:29:\"comments-title/editor-rtl.css\";i:97;s:33:\"comments-title/editor-rtl.min.css\";i:98;s:25:\"comments-title/editor.css\";i:99;s:29:\"comments-title/editor.min.css\";i:100;s:23:\"comments/editor-rtl.css\";i:101;s:27:\"comments/editor-rtl.min.css\";i:102;s:19:\"comments/editor.css\";i:103;s:23:\"comments/editor.min.css\";i:104;s:22:\"comments/style-rtl.css\";i:105;s:26:\"comments/style-rtl.min.css\";i:106;s:18:\"comments/style.css\";i:107;s:22:\"comments/style.min.css\";i:108;s:20:\"cover/editor-rtl.css\";i:109;s:24:\"cover/editor-rtl.min.css\";i:110;s:16:\"cover/editor.css\";i:111;s:20:\"cover/editor.min.css\";i:112;s:19:\"cover/style-rtl.css\";i:113;s:23:\"cover/style-rtl.min.css\";i:114;s:15:\"cover/style.css\";i:115;s:19:\"cover/style.min.css\";i:116;s:22:\"details/editor-rtl.css\";i:117;s:26:\"details/editor-rtl.min.css\";i:118;s:18:\"details/editor.css\";i:119;s:22:\"details/editor.min.css\";i:120;s:21:\"details/style-rtl.css\";i:121;s:25:\"details/style-rtl.min.css\";i:122;s:17:\"details/style.css\";i:123;s:21:\"details/style.min.css\";i:124;s:20:\"embed/editor-rtl.css\";i:125;s:24:\"embed/editor-rtl.min.css\";i:126;s:16:\"embed/editor.css\";i:127;s:20:\"embed/editor.min.css\";i:128;s:19:\"embed/style-rtl.css\";i:129;s:23:\"embed/style-rtl.min.css\";i:130;s:15:\"embed/style.css\";i:131;s:19:\"embed/style.min.css\";i:132;s:19:\"embed/theme-rtl.css\";i:133;s:23:\"embed/theme-rtl.min.css\";i:134;s:15:\"embed/theme.css\";i:135;s:19:\"embed/theme.min.css\";i:136;s:19:\"file/editor-rtl.css\";i:137;s:23:\"file/editor-rtl.min.css\";i:138;s:15:\"file/editor.css\";i:139;s:19:\"file/editor.min.css\";i:140;s:18:\"file/style-rtl.css\";i:141;s:22:\"file/style-rtl.min.css\";i:142;s:14:\"file/style.css\";i:143;s:18:\"file/style.min.css\";i:144;s:23:\"footnotes/style-rtl.css\";i:145;s:27:\"footnotes/style-rtl.min.css\";i:146;s:19:\"footnotes/style.css\";i:147;s:23:\"footnotes/style.min.css\";i:148;s:23:\"freeform/editor-rtl.css\";i:149;s:27:\"freeform/editor-rtl.min.css\";i:150;s:19:\"freeform/editor.css\";i:151;s:23:\"freeform/editor.min.css\";i:152;s:22:\"gallery/editor-rtl.css\";i:153;s:26:\"gallery/editor-rtl.min.css\";i:154;s:18:\"gallery/editor.css\";i:155;s:22:\"gallery/editor.min.css\";i:156;s:21:\"gallery/style-rtl.css\";i:157;s:25:\"gallery/style-rtl.min.css\";i:158;s:17:\"gallery/style.css\";i:159;s:21:\"gallery/style.min.css\";i:160;s:21:\"gallery/theme-rtl.css\";i:161;s:25:\"gallery/theme-rtl.min.css\";i:162;s:17:\"gallery/theme.css\";i:163;s:21:\"gallery/theme.min.css\";i:164;s:20:\"group/editor-rtl.css\";i:165;s:24:\"group/editor-rtl.min.css\";i:166;s:16:\"group/editor.css\";i:167;s:20:\"group/editor.min.css\";i:168;s:19:\"group/style-rtl.css\";i:169;s:23:\"group/style-rtl.min.css\";i:170;s:15:\"group/style.css\";i:171;s:19:\"group/style.min.css\";i:172;s:19:\"group/theme-rtl.css\";i:173;s:23:\"group/theme-rtl.min.css\";i:174;s:15:\"group/theme.css\";i:175;s:19:\"group/theme.min.css\";i:176;s:21:\"heading/style-rtl.css\";i:177;s:25:\"heading/style-rtl.min.css\";i:178;s:17:\"heading/style.css\";i:179;s:21:\"heading/style.min.css\";i:180;s:19:\"html/editor-rtl.css\";i:181;s:23:\"html/editor-rtl.min.css\";i:182;s:15:\"html/editor.css\";i:183;s:19:\"html/editor.min.css\";i:184;s:20:\"image/editor-rtl.css\";i:185;s:24:\"image/editor-rtl.min.css\";i:186;s:16:\"image/editor.css\";i:187;s:20:\"image/editor.min.css\";i:188;s:19:\"image/style-rtl.css\";i:189;s:23:\"image/style-rtl.min.css\";i:190;s:15:\"image/style.css\";i:191;s:19:\"image/style.min.css\";i:192;s:19:\"image/theme-rtl.css\";i:193;s:23:\"image/theme-rtl.min.css\";i:194;s:15:\"image/theme.css\";i:195;s:19:\"image/theme.min.css\";i:196;s:29:\"latest-comments/style-rtl.css\";i:197;s:33:\"latest-comments/style-rtl.min.css\";i:198;s:25:\"latest-comments/style.css\";i:199;s:29:\"latest-comments/style.min.css\";i:200;s:27:\"latest-posts/editor-rtl.css\";i:201;s:31:\"latest-posts/editor-rtl.min.css\";i:202;s:23:\"latest-posts/editor.css\";i:203;s:27:\"latest-posts/editor.min.css\";i:204;s:26:\"latest-posts/style-rtl.css\";i:205;s:30:\"latest-posts/style-rtl.min.css\";i:206;s:22:\"latest-posts/style.css\";i:207;s:26:\"latest-posts/style.min.css\";i:208;s:18:\"list/style-rtl.css\";i:209;s:22:\"list/style-rtl.min.css\";i:210;s:14:\"list/style.css\";i:211;s:18:\"list/style.min.css\";i:212;s:25:\"media-text/editor-rtl.css\";i:213;s:29:\"media-text/editor-rtl.min.css\";i:214;s:21:\"media-text/editor.css\";i:215;s:25:\"media-text/editor.min.css\";i:216;s:24:\"media-text/style-rtl.css\";i:217;s:28:\"media-text/style-rtl.min.css\";i:218;s:20:\"media-text/style.css\";i:219;s:24:\"media-text/style.min.css\";i:220;s:19:\"more/editor-rtl.css\";i:221;s:23:\"more/editor-rtl.min.css\";i:222;s:15:\"more/editor.css\";i:223;s:19:\"more/editor.min.css\";i:224;s:30:\"navigation-link/editor-rtl.css\";i:225;s:34:\"navigation-link/editor-rtl.min.css\";i:226;s:26:\"navigation-link/editor.css\";i:227;s:30:\"navigation-link/editor.min.css\";i:228;s:29:\"navigation-link/style-rtl.css\";i:229;s:33:\"navigation-link/style-rtl.min.css\";i:230;s:25:\"navigation-link/style.css\";i:231;s:29:\"navigation-link/style.min.css\";i:232;s:33:\"navigation-submenu/editor-rtl.css\";i:233;s:37:\"navigation-submenu/editor-rtl.min.css\";i:234;s:29:\"navigation-submenu/editor.css\";i:235;s:33:\"navigation-submenu/editor.min.css\";i:236;s:25:\"navigation/editor-rtl.css\";i:237;s:29:\"navigation/editor-rtl.min.css\";i:238;s:21:\"navigation/editor.css\";i:239;s:25:\"navigation/editor.min.css\";i:240;s:24:\"navigation/style-rtl.css\";i:241;s:28:\"navigation/style-rtl.min.css\";i:242;s:20:\"navigation/style.css\";i:243;s:24:\"navigation/style.min.css\";i:244;s:23:\"nextpage/editor-rtl.css\";i:245;s:27:\"nextpage/editor-rtl.min.css\";i:246;s:19:\"nextpage/editor.css\";i:247;s:23:\"nextpage/editor.min.css\";i:248;s:24:\"page-list/editor-rtl.css\";i:249;s:28:\"page-list/editor-rtl.min.css\";i:250;s:20:\"page-list/editor.css\";i:251;s:24:\"page-list/editor.min.css\";i:252;s:23:\"page-list/style-rtl.css\";i:253;s:27:\"page-list/style-rtl.min.css\";i:254;s:19:\"page-list/style.css\";i:255;s:23:\"page-list/style.min.css\";i:256;s:24:\"paragraph/editor-rtl.css\";i:257;s:28:\"paragraph/editor-rtl.min.css\";i:258;s:20:\"paragraph/editor.css\";i:259;s:24:\"paragraph/editor.min.css\";i:260;s:23:\"paragraph/style-rtl.css\";i:261;s:27:\"paragraph/style-rtl.min.css\";i:262;s:19:\"paragraph/style.css\";i:263;s:23:\"paragraph/style.min.css\";i:264;s:25:\"post-author/style-rtl.css\";i:265;s:29:\"post-author/style-rtl.min.css\";i:266;s:21:\"post-author/style.css\";i:267;s:25:\"post-author/style.min.css\";i:268;s:33:\"post-comments-form/editor-rtl.css\";i:269;s:37:\"post-comments-form/editor-rtl.min.css\";i:270;s:29:\"post-comments-form/editor.css\";i:271;s:33:\"post-comments-form/editor.min.css\";i:272;s:32:\"post-comments-form/style-rtl.css\";i:273;s:36:\"post-comments-form/style-rtl.min.css\";i:274;s:28:\"post-comments-form/style.css\";i:275;s:32:\"post-comments-form/style.min.css\";i:276;s:27:\"post-content/editor-rtl.css\";i:277;s:31:\"post-content/editor-rtl.min.css\";i:278;s:23:\"post-content/editor.css\";i:279;s:27:\"post-content/editor.min.css\";i:280;s:23:\"post-date/style-rtl.css\";i:281;s:27:\"post-date/style-rtl.min.css\";i:282;s:19:\"post-date/style.css\";i:283;s:23:\"post-date/style.min.css\";i:284;s:27:\"post-excerpt/editor-rtl.css\";i:285;s:31:\"post-excerpt/editor-rtl.min.css\";i:286;s:23:\"post-excerpt/editor.css\";i:287;s:27:\"post-excerpt/editor.min.css\";i:288;s:26:\"post-excerpt/style-rtl.css\";i:289;s:30:\"post-excerpt/style-rtl.min.css\";i:290;s:22:\"post-excerpt/style.css\";i:291;s:26:\"post-excerpt/style.min.css\";i:292;s:34:\"post-featured-image/editor-rtl.css\";i:293;s:38:\"post-featured-image/editor-rtl.min.css\";i:294;s:30:\"post-featured-image/editor.css\";i:295;s:34:\"post-featured-image/editor.min.css\";i:296;s:33:\"post-featured-image/style-rtl.css\";i:297;s:37:\"post-featured-image/style-rtl.min.css\";i:298;s:29:\"post-featured-image/style.css\";i:299;s:33:\"post-featured-image/style.min.css\";i:300;s:34:\"post-navigation-link/style-rtl.css\";i:301;s:38:\"post-navigation-link/style-rtl.min.css\";i:302;s:30:\"post-navigation-link/style.css\";i:303;s:34:\"post-navigation-link/style.min.css\";i:304;s:28:\"post-template/editor-rtl.css\";i:305;s:32:\"post-template/editor-rtl.min.css\";i:306;s:24:\"post-template/editor.css\";i:307;s:28:\"post-template/editor.min.css\";i:308;s:27:\"post-template/style-rtl.css\";i:309;s:31:\"post-template/style-rtl.min.css\";i:310;s:23:\"post-template/style.css\";i:311;s:27:\"post-template/style.min.css\";i:312;s:24:\"post-terms/style-rtl.css\";i:313;s:28:\"post-terms/style-rtl.min.css\";i:314;s:20:\"post-terms/style.css\";i:315;s:24:\"post-terms/style.min.css\";i:316;s:24:\"post-title/style-rtl.css\";i:317;s:28:\"post-title/style-rtl.min.css\";i:318;s:20:\"post-title/style.css\";i:319;s:24:\"post-title/style.min.css\";i:320;s:26:\"preformatted/style-rtl.css\";i:321;s:30:\"preformatted/style-rtl.min.css\";i:322;s:22:\"preformatted/style.css\";i:323;s:26:\"preformatted/style.min.css\";i:324;s:24:\"pullquote/editor-rtl.css\";i:325;s:28:\"pullquote/editor-rtl.min.css\";i:326;s:20:\"pullquote/editor.css\";i:327;s:24:\"pullquote/editor.min.css\";i:328;s:23:\"pullquote/style-rtl.css\";i:329;s:27:\"pullquote/style-rtl.min.css\";i:330;s:19:\"pullquote/style.css\";i:331;s:23:\"pullquote/style.min.css\";i:332;s:23:\"pullquote/theme-rtl.css\";i:333;s:27:\"pullquote/theme-rtl.min.css\";i:334;s:19:\"pullquote/theme.css\";i:335;s:23:\"pullquote/theme.min.css\";i:336;s:39:\"query-pagination-numbers/editor-rtl.css\";i:337;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:338;s:35:\"query-pagination-numbers/editor.css\";i:339;s:39:\"query-pagination-numbers/editor.min.css\";i:340;s:31:\"query-pagination/editor-rtl.css\";i:341;s:35:\"query-pagination/editor-rtl.min.css\";i:342;s:27:\"query-pagination/editor.css\";i:343;s:31:\"query-pagination/editor.min.css\";i:344;s:30:\"query-pagination/style-rtl.css\";i:345;s:34:\"query-pagination/style-rtl.min.css\";i:346;s:26:\"query-pagination/style.css\";i:347;s:30:\"query-pagination/style.min.css\";i:348;s:25:\"query-title/style-rtl.css\";i:349;s:29:\"query-title/style-rtl.min.css\";i:350;s:21:\"query-title/style.css\";i:351;s:25:\"query-title/style.min.css\";i:352;s:20:\"query/editor-rtl.css\";i:353;s:24:\"query/editor-rtl.min.css\";i:354;s:16:\"query/editor.css\";i:355;s:20:\"query/editor.min.css\";i:356;s:19:\"quote/style-rtl.css\";i:357;s:23:\"quote/style-rtl.min.css\";i:358;s:15:\"quote/style.css\";i:359;s:19:\"quote/style.min.css\";i:360;s:19:\"quote/theme-rtl.css\";i:361;s:23:\"quote/theme-rtl.min.css\";i:362;s:15:\"quote/theme.css\";i:363;s:19:\"quote/theme.min.css\";i:364;s:23:\"read-more/style-rtl.css\";i:365;s:27:\"read-more/style-rtl.min.css\";i:366;s:19:\"read-more/style.css\";i:367;s:23:\"read-more/style.min.css\";i:368;s:18:\"rss/editor-rtl.css\";i:369;s:22:\"rss/editor-rtl.min.css\";i:370;s:14:\"rss/editor.css\";i:371;s:18:\"rss/editor.min.css\";i:372;s:17:\"rss/style-rtl.css\";i:373;s:21:\"rss/style-rtl.min.css\";i:374;s:13:\"rss/style.css\";i:375;s:17:\"rss/style.min.css\";i:376;s:21:\"search/editor-rtl.css\";i:377;s:25:\"search/editor-rtl.min.css\";i:378;s:17:\"search/editor.css\";i:379;s:21:\"search/editor.min.css\";i:380;s:20:\"search/style-rtl.css\";i:381;s:24:\"search/style-rtl.min.css\";i:382;s:16:\"search/style.css\";i:383;s:20:\"search/style.min.css\";i:384;s:20:\"search/theme-rtl.css\";i:385;s:24:\"search/theme-rtl.min.css\";i:386;s:16:\"search/theme.css\";i:387;s:20:\"search/theme.min.css\";i:388;s:24:\"separator/editor-rtl.css\";i:389;s:28:\"separator/editor-rtl.min.css\";i:390;s:20:\"separator/editor.css\";i:391;s:24:\"separator/editor.min.css\";i:392;s:23:\"separator/style-rtl.css\";i:393;s:27:\"separator/style-rtl.min.css\";i:394;s:19:\"separator/style.css\";i:395;s:23:\"separator/style.min.css\";i:396;s:23:\"separator/theme-rtl.css\";i:397;s:27:\"separator/theme-rtl.min.css\";i:398;s:19:\"separator/theme.css\";i:399;s:23:\"separator/theme.min.css\";i:400;s:24:\"shortcode/editor-rtl.css\";i:401;s:28:\"shortcode/editor-rtl.min.css\";i:402;s:20:\"shortcode/editor.css\";i:403;s:24:\"shortcode/editor.min.css\";i:404;s:24:\"site-logo/editor-rtl.css\";i:405;s:28:\"site-logo/editor-rtl.min.css\";i:406;s:20:\"site-logo/editor.css\";i:407;s:24:\"site-logo/editor.min.css\";i:408;s:23:\"site-logo/style-rtl.css\";i:409;s:27:\"site-logo/style-rtl.min.css\";i:410;s:19:\"site-logo/style.css\";i:411;s:23:\"site-logo/style.min.css\";i:412;s:27:\"site-tagline/editor-rtl.css\";i:413;s:31:\"site-tagline/editor-rtl.min.css\";i:414;s:23:\"site-tagline/editor.css\";i:415;s:27:\"site-tagline/editor.min.css\";i:416;s:25:\"site-title/editor-rtl.css\";i:417;s:29:\"site-title/editor-rtl.min.css\";i:418;s:21:\"site-title/editor.css\";i:419;s:25:\"site-title/editor.min.css\";i:420;s:24:\"site-title/style-rtl.css\";i:421;s:28:\"site-title/style-rtl.min.css\";i:422;s:20:\"site-title/style.css\";i:423;s:24:\"site-title/style.min.css\";i:424;s:26:\"social-link/editor-rtl.css\";i:425;s:30:\"social-link/editor-rtl.min.css\";i:426;s:22:\"social-link/editor.css\";i:427;s:26:\"social-link/editor.min.css\";i:428;s:27:\"social-links/editor-rtl.css\";i:429;s:31:\"social-links/editor-rtl.min.css\";i:430;s:23:\"social-links/editor.css\";i:431;s:27:\"social-links/editor.min.css\";i:432;s:26:\"social-links/style-rtl.css\";i:433;s:30:\"social-links/style-rtl.min.css\";i:434;s:22:\"social-links/style.css\";i:435;s:26:\"social-links/style.min.css\";i:436;s:21:\"spacer/editor-rtl.css\";i:437;s:25:\"spacer/editor-rtl.min.css\";i:438;s:17:\"spacer/editor.css\";i:439;s:21:\"spacer/editor.min.css\";i:440;s:20:\"spacer/style-rtl.css\";i:441;s:24:\"spacer/style-rtl.min.css\";i:442;s:16:\"spacer/style.css\";i:443;s:20:\"spacer/style.min.css\";i:444;s:20:\"table/editor-rtl.css\";i:445;s:24:\"table/editor-rtl.min.css\";i:446;s:16:\"table/editor.css\";i:447;s:20:\"table/editor.min.css\";i:448;s:19:\"table/style-rtl.css\";i:449;s:23:\"table/style-rtl.min.css\";i:450;s:15:\"table/style.css\";i:451;s:19:\"table/style.min.css\";i:452;s:19:\"table/theme-rtl.css\";i:453;s:23:\"table/theme-rtl.min.css\";i:454;s:15:\"table/theme.css\";i:455;s:19:\"table/theme.min.css\";i:456;s:23:\"tag-cloud/style-rtl.css\";i:457;s:27:\"tag-cloud/style-rtl.min.css\";i:458;s:19:\"tag-cloud/style.css\";i:459;s:23:\"tag-cloud/style.min.css\";i:460;s:28:\"template-part/editor-rtl.css\";i:461;s:32:\"template-part/editor-rtl.min.css\";i:462;s:24:\"template-part/editor.css\";i:463;s:28:\"template-part/editor.min.css\";i:464;s:27:\"template-part/theme-rtl.css\";i:465;s:31:\"template-part/theme-rtl.min.css\";i:466;s:23:\"template-part/theme.css\";i:467;s:27:\"template-part/theme.min.css\";i:468;s:30:\"term-description/style-rtl.css\";i:469;s:34:\"term-description/style-rtl.min.css\";i:470;s:26:\"term-description/style.css\";i:471;s:30:\"term-description/style.min.css\";i:472;s:27:\"text-columns/editor-rtl.css\";i:473;s:31:\"text-columns/editor-rtl.min.css\";i:474;s:23:\"text-columns/editor.css\";i:475;s:27:\"text-columns/editor.min.css\";i:476;s:26:\"text-columns/style-rtl.css\";i:477;s:30:\"text-columns/style-rtl.min.css\";i:478;s:22:\"text-columns/style.css\";i:479;s:26:\"text-columns/style.min.css\";i:480;s:19:\"verse/style-rtl.css\";i:481;s:23:\"verse/style-rtl.min.css\";i:482;s:15:\"verse/style.css\";i:483;s:19:\"verse/style.min.css\";i:484;s:20:\"video/editor-rtl.css\";i:485;s:24:\"video/editor-rtl.min.css\";i:486;s:16:\"video/editor.css\";i:487;s:20:\"video/editor.min.css\";i:488;s:19:\"video/style-rtl.css\";i:489;s:23:\"video/style-rtl.min.css\";i:490;s:15:\"video/style.css\";i:491;s:19:\"video/style.min.css\";i:492;s:19:\"video/theme-rtl.css\";i:493;s:23:\"video/theme-rtl.min.css\";i:494;s:15:\"video/theme.css\";i:495;s:19:\"video/theme.min.css\";}}','on');
INSERT INTO `wp_options` VALUES (126,'recovery_keys','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (127,'theme_mods_twentytwentyfour','a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1726061989;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}','off');
INSERT INTO `wp_options` VALUES (139,'can_compress_scripts','1','on');
INSERT INTO `wp_options` VALUES (152,'finished_updating_comment_type','1','auto');
INSERT INTO `wp_options` VALUES (161,'auto_core_update_notified','a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:24:\"dev-email@wpengine.local\";s:7:\"version\";s:5:\"6.6.2\";s:9:\"timestamp\";i:1726061446;}','off');
INSERT INTO `wp_options` VALUES (165,'WPLANG','ja','auto');
INSERT INTO `wp_options` VALUES (166,'new_admin_email','dev-email@wpengine.local','auto');
INSERT INTO `wp_options` VALUES (169,'current_theme','OHA!','auto');
INSERT INTO `wp_options` VALUES (170,'theme_mods_oha','a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"global\";i:2;s:6:\"drawer\";i:3;}s:18:\"custom_css_post_id\";i:-1;}','on');
INSERT INTO `wp_options` VALUES (171,'theme_switched','','auto');
INSERT INTO `wp_options` VALUES (184,'_transient_health-check-site-status-result','{\"good\":15,\"recommended\":4,\"critical\":1}','on');
INSERT INTO `wp_options` VALUES (207,'recovery_mode_email_last_sent','1726414702','auto');
INSERT INTO `wp_options` VALUES (227,'nav_menu_options','a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}','auto');
INSERT INTO `wp_options` VALUES (339,'_site_transient_wp_plugin_dependencies_plugin_data','a:0:{}','off');
INSERT INTO `wp_options` VALUES (341,'recently_activated','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (354,'duplicate_post_show_notice','0','off');
INSERT INTO `wp_options` VALUES (355,'duplicate_post_copytitle','1','auto');
INSERT INTO `wp_options` VALUES (356,'duplicate_post_copydate','0','auto');
INSERT INTO `wp_options` VALUES (357,'duplicate_post_copystatus','0','auto');
INSERT INTO `wp_options` VALUES (358,'duplicate_post_copyslug','0','auto');
INSERT INTO `wp_options` VALUES (359,'duplicate_post_copyexcerpt','1','auto');
INSERT INTO `wp_options` VALUES (360,'duplicate_post_copycontent','1','auto');
INSERT INTO `wp_options` VALUES (361,'duplicate_post_copythumbnail','1','auto');
INSERT INTO `wp_options` VALUES (362,'duplicate_post_copytemplate','1','auto');
INSERT INTO `wp_options` VALUES (363,'duplicate_post_copyformat','1','auto');
INSERT INTO `wp_options` VALUES (364,'duplicate_post_copyauthor','0','auto');
INSERT INTO `wp_options` VALUES (365,'duplicate_post_copypassword','0','auto');
INSERT INTO `wp_options` VALUES (366,'duplicate_post_copyattachments','0','auto');
INSERT INTO `wp_options` VALUES (367,'duplicate_post_copychildren','0','auto');
INSERT INTO `wp_options` VALUES (368,'duplicate_post_copycomments','0','auto');
INSERT INTO `wp_options` VALUES (369,'duplicate_post_copymenuorder','1','auto');
INSERT INTO `wp_options` VALUES (370,'duplicate_post_taxonomies_blacklist','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (371,'duplicate_post_blacklist','','auto');
INSERT INTO `wp_options` VALUES (372,'duplicate_post_types_enabled','a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}','auto');
INSERT INTO `wp_options` VALUES (373,'duplicate_post_show_original_column','0','auto');
INSERT INTO `wp_options` VALUES (374,'duplicate_post_show_original_in_post_states','0','auto');
INSERT INTO `wp_options` VALUES (375,'duplicate_post_show_original_meta_box','0','auto');
INSERT INTO `wp_options` VALUES (376,'duplicate_post_show_link','a:3:{s:9:\"new_draft\";s:1:\"1\";s:5:\"clone\";s:1:\"1\";s:17:\"rewrite_republish\";s:1:\"1\";}','auto');
INSERT INTO `wp_options` VALUES (377,'duplicate_post_show_link_in','a:4:{s:3:\"row\";s:1:\"1\";s:8:\"adminbar\";s:1:\"1\";s:9:\"submitbox\";s:1:\"1\";s:11:\"bulkactions\";s:1:\"1\";}','auto');
INSERT INTO `wp_options` VALUES (378,'duplicate_post_version','4.5','auto');
INSERT INTO `wp_options` VALUES (383,'cptui_new_install','false','auto');
INSERT INTO `wp_options` VALUES (384,'cptui_post_types','a:6:{s:4:\"case\";a:34:{s:4:\"name\";s:4:\"case\";s:5:\"label\";s:12:\"導入実績\";s:14:\"singular_label\";s:12:\"導入実績\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:10:\"how_to_use\";a:34:{s:4:\"name\";s:10:\"how_to_use\";s:5:\"label\";s:9:\"使い方\";s:14:\"singular_label\";s:9:\"使い方\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:1:{i:0;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:5:\"merit\";a:34:{s:4:\"name\";s:5:\"merit\";s:5:\"label\";s:12:\"メリット\";s:14:\"singular_label\";s:12:\"メリット\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:1:{i:0;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:7:\"compare\";a:34:{s:4:\"name\";s:7:\"compare\";s:5:\"label\";s:30:\"他のサービスとの違い\";s:14:\"singular_label\";s:30:\"他のサービスとの違い\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:1:{i:0;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:2:\"qa\";a:34:{s:4:\"name\";s:2:\"qa\";s:5:\"label\";s:7:\"Q&amp;A\";s:14:\"singular_label\";s:7:\"Q&amp;A\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:1:{i:0;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:7:\"gallery\";a:34:{s:4:\"name\";s:7:\"gallery\";s:5:\"label\";s:15:\"ギャラリー\";s:14:\"singular_label\";s:15:\"ギャラリー\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:1:{i:0;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:30:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:12:\"item_trashed\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}','auto');
INSERT INTO `wp_options` VALUES (393,'acf_first_activated_version','6.3.6','on');
INSERT INTO `wp_options` VALUES (394,'acf_site_health','{\"version\":\"6.3.6\",\"plugin_type\":\"Free\",\"wp_version\":\"6.6.2\",\"mysql_version\":\"8.0.16\",\"is_multisite\":false,\"active_theme\":{\"name\":\"oha\",\"version\":false,\"theme_uri\":false,\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.3.6\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"all-in-one-wp-migration\\/all-in-one-wp-migration.php\":{\"name\":\"All-in-One WP Migration\",\"version\":\"7.86\",\"plugin_uri\":\"https:\\/\\/servmask.com\\/\"},\"contact-form-7\\/wp-contact-form-7.php\":{\"name\":\"Contact Form 7\",\"version\":\"5.9.8\",\"plugin_uri\":\"https:\\/\\/contactform7.com\\/\"},\"custom-post-type-ui\\/custom-post-type-ui.php\":{\"name\":\"Custom Post Type UI\",\"version\":\"1.17.1\",\"plugin_uri\":\"https:\\/\\/github.com\\/WebDevStudios\\/custom-post-type-ui\\/\"},\"show-current-template\\/show-current-template.php\":{\"name\":\"Show Current Template\",\"version\":\"0.5.2\",\"plugin_uri\":\"https:\\/\\/wp.tekapo.com\\/\"},\"duplicate-post\\/duplicate-post.php\":{\"name\":\"Yoast Duplicate Post\",\"version\":\"4.5\",\"plugin_uri\":\"https:\\/\\/yoast.com\\/wordpress\\/plugins\\/duplicate-post\\/\"}},\"ui_field_groups\":\"5\",\"php_field_groups\":\"0\",\"json_field_groups\":\"0\",\"rest_field_groups\":\"0\",\"number_of_fields_by_type\":{\"number\":2,\"image\":3,\"textarea\":8,\"text\":1,\"true_false\":1},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"10\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"4\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1726291046,\"event_first_created_field_group\":1726291421,\"event_first_created_taxonomy\":1726303758,\"last_updated\":1729688694}','off');
INSERT INTO `wp_options` VALUES (396,'acf_version','6.3.6','auto');
INSERT INTO `wp_options` VALUES (417,'category_children','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (423,'wp_calendar_block_has_published_posts','1','auto');
INSERT INTO `wp_options` VALUES (454,'cptui_taxonomies','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (587,'ai1wm_secret_key','DyGqFZLzWLgc','auto');
INSERT INTO `wp_options` VALUES (588,'ai1wm_status','a:2:{s:4:\"type\";s:8:\"download\";s:7:\"message\";s:281:\"<a href=\"http://oha.local/wp-content/ai1wm-backups/oha-local-20241018-233046-l03gfk.wpress\" class=\"ai1wm-button-green ai1wm-emphasize ai1wm-button-download\" title=\"oha.local\" download=\"oha-local-20241018-233046-l03gfk.wpress\"><span>Download oha.local</span><em>Size: 62 MB</em></a>\";}','auto');
INSERT INTO `wp_options` VALUES (594,'_site_transient_ai1wm_last_check_for_updates','1729688690','off');
INSERT INTO `wp_options` VALUES (595,'ai1wm_updater','a:0:{}','auto');
INSERT INTO `wp_options` VALUES (1014,'wpcf7','a:2:{s:7:\"version\";s:5:\"5.9.8\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1726906990;s:7:\"version\";s:5:\"5.9.8\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}','auto');
INSERT INTO `wp_options` VALUES (1310,'secret_key','2:0{~`!GtV!XJ$./0?UgROA-`Yj,Q1fdmc]K<.p^(0(b|Zqs2^rBb$/Nj/ ^vJ~8','off');
INSERT INTO `wp_options` VALUES (1636,'_site_transient_timeout_php_check_1a31e573deff9bf63840fe4b3ef8afb9','1729895424','off');
INSERT INTO `wp_options` VALUES (1637,'_site_transient_php_check_1a31e573deff9bf63840fe4b3ef8afb9','a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}','off');
INSERT INTO `wp_options` VALUES (1638,'_site_transient_timeout_browser_7f43958fcd8b0148374f10f8a0c96f26','1729895439','off');
INSERT INTO `wp_options` VALUES (1639,'_site_transient_browser_7f43958fcd8b0148374f10f8a0c96f26','a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"124.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}','off');
INSERT INTO `wp_options` VALUES (1665,'_site_transient_timeout_wp_theme_files_patterns-9665b793d9d825e6d0fa15d1d3e258be','1729690490','off');
INSERT INTO `wp_options` VALUES (1666,'_site_transient_wp_theme_files_patterns-9665b793d9d825e6d0fa15d1d3e258be','a:2:{s:7:\"version\";b:0;s:8:\"patterns\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1668,'_site_transient_timeout_theme_roots','1729690491','off');
INSERT INTO `wp_options` VALUES (1669,'_site_transient_theme_roots','a:4:{s:7:\"oha/css\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}','off');
INSERT INTO `wp_options` VALUES (1671,'_site_transient_update_core','O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.6.2.zip\";s:6:\"locale\";s:2:\"ja\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:62:\"https://downloads.wordpress.org/release/ja/wordpress-6.6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.6.2\";s:7:\"version\";s:5:\"6.6.2\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.4\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1729688692;s:15:\"version_checked\";s:5:\"6.6.2\";s:12:\"translations\";a:0:{}}','off');
INSERT INTO `wp_options` VALUES (1672,'_site_transient_update_themes','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1729688693;s:7:\"checked\";a:3:{s:16:\"twentytwentyfour\";s:3:\"1.2\";s:17:\"twentytwentythree\";s:3:\"1.5\";s:15:\"twentytwentytwo\";s:3:\"1.8\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.2\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.2.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.5.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.8.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:2:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:17:\"twentytwentythree\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2022-10-26 09:20:28\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentytwentythree/1.5/ja.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentytwo\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"1.8\";s:7:\"updated\";s:19:\"2023-03-31 13:24:57\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwentytwo/1.8/ja.zip\";s:10:\"autoupdate\";b:1;}}}','off');
INSERT INTO `wp_options` VALUES (1673,'_site_transient_update_plugins','O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1729688693;s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.3.9\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.3.9.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3167679\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3167679\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3167679\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.0\";s:6:\"tested\";s:5:\"6.6.2\";s:12:\"requires_php\";s:3:\"7.4\";s:16:\"requires_plugins\";a:0:{}}s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:37:\"w.org/plugins/all-in-one-wp-migration\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:6:\"plugin\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:11:\"new_version\";s:4:\"7.87\";s:3:\"url\";s:54:\"https://wordpress.org/plugins/all-in-one-wp-migration/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/all-in-one-wp-migration.7.87.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-256x256.png?rev=2458334\";s:2:\"1x\";s:76:\"https://ps.w.org/all-in-one-wp-migration/assets/icon-128x128.png?rev=2458334\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-1544x500.png?rev=3173932\";s:2:\"1x\";s:78:\"https://ps.w.org/all-in-one-wp-migration/assets/banner-772x250.png?rev=3173932\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"3.3\";s:6:\"tested\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"5.3\";s:16:\"requires_plugins\";a:0:{}}}s:12:\"translations\";a:6:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"6.3.6\";s:7:\"updated\";s:19:\"2024-03-21 11:24:49\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/translation/plugin/advanced-custom-fields/6.3.6/ja.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:23:\"all-in-one-wp-migration\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:4:\"7.86\";s:7:\"updated\";s:19:\"2024-10-10 11:55:29\";s:7:\"package\";s:86:\"https://downloads.wordpress.org/translation/plugin/all-in-one-wp-migration/7.86/ja.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"contact-form-7\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.9.8\";s:7:\"updated\";s:19:\"2024-07-17 08:16:16\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/contact-form-7/5.9.8/ja.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:6:\"1.17.1\";s:7:\"updated\";s:19:\"2024-04-09 11:16:15\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/translation/plugin/custom-post-type-ui/1.17.1/ja.zip\";s:10:\"autoupdate\";b:1;}i:4;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:21:\"show-current-template\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"0.5.2\";s:7:\"updated\";s:19:\"2023-08-26 01:19:55\";s:7:\"package\";s:85:\"https://downloads.wordpress.org/translation/plugin/show-current-template/0.5.2/ja.zip\";s:10:\"autoupdate\";b:1;}i:5;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:14:\"duplicate-post\";s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"4.5\";s:7:\"updated\";s:19:\"2024-05-17 13:13:33\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/plugin/duplicate-post/4.5/ja.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:4:{s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.9.8\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.9.8.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.17.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.17.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";}s:47:\"show-current-template/show-current-template.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:35:\"w.org/plugins/show-current-template\";s:4:\"slug\";s:21:\"show-current-template\";s:6:\"plugin\";s:47:\"show-current-template/show-current-template.php\";s:11:\"new_version\";s:5:\"0.5.2\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/show-current-template/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/show-current-template.0.5.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";s:3:\"svg\";s:66:\"https://ps.w.org/show-current-template/assets/icon.svg?rev=2955632\";}s:7:\"banners\";a:0:{}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";}s:33:\"duplicate-post/duplicate-post.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:28:\"w.org/plugins/duplicate-post\";s:4:\"slug\";s:14:\"duplicate-post\";s:6:\"plugin\";s:33:\"duplicate-post/duplicate-post.php\";s:11:\"new_version\";s:3:\"4.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/duplicate-post/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/duplicate-post.4.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-256x256.png?rev=2336666\";s:2:\"1x\";s:67:\"https://ps.w.org/duplicate-post/assets/icon-128x128.png?rev=2336666\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/duplicate-post/assets/banner-1544x500.png?rev=2336666\";s:2:\"1x\";s:69:\"https://ps.w.org/duplicate-post/assets/banner-772x250.png?rev=2336666\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.3.6\";s:51:\"all-in-one-wp-migration/all-in-one-wp-migration.php\";s:4:\"7.86\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.9.8\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.17.1\";s:47:\"show-current-template/show-current-template.php\";s:5:\"0.5.2\";s:33:\"duplicate-post/duplicate-post.php\";s:3:\"4.5\";}}','off');
/*!40000 ALTER TABLE `wp_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=544 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_postmeta`
--

LOCK TABLES `wp_postmeta` WRITE;
/*!40000 ALTER TABLE `wp_postmeta` DISABLE KEYS */;
INSERT INTO `wp_postmeta` VALUES (1,2,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (2,3,'_wp_page_template','default');
INSERT INTO `wp_postmeta` VALUES (3,6,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (4,6,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (5,6,'_menu_item_object_id','6');
INSERT INTO `wp_postmeta` VALUES (6,6,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (7,6,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (8,6,'_menu_item_classes','a:1:{i:0;s:11:\"header_link\";}');
INSERT INTO `wp_postmeta` VALUES (9,6,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (10,6,'_menu_item_url','#about');
INSERT INTO `wp_postmeta` VALUES (12,7,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (13,7,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (14,7,'_menu_item_object_id','7');
INSERT INTO `wp_postmeta` VALUES (15,7,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (16,7,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (17,7,'_menu_item_classes','a:1:{i:0;s:11:\"header_link\";}');
INSERT INTO `wp_postmeta` VALUES (18,7,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (19,7,'_menu_item_url','#how-to-use');
INSERT INTO `wp_postmeta` VALUES (21,8,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (22,8,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (23,8,'_menu_item_object_id','8');
INSERT INTO `wp_postmeta` VALUES (24,8,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (25,8,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (26,8,'_menu_item_classes','a:1:{i:0;s:11:\"header_link\";}');
INSERT INTO `wp_postmeta` VALUES (27,8,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (28,8,'_menu_item_url','#merit');
INSERT INTO `wp_postmeta` VALUES (39,10,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (40,10,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (41,10,'_menu_item_object_id','10');
INSERT INTO `wp_postmeta` VALUES (42,10,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (43,10,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (44,10,'_menu_item_classes','a:1:{i:0;s:19:\"drawer-content_link\";}');
INSERT INTO `wp_postmeta` VALUES (45,10,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (46,10,'_menu_item_url','#about');
INSERT INTO `wp_postmeta` VALUES (48,11,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (49,11,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (50,11,'_menu_item_object_id','11');
INSERT INTO `wp_postmeta` VALUES (51,11,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (52,11,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (53,11,'_menu_item_classes','a:1:{i:0;s:19:\"drawer-content_link\";}');
INSERT INTO `wp_postmeta` VALUES (54,11,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (55,11,'_menu_item_url','#how-to-use');
INSERT INTO `wp_postmeta` VALUES (57,12,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (58,12,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (59,12,'_menu_item_object_id','12');
INSERT INTO `wp_postmeta` VALUES (60,12,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (61,12,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (62,12,'_menu_item_classes','a:1:{i:0;s:19:\"drawer-content_link\";}');
INSERT INTO `wp_postmeta` VALUES (63,12,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (64,12,'_menu_item_url','#merit');
INSERT INTO `wp_postmeta` VALUES (75,14,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (76,14,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (77,14,'_menu_item_object_id','14');
INSERT INTO `wp_postmeta` VALUES (78,14,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (79,14,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (80,14,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (81,14,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (82,14,'_menu_item_url','#contact');
INSERT INTO `wp_postmeta` VALUES (84,15,'_menu_item_type','custom');
INSERT INTO `wp_postmeta` VALUES (85,15,'_menu_item_menu_item_parent','0');
INSERT INTO `wp_postmeta` VALUES (86,15,'_menu_item_object_id','15');
INSERT INTO `wp_postmeta` VALUES (87,15,'_menu_item_object','custom');
INSERT INTO `wp_postmeta` VALUES (88,15,'_menu_item_target','');
INSERT INTO `wp_postmeta` VALUES (89,15,'_menu_item_classes','a:1:{i:0;s:0:\"\";}');
INSERT INTO `wp_postmeta` VALUES (90,15,'_menu_item_xfn','');
INSERT INTO `wp_postmeta` VALUES (91,15,'_menu_item_url','#contact');
INSERT INTO `wp_postmeta` VALUES (97,20,'_wp_attached_file','2024/09/case1-img.png');
INSERT INTO `wp_postmeta` VALUES (98,20,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case1-img.png\";s:8:\"filesize\";i:6806;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case1-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7121;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case1-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (99,20,'_wp_attachment_image_alt','田中おは郎');
INSERT INTO `wp_postmeta` VALUES (106,21,'_edit_lock','1726294082:1');
INSERT INTO `wp_postmeta` VALUES (107,22,'_wp_attached_file','2024/09/case1-img-1.png');
INSERT INTO `wp_postmeta` VALUES (108,22,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:23:\"2024/09/case1-img-1.png\";s:8:\"filesize\";i:6806;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"case1-img-1-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7121;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"case1-img-1-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (109,23,'_edit_lock','1726293955:1');
INSERT INTO `wp_postmeta` VALUES (110,24,'_wp_attached_file','2024/09/case2-img.png');
INSERT INTO `wp_postmeta` VALUES (111,24,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case2-img.png\";s:8:\"filesize\";i:7981;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case2-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7439;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case2-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4098;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (112,25,'_edit_lock','1726293968:1');
INSERT INTO `wp_postmeta` VALUES (113,26,'_wp_attached_file','2024/09/case3-img.png');
INSERT INTO `wp_postmeta` VALUES (114,26,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case3-img.png\";s:8:\"filesize\";i:5639;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case3-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:5059;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case3-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4787;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (115,27,'_edit_lock','1726293987:1');
INSERT INTO `wp_postmeta` VALUES (116,28,'_wp_attached_file','2024/09/case4-img.png');
INSERT INTO `wp_postmeta` VALUES (117,28,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case4-img.png\";s:8:\"filesize\";i:10041;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case4-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8157;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case4-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3194;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (118,29,'_edit_lock','1726294010:1');
INSERT INTO `wp_postmeta` VALUES (119,30,'_wp_attached_file','2024/09/case5-img.png');
INSERT INTO `wp_postmeta` VALUES (120,30,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case5-img.png\";s:8:\"filesize\";i:6135;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case5-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7154;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case5-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2034;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (121,31,'_edit_lock','1726294023:1');
INSERT INTO `wp_postmeta` VALUES (122,32,'_wp_attached_file','2024/09/case6-img.png');
INSERT INTO `wp_postmeta` VALUES (123,32,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case6-img.png\";s:8:\"filesize\";i:5017;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case6-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6861;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case6-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2318;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (124,33,'_edit_lock','1726294038:1');
INSERT INTO `wp_postmeta` VALUES (125,34,'_wp_attached_file','2024/09/case7-img.png');
INSERT INTO `wp_postmeta` VALUES (126,34,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case7-img.png\";s:8:\"filesize\";i:6858;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case7-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6139;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case7-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3135;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (127,35,'_edit_lock','1726294051:1');
INSERT INTO `wp_postmeta` VALUES (128,36,'_wp_attached_file','2024/09/case8-img.png');
INSERT INTO `wp_postmeta` VALUES (129,36,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:21:\"2024/09/case8-img.png\";s:8:\"filesize\";i:5181;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"case8-img-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6789;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"case8-img-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1748;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (130,37,'_wp_attached_file','2024/09/case1-img-2.png');
INSERT INTO `wp_postmeta` VALUES (131,37,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:120;s:4:\"file\";s:23:\"2024/09/case1-img-2.png\";s:8:\"filesize\";i:6806;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"case1-img-2-300x90.png\";s:5:\"width\";i:300;s:6:\"height\";i:90;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7121;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"case1-img-2-150x120.png\";s:5:\"width\";i:150;s:6:\"height\";i:120;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3468;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (132,21,'_thumbnail_id','20');
INSERT INTO `wp_postmeta` VALUES (133,24,'_wp_attachment_image_alt','TAKANO');
INSERT INTO `wp_postmeta` VALUES (134,23,'_thumbnail_id','24');
INSERT INTO `wp_postmeta` VALUES (135,26,'_wp_attachment_image_alt','課長');
INSERT INTO `wp_postmeta` VALUES (136,25,'_thumbnail_id','26');
INSERT INTO `wp_postmeta` VALUES (137,28,'_wp_attachment_image_alt','NABECYAN');
INSERT INTO `wp_postmeta` VALUES (138,27,'_thumbnail_id','28');
INSERT INTO `wp_postmeta` VALUES (139,30,'_wp_attachment_image_alt','隣の高橋さん');
INSERT INTO `wp_postmeta` VALUES (140,29,'_thumbnail_id','30');
INSERT INTO `wp_postmeta` VALUES (141,32,'_wp_attachment_image_alt','KEIKO');
INSERT INTO `wp_postmeta` VALUES (142,31,'_thumbnail_id','32');
INSERT INTO `wp_postmeta` VALUES (143,34,'_wp_attachment_image_alt','Under Mountain');
INSERT INTO `wp_postmeta` VALUES (144,33,'_thumbnail_id','34');
INSERT INTO `wp_postmeta` VALUES (145,36,'_wp_attachment_image_alt','SAITO');
INSERT INTO `wp_postmeta` VALUES (146,35,'_thumbnail_id','36');
INSERT INTO `wp_postmeta` VALUES (147,1,'_edit_lock','1726298177:1');
INSERT INTO `wp_postmeta` VALUES (148,38,'_acf_changed','');
INSERT INTO `wp_postmeta` VALUES (149,38,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (152,40,'_edit_lock','1726296957:1');
INSERT INTO `wp_postmeta` VALUES (155,42,'_edit_lock','1726298188:1');
INSERT INTO `wp_postmeta` VALUES (158,42,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (161,42,'_wp_old_date','2024-09-14');
INSERT INTO `wp_postmeta` VALUES (162,40,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (165,40,'_wp_old_date','2024-09-14');
INSERT INTO `wp_postmeta` VALUES (166,1,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (169,1,'_wp_old_date','2024-09-10');
INSERT INTO `wp_postmeta` VALUES (178,1,'_wp_old_date','2022-09-01');
INSERT INTO `wp_postmeta` VALUES (181,42,'_wp_old_date','2022-12-15');
INSERT INTO `wp_postmeta` VALUES (182,44,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (183,44,'_edit_lock','1729293868:1');
INSERT INTO `wp_postmeta` VALUES (184,49,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (185,49,'_edit_lock','1726327207:1');
INSERT INTO `wp_postmeta` VALUES (188,52,'_wp_attached_file','2024/09/step1-1-img.png');
INSERT INTO `wp_postmeta` VALUES (189,52,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2024/09/step1-1-img.png\";s:8:\"filesize\";i:62144;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"step1-1-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38336;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"step1-1-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12327;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (210,62,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (211,62,'step_number','01');
INSERT INTO `wp_postmeta` VALUES (212,62,'_step_number','field_66e54a0e91b54');
INSERT INTO `wp_postmeta` VALUES (213,62,'step-image','52');
INSERT INTO `wp_postmeta` VALUES (214,62,'_step-image','field_66e54af291b55');
INSERT INTO `wp_postmeta` VALUES (215,62,'step_text','起こしたい時間を<br>設定します');
INSERT INTO `wp_postmeta` VALUES (216,62,'_step_text','field_66e54b3891b56');
INSERT INTO `wp_postmeta` VALUES (217,62,'_edit_lock','1726329044:1');
INSERT INTO `wp_postmeta` VALUES (218,65,'_wp_attached_file','2024/09/step1-2-img.png');
INSERT INTO `wp_postmeta` VALUES (219,65,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2024/09/step1-2-img.png\";s:8:\"filesize\";i:73225;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"step1-2-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47575;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"step1-2-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15220;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (220,64,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (221,64,'step_number','02');
INSERT INTO `wp_postmeta` VALUES (222,64,'_step_number','field_66e54a0e91b54');
INSERT INTO `wp_postmeta` VALUES (223,64,'step-image','65');
INSERT INTO `wp_postmeta` VALUES (224,64,'_step-image','field_66e54af291b55');
INSERT INTO `wp_postmeta` VALUES (225,64,'step_text','スマホを枕元に置いて<br />寝ます');
INSERT INTO `wp_postmeta` VALUES (226,64,'_step_text','field_66e54b3891b56');
INSERT INTO `wp_postmeta` VALUES (227,64,'_edit_lock','1726328731:1');
INSERT INTO `wp_postmeta` VALUES (228,67,'_wp_attached_file','2024/09/step1-3-img.png');
INSERT INTO `wp_postmeta` VALUES (229,67,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2024/09/step1-3-img.png\";s:8:\"filesize\";i:104391;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"step1-3-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:65472;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"step1-3-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20382;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (230,66,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (231,66,'step_number','03');
INSERT INTO `wp_postmeta` VALUES (232,66,'_step_number','field_66e54a0e91b54');
INSERT INTO `wp_postmeta` VALUES (233,66,'step-image','67');
INSERT INTO `wp_postmeta` VALUES (234,66,'_step-image','field_66e54af291b55');
INSERT INTO `wp_postmeta` VALUES (235,66,'step_text','起こすことによって<br />起きることができます');
INSERT INTO `wp_postmeta` VALUES (236,66,'_step_text','field_66e54b3891b56');
INSERT INTO `wp_postmeta` VALUES (237,66,'_edit_lock','1726326024:1');
INSERT INTO `wp_postmeta` VALUES (238,69,'_wp_attached_file','2024/09/step2-1-img.png');
INSERT INTO `wp_postmeta` VALUES (239,69,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2024/09/step2-1-img.png\";s:8:\"filesize\";i:62914;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"step2-1-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37640;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"step2-1-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11777;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (240,68,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (241,68,'step_number','01');
INSERT INTO `wp_postmeta` VALUES (242,68,'_step_number','field_66e54a0e91b54');
INSERT INTO `wp_postmeta` VALUES (243,68,'step-image','69');
INSERT INTO `wp_postmeta` VALUES (244,68,'_step-image','field_66e54af291b55');
INSERT INTO `wp_postmeta` VALUES (245,68,'step_text','起こされたい時間を<br />設定します');
INSERT INTO `wp_postmeta` VALUES (246,68,'_step_text','field_66e54b3891b56');
INSERT INTO `wp_postmeta` VALUES (247,68,'_edit_lock','1726326091:1');
INSERT INTO `wp_postmeta` VALUES (248,71,'_wp_attached_file','2024/09/step2-2-img.png');
INSERT INTO `wp_postmeta` VALUES (249,71,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2024/09/step2-2-img.png\";s:8:\"filesize\";i:65323;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"step2-2-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43037;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"step2-2-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13826;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (250,70,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (251,70,'step_number','02');
INSERT INTO `wp_postmeta` VALUES (252,70,'_step_number','field_66e54a0e91b54');
INSERT INTO `wp_postmeta` VALUES (253,70,'step-image','71');
INSERT INTO `wp_postmeta` VALUES (254,70,'_step-image','field_66e54af291b55');
INSERT INTO `wp_postmeta` VALUES (255,70,'step_text','スマホを枕元に置いて<br />寝ます');
INSERT INTO `wp_postmeta` VALUES (256,70,'_step_text','field_66e54b3891b56');
INSERT INTO `wp_postmeta` VALUES (257,70,'_edit_lock','1726326128:1');
INSERT INTO `wp_postmeta` VALUES (258,73,'_wp_attached_file','2024/09/step2-3-img.png');
INSERT INTO `wp_postmeta` VALUES (259,73,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:400;s:6:\"height\";i:400;s:4:\"file\";s:23:\"2024/09/step2-3-img.png\";s:8:\"filesize\";i:92517;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:23:\"step2-3-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:59631;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"step2-3-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18839;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (260,72,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (261,72,'step_number','03');
INSERT INTO `wp_postmeta` VALUES (262,72,'_step_number','field_66e54a0e91b54');
INSERT INTO `wp_postmeta` VALUES (263,72,'step-image','73');
INSERT INTO `wp_postmeta` VALUES (264,72,'_step-image','field_66e54af291b55');
INSERT INTO `wp_postmeta` VALUES (265,72,'step_text','起こされることによって<br />起きることができます');
INSERT INTO `wp_postmeta` VALUES (266,72,'_step_text','field_66e54b3891b56');
INSERT INTO `wp_postmeta` VALUES (267,72,'_edit_lock','1729293880:1');
INSERT INTO `wp_postmeta` VALUES (268,74,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (269,74,'_edit_lock','1729293980:1');
INSERT INTO `wp_postmeta` VALUES (270,80,'_wp_attached_file','2024/09/merit1-img.png');
INSERT INTO `wp_postmeta` VALUES (271,80,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:22:\"2024/09/merit1-img.png\";s:8:\"filesize\";i:175778;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"merit1-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:44423;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"merit1-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14930;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (272,79,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (273,79,'merit_image','80');
INSERT INTO `wp_postmeta` VALUES (274,79,'_merit_image','field_66e68fdc0f1e1');
INSERT INTO `wp_postmeta` VALUES (275,79,'merit_number','1');
INSERT INTO `wp_postmeta` VALUES (276,79,'_merit_number','field_66e690300f1e2');
INSERT INTO `wp_postmeta` VALUES (277,79,'merit_title','通りすがりに猫が<br />挨拶してくれるようになる');
INSERT INTO `wp_postmeta` VALUES (278,79,'_merit_title','field_66e690470f1e3');
INSERT INTO `wp_postmeta` VALUES (279,79,'merit_text','偶然の可能性も高いですが、OHA!を使うようになってから、やたらと猫が挨拶してくれるようになった、というお話をいただきます。とはいえ、自惚れすぎてはいけません。挨拶されたからといって一方的に話しかけ続けてしまうと気まぐれ猫ちゃんにうんざりされる上に周りの目も冷ややかです。');
INSERT INTO `wp_postmeta` VALUES (280,79,'_merit_text','field_66e690670f1e4');
INSERT INTO `wp_postmeta` VALUES (281,79,'_edit_lock','1726903487:1');
INSERT INTO `wp_postmeta` VALUES (282,82,'_wp_attached_file','2024/09/merit2-img.png');
INSERT INTO `wp_postmeta` VALUES (283,82,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:22:\"2024/09/merit2-img.png\";s:8:\"filesize\";i:228436;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"merit2-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:56476;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"merit2-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:18215;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (284,81,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (285,81,'merit_image','82');
INSERT INTO `wp_postmeta` VALUES (286,81,'_merit_image','field_66e68fdc0f1e1');
INSERT INTO `wp_postmeta` VALUES (287,81,'merit_number','2');
INSERT INTO `wp_postmeta` VALUES (288,81,'_merit_number','field_66e690300f1e2');
INSERT INTO `wp_postmeta` VALUES (289,81,'merit_title','商店街の福引で<br />3等のティッシュボックスが<br class=\"hidden-pc\" />当たる');
INSERT INTO `wp_postmeta` VALUES (290,81,'_merit_title','field_66e690470f1e3');
INSERT INTO `wp_postmeta` VALUES (291,81,'merit_text','OHA!を使うことで、どういった因果関係なのか、ちょっと運もよくなります。あなたの街には商店街があるかわかりませんが、もしあればチャンスです。買い物をして、福引に挑んでみましょう。3等のティッシュボックスが当たること間違いなしです。<br />もう景品のポケットティッシュで涙を拭う、なんてことはないのです。');
INSERT INTO `wp_postmeta` VALUES (292,81,'_merit_text','field_66e690670f1e4');
INSERT INTO `wp_postmeta` VALUES (293,81,'_edit_lock','1726388125:1');
INSERT INTO `wp_postmeta` VALUES (294,84,'_wp_attached_file','2024/09/merit3-img.png');
INSERT INTO `wp_postmeta` VALUES (295,84,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:700;s:6:\"height\";i:700;s:4:\"file\";s:22:\"2024/09/merit3-img.png\";s:8:\"filesize\";i:192967;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"merit3-img-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:49914;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"merit3-img-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16750;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (296,83,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (297,83,'merit_image','84');
INSERT INTO `wp_postmeta` VALUES (298,83,'_merit_image','field_66e68fdc0f1e1');
INSERT INTO `wp_postmeta` VALUES (299,83,'merit_number','3');
INSERT INTO `wp_postmeta` VALUES (300,83,'_merit_number','field_66e690300f1e2');
INSERT INTO `wp_postmeta` VALUES (301,83,'merit_title','掃除をしていたら、<br />過去に自分が隠した<br class=\"hidden-pc\" />へそくりが出てきた');
INSERT INTO `wp_postmeta` VALUES (302,83,'_merit_title','field_66e690470f1e3');
INSERT INTO `wp_postmeta` VALUES (303,83,'merit_text','自分が隠したへそくりを自分が発見するのはプラスマイナス0ですが、なんだか嬉しいものですよね。過去の自分よ、素敵なサプライズをありがとう。<br />へそくりをしたことがない方にとっては申し訳ないですがこのイベントは起こりませんのでアプリ使用の再検討をおすすめします。');
INSERT INTO `wp_postmeta` VALUES (304,83,'_merit_text','field_66e690670f1e4');
INSERT INTO `wp_postmeta` VALUES (305,83,'_edit_lock','1726388099:1');
INSERT INTO `wp_postmeta` VALUES (306,81,'merit_reverse','1');
INSERT INTO `wp_postmeta` VALUES (307,81,'_merit_reverse','field_66e695cf445c3');
INSERT INTO `wp_postmeta` VALUES (308,83,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (310,81,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (311,79,'_wp_old_date','2024-09-14');
INSERT INTO `wp_postmeta` VALUES (312,86,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (313,86,'_edit_lock','1729293999:1');
INSERT INTO `wp_postmeta` VALUES (315,94,'_wp_attached_file','2024/09/compare-logo.png');
INSERT INTO `wp_postmeta` VALUES (316,94,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:246;s:6:\"height\";i:64;s:4:\"file\";s:24:\"2024/09/compare-logo.png\";s:8:\"filesize\";i:5802;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"compare-logo-150x64.png\";s:5:\"width\";i:150;s:6:\"height\";i:64;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2785;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (317,94,'_wp_attachment_image_alt','OHA!');
INSERT INTO `wp_postmeta` VALUES (318,93,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (319,93,'service_logo','94');
INSERT INTO `wp_postmeta` VALUES (320,93,'_service_logo','field_66e698a585f75');
INSERT INTO `wp_postmeta` VALUES (321,93,'service_name','');
INSERT INTO `wp_postmeta` VALUES (322,93,'_service_name','field_66e69a8985f76');
INSERT INTO `wp_postmeta` VALUES (323,93,'fee','');
INSERT INTO `wp_postmeta` VALUES (324,93,'_fee','field_66e69aab85f77');
INSERT INTO `wp_postmeta` VALUES (325,93,'registration_fee','');
INSERT INTO `wp_postmeta` VALUES (326,93,'_registration_fee','field_66e69ae485f78');
INSERT INTO `wp_postmeta` VALUES (327,93,'annual_award','');
INSERT INTO `wp_postmeta` VALUES (328,93,'_annual_award','field_66e69b0185f79');
INSERT INTO `wp_postmeta` VALUES (329,93,'_edit_lock','1726902051:1');
INSERT INTO `wp_postmeta` VALUES (330,93,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (331,96,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (332,96,'service_logo','');
INSERT INTO `wp_postmeta` VALUES (333,96,'_service_logo','field_66e698a585f75');
INSERT INTO `wp_postmeta` VALUES (334,96,'service_name','他社1');
INSERT INTO `wp_postmeta` VALUES (335,96,'_service_name','field_66e69a8985f76');
INSERT INTO `wp_postmeta` VALUES (336,96,'fee','');
INSERT INTO `wp_postmeta` VALUES (337,96,'_fee','field_66e69aab85f77');
INSERT INTO `wp_postmeta` VALUES (338,96,'registration_fee','');
INSERT INTO `wp_postmeta` VALUES (339,96,'_registration_fee','field_66e69ae485f78');
INSERT INTO `wp_postmeta` VALUES (340,96,'annual_award','');
INSERT INTO `wp_postmeta` VALUES (341,96,'_annual_award','field_66e69b0185f79');
INSERT INTO `wp_postmeta` VALUES (342,96,'_edit_lock','1726904059:1');
INSERT INTO `wp_postmeta` VALUES (343,97,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (344,97,'service_logo','');
INSERT INTO `wp_postmeta` VALUES (345,97,'_service_logo','field_66e698a585f75');
INSERT INTO `wp_postmeta` VALUES (346,97,'service_name','他社2');
INSERT INTO `wp_postmeta` VALUES (347,97,'_service_name','field_66e69a8985f76');
INSERT INTO `wp_postmeta` VALUES (348,97,'fee','');
INSERT INTO `wp_postmeta` VALUES (349,97,'_fee','field_66e69aab85f77');
INSERT INTO `wp_postmeta` VALUES (350,97,'registration_fee','');
INSERT INTO `wp_postmeta` VALUES (351,97,'_registration_fee','field_66e69ae485f78');
INSERT INTO `wp_postmeta` VALUES (352,97,'annual_award','');
INSERT INTO `wp_postmeta` VALUES (353,97,'_annual_award','field_66e69b0185f79');
INSERT INTO `wp_postmeta` VALUES (354,97,'_edit_lock','1726903751:1');
INSERT INTO `wp_postmeta` VALUES (355,93,'service_logo_1','94');
INSERT INTO `wp_postmeta` VALUES (356,93,'_service_logo_1','field_66e698a585f75');
INSERT INTO `wp_postmeta` VALUES (357,93,'service_logo_2','');
INSERT INTO `wp_postmeta` VALUES (358,93,'_service_logo_2','field_66e6a018b5873');
INSERT INTO `wp_postmeta` VALUES (359,93,'service_logo_3','');
INSERT INTO `wp_postmeta` VALUES (360,93,'_service_logo_3','field_66e6a017b5872');
INSERT INTO `wp_postmeta` VALUES (361,93,'service_name_1','');
INSERT INTO `wp_postmeta` VALUES (362,93,'_service_name_1','field_66e69a8985f76');
INSERT INTO `wp_postmeta` VALUES (363,93,'service_name_2','');
INSERT INTO `wp_postmeta` VALUES (364,93,'_service_name_2','field_66e6a040b5875');
INSERT INTO `wp_postmeta` VALUES (365,93,'service_name_3','');
INSERT INTO `wp_postmeta` VALUES (366,93,'_service_name_3','field_66e6a03fb5874');
INSERT INTO `wp_postmeta` VALUES (367,96,'service_logo_1','');
INSERT INTO `wp_postmeta` VALUES (368,96,'_service_logo_1','field_66e698a585f75');
INSERT INTO `wp_postmeta` VALUES (369,96,'service_logo_2','');
INSERT INTO `wp_postmeta` VALUES (370,96,'_service_logo_2','field_66e6a018b5873');
INSERT INTO `wp_postmeta` VALUES (371,96,'service_logo_3','');
INSERT INTO `wp_postmeta` VALUES (372,96,'_service_logo_3','field_66e6a017b5872');
INSERT INTO `wp_postmeta` VALUES (373,96,'service_name_1','');
INSERT INTO `wp_postmeta` VALUES (374,96,'_service_name_1','field_66e69a8985f76');
INSERT INTO `wp_postmeta` VALUES (375,96,'service_name_2','他社1');
INSERT INTO `wp_postmeta` VALUES (376,96,'_service_name_2','field_66e6a040b5875');
INSERT INTO `wp_postmeta` VALUES (377,96,'service_name_3','');
INSERT INTO `wp_postmeta` VALUES (378,96,'_service_name_3','field_66e6a03fb5874');
INSERT INTO `wp_postmeta` VALUES (379,97,'service_logo_1','');
INSERT INTO `wp_postmeta` VALUES (380,97,'_service_logo_1','field_66e698a585f75');
INSERT INTO `wp_postmeta` VALUES (381,97,'service_logo_2','');
INSERT INTO `wp_postmeta` VALUES (382,97,'_service_logo_2','field_66e6a018b5873');
INSERT INTO `wp_postmeta` VALUES (383,97,'service_logo_3','');
INSERT INTO `wp_postmeta` VALUES (384,97,'_service_logo_3','field_66e6a017b5872');
INSERT INTO `wp_postmeta` VALUES (385,97,'service_name_1','');
INSERT INTO `wp_postmeta` VALUES (386,97,'_service_name_1','field_66e69a8985f76');
INSERT INTO `wp_postmeta` VALUES (387,97,'service_name_2','');
INSERT INTO `wp_postmeta` VALUES (388,97,'_service_name_2','field_66e6a040b5875');
INSERT INTO `wp_postmeta` VALUES (389,97,'service_name_3','他社2');
INSERT INTO `wp_postmeta` VALUES (390,97,'_service_name_3','field_66e6a03fb5874');
INSERT INTO `wp_postmeta` VALUES (391,93,'fee_fee_oha','なし！');
INSERT INTO `wp_postmeta` VALUES (392,93,'_fee_fee_oha','field_66e6f551ebd8d');
INSERT INTO `wp_postmeta` VALUES (393,93,'fee_fee_1','');
INSERT INTO `wp_postmeta` VALUES (394,93,'_fee_fee_1','field_66e6f575ebd8e');
INSERT INTO `wp_postmeta` VALUES (395,93,'fee_fee_2','');
INSERT INTO `wp_postmeta` VALUES (396,93,'_fee_fee_2','field_66e6f59bebd8f');
INSERT INTO `wp_postmeta` VALUES (397,93,'registration_fee_registration_fee_oha','なし！');
INSERT INTO `wp_postmeta` VALUES (398,93,'_registration_fee_registration_fee_oha','field_66e6f61604fc2');
INSERT INTO `wp_postmeta` VALUES (399,93,'registration_fee_registration_fee_1','');
INSERT INTO `wp_postmeta` VALUES (400,93,'_registration_fee_registration_fee_1','field_66e6f64204fc3');
INSERT INTO `wp_postmeta` VALUES (401,93,'registration_fee_registration_fee_2','');
INSERT INTO `wp_postmeta` VALUES (402,93,'_registration_fee_registration_fee_2','field_66e6f65e04fc4');
INSERT INTO `wp_postmeta` VALUES (403,93,'annual_award_annual_award_oha','あり！');
INSERT INTO `wp_postmeta` VALUES (404,93,'_annual_award_annual_award_oha','field_66e6f6a1a1f13');
INSERT INTO `wp_postmeta` VALUES (405,93,'annual_award_annual_award_1','');
INSERT INTO `wp_postmeta` VALUES (406,93,'_annual_award_annual_award_1','field_66e6f6cca1f15');
INSERT INTO `wp_postmeta` VALUES (407,93,'annual_award_annual_award_2','');
INSERT INTO `wp_postmeta` VALUES (408,93,'_annual_award_annual_award_2','field_66e6f6cba1f14');
INSERT INTO `wp_postmeta` VALUES (409,96,'fee_fee_oha','');
INSERT INTO `wp_postmeta` VALUES (410,96,'_fee_fee_oha','field_66e6f551ebd8d');
INSERT INTO `wp_postmeta` VALUES (411,96,'fee_fee_1','希望時間に起きれた毎に<br />100円');
INSERT INTO `wp_postmeta` VALUES (412,96,'_fee_fee_1','field_66e6f575ebd8e');
INSERT INTO `wp_postmeta` VALUES (413,96,'fee_fee_2','');
INSERT INTO `wp_postmeta` VALUES (414,96,'_fee_fee_2','field_66e6f59bebd8f');
INSERT INTO `wp_postmeta` VALUES (415,96,'registration_fee_registration_fee_oha','');
INSERT INTO `wp_postmeta` VALUES (416,96,'_registration_fee_registration_fee_oha','field_66e6f61604fc2');
INSERT INTO `wp_postmeta` VALUES (417,96,'registration_fee_registration_fee_1','希望時間に起きれた毎に<br />100円');
INSERT INTO `wp_postmeta` VALUES (418,96,'_registration_fee_registration_fee_1','field_66e6f64204fc3');
INSERT INTO `wp_postmeta` VALUES (419,96,'registration_fee_registration_fee_2','');
INSERT INTO `wp_postmeta` VALUES (420,96,'_registration_fee_registration_fee_2','field_66e6f65e04fc4');
INSERT INTO `wp_postmeta` VALUES (421,96,'annual_award_annual_award_oha','');
INSERT INTO `wp_postmeta` VALUES (422,96,'_annual_award_annual_award_oha','field_66e6f6a1a1f13');
INSERT INTO `wp_postmeta` VALUES (423,96,'annual_award_annual_award_1','なし');
INSERT INTO `wp_postmeta` VALUES (424,96,'_annual_award_annual_award_1','field_66e6f6cca1f15');
INSERT INTO `wp_postmeta` VALUES (425,96,'annual_award_annual_award_2','');
INSERT INTO `wp_postmeta` VALUES (426,96,'_annual_award_annual_award_2','field_66e6f6cba1f14');
INSERT INTO `wp_postmeta` VALUES (427,97,'fee_fee_oha','');
INSERT INTO `wp_postmeta` VALUES (428,97,'_fee_fee_oha','field_66e6f551ebd8d');
INSERT INTO `wp_postmeta` VALUES (429,97,'fee_fee_1','');
INSERT INTO `wp_postmeta` VALUES (430,97,'_fee_fee_1','field_66e6f575ebd8e');
INSERT INTO `wp_postmeta` VALUES (431,97,'fee_fee_2','希望時間に起きれた毎に<br />40000ペコ');
INSERT INTO `wp_postmeta` VALUES (432,97,'_fee_fee_2','field_66e6f59bebd8f');
INSERT INTO `wp_postmeta` VALUES (433,97,'registration_fee_registration_fee_oha','');
INSERT INTO `wp_postmeta` VALUES (434,97,'_registration_fee_registration_fee_oha','field_66e6f61604fc2');
INSERT INTO `wp_postmeta` VALUES (435,97,'registration_fee_registration_fee_1','');
INSERT INTO `wp_postmeta` VALUES (436,97,'_registration_fee_registration_fee_1','field_66e6f64204fc3');
INSERT INTO `wp_postmeta` VALUES (437,97,'registration_fee_registration_fee_2','希望時間に起きれた毎に<br />40000ペコ');
INSERT INTO `wp_postmeta` VALUES (438,97,'_registration_fee_registration_fee_2','field_66e6f65e04fc4');
INSERT INTO `wp_postmeta` VALUES (439,97,'annual_award_annual_award_oha','');
INSERT INTO `wp_postmeta` VALUES (440,97,'_annual_award_annual_award_oha','field_66e6f6a1a1f13');
INSERT INTO `wp_postmeta` VALUES (441,97,'annual_award_annual_award_1','');
INSERT INTO `wp_postmeta` VALUES (442,97,'_annual_award_annual_award_1','field_66e6f6cca1f15');
INSERT INTO `wp_postmeta` VALUES (443,97,'annual_award_annual_award_2','なし');
INSERT INTO `wp_postmeta` VALUES (444,97,'_annual_award_annual_award_2','field_66e6f6cba1f14');
INSERT INTO `wp_postmeta` VALUES (445,113,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (446,113,'_edit_lock','1729293943:1');
INSERT INTO `wp_postmeta` VALUES (447,118,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (448,118,'question','僕があまりにも起きない場合、相手に怒られることはあるのでしょうか？怖くて朝も起きられません。');
INSERT INTO `wp_postmeta` VALUES (449,118,'_question','field_66e6ff0a8b3ff');
INSERT INTO `wp_postmeta` VALUES (450,118,'answer','残念ながら、相手によります。');
INSERT INTO `wp_postmeta` VALUES (451,118,'_answer','field_66e6ff338b400');
INSERT INTO `wp_postmeta` VALUES (452,118,'_edit_lock','1726903467:1');
INSERT INTO `wp_postmeta` VALUES (453,119,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (454,119,'question','今現在の登録者は何人ですか？');
INSERT INTO `wp_postmeta` VALUES (455,119,'_question','field_66e6ff0a8b3ff');
INSERT INTO `wp_postmeta` VALUES (456,119,'answer','現在の登録者は150万人(から149.998万人を引いた人数)です。この文を2行にしたいのでもう一度言います。現在の登録者は150万人(から149.998万人を引いた人数)です！');
INSERT INTO `wp_postmeta` VALUES (457,119,'_answer','field_66e6ff338b400');
INSERT INTO `wp_postmeta` VALUES (458,119,'_edit_lock','1726903475:1');
INSERT INTO `wp_postmeta` VALUES (459,120,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (460,120,'question','アプリをインストールして使う妄想だけで朝起きられるようになりました！結局インストールはしてないですが、ありがとうございます！');
INSERT INTO `wp_postmeta` VALUES (461,120,'_question','field_66e6ff0a8b3ff');
INSERT INTO `wp_postmeta` VALUES (462,120,'answer','それはよかったです！しかしインストールはしてほしかった！！！');
INSERT INTO `wp_postmeta` VALUES (463,120,'_answer','field_66e6ff338b400');
INSERT INTO `wp_postmeta` VALUES (464,120,'_edit_lock','1726415192:1');
INSERT INTO `wp_postmeta` VALUES (465,119,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (466,120,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (468,122,'_wp_attached_file','2024/09/gallery-1.png');
INSERT INTO `wp_postmeta` VALUES (469,122,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:794;s:4:\"file\";s:21:\"2024/09/gallery-1.png\";s:8:\"filesize\";i:1460594;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"gallery-1-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:108204;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"gallery-1-1024x678.png\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:1014144;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"gallery-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42308;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"gallery-1-768x508.png\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:605198;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (470,123,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (471,123,'_edit_lock','1729293966:1');
INSERT INTO `wp_postmeta` VALUES (472,126,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (473,126,'gallery_image','122');
INSERT INTO `wp_postmeta` VALUES (474,126,'_gallery_image','field_66e70447c377d');
INSERT INTO `wp_postmeta` VALUES (475,126,'gallery_text','最高な海。を拝んでいる私最高...');
INSERT INTO `wp_postmeta` VALUES (476,126,'_gallery_text','field_66e70471c377e');
INSERT INTO `wp_postmeta` VALUES (477,126,'_edit_lock','1726415988:1');
INSERT INTO `wp_postmeta` VALUES (481,128,'_wp_attached_file','2024/09/gallery-2.png');
INSERT INTO `wp_postmeta` VALUES (482,128,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:794;s:4:\"file\";s:21:\"2024/09/gallery-2.png\";s:8:\"filesize\";i:1398770;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"gallery-2-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:105588;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"gallery-2-1024x678.png\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:926118;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"gallery-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:42339;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"gallery-2-768x508.png\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:556985;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (483,127,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (484,127,'gallery_image','128');
INSERT INTO `wp_postmeta` VALUES (485,127,'_gallery_image','field_66e70447c377d');
INSERT INTO `wp_postmeta` VALUES (486,127,'gallery_text','モーニングは一番のり。今日も私えらい。');
INSERT INTO `wp_postmeta` VALUES (487,127,'_gallery_text','field_66e70471c377e');
INSERT INTO `wp_postmeta` VALUES (488,127,'_edit_lock','1726416153:1');
INSERT INTO `wp_postmeta` VALUES (489,130,'_wp_attached_file','2024/09/gallery-3.png');
INSERT INTO `wp_postmeta` VALUES (490,130,'_wp_attachment_metadata','a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:794;s:4:\"file\";s:21:\"2024/09/gallery-3.png\";s:8:\"filesize\";i:1083675;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"gallery-3-300x199.png\";s:5:\"width\";i:300;s:6:\"height\";i:199;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:75050;}s:5:\"large\";a:5:{s:4:\"file\";s:22:\"gallery-3-1024x678.png\";s:5:\"width\";i:1024;s:6:\"height\";i:678;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:715343;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"gallery-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:30518;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:21:\"gallery-3-768x508.png\";s:5:\"width\";i:768;s:6:\"height\";i:508;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:421309;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` VALUES (491,129,'_edit_last','1');
INSERT INTO `wp_postmeta` VALUES (492,129,'gallery_image','130');
INSERT INTO `wp_postmeta` VALUES (493,129,'_gallery_image','field_66e70447c377d');
INSERT INTO `wp_postmeta` VALUES (494,129,'gallery_text','風車のある公園ヨガ。みんな私に釘付け。');
INSERT INTO `wp_postmeta` VALUES (495,129,'_gallery_text','field_66e70471c377e');
INSERT INTO `wp_postmeta` VALUES (496,129,'_edit_lock','1726416147:1');
INSERT INTO `wp_postmeta` VALUES (497,129,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (498,127,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (499,131,'_edit_lock','1729293417:1');
INSERT INTO `wp_postmeta` VALUES (500,3,'_edit_lock','1726898471:1');
INSERT INTO `wp_postmeta` VALUES (501,134,'_acf_changed','');
INSERT INTO `wp_postmeta` VALUES (502,134,'footnotes','');
INSERT INTO `wp_postmeta` VALUES (504,97,'oha','なし！');
INSERT INTO `wp_postmeta` VALUES (505,97,'_oha','field_66e69aab85f77');
INSERT INTO `wp_postmeta` VALUES (506,97,'company_1','希望時間に起きれた毎に<br />100円');
INSERT INTO `wp_postmeta` VALUES (507,97,'_company_1','field_66e69ae485f78');
INSERT INTO `wp_postmeta` VALUES (508,97,'company_2','希望時間に起きれた毎に<br />40000ペコ');
INSERT INTO `wp_postmeta` VALUES (509,97,'_company_2','field_66e69b0185f79');
INSERT INTO `wp_postmeta` VALUES (510,96,'oha','なし！');
INSERT INTO `wp_postmeta` VALUES (511,96,'_oha','field_66e69aab85f77');
INSERT INTO `wp_postmeta` VALUES (512,96,'company_1','希望時間に起きれた毎に<br />100円');
INSERT INTO `wp_postmeta` VALUES (513,96,'_company_1','field_66e69ae485f78');
INSERT INTO `wp_postmeta` VALUES (514,96,'company_2','希望時間に起きれた毎に<br />40000ペコ');
INSERT INTO `wp_postmeta` VALUES (515,96,'_company_2','field_66e69b0185f79');
INSERT INTO `wp_postmeta` VALUES (516,93,'oha','あり！');
INSERT INTO `wp_postmeta` VALUES (517,93,'_oha','field_66e69aab85f77');
INSERT INTO `wp_postmeta` VALUES (518,93,'company_1','なし');
INSERT INTO `wp_postmeta` VALUES (519,93,'_company_1','field_66e69ae485f78');
INSERT INTO `wp_postmeta` VALUES (520,93,'company_2','なし');
INSERT INTO `wp_postmeta` VALUES (521,93,'_company_2','field_66e69b0185f79');
INSERT INTO `wp_postmeta` VALUES (522,96,'_wp_old_date','2024-09-15');
INSERT INTO `wp_postmeta` VALUES (523,93,'_wp_old_date','2024-09-14');
INSERT INTO `wp_postmeta` VALUES (524,138,'_form','<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]');
INSERT INTO `wp_postmeta` VALUES (525,138,'_mail','a:8:{s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@oha.local>\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (526,138,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@oha.local>\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}');
INSERT INTO `wp_postmeta` VALUES (527,138,'_messages','a:12:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";}');
INSERT INTO `wp_postmeta` VALUES (528,138,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (529,138,'_locale','ja');
INSERT INTO `wp_postmeta` VALUES (530,138,'_hash','f448d8aea5146e1ae204f06d4dafb17de8b0e9c3');
INSERT INTO `wp_postmeta` VALUES (531,139,'_form','<div class=\"contact_form\"><div class=\"contact_fields\"><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">お名前 <span class=\"form-field_tag\">必須</span></label></div>[text* your-name class:form-text placeholder \"田中 おは次郎\"]</div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">メールアドレス <span class=\"form-field_tag\">必須</span></label></div>[email* your-email class:form-text placeholder \"info@oha.com\"]</div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">お問い合わせ項目 <span class=\"form-field_tag\">必須</span></label></div><div class=\"form-field_item\"><div class=\"form-field_radios\">[radio radio-612 default:1 \"アプリの質問\" \"取材の依頼\" \"その他\"]</div></div></div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">年代 <span class=\"form-field_tag is-option\">任意</span></label></div><div class=\"form-field_item\">[select your-age class:form-select \"選択してください\" \"10代\" \"20代\" \"30代\" \"40代\" \"50代\" \"60代\" \"70代\" \"80代\"]</div></div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">お問い合わせ内容 <span class=\"form-field_tag\">必須</span></label></div><div class=\"form-field_item\">[textarea* your-message class:form-textarea placeholder \"ここに文章を入力してください\"]</div></div></div></div><div class=\"contact_privacy\"><label class=\"form-checkbox\">[acceptance acceptance-902 class:form-checkbox_input]<span class=\"form-checkbox_text\"><a href=\"#\" target=\"_blank\">プライバシーポリシー</a>に同意する</span><span class=\"check-icon\"></span></label></div><div class=\"contact_button\">[submit class:button \"送信する\"]</div></div>');
INSERT INTO `wp_postmeta` VALUES (532,139,'_mail','a:9:{s:6:\"active\";b:1;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@oha.local>\";s:9:\"recipient\";s:19:\"[_site_admin_email]\";s:4:\"body\";s:191:\"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (533,139,'_mail_2','a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:30:\"[_site_title] \"[your-subject]\"\";s:6:\"sender\";s:35:\"[_site_title] <wordpress@oha.local>\";s:9:\"recipient\";s:12:\"[your-email]\";s:4:\"body\";s:220:\"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\";s:18:\"additional_headers\";s:29:\"Reply-To: [_site_admin_email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";b:0;s:13:\"exclude_blank\";b:0;}');
INSERT INTO `wp_postmeta` VALUES (534,139,'_messages','a:22:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:27:\"Please fill out this field.\";s:16:\"invalid_too_long\";s:32:\"This field has a too long input.\";s:17:\"invalid_too_short\";s:33:\"This field has a too short input.\";s:13:\"upload_failed\";s:46:\"There was an unknown error uploading the file.\";s:24:\"upload_file_type_invalid\";s:49:\"You are not allowed to upload files of this type.\";s:21:\"upload_file_too_large\";s:31:\"The uploaded file is too large.\";s:23:\"upload_failed_php_error\";s:38:\"There was an error uploading the file.\";s:12:\"invalid_date\";s:41:\"Please enter a date in YYYY-MM-DD format.\";s:14:\"date_too_early\";s:32:\"This field has a too early date.\";s:13:\"date_too_late\";s:31:\"This field has a too late date.\";s:14:\"invalid_number\";s:22:\"Please enter a number.\";s:16:\"number_too_small\";s:34:\"This field has a too small number.\";s:16:\"number_too_large\";s:34:\"This field has a too large number.\";s:23:\"quiz_answer_not_correct\";s:36:\"The answer to the quiz is incorrect.\";s:13:\"invalid_email\";s:30:\"Please enter an email address.\";s:11:\"invalid_url\";s:19:\"Please enter a URL.\";s:11:\"invalid_tel\";s:32:\"Please enter a telephone number.\";}');
INSERT INTO `wp_postmeta` VALUES (535,139,'_additional_settings','');
INSERT INTO `wp_postmeta` VALUES (536,139,'_locale','ja');
INSERT INTO `wp_postmeta` VALUES (537,139,'_hash','95ef2bd73a67a05d77167fa42a89c78b1a9d805e');
INSERT INTO `wp_postmeta` VALUES (542,141,'_dp_original','131');
INSERT INTO `wp_postmeta` VALUES (543,141,'_edit_lock','1728109420:1');
/*!40000 ALTER TABLE `wp_postmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_posts`
--

LOCK TABLES `wp_posts` WRITE;
/*!40000 ALTER TABLE `wp_posts` DISABLE KEYS */;
INSERT INTO `wp_posts` VALUES (1,1,'2022-12-15 00:00:37','2022-12-15 00:00:37','<!-- wp:paragraph -->\n<p>年末年始に関するお知らせです。以下の期間はお休みをいただきます。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>休業期間：12月29日〜2025年1月5日 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ご迷惑をおかけしますが、よろしくお願いいたします。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','年末年始について','','publish','open','open','','hello-world','','','2024-09-14 07:16:17','2024-09-14 07:16:17','',0,'http://oha.local/?p=1',0,'post','',1);
INSERT INTO `wp_posts` VALUES (2,1,'2024-09-10 14:45:37','2024-09-10 14:45:37','<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://oha.local/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->','Sample Page','','publish','closed','open','','sample-page','','','2024-09-10 14:45:37','2024-09-10 14:45:37','',0,'http://oha.local/?page_id=2',0,'page','',0);
INSERT INTO `wp_posts` VALUES (3,1,'2024-09-10 14:45:37','2024-09-10 14:45:37','<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: http://oha.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n','Privacy Policy','','draft','closed','open','','privacy-policy','','','2024-09-10 14:45:37','2024-09-10 14:45:37','',0,'http://oha.local/?page_id=3',0,'page','',0);
INSERT INTO `wp_posts` VALUES (4,0,'2024-09-10 14:52:12','2024-09-10 14:52:12','<!-- wp:page-list /-->','Navigation','','publish','closed','closed','','navigation','','','2024-09-10 14:52:12','2024-09-10 14:52:12','',0,'http://oha.local/navigation/',0,'wp_navigation','',0);
INSERT INTO `wp_posts` VALUES (6,1,'2024-09-12 15:16:54','2024-09-12 13:54:21','','サービスについて','','publish','closed','closed','','%e3%82%b5%e3%83%bc%e3%83%93%e3%82%b9%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6','','','2024-09-12 15:16:54','2024-09-12 15:16:54','',0,'http://oha.local/?p=6',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (7,1,'2024-09-12 15:16:54','2024-09-12 13:54:21','','使い方','','publish','closed','closed','','%e4%bd%bf%e3%81%84%e6%96%b9','','','2024-09-12 15:16:54','2024-09-12 15:16:54','',0,'http://oha.local/?p=7',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (8,1,'2024-09-12 15:16:54','2024-09-12 13:54:21','','メリット','','publish','closed','closed','','%e3%83%a1%e3%83%aa%e3%83%83%e3%83%88','','','2024-09-12 15:16:54','2024-09-12 15:16:54','',0,'http://oha.local/?p=8',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (10,1,'2024-09-12 15:17:20','2024-09-12 14:45:45','','サービスについて','','publish','closed','closed','','%e3%82%b5%e3%83%bc%e3%83%93%e3%82%b9%e3%81%ab%e3%81%a4%e3%81%84%e3%81%a6-2','','','2024-09-12 15:17:20','2024-09-12 15:17:20','',0,'http://oha.local/?p=10',1,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (11,1,'2024-09-12 15:17:20','2024-09-12 14:45:45','','使い方','','publish','closed','closed','','%e4%bd%bf%e3%81%84%e6%96%b9-2','','','2024-09-12 15:17:20','2024-09-12 15:17:20','',0,'http://oha.local/?p=11',2,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (12,1,'2024-09-12 15:17:20','2024-09-12 14:45:45','','メリット','','publish','closed','closed','','%e3%83%a1%e3%83%aa%e3%83%83%e3%83%88-2','','','2024-09-12 15:17:20','2024-09-12 15:17:20','',0,'http://oha.local/?p=12',3,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (14,1,'2024-09-12 15:16:54','2024-09-12 15:16:54','','お問い合わせ','','publish','closed','closed','','%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b','','','2024-09-12 15:16:54','2024-09-12 15:16:54','',0,'http://oha.local/?p=14',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (15,1,'2024-09-12 15:17:20','2024-09-12 15:17:20','','お問い合わせ','','publish','closed','closed','','%e3%81%8a%e5%95%8f%e3%81%84%e5%90%88%e3%82%8f%e3%81%9b-2','','','2024-09-12 15:17:20','2024-09-12 15:17:20','',0,'http://oha.local/?p=15',4,'nav_menu_item','',0);
INSERT INTO `wp_posts` VALUES (20,1,'2024-09-14 05:25:20','2024-09-14 05:25:20','','case1-img','','inherit','open','closed','','case1-img','','','2024-09-14 05:25:52','2024-09-14 05:25:52','',0,'http://oha.local/wp-content/uploads/2024/09/case1-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (21,1,'2024-09-14 05:27:49','2024-09-14 05:27:49','<!-- wp:image {\"id\":37,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case1-img-2.png\" alt=\"\" class=\"wp-image-37\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','21','','','2024-09-14 06:07:40','2024-09-14 06:07:40','',0,'http://oha.local/?post_type=case&#038;p=21',0,'case','',0);
INSERT INTO `wp_posts` VALUES (22,1,'2024-09-14 05:27:39','2024-09-14 05:27:39','','case1-img','','inherit','open','closed','','case1-img-2','','','2024-09-14 05:27:39','2024-09-14 05:27:39','',21,'http://oha.local/wp-content/uploads/2024/09/case1-img-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (23,1,'2024-09-14 05:28:24','2024-09-14 05:28:24','<!-- wp:image {\"id\":24,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case2-img.png\" alt=\"TAKANO\" class=\"wp-image-24\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','23','','','2024-09-14 06:08:19','2024-09-14 06:08:19','',0,'http://oha.local/?post_type=case&#038;p=23',0,'case','',0);
INSERT INTO `wp_posts` VALUES (24,1,'2024-09-14 05:28:17','2024-09-14 05:28:17','','case2-img','','inherit','open','closed','','case2-img','','','2024-09-14 06:08:18','2024-09-14 06:08:18','',23,'http://oha.local/wp-content/uploads/2024/09/case2-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (25,1,'2024-09-14 05:29:50','2024-09-14 05:29:50','<!-- wp:image {\"id\":26,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case3-img.png\" alt=\"課長\" class=\"wp-image-26\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','25','','','2024-09-14 06:08:32','2024-09-14 06:08:32','',0,'http://oha.local/?post_type=case&#038;p=25',0,'case','',0);
INSERT INTO `wp_posts` VALUES (26,1,'2024-09-14 05:29:34','2024-09-14 05:29:34','','case3-img','','inherit','open','closed','','case3-img','','','2024-09-14 06:08:31','2024-09-14 06:08:31','',25,'http://oha.local/wp-content/uploads/2024/09/case3-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (27,1,'2024-09-14 05:31:22','2024-09-14 05:31:22','<!-- wp:image {\"id\":28,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case4-img.png\" alt=\"NABECYAN\" class=\"wp-image-28\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','27','','','2024-09-14 06:08:51','2024-09-14 06:08:51','',0,'http://oha.local/?post_type=case&#038;p=27',0,'case','',0);
INSERT INTO `wp_posts` VALUES (28,1,'2024-09-14 05:31:06','2024-09-14 05:31:06','','case4-img','','inherit','open','closed','','case4-img','','','2024-09-14 06:08:49','2024-09-14 06:08:49','',27,'http://oha.local/wp-content/uploads/2024/09/case4-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (29,1,'2024-09-14 05:35:24','2024-09-14 05:35:24','<!-- wp:image {\"id\":30,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case5-img.png\" alt=\"隣の高橋さん\" class=\"wp-image-30\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','','','publish','closed','closed','','29','','','2024-09-14 06:09:06','2024-09-14 06:09:06','',0,'http://oha.local/?post_type=case&#038;p=29',0,'case','',0);
INSERT INTO `wp_posts` VALUES (30,1,'2024-09-14 05:35:02','2024-09-14 05:35:02','','case5-img','','inherit','open','closed','','case5-img','','','2024-09-14 06:09:05','2024-09-14 06:09:05','',29,'http://oha.local/wp-content/uploads/2024/09/case5-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (31,1,'2024-09-14 05:35:46','2024-09-14 05:35:46','<!-- wp:image {\"id\":32,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case6-img.png\" alt=\"KEIKO\" class=\"wp-image-32\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','31','','','2024-09-14 06:09:26','2024-09-14 06:09:26','',0,'http://oha.local/?post_type=case&#038;p=31',0,'case','',0);
INSERT INTO `wp_posts` VALUES (32,1,'2024-09-14 05:35:36','2024-09-14 05:35:36','','case6-img','','inherit','open','closed','','case6-img','','','2024-09-14 06:09:25','2024-09-14 06:09:25','',31,'http://oha.local/wp-content/uploads/2024/09/case6-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (33,1,'2024-09-14 05:36:14','2024-09-14 05:36:14','<!-- wp:image {\"id\":34,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case7-img.png\" alt=\"Under Mountain\" class=\"wp-image-34\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','33','','','2024-09-14 06:09:42','2024-09-14 06:09:42','',0,'http://oha.local/?post_type=case&#038;p=33',0,'case','',0);
INSERT INTO `wp_posts` VALUES (34,1,'2024-09-14 05:35:58','2024-09-14 05:35:58','','case7-img','','inherit','open','closed','','case7-img','','','2024-09-14 06:09:40','2024-09-14 06:09:40','',33,'http://oha.local/wp-content/uploads/2024/09/case7-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (35,1,'2024-09-14 05:36:31','2024-09-14 05:36:31','<!-- wp:image {\"id\":36,\"sizeSlug\":\"full\",\"linkDestination\":\"none\"} -->\n<figure class=\"wp-block-image size-full\"><img src=\"http://oha.local/wp-content/uploads/2024/09/case8-img.png\" alt=\"SAITO\" class=\"wp-image-36\"/></figure>\n<!-- /wp:image -->','','','publish','closed','closed','','35','','','2024-09-14 06:09:54','2024-09-14 06:09:54','',0,'http://oha.local/?post_type=case&#038;p=35',0,'case','',0);
INSERT INTO `wp_posts` VALUES (36,1,'2024-09-14 05:36:24','2024-09-14 05:36:24','','case8-img','','inherit','open','closed','','case8-img','','','2024-09-14 06:09:53','2024-09-14 06:09:53','',35,'http://oha.local/wp-content/uploads/2024/09/case8-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (37,1,'2024-09-14 06:07:38','2024-09-14 06:07:38','','case1-img','','inherit','open','closed','','case1-img-3','','','2024-09-14 06:07:38','2024-09-14 06:07:38','',21,'http://oha.local/wp-content/uploads/2024/09/case1-img-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (38,1,'2024-09-14 06:49:44','2024-09-14 06:49:44','<!-- wp:paragraph -->\n<p>年末年始に関するお知らせです。以下の期間はお休みをいただきます。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>休業期間：12月29日〜2025年1月5日 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p> ご迷惑をおかけしますが、よろしくお願いいたします。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:html /-->','年末年始について','','inherit','closed','closed','','1-autosave-v1','','','2024-09-14 06:49:44','2024-09-14 06:49:44','',1,'http://oha.local/?p=38',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (39,1,'2024-09-14 06:49:51','2024-09-14 06:49:51','<!-- wp:paragraph -->\n<p>年末年始に関するお知らせです。以下の期間はお休みをいただきます。 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>休業期間：12月29日〜2025年1月5日 </p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>ご迷惑をおかけしますが、よろしくお願いいたします。</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','年末年始について','','inherit','closed','closed','','1-revision-v1','','','2024-09-14 06:49:51','2024-09-14 06:49:51','',1,'http://oha.local/?p=39',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (40,1,'2022-12-10 00:00:50','2022-12-10 00:00:50','<!-- wp:paragraph -->\n<p>「OHA!」が、あの有名な芸能人にも使われていることが分かり、心から喜びと興奮を感じています。忙しい日常をサポートするために開発した「oha」が、いよいよ多くの方々に愛されている証が明らかになりました。</p>\n<!-- /wp:paragraph -->','あの芸能人にも使っていただいていることが判明しました！もう嬉しすぎて頭が真っ白になってしまいましたが、続きは本文にて！','','publish','open','open','','%e3%81%82%e3%81%ae%e8%8a%b8%e8%83%bd%e4%ba%ba%e3%81%ab%e3%82%82%e4%bd%bf%e3%81%a3%e3%81%a6%e3%81%84%e3%81%9f%e3%81%a0%e3%81%84%e3%81%a6%e3%81%84%e3%82%8b%e3%81%93%e3%81%a8%e3%81%8c%e5%88%a4%e6%98%8e','','','2024-09-14 06:55:57','2024-09-14 06:55:57','',0,'http://oha.local/?p=40',0,'post','',0);
INSERT INTO `wp_posts` VALUES (41,1,'2024-09-14 06:52:50','2024-09-14 06:52:50','<!-- wp:paragraph -->\n<p>「OHA!」が、あの有名な芸能人にも使われていることが分かり、心から喜びと興奮を感じています。忙しい日常をサポートするために開発した「oha」が、いよいよ多くの方々に愛されている証が明らかになりました。</p>\n<!-- /wp:paragraph -->','あの芸能人にも使っていただいていることが判明しました！もう嬉しすぎて頭が真っ白になってしまいましたが、続きは本文にて！','','inherit','closed','closed','','40-revision-v1','','','2024-09-14 06:52:50','2024-09-14 06:52:50','',40,'http://oha.local/?p=41',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (42,1,'2022-09-01 00:00:19','2022-09-01 00:00:19','<!-- wp:paragraph -->\n<p>こんにちは、皆さん！「OHA!」が、ついに幕張メッセでの体験会を開催することになりました。忙しい日常をサポートし、より良い朝のスタートを切るためのこの機会に、ぜひご参加ください！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','幕張メッセにて体験会を実施します！','','publish','open','open','','%e5%b9%95%e5%bc%b5%e3%83%a1%e3%83%83%e3%82%bb%e3%81%ab%e3%81%a6%e4%bd%93%e9%a8%93%e4%bc%9a%e3%82%92%e5%ae%9f%e6%96%bd%e3%81%97%e3%81%be%e3%81%99%ef%bc%81','','','2024-09-14 07:16:28','2024-09-14 07:16:28','',0,'http://oha.local/?p=42',0,'post','',0);
INSERT INTO `wp_posts` VALUES (43,1,'2024-09-14 06:54:19','2024-09-14 06:54:19','<!-- wp:paragraph -->\n<p>こんにちは、皆さん！「OHA!」が、ついに幕張メッセでの体験会を開催することになりました。忙しい日常をサポートし、より良い朝のスタートを切るためのこの機会に、ぜひご参加ください！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->','幕張メッセにて体験会を実施します！','','inherit','closed','closed','','42-revision-v1','','','2024-09-14 06:54:19','2024-09-14 06:54:19','',42,'http://oha.local/?p=43',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (44,1,'2024-09-14 08:46:37','2024-09-14 08:46:37','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"131\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','how to use','how-to-use','publish','closed','closed','','group_66e54a0e389df','','','2024-10-18 23:26:48','2024-10-18 23:26:48','',0,'http://oha.local/?post_type=acf-field-group&#038;p=44',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (45,1,'2024-09-14 08:46:37','2024-09-14 08:46:37','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','ステップ番号','step_number','publish','closed','closed','','field_66e54a0e91b54','','','2024-09-14 08:46:37','2024-09-14 08:46:37','',44,'http://oha.local/?post_type=acf-field&p=45',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (46,1,'2024-09-14 08:46:37','2024-09-14 08:46:37','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','ステップ画像','step-image','publish','closed','closed','','field_66e54af291b55','','','2024-09-14 08:46:37','2024-09-14 08:46:37','',44,'http://oha.local/?post_type=acf-field&p=46',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (47,1,'2024-09-14 08:46:37','2024-09-14 08:46:37','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','ステップの説明','step_text','publish','closed','closed','','field_66e54b3891b56','','','2024-09-14 15:01:27','2024-09-14 15:01:27','',44,'http://oha.local/?post_type=acf-field&#038;p=47',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (49,1,'2024-09-14 08:49:18','2024-09-14 08:49:18','a:29:{s:8:\"taxonomy\";s:10:\"how_to_use\";s:11:\"object_type\";a:1:{i:0;s:10:\"how_to_use\";}s:22:\"advanced_configuration\";i:0;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:11:\"How To Uses\";s:13:\"singular_name\";s:10:\"How To Use\";s:9:\"menu_name\";s:11:\"How To Uses\";s:9:\"all_items\";s:18:\"How To Uses 一覧\";s:9:\"edit_item\";s:20:\"How To Use を編集\";s:9:\"view_item\";s:20:\"How To Use を表示\";s:11:\"update_item\";s:20:\"How To Use を更新\";s:12:\"add_new_item\";s:25:\"新規How To Useを追加\";s:13:\"new_item_name\";s:21:\"新規 How To Use 名\";s:12:\"search_items\";s:21:\"How To Uses を検索\";s:13:\"popular_items\";s:21:\"人気の How To Uses\";s:26:\"separate_items_with_commas\";s:57:\"how to uses が複数ある場合はコンマで区切る\";s:19:\"add_or_remove_items\";s:42:\"how to uses を追加または削除する\";s:21:\"choose_from_most_used\";s:53:\"最もよく使われているhow to usesから選択\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:48:\"how to uses が見つかりませんでした。\";s:8:\"no_terms\";s:14:\"No how to uses\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:21:\"items_list_navigation\";s:27:\"How To Uses list navigation\";s:10:\"items_list\";s:21:\"How To Uses リスト\";s:13:\"back_to_items\";s:25:\"← how to uses へ戻る\";s:9:\"item_link\";s:20:\"How To Use リンク\";s:21:\"item_link_description\";s:26:\"how to use へのリンク\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:0;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";}','How To Uses','how-to-uses','publish','closed','closed','','taxonomy_66e54dd7dc2ef','','','2024-09-14 09:08:41','2024-09-14 09:08:41','',0,'http://oha.local/?post_type=acf-taxonomy&#038;p=49',0,'acf-taxonomy','',0);
INSERT INTO `wp_posts` VALUES (52,1,'2024-09-14 08:56:10','2024-09-14 08:56:10','','step1-1-img','','inherit','open','closed','','step1-1-img','','','2024-09-14 08:56:10','2024-09-14 08:56:10','',0,'http://oha.local/wp-content/uploads/2024/09/step1-1-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (62,1,'2024-09-14 09:27:03','2024-09-14 09:27:03','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d','','','2024-09-14 15:01:45','2024-09-14 15:01:45','',0,'http://oha.local/?post_type=how_to_use&#038;p=62',0,'how_to_use','',0);
INSERT INTO `wp_posts` VALUES (64,1,'2024-09-14 15:01:04','2024-09-14 15:01:04','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-2','','','2024-09-14 15:38:28','2024-09-14 15:38:28','',0,'http://oha.local/?post_type=how_to_use&#038;p=64',0,'how_to_use','',0);
INSERT INTO `wp_posts` VALUES (65,1,'2024-09-14 14:58:40','2024-09-14 14:58:40','','step1-2-img','','inherit','open','closed','','step1-2-img','','','2024-09-14 14:58:40','2024-09-14 14:58:40','',64,'http://oha.local/wp-content/uploads/2024/09/step1-2-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (66,1,'2024-09-14 15:02:33','2024-09-14 15:02:33','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-3','','','2024-09-14 15:02:46','2024-09-14 15:02:46','',0,'http://oha.local/?post_type=how_to_use&#038;p=66',0,'how_to_use','',0);
INSERT INTO `wp_posts` VALUES (67,1,'2024-09-14 15:02:18','2024-09-14 15:02:18','','step1-3-img','','inherit','open','closed','','step1-3-img','','','2024-09-14 15:02:18','2024-09-14 15:02:18','',66,'http://oha.local/wp-content/uploads/2024/09/step1-3-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (68,1,'2024-09-14 15:03:35','2024-09-14 15:03:35','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-4','','','2024-09-14 15:03:54','2024-09-14 15:03:54','',0,'http://oha.local/?post_type=how_to_use&#038;p=68',0,'how_to_use','',0);
INSERT INTO `wp_posts` VALUES (69,1,'2024-09-14 15:03:17','2024-09-14 15:03:17','','step2-1-img','','inherit','open','closed','','step2-1-img','','','2024-09-14 15:03:17','2024-09-14 15:03:17','',68,'http://oha.local/wp-content/uploads/2024/09/step2-1-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (70,1,'2024-09-14 15:04:30','2024-09-14 15:04:30','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-5','','','2024-09-14 15:04:30','2024-09-14 15:04:30','',0,'http://oha.local/?post_type=how_to_use&#038;p=70',0,'how_to_use','',0);
INSERT INTO `wp_posts` VALUES (71,1,'2024-09-14 15:04:07','2024-09-14 15:04:07','','step2-2-img','','inherit','open','closed','','step2-2-img','','','2024-09-14 15:04:07','2024-09-14 15:04:07','',70,'http://oha.local/wp-content/uploads/2024/09/step2-2-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (72,1,'2024-09-14 15:05:08','2024-09-14 15:05:08','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-6','','','2024-09-14 15:05:08','2024-09-14 15:05:08','',0,'http://oha.local/?post_type=how_to_use&#038;p=72',0,'how_to_use','',0);
INSERT INTO `wp_posts` VALUES (73,1,'2024-09-14 15:04:47','2024-09-14 15:04:47','','step2-3-img','','inherit','open','closed','','step2-3-img','','','2024-09-14 15:04:47','2024-09-14 15:04:47','',72,'http://oha.local/wp-content/uploads/2024/09/step2-3-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (74,1,'2024-09-15 07:45:36','2024-09-15 07:45:36','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"131\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','メリット','%e3%83%a1%e3%83%aa%e3%83%83%e3%83%88','publish','closed','closed','','group_66e68fdc77573','','','2024-10-18 23:28:42','2024-10-18 23:28:42','',0,'http://oha.local/?post_type=acf-field-group&#038;p=74',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (75,1,'2024-09-15 07:45:36','2024-09-15 07:45:36','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','メリット画像','merit_image','publish','closed','closed','','field_66e68fdc0f1e1','','','2024-09-15 07:45:36','2024-09-15 07:45:36','',74,'http://oha.local/?post_type=acf-field&p=75',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (76,1,'2024-09-15 07:45:36','2024-09-15 07:45:36','a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','番号','merit_number','publish','closed','closed','','field_66e690300f1e2','','','2024-09-15 07:45:36','2024-09-15 07:45:36','',74,'http://oha.local/?post_type=acf-field&p=76',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (77,1,'2024-09-15 07:45:36','2024-09-15 07:45:36','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','タイトル','merit_title','publish','closed','closed','','field_66e690470f1e3','','','2024-09-15 07:45:36','2024-09-15 07:45:36','',74,'http://oha.local/?post_type=acf-field&p=77',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (78,1,'2024-09-15 07:45:36','2024-09-15 07:45:36','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','テキスト','merit_text','publish','closed','closed','','field_66e690670f1e4','','','2024-09-15 07:45:36','2024-09-15 07:45:36','',74,'http://oha.local/?post_type=acf-field&p=78',3,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (79,1,'2024-09-15 07:49:09','2024-09-15 07:49:09','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d','','','2024-09-15 08:15:39','2024-09-15 08:15:39','',0,'http://oha.local/?post_type=merit&#038;p=79',0,'merit','',0);
INSERT INTO `wp_posts` VALUES (80,1,'2024-09-15 07:48:10','2024-09-15 07:48:10','','merit1-img','','inherit','open','closed','','merit1-img','','','2024-09-15 07:48:10','2024-09-15 07:48:10','',79,'http://oha.local/wp-content/uploads/2024/09/merit1-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (81,1,'2024-09-14 07:50:23','2024-09-14 07:50:23','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-2','','','2024-09-15 08:15:25','2024-09-15 08:15:25','',0,'http://oha.local/?post_type=merit&#038;p=81',0,'merit','',0);
INSERT INTO `wp_posts` VALUES (82,1,'2024-09-15 07:49:30','2024-09-15 07:49:30','','merit2-img','','inherit','open','closed','','merit2-img','','','2024-09-15 07:49:30','2024-09-15 07:49:30','',81,'http://oha.local/wp-content/uploads/2024/09/merit2-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (83,1,'2024-09-13 07:51:27','2024-09-13 07:51:27','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-3','','','2024-09-15 08:14:59','2024-09-15 08:14:59','',0,'http://oha.local/?post_type=merit&#038;p=83',0,'merit','',0);
INSERT INTO `wp_posts` VALUES (84,1,'2024-09-15 07:50:43','2024-09-15 07:50:43','','merit3-img','','inherit','open','closed','','merit3-img','','','2024-09-15 07:50:43','2024-09-15 07:50:43','',83,'http://oha.local/wp-content/uploads/2024/09/merit3-img.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (85,1,'2024-09-15 08:08:43','2024-09-15 08:08:43','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}','Merit Reverse','merit_reverse','publish','closed','closed','','field_66e695cf445c3','','','2024-09-15 08:08:43','2024-09-15 08:08:43','',74,'http://oha.local/?post_type=acf-field&p=85',4,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (86,1,'2024-09-15 08:30:22','2024-09-15 08:30:22','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"131\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','他のサービスとの違い','%e4%bb%96%e3%81%ae%e3%82%b5%e3%83%bc%e3%83%93%e3%82%b9%e3%81%a8%e3%81%ae%e9%81%95%e3%81%84','publish','closed','closed','','group_66e698a572375','','','2024-10-18 23:28:59','2024-10-18 23:28:59','',0,'http://oha.local/?post_type=acf-field-group&#038;p=86',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (89,1,'2024-09-15 08:30:22','2024-09-15 08:30:22','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','OHA','oha','publish','closed','closed','','field_66e69aab85f77','','','2024-09-21 06:54:31','2024-09-21 06:54:31','',86,'http://oha.local/?post_type=acf-field&#038;p=89',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (90,1,'2024-09-15 08:30:22','2024-09-15 08:30:22','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','他社1','company_1','publish','closed','closed','','field_66e69ae485f78','','','2024-09-21 06:54:31','2024-09-21 06:54:31','',86,'http://oha.local/?post_type=acf-field&#038;p=90',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (91,1,'2024-09-15 08:30:22','2024-09-15 08:30:22','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','他社2','company_2','publish','closed','closed','','field_66e69b0185f79','','','2024-09-21 06:54:31','2024-09-21 06:54:31','',86,'http://oha.local/?post_type=acf-field&#038;p=91',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (93,1,'2024-09-13 08:34:55','2024-09-13 08:34:55','','年間皆勤賞特典','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d','','','2024-09-21 07:00:51','2024-09-21 07:00:51','',0,'http://oha.local/?post_type=compare&#038;p=93',0,'compare','',0);
INSERT INTO `wp_posts` VALUES (94,1,'2024-09-15 08:34:13','2024-09-15 08:34:13','','compare-logo','','inherit','open','closed','','compare-logo','','','2024-09-15 08:34:24','2024-09-15 08:34:24','',93,'http://oha.local/wp-content/uploads/2024/09/compare-logo.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (96,1,'2024-09-14 08:36:12','2024-09-14 08:36:12','','登録料','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-2','','','2024-09-21 07:31:46','2024-09-21 07:31:46','',0,'http://oha.local/?post_type=compare&#038;p=96',0,'compare','',0);
INSERT INTO `wp_posts` VALUES (97,1,'2024-09-15 08:36:49','2024-09-15 08:36:49','','仲介手数料','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-3','','','2024-09-21 07:31:35','2024-09-21 07:31:35','',0,'http://oha.local/?post_type=compare&#038;p=97',0,'compare','',0);
INSERT INTO `wp_posts` VALUES (103,1,'2024-09-15 14:56:49','2024-09-15 14:56:49','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','仲介手数料_他社1','fee_1','publish','closed','closed','','field_66e6f575ebd8e','','','2024-09-15 15:00:38','2024-09-15 15:00:38','',89,'http://oha.local/?post_type=acf-field&#038;p=103',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (104,1,'2024-09-15 14:56:49','2024-09-15 14:56:49','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:1;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','仲介手数料_他社2','fee_2','publish','closed','closed','','field_66e6f59bebd8f','','','2024-09-15 15:00:38','2024-09-15 15:00:38','',89,'http://oha.local/?post_type=acf-field&#038;p=104',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (105,1,'2024-09-15 15:00:18','2024-09-15 15:00:18','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','登録料_oha','registration_fee_oha','publish','closed','closed','','field_66e6f61604fc2','','','2024-09-15 15:00:18','2024-09-15 15:00:18','',90,'http://oha.local/?post_type=acf-field&p=105',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (106,1,'2024-09-15 15:00:18','2024-09-15 15:00:18','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','登録料_他社1','registration_fee_1','publish','closed','closed','','field_66e6f64204fc3','','','2024-09-15 15:00:18','2024-09-15 15:00:18','',90,'http://oha.local/?post_type=acf-field&p=106',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (107,1,'2024-09-15 15:00:18','2024-09-15 15:00:18','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','登録料_他社2','registration_fee_2','publish','closed','closed','','field_66e6f65e04fc4','','','2024-09-15 15:00:18','2024-09-15 15:00:18','',90,'http://oha.local/?post_type=acf-field&p=107',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (108,1,'2024-09-15 15:02:00','2024-09-15 15:02:00','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','年間皆勤賞特典_oha','annual_award_oha','publish','closed','closed','','field_66e6f6a1a1f13','','','2024-09-15 15:02:00','2024-09-15 15:02:00','',91,'http://oha.local/?post_type=acf-field&p=108',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (109,1,'2024-09-15 15:02:00','2024-09-15 15:02:00','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','年間皆勤賞特典_他社1','annual_award_1','publish','closed','closed','','field_66e6f6cca1f15','','','2024-09-15 15:02:00','2024-09-15 15:02:00','',91,'http://oha.local/?post_type=acf-field&p=109',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (110,1,'2024-09-15 15:02:00','2024-09-15 15:02:00','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','年間皆勤賞特典_他社2','annual_award_2','publish','closed','closed','','field_66e6f6cba1f14','','','2024-09-15 15:02:00','2024-09-15 15:02:00','',91,'http://oha.local/?post_type=acf-field&p=110',2,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (113,1,'2024-09-15 15:37:53','2024-09-15 15:37:53','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"131\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','Q&A','qa','publish','closed','closed','','group_66e6ff0a81c7f','','','2024-10-18 23:28:04','2024-10-18 23:28:04','',0,'http://oha.local/?post_type=acf-field-group&#038;p=113',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (114,1,'2024-09-15 15:37:53','2024-09-15 15:37:53','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','Q','question','publish','closed','closed','','field_66e6ff0a8b3ff','','','2024-09-15 15:37:53','2024-09-15 15:37:53','',113,'http://oha.local/?post_type=acf-field&p=114',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (115,1,'2024-09-15 15:37:53','2024-09-15 15:37:53','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:4:\"rows\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}','A','answer','publish','closed','closed','','field_66e6ff338b400','','','2024-09-15 15:37:53','2024-09-15 15:37:53','',113,'http://oha.local/?post_type=acf-field&p=115',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (118,1,'2024-09-15 15:41:25','2024-09-15 15:41:25','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d','','','2024-09-15 15:41:25','2024-09-15 15:41:25','',0,'http://oha.local/?post_type=qa&#038;p=118',0,'qa','',0);
INSERT INTO `wp_posts` VALUES (119,1,'2024-09-14 15:41:46','2024-09-14 15:41:46','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-2','','','2024-09-15 15:46:22','2024-09-15 15:46:22','',0,'http://oha.local/?post_type=qa&#038;p=119',0,'qa','',0);
INSERT INTO `wp_posts` VALUES (120,1,'2024-09-13 15:42:13','2024-09-13 15:42:13','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-3','','','2024-09-15 15:46:32','2024-09-15 15:46:32','',0,'http://oha.local/?post_type=qa&#038;p=120',0,'qa','',0);
INSERT INTO `wp_posts` VALUES (122,1,'2024-09-15 15:57:07','2024-09-15 15:57:07','','gallery-1','','inherit','open','closed','','gallery-1','','','2024-09-15 15:57:07','2024-09-15 15:57:07','',0,'http://oha.local/wp-content/uploads/2024/09/gallery-1.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (123,1,'2024-09-15 16:00:28','2024-09-15 16:00:28','a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"131\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}','ギャラリー','%e3%82%ae%e3%83%a3%e3%83%a9%e3%83%aa%e3%83%bc','publish','closed','closed','','group_66e704470886d','','','2024-10-18 23:28:23','2024-10-18 23:28:23','',0,'http://oha.local/?post_type=acf-field-group&#038;p=123',0,'acf-field-group','',0);
INSERT INTO `wp_posts` VALUES (124,1,'2024-09-15 16:00:28','2024-09-15 16:00:28','a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}','ギャラリーの画像','gallery_image','publish','closed','closed','','field_66e70447c377d','','','2024-09-15 16:00:28','2024-09-15 16:00:28','',123,'http://oha.local/?post_type=acf-field&p=124',0,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (125,1,'2024-09-15 16:00:28','2024-09-15 16:00:28','a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}','ギャラリーテキスト','gallery_text','publish','closed','closed','','field_66e70471c377e','','','2024-09-15 16:00:28','2024-09-15 16:00:28','',123,'http://oha.local/?post_type=acf-field&p=125',1,'acf-field','',0);
INSERT INTO `wp_posts` VALUES (126,1,'2024-09-15 16:00:50','2024-09-15 16:00:50','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d','','','2024-09-15 16:00:50','2024-09-15 16:00:50','',0,'http://oha.local/?post_type=gallery&#038;p=126',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (127,1,'2024-09-14 16:01:29','2024-09-14 16:01:29','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-2','','','2024-09-15 16:02:33','2024-09-15 16:02:33','',0,'http://oha.local/?post_type=gallery&#038;p=127',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (128,1,'2024-09-15 16:01:14','2024-09-15 16:01:14','','gallery-2','','inherit','open','closed','','gallery-2','','','2024-09-15 16:01:14','2024-09-15 16:01:14','',127,'http://oha.local/wp-content/uploads/2024/09/gallery-2.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (129,1,'2024-09-13 16:01:58','2024-09-13 16:01:58','','自動下書き','','publish','closed','closed','','%e8%87%aa%e5%8b%95%e4%b8%8b%e6%9b%b8%e3%81%8d-3','','','2024-09-15 16:02:27','2024-09-15 16:02:27','',0,'http://oha.local/?post_type=gallery&#038;p=129',0,'gallery','',0);
INSERT INTO `wp_posts` VALUES (130,1,'2024-09-15 16:01:45','2024-09-15 16:01:45','','gallery-3','','inherit','open','closed','','gallery-3','','','2024-09-15 16:01:45','2024-09-15 16:01:45','',129,'http://oha.local/wp-content/uploads/2024/09/gallery-3.png',0,'attachment','image/png',0);
INSERT INTO `wp_posts` VALUES (131,1,'2024-09-21 05:29:58','2024-09-21 05:29:58','','トップページ','','publish','closed','closed','','%e3%83%88%e3%83%83%e3%83%97%e3%83%9a%e3%83%bc%e3%82%b8','','','2024-09-21 05:29:58','2024-09-21 05:29:58','',0,'http://oha.local/?page_id=131',0,'page','',0);
INSERT INTO `wp_posts` VALUES (132,1,'2024-09-21 05:29:58','2024-09-21 05:29:58','','トップページ','','inherit','closed','closed','','131-revision-v1','','','2024-09-21 05:29:58','2024-09-21 05:29:58','',131,'http://oha.local/?p=132',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (134,1,'2024-10-18 23:15:56','2024-10-18 23:15:56','','トップページ','','inherit','closed','closed','','131-autosave-v1','','','2024-10-18 23:15:56','2024-10-18 23:15:56','',131,'http://oha.local/?p=134',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (136,1,'2024-09-21 06:57:38','2024-09-21 06:57:38','','仲介手数料','','inherit','closed','closed','','97-autosave-v1','','','2024-09-21 06:57:38','2024-09-21 06:57:38','',97,'http://oha.local/?p=136',0,'revision','',0);
INSERT INTO `wp_posts` VALUES (138,1,'2024-09-21 08:23:10','2024-09-21 08:23:10','<label> Your name\n    [text* your-name autocomplete:name] </label>\n\n<label> Your email\n    [email* your-email autocomplete:email] </label>\n\n<label> Subject\n    [text* your-subject] </label>\n\n<label> Your message (optional)\n    [textarea your-message] </label>\n\n[submit \"Submit\"]\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@oha.local>\nFrom: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\n[_site_admin_email]\nReply-To: [your-email]\n\n0\n0\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@oha.local>\nMessage Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\n[your-email]\nReply-To: [_site_admin_email]\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.','Contact form 1','','publish','closed','closed','','contact-form-1','','','2024-09-21 08:23:10','2024-09-21 08:23:10','',0,'http://oha.local/?post_type=wpcf7_contact_form&p=138',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (139,1,'2024-09-21 08:29:45','2024-09-21 08:29:45','<div class=\"contact_form\"><div class=\"contact_fields\"><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">お名前 <span class=\"form-field_tag\">必須</span></label></div>[text* your-name class:form-text placeholder \"田中 おは次郎\"]</div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">メールアドレス <span class=\"form-field_tag\">必須</span></label></div>[email* your-email class:form-text placeholder \"info@oha.com\"]</div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">お問い合わせ項目 <span class=\"form-field_tag\">必須</span></label></div><div class=\"form-field_item\"><div class=\"form-field_radios\">[radio radio-612 default:1 \"アプリの質問\" \"取材の依頼\" \"その他\"]</div></div></div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">年代 <span class=\"form-field_tag is-option\">任意</span></label></div><div class=\"form-field_item\">[select your-age class:form-select \"選択してください\" \"10代\" \"20代\" \"30代\" \"40代\" \"50代\" \"60代\" \"70代\" \"80代\"]</div></div></div><div class=\"contact_field\"><div class=\"form-field\"><div class=\"form-field_head\"><label class=\"form-field_label\">お問い合わせ内容 <span class=\"form-field_tag\">必須</span></label></div><div class=\"form-field_item\">[textarea* your-message class:form-textarea placeholder \"ここに文章を入力してください\"]</div></div></div></div><div class=\"contact_privacy\"><label class=\"form-checkbox\">[acceptance acceptance-902 class:form-checkbox_input]<span class=\"form-checkbox_text\"><a href=\"#\" target=\"_blank\" rel=\"noopener\">プライバシーポリシー</a>に同意する</span><span class=\"check-icon\"></span></label></div><div class=\"contact_button\">[submit class:button \"送信する\"]</div></div>\n1\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@oha.local>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] \"[your-subject]\"\n[_site_title] <wordpress@oha.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.','お問い合わせ','','publish','closed','closed','','untitled','','','2024-10-18 22:59:46','2024-10-18 22:59:46','',0,'http://oha.local/?post_type=wpcf7_contact_form&#038;p=139',0,'wpcf7_contact_form','',0);
INSERT INTO `wp_posts` VALUES (141,1,'2024-10-05 06:26:00','0000-00-00 00:00:00','','トップページ','','draft','closed','closed','','','','','2024-10-05 06:26:00','0000-00-00 00:00:00','',0,'http://oha.local/?page_id=141',0,'page','',0);
INSERT INTO `wp_posts` VALUES (142,1,'2024-10-18 22:30:39','0000-00-00 00:00:00','','自動下書き','','auto-draft','open','open','','','','','2024-10-18 22:30:39','0000-00-00 00:00:00','',0,'http://oha.local/?p=142',0,'post','',0);
/*!40000 ALTER TABLE `wp_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_relationships`
--

LOCK TABLES `wp_term_relationships` WRITE;
/*!40000 ALTER TABLE `wp_term_relationships` DISABLE KEYS */;
INSERT INTO `wp_term_relationships` VALUES (1,4,0);
INSERT INTO `wp_term_relationships` VALUES (6,2,0);
INSERT INTO `wp_term_relationships` VALUES (7,2,0);
INSERT INTO `wp_term_relationships` VALUES (8,2,0);
INSERT INTO `wp_term_relationships` VALUES (10,3,0);
INSERT INTO `wp_term_relationships` VALUES (11,3,0);
INSERT INTO `wp_term_relationships` VALUES (12,3,0);
INSERT INTO `wp_term_relationships` VALUES (14,2,0);
INSERT INTO `wp_term_relationships` VALUES (15,3,0);
INSERT INTO `wp_term_relationships` VALUES (40,5,0);
INSERT INTO `wp_term_relationships` VALUES (42,6,0);
INSERT INTO `wp_term_relationships` VALUES (62,9,0);
INSERT INTO `wp_term_relationships` VALUES (64,9,0);
INSERT INTO `wp_term_relationships` VALUES (66,9,0);
INSERT INTO `wp_term_relationships` VALUES (68,10,0);
INSERT INTO `wp_term_relationships` VALUES (70,10,0);
INSERT INTO `wp_term_relationships` VALUES (72,10,0);
/*!40000 ALTER TABLE `wp_term_relationships` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_term_taxonomy`
--

LOCK TABLES `wp_term_taxonomy` WRITE;
/*!40000 ALTER TABLE `wp_term_taxonomy` DISABLE KEYS */;
INSERT INTO `wp_term_taxonomy` VALUES (1,1,'category','',0,0);
INSERT INTO `wp_term_taxonomy` VALUES (2,2,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (3,3,'nav_menu','',0,4);
INSERT INTO `wp_term_taxonomy` VALUES (4,4,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (5,5,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (6,6,'category','',0,1);
INSERT INTO `wp_term_taxonomy` VALUES (9,9,'how_to_use','',0,3);
INSERT INTO `wp_term_taxonomy` VALUES (10,10,'how_to_use','',0,3);
/*!40000 ALTER TABLE `wp_term_taxonomy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_termmeta`
--

DROP TABLE IF EXISTS `wp_termmeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_termmeta`
--

LOCK TABLES `wp_termmeta` WRITE;
/*!40000 ALTER TABLE `wp_termmeta` DISABLE KEYS */;
/*!40000 ALTER TABLE `wp_termmeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_terms`
--

LOCK TABLES `wp_terms` WRITE;
/*!40000 ALTER TABLE `wp_terms` DISABLE KEYS */;
INSERT INTO `wp_terms` VALUES (1,'Uncategorized','uncategorized',0);
INSERT INTO `wp_terms` VALUES (2,'グローバルメニュー','%e3%82%b0%e3%83%ad%e3%83%bc%e3%83%90%e3%83%ab%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc',0);
INSERT INTO `wp_terms` VALUES (3,'ドロワーメニュー','%e3%83%89%e3%83%ad%e3%83%af%e3%83%bc%e3%83%a1%e3%83%8b%e3%83%a5%e3%83%bc',0);
INSERT INTO `wp_terms` VALUES (4,'お知らせ','news',0);
INSERT INTO `wp_terms` VALUES (5,'コラム','columns',0);
INSERT INTO `wp_terms` VALUES (6,'イベント情報','events',0);
INSERT INTO `wp_terms` VALUES (9,'誰かを起こす','type1',0);
INSERT INTO `wp_terms` VALUES (10,'誰かに起こされる','type2',0);
/*!40000 ALTER TABLE `wp_terms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_usermeta`
--

LOCK TABLES `wp_usermeta` WRITE;
/*!40000 ALTER TABLE `wp_usermeta` DISABLE KEYS */;
INSERT INTO `wp_usermeta` VALUES (1,1,'nickname','oha');
INSERT INTO `wp_usermeta` VALUES (2,1,'first_name','');
INSERT INTO `wp_usermeta` VALUES (3,1,'last_name','');
INSERT INTO `wp_usermeta` VALUES (4,1,'description','');
INSERT INTO `wp_usermeta` VALUES (5,1,'rich_editing','true');
INSERT INTO `wp_usermeta` VALUES (6,1,'syntax_highlighting','true');
INSERT INTO `wp_usermeta` VALUES (7,1,'comment_shortcuts','false');
INSERT INTO `wp_usermeta` VALUES (8,1,'admin_color','midnight');
INSERT INTO `wp_usermeta` VALUES (9,1,'use_ssl','0');
INSERT INTO `wp_usermeta` VALUES (10,1,'show_admin_bar_front','true');
INSERT INTO `wp_usermeta` VALUES (11,1,'locale','');
INSERT INTO `wp_usermeta` VALUES (12,1,'wp_capabilities','a:1:{s:13:\"administrator\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (13,1,'wp_user_level','10');
INSERT INTO `wp_usermeta` VALUES (14,1,'dismissed_wp_pointers','');
INSERT INTO `wp_usermeta` VALUES (15,1,'show_welcome_panel','1');
INSERT INTO `wp_usermeta` VALUES (16,1,'session_tokens','a:1:{s:64:\"2b30c64ea5edd43ecaf4c0350ff1f267c73495367422a2a682455452cfedc933\";a:4:{s:10:\"expiration\";i:1729463438;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36\";s:5:\"login\";i:1729290638;}}');
INSERT INTO `wp_usermeta` VALUES (17,1,'wp_dashboard_quick_press_last_post_id','142');
INSERT INTO `wp_usermeta` VALUES (18,1,'managenav-menuscolumnshidden','a:4:{i:0;s:11:\"link-target\";i:1;s:15:\"title-attribute\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";}');
INSERT INTO `wp_usermeta` VALUES (19,1,'metaboxhidden_nav-menus','a:1:{i:0;s:12:\"add-post_tag\";}');
INSERT INTO `wp_usermeta` VALUES (20,1,'nav_menu_recently_edited','3');
INSERT INTO `wp_usermeta` VALUES (21,1,'wp_user-settings','mfold=o&libraryContent=browse&posts_list_mode=list');
INSERT INTO `wp_usermeta` VALUES (22,1,'wp_user-settings-time','1729293535');
INSERT INTO `wp_usermeta` VALUES (23,1,'wp_persisted_preferences','a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:10:\"openPanels\";a:4:{i:0;s:11:\"post-status\";i:1;s:23:\"taxonomy-panel-category\";i:2;s:25:\"taxonomy-panel-how_to_use\";i:3;s:26:\"taxonomy-panel-self_wakeup\";}}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2024-09-14T09:05:54.505Z\";}');
INSERT INTO `wp_usermeta` VALUES (24,1,'closedpostboxes_case','a:1:{i:0;s:23:\"acf-group_66e51cc3db5fe\";}');
INSERT INTO `wp_usermeta` VALUES (25,1,'metaboxhidden_case','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (26,1,'manageedit-acf-taxonomycolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (27,1,'acf_user_settings','a:2:{s:20:\"taxonomies-first-run\";b:1;s:19:\"post-type-first-run\";b:1;}');
INSERT INTO `wp_usermeta` VALUES (28,1,'closedpostboxes_acf-taxonomy','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (29,1,'metaboxhidden_acf-taxonomy','a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (30,1,'manageedit-acf-post-typecolumnshidden','a:1:{i:0;s:7:\"acf-key\";}');
INSERT INTO `wp_usermeta` VALUES (31,1,'closedpostboxes_acf-post-type','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (32,1,'metaboxhidden_acf-post-type','a:2:{i:0;s:21:\"acf-advanced-settings\";i:1;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (33,1,'closedpostboxes_compare','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (34,1,'metaboxhidden_compare','a:1:{i:0;s:7:\"slugdiv\";}');
INSERT INTO `wp_usermeta` VALUES (35,1,'closedpostboxes_page','a:1:{i:0;s:23:\"acf-group_66e698a572375\";}');
INSERT INTO `wp_usermeta` VALUES (36,1,'metaboxhidden_page','a:0:{}');
INSERT INTO `wp_usermeta` VALUES (37,1,'meta-box-order_page','a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:23:\"acf-group_66e698a572375\";s:4:\"side\";s:0:\"\";s:15:\"acf_after_title\";s:0:\"\";}');
INSERT INTO `wp_usermeta` VALUES (38,1,'wpcf7_hide_welcome_panel_on','a:1:{i:0;s:3:\"5.9\";}');
INSERT INTO `wp_usermeta` VALUES (39,1,'edit_page_per_page','20');
/*!40000 ALTER TABLE `wp_usermeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wp_users`
--

LOCK TABLES `wp_users` WRITE;
/*!40000 ALTER TABLE `wp_users` DISABLE KEYS */;
INSERT INTO `wp_users` VALUES (1,'oha','$P$BIIRwZwUYcdXG.TI4MFU8hRLT12JEi/','oha','dev-email@wpengine.local','http://oha.local','2024-09-10 14:45:37','',0,'oha');
/*!40000 ALTER TABLE `wp_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-23 22:04:54
