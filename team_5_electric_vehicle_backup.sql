CREATE DATABASE  IF NOT EXISTS `ev` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ev`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: ev
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `cafv`
--

DROP TABLE IF EXISTS `cafv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cafv` (
  `DOL_vehicle_id` int NOT NULL,
  `electric_range` int NOT NULL,
  `CAFV_eligibility` varchar(60) NOT NULL,
  PRIMARY KEY (`DOL_vehicle_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cafv`
--

LOCK TABLES `cafv` WRITE;
/*!40000 ALTER TABLE `cafv` DISABLE KEYS */;
INSERT INTO `cafv` VALUES (6197691,19,'Not eligible due to low battery range'),(9163227,22,'Not eligible due to low battery range'),(9700792,35,'Clean Alternative Fuel Vehicle Eligible'),(101519512,234,'Clean Alternative Fuel Vehicle Eligible'),(103788282,38,'Clean Alternative Fuel Vehicle Eligible'),(104155124,322,'Clean Alternative Fuel Vehicle Eligible'),(104991225,322,'Clean Alternative Fuel Vehicle Eligible'),(106902435,14,'Not eligible due to low battery range'),(110157407,19,'Not eligible due to low battery range'),(110237557,322,'Clean Alternative Fuel Vehicle Eligible'),(111821167,19,'Not eligible due to low battery range'),(134938562,0,'Eligibility unknown as battery range has not been researched'),(135113296,322,'Clean Alternative Fuel Vehicle Eligible'),(136930965,32,'Clean Alternative Fuel Vehicle Eligible'),(137261820,53,'Clean Alternative Fuel Vehicle Eligible'),(138183839,215,'Clean Alternative Fuel Vehicle Eligible'),(142133393,0,'Eligibility unknown as battery range has not been researched'),(144816927,0,'Eligibility unknown as battery range has not been researched'),(150154945,0,'Eligibility unknown as battery range has not been researched'),(151035818,0,'Eligibility unknown as battery range has not been researched'),(151141518,22,'Not eligible due to low battery range'),(151980573,210,'Clean Alternative Fuel Vehicle Eligible'),(152498734,18,'Not eligible due to low battery range'),(152727515,0,'Eligibility unknown as battery range has not been researched'),(153998050,215,'Clean Alternative Fuel Vehicle Eligible'),(161550532,0,'Eligibility unknown as battery range has not been researched'),(166149385,0,'Eligibility unknown as battery range has not been researched'),(166320269,6,'Not eligible due to low battery range'),(166381701,0,'Eligibility unknown as battery range has not been researched'),(170763764,42,'Clean Alternative Fuel Vehicle Eligible'),(179020138,32,'Clean Alternative Fuel Vehicle Eligible'),(179046164,0,'Eligibility unknown as battery range has not been researched'),(180620975,0,'Eligibility unknown as battery range has not been researched'),(180714810,0,'Eligibility unknown as battery range has not been researched'),(181521700,26,'Not eligible due to low battery range'),(182237457,84,'Clean Alternative Fuel Vehicle Eligible'),(182327218,103,'Clean Alternative Fuel Vehicle Eligible'),(182941692,19,'Not eligible due to low battery range'),(186676101,208,'Clean Alternative Fuel Vehicle Eligible'),(187228030,21,'Not eligible due to low battery range'),(187492175,0,'Eligibility unknown as battery range has not been researched'),(187692284,210,'Clean Alternative Fuel Vehicle Eligible'),(193746542,0,'Eligibility unknown as battery range has not been researched'),(196095028,215,'Clean Alternative Fuel Vehicle Eligible'),(196439911,215,'Clean Alternative Fuel Vehicle Eligible'),(200753059,14,'Not eligible due to low battery range'),(200914087,0,'Eligibility unknown as battery range has not been researched'),(203462129,215,'Clean Alternative Fuel Vehicle Eligible'),(205669082,18,'Not eligible due to low battery range'),(207092126,42,'Clean Alternative Fuel Vehicle Eligible'),(208394966,0,'Eligibility unknown as battery range has not been researched'),(213570080,0,'Eligibility unknown as battery range has not been researched'),(215073008,266,'Clean Alternative Fuel Vehicle Eligible'),(216844211,0,'Eligibility unknown as battery range has not been researched'),(218307183,100,'Clean Alternative Fuel Vehicle Eligible'),(219652191,16,'Not eligible due to low battery range'),(220375774,125,'Clean Alternative Fuel Vehicle Eligible'),(223633917,0,'Eligibility unknown as battery range has not been researched'),(224666711,0,'Eligibility unknown as battery range has not been researched'),(225970755,0,'Eligibility unknown as battery range has not been researched'),(226150627,22,'Not eligible due to low battery range'),(229979662,238,'Clean Alternative Fuel Vehicle Eligible'),(232897395,210,'Clean Alternative Fuel Vehicle Eligible'),(247180615,6,'Not eligible due to low battery range'),(266614659,220,'Clean Alternative Fuel Vehicle Eligible'),(306792083,25,'Not eligible due to low battery range'),(312503502,220,'Clean Alternative Fuel Vehicle Eligible'),(320914072,220,'Clean Alternative Fuel Vehicle Eligible'),(325156345,215,'Clean Alternative Fuel Vehicle Eligible'),(332415184,220,'Clean Alternative Fuel Vehicle Eligible'),(333876581,208,'Clean Alternative Fuel Vehicle Eligible'),(341504929,215,'Clean Alternative Fuel Vehicle Eligible'),(344417741,215,'Clean Alternative Fuel Vehicle Eligible'),(349543435,210,'Clean Alternative Fuel Vehicle Eligible'),(475775205,19,'Not eligible due to low battery range'),(477029318,47,'Clean Alternative Fuel Vehicle Eligible');
/*!40000 ALTER TABLE `cafv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car`
--

DROP TABLE IF EXISTS `car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car` (
  `VIN` varchar(45) NOT NULL,
  `car_details_info` int NOT NULL,
  `location_id` int unsigned NOT NULL,
  PRIMARY KEY (`VIN`),
  KEY `fk_Table 1: Car_Table 3: Car_details_idx` (`car_details_info`),
  KEY `fk_Table 1: Car_Table 2: Location1_idx` (`location_id`),
  CONSTRAINT `fk_Table 1: Car_Table 2: Location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_Table 1: Car_Table 3: Car_details` FOREIGN KEY (`car_details_info`) REFERENCES `car_details` (`car_details_info`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car`
--

LOCK TABLES `car` WRITE;
/*!40000 ALTER TABLE `car` DISABLE KEYS */;
INSERT INTO `car` VALUES ('1C4JJXR67M',43,43),('1FADP3R48H',28,28),('1G1RA6E49D',34,34),('1G1RB6E42C',35,35),('1G1RC6S57H',30,30),('1N4AZ0CP3F',29,29),('1N4BZ1CVXM',71,71),('2C4RC1N71L',37,37),('2C4RC1N74L',36,36),('2T3YL4DV4D',27,27),('3FA6P0PU8F',44,44),('3FA6P0PUXE',46,46),('3FA6P0SU8F',48,48),('3FA6P0SU9G',47,47),('3FA6P0SUXG',45,45),('3FMTK3R76M',76,76),('5YJ3E1EA0J',12,12),('5YJ3E1EA0L',5,5),('5YJ3E1EA1M',60,60),('5YJ3E1EA7J',14,14),('5YJ3E1EA7K',10,10),('5YJ3E1EA8J',16,16),('5YJ3E1EA8Q',18,18),('5YJ3E1EA9M',57,57),('5YJ3E1EB0N',65,65),('5YJ3E1EB1K',9,9),('5YJ3E1EB2M',69,69),('5YJ3E1EB2N',75,75),('5YJ3E1EB3J',17,17),('5YJ3E1EB3K',8,8),('5YJ3E1EB4J',13,13),('5YJ3E1EB5J',15,15),('5YJ3E1EB5N',62,62),('5YJ3E1EB6J',19,19),('5YJ3E1EB6K',11,11),('5YJ3E1EB7L',3,3),('5YJ3E1EB7Q',4,4),('5YJ3E1EB8M',72,72),('5YJ3E1EB9N',61,61),('5YJ3E1EBXL',1,1),('5YJ3E1EBXQ',2,2),('5YJ3E1EC2N',67,67),('5YJ3E1ECXN',59,59),('5YJSA1CG0D',24,24),('5YJSA1E13G',22,22),('5YJSA1E20G',23,23),('5YJSA1E20H',20,20),('5YJSA1E28H',21,21),('5YJSA1H25F',25,25),('5YJXCDE46J',6,6),('5YJYGAEE9M',74,74),('5YJYGDED0M',66,66),('5YJYGDEDXM',58,58),('5YJYGDEE6M',56,56),('5YJYGDEEXM',64,64),('7SAXCBE52N',63,63),('JA4J24A58J',42,42),('JHMZC5F10J',31,31),('JTDKARFP1K',39,39),('JTDKN3DP5F',55,55),('JTDKN3DPXC',54,54),('JTMAB3FV1M',32,32),('JTMAB3FV4M',33,33),('KM8K33AG4N',68,68),('KNDCD3LD6N',38,38),('SADHC2S14K',7,7),('WA1AAAGE3P',70,70),('WAUTPBFF5H',51,51),('WBA8E1C32H',53,53),('WP1AE2A28J',52,52),('WVGRMPE28M',73,73),('WVWKR7AU6K',26,26),('YV1BK0EP2M',41,41),('YV1BK0EP3N',40,40),('YV4BK0DP2M',49,49),('YV4BR0DK0M',50,50);
/*!40000 ALTER TABLE `car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_details`
--

DROP TABLE IF EXISTS `car_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_details` (
  `car_details_info` int NOT NULL,
  `model_year` year NOT NULL,
  `electric_vehicle_type` varchar(45) NOT NULL,
  `MSRP` int NOT NULL,
  `model_id` int NOT NULL,
  PRIMARY KEY (`car_details_info`),
  KEY `fk_Table 3: Car_details_Table 8: Car_model1_idx` (`model_id`),
  CONSTRAINT `fk_Table 3: Car_details_Table 8: Car_model1` FOREIGN KEY (`model_id`) REFERENCES `car_model` (`model_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_details`
--

LOCK TABLES `car_details` WRITE;
/*!40000 ALTER TABLE `car_details` DISABLE KEYS */;
INSERT INTO `car_details` VALUES (1,2017,'Battery Electric Vehicle (BEV)',0,1),(2,2020,'Battery Electric Vehicle (BEV)',0,2),(3,2020,'Battery Electric Vehicle (BEV)',0,3),(4,2020,'Battery Electric Vehicle (BEV)',0,4),(5,2020,'Battery Electric Vehicle (BEV)',0,5),(6,2018,'Battery Electric Vehicle (BEV)',0,6),(7,2019,'Battery Electric Vehicle (BEV)',0,7),(8,2019,'Battery Electric Vehicle (BEV)',0,8),(9,2019,'Battery Electric Vehicle (BEV)',0,9),(10,2019,'Battery Electric Vehicle (BEV)',0,10),(11,2019,'Battery Electric Vehicle (BEV)',0,11),(12,2018,'Battery Electric Vehicle (BEV)',0,12),(13,2018,'Battery Electric Vehicle (BEV)',0,13),(14,2018,'Battery Electric Vehicle (BEV)',0,14),(15,2018,'Battery Electric Vehicle (BEV)',0,15),(16,2018,'Battery Electric Vehicle (BEV)',0,16),(17,2018,'Battery Electric Vehicle (BEV)',0,17),(18,2018,'Battery Electric Vehicle (BEV)',0,18),(19,2018,'Battery Electric Vehicle (BEV)',0,19),(20,2017,'Battery Electric Vehicle (BEV)',0,20),(21,2017,'Battery Electric Vehicle (BEV)',0,21),(22,2016,'Battery Electric Vehicle (BEV)',0,22),(23,2016,'Battery Electric Vehicle (BEV)',0,23),(24,2013,'Battery Electric Vehicle (BEV)',69900,24),(25,2015,'Battery Electric Vehicle (BEV)',0,25),(26,2019,'Battery Electric Vehicle (BEV)',0,26),(27,2013,'Battery Electric Vehicle (BEV)',0,27),(28,2017,'Battery Electric Vehicle (BEV)',0,28),(29,2015,'Battery Electric Vehicle (BEV)',0,29),(30,2017,'Plug-in Hybrid Electric Vehicle (PHEV)',0,30),(31,2018,'Plug-in Hybrid Electric Vehicle (PHEV)',0,31),(32,2021,'Plug-in Hybrid Electric Vehicle (PHEV)',0,32),(33,2021,'Plug-in Hybrid Electric Vehicle (PHEV)',0,33),(34,2013,'Plug-in Hybrid Electric Vehicle (PHEV)',0,34),(35,2012,'Plug-in Hybrid Electric Vehicle (PHEV)',0,35),(36,2020,'Plug-in Hybrid Electric Vehicle (PHEV)',0,36),(37,2020,'Plug-in Hybrid Electric Vehicle (PHEV)',0,37),(38,2022,'Plug-in Hybrid Electric Vehicle (PHEV)',0,38),(39,2019,'Plug-in Hybrid Electric Vehicle (PHEV)',0,39),(40,2022,'Plug-in Hybrid Electric Vehicle (PHEV)',0,40),(41,2021,'Plug-in Hybrid Electric Vehicle (PHEV)',0,41),(42,2018,'Plug-in Hybrid Electric Vehicle (PHEV)',0,42),(43,2021,'Plug-in Hybrid Electric Vehicle (PHEV)',0,43),(44,2015,'Plug-in Hybrid Electric Vehicle (PHEV)',0,44),(45,2016,'Plug-in Hybrid Electric Vehicle (PHEV)',0,45),(46,2014,'Plug-in Hybrid Electric Vehicle (PHEV)',0,46),(47,2016,'Plug-in Hybrid Electric Vehicle (PHEV)',0,47),(48,2015,'Plug-in Hybrid Electric Vehicle (PHEV)',0,48),(49,2021,'Plug-in Hybrid Electric Vehicle (PHEV)',0,49),(50,2021,'Plug-in Hybrid Electric Vehicle (PHEV)',0,50),(51,2017,'Plug-in Hybrid Electric Vehicle (PHEV)',0,51),(52,2018,'Plug-in Hybrid Electric Vehicle (PHEV)',0,52),(53,2017,'Plug-in Hybrid Electric Vehicle (PHEV)',44100,53),(54,2012,'Plug-in Hybrid Electric Vehicle (PHEV)',0,54),(55,2015,'Plug-in Hybrid Electric Vehicle (PHEV)',0,55),(56,2021,'Battery Electric Vehicle (BEV)',0,56),(57,2021,'Battery Electric Vehicle (BEV)',0,57),(58,2021,'Battery Electric Vehicle (BEV)',0,58),(59,2022,'Battery Electric Vehicle (BEV)',0,59),(60,2021,'Battery Electric Vehicle (BEV)',0,60),(61,2022,'Battery Electric Vehicle (BEV)',0,61),(62,2022,'Battery Electric Vehicle (BEV)',0,62),(63,2022,'Battery Electric Vehicle (BEV)',0,63),(64,2021,'Battery Electric Vehicle (BEV)',0,64),(65,2022,'Battery Electric Vehicle (BEV)',0,65),(66,2021,'Battery Electric Vehicle (BEV)',0,66),(67,2022,'Battery Electric Vehicle (BEV)',0,67),(68,2022,'Battery Electric Vehicle (BEV)',0,68),(69,2021,'Battery Electric Vehicle (BEV)',0,69),(70,2023,'Battery Electric Vehicle (BEV)',0,70),(71,2021,'Battery Electric Vehicle (BEV)',0,71),(72,2021,'Battery Electric Vehicle (BEV)',0,72),(73,2021,'Battery Electric Vehicle (BEV)',0,73),(74,2021,'Battery Electric Vehicle (BEV)',0,74),(75,2021,'Battery Electric Vehicle (BEV)',0,75),(76,2021,'Battery Electric Vehicle (BEV)',0,76);
/*!40000 ALTER TABLE `car_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_make`
--

DROP TABLE IF EXISTS `car_make`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_make` (
  `make_id` int NOT NULL,
  `make` varchar(45) NOT NULL,
  PRIMARY KEY (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_make`
--

LOCK TABLES `car_make` WRITE;
/*!40000 ALTER TABLE `car_make` DISABLE KEYS */;
INSERT INTO `car_make` VALUES (1,'TESLA'),(2,'TESLA'),(3,'TESLA'),(4,'TESLA'),(5,'TESLA'),(6,'TESLA'),(7,'JAGUAR'),(8,'TESLA'),(9,'TESLA'),(10,'TESLA'),(11,'TESLA'),(12,'TESLA'),(13,'TESLA'),(14,'TESLA'),(15,'TESLA'),(16,'TESLA'),(17,'TESLA'),(18,'TESLA'),(19,'TESLA'),(20,'TESLA'),(21,'TESLA'),(22,'TESLA'),(23,'TESLA'),(24,'TESLA'),(25,'TESLA'),(26,'VOLKSWAGEN'),(27,'TOYOTA'),(28,'FORD'),(29,'NISSAN'),(30,'CHEVROLET'),(31,'HONDA'),(32,'TOYOTA'),(33,'TOYOTA'),(34,'CHEVROLET'),(35,'CHEVROLET'),(36,'CHRYSLER'),(37,'CHRYSLER'),(38,'KIA'),(39,'TOYOTA'),(40,'VOLVO'),(41,'VOLVO'),(42,'MITSUBISHI'),(43,'JEEP'),(44,'FORD'),(45,'FORD'),(46,'FORD'),(47,'FORD'),(48,'FORD'),(49,'VOLVO'),(50,'VOLVO'),(51,'AUDI'),(52,'PORSCHE'),(53,'BMW'),(54,'TOYOTA'),(55,'TOYOTA'),(56,'TESLA'),(57,'TESLA'),(58,'TESLA'),(59,'TESLA'),(60,'TESLA'),(61,'TESLA'),(62,'TESLA'),(63,'TESLA'),(64,'TESLA'),(65,'TESLA'),(66,'TESLA'),(67,'TESLA'),(68,'HYUNDAI'),(69,'TESLA'),(70,'AUDI'),(71,'NISSAN'),(72,'TESLA'),(73,'VOLKSWAGEN'),(74,'TESLA'),(75,'TESLA'),(76,'FORD');
/*!40000 ALTER TABLE `car_make` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `car_model`
--

DROP TABLE IF EXISTS `car_model`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `car_model` (
  `model_id` int NOT NULL,
  `model` varchar(45) NOT NULL,
  `make_id` int NOT NULL,
  `DOL_vehicle_id` int NOT NULL,
  PRIMARY KEY (`model_id`),
  KEY `fk_Table 8: Car_model_Table 7: Car_make1_idx` (`make_id`),
  KEY `fk_Table 7: Car_model_Table 4: CAFV1_idx` (`DOL_vehicle_id`),
  CONSTRAINT `fk_Table 7: Car_model_Table 4: CAFV1` FOREIGN KEY (`DOL_vehicle_id`) REFERENCES `cafv` (`DOL_vehicle_id`),
  CONSTRAINT `fk_Table 8: Car_model_Table 7: Car_make1` FOREIGN KEY (`make_id`) REFERENCES `car_make` (`make_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `car_model`
--

LOCK TABLES `car_model` WRITE;
/*!40000 ALTER TABLE `car_model` DISABLE KEYS */;
INSERT INTO `car_model` VALUES (1,'MODEL 3',1,104155124),(2,'MODEL 3',2,110237557),(3,'MODEL 3',3,104991225),(4,'MODEL 3',4,135113296),(5,'MODEL 3',5,215073008),(6,'MODEL X',6,229979662),(7,'I-PACE',7,101519512),(8,'MODEL 3',8,312503502),(9,'MODEL 3',9,320914072),(10,'MODEL 3',10,266614659),(11,'MODEL 3',11,332415184),(12,'MODEL 3',12,196439911),(13,'MODEL 3',13,138183839),(14,'MODEL 3',14,196095028),(15,'MODEL 3',15,203462129),(16,'MODEL 3',16,153998050),(17,'MODEL 3',17,341504929),(18,'MODEL 3',18,344417741),(19,'MODEL 3',19,325156345),(20,'MODEL S',20,151980573),(21,'MODEL S',21,349543435),(22,'MODEL S',22,187692284),(23,'MODEL S',23,232897395),(24,'MODEL S',24,333876581),(25,'MODEL S',25,186676101),(26,'E-GOLF',26,220375774),(27,'RAV4',27,182327218),(28,'FOCUS',28,218307183),(29,'LEAF',29,182237457),(30,'VOLT',30,137261820),(31,'CLARITY',31,477029318),(32,'RAV4 PRIME',32,170763764),(33,'RAV4 PRIME',33,207092126),(34,'VOLT',34,103788282),(35,'VOLT',35,9700792),(36,'PACIFICA',36,136930965),(37,'PACIFICA',37,179020138),(38,'NIRO',38,181521700),(39,'PRIUS PRIME',39,306792083),(40,'V60',40,226150627),(41,'V60',41,151141518),(42,'OUTLANDER',42,9163227),(43,'WRANGLER',43,187228030),(44,'FUSION',44,475775205),(45,'FUSION',45,111821167),(46,'FUSION',46,110157407),(47,'FUSION',47,6197691),(48,'FUSION',48,182941692),(49,'XC60',49,205669082),(50,'XC60',50,152498734),(51,'A3',51,219652191),(52,'CAYENNE',52,106902435),(53,'330E',53,200753059),(54,'PRIUS PLUG-IN',54,247180615),(55,'PRIUS PLUG-IN',55,166320269),(56,'MODEL Y',56,180714810),(57,'MODEL 3',57,180620975),(58,'MODEL Y',58,144816927),(59,'MODEL 3',59,208394966),(60,'MODEL 3',60,151035818),(61,'MODEL 3',61,193746542),(62,'MODEL 3',62,225970755),(63,'MODEL X',63,223633917),(64,'MODEL Y',64,150154945),(65,'MODEL 3',65,213570080),(66,'MODEL Y',66,187492175),(67,'MODEL 3',67,200914087),(68,'KONA ELECTRIC',68,216844211),(69,'MODEL 3',69,134938562),(70,'E-TRON',70,224666711),(71,'LEAF',71,152727515),(72,'MODEL 3',72,166381701),(73,'ID.4',73,161550532),(74,'MODEL Y',74,166149385),(75,'MODEL 3',75,179046164),(76,'MUSTANG MACH-E',76,142133393);
/*!40000 ALTER TABLE `car_model` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `ev_query1`
--

DROP TABLE IF EXISTS `ev_query1`;
/*!50001 DROP VIEW IF EXISTS `ev_query1`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ev_query1` AS SELECT 
 1 AS `number_of_vehicles`,
 1 AS `make`,
 1 AS `model_year`,
 1 AS `MSRP`,
 1 AS `electric_vehicle_type`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ev_query2`
--

DROP TABLE IF EXISTS `ev_query2`;
/*!50001 DROP VIEW IF EXISTS `ev_query2`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ev_query2` AS SELECT 
 1 AS `postal_code`,
 1 AS `make`,
 1 AS `Number of makes per postal code`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ev_query3`
--

DROP TABLE IF EXISTS `ev_query3`;
/*!50001 DROP VIEW IF EXISTS `ev_query3`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ev_query3` AS SELECT 
 1 AS `city`,
 1 AS `CAFV_eligibility`,
 1 AS `electric_range`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ev_query4`
--

DROP TABLE IF EXISTS `ev_query4`;
/*!50001 DROP VIEW IF EXISTS `ev_query4`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ev_query4` AS SELECT 
 1 AS `VIN`,
 1 AS `model_year`,
 1 AS `make`,
 1 AS `model`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `ev_query5`
--

DROP TABLE IF EXISTS `ev_query5`;
/*!50001 DROP VIEW IF EXISTS `ev_query5`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `ev_query5` AS SELECT 
 1 AS `model_year`,
 1 AS `make`,
 1 AS `model`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `legislative_census`
--

DROP TABLE IF EXISTS `legislative_census`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `legislative_census` (
  `legislative_id` int NOT NULL,
  `legislative_district` int NOT NULL,
  `2020_census_tract` bigint NOT NULL,
  PRIMARY KEY (`legislative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legislative_census`
--

LOCK TABLES `legislative_census` WRITE;
/*!40000 ALTER TABLE `legislative_census` DISABLE KEYS */;
INSERT INTO `legislative_census` VALUES (1,0,6053013000),(2,0,6073005602),(3,0,6073011000),(4,0,6067001800),(5,0,6073013317),(6,0,6059062639),(7,0,6061021326),(8,0,6029005300),(9,0,6001423200),(10,0,6073005102),(11,0,6037113239),(12,0,6065043271),(13,0,6073000301),(14,0,6065042737),(15,0,6085508102),(16,0,6073018509),(17,0,6087100900),(18,0,6059089004),(19,0,6073005802),(20,0,6073009506),(21,0,6073004400),(22,0,6037481603),(23,0,6073018601),(24,0,6037602513),(25,0,6071011602),(26,0,6097150306),(27,0,6073010015),(28,0,6029005805),(29,0,6031980000),(30,0,6073009201),(31,0,6097153003),(32,0,6013351200),(33,0,6073019303),(34,0,6037576001),(35,0,6073007800),(36,0,6111005503),(37,0,6073018515),(38,0,6041111002),(39,0,6059062653),(40,0,6073008509),(41,0,6073007002),(42,0,6073007800),(43,0,6013380001),(44,0,6029005300),(45,0,6059086801),(46,0,6037901011),(47,0,6037603706),(48,0,6071009721),(49,0,6037901214),(50,0,6085509401),(51,0,6055200201),(52,0,6053011802),(53,0,6013313204),(54,0,6037571000),(55,0,6073021401),(56,0,6095253101),(57,0,6111002400),(58,0,6073013317),(59,0,6111002400),(60,0,6073013317),(61,0,6085504903),(62,0,6083002808),(63,0,6065042726),(64,0,6065044911),(65,0,6065042726),(66,0,6073017045),(67,0,6065042726),(68,0,6095252102),(69,0,6085504903),(70,0,6059110604),(71,0,6059052437),(72,0,6001421400),(73,0,6059052433),(74,0,6073018700),(75,0,6081608400),(76,0,6085510801);
/*!40000 ALTER TABLE `legislative_census` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location`
--

DROP TABLE IF EXISTS `location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location` (
  `location_id` int unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `county` varchar(45) NOT NULL,
  `postal_code` int unsigned NOT NULL,
  PRIMARY KEY (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location`
--

LOCK TABLES `location` WRITE;
/*!40000 ALTER TABLE `location` DISABLE KEYS */;
INSERT INTO `location` VALUES (1,'Monterey','CA','Monterey',93940),(2,'San Diego','CA','San Diego',92101),(3,'Coronado','CA','San Diego',92118),(4,'Sacramento','CA','Sacramento',95817),(5,'Chula Vista','CA','San Diego',91913),(6,'Aliso Viejo','CA','Orange',92656),(7,'Roseville','CA','Placer',95747),(8,'Ridgecrest','CA','Kern',93555),(9,'Berkeley','CA','Alameda',94710),(10,'San Diego','CA','San Diego',92101),(11,'Canoga Park','CA','Los Angeles',91304),(12,'Wildomar','CA','Riverside',92595),(13,'San Diego','CA','San Diego',92103),(14,'Menifee','CA','Riverside',92584),(15,'Cupertino','CA','Santa Clara',95014),(16,'Oceanside','CA','San Diego',92051),(17,'Santa Cruz','CA','Santa Cruz',95062),(18,'Santa Ana','CA','Orange',92703),(19,'San Diego','CA','San Diego',92101),(20,'San Diego','CA','San Diego',92124),(21,'San Diego','CA','San Diego',92102),(22,'Alhambra','CA','Los Angeles',91801),(23,'Oceanside','CA','San Diego',92058),(24,'Hawthorne','CA','Los Angeles',90250),(25,'Yermo','CA','San Bernardino',92398),(26,'Sonoma','CA','Sonoma',95476),(27,'San Diego','CA','San Diego',92154),(28,'Rosamond','CA','Kern',93560),(29,'Lemoore','CA','Kings',93245),(30,'San Diego','CA','San Diego',92123),(31,'Santa Rosa','CA','Sonoma',95401),(32,'Moraga','CA','Contra Costa',94556),(33,'Oceanside','CA','San Diego',92057),(34,'Long Beach','CA','Los Angeles',90802),(35,'San Diego','CA','San Diego',92109),(36,'Camarillo','CA','Ventura',93010),(37,'Oceanside','CA','San Diego',92056),(38,'San Rafael','CA','Marin',94901),(39,'Irvine','CA','Orange',92618),(40,'San Diego','CA','San Diego',92111),(41,'San Diego','CA','San Diego',92107),(42,'San Diego','CA','San Diego',92109),(43,'Fpo','CA','Contra Costa',96349),(44,'Ridgecrest','CA','Kern',93555),(45,'Buena Park','CA','Orange',90620),(46,'Lancaster','CA','Los Angeles',93536),(47,'Gardena','CA','Los Angeles',90249),(48,'Apple Valley','CA','San Bernardino',92308),(49,'Lancaster','CA','Los Angeles',93536),(50,'Mountain View','CA','Santa Clara',94040),(51,'Napa','CA','Napa',94559),(52,'Carmel By The Sea','CA','Monterey',93921),(53,'Pittsburg','CA','Contra Costa',94565),(54,'Lakewood','CA','Los Angeles',90713),(55,'San Diego','CA','San Diego',92106),(56,'Vacaville','CA','Solano',95688),(57,'Ventura','CA','Ventura',93001),(58,'Chula Vista','CA','San Diego',91913),(59,'Ventura','CA','Ventura',93001),(60,'Chula Vista','CA','San Diego',91913),(61,'Santa Clara','CA','Santa Clara',95054),(62,'Lompoc','CA','Santa Barbara',93436),(63,'Menifee','CA','Riverside',92585),(64,'Indian Wells','CA','Riverside',92210),(65,'Menifee','CA','Riverside',92585),(66,'San Diego','CA','San Diego',92131),(67,'Menifee','CA','Riverside',92585),(68,'Benicia','CA','Solano',94510),(69,'Santa Clara','CA','Santa Clara',95054),(70,'Buena Park','CA','Orange',90621),(71,'Irvine','CA','Orange',92602),(72,'Berkeley','CA','Alameda',94707),(73,'Irvine','CA','Orange',92620),(74,'San Clemente','CA','San Diego',92672),(75,'San Mateo','CA','San Mateo',94403),(76,'Palo Alto','CA','Santa Clara',94303);
/*!40000 ALTER TABLE `location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `location_details`
--

DROP TABLE IF EXISTS `location_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `location_details` (
  `location_details_id` int NOT NULL,
  `location_id` int unsigned NOT NULL,
  `legislative_id` int NOT NULL,
  PRIMARY KEY (`location_details_id`),
  KEY `fk_Table 6: Location_details_Table 2: Location1_idx` (`location_id`),
  KEY `fk_Table 6: Location_details_Table 9: Legislative_census1_idx` (`legislative_id`),
  CONSTRAINT `fk_Table 6: Location_details_Table 2: Location1` FOREIGN KEY (`location_id`) REFERENCES `location` (`location_id`),
  CONSTRAINT `fk_Table 6: Location_details_Table 9: Legislative_census1` FOREIGN KEY (`legislative_id`) REFERENCES `legislative_census` (`legislative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `location_details`
--

LOCK TABLES `location_details` WRITE;
/*!40000 ALTER TABLE `location_details` DISABLE KEYS */;
INSERT INTO `location_details` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5),(6,6,6),(7,7,7),(8,8,8),(9,9,9),(10,10,10),(11,11,11),(12,12,12),(13,13,13),(14,14,14),(15,15,15),(16,16,16),(17,17,17),(18,18,18),(19,19,19),(20,20,20),(21,21,21),(22,22,22),(23,23,23),(24,24,24),(25,25,25),(26,26,26),(27,27,27),(28,28,28),(29,29,29),(30,30,30),(31,31,31),(32,32,32),(33,33,33),(34,34,34),(35,35,35),(36,36,36),(37,37,37),(38,38,38),(39,39,39),(40,40,40),(41,41,41),(42,42,42),(43,43,43),(44,44,44),(45,45,45),(46,46,46),(47,47,47),(48,48,48),(49,49,49),(50,50,50),(51,51,51),(52,52,52),(53,53,53),(54,54,54),(55,55,55),(56,56,56),(57,57,57),(58,58,58),(59,59,59),(60,60,60),(61,61,61),(62,62,62),(63,63,63),(64,64,64),(65,65,65),(66,66,66),(67,67,67),(68,68,68),(69,69,69),(70,70,70),(71,71,71),(72,72,72),(73,73,73),(74,74,74),(75,75,75),(76,76,76);
/*!40000 ALTER TABLE `location_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `ev_query1`
--

/*!50001 DROP VIEW IF EXISTS `ev_query1`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ev_query1` AS select count(`car_details`.`model_year`) AS `number_of_vehicles`,`car_make`.`make` AS `make`,`car_details`.`model_year` AS `model_year`,`car_details`.`MSRP` AS `MSRP`,`car_details`.`electric_vehicle_type` AS `electric_vehicle_type` from ((`car_details` join `car_model` on((`car_details`.`model_id` = `car_model`.`model_id`))) join `car_make` on((`car_model`.`make_id` = `car_make`.`make_id`))) where (`car_details`.`model_year` > 2017) group by `car_make`.`make`,`car_details`.`model_year`,`car_details`.`MSRP`,`car_details`.`electric_vehicle_type` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ev_query2`
--

/*!50001 DROP VIEW IF EXISTS `ev_query2`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ev_query2` AS select `location`.`postal_code` AS `postal_code`,`car_make`.`make` AS `make`,count(`car_make`.`make`) AS `Number of makes per postal code` from ((((`location` join `car` on((`location`.`location_id` = `car`.`location_id`))) join `car_details` on((`car`.`car_details_info` = `car_details`.`car_details_info`))) join `car_model` on((`car_details`.`model_id` = `car_model`.`model_id`))) join `car_make` on((`car_model`.`make_id` = `car_make`.`make_id`))) group by `location`.`postal_code`,`car_make`.`make` having (count(`car_make`.`make`) < 2) order by `location`.`postal_code`,`car_make`.`make` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ev_query3`
--

/*!50001 DROP VIEW IF EXISTS `ev_query3`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ev_query3` AS select `location`.`city` AS `city`,`cafv`.`CAFV_eligibility` AS `CAFV_eligibility`,`cafv`.`electric_range` AS `electric_range` from ((((`cafv` join `car_model` on((`cafv`.`DOL_vehicle_id` = `car_model`.`DOL_vehicle_id`))) join `car_details` on((`car_model`.`model_id` = `car_details`.`model_id`))) join `car` on((`car_details`.`car_details_info` = `car`.`car_details_info`))) join `location` on((`car`.`location_id` = `location`.`location_id`))) where (`cafv`.`CAFV_eligibility` = 'Clean Alternative Fuel Vehicle Eligible') */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ev_query4`
--

/*!50001 DROP VIEW IF EXISTS `ev_query4`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ev_query4` AS select `car`.`VIN` AS `VIN`,`car_details`.`model_year` AS `model_year`,`car_make`.`make` AS `make`,`car_model`.`model` AS `model` from (((`car` join `car_details` on((`car`.`car_details_info` = `car_details`.`car_details_info`))) join `car_model` on((`car_details`.`model_id` = `car_model`.`model_id`))) join `car_make` on((`car_model`.`make_id` = `car_make`.`make_id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `ev_query5`
--

/*!50001 DROP VIEW IF EXISTS `ev_query5`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `ev_query5` AS select `car_details`.`model_year` AS `model_year`,`car_make`.`make` AS `make`,`car_model`.`model` AS `model` from ((`car_model` join `car_make` on((`car_model`.`make_id` = `car_make`.`make_id`))) join `car_details` on((`car_model`.`model_id` = `car_details`.`model_id`))) where `car_model`.`model_id` in (select `car_details`.`model_id` from `car_details` where ((`car_details`.`model_year` > '2019') and (`car_make`.`make` = 'TESLA'))) order by `car_details`.`model_year` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-05-12 12:59:14
