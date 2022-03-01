-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: lib
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `book` (
  `bookname` varchar(200) DEFAULT NULL,
  `bookcode` int DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  `scode` int DEFAULT NULL,
  `AUTHOR` char(20) DEFAULT NULL,
  `i_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `class` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('MATHS NCERT 12',4200,NULL,NULL,'NCERT',NULL,NULL,1,NULL),('chemistry ncert',2750,NULL,NULL,'ncert',NULL,NULL,1,12),('physics ncert',962,NULL,NULL,'ncert',NULL,NULL,1,12),('English',6471,NULL,NULL,'Ncert',NULL,NULL,1,12),('wings of fire',8186,NULL,NULL,'piyush',NULL,NULL,1,8);
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `high`
--

DROP TABLE IF EXISTS `high`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `high` (
  `bookname` varchar(200) DEFAULT NULL,
  `bookcode` int DEFAULT NULL,
  `status` char(10) DEFAULT NULL,
  `scode` int DEFAULT NULL,
  `AUTHOR` char(20) DEFAULT NULL,
  `i_date` date DEFAULT NULL,
  `e_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `high`
--

LOCK TABLES `high` WRITE;
/*!40000 ALTER TABLE `high` DISABLE KEYS */;
/*!40000 ALTER TABLE `high` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `studentname` char(20) DEFAULT NULL,
  `rollno` int DEFAULT NULL,
  `scode` int DEFAULT NULL,
  `class` int DEFAULT NULL,
  `history` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('kunal',100,9555,12,4),('Deepti',1125,727,12,0),('anil kumar gehlot',2007,3071,12,0),('MADHU',2510,6825,12,0),('madhu',25,4333,12,0),('piyush',1126,669,11,0),('HARSHIT',1021,4182,10,0),('vipul',11,4361,11,0),('aniruddha',1212,9784,12,0),('AAYUSHI',1111,6385,1,0),('VIPUL',420,1796,11,NULL),('TANYA',1231,4472,12,NULL),('Anisha',1232,8495,5,NULL),('Prashant',1235,4091,12,NULL),('KUNAL',1233,4489,12,NULL),('YASH',12,9771,12,NULL),('KUNAL',12,3779,12,NULL),('kunal g',12,1468,12,NULL),('kuall',13,9031,12,NULL),('Paras Jain',12,4338,12,NULL),('jayesh',213,8057,12,NULL),('VIPUL',123444,5897,12,NULL);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-02-27 13:21:20
