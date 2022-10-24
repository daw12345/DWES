-- MariaDB dump 10.19  Distrib 10.5.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: mysitedb
-- ------------------------------------------------------
-- Server version	10.5.15-MariaDB-0+deb11u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tComentarios`
--

DROP TABLE IF EXISTS `tComentarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tComentarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `comentario` varchar(2000) DEFAULT NULL,
  `usuario_id` int(11) DEFAULT NULL,
  `pelicula_id` int(11) NOT NULL,
  `fecha` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `pelicula_id` (`pelicula_id`),
  CONSTRAINT `tComentarios_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `tUsuarios` (`id`),
  CONSTRAINT `tComentarios_ibfk_2` FOREIGN KEY (`pelicula_id`) REFERENCES `tPeliculas` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tComentarios`
--

LOCK TABLES `tComentarios` WRITE;
/*!40000 ALTER TABLE `tComentarios` DISABLE KEYS */;
INSERT INTO `tComentarios` VALUES (1,'Me encanto',1,3,NULL),(2,'Aburridisima, no la recominedo',2,2,NULL),(3,'Lo mejor que he visto',3,4,NULL),(4,'No esta mal pero las hay mejores',4,1,NULL),(5,'Me parecio muy buena, ojala saquen una segunda parte',5,5,NULL),(6,'regulera',NULL,1,NULL),(7,'No esta mal',NULL,1,NULL),(8,'No esta mal',NULL,1,NULL),(9,'No esta mal',NULL,1,'2022-10-13'),(10,'meh',NULL,1,'2022-10-13'),(11,'meh',NULL,1,'2022-10-13'),(12,'hmmm',NULL,1,'2022-10-13'),(13,'nice',NULL,1,'2022-10-13'),(14,'ta chida',NULL,3,'2022-10-13'),(15,'hola',NULL,1,'2022-10-19'),(16,'increible',1,1,'2022-10-19'),(17,'genial',NULL,1,'2022-10-20'),(18,'hola',NULL,1,'2022-10-20'),(19,'hola',1,1,'2022-10-20'),(20,'perfecto',1,1,'2022-10-20'),(21,'callate luisa no sabes',NULL,2,'2022-10-20'),(22,'cashate luisa la reconcha que te pario',1,2,'2022-10-20'),(23,'ya existe pelotudo',1,5,'2022-10-20'),(24,'tan rechidos los dinos',1,5,'2022-10-20'),(25,'perdoná angel fue mi primito',1,5,'2022-10-20');
/*!40000 ALTER TABLE `tComentarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tPeliculas`
--

DROP TABLE IF EXISTS `tPeliculas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tPeliculas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `url_imagen` varchar(200) DEFAULT NULL,
  `valoracion` int(11) DEFAULT NULL,
  `sinopsis` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tPeliculas`
--

LOCK TABLES `tPeliculas` WRITE;
/*!40000 ALTER TABLE `tPeliculas` DISABLE KEYS */;
INSERT INTO `tPeliculas` VALUES (1,'Alien el octavo pasajero','https://i.pinimg.com/236x/16/9b/2b/169b2b9357c6cd2f2f68250c01ffab12.jpg',9,'Un alien la lia en una nave'),(2,'Uno de los nuestros','https://cineclasico5.webcindario.com/UNO-130.jpg',9,'Un tipo se vuelve un gangster'),(3,'Robocop','https://e00-marca.uecdn.es/assets/multimedia/imagenes/2020/01/28/15802474391158.jpg',8,'Un tipo se vuelve un cyborg tras recibir un disparo'),(4,'Men in black','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQGtaBedd4-NqqEsA-tUvZeYWa3_OfpfjGqsA&usqp=CAU',9,'Dos tipos trajeados salvan la Tierra de una invasion alienigena'),(5,'Jurassic park','https://cope-cdnmed.agilecontent.com/resources/jpg/8/3/1621492345138.jpg',9,'Unos tipos la lian clonando dinosaurios en una isla');
/*!40000 ALTER TABLE `tPeliculas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tUsuarios`
--

DROP TABLE IF EXISTS `tUsuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tUsuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `contrasena` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tUsuarios`
--

LOCK TABLES `tUsuarios` WRITE;
/*!40000 ALTER TABLE `tUsuarios` DISABLE KEYS */;
INSERT INTO `tUsuarios` VALUES (1,'Juan','Gonzalez lopez','jgl@gmail.com','passjuan'),(2,'Luisa','Gonzalez Fernandez','Laluisa@gmail.com','12345'),(3,'Francisco','Wirtz','Fran@gmail.com','12prj543'),(4,'Lucas','Tapia Puente','andylucas@gmail.com','gekdxjr'),(5,'Angel','Garcia Rodriguez','silk@gmail.com','heodjwo');
/*!40000 ALTER TABLE `tUsuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-10-24 13:55:05
