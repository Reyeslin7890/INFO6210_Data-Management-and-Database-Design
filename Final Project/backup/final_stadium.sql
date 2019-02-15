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
-- Table structure for table `stadium`
--

DROP TABLE IF EXISTS `stadium`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `stadium` (
  `StadiumID` int(11) NOT NULL AUTO_INCREMENT,
  `StadiumName` varchar(45) NOT NULL,
  `Capacity` int(10) unsigned NOT NULL,
  `LocationCity` varchar(45) NOT NULL,
  `ClubID` int(11) DEFAULT NULL,
  PRIMARY KEY (`StadiumID`),
  UNIQUE KEY `StadiumID_UNIQUE` (`StadiumID`),
  KEY `ClubID_FK_idx` (`ClubID`),
  CONSTRAINT `StadiumClubID_FK` FOREIGN KEY (`ClubID`) REFERENCES `footballclub` (`Clubid`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stadium`
--

LOCK TABLES `stadium` WRITE;
/*!40000 ALTER TABLE `stadium` DISABLE KEYS */;
INSERT INTO `stadium` VALUES (1,'Emirates Stadium',60432,'London',1),(2,'Vitality Stadium',11360,'Bournemouth',2),(3,'American Express Community Stadium',30750,'Falmer',3),(4,'Turf Moor',22546,'Burnley',4),(5,'Stamford Bridge',41631,'London',5),(6,'Selhurst Park',26309,'London',6),(7,'Goodison Park',39571,'Liverpool',7),(8,'John Smith\'s Stadium',24500,'Huddersfield',8),(9,'King Power Stadium',32500,'Leicester',9),(10,'Anfield',54074,'Liverpool',10),(11,'Etihad Stadium',55097,'Manchester',11),(12,'Old Trafford',75643,'Manchester',12),(13,'St James\' Park',52405,'Newcastle upon Tyne',13),(14,'St Mary\'s Stadium',32689,'Southampton',14),(15,'bet365 Stadium',27740,'Stoke-on-Trent',15),(16,'Liberty Stadium',20937,'Swansea',16),(17,'Wembley Stadium',90000,'London',17),(18,'Vicarage Road',21977,'Watford',18),(19,'The Hawthorns',26445,'West Bromwich',19),(20,'London Stadium',60000,'London',20),(21,'Highbury',38419,'London',NULL),(22,'White Hart Lane',36284,'London',NULL);
/*!40000 ALTER TABLE `stadium` ENABLE KEYS */;
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
