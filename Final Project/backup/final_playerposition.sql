-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: final
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `playerposition`
--

DROP TABLE IF EXISTS `playerposition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playerposition` (
  `PlayerID` int(11) NOT NULL,
  `PositionID` int(11) NOT NULL,
  KEY `PlayerID_FK_idx` (`PlayerID`),
  KEY `PlayerPositionID_FK_idx` (`PositionID`),
  CONSTRAINT `PlayerPositionID_FK` FOREIGN KEY (`PositionID`) REFERENCES `positions` (`positionID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `PositionPlayerID_FK` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerposition`
--

LOCK TABLES `playerposition` WRITE;
/*!40000 ALTER TABLE `playerposition` DISABLE KEYS */;
INSERT INTO `playerposition` VALUES (227,2),(228,2),(229,2),(229,3),(230,4),(231,3),(231,4),(232,4),(232,3),(233,3),(234,3),(235,4),(235,3),(236,1),(237,4),(238,2),(238,3),(239,4),(240,2),(241,3),(241,4),(242,2),(254,2),(255,3),(255,4),(256,4),(257,2),(258,3),(258,4),(259,3),(259,4),(265,2),(266,4),(267,1),(268,3),(269,3),(270,1),(271,2),(272,2),(272,3),(273,3),(274,2),(275,3),(276,3),(277,3),(278,4),(278,3),(279,2),(280,1),(281,4),(282,2),(282,3),(283,2),(283,3),(284,3),(285,4),(285,3),(286,4),(287,3),(288,3),(289,3),(290,3),(291,2),(292,1),(293,2),(294,4),(295,1),(296,3),(297,1),(298,2),(299,2),(300,2),(301,2),(302,3),(302,4),(303,3),(304,3),(305,4),(306,4),(306,3),(307,3),(308,1),(309,3),(310,3),(311,3),(312,4),(313,2),(314,4),(315,3),(316,2),(317,2),(318,2),(318,3),(319,3),(320,1),(321,2),(322,4),(322,3),(323,1),(324,2),(325,2),(326,3),(327,2),(328,2),(329,3),(330,4),(331,4),(331,3),(332,4),(333,3),(333,4),(334,3),(334,4),(335,3),(336,3),(337,3),(338,4),(339,3),(340,4),(341,1),(342,2),(343,2),(343,3),(344,2),(345,1),(346,1),(347,3),(347,2),(348,1),(349,2),(350,2),(350,3),(351,3),(352,3),(353,3),(354,4),(354,3),(355,3),(356,3),(357,1),(358,3),(359,3),(360,3),(361,3),(362,2),(363,3),(364,4),(364,3),(365,2),(366,2),(367,2),(367,3),(368,2),(369,2),(370,3),(371,3),(372,2),(373,1),(374,2),(375,2),(375,3),(376,3),(376,2),(377,2),(378,2),(379,3),(380,3),(381,3),(381,4),(382,3),(383,2),(384,1),(385,3),(385,2),(386,3),(386,4),(387,4),(388,3),(389,4),(389,3),(390,4),(391,3),(392,2),(393,2),(393,3),(394,3),(395,3),(396,2),(397,3),(398,1),(399,4),(399,3),(400,2),(401,3),(402,3),(402,2),(403,1),(404,3),(404,4),(405,2),(406,2),(407,2),(408,2),(408,3),(409,4),(410,3),(411,4),(412,4),(413,4),(414,3),(414,2),(415,2),(416,3),(416,2),(417,3),(418,3),(419,4),(420,3),(421,3),(422,1),(423,2),(424,2),(425,3),(425,4),(426,4),(427,4),(428,2),(429,4),(429,3),(430,1),(431,2),(432,3),(433,1),(434,2),(435,2),(436,3),(437,3),(438,3),(439,4),(440,3),(441,3),(442,1),(443,2),(444,2),(445,3),(446,3),(447,4),(448,3),(448,2),(449,4),(449,3),(450,4),(451,2),(451,3),(452,2),(453,2),(454,1),(455,2),(456,2),(457,3),(458,1),(459,2),(460,2),(461,2),(462,2),(463,3),(464,4),(464,3),(465,4),(466,3),(466,4),(467,3),(468,1),(469,4),(469,3),(470,2),(470,3),(471,2),(472,1),(473,3),(473,4),(474,4),(475,4),(475,3),(476,3),(476,2),(477,3),(477,4),(478,4),(479,3),(480,3),(481,2),(482,2),(483,2),(484,3),(485,1),(486,2),(487,3),(488,2),(489,3),(490,4),(491,3),(492,4),(493,2),(494,3),(495,4),(495,3),(496,3),(497,2),(498,2),(499,4),(500,3),(501,3),(502,1),(503,3),(504,2),(505,4),(505,3),(506,4),(507,2),(508,1),(509,2),(510,3),(511,1),(512,3),(512,4),(513,4),(513,3),(514,3),(515,2),(516,1),(517,2),(518,2),(519,2),(520,2),(521,3),(522,3),(522,4),(523,4),(523,3),(524,2),(525,3),(525,2),(526,3),(527,3),(528,3),(529,3),(530,2),(531,2),(531,3),(532,3),(533,2),(534,1),(535,4),(536,3),(537,3),(538,3),(539,3),(540,1),(541,2),(542,2),(543,2),(544,2),(545,3),(546,3),(547,4),(548,4),(549,4),(549,3),(550,2),(551,3),(552,3),(552,4),(553,2),(554,3),(555,4),(555,3),(556,1),(557,3),(558,3),(558,2),(559,2),(560,2),(561,3),(562,3),(563,2),(564,2),(565,3),(566,1),(567,1),(568,2),(569,2),(570,3),(571,2),(572,4),(572,3),(573,3),(573,4),(574,4),(575,3),(575,2),(576,3),(577,3),(578,3),(578,4),(579,4),(580,2),(580,3),(581,2),(582,2),(583,2),(584,3),(585,3),(586,2),(586,3),(587,1),(588,2),(589,3),(590,1),(591,2),(591,3),(592,4),(593,2),(594,2),(594,3),(595,2),(596,2),(597,4),(597,3),(598,3),(599,4),(600,3),(601,1),(602,3),(602,2),(603,3),(603,4),(604,2),(605,3),(605,4),(606,3),(607,4),(608,2),(609,3),(610,3),(611,2),(611,3),(612,2),(613,1),(614,2),(615,2),(616,2),(617,3),(618,2),(619,2),(620,3),(620,2),(621,3),(622,2),(622,3),(623,1),(624,1),(625,2),(626,3),(627,2),(628,2),(629,3),(630,2),(631,4),(632,4),(633,4),(634,2),(635,3),(636,2),(637,3),(638,2),(639,4),(640,2),(641,3),(641,2),(642,3),(643,4),(644,4),(645,1),(646,3),(647,3),(648,1),(649,2),(650,1),(651,4),(651,3),(652,3),(652,4),(653,2),(653,3),(654,2),(655,3),(656,3),(656,4),(657,4),(658,3),(659,3),(660,1),(661,3),(662,3),(663,2),(663,3),(664,3),(664,4),(665,4),(666,2),(667,1),(668,2),(669,2),(670,2),(671,3),(672,3),(673,3),(674,4),(699,1),(700,2),(701,2),(702,2),(703,2),(704,2),(705,4),(706,4),(707,3),(708,3),(709,1),(710,3),(711,3),(712,3),(713,4),(714,3),(715,3),(716,2),(717,1),(718,3),(718,2),(719,2),(720,3),(720,2),(721,2),(722,2),(723,1),(724,2),(724,3),(725,2),(726,2),(726,3),(727,2),(728,2),(729,3),(730,4),(731,4),(732,4),(732,3),(733,2),(734,3),(735,2),(736,3),(737,4),(738,4),(738,3),(739,3),(739,4),(740,2),(741,2),(742,3),(742,4),(743,2),(744,2),(745,2),(745,3),(746,3),(747,3),(747,4),(748,1),(749,2),(750,4),(750,3),(751,1),(752,3),(753,1),(754,2),(755,2),(756,4),(757,3),(758,2),(759,3),(760,3),(761,4),(761,3),(762,3),(762,2),(763,3),(764,1),(765,3),(765,2),(766,3),(766,2),(767,3),(768,4),(769,3),(769,2),(770,3),(771,2),(772,2),(773,2),(773,3),(774,3),(774,4),(775,1),(776,2),(777,2),(778,2),(778,3),(779,2),(780,4),(781,3),(782,4),(783,3),(784,3),(785,4),(786,3),(786,4),(787,4),(788,2),(789,4),(789,3),(790,2),(791,2),(792,3),(793,1),(794,2),(794,3),(795,3),(796,3),(797,3),(797,2),(798,3),(799,2);
/*!40000 ALTER TABLE `playerposition` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  5:39:38
