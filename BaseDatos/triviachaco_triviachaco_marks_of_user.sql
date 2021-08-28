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
-- Table structure for table `triviachaco_marks_of_user`
--

DROP TABLE IF EXISTS `triviachaco_marks_of_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `triviachaco_marks_of_user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `score` double NOT NULL,
  `quiz_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `triviaChaco_marks_of_quiz_id_a7f30b59_fk_triviaCha` (`quiz_id`),
  KEY `triviaChaco_marks_of_user_user_id_97782bc7_fk_auth_user_id` (`user_id`),
  CONSTRAINT `triviaChaco_marks_of_quiz_id_a7f30b59_fk_triviaCha` FOREIGN KEY (`quiz_id`) REFERENCES `triviachaco_quiz` (`id`),
  CONSTRAINT `triviaChaco_marks_of_user_user_id_97782bc7_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `triviachaco_marks_of_user`
--

LOCK TABLES `triviachaco_marks_of_user` WRITE;
/*!40000 ALTER TABLE `triviachaco_marks_of_user` DISABLE KEYS */;
INSERT INTO `triviachaco_marks_of_user` VALUES (2,0,1,1),(3,15,1,1),(4,0,3,1),(5,0,2,1),(6,6,3,1),(7,5,3,1),(8,5,3,1),(9,3,3,1),(10,0,2,1),(11,0,2,1),(12,8,1,1),(13,0,2,1),(14,0,1,1),(15,0,1,4),(16,0,7,1);
/*!40000 ALTER TABLE `triviachaco_marks_of_user` ENABLE KEYS */;
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
