-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: stickynotes
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notes` (
  `Notes_id` int NOT NULL AUTO_INCREMENT,
  `addedDate` datetime(6) DEFAULT NULL,
  `content` varchar(3000) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Notes_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
INSERT INTO `notes` VALUES (2,'2023-02-23 19:38:45.933000','My name is Madhur Jatiya.','Your Name'),(4,'2023-02-23 19:55:55.208000','Lokesh Nargesh','Friend'),(5,'2023-02-23 19:58:32.453000','I use Mysql Database for save data in database.','Database'),(17,'2023-02-24 18:07:38.966000','Hello how are you?','hyy'),(18,'2023-02-25 17:51:01.627000','Rajwada, also known as the Holkar Palace or Old Palace, is an important historical palace in Indore that was constructed by the Holkars of the Maratha empire, around 2 centuries ago. An example of the fine architectural skill and magnificence of those times, the palace is an impressive 7 storey structure that is placed near the Holkar Chhatris. One of the popular tourist attractions of Indore, Rajwada Palace is one of the oldest structures too. The construction of the palace was started by Malhar Rao Holkar, the founder of Holkar Dynasty in the year 1747 A.D. This remarkable structure is placed in Khajuri Bazaar, right in the middle of the city. The Rajwada palace has the Shiv Vilas Palace on the right (New Palace) and faces a well-maintained garden that has a statue of Maharani Ahilya Bai Holkar, fountains and an artificial waterfall.','Rajwada');
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-02-27 11:32:17
