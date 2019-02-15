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
-- Table structure for table `nationality`
--

DROP TABLE IF EXISTS `nationality`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nationality` (
  `nationalityID` int(11) NOT NULL AUTO_INCREMENT,
  `nationality` varchar(45) NOT NULL,
  PRIMARY KEY (`nationalityID`),
  UNIQUE KEY `nationalityID_UNIQUE` (`nationalityID`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nationality`
--

LOCK TABLES `nationality` WRITE;
/*!40000 ALTER TABLE `nationality` DISABLE KEYS */;
INSERT INTO `nationality` VALUES (1,'England'),(2,'France'),(3,'Ireland'),(4,'Italy'),(5,'Netherlands'),(6,'Germany'),(7,'Spain'),(8,'Portugal'),(9,'Argentina'),(10,'Wales'),(11,'Scotland'),(12,'Croatia'),(13,'Bosnia And Herzegovina'),(14,'Colombia'),(15,'Czech Republic'),(16,'Nigeria'),(17,'Switzerland'),(18,'Egypt'),(19,'Chile'),(20,'Romania'),(21,'Poland'),(22,'Democratic Republic of the Congo'),(23,'Australia'),(24,'Norway'),(25,'UnitedStates'),(26,'Cameroon'),(27,'Israel'),(28,'Finland'),(29,'Austria'),(30,'New Zealand'),(31,'Belgium'),(32,'Iceland'),(33,'Bermuda'),(34,'Denmark'),(35,'Canada'),(36,'Brazil'),(37,'Serbia'),(38,'Ivory Coast'),(39,'South Korea'),(40,'Ghana'),(41,'Senegal'),(42,'Mali'),(43,'Curaçao'),(44,'Morocco'),(45,'Benin'),(46,'Slovenia'),(47,'Jamaica'),(48,'Algeria'),(49,'Japan'),(50,'Tunisia'),(51,'Estonia'),(52,'Hungary'),(53,'Ukraine'),(54,'Sweden'),(55,'Armenia'),(56,'Ecuador'),(57,'Northern Ireland'),(58,'Gabon'),(59,'Kenya'),(60,'Uruguay'),(61,'Greece'),(62,'Peru'),(63,'Venezuela'),(64,'Mexico'),(65,'Montenegro'),(66,'China');
/*!40000 ALTER TABLE `nationality` ENABLE KEYS */;
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
