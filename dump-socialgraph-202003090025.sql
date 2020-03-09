-- MySQL dump 10.13  Distrib 5.7.29, for Linux (x86_64)
--
-- Host: localhost    Database: socialgraph
-- ------------------------------------------------------
-- Server version	5.7.29-0ubuntu0.18.04.1

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Dublin',NULL,NULL),(2,'New York',NULL,NULL),(3,'Paris',NULL,NULL),(4,'Madrid',NULL,NULL),(5,'London',NULL,NULL),(6,'Barcelona',NULL,NULL),(7,'Moscow',NULL,NULL),(8,'Chicago',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `conections`
--

DROP TABLE IF EXISTS `conections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `conections` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned NOT NULL,
  `friend_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `conections`
--

LOCK TABLES `conections` WRITE;
/*!40000 ALTER TABLE `conections` DISABLE KEYS */;
INSERT INTO `conections` VALUES (1,1,2,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(2,2,1,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(3,2,3,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(4,3,2,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(5,3,4,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(6,3,5,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(7,3,7,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(8,4,3,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(9,5,3,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(10,5,6,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(11,5,11,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(12,5,10,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(13,5,7,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(14,6,5,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(15,7,3,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(16,7,5,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(17,7,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(18,7,12,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(19,7,8,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(20,8,7,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(21,9,12,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(22,10,5,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(23,10,11,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(24,11,5,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(25,11,10,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(26,11,19,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(27,11,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(28,12,7,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(29,12,9,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(30,12,13,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(31,12,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(32,13,12,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(33,13,14,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(34,13,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(35,14,13,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(36,14,15,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(37,15,14,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(38,16,18,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(39,16,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(40,17,18,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(41,17,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(42,18,17,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(43,19,11,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(44,19,20,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(45,20,7,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(46,20,11,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(47,20,12,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(48,20,13,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(49,20,16,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(50,20,17,'2020-03-08 14:30:27','2020-03-08 14:30:27'),(51,20,19,'2020-03-08 14:30:27','2020-03-08 14:30:27');
/*!40000 ALTER TABLE `conections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2019_08_19_000000_create_failed_jobs_table',1),(3,'2020_03_08_125646_create_people_table',1),(4,'2020_03_08_125945_create_groups_table',1),(5,'2020_03_08_130050_create_cities_table',1),(6,'2020_03_08_130150_create_trips_table',1),(7,'2020_03_08_132038_create_conections_table',1);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `people`
--

DROP TABLE IF EXISTS `people`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `people` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` bigint(20) unsigned NOT NULL DEFAULT '1',
  `firstname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `people`
--

LOCK TABLES `people` WRITE;
/*!40000 ALTER TABLE `people` DISABLE KEYS */;
INSERT INTO `people` VALUES (1,1,'Paul','Crowe',28,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(2,1,'Rob','Fitz',23,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(3,1,'Ben','O\'Carolan',NULL,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(4,1,'Victor','',28,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(5,1,'Peter','Mac',29,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(6,1,'John','Barry',18,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(7,1,'Sarah','Lane',30,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(8,1,'Susan','Downe',28,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(9,1,'Jack','Stam',28,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(10,1,'Amy','Lane',24,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(11,1,'Sandra','Phelan',28,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(12,1,'Laura','Murphy',33,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(13,1,'Lisa','Daly',28,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(14,1,'Mark','Johnson',28,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(15,1,'Seamus','Crowe',24,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(16,1,'Daren','Slater',28,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(17,1,'Dara','Zoltan',48,'male','2020-03-08 14:30:27','2020-03-08 14:30:27'),(18,1,'Marie','D',28,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(19,1,'Catriona','Long',28,'female','2020-03-08 14:30:27','2020-03-08 14:30:27'),(20,1,'Katy','Couch',28,'female','2020-03-08 14:30:27','2020-03-08 14:30:27');
/*!40000 ALTER TABLE `people` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trips`
--

DROP TABLE IF EXISTS `trips`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trips` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `person_id` bigint(20) unsigned NOT NULL,
  `city_id` bigint(20) unsigned NOT NULL,
  `rate` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trips`
--

LOCK TABLES `trips` WRITE;
/*!40000 ALTER TABLE `trips` DISABLE KEYS */;
INSERT INTO `trips` VALUES (1,1,1,80,NULL,NULL),(2,1,2,100,NULL,NULL),(3,1,3,95,NULL,NULL),(4,1,4,100,NULL,NULL),(5,1,5,80,NULL,NULL),(6,1,6,100,NULL,NULL),(7,1,7,20,NULL,NULL),(8,2,1,40,NULL,NULL),(9,2,2,100,NULL,NULL),(10,2,3,65,NULL,NULL),(11,2,4,90,NULL,NULL),(12,3,3,90,NULL,NULL),(13,3,4,40,NULL,NULL),(14,3,5,65,NULL,NULL),(15,3,6,90,NULL,NULL),(16,3,7,80,NULL,NULL),(17,4,3,80,NULL,NULL),(18,4,4,80,NULL,NULL),(19,4,5,80,NULL,NULL),(20,4,6,80,NULL,NULL),(21,4,7,40,NULL,NULL),(22,5,1,60,NULL,NULL),(23,5,2,100,NULL,NULL),(24,5,3,75,NULL,NULL),(25,6,5,80,NULL,NULL),(26,7,2,100,NULL,NULL),(27,7,8,70,NULL,NULL),(28,8,8,70,NULL,NULL),(29,8,1,80,NULL,NULL),(30,9,8,70,NULL,NULL),(31,10,3,95,NULL,NULL),(32,10,6,80,NULL,NULL),(33,10,7,100,NULL,NULL),(34,11,1,75,NULL,NULL),(35,11,8,60,NULL,NULL),(36,11,7,70,NULL,NULL),(37,12,1,75,NULL,NULL),(38,12,7,75,NULL,NULL),(39,13,1,80,NULL,NULL),(40,14,1,80,NULL,NULL),(41,14,2,90,NULL,NULL),(42,14,7,50,NULL,NULL),(43,16,3,95,NULL,NULL),(44,16,8,80,NULL,NULL),(45,16,7,20,NULL,NULL),(46,17,7,30,NULL,NULL),(47,18,8,30,NULL,NULL),(48,19,8,40,NULL,NULL),(49,20,1,90,NULL,NULL),(50,20,5,90,NULL,NULL);
/*!40000 ALTER TABLE `trips` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'socialgraph'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-03-09  0:25:15
