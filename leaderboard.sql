# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Värd: localhost (MySQL 5.7.25)
# Databas: leaderboard
# Genereringstid: 2019-03-15 13:39:18 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Tabelldump highscores
# ------------------------------------------------------------

DROP TABLE IF EXISTS `highscores`;

CREATE TABLE `highscores` (
  `id` int(3) NOT NULL AUTO_INCREMENT,
  `gamertag` varchar(16) NOT NULL,
  `score` int(7) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gamertag` (`gamertag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `highscores` WRITE;
/*!40000 ALTER TABLE `highscores` DISABLE KEYS */;

INSERT INTO `highscores` (`id`, `gamertag`, `score`)
VALUES
	(1,'Snipher',9999),
	(2,'Ozcar',8888),
	(3,'Alxzndr',7777),
	(4,'Feeliph',6666),
	(5,'Dalebee',5555),
	(6,'Lieman',4444),
	(7,'Emvil',3333),
	(8,'Admann',2222),
	(9,'Golumla',1111),
	(10,'Murdiuz',999);

/*!40000 ALTER TABLE `highscores` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
