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
-- Table structure for table `in_transfers`
--

DROP TABLE IF EXISTS `in_transfers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `in_transfers` (
  `In_TransferID` int(11) NOT NULL AUTO_INCREMENT,
  `PlayerID` int(11) NOT NULL,
  `ClubID` int(11) NOT NULL,
  `TransferDate` date NOT NULL,
  `TransferAmount` double DEFAULT NULL,
  `Currency` varchar(45) DEFAULT NULL,
  `Description` enum('Free','Loan','Undisclosed','Released') DEFAULT NULL,
  PRIMARY KEY (`In_TransferID`),
  KEY `PlayerID_FK_idx` (`PlayerID`),
  KEY `ClubID_FK_idx` (`ClubID`),
  CONSTRAINT `InTransClubID_FK` FOREIGN KEY (`ClubID`) REFERENCES `footballclub` (`Clubid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `InTransPlayerID_FK` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `in_transfers`
--

LOCK TABLES `in_transfers` WRITE;
/*!40000 ALTER TABLE `in_transfers` DISABLE KEYS */;
INSERT INTO `in_transfers` VALUES (2,801,1,'2017-12-11',80000000,'Euro','Released'),(4,802,1,'2017-12-10',NULL,NULL,'Undisclosed'),(5,806,11,'2017-05-06',3000000,'Euro','Released'),(6,806,11,'2017-12-13',2000000,'Euro','Released');
/*!40000 ALTER TABLE `in_transfers` ENABLE KEYS */;
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
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER players_intransferto_club 
AFTER INSERT ON in_transfers 
FOR EACH ROW
BEGIN
	set @p = new.PlayerID;
    set @c = new.ClubID;
    update players
    set players.BelongtoClubID = @c
    where (players.PlayerID = @p) and (players.BelongtoClubID is null);
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

-- Dump completed on 2017-12-13  5:39:38
