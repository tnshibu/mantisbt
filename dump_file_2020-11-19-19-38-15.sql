-- MySQL dump 10.13  Distrib 8.0.22, for Linux (x86_64)
--
-- Host: localhost    Database: bugtracker
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `mantis_api_token_table`
--

DROP TABLE IF EXISTS `mantis_api_token_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_api_token_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  `hash` varchar(128) NOT NULL,
  `date_created` int unsigned NOT NULL DEFAULT '1',
  `date_used` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_id_name` (`user_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_api_token_table`
--

LOCK TABLES `mantis_api_token_table` WRITE;
/*!40000 ALTER TABLE `mantis_api_token_table` DISABLE KEYS */;
INSERT INTO `mantis_api_token_table` VALUES (1,2,'test','722878b896e3e5d6f36176837970a014cb202e42393563e8e33e0573a4734785',1605033378,1);
/*!40000 ALTER TABLE `mantis_api_token_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_file_table`
--

DROP TABLE IF EXISTS `mantis_bug_file_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_file_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob,
  `date_added` int unsigned NOT NULL DEFAULT '1',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `bugnote_id` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_bug_file_bug_id` (`bug_id`),
  KEY `idx_diskfile` (`diskfile`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_file_table`
--

LOCK TABLES `mantis_bug_file_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_file_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bug_file_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_history_table`
--

DROP TABLE IF EXISTS `mantis_bug_history_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_history_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `bug_id` int unsigned NOT NULL DEFAULT '0',
  `field_name` varchar(64) NOT NULL,
  `old_value` varchar(255) NOT NULL,
  `new_value` varchar(255) NOT NULL,
  `type` smallint NOT NULL DEFAULT '0',
  `date_modified` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_history_bug_id` (`bug_id`),
  KEY `idx_history_user_id` (`user_id`),
  KEY `idx_bug_history_date_modified` (`date_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_history_table`
--

LOCK TABLES `mantis_bug_history_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_history_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_history_table` VALUES (27,1,8,'','','',1,1605006763),(28,1,8,'status','10','50',0,1605006763),(29,1,8,'handler_id','0','5',0,1605006763),(30,1,9,'','','',1,1605006813),(31,1,9,'status','10','50',0,1605006813),(32,1,9,'handler_id','0','8',0,1605006813),(33,1,9,'','1','8',18,1605006865),(34,1,8,'','1','9',18,1605006865),(35,1,10,'','','',1,1605006931),(36,1,10,'status','10','50',0,1605006931),(37,1,10,'handler_id','0','10',0,1605006931),(53,2,12,'','','',1,1605165698),(54,2,12,'status','10','50',0,1605165698),(55,2,12,'handler_id','0','4',0,1605165698),(56,2,13,'','','',1,1605165750),(57,2,13,'status','10','50',0,1605165750),(58,2,13,'handler_id','0','16',0,1605165750),(59,2,14,'','','',1,1605165811),(60,2,14,'status','10','50',0,1605165811),(61,2,14,'handler_id','0','2',0,1605165811),(62,2,15,'','','',1,1605165839),(63,2,15,'status','10','50',0,1605165839),(64,2,15,'handler_id','0','12',0,1605165839),(65,5,8,'','0000003','',2,1605615935);
/*!40000 ALTER TABLE `mantis_bug_history_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_monitor_table`
--

DROP TABLE IF EXISTS `mantis_bug_monitor_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_monitor_table` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `bug_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`bug_id`),
  KEY `idx_bug_id` (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_monitor_table`
--

LOCK TABLES `mantis_bug_monitor_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_monitor_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bug_monitor_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_relationship_table`
--

DROP TABLE IF EXISTS `mantis_bug_relationship_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_relationship_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `source_bug_id` int unsigned NOT NULL DEFAULT '0',
  `destination_bug_id` int unsigned NOT NULL DEFAULT '0',
  `relationship_type` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idx_relationship_source` (`source_bug_id`),
  KEY `idx_relationship_destination` (`destination_bug_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_relationship_table`
--

LOCK TABLES `mantis_bug_relationship_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_relationship_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_relationship_table` VALUES (1,9,8,1);
/*!40000 ALTER TABLE `mantis_bug_relationship_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_revision_table`
--

DROP TABLE IF EXISTS `mantis_bug_revision_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_revision_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int unsigned NOT NULL,
  `bugnote_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL,
  `type` int unsigned NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_rev_type` (`type`),
  KEY `idx_bug_rev_id_time` (`bug_id`,`timestamp`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_revision_table`
--

LOCK TABLES `mantis_bug_revision_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_revision_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bug_revision_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_table`
--

DROP TABLE IF EXISTS `mantis_bug_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `reporter_id` int unsigned NOT NULL DEFAULT '0',
  `handler_id` int unsigned NOT NULL DEFAULT '0',
  `duplicate_id` int unsigned NOT NULL DEFAULT '0',
  `priority` smallint NOT NULL DEFAULT '30',
  `severity` smallint NOT NULL DEFAULT '50',
  `reproducibility` smallint NOT NULL DEFAULT '10',
  `status` smallint NOT NULL DEFAULT '10',
  `resolution` smallint NOT NULL DEFAULT '10',
  `projection` smallint NOT NULL DEFAULT '10',
  `eta` smallint NOT NULL DEFAULT '10',
  `bug_text_id` int unsigned NOT NULL DEFAULT '0',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `version` varchar(64) NOT NULL DEFAULT '',
  `fixed_in_version` varchar(64) NOT NULL DEFAULT '',
  `build` varchar(32) NOT NULL DEFAULT '',
  `profile_id` int unsigned NOT NULL DEFAULT '0',
  `view_state` smallint NOT NULL DEFAULT '10',
  `summary` varchar(128) NOT NULL DEFAULT '',
  `sponsorship_total` int NOT NULL DEFAULT '0',
  `sticky` tinyint NOT NULL DEFAULT '0',
  `target_version` varchar(64) NOT NULL DEFAULT '',
  `category_id` int unsigned NOT NULL DEFAULT '1',
  `date_submitted` int unsigned NOT NULL DEFAULT '1',
  `due_date` int unsigned NOT NULL DEFAULT '1',
  `last_updated` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug_sponsorship_total` (`sponsorship_total`),
  KEY `idx_bug_fixed_in_version` (`fixed_in_version`),
  KEY `idx_bug_status` (`status`),
  KEY `idx_project` (`project_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_table`
--

LOCK TABLES `mantis_bug_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_table` VALUES (8,1,1,5,0,30,10,70,50,10,10,10,8,'','','','','','',0,10,'OAUTH implement in day trader - UI',0,0,'',1,1605006763,1,1605615935),(9,1,1,8,0,30,10,70,50,10,10,10,9,'','','','','','',0,10,'OAUTH implement in day trader - Server side',0,0,'',1,1605006813,1,1605006865),(10,1,1,10,0,30,10,70,50,10,10,10,10,'','','','','','',0,10,'Redis Cache implement in day trader',0,0,'',1,1605006931,1,1605006931),(12,1,2,4,0,30,50,70,50,10,10,10,12,'','','','','','',0,10,'Try out sendpulse',0,0,'',1,1605165698,1,1605165698),(13,1,2,16,0,30,50,70,50,10,10,10,13,'','','','','','',0,10,'Try out moosend',0,0,'',1,1605165750,1,1605165750),(14,1,2,2,0,30,50,70,50,10,10,10,14,'','','','','','',0,10,'Terraform implementation for daytrader',0,0,'',1,1605165811,1,1605165811),(15,1,2,12,0,30,50,70,50,10,10,10,15,'','','','','','',0,10,'Signature recognition',0,0,'',1,1605165839,1,1605165839);
/*!40000 ALTER TABLE `mantis_bug_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_tag_table`
--

DROP TABLE IF EXISTS `mantis_bug_tag_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_tag_table` (
  `bug_id` int unsigned NOT NULL DEFAULT '0',
  `tag_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `date_attached` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`bug_id`,`tag_id`),
  KEY `idx_bug_tag_tag_id` (`tag_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_tag_table`
--

LOCK TABLES `mantis_bug_tag_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_tag_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_bug_tag_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bug_text_table`
--

DROP TABLE IF EXISTS `mantis_bug_text_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bug_text_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext NOT NULL,
  `steps_to_reproduce` longtext NOT NULL,
  `additional_information` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bug_text_table`
--

LOCK TABLES `mantis_bug_text_table` WRITE;
/*!40000 ALTER TABLE `mantis_bug_text_table` DISABLE KEYS */;
INSERT INTO `mantis_bug_text_table` VALUES (8,'OAUTH implement in day trader - UI Side','',''),(9,'OAUTH implement in day trader - Server side','',''),(10,'Redis Cache implement in day trader','',''),(12,'Puneet,\r\nCan you sign up for https://sendpulse.com/prices/smtp\r\n','',''),(13,'Hi Meenakshi,\r\nPlease try out https://moosend.com/pricing/\r\nOur aim is to be able to send email using their API and using the free tier.\r\n','',''),(14,'From: Aniket Mhala \r\nSent: Thursday, November 12, 2020 12:43 PM\r\nTo: Shibu Narayanan <shibu.narayanan@oracle.com>; Arun Amirtharaj Rajendran <arun.amirtharaj@oracle.com>\r\nSubject: Terraform Tutorials - HashiCorp Learn\r\n\r\nShibu and Arun,\r\nAs you know that we need to have scripted solution for production and we need to build this skill across PSD starting with us. FlexCube is using 100% Terraform to automate all their cloud an dK8 stuff.\r\nThe below link has good tutorial for how to use Terraform for  Azure, AWS , K8. We need to start with three of you (Punit. Arun and Shibu) to understand and use it to script day trader as a part of enterprise MVP\r\nhttps://learn.hashicorp.com/terraform \r\nLet me know your views.\r\nRegards\r\nAniket\r\n','',''),(15,'Signature recognition','','');
/*!40000 ALTER TABLE `mantis_bug_text_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bugnote_table`
--

DROP TABLE IF EXISTS `mantis_bugnote_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bugnote_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `bug_id` int unsigned NOT NULL DEFAULT '0',
  `reporter_id` int unsigned NOT NULL DEFAULT '0',
  `bugnote_text_id` int unsigned NOT NULL DEFAULT '0',
  `view_state` smallint NOT NULL DEFAULT '10',
  `note_type` int DEFAULT '0',
  `note_attr` varchar(250) DEFAULT '',
  `time_tracking` int unsigned NOT NULL DEFAULT '0',
  `last_modified` int unsigned NOT NULL DEFAULT '1',
  `date_submitted` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_bug` (`bug_id`),
  KEY `idx_last_mod` (`last_modified`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bugnote_table`
--

LOCK TABLES `mantis_bugnote_table` WRITE;
/*!40000 ALTER TABLE `mantis_bugnote_table` DISABLE KEYS */;
INSERT INTO `mantis_bugnote_table` VALUES (3,8,5,3,10,0,'',0,1605615935,1605615935);
/*!40000 ALTER TABLE `mantis_bugnote_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_bugnote_text_table`
--

DROP TABLE IF EXISTS `mantis_bugnote_text_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_bugnote_text_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_bugnote_text_table`
--

LOCK TABLES `mantis_bugnote_text_table` WRITE;
/*!40000 ALTER TABLE `mantis_bugnote_text_table` DISABLE KEYS */;
INSERT INTO `mantis_bugnote_text_table` VALUES (3,'getting issue while registering because the token was going as null so resolved that issue and tried to keep all the classes which will be in common for all microservices in common folder but its not working so we will do changes and keep the classes in separate microservices');
/*!40000 ALTER TABLE `mantis_bugnote_text_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_category_table`
--

DROP TABLE IF EXISTS `mantis_category_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_category_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_category_project_name` (`project_id`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_category_table`
--

LOCK TABLES `mantis_category_table` WRITE;
/*!40000 ALTER TABLE `mantis_category_table` DISABLE KEYS */;
INSERT INTO `mantis_category_table` VALUES (1,0,0,'General',0);
/*!40000 ALTER TABLE `mantis_category_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_config_table`
--

DROP TABLE IF EXISTS `mantis_config_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_config_table` (
  `config_id` varchar(64) NOT NULL,
  `project_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `access_reqd` int DEFAULT '0',
  `type` int DEFAULT '90',
  `value` longtext NOT NULL,
  PRIMARY KEY (`config_id`,`project_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_config_table`
--

LOCK TABLES `mantis_config_table` WRITE;
/*!40000 ALTER TABLE `mantis_config_table` DISABLE KEYS */;
INSERT INTO `mantis_config_table` VALUES ('database_version',0,0,90,1,'210');
/*!40000 ALTER TABLE `mantis_config_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_custom_field_project_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_project_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_custom_field_project_table` (
  `field_id` int NOT NULL DEFAULT '0',
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `sequence` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`field_id`,`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_custom_field_project_table`
--

LOCK TABLES `mantis_custom_field_project_table` WRITE;
/*!40000 ALTER TABLE `mantis_custom_field_project_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_custom_field_project_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_custom_field_string_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_string_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_custom_field_string_table` (
  `field_id` int NOT NULL DEFAULT '0',
  `bug_id` int NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  `text` longtext,
  PRIMARY KEY (`field_id`,`bug_id`),
  KEY `idx_custom_field_bug` (`bug_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_custom_field_string_table`
--

LOCK TABLES `mantis_custom_field_string_table` WRITE;
/*!40000 ALTER TABLE `mantis_custom_field_string_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_custom_field_string_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_custom_field_table`
--

DROP TABLE IF EXISTS `mantis_custom_field_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_custom_field_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL DEFAULT '',
  `type` smallint NOT NULL DEFAULT '0',
  `possible_values` text,
  `default_value` varchar(255) NOT NULL DEFAULT '',
  `valid_regexp` varchar(255) NOT NULL DEFAULT '',
  `access_level_r` smallint NOT NULL DEFAULT '0',
  `access_level_rw` smallint NOT NULL DEFAULT '0',
  `length_min` int NOT NULL DEFAULT '0',
  `length_max` int NOT NULL DEFAULT '0',
  `require_report` tinyint NOT NULL DEFAULT '0',
  `require_update` tinyint NOT NULL DEFAULT '0',
  `display_report` tinyint NOT NULL DEFAULT '0',
  `display_update` tinyint NOT NULL DEFAULT '1',
  `require_resolved` tinyint NOT NULL DEFAULT '0',
  `display_resolved` tinyint NOT NULL DEFAULT '0',
  `display_closed` tinyint NOT NULL DEFAULT '0',
  `require_closed` tinyint NOT NULL DEFAULT '0',
  `filter_by` tinyint NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_custom_field_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_custom_field_table`
--

LOCK TABLES `mantis_custom_field_table` WRITE;
/*!40000 ALTER TABLE `mantis_custom_field_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_custom_field_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_email_table`
--

DROP TABLE IF EXISTS `mantis_email_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_email_table` (
  `email_id` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(64) NOT NULL DEFAULT '',
  `subject` varchar(250) NOT NULL DEFAULT '',
  `metadata` longtext NOT NULL,
  `body` longtext NOT NULL,
  `submitted` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`email_id`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_email_table`
--

LOCK TABLES `mantis_email_table` WRITE;
/*!40000 ALTER TABLE `mantis_email_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_email_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_filters_table`
--

DROP TABLE IF EXISTS `mantis_filters_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_filters_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL DEFAULT '0',
  `project_id` int NOT NULL DEFAULT '0',
  `is_public` tinyint DEFAULT NULL,
  `name` varchar(64) NOT NULL DEFAULT '',
  `filter_string` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_filters_table`
--

LOCK TABLES `mantis_filters_table` WRITE;
/*!40000 ALTER TABLE `mantis_filters_table` DISABLE KEYS */;
INSERT INTO `mantis_filters_table` VALUES (1,4,-1,0,'','v9#{\"_version\":\"v9\",\"_view_type\":\"simple\",\"category_id\":[\"0\"],\"severity\":[0],\"status\":[0],\"per_page\":50,\"highlight_changed\":6,\"reporter_id\":[-1],\"handler_id\":[0],\"project_id\":[-3],\"sort\":\"last_updated\",\"dir\":\"DESC\",\"filter_by_date\":false,\"start_month\":11,\"start_day\":1,\"start_year\":2020,\"end_month\":11,\"end_day\":9,\"end_year\":2020,\"filter_by_last_updated_date\":false,\"last_updated_start_month\":11,\"last_updated_start_day\":1,\"last_updated_start_year\":2020,\"last_updated_end_month\":11,\"last_updated_end_day\":9,\"last_updated_end_year\":2020,\"search\":\"\",\"hide_status\":[90],\"resolution\":[0],\"build\":[\"0\"],\"version\":[\"0\"],\"fixed_in_version\":[\"0\"],\"target_version\":[\"0\"],\"priority\":[0],\"monitor_user_id\":[0],\"view_state\":0,\"custom_fields\":[],\"sticky\":true,\"relationship_type\":-1,\"relationship_bug\":0,\"profile_id\":[0],\"platform\":[\"0\"],\"os\":[\"0\"],\"os_build\":[\"0\"],\"tag_string\":\"\",\"tag_select\":0,\"note_user_id\":[0],\"match_type\":0}');
/*!40000 ALTER TABLE `mantis_filters_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_news_table`
--

DROP TABLE IF EXISTS `mantis_news_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_news_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `poster_id` int unsigned NOT NULL DEFAULT '0',
  `view_state` smallint NOT NULL DEFAULT '10',
  `announcement` tinyint NOT NULL DEFAULT '0',
  `headline` varchar(64) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `last_modified` int unsigned NOT NULL DEFAULT '1',
  `date_posted` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_news_table`
--

LOCK TABLES `mantis_news_table` WRITE;
/*!40000 ALTER TABLE `mantis_news_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_news_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_plugin_table`
--

DROP TABLE IF EXISTS `mantis_plugin_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_plugin_table` (
  `basename` varchar(40) NOT NULL,
  `enabled` tinyint NOT NULL DEFAULT '0',
  `protected` tinyint NOT NULL DEFAULT '0',
  `priority` int unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`basename`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_plugin_table`
--

LOCK TABLES `mantis_plugin_table` WRITE;
/*!40000 ALTER TABLE `mantis_plugin_table` DISABLE KEYS */;
INSERT INTO `mantis_plugin_table` VALUES ('MantisCoreFormatting',1,0,3);
/*!40000 ALTER TABLE `mantis_plugin_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_file_table`
--

DROP TABLE IF EXISTS `mantis_project_file_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_project_file_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `description` varchar(250) NOT NULL DEFAULT '',
  `diskfile` varchar(250) NOT NULL DEFAULT '',
  `filename` varchar(250) NOT NULL DEFAULT '',
  `folder` varchar(250) NOT NULL DEFAULT '',
  `filesize` int NOT NULL DEFAULT '0',
  `file_type` varchar(250) NOT NULL DEFAULT '',
  `content` longblob,
  `date_added` int unsigned NOT NULL DEFAULT '1',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_file_table`
--

LOCK TABLES `mantis_project_file_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_file_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_file_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_hierarchy_table`
--

DROP TABLE IF EXISTS `mantis_project_hierarchy_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_project_hierarchy_table` (
  `child_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL,
  `inherit_parent` tinyint NOT NULL DEFAULT '0',
  UNIQUE KEY `idx_project_hierarchy` (`child_id`,`parent_id`),
  KEY `idx_project_hierarchy_child_id` (`child_id`),
  KEY `idx_project_hierarchy_parent_id` (`parent_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_hierarchy_table`
--

LOCK TABLES `mantis_project_hierarchy_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_hierarchy_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_hierarchy_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_table`
--

DROP TABLE IF EXISTS `mantis_project_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_project_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL DEFAULT '',
  `status` smallint NOT NULL DEFAULT '10',
  `enabled` tinyint NOT NULL DEFAULT '1',
  `view_state` smallint NOT NULL DEFAULT '10',
  `access_min` smallint NOT NULL DEFAULT '10',
  `file_path` varchar(250) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `category_id` int unsigned NOT NULL DEFAULT '1',
  `inherit_global` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_name` (`name`),
  KEY `idx_project_view` (`view_state`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_table`
--

LOCK TABLES `mantis_project_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_table` DISABLE KEYS */;
INSERT INTO `mantis_project_table` VALUES (1,'Seed Team',10,1,10,10,'','',1,1);
/*!40000 ALTER TABLE `mantis_project_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_user_list_table`
--

DROP TABLE IF EXISTS `mantis_project_user_list_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_project_user_list_table` (
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `access_level` smallint NOT NULL DEFAULT '10',
  PRIMARY KEY (`project_id`,`user_id`),
  KEY `idx_project_user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_user_list_table`
--

LOCK TABLES `mantis_project_user_list_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_user_list_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_user_list_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_project_version_table`
--

DROP TABLE IF EXISTS `mantis_project_version_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_project_version_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `version` varchar(64) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `released` tinyint NOT NULL DEFAULT '1',
  `obsolete` tinyint NOT NULL DEFAULT '0',
  `date_order` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_project_version` (`project_id`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_project_version_table`
--

LOCK TABLES `mantis_project_version_table` WRITE;
/*!40000 ALTER TABLE `mantis_project_version_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_project_version_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_sponsorship_table`
--

DROP TABLE IF EXISTS `mantis_sponsorship_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_sponsorship_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `bug_id` int NOT NULL DEFAULT '0',
  `user_id` int NOT NULL DEFAULT '0',
  `amount` int NOT NULL DEFAULT '0',
  `logo` varchar(128) NOT NULL DEFAULT '',
  `url` varchar(128) NOT NULL DEFAULT '',
  `paid` tinyint NOT NULL DEFAULT '0',
  `date_submitted` int unsigned NOT NULL DEFAULT '1',
  `last_updated` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_sponsorship_bug_id` (`bug_id`),
  KEY `idx_sponsorship_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_sponsorship_table`
--

LOCK TABLES `mantis_sponsorship_table` WRITE;
/*!40000 ALTER TABLE `mantis_sponsorship_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_sponsorship_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_tag_table`
--

DROP TABLE IF EXISTS `mantis_tag_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_tag_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `date_created` int unsigned NOT NULL DEFAULT '1',
  `date_updated` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`,`name`),
  KEY `idx_tag_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_tag_table`
--

LOCK TABLES `mantis_tag_table` WRITE;
/*!40000 ALTER TABLE `mantis_tag_table` DISABLE KEYS */;
INSERT INTO `mantis_tag_table` VALUES (1,7,'testing','',1604985904,1604985904);
/*!40000 ALTER TABLE `mantis_tag_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_tokens_table`
--

DROP TABLE IF EXISTS `mantis_tokens_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_tokens_table` (
  `id` int NOT NULL AUTO_INCREMENT,
  `owner` int NOT NULL,
  `type` int NOT NULL,
  `value` longtext NOT NULL,
  `timestamp` int unsigned NOT NULL DEFAULT '1',
  `expiry` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `idx_typeowner` (`type`,`owner`)
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_tokens_table`
--

LOCK TABLES `mantis_tokens_table` WRITE;
/*!40000 ALTER TABLE `mantis_tokens_table` DISABLE KEYS */;
INSERT INTO `mantis_tokens_table` VALUES (9,2,5,'{\"filter\":true}',1604762035,1636298079),(19,3,5,'{\"filter\":false,\"profile\":false}',1604893723,1636429723),(28,4,5,'{\"filter\":false,\"sidebar\":false}',1604906536,1636442536),(43,7,5,'{\"filter\":true,\"sidebar\":true,\"assigned\":false,\"unassigned\":false,\"reported\":false,\"resolved\":false}',1604985739,1637223615),(48,8,5,'{\"filter\":false,\"sidebar\":false,\"assigned\":false}',1604989122,1636525122),(56,10,5,'{\"filter\":true}',1604991112,1636527112),(92,17,5,'{\"filter\":false,\"assigned\":false}',1605178443,1636714443);
/*!40000 ALTER TABLE `mantis_tokens_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_pref_table`
--

DROP TABLE IF EXISTS `mantis_user_pref_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_user_pref_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `project_id` int unsigned NOT NULL DEFAULT '0',
  `default_profile` int unsigned NOT NULL DEFAULT '0',
  `default_project` int unsigned NOT NULL DEFAULT '0',
  `refresh_delay` int NOT NULL DEFAULT '0',
  `redirect_delay` int NOT NULL DEFAULT '0',
  `bugnote_order` varchar(4) NOT NULL DEFAULT 'ASC',
  `email_on_new` tinyint NOT NULL DEFAULT '0',
  `email_on_assigned` tinyint NOT NULL DEFAULT '0',
  `email_on_feedback` tinyint NOT NULL DEFAULT '0',
  `email_on_resolved` tinyint NOT NULL DEFAULT '0',
  `email_on_closed` tinyint NOT NULL DEFAULT '0',
  `email_on_reopened` tinyint NOT NULL DEFAULT '0',
  `email_on_bugnote` tinyint NOT NULL DEFAULT '0',
  `email_on_status` tinyint NOT NULL DEFAULT '0',
  `email_on_priority` tinyint NOT NULL DEFAULT '0',
  `email_on_priority_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_status_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_bugnote_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_reopened_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_closed_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_resolved_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_feedback_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_assigned_min_severity` smallint NOT NULL DEFAULT '10',
  `email_on_new_min_severity` smallint NOT NULL DEFAULT '10',
  `email_bugnote_limit` smallint NOT NULL DEFAULT '0',
  `language` varchar(32) NOT NULL DEFAULT 'english',
  `timezone` varchar(32) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_pref_table`
--

LOCK TABLES `mantis_user_pref_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_pref_table` DISABLE KEYS */;
INSERT INTO `mantis_user_pref_table` VALUES (1,2,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(2,3,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(3,4,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(4,6,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(5,7,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(6,8,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(7,9,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(8,10,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(9,11,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(10,5,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(11,14,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(12,17,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC'),(13,16,0,0,1,30,2,'ASC',1,1,1,1,1,1,1,0,0,0,0,0,0,0,0,0,0,0,0,'auto','UTC');
/*!40000 ALTER TABLE `mantis_user_pref_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_print_pref_table`
--

DROP TABLE IF EXISTS `mantis_user_print_pref_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_user_print_pref_table` (
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `print_pref` varchar(64) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_print_pref_table`
--

LOCK TABLES `mantis_user_print_pref_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_print_pref_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_user_print_pref_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_profile_table`
--

DROP TABLE IF EXISTS `mantis_user_profile_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_user_profile_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `platform` varchar(32) NOT NULL DEFAULT '',
  `os` varchar(32) NOT NULL DEFAULT '',
  `os_build` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_profile_table`
--

LOCK TABLES `mantis_user_profile_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_profile_table` DISABLE KEYS */;
/*!40000 ALTER TABLE `mantis_user_profile_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mantis_user_table`
--

DROP TABLE IF EXISTS `mantis_user_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mantis_user_table` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(191) NOT NULL DEFAULT '',
  `realname` varchar(191) NOT NULL DEFAULT '',
  `email` varchar(191) NOT NULL DEFAULT '',
  `password` varchar(64) NOT NULL DEFAULT '',
  `enabled` tinyint NOT NULL DEFAULT '1',
  `protected` tinyint NOT NULL DEFAULT '0',
  `access_level` smallint NOT NULL DEFAULT '10',
  `login_count` int NOT NULL DEFAULT '0',
  `lost_password_request_count` smallint NOT NULL DEFAULT '0',
  `failed_login_count` smallint NOT NULL DEFAULT '0',
  `cookie_string` varchar(64) NOT NULL DEFAULT '',
  `last_visit` int unsigned NOT NULL DEFAULT '1',
  `date_created` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `idx_user_cookie_string` (`cookie_string`),
  UNIQUE KEY `idx_user_username` (`username`),
  KEY `idx_enable` (`enabled`),
  KEY `idx_access` (`access_level`),
  KEY `idx_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mantis_user_table`
--

LOCK TABLES `mantis_user_table` WRITE;
/*!40000 ALTER TABLE `mantis_user_table` DISABLE KEYS */;
INSERT INTO `mantis_user_table` VALUES (1,'administrator','Admin','tnshibu@yahoo.com','21232f297a57a5a743894a0e4a801fc3',1,0,90,31,0,0,'RMPmBq1WHJt54fW5o5DF4x1vCW-J6FTHcjo1BbqbPRr9mUlP-v7Ctdwv5ZpAkvq8',1605175925,1604690633),(2,'shibu','shibu 1','shibu.narayanan@oracle.com','650f935934ea8e7492353c9dccd40045',1,0,55,8,0,0,'gXrCNtiWkrsDKMmplsO70z6v7YNZrpFaP-2kJl22uU2YI6xIr5JtFndLlh6uGw-B',1605166144,1604761856),(3,'amirtharaj','Arun Amirtharaj','arun.amirtharaj@oracle.com','7929af211c005c938006f140043a5780',1,0,55,4,0,0,'R_BsAxuGatHXjNVRLPfZ1FyV_DEVyjfU1pS_f_IKRgJfi09_isrGMPpQAuGUewVj',1604905672,1604893630),(4,'puneetss','Puneet Singh','p.puneet.singh@oracle.com','1c63129ae9db9c60c3e8aa94d3e00495',1,0,55,4,0,0,'bbUC_KWpt8yS2vfjzv0oEnkYg5fNJqD7AofPBBiXdN7NlvEdMm6F0xaJ3fdzhg_8',1605685522,1604906149),(5,'balachandra','balachandra','balachandra.thambi@oracle.com','f87be07fe7df79216a5ebd5d74efbab4',1,0,55,5,0,0,'TAxgHnirnJ4pb2mfmETXm65Vxwn5yfvz4uD1eTBZXWhgwJHrFN3YjYeV4B-yxwOO',1605615936,1604982674),(6,'avinash.kachhwaha@oracle.com','Avinash','avinash.kachhwaha@oracle.com','927ad474b815075b0d85417a79b72379',1,0,55,4,0,0,'8bESr9kEMSroHsMQcKm8OFHhD4mWgnb4rIh81SwlGIRiwwVuWGFy9EMnh9ILiaIs',1605609469,1604982808),(7,'Sonali','Sonali','sonali.pasi@oracle.com','ddabb62a33b807bd2db6e1c127d77e78',1,0,55,4,0,0,'Jb2VUgbIF6AKKBaTUcxXA5FN2m_v0dhFVpiVCv6EN4TWLFh7kFRVFyl8gxiNX3t3',1605687626,1604985502),(8,'arunsaha','Arunima Saha','arunima.saha@oracle.com','a7b2ee94516317390378a23f2da69044',1,0,55,4,0,0,'el4-gQoujhrw225OvNBofkb8T9IVkVYtoz_mq0exVpxEnvm-U6S6FudO0GuYAlcH',1605020648,1604988487),(9,'abhisek','Abhisek Ashirbad Sethy','abhisek.ashirbad.sethy@oracle.com','3f86528b160782ea2a29f8b7a4854ffc',1,0,55,3,0,0,'k8yXWMxNX9LHxtd9jnwVrwGahoapVnCjdaqhi7YmQjyOojUgVSlNqhksHDT1aQZD',1604990350,1604990230),(10,'mahesh','mahesh','gajula.mahesh@oracle.com','4e702fc98be8cc144417b3f315d423ae',1,0,55,3,0,0,'ZaD-v4xf6Dyb3U6e6aHBRhwW5_z_OOW8rku2seUNwJw89KVFxzI-S68LAoh8rWB7',1604991173,1604990959),(11,'Preetham M K','Preetham','preetham.m.k@oracle.com','dbdb751c5f82afdd4fea44b3456faf52',1,0,55,2,0,0,'3dS5C87HHGNRcMtEFiaSWU4ntkxy5ZZCu8a7HZpQ-_rRp1rP4zJxgzA-DXCEc6O8',1605007460,1605007460),(12,'amiyananda','Amiya','amiya.kumar.nanda@oracle.com','fa9d388112a409cbedadf5d0eecd2926',1,0,55,0,3,4,'GMHE2QZKc1nlKDKx4PUkChlcCq3YO_sFInT4Pcy1ztpnBpVJ3nbHum6JWSjqVRaG',1605008176,1605008176),(13,'ragini','ragini','ragini.kulkarni@oracle.com','d4b842076eb3ea2de7fff5acb8d3fda4',1,0,55,0,2,0,'C2J_RL3kxoG4Ewt3ioH9xeEW7af31QYw0xmJ3bbRHRmj9z4PE_vkOMsJAa-qHGdZ',1605008247,1605008247),(14,'harsh','harsh','harsh.h.sinha@oracle.com','cd84d683cc5612c69efe115c80d0b7dc',1,0,55,3,0,0,'mh0M4w6w80X2ZGlB-5odjsQ9TFnSI7ZKhxKlbiK2lfI8wzA92PV0hUIw7b2i1iCb',1605180948,1605008502),(16,'meenakshi','meenakshi','meenakshi.idde@oracle.com','c4735e5a48672a0dd04817dc7fb261c0',1,0,55,4,0,0,'NgZN63dxr59A_jqBQ-QWHWVxRY1snC5-nh_1CSeOQ5LMtBJLkew4pO5Eeo3Dzbq8',1605609131,1605009092),(17,'bharathi','Bharathi','bharathi.somana@oracle.com','c1f377afbaa874acbb6b61f66957710a',1,0,55,4,0,0,'sZnQ4cIc_sIlh_73pOSdYAK3TsKY-TiYtv95mvh9PHJeR5wI3c8iSyjLHJK7E_cn',1605608132,1605010608),(18,'amhala','','aniket.mhala@oracle.com','98e40088b83c9a843176a2523d34d854',1,0,70,0,0,0,'iZ_t1_1NyW82yPV_AxGqo_Inoyp1UyBZACZDNlByPoPZwz1ct0Mmulyu5FGdAyM-',1605013639,1605013639);
/*!40000 ALTER TABLE `mantis_user_table` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-19 19:38:15
