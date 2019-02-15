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
-- Table structure for table `matches`
--

DROP TABLE IF EXISTS `matches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matches` (
  `MatchID` int(11) NOT NULL AUTO_INCREMENT,
  `HomeTeamID` int(11) NOT NULL,
  `AwayTeamID` int(11) NOT NULL,
  `OpenDate` date NOT NULL,
  `RefereeID` int(11) NOT NULL,
  `HomeTeamScore` int(11) DEFAULT '0',
  `AwayTeamScore` int(11) DEFAULT '0',
  PRIMARY KEY (`MatchID`),
  KEY `Referee_FK_idx` (`RefereeID`),
  KEY `MatchHomeTeam_FK` (`HomeTeamID`),
  KEY `MatchAwayTeam_FK_idx` (`AwayTeamID`),
  CONSTRAINT `MatchAwayTeam_FK` FOREIGN KEY (`AwayTeamID`) REFERENCES `footballclub` (`Clubid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MatchHomeTeam_FK` FOREIGN KEY (`HomeTeamID`) REFERENCES `footballclub` (`Clubid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `MatchReferee_FK` FOREIGN KEY (`RefereeID`) REFERENCES `referee` (`RefereeID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matches`
--

LOCK TABLES `matches` WRITE;
/*!40000 ALTER TABLE `matches` DISABLE KEYS */;
INSERT INTO `matches` VALUES (1,20,5,'2017-12-09',1,1,0),(2,17,15,'2017-12-09',5,5,1),(3,16,19,'2017-12-09',1,1,0),(4,8,3,'2017-12-09',15,2,0),(5,6,2,'2017-12-09',18,2,2),(6,4,18,'2017-12-09',12,1,0),(7,13,9,'2017-12-09',18,2,3),(8,2,14,'2017-12-03',14,1,1),(9,11,20,'2017-12-03',15,2,1),(10,5,13,'2017-12-02',15,3,1),(11,19,6,'2017-12-02',13,0,0),(12,18,17,'2017-12-02',18,1,1),(13,15,16,'2017-12-02',6,2,1),(14,9,4,'2017-12-02',4,1,0),(15,7,8,'2017-12-02',10,2,0),(16,3,10,'2017-12-02',17,1,5),(17,1,12,'2017-12-02',2,1,3),(18,5,16,'2017-11-29',14,1,0),(19,2,4,'2017-11-29',2,1,2),(20,1,8,'2017-11-29',17,5,0),(21,15,10,'2017-11-29',15,0,3),(22,11,14,'2017-11-29',16,2,1),(23,7,20,'2017-11-29',7,4,0),(24,9,17,'2017-11-28',13,2,1),(25,3,6,'2017-11-28',17,0,0),(26,19,13,'2017-11-28',3,2,2),(27,18,12,'2017-11-28',2,2,4),(28,14,7,'2017-11-26',14,4,1),(29,4,1,'2017-11-26',15,0,1),(30,8,11,'2017-11-26',9,1,2),(31,17,19,'2017-11-25',2,1,1),(32,16,2,'2017-11-25',8,0,0),(33,13,18,'2017-11-25',18,0,3),(34,12,3,'2017-11-25',13,1,0),(35,6,15,'2017-11-25',14,2,1),(36,10,5,'2017-11-25',16,1,1),(37,20,9,'2017-11-24',6,1,1),(38,3,15,'2017-11-20',8,2,2),(39,18,20,'2017-11-19',11,2,0),(40,12,13,'2017-11-18',12,4,1),(41,1,17,'2017-11-18',4,2,0),(42,19,5,'2017-11-18',11,0,4),(43,10,14,'2017-11-18',15,3,0),(44,9,11,'2017-11-18',18,0,2),(45,6,7,'2017-11-18',1,2,2),(46,4,16,'2017-11-18',14,2,0),(47,2,8,'2017-11-18',8,4,0),(48,17,6,'2017-11-05',3,1,0),(49,11,1,'2017-11-05',11,3,1),(50,7,18,'2017-11-05',9,3,2),(51,5,12,'2017-11-05',10,1,0),(52,15,9,'2017-11-04',12,2,2),(53,16,3,'2017-11-04',10,0,1),(54,14,4,'2017-11-04',9,0,1),(55,13,2,'2017-11-04',5,0,1),(56,8,19,'2017-11-04',16,1,0),(57,20,10,'2017-11-04',3,1,4),(58,4,13,'2017-10-30',3,1,0),(59,3,14,'2017-10-29',6,1,1),(60,9,7,'2017-10-29',14,2,0),(61,12,17,'2017-10-28',18,1,0),(62,19,11,'2017-10-28',5,2,3),(63,18,15,'2017-10-28',14,0,1),(64,10,8,'2017-10-28',1,3,0),(65,6,20,'2017-10-28',3,2,2),(66,1,16,'2017-10-28',15,2,1),(67,2,5,'2017-10-28',2,0,1),(68,7,1,'2017-10-22',12,2,5),(69,17,10,'2017-10-22',11,4,1),(70,5,18,'2017-10-21',12,4,2),(71,16,9,'2017-10-21',7,1,2),(72,15,2,'2017-10-21',7,1,2),(73,13,6,'2017-10-21',18,1,0),(74,11,4,'2017-10-21',15,3,0),(75,8,12,'2017-10-21',4,2,1),(76,14,19,'2017-10-21',18,1,0),(77,20,3,'2017-10-20',4,0,3),(78,9,19,'2017-10-16',17,1,1),(79,3,7,'2017-10-15',12,1,1),(80,14,13,'2017-10-15',12,2,2),(81,10,12,'2017-10-14',16,0,0),(82,17,2,'2017-10-14',13,1,0),(83,16,8,'2017-10-14',15,2,0),(84,11,15,'2017-10-14',1,7,2),(85,6,5,'2017-10-14',17,2,1),(86,4,20,'2017-10-14',9,1,1),(87,18,1,'2017-10-14',6,2,1),(88,1,3,'2017-10-01',5,2,0),(89,7,4,'2017-10-01',16,0,1),(90,13,10,'2017-10-01',1,1,1),(91,8,17,'2017-09-30',15,0,4),(92,20,16,'2017-09-30',18,1,0),(93,19,18,'2017-09-30',8,2,2),(94,15,14,'2017-09-30',3,2,1),(95,12,6,'2017-09-30',10,4,0),(96,2,9,'2017-09-30',4,0,0),(97,5,11,'2017-09-30',3,0,1),(98,1,19,'2017-09-25',13,2,0),(99,3,13,'2017-09-24',10,1,0),(100,20,17,'2017-09-23',12,2,3),(101,16,18,'2017-09-23',4,1,2),(102,15,5,'2017-09-23',12,0,4),(103,14,12,'2017-09-23',2,0,1),(104,11,6,'2017-09-23',12,5,0),(105,7,2,'2017-09-23',16,2,1),(106,4,8,'2017-09-23',13,0,0),(107,9,10,'2017-09-23',13,2,3),(108,5,1,'2017-09-17',17,0,0),(109,12,7,'2017-09-17',13,4,0),(110,6,14,'2017-09-16',16,0,1),(111,19,20,'2017-09-16',1,0,0),(112,18,11,'2017-09-16',18,0,6),(113,13,15,'2017-09-16',18,2,1),(114,10,4,'2017-09-16',15,1,1),(115,8,9,'2017-09-16',17,1,1),(116,17,16,'2017-09-16',2,0,0),(117,2,3,'2017-09-15',9,2,1),(118,20,8,'2017-09-11',7,2,0),(119,4,6,'2017-09-10',4,1,0),(120,16,13,'2017-09-10',12,0,1),(121,11,10,'2017-09-09',5,5,0),(122,14,18,'2017-09-09',11,0,2),(123,9,5,'2017-09-09',6,1,2),(124,7,17,'2017-09-09',15,0,3),(125,3,19,'2017-09-09',5,3,1),(126,1,2,'2017-09-09',14,3,0),(127,15,12,'2017-09-09',9,2,2),(128,19,15,'2017-08-27',13,1,1),(129,5,7,'2017-08-27',8,2,0),(130,17,4,'2017-08-27',7,1,1),(131,10,1,'2017-08-27',16,4,0),(132,2,11,'2017-08-26',9,1,2),(133,18,3,'2017-08-26',9,0,0),(134,13,20,'2017-08-26',5,3,0),(135,8,14,'2017-08-26',4,0,0),(136,6,16,'2017-08-26',6,0,2),(137,12,9,'2017-08-26',3,2,0),(138,11,7,'2017-08-21',7,1,1),(139,8,13,'2017-08-20',14,1,0),(140,17,5,'2017-08-20',1,1,2),(141,16,12,'2017-08-19',14,0,4),(142,14,20,'2017-08-19',12,3,2),(143,10,6,'2017-08-19',3,1,0),(144,9,3,'2017-08-19',10,2,0),(145,4,19,'2017-08-19',7,0,1),(146,2,18,'2017-08-19',6,0,2),(147,15,1,'2017-08-19',16,1,0),(148,13,17,'2017-08-13',2,0,2),(149,12,20,'2017-08-13',2,4,0),(150,18,10,'2017-08-12',12,3,3),(151,19,2,'2017-08-12',12,1,0),(152,14,16,'2017-08-12',16,0,0),(153,7,15,'2017-08-12',4,1,0),(154,6,8,'2017-08-12',5,0,3),(155,5,4,'2017-08-12',8,2,3),(156,3,11,'2017-08-12',7,0,2),(157,1,9,'2017-08-11',15,4,3),(158,14,1,'2017-12-10',12,1,1),(159,11,12,'2017-12-11',1,1,0);
/*!40000 ALTER TABLE `matches` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger StandingRenew_aftermatchinsert
	AFTER INSERT ON matches 
    FOR EACH ROW
BEGIN
	set @home = NEW.HometeamID;
    set @away = NEW.AwayteamID;
	update final.premierleaguestandings
    set MatchPlays = MatchPlays + 1,
		Draws = Draws + 1,
        Points = Points + 1        
		where (@home = premierleaguestandings.ClubID) or (@away = premierleaguestandings.ClubID);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 trigger standing_matchevent_trigger
after update on matches
for each row
begin
	set @hn = new.HomeTeamScore;
    set @ho = old.HomeTeamScore;
    set @an = new.AwayTeamScore;
    set @ao = old.AwayTeamScore;
    set @homet = old.HomeTeamID;
    set @awayt = old.AwayTeamID;
    
    #ht scores
    update premierleaguestandings
    set GoalFor = GoalFor + 1,
		GoalDifference = GoalDifference + 1
    where (@hn > @ho) and (ClubID = @homet);
    
	update premierleaguestandings
    set GoalAgainst = GoalAgainst + 1,
		GoalDifference = GoalDifference - 1
    where (@hn > @ho) and (ClubID = @awayt);
    
    #at scores
	update premierleaguestandings
    set GoalFor = GoalFor + 1,
		GoalDifference = GoalDifference + 1
    where (@an > @ao) and (ClubID = @awayt);
    
    update premierleaguestandings
    set GoalAgainst = GoalAgainst + 1,
		GoalDifference = GoalDifference - 1
    where (@an > @ao) and (ClubID = @homet);

	#ht scored, tied at
	update premierleaguestandings
    set Loses = Loses - 1,
		Draws = Draws + 1,
        Points = Points + 1
    where (@hn > @ho) and (@hn = @an) and (ClubID = @homet);
    
	update premierleaguestandings
    set Wins = Wins - 1,
		Draws = Draws + 1,
        Points = Points - 2
    where (@hn > @ho) and (@hn = @an) and (ClubID = @awayt);
    
    #ht scored, surpassed at
	update premierleaguestandings
    set Wins = Wins + 1,
		Draws = Draws - 1,
        Points = Points + 2
    where (@hn > @ho) and (@ho = @ao) and (ClubID = @homet);
    
	update premierleaguestandings
    set Loses = Loses + 1,
		Draws = Draws - 1,
        Points = Points - 1
    where (@hn > @ho) and (@ho = @ao) and (ClubID = @awayt);
    
    #at scored, tied ht
	update premierleaguestandings
    set Wins = Wins - 1,
		Draws = Draws + 1,
        Points = Points - 2
    where (@hn = @ho) and (@hn = @an) and (ClubID = @homet);
    
	update premierleaguestandings
    set Loses = Loses - 1,
		Draws = Draws + 1,
        Points = Points + 1
    where (@hn = @ho) and (@hn = @an) and (ClubID = @awayt);
    
    #at scored, surpassed ht
	update premierleaguestandings
    set Loses = Loses + 1,
		Draws = Draws - 1,
        Points = Points - 1
    where (@hn = @ho) and (@ho = @ao) and (ClubID = @homet);
	
	update premierleaguestandings
    set Wins = Wins + 1,
		Draws = Draws - 1,
        Points = Points + 2
    where (@hn = @ho) and (@ho = @ao) and (ClubID = @awayt);
    
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-12-13  5:39:37
