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
-- Table structure for table `triviachaco_answer`
--

DROP TABLE IF EXISTS `triviachaco_answer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triviachaco_answer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `content` varchar(200) NOT NULL,
  `correct` tinyint(1) NOT NULL,
  `question_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `triviaChaco_answer_question_id_6bb5da77_fk_triviaCha` (`question_id`),
  CONSTRAINT `triviaChaco_answer_question_id_6bb5da77_fk_triviaCha` FOREIGN KEY (`question_id`) REFERENCES `triviachaco_question` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=253 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triviachaco_answer`
--

LOCK TABLES `triviachaco_answer` WRITE;
/*!40000 ALTER TABLE `triviachaco_answer` DISABLE KEYS */;
INSERT INTO `triviachaco_answer` VALUES (1,'2 de Abril',0,1),(2,'11 de Mayo',0,1),(3,'8 de Agosto',1,1),(4,'Ley Nº 12471',0,2),(5,'Ley Nº 14037',1,2),(6,'Ley Nº 13047',0,2),(7,'Territorio Nacional del Gran Chaco',1,3),(8,'Territorio Nacional Patrio',0,3),(9,'Territorio Del Norte Occidental',0,3),(12,'2 de Febrero de 1884',0,5),(13,'4 de Abril de 1884',0,5),(14,'25 de Noviembre de 1884',1,5),(28,'Verdadero',1,11),(29,'Falso',0,11),(38,'Provincia Presidente Perón.',0,15),(39,'Provincia del Chaco.',1,15),(40,'Territorio del Gran Chaco.',0,15),(41,'Manuel Obligado.',0,16),(42,'Felipe Gallardo.',1,16),(43,'Juan Ramón Lestani.',0,16),(47,'Verdadero',1,18),(48,'Falso',0,18),(51,'1952',0,20),(52,'1957',0,20),(53,'1951',1,20),(54,'Misiones.',0,21),(55,'Formosa.',0,21),(56,'La Pampa.',1,21),(59,'Pinedo, Bermejo, Chacabuco.',0,23),(60,'Fray Justo Santa María de Oro, Bermejo, Chacabuco.',1,23),(61,'2 de Febrero, Bermejo, Chacabuco.',0,23),(62,'Verdadero',0,24),(63,'Falso',1,24),(68,'6 departamentos.',0,27),(69,'25 departamentos.',0,27),(70,'14 departamentos.',0,27),(71,'Tucumán y Salta.',0,28),(72,'Córdoba y Salta.',0,28),(73,'Santiago del Estero y Salta.',1,28),(74,'Santa Fe.',1,29),(75,'Corrientes.',0,29),(76,'Entre Ríos.',0,29),(77,'Verdadero',0,30),(78,'Falso',1,30),(79,'Subtropical',1,31),(80,'Templado de Transición',0,31),(81,'Árido',0,31),(82,'Llano y aluvial, con una pronunciada inclinación de noroeste a sudeste.',0,32),(83,'Llano y aluvial, con una muy leve inclinación de noroeste a sudoeste.',0,32),(84,'Llano y aluvial, con una muy leve inclinación de noroeste a sudeste.',1,32),(85,'El Inconmensurable.',0,33),(86,'El Caraguatá.',0,33),(87,'El Impenetrable.',1,33),(88,'Verdadero',1,34),(89,'Falso',0,34),(96,'1950',0,37),(97,'1943',0,37),(98,'1938',1,37),(102,'Verdadero',1,39),(103,'Falso',0,39),(104,'Verdadero',0,40),(105,'Falso',1,40),(106,'El Museo del Hombre Chaqueño.',0,41),(107,'La Casa Histórica del Chaco.',0,41),(108,'El Fogón de los Arrieros.',1,41),(109,'Verdadero',1,42),(110,'Falso',0,42),(111,'Academia de Arte Escénico (1941)  y el Taller Libre de Artes Plásticas de Resistencia (1943).',1,43),(112,'Academia de Bellas Artes (1941)  y el Taller de Canto Resistencia (1943).',0,43),(113,'Academia de Huellas Argentinas (1941)  y el Taller de Escultores (1943).',0,43),(114,'Aldo Boglietti, a quien se le sumaria Juan de Dios Mena.',0,44),(115,'Horacio Riveros Sosa, Juan Ramón Lestani, Juan de Dios Mena y Gaspar Benavento.',1,44),(116,'Gaspar Benavento, Guido Miranda, Estela Cuatrocchio y Jacobo Finkelstein.',0,44),(117,'Verdadero',1,45),(118,'Falso',0,45),(119,'Recopilar el arte folklórico, crear un museo de objetos indígenas y una biblioteca folklórica.',1,46),(120,'Crear un registro histórico provincial y brindar un ciclo de charlas a sus afiliados.',0,46),(121,'Ser sede de espacio de reuniones políticas y brindar conferencias.',0,46),(127,'La Ciudad de las Esculturas.',1,50),(128,'Ciudad Museo.',0,50),(129,'Ciudad Capital.',0,50),(130,'Juan Manuel Silva.',1,51),(131,'Giorgio Carrara.',0,51),(132,'Marcos Siebert.',0,51),(133,'Futbol',0,52),(134,'Basquet',1,52),(135,'Jockey',0,52),(136,'Natación',0,53),(137,'Remo',0,53),(138,'Atletismo',1,53),(139,'Chaco For Ever.',0,54),(140,'Sarmiento.',1,54),(141,'Don Orione Athletic Club.',0,54),(142,'Algodón',1,55),(143,'Pesca',0,55),(144,'Caza',0,55),(145,'Resistencia',0,56),(146,'Puesto Tirol',0,56),(147,'Vicentini',1,56),(148,'La Verde',0,56),(149,'La Escondida',0,56),(150,'Resistencia',0,57),(151,'Quitilipi',1,57),(152,'Margarita Belén',0,57),(153,'Machagai',1,57),(154,'Parque Nacional Chaco.',1,58),(155,'Parque Nacional El Impenetrable.',0,58),(156,'Parque Nacional Iberá.',0,58),(157,'Fiesta del Dorado.',1,59),(158,'Fiesta del Surubí.',0,59),(159,'Fiesta del Moncholo.',0,59),(160,'Castelli.',0,60),(161,'Las Breñas.',1,60),(162,'Puesto Tirol.',0,60),(163,'Puerto Vilelas.',0,61),(164,'Charata.',0,61),(165,'Puerto Tirol.',1,61),(166,'Pampa del Indio.',1,62),(167,'Pampa del Infierno.',0,62),(168,'Río Bermejito.',0,62),(169,'Charata.',0,63),(170,'Gancedo.',0,63),(171,'Presidencia Roque Sáenz Peña.',1,63),(172,'Reserva Natural Provincial Fuerte Esperanza.',1,64),(173,'Campo del Cielo.',0,64),(174,'Villa Río Bermejito.',0,64),(175,'Parque Provincial Loro Hablador.',1,64),(176,'Portal del Impenetrable.',1,65),(177,'Perla del Paraná.',0,65),(178,'Ciudad de las Esculturas.',0,65),(179,'Basquet',1,66),(180,'Fútbol',0,66),(181,'Natación',0,66),(182,'Tiro',0,66),(183,'Museo Casa y Jardín Schulz.',1,67),(184,'Estación Experimental Agropecuaria del INTA.',0,67),(185,'Museo a cielo abierto.',0,67),(186,'Museo a cielo abierto de Meteoritos.',1,69),(187,'Capital de los Inmigrantes.',0,69),(188,'Ciudad de las Esculturas.',0,69),(189,'Algodón',0,70),(190,'Soja',1,70),(191,'Girasol',0,70),(192,'Maíz',0,70),(193,'Verdadero',1,71),(194,'Falso',0,71),(195,'Club Atlético Sarmiento.',0,72),(196,'Club Atlético Chaco For Ever.',0,72),(197,'Club Atlético Boca Unidos.',1,72),(198,'\'El Mono\'.',0,73),(199,'\'El Pato\'.',1,73),(200,'\'La Serpiente\'.',0,73),(201,'25.000 espectadores.',1,74),(202,'50.000 espectadores.',0,74),(203,'35.000 espectadores.',0,74),(204,'Racing Club.',0,75),(205,'Club Atlético Boca Juniors.',1,75),(206,'Club Atlético River Plate',0,75),(207,'Italiana y Española.',1,76),(208,'Unión Progresista y Sokol.',0,76),(209,'Club de Regatas y Don Bosco',0,76),(210,'Universidad Nacional del Nordeste.',0,77),(211,'Universidad Nacional del Chaco Austral.',1,77),(212,'Universidad Nacional del Litoral.',0,77),(213,'Wichi',0,78),(214,'Qom',0,78),(215,'Guaraníes',1,78),(216,'El Sauzalito, el Sauzal, Nueva Pompeya, Wichi y El Colorado.',1,79),(217,'Colonia Pastoril (zona de Villa Angela), San Bernardo y La Tigra.',0,79),(218,'Resistencia, Quitilipi, Machagai, Sáenz Peña, San Martin y Castelli.',0,79),(219,'Puente General Belgrano.',1,80),(220,'Puente Sarmiento.',0,80),(221,'Puente de la Mujer.',0,80),(222,'2500 metros.',0,81),(223,'948 metros.',0,81),(224,'1700 metros.',1,81),(225,'Actividades extractivas y mineras.',0,82),(226,'Manufacturas derivadas del procesamiento de los productos agropecuarios y forestales.',1,82),(227,'Actividades industriales de tratamiento de pasta de celulosa.',0,82),(228,'El cultivo de árboles frutales, vid, olivo, legumbres, hortalizas y algodón para la producción textil; también se crían bovinos para la producción de carne.',0,83),(229,'La pesca de calamar, langostino, merluza y trucha; se producen productos metalmecánicos y para la construcción y se produce también aluminio.',0,83),(230,'La preparación de fibra de algodón, las plantas frigoríficas y la obtención de extracto de quebracho.',1,83),(231,'Verdadero',1,84),(232,'Falso',0,84),(233,'Verdadero',1,85),(234,'Falso',0,85),(235,'Nuevo Banco del Chaco.',0,86),(236,'ECOM Chaco.',1,86),(237,'Fiduciaria del Norte.',0,86),(238,'La pintura.',0,87),(239,'La escultura.',1,87),(240,'La orfebrería.',0,87),(241,'Al Lobizón.',0,88),(242,'Al personaje \'Mate Cocido\'.',1,88),(243,'A la Luz Mala.',0,88),(244,'Ópera.',0,89),(245,'Cumbia norteña y folclore.',1,89),(246,'Rock Nacional.',0,89),(247,'El Colorado.',0,90),(248,'Chorotis.',0,90),(249,'Gancedo.',1,90),(250,'2005',0,91),(251,'2009',1,91),(252,'2011',0,91);
/*!40000 ALTER TABLE `triviachaco_answer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-08-28 18:30:59
