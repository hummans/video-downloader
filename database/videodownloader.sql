/*
SQLyog Ultimate v11.11 (64 bit)
MySQL - 8.0.21 : Database - videodownloader
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`videodownloader` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `videodownloader`;

/*Table structure for table `contents` */

DROP TABLE IF EXISTS `contents`;

CREATE TABLE `contents` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `content_type` int NOT NULL DEFAULT '0',
  `content_title` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content_slug` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content_text` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `content_opt` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `contents` */

insert  into `contents`(`ID`,`content_type`,`content_title`,`content_description`,`content_slug`,`content_text`,`content_opt`) values (1,0,'Homepage','Homepage content','home','',NULL),(2,0,'Terms of Service','Terms of service','tos','<h1>Terms of Service</h1><p>You accepted this terms by using this website.</p>',NULL),(3,0,'Contact','Contact with us. Free!','contact','<h1>Contact</h1>',NULL),(4,1,'Youtube Video Downloader','Youtube Video Downloader','youtube-video-downloader','',NULL),(5,1,'Dailymotion Video Downloader','Dailymotion Video Downloader','dailymotion-video-downloader','',NULL),(6,1,'Espn Video Downloader','Espn Video Downloader','espn-video-downloader','',NULL),(7,1,'Odnoklassniki Video Downloader','Odnoklassniki Video Downloader','odnoklassniki-video-downloader','',NULL),(8,1,'Mashable Video Downloader','Mashable Video Downloader','mashable-video-downloader','',NULL),(9,1,'Tumblr Video Downloader','Tumblr Video Downloader','tumblr-video-downloader','',NULL),(10,1,'Buzzfeed Video Downloader','Buzzfeed Video Downloader','buzzfeed-video-downloader','',NULL),(11,1,'Instagram Video Downloader','Instagram Video Downloader','instagram-video-downloader','',NULL),(12,1,'Liveleak Video Downloader','Liveleak Video Downloader','liveleak-video-downloader','',NULL),(13,1,'Break Video Downloader','Break Video Downloader','break-video-downloader','',NULL),(14,1,'Twitter Video Downloader','Twitter Video Downloader','twitter-video-downloader','',NULL),(15,1,'Vimeo Video Downloader','Vimeo Video Downloader','vimeo-video-downloader','',NULL),(16,1,'Soundcloud Music Downloader','Soundcloud Music Downloader','soundcloud-music-downloader','',NULL),(17,1,'Izlesene Video Downloader','Izlesene Video Downloader','izlesene-video-downloader','',NULL),(18,1,'Tiktok Video Downloader','Tiktok Video Downloader','tiktok-video-downloader','',NULL),(19,1,'Bandcamp Music Downloader','Bandcamp Music Downloader','bandcamp-music-downloader','',NULL),(20,1,'Imgur Video Downloader','Imgur Video Downloader','imgur-video-downloader','',NULL),(21,1,'Imdb Video Downloader','Imdb Video Downloader','imdb-video-downloader','',NULL),(22,1,'Flickr Video Downloader','Flickr Video Downloader','flickr-video-downloader','',NULL),(23,1,'Facebook Video Downloader','Facebook Video Downloader','facebook-video-downloader','',NULL),(24,1,'9GAG Video Downloader','9GAG Video Downloader','9gag-video-downloader',NULL,NULL),(25,1,'TED Video Downloader','TED Video Downloader','ted-video-downloader',NULL,NULL),(26,1,'Vkontakte Video Downloader','Vkontakte Video Downloader','vk-video-downloader',NULL,NULL),(27,1,'Pinterest Video Downloader','Pinterest Video Downloader','pinterest-video-downloader',NULL,NULL),(28,1,'Likee Video Downloader','Likee Video Downloader','likee-video-downloader',NULL,NULL),(29,1,'Twitch Video Downloader','Twitch Video Downloader','twitch-clip-downloader',NULL,NULL),(30,1,'Blogger Video Downloader','Blogger Video Downloader','blogger-video-downloader',NULL,NULL),(31,1,'Reddit Video Downloader','Reddit Video Downloader','reddit-video-downloader',NULL,NULL),(32,1,'Douyin Video Downloader','Douyin Video Downloader','douyin-video-downloader',NULL,NULL),(33,1,'Kwai Video Downloader','Kwai Video Downloader','kwai-video-downloader',NULL,NULL),(34,1,'Linkedin Video Downloader','Linkedin Video Downloader','linkedin-video-downloader',NULL,NULL),(35,1,'Streamable Video Downloader','Streamable Video Downloader','streamable-video-downloader',NULL,NULL),(36,1,'Bitchute Video Downloader','Bitchute Video Downloader','bitchute-video-downloader',NULL,NULL),(37,1,'Akıllı TV Video Downloader','Akıllı TV Video Downloader','akillitv-video-downloader',NULL,NULL),(38,1,'Gaana Music Downloader','Gaana Music Downloader','gaana-music-downloader',NULL,NULL);

/*Table structure for table `downloads` */

DROP TABLE IF EXISTS `downloads`;

CREATE TABLE `downloads` (
  `ID` bigint NOT NULL AUTO_INCREMENT,
  `download_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `download_meta` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `download_links` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `download_source` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `downloads` */

insert  into `downloads`(`ID`,`download_date`,`download_meta`,`download_links`,`download_source`) values (1,'2021-01-05 14:05:18','{\"title\":\"Khairiyat Video | Chhichhore | Nitesh Tiwari | Arijit Singh | Sushant, Shraddha | Pritam | Amitabh B\",\"thumbnail\":\"https:\\/\\/i.ytimg.com\\/vi\\/ZxiETzt9icM\\/mqdefault.jpg\",\"duration\":\"03:01\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ZxiETzt9icM\",\"client_ip\":\"127.0.0.1\"}','','youtube'),(2,'2021-01-05 14:06:35','{\"title\":\"Khairiyat Video | Chhichhore | Nitesh Tiwari | Arijit Singh | Sushant, Shraddha | Pritam | Amitabh B\",\"thumbnail\":\"https:\\/\\/i.ytimg.com\\/vi\\/ZxiETzt9icM\\/mqdefault.jpg\",\"duration\":\"03:01\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=ZxiETzt9icM\",\"client_ip\":\"127.0.0.1\"}','','youtube'),(3,'2021-01-05 14:35:21','{\"title\":\"Afgan Jalebi ( Ya Baba )\",\"thumbnail\":\"http:\\/\\/a10.gaanacdn.com\\/images\\/albums\\/90\\/1431790\\/crop_175x175_1431790.jpg\",\"duration\":\"03:43\",\"video_url\":\"https:\\/\\/gaana.com\\/song\\/afgan-jalebi-ya-baba\",\"client_ip\":\"127.0.0.1\"}','','gaana'),(4,'2021-01-05 14:35:27','{\"title\":\"Afgan Jalebi ( Ya Baba )\",\"thumbnail\":\"http:\\/\\/a10.gaanacdn.com\\/images\\/albums\\/90\\/1431790\\/crop_175x175_1431790.jpg\",\"duration\":\"03:43\",\"video_url\":\"https:\\/\\/gaana.com\\/song\\/afgan-jalebi-ya-baba\",\"client_ip\":\"127.0.0.1\"}','','gaana'),(5,'2021-01-05 15:41:28','{\"title\":\"What Aayirathil Oruvan Team said about Aayirathil Oruvan 2? | Selvaraghavan | Dhanush | Karthi\",\"thumbnail\":\"https:\\/\\/i.ytimg.com\\/vi\\/9rH6kBWUvQY\\/mqdefault.jpg\",\"duration\":\"09:22\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=9rH6kBWUvQY\",\"client_ip\":\"127.0.0.1\"}','','youtube'),(6,'2021-01-05 15:54:25','{\"title\":\"What Aayirathil Oruvan Team said about Aayirathil Oruvan 2? | Selvaraghavan | Dhanush | Karthi\",\"thumbnail\":\"https:\\/\\/i.ytimg.com\\/vi\\/9rH6kBWUvQY\\/mqdefault.jpg\",\"duration\":\"09:22\",\"video_url\":\"https:\\/\\/www.youtube.com\\/watch?v=9rH6kBWUvQY\",\"client_ip\":\"127.0.0.1\"}','','youtube');

/*Table structure for table `options` */

DROP TABLE IF EXISTS `options`;

CREATE TABLE `options` (
  `option_id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `option_value` longtext CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `options` */

insert  into `options`(`option_id`,`option_name`,`option_value`) values (1,'general_settings','{\"url\":\"http:\\/\\/127.0.0.1:8000\",\"title\":\"Video Downloader\",\"description\":\"\",\"author\":\"Demo\",\"email\":\"admin@admin.com\",\"download_suffix\":\"\",\"template\":\"material\",\"language\":\"en\",\"bandwidth_saving\":\"true\",\"m4a_mp3\":\"true\",\"purchase_code\":\"dsfd\",\"fingerprint\":\"32d92f8253864b96c170e20eecbdaec5e68e18b7\",\"version\":\"1.7.0\",\"checksum\":\"ae891b93fc607b0a25a919b233abae186f79b267\"}'),(2,'api_key.soundcloud',''),(3,'api_key.flickr',''),(4,'tracking_code',''),(5,'ads.1',''),(6,'ads.2',''),(7,'theme.general','{\"about\":\"true\",\"ads\":\"true\",\"tos\":\"true\",\"contact\":\"true\",\"social\":\"true\",\"facebook\":\"facebook\",\"twitter\":\"twitter\",\"google\":\"google\",\"youtube\":\"youtube\",\"instagram\":\"instagram\",\"logo_url\":\"\"}'),(8,'theme.menu',' [\r\n{\"title\":\"Link\",\"url\":\"#\",\"target\":\"_self\"},\r\n{\"title\":\"Link\",\"url\":\"#\",\"target\":\"_blank\"}\r\n] '),(9,'gdpr_notice',''),(10,'api_key.recaptcha_public',''),(11,'api_key.recaptcha_private',''),(12,'api_key.aiovideodl',''),(14,'api_key.bc_vc',''),(15,'ads.3',''),(16,'ads.4','');

/*Table structure for table `proxies` */

DROP TABLE IF EXISTS `proxies`;

CREATE TABLE `proxies` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ip` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `port` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `type` int DEFAULT NULL,
  `usage_count` bigint NOT NULL DEFAULT '0',
  `banned` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `proxies` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `ID` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_pass` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_nicename` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_url` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_registered` datetime DEFAULT NULL,
  `user_activation_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_level` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`ID`,`user_login`,`user_pass`,`user_email`,`user_nicename`,`user_url`,`user_registered`,`user_activation_key`,`user_level`) values (1,'admin','23d42f5f3f66498b2c8ff4c20b8c5ac826e47146','admin@admin.com','Admin',NULL,'2021-01-05 14:19:05','ANONYMUSUSER',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
