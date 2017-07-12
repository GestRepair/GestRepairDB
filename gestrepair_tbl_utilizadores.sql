CREATE DATABASE  IF NOT EXISTS `gestrepair` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `gestrepair`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestrepair
-- ------------------------------------------------------
-- Server version	5.7.11-log

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
-- Table structure for table `tbl_utilizadores`
--

DROP TABLE IF EXISTS `tbl_utilizadores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_utilizadores` (
  `numUtilizador` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `morada` varchar(50) NOT NULL,
  `codPostal` varchar(8) NOT NULL,
  `localidade` varchar(30) NOT NULL,
  `email` varchar(30) DEFAULT NULL,
  `nif` varchar(9) NOT NULL,
  `contacto` varchar(9) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL,
  `role` int(11) DEFAULT NULL,
  PRIMARY KEY (`numUtilizador`),
  UNIQUE KEY `numUtilizador` (`numUtilizador`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_utilizadores`
--

LOCK TABLES `tbl_utilizadores` WRITE;
/*!40000 ALTER TABLE `tbl_utilizadores` DISABLE KEYS */;
INSERT INTO `tbl_utilizadores` VALUES (1,'Rui Barcelos','Rua João Maria da Costa n9B','2090-093','Alpiarça','aluno18834@ipt.pt','241804744','911909758','rbarcelos','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(2,'Miguel Silva','Vale de Santarém','2005-712','Vale de Santarém','miguelflsilva1995@gmail.com','123123122','919191991','migsilva','46f94c8de14fb36680850768ff1b7f2a',NULL,1,2),(3,'João Bandarra','Agrantes','2022-024','Amrantes','a@f.pt','223123121','987487987','bandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,3),(4,'Pedro Vicente Nunes','Matas','2025-022','Santarém','b@a.pt','123212323','912911911','pnunes','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(5,'João Bandarra','Agrantes','2022-021','Amrantes','a@f.pt','123123121','987487987','jbandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(6,'Oscar Taquara Cardozo','Rua x','2090-099','Alpiarça','cardozo@ipt.pt','414999444','911922923','cardozo','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(7,'João Canoso','Alpiarça','2090-022','Alpiarça','aluno18839@ipt.pt','233244255','911911991','jcanoso','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(8,'Jonas Pistolas','Caixa Futebol Campus','9999-000','Seixal','jonas@slbenfica.pt','881132222','991122991','jonas','46f94c8de14fb36680850768ff1b7f2a',NULL,0,4);
/*!40000 ALTER TABLE `tbl_utilizadores` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 23:17:56
