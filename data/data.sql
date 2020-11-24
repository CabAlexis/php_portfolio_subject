-- MySQL dump 10.13  Distrib 8.0.21, for osx10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: PHP_PORTFOLIO_PROJECT
-- ------------------------------------------------------
-- Server version	8.0.21

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


DROP DATABASE IF EXISTS PHP_PORTFOLIO_PROJECT;
CREATE DATABASE PHP_PORTFOLIO_PROJECT;
USE PHP_PORTFOLIO_PROJECT;


--
-- Table structure for table `EXPERIENCES`
--

DROP TABLE IF EXISTS `EXPERIENCES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `EXPERIENCES` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `TITLE` varchar(20) NOT NULL,
  `COMPANY` varchar(20) NOT NULL,
  `DESCRIPTION` longtext,
  `START_DATE` date NOT NULL,
  `END_DATE` date DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `EXPERIENCES_USER_ID_fk` (`USER_ID`),
  CONSTRAINT `EXPERIENCES_USER_ID_fk` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EXPERIENCES`
--

LOCK TABLES `EXPERIENCES` WRITE;
/*!40000 ALTER TABLE `EXPERIENCES` DISABLE KEYS */;
INSERT INTO `EXPERIENCES` (`ID`, `USER_ID`, `TITLE`, `COMPANY`, `DESCRIPTION`, `START_DATE`, `END_DATE`) VALUES (1,1,'Développeur Symfony','Stage-Oclock','Réalisation d''un site internet pendant 1 mois, avec une équipe de 5 personnes.
-Mise en place d''une API Rest
-Méthode AGILE
-Git, AWS
Ce projet remplit les compétences exigées pour le diplôme de Développeur Web et
Web mobile.','2020-11-01',NULL);
/*!40000 ALTER TABLE `EXPERIENCES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `FORMATIONS`
--

DROP TABLE IF EXISTS `FORMATIONS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `FORMATIONS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `SCHOOL` varchar(50) NOT NULL,
  `GRADUATE` varchar(50) DEFAULT NULL,
  `START_DATE` date NOT NULL,
  `END_DATE` date DEFAULT NULL,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`),
  KEY `FORMATIONS_USER_ID_fk` (`USER_ID`),
  CONSTRAINT `FORMATIONS_USER_ID_fk` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `FORMATIONS`
--

LOCK TABLES `FORMATIONS` WRITE;
/*!40000 ALTER TABLE `FORMATIONS` DISABLE KEYS */;
INSERT INTO `FORMATIONS` (`ID`, `USER_ID`, `TITLE`, `SCHOOL`, `GRADUATE`, `START_DATE`, `END_DATE`, `DESCRIPTION`) VALUES (1,1,'Développeur web Symfony','OClock','Développeur web et web mobile','2020-04-18','2020-09-18','Socle de compétences :
Front End : HTML, CSS, Bootstrap, Javascript, Wordpress, Prestashop
Back End : PHP, programmation orientée objets, méthode MVC, SQL, APIs, Lumen
Outils : Git, Github, trello, SCRUM et méthode Agile
Spécialisation Symfony');
/*!40000 ALTER TABLE `FORMATIONS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTFOLIO`
--

DROP TABLE IF EXISTS `PORTFOLIO`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PORTFOLIO` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `USER_ID` int NOT NULL,
  `TITLE` varchar(50) NOT NULL,
  `CREATION_DATE` date NOT NULL,
  `DESCRIPTION` longtext,
  `URL` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `PORTFOLIO_USER_ID_fk` (`USER_ID`),
  CONSTRAINT `PORTFOLIO_USER_ID_fk` FOREIGN KEY (`USER_ID`) REFERENCES `USER` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTFOLIO`
--

LOCK TABLES `PORTFOLIO` WRITE;
/*!40000 ALTER TABLE `PORTFOLIO` DISABLE KEYS */;
INSERT INTO `PORTFOLIO` (`ID`, `USER_ID`, `TITLE`, `CREATION_DATE`, `DESCRIPTION`, `URL`) VALUES (1,1,'DofusGroup','2020-01-08','DofusGroup
Etant un grand joueur de Dofus, depuis très longtemps, j''ai voulu me lancer un projet de dev dans quelque chose qui plait.
Ok, mais kézako?
DofusGroup, est une idée qui m''est venue en jeu, toujours beaucoup de mal a trouver un groupe pour farm LE donjon qui m''aidera à avoir LA pano qu''il me faut !!!! :heart-eyes: Les canaux de recrutement de Dofus sont spam, et donc dure d''etre à l''affut ou meme de prendre du temps sur son temps de jeu si sacré a trouver un groupe....
Avec DofusGroup vous pourrez créer des demandes de donjons avec plusieurs criteres : *
Le nombre de participants, on drop ou on xp? 
L''heure et le jour, on se connecte et on va farm, plus le temps de prendre racine au zaap !
Les éléments et les classes souhaités, faut opti tout ca quand meme !
Et surtout que quel donjon on part ?
Les utilisateurs pourront également rejoindre les demandes crées, cela avertira tous les joueurs du groupe !
Stacks?
Pour l''instant uniquement du symfony, un projet tres ambitieux pour mes petites mains de baby dev ! Mais super interessant et enrichissant ! :heart-eyes:
Surement du React pour le front dans un futur plus ou moins proche !','not yet');
/*!40000 ALTER TABLE `PORTFOLIO` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PORTFOLIO_TAGS`
--

DROP TABLE IF EXISTS `PORTFOLIO_TAGS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `PORTFOLIO_TAGS` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `PORTFOLIO_ID` int NOT NULL,
  `TAG` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `PORTFOLIO_TAGS_PORTFOLIO_ID_fk` (`PORTFOLIO_ID`),
  CONSTRAINT `PORTFOLIO_TAGS_PORTFOLIO_ID_fk` FOREIGN KEY (`PORTFOLIO_ID`) REFERENCES `PORTFOLIO` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PORTFOLIO_TAGS`
--

LOCK TABLES `PORTFOLIO_TAGS` WRITE;
/*!40000 ALTER TABLE `PORTFOLIO_TAGS` DISABLE KEYS */;
INSERT INTO `PORTFOLIO_TAGS` (`ID`, `PORTFOLIO_ID`, `TAG`) VALUES (1,1,'ANGULAR'),(2,1,'MATERIALIZECSS');
/*!40000 ALTER TABLE `PORTFOLIO_TAGS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `USER` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LAST_NAME` varchar(50) NOT NULL,
  `USERNAME` varchar(20) NOT NULL,
  `FIRST_NAME` varchar(50) NOT NULL,
  `BIRTH_DATE` date NOT NULL,
  `DESCRIPTION` longtext,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `USER_USERNAME_uindex` (`USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` (`ID`, `LAST_NAME`, `USERNAME`, `FIRST_NAME`, `BIRTH_DATE`, `DESCRIPTION`) VALUES (1,'Cabillic','Cabalex','Alexis','1994-11-08','Après diverses opportunités variées, j''ai choisi de changer de voie pour me rapprocher de mes centres d''intérêt. Ceux-ci étant depuis toujours liés au Web et à l''informatique, j''ai décidé de m''orienter vers le développement Web. Après quelques semaines en autodidacte afin de confirmer mon choix, j''ai commencé une formation au sein d''O''clock. Chaque jour passé depuis le début de la formation en avril 2020 me conforte dans mon orientation. Les défis sont nombreux et variés et permettent un apprentissage constant. Les différents langages, les outils présentés et jusqu''à la logique nécessaire pour s''épanouir ont su me convaincre du grand potentiel de cette voie.
La formation est divisée en trois étapes :
- Un socle commun permettant le renforcement des bases en HTML, CSS, Git, JavaScript, PHP,
- Une spécialisation dans un framework, Symfony pour ma part,
- Une "apothéose" qui consiste en un projet complet professionnalisant afin de mettre en pratique l''ensemble des acquis.
Me voilà donc à la recherche d''opportunités dans le développement Web avec une préférence pour le back-end.');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-20 13:04:42
