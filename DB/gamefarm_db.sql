-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: gamefarm
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `2048chat`
--

DROP TABLE IF EXISTS `2048chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `2048chat` (
  `user` varchar(45) NOT NULL,
  `chat` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2048chat`
--

LOCK TABLES `2048chat` WRITE;
/*!40000 ALTER TABLE `2048chat` DISABLE KEYS */;
INSERT INTO `2048chat` VALUES ('관리자','2048의 핵심은 한쪽 방향에 몰아 넣는 것 입니다.','2022-07-01 16:26:29'),('관리자','하고 싶은 말이 잘 작성되서 기부니가 좋읍니까?','2022-07-01 16:26:54');
/*!40000 ALTER TABLE `2048chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `2048rank`
--

DROP TABLE IF EXISTS `2048rank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `2048rank` (
  `user` varchar(45) NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `2048rank`
--

LOCK TABLES `2048rank` WRITE;
/*!40000 ALTER TABLE `2048rank` DISABLE KEYS */;
INSERT INTO `2048rank` VALUES ('무무',2000),('관리자',1316);
/*!40000 ALTER TABLE `2048rank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamelist`
--

DROP TABLE IF EXISTS `gamelist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamelist` (
  `name` varchar(22) NOT NULL,
  `image` text NOT NULL,
  `desc` text NOT NULL,
  `link` text NOT NULL,
  `soonseo` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`soonseo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamelist`
--

LOCK TABLES `gamelist` WRITE;
/*!40000 ALTER TABLE `gamelist` DISABLE KEYS */;
INSERT INTO `gamelist` VALUES (' ',' http://localhost:80/JSP_KWAJE/res/logo/blanklogo.png',' ',' ',1),('2048','http://localhost:80/JSP_KWAJE/res/logo/2048logo.png','2048<br>정말 재미잇는<br>화장실에서 하면 더 재미잇는','http://localhost:80/JSP_KWAJE/2048.jsp',2),('D & H','http://localhost:80/JSP_KWAJE/res/logo/deathlogo.png','죽음과 공포...','http://localhost:80/JSP_KWAJE/recshoot.jsp',3),('MineC..','http://localhost:80/JSP_KWAJE/res/logo/minelogo.png','못 찾으면<br>죽어...','http://localhost:80/JSP_KWAJE/minesweeper.jsp',4),('SNAKE','http://localhost:80/JSP_KWAJE/res/logo/snakelogo.png','뱌무게임<br>비암게이무','http://localhost:80/JSP_KWAJE/snake.jsp',5),('TETRIS','http://localhost:80/JSP_KWAJE/res/logo/polytetlogo.png','폴리테트','http://localhost:80/JSP_KWAJE/tetris.jsp',6);
/*!40000 ALTER TABLE `gamelist` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` varchar(45) NOT NULL,
  `pw` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES ('','',''),('admin','1234','관리자'),('admins','','123'),('test','1234','테스트'),('yimo91','1234','무무~');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `minechat`
--

DROP TABLE IF EXISTS `minechat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `minechat` (
  `user` varchar(45) NOT NULL,
  `chat` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `minechat`
--

LOCK TABLES `minechat` WRITE;
/*!40000 ALTER TABLE `minechat` DISABLE KEYS */;
INSERT INTO `minechat` VALUES ('관리자','지뢰찾기는 자신과의 싸움이라고 생각합니다. 시간 / 갯수로 랭킹 기능을 만들었으나 눈물을 머금고 과감하게 랭킹 기능을 삭제했습니다. ','2022-07-01 17:54:14');
/*!40000 ALTER TABLE `minechat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recshootchat`
--

DROP TABLE IF EXISTS `recshootchat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recshootchat` (
  `user` varchar(45) NOT NULL,
  `text` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recshootchat`
--

LOCK TABLES `recshootchat` WRITE;
/*!40000 ALTER TABLE `recshootchat` DISABLE KEYS */;
INSERT INTO `recshootchat` VALUES ('관리자','하고싶은 말 테스트','2022-07-01 17:12:46');
/*!40000 ALTER TABLE `recshootchat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recshootrank`
--

DROP TABLE IF EXISTS `recshootrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recshootrank` (
  `user` varchar(45) NOT NULL,
  `score` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recshootrank`
--

LOCK TABLES `recshootrank` WRITE;
/*!40000 ALTER TABLE `recshootrank` DISABLE KEYS */;
INSERT INTO `recshootrank` VALUES ('관리자',14);
/*!40000 ALTER TABLE `recshootrank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snakechat`
--

DROP TABLE IF EXISTS `snakechat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snakechat` (
  `user` varchar(45) NOT NULL,
  `chat` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snakechat`
--

LOCK TABLES `snakechat` WRITE;
/*!40000 ALTER TABLE `snakechat` DISABLE KEYS */;
INSERT INTO `snakechat` VALUES ('admin','테스트용 작성입니다','2022-07-01 14:53:00'),('admin','insert into snakechat values (?, ?, ?)','2022-07-01 15:11:56'),('admin','zzㅋㅋㅋ sql문이 외 들어가는데 ㅋㅋㅋ','2022-07-01 15:13:30');
/*!40000 ALTER TABLE `snakechat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `snakerank`
--

DROP TABLE IF EXISTS `snakerank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `snakerank` (
  `user` varchar(45) DEFAULT NULL,
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `snakerank`
--

LOCK TABLES `snakerank` WRITE;
/*!40000 ALTER TABLE `snakerank` DISABLE KEYS */;
INSERT INTO `snakerank` VALUES ('admin',1),(NULL,2),('admin',1),('admin',3);
/*!40000 ALTER TABLE `snakerank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tetrischat`
--

DROP TABLE IF EXISTS `tetrischat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tetrischat` (
  `user` varchar(45) NOT NULL,
  `chat` text,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tetrischat`
--

LOCK TABLES `tetrischat` WRITE;
/*!40000 ALTER TABLE `tetrischat` DISABLE KEYS */;
INSERT INTO `tetrischat` VALUES ('무무~','하고싶은 말 테스트','2022-07-01 15:26:44'),('무무~','잘 작동하는 것 같습니다?','2022-07-01 15:26:53'),('무무~','구래서','2022-07-01 15:27:04'),('무무~','잘 되는것 갓아요','2022-07-01 15:27:09'),('관리자','누가 만들었냐 미쳤냐','2022-07-01 18:31:40');
/*!40000 ALTER TABLE `tetrischat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tetrisrank`
--

DROP TABLE IF EXISTS `tetrisrank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tetrisrank` (
  `user` varchar(45) DEFAULT NULL,
  `score` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tetrisrank`
--

LOCK TABLES `tetrisrank` WRITE;
/*!40000 ALTER TABLE `tetrisrank` DISABLE KEYS */;
INSERT INTO `tetrisrank` VALUES ('admin',0);
/*!40000 ALTER TABLE `tetrisrank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-03 18:21:57
