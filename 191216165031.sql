/*
MySQL Backup
Source Server Version: 5.7.17
Source Database: rznews
Date: 2019/12/16 16:50:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
--  Table structure for `fankui`
-- ----------------------------
DROP TABLE IF EXISTS `fankui`;
CREATE TABLE `fankui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fkquestion` varchar(255) DEFAULT NULL,
  `fktime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbdingdan`
-- ----------------------------
DROP TABLE IF EXISTS `tbdingdan`;
CREATE TABLE `tbdingdan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sanname` varchar(255) DEFAULT NULL,
  `sannum` varchar(255) DEFAULT NULL,
  `sansex` varchar(255) DEFAULT NULL,
  `sanplatform` varchar(255) DEFAULT NULL,
  `sanaddress` varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  `sanfile` varchar(255) DEFAULT NULL,
  `sanprojest` varchar(255) DEFAULT NULL,
  `santext` varchar(255) DEFAULT NULL,
  `santime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbfabu`
-- ----------------------------
DROP TABLE IF EXISTS `tbfabu`;
CREATE TABLE `tbfabu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `imgurl` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbfankui`
-- ----------------------------
DROP TABLE IF EXISTS `tbfankui`;
CREATE TABLE `tbfankui` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fankuitext` varchar(255) DEFAULT NULL,
  `fankuipicture` varchar(255) DEFAULT NULL,
  `fankuiqq` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbguestbook`
-- ----------------------------
DROP TABLE IF EXISTS `tbguestbook`;
CREATE TABLE `tbguestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `isshow` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbhtfabu`
-- ----------------------------
DROP TABLE IF EXISTS `tbhtfabu`;
CREATE TABLE `tbhtfabu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `touxiang` varchar(255) DEFAULT '',
  `nicheng` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `yearold` varchar(255) DEFAULT NULL,
  `dongtai` varchar(255) DEFAULT NULL,
  `fbtime` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbhzhuce`
-- ----------------------------
DROP TABLE IF EXISTS `tbhzhuce`;
CREATE TABLE `tbhzhuce` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sanuser` varchar(255) DEFAULT NULL,
  `sanpassword` varchar(255) DEFAULT NULL,
  `sansure` varchar(255) DEFAULT NULL,
  `sanname` varchar(255) DEFAULT NULL,
  `sansex` varchar(255) DEFAULT NULL,
  `sanbs` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbmember`
-- ----------------------------
DROP TABLE IF EXISTS `tbmember`;
CREATE TABLE `tbmember` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `loginname` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbnews`
-- ----------------------------
DROP TABLE IF EXISTS `tbnews`;
CREATE TABLE `tbnews` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `createtime` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `typied` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tborderhead`
-- ----------------------------
DROP TABLE IF EXISTS `tborderhead`;
CREATE TABLE `tborderhead` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `sname` varchar(255) DEFAULT NULL,
  `stel` varchar(255) DEFAULT NULL,
  `saddress` varchar(255) DEFAULT NULL,
  `sumprice` decimal(11,0) DEFAULT '0',
  `memberid` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tborderitems`
-- ----------------------------
DROP TABLE IF EXISTS `tborderitems`;
CREATE TABLE `tborderitems` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderid` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `imgurl` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbpiclist`
-- ----------------------------
DROP TABLE IF EXISTS `tbpiclist`;
CREATE TABLE `tbpiclist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `contents` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbproduct`
-- ----------------------------
DROP TABLE IF EXISTS `tbproduct`;
CREATE TABLE `tbproduct` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `proname` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `brief` varchar(255) DEFAULT NULL,
  `descriptions` text,
  `address` varchar(255) DEFAULT NULL,
  `istop` int(11) DEFAULT '0',
  `isstar` int(11) DEFAULT '0',
  `imgurl` varchar(255) DEFAULT NULL,
  `typeid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbshoppingcar`
-- ----------------------------
DROP TABLE IF EXISTS `tbshoppingcar`;
CREATE TABLE `tbshoppingcar` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sessionid` varchar(32) DEFAULT NULL,
  `proname` varchar(255) DEFAULT NULL,
  `proid` int(11) DEFAULT NULL,
  `procount` int(11) DEFAULT NULL,
  `ctime` varchar(255) DEFAULT NULL,
  `imgurl` varchar(255) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbusername`
-- ----------------------------
DROP TABLE IF EXISTS `tbusername`;
CREATE TABLE `tbusername` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Table structure for `tbusers`
-- ----------------------------
DROP TABLE IF EXISTS `tbusers`;
CREATE TABLE `tbusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `truename` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
--  Records 
-- ----------------------------
INSERT INTO `fankui` VALUES ('1','某空','2019-12-16 15:47:09'), ('2','也特特鲁','2019-12-16 16:45:36');
INSERT INTO `tbdingdan` VALUES ('1','1','2','3','4','5','6','7','8','2019-11-21 17:02:54'), ('2','1','2','3','4','5','6','7','8','2019-11-21 17:04:09'), ('3','1','2','3','4','5','6','7','8','2019-11-21 17:04:22'), ('4','1','2','3','4','5','6','7','8','2019-11-21 17:04:26'), ('5','','','男','iOS手机平台','','','大一','','2019-11-27 11:41:38'), ('6','','','男','iOS手机平台','','','大一','','2019-11-27 11:43:40'), ('7','哦哦','123456789','女','iOS手机平台','重庆','','大一','滴滴滴','2019-11-27 11:45:23'), ('8','陈梦','15696317445','男','iOS手机平台','融智','','a','你好','2019-12-16 12:57:26'), ('9','','','男','iOS手机平台','','','a','','2019-12-16 13:03:53'), ('10','','','男','iOS手机平台','','','a','','2019-12-16 13:03:57'), ('11','','','男','iOS手机平台','','','a','','2019-12-16 13:04:28'), ('12','豆腐','','男','iOS手机平台','','','a','','2019-12-16 14:52:30'), ('13','舒服','热了','男','iOS手机平台','','','a','','2019-12-16 14:53:02'), ('14','','','男','iOS手机平台','','','a','','2019-12-16 14:53:35'), ('15','没课','扣分','女','安卓手机平台','磕头机','','a','捡垃圾','2019-12-16 15:32:51'), ('16','。？？？','11111','女','iOS手机平台','','','a','','2019-12-16 16:45:16');
INSERT INTO `tbfabu` VALUES ('16','阿东','20191216163600008.png','2019-12-16 16:36:08');
INSERT INTO `tbguestbook` VALUES ('18',NULL,NULL,NULL,'2019-11-28 14:16:31',NULL), ('19',NULL,NULL,NULL,'2019-11-28 15:50:12',NULL), ('20',NULL,NULL,NULL,'2019-12-11 11:03:29',NULL), ('21',NULL,NULL,NULL,'2019-12-11 11:04:39',NULL), ('22',NULL,NULL,NULL,'2019-12-16 12:51:20',NULL);
INSERT INTO `tbhtfabu` VALUES ('1','t1.jpg','貂蝉','xingbienv.png','17','d1.jpeg','2019-11-27','1'), ('2','t2.jpg','亚瑟','xingbienan.png','23','t16.jpg','2019-11-27','1'), ('3','t3.jpg','高娱','xingbienv.png','19','d2.jpeg','2019-11-27','1'), ('4','t9.jpg','王昭君','xingbienv.png','23','d4.jpeg','2019-11-28','2'), ('5','d6.jpg','芷梦','xingbienv.png','21','d18.jpeg','2019-11-28','2'), ('6','t11.jpg','天蓉','xingbienv.png','21','d10.jpeg','2019-11-28','3'), ('7','t6.jpg','觅雪','xingbienv.png','23','d11.jpeg','2019-11-28','4'), ('8','t15.jpg','小乔','xingbienv.png','23','d9.jpeg','2019-11-28','4'), ('9','t7.jpg','大乔','xingbienv.png','24','d8.jpeg','2019-11-28','4'), ('10','t5.jpg','莫邪','xingbienv.png','24','d7.jpeg','2019-11-28','5'), ('11','t10.jpg','蔡文姬','xingbienv.png','23','d14.jpeg','2019-11-28','3'), ('12','t13.jpg','孙膑','xingbienv.png','21','d13.jpg','2019-11-28','5'), ('13','t6.jpg','琪琪','xingbienv.png','22','d10.jpeg','2019-12-15','5'), ('14','t13.jpg','Gini','xingbienv.png','23','d18.jpeg','2019-12-15','1');
INSERT INTO `tbhzhuce` VALUES ('1','666','999','999','哦哦','男','年-'), ('2','666','999','999','哦哦','男','年-'), ('3','66666666','55555555',NULL,NULL,NULL,NULL), ('4','','','','','男','年--月--日-'), ('5','999999','111111','111111','哦哦','男','2013-March-1'), ('6','1111','123456','123456','吧','男','年--月--日-'), ('7','111111','111111','111111','。。。。。','男','2016-May-5'), ('8','333333','123456','123456','666','男','年--月--日-');
INSERT INTO `tbmember` VALUES ('1','user1','123456','王刚','1590000111x','重庆市巴南区学堂湾'), ('2','user2','123456','李冰','1590000112x','重庆市巴南区渔胡路'), ('3','user3','123456','霄凌','1590000113x','重庆市巴南区九公里'), ('4','user5','123456','伍思凯','15900000001','成都市高新区XX路3-3-2'), ('5','18161412030','111111',NULL,NULL,NULL), ('6','12345678','123456',NULL,NULL,NULL), ('7','12345678','12345678',NULL,NULL,NULL), ('9','121212','121212','121212',NULL,NULL), ('10','affs99887','99811laixin','affs99887',NULL,NULL), ('12','admin1234','123456','admin1234',NULL,NULL), ('13','zengwr','z81343510','zengwr',NULL,NULL), ('14','safdsafafd','123456789','safdsafafd',NULL,NULL), ('15','sdasjkhndkjashdj','123456','sdasjkhndkjashdj',NULL,NULL), ('16','user123','laixin1999','你好世界','123456789','重庆市');
INSERT INTO `tbnews` VALUES ('1','2a','3a','4a','1a','5a','6a');
INSERT INTO `tbpiclist` VALUES ('9','图1','20181021173243296.png','图1'), ('10','图2','20181021173302314.jpg','图2'), ('11','图3','20181021173311096.jpg','图3'), ('12','图4','20181021173320054.jpg','图4'), ('13','图5','20181021173328386.jpg','图5'), ('14','图6','20181021173338259.jpg','图6'), ('15','','20181123100956628.jpeg','');
INSERT INTO `tbshoppingcar` VALUES ('58','A92876B4BBF3A9E38E00D40D883063EA','小米 max3','7','1','2018-11-26 17:17:17','20181123124629005.png','3200'), ('59','6D445F5710B427EF7C34043BAF3FB126','小米 max3','4','1','2018-11-26 17:41:09','20181123101820838.jpeg','100'), ('60','EB28D917D7249D0C8AB032C62201B80D','小米 max3  1','14','1','2018-11-26 20:15:44','20181126174617876.png','2222'), ('64','879250E480E06558AF2083522DF34DD9','OnePlus 6','71','1','2018-12-19 17:39:00','20181219170004752.png','299'), ('65','2E0DAF8BD1DBACEC2DB6A49733865817','小米MIX 3','69','1','2018-12-19 18:02:12','20181219165237961.jpg','3299'), ('66','85ACFA4B313ABEC338A4EEEFB8AA1788','ZMI 苹果编织数据线','59','1','2019-01-10 18:47:32','20181218222048419.png','59'), ('67','85ACFA4B313ABEC338A4EEEFB8AA1788','小米8','70','1','2019-01-10 18:47:41','20181219165458517.jpg','2499'), ('68','B103BB27EAE88D3725C18A333128992B','小米MIX 3','69','1','2019-02-09 02:09:16','20181219165237961.jpg','3299');
INSERT INTO `tbusername` VALUES ('2','user1','123456');
INSERT INTO `tbusers` VALUES ('1','武林',NULL,NULL);
