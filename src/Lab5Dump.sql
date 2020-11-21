-- MySQL dump 10.14  Distrib 5.5.57-MariaDB, for Win64 (AMD64)
--
-- Host: localhost    Database: student
-- ------------------------------------------------------
-- Server version	5.5.57-MariaDB

DROP SCHEMA IF EXISTS `student`;
CREATE SCHEMA `student`;
USE `student`;

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
-- Table structure for table `performers`
--

DROP TABLE IF EXISTS `performers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performers` (
  `id` int(6) NOT NULL,
  `name` varchar(50) NOT NULL,
  `country` varchar(50) DEFAULT NULL,
  `website` varchar(80) DEFAULT NULL,
  `birth_date` datetime DEFAULT NULL,
  `death_date` datetime DEFAULT NULL,
  `is_group` bit(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performers`
--

LOCK TABLES `performers` WRITE;
/*!40000 ALTER TABLE `performers` DISABLE KEYS */;
INSERT INTO `performers` VALUES (0,'Various Artists',NULL,NULL,NULL,NULL,0);
INSERT INTO `performers` VALUES (1,'Calexico','USA','www.casadecalexico.com','1996-01-01',NULL,1);
INSERT INTO `performers` VALUES (2,'The Beatles','UK','www.beatles.com','1960-10-01','1970-01-01',1);
INSERT INTO `performers` VALUES (3,'Depeche Mode','UK','http://www.depechemode.com/','1980-01-01',NULL,1);
INSERT INTO `performers` VALUES (4,'Miles Davis','USA','www.milesdavis.com','1926-05-25','1991-09-28',0);
INSERT INTO `performers` VALUES (5,'Oasis','UK','www.oasisinet.com','1991-01-01',NULL,1);
INSERT INTO `performers` VALUES (6,'Nick Cave','Australia','www.nick-cave.com','1957-09-22',NULL,0);
INSERT INTO `performers` VALUES (7,'Kylie Minogue','Australia','www.kylie.com','1968-05-28',NULL,0);
INSERT INTO `performers` VALUES (8,'Thom Yorke','UK','www.theeraser.net','1968/07/10',NULL,0);
/*!40000 ALTER TABLE `performers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `albums` (
  `id` int(6) NOT NULL,
  `name` varchar(45) NOT NULL,
  `medium` char(3) NOT NULL,
  `cost` decimal(10,2) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `year_recorded` int(11) DEFAULT NULL,
  `label` varchar(50) DEFAULT NULL,
  `performer_id` int(6) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `ATperformerID_idx` (`performer_id`),
  CONSTRAINT `ATperformerID` FOREIGN KEY (`performer_id`) REFERENCES `performers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'The Black Light','vin','0.00','Indie rock',1998,'Quarterstick',1);
INSERT INTO `albums` VALUES (2,'Magical Mystery Tour','vin','0.00','Psychedelic rock',1967,'Parlophone, Capitol',2);
INSERT INTO `albums` VALUES (3,'Some Great Reward','vin','0.00','Darkwave',1984,'Mute',3);
INSERT INTO `albums` VALUES (4,'Kind of Blue','cd','0.00','Jazz',1959,'Columbia',4);
INSERT INTO `albums` VALUES (5,'Cigarettes & Alcohol','cd','0.00','Britpop',1994,'Creation Records',5);
INSERT INTO `albums` VALUES (6,'Murder Ballads','cd','0.00','Post punk',1996,'Mute Records',6);
INSERT INTO `albums` VALUES (7,'Body Language','cd','0.00','Pop',2003,'Parlophone',7);
INSERT INTO `albums` VALUES (8,'Playing the Angel','cd','0.00','Electronica',2005,'Mute',3);
INSERT INTO `albums` VALUES (9,'Batman Forever O.S.T.','cd','0.00','Rock, R&B, Hip-Hop',1995,'Atlantic Records',0);
INSERT INTO `albums` VALUES (10,'Light Years','cd','0.00','Pop',2000,'Parlophone, Capitol',NULL);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks`
--

DROP TABLE IF EXISTS `tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks` (
  `id` int(6) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `duration` decimal(8,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks`
--

LOCK TABLES `tracks` WRITE;
/*!40000 ALTER TABLE `tracks` DISABLE KEYS */;
INSERT INTO `tracks` (`name`,`duration`) VALUES ('There Is a Light',4.23);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('So What',9.22);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('All Blues',11.33);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Sideshow',2.2);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Vinegaroon',1.059);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('I Am the Walrus',4.36);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Blue Jay Way',3.55);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Master and Servant',4.11);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('People Are People',3.52);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('I Am the Walrus',8.14);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Cigarettes & Alcohol',4.5);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Where the Wild Roses Grow',3.56);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Crow Jane',4.13);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Slow',3.16);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Precious',4.09);
INSERT INTO `tracks` (`name`,`duration`) VALUES ('Nothing''s Impossible',4.21); 
/*!40000 ALTER TABLE `tracks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tracks_in_albums`
--

DROP TABLE IF EXISTS `tracks_in_albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tracks_in_albums` (
  `track_id` int(6) NOT NULL,
  `album_id` int(6) NOT NULL,
  `track_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`track_id`,`album_id`),
  KEY `albumID_idx` (`album_id`),
  CONSTRAINT `TAtrackID` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `TAalbumID` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tracks_in_albums`
--

LOCK TABLES `tracks_in_albums` WRITE;
/*!40000 ALTER TABLE `tracks_in_albums` DISABLE KEYS */;
INSERT INTO `tracks_in_albums` VALUES (1,9,9);
INSERT INTO `tracks_in_albums` VALUES (2,4,2);
INSERT INTO `tracks_in_albums` VALUES (3,4,4);
INSERT INTO `tracks_in_albums` VALUES (4,1,6);
INSERT INTO `tracks_in_albums` VALUES (5,1,11);
INSERT INTO `tracks_in_albums` VALUES (6,2,6);
INSERT INTO `tracks_in_albums` VALUES (7,2,4);
INSERT INTO `tracks_in_albums` VALUES (8,3,7);
INSERT INTO `tracks_in_albums` VALUES (9,3,3);
INSERT INTO `tracks_in_albums` VALUES (10,5,2);
INSERT INTO `tracks_in_albums` VALUES (11,5,1);
INSERT INTO `tracks_in_albums` VALUES (12,6,5);
INSERT INTO `tracks_in_albums` VALUES (13,6,8);
INSERT INTO `tracks_in_albums` VALUES (14,7,1);
INSERT INTO `tracks_in_albums` VALUES (15,8,5);
INSERT INTO `tracks_in_albums` VALUES (16,8,8);
/*!40000 ALTER TABLE `tracks_in_albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performers_tracks`
--

DROP TABLE IF EXISTS `performers_tracks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performers_tracks` (
  `track_id` int(6) NOT NULL,
  `performer_id` int(6) NOT NULL,
  PRIMARY KEY (`track_id`,`performer_id`),
  KEY `trackID_idx` (`track_id`),
  KEY `PTperformerID` (`performer_id`),
  CONSTRAINT `PTperformerID` FOREIGN KEY (`performer_id`) REFERENCES `performers` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `PTtrackID` FOREIGN KEY (`track_id`) REFERENCES `tracks` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='		';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performers_tracks`
--

LOCK TABLES `performers_tracks` WRITE;
/*!40000 ALTER TABLE `performers_tracks` DISABLE KEYS */;
INSERT INTO `performers_tracks` VALUES (4,1);
INSERT INTO `performers_tracks` VALUES (5,1);
INSERT INTO `performers_tracks` VALUES (6,2);
INSERT INTO `performers_tracks` VALUES (7,2);
INSERT INTO `performers_tracks` VALUES (8,3);
INSERT INTO `performers_tracks` VALUES (9,3);
INSERT INTO `performers_tracks` VALUES (15,3);
INSERT INTO `performers_tracks` VALUES (16,3);
INSERT INTO `performers_tracks` VALUES (2,4);
INSERT INTO `performers_tracks` VALUES (3,4);
INSERT INTO `performers_tracks` VALUES (10,5);
INSERT INTO `performers_tracks` VALUES (11,5);
INSERT INTO `performers_tracks` VALUES (1,6);
INSERT INTO `performers_tracks` VALUES (12,6);
INSERT INTO `performers_tracks` VALUES (13,6);
INSERT INTO `performers_tracks` VALUES (12,7);
INSERT INTO `performers_tracks` VALUES (14,7);
/*!40000 ALTER TABLE `performers_tracks` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-16 15:20:43
