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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-12 23:44:56
