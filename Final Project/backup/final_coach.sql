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
-- Table structure for table `coach`
--

DROP TABLE IF EXISTS `coach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coach` (
  `coachid` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `nationalityID` int(11) NOT NULL,
  `age` int(11) NOT NULL,
  `clubid` int(11) DEFAULT NULL,
  `JoinClubDate` date DEFAULT NULL,
  PRIMARY KEY (`coachid`),
  UNIQUE KEY `coachid_UNIQUE` (`coachid`),
  KEY `ClubID_FK_idx` (`clubid`),
  KEY `CoachNationality_FK_idx` (`nationalityID`),
  CONSTRAINT `CoachClub_FK` FOREIGN KEY (`clubid`) REFERENCES `footballclub` (`Clubid`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `CoachNationality_FK` FOREIGN KEY (`nationalityID`) REFERENCES `nationality` (`nationalityID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coach`
--

LOCK TABLES `coach` WRITE;
/*!40000 ALTER TABLE `coach` DISABLE KEYS */;
INSERT INTO `coach` VALUES (1,'Arsène','Wenger',2,68,1,'1996-10-01'),(3,'Eddie','Howe',1,40,2,'2012-10-11'),(4,'Chris','Hughton',3,58,3,'2014-12-31'),(5,'Sean','Dyche',1,46,4,'2012-10-31'),(6,'Antonio','Conte',4,48,5,'2016-07-01'),(7,'Roy','Hodgson',1,70,6,'2017-09-12'),(8,'Sam','Allardyce',1,63,7,'2017-11-30'),(9,'David','Wagner',6,46,8,'2015-11-09'),(10,'Claude','Puel',2,56,9,'2017-10-25'),(11,'Jürgen','Klopp',6,50,10,'2015-10-08'),(12,'Josep','Guardiola',7,46,11,'2016-07-01'),(13,'José','Mourinho',8,54,12,'2016-05-27'),(14,'Rafael','Benítez',7,57,13,'2016-03-11'),(15,'Mauricio','Pellegrino',9,46,14,'2017-06-23'),(16,'Mark','Hughes',10,54,15,'2013-05-30'),(17,'Paul','Clement',1,45,16,'2017-01-03'),(18,'Mauricio','Pochettino',9,45,17,'2014-05-27'),(19,'Marco','Silva',8,40,18,'2017-05-28'),(20,'Alan','Pardew',1,56,19,'2017-11-29'),(21,'David','Moyes',11,54,20,'2017-11-07'),(22,'Craig','Shakespeare',1,54,NULL,NULL),(23,'Ronald','Koeman',5,54,NULL,NULL),(25,'David','Unsworth',1,44,NULL,NULL);
/*!40000 ALTER TABLE `coach` ENABLE KEYS */;
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
