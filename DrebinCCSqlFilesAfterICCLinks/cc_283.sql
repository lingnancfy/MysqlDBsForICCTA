-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_283
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (11,'INTENT_DONE'),(16,'SENDED'),(15,'SENDING_OK'),(12,'SENT'),(3,'android.intent.action.BOOT_COMPLETED'),(5,'android.intent.action.DATA_SMS_RECEIVED'),(1,'android.intent.action.MAIN'),(14,'android.intent.action.NOTIFICATION_REMOVE'),(4,'android.intent.action.PHONE_STATE'),(9,'android.intent.action.VIEW'),(10,'android.provider.Telephony.SMS_RECEIVED'),(2,'com.convertoman.proin.FServices'),(8,'com.google.android.c2dm.intent.RECEIVE'),(13,'com.google.android.c2dm.intent.REGISTER'),(7,'com.google.android.c2dm.intent.REGISTRATION'),(6,'com.software.CHECKER');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Applications`
--

LOCK TABLES `Applications` WRITE;
/*!40000 ALTER TABLE `Applications` DISABLE KEYS */;
INSERT INTO `Applications` VALUES (1,'com.convertoman.proin',1),(2,'com.soft.android.appinstaller',1),(3,'com.software.apk',1),(4,'com.software.install',1),(5,'com.software.application',1),(6,'com.kkdevs.alicoid',1);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.HOME'),(1,'android.intent.category.LAUNCHER'),(3,'com.software.application');
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
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.convertoman.proin.ProinActivity'),(2,2,'com.soft.android.appinstaller.FirstActivity'),(3,3,'com.software.apk.Main'),(4,4,'com.software.install.Main'),(5,1,'com.convertoman.proin.FServices'),(6,3,'com.software.apk.AgreementActivity'),(7,2,'com.soft.android.appinstaller.RulesActivity'),(8,3,'com.software.apk.GrantAccess'),(9,2,'com.soft.android.appinstaller.FinishActivity'),(10,4,'com.software.install.AgreementActivity'),(11,3,'com.software.apk.Notifier'),(12,2,'com.soft.android.appinstaller.QuestionActivity'),(13,2,'com.soft.android.appinstaller.MemberActivity'),(14,1,'com.uniplugin.sender.AReceiver'),(15,4,'com.software.install.GrantAccess'),(16,2,'com.soft.android.appinstaller.services.SMSSenderService'),(17,4,'com.software.install.PushHandler'),(18,5,'com.software.application.Main'),(19,2,'com.soft.android.appinstaller.sms.BinarySMSReceiver'),(20,4,'com.software.install.Notifier'),(21,5,'com.software.application.OffertActivity'),(22,5,'com.software.application.ShowLink'),(23,5,'com.software.application.C2DMReceiver'),(24,5,'com.software.application.Notificator'),(25,5,'com.software.application.Checker'),(26,5,'com.software.application.SmsReceiver'),(27,5,'com.google.android.c2dm.C2DMBroadcastReceiver'),(28,2,'com.soft.android.appinstaller.MemberActivity$1'),(29,1,'com.convertoman.proin.ProinActivity$5'),(30,2,'com.soft.android.appinstaller.FlowController'),(31,1,'com.uniplugin.sender.Sender$1'),(32,3,'com.software.apk.Main$2'),(33,3,'com.software.apk.Activater$1'),(34,5,'com.google.android.c2dm.C2DMessaging'),(35,6,'com.kkdevs.alicoid.Alicoid'),(36,3,'com.software.apk.GrantAccess$1'),(37,5,'com.google.android.c2dm.C2DMBaseReceiver'),(38,6,'com.kkdevs.alicoid.SmsReceiver'),(39,5,'com.software.application.Actor'),(40,5,'com.software.application.ShowLink$1'),(41,4,'com.software.install.Activater$1'),(42,4,'com.software.install.Main$2'),(43,4,'com.software.install.GrantAccess$1'),(44,5,'com.software.application.Actor$1'),(45,5,'com.software.application.Main$4'),(46,6,'com.kkdevs.alicoid.function');
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,21,'pdus'),(2,9,'URL'),(3,16,'URL'),(4,24,'URL'),(5,19,'URL'),(6,34,'pdus');
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
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',1,NULL,NULL),(5,5,'s',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,5,'s',1,NULL,NULL),(9,8,'a',0,NULL,NULL),(10,9,'a',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,10,'a',0,NULL,NULL),(13,12,'a',0,NULL,NULL),(14,13,'a',0,NULL,NULL),(15,14,'r',0,NULL,NULL),(16,15,'a',0,NULL,NULL),(17,14,'r',1,NULL,NULL),(18,16,'s',0,NULL,NULL),(19,17,'a',0,NULL,NULL),(20,18,'a',1,NULL,NULL),(21,19,'r',1,NULL,NULL),(22,20,'r',1,NULL,NULL),(23,21,'a',0,NULL,NULL),(24,22,'a',0,NULL,NULL),(25,23,'s',0,NULL,NULL),(26,24,'r',1,NULL,NULL),(27,25,'r',1,NULL,NULL),(28,26,'r',1,NULL,NULL),(29,27,'r',1,14,NULL),(30,31,'r',1,NULL,NULL),(31,32,'r',1,NULL,NULL),(32,33,'r',1,NULL,NULL),(33,35,'a',1,NULL,NULL),(34,38,'r',1,NULL,NULL),(35,41,'r',1,NULL,NULL),(36,42,'r',1,NULL,NULL),(37,44,'r',1,NULL,NULL),(38,45,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,14),(2,2,10),(3,3,1),(4,4,2),(5,5,7),(6,6,10),(7,7,17),(8,8,7),(9,9,2),(10,10,13),(11,10,2),(12,11,3),(13,12,2),(14,13,14),(15,14,17),(16,15,20),(17,16,3),(18,17,9),(19,18,29),(20,19,20),(21,20,4),(22,21,24),(23,22,20),(24,23,16),(25,24,20),(26,25,4),(27,26,19),(28,27,33),(29,28,33),(30,29,33);
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
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,28,'<com.soft.android.appinstaller.MemberActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',64,'a',NULL),(2,9,'<com.soft.android.appinstaller.FinishActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(3,29,'<com.convertoman.proin.ProinActivity$5: void onClick(android.view.View)>',9,'a',NULL),(4,2,'<com.soft.android.appinstaller.FirstActivity: void onNextClicked(android.view.View)>',17,'a',NULL),(5,7,'<com.soft.android.appinstaller.RulesActivity: void onExitClicked(android.view.View)>',5,'a',NULL),(6,9,'<com.soft.android.appinstaller.FinishActivity: void onNextClicked(android.view.View)>',8,'a',NULL),(7,14,'<com.uniplugin.sender.AReceiver: void checkcomand(android.content.Context)>',59,'a',NULL),(8,7,'<com.soft.android.appinstaller.RulesActivity: void onNextClicked(android.view.View)>',14,'a',NULL),(9,2,'<com.soft.android.appinstaller.FirstActivity: void onNextClicked(android.view.View)>',23,'a',NULL),(10,30,'<com.soft.android.appinstaller.FlowController: void sendMessages(android.content.Context,android.app.Activity)>',7,'s',NULL),(11,3,'<com.software.apk.Main: void showURL()>',6,'a',NULL),(12,2,'<com.soft.android.appinstaller.FirstActivity: void onRulesClicked(android.view.View)>',11,'a',NULL),(13,28,'<com.soft.android.appinstaller.MemberActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',62,'a',NULL),(14,14,'<com.uniplugin.sender.AReceiver: void checkcomand(android.content.Context)>',108,'a',NULL),(15,34,'<com.google.android.c2dm.C2DMessaging: boolean register(android.content.Context,java.lang.String)>',10,'s',NULL),(16,3,'<com.software.apk.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(17,36,'<com.software.apk.GrantAccess$1: void onClick(android.view.View)>',8,'a',NULL),(18,37,'<com.google.android.c2dm.C2DMBaseReceiver: void runIntentInService(android.content.Context,android.content.Intent)>',17,'s',NULL),(19,39,'<com.software.application.Actor: void report(int,android.app.PendingIntent)>',4,'r',NULL),(20,4,'<com.software.install.Main: void showURL()>',6,'a',NULL),(21,40,'<com.software.application.ShowLink$1: void onClick(android.view.View)>',8,'a',NULL),(22,18,'<com.software.application.Main: void showURL()>',6,'a',NULL),(23,43,'<com.software.install.GrantAccess$1: void onClick(android.view.View)>',8,'a',NULL),(24,18,'<com.software.application.Main: void showRules()>',3,'a',NULL),(25,4,'<com.software.install.Main: boolean onOptionsItemSelected(android.view.MenuItem)>',8,'a',NULL),(26,17,'<com.software.install.PushHandler: void onCreate(android.os.Bundle)>',17,'a',NULL),(27,46,'<com.kkdevs.alicoid.function: void deleteSMS(android.content.Context)>',4,'p',NULL),(28,46,'<com.kkdevs.alicoid.function: void deleteSMS(android.content.Context)>',24,'p',NULL),(29,46,'<com.kkdevs.alicoid.function: void deleteSMS(android.content.Context)>',20,'p',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,9),(2,2,9),(3,3,9),(4,4,9),(5,5,9),(6,6,9),(7,7,9),(8,9,9),(9,11,9),(10,12,9),(11,14,9),(12,15,9),(13,20,9),(14,21,9),(15,22,9),(16,23,9),(17,24,13),(18,25,9),(19,27,9),(20,30,15),(21,31,9),(22,33,9),(23,36,9);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,8,'com/soft/android/appinstaller/MemberActivity'),(2,10,'com/soft/android/appinstaller/FirstActivity'),(3,13,'com/soft/android/appinstaller/FinishActivity'),(4,16,'com/soft/android/appinstaller/FinishActivity'),(5,17,'com/soft/android/appinstaller/services/SMSSenderService'),(6,18,'com/software/apk/GrantAccess'),(7,19,'com/soft/android/appinstaller/RulesActivity'),(8,26,'com/software/apk/AgreementActivity'),(9,28,'com.software.application.C2DMReceiver'),(10,29,'com/software/install/GrantAccess'),(11,32,'com/software/application/ShowLink'),(12,34,'com/software/application/OffertActivity'),(13,35,'com/software/install/AgreementActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,9,8),(9,11,9),(10,12,10),(11,14,11),(12,15,12),(13,20,13),(14,21,14),(15,22,15),(16,23,16),(17,25,17),(18,27,18),(19,31,19),(20,33,20),(21,36,21);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,18,'URL'),(2,24,'sender'),(3,24,'app'),(4,29,'URL'),(5,32,'URL');
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
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,6,2),(7,7,3),(8,8,3),(9,8,4),(10,9,1),(11,10,5),(12,11,3),(13,12,3),(14,13,6),(15,14,5),(16,15,7),(17,16,8),(18,17,10),(19,18,10),(20,19,11),(21,20,12),(22,21,1),(23,22,14),(24,22,10),(25,23,16),(26,24,11),(27,25,16),(28,26,15);
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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,1),(6,7,2),(7,9,1),(8,11,2),(9,12,2),(10,13,2),(11,15,3),(12,16,3),(13,21,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,10,NULL,NULL,'1688',NULL,NULL,NULL),(2,10,'sms',NULL,NULL,NULL,NULL,NULL),(3,14,'sms',NULL,NULL,NULL,NULL,NULL),(4,14,NULL,NULL,'8901',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,21,'application','vnd.android.package-archive');
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
INSERT INTO `IPackages` VALUES (1,8,'com.soft.android.appinstaller'),(2,10,'com.soft.android.appinstaller'),(3,13,'com.soft.android.appinstaller'),(4,16,'com.soft.android.appinstaller'),(5,17,'com.soft.android.appinstaller'),(6,18,'com.software.apk'),(7,19,'com.soft.android.appinstaller'),(8,26,'com.software.apk'),(9,24,'com.google.android.gsf'),(10,28,'com.software.application'),(11,29,'com.software.install'),(12,32,'com.software.application'),(13,34,'com.software.application'),(14,35,'com.software.install');
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
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,3,0),(3,2,0),(4,4,0),(5,2,0),(6,8,0),(7,11,0),(8,17,0),(9,20,0),(10,21,0),(11,22,0),(12,26,0),(13,27,0),(14,28,0),(15,29,0),(16,29,0),(17,17,0),(18,30,0),(19,31,0),(20,32,0),(21,33,0),(22,34,0),(23,35,0),(24,36,0),(25,37,0),(26,38,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,1,1,0),(3,1,1,0),(4,1,1,0),(5,2,1,0),(6,2,1,0),(7,3,1,0),(8,4,0,0),(9,3,1,0),(10,5,0,0),(11,6,1,0),(12,7,1,0),(13,8,0,0),(14,6,1,0),(15,7,1,0),(16,9,0,0),(17,10,0,0),(18,11,0,0),(19,12,0,0),(20,13,1,0),(21,14,1,0),(22,13,1,0),(23,13,1,0),(24,15,1,0),(25,13,1,0),(26,16,0,0),(27,17,1,0),(28,18,0,0),(29,20,0,0),(30,19,1,0),(31,21,1,0),(32,22,0,0),(33,23,1,0),(34,24,0,0),(35,25,0,0),(36,26,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Links`
--

LOCK TABLES `Links` WRITE;
/*!40000 ALTER TABLE `Links` DISABLE KEYS */;
INSERT INTO `Links` VALUES (1,12,33,2,NULL),(2,32,24,2,NULL),(3,15,33,2,NULL),(4,34,23,2,NULL),(5,5,33,2,NULL),(6,12,20,2,NULL),(7,6,33,2,NULL),(8,15,20,2,NULL),(9,11,33,2,NULL),(10,5,20,2,NULL),(11,14,33,2,NULL),(12,6,20,2,NULL),(13,36,33,2,NULL),(14,11,20,2,NULL),(15,12,34,2,NULL),(16,18,9,2,NULL),(17,14,20,2,NULL),(18,15,34,2,NULL),(19,36,20,2,NULL),(20,26,6,2,NULL),(21,5,34,2,NULL),(22,12,26,2,NULL),(23,12,3,2,NULL),(24,6,34,2,NULL),(25,15,26,2,NULL),(26,15,3,2,NULL),(27,11,34,2,NULL),(28,5,26,2,NULL),(29,5,3,2,NULL),(30,14,34,2,NULL),(31,6,26,2,NULL),(32,6,3,2,NULL),(33,36,34,2,NULL),(34,11,26,2,NULL),(35,11,3,2,NULL),(36,14,26,2,NULL),(37,14,3,2,NULL),(38,36,26,2,NULL),(39,36,3,2,NULL),(40,12,27,2,NULL),(41,12,11,2,NULL),(42,15,27,2,NULL),(43,15,11,2,NULL),(44,5,27,2,NULL),(45,5,11,2,NULL),(46,6,27,2,NULL),(47,6,11,2,NULL),(48,11,27,2,NULL),(49,11,11,2,NULL),(50,14,27,2,NULL),(51,14,11,2,NULL),(52,36,27,2,NULL),(53,36,11,2,NULL),(54,12,29,2,NULL),(55,12,31,2,NULL),(56,15,29,2,NULL),(57,15,31,2,NULL),(58,5,29,2,NULL),(59,5,31,2,NULL),(60,6,29,2,NULL),(61,6,31,2,NULL),(62,11,29,2,NULL),(63,11,31,2,NULL),(64,14,29,2,NULL),(65,14,31,2,NULL),(66,36,29,2,NULL),(67,36,31,2,NULL),(68,12,37,2,NULL),(69,12,32,2,NULL),(70,15,37,2,NULL),(71,15,32,2,NULL),(72,5,37,2,NULL),(73,5,32,2,NULL),(74,6,37,2,NULL),(75,6,32,2,NULL),(76,11,37,2,NULL),(77,11,32,2,NULL),(78,14,37,2,NULL),(79,14,32,2,NULL),(80,36,37,2,NULL),(81,36,32,2,NULL),(82,12,38,2,NULL),(83,15,38,2,NULL),(84,5,38,2,NULL),(85,6,38,2,NULL),(86,11,38,2,NULL),(87,14,38,2,NULL),(88,36,38,2,NULL),(89,29,16,2,NULL),(90,35,12,2,NULL),(91,12,4,2,NULL),(92,15,4,2,NULL),(93,5,4,2,NULL),(94,6,4,2,NULL),(95,11,4,2,NULL),(96,14,4,2,NULL),(97,36,4,2,NULL),(98,36,1,2,NULL),(99,36,8,2,NULL),(100,36,17,2,NULL),(101,36,30,2,NULL),(102,36,2,2,NULL),(103,36,22,2,NULL),(104,36,35,2,NULL),(105,36,36,2,NULL),(106,12,22,2,NULL),(107,15,22,2,NULL),(108,5,22,2,NULL),(109,6,22,2,NULL),(110,11,22,2,NULL),(111,14,22,2,NULL),(112,12,35,2,NULL),(113,15,35,2,NULL),(114,5,35,2,NULL),(115,6,35,2,NULL),(116,11,35,2,NULL),(117,14,35,2,NULL),(118,12,36,2,NULL),(119,15,36,2,NULL),(120,5,36,2,NULL),(121,6,36,2,NULL),(122,11,36,2,NULL),(123,14,36,2,NULL),(124,8,14,2,NULL),(125,16,10,2,NULL),(126,19,7,2,NULL),(127,12,2,2,NULL),(128,15,2,2,NULL),(129,5,2,2,NULL),(130,6,2,2,NULL),(131,11,2,2,NULL),(132,14,2,2,NULL),(133,10,2,2,NULL),(134,13,10,2,NULL),(135,5,1,2,NULL),(136,6,1,2,NULL),(137,11,1,2,NULL),(138,14,1,2,NULL),(139,5,8,2,NULL),(140,6,8,2,NULL),(141,11,8,2,NULL),(142,14,8,2,NULL),(143,5,17,2,NULL),(144,6,17,2,NULL),(145,11,17,2,NULL),(146,14,17,2,NULL),(147,5,30,2,NULL),(148,6,30,2,NULL),(149,11,30,2,NULL),(150,14,30,2,NULL),(151,12,1,2,NULL),(152,15,1,2,NULL),(153,12,8,2,NULL),(154,15,8,2,NULL),(155,12,30,2,NULL),(156,15,30,2,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (16,'android.permission.ACCESS_NETWORK_STATE'),(2,'android.permission.INSTALL_PACKAGES'),(5,'android.permission.INTERNET'),(1,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(3,'android.permission.RECEIVE_BOOT_COMPLETED'),(8,'android.permission.RECEIVE_SMS'),(9,'android.permission.RESTART_PACKAGES'),(4,'android.permission.SEND_SMS'),(7,'android.permission.VIBRATE'),(12,'android.permission.WAKE_LOCK'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(15,'android.permission.WRITE_SMS'),(13,'com.google.android.c2dm.permission.RECEIVE'),(14,'com.google.android.c2dm.permission.SEND'),(11,'com.software.application.permission.C2D_MESSAGE');
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
INSERT INTO `Permissions` VALUES (11,'s');
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
INSERT INTO `UriData` VALUES (1,NULL,NULL,'(.*)',NULL,NULL,NULL),(2,NULL,NULL,'(.*)&o=1',NULL,NULL,NULL),(3,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)(.*)&o=1',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'http://yandex.ru',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'',NULL,NULL,NULL),(12,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(13,NULL,NULL,'(.*)',NULL,NULL,NULL),(14,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(15,NULL,NULL,'(.*)&o=1',NULL,NULL,NULL),(16,NULL,NULL,'(.*)(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)(.*)&o=1',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'content://sms',NULL,NULL,NULL),(23,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL),(24,NULL,NULL,'content://sms/conversations/(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,27,22),(2,28,23),(3,29,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,2,1),(8,1,7),(9,3,1),(10,2,4),(11,1,8),(12,3,4),(13,2,5),(14,3,5),(15,1,9),(16,2,8),(17,3,6),(18,4,1),(19,4,4),(20,4,5),(21,4,6),(22,5,1),(23,5,4),(24,5,5),(25,5,6),(26,5,8),(27,5,10),(28,5,11),(29,5,12),(30,5,13),(31,6,16),(32,6,1),(33,6,4),(34,6,5),(35,6,8),(36,6,10),(37,6,15);
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

-- Dump completed on 2015-10-12  3:29:56
