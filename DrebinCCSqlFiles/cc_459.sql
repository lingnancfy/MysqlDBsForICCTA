-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_459
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (7,'(.*)'),(5,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CALL'),(14,'android.intent.action.CHOOSER'),(10,'android.intent.action.DELETE'),(18,'android.intent.action.DIAL'),(1,'android.intent.action.MAIN'),(2,'android.intent.action.NEW_OUTGOING_CALL'),(13,'android.intent.action.PACKAGE_ADDED'),(3,'android.intent.action.PHONE_STATE'),(8,'android.intent.action.RUN'),(11,'android.intent.action.SCREEN_OFF'),(16,'android.intent.action.SENDTO'),(12,'android.intent.action.USER_PRESENT'),(6,'android.intent.action.VIEW'),(15,'android.intent.action.WEB_SEARCH'),(19,'android.net.wifi.SCAN_RESULTS'),(4,'android.provider.Telephony.SMS_RECEIVED'),(17,'com.tencent.lbsapi.GPS_SINGLE');
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
INSERT INTO `Applications` VALUES (1,'com.GoldDream.TingTing12i',1),(2,'com.GoldDream.TingTing07i',1),(3,'com.GoldDream.TingTing10ii',1),(4,'com.GoldDream.TingTing11i',1),(5,'de.greenrobt.kmpa',4),(6,'com.frosteam.amtale.main',10),(7,'com.Wuzla.game.DoodleDashh',13);
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
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER');
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.GoldDream.TingTing12i.TingTing21'),(2,3,'com.GoldDream.TingTing10ii.TingTing21'),(3,2,'com.GoldDream.TingTing07i.TingTing21'),(4,1,'com.GoldDream.TingTing12i.readme'),(5,4,'com.GoldDream.TingTing11i.TingTing21'),(6,1,'com.google.ads.AdActivity'),(7,3,'com.GoldDream.TingTing10ii.readme'),(8,1,'com.GoldDream.zj.zjService'),(9,2,'com.GoldDream.TingTing07i.readme'),(10,1,'com.GoldDream.zj.zjReceiver'),(11,4,'com.GoldDream.TingTing11i.readme'),(12,3,'com.google.ads.AdActivity'),(13,2,'com.google.ads.AdActivity'),(14,4,'com.google.ads.AdActivity'),(15,3,'com.GoldDream.zj.zjService'),(16,2,'com.GoldDream.zj.zjService'),(17,4,'com.GoldDream.zj.zjService'),(18,3,'com.GoldDream.zj.zjReceiver'),(19,2,'com.GoldDream.zj.zjReceiver'),(20,4,'com.GoldDream.zj.zjReceiver'),(21,5,'de.greenrobt.kmpa.pregame.StartActivity'),(22,5,'de.greenrobt.kmpa.GameActivity'),(23,5,'de.greenrobt.kmpa.pregame.LevelChooserActivity'),(24,5,'de.greenrobt.kmpa.pregame.MenuActivity'),(25,5,'de.greenrobt.kmpa.HtmlActivity'),(26,5,'de.greenrobt.kmpa.pregame.LevelMapActivity'),(27,5,'de.greenrobt.kmpa.pregame.SettingsActivity'),(28,5,'de.greenrobt.kmpa.pregame.LevelpackChooserActivity'),(29,5,'com.GoldDream.zj.zjService'),(30,5,'com.GoldDream.zj.zjReceiver'),(31,1,'com.google.ads.util.AdUtil$UserActivityReceiver'),(32,3,'com.google.ads.util.AdUtil$UserActivityReceiver'),(33,2,'com.google.ads.util.AdUtil$UserActivityReceiver'),(34,4,'com.google.ads.util.AdUtil$UserActivityReceiver'),(35,5,'ax'),(36,5,'s'),(37,5,'am'),(38,5,'ae'),(39,6,'com.sjli.client.MogoStart'),(40,6,'com.frosteam.amtale.main.Vortex'),(41,6,'com.frosteam.amtale.main.LevelChooser'),(42,6,'com.frosteam.amtale.main.PauseActivity'),(43,6,'com.frosteam.amtale.main.OptionsActivity'),(44,6,'com.frosteam.amtale.main.HelpActivity'),(45,6,'com.frosteam.amtale.main.WelcomeScreen'),(46,6,'com.frosteam.amtale.main.SplashActivity'),(47,6,'com.sjli.client.HHandPics'),(48,6,'com.sjli.client.viewpic'),(49,6,'com.google.ads.AdActivity'),(50,6,'cn.domob.android.ads.DomobActivity'),(51,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(52,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(53,6,'net.youmi.android.AdActivity'),(54,6,'net.youmi.android.spotad.AdActivity'),(55,6,'com.wooboo.adlib_android.AdActivity'),(56,6,'com.wooboo.adlib_android.FullActivity'),(57,6,'com.tencent.mobwin.MobinWINBrowserActivity'),(58,6,'com.adchina.android.ads.views.AdBrowserView'),(59,6,'com.adchina.android.ads.views.FullScreenAdActivity'),(60,6,'cn.appmedia.ad.AdActivity'),(61,6,'com.winad.android.ads.VideoPlayerActivity'),(62,6,'com.sjli.client.zjjService'),(63,6,'com.admogo.UpdateService'),(64,6,'com.sjli.client.zjjReceiver'),(65,6,'com.winad.android.ads.ReciveInstallPackage'),(66,7,'com.sjli.client.MogoStart'),(67,7,'com.Wuzla.game.DoodleDashh.DoodleDash'),(68,7,'com.sjli.client.HHandPics'),(69,7,'com.sjli.client.viewpic'),(70,7,'com.google.ads.AdActivity'),(71,7,'cn.domob.android.ads.DomobActivity'),(72,7,'com.adwo.adsdk.AdwoAdBrowserActivity'),(73,7,'com.adwo.adsdk.AdwoSplashAdActivity'),(74,7,'net.youmi.android.AdActivity'),(75,7,'net.youmi.android.spotad.AdActivity'),(76,7,'com.wooboo.adlib_android.AdActivity'),(77,7,'com.wooboo.adlib_android.FullActivity'),(78,7,'com.tencent.mobwin.MobinWINBrowserActivity'),(79,7,'com.adchina.android.ads.views.AdBrowserView'),(80,7,'com.adchina.android.ads.views.FullScreenAdActivity'),(81,7,'cn.appmedia.ad.AdActivity'),(82,7,'com.winad.android.ads.VideoPlayerActivity'),(83,7,'com.suizong.mobplate.ads.AdActivity'),(84,7,'com.mt.airad.MultiAD'),(85,7,'com.lmmob.ad.sdk.LmMobAdWebView'),(86,7,'com.lmmob.ad.sdk.LmMobFullImageActivity'),(87,7,'net.winsmedia.WebViewActivity'),(88,7,'com.baidu.AppActivity'),(89,7,'com.sjli.client.zjjService'),(90,7,'com.admogo.UpdateService'),(91,7,'com.sjli.client.zjjReceiver'),(92,7,'com.winad.android.ads.ReciveInstallPackage'),(93,7,'com.tencent.mobwin.core.k'),(94,7,'com.tencent.mobwin.core.w'),(95,7,'com.sjli.client.MogoStart$1'),(96,7,'com.winad.android.ads.ae'),(97,7,'com.wooboo.adlib_android.sc'),(98,7,'net.youmi.android.en'),(99,7,'com.google.ads.util.AdUtil$UserActivityReceiver'),(100,7,'com.tencent.lbsapi.core.c'),(101,7,'com.tencent.lbsapi.core.a'),(102,7,'com.tencent.mobwin.utils.ApkInstalReceiver'),(103,7,'net.youmi.android.w'),(104,7,'com.wooboo.adlib_android.t'),(105,7,'com.wooboo.download.h'),(106,7,'com.wooboo.adlib_android.db'),(107,7,'com.winad.android.ads.d'),(108,7,'net.youmi.android.bj'),(109,7,'com.sjli.client.MogoStart$4'),(110,7,'com.sjli.client.MogoStart$6'),(111,7,'com.mt.airad.IIIIlllIlllIIIII'),(112,7,'com.wooboo.adlib_android.tc'),(113,7,'com.sjli.client.MogoStart$7');
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
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,17,'pdus'),(2,10,'action'),(3,11,'incoming_number'),(4,13,'com.google.ads.AdOpener'),(5,17,'android.intent.extra.PHONE_NUMBER'),(6,10,'params'),(7,11,'android.intent.extra.PHONE_NUMBER'),(8,17,'incoming_number'),(9,19,'android.intent.extra.PHONE_NUMBER'),(10,11,'pdus'),(11,6,'params'),(12,6,'action'),(13,10,'com.google.ads.AdOpener'),(14,19,'pdus'),(15,13,'params'),(16,14,'params'),(17,13,'action'),(18,6,'com.google.ads.AdOpener'),(19,14,'com.google.ads.AdOpener'),(20,20,'android.intent.extra.PHONE_NUMBER'),(21,14,'action'),(22,19,'incoming_number'),(23,20,'pdus'),(24,20,'incoming_number'),(25,30,'incoming_number'),(26,30,'pdus'),(27,25,'url'),(28,30,'android.intent.extra.PHONE_NUMBER'),(29,86,'mogo_link'),(30,74,'EFFECTIVE_TYPE'),(31,74,'URL'),(32,72,'(.*)'),(33,68,'transitionTime'),(34,81,'operationURL'),(35,80,'adID'),(36,81,'lmmob_send_data'),(37,76,'ArgName'),(38,70,'ArgName'),(39,74,'ArgName'),(40,66,'action'),(41,70,'D780FBF4215247bcBB1AC0AD33C474FE'),(42,67,'msg'),(43,74,'APP_ID'),(44,69,'transitionTime'),(45,70,'YOUMI_CHANNEL'),(46,74,'YOUMI_CHANNEL'),(47,68,'shouldResizeOverlay'),(48,68,'url'),(49,81,'AD_ID'),(50,68,'shouldShowBottomBar'),(51,68,'shouldMakeOverlayTransparent'),(52,86,'mogo_title'),(53,69,'FSAd'),(54,76,'Time'),(55,68,'recurl'),(56,68,'shouldShowTitlebar'),(57,70,'EB80F3291A8E469c962CA133BDC549D7'),(58,67,'appId'),(59,66,'com.google.ads.AdOpener'),(60,69,'shouldShowTitlebar'),(61,74,'APP_CHANNEL'),(62,69,'shouldShowBottomBar'),(63,82,'operationURL'),(64,65,'objUrl'),(65,70,'D50EF1926ADD471892E72BCE6D7E032C'),(66,67,'appName'),(67,68,'overlayTitle'),(68,67,'actType'),(69,82,'lmmob_send_data'),(70,69,'overlayTransition'),(71,75,'browserurl'),(72,74,'browserurl'),(73,68,'overlayTransition'),(74,78,'URL'),(75,76,'mAdType'),(76,69,'overlayTitle'),(77,66,'params'),(78,68,'(.*)'),(79,68,'shouldEnableBottomBar'),(80,70,'172C94EDC717477aBF600D7898A64A8E'),(81,80,'adURL'),(82,69,'shouldResizeOverlay'),(83,77,'url'),(84,69,'shouldMakeOverlayTransparent'),(85,69,'shouldEnableBottomBar');
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
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',1,NULL,NULL),(3,3,'a',1,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,8,'s',1,NULL,NULL),(8,7,'a',0,NULL,NULL),(9,9,'a',0,NULL,NULL),(10,12,'a',0,NULL,NULL),(11,10,'r',1,NULL,NULL),(12,11,'a',0,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',1,NULL,NULL),(16,16,'s',1,NULL,NULL),(17,18,'r',1,NULL,NULL),(18,17,'s',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'r',1,NULL,NULL),(21,21,'a',1,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',0,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'s',1,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'r',1,NULL,NULL),(33,33,'r',1,NULL,NULL),(34,34,'r',1,NULL,NULL),(35,39,'a',1,NULL,NULL),(36,40,'a',0,NULL,NULL),(37,41,'a',0,NULL,NULL),(38,42,'a',0,NULL,NULL),(39,43,'a',0,NULL,NULL),(40,44,'a',0,NULL,NULL),(41,45,'a',0,NULL,NULL),(42,46,'a',0,NULL,NULL),(43,47,'a',0,NULL,NULL),(44,48,'a',0,NULL,NULL),(45,49,'a',0,NULL,NULL),(46,50,'a',0,NULL,NULL),(47,51,'a',0,NULL,NULL),(48,52,'a',0,NULL,NULL),(49,53,'a',0,NULL,NULL),(50,54,'a',0,NULL,NULL),(51,55,'a',0,NULL,NULL),(52,56,'a',0,NULL,NULL),(53,57,'a',0,NULL,NULL),(54,58,'a',0,NULL,NULL),(55,59,'a',0,NULL,NULL),(56,60,'a',0,NULL,NULL),(57,61,'a',0,NULL,NULL),(58,62,'s',1,NULL,NULL),(59,63,'s',1,NULL,NULL),(60,64,'r',1,NULL,NULL),(61,65,'r',1,NULL,NULL),(62,66,'a',1,NULL,NULL),(63,67,'a',0,NULL,NULL),(64,68,'a',0,NULL,NULL),(65,69,'a',0,NULL,NULL),(66,70,'a',0,NULL,NULL),(67,71,'a',0,NULL,NULL),(68,72,'a',0,NULL,NULL),(69,73,'a',0,NULL,NULL),(70,74,'a',0,NULL,NULL),(71,75,'a',0,NULL,NULL),(72,76,'a',0,NULL,NULL),(73,77,'a',0,NULL,NULL),(74,78,'a',0,NULL,NULL),(75,79,'a',0,NULL,NULL),(76,80,'a',0,NULL,NULL),(77,81,'a',0,NULL,NULL),(78,82,'a',0,NULL,NULL),(79,83,'a',0,NULL,NULL),(80,84,'a',0,NULL,NULL),(81,85,'a',0,NULL,NULL),(82,86,'a',0,NULL,NULL),(83,87,'a',0,NULL,NULL),(84,88,'a',0,NULL,NULL),(85,89,'s',1,NULL,NULL),(86,90,'s',1,NULL,NULL),(87,91,'r',1,NULL,NULL),(88,92,'r',1,NULL,NULL),(89,98,'r',1,NULL,NULL),(90,99,'r',1,NULL,NULL),(91,100,'r',1,NULL,NULL),(92,101,'r',1,NULL,NULL),(93,102,'r',1,NULL,NULL),(94,102,'r',1,NULL,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,2,2),(3,3,2),(4,4,4),(5,5,15),(6,7,13),(7,6,1),(8,8,5),(9,9,17),(10,10,6),(11,11,12),(12,12,15),(13,13,12),(14,14,3),(15,15,2),(16,16,5),(17,18,3),(18,17,11),(19,19,2),(20,20,18),(21,21,3),(22,22,1),(23,23,10),(24,24,14),(25,25,16),(26,26,1),(27,27,9),(28,28,7),(29,29,8),(30,30,1),(31,31,9),(32,32,5),(33,33,18),(34,34,19),(35,35,24),(36,36,15),(37,37,7),(38,38,5),(39,39,24),(40,40,16),(41,41,22),(42,41,28),(43,41,27),(44,42,4),(45,43,20),(46,44,7),(47,45,16),(48,46,18),(49,47,22),(50,47,28),(51,47,27),(52,48,3),(53,49,26),(54,50,21),(55,51,24),(56,52,24),(57,53,22),(58,53,27),(59,53,28),(60,54,28),(61,55,29),(62,56,29),(63,57,23),(64,58,24),(65,59,29),(66,60,30),(67,61,85),(68,62,74),(69,62,70),(70,63,74),(71,63,70),(72,64,62),(73,65,74),(74,66,74),(75,66,70),(76,67,74),(77,67,70),(78,68,64),(79,69,74),(80,69,70),(81,70,70),(82,70,74),(83,71,74),(84,72,74),(85,72,70),(86,73,74),(87,73,72),(88,73,70),(89,74,70),(90,74,74),(91,75,87),(92,76,70),(93,76,74),(94,77,74),(95,77,70),(96,78,74),(97,78,70),(98,79,88),(99,80,70),(100,80,74),(101,81,62),(102,82,70),(103,82,74),(104,83,87),(105,84,74),(106,84,70),(107,85,62),(108,86,66),(109,87,87),(110,88,74),(111,88,80),(112,89,74),(113,89,70),(114,90,74),(115,90,78),(116,90,68),(117,90,66),(118,90,85),(119,90,70),(120,90,86),(121,90,69),(122,91,75),(123,91,74),(124,92,74),(125,93,70),(126,93,74),(127,94,62),(128,95,85);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,7,'<com.GoldDream.TingTing10ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(2,2,'<com.GoldDream.TingTing10ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(3,2,'<com.GoldDream.TingTing10ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(4,4,'<com.GoldDream.TingTing12i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',25,'a',NULL),(5,15,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(6,1,'<com.GoldDream.TingTing12i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',30,'a',NULL),(7,13,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(8,5,'<com.GoldDream.TingTing11i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(9,18,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(10,6,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(11,11,'<com.GoldDream.TingTing11i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(12,15,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(13,11,'<com.GoldDream.TingTing11i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(14,3,'<com.GoldDream.TingTing07i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(15,2,'<com.GoldDream.TingTing10ii.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(16,5,'<com.GoldDream.TingTing11i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(17,10,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',10,'s',NULL),(18,3,'<com.GoldDream.TingTing07i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(19,2,'<com.GoldDream.TingTing10ii.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(20,17,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(21,3,'<com.GoldDream.TingTing07i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(22,1,'<com.GoldDream.TingTing12i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(23,12,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(24,14,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(25,16,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(26,1,'<com.GoldDream.TingTing12i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(27,9,'<com.GoldDream.TingTing07i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(28,8,'<com.GoldDream.zj.zjService: void a()>',97,'a',NULL),(29,7,'<com.GoldDream.TingTing10ii.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(30,1,'<com.GoldDream.TingTing12i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(31,9,'<com.GoldDream.TingTing07i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(32,5,'<com.GoldDream.TingTing11i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(33,17,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(34,19,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(35,24,'<de.greenrobt.kmpa.pregame.MenuActivity: void onClick(android.view.View)>',23,'a',NULL),(36,15,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(37,8,'<com.GoldDream.zj.zjService: void a()>',106,'a',NULL),(38,5,'<com.GoldDream.TingTing11i.TingTing21: boolean onMenuItemSelected(int,android.view.MenuItem)>',20,'a',NULL),(39,24,'<de.greenrobt.kmpa.pregame.MenuActivity: void onClick(android.view.View)>',12,'a',NULL),(40,16,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(41,28,'<de.greenrobt.kmpa.pregame.LevelpackChooserActivity: void e(cz)>',16,'a',NULL),(42,4,'<com.GoldDream.TingTing12i.readme: boolean onMenuItemSelected(int,android.view.MenuItem)>',15,'a',NULL),(43,20,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(44,8,'<com.GoldDream.zj.zjService: void a()>',89,'a',NULL),(45,16,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(46,17,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(47,28,'<de.greenrobt.kmpa.pregame.LevelpackChooserActivity: void e(cz)>',25,'a',NULL),(48,3,'<com.GoldDream.TingTing07i.TingTing21: void onCreate(android.os.Bundle)>',7,'s',NULL),(49,26,'<de.greenrobt.kmpa.pregame.LevelMapActivity: void onClick(android.view.View)>',32,'a',NULL),(50,35,'<ax: void onClick(android.view.View)>',25,'a',NULL),(51,24,'<de.greenrobt.kmpa.pregame.MenuActivity: boolean onKeyDown(int,android.view.KeyEvent)>',35,'a',NULL),(52,24,'<de.greenrobt.kmpa.pregame.MenuActivity: void onClick(android.view.View)>',6,'a',NULL),(53,36,'<s: void a(bx)>',21,'a',NULL),(54,37,'<am: void a(java.lang.String,cz)>',12,'p',NULL),(55,29,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',24,'a',NULL),(56,29,'<com.GoldDream.zj.zjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',33,'a',NULL),(57,38,'<ae: void onClick(android.view.View)>',14,'a',NULL),(58,24,'<de.greenrobt.kmpa.pregame.MenuActivity: void onClick(android.view.View)>',17,'a',NULL),(59,29,'<com.GoldDream.zj.zjService: void CallPhoneNumber(java.lang.String)>',11,'a',NULL),(60,30,'<com.GoldDream.zj.zjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(61,89,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',14,'a',NULL),(62,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',175,'a',NULL),(63,94,'<com.tencent.mobwin.core.w: void a(java.io.File,int)>',11,'a',NULL),(64,95,'<com.sjli.client.MogoStart$1: boolean onTouch(android.view.View,android.view.MotionEvent)>',21,'a',NULL),(65,78,'<com.tencent.mobwin.MobinWINBrowserActivity: void a(java.lang.String,android.content.Context)>',18,'a',NULL),(66,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',192,'a',NULL),(67,78,'<com.tencent.mobwin.MobinWINBrowserActivity: void c(java.lang.String,android.content.Context)>',9,'a',NULL),(68,68,'<com.sjli.client.HHandPics: void loadurl(android.webkit.WebView,java.lang.String)>',9,'a',NULL),(69,96,'<com.winad.android.ads.ae: void c(android.content.Context,java.lang.String)>',6,'a',NULL),(70,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',129,'a',NULL),(71,97,'<com.wooboo.adlib_android.sc: java.lang.String h(android.content.Context)>',20,'p',NULL),(72,103,'<net.youmi.android.w: void onClick(android.view.View)>',48,'a',NULL),(73,104,'<com.wooboo.adlib_android.t: void onClick(android.view.View)>',27,'a',NULL),(74,105,'<com.wooboo.download.h: boolean c(android.content.Context,java.lang.String)>',13,'a',NULL),(75,91,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',9,'s',NULL),(76,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',163,'a',NULL),(77,106,'<com.wooboo.adlib_android.db: void onClick(android.view.View)>',14,'a',NULL),(78,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',104,'a',NULL),(79,107,'<com.winad.android.ads.d: void a(android.content.Context,java.lang.String)>',5,'a',NULL),(80,108,'<net.youmi.android.bj: void a(android.content.Context,java.lang.String)>',7,'a',NULL),(81,109,'<com.sjli.client.MogoStart$4: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(82,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',90,'p',NULL),(83,91,'<com.sjli.client.zjjReceiver: void onReceive(android.content.Context,android.content.Intent)>',30,'s',NULL),(84,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',111,'p',NULL),(85,110,'<com.sjli.client.MogoStart$6: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(86,70,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',82,'a',NULL),(87,91,'<com.sjli.client.zjjReceiver: void startObjActivity(android.content.Context)>',7,'a',NULL),(88,111,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(89,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',67,'a',NULL),(90,112,'<com.wooboo.adlib_android.tc: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(91,79,'<com.adchina.android.ads.views.AdBrowserView: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',13,'a',NULL),(92,97,'<com.wooboo.adlib_android.sc: java.lang.String h(android.content.Context)>',49,'p',NULL),(93,93,'<com.tencent.mobwin.core.k: void onClick(android.view.View)>',152,'a',NULL),(94,113,'<com.sjli.client.MogoStart$7: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(95,89,'<com.sjli.client.zjjService: java.lang.String executeTask(java.lang.Integer,java.lang.String)>',23,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=114 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,6),(2,2,6),(3,4,6),(4,5,6),(5,6,6),(6,7,6),(7,9,7),(8,10,8),(9,11,6),(10,12,6),(11,13,7),(12,14,7),(13,15,9),(14,16,6),(15,17,7),(16,18,6),(17,20,6),(18,22,8),(19,23,6),(20,24,6),(21,25,6),(22,26,6),(23,27,6),(24,28,6),(25,29,10),(26,30,7),(27,32,7),(28,33,7),(29,34,6),(30,35,10),(31,36,7),(32,37,6),(33,39,6),(34,41,8),(35,42,10),(36,44,10),(37,45,6),(38,46,6),(39,48,6),(40,49,6),(41,50,6),(42,51,8),(43,52,6),(44,53,9),(45,54,9),(46,55,9),(47,56,6),(48,58,6),(49,63,6),(50,64,10),(51,65,6),(52,68,9),(53,69,8),(54,70,10),(55,71,6),(56,72,6),(57,73,6),(58,75,6),(59,77,14),(60,78,14),(61,79,14),(62,80,14),(63,81,14),(64,82,14),(65,83,14),(66,84,14),(67,86,15),(68,87,16),(69,88,14),(70,89,14),(71,90,14),(72,91,14),(73,92,14),(74,93,14),(75,94,14),(76,95,14),(77,96,14),(78,97,14),(79,98,14),(80,99,14),(81,100,14),(82,101,14),(83,102,14),(84,103,14),(85,104,7),(86,105,8),(87,106,6),(88,107,6),(89,108,7),(90,109,18),(91,110,1),(92,111,1),(93,112,6),(94,113,6),(95,114,6),(96,115,6),(97,116,6),(98,117,6),(99,118,6),(100,119,6),(101,120,6),(102,122,8),(103,124,6),(104,125,7),(105,126,7),(106,128,6),(107,130,7),(108,131,6),(109,132,6),(110,133,6),(111,134,6),(112,135,6),(113,137,6);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,110,1),(2,111,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,3,'com/GoldDream/TingTing10ii/readme'),(2,5,'com.android.packageinstaller.PackageInstallerActivity'),(3,8,'com/GoldDream/zj/zjService'),(4,10,'com/GoldDream/zj/zjService'),(5,19,'com/GoldDream/zj/zjService'),(6,21,'com/GoldDream/TingTing07i/readme'),(7,22,'com/GoldDream/zj/zjService'),(8,24,'com.android.packageinstaller.PackageInstallerActivity'),(9,31,'com/GoldDream/zj/zjService'),(10,38,'com/GoldDream/TingTing12i/readme'),(11,40,'com/GoldDream/TingTing11i/readme'),(12,41,'com/GoldDream/zj/zjService'),(13,43,'de/greenrobt/kmpa/HtmlActivity'),(14,45,'com.android.packageinstaller.PackageInstallerActivity'),(15,47,'de/greenrobt/kmpa/pregame/LevelpackChooserActivity'),(16,48,'com.android.packageinstaller.PackageInstallerActivity'),(17,51,'com/GoldDream/zj/zjService'),(18,57,'com/GoldDream/zj/zjService'),(19,59,'de/greenrobt/kmpa/pregame/LevelpackChooserActivity'),(20,60,'de/greenrobt/kmpa/pregame/MenuActivity'),(21,61,'de/greenrobt/kmpa/pregame/LevelChooserActivity'),(22,62,'de/greenrobt/kmpa/pregame/LevelMapActivity'),(23,65,'com.android.packageinstaller.PackageInstallerActivity'),(24,66,'de/greenrobt/kmpa/GameActivity'),(25,67,'de/greenrobt/kmpa/pregame/SettingsActivity'),(26,69,'com/GoldDream/zj/zjService'),(27,72,'com.google.android.maps.MapsActivity'),(28,74,'com/Wuzla/game/DoodleDashh/DoodleDash'),(29,75,'com.android.browser.BrowserActivity'),(30,76,'com/tencent/mobwin/MobinWINBrowserActivity'),(31,85,'com/sjli/client/viewpic'),(32,105,'com/sjli/client/zjjService'),(33,107,'com.google.android.maps.MapsActivity'),(34,121,'com/Wuzla/game/DoodleDashh/DoodleDash'),(35,122,'com/sjli/client/zjjService'),(36,123,'com/Wuzla/game/DoodleDashh/DoodleDash'),(37,127,'com/sjli/client/HHandPics'),(38,129,'com/tencent/mobwin/MobinWINBrowserActivity'),(39,134,'com.google.android.maps.MapsActivity'),(40,135,'com.android.browser.BrowserActivity'),(41,136,'com/Wuzla/game/DoodleDashh/DoodleDash'),(42,137,'com.android.packageinstaller.PackageInstallerActivity');
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
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,1,1),(2,2,2),(3,4,3),(4,5,4),(5,7,6),(6,6,5),(7,11,7),(8,9,8),(9,12,9),(10,13,10),(11,14,11),(12,15,12),(13,16,13),(14,17,14),(15,18,15),(16,20,16),(17,23,17),(18,24,18),(19,25,19),(20,26,20),(21,27,21),(22,28,22),(23,29,23),(24,30,24),(25,32,25),(26,33,26),(27,34,27),(28,35,28),(29,36,29),(30,37,30),(31,39,31),(32,42,32),(33,44,33),(34,45,34),(35,46,35),(36,48,36),(37,49,37),(38,50,38),(39,52,39),(40,53,40),(41,54,41),(42,55,42),(43,56,43),(44,58,44),(45,63,45),(46,64,47),(47,65,48),(48,68,49),(49,70,50),(50,71,51),(51,72,52),(52,73,53),(53,75,54),(54,87,55),(55,104,57),(56,106,58),(57,107,59),(58,108,60),(59,109,61),(60,112,62),(61,113,63),(62,114,64),(63,115,65),(64,116,66),(65,117,67),(66,118,68),(67,119,69),(68,120,70),(69,124,73),(70,125,74),(71,126,75),(72,128,76),(73,130,77),(74,131,78),(75,132,79),(76,133,81),(77,134,82),(78,135,83),(79,137,84);
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,43,'url'),(2,76,'EFFECTIVE_TYPE'),(3,77,'android.intent.extra.INTENT'),(4,78,'android.intent.extra.INTENT'),(5,79,'android.intent.extra.TITLE'),(6,79,'android.intent.extra.INTENT'),(7,80,'android.intent.extra.INTENT'),(8,81,'android.intent.extra.TITLE'),(9,81,'android.intent.extra.INTENT'),(10,82,'android.intent.extra.INTENT'),(11,83,'android.intent.extra.TITLE'),(12,83,'android.intent.extra.INTENT'),(13,84,'android.intent.extra.TITLE'),(14,84,'android.intent.extra.INTENT'),(15,85,'objUrl'),(16,86,'query'),(17,87,'sms_body'),(18,88,'android.intent.extra.INTENT'),(19,89,'android.intent.extra.INTENT'),(20,90,'android.intent.extra.TITLE'),(21,90,'android.intent.extra.INTENT'),(22,91,'android.intent.extra.INTENT'),(23,92,'android.intent.extra.TITLE'),(24,92,'android.intent.extra.INTENT'),(25,93,'android.intent.extra.INTENT'),(26,94,'android.intent.extra.TITLE'),(27,94,'android.intent.extra.INTENT'),(28,95,'android.intent.extra.TITLE'),(29,95,'android.intent.extra.INTENT'),(30,96,'android.intent.extra.INTENT'),(31,97,'android.intent.extra.INTENT'),(32,98,'android.intent.extra.TITLE'),(33,98,'android.intent.extra.INTENT'),(34,99,'android.intent.extra.INTENT'),(35,100,'android.intent.extra.TITLE'),(36,100,'android.intent.extra.INTENT'),(37,101,'android.intent.extra.INTENT'),(38,102,'android.intent.extra.TITLE'),(39,102,'android.intent.extra.INTENT'),(40,103,'android.intent.extra.TITLE'),(41,103,'android.intent.extra.INTENT'),(42,129,'URL'),(43,129,'EFFECTIVE_TYPE');
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
) ENGINE=InnoDB AUTO_INCREMENT=56 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,5,3),(6,5,2),(7,5,4),(8,5,5),(9,6,4),(10,6,5),(11,6,3),(12,6,2),(13,7,2),(14,7,3),(15,7,4),(16,7,5),(17,8,2),(18,8,5),(19,8,3),(20,8,4),(21,9,1),(22,10,5),(23,10,3),(24,10,4),(25,10,2),(26,11,11),(27,11,12),(28,12,11),(29,12,12),(30,13,11),(31,13,12),(32,14,12),(33,14,11),(34,15,1),(35,16,3),(36,16,5),(37,17,13),(38,18,1),(39,19,3),(40,19,5),(41,20,13),(42,21,17),(43,22,17),(44,23,17),(45,24,17),(46,25,17),(47,26,17),(48,27,17),(49,28,19),(50,29,19),(51,30,19),(52,31,19),(53,32,19),(54,33,19),(55,34,19);
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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFCategories`
--

LOCK TABLES `IFCategories` WRITE;
/*!40000 ALTER TABLE `IFCategories` DISABLE KEYS */;
INSERT INTO `IFCategories` VALUES (1,1,1),(2,2,1),(3,3,1),(4,4,1),(5,9,1),(6,15,1),(7,15,2),(8,18,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,17,'package',NULL,NULL,NULL,NULL,NULL),(2,20,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,9,'(.*)','(.*)'),(2,14,'(.*)','(.*)'),(3,30,'(.*)','(.*)'),(4,32,'(.*)','(.*)'),(5,73,'application','vnd.android.package-archive'),(6,104,'(.*)','(.*)'),(7,112,'application','vnd.android.package-archive'),(8,113,'application','vnd.android.package-archive'),(9,114,'application','vnd.android.package-archive'),(10,115,'application','vnd.android.package-archive'),(11,116,'application','vnd.android.package-archive'),(12,117,'application','vnd.android.package-archive'),(13,118,'application','vnd.android.package-archive'),(14,119,'application','vnd.android.package-archive'),(15,120,'application','vnd.android.package-archive'),(16,125,'(.*)','(.*)');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,3,'com.GoldDream.TingTing10ii'),(2,5,'com.android.packageinstaller'),(3,8,'com.GoldDream.TingTing11i'),(4,10,'com.GoldDream.TingTing10ii'),(5,19,'com.GoldDream.TingTing10ii'),(6,21,'com.GoldDream.TingTing07i'),(7,22,'com.GoldDream.TingTing12i'),(8,24,'com.android.packageinstaller'),(9,31,'com.GoldDream.TingTing12i'),(10,38,'com.GoldDream.TingTing12i'),(11,40,'com.GoldDream.TingTing11i'),(12,41,'com.GoldDream.TingTing07i'),(13,43,'de.greenrobt.kmpa'),(14,45,'com.android.packageinstaller'),(15,47,'de.greenrobt.kmpa'),(16,48,'com.android.packageinstaller'),(17,51,'com.GoldDream.TingTing11i'),(18,57,'com.GoldDream.TingTing07i'),(19,59,'de.greenrobt.kmpa'),(20,60,'de.greenrobt.kmpa'),(21,61,'de.greenrobt.kmpa'),(22,62,'de.greenrobt.kmpa'),(23,65,'com.android.packageinstaller'),(24,66,'de.greenrobt.kmpa'),(25,67,'de.greenrobt.kmpa'),(26,69,'de.greenrobt.kmpa'),(27,72,'com.google.android.apps.maps'),(28,74,'com.Wuzla.game.DoodleDashh'),(29,75,'com.android.browser'),(30,76,'com.Wuzla.game.DoodleDashh'),(31,85,'com.Wuzla.game.DoodleDashh'),(32,105,'com.Wuzla.game.DoodleDashh'),(33,107,'com.google.android.apps.maps'),(34,110,'(.*)'),(35,111,'(.*)'),(36,121,'com.Wuzla.game.DoodleDashh'),(37,122,'com.Wuzla.game.DoodleDashh'),(38,123,'com.Wuzla.game.DoodleDashh'),(39,127,'com.Wuzla.game.DoodleDashh'),(40,129,'com.Wuzla.game.DoodleDashh'),(41,134,'com.google.android.apps.maps'),(42,135,'com.android.browser'),(43,136,'com.Wuzla.game.DoodleDashh'),(44,137,'com.android.packageinstaller');
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
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,2,0),(3,3,0),(4,5,0),(5,11,0),(6,17,0),(7,19,0),(8,20,0),(9,21,0),(10,30,0),(11,32,0),(12,31,0),(13,33,0),(14,34,0),(15,35,0),(16,60,0),(17,61,0),(18,62,0),(19,87,0),(20,88,0),(21,89,0),(22,90,0),(23,91,0),(24,88,0),(25,92,0),(26,93,0),(27,87,0),(28,89,0),(29,90,0),(30,91,0),(31,88,0),(32,92,0),(33,93,0),(34,87,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,1,0),(2,2,1,0),(3,3,0,0),(4,4,1,0),(5,5,0,0),(6,6,1,0),(7,7,1,0),(8,8,0,0),(9,7,1,0),(10,9,0,0),(11,10,1,0),(12,11,1,0),(13,7,1,0),(14,10,1,0),(15,12,1,0),(16,13,1,0),(17,10,1,0),(18,14,1,0),(19,15,0,0),(20,16,1,0),(21,18,0,0),(22,17,0,0),(23,19,1,0),(24,20,0,0),(25,21,1,0),(26,22,1,0),(27,23,1,0),(28,24,1,0),(29,25,1,0),(30,23,1,0),(31,26,0,0),(32,24,1,0),(33,23,1,0),(34,27,1,0),(35,28,1,0),(36,24,1,0),(37,29,1,0),(38,30,0,0),(39,31,1,0),(40,32,0,0),(41,34,0,0),(42,33,1,0),(43,35,0,0),(44,36,1,0),(45,37,0,0),(46,38,1,0),(47,39,0,0),(48,40,0,0),(49,41,1,0),(50,42,1,0),(51,43,0,0),(52,41,1,0),(53,44,1,0),(54,45,1,0),(55,46,1,0),(56,47,1,0),(57,48,0,0),(58,47,1,0),(59,49,0,0),(60,50,0,0),(61,51,0,0),(62,52,0,0),(63,53,1,0),(64,55,1,0),(65,56,0,0),(66,57,0,0),(67,58,0,0),(68,59,1,0),(69,60,0,0),(70,61,1,0),(71,62,1,0),(72,62,0,0),(73,63,1,0),(74,64,0,0),(75,65,0,0),(76,66,0,0),(77,67,1,0),(78,67,1,0),(79,67,1,0),(80,67,1,0),(81,67,1,0),(82,67,1,0),(83,67,1,0),(84,67,1,0),(85,68,0,0),(86,69,1,0),(87,70,1,0),(88,72,1,0),(89,72,1,0),(90,72,1,0),(91,72,1,0),(92,72,1,0),(93,72,1,0),(94,72,1,0),(95,72,1,0),(96,73,1,0),(97,73,1,0),(98,73,1,0),(99,73,1,0),(100,73,1,0),(101,73,1,0),(102,73,1,0),(103,73,1,0),(104,74,1,0),(105,75,0,0),(106,76,1,0),(107,76,0,0),(108,77,1,0),(109,78,1,0),(110,79,1,0),(111,79,1,0),(112,80,1,0),(113,80,1,0),(114,80,1,0),(115,80,1,0),(116,80,1,0),(117,80,1,0),(118,80,1,0),(119,80,1,0),(120,80,1,0),(121,81,0,0),(122,83,0,0),(123,85,0,0),(124,86,1,0),(125,86,1,0),(126,86,1,0),(127,87,0,0),(128,88,1,0),(129,89,0,0),(130,90,1,0),(131,91,1,0),(132,91,1,0),(133,93,1,0),(134,93,0,0),(135,93,0,0),(136,94,0,0),(137,95,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (7,'android.permission.ACCESS_COARSE_LOCATION'),(13,'android.permission.ACCESS_FINE_LOCATION'),(23,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(14,'android.permission.ACCESS_NETWORK_STATE'),(5,'android.permission.ACCESS_WIFI_STATE'),(8,'android.permission.CALL_PHONE'),(22,'android.permission.CHANGE_WIFI_STATE'),(2,'android.permission.DELETE_PACKAGES'),(1,'android.permission.INSTALL_PACKAGES'),(12,'android.permission.INTERNET'),(3,'android.permission.PROCESS_OUTGOING_CALLS'),(19,'android.permission.READ_EXTERNAL_STORAGE'),(16,'android.permission.READ_LOGS'),(9,'android.permission.READ_PHONE_STATE'),(10,'android.permission.READ_SMS'),(11,'android.permission.RECEIVE_BOOT_COMPLETED'),(6,'android.permission.RECEIVE_SMS'),(15,'android.permission.SEND_SMS'),(17,'android.permission.VIBRATE'),(18,'android.permission.WAKE_LOCK'),(4,'android.permission.WRITE_EXTERNAL_STORAGE'),(21,'com.android.browser.permission.READ_HISTORY_BOOKMARKS'),(20,'com.android.browser.permission.WRITE_HISTORY_BOOKMARKS');
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
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(2,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(3,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9958&cid=1000&uid=(.*)',NULL,NULL,NULL),(4,NULL,NULL,'(.*)',NULL,NULL,NULL),(5,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9958&cid=1000&uid=(.*)',NULL,NULL,NULL),(6,NULL,NULL,'(.*)',NULL,NULL,NULL),(7,NULL,NULL,'(.*)',NULL,NULL,NULL),(8,NULL,NULL,'(.*)',NULL,NULL,NULL),(9,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'(.*)',NULL,NULL,NULL),(12,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(13,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(14,NULL,NULL,'(.*)',NULL,NULL,NULL),(15,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(16,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(17,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(18,NULL,NULL,'(.*)',NULL,NULL,NULL),(19,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(20,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9958&cid=1000&uid=(.*)',NULL,NULL,NULL),(21,NULL,NULL,'(.*)',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,'package','(.*)',NULL,NULL,NULL,NULL),(24,NULL,NULL,'(.*)',NULL,NULL,NULL),(25,NULL,NULL,'(.*)',NULL,NULL,NULL),(26,NULL,NULL,'(.*)',NULL,NULL,NULL),(27,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(28,'package','(.*)',NULL,NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9960&cid=1000',NULL,NULL,NULL),(31,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9963&cid=1000',NULL,NULL,NULL),(32,'package','(.*)',NULL,NULL,NULL,NULL),(33,'package','(.*)',NULL,NULL,NULL,NULL),(34,NULL,NULL,'(.*)',NULL,NULL,NULL),(35,NULL,NULL,'http://lebar.gicp.net/update_soft.aspx?pid=9959&cid=1000',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9943&amp;cid=1000NULL-CONSTANT',NULL,NULL,NULL),(38,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9958&cid=1000&uid=(.*)',NULL,NULL,NULL),(39,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9943&amp;cid=1000(.*)',NULL,NULL,NULL),(40,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(41,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(42,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(45,NULL,NULL,'http://lebar.gicp.net/more.aspx?pid=9943&amp;cid=1000de.greenrobt.kmpa',NULL,NULL,NULL),(46,NULL,NULL,'content://de.greenrobt.kmpa.levelpack(.*)/levelpackinfo',NULL,NULL,NULL),(47,'package','(.*)',NULL,NULL,NULL,NULL),(48,NULL,NULL,'(.*)',NULL,NULL,NULL),(49,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(50,'package','(.*)',NULL,NULL,NULL,NULL),(51,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(52,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(53,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(54,NULL,NULL,'',NULL,NULL,NULL),(55,NULL,NULL,'smsto:NULL-CONSTANT',NULL,NULL,NULL),(56,NULL,NULL,'(.*)',NULL,NULL,NULL),(57,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(58,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(59,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(60,NULL,NULL,'(.*)',NULL,NULL,NULL),(61,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(62,NULL,NULL,'file://(.*)/youmicache/CDDA55C678C34d07957074BF6956862F/NULL-CONSTANT',NULL,NULL,NULL),(63,NULL,NULL,'file://(.*)/youmicache/C8F62501155F41fbBBAA47A53C7F1A9B/NULL-CONSTANT',NULL,NULL,NULL),(64,NULL,NULL,'file://(.*)/youmicache/1BD3ACC63FA94E5B99B5479664B9CE69/NULL-CONSTANT',NULL,NULL,NULL),(65,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(66,NULL,NULL,'file://(.*)/youmicache/CD1D37A4A08F465A97D040CCD0FF7D1F/NULL-CONSTANT',NULL,NULL,NULL),(67,NULL,NULL,'file://(.*)/youmicache/CBB27B6EF764459EAEEE877D9DA42B6D/NULL-CONSTANT',NULL,NULL,NULL),(68,NULL,NULL,'file://(.*)/youmicache/D080F8A1E1134cabA1910B7129A75B44/NULL-CONSTANT',NULL,NULL,NULL),(69,NULL,NULL,'file://(.*)/youmicache/02ECC682A05F4E72AD0DA4C4C2FFC6D9/NULL-CONSTANT',NULL,NULL,NULL),(70,NULL,NULL,'file://(.*)/youmicache/CC39825145FD4445ADD9860797CA5744/NULL-CONSTANT',NULL,NULL,NULL),(71,NULL,NULL,'content://call_log/calls',NULL,NULL,NULL),(72,NULL,NULL,'content://sms',NULL,NULL,NULL),(73,NULL,NULL,'(.*)',NULL,NULL,NULL),(74,NULL,NULL,'(.*)',NULL,NULL,NULL),(75,NULL,NULL,'(.*)',NULL,NULL,NULL),(76,NULL,NULL,'',NULL,NULL,NULL),(77,NULL,NULL,'',NULL,NULL,NULL),(78,NULL,NULL,'',NULL,NULL,NULL),(79,NULL,NULL,'',NULL,NULL,NULL),(80,NULL,NULL,'(.*)(.*)(.*)',NULL,NULL,NULL),(81,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(82,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(83,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(84,NULL,NULL,'(.*)',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,54,46),(2,71,56),(3,82,71),(4,84,72),(5,92,80);
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
) ENGINE=InnoDB AUTO_INCREMENT=96 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,3,1),(8,2,1),(9,1,7),(10,3,2),(11,2,2),(12,1,8),(13,3,3),(14,4,1),(15,2,3),(16,1,9),(17,3,4),(18,4,2),(19,2,4),(20,1,10),(21,4,3),(22,3,5),(23,2,5),(24,1,11),(25,4,4),(26,3,6),(27,2,6),(28,3,7),(29,4,5),(30,1,12),(31,2,7),(32,1,13),(33,3,8),(34,4,6),(35,2,8),(36,1,14),(37,3,9),(38,4,7),(39,2,9),(40,4,8),(41,3,10),(42,2,10),(43,3,11),(44,4,9),(45,2,11),(46,3,12),(47,4,10),(48,2,12),(49,4,11),(50,3,13),(51,2,13),(52,4,12),(53,3,14),(54,2,14),(55,3,15),(56,4,13),(57,2,15),(58,4,14),(59,4,15),(60,5,17),(61,5,16),(62,5,1),(63,5,2),(64,5,18),(65,5,3),(66,5,6),(67,5,10),(68,5,11),(69,5,12),(70,6,1),(71,6,2),(72,6,4),(73,6,5),(74,6,7),(75,6,9),(76,6,11),(77,6,12),(78,6,13),(79,6,14),(80,6,19),(81,6,21),(82,6,20),(83,7,19),(84,7,21),(85,7,4),(86,7,5),(87,7,20),(88,7,23),(89,7,22),(90,7,7),(91,7,9),(92,7,11),(93,7,12),(94,7,13),(95,7,14);
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

-- Dump completed on 2015-10-09  0:39:46
