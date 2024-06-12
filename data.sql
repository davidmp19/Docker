-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proyectoDM
-- ------------------------------------------------------
-- Server version	5.7.44

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
-- Table structure for table `coche`
--

DROP TABLE IF EXISTS `coche`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `coche` (
  `id` varchar(255) NOT NULL,
  `marca` varchar(255) DEFAULT NULL,
  `modelo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coche`
--

LOCK TABLES `coche` WRITE;
/*!40000 ALTER TABLE `coche` DISABLE KEYS */;
INSERT INTO `coche` VALUES ('12345A','For','Fiesta'),('12345B','Porsche','911 Carrera'),('12345C','Ferrari','Testarossa'),('12345D','Volkswagen','Polo'),('12345E','Mercedes','E55 AMG'),('12345F','Mercedes','CLK'),('12345G','Ferrari','Italia 458'),('12345H','Lamborghini','Urus'),('12345I','audi','a4'),('12345J','bmw','serie 3'),('12345K','honda','civic'),('12345Z','Volkswagen','golf');
/*!40000 ALTER TABLE `coche` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedor`
--

DROP TABLE IF EXISTS `proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedor` (
  `dni` varchar(255) NOT NULL,
  `direccion` varchar(50) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedor`
--

LOCK TABLES `proveedor` WRITE;
/*!40000 ALTER TABLE `proveedor` DISABLE KEYS */;
INSERT INTO `proveedor` VALUES ('11111111A','Oviedo','Proveedor de Neumáticos'),('11111111B','Oviedo','Proveedor de Frenos'),('11111111C','Oviedo','Proveedor de Motores'),('11111111D','Oviedo','Proveedor de Baterías'),('11111111E','Calle Mayor, Gijón','Recambios Gijón'),('53512555L','cangas de onis, 3','pruebaProveedoredit'),('53512555Z','aqui','DAVID');
/*!40000 ALTER TABLE `proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `repuesto`
--

DROP TABLE IF EXISTS `repuesto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `repuesto` (
  `id` varchar(255) NOT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `nombre` varchar(30) DEFAULT NULL,
  `peso` int(11) NOT NULL,
  `unidades` int(11) NOT NULL,
  `fk_coche` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK1bllam11p7l8luvpvavek80e3` (`fk_coche`),
  CONSTRAINT `FK1bllam11p7l8luvpvavek80e3` FOREIGN KEY (`fk_coche`) REFERENCES `coche` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `repuesto`
--

LOCK TABLES `repuesto` WRITE;
/*!40000 ALTER TABLE `repuesto` DISABLE KEYS */;
INSERT INTO `repuesto` VALUES ('A123456789A','ta weno','SERGIOO',0,13,NULL),('A123456789Z','este es un muy buen repuesto','DAVID',10,10,'12345F'),('B123456789B','Sistema de frenado completo','Frenos',15,20,'12345B'),('C123456789C','Motor de combustión interna de alto rendimiento','Motor',200,1,'12345C'),('D123456789D','Batería de alta capacidad','Batería',30,2,'12345D'),('E123456789E','Faros delanteros LED','Faros',12,2,'12345E'),('F123456789F','Juego de llantas de aleación','Llantas',10,4,'12345F'),('G123456789G','Suspensión deportiva ajustable','Suspensión',18,2,'12345G'),('H123456789H','Sistema de escape deportivo','Escapes',22,2,'12345H'),('hdsklksdlknlkdmlsmdkdlkadadajldjaljdalkjd','buen repuesto','repuesto100',0,0,'12345E'),('K123456789K','Motor de combustión interna','Motor',150,1,'12345I'),('L123456789L','Batería de 12V','Batería',30,1,'12345J'),('M123456789M','Juego de faros delanteros LED','Faros delanteros',10,2,'12345K'),('N123456789N','Filtro de aire de alto rendimiento','Filtro de aire',2,3,'12345A');
/*!40000 ALTER TABLE `repuesto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `suministra`
--

DROP TABLE IF EXISTS `suministra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `suministra` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dniproveedor` varchar(255) DEFAULT NULL,
  `idrepuesto` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtee4rmclgyarvjtxvpi6gpk7d` (`dniproveedor`),
  KEY `FKmj41iorkvy2006dqe097yvog3` (`idrepuesto`),
  CONSTRAINT `FKmj41iorkvy2006dqe097yvog3` FOREIGN KEY (`idrepuesto`) REFERENCES `repuesto` (`id`),
  CONSTRAINT `FKtee4rmclgyarvjtxvpi6gpk7d` FOREIGN KEY (`dniproveedor`) REFERENCES `proveedor` (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `suministra`
--

LOCK TABLES `suministra` WRITE;
/*!40000 ALTER TABLE `suministra` DISABLE KEYS */;
INSERT INTO `suministra` VALUES (18,'11111111A','A123456789A'),(19,'11111111B','B123456789B'),(20,'11111111C','C123456789C'),(21,'11111111D','D123456789D'),(22,'11111111A','E123456789E'),(23,'11111111A','F123456789F'),(24,'11111111A','G123456789G'),(25,'11111111A','H123456789H'),(26,'11111111E','K123456789K'),(27,'11111111E','L123456789L'),(28,'11111111E','M123456789M'),(29,'11111111E','N123456789N');
/*!40000 ALTER TABLE `suministra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK863n1y3x0jalatoir4325ehal` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES (5,'$2a$12$HKDzfhaHdqNmlWW0OAK0x.BzfrLFJ1mejJDe53sPQJe9pDAyAKmNa','alejandro'),(6,'$2a$12$F3xcrUIsHRJVS3jGix.L8emvf4bSlcDgrK19zFLI7620gczlYAR/2','usuario1'),(7,'$2a$12$MAGpqZXWe42TeZTqpW8K9.vSYAwan1VZeTZ8F7VTBg5JStWJ7Y5Ea','david'),(8,'$2a$10$bhOQQ1N6ZnboKiHgziBh6uqng9Std1rpB2MCZKgfVNAeX1NnD3962','hola'),(9,'$2a$10$wfkWFUQv6i6AebPI0DVonuJIBHk9qccloz.lBdTB865/MSvNf1yy2','balbi'),(10,'$2a$10$cIhATDmIGT/8MCFrgKYZ9.6xug9/qlyhNu57FH/HR037i/SEvwW.e','valerie');
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-10  8:48:04
