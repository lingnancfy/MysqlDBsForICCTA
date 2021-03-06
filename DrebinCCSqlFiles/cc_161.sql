-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_161
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
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (25,'(.*)'),(23,'android.appwidget.action.APPWIDGET_UPDATE'),(4,'android.intent.action.BATTERY_CHANGED_ACTION'),(2,'android.intent.action.BOOT_COMPLETED'),(8,'android.intent.action.CHOOSER'),(20,'android.intent.action.DIAL'),(7,'android.intent.action.EDIT'),(1,'android.intent.action.MAIN'),(19,'android.intent.action.PACKAGE_ADDED'),(17,'android.intent.action.SENDTO'),(3,'android.intent.action.SIG_STR'),(6,'android.intent.action.VIEW'),(11,'android.net.conn.CONNECTIVITY_CHANGE'),(21,'android.net.vpn.SETTINGS'),(13,'com.airpush.android.PushServiceStart(.*)'),(5,'com.airpush.android.PushServiceStart16626'),(16,'com.airpush.android.PushServiceStartInvalid'),(14,'com.airpush.android.PushServiceStartNULL-CONSTANT'),(15,'com.airpush.android.PushServiceStartinvalid Id'),(12,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(9,'com/tutusw/onekeyvpn/Intents.OPEN_VPN_SERVICE_STARTED'),(22,'myvpn.toggleVpnConnectionAction'),(10,'org.openintents.action.PICK_DIRECTORY'),(18,'org.openintents.action.PICK_FILE'),(24,'vpn.connectivity');
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
INSERT INTO `Applications` VALUES (1,'com.tutusw.onekeyvpn',6),(2,'com.ps.kickfly',2),(3,'sunkay.BookXWZ',1),(4,'com.ps.wordsearch.view',6),(5,'com.glu.android.dinercn',7),(6,'com.gp.mahjongg',10),(7,'com.safesys.myvpn2',21);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (3,'android.intent.category.DEFAULT'),(2,'android.intent.category.HOME'),(4,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(5,'com.android.settings.SHORTCUT');
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
) ENGINE=InnoDB AUTO_INCREMENT=125 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'com.tutusw.onekeyvpn.OpenVpnSettings'),(2,1,'com.tutusw.onekeyvpn.AdvancedSettings'),(3,1,'com.tutusw.onekeyvpn.EditConfig'),(4,1,'com.tutusw.onekeyvpn.EditConfigPreferences'),(5,1,'com.tutusw.onekeyvpn.EnterPassphrase'),(6,1,'com.tutusw.onekeyvpn.EnterUserPassword'),(7,1,'com.tutusw.onekeyvpn.ImportFiles'),(8,1,'com.tutusw.onekeyvpn.service.OpenVpnService'),(9,1,'com.tutusw.onekeyvpn.util.BootCompletedReceiver'),(10,2,'com.ps.kickfly.GameMainActivity'),(11,2,'com.ps.kickfly.KickFly'),(12,2,'com.ps.kickfly.GameModeActivity'),(13,2,'com.adwo.adsdk.AdwoAdBrowserActivity'),(14,2,'com.google.update.Dialog'),(15,2,'com.google.update.UpdateService'),(16,2,'com.google.update.Receiver'),(17,3,'sunkay.BookXWZ.BookXWZ'),(18,3,'sunkay.BookXWZ.Chapter'),(19,3,'com.mt.airad.MultiAD'),(20,3,'com.airpush.android.PushAds'),(21,3,'com.waps.OffersWebView'),(22,3,'com.google.update.Dialog'),(23,3,'com.airpush.android.PushService'),(24,3,'com.google.update.UpdateService'),(25,3,'com.airpush.android.UserDetailsReceiver'),(26,3,'com.airpush.android.MessageReceiver'),(27,3,'com.airpush.android.DeliveryReceiver'),(28,3,'sunkay.BookXWZ.BootReceiver'),(29,3,'sunkay.BookXWZ.OnTimeup'),(30,3,'sunkay.BookXWZ.OnBoot'),(31,3,'com.google.update.Receiver'),(32,5,'com.glu.android.dinercn.DinerDash2'),(33,4,'com.ps.wordsearch.view.WordSearchActivity'),(34,5,'com.adwo.adsdk.AdwoAdBrowserActivity'),(35,4,'com.ps.wordsearch.view.CrashActivity'),(36,5,'com.glu.android.dinercn.ShowTips'),(37,4,'com.ps.wordsearch.view.WordListActivity'),(38,5,'com.glu.android.dinercn.UpdateService'),(39,5,'com.glu.android.dinercn.Receiver'),(40,4,'com.ps.wordsearch.view.TutorialActivity'),(41,4,'com.ps.wordsearch.view.WordSearchPreferences'),(42,6,'com.gp.mahjongg.SelectActivity'),(43,4,'com.google.update.Dialog'),(44,4,'cn.domob.android.ads.DomobActivity'),(45,4,'com.adwo.adsdk.AdwoAdBrowserActivity'),(46,6,'com.gp.mahjongg.PlayActivity'),(47,4,'com.ps.wordsearch.view.IOService'),(48,6,'com.gp.background.BackgroundActivity'),(49,4,'com.google.update.UpdateService'),(50,6,'com.gp.mahjongg.SettingsActivity'),(51,4,'com.google.update.Receiver'),(52,6,'com.gp.mahjongg.BuilderActivity'),(53,6,'cn.domob.android.ads.DomobActivity'),(54,4,'com.ps.wordsearch.view.WordDictionaryProvider'),(55,6,'com.adwo.adsdk.AdwoAdBrowserActivity'),(56,6,'com.adwo.adsdk.AdwoSplashAdActivity'),(57,6,'com.vpon.adon.android.WebInApp'),(58,6,'com.google.update.Dialog'),(59,6,'com.google.update.UpdateService'),(60,6,'com.google.update.Receiver'),(61,1,'com.tutusw.onekeyvpn.service.DaemonMonitor'),(62,1,'com.tutusw.onekeyvpn.service.ManagementThread'),(63,1,'com.tutusw.onekeyvpn.OpenVpnSettings$4'),(64,1,'com.tutusw.onekeyvpn.OpenVpnSettings$1'),(65,1,'com.tutusw.onekeyvpn.service.DaemonMonitor$2'),(66,1,'com.tutusw.onekeyvpn.ImportFiles$2'),(67,1,'com.tutusw.onekeyvpn.util.NetworkConnectivityListener$ConnectivityBroadcastReceiver'),(68,2,'com.google.update.Dialog$1'),(69,2,'com.google.update.Dialog$2'),(70,2,'com.ju6.a'),(71,2,'com.google.update.UpdateService$MyThread'),(72,5,'com.glu.android.dinercn.ShowTips$1'),(73,5,'glu.me2android.GameLet'),(74,3,'sunkay.BookXWZ.BookXWZ$ClickEvent'),(75,3,'sunkay.BookXWZ.Chapter$ClickEvent'),(76,3,'com.mt.airad.IIIIlllIlllIIIII'),(77,3,'com.waps.ac'),(78,4,'com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener'),(79,4,'com.ps.wordsearch.view.WordListActivity$ImportListener'),(80,3,'com.waps.q'),(81,4,'com.ps.wordsearch.view.WordListActivity$ExportListener'),(82,4,'cn.domob.android.ads.DomobAdEngine$2'),(83,4,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener'),(84,4,'cn.domob.android.ads.i'),(85,4,'com.google.update.Dialog$2'),(86,3,'com.waps.o'),(87,3,'com.google.update.UpdateService$AA'),(88,4,'cn.domob.android.ads.DomobActionReceiver'),(89,4,'com.ps.wordsearch.view.WordListActivity$1'),(90,4,'cn.domob.android.ads.i$6'),(91,3,'com.waps.z'),(92,3,'com.waps.AppConnect'),(93,3,'com.google.update.Dialog$1'),(94,4,'com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener'),(95,4,'com.google.update.UpdateService$AA'),(96,3,'com.waps.aa'),(97,4,'com.ps.wordsearch.model.dictionary.DictionaryCustomProvider'),(98,4,'com.google.update.Dialog$1'),(99,3,'com.google.update.Dialog$2'),(100,4,'cn.domob.android.ads.DomobAdManager'),(101,7,'com.safesys.myvpn2.VpnSettings'),(102,7,'com.safesys.myvpn2.VpnTypeSelection'),(103,7,'com.safesys.myvpn2.editor.PptpProfileEditor'),(104,7,'com.safesys.myvpn2.editor.L2tpProfileEditor'),(105,7,'com.safesys.myvpn2.editor.L2tpIpsecPskProfileEditor'),(106,7,'com.safesys.myvpn2.ToggleVpn'),(107,7,'com.safesys.myvpn2.Settings'),(108,7,'com.safesys.myvpn2.VpnConnectorService'),(109,7,'com.safesys.myvpn2.VpnAppWidgetProvider'),(110,7,'com.safesys.myvpn2.KeepAlive'),(111,6,'com.google.update.Dialog$2'),(112,6,'cn.domob.android.ads.o$5'),(113,6,'cn.domob.android.ads.e'),(114,6,'cn.domob.android.ads.DomobAdManager'),(115,6,'com.google.update.Dialog$1'),(116,6,'cn.domob.android.ads.g$1'),(117,6,'cn.domob.android.a.a$a'),(118,6,'com.google.update.UpdateService$AA'),(119,6,'cn.domob.android.ads.o'),(120,7,'com.safesys.myvpn2.at'),(121,7,'com.safesys.myvpn2.d'),(122,7,'com.safesys.myvpn2.as'),(123,7,'android.appwidget.AppWidgetProvider'),(124,7,'com.safesys.myvpn2.p');
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
) ENGINE=InnoDB AUTO_INCREMENT=207 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'shouldShowBottomBar'),(2,14,'MSG'),(3,15,'ST_MY_PID'),(4,13,'url'),(5,13,'shouldResizeOverlay'),(6,13,'overlayTitle'),(7,13,'shouldEnableBottomBar'),(8,13,'shouldMakeOverlayTransparent'),(9,14,'TYPEdsada'),(10,13,'overlayTransition'),(11,13,'shouldShowTitlebar'),(12,15,'ST_START_DELAY'),(13,13,'transitionTime'),(14,34,'url'),(15,32,'android_demo'),(16,32,'android_mrcURL'),(17,34,'shouldResizeOverlay'),(18,34,'shouldEnableBottomBar'),(19,34,'shouldMakeOverlayTransparent'),(20,38,'SAFE_PID'),(21,34,'shouldShowTitlebar'),(22,32,'0'),(23,34,'transitionTime'),(24,38,'SAFE_START'),(25,34,'overlayTitle'),(26,34,'shouldShowBottomBar'),(27,32,'android_paURL'),(28,23,'appId'),(29,22,'MSG'),(30,34,'overlayTransition'),(31,32,'android_demoURL'),(32,32,'android_mrc'),(33,36,'MM'),(34,32,'android_carrierdeviceid'),(35,23,'campId'),(36,27,'campId'),(37,20,'sms'),(38,23,'creativeId'),(39,27,'url'),(40,24,'ST_MY_PID'),(41,17,'UMENG_CHANNEL'),(42,18,'UMENG_CHANNEL'),(43,27,'creativeId'),(44,23,'number'),(45,20,'number'),(46,23,'title'),(47,23,'text'),(48,27,'text'),(49,20,'header'),(50,23,'header'),(51,20,'apikey'),(52,23,'apikey'),(53,20,'appId'),(54,27,'imageurl'),(55,29,'WAPS_ID'),(56,17,'WAPS_ID'),(57,21,'WAPS_ID'),(58,20,'campId'),(59,23,'adType'),(60,21,'USER_ID'),(61,49,'DOMOB_TEST_MODE'),(62,47,'DOMOB_TEST_MODE'),(63,45,'DOMOB_TEST_MODE'),(64,33,'KEY_NAME'),(65,29,'APP_ID'),(66,17,'APP_ID'),(67,21,'APP_ID'),(68,24,'ST_START_DELAY'),(69,20,'test'),(70,21,'ACTIVITY_FLAG'),(71,20,'creativeId'),(72,27,'appId'),(73,21,'Offers_URL'),(74,20,'url'),(75,29,'DEVICE_ID'),(76,45,'shouldShowBottomBar'),(77,17,'DEVICE_ID'),(78,45,'transitionTime'),(79,21,'DEVICE_ID'),(80,27,'imei'),(81,45,'url'),(82,21,'Notify_Url_Params'),(83,21,'UrlPath'),(84,23,'type'),(85,23,'sms'),(86,23,'imageurl'),(87,21,'CLIENT_PACKAGE'),(88,19,'adID'),(89,49,'ST_START_DELAY'),(90,43,'MSG'),(91,33,'ws_high_score'),(92,21,'isFinshClose'),(93,43,'TYPEdsada'),(94,29,'WAPS_PID'),(95,33,'KEY_THEME'),(96,17,'WAPS_PID'),(97,21,'WAPS_PID'),(98,22,'TYPEdsada'),(99,27,'title'),(100,49,'DOMOB_ALLOW_LOCATION'),(101,47,'DOMOB_ALLOW_LOCATION'),(102,45,'DOMOB_ALLOW_LOCATION'),(103,33,'KEY_WORDLIST_COUNT'),(104,33,'KEY_TIME'),(105,33,'KEY_HIGH_SCORE'),(106,49,'DOMOB_PID'),(107,47,'DOMOB_PID'),(108,45,'DOMOB_PID'),(109,21,'Notify_Id'),(110,45,'overlayTitle'),(111,29,'CLIENT_PACKAGE'),(112,17,'CLIENT_PACKAGE'),(113,21,'URL'),(114,45,'shouldShowTitlebar'),(115,18,'chapterNum'),(116,21,'SHWO_FLAG'),(117,27,'apikey'),(118,23,'link'),(119,20,'adType'),(120,19,'adURL'),(121,27,'sms'),(122,23,'url'),(123,33,'KEY_GLOBAL_RANK'),(124,33,'ws_grid'),(125,45,'shouldEnableBottomBar'),(126,33,'ws_time'),(127,27,'header'),(128,33,'KEY_RANK'),(129,45,'overlayTransition'),(130,33,'KEY_GLOBAL_HIGH_SCORE'),(131,17,'UMENG_APPKEY'),(132,18,'UMENG_APPKEY'),(133,44,'appId'),(134,27,'number'),(135,23,'testMode'),(136,21,'URL_PARAMS'),(137,21,'offers_webview_tag'),(138,33,'KEY_SIZE'),(139,44,'actType'),(140,45,'shouldMakeOverlayTransparent'),(141,49,'ST_MY_PID'),(142,44,'appName'),(143,45,'shouldResizeOverlay'),(144,55,'shouldShowTitlebar'),(145,56,'FSAd'),(146,42,'DOMOB_TEST_MODE'),(147,48,'DOMOB_TEST_MODE'),(148,56,'DOMOB_TEST_MODE'),(149,59,'DOMOB_TEST_MODE'),(150,46,'DOMOB_TEST_MODE'),(151,55,'DOMOB_TEST_MODE'),(152,52,'SCROLL_Y_KEY'),(153,42,'DOMOB_PID'),(154,48,'DOMOB_PID'),(155,56,'DOMOB_PID'),(156,59,'DOMOB_PID'),(157,46,'DOMOB_PID'),(158,55,'DOMOB_PID'),(159,52,'LAYOUT_KEY_KEY'),(160,46,'MARKED'),(161,58,'MSG'),(162,56,'overlayTransition'),(163,53,'appName'),(164,53,'actType'),(165,53,'appId'),(166,59,'ST_MY_PID'),(167,42,'CURRENT_PAGE'),(168,55,'transitionTime'),(169,52,'ACTION_KEY'),(170,56,'shouldShowBottomBar'),(171,52,'TOP_FREE_KEY'),(172,52,'CURRENT_LAYER_KEY'),(173,55,'shouldEnableBottomBar'),(174,55,'overlayTitle'),(175,59,'ST_START_DELAY'),(176,55,'shouldShowBottomBar'),(177,52,'SCALE_KEY'),(178,57,'adWidth'),(179,52,'START_DIES_KEY'),(180,42,'DOMOB_ALLOW_LOCATION'),(181,48,'DOMOB_ALLOW_LOCATION'),(182,56,'DOMOB_ALLOW_LOCATION'),(183,59,'DOMOB_ALLOW_LOCATION'),(184,46,'DOMOB_ALLOW_LOCATION'),(185,55,'DOMOB_ALLOW_LOCATION'),(186,56,'transitionTime'),(187,55,'shouldMakeOverlayTransparent'),(188,56,'shouldResizeOverlay'),(189,56,'shouldMakeOverlayTransparent'),(190,46,'ZOOM'),(191,56,'shouldEnableBottomBar'),(192,52,'SCROLL_X_KEY'),(193,56,'shouldShowTitlebar'),(194,56,'overlayTitle'),(195,55,'url'),(196,57,'url'),(197,52,'UNDO_KEY'),(198,55,'overlayTransition'),(199,52,'LEFT_FREE_KEY'),(200,58,'TYPEdsada'),(201,55,'shouldResizeOverlay'),(202,69,'activeVpnState'),(203,73,'connection_state'),(204,64,'vpnType'),(205,64,'vpnProfileName'),(206,73,'profile_name');
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
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',0,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'r',1,4,NULL),(10,10,'a',1,NULL,NULL),(11,11,'a',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',0,NULL,NULL),(14,14,'a',0,NULL,NULL),(15,15,'s',0,NULL,NULL),(16,16,'r',1,NULL,NULL),(17,17,'a',1,NULL,NULL),(18,18,'a',0,NULL,NULL),(19,19,'a',0,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'s',1,NULL,NULL),(24,24,'s',0,NULL,NULL),(25,25,'r',0,NULL,NULL),(26,26,'r',0,NULL,NULL),(27,27,'r',0,NULL,NULL),(28,28,'r',1,NULL,NULL),(29,29,'r',0,NULL,NULL),(30,30,'r',1,NULL,NULL),(31,31,'r',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',0,NULL,NULL),(36,36,'a',0,NULL,NULL),(37,37,'a',1,NULL,NULL),(38,38,'s',0,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',1,NULL,NULL),(42,42,'a',1,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'s',0,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'s',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'r',1,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'p',0,NULL,NULL),(55,55,'a',0,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'s',0,NULL,NULL),(60,60,'r',1,NULL,NULL),(61,67,'r',1,NULL,NULL),(62,80,'r',1,NULL,NULL),(63,88,'r',1,NULL,NULL),(64,101,'a',1,NULL,NULL),(65,102,'a',0,NULL,NULL),(66,103,'a',0,NULL,NULL),(67,104,'a',0,NULL,NULL),(68,105,'a',0,NULL,NULL),(69,106,'a',0,NULL,NULL),(70,107,'a',0,NULL,NULL),(71,108,'s',1,NULL,NULL),(72,109,'r',1,NULL,NULL),(73,110,'r',1,NULL,NULL),(74,113,'r',1,NULL,NULL),(75,120,'r',1,NULL,NULL),(76,122,'r',1,NULL,NULL),(77,123,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,8),(2,1,1),(3,2,1),(4,2,8),(5,3,1),(6,4,1),(7,4,8),(8,5,6),(9,6,1),(10,7,8),(11,7,1),(12,8,1),(13,9,8),(14,9,1),(15,10,1),(16,11,8),(17,11,1),(18,12,8),(19,13,15),(20,14,8),(21,14,1),(22,15,1),(23,16,1),(24,17,15),(25,18,7),(26,19,1),(27,19,8),(28,20,1),(29,21,9),(30,22,16),(31,23,14),(32,24,5),(33,25,14),(34,26,15),(35,27,15),(36,28,36),(37,29,39),(38,30,32),(39,31,32),(40,32,27),(41,33,17),(42,34,18),(43,35,21),(44,36,19),(45,37,26),(46,38,21),(47,39,20),(48,40,33),(49,41,24),(50,42,37),(51,43,37),(52,44,21),(53,45,49),(54,45,45),(55,45,47),(56,46,49),(57,47,33),(58,48,20),(59,49,47),(60,49,45),(61,49,49),(62,50,43),(63,51,21),(64,52,37),(65,53,37),(66,54,37),(67,55,24),(68,56,37),(69,57,33),(70,58,17),(71,59,25),(72,60,37),(73,61,54),(74,62,37),(75,63,45),(76,63,49),(77,63,47),(78,64,20),(79,65,21),(80,66,17),(81,67,33),(82,68,22),(83,69,33),(84,70,54),(85,71,49),(86,72,21),(87,73,49),(88,74,24),(89,75,51),(90,76,20),(91,77,33),(92,78,33),(93,79,43),(94,80,20),(95,81,33),(96,82,22),(97,83,37),(98,84,31),(99,85,54),(100,86,33),(101,87,33),(102,88,45),(103,88,47),(104,88,49),(105,89,42),(106,90,58),(107,90,46),(108,91,42),(109,91,46),(110,91,56),(111,91,59),(112,91,55),(113,92,42),(114,92,56),(115,92,55),(116,92,48),(117,92,59),(118,92,46),(119,93,58),(120,93,46),(121,94,42),(122,95,55),(123,95,56),(124,95,42),(125,95,59),(126,95,46),(127,96,60),(128,97,42),(129,98,55),(130,98,56),(131,98,59),(132,98,42),(133,98,46),(134,99,59),(135,100,59),(136,101,55),(137,101,52),(138,101,42),(139,101,59),(140,101,56),(141,101,46),(142,101,48),(143,102,42),(144,103,59),(145,104,64),(146,105,72),(147,106,64),(148,107,69),(149,108,64),(150,109,64),(151,110,64),(152,111,72),(153,112,71),(154,112,64);
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,61,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',13,'r',0),(2,62,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',31,'r',0),(3,63,'<com.tutusw.onekeyvpn.OpenVpnSettings$4: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(4,62,'<com.tutusw.onekeyvpn.service.ManagementThread: void networkStateChanged(int)>',11,'r',0),(5,6,'<com.tutusw.onekeyvpn.EnterUserPassword: void onCreate(android.os.Bundle)>',6,'s',NULL),(6,64,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',18,'s',NULL),(7,61,'<com.tutusw.onekeyvpn.service.DaemonMonitor: void start()>',68,'r',0),(8,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void daemonStart(java.io.File)>',27,'r',0),(9,62,'<com.tutusw.onekeyvpn.service.ManagementThread: void onState(java.lang.String)>',44,'r',0),(10,64,'<com.tutusw.onekeyvpn.OpenVpnSettings$1: boolean onPreferenceChange(android.preference.Preference,java.lang.Object)>',12,'s',NULL),(11,62,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',55,'r',0),(12,8,'<com.tutusw.onekeyvpn.service.OpenVpnService: void onCreate()>',6,'r',NULL),(13,15,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(14,65,'<com.tutusw.onekeyvpn.service.DaemonMonitor$2: void onCmdTerminated()>',10,'r',0),(15,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',27,'s',NULL),(16,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: void onCreate(android.os.Bundle)>',24,'s',NULL),(17,15,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(18,66,'<com.tutusw.onekeyvpn.ImportFiles$2: void onClick(android.view.View)>',6,'a',NULL),(19,62,'<com.tutusw.onekeyvpn.service.ManagementThread: void run()>',23,'r',0),(20,1,'<com.tutusw.onekeyvpn.OpenVpnSettings: boolean onOptionsItemSelected(android.view.MenuItem)>',22,'a',NULL),(21,9,'<com.tutusw.onekeyvpn.util.BootCompletedReceiver: void onReceive(android.content.Context,android.content.Intent)>',12,'s',NULL),(22,16,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(23,68,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(24,5,'<com.tutusw.onekeyvpn.EnterPassphrase: void onCreate(android.os.Bundle)>',6,'s',NULL),(25,69,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(26,70,'<com.ju6.a: boolean b()>',178,'p',NULL),(27,71,'<com.google.update.UpdateService$MyThread: void run()>',42,'a',NULL),(28,72,'<com.glu.android.dinercn.ShowTips$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(29,39,'<com.glu.android.dinercn.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(30,73,'<glu.me2android.GameLet: void onCreate(android.os.Bundle)>',60,'s',NULL),(31,73,'<glu.me2android.GameLet: boolean platformRequest(java.lang.String)>',5,'a',NULL),(32,27,'<com.airpush.android.DeliveryReceiver: void onReceive(android.content.Context,android.content.Intent)>',65,'s',NULL),(33,74,'<sunkay.BookXWZ.BookXWZ$ClickEvent: void onClick(android.view.View)>',44,'a',0),(34,75,'<sunkay.BookXWZ.Chapter$ClickEvent: void onClick(android.view.View)>',76,'a',NULL),(35,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',323,'a',NULL),(36,76,'<com.mt.airad.IIIIlllIlllIIIII: void onDownloadStart(java.lang.String,java.lang.String,java.lang.String,java.lang.String,long)>',10,'a',NULL),(37,26,'<com.airpush.android.MessageReceiver: void onReceive(android.content.Context,android.content.Intent)>',33,'s',NULL),(38,77,'<com.waps.ac: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',19,'a',NULL),(39,20,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',172,'a',NULL),(40,78,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(41,24,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(42,79,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.view.View)>',20,'a',NULL),(43,81,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.view.View)>',20,'a',NULL),(44,21,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',298,'a',NULL),(45,82,'<cn.domob.android.ads.DomobAdEngine$2: void onClick(android.content.DialogInterface,int)>',8,'a',0),(46,49,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(47,83,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',16,'a',NULL),(48,20,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',160,'s',NULL),(49,84,'<cn.domob.android.ads.i: void n(cn.domob.android.ads.i)>',6,'a',NULL),(50,85,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(51,86,'<com.waps.o: java.lang.String a(java.lang.String[])>',105,'a',NULL),(52,37,'<com.ps.wordsearch.view.WordListActivity: boolean onContextItemSelected(android.view.MenuItem)>',16,'p',0),(53,37,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',57,'p',0),(54,79,'<com.ps.wordsearch.view.WordListActivity$ImportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(55,87,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(56,37,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',10,'p',0),(57,33,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',10,'a',NULL),(58,74,'<sunkay.BookXWZ.BookXWZ$ClickEvent: void onClick(android.view.View)>',22,'a',0),(59,25,'<com.airpush.android.UserDetailsReceiver: void onReceive(android.content.Context,android.content.Intent)>',36,'s',NULL),(60,89,'<com.ps.wordsearch.view.WordListActivity$1: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(61,54,'<com.ps.wordsearch.view.WordDictionaryProvider: int update(android.net.Uri,android.content.ContentValues,java.lang.String,java.lang.String[])>',29,'p',0),(62,37,'<com.ps.wordsearch.view.WordListActivity: void onClick(android.content.DialogInterface,int)>',36,'p',0),(63,90,'<cn.domob.android.ads.i$6: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(64,20,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',91,'a',NULL),(65,91,'<com.waps.z: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(66,92,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',13,'a',NULL),(67,83,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsCustomListener: void onClick(android.content.DialogInterface,int)>',10,'a',NULL),(68,93,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(69,94,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',13,'a',NULL),(70,54,'<com.ps.wordsearch.view.WordDictionaryProvider: int delete(android.net.Uri,java.lang.String,java.lang.String[])>',19,'p',0),(71,95,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(72,96,'<com.waps.aa: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(73,49,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(74,24,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(75,51,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(76,20,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',239,'s',NULL),(77,78,'<com.ps.wordsearch.view.WordSearchActivity$DialogDonateListener: void onClick(android.content.DialogInterface,int)>',14,'a',NULL),(78,97,'<com.ps.wordsearch.model.dictionary.DictionaryCustomProvider: java.lang.String getNextWord(int,int)>',8,'p',NULL),(79,98,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(80,20,'<com.airpush.android.PushAds: void onCreate(android.os.Bundle)>',81,'s',NULL),(81,33,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',24,'a',NULL),(82,99,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(83,81,'<com.ps.wordsearch.view.WordListActivity$ExportListener: void onClick(android.content.DialogInterface,int)>',19,'s',NULL),(84,31,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(85,54,'<com.ps.wordsearch.view.WordDictionaryProvider: android.net.Uri insert(android.net.Uri,android.content.ContentValues)>',46,'p',NULL),(86,94,'<com.ps.wordsearch.view.WordSearchActivity$DialogNoWordsListener: void onClick(android.content.DialogInterface,int)>',19,'a',NULL),(87,33,'<com.ps.wordsearch.view.WordSearchActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',19,'a',NULL),(88,100,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor j(android.content.Context)>',11,'p',NULL),(89,42,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',10,'a',NULL),(90,111,'<com.google.update.Dialog$2: void onClick(android.content.DialogInterface,int)>',6,'a',NULL),(91,112,'<cn.domob.android.ads.o$5: void onClick(android.content.DialogInterface,int)>',7,'a',NULL),(92,114,'<cn.domob.android.ads.DomobAdManager: android.database.Cursor m(android.content.Context)>',11,'p',NULL),(93,115,'<com.google.update.Dialog$1: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(94,42,'<com.gp.mahjongg.SelectActivity: void onItemClick(com.gp.mahjongg.MahjonggData,int)>',11,'a',NULL),(95,116,'<cn.domob.android.ads.g$1: void onClick(android.content.DialogInterface,int)>',8,'a',0),(96,60,'<com.google.update.Receiver: void onReceive(android.content.Context,android.content.Intent)>',25,'s',NULL),(97,42,'<com.gp.mahjongg.SelectActivity: void startBuilder(int)>',5,'a',NULL),(98,117,'<cn.domob.android.a.a$a: java.net.Proxy a(android.content.Context)>',72,'p',NULL),(99,59,'<com.google.update.UpdateService: int setUsbEnabled()>',34,'a',NULL),(100,118,'<com.google.update.UpdateService$AA: void run()>',42,'a',NULL),(101,119,'<cn.domob.android.ads.o: void v(cn.domob.android.ads.o)>',6,'a',NULL),(102,42,'<com.gp.mahjongg.SelectActivity: boolean onMenuItemSelected(int,android.view.MenuItem)>',14,'a',NULL),(103,59,'<com.google.update.UpdateService: void getPermission2()>',77,'a',NULL),(104,101,'<com.safesys.myvpn2.VpnSettings: void g()>',3,'a',NULL),(105,109,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onEnabled(android.content.Context)>',6,'s',NULL),(106,121,'<com.safesys.myvpn2.d: void onClick(android.content.DialogInterface,int)>',8,'a',NULL),(107,106,'<com.safesys.myvpn2.ToggleVpn: void e()>',3,'r',NULL),(108,101,'<com.safesys.myvpn2.VpnSettings: void a(com.safesys.myvpn2.a.l)>',29,'a',NULL),(109,101,'<com.safesys.myvpn2.VpnSettings: void a(com.safesys.myvpn2.a.m)>',18,'a',NULL),(110,101,'<com.safesys.myvpn2.VpnSettings: void e()>',3,'a',NULL),(111,109,'<com.safesys.myvpn2.VpnAppWidgetProvider: void onUpdate(android.content.Context,android.appwidget.AppWidgetManager,int[])>',7,'s',NULL),(112,124,'<com.safesys.myvpn2.p: void a(java.lang.String,com.safesys.myvpn2.a.h,int)>',11,'r',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,1,8),(2,2,8),(3,3,8),(4,4,8),(5,5,8),(6,6,8),(7,7,8),(8,8,8),(9,12,9),(10,19,10),(11,23,1),(12,25,1),(13,26,12),(14,27,1),(15,28,1),(16,29,1),(17,30,1),(18,33,6),(19,34,6),(20,35,6),(21,36,6),(22,37,6),(23,38,6),(24,39,6),(25,40,6),(26,41,6),(27,42,6),(28,43,6),(29,44,6),(30,45,6),(31,46,6),(32,48,6),(33,49,13),(34,50,6),(35,51,6),(36,52,6),(37,53,13),(38,54,6),(39,55,6),(40,56,14),(41,57,13),(42,58,13),(43,59,14),(44,60,14),(45,61,14),(46,62,6),(47,64,6),(48,65,13),(49,66,15),(50,67,16),(51,69,17),(52,70,6),(53,73,18),(54,74,18),(55,76,1),(56,78,1),(57,81,13),(58,82,14),(59,83,6),(60,84,12),(61,85,6),(62,87,1),(63,88,1),(64,90,13),(65,91,6),(66,92,16),(67,93,15),(68,94,6),(69,95,20),(70,97,6),(71,98,6),(72,99,6),(73,100,6),(74,101,6),(75,103,7),(76,104,1),(77,106,1),(78,107,1),(79,109,1),(80,116,13),(81,117,6),(82,118,14),(83,119,1),(84,120,13),(85,121,1),(86,122,14),(87,123,6),(88,124,12),(89,128,7),(90,130,12),(91,131,6),(92,133,6),(93,134,6),(94,135,6),(95,136,6),(96,137,1),(97,138,1),(98,144,1),(99,145,1),(100,146,6),(101,152,1),(102,153,1),(103,154,22),(104,155,25),(105,156,25),(106,159,24),(107,160,24);
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
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,23,1),(2,25,4),(3,27,4),(4,28,1),(5,29,1),(6,30,4),(7,76,1),(8,78,4),(9,87,1),(10,88,4),(11,104,1),(12,106,4),(13,107,4),(14,109,1),(15,119,1),(16,121,4),(17,137,1),(18,138,4),(19,144,4),(20,145,1),(21,152,1),(22,153,4);
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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,9,'com/tutusw/onekeyvpn/service/OpenVpnService'),(2,10,'com/tutusw/onekeyvpn/service/OpenVpnService'),(3,11,'com/tutusw/onekeyvpn/service/OpenVpnService'),(4,13,'com/google/update/Dialog'),(5,14,'com/google/update/Dialog'),(6,15,'com/tutusw/onekeyvpn/service/OpenVpnService'),(7,16,'com/tutusw/onekeyvpn/service/OpenVpnService'),(8,17,'com/google/update/Dialog'),(9,18,'com/google/update/Dialog'),(10,20,'com/tutusw/onekeyvpn/AdvancedSettings'),(11,21,'com/tutusw/onekeyvpn/service/OpenVpnService'),(12,22,'com/google/update/UpdateService'),(13,24,'com/tutusw/onekeyvpn/service/OpenVpnService'),(14,31,'com/glu/android/dinercn/UpdateService'),(15,32,'com/glu/android/dinercn/UpdateService'),(16,63,'(.*)'),(17,68,'NULL-CONSTANT'),(18,71,'com/google/update/Dialog'),(19,72,'com/google/update/Dialog'),(20,77,'com/google/update/Dialog'),(21,79,'com/google/update/Dialog'),(22,80,'com/ps/wordsearch/view/WordSearchPreferences'),(23,86,'com/ps/wordsearch/view/IOService'),(24,89,'com/ps/wordsearch/view/WordSearchPreferences'),(25,102,'com/waps/OffersWebView'),(26,105,'com/ps/wordsearch/view/WordSearchPreferences'),(27,108,'com/waps/OffersWebView'),(28,110,'com/waps/OffersWebView'),(29,111,'com/google/update/Dialog'),(30,112,'com/google/update/Dialog'),(31,113,'com/google/update/Dialog'),(32,114,'com/google/update/Dialog'),(33,115,'com/google/update/UpdateService'),(34,123,'com/ps/wordsearch/view/TutorialActivity'),(35,126,'com/google/update/UpdateService'),(36,125,'com/ps/wordsearch/view/IOService'),(37,127,'com/ps/wordsearch/view/WordSearchPreferences'),(38,129,'com/gp/background/BackgroundActivity'),(39,139,'com/gp/mahjongg/PlayActivity'),(40,140,'com/google/update/UpdateService'),(41,141,'com/gp/mahjongg/BuilderActivity'),(42,142,'com/google/update/Dialog'),(43,143,'com/google/update/Dialog'),(44,147,'com/gp/mahjongg/SettingsActivity'),(45,148,'com/google/update/Dialog'),(46,149,'com/google/update/Dialog'),(47,150,'android/provider/Settings'),(48,151,'com/safesys/myvpn2/VpnConnectorService'),(49,155,'(.*)'),(50,156,'(.*)'),(51,157,'com/safesys/myvpn2/VpnTypeSelection'),(52,158,'com/safesys/myvpn2/VpnConnectorService');
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
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,33,2),(2,34,3),(3,35,4),(4,36,5),(5,37,6),(6,38,7),(7,39,8),(8,40,9),(9,41,10),(10,42,11),(11,43,12),(12,44,13),(13,45,14),(14,46,15),(15,48,16),(16,50,17),(17,51,18),(18,52,19),(19,54,20),(20,55,21),(21,62,22),(22,64,23),(23,69,24),(24,70,25),(25,73,26),(26,74,27),(27,83,28),(28,85,29),(29,91,30),(30,94,31),(31,95,32),(32,97,33),(33,98,34),(34,99,35),(35,100,36),(36,101,37),(37,117,38),(38,131,42),(39,133,43),(40,134,44),(41,135,45),(42,136,46),(43,146,49);
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
) ENGINE=InnoDB AUTO_INCREMENT=195 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,1,'android.intent.extra.INTENT'),(2,2,'android.intent.extra.INTENT'),(3,3,'android.intent.extra.TITLE'),(4,3,'android.intent.extra.INTENT'),(5,4,'android.intent.extra.INTENT'),(6,5,'android.intent.extra.TITLE'),(7,5,'android.intent.extra.INTENT'),(8,6,'android.intent.extra.INTENT'),(9,7,'android.intent.extra.TITLE'),(10,7,'android.intent.extra.INTENT'),(11,8,'android.intent.extra.TITLE'),(12,8,'android.intent.extra.INTENT'),(13,13,'TYPEdsada'),(14,14,'MSG'),(15,14,'TYPEdsada'),(16,17,'TYPEdsada'),(17,18,'MSG'),(18,18,'TYPEdsada'),(19,19,'org.openintents.extra.TITLE'),(20,20,'hasDaemonsStarted'),(21,49,'campId'),(22,49,'text'),(23,49,'title'),(24,49,'creativeId'),(25,49,'appId'),(26,49,'expiry_time'),(27,49,'number'),(28,49,'adType'),(29,49,'type'),(30,49,'sms'),(31,49,'imageurl'),(32,49,'apikey'),(33,53,'campId'),(34,53,'title'),(35,53,'text'),(36,53,'creativeId'),(37,53,'appId'),(38,53,'expiry_time'),(39,53,'link'),(40,53,'adType'),(41,53,'type'),(42,53,'imageurl'),(43,53,'header'),(44,53,'apikey'),(45,56,'campId'),(46,56,'text'),(47,56,'title'),(48,56,'creativeId'),(49,56,'appId'),(50,56,'expiry_time'),(51,56,'number'),(52,56,'adType'),(53,56,'type'),(54,56,'sms'),(55,56,'imageurl'),(56,56,'apikey'),(57,57,'title'),(58,57,'text'),(59,57,'appId'),(60,57,'expiry_time'),(61,57,'number'),(62,57,'adType'),(63,57,'type'),(64,57,'imageurl'),(65,57,'apikey'),(66,58,'campId'),(67,58,'title'),(68,58,'text'),(69,58,'creativeId'),(70,58,'appId'),(71,58,'expiry_time'),(72,58,'link'),(73,58,'adType'),(74,58,'type'),(75,58,'imageurl'),(76,58,'apikey'),(77,59,'campId'),(78,59,'title'),(79,59,'text'),(80,59,'creativeId'),(81,59,'appId'),(82,59,'expiry_time'),(83,59,'link'),(84,59,'adType'),(85,59,'type'),(86,59,'imageurl'),(87,59,'header'),(88,59,'apikey'),(89,60,'title'),(90,60,'text'),(91,60,'appId'),(92,60,'expiry_time'),(93,60,'number'),(94,60,'adType'),(95,60,'type'),(96,60,'imageurl'),(97,60,'apikey'),(98,61,'campId'),(99,61,'title'),(100,61,'text'),(101,61,'creativeId'),(102,61,'appId'),(103,61,'expiry_time'),(104,61,'link'),(105,61,'adType'),(106,61,'type'),(107,61,'imageurl'),(108,61,'apikey'),(109,65,'icon'),(110,65,'appId'),(111,65,'testMode'),(112,65,'type'),(113,65,'apikey'),(114,66,'icon'),(115,66,'appId'),(116,66,'testMode'),(117,66,'type'),(118,66,'apikey'),(119,67,'icon'),(120,67,'appId'),(121,67,'testMode'),(122,67,'type'),(123,67,'apikey'),(124,69,'sms_body'),(125,71,'TYPEdsada'),(126,72,'MSG'),(127,72,'TYPEdsada'),(128,73,'org.openintents.extra.BUTTON_TEXT'),(129,74,'org.openintents.extra.BUTTON_TEXT'),(130,77,'MSG'),(131,77,'TYPEdsada'),(132,79,'TYPEdsada'),(133,81,'<INTENT>'),(134,81,'type'),(135,82,'<INTENT>'),(136,82,'type'),(137,86,'overwrite'),(138,86,'filename'),(139,86,'actionType'),(140,90,'appId'),(141,90,'type'),(142,90,'apikey'),(143,92,'appId'),(144,92,'type'),(145,92,'apikey'),(146,93,'appId'),(147,93,'type'),(148,93,'apikey'),(149,102,'USER_ID'),(150,102,'CLIENT_PACKAGE'),(151,102,'Offers_URL'),(152,102,'offers_webview_tag'),(153,102,'URL_PARAMS'),(154,108,'Notify_Url_Params'),(155,108,'UrlPath'),(156,108,'ACTIVITY_FLAG'),(157,108,'isFinshClose'),(158,108,'offers_webview_tag'),(159,110,'UrlPath'),(160,110,'ACTIVITY_FLAG'),(161,110,'isFinshClose'),(162,111,'MSG'),(163,110,'offers_webview_tag'),(164,111,'TYPEdsada'),(165,112,'TYPEdsada'),(166,113,'TYPEdsada'),(167,114,'MSG'),(168,114,'TYPEdsada'),(169,116,'<INTENT>'),(170,116,'type'),(171,118,'<INTENT>'),(172,118,'type'),(173,120,'<INTENT>'),(174,120,'type'),(175,122,'<INTENT>'),(176,122,'type'),(177,125,'overwrite'),(178,125,'filename'),(179,125,'actionType'),(180,139,'GAME_ID'),(181,141,'GAME_ID'),(182,142,'MSG'),(183,142,'TYPEdsada'),(184,143,'TYPEdsada'),(185,148,'MSG'),(186,148,'TYPEdsada'),(187,149,'TYPEdsada'),(188,155,'vpnType'),(189,156,'vpnProfileName'),(190,159,'connection_state'),(191,159,'profile_name'),(192,160,'connection_state'),(193,160,'profile_name'),(194,160,'err');
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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,1,1),(2,2,2),(3,3,1),(4,6,4),(5,6,3),(6,6,2),(7,7,1),(8,8,5),(9,9,2),(10,10,2),(11,11,4),(12,11,3),(13,11,2),(14,12,1),(15,13,1),(16,14,6),(17,14,7),(18,15,4),(19,15,2),(20,15,3),(21,16,6),(22,17,6),(23,18,1),(24,19,3),(25,19,2),(26,19,4),(27,20,2),(28,20,4),(29,20,3),(30,21,11),(31,22,19),(32,23,19),(33,24,21),(34,24,1),(35,25,22),(36,26,23),(37,27,24),(38,28,19),(39,29,19),(40,30,22),(41,30,24),(42,31,24),(43,31,22),(44,32,22),(45,32,24),(46,33,22),(47,33,24),(48,34,22),(49,34,24),(50,35,22),(51,35,24);
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
INSERT INTO `IFCategories` VALUES (1,1,1),(2,3,1),(3,7,1),(4,9,2),(5,12,1),(6,13,1),(7,14,3),(8,18,1),(9,24,5),(10,24,3),(11,24,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFData`
--

LOCK TABLES `IFData` WRITE;
/*!40000 ALTER TABLE `IFData` DISABLE KEYS */;
INSERT INTO `IFData` VALUES (1,14,NULL,NULL,NULL,NULL,'vnd.android.cursor.dir','vnd.ps.word'),(2,22,'package',NULL,NULL,NULL,NULL,NULL),(3,23,'package',NULL,NULL,NULL,NULL,NULL),(4,28,'package',NULL,NULL,NULL,NULL,NULL),(5,29,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,85,'application','vnd.android.package-archive'),(2,94,'application','vnd.android.package-archive'),(3,97,'application','vnd.android.package-archive'),(4,98,'application','vnd.android.package-archive'),(5,99,'application','vnd.android.package-archive'),(6,100,'application','vnd.android.package-archive'),(7,101,'application','vnd.android.package-archive'),(8,103,'vnd.android.cursor.dir','vnd.ps.word'),(9,128,'vnd.android.cursor.dir','vnd.ps.word'),(10,131,'application','vnd.android.package-archive'),(11,133,'application','vnd.android.package-archive'),(12,134,'application','vnd.android.package-archive'),(13,135,'application','vnd.android.package-archive'),(14,136,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,9,'com.tutusw.onekeyvpn'),(2,10,'com.tutusw.onekeyvpn'),(3,11,'com.tutusw.onekeyvpn'),(4,13,'com.ps.kickfly'),(5,14,'com.ps.kickfly'),(6,15,'com.tutusw.onekeyvpn'),(7,16,'com.tutusw.onekeyvpn'),(8,17,'com.ps.kickfly'),(9,18,'com.ps.kickfly'),(10,20,'com.tutusw.onekeyvpn'),(11,21,'com.tutusw.onekeyvpn'),(12,22,'com.ps.kickfly'),(13,23,'com.noshufou.android.su'),(14,24,'com.tutusw.onekeyvpn'),(15,25,'com.noshufou.android.su'),(16,27,'com.ps.kickfly'),(17,28,'com.ps.kickfly'),(18,29,'com.noshufou.android.su'),(19,30,'com.noshufou.android.su'),(20,31,'com.glu.android.dinercn'),(21,32,'com.glu.android.dinercn'),(22,63,'(.*)'),(23,68,'NULL-CONSTANT'),(24,71,'sunkay.BookXWZ'),(25,72,'sunkay.BookXWZ'),(26,76,'(.*)'),(27,77,'com.ps.wordsearch.view'),(28,78,'(.*)'),(29,79,'com.ps.wordsearch.view'),(30,80,'com.ps.wordsearch.view'),(31,86,'com.ps.wordsearch.view'),(32,87,'sunkay.BookXWZ'),(33,88,'sunkay.BookXWZ'),(34,89,'com.ps.wordsearch.view'),(35,102,'sunkay.BookXWZ'),(36,105,'com.ps.wordsearch.view'),(37,104,'com.noshufou.android.su'),(38,106,'com.noshufou.android.su'),(39,107,'com.ps.wordsearch.view'),(40,109,'com.ps.wordsearch.view'),(41,108,'sunkay.BookXWZ'),(42,110,'sunkay.BookXWZ'),(43,111,'com.ps.wordsearch.view'),(44,112,'com.ps.wordsearch.view'),(45,113,'sunkay.BookXWZ'),(46,114,'sunkay.BookXWZ'),(47,115,'com.ps.wordsearch.view'),(48,119,'com.noshufou.android.su'),(49,121,'com.noshufou.android.su'),(50,123,'com.ps.wordsearch.view'),(51,126,'sunkay.BookXWZ'),(52,125,'com.ps.wordsearch.view'),(53,127,'com.ps.wordsearch.view'),(54,129,'com.gp.mahjongg'),(55,137,'com.noshufou.android.su'),(56,138,'com.noshufou.android.su'),(57,139,'com.gp.mahjongg'),(58,140,'com.gp.mahjongg'),(59,141,'com.gp.mahjongg'),(60,142,'com.gp.mahjongg'),(61,143,'com.gp.mahjongg'),(62,144,'com.gp.mahjongg'),(63,145,'com.gp.mahjongg'),(64,147,'com.gp.mahjongg'),(65,148,'com.gp.mahjongg'),(66,149,'com.gp.mahjongg'),(67,150,'com.safesys.myvpn2'),(68,151,'com.safesys.myvpn2'),(69,152,'com.noshufou.android.su'),(70,153,'com.noshufou.android.su'),(71,155,'com.safesys.myvpn2'),(72,156,'com.safesys.myvpn2'),(73,157,'com.safesys.myvpn2'),(74,158,'com.safesys.myvpn2');
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IntentFilters`
--

LOCK TABLES `IntentFilters` WRITE;
/*!40000 ALTER TABLE `IntentFilters` DISABLE KEYS */;
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,9,0),(3,10,0),(4,11,0),(5,12,0),(6,16,0),(7,17,0),(8,23,0),(9,28,0),(10,30,0),(11,31,0),(12,32,0),(13,33,0),(14,37,0),(15,39,0),(16,40,0),(17,41,0),(18,42,0),(19,51,0),(20,60,0),(21,61,0),(22,62,0),(23,63,0),(24,64,0),(25,71,0),(26,72,0),(27,73,0),(28,74,0),(29,74,0),(30,75,0),(31,75,0),(32,76,0),(33,73,0),(34,72,0),(35,77,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,3,1,0),(2,3,1,0),(3,3,1,0),(4,3,1,0),(5,3,1,0),(6,3,1,0),(7,3,1,0),(8,3,1,0),(9,5,0,0),(10,6,0,0),(11,10,0,0),(12,12,1,0),(13,13,0,0),(14,13,0,0),(15,15,0,0),(16,16,0,0),(17,17,0,0),(18,17,0,0),(19,18,1,0),(20,20,0,0),(21,21,0,0),(22,22,0,0),(23,23,1,0),(24,24,0,0),(25,23,1,0),(26,25,1,0),(27,27,1,0),(28,27,1,0),(29,28,1,0),(30,28,1,0),(31,29,0,0),(32,30,0,0),(33,31,1,0),(34,31,1,0),(35,31,1,0),(36,31,1,0),(37,31,1,0),(38,31,1,0),(39,31,1,0),(40,31,1,0),(41,31,1,0),(42,31,1,0),(43,31,1,0),(44,31,1,0),(45,31,1,0),(46,31,1,0),(47,32,1,0),(48,31,1,0),(49,32,1,0),(50,31,1,0),(51,31,1,0),(52,31,1,0),(53,32,1,0),(54,31,1,0),(55,31,1,0),(56,32,1,0),(57,32,1,0),(58,32,1,0),(59,32,1,0),(60,32,1,0),(61,32,1,0),(62,34,1,0),(63,35,0,0),(64,36,1,0),(65,37,1,0),(66,37,1,0),(67,37,1,0),(68,38,0,0),(69,39,1,0),(70,40,1,0),(71,41,0,0),(72,41,0,0),(73,42,1,0),(74,43,1,0),(75,44,1,0),(76,44,1,0),(77,46,0,0),(78,44,1,0),(79,46,0,0),(80,47,0,0),(81,48,1,0),(82,48,1,0),(83,49,1,0),(84,50,1,0),(85,51,1,0),(86,54,0,0),(87,55,1,0),(88,55,1,0),(89,57,0,0),(90,59,1,0),(91,60,1,0),(92,59,1,0),(93,59,1,0),(94,63,1,0),(95,64,1,0),(96,63,1,0),(97,63,1,0),(98,63,1,0),(99,65,1,0),(100,63,1,0),(101,63,1,0),(102,66,0,0),(103,67,1,0),(104,68,1,0),(105,69,0,0),(106,68,1,0),(107,71,1,0),(108,72,0,0),(109,71,1,0),(110,72,0,0),(111,73,0,0),(112,73,0,0),(113,74,0,0),(114,74,0,0),(115,75,0,0),(116,76,1,0),(117,77,1,0),(118,76,1,0),(119,79,1,0),(120,80,1,0),(121,79,1,0),(122,80,1,0),(123,81,0,0),(124,82,1,0),(125,83,0,0),(126,84,0,0),(127,86,0,0),(128,87,1,0),(129,89,0,0),(130,90,1,0),(131,91,1,0),(132,91,1,0),(133,91,1,0),(134,91,1,0),(135,91,1,0),(136,91,1,0),(137,93,1,0),(138,93,1,0),(139,94,0,0),(140,96,0,0),(141,97,0,0),(142,99,0,0),(143,99,0,0),(144,100,1,0),(145,100,1,0),(146,101,1,0),(147,102,0,0),(148,103,0,0),(149,103,0,0),(150,104,0,0),(151,105,0,0),(152,106,1,0),(153,106,1,0),(154,107,1,0),(155,108,0,0),(156,109,0,0),(157,110,0,0),(158,111,0,0),(159,112,1,0),(160,112,1,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PAuthorities`
--

LOCK TABLES `PAuthorities` WRITE;
/*!40000 ALTER TABLE `PAuthorities` DISABLE KEYS */;
INSERT INTO `PAuthorities` VALUES (1,1,'com.ps.wordsearch.provider.words');
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (11,'android.permission.ACCESS_COARSE_LOCATION'),(15,'android.permission.ACCESS_FINE_LOCATION'),(16,'android.permission.ACCESS_LOCATION_EXTRA_COMMANDS'),(12,'android.permission.ACCESS_NETWORK_STATE'),(10,'android.permission.ACCESS_WIFI_STATE'),(3,'android.permission.BROADCAST_STICKY'),(8,'android.permission.CHANGE_WIFI_STATE'),(5,'android.permission.INSTALL_PACKAGES'),(2,'android.permission.INTERNET'),(14,'android.permission.READ_EXTERNAL_STORAGE'),(1,'android.permission.READ_PHONE_STATE'),(6,'android.permission.READ_SMS'),(4,'android.permission.RECEIVE_BOOT_COMPLETED'),(17,'android.permission.SET_ORIENTATION'),(13,'android.permission.VIBRATE'),(7,'android.permission.WRITE_EXTERNAL_STORAGE'),(9,'android.permission.WRITE_SMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Providers`
--

LOCK TABLES `Providers` WRITE;
/*!40000 ALTER TABLE `Providers` DISABLE KEYS */;
INSERT INTO `Providers` VALUES (1,54,0,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'content://sms/inbox',NULL,NULL,NULL),(2,NULL,NULL,'(.*)',NULL,NULL,NULL),(3,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(4,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(5,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(6,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(7,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(8,NULL,NULL,'http://www.ss3.glu.com',NULL,NULL,NULL),(9,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(10,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(11,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(12,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=non_mrc&gid=(.*)',NULL,NULL,NULL),(13,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=',NULL,NULL,NULL),(14,NULL,NULL,'(.*)type=mrc&gid=(.*)&placeHolder=null',NULL,NULL,NULL),(15,NULL,NULL,'http://gcs.glu.com/gcs/android/index.jsp?src=diner2',NULL,NULL,NULL),(16,NULL,NULL,'(.*)type=non_mrc&gid=(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(18,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(19,NULL,NULL,'http://mrc-stage.glu.com/mrc/fe?type=mrc&gid=(.*)',NULL,NULL,NULL),(20,NULL,NULL,'(.*)type=non_mrc&gid=(.*)&phNo=&placeHolder=null',NULL,NULL,NULL),(21,NULL,NULL,'(.*)type=mrc&gid=(.*)',NULL,NULL,NULL),(22,NULL,NULL,'http://blog.163.com/sunkay_app/blog/static/19191703720117294041998/',NULL,NULL,NULL),(23,NULL,NULL,'',NULL,NULL,NULL),(24,NULL,NULL,'smsto:(.*)',NULL,NULL,NULL),(25,NULL,NULL,'http://www.brendandahl.com/wordsearch/donate',NULL,NULL,NULL),(26,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(27,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(28,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL),(29,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(30,NULL,NULL,'market://details?id=org.openintents.filemanager',NULL,NULL,NULL),(31,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(32,NULL,NULL,'tel:(.*)',NULL,NULL,NULL),(33,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(35,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(36,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(37,NULL,NULL,'file://',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.dahl.brendan.donate',NULL,NULL,NULL),(39,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(40,NULL,NULL,'content://com.ps.wordsearch.provider.words/words',NULL,NULL,NULL),(41,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(42,NULL,NULL,'file://(.*)/DomobAppDownload/.apk',NULL,NULL,NULL),(43,NULL,NULL,'file://NULL-CONSTANT',NULL,NULL,NULL),(44,NULL,NULL,'file://(.*)/DomobAppDownload/',NULL,NULL,NULL),(45,NULL,NULL,'file://(.*)/DomobAppDownload/(.*).apk',NULL,NULL,NULL),(46,NULL,NULL,'file://',NULL,NULL,NULL),(47,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(48,NULL,NULL,'content://telephony/carriers/preferapn',NULL,NULL,NULL),(49,NULL,NULL,'NULL-CONSTANT',NULL,NULL,NULL);
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
INSERT INTO `Uris` VALUES (1,26,1),(2,78,39),(3,85,40),(4,88,41),(5,92,47),(6,98,48);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UsesPermissions`
--

LOCK TABLES `UsesPermissions` WRITE;
/*!40000 ALTER TABLE `UsesPermissions` DISABLE KEYS */;
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,1),(5,2,2),(6,2,4),(7,2,5),(8,2,6),(9,2,7),(10,2,8),(11,2,9),(12,2,10),(13,2,11),(14,2,12),(15,3,1),(16,3,2),(17,3,4),(18,3,6),(19,3,7),(20,3,9),(21,3,10),(22,3,11),(23,3,12),(24,3,13),(25,4,16),(26,5,1),(27,4,1),(28,5,2),(29,4,2),(30,5,6),(31,4,4),(32,5,9),(33,4,7),(34,5,10),(35,4,8),(36,5,11),(37,4,10),(38,5,12),(39,4,12),(40,5,13),(41,4,14),(42,4,15),(43,6,17),(44,6,16),(45,6,1),(46,6,2),(47,6,4),(48,6,7),(49,6,8),(50,6,10),(51,6,11),(52,6,12),(53,6,14),(54,6,15),(55,7,1),(56,7,2),(57,7,7),(58,7,10),(59,7,12);
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

-- Dump completed on 2015-10-09  0:38:21
