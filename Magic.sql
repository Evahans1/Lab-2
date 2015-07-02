-- MySQL dump 10.13  Distrib 5.6.24, for Win64 (x86_64)
--
-- Host: localhost    Database: magic
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `magiccards`
--

DROP TABLE IF EXISTS `magiccards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `magiccards` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CardName` varchar(30) DEFAULT NULL,
  `ManaType` varchar(25) DEFAULT NULL,
  `CardRarity` varchar(10) DEFAULT NULL,
  `NumberOfCopies` varchar(10) DEFAULT NULL,
  `ManaCost` varchar(10) DEFAULT NULL,
  `Pack Number` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Series_idx` (`Pack Number`),
  CONSTRAINT `Pack` FOREIGN KEY (`Pack Number`) REFERENCES `series` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `magiccards`
--

LOCK TABLES `magiccards` WRITE;
/*!40000 ALTER TABLE `magiccards` DISABLE KEYS */;
INSERT INTO `magiccards` VALUES (1,'Molten Psyche','Red','Rare','1','1',1),(2,'Wort, the Raidmother','Green,Red','Rare','1','6',4),(3,'Planeswalkers Mischief','Blue','Rare','1','3',6);
/*!40000 ALTER TABLE `magiccards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `series`
--

DROP TABLE IF EXISTS `series`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `series` (
  `ID` int(11) NOT NULL,
  `Pack` varchar(45) DEFAULT NULL,
  `Block` varchar(45) DEFAULT NULL,
  `Release Year` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `series`
--

LOCK TABLES `series` WRITE;
/*!40000 ALTER TABLE `series` DISABLE KEYS */;
INSERT INTO `series` VALUES (1,'Scars of Mirrodin ','Scars of Mirrodin block','2010'),(2,'Mirrodin Besieged ','Scars of Mirrodin block','2011'),(3,'New Phyrexia','Scars of Mirrodin block','2011'),(4,'Shadowmoor','Shadowmoor Block','2008'),(5,' Eventide','Shadowmoor Block','2008'),(6,'Planeshift','Invasion Block','2001'),(7,'Invasion','Invasion Block','2000'),(8,'Apocalypse','Invasion Block','2001');
/*!40000 ALTER TABLE `series` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-07-02 19:55:59
