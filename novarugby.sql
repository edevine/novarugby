-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 07, 2014 at 02:22 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `novarugby`
--
CREATE DATABASE IF NOT EXISTS `novarugby` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `novarugby`;

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `external` tinyint(1) NOT NULL DEFAULT '0',
  `category` varchar(100) NOT NULL,
  `url` varchar(255) NOT NULL,
  `imgurl` varchar(255) NOT NULL,
  `pubdate` date NOT NULL,
  `title` varchar(255) NOT NULL,
  `synopsis` varchar(200) NOT NULL,
  `body` text NOT NULL,
  `lastmodified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `external`, `category`, `url`, `imgurl`, `pubdate`, `title`, `synopsis`, `body`, `lastmodified`) VALUES
(1, 0, 'Practice Update', 'news/2014-01-25/first-spring-practice', 'img/photo/nova.jpg', '2014-01-25', 'First Spring Practice', 'NOVA Men''s Rugby will be holding its first Spring Practice on 11 February 2014 at 8:30PM at Oakton High School.', '<p> NOVA Men''s Rugby will be holding its first Spring Practice on 11 February 2014 at 8:30PM at Oakton High School (see below details).  If you haven''t started pre-season conditioning, now is the time to get going so that we can hot the ground running and prepare for our upcoming matches.\r\n\r\n<p> Who:  All NOVA Players and Coaches\r\n<br> What: First Spring Practice\r\n<br> Where: <a href="https://www.google.com/maps/preview/place/Oakton+High+School/@38.8784621,-77.2816203,17z/data=!4m2!3m1!1s0x0:0xadbf7ab1176ff030">Oakton High School, Vienna, VA</a>\r\n<br> When:  Tuesday, 11 February 2014 @ 8:30PM\r\n\r\n<p> GO NOVA!', '2014-02-06 14:38:37'),
(2, 0, 'Match Report', 'news/2013-07-20/nova-heading-to-nationals', 'img/photo/nova.jpg', '2013-07-20', 'NOVA heading to Nationals', 'NOVA qualified for a trip to the Nationals Aug 10, by defeating Norfolk 33-5 in the semi-finals.', '<p> The report from Norfolk and the MARFU 7s championships is a great one.\r\nNOVA qualified for a trip to the Nationals Aug 10, by defeating Norfolk 33-5 in the semi-finals.\r\n<p> Unfortunately, we lost 19-5 to Schuylkill River in the finals, but that was with a yellow and a red card against us for much of the game.\r\n<p> A big thanks to all the guys who went down today, including our 7 brave lads from the Open side who competed without substitutions and still kept fighting.\r\n<p> We will need that kind of effort as we prepare for Nationals in Pittsburgh the weekend of Aug. 10.\r\n<p> Congrats and thanks for doing the club proud\r\n<p> - Weasel\r\n', '2014-02-06 14:37:53'),
(3, 0, 'Match Report', 'news/2013-06-05/nova-old-grays-win', 'img/photo/Old_Gray_vs_Roosters_Spring_2013.jpg', '2013-06-05', 'NOVA Old Grays Win', 'NOVA Old Boys trounce Roosters 34-10.', '<p>Several current NOVA players travelled out to "The Farm" to watch the Old Boys take on the Roosters.</p>\r\n<p>"The Farm" offered a family atmosphere that welcomed significant others and kids.  They also provided free beer and food for the degenerates this club willingly accepts.  This was a great opportunity to watch some good rugby and socialize with our Fore Fathers.</p>\r\n<p>The Old Boys dominated from the get go and Phantom scored an early try, the first of his hat trick.  The Forwards dominated the game and had 2 push over tries from 5 meter scrums.</p>\r\n<p>Some of our current players and coaches participated in the game and was fun to watch them get worked (Joey Chops Koko Quick Tap Too Tuff, Floody, and Prince). Weasel and BG were also there in support but everyone avoided them.</p>\r\n<br></br>\r\n<p>Here is the writeup from our Old Boy contingent:</p>\r\n<p>"Thanks to all the players, families, friends, NOVA players, NOVA alum, who came out to the match yesterday! You all make a bunch of old guys feel young again and are helping to grow the Old Gray both on the pitch and off.</p>\r\n<p>The interest in the club and growth this spring has been fantastic! Each match brings out a few more guys to shake off the rust and a few more alum to laugh at how the mighty have fallen. It is becoming a pleasure to schedule these events as we no longer have to hold our breath in hopes of having enough players show up.</p>\r\n<p>Our play on the field has been strong and determined. Our forwards often run like our oppositions backs and our backs tackle and ruck with reckless abandon. The play is selfless and the ball moves quickly during all phases of play. My lack of rugby knowledge and english skills have brought me to the end of my pontificating."</p>\r\n<br></br>\r\n<p>Thanks to all that came out, I hope that we can continue to support our Old Boys and enjoy great days like this.</p>\r\n', '2014-02-06 15:05:27'),
(4, 0, 'Social Event', 'news/2013-05-30/watch-usa-v-ire-on-08-june-2013-730pm', 'img/photo/nova.jpg', '2013-05-30', 'Watch USA v IRE on 08 June 2013 @ 7:30PM', 'We will be watching the USA v IRE test match at O''Sullivans bar and use that opportunity to promote the club and recruit new talent.', '<p>\r\nNOVA,\r\n</p>\r\n<p>\r\nIn response to the need to increase recruiting efforts, we have decided to hold a recruiting event in Virginia as a way to attract new players and talent to the team.  We will be watching the USA v IRE test match at O''Sullivans bar and use that opportunity to promote the club and recruit new talent.  Also, in order to boost the reach of this event, if you have a Facebook account, please go to this EVENT and "join" it  (<a href="https://www.facebook.com/events/105276996349116/">https://www.facebook.com/events/105276996349116/</a>).\r\n</p>\r\n<p>\r\n<b>Details:</b><br>\r\n \r\n<b>Date:</b> 08 June 2013<br>\r\n<b>Time:</b> 5:00-9:00PM<br>\r\n<b>Location:</b> O''Sullivan''s Irish pub and Restaurant, 3207 Washington Blvd, Arlington, VA<br>\r\n<b>Who:</b> All NOVA Players, Old Boys, friends, and family<br>\r\n<b>What:</b> Watch USA v IRE test match and promote NOVA Rugby<br>\r\n<b>Attire:</b> New NOVA shirts preferred, but any NOVA item of clothing will do\r\n</p>\r\n<p>\r\nI know that this coincides with the Wilmington 7s tournament that day, but it was an opportunity we could not pass up.  Therefore, if you are ARE going to the tournament, please come by when you get back.  If you are NOT going to the tournament, this is as close to a required event as it gets as we need people to come in force.  Please make it a point to come and support the team and any potential players!\r\n</p>\r\n<p>\r\nIf you have any questions/concerns, please let me know.\r\n</p>\r\n<p>\r\nThanks,<br>\r\nJustin Smith<br>\r\nVice President<br>\r\n</p>', '2014-02-07 15:03:24'),
(5, 0, 'Schedule', 'news/2014-05-06/summer-nova-7s-program', 'img/photo/nova.jpg', '2014-05-06', 'Summer NOVA 7s Program', 'NOVA''s summer 7s program is about to kick off and we wanted to make sure that everyone had the details.', '<p>\r\nNOVA''s summer 7s program is about to kick off and we wanted to make sure that everyone had the details.  NOVA had a great run last year, making it to the National Championship Tournament, but we would like to go above and beyond what we achieved last year.\r\n</p>\r\n<p>\r\nNOVA 7s is open to anyone over 18 years old, and we welcome new and experienced players.  If you have a friend who has been talking about trying this rugby thing out, sevens is a great way to introduce them to the sport.  Depending on our numbers we will be fielding a Premier and Social team at each of our events, so even if you are not an elite 7s player, there is still a lot of fun and playing to be had.\r\n</p>\r\n<p>\r\nBelow is the relevant information, and if you have any additional questions, contact the the match secretary.\r\n</p>\r\n<p>\r\n<b>Season Starts:</b><br>\r\nDate: 13 May 2014<br>\r\nTime: 8:30 PM<br>\r\nLocation: Oakton High School (<a href="https://www.google.com/maps/preview?ie=UTF-8&q=oakton+high+school&fb=1&gl=us&hq=oakton+high+school&cid=12519860390134280240&ei=V1RgU9qGJ9TKsQSPoIDIBg&ved=0CJwBEPwSMA0">MAP</a>)<br>\r\n</p>\r\n<p>\r\n<b>Practice:</b><br>\r\nDate: Tuesdays and Thursdays <br>\r\nTime: 8:30-10:30 PM<br>\r\nLocation: Oakton High School<br>\r\n</p>\r\n<p>\r\nMay 31 - Monk Vaughn, Richmond (Friendly)<br>\r\nJune 14 - Ruggerama/NOVA  (MAC Qualifier)<br>\r\nJune 28 - Wilmington (MAC Qualifier)<br>\r\nJuly 5 - Cape Fear (Friendly)<br>\r\nJuly 12 - Rocky George (MAC Qualifier)<br>\r\nJuly 26 - MAC/MARFU Championship<br>\r\nAugust 9-10 - USA Club 7s National Championship\r\n</p>', '2014-02-07 15:03:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE IF NOT EXISTS `contacts` (
  `id` tinyint(11) unsigned NOT NULL AUTO_INCREMENT,
  `main` tinyint(1) NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` bigint(10) unsigned DEFAULT NULL,
  `order` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `main`, `name`, `title`, `email`, `phone`, `order`) VALUES
(1, 0, 'Clarence Williams', 'President', 'cfwilliams10@hotmail.com', 2023656991, 2),
(2, 1, 'Adam Henderson', 'Match Secretary', 'henderab@gmail.com', 5713346975, 4),
(3, 0, 'John Gluck', 'Club Treasurer', 'jgluck8513@aol.com', NULL, 7),
(4, 1, 'Ethan Harris', 'Recruiting', 'newnovarecruit@gmail.com', NULL, 5),
(5, 0, 'Ted Brisbin', 'Team Treasurer', 'pmirabella@yahoo.com', 5166591429, 6),
(6, 0, 'Charlie Kaiman', 'Old Boys'' Liaison', 'c_kaiman@hotmail.com', NULL, 9),
(7, 0, 'Eric Devine', 'Webmaster', 'devineej@gmail.com', NULL, 10),
(8, 1, 'Mike Sohdi', 'Head Coach', 'westendco1@aol.com', NULL, 1),
(9, 1, 'Justin Smith', 'Vice President', 'justinosmith12@gmail.com', 7038811572, 3),
(10, 0, 'Christian Lewis', 'Fundraising', 'cclewis18@comcast.com', 2155271313, 7),
(11, 0, 'Andrew Golkin', 'Fields', 'angolkin@pdrvirginia.com', 7036229883, 8);

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `_id` binary(8) NOT NULL,
  `_rev` binary(8) NOT NULL,
  `_mod` bigint(20) unsigned NOT NULL,
  `_del` bit(1) NOT NULL DEFAULT b'0',
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_rev` (`_rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `games`
--

CREATE TABLE IF NOT EXISTS `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `season` smallint(4) NOT NULL DEFAULT '2013',
  `date` date DEFAULT '2013-05-11',
  `time` time DEFAULT NULL,
  `away` tinyint(1) NOT NULL,
  `opponent` varchar(255) NOT NULL,
  `oppScore` tinyint(3) unsigned DEFAULT NULL,
  `oppLogo` varchar(255) DEFAULT NULL,
  `novaScore` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT AUTO_INCREMENT=5098 ;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `season`, `date`, `time`, `away`, `opponent`, `oppScore`, `oppLogo`, `novaScore`) VALUES
(2, 2009, '2008-09-13', NULL, 1, 'Schuylkill River', 26, NULL, 38),
(7, 2009, '2008-09-20', NULL, 1, 'Raleigh', 22, NULL, 0),
(13, 2009, '2008-10-04', '13:00:00', 0, 'Baltimore-Chesapeake', 20, NULL, 29),
(18, 2009, '2008-10-18', NULL, 0, 'Media', 14, NULL, 12),
(24, 2009, '2008-10-25', NULL, 1, 'Pittsburgh Harlequins', 0, NULL, 40),
(26, 2009, '2008-11-01', NULL, 1, 'Maryland Exiles', 20, NULL, 25),
(34, 2009, '2009-04-04', NULL, 0, 'Norfolk Blues', 0, NULL, 22),
(36, 2009, '2008-11-15', NULL, 0, 'Washington', 5, NULL, 69),
(374, 2009, '2009-03-21', NULL, 0, 'White Plains', 10, NULL, 25),
(375, 2009, '2009-03-28', NULL, 1, ' Lancaster', 30, NULL, 12),
(376, 2009, '2009-04-18', NULL, 0, 'Raleigh', 24, NULL, 36),
(377, 2009, '2009-05-02', NULL, 1, ' Brandywine', 56, NULL, 5),
(378, 2009, '2009-05-09', NULL, 1, 'Maryland Exiles', 29, NULL, 26),
(1113, 2009, '2009-04-25', '01:00:00', 0, 'New Haven', 20, NULL, 18),
(1176, 2010, '2009-09-19', NULL, 1, 'Charlotte', 5, NULL, 5),
(1182, 2010, '2009-09-26', NULL, 1, 'Media', 37, NULL, 15),
(1186, 2010, '2009-10-03', NULL, 1, 'Baltimore-Chesapeake', 9, NULL, 54),
(1193, 2010, '2009-10-17', NULL, 0, 'Raleigh', 14, NULL, 50),
(1200, 2010, '2009-10-24', NULL, 0, 'Schuylkill River', 10, NULL, 63),
(1203, 2010, '2009-10-31', NULL, 1, 'Washington', 7, NULL, 71),
(1207, 2010, '2009-11-07', NULL, 0, 'Pittsburgh Harlequins', 5, NULL, 57),
(1211, 2010, '2009-11-14', NULL, 0, 'Maryland Exiles', 10, NULL, 14),
(1213, 2010, '2009-11-21', NULL, 1, 'Norfolk Blues', 25, NULL, 25),
(1350, 2010, '2009-08-22', NULL, 0, 'Frederick', 7, NULL, 41),
(2006, 2010, '2010-04-10', NULL, 0, 'Brandywine', 14, NULL, 35),
(2007, 2010, '2010-05-01', NULL, 0, 'New Haven', 24, NULL, 17),
(2013, 2010, '2010-03-27', NULL, 1, 'Maryland Exiles', 12, NULL, 17),
(2014, 2010, '2010-04-17', NULL, 1, 'PAC', 19, NULL, 24),
(2093, 2010, '2010-03-13', NULL, 1, 'Raleigh', 26, NULL, 31),
(2508, 2010, '2010-03-20', NULL, 1, 'Washington', 24, NULL, 45),
(2665, 2011, '2010-08-28', '13:30:00', 1, 'Raleigh', 35, NULL, 32),
(2670, 2011, '2010-09-11', '13:00:00', 0, 'Charlotte', 12, NULL, 43),
(2675, 2011, '2010-09-18', '13:00:00', 1, 'Maryland Exiles', 43, NULL, 24),
(2679, 2011, '2010-09-25', '13:00:00', 1, 'Schuylkill River', 17, NULL, 53),
(2689, 2011, '2010-10-09', '13:00:00', 0, 'Baltimore-Chesapeake', 15, NULL, 36),
(2694, 2011, '2010-10-16', '17:00:00', 1, 'Pittsburgh Harlequins', 22, NULL, 24),
(2699, 2011, '2010-10-23', '13:00:00', 1, 'PAC', 48, NULL, 24),
(2703, 2011, '2010-10-30', NULL, 0, 'Washington', 22, NULL, 33),
(2717, 2011, '2010-11-20', NULL, 0, 'Media', 22, NULL, 33),
(3091, 2011, '2011-04-09', NULL, 0, 'Norfolk Blues', 38, NULL, 12),
(3096, 2011, '2011-04-02', NULL, 0, 'Raleigh', 31, NULL, 22),
(3336, 2011, '2011-03-19', NULL, 0, 'Rocky Gorge', 13, NULL, 22),
(3337, 2011, '2011-03-26', NULL, 0, 'PAC', 39, NULL, 22),
(3338, 2011, '2011-04-16', NULL, 1, 'Brandywine', 17, NULL, 5),
(3339, 2011, '2011-04-30', NULL, 1, 'Mystic River', 27, NULL, 17),
(3352, 2011, '2011-03-05', NULL, 1, 'Washington Irish', 26, NULL, 49),
(3753, 2012, '2011-09-10', NULL, 1, 'Norfolk Blues', 59, NULL, 7),
(3760, 2012, '2011-09-17', NULL, 0, 'Pittsburgh Harlequins', 30, NULL, 23),
(3763, 2012, '2011-09-24', NULL, 1, 'Washington', 10, NULL, 13),
(3767, 2012, '2011-10-01', NULL, 0, 'PAC', 15, NULL, 0),
(3774, 2012, '2011-10-15', NULL, 0, 'Maryland Exiles', 5, NULL, 8),
(3780, 2012, '2011-10-22', NULL, 0, 'Raleigh', 21, NULL, 29),
(3787, 2012, '2011-11-05', NULL, 1, 'Media', 34, NULL, 23),
(3797, 2012, '2011-11-19', NULL, 1, 'Baltimore-Chesapeake', 19, NULL, 28),
(4168, 2012, '2012-03-31', NULL, 0, 'Schuylkill River', 34, NULL, 10),
(4240, 2012, '2012-03-24', NULL, 1, 'Raleigh', 14, NULL, 33),
(4242, 2012, '2012-04-21', NULL, 1, 'Maryland Exiles', 26, NULL, 3),
(4245, 2012, '2012-04-28', NULL, 0, 'Washington', 3, NULL, 40),
(4345, 2012, '2012-03-10', NULL, 1, 'Washington Irish', 13, NULL, 20),
(4640, 2013, '2012-09-08', NULL, 0, 'Norfolk Blues', 28, NULL, 34),
(4641, 2013, '2012-09-15', NULL, 1, 'Pittsburgh Harlequins', 50, NULL, 17),
(4642, 2013, '2012-09-22', NULL, 0, 'Baltimore-Chesapeake', 24, NULL, 36),
(4643, 2013, '2012-09-29', NULL, 1, 'PAC', 26, NULL, 26),
(4644, 2013, '2012-10-06', NULL, 0, 'Washington', 19, NULL, 48),
(4645, 2013, '2012-10-13', NULL, 1, 'Maryland Exiles', 17, NULL, 10),
(4646, 2013, '2012-10-20', NULL, 1, 'Raleigh', 41, NULL, 3),
(4647, 2013, '2012-10-27', NULL, 1, 'Schuylkill River', 29, NULL, 10),
(4648, 2013, '2012-11-03', NULL, 0, 'Media', 48, NULL, 24),
(4687, 2013, '2012-08-25', NULL, 0, 'Washington Irish', 14, NULL, 28),
(4934, 2013, '2013-03-09', NULL, 1, 'Washington Irish', 24, NULL, 17),
(4935, 2013, '2013-03-16', NULL, 0, 'Pitt City', 44, NULL, 28),
(4936, 2013, '2013-03-23', NULL, 1, 'Rocky Gorge', 17, NULL, 0),
(4937, 2013, '2013-04-06', NULL, 0, 'Maryland Exiles', 33, NULL, 19),
(4938, 2013, '2013-04-13', NULL, 1, 'Wilmington', 0, NULL, 0),
(4939, 2013, '2013-04-20', NULL, 0, 'PAC', 43, NULL, 29),
(4940, 2013, '2013-04-27', NULL, 1, 'Washington', 7, NULL, 22),
(4948, 2013, '2013-03-05', NULL, 0, 'Bowling Green', 20, NULL, 21),
(4983, 2013, '2013-06-08', NULL, 1, 'Wilmington 7s Tournament', 0, NULL, 0),
(4984, 2013, '2013-06-15', NULL, 1, 'Washington 7s Tournament', 0, NULL, 0),
(4985, 2013, '2013-07-06', NULL, 1, 'Cape Fear 7s Tournament', 0, NULL, 0),
(4986, 2013, '2013-07-13', NULL, 1, 'Richmond 7s Tournament', 0, NULL, 0),
(4987, 2013, '2013-07-20', NULL, 1, 'MARFU Championship - Norfolk', 0, NULL, 0),
(5027, 2014, '2013-09-07', NULL, 1, 'PAC', 28, 'img/logo/tm/pac.png', 16),
(5030, 2014, '2013-09-14', NULL, 0, 'Schuylkill River', 53, 'img/logo/tm/schuylkill.png', 19),
(5035, 2014, '2013-09-21', NULL, 1, 'Raleigh', NULL, 'img/logo/tm/raleigh.png', NULL),
(5039, 2014, '2013-09-28', NULL, 0, 'Pittsburgh Harlequins', NULL, 'img/logo/tm/pittsburgh.png', NULL),
(5041, 2014, '2013-10-05', NULL, 0, 'Norfolk Blues', NULL, 'img/logo/tm/norfolk.png', NULL),
(5044, 2014, '2013-10-12', NULL, 0, 'Maryland Exiles', NULL, 'img/logo/tm/mdx.png', NULL),
(5047, 2014, '2013-10-19', NULL, 1, 'Baltimore-Chesapeake', NULL, 'img/logo/tm/baltimore.png', NULL),
(5054, 2014, '2013-10-26', NULL, 0, 'PAC', NULL, 'img/logo/tm/pac.png', NULL),
(5058, 2014, '2013-11-02', NULL, 1, 'Schuylkill River', NULL, 'img/logo/tm/schuylkill.png', NULL),
(5061, 2014, '2013-11-09', NULL, 0, 'Raleigh', NULL, 'img/logo/tm/raleigh.png', NULL),
(5065, 2014, '2013-11-16', NULL, 1, 'Pittsburgh Harlequins', NULL, 'img/logo/tm/pittsburgh.png', NULL),
(5067, 2014, '2014-03-08', NULL, 1, 'Norfolk Blues', NULL, 'img/logo/tm/norfolk.png', NULL),
(5071, 2014, '2014-03-15', NULL, 1, 'Maryland Exiles', NULL, 'img/logo/tm/mdx.png', NULL),
(5074, 2014, '2014-03-22', NULL, 0, 'Baltimore-Chesapeake', NULL, 'img/logo/tm/baltimore.png', NULL),
(5096, 2014, '2014-04-05', NULL, 0, 'Maryland Exiles', NULL, 'img/logo/tm/mdx.png', NULL),
(5097, 2014, '2014-02-27', '13:00:00', 0, 'Western Suburbs', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `photos`
--

CREATE TABLE IF NOT EXISTS `photos` (
  `_id` binary(8) NOT NULL,
  `_rev` binary(8) NOT NULL,
  `_mod` bigint(20) NOT NULL,
  `_del` bit(1) NOT NULL DEFAULT b'0',
  `caption` varchar(255) NOT NULL,
  `citeName` varchar(255) NOT NULL,
  `citeUrl` varchar(255) NOT NULL,
  `width` smallint(5) unsigned NOT NULL,
  `height` smallint(5) unsigned NOT NULL,
  PRIMARY KEY (`_id`),
  UNIQUE KEY `_rev` (`_rev`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `roster`
--

CREATE TABLE IF NOT EXISTS `roster` (
  `ref` int(11) NOT NULL AUTO_INCREMENT,
  `teamid` varchar(32) NOT NULL DEFAULT 'md1-nova',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `position` varchar(100) NOT NULL,
  `height` tinyint(4) DEFAULT NULL,
  `weight` smallint(6) DEFAULT NULL,
  `school` varchar(255) NOT NULL,
  PRIMARY KEY (`ref`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=48 ;

--
-- Dumping data for table `roster`
--

INSERT INTO `roster` (`ref`, `teamid`, `lastname`, `firstname`, `position`, `height`, `weight`, `school`) VALUES
(1, 'md1-nova', 'Alexander', 'Bryant', 'Lock', 72, 200, 'Howard University'),
(2, 'md1-nova', 'Angelo', 'Sam', 'Prop, Lock', 73, 260, 'Slippery Rock University'),
(3, 'md1-nova', 'Bayliss', 'Lloyd', 'Prop, Lock, Flanker, Eight Man', 74, 245, 'Radford University'),
(4, 'md1-nova', 'Beckley', 'Eugene', 'Wing', 77, 230, 'George Washington University'),
(5, 'md1-nova', 'Blount', 'Trevelle', 'Wing', 70, 165, ''),
(6, 'md1-nova', 'Boyle', 'Austin', 'Flanker, Centre', 73, 200, 'James Madison University'),
(7, 'md1-nova', 'Braswell', 'Chase', 'Prop', 73, 285, 'Fayetteville State University'),
(8, 'md1-nova', 'Brisbin', 'Ted', 'Lock, Flanker, Eight Man', 74, 200, 'Boston College'),
(9, 'md1-nova', 'Carbury', 'Eoin', 'Fly Half', 70, 175, ''),
(10, 'md1-nova', 'Devine', 'Eric', 'Flanker', 71, 195, 'Virginia Tech'),
(11, 'md1-nova', 'Dionne', 'Andrew', 'Prop, Lock', 76, 318, 'University of Maryland - BC'),
(12, 'md1-nova', 'Everson', 'Anthony', 'Utility Back', 69, 160, ''),
(13, 'md1-nova', 'Fagan', 'Alan', 'Prop, Hooker, Flanker', 71, 200, 'Oatlands College, Dublin'),
(14, 'md1-nova', 'Fransisco', 'Thomas', 'Centre, Fullback', 71, 190, 'East Carolina University'),
(15, 'md1-nova', 'Gericke', 'Daniel', 'Centre', 73, 200, ''),
(16, 'md1-nova', 'Golkin', 'Andrew', 'Hooker', 66, 180, 'University of Maryland'),
(17, 'md1-nova', 'Gregory', 'Terris', 'Centre, Wing', 72, 220, 'Liberty University'),
(18, 'md1-nova', 'Hegarty', 'David', 'Utility Back', 68, 150, 'Ohio State University'),
(19, 'md1-nova', 'Hagan', 'William', 'Hooker', 67, 200, 'Old Dominion University'),
(20, 'md1-nova', 'Halpin', 'Connor', 'Prop, Eight Man', 72, 250, 'Norwich University'),
(21, 'md1-nova', 'Harris', 'Ethan', 'Centre, Wing', 67, 170, 'Lynchburg College'),
(22, 'md1-nova', 'Heard', 'Wyatt', 'Hooker, Flanker', 70, 210, 'Union College'),
(23, 'md1-nova', 'Henderson', 'Adam', 'Flyhalf', 74, 185, 'James Madison University'),
(24, 'md1-nova', 'Hosier', 'Andy', 'Scrumhalf', 66, 165, ''),
(25, 'md1-nova', 'Houseman', 'Ryan', 'Wing', 71, 165, ''),
(26, 'md1-nova', 'Jones', 'Henry', 'Scrumhalf, Wing', 69, 165, 'University of Mary Washington'),
(27, 'md1-nova', 'Jones', 'Kendall', 'Centre, Wing', 73, 200, 'East Carolina University'),
(28, 'md1-nova', 'Khodaei', 'Arshin', 'Prop, Flanker', 70, 234, 'Northern Virginia Community College'),
(29, 'md1-nova', 'Lewis', 'Christian', 'Flanker', 70, 180, 'Franciscan University'),
(30, 'md1-nova', 'Markey', 'JP', 'Flanker, Eight Man', 71, 205, 'East Carolina University'),
(31, 'md1-nova', 'Mirabella', 'Pat', 'Utility Forward', 75, 215, 'University of Maryland'),
(32, 'md1-nova', 'Muhammed', 'Anwar', 'Centre', 72, 200, ''),
(33, 'md1-nova', 'Oliveto', 'Nick', 'Scrumhalf, Wing', 67, 160, 'Fairmont State University'),
(34, 'md1-nova', 'Olson', 'Chuck', 'Prop, Flanker', 71, 195, ''),
(35, 'md1-nova', 'Pianta', 'Tony', 'Wing', 69, 150, 'Virginia Tech University'),
(36, 'md1-nova', 'Plummer', 'Judah', 'Prop', 68, 225, 'University of Pittsburgh'),
(37, 'md1-nova', 'Smith', 'Justin', 'Prop', 74, 285, ''),
(38, 'md1-nova', 'Snow', 'Brian', 'Prop', 72, 235, ''),
(39, 'md1-nova', 'Spencer', 'Beaux', 'Athletic', NULL, NULL, ''),
(40, 'md1-nova', 'Tropea', 'Joey', 'Prop, Hooker', 68, 250, ''),
(41, 'md1-nova', 'Tugurian', 'Rob', 'Athletic', 70, 195, ''),
(42, 'md1-nova', 'Walker', 'Max', 'Prop, Hooker, Flanker', 71, 205, 'Franciscan University'),
(43, 'md1-nova', 'Willatt', 'Gareth', 'Flyhalf, Centre Fullback', 71, 190, 'Ohio State University'),
(44, 'md1-nova', 'Wills', 'Lawrence', 'Centre, Wing', 70, 200, ''),
(45, 'md1-nova', 'Yun', 'Christopher', 'Scrumhalf, Fullback', 67, 170, 'The College of William and Mary'),
(46, 'md1-nova', 'Zavolta', 'Joshua', 'Center', 68, 165, 'George Mason University'),
(47, 'md1-nova', 'Zomorodi', 'Soheil', 'Athletic', 70, 185, '');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE IF NOT EXISTS `states` (
  `id` char(2) NOT NULL,
  `name` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
('AK', 'Alaska'),
('AL', 'Alabama'),
('AR', 'Arkansas'),
('AZ', 'Arizona'),
('CA', 'California'),
('CO', 'Colorado'),
('CT', 'Connecticut'),
('DE', 'Delaware'),
('FL', 'Florida'),
('GA', 'Georgia'),
('HI', 'Hawaii'),
('IA', 'Iowa'),
('ID', 'Idaho'),
('IL', 'Illinois'),
('IN', 'Indiana'),
('KS', 'Kansas'),
('KY', 'Kentucky'),
('LA', 'Louisiana'),
('MA', 'Massachusetts'),
('MD', 'Maryland'),
('ME', 'Maine'),
('MI', 'Michigan'),
('MN', 'Minnesota'),
('MO', 'Missouri'),
('MS', 'Mississippi'),
('MT', 'Montana'),
('NC', 'North Carloina'),
('ND', 'North Dakota'),
('NE', 'Nebraska'),
('NH', 'New Hampshire'),
('NJ', 'New Jersey'),
('NM', 'New Mexico'),
('NV', 'Nevada'),
('NY', 'New York'),
('OH', 'Ohio'),
('OK', 'Oklahoma'),
('OR', 'Oregon'),
('PA', 'Pennsylvania'),
('RI', 'Rhode Island'),
('SC', 'South Carolina'),
('SD', 'South Dakota'),
('TN', 'Tennessee'),
('TX', 'Texas'),
('UT', 'Utah'),
('VA', 'Virginia'),
('VT', 'Vermont'),
('WA', 'Washington'),
('WI', 'Wisconsin'),
('WV', 'West Verginia'),
('WY', 'Wyoming');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
