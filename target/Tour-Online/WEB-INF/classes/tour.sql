CREATE DATABASE  IF NOT EXISTS `toursproject` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `toursproject`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: toursproject
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL,
  `no_adults` int(11) NOT NULL,
  `no_>12` int(11) DEFAULT NULL,
  `no_5-12` int(11) DEFAULT NULL,
  `no_2-5` int(11) DEFAULT NULL,
  `no_<2` int(11) DEFAULT NULL,
  `approved` tinyint(1) DEFAULT NULL,
  `note` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `phone_no` int(20) NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `book_fk1` (`tour_id`),
  KEY `book_fk2` (`user_id`),
  CONSTRAINT `book_fk1` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE,
  CONSTRAINT `book_fk2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `images` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL,
  `script` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `image_fk` (`tour_id`),
  CONSTRAINT `image_fk` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS `prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `prices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL,
  `adult` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `5-12` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `2-5` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `<2` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `prices_fk` (`tour_id`),
  CONSTRAINT `prices_fk` FOREIGN KEY (`tour_id`) REFERENCES `tours` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--

LOCK TABLES `prices` WRITE;
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `approved` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `descript` varchar(5000) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `length` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `origin` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `promotion` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `addition_service` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'ROLE_ADMIN'),(2,'ROLE_MANAGER'),(3,'ROLE_MEMBER');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tour_guide`
--

DROP TABLE IF EXISTS `tour_guide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tour_guide` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` tinyint(1) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `script` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_guide`
--

LOCK TABLES `tour_guide` WRITE;
/*!40000 ALTER TABLE `tour_guide` DISABLE KEYS */;
/*!40000 ALTER TABLE `tour_guide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 NOT NULL,
  `length` varchar(50) CHARACTER SET utf8 NOT NULL,
  `origin` varchar(50) CHARACTER SET utf32 NOT NULL,
  `descript` text CHARACTER SET utf8 NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `addition_service` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `approved` int(11) NOT NULL,
  `promotion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--

LOCK TABLES `tours` WRITE;
/*!40000 ALTER TABLE `tours` DISABLE KEYS */;
INSERT INTO `tours` VALUES (1,'Hà Nội - Lào Cai - Sapa - Chinh phục nóc nhà Đông Dương Fansipan - Yên Tử - Hạ Long - Bái Đính - Tràng An','6 ngày','9500000','<h1 style=\"text-align:center\"><span style=\"font-family:Georgia,serif\"><span style=\"color:#006699\">Recognition of Achievement</span></span></h1> <p style=\"text-align:justify\"><span style=\"font-family:Georgia,serif\">This letter acknowledges the invaluable input <strong>you</strong>, as a member of our <em>Innovation Team</em>,&nbsp;have provided in the &ldquo;Implement Rich Text Editor&rdquo;&nbsp;project. The Management would like to hereby thank you for this great accomplishment that was delivered in a timely fashion, up to the highest company standards, and with great results:</span></p> <table border=\"1\" bordercolor=\"#ccc\" cellpadding=\"5\" cellspacing=\"0\" style=\"border-collapse:collapse;width:100%\" summary=\"Project Schedule\"> <thead> <tr> <th scope=\"col\" style=\"background-color:#cccccc\"><span style=\"font-family:Georgia,serif\">Project Phase</span></th> <th scope=\"col\" style=\"background-color:#cccccc\"><span style=\"font-family:Georgia,serif\">Deadline</span></th> <th scope=\"col\" style=\"background-color:#cccccc\"><span style=\"font-family:Georgia,serif\">Status</span></th> </tr> </thead> <tbody> <tr> <td><span style=\"font-family:Georgia,serif\">Phase 1: Market research</span></td> <td style=\"text-align:center\"><span style=\"font-family:Georgia,serif\">2016-10-15</span></td> <td style=\"text-align:center\"><span style=\"font-family:Georgia,serif\"><span style=\"color:#19b159\">✓</span></span></td> </tr> <tr> <td style=\"background-color:#eeeeee\"><span style=\"font-family:Georgia,serif\">Phase 2: Editor implementation</span></td> <td style=\"background-color:#eeeeee; text-align:center\"><span style=\"font-family:Georgia,serif\">2016-10-20</span></td> <td style=\"background-color:#eeeeee; text-align:center\"><span style=\"font-family:Georgia,serif\"><span style=\"color:#19b159\">✓</span></span></td> </tr> <tr> <td><span style=\"font-family:Georgia,serif\">Phase 3: Rollout to Production</span></td> <td style=\"text-align:center\"><span style=\"font-family:Georgia,serif\">2016-10-22</span></td> <td style=\"text-align:center\"><span style=\"font-family:Georgia,serif\"><span style=\"color:#19b159\">✓</span></span></td> </tr> </tbody> </table> <p style=\"text-align:justify\"><span style=\"font-family:Georgia,serif\">The project that you participated in is of utmost importance to the future success of our platform. &nbsp;We are very proud to share that&nbsp;the&nbsp;CKEditor implementation was a huge success and brought congratulations from both the key Stakeholders and the Customers:</span></p> <blockquote> <p style=\"text-align:center\">This new editor has totally changed our content creation experience!</p> <p style=\"text-align:center\">&mdash; John F. Smith, CEO, The New Web</p> </blockquote> <p style=\"text-align:justify\"><span style=\"font-family:Georgia,serif\">This letter recognizes that much of our success is directly attributable to your efforts.&nbsp;You deserve to be proud of your achievement. May your future efforts be equally successful and rewarding.</span></p> <p style=\"text-align:justify\"><span style=\"font-family:Georgia,serif\">I am sure we will be seeing and hearing a great deal more about your accomplishments in the future. Keep up the good work!</span></p> <p>&nbsp;</p> <p><span style=\"font-family:Georgia,serif\">Best regards,</span></p> <p><span style=\"font-family:Georgia,serif\"><em>The Management</em></span></p>','../../static/assets/frontend/layout/img/hello.png','Bảo hiểm Bữa ăn theo chương trình Hướng dẫn viên Vé tham quan Vận chuyển',1,'9000000');
/*!40000 ALTER TABLE `tours` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` int(12) NOT NULL,
  `gender` char(4) CHARACTER SET utf8 NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Nguyễn Thế Tuân','1111','tuan1@gmail.com',483274943,'Nam','Hà Nội'),(2,'Ngu Tẻo','2222','teo2@gmail.com',435647678,'Nữ','Hà Nội');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_role`
--

DROP TABLE IF EXISTS `users_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_role` (
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_role_id_idx` (`role_id`),
  CONSTRAINT `FK3qjq7qsiigxa82jgk0i0wuq3g` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`),
  CONSTRAINT `FKqpe36jsen4rslwfx5i6dj2fy8` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `role` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_role`
--

LOCK TABLES `users_role` WRITE;
/*!40000 ALTER TABLE `users_role` DISABLE KEYS */;
INSERT INTO `users_role` VALUES (1,1),(1,2),(1,3),(2,3);
/*!40000 ALTER TABLE `users_role` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-07-31 10:54:47
