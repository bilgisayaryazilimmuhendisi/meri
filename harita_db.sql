-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: harita
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `birlik`
--

DROP TABLE IF EXISTS `birlik`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `birlik` (
  `id` int NOT NULL AUTO_INCREMENT,
  `adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci NOT NULL,
  `mevcut` int DEFAULT NULL,
  `sehir` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `birlik`
--

LOCK TABLES `birlik` WRITE;
/*!40000 ALTER TABLE `birlik` DISABLE KEYS */;
INSERT INTO `birlik` VALUES (1,'egm',3000,'ankara'),(2,'jeodezi',5,'batman'),(3,'zırhlı birlik',15000,'urfa');
/*!40000 ALTER TABLE `birlik` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personel`
--

DROP TABLE IF EXISTS `personel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tcno` varchar(11) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `adi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  `soyadi` varchar(45) CHARACTER SET utf8 COLLATE utf8_turkish_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tcno_UNIQUE` (`tcno`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel`
--

LOCK TABLES `personel` WRITE;
/*!40000 ALTER TABLE `personel` DISABLE KEYS */;
INSERT INTO `personel` VALUES (1,'18263746523','Levent','GÜREN'),(2,'27638273645','Ahmet','KOÇAK'),(3,'123','ahmet','kemer');
/*!40000 ALTER TABLE `personel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personel_adres`
--

DROP TABLE IF EXISTS `personel_adres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personel_adres` (
  `id` int NOT NULL AUTO_INCREMENT,
  `personel_id` int NOT NULL,
  `adres` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `personel_id_fk` (`personel_id`),
  CONSTRAINT `personel_id_fk` FOREIGN KEY (`personel_id`) REFERENCES `personel` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personel_adres`
--

LOCK TABLES `personel_adres` WRITE;
/*!40000 ALTER TABLE `personel_adres` DISABLE KEYS */;
INSERT INTO `personel_adres` VALUES (5,1,'adres2'),(9,1,'musa'),(11,1,'yusuf');
/*!40000 ALTER TABLE `personel_adres` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-03-05 17:15:49
