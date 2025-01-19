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
-- Table structure for table `loantransaction`
--

DROP TABLE IF EXISTS `loantransaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `loantransaction` (
  `tid` int NOT NULL AUTO_INCREMENT,
  `ttype` varchar(255) DEFAULT NULL,
  `accnumber` int DEFAULT NULL,
  `loantype` varchar(255) DEFAULT NULL,
  `totalinstallment` int DEFAULT NULL,
  `payinstallment` int DEFAULT NULL,
  `paidamount` double DEFAULT NULL,
  `dueamount` double DEFAULT NULL,
  `date` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `loantransaction`
--

LOCK TABLES `loantransaction` WRITE;
/*!40000 ALTER TABLE `loantransaction` DISABLE KEYS */;
INSERT INTO `loantransaction` VALUES (9,'Installment',102501305,'Home loan',24,1,11500,1138500,'2024-05-22 00:42:44'),(10,'Installment',101301,'Home loan',24,1,10834,249166,'2024-05-25 22:20:14'),(11,'Installment',101301,'Home loan',24,2,21668,238332,'2024-05-25 22:21:29'),(12,'Installment',101301,'Home loan',24,3,260000,0,'2024-05-25 22:23:58'),(13,'Installment',101302,'Car loan',12,1,10834,319166,'2024-05-25 22:34:32'),(14,'Installment',101302,'Car loan',12,2,21668,308332,'2024-05-25 22:36:18'),(15,'Installment',101302,'Car loan',12,3,32502,297498,'2024-05-25 22:39:46'),(16,'Installment',101302,'Car loan',12,4,43336,286664,'2024-05-25 22:41:06');
/*!40000 ALTER TABLE `loantransaction` ENABLE KEYS */;
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
