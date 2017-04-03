-- MySQL dump 10.16  Distrib 10.1.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: comicsnews
-- ------------------------------------------------------
-- Server version	10.1.22-MariaDB

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
-- Table structure for table `noticia`
--

DROP TABLE IF EXISTS `noticia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noticia` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `descricao` text NOT NULL,
  `img` varchar(100) NOT NULL,
  `data` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `autor` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=86 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noticia`
--

LOCK TABLES `noticia` WRITE;
/*!40000 ALTER TABLE `noticia` DISABLE KEYS */;
INSERT INTO `noticia` VALUES (81,'Um texto Qualquer','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Cras libero neque, venenatis eu tempus a, tristique a diam. Quisque faucibus velit id justo elementum, volutpat tristique orci pellentesque. Praesent eget sapien vitae ligula tincidunt ullamcorper eget eget ipsum. Aliquam vulputate et nunc non eleifend. Curabitur diam nisi, porta in massa sit amet, porta convallis nisl. Morbi ac scelerisque lectus. Nam id pharetra metus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Vestibulum interdum lacus id ligula semper, ac scelerisque ex suscipit. Suspendisse accumsan posuere faucibus. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Nam cursus dignissim lobortis. Quisque eu urna et nisl pretium vestibulum.\n\nSuspendisse suscipit, augue in dignissim tristique, dui enim sodales massa, quis lacinia ipsum magna eu nisi. Suspendisse in odio luctus, ultrices ante et, mollis orci. Nullam tempus, elit rhoncus venenatis aliquam, ipsum dui volutpat sem, eget molestie lectus nibh ut arcu. Sed porta ut sapien non pellentesque. Pellentesque quis vestibulum nibh. Sed imperdiet commodo nunc, fermentum venenatis libero suscipit nec. Aliquam erat volutpat. Aliquam nec eleifend tortor. Mauris interdum, leo non lobortis viverra, leo velit eleifend arcu, non tristique ante nisi in orci. Nunc nec pharetra ex.\n\nVestibulum ac lorem ultrices, viverra lectus eget, vestibulum lectus. Quisque vitae placerat orci. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed bibendum mollis tristique. Nulla mattis odio odio, nec egestas tortor aliquam eget. Integer pharetra magna ullamcorper sapien ultricies eleifend. Fusce eget imperdiet odio. Praesent pellentesque lacus vitae massa sollicitudin, placerat imperdiet tortor tempus. Cras maximus nisi porttitor, semper tortor vel, euismod metus. Nam feugiat tincidunt suscipit. Duis rutrum imperdiet ipsum nec tincidunt. Nunc ante sem, posuere tincidunt elit eu, convallis consectetur metus.\n\nPellentesque interdum condimentum urna, id cursus ipsum bibendum vitae. Vestibulum dolor ligula, condimentum non pharetra ac, ornare eu est. Aenean tortor lectus, ullamcorper a mauris sit amet, aliquet vulputate mi. Integer nec urna leo. Vivamus eget purus in eros facilisis feugiat. Phasellus imperdiet risus metus, ac euismod lorem gravida sit amet. Proin sit amet interdum urna. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. In eu nibh at augue dapibus tincidunt vel ut mauris. Nullam quis nibh sit amet dolor porttitor pharetra. Duis auctor porttitor orci, vitae aliquet tortor pretium sed. Etiam ac molestie lorem. Duis vitae scelerisque est, ac venenatis ante. Donec tempor ipsum viverra, placerat magna nec, posuere felis.','imgs/default.jpg','2017-04-03 21:04:55','Brandell Cássio Correa Ferrira'),(82,'Criação de um Mundo Azul','O mundo azul é muito bonito.','imgs/default.jpg','2017-04-03 21:33:47','Antonio de Melo'),(83,'asd','asdasd','imgs/default.jpg','2017-04-04 00:16:01','a'),(84,'Texto sem cor','Um texto sem cor e com pouco assunto','','2017-04-04 01:29:47','Plácido de Castro'),(85,'Um segundo texto qualquer','Esste texto não tem muito valor','imgs/default.jpg','2017-04-04 01:31:56','Rosangela Lobato');
/*!40000 ALTER TABLE `noticia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-03 17:36:46
