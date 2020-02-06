-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: danmemo
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adventurerskilleffects`
--

DROP TABLE IF EXISTS `adventurerskilleffects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adventurerskilleffects` (
  `AdventurerSkillEffectsid` int NOT NULL AUTO_INCREMENT,
  `AdventurerSkillid` int NOT NULL,
  `Targetid` int NOT NULL,
  `attributeid` int NOT NULL,
  `modifierid` int NOT NULL,
  `duration` int DEFAULT NULL,
  PRIMARY KEY (`AdventurerSkillEffectsid`),
  KEY `targetid2_idx` (`Targetid`),
  KEY `modifierid_idx` (`modifierid`),
  KEY `attributeid2_idx` (`attributeid`),
  KEY `adventureskillid2_idx` (`AdventurerSkillid`),
  CONSTRAINT `adventureskillid2` FOREIGN KEY (`AdventurerSkillid`) REFERENCES `adventurerskill` (`adventurerskillid`) ON DELETE CASCADE,
  CONSTRAINT `attributeid2` FOREIGN KEY (`attributeid`) REFERENCES `attribute` (`attributeid`),
  CONSTRAINT `modifierid` FOREIGN KEY (`modifierid`) REFERENCES `modifier` (`modifierid`),
  CONSTRAINT `targetid2` FOREIGN KEY (`Targetid`) REFERENCES `target` (`targetid`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adventurerskilleffects`
--

LOCK TABLES `adventurerskilleffects` WRITE;
/*!40000 ALTER TABLE `adventurerskilleffects` DISABLE KEYS */;
/*!40000 ALTER TABLE `adventurerskilleffects` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-02-05 22:38:20