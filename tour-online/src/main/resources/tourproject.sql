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
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS book;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE book (
  id int(11) unsigned NOT NULL,
  tour_id int(11) NOT NULL,
  user_id int(11) NOT NULL,
  date_modified timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  last_update timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date` date DEFAULT NULL,
  no_adults int(11) NOT NULL,
  `no_>12` int(11) DEFAULT NULL,
  `no_5-12` int(11) DEFAULT NULL,
  `no_2-5` int(11) DEFAULT NULL,
  `no_<2` int(11) DEFAULT NULL,
  approved tinyint(1) DEFAULT NULL,
  note varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  customer_name varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  dob date NOT NULL,
  phone_no int(20) NOT NULL,
  gender tinyint(1) NOT NULL,
  address varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  email varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id),
  KEY book_fk1 (tour_id),
  KEY book_fk2 (user_id),
  CONSTRAINT book_fk1 FOREIGN KEY (tour_id) REFERENCES tours (id) ON DELETE CASCADE,
  CONSTRAINT book_fk2 FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--


--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS images;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE images (
  id int(11) unsigned NOT NULL,
  tour_id int(11) NOT NULL,
  script varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  url varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id),
  KEY image_fk (tour_id),
  CONSTRAINT image_fk FOREIGN KEY (tour_id) REFERENCES tours (id) ON DELETE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--


--
-- Table structure for table `prices`
--

DROP TABLE IF EXISTS prices;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE prices (
  id int(11) NOT NULL,
  tour_id int(11) NOT NULL,
  adult varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `5-12` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `2-5` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `<2` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id),
  KEY prices_fk (tour_id),
  CONSTRAINT prices_fk FOREIGN KEY (tour_id) REFERENCES tours (id) ON DELETE CASCADE
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prices`
--


--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS role;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE role (
  id int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

INSERT INTO role VALUES (1,'ROLE_ADMIN');
INSERT INTO role VALUES (2,'ROLE_MANAGER');
INSERT INTO role VALUES (3,'ROLE_MEMBER');

--
-- Table structure for table `tour_guide`
--

DROP TABLE IF EXISTS tour_guide;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tour_guide (
  id int(11) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  gender tinyint(1) NOT NULL,
  phone int(11) NOT NULL,
  address varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  script varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tour_guide`
--


--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS tours;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE tours (
  id int(11) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 NOT NULL,
  length varchar(50) CHARACTER SET utf8 NOT NULL,
  origin varchar(50) CHARACTER SET utf32 NOT NULL,
  descript text CHARACTER SET utf8 NOT NULL,
  image varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  addition_service int(11) DEFAULT NULL,
  approved tinyint(1) NOT NULL,
  promotion text COLLATE utf8mb4_unicode_ci,
  price_id int(11) NOT NULL,
  PRIMARY KEY (id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tours`
--


--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS users;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE users (
  id int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  pwd text COLLATE utf8mb4_unicode_ci NOT NULL,
  email varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  phone_no int(12) NOT NULL,
  gender char(4) CHARACTER SET utf8 NOT NULL,
  address varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (id)
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

INSERT INTO users VALUES (1,'Nguyễn Thế Tuân','1111','tuan1@gmail.com',483274943,'Nam','Hà Nội');
INSERT INTO users VALUES (2,'Ngu Tẻo','2222','teo2@gmail.com',435647678,'Nữ','Hà Nội');

--
-- Table structure for table `users_role`
--

DROP TABLE IF EXISTS users_role;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE users_role (
  user_id int(11) NOT NULL,
  role_id int(11) NOT NULL DEFAULT '3',
  PRIMARY KEY (user_id,role_id),
  KEY fk_role_id_idx (role_id),
  CONSTRAINT FK3qjq7qsiigxa82jgk0i0wuq3g FOREIGN KEY (role_id) REFERENCES role (id),
  CONSTRAINT FKqpe36jsen4rslwfx5i6dj2fy8 FOREIGN KEY (user_id) REFERENCES `users` (id),
  CONSTRAINT fk_role_id FOREIGN KEY (role_id) REFERENCES role (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT fk_user_id FOREIGN KEY (user_id) REFERENCES `users` (id) ON DELETE NO ACTION ON UPDATE NO ACTION
);
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_role`
--

INSERT INTO users_role VALUES (1,1);
INSERT INTO users_role VALUES (1,2);
INSERT INTO users_role VALUES (1,3);
INSERT INTO users_role VALUES (2,3);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed
