-- MySQL dump 10.13  Distrib 8.3.0, for macos13.6 (arm64)
--
-- Host: localhost    Database: mypetstore
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `userid` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `firstname` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `lastname` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `status` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `addr1` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `addr2` varchar(40) COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `state` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `zip` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `country` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `phone` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES ('ACID','acid@yourdomain.com','ABC','XYX','OK','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','555-555-5555'),('asda','czxcx','xczx','czxcz','OK','zcxzczx','zcxzc','czxcz','cxzc','zcx','czxcz','czxcz'),('j2ee','yourname@yourdomain.com','ABC','XYX','OK','901 San Antonio Road','MS UCUP02-206','Palo Alto','CA','94303','USA','555-555-5555');
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `administrators`
--

DROP TABLE IF EXISTS `administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `administrators` (
  `admin_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) COLLATE utf8mb3_bin NOT NULL,
  `password_hash` char(64) COLLATE utf8mb3_bin NOT NULL,
  `email` varchar(100) COLLATE utf8mb3_bin NOT NULL,
  `phone_number` varchar(15) COLLATE utf8mb3_bin DEFAULT NULL,
  `role` enum('regular','senior','system') COLLATE utf8mb3_bin NOT NULL DEFAULT 'regular',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `last_login` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `administrators`
--

LOCK TABLES `administrators` WRITE;
/*!40000 ALTER TABLE `administrators` DISABLE KEYS */;
/*!40000 ALTER TABLE `administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bannerdata`
--

DROP TABLE IF EXISTS `bannerdata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bannerdata` (
  `favcategory` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `bannername` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`favcategory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bannerdata`
--

LOCK TABLES `bannerdata` WRITE;
/*!40000 ALTER TABLE `bannerdata` DISABLE KEYS */;
INSERT INTO `bannerdata` VALUES ('BIRDS','<image src=\"../images/banner_birds.gif\">'),('CATS','<image src=\"../images/banner_cats.gif\">'),('DOGS','<image src=\"../images/banner_dogs.gif\">'),('FISH','<image src=\"../images/banner_fish.gif\">'),('REPTILES','<image src=\"../images/banner_reptiles.gif\">');
/*!40000 ALTER TABLE `bannerdata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart`
--

DROP TABLE IF EXISTS `cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart`
--

LOCK TABLES `cart` WRITE;
/*!40000 ALTER TABLE `cart` DISABLE KEYS */;
INSERT INTO `cart` VALUES (1);
/*!40000 ALTER TABLE `cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_item`
--

DROP TABLE IF EXISTS `cart_item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_item` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `price` double NOT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_item`
--

LOCK TABLES `cart_item` WRITE;
/*!40000 ALTER TABLE `cart_item` DISABLE KEYS */;
INSERT INTO `cart_item` VALUES (9,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg','Chihuahua',81,4),(10,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product3.jpg','Dalmation',91,1),(11,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg','Chihuahua',81,2),(12,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product2.jpg','cat',50,1),(13,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product2.jpg','cat',50,5),(14,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product2.jpg','cat',50,1),(15,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg','Chihuahua',81,1),(16,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg','Chihuahua',81,3),(17,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product2.jpg','cat',50,1),(18,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product3.jpg','Dalmation',91,1),(19,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg','Chihuahua',81,2),(20,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg','Chihuahua',81,1);
/*!40000 ALTER TABLE `cart_item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cart_items`
--

DROP TABLE IF EXISTS `cart_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cart_items` (
  `cart_id` bigint NOT NULL,
  `items_id` bigint NOT NULL,
  UNIQUE KEY `UK383kkp3af9dpn91t406oqe9n1` (`items_id`),
  KEY `FK99e0am9jpriwxcm6is7xfedy3` (`cart_id`),
  CONSTRAINT `FK99e0am9jpriwxcm6is7xfedy3` FOREIGN KEY (`cart_id`) REFERENCES `cart` (`id`),
  CONSTRAINT `FKnqjva2t0na43f4qxm3xprl2qu` FOREIGN KEY (`items_id`) REFERENCES `cart_item` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cart_items`
--

LOCK TABLES `cart_items` WRITE;
/*!40000 ALTER TABLE `cart_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `cart_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `catid` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `descn` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES ('CATS','Cat','http://localhost:9000/petstore-imgs/images/category/cat_category.jpg'),('DOGS','Dog','http://localhost:9000/petstore-imgs/images/category/dog_category.jpg'),('HORSE','Horse','http://localhost:9000/petstore-imgs/images/category/horse_category.jpg'),('PET_BIRD','PetBird','http://localhost:9000/petstore-imgs/images/category/pet_bird_category.jpg'),('SMALL_PET','Small Pet','http://localhost:9000/petstore-imgs/images/category/small_pet_category.jpg'),('WILD_BIRD','Wild Bird','http://localhost:9000/petstore-imgs/images/category/wild_bird_category.jpg');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `itemid` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `qty` int NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('EST-1',10000),('EST-10',10000),('EST-11',10000),('EST-12',10000),('EST-13',10000),('EST-14',10000),('EST-15',10000),('EST-16',10000),('EST-17',10000),('EST-18',10000),('EST-19',10000),('EST-2',10000),('EST-20',10000),('EST-21',10000),('EST-22',10000),('EST-23',10000),('EST-24',10000),('EST-25',10000),('EST-26',10000),('EST-27',10000),('EST-28',10000),('EST-3',10000),('EST-4',10000),('EST-5',10000),('EST-6',10000),('EST-7',10000),('EST-8',10000),('EST-9',10000);
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item`
--

DROP TABLE IF EXISTS `item`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item` (
  `itemid` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `productid` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `listprice` decimal(10,2) DEFAULT NULL,
  `unitcost` decimal(10,2) DEFAULT NULL,
  `supplier` int DEFAULT NULL,
  `status` varchar(2) COLLATE utf8mb3_bin DEFAULT NULL,
  `attr1` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `attr2` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `attr3` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `attr4` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `attr5` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `fk_item_2` (`supplier`),
  KEY `itemProd` (`productid`),
  CONSTRAINT `fk_item_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`),
  CONSTRAINT `fk_item_2` FOREIGN KEY (`supplier`) REFERENCES `supplier` (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item`
--

LOCK TABLES `item` WRITE;
/*!40000 ALTER TABLE `item` DISABLE KEYS */;
INSERT INTO `item` VALUES ('EST-10','K9-DL-01',18.50,12.00,1,'P','Spotted Adult Female',NULL,NULL,NULL,NULL),('EST-14','FL-DSH-01',58.50,12.00,1,'P','Tailless',NULL,NULL,NULL,NULL),('EST-15','FL-DSH-01',23.50,12.00,1,'P','With tail',NULL,NULL,NULL,NULL),('EST-16','FL-DLH-02',93.50,12.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-17','FL-DLH-03',93.50,12.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-18','AV-CB-01',193.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-19','AV-SB-02',15.50,2.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-20','AV-SB-03',35.70,NULL,1,'P','adult female',NULL,NULL,NULL,NULL),('EST-22','K9-RT-02',135.50,100.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-23','K9-RT-02',145.49,100.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-24','K9-RT-01',255.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-25','K9-RT-02',325.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-26','K9-CW-01',125.50,92.00,1,'P','Adult Male',NULL,NULL,NULL,NULL),('EST-27','K9-CW-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-28','K9-RT-01',155.29,90.00,1,'P','Adult Female',NULL,NULL,NULL,NULL),('EST-6','K9-BD-01',18.50,12.00,1,'P','Male Adult',NULL,NULL,NULL,NULL),('EST-7','K9-BD-01',18.50,12.00,1,'P','Female Puppy',NULL,NULL,NULL,NULL),('EST-8','K9-PO-02',18.50,12.00,1,'P','Male Puppy',NULL,NULL,NULL,NULL),('EST-9','K9-DL-01',18.50,12.00,1,'P','Spotless Male Puppy',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `item` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lineitem`
--

DROP TABLE IF EXISTS `lineitem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lineitem` (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `itemid` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `quantity` int NOT NULL,
  `unitprice` decimal(10,2) NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lineitem`
--

LOCK TABLES `lineitem` WRITE;
/*!40000 ALTER TABLE `lineitem` DISABLE KEYS */;
/*!40000 ALTER TABLE `lineitem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `new_arrival_product`
--

DROP TABLE IF EXISTS `new_arrival_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `new_arrival_product` (
  `category` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `productid` varchar(255) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `descn` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `new_arrival_product_category_catid_fk` (`category`),
  CONSTRAINT `new_arrival_product_category_catid_fk` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `new_arrival_product`
--

LOCK TABLES `new_arrival_product` WRITE;
/*!40000 ALTER TABLE `new_arrival_product` DISABLE KEYS */;
INSERT INTO `new_arrival_product` VALUES ('WILD_BIRD','AV-CB-01','wild bird',NULL,'http://localhost:9000/petstore-imgs/images/product/wild_bird/wild_bird_product1.jpg',61),('WILD_BIRD','AV-CB-02','wild bird',NULL,'http://localhost:9000/petstore-imgs/images/product/wild_bird/wild_bird_product2.jpg',137),('CATS','CT-AS-01','cat',NULL,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product2.jpg',50),('CATS','CT-AS-02','cat',NULL,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product1.jpg',91),('DOGS','DG-AB-01','dog',NULL,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product1.jpg',55),('DOGS','DG-AB-02','dog',NULL,'http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg',54),('HORSE','HR-OS-01','horse',NULL,'http://localhost:9000/petstore-imgs/images/product/horse/horse_product1.jpg',53),('PET_BIRD','PT-BI-01','pet bird',NULL,'http://localhost:9000/petstore-imgs/images/product/pet_bird/pet_bird_product1.jpg',55),('PET_BIRD','PT-BI-02','pet bird',NULL,'http://localhost:9000/petstore-imgs/images/product/pet_bird/pet_bird_product2.jpg',66),('SMALL_PET','SP-AL-01','small pet',NULL,'http://localhost:9000/petstore-imgs/images/product/small_pet/small_pet_product1.jpg',115);
/*!40000 ALTER TABLE `new_arrival_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `orderid` int NOT NULL,
  `userid` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `orderdate` date NOT NULL,
  `shipaddr1` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `shipaddr2` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `shipcity` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `shipstate` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `shipzip` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `shipcountry` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `billaddr1` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `billaddr2` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `billcity` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `billstate` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `billzip` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `billcountry` varchar(20) COLLATE utf8mb3_bin NOT NULL,
  `courier` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `billtofirstname` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `billtolastname` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `shiptofirstname` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `shiptolastname` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `creditcard` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `exprdate` varchar(7) COLLATE utf8mb3_bin NOT NULL,
  `cardtype` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `locale` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`orderid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderstatus`
--

DROP TABLE IF EXISTS `orderstatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderstatus` (
  `orderid` int NOT NULL,
  `linenum` int NOT NULL,
  `timestamp` date NOT NULL,
  `status` varchar(2) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`orderid`,`linenum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderstatus`
--

LOCK TABLES `orderstatus` WRITE;
/*!40000 ALTER TABLE `orderstatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `orderstatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productid` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `category` varchar(10) COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `descn` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `img_url` varchar(255) COLLATE utf8mb3_bin DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`productid`),
  KEY `productCat` (`category`),
  KEY `productName` (`name`),
  CONSTRAINT `fk_product_1` FOREIGN KEY (`category`) REFERENCES `category` (`catid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('AV-CB-01','WILD_BIRD','Amazon Parrot','','',145),('AV-SB-02','WILD_BIRD','Finch','','',136),('AV-SB-03','WILD_BIRD','wild bird 3',NULL,'',97),('FL-DLH-02','CATS','Persian','','http://localhost:9000/petstore-imgs/images/product/cat/cat_product1.jpg',125),('FL-DLH-03','CATS','cat 3',NULL,'http://localhost:9000/petstore-imgs/images/product/cat/cat_product3.jpg',88),('FL-DSH-01','CATS','Manx','','http://localhost:9000/petstore-imgs/images/product/cat/cat_product2.jpg',113),('K9-BD-01','DOGS','Bulldog','','http://localhost:9000/petstore-imgs/images/product/dog/dog_product1.jpg',54),('K9-CW-01','DOGS','Chihuahua','','http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg',81),('K9-DL-01','DOGS','Dalmation','','http://localhost:9000/petstore-imgs/images/product/dog/dog_product3.jpg',91),('K9-PO-02','DOGS','Poodle','','http://localhost:9000/petstore-imgs/images/product/dog/dog_product1.jpg',64),('K9-RT-01','DOGS','Golden Retriever','','http://localhost:9000/petstore-imgs/images/product/dog/dog_product2.jpg',96),('K9-RT-02','DOGS','Labrador Retriever','','http://localhost:9000/petstore-imgs/images/product/dog/dog_product3.jpg',140);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profile`
--

DROP TABLE IF EXISTS `profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profile` (
  `userid` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `langpref` varchar(80) COLLATE utf8mb3_bin NOT NULL,
  `favcategory` varchar(30) COLLATE utf8mb3_bin DEFAULT NULL,
  `mylistopt` int DEFAULT NULL,
  `banneropt` int DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profile`
--

LOCK TABLES `profile` WRITE;
/*!40000 ALTER TABLE `profile` DISABLE KEYS */;
INSERT INTO `profile` VALUES ('ACID','english','CATS',1,1),('asda','Chinese','FISH',0,0),('j2ee','english','DOGS',1,1);
/*!40000 ALTER TABLE `profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequence`
--

DROP TABLE IF EXISTS `sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequence` (
  `name` varchar(30) COLLATE utf8mb3_bin NOT NULL,
  `nextid` int NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequence`
--

LOCK TABLES `sequence` WRITE;
/*!40000 ALTER TABLE `sequence` DISABLE KEYS */;
INSERT INTO `sequence` VALUES ('ordernum',1000);
/*!40000 ALTER TABLE `sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `signon`
--

DROP TABLE IF EXISTS `signon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `signon` (
  `username` varchar(25) COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(25) COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `signon`
--

LOCK TABLES `signon` WRITE;
/*!40000 ALTER TABLE `signon` DISABLE KEYS */;
INSERT INTO `signon` VALUES ('ACID','ACID'),('asda','dasda'),('j2ee','j2ee');
/*!40000 ALTER TABLE `signon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `suppid` int NOT NULL,
  `name` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `status` varchar(2) COLLATE utf8mb3_bin NOT NULL,
  `addr1` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `addr2` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `city` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `state` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  `zip` varchar(5) COLLATE utf8mb3_bin DEFAULT NULL,
  `phone` varchar(80) COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`suppid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'XYZ Pets','AC','600 Avon Way','','Los Angeles','CA','94024','212-947-0797'),(2,'ABC Pets','AC','700 Abalone Way','','San Francisco ','CA','94024','415-947-0797');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-03 22:08:07
