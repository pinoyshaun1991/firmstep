-- MySQL dump 10.13  Distrib 5.6.19, for osx10.7 (i386)
--
-- Host: localhost    Database: queues
-- ------------------------------------------------------
-- Server version	5.7.10

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
-- Table structure for table `customers`
--

CREATE SCHEMA `queues` DEFAULT CHARACTER SET utf8 ;

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Customer ID.',
  `type` varchar(50) NOT NULL DEFAULT 'Anonymous' COMMENT 'Type of customer',
  `service` int(11) NOT NULL DEFAULT '0' COMMENT 'The service the customer belongs to.',
  `title` varchar(5) DEFAULT NULL COMMENT 'Title of customer.',
  `first_name` varchar(100) DEFAULT NULL COMMENT 'First Name of customer',
  `last_name` varchar(100) DEFAULT NULL COMMENT 'Last Name of customer.',
  `qued_at` time(6) DEFAULT NULL COMMENT 'Time the customer qued.',
  `organisation` varchar(45) DEFAULT NULL COMMENT 'Organisation Name',
  `is_served` tinyint(3) DEFAULT '0' COMMENT 'Flag to check if customer has been served yet.',
  `is_forward` tinyint(3) DEFAULT '0' COMMENT 'Flag to check if customer has been put forward in queue.',
  PRIMARY KEY (`id`),
  KEY `service_fk_idx` (`service`),
  CONSTRAINT `service_fk` FOREIGN KEY (`service`) REFERENCES `services` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (14,'Citizen',3,'Mr.',NULL,NULL,'00:47:00.000000',NULL,1,0),(15,'Organisation',1,NULL,NULL,NULL,'00:48:00.000000','Testing Housing',1,0),(16,'Anonymous',3,NULL,NULL,NULL,'00:50:00.000000',NULL,1,0),(17,'Citizen',3,'Mr.',NULL,NULL,'00:54:00.000000',NULL,1,0),(18,'Citizen',3,'Mr.',NULL,NULL,'00:55:00.000000',NULL,1,0),(19,'Organisation',3,NULL,NULL,NULL,'00:56:00.000000','yjghv',1,0),(20,'Citizen',3,'Mr.',NULL,NULL,'00:58:00.000000',NULL,1,0),(21,'Citizen',3,'Mr.',NULL,NULL,'01:00:00.000000',NULL,1,0),(22,'Organisation',3,NULL,NULL,NULL,'01:02:00.000000','fsgdghd',1,0),(23,'Organisation',3,NULL,NULL,NULL,'01:03:00.000000','fdgdf',1,0),(24,'Organisation',4,NULL,NULL,NULL,'01:05:00.000000','iygjyg',1,0),(25,'Organisation',3,NULL,NULL,NULL,'01:09:00.000000','Testing',1,0),(26,'Organisation',3,NULL,NULL,NULL,'01:10:00.000000','efww',1,0),(27,'Organisation',3,NULL,NULL,NULL,'01:11:00.000000','edfsf',1,0),(28,'Citizen',2,'Mr.',NULL,NULL,'01:42:00.000000',NULL,1,0),(29,'Organisation',4,NULL,NULL,NULL,'01:38:00.000000','dfdsfds',1,0),(30,'Organisation',3,NULL,NULL,NULL,'01:36:00.000000','ukgjkg',1,0),(31,'Organisation',3,NULL,NULL,NULL,'02:44:00.000000','hv',1,0),(32,'Organisation',3,NULL,NULL,NULL,'02:55:00.000000','hjgjvhjvhkhjv',1,0),(33,'Anonymous',3,NULL,NULL,NULL,'02:55:00.000000',NULL,1,0),(34,'Organisation',3,NULL,NULL,NULL,'02:55:00.000000','nm',1,0),(35,'Citizen',2,'Mr.',NULL,NULL,'02:55:00.000000',NULL,1,0),(36,'Citizen',4,'Mr.',NULL,NULL,'02:55:00.000000',NULL,1,0),(37,'Citizen',3,'Mr.',NULL,NULL,'02:59:00.000000',NULL,1,0),(38,'Anonymous',2,NULL,NULL,NULL,'03:12:00.000000',NULL,1,0),(39,'Anonymous',4,NULL,NULL,NULL,'03:14:00.000000',NULL,1,0),(40,'Organisation',3,NULL,NULL,NULL,'03:14:00.000000','fghhv',1,0),(41,'Anonymous',1,NULL,NULL,NULL,'03:14:00.000000',NULL,1,0),(42,'Citizen',1,'Mr.',NULL,NULL,'03:57:00.000000',NULL,1,0),(43,'Citizen',2,'Mrs.','','','04:10:00.000000','',1,0),(44,'Citizen',4,'Mr.','','','04:07:00.000000','',1,0),(45,'Citizen',1,'Mr.','','','04:12:00.000000','',1,0),(46,'Organisation',3,'','','','04:11:00.000000','efr',1,0),(47,'Organisation',4,'','','','04:13:00.000000','Testing Inc.',1,0),(48,'Citizen',2,'Mr.','','','04:36:00.000000','',1,0),(49,'Anonymous',1,'','','','04:13:00.000000','',1,0),(50,'Anonymous',2,'','','','04:29:00.000000','',1,0),(51,'Citizen',2,'Mrs.','','','04:28:00.000000','',1,0),(52,'Citizen',2,'Mr.','','','04:36:00.000000','',1,0),(53,'Citizen',3,'Mr.','','','04:37:00.000000','',1,0);
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `services` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Service ID.',
  `name` varchar(50) DEFAULT NULL COMMENT 'Service Name.',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (1,'Housing'),(2,'Benifits'),(3,'Fly-tipping'),(4,'Missed Bin');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-10-27  3:52:56
