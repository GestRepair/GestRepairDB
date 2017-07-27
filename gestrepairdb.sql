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
  `nameBrand` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`idBrand`),
  UNIQUE KEY `marca` (`nameBrand`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_brand`
--

LOCK TABLES `tbl_brand` WRITE;
/*!40000 ALTER TABLE `tbl_brand` DISABLE KEYS */;
INSERT INTO `tbl_brand` VALUES (20,'Acura'),(50,'Aixam'),(21,'Alfa Romeo'),(22,'Aston Martin'),(23,'Audi'),(24,'Bentley'),(10,'BMW'),(52,'Bugatti'),(51,'Buick'),(25,'Cadillac'),(53,'Caterham'),(26,'Chevrolet'),(27,'Chrysler'),(16,'Citroen'),(28,'Dacia'),(55,'Daewoo'),(54,'DAF'),(57,'Daihatsu'),(56,'Datsun'),(29,'Dodge'),(30,'Ferrari'),(6,'Fiat'),(4,'Ford'),(31,'Honda'),(1,'Hyundai'),(58,'Infinity'),(12,'Iveco'),(59,'Izusu'),(5,'Jaguar'),(32,'Jeep'),(33,'Kia'),(34,'Lamborghini'),(35,'Lancia'),(36,'Land Rover'),(37,'Lexus'),(60,'Lincoln'),(61,'Lotus'),(38,'Maserati'),(62,'Maybach'),(39,'Mazda'),(40,'McLaren'),(3,'Mercedes Benz'),(63,'MG'),(41,'Mini'),(8,'Mitsubishi'),(72,'Morgan'),(64,'Morris'),(14,'Peugeot'),(66,'Plymouth'),(65,'Pontiac'),(42,'Porsche'),(15,'Renault'),(43,'Rolls Royce'),(44,'Rover'),(18,'SAAB'),(17,'Scania'),(45,'Seat'),(19,'Skoda'),(7,'Smart'),(67,'Ssangyong'),(46,'Subaru'),(68,'Suzuki'),(47,'Tesla'),(9,'Toyota'),(69,'Triumph'),(13,'TVR'),(49,'UMM'),(48,'Vauxhall'),(70,'Vector'),(11,'Volkswagen'),(2,'Volvo'),(71,'Wiesmann');
/*!40000 ALTER TABLE `tbl_brand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_budget`
--

DROP TABLE IF EXISTS `tbl_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_budget` (
  `idBudget` int(11) NOT NULL AUTO_INCREMENT,
  `vehicle` int(11) NOT NULL,
  `service` int(11) NOT NULL,
  `description` text NOT NULL,
  `price` float DEFAULT NULL,
  `processOpen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `repairTime` int(11) DEFAULT NULL,
  `state` int(11) NOT NULL,
  `processClose` date DEFAULT NULL,
  `resolution` text,
  PRIMARY KEY (`idBudget`),
  KEY `veic_fk` (`vehicle`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_budget`
--

LOCK TABLES `tbl_budget` WRITE;
/*!40000 ALTER TABLE `tbl_budget` DISABLE KEYS */;
INSERT INTO `tbl_budget` VALUES (1,1,8,'O carro Não pisca do lado direito, na parte frontal e já houve troca de lampadas',NULL,'2017-07-19 10:04:45',NULL,1,NULL,NULL),(2,1,9,'O carro Necessita de uma pintura',NULL,'2017-07-19 10:04:45',NULL,2,NULL,'Tinta');
/*!40000 ALTER TABLE `tbl_budget` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employer`
--

LOCK TABLES `tbl_employer` WRITE;
/*!40000 ALTER TABLE `tbl_employer` DISABLE KEYS */;
INSERT INTO `tbl_employer` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1),(7,6,8,1),(8,6,8,1),(9,4,9,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_model`
--

LOCK TABLES `tbl_model` WRITE;
/*!40000 ALTER TABLE `tbl_model` DISABLE KEYS */;
INSERT INTO `tbl_model` VALUES (1,'H1',1),(2,'S80',2),(3,'Class B',3),(4,'Fiesta',4),(5,'S60',2),(6,'S40',2),(7,'V40',2),(8,'XC60',2),(9,'V70',2),(10,'XC70',2),(11,'400 Series',2),(12,'700 Series',2),(13,'XC90',2),(14,'C70',2),(15,'Amazon',2),(16,'140 Series',2),(17,'164',2),(18,'P1800',2),(19,'200 Series',2),(20,'300 Series',2),(21,'Vision G',1),(22,'Ioniq',1),(23,'N 2025 Vision GT',1),(24,'Intrado',1),(25,'PassoCorto',1),(26,'ix25',1),(27,'HCD-14',1),(28,'HND-9',1),(29,'Mistra',1),(30,'I-oniq',1),(31,'Veloster',1),(32,'Curb',1),(33,'i40',1),(34,'HCD-12 Curb',1),(35,'Blue2',1),(36,'Verna',1),(37,'Blue-Will',1),(38,'ix20',1),(39,'H-1',1),(40,'i-flow',1),(41,'ix35',1),(42,'ix-Metro',1),(43,'HCD-11 Nuvis',1),(44,'HED-6 ix-Onic',1),(45,'i20',1),(46,'Matrix Concept',1),(47,'HED-5 I Mode',1),(48,'i-Blue',1),(49,'Genesis',1),(50,'i30',1),(51,'i10',1),(52,'Entourage',1),(53,'QarmaQ',1),(54,'Veloster Sporty Coupé',1),(55,'Azera',1),(56,'Veracruz',1),(57,'ix55',1),(58,'Portico',1),(59,'Arnejs',1),(60,'Genus',1),(61,'HCD-9 Talus',1),(62,'HCD-10 Hellion',1),(63,'Neos-3',1),(64,'HED-1',1),(65,'HCD-8 Sports Tourer',1),(66,'Tucson',1),(67,'Neos-2',1),(68,'Getz',1),(69,'HCD-7',1),(70,'Clix',1),(71,'HCD-6',1),(72,'Matrix',1),(73,'Santa Fe',1),(74,'NEOS',1),(75,'Crosstour Concept',1),(76,'Equus',1),(77,'Euro-1',1),(78,'Santa Fe Concept',1),(79,'Avatar',1),(80,'Atos',1),(81,'Atoz',1),(82,'Starex',1),(83,'i800',1),(84,'Coupe',1),(85,'Accent',1),(86,'Elantra',1),(87,'Lantra',1),(88,'GALLOPER',1),(89,'S-Coupe',1),(90,'Sonata',1),(91,'Grandeur',1),(92,'Excel',1),(93,'Stellar',1),(94,'Pony',1),(95,'HCD-1',1),(96,'HCD-2',1),(97,'HCD-3',1),(98,'XG300',1),(99,'66',2),(100,'850',2),(101,'C30',2),(102,'PV 444',2),(103,'PV 544',2),(104,'PV 60',2),(105,'S70',2),(106,'V50',2),(107,'1500 California',2),(108,'V4',2),(109,'PV 801',2),(110,'PV36',2),(111,'V60',2),(112,'Duett',2),(113,'YCC (Your Concept Car)',2),(114,'Air Motion Design Study',2),(115,'Universe',2),(116,'Concept You',2),(117,'ÖV4',2),(118,'Concept Coupé',2),(119,'LCP2000',2),(120,'PCC',2),(121,'Concept Estate',2),(122,'VESC',2),(123,'ACC',2),(124,'ECC',2),(125,'SCC',2),(126,'3CC',2),(127,'VCC',2),(128,'S90',2),(129,'V90',2),(130,'GLA',3),(131,'Class A',3),(132,'Class C',3),(133,'Class E',3),(134,'Class S',3),(135,'CLA',3),(136,'CLS',3),(137,'SLK',3),(138,'SL',3),(139,'CLK',3),(140,'CL',3),(141,'GLK',3),(142,'ML',3),(143,'GL',3),(144,'Class G',3),(145,'Class V',3),(146,'W129',3),(147,'W142',3),(148,'W138',3),(149,'W143',3),(150,'W29',3),(151,'W18',3),(152,'W22',3),(153,'W07',3),(154,'W128',3),(155,'W105',3),(156,'W180',3),(157,'W120',3),(158,'W121',3),(159,'W187',3),(160,'W186',3),(161,'W188',3),(162,'W189',3),(163,'W136',3),(164,'W157',3),(165,'W222',3),(166,'SLC',3),(167,'AMG GT',3),(168,'SLC',3),(169,'GLC',3),(170,'AMG GT',3),(171,'GLS',3),(172,'GLC',3),(173,'GLE',3),(174,'Viano Marco Polo',3),(175,'GLE',3),(176,'Citan',3),(177,'SLS',3),(178,'Class R',3),(179,'SLR McLaren',3),(180,'Vaneo',3),(181,'Vision Concept',3),(182,'W201',3),(183,'C107',3),(184,'W115',3),(185,'W114',3),(186,'Probe',4),(187,'Ka',4),(188,'Focus',4),(189,'Mondeo',4),(190,'Falcon',4),(191,'Mustang',4),(192,'C Max',4),(193,'S Max',4),(194,'Galaxy',4),(195,'Kuga',4),(196,'Ranger',4),(197,'Tourneo Connect',4),(198,'Escort',4),(199,'Orion',4),(200,'Maverick',4),(201,'Scorpio',4),(202,'Lotus Cortina',4),(203,'Cortina',4),(204,'Edge',4),(205,'EcoSport',4),(206,'F-150',4),(207,'Torneo Courier',4),(208,'B Max',4),(209,'Torneo Custom',4),(210,'Figo',4),(211,'Connect',4),(212,'Shelby',4),(213,'GT40',4),(214,'Fusion',4),(215,'Taurus',4),(216,'Windstar',4),(217,'Cougar',4),(218,'Expedition',4),(219,'Puma',4),(220,'GT90',4),(221,'Thunderbird',4),(222,'Sierra',4),(223,'Falcon',4),(224,'Granada',4),(225,'Taunus',4),(226,'Capri',4),(227,'Anglia',4),(228,'Model T',4),(229,'F-Pace',5),(230,'F-Type Convertible',5),(231,'F-Type',5),(232,'XF',5),(233,'XE',5),(234,'XJ',5),(235,'XK',5),(236,'X-Type',5),(237,'S-Type',5),(238,'XJS',5),(239,'Series III',5),(240,'E-Type',5),(241,'Daimler DS 420',5),(242,'127',6),(243,'500',6),(244,'Punto',6),(245,'Marea',6),(246,'Croma',6),(247,'Tipo',6),(248,'Stilo',6),(249,'132',6),(250,'124',6),(251,'130',6),(252,'Panda',6),(253,'Panda',6),(254,'Bravo',6),(255,'Uno',6),(256,'Doblo',6),(257,'Fullback',6),(258,'Qubo',6),(259,'Freemont',6),(260,'Fiorino',6),(261,'Strada',6),(262,'Idea',6),(263,'Ulysse',6),(264,'Multipla',6),(265,'Barchetta',6),(266,'Coupe',6),(267,'Brava',6),(268,'Palio',6),(269,'Seicento',6),(270,'Regatta',6),(271,'Ritmo',6),(272,'Argenta',6),(273,'126',6),(274,'Campagnola',6),(275,'128',6),(276,'Dino',6),(277,'Sedici',6),(278,'Linea',6),(279,'ForTwo Cabrio',7),(280,'Forfour',7),(281,'ForTwo Coupe',7),(282,'Roadster',7),(283,'ForFour',7),(284,'CrossBlade',7);
/*!40000 ALTER TABLE `tbl_model` ENABLE KEYS */;
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
  `service` int(11) NOT NULL,
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
INSERT INTO `tbl_repair` VALUES (1,1,'Batido no Espelho Lado Esquerdo',NULL,3,2,'2017-07-18 23:08:21',NULL,'Substituição do Espelho'),(2,2,'Capo Amolgado',NULL,3,2,'2017-07-18 23:08:21',NULL,NULL);
/*!40000 ALTER TABLE `tbl_repair` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_schedule`
--

LOCK TABLES `tbl_schedule` WRITE;
/*!40000 ALTER TABLE `tbl_schedule` DISABLE KEYS */;
INSERT INTO `tbl_schedule` VALUES (4,3,2,'2017-09-21 00:00:00',0),(5,3,2,'2018-02-01 00:00:00',0),(6,3,2,'2017-07-26 09:49:00',1),(7,8,1,'2017-07-19 09:51:00',0),(8,9,1,'2019-01-01 10:00:00',1),(9,8,1,'2017-08-01 15:21:00',1),(10,8,1,'2017-07-19 14:00:00',1),(11,9,1,'2017-07-19 14:55:00',1),(12,8,1,'2019-03-05 14:00:00',1),(13,3,2,'2021-07-11 16:00:00',1),(14,9,1,'2021-12-30 15:00:00',1),(15,9,2,'2021-12-31 18:00:00',1);
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
  `nameService` varchar(15) DEFAULT NULL,
  `priceService` float DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `photo` varchar(255) DEFAULT 'serviceDefphoto.jpeg',
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
-- Table structure for table `tbl_state_budget`
--

DROP TABLE IF EXISTS `tbl_state_budget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_state_budget` (
  `idState` int(11) NOT NULL AUTO_INCREMENT,
  `nameState` varchar(30) NOT NULL,
  PRIMARY KEY (`idState`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_state_budget`
--

LOCK TABLES `tbl_state_budget` WRITE;
/*!40000 ALTER TABLE `tbl_state_budget` DISABLE KEYS */;
INSERT INTO `tbl_state_budget` VALUES (1,'Avaliação'),(2,'Em Aprovação'),(3,'Aprovado'),(4,'Não Aprovado');
/*!40000 ALTER TABLE `tbl_state_budget` ENABLE KEYS */;
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
  `nif` varchar(9) NOT NULL DEFAULT '999999999',
  `contact` varchar(9) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '0',
  `isEmployer` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`idUser`),
  UNIQUE KEY `numUtilizador` (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Rui Barcelos','Rua João Maria da Costa n9B','2090-093','Alpiarça','barcelos.rui@gmail.com','241804744','911909758','rbarcelos','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(2,'Miguel Silva','Vale de Santarém','2005-712','Vale de Santarém','miguelflsilva1995@gmail.com','123123122','919191991','migsilva','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(3,'João Bandarra','Agrantes','2022-024','Amrantes','a@f.pt','223123121','987487987','bandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(4,'Pedro Vicente Nunes','Matas','2025-022','Santarém','b@a.pt','123212323','912911911','pnunes','46f94c8de14fb36680850768ff1b7f2a',NULL,1,0),(5,'João Bandarra','Agrantes','2022-021','Amrantes','a@f.pt','123123121','987487987','jbandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(6,'Oscar Taquara Cardozo','Rua x','2090-099','Alpiarça','cardozo@ipt.pt','414999444','911922923','cardozo','46f94c8de14fb36680850768ff1b7f2a',NULL,1,0),(7,'João Canoso','Alpiarça','2090-022','Alpiarça','aluno18839@ipt.pt','233244255','911911991','jcanoso','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(8,'Jonas Pistolas','Caixa Futebol Campus','9999-000','Seixal','jonas@slbenfica.pt','881132222','991122991','jonas','46f94c8de14fb36680850768ff1b7f2a',NULL,0,1),(9,'Rui Vitória','Seixal','2090-093','Seixal','vitoria@slbenfica.pt','222000111','915462000','vitoria','46f94c8de14fb36680850768ff1b7f2a',NULL,0,0),(13,'Aluno Rui Barcelos','Alpiarça','2090-093','Alpiarça','a@a.pt','234992119','911991199','aluno18834','46f94c8de14fb36680850768ff1b7f2a',NULL,1,0),(14,'Aluno Rui','asas','1231-233','asdasd','a2@1.ss','191292999','999222999','arui','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(15,'Helder Postiga','Alcochete','2999-999','Alcochete','aluno18834@ipt.pt','999922212','912112112','postiga88','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1);
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
INSERT INTO `tbl_user_vehicle` VALUES (1,1,1),(1,2,1),(1,23,1),(1,29,1),(1,30,1),(1,31,1),(1,34,1),(1,35,1),(2,3,1);
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
  `registration` varchar(255) NOT NULL,
  `model` int(11) NOT NULL,
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
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vehicle`
--

LOCK TABLES `tbl_vehicle` WRITE;
/*!40000 ALTER TABLE `tbl_vehicle` DISABLE KEYS */;
INSERT INTO `tbl_vehicle` VALUES (1,'99-33-HH',1,22,33,1991999,1,'99','99',NULL),(2,'88-00-XX',2,3,43,222333,2,'33','33',NULL),(3,'88-22-ZZ',3,22,34,133223,1,'33','22',NULL),(4,'99-HU-77',1,NULL,NULL,NULL,1,NULL,NULL,NULL),(5,'11-33-DD',29,NULL,NULL,NULL,1,NULL,NULL,NULL),(6,'88-00-DD',29,NULL,NULL,NULL,1,NULL,NULL,NULL),(7,'99-22-FF',7,NULL,NULL,NULL,1,NULL,NULL,NULL),(8,'99-22-DS',7,NULL,NULL,NULL,1,NULL,NULL,NULL),(9,'99-22-DH',7,NULL,NULL,NULL,1,NULL,NULL,NULL),(10,'99-HD-77',99,NULL,NULL,NULL,2,NULL,NULL,NULL),(11,'99-22-AK',2,NULL,NULL,NULL,3,NULL,NULL,NULL),(12,'99-22-AK',2,NULL,NULL,NULL,4,NULL,NULL,NULL),(13,'99-22-AK',2,NULL,NULL,NULL,2,NULL,NULL,NULL),(14,'99-22-DD',2,NULL,NULL,NULL,1,NULL,NULL,NULL),(15,'99-22-DD',2,NULL,NULL,NULL,2,NULL,NULL,NULL),(16,'99-22-DD',2,NULL,NULL,NULL,3,NULL,NULL,NULL),(17,'99-22-DD',2,NULL,NULL,NULL,1,NULL,NULL,NULL),(18,'99-GD-77',99,NULL,NULL,NULL,2,NULL,NULL,NULL),(19,'99-GD-77',99,NULL,NULL,NULL,4,NULL,NULL,NULL),(20,'99-GD-77',99,NULL,NULL,NULL,1,NULL,NULL,NULL),(21,'99-GD-77',99,NULL,NULL,NULL,3,NULL,NULL,NULL),(22,'99-GD-77',99,NULL,NULL,NULL,2,NULL,NULL,NULL),(23,'99-RV-77',99,NULL,NULL,NULL,1,NULL,NULL,NULL),(24,'99-RV-77',99,NULL,NULL,NULL,2,NULL,NULL,NULL),(25,'99-RV-77',99,NULL,NULL,NULL,2,NULL,NULL,NULL),(26,'99-RV-77',99,NULL,NULL,NULL,3,NULL,NULL,NULL),(27,'99-RV-77',99,NULL,NULL,NULL,1,NULL,NULL,NULL),(28,'99-RV-77',99,NULL,NULL,NULL,2,NULL,NULL,NULL),(29,'66-MF-99',14,NULL,NULL,NULL,2,NULL,NULL,NULL),(30,'99-99-FF',19,NULL,NULL,NULL,1,NULL,NULL,NULL),(31,'33-99-HH',17,NULL,NULL,NULL,1,NULL,NULL,NULL),(32,'33-99-HH',17,NULL,NULL,NULL,3,NULL,NULL,NULL),(33,'33-99-HH',17,NULL,NULL,NULL,3,NULL,NULL,NULL),(34,'00-QQ-36',3,NULL,NULL,NULL,1,NULL,NULL,NULL),(35,'99-33-ZZ',4,NULL,NULL,NULL,2,NULL,NULL,NULL);
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

-- Dump completed on 2017-07-27 20:42:51
