-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_778
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (6,'android.intent.action.BOOT_COMPLETED'),(1,'android.intent.action.MAIN'),(10,'android.intent.action.VIEW'),(2,'com.and.snd.AirHornSoundService'),(7,'com.and.snd.BicycleSoundService'),(4,'com.and.snd.ButtonSoundService'),(9,'com.and.snd.FlashlightLEDService'),(3,'com.and.snd.MosquitoSoundService'),(5,'com.and.snd.WhoopeeSoundService'),(8,'com.android.vending.INSTALL_REFERRER');
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
INSERT INTO `Applications` VALUES (1,'com.typ3studios.mosquito',7),(2,'com.typ3studios.airhorn',6),(3,'com.quizdepot.sounds_bicycle',2),(4,'com.typ3studios.airhorn',8),(5,'com.typ3studios.whoopee',8),(6,'com.typ3studios.easybutton',7),(7,'com.typ3studios.flashlight',9);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,2,'com.typ3studios.airhorn.AirHorn'),(2,1,'com.typ3studios.mosquito.Mosquito'),(3,5,'com.typ3studios.whoopee.WhoopeeCushion'),(4,6,'com.typ3studios.easybutton.EasyButton'),(5,4,'com.typ3studios.airhorn.AirHorn'),(6,3,'com.quizdepot.sounds_bicycle.BicycleHornActivity'),(7,2,'com.typ3studios.airhorn.AdditionalApps'),(8,1,'com.typ3studios.mosquito.AdditionalApps'),(9,2,'com.and.snd.AirHornSoundService'),(10,1,'com.and.snd.MosquitoSoundService'),(11,3,'com.quizdepot.sounds_bicycle.TermsAndConditionsBase'),(12,4,'com.typ3studios.airhorn.AdditionalApps'),(13,6,'com.typ3studios.easybutton.AdditionalApps'),(14,5,'com.typ3studios.whoopee.AdditionalApps'),(15,4,'com.and.snd.AirHornSoundService'),(16,6,'com.and.snd.ButtonSoundService'),(17,5,'com.and.snd.WhoopeeSoundService'),(18,3,'com.quizdepot.sounds_bicycle.TermsAndConditions'),(19,2,'com.and.snd.StartAtBootServiceReceiver'),(20,1,'com.and.snd.StartAtBootServiceReceiver'),(21,3,'com.and.snd.BicycleSoundService'),(22,7,'com.typ3studios.flashlight.Flashlight'),(23,4,'com.and.snd.StartAtBootServiceReceiver'),(24,6,'com.and.snd.StartAtBootServiceReceiver'),(25,5,'com.and.snd.StartAtBootServiceReceiver'),(26,3,'com.and.snd.StartAtBootServiceBikeReceiver'),(27,7,'com.typ3studios.flashlight.AdditionalApps'),(28,2,'com.typ3studios.airhorn.MyReferrerReceiver'),(29,1,'com.typ3studios.mosquito.MyReferrerReceiver'),(30,4,'com.typ3studios.airhorn.MyReferrerReceiver'),(31,7,'com.and.snd.FlashlightLEDService'),(32,6,'com.typ3studios.easybutton.MyReferrerReceiver'),(33,5,'com.typ3studios.whoopee.MyReferrerReceiver'),(34,3,'com.quizdepot.sounds_bicycle.MyReferrerReceiver'),(35,7,'com.and.snd.StartAtBootServiceReceiver'),(36,7,'com.typ3studios.flashlight.MyReferrerReceiver'),(37,2,'com.typ3studios.airhorn.AdditionalApps$3'),(38,1,'com.typ3studios.mosquito.Mosquito$2'),(39,7,'com.typ3studios.flashlight.Flashlight$3'),(40,4,'com.typ3studios.airhorn.AdditionalApps$2'),(41,5,'com.typ3studios.whoopee.WhoopeeCushion$3'),(42,2,'com.typ3studios.airhorn.AdditionalApps$5'),(43,7,'com.typ3studios.flashlight.AdditionalApps$2'),(44,4,'com.typ3studios.airhorn.AdditionalApps$5'),(45,6,'com.typ3studios.easybutton.AdditionalApps$2'),(46,1,'com.typ3studios.mosquito.AdditionalApps$3'),(47,2,'com.typ3studios.airhorn.AdditionalApps$2'),(48,7,'com.typ3studios.flashlight.AdditionalApps$3'),(49,5,'com.typ3studios.whoopee.AdditionalApps$3'),(50,6,'com.typ3studios.easybutton.EasyButton$2'),(51,1,'com.typ3studios.mosquito.AdditionalApps$2'),(52,4,'com.typ3studios.airhorn.AdditionalApps$4'),(53,2,'com.typ3studios.airhorn.AirHorn$2'),(54,6,'com.typ3studios.easybutton.AdditionalApps$4'),(55,5,'com.typ3studios.whoopee.AdditionalApps$5'),(56,7,'com.typ3studios.flashlight.AdditionalApps$5'),(57,1,'com.typ3studios.mosquito.AdditionalApps$4'),(58,2,'com.typ3studios.airhorn.AdditionalApps$4'),(59,6,'com.typ3studios.easybutton.AdditionalApps$5'),(60,4,'com.typ3studios.airhorn.AirHorn$2'),(61,5,'com.typ3studios.whoopee.AdditionalApps$2'),(62,1,'com.typ3studios.mosquito.AdditionalApps$5'),(63,7,'com.typ3studios.flashlight.AdditionalApps$4'),(64,4,'com.typ3studios.airhorn.AdditionalApps$3'),(65,6,'com.typ3studios.easybutton.AdditionalApps$3'),(66,5,'com.typ3studios.whoopee.AdditionalApps$4');
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,28,'referrer'),(2,15,'notifID'),(3,16,'notifID'),(4,29,'referrer'),(5,9,'notifID'),(6,21,'notifID'),(7,30,'notifID'),(8,34,'referrer'),(9,33,'referrer'),(10,10,'notifID'),(11,22,'BackLightValue'),(12,31,'referrer'),(13,17,'notifID'),(14,36,'referrer'),(15,32,'referrer');
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,5,'a',1,NULL,NULL),(4,3,'a',1,NULL,NULL),(5,6,'a',1,NULL,NULL),(6,4,'a',1,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'a',0,NULL,NULL),(9,9,'s',1,NULL,NULL),(10,10,'s',1,NULL,NULL),(11,12,'a',0,NULL,NULL),(12,13,'a',0,NULL,NULL),(13,11,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'s',1,NULL,NULL),(22,22,'a',1,NULL,NULL),(23,23,'r',1,NULL,NULL),(24,24,'r',1,NULL,NULL),(25,25,'r',1,NULL,NULL),(26,26,'r',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',1,NULL,NULL),(30,31,'s',1,NULL,NULL),(31,30,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,35,'r',1,NULL,NULL),(36,36,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,7),(2,2,2),(3,3,19),(4,4,1),(5,5,22),(6,6,2),(7,7,11),(8,8,6),(9,9,4),(10,10,20),(11,11,7),(12,12,27),(13,13,11),(14,14,12),(15,15,26),(16,16,4),(17,17,8),(18,18,7),(19,19,27),(20,20,13),(21,21,3),(22,22,14),(23,23,6),(24,24,8),(25,26,35),(26,25,11),(27,28,5),(28,28,13),(29,27,1),(30,29,12),(31,30,14),(32,31,27),(33,32,8),(34,33,23),(35,34,7),(36,35,12),(37,36,3),(38,37,14),(39,38,22),(40,39,8),(41,40,24),(42,41,27),(43,43,25),(44,42,11),(45,44,12),(46,45,14);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,37,'<com.typ3studios.airhorn.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(2,38,'<com.typ3studios.mosquito.Mosquito$2: void onClick(android.view.View)>',6,'a',NULL),(3,19,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(4,1,'<com.typ3studios.airhorn.AirHorn: void onCreate(android.os.Bundle)>',6,'s',NULL),(5,39,'<com.typ3studios.flashlight.Flashlight$3: void onClick(android.view.View)>',6,'a',NULL),(6,2,'<com.typ3studios.mosquito.Mosquito: void onCreate(android.os.Bundle)>',6,'s',NULL),(7,40,'<com.typ3studios.airhorn.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(8,4,'<com.typ3studios.easybutton.EasyButton: void onCreate(android.os.Bundle)>',6,'s',NULL),(9,41,'<com.typ3studios.whoopee.WhoopeeCushion$3: void onClick(android.view.View)>',6,'a',NULL),(10,20,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(11,42,'<com.typ3studios.airhorn.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(12,43,'<com.typ3studios.flashlight.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(13,44,'<com.typ3studios.airhorn.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(14,45,'<com.typ3studios.easybutton.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(15,26,'<com.and.snd.StartAtBootServiceBikeReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(16,3,'<com.typ3studios.whoopee.WhoopeeCushion: void onCreate(android.os.Bundle)>',6,'s',NULL),(17,46,'<com.typ3studios.mosquito.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(18,47,'<com.typ3studios.airhorn.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(19,48,'<com.typ3studios.flashlight.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(20,11,'<com.quizdepot.sounds_bicycle.TermsAndConditionsBase: boolean onMenuItemSelected(int,android.view.MenuItem)>',9,'a',NULL),(21,5,'<com.typ3studios.airhorn.AirHorn: void onCreate(android.os.Bundle)>',6,'s',NULL),(22,49,'<com.typ3studios.whoopee.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(23,50,'<com.typ3studios.easybutton.EasyButton$2: void onClick(android.view.View)>',6,'a',NULL),(24,51,'<com.typ3studios.mosquito.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(25,52,'<com.typ3studios.airhorn.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(26,35,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(27,53,'<com.typ3studios.airhorn.AirHorn$2: void onClick(android.view.View)>',6,'a',NULL),(28,6,'<com.quizdepot.sounds_bicycle.BicycleHornActivity: void onCreate(android.os.Bundle)>',6,'s',NULL),(29,54,'<com.typ3studios.easybutton.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(30,55,'<com.typ3studios.whoopee.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(31,56,'<com.typ3studios.flashlight.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(32,57,'<com.typ3studios.mosquito.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(33,23,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(34,58,'<com.typ3studios.airhorn.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(35,59,'<com.typ3studios.easybutton.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(36,60,'<com.typ3studios.airhorn.AirHorn$2: void onClick(android.view.View)>',6,'a',NULL),(37,61,'<com.typ3studios.whoopee.AdditionalApps$2: void onClick(android.view.View)>',6,'a',NULL),(38,22,'<com.typ3studios.flashlight.Flashlight: void onCreate(android.os.Bundle)>',6,'s',NULL),(39,62,'<com.typ3studios.mosquito.AdditionalApps$5: void onClick(android.view.View)>',6,'a',NULL),(40,24,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(41,63,'<com.typ3studios.flashlight.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL),(42,64,'<com.typ3studios.airhorn.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(43,25,'<com.and.snd.StartAtBootServiceReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(44,65,'<com.typ3studios.easybutton.AdditionalApps$3: void onClick(android.view.View)>',6,'a',NULL),(45,66,'<com.typ3studios.whoopee.AdditionalApps$4: void onClick(android.view.View)>',6,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,10),(2,3,2),(3,7,10),(4,10,3),(5,11,10),(6,12,10),(7,13,10),(8,14,10),(9,15,7),(10,17,10),(11,18,10),(12,19,10),(13,22,10),(14,24,10),(15,25,10),(16,26,9),(17,29,10),(18,30,10),(19,31,10),(20,32,10),(21,33,2),(22,34,10),(23,35,10),(24,37,10),(25,39,10),(26,40,4),(27,43,5),(28,41,10),(29,42,10),(30,44,10),(31,45,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,2,'com/typ3studios/mosquito/AdditionalApps'),(2,4,'com/and/snd/AirHornSoundService'),(3,5,'com/and/snd/MosquitoSoundService'),(4,6,'com/typ3studios/flashlight/AdditionalApps'),(5,8,'com/and/snd/ButtonSoundService'),(6,9,'com/typ3studios/whoopee/AdditionalApps'),(7,16,'com/and/snd/WhoopeeSoundService'),(8,20,'com/quizdepot/sounds_bicycle/TermsAndConditions'),(9,21,'com/and/snd/AirHornSoundService'),(10,23,'com/typ3studios/easybutton/AdditionalApps'),(11,27,'com/and/snd/BicycleSoundService'),(12,28,'com/typ3studios/airhorn/AdditionalApps'),(13,36,'com/typ3studios/airhorn/AdditionalApps'),(14,38,'com/and/snd/FlashlightLEDService');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,7,2),(3,11,3),(4,12,4),(5,13,5),(6,14,6),(7,17,7),(8,18,8),(9,19,9),(10,22,10),(11,24,11),(12,25,12),(13,29,13),(14,30,14),(15,31,15),(16,32,16),(17,34,17),(18,35,18),(19,37,19),(20,39,20),(21,42,21),(22,41,22),(23,44,23),(24,45,24);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,1),(7,7,2),(8,8,3),(9,9,2),(10,10,4),(11,11,5),(12,12,1),(13,13,6),(14,14,6),(15,15,7),(16,16,6),(17,17,6),(18,18,6),(19,19,6),(20,20,8),(21,21,8),(22,22,8),(23,23,9),(24,24,8),(25,25,8),(26,26,8),(27,27,6),(28,28,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,4,1),(4,3,1),(5,5,1),(6,6,1),(7,12,1),(8,13,2),(9,14,2),(10,16,2),(11,17,2),(12,18,2),(13,19,2),(14,27,2);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,2,'com.typ3studios.mosquito'),(2,4,'com.typ3studios.airhorn'),(3,5,'com.typ3studios.mosquito'),(4,6,'com.typ3studios.flashlight'),(5,8,'com.typ3studios.easybutton'),(6,9,'com.typ3studios.whoopee'),(7,16,'com.typ3studios.whoopee'),(8,20,'com.quizdepot.sounds_bicycle'),(9,21,'com.typ3studios.airhorn'),(10,23,'com.typ3studios.easybutton'),(11,27,'com.quizdepot.sounds_bicycle'),(12,28,'com.typ3studios.airhorn'),(13,36,'com.typ3studios.airhorn'),(14,38,'com.typ3studios.flashlight');
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
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,6,0),(6,4,0),(7,9,0),(8,10,0),(9,15,0),(10,16,0),(11,17,0),(12,22,0),(13,19,0),(14,20,0),(15,21,0),(16,23,0),(17,24,0),(18,25,0),(19,26,0),(20,29,0),(21,28,0),(22,31,0),(23,30,0),(24,32,0),(25,33,0),(26,34,0),(27,35,0),(28,36,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,0,0),(3,3,1,0),(4,4,0,0),(5,6,0,0),(6,5,0,0),(7,7,1,0),(8,8,0,0),(9,9,0,0),(10,10,1,0),(11,11,1,0),(12,12,1,0),(13,13,1,0),(14,14,1,0),(15,15,1,0),(16,16,0,0),(17,17,1,0),(18,18,1,0),(19,19,1,0),(20,20,0,0),(21,21,0,0),(22,22,1,0),(23,23,0,0),(24,24,1,0),(25,25,1,0),(26,26,1,0),(27,28,0,0),(28,27,0,0),(29,29,1,0),(30,30,1,0),(31,31,1,0),(32,32,1,0),(33,33,1,0),(34,34,1,0),(35,35,1,0),(36,36,0,0),(37,37,1,0),(38,38,0,0),(39,39,1,0),(40,40,1,0),(41,42,1,0),(42,41,1,0),(43,43,1,0),(44,44,1,0),(45,45,1,0);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (5,'android.permission.CAMERA'),(7,'android.permission.FLASHLIGHT'),(4,'android.permission.GET_ACCOUNTS'),(3,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(2,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.WRITE_SETTINGS');
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(2,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(3,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(4,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(5,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(6,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(7,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(8,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(9,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(10,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(11,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(12,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(13,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(14,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(15,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(16,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL),(17,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(18,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(19,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234e4z2y2/&subid1=inapp',NULL,NULL,NULL),(20,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234d4z2y2/&subid1=inapp',NULL,NULL,NULL),(21,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234c4z2y2/&subid1=inapp',NULL,NULL,NULL),(22,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(23,NULL,NULL,'http://www.pixeltrack66.com/mt/w264y234f4z2y2/&subid1=inapp',NULL,NULL,NULL),(24,NULL,NULL,'http://www.pixeltrack66.com/mt/w264x2c484z2y2/&subid1=inapp',NULL,NULL,NULL);
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,2,1),(2,1,1),(3,2,2),(4,1,2),(5,2,3),(6,1,3),(7,2,4),(8,1,4),(9,3,1),(10,4,1),(11,5,1),(12,6,1),(13,5,2),(14,6,2),(15,3,2),(16,4,2),(17,5,3),(18,6,3),(19,3,3),(20,4,3),(21,5,4),(22,6,4),(23,4,4),(24,3,4),(25,7,1),(26,7,2),(27,7,3),(28,7,4),(29,7,5),(30,7,6),(31,7,7);
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

-- Dump completed on 2015-10-09  0:41:08
