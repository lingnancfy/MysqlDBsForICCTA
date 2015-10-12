-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_486
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.12.04.1

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
-- Table structure for table `ActionStrings`
--

DROP TABLE IF EXISTS `ActionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ActionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'android.intent.action.CHOOSER'),(8,'android.intent.action.GET_CONTENT'),(1,'android.intent.action.MAIN'),(5,'android.intent.action.PICK'),(3,'android.intent.action.SENDTO'),(2,'android.intent.action.VIEW'),(4,'android.media.action.IMAGE_CAPTURE');
/*!40000 ALTER TABLE `ActionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Aliases`
--

DROP TABLE IF EXISTS `Aliases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Aliases` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `target_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  KEY `target_id` (`target_id`),
  CONSTRAINT `Aliases_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`),
  CONSTRAINT `Aliases_ibfk_2` FOREIGN KEY (`target_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Aliases`
--

LOCK TABLES `Aliases` WRITE;
/*!40000 ALTER TABLE `Aliases` DISABLE KEYS */;
/*!40000 ALTER TABLE `Aliases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Applications`
--

DROP TABLE IF EXISTS `Applications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Applications` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `version` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'rosebowl.buzzer.iconosys',1),(2,'eng.trickersticks.resolutions',2),(3,'mypony.timer.iconosys',2),(4,'anniversary.timer.iconosys',1),(5,'photowithghog.iconosys.eng',3),(6,'shootingstar.photo.iconosys.eng',1),(7,'worldsbest.photo.iconosys.eng',1);
/*!40000 ALTER TABLE `Applications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CategoryStrings`
--

DROP TABLE IF EXISTS `CategoryStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CategoryStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(1,'android.intent.category.LAUNCHER');
/*!40000 ALTER TABLE `CategoryStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Classes`
--

DROP TABLE IF EXISTS `Classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `class` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_idx` (`class`) USING HASH,
  KEY `app_id_idx` (`app_id`) USING HASH,
  CONSTRAINT `Classes_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'rosebowl.buzzer.iconosys.ChristmasTimer'),(2,2,'eng.trickersticks.resolutions.TrickerSticks'),(3,2,'eng.trickersticks.resolutions.GlowSticks'),(4,2,'eng.trickersticks.resolutions.Registration'),(5,3,'mypony.timer.iconosys.ChristmasTimer'),(6,4,'anniversary.timer.iconosys.ChristmasTimer'),(7,3,'mypony.timer.iconosys.ContactsList'),(8,3,'mypony.timer.iconosys.OtherApps'),(9,4,'anniversary.timer.iconosys.ContactsList'),(10,4,'anniversary.timer.iconosys.MessageService'),(11,3,'mypony.timer.iconosys.MessageService'),(12,5,'photowithghog.iconosys.eng.FrameIt'),(13,6,'shootingstar.photo.iconosys.eng.MeInJail'),(14,5,'photowithghog.iconosys.eng.PhotoView'),(15,7,'worldsbest.photo.iconosys.eng.MeInJail'),(16,6,'shootingstar.photo.iconosys.eng.PhotoView'),(17,7,'worldsbest.photo.iconosys.eng.PhotoView'),(18,5,'photowithghog.iconosys.eng.OtherApps'),(19,5,'photowithghog.iconosys.eng.ShowTerms'),(20,6,'shootingstar.photo.iconosys.eng.OtherApps'),(21,5,'photowithghog.iconosys.eng.RegistrationScreen'),(22,7,'worldsbest.photo.iconosys.eng.OtherApps'),(23,6,'shootingstar.photo.iconosys.eng.ShowTerms'),(24,5,'photowithghog.iconosys.eng.ShareImage'),(25,7,'worldsbest.photo.iconosys.eng.ShowTerms'),(26,6,'shootingstar.photo.iconosys.eng.RegistrationScreen'),(27,5,'photowithghog.iconosys.eng.ShowPopUp'),(28,7,'worldsbest.photo.iconosys.eng.RegistrationScreen'),(29,6,'shootingstar.photo.iconosys.eng.ShareImage'),(30,5,'photowithghog.iconosys.eng.AdView'),(31,7,'worldsbest.photo.iconosys.eng.ShareImage'),(32,6,'shootingstar.photo.iconosys.eng.ShowPopUp'),(33,5,'photowithghog.iconosys.eng.LocationSender'),(34,7,'worldsbest.photo.iconosys.eng.ShowPopUp'),(35,6,'shootingstar.photo.iconosys.eng.AdView'),(36,7,'worldsbest.photo.iconosys.eng.AdView'),(37,6,'shootingstar.photo.iconosys.eng.LocationSender'),(38,7,'worldsbest.photo.iconosys.eng.LocationSender'),(39,5,'photowithghog.iconosys.eng.OtherApps$6'),(40,6,'shootingstar.photo.iconosys.eng.OtherApps$4'),(41,6,'shootingstar.photo.iconosys.eng.OtherApps$1'),(42,5,'photowithghog.iconosys.eng.OtherApps$5'),(43,6,'shootingstar.photo.iconosys.eng.OtherApps$6'),(44,6,'shootingstar.photo.iconosys.eng.MeInJail$1'),(45,6,'shootingstar.photo.iconosys.eng.RegistrationScreen$1'),(46,5,'photowithghog.iconosys.eng.OtherApps$3'),(47,5,'photowithghog.iconosys.eng.RegistrationScreen$1'),(48,5,'photowithghog.iconosys.eng.OtherApps$2'),(49,5,'photowithghog.iconosys.eng.OtherApps$4'),(50,6,'shootingstar.photo.iconosys.eng.MeInJail$2'),(51,5,'photowithghog.iconosys.eng.FrameIt$1'),(52,6,'shootingstar.photo.iconosys.eng.OtherApps$5'),(53,6,'shootingstar.photo.iconosys.eng.PhotoView$1'),(54,6,'shootingstar.photo.iconosys.eng.OtherApps$2'),(55,6,'shootingstar.photo.iconosys.eng.OtherApps$3'),(56,5,'photowithghog.iconosys.eng.OtherApps$1'),(57,5,'photowithghog.iconosys.eng.FrameIt$2'),(58,5,'photowithghog.iconosys.eng.PhotoView$1');
/*!40000 ALTER TABLE `Classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ComponentExtras`
--

DROP TABLE IF EXISTS `ComponentExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ComponentExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ComponentExtras_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,14,'pick_photo'),(2,29,'saved_uri'),(3,16,'pick_photo'),(4,30,'_who'),(5,14,'take_photo'),(6,16,'take_photo'),(7,35,'_who'),(8,24,'saved_uri');
/*!40000 ALTER TABLE `ComponentExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Components`
--

DROP TABLE IF EXISTS `Components`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `exported` tinyint(1) NOT NULL,
  `permission` int(11) DEFAULT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  KEY `permission` (`permission`),
  CONSTRAINT `Components_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Components_ibfk_2` FOREIGN KEY (`permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',1,NULL,NULL),(7,7,'a',1,NULL,NULL),(8,8,'a',1,NULL,NULL),(9,9,'a',1,NULL,NULL),(10,10,'s',0,NULL,NULL),(11,11,'s',0,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',0,NULL,NULL),(30,30,'a',0,NULL,NULL),(31,31,'a',0,NULL,NULL),(32,32,'a',0,NULL,NULL),(33,33,'s',0,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'s',0,NULL,NULL),(38,38,'s',0,NULL,NULL);
/*!40000 ALTER TABLE `Components` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPointComponents`
--

DROP TABLE IF EXISTS `ExitPointComponents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPointComponents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `ExitPointComponents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ExitPointComponents_ibfk_2` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,2),(2,2,9),(3,3,6),(4,4,9),(5,5,5),(6,6,7),(7,7,5),(8,8,7),(9,9,12),(10,10,14),(11,11,15),(12,12,15),(13,13,13),(14,14,14),(15,15,18),(16,16,20),(17,17,21),(18,18,13),(19,19,20),(20,20,18),(21,21,20),(22,22,14),(23,23,16),(24,24,16),(25,25,13),(26,26,29),(27,27,13),(28,28,26),(29,29,14),(30,30,13),(31,31,12),(32,32,26),(33,33,12),(34,34,16),(35,35,14),(36,36,12),(37,37,29),(38,38,18),(39,39,24),(40,40,24),(41,41,12),(42,42,14),(43,43,21),(44,44,16),(45,45,12),(46,46,29),(47,47,18),(48,48,16),(49,49,14),(50,50,16),(51,51,18),(52,52,13),(53,53,14),(54,54,13),(55,55,12),(56,56,20),(57,57,24),(58,58,13),(59,59,16),(60,60,16),(61,61,26),(62,62,20),(63,63,20),(64,64,14),(65,65,14),(66,66,21),(67,67,18),(68,68,12),(69,69,14),(70,70,14);
/*!40000 ALTER TABLE `ExitPointComponents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ExitPoints`
--

DROP TABLE IF EXISTS `ExitPoints`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ExitPoints` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_id` int(11) NOT NULL,
  `method` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  `instruction` mediumint(9) NOT NULL,
  `exit_kind` char(1) COLLATE utf8mb4_bin NOT NULL,
  `missing` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `ExitPoints_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `Classes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,2,'<eng.trickersticks.resolutions.TrickerSticks: void onCreate(android.os.Bundle)>',6,'a',NULL),(2,9,'<anniversary.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(3,6,'<anniversary.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(4,9,'<anniversary.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(5,5,'<mypony.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(6,7,'<mypony.timer.iconosys.ContactsList: void next()>',3,'p',NULL),(7,5,'<mypony.timer.iconosys.ChristmasTimer: boolean onOptionsItemSelected(android.view.MenuItem)>',27,'a',NULL),(8,7,'<mypony.timer.iconosys.ContactsList: void onStart()>',4,'p',NULL),(9,12,'<photowithghog.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(10,14,'<photowithghog.iconosys.eng.PhotoView: void startCameraActivity()>',11,'a',NULL),(11,15,'<worldsbest.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(12,15,'<worldsbest.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(13,13,'<shootingstar.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(14,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',108,'a',NULL),(15,39,'<photowithghog.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(16,40,'<shootingstar.photo.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(17,21,'<photowithghog.iconosys.eng.RegistrationScreen: void SendPhoneData()>',96,'s',NULL),(18,13,'<shootingstar.photo.iconosys.eng.MeInJail: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(19,41,'<shootingstar.photo.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(20,42,'<photowithghog.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(21,43,'<shootingstar.photo.iconosys.eng.OtherApps$6: void onClick(android.view.View)>',6,'a',NULL),(22,14,'<photowithghog.iconosys.eng.PhotoView: void onShareMultipleClicked()>',8,'a',NULL),(23,16,'<shootingstar.photo.iconosys.eng.PhotoView: void startCameraActivity()>',9,'a',NULL),(24,16,'<shootingstar.photo.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(25,13,'<shootingstar.photo.iconosys.eng.MeInJail: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(26,29,'<shootingstar.photo.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(27,44,'<shootingstar.photo.iconosys.eng.MeInJail$1: void onClick(android.view.View)>',7,'a',NULL),(28,45,'<shootingstar.photo.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(29,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',72,'a',NULL),(30,13,'<shootingstar.photo.iconosys.eng.MeInJail: boolean onOptionsItemSelected(android.view.MenuItem)>',18,'a',NULL),(31,12,'<photowithghog.iconosys.eng.FrameIt: void onResume()>',14,'a',NULL),(32,26,'<shootingstar.photo.iconosys.eng.RegistrationScreen: void SendPhoneData()>',93,'s',NULL),(33,12,'<photowithghog.iconosys.eng.FrameIt: void onCreate(android.os.Bundle)>',19,'a',NULL),(34,16,'<shootingstar.photo.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(35,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',34,'a',NULL),(36,12,'<photowithghog.iconosys.eng.FrameIt: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',NULL),(37,29,'<shootingstar.photo.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(38,46,'<photowithghog.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(39,24,'<photowithghog.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(40,24,'<photowithghog.iconosys.eng.ShareImage: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(41,12,'<photowithghog.iconosys.eng.FrameIt: void onActivityResult(int,int,android.content.Intent)>',10,'p',0),(42,14,'<photowithghog.iconosys.eng.PhotoView: void onPick(android.content.Intent)>',6,'p',0),(43,47,'<photowithghog.iconosys.eng.RegistrationScreen$1: void onClick(android.view.View)>',6,'a',NULL),(44,16,'<shootingstar.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(45,12,'<photowithghog.iconosys.eng.FrameIt: void getPhoneNumbers(java.lang.String,android.net.Uri)>',10,'p',NULL),(46,29,'<shootingstar.photo.iconosys.eng.ShareImage: void onCreate(android.os.Bundle)>',6,'a',NULL),(47,48,'<photowithghog.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(48,16,'<shootingstar.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',6,'a',NULL),(49,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',99,'a',NULL),(50,16,'<shootingstar.photo.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',12,'a',NULL),(51,49,'<photowithghog.iconosys.eng.OtherApps$4: void onClick(android.view.View)>',6,'a',NULL),(52,50,'<shootingstar.photo.iconosys.eng.MeInJail$2: void onClick(android.view.View)>',7,'a',NULL),(53,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',90,'a',NULL),(54,13,'<shootingstar.photo.iconosys.eng.MeInJail: void onCreate(android.os.Bundle)>',6,'a',NULL),(55,51,'<photowithghog.iconosys.eng.FrameIt$1: void onClick(android.view.View)>',7,'a',NULL),(56,52,'<shootingstar.photo.iconosys.eng.OtherApps$5: void onClick(android.view.View)>',6,'a',NULL),(57,24,'<photowithghog.iconosys.eng.ShareImage: void onShareMultipleClicked()>',13,'a',NULL),(58,13,'<shootingstar.photo.iconosys.eng.MeInJail: void onResume()>',14,'a',NULL),(59,53,'<shootingstar.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',9,'a',NULL),(60,53,'<shootingstar.photo.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',23,'a',NULL),(61,26,'<shootingstar.photo.iconosys.eng.RegistrationScreen: void SendAutoData()>',89,'s',NULL),(62,54,'<shootingstar.photo.iconosys.eng.OtherApps$2: void onClick(android.view.View)>',6,'a',NULL),(63,55,'<shootingstar.photo.iconosys.eng.OtherApps$3: void onClick(android.view.View)>',6,'a',NULL),(64,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',81,'a',NULL),(65,14,'<photowithghog.iconosys.eng.PhotoView: void startPickActivity()>',4,'a',NULL),(66,21,'<photowithghog.iconosys.eng.RegistrationScreen: void SendAutoData()>',92,'s',NULL),(67,56,'<photowithghog.iconosys.eng.OtherApps$1: void onClick(android.view.View)>',6,'a',NULL),(68,57,'<photowithghog.iconosys.eng.FrameIt$2: void onClick(android.view.View)>',7,'a',NULL),(69,58,'<photowithghog.iconosys.eng.PhotoView$1: void onClick(android.view.View)>',78,'a',NULL),(70,14,'<photowithghog.iconosys.eng.PhotoView: boolean onOptionsItemSelected(android.view.MenuItem)>',44,'a',NULL);
/*!40000 ALTER TABLE `ExitPoints` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Extras`
--

DROP TABLE IF EXISTS `Extras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Extras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `method` varchar(512) NOT NULL,
  `type` varchar(512) DEFAULT NULL,
  `extra` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Extras`
--

LOCK TABLES `Extras` WRITE;
/*!40000 ALTER TABLE `Extras` DISABLE KEYS */;
/*!40000 ALTER TABLE `Extras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IActions`
--

DROP TABLE IF EXISTS `IActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `action` (`action`),
  CONSTRAINT `IActions_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,6,4),(2,7,5),(3,9,2),(4,10,2),(5,12,2),(6,13,2),(7,14,2),(8,15,7),(9,16,7),(10,17,4),(11,18,7),(12,19,7),(13,20,7),(14,22,7),(15,23,7),(16,25,7),(17,32,8),(18,34,5),(19,35,7),(20,36,7),(21,37,7),(22,38,2),(23,39,7),(24,41,7),(25,42,7),(26,44,7),(27,45,7),(28,49,2),(29,53,2),(30,58,2),(31,59,7),(32,61,7),(33,63,7),(34,65,7),(35,66,7),(36,68,7),(37,69,7),(38,70,2),(39,71,7),(40,72,2),(41,74,8),(42,76,2);
/*!40000 ALTER TABLE `IActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ICategories`
--

DROP TABLE IF EXISTS `ICategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ICategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `category` (`category`),
  CONSTRAINT `ICategories_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `ICategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
/*!40000 ALTER TABLE `ICategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IClasses`
--

DROP TABLE IF EXISTS `IClasses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IClasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `class` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IClasses_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'eng/trickersticks/resolutions/GlowSticks'),(2,2,'anniversary/timer/iconosys/ContactsList'),(3,3,'mypony/timer/iconosys/ContactsList'),(4,4,'mypony/timer/iconosys/OtherApps'),(5,5,'photowithghog/iconosys/eng/OtherApps'),(6,8,'photowithghog/iconosys/eng/ShowPopUp'),(7,11,'photowithghog/iconosys/eng/LocationSender'),(8,21,'shootingstar/photo/iconosys/eng/OtherApps'),(9,24,'shootingstar/photo/iconosys/eng/PhotoView'),(10,26,'shootingstar/photo/iconosys/eng/ShowTerms'),(11,27,'photowithghog/iconosys/eng/ShowPopUp'),(12,28,'shootingstar/photo/iconosys/eng/OtherApps'),(13,29,'photowithghog/iconosys/eng/RegistrationScreen'),(14,30,'shootingstar/photo/iconosys/eng/LocationSender'),(15,31,'photowithghog/iconosys/eng/AdView'),(16,33,'photowithghog/iconosys/eng/OtherApps'),(17,40,'photowithghog/iconosys/eng/AdView'),(18,43,'photowithghog/iconosys/eng/OtherApps'),(19,46,'photowithghog/iconosys/eng/ShowTerms'),(20,47,'shootingstar/photo/iconosys/eng/MeInJail'),(21,48,'shootingstar/photo/iconosys/eng/AdView'),(22,50,'shootingstar/photo/iconosys/eng/ShowPopUp'),(23,51,'photowithghog/iconosys/eng/ShowPopUp'),(24,52,'shootingstar/photo/iconosys/eng/OtherApps'),(25,54,'shootingstar/photo/iconosys/eng/PhotoView'),(26,55,'photowithghog/iconosys/eng/ShowPopUp'),(27,56,'shootingstar/photo/iconosys/eng/AdView'),(28,57,'photowithghog/iconosys/eng/PhotoView'),(29,60,'shootingstar/photo/iconosys/eng/RegistrationScreen'),(30,62,'shootingstar/photo/iconosys/eng/ShowPopUp'),(31,64,'shootingstar/photo/iconosys/eng/ShareImage'),(32,67,'shootingstar/photo/iconosys/eng/LocationSender'),(33,73,'photowithghog/iconosys/eng/ShowPopUp'),(34,75,'photowithghog/iconosys/eng/LocationSender'),(35,77,'photowithghog/iconosys/eng/PhotoView'),(36,78,'photowithghog/iconosys/eng/ShareImage'),(37,79,'photowithghog/iconosys/eng/FrameIt');
/*!40000 ALTER TABLE `IClasses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IData`
--

DROP TABLE IF EXISTS `IData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `data` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `data` (`data`),
  CONSTRAINT `IData_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IData_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,7,5),(2,9,6),(3,10,7),(4,12,8),(5,13,9),(6,14,10),(7,34,12),(8,38,13),(9,49,15),(10,53,16),(11,58,17),(12,70,18),(13,72,19),(14,76,20);
/*!40000 ALTER TABLE `IData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IExtras`
--

DROP TABLE IF EXISTS `IExtras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IExtras` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `extra` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IExtras_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,6,'aspectX'),(2,6,'aspectY'),(3,6,'output'),(4,15,'android.intent.extra.INTENT'),(5,16,'android.intent.extra.INTENT'),(6,17,'output'),(7,18,'android.intent.extra.TITLE'),(8,18,'android.intent.extra.INTENT'),(9,19,'android.intent.extra.INTENT'),(10,20,'android.intent.extra.TITLE'),(11,20,'android.intent.extra.INTENT'),(12,22,'android.intent.extra.INTENT'),(13,24,'take_photo'),(14,23,'android.intent.extra.TITLE'),(15,23,'android.intent.extra.INTENT'),(16,25,'android.intent.extra.TITLE'),(17,25,'android.intent.extra.INTENT'),(18,35,'android.intent.extra.INTENT'),(19,36,'android.intent.extra.INTENT'),(20,37,'android.intent.extra.TITLE'),(21,37,'android.intent.extra.INTENT'),(22,39,'android.intent.extra.INTENT'),(23,41,'android.intent.extra.TITLE'),(24,41,'android.intent.extra.INTENT'),(25,42,'android.intent.extra.INTENT'),(26,44,'android.intent.extra.TITLE'),(27,44,'android.intent.extra.INTENT'),(28,45,'android.intent.extra.TITLE'),(29,45,'android.intent.extra.INTENT'),(30,54,'pick_photo'),(31,57,'take_photo'),(32,59,'android.intent.extra.INTENT'),(33,61,'android.intent.extra.INTENT'),(34,63,'android.intent.extra.TITLE'),(35,63,'android.intent.extra.INTENT'),(36,64,'saved_uri'),(37,65,'android.intent.extra.INTENT'),(38,66,'android.intent.extra.TITLE'),(39,66,'android.intent.extra.INTENT'),(40,68,'android.intent.extra.INTENT'),(41,69,'android.intent.extra.TITLE'),(42,69,'android.intent.extra.INTENT'),(43,71,'android.intent.extra.TITLE'),(44,71,'android.intent.extra.INTENT'),(45,77,'pick_photo'),(46,78,'saved_uri');
/*!40000 ALTER TABLE `IExtras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFActions`
--

DROP TABLE IF EXISTS `IFActions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFActions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `action` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `action_idx` (`action`) USING HASH,
  CONSTRAINT `IFActions_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFActions_ibfk_2` FOREIGN KEY (`action`) REFERENCES `ActionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,1),(9,9,1),(10,10,3),(11,11,1),(12,12,3),(13,13,3);
/*!40000 ALTER TABLE `IFActions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFCategories`
--

DROP TABLE IF EXISTS `IFCategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFCategories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `category_idx` (`category`) USING HASH,
  CONSTRAINT `IFCategories_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IFCategories_ibfk_2` FOREIGN KEY (`category`) REFERENCES `CategoryStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,7,2),(6,8,1),(7,9,1),(8,10,2),(9,11,1),(10,12,2),(11,13,2);
/*!40000 ALTER TABLE `IFCategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFData`
--

DROP TABLE IF EXISTS `IFData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) DEFAULT NULL,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `host` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `port` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `type` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `subtype` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  CONSTRAINT `IFData_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,'sms',NULL,NULL,NULL,NULL,NULL),(2,10,'mms',NULL,NULL,NULL,NULL,NULL),(3,10,'mmsto',NULL,NULL,NULL,NULL,NULL),(4,10,NULL,NULL,NULL,NULL,'image','*'),(5,12,'sms',NULL,NULL,NULL,NULL,NULL),(6,10,NULL,NULL,NULL,NULL,'video','*'),(7,12,'mms',NULL,NULL,NULL,NULL,NULL),(8,10,NULL,NULL,NULL,NULL,'audio','*'),(9,13,'sms',NULL,NULL,NULL,NULL,NULL),(10,12,'mmsto',NULL,NULL,NULL,NULL,NULL),(11,13,'mms',NULL,NULL,NULL,NULL,NULL),(12,12,NULL,NULL,NULL,NULL,'image','*'),(13,13,'mmsto',NULL,NULL,NULL,NULL,NULL),(14,12,NULL,NULL,NULL,NULL,'video','*'),(15,13,NULL,NULL,NULL,NULL,'image','*'),(16,12,NULL,NULL,NULL,NULL,'audio','*'),(17,13,NULL,NULL,NULL,NULL,'video','*'),(18,13,NULL,NULL,NULL,NULL,'audio','*');
/*!40000 ALTER TABLE `IFData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IFMimeTypes`
--

DROP TABLE IF EXISTS `IFMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IFMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_id` int(11) NOT NULL,
  `type` varchar(512) NOT NULL,
  `subtype` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `filter_id` (`filter_id`),
  KEY `type_idx` (`type`,`subtype`),
  CONSTRAINT `IFMimeTypes_ibfk_1` FOREIGN KEY (`filter_id`) REFERENCES `IntentFilters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFMimeTypes`
--

LOCK TABLES `IFMimeTypes` WRITE;
/*!40000 ALTER TABLE `IFMimeTypes` DISABLE KEYS */;
/*!40000 ALTER TABLE `IFMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IMimeTypes`
--

DROP TABLE IF EXISTS `IMimeTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IMimeTypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  `subtype` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  KEY `type_idx` (`type`),
  KEY `subtype_idx` (`subtype`),
  CONSTRAINT `IMimeTypes_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,32,'image','*'),(2,74,'image','*');
/*!40000 ALTER TABLE `IMimeTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IPackages`
--

DROP TABLE IF EXISTS `IPackages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IPackages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `package` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `intent_id` (`intent_id`),
  CONSTRAINT `IPackages_ibfk_1` FOREIGN KEY (`intent_id`) REFERENCES `Intents` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'eng.trickersticks.resolutions'),(2,2,'anniversary.timer.iconosys'),(3,3,'mypony.timer.iconosys'),(4,4,'mypony.timer.iconosys'),(5,5,'photowithghog.iconosys.eng'),(6,8,'photowithghog.iconosys.eng'),(7,11,'photowithghog.iconosys.eng'),(8,21,'shootingstar.photo.iconosys.eng'),(9,24,'shootingstar.photo.iconosys.eng'),(10,26,'shootingstar.photo.iconosys.eng'),(11,27,'photowithghog.iconosys.eng'),(12,28,'shootingstar.photo.iconosys.eng'),(13,29,'photowithghog.iconosys.eng'),(14,30,'shootingstar.photo.iconosys.eng'),(15,31,'photowithghog.iconosys.eng'),(16,33,'photowithghog.iconosys.eng'),(17,40,'photowithghog.iconosys.eng'),(18,43,'photowithghog.iconosys.eng'),(19,46,'photowithghog.iconosys.eng'),(20,47,'shootingstar.photo.iconosys.eng'),(21,48,'shootingstar.photo.iconosys.eng'),(22,50,'shootingstar.photo.iconosys.eng'),(23,51,'photowithghog.iconosys.eng'),(24,52,'shootingstar.photo.iconosys.eng'),(25,54,'shootingstar.photo.iconosys.eng'),(26,55,'photowithghog.iconosys.eng'),(27,56,'shootingstar.photo.iconosys.eng'),(28,57,'photowithghog.iconosys.eng'),(29,60,'shootingstar.photo.iconosys.eng'),(30,62,'shootingstar.photo.iconosys.eng'),(31,64,'shootingstar.photo.iconosys.eng'),(32,67,'shootingstar.photo.iconosys.eng'),(33,73,'photowithghog.iconosys.eng'),(34,75,'photowithghog.iconosys.eng'),(35,77,'photowithghog.iconosys.eng'),(36,78,'photowithghog.iconosys.eng'),(37,79,'photowithghog.iconosys.eng');
/*!40000 ALTER TABLE `IPackages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IccStmts`
--

DROP TABLE IF EXISTS `IccStmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IccStmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `stmt_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IccStmts`
--

LOCK TABLES `IccStmts` WRITE;
/*!40000 ALTER TABLE `IccStmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `IccStmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentFilters`
--

DROP TABLE IF EXISTS `IntentFilters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentFilters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `alias` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `c_id_idx` (`component_id`) USING HASH,
  CONSTRAINT `IntentFilters_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,5,0),(4,6,0),(5,7,0),(6,9,0),(7,8,0),(8,12,0),(9,13,0),(10,14,0),(11,15,0),(12,16,0),(13,17,0);
/*!40000 ALTER TABLE `IntentFilters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `IntentPermissions`
--

DROP TABLE IF EXISTS `IntentPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `IntentPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `i_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `i_permission` (`i_permission`),
  CONSTRAINT `IntentPermissions_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `IntentPermissions_ibfk_2` FOREIGN KEY (`i_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentPermissions`
--

LOCK TABLES `IntentPermissions` WRITE;
/*!40000 ALTER TABLE `IntentPermissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `IntentPermissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Intents`
--

DROP TABLE IF EXISTS `Intents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Intents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `implicit` tinyint(1) NOT NULL,
  `alias` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  CONSTRAINT `Intents_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,3,0,0),(3,5,0,0),(4,7,0,0),(5,9,0,0),(6,10,1,0),(7,13,1,0),(8,14,0,0),(9,15,1,0),(10,16,1,0),(11,17,0,0),(12,19,1,0),(13,20,1,0),(14,21,1,0),(15,22,1,0),(16,22,1,0),(17,23,1,0),(18,22,1,0),(19,22,1,0),(20,22,1,0),(21,26,0,0),(22,22,1,0),(23,22,1,0),(24,27,0,0),(25,22,1,0),(26,28,0,0),(27,29,0,0),(28,30,0,0),(29,31,0,0),(30,32,0,0),(31,33,0,0),(32,34,1,0),(33,35,0,0),(34,36,1,0),(35,37,1,0),(36,37,1,0),(37,37,1,0),(38,38,1,0),(39,37,1,0),(40,39,0,0),(41,37,1,0),(42,37,1,0),(43,40,0,0),(44,37,1,0),(45,37,1,0),(46,43,0,0),(47,44,0,0),(48,46,0,0),(49,47,1,0),(50,48,0,0),(51,49,0,0),(52,50,0,0),(53,51,1,0),(54,52,0,0),(55,53,0,0),(56,54,0,0),(57,55,0,0),(58,56,1,0),(59,57,1,0),(60,58,0,0),(61,57,1,0),(62,59,0,0),(63,57,1,0),(64,60,0,0),(65,57,1,0),(66,57,1,0),(67,61,0,0),(68,57,1,0),(69,57,1,0),(70,62,1,0),(71,57,1,0),(72,63,1,0),(73,64,0,0),(74,65,1,0),(75,66,0,0),(76,67,1,0),(77,68,0,0),(78,69,0,0),(79,70,0,0);
/*!40000 ALTER TABLE `Intents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Links`
--

DROP TABLE IF EXISTS `Links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Links` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `intent_id` int(11) NOT NULL,
  `component_id` int(11) NOT NULL,
  `type` int(11) DEFAULT '0',
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=289 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,6,15,2,NULL),(2,15,15,2,NULL),(3,16,15,2,NULL),(4,18,15,2,NULL),(5,19,15,2,NULL),(6,6,1,2,NULL),(7,20,15,2,NULL),(8,15,1,2,NULL),(9,22,15,2,NULL),(10,16,1,2,NULL),(11,23,15,2,NULL),(12,18,1,2,NULL),(13,25,15,2,NULL),(14,19,1,2,NULL),(15,59,15,2,NULL),(16,20,1,2,NULL),(17,61,15,2,NULL),(18,22,1,2,NULL),(19,63,15,2,NULL),(20,23,1,2,NULL),(21,65,15,2,NULL),(22,25,1,2,NULL),(23,66,15,2,NULL),(24,59,1,2,NULL),(25,68,15,2,NULL),(26,61,1,2,NULL),(27,69,15,2,NULL),(28,63,1,2,NULL),(29,71,15,2,NULL),(30,65,1,2,NULL),(31,17,15,2,NULL),(32,66,1,2,NULL),(33,35,15,2,NULL),(34,68,1,2,NULL),(35,36,15,2,NULL),(36,69,1,2,NULL),(37,37,15,2,NULL),(38,71,1,2,NULL),(39,39,15,2,NULL),(40,17,1,2,NULL),(41,41,15,2,NULL),(42,35,1,2,NULL),(43,42,15,2,NULL),(44,36,1,2,NULL),(45,44,15,2,NULL),(46,37,1,2,NULL),(47,45,15,2,NULL),(48,39,1,2,NULL),(49,41,1,2,NULL),(50,42,1,2,NULL),(51,44,1,2,NULL),(52,45,1,2,NULL),(53,3,7,2,NULL),(54,4,8,2,NULL),(55,2,9,2,NULL),(56,6,5,2,NULL),(57,6,6,2,NULL),(58,15,5,2,NULL),(59,15,6,2,NULL),(60,16,5,2,NULL),(61,16,6,2,NULL),(62,18,5,2,NULL),(63,18,6,2,NULL),(64,19,5,2,NULL),(65,19,6,2,NULL),(66,20,5,2,NULL),(67,20,6,2,NULL),(68,22,5,2,NULL),(69,22,6,2,NULL),(70,23,5,2,NULL),(71,23,6,2,NULL),(72,25,5,2,NULL),(73,25,6,2,NULL),(74,59,5,2,NULL),(75,59,6,2,NULL),(76,61,5,2,NULL),(77,61,6,2,NULL),(78,63,5,2,NULL),(79,63,6,2,NULL),(80,65,5,2,NULL),(81,65,6,2,NULL),(82,66,5,2,NULL),(83,66,6,2,NULL),(84,68,5,2,NULL),(85,68,6,2,NULL),(86,69,5,2,NULL),(87,69,6,2,NULL),(88,71,5,2,NULL),(89,71,6,2,NULL),(90,17,5,2,NULL),(91,17,6,2,NULL),(92,35,5,2,NULL),(93,35,6,2,NULL),(94,36,5,2,NULL),(95,36,6,2,NULL),(96,37,5,2,NULL),(97,37,6,2,NULL),(98,39,5,2,NULL),(99,39,6,2,NULL),(100,41,5,2,NULL),(101,41,6,2,NULL),(102,42,5,2,NULL),(103,42,6,2,NULL),(104,44,5,2,NULL),(105,44,6,2,NULL),(106,45,5,2,NULL),(107,45,6,2,NULL),(108,6,7,2,NULL),(109,6,9,2,NULL),(110,15,7,2,NULL),(111,15,9,2,NULL),(112,16,7,2,NULL),(113,16,9,2,NULL),(114,18,7,2,NULL),(115,18,9,2,NULL),(116,19,7,2,NULL),(117,19,9,2,NULL),(118,20,7,2,NULL),(119,20,9,2,NULL),(120,22,7,2,NULL),(121,22,9,2,NULL),(122,23,7,2,NULL),(123,23,9,2,NULL),(124,25,7,2,NULL),(125,25,9,2,NULL),(126,59,7,2,NULL),(127,59,9,2,NULL),(128,61,7,2,NULL),(129,61,9,2,NULL),(130,63,7,2,NULL),(131,63,9,2,NULL),(132,65,7,2,NULL),(133,65,9,2,NULL),(134,66,7,2,NULL),(135,66,9,2,NULL),(136,68,7,2,NULL),(137,68,9,2,NULL),(138,69,7,2,NULL),(139,28,20,2,NULL),(140,69,9,2,NULL),(141,71,7,2,NULL),(142,71,9,2,NULL),(143,56,35,2,NULL),(144,17,7,2,NULL),(145,17,9,2,NULL),(146,60,26,2,NULL),(147,35,7,2,NULL),(148,35,9,2,NULL),(149,6,13,2,NULL),(150,36,7,2,NULL),(151,36,9,2,NULL),(152,37,7,2,NULL),(153,15,13,2,NULL),(154,37,9,2,NULL),(155,39,7,2,NULL),(156,16,13,2,NULL),(157,39,9,2,NULL),(158,41,7,2,NULL),(159,18,13,2,NULL),(160,41,9,2,NULL),(161,42,7,2,NULL),(162,19,13,2,NULL),(163,42,9,2,NULL),(164,44,7,2,NULL),(165,20,13,2,NULL),(166,44,9,2,NULL),(167,45,7,2,NULL),(168,22,13,2,NULL),(169,45,9,2,NULL),(170,6,8,2,NULL),(171,23,13,2,NULL),(172,15,8,2,NULL),(173,25,13,2,NULL),(174,16,8,2,NULL),(175,59,13,2,NULL),(176,18,8,2,NULL),(177,61,13,2,NULL),(178,19,8,2,NULL),(179,63,13,2,NULL),(180,20,8,2,NULL),(181,65,13,2,NULL),(182,22,8,2,NULL),(183,66,13,2,NULL),(184,23,8,2,NULL),(185,68,13,2,NULL),(186,25,8,2,NULL),(187,69,13,2,NULL),(188,59,8,2,NULL),(189,71,13,2,NULL),(190,61,8,2,NULL),(191,17,13,2,NULL),(192,63,8,2,NULL),(193,35,13,2,NULL),(194,65,8,2,NULL),(195,36,13,2,NULL),(196,66,8,2,NULL),(197,37,13,2,NULL),(198,68,8,2,NULL),(199,39,13,2,NULL),(200,69,8,2,NULL),(201,41,13,2,NULL),(202,71,8,2,NULL),(203,42,13,2,NULL),(204,17,8,2,NULL),(205,44,13,2,NULL),(206,35,8,2,NULL),(207,45,13,2,NULL),(208,36,8,2,NULL),(209,47,13,2,NULL),(210,37,8,2,NULL),(211,50,32,2,NULL),(212,39,8,2,NULL),(213,52,20,2,NULL),(214,41,8,2,NULL),(215,17,2,2,NULL),(216,42,8,2,NULL),(217,17,12,2,NULL),(218,44,8,2,NULL),(219,30,37,2,NULL),(220,45,8,2,NULL),(221,67,37,2,NULL),(222,21,20,2,NULL),(223,48,35,2,NULL),(224,35,2,2,NULL),(225,36,2,2,NULL),(226,37,2,2,NULL),(227,39,2,2,NULL),(228,41,2,2,NULL),(229,42,2,2,NULL),(230,44,2,2,NULL),(231,45,2,2,NULL),(232,35,12,2,NULL),(233,36,12,2,NULL),(234,37,12,2,NULL),(235,39,12,2,NULL),(236,41,12,2,NULL),(237,42,12,2,NULL),(238,44,12,2,NULL),(239,45,12,2,NULL),(240,1,3,2,NULL),(241,6,2,2,NULL),(242,15,2,2,NULL),(243,16,2,2,NULL),(244,18,2,2,NULL),(245,19,2,2,NULL),(246,20,2,2,NULL),(247,22,2,2,NULL),(248,23,2,2,NULL),(249,25,2,2,NULL),(250,59,2,2,NULL),(251,61,2,2,NULL),(252,63,2,2,NULL),(253,65,2,2,NULL),(254,66,2,2,NULL),(255,68,2,2,NULL),(256,69,2,2,NULL),(257,71,2,2,NULL),(258,5,18,2,NULL),(259,29,21,2,NULL),(260,31,30,2,NULL),(261,6,12,2,NULL),(262,15,12,2,NULL),(263,16,12,2,NULL),(264,18,12,2,NULL),(265,19,12,2,NULL),(266,20,12,2,NULL),(267,22,12,2,NULL),(268,23,12,2,NULL),(269,25,12,2,NULL),(270,59,12,2,NULL),(271,61,12,2,NULL),(272,63,12,2,NULL),(273,65,12,2,NULL),(274,66,12,2,NULL),(275,68,12,2,NULL),(276,69,12,2,NULL),(277,71,12,2,NULL),(278,8,27,2,NULL),(279,27,27,2,NULL),(280,33,18,2,NULL),(281,51,27,2,NULL),(282,55,27,2,NULL),(283,73,27,2,NULL),(284,79,12,2,NULL),(285,11,33,2,NULL),(286,75,33,2,NULL),(287,40,30,2,NULL),(288,43,18,2,NULL);
/*!40000 ALTER TABLE `Links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PAuthorities`
--

DROP TABLE IF EXISTS `PAuthorities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PAuthorities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `provider_id` int(11) NOT NULL,
  `authority` varchar(512) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `provider_id` (`provider_id`),
  CONSTRAINT `PAuthorities_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `Providers` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
/*!40000 ALTER TABLE `PAuthorities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Paths`
--

DROP TABLE IF EXISTS `Paths`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Paths` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `source` int(11) NOT NULL,
  `sink` int(11) NOT NULL,
  `paths` text,
  `type` varchar(512) NOT NULL,
  `icc` int(11) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Paths`
--

LOCK TABLES `Paths` WRITE;
/*!40000 ALTER TABLE `Paths` DISABLE KEYS */;
/*!40000 ALTER TABLE `Paths` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PermissionStrings`
--

DROP TABLE IF EXISTS `PermissionStrings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PermissionStrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `st` varchar(191) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `st` (`st`),
  KEY `st_idx` (`st`) USING HASH
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(11,'android.permission.ACCESS_FINE_LOCATION'),(10,'android.permission.CAMERA'),(8,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(4,'android.permission.READ_CONTACTS'),(1,'android.permission.READ_PHONE_STATE'),(9,'android.permission.READ_SMS'),(2,'android.permission.SEND_SMS'),(12,'android.permission.WAKE_LOCK'),(5,'android.permission.WRITE_EXTERNAL_STORAGE'),(6,'android.permission.WRITE_SMS');
/*!40000 ALTER TABLE `PermissionStrings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Permissions`
--

DROP TABLE IF EXISTS `Permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Permissions` (
  `id` int(11) NOT NULL,
  `level` char(1) COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`,`level`),
  CONSTRAINT `Permissions_ibfk_1` FOREIGN KEY (`id`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Permissions`
--

LOCK TABLES `Permissions` WRITE;
/*!40000 ALTER TABLE `Permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `Permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ProviderLinks`
--

DROP TABLE IF EXISTS `ProviderLinks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ProviderLinks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src_component_id` int(11) NOT NULL,
  `dest_component_id` int(11) NOT NULL,
  `reserved` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ProviderLinks`
--

LOCK TABLES `ProviderLinks` WRITE;
/*!40000 ALTER TABLE `ProviderLinks` DISABLE KEYS */;
/*!40000 ALTER TABLE `ProviderLinks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Providers`
--

DROP TABLE IF EXISTS `Providers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Providers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `component_id` int(11) NOT NULL,
  `grant_uri_permissions` tinyint(1) NOT NULL,
  `read_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `write_permission` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `component_id` (`component_id`),
  CONSTRAINT `Providers_ibfk_1` FOREIGN KEY (`component_id`) REFERENCES `Components` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Providers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Stmts`
--

DROP TABLE IF EXISTS `Stmts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Stmts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `stmt` varchar(512) NOT NULL,
  `method` varchar(512) NOT NULL,
  `class_id` int(11) NOT NULL,
  `jimpleIndex` int(11) NOT NULL,
  `isIcc` tinyint(1) NOT NULL,
  `type` varchar(512) NOT NULL,
  `reserved` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Stmts`
--

LOCK TABLES `Stmts` WRITE;
/*!40000 ALTER TABLE `Stmts` DISABLE KEYS */;
/*!40000 ALTER TABLE `Stmts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UriData`
--

DROP TABLE IF EXISTS `UriData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UriData` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `scheme` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `ssp` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `uri` longtext COLLATE utf8mb4_bin,
  `path` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  `query` varchar(512) COLLATE utf8mb4_bin DEFAULT NULL,
  `authority` varchar(128) COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(2,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(3,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(4,NULL,NULL,'content://contacts/phones',NULL,NULL,NULL),(5,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(6,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(7,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(8,NULL,NULL,'market://details?id=eng.drivereply.us',NULL,NULL,NULL),(9,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(10,NULL,NULL,'market://details?id=eng.tellmygeo.usr',NULL,NULL,NULL),(11,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(12,NULL,NULL,'content://com.android.contacts/contacts',NULL,NULL,NULL),(13,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(14,NULL,NULL,'content://com.android.contacts/data/phones',NULL,NULL,NULL),(15,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(16,NULL,NULL,'market://details?id=com.santa.iconosys',NULL,NULL,NULL),(17,NULL,NULL,'market://details?id=newyear.buzzer.iconosys',NULL,NULL,NULL),(18,NULL,NULL,'market://details?id=three.smsreplier.five',NULL,NULL,NULL),(19,NULL,NULL,'market://details?id=eng.trickortracker.usr',NULL,NULL,NULL),(20,NULL,NULL,'market://details?id=drivereply.iconosys.eng',NULL,NULL,NULL);
/*!40000 ALTER TABLE `UriData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Uris`
--

DROP TABLE IF EXISTS `Uris`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Uris` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `exit_id` int(11) NOT NULL,
  `data` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `exit_id` (`exit_id`),
  KEY `data` (`data`),
  CONSTRAINT `Uris_ibfk_1` FOREIGN KEY (`exit_id`) REFERENCES `ExitPoints` (`id`) ON DELETE CASCADE,
  CONSTRAINT `Uris_ibfk_2` FOREIGN KEY (`data`) REFERENCES `UriData` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,2,1),(2,4,2),(3,6,3),(4,8,4),(5,25,11),(6,45,14);
/*!40000 ALTER TABLE `Uris` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UsesPermissions`
--

DROP TABLE IF EXISTS `UsesPermissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UsesPermissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_id` int(11) NOT NULL,
  `uses_permission` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `app_id` (`app_id`),
  KEY `uses_permission_idx` (`uses_permission`) USING HASH,
  CONSTRAINT `UsesPermissions_ibfk_1` FOREIGN KEY (`app_id`) REFERENCES `Applications` (`id`) ON DELETE CASCADE,
  CONSTRAINT `UsesPermissions_ibfk_2` FOREIGN KEY (`uses_permission`) REFERENCES `PermissionStrings` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,3),(7,3,1),(8,3,2),(9,3,3),(10,3,4),(11,4,1),(12,4,2),(13,4,3),(14,4,4),(15,5,1),(16,5,2),(17,5,3),(18,5,4),(19,5,5),(20,6,1),(21,5,6),(22,6,2),(23,5,7),(24,7,1),(25,6,3),(26,5,8),(27,7,2),(28,6,4),(29,5,9),(30,7,3),(31,6,5),(32,7,4),(33,5,10),(34,6,6),(35,5,11),(36,7,5),(37,6,7),(38,7,6),(39,5,12),(40,6,8),(41,7,7),(42,6,9),(43,7,8),(44,6,10),(45,7,9),(46,6,11),(47,7,10),(48,6,12),(49,7,11),(50,7,12);
/*!40000 ALTER TABLE `UsesPermissions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-10-12  3:30:39
