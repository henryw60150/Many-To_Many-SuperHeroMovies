-- MySQL dump 10.13  Distrib 5.7.18, for Win64 (x86_64)
--
-- Host: localhost    Database: 2017movies
-- ------------------------------------------------------
-- Server version	5.7.18-log

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
-- Current Database: `2017movies`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `2017movies` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `2017movies`;

--
-- Table structure for table `2017movies`
--

DROP TABLE IF EXISTS `2017movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2017movies` (
  `movieID` int(11) NOT NULL AUTO_INCREMENT,
  `movieName` varchar(25) DEFAULT NULL,
  `movieDescription` varchar(255) DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL,
  PRIMARY KEY (`movieID`),
  KEY `companyID` (`companyID`),
  CONSTRAINT `2017movies_ibfk_1` FOREIGN KEY (`companyID`) REFERENCES `company` (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2017movies`
--

LOCK TABLES `2017movies` WRITE;
/*!40000 ALTER TABLE `2017movies` DISABLE KEYS */;
INSERT INTO `2017movies` VALUES (1,'Guardians of the Galaxy V','May 2017',1),(2,'Wonder Woman','June 2017',2),(3,'Spider-Man Homecoming','July 2017',1),(4,'Justice League','November 2017',2);
/*!40000 ALTER TABLE `2017movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2017movies_genres`
--

DROP TABLE IF EXISTS `2017movies_genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `2017movies_genres` (
  `movieID` int(11) DEFAULT NULL,
  `genreID` int(11) DEFAULT NULL,
  `fundingMetadata` blob,
  UNIQUE KEY `pkCompare` (`movieID`,`genreID`),
  KEY `genreID` (`genreID`),
  CONSTRAINT `2017movies_genres_ibfk_1` FOREIGN KEY (`movieID`) REFERENCES `2017movies` (`movieID`),
  CONSTRAINT `2017movies_genres_ibfk_2` FOREIGN KEY (`genreID`) REFERENCES `genres` (`genreID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2017movies_genres`
--

LOCK TABLES `2017movies_genres` WRITE;
/*!40000 ALTER TABLE `2017movies_genres` DISABLE KEYS */;
INSERT INTO `2017movies_genres` VALUES (1,1,NULL),(1,3,NULL),(2,3,NULL),(2,4,NULL),(3,1,NULL),(3,3,NULL),(4,3,NULL);
/*!40000 ALTER TABLE `2017movies_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `companyID` int(11) NOT NULL AUTO_INCREMENT,
  `companyName` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`companyID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'Marvel'),(2,'DC');
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `genreID` int(11) NOT NULL AUTO_INCREMENT,
  `genreName` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`genreID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (1,'Comedy'),(2,'Romance'),(3,'Action'),(4,'Drama');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-06-19 20:20:58
