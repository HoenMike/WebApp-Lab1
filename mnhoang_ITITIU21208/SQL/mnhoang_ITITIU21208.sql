CREATE DATABASE  IF NOT EXISTS `lab1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `lab1`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: localhost    Database: lab1
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `CourseID` int NOT NULL,
  `CourseName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`CourseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,'Course 1'),(2,'Course 2'),(3,'Course 3'),(4,'Course 4'),(5,'Course 5'),(6,'Course 6'),(7,'Course 7'),(8,'Course 8'),(9,'Course 9'),(10,'Course 10'),(11,'Course 11'),(12,'Course 12'),(13,'Course 13'),(14,'Course 14'),(15,'Course 15'),(16,'Course 16'),(17,'Course 17'),(18,'Course 18'),(19,'Course 19'),(20,'Course 20'),(21,'Course 21'),(22,'Course 22'),(23,'Course 23'),(24,'Course 24'),(25,'Course 25'),(26,'Course 26'),(27,'Course 27'),(28,'Course 28'),(29,'Course 29'),(30,'Course 30');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `DepartmentID` int NOT NULL,
  `DepartmentName` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Computer Science'),(2,'Mathematics'),(3,'Physics'),(4,'Chemistry'),(5,'Biology');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `lecturer`
--

DROP TABLE IF EXISTS `lecturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `lecturer` (
  `LecturerID` int NOT NULL,
  `LecturerName` varchar(255) DEFAULT NULL,
  `DepartmentID` int NOT NULL,
  PRIMARY KEY (`LecturerID`,`DepartmentID`),
  KEY `fk_Lecturer_Department1_idx` (`DepartmentID`),
  CONSTRAINT `fk_Lecturer_Department1` FOREIGN KEY (`DepartmentID`) REFERENCES `department` (`DepartmentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `lecturer`
--

LOCK TABLES `lecturer` WRITE;
/*!40000 ALTER TABLE `lecturer` DISABLE KEYS */;
INSERT INTO `lecturer` VALUES (1,'Lecturer 1',2),(2,'Lecturer 2',4),(3,'Lecturer 3',2),(4,'Lecturer 4',5),(5,'Lecturer 5',5),(6,'Lecturer 6',4),(7,'Lecturer 7',4),(8,'Lecturer 8',2),(9,'Lecturer 9',5),(10,'Lecturer 10',1),(11,'Lecturer 11',1),(12,'Lecturer 12',1),(13,'Lecturer 13',3),(14,'Lecturer 14',4),(15,'Lecturer 15',5),(16,'Lecturer 16',3),(17,'Lecturer 17',5),(18,'Lecturer 18',3),(19,'Lecturer 19',2),(20,'Lecturer 20',2);
/*!40000 ALTER TABLE `lecturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `register`
--

DROP TABLE IF EXISTS `register`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `register` (
  `course_CourseID` int NOT NULL,
  `student_StudentID` varchar(255) NOT NULL,
  PRIMARY KEY (`course_CourseID`,`student_StudentID`),
  KEY `fk_course_has_student_student1_idx` (`student_StudentID`),
  KEY `fk_course_has_student_course_idx` (`course_CourseID`),
  CONSTRAINT `fk_course_has_student_course` FOREIGN KEY (`course_CourseID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `fk_course_has_student_student1` FOREIGN KEY (`student_StudentID`) REFERENCES `student` (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `register`
--

LOCK TABLES `register` WRITE;
/*!40000 ALTER TABLE `register` DISABLE KEYS */;
INSERT INTO `register` VALUES (1,'ITITIU00001'),(1,'ITITIU00005'),(1,'ITITIU00007'),(1,'ITITIU00009'),(1,'ITITIU00012'),(1,'ITITIU00015'),(1,'ITITIU00016'),(1,'ITITIU00019'),(1,'ITITIU00020'),(2,'ITITIU00002'),(2,'ITITIU00010'),(2,'ITITIU00012'),(2,'ITITIU00015'),(2,'ITITIU00017'),(2,'ITITIU00022'),(2,'ITITIU00023'),(2,'ITITIU00025'),(2,'ITITIU00028'),(3,'ITITIU00002'),(3,'ITITIU00003'),(3,'ITITIU00005'),(3,'ITITIU00010'),(3,'ITITIU00021'),(3,'ITITIU00024'),(3,'ITITIU00027'),(3,'ITITIU00028'),(4,'ITITIU00008'),(4,'ITITIU00013'),(4,'ITITIU00016'),(5,'ITITIU00001'),(5,'ITITIU00004'),(5,'ITITIU00010'),(5,'ITITIU00011'),(5,'ITITIU00018'),(5,'ITITIU00024'),(5,'ITITIU00026'),(6,'ITITIU00010'),(6,'ITITIU00016'),(6,'ITITIU00019'),(6,'ITITIU00020'),(6,'ITITIU00021'),(6,'ITITIU00024'),(6,'ITITIU00025'),(6,'ITITIU00027'),(6,'ITITIU00029'),(7,'ITITIU00016'),(7,'ITITIU00020'),(7,'ITITIU00023'),(7,'ITITIU00024'),(8,'ITITIU00002'),(8,'ITITIU00003'),(8,'ITITIU00024'),(8,'ITITIU00030'),(9,'ITITIU00007'),(9,'ITITIU00018'),(9,'ITITIU00026'),(10,'ITITIU00011'),(10,'ITITIU00012'),(10,'ITITIU00013'),(10,'ITITIU00018'),(10,'ITITIU00021'),(10,'ITITIU00025'),(10,'ITITIU00027'),(11,'ITITIU00001'),(11,'ITITIU00003'),(11,'ITITIU00007'),(11,'ITITIU00009'),(11,'ITITIU00010'),(11,'ITITIU00013'),(11,'ITITIU00021'),(12,'ITITIU00004'),(12,'ITITIU00006'),(12,'ITITIU00008'),(12,'ITITIU00014'),(12,'ITITIU00019'),(12,'ITITIU00025'),(12,'ITITIU00027'),(12,'ITITIU00028'),(12,'ITITIU00030'),(13,'ITITIU00001'),(13,'ITITIU00003'),(13,'ITITIU00005'),(13,'ITITIU00006'),(13,'ITITIU00018'),(13,'ITITIU00020'),(13,'ITITIU00022'),(13,'ITITIU00029'),(14,'ITITIU00005'),(14,'ITITIU00013'),(14,'ITITIU00018'),(14,'ITITIU00023'),(14,'ITITIU00025'),(14,'ITITIU00028'),(14,'ITITIU00029'),(14,'ITITIU00030'),(15,'ITITIU00006'),(15,'ITITIU00012'),(15,'ITITIU00021'),(15,'ITITIU00024'),(15,'ITITIU00029'),(16,'ITITIU00004'),(16,'ITITIU00005'),(16,'ITITIU00008'),(16,'ITITIU00012'),(16,'ITITIU00021'),(16,'ITITIU00024'),(16,'ITITIU00028'),(17,'ITITIU00014'),(17,'ITITIU00019'),(17,'ITITIU00022'),(17,'ITITIU00025'),(18,'ITITIU00004'),(18,'ITITIU00005'),(18,'ITITIU00007'),(18,'ITITIU00024'),(19,'ITITIU00001'),(19,'ITITIU00002'),(19,'ITITIU00005'),(19,'ITITIU00007'),(19,'ITITIU00008'),(19,'ITITIU00012'),(19,'ITITIU00020'),(19,'ITITIU00024'),(19,'ITITIU00029'),(19,'ITITIU00030'),(20,'ITITIU00001'),(20,'ITITIU00012'),(20,'ITITIU00024'),(20,'ITITIU00029'),(21,'ITITIU00005'),(21,'ITITIU00018'),(21,'ITITIU00020'),(21,'ITITIU00022'),(22,'ITITIU00001'),(22,'ITITIU00002'),(22,'ITITIU00007'),(22,'ITITIU00009'),(22,'ITITIU00014'),(22,'ITITIU00017'),(22,'ITITIU00018'),(22,'ITITIU00019'),(22,'ITITIU00020'),(22,'ITITIU00027'),(23,'ITITIU00001'),(23,'ITITIU00002'),(23,'ITITIU00005'),(23,'ITITIU00006'),(23,'ITITIU00008'),(23,'ITITIU00017'),(23,'ITITIU00020'),(24,'ITITIU00001'),(24,'ITITIU00005'),(24,'ITITIU00018'),(24,'ITITIU00020'),(24,'ITITIU00022'),(24,'ITITIU00027'),(25,'ITITIU00001'),(25,'ITITIU00004'),(25,'ITITIU00008'),(25,'ITITIU00010'),(25,'ITITIU00018'),(25,'ITITIU00020'),(25,'ITITIU00026'),(25,'ITITIU00031'),(26,'ITITIU00003'),(26,'ITITIU00004'),(26,'ITITIU00005'),(26,'ITITIU00009'),(26,'ITITIU00013'),(26,'ITITIU00018'),(26,'ITITIU00019'),(26,'ITITIU00029'),(26,'ITITIU00030'),(26,'ITITIU00031'),(27,'ITITIU00002'),(27,'ITITIU00004'),(27,'ITITIU00007'),(27,'ITITIU00014'),(27,'ITITIU00025'),(28,'ITITIU00001'),(28,'ITITIU00003'),(28,'ITITIU00018'),(28,'ITITIU00024'),(28,'ITITIU00028'),(28,'ITITIU00029'),(28,'ITITIU00030'),(29,'ITITIU00003'),(29,'ITITIU00007'),(29,'ITITIU00010'),(29,'ITITIU00014'),(29,'ITITIU00015'),(29,'ITITIU00016'),(29,'ITITIU00030'),(30,'ITITIU00001'),(30,'ITITIU00012'),(30,'ITITIU00018'),(30,'ITITIU00019'),(30,'ITITIU00021'),(30,'ITITIU00024'),(30,'ITITIU00029');
/*!40000 ALTER TABLE `register` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` varchar(255) NOT NULL,
  `StudentName` varchar(255) DEFAULT NULL,
  `Major` varchar(255) DEFAULT NULL,
  `DoB` date DEFAULT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('ITITIU00001','Student 1','Mathematics','2002-03-02'),('ITITIU00002','Student 2','Mathematics','2003-04-10'),('ITITIU00003','Student 3','Computer Science','2002-09-16'),('ITITIU00004','Student 4','Physics','2002-01-13'),('ITITIU00005','Student 5','Biology','2004-04-10'),('ITITIU00006','Student 6','Biology','2002-12-16'),('ITITIU00007','Student 7','Physics','2002-09-30'),('ITITIU00008','Student 8','Mathematics','2000-07-29'),('ITITIU00009','Student 9','Physics','2001-03-14'),('ITITIU00010','Student 10','Chemistry','2002-08-25'),('ITITIU00011','Student 11','Chemistry','2004-07-16'),('ITITIU00012','Student 12','Physics','2002-06-19'),('ITITIU00013','Student 13','Computer Science','2000-12-27'),('ITITIU00014','Student 14','Physics','2001-08-08'),('ITITIU00015','Student 15','Biology','2001-07-23'),('ITITIU00016','Student 16','Biology','2000-03-25'),('ITITIU00017','Student 17','Mathematics','2000-05-14'),('ITITIU00018','Student 18','Chemistry','2004-11-21'),('ITITIU00019','Student 19','Biology','2004-08-30'),('ITITIU00020','Student 20','Chemistry','2004-08-24'),('ITITIU00021','Student 21','Physics','2001-05-06'),('ITITIU00022','Student 22','Computer Science','2003-09-30'),('ITITIU00023','Student 23','Physics','2004-02-13'),('ITITIU00024','Student 24','Biology','2004-07-24'),('ITITIU00025','Student 25','Biology','2004-08-27'),('ITITIU00026','Student 26','Biology','2002-05-26'),('ITITIU00027','Student 27','Biology','2003-09-19'),('ITITIU00028','Student 28','Mathematics','2004-01-16'),('ITITIU00029','Student 29','Physics','2003-05-18'),('ITITIU00030','Student 30','Computer Science','2002-10-21'),('ITITIU00031','Student 31','Physics','2002-11-21'),('ITITIU00032','Student 32','Physics','2004-09-12'),('ITITIU00033','Student 33','Computer Science','2003-04-18'),('ITITIU00034','Student 34','Computer Science','2000-05-08'),('ITITIU00035','Student 35','Mathematics','2002-01-11'),('ITITIU00036','Student 36','Computer Science','2000-05-23'),('ITITIU00037','Student 37','Mathematics','2004-03-17'),('ITITIU00038','Student 38','Physics','2001-06-24'),('ITITIU00039','Student 39','Chemistry','2000-03-24'),('ITITIU00040','Student 40','Biology','2001-01-12'),('ITITIU00041','Student 41','Physics','2002-07-31'),('ITITIU00042','Student 42','Mathematics','2004-09-29'),('ITITIU00043','Student 43','Biology','2002-01-07'),('ITITIU00044','Student 44','Physics','2000-08-13'),('ITITIU00045','Student 45','Mathematics','2003-07-29'),('ITITIU00046','Student 46','Biology','2002-05-19'),('ITITIU00047','Student 47','Chemistry','2003-01-30'),('ITITIU00048','Student 48','Mathematics','2002-02-18'),('ITITIU00049','Student 49','Mathematics','2002-10-29'),('ITITIU00050','Student 50','Chemistry','2004-07-15'),('ITITIU00051','Student 51','Mathematics','2000-11-01'),('ITITIU00052','Student 52','Chemistry','2000-01-13'),('ITITIU00053','Student 53','Biology','2003-02-10'),('ITITIU00054','Student 54','Mathematics','2003-11-08'),('ITITIU00055','Student 55','Biology','2000-04-06'),('ITITIU00056','Student 56','Chemistry','2000-04-25'),('ITITIU00057','Student 57','Mathematics','2003-08-12'),('ITITIU00058','Student 58','Physics','2000-10-29'),('ITITIU00059','Student 59','Physics','2003-03-19'),('ITITIU00060','Student 60','Biology','2003-08-08'),('ITITIU00061','Student 61','Biology','2004-07-18'),('ITITIU00062','Student 62','Computer Science','2004-01-04'),('ITITIU00063','Student 63','Chemistry','2000-04-09'),('ITITIU00064','Student 64','Computer Science','2004-01-24'),('ITITIU00065','Student 65','Physics','2004-10-20'),('ITITIU00066','Student 66','Mathematics','2004-09-30'),('ITITIU00067','Student 67','Chemistry','2002-01-14'),('ITITIU00068','Student 68','Computer Science','2000-12-18'),('ITITIU00069','Student 69','Chemistry','2000-01-04'),('ITITIU00070','Student 70','Biology','2001-06-18'),('ITITIU00071','Student 71','Biology','2002-09-25'),('ITITIU00072','Student 72','Computer Science','2003-10-26'),('ITITIU00073','Student 73','Physics','2002-12-20'),('ITITIU00074','Student 74','Mathematics','2002-01-26'),('ITITIU00075','Student 75','Mathematics','2002-08-28'),('ITITIU00076','Student 76','Physics','2001-11-05'),('ITITIU00077','Student 77','Computer Science','2001-03-14'),('ITITIU00078','Student 78','Biology','2001-03-01'),('ITITIU00079','Student 79','Computer Science','2001-05-05'),('ITITIU00080','Student 80','Chemistry','2000-01-20'),('ITITIU00081','Student 81','Chemistry','2003-11-21'),('ITITIU00082','Student 82','Chemistry','2003-06-21'),('ITITIU00083','Student 83','Chemistry','2000-12-22'),('ITITIU00084','Student 84','Computer Science','2002-04-18'),('ITITIU00085','Student 85','Mathematics','2004-11-04'),('ITITIU00086','Student 86','Computer Science','2001-06-17'),('ITITIU00087','Student 87','Mathematics','2004-02-12'),('ITITIU00088','Student 88','Computer Science','2000-02-11'),('ITITIU00089','Student 89','Biology','2000-01-26'),('ITITIU00090','Student 90','Chemistry','2000-04-23'),('ITITIU00091','Student 91','Physics','2000-04-10'),('ITITIU00092','Student 92','Biology','2002-06-07'),('ITITIU00093','Student 93','Chemistry','2003-10-11'),('ITITIU00094','Student 94','Biology','2004-11-28'),('ITITIU00095','Student 95','Mathematics','2004-04-27'),('ITITIU00096','Student 96','Mathematics','2002-12-07'),('ITITIU00097','Student 97','Mathematics','2001-11-14'),('ITITIU00098','Student 98','Computer Science','2004-03-04'),('ITITIU00099','Student 99','Chemistry','2002-07-07'),('ITITIU00100','Student 100','Chemistry','2000-03-15');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teach`
--

DROP TABLE IF EXISTS `teach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teach` (
  `Course_CourseID` int NOT NULL,
  `Lecturer_LecturerID` int NOT NULL,
  PRIMARY KEY (`Course_CourseID`,`Lecturer_LecturerID`),
  KEY `fk_Course_has_Lecturer_Lecturer1_idx` (`Lecturer_LecturerID`),
  KEY `fk_Course_has_Lecturer_Course1_idx` (`Course_CourseID`),
  CONSTRAINT `fk_Course_has_Lecturer_Course1` FOREIGN KEY (`Course_CourseID`) REFERENCES `course` (`CourseID`),
  CONSTRAINT `fk_Course_has_Lecturer_Lecturer1` FOREIGN KEY (`Lecturer_LecturerID`) REFERENCES `lecturer` (`LecturerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teach`
--

LOCK TABLES `teach` WRITE;
/*!40000 ALTER TABLE `teach` DISABLE KEYS */;
INSERT INTO `teach` VALUES (2,1),(4,1),(5,1),(6,1),(1,2),(4,2),(5,2),(3,3),(7,4),(8,4),(4,5),(3,6),(5,6),(1,7),(3,7),(4,7),(2,8),(3,9),(4,9),(5,9),(1,10),(5,10),(6,10),(7,10),(1,11),(2,11),(3,11),(6,11),(7,12),(3,13),(6,13),(6,14),(3,15),(7,15),(8,15),(3,16),(4,16),(5,16),(7,16),(1,17),(3,17),(1,18),(2,18),(4,18),(6,18),(8,18),(5,19),(3,20),(4,20),(5,20);
/*!40000 ALTER TABLE `teach` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-23 14:02:51
