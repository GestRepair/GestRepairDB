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
-- Table structure for table `tbl_combustivel`
--

DROP TABLE IF EXISTS `tbl_combustivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_combustivel` (
  `idCombustivel` int(11) NOT NULL AUTO_INCREMENT,
  `Combustivel` varchar(25) NOT NULL,
  PRIMARY KEY (`idCombustivel`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_combustivel`
--

LOCK TABLES `tbl_combustivel` WRITE;
/*!40000 ALTER TABLE `tbl_combustivel` DISABLE KEYS */;
INSERT INTO `tbl_combustivel` VALUES (1,'Gasolina Sem-Chumbo 95'),(2,'Gasoleo'),(3,'Gasolina Sem Chumbo 98'),(4,'GPL');
/*!40000 ALTER TABLE `tbl_combustivel` ENABLE KEYS */;
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
-- Table structure for table `tbl_estado_reparacao`
--

DROP TABLE IF EXISTS `tbl_estado_reparacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_estado_reparacao` (
  `idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_estado_reparacao`
--

LOCK TABLES `tbl_estado_reparacao` WRITE;
/*!40000 ALTER TABLE `tbl_estado_reparacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_estado_reparacao` ENABLE KEYS */;
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
-- Table structure for table `tbl_funcionario`
--

DROP TABLE IF EXISTS `tbl_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_funcionario` (
  `idFunc` int(11) NOT NULL AUTO_INCREMENT,
  `numUser` int(11) NOT NULL,
  `activo` tinyint(1) NOT NULL,
  PRIMARY KEY (`numUser`,`idFunc`),
  KEY `funcfw` (`idFunc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_funcionario`
--

LOCK TABLES `tbl_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_marcaveiculo`
--

DROP TABLE IF EXISTS `tbl_marcaveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_marcaveiculo` (
  `idMarca` int(11) NOT NULL AUTO_INCREMENT,
  `marca` varchar(25) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `marca` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_marcaveiculo`
--

LOCK TABLES `tbl_marcaveiculo` WRITE;
/*!40000 ALTER TABLE `tbl_marcaveiculo` DISABLE KEYS */;
INSERT INTO `tbl_marcaveiculo` VALUES (4,'Ford'),(1,'Hyundai'),(3,'Mercedes Benz'),(2,'Volvo');
/*!40000 ALTER TABLE `tbl_marcaveiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_modeloveiculo`
--

DROP TABLE IF EXISTS `tbl_modeloveiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_modeloveiculo` (
  `idModelo` int(11) NOT NULL AUTO_INCREMENT,
  `modeloVeiculo` varchar(25) NOT NULL,
  `marca` int(11) NOT NULL,
  PRIMARY KEY (`idModelo`),
  KEY `marcafk` (`marca`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_modeloveiculo`
--

LOCK TABLES `tbl_modeloveiculo` WRITE;
/*!40000 ALTER TABLE `tbl_modeloveiculo` DISABLE KEYS */;
INSERT INTO `tbl_modeloveiculo` VALUES (1,'H1',1),(2,'S80',2),(3,'B180',3),(4,'Fiesta',4);
/*!40000 ALTER TABLE `tbl_modeloveiculo` ENABLE KEYS */;
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
-- Table structure for table `tbl_peca`
--

DROP TABLE IF EXISTS `tbl_peca`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_peca` (
  `idpeca` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(25) DEFAULT NULL,
  `descricao` text,
  `quantidade` int(11) DEFAULT NULL,
  `preco` float NOT NULL,
  PRIMARY KEY (`idpeca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_peca`
--

LOCK TABLES `tbl_peca` WRITE;
/*!40000 ALTER TABLE `tbl_peca` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_peca` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_peca_reparacao`
--

DROP TABLE IF EXISTS `tbl_peca_reparacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_peca_reparacao` (
  `idreparacao` int(11) NOT NULL AUTO_INCREMENT,
  `idpeca` int(11) NOT NULL,
  PRIMARY KEY (`idreparacao`,`idpeca`),
  KEY `pecafk` (`idpeca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_peca_reparacao`
--

LOCK TABLES `tbl_peca_reparacao` WRITE;
/*!40000 ALTER TABLE `tbl_peca_reparacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_peca_reparacao` ENABLE KEYS */;
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
-- Table structure for table `tbl_reparacao`
--

DROP TABLE IF EXISTS `tbl_reparacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reparacao` (
  `idReparacao` int(11) NOT NULL AUTO_INCREMENT,
  `veiculo` int(11) DEFAULT NULL,
  `descricao` text,
  `preco` float DEFAULT NULL,
  `estadoReparacao` int(11) DEFAULT NULL,
  `dataInicio` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `datafim` datetime DEFAULT NULL,
  `aReparar` text NOT NULL,
  PRIMARY KEY (`idReparacao`),
  KEY `veiculoFK` (`veiculo`),
  KEY `estadoFK` (`estadoReparacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reparacao`
--

LOCK TABLES `tbl_reparacao` WRITE;
/*!40000 ALTER TABLE `tbl_reparacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reparacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reparacao_funcionario`
--

DROP TABLE IF EXISTS `tbl_reparacao_funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reparacao_funcionario` (
  `funcionario` int(11) NOT NULL,
  `reparacao` int(11) NOT NULL,
  PRIMARY KEY (`funcionario`,`reparacao`),
  KEY `repFK` (`reparacao`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reparacao_funcionario`
--

LOCK TABLES `tbl_reparacao_funcionario` WRITE;
/*!40000 ALTER TABLE `tbl_reparacao_funcionario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reparacao_funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles_utilizador`
--

DROP TABLE IF EXISTS `tbl_roles_utilizador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_roles_utilizador` (
  `idRole` int(11) NOT NULL AUTO_INCREMENT,
  `nomeRole` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`idRole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles_utilizador`
--

LOCK TABLES `tbl_roles_utilizador` WRITE;
/*!40000 ALTER TABLE `tbl_roles_utilizador` DISABLE KEYS */;
INSERT INTO `tbl_roles_utilizador` VALUES (1,'Administrador'),(2,'Gestor'),(3,'Funcionário'),(4,'Cliente');
/*!40000 ALTER TABLE `tbl_roles_utilizador` ENABLE KEYS */;
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
  `priceService` float NOT NULL,
  `description` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL DEFAULT 'serviceDefphoto.jpeg',
  PRIMARY KEY (`idService`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_service`
--

LOCK TABLES `tbl_service` WRITE;
/*!40000 ALTER TABLE `tbl_service` DISABLE KEYS */;
INSERT INTO `tbl_service` VALUES (1,'Pintura',25,'Pintura de Automóveis','serviceDefphoto.jpeg'),(2,'Revisão',20,'Mudança do Oleo','serviceDefphoto.jpeg'),(3,'Bate-Chapas',20,'Reparação ou Substituição de Chapas','serviceDefphoto.jpeg');
/*!40000 ALTER TABLE `tbl_service` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Table structure for table `tbl_utilizadores_veiculos`
--

DROP TABLE IF EXISTS `tbl_utilizadores_veiculos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_utilizadores_veiculos` (
  `numUser` int(11) NOT NULL,
  `numVei` int(11) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`numUser`,`numVei`),
  KEY `veifk` (`numVei`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_utilizadores_veiculos`
--

LOCK TABLES `tbl_utilizadores_veiculos` WRITE;
/*!40000 ALTER TABLE `tbl_utilizadores_veiculos` DISABLE KEYS */;
INSERT INTO `tbl_utilizadores_veiculos` VALUES (1,1,1),(1,2,1),(2,3,1);
/*!40000 ALTER TABLE `tbl_utilizadores_veiculos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_veiculo`
--

DROP TABLE IF EXISTS `tbl_veiculo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_veiculo` (
  `idVeiculo` int(11) NOT NULL AUTO_INCREMENT,
  `matricula` varchar(255) DEFAULT NULL,
  `modelo` int(11) DEFAULT NULL,
  `potencia` int(11) DEFAULT NULL,
  `cilindrada` int(11) DEFAULT NULL,
  `quilometros` int(11) DEFAULT NULL,
  `combustivel` int(11) DEFAULT NULL,
  `medpneusfrente` varchar(15) DEFAULT NULL,
  `medidaspneusatras` varchar(15) DEFAULT NULL,
  `ano` year(4) DEFAULT NULL,
  PRIMARY KEY (`idVeiculo`),
  UNIQUE KEY `matrícula` (`matricula`),
  KEY `modeloveiculofk` (`modelo`),
  KEY `combustivel` (`combustivel`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_veiculo`
--

LOCK TABLES `tbl_veiculo` WRITE;
/*!40000 ALTER TABLE `tbl_veiculo` DISABLE KEYS */;
INSERT INTO `tbl_veiculo` VALUES (1,'99-33-HH',1,22,33,1991999,1,'99','99',1997),(2,'88-00-XX',2,3,43,222333,2,'33','33',2004),(3,'88-22-ZZ',3,22,34,133223,1,'33','22',2005);
/*!40000 ALTER TABLE `tbl_veiculo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'gestrepair'
--

--
-- Dumping routines for database 'gestrepair'
--
/*!50003 DROP PROCEDURE IF EXISTS `infouser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `infouser`(IN `iduser` INT)
BEGIN 
select tbauth.username as username, tbauth.password as password, tbuser.nome as nome, tbuser.morada as morada, tbuser.codPostal as codPostal, tbuser.localidade as localidade, tbuser.email as email, tbuser.nif as nif, tbuser.contacto as contacto, tbroleuser.nomeRole 
from tbl_autenticacao tbauth, tbl_utilizadores tbuser, tbl_roles_utilizador tbroleuser 
WHERE tbauth.utilizador = tbuser.numUtilizador 
and tbauth.role = tbroleuser.idRole
and tbauth.utilizador = iduser 
LIMIT 1;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `listuser` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `listuser`()
BEGIN 
select `tbuser`.`numUtilizador` as `numutilizador`, `tbauth`.`username` as `username`, `tbuser.nome` as `nome`, `tbuser`.`morada` as `morada`, `tbuser`.`codPostal` as `codPostal`, `tbuser`.`localidade` as `localidade`, `tbuser`.`email` as `email`, `tbuser`.`nif` as `nif`, `tbuser`.`contacto` as `contacto`, `tbroleuser`.`nomeRole` 
from `tbl_autenticacao` `tbauth`, `tbl_utilizadores` `tbuser`, `tbl_roles_utilizador` `tbroleuser` 
WHERE `tbauth`.`utilizador` = `tbuser`.`numUtilizador`
and `tbauth`.`role` = `tbroleuser`.`idRole`;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 23:57:06
