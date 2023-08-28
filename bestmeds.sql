-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: bestmeds
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admins` (
  `emailid` varchar(100) NOT NULL,
  `adminname` text,
  `password` text,
  `picture` text,
  PRIMARY KEY (`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admins`
--

LOCK TABLES `admins` WRITE;
/*!40000 ALTER TABLE `admins` DISABLE KEYS */;
INSERT INTO `admins` VALUES ('amardeepsen99@gmail.com','Amardeep Sen','12345','1.jpg');
/*!40000 ALTER TABLE `admins` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `bannerid` int NOT NULL AUTO_INCREMENT,
  `bannerstatus` varchar(45) DEFAULT NULL,
  `bannerpicture` text,
  PRIMARY KEY (`bannerid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (1,'show','bc9db28f-aed5-4ad6-8ed0-9ed1bead3128.jpg'),(2,'show','830d65a4-dd52-4c37-9b43-66a1aca4cba8.jpg'),(3,'show','adce879f-a6a1-43e6-a996-04ce32c690e0.jpg'),(4,'show','3b31622f-7608-4d68-9aa4-a4f62d1275fc.jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `brands` (
  `brandid` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `subcategoryid` int DEFAULT NULL,
  `brandname` varchar(45) DEFAULT NULL,
  `icon` text,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`brandid`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brands`
--

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;
INSERT INTO `brands` VALUES (8,12,10,'Protinex','bc8741f1-28de-4cf0-8038-d94a49b035d3.svg','Top Brand'),(9,13,11,'Dabur','403adfd7-746b-4bd4-b900-a06642c0dafc.webp','Top Brand'),(10,12,13,'Patanjali','af064bff-c391-4a7a-9bca-4f2fd235fdda.png','Top Brand'),(11,13,15,'Himalaya','e8dc4b61-9da0-4d2e-98d3-7d1e6b36cb5b.png','Top Brand'),(12,15,16,'Colgate','747416b4-4706-4095-a229-d687343bdfa9.svg','Top Brand'),(14,19,14,'Huggies','c3270cc7-9680-44e8-896d-ae2b78914ade.webp','Top Brand'),(15,20,19,'Accu-Check','d232778e-5278-4508-ac9a-45fd4e77a975.png','Top Brand'),(16,15,18,'Bournvita','3af4c65f-cff6-4e5a-9f81-82e2ca6fcd08.jpg','Top Brand'),(18,19,20,'fssai','851a35bb-b7ab-40e0-9a1b-d44cce3784a7.webp','Top Brand'),(19,19,21,'Abbott','2f8d7028-0f93-4660-aa6d-a241731d20df.png','Top Brand');
/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categories` (
  `categoryid` int NOT NULL AUTO_INCREMENT,
  `categoryname` text,
  `icon` text,
  PRIMARY KEY (`categoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (12,'Ayush','3ee46bc7-0b5a-4755-9730-2f9ae6d8f890.jpg'),(13,'Wellness','f67a83a6-56d6-4bc3-8b21-bd9cabed96c6.png'),(14,'Treatments','9694c786-27c3-4bb5-be37-4320c9f3dab7.jpg'),(15,'Body Care','c2a945eb-df67-40c5-bb38-4ada021f07e6.jpg'),(17,'Diabetes','bfe0356e-2d43-41ee-97f4-bdf52bcde32b.jpg'),(18,'Fitness','7d8ea917-a7e1-4add-bc78-dc0941431419.jpg'),(19,'Mom & Baby','7addee42-b969-429f-a673-95036d1d8c27.jpg'),(20,'Devices','fd25adac-9d7b-4cc2-b609-e570bf9ffcb8.jpg'),(21,'Eyewear','da41a7b5-b456-4c67-a6b3-0d91e5888b98.jpg'),(22,'Protein Supplements','9041c59f-c231-4fd2-9b20-dde37e569123.jpg'),(23,'Usual Symptoms','51def912-d345-48a6-8bdf-04560927b622.jpg'),(24,'Skin Care','738a92bb-b2ac-4e37-9049-2b093e51af0f.jpg'),(25,'Smoking Cessation','9e199de0-82bf-47f3-b23b-998396d596a3.jpg'),(26,'Homeopathy','27d59833-6070-49ba-b0a6-c12ebd7f170a.webp'),(27,'Elderly Care','d5b00734-3b4f-47d6-944e-386e01975078.webp');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productimages`
--

DROP TABLE IF EXISTS `productimages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productimages` (
  `productimagesid` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `subcategoryid` int DEFAULT NULL,
  `brandid` int DEFAULT NULL,
  `productid` int DEFAULT NULL,
  `images` text,
  PRIMARY KEY (`productimagesid`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productimages`
--

LOCK TABLES `productimages` WRITE;
/*!40000 ALTER TABLE `productimages` DISABLE KEYS */;
INSERT INTO `productimages` VALUES (7,19,20,18,16,'7f8a55f6-1364-4656-89c6-4f17032d2f9a.jpg'),(8,19,20,18,16,'2317453f-72d0-4eb6-b420-4950d130b042.jpg'),(9,19,20,18,16,'8c17472e-5b0c-426f-9f7d-04fd1720d422.jpg'),(17,19,21,19,17,'b74ea3c5-d306-49dc-9bcc-50767ceaf6e0.jpg'),(18,19,21,19,17,'da350380-711b-4ef0-9ed2-5192792d16cb.jpg'),(19,19,21,19,17,'74ebdaea-91a3-49a0-9f1e-87e84b6fb187.jpg'),(20,19,21,19,17,'7349f67a-6fa4-4a5d-b417-54c0623e52e2.jpg'),(21,19,21,19,17,'54a59c27-d410-4bc0-85f2-20c682c55f3f.jpg'),(22,19,21,19,17,'8bd661e4-98b3-4ba3-9006-3fa270b76932.jpg'),(23,19,21,19,17,'5cd65c5c-e261-4177-a72e-1d4e9876bb2d.jpg');
/*!40000 ALTER TABLE `productimages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `productid` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `subcategoryid` int DEFAULT NULL,
  `brandid` int DEFAULT NULL,
  `productname` text,
  `description` text,
  `price` decimal(10,2) DEFAULT NULL,
  `offerprice` decimal(10,2) DEFAULT NULL,
  `offertype` text,
  `stock` int DEFAULT NULL,
  `status` text,
  `salestatus` text,
  `rating` text,
  `icon` text,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (6,13,15,11,'Purifying Neem Face Wash','Clinically Proven Pimple-free Healthy Skin Expert. Himalaya\'s Purifying Neem Face Wash is a soap-free formulation that cleans impurities and helps clear pimples.',425.00,375.00,'Free Shipping',567,'Continue','Trending','4.5','196c8d7e-2949-48aa-96ad-ff329fd60107.jpg'),(7,12,10,8,'INLIFE Whey Protein Powder Chocolate Flavour 400 gm','BEST QUALITY PROTEIN: INLIFE Whey Protein (combination of Whey Protein Isolate, Concentrate & Hydrolysate), your muscles absorb the protein very fast, it\'s the best kind of protein powder if you want to improve body composition. It has 24 g protein per serving, ideal for protein synthesis and building muscle. It\'s high in BCAA\'s and EAAS, they help to protect your muscles, increase muscle mass, resistance and help with your overall hormonal environment. ',1499.00,914.14,'Free Shipping',699,'Continue','Trending','4.7','7e5210f0-936b-48c7-be8d-c42026e92e66.jpg'),(8,19,14,14,'Huggies New Born Baby Diapers (XS) 22\'s','Huggies',315.00,267.75,'Free Shipping',10000,'Continue','Trending','4.6','a25fbf13-b658-4fcd-9c17-507daa3de1d7.jpg'),(9,20,19,15,'Accu-Chek Active Test Strips 50\'s','Accu-Chek Active strip is a hassle-free easy to use the product. Not require any kind of manual coding. Determination of glucose in fresh capillary blood by reflectance photometry technology.',975.00,838.50,'Free Shipping',344,'Continue','Trending','4.4','224fb01f-b18d-4645-bd34-6ca1e6553d1d.jpg'),(11,13,11,9,'Dabur Ashwagandharishta Syrup 450 ml','Dabur Ashwagandharishta is a potent formulation comprising herbs like Ashwagandha, Mushali, Manjishtha, Haritaki etc, which are goood for physical and mental health.',210.00,0.00,'Free Shipping',344,'Continue','Trending','4.5','aaff9f2b-0ba0-41c2-ab1e-bf188679339c.jpg'),(13,13,12,17,'Abbott Panbio Covid 19 Antigen Self Test Kit','Abbott Panbio Covid 19 Antigen Self-Test is a single-use, in vitro (outside the body) visually read rapid immunoassay that uses a human nasal swab specimen for the qualitative detection of nucleocapsid protein SARS-CoV-2 antigen (Ag). The Panbio™ COVID-19 Antigen Self-Test is intended to be used manually by untrained lay users (self-testing) in a private setting to aid in the diagnosis of an active SARS-CoV-2 infection.',325.00,260.00,'Free Shipping',278,'Continue','Trending','4.8','d03264aa-a242-4c9a-8e09-44e01bf2654a.webp'),(14,15,18,16,'Cadbury Bournvita Five Star Magic Health Drink - Jar 500 gm','Cadbury Bournvita Five Star Magic Health Drink is a malted drink fortified with all essential vitamins like vitamin D, B2, B9, and B12. These vitamins help in providing stronger bones and care for the overall nutrition that is required by our body. ',235.00,0.00,'Free Shipping',123,'Continue','Trending','4.5','d9611af2-5efd-4b05-964e-edd14e6e6bf8.jpg'),(15,15,17,13,'Nicotex Sugar Free Mint Plus Chewing Gums','Nicotex 2mg Chewing Gum Tin Box provides small and sustained quantities of nicotine without the harmful gases of smoking, to reduce the severity of withdrawal symptoms and cravings. Amelioration of withdrawal symptoms is observed with relatively low blood levels of nicotine, which also provides for an alternative source of some reinforcing and cognitive effects.',240.00,201.00,'Free Shipping',567,'Continue','Trending','4.8','4c3dd4cb-6cbd-4d87-82b3-4fcfa005715b.webp'),(16,19,20,18,'Pro360 MOM Nutritional Protein Powder - Swiss Chocolate Flavour 400 gm','Pro360 Mom nutritional Protein Powder is a specially designed health drink for pregnant women and breastfeeding mothers that are enriched with dry fruits, natural saffron, Omega 3, EPA, DHA, and Calcium. It also prevents anemia and is fortified with Methylcobalamine that aids in DNA Synthesis and folic acid helps to improve the neural and cognitive development of the fetus. It provides a rich and creamy taste through the nutrients supplements and supports women to improve the skeletal development of the fetus. It comes with an improved taste of swiss chocolate flavor make the experience of consuming protein shakes more likable.',575.00,488.75,'Free Shipping',567,'Continue','Trending','4.5','946f0e81-6ecf-410e-8873-7ca1564a256b.jpg'),(17,19,21,19,'Similac IQ+ Stage 3 (12 - 24 Months) Powder 400 gm -Tin','Similac 2 is a spray dried stage 2 follow up formula designed for infants from 6 months onward as part of a healthy diet during and after weaning Contains Neuro-nutrients such as Omega 3 and 6 fatty acids, Choline, Iron, Taurine, Iodine, Folic Acid and Zinc that are known to support baby’s brain development Similac contains a fat blend known to support easy digestion and promote calcium absorption Also contains Vitamin A, antioxidant vitamins C & E and zinc, that are known to support baby’s developing immune system Has a Fat blend that is known to support easy digestion and promote calcium absorption Contains Essential fatty acids, Vitamins and Minerals (such as Calcium and Iron) that are known to support healthy growth of the baby.',700.00,0.00,'Free Shipping',2344,'Continue','New Arrival','4.1','ec64fe10-9377-42b1-89b8-d187f877c2cc.jpg');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subcategories`
--

DROP TABLE IF EXISTS `subcategories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subcategories` (
  `subcategoryid` int NOT NULL AUTO_INCREMENT,
  `categoryid` int DEFAULT NULL,
  `subcategoryname` text,
  `description` text,
  `icon` text,
  PRIMARY KEY (`subcategoryid`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subcategories`
--

LOCK TABLES `subcategories` WRITE;
/*!40000 ALTER TABLE `subcategories` DISABLE KEYS */;
INSERT INTO `subcategories` VALUES (10,12,'Protein Supplements','xxxy','29aad837-9732-479a-8099-3ed1dca82308.webp'),(11,13,'Vitamins & Supplements','xxxxxxxxxxxxx','f4475fc1-bfad-42ac-a079-0dd7d2471c2f.jpg'),(12,13,'Covid Essentials','xxxxxxxxxxxxx','ae592520-5d44-407c-99a7-c3e9176f4704.jpg'),(13,12,'Ayurvedic','xxxxxxxxxxxxx','8f6aa89b-a897-4a97-95d7-69446cedde8a.jpg'),(14,19,'Huggies','xxxxxxxxxxxxxxx','f7579580-71a1-42ac-9d3d-ebeb8c29278d.webp'),(15,13,'Himalaya','xxxxxxxxxxxxxxx','001216af-c2cd-4075-8759-e7f31718327e.webp'),(16,15,'Toothpaste','xxxxxxxxxxxxxxx','d5f92c6a-e845-4f9f-87e6-e566d69013dc.webp'),(17,15,'Nicotex','xxxxxxxxxxxxxxx','0fed88b6-7090-46a7-a36d-88c31046af42.webp'),(18,15,'Bournvita','xxxxxxxxxxxxxx','f76e7146-457e-4458-97bc-1d63847b91cd.webp'),(19,20,'Heart','xxxxxxxxxxxxxx','9f671b14-4827-4cab-8ebb-4b1575126393.webp'),(20,19,'Nutritional Protein Powder','xxxxxxxxxx','4b56641c-fa6e-45d6-b487-72f1f5bfb938.webp'),(21,19,'Natural Vitamin E Powder','xxxxxxxxxxxx','c5e8a199-eeee-42a1-b053-f2f8d1ab2b2a.jpg');
/*!40000 ALTER TABLE `subcategories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `mobileno` varchar(20) NOT NULL,
  `emailid` varchar(100) NOT NULL,
  `firstname` text,
  `lastname` text,
  PRIMARY KEY (`mobileno`,`emailid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES ('7899876778','sdcdz@gmail.com','asc','ac'),('8982421787','','',''),('8988675645','cc@gmail.com','wwdxdc','dcdcx'),('9009574612','chandrashekharrawat42@gmail.com','Chandra Shekhar','Rawat'),('9009574613','ss@gmail.com','Chandra Shekhar','Rawat'),('9009678876','Alice@gmail.com','Alice','Kumari'),('9999999999','amardeepsen99@gmail.com','Amardeep','Sen');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usersaddress`
--

DROP TABLE IF EXISTS `usersaddress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usersaddress` (
  `addressid` int NOT NULL AUTO_INCREMENT,
  `mobileno` varchar(45) DEFAULT NULL,
  `emailid` varchar(45) DEFAULT NULL,
  `pincode` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `firstname` varchar(45) DEFAULT NULL,
  `lastname` varchar(45) DEFAULT NULL,
  `address` text,
  `landmark` text,
  `deliverymobileno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`addressid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usersaddress`
--

LOCK TABLES `usersaddress` WRITE;
/*!40000 ALTER TABLE `usersaddress` DISABLE KEYS */;
INSERT INTO `usersaddress` VALUES (1,'9009574613','chandrashekharrawat42@gmail.com','474002','Madhya Pradesh','Gwalior','Chandra Shekhar','Rawat','A-23 Dwarkapuri, Phoolbagh','Infront of water tank','9009567876');
/*!40000 ALTER TABLE `usersaddress` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-14 16:55:03
