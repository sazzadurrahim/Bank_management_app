-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: abcd
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `transaction`
--

DROP TABLE IF EXISTS `transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `transaction` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `ttype` varchar(255) DEFAULT NULL,
  `a_number` double DEFAULT NULL,
  `a_type` varchar(255) DEFAULT NULL,
  `Prebalance` double DEFAULT NULL,
  `tamount` double DEFAULT NULL,
  `curbalance` double DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `toacc_number` double DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transaction`
--

LOCK TABLES `transaction` WRITE;
/*!40000 ALTER TABLE `transaction` DISABLE KEYS */;
INSERT INTO `transaction` VALUES (1,'withdraw',101501,'Savings Account',2800,100,2700,'2024-04-20 00:00:00.000000','21:41:05',NULL),(2,'withdraw',101501,'Savings Account',2700,100,2600,'2024-04-02 00:00:00.000000','21:42:21',NULL),(3,'withdraw',101501,'Savings Account',2600,100,2500,'2024-05-22 00:00:00.000000','21:56:33',NULL),(4,'withdraw',101502,'Money Marjet Account',2700,700,2000,'2024-05-15 00:00:00.000000','21:59:02',NULL),(5,'Transfer',101501,'Money Marjet Account',2500,500,2000,'2024-05-20 00:00:00.000000','21:59:40',101502),(6,'deposit',101501,'Savings Account',3000,750,3750,'2024-05-25 00:00:00.000000','22:08:42',NULL),(7,'deposit',101502,'Money Marjet Account',5000,300,5300,'2024-05-23 00:00:00.000000','22:09:49',NULL),(8,'Transfer',101501,'Money Marjet Account',3750,500,3250,'2025-01-15 00:00:00.000000','12:41:59',101502),(9,'Transfer',101502,'Savings Account',5800,1000,4800,'2025-01-15 00:00:00.000000','12:42:54',101501),(10,'Transfer',101502,'saving account',4800,1000,3800,'2025-01-15 00:00:00.000000','12:43:35',101504),(11,'withdraw',101501,'Savings Account',4250,100,4150,'2025-01-15 00:00:00.000000','12:44:13',NULL);
/*!40000 ALTER TABLE `transaction` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-19 12:00:16
