SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `accounts`
-- ----------------------------

CREATE TABLE `accounts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL DEFAULT '',
  `password` varchar(128) NOT NULL DEFAULT '',
  `salt` varchar(32) DEFAULT NULL,
  `2ndpassword` varchar(134) DEFAULT NULL,
  `salt2` varchar(32) DEFAULT NULL,
  `loggedin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `lastlogin` timestamp NULL DEFAULT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date NOT NULL DEFAULT '0000-00-00',
  `banned` tinyint(1) NOT NULL DEFAULT '0',
  `banreason` text,
  `gm` tinyint(1) NOT NULL DEFAULT '0',
  `email` tinytext,
  `macs` tinytext,
  `tempban` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `greason` tinyint(4) unsigned DEFAULT NULL,
  `ACash` int(11) DEFAULT NULL,
  `mPoints` int(11) DEFAULT NULL,
  `gender` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `SessionIP` varchar(64) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `vpoints` int(11) NOT NULL DEFAULT '0',
  `lastlogon` timestamp NULL DEFAULT NULL,
  `facebook_id` varchar(255) DEFAULT NULL,
  `access_token` varchar(255) DEFAULT '',
  `password_otp` varchar(255) DEFAULT '',
  `expiration` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `ranking1` (`id`,`banned`,`gm`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `achievements`
-- ----------------------------

CREATE TABLE `achievements` (
  `achievementid` int(9) NOT NULL DEFAULT '0',
  `charid` int(9) NOT NULL DEFAULT '0',
  `accountid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`achievementid`,`charid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `alliances`
-- ----------------------------

CREATE TABLE `alliances` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(13) NOT NULL,
  `leaderid` int(11) NOT NULL,
  `guild1` int(11) NOT NULL,
  `guild2` int(11) NOT NULL,
  `guild3` int(11) NOT NULL DEFAULT '0',
  `guild4` int(11) NOT NULL DEFAULT '0',
  `guild5` int(11) NOT NULL DEFAULT '0',
  `rank1` varchar(13) NOT NULL DEFAULT '公會長',
  `rank2` varchar(13) NOT NULL DEFAULT '公會副會長',
  `rank3` varchar(13) NOT NULL DEFAULT '公會成員',
  `rank4` varchar(13) NOT NULL DEFAULT '公會成員',
  `rank5` varchar(13) NOT NULL DEFAULT '公會成員',
  `capacity` int(11) NOT NULL DEFAULT '2',
  `notice` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `spawns`
-- ----------------------------

CREATE TABLE IF NOT EXISTS `spawns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `idd` int(11) NOT NULL,
  `f` int(11) NOT NULL,
  `fh` int(11) NOT NULL,
  `type` varchar(1) NOT NULL,
  `cy` int(11) NOT NULL,
  `rx0` int(11) NOT NULL,
  `rx1` int(11) NOT NULL,
  `x` int(11) NOT NULL,
  `y` int(11) NOT NULL,
  `mobtime` int(11) DEFAULT '1000',
  `mid` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=BIG5;

-- ----------------------------
-- Table structure for `auth_server_channel`
-- ----------------------------

CREATE TABLE `auth_server_channel` (
  `channelid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `world` int(11) NOT NULL DEFAULT '0',
  `number` int(11) DEFAULT NULL,
  `key` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`channelid`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of auth_server_channel
-- ----------------------------

INSERT INTO `auth_server_channel` VALUES ('1', '0', '1', '64cc5ec141f3d07fb076ba87c5c46825c44a997c');
INSERT INTO `auth_server_channel` VALUES ('2', '0', '2', '71278272bd03d969454d32211592f6660a11b8ee');
INSERT INTO `auth_server_channel` VALUES ('3', '0', '3', 'ce1a2a86d8f4f5bab9e600dcac20388d54403915');
INSERT INTO `auth_server_channel` VALUES ('4', '0', '4', '0c508d5b595790b9af143d5ea98973c58d34a0b8');
INSERT INTO `auth_server_channel` VALUES ('5', '0', '5', 'afe0f764a60b96c0265966b45091680c520b791b');
INSERT INTO `auth_server_channel` VALUES ('6', '0', '6', 'a63c74dfb6dd62c2caef06184c1f41fa75eed514');
INSERT INTO `auth_server_channel` VALUES ('7', '0', '7', 'e05a1b16f8b24d43cdf50a242b5641e33f275a21');
INSERT INTO `auth_server_channel` VALUES ('8', '0', '8', '4183d0b0ef17d9130433523b6d7c845755782e87');
INSERT INTO `auth_server_channel` VALUES ('9', '0', '9', '05a7864614180db4d3374e680039d55279ebdb8c');
INSERT INTO `auth_server_channel` VALUES ('10', '0', '10', '7ce024fdb03cf3ef03171828bff527269d01f08f');
INSERT INTO `auth_server_channel` VALUES ('11', '0', '11', '7e1994fe975472f827ecc71188cb5d64bdc24c1d');
INSERT INTO `auth_server_channel` VALUES ('12', '0', '12', '462538d6ee0a15c0ff52f4bf09da6d60bc3a657d');
INSERT INTO `auth_server_channel` VALUES ('13', '0', '13', 'd82cfcb1edcb2e31b751b3ccfeb7464500bb30dc');
INSERT INTO `auth_server_channel` VALUES ('14', '0', '14', '2f32eeea3628e70980dab4e6ec2f9d27a3313b96');
INSERT INTO `auth_server_channel` VALUES ('15', '0', '15', 'f5bf68e8d67b5e5f3f2ebe684a85fe72166db8f2');
INSERT INTO `auth_server_channel` VALUES ('16', '0', '16', 'cf97404e96937aa89557a3af5c0d252b654e1b3a');
INSERT INTO `auth_server_channel` VALUES ('17', '0', '17', '00edfe19b7f9c1b5303ce7a679452b3b6d3fe381');
INSERT INTO `auth_server_channel` VALUES ('18', '0', '18', 'a9e267e5bdad70925db1729acd38f93b6edff9d4');
INSERT INTO `auth_server_channel` VALUES ('19', '0', '19', '518fa6b3a88ce3ab6d688d2ac1e42a0754720664');
INSERT INTO `auth_server_channel` VALUES ('20', '0', '20', '923dcc504ed557f563fe52c82517a2b1feceeba1');

-- ----------------------------
-- Table structure for `auth_server_channel_ip`
-- ----------------------------

CREATE TABLE `auth_server_channel_ip` (
  `channelconfigid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channelid` int(10) unsigned NOT NULL DEFAULT '0',
  `name` tinytext NOT NULL,
  `value` tinytext NOT NULL,
  PRIMARY KEY (`channelconfigid`),
  KEY `channelid` (`channelid`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Records of auth_server_channel_ip
-- ----------------------------

INSERT INTO `auth_server_channel_ip` VALUES ('1', '2', 'net.sf.odinms.channel.net.port', '8587');
INSERT INTO `auth_server_channel_ip` VALUES ('2', '3', 'net.sf.odinms.channel.net.port', '8588');
INSERT INTO `auth_server_channel_ip` VALUES ('3', '4', 'net.sf.odinms.channel.net.port', '8589');
INSERT INTO `auth_server_channel_ip` VALUES ('4', '5', 'net.sf.odinms.channel.net.port', '8590');
INSERT INTO `auth_server_channel_ip` VALUES ('5', '6', 'net.sf.odinms.channel.net.port', '8591');
INSERT INTO `auth_server_channel_ip` VALUES ('6', '7', 'net.sf.odinms.channel.net.port', '8592');
INSERT INTO `auth_server_channel_ip` VALUES ('7', '8', 'net.sf.odinms.channel.net.port', '8593');
INSERT INTO `auth_server_channel_ip` VALUES ('8', '9', 'net.sf.odinms.channel.net.port', '8594');
INSERT INTO `auth_server_channel_ip` VALUES ('9', '10', 'net.sf.odinms.channel.net.port', '8595');
INSERT INTO `auth_server_channel_ip` VALUES ('10', '11', 'net.sf.odinms.channel.net.port', '7585');
INSERT INTO `auth_server_channel_ip` VALUES ('11', '12', 'net.sf.odinms.channel.net.port', '7586');
INSERT INTO `auth_server_channel_ip` VALUES ('12', '13', 'net.sf.odinms.channel.net.port', '7587');
INSERT INTO `auth_server_channel_ip` VALUES ('13', '14', 'net.sf.odinms.channel.net.port', '7588');
INSERT INTO `auth_server_channel_ip` VALUES ('14', '15', 'net.sf.odinms.channel.net.port', '7589');
INSERT INTO `auth_server_channel_ip` VALUES ('15', '16', 'net.sf.odinms.channel.net.port', '7590');
INSERT INTO `auth_server_channel_ip` VALUES ('16', '17', 'net.sf.odinms.channel.net.port', '7591');
INSERT INTO `auth_server_channel_ip` VALUES ('17', '18', 'net.sf.odinms.channel.net.port', '7592');
INSERT INTO `auth_server_channel_ip` VALUES ('18', '19', 'net.sf.odinms.channel.net.port', '7593');
INSERT INTO `auth_server_channel_ip` VALUES ('19', '20', 'net.sf.odinms.channel.net.port', '7594');

-- ----------------------------
-- Table structure for `auth_server_cs`
-- ----------------------------

CREATE TABLE `auth_server_cs` (
  `CashShopServerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `world` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`CashShopServerId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Records of auth_server_cs
-- ----------------------------

INSERT INTO `auth_server_cs` VALUES ('1', '9eafbf39c3d7a53f7dab1f1dc4d380ce9314f7a4', '0');

-- ----------------------------
-- Table structure for `auth_server_login`
-- ----------------------------

CREATE TABLE `auth_server_login` (
  `loginserverid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL DEFAULT '',
  `world` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`loginserverid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Records of auth_server_login
-- ----------------------------

INSERT INTO `auth_server_login` VALUES ('1', 'e709b6bfc9eda84c166514ec9784739c6cc201bd', '0');

-- ----------------------------
-- Table structure for `auth_server_mts`
-- ----------------------------

CREATE TABLE `auth_server_mts` (
  `MTSServerId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(40) NOT NULL,
  `world` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`MTSServerId`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Records of auth_server_mts
-- ----------------------------

INSERT INTO `auth_server_mts` VALUES ('1', '9eafbf39c3d7a53f7dab1f1dc4d380ce9314f7a4', '0');

-- ----------------------------
-- Table structure for `bbs_replies`
-- ----------------------------

CREATE TABLE `bbs_replies` (
  `replyid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `threadid` int(10) unsigned NOT NULL,
  `postercid` int(10) unsigned NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `content` varchar(26) NOT NULL DEFAULT '',
  `guildid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`replyid`)
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `bbs_threads`
-- ----------------------------

CREATE TABLE `bbs_threads` (
  `threadid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `postercid` int(10) unsigned NOT NULL,
  `name` varchar(26) NOT NULL DEFAULT '',
  `timestamp` bigint(20) unsigned NOT NULL,
  `icon` smallint(5) unsigned NOT NULL,
  `startpost` text NOT NULL,
  `guildid` int(10) unsigned NOT NULL,
  `localthreadid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`threadid`)
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `blocklogin`
-- ----------------------------

CREATE TABLE `blocklogin` (
  `account` varchar(255) DEFAULT NULL,
  `blocktime` varchar(255) DEFAULT NULL,
  `unblocktime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `blockuse`
-- ----------------------------

CREATE TABLE `blockuse` (
  `account` varchar(255) DEFAULT NULL,
  `blocktime` varchar(255) DEFAULT NULL,
  `unblocktime` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `usetype` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `bosslog`
-- ----------------------------

CREATE TABLE `bosslog` (
  `bosslogid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(10) unsigned NOT NULL,
  `bossid` varchar(20) NOT NULL,
  `lastattempt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`bosslogid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `buddies`
-- ----------------------------

CREATE TABLE `buddies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL,
  `buddyid` int(11) NOT NULL,
  `pending` tinyint(4) NOT NULL DEFAULT '0',
  `groupname` varchar(16) NOT NULL DEFAULT '其他',
  PRIMARY KEY (`id`),
  KEY `buddies_ibfk_1` (`characterid`),
  CONSTRAINT `buddies_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `cashshop_limit_sell`
-- ----------------------------

CREATE TABLE `cashshop_limit_sell` (
  `serial` int(11) NOT NULL,
  `amount` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `cashshop_modified_items`
-- ----------------------------

CREATE TABLE `cashshop_modified_items` (
  `name` varchar(70) NOT NULL,
  `serial` int(11) NOT NULL,
  `discount_price` int(11) NOT NULL DEFAULT '-1',
  `mark` tinyint(1) NOT NULL DEFAULT '-1',
  `showup` tinyint(1) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `priority` tinyint(3) NOT NULL DEFAULT '0',
  `package` tinyint(1) NOT NULL DEFAULT '0',
  `period` tinyint(3) NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `count` tinyint(3) NOT NULL DEFAULT '0',
  `meso` int(11) NOT NULL DEFAULT '0',
  `unk_1` tinyint(1) NOT NULL DEFAULT '0',
  `unk_2` tinyint(1) NOT NULL DEFAULT '0',
  `unk_3` tinyint(1) NOT NULL DEFAULT '0',
  `extra_flags` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`serial`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `characters`
-- ----------------------------

CREATE TABLE `characters` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accountid` int(11) NOT NULL DEFAULT '0',
  `world` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL DEFAULT '',
  `level` int(3) unsigned NOT NULL DEFAULT '0',
  `exp` int(11) NOT NULL DEFAULT '0',
  `str` int(5) NOT NULL DEFAULT '0',
  `dex` int(5) NOT NULL DEFAULT '0',
  `luk` int(5) NOT NULL DEFAULT '0',
  `int` int(5) NOT NULL DEFAULT '0',
  `hp` int(5) NOT NULL DEFAULT '0',
  `mp` int(5) NOT NULL DEFAULT '0',
  `maxhp` int(5) NOT NULL DEFAULT '0',
  `maxmp` int(5) NOT NULL DEFAULT '0',
  `meso` int(11) NOT NULL DEFAULT '0',
  `hpApUsed` int(5) NOT NULL DEFAULT '0',
  `job` int(5) NOT NULL DEFAULT '0',
  `skincolor` tinyint(1) NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `fame` int(5) NOT NULL DEFAULT '0',
  `hair` int(11) NOT NULL DEFAULT '0',
  `face` int(11) NOT NULL DEFAULT '0',
  `ap` int(5) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL DEFAULT '0',
  `spawnpoint` int(3) NOT NULL DEFAULT '0',
  `gm` int(3) NOT NULL DEFAULT '0',
  `party` int(11) NOT NULL DEFAULT '0',
  `buddyCapacity` int(3) NOT NULL DEFAULT '25',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `guildid` int(10) unsigned NOT NULL DEFAULT '0',
  `guildrank` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `allianceRank` tinyint(1) unsigned NOT NULL DEFAULT '5',
  `monsterbookcover` int(11) unsigned NOT NULL DEFAULT '0',
  `dojo_pts` int(11) unsigned NOT NULL DEFAULT '0',
  `dojoRecord` tinyint(2) unsigned NOT NULL DEFAULT '0',
  `pets` varchar(13) NOT NULL DEFAULT '-1,-1,-1',
  `sp` varchar(255) NOT NULL DEFAULT '0,0,0,0,0,0,0,0,0,0',
  `subcategory` int(11) NOT NULL DEFAULT '0',
  `Jaguar` int(3) NOT NULL DEFAULT '0',
  `rank` int(11) NOT NULL DEFAULT '1',
  `rankMove` int(11) NOT NULL DEFAULT '0',
  `jobRank` int(11) NOT NULL DEFAULT '1',
  `jobRankMove` int(11) NOT NULL DEFAULT '0',
  `marriageId` int(11) NOT NULL DEFAULT '0',
  `familyid` int(11) NOT NULL DEFAULT '0',
  `seniorid` int(11) NOT NULL DEFAULT '0',
  `junior1` int(11) NOT NULL DEFAULT '0',
  `junior2` int(11) NOT NULL DEFAULT '0',
  `currentrep` int(11) NOT NULL DEFAULT '0',
  `totalrep` int(11) NOT NULL DEFAULT '0',
  `charmessage` varchar(128) NOT NULL DEFAULT '大家好',
  `expression` int(11) NOT NULL DEFAULT '0',
  `constellation` int(11) NOT NULL DEFAULT '0',
  `blood` int(11) NOT NULL DEFAULT '0',
  `month` int(11) NOT NULL DEFAULT '0',
  `day` int(11) NOT NULL DEFAULT '0',
  `beans` int(11) NOT NULL DEFAULT '0',
  `prefix` int(255) DEFAULT '0',
  `gachexp` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `accountid` (`accountid`),
  KEY `party` (`party`),
  KEY `ranking1` (`level`,`exp`),
  KEY `ranking2` (`gm`,`job`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `character_slots`
-- ----------------------------

CREATE TABLE `character_slots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `accid` int(11) NOT NULL DEFAULT '0',
  `worldid` int(11) NOT NULL DEFAULT '0',
  `charslots` int(11) NOT NULL DEFAULT '6',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `cheatlog`
-- ----------------------------

CREATE TABLE `cheatlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `offense` tinytext NOT NULL,
  `count` int(11) NOT NULL DEFAULT '0',
  `lastoffensetime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `param` tinytext NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cid` (`characterid`) USING BTREE
) ENGINE=MyISAM AUTO_INCREMENT=829883 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `csequipment`
-- ----------------------------

CREATE TABLE `csequipment` (
  `inventoryequipmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryequipmentid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `csequiptment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `csitems` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `csitems`
-- ----------------------------

CREATE TABLE `csitems` (
  `inventoryitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(13) NOT NULL DEFAULT '',
  PRIMARY KEY (`inventoryitemid`),
  KEY `inventoryitems_ibfk_1` (`characterid`),
  KEY `characterid` (`characterid`),
  KEY `inventorytype` (`inventorytype`),
  KEY `accountid` (`accountid`),
  KEY `packageid` (`packageid`),
  KEY `characterid_2` (`characterid`,`inventorytype`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `drop_data`
-- ----------------------------

CREATE TABLE `drop_data` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dropperid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `minimum_quantity` int(11) NOT NULL DEFAULT '1',
  `maximum_quantity` int(11) NOT NULL DEFAULT '1',
  `questid` int(11) NOT NULL DEFAULT '0',
  `chance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mobid` (`dropperid`)
) ENGINE=MyISAM AUTO_INCREMENT=38910 DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `drop_data_global`
-- ----------------------------

CREATE TABLE `drop_data_global` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `continent` int(11) NOT NULL,
  `dropType` tinyint(1) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `minimum_quantity` int(11) NOT NULL DEFAULT '1',
  `maximum_quantity` int(11) NOT NULL DEFAULT '1',
  `questid` int(11) NOT NULL DEFAULT '0',
  `chance` int(11) NOT NULL DEFAULT '0',
  `comments` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mobid` (`continent`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of drop_data_global
-- ----------------------------

INSERT INTO `drop_data_global` VALUES ('1', '-1', '0', '2210040', '1', '1', '0', '10000', '萬聖節');
INSERT INTO `drop_data_global` VALUES ('2', '-1', '0', '2210041', '1', '1', '0', '10000', '萬聖節');
INSERT INTO `drop_data_global` VALUES ('3', '-1', '0', '2210042', '1', '1', '0', '10000', '萬聖節');
INSERT INTO `drop_data_global` VALUES ('4', '-1', '0', '2210008', '1', '1', '0', '1000', '萬聖節');

-- ----------------------------
-- Table structure for `drop_data_vana`
-- ----------------------------

CREATE TABLE `drop_data_vana` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `dropperid` int(11) NOT NULL,
  `flags` set('is_mesos') NOT NULL DEFAULT '',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `minimum_quantity` int(11) NOT NULL DEFAULT '1',
  `maximum_quantity` int(11) NOT NULL DEFAULT '1',
  `questid` int(11) NOT NULL DEFAULT '0',
  `chance` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `mobid` (`dropperid`)
) ENGINE=MyISAM AUTO_INCREMENT=10087 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `dueyequipment`
-- ----------------------------

CREATE TABLE `dueyequipment` (
  `inventoryequipmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryequipmentid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `dueyequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `dueyitems` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Records of dueyequipment
-- ----------------------------

INSERT INTO `dueyequipment` VALUES ('1', '2', '7', '0', '0', '0', '0', '0', '0', '5', '0', '0', '17', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '-5', '0', '0', '0', '0');
INSERT INTO `dueyequipment` VALUES ('2', '3', '7', '0', '0', '2', '0', '0', '0', '11', '0', '0', '28', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0');
INSERT INTO `dueyequipment` VALUES ('3', '4', '5', '0', '0', '0', '0', '3', '0', '0', '0', '0', '9', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0');
INSERT INTO `dueyequipment` VALUES ('4', '5', '5', '0', '0', '0', '0', '0', '0', '0', '0', '0', '15', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0');
INSERT INTO `dueyequipment` VALUES ('5', '6', '7', '0', '0', '0', '0', '2', '0', '0', '0', '0', '25', '0', '0', '0', '0', '0', '0', '0', '0', '-1', '0', '0', '0', '0', '0', '0');

-- ----------------------------
-- Table structure for `dueyitems`
-- ----------------------------

CREATE TABLE `dueyitems` (
  `inventoryitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`inventoryitemid`),
  KEY `inventoryitems_ibfk_1` (`characterid`),
  KEY `characterid` (`characterid`),
  KEY `inventorytype` (`inventorytype`),
  KEY `accountid` (`accountid`),
  KEY `packageid` (`packageid`),
  KEY `characterid_2` (`characterid`,`inventorytype`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Records of dueyitems
-- ----------------------------

INSERT INTO `dueyitems` VALUES ('1', null, null, '1', '2060000', '2', '13', '110', '', null, '-1', '0', '-1', '6', '');
INSERT INTO `dueyitems` VALUES ('2', null, null, '2', '1002150', '1', '19', '1', '', null, '-1', '0', '-1', '6', '');
INSERT INTO `dueyitems` VALUES ('3', null, null, '3', '1060071', '1', '20', '1', '', null, '-1', '0', '-1', '6', '');
INSERT INTO `dueyitems` VALUES ('4', null, null, '4', '1082039', '1', '21', '1', '', null, '-1', '0', '-1', '6', '');
INSERT INTO `dueyitems` VALUES ('5', null, null, '5', '1072087', '1', '22', '1', '', null, '-1', '0', '-1', '6', '');
INSERT INTO `dueyitems` VALUES ('6', null, null, '6', '1002185', '1', '17', '1', '', null, '-1', '0', '-1', '6', '');
INSERT INTO `dueyitems` VALUES ('8', null, null, '8', '2040105', '2', '15', '8', '', null, '-1', '0', '-1', '6', '');

-- ----------------------------
-- Table structure for `dueypackages`
-- ----------------------------

CREATE TABLE `dueypackages` (
  `PackageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `RecieverId` int(10) NOT NULL,
  `SenderName` varchar(15) NOT NULL,
  `Mesos` int(10) unsigned DEFAULT '0',
  `TimeStamp` bigint(20) unsigned DEFAULT NULL,
  `Checked` tinyint(1) unsigned DEFAULT '1',
  `Type` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `eventstats`
-- ----------------------------

CREATE TABLE `eventstats` (
  `eventstatid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `event` varchar(30) NOT NULL,
  `instance` varchar(30) NOT NULL,
  `characterid` int(11) NOT NULL,
  `channel` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`eventstatid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `famelog`
-- ----------------------------

CREATE TABLE `famelog` (
  `famelogid` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `characterid_to` int(11) NOT NULL DEFAULT '0',
  `when` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`famelogid`),
  KEY `characterid` (`characterid`),
  CONSTRAINT `famelog_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `families`
-- ----------------------------

CREATE TABLE `families` (
  `familyid` int(11) NOT NULL AUTO_INCREMENT,
  `leaderid` int(11) NOT NULL DEFAULT '0',
  `notice` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`familyid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `game_poll_reply`
-- ----------------------------

CREATE TABLE `game_poll_reply` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `AccountId` int(10) unsigned NOT NULL,
  `SelectAns` tinyint(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `gifts`
-- ----------------------------

CREATE TABLE `gifts` (
  `giftid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `recipient` int(11) NOT NULL DEFAULT '0',
  `from` varchar(13) NOT NULL DEFAULT '',
  `message` varchar(255) NOT NULL DEFAULT '',
  `sn` int(11) NOT NULL DEFAULT '0',
  `uniqueid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`giftid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `gmlog`
-- ----------------------------

CREATE TABLE `gmlog` (
  `gmlogid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `command` tinytext NOT NULL,
  `mapid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gmlogid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `guilds`
-- ----------------------------

CREATE TABLE `guilds` (
  `guildid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `leader` int(10) unsigned NOT NULL DEFAULT '0',
  `GP` int(11) NOT NULL DEFAULT '0',
  `logo` int(10) unsigned DEFAULT NULL,
  `logoColor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `name` varchar(45) NOT NULL,
  `rank1title` varchar(45) NOT NULL DEFAULT '公會長',
  `rank2title` varchar(45) NOT NULL DEFAULT '公會副會長',
  `rank3title` varchar(45) NOT NULL DEFAULT '公會成員',
  `rank4title` varchar(45) NOT NULL DEFAULT '公會成員',
  `rank5title` varchar(45) NOT NULL DEFAULT '公會成員',
  `capacity` int(10) unsigned NOT NULL DEFAULT '10',
  `logoBG` int(10) unsigned DEFAULT NULL,
  `logoBGColor` smallint(5) unsigned NOT NULL DEFAULT '0',
  `notice` varchar(101) DEFAULT NULL,
  `signature` int(11) NOT NULL DEFAULT '0',
  `alliance` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`guildid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `hiredmerch`
-- ----------------------------

CREATE TABLE `hiredmerch` (
  `PackageId` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(10) unsigned DEFAULT '0',
  `accountid` int(10) unsigned DEFAULT NULL,
  `Mesos` int(10) unsigned DEFAULT '0',
  `time` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `hiredmerchequipment`
-- ----------------------------

CREATE TABLE `hiredmerchequipment` (
  `inventoryequipmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryequipmentid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `hiredmerchantequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `hiredmerchitems` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `hiredmerchitems`
-- ----------------------------

CREATE TABLE `hiredmerchitems` (
  `inventoryitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`inventoryitemid`),
  KEY `inventoryitems_ibfk_1` (`characterid`),
  KEY `characterid` (`characterid`),
  KEY `inventorytype` (`inventorytype`),
  KEY `accountid` (`accountid`),
  KEY `packageid` (`packageid`),
  KEY `characterid_2` (`characterid`,`inventorytype`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `htsquads`
-- ----------------------------

CREATE TABLE `htsquads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` int(10) unsigned NOT NULL,
  `leaderid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `members` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `inventoryequipment`
-- ----------------------------

CREATE TABLE `inventoryequipment` (
  `inventoryequipmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeslots` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `str` smallint(6) NOT NULL DEFAULT '0',
  `dex` smallint(6) NOT NULL DEFAULT '0',
  `int` smallint(6) NOT NULL DEFAULT '0',
  `luk` smallint(6) NOT NULL DEFAULT '0',
  `hp` smallint(6) NOT NULL DEFAULT '0',
  `mp` smallint(6) NOT NULL DEFAULT '0',
  `watk` smallint(6) NOT NULL DEFAULT '0',
  `matk` smallint(6) NOT NULL DEFAULT '0',
  `wdef` smallint(6) NOT NULL DEFAULT '0',
  `mdef` smallint(6) NOT NULL DEFAULT '0',
  `acc` smallint(6) NOT NULL DEFAULT '0',
  `avoid` smallint(6) NOT NULL DEFAULT '0',
  `hands` smallint(6) NOT NULL DEFAULT '0',
  `speed` smallint(6) NOT NULL DEFAULT '0',
  `jump` smallint(6) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` mediumint(9) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryequipmentid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `inventoryequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `inventoryitems` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `inventoryitems`
-- ----------------------------

CREATE TABLE `inventoryitems` (
  `inventoryitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`inventoryitemid`),
  KEY `inventorytype` (`inventorytype`),
  KEY `accountid` (`accountid`),
  KEY `packageid` (`packageid`),
  KEY `characterid_2` (`characterid`,`inventorytype`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `inventorylog`
-- ----------------------------

CREATE TABLE `inventorylog` (
  `inventorylogid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `msg` tinytext NOT NULL,
  PRIMARY KEY (`inventorylogid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `inventorylog_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `inventoryitems` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `inventoryslot`
-- ----------------------------

CREATE TABLE `inventoryslot` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(10) unsigned DEFAULT NULL,
  `equip` tinyint(3) unsigned DEFAULT NULL,
  `use` tinyint(3) unsigned DEFAULT NULL,
  `setup` tinyint(3) unsigned DEFAULT NULL,
  `etc` tinyint(3) unsigned DEFAULT NULL,
  `cash` tinyint(3) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `invitecodedata`
-- ----------------------------

CREATE TABLE `invitecodedata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `active` int(255) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `ipbans`
-- ----------------------------

CREATE TABLE `ipbans` (
  `ipbanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL DEFAULT '',
  PRIMARY KEY (`ipbanid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `ipvotelog`
-- ----------------------------

CREATE TABLE `ipvotelog` (
  `vid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accid` varchar(45) NOT NULL DEFAULT '0',
  `ipaddress` varchar(30) NOT NULL DEFAULT '127.0.0.1',
  `votetime` varchar(100) NOT NULL DEFAULT '0',
  `votetype` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`vid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `keymap`
-- ----------------------------

CREATE TABLE `keymap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `key` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `action` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keymap_ibfk_1` (`characterid`),
  CONSTRAINT `keymap_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `loginlog`
-- ----------------------------

CREATE TABLE `loginlog` (
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `logintype` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `macbans`
-- ----------------------------

CREATE TABLE `macbans` (
  `macbanid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `mac` varchar(30) NOT NULL,
  PRIMARY KEY (`macbanid`),
  UNIQUE KEY `mac_2` (`mac`)
) ENGINE=MEMORY DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `macfilters`
-- ----------------------------

CREATE TABLE `macfilters` (
  `macfilterid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `filter` varchar(30) NOT NULL,
  PRIMARY KEY (`macfilterid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `monsterbook`
-- ----------------------------

CREATE TABLE `monsterbook` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `charid` int(10) unsigned NOT NULL DEFAULT '0',
  `cardid` int(10) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(2) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mountdata`
-- ----------------------------

CREATE TABLE `mountdata` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(10) unsigned DEFAULT NULL,
  `Level` int(3) unsigned NOT NULL DEFAULT '0',
  `Exp` int(10) unsigned NOT NULL DEFAULT '0',
  `Fatigue` int(3) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `mtsequipment`
-- ----------------------------

CREATE TABLE `mtsequipment` (
  `inventoryequipmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryequipmentid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `mtsequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `mtsitems` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mtsitems`
-- ----------------------------

CREATE TABLE `mtsitems` (
  `inventoryitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageId` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`inventoryitemid`),
  KEY `inventoryitems_ibfk_1` (`characterid`),
  KEY `characterid` (`characterid`),
  KEY `inventorytype` (`inventorytype`),
  KEY `accountid` (`accountid`),
  KEY `characterid_2` (`characterid`,`inventorytype`),
  KEY `packageid` (`packageId`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mtstransfer`
-- ----------------------------

CREATE TABLE `mtstransfer` (
  `inventoryitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `accountid` int(10) DEFAULT NULL,
  `packageid` int(11) DEFAULT NULL,
  `itemid` int(11) NOT NULL DEFAULT '0',
  `inventorytype` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL DEFAULT '0',
  `quantity` int(11) NOT NULL DEFAULT '0',
  `owner` tinytext,
  `GM_Log` tinytext,
  `uniqueid` int(11) NOT NULL DEFAULT '-1',
  `flag` int(2) NOT NULL DEFAULT '0',
  `expiredate` bigint(20) NOT NULL DEFAULT '-1',
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `sender` varchar(15) NOT NULL DEFAULT '',
  PRIMARY KEY (`inventoryitemid`),
  KEY `inventoryitems_ibfk_1` (`characterid`),
  KEY `characterid` (`characterid`),
  KEY `inventorytype` (`inventorytype`),
  KEY `accountid` (`accountid`),
  KEY `packageid` (`packageid`),
  KEY `characterid_2` (`characterid`,`inventorytype`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mtstransferequipment`
-- ----------------------------

CREATE TABLE `mtstransferequipment` (
  `inventoryequipmentid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `inventoryitemid` int(10) unsigned NOT NULL DEFAULT '0',
  `upgradeslots` int(11) NOT NULL DEFAULT '0',
  `level` int(11) NOT NULL DEFAULT '0',
  `str` int(11) NOT NULL DEFAULT '0',
  `dex` int(11) NOT NULL DEFAULT '0',
  `int` int(11) NOT NULL DEFAULT '0',
  `luk` int(11) NOT NULL DEFAULT '0',
  `hp` int(11) NOT NULL DEFAULT '0',
  `mp` int(11) NOT NULL DEFAULT '0',
  `watk` int(11) NOT NULL DEFAULT '0',
  `matk` int(11) NOT NULL DEFAULT '0',
  `wdef` int(11) NOT NULL DEFAULT '0',
  `mdef` int(11) NOT NULL DEFAULT '0',
  `acc` int(11) NOT NULL DEFAULT '0',
  `avoid` int(11) NOT NULL DEFAULT '0',
  `hands` int(11) NOT NULL DEFAULT '0',
  `speed` int(11) NOT NULL DEFAULT '0',
  `jump` int(11) NOT NULL DEFAULT '0',
  `ViciousHammer` tinyint(2) NOT NULL DEFAULT '0',
  `itemEXP` int(11) NOT NULL DEFAULT '0',
  `durability` int(11) NOT NULL DEFAULT '-1',
  `enhance` tinyint(3) NOT NULL DEFAULT '0',
  `potential1` smallint(5) NOT NULL DEFAULT '0',
  `potential2` smallint(5) NOT NULL DEFAULT '0',
  `potential3` smallint(5) NOT NULL DEFAULT '0',
  `hpR` smallint(5) NOT NULL DEFAULT '0',
  `mpR` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`inventoryequipmentid`),
  KEY `inventoryitemid` (`inventoryitemid`),
  CONSTRAINT `mtstransferequipment_ibfk_1` FOREIGN KEY (`inventoryitemid`) REFERENCES `mtstransfer` (`inventoryitemid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mts_cart`
-- ----------------------------

CREATE TABLE `mts_cart` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mts_items`
-- ----------------------------

CREATE TABLE `mts_items` (
  `id` int(11) NOT NULL,
  `tab` tinyint(1) NOT NULL DEFAULT '1',
  `price` int(11) NOT NULL DEFAULT '0',
  `characterid` int(11) NOT NULL DEFAULT '0',
  `seller` varchar(15) NOT NULL DEFAULT '',
  `expiration` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `mulungdojo`
-- ----------------------------

CREATE TABLE `mulungdojo` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL DEFAULT '0',
  `stage` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `notes`
-- ----------------------------

CREATE TABLE `notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `to` varchar(15) NOT NULL DEFAULT '',
  `from` varchar(15) NOT NULL DEFAULT '',
  `message` text NOT NULL,
  `timestamp` bigint(20) unsigned NOT NULL,
  `gift` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `nxcode`
-- ----------------------------

CREATE TABLE `nxcode` (
  `code` varchar(15) NOT NULL,
  `valid` int(11) NOT NULL DEFAULT '1',
  `user` varchar(15) DEFAULT NULL,
  `type` int(11) NOT NULL DEFAULT '0',
  `item` int(11) NOT NULL DEFAULT '10000',
  PRIMARY KEY (`code`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `pets`
-- ----------------------------

CREATE TABLE `pets` (
  `petid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(13) DEFAULT NULL,
  `level` int(3) unsigned NOT NULL,
  `closeness` int(6) unsigned NOT NULL,
  `fullness` int(3) unsigned NOT NULL,
  `seconds` int(11) NOT NULL DEFAULT '0',
  `flags` smallint(5) NOT NULL DEFAULT '0',
  PRIMARY KEY (`petid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `playernpcs`
-- ----------------------------

CREATE TABLE `playernpcs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(15) NOT NULL,
  `hair` int(11) NOT NULL,
  `face` int(11) NOT NULL,
  `skin` int(11) NOT NULL,
  `x` int(11) NOT NULL DEFAULT '0',
  `y` int(11) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  `scriptid` int(11) NOT NULL,
  `foothold` int(11) NOT NULL,
  `dir` tinyint(1) NOT NULL DEFAULT '0',
  `gender` tinyint(1) NOT NULL DEFAULT '0',
  `pets` varchar(25) DEFAULT '0,0,0',
  PRIMARY KEY (`id`),
  KEY `scriptid` (`scriptid`),
  KEY `playernpcs_ibfk_1` (`charid`),
  CONSTRAINT `playernpcs_ibfk_1` FOREIGN KEY (`charid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `playernpcs_equip`
-- ----------------------------

CREATE TABLE `playernpcs_equip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `npcid` int(11) NOT NULL,
  `equipid` int(11) NOT NULL,
  `equippos` int(11) NOT NULL,
  `charid` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `playernpcs_equip_ibfk_1` (`charid`),
  KEY `playernpcs_equip_ibfk_2` (`npcid`),
  CONSTRAINT `playernpcs_equip_ibfk_1` FOREIGN KEY (`charid`) REFERENCES `characters` (`id`) ON DELETE CASCADE,
  CONSTRAINT `playernpcs_equip_ibfk_2` FOREIGN KEY (`npcid`) REFERENCES `playernpcs` (`scriptid`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `questactions`
-- ----------------------------

CREATE TABLE `questactions` (
  `questactionid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`questactionid`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `questinfo`
-- ----------------------------

CREATE TABLE `questinfo` (
  `questinfoid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `quest` int(6) NOT NULL DEFAULT '0',
  `customData` varchar(555) DEFAULT NULL,
  PRIMARY KEY (`questinfoid`),
  KEY `characterid` (`characterid`),
  CONSTRAINT `questsinfo_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `questrequirements`
-- ----------------------------

CREATE TABLE `questrequirements` (
  `questrequirementid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `questid` int(11) NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT '0',
  `data` blob NOT NULL,
  PRIMARY KEY (`questrequirementid`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `queststatus`
-- ----------------------------

CREATE TABLE `queststatus` (
  `queststatusid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `quest` int(6) NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL DEFAULT '0',
  `forfeited` int(11) NOT NULL DEFAULT '0',
  `customData` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`queststatusid`),
  KEY `characterid` (`characterid`),
  CONSTRAINT `queststatus_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `queststatusmobs`
-- ----------------------------

CREATE TABLE `queststatusmobs` (
  `queststatusmobid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `queststatusid` int(10) unsigned NOT NULL DEFAULT '0',
  `mob` int(11) NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`queststatusmobid`),
  KEY `queststatusid` (`queststatusid`),
  CONSTRAINT `queststatusmobs_ibfk_1` FOREIGN KEY (`queststatusid`) REFERENCES `queststatus` (`queststatusid`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `reactordrops`
-- ----------------------------

CREATE TABLE `reactordrops` (
  `reactordropid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reactorid` int(11) NOT NULL,
  `itemid` int(11) NOT NULL,
  `chance` int(11) NOT NULL,
  `questid` int(5) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`reactordropid`),
  KEY `reactorid` (`reactorid`)
) ENGINE=MyISAM AUTO_INCREMENT=883 DEFAULT CHARSET=big5 PACK_KEYS=1;

-- ----------------------------
-- Table structure for `regrocklocations`
-- ----------------------------

CREATE TABLE `regrocklocations` (
  `trockid` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `mapid` int(11) DEFAULT NULL,
  PRIMARY KEY (`trockid`)
) ENGINE=MyISAM AUTO_INCREMENT=61524 DEFAULT CHARSET=big5;

-- ----------------------------
-- Records of regrocklocations
-- ----------------------------

INSERT INTO `regrocklocations` VALUES ('61523', '4751', '0');
INSERT INTO `regrocklocations` VALUES ('61522', '4751', '0');
INSERT INTO `regrocklocations` VALUES ('61521', '4751', '0');
INSERT INTO `regrocklocations` VALUES ('61520', '4751', '0');
INSERT INTO `regrocklocations` VALUES ('61519', '4751', '0');

-- ----------------------------
-- Table structure for `reports`
-- ----------------------------

CREATE TABLE `reports` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `reporttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `reporterid` int(11) NOT NULL,
  `victimid` int(11) NOT NULL,
  `reason` tinyint(4) NOT NULL,
  `chatlog` text NOT NULL,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for `rings`
-- ----------------------------

CREATE TABLE `rings` (
  `ringid` int(11) NOT NULL AUTO_INCREMENT,
  `partnerRingId` int(11) NOT NULL DEFAULT '0',
  `partnerChrId` int(11) NOT NULL DEFAULT '0',
  `itemid` int(11) NOT NULL DEFAULT '0',
  `partnername` varchar(255) NOT NULL,
  PRIMARY KEY (`ringid`)
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `savedlocations`
-- ----------------------------

CREATE TABLE `savedlocations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL,
  `locationtype` int(11) NOT NULL DEFAULT '0',
  `map` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `savedlocations_ibfk_1` (`characterid`),
  CONSTRAINT `savedlocations_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `shopitems`
-- ----------------------------

CREATE TABLE `shopitems` (
  `shopitemid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `shopid` int(10) unsigned NOT NULL,
  `itemid` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `pitch` int(11) NOT NULL DEFAULT '0',
  `position` int(11) NOT NULL COMMENT 'sort is an arbitrary field designed to give leeway when modifying shops. The lowest number is 104 and it increments by 4 for each item to allow decent space for swapping/inserting/removing items.',
  `reqitem` int(11) NOT NULL,
  `reqitemq` int(11) NOT NULL,
  PRIMARY KEY (`shopitemid`)
) ENGINE=MyISAM AUTO_INCREMENT=20025 DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `shops`
-- ----------------------------

CREATE TABLE `shops` (
  `shopid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `npcid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`shopid`)
) ENGINE=MyISAM AUTO_INCREMENT=10000001 DEFAULT CHARSET=big5;

-- ----------------------------
-- Records of shops
-- ----------------------------

INSERT INTO `shops` VALUES ('1', '11000');
INSERT INTO `shops` VALUES ('2', '11100');
INSERT INTO `shops` VALUES ('3', '21000');
INSERT INTO `shops` VALUES ('4', '1011000');
INSERT INTO `shops` VALUES ('5', '1011001');
INSERT INTO `shops` VALUES ('6', '1011100');
INSERT INTO `shops` VALUES ('7', '1012004');
INSERT INTO `shops` VALUES ('8', '1031000');
INSERT INTO `shops` VALUES ('9', '1031001');
INSERT INTO `shops` VALUES ('10', '1031100');
INSERT INTO `shops` VALUES ('11', '1061001');
INSERT INTO `shops` VALUES ('12', '1061002');
INSERT INTO `shops` VALUES ('13', '1032103');
INSERT INTO `shops` VALUES ('14', '1021001');
INSERT INTO `shops` VALUES ('15', '1021000');
INSERT INTO `shops` VALUES ('16', '1021100');
INSERT INTO `shops` VALUES ('17', '1051000');
INSERT INTO `shops` VALUES ('18', '1051001');
INSERT INTO `shops` VALUES ('19', '1051002');
INSERT INTO `shops` VALUES ('20', '1001100');
INSERT INTO `shops` VALUES ('21', '1001000');
INSERT INTO `shops` VALUES ('22', '1001001');
INSERT INTO `shops` VALUES ('23', '1091002');
INSERT INTO `shops` VALUES ('24', '1091001');
INSERT INTO `shops` VALUES ('25', '1091000');
INSERT INTO `shops` VALUES ('26', '1100002');
INSERT INTO `shops` VALUES ('27', '1100001');
INSERT INTO `shops` VALUES ('28', '1301000');
INSERT INTO `shops` VALUES ('29', '1200001');
INSERT INTO `shops` VALUES ('30', '1200002');
INSERT INTO `shops` VALUES ('31', '2051000');
INSERT INTO `shops` VALUES ('32', '2050003');
INSERT INTO `shops` VALUES ('33', '2040049');
INSERT INTO `shops` VALUES ('34', '1052104');
INSERT INTO `shops` VALUES ('35', '2022002');
INSERT INTO `shops` VALUES ('36', '2080003');
INSERT INTO `shops` VALUES ('37', '2070001');
INSERT INTO `shops` VALUES ('38', '2070003');
INSERT INTO `shops` VALUES ('39', '2070002');
INSERT INTO `shops` VALUES ('40', '2060004');
INSERT INTO `shops` VALUES ('41', '2060003');
INSERT INTO `shops` VALUES ('42', '2060007');
INSERT INTO `shops` VALUES ('43', '2080001');
INSERT INTO `shops` VALUES ('44', '2080004');
INSERT INTO `shops` VALUES ('45', '2080002');
INSERT INTO `shops` VALUES ('46', '2090006');
INSERT INTO `shops` VALUES ('47', '2090001');
INSERT INTO `shops` VALUES ('48', '2090002');
INSERT INTO `shops` VALUES ('49', '2090003');
INSERT INTO `shops` VALUES ('50', '2093001');
INSERT INTO `shops` VALUES ('51', '2093000');
INSERT INTO `shops` VALUES ('52', '2093002');
INSERT INTO `shops` VALUES ('53', '2100002');
INSERT INTO `shops` VALUES ('54', '2100003');
INSERT INTO `shops` VALUES ('55', '2100004');
INSERT INTO `shops` VALUES ('56', '2110001');
INSERT INTO `shops` VALUES ('57', '9201060');
INSERT INTO `shops` VALUES ('58', '9201059');
INSERT INTO `shops` VALUES ('59', '9201058');
INSERT INTO `shops` VALUES ('60', '9270022');
INSERT INTO `shops` VALUES ('61', '9270027');
INSERT INTO `shops` VALUES ('62', '9270019');
INSERT INTO `shops` VALUES ('63', '9270020');
INSERT INTO `shops` VALUES ('64', '9270065');
INSERT INTO `shops` VALUES ('65', '2130000');
INSERT INTO `shops` VALUES ('66', '2010004');
INSERT INTO `shops` VALUES ('67', '2012004');
INSERT INTO `shops` VALUES ('68', '2012003');
INSERT INTO `shops` VALUES ('69', '2012005');
INSERT INTO `shops` VALUES ('70', '2020001');
INSERT INTO `shops` VALUES ('71', '2022000');
INSERT INTO `shops` VALUES ('72', '2022001');
INSERT INTO `shops` VALUES ('73', '2030009');
INSERT INTO `shops` VALUES ('74', '2041002');
INSERT INTO `shops` VALUES ('75', '2041003');
INSERT INTO `shops` VALUES ('76', '2041006');
INSERT INTO `shops` VALUES ('77', '2041016');
INSERT INTO `shops` VALUES ('78', '9330048');
INSERT INTO `shops` VALUES ('79', '9330047');
INSERT INTO `shops` VALUES ('80', '9330053');
INSERT INTO `shops` VALUES ('81', '9120004');
INSERT INTO `shops` VALUES ('82', '9120019');
INSERT INTO `shops` VALUES ('83', '9120000');
INSERT INTO `shops` VALUES ('84', '9120002');
INSERT INTO `shops` VALUES ('85', '9120001');
INSERT INTO `shops` VALUES ('86', '9110001');
INSERT INTO `shops` VALUES ('87', '9110003');
INSERT INTO `shops` VALUES ('88', '9110006');
INSERT INTO `shops` VALUES ('89', '9110005');
INSERT INTO `shops` VALUES ('90', '9110007');
INSERT INTO `shops` VALUES ('91', '9110004');
INSERT INTO `shops` VALUES ('92', '9330029');
INSERT INTO `shops` VALUES ('93', '9110100');
INSERT INTO `shops` VALUES ('94', '9110102');
INSERT INTO `shops` VALUES ('95', '9270021');

-- ----------------------------
-- Table structure for `skillmacros`
-- ----------------------------

CREATE TABLE `skillmacros` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) NOT NULL DEFAULT '0',
  `position` tinyint(11) NOT NULL DEFAULT '0',
  `skill1` int(11) NOT NULL DEFAULT '0',
  `skill2` int(11) NOT NULL DEFAULT '0',
  `skill3` int(11) NOT NULL DEFAULT '0',
  `name` varchar(60) DEFAULT NULL,
  `shout` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `skills`
-- ----------------------------

CREATE TABLE `skills` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skillid` int(11) NOT NULL DEFAULT '0',
  `characterid` int(11) NOT NULL DEFAULT '0',
  `skilllevel` tinyint(4) NOT NULL DEFAULT '0',
  `masterlevel` tinyint(4) NOT NULL DEFAULT '0',
  `expiration` bigint(20) NOT NULL DEFAULT '-1',
  PRIMARY KEY (`id`),
  KEY `skills_ibfk_1` (`characterid`),
  CONSTRAINT `skills_ibfk_1` FOREIGN KEY (`characterid`) REFERENCES `characters` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Table structure for `skills_cooldowns`
-- ----------------------------

CREATE TABLE `skills_cooldowns` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `charid` int(11) NOT NULL,
  `SkillID` int(11) NOT NULL,
  `length` bigint(20) NOT NULL,
  `StartTime` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `speedruns`
-- ----------------------------

CREATE TABLE `speedruns` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(13) NOT NULL,
  `leader` varchar(13) NOT NULL,
  `timestring` varchar(1024) NOT NULL,
  `time` bigint(20) NOT NULL DEFAULT '0',
  `members` varchar(1024) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `storages`
-- ----------------------------

CREATE TABLE `storages` (
  `storageid` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `accountid` int(11) NOT NULL DEFAULT '0',
  `slots` int(11) NOT NULL DEFAULT '0',
  `meso` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`storageid`),
  KEY `accountid` (`accountid`),
  CONSTRAINT `storages_ibfk_1` FOREIGN KEY (`accountid`) REFERENCES `accounts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `trocklocations`
-- ----------------------------

CREATE TABLE `trocklocations` (
  `trockid` int(11) NOT NULL AUTO_INCREMENT,
  `characterid` int(11) DEFAULT NULL,
  `mapid` int(11) DEFAULT NULL,
  PRIMARY KEY (`trockid`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `uselog`
-- ----------------------------

CREATE TABLE `uselog` (
  `account` varchar(255) DEFAULT NULL,
  `ip` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `usetype` varchar(255) DEFAULT NULL,
  `active` varchar(255) DEFAULT NULL,
  `newpassword` varchar(255) DEFAULT NULL,
  `oldpassword` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `wishlist`
-- ----------------------------

CREATE TABLE `wishlist` (
  `characterid` int(11) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=big5 ROW_FORMAT=DEFAULT;

-- ----------------------------
-- Table structure for `wz_mobskilldata`
-- ----------------------------

CREATE TABLE `wz_mobskilldata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `skillid` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `hp` int(11) NOT NULL DEFAULT '100',
  `mpcon` int(11) NOT NULL DEFAULT '0',
  `x` int(11) NOT NULL DEFAULT '1',
  `y` int(11) NOT NULL DEFAULT '1',
  `time` int(11) NOT NULL DEFAULT '0',
  `prop` int(11) NOT NULL DEFAULT '100',
  `limit` int(11) NOT NULL DEFAULT '0',
  `spawneffect` int(11) NOT NULL DEFAULT '0',
  `interval` int(11) NOT NULL DEFAULT '0',
  `summons` varchar(1024) NOT NULL DEFAULT '',
  `ltx` int(11) NOT NULL DEFAULT '0',
  `lty` int(11) NOT NULL DEFAULT '0',
  `rbx` int(11) NOT NULL DEFAULT '0',
  `rby` int(11) NOT NULL DEFAULT '0',
  `once` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4762 DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `wz_oxdata`
-- ----------------------------

CREATE TABLE `wz_oxdata` (
  `questionset` smallint(6) NOT NULL DEFAULT '0',
  `questionid` smallint(6) NOT NULL DEFAULT '0',
  `question` varchar(200) NOT NULL DEFAULT '',
  `display` varchar(200) NOT NULL DEFAULT '',
  `answer` enum('o','x') NOT NULL,
  PRIMARY KEY (`questionset`,`questionid`)
) ENGINE=MyISAM DEFAULT CHARSET=big5;

-- ----------------------------
-- Table structure for `zaksquads`
-- ----------------------------

CREATE TABLE `zaksquads` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `channel` int(10) unsigned NOT NULL,
  `leaderid` int(10) unsigned NOT NULL DEFAULT '0',
  `status` int(10) unsigned NOT NULL DEFAULT '0',
  `members` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=big5;

-- ----------------------------
-- View structure for `readable_cheatlog`
-- ----------------------------

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `readable_cheatlog` AS select `a`.`name` AS `accountname`,`a`.`id` AS `accountid`,`c`.`name` AS `name`,`c`.`id` AS `characterid`,`cl`.`offense` AS `offense`,`cl`.`count` AS `count`,`cl`.`lastoffensetime` AS `lastoffensetime`,`cl`.`param` AS `param` from ((`cheatlog` `cl` join `characters` `c`) join `accounts` `a`) where ((`cl`.`id` = `c`.`id`) and (`a`.`id` = `c`.`accountid`) and (`a`.`banned` = 0)) ;

-- ----------------------------
-- View structure for `readable_last_hour_cheatlog`
-- ----------------------------

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `readable_last_hour_cheatlog` AS select `a`.`name` AS `accountname`,`a`.`id` AS `accountid`,`c`.`name` AS `name`,`c`.`id` AS `characterid`,sum(`cl`.`count`) AS `numrepos` from ((`cheatlog` `cl` join `characters` `c`) join `accounts` `a`) where ((`cl`.`id` = `c`.`id`) and (`a`.`id` = `c`.`accountid`) and (timestampdiff(HOUR,`cl`.`lastoffensetime`,now()) < 1) and (`a`.`banned` = 0)) group by `cl`.`id` order by sum(`cl`.`count`) desc ;
