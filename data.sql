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
INSERT INTO `coche` VALUES ('12345A','Ford','Fiesta'),('12345B','Porsche','911 Carrera'),('12345C','Ferrari','Testarossa'),('12345D','Volkswagen','Polo'),('12345E','Mercedes','E55 AMG'),('12345F','Mercedes','CLK'),('12345G','Ferrari','Italia 458'),('12345H','Lamborghini','Urus'),('12345I','Audi','A4'),('12345J','BMW','Serie 3'),('12345K','Honda','Civic'),('12345Z','Volkswagen','Golf');
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
INSERT INTO `proveedor` VALUES ('11111111A','Calle de Neumáticos, Oviedo','Proveedor de Neumáticos'),('11111111B','Calle de Frenos, Oviedo','Proveedor de Frenos'),('11111111C','Calle de Motores, Oviedo','Proveedor de Motores'),('11111111D','Calle de Baterías, Oviedo','Proveedor de Baterías'),('11111111E','Calle Mayor, Gijón','Recambios Gijón'),('53512555L','Cangas de Onís, 3','Proveedor de Prueba');
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
INSERT INTO `repuesto` VALUES ('A123456789A','Neumático radial de alto rendimiento','Neumático',12,50,'12345A'),('A123456789Z','Filtro de aire de alto rendimiento','Filtro de aire',1,100,'12345B'),('B123456789B','Sistema de frenado completo','Frenos',15,20,'12345B'),('C123456789C','Motor de combustión interna de alto rendimiento','Motor',200,1,'12345C'),('D123456789D','Batería de alta capacidad','Batería',30,2,'12345D'),('E123456789E','Faros delanteros LED','Faros',12,2,'12345E'),('F123456789F','Juego de llantas de aleación','Llantas',10,4,'12345F'),('G123456789G','Suspensión deportiva ajustable','Suspensión',18,2,'12345G'),('H123456789H','Sistema de escape deportivo','Escapes',22,2,'12345H'),('I123456789I','Espejos retrovisores eléctricos','Espejos',2,10,'12345E'),('K123456789K','Motor de combustión interna','Motor',150,1,'12345I'),('L123456789L','Batería de 12V','Batería',30,1,'12345J'),('M123456789M','Juego de faros delanteros LED','Faros delanteros',10,2,'12345K'),('N123456789N','Filtro de aceite de alto rendimiento','Filtro de aceite',2,3,'12345A');
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
INSERT INTO `suministra` VALUES (1,'11111111A','A123456789A'),(2,'11111111B','B123456789B'),(3,'11111111C','C123456789C'),(4,'11111111D','D123456789D'),(5,'11111111A','E123456789E'),(6,'11111111A','F123456789F'),(7,'11111111A','G123456789G'),(8,'11111111A','H123456789H'),(9,'11111111E','K123456789K'),(10,'11111111E','L123456789L'),(11,'11111111E','M123456789M'),(12,'11111111E','N123456789N');
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
INSERT INTO `usuario` VALUES (1,'$2a$12$HKDzfhaHdqNmlWW0OAK0x.BzfrLFJ1mejJDe53sPQJe9pDAyAKmNa','alejandro'),(2,'$2a$12$F3xcrUIsHRJVS3jGix.L8emvf4bSlcDgrK19zFLI7620gczlYAR/2','usuario1'),(3,'$2a$12$MAGpqZXWe42TeZTqpW8K9.vSYAwan1VZeTZ8F7VTBg5JStWJ7Y5Ea','david'),(4,'$2a$10$wfkWFUQv6i6AebPI0DVonuJIBHk9qccloz.lBdTB865/MSvNf1yy2','balbi'),(5,'$2a$10$cIhATDmIGT/8MCFrgKYZ9.6xug9/qlyhNu57FH/HR037i/SEvwW.e','valerie');
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
