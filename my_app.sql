CREATE DATABASE  IF NOT EXISTS `my_app` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `my_app`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: my_app
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `restaurants`
--

DROP TABLE IF EXISTS `restaurants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `restaurants` (
  `id_restaurant` int(11) NOT NULL,
  `name` varchar(20) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `lat` decimal(9,7) DEFAULT NULL,
  `lng` decimal(8,7) DEFAULT NULL,
  `kind_food` set('Americana','China','Japonesa','Italiana','Mediterránea','Gourmet') DEFAULT NULL,
  PRIMARY KEY (`id_restaurant`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `restaurants`
--

LOCK TABLES `restaurants` WRITE;
/*!40000 ALTER TABLE `restaurants` DISABLE KEYS */;
INSERT INTO `restaurants` VALUES (1,'KOBUTA Ramen i més','Carrer de Súria, 6, 08014 Barcelona',41.3730407,2.1373389,'China,Japonesa'),(2,'Goiko','Gran Via de les Corts Catalanes, 129, 08014 Barcel',41.3649568,2.1400855,'Americana'),(3,'La terraza Miró','Carrer de Tarragona, 129, 08014 Barcelona',41.3755848,2.1528742,'Mediterránea'),(4,'Nomad Road','Carrer de Manso, 42, 08015 Barcelona',41.3766971,2.1587413,'China,Japonesa'),(5,'La Tagliatella','Gran Via de les Corts Catalanes, 149, 08014 Barcel',41.3643448,2.1456215,'Italiana'),(6,'La Tata','Carrer de Calàbria, 69, 08015 Barcelona',41.3760118,2.1448185,'Mediterránea,Gourmet'),(7,'Barceloneta','Moll dels Pescador, Port Vell, Carrer de l\'Escar, ',41.3751694,2.1852254,'Mediterránea'),(8,'Ginos','Moll d\'Espanya, 5, 08039 Barcelona',41.3743140,2.1836736,'Italiana'),(9,'My Fucking Restauran','Carrer Nou de la Rambla, 35, 08001 Barcelona',41.3755242,2.1733309,'Americana,Italiana'),(10,'Botafumeiro','Carrer Gran de Gràcia, 81, 08012 Barcelona',41.3947452,2.1621070,'Mediterránea,Gourmet');
/*!40000 ALTER TABLE `restaurants` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-05 15:52:30
