CREATE DATABASE  IF NOT EXISTS `gestrepair` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `gestrepair`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gestrepair
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
-- Table structure for table `tbl_brand`
--

DROP TABLE IF EXISTS `tbl_brand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_brand` (
  `idBrand` int(11) NOT NULL AUTO_INCREMENT,
  `nameBrand` varchar(25) NOT NULL,
  PRIMARY KEY (`idBrand`),
  UNIQUE KEY `marca` (`nameBrand`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES (4,'Ford'),(1,'Hyundai'),(3,'Mercedes Benz'),(2,'Volvo');
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employer`
--

DROP TABLE IF EXISTS `tbl_employer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employer` (
  `idEmployer` int(11) NOT NULL AUTO_INCREMENT,
  `user` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idEmployer`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employer`
--

LOCK TABLES `tbl_employer` WRITE;
/*!40000 ALTER TABLE `tbl_employer` DISABLE KEYS */;
INSERT INTO `tbl_employer` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1);
/*!40000 ALTER TABLE `tbl_employer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_employer_repair`
--

DROP TABLE IF EXISTS `tbl_employer_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_employer_repair` (
  `employer` int(11) NOT NULL,
  `repair` int(11) NOT NULL,
  PRIMARY KEY (`employer`,`repair`),
  KEY `repFK` (`repair`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employer_repair`
--

LOCK TABLES `tbl_employer_repair` WRITE;
/*!40000 ALTER TABLE `tbl_employer_repair` DISABLE KEYS */;
INSERT INTO `tbl_employer_repair` VALUES (3,1),(3,2);
/*!40000 ALTER TABLE `tbl_employer_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_encomenda`
--

DROP TABLE IF EXISTS `tbl_encomenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_encomenda` (
  `id_encomenda` int(11) NOT NULL AUTO_INCREMENT,
  `fornecedor` int(11) NOT NULL,
  `peca` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`id_encomenda`),
  KEY `fornecedorfk` (`fornecedor`),
  KEY `pecaencomendafk` (`peca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_encomenda`
--

LOCK TABLES `tbl_encomenda` WRITE;
/*!40000 ALTER TABLE `tbl_encomenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_encomenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_estado_orcamento`
--

DROP TABLE IF EXISTS `tbl_estado_orcamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_orcamento` (
  `id_estadoOrc` int(11) NOT NULL AUTO_INCREMENT,
  `estadoOrcamento` varchar(30) NOT NULL,
  PRIMARY KEY (`id_estadoOrc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_orcamento`
--

LOCK TABLES `tbl_estado_orcamento` WRITE;
/*!40000 ALTER TABLE `tbl_estado_orcamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_orcamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fornecedor`
--

DROP TABLE IF EXISTS `tbl_fornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fornecedor` (
  `id_fornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `nomeFornecedor` varchar(25) NOT NULL,
  PRIMARY KEY (`id_fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fornecedor`
--

LOCK TABLES `tbl_fornecedor` WRITE;
/*!40000 ALTER TABLE `tbl_fornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_fornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_fuel`
--

DROP TABLE IF EXISTS `tbl_fuel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_fuel` (
  `idFuel` int(11) NOT NULL AUTO_INCREMENT,
  `nameFuel` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idFuel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fuel`
--

LOCK TABLES `tbl_fuel` WRITE;
/*!40000 ALTER TABLE `tbl_fuel` DISABLE KEYS */;
INSERT INTO `tbl_fuel` VALUES (1,'Gasolina Sem-Chumbo 95'),(2,'Gasoleo'),(3,'Gasolina Sem Chumbo 98'),(4,'GPL');
/*!40000 ALTER TABLE `tbl_fuel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_model`
--

DROP TABLE IF EXISTS `tbl_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_model` (
  `idModel` int(11) NOT NULL AUTO_INCREMENT,
  `nameModel` varchar(25) NOT NULL,
  `brand` int(11) NOT NULL,
  PRIMARY KEY (`idModel`),
  KEY `marcafk` (`brand`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_model`
--

LOCK TABLES `tbl_model` WRITE;
/*!40000 ALTER TABLE `tbl_model` DISABLE KEYS */;
INSERT INTO `tbl_model` VALUES (1,'H1',1),(2,'S80',2),(3,'B180',3),(4,'Fiesta',4);
/*!40000 ALTER TABLE `tbl_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_orcamentos`
--

DROP TABLE IF EXISTS `tbl_orcamentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_orcamentos` (
  `id_orcamento` int(11) NOT NULL AUTO_INCREMENT,
  `veiculo` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `preco` float NOT NULL,
  `aberturaProcesso` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `TempoReparacao` int(11) NOT NULL,
  `estadoorcamento` int(11) NOT NULL,
  `DataFimOrcamento` date NOT NULL,
  `resolucao` text NOT NULL,
  PRIMARY KEY (`id_orcamento`),
  KEY `veic_fk` (`veiculo`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_orcamentos`
--

LOCK TABLES `tbl_orcamentos` WRITE;
/*!40000 ALTER TABLE `tbl_orcamentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_orcamentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_part`
--

DROP TABLE IF EXISTS `tbl_part`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_part` (
  `idPart` int(11) NOT NULL AUTO_INCREMENT,
  `namePart` varchar(25) NOT NULL,
  `description` text,
  `quantidade` int(11) NOT NULL DEFAULT '0',
  `price` float DEFAULT NULL,
  PRIMARY KEY (`idPart`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_part`
--

LOCK TABLES `tbl_part` WRITE;
/*!40000 ALTER TABLE `tbl_part` DISABLE KEYS */;
INSERT INTO `tbl_part` VALUES (1,'Capo Mercedes','Capo Mercedes',55,300),(2,'Capa Espelho Esquerdo','Com acessórios',34,50);
/*!40000 ALTER TABLE `tbl_part` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_part_repair`
--

DROP TABLE IF EXISTS `tbl_part_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_part_repair` (
  `repair` int(11) NOT NULL,
  `part` int(11) NOT NULL,
  PRIMARY KEY (`repair`,`part`),
  KEY `pecafk` (`part`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_part_repair`
--

LOCK TABLES `tbl_part_repair` WRITE;
/*!40000 ALTER TABLE `tbl_part_repair` DISABLE KEYS */;
INSERT INTO `tbl_part_repair` VALUES (1,1),(2,1),(1,2);
/*!40000 ALTER TABLE `tbl_part_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pecafornecedor`
--

DROP TABLE IF EXISTS `tbl_pecafornecedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pecafornecedor` (
  `idpeca` int(11) NOT NULL AUTO_INCREMENT,
  `idfornecedor` int(11) NOT NULL,
  PRIMARY KEY (`idpeca`,`idfornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pecafornecedor`
--

LOCK TABLES `tbl_pecafornecedor` WRITE;
/*!40000 ALTER TABLE `tbl_pecafornecedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pecafornecedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_pecafornecida`
--

DROP TABLE IF EXISTS `tbl_pecafornecida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_pecafornecida` (
  `idpecafornecida` int(11) NOT NULL AUTO_INCREMENT,
  `pecafornecida` varchar(50) DEFAULT NULL,
  `fornecedor` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpecafornecida`),
  KEY `pecafornecidafornecedorFK` (`fornecedor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_pecafornecida`
--

LOCK TABLES `tbl_pecafornecida` WRITE;
/*!40000 ALTER TABLE `tbl_pecafornecida` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_pecafornecida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_repair`
--

DROP TABLE IF EXISTS `tbl_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_repair` (
  `idRepair` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float DEFAULT NULL,
  `state` int(11) NOT NULL,
  `startDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `finishDate` datetime DEFAULT NULL,
  `information` text,
  PRIMARY KEY (`idRepair`),
  KEY `veiculoFK` (`vehicle`),
  KEY `estadoFK` (`state`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_repair`
--

LOCK TABLES `tbl_repair` WRITE;
/*!40000 ALTER TABLE `tbl_repair` DISABLE KEYS */;
INSERT INTO `tbl_repair` VALUES (1,1,'Batido no Espelho Lado Esquerdo',NULL,2,'2017-07-17 23:00:00',NULL,'Substituição do Espelho'),(2,2,'Capo Amolgado',NULL,2,'2017-07-18 21:26:13',NULL,NULL);
/*!40000 ALTER TABLE `tbl_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_role`
--

DROP TABLE IF EXISTS `tbl_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_role` (
  `idRole` int(11) NOT NULL AUTO_INCREMENT,
  `nameRole` varchar(20) NOT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_role`
--

LOCK TABLES `tbl_role` WRITE;
/*!40000 ALTER TABLE `tbl_role` DISABLE KEYS */;
INSERT INTO `tbl_role` VALUES (1,'Administrador'),(2,'Gestor'),(3,'Funcionário'),(4,'Cliente');
/*!40000 ALTER TABLE `tbl_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_schedule`
--

DROP TABLE IF EXISTS `tbl_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_schedule` (
  `idSchedule` int(11) NOT NULL AUTO_INCREMENT,
  `service` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `isActive` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`idSchedule`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schedule`
--

LOCK TABLES `tbl_schedule` WRITE;
/*!40000 ALTER TABLE `tbl_schedule` DISABLE KEYS */;
INSERT INTO `tbl_schedule` VALUES (4,3,2,'2017-09-21 00:00:00',1),(5,3,2,'2018-02-01 00:00:00',1),(6,3,2,'2017-07-26 09:49:00',1),(7,8,1,'2017-07-19 09:51:00',0),(8,9,1,'2019-01-01 10:00:00',1),(9,8,1,'2017-08-01 15:21:00',1);
/*!40000 ALTER TABLE `tbl_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_service`
--

DROP TABLE IF EXISTS `tbl_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_service` (
  `idService` int(11) NOT NULL AUTO_INCREMENT,
  `nameService` varchar(15) NOT NULL,
  `priceService` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'serviceDefphoto.jpeg',
  PRIMARY KEY (`idService`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_service`
--

LOCK TABLES `tbl_service` WRITE;
/*!40000 ALTER TABLE `tbl_service` DISABLE KEYS */;
INSERT INTO `tbl_service` VALUES (1,'Administrador',0,' ','serviceDefphoto.jpeg'),(2,'Gestor',0,' ','serviceDefphoto.jpeg'),(3,'Bate-Chapas',20,'Reparação ou Substituição de Chapas','serviceDefphoto.jpeg'),(8,'Pintura',25,'Pintura de Automóveis','serviceDefphoto.jpeg'),(9,'Revisão',20,'Mudança do Oleo','serviceDefphoto.jpeg');
/*!40000 ALTER TABLE `tbl_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_state_repair`
--

DROP TABLE IF EXISTS `tbl_state_repair`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_state_repair` (
  `idstate` int(11) NOT NULL AUTO_INCREMENT,
  `nameState` varchar(25) NOT NULL,
  PRIMARY KEY (`idstate`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_state_repair`
--

LOCK TABLES `tbl_state_repair` WRITE;
/*!40000 ALTER TABLE `tbl_state_repair` DISABLE KEYS */;
INSERT INTO `tbl_state_repair` VALUES (1,'Diagonóstico'),(2,'A Reparar'),(3,'Reparado'),(4,'Entregue');
/*!40000 ALTER TABLE `tbl_state_repair` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `street` varchar(50) NOT NULL,
  `zipcode` varchar(8) NOT NULL,
  `city` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `nif` varchar(9) NOT NULL,
  `contact` varchar(9) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `role` int(11) NOT NULL DEFAULT '4',
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `numUtilizador` (`idUser`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Rui Barcelos','Rua João Maria da Costa n9B','2090-093','Alpiarça','aluno18834@ipt.pt','241804744','911909758','rbarcelos','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(2,'Miguel Silva','Vale de Santarém','2005-712','Vale de Santarém','miguelflsilva1995@gmail.com','123123122','919191991','migsilva','46f94c8de14fb36680850768ff1b7f2a',NULL,1,2),(3,'João Bandarra','Agrantes','2022-024','Amrantes','a@f.pt','223123121','987487987','bandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,3),(4,'Pedro Vicente Nunes','Matas','2025-022','Santarém','b@a.pt','123212323','912911911','pnunes','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(5,'João Bandarra','Agrantes','2022-021','Amrantes','a@f.pt','123123121','987487987','jbandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(6,'Oscar Taquara Cardozo','Rua x','2090-099','Alpiarça','cardozo@ipt.pt','414999444','911922923','cardozo','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(7,'João Canoso','Alpiarça','2090-022','Alpiarça','aluno18839@ipt.pt','233244255','911911991','jcanoso','46f94c8de14fb36680850768ff1b7f2a',NULL,1,4),(8,'Jonas Pistolas','Caixa Futebol Campus','9999-000','Seixal','jonas@slbenfica.pt','881132222','991122991','jonas','46f94c8de14fb36680850768ff1b7f2a',NULL,0,4);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_vehicle`
--

DROP TABLE IF EXISTS `tbl_user_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user_vehicle` (
  `user` int(11) NOT NULL,
  `vehicle` int(11) NOT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`user`,`vehicle`),
  KEY `veifk` (`vehicle`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_vehicle`
--

LOCK TABLES `tbl_user_vehicle` WRITE;
/*!40000 ALTER TABLE `tbl_user_vehicle` DISABLE KEYS */;
INSERT INTO `tbl_user_vehicle` VALUES (1,1,1),(1,2,1),(2,3,1);
/*!40000 ALTER TABLE `tbl_user_vehicle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vehicle`
--

DROP TABLE IF EXISTS `tbl_vehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_vehicle` (
  `idVehicle` int(11) NOT NULL AUTO_INCREMENT,
  `registration` varchar(255) DEFAULT NULL,
  `model` int(11) DEFAULT NULL,
  `horsepower` int(11) DEFAULT NULL,
  `displacement` int(11) DEFAULT NULL,
  `kilometers` int(11) DEFAULT NULL,
  `fuel` int(11) DEFAULT NULL,
  `reartiresize` varchar(15) DEFAULT NULL,
  `fronttiresize` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idVehicle`),
  KEY `modeloveiculofk` (`model`),
  KEY `combustivel` (`fuel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vehicle`
--

LOCK TABLES `tbl_vehicle` WRITE;
/*!40000 ALTER TABLE `tbl_vehicle` DISABLE KEYS */;
INSERT INTO `tbl_vehicle` VALUES (1,'99-33-HH',1,22,33,1991999,1,'99','99',NULL),(2,'88-00-XX',2,3,43,222333,2,'33','33',NULL),(3,'88-22-ZZ',3,22,34,133223,1,'33','22',NULL);
/*!40000 ALTER TABLE `tbl_vehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-18 22:40:04
