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
-- Table structure for table `appearance`
--

DROP TABLE IF EXISTS `appearance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `appearance` (
  `MatchID` int(11) NOT NULL,
  `PlayerID` int(11) NOT NULL,
  PRIMARY KEY (`MatchID`,`PlayerID`),
  KEY `AppearancePlayerID_FK_idx` (`PlayerID`),
  CONSTRAINT `AppearanceMatchID_FK` FOREIGN KEY (`MatchID`) REFERENCES `matches` (`MatchID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `AppearancePlayerID_FK` FOREIGN KEY (`PlayerID`) REFERENCES `players` (`PlayerID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appearance`
--

LOCK TABLES `appearance` WRITE;
/*!40000 ALTER TABLE `appearance` DISABLE KEYS */;
INSERT INTO `appearance` VALUES (20,227),(87,227),(131,227),(157,227),(66,228),(68,228),(88,228),(98,228),(147,228),(157,228),(17,229),(20,229),(29,229),(88,229),(126,229),(147,229),(41,230),(49,230),(87,230),(98,230),(147,230),(157,230),(17,231),(41,231),(49,231),(66,231),(68,231),(147,231),(157,231),(17,232),(29,232),(41,232),(66,232),(87,232),(147,232),(157,232),(20,233),(41,233),(87,233),(88,233),(126,233),(147,233),(157,233),(17,234),(20,234),(41,234),(66,234),(88,234),(108,234),(126,234),(20,235),(49,235),(66,235),(68,235),(108,235),(131,235),(157,235),(66,236),(68,236),(88,236),(98,236),(108,236),(20,237),(29,237),(49,237),(88,237),(98,237),(126,237),(131,237),(147,237),(157,237),(87,238),(108,238),(131,238),(157,238),(29,239),(68,239),(108,239),(131,239),(20,240),(29,240),(41,240),(49,240),(98,240),(108,240),(126,240),(147,240),(17,241),(29,241),(41,241),(68,241),(98,241),(108,241),(126,241),(17,242),(20,242),(29,242),(41,242),(49,242),(87,242),(88,242),(126,242),(157,242),(17,254),(20,254),(29,254),(41,254),(49,254),(66,254),(108,254),(126,254),(131,254),(17,255),(20,255),(29,255),(68,255),(87,255),(98,255),(131,255),(147,255),(66,256),(68,256),(87,256),(98,256),(131,256),(17,257),(29,257),(49,257),(66,257),(68,257),(88,257),(98,257),(131,257),(17,258),(41,258),(66,258),(68,258),(87,258),(126,258),(131,258),(66,259),(68,259),(87,259),(88,259),(98,259),(108,259),(126,259),(20,265),(49,265),(87,265),(147,265),(17,266),(29,266),(98,266),(108,266),(126,266),(157,266),(88,267),(108,267),(147,267),(49,268),(41,269),(49,269),(88,269),(131,269),(19,270),(32,270),(67,270),(105,270),(117,270),(132,270),(5,271),(8,271),(72,271),(82,271),(117,271),(126,271),(151,271),(32,272),(47,272),(55,272),(105,272),(117,272),(5,273),(8,273),(19,273),(55,273),(82,273),(105,273),(151,273),(8,274),(19,274),(47,274),(117,274),(126,274),(132,274),(146,274),(32,275),(47,275),(82,275),(96,275),(5,276),(19,276),(55,276),(67,276),(105,276),(117,276),(5,277),(67,277),(82,277),(126,277),(132,277),(151,277),(32,278),(55,278),(105,278),(117,278),(126,278),(132,278),(146,278),(151,278),(5,279),(96,279),(126,279),(146,279),(151,279),(8,280),(19,280),(32,280),(67,280),(72,280),(82,280),(126,280),(146,280),(151,280),(8,281),(47,281),(72,281),(82,281),(5,282),(8,282),(47,282),(72,282),(117,282),(132,282),(146,282),(47,283),(55,283),(96,283),(105,283),(126,283),(132,283),(151,283),(82,284),(126,284),(132,284),(151,284),(32,285),(55,285),(72,285),(82,285),(151,285),(5,286),(32,286),(67,286),(96,286),(132,286),(5,287),(8,287),(19,287),(55,287),(67,287),(72,287),(96,287),(8,288),(19,288),(55,288),(105,288),(126,288),(132,288),(8,289),(32,289),(47,289),(55,289),(67,289),(72,289),(96,289),(105,289),(146,289),(67,290),(72,290),(126,290),(146,290),(32,291),(47,291),(82,291),(105,291),(117,291),(126,291),(132,291),(151,291),(67,292),(72,292),(82,292),(96,292),(146,292),(5,293),(8,293),(19,293),(47,293),(55,293),(67,293),(72,293),(82,293),(96,293),(105,293),(117,293),(132,293),(19,294),(32,294),(72,294),(96,294),(117,294),(146,294),(5,295),(8,295),(19,295),(32,295),(47,295),(55,295),(67,295),(96,295),(105,295),(117,295),(146,295),(5,296),(19,296),(47,296),(96,296),(146,296),(151,296),(16,297),(34,297),(38,297),(59,297),(79,297),(88,297),(117,297),(144,297),(156,297),(25,298),(34,298),(59,298),(77,298),(79,298),(99,298),(156,298),(4,299),(16,299),(25,299),(34,299),(38,299),(53,299),(59,299),(79,299),(88,299),(117,299),(133,299),(156,299),(4,300),(16,300),(79,300),(117,300),(133,300),(4,301),(88,301),(99,301),(125,301),(133,301),(156,301),(4,302),(25,302),(34,302),(59,302),(99,302),(117,302),(133,302),(4,303),(16,303),(25,303),(53,303),(59,303),(77,303),(144,303),(156,303),(16,304),(38,304),(88,304),(99,304),(144,304),(4,305),(38,305),(53,305),(79,305),(88,305),(99,305),(125,305),(144,305),(34,306),(38,306),(79,306),(88,306),(99,306),(125,306),(144,306),(4,307),(25,307),(59,307),(77,307),(156,307),(34,308),(53,308),(79,308),(88,308),(125,308),(144,308),(25,309),(77,309),(79,309),(88,309),(117,309),(16,310),(25,310),(59,310),(117,310),(125,310),(133,310),(4,311),(16,311),(88,311),(125,311),(4,312),(16,312),(25,312),(38,312),(53,312),(99,312),(117,312),(133,312),(34,313),(77,313),(79,313),(125,313),(133,313),(144,313),(156,313),(53,314),(117,314),(133,314),(144,314),(34,315),(38,315),(53,315),(77,315),(99,315),(125,315),(59,316),(77,316),(99,316),(156,316),(4,317),(16,317),(34,317),(59,317),(77,317),(117,317),(144,317),(16,318),(25,318),(34,318),(53,318),(125,318),(133,318),(25,319),(38,319),(53,319),(59,319),(144,319),(156,319),(38,320),(53,320),(77,320),(79,320),(117,320),(125,320),(156,320),(25,321),(34,321),(38,321),(77,321),(88,321),(99,321),(133,321),(144,321),(156,321),(4,322),(16,322),(38,322),(53,322),(59,322),(77,322),(79,322),(88,322),(99,322),(117,322),(125,322),(133,322),(46,323),(58,323),(74,323),(89,323),(106,323),(119,323),(130,323),(145,323),(155,323),(6,324),(14,324),(19,324),(29,324),(46,324),(54,324),(74,324),(114,324),(119,324),(145,324),(6,325),(19,325),(89,325),(106,325),(114,325),(119,325),(145,325),(6,326),(14,326),(46,326),(58,326),(74,326),(86,326),(114,326),(119,326),(130,326),(14,327),(29,327),(46,327),(58,327),(86,327),(114,327),(130,327),(6,328),(46,328),(89,328),(106,328),(119,328),(130,328),(155,328),(6,329),(29,329),(54,329),(74,329),(86,329),(89,329),(119,329),(145,329),(155,329),(19,330),(46,330),(74,330),(86,330),(130,330),(14,331),(46,331),(54,331),(74,331),(106,331),(119,331),(14,332),(19,332),(54,332),(58,332),(89,332),(106,332),(155,332),(14,333),(29,333),(114,333),(130,333),(6,334),(14,334),(19,334),(46,334),(58,334),(86,334),(89,334),(130,334),(145,334),(6,335),(29,335),(58,335),(86,335),(89,335),(106,335),(114,335),(155,335),(6,336),(29,336),(58,336),(89,336),(106,336),(119,336),(145,336),(155,336),(14,337),(54,337),(58,337),(74,337),(86,337),(89,337),(155,337),(6,338),(46,338),(74,338),(89,338),(114,338),(145,338),(155,338),(19,339),(29,339),(54,339),(58,339),(74,339),(106,339),(130,339),(19,340),(54,340),(58,340),(74,340),(86,340),(106,340),(114,340),(145,340),(19,341),(29,341),(114,341),(6,342),(14,342),(29,342),(54,342),(74,342),(86,342),(119,342),(145,342),(155,342),(54,343),(58,343),(114,343),(130,343),(155,343),(29,344),(46,344),(14,345),(19,345),(86,345),(106,345),(119,345),(130,345),(145,345),(14,346),(19,346),(29,346),(54,346),(86,346),(106,346),(119,346),(6,347),(19,347),(46,347),(54,347),(89,347),(114,347),(130,347),(145,347),(155,347),(42,348),(97,348),(129,348),(1,349),(10,349),(85,349),(97,349),(102,349),(129,349),(10,350),(18,350),(42,350),(85,350),(97,350),(123,350),(129,350),(140,350),(155,350),(36,351),(51,351),(85,351),(102,351),(123,351),(140,351),(1,352),(10,352),(36,352),(42,352),(51,352),(70,352),(97,352),(102,352),(108,352),(155,352),(1,353),(10,353),(18,353),(36,353),(67,353),(108,353),(129,353),(155,353),(42,354),(67,354),(70,354),(129,354),(155,354),(10,355),(51,355),(67,355),(70,355),(140,355),(155,355),(1,356),(36,356),(51,356),(67,356),(108,356),(123,356),(129,356),(18,357),(36,357),(51,357),(85,357),(102,357),(108,357),(123,357),(1,358),(18,358),(51,358),(70,358),(85,358),(108,358),(140,358),(155,358),(1,359),(18,359),(36,359),(42,359),(51,359),(70,359),(85,359),(123,359),(129,359),(1,360),(10,360),(51,360),(85,360),(123,360),(36,361),(42,361),(51,361),(70,361),(85,361),(97,361),(102,361),(108,361),(123,361),(129,361),(140,361),(10,362),(18,362),(70,362),(102,362),(140,362),(155,362),(10,363),(18,363),(42,363),(97,363),(102,363),(123,363),(1,364),(10,364),(18,364),(42,364),(70,364),(97,364),(102,364),(129,364),(140,364),(155,364),(67,365),(108,365),(123,365),(140,365),(155,365),(1,366),(18,366),(36,366),(51,366),(67,366),(70,366),(97,366),(155,366),(10,367),(67,367),(97,367),(123,367),(140,367),(1,368),(42,368),(51,368),(67,368),(70,368),(85,368),(108,368),(140,368),(1,369),(36,369),(42,369),(85,369),(102,369),(108,369),(18,370),(67,370),(97,370),(123,370),(129,370),(140,370),(18,371),(36,371),(42,371),(67,371),(70,371),(85,371),(102,371),(108,371),(155,371),(10,372),(36,372),(67,372),(97,372),(102,372),(108,372),(129,372),(11,373),(35,373),(65,373),(73,373),(95,373),(110,373),(119,373),(154,373),(5,374),(48,374),(95,374),(154,374),(35,375),(48,375),(104,375),(25,376),(48,376),(73,376),(95,376),(104,376),(119,376),(154,376),(5,377),(11,377),(35,377),(85,377),(143,377),(154,377),(5,378),(11,378),(45,378),(73,378),(85,378),(110,378),(136,378),(143,378),(154,378),(35,379),(45,379),(95,379),(143,379),(25,380),(119,380),(143,380),(154,380),(11,381),(25,381),(45,381),(104,381),(136,381),(143,381),(45,382),(65,382),(73,382),(85,382),(104,382),(143,382),(5,383),(25,383),(35,383),(45,383),(85,383),(110,383),(136,383),(5,384),(65,384),(73,384),(104,384),(110,384),(154,384),(5,385),(25,385),(35,385),(45,385),(48,385),(119,385),(154,385),(5,386),(11,386),(25,386),(45,386),(65,386),(85,386),(95,386),(104,386),(110,386),(143,386),(154,386),(11,387),(48,387),(85,387),(95,387),(136,387),(5,388),(45,388),(73,388),(104,388),(110,388),(119,388),(136,388),(143,388),(5,389),(11,389),(25,389),(35,389),(48,389),(65,389),(85,389),(104,389),(11,390),(65,390),(104,390),(110,390),(85,391),(95,391),(136,391),(154,391),(25,392),(48,392),(95,392),(136,392),(154,392),(35,393),(110,393),(136,393),(35,394),(48,394),(85,394),(95,394),(119,394),(136,394),(5,395),(25,395),(45,395),(48,395),(65,395),(73,395),(119,395),(143,395),(11,396),(45,396),(65,396),(73,396),(85,396),(104,396),(11,397),(65,397),(95,397),(119,397),(48,398),(85,398),(110,398),(136,398),(35,399),(48,399),(73,399),(119,399),(143,399),(5,400),(11,400),(25,400),(35,400),(45,400),(65,400),(104,400),(119,400),(73,401),(95,401),(110,401),(136,401),(25,402),(65,402),(73,402),(110,402),(119,402),(143,402),(50,403),(60,403),(89,403),(109,403),(153,403),(15,404),(23,404),(28,404),(50,404),(79,404),(15,405),(23,405),(50,405),(68,405),(79,405),(124,405),(28,406),(45,406),(68,406),(105,406),(28,407),(129,407),(138,407),(23,408),(45,408),(50,408),(60,408),(89,408),(138,408),(15,409),(23,409),(28,409),(60,409),(68,409),(89,409),(105,409),(109,409),(153,409),(23,410),(28,410),(68,410),(79,410),(89,410),(105,410),(124,410),(129,410),(138,410),(153,410),(15,411),(28,411),(45,411),(60,411),(79,411),(105,411),(124,411),(129,411),(45,412),(89,412),(109,412),(124,412),(129,412),(138,412),(153,412),(15,413),(23,413),(28,413),(45,413),(50,413),(60,413),(68,413),(79,413),(89,413),(105,413),(15,414),(60,414),(89,414),(109,414),(129,414),(23,415),(28,415),(138,415),(45,416),(50,416),(68,416),(105,416),(45,417),(50,417),(60,417),(79,417),(109,417),(124,417),(138,417),(28,418),(45,418),(68,418),(124,418),(138,418),(153,418),(15,419),(60,419),(68,419),(105,419),(50,420),(60,420),(105,420),(129,420),(153,420),(15,421),(23,421),(45,421),(105,421),(153,421),(28,422),(45,422),(79,422),(109,422),(153,422),(23,423),(68,423),(89,423),(109,423),(129,423),(153,423),(15,424),(50,424),(68,424),(79,424),(105,424),(109,424),(124,424),(129,424),(138,424),(28,425),(68,425),(79,425),(109,425),(138,425),(45,426),(50,426),(60,426),(79,426),(89,426),(124,426),(129,426),(89,427),(105,427),(15,428),(89,428),(109,428),(129,428),(23,429),(124,429),(129,429),(138,429),(153,429),(79,430),(124,430),(138,430),(50,431),(60,431),(153,431),(15,432),(23,432),(109,432),(124,432),(15,433),(20,433),(56,433),(106,433),(115,433),(118,433),(135,433),(154,433),(4,434),(30,434),(47,434),(75,434),(83,434),(91,434),(106,434),(118,434),(135,434),(139,434),(4,435),(75,435),(115,435),(135,435),(139,435),(4,436),(15,436),(30,436),(64,436),(106,436),(115,436),(135,436),(139,436),(15,437),(20,437),(30,437),(47,437),(56,437),(75,437),(91,437),(115,437),(118,437),(154,437),(4,438),(20,438),(75,438),(83,438),(106,438),(118,438),(30,439),(47,439),(56,439),(75,439),(91,439),(115,439),(139,439),(154,439),(15,440),(56,440),(64,440),(75,440),(83,440),(91,440),(106,440),(118,440),(154,440),(4,441),(15,441),(20,441),(47,441),(83,441),(91,441),(135,441),(154,441),(20,442),(30,442),(47,442),(56,442),(64,442),(4,443),(15,443),(30,443),(64,443),(75,443),(83,443),(106,443),(118,443),(139,443),(20,444),(106,444),(135,444),(139,444),(154,444),(4,445),(20,445),(56,445),(64,445),(91,445),(106,445),(118,445),(154,445),(20,446),(75,446),(83,446),(91,446),(154,446),(15,447),(83,447),(106,447),(139,447),(4,448),(47,448),(56,448),(64,448),(75,448),(106,448),(115,448),(135,448),(20,449),(30,449),(47,449),(91,449),(118,449),(139,449),(15,450),(47,450),(56,450),(64,450),(118,450),(15,451),(30,451),(64,451),(115,451),(135,451),(4,452),(47,452),(56,452),(75,452),(91,452),(115,452),(135,452),(4,453),(30,453),(91,453),(115,453),(118,453),(154,453),(30,454),(47,454),(56,454),(64,454),(83,454),(115,454),(135,454),(139,454),(15,455),(20,455),(64,455),(83,455),(106,455),(118,455),(139,455),(154,455),(4,456),(15,456),(30,456),(56,456),(64,456),(83,456),(91,456),(135,456),(139,456),(154,456),(20,457),(47,457),(75,457),(83,457),(115,457),(37,458),(78,458),(96,458),(107,458),(137,458),(144,458),(157,458),(37,459),(52,459),(96,459),(123,459),(137,459),(44,460),(71,460),(78,460),(157,460),(7,461),(71,461),(96,461),(123,461),(7,462),(24,462),(52,462),(60,462),(96,462),(107,462),(115,462),(123,462),(137,462),(144,462),(157,462),(7,463),(24,463),(37,463),(44,463),(52,463),(60,463),(71,463),(78,463),(107,463),(115,463),(137,463),(24,464),(71,464),(137,464),(157,464),(7,465),(37,465),(52,465),(96,465),(107,465),(144,465),(157,465),(14,466),(37,466),(44,466),(52,466),(60,466),(115,466),(144,466),(24,467),(37,467),(44,467),(60,467),(123,467),(144,467),(157,467),(37,468),(137,468),(52,469),(71,469),(78,469),(107,469),(123,469),(7,470),(14,470),(24,470),(60,470),(71,470),(96,470),(123,470),(144,470),(14,471),(24,471),(37,471),(44,471),(78,471),(115,471),(137,471),(7,472),(14,472),(44,472),(52,472),(137,472),(7,473),(14,473),(60,473),(78,473),(123,473),(78,474),(115,474),(144,474),(157,474),(37,475),(115,475),(144,475),(7,476),(14,476),(24,476),(37,476),(44,476),(60,476),(71,476),(96,476),(107,476),(144,476),(60,477),(71,477),(107,477),(115,477),(14,478),(37,478),(52,478),(60,478),(78,478),(96,478),(107,478),(123,478),(137,478),(157,478),(44,479),(78,479),(96,479),(107,479),(157,479),(7,480),(14,480),(24,480),(44,480),(52,480),(60,480),(71,480),(107,480),(115,480),(123,480),(137,480),(24,481),(115,481),(14,482),(24,482),(44,482),(52,482),(60,482),(71,482),(115,482),(137,482),(7,483),(14,483),(78,483),(96,483),(107,483),(123,483),(144,483),(157,483),(7,484),(14,484),(24,484),(44,484),(52,484),(71,484),(78,484),(96,484),(115,484),(123,484),(144,484),(157,484),(16,485),(21,485),(69,485),(81,485),(121,485),(143,485),(57,486),(90,486),(131,486),(150,486),(16,487),(21,487),(36,487),(57,487),(69,487),(107,487),(131,487),(16,488),(43,488),(81,488),(114,488),(131,488),(150,488),(36,489),(43,489),(57,489),(69,489),(90,489),(114,489),(131,489),(36,490),(43,490),(57,490),(81,490),(114,490),(131,490),(143,490),(21,491),(36,491),(43,491),(57,491),(107,491),(114,491),(121,491),(131,491),(143,491),(43,492),(57,492),(121,492),(16,493),(21,493),(64,493),(69,493),(64,494),(107,494),(143,494),(150,494),(43,495),(57,495),(90,495),(107,495),(114,495),(131,495),(150,495),(64,496),(69,496),(143,496),(150,496),(16,497),(21,497),(43,497),(90,497),(107,497),(121,497),(43,498),(90,498),(107,498),(114,498),(36,499),(64,499),(69,499),(114,499),(150,499),(21,500),(57,500),(81,500),(143,500),(150,500),(16,501),(64,501),(81,501),(16,502),(21,502),(36,502),(90,502),(131,502),(64,503),(69,503),(121,503),(143,503),(16,504),(81,504),(90,504),(107,504),(121,504),(143,504),(150,504),(21,505),(57,505),(69,505),(131,505),(150,505),(16,506),(114,506),(121,506),(21,507),(36,507),(64,507),(69,507),(121,507),(143,507),(81,508),(90,508),(131,508),(81,509),(90,509),(121,509),(36,510),(43,510),(64,510),(69,510),(90,510),(107,510),(114,510),(143,510),(36,511),(43,511),(64,511),(69,511),(90,511),(121,511),(150,511),(21,512),(43,512),(57,512),(64,512),(81,512),(107,512),(114,512),(143,512),(16,513),(21,513),(36,513),(64,513),(81,513),(107,513),(121,513),(16,514),(107,514),(150,514),(36,515),(57,515),(81,515),(114,515),(131,515),(22,516),(44,516),(74,516),(84,516),(104,516),(112,516),(22,517),(62,517),(97,517),(104,517),(156,517),(22,518),(74,518),(84,518),(97,518),(104,518),(138,518),(9,519),(30,519),(74,519),(104,519),(121,519),(132,519),(156,519),(9,520),(30,520),(44,520),(49,520),(74,520),(97,520),(104,520),(112,520),(121,520),(132,520),(138,520),(156,520),(9,521),(44,521),(49,521),(74,521),(84,521),(104,521),(138,521),(44,522),(49,522),(62,522),(74,522),(84,522),(97,522),(112,522),(138,522),(156,522),(44,523),(49,523),(97,523),(121,523),(138,523),(9,524),(49,524),(62,524),(74,524),(84,524),(97,524),(121,524),(9,525),(22,525),(30,525),(44,525),(62,525),(97,525),(104,525),(112,525),(132,525),(138,525),(156,525),(9,526),(30,526),(62,526),(112,526),(132,526),(156,526),(30,527),(84,527),(121,527),(156,527),(22,528),(30,528),(49,528),(74,528),(84,528),(138,528),(9,529),(30,529),(74,529),(97,529),(121,529),(132,529),(138,529),(156,529),(22,530),(44,530),(62,530),(74,530),(97,530),(121,530),(132,530),(30,531),(62,531),(84,531),(112,531),(132,531),(22,532),(30,532),(49,532),(62,532),(156,532),(44,533),(62,533),(84,533),(104,533),(132,533),(138,533),(22,534),(49,534),(97,534),(104,534),(112,534),(121,534),(9,535),(22,535),(30,535),(49,535),(84,535),(97,535),(112,535),(121,535),(132,535),(9,536),(22,536),(49,536),(62,536),(104,536),(112,536),(121,536),(132,536),(138,536),(156,536),(9,537),(22,537),(44,537),(74,537),(112,537),(121,537),(132,537),(156,537),(30,538),(44,538),(49,538),(62,538),(84,538),(112,538),(9,539),(44,539),(104,539),(138,539),(17,540),(40,540),(75,540),(103,540),(109,540),(127,540),(137,540),(149,540),(17,541),(51,541),(61,541),(81,541),(95,541),(103,541),(17,542),(34,542),(75,542),(81,542),(109,542),(127,542),(137,542),(141,542),(149,542),(61,543),(95,543),(103,543),(17,544),(27,544),(51,544),(61,544),(95,544),(103,544),(127,544),(137,544),(17,545),(27,545),(40,545),(51,545),(109,545),(141,545),(34,546),(81,546),(127,546),(149,546),(17,547),(34,547),(40,547),(51,547),(61,547),(81,547),(95,547),(137,547),(141,547),(149,547),(34,548),(81,548),(95,548),(141,548),(34,549),(51,549),(61,549),(75,549),(81,549),(127,549),(149,549),(40,550),(75,550),(81,550),(103,550),(137,550),(149,550),(75,551),(95,551),(127,551),(27,552),(40,552),(109,552),(127,552),(27,553),(51,553),(75,553),(81,553),(103,553),(137,553),(34,554),(51,554),(61,554),(75,554),(109,554),(137,554),(141,554),(149,554),(103,555),(27,556),(34,556),(61,556),(95,556),(103,556),(109,556),(137,556),(141,556),(149,556),(40,557),(141,557),(17,558),(27,558),(61,558),(75,558),(81,558),(95,558),(103,558),(109,558),(127,558),(137,558),(141,558),(27,559),(34,559),(40,559),(51,559),(75,559),(109,559),(127,559),(141,559),(17,560),(27,560),(34,560),(40,560),(51,560),(75,560),(109,560),(137,560),(149,560),(17,561),(27,561),(40,561),(75,561),(127,561),(141,561),(81,562),(103,562),(149,562),(27,563),(34,563),(40,563),(61,563),(95,563),(149,563),(17,564),(51,564),(95,564),(127,564),(40,565),(61,565),(95,565),(103,565),(109,565),(137,565),(17,566),(27,566),(34,566),(51,566),(61,566),(81,566),(109,566),(141,566),(33,567),(73,567),(55,568),(73,568),(90,568),(120,568),(134,568),(148,568),(10,569),(26,569),(58,569),(99,569),(7,570),(40,570),(55,570),(58,570),(99,570),(7,571),(10,571),(40,571),(58,571),(73,571),(134,571),(10,572),(26,572),(73,572),(80,572),(120,572),(134,572),(7,573),(40,573),(55,573),(58,573),(80,573),(90,573),(99,573),(113,573),(120,573),(139,573),(40,574),(58,574),(99,574),(120,574),(139,574),(148,574),(10,575),(26,575),(55,575),(58,575),(90,575),(99,575),(113,575),(134,575),(10,576),(26,576),(58,576),(80,576),(90,576),(148,576),(40,577),(55,577),(58,577),(73,577),(113,577),(139,577),(148,577),(10,578),(33,578),(40,578),(80,578),(90,578),(120,578),(134,578),(139,578),(148,578),(7,579),(90,579),(99,579),(120,579),(139,579),(7,580),(40,580),(55,580),(73,580),(113,580),(134,580),(7,581),(33,581),(80,581),(148,581),(26,582),(33,582),(55,582),(80,582),(90,582),(113,582),(134,582),(139,582),(148,582),(26,583),(33,583),(55,583),(73,583),(80,583),(134,583),(139,583),(148,583),(7,584),(10,584),(26,584),(55,584),(58,584),(80,584),(99,584),(113,584),(139,584),(148,584),(7,585),(10,585),(33,585),(58,585),(73,585),(80,585),(90,585),(99,585),(113,585),(120,585),(10,586),(26,586),(40,586),(90,586),(120,586),(139,586),(26,587),(33,587),(40,587),(55,587),(99,587),(113,587),(120,587),(33,588),(90,588),(113,588),(7,589),(10,589),(26,589),(33,589),(40,589),(58,589),(73,589),(99,589),(134,589),(7,590),(33,590),(40,590),(55,590),(113,590),(148,590),(26,591),(73,591),(80,591),(90,591),(113,591),(120,591),(134,591),(139,591),(148,591),(7,592),(10,592),(33,592),(73,592),(80,592),(99,592),(120,592),(134,592),(139,592),(8,593),(43,593),(8,594),(22,594),(28,594),(43,594),(59,594),(76,594),(94,594),(122,594),(135,594),(152,594),(22,595),(28,595),(76,595),(80,595),(103,595),(110,595),(54,596),(80,596),(135,596),(43,597),(94,597),(142,597),(8,598),(54,598),(59,598),(94,598),(103,598),(152,598),(80,599),(94,599),(122,599),(135,599),(43,600),(54,600),(28,601),(59,601),(76,601),(110,601),(152,601),(8,602),(43,602),(54,602),(80,602),(110,602),(142,602),(43,603),(122,603),(135,603),(8,604),(22,604),(54,604),(59,604),(80,604),(94,604),(110,604),(142,604),(152,604),(28,605),(59,605),(103,605),(110,605),(152,605),(54,606),(110,606),(122,606),(142,606),(76,607),(103,607),(122,607),(142,607),(152,607),(8,608),(22,608),(43,608),(59,608),(122,608),(135,608),(22,609),(28,609),(43,609),(54,609),(76,609),(94,609),(103,609),(135,609),(8,610),(22,610),(76,610),(135,610),(142,610),(8,611),(22,611),(28,611),(80,611),(94,611),(103,611),(152,611),(43,612),(59,612),(76,612),(80,612),(94,612),(103,612),(142,612),(8,613),(22,613),(28,613),(54,613),(110,613),(122,613),(142,613),(22,614),(54,614),(76,614),(110,614),(152,614),(94,615),(103,615),(135,615),(152,615),(28,616),(43,616),(59,616),(76,616),(103,616),(135,616),(142,616),(8,617),(54,617),(135,617),(59,618),(76,618),(80,618),(122,618),(152,618),(80,619),(135,619),(22,620),(28,620),(59,620),(94,620),(110,620),(122,620),(59,621),(76,621),(80,621),(103,621),(142,621),(152,621),(8,622),(22,622),(28,622),(43,622),(54,622),(110,622),(122,622),(28,623),(80,623),(94,623),(103,623),(110,623),(122,623),(142,623),(35,624),(84,624),(113,624),(128,624),(13,625),(21,625),(38,625),(52,625),(63,625),(102,625),(128,625),(21,626),(38,626),(63,626),(127,626),(13,627),(72,627),(113,627),(127,627),(128,627),(147,627),(2,628),(94,628),(102,628),(113,628),(127,628),(153,628),(13,629),(21,629),(38,629),(72,629),(84,629),(102,629),(127,629),(153,629),(21,630),(52,630),(63,630),(2,631),(13,631),(38,631),(63,631),(147,631),(153,631),(2,632),(13,632),(21,632),(38,632),(52,632),(72,632),(84,632),(94,632),(102,632),(128,632),(35,633),(113,633),(13,634),(84,634),(102,634),(113,634),(127,634),(13,635),(21,635),(52,635),(113,635),(128,635),(21,636),(35,636),(84,636),(94,636),(147,636),(153,636),(13,637),(21,637),(38,637),(52,637),(63,637),(72,637),(113,637),(128,637),(153,637),(35,638),(38,638),(63,638),(72,638),(102,638),(128,638),(153,638),(13,639),(35,639),(52,639),(72,639),(84,639),(94,639),(102,639),(153,639),(2,640),(35,640),(63,640),(72,640),(94,640),(102,640),(147,640),(153,640),(13,641),(52,641),(63,641),(72,641),(84,641),(94,641),(127,641),(147,641),(153,641),(2,642),(52,642),(63,642),(94,642),(102,642),(128,642),(2,643),(13,643),(35,643),(38,643),(127,643),(147,643),(2,644),(35,644),(38,644),(72,644),(84,644),(94,644),(113,644),(127,644),(128,644),(147,644),(2,645),(35,645),(72,645),(94,645),(113,645),(147,645),(2,646),(21,646),(52,646),(63,646),(84,646),(94,646),(113,646),(127,646),(147,646),(2,647),(21,647),(38,647),(63,647),(72,647),(84,647),(102,647),(127,647),(128,647),(153,647),(2,648),(21,648),(35,648),(52,648),(84,648),(94,648),(102,648),(113,648),(147,648),(153,648),(35,649),(38,649),(52,649),(127,649),(128,649),(147,649),(3,650),(46,650),(66,650),(71,650),(101,650),(120,650),(3,651),(13,651),(71,651),(116,651),(120,651),(141,651),(3,652),(13,652),(18,652),(32,652),(46,652),(66,652),(71,652),(92,652),(101,652),(136,652),(152,652),(13,653),(18,653),(71,653),(83,653),(13,654),(18,654),(32,654),(66,654),(92,654),(101,654),(116,654),(136,654),(152,654),(3,655),(32,655),(46,655),(53,655),(66,655),(83,655),(101,655),(120,655),(136,655),(141,655),(152,655),(13,656),(83,656),(101,656),(13,657),(32,657),(53,657),(92,657),(116,657),(136,657),(141,657),(46,658),(101,658),(116,658),(120,658),(13,659),(83,659),(92,659),(141,659),(152,659),(3,660),(18,660),(53,660),(66,660),(71,660),(92,660),(101,660),(116,660),(120,660),(136,660),(152,660),(3,661),(13,661),(46,661),(53,661),(71,661),(141,661),(152,661),(3,662),(18,662),(32,662),(53,662),(66,662),(101,662),(120,662),(3,663),(13,663),(92,663),(116,663),(136,663),(53,664),(83,664),(92,664),(101,664),(116,664),(120,664),(152,664),(18,665),(46,665),(53,665),(66,665),(136,665),(3,666),(18,666),(46,666),(53,666),(66,666),(136,666),(152,666),(32,667),(71,667),(83,667),(92,667),(13,668),(18,668),(32,668),(53,668),(66,668),(71,668),(83,668),(101,668),(141,668),(3,669),(32,669),(46,669),(66,669),(71,669),(116,669),(120,669),(136,669),(141,669),(18,670),(32,670),(46,670),(53,670),(83,670),(92,670),(116,670),(141,670),(152,670),(3,671),(18,671),(46,671),(83,671),(92,671),(120,671),(46,672),(53,672),(71,672),(83,672),(120,672),(141,672),(152,672),(18,673),(32,673),(83,673),(92,673),(101,673),(116,673),(120,673),(136,673),(141,673),(13,674),(32,674),(66,674),(71,674),(116,674),(136,674),(141,674),(152,674),(2,699),(41,699),(82,699),(91,699),(100,699),(140,699),(2,700),(12,700),(24,700),(41,700),(116,700),(124,700),(148,700),(31,701),(69,701),(82,701),(124,701),(24,702),(31,702),(69,702),(82,702),(100,702),(130,702),(2,703),(12,703),(24,703),(31,703),(61,703),(69,703),(82,703),(116,703),(124,703),(130,703),(140,703),(12,704),(61,704),(124,704),(130,704),(140,704),(31,705),(69,705),(91,705),(116,705),(130,705),(140,705),(148,705),(2,706),(12,706),(31,706),(41,706),(48,706),(91,706),(100,706),(140,706),(12,707),(61,707),(100,707),(124,707),(130,707),(148,707),(24,708),(41,708),(48,708),(61,708),(69,708),(91,708),(130,708),(148,708),(12,709),(24,709),(31,709),(82,709),(100,709),(116,709),(124,709),(148,709),(12,710),(31,710),(41,710),(48,710),(61,710),(69,710),(82,710),(124,710),(130,710),(140,710),(148,710),(41,711),(48,711),(69,711),(116,711),(140,711),(41,712),(48,712),(69,712),(82,712),(116,712),(2,713),(41,713),(61,713),(82,713),(91,713),(116,713),(2,714),(12,714),(24,714),(31,714),(48,714),(61,714),(69,714),(91,714),(100,714),(116,714),(124,714),(148,714),(2,715),(24,715),(61,715),(82,715),(91,715),(100,715),(130,715),(148,715),(69,716),(82,716),(100,716),(116,716),(124,716),(140,716),(24,717),(31,717),(48,717),(82,717),(91,717),(130,717),(140,717),(2,718),(41,718),(48,718),(61,718),(91,718),(100,718),(116,718),(130,718),(148,718),(2,719),(12,719),(31,719),(48,719),(61,719),(91,719),(116,719),(148,719),(2,720),(12,720),(24,720),(41,720),(48,720),(69,720),(140,720),(148,720),(2,721),(12,721),(24,721),(31,721),(41,721),(48,721),(61,721),(100,721),(124,721),(130,721),(24,722),(91,722),(100,722),(124,722),(140,722),(12,723),(27,723),(50,723),(87,723),(133,723),(150,723),(101,724),(122,724),(133,724),(146,724),(12,725),(63,725),(93,725),(12,726),(27,726),(33,726),(39,726),(122,726),(133,726),(6,727),(27,727),(70,727),(87,727),(133,727),(6,728),(70,728),(101,728),(112,728),(146,728),(6,729),(12,729),(27,729),(63,729),(122,729),(133,729),(6,730),(27,730),(33,730),(70,730),(133,730),(150,730),(39,731),(50,731),(101,731),(112,731),(122,731),(146,731),(6,732),(27,732),(87,732),(101,732),(122,732),(150,732),(27,733),(87,733),(93,733),(112,733),(12,734),(39,734),(50,734),(63,734),(101,734),(112,734),(122,734),(146,734),(33,735),(39,735),(50,735),(93,735),(112,735),(146,735),(150,735),(27,736),(33,736),(63,736),(70,736),(93,736),(101,736),(112,736),(146,736),(150,736),(12,737),(27,737),(50,737),(63,737),(133,737),(12,738),(27,738),(50,738),(63,738),(93,738),(112,738),(133,738),(12,739),(101,739),(146,739),(33,740),(39,740),(70,740),(93,740),(101,740),(122,740),(6,741),(12,741),(39,741),(87,741),(93,741),(6,742),(33,742),(50,742),(87,742),(133,742),(6,743),(33,743),(87,743),(150,743),(39,744),(50,744),(63,744),(112,744),(150,744),(6,745),(33,745),(50,745),(70,745),(87,745),(93,745),(146,745),(150,745),(33,746),(39,746),(63,746),(101,746),(122,746),(6,747),(39,747),(93,747),(146,747),(6,748),(12,748),(63,748),(70,748),(87,748),(93,748),(101,748),(122,748),(133,748),(150,748),(12,749),(33,749),(39,749),(50,749),(63,749),(70,749),(112,749),(133,749),(146,749),(150,749),(33,750),(70,750),(87,750),(101,750),(112,750),(122,750),(39,751),(63,751),(70,751),(112,751),(122,751),(150,751),(27,752),(50,752),(70,752),(87,752),(93,752),(146,752),(62,753),(76,753),(93,753),(111,753),(151,753),(11,754),(26,754),(62,754),(76,754),(78,754),(111,754),(128,754),(3,755),(11,755),(31,755),(56,755),(76,755),(78,755),(128,755),(145,755),(151,755),(26,756),(56,756),(62,756),(93,756),(125,756),(128,756),(151,756),(26,757),(62,757),(93,757),(98,757),(125,757),(3,758),(31,758),(56,758),(78,758),(98,758),(111,758),(125,758),(3,759),(11,759),(26,759),(31,759),(42,759),(56,759),(93,759),(98,759),(125,759),(151,759),(31,760),(42,760),(62,760),(76,760),(78,760),(93,760),(98,760),(111,760),(125,760),(145,760),(31,761),(76,761),(78,761),(93,761),(98,761),(128,761),(145,761),(31,762),(56,762),(76,762),(78,762),(98,762),(128,762),(151,762),(3,763),(11,763),(26,763),(31,763),(56,763),(62,763),(78,763),(93,763),(111,763),(145,763),(151,763),(3,764),(11,764),(26,764),(31,764),(42,764),(56,764),(93,764),(98,764),(125,764),(145,764),(151,764),(3,765),(26,765),(42,765),(56,765),(76,765),(78,765),(98,765),(111,765),(128,765),(145,765),(151,765),(11,766),(56,766),(76,766),(111,766),(125,766),(145,766),(26,767),(42,767),(56,767),(62,767),(78,767),(93,767),(26,768),(42,768),(62,768),(111,768),(125,768),(128,768),(151,768),(3,769),(11,769),(31,769),(76,769),(151,769),(3,770),(11,770),(31,770),(42,770),(62,770),(76,770),(98,770),(111,770),(125,770),(128,770),(3,771),(11,771),(42,771),(76,771),(125,771),(128,771),(11,772),(42,772),(62,772),(78,772),(145,772),(26,773),(31,773),(98,773),(111,773),(145,773),(3,774),(42,774),(56,774),(78,774),(93,774),(98,774),(128,774),(145,774),(3,775),(11,775),(26,775),(42,775),(62,775),(93,775),(111,775),(125,775),(128,775),(145,775),(151,775),(1,776),(39,776),(57,776),(65,776),(86,776),(92,776),(100,776),(111,776),(134,776),(1,777),(9,777),(23,777),(37,777),(77,777),(86,777),(92,777),(39,778),(65,778),(111,778),(134,778),(9,779),(37,779),(77,779),(92,779),(100,779),(111,779),(118,779),(134,779),(149,779),(23,780),(37,780),(39,780),(142,780),(9,781),(57,781),(77,781),(86,781),(92,781),(111,781),(118,781),(134,781),(1,782),(23,782),(37,782),(65,782),(100,782),(118,782),(142,782),(149,782),(23,783),(77,783),(100,783),(134,783),(142,783),(9,784),(23,784),(39,784),(57,784),(77,784),(86,784),(92,784),(134,784),(149,784),(57,785),(92,785),(111,785),(134,785),(142,785),(9,786),(23,786),(37,786),(39,786),(65,786),(100,786),(111,786),(118,786),(142,786),(9,787),(65,787),(77,787),(86,787),(100,787),(134,787),(37,788),(39,788),(57,788),(65,788),(77,788),(86,788),(92,788),(100,788),(149,788),(1,789),(9,789),(37,789),(39,789),(57,789),(65,789),(111,789),(134,789),(142,789),(1,790),(37,790),(39,790),(57,790),(65,790),(86,790),(111,790),(118,790),(142,790),(149,790),(1,791),(23,791),(77,791),(134,791),(142,791),(149,791),(1,792),(23,792),(37,792),(39,792),(57,792),(86,792),(100,792),(111,792),(149,792),(1,793),(39,793),(77,793),(92,793),(118,793),(142,793),(149,793),(1,794),(37,794),(65,794),(92,794),(100,794),(118,794),(9,795),(23,795),(57,795),(92,795),(149,795),(9,796),(23,796),(57,796),(77,796),(86,796),(111,796),(118,796),(1,797),(39,797),(65,797),(100,797),(118,797),(142,797),(149,797),(1,798),(9,798),(23,798),(37,798),(65,798),(86,798),(92,798),(111,798),(118,798),(142,798),(149,798),(9,799),(57,799),(77,799),(86,799),(100,799),(118,799),(134,799);
/*!40000 ALTER TABLE `appearance` ENABLE KEYS */;
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
