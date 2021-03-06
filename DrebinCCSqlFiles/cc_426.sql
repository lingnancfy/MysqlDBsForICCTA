-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: cc_426
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
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ActionStrings`
--

LOCK TABLES `ActionStrings` WRITE;
/*!40000 ALTER TABLE `ActionStrings` DISABLE KEYS */;
INSERT INTO `ActionStrings` VALUES (23,'(.*)'),(18,'.ImageTestActivity'),(21,'.Myhall'),(11,'.PintuActivity'),(17,'.Web'),(3,'android.intent.action.BOOT_COMPLETED'),(9,'android.intent.action.CHOOSER'),(22,'android.intent.action.DELETE'),(1,'android.intent.action.MAIN'),(15,'android.intent.action.PACKAGE_ADDED'),(12,'android.intent.action.PACKAGE_REMOVED'),(24,'android.intent.action.SCREEN_OFF'),(2,'android.intent.action.USER_PRESENT'),(8,'android.intent.action.VIEW'),(4,'com.android.settings.APPLICATION_DEVELOPMENT_SETTINGS'),(5,'com.android.vending.billing.IN_APP_NOTIFY'),(6,'com.android.vending.billing.PURCHASE_STATE_CHANGED'),(7,'com.android.vending.billing.RESPONSE_CODE'),(10,'com.android_isobtlz.PintuActivity'),(13,'com.android_isobtlz.QHsReRl1'),(14,'com.seductivemm1.GameBootReceiver'),(19,'com.seductivemm1.ImageTestActivity'),(20,'com.seductivemm1.Myhall'),(16,'com.seductivemm1.Web');
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
INSERT INTO `Applications` VALUES (1,'de.laddiriw.psbcmjh.osow',10037),(2,'com.android_isobtlz',20009),(3,'jp.lptqsnvvauu.owgfihf',10024),(4,'com.seductivemm1',1012),(5,'com.vlmrdten.obcmtg',10023),(6,'cross.gqrdm.thqmmorwimdsv',10041),(7,'rkg.lahlksnb.wjubmrwego',10037);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CategoryStrings`
--

LOCK TABLES `CategoryStrings` WRITE;
/*!40000 ALTER TABLE `CategoryStrings` DISABLE KEYS */;
INSERT INTO `CategoryStrings` VALUES (2,'android.intent.category.DEFAULT'),(3,'android.intent.category.INFO'),(1,'android.intent.category.LAUNCHER'),(4,'android.intent.categroy.DEFUAULT');
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
) ENGINE=InnoDB AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Classes`
--

LOCK TABLES `Classes` WRITE;
/*!40000 ALTER TABLE `Classes` DISABLE KEYS */;
INSERT INTO `Classes` VALUES (1,1,'de.laddiriw.psbcmjh.osow.MineSweeper'),(2,1,'de.laddiriw.psbcmjh.osow.MinesPreferences'),(3,1,'de.laddiriw.psbcmjh.osow.HighScores'),(4,1,'de.laddiriw.psbcmjh.osow.Preview'),(5,1,'com.Hwcldr.rmOpbJBlnCdg'),(6,1,'com.Hwcldr.fPssjlnU'),(7,1,'com.Hwcldr.OdQPUGkPEJvgUal'),(8,1,'com.Hwcldr.mbwriEecLIQTii'),(9,1,'com.Hwcldr.astfMtFaOBRT'),(10,1,'com.Hwcldr.MDVPJLIVPCm'),(11,1,'com.Hwcldr.userPermissionReceiver'),(12,2,'com.android_isobtlz.PintuActivity'),(13,2,'com.android_isobtlz.QHsReRl8'),(14,2,'com.android_isobtlz.QHsReRl5'),(15,2,'com.android_isobtlz.QHsReRl13'),(16,2,'com.android_isobtlz.QHsReRl12'),(17,2,'com.android_isobtlz.QHsReRl2'),(18,3,'jp.lptqsnvvauu.owgfihf.Andjong'),(19,2,'com.android_isobtlz.QHsReRl1'),(20,3,'jp.lptqsnvvauu.owgfihf.About'),(21,3,'jp.lptqsnvvauu.owgfihf.Game'),(22,3,'jp.lptqsnvvauu.owgfihf.Settings'),(23,4,'com.seductivemm1.Myhall'),(24,3,'com.mawsDM.FSvRapJCKBg'),(25,4,'com.seductivemm1.Web'),(26,3,'com.mawsDM.smfkwaiaGvvaENH'),(27,4,'com.seductivemm1.HomeActivity'),(28,4,'com.seductivemm1.SortActivity1'),(29,4,'com.seductivemm1.SortActivity2'),(30,4,'com.seductivemm1.SearchActivity'),(31,4,'com.seductivemm1.ManagerActivity'),(32,4,'com.seductivemm1.GameInfo'),(33,4,'com.seductivemm1.TableClass'),(34,4,'com.seductivemm1.GameAlertDialog'),(35,4,'com.seductivemm1.DevelopmentSettings'),(36,4,'com.seductivemm1.qimg.ImageTestActivity'),(37,4,'com.seductivemm1.image.ADactivity'),(38,4,'com.seductivemm1.GameService'),(39,4,'com.seductivemm1.GameBootReceiver'),(40,5,'com.vlmrdten.obcmtg.ISniperActivity'),(41,5,'com.scoreloop.android.coreui.HighscoresActivity'),(42,5,'com.scoreloop.android.coreui.ProfileActivity'),(43,5,'com.scoreloop.android.coreui.AccountActivity'),(44,5,'com.scoreloop.android.coreui.BuddiesActivity'),(45,5,'com.scoreloop.android.coreui.BuddiesAddActivity'),(46,5,'com.scoreloop.android.coreui.GameActivity'),(47,6,'cross.gqrdm.thqmmorwimdsv.MainActivity'),(48,5,'com.scoreloop.android.coreui.GamesActivity'),(49,6,'cross.field.stage.StageActivity'),(50,5,'com.scoreloop.android.coreui.UserActivity'),(51,6,'cross.field.ranking.RankingActivity'),(52,5,'com.scoreloop.android.coreui.PostScoreActivity'),(53,6,'com.cgLFjMnm.MLWHlUQGBaEWDb'),(54,5,'com.vlmrdten.obcmtg.moreGameActivity'),(55,6,'com.cgLFjMnm.GAjQGvOf'),(56,5,'com.vlmrdten.obcmtg.SoundOptionActivity'),(57,5,'com.vlmrdten.obcmtg.DifficultOptionActivity'),(58,5,'com.vlmrdten.obcmtg.OptionList'),(59,6,'com.nd.dianjin.activity.OfferAppActivity'),(60,5,'com.google.ads.AdActivity'),(61,6,'cross.gqrdm.thqmmorwimdsv.BillingRequestService'),(62,5,'com.SteRtFMR.OnjJGwiIhldTF'),(63,6,'cross.gqrdm.thqmmorwimdsv.BillingResponseReceiver'),(64,5,'com.waps.OffersWebView'),(65,5,'com.SteRtFMR.wBLMIgblujMg'),(66,7,'rkg.lahlksnb.wjubmrwego.MenuActivity'),(67,7,'rkg.lahlksnb.wjubmrwego.GameActivity'),(68,7,'com.scoreloop.client.android.ui.EntryScreenActivity'),(69,7,'com.scoreloop.client.android.ui.PostScoreOverlayActivity'),(70,7,'com.scoreloop.client.android.ui.ShowResultOverlayActivity'),(71,7,'com.scoreloop.client.android.ui.BuddiesScreenActivity'),(72,7,'com.scoreloop.client.android.ui.LeaderboardsScreenActivity'),(73,7,'com.scoreloop.client.android.ui.ChallengesScreenActivity'),(74,7,'com.scoreloop.client.android.ui.AchievementsScreenActivity'),(75,7,'com.scoreloop.client.android.ui.SocialMarketScreenActivity'),(76,7,'com.scoreloop.client.android.ui.ProfileScreenActivity'),(77,7,'com.scoreloop.client.android.ui.component.market.MarketHeaderActivity'),(78,7,'com.scoreloop.client.android.ui.component.market.MarketListActivity'),(79,7,'com.scoreloop.client.android.ui.component.entry.EntryListActivity'),(80,7,'com.scoreloop.client.android.ui.component.post.PostOverlayActivity'),(81,7,'com.scoreloop.client.android.ui.component.score.ScoreHeaderActivity'),(82,7,'com.scoreloop.client.android.ui.component.score.ScoreListActivity'),(83,7,'com.scoreloop.client.android.ui.component.user.UserAddBuddyListActivity'),(84,7,'com.scoreloop.client.android.ui.component.user.UserHeaderActivity'),(85,7,'com.scoreloop.client.android.ui.component.user.UserDetailListActivity'),(86,7,'com.scoreloop.client.android.ui.component.user.UserListActivity'),(87,7,'com.scoreloop.client.android.ui.component.game.GameDetailHeaderActivity'),(88,7,'com.scoreloop.client.android.ui.component.game.GameDetailListActivity'),(89,7,'com.scoreloop.client.android.ui.component.game.GameListActivity'),(90,7,'com.scoreloop.client.android.ui.component.achievement.AchievementHeaderActivity'),(91,7,'com.scoreloop.client.android.ui.component.achievement.AchievementListActivity'),(92,7,'com.scoreloop.client.android.ui.component.news.NewsHeaderActivity'),(93,7,'com.scoreloop.client.android.ui.component.news.NewsListActivity'),(94,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeHeaderActivity'),(95,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeListActivity'),(96,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeAcceptListActivity'),(97,7,'com.scoreloop.client.android.ui.component.challenge.ChallengeCreateListActivity'),(98,7,'com.scoreloop.client.android.ui.component.challenge.ChallengePaymentActivity'),(99,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsListActivity'),(100,7,'com.scoreloop.client.android.ui.component.profile.ProfileSettingsPictureListActivity'),(101,7,'com.scoreloop.client.android.ui.framework.ScreenActivity'),(102,7,'com.scoreloop.client.android.ui.framework.TabsActivity'),(103,7,'com.google.ads.AdActivity'),(104,7,'com.atPKtkbG.rmOpbJBlnCdg'),(105,7,'com.atPKtkbG.fPssjlnU'),(106,7,'com.atPKtkbG.OdQPUGkPEJvgUal'),(107,7,'com.atPKtkbG.mbwriEecLIQTii'),(108,7,'com.atPKtkbG.astfMtFaOBRT'),(109,7,'com.atPKtkbG.MDVPJLIVPCm'),(110,7,'com.atPKtkbG.userPermissionReceiver'),(111,2,'x'),(112,2,'w'),(113,1,'com.Hwcldr.p'),(114,1,'com.Hwcldr.af'),(115,2,'t'),(116,4,'ds'),(117,4,'ch'),(118,6,'cross.gqrdm.thqmmorwimdsv.MainActivity$1'),(119,6,'cross.gqrdm.thqmmorwimdsv.MainActivity$2'),(120,1,'com.Hwcldr.ah'),(121,6,'com.nd.dianjin.DianJinPlatform'),(122,4,'dc'),(123,4,'s'),(124,4,'au'),(125,4,'de'),(126,4,'dm'),(127,4,'t'),(128,4,'ci'),(129,5,'com.scoreloop.client.android.core.controller.AddressBook'),(130,4,'bf'),(131,5,'com.vlmrdten.obcmtg.moreGameActivity$1'),(132,5,'com.waps.SDKUtils'),(133,5,'com.vlmrdten.obcmtg.OptionList$1'),(134,5,'com.scoreloop.android.coreui.GamesActivity$1'),(135,5,'com.waps.al'),(136,5,'com.scoreloop.android.coreui.BuddiesActivity$1'),(137,5,'com.scoreloop.android.coreui.GamesActivity$2'),(138,5,'com.vlmrdten.obcmtg.MyView$2'),(139,5,'com.waps.AppConnect'),(140,5,'com.waps.ao'),(141,5,'com.waps.w'),(142,5,'com.google.ads.util.AdUtil$UserActivityReceiver'),(143,5,'com.waps.y'),(144,5,'com.scoreloop.android.coreui.GameActivity$1'),(145,5,'com.vlmrdten.obcmtg.MyView'),(146,5,'com.scoreloop.android.coreui.AccountActivity$2'),(147,5,'com.scoreloop.android.coreui.HighscoresActivity$2'),(148,5,'com.vlmrdten.obcmtg.MyView$1');
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
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ComponentExtras`
--

LOCK TABLES `ComponentExtras` WRITE;
/*!40000 ALTER TABLE `ComponentExtras` DISABLE KEYS */;
INSERT INTO `ComponentExtras` VALUES (1,13,'from_alert'),(2,16,'content'),(3,7,'apkSoftID'),(4,16,'title'),(5,12,'service_channel'),(6,10,'fileURL'),(7,10,'fileName'),(8,9,'fileURL'),(9,13,'game'),(10,7,'imageURL'),(11,16,'url'),(12,7,'detailFlag'),(13,7,'apkInfo'),(14,13,'fromtype'),(15,13,'from_table'),(16,7,'apkSize'),(17,7,'apkVersion'),(18,9,'packageName'),(19,3,'bundle_score'),(20,1,'skip_cache'),(21,16,'version_code'),(22,15,'isDirectFromTable'),(23,7,'apkURL'),(24,7,'iconURL'),(25,7,'np_app_key'),(26,5,'np_app_key'),(27,8,'np_app_key'),(28,10,'np_app_key'),(29,6,'np_app_key'),(30,32,'title'),(31,17,'service_channel'),(32,31,'total'),(33,29,'nextclassid'),(34,13,'title'),(35,16,'fromtable'),(36,16,'apk_url'),(37,7,'packageName'),(38,7,'apkTitle'),(39,13,'filepath'),(40,16,'btn_txt'),(41,16,'package_name'),(42,31,'completed'),(43,31,'soft_id'),(44,31,'filepath'),(45,13,'status'),(46,23,'service_channel'),(47,15,'from'),(48,30,'status'),(49,32,'from_table'),(50,25,'service_channel'),(51,31,'status'),(52,31,'icon'),(53,31,'package_name'),(54,31,'url'),(55,30,'package_name'),(56,34,'content'),(57,32,'from_alert'),(58,31,'app_name'),(59,29,'package_name'),(60,32,'filepath'),(61,34,'url'),(62,36,'service_channel'),(63,29,'status'),(64,23,'nextclassid'),(65,34,'btn_txt'),(66,32,'status'),(67,34,'title'),(68,30,'version_code'),(69,64,'USER_ID'),(70,38,'service_channel'),(71,60,'action'),(72,64,'URL_PARAMS'),(73,65,'APP_PID'),(74,40,'APP_PID'),(75,65,'APP_ID'),(76,40,'APP_ID'),(77,64,'ADVIEW'),(78,65,'ADVIEW'),(79,40,'ADVIEW'),(80,64,'isFinshClose'),(81,64,'Notify_Id'),(82,64,'ACTIVITY_FLAG'),(83,65,'DEVICE_ID'),(84,40,'DEVICE_ID'),(85,64,'offers_webview_tag'),(86,65,'CLIENT_PACKAGE'),(87,40,'CLIENT_PACKAGE'),(88,64,'SHWO_FLAG'),(89,64,'Notify_Url_Params'),(90,65,'WAPS_PID'),(91,40,'WAPS_PID'),(92,64,'Offers_URL'),(93,65,'WAPS_ID'),(94,40,'WAPS_ID'),(95,64,'URL'),(96,64,'UrlPath'),(97,60,'params'),(98,64,'CLIENT_PACKAGE'),(99,60,'com.google.ads.AdOpener');
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
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Components`
--

LOCK TABLES `Components` WRITE;
/*!40000 ALTER TABLE `Components` DISABLE KEYS */;
INSERT INTO `Components` VALUES (1,1,'a',1,NULL,NULL),(2,2,'a',0,NULL,NULL),(3,3,'a',0,NULL,NULL),(4,4,'a',0,NULL,NULL),(5,5,'a',1,NULL,NULL),(6,6,'a',0,NULL,NULL),(7,7,'a',0,NULL,NULL),(8,8,'s',0,NULL,NULL),(9,9,'s',0,NULL,NULL),(10,10,'r',0,NULL,NULL),(11,11,'r',1,NULL,NULL),(12,12,'a',1,NULL,NULL),(13,13,'a',1,NULL,NULL),(14,14,'a',1,NULL,NULL),(15,15,'a',1,NULL,NULL),(16,16,'a',0,NULL,NULL),(17,17,'s',1,NULL,NULL),(18,18,'a',1,NULL,NULL),(19,19,'r',1,NULL,NULL),(20,20,'a',0,NULL,NULL),(21,21,'a',0,NULL,NULL),(22,22,'a',0,NULL,NULL),(23,23,'a',0,NULL,NULL),(24,24,'a',0,NULL,NULL),(25,25,'a',0,NULL,NULL),(26,26,'a',1,NULL,NULL),(27,27,'a',0,NULL,NULL),(28,28,'a',0,NULL,NULL),(29,29,'a',1,NULL,NULL),(30,30,'a',1,NULL,NULL),(31,31,'a',1,NULL,NULL),(32,32,'a',1,NULL,NULL),(33,33,'a',1,NULL,NULL),(34,34,'a',0,NULL,NULL),(35,35,'a',1,NULL,NULL),(36,36,'a',1,NULL,NULL),(37,37,'a',0,NULL,NULL),(38,38,'s',1,NULL,NULL),(39,39,'r',1,NULL,NULL),(40,40,'a',1,NULL,NULL),(41,41,'a',0,NULL,NULL),(42,42,'a',0,NULL,NULL),(43,43,'a',0,NULL,NULL),(44,44,'a',0,NULL,NULL),(45,45,'a',0,NULL,NULL),(46,46,'a',0,NULL,NULL),(47,47,'a',1,NULL,NULL),(48,48,'a',0,NULL,NULL),(49,49,'a',0,NULL,NULL),(50,50,'a',0,NULL,NULL),(51,51,'a',0,NULL,NULL),(52,52,'a',0,NULL,NULL),(53,53,'a',0,NULL,NULL),(54,54,'a',0,NULL,NULL),(55,55,'a',1,NULL,NULL),(56,56,'a',0,NULL,NULL),(57,57,'a',0,NULL,NULL),(58,58,'a',0,NULL,NULL),(59,59,'a',0,NULL,NULL),(60,60,'a',0,NULL,NULL),(61,61,'s',0,NULL,NULL),(62,62,'a',0,NULL,NULL),(63,63,'r',1,NULL,NULL),(64,64,'a',0,NULL,NULL),(65,65,'a',1,NULL,NULL),(66,66,'a',1,NULL,NULL),(67,67,'a',0,NULL,NULL),(68,68,'a',0,NULL,NULL),(69,69,'a',0,NULL,NULL),(70,70,'a',0,NULL,NULL),(71,71,'a',0,NULL,NULL),(72,72,'a',0,NULL,NULL),(73,73,'a',0,NULL,NULL),(74,74,'a',0,NULL,NULL),(75,75,'a',0,NULL,NULL),(76,76,'a',0,NULL,NULL),(77,77,'a',0,NULL,NULL),(78,78,'a',0,NULL,NULL),(79,79,'a',0,NULL,NULL),(80,80,'a',0,NULL,NULL),(81,81,'a',0,NULL,NULL),(82,82,'a',0,NULL,NULL),(83,83,'a',0,NULL,NULL),(84,84,'a',0,NULL,NULL),(85,85,'a',0,NULL,NULL),(86,86,'a',0,NULL,NULL),(87,87,'a',0,NULL,NULL),(88,88,'a',0,NULL,NULL),(89,89,'a',0,NULL,NULL),(90,90,'a',0,NULL,NULL),(91,91,'a',0,NULL,NULL),(92,92,'a',0,NULL,NULL),(93,93,'a',0,NULL,NULL),(94,94,'a',0,NULL,NULL),(95,95,'a',0,NULL,NULL),(96,96,'a',0,NULL,NULL),(97,97,'a',0,NULL,NULL),(98,98,'a',0,NULL,NULL),(99,99,'a',0,NULL,NULL),(100,100,'a',0,NULL,NULL),(101,101,'a',0,NULL,NULL),(102,102,'a',0,NULL,NULL),(103,103,'a',0,NULL,NULL),(104,104,'a',1,NULL,NULL),(105,105,'a',0,NULL,NULL),(106,106,'a',0,NULL,NULL),(107,107,'s',0,NULL,NULL),(108,108,'s',0,NULL,NULL),(109,109,'r',0,NULL,NULL),(110,110,'r',1,NULL,NULL),(111,142,'r',1,NULL,NULL),(112,143,'r',1,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=157 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPointComponents`
--

LOCK TABLES `ExitPointComponents` WRITE;
/*!40000 ALTER TABLE `ExitPointComponents` DISABLE KEYS */;
INSERT INTO `ExitPointComponents` VALUES (1,1,18),(2,2,24),(3,3,18),(4,4,18),(5,5,24),(6,6,13),(7,7,14),(8,8,13),(9,9,13),(10,10,13),(11,11,19),(12,12,14),(13,13,7),(14,13,6),(15,14,13),(16,15,6),(17,16,16),(18,17,5),(19,18,5),(20,19,13),(21,20,3),(22,21,13),(23,22,13),(24,23,6),(25,24,5),(26,25,16),(27,26,6),(28,27,12),(29,28,5),(30,29,7),(31,30,16),(32,31,1),(33,32,19),(34,33,34),(35,34,6),(36,35,14),(37,35,15),(38,35,16),(39,36,9),(40,37,30),(41,38,12),(42,39,30),(43,40,1),(44,41,16),(45,42,10),(46,43,27),(47,44,51),(48,45,13),(49,46,29),(50,47,47),(51,48,47),(52,49,29),(53,50,11),(54,51,53),(55,52,13),(56,53,1),(57,54,47),(58,55,7),(59,55,6),(60,56,23),(61,57,13),(62,58,47),(63,60,27),(64,59,55),(65,61,47),(66,62,39),(67,63,13),(68,64,55),(69,65,15),(70,65,14),(71,65,16),(72,66,39),(73,67,32),(74,68,19),(75,69,31),(76,70,23),(77,71,39),(78,72,25),(79,73,33),(80,74,27),(81,75,29),(82,76,25),(83,77,36),(84,78,27),(85,79,36),(86,80,32),(87,81,23),(88,82,27),(89,83,31),(90,84,25),(91,85,29),(92,86,33),(93,87,34),(94,88,34),(95,89,32),(96,90,23),(97,91,23),(98,92,34),(99,93,32),(100,94,33),(101,95,23),(102,96,29),(103,97,27),(104,98,31),(105,99,23),(106,100,32),(107,101,33),(108,102,45),(109,103,36),(110,104,54),(111,105,32),(112,106,40),(113,106,65),(114,107,29),(115,108,41),(116,109,42),(117,110,54),(118,111,58),(119,112,62),(120,113,40),(121,113,48),(122,113,65),(123,114,40),(124,114,65),(125,115,44),(126,116,64),(127,117,40),(128,117,65),(129,118,60),(130,119,48),(131,120,65),(132,121,54),(133,122,40),(134,123,65),(135,124,64),(136,125,64),(137,126,54),(138,127,41),(139,128,42),(140,129,46),(141,129,40),(142,129,65),(143,130,40),(144,131,62),(145,132,65),(146,132,40),(147,133,65),(148,133,40),(149,133,43),(150,134,48),(151,135,58),(152,136,41),(153,137,40),(154,138,48),(155,139,54),(156,140,40);
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
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ExitPoints`
--

LOCK TABLES `ExitPoints` WRITE;
/*!40000 ALTER TABLE `ExitPoints` DISABLE KEYS */;
INSERT INTO `ExitPoints` VALUES (1,18,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',15,'a',NULL),(2,24,'<com.mawsDM.FSvRapJCKBg: void a(java.lang.String)>',10,'a',NULL),(3,18,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',7,'a',NULL),(4,18,'<jp.lptqsnvvauu.owgfihf.Andjong: void onClick(android.view.View)>',11,'a',NULL),(5,24,'<com.mawsDM.FSvRapJCKBg: void a()>',3,'a',NULL),(6,13,'<com.android_isobtlz.QHsReRl8: void onCreate(android.os.Bundle)>',76,'a',NULL),(7,14,'<com.android_isobtlz.QHsReRl5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(8,13,'<com.android_isobtlz.QHsReRl8: void onCreate(android.os.Bundle)>',33,'s',NULL),(9,111,'<x: void onClick(android.view.View)>',218,'a',NULL),(10,112,'<w: void onClick(android.view.View)>',242,'a',NULL),(11,19,'<com.android_isobtlz.QHsReRl1: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(12,14,'<com.android_isobtlz.QHsReRl5: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',76,'a',NULL),(13,113,'<com.Hwcldr.p: void f(android.content.Context,java.lang.String)>',10,'a',NULL),(14,13,'<com.android_isobtlz.QHsReRl8: void onCreate(android.os.Bundle)>',81,'a',NULL),(15,6,'<com.Hwcldr.fPssjlnU: void b()>',45,'a',NULL),(16,16,'<com.android_isobtlz.QHsReRl12: void onClick(android.view.View)>',84,'a',NULL),(17,114,'<com.Hwcldr.af: void run()>',8,'s',NULL),(18,5,'<com.Hwcldr.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',31,'a',0),(19,115,'<t: void onClick(android.view.View)>',239,'a',NULL),(20,3,'<de.laddiriw.psbcmjh.osow.HighScores: boolean onContextItemSelected(android.view.MenuItem)>',37,'a',NULL),(21,13,'<com.android_isobtlz.QHsReRl8: void onCreate(android.os.Bundle)>',90,'s',NULL),(22,111,'<x: void onClick(android.view.View)>',239,'a',NULL),(23,6,'<com.Hwcldr.fPssjlnU: void b()>',55,'a',NULL),(24,5,'<com.Hwcldr.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',36,'a',NULL),(25,16,'<com.android_isobtlz.QHsReRl12: void onClick(android.view.View)>',66,'a',NULL),(26,6,'<com.Hwcldr.fPssjlnU: void onBackPressed()>',5,'a',NULL),(27,12,'<com.android_isobtlz.PintuActivity: void onCreate(android.os.Bundle)>',82,'s',NULL),(28,5,'<com.Hwcldr.rmOpbJBlnCdg: void onCreate(android.os.Bundle)>',21,'a',NULL),(29,7,'<com.Hwcldr.OdQPUGkPEJvgUal: void onCreate(android.os.Bundle)>',67,'a',NULL),(30,16,'<com.android_isobtlz.QHsReRl12: void onClick(android.view.View)>',75,'a',NULL),(31,1,'<de.laddiriw.psbcmjh.osow.MineSweeper: boolean onOptionsItemSelected(android.view.MenuItem)>',11,'a',NULL),(32,19,'<com.android_isobtlz.QHsReRl1: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(33,34,'<com.seductivemm1.GameAlertDialog: void onClick(android.view.View)>',30,'a',NULL),(34,6,'<com.Hwcldr.fPssjlnU: void a()>',3,'a',NULL),(35,15,'<com.android_isobtlz.QHsReRl13: void a(int,boolean)>',10,'s',NULL),(36,9,'<com.Hwcldr.astfMtFaOBRT: void a(java.lang.String)>',10,'a',NULL),(37,30,'<com.seductivemm1.SearchActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(38,12,'<com.android_isobtlz.PintuActivity: void onCreate(android.os.Bundle)>',86,'s',NULL),(39,30,'<com.seductivemm1.SearchActivity: void onCreate(android.os.Bundle)>',12,'s',NULL),(40,1,'<de.laddiriw.psbcmjh.osow.MineSweeper: void a(de.laddiriw.psbcmjh.osow.MineSweeper)>',5,'a',NULL),(41,16,'<com.android_isobtlz.QHsReRl12: void onClick(android.view.View)>',53,'a',NULL),(42,10,'<com.Hwcldr.MDVPJLIVPCm: void c(android.content.Context)>',74,'a',NULL),(43,116,'<ds: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(44,51,'<cross.field.ranking.RankingActivity: void buttonMore(android.view.View)>',7,'a',NULL),(45,112,'<w: void onClick(android.view.View)>',221,'a',NULL),(46,117,'<ch: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(47,118,'<cross.gqrdm.thqmmorwimdsv.MainActivity$1: void onClick(android.content.DialogInterface,int)>',6,'a',0),(48,119,'<cross.gqrdm.thqmmorwimdsv.MainActivity$2: void onClick(android.content.DialogInterface,int)>',6,'a',0),(49,117,'<ch: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',40,'a',NULL),(50,120,'<com.Hwcldr.ah: void run()>',25,'s',NULL),(51,53,'<com.cgLFjMnm.MLWHlUQGBaEWDb: void b()>',3,'a',NULL),(52,13,'<com.android_isobtlz.QHsReRl8: void onCreate(android.os.Bundle)>',177,'a',NULL),(53,1,'<de.laddiriw.psbcmjh.osow.MineSweeper: boolean onOptionsItemSelected(android.view.MenuItem)>',7,'a',NULL),(54,47,'<cross.gqrdm.thqmmorwimdsv.MainActivity: void buttonStart(android.view.View)>',19,'a',NULL),(55,7,'<com.Hwcldr.OdQPUGkPEJvgUal: void a(com.Hwcldr.OdQPUGkPEJvgUal,android.content.Context,java.lang.String)>',5,'a',NULL),(56,23,'<com.seductivemm1.Myhall: void onCreate(android.os.Bundle)>',101,'s',NULL),(57,115,'<t: void onClick(android.view.View)>',218,'a',NULL),(58,47,'<cross.gqrdm.thqmmorwimdsv.MainActivity: void buttonRanking(android.view.View)>',19,'a',NULL),(59,55,'<com.cgLFjMnm.GAjQGvOf: void a()>',3,'a',NULL),(60,27,'<com.seductivemm1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(61,47,'<cross.gqrdm.thqmmorwimdsv.MainActivity: void buttonMore(android.view.View)>',7,'a',NULL),(62,39,'<com.seductivemm1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',67,'s',NULL),(63,13,'<com.android_isobtlz.QHsReRl8: void onCreate(android.os.Bundle)>',172,'a',NULL),(64,121,'<com.nd.dianjin.DianJinPlatform: void showOfferWall(android.content.Context,com.nd.dianjin.DianJinPlatform$Oriention)>',7,'a',NULL),(65,15,'<com.android_isobtlz.QHsReRl13: void a(int,boolean)>',63,'a',NULL),(66,39,'<com.seductivemm1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(67,122,'<dc: void onClick(android.view.View)>',224,'a',NULL),(68,19,'<com.android_isobtlz.QHsReRl1: void onReceive(android.content.Context,android.content.Intent)>',39,'s',NULL),(69,31,'<com.seductivemm1.ManagerActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(70,123,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',35,'a',NULL),(71,39,'<com.seductivemm1.GameBootReceiver: void onReceive(android.content.Context,android.content.Intent)>',16,'s',NULL),(72,124,'<au: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(73,125,'<de: void a(int,boolean)>',10,'s',NULL),(74,27,'<com.seductivemm1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',48,'a',NULL),(75,29,'<com.seductivemm1.SortActivity2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',24,'a',NULL),(76,25,'<com.seductivemm1.Web: void onCreate(android.os.Bundle)>',19,'s',NULL),(77,36,'<com.seductivemm1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',54,'s',NULL),(78,27,'<com.seductivemm1.HomeActivity: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',39,'a',NULL),(79,36,'<com.seductivemm1.qimg.ImageTestActivity: void onCreate(android.os.Bundle)>',50,'s',NULL),(80,32,'<com.seductivemm1.GameInfo: void onCreate(android.os.Bundle)>',99,'a',NULL),(81,23,'<com.seductivemm1.Myhall: void onCreate(android.os.Bundle)>',96,'s',NULL),(82,116,'<ds: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(83,126,'<dm: void onClick(android.content.DialogInterface,int)>',12,'a',NULL),(84,25,'<com.seductivemm1.Web: void onCreate(android.os.Bundle)>',23,'s',NULL),(85,117,'<ch: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',27,'a',NULL),(86,125,'<de: void a(int,boolean)>',29,'a',NULL),(87,34,'<com.seductivemm1.GameAlertDialog: void onClick(android.view.View)>',44,'a',NULL),(88,34,'<com.seductivemm1.GameAlertDialog: void onClick(android.view.View)>',62,'a',NULL),(89,32,'<com.seductivemm1.GameInfo: void onCreate(android.os.Bundle)>',11,'s',NULL),(90,123,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',21,'a',NULL),(91,123,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',45,'a',NULL),(92,34,'<com.seductivemm1.GameAlertDialog: void onClick(android.view.View)>',53,'a',NULL),(93,122,'<dc: void onClick(android.view.View)>',205,'a',NULL),(94,33,'<com.seductivemm1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',72,'a',NULL),(95,127,'<t: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(96,128,'<ci: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',18,'a',NULL),(97,116,'<ds: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',49,'a',NULL),(98,126,'<dm: void onClick(android.content.DialogInterface,int)>',31,'a',NULL),(99,123,'<s: void onCheckedChanged(android.widget.RadioGroup,int)>',55,'a',NULL),(100,32,'<com.seductivemm1.GameInfo: boolean onKeyDown(int,android.view.KeyEvent)>',10,'a',NULL),(101,33,'<com.seductivemm1.TableClass: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(102,129,'<com.scoreloop.client.android.core.controller.AddressBook: java.util.List b(android.content.Context)>',5,'p',NULL),(103,130,'<bf: void onClick(android.content.DialogInterface,int)>',33,'a',NULL),(104,131,'<com.vlmrdten.obcmtg.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',23,'a',NULL),(105,32,'<com.seductivemm1.GameInfo: void onCreate(android.os.Bundle)>',94,'a',NULL),(106,132,'<com.waps.SDKUtils: void goToTargetBrowser(java.lang.String,java.lang.String,android.content.pm.PackageManager)>',6,'a',NULL),(107,29,'<com.seductivemm1.SortActivity2: void onCreate(android.os.Bundle)>',11,'s',NULL),(108,41,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(109,42,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(110,131,'<com.vlmrdten.obcmtg.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(111,133,'<com.vlmrdten.obcmtg.OptionList$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(112,62,'<com.SteRtFMR.OnjJGwiIhldTF: void a(java.lang.String)>',10,'a',NULL),(113,134,'<com.scoreloop.android.coreui.GamesActivity$1: void onClick(android.view.View)>',9,'a',NULL),(114,135,'<com.waps.al: void onClick(android.view.View)>',84,'a',NULL),(115,136,'<com.scoreloop.android.coreui.BuddiesActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(116,64,'<com.waps.OffersWebView: void onCreate(android.os.Bundle)>',56,'a',NULL),(117,135,'<com.waps.al: void onClick(android.view.View)>',55,'a',NULL),(118,60,'<com.google.ads.AdActivity: void onCreate(android.os.Bundle)>',73,'a',NULL),(119,137,'<com.scoreloop.android.coreui.GamesActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',15,'a',NULL),(120,65,'<com.SteRtFMR.wBLMIgblujMg: void a()>',3,'a',NULL),(121,131,'<com.vlmrdten.obcmtg.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',11,'a',NULL),(122,138,'<com.vlmrdten.obcmtg.MyView$2: void run()>',7,'a',NULL),(123,139,'<com.waps.AppConnect: void showOffers(android.content.Context,java.lang.String)>',14,'a',NULL),(124,140,'<com.waps.ao: void onClick(android.content.DialogInterface,int)>',21,'a',NULL),(125,141,'<com.waps.w: java.lang.String a(java.lang.String[])>',137,'a',NULL),(126,131,'<com.vlmrdten.obcmtg.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',35,'a',NULL),(127,41,'<com.scoreloop.android.coreui.HighscoresActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(128,42,'<com.scoreloop.android.coreui.ProfileActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(129,144,'<com.scoreloop.android.coreui.GameActivity$1: void onClick(android.view.View)>',9,'a',NULL),(130,145,'<com.vlmrdten.obcmtg.MyView: void drawMainMenu(com.vlmrdten.obcmtg.J2ME_Graphics)>',75,'a',NULL),(131,62,'<com.SteRtFMR.OnjJGwiIhldTF: void a()>',3,'a',NULL),(132,132,'<com.waps.SDKUtils: void openUrlByBrowser(java.lang.String,java.lang.String)>',18,'a',NULL),(133,146,'<com.scoreloop.android.coreui.AccountActivity$2: void onClick(android.view.View)>',9,'a',NULL),(134,48,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',9,'a',0),(135,133,'<com.vlmrdten.obcmtg.OptionList$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',17,'a',NULL),(136,147,'<com.scoreloop.android.coreui.HighscoresActivity$2: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',53,'a',NULL),(137,148,'<com.vlmrdten.obcmtg.MyView$1: void run()>',7,'a',NULL),(138,48,'<com.scoreloop.android.coreui.GamesActivity: boolean onOptionsItemSelected(android.view.MenuItem)>',15,'a',0),(139,131,'<com.vlmrdten.obcmtg.moreGameActivity$1: void onItemClick(android.widget.AdapterView,android.view.View,int,long)>',29,'a',NULL),(140,145,'<com.vlmrdten.obcmtg.MyView: void drawMainMenu(com.vlmrdten.obcmtg.J2ME_Graphics)>',104,'a',NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IActions`
--

LOCK TABLES `IActions` WRITE;
/*!40000 ALTER TABLE `IActions` DISABLE KEYS */;
INSERT INTO `IActions` VALUES (1,2,8),(2,7,1),(3,8,1),(4,10,8),(5,11,8),(6,12,1),(7,13,1),(8,14,1),(9,15,1),(10,18,8),(11,23,1),(12,24,9),(13,25,1),(14,26,9),(15,27,1),(16,28,9),(17,29,1),(18,30,9),(19,31,9),(20,33,9),(21,34,9),(22,35,1),(23,36,9),(24,37,1),(25,38,1),(26,39,1),(27,42,8),(28,44,8),(29,45,10),(30,47,11),(31,48,1),(32,49,1),(33,50,4),(34,52,13),(35,56,8),(36,64,8),(37,65,8),(38,66,8),(39,67,8),(40,75,1),(41,76,8),(42,78,1),(43,79,8),(44,82,8),(45,83,14),(46,87,14),(47,88,1),(48,89,13),(49,90,1),(50,91,1),(51,92,1),(52,96,8),(53,98,8),(54,100,16),(55,101,17),(56,104,18),(57,105,19),(58,107,20),(59,108,21),(60,110,1),(61,111,1),(62,115,8),(63,116,8),(64,121,4),(65,122,8),(66,123,8),(67,125,8),(68,127,8),(69,128,22),(70,131,1),(71,132,1),(72,133,8),(73,134,8),(74,136,8),(75,138,8),(76,139,8),(77,140,8),(78,141,8),(79,142,8),(80,143,8),(81,145,8),(82,150,1),(83,151,1),(84,153,1),(85,154,1),(86,155,8),(87,156,23),(88,157,23),(89,160,8),(90,163,8),(91,164,8),(92,165,8),(93,166,8),(94,169,8),(95,170,8),(96,174,8);
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
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ICategories`
--

LOCK TABLES `ICategories` WRITE;
/*!40000 ALTER TABLE `ICategories` DISABLE KEYS */;
INSERT INTO `ICategories` VALUES (1,7,1),(2,8,3),(3,12,1),(4,13,3),(5,14,1),(6,15,3),(7,23,1),(8,25,3),(9,27,1),(10,29,3),(11,35,1),(12,37,3),(13,38,1),(14,39,3),(15,48,1),(16,49,3),(17,75,1),(18,78,3),(19,88,1),(20,90,3),(21,91,1),(22,92,3),(23,110,1),(24,111,3),(25,131,1),(26,132,3),(27,136,2),(28,136,3),(29,138,1),(30,138,2),(31,139,1),(32,139,2),(33,140,2),(34,140,3),(35,141,2),(36,142,2),(37,150,1),(38,151,3),(39,153,1),(40,154,3);
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
) ENGINE=InnoDB AUTO_INCREMENT=93 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IClasses`
--

LOCK TABLES `IClasses` WRITE;
/*!40000 ALTER TABLE `IClasses` DISABLE KEYS */;
INSERT INTO `IClasses` VALUES (1,1,'jp/lptqsnvvauu/owgfihf/Settings'),(2,3,'jp/lptqsnvvauu/owgfihf/Game'),(3,4,'jp/lptqsnvvauu/owgfihf/About'),(4,5,'jp/lptqsnvvauu/owgfihf/Andjong'),(5,6,'com/android_isobtlz/PintuActivity'),(6,9,'com/android_isobtlz/QHsReRl2'),(7,16,'com/android_isobtlz/QHsReRl2'),(8,17,'com/android_isobtlz/QHsReRl8'),(9,19,'com/android_isobtlz/PintuActivity'),(10,20,'de/laddiriw/psbcmjh/osow/MineSweeper'),(11,22,'com/Hwcldr/mbwriEecLIQTii'),(12,21,'com/android_isobtlz/QHsReRl12'),(13,32,'com/android_isobtlz/QHsReRl2'),(14,40,'de/laddiriw/psbcmjh/osow/MineSweeper'),(15,41,'com/Hwcldr/fPssjlnU'),(16,43,'de/laddiriw/psbcmjh/osow/MineSweeper'),(17,45,'com/android_isobtlz/QHsReRl2'),(18,46,'com/Hwcldr/fPssjlnU'),(19,47,'com/android_isobtlz/QHsReRl2'),(20,51,'de/laddiriw/psbcmjh/osow/HighScores'),(21,52,'com/android_isobtlz/QHsReRl2'),(22,54,'de/laddiriw/psbcmjh/osow/MineSweeper'),(23,53,'com/seductivemm1/GameInfo'),(24,55,'com/android_isobtlz/QHsReRl2'),(25,57,'com/seductivemm1/GameInfo'),(26,58,'com/android_isobtlz/QHsReRl2'),(27,59,'com/seductivemm1/GameService'),(28,60,'de/laddiriw/psbcmjh/osow/MineSweeper'),(29,61,'com/android_isobtlz/QHsReRl8'),(30,63,'com/seductivemm1/Myhall'),(31,62,'com/Hwcldr/OdQPUGkPEJvgUal'),(32,69,'com/Hwcldr/mbwriEecLIQTii'),(33,70,'cross/gqrdm/thqmmorwimdsv/MainActivity'),(34,68,'com/seductivemm1/Myhall'),(35,71,'com/android_isobtlz/PintuActivity'),(36,72,'de/laddiriw/psbcmjh/osow/MinesPreferences'),(37,73,'cross/field/stage/StageActivity'),(38,74,'com/seductivemm1/GameService'),(39,77,'cross/field/ranking/RankingActivity'),(40,80,'com/seductivemm1/GameInfo'),(41,81,'cross/gqrdm/thqmmorwimdsv/MainActivity'),(42,84,'com/android_isobtlz/PintuActivity'),(43,83,'com/seductivemm1/GameService'),(44,86,'com/android_isobtlz/PintuActivity'),(45,85,'com/nd/dianjin/activity/OfferAppActivity'),(46,87,'com/seductivemm1/GameService'),(47,89,'com/android_isobtlz/QHsReRl2'),(48,93,'com/seductivemm1/GameService'),(49,94,'com/seductivemm1/Myhall'),(50,95,'com/seductivemm1/GameService'),(51,97,'com/seductivemm1/GameService'),(52,99,'com/seductivemm1/GameInfo'),(53,100,'com/seductivemm1/GameService'),(54,101,'com/seductivemm1/GameService'),(55,102,'com/seductivemm1/GameService'),(56,103,'com/seductivemm1/Myhall'),(57,104,'com/seductivemm1/GameService'),(58,105,'com/seductivemm1/GameService'),(59,106,'com/seductivemm1/Myhall'),(60,107,'com/seductivemm1/GameService'),(61,108,'com/seductivemm1/GameService'),(62,109,'com/seductivemm1/GameInfo'),(63,112,'com/seductivemm1/GameService'),(64,113,'com/seductivemm1/GameInfo'),(65,114,'com/seductivemm1/Myhall'),(66,117,'com/seductivemm1/GameAlertDialog'),(67,118,'com/seductivemm1/GameService'),(68,119,'com/seductivemm1/Myhall'),(69,120,'com/seductivemm1/Myhall'),(70,124,'com/seductivemm1/GameInfo'),(71,126,'com/seductivemm1/Myhall'),(72,129,'com/seductivemm1/Myhall'),(73,130,'com/seductivemm1/Myhall'),(74,135,'com/seductivemm1/Myhall'),(75,137,'com/seductivemm1/GameService'),(76,141,''),(77,142,''),(78,144,'com/vlmrdten/obcmtg/SoundOptionActivity'),(79,146,'com/scoreloop/android/coreui/GameActivity'),(80,147,'(.*)'),(81,148,'(.*)'),(82,149,'com/scoreloop/android/coreui/UserActivity'),(83,158,'com/scoreloop/android/coreui/GameActivity'),(84,159,'com/vlmrdten/obcmtg/ISniperActivity'),(85,161,'com/scoreloop/android/coreui/ProfileActivity'),(86,162,'(.*)'),(87,167,'com/vlmrdten/obcmtg/moreGameActivity'),(88,168,'com/vlmrdten/obcmtg/ISniperActivity'),(89,171,'com/vlmrdten/obcmtg/DifficultOptionActivity'),(90,172,'com/scoreloop/android/coreui/UserActivity'),(91,173,'com/scoreloop/android/coreui/HighscoresActivity'),(92,175,'com/vlmrdten/obcmtg/OptionList');
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
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IData`
--

LOCK TABLES `IData` WRITE;
/*!40000 ALTER TABLE `IData` DISABLE KEYS */;
INSERT INTO `IData` VALUES (1,2,1),(2,10,2),(3,11,3),(4,18,4),(5,42,5),(6,44,6),(7,56,7),(8,64,8),(9,65,9),(10,66,10),(11,67,11),(12,76,12),(13,79,13),(14,82,14),(15,96,15),(16,98,16),(17,115,17),(18,116,18),(19,122,19),(20,123,20),(21,125,21),(22,127,22),(23,128,23),(24,133,25),(25,134,26),(26,136,27),(27,138,28),(28,139,29),(29,140,30),(30,141,31),(31,142,32),(32,143,33),(33,145,34),(34,155,35),(35,156,36),(36,157,37),(37,160,38),(38,163,39),(39,164,40),(40,165,41),(41,166,42),(42,169,43),(43,170,44),(44,174,45);
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
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IExtras`
--

LOCK TABLES `IExtras` WRITE;
/*!40000 ALTER TABLE `IExtras` DISABLE KEYS */;
INSERT INTO `IExtras` VALUES (1,17,'game'),(2,17,'fromtype'),(3,21,'title'),(4,21,'btn_txt'),(5,21,'need_adb_flag'),(6,21,'cont'),(7,21,'close_flag'),(8,24,'android.intent.extra.INTENT'),(9,26,'android.intent.extra.INTENT'),(10,28,'android.intent.extra.TITLE'),(11,28,'android.intent.extra.INTENT'),(12,30,'android.intent.extra.INTENT'),(13,31,'android.intent.extra.TITLE'),(14,31,'android.intent.extra.INTENT'),(15,33,'android.intent.extra.INTENT'),(16,34,'android.intent.extra.TITLE'),(17,34,'android.intent.extra.INTENT'),(18,36,'android.intent.extra.TITLE'),(19,36,'android.intent.extra.INTENT'),(20,53,'id'),(21,53,'from_table'),(22,53,'detail_flag'),(23,60,'skip_cache'),(24,61,'id'),(25,61,'from_alert'),(26,61,'detail_flag'),(27,62,'apkVersion'),(28,63,'title'),(29,62,'apkURL'),(30,63,'nextclassid'),(31,62,'apkInfo'),(32,63,'clicked'),(33,62,'packageName'),(34,62,'apkSoftID'),(35,62,'apkTitle'),(36,62,'iconURL'),(37,62,'apkSize'),(38,62,'imageURL'),(39,68,'title'),(40,68,'nextclassid'),(41,68,'clicked'),(42,85,'oriention'),(43,94,'clicked'),(44,99,'title'),(45,103,'nextclassid'),(46,103,'clicked'),(47,109,'title'),(48,113,'title'),(49,117,'title'),(50,117,'btn_txt'),(51,117,'need_adb_flag'),(52,117,'cont'),(53,117,'close_flag'),(54,119,'clicked'),(55,120,'clicked'),(56,126,'title'),(57,126,'nextclassid'),(58,126,'clicked'),(59,129,'clicked'),(60,147,'CLIENT_PACKAGE'),(61,147,'URL'),(62,147,'isFinshClose'),(63,147,'offers_webview_tag'),(64,148,'CLIENT_PACKAGE'),(65,148,'URL'),(66,148,'offers_webview_tag'),(67,162,'USER_ID'),(68,162,'CLIENT_PACKAGE'),(69,162,'Offers_URL'),(70,162,'offers_webview_tag'),(71,162,'URL_PARAMS');
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IFActions`
--

LOCK TABLES `IFActions` WRITE;
/*!40000 ALTER TABLE `IFActions` DISABLE KEYS */;
INSERT INTO `IFActions` VALUES (1,2,1),(2,3,2),(3,4,1),(4,5,1),(5,6,1),(6,7,1),(7,8,1),(8,10,3),(9,11,1),(10,12,1),(11,13,1),(12,14,1),(13,15,1),(14,16,1),(15,17,4),(16,18,1),(17,19,1),(18,20,3),(19,23,1),(20,24,7),(21,24,6),(22,24,5),(23,25,1),(24,27,1),(25,28,2),(26,29,12),(27,30,15),(28,31,15),(29,32,12),(30,33,2),(31,33,24),(32,34,15);
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
INSERT INTO `IFCategories` VALUES (1,2,1),(2,4,2),(3,4,1),(4,8,1),(5,11,1),(6,18,1),(7,19,1),(8,23,1),(9,25,1),(10,27,1),(11,29,4),(12,30,4),(13,31,4),(14,32,4);
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
INSERT INTO `IFData` VALUES (1,29,'package',NULL,NULL,NULL,NULL,NULL),(2,30,'package',NULL,NULL,NULL,NULL,NULL),(3,31,'package',NULL,NULL,NULL,NULL,NULL),(4,32,'package',NULL,NULL,NULL,NULL,NULL),(5,34,'package',NULL,NULL,NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IMimeTypes`
--

LOCK TABLES `IMimeTypes` WRITE;
/*!40000 ALTER TABLE `IMimeTypes` DISABLE KEYS */;
INSERT INTO `IMimeTypes` VALUES (1,2,'application','vnd.android.package-archive'),(2,10,'application','vnd.android.package-archive'),(3,11,'application','vnd.android.package-archive'),(4,18,'application','vnd.android.package-archive'),(5,56,'application','vnd.android.package-archive'),(6,65,'application','vnd.android.package-archive'),(7,67,'application','vnd.android.package-archive'),(8,76,'application','vnd.android.package-archive'),(9,79,'application','vnd.android.package-archive'),(10,96,'application','vnd.android.package-archive'),(11,122,'application','vnd.android.package-archive'),(12,123,'application','vnd.android.package-archive'),(13,125,'application','vnd.android.package-archive'),(14,133,'application','vnd.android.package-archive'),(15,145,'application','vnd.android.package-archive'),(16,156,'(.*)','(.*)'),(17,163,'application','vnd.android.package-archive'),(18,164,'application','vnd.android.package-archive');
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
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `IPackages`
--

LOCK TABLES `IPackages` WRITE;
/*!40000 ALTER TABLE `IPackages` DISABLE KEYS */;
INSERT INTO `IPackages` VALUES (1,1,'jp.lptqsnvvauu.owgfihf'),(2,3,'jp.lptqsnvvauu.owgfihf'),(3,4,'jp.lptqsnvvauu.owgfihf'),(4,5,'jp.lptqsnvvauu.owgfihf'),(5,6,'com.android_isobtlz'),(6,7,'(.*)'),(7,8,'(.*)'),(8,9,'com.android_isobtlz'),(9,12,'(.*)'),(10,13,''),(11,14,''),(12,15,'(.*)'),(13,16,'com.android_isobtlz'),(14,17,'com.android_isobtlz'),(15,19,'com.android_isobtlz'),(16,20,'de.laddiriw.psbcmjh.osow'),(17,22,'de.laddiriw.psbcmjh.osow'),(18,21,'com.android_isobtlz'),(19,23,'(.*)'),(20,25,''),(21,27,''),(22,29,'(.*)'),(23,32,'com.android_isobtlz'),(24,35,'(.*)'),(25,37,''),(26,38,''),(27,40,'de.laddiriw.psbcmjh.osow'),(28,39,'(.*)'),(29,41,'de.laddiriw.psbcmjh.osow'),(30,43,'de.laddiriw.psbcmjh.osow'),(31,45,'com.android_isobtlz'),(32,46,'de.laddiriw.psbcmjh.osow'),(33,47,'com.android_isobtlz'),(34,48,'(.*)'),(35,49,'(.*)'),(36,51,'de.laddiriw.psbcmjh.osow'),(37,52,'com.android_isobtlz'),(38,54,'de.laddiriw.psbcmjh.osow'),(39,53,'com.seductivemm1'),(40,55,'com.android_isobtlz'),(41,57,'com.seductivemm1'),(42,58,'com.android_isobtlz'),(43,59,'com.seductivemm1'),(44,60,'de.laddiriw.psbcmjh.osow'),(45,61,'com.android_isobtlz'),(46,63,'com.seductivemm1'),(47,62,'de.laddiriw.psbcmjh.osow'),(48,69,'de.laddiriw.psbcmjh.osow'),(49,70,'cross.gqrdm.thqmmorwimdsv'),(50,68,'com.seductivemm1'),(51,71,'com.android_isobtlz'),(52,72,'de.laddiriw.psbcmjh.osow'),(53,73,'cross.gqrdm.thqmmorwimdsv'),(54,74,'com.seductivemm1'),(55,77,'cross.gqrdm.thqmmorwimdsv'),(56,75,'(.*)'),(57,78,'(.*)'),(58,80,'com.seductivemm1'),(59,81,'cross.gqrdm.thqmmorwimdsv'),(60,84,'com.android_isobtlz'),(61,83,'com.seductivemm1'),(62,86,'com.android_isobtlz'),(63,85,'cross.gqrdm.thqmmorwimdsv'),(64,87,'com.seductivemm1'),(65,88,'(.*)'),(66,89,'com.android_isobtlz'),(67,90,''),(68,91,''),(69,92,'(.*)'),(70,93,'com.seductivemm1'),(71,94,'com.seductivemm1'),(72,95,'com.seductivemm1'),(73,97,'com.seductivemm1'),(74,99,'com.seductivemm1'),(75,100,'com.seductivemm1'),(76,101,'com.seductivemm1'),(77,102,'com.seductivemm1'),(78,103,'com.seductivemm1'),(79,104,'com.seductivemm1'),(80,105,'com.seductivemm1'),(81,106,'com.seductivemm1'),(82,107,'com.seductivemm1'),(83,108,'com.seductivemm1'),(84,109,'com.seductivemm1'),(85,110,'NULL-CONSTANT'),(86,111,'NULL-CONSTANT'),(87,112,'com.seductivemm1'),(88,113,'com.seductivemm1'),(89,114,'com.seductivemm1'),(90,117,'com.seductivemm1'),(91,118,'com.seductivemm1'),(92,119,'com.seductivemm1'),(93,120,'com.seductivemm1'),(94,124,'com.seductivemm1'),(95,126,'com.seductivemm1'),(96,129,'com.seductivemm1'),(97,130,'com.seductivemm1'),(98,131,'(.*)'),(99,132,'(.*)'),(100,135,'com.seductivemm1'),(101,137,'com.seductivemm1'),(102,136,''),(103,138,''),(104,139,'(.*)'),(105,140,'(.*)'),(106,141,''),(107,142,'(.*)'),(108,144,'com.vlmrdten.obcmtg'),(109,146,'com.vlmrdten.obcmtg'),(110,147,'com.vlmrdten.obcmtg'),(111,148,'com.vlmrdten.obcmtg'),(112,149,'com.vlmrdten.obcmtg'),(113,150,'(.*)'),(114,151,'(.*)'),(115,153,'(.*)'),(116,154,'(.*)'),(117,158,'com.vlmrdten.obcmtg'),(118,159,'com.vlmrdten.obcmtg'),(119,161,'com.vlmrdten.obcmtg'),(120,162,'com.vlmrdten.obcmtg'),(121,167,'com.vlmrdten.obcmtg'),(122,168,'com.vlmrdten.obcmtg'),(123,171,'com.vlmrdten.obcmtg'),(124,172,'com.vlmrdten.obcmtg'),(125,173,'com.vlmrdten.obcmtg'),(126,175,'com.vlmrdten.obcmtg');
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
INSERT INTO `IntentFilters` VALUES (1,1,0),(2,5,0),(3,11,0),(4,12,0),(5,13,0),(6,14,0),(7,15,0),(8,17,0),(9,18,0),(10,19,0),(11,26,0),(12,29,0),(13,30,0),(14,31,0),(15,32,0),(16,33,0),(17,35,0),(18,36,0),(19,38,0),(20,39,0),(21,40,0),(22,47,0),(23,55,0),(24,63,0),(25,65,0),(26,66,0),(27,104,0),(28,110,0),(29,19,0),(30,19,0),(31,39,0),(32,39,0),(33,111,0),(34,112,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=176 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Intents`
--

LOCK TABLES `Intents` WRITE;
/*!40000 ALTER TABLE `Intents` DISABLE KEYS */;
INSERT INTO `Intents` VALUES (1,1,0,0),(2,2,1,0),(3,3,0,0),(4,4,0,0),(5,5,0,0),(6,6,0,0),(7,7,1,0),(8,7,1,0),(9,8,0,0),(10,9,1,0),(11,9,1,0),(12,10,1,0),(13,10,1,0),(14,10,1,0),(15,10,1,0),(16,11,0,0),(17,12,0,0),(18,13,1,0),(19,14,0,0),(20,15,0,0),(21,16,0,0),(22,17,0,0),(23,19,1,0),(24,20,1,0),(25,19,1,0),(26,20,1,0),(27,19,1,0),(28,20,1,0),(29,19,1,0),(30,20,1,0),(31,20,1,0),(32,21,0,0),(33,20,1,0),(34,20,1,0),(35,22,1,0),(36,20,1,0),(37,22,1,0),(38,22,1,0),(39,22,1,0),(40,23,0,0),(41,24,0,0),(42,25,1,0),(43,26,0,0),(44,25,1,0),(45,27,0,0),(46,28,0,0),(47,27,0,0),(48,29,1,0),(49,29,1,0),(50,30,1,0),(51,31,0,0),(52,32,0,0),(53,33,0,0),(54,34,0,0),(55,35,0,0),(56,36,1,0),(57,37,0,0),(58,38,0,0),(59,39,0,0),(60,40,0,0),(61,41,0,0),(62,42,0,0),(63,43,0,0),(64,44,1,0),(65,45,1,0),(66,46,1,0),(67,45,1,0),(68,49,0,0),(69,50,0,0),(70,51,0,0),(71,52,0,0),(72,53,0,0),(73,54,0,0),(74,56,0,0),(75,55,1,0),(76,57,1,0),(77,58,0,0),(78,55,1,0),(79,57,1,0),(80,60,0,0),(81,59,0,0),(82,61,1,0),(83,62,0,0),(84,63,0,0),(85,64,0,0),(86,65,0,0),(87,66,0,0),(88,67,1,0),(89,68,0,0),(90,67,1,0),(91,67,1,0),(92,67,1,0),(93,69,0,0),(94,70,0,0),(95,71,0,0),(96,72,1,0),(97,73,0,0),(98,74,1,0),(99,75,0,0),(100,76,0,0),(101,76,0,0),(102,77,0,0),(103,78,0,0),(104,79,0,0),(105,79,0,0),(106,80,0,0),(107,81,0,0),(108,81,0,0),(109,82,0,0),(110,83,1,0),(111,83,1,0),(112,84,0,0),(113,85,0,0),(114,86,0,0),(115,87,1,0),(116,87,1,0),(117,88,0,0),(118,89,0,0),(119,90,0,0),(120,91,0,0),(121,92,1,0),(122,93,1,0),(123,93,1,0),(124,94,0,0),(125,95,1,0),(126,96,0,0),(127,97,1,0),(128,98,1,0),(129,99,0,0),(130,100,0,0),(131,101,1,0),(132,101,1,0),(133,103,1,0),(134,104,1,0),(135,105,0,0),(136,106,1,0),(137,107,0,0),(138,106,1,0),(139,106,1,0),(140,106,1,0),(141,106,0,0),(142,106,0,0),(143,110,1,0),(144,111,0,0),(145,112,1,0),(146,113,0,0),(147,114,0,0),(148,114,0,0),(149,115,0,0),(150,116,1,0),(151,116,1,0),(152,117,1,0),(153,117,1,0),(154,117,1,0),(155,118,1,0),(156,118,1,0),(157,118,1,0),(158,119,0,0),(159,120,0,0),(160,121,1,0),(161,122,0,0),(162,123,0,0),(163,124,1,0),(164,125,1,0),(165,126,1,0),(166,129,1,0),(167,130,0,0),(168,131,0,0),(169,132,1,0),(170,133,1,0),(171,135,0,0),(172,136,0,0),(173,137,0,0),(174,139,1,0),(175,140,0,0);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PermissionStrings`
--

LOCK TABLES `PermissionStrings` WRITE;
/*!40000 ALTER TABLE `PermissionStrings` DISABLE KEYS */;
INSERT INTO `PermissionStrings` VALUES (13,'android.permission.ACCESS_CACHE_FILESYSTEM'),(9,'android.permission.ACCESS_NETWORK_STATE'),(11,'android.permission.ACCESS_WIFI_STATE'),(15,'android.permission.DELETE_CACHE_FILES'),(4,'android.permission.GET_TASKS'),(5,'android.permission.INTERNET'),(14,'android.permission.READ_LOGS'),(1,'android.permission.READ_PHONE_STATE'),(8,'android.permission.RECEIVE_BOOT_COMPLETED'),(12,'android.permission.SET_WALLPAPER'),(3,'android.permission.SYSTEM_ALERT_WINDOW'),(7,'android.permission.VIBRATE'),(6,'android.permission.WRITE_EXTERNAL_STORAGE'),(2,'com.android.launcher.permission.INSTALL_SHORTCUT'),(10,'com.android.launcher.permission.UNINSTALL_SHORTCUT'),(16,'com.android.vending.BILLING');
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
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UriData`
--

LOCK TABLES `UriData` WRITE;
/*!40000 ALTER TABLE `UriData` DISABLE KEYS */;
INSERT INTO `UriData` VALUES (1,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(2,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(3,NULL,NULL,'file://',NULL,NULL,NULL),(4,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(5,NULL,NULL,'(.*)',NULL,NULL,NULL),(6,NULL,NULL,'',NULL,NULL,NULL),(7,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(8,NULL,NULL,'http://androida.me',NULL,NULL,NULL),(9,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(10,NULL,NULL,'(.*)',NULL,NULL,NULL),(11,NULL,NULL,'file://',NULL,NULL,NULL),(12,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(13,NULL,NULL,'file://',NULL,NULL,NULL),(14,NULL,NULL,'http://androida.me',NULL,NULL,NULL),(15,NULL,NULL,'file://',NULL,NULL,NULL),(16,NULL,NULL,'(.*)',NULL,NULL,NULL),(17,NULL,NULL,'(.*)',NULL,NULL,NULL),(18,NULL,NULL,'',NULL,NULL,NULL),(19,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(20,NULL,NULL,'file://',NULL,NULL,NULL),(21,NULL,NULL,'file://',NULL,NULL,NULL),(22,NULL,NULL,'(.*)',NULL,NULL,NULL),(23,NULL,NULL,'package:NULL-CONSTANT',NULL,NULL,NULL),(24,NULL,NULL,'content://contacts/contact_methods/email',NULL,NULL,NULL),(25,NULL,NULL,'file://',NULL,NULL,NULL),(26,NULL,NULL,'market://details?id=com.roidgame.sketchmet',NULL,NULL,NULL),(27,NULL,NULL,'(.*)',NULL,NULL,NULL),(28,NULL,NULL,'(.*)',NULL,NULL,NULL),(29,NULL,NULL,'(.*)',NULL,NULL,NULL),(30,NULL,NULL,'(.*)',NULL,NULL,NULL),(31,NULL,NULL,'(.*)',NULL,NULL,NULL),(32,NULL,NULL,'(.*)',NULL,NULL,NULL),(33,NULL,NULL,'market://details?id=com.roidgame.SaveBirds',NULL,NULL,NULL),(34,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(35,NULL,NULL,'(.*)',NULL,NULL,NULL),(36,NULL,NULL,'(.*)',NULL,NULL,NULL),(37,NULL,NULL,'(.*)',NULL,NULL,NULL),(38,NULL,NULL,'market://details?id=com.roidgame.cuberunner',NULL,NULL,NULL),(39,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(40,NULL,NULL,'file://(.*)',NULL,NULL,NULL),(41,NULL,NULL,'market://details?id=com.roidgame.unblocklego',NULL,NULL,NULL),(42,NULL,NULL,'(.*)',NULL,NULL,NULL),(43,NULL,NULL,'(.*)',NULL,NULL,NULL),(44,NULL,NULL,'(.*)',NULL,NULL,NULL),(45,NULL,NULL,'market://details?id=com.roidgame.spiderboy1',NULL,NULL,NULL);
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Uris`
--

LOCK TABLES `Uris` WRITE;
/*!40000 ALTER TABLE `Uris` DISABLE KEYS */;
INSERT INTO `Uris` VALUES (1,102,24);
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
INSERT INTO `UsesPermissions` VALUES (1,1,1),(2,1,2),(3,1,3),(4,1,4),(5,1,5),(6,1,6),(7,1,7),(8,2,1),(9,2,2),(10,2,5),(11,2,6),(12,2,8),(13,2,9),(14,2,10),(15,3,1),(16,3,5),(17,4,1),(18,3,6),(19,4,2),(20,3,9),(21,4,5),(22,3,11),(23,4,6),(24,4,8),(25,4,9),(26,4,10),(27,4,12),(28,4,13),(29,4,14),(30,4,15),(31,5,1),(32,5,4),(33,5,5),(34,5,6),(35,5,9),(36,5,11),(37,6,16),(38,6,1),(39,6,5),(40,6,6),(41,6,9),(42,6,11),(43,7,1),(44,7,2),(45,7,3),(46,7,4),(47,7,5),(48,7,6),(49,7,7),(50,7,9);
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

-- Dump completed on 2015-10-09  0:39:37
