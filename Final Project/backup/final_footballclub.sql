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
-- Table structure for table `footballclub`
--

DROP TABLE IF EXISTS `footballclub`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `footballclub` (
  `Clubid` int(11) NOT NULL AUTO_INCREMENT,
  `ClubName` varchar(45) NOT NULL,
  PRIMARY KEY (`Clubid`),
  UNIQUE KEY `clubid_UNIQUE` (`Clubid`),
  UNIQUE KEY `name_UNIQUE` (`ClubName`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footballclub`
--

LOCK TABLES `footballclub` WRITE;
/*!40000 ALTER TABLE `footballclub` DISABLE KEYS */;
INSERT INTO `footballclub` VALUES (1,'Arsenal'),(2,'Bournemouth'),(3,'Brighton'),(4,'Burnley'),(5,'Chelsea'),(6,'Crystal Palace'),(7,'Everton'),(8,'Huddersfield Town'),(9,'Leicester City'),(10,'Liverpool'),(11,'Manchester City'),(12,'Manchester United'),(13,'Newcastle United'),(14,'Southampton'),(15,'Stoke City'),(16,'Swansea City'),(17,'Tottenham Hotspur'),(18,'Watford'),(19,'West Bromwich Albion'),(20,'West Ham United');
/*!40000 ALTER TABLE `footballclub` ENABLE KEYS */;
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
