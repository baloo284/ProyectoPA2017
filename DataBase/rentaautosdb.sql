-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: rentaautosdb
-- ------------------------------------------------------
-- Server version	5.7.20-log

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
-- Table structure for table `asignaperfil`
--

DROP TABLE IF EXISTS `asignaperfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `asignaperfil` (
  `idasignaperfil` int(11) NOT NULL,
  `idperfil` int(10) unsigned NOT NULL,
  `identidad` int(10) unsigned NOT NULL,
  `permisoalta` tinyint(4) NOT NULL,
  `permisoedita` tinyint(4) NOT NULL,
  `permisobaja` tinyint(4) NOT NULL,
  `permisoconsulta` tinyint(4) NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idasignaperfil`),
  UNIQUE KEY `idasignaperfil_UNIQUE` (`idasignaperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignaperfil`
--

LOCK TABLES `asignaperfil` WRITE;
/*!40000 ALTER TABLE `asignaperfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `asignaperfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `averia`
--

DROP TABLE IF EXISTS `averia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `averia` (
  `idaveria` int(11) NOT NULL,
  `idservicio` int(10) unsigned NOT NULL,
  `fechacreacion` datetime NOT NULL,
  `fechaatencion` datetime NOT NULL,
  `costoreparacion` decimal(2,0) NOT NULL,
  `causa` varchar(100) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idaveria`),
  UNIQUE KEY `idaveria_UNIQUE` (`idaveria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `averia`
--

LOCK TABLES `averia` WRITE;
/*!40000 ALTER TABLE `averia` DISABLE KEYS */;
/*!40000 ALTER TABLE `averia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chofer`
--

DROP TABLE IF EXISTS `chofer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chofer` (
  `idchofer` int(11) NOT NULL,
  `idusuario` int(10) unsigned NOT NULL,
  `fechaalta` datetime NOT NULL,
  `fechabaja` datetime NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `comprobante` varchar(45) NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idchofer`),
  UNIQUE KEY `idchofer_UNIQUE` (`idchofer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chofer`
--

LOCK TABLES `chofer` WRITE;
/*!40000 ALTER TABLE `chofer` DISABLE KEYS */;
INSERT INTO `chofer` VALUES (1,9,'2017-11-01 00:00:00','1900-01-01 00:00:00','Asteroide No. 12, San Nicolás, Texcoco, Edo. Mex.','9588342','escrituras','activo'),(2,10,'2017-11-01 00:00:00','1900-01-01 00:00:00','Fray Yakelino No. 11, U. Pepsi, Texcoco, Edo. Mex.','9712162','escrituras','activo'),(3,11,'2017-11-01 00:00:00','2017-11-01 00:00:00','Chiautla S/N, Beta, San Vicente Chicoloapan, Edo. Mex.','9673419','escrituras','inactivo'),(4,12,'2017-11-01 00:00:00','2017-11-01 00:00:00','Antenas No. 24a, U. ISSSTE, Texcoco, Edo. Mex.','9572372','escrituras','inactivo'),(5,13,'2017-11-01 00:00:00','1900-01-01 00:00:00','Lilias No. 19, Tequexquinahuac, Texcoco, Edo. Mex.','9614910','escrituras','activo'),(6,14,'2017-11-01 00:00:00','1900-01-01 00:00:00','Teseracto No. 43, San Bernardino, Texcoco, Edo. Mex.','9606245','escrituras','activo'),(7,15,'2017-11-01 00:00:00','1900-01-01 00:00:00','Pirul No. 38, Salitrería, Texcoco, Edo. Mex.','9597579','escrituras','activo');
/*!40000 ALTER TABLE `chofer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desempeño`
--

DROP TABLE IF EXISTS `desempeño`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desempeño` (
  `iddesempeño` int(11) NOT NULL,
  `idservicio` int(10) unsigned NOT NULL,
  `calificacion` varchar(45) NOT NULL,
  PRIMARY KEY (`iddesempeño`),
  UNIQUE KEY `iddesempeño_UNIQUE` (`iddesempeño`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desempeño`
--

LOCK TABLES `desempeño` WRITE;
/*!40000 ALTER TABLE `desempeño` DISABLE KEYS */;
/*!40000 ALTER TABLE `desempeño` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dueño`
--

DROP TABLE IF EXISTS `dueño`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dueño` (
  `iddueño` int(11) NOT NULL,
  `idusuario` int(10) unsigned NOT NULL,
  `idflota` int(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `fechaalta` datetime NOT NULL,
  `fechabaja` datetime NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`iddueño`),
  UNIQUE KEY `iddueño_UNIQUE` (`iddueño`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dueño`
--

LOCK TABLES `dueño` WRITE;
/*!40000 ALTER TABLE `dueño` DISABLE KEYS */;
INSERT INTO `dueño` VALUES (1,2,1,'Galaxia No. 2, San Nicolás, Texcoco, Edo. Mex.','9510856','2017-11-01 00:00:00','1900-01-01 00:00:00','activo'),(2,3,2,'Fray Servando Teresa de Mier No. 312, Col. Centro, Texcoco, Edo. Mex.','9572372','2017-11-01 00:00:00','1900-01-01 00:00:00','activo'),(3,4,3,'Perales No. 9, Int. 4, Tepetlaoxtoc, Edo. Mex.','9588342','2017-11-01 00:00:00','2017-11-03 00:00:00','inactivo'),(4,5,4,'Miguel Ramos Arizpe No. 23, La Purificación, Texcoco, Edo. Mex.','9634676','2017-11-01 00:00:00','1900-01-01 00:00:00','activo'),(5,6,5,'Papaver somniferum No. 52, Santa María, Texcoco, Edo. Mex.','9673419','2017-11-01 00:00:00','1900-01-01 00:00:00','activo'),(6,7,6,'Tlacuache No. 2, Tequexquinahuac, Texcoco, Edo. Mex.','9712162','2017-11-01 00:00:00','1900-01-01 00:00:00','activo'),(7,8,7,'Moras No. 17, El Tejocote, Texcoco, Edo. Mex.','9750905','2017-11-01 00:00:00','1900-01-01 00:00:00','activo');
/*!40000 ALTER TABLE `dueño` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entidad`
--

DROP TABLE IF EXISTS `entidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entidad` (
  `identidad` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`identidad`),
  UNIQUE KEY `identidad_UNIQUE` (`identidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entidad`
--

LOCK TABLES `entidad` WRITE;
/*!40000 ALTER TABLE `entidad` DISABLE KEYS */;
/*!40000 ALTER TABLE `entidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `extravío`
--

DROP TABLE IF EXISTS `extravío`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `extravío` (
  `idextravío` int(11) NOT NULL,
  `idservicio` int(10) unsigned NOT NULL,
  `fechaextravio` datetime NOT NULL,
  `fecharecuperacion` datetime NOT NULL,
  PRIMARY KEY (`idextravío`),
  UNIQUE KEY `idextravío_UNIQUE` (`idextravío`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `extravío`
--

LOCK TABLES `extravío` WRITE;
/*!40000 ALTER TABLE `extravío` DISABLE KEYS */;
/*!40000 ALTER TABLE `extravío` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pago` (
  `idpago` int(11) NOT NULL,
  `idservicio` int(11) NOT NULL,
  `tipopago` varchar(45) NOT NULL,
  `monto` decimal(10,2) unsigned NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idpago`),
  UNIQUE KEY `idpago_UNIQUE` (`idpago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,1,'efectivo',4000.00,'realizado'),(2,2,'efectivo',4000.00,'realizado'),(3,3,'efectivo',4000.00,'realizado'),(4,4,'efectivo',4000.00,'realizado'),(5,5,'efectivo',4000.00,'realizado'),(6,6,'efectivo',4000.00,'realizado'),(7,7,'efectivo',4000.00,'realizado'),(8,8,'efectivo',4000.00,'realizado'),(9,9,'efectivo',4000.00,'realizado'),(10,10,'efectivo',4000.00,'realizado'),(11,11,'efectivo',4000.00,'realizado'),(12,12,'efectivo',4000.00,'realizado');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `perfil`
--

DROP TABLE IF EXISTS `perfil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `perfil` (
  `idperfil` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idperfil`),
  UNIQUE KEY `idperfil_UNIQUE` (`idperfil`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `perfil`
--

LOCK TABLES `perfil` WRITE;
/*!40000 ALTER TABLE `perfil` DISABLE KEYS */;
/*!40000 ALTER TABLE `perfil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `servicio` (
  `idservicio` int(11) NOT NULL,
  `idchofer` int(10) unsigned NOT NULL,
  `idunidad` int(10) unsigned NOT NULL,
  `fechainicio` datetime NOT NULL,
  `fechafin` datetime NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idservicio`),
  UNIQUE KEY `idservicio_UNIQUE` (`idservicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
INSERT INTO `servicio` VALUES (1,3,2,'2017-11-03 10:25:15','2017-11-03 19:25:15','inactivo'),(2,7,1,'2017-11-03 10:26:00','2017-11-03 19:26:00','inactivo'),(3,2,3,'2017-11-03 10:30:10','2017-11-03 19:30:10','inactivo'),(4,1,10,'2017-11-03 10:31:50','2017-11-03 19:31:50','inactivo'),(5,6,1,'2017-11-04 10:22:55','2017-11-04 19:22:55','inactivo'),(6,2,4,'2017-11-04 10:23:40','2017-11-07 10:24:10','inactivo'),(7,2,6,'2017-11-07 10:24:20','2017-11-04 19:22:55','activo'),(8,1,1,'2017-11-07 10:24:10','2017-11-07 19:24:20','activo'),(9,6,7,'2017-11-07 10:29:30','2017-11-04 19:22:55','activo'),(10,5,5,'2017-11-07 10:30:20','2017-11-04 19:22:55','activo'),(11,7,9,'2017-11-07 10:33:00','2017-11-04 19:22:55','activo'),(12,6,10,'2017-11-07 10:34:00','2017-11-07 19:34:00','activo');
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidad`
--

DROP TABLE IF EXISTS `unidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unidad` (
  `idunidad` int(11) NOT NULL,
  `idflota` int(10) unsigned NOT NULL,
  `idzona` int(10) unsigned NOT NULL,
  `placa` varchar(45) NOT NULL,
  `modelo` varchar(45) NOT NULL,
  `año` int(11) NOT NULL,
  `color` varchar(25) NOT NULL,
  `longitud` varchar(25) DEFAULT NULL,
  `latitud` varchar(25) DEFAULT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idunidad`),
  UNIQUE KEY `idunidad_UNIQUE` (`idunidad`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidad`
--

LOCK TABLES `unidad` WRITE;
/*!40000 ALTER TABLE `unidad` DISABLE KEYS */;
INSERT INTO `unidad` VALUES (1,1,3,'867-jdg','tsuru',2015,'negro','0','0','activo'),(2,1,3,'643-yyw','tsuru',2015,'café','0','0','activo'),(3,2,10,'182-ikm','note',2016,'negro','0','0','extraviado'),(4,3,3,'080-yhs','clio',2014,'gris','0','0','averiado'),(5,3,3,'664-cua','león',2011,'gris','0','0','activo'),(6,4,11,'663-qhn','golf',2007,'café','0','0','activo'),(7,5,14,'127-ych','leaf',2016,'plateado','0','0','averiado'),(8,6,7,'872-lla','note',2016,'blanco','0','0','activo'),(9,6,7,'921-art','note',2016,'blanco','0','0','activo'),(10,7,2,'754-thx','tiida',2015,'negro','0','0','activo');
/*!40000 ALTER TABLE `unidad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuario` (
  `idusuario` int(11) NOT NULL,
  `idperfil` int(10) unsigned NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apaterno` varchar(45) NOT NULL,
  `amaterno` varchar(45) NOT NULL,
  `nombreusuario` varchar(20) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(25) NOT NULL,
  `estado` varchar(25) NOT NULL,
  PRIMARY KEY (`idusuario`),
  UNIQUE KEY `idusuario_UNIQUE` (`idusuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zona`
--

DROP TABLE IF EXISTS `zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zona` (
  `idzona` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `municipio` varchar(45) NOT NULL,
  `colonia` varchar(45) NOT NULL,
  PRIMARY KEY (`idzona`),
  UNIQUE KEY `idzona_UNIQUE` (`idzona`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zona`
--

LOCK TABLES `zona` WRITE;
/*!40000 ALTER TABLE `zona` DISABLE KEYS */;
INSERT INTO `zona` VALUES (1,'Estado de México','Texcoco','San Pablo'),(2,'Estado de México','Texcoco','Santa Catarina'),(3,'Estado de México','Texcoco','San Felipe'),(4,'Estado de México','Texcoco','Coperativo'),(5,'Estado de México','Texcoco','Las vegas'),(6,'Estado de México','Texcoco','San Pablito'),(7,'Estado de México','Texcoco','Santa Cruz'),(8,'Estado de México','Texcoco','San Nicolás'),(9,'Estado de México','Texcoco','La Purificación'),(10,'Estado de México','Texcoco','San Miguel Tlaixpan'),(11,'Estado de México','Texcoco','San Fernando'),(12,'Estado de México','Texcoco','Tequexquinahuac'),(13,'Estado de México','Texcoco','Boyeros'),(14,'Estado de México','Texcoco','Coatlinchán'),(15,'Estado de México','Texcoco','San Mateo'),(16,'Estado de México','Texcoco','Salitrería');
/*!40000 ALTER TABLE `zona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-17 19:02:37
