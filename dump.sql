-- MySQL dump 10.13  Distrib 5.5.34, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: olivdaytomato_production
-- ------------------------------------------------------
-- Server version	5.5.34-0ubuntu0.12.04.1

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
-- Table structure for table `active_admin_comments`
--

DROP TABLE IF EXISTS `active_admin_comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `active_admin_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_id` varchar(255) NOT NULL,
  `resource_type` varchar(255) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `author_type` varchar(255) DEFAULT NULL,
  `body` text,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `namespace` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_admin_notes_on_resource_type_and_resource_id` (`resource_type`,`resource_id`),
  KEY `index_active_admin_comments_on_namespace` (`namespace`),
  KEY `index_active_admin_comments_on_author_type_and_author_id` (`author_type`,`author_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `active_admin_comments`
--

LOCK TABLES `active_admin_comments` WRITE;
/*!40000 ALTER TABLE `active_admin_comments` DISABLE KEYS */;
/*!40000 ALTER TABLE `active_admin_comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_users`
--

DROP TABLE IF EXISTS `admin_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `sign_in_count` int(11) NOT NULL DEFAULT '0',
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) DEFAULT NULL,
  `last_sign_in_ip` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_admin_users_on_email` (`email`),
  UNIQUE KEY `index_admin_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_users`
--

LOCK TABLES `admin_users` WRITE;
/*!40000 ALTER TABLE `admin_users` DISABLE KEYS */;
INSERT INTO `admin_users` VALUES (1,'admin@example.com','$2a$10$zp5FZ/5jV9qEdAg8qprm8.PvPdKfohIhrOSMXZfB6bAsWeGmaFrj6',NULL,NULL,NULL,55,'2014-06-09 19:29:31','2014-06-03 22:38:41','127.0.0.1','127.0.0.1','2014-04-03 01:16:47','2014-06-09 19:29:31'),(2,'andreachiappori13@gmail.com','$2a$10$lqc5gxEAlrmjpbh.7IpNE.b.ldQAXdmAfpfLKH/RRCphNQ0Y8nrAm',NULL,NULL,NULL,12,'2014-06-16 21:24:17','2014-06-16 16:58:23','127.0.0.1','127.0.0.1','2014-05-26 16:41:15','2014-06-16 21:24:17'),(3,'jamie.crosby241@gmail.com','$2a$10$w5Ammli64cq2t0TrgHp0rOX3S3sVOv2LP.Imf/ZzpRapKbbzyOcNi',NULL,NULL,NULL,1,'2014-06-05 00:30:44','2014-06-05 00:30:44','127.0.0.1','127.0.0.1','2014-06-05 00:29:10','2014-06-05 00:30:44');
/*!40000 ALTER TABLE `admin_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner_inicios`
--

DROP TABLE IF EXISTS `banner_inicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `banner_inicios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_titulo` varchar(255) DEFAULT NULL,
  `img_parrafo` text,
  `img_url` varchar(255) DEFAULT NULL,
  `img_link` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `seccion_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner_inicios`
--

LOCK TABLES `banner_inicios` WRITE;
/*!40000 ALTER TABLE `banner_inicios` DISABLE KEYS */;
INSERT INTO `banner_inicios` VALUES (1,'Ensalada Francesa','Ensalada Francesa','ensalada.jpg','https://mail.google.com',0,1,'2014-04-09 01:52:54','2014-04-09 01:57:14','1'),(2,'Ensalada Chilena','Ensalada Chilena','ensalada.jpg','',5,1,'2014-04-09 01:55:55','2014-04-26 21:29:06','1'),(3,'Ensalada Peruana','Ensalada Peruana','ensalada.jpg','nolink',2,1,'2014-04-09 01:56:20','2014-04-09 01:56:29','1'),(4,'Ensalada Rusa','Ensalada Rusa','ensalada.jpg','https://www.facebook.com/',3,1,'2014-04-09 01:56:55','2014-04-09 01:56:55','1'),(5,'Lorem ipsum dolor sit amet, consectetur adipiscing',NULL,'ensalada.jpg','https://www.google.com.pe',1,0,'2014-04-26 21:28:01','2014-05-29 00:50:11','1');
/*!40000 ALTER TABLE `banner_inicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_alimentos`
--

DROP TABLE IF EXISTS `cat_alimentos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_alimentos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_alimentos`
--

LOCK TABLES `cat_alimentos` WRITE;
/*!40000 ALTER TABLE `cat_alimentos` DISABLE KEYS */;
/*!40000 ALTER TABLE `cat_alimentos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cat_ingredientes`
--

DROP TABLE IF EXISTS `cat_ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cat_ingredientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cat_ingredientes`
--

LOCK TABLES `cat_ingredientes` WRITE;
/*!40000 ALTER TABLE `cat_ingredientes` DISABLE KEYS */;
INSERT INTO `cat_ingredientes` VALUES (1,'Frutas','2.30','','','',0,1,'2014-05-13 20:08:12','2014-05-16 17:45:37'),(2,'Verduras','3.50','','','',0,1,'2014-05-13 20:08:35','2014-05-16 17:45:29'),(3,'Protehínas','3.50','','','',0,1,'2014-05-13 21:46:07','2014-05-16 17:45:21'),(4,'almidon','3.5',NULL,NULL,NULL,0,1,'2014-05-29 01:03:34','2014-05-29 01:03:34');
/*!40000 ALTER TABLE `cat_ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'ERick','rodri','12121212121','rodrigzer@gmail.com','sdf','sdfs','','','',0,1,'2014-05-19 20:26:33','2014-05-19 20:26:33'),(2,'dsaf','dsf','32143124','hugui8427@hotmail.com','4234','234324',NULL,NULL,NULL,0,1,'2014-05-19 20:34:22','2014-05-19 20:34:22'),(3,'roly','rodrig','123242443342','ee@dd.cc','dfdsf','wfsf',NULL,NULL,NULL,0,1,'2014-05-23 15:40:00','2014-05-23 15:40:00'),(4,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,1,'2014-05-23 15:46:03','2014-05-23 15:46:03'),(5,'jujujujuj','ujujuju','3245324324','sdf@dddddd.c','44423','4234234',NULL,NULL,NULL,0,1,'2014-05-23 17:14:53','2014-05-23 17:14:53'),(6,'erick','rolrodrig','9555555','rorodrig@gmail.com','chorrillos','metro de chorrillos','Si',NULL,NULL,0,1,'2014-06-09 20:45:33','2014-06-09 20:45:33');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contactos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) DEFAULT NULL,
  `text_4` varchar(255) DEFAULT NULL,
  `text_5` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
INSERT INTO `contactos` VALUES (1,'erick','rodriguez','3243432423','rodrigzer@gmail.com','Prueba de envío de mensaje',NULL,NULL,NULL,NULL,NULL,0,1,'2014-06-09 20:43:41','2014-06-09 20:43:41');
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enfermedads`
--

DROP TABLE IF EXISTS `enfermedads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `enfermedads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `tipo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enfermedads`
--

LOCK TABLES `enfermedads` WRITE;
/*!40000 ALTER TABLE `enfermedads` DISABLE KEYS */;
INSERT INTO `enfermedads` VALUES (1,'Hipertensión','Enfermedad','Es una condición en la cual la presión arterial se encuentra persistentemente alta (presión asistólica > 140mmHg o presión diastólica > 90mmHg o ambas a la vez). ','hipertension','',7,1,'2014-05-13 03:39:44','2014-06-05 01:40:59'),(2,'A la Lactosa','Intolerancia','La deficiencia de lactasa es la deficiencia enzimática mas común. Los que padecen de esta deficiencia, tienen menos capacidad para digerir la lactosa, el cual es el principal carbohidrato en la leche.','a_la_lactosa','',6,1,'2014-05-13 03:40:05','2014-06-05 01:36:46'),(3,'Al Trigo','Alergia','En la alergia al trigo, todas las proteínas que forman parte de su composición son capaces de estimular la reacción alérgica, lo que hace que debamos excluir tanto el trigo, como los productos que la contienen. ','al_trigo','',5,1,'2014-05-13 03:46:04','2014-06-05 01:29:07'),(4,'A la Soya y Oleaginosas','Alergia','Ambas son leguminosas altamente alergenas, sin embargo, no es necesario excluir de la alimentación, la totalidad de la familia de leguminosas. (Oleaginosas: almendras, nueces, pecanas, etc)','a_la_soya_y_oleaginosas','',4,1,'2014-05-13 03:46:32','2014-06-05 01:33:06'),(5,'Al Maiz','Alergia','Es una alergia sumamente rara. La exclusión de la dieta puede ser muy difícil, ya que el azúcar, el jarabe y el almidón de maíz, se utilizan ampliamente en los productos procesados. ','al_maiz','',3,1,'2014-05-13 22:04:11','2014-06-05 01:25:30'),(6,'A los Pescados y Mariscos','Alergia','El pescado y los mariscos son sumamente alergenos, por lo que aquellos que lo padecen, deberían evitar el consumo de todas sus especies. Estos alimentos contienen proteínas que causan una reacción adversa en el organismo.','a_los_pescados_y_mariscos','',2,1,'2014-05-14 19:44:35','2014-06-05 01:23:48'),(7,'Al Huevo','Alergia','El huevo contiene diversas proteínas que pueden actuar como alergenos, tanto en la yema como en la clara.','al_huevo',NULL,1,1,'2014-05-29 01:01:53','2014-06-05 01:08:45'),(8,'Dislipidemias','Enfermedad','La dislipidemia es un conjunto de condiciones patológicas que se caracterizan por una alteración en el metabolismo de los lípidos, causando un incremento anormal de los mismos en sangre. ','Dislipidemias',NULL,8,1,'2014-06-05 01:49:46','2014-06-05 01:49:46'),(9,'Meteorismo y Gases','Afección','La producción aumentada de gas se debe con frecuencia a algún trastorno de mala absorción o a la ingestión de alimentos que contienen carbohidratos no absorbibles, los cuales por acción bacteriana se fermentan.','meteorismo_y_gases',NULL,9,1,'2014-06-05 01:58:04','2014-06-05 01:58:09'),(10,'Reflujo Gastroesofágico','Afección','Consiste en la regurgitación de contenidos gástricos hacia el esófago. ','reflujo_gastroesofágico',NULL,10,1,'2014-06-05 01:59:22','2014-06-05 01:59:22'),(11,'Diabetes Mellitus','Afeccion','','diabetes_mellitus',NULL,0,1,'2014-06-05 02:18:07','2014-06-16 21:26:41');
/*!40000 ALTER TABLE `enfermedads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ensaladas`
--

DROP TABLE IF EXISTS `ensaladas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ensaladas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `parrafo` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ensaladas`
--

LOCK TABLES `ensaladas` WRITE;
/*!40000 ALTER TABLE `ensaladas` DISABLE KEYS */;
INSERT INTO `ensaladas` VALUES (1,'Ensaladas','Tenemos una selección de ensaladas listas para pedir','','',1,'2014-04-11 02:21:19','2014-04-11 02:21:19');
/*!40000 ALTER TABLE `ensaladas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria_fotos`
--

DROP TABLE IF EXISTS `galeria_fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria_fotos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `img_grande` varchar(255) DEFAULT NULL,
  `miniatura` varchar(255) DEFAULT NULL,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria_fotos`
--

LOCK TABLES `galeria_fotos` WRITE;
/*!40000 ALTER TABLE `galeria_fotos` DISABLE KEYS */;
INSERT INTO `galeria_fotos` VALUES (1,'La enlasda de fideos','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean iaculis pretium mollis. Pellentesque at justo','otro.jpg','otro_c.jpg','','',0,1,'2014-04-16 02:14:46','2014-04-16 02:18:48','1'),(2,'Ensalada Fresh','Proin ac sapien imperdiet metus laoreet varius. Nullam aliquet, magna quis aliquam sollicitudin, dolor','otro.jpg','otro_c.jpg','','',0,1,'2014-04-17 17:59:29','2014-04-17 17:59:29','1'),(3,'Fresa con Lechuga','Iperdiet metus laoreet varius. Nullam aliquet, magna quis aliquam sollicitudin, dolor','otro.jpg','otro_c.jpg','','',0,1,'2014-04-17 18:00:09','2014-04-17 18:00:09','1'),(4,' Sed vel nulla ac arcu ultrices','Donec a blandit augue, a pretium orci. Sed vel nulla ac arcu ultrices lacinia ac ut augue. Donec tempor congue enim ac facilisis.','otro.jpg','otro_c.jpg','','',0,1,'2014-04-17 18:02:11','2014-04-17 18:02:11','1'),(5,' Nam ante quam, pharetra',' In ornare felis ac massa adipiscing luctus. Nam ante quam, pharetra varius vulputate quis, scelerisque sed nibh. Nam mollis ','otro.jpg','otro_c.jpg','','',0,1,'2014-04-17 18:02:36','2014-04-17 18:02:36','1');
/*!40000 ALTER TABLE `galeria_fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `galeria_videos`
--

DROP TABLE IF EXISTS `galeria_videos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `galeria_videos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `url_video` varchar(255) DEFAULT NULL,
  `miniatura` varchar(255) DEFAULT NULL,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `imagen_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `galeria_videos`
--

LOCK TABLES `galeria_videos` WRITE;
/*!40000 ALTER TABLE `galeria_videos` DISABLE KEYS */;
INSERT INTO `galeria_videos` VALUES (1,'Salud y ensalada','ue orci massa, tempus a purus ut, porta aliquet quam. Ut placerat posuere purus, et interdum massa pulvinar sed. Maecenas tincidunt','PqThMLOvp9U','otro_c.jpg','','',0,1,'2014-04-16 02:19:30','2014-05-29 00:58:52','1');
/*!40000 ALTER TABLE `galeria_videos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia`
--

DROP TABLE IF EXISTS `historia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `historia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `imagen` varchar(255) DEFAULT NULL,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia`
--

LOCK TABLES `historia` WRITE;
/*!40000 ALTER TABLE `historia` DISABLE KEYS */;
INSERT INTO `historia` VALUES (1,'','','historia.jpg','','',0,1,'2014-04-17 20:22:03','2014-04-17 20:22:03'),(2,'','','historia.jpg','','',0,1,'2014-04-17 20:22:17','2014-04-17 20:22:17'),(3,'','','historia.jpg','','',0,1,'2014-04-17 20:22:35','2014-04-17 20:22:35');
/*!40000 ALTER TABLE `historia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `foto_titulo` varchar(255) DEFAULT NULL,
  `foto_descripcion` text,
  `video_titulo` varchar(255) DEFAULT NULL,
  `video_descripcion` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` VALUES (1,'Fotos','La naturaleza nos inspira, inspírate tu también.','Videos','Lo más nutritivo que encontramos en la web.','','',0,1,'2014-04-16 01:45:00','2014-04-23 01:21:10');
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredientes`
--

DROP TABLE IF EXISTS `ingredientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ingredientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `peso` varchar(255) DEFAULT NULL,
  `descripcion` varchar(255) DEFAULT NULL,
  `calorias` varchar(255) DEFAULT NULL,
  `grasas` varchar(255) DEFAULT NULL,
  `protehinas` varchar(255) DEFAULT NULL,
  `carbohidratos` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `cat_ingrediente_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredientes`
--

LOCK TABLES `ingredientes` WRITE;
/*!40000 ALTER TABLE `ingredientes` DISABLE KEYS */;
INSERT INTO `ingredientes` VALUES (1,'Apio','80','Maecenas felis purus, consequat eu aliquet eu, gravida eu ipsum','130','80','120','40','Hipertensión','apio',0,1,'2014-05-13 20:13:15','2014-05-16 20:05:13','2'),(2,'Tomate','150','pellentesque. Mauris scelerisque, nisi sodales imperdiet bibendum,','80','10','130','150','Hipertensión,Diabetes Mellitus','tomate',0,1,'2014-05-13 20:14:16','2014-06-09 19:31:43','2'),(3,'Naranja','90','pellentesque. Mauris scelerisque, nisi sodales imperdiet bibendum,','20','10','80','120','gastritis','naranja',0,1,'2014-05-13 20:14:55','2014-05-16 20:04:35','1'),(4,'Pera','30','Mauris scele pellentesque pellentesque.. risque, nisi sodales imperdiet bibendum,','30','10','30','115','','pera',0,1,'2014-05-13 20:15:54','2014-05-16 20:04:14','1'),(5,'Carne','85','e, nisi sodales imperdiet bib pellentesque. Mauris scelerisquendum,','0','65','20','35','Hipertensión','carne',0,1,'2014-05-13 21:46:46','2014-05-17 20:13:01','3');
/*!40000 ALTER TABLE `ingredientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libros`
--

DROP TABLE IF EXISTS `libros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `libros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `text_1` varchar(255) DEFAULT NULL,
  `text_2` varchar(255) DEFAULT NULL,
  `text_3` varchar(255) DEFAULT NULL,
  `text_4` varchar(255) DEFAULT NULL,
  `text_5` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libros`
--

LOCK TABLES `libros` WRITE;
/*!40000 ALTER TABLE `libros` DISABLE KEYS */;
INSERT INTO `libros` VALUES (1,'erick','rodriguez','95959595','rodrigzer@gmail.com','Prueba del libro de reclamaciones','pendiente',NULL,NULL,NULL,NULL,0,1,'2014-06-09 20:43:00','2014-06-09 20:43:00');
/*!40000 ALTER TABLE `libros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lista_ensaladas`
--

DROP TABLE IF EXISTS `lista_ensaladas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `lista_ensaladas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `descripcion` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `img_grande` varchar(255) DEFAULT NULL,
  `img_chica` varchar(255) DEFAULT NULL,
  `precio` varchar(255) DEFAULT NULL,
  `mineral_1` varchar(255) DEFAULT NULL,
  `mineral_2` varchar(255) DEFAULT NULL,
  `mineral_3` varchar(255) DEFAULT NULL,
  `mineral_4` varchar(255) DEFAULT NULL,
  `mineral_5` varchar(255) DEFAULT NULL,
  `mineral_6` varchar(255) DEFAULT NULL,
  `mineral_7` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `ensalada_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lista_ensaladas`
--

LOCK TABLES `lista_ensaladas` WRITE;
/*!40000 ALTER TABLE `lista_ensaladas` DISABLE KEYS */;
INSERT INTO `lista_ensaladas` VALUES (1,'La... Fresca','Una combinación exacta de lechugas, verduras y queso fresco para darle un toque final con aliño de aceitunas. ','','','IMG_7924.jpg','Fresca.png','15.30','Calorías,20% ','Proteínas,20%','Carbohidratos,20%','Grasas,20%','','','',5,1,'2014-04-11 02:58:25','2014-06-12 23:20:50','1'),(3,'La de... Fresas','Fresca variedad de lechugas y espinaca con verduras, pollo deshilachado y fresas frescas. Lo combinamos con un aliño de maracuyá dulce (stevia) para crear una explosión de sabores en cada bocado. ','','','IMG_7912.jpg','fresas.png','20.50','Proteinas1, 20%','Proteinas2, 20%','Proteinas3, 20%','Proteinas4, 20%','','','',4,1,'2014-04-12 21:18:58','2014-06-12 23:20:37','1'),(4,'La de... Zucchini','Sencillas láminas de zapallito italiano con variedad de lechugas y espinacas. Le agregamos queso fresco light y un detallle de almendras. Acompañado por un delicioso aliño balsámico endulzado con Stevia. ','','','IMG_7929.jpg','zucchini.png','17.5','energía, 10%','energía, 10%','energía, 10%','energía, 10%','','','',3,1,'2014-04-12 21:20:01','2014-06-12 23:20:25','1'),(5,'La de... Cranberry','Mezclamos lechugas con tomate, palta, cranberry deshidratado y le agregamos trozos de pollo empanizados con quinua y cocidos al horno (sin aceite!). Para acompañarla, hemos preparado un aliño cremoso a base de queso philadelphia light y cranberry deshidratado. ','Deliciosa combinación de verduras con toques de Cranberry y pollo enquinuado. ','','IMG_7906.jpg','cranberry.png','20.50','Carbohidraots, 12%','Carbohidraots, 12%','Carbohidraots, 12%','Carbohidraots, 12%','','','',2,1,'2014-04-12 21:21:45','2014-06-12 23:20:09','1'),(6,'La de... Quinua','Combinamos la quinua con tomate, cebolla blanca, zanahoria, palta, brotes de alfalfa y un aliño fresco a base de limón, aceite de oliva y condimentos.\r\n','Una divertida y fresca combinación de quinua con verduras. ','','IMG_7919.jpg','Quinua.png','10.30','Calorías,20% ','Calorías,20% ','Calorías,20% ','Calorías,20% ','','','',1,1,'2014-04-12 21:23:41','2014-06-12 23:19:57','1'),(7,'La de... Los Griegos','Combinamos la tradicional ensalada griega de cebolla, tomate, aceitunas, otras verduras y queso fresco light con un delicioso y muy pedido aliño de mostaza. ','',NULL,'IMG_7925.jpg','griega.png','','','','','',NULL,NULL,NULL,6,1,'2014-06-12 23:22:45','2014-06-12 23:23:03','1'),(8,'La de... Garbanzos','Mezclamos lechugas, espinacas y champiñones con garbanzos cocinados en su punto para darle el toque que nos encanta. Le agregamos queso fresco light y un sabroso aliño de oliva y albahaca. ','',NULL,'IMG_7914.jpg','garbanzos.png','','','','','',NULL,NULL,NULL,7,1,'2014-06-12 23:26:50','2014-06-12 23:26:50','1'),(9,'La de... La Parrilla','La ensalada soñada para los que les encanta la parrilla. Una sencilla variedad de verduras con carne a la plancha acompañado con un aliño único parrillero. ','',NULL,'IMG_7903.jpg','parrillera.png','','','','','',NULL,NULL,NULL,8,1,'2014-06-12 23:30:58','2014-06-12 23:30:58','1'),(10,'La de... Huancaína','Nuestra tradicional salsa huancaína con las verduras que mejor le van, sobre una cama lechugas y queso fresco light. ','',NULL,'IMG_7917.jpg','huanca_na.png','','','','','',NULL,NULL,NULL,9,1,'2014-06-12 23:36:01','2014-06-12 23:36:01','1'),(11,'La de... Italia','Nuestra tradicional salsa huancaína con las verduras que mejor le van, sobre una cama lechugas y queso fresco light. ','',NULL,'IMG_7926.jpg','italiana.png','','','','','',NULL,NULL,NULL,10,1,'2014-06-12 23:39:34','2014-06-12 23:39:34','1'),(12,'La de... Atún','','La ensalada de atún que todos conocemos pero con el aliño especial de ají amarillo. ',NULL,'IMG_7908.jpg','atun.png','','','','','',NULL,NULL,NULL,11,1,'2014-06-16 17:41:24','2014-06-16 17:45:32','1'),(13,'La del... Oriente','','Nuestra selección exclusiva de verduras chinas con pollo macerado previamente en sillao y un aliño japonés. ',NULL,'IMG_7909.jpg','Oriental.png','','','','','',NULL,NULL,NULL,12,1,'2014-06-16 17:48:00','2014-06-16 17:48:00','1');
/*!40000 ALTER TABLE `lista_ensaladas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nutricions`
--

DROP TABLE IF EXISTS `nutricions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nutricions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `parrafo` text,
  `nombre_producto` varchar(255) DEFAULT NULL,
  `img_producto` varchar(255) DEFAULT NULL,
  `mineral_1` varchar(255) DEFAULT NULL,
  `mineral_2` varchar(255) DEFAULT NULL,
  `mineral_3` varchar(255) DEFAULT NULL,
  `mineral_4` varchar(255) DEFAULT NULL,
  `mineral_5` varchar(255) DEFAULT NULL,
  `mineral_6` varchar(255) DEFAULT NULL,
  `mineral_7` varchar(255) DEFAULT NULL,
  `sabias_que` text,
  `fuente` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nutricions`
--

LOCK TABLES `nutricions` WRITE;
/*!40000 ALTER TABLE `nutricions` DISABLE KEYS */;
INSERT INTO `nutricions` VALUES (1,'Tips Nutricionales','Si tienes alguna condición de salud y quieres saber Cómo alimentarte, estás en el lugar correcto.','Manzana','manzana.jpg','Proteínas, 20%','Carbohidratos, 20%','Energías, 20%','Calorías, 20%','Sales, 20%','','','Allam commodo leo a scelerisque imperdiet Integer elementum suscipit tellus, at porttitor.\r\nLorem ipsum dolor sit amet, consectetur adipiscing elit Nullam commodo leo a scelerisqueellus, at porttitor.\r\nMpsum dolor sit amet, consectetur adi imperdiet Integer elementum suscipit tellus, at porttitor.','https://www.google.com.pe/,\r\nhttps://www.facebook.com/,\r\nhttp://es.wikipedia.org/wiki/Wikipedia:Portada','','',0,1,'2014-04-13 23:15:16','2014-04-14 05:13:39');
/*!40000 ALTER TABLE `nutricions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `ensalada_id` varchar(255) DEFAULT NULL,
  `ensalada_nombre` varchar(255) DEFAULT NULL,
  `ensalada_precio` varchar(255) DEFAULT NULL,
  `orden` int(11) DEFAULT '0',
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `direccion` varchar(255) DEFAULT NULL,
  `referencia` varchar(255) DEFAULT NULL,
  `mensaje` varchar(255) DEFAULT NULL,
  `tipo_de_pago` varchar(255) DEFAULT NULL,
  `monto` varchar(255) DEFAULT NULL,
  `tipo_tarjeta` varchar(255) DEFAULT NULL,
  `pago` varchar(255) DEFAULT NULL,
  `estado` varchar(255) DEFAULT 'Pendiente',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'roly','95959',NULL,NULL,NULL,0,1,'2014-04-19 00:54:48','2014-04-19 00:54:48',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pendiente'),(17,'erick','1231313213','6','Ensalada Rusa','10.30',0,1,'2014-05-02 19:52:44','2014-05-02 19:52:44','rodri','aa@aa.cc','sdf f ds','f sd dsf ','s fdsf ','efectivo','20','visa','soles 20','Pendiente'),(18,'daniela','123123213','6','Ensalada Rusa','10.30',0,1,'2014-05-02 20:20:03','2014-05-02 20:20:03','chia','ass@sdfccc.cc','sfsdf','casa','cambi no se q','efectivo','50.00','visa','soles 50.00','Pendiente'),(19,'saaa','2112323232','6','Ensalada Rusa','10.30',0,1,'2014-05-02 20:21:06','2014-05-02 20:21:06','aa','hugui8427@hotmail.com','ccd','casa','cascs sd fds fsdfds','efectivo','50','visa','soles 50','Pendiente'),(20,'Marco','112312312321','null','Lechuga(2), Platano(1), Carne(1)','18.60',0,1,'2014-05-19 19:41:01','2014-05-19 19:41:01','Ordones','sdf@sdfcc.cc','sdfsd f','s dfsd ','fsf sdf ','efectivo','20.00','visa','soles 20.00','Pendiente'),(21,'gggg','234234324','null','Lechuga(2), Platano(1), Carne(1)','18.60',0,1,'2014-05-19 19:43:01','2014-05-19 19:43:01','dfgd f','rodrigzer@gmail.com','sdfsdfdsf','sdf sd','f sdf','efectivo','25.00','visa','soles 25.00','Pendiente'),(22,'sdfd','213131312321','null','Lechuga(2), Platano(1), Carne(1)','18.60',0,1,'2014-05-19 19:43:42','2014-05-19 19:43:42','sdf ds','rodrigzer@gmail.com','sdfdsf','sdf ds','fsd ','efectivo','20','visa','soles 20','Pendiente'),(23,'ggg','3242343','null','Ensalada Personalizada: naranja(3),apio(2),carne(1),','17.40',0,1,'2014-05-19 19:49:51','2014-05-19 19:49:51','aaa','rodrigzer@gmail.com','sdfds','dfsdf','sdf','efectivo','25','visa','soles 25','Pendiente'),(24,'as','341231312321','1','Del cesar','15.30',0,1,'2014-05-19 20:20:57','2014-05-19 20:20:57','asdd','rodrigzer@gmail.com','sdf dsf','d fdsf',' sdf','efectivo','25','visa','soles 25','Pendiente'),(25,'asd','12312312321','1','Del cesar','15.30',0,1,'2014-05-19 20:25:08','2014-05-19 20:25:08','asd','rodrigzer@gmail.com','asd as','dsa dsad',' asd ','efectivo','00.00','visa','soles 00.00','Pendiente'),(26,'sdf','123312312321','1','Del cesar','15.30',0,1,'2014-05-19 20:29:41','2014-05-19 20:29:41','sdf','rodrigzer@gmail.com','213','213','123','efectivo','00.00','visa','soles 00.00','Pendiente'),(27,'sdf','234234423423','1','Del cesar','15.30',0,1,'2014-05-19 20:30:13','2014-05-19 20:30:13','sdf','hugui8427@hotmail.com','sdfsdfds','fsdfsdf','sdfsdf','efectivo','00.00','visa','soles 00.00','Pendiente'),(28,'sdf','231432143','1','Del cesar','S/.15.30',0,1,'2014-05-19 20:31:07','2014-05-19 20:31:07','sdf','rodrigzer@gmail.com','234234','34234234234','2342343242','efectivo','00.00','visa','soles 00.00','Pendiente'),(29,'effsdf','1231231231','1','Del cesar','S/.15.30',0,1,'2014-05-19 20:31:50','2014-05-19 20:31:50','fsdf','asdf@hotmail.com','2312312','1231312','32132121','efectivo','25','visa','soles 25','Pendiente'),(30,'dsaf','32143124','1','Del cesar','S/.15.30',0,1,'2014-05-19 20:34:22','2014-05-19 20:34:22','dsf','hugui8427@hotmail.com','4234','234324','234234','efectivo','00.00','visa','soles 00.00','Pendiente'),(31,'aaabbb','23423423','1','Del cesar','S/.15.30',0,1,'2014-05-19 20:36:22','2014-05-19 20:36:22','sdfsdf','rodrigzer@gmail.com','sdfd','aaaaaaaaa','aaaaaaaaaaaaaaaa','efectivo','00.00','visa','soles 00.00','Pendiente'),(32,'sdf','1232132','1','Del cesar','S/.15.30',0,1,'2014-05-19 21:22:10','2014-05-19 21:22:10','sdf','rodrigzer@gmail.com','3213213','21321213','23213213','efectivo','20','visa','soles 20','Pendiente'),(33,'sdf','34324232434','null','Ensalada Personalizada: pera(1),tomate(1),','10.00',0,1,'2014-05-21 21:50:45','2014-05-21 21:50:45','sdf','rodrigzer@gmail.com','sdf','sdfdsfsdf','dfg dfgfd','efectivo','0','visa','soles 0','Pendiente'),(34,'sdfsdg ','34324232434','null','Ensalada Personalizada: pera(1),tomate(1),','10.00',0,1,'2014-05-21 21:50:55','2014-05-21 21:50:55','sdfgdf g','rodrigzer@gmail.com','sdf','sdfdsfsdf','dfg dfgfd','efectivo','0','visa','soles 0','Pendiente'),(35,'aaaaaaaaaaaaaa','34324324','4','Tomate al Pesto','s/.17.5',0,1,'2014-05-21 21:52:35','2014-05-21 21:52:35','sd fds fd','rodrigzer@gmail.com','23432432','324','324324','efectivo','0','visa','soles 0','Pendiente'),(36,'roly','123242443342','1','Del cesar','15.30',0,1,'2014-05-23 15:40:00','2014-05-23 15:40:00','rodrig','ee@dd.cc','dfdsf','wfsf','ssdfd','tarjeta','0','mastarcard','soles 0','Pendiente'),(37,NULL,NULL,NULL,NULL,NULL,0,1,'2014-05-23 15:46:03','2014-05-23 15:46:03',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' ','Pendiente'),(38,NULL,NULL,NULL,NULL,NULL,0,1,'2014-05-23 15:48:21','2014-05-23 15:48:21',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' ','Pendiente'),(39,NULL,NULL,NULL,NULL,NULL,0,1,'2014-05-23 15:51:28','2014-05-23 15:51:28',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,' ','Pendiente'),(40,NULL,NULL,NULL,NULL,NULL,0,1,'2014-05-23 15:59:12','2014-05-23 15:59:12',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Pendiente'),(41,'erick','2342432432','1','Del cesar','15.30',0,1,'2014-05-23 16:07:53','2014-05-23 16:07:53','rrrghgh ','rodrigzer@gmail.com','sdfdfs fsd','sdf ds','fsd fds','efectivo','40','visa','dolares','Pendiente'),(42,'fdfbfg','435435534534','1','Del cesar','15.30',0,1,'2014-05-23 16:08:28','2014-05-23 16:08:28','dfgfdg','rodrigzer@gmail.com','435345','5345','345345','efectivo','30','visa','dolares','Pendiente'),(43,'uuuuuuuuuu','43535345','1','Del cesar','15.30',0,1,'2014-05-23 16:16:03','2014-05-23 16:16:03','uuuuu','rodrigzer@gmail.com','3454543','dfgfd','ggdfg','efectivo soles 40',NULL,NULL,NULL,'Pendiente'),(44,'jjjjj','234324324','1','Del cesar','15.30',0,1,'2014-05-23 16:16:50','2014-05-23 16:16:50','jjj','rodrigzer@gmail.com','23423432','42424','23324','tarjeta mastarcard',NULL,NULL,NULL,'Pendiente'),(45,'hhh','324234234324','1','Del cesar','15.30',0,1,'2014-05-23 16:18:46','2014-05-23 16:18:46','jjgj','rodrigzer@gmail.com','sdffsdf sdfds',' dsfsd ','fsd fsdf','efectivo dolares 35',NULL,NULL,NULL,'Pendiente'),(46,'fhgh','23432424','1','Del cesar','15.30',0,1,'2014-05-23 16:20:33','2014-05-23 16:20:33','fdghfgh','rodrigzer@gmail.com','32424','324324','324324','tarjeta visa',NULL,NULL,NULL,'Pendiente'),(47,'ggggf','32424333','1','Del cesar','15.30',0,1,'2014-05-23 16:26:37','2014-05-23 16:26:37','dfsdf','rodrigzer@gmail.com','324432','4234','23432','tarjeta mastarcard',NULL,NULL,NULL,'Pendiente'),(48,'jujujujuj','3245324324','3','Pardo de Tomato','20.50',0,1,'2014-05-23 17:14:53','2014-05-23 17:14:53','ujujuju','sdf@dddddd.c','44423','4234234','2432','tarjeta mastarcard',NULL,NULL,NULL,'Pendiente'),(49,'rooollyy','213421344324','3','Pardo de Tomato','20.50',0,1,'2014-05-26 16:15:48','2014-05-26 16:15:48','errrockson','rodrigzer@gmail.com','23423 ','dfg dg','df gfd','efectivo soles 40',NULL,NULL,NULL,'Pendiente'),(50,'roolyyyy','223232323','4','Tomate al Pesto','17.5',0,1,'2014-05-26 16:18:51','2014-05-26 16:18:51','rodriiggg','rodrigzer@gmail.com','dg dfg dfgf','d fg df','g dfg dgdfg','efectivo soles 30',NULL,NULL,NULL,'Pendiente'),(51,'rodefffoooly','343435454','4','Tomate al Pesto','17.5',0,1,'2014-05-26 16:36:15','2014-05-26 16:36:15','rtr','rodrigzer@gmail.com','54353453','45344353','4534534534543','tarjeta mastarcard',NULL,NULL,NULL,'Pendiente'),(52,'trtrtr','7676767','6','Ensalada Rusa','10.30',0,1,'2014-05-29 00:07:20','2014-05-29 00:07:20','rtrtrt','rodrigzer@gmail.com','gjh','fghgfh','ghjkjkj','efectivo soles 20',NULL,NULL,NULL,'Pendiente'),(53,'ooooooooooooooo','6767567657','null','Ensalada Personalizada: pera(2),apio(3),carne(2),','22.10',0,1,'2014-05-29 00:39:52','2014-05-29 00:39:52','ghjghg','rodrigzer@gmail.com','jghjgjgh','tutyutyu','jgyjyj','efectivo dolares 100',NULL,NULL,NULL,'Pendiente'),(54,'rolly','952525625','null','Ensalada Personalizada: naranja(1),apio(1),tomate(1),','19.30',0,1,'2014-06-04 00:09:57','2014-06-04 00:09:57','rodriguez','rodrigzer@gmail.com','chorrillos','av el sol','','efectivo soles 50',NULL,NULL,NULL,'Pendiente'),(55,'rolyyy','434543545435','null','Ensalada Personalizada: naranja(1),apio(1),tomate(1),','19.30',0,1,'2014-06-04 00:14:21','2014-06-04 00:14:21','rodrig','rodrigzer@gmail.com','dsfgdfg','fdgfdgf','dgfdgfdg','tarjeta mastarcard',NULL,NULL,NULL,'Pendiente'),(56,'marco','952525625','null','Ensalada Personalizada: naranja(1),apio(1),','15.80',0,1,'2014-06-04 00:16:57','2014-06-04 00:16:57','guuu','rodrigzer@gmail.com','dfg fdg df','g dfg',' fd dfg df','tarjeta visa',NULL,NULL,NULL,'Pendiente'),(57,'erick','9555555','6','La de... Quinua','10.30',0,1,'2014-06-09 20:45:33','2014-06-09 20:45:33','rolrodrig','rorodrig@gmail.com','chorrillos','metro de chorrillos','Prueba de pedido','efectivo soles 50 - factura',NULL,NULL,NULL,'Pendiente');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20140403011601'),('20140403011616'),('20140403011617'),('20140407194836'),('20140408193816'),('20140409012327'),('20140410044028'),('20140411015021'),('20140411023003'),('20140411025159'),('20140413223436'),('20140415185656'),('20140415185803'),('20140415190117'),('20140415191911'),('20140415191935'),('20140415193720'),('20140415193746'),('20140416005047'),('20140416011314'),('20140416012923'),('20140417201320'),('20140418222035'),('20140502163619'),('20140513032112'),('20140513172546'),('20140513172637'),('20140513172745'),('20140513174552'),('20140519200753'),('20140608065421'),('20140608065613');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seccions`
--

DROP TABLE IF EXISTS `seccions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seccions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(255) DEFAULT NULL,
  `parrafo` text,
  `txt_adicional_1` text,
  `txt_adicional_2` text,
  `visible` tinyint(1) DEFAULT '1',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seccions`
--

LOCK TABLES `seccions` WRITE;
/*!40000 ALTER TABLE `seccions` DISABLE KEYS */;
INSERT INTO `seccions` VALUES (1,'null','Queremos invitarte a descubrir un nuevo estilo de vida. Comer sano es facil, rápido y delicioso.','','',1,'2014-04-08 19:50:09','2014-04-08 19:50:09');
/*!40000 ALTER TABLE `seccions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `site_infos`
--

DROP TABLE IF EXISTS `site_infos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `site_infos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `doc_title` varchar(255) DEFAULT NULL,
  `facebook_link` varchar(255) DEFAULT NULL,
  `twitter_link` varchar(255) DEFAULT NULL,
  `email_link` varchar(255) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL,
  `site_title` varchar(255) DEFAULT NULL,
  `site_desc` varchar(255) DEFAULT NULL,
  `site_keywords` varchar(255) DEFAULT NULL,
  `og_title` varchar(255) DEFAULT NULL,
  `og_desc` varchar(255) DEFAULT NULL,
  `og_url` varchar(255) DEFAULT NULL,
  `og_image` varchar(255) DEFAULT NULL,
  `og_site_name` varchar(255) DEFAULT NULL,
  `texto_adicional_1` varchar(255) DEFAULT NULL,
  `texto_adicional_2` varchar(255) DEFAULT NULL,
  `texto_adicional_3` varchar(255) DEFAULT NULL,
  `texto_adicional_4` varchar(255) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `site_infos`
--

LOCK TABLES `site_infos` WRITE;
/*!40000 ALTER TABLE `site_infos` DISABLE KEYS */;
INSERT INTO `site_infos` VALUES (1,'Oliva y Tomato','https://www.facebook.com/olivaytomato','https://twitter.com/','https://mail.google.com/','971161039','Oliva y Tomato','Prepara tus ensaladas nutritivas','ensaladas preparadas, menu de ensaladas, ensaladas, nutrición, salud, comida rápida, saludable','Oliva & Tomato','Prepara tus almuerzos de una forma divertida, rica y sobretodo muy saludables','https://www.facebook.com/olivaytomato','_Logo_personajes_ok.jpg','Oliva & Tomato','andreachiappori13@gmail.com','olivaytomato@gmail.com','','','2014-04-10 04:51:33','2014-06-05 00:39:28');
/*!40000 ALTER TABLE `site_infos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-17 12:33:06
