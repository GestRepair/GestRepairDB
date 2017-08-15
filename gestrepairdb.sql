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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_employer`
--

LOCK TABLES `tbl_employer` WRITE;
/*!40000 ALTER TABLE `tbl_employer` DISABLE KEYS */;
INSERT INTO `tbl_employer` VALUES (1,1,1,1),(2,2,2,1),(3,3,3,1),(4,6,5,1),(5,4,9,1),(6,15,7,1),(7,14,8,1),(8,13,5,1),(9,5,4,1),(10,9,6,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_fuel`
--

LOCK TABLES `tbl_fuel` WRITE;
/*!40000 ALTER TABLE `tbl_fuel` DISABLE KEYS */;
INSERT INTO `tbl_fuel` VALUES (1,'Gasolina Sem-Chumbo 95'),(2,'Gasoleo'),(3,'Gasolina Sem Chumbo 98'),(4,'GPL'),(5,'Híbrido'),(6,'Elétrico');
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
) ENGINE=InnoDB AUTO_INCREMENT=1535 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_model`
--

LOCK TABLES `tbl_model` WRITE;
/*!40000 ALTER TABLE `tbl_model` DISABLE KEYS */;
INSERT INTO `tbl_model` VALUES (1,'H1',1),(2,'S80',2),(3,'Class B',3),(4,'Fiesta',4),(5,'S60',2),(6,'S40',2),(7,'V40',2),(8,'XC60',2),(9,'V70',2),(10,'XC70',2),(11,'400 Series',2),(12,'700 Series',2),(13,'XC90',2),(14,'C70',2),(15,'Amazon',2),(16,'140 Series',2),(17,'164',2),(18,'P1800',2),(19,'200 Series',2),(20,'300 Series',2),(21,'Vision G',1),(22,'Ioniq',1),(23,'N 2025 Vision GT',1),(24,'Intrado',1),(25,'PassoCorto',1),(26,'ix25',1),(27,'HCD-14',1),(28,'HND-9',1),(29,'Mistra',1),(30,'I-oniq',1),(31,'Veloster',1),(32,'Curb',1),(33,'i40',1),(34,'HCD-12 Curb',1),(35,'Blue2',1),(36,'Verna',1),(37,'Blue-Will',1),(38,'ix20',1),(39,'H-1',1),(40,'i-flow',1),(41,'ix35',1),(42,'ix-Metro',1),(43,'HCD-11 Nuvis',1),(44,'HED-6 ix-Onic',1),(45,'i20',1),(46,'Matrix Concept',1),(47,'HED-5 I Mode',1),(48,'i-Blue',1),(49,'Genesis',1),(50,'i30',1),(51,'i10',1),(52,'Entourage',1),(53,'QarmaQ',1),(54,'Veloster Sporty Coupé',1),(55,'Azera',1),(56,'Veracruz',1),(57,'ix55',1),(58,'Portico',1),(59,'Arnejs',1),(60,'Genus',1),(61,'HCD-9 Talus',1),(62,'HCD-10 Hellion',1),(63,'Neos-3',1),(64,'HED-1',1),(65,'HCD-8 Sports Tourer',1),(66,'Tucson',1),(67,'Neos-2',1),(68,'Getz',1),(69,'HCD-7',1),(70,'Clix',1),(71,'HCD-6',1),(72,'Matrix',1),(73,'Santa Fe',1),(74,'NEOS',1),(75,'Crosstour Concept',1),(76,'Equus',1),(77,'Euro-1',1),(78,'Santa Fe Concept',1),(79,'Avatar',1),(80,'Atos',1),(81,'Atoz',1),(82,'Starex',1),(83,'i800',1),(84,'Coupe',1),(85,'Accent',1),(86,'Elantra',1),(87,'Lantra',1),(88,'GALLOPER',1),(89,'S-Coupe',1),(90,'Sonata',1),(91,'Grandeur',1),(92,'Excel',1),(93,'Stellar',1),(94,'Pony',1),(95,'HCD-1',1),(96,'HCD-2',1),(97,'HCD-3',1),(98,'XG300',1),(99,'66',2),(100,'850',2),(101,'C30',2),(102,'PV 444',2),(103,'PV 544',2),(104,'PV 60',2),(105,'S70',2),(106,'V50',2),(107,'1500 California',2),(108,'V4',2),(109,'PV 801',2),(110,'PV36',2),(111,'V60',2),(112,'Duett',2),(113,'YCC (Your Concept Car)',2),(114,'Air Motion Design Study',2),(115,'Universe',2),(116,'Concept You',2),(117,'ÖV4',2),(118,'Concept Coupé',2),(119,'LCP2000',2),(120,'PCC',2),(121,'Concept Estate',2),(122,'VESC',2),(123,'ACC',2),(124,'ECC',2),(125,'SCC',2),(126,'3CC',2),(127,'VCC',2),(128,'S90',2),(129,'V90',2),(130,'GLA',3),(131,'Class A',3),(132,'Class C',3),(133,'Class E',3),(134,'Class S',3),(135,'CLA',3),(136,'CLS',3),(137,'SLK',3),(138,'SL',3),(139,'CLK',3),(140,'CL',3),(141,'GLK',3),(142,'ML',3),(143,'GL',3),(144,'Class G',3),(145,'Class V',3),(146,'W129',3),(147,'W142',3),(148,'W138',3),(149,'W143',3),(150,'W29',3),(151,'W18',3),(152,'W22',3),(153,'W07',3),(154,'W128',3),(155,'W105',3),(156,'W180',3),(157,'W120',3),(158,'W121',3),(159,'W187',3),(160,'W186',3),(161,'W188',3),(162,'W189',3),(163,'W136',3),(164,'W157',3),(165,'W222',3),(166,'SLC',3),(167,'AMG GT',3),(168,'SLC',3),(169,'GLC',3),(170,'AMG GT',3),(171,'GLS',3),(172,'GLC',3),(173,'GLE',3),(174,'Viano Marco Polo',3),(175,'GLE',3),(176,'Citan',3),(177,'SLS',3),(178,'Class R',3),(179,'SLR McLaren',3),(180,'Vaneo',3),(181,'Vision Concept',3),(182,'W201',3),(183,'C107',3),(184,'W115',3),(185,'W114',3),(186,'Probe',4),(187,'Ka',4),(188,'Focus',4),(189,'Mondeo',4),(190,'Falcon',4),(191,'Mustang',4),(192,'C Max',4),(193,'S Max',4),(194,'Galaxy',4),(195,'Kuga',4),(196,'Ranger',4),(197,'Tourneo Connect',4),(198,'Escort',4),(199,'Orion',4),(200,'Maverick',4),(201,'Scorpio',4),(202,'Lotus Cortina',4),(203,'Cortina',4),(204,'Edge',4),(205,'EcoSport',4),(206,'F-150',4),(207,'Torneo Courier',4),(208,'B Max',4),(209,'Torneo Custom',4),(210,'Figo',4),(211,'Connect',4),(212,'Shelby',4),(213,'GT40',4),(214,'Fusion',4),(215,'Taurus',4),(216,'Windstar',4),(217,'Cougar',4),(218,'Expedition',4),(219,'Puma',4),(220,'GT90',4),(221,'Thunderbird',4),(222,'Sierra',4),(223,'Falcon',4),(224,'Granada',4),(225,'Taunus',4),(226,'Capri',4),(227,'Anglia',4),(228,'Model T',4),(229,'F-Pace',5),(230,'F-Type Convertible',5),(231,'F-Type',5),(232,'XF',5),(233,'XE',5),(234,'XJ',5),(235,'XK',5),(236,'X-Type',5),(237,'S-Type',5),(238,'XJS',5),(239,'Series III',5),(240,'E-Type',5),(241,'Daimler DS 420',5),(242,'127',6),(243,'500',6),(244,'Punto',6),(245,'Marea',6),(246,'Croma',6),(247,'Tipo',6),(248,'Stilo',6),(249,'132',6),(250,'124',6),(251,'130',6),(252,'Panda',6),(253,'Panda',6),(254,'Bravo',6),(255,'Uno',6),(256,'Doblo',6),(257,'Fullback',6),(258,'Qubo',6),(259,'Freemont',6),(260,'Fiorino',6),(261,'Strada',6),(262,'Idea',6),(263,'Ulysse',6),(264,'Multipla',6),(265,'Barchetta',6),(266,'Coupe',6),(267,'Brava',6),(268,'Palio',6),(269,'Seicento',6),(270,'Regatta',6),(271,'Ritmo',6),(272,'Argenta',6),(273,'126',6),(274,'Campagnola',6),(275,'128',6),(276,'Dino',6),(277,'Sedici',6),(278,'Linea',6),(279,'ForTwo Cabrio',7),(280,'Forfour',7),(281,'ForTwo Coupe',7),(282,'Roadster',7),(283,'ForFour',7),(284,'CrossBlade',7),(285,'Pajero',8),(286,'L200',8),(287,'Colt',8),(288,'Space Runner',8),(289,'Outlander',8),(290,'Galant',8),(291,'Eclipse',8),(292,'ASX',8),(293,'Space Star',8),(294,'Lancer',8),(295,'Grandis',8),(296,'i',8),(297,'AirTrek',8),(298,'Space Gear',8),(299,'Carisma',8),(300,'3000GT',8),(301,'FTO',8),(302,'Space Wagon',8),(303,'Sigma',8),(304,'Starion',8),(305,'Tredia',8),(306,'Cordia',8),(307,'Sapporo',8),(308,'Celeste',8),(309,'Aygo',9),(310,'Camry',9),(311,'Previa',9),(312,'Hilux',9),(313,'Cressida',9),(314,'Sienna',9),(315,'WiII',9),(316,'Carina',9),(317,'RAV4',9),(318,'Vitz',9),(319,'Starlet',9),(320,'Auris',9),(321,'Cresta',9),(322,'Corolla',9),(323,'Yaris',9),(324,'4Runner',9),(325,'Prius',9),(326,'Chaser',9),(327,'Supra',9),(328,'Avensis',9),(329,'Verso',9),(330,'MR2',9),(331,'Land Cruiser',9),(332,'Crown',9),(333,'Celica',9),(334,'C-HR',9),(335,'Etios',9),(336,'FJ Cruiser',9),(337,'Tarango',9),(338,'Vios',9),(339,'Urban Cruiser',9),(340,'MarkX',9),(341,'iQ',9),(342,'Sai',9),(343,'Alphard',9),(344,'Venza',9),(345,'Vanguard',9),(346,'Kluger',9),(347,'Blade',9),(348,'Ist',9),(349,'Premio',9),(350,'Passo',9),(351,'Kijang V',9),(352,'Porte',9),(353,'Noah',9),(354,'Ractis',9),(355,'Windom',9),(356,'Wish I',9),(357,'Isis',9),(358,'Raum',9),(359,'Avanza',9),(360,'Sienta',9),(361,'Gaia',9),(362,'Voltz',9),(363,'Ipsum',9),(364,'Condor',9),(365,'RunX',9),(366,'Verossa',9),(367,'Allion',9),(368,'Matrix',9),(369,'Brevis',9),(370,'Soluna',9),(371,'Avalon',9),(372,'Altezza',9),(373,'Opa',9),(374,'Mark II X110',9),(375,'Pronard',9),(376,'Platz',9),(377,'Echo',9),(378,'Vista',9),(379,'Nadia',9),(380,'Soarer',9),(381,'Caldina',9),(382,'Corsa',9),(383,'Aristo',9),(384,'Picnic',9),(385,'Curren',9),(386,'Paseo II',9),(387,'Mega Cruiser',9),(388,'Estima',9),(389,'Corolla Levin',9),(390,'Sprinter Trueno',9),(391,'Série 1',10),(392,'Série 2',10),(393,'Série 3',10),(394,'Série 4',10),(395,'Série 5',10),(396,'Série 6',10),(397,'Série 7',10),(398,'Série 8',10),(399,'X1',10),(400,'X3',10),(401,'X4',10),(402,'X5',10),(403,'X6',10),(404,'Z1',10),(405,'Z3',10),(406,'Z4',10),(407,'Z8',10),(408,'E26',10),(409,'E20',10),(410,'2004',10),(411,'E06',10),(412,'E9',10),(413,'2000',10),(414,'E10',10),(415,'2000 TI Coupe',10),(416,'3000 GT Frua',10),(417,'GT Frua',10),(418,'Type 114',10),(419,'3200 CS Coupe',10),(420,'2600',10),(421,'502',10),(422,'507',10),(423,'700',10),(424,'503',10),(425,'501',10),(426,'328',10),(427,'303',10),(428,'326',10),(429,'Concept',10),(430,'Up!',11),(431,'Polo',11),(432,'Golf',11),(433,'Jetta',11),(434,'Passat',11),(435,'Scirocco',11),(436,'Beetle',11),(437,'Touareg',11),(438,'Touran',11),(439,'Sharan',11),(440,'Caddy',11),(441,'Transporter',11),(442,'Amarok',11),(443,'Arteon',11),(444,'Tiguan',11),(445,'CC',11),(446,'SpaceFox',11),(447,'Parati',11),(448,'Magotan',11),(449,'Rabbit',11),(450,'Lavida',11),(451,'Eos',11),(452,'Fox',11),(453,'Phaeton',11),(454,'Gol',11),(455,'Lupo',11),(456,'Corrado',11),(457,'Santana',11),(458,'Derby',11),(459,'Brasilia',11),(460,'Kurierwagen Trekker',11),(461,'Type 3',11),(462,'SP1',11),(463,'K 70',11),(464,'Type 4',11),(465,'Karmann Ghia',11),(466,'Acco',12),(467,'Daily',12),(468,'Eurocargo',12),(469,'EuroFire',12),(470,'GFF4',12),(471,'LMV',12),(472,'Metro',12),(473,'NJ-Series',12),(474,'Ouba',12),(475,'PowerStar',12),(476,'Stralis',12),(477,'Trakker',12),(478,'Traveler',12),(479,'Turbo Daily',12),(480,'VM 90',12),(481,'Campagnola',12),(482,'Effeuno',12),(483,'EuroMover',12),(484,'EuroRider',12),(485,'EuroStar',12),(486,'Eurotech',12),(487,'EuroTrakker',12),(488,'Massif',12),(489,'MyWay',12),(490,'TurboStar',12),(491,'X-Series',12),(492,'Zeta',12),(493,'Sagaris',13),(494,'Tuscan',13),(495,'T350',13),(496,'Tamora',13),(497,'Griffith',13),(498,'Chimaera',13),(499,'Cerbera',13),(500,'S Series',13),(501,'450 SEAC',13),(502,'400 SE',13),(503,'420 SEAC',13),(504,'420 Sports Saloom',13),(505,'390 SE',13),(506,'Tasmin',13),(507,'Taimar',13),(508,'Taimar',13),(509,'M Series',13),(510,'Vixen',13),(511,'Tina',13),(512,'Trident',13),(513,'Grantura',13),(514,'305',14),(515,'504',14),(516,'208',14),(517,'407',14),(518,'206',14),(519,'308',14),(520,'306',14),(521,'2008',14),(522,'3008',14),(523,'5008',14),(524,'207',14),(525,'406',14),(526,'205',14),(527,'307',14),(528,'Traveller Compact',14),(529,'Partner',14),(530,'508 SW',14),(531,'508 RXH',14),(532,'108',14),(533,'508',14),(534,'Expert',14),(535,'RCZ',14),(536,'4008',14),(537,'508',14),(538,'4007',14),(539,'107',14),(540,'1007',14),(541,'607',14),(542,'307 Break',14),(543,'807',14),(544,'806',14),(545,'605',14),(546,'405',14),(547,'106',14),(548,'309',14),(549,'604',14),(550,'104',14),(551,'505',14),(552,'304',14),(553,'Bipper',14),(554,'Talisman',15),(555,'Scenic',15),(556,'Clio',15),(557,'Espace',15),(558,'Laguna',15),(559,'Twingo',15),(560,'Megane',15),(561,'Fluence',15),(562,'Kangoo',15),(563,'Modus',15),(564,'Koleos',15),(565,'Vel Satis',15),(566,'Safrane',15),(567,'19',15),(568,'21',15),(569,'5',15),(570,'25',15),(571,'11',15),(572,'9',15),(573,'Kadjar',15),(574,'Captur',15),(575,'Zoe',15),(576,'Trafic',15),(577,'Latitude',15),(578,'Wind',15),(579,'DeZir',15),(580,'Altica',15),(581,'Nepta',15),(582,'Ellypse',15),(583,'Avantime',15),(584,'Talisman Concept',15),(585,'Spider',15),(586,'Gabbiano',15),(587,'4',15),(588,'30',15),(589,'Rodeo',15),(590,'Fuego',15),(591,'18',15),(592,'6',15),(593,'14',15),(594,'20',15),(595,'16',15),(596,'17',15),(597,'15',15),(598,'12',15),(599,'8',15),(600,'Caravelle',15),(601,'Floride',15),(602,'Dauphine',15),(603,'Fregate',15),(604,'Juvaquatre',15),(605,'26.8HP',15),(606,'Eighteen',15),(607,'Nerva Grand Sport',15),(608,'Nerva Sport',15),(609,'45HP',15),(610,'40CV',15),(611,'Torpedo',15),(612,'Victoria',15),(613,'Type XA',15),(614,'Voiturette',15),(615,'C8',16),(616,'XM',16),(617,'C4',16),(618,'Berlingo',16),(619,'Xantia',16),(620,'DS3',16),(621,'C3',16),(622,'C-Elysee',16),(623,'C1',16),(624,'Xsara',16),(625,'DS5',16),(626,'C5',16),(627,'C3 Aircross',16),(628,'Jumpy',16),(629,'Grand C4 Picasso',16),(630,'Spacetourer',16),(631,'DS4',16),(632,'C Crosser',16),(633,'Nemo',16),(634,'C6',16),(635,'C2',16),(656,'Evasion',16),(657,'Saxo',16),(658,'ZX',16),(659,'C-15',16),(660,'AX',16),(661,'Axel',16),(662,'BX',16),(663,'2CV',16),(664,'CX',16),(665,'GSA',16),(666,'Visa',16),(667,'LNA',16),(668,'Dyane',16),(669,'Mehari',16),(670,'4-Series',17),(671,'PRT-Range',17),(672,'P-Series',17),(673,'G-Series',17),(674,'R-Series',17),(675,'S-Series',17),(676,'T-Series',17),(677,'F-Series',17),(678,'9 4X',18),(679,'9 3X',18),(680,'9 5 II',18),(681,'Aero X',18),(682,'9 3 Cabrio',18),(683,'9 7X',18),(684,'9 3 Sport Estate',18),(685,'9-5 Sport Sedan',18),(686,'9 3 Sport Sedan',18),(687,'9 5',18),(688,'9X',18),(689,'9-5 Wagon',18),(690,'9 3I Cabriolet',18),(691,'9 3 Coupe',18),(692,'9 3',18),(693,'9000 CD',18),(694,'900 II Coupe',18),(695,'900 II Cabriolet',18),(696,'900 II',18),(697,'9000 CS',18),(698,'900 Cabrio',18),(699,'9000',18),(700,'90',18),(701,'900',18),(702,'99',18),(703,'Sonett',18),(704,'96',18),(705,'93',18),(706,'92',18),(707,'9 3 Sport',18),(708,'Rapid',19),(709,'Octavia',19),(710,'Yeti',19),(711,'Superb',19),(712,'Fabia',19),(713,'Karoq',19),(714,'Kodiaq',19),(715,'Citigo',19),(716,'Laura',19),(717,'Scout',19),(718,'Roomster',19),(719,'Pickup',19),(720,'Felicia',19),(721,'Forman',19),(722,'Favorit',19),(723,'130',19),(724,'Rapid 120 R',19),(725,'120',19),(726,'105',19),(727,'UVMV',19),(728,'Winnetou',19),(729,'1202',19),(730,'430',19),(731,'TSX',20),(732,'TL',20),(733,'RL',20),(734,'RDX',20),(735,'MDX',20),(736,'CL',20),(737,'SLX',20),(738,'Legend',20),(739,'ZDX',20),(740,'RSX',20),(741,'Integra',20),(742,'Spider',21),(743,'Giulietta',21),(744,'145/146',21),(745,'156',21),(746,'6C',21),(747,'1900',21),(748,'Giulia',21),(749,'2600',21),(750,'2000',21),(751,'Concepts',21),(752,'Stelvio',21),(753,'4C',21),(754,'Mito',21),(755,'159',21),(756,'Brera',21),(757,'GT',21),(758,'8C Competizione',21),(759,'147',21),(760,'166',21),(761,'GTV',21),(762,'155',21),(763,'33',21),(764,'Zagato',21),(765,'75',21),(766,'164',21),(767,'90',21),(768,'6',21),(769,'Arna',21),(770,'Alfetta',21),(771,'GTV6',21),(772,'Alfetta GTV',21),(773,'2300',21),(774,'Sprint',21),(775,'Alfasud',21),(776,'Alfetta GT',21),(777,'1750 Berlina',21),(778,'33 Stradale',21),(779,'1750 GTV',21),(780,'1900M',21),(781,'8C',21),(782,'RL',21),(783,'RM',21),(784,'DB11',22),(785,'Vanquish',22),(786,'V12 Zagato',22),(787,'One 77',22),(788,'Virage',22),(789,'Cygnet',22),(790,'Rapide',22),(791,'Vantage',22),(792,'DBS',22),(793,'V8 Advantage',22),(794,'DB9',22),(795,'DB7 Coupe',22),(796,'DB7 Volante',22),(797,'V8',22),(798,'Lagonda',22),(799,'DB6',22),(800,'DB5',22),(801,'DB4',22),(802,'DB3',22),(803,'15 hp',22),(804,'A1',23),(805,'A3',23),(806,'A4',23),(807,'A5',23),(808,'A6',23),(809,'A7',23),(810,'A8',23),(811,'Q3',23),(812,'Q5',23),(813,'Q7',23),(814,'TT',23),(815,'R8',23),(816,'Concept',23),(817,'80',23),(818,'90',23),(819,'Coupe',23),(820,'100',23),(821,'200',23),(822,'Q2',23),(823,'A2',23),(824,'V8',23),(825,'Quattro',23),(826,'75',23),(827,'60',23),(828,'Mulsanne',24),(829,'Bentayga',24),(830,'Continental GT',24),(831,'Continental GTC',24),(832,'Flying Spur',24),(833,'Brooklands',24),(834,'Azure',24),(835,'Arnage',24),(836,'Turbo R',24),(837,'Continental R',24),(838,'Corniche',24),(839,'8 Litre',24),(840,'DeVille',25),(841,'ATS',25),(842,'Fleetwood',25),(843,'SRX',25),(844,'Escalade',25),(845,'CTS',25),(846,'Eldorado',25),(847,'Seville',25),(848,'DTS',25),(849,'BLS',25),(850,'STS',25),(851,'V Sixteen',25),(852,'XLR',25),(853,'Cien',25),(854,'Catera',25),(855,'Evoq',25),(856,'Allante',25),(857,'Cimarron',25),(858,'Series 70',25),(859,'V16',25),(860,'Type 55',25),(861,'Model T',25),(862,'Model G',25),(863,'Model D',25),(864,'Osceola',25),(865,'Model C',25),(866,'Model B',25),(867,'6.5 hp',25),(888,'Model A',25),(889,'Corvette',26),(890,'Matiz',26),(891,'Aveo',26),(892,'Lumina',26),(893,'Blazer',26),(894,'Impala',26),(895,'Nubira',26),(896,'Camaro',26),(897,'Malibu',26),(898,'El Camino',26),(899,'Monte Carlo',26),(900,'Cavalier',26),(901,'Classic',26),(902,'Prisma',26),(903,'Celta',26),(904,'Orlando',26),(905,'Spark',26),(906,'HHR',26),(907,'Lacetti',26),(908,'Epica',26),(909,'Captiva',26),(910,'Tacuma',26),(911,'Kalos',26),(912,'Evanda',26),(913,'SSR',26),(914,'Cobalt',26),(915,'Trailblazer',26),(916,'Alero',26),(917,'Tahoe',26),(918,'Tran Sport',26),(919,'Beretta',26),(920,'Caprice',26),(921,'Corsica',26),(922,'Citation',26),(923,'Corvair',26),(924,'Bel Air',26),(925,'Cruze',26),(926,'Crossfire',27),(927,'200',27),(928,'300',27),(929,'Grand Voyager',27),(930,'Sebring',27),(931,'PT Cruiser',27),(932,'Neon',27),(933,'300M',27),(934,'LeBaron',27),(935,'Logan',28),(936,'Sandero',28),(937,'Lodgy',28),(938,'Dokker',28),(939,'Duster',28),(940,'Charger',29),(941,'Journey',29),(942,'Avenger',29),(943,'Viper',29),(944,'Nitro',29),(945,'Challenger',29),(946,'Caliber',29),(947,'Hemi',29),(948,'Dart',29),(949,'812 Superfast',30),(950,'GTC4 Lusso',30),(951,'488',30),(952,'F12 Berlinetta',30),(953,'F12 TRS',30),(954,'California T F149M',30),(955,'Sergio',30),(956,'La Ferrari',30),(957,'458 Italia',30),(958,'FF',30),(959,'SA Aperta',30),(960,'California',30),(961,'599',30),(962,'575 SuperAmerica',30),(963,'GG50',30),(964,'F430',30),(965,'612 Scaglietti',30),(966,'Enzo',30),(967,'575 Maranello',30),(968,'550 Barchetta',30),(969,'360 Spider',30),(970,'360 Modena',30),(971,'550 Maranello',30),(972,'F355 Spider',30),(973,'F50',30),(974,'F355',30),(975,'456',30),(976,'512',30),(977,'348',30),(978,'408',30),(979,'F40',30),(980,'328',30),(981,'412i',30),(982,'Testarossa',30),(983,'288',30),(984,'Mondial',30),(985,'BB',30),(986,'208',30),(987,'308',30),(988,'Pinin',30),(989,'400',30),(990,'Modulo',30),(991,'512S',30),(992,'Dino',30),(993,'365',30),(994,'330',30),(995,'500',30),(996,'275',30),(997,'250',30),(998,'400 Super America',30),(999,'410',30),(1000,'375',30),(1001,'166',30),(1002,'342',30),(1003,'225',30),(1004,'340',30),(1005,'212',30),(1006,'195',30),(1007,'125',30),(1008,'Civic',31),(1009,'HR-V',31),(1010,'Jazz',31),(1011,'CRV',31),(1012,'Accord',31),(1013,'Brio',31),(1014,'CR Z',31),(1015,'City',31),(1016,'Life',31),(1017,'Freed',31),(1018,'Elysion',31),(1019,'Inspire',31),(1020,'Crossroad',31),(1021,'Fit',31),(1022,'Odyssey',31),(1023,'Legend',31),(1024,'Fit Aria',31),(1025,'Airwave',31),(1026,'FR',31),(1027,'Edix',31),(1028,'S2000',31),(1029,'Element',31),(1030,'Lagreat',31),(1031,'Torneo',31),(1032,'Capa',31),(1033,'Fit',31),(1034,'Mobilio',31),(1035,'Stream',31),(1036,'Logo',31),(1037,'Avancier',31),(1038,'Z',31),(1039,'Integra',31),(1040,'Saber',31),(1041,'Prelude',31),(1042,'Shuttle',31),(1043,'Ascot Innova',31),(1044,'CRX',31),(1045,'NSX',31),(1046,'Concerto',31),(1047,'Ballade',31),(1048,'Accord',31),(1049,'Quintet',31),(1050,'Quint',31),(1051,'145',31),(1052,'1300',31),(1053,'N600',31),(1054,'S800',31),(1055,'S500',31),(1056,'Wrangler',32),(1057,'Cherokee',32),(1058,'CJ',32),(1059,'Grand Cherokee',32),(1060,'Compass',32),(1061,'Renegade',32),(1062,'Commander',32),(1063,'Willys',32),(1064,'Icon',32),(1065,'Picanto',33),(1066,'Rio',33),(1067,'Venga',33),(1068,'Ceed',33),(1069,'Soul',33),(1070,'Optima',33),(1071,'Sportage',33),(1072,'Sorento',33),(1073,'Carens',33),(1074,'Carnival',33),(1075,'Shuma',33),(1076,'Stinger',33),(1077,'Niro',33),(1078,'Cerato',33),(1079,'Opirus',33),(1080,'Clarus',33),(1081,'Joice',33),(1092,'Pride',33),(1093,'Huracan',34),(1094,'Veneno',34),(1095,'Aventador',34),(1096,'Reventon',34),(1097,'Gallardo',34),(1098,'Murcielago',34),(1099,'Diablo',34),(1100,'LM',34),(1101,'Countach',34),(1102,'Jalpa',34),(1103,'Urraco',34),(1104,'Espada',34),(1105,'Miura',34),(1106,'Y10',35),(1107,'Thema',35),(1108,'Gamma',35),(1109,'Delta',35),(1110,'Ypsilon',35),(1111,'Kappa',35),(1112,'Beta',35),(1113,'Grand Voyager',35),(1114,'Voyager',35),(1115,'Phedra',35),(1116,'Musa',35),(1117,'Thesis',35),(1118,'Lybra',35),(1119,'Zeta',35),(1120,'Y',35),(1121,'Dedra',35),(1122,'Prisma',35),(1123,'Rally 037',35),(1124,'Monte Carlo',35),(1125,'Trevi',35),(1126,'HPE',35),(1127,'Stratos',35),(1128,'Flavia',35),(1129,'Fulvia',35),(1130,'Flaminia',35),(1131,'Appia',35),(1132,'Aurelia',35),(1133,'Discovery',36),(1134,'Velar',36),(1135,'Range Rover',36),(1136,'Evoque',36),(1137,'Defender',36),(1138,'Freelander',36),(1139,'110',36),(1140,'90',36),(1141,'LC',37),(1142,'CT200H',37),(1143,'RC',37),(1144,'GS',37),(1145,'RX',37),(1146,'NX',37),(1147,'IS',37),(1148,'HS',37),(1149,'LFA',37),(1150,'LS',37),(1151,'GranCabrio',38),(1152,'GranTurismo',38),(1153,'Levante',38),(1154,'Ghibli',38),(1155,'Quatroporte',38),(1156,'GranSport',38),(1157,'Spyder',38),(1158,'Coupe',38),(1159,'4200GT',38),(1160,'3200GT',38),(1161,'Racing',38),(1162,'Barchetta',38),(1163,'4.24V',38),(1164,'Shamal',38),(1165,'2.24V',38),(1166,'425',38),(1167,'Biturbo',38),(1168,'6',39),(1169,'Mx-5',39),(1170,'2',39),(1171,'CX-5',39),(1172,'3',39),(1173,'CX-3',39),(1174,'CX-9',39),(1175,'5',39),(1176,'BT 50',39),(1177,'CX-7',39),(1178,'Tribute',39),(1179,'Xedos',39),(1180,'RX8',39),(1181,'MPV',39),(1182,'323',39),(1183,'121',39),(1184,'Demio',39),(1185,'Premacy',39),(1186,'626',39),(1187,'MX-3',39),(1188,'RX-7',39),(1189,'MX-6',39),(1190,'929',39),(1191,'675LT Spider',40),(1192,'570GT',40),(1193,'675LT',40),(1194,'570S',40),(1195,'540C',40),(1196,'650S',40),(1197,'F1',40),(1198,'M6',40),(1199,'Countryman',41),(1200,'Mini',41),(1201,'Clubman',41),(1202,'Paceman',41),(1203,'coupe',41),(1204,'Roadster',41),(1205,'911',42),(1206,'Boxter',42),(1207,'Cayman',42),(1208,'Macan',42),(1209,'918 Spyder',42),(1210,'Cayenne',42),(1211,'Carrera GT',42),(1212,'968',42),(1213,'944',42),(1214,'959',42),(1215,'928',42),(1216,'944 Coupe',42),(1217,'924',42),(1218,'912',42),(1219,'914',42),(1220,'356',42),(1221,'Dawn',43),(1222,'Ghost',43),(1223,'Wraith',43),(1224,'Phantom',43),(1225,'Corniche',43),(1226,'Silver',43),(1227,'Camargue',43),(1228,'75',44),(1229,'CityRover',44),(1230,'25',44),(1231,'45',44),(1232,'Streetwise',44),(1233,'400',44),(1234,'200',44),(1235,'600',44),(1236,'Tourer',44),(1237,'100',44),(1238,'100 Cabriolet',44),(1239,'200 Coupe',44),(1240,'200 Cabriolet',44),(1241,'800',44),(1242,'Estate',44),(1243,'800 Coupe',44),(1244,'Mini',44),(1245,'800 Fastback',44),(1246,'SD1',44),(1247,'Leon',45),(1248,'Exeo',45),(1249,'Altea',45),(1250,'Toledo',45),(1251,'Ibiza',45),(1252,'Cordoba',45),(1253,'Alhambra',45),(1254,'Ateca',45),(1255,'Mii',45),(1256,'Arosa',45),(1257,'Marbella',45),(1258,'Malaga',45),(1259,'Fura',45),(1260,'Ronda',45),(1261,'Panda',45),(1262,'131',45),(1263,'XV',46),(1264,'Forester',46),(1265,'Outback',46),(1266,'Levorg',46),(1267,'BRZ',46),(1268,'Trezia',46),(1269,'Impreza',46),(1270,'Justy',46),(1271,'Legacy',46),(1272,'Tribeca',46),(1273,'R1',46),(1274,'Vivio',46),(1275,'SVX',46),(1276,'XT',46),(1277,'Rex',46),(1278,'Leone',46),(1279,'Model X',47),(1280,'Model S',47),(1281,'Roadster',47),(1282,'Astra',48),(1283,'Insignia',48),(1284,'Grandland X',48),(1285,'Crossland X',48),(1286,'Mokka X',48),(1287,'Viva',48),(1288,'Corsa',48),(1289,'Adam Rocks',48),(1290,'Cascada',48),(1291,'VXR8',48),(1292,'VX220',48),(1293,'Monaro',48),(1294,'VX Lightning Concept',48),(1295,'Vectra',48),(1296,'Calibra',48),(1297,'Nova',48),(1298,'Viceroy',48),(1299,'Chevette',48),(1300,'Viva',48),(1301,'Royale',48),(1302,'VX',48),(1303,'Magnum',48),(1304,'Victor',48),(1305,'Firenza',48),(1306,'Ventora',48),(1307,'Cresta',48),(1308,'Velox',48),(1309,'Wyvern',48),(1310,'Velox',48),(1311,'Alter',49),(1312,'490',49),(1313,'Evolution',50),(1314,'Excelle',51),(1315,'Verano',51),(1316,'Regal',51),(1317,'LaCrosse',51),(1318,'Enclave',51),(1319,'Lucerne',51),(1320,'Velite',51),(1321,'Century',51),(1322,'Rainier',51),(1323,'Rendezvous',51),(1324,'Park Avenue',51),(1325,'Riviera',51),(1326,'Wildcat',51),(1327,'XP 300',51),(1328,'Chiron',52),(1329,'EB 16.4',52),(1330,'EB 110',52),(1331,'Type 57',52),(1332,'Type 49',52),(1333,'Type 46',52),(1334,'Type 35',52),(1335,'7 Seven',53),(1336,'Seven Roadsport',53),(1337,'21',53),(1338,'Super Seven',53),(1339,'660',54),(1340,'33',54),(1341,'55',54),(1342,'44',54),(1343,'44',54),(1344,'750',54),(1345,'600',54),(1346,'CF Series',54),(1347,'XF Series',54),(1348,'LF Series',54),(1349,'Lacetti',55),(1350,'Tacuma',55),(1351,'Nubira',55),(1352,'Matiz',55),(1353,'Kalos',55),(1354,'Evanda',55),(1355,'Lanos',55),(1356,'Leganza',55),(1357,'Espero',55),(1358,'Nexia',55),(1359,'280ZX',56),(1360,'Cherry',56),(1361,'Laurel',56),(1362,'Bluebird',56),(1363,'Silvia',56),(1364,'240Z',56),(1365,'Materia',57),(1366,'Cuore',57),(1367,'Terios',57),(1368,'Sirion',57),(1369,'Trevis',57),(1370,'Copen',57),(1371,'YRV',57),(1372,'Move',57),(1373,'Grande Move',57),(1374,'Applause',57),(1375,'Rocky',57),(1376,'Feroza',57),(1377,'Charade',57),(1378,'Charmant',57),(1379,'Q60',58),(1380,'QX30',58),(1381,'Q70',58),(1382,'Q30',58),(1383,'QX50',58),(1384,'QX70',58),(1385,'Q70',58),(1386,'Q50',58),(1387,'FX',58),(1388,'M',58),(1389,'EX',58),(1400,'G',58),(1401,'G37',58),(1402,'D-MAX',59),(1403,'Rodeo',59),(1404,'Trooper',59),(1405,'Stylus',59),(1406,'Impulse',59),(1407,'Aska',59),(1408,'Piazza',59),(1409,'KB 40',59),(1410,'Gemini',59),(1411,'Asso di Fiori',59),(1412,'117',59),(1413,'Florian',59),(1414,'Unicab',59),(1415,'Bellett',59),(1416,'MKT',60),(1417,'MKZ',60),(1418,'MKR',60),(1419,'Town Car',60),(1420,'Navigator',60),(1421,'Continental',60),(1422,'Lincoln Mark',60),(1423,'Elise',61),(1424,'Exige',61),(1425,'Evora',61),(1426,'Europa',61),(1427,'Esprit',61),(1428,'Excel',61),(1429,'Elite',61),(1430,'Elan',61),(1431,'Seven',61),(1432,'62',62),(1433,'57',62),(1434,'ZT T',63),(1435,'ZS Sedan',63),(1436,'ZT',63),(1437,'ZS',63),(1438,'TF',63),(1439,'ZR',63),(1440,'F',63),(1441,'RV8',63),(1442,'Montego',63),(1443,'Maestro',63),(1444,'Metro',63),(1445,'B',63),(1446,'A',63),(1447,'Ital',64),(1448,'Marina',64),(1449,'Oxford',64),(1450,'Oxford Farina',64),(1451,'Minor',64),(1452,'Minor Saloon',64),(1453,'Plus 4',65),(1454,'Aero 8',65),(1455,'Roadster',65),(1456,'4/4',65),(1457,'Plus 8',65),(1458,'G5',66),(1459,'G6 Convertible',66),(1460,'G6 Coupe',66),(1461,'G8',66),(1462,'G6',66),(1463,'Solstice',66),(1464,'Sunfire',66),(1465,'Aztek',66),(1466,'Firebird',66),(1467,'Firebird Convertible',66),(1468,'Trans Sport',66),(1469,'Bonneville',66),(1470,'Grand Prix',66),(1471,'Grand Prix Coupe',66),(1472,'Fiero',66),(1473,'Phoenix',66),(1474,'Prowler',67),(1475,'Barracuda',67),(1476,'Tivoli XLV',68),(1477,'Tivoli',68),(1478,'Rodius',68),(1479,'Rexton W',68),(1480,'Korando',68),(1481,'Korando',68),(1482,'Actyon Sports Pick Up',68),(1483,'Actyon',68),(1484,'Rexton',68),(1485,'Kyron',68),(1486,'Musso Sports Pick Up',68),(1487,'Musso',68),(1488,'Swift',69),(1489,'Baleno',69),(1490,'Ignis',69),(1491,'Vitara',69),(1492,'Celerio',69),(1493,'SX4',69),(1494,'Kizashi',69),(1495,'Alto',69),(1496,'Splash',69),(1497,'Jimmy',69),(1498,'Grand Vitara',69),(1499,'Liana',69),(1500,'Ignis',69),(1501,'Wagon R',69),(1502,'Hayabusa',69),(1503,'Baleno Wagon',69),(1504,'Baleno',69),(1505,'Baleno Sedan',69),(1506,'Capuccinno',69),(1507,'X90',69),(1508,'SJ 410',69),(1509,'Kei',69),(1510,'Acclaim',70),(1511,'Dolomite',70),(1512,'TR7',70),(1513,'TR8',70),(1514,'2000 TC',70),(1515,'2500',70),(1516,'Stag',70),(1517,'2000',70),(1518,'TR6',70),(1519,'TR5',70),(1520,'Spitfire',70),(1521,'GT6',70),(1522,'TR4',70),(1523,'Vitesse',70),(1524,'TR3',70),(1525,'Herald',70),(1526,'Roadster',70),(1527,'Model A',70),(1528,'M12',71),(1529,'W2',71),(1530,'GT',72),(1531,'Roadster',72),(1532,'Series 62',25),(1533,'MP4-12C',40),(1534,'Panamera',42);
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
  `state` int(11) NOT NULL DEFAULT '1',
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
INSERT INTO `tbl_repair` VALUES (1,1,'Batido no Espelho Lado Esquerdo',NULL,2,'2017-07-18 23:08:21',NULL,'Substituição do Espelho'),(2,2,'Capo Amolgado',NULL,2,'2017-07-18 23:08:21',NULL,NULL);
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
INSERT INTO `tbl_schedule` VALUES (4,3,2,'2017-09-21 00:00:00',0),(5,3,2,'2018-02-01 00:00:00',0),(6,3,2,'2017-07-26 09:49:00',1),(7,8,1,'2017-07-19 09:51:00',0),(8,9,1,'2019-01-01 10:00:00',1),(9,8,3,'2017-08-01 15:21:00',1),(10,8,1,'2017-07-19 14:00:00',1),(11,9,3,'2017-07-19 14:55:00',1),(12,8,1,'2019-03-05 14:00:00',1),(13,3,2,'2021-07-11 16:00:00',1),(14,9,3,'2021-12-30 15:00:00',1),(15,9,2,'2021-12-31 18:00:00',1);
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
  `nameService` varchar(255) DEFAULT NULL,
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
INSERT INTO `tbl_service` VALUES (1,'Gestor',0,' ','serviceDefphoto.jpeg'),(2,'Estafeta',0,' ','serviceDefphoto.jpeg'),(3,'Bate-Chapas',20,'Reparação ou Substituição de Chapas','serviceDefphoto.jpeg'),(4,'Inspeção Automóvel',35,'Levamos o seu Veículo à inspeção','serviceDefphoto.jpeg'),(5,'Diagonóstico',5,'Diagonosticamos os problemas do seu veículo','serviceDefphoto.jpeg'),(6,'Alinhamento da Direção',40,'Alinhamos a direção do seu Automóvel','serviceDefphoto.jpeg'),(7,'Suspensão',30,'Tratamos a Suspenção do Seu automóvel','serviceDefphoto.jpeg'),(8,'Pintura',25,'Pintura de Automóveis','serviceDefphoto.jpeg'),(9,'Revisão',20,'Mudança do Oleo','service_1501629875567.jpeg');
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
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'Rui Barcelos','Rua João Maria da Costa nº 9-B','2090-093','Alpiarça','barcelos.rui@gmail.com','241804744','911909758','rbarcelos','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(2,'Miguel Silva','Vale de Santarém','2005-712','Vale de Santarém','miguelflsilva1995@gmail.com','123123122','919191991','migsilva','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(3,'João Bandarra','Agrantes','2022-024','Amrantes','a@f.pt','223123121','987487987','bandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(4,'Pedro Vicente Nunes','Matas','2025-022','Santarém','b@a.pt','123212323','912911911','pnunes','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(5,'João Bandarra','Agrantes','2022-021','Amrantes','a@f.pt','123123121','987487987','jbandarra','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(6,'Oscar Taquara Cardozo','Rua x','2090-099','Alpiarça','cardozo@ipt.pt','414999444','911922923','cardozo','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(7,'João Canoso','Alpiarça','2090-022','Alpiarça','aluno18839@ipt.pt','233244255','911911991','jcanoso','46f94c8de14fb36680850768ff1b7f2a',NULL,1,0),(8,'Jonas Pistolas','Caixa Futebol Campus','9999-000','Seixal','jonas@slbenfica.pt','881132222','991122991','jonas','46f94c8de14fb36680850768ff1b7f2a',NULL,1,0),(9,'Rui Vitória','Seixal','2090-093','Seixal','vitoria@slbenfica.pt','222000111','915462000','vitoria','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(13,'Aluno Rui Barcelos','Alpiarça','2090-093','Alpiarça','a@a.pt','234992119','911991199','aluno18834','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(14,'Aluno Rui','asas','1231-233','asdasd','a2@1.ss','191292999','999222999','arui','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(15,'Helder Postiga','Alcochete','2009-333','Alcochete','aluno18899@ipt.pt','999922212','912112112','postiga88','46f94c8de14fb36680850768ff1b7f2a',NULL,1,1),(19,'Barcelos','Rua de Alpiarça','2090-093','Alpiarça','rui_barcelos_179@hotmail.com','332244332','911099099','bar18834','4697ffe86368a1391f6b410522c286c5',NULL,1,0);
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
INSERT INTO `tbl_user_vehicle` VALUES (1,1,1),(2,3,1),(3,2,1),(7,4,1),(9,5,1),(9,6,1),(15,7,1);
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
  `fronttiresize` varchar(15) DEFAULT NULL,
  `reartiresize` varchar(15) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`idVehicle`),
  KEY `modeloveiculofk` (`model`),
  KEY `combustivel` (`fuel`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vehicle`
--

LOCK TABLES `tbl_vehicle` WRITE;
/*!40000 ALTER TABLE `tbl_vehicle` DISABLE KEYS */;
INSERT INTO `tbl_vehicle` VALUES (1,'99-33-HV',21,100,1850,199922,2,'195/65R15 91T','195/65R15 91T','2001-12-12'),(2,'99-HH-76',2,90,2000,199922,2,'195/65R15 91T','195/65R15 91T','2009-04-29'),(3,'33-63-TD',88,60,2500,400399,4,'195/65R15 91T','195/65R15 91T','2002-01-13'),(4,'55-DD-23',129,75,1800,555333,2,'195/65R15 91T','195/65R15 91T','2005-02-12'),(5,'99-RV-18',33,200,2333,34442,2,'195/65R15 91T','195/65R15 91T','2016-02-12'),(6,'44-QS-99',1328,30000,2000,32354,1,'fgaertge','afsdgerfg','2015-12-03'),(7,'88-33-BD',244,50,1100,423543,1,'35rertga','35rertga','1993-01-23');
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

-- Dump completed on 2017-08-16  0:26:26
