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
-- Table structure for table `premierleaguestandings`
--

DROP TABLE IF EXISTS `premierleaguestandings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `premierleaguestandings` (
  `ClubID` int(11) NOT NULL,
  `MatchPlays` int(10) unsigned NOT NULL DEFAULT '0',
  `Wins` int(10) unsigned NOT NULL DEFAULT '0',
  `Draws` int(10) unsigned NOT NULL DEFAULT '0',
  `Loses` int(10) unsigned NOT NULL DEFAULT '0',
  `GoalFor` int(10) unsigned NOT NULL DEFAULT '0',
  `GoalAgainst` int(10) unsigned NOT NULL DEFAULT '0',
  `GoalDifference` int(11) NOT NULL DEFAULT '0',
  `Points` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ClubID`),
  CONSTRAINT `StandingsClubID_FK` FOREIGN KEY (`ClubID`) REFERENCES `footballclub` (`Clubid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `premierleaguestandings`
--

LOCK TABLES `premierleaguestandings` WRITE;
/*!40000 ALTER TABLE `premierleaguestandings` DISABLE KEYS */;
INSERT INTO `premierleaguestandings` VALUES (1,16,9,2,5,30,20,10,29),(2,16,4,4,8,15,19,-4,16),(3,16,4,5,7,14,21,-7,17),(4,16,8,4,4,15,12,3,28),(5,16,10,2,4,28,13,15,32),(6,16,2,5,9,10,27,-17,11),(7,15,5,3,7,19,28,-9,18),(8,16,5,3,8,11,26,-15,18),(9,16,6,5,5,23,22,1,23),(10,15,8,5,2,33,19,14,29),(11,16,15,1,0,47,10,37,46),(12,16,11,2,3,35,10,25,35),(13,16,4,3,9,16,25,-9,15),(14,16,4,6,6,16,19,-3,18),(15,16,4,4,8,19,35,-16,16),(16,16,3,3,10,9,18,-9,12),(17,16,8,4,4,28,14,14,28),(18,16,6,4,6,25,27,-2,22),(19,16,2,7,7,12,22,-10,13),(20,16,3,4,9,14,32,-18,13);
/*!40000 ALTER TABLE `premierleaguestandings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  5:39:37
