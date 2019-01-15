-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 10.11.1.30    Database: tania
-- ------------------------------------------------------
-- Server version	5.5.8

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
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(20) DEFAULT NULL,
  `content` varchar(500) DEFAULT NULL,
  `datePublication` datetime DEFAULT NULL,
  `idState` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `bDeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idState_idx` (`idState`),
  KEY `idUser_idx` (`idUser`),
  CONSTRAINT `idState` FOREIGN KEY (`idState`) REFERENCES `state` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `idUser` FOREIGN KEY (`idUser`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (4,'CHRISTMAS 2018','Christmas is celebrated on the 25th December every year. It is a Christian festi','2018-12-11 12:03:22',1,1,1),(5,'Get free beer delive','<p>Well to help you through the last push, Meantime are delivering free beers to yo</p>\r\n','2018-12-14 15:38:59',1,1,1),(6,'editada12 weird and ','<p>From Catalonia&#39;s &#39;crapping log&#39; to the Basque Country&#39;s very own version of Sant</p>\r\n','2018-12-14 15:48:41',1,1,1),(7,'weird and wonderful ','Spaniards love their nativity scenes and many municipalities display a public on','2018-12-11 12:06:48',2,1,0),(8,'Dear Santa: Funny an','Letters to Santa Claus have a magical Christmas power all their own — they share','2018-12-11 12:07:19',1,1,1),(9,'Santa News','Here\'s a look at letters sent to Santa Claus and addressed to places ranging fro','2018-12-11 12:10:50',1,1,0),(10,'Santa News','Here\'s a look at letters sent to Santa Claus and addressed to places ranging fro','2018-12-09 12:11:35',1,1,0),(12,'Christmas 2018: Thes','I am a bright-eyed little boy and am trying to be good so that you will remember','2018-12-11 12:23:03',2,1,0),(13,'Get free beer delive','Well to help you through the last push, Meantime are delivering free beers to yo','2018-12-11 12:04:10',1,1,0),(15,'EDITADAEDITADAThe be','<p><strong>Q: What do you call an old snowman?</strong></p>\r\n\r\n<p>A: Water</p>\r\n','2018-12-17 09:21:54',1,1,0),(16,'Xrs Joke','<p><strong>Q: Who hides in the bakery at Christmas?</strong></p>\r\n\r\n<p>A: A mince spy</p>\r\n','2018-12-11 17:12:01',2,1,0),(20,'Last Xristmas....','<p>This year.....</p>\r\n','2018-12-14 15:39:35',1,1,1),(21,'Last Xristmas....','<p>This year.....</p>\r\n','2018-12-12 15:07:28',1,1,0),(22,'Ho Ho Ho......','<p>You better watch out.....</p>\r\n','2018-12-12 15:08:48',1,1,0),(23,'Secret Santa','<p>Mystery of &#39;real-life Santa&#39; who gave away &pound;50 notes</p>\r\n\r\n<p>Will and Guy have discovered that real-life Father Christmas has left shoppers in a Devon village bewildered after he secretly handed out &pound;50 notes in a local supermarket ast year.</p>\r\n','2018-12-13 08:32:39',2,1,0),(24,'Christmas Dinner Pot','<p>Will and Guy will not be eating this type of food for their Christmas lunch on the 25th December. We find it hard to believe that this product really does exist - but here it is.</p>\r\n','2018-12-13 08:34:06',1,1,0),(25,'Magnificent Light Sh','<p>Even with 21,240 lights Wayne Allen does not consider his Christmas display all that big or extraordinary.&nbsp;<br />\r\n&#39;I don&#39;t have animations or blow moulds, there isn&#39;t any music playing. I don&#39;t have a nativity in the yard or a Santa on the roof.&#39; Allen says. &#39;It is just lights. That&#39;s all.&#39; But apparently, Will and Guy have learned those 21,240 lights are causing big trouble.</p>\r\n','2018-12-13 08:34:28',1,1,0),(28,'A Tale of Two Christ','<p>A tale of two Christmas trees; the best and the worst of festive cheer as the most expensive and the ugliest go on display</p>\r\n','2018-12-13 08:35:56',1,1,1),(29,'Christmas 2018: Thes','<p>&#39;He opened the door, got out and admitted immediately that he did not have a driving licence,&#39; the police report said. When asked why he had begun ploughing, he said his father had complained about the state of the roads. He saw the key in the ignition of the vehicle and set off.</p>\r\n','2018-12-13 08:38:12',2,1,0),(31,'Christmas Sales To S','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 08:39:22',2,1,0),(32,'Season of the Fish','<p>Starting today July 22, 2018, the season of the Fish is upon us once again. Which means that Fishmas is right around the corner, and we will all, once again, be in our most joyous and giving moods.</p>\r\n','2018-12-13 08:46:36',1,1,0),(33,'Season of the Fish','<p>Starting today July 22, 2018, the season of the Fish is upon us once again. Which means that Fishmas is right around the corner, and we will all, once again, be in our most joyous and giving moods.</p>\r\n','2018-12-13 08:50:10',1,1,0),(35,'Christmas Day To Fal','<p>That&#39;s how the refrain goes, and who would argue with it, Christmastime being what it is? A time when the whole family gets together and&nbsp;<strong>remembers old disputes</strong>, a time for giving - and receiving - shit gifts, a time to cram as much food as we can down our throats, so that we can spend the next few months trying to work off the horrendous results, and a time for watching, for the&nbsp;<strong>umpteenth time</strong>&nbsp;the same crappy movies as you watched last year','2018-12-13 09:35:39',1,1,0),(36,'Donkey saved in Linc','<p>She asked a donkey whisperer to pop over to her &quot;Donkey preservation Sanctuary&quot; because it seems that this particular donkey had a special story to tell the world. So after a conversation with &#39;Alan&#39; (that&#39;s his name and I did not make it up!), in donkey language, i.E. Hee Haw, hee haw, etc, etc. The whisperer divulged to the usual culprits, The Daily Garbage (meaning all UK tabloids), Alan&#39;s fabulous Christmas resurrection story!</p>\r ','2018-12-13 09:35:58',1,1,0),(38,'Tabloid editors spre','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 09:40:16',1,1,0),(39,'Christmas 2018: Thes','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 09:40:41',2,1,0),(40,'Xrs Joke','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 09:41:03',1,1,0),(42,'Xrs ','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 09:41:45',1,1,0),(43,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 09:41:56',1,1,0),(44,'Christmas 2018: Thes','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 09:42:06',1,1,1),(45,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:27:59',1,1,0),(46,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:28:10',1,1,0),(47,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:28:19',2,1,0),(48,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:28:28',1,1,0),(49,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:28:40',1,1,0),(50,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:28:48',2,1,0),(51,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:28:59',1,1,0),(52,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:29:07',1,1,0),(53,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:29:14',1,1,0),(54,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:29:31',1,1,0),(55,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:29:39',2,1,0),(56,'Last Xristmas....','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 12:29:47',1,1,0),(57,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:33:07',1,1,0),(58,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:33:14',2,1,0),(59,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:33:21',2,1,0),(60,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:33:28',1,1,1),(61,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:33:37',1,1,0),(62,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:33:44',1,1,0),(64,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:34:10',1,1,1),(65,'Xrs ','<p>Christmas bargain hunters will not have quite as long to wait for their &#39;Christmas bargains&#39; this year, after businesses voted overwhelmingly to throw open their doors to customers at 6am on 25 December.</p>\r\n','2018-12-13 12:34:18',1,1,0),(66,'tree','<p>A tale of two Christmas trees; the best and the worst of festive cheer as the most expensive and the ugliest go on display</p>\r\n','2018-12-13 12:40:43',1,1,0),(68,'Xrs ','<p>It is November, and as usual British tabloids are getting into the festive mood by searching the country for stories of people not celebrating Christmas properly. It is a yearly tradition to whip up readers into a frenzy of loathing, and will warm the clenched fists of curmudgeonly Scrooges everywhere. Perhaps a small town decided to call their winter celebration Winterval, or a school put on an alternative nativity play with a twist. If so, then it&#39;s certain to be front page news.</p>\r\n','2018-12-13 13:04:30',1,1,0),(69,'Last Xristmas....','<p>It is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are getting</p>\r\n','2018-12-13 16:47:43',1,1,0),(70,'Last Xristmas....','<p>It is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are getting</p>\r\n','2018-12-13 16:47:55',1,1,0),(71,'Last Xristmas....','<p>It is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are getting</p>\r\n','2018-12-13 16:48:03',2,1,0),(72,'Last Xristmas....','<p>It is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are getting</p>\r\n','2018-12-13 16:49:00',1,1,0),(73,'Last Xristmas....','<p>It is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are gettingIt is November, and as usual British tabloids are getting</p>\r\n','2018-12-13 16:49:09',1,1,0),(74,'Last Xristmas....','<p>dfasdfsdf</p>\r\n','2018-12-14 15:42:07',1,1,0),(75,'Xrs ','<p>dfsdf</p>\r\n','2018-12-14 15:46:15',1,1,0),(76,'Last Xristmas....','<p>asdasd</p>\r\n','2018-12-14 15:46:38',1,1,0),(77,'Last Xristmas....','<p>sdfsadf</p>\r\n','2018-12-14 15:48:30',1,1,0),(78,'joke','<p>ghjfghj</p>\r\n','2018-12-14 15:49:56',1,1,0);
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'Publish'),(2,'Unpublish');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(20) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `bDeleted` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Tânia','admin@acin.pt','698dc19d489c4e4db73e28a713eab07b',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'tania'
--

--
-- Dumping routines for database 'tania'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-17  9:49:03
