CREATE DATABASE  IF NOT EXISTS `plenty` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `plenty`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: plenty
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loyaltyId` int(11) DEFAULT NULL,
  `eventDescription` varchar(256) DEFAULT NULL,
  `eventName` varchar(64) DEFAULT NULL,
  `eventPicture` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (1,123,'Fill up your growler from a selection of local craft beers!','Growler Fill-Up','events/fill-your-growler.jpg'),(2,123,'Come and learn new tips from our grilling experts!','Grilling secrets revealed!','events/grilling-secrets.jpg'),(3,124,'This event will feature many organic farmers from your area with specialty items to sample.','Meet your local organic growers','events/meet-organic-grower.jpg'),(4,124,'Taste the latest varietals in this special wine lovers event.','Wine Tasting','events/wine-tasting.jpg'),(5,125,'Are you a klutz in the kitchen?  Well no more, this class will teach you how to cook a four-course meal!','Learn to cook!','events/learn-to-cook.jpg'),(6,125,'This local event will feature premium cheeses from around the world to sample, plus tips for meals to prepare with them.','Artisanal cheese tasting','events/cheese-tasting.jpg'),(7,126,'Come and learn new recipes for vegetarian cooking that will sustain and inspire you.','Vegetarian meals that inspire!','events/veg-cooking.jpg'),(8,126,'Learn about Plenty\'s selection of Fair Trade coffee beans and roasting techniques for the home roaster','Roast your own coffee','events/coffee-roasting.jpg');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `offer`
--

DROP TABLE IF EXISTS `offer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `offer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loyaltyId` int(11) DEFAULT NULL,
  `offerDescription` varchar(256) DEFAULT NULL,
  `offerName` varchar(64) DEFAULT NULL,
  `offerPicture` mediumtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `offer`
--

LOCK TABLES `offer` WRITE;
/*!40000 ALTER TABLE `offer` DISABLE KEYS */;
INSERT INTO `offer` VALUES (3,123,'This offer entitles you to a free can of salted nuts for every can you purchase.  Limit 4.','Buy one get one free on salted nuts for the big game!','offers/snacknuts.jpg'),(4,123,'Hickory Forest beer for 25% off, in six or twelve-pack bottles.  Limit 2.','25% off Hickory Forest Beer','offers/beerbottle.jpg'),(5,123,'Sirloin steaks, USDA Prime, 10% off per pound.  Limit 6.','10% off USDA Prime Sirloin Steaks','offers/steak.jpg'),(6,123,'15% off 5 lb. sack of Yukon Gold potatoes, limit 2.','Yukon Gold Potatoes, 5 lb. sack, 15% off','offers/baked-potato.jpg'),(7,124,'10% off our wide selection of French wines, limit 2.','French wine, 10% off','offers/wine.png'),(8,124,'15% off per pound of Alaskan salmon, no limit.','Fresh wild-caught Alaskan salmon, 15% off','offers/salmon.jpg'),(9,124,'Organic asparagus for 50% off per bunch, no limit','Half-price Organic Asparagus','offers/asparagus.jpg'),(10,125,'Rotisserie chicken from deli, 20% off, subject to availability.  Limit 2.','20% off hot rotisserie chicken ready-to-eat','offers/rotiss-chix.jpg'),(11,125,'10% off ready-to-eat BBQ short ribs, no limit','BBQ Short Ribs, 10% off, Ready-to-Eat','offers/bbq-ribs.jpg'),(12,125,'Buy one mashed potatoes, get the second free, limit 3.','Get two ready-to-eat mashed potatoes for the price of one','offers/mashed-potatoes.jpg'),(13,126,'Beluga lentils, 20% off regular price','20% off Beluga lentils','offers/beluga-lentils.jpg'),(14,126,'25% off any size Furry Friend cat food, limit 2.','Furry Friend cat food, 25% off','offers/cat-food.jpg'),(15,126,'10% off regular price of selected brands of Fair Trade organic coffee, limit 2 12-oz. bags.','10% off select varieties of Fair Trade organic coffee','offers/coffeebeans.jpg');
/*!40000 ALTER TABLE `offer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-02-07 15:53:25
