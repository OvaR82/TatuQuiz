-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: triviachaco
-- ------------------------------------------------------
-- Server version	8.0.26

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `triviachaco_question`
--

DROP TABLE IF EXISTS `triviachaco_question`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triviachaco_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(500) NOT NULL,
  `quiz_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `triviaChaco_question_quiz_id_3d83a8d8_fk_triviaChaco_quiz_id` (`quiz_id`),
  CONSTRAINT `triviaChaco_question_quiz_id_3d83a8d8_fk_triviaChaco_quiz_id` FOREIGN KEY (`quiz_id`) REFERENCES `triviachaco_quiz` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triviachaco_question`
--

LOCK TABLES `triviachaco_question` WRITE;
/*!40000 ALTER TABLE `triviachaco_question` DISABLE KEYS */;
INSERT INTO `triviachaco_question` VALUES (1,'¿En qué fecha se conmemora la provincialización del Chaco?',1),(2,'¿Mediante qué ley se declaró como provincia a Chaco?',1),(3,'Antes de ser provincia Chaco se llamó:',1),(5,'Resistencia fue establecida como capital del Territorio el:',1),(11,'En el año 1940 fue formada la Junta provincialista del Chaco.',1),(15,'¿Con qué nombre se reconoció a la Provincia, luego de sancionada la Constitución Provincial de 1957?',1),(16,'El primer gobernador de la provincia del Chaco fue:',1),(18,'María Eva Duarte de Perón solicitó, mediante una carta al Presidente de la Cámara de Senadores Hortensio Quijano, que se tratara la provincialización de los Territorios del Chaco y La Pampa.',1),(20,'La primer Constitución Provincial fue sancionada en el año.',1),(21,'Otro Territorio Nacional que en el año 1951, logró su provincialización junto con la de Chaco fue:',1),(23,'Son departamentos de la provincia:',2),(24,'Chaco posee 25 departamentos y 25 municipios.',2),(27,'En total la Provincia del Chaco se compone de:',2),(28,'La provincia del Chaco tiene sus límites oeste con las provincias de:',2),(29,'Al sur de Chaco el paralelo 28°, es el límite con la provincia de:',2),(30,'Cuatro grandes ríos constituyen la frontera oriental y boreal: al este el río Negro y el río Paraná, al Este y norte el río Bermejo y su afluente, el río Teuco.',2),(31,'El clima en toda la Provincia del Chaco es:',2),(32,'La provincia del Chaco se halla íntegramente en el sector denominado Chaco Austral y posee un relieve:',2),(33,'En el norte y oeste, se encuentra un bosque que  ocupa casi la totalidad del territorio; sus tierras constituyen una de las últimas zonas aún fuera de la frontera agrícola. Se lo conoce con el nombre:',2),(34,'En el este de la provincia del Chaco, la zona de humedales, parte de la subregion del corredor fluvial Paraná–Paraguay, fue declarada en 2004 como sitio de importancia a nivel internacional, por su valor medioambiental.',2),(37,'El Ateneo del Chaco, formado por un grupo heterogéneo de profesionales, se creó como institución en el año:',3),(39,'En 1941, el Ateneo del Chaco, auspició el primer concierto de la división coral mixta de la Escuela Normal, que luego se transformaría en el Coro Polifónico.',3),(40,'El término Chaco significa “territorio de aves”.',3),(41,'Alrededor de 1944, el hogar de Aldo Boglietti se convertiría  en “un taller de pintores, escultores y punto de encuentro de bohemios” que conocemos actualmente con el nombre de:',3),(42,'Las diferencias entre el Ateneo y el Fogón, nacidos de un mismo movimiento, radicaban en que el primero realizaba una tarea de extensión cultural con carácter de institución oficial. Mientras que el segundo buscaba rescatar la reunión y el intercambio con artistas e intelectuales del resto del país y del extranjero, siempre alejado de toda formalidad.',3),(43,'Con sus orígenes en el Ateneo del Chaco se crearían estas dos Instituciones culturales:',3),(44,'La filial Chaco de la Sociedad Argentina de Escritores se creó en 1942, por iniciativa de:',3),(45,'Posteriormente haría su aparición la Asociación Coral Polifónica (1951), que tenía el objeto de respaldar la obra que Yolanda Pereno de Elizondo venía realizando como directora del Coro Polifónico desde 1938. Los integrantes del Coro eran sus alumnos secundarios, mayoritariamente salidos de la Escuela Normal.',3),(46,'En 1945, en la sede de la Asociación del Magisterio del Chaco, se reunió un grupo de docentes para constituir una Peña Nativa. Sus objetivos eran:',3),(50,'Resistencia es conocida como:',3),(51,'En el ámbito automovilístico deportivo, Chaco tiene un exponente a nivel nacional e internacional, ¿Quién es?',5),(52,'En el ámbito de los juegos olímpicos, el Chaco tiene un medallista en:',5),(53,'La chaqueña Marcela Gómez, participó en los Juegos Olímpicos de Tokio en:',5),(54,'El club de fútbol más antiguo del Chaco es:',5),(55,'A inicios del siglo XX, la actividad económica más importante del territorio era:',4),(56,'El tanino se desarrolló en:',4),(57,'Las localidades algodoneras fueron:',4),(58,'¿Qué Parques Nacionales existen en el Chaco?',6),(59,'En la Isla del Cerrito se realiza la:',7),(60,'La Fiesta Provincial del Inmigrante se realiza en',7),(61,'El Festival Nacional Taninero se desarrolla en:',7),(62,'La Fiesta Provincial del Chivo se desarrolla en:',7),(63,'La Fiesta Nacional del Algodón se desarrolla en :',7),(64,'Las Reservas Naturales del Chaco son:',6),(65,'Juan José Castelli es considerada como:',6),(66,'La ciudad de las Breñas logró jugar en el Campeonato Argentino de Clubes en:',5),(67,'En el municipio de Colonia Benítez se encuentra:',6),(69,'Campo del Cielo es reconocido por:',6),(70,'¿Qué cultivo es el más preponderante hoy en día?',4),(71,'La cadena forestal chaqueña está integrada por la producción de rollizos y leña.',4),(72,'¿Cuál equipo de los siguientes no forma parte del futbol Chaqueño?',5),(73,'¿Con qué apodo se lo conoce al automovilista chaqueño Juan Manuel Silva?',5),(74,'¿Cuál es la máxima capacidad con la que cuenta el \'Estadio Centenario\' de la provincia del Chaco?',5),(75,'¿Con cuál equipo salió campeón el futbolista chaqueño Juan Manuel Insaurralde en el Torneo Apertura 2011?',5),(76,'¿Cuál de los siguientes clubes de Basquetbol pertenece a la ciudad de Charata?',5),(77,'¿Qué universidad es originaria de la Provincia del Chaco?',6),(78,'¿Cuál de las siguientes poblaciones originarias no pertenecían al Chaco?',6),(79,'¿En la región de qué localidades se encontraban los Matacos?',6),(80,'¿Con qué nombre se conoce al puente que une Chaco y Corrientes?',6),(81,'¿Cuánto mide el puente que une Chaco con Corrientes?',6),(82,'La estructura productiva de la economía chaqueña se asienta tanto en la producción primaria como en las:',4),(83,'Entre las agroindustrias chaqueñas se destacan:',4),(84,'Dentro de la cadena textil del Chaco, en la etapa primaria de cultivo del algodón, se estima que existen alrededor de 16.000 productores, los cuales representan aproximadamente el 50% del total en el país.',4),(85,'Como consecuencia de políticas públicas de promoción, se han radicado en los últimos años empresas de servicios tecnológicos y comunicaciones que han ido ganando participación en las exportaciones provinciales.',4),(86,'El objetivo de esta empresa es proporcionar servicios de clasificación y procesamiento de datos relacionados con el análisis de sistemas, programación, procesamiento de solicitudes y comunicaciones. ¿De qué empresa chaqueña estamos hablando?',4),(87,'¿Por cuál rama de las artes plásticas es reconocida la ciudad de Resistencia?',7),(88,'¿A qué leyenda chaqueña se hace referencia en la canción de León Gieco, \'Bandidos Rurales\'?',7),(89,'¿Qué género musical interpreta Antonio Ríos?',7),(90,'¿En qué localidad de la provincia se encuentra la exhibición de los meteoritos?',7),(91,'¿En qué año se filmó la película \'La tigra, Chaco\'?',7);
/*!40000 ALTER TABLE `triviachaco_question` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-28 18:30:58
