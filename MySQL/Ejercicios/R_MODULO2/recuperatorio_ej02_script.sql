CREATE DATABASE  IF NOT EXISTS `91_recuperatorio_ventas` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `91_recuperatorio_ventas`;
-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: 91_recuperatorio_ventas
-- ------------------------------------------------------
-- Server version	8.0.27

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(30) NOT NULL,
  `apellido1` varchar(25) NOT NULL,
  `apellido2` varchar(25) DEFAULT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=71 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'AITANA','MONTES','DEL POZO','a75z2gtt9@talk21.com'),(2,'MARIA','CAMPOS','MENENDEZ','vzgf48kz@post.com'),(3,'ROSARIO','TEJERO','VERGARA','ht1zv5hqns@talk21.com'),(4,'PAULA','DE MIGUEL','CASTILLO','wqfejwts@hotmail.com'),(5,'ITZIAR','PAZ','ESTEVE','3m4lbm9e6@lycos.co.uk'),(6,'BEATRIZ','CARRERA','FERNANDEZ','fe2uoilzm@scientist.com'),(7,'BORJA','PAVON','REQUENA','frnsj4x2z@unforgettable.com'),(8,'MAR','CASTILLO','GUTIERREZ','x2lrhgm87i@talk21.com'),(9,'MARIA LUZ','GUTIERREZ','DEL RIO','jrdjs14gkz@aim.com'),(10,'ESTEBAN','VIVES','SIERRA','x4epto4j5@aol.com'),(11,'MANUEL ANTONIO','CUENCA','FREIRE','gri770iav@lycos.es'),(12,'JOSE DANIEL','MORA','ARRANZ','3p0nuwlsr@scientist.com'),(13,'LUIS','PINEDA','MARTINEZ','929anyugw@lycos.de'),(14,'ENRIC','BARBA','SANCHEZ','s23icfx9t@iname.com'),(15,'ISMAEL','ROSADO','JORGE','rww6bs0gy@gmail.com'),(16,'JOSE FRANCISCO','OTERO','ROSA','urrkkkpx0h@hotmail.com'),(17,'PATRICIA','IZQUIERDO','JIMENEZ','a6358lpjon@hotmail.co.uk'),(18,'GERMAN','PEREA','MIRALLES','x54ix16ed@lycos.nl'),(19,'SOLEDAD','AGUILERA','MENDEZ','yag7fow7s@talk21.com'),(20,'FERNANDO','PERALTA','COSTA','4vurky68o@usa.com'),(21,'LUCIA','DE LA CRUZ','AVILA','gbnpc3ogk@scientist.com'),(22,'JAIME','TORRES','CALVO','obr60jke@writeme.com'),(23,'MARIA REMEDIOS','VICENTE','MAS','tbd544igw@scientist.com'),(24,'ESMERALDA','GIL','ESTEVEZ','f1a0qp45@earthling.net'),(25,'ALEJANDRO','ARENAS','OLIVER','myievbj0@lycos.it'),(26,'JOSEFINA','LEON','PORTILLO','6r4rqf0wpl@earthling.net'),(27,'DARIO','MENDEZ','PALMA','quet8pc8bp@blu.it'),(28,'ORIOL','VEGA','CHEN','py7d7xqio@aim.com'),(29,'ROBERTO','ARANDA','RUIZ','mz9rz6xsz4@yahoo.es'),(30,'LORENZO','CHACON','LUCAS','2gne5st0@lycos.at'),(31,'CHRISTIAN','MADRID','RUEDA','gnf3l5kk@lycos.co.uk'),(32,'ARTURO','SERNA','PONCE','7dffo1xe@btinternet.com'),(33,'JUAN JOSE','CRESPO','QUESADA','qheyj4p21@libero.it'),(34,'JUAN MANUEL','ALCANTARA','VILLALBA','in5562cw@talk21.com'),(35,'JACOBO','PIÑEIRO','FREIRE','g35038q3@scientist.com'),(36,'FRANCISCA','VARELA','MENENDEZ','t2t1hgnmb@lycos.es'),(37,'ARNAU','PIZARRO','ROMERA','q358qmnpv@hotmail.com'),(38,'NAIARA','LOZANO','ZAMBRANO','tcku3cfoox@yahoo.com'),(39,'ARACELI','VELEZ','DE LA CRUZ','crsmzut7d@usa.com'),(40,'ALBA MARIA','VALLE','REAL','frpuowlih@lycos.de'),(41,'GABRIEL','HERVAS','GRAU','ligcue64px@libero.it'),(42,'MARTIN','TEJERO','NIETO','lw0p0617m@gmail.com'),(43,'PAULINO','APARICIO','CASTILLA','at2z2by3@msn.com'),(44,'MARIA ELENA','VILLAR','MADRID','d7is0fxg9@lycos.co.uk'),(45,'JOANA','ORDOÑEZ','HERRERA','sb44gvh53p@teacher.com'),(46,'JUAN ANTONIO','PEREIRA','MORAL','4h53f2w5t@netscape.com'),(47,'AHMED','CANO','ARRIBAS','5aws067ga@hotmail.com'),(48,'AITANA','MARTINEZ','RUIZ','tshnz1wzje@earthling.net'),(49,'SONIA','HERNANDEZ','BAUTISTA','k5tvxl7e6v@aim.com'),(50,'NADIA','CONDE','RIVAS','xmfy9ba8ma@mail.com'),(51,'ALONSO','FLORES','CORDERO','qtszbsxcv@iname.com'),(52,'ESPERANZA','JORGE','FRIAS','zvmm14zx8@caramail.com'),(53,'TRINIDAD','SOLANO','ESCRIBANO','sxuxjrg15@iname.com'),(54,'ELISABET','OJEDA','GARRIDO','s8m9y921@techie.com'),(55,'MARIA MAR','CORRALES','RIVERA','vjgzo6gn7y@yahoo.com'),(56,'AMANDA','CABELLO','VILA','8l7nfmm64@journalism.com'),(57,'MIRIAM','LEAL','CARMONA','8tscdrt6@journalism.com'),(58,'JOSE VICENTE','BALLESTER','TIRADO','g6f9rspq@blu.it'),(59,'ANGEL LUIS','CACERES','MARCOS','8wlkm67e@blu.it'),(60,'CARMEN MARIA','MARTINEZ','PACHECO','r0wcfj268@iname.com'),(61,'JUAN','ALCALA','ORTEGA','bml443yoc@post.com'),(62,'AMADOR','FREIRE','ARROYO','862yvxz4h@talk21.com'),(63,'GLORIA','MORCILLO','PAZ','vhloqhqh@aol.com'),(64,'XAVIER','SIERRA','VERA','4zplw8vlr@libero.it'),(65,'JESUS','MARRERO','VELEZ','bf2uud398@whoever.com'),(66,'ISMAEL','TORRES','VERA','fhiq4yk89@talk21.com'),(67,'AGUSTIN','HERRERA','CABRERA','72kqnuui@aim.com'),(68,'JULIANA','REAL','LAZARO','ejn64k7g5@libero.it'),(69,'AITOR','PIÑEIRO','BELTRAN','b9qguzix1c@post.com'),(70,'RAFAELA','GRANADOS','SALCEDO','nmp83bepq@lycos.it');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalles_pedido`
--

DROP TABLE IF EXISTS `detalles_pedido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalles_pedido` (
  `fk_pedido` int unsigned NOT NULL,
  `fk_producto` int unsigned NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unidad` decimal(15,2) NOT NULL,
  `numero_linea` smallint NOT NULL,
  PRIMARY KEY (`fk_pedido`,`fk_producto`),
  KEY `fk_producto` (`fk_producto`),
  CONSTRAINT `detalles_pedido_ibfk_1` FOREIGN KEY (`fk_pedido`) REFERENCES `pedidos` (`id_pedido`),
  CONSTRAINT `detalles_pedido_ibfk_2` FOREIGN KEY (`fk_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalles_pedido`
--

LOCK TABLES `detalles_pedido` WRITE;
/*!40000 ALTER TABLE `detalles_pedido` DISABLE KEYS */;
INSERT INTO `detalles_pedido` VALUES (1,1,1,155.80,1),(1,4,1,22.50,2),(1,11,1,121.00,4),(1,17,1,169.27,3),(1,23,2,9.70,5),(2,13,2,875.00,1),(3,1,2,155.80,2),(3,6,2,315.00,4),(3,22,1,92.99,3),(3,23,2,9.70,1),(4,1,1,155.80,4),(4,7,1,4.50,5),(4,8,1,17.70,3),(4,17,2,169.27,2),(4,18,1,3.30,1),(5,18,2,3.30,1),(5,24,1,21.00,2),(6,12,2,1223.00,3),(6,17,1,169.27,2),(6,23,2,9.70,1),(7,3,2,975.00,1),(8,2,1,12.00,4),(8,3,2,975.00,3),(8,11,1,121.00,5),(8,21,1,52.50,2),(8,22,2,92.99,1),(9,17,1,169.27,1),(10,1,2,155.80,1),(10,16,1,72.00,2),(11,6,1,315.00,2),(11,9,1,12.00,1),(12,18,1,3.30,1),(13,1,2,155.80,2),(13,6,1,315.00,1),(14,11,1,121.00,2),(14,21,1,52.50,3),(14,23,2,9.70,1),(15,2,2,12.00,1),(15,6,1,315.00,4),(15,8,2,17.70,2),(15,13,2,875.00,3),(15,21,1,52.50,5),(16,1,1,155.80,1),(16,6,2,315.00,4),(16,11,1,121.00,3),(16,14,2,1299.00,2),(17,13,1,875.00,3),(17,14,1,1299.00,1),(17,15,1,2150.00,2),(18,13,2,875.00,1),(19,20,2,39.00,2),(19,24,2,21.00,1),(20,1,2,155.80,1),(20,18,1,3.30,3),(20,19,2,9.75,2),(21,2,2,12.00,1),(21,22,2,92.99,2),(22,11,2,121.00,1),(23,6,2,315.00,3),(23,10,1,3.00,4),(23,11,1,121.00,1),(23,20,1,39.00,5),(23,23,2,9.70,2),(24,2,1,12.00,1),(24,14,1,1299.00,2),(25,4,1,22.50,4),(25,6,1,315.00,2),(25,11,1,121.00,5),(25,21,2,52.50,1),(25,24,1,21.00,3),(26,20,1,39.00,1),(27,13,1,875.00,1),(28,13,2,875.00,1),(28,18,1,3.30,3),(28,22,1,92.99,2),(29,4,2,22.50,3),(29,6,2,315.00,4),(29,18,2,3.30,2),(29,22,2,92.99,1),(30,3,2,975.00,1),(31,2,1,12.00,2),(31,12,1,1223.00,4),(31,20,2,39.00,1),(31,23,2,9.70,3),(32,4,1,22.50,3),(32,8,1,17.70,1),(32,17,1,169.27,2),(33,12,2,1223.00,3),(33,15,1,2150.00,2),(33,22,2,92.99,1),(34,7,1,4.50,1),(34,11,2,121.00,2),(34,22,1,92.99,3),(35,3,2,975.00,2),(35,6,1,315.00,3),(35,7,2,4.50,4),(35,17,2,169.27,1),(36,3,1,975.00,2),(36,21,1,52.50,1),(37,11,2,121.00,1),(38,7,2,4.50,1),(39,1,1,155.80,2),(39,9,2,12.00,3),(39,16,2,72.00,1),(40,7,2,4.50,3),(40,12,2,1223.00,5),(40,15,2,2150.00,4),(40,17,2,169.27,1),(40,23,1,9.70,2),(41,1,2,155.80,4),(41,3,1,975.00,5),(41,7,1,4.50,1),(41,14,1,1299.00,3),(41,23,2,9.70,2),(42,2,1,12.00,2),(42,17,2,169.27,1),(43,2,2,12.00,1),(44,3,2,975.00,1),(44,7,2,4.50,3),(44,12,2,1223.00,2),(45,2,2,12.00,2),(45,4,1,22.50,1),(45,12,1,1223.00,3),(45,15,2,2150.00,4),(46,7,2,4.50,1),(47,6,2,315.00,3),(47,13,2,875.00,4),(47,18,2,3.30,2),(47,22,2,92.99,1),(48,4,1,22.50,4),(48,12,1,1223.00,3),(48,17,1,169.27,1),(48,18,2,3.30,2),(48,24,1,21.00,5),(49,2,2,12.00,2),(49,10,1,3.00,3),(49,20,2,39.00,1),(50,1,1,155.80,1),(50,13,1,875.00,2),(50,15,2,2150.00,4),(50,19,1,9.75,3),(51,1,2,155.80,5),(51,12,2,1223.00,3),(51,19,2,9.75,4),(51,22,2,92.99,2),(51,23,1,9.70,1),(52,11,2,121.00,1),(52,19,2,9.75,2),(53,23,2,9.70,1),(54,3,2,975.00,5),(54,6,1,315.00,4),(54,7,1,4.50,3),(54,20,2,39.00,1),(54,23,1,9.70,2),(55,17,1,169.27,1),(56,3,1,975.00,2),(56,10,2,3.00,1),(57,1,1,155.80,2),(57,2,1,12.00,1),(58,14,2,1299.00,2),(58,16,1,72.00,1),(58,21,2,52.50,3),(58,24,1,21.00,4),(59,9,1,12.00,4),(59,16,1,72.00,2),(59,18,2,3.30,1),(59,20,2,39.00,3),(59,22,2,92.99,5),(60,4,1,22.50,4),(60,14,2,1299.00,2),(60,16,1,72.00,3),(60,18,2,3.30,1),(61,1,2,155.80,1),(61,7,1,4.50,3),(61,11,2,121.00,2),(62,4,2,22.50,2),(62,13,1,875.00,3),(62,14,2,1299.00,1),(63,6,1,315.00,3),(63,11,2,121.00,1),(63,12,1,1223.00,4),(63,19,1,9.75,2),(64,7,1,4.50,2),(64,9,1,12.00,5),(64,13,1,875.00,4),(64,17,1,169.27,3),(64,23,1,9.70,1),(65,9,1,12.00,1),(65,21,2,52.50,2),(66,3,2,975.00,2),(66,6,2,315.00,4),(66,11,2,121.00,5),(66,17,2,169.27,3),(66,19,1,9.75,1),(67,3,1,975.00,1),(67,13,2,875.00,2),(68,1,1,155.80,1),(68,9,2,12.00,3),(68,15,2,2150.00,2),(68,19,2,9.75,4),(68,24,2,21.00,5),(69,7,2,4.50,3),(69,10,1,3.00,1),(69,24,2,21.00,2),(70,12,1,1223.00,1),(71,8,1,17.70,1),(71,9,1,12.00,2),(71,13,1,875.00,3),(71,19,1,9.75,4),(72,13,2,875.00,2),(72,15,2,2150.00,1),(72,24,1,21.00,3),(73,1,1,155.80,4),(73,3,2,975.00,2),(73,12,2,1223.00,3),(73,17,1,169.27,1),(74,6,1,315.00,2),(74,20,2,39.00,3),(74,23,2,9.70,1),(75,3,1,975.00,2),(75,17,2,169.27,1),(76,4,1,22.50,1),(76,12,1,1223.00,3),(76,13,2,875.00,5),(76,17,2,169.27,2),(76,19,1,9.75,4),(77,1,1,155.80,2),(77,23,2,9.70,1),(78,15,1,2150.00,1),(79,15,1,2150.00,2),(79,16,1,72.00,1),(79,24,1,21.00,3),(80,14,2,1299.00,2),(80,18,1,3.30,3),(80,19,2,9.75,1),(80,21,2,52.50,4),(81,24,2,21.00,1),(82,7,2,4.50,5),(82,8,2,17.70,3),(82,18,1,3.30,1),(82,20,2,39.00,2),(82,23,2,9.70,4),(83,24,1,21.00,1),(84,4,2,22.50,2),(84,21,1,52.50,1),(84,23,1,9.70,3),(85,7,1,4.50,4),(85,12,2,1223.00,1),(85,14,1,1299.00,2),(85,15,1,2150.00,3),(85,24,2,21.00,5),(86,7,2,4.50,2),(86,11,2,121.00,1),(87,3,2,975.00,1),(88,2,2,12.00,2),(88,17,2,169.27,1),(89,15,2,2150.00,1),(89,16,1,72.00,2),(90,1,1,155.80,2),(90,6,1,315.00,5),(90,10,2,3.00,4),(90,12,1,1223.00,3),(90,16,2,72.00,1),(91,3,1,975.00,4),(91,4,2,22.50,3),(91,6,2,315.00,2),(91,7,2,4.50,1),(91,16,1,72.00,5),(92,6,2,315.00,1),(92,13,2,875.00,2),(93,9,1,12.00,3),(93,16,2,72.00,4),(93,19,2,9.75,2),(93,20,1,39.00,5),(93,22,2,92.99,1),(94,16,1,72.00,1),(95,7,1,4.50,3),(95,16,1,72.00,2),(95,23,1,9.70,1),(96,12,1,1223.00,3),(96,20,1,39.00,4),(96,22,1,92.99,2),(96,24,1,21.00,1),(97,4,1,22.50,1),(97,9,2,12.00,2),(97,13,2,875.00,5),(97,23,2,9.70,3),(97,24,1,21.00,4),(98,19,2,9.75,3),(98,23,1,9.70,2),(98,24,2,21.00,1),(99,2,1,12.00,4),(99,10,1,3.00,2),(99,12,2,1223.00,3),(99,18,2,3.30,1),(100,4,2,22.50,4),(100,12,1,1223.00,3),(100,18,1,3.30,1),(100,20,1,39.00,2),(100,22,2,92.99,5),(101,22,2,92.99,1),(101,23,2,9.70,2),(102,2,1,12.00,3),(102,16,1,72.00,4),(102,23,1,9.70,2),(102,24,2,21.00,1),(103,2,2,12.00,1),(103,3,1,975.00,3),(103,15,1,2150.00,4),(103,24,2,21.00,2),(104,11,2,121.00,1),(104,15,2,2150.00,4),(104,21,2,52.50,5),(104,23,1,9.70,2),(104,24,1,21.00,3),(105,4,1,22.50,2),(105,12,2,1223.00,1),(106,3,2,975.00,4),(106,8,2,17.70,1),(106,18,2,3.30,3),(106,21,1,52.50,2),(107,14,1,1299.00,2),(107,20,2,39.00,1),(108,9,1,12.00,1),(108,13,2,875.00,2),(109,4,1,22.50,2),(109,12,2,1223.00,3),(109,20,1,39.00,5),(109,22,1,92.99,1),(109,23,1,9.70,4),(110,13,1,875.00,2),(110,14,2,1299.00,4),(110,18,1,3.30,1),(110,20,2,39.00,3),(111,2,1,12.00,4),(111,7,2,4.50,3),(111,13,1,875.00,1),(111,21,1,52.50,2),(112,1,2,155.80,2),(112,6,2,315.00,1),(112,12,2,1223.00,3),(112,13,1,875.00,5),(112,19,1,9.75,4),(113,3,1,975.00,1),(113,6,2,315.00,3),(113,7,2,4.50,2),(113,8,2,17.70,4),(114,13,2,875.00,1),(114,17,2,169.27,3),(114,18,1,3.30,2),(115,7,1,4.50,4),(115,11,1,121.00,3),(115,22,2,92.99,1),(115,23,1,9.70,2),(115,25,1,220.00,5);
/*!40000 ALTER TABLE `detalles_pedido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `fk_sucursal` int unsigned NOT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`),
  KEY `fk_sucursales_idx` (`fk_sucursal`),
  CONSTRAINT `fk_sucursales` FOREIGN KEY (`fk_sucursal`) REFERENCES `sucursales` (`id_sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'VALERIA','MATEOS','CHACON','c145n6051@lycos.co.uk',3,'vendedor'),(2,'AURORA','MACIAS','ESPEJO','7803qsv7l@libero.it',1,'vendedor'),(3,'CLAUDIA','VELEZ','SALINAS','w81qh208wc@earthling.net',2,'vendedor'),(4,'MARIA SOLEDAD','CHEN','MENDOZA','bskq7mnkh@scientist.com',1,'vendedor'),(5,'MATEO','CASTELLANOS','BENITO','xpzmqsez@netscape.net',3,'vendedor'),(6,'AINA','SANTAMARIA','PUJOL','fyvmgow5t@yahoo.com',2,'vendedor'),(7,'IGNACIO','NAVARRETE','HERRANZ','ceeadm39fz@yahoo.com',1,'vendedor'),(8,'JUAN IGNACIO','MOYA','ARENAS','7yhfnsioi@netscape.net',5,'vendedor'),(9,'EMILIANO','CARDENAS','MIRALLES','kgqg3z7nr7@hotmail.co.uk',3,'vendedor'),(10,'JORGE','BELLO','ROYO','pmixazew6@usa.com',5,'vendedor'),(11,'NORA','ANDRES','SOLIS','r94ylfcg@techie.com',2,'vendedor'),(12,'IGNACIO','TEJERO','DOMENECH','889j4uee@yahoo.com',1,'vendedor'),(13,'TOMAS','CEREZO','BARRERA','243q64gowb@techie.com',6,'vendedor'),(14,'ALMUDENA','BARREIRO','BERMUDEZ','xe6imhftx@writeme.com',1,'vendedor'),(15,'YOLANDA','CID','SALGUERO','wvfk1ytxe@hotmail.com',1,'vendedor'),(16,'CESAR','CRESPO','FERRER','7brfpy103@earthling.net',1,'vendedor'),(17,'NOELIA','REINA','RICO','z41inpgvp@teacher.com',5,'vendedor'),(18,'JULEN','VALVERDE','BARBA','iq82aikn@journalism.com',1,'vendedor'),(19,'ANTONIO MIGUEL','CASTRO','VEGA','w2p9zkjg@journalism.com',6,'vendedor'),(20,'JUDITH','PORTILLO','ALCALDE','ofq93wpwwm@mail.com',2,'vendedor'),(21,'MARIA JULIA','ROIG','DEL RIO','f5bzkfe6@hotmail.co.uk',2,'vendedor'),(22,'LORENA','BELTRAN','RIVAS','2zbizwtduv@btinternet.com',3,'vendedor'),(23,'JOSE MIGUEL','ROMERA','DORADO','rmm6hmj6@earthling.net',6,'vendedor'),(24,'AITOR','SOLER','LEAL','01jtw46g@gmail.com',5,'vendedor'),(25,'CRISTOBAL','ARIAS','SEGURA','a1q0bsf91@usa.com',4,'vendedor'),(26,'CARIDAD','PULIDO','BRAVO','pj2pd5nf@lycos.nl',3,'vendedor'),(27,'YAIZA','CARBALLO','LUIS','7wudlzkm@msn.com',1,'vendedor'),(28,'ROSARIO','REY','DE LA CRUZ','7ra6xkety@libero.it',3,'vendedor'),(29,'ARANZAZU','ALFONSO','PACHECO','uo8l0kmxy@mail.com',6,'vendedor'),(30,'JIMENA','JUAN','VALENCIA','6sdcz26j4@teacher.com',2,'vendedor');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `familia_productos`
--

DROP TABLE IF EXISTS `familia_productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `familia_productos` (
  `id_familia` int unsigned NOT NULL AUTO_INCREMENT,
  `familia` varchar(50) NOT NULL,
  `descripcion` text,
  PRIMARY KEY (`id_familia`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `familia_productos`
--

LOCK TABLES `familia_productos` WRITE;
/*!40000 ALTER TABLE `familia_productos` DISABLE KEYS */;
INSERT INTO `familia_productos` VALUES (1,'Disco duro',NULL),(2,'Cable',NULL),(3,'Sobremesa',NULL),(4,'Monitor',NULL),(5,'Memoria USB',NULL),(6,'Disco externo',NULL),(7,'Portatil',NULL),(8,'Tablet',NULL),(9,'Disco SSD',NULL),(10,'Raton',NULL),(11,'Teclado',NULL);
/*!40000 ALTER TABLE `familia_productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id_pedido` int unsigned NOT NULL AUTO_INCREMENT,
  `fecha_pedido` date NOT NULL,
  `fecha_entrega_programada` date NOT NULL,
  `fecha_entrega_efectiva` date DEFAULT NULL,
  `fk_cliente` int unsigned NOT NULL,
  `fk_empleado` int unsigned NOT NULL,
  PRIMARY KEY (`id_pedido`),
  KEY `fk_cliente` (`fk_cliente`),
  KEY `pedidos_empleados_idx` (`fk_empleado`),
  CONSTRAINT `pedidos_empleados` FOREIGN KEY (`fk_empleado`) REFERENCES `empleados` (`id_empleado`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`fk_cliente`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=128 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'2020-01-17','2020-01-19','2006-01-19',61,19),(2,'2021-10-23','2021-10-28','2007-10-26',40,28),(3,'2022-06-20','2022-06-25',NULL,59,14),(4,'2023-01-20','2023-01-26',NULL,54,14),(5,'2022-11-09','2022-11-14','2008-11-14',69,16),(6,'2022-12-22','2022-12-27','2008-12-28',50,29),(7,'2023-01-15','2023-01-20',NULL,44,8),(8,'2023-01-20','2023-01-27',NULL,29,8),(9,'2023-01-22','2023-01-27',NULL,6,18),(10,'2023-01-12','2023-01-14','2009-01-15',55,3),(11,'2023-01-02','2023-01-02',NULL,4,1),(12,'2023-01-09','2023-01-12','2009-01-11',63,14),(13,'2023-01-06','2023-01-07','2009-01-15',36,8),(14,'2023-01-08','2023-01-09','2009-01-11',46,17),(15,'2023-01-05','2023-01-06','2009-01-07',61,19),(16,'2023-01-18','2023-02-12',NULL,36,20),(17,'2023-01-20','2023-02-15',NULL,56,30),(18,'2023-01-09','2023-01-09','2009-01-09',36,20),(19,'2023-01-11','2023-01-11','2009-01-13',45,10),(20,'2022-12-30','2023-01-10',NULL,42,1),(21,'2022-07-14','2022-07-31','2008-07-25',25,22),(22,'2023-02-02','2023-02-08',NULL,31,4),(23,'2023-02-06','2023-02-12',NULL,14,20),(24,'2023-02-07','2023-02-13',NULL,53,22),(25,'2023-02-10','2023-02-17','2009-02-20',30,27),(26,'2022-08-01','2022-09-01','2008-09-01',13,8),(27,'2022-08-03','2022-09-03','2008-08-31',46,17),(28,'2022-09-04','2022-09-30','2008-10-04',53,4),(29,'2021-01-07','2021-01-19','2007-01-27',20,3),(30,'2021-05-20','2021-05-28',NULL,46,29),(31,'2021-06-20','2022-06-28','2008-06-28',56,4),(32,'2022-03-10','2023-03-20',NULL,16,23),(33,'2022-10-15','2022-12-15','2008-12-10',2,28),(34,'2022-11-03','2023-11-13',NULL,36,25),(35,'2023-03-05','2023-03-06','2009-03-07',36,4),(36,'2023-03-06','2023-03-07','2009-03-09',70,20),(37,'2023-03-09','2023-03-10','2009-03-13',25,22),(38,'2023-03-12','2023-03-13','2009-03-13',41,22),(39,'2023-03-22','2023-03-23','2009-03-27',61,5),(40,'2023-03-25','2023-03-26','2009-03-28',13,13),(41,'2023-03-26','2023-03-27','2009-03-30',43,23),(42,'2023-04-01','2023-03-04','2009-03-07',65,11),(43,'2023-04-03','2023-03-04','2009-03-05',69,26),(44,'2023-04-15','2023-03-17','2009-03-17',22,30),(45,'2022-03-17','2022-03-30','2008-03-29',67,26),(46,'2022-07-12','2022-07-22','2008-07-30',29,14),(47,'2022-03-17','2022-08-09',NULL,5,29),(48,'2022-10-01','2022-10-14','2008-10-14',37,24),(49,'2022-12-07','2022-12-21',NULL,25,12),(50,'2022-10-15','2022-11-15','2008-11-09',59,3),(51,'2023-01-11','2023-02-11',NULL,64,8),(52,'2022-12-10','2023-01-10','2009-01-11',42,6),(53,'2022-12-19','2023-01-20',NULL,14,11),(54,'2023-01-05','2023-02-05',NULL,15,30),(55,'2023-01-24','2023-01-31','2009-01-30',22,18),(56,'2022-11-09','2022-11-14','2008-11-14',67,2),(57,'2022-12-22','2022-12-27','2008-12-28',25,19),(58,'2023-01-15','2023-01-20',NULL,1,6),(59,'2023-01-20','2023-01-27',NULL,66,5),(60,'2023-01-22','2023-01-27',NULL,60,27),(61,'2023-01-24','2023-01-31','2009-01-30',56,11),(62,'2023-02-02','2023-02-08',NULL,26,25),(63,'2023-02-06','2023-02-12',NULL,64,5),(64,'2023-02-07','2023-02-13',NULL,70,16),(65,'2023-02-10','2023-02-17','2009-02-20',44,17),(66,'2023-01-14','2023-01-22',NULL,60,18),(67,'2023-01-11','2023-01-13','2009-01-13',32,14),(68,'2022-11-15','2022-11-23','2008-11-23',67,12),(69,'2023-01-03','2023-01-08',NULL,70,27),(70,'2022-12-15','2022-12-17','2008-12-17',26,7),(71,'2023-01-12','2023-01-13','2009-01-13',70,10),(72,'2023-01-25','2023-01-26',NULL,43,3),(73,'2023-01-18','2023-01-24',NULL,43,24),(74,'2023-01-20','2023-01-29','2009-01-29',3,27),(75,'2023-01-24','2023-01-28',NULL,19,21),(76,'2021-10-05','2021-12-13','2007-12-10',40,26),(77,'2023-02-07','2022-02-17',NULL,37,3),(78,'2023-03-18','2023-03-29','2009-03-27',58,27),(79,'2023-04-19','2023-04-30','2009-05-03',62,25),(80,'2023-05-03','2023-05-30','2009-05-17',29,18),(81,'2023-10-18','2023-11-01',NULL,46,17),(82,'2022-01-04','2022-01-19','2008-01-19',55,7),(83,'2022-03-20','2022-04-12','2008-04-13',57,11),(84,'2022-10-08','2022-11-25','2008-11-25',21,15),(85,'2023-01-08','2023-02-13',NULL,34,29),(86,'2023-02-15','2023-02-27',NULL,27,2),(87,'2023-01-10','2023-01-15','2009-01-15',1,30),(88,'2023-03-07','2023-03-27',NULL,56,3),(89,'2022-12-28','2023-01-08','2009-01-08',2,27),(90,'2023-01-15','2023-01-20','2009-01-24',22,28),(91,'2023-03-02','2023-03-06','2009-03-06',50,24),(92,'2023-02-14','2023-02-20',NULL,50,7),(93,'2023-05-13','2023-05-15','2009-05-20',3,16),(94,'2023-04-06','2023-04-10','2009-04-10',30,18),(95,'2023-04-09','2023-04-15','2009-04-15',48,18),(96,'2020-05-25','2020-07-28','2006-07-28',69,3),(97,'2021-03-19','2021-04-24','2007-04-24',32,2),(98,'2022-03-05','2022-03-30','2008-03-30',58,30),(99,'2023-03-05','2023-04-06','2009-05-07',29,4),(100,'2022-10-28','2022-11-09','2009-01-09',30,22),(101,'2023-01-15','2023-01-29','2009-01-31',25,19),(102,'2022-11-29','2023-01-26','2009-02-27',69,2),(103,'2022-06-28','2022-08-01','2008-08-01',21,11),(104,'2022-08-25','2022-10-01',NULL,60,6),(105,'2023-02-15','2023-02-27',NULL,32,20),(106,'2023-01-10','2023-01-15','2009-01-15',64,18),(107,'2023-03-07','2023-03-27',NULL,14,7),(108,'2022-12-28','2023-01-08','2009-01-08',38,1),(109,'2023-04-09','2023-04-15','2009-04-15',33,8),(110,'2023-01-15','2023-01-20','2009-01-24',62,20),(111,'2023-03-02','2023-03-06','2009-03-06',40,28),(112,'2023-02-14','2023-02-20',NULL,60,16),(113,'2023-05-13','2023-05-15','2009-05-20',6,25),(114,'2023-04-06','2023-04-10','2009-04-10',61,27),(115,'2022-11-10','2022-12-10','2008-12-29',58,15);
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(70) NOT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `fk_familia` int unsigned NOT NULL,
  `precio_venta` decimal(15,2) NOT NULL,
  `fecha_precio` date NOT NULL,
  `cantidad_en_stock` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_familia` (`fk_familia`),
  CONSTRAINT `productos_ibfk_1` FOREIGN KEY (`fk_familia`) REFERENCES `familia_productos` (`id_familia`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Disco externo 1 Tb usb','Seagate','FireCuda',1,155.80,'2020-04-12',11),(2,'Cable HDMI 1.5m.','','',2,12.00,'2018-05-14',39),(3,'PC X3456  i9 - 16Gb - 512 SSD','Dell','XPS',3,975.00,'2021-06-23',5),(4,'Teclado USB inalambrico','Logitech','T769X',11,22.50,'2020-12-08',30),(5,'Monitor LCD 21\"','Sony','SY21H',4,127.50,'2021-04-07',5),(6,'Disco 4Tb usb 3.0','Seagate','Barracuda',1,315.00,'2020-07-30',6),(7,'Cable VGA','','',2,4.50,'2019-03-16',29),(8,'Pen Drive 32 Gb USB 3.0','SanDisk','Ultra Flair',5,17.70,'2020-03-16',16),(9,'Pen Drive 16 Gb USB 2.0','SanDisk','Ultra Flair',5,12.00,'2020-06-04',27),(10,'Cable alimentacion PC','','',2,3.00,'2019-10-01',12),(11,'Disco externo 2 Tb USB 3.0','Toshiba','TX12',6,121.00,'2010-04-07',2),(12,'Portatil i7 - 14 - 16Gb - 512 SSD','Toshiba','X365B',7,1223.00,'2018-05-25',20),(13,'Portatil i5 - 15.6 - 8Gb - 1T HD','Acer','A678',7,875.00,'2019-04-16',11),(14,'IPad PRO 2020','Apple','Pro',8,1299.00,'2021-05-22',26),(15,'Portatil i7 -15.6 - 16Gb - 512 SSD','Asus','ZenBook',7,2150.00,'2021-03-10',30),(16,'Disco SATA3 SS5','Western Digital','Blue',1,72.00,'2021-10-02',16),(17,'SSD Interna Crucial2 Tb 3d Nand SATA','Crucial','MX500',9,169.27,'2021-11-07',92),(18,'Cable USB Impresora','','',2,3.30,'2021-11-18',12),(19,'Cable adaptador VGA/HDMI','','',2,9.75,'2019-05-01',26),(20,'Pen Drive 64 Gb USB 3.0','Toshiba','64-3',5,39.00,'2019-04-10',29),(21,'Pen Drive 128 Gb USB 3.0','Toshiba','128-3',5,52.50,'2018-03-13',21),(22,'Disco externo 2.5\" 4TB USB 3.0','Seagate','Expansion',6,92.99,'2021-01-12',31),(23,'Raton USB inalambrico','Logitech','R456',10,9.70,'2019-07-16',10),(24,'Pen Drive 4 Gb USB 2.0','Toshiba','4T',5,21.00,'2019-05-12',0),(25,'Monitor Gaming 32\"','LG','LG32X',4,220.00,'2022-06-07',3);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sucursales`
--

DROP TABLE IF EXISTS `sucursales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sucursales` (
  `id_sucursal` int unsigned NOT NULL AUTO_INCREMENT,
  `sucursal` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `codigo_postal` varchar(10) NOT NULL,
  `ciudad` varchar(30) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  PRIMARY KEY (`id_sucursal`),
  UNIQUE KEY `oficina` (`sucursal`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sucursales`
--

LOCK TABLES `sucursales` WRITE;
/*!40000 ALTER TABLE `sucursales` DISABLE KEYS */;
INSERT INTO `sucursales` VALUES (1,'Madrid Central','calle...','28000','Madrid','911231231'),(2,'Madrid Norte','calle...','28100','Alcobendas','111111111'),(3,'Madrid Sur','calle...','28200','Getafe','222222222'),(4,'Madrid Oeste','calle...','28300','Pozuelo de Alarcon','333333333'),(5,'Madrid Este','calle...','28800','Alcala de Henares','444444444'),(6,'Valencia','calle...','46000','Valencia','555555555');
/*!40000 ALTER TABLE `sucursales` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-30 21:48:26
