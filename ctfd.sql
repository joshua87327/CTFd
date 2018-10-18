-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `awards` (
  `id` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `description` text,
  `date` datetime DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `category` varchar(80) DEFAULT NULL,
  `icon` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `challenges`
--

DROP TABLE IF EXISTS `challenges`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `challenges` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL,
  `description` text,
  `max_attempts` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `category` varchar(80) DEFAULT NULL,
  `type` varchar(80) DEFAULT NULL,
  `hidden` text,
  `stage` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `challenges`
--

LOCK TABLES `challenges` WRITE;
/*!40000 ALTER TABLE `challenges` DISABLE KEYS */;
INSERT INTO `challenges` VALUES (1,'App-1','hello',0,100,'Phase1','standard','0',1),(2,'Goat_1','goat1',0,500,'Phase1','standard','0',1),(3,'Goat_2','Goat_2',0,500,'Phase1','standard','0',1),(4,'Goat_3','Goat_3',0,500,'Phase2','standard','0',1),(5,'Goat_4','Goat_4',0,500,'Goat','standard','0',1),(6,'Goat_5','Goat_5',0,500,'Goat','standard','0',1),(7,'Goat_6','Goat_6',0,499,'Goat','standard','0',1),(8,'Goat_7','Goat_7',0,500,'Goat','standard','0',1),(9,'Goat_8','Goat_8',0,496,'Goat','standard','0',1),(10,'Goat_9','Goat_9',0,500,'Goat','standard','0',1),(11,'Goat_10','Goat_10',0,500,'Goat','standard','0',1),(12,'Shall Linux_1','Shall Linux_1',0,500,'Shall Linux','standard','0',1),(13,'Shall Linux_2','Shall Linux_2',0,500,'Shall Linux','standard','0',1),(14,'Shall Linux_3','Shall Linux_3',0,500,'Shall Linux','standard','0',1),(15,'Shall Linux_4','Shall Linux_4',0,500,'Shall Linux','standard','0',1),(16,'Shall Linux_5','Shall Linux_5',0,500,'Shall Linux','standard','0',1),(17,'Shall Linux_6','Shall Linux_6',0,500,'Shall Linux','standard','0',1),(18,'Shall Linux_7','Shall Linux_7',0,500,'Shall Linux','standard','0',1),(19,'Shall Linux_8','Shall Linux_8',0,500,'Shall Linux','standard','0',1),(20,'Shall Linux_9','Shall Linux_9',0,500,'Shall Linux','standard','0',1),(21,'Shall Linux_10','Shall Linux_10',0,500,'Shall Linux','standard','0',1),(22,'Pwn/Rev_1','Pwn/Rev_1',0,500,'Pwn/Rev','standard','0',1),(23,'Pwn/Rev_2','Pwn/Rev_2',0,500,'Pwn/Rev','standard','0',1),(24,'Pwn/Rev_3','Pwn/Rev_3',0,500,'Pwn/Rev','standard','0',1),(25,'Pwn/Rev_4','Pwn/Rev_4',0,500,'Pwn/Rev','standard','0',1),(26,'Pwn/Rev_5','Pwn/Rev_5',0,500,'Pwn/Rev','standard','0',1),(27,'CTFD_1','CTFD_1',0,500,'CTFD','standard','0',1),(28,'CTFD_2','CTFD_2',0,500,'CTFD','standard','0',1),(29,'CTFD_3','CTFD_3',0,500,'CTFD','standard','0',1),(30,'CTFD_4','CTFD_4',0,500,'CTFD','standard','0',1),(31,'CTFD_5','CTFD_5',0,499,'CTFD','standard','0',1),(32,'old CTFD_1','old CTFD_1',0,500,'old CTFD','standard','0',1),(33,'old CTFD_2','old CTFD_2',0,500,'old CTFD','standard','0',1),(34,'old CTFD_3','old CTFD_3',0,500,'old CTFD','standard','0',1),(35,'old CTFD_4','old CTFD_4',0,500,'old CTFD','standard','0',1),(36,'old CTFD_5','old CTFD_5',0,500,'old CTFD','standard','0',1),(37,'App-2','App-2',0,500,'Application','standard','0',2),(38,'Test','Test',0,200,'Test','dynamic','0',0);
/*!40000 ALTER TABLE `challenges` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` int(11) DEFAULT NULL,
  `key` text,
  `value` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'next_update_check','1539752467'),(2,'ctf_version','1.2.0'),(3,'ctf_theme','core'),(4,'ctf_name','CTFd'),(5,'ctf_logo',''),(6,'workshop_mode','0'),(7,'hide_scores','0'),(8,'prevent_registration','1'),(9,'start',''),(10,'max_tries','0'),(11,'end',''),(12,'freeze',''),(13,'view_challenges_unregistered','0'),(14,'verify_emails','1'),(15,'mail_server',''),(16,'mail_port',''),(17,'mail_tls','0'),(18,'mail_ssl','0'),(19,'mail_username',''),(20,'mail_password',''),(21,'mail_useauth','0'),(22,'setup','1'),(23,'css',''),(24,'version_latest',''),(25,'mailfrom_addr',''),(26,'mg_api_key',''),(27,'mg_base_url',''),(28,'view_after_ctf','0'),(29,'view_scoreboard_if_authed','1'),(30,'prevent_name_change','0'),(31,'paused','0'),(32,'view_scoreboard_if_utils.authed',''),(33,'thunderpush_url','127.0.0.1'),(34,'thunderpush_port','8000'),(35,'thunderpush_client_secret','public'),(36,'thunderpush_server_secret','secret');
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dynamic_challenge`
--

DROP TABLE IF EXISTS `dynamic_challenge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dynamic_challenge` (
  `id` int(11) DEFAULT NULL,
  `initial` int(11) DEFAULT NULL,
  `minimum` int(11) DEFAULT NULL,
  `decay` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dynamic_challenge`
--

LOCK TABLES `dynamic_challenge` WRITE;
/*!40000 ALTER TABLE `dynamic_challenge` DISABLE KEYS */;
INSERT INTO `dynamic_challenge` VALUES (38,500,200,7);
/*!40000 ALTER TABLE `dynamic_challenge` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `files`
--

DROP TABLE IF EXISTS `files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `files` (
  `id` int(11) DEFAULT NULL,
  `chal` int(11) DEFAULT NULL,
  `location` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `files`
--

LOCK TABLES `files` WRITE;
/*!40000 ALTER TABLE `files` DISABLE KEYS */;
INSERT INTO `files` VALUES (1,0,'3627fbef85bb3dabfa54720974abf550/SecurityWars.png');
/*!40000 ALTER TABLE `files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hints`
--

DROP TABLE IF EXISTS `hints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hints` (
  `id` int(11) DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `chal` int(11) DEFAULT NULL,
  `hint` text,
  `cost` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hints`
--

LOCK TABLES `hints` WRITE;
/*!40000 ALTER TABLE `hints` DISABLE KEYS */;
/*!40000 ALTER TABLE `hints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `keys`
--

DROP TABLE IF EXISTS `keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `keys` (
  `id` int(11) DEFAULT NULL,
  `chal` int(11) DEFAULT NULL,
  `type` varchar(80) DEFAULT NULL,
  `flag` text,
  `data` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `keys`
--

LOCK TABLES `keys` WRITE;
/*!40000 ALTER TABLE `keys` DISABLE KEYS */;
INSERT INTO `keys` VALUES (1,1,'static','{CTF_Is_Fun}',''),(2,2,'static','{CTF_Is_Fun}',''),(3,3,'static','',''),(4,4,'static','',''),(5,5,'static','',''),(6,6,'static','',''),(7,8,'static','',''),(8,9,'static','',''),(9,10,'static','',''),(10,11,'static','',''),(11,12,'static','',''),(12,13,'static','',''),(13,14,'static','',''),(14,15,'static','',''),(15,16,'static','',''),(16,17,'static','',''),(17,18,'static','',''),(18,19,'static','',''),(19,20,'static','',''),(20,21,'static','',''),(21,22,'static','',''),(22,23,'static','',''),(23,24,'static','',''),(24,25,'static','',''),(25,26,'static','',''),(26,27,'static','',''),(27,28,'static','',''),(28,29,'static','',''),(29,30,'static','',''),(30,31,'static','',''),(31,32,'static','',''),(32,33,'static','',''),(33,34,'static','',''),(34,35,'static','',''),(35,36,'static','',''),(36,7,'static','',''),(37,37,'static','',''),(38,38,'static','','');
/*!40000 ALTER TABLE `keys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int(11) DEFAULT NULL,
  `auth_required` text,
  `title` varchar(80) DEFAULT NULL,
  `route` text,
  `html` text,
  `draft` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'0','None','index','<div class=\"row\" style=\"background-color:#000; background-image:url(\'themes/core/static/img/bg_new1.jpg\'); background-repeat:no-repeat; background-size:100%; background-position: center bottom\" >\r\n    <div class=\"col-md-8 col-md-offset-md-2\" >\r\n        <img class=\"w-100 mx-auto d-block\" style=\"max-width: 500px;padding: 0px;padding-top: 5vh;\" src=\"themes/core/static/img/mcdx.png\" />\r\n        <h3 class=\"text-center\">\r\n            <p ><img src = \"themes/core/static/img/icon5.png\" width=\"25\" heigth=\"25\"/>107年國軍盃網路安全競賽</p>\r\n            <p><img src = \"themes/core/static/img/icon5.png\" width=\"25\" heigth=\"25\"/>浩瀚網際 誰與爭鋒</p>\r\n            <a href=\"https://twitter.com/ctfdio\"><img src = \"themes/core/static/img/icon1.png\"/></a>&nbsp; <!--<i class=\"fab fa-twitter fa-2x\" aria-hidden=\"true\"></i>-->\r\n            <a href=\"https://facebook.com/ctfdio\"><img src = \"themes/core/static/img/icon2.png\"/></a>&nbsp;\r\n            <a href=\"https://github.com/ctfd\"><img src = \"themes/core/static/img/icon3.png\"/></a>\r\n        </h3>\r\n        <br>\r\n        <h4 class=\"text-center\">\r\n            <img src = \"themes/core/static/img/icon5.png\" width=\"25\" heigth=\"25\"/>\r\n            點選<a href=\"admin\">此處</a> 進入登入畫面\r\n        </h4>\r\n</div>','0'),(2,'1','Forum','Forum','<style>\r\nbody {\r\n    background-image: url(\"http://getwallpapers.com/wallpaper/full/e/6/0/16412.jpg\");\r\n    background-repeat: no-repeat;\r\n    background-position: right top;\r\n    background-attachment: fixed;\r\n    background-color: black;\r\n    background-size: cover;\r\n}\r\n</style>\r\n<div class=\"jumbotron\">\r\n	<div class=\"container\">\r\n		<h1><i class=\"swg swg-leia swg-lg\"></i>Forum<i class=\"swg swg-yoda-2 swg-lg\"></i></h1>\r\n	</div>\r\n</div>\r\n<div class=\"container\">\r\n	<div class=\"row\">\r\n		<div class=\"col-md-12\">\r\n			<table id=\"forum\" class=\"table table-striped\">\r\n  				<tr>\r\n    				<th>Sequence</th>\r\n    				<th>Title</th> \r\n    				<th>Time</th>\r\n    				<th>Reporter</th>\r\n    				<th>Link</th>\r\n 			 </tr>\r\n 			 <tr>\r\n                   <td>1</td>\r\n                   <td>pwn</td> \r\n                   <td>2018-10-13</td>\r\n                   <td>joshua</td>\r\n                   <td><a href=\"https://www.drive.google.com\">Google Drive</a></td>\r\n                   </tr>\r\n                   <tr>\r\n                   <td>2</td>\r\n                   <td>pwn</td> \r\n                   <td>2018-10-13</td>\r\n                   <td>joshua</td>\r\n                   <td><a href=\"https://www.drive.google.com\">Google Drive</a></td>\r\n                   </tr>\r\n                   </table>\r\n			</div>\r\n		</div>\r\n	</div>              ','0');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `solves`
--

DROP TABLE IF EXISTS `solves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `solves` (
  `id` int(11) DEFAULT NULL,
  `chalid` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `ip` varchar(46) DEFAULT NULL,
  `flag` text,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `solves`
--

LOCK TABLES `solves` WRITE;
/*!40000 ALTER TABLE `solves` DISABLE KEYS */;
INSERT INTO `solves` VALUES (1,2,3,'127.0.0.1','{CTF_Is_Fun}','2018-09-18 00:00:00'),(2,1,4,'127.0.0.1','{CTF_Is_Fun}','2018-09-18 00:00:00'),(3,32,5,'127.0.0.1','','2018-10-08 00:00:00'),(4,33,5,'127.0.0.1','','2018-10-08 00:00:00'),(5,33,7,'127.0.0.1','','2018-10-08 00:00:00'),(6,36,7,'127.0.0.1','','2018-10-08 00:00:00'),(7,32,7,'127.0.0.1','','2018-10-08 00:00:00'),(8,33,8,'127.0.0.1','','2018-10-08 00:00:00'),(9,32,8,'127.0.0.1','','2018-10-08 00:00:00'),(10,35,8,'127.0.0.1','','2018-10-08 00:00:00'),(11,28,8,'127.0.0.1','','2018-10-08 00:00:00'),(12,33,6,'127.0.0.1','','2018-10-08 00:00:00'),(13,27,6,'127.0.0.1','','2018-10-08 00:00:00'),(14,31,10,'127.0.0.1','','2018-10-08 00:00:00'),(15,28,10,'127.0.0.1','','2018-10-08 00:00:00'),(16,23,10,'127.0.0.1','','2018-10-08 00:00:00'),(17,22,10,'127.0.0.1','','2018-10-08 00:00:00'),(18,33,9,'127.0.0.1','','2018-10-08 00:00:00'),(19,24,9,'127.0.0.1','','2018-10-08 00:00:00'),(20,15,9,'127.0.0.1','','2018-10-08 00:00:00'),(21,33,2,'127.0.0.1','','2018-10-15 00:00:00'),(22,37,1,'127.0.0.1','','2018-10-16 00:00:00'),(23,38,2,'127.0.0.1','','2018-10-16 00:00:00'),(24,38,3,'127.0.0.1','','2018-10-16 00:00:00'),(25,38,4,'127.0.0.1','','2018-10-16 00:00:00'),(26,38,5,'127.0.0.1','','2018-10-16 00:00:00'),(27,38,6,'127.0.0.1','','2018-10-16 00:00:00'),(28,38,7,'127.0.0.1','','2018-10-16 00:00:00'),(29,38,8,'127.0.0.1','','2018-10-16 00:00:00'),(30,38,9,'127.0.0.1','','2018-10-16 00:00:00');
/*!40000 ALTER TABLE `solves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) DEFAULT NULL,
  `chal` int(11) DEFAULT NULL,
  `tag` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teams`
--

DROP TABLE IF EXISTS `teams`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teams` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `website` varchar(128) DEFAULT NULL,
  `affiliation` varchar(128) DEFAULT NULL,
  `country` varchar(32) DEFAULT NULL,
  `bracket` varchar(32) DEFAULT NULL,
  `banned` text,
  `verified` text,
  `admin` text,
  `joined` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teams`
--

LOCK TABLES `teams` WRITE;
/*!40000 ALTER TABLE `teams` DISABLE KEYS */;
INSERT INTO `teams` VALUES (1,'Joshua','joshua87327@gmail.com','$bcrypt-sha256$2b,12$awEnA0s0lWDYfXm.Ha/iOe$7rNvDWc6yzU2ltDxyjayuDvfwq0X3ma','','','','','1','0','1','2018-10-15 00:00:00'),(2,'A','A@gmail.com','$bcrypt-sha256$2b,12$Wfx/r3qkCu2mhWHErglJLO$1hhawangNgAPoADeyeUwICKmdnQzeZ.','https://google.com','CCIT','Taiwan','','0','1','0','2018-09-18 00:00:00'),(3,'B','B@gmail.com','$bcrypt-sha256$2b,12$VIQwfgxaKDhhZ/PrwYiHze$2cSvwKdTVzRNfzRkonphz3TMea0QgPq','https://google.com','CCIT','Taiwan','','0','1','0','2018-09-18 00:00:00'),(4,'C','C@gmail.com','$bcrypt-sha256$2b,12$hBwpSY6ltX8KHrk78hEpie$cnJe8K84Blgn69Alj/bLTKQ8H1ZAzIS','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-08 00:00:00'),(5,'D','D@gmail.com','$bcrypt-sha256$2b,12$xJlq5v55Y0TJVY6Coojfie$DLTBerqY4BtqJJ0mMyVvJGpVaXiJJEC','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-08 00:00:00'),(6,'E','E@gmail.com','$bcrypt-sha256$2b,12$L8lvDOF4qo.rbIVWAUrXkO$xuxeqmhQXApyaj5oq4/ZeaRb6n5sZG.','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-08 00:00:00'),(7,'F','F@gmail.com','$bcrypt-sha256$2b,12$QQedjk6W57AbTq1NaY.MNO$QIYmhSDUj7LnMsIkKVa575fMlXs7ej.','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-08 00:00:00'),(8,'G','G@gmail.com','$bcrypt-sha256$2b,12$ue7hU5af8IefM5LlgEPYzu$yWUZoxdilYqXeCy3R/MjiT6kf0lyK72','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-08 00:00:00'),(9,'H','H@gmail.com','$bcrypt-sha256$2b,12$PL6xsTsJP0wBKhdjqYtFcO$SpbP4/1716D.zR/lKItBEdRhad6GOSy','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-08 00:00:00'),(10,'I','I@gmail.com','$bcrypt-sha256$2b,12$Ko1K8FxKl6l9vD5NhtILy.$CqGaZsL5MIiXZYjeW86iTSMGg9VvVqq','https://google.com','CCIT','Taiwan','','0','1','0','2018-10-15 00:00:00');
/*!40000 ALTER TABLE `teams` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracking`
--

DROP TABLE IF EXISTS `tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracking` (
  `id` int(11) DEFAULT NULL,
  `ip` varchar(46) DEFAULT NULL,
  `team` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracking`
--

LOCK TABLES `tracking` WRITE;
/*!40000 ALTER TABLE `tracking` DISABLE KEYS */;
INSERT INTO `tracking` VALUES (1,'127.0.0.1',1,'2018-10-16 00:00:00'),(2,'127.0.0.1',2,'2018-10-16 00:00:00'),(3,'127.0.0.1',3,'2018-10-16 00:00:00'),(4,'127.0.0.1',4,'2018-10-16 00:00:00'),(5,'127.0.0.1',5,'2018-10-16 00:00:00'),(6,'127.0.0.1',7,'2018-10-16 00:00:00'),(7,'127.0.0.1',8,'2018-10-16 00:00:00'),(8,'127.0.0.1',6,'2018-10-16 00:00:00'),(9,'127.0.0.1',10,'2018-10-16 00:00:00'),(10,'127.0.0.1',9,'2018-10-16 00:00:00');
/*!40000 ALTER TABLE `tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unlocks`
--

DROP TABLE IF EXISTS `unlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unlocks` (
  `id` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `itemid` int(11) DEFAULT NULL,
  `model` varchar(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unlocks`
--

LOCK TABLES `unlocks` WRITE;
/*!40000 ALTER TABLE `unlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `unlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wrong_keys`
--

DROP TABLE IF EXISTS `wrong_keys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wrong_keys` (
  `id` int(11) DEFAULT NULL,
  `chalid` int(11) DEFAULT NULL,
  `teamid` int(11) DEFAULT NULL,
  `ip` varchar(46) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `flag` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wrong_keys`
--

LOCK TABLES `wrong_keys` WRITE;
/*!40000 ALTER TABLE `wrong_keys` DISABLE KEYS */;
/*!40000 ALTER TABLE `wrong_keys` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 22:56:30
