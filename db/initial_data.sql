-- MySQL dump 10.13  Distrib 5.1.49, for debian-linux-gnu (i686)
--
-- Host: localhost    Database: opal
-- ------------------------------------------------------
-- Server version	5.1.49-1ubuntu8.1-log

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
-- Table structure for table `authentications`
--

DROP TABLE IF EXISTS `authentications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authentications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) DEFAULT NULL,
  `uid` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authentications`
--

LOCK TABLES `authentications` WRITE;
/*!40000 ALTER TABLE `authentications` DISABLE KEYS */;
/*!40000 ALTER TABLE `authentications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category_id` int(11) DEFAULT '0',
  `image_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ancestry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_categories_on_ancestry` (`ancestry`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'Uncategorized',0,NULL,'Things that are just too cool to fit into one category.','2011-12-28 17:16:16','2011-12-28 17:16:16',NULL),(2,'Uncategorized Child',1,NULL,'Things that are just too cool to fit into one category.','2011-12-29 09:26:41','2011-12-29 09:26:41',NULL),(3,'Uncategorized GrandChild',2,NULL,'Things that are just too cool to fit into one category.','2011-12-29 09:26:41','2011-12-29 09:26:41',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `group_plugin_permissions`
--

DROP TABLE IF EXISTS `group_plugin_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_plugin_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) DEFAULT NULL,
  `plugin_id` int(11) DEFAULT NULL,
  `can_create` varchar(1) DEFAULT '0',
  `can_read` varchar(1) DEFAULT '0',
  `can_update` varchar(1) DEFAULT '0',
  `can_delete` varchar(1) DEFAULT '0',
  `requires_approval` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group_plugin_permissions`
--

LOCK TABLES `group_plugin_permissions` WRITE;
/*!40000 ALTER TABLE `group_plugin_permissions` DISABLE KEYS */;
INSERT INTO `group_plugin_permissions` VALUES (1,1,1,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(2,2,1,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(3,1,2,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(4,2,2,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(5,1,3,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(6,2,3,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(7,1,4,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(8,2,4,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(9,1,5,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(10,1,7,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(11,2,7,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(12,1,8,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(13,2,8,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(14,1,9,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(15,2,9,'0','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(16,1,6,'1','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(17,2,6,'1','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(18,2,5,'1','1','0','0','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(19,3,10,'0','1','0','0','0','2011-12-28 17:16:19','2011-12-28 17:16:19'),(20,2,10,'0','1','0','0','0','2011-12-28 17:16:19','2011-12-28 17:16:19'),(21,1,10,'0','1','0','0','0','2011-12-28 17:16:19','2011-12-28 17:16:19');
/*!40000 ALTER TABLE `group_plugin_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_deletable` varchar(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'The Public','People visiting your site that aren\'t logged in.','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(2,'Regular Users','Regular Users that have signed up at your site.','0','2011-12-28 17:16:18','2011-12-28 17:16:18'),(3,'Admins','Supreme Masters. They can access and do anything.','0','2011-12-28 17:16:18','2011-12-28 17:16:18');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `url` varchar(255) DEFAULT '',
  `thumb_url` varchar(255) DEFAULT '',
  `width` varchar(255) DEFAULT '0',
  `height` varchar(255) DEFAULT '0',
  `description` varchar(255) DEFAULT '',
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT '1',
  `is_approved` varchar(1) DEFAULT '0',
  `is_public` varchar(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `featured` tinyint(1) DEFAULT '0',
  `views` int(11) DEFAULT '0',
  `recent_views` int(11) DEFAULT '0',
  `locked` tinyint(1) DEFAULT '0',
  `preview_type` varchar(255) DEFAULT NULL,
  `preview_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `items`
--

LOCK TABLES `items` WRITE;
/*!40000 ALTER TABLE `items` DISABLE KEYS */;
INSERT INTO `items` VALUES (1,'Test Item A','This is a test description.',2,1,'1','1','2011-12-29 09:26:32','2012-03-11 11:07:42',1,35,35,0,NULL,NULL),(2,'Test Item B(with a Really Really Really Really Really Long Name).','This is a test description. It is really really really really really really really really really really really really really really really really really really really really really really really really really really really really really really long.',3,1,'1','1','2011-12-29 09:26:33','2011-12-29 09:26:39',0,0,0,0,'PluginVideo',2),(3,'Test Item C (Unapproved)','This is a test description. This item is neither approved nor Public.',3,1,'0','1','2011-12-29 09:26:33','2011-12-29 09:26:33',0,0,0,0,NULL,NULL),(4,'32342342','34234234',2,1,'1','1','2012-03-11 02:57:53','2012-03-11 02:58:19',0,1,1,0,NULL,NULL);
/*!40000 ALTER TABLE `items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `logs`
--

DROP TABLE IF EXISTS `logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `logs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `item_id` int(11) DEFAULT NULL,
  `log` varchar(255) DEFAULT NULL,
  `log_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `target_type` varchar(255) DEFAULT NULL,
  `target_id` int(11) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `archived_target` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `logs`
--

LOCK TABLES `logs` WRITE;
/*!40000 ALTER TABLE `logs` DISABLE KEYS */;
INSERT INTO `logs` VALUES (1,NULL,NULL,'Opal installed!','system','2011-12-29 09:26:42','2011-12-29 09:26:42',NULL,NULL,NULL,NULL),(2,2,NULL,NULL,'update','2011-12-29 09:31:14','2011-12-29 09:31:14','Page',9,'192.168.56.1',NULL),(3,2,NULL,NULL,'update','2011-12-29 09:31:36','2011-12-29 09:31:36','Page',9,'192.168.56.1',NULL),(4,2,NULL,'Made changes to Setting: Locale','system','2011-12-29 10:04:22','2011-12-29 10:04:22',NULL,NULL,'192.168.56.1',NULL),(5,2,NULL,'Made changes to Setting: Title of Your Site','system','2011-12-29 14:31:03','2011-12-29 14:31:03',NULL,NULL,'192.168.56.1',NULL),(6,2,NULL,'Made changes to Setting: Site Description','system','2011-12-29 14:31:03','2011-12-29 14:31:03',NULL,NULL,'192.168.56.1',NULL),(7,2,NULL,'Made changes to Setting: Page Caching','system','2011-12-29 14:33:02','2011-12-29 14:33:02',NULL,NULL,'192.168.56.1',NULL),(8,2,NULL,'Made changes to Setting: Blog','system','2011-12-29 14:33:02','2011-12-29 14:33:02',NULL,NULL,'192.168.56.1',NULL),(9,2,NULL,'Created Logo: candy2.jpg','system','2011-12-29 14:33:56','2011-12-29 14:33:56',NULL,NULL,'192.168.56.1',NULL),(10,2,NULL,'Created Logo: small_candy.png','system','2011-12-29 14:40:38','2011-12-29 14:40:38',NULL,NULL,'192.168.56.1',NULL),(11,2,NULL,'Created Logo: bubu_icon.png','system','2011-12-29 14:42:02','2011-12-29 14:42:02',NULL,NULL,'192.168.56.1',NULL),(12,2,NULL,NULL,'update','2011-12-29 14:48:33','2011-12-29 14:48:33','Page',9,'192.168.56.1',NULL),(13,2,NULL,NULL,'update','2011-12-29 14:49:55','2011-12-29 14:49:55','Page',13,'192.168.56.1',NULL),(14,2,NULL,NULL,'update','2011-12-29 14:50:23','2011-12-29 14:50:23','Page',13,'192.168.56.1',NULL),(15,2,NULL,NULL,'update','2011-12-29 14:53:17','2011-12-29 14:53:17','Page',14,'192.168.56.1',NULL),(16,2,NULL,NULL,'update','2011-12-29 14:54:57','2011-12-29 14:54:57','Page',13,'192.168.56.1',NULL);
/*!40000 ALTER TABLE `logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `page_comments`
--

DROP TABLE IF EXISTS `page_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `page_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `comment` text,
  `anonymous_email` varchar(255) DEFAULT NULL,
  `anonymous_name` varchar(255) DEFAULT NULL,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `page_comments`
--

LOCK TABLES `page_comments` WRITE;
/*!40000 ALTER TABLE `page_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `page_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT '0',
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `description` varchar(255) DEFAULT '',
  `page_type` varchar(255) DEFAULT 'public',
  `content` text,
  `deletable` tinyint(1) DEFAULT '1',
  `title_editable` tinyint(1) DEFAULT '1',
  `description_editable` tinyint(1) DEFAULT '1',
  `content_editable` tinyint(1) DEFAULT '1',
  `published` tinyint(1) DEFAULT '1',
  `locked` tinyint(1) DEFAULT '0',
  `order_number` int(11) DEFAULT NULL,
  `display_in_menu` tinyint(1) DEFAULT '1',
  `redirect` tinyint(1) DEFAULT '0',
  `redirect_url` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `ancestry` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_ancestry` (`ancestry`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,0,NULL,'banner_top','Banner Top','Any content added here will show at the top of your site. Useful for ad banners and javascript.','system','',1,1,1,1,1,0,0,1,0,NULL,'2011-12-26 03:56:34','2012-01-20 00:35:02',NULL),(2,0,NULL,'banner_bottom','Banner Bottom','Any content added here will show at the bottom of your site. Useful for ad banners and javascript.','system','',1,1,1,1,1,0,1,1,0,NULL,'2011-12-26 03:56:34','2012-01-20 00:35:02',NULL),(3,0,NULL,'new_item','New Item','This page appears when a User is creating a new item.','system','',1,1,1,1,1,0,2,1,0,NULL,'2011-12-26 03:56:35','2012-01-20 00:35:02',NULL),(4,0,NULL,'email_footer','Email Footer','This appears at the bottom of any automated email.','system','This is an automated email. Please do not reply.',1,1,1,1,1,0,3,1,0,NULL,'2011-12-26 03:56:35','2012-01-20 00:35:03',NULL),(5,0,NULL,'homepage_sidebar','Home Page Sidebar','This page appears in the sidebar of the homepage.','system','',1,1,1,1,1,0,4,1,0,NULL,'2011-12-26 03:56:35','2012-01-20 00:35:03',NULL),(6,0,NULL,'website_top','Website Top','Shown at the very very top of the website.','system','',1,1,1,1,1,0,5,1,0,NULL,'2011-12-26 03:56:35','2012-01-20 00:35:03',NULL),(7,0,NULL,'website_bottom','Website Bottom','Shown at the very very bottom of the website.','system','',1,1,1,1,1,0,6,1,0,NULL,'2011-12-26 03:56:35','2012-01-20 00:35:03',NULL),(8,0,NULL,'category_column','Category Column','This page appears below the category menu.','system','',1,1,1,1,1,0,7,1,0,NULL,'2011-12-26 03:56:35','2012-01-20 00:35:03',NULL),(9,0,NULL,'home','Home','The Main Home Page.','public','<div class=\"box_2\">\r\n<h1 class=\"title\">Welcome!</h1><p>Welcome to Opal! This is a sample homepage that you can change from the Administration section.<h2 class=\"title\">Change this section</h2><p>After you log in, Click on the <strong>Administration</strong> link at the top of the page, then click on the <strong>Pages</strong> tab. In the <strong>Public Pages Section</strong>, click on the edit icon next to the page: <span style=\"text-decoration: underline;\">Home</span>. That\'s all there is to it!</p><h2>Additional Help</h2><p style=\"margin-bottom:0\">If you need any more help or would like to learn the ins and outs of Opal, check out the <a href=\"http://dev.hulihanapplications.com/wiki/opal/User%27s_Guide\" target=_blank>Opal User\'s Guide</a>.</p></div>',0,1,1,1,1,1,8,1,0,NULL,'2011-12-26 03:56:35','2011-12-26 03:56:35',NULL),(10,0,NULL,'items','Items','','public','',0,0,1,1,1,1,9,1,0,NULL,'2011-12-26 03:56:35','2011-12-26 03:56:35',NULL),(11,0,NULL,'blog','Blog','','public','',0,1,1,1,1,1,10,1,0,NULL,'2011-12-26 03:56:35','2011-12-26 03:56:35',NULL),(12,0,NULL,'terms_of_service','Terms of Service','The Terms of Service for new users.','public','<h1>Terms of Service</h1>By joining this site, you agree not to add or submit any damaging or offensive content, including by not limited to: pornography, any malicious software or files, violent or hateful images, etc.<br><br>You also agree not to submit any content that is either stolen, plagiarized, or otherwise listed without the consent of the copyright holder.',0,1,1,1,1,1,11,0,0,NULL,'2011-12-26 03:56:35','2011-12-26 03:56:35',NULL),(13,0,NULL,'contact_us','Contact Us','Get in touch with us.','public','<div align=center style=\"margin-bottom:10px\">\r\n<h2 class=\"title\">Contact Us</h2><hr>Get in touch with us.</div>',0,1,1,1,1,1,12,1,0,NULL,'2011-12-26 03:56:35','2011-12-26 03:56:35',NULL);
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_comments`
--

DROP TABLE IF EXISTS `plugin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `comment` text,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `anonymous_email` varchar(255) DEFAULT NULL,
  `anonymous_name` varchar(255) DEFAULT NULL,
  `up_votes` int(11) DEFAULT '0',
  `down_votes` int(11) DEFAULT '0',
  `ancestry` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_plugin_comments_on_ancestry` (`ancestry`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_comments`
--

LOCK TABLES `plugin_comments` WRITE;
/*!40000 ALTER TABLE `plugin_comments` DISABLE KEYS */;
INSERT INTO `plugin_comments` VALUES (1,2,'Thanks for sharing this with us!','1','2011-12-29 09:26:35','2011-12-29 09:26:35',NULL,NULL,0,0,NULL,'Item',1);
/*!40000 ALTER TABLE `plugin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_descriptions`
--

DROP TABLE IF EXISTS `plugin_descriptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_descriptions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_descriptions`
--

LOCK TABLES `plugin_descriptions` WRITE;
/*!40000 ALTER TABLE `plugin_descriptions` DISABLE KEYS */;
INSERT INTO `plugin_descriptions` VALUES (1,2,'A Wonderful Item!','This item is very wonderful.<br><br>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc tempus pellentesque nibh. Cras suscipit, arcu at porttitor porttitor, neque ligula aliquam metus, sit amet egestas velit nulla et eros. Sed ac erat eget eros pellentesque feugiat. Nunc sagittis dolor sit amet velit. Nulla quam. Donec ultrices lacus at risus. Sed in diam eget tortor sagittis congue. Sed vel odio. Integer bibendum purus in nibh. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Duis neque dolor, posuere posuere, volutpat ultrices, sollicitudin elementum, nulla. Morbi interdum urna vitae purus. Suspendisse vitae quam eu diam hendrerit dictum. Maecenas dignissim, mi ut lacinia auctor, mauris sem porttitor lectus, vel consectetur nulla est non neque. Suspendisse hendrerit massa non nisl.<br><br>Cras tortor. Aenean sed tortor. Maecenas orci lectus, viverra nec, molestie nec, pharetra vitae, massa. Cras euismod vestibulum augue. Morbi viverra nisl in purus. Etiam rhoncus dignissim erat. Vivamus a lorem in metus molestie porta. Curabitur nibh. Cras mattis justo ac felis. Morbi commodo, nulla id eleifend eleifend, nisi ligula sollicitudin est, a interdum lorem massa in leo. Suspendisse sit amet enim id nunc feugiat feugiat. Ut euismod neque. Etiam convallis faucibus dui. Cras aliquam ligula eu mauris. Cras vestibulum neque vel nisl. In arcu risus, hendrerit ac, laoreet sit amet, blandit at, nisl. Ut elementum eleifend lectus.<br><br>Nunc molestie enim. Nulla nec diam. Maecenas vel mauris. Pellentesque sit amet sem ac metus egestas tempor. Integer nibh. Donec sed velit a justo posuere sodales. Vestibulum molestie porttitor metus. Ut eleifend enim a lacus. Aliquam pretium dignissim velit. Ut euismod eros nec justo. Mauris pharetra. Nunc imperdiet elementum dui. Nunc et urna. Mauris at odio.','1','2011-12-29 09:26:35','2011-12-29 09:26:35','Item',1);
/*!40000 ALTER TABLE `plugin_descriptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_discussion_posts`
--

DROP TABLE IF EXISTS `plugin_discussion_posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_discussion_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_discussion_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post` text,
  `is_sticky` varchar(1) DEFAULT '1',
  `is_enabled` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_discussion_posts`
--

LOCK TABLES `plugin_discussion_posts` WRITE;
/*!40000 ALTER TABLE `plugin_discussion_posts` DISABLE KEYS */;
INSERT INTO `plugin_discussion_posts` VALUES (1,1,3,'This is a test post.','1','0','2011-12-29 09:26:39','2011-12-29 09:26:39');
/*!40000 ALTER TABLE `plugin_discussion_posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_discussions`
--

DROP TABLE IF EXISTS `plugin_discussions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_discussions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `is_sticky` varchar(1) DEFAULT '0',
  `is_approved` varchar(1) DEFAULT '0',
  `is_closed` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_discussions`
--

LOCK TABLES `plugin_discussions` WRITE;
/*!40000 ALTER TABLE `plugin_discussions` DISABLE KEYS */;
INSERT INTO `plugin_discussions` VALUES (1,NULL,'Test Discussion','This is a test discussion. Feel free to delete this.','0','1','0','2011-12-29 09:26:38','2011-12-29 09:26:38',NULL,NULL);
/*!40000 ALTER TABLE `plugin_discussions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_feature_value_options`
--

DROP TABLE IF EXISTS `plugin_feature_value_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_feature_value_options` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_feature_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_feature_value_options`
--

LOCK TABLES `plugin_feature_value_options` WRITE;
/*!40000 ALTER TABLE `plugin_feature_value_options` DISABLE KEYS */;
INSERT INTO `plugin_feature_value_options` VALUES (1,2,NULL,'Small',NULL,'2011-12-29 09:26:36','2011-12-29 09:26:36'),(2,2,NULL,'Medium',NULL,'2011-12-29 09:26:37','2011-12-29 09:26:37'),(3,2,NULL,'Large',NULL,'2011-12-29 09:26:37','2011-12-29 09:26:37');
/*!40000 ALTER TABLE `plugin_feature_value_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_feature_values`
--

DROP TABLE IF EXISTS `plugin_feature_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_feature_values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_feature_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `value` varchar(255) DEFAULT '',
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_feature_values`
--

LOCK TABLES `plugin_feature_values` WRITE;
/*!40000 ALTER TABLE `plugin_feature_values` DISABLE KEYS */;
INSERT INTO `plugin_feature_values` VALUES (1,1,2,'$200.00 USD','1','2011-12-29 09:26:36','2011-12-29 09:26:36',NULL,'Item',1),(2,2,2,'Large','1','2011-12-29 09:26:37','2011-12-29 09:26:37',NULL,'Item',1);
/*!40000 ALTER TABLE `plugin_feature_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_features`
--

DROP TABLE IF EXISTS `plugin_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT '',
  `order_number` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `icon_url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `search_type` varchar(255) DEFAULT 'Grouped',
  `is_required` tinyint(1) DEFAULT '0',
  `feature_type` varchar(255) DEFAULT 'text',
  `default_value` varchar(255) DEFAULT NULL,
  `min` float DEFAULT NULL,
  `max` float DEFAULT NULL,
  `listed` tinyint(1) DEFAULT '1',
  `category_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_features`
--

LOCK TABLES `plugin_features` WRITE;
/*!40000 ALTER TABLE `plugin_features` DISABLE KEYS */;
INSERT INTO `plugin_features` VALUES (1,'Price',0,'2011-12-29 09:26:36','2011-12-29 09:26:36',NULL,NULL,'Grouped',0,'text',NULL,NULL,NULL,1,NULL),(2,'Size',1,'2011-12-29 09:26:36','2011-12-29 09:26:36',NULL,NULL,'Grouped',0,'option',NULL,NULL,NULL,1,NULL),(3,'Date',1,'2011-12-29 09:26:37','2011-12-29 09:26:37',NULL,NULL,'Grouped',0,'date',NULL,NULL,NULL,1,NULL),(4,'Rank',1,'2011-12-29 09:26:37','2011-12-29 09:26:37',NULL,NULL,'Grouped',0,'slider',NULL,1,10,1,NULL),(5,'Score',1,'2011-12-29 09:26:38','2011-12-29 09:26:38',NULL,NULL,'Grouped',0,'stars',NULL,NULL,5,1,NULL),(6,'Is this awesome?',1,'2011-12-29 09:26:38','2011-12-29 09:26:38',NULL,NULL,'Grouped',0,'yesno',NULL,NULL,5,1,NULL);
/*!40000 ALTER TABLE `plugin_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_files`
--

DROP TABLE IF EXISTS `plugin_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_files` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `filename` varchar(255) DEFAULT NULL,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `downloads` int(11) DEFAULT '0',
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_files`
--

LOCK TABLES `plugin_files` WRITE;
/*!40000 ALTER TABLE `plugin_files` DISABLE KEYS */;
INSERT INTO `plugin_files` VALUES (1,2,'',NULL,'1','2011-12-29 09:26:34','2011-12-29 09:26:34',0,'Item',1,'example.png');
/*!40000 ALTER TABLE `plugin_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_generic_items`
--

DROP TABLE IF EXISTS `plugin_generic_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_generic_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) DEFAULT NULL,
  `child_age_scope` varchar(255) DEFAULT NULL,
  `scores` varchar(255) DEFAULT NULL,
  `tip` text,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_generic_items`
--

LOCK TABLES `plugin_generic_items` WRITE;
/*!40000 ALTER TABLE `plugin_generic_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_generic_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_images`
--

DROP TABLE IF EXISTS `plugin_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `width` varchar(255) DEFAULT '0',
  `height` varchar(255) DEFAULT '0',
  `description` varchar(255) DEFAULT '',
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_images`
--

LOCK TABLES `plugin_images` WRITE;
/*!40000 ALTER TABLE `plugin_images` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_links`
--

DROP TABLE IF EXISTS `plugin_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_links`
--

LOCK TABLES `plugin_links` WRITE;
/*!40000 ALTER TABLE `plugin_links` DISABLE KEYS */;
INSERT INTO `plugin_links` VALUES (1,2,'Item Website','http://www.hulihanapplications.com','1','2011-12-29 09:26:38','2011-12-29 09:26:38','Item',1);
/*!40000 ALTER TABLE `plugin_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_review_votes`
--

DROP TABLE IF EXISTS `plugin_review_votes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_review_votes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_review_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_review_votes`
--

LOCK TABLES `plugin_review_votes` WRITE;
/*!40000 ALTER TABLE `plugin_review_votes` DISABLE KEYS */;
/*!40000 ALTER TABLE `plugin_review_votes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_reviews`
--

DROP TABLE IF EXISTS `plugin_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_reviews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `review_score` float DEFAULT '0',
  `review` text,
  `is_approved` varchar(1) DEFAULT '0',
  `useful_score` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `vote_score` int(11) DEFAULT '0',
  `up_votes` int(11) DEFAULT '0',
  `down_votes` int(11) DEFAULT '0',
  `plugin_review_category_id` int(11) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_reviews`
--

LOCK TABLES `plugin_reviews` WRITE;
/*!40000 ALTER TABLE `plugin_reviews` DISABLE KEYS */;
INSERT INTO `plugin_reviews` VALUES (1,2,5,'I really like this!','1',0,'2011-12-29 09:26:38','2011-12-29 09:26:38',0,0,0,NULL,'Item',1);
/*!40000 ALTER TABLE `plugin_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_settings`
--

DROP TABLE IF EXISTS `plugin_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `plugin_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `setting_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_settings`
--

LOCK TABLES `plugin_settings` WRITE;
/*!40000 ALTER TABLE `plugin_settings` DISABLE KEYS */;
INSERT INTO `plugin_settings` VALUES (1,1,'slideshow_speed','System','2500','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(2,1,'item_thumbnail_width','Plugin','180','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(3,1,'item_thumbnail_height','Plugin','125','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(4,1,'resize_item_images','Plugin','0','bool','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(5,1,'item_image_width','Plugin','500','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(6,1,'item_image_height','Plugin','500','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(7,5,'review_type',NULL,'Stars','option','2011-12-28 17:16:17','2011-12-28 17:16:17','Stars, Slider, Number'),(8,5,'score_min',NULL,'0','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(9,5,'score_max',NULL,'5','string','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(10,7,'login_required_for_download','System','0','bool','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(11,7,'log_downloads','System','0','bool','2011-12-28 17:16:17','2011-12-28 17:16:17',NULL),(12,10,'video_display_mode',NULL,'List','option','2011-12-28 17:16:19','2011-12-28 17:16:19','Full, List'),(13,8,'tag_list_mode',NULL,'Cloud','option','2011-12-28 17:16:20','2011-12-28 17:16:20','Cloud, None');
/*!40000 ALTER TABLE `plugin_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_specific_items`
--

DROP TABLE IF EXISTS `plugin_specific_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_specific_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `price` varchar(255) DEFAULT NULL,
  `word_of_mouth` text,
  `delivery_method` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `vendor_id` int(11) DEFAULT NULL,
  `source_website_name` varchar(255) DEFAULT NULL,
  `source_url` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_specific_items`
--

LOCK TABLES `plugin_specific_items` WRITE;
/*!40000 ALTER TABLE `plugin_specific_items` DISABLE KEYS */;
INSERT INTO `plugin_specific_items` VALUES (1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(2,'2323','2323','2323','Item',1,NULL,'232','3223'),(3,'2323222','2323','2323','Item',1,NULL,'232','3223');
/*!40000 ALTER TABLE `plugin_specific_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_tags`
--

DROP TABLE IF EXISTS `plugin_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT '0',
  `name` varchar(255) DEFAULT NULL,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_plugin_tags_on_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_tags`
--

LOCK TABLES `plugin_tags` WRITE;
/*!40000 ALTER TABLE `plugin_tags` DISABLE KEYS */;
INSERT INTO `plugin_tags` VALUES (1,3,0,'Cool','1','2011-12-29 09:26:38','2011-12-29 09:26:38',NULL,NULL),(2,3,0,'Cool','1','2011-12-29 09:26:38','2011-12-29 09:26:38',NULL,NULL),(3,NULL,0,'234','1','2012-03-11 02:57:53','2012-03-11 02:57:53','Item',4);
/*!40000 ALTER TABLE `plugin_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugin_videos`
--

DROP TABLE IF EXISTS `plugin_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugin_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `code` text,
  `is_approved` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugin_videos`
--

LOCK TABLES `plugin_videos` WRITE;
/*!40000 ALTER TABLE `plugin_videos` DISABLE KEYS */;
INSERT INTO `plugin_videos` VALUES (1,2,'Sample Video','This is a sample video','<div style=\"text-align: center;\"><iframe allowfullscreen=\"true\" src=\"http://www.youtube.com/embed/SIJsCy-LB0g\" frameborder=\"0\" height=\"349\" width=\"560\"></iframe></div>','1','2011-12-29 09:26:39','2011-12-29 09:26:39','Item',1,NULL),(2,2,'Uploaded Video','This is an uploaded sample video.',NULL,'1','2011-12-29 09:26:39','2011-12-29 09:26:40','Item',2,'example.flv');
/*!40000 ALTER TABLE `plugin_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `plugins`
--

DROP TABLE IF EXISTS `plugins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `order_number` int(11) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `is_enabled` varchar(1) DEFAULT '1',
  `is_builtin` varchar(1) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plugins`
--

LOCK TABLES `plugins` WRITE;
/*!40000 ALTER TABLE `plugins` DISABLE KEYS */;
INSERT INTO `plugins` VALUES (1,'Image',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(2,'Description',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(3,'Feature',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(4,'Link',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(5,'Review',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(6,'Comment',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(7,'File',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(8,'Tag',0,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(9,'Discussion',1,'2011-12-28 17:16:16','2011-12-28 17:16:16','1','1'),(10,'Video',2,'2011-12-28 17:16:19','2011-12-28 17:16:19','1','1');
/*!40000 ALTER TABLE `plugins` ENABLE KEYS */;
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
INSERT INTO `schema_migrations` VALUES ('1'),('20'),('20090724224343'),('20091023203501'),('20100119202738'),('20100120172554'),('20100122194449'),('20100122194846'),('20100220031140'),('20100220031448'),('20100312205821'),('20100718190755'),('20100719170130'),('20110111201745'),('20110202194412'),('20110310183526'),('20110409002116'),('20110410001043'),('20110703174654'),('20110704174542'),('20110913034324'),('20110913050217'),('20110915200010'),('20110917023518'),('20110917195950'),('20110917220555'),('20110921212447'),('20111115202301'),('21'),('22'),('23'),('24'),('25'),('26'),('27'),('28'),('3'),('30'),('31'),('32'),('33'),('34'),('35'),('4'),('5');
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES (1,'96bb58c0d201b79170f49e2ccc57a6a3','BAh7ByIQX2NzcmZfdG9rZW4iMUlSZWEybzM3M0U0Vmg4RDBwZURUTzhINnNk\naXZGNUJSUk5QbGZpQUZXZE09Ig5saXN0X3R5cGUiDWRldGFpbGVk\n','2011-12-29 09:11:57','2011-12-29 14:59:04'),(2,'cd1bd4a0abb4e7c709773daaa8baaeea','BAh7AA==\n','2011-12-29 13:50:25','2011-12-29 13:50:25'),(3,'73c61c779766f92ddeb9341fffd553af','BAh7AA==\n','2011-12-29 13:50:25','2011-12-29 13:50:25'),(4,'7c7bb1dc710150e2af2dc7bd6f1e7c1f','BAh7CSIQX2NzcmZfdG9rZW4iMVFLUFBGNDkyVGg1OHYvVDRTRGhTeGNFSjRE\nWUU1Wjk5MUZhQkdWMDRYdGc9IhV1c2VyX2NyZWRlbnRpYWxzIgGAY2RmOWFk\nMjQ3MjkzOTBlYzcyYTAyODJjOTE0YjRkODljNjQ5Yzk0ZjFlODNkNzNhZWI0\nNDVhODM0NDljMjAyZTg3YTcwYjlmMjI5MmU2NzJhNzQ1YjQxYzMyYTE3OWZm\nOTVlYzM5ZTFiOWEwYjcyNDgxMTQ5ZDJkMjU0YTRmNzEiGHVzZXJfY3JlZGVu\ndGlhbHNfaWRpByIKZmxhc2hvOiVBY3Rpb25EaXNwYXRjaDo6Rmxhc2g6OkZs\nYXNoSGFzaAk6CUBub3cwOgxAY2xvc2VkRjoNQGZsYXNoZXN7BjoMc3VjY2Vz\ncyIeVGhpcyBQYWdlIGhhcyBiZWVuIHNhdmVkIToKQHVzZWRvOghTZXQGOgpA\naGFzaHsGOwlU\n','2011-12-29 14:29:03','2011-12-29 14:55:01'),(5,'6ad0c02b95712929a3925508f3b376f6','BAh7CCIQX2NzcmZfdG9rZW4iMXJlQmlvdnBzN1ZzU1RYTW1LdnlmMnJPdmp6\neHREa2xUTTBNUk5zNUQrTjA9IhV1c2VyX2NyZWRlbnRpYWxzIgGAY2RmOWFk\nMjQ3MjkzOTBlYzcyYTAyODJjOTE0YjRkODljNjQ5Yzk0ZjFlODNkNzNhZWI0\nNDVhODM0NDljMjAyZTg3YTcwYjlmMjI5MmU2NzJhNzQ1YjQxYzMyYTE3OWZm\nOTVlYzM5ZTFiOWEwYjcyNDgxMTQ5ZDJkMjU0YTRmNzEiGHVzZXJfY3JlZGVu\ndGlhbHNfaWRpBw==\n','2012-03-11 02:54:40','2012-03-11 11:07:11');
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `setting_type` varchar(255) DEFAULT NULL,
  `value` varchar(255) DEFAULT NULL,
  `item_type` varchar(255) DEFAULT NULL,
  `options` varchar(255) DEFAULT NULL,
  `record_type` varchar(255) DEFAULT NULL,
  `record_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (1,'site_title','Public','BUBU','string',NULL,NULL,NULL),(2,'site_description','Public','中国最大的儿童德智用品专业导购信息网!','string',NULL,NULL,NULL),(3,'theme','Hidden','fracture','string',NULL,NULL,NULL),(4,'max_items_per_user','Item','0','string',NULL,NULL,NULL),(5,'items_per_page','Item','10','string',NULL,NULL,NULL),(6,'item_approval_required','Item','0','bool',NULL,NULL,NULL),(7,'allow_user_registration','User','1','bool',NULL,NULL,NULL),(8,'show_user_login','User','1','bool',NULL,NULL,NULL),(9,'users_can_delete_items','Item','1','bool',NULL,NULL,NULL),(10,'caching','System','1','bool',NULL,NULL,NULL),(11,'enable_item_description','Item','1','bool',NULL,NULL,NULL),(12,'enable_item_date','Item','1','bool',NULL,NULL,NULL),(13,'display_help_sections','Public','0','bool',NULL,NULL,NULL),(14,'list_type','Hidden','detailed','string',NULL,NULL,NULL),(15,'include_child_category_items','Item','1','bool',NULL,NULL,NULL),(16,'allow_item_list_type_changes','Item','1','bool',NULL,NULL,NULL),(17,'enable_navlinks','Item','1','bool',NULL,NULL,NULL),(18,'allow_private_items','Item','1','bool',NULL,NULL,NULL),(19,'let_users_create_items','Item','1','bool',NULL,NULL,NULL),(20,'display_popular_items','Item','1','bool',NULL,NULL,NULL),(21,'display_item_views','Item','1','bool',NULL,NULL,NULL),(22,'email_verification_required','User','0','bool',NULL,NULL,NULL),(23,'allow_page_comments','Public','1','bool',NULL,NULL,NULL),(24,'allow_public_access','System','1','bool',NULL,NULL,NULL),(25,'section_blog','Section','0','bool',NULL,NULL,NULL),(26,'section_items','Section','1','bool',NULL,NULL,NULL),(27,'new_user_notification','User','1','bool',NULL,NULL,NULL),(28,'new_item_notification','Item','1','bool',NULL,NULL,NULL),(29,'display_featured_items','Item','1','bool',NULL,NULL,NULL),(30,'homepage_type','Hidden','new_items','string',NULL,NULL,NULL),(31,'item_page_type','Hidden','summarized','string',NULL,NULL,NULL),(32,'setup_completed','Hidden','0','bool',NULL,NULL,NULL),(33,'locale','Public','cn','special',NULL,NULL,NULL),(34,'allow_item_page_type_changes','Item','1','bool',NULL,NULL,NULL),(35,'default_preview_type','Hidden','PluginImage','string',NULL,NULL,NULL),(36,'host','System','localhost','string',NULL,NULL,NULL),(37,'sender_email','System','noreply@nowhere.com','string',NULL,NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `simple_captcha_data`
--

DROP TABLE IF EXISTS `simple_captcha_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `simple_captcha_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `key` varchar(40) DEFAULT NULL,
  `value` varchar(6) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `simple_captcha_data`
--

LOCK TABLES `simple_captcha_data` WRITE;
/*!40000 ALTER TABLE `simple_captcha_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `simple_captcha_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_infos`
--

DROP TABLE IF EXISTS `user_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT '',
  `city` varchar(255) DEFAULT '',
  `state` varchar(255) DEFAULT '',
  `zip` varchar(255) DEFAULT '',
  `country` varchar(255) DEFAULT '',
  `description` text,
  `interests` varchar(255) DEFAULT '',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `use_gravatar` varchar(1) DEFAULT '0',
  `location` varchar(255) DEFAULT '',
  `forgot_password_code` varchar(255) DEFAULT NULL,
  `notify_of_new_messages` tinyint(1) DEFAULT '1',
  `notify_of_item_changes` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_infos`
--

LOCK TABLES `user_infos` WRITE;
/*!40000 ALTER TABLE `user_infos` DISABLE KEYS */;
INSERT INTO `user_infos` VALUES (2,2,'','','','','',NULL,'','2011-12-29 09:25:46','2011-12-29 09:25:46','0','',NULL,1,1),(3,3,'','','','','',NULL,'','2011-12-29 09:26:29','2011-12-29 09:26:29','0','',NULL,1,1),(4,4,'','','','','',NULL,'','2011-12-29 09:26:31','2011-12-29 09:26:31','0','',NULL,1,1);
/*!40000 ALTER TABLE `user_infos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_messages`
--

DROP TABLE IF EXISTS `user_messages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `message` text,
  `user_id` int(11) DEFAULT NULL,
  `from_user_id` int(11) DEFAULT NULL,
  `to_user_id` int(11) DEFAULT NULL,
  `reply_to_message_id` int(11) DEFAULT '0',
  `is_read` varchar(1) DEFAULT '0',
  `is_deletable` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_messages`
--

LOCK TABLES `user_messages` WRITE;
/*!40000 ALTER TABLE `user_messages` DISABLE KEYS */;
INSERT INTO `user_messages` VALUES (1,'Test message(unread) to test from admin.',3,2,3,0,'0',1,'2011-12-29 09:26:31','2011-12-29 09:26:31'),(2,'Test message(read) to test from admin.',3,2,3,0,'1',1,'2011-12-29 09:26:32','2011-12-29 09:26:32'),(3,'Test Message from Test to Admin.',2,3,2,1,'0',1,'2011-12-29 09:26:32','2011-12-29 09:26:32');
/*!40000 ALTER TABLE `user_messages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_verifications`
--

DROP TABLE IF EXISTS `user_verifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_verifications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `code` varchar(255) DEFAULT '0000000000000000',
  `referrer` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `verification_date` datetime DEFAULT NULL,
  `is_verified` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_verifications`
--

LOCK TABLES `user_verifications` WRITE;
/*!40000 ALTER TABLE `user_verifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `user_verifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) DEFAULT NULL,
  `is_verified` varchar(1) DEFAULT '0',
  `is_disabled` varchar(1) DEFAULT '0',
  `is_admin` varchar(1) DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `registered_ip` varchar(255) DEFAULT '0.0.0.0',
  `last_login_ip` varchar(255) DEFAULT '0.0.0.0',
  `group_id` int(11) DEFAULT '2',
  `locale` varchar(255) DEFAULT NULL,
  `persistence_token` varchar(255) DEFAULT NULL,
  `perishable_token` varchar(255) DEFAULT NULL,
  `single_access_token` varchar(255) DEFAULT NULL,
  `login_count` int(11) DEFAULT '0',
  `failed_login_count` int(11) DEFAULT '0',
  `last_request_at` datetime DEFAULT NULL,
  `current_login_at` datetime DEFAULT NULL,
  `last_login_at` datetime DEFAULT NULL,
  `current_login_ip` varchar(255) DEFAULT NULL,
  `salt` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (2,'admin','admin@test.com','Admin','None','7beeb30f01536d48ff9a7cb10443073726b2534756f54797892d5d2cad9e9d95','1','0','1','2011-12-29 09:25:46','2012-03-11 11:07:41','0.0.0.0','192.168.56.1',3,'en','cdf9ad24729390ec72a0282c914b4d89c649c94f1e83d73aeb445a83449c202e87a70b9f2292e672a745b41c32a179ff95ec39e1b9a0b72481149d2d254a4f71','P7Y5VgB1d5DeTI0UHbz','yJxNi23Jr8XcpdVv5BEg',3,0,'2012-03-11 11:07:41','2012-03-11 02:54:44','2011-12-29 14:29:12','::1','sGnYwfDpQU2QYfSlbaPmvPLgBHHNapscFIxUA3MmuHcUBaCc7HmxeX0Zuz7Dw073',NULL),(3,'test','test@test.com','John','Doe','95888d9750c1742005ef769412ffa47603c7c9d24f68ff67d1d82eda72ce004b','1','0','0','2011-12-29 09:26:29','2011-12-29 09:26:29','0.0.0.0','0.0.0.0',2,NULL,'5b78324b24e56308fc3bfabd5ac1a78a724d473aa1a70a9739bf75231d6e5afc66cf5ad9a19c043533eb7ac7c17bb180b9cb3b29fa4900d1e7eb41bcba34c68f','ONv45bMO7hClfjf5fdii','wIOknO9z8P40rEk8RmWG',0,0,NULL,NULL,NULL,NULL,'1oznrooAjPEeVsR5JnW3Kw3SeiQKI5x1jybQSttQKI8rOGbkcXjZqkmcJlGpP1SZ',NULL),(4,'unverified','unverified@test.com','Unverified','User','e2a40f11122c2dee472a9e9c030459ff7aacf18a75d0bfca7d7f8912d80c16ec','1','0','0','2011-12-29 09:26:31','2011-12-29 09:26:31','0.0.0.0','0.0.0.0',2,NULL,'3759c73fb7098c9dab1e334e0355df9e747de7c58deb315b036be94ccab614913a9f7cdcbf30806e94b12a029c25458532a1d5127cb6d0531824e6d5ad58e53d','72EwaeaCjb6l5PWU4gAv','lD2VGfJeCAS0vSo4tyn',0,0,NULL,NULL,NULL,NULL,'8POol3ATIHo6LbAV3IzRK7VSmBCqHdNPSfygdQiGy4U1gTABk64PDNVm1poPlReF',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vendors`
--

DROP TABLE IF EXISTS `vendors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vendors` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vendors`
--

LOCK TABLES `vendors` WRITE;
/*!40000 ALTER TABLE `vendors` DISABLE KEYS */;
/*!40000 ALTER TABLE `vendors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votings`
--

DROP TABLE IF EXISTS `votings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `voteable_type` varchar(255) DEFAULT NULL,
  `voteable_id` int(11) DEFAULT NULL,
  `voter_type` varchar(255) DEFAULT NULL,
  `voter_id` int(11) DEFAULT NULL,
  `up_vote` tinyint(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unique_voters` (`voteable_type`,`voteable_id`,`voter_type`,`voter_id`),
  KEY `index_votings_on_voteable_type_and_voteable_id` (`voteable_type`,`voteable_id`),
  KEY `index_votings_on_voter_type_and_voter_id` (`voter_type`,`voter_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votings`
--

LOCK TABLES `votings` WRITE;
/*!40000 ALTER TABLE `votings` DISABLE KEYS */;
/*!40000 ALTER TABLE `votings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-03-11 19:25:31
