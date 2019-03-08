-- MySQL dump 10.13  Distrib 5.5.60, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: asterisk
-- ------------------------------------------------------
-- Server version	5.5.60-0+deb8u1

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
-- Table structure for table `accexts`
--

DROP TABLE IF EXISTS `accexts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accexts` (
  `acex_id` int(11) NOT NULL AUTO_INCREMENT,
  `acex_secret` varchar(50) NOT NULL DEFAULT '',
  `acex_ext` varchar(10) NOT NULL,
  KEY `acex_id` (`acex_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accountcodes`
--

DROP TABLE IF EXISTS `accountcodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountcodes` (
  `uniqueid` int(11) DEFAULT NULL,
  `accountcode` varchar(20) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accountcodes1`
--

DROP TABLE IF EXISTS `accountcodes1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountcodes1` (
  `uniqueid` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `barring` varchar(20) DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accountcodes2`
--

DROP TABLE IF EXISTS `accountcodes2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accountcodes2` (
  `uniqueid` int(11) NOT NULL AUTO_INCREMENT,
  `accountcode` varchar(20) DEFAULT NULL,
  `pin` varchar(20) DEFAULT NULL,
  `barring` varchar(20) DEFAULT NULL,
  `customer` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `accounts` (
  `acc_id` int(11) NOT NULL AUTO_INCREMENT,
  `acc_name` varchar(80) NOT NULL DEFAULT '',
  `acc_secret` varchar(50) NOT NULL DEFAULT '1234',
  `acc_ext` varchar(10) NOT NULL DEFAULT '',
  `acc_phone` varchar(20) NOT NULL DEFAULT '',
  `acc_billgrp` int(11) NOT NULL,
  `acc_extlist` text NOT NULL,
  KEY `acc_id` (`acc_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `agents`
--

DROP TABLE IF EXISTS `agents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `agents` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `agent` varchar(20) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `queue` varchar(60) DEFAULT NULL,
  `queue2` varchar(60) DEFAULT NULL,
  `queue3` varchar(60) DEFAULT NULL,
  `queue4` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdr`
--

DROP TABLE IF EXISTS `cdr`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr` (
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL DEFAULT '',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `dcontext` varchar(80) NOT NULL DEFAULT '',
  `channel` varchar(80) NOT NULL DEFAULT '',
  `dstchannel` varchar(80) NOT NULL DEFAULT '',
  `lastapp` varchar(80) NOT NULL DEFAULT '',
  `lastdata` varchar(80) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `accountcode` varchar(20) NOT NULL DEFAULT '',
  `uniqueid` varchar(32) NOT NULL DEFAULT '',
  `userfield` varchar(255) NOT NULL DEFAULT '',
  `call_charge` float NOT NULL DEFAULT '0',
  `from_did` varchar(30) NOT NULL,
  `reference` varchar(60) DEFAULT NULL,
  KEY `src` (`src`),
  KEY `dst` (`dst`),
  KEY `calldate` (`calldate`),
  KEY `uniqueid` (`uniqueid`),
  KEY `userfield` (`userfield`),
  KEY `from_did` (`from_did`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `cdr1`
--

DROP TABLE IF EXISTS `cdr1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cdr1` (
  `calldate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `clid` varchar(80) NOT NULL DEFAULT '',
  `src` varchar(80) NOT NULL DEFAULT '',
  `dst` varchar(80) NOT NULL DEFAULT '',
  `dcontext` varchar(80) NOT NULL DEFAULT '',
  `channel` varchar(80) NOT NULL DEFAULT '',
  `dstchannel` varchar(80) NOT NULL DEFAULT '',
  `lastapp` varchar(80) NOT NULL DEFAULT '',
  `lastdata` varchar(80) NOT NULL DEFAULT '',
  `duration` int(11) NOT NULL DEFAULT '0',
  `billsec` int(11) NOT NULL DEFAULT '0',
  `disposition` varchar(45) NOT NULL DEFAULT '',
  `amaflags` int(11) NOT NULL DEFAULT '0',
  `accountcode` varchar(20) NOT NULL DEFAULT '',
  `uniqueid` varchar(32) NOT NULL DEFAULT '',
  `userfield` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `ext_features`
--

DROP TABLE IF EXISTS `ext_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ext_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `extension` mediumint(6) DEFAULT NULL,
  `secret` varchar(20) DEFAULT NULL,
  `clid` varchar(40) DEFAULT NULL,
  `mac` varchar(40) DEFAULT NULL,
  `callforwarddst` mediumint(6) DEFAULT NULL,
  `callforwardbusydst` mediumint(6) DEFAULT NULL,
  `dnd` enum('yes','no') DEFAULT NULL,
  `callwaiting` enum('yes','no') DEFAULT NULL,
  `international` enum('yes','no') DEFAULT NULL,
  `national` enum('yes','no') DEFAULT NULL,
  `cellular` enum('yes','no') DEFAULT NULL,
  `internal` enum('yes','no') DEFAULT NULL,
  `requirepin` enum('yes','no') DEFAULT 'no',
  `pickupgroup` mediumint(6) DEFAULT NULL,
  `callgroup` mediumint(6) DEFAULT NULL,
  `registrar` varchar(20) DEFAULT NULL,
  `ipaddr` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `extension` (`extension`)
) ENGINE=MyISAM AUTO_INCREMENT=422 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `group_rates`
--

DROP TABLE IF EXISTS `group_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group_rates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `grp` int(11) NOT NULL,
  `terminator` varchar(255) NOT NULL,
  `prefix` varchar(20) NOT NULL,
  `minsec` int(11) NOT NULL DEFAULT '1',
  `price` float NOT NULL DEFAULT '0',
  `currency` varchar(3) NOT NULL DEFAULT 'ILS',
  `trunk` varchar(50) NOT NULL DEFAULT '',
  `rebill` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `grp` (`grp`),
  KEY `currency` (`currency`),
  KEY `prefix` (`prefix`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `pin_codes`
--

DROP TABLE IF EXISTS `pin_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pin_codes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(40) DEFAULT NULL,
  `pin` mediumint(6) DEFAULT NULL,
  `international` enum('yes','no') DEFAULT NULL,
  `national` enum('yes','no') DEFAULT NULL,
  `cellular` enum('yes','no') DEFAULT NULL,
  `internal` enum('yes','no') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pin` (`pin`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `playfiles`
--

DROP TABLE IF EXISTS `playfiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `playfiles` (
  `playuniqueid` varchar(32) NOT NULL,
  `playfile` varchar(100) NOT NULL DEFAULT '',
  KEY `playuniqueid` (`playuniqueid`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queuem`
--

DROP TABLE IF EXISTS `queuem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queuem` (
  `uniqueid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `membername` varchar(40) DEFAULT NULL,
  `queue_name` varchar(128) DEFAULT NULL,
  `interface` varchar(128) DEFAULT NULL,
  `penalty` int(11) DEFAULT NULL,
  `paused` int(11) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`),
  UNIQUE KEY `queue_interface` (`queue_name`,`interface`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queues`
--

DROP TABLE IF EXISTS `queues`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues` (
  `uniqueid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `musiconhold` varchar(128) DEFAULT NULL,
  `context` varchar(128) DEFAULT NULL,
  `queue_youarenext` varchar(128) DEFAULT NULL,
  `queue_thereare` varchar(128) DEFAULT NULL,
  `queue_callswaiting` varchar(128) DEFAULT NULL,
  `queue_holdtime` varchar(128) DEFAULT NULL,
  `queue_minutes` varchar(128) DEFAULT NULL,
  `queue_seconds` varchar(128) DEFAULT NULL,
  `queue_lessthan` varchar(128) DEFAULT NULL,
  `queue_thankyou` varchar(128) DEFAULT NULL,
  `queue_reporthold` varchar(128) DEFAULT NULL,
  `announce_frequency` int(11) DEFAULT NULL,
  `announce_holdtime` varchar(128) DEFAULT NULL,
  `wrapuptime` int(11) DEFAULT NULL,
  `strategy` varchar(128) DEFAULT NULL,
  `joinempty` varchar(128) DEFAULT NULL,
  `leavewhenempty` varchar(128) DEFAULT NULL,
  `reportholdtime` tinyint(1) DEFAULT NULL,
  `ringinuse` varchar(6) DEFAULT NULL,
  `periodic_announce` varchar(200) DEFAULT NULL,
  `periodic_announce_frequency` varchar(200) DEFAULT NULL,
  `announce_round_seconds` varchar(4) DEFAULT NULL,
  `musicclass` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `queues_config`
--

DROP TABLE IF EXISTS `queues_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `queues_config` (
  `id` int(11) DEFAULT NULL,
  `queue` varchar(20) DEFAULT NULL,
  `qgroup` varchar(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `rate_group`
--

DROP TABLE IF EXISTS `rate_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rate_group` (
  `rate_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `rate_group_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`rate_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `setting`
--

DROP TABLE IF EXISTS `setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `setting` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setkey` varchar(20) NOT NULL,
  `setvalue` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `key` (`setkey`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `sip`
--

DROP TABLE IF EXISTS `sip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sip` (
  `uniqueid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `deny` varchar(20) DEFAULT NULL,
  `username` varchar(20) DEFAULT NULL,
  `secret` varchar(20) DEFAULT NULL,
  `dtmfmode` varchar(20) DEFAULT NULL,
  `canreinvite` varchar(20) DEFAULT NULL,
  `context` varchar(20) DEFAULT NULL,
  `host` varchar(20) DEFAULT NULL,
  `trustrpid` varchar(20) DEFAULT NULL,
  `sendrpid` varchar(20) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL,
  `nat` varchar(20) DEFAULT NULL,
  `port` varchar(20) DEFAULT NULL,
  `qualify` varchar(20) DEFAULT NULL,
  `transport` varchar(20) DEFAULT NULL,
  `callgroup` varchar(20) DEFAULT NULL,
  `pickupgroup` varchar(20) DEFAULT NULL,
  `dissallow` varchar(20) DEFAULT NULL,
  `allow` varchar(20) DEFAULT NULL,
  `mailbox` varchar(20) DEFAULT NULL,
  `permit` varchar(20) DEFAULT NULL,
  `callerid` varchar(20) DEFAULT NULL,
  `lastms` varchar(20) DEFAULT NULL,
  `ipaddr` varchar(20) DEFAULT NULL,
  `regseconds` varchar(20) DEFAULT NULL,
  `useragent` varchar(20) DEFAULT NULL,
  `fullcontact` varchar(20) DEFAULT NULL,
  `regserver` varchar(20) DEFAULT NULL,
  `fromuser` varchar(60) DEFAULT NULL,
  `insecure` varchar(60) DEFAULT NULL,
  `callbackextension` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`uniqueid`)
) ENGINE=MyISAM AUTO_INCREMENT=142 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `time_rates`
--

DROP TABLE IF EXISTS `time_rates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `time_rates` (
  `time_rates_id` int(11) NOT NULL AUTO_INCREMENT,
  `time_rates_rates_id` int(11) NOT NULL,
  `time_rates_price` float NOT NULL DEFAULT '0',
  `time_rates_day` tinyint(4) NOT NULL DEFAULT '0',
  `time_rates_dayb` varchar(5) NOT NULL DEFAULT '00:00',
  `time_rates_daye` varchar(5) NOT NULL DEFAULT '00:00',
  PRIMARY KEY (`time_rates_id`),
  KEY `time_rates_rates_id` (`time_rates_rates_id`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `uniqueident`
--

DROP TABLE IF EXISTS `uniqueident`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uniqueident` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `callid` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19956 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `webusers`
--

DROP TABLE IF EXISTS `webusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webusers` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `username` varchar(200) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `user_type` int(5) DEFAULT NULL,
  `cdr` int(5) DEFAULT NULL,
  `extensions` int(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-03-08 17:00:03
