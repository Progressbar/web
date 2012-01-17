-- Adminer 3.2.2 MySQL dump

SET NAMES utf8;
SET foreign_key_checks = 0;
SET time_zone = 'SYSTEM';
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

USE `progressbar_dev`;

DROP TABLE IF EXISTS `blog_categories`;
CREATE TABLE `blog_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_categories_on_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `blog_categories`;

DROP TABLE IF EXISTS `blog_categories_blog_posts`;
CREATE TABLE `blog_categories_blog_posts` (
  `blog_category_id` int(11) DEFAULT NULL,
  `blog_post_id` int(11) DEFAULT NULL,
  KEY `index_blog_categories_blog_posts_on_bc_and_bp` (`blog_category_id`,`blog_post_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `blog_categories_blog_posts`;

DROP TABLE IF EXISTS `blog_comments`;
CREATE TABLE `blog_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `blog_post_id` int(11) DEFAULT NULL,
  `spam` tinyint(1) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_comments_on_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `blog_comments`;

DROP TABLE IF EXISTS `blog_posts`;
CREATE TABLE `blog_posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `draft` tinyint(1) DEFAULT NULL,
  `published_at` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_blog_posts_on_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `blog_posts`;
INSERT INTO `blog_posts` (`id`, `title`, `body`, `draft`, `published_at`, `created_at`, `updated_at`, `user_id`) VALUES
(1,	'Martin Rublík - Kryptografické kľúče, ich distribúcia a dôveryhodnosť',	'<p>V štvrtok 5.5.2011 sa v Progressbare v rámci pravidelných mesačných OWASP stretnutí uskutočnila zaujímavá prednáška od Martina Rublíka - Kryptografické kľúče, ich distribúcia a dôveryhodnosť. Slajdy k tejto výbornej prednáške nájdete tu .   Ďalšie WebAppSec stretnutie sa uskutoční v štvrtok 2.6.2011 o 19:00 v Progressbare</p>',	0,	'2011-06-12 21:34:00',	'2011-06-12 21:35:50',	'2011-06-12 21:35:50',	1),
(2,	'HABITAT: live zvukové vysielanie / Progressbar + online',	'<p>Nomádsko-pirátsky koncept Habitat-u, ktorý rozosieva svoje spóry prostredníctvom internetového vysielania z rôznych lokalít spojených do jedného streamu. </p>',	0,	'2011-06-12 21:36:00',	'2011-06-12 21:36:46',	'2011-06-12 21:36:46',	1),
(3,	'VOLTAGE CONTROL - ANALOGOVY AUDIOVIZUALNY SYNTETIZATOR / workshop ',	'<p>Vyrobte si vlastný analógový audiovizuálny syntetizátor! Nie sú potrebné žiadne znalosti v oblasti elektroniky. </p>',	0,	'2011-06-12 21:37:00',	'2011-06-12 21:37:32',	'2011-06-12 21:37:32',	1);

DROP TABLE IF EXISTS `event_categories`;
CREATE TABLE `event_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `event_categories`;
INSERT INTO `event_categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1,	'Schôdza',	'2011-06-17 22:09:55',	'2011-06-19 23:45:36'),
(3,	'Párty',	'2011-06-17 22:10:43',	'2011-06-19 23:45:21'),
(5,	'Prednáška',	'2011-06-19 23:46:06',	'2011-06-19 23:46:06'),
(6,	'Workshop',	'2011-06-19 23:46:24',	'2011-06-19 23:46:24'),
(7,	'Len pre členov',	'2011-06-19 23:46:52',	'2011-06-20 21:30:17');

DROP TABLE IF EXISTS `event_categorizations`;
CREATE TABLE `event_categorizations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `event_id` int(11) DEFAULT NULL,
  `event_category_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_event_categorizations_on_event_category_id` (`event_category_id`),
  KEY `index_event_categorizations_on_event_id` (`event_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `event_categorizations`;
INSERT INTO `event_categorizations` (`id`, `event_id`, `event_category_id`, `created_at`, `updated_at`) VALUES
(1,	3,	3,	'2011-06-17 22:12:05',	'2011-06-17 22:12:05'),
(2,	2,	5,	'2011-06-19 23:47:47',	'2011-06-19 23:47:47'),
(3,	2,	2,	'2011-06-19 23:47:47',	'2011-06-19 23:47:47');

DROP TABLE IF EXISTS `events`;
CREATE TABLE `events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_at` datetime DEFAULT NULL,
  `end_at` datetime DEFAULT NULL,
  `venue_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `venue_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `ticket_price` decimal(8,2) DEFAULT NULL,
  `ticket_link` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `featured` tinyint(1) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_events_on_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `events`;
INSERT INTO `events` (`id`, `title`, `start_at`, `end_at`, `venue_name`, `venue_address`, `ticket_price`, `ticket_link`, `description`, `featured`, `image_id`, `position`, `created_at`, `updated_at`) VALUES
(1,	'lorem',	'2011-06-17 12:00:00',	'2011-06-19 13:00:00',	'',	'',	NULL,	'',	'<p>nejake description</p>\r\n<br />',	1,	2,	0,	'2011-06-15 21:20:57',	'2011-06-15 21:22:04'),
(2,	'kljlkjlj',	'2011-06-19 12:00:00',	'2011-06-20 13:00:00',	'',	'',	NULL,	'',	'<p>uuuuuuuuuuuuulk lkj lkjlk#menu li ul {</p>\r\n<br />',	0,	NULL,	1,	'2011-06-15 21:25:22',	'2011-06-15 21:25:22'),
(3,	'New web party',	'2011-07-18 12:00:00',	'2011-07-18 13:00:00',	'',	'',	NULL,	'',	'<p>oslavime spustenie noveho webu</p>',	1,	NULL,	2,	'2011-06-17 22:12:05',	'2011-06-17 22:12:05');

DROP TABLE IF EXISTS `images`;
CREATE TABLE `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_size` int(11) DEFAULT NULL,
  `image_width` int(11) DEFAULT NULL,
  `image_height` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `image_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `images`;
INSERT INTO `images` (`id`, `image_mime_type`, `image_name`, `image_size`, `image_width`, `image_height`, `created_at`, `updated_at`, `image_uid`, `image_ext`) VALUES
(1,	'image/png',	'nethemba_logo.png',	41319,	1020,	287,	'2011-06-12 14:32:48',	'2011-06-12 14:32:48',	'2011/06/12/16_32_48_957_nethemba_logo.png',	'png'),
(2,	'image/png',	'digmia_logo.png',	25673,	528,	141,	'2011-06-12 14:33:14',	'2011-06-12 14:33:14',	'2011/06/12/16_33_14_968_digmia_logo.png',	'png'),
(3,	'image/png',	'qr_contact_s.png',	1282,	315,	315,	'2011-06-18 20:16:25',	'2011-06-18 20:16:25',	'2011/06/18/22_16_24_959_qr_contact_s.png',	'png');

DROP TABLE IF EXISTS `inquiries`;
CREATE TABLE `inquiries` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `spam` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_inquiries_on_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `inquiries`;
INSERT INTO `inquiries` (`id`, `name`, `email`, `phone`, `message`, `created_at`, `updated_at`, `spam`) VALUES
(1,	'jurko',	'marek@keram.name',	'',	'test',	'2011-06-12 17:37:27',	'2011-06-12 17:37:27',	0);

DROP TABLE IF EXISTS `inquiry_settings`;
CREATE TABLE `inquiry_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `inquiry_settings`;

DROP TABLE IF EXISTS `news_item_translations`;
CREATE TABLE `news_item_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `news_item_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `external_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_item_translations_on_news_item_id` (`news_item_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `news_item_translations`;

DROP TABLE IF EXISTS `news_items`;
CREATE TABLE `news_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `publish_date` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL,
  `expiration_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_news_items_on_id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `news_items`;

DROP TABLE IF EXISTS `page_part_translations`;
CREATE TABLE `page_part_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_part_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_part_translations_on_page_part_id` (`page_part_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `page_part_translations`;
INSERT INTO `page_part_translations` (`id`, `page_part_id`, `locale`, `body`, `created_at`, `updated_at`) VALUES
(1,	1,	'en',	'<section id=\"promo\">\r\n	<div id=\"promo-content\">\r\n		<div id=\"promo-what\" class=\"promo-item promo-item-1\">\r\n			<span class=\"promo-text-bg-1\">&#160;</span>\r\n			<div class=\"promo-text-1\">\r\n				<h2>Vitajte na stránkach</h2>\r\n				<p>prvého slovenského hackerspace <br /><strong>progressbar.sk</strong>\r\n</p>\r\n\r\n			</div>\r\n			<img alt=\"promo ilustration\" class=\"promo-img\" src=\"./images/content/promo/1.jpg\" />\r\n		</div>\r\n		<div id=\"promo-why\" class=\"promo-item promo-item-2\">\r\n			<span class=\"promo-text-bg-2\">&#160;</span>\r\n			<div class=\"promo-text-2\">\r\n				<p><strong>Sme</strong> prvým fyzickým priestorom v <strong>Bratislave</strong> pre stretávanie <strong>hackerov</strong>,\r\n					<br />digitálnych <strong>umelcov</strong>, geekov, hardvérových <strong>mágov</strong>\r\n\r\n					<br />a <strong>podobne</strong> zmýšľajúcich <strong>ľudí</strong>. </p>\r\n			</div>\r\n			<img alt=\"promo ilustration\" class=\"promo-img\" src=\"./images/content/promo/2.jpg\" />\r\n		</div>\r\n		<div id=\"promo-3\" class=\"promo-item promo-item-3\">\r\n			<span class=\"promo-text-bg-3\">&#160;</span>\r\n\r\n			<div class=\"promo-text-3\">\r\n				<p>Väčšina akcií Progressbaru je zadarmo pre všetkých.</p>\r\n			</div>\r\n			<img alt=\"promo ilustration\" class=\"promo-img\" src=\"./images/content/promo/6.jpg\" />\r\n		</div>\r\n		<div id=\"promo-where\" class=\"promo-item promo-item-7\">\r\n			<span class=\"promo-text-bg-7\">&#160;</span>\r\n			<div class=\"promo-text-7\">\r\n\r\n				<p><a href=\"#\">Nachádzame sa v centre <strong>Bratislavy</strong>\r\n<br /> na <strong>Cukrovej 14</strong>, blízko medickej záhrady<br /> a autobusovej stanice <strong>Mlynské Nivy</strong>.</a>\r\n</p>\r\n			</div>\r\n			<img alt=\"promo ilustration\" class=\"promo-img\" src=\"./images/content/promo/7.jpg\" />\r\n		</div>\r\n\r\n		<div id=\"promo-more\" class=\"promo-item promo-item-7\">\r\n			<span class=\"promo-text-bg-7\">&#160;</span>\r\n			<div class=\"promo-text-7\">\r\n				<p><a href=\"#\">Nachádzame sa v centre <strong>Bratislavy</strong>\r\n<br /> na <strong>Cukrovej 14</strong>, blízko medickej záhrady<br /> a autobusovej stanice <strong>Mlynské Nivy</strong>.</a>\r\n</p>\r\n\r\n			</div>\r\n			<img alt=\"promo ilustration\" class=\"promo-img\" src=\"./images/content/promo/5.jpg\" />\r\n		</div>\r\n	</div>\r\n	<nav id=\"promo-nav\">\r\n		<a href=\"#promo-what\">\r\n			<span class=\"symbol\">α</span>\r\n			Čo</a>\r\n<span class=\"delim\">&#160;|&#160;</span>\r\n		<a href=\"#promo-why\">\r\n			<span class=\"symbol\">ω</span>\r\n			Prečo</a>\r\n<span class=\"delim\">&#160;|&#160;</span>\r\n\r\n		<a href=\"#promo-where\">\r\n			<span class=\"symbol\">×</span>\r\n			Kde</a>\r\n<span class=\"delim\">&#160;|&#160;</span>\r\n		<a href=\"#promo-more\">\r\n			<span class=\"symbol\">&gt;</span>\r\n			Viac</a>\r\n	</nav>\r\n	<div id=\"promo-action\">\r\n		<a href=\"#\" class=\"button large\">Pridaj sa k nám&#160;»</a>\r\n\r\n	</div>\r\n\r\n	<div class=\"reset\">&#160;</div>\r\n</section>\r\n<section id=\"calendar\">\r\n	<header>\r\n		<h4><a>Calendar</a>\r\n</h4>\r\n	</header>\r\n	<div class=\"content\">\r\n		<div>\r\n			<span class=\"datetime\">6.5.2011 	19:23 – 22:48</span>\r\n			<span class=\"title\">kyberia fo*ks into dekriminalizacia session</span>\r\n\r\n		</div>\r\n		<div>\r\n			<span class=\"datetime\">8.5.2011 	19:00 – 0:00</span>\r\n			<span class=\"title\">HABITAT: live zvukové vysielanie / Progressbar + online</span>\r\n		</div>\r\n		<div>\r\n			<span class=\"datetime\">17.5.2011 	18:00 – 19:00</span>\r\n\r\n			<span class=\"title\">Nepal</span>\r\n		</div>\r\n		<div>\r\n			<span class=\"datetime\">19.5.2011 	20:00 – 23:00</span>\r\n			<span class=\"title\">Stretnutie MMM</span>\r\n		</div>\r\n		<div>\r\n\r\n			<span class=\"datetime\">20.5.2011 	18:00 – 22:00</span>\r\n			<span class=\"title\">wikipédia stretnutie</span>\r\n		</div>\r\n		<div>\r\n			<span class=\"datetime\">20.5.2011 	18:00 – 22:00</span>\r\n			<span class=\"title\">wikipédia stretnutie</span>\r\n		</div>\r\n\r\n		<div>\r\n			<span class=\"datetime\">20.5.2011 	18:00 – 22:00</span>\r\n			<span class=\"title\">wikipédia stretnutie</span>\r\n		</div>\r\n	</div>\r\n	<footer>\r\n		<div class=\"float-left\">\r\n			<a href=\"#\"><img src=\"/images/s.gif\" class=\"sprites sprite-icon-dribbble\" /> ICal</a>\r\n		</div>\r\n		<div class=\"float-right\">\r\n			<a href=\"#\">Full schedule</a>\r\n		</div>\r\n		<div class=\"reset\">&#160;</div>\r\n	</footer>\r\n</section>\r\n<section id=\"blogs\">\r\n	<header>\r\n		<h4><a>Blogs</a>\r\n</h4>\r\n	</header>\r\n	<div class=\"content\">\r\n		<div>\r\n			<a href=\"#\" class=\"il\">\r\n\r\n				<img src=\"../images/content/blogs/1_t.jpg\" />\r\n			</a>\r\n			<h4><a>Martin Rublík - Kryptografické kľúče, ich distribúcia a dôveryhodnosť</a>\r\n</h4>\r\n			<p>\r\n							V štvrtok 5.5.2011 sa v Progressbare v rámci pravidelných mesačných OWASP stretnutí uskutočnila zaujímavá prednáška od Martina Rublíka\r\n			</p>\r\n		</div>\r\n		<div>\r\n			<a href=\"#\" class=\"il\">\r\n				<img src=\"../images/content/blogs/2_t.jpg\" />\r\n\r\n			</a>\r\n			<h4><a>HABITAT: live zvukové vysielanie / Progressbar + online</a>\r\n</h4>\r\n			<p>\r\n							Nomádsko-pirátsky koncept Habitat-u, ktorý rozosieva svoje spóry prostredníctvom internetového vysielania z rôznych lokalít spojených do jedného streamu.\r\n			</p>\r\n		</div>\r\n<div>\r\n			<a href=\"#\" class=\"il\">\r\n				<img src=\"../images/content/blogs/3_t.jpg\" />\r\n			</a>\r\n\r\n			<h4><a>VOLTAGE CONTROL - ANALOGOVY AUDIOVIZUALNY SYNTETIZATOR / workshop </a>\r\n</h4>\r\n			<p>\r\n							Vyrobte si vlastný analógový audiovizuálny syntetizátor! Nie sú potrebné žiadne znalosti v oblasti elektroniky.\r\n			</p>\r\n		</div>\r\n	</div>\r\n	<footer>\r\n		<div class=\"float-left\">\r\n			<a href=\"#\"><img src=\"/images/s.gif\" class=\"sprites sprite-icon-rss\" /> RSS</a>\r\n		</div>\r\n		<div class=\"float-right\">\r\n			<a href=\"#\">Archive for blog posts</a>\r\n		</div>\r\n		<div class=\"reset\">&#160;</div>\r\n	</footer>\r\n</section>',	'2011-06-07 17:43:33',	'2011-06-11 16:36:16'),
(2,	2,	'en',	'',	'2011-06-07 17:43:33',	'2011-06-11 16:48:56'),
(3,	3,	'en',	'<h2>Sorry, there was a problem...</h2><p>The page you requested was not found.</p><p><a href=\'/\'>Return to the home page</a></p>',	'2011-06-07 17:43:33',	'2011-06-07 17:43:33'),
(6,	6,	'en',	'',	'2011-06-07 18:42:18',	'2011-06-08 20:18:49'),
(7,	7,	'en',	'',	'2011-06-07 18:42:18',	'2011-06-08 20:18:49'),
(8,	8,	'en',	NULL,	'2011-06-07 18:42:18',	'2011-06-07 18:42:18'),
(9,	9,	'en',	NULL,	'2011-06-07 18:42:18',	'2011-06-07 18:42:18'),
(10,	10,	'en',	'<br />\r\n',	'2011-06-08 20:11:16',	'2011-06-11 17:57:38'),
(11,	11,	'en',	'',	'2011-06-08 20:11:16',	'2011-06-08 20:11:16'),
(12,	12,	'en',	'<p>-t- sponzory</p>\r\n<br />',	'2011-06-08 20:11:40',	'2011-06-08 20:11:40'),
(13,	13,	'en',	'',	'2011-06-08 20:11:40',	'2011-06-08 20:11:40'),
(14,	14,	'en',	'',	'2011-06-08 20:12:29',	'2011-06-08 20:12:29'),
(15,	15,	'en',	'',	'2011-06-08 20:12:29',	'2011-06-08 20:12:29'),
(20,	1,	'sk',	'',	'2011-06-08 20:23:40',	'2011-06-12 17:18:46'),
(21,	2,	'sk',	'',	'2011-06-08 20:23:40',	'2011-06-08 20:23:40'),
(24,	8,	'sk',	'\r\n<br />',	'2011-06-08 20:32:19',	'2011-06-12 22:20:45'),
(25,	9,	'sk',	'',	'2011-06-08 20:32:19',	'2011-06-08 20:32:19'),
(26,	10,	'sk',	'<p>\r\n  <strong>Článok I – Základné ustanovenia</strong>\r\n</p>\r\n<p>\r\n  <strong>I.1</strong> Názov občianskeho združenia je:\r\n  <em>Progressbar</em>\r\n<br />\r\n  <strong>I.2</strong> Sídlom združenia je: Lazaretská 12, 811 08\r\n  Bratislava<br />\r\n  <strong>I.3</strong> Webová stránka združenia je: <a href=\"http://progressbar.sk\">http://progressbar.sk</a>\r\n</p>\r\n<p>\r\n  <strong>Článok II – Ciele a činnosť združenia</strong>\r\n</p>\r\n<p>\r\n  <strong>II.1</strong> Základným cieľom združenia je podpora\r\n  rozvoja vedomostí a zručností v oblasti technológií, vedy, umenia\r\n  a kultúry.\r\n</p>\r\n<p>\r\n  <strong>II.2</strong> Svoju činnosť združenie vykonáva\r\n  najmä:<br />\r\n  a) organizovaním seminárov v rôznych oblastiach technológií a\r\n  vedy;\r\n</p>\r\n<p>\r\n  b) usporadúvaním workshopov a školení;\r\n</p>\r\n<p>\r\n  c) získavaním, sústredením a zverejňovaním\r\n  informácií;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;\r\n</p>\r\n<p>\r\n  d) vedeckým a patavedeckým výskumom a vývojom v rôznych\r\n  oblastiach technológií;\r\n</p>\r\n<p>\r\n  e) expertnou, konzultačnou a publikačnou\r\n  činnosťou;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;\r\n</p>\r\n<p>\r\n  f) usporadúvaním a spoluorganizovaním medzinárodných konferencií,\r\n  prednášok, stretnutí a diskusií týkajúcich sa oblastí záujmu\r\n  združenia.\r\n</p>\r\n<p>\r\n  <strong>II.3</strong> Za účelom napĺňania svojich cieľov a výkonu\r\n  svojej činnosti združenie:<br />\r\n  a) spolupracuje s inými združeniami a organizáciami v rámci\r\n  Slovenskej republiky i v zahraničí, s ktorými môže uzatvárať\r\n  zmluvy o spolupráci;\r\n</p>\r\n<p>\r\n  b) získava finančné prostriedky, ktoré účelne používa na\r\n  dosiahnutie svojho cieľa.\r\n</p>\r\n<p>\r\n  <strong>Článok III – Členstvo</strong>\r\n</p>\r\n<p>\r\n  <strong>III.1</strong> Členmi združenia sú fyzické alebo\r\n  právnické osoby, ktoré sa aktívne alebo pasívne podieľajú na jeho\r\n  činnosti.&#160;\r\n</p>\r\n<p>\r\n  <strong>III.2</strong> Združenie má nasledujúce kategórie\r\n  členstva:<br />\r\n  a) zakladajúci členovia;<br />\r\n  b) aktívni členovia;<br />\r\n  c) pridružení členovia;<br />\r\n  d) čestní členovia.\r\n</p>\r\n<p>\r\n  <strong>III.3</strong> Zakladajúci členovia sú fyzické osoby,\r\n  ktoré sa podieľali na založení združenia. Zakladajúci členovia\r\n  združenia sú uvedení v Návrhu na registráciu občianskeho\r\n  združenia.\r\n</p>\r\n<p>\r\n  <strong>III.4</strong> Aktívni členovia sú fyzické osoby, ktoré\r\n  sa aktívne podieľajú na činnostiach združenia alebo na jeho\r\n  chode. O statuse aktívneho člena rozhoduje hlasovaním\r\n  Zhromaždenie členov na svojej schôdzi. Za aktívnych členov sa\r\n  automaticky pokladajú aj zakladajúci členovia, pokiaľ nepožiadajú\r\n  o odobratie aktívneho členstva.\r\n</p>\r\n<p>\r\n  <strong>III.5</strong> Pridružení členovia sú fyzické alebo\r\n  právnické osoby, ktoré aktívnym alebo pasívnym spôsobom podporujú\r\n  združenie. Status pridruženého člena môže získať každý, kto splní\r\n  podmienky stanovené Riadiacim výborom združenia.\r\n</p>\r\n<p>\r\n  <strong>III.6</strong> Čestní členovia sú fyzické osoby, ktoré sa\r\n  mimoriadnym spôsobom zaslúžili o rozvoj združenia. Čestných\r\n  členov určuje a menuje riadiaci výbor.\r\n</p>\r\n<p>\r\n  <strong>III.7</strong> Členovia združenia majú právo zúčastňovať\r\n  sa na aktivitách združenia a byť informovaní o jeho\r\n  činnosti.&#160;\r\n</p>\r\n<p>\r\n  <strong>III.8</strong> Aktívni členovia majú právo zastávať\r\n  jednotlivé role v rámci združenia, voliť a byť volení do orgánov\r\n  združenia.\r\n</p>\r\n<p>\r\n  <strong>III.9</strong> Členovia združenia sú povinní dodržiavať\r\n  jeho stanovy a rozhodnutia jeho orgánov a zostať živí.\r\n</p>\r\n<p>\r\n  <strong>III.10</strong> Status zakladajúceho člena zaniká:<br />\r\n  a) dobrovoľným vzdaním sa členstva k určitému dátumu;<br />\r\n  b) zánikom združenia (k dátumu zániku združenia);\r\n</p>\r\n<p>\r\n  <strong>III.11</strong> Status aktívneho člena zaniká:<br />\r\n  a) dobrovoľným vzdaním sa členstva k určitému\r\n  dátumu;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<br />\r\n\r\n  b) vylúčením po hlasovaní Zhromaždenia členov (k dátumu\r\n  hlasovania);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<br />\r\n\r\n  c) zánikom združenia (k dátumu zániku združenia);\r\n</p>\r\n<p>\r\n  <strong>III.12</strong> Status pridruženého člena zaniká:<br />\r\n  a) neplnením podmienok stanovených združením (k dátumu zistenia\r\n  skutočnosti);<br />\r\n  b) vylúčením po hlasovaní Zhromaždenia členov (k dátumu\r\n  hlasovania);<br />\r\n  c) zánikom združenia (k dátumu zániku združenia).\r\n</p>\r\n<p>\r\n  <strong>Článok IV – Organizačná štruktúra</strong>\r\n</p>\r\n<p>\r\n  <strong>IV.1</strong> Orgánmi združenia sú:<br />\r\n  a) Zhromaždenie členov;&#160;<br />\r\n  b) Riadiaci výbor;<br />\r\n  c) Kontrolná komisia.\r\n</p>\r\n<p>\r\n  <strong>IV.2</strong> Svoju činnosť bude združenie vykonávať v\r\n  rámci:<br />\r\n  a) Pracovných skupín;<br />\r\n  b) Projektových tímov.\r\n</p>\r\n<p>\r\n  <strong>Článok V – Zhromaždenie členov</strong>\r\n</p>\r\n<p>\r\n  <strong>V.1</strong> Zhromaždenie členov je najvyšším\r\n  rozhodovacím orgánom združenia, tvoria ho všetci zakladajúci a\r\n  aktívni členovia združenia. Jeho stretnutie sa organizuje\r\n  minimálne dvakrát ročne a zvoláva ho Riadiaci výbor.\r\n</p>\r\n<p>\r\n  <strong>V.2</strong> Zhromaždenie členov svoje uznesenia\r\n  schvaľuje nadpolovičnou väčšinou hlasov všetkých zástupcov, ak\r\n  stanovy neurčujú inak. Každý zástupca disponuje jedným hlasom a\r\n  hlasuje osobne.&#160;\r\n</p>\r\n<p>\r\n  <strong>V.3</strong> Zhromaždenie členov svojim hlasovaním\r\n  najmä:<br />\r\n  a) schvaľuje pravidlá fungovania združenia;&#160;<br />\r\n  b) spomedzi seba na obdobie jedného roka volí zástupcov\r\n  Riadiaceho výboru, ktorí prejavia o túto funkciu záujem;<br />\r\n  c) spomedzi seba na obdobie jedného roka volí zástupcov\r\n  Kontrolnej komisie, ktorí prejavia o túto funkciu\r\n  záujem;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<br />\r\n\r\n  d) pri porušení povinností členmi môže hlasovaním vylúčiť členov\r\n  združenia, odvolať zástupcov Riadiaceho výboru alebo Kontrolnej\r\n  komisie;<br />\r\n  e) podľa návrhov členov združenia schvaľuje plán činnosti,\r\n  pracovné skupiny a projekty združenia;<br />\r\n  f) podľa návrhov Riadiaceho výboru schvaľuje rozpočet združenia\r\n  na obdobie pol roka;<br />\r\n  g) schvaľuje plán rozvoja a aktivít združenia;<br />\r\n  h) schvaľuje Výročnú správu a Správu Kontrolnej komisie<br />\r\n  i) dvojtretinovou väčšinou všetkých aktívnych členov a so\r\n  súhlasom všetkých zakladajúcich členov mení stanovy Združenia.\r\n</p>\r\n<p>\r\n  <strong>V.4</strong> Mimoriadne stretnutie Zhromaždenia členov je\r\n  povinný zvolať Riadiaci výbor do 15 dní od doručenia žiadosti\r\n  viac ako tretiny aktívnych členov, žiadosť musí obsahovať dôvod,\r\n  pre ktorý sa mimoriadne stretnutie zvoláva. Ak Riadiaci výbor do\r\n  15 dní nezvolá mimoriadne stretnutie Zhromaždenia členov,\r\n  Zhromaždenie sa zíde šestnásty deň od doručenia žiadosti\r\n  Riadiacemu výboru o 13:37 v sídle združenia.\r\n</p>\r\n<p>\r\n  <strong>Článok VI – Riadiaci výbor</strong>\r\n</p>\r\n<p>\r\n  <strong>VI.1</strong> Riadiaci výbor je najvyšším riadiacim\r\n  orgánom združenia. Každý zástupca Riadiaceho výboru je\r\n  štatutárnym zástupcam združenia, koná samostatne. V právnych\r\n  vzťahoch môže Riadiaci výbor zastupovaním združenia na dobu\r\n  určitú poveriť inú osobu.&#160;\r\n</p>\r\n<p>\r\n  <strong>VI.2</strong> Riadiaci výbor má 5 zástupcov, ktorí sú\r\n  volení na obdobie jedného roka. Aspoň 1 zástupca v rámci\r\n  Riadiaceho výboru je zakladajúcim členom združenia.&#160;\r\n</p>\r\n<p>\r\n  <strong>VI.3</strong> Riadiaci výbor riadi po organizačnej a\r\n  hospodárskej stránke činnosť združenia, a to najmä:<br />\r\n  a) zodpovedá za správu hospodárskych záležitostí, vykonaním\r\n  čiastkových úloh súvisiacich s hospodárením združenia;\r\n</p>\r\n<p>\r\n  b) uzatvára pracovné dohody so spolupracovníkmi združenia a v\r\n  závislosti od rozpočtu určuje pre nich finančnú odmenu,\r\n</p>\r\n<p>\r\n  c) zodpovedá za dobré meno združenia a jeho zviditeľňovanie sa,\r\n  vykonaním čiastkových úloh súvisiacich s propagáciou združenia\r\n</p>\r\n<p>\r\n  d) zodpovedá za zaistenie potrebných zdrojov na chod združenia a\r\n  výkon jeho činností,&#160;\r\n</p>\r\n<p>\r\n  e) zodpovedá za priestory a infraštruktúru združenia\r\n</p>\r\n<p>\r\n  f) menuje a odvoláva Vedúcich pracovných skupín a Vedúcich\r\n  projektov\r\n  združenia;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;\r\n</p>\r\n<p>\r\n  g) predkladá Zhromaždeniu členov Výročnú správu združenia, ktorej\r\n  súčasťou je aj Účtovná uzávierka, Správa Kontrolnej komisie a\r\n  Správy o činnosti združenia, a to raz ročne do 1. marca za\r\n  obdobie predchádzajúceho kalendárneho roka;\r\n</p>\r\n<p>\r\n  h) v období medzi stretnutiami Zhromaždenia členov rozhoduje o\r\n  ďalších otázkach, ktoré nie sú týmito stanovami priznané iným\r\n  orgánom;\r\n</p>\r\n<p>\r\n  i) v odôvodnených prípadoch pozastavuje členstvo aktívnym a\r\n  pridruženým členom do rozhodnutia Zhromaždenia členov.\r\n</p>\r\n<p>\r\n  <strong>VI.4</strong> Mandát zástupcom Riadiaceho výboru\r\n  zaniká:<br />\r\n  a) dobrovoľným vzdaním sa funkcie k určitému dátumu;\r\n</p>\r\n<p>\r\n  b) odvolaním po hlasovaní Zhromaždenia členov (k dátumu\r\n  hlasovania);\r\n</p>\r\n<p>\r\n  c) zánikom jeho členstva v združení (k dátumu zániku členstva);\r\n</p>\r\n<p>\r\n  d) zánikom združenia (k dátumu zániku združenia);\r\n</p>\r\n<p>\r\n  <strong>Článok VII – Kontrolná komisia</strong>\r\n</p>\r\n<p>\r\n  <strong>VII.1</strong> Kontrolná komisia je kontrolným orgánom\r\n  združenia, kontroluje dodržiavanie stanov, hospodárenie s\r\n  finančnými prostriedkami a iným majetkom združenia.\r\n</p>\r\n<p>\r\n  <strong>VII.2</strong> Kontrolná komisia má 2 zástupcov, ktorí sú\r\n  volení na obdobie jedného roka.\r\n</p>\r\n<p>\r\n  <strong>VII.3</strong> O výsledkoch vykonaných kontrol a o svojej\r\n  činnosti podáva Zhromaždeniu členov správu. Čiastkovú správu\r\n  podáva do 15 dní od žiadosti Zhromaždenia členov a ročnú správu\r\n  raz ročne do 1. marca za obdobie predchádzajúceho kalendárneho\r\n  roka.\r\n</p>\r\n<p>\r\n  <strong>VII.4</strong> Rola zástupcu Kontrolnej komisie je\r\n  nezlučiteľná s rolou zástupcu Riadiaceho výboru.\r\n</p>\r\n<p>\r\n  <strong>VII.5</strong> Mandát zástupcom Kontrolnej komisie\r\n  zaniká:<br />\r\n  b) dobrovoľným vzdaním sa funkcie k určitému dátumu;<br />\r\n  c) odvolaním po hlasovaní Zhromaždenia členov (k dátumu\r\n  hlasovania);<br />\r\n  d) zánikom združenia (k dátumu zániku združenia);\r\n</p>\r\n<p>\r\n  <strong>Článok VIII – Pracovné skupiny</strong>\r\n</p>\r\n<p>\r\n  <strong>VIII.1</strong> Pracovné skupiny sú trvalé organizačné\r\n  jednotky združenia.\r\n</p>\r\n<p>\r\n  <strong>VIII.2</strong> Pracovné skupiny a ich činnosť schvaľuje\r\n  Riadiaci výbor na základe návrhu aspoň dvoch aktívnych členov\r\n</p>\r\n<p>\r\n  <strong>VIII.3</strong> Pracovné skupiny riadia Vedúci pracovných\r\n  skupín a svoju činnosť si organizujú samostatne.\r\n</p>\r\n<p>\r\n  <strong>Článok IX - Projektové tímy</strong>\r\n</p>\r\n<p>\r\n  <strong>IX.1</strong> Projektové tímy sú dočasné organizačné\r\n  jednotky združenia.\r\n</p>\r\n<p>\r\n  <strong>IX.2</strong> Projekty, na ktorých projektové tímy\r\n  pracujú schvaľuje Riadiaci výbor na základe návrhu aspoň dvoch\r\n  aktívnych členov.\r\n</p>\r\n<p>\r\n  <strong>IX.3</strong> Projektové tímy riadia Vedúci projektov a\r\n  svoju činnosť si organizujú samostatne.\r\n</p>\r\n<p>\r\n  <strong>Článok X – Zásady hospodárenia</strong>\r\n</p>\r\n<p>\r\n  <strong>X.1</strong> Združenie hospodári s hnuteľným a\r\n  nehnuteľným majetkom podľa schváleného rozpočtu a hospodárne.\r\n</p>\r\n<p>\r\n  <strong>X.2</strong> Majetok a finančné prostriedky združenia\r\n  musia byť použité v súlade s cieľmi združenia.&#160;\r\n</p>\r\n<p>\r\n  <strong>X.3</strong> Zdrojmi majetku združenia sú najmä členské\r\n  príspevky, dotácie, granty a dary od právnických a fyzických\r\n  osôb, a výnosy z majetku a vlastnej činnosti.\r\n</p>\r\n<p>\r\n  <strong>Článok XI – Zánik združenia&#160;</strong>\r\n</p>\r\n<p>\r\n  <strong>XI.1</strong> Združenie zaniká jeho zlúčením s iným\r\n  občianskym združením alebo dobrovoľným rozpustením.&#160;\r\n</p>\r\n<p>\r\n  <strong>XI.2</strong>&#160; Združenie môže zaniknúť iba so\r\n  súhlasom 4/5 jeho zakladajúcich členov.\r\n</p>\r\n<p>\r\n  <strong>XI.3</strong> Pri zániku združenia na návrh Riadiaceho\r\n  výboru rozhoduje Zhromaždenie členov o použití majetku združenia\r\n  zostávajúceho po vyrovnaní všetkých záväzkov. Likvidačný zostatok\r\n  môže byť prevedený iba na inú mimovládnu neziskovú organizáciu\r\n  zaoberajúcu sa obdobnou činnosťou ako združenie.\r\n</p>\r\n<p>\r\n  <strong>Článok XII – Záverečné ustanovenia</strong>\r\n</p>\r\n<p>\r\n  <strong>XII.1</strong> Stanovy združenia môžu byť zmenené iba na\r\n  základe rozhodnutia Zhromaždenia členov, ak sa pre zmenu vysloví\r\n  viac ako dve tretiny členov Zhromaždenia členov vrátane všetkých\r\n  zakladajúcich členov.\r\n</p>\r\n<p>\r\n  Bratislava, 30. 6. 2010<br />\r\n  &#160;\r\n</p>\r\n<p>\r\n  Pridelené IČO: <strong>42180023</strong>\r\n</p>',	'2011-06-08 20:32:42',	'2011-06-11 17:55:12'),
(27,	11,	'sk',	'',	'2011-06-08 20:32:42',	'2011-06-08 20:32:42'),
(28,	12,	'sk',	'\r\n\r\n<p>Naši sponzori, ktorí nám finančne pomohli pri budovaní nášho priestoru.\r\n</p> \r\n<p>\r\n	<a href=\"http://www.digmia.com/\"><img rel=\"450x450\" alt=\"Digmia Logo\" title=\"Digmia Logo\" src=\"/system/images/BAhbB1sHOgZmIiwyMDExLzA2LzEyLzE2XzMzXzE0Xzk2OF9kaWdtaWFfbG9nby5wbmdbCDoGcDoKdGh1bWIiDTQ1MHg0NTA+/digmia_logo.png\" height=\"120\" width=\"450\" /></a>&#160;&#160;&#160;&#160;&#160;\r\n	<a href=\"https://www.nethemba.com/\"><img rel=\"450x450\" alt=\"Nethemba Logo\" title=\"Nethemba Logo\" src=\"/system/images/BAhbB1sHOgZmIi4yMDExLzA2LzEyLzE2XzMyXzQ4Xzk1N19uZXRoZW1iYV9sb2dvLnBuZ1sIOgZwOgp0aHVtYiINNDUweDQ1MD4/nethemba_logo.png\" height=\"127\" width=\"450\" /></a>\r\n</p>\r\n<p>\r\n	Chceli by ste nás (nielen finančne) podporiť, alebo sa stať sponzorom progressbaru?<br /><br />\r\n	<a href=\"/podporte-nas\" class=\"button large green\">Neváhajte a podporťe nás!</a>\r\n</p>\r\n	',	'2011-06-08 20:33:00',	'2011-06-12 14:41:19'),
(29,	13,	'sk',	'',	'2011-06-08 20:33:00',	'2011-06-08 20:33:00'),
(30,	14,	'sk',	'',	'2011-06-08 20:33:16',	'2011-06-08 20:33:16'),
(31,	15,	'sk',	'',	'2011-06-08 20:33:16',	'2011-06-08 20:33:16'),
(34,	20,	'en',	'<p>Get in touch with us. Just use the form below and we\'ll get back to you as soon as we can.</p>',	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(35,	21,	'en',	'<p>163 Evergreen Terrace<br/>Happyville<br/>USA.<br/>Phone: 1-800 CALLUSNOW</p>',	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(36,	22,	'en',	'<p>We\'ve received your inquiry and will get back to you with a response shortly.</p>\r\n<p><a href=\"/en/\">Return to the home page</a>\r\n</p>',	'2011-06-11 18:18:41',	'2011-06-12 17:43:05'),
(37,	23,	'en',	'<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p><p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p><p>Please call us at 123 456 7890 if you have any questions or concerns.</p>',	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(38,	6,	'sk',	'',	'2011-06-11 18:29:28',	'2011-06-11 18:29:28'),
(39,	7,	'sk',	'',	'2011-06-11 18:29:28',	'2011-06-11 18:29:28'),
(40,	20,	'sk',	'<p>\r\n  Progressbar sídli na <strong>Cukrovej 14</strong>, oproti\r\n  medickej záhrade, kúsok od AS Mlynské Nivy.\r\n</p>\r\n<p id=\"aui_3_2_0_188\">\r\n  <iframe style=\"width: 550px; height: 400px;\" src=\"http://embedded.freemap.sk/?lon=17.119325262660915&amp;lat=48.148755785745976&amp;zoom=15&amp;marker=1\" marginheight=\"0\" marginwidth=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n</p>\r\n<p>\r\n  <strong>MHD</strong>\r\n<br />\r\n  Trolejbusy 206 a 208 stoja na zástavke Špitálska (najbližšia k\r\n  Progressbaru). Trolejbus 202 na zástavke Cintorínska. Taktiež je\r\n  možné použiť zástavku Mariánska, kde stoja električky 1, 4, 7,\r\n  11, 14, 17. Na vyhľadanie spojov použite napríklad <a href=\"http://www.imhd.sk/\">imhd.sk</a>.\r\n</p>\r\n<p id=\"aui_3_2_0_195\">\r\n  <strong>Parkovanie</strong>\r\n<br />\r\n  Parkovanie v starom meste je po 16:00 v pracovné dni a počas\r\n  víkendov a sviatkov zdarma. Cez týždeň do 16:00 je možné\r\n  parkovanie zaplatiť <a href=\"http://www.m-parking.sk/index.jsp?page=menu11\">pomocou SMS</a>\r\n  zo slovenského čísla alebo kontaktovať predajcu stieracích\r\n  kartičiek. Druhá možnosť je zaparkovať v garáži mamut na\r\n  Ferienčíkovej ulici (pri Bille).\r\n</p>',	'2011-06-11 18:29:55',	'2011-06-11 18:29:55'),
(41,	21,	'sk',	'<p><img rel=\"225x255\" alt=\"Qr Contact S\" title=\"Qr Contact S\" src=\"/system/images/BAhbBlsHOgZmIi0yMDExLzA2LzE4LzIyXzE2XzI0Xzk1OV9xcl9jb250YWN0X3MucG5n/qr_contact_s.png\" height=\"315\" width=\"315\" /></p>',	'2011-06-11 18:29:56',	'2011-06-18 20:17:46'),
(42,	24,	'en',	'',	'2011-06-11 18:33:13',	'2011-06-11 18:34:26'),
(43,	25,	'en',	'',	'2011-06-11 18:33:13',	'2011-06-11 18:34:26'),
(44,	24,	'sk',	'',	'2011-06-11 18:34:37',	'2011-06-11 18:34:37'),
(45,	25,	'sk',	'',	'2011-06-11 18:34:37',	'2011-06-11 18:34:37'),
(46,	26,	'sk',	'<div id=\"member-promo\" class=\"join-box\">\r\n	<header class=\"header\">\r\n		<h2><a href=\"#\">Člen združenia</a>\r\n</h2>\r\n		<div class=\"price\">\r\n			20€ / mesiac\r\n			<a class=\"discount\" href=\"#payments\">pre študentov 50% zľava </a>\r\n		</div>\r\n	</header>\r\n	<div class=\"content\">\r\n		<ul>\r\n			<li>Možnosť využívať priestor a zariadenie hackerspacu</li>\r\n			<li>Zľavy na rôzne predmety a nákupy</li>\r\n			<li>Zľavy na medzinárodné konferencie</li>\r\n			<li>Spolurozhodovanie o chode Progressbaru</li>\r\n			<li>Prístup k neverejným materiálom a informáciám</li>\r\n			<li><a href=\"#member-description\">..a mnoho viac</a>\r\n</li>\r\n		</ul>\r\n	</div>\r\n	<footer class=\"footer\">\r\n		<a href=\"#registration-form\">Registrovať</a>\r\n	</footer>\r\n</div>\r\n<div id=\"supporter-promo\" class=\"join-box\">\r\n	<header class=\"header\">\r\n		<h2><a href=\"#\">Dobrovoľný podporovateľ</a>\r\n</h2>\r\n		<div class=\"price\">\r\n			free\r\n		</div>\r\n	</header>\r\n	<div class=\"content\">\r\n		<ul>\r\n			<li>Žiadne záväzky</li>\r\n			<li>Žiadne povinnosti</li>\r\n			<li>Ľubovolný typ, výška a forma podpory</li>\r\n			<li>Možnosť stať sa aktívnym členom</li>\r\n			<li>Voliteľný zápis medzi sponzorov a podporovatelov Progressbaru</li>\r\n			<li>Dobrý pocit ;-) </li>\r\n		</ul>\r\n	</div>\r\n	<footer class=\"footer\">\r\n		<a href=\"#supporter-description\">Viac informácií</a>\r\n	</footer>\r\n</div>\r\n\r\n<div class=\"reset\">&#160;</div>\r\n<div id=\"member-description\">\r\n	<h2>\r\n		Staň sa členom združenia!\r\n	</h2>\r\n	<p>\r\n		Ak sa Ti naše aktivity páčia, najlepší spôsob ako nás podporiť je\r\n		stať sa členom nášho občianskeho združenia.\r\n	</p>\r\n	<p>\r\n		Náš fyzicky priestor, kde sa stretávame a organizujeme akcie,\r\n		nesie so sebou pravidelné relatívne vysoké náklady (prenájom\r\n		priestorov, elektrický prúd, Internet, ..). Členstvom v združení\r\n		a platením členských poplatkov nám môžeš bezprostredne pomôcť v\r\n		tejto činnosti a zároveň získať (v závislosti od druhu členstva)\r\n		hlasovacie právo.\r\n	</p>\r\n	<p>\r\n		Snažíme sa fungovať na demokratických princípoch, aj keď s veľkým\r\n		dôrazom na aktokraciu (ten, ktorý bude danú činnosť realizovať o\r\n		nej v najväčšej miere rozhoduje).\r\n	</p>\r\n\r\n	<p id=\"other-benefits\">\r\n\r\n		-t- sem pride este text o dalsich vyhodach clenstva, ako praca na projektoch, spolupraca s odbornikmi, medzi hackerspacova spolupraca a dalsie veci ktore nas napadnu..\r\n	</p>\r\n	<h4>\r\n		Stať sa členom je jednoduché:\r\n	</h4>\r\n	<p>\r\n		<a href=\"#\">Začni registráciou</a> na portáli a napíš niečo o sebe.\r\n		Po odoslaní Ťa budeme informovať o priebehu registrácie na tvoj e-mail.\r\n		Členom združenia sa staneš po schválení registrácie a zaplatení členského za <strong>dva kalendárne mesiace</strong>.\r\n	</p>\r\n	<p>\r\n		V okamihu ako začneš platiť členské sa automaticky stávaš náš <strong>pridružený člen.</strong> To je prvý krok k tomu, aby si\r\n		sa stal náš <strong>aktívny člen</strong>, čo vyžaduje pravidelnú aktivitu v Progressbare a súhlas ostatných aktívnych členov.\r\n	</p>\r\n	<p class=\"msg info\">\r\n		<img alt=\"info icon\" src=\"/images/s.gif\" class=\"ui-icon ui-icon-info\" />\r\n		Stať sa aktívnym členom mǒžeš i ako podporovateľ Progressbaru, ak výška dobrovoľných príspevkov za posledných 6 mesiacov presiahla sumu členského za dané obdobie.\r\n		<br />Schválenie je podmienené tiež <a href=\"#registration-form\">registráciou</a>, pravidelnou aktivitou a súhlasom ostatných aktívnych členov.\r\n	</p>\r\n	<h4>\r\n		Výhody aktívneho člena:\r\n	</h4>\r\n	<ul>\r\n		<li>hlasovacie právo v akýchkoľvek otázkach týkajúce sa hackerspace-u\r\n		</li>\r\n		<li>individuálny fyzický prístup do Progressbaru a možnosť využívať uvedené priestory aj mimo plánovaných akcií (vlastníctvo kľúčikov)\r\n		</li>\r\n	</ul>\r\n\r\n	<h4 id=\"payments\">Platby členského</h4>\r\n	<p>\r\n		Ako náš člen je potrebné pravidelne (mesačne) platiť členské, ktoré predstavuje:\r\n	</p>\r\n	<p id=\"discount\">\r\n		10 € ak si študent a nedovŕšil si 26 rokov - na overenie prines svoj študentský doklad na naše stretnutie\r\n	</p>\r\n	<p>\r\n		20 € ak si neštudent alebo študent starší ako 26 rokov\r\n	</p>\r\n	<p>\r\n		Momentálne členské platby je možné vykonať bankovým prevodom na:\r\n	</p>\r\n	<p>\r\n		<strong>Číslo bankového účtu:</strong> 2600121198/8330\r\n	</p>\r\n	<p>\r\n		<strong>IBAN (pre platby zo zahraničia):</strong>\r\n		SK1583300000002600121198\r\n	</p>\r\n	<p>\r\n		<strong>BIC/SWIFT kód:</strong> FIOZSKBAXXX\r\n	</p>\r\n	<p>\r\n\r\n		<strong>VS:</strong> tvoje členské identifikaćné číslo, ktoré ti bolo pridelené pri registrácii.\r\n		Nájdeš ho vo svojom	 <a href=\"#\">členskem profile</a>, alebo v potvrdzovacom registračnom e-maile.\r\n	</p>\r\n	<p>\r\n		<strong>SS:</strong> mesiac za ktorý platíš členstvo (napr.\r\n		082010), nie je povinný v prípade trvalého pravidelného príkazu\r\n	</p>\r\n	<p>\r\n		<strong>Popis platby:</strong> celé tvoje meno.\r\n	</p>\r\n	<p>\r\n		Pomôže nám to danú platbu spárovať s tvojou osobou.\r\n	</p>\r\n	<p class=\"msg info\">\r\n		<img class=\"ui-icon ui-icon-info\" src=\"/images/s.gif\" alt=\"info icon\" />\r\n		Výpis z nášho spoločného účtu je dostupný všetkým členom, takže\r\n		budeš mať úplny prehľad o tom, ako je s tvojimi peniazmi presne\r\n		naložené.\r\n	</p>\r\n	<p>\r\n		<strong>Tešíme sa na Teba!</strong>\r\n	</p>\r\n\r\n	<form id=\"registration-form\">\r\n		<fieldset>\r\n			<legend>Registrácia:</legend>\r\n			<table>\r\n				<tbody><tr>\r\n					<th><label>Tvoje meno:</label>\r\n</th>\r\n					<td><input type=\"text\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<th><label>E-mail:</label>\r\n</th>\r\n					<td><input type=\"text\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<th><label>Niečo viac o sebe:</label>\r\n</th>\r\n					<td><textarea name=\"x\"></textarea>\r\n</td>\r\n				</tr>\r\n				<tr>\r\n					<td></td>\r\n					<td><input value=\"Odoslať\" type=\"submit\" /></td>\r\n				</tr>\r\n			</tbody>\r\n</table>\r\n		</fieldset>\r\n	</form>\r\n</div>\r\n<div id=\"supporter-description\">\r\n	<h2>\r\n		Dobrovoľný podporovateľ\r\n	</h2>\r\n	<p>\r\n		-t- sem príde kratky text o tom preco sa stat podporovatelom progressbaru s prelinkovanim na sekciu podporte nas\r\n	</p>\r\n</div>',	'2011-06-11 18:41:45',	'2011-06-25 13:28:05'),
(47,	27,	'sk',	'\r\n<br />',	'2011-06-11 18:41:45',	'2011-06-25 13:26:32'),
(48,	28,	'sk',	'<p>=t= ako sa stat sponzorom a podporovatelom progressbaru?</p>\r\n<br />',	'2011-06-12 14:43:12',	'2011-06-12 14:43:12'),
(49,	29,	'sk',	'',	'2011-06-12 14:43:12',	'2011-06-12 14:43:12'),
(50,	28,	'en',	'',	'2011-06-12 14:43:43',	'2011-06-12 14:43:43'),
(51,	29,	'en',	'',	'2011-06-12 14:43:43',	'2011-06-12 14:43:43'),
(52,	30,	'sk',	'<p>Na tejto časti momentálne pracujú naši najlepší, preto veríme, že Vám bude prístupna už čoskoro. ;-)</p>\r\n<p>\r\n	Ak by si chcel pomôcť čekni na <a href=\"https://github.com/Progressbar\">Github</a>.\r\n</p>\r\n<p>\r\n	<a href=\"/refinery\" class=\"button\">Administrácia webového rozhrania</a>\r\n</p>',	'2011-06-12 14:57:28',	'2011-06-12 14:57:28'),
(53,	31,	'sk',	'',	'2011-06-12 14:57:28',	'2011-06-12 14:57:28'),
(54,	30,	'en',	'<p>On this section currently working our best people, so we hope will be available soon. ;-)</p>\r\n<p>\r\n	If you would like to help check <a href=\"https://github.com/Progressbar\">Github</a>.\r\n</p>\r\n<p>\r\n	<a href=\"/refinery\" class=\"button\">Web Administration</a>\r\n</p>',	'2011-06-12 15:03:02',	'2011-06-12 15:03:02'),
(55,	31,	'en',	'',	'2011-06-12 15:03:02',	'2011-06-12 15:03:02'),
(56,	26,	'en',	'<p>-t- please insert translation</p>\r\n<br />',	'2011-06-12 15:27:47',	'2011-06-12 15:27:47'),
(57,	27,	'en',	'',	'2011-06-12 15:27:47',	'2011-06-12 15:27:47'),
(58,	32,	'sk',	'<p><cite>Tiráž (z francouzštiny tirage, což znamená náklad) je soupis informací obsahující technické a vydavatelské informace o knize. </cite>\r\n<br />\r\n<span class=\"float-right\"> Zdroj; <a href=\"http://cs.wikipedia.org/wiki/Tir%C3%A1%C5%BE\">wikipedia</a>\r\n</span></p>\r\n<p>Web Progressbaru je postavený nad <a href=\"http://refinerycms.com/\">RefineryCMS</a>.</p>\r\n<p>Technicky zabezpečujú naši <a title=\"Sponzori\" href=\"/sponzori\">sponzori</a> spoločnosti <a href=\"http://www.digmia.com/\">Digmia</a> a <a href=\"https://www.nethemba.com/\">Nethemba</a>.</p>\r\n<p>-t- todo tu budú ďalšie informácie o licenciách a právach k obsahu</p>\r\n\r\n',	'2011-06-12 16:36:43',	'2011-06-12 16:53:18'),
(59,	33,	'sk',	'',	'2011-06-12 16:36:43',	'2011-06-12 16:36:43'),
(60,	32,	'en',	'',	'2011-06-12 16:37:13',	'2011-06-12 16:37:13'),
(61,	33,	'en',	'',	'2011-06-12 16:37:13',	'2011-06-12 16:37:13'),
(62,	3,	'sk',	'<h2 class=\"text-align-left\">404 ta co? </h2>\r\n<p class=\"text-align-left\">Choď si zapáliť a skús neskôr, \r\n<br />alebo nás môžeš otravovať na e-mail webmaster@progressbar.sk ;-) .</p>\r\n',	'2011-06-12 17:40:14',	'2011-06-12 18:03:14'),
(63,	22,	'sk',	'<p>We\'ve received your inquiry and will get back to you with a response shortly.</p>\r\n<p><a href=\"/\">Return to the home page</a>\r\n</p>',	'2011-06-12 17:40:38',	'2011-06-12 17:42:14'),
(64,	34,	'sk',	'<p>Táto funkčnosť momentálne nieje dostupná.</p>\r\n<br />',	'2011-06-12 22:59:48',	'2011-06-12 22:59:48'),
(65,	35,	'sk',	'',	'2011-06-12 22:59:48',	'2011-06-12 22:59:48'),
(66,	36,	'sk',	'',	'2011-06-15 20:45:06',	'2011-06-15 20:45:06'),
(67,	37,	'sk',	'',	'2011-06-15 20:45:06',	'2011-06-15 20:45:06'),
(68,	38,	'sk',	'<p>-t- predstavovacia stranka pre projekty</p>\r\n<br />',	'2011-06-15 21:05:14',	'2011-06-15 21:05:14'),
(69,	39,	'sk',	'',	'2011-06-15 21:05:14',	'2011-06-15 21:05:14'),
(70,	40,	'sk',	'<p>=t= logo letaky etc</p>\r\n<br />',	'2011-06-15 21:06:33',	'2011-06-15 21:06:33'),
(71,	41,	'sk',	'',	'2011-06-15 21:06:33',	'2011-06-15 21:06:33'),
(72,	42,	'sk',	'',	'2011-06-15 21:11:41',	'2011-06-15 21:11:41'),
(73,	43,	'sk',	'',	'2011-06-15 21:11:42',	'2011-06-15 21:11:42'),
(74,	38,	'en',	'',	'2011-06-21 17:48:47',	'2011-06-21 17:48:47'),
(75,	39,	'en',	'',	'2011-06-21 17:48:47',	'2011-06-21 17:48:47');

DROP TABLE IF EXISTS `page_parts`;
CREATE TABLE `page_parts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_parts_on_id` (`id`),
  KEY `index_page_parts_on_page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `page_parts`;
INSERT INTO `page_parts` (`id`, `page_id`, `title`, `body`, `position`, `created_at`, `updated_at`) VALUES
(1,	1,	'Body',	'',	0,	'2011-06-07 17:43:33',	'2011-06-12 17:18:46'),
(2,	1,	'Side Body',	'',	1,	'2011-06-07 17:43:33',	'2011-06-12 17:18:46'),
(3,	2,	'Body',	'<h2 class=\"text-align-left\">404 ta co? </h2>\r\n<p class=\"text-align-left\">Choď si zapáliť a skús neskôr, \r\n<br />alebo nás môžeš otravovať na e-mail webmaster@progressbar.sk ;-) .</p>\r\n',	0,	'2011-06-07 17:43:33',	'2011-06-12 18:03:14'),
(6,	4,	'Body',	'',	0,	'2011-06-07 18:42:17',	'2011-06-11 18:29:28'),
(7,	4,	'Side Body',	'',	1,	'2011-06-07 18:42:18',	'2011-06-11 18:29:28'),
(8,	5,	'Body',	'\r\n<br />',	0,	'2011-06-07 18:42:18',	'2011-06-12 22:20:45'),
(9,	5,	'Side Body',	'',	1,	'2011-06-07 18:42:18',	'2011-06-12 22:20:45'),
(10,	6,	'Body',	'<br />\r\n',	0,	'2011-06-08 20:11:16',	'2011-06-11 17:57:38'),
(11,	6,	'Side Body',	'',	1,	'2011-06-08 20:11:16',	'2011-06-11 17:57:38'),
(12,	7,	'Body',	'\r\n\r\n<p>Naši sponzori, ktorí nám finančne pomohli pri budovaní nášho priestoru.\r\n</p> \r\n<p>\r\n	<a href=\"http://www.digmia.com/\"><img rel=\"450x450\" alt=\"Digmia Logo\" title=\"Digmia Logo\" src=\"/system/images/BAhbB1sHOgZmIiwyMDExLzA2LzEyLzE2XzMzXzE0Xzk2OF9kaWdtaWFfbG9nby5wbmdbCDoGcDoKdGh1bWIiDTQ1MHg0NTA+/digmia_logo.png\" height=\"120\" width=\"450\" /></a>&#160;&#160;&#160;&#160;&#160;\r\n	<a href=\"https://www.nethemba.com/\"><img rel=\"450x450\" alt=\"Nethemba Logo\" title=\"Nethemba Logo\" src=\"/system/images/BAhbB1sHOgZmIi4yMDExLzA2LzEyLzE2XzMyXzQ4Xzk1N19uZXRoZW1iYV9sb2dvLnBuZ1sIOgZwOgp0aHVtYiINNDUweDQ1MD4/nethemba_logo.png\" height=\"127\" width=\"450\" /></a>\r\n</p>\r\n<p>\r\n	Chceli by ste nás (nielen finančne) podporiť, alebo sa stať sponzorom progressbaru?<br /><br />\r\n	<a href=\"/podporte-nas\" class=\"button large green\">Neváhajte a podporťe nás!</a>\r\n</p>\r\n	',	0,	'2011-06-08 20:11:40',	'2011-06-12 14:41:19'),
(13,	7,	'Side Body',	'',	1,	'2011-06-08 20:11:40',	'2011-06-12 14:41:19'),
(14,	8,	'Body',	'',	0,	'2011-06-08 20:12:29',	'2011-06-11 18:01:04'),
(15,	8,	'Side Body',	'',	1,	'2011-06-08 20:12:29',	'2011-06-11 18:01:04'),
(20,	11,	'Body',	'<p>\r\n  Progressbar sídli na <strong>Cukrovej 14</strong>, oproti\r\n  medickej záhrade, kúsok od AS Mlynské Nivy.\r\n</p>\r\n<p id=\"aui_3_2_0_188\">\r\n  <iframe style=\"width: 550px; height: 400px;\" src=\"http://embedded.freemap.sk/?lon=17.119325262660915&amp;lat=48.148755785745976&amp;zoom=15&amp;marker=1\" marginheight=\"0\" marginwidth=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe>\r\n</p>\r\n<p>\r\n  <strong>MHD</strong>\r\n<br />\r\n  Trolejbusy 206 a 208 stoja na zástavke Špitálska (najbližšia k\r\n  Progressbaru). Trolejbus 202 na zástavke Cintorínska. Taktiež je\r\n  možné použiť zástavku Mariánska, kde stoja električky 1, 4, 7,\r\n  11, 14, 17. Na vyhľadanie spojov použite napríklad <a href=\"http://www.imhd.sk/\">imhd.sk</a>.\r\n</p>\r\n<p id=\"aui_3_2_0_195\">\r\n  <strong>Parkovanie</strong>\r\n<br />\r\n  Parkovanie v starom meste je po 16:00 v pracovné dni a počas\r\n  víkendov a sviatkov zdarma. Cez týždeň do 16:00 je možné\r\n  parkovanie zaplatiť <a href=\"http://www.m-parking.sk/index.jsp?page=menu11\">pomocou SMS</a>\r\n  zo slovenského čísla alebo kontaktovať predajcu stieracích\r\n  kartičiek. Druhá možnosť je zaparkovať v garáži mamut na\r\n  Ferienčíkovej ulici (pri Bille).\r\n</p>',	0,	'2011-06-11 18:18:41',	'2011-06-18 20:17:46'),
(21,	11,	'Side Body',	'<p><img rel=\"225x255\" alt=\"Qr Contact S\" title=\"Qr Contact S\" src=\"/system/images/BAhbBlsHOgZmIi0yMDExLzA2LzE4LzIyXzE2XzI0Xzk1OV9xcl9jb250YWN0X3MucG5n/qr_contact_s.png\" height=\"315\" width=\"315\" /></p>',	1,	'2011-06-11 18:18:41',	'2011-06-18 20:17:46'),
(22,	12,	'Body',	'<p>We\'ve received your inquiry and will get back to you with a response shortly.</p>\r\n<p><a href=\"/en/\">Return to the home page</a>\r\n</p>',	0,	'2011-06-11 18:18:41',	'2011-06-12 17:43:05'),
(23,	13,	'Body',	'<p>We respect your privacy. We do not market, rent or sell our email list to any outside parties.</p><p>We need your e-mail address so that we can ensure that the people using our forms are bona fide. It also allows us to send you e-mail newsletters and other communications, if you opt-in. Your postal address is required in order to send you information and pricing, if you request it.</p><p>Please call us at 123 456 7890 if you have any questions or concerns.</p>',	0,	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(24,	14,	'Body',	'',	0,	'2011-06-11 18:33:13',	'2011-06-11 18:34:37'),
(25,	14,	'Side Body',	'',	1,	'2011-06-11 18:33:13',	'2011-06-11 18:34:37'),
(26,	15,	'Body',	'<div id=\"member-promo\" class=\"join-box\">\r\n	<header class=\"header\">\r\n		<h2><a href=\"#\">Člen združenia</a>\r\n</h2>\r\n		<div class=\"price\">\r\n			20€ / mesiac\r\n			<a class=\"discount\" href=\"#payments\">pre študentov 50% zľava </a>\r\n		</div>\r\n	</header>\r\n	<div class=\"content\">\r\n		<ul>\r\n			<li>Možnosť využívať priestor a zariadenie hackerspacu</li>\r\n			<li>Zľavy na rôzne predmety a nákupy</li>\r\n			<li>Zľavy na medzinárodné konferencie</li>\r\n			<li>Spolurozhodovanie o chode Progressbaru</li>\r\n			<li>Prístup k neverejným materiálom a informáciám</li>\r\n			<li><a href=\"#member-description\">..a mnoho viac</a>\r\n</li>\r\n		</ul>\r\n	</div>\r\n	<footer class=\"footer\">\r\n		<a href=\"#registration-form\">Registrovať</a>\r\n	</footer>\r\n</div>\r\n<div id=\"supporter-promo\" class=\"join-box\">\r\n	<header class=\"header\">\r\n		<h2><a href=\"#\">Dobrovoľný podporovateľ</a>\r\n</h2>\r\n		<div class=\"price\">\r\n			free\r\n		</div>\r\n	</header>\r\n	<div class=\"content\">\r\n		<ul>\r\n			<li>Žiadne záväzky</li>\r\n			<li>Žiadne povinnosti</li>\r\n			<li>Ľubovolný typ, výška a forma podpory</li>\r\n			<li>Možnosť stať sa aktívnym členom</li>\r\n			<li>Voliteľný zápis medzi sponzorov a podporovatelov Progressbaru</li>\r\n			<li>Dobrý pocit ;-) </li>\r\n		</ul>\r\n	</div>\r\n	<footer class=\"footer\">\r\n		<a href=\"#supporter-description\">Viac informácií</a>\r\n	</footer>\r\n</div>\r\n\r\n<div class=\"reset\">&#160;</div>\r\n<div id=\"member-description\">\r\n	<h2>\r\n		Staň sa členom združenia!\r\n	</h2>\r\n	<p>\r\n		Ak sa Ti naše aktivity páčia, najlepší spôsob ako nás podporiť je\r\n		stať sa členom nášho občianskeho združenia.\r\n	</p>\r\n	<p>\r\n		Náš fyzicky priestor, kde sa stretávame a organizujeme akcie,\r\n		nesie so sebou pravidelné relatívne vysoké náklady (prenájom\r\n		priestorov, elektrický prúd, Internet, ..). Členstvom v združení\r\n		a platením členských poplatkov nám môžeš bezprostredne pomôcť v\r\n		tejto činnosti a zároveň získať (v závislosti od druhu členstva)\r\n		hlasovacie právo.\r\n	</p>\r\n	<p>\r\n		Snažíme sa fungovať na demokratických princípoch, aj keď s veľkým\r\n		dôrazom na aktokraciu (ten, ktorý bude danú činnosť realizovať o\r\n		nej v najväčšej miere rozhoduje).\r\n	</p>\r\n\r\n	<p id=\"other-benefits\">\r\n\r\n		-t- sem pride este text o dalsich vyhodach clenstva, ako praca na projektoch, spolupraca s odbornikmi, medzi hackerspacova spolupraca a dalsie veci ktore nas napadnu..\r\n	</p>\r\n	<h4>\r\n		Stať sa členom je jednoduché:\r\n	</h4>\r\n	<p>\r\n		<a href=\"#\">Začni registráciou</a> na portáli a napíš niečo o sebe.\r\n		Po odoslaní Ťa budeme informovať o priebehu registrácie na tvoj e-mail.\r\n		Členom združenia sa staneš po schválení registrácie a zaplatení členského za <strong>dva kalendárne mesiace</strong>.\r\n	</p>\r\n	<p>\r\n		V okamihu ako začneš platiť členské sa automaticky stávaš náš <strong>pridružený člen.</strong> To je prvý krok k tomu, aby si\r\n		sa stal náš <strong>aktívny člen</strong>, čo vyžaduje pravidelnú aktivitu v Progressbare a súhlas ostatných aktívnych členov.\r\n	</p>\r\n	<p class=\"msg info\">\r\n		<img alt=\"info icon\" src=\"/images/s.gif\" class=\"ui-icon ui-icon-info\" />\r\n		Stať sa aktívnym členom mǒžeš i ako podporovateľ Progressbaru, ak výška dobrovoľných príspevkov za posledných 6 mesiacov presiahla sumu členského za dané obdobie.\r\n		<br />Schválenie je podmienené tiež <a href=\"#registration-form\">registráciou</a>, pravidelnou aktivitou a súhlasom ostatných aktívnych členov.\r\n	</p>\r\n	<h4>\r\n		Výhody aktívneho člena:\r\n	</h4>\r\n	<ul>\r\n		<li>hlasovacie právo v akýchkoľvek otázkach týkajúce sa hackerspace-u\r\n		</li>\r\n		<li>individuálny fyzický prístup do Progressbaru a možnosť využívať uvedené priestory aj mimo plánovaných akcií (vlastníctvo kľúčikov)\r\n		</li>\r\n	</ul>\r\n\r\n	<h4 id=\"payments\">Platby členského</h4>\r\n	<p>\r\n		Ako náš člen je potrebné pravidelne (mesačne) platiť členské, ktoré predstavuje:\r\n	</p>\r\n	<p id=\"discount\">\r\n		10 € ak si študent a nedovŕšil si 26 rokov - na overenie prines svoj študentský doklad na naše stretnutie\r\n	</p>\r\n	<p>\r\n		20 € ak si neštudent alebo študent starší ako 26 rokov\r\n	</p>\r\n	<p>\r\n		Momentálne členské platby je možné vykonať bankovým prevodom na:\r\n	</p>\r\n	<p>\r\n		<strong>Číslo bankového účtu:</strong> 2600121198/8330\r\n	</p>\r\n	<p>\r\n		<strong>IBAN (pre platby zo zahraničia):</strong>\r\n		SK1583300000002600121198\r\n	</p>\r\n	<p>\r\n		<strong>BIC/SWIFT kód:</strong> FIOZSKBAXXX\r\n	</p>\r\n	<p>\r\n\r\n		<strong>VS:</strong> tvoje členské identifikaćné číslo, ktoré ti bolo pridelené pri registrácii.\r\n		Nájdeš ho vo svojom	 <a href=\"#\">členskem profile</a>, alebo v potvrdzovacom registračnom e-maile.\r\n	</p>\r\n	<p>\r\n		<strong>SS:</strong> mesiac za ktorý platíš členstvo (napr.\r\n		082010), nie je povinný v prípade trvalého pravidelného príkazu\r\n	</p>\r\n	<p>\r\n		<strong>Popis platby:</strong> celé tvoje meno.\r\n	</p>\r\n	<p>\r\n		Pomôže nám to danú platbu spárovať s tvojou osobou.\r\n	</p>\r\n	<p class=\"msg info\">\r\n		<img class=\"ui-icon ui-icon-info\" src=\"/images/s.gif\" alt=\"info icon\" />\r\n		Výpis z nášho spoločného účtu je dostupný všetkým členom, takže\r\n		budeš mať úplny prehľad o tom, ako je s tvojimi peniazmi presne\r\n		naložené.\r\n	</p>\r\n	<p>\r\n		<strong>Tešíme sa na Teba!</strong>\r\n	</p>\r\n\r\n	<form id=\"registration-form\">\r\n		<fieldset>\r\n			<legend>Registrácia:</legend>\r\n			<table>\r\n				<tbody><tr>\r\n					<th><label>Tvoje meno:</label>\r\n</th>\r\n					<td><input type=\"text\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<th><label>E-mail:</label>\r\n</th>\r\n					<td><input type=\"text\" /></td>\r\n				</tr>\r\n				<tr>\r\n					<th><label>Niečo viac o sebe:</label>\r\n</th>\r\n					<td><textarea name=\"x\"></textarea>\r\n</td>\r\n				</tr>\r\n				<tr>\r\n					<td></td>\r\n					<td><input value=\"Odoslať\" type=\"submit\" /></td>\r\n				</tr>\r\n			</tbody>\r\n</table>\r\n		</fieldset>\r\n	</form>\r\n</div>\r\n<div id=\"supporter-description\">\r\n	<h2>\r\n		Dobrovoľný podporovateľ\r\n	</h2>\r\n	<p>\r\n		-t- sem príde kratky text o tom preco sa stat podporovatelom progressbaru s prelinkovanim na sekciu podporte nas\r\n	</p>\r\n</div>',	0,	'2011-06-11 18:41:45',	'2011-06-25 13:28:05'),
(27,	15,	'Side Body',	'\r\n<br />',	1,	'2011-06-11 18:41:45',	'2011-06-25 13:28:05'),
(28,	16,	'Body',	'<p>=t= ako sa stat sponzorom a podporovatelom progressbaru?</p>\r\n<br />',	0,	'2011-06-12 14:43:12',	'2011-06-15 21:18:47'),
(29,	16,	'Side Body',	'',	1,	'2011-06-12 14:43:12',	'2011-06-15 21:18:47'),
(30,	17,	'Body',	'<p>On this section currently working our best people, so we hope will be available soon. ;-)</p>\r\n<p>\r\n	If you would like to help check <a href=\"https://github.com/Progressbar\">Github</a>.\r\n</p>\r\n<p>\r\n	<a href=\"/refinery\" class=\"button\">Web Administration</a>\r\n</p>',	0,	'2011-06-12 14:57:28',	'2011-06-12 15:03:02'),
(31,	17,	'Side Body',	'',	1,	'2011-06-12 14:57:28',	'2011-06-12 15:03:02'),
(32,	18,	'Body',	'<p><cite>Tiráž (z francouzštiny tirage, což znamená náklad) je soupis informací obsahující technické a vydavatelské informace o knize. </cite>\r\n<br />\r\n<span class=\"float-right\"> Zdroj; <a href=\"http://cs.wikipedia.org/wiki/Tir%C3%A1%C5%BE\">wikipedia</a>\r\n</span></p>\r\n<p>Web Progressbaru je postavený nad <a href=\"http://refinerycms.com/\">RefineryCMS</a>.</p>\r\n<p>Technicky zabezpečujú naši <a title=\"Sponzori\" href=\"/sponzori\">sponzori</a> spoločnosti <a href=\"http://www.digmia.com/\">Digmia</a> a <a href=\"https://www.nethemba.com/\">Nethemba</a>.</p>\r\n<p>-t- todo tu budú ďalšie informácie o licenciách a právach k obsahu</p>\r\n\r\n',	0,	'2011-06-12 16:36:43',	'2011-06-12 16:53:18'),
(33,	18,	'Side Body',	'',	1,	'2011-06-12 16:36:43',	'2011-06-12 16:53:18'),
(34,	19,	'Body',	'<p>Táto funkčnosť momentálne nieje dostupná.</p>\r\n<br />',	0,	'2011-06-12 22:59:48',	'2011-06-12 23:01:14'),
(35,	19,	'Side Body',	'',	1,	'2011-06-12 22:59:48',	'2011-06-12 23:01:14'),
(36,	20,	'Body',	'',	0,	'2011-06-15 20:45:06',	'2011-06-15 20:45:06'),
(37,	20,	'Side Body',	'',	1,	'2011-06-15 20:45:06',	'2011-06-15 20:45:06'),
(38,	21,	'Body',	'',	0,	'2011-06-15 21:05:14',	'2011-06-21 17:48:47'),
(39,	21,	'Side Body',	'',	1,	'2011-06-15 21:05:14',	'2011-06-21 17:48:47'),
(40,	22,	'Body',	'<p>=t= logo letaky etc</p>\r\n<br />',	0,	'2011-06-15 21:06:33',	'2011-06-15 21:06:33'),
(41,	22,	'Side Body',	'',	1,	'2011-06-15 21:06:33',	'2011-06-15 21:06:33'),
(42,	23,	'Body',	'',	0,	'2011-06-15 21:11:41',	'2011-06-18 20:17:02'),
(43,	23,	'Side Body',	'',	1,	'2011-06-15 21:11:42',	'2011-06-18 20:17:02');

DROP TABLE IF EXISTS `page_translations`;
CREATE TABLE `page_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `custom_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_page_translations_on_page_id` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=42 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `page_translations`;
INSERT INTO `page_translations` (`id`, `page_id`, `locale`, `custom_title`, `title`, `created_at`, `updated_at`) VALUES
(1,	1,	'en',	'',	'Home',	'2011-06-07 17:43:33',	'2011-06-11 13:20:41'),
(2,	2,	'en',	NULL,	'Page not found',	'2011-06-07 17:43:33',	'2011-06-07 17:43:33'),
(4,	4,	'sk',	'',	'Novinky',	'2011-06-07 18:42:17',	'2011-06-11 18:29:28'),
(5,	4,	'en',	'',	'News',	'2011-06-07 18:42:17',	'2011-06-08 20:18:49'),
(6,	5,	'sk',	'',	'Blog',	'2011-06-07 18:42:18',	'2011-06-08 20:32:19'),
(7,	5,	'en',	NULL,	'Blog',	'2011-06-07 18:42:18',	'2011-06-07 18:42:18'),
(8,	6,	'en',	'',	'Statute',	'2011-06-08 20:11:16',	'2011-06-08 20:11:16'),
(9,	7,	'en',	'',	'Sponsors',	'2011-06-08 20:11:40',	'2011-06-08 20:11:40'),
(10,	8,	'en',	'',	'Wiki',	'2011-06-08 20:12:29',	'2011-06-08 20:12:29'),
(13,	1,	'sk',	'',	'Úvod',	'2011-06-08 20:23:40',	'2011-06-08 20:23:40'),
(15,	6,	'sk',	'Stanovy občianskeho združenia Progressbar',	'Stanovy',	'2011-06-08 20:32:42',	'2011-06-11 17:54:00'),
(16,	7,	'sk',	'',	'Sponzori',	'2011-06-08 20:33:00',	'2011-06-11 17:09:33'),
(17,	8,	'sk',	'',	'Wiki',	'2011-06-08 20:33:16',	'2011-06-08 20:33:16'),
(19,	11,	'sk',	'',	'Kontakt',	'2011-06-11 18:18:41',	'2011-06-11 18:29:55'),
(20,	11,	'en',	NULL,	'Contact',	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(21,	12,	'sk',	'',	'Ďakujeme',	'2011-06-11 18:18:41',	'2011-06-12 17:40:38'),
(22,	12,	'en',	'',	'Thank You',	'2011-06-11 18:18:41',	'2011-06-12 17:43:05'),
(23,	13,	'sk',	NULL,	NULL,	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(24,	13,	'en',	NULL,	'Privacy Policy',	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(25,	14,	'sk',	'',	'Kalendár',	'2011-06-11 18:33:13',	'2011-06-11 18:34:37'),
(26,	14,	'en',	'',	'Calendar',	'2011-06-11 18:33:13',	'2011-06-11 18:34:26'),
(27,	15,	'sk',	'Pridaj sa k nám a staň sa členom alebo podporovaťelom hackerspacu',	'Pridaj sa',	'2011-06-11 18:41:45',	'2011-06-25 13:27:11'),
(28,	16,	'sk',	'',	'Podporte nás',	'2011-06-12 14:43:12',	'2011-06-12 14:43:12'),
(29,	16,	'en',	'',	'Support Us',	'2011-06-12 14:43:43',	'2011-06-12 14:43:43'),
(30,	17,	'sk',	'',	'Pre členov',	'2011-06-12 14:57:28',	'2011-06-12 14:57:28'),
(31,	17,	'en',	'',	'For members',	'2011-06-12 15:03:02',	'2011-06-12 15:03:02'),
(32,	15,	'en',	'',	'Join Us',	'2011-06-12 15:27:47',	'2011-06-12 15:27:47'),
(33,	18,	'sk',	'',	'Tiráž',	'2011-06-12 16:36:43',	'2011-06-12 16:43:37'),
(34,	18,	'en',	'',	'Colophon',	'2011-06-12 16:37:13',	'2011-06-12 16:37:13'),
(35,	2,	'sk',	'',	'Stránka nenájdená',	'2011-06-12 17:40:14',	'2011-06-12 17:40:14'),
(36,	19,	'sk',	'',	'mailing_list',	'2011-06-12 22:59:48',	'2011-06-12 22:59:48'),
(37,	20,	'sk',	'',	'Oficiality',	'2011-06-15 20:45:06',	'2011-06-15 20:45:06'),
(38,	21,	'sk',	'',	'Projekty',	'2011-06-15 21:05:14',	'2011-06-15 21:05:14'),
(39,	22,	'sk',	'',	'Pre médiá',	'2011-06-15 21:06:33',	'2011-06-15 21:06:33'),
(40,	23,	'sk',	'',	'Orgány združenia',	'2011-06-15 21:11:41',	'2011-06-18 20:17:02'),
(41,	21,	'en',	'',	'Projects',	'2011-06-21 17:48:47',	'2011-06-21 17:48:47');

DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `path` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `show_in_menu` tinyint(1) DEFAULT '1',
  `link_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `menu_match` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `deletable` tinyint(1) DEFAULT '1',
  `custom_title_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT 'none',
  `draft` tinyint(1) DEFAULT '0',
  `skip_to_first_child` tinyint(1) DEFAULT '0',
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_pages_on_depth` (`depth`),
  KEY `index_pages_on_id` (`id`),
  KEY `index_pages_on_lft` (`lft`),
  KEY `index_pages_on_parent_id` (`parent_id`),
  KEY `index_pages_on_rgt` (`rgt`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `pages`;
INSERT INTO `pages` (`id`, `parent_id`, `position`, `path`, `created_at`, `updated_at`, `show_in_menu`, `link_url`, `menu_match`, `deletable`, `custom_title_type`, `draft`, `skip_to_first_child`, `lft`, `rgt`, `depth`) VALUES
(1,	NULL,	0,	NULL,	'2011-06-07 17:43:33',	'2011-06-12 17:18:46',	1,	'/',	NULL,	0,	'none',	0,	0,	1,	4,	NULL),
(2,	1,	0,	NULL,	'2011-06-07 17:43:33',	'2011-06-12 18:03:14',	0,	'',	'^/404$',	0,	'none',	0,	0,	2,	3,	NULL),
(4,	NULL,	2,	NULL,	'2011-06-07 18:42:17',	'2011-06-11 18:29:28',	0,	'/news',	'^/news.*$',	0,	'none',	0,	0,	27,	28,	NULL),
(5,	NULL,	3,	NULL,	'2011-06-07 18:42:18',	'2011-06-12 22:20:45',	1,	'/blog',	'^/blogs?(/|/.+?|)$',	0,	'none',	0,	0,	7,	8,	NULL),
(6,	20,	4,	NULL,	'2011-06-08 20:11:16',	'2011-06-11 17:57:38',	1,	'',	NULL,	1,	'text',	0,	0,	12,	13,	NULL),
(7,	20,	5,	NULL,	'2011-06-08 20:11:40',	'2011-06-12 14:41:19',	1,	'',	NULL,	1,	'none',	0,	0,	16,	17,	NULL),
(8,	NULL,	6,	NULL,	'2011-06-08 20:12:29',	'2011-06-11 18:01:04',	1,	'http://wiki.progressbar.sk/',	NULL,	1,	'none',	0,	0,	25,	26,	NULL),
(11,	NULL,	8,	NULL,	'2011-06-11 18:18:41',	'2011-06-18 20:17:46',	1,	'/contact',	'^/(inquiries|contact).*$',	0,	'none',	0,	0,	29,	34,	NULL),
(12,	11,	0,	NULL,	'2011-06-11 18:18:41',	'2011-06-12 17:43:05',	0,	'/contact/thank_you',	'^/(inquiries|contact)/thank_you$',	0,	'none',	0,	0,	30,	31,	NULL),
(13,	11,	1,	NULL,	'2011-06-11 18:18:41',	'2011-06-11 18:18:41',	0,	NULL,	NULL,	1,	'none',	0,	0,	32,	33,	NULL),
(14,	NULL,	9,	NULL,	'2011-06-11 18:33:13',	'2011-06-11 18:34:37',	1,	'/events',	'^/events(\\/|\\/.+?|)$',	0,	'none',	0,	0,	5,	6,	NULL),
(15,	20,	10,	NULL,	'2011-06-11 18:41:45',	'2011-06-25 13:28:05',	1,	'',	NULL,	1,	'text',	0,	0,	22,	23,	NULL),
(16,	20,	11,	NULL,	'2011-06-12 14:43:12',	'2011-06-15 21:18:47',	1,	'',	NULL,	1,	'none',	0,	0,	20,	21,	NULL),
(17,	NULL,	12,	NULL,	'2011-06-12 14:57:28',	'2011-06-12 15:03:02',	0,	'',	NULL,	1,	'none',	0,	0,	35,	36,	NULL),
(18,	NULL,	13,	NULL,	'2011-06-12 16:36:42',	'2011-06-12 16:53:18',	0,	'',	NULL,	1,	'none',	0,	0,	37,	38,	NULL),
(19,	NULL,	14,	NULL,	'2011-06-12 22:59:48',	'2011-06-12 23:01:14',	0,	'',	NULL,	1,	'none',	0,	0,	39,	40,	NULL),
(20,	NULL,	15,	NULL,	'2011-06-15 20:45:06',	'2011-06-15 20:45:06',	1,	'',	NULL,	1,	'none',	0,	1,	11,	24,	NULL),
(21,	NULL,	16,	NULL,	'2011-06-15 21:05:14',	'2011-06-21 17:48:47',	1,	'',	NULL,	1,	'none',	0,	0,	9,	10,	NULL),
(22,	20,	17,	NULL,	'2011-06-15 21:06:33',	'2011-06-15 21:06:33',	1,	'',	NULL,	1,	'none',	0,	0,	18,	19,	NULL),
(23,	20,	18,	NULL,	'2011-06-15 21:11:41',	'2011-06-18 20:17:02',	1,	'',	NULL,	1,	'none',	0,	0,	14,	15,	NULL);

DROP TABLE IF EXISTS `pages_roles`;
CREATE TABLE `pages_roles` (
  `page_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `pages_roles`;

DROP TABLE IF EXISTS `refinery_settings`;
CREATE TABLE `refinery_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8_unicode_ci,
  `destroyable` tinyint(1) DEFAULT '1',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `scoping` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `restricted` tinyint(1) DEFAULT '0',
  `callback_proc_as_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `form_value_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_refinery_settings_on_name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=48 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `refinery_settings`;
INSERT INTO `refinery_settings` (`id`, `name`, `value`, `destroyable`, `created_at`, `updated_at`, `scoping`, `restricted`, `callback_proc_as_string`, `form_value_type`) VALUES
(1,	'use_marketable_urls',	'--- \"true\"\n',	1,	'2011-06-07 17:43:33',	'2011-06-07 17:43:33',	'pages',	0,	NULL,	'text_area'),
(2,	'i18n_translation_enabled',	'--- \"true\"\n',	1,	'2011-06-07 17:43:33',	'2011-06-07 17:43:33',	'refinery',	0,	NULL,	'text_area'),
(3,	'i18n_translation_default_frontend_locale',	'--- :sk\n',	1,	'2011-06-07 17:43:33',	'2011-06-11 17:09:52',	'refinery',	0,	NULL,	'text_area'),
(4,	'dragonfly_secret',	'--- e87f7850e14b2bbf186e922f981ffd137e46b1fcea78d519\n',	1,	'2011-06-07 17:45:22',	'2011-06-07 17:45:22',	NULL,	0,	NULL,	'text_area'),
(5,	'approximate_ascii',	'--- \"true\"\n',	1,	'2011-06-07 17:45:22',	'2011-06-07 17:48:27',	'pages',	0,	NULL,	'text_area'),
(6,	'strip_non_ascii',	'--- \"true\"\n',	1,	'2011-06-07 17:45:22',	'2011-06-07 17:49:42',	'pages',	0,	NULL,	'text_area'),
(7,	'i18n_translation_locales',	'--- \n:jp: !binary |\n  5pel5pys6Kqe\n\n:es: \"Espa\\xC3\\xB1ol\"\n:\"zh-TW\": Traditional Chinese\n:pl: Polski\n:\"pt-BR\": \"Portugu\\xC3\\xAAs\"\n:en: English\n:it: Italiano\n:el: !binary |\n  zpXOu867zrfOvc65zrrOrA==\n\n:nl: Nederlands\n:cs: !binary |\n  xIxlc2t5\n\n:de: Deutsch\n:fr: \"Fran\\xC3\\xA7ais\"\n:da: Dansk\n:lv: Latviski\n:rs: Srpski\n:nb: \"Norsk Bokm\\xC3\\xA5l\"\n:ru: !binary |\n  0KDRg9GB0YHQutC40Lk=\n\n:sk: \"Slovensk\\xC3\\xBD\"\n:sl: Slovenian\n:\"zh-CN\": Simplified Chinese\n:sv: Svenska\n',	1,	'2011-06-07 17:45:44',	'2011-06-07 17:45:44',	'refinery',	0,	NULL,	'text_area'),
(8,	'site_name',	'--- Progressbar.sk\n',	1,	'2011-06-07 17:45:47',	'2011-06-07 17:49:54',	NULL,	0,	NULL,	'text_area'),
(9,	'use_resource_caching',	'--- \"false\"\n',	1,	'2011-06-07 17:45:47',	'2011-06-11 16:55:23',	NULL,	0,	NULL,	'text_area'),
(10,	'use_google_ajax_libraries',	'--- \"false\"\n',	1,	'2011-06-07 17:45:47',	'2011-06-07 17:45:47',	NULL,	0,	NULL,	'text_area'),
(11,	'i18n_translation_default_locale',	'--- :en\n',	1,	'2011-06-07 17:48:03',	'2011-06-07 17:48:03',	'refinery',	0,	NULL,	'text_area'),
(12,	'i18n_translation_current_locale',	'--- :en\n',	1,	'2011-06-07 17:48:03',	'2011-06-07 17:48:03',	'refinery',	0,	NULL,	'text_area'),
(13,	'i18n_translation_frontend_locales',	'--- \n- :sk\n- :en\n',	1,	'2011-06-07 17:48:03',	'2011-06-07 17:49:25',	'refinery',	0,	NULL,	'text_area'),
(14,	'activity_show_limit',	'--- 7\n',	1,	'2011-06-07 17:48:05',	'2011-06-07 17:48:05',	NULL,	0,	NULL,	'text_area'),
(15,	'page_title',	'--- \n:page_title: \n  :class: \n  :tag: \n  :wrap_if_not_chained: false\n:chain_page_title: false\n:ancestors: \n  :class: ancestors\n  :tag: span\n  :separator: \" | \"\n',	1,	'2011-06-07 17:48:13',	'2011-06-07 17:48:13',	NULL,	0,	NULL,	'text_area'),
(16,	'authenticity_token_on_frontend',	'--- \"false\"\n',	1,	'2011-06-07 17:48:13',	'2011-06-07 17:48:40',	NULL,	0,	NULL,	'text_area'),
(17,	'frontend_refinery_stylesheets_enabled',	'--- \"false\"\n',	1,	'2011-06-07 17:48:13',	'2011-06-07 17:48:50',	NULL,	0,	NULL,	'text_area'),
(18,	'menu_hide_children',	'--- \"false\"\n',	1,	'2011-06-07 17:48:14',	'2011-06-07 17:48:14',	NULL,	0,	NULL,	'text_area'),
(19,	'analytics_page_code',	'--- UA-xxxxxx-x\n',	1,	'2011-06-07 18:27:32',	'2011-06-07 18:27:32',	NULL,	0,	NULL,	'text_area'),
(20,	'site_contact_email',	'--- info@progressbar.sk\n',	1,	'2011-06-07 18:28:18',	'2011-06-07 18:28:18',	NULL,	0,	NULL,	'text_area'),
(21,	'site_twitter',	'--- http://twitter.com/progressbarsk\n',	1,	'2011-06-07 18:28:18',	'2011-06-07 18:28:18',	NULL,	0,	NULL,	'text_area'),
(22,	'site_facebook',	'--- http://www.facebook.com/progressbarsk\n',	1,	'2011-06-07 18:28:18',	'2011-06-07 18:28:18',	NULL,	0,	NULL,	'text_area'),
(23,	'site_rss',	'--- http://feeds.feedburner.com/progressbarsk\n',	1,	'2011-06-07 18:28:18',	'2011-06-07 18:28:18',	NULL,	0,	NULL,	'text_area'),
(24,	'snippet_items_per_page',	'--- 5\n',	1,	'2011-06-07 18:41:48',	'2011-06-07 18:41:48',	NULL,	0,	NULL,	'text_area'),
(25,	'default_page_parts',	'--- \n- Body\n- Side Body\n',	1,	'2011-06-07 18:42:17',	'2011-06-07 18:42:17',	NULL,	0,	NULL,	'text_area'),
(26,	'blog_posts_per_page',	'--- 10\n',	1,	'2011-06-07 18:49:08',	'2011-06-07 18:49:08',	NULL,	0,	NULL,	'text_area'),
(27,	'cache_pages_backend',	'--- \"false\"\n',	1,	'2011-06-08 20:07:04',	'2011-06-08 20:07:04',	NULL,	0,	NULL,	'text_area'),
(28,	'new_page_parts',	'--- \"false\"\n',	1,	'2011-06-08 20:11:00',	'2011-06-08 20:11:00',	NULL,	0,	NULL,	'text_area'),
(29,	'show_contact_privacy_link',	'--- \"false\"\n',	1,	'2011-06-11 18:30:10',	'2011-06-11 18:30:10',	NULL,	0,	NULL,	'text_area'),
(30,	'superuser_can_assign_roles',	'--- \"false\"\n',	1,	'2011-06-11 18:55:41',	'2011-06-11 18:55:41',	NULL,	0,	NULL,	'text_area'),
(31,	'comments_allowed',	'--- \"true\"\n',	1,	'2011-06-11 19:36:05',	'2011-06-11 19:36:05',	'blog',	0,	NULL,	'text_area'),
(32,	'comment_moderation',	'--- \"true\"\n',	1,	'2011-06-11 19:36:06',	'2011-06-11 19:36:06',	'blog',	0,	NULL,	'text_area'),
(33,	'image_views',	'--- \n- :grid\n- :list\n',	1,	'2011-06-11 19:36:25',	'2011-06-11 19:36:25',	NULL,	0,	NULL,	'text_area'),
(34,	'preferred_image_view',	'--- :grid\n',	1,	'2011-06-11 19:36:25',	'2011-06-11 19:36:25',	NULL,	0,	NULL,	'text_area'),
(35,	'user_image_sizes',	'--- \n:small: 110x110>\n:medium: 225x255>\n:large: 450x450>\n',	0,	'2011-06-12 14:33:46',	'2011-06-12 14:33:46',	NULL,	0,	NULL,	'text_area'),
(36,	'inquiry_notification_subject',	'--- New inquiry from your website\n',	1,	'2011-06-12 17:37:29',	'2011-06-12 17:37:29',	NULL,	0,	NULL,	'text_area'),
(37,	'inquiry_notification_recipients',	'--- keraml@gmail.com\n',	1,	'2011-06-12 17:37:29',	'2011-06-12 17:37:29',	NULL,	0,	NULL,	'text_area'),
(38,	'tld_length',	'--- 1\n',	1,	'2011-06-12 17:37:29',	'2011-06-12 17:37:29',	NULL,	0,	NULL,	'text_area'),
(39,	'inquiry_confirmation_subject',	'--- Thank you for your inquiry\n',	1,	'2011-06-12 17:37:30',	'2011-06-12 17:37:30',	NULL,	0,	NULL,	'text_area'),
(40,	'inquiry_confirmation_body',	'--- |-\nThank you for your inquiry %name%,\n\nThis email is a receipt to confirm we have received your inquiry and we\'ll be in touch shortly.\n\nThanks.\n',	1,	'2011-06-12 17:37:30',	'2011-06-12 17:37:30',	NULL,	0,	NULL,	'text_area'),
(41,	'share_this_key',	'--- xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx\n',	1,	'2011-06-12 22:14:27',	'2011-06-12 22:14:27',	'blog',	0,	NULL,	'text_area'),
(42,	'blog_post_teaser_length',	'--- 250\n',	1,	'2011-06-12 22:17:46',	'2011-06-12 22:17:46',	NULL,	0,	NULL,	'text_area'),
(43,	'site_github',	'--- https://github.com/Progressbar\n',	1,	'2011-06-18 20:28:16',	'2011-06-18 20:28:16',	NULL,	0,	NULL,	'text_area'),
(44,	'site_foursquare_id',	'--- \"7713190\"\n',	1,	'2011-06-18 22:34:06',	'2011-06-18 22:34:06',	NULL,	0,	NULL,	'text_area'),
(45,	'site_webmaster_email',	'--- webmaster@progressbar.sk\n',	1,	'2011-06-18 22:34:07',	'2011-06-18 22:34:07',	NULL,	0,	NULL,	'text_area'),
(46,	'approximate_ascii',	'--- \"false\"\n',	1,	'2011-06-21 17:30:29',	'2011-06-21 17:30:29',	'blog',	0,	NULL,	'text_area'),
(47,	'strip_non_ascii',	'--- \"false\"\n',	1,	'2011-06-21 17:30:29',	'2011-06-21 17:30:29',	'blog',	0,	NULL,	'text_area');

DROP TABLE IF EXISTS `resources`;
CREATE TABLE `resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `file_mime_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_size` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `file_uid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `file_ext` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `resources`;

DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `roles`;
INSERT INTO `roles` (`id`, `title`) VALUES
(1,	'Refinery'),
(2,	'Superuser'),
(3,	'Member'),
(4,	'Associated member'),
(5,	'Active member'),
(6,	'Honorary member');

DROP TABLE IF EXISTS `roles_users`;
CREATE TABLE `roles_users` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  KEY `index_roles_users_on_role_id_and_user_id` (`role_id`,`user_id`),
  KEY `index_roles_users_on_user_id_and_role_id` (`user_id`,`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `roles_users`;
INSERT INTO `roles_users` (`user_id`, `role_id`) VALUES
(1,	1),
(1,	2),
(1,	6);

DROP TABLE IF EXISTS `schema_migrations`;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `schema_migrations`;
INSERT INTO `schema_migrations` (`version`) VALUES
('20110607174327'),
('20110607174328'),
('20110607174329'),
('20110607174330'),
('20110607174331'),
('20110607174332'),
('20110607174333'),
('20110607174334'),
('20110607174335'),
('20110607174336'),
('20110607174337'),
('20110607174338'),
('20110607174339'),
('20110607174340'),
('20110607174341'),
('20110607174342'),
('20110607174343'),
('20110607174523'),
('20110607174524'),
('20110607174525'),
('20110607174526'),
('20110607174527'),
('20110607174528'),
('20110607174530'),
('20110607174531'),
('20110607174532'),
('20110607174533'),
('20110611180445'),
('20110611180446'),
('20110611183303'),
('20110611183304'),
('20110611183305'),
('20110612105035'),
('20110612105036'),
('20110612105037');

DROP TABLE IF EXISTS `seo_meta`;
CREATE TABLE `seo_meta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seo_meta_id` int(11) DEFAULT NULL,
  `seo_meta_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `browser_title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_keywords` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_seo_meta_on_id` (`id`),
  KEY `index_seo_meta_on_seo_meta_id_and_seo_meta_type` (`seo_meta_id`,`seo_meta_type`)
) ENGINE=MyISAM AUTO_INCREMENT=45 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `seo_meta`;
INSERT INTO `seo_meta` (`id`, `seo_meta_id`, `seo_meta_type`, `browser_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1,	1,	'Page::Translation',	'',	'',	'',	'2011-06-07 17:43:34',	'2011-06-11 13:20:41'),
(2,	2,	'Page::Translation',	NULL,	NULL,	NULL,	'2011-06-07 17:43:34',	'2011-06-07 17:43:34'),
(4,	4,	'Page::Translation',	'',	'',	'',	'2011-06-07 18:42:17',	'2011-06-11 18:29:28'),
(5,	5,	'Page::Translation',	'',	'',	'',	'2011-06-07 18:42:17',	'2011-06-08 20:18:49'),
(6,	6,	'Page::Translation',	'',	'',	'',	'2011-06-07 18:42:18',	'2011-06-08 20:32:19'),
(7,	7,	'Page::Translation',	NULL,	NULL,	NULL,	'2011-06-07 18:42:18',	'2011-06-07 18:42:18'),
(8,	8,	'Page::Translation',	'',	'',	'',	'2011-06-08 20:11:16',	'2011-06-08 20:11:16'),
(9,	9,	'Page::Translation',	'',	'',	'',	'2011-06-08 20:11:40',	'2011-06-08 20:11:40'),
(10,	10,	'Page::Translation',	'',	'',	'',	'2011-06-08 20:12:29',	'2011-06-08 20:12:29'),
(13,	13,	'Page::Translation',	'',	'',	'',	'2011-06-08 20:23:40',	'2011-06-08 20:23:40'),
(15,	15,	'Page::Translation',	'Stanovy občianskeho združenia Progressbar',	'',	'',	'2011-06-08 20:32:42',	'2011-06-11 17:54:00'),
(16,	16,	'Page::Translation',	'',	'',	'',	'2011-06-08 20:33:00',	'2011-06-08 20:33:00'),
(17,	17,	'Page::Translation',	'',	'',	'',	'2011-06-08 20:33:16',	'2011-06-08 20:33:16'),
(19,	19,	'Page::Translation',	'',	'',	'',	'2011-06-11 18:18:41',	'2011-06-11 18:29:56'),
(20,	20,	'Page::Translation',	NULL,	NULL,	NULL,	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(21,	21,	'Page::Translation',	'',	'',	'',	'2011-06-11 18:18:41',	'2011-06-12 17:40:38'),
(22,	22,	'Page::Translation',	'',	'',	'',	'2011-06-11 18:18:41',	'2011-06-12 17:43:05'),
(23,	23,	'Page::Translation',	NULL,	NULL,	NULL,	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(24,	24,	'Page::Translation',	NULL,	NULL,	NULL,	'2011-06-11 18:18:41',	'2011-06-11 18:18:41'),
(25,	25,	'Page::Translation',	'',	'',	'',	'2011-06-11 18:33:13',	'2011-06-11 18:34:37'),
(26,	26,	'Page::Translation',	'',	'',	'',	'2011-06-11 18:33:13',	'2011-06-11 18:34:26'),
(27,	27,	'Page::Translation',	'',	'',	'',	'2011-06-11 18:41:45',	'2011-06-11 18:41:45'),
(28,	28,	'Page::Translation',	'',	'',	'',	'2011-06-12 14:43:12',	'2011-06-12 14:43:12'),
(29,	29,	'Page::Translation',	'',	'',	'',	'2011-06-12 14:43:43',	'2011-06-12 14:43:43'),
(30,	30,	'Page::Translation',	'',	'',	'',	'2011-06-12 14:57:28',	'2011-06-12 14:57:28'),
(31,	31,	'Page::Translation',	'',	'',	'',	'2011-06-12 15:03:02',	'2011-06-12 15:03:02'),
(32,	32,	'Page::Translation',	'',	'',	'',	'2011-06-12 15:27:47',	'2011-06-12 15:27:47'),
(33,	33,	'Page::Translation',	'',	'',	'',	'2011-06-12 16:36:43',	'2011-06-12 16:36:43'),
(34,	34,	'Page::Translation',	'',	'',	'',	'2011-06-12 16:37:13',	'2011-06-12 16:37:13'),
(35,	35,	'Page::Translation',	'',	'',	'',	'2011-06-12 17:40:14',	'2011-06-12 17:40:14'),
(36,	1,	'BlogPost',	'',	'',	'',	'2011-06-12 21:35:51',	'2011-06-12 21:35:51'),
(37,	2,	'BlogPost',	'',	'',	'',	'2011-06-12 21:36:46',	'2011-06-12 21:36:46'),
(38,	3,	'BlogPost',	'',	'',	'',	'2011-06-12 21:37:32',	'2011-06-12 21:37:32'),
(39,	36,	'Page::Translation',	'',	'',	'',	'2011-06-12 22:59:48',	'2011-06-12 22:59:48'),
(40,	37,	'Page::Translation',	'',	'',	'',	'2011-06-15 20:45:06',	'2011-06-15 20:45:06'),
(41,	38,	'Page::Translation',	'',	'',	'',	'2011-06-15 21:05:14',	'2011-06-15 21:05:14'),
(42,	39,	'Page::Translation',	'',	'',	'',	'2011-06-15 21:06:33',	'2011-06-15 21:06:33'),
(43,	40,	'Page::Translation',	'',	'',	'',	'2011-06-15 21:11:41',	'2011-06-15 21:11:41'),
(44,	41,	'Page::Translation',	'',	'',	'',	'2011-06-21 17:48:47',	'2011-06-21 17:48:47');

DROP TABLE IF EXISTS `slugs`;
CREATE TABLE `slugs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sluggable_id` int(11) DEFAULT NULL,
  `sequence` int(11) NOT NULL DEFAULT '1',
  `sluggable_type` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `scope` varchar(40) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_slugs_on_locale` (`locale`),
  KEY `index_slugs_on_sluggable_id` (`sluggable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `slugs`;
INSERT INTO `slugs` (`id`, `name`, `sluggable_id`, `sequence`, `sluggable_type`, `scope`, `created_at`, `locale`) VALUES
(1,	'home',	1,	1,	'Page',	NULL,	'2011-06-07 17:43:33',	'en'),
(6,	'news-page',	4,	1,	'Page',	NULL,	'2011-06-07 18:42:17',	'en'),
(7,	'blog-page',	5,	1,	'Page',	NULL,	'2011-06-07 18:42:18',	'en'),
(8,	'keram',	1,	1,	'User',	NULL,	'2011-06-08 20:06:59',	'en'),
(9,	'statute',	6,	1,	'Page',	NULL,	'2011-06-08 20:11:16',	'en'),
(10,	'sponsors',	7,	1,	'Page',	NULL,	'2011-06-08 20:11:40',	'en'),
(15,	'uvod',	1,	1,	'Page',	NULL,	'2011-06-08 20:23:40',	'sk'),
(17,	'blog',	5,	1,	'Page',	NULL,	'2011-06-08 20:32:19',	'sk'),
(18,	'stanovy',	6,	1,	'Page',	NULL,	'2011-06-08 20:32:42',	'sk'),
(19,	'sponzory',	7,	1,	'Page',	NULL,	'2011-06-08 20:33:00',	'sk'),
(22,	'sponzori',	7,	1,	'Page',	NULL,	'2011-06-11 17:09:33',	'sk'),
(23,	'wiki',	8,	1,	'Page',	NULL,	'2011-06-11 18:01:04',	'en'),
(26,	'privacy-policy',	13,	1,	'Page',	NULL,	'2011-06-11 18:18:41',	'en'),
(27,	'novinky',	4,	1,	'Page',	NULL,	'2011-06-11 18:29:28',	'sk'),
(28,	'kontakt',	11,	1,	'Page',	NULL,	'2011-06-11 18:29:55',	'sk'),
(30,	'calendar',	14,	1,	'Page',	NULL,	'2011-06-11 18:34:26',	'en'),
(31,	'kalendar',	14,	1,	'Page',	NULL,	'2011-06-11 18:34:37',	'sk'),
(32,	'pridaj-sa',	15,	1,	'Page',	NULL,	'2011-06-11 18:41:45',	'sk'),
(35,	'podporte-nas',	16,	1,	'Page',	NULL,	'2011-06-12 14:43:12',	'sk'),
(36,	'support-us',	16,	1,	'Page',	NULL,	'2011-06-12 14:43:43',	'en'),
(37,	'pre-clenov',	17,	1,	'Page',	NULL,	'2011-06-12 14:57:28',	'sk'),
(38,	'for-members',	17,	1,	'Page',	NULL,	'2011-06-12 15:03:02',	'en'),
(39,	'join-us',	15,	1,	'Page',	NULL,	'2011-06-12 15:27:47',	'en'),
(42,	'tiraz',	18,	1,	'Page',	NULL,	'2011-06-12 16:43:37',	'sk'),
(43,	'stranka-nenajdena',	2,	1,	'Page',	NULL,	'2011-06-12 17:40:14',	'sk'),
(44,	'dakujeme',	12,	1,	'Page',	NULL,	'2011-06-12 17:40:38',	'sk'),
(45,	'thank-you',	12,	1,	'Page',	NULL,	'2011-06-12 17:43:05',	'en'),
(46,	'martin-rublík-kryptografické-kľúče-ich-distribúcia-a-dôveryhodnosť',	1,	1,	'BlogPost',	NULL,	'2011-06-12 21:35:51',	'sk'),
(47,	'habitat-live-zvukové-vysielanie-progressbar-online',	2,	1,	'BlogPost',	NULL,	'2011-06-12 21:36:46',	'sk'),
(48,	'voltage-control-analogovy-audiovizualny-syntetizator-workshop',	3,	1,	'BlogPost',	NULL,	'2011-06-12 21:37:32',	'sk'),
(51,	'mailing-list',	19,	1,	'Page',	NULL,	'2011-06-12 22:59:48',	'sk'),
(54,	'oficiality',	20,	1,	'Page',	NULL,	'2011-06-15 20:45:06',	'sk'),
(55,	'projekty',	21,	1,	'Page',	NULL,	'2011-06-15 21:05:14',	'sk'),
(56,	'pre-media',	22,	1,	'Page',	NULL,	'2011-06-15 21:06:33',	'sk'),
(57,	'organy-zdruzenia',	23,	1,	'Page',	NULL,	'2011-06-15 21:11:41',	'sk'),
(58,	'lorem',	1,	1,	'Event',	NULL,	'2011-06-15 21:20:58',	'sk'),
(59,	'kljlkjlj',	2,	1,	'Event',	NULL,	'2011-06-15 21:25:23',	'sk'),
(60,	'schôdzka',	1,	1,	'EventCategory',	NULL,	'2011-06-17 22:09:56',	'sk'),
(62,	'party',	3,	1,	'EventCategory',	NULL,	'2011-06-17 22:10:43',	'sk'),
(64,	'new-web-party',	3,	1,	'Event',	NULL,	'2011-06-17 22:12:05',	'sk'),
(67,	'párty',	3,	1,	'EventCategory',	NULL,	'2011-06-19 23:45:21',	'sk'),
(68,	'schôdza',	1,	1,	'EventCategory',	NULL,	'2011-06-19 23:45:36',	'sk'),
(69,	'prednáška',	5,	1,	'EventCategory',	NULL,	'2011-06-19 23:46:06',	'sk'),
(70,	'workshop',	6,	1,	'EventCategory',	NULL,	'2011-06-19 23:46:24',	'sk'),
(71,	'pre-členov',	7,	1,	'EventCategory',	NULL,	'2011-06-19 23:46:52',	'sk'),
(75,	'progressbarsk',	1,	1,	'User',	NULL,	'2011-06-25 13:23:58',	'en'),
(73,	'len-pre-členov',	7,	1,	'EventCategory',	NULL,	'2011-06-20 21:30:17',	'sk'),
(74,	'projects',	21,	1,	'Page',	NULL,	'2011-06-21 17:48:47',	'en');

DROP TABLE IF EXISTS `snippet_page`;
CREATE TABLE `snippet_page` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snippet_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL,
  `position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `index_snippet_page_on_page_id` (`page_id`),
  KEY `index_snippet_page_on_snippet_id` (`snippet_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `snippet_page`;

DROP TABLE IF EXISTS `snippet_translations`;
CREATE TABLE `snippet_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `snippet_id` int(11) DEFAULT NULL,
  `locale` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_snippet_translations_on_snippet_id` (`snippet_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `snippet_translations`;

DROP TABLE IF EXISTS `snippets`;
CREATE TABLE `snippets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(36) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `position` int(11) NOT NULL DEFAULT '0',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `snippets`;

DROP TABLE IF EXISTS `taggings`;
CREATE TABLE `taggings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_id` int(11) DEFAULT NULL,
  `taggable_id` int(11) DEFAULT NULL,
  `taggable_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tagger_id` int(11) DEFAULT NULL,
  `tagger_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `context` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_taggings_on_tag_id` (`tag_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `taggings`;

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `tags`;

DROP TABLE IF EXISTS `user_plugins`;
CREATE TABLE `user_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_unique_user_plugins` (`user_id`,`name`),
  KEY `index_user_plugins_on_title` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `user_plugins`;
INSERT INTO `user_plugins` (`id`, `user_id`, `name`, `position`) VALUES
(108,	1,	'refinerycms_blog',	0),
(109,	1,	'refinery_dashboard',	1),
(110,	1,	'calendar',	2),
(111,	1,	'refinery_files',	3),
(112,	1,	'refinery_images',	4),
(113,	1,	'refinery_inquiries',	5),
(114,	1,	'refinerycms_news',	6),
(115,	1,	'refinery_pages',	7),
(116,	1,	'refinery_settings',	8),
(117,	1,	'snippets',	9),
(118,	1,	'refinery_users',	10),
(119,	1,	'refinerycms_base',	11),
(120,	1,	'refinery_core',	12),
(121,	1,	'refinery_dialogs',	13),
(122,	1,	'refinery_i18n',	14),
(123,	1,	'refinery_generators',	15),
(124,	1,	'members',	16);

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `encrypted_password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_sign_in_at` datetime DEFAULT NULL,
  `last_sign_in_at` datetime DEFAULT NULL,
  `current_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_sign_in_ip` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sign_in_count` int(11) DEFAULT NULL,
  `remember_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `index_users_on_id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

TRUNCATE `users`;
INSERT INTO `users` (`id`, `username`, `email`, `encrypted_password`, `persistence_token`, `created_at`, `updated_at`, `perishable_token`, `current_sign_in_at`, `last_sign_in_at`, `current_sign_in_ip`, `last_sign_in_ip`, `sign_in_count`, `remember_token`, `reset_password_token`, `remember_created_at`) VALUES
(1,	'adminko',	'nieco@niekde.sk',	'$2a$10$SIhrPN1iuz4GQ8VEQpKKIuJOUpNQ18Q8JDDN0lKU8WbArG8endsEy',	NULL,	'2011-06-07 17:48:02',	'2011-06-25 13:23:57',	NULL,	'2011-06-25 13:23:57',	'2011-06-22 17:29:02',	'127.0.0.1',	'127.0.0.1',	16,	'l76VtYwvVmvp85plAixY',	NULL,	'2011-06-19 23:13:57');

-- 2011-06-25 15:41:39
