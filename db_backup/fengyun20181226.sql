/*
Navicat MySQL Data Transfer

Source Server         : fengyun
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : fengyun2

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2018-12-26 23:49:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for animals
-- ----------------------------
DROP TABLE IF EXISTS `animals`;
CREATE TABLE `animals` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aniName` varchar(50) DEFAULT NULL,
  `aniCnName` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of animals
-- ----------------------------
INSERT INTO `animals` VALUES ('1', 'ma', '马');
INSERT INTO `animals` VALUES ('2', 'hudie', '蝴蝶');
INSERT INTO `animals` VALUES ('3', 'jinlong', '金龙');
INSERT INTO `animals` VALUES ('4', 'yemao', '野猫');
INSERT INTO `animals` VALUES ('5', 'nigu', '尼姑');
INSERT INTO `animals` VALUES ('6', 'ji', '鸡');
INSERT INTO `animals` VALUES ('7', 'jinyu', '金鱼');
INSERT INTO `animals` VALUES ('8', 'malu', '马鹿');
INSERT INTO `animals` VALUES ('9', 'xianhe', '仙鹤');
INSERT INTO `animals` VALUES ('10', 'wugui', '乌龟');
INSERT INTO `animals` VALUES ('11', 'wuya', '乌鸦');
INSERT INTO `animals` VALUES ('12', 'daxiang', '大象');
INSERT INTO `animals` VALUES ('13', 'zhizhu', '蜘蛛');
INSERT INTO `animals` VALUES ('14', 'she', '蛇');
INSERT INTO `animals` VALUES ('15', 'kongque', '孔雀');
INSERT INTO `animals` VALUES ('16', 'laohu', '老虎');
INSERT INTO `animals` VALUES ('17', 'dae', '大鹅');
INSERT INTO `animals` VALUES ('18', 'yanzi', '燕子');
INSERT INTO `animals` VALUES ('19', 'houzi', '猴子');
INSERT INTO `animals` VALUES ('20', 'zhu', '猪');
INSERT INTO `animals` VALUES ('21', 'luoshi', '螺蛳');
INSERT INTO `animals` VALUES ('22', 'gou', '狗');
INSERT INTO `animals` VALUES ('23', 'tuzi', '兔子');
INSERT INTO `animals` VALUES ('24', 'feilong', '飞龙');
INSERT INTO `animals` VALUES ('25', 'jiamao', '家猫');
INSERT INTO `animals` VALUES ('26', 'pangxie', '螃蟹');
INSERT INTO `animals` VALUES ('27', 'niu', '牛');
INSERT INTO `animals` VALUES ('28', 'yang', '羊');
INSERT INTO `animals` VALUES ('29', 'baiyu', '白鱼');
INSERT INTO `animals` VALUES ('30', 'qiuyin', '蚯蚓');
INSERT INTO `animals` VALUES ('31', 'gezi', '鸽子');
INSERT INTO `animals` VALUES ('32', 'qingwa', '青蛙');
INSERT INTO `animals` VALUES ('33', 'baoshi', '宝石');
INSERT INTO `animals` VALUES ('34', 'mifeng', '蜜蜂');
INSERT INTO `animals` VALUES ('35', 'shanyu', '鳝鱼');
INSERT INTO `animals` VALUES ('36', 'laoshu', '老鼠');

-- ----------------------------
-- Table structure for authority
-- ----------------------------
DROP TABLE IF EXISTS `authority`;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `authName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of authority
-- ----------------------------
INSERT INTO `authority` VALUES ('1', '充点数');
INSERT INTO `authority` VALUES ('2', '设置开奖动物');
INSERT INTO `authority` VALUES ('3', '设置开奖时间/倍率');
INSERT INTO `authority` VALUES ('4', '添加用户');
INSERT INTO `authority` VALUES ('5', '用户设置');
INSERT INTO `authority` VALUES ('6', '添加地点');
INSERT INTO `authority` VALUES ('7', '修改地点');
INSERT INTO `authority` VALUES ('8', '增加动物');
INSERT INTO `authority` VALUES ('9', '动物封注');
INSERT INTO `authority` VALUES ('10', '查看实时买入数据');
INSERT INTO `authority` VALUES ('11', '设置场次最高点数');
INSERT INTO `authority` VALUES ('12', '设置公告');
INSERT INTO `authority` VALUES ('13', '设置管理员权限');
INSERT INTO `authority` VALUES ('14', '设置地点题目');
INSERT INTO `authority` VALUES ('15', '提点');
INSERT INTO `authority` VALUES ('16', '设置地点');
INSERT INTO `authority` VALUES ('17', '查看用户');
INSERT INTO `authority` VALUES ('18', '查看地点');

-- ----------------------------
-- Table structure for buy
-- ----------------------------
DROP TABLE IF EXISTS `buy`;
CREATE TABLE `buy` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uId` int(11) DEFAULT NULL,
  `uName` varchar(50) DEFAULT NULL,
  `placeId` int(11) DEFAULT NULL,
  `sessionId` int(11) DEFAULT NULL,
  `sessionName` varchar(100) DEFAULT NULL,
  `detail` varchar(2500) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `balance` float(100,2) DEFAULT NULL,
  `buildTime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of buy
-- ----------------------------
INSERT INTO `buy` VALUES ('36', '87', 'yt', '12', '390', '邦伞上场[2018-08-15]', '[{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":null,\"count\":100},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":null,\"count\":200}]', '300', '99700.00', '2018-08-15 15:23:07');
INSERT INTO `buy` VALUES ('37', '94', '杨小哥', '12', '403', '邦伞中场[2018-08-19]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"10\",\"count\":10},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":null,\"count\":20},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"50\",\"count\":50},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"20\",\"count\":20},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"50\",\"count\":50},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"20\",\"count\":20},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"20\",\"count\":20},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"20\",\"count\":20}]', '210', '99790.00', '2018-08-19 22:40:12');
INSERT INTO `buy` VALUES ('38', '94', '杨小哥', '12', '405', '邦伞上场[2018-08-20]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"20\",\"count\":20},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":null,\"count\":20},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":null,\"count\":30},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"50\",\"count\":50},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"50\",\"count\":50},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"20\",\"count\":20},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"20\",\"count\":20},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"20\",\"count\":20},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"20\",\"count\":20}]', '250', '99540.00', '2018-08-20 15:34:14');
INSERT INTO `buy` VALUES ('39', '94', '杨小哥', '12', '408', '邦伞上场[2018-08-21]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"20\",\"count\":20},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"50\",\"count\":50},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"100\",\"count\":100},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"30\",\"count\":30},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"20\",\"count\":20},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"50\",\"count\":50},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"20\",\"count\":20},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":null,\"count\":20},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"30\",\"count\":30}]', '340', '99200.00', '2018-08-21 15:19:45');
INSERT INTO `buy` VALUES ('40', '94', '杨小哥', '12', '411', '邦伞上场[2018-08-22]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":null,\"count\":100},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":null,\"count\":20},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":null,\"count\":30},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":null,\"count\":50},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":null,\"count\":100}]', '300', '98900.00', '2018-08-22 15:12:12');
INSERT INTO `buy` VALUES ('41', '94', '杨小哥', '12', '414', '邦伞上场[2018-08-23]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":null,\"count\":100},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":null,\"count\":50},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":null,\"count\":100},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":null,\"count\":50},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":null,\"count\":200}]', '500', '98400.00', '2018-08-23 15:40:33');
INSERT INTO `buy` VALUES ('42', '81', 'cc', '13', '462', '南邓上场[2018-09-03]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"712\",\"count\":711},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"366\",\"count\":366},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"200\",\"count\":200},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"300\",\"count\":300},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"80\",\"count\":80},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"1000\",\"count\":1000},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"1000\",\"count\":1000}]', '9657', '49989840.00', '2018-09-03 22:03:16');
INSERT INTO `buy` VALUES ('43', '81', 'cc', '12', '463', '邦伞上场[2018-09-03]', '[{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":null,\"count\":500}]', '500', '49989840.00', '2018-09-03 22:02:15');

-- ----------------------------
-- Table structure for charge
-- ----------------------------
DROP TABLE IF EXISTS `charge`;
CREATE TABLE `charge` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(20) DEFAULT NULL,
  `count` float(11,2) DEFAULT NULL,
  `balance` float(11,0) DEFAULT NULL,
  `chargeTime` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of charge
-- ----------------------------

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `msg_status` int(11) DEFAULT NULL COMMENT '0：未读   1： 已读',
  `content` text,
  `msg_to` int(10) DEFAULT NULL COMMENT 'uid, 消息发送给哪个用户',
  `datetime` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=746 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('514', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-07-30 22:38:36');
INSERT INTO `message` VALUES ('515', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-07-31 13:00:00');
INSERT INTO `message` VALUES ('516', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-01 13:00:00');
INSERT INTO `message` VALUES ('517', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-02 13:00:00');
INSERT INTO `message` VALUES ('518', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-03 13:00:00');
INSERT INTO `message` VALUES ('519', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-04 13:00:00');
INSERT INTO `message` VALUES ('520', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-05 13:00:00');
INSERT INTO `message` VALUES ('521', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-06 13:00:00');
INSERT INTO `message` VALUES ('522', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-07 13:00:00');
INSERT INTO `message` VALUES ('523', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-08 13:00:00');
INSERT INTO `message` VALUES ('524', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-09 13:00:00');
INSERT INTO `message` VALUES ('525', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-10 13:00:00');
INSERT INTO `message` VALUES ('526', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-11 13:00:00');
INSERT INTO `message` VALUES ('527', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-12 13:00:00');
INSERT INTO `message` VALUES ('528', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-13 13:00:00');
INSERT INTO `message` VALUES ('529', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-14 13:00:00');
INSERT INTO `message` VALUES ('530', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-14 16:35:01');
INSERT INTO `message` VALUES ('531', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-14 23:33:31');
INSERT INTO `message` VALUES ('532', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-15 11:00:32');
INSERT INTO `message` VALUES ('533', '0', '充值成功，入账 100000 点', '87', '2018-08-15 15:21:38');
INSERT INTO `message` VALUES ('534', '0', '您下注的邦伞上场[2018-08-15]已开奖！', '87', '2018-08-15 17:02:18');
INSERT INTO `message` VALUES ('535', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-15 17:02:18');
INSERT INTO `message` VALUES ('536', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-15 23:40:06');
INSERT INTO `message` VALUES ('537', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-16 11:33:11');
INSERT INTO `message` VALUES ('538', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-16 16:38:30');
INSERT INTO `message` VALUES ('539', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-16 23:49:25');
INSERT INTO `message` VALUES ('540', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-17 11:51:20');
INSERT INTO `message` VALUES ('541', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-17 16:43:45');
INSERT INTO `message` VALUES ('542', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-17 23:34:38');
INSERT INTO `message` VALUES ('543', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-18 11:36:25');
INSERT INTO `message` VALUES ('544', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-18 16:55:04');
INSERT INTO `message` VALUES ('545', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-18 23:44:03');
INSERT INTO `message` VALUES ('546', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-19 10:38:15');
INSERT INTO `message` VALUES ('547', '1', '充值成功，入账 100000 点', '94', '2018-08-19 16:14:18');
INSERT INTO `message` VALUES ('548', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-19 16:38:42');
INSERT INTO `message` VALUES ('549', '1', '您下注的邦伞中场[2018-08-19]已开奖！', '94', '2018-08-19 23:45:56');
INSERT INTO `message` VALUES ('550', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-19 23:45:57');
INSERT INTO `message` VALUES ('551', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-20 10:50:07');
INSERT INTO `message` VALUES ('552', '1', '您下注的邦伞上场[2018-08-20]已开奖！', '94', '2018-08-20 16:56:34');
INSERT INTO `message` VALUES ('553', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-20 16:56:34');
INSERT INTO `message` VALUES ('554', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-20 23:41:59');
INSERT INTO `message` VALUES ('555', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-21 10:36:47');
INSERT INTO `message` VALUES ('556', '1', '您下注的邦伞上场[2018-08-21]已开奖！', '94', '2018-08-21 18:03:02');
INSERT INTO `message` VALUES ('557', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-21 18:03:02');
INSERT INTO `message` VALUES ('558', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-21 23:34:28');
INSERT INTO `message` VALUES ('559', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-22 10:55:13');
INSERT INTO `message` VALUES ('560', '1', '您下注的邦伞上场[2018-08-22]已开奖！', '94', '2018-08-22 16:35:25');
INSERT INTO `message` VALUES ('561', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-22 16:35:25');
INSERT INTO `message` VALUES ('562', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-22 23:38:26');
INSERT INTO `message` VALUES ('563', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-23 10:40:59');
INSERT INTO `message` VALUES ('564', '0', '您下注的邦伞上场[2018-08-23]已开奖！', '94', '2018-08-23 16:55:21');
INSERT INTO `message` VALUES ('565', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-23 16:55:21');
INSERT INTO `message` VALUES ('566', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-24 00:33:04');
INSERT INTO `message` VALUES ('567', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-24 11:11:39');
INSERT INTO `message` VALUES ('568', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-24 16:37:13');
INSERT INTO `message` VALUES ('569', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-24 23:39:38');
INSERT INTO `message` VALUES ('570', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-25 02:00:00');
INSERT INTO `message` VALUES ('571', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-25 11:26:21');
INSERT INTO `message` VALUES ('572', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-25 16:46:29');
INSERT INTO `message` VALUES ('573', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-08-25 16:47:07');
INSERT INTO `message` VALUES ('574', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-08-25 19:16:21');
INSERT INTO `message` VALUES ('575', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-25 23:59:46');
INSERT INTO `message` VALUES ('576', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-08-26 08:45:19');
INSERT INTO `message` VALUES ('577', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-26 10:58:02');
INSERT INTO `message` VALUES ('578', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-08-26 16:37:48');
INSERT INTO `message` VALUES ('579', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-26 16:38:11');
INSERT INTO `message` VALUES ('580', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-08-26 19:02:57');
INSERT INTO `message` VALUES ('581', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-26 23:41:39');
INSERT INTO `message` VALUES ('582', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-08-27 00:05:52');
INSERT INTO `message` VALUES ('583', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-27 10:37:15');
INSERT INTO `message` VALUES ('584', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-27 16:36:11');
INSERT INTO `message` VALUES ('585', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-08-27 17:35:57');
INSERT INTO `message` VALUES ('586', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-08-27 19:07:51');
INSERT INTO `message` VALUES ('587', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-28 00:05:39');
INSERT INTO `message` VALUES ('588', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-08-28 00:05:53');
INSERT INTO `message` VALUES ('589', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-28 12:12:37');
INSERT INTO `message` VALUES ('590', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-08-28 17:06:40');
INSERT INTO `message` VALUES ('591', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-28 17:07:04');
INSERT INTO `message` VALUES ('592', '0', '充值成功，入账 100000 点', '92', '2018-08-28 22:57:33');
INSERT INTO `message` VALUES ('593', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-28 23:36:16');
INSERT INTO `message` VALUES ('594', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-08-29 00:15:28');
INSERT INTO `message` VALUES ('595', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-29 10:40:15');
INSERT INTO `message` VALUES ('596', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-08-29 10:40:47');
INSERT INTO `message` VALUES ('597', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-08-29 16:09:32');
INSERT INTO `message` VALUES ('598', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-29 16:46:13');
INSERT INTO `message` VALUES ('599', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-08-29 20:35:01');
INSERT INTO `message` VALUES ('600', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-08-29 23:35:21');
INSERT INTO `message` VALUES ('601', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-08-30 00:03:49');
INSERT INTO `message` VALUES ('602', '1', '邦伞上场已生成，请及时设置开奖信息！', '1', '2018-08-30 10:41:07');
INSERT INTO `message` VALUES ('603', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-08-30 17:45:33');
INSERT INTO `message` VALUES ('604', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-08-30 17:46:03');
INSERT INTO `message` VALUES ('605', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-31 01:59:59');
INSERT INTO `message` VALUES ('606', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-08-31 13:00:00');
INSERT INTO `message` VALUES ('607', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-01 13:00:00');
INSERT INTO `message` VALUES ('608', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-02 13:00:00');
INSERT INTO `message` VALUES ('609', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-03 13:00:00');
INSERT INTO `message` VALUES ('610', '0', '充值成功，入账 50000000 点', '81', '2018-09-03 21:54:01');
INSERT INTO `message` VALUES ('611', '0', '充值成功，入账 5000 点', '81', '2018-09-03 22:09:14');
INSERT INTO `message` VALUES ('612', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-04 13:00:00');
INSERT INTO `message` VALUES ('613', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-05 13:00:00');
INSERT INTO `message` VALUES ('614', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-06 13:00:00');
INSERT INTO `message` VALUES ('615', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-07 13:00:00');
INSERT INTO `message` VALUES ('616', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-08 13:00:00');
INSERT INTO `message` VALUES ('617', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-09 13:00:00');
INSERT INTO `message` VALUES ('618', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-10 13:00:00');
INSERT INTO `message` VALUES ('619', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-09-11 00:57:38');
INSERT INTO `message` VALUES ('620', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-11 13:00:00');
INSERT INTO `message` VALUES ('621', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-09-11 16:29:59');
INSERT INTO `message` VALUES ('622', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-09-11 16:40:15');
INSERT INTO `message` VALUES ('623', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-09-12 03:14:08');
INSERT INTO `message` VALUES ('624', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-09-12 03:14:36');
INSERT INTO `message` VALUES ('625', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-12 13:00:00');
INSERT INTO `message` VALUES ('626', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-13 13:00:00');
INSERT INTO `message` VALUES ('627', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-14 13:00:00');
INSERT INTO `message` VALUES ('628', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-15 13:00:00');
INSERT INTO `message` VALUES ('629', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-16 13:00:00');
INSERT INTO `message` VALUES ('630', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-09-16 16:37:05');
INSERT INTO `message` VALUES ('631', '1', '邦伞中场已生成，请及时设置开奖信息！', '1', '2018-09-16 16:37:26');
INSERT INTO `message` VALUES ('632', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-09-16 19:05:41');
INSERT INTO `message` VALUES ('633', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-09-17 00:23:27');
INSERT INTO `message` VALUES ('634', '1', '邦伞下场已生成，请及时设置开奖信息！', '1', '2018-09-17 00:23:55');
INSERT INTO `message` VALUES ('635', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-17 13:00:00');
INSERT INTO `message` VALUES ('636', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-18 13:00:00');
INSERT INTO `message` VALUES ('637', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-19 13:00:00');
INSERT INTO `message` VALUES ('638', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-20 13:00:00');
INSERT INTO `message` VALUES ('639', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-21 13:00:00');
INSERT INTO `message` VALUES ('640', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-22 13:00:00');
INSERT INTO `message` VALUES ('641', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-23 13:00:00');
INSERT INTO `message` VALUES ('642', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-24 13:00:00');
INSERT INTO `message` VALUES ('643', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-25 13:00:00');
INSERT INTO `message` VALUES ('644', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-26 13:00:00');
INSERT INTO `message` VALUES ('645', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-27 13:00:00');
INSERT INTO `message` VALUES ('646', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-28 13:00:00');
INSERT INTO `message` VALUES ('647', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-29 13:00:00');
INSERT INTO `message` VALUES ('648', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-09-30 13:00:00');
INSERT INTO `message` VALUES ('649', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-01 13:00:00');
INSERT INTO `message` VALUES ('650', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-02 13:00:00');
INSERT INTO `message` VALUES ('651', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-03 13:00:00');
INSERT INTO `message` VALUES ('652', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-04 13:00:00');
INSERT INTO `message` VALUES ('653', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-05 13:00:00');
INSERT INTO `message` VALUES ('654', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-06 13:00:00');
INSERT INTO `message` VALUES ('655', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-07 13:00:00');
INSERT INTO `message` VALUES ('656', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-08 13:00:00');
INSERT INTO `message` VALUES ('657', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-09 13:00:00');
INSERT INTO `message` VALUES ('658', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-10 13:00:00');
INSERT INTO `message` VALUES ('659', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-11 13:00:00');
INSERT INTO `message` VALUES ('660', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-12 13:00:00');
INSERT INTO `message` VALUES ('661', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-13 13:00:00');
INSERT INTO `message` VALUES ('662', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-14 13:00:00');
INSERT INTO `message` VALUES ('663', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-15 13:00:00');
INSERT INTO `message` VALUES ('664', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-16 13:00:00');
INSERT INTO `message` VALUES ('665', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-17 13:00:00');
INSERT INTO `message` VALUES ('666', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-18 13:00:00');
INSERT INTO `message` VALUES ('667', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-19 13:00:00');
INSERT INTO `message` VALUES ('668', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-20 13:00:00');
INSERT INTO `message` VALUES ('669', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-21 13:00:00');
INSERT INTO `message` VALUES ('670', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-22 13:00:00');
INSERT INTO `message` VALUES ('671', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-23 13:00:00');
INSERT INTO `message` VALUES ('672', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-24 13:00:00');
INSERT INTO `message` VALUES ('673', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-25 13:00:00');
INSERT INTO `message` VALUES ('674', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-26 13:00:00');
INSERT INTO `message` VALUES ('675', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-27 13:00:00');
INSERT INTO `message` VALUES ('676', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-28 13:00:00');
INSERT INTO `message` VALUES ('677', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-29 13:00:00');
INSERT INTO `message` VALUES ('678', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-30 13:00:00');
INSERT INTO `message` VALUES ('679', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-10-31 13:00:00');
INSERT INTO `message` VALUES ('680', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-01 13:00:00');
INSERT INTO `message` VALUES ('681', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-02 13:00:00');
INSERT INTO `message` VALUES ('682', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-03 13:00:00');
INSERT INTO `message` VALUES ('683', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-04 13:00:00');
INSERT INTO `message` VALUES ('684', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-05 13:00:00');
INSERT INTO `message` VALUES ('685', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-06 13:00:00');
INSERT INTO `message` VALUES ('686', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-07 13:00:00');
INSERT INTO `message` VALUES ('687', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-08 13:00:00');
INSERT INTO `message` VALUES ('688', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-09 13:00:00');
INSERT INTO `message` VALUES ('689', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-10 13:00:00');
INSERT INTO `message` VALUES ('690', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-11 13:00:00');
INSERT INTO `message` VALUES ('691', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-12 13:00:00');
INSERT INTO `message` VALUES ('692', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-13 13:00:00');
INSERT INTO `message` VALUES ('693', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-14 13:00:00');
INSERT INTO `message` VALUES ('694', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-15 13:00:00');
INSERT INTO `message` VALUES ('695', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-16 13:00:00');
INSERT INTO `message` VALUES ('696', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-17 13:00:00');
INSERT INTO `message` VALUES ('697', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-18 13:00:00');
INSERT INTO `message` VALUES ('698', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-19 13:00:00');
INSERT INTO `message` VALUES ('699', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-20 13:00:00');
INSERT INTO `message` VALUES ('700', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-21 13:00:00');
INSERT INTO `message` VALUES ('701', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-22 13:00:00');
INSERT INTO `message` VALUES ('702', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-23 13:00:00');
INSERT INTO `message` VALUES ('703', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-24 13:00:00');
INSERT INTO `message` VALUES ('704', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-25 13:00:00');
INSERT INTO `message` VALUES ('705', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-26 13:00:00');
INSERT INTO `message` VALUES ('706', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-27 13:00:00');
INSERT INTO `message` VALUES ('707', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-28 13:00:00');
INSERT INTO `message` VALUES ('708', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-29 13:00:00');
INSERT INTO `message` VALUES ('709', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-11-30 13:00:00');
INSERT INTO `message` VALUES ('710', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-01 13:00:00');
INSERT INTO `message` VALUES ('711', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-02 13:00:00');
INSERT INTO `message` VALUES ('712', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-03 13:00:00');
INSERT INTO `message` VALUES ('713', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-04 13:00:00');
INSERT INTO `message` VALUES ('714', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-05 13:00:00');
INSERT INTO `message` VALUES ('715', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-06 13:00:00');
INSERT INTO `message` VALUES ('716', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-07 13:00:00');
INSERT INTO `message` VALUES ('717', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-08 13:00:00');
INSERT INTO `message` VALUES ('718', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-09 13:00:00');
INSERT INTO `message` VALUES ('719', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-10 13:00:00');
INSERT INTO `message` VALUES ('720', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-11 13:00:00');
INSERT INTO `message` VALUES ('721', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-12 13:00:00');
INSERT INTO `message` VALUES ('722', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-13 13:00:00');
INSERT INTO `message` VALUES ('723', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-14 13:00:00');
INSERT INTO `message` VALUES ('724', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-15 13:00:00');
INSERT INTO `message` VALUES ('725', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-16 13:00:00');
INSERT INTO `message` VALUES ('726', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-17 13:00:00');
INSERT INTO `message` VALUES ('727', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-18 13:00:00');
INSERT INTO `message` VALUES ('728', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-19 13:00:00');
INSERT INTO `message` VALUES ('729', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-20 13:00:00');
INSERT INTO `message` VALUES ('730', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-21 13:00:00');
INSERT INTO `message` VALUES ('731', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-22 13:00:00');
INSERT INTO `message` VALUES ('732', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-23 13:00:00');
INSERT INTO `message` VALUES ('733', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-24 13:00:00');
INSERT INTO `message` VALUES ('734', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-24 15:01:13');
INSERT INTO `message` VALUES ('735', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-24 19:21:56');
INSERT INTO `message` VALUES ('736', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-25 11:49:28');
INSERT INTO `message` VALUES ('737', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-25 13:00:00');
INSERT INTO `message` VALUES ('738', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-25 23:39:35');
INSERT INTO `message` VALUES ('739', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-25 23:42:54');
INSERT INTO `message` VALUES ('740', '0', '充值成功，入账 5000 点', '108', '2018-12-26 00:33:08');
INSERT INTO `message` VALUES ('741', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-26 11:58:47');
INSERT INTO `message` VALUES ('742', '1', '新场次已生成，请及时设置开奖信息！', '1', '2018-12-26 13:00:00');
INSERT INTO `message` VALUES ('743', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-26 15:01:56');
INSERT INTO `message` VALUES ('744', '0', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-26 19:10:15');
INSERT INTO `message` VALUES ('745', '0', '充值成功，入账 100 点', '106', '2018-12-26 21:26:39');

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text COMMENT '公告内容',
  `datetime` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of notice
-- ----------------------------
INSERT INTO `notice` VALUES ('1', '风云网络字画站，合作请与宣传微信联系！（邦伞暂时不受理）联系V：luojie5823', '2018-12-26 13:04:56');

-- ----------------------------
-- Table structure for place
-- ----------------------------
DROP TABLE IF EXISTS `place`;
CREATE TABLE `place` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `animal` varchar(250) DEFAULT NULL,
  `createTime` varchar(20) DEFAULT NULL,
  `subject` varchar(2000) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `sequence` int(5) NOT NULL,
  `sessionUpdateTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`,`sequence`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of place
-- ----------------------------
INSERT INTO `place` VALUES ('13', '南邓', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36', '2018-08-19 14:34:26', '【下场】 \n题目:高阁客意去，小园花乱飞。(乱)\n题目译文：高阁上的游客们已经竞相离去，小园的春花随风凋零纷纷乱飞。 \n\n唐诗：远芳侵古道，晴翠接荒城。（道） \n下场提示：心力交瘁 \n', '/images/uploads/2018-12-26/image-1545801759117.jpg', '3', '2018-12-26 19:10:15');

-- ----------------------------
-- Table structure for session
-- ----------------------------
DROP TABLE IF EXISTS `session`;
CREATE TABLE `session` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `placeId` int(11) DEFAULT NULL,
  `placeName` varchar(255) DEFAULT NULL,
  `sequence` varchar(5) DEFAULT NULL,
  `sessionName` varchar(50) DEFAULT NULL,
  `openTime` varchar(20) DEFAULT NULL COMMENT '上/中/下',
  `openAnimalId` int(11) DEFAULT NULL,
  `openAnimalName` varchar(50) DEFAULT NULL,
  `rate` int(5) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL COMMENT '0：未开奖   1:  已开奖',
  `aniMaxCount` int(11) DEFAULT NULL COMMENT '本场动物最高可购买点数',
  `forbiddenAni` varchar(200) DEFAULT NULL COMMENT '禁止买入的动物id',
  `currentTotal` int(11) NOT NULL COMMENT '已购买点数总和',
  `createTime` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=707 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of session
-- ----------------------------
INSERT INTO `session` VALUES ('367', '12', '邦伞', '上', '邦伞上场[2018-07-30]', '2018-07-30 22:38', '4', '野猫', '27', '2018-07-30', '1', '1000', '', '0', '2018-07-30 12:27:47');
INSERT INTO `session` VALUES ('372', '12', '邦伞', '中', '邦伞中场[2018-07-30]', '1950-01-05 0:29', null, null, '15', '2018-07-30', '0', '1000', null, '0', '2018-07-30 22:38:36');
INSERT INTO `session` VALUES ('373', '12', '邦伞', '上', '邦伞上场[2018-07-31]', null, null, null, '27', '2018-07-31', '0', '1000', null, '0', '2018-07-31 13:00:00');
INSERT INTO `session` VALUES ('374', '12', '邦伞', '上', '邦伞上场[2018-08-01]', null, null, null, '27', '2018-08-01', '0', '1000', null, '0', '2018-08-01 13:00:00');
INSERT INTO `session` VALUES ('375', '12', '邦伞', '上', '邦伞上场[2018-08-02]', null, null, null, '27', '2018-08-02', '0', '1000', null, '0', '2018-08-02 13:00:00');
INSERT INTO `session` VALUES ('376', '12', '邦伞', '上', '邦伞上场[2018-08-03]', null, null, null, '27', '2018-08-03', '0', '1000', null, '0', '2018-08-03 13:00:00');
INSERT INTO `session` VALUES ('377', '12', '邦伞', '上', '邦伞上场[2018-08-04]', null, null, null, '27', '2018-08-04', '0', '1000', null, '0', '2018-08-04 13:00:00');
INSERT INTO `session` VALUES ('378', '12', '邦伞', '上', '邦伞上场[2018-08-05]', null, null, null, '27', '2018-08-05', '0', '1000', null, '0', '2018-08-05 13:00:00');
INSERT INTO `session` VALUES ('379', '12', '邦伞', '上', '邦伞上场[2018-08-06]', null, null, null, '27', '2018-08-06', '0', '1000', null, '0', '2018-08-06 13:00:00');
INSERT INTO `session` VALUES ('380', '12', '邦伞', '上', '邦伞上场[2018-08-07]', null, null, null, '27', '2018-08-07', '0', '1000', null, '0', '2018-08-07 13:00:00');
INSERT INTO `session` VALUES ('381', '12', '邦伞', '上', '邦伞上场[2018-08-08]', null, null, null, '27', '2018-08-08', '0', '1000', null, '0', '2018-08-08 13:00:00');
INSERT INTO `session` VALUES ('382', '12', '邦伞', '上', '邦伞上场[2018-08-09]', null, null, null, '27', '2018-08-09', '0', '1000', null, '0', '2018-08-09 13:00:00');
INSERT INTO `session` VALUES ('383', '12', '邦伞', '上', '邦伞上场[2018-08-10]', null, null, null, '27', '2018-08-10', '0', '1000', null, '0', '2018-08-10 13:00:00');
INSERT INTO `session` VALUES ('384', '12', '邦伞', '上', '邦伞上场[2018-08-11]', null, null, null, '27', '2018-08-11', '0', '1000', null, '0', '2018-08-11 13:00:00');
INSERT INTO `session` VALUES ('385', '12', '邦伞', '上', '邦伞上场[2018-08-12]', null, null, null, '27', '2018-08-12', '0', '1000', null, '0', '2018-08-12 13:00:00');
INSERT INTO `session` VALUES ('386', '12', '邦伞', '上', '邦伞上场[2018-08-13]', null, null, null, '27', '2018-08-13', '0', '1000', null, '0', '2018-08-13 13:00:00');
INSERT INTO `session` VALUES ('387', '12', '邦伞', '上', '邦伞上场[2018-08-14]', '2018-08-14 16:30', '26', '螃蟹', '27', '2018-08-14', '1', '1000', null, '0', '2018-08-14 13:00:00');
INSERT INTO `session` VALUES ('388', '12', '邦伞', '中', '邦伞中场[2018-08-14]', '2018-08-14 23:30', '30', '蚯蚓', '27', '2018-08-14', '1', '1000', null, '0', '2018-08-14 16:35:01');
INSERT INTO `session` VALUES ('389', '12', '邦伞', '下', '邦伞下场[2018-08-14]', '2018-08-15 10:30', '5', '尼姑', '27', '2018-08-14', '1', '1000', null, '0', '2018-08-14 23:33:31');
INSERT INTO `session` VALUES ('390', '12', '邦伞', '上', '邦伞上场[2018-08-15]', '2018-08-15 16:30', '26', '螃蟹', '27', '2018-08-15', '1', '1000', null, '300', '2018-08-15 11:00:32');
INSERT INTO `session` VALUES ('391', '12', '邦伞', '中', '邦伞中场[2018-08-15]', '2018-08-15 23:30', '36', '老鼠', '27', '2018-08-15', '1', '1000', null, '0', '2018-08-15 17:02:18');
INSERT INTO `session` VALUES ('392', '12', '邦伞', '下', '邦伞下场[2018-08-15]', '2018-08-16 10:30', '20', '猪', '27', '2018-08-15', '1', '1000', null, '0', '2018-08-15 23:40:06');
INSERT INTO `session` VALUES ('393', '12', '邦伞', '上', '邦伞上场[2018-08-16]', '2018-08-16 16:30', '35', '鳝鱼', '27', '2018-08-16', '1', '1000', null, '0', '2018-08-16 11:33:11');
INSERT INTO `session` VALUES ('394', '12', '邦伞', '中', '邦伞中场[2018-08-16]', '2018-08-16 23:30', '24', '飞龙', '27', '2018-08-16', '1', '1000', null, '0', '2018-08-16 16:38:30');
INSERT INTO `session` VALUES ('395', '12', '邦伞', '下', '邦伞下场[2018-08-16]', '2018-08-17 10:30', '9', '仙鹤', '27', '2018-08-16', '1', '1000', null, '0', '2018-08-16 23:49:25');
INSERT INTO `session` VALUES ('396', '12', '邦伞', '上', '邦伞上场[2018-08-17]', '2018-08-17 16:30', '1', '马', '27', '2018-08-17', '1', '1000', null, '0', '2018-08-17 11:51:20');
INSERT INTO `session` VALUES ('397', '12', '邦伞', '中', '邦伞中场[2018-08-17]', '2018-08-17 23:30', '13', '蜘蛛', '27', '2018-08-17', '1', '1000', null, '0', '2018-08-17 16:43:45');
INSERT INTO `session` VALUES ('398', '12', '邦伞', '下', '邦伞下场[2018-08-17]', '2018-08-18 10:30', '5', '尼姑', '27', '2018-08-17', '1', '1000', null, '0', '2018-08-17 23:34:38');
INSERT INTO `session` VALUES ('399', '12', '邦伞', '上', '邦伞上场[2018-08-18]', '2018-08-18 16:30', '10', '乌龟', '27', '2018-08-18', '1', '1000', null, '0', '2018-08-18 11:36:25');
INSERT INTO `session` VALUES ('400', '12', '邦伞', '中', '邦伞中场[2018-08-18]', '2018-08-18 23:30', '21', '螺蛳', '27', '2018-08-18', '1', '1000', null, '0', '2018-08-18 16:55:04');
INSERT INTO `session` VALUES ('401', '12', '邦伞', '下', '邦伞下场[2018-08-18]', null, '29', '白鱼', '27', '2018-08-18', '1', '1000', null, '0', '2018-08-18 23:44:03');
INSERT INTO `session` VALUES ('402', '12', '邦伞', '上', '邦伞上场[2018-08-19]', '2018-08-19 16:40', '15', '孔雀', '27', '2018-08-19', '1', '5000', null, '0', '2018-08-19 10:38:15');
INSERT INTO `session` VALUES ('403', '12', '邦伞', '中', '邦伞中场[2018-08-19]', '2018-08-19 23:30', '19', '猴子', '27', '2018-08-19', '1', '5000', null, '210', '2018-08-19 16:38:42');
INSERT INTO `session` VALUES ('404', '12', '邦伞', '下', '邦伞下场[2018-08-19]', null, '31', '鸽子', '27', '2018-08-19', '1', '1000', null, '0', '2018-08-19 23:45:57');
INSERT INTO `session` VALUES ('405', '12', '邦伞', '上', '邦伞上场[2018-08-20]', '2018-08-20 16:30', '23', '兔子', '27', '2018-08-20', '1', '1000', null, '250', '2018-08-20 10:50:07');
INSERT INTO `session` VALUES ('406', '12', '邦伞', '中', '邦伞中场[2018-08-20]', '2018-08-20 23:30', '15', '孔雀', '27', '2018-08-20', '1', '1000', null, '0', '2018-08-20 16:56:34');
INSERT INTO `session` VALUES ('407', '12', '邦伞', '下', '邦伞下场[2018-08-20]', '2018-08-21 10:30', '32', '青蛙', '27', '2018-08-20', '1', '1000', null, '0', '2018-08-20 23:41:59');
INSERT INTO `session` VALUES ('408', '12', '邦伞', '上', '邦伞上场[2018-08-21]', '2018-08-21 16:30', '6', '鸡', '27', '2018-08-21', '1', '1000', null, '340', '2018-08-21 10:36:47');
INSERT INTO `session` VALUES ('409', '12', '邦伞', '中', '邦伞中场[2018-08-21]', '2018-08-21 23:30', '33', '宝石', '27', '2018-08-21', '1', '1000', null, '0', '2018-08-21 18:03:02');
INSERT INTO `session` VALUES ('410', '12', '邦伞', '下', '邦伞下场[2018-08-21]', null, '35', '鳝鱼', '27', '2018-08-21', '1', '1000', null, '0', '2018-08-21 23:34:28');
INSERT INTO `session` VALUES ('411', '12', '邦伞', '上', '邦伞上场[2018-08-22]', '2018-08-22 16:30', '24', '飞龙', '27', '2018-08-22', '1', '1000', null, '300', '2018-08-22 10:55:13');
INSERT INTO `session` VALUES ('412', '12', '邦伞', '中', '邦伞中场[2018-08-22]', null, '26', '螃蟹', '27', '2018-08-22', '1', '1000', null, '0', '2018-08-22 16:35:25');
INSERT INTO `session` VALUES ('413', '12', '邦伞', '下', '邦伞下场[2018-08-22]', null, '7', '金鱼', '27', '2018-08-22', '1', '1000', null, '0', '2018-08-22 23:38:26');
INSERT INTO `session` VALUES ('414', '12', '邦伞', '上', '邦伞上场[2018-08-23]', '2018-08-23 16:30', '23', '兔子', '27', '2018-08-23', '1', '1000', null, '500', '2018-08-23 10:40:59');
INSERT INTO `session` VALUES ('415', '12', '邦伞', '中', '邦伞中场[2018-08-23]', '2018-08-23 23:30', '32', '青蛙', '27', '2018-08-23', '1', '1000', null, '0', '2018-08-23 16:55:21');
INSERT INTO `session` VALUES ('416', '12', '邦伞', '下', '邦伞下场[2018-08-23]', null, '16', '老虎', '27', '2018-08-23', '1', '1000', null, '0', '2018-08-24 00:33:04');
INSERT INTO `session` VALUES ('417', '12', '邦伞', '上', '邦伞上场[2018-08-24]', '2018-08-24 16:30', '2', '蝴蝶', '27', '2018-08-24', '1', '1000', null, '0', '2018-08-24 11:11:39');
INSERT INTO `session` VALUES ('418', '12', '邦伞', '中', '邦伞中场[2018-08-24]', '2018-08-24 23:30', '13', '蜘蛛', '27', '2018-08-24', '1', '1000', null, '0', '2018-08-24 16:37:13');
INSERT INTO `session` VALUES ('419', '12', '邦伞', '下', '邦伞下场[2018-08-24]', null, '8', '马鹿', '27', '2018-08-24', '1', '1000', null, '0', '2018-08-24 23:39:38');
INSERT INTO `session` VALUES ('420', '13', '南邓', '上', '南邓上场[2018-08-25]', '2018-08-25 15:00', '4', '野猫', '27', '2018-08-25', '1', '1000', null, '0', '2018-08-25 02:00:00');
INSERT INTO `session` VALUES ('421', '12', '邦伞', '上', '邦伞上场[2018-08-25]', null, '12', '大象', '27', '2018-08-25', '1', '1000', null, '0', '2018-08-25 11:26:21');
INSERT INTO `session` VALUES ('422', '12', '邦伞', '中', '邦伞中场[2018-08-25]', null, '32', '青蛙', '27', '2018-08-25', '1', '1000', null, '0', '2018-08-25 16:46:29');
INSERT INTO `session` VALUES ('423', '13', '南邓', '中', '南邓中场[2018-08-25]', null, '28', '羊', '27', '2018-08-25', '1', '1000', null, '0', '2018-08-25 16:47:07');
INSERT INTO `session` VALUES ('424', '13', '南邓', '下', '南邓下场[2018-08-25]', null, '31', '鸽子', '27', '2018-08-25', '1', '1000', null, '0', '2018-08-25 19:16:21');
INSERT INTO `session` VALUES ('425', '12', '邦伞', '下', '邦伞下场[2018-08-25]', null, '7', '金鱼', '27', '2018-08-25', '1', '1000', null, '0', '2018-08-25 23:59:46');
INSERT INTO `session` VALUES ('426', '13', '南邓', '上', '南邓上场[2018-08-26]', '2018-08-26 15:00', '12', '大象', '27', '2018-08-26', '1', '1000', null, '0', '2018-08-26 08:45:19');
INSERT INTO `session` VALUES ('427', '12', '邦伞', '上', '邦伞上场[2018-08-26]', '2018-08-26 16:32', '26', '螃蟹', '27', '2018-08-26', '1', '1000', null, '0', '2018-08-26 10:58:02');
INSERT INTO `session` VALUES ('428', '13', '南邓', '中', '南邓中场[2018-08-26]', null, '28', '羊', '27', '2018-08-26', '1', '1000', null, '0', '2018-08-26 16:37:48');
INSERT INTO `session` VALUES ('429', '12', '邦伞', '中', '邦伞中场[2018-08-26]', null, '33', '宝石', '27', '2018-08-26', '1', '1000', null, '0', '2018-08-26 16:38:11');
INSERT INTO `session` VALUES ('430', '13', '南邓', '下', '南邓下场[2018-08-26]', null, '33', '宝石', '27', '2018-08-26', '1', '1000', null, '0', '2018-08-26 19:02:57');
INSERT INTO `session` VALUES ('431', '12', '邦伞', '下', '邦伞下场[2018-08-26]', null, '9', '仙鹤', '27', '2018-08-26', '1', '1000', null, '0', '2018-08-26 23:41:39');
INSERT INTO `session` VALUES ('432', '13', '南邓', '上', '南邓上场[2018-08-27]', '2018-08-27 17:35', '28', '羊', '27', '2018-08-27', '1', '1000', null, '0', '2018-08-27 00:05:52');
INSERT INTO `session` VALUES ('433', '12', '邦伞', '上', '邦伞上场[2018-08-27]', '2018-08-27 16:36', '33', '宝石', '27', '2018-08-27', '1', '1000', null, '0', '2018-08-27 10:37:15');
INSERT INTO `session` VALUES ('434', '12', '邦伞', '中', '邦伞中场[2018-08-27]', null, '23', '兔子', '27', '2018-08-27', '1', '1000', null, '0', '2018-08-27 16:36:11');
INSERT INTO `session` VALUES ('435', '13', '南邓', '中', '南邓中场[2018-08-27]', null, '15', '孔雀', '27', '2018-08-27', '1', '1000', null, '0', '2018-08-27 17:35:57');
INSERT INTO `session` VALUES ('436', '13', '南邓', '下', '南邓下场[2018-08-27]', null, '8', '马鹿', '27', '2018-08-27', '1', '1000', null, '0', '2018-08-27 19:07:51');
INSERT INTO `session` VALUES ('437', '12', '邦伞', '下', '邦伞下场[2018-08-27]', null, '27', '牛', '27', '2018-08-27', '1', '1000', null, '0', '2018-08-28 00:05:39');
INSERT INTO `session` VALUES ('438', '13', '南邓', '上', '南邓上场[2018-08-28]', null, '35', '鳝鱼', '27', '2018-08-28', '1', '1000', null, '0', '2018-08-28 00:05:53');
INSERT INTO `session` VALUES ('439', '12', '邦伞', '上', '邦伞上场[2018-08-28]', '2018-08-28 17:06', '20', '猪', '27', '2018-08-28', '1', '1000', null, '0', '2018-08-28 12:12:37');
INSERT INTO `session` VALUES ('440', '13', '南邓', '中', '南邓中场[2018-08-28]', null, '13', '蜘蛛', '27', '2018-08-28', '1', '1000', null, '0', '2018-08-28 17:06:39');
INSERT INTO `session` VALUES ('441', '12', '邦伞', '中', '邦伞中场[2018-08-28]', '2018-08-28 23:35', '23', '兔子', '27', '2018-08-28', '1', '1000', null, '0', '2018-08-28 17:07:04');
INSERT INTO `session` VALUES ('442', '12', '邦伞', '下', '邦伞下场[2018-08-28]', null, '15', '孔雀', '27', '2018-08-28', '1', '1000', null, '0', '2018-08-28 23:36:16');
INSERT INTO `session` VALUES ('443', '13', '南邓', '下', '南邓下场[2018-08-28]', null, '13', '蜘蛛', '27', '2018-08-28', '1', '1000', null, '0', '2018-08-29 00:15:28');
INSERT INTO `session` VALUES ('444', '12', '邦伞', '上', '邦伞上场[2018-08-29]', '2018-08-29 16:31', '24', '飞龙', '27', '2018-08-29', '1', '1000', null, '0', '2018-08-29 10:40:15');
INSERT INTO `session` VALUES ('445', '13', '南邓', '上', '南邓上场[2018-08-29]', '2018-08-29 16:09', '23', '兔子', '27', '2018-08-29', '1', '1000', null, '0', '2018-08-29 10:40:47');
INSERT INTO `session` VALUES ('446', '13', '南邓', '中', '南邓中场[2018-08-29]', null, '5', '尼姑', '27', '2018-08-29', '1', '1000', null, '0', '2018-08-29 16:09:32');
INSERT INTO `session` VALUES ('447', '12', '邦伞', '中', '邦伞中场[2018-08-29]', null, '19', '猴子', '27', '2018-08-29', '1', '1000', null, '0', '2018-08-29 16:46:13');
INSERT INTO `session` VALUES ('448', '13', '南邓', '下', '南邓下场[2018-08-29]', null, '17', '大鹅', '27', '2018-08-29', '1', '1000', null, '0', '2018-08-29 20:35:01');
INSERT INTO `session` VALUES ('449', '12', '邦伞', '下', '邦伞下场[2018-08-29]', null, '13', '蜘蛛', '27', '2018-08-29', '1', '1000', null, '0', '2018-08-29 23:35:21');
INSERT INTO `session` VALUES ('450', '13', '南邓', '上', '南邓上场[2018-08-30]', '2018-08-30 17:45', '4', '野猫', '27', '2018-08-30', '1', '1000', null, '0', '2018-08-30 00:03:49');
INSERT INTO `session` VALUES ('451', '12', '邦伞', '上', '邦伞上场[2018-08-30]', '2018-08-30 17:45', '19', '猴子', '27', '2018-08-30', '1', '1000', null, '0', '2018-08-30 10:41:07');
INSERT INTO `session` VALUES ('452', '13', '南邓', '中', '南邓中场[2018-08-30]', null, null, null, '27', '2018-08-30', '0', '1000', null, '0', '2018-08-30 17:45:33');
INSERT INTO `session` VALUES ('453', '12', '邦伞', '中', '邦伞中场[2018-08-30]', null, null, null, '27', '2018-08-30', '0', '1000', null, '0', '2018-08-30 17:46:03');
INSERT INTO `session` VALUES ('456', '13', '南邓', '上', '南邓上场[2018-08-31]', null, null, null, '27', '2018-08-31', '0', '1000', null, '0', '2018-08-31 13:00:00');
INSERT INTO `session` VALUES ('457', '12', '邦伞', '上', '邦伞上场[2018-08-31]', null, null, null, '27', '2018-08-31', '0', '1000', null, '0', '2018-08-31 13:00:00');
INSERT INTO `session` VALUES ('458', '13', '南邓', '上', '南邓上场[2018-09-01]', null, null, null, '27', '2018-09-01', '0', '1000', null, '0', '2018-09-01 13:00:00');
INSERT INTO `session` VALUES ('459', '12', '邦伞', '上', '邦伞上场[2018-09-01]', null, null, null, '27', '2018-09-01', '0', '1000', null, '0', '2018-09-01 13:00:00');
INSERT INTO `session` VALUES ('460', '13', '南邓', '上', '南邓上场[2018-09-02]', null, null, null, '27', '2018-09-02', '0', '1000', null, '0', '2018-09-02 13:00:00');
INSERT INTO `session` VALUES ('461', '12', '邦伞', '上', '邦伞上场[2018-09-02]', null, null, null, '27', '2018-09-02', '0', '1000', null, '0', '2018-09-02 13:00:00');
INSERT INTO `session` VALUES ('462', '13', '南邓', '上', '南邓上场[2018-09-03]', '2018-09-03 22:15', '6', '鸡', '27', '2018-09-03', '0', '1000', null, '9657', '2018-09-03 13:00:00');
INSERT INTO `session` VALUES ('463', '12', '邦伞', '上', '邦伞上场[2018-09-03]', '2018-09-03 22:15', '4', '野猫', '27', '2018-09-03', '0', '1000', '3,6,9,10,11,12,13,14,15,16,18,19,22,24,25,26,27,28,29,30,31,32,34,35,36', '500', '2018-09-03 13:00:00');
INSERT INTO `session` VALUES ('464', '13', '南邓', '上', '南邓上场[2018-09-04]', null, '7', '金鱼', '27', '2018-09-04', '0', '1000', null, '0', '2018-09-04 13:00:00');
INSERT INTO `session` VALUES ('465', '12', '邦伞', '上', '邦伞上场[2018-09-04]', null, null, null, '27', '2018-09-04', '0', '1000', null, '0', '2018-09-04 13:00:00');
INSERT INTO `session` VALUES ('466', '13', '南邓', '上', '南邓上场[2018-09-05]', null, null, null, '27', '2018-09-05', '0', '1000', null, '0', '2018-09-05 13:00:00');
INSERT INTO `session` VALUES ('467', '12', '邦伞', '上', '邦伞上场[2018-09-05]', null, null, null, '27', '2018-09-05', '0', '1000', null, '0', '2018-09-05 13:00:00');
INSERT INTO `session` VALUES ('468', '13', '南邓', '上', '南邓上场[2018-09-06]', null, null, null, '27', '2018-09-06', '0', '1000', null, '0', '2018-09-06 13:00:00');
INSERT INTO `session` VALUES ('469', '12', '邦伞', '上', '邦伞上场[2018-09-06]', null, null, null, '27', '2018-09-06', '0', '1000', null, '0', '2018-09-06 13:00:00');
INSERT INTO `session` VALUES ('470', '13', '南邓', '上', '南邓上场[2018-09-07]', null, null, null, '27', '2018-09-07', '0', '1000', null, '0', '2018-09-07 13:00:00');
INSERT INTO `session` VALUES ('471', '12', '邦伞', '上', '邦伞上场[2018-09-07]', null, null, null, '27', '2018-09-07', '0', '1000', null, '0', '2018-09-07 13:00:00');
INSERT INTO `session` VALUES ('472', '13', '南邓', '上', '南邓上场[2018-09-08]', null, null, null, '27', '2018-09-08', '0', '1000', null, '0', '2018-09-08 13:00:00');
INSERT INTO `session` VALUES ('473', '12', '邦伞', '上', '邦伞上场[2018-09-08]', null, null, null, '27', '2018-09-08', '0', '1000', null, '0', '2018-09-08 13:00:00');
INSERT INTO `session` VALUES ('474', '13', '南邓', '上', '南邓上场[2018-09-09]', null, null, null, '27', '2018-09-09', '0', '1000', null, '0', '2018-09-09 13:00:00');
INSERT INTO `session` VALUES ('475', '12', '邦伞', '上', '邦伞上场[2018-09-09]', null, null, null, '27', '2018-09-09', '0', '1000', null, '0', '2018-09-09 13:00:00');
INSERT INTO `session` VALUES ('476', '13', '南邓', '上', '南邓上场[2018-09-10]', '2018-09-11 00:18', '10', '乌龟', '27', '2018-09-10', '1', '1000', null, '0', '2018-09-10 13:00:00');
INSERT INTO `session` VALUES ('477', '12', '邦伞', '上', '邦伞上场[2018-09-10]', '2018-09-10 16:40', '36', '老鼠', '27', '2018-09-10', '0', '1000', null, '0', '2018-09-10 13:00:00');
INSERT INTO `session` VALUES ('478', '13', '南邓', '中', '南邓中场[2018-09-10]', null, null, null, '27', '2018-09-10', '0', '1000', null, '0', '2018-09-11 00:57:38');
INSERT INTO `session` VALUES ('479', '12', '邦伞', '上', '邦伞上场[2018-09-11]', '2018-09-11 16:29', '2', '蝴蝶', '27', '2018-09-11', '1', '1000', null, '0', '2018-09-11 13:00:00');
INSERT INTO `session` VALUES ('480', '13', '南邓', '上', '南邓上场[2018-09-11]', '2018-09-11 16:29', '2', '蝴蝶', '27', '2018-09-11', '1', '1000', null, '0', '2018-09-11 13:00:00');
INSERT INTO `session` VALUES ('481', '13', '南邓', '中', '南邓中场[2018-09-11]', null, '33', '宝石', '27', '2018-09-11', '1', '1000', null, '0', '2018-09-11 16:29:59');
INSERT INTO `session` VALUES ('482', '12', '邦伞', '中', '邦伞中场[2018-09-11]', null, '6', '鸡', '27', '2018-09-11', '1', '1000', null, '0', '2018-09-11 16:40:15');
INSERT INTO `session` VALUES ('483', '13', '南邓', '下', '南邓下场[2018-09-11]', null, null, null, '27', '2018-09-11', '1', '1000', null, '0', '2018-09-12 03:14:08');
INSERT INTO `session` VALUES ('484', '12', '邦伞', '下', '邦伞下场[2018-09-11]', null, null, null, '27', '2018-09-11', '1', '1000', null, '0', '2018-09-12 03:14:36');
INSERT INTO `session` VALUES ('485', '13', '南邓', '上', '南邓上场[2018-09-12]', null, null, null, '27', '2018-09-12', '0', '1000', null, '0', '2018-09-12 13:00:00');
INSERT INTO `session` VALUES ('486', '12', '邦伞', '上', '邦伞上场[2018-09-12]', null, null, null, '27', '2018-09-12', '0', '1000', null, '0', '2018-09-12 13:00:00');
INSERT INTO `session` VALUES ('487', '13', '南邓', '上', '南邓上场[2018-09-13]', null, null, null, '27', '2018-09-13', '0', '1000', null, '0', '2018-09-13 13:00:00');
INSERT INTO `session` VALUES ('488', '12', '邦伞', '上', '邦伞上场[2018-09-13]', null, null, null, '27', '2018-09-13', '0', '1000', null, '0', '2018-09-13 13:00:00');
INSERT INTO `session` VALUES ('489', '13', '南邓', '上', '南邓上场[2018-09-14]', null, null, null, '27', '2018-09-14', '0', '1000', null, '0', '2018-09-14 13:00:00');
INSERT INTO `session` VALUES ('490', '12', '邦伞', '上', '邦伞上场[2018-09-14]', null, null, null, '27', '2018-09-14', '0', '1000', null, '0', '2018-09-14 13:00:00');
INSERT INTO `session` VALUES ('491', '13', '南邓', '上', '南邓上场[2018-09-15]', null, null, null, '27', '2018-09-15', '0', '1000', null, '0', '2018-09-15 13:00:00');
INSERT INTO `session` VALUES ('492', '12', '邦伞', '上', '邦伞上场[2018-09-15]', null, null, null, '27', '2018-09-15', '0', '1000', null, '0', '2018-09-15 13:00:00');
INSERT INTO `session` VALUES ('493', '13', '南邓', '上', '南邓上场[2018-09-16]', '2018-09-16 16:37', '27', '牛', '27', '2018-09-16', '1', '1000', null, '0', '2018-09-16 13:00:00');
INSERT INTO `session` VALUES ('494', '12', '邦伞', '上', '邦伞上场[2018-09-16]', '2018-09-16 16:37', '1', '马', '27', '2018-09-16', '1', '1000', null, '0', '2018-09-16 13:00:00');
INSERT INTO `session` VALUES ('495', '13', '南邓', '中', '南邓中场[2018-09-16]', null, '32', '青蛙', '27', '2018-09-16', '1', '1000', null, '0', '2018-09-16 16:37:05');
INSERT INTO `session` VALUES ('496', '12', '邦伞', '中', '邦伞中场[2018-09-16]', null, '29', '白鱼', '27', '2018-09-16', '1', '1000', null, '0', '2018-09-16 16:37:26');
INSERT INTO `session` VALUES ('497', '13', '南邓', '下', '南邓下场[2018-09-16]', null, '25', '家猫', '27', '2018-09-16', '1', '1000', null, '0', '2018-09-16 19:05:41');
INSERT INTO `session` VALUES ('498', '13', '南邓', '上', '南邓上场[2018-09-17]', null, null, null, '27', '2018-09-17', '0', '1000', null, '0', '2018-09-17 00:23:27');
INSERT INTO `session` VALUES ('499', '12', '邦伞', '下', '邦伞下场[2018-09-16]', null, null, null, '27', '2018-09-16', '1', '1000', null, '0', '2018-09-17 00:23:55');
INSERT INTO `session` VALUES ('500', '12', '邦伞', '上', '邦伞上场[2018-09-17]', null, null, null, '27', '2018-09-17', '0', '1000', null, '0', '2018-09-17 13:00:00');
INSERT INTO `session` VALUES ('501', '13', '南邓', '上', '南邓上场[2018-09-18]', null, null, null, '27', '2018-09-18', '0', '1000', null, '0', '2018-09-18 13:00:00');
INSERT INTO `session` VALUES ('502', '12', '邦伞', '上', '邦伞上场[2018-09-18]', null, null, null, '27', '2018-09-18', '0', '1000', null, '0', '2018-09-18 13:00:00');
INSERT INTO `session` VALUES ('503', '13', '南邓', '上', '南邓上场[2018-09-19]', null, null, null, '27', '2018-09-19', '0', '1000', null, '0', '2018-09-19 13:00:00');
INSERT INTO `session` VALUES ('504', '12', '邦伞', '上', '邦伞上场[2018-09-19]', null, null, null, '27', '2018-09-19', '0', '1000', null, '0', '2018-09-19 13:00:00');
INSERT INTO `session` VALUES ('505', '13', '南邓', '上', '南邓上场[2018-09-20]', null, null, null, '27', '2018-09-20', '0', '1000', null, '0', '2018-09-20 13:00:00');
INSERT INTO `session` VALUES ('506', '12', '邦伞', '上', '邦伞上场[2018-09-20]', null, null, null, '27', '2018-09-20', '0', '1000', null, '0', '2018-09-20 13:00:00');
INSERT INTO `session` VALUES ('507', '13', '南邓', '上', '南邓上场[2018-09-21]', null, null, null, '27', '2018-09-21', '0', '1000', null, '0', '2018-09-21 13:00:00');
INSERT INTO `session` VALUES ('508', '12', '邦伞', '上', '邦伞上场[2018-09-21]', null, null, null, '27', '2018-09-21', '0', '1000', null, '0', '2018-09-21 13:00:00');
INSERT INTO `session` VALUES ('509', '13', '南邓', '上', '南邓上场[2018-09-22]', null, null, null, '27', '2018-09-22', '0', '1000', null, '0', '2018-09-22 13:00:00');
INSERT INTO `session` VALUES ('510', '12', '邦伞', '上', '邦伞上场[2018-09-22]', null, null, null, '27', '2018-09-22', '0', '1000', null, '0', '2018-09-22 13:00:00');
INSERT INTO `session` VALUES ('511', '13', '南邓', '上', '南邓上场[2018-09-23]', null, null, null, '27', '2018-09-23', '0', '1000', null, '0', '2018-09-23 13:00:00');
INSERT INTO `session` VALUES ('512', '12', '邦伞', '上', '邦伞上场[2018-09-23]', null, null, null, '27', '2018-09-23', '0', '1000', null, '0', '2018-09-23 13:00:00');
INSERT INTO `session` VALUES ('513', '13', '南邓', '上', '南邓上场[2018-09-24]', null, null, null, '27', '2018-09-24', '0', '1000', null, '0', '2018-09-24 13:00:00');
INSERT INTO `session` VALUES ('514', '12', '邦伞', '上', '邦伞上场[2018-09-24]', null, null, null, '27', '2018-09-24', '0', '1000', null, '0', '2018-09-24 13:00:00');
INSERT INTO `session` VALUES ('515', '13', '南邓', '上', '南邓上场[2018-09-25]', null, null, null, '27', '2018-09-25', '0', '1000', null, '0', '2018-09-25 13:00:00');
INSERT INTO `session` VALUES ('516', '12', '邦伞', '上', '邦伞上场[2018-09-25]', null, null, null, '27', '2018-09-25', '0', '1000', null, '0', '2018-09-25 13:00:00');
INSERT INTO `session` VALUES ('517', '13', '南邓', '上', '南邓上场[2018-09-26]', null, null, null, '27', '2018-09-26', '0', '1000', null, '0', '2018-09-26 13:00:00');
INSERT INTO `session` VALUES ('518', '12', '邦伞', '上', '邦伞上场[2018-09-26]', null, null, null, '27', '2018-09-26', '0', '1000', null, '0', '2018-09-26 13:00:00');
INSERT INTO `session` VALUES ('519', '13', '南邓', '上', '南邓上场[2018-09-27]', null, null, null, '27', '2018-09-27', '0', '1000', null, '0', '2018-09-27 13:00:00');
INSERT INTO `session` VALUES ('520', '12', '邦伞', '上', '邦伞上场[2018-09-27]', null, null, null, '27', '2018-09-27', '0', '1000', null, '0', '2018-09-27 13:00:00');
INSERT INTO `session` VALUES ('521', '13', '南邓', '上', '南邓上场[2018-09-28]', null, null, null, '27', '2018-09-28', '0', '1000', null, '0', '2018-09-28 13:00:00');
INSERT INTO `session` VALUES ('522', '12', '邦伞', '上', '邦伞上场[2018-09-28]', null, null, null, '27', '2018-09-28', '0', '1000', null, '0', '2018-09-28 13:00:00');
INSERT INTO `session` VALUES ('523', '13', '南邓', '上', '南邓上场[2018-09-29]', null, null, null, '27', '2018-09-29', '0', '1000', null, '0', '2018-09-29 13:00:00');
INSERT INTO `session` VALUES ('524', '12', '邦伞', '上', '邦伞上场[2018-09-29]', null, null, null, '27', '2018-09-29', '0', '1000', null, '0', '2018-09-29 13:00:00');
INSERT INTO `session` VALUES ('525', '13', '南邓', '上', '南邓上场[2018-09-30]', null, null, null, '27', '2018-09-30', '0', '1000', null, '0', '2018-09-30 13:00:00');
INSERT INTO `session` VALUES ('526', '12', '邦伞', '上', '邦伞上场[2018-09-30]', null, null, null, '27', '2018-09-30', '0', '1000', null, '0', '2018-09-30 13:00:00');
INSERT INTO `session` VALUES ('527', '13', '南邓', '上', '南邓上场[2018-10-01]', null, null, null, '27', '2018-10-01', '0', '1000', null, '0', '2018-10-01 13:00:00');
INSERT INTO `session` VALUES ('528', '12', '邦伞', '上', '邦伞上场[2018-10-01]', null, null, null, '27', '2018-10-01', '0', '1000', null, '0', '2018-10-01 13:00:00');
INSERT INTO `session` VALUES ('529', '13', '南邓', '上', '南邓上场[2018-10-02]', null, null, null, '27', '2018-10-02', '0', '1000', null, '0', '2018-10-02 13:00:00');
INSERT INTO `session` VALUES ('530', '12', '邦伞', '上', '邦伞上场[2018-10-02]', null, null, null, '27', '2018-10-02', '0', '1000', null, '0', '2018-10-02 13:00:00');
INSERT INTO `session` VALUES ('531', '13', '南邓', '上', '南邓上场[2018-10-03]', null, null, null, '27', '2018-10-03', '0', '1000', null, '0', '2018-10-03 13:00:00');
INSERT INTO `session` VALUES ('532', '12', '邦伞', '上', '邦伞上场[2018-10-03]', null, null, null, '27', '2018-10-03', '0', '1000', null, '0', '2018-10-03 13:00:00');
INSERT INTO `session` VALUES ('533', '13', '南邓', '上', '南邓上场[2018-10-04]', null, null, null, '27', '2018-10-04', '0', '1000', null, '0', '2018-10-04 13:00:00');
INSERT INTO `session` VALUES ('534', '12', '邦伞', '上', '邦伞上场[2018-10-04]', null, null, null, '27', '2018-10-04', '0', '1000', null, '0', '2018-10-04 13:00:00');
INSERT INTO `session` VALUES ('535', '13', '南邓', '上', '南邓上场[2018-10-05]', null, null, null, '27', '2018-10-05', '0', '1000', null, '0', '2018-10-05 13:00:00');
INSERT INTO `session` VALUES ('536', '12', '邦伞', '上', '邦伞上场[2018-10-05]', null, null, null, '27', '2018-10-05', '0', '1000', null, '0', '2018-10-05 13:00:00');
INSERT INTO `session` VALUES ('537', '13', '南邓', '上', '南邓上场[2018-10-06]', null, null, null, '27', '2018-10-06', '0', '1000', null, '0', '2018-10-06 13:00:00');
INSERT INTO `session` VALUES ('538', '12', '邦伞', '上', '邦伞上场[2018-10-06]', null, null, null, '27', '2018-10-06', '0', '1000', null, '0', '2018-10-06 13:00:00');
INSERT INTO `session` VALUES ('539', '13', '南邓', '上', '南邓上场[2018-10-07]', null, null, null, '27', '2018-10-07', '0', '1000', null, '0', '2018-10-07 13:00:00');
INSERT INTO `session` VALUES ('540', '12', '邦伞', '上', '邦伞上场[2018-10-07]', null, null, null, '27', '2018-10-07', '0', '1000', null, '0', '2018-10-07 13:00:00');
INSERT INTO `session` VALUES ('541', '13', '南邓', '上', '南邓上场[2018-10-08]', null, null, null, '27', '2018-10-08', '0', '1000', null, '0', '2018-10-08 13:00:00');
INSERT INTO `session` VALUES ('542', '12', '邦伞', '上', '邦伞上场[2018-10-08]', null, null, null, '27', '2018-10-08', '0', '1000', null, '0', '2018-10-08 13:00:00');
INSERT INTO `session` VALUES ('543', '13', '南邓', '上', '南邓上场[2018-10-09]', null, null, null, '27', '2018-10-09', '0', '1000', null, '0', '2018-10-09 13:00:00');
INSERT INTO `session` VALUES ('544', '12', '邦伞', '上', '邦伞上场[2018-10-09]', null, null, null, '27', '2018-10-09', '0', '1000', null, '0', '2018-10-09 13:00:00');
INSERT INTO `session` VALUES ('545', '13', '南邓', '上', '南邓上场[2018-10-10]', null, null, null, '27', '2018-10-10', '0', '1000', null, '0', '2018-10-10 13:00:00');
INSERT INTO `session` VALUES ('546', '12', '邦伞', '上', '邦伞上场[2018-10-10]', null, null, null, '27', '2018-10-10', '0', '1000', null, '0', '2018-10-10 13:00:00');
INSERT INTO `session` VALUES ('547', '13', '南邓', '上', '南邓上场[2018-10-11]', null, null, null, '27', '2018-10-11', '0', '1000', null, '0', '2018-10-11 13:00:00');
INSERT INTO `session` VALUES ('548', '12', '邦伞', '上', '邦伞上场[2018-10-11]', null, null, null, '27', '2018-10-11', '0', '1000', null, '0', '2018-10-11 13:00:00');
INSERT INTO `session` VALUES ('549', '13', '南邓', '上', '南邓上场[2018-10-12]', null, null, null, '27', '2018-10-12', '0', '1000', null, '0', '2018-10-12 13:00:00');
INSERT INTO `session` VALUES ('550', '12', '邦伞', '上', '邦伞上场[2018-10-12]', null, null, null, '27', '2018-10-12', '0', '1000', null, '0', '2018-10-12 13:00:00');
INSERT INTO `session` VALUES ('551', '13', '南邓', '上', '南邓上场[2018-10-13]', null, null, null, '27', '2018-10-13', '0', '1000', null, '0', '2018-10-13 13:00:00');
INSERT INTO `session` VALUES ('552', '12', '邦伞', '上', '邦伞上场[2018-10-13]', null, null, null, '27', '2018-10-13', '0', '1000', null, '0', '2018-10-13 13:00:00');
INSERT INTO `session` VALUES ('553', '13', '南邓', '上', '南邓上场[2018-10-14]', null, null, null, '27', '2018-10-14', '0', '1000', null, '0', '2018-10-14 13:00:00');
INSERT INTO `session` VALUES ('554', '12', '邦伞', '上', '邦伞上场[2018-10-14]', null, null, null, '27', '2018-10-14', '0', '1000', null, '0', '2018-10-14 13:00:00');
INSERT INTO `session` VALUES ('555', '13', '南邓', '上', '南邓上场[2018-10-15]', null, null, null, '27', '2018-10-15', '0', '1000', null, '0', '2018-10-15 13:00:00');
INSERT INTO `session` VALUES ('556', '12', '邦伞', '上', '邦伞上场[2018-10-15]', null, null, null, '27', '2018-10-15', '0', '1000', null, '0', '2018-10-15 13:00:00');
INSERT INTO `session` VALUES ('557', '13', '南邓', '上', '南邓上场[2018-10-16]', null, null, null, '27', '2018-10-16', '0', '1000', null, '0', '2018-10-16 13:00:00');
INSERT INTO `session` VALUES ('558', '12', '邦伞', '上', '邦伞上场[2018-10-16]', null, null, null, '27', '2018-10-16', '0', '1000', null, '0', '2018-10-16 13:00:00');
INSERT INTO `session` VALUES ('559', '13', '南邓', '上', '南邓上场[2018-10-17]', null, null, null, '27', '2018-10-17', '0', '1000', null, '0', '2018-10-17 13:00:00');
INSERT INTO `session` VALUES ('560', '12', '邦伞', '上', '邦伞上场[2018-10-17]', null, null, null, '27', '2018-10-17', '0', '1000', null, '0', '2018-10-17 13:00:00');
INSERT INTO `session` VALUES ('561', '13', '南邓', '上', '南邓上场[2018-10-18]', null, null, null, '27', '2018-10-18', '0', '1000', null, '0', '2018-10-18 13:00:00');
INSERT INTO `session` VALUES ('562', '12', '邦伞', '上', '邦伞上场[2018-10-18]', null, null, null, '27', '2018-10-18', '0', '1000', null, '0', '2018-10-18 13:00:00');
INSERT INTO `session` VALUES ('563', '13', '南邓', '上', '南邓上场[2018-10-19]', null, null, null, '27', '2018-10-19', '0', '1000', null, '0', '2018-10-19 13:00:00');
INSERT INTO `session` VALUES ('564', '12', '邦伞', '上', '邦伞上场[2018-10-19]', null, null, null, '27', '2018-10-19', '0', '1000', null, '0', '2018-10-19 13:00:00');
INSERT INTO `session` VALUES ('565', '13', '南邓', '上', '南邓上场[2018-10-20]', null, null, null, '27', '2018-10-20', '0', '1000', null, '0', '2018-10-20 13:00:00');
INSERT INTO `session` VALUES ('566', '12', '邦伞', '上', '邦伞上场[2018-10-20]', null, null, null, '27', '2018-10-20', '0', '1000', null, '0', '2018-10-20 13:00:00');
INSERT INTO `session` VALUES ('567', '13', '南邓', '上', '南邓上场[2018-10-21]', null, null, null, '27', '2018-10-21', '0', '1000', null, '0', '2018-10-21 13:00:00');
INSERT INTO `session` VALUES ('568', '12', '邦伞', '上', '邦伞上场[2018-10-21]', null, null, null, '27', '2018-10-21', '0', '1000', null, '0', '2018-10-21 13:00:00');
INSERT INTO `session` VALUES ('569', '13', '南邓', '上', '南邓上场[2018-10-22]', null, null, null, '27', '2018-10-22', '0', '1000', null, '0', '2018-10-22 13:00:00');
INSERT INTO `session` VALUES ('570', '12', '邦伞', '上', '邦伞上场[2018-10-22]', null, null, null, '27', '2018-10-22', '0', '1000', null, '0', '2018-10-22 13:00:00');
INSERT INTO `session` VALUES ('571', '13', '南邓', '上', '南邓上场[2018-10-23]', null, null, null, '27', '2018-10-23', '0', '1000', null, '0', '2018-10-23 13:00:00');
INSERT INTO `session` VALUES ('572', '12', '邦伞', '上', '邦伞上场[2018-10-23]', null, null, null, '27', '2018-10-23', '0', '1000', null, '0', '2018-10-23 13:00:00');
INSERT INTO `session` VALUES ('573', '13', '南邓', '上', '南邓上场[2018-10-24]', null, null, null, '27', '2018-10-24', '0', '1000', null, '0', '2018-10-24 13:00:00');
INSERT INTO `session` VALUES ('574', '12', '邦伞', '上', '邦伞上场[2018-10-24]', null, null, null, '27', '2018-10-24', '0', '1000', null, '0', '2018-10-24 13:00:00');
INSERT INTO `session` VALUES ('575', '13', '南邓', '上', '南邓上场[2018-10-25]', null, null, null, '27', '2018-10-25', '0', '1000', null, '0', '2018-10-25 13:00:00');
INSERT INTO `session` VALUES ('576', '12', '邦伞', '上', '邦伞上场[2018-10-25]', null, null, null, '27', '2018-10-25', '0', '1000', null, '0', '2018-10-25 13:00:00');
INSERT INTO `session` VALUES ('577', '13', '南邓', '上', '南邓上场[2018-10-26]', null, null, null, '27', '2018-10-26', '0', '1000', null, '0', '2018-10-26 13:00:00');
INSERT INTO `session` VALUES ('578', '12', '邦伞', '上', '邦伞上场[2018-10-26]', null, null, null, '27', '2018-10-26', '0', '1000', null, '0', '2018-10-26 13:00:00');
INSERT INTO `session` VALUES ('579', '13', '南邓', '上', '南邓上场[2018-10-27]', null, null, null, '27', '2018-10-27', '0', '1000', null, '0', '2018-10-27 13:00:00');
INSERT INTO `session` VALUES ('580', '12', '邦伞', '上', '邦伞上场[2018-10-27]', null, null, null, '27', '2018-10-27', '0', '1000', null, '0', '2018-10-27 13:00:00');
INSERT INTO `session` VALUES ('581', '13', '南邓', '上', '南邓上场[2018-10-28]', null, null, null, '27', '2018-10-28', '0', '1000', null, '0', '2018-10-28 13:00:00');
INSERT INTO `session` VALUES ('582', '12', '邦伞', '上', '邦伞上场[2018-10-28]', null, null, null, '27', '2018-10-28', '0', '1000', null, '0', '2018-10-28 13:00:00');
INSERT INTO `session` VALUES ('583', '13', '南邓', '上', '南邓上场[2018-10-29]', null, null, null, '27', '2018-10-29', '0', '1000', null, '0', '2018-10-29 13:00:00');
INSERT INTO `session` VALUES ('584', '12', '邦伞', '上', '邦伞上场[2018-10-29]', null, null, null, '27', '2018-10-29', '0', '1000', null, '0', '2018-10-29 13:00:00');
INSERT INTO `session` VALUES ('585', '13', '南邓', '上', '南邓上场[2018-10-30]', null, null, null, '27', '2018-10-30', '0', '1000', null, '0', '2018-10-30 13:00:00');
INSERT INTO `session` VALUES ('586', '12', '邦伞', '上', '邦伞上场[2018-10-30]', null, null, null, '27', '2018-10-30', '0', '1000', null, '0', '2018-10-30 13:00:00');
INSERT INTO `session` VALUES ('587', '13', '南邓', '上', '南邓上场[2018-10-31]', null, null, null, '27', '2018-10-31', '0', '1000', null, '0', '2018-10-31 13:00:00');
INSERT INTO `session` VALUES ('588', '12', '邦伞', '上', '邦伞上场[2018-10-31]', null, null, null, '27', '2018-10-31', '0', '1000', null, '0', '2018-10-31 13:00:00');
INSERT INTO `session` VALUES ('589', '13', '南邓', '上', '南邓上场[2018-11-01]', null, null, null, '27', '2018-11-01', '0', '1000', null, '0', '2018-11-01 13:00:00');
INSERT INTO `session` VALUES ('590', '12', '邦伞', '上', '邦伞上场[2018-11-01]', null, null, null, '27', '2018-11-01', '0', '1000', null, '0', '2018-11-01 13:00:00');
INSERT INTO `session` VALUES ('591', '13', '南邓', '上', '南邓上场[2018-11-02]', null, null, null, '27', '2018-11-02', '0', '1000', null, '0', '2018-11-02 13:00:00');
INSERT INTO `session` VALUES ('592', '12', '邦伞', '上', '邦伞上场[2018-11-02]', null, null, null, '27', '2018-11-02', '0', '1000', null, '0', '2018-11-02 13:00:00');
INSERT INTO `session` VALUES ('593', '13', '南邓', '上', '南邓上场[2018-11-03]', null, null, null, '27', '2018-11-03', '0', '1000', null, '0', '2018-11-03 13:00:00');
INSERT INTO `session` VALUES ('594', '12', '邦伞', '上', '邦伞上场[2018-11-03]', null, null, null, '27', '2018-11-03', '0', '1000', null, '0', '2018-11-03 13:00:00');
INSERT INTO `session` VALUES ('595', '13', '南邓', '上', '南邓上场[2018-11-04]', null, null, null, '27', '2018-11-04', '0', '1000', null, '0', '2018-11-04 13:00:00');
INSERT INTO `session` VALUES ('596', '12', '邦伞', '上', '邦伞上场[2018-11-04]', null, null, null, '27', '2018-11-04', '0', '1000', null, '0', '2018-11-04 13:00:00');
INSERT INTO `session` VALUES ('597', '13', '南邓', '上', '南邓上场[2018-11-05]', null, null, null, '27', '2018-11-05', '0', '1000', null, '0', '2018-11-05 13:00:00');
INSERT INTO `session` VALUES ('598', '12', '邦伞', '上', '邦伞上场[2018-11-05]', null, null, null, '27', '2018-11-05', '0', '1000', null, '0', '2018-11-05 13:00:00');
INSERT INTO `session` VALUES ('599', '13', '南邓', '上', '南邓上场[2018-11-06]', null, null, null, '27', '2018-11-06', '0', '1000', null, '0', '2018-11-06 13:00:00');
INSERT INTO `session` VALUES ('600', '12', '邦伞', '上', '邦伞上场[2018-11-06]', null, null, null, '27', '2018-11-06', '0', '1000', null, '0', '2018-11-06 13:00:00');
INSERT INTO `session` VALUES ('601', '13', '南邓', '上', '南邓上场[2018-11-07]', null, null, null, '27', '2018-11-07', '0', '1000', null, '0', '2018-11-07 13:00:00');
INSERT INTO `session` VALUES ('602', '12', '邦伞', '上', '邦伞上场[2018-11-07]', null, null, null, '27', '2018-11-07', '0', '1000', null, '0', '2018-11-07 13:00:00');
INSERT INTO `session` VALUES ('603', '13', '南邓', '上', '南邓上场[2018-11-08]', null, null, null, '27', '2018-11-08', '0', '1000', null, '0', '2018-11-08 13:00:00');
INSERT INTO `session` VALUES ('604', '12', '邦伞', '上', '邦伞上场[2018-11-08]', null, null, null, '27', '2018-11-08', '0', '1000', null, '0', '2018-11-08 13:00:00');
INSERT INTO `session` VALUES ('605', '13', '南邓', '上', '南邓上场[2018-11-09]', null, null, null, '27', '2018-11-09', '0', '1000', null, '0', '2018-11-09 13:00:00');
INSERT INTO `session` VALUES ('606', '12', '邦伞', '上', '邦伞上场[2018-11-09]', null, null, null, '27', '2018-11-09', '0', '1000', null, '0', '2018-11-09 13:00:00');
INSERT INTO `session` VALUES ('607', '13', '南邓', '上', '南邓上场[2018-11-10]', null, null, null, '27', '2018-11-10', '0', '1000', null, '0', '2018-11-10 13:00:00');
INSERT INTO `session` VALUES ('608', '12', '邦伞', '上', '邦伞上场[2018-11-10]', null, null, null, '27', '2018-11-10', '0', '1000', null, '0', '2018-11-10 13:00:00');
INSERT INTO `session` VALUES ('609', '13', '南邓', '上', '南邓上场[2018-11-11]', null, null, null, '27', '2018-11-11', '0', '1000', null, '0', '2018-11-11 13:00:00');
INSERT INTO `session` VALUES ('610', '12', '邦伞', '上', '邦伞上场[2018-11-11]', null, null, null, '27', '2018-11-11', '0', '1000', null, '0', '2018-11-11 13:00:00');
INSERT INTO `session` VALUES ('611', '13', '南邓', '上', '南邓上场[2018-11-12]', null, null, null, '27', '2018-11-12', '0', '1000', null, '0', '2018-11-12 13:00:00');
INSERT INTO `session` VALUES ('612', '12', '邦伞', '上', '邦伞上场[2018-11-12]', null, null, null, '27', '2018-11-12', '0', '1000', null, '0', '2018-11-12 13:00:00');
INSERT INTO `session` VALUES ('613', '13', '南邓', '上', '南邓上场[2018-11-13]', null, null, null, '27', '2018-11-13', '0', '1000', null, '0', '2018-11-13 13:00:00');
INSERT INTO `session` VALUES ('614', '12', '邦伞', '上', '邦伞上场[2018-11-13]', null, null, null, '27', '2018-11-13', '0', '1000', null, '0', '2018-11-13 13:00:00');
INSERT INTO `session` VALUES ('615', '13', '南邓', '上', '南邓上场[2018-11-14]', null, null, null, '27', '2018-11-14', '0', '1000', null, '0', '2018-11-14 13:00:00');
INSERT INTO `session` VALUES ('616', '12', '邦伞', '上', '邦伞上场[2018-11-14]', null, null, null, '27', '2018-11-14', '0', '1000', null, '0', '2018-11-14 13:00:00');
INSERT INTO `session` VALUES ('617', '13', '南邓', '上', '南邓上场[2018-11-15]', null, null, null, '27', '2018-11-15', '0', '1000', null, '0', '2018-11-15 13:00:00');
INSERT INTO `session` VALUES ('618', '12', '邦伞', '上', '邦伞上场[2018-11-15]', null, null, null, '27', '2018-11-15', '0', '1000', null, '0', '2018-11-15 13:00:00');
INSERT INTO `session` VALUES ('619', '13', '南邓', '上', '南邓上场[2018-11-16]', null, null, null, '27', '2018-11-16', '0', '1000', null, '0', '2018-11-16 13:00:00');
INSERT INTO `session` VALUES ('620', '12', '邦伞', '上', '邦伞上场[2018-11-16]', null, null, null, '27', '2018-11-16', '0', '1000', null, '0', '2018-11-16 13:00:00');
INSERT INTO `session` VALUES ('621', '13', '南邓', '上', '南邓上场[2018-11-17]', null, null, null, '27', '2018-11-17', '0', '1000', null, '0', '2018-11-17 13:00:00');
INSERT INTO `session` VALUES ('622', '12', '邦伞', '上', '邦伞上场[2018-11-17]', null, null, null, '27', '2018-11-17', '0', '1000', null, '0', '2018-11-17 13:00:00');
INSERT INTO `session` VALUES ('623', '13', '南邓', '上', '南邓上场[2018-11-18]', null, null, null, '27', '2018-11-18', '0', '1000', null, '0', '2018-11-18 13:00:00');
INSERT INTO `session` VALUES ('624', '12', '邦伞', '上', '邦伞上场[2018-11-18]', null, null, null, '27', '2018-11-18', '0', '1000', null, '0', '2018-11-18 13:00:00');
INSERT INTO `session` VALUES ('625', '13', '南邓', '上', '南邓上场[2018-11-19]', null, null, null, '27', '2018-11-19', '0', '1000', null, '0', '2018-11-19 13:00:00');
INSERT INTO `session` VALUES ('626', '12', '邦伞', '上', '邦伞上场[2018-11-19]', null, null, null, '27', '2018-11-19', '0', '1000', null, '0', '2018-11-19 13:00:00');
INSERT INTO `session` VALUES ('627', '13', '南邓', '上', '南邓上场[2018-11-20]', null, null, null, '27', '2018-11-20', '0', '1000', null, '0', '2018-11-20 13:00:00');
INSERT INTO `session` VALUES ('628', '12', '邦伞', '上', '邦伞上场[2018-11-20]', null, null, null, '27', '2018-11-20', '0', '1000', null, '0', '2018-11-20 13:00:00');
INSERT INTO `session` VALUES ('629', '13', '南邓', '上', '南邓上场[2018-11-21]', null, null, null, '27', '2018-11-21', '0', '1000', null, '0', '2018-11-21 13:00:00');
INSERT INTO `session` VALUES ('630', '12', '邦伞', '上', '邦伞上场[2018-11-21]', null, null, null, '27', '2018-11-21', '0', '1000', null, '0', '2018-11-21 13:00:00');
INSERT INTO `session` VALUES ('631', '13', '南邓', '上', '南邓上场[2018-11-22]', null, null, null, '27', '2018-11-22', '0', '1000', null, '0', '2018-11-22 13:00:00');
INSERT INTO `session` VALUES ('632', '12', '邦伞', '上', '邦伞上场[2018-11-22]', null, null, null, '27', '2018-11-22', '0', '1000', null, '0', '2018-11-22 13:00:00');
INSERT INTO `session` VALUES ('633', '13', '南邓', '上', '南邓上场[2018-11-23]', null, null, null, '27', '2018-11-23', '0', '1000', null, '0', '2018-11-23 13:00:00');
INSERT INTO `session` VALUES ('634', '12', '邦伞', '上', '邦伞上场[2018-11-23]', null, null, null, '27', '2018-11-23', '0', '1000', null, '0', '2018-11-23 13:00:00');
INSERT INTO `session` VALUES ('635', '13', '南邓', '上', '南邓上场[2018-11-24]', null, null, null, '27', '2018-11-24', '0', '1000', null, '0', '2018-11-24 13:00:00');
INSERT INTO `session` VALUES ('636', '12', '邦伞', '上', '邦伞上场[2018-11-24]', null, null, null, '27', '2018-11-24', '0', '1000', null, '0', '2018-11-24 13:00:00');
INSERT INTO `session` VALUES ('637', '13', '南邓', '上', '南邓上场[2018-11-25]', null, null, null, '27', '2018-11-25', '0', '1000', null, '0', '2018-11-25 13:00:00');
INSERT INTO `session` VALUES ('638', '12', '邦伞', '上', '邦伞上场[2018-11-25]', null, null, null, '27', '2018-11-25', '0', '1000', null, '0', '2018-11-25 13:00:00');
INSERT INTO `session` VALUES ('639', '13', '南邓', '上', '南邓上场[2018-11-26]', null, null, null, '27', '2018-11-26', '0', '1000', null, '0', '2018-11-26 13:00:00');
INSERT INTO `session` VALUES ('640', '12', '邦伞', '上', '邦伞上场[2018-11-26]', null, null, null, '27', '2018-11-26', '0', '1000', null, '0', '2018-11-26 13:00:00');
INSERT INTO `session` VALUES ('641', '13', '南邓', '上', '南邓上场[2018-11-27]', null, null, null, '27', '2018-11-27', '0', '1000', null, '0', '2018-11-27 13:00:00');
INSERT INTO `session` VALUES ('642', '12', '邦伞', '上', '邦伞上场[2018-11-27]', null, null, null, '27', '2018-11-27', '0', '1000', null, '0', '2018-11-27 13:00:00');
INSERT INTO `session` VALUES ('643', '13', '南邓', '上', '南邓上场[2018-11-28]', null, null, null, '27', '2018-11-28', '0', '1000', null, '0', '2018-11-28 13:00:00');
INSERT INTO `session` VALUES ('644', '12', '邦伞', '上', '邦伞上场[2018-11-28]', null, null, null, '27', '2018-11-28', '0', '1000', null, '0', '2018-11-28 13:00:00');
INSERT INTO `session` VALUES ('645', '13', '南邓', '上', '南邓上场[2018-11-29]', null, null, null, '27', '2018-11-29', '0', '1000', null, '0', '2018-11-29 13:00:00');
INSERT INTO `session` VALUES ('646', '12', '邦伞', '上', '邦伞上场[2018-11-29]', null, null, null, '27', '2018-11-29', '0', '1000', null, '0', '2018-11-29 13:00:00');
INSERT INTO `session` VALUES ('647', '13', '南邓', '上', '南邓上场[2018-11-30]', null, null, null, '27', '2018-11-30', '0', '1000', null, '0', '2018-11-30 13:00:00');
INSERT INTO `session` VALUES ('648', '12', '邦伞', '上', '邦伞上场[2018-11-30]', null, null, null, '27', '2018-11-30', '0', '1000', null, '0', '2018-11-30 13:00:00');
INSERT INTO `session` VALUES ('649', '13', '南邓', '上', '南邓上场[2018-12-01]', null, null, null, '27', '2018-12-01', '0', '1000', null, '0', '2018-12-01 13:00:00');
INSERT INTO `session` VALUES ('650', '12', '邦伞', '上', '邦伞上场[2018-12-01]', null, null, null, '27', '2018-12-01', '0', '1000', null, '0', '2018-12-01 13:00:00');
INSERT INTO `session` VALUES ('651', '13', '南邓', '上', '南邓上场[2018-12-02]', null, null, null, '27', '2018-12-02', '0', '1000', null, '0', '2018-12-02 13:00:00');
INSERT INTO `session` VALUES ('652', '12', '邦伞', '上', '邦伞上场[2018-12-02]', null, null, null, '27', '2018-12-02', '0', '1000', null, '0', '2018-12-02 13:00:00');
INSERT INTO `session` VALUES ('653', '13', '南邓', '上', '南邓上场[2018-12-03]', null, null, null, '27', '2018-12-03', '0', '1000', null, '0', '2018-12-03 13:00:00');
INSERT INTO `session` VALUES ('654', '12', '邦伞', '上', '邦伞上场[2018-12-03]', null, null, null, '27', '2018-12-03', '0', '1000', null, '0', '2018-12-03 13:00:00');
INSERT INTO `session` VALUES ('655', '13', '南邓', '上', '南邓上场[2018-12-04]', null, null, null, '27', '2018-12-04', '0', '1000', null, '0', '2018-12-04 13:00:00');
INSERT INTO `session` VALUES ('656', '12', '邦伞', '上', '邦伞上场[2018-12-04]', null, null, null, '27', '2018-12-04', '0', '1000', null, '0', '2018-12-04 13:00:00');
INSERT INTO `session` VALUES ('657', '13', '南邓', '上', '南邓上场[2018-12-05]', null, null, null, '27', '2018-12-05', '0', '1000', null, '0', '2018-12-05 13:00:00');
INSERT INTO `session` VALUES ('658', '12', '邦伞', '上', '邦伞上场[2018-12-05]', null, null, null, '27', '2018-12-05', '0', '1000', null, '0', '2018-12-05 13:00:00');
INSERT INTO `session` VALUES ('659', '13', '南邓', '上', '南邓上场[2018-12-06]', null, null, null, '27', '2018-12-06', '0', '1000', null, '0', '2018-12-06 13:00:00');
INSERT INTO `session` VALUES ('660', '12', '邦伞', '上', '邦伞上场[2018-12-06]', null, null, null, '27', '2018-12-06', '0', '1000', null, '0', '2018-12-06 13:00:00');
INSERT INTO `session` VALUES ('661', '13', '南邓', '上', '南邓上场[2018-12-07]', null, null, null, '27', '2018-12-07', '0', '1000', null, '0', '2018-12-07 13:00:00');
INSERT INTO `session` VALUES ('662', '12', '邦伞', '上', '邦伞上场[2018-12-07]', null, null, null, '27', '2018-12-07', '0', '1000', null, '0', '2018-12-07 13:00:00');
INSERT INTO `session` VALUES ('663', '13', '南邓', '上', '南邓上场[2018-12-08]', null, null, null, '27', '2018-12-08', '0', '1000', null, '0', '2018-12-08 13:00:00');
INSERT INTO `session` VALUES ('664', '12', '邦伞', '上', '邦伞上场[2018-12-08]', null, null, null, '27', '2018-12-08', '0', '1000', null, '0', '2018-12-08 13:00:00');
INSERT INTO `session` VALUES ('665', '13', '南邓', '上', '南邓上场[2018-12-09]', null, null, null, '27', '2018-12-09', '0', '1000', null, '0', '2018-12-09 13:00:00');
INSERT INTO `session` VALUES ('666', '12', '邦伞', '上', '邦伞上场[2018-12-09]', null, null, null, '27', '2018-12-09', '0', '1000', null, '0', '2018-12-09 13:00:00');
INSERT INTO `session` VALUES ('667', '13', '南邓', '上', '南邓上场[2018-12-10]', null, null, null, '27', '2018-12-10', '0', '1000', null, '0', '2018-12-10 13:00:00');
INSERT INTO `session` VALUES ('668', '12', '邦伞', '上', '邦伞上场[2018-12-10]', null, null, null, '27', '2018-12-10', '0', '1000', null, '0', '2018-12-10 13:00:00');
INSERT INTO `session` VALUES ('669', '13', '南邓', '上', '南邓上场[2018-12-11]', null, null, null, '27', '2018-12-11', '0', '1000', null, '0', '2018-12-11 13:00:00');
INSERT INTO `session` VALUES ('670', '12', '邦伞', '上', '邦伞上场[2018-12-11]', null, null, null, '27', '2018-12-11', '0', '1000', null, '0', '2018-12-11 13:00:00');
INSERT INTO `session` VALUES ('671', '13', '南邓', '上', '南邓上场[2018-12-12]', null, null, null, '27', '2018-12-12', '0', '1000', null, '0', '2018-12-12 13:00:00');
INSERT INTO `session` VALUES ('672', '12', '邦伞', '上', '邦伞上场[2018-12-12]', null, null, null, '27', '2018-12-12', '0', '1000', null, '0', '2018-12-12 13:00:00');
INSERT INTO `session` VALUES ('673', '13', '南邓', '上', '南邓上场[2018-12-13]', null, null, null, '27', '2018-12-13', '0', '1000', null, '0', '2018-12-13 13:00:00');
INSERT INTO `session` VALUES ('674', '12', '邦伞', '上', '邦伞上场[2018-12-13]', null, null, null, '27', '2018-12-13', '0', '1000', null, '0', '2018-12-13 13:00:00');
INSERT INTO `session` VALUES ('675', '13', '南邓', '上', '南邓上场[2018-12-14]', null, null, null, '27', '2018-12-14', '0', '1000', null, '0', '2018-12-14 13:00:00');
INSERT INTO `session` VALUES ('676', '12', '邦伞', '上', '邦伞上场[2018-12-14]', null, null, null, '27', '2018-12-14', '0', '1000', null, '0', '2018-12-14 13:00:00');
INSERT INTO `session` VALUES ('677', '13', '南邓', '上', '南邓上场[2018-12-15]', null, null, null, '27', '2018-12-15', '0', '1000', null, '0', '2018-12-15 13:00:00');
INSERT INTO `session` VALUES ('678', '12', '邦伞', '上', '邦伞上场[2018-12-15]', null, null, null, '27', '2018-12-15', '0', '1000', null, '0', '2018-12-15 13:00:00');
INSERT INTO `session` VALUES ('679', '13', '南邓', '上', '南邓上场[2018-12-16]', null, null, null, '27', '2018-12-16', '0', '1000', null, '0', '2018-12-16 13:00:00');
INSERT INTO `session` VALUES ('680', '12', '邦伞', '上', '邦伞上场[2018-12-16]', null, null, null, '27', '2018-12-16', '0', '1000', null, '0', '2018-12-16 13:00:00');
INSERT INTO `session` VALUES ('681', '13', '南邓', '上', '南邓上场[2018-12-17]', null, null, null, '27', '2018-12-17', '0', '1000', null, '0', '2018-12-17 13:00:00');
INSERT INTO `session` VALUES ('682', '12', '邦伞', '上', '邦伞上场[2018-12-17]', null, null, null, '27', '2018-12-17', '0', '1000', null, '0', '2018-12-17 13:00:00');
INSERT INTO `session` VALUES ('683', '13', '南邓', '上', '南邓上场[2018-12-18]', null, null, null, '27', '2018-12-18', '0', '1000', null, '0', '2018-12-18 13:00:00');
INSERT INTO `session` VALUES ('684', '12', '邦伞', '上', '邦伞上场[2018-12-18]', null, null, null, '27', '2018-12-18', '0', '1000', null, '0', '2018-12-18 13:00:00');
INSERT INTO `session` VALUES ('685', '13', '南邓', '上', '南邓上场[2018-12-19]', null, null, null, '27', '2018-12-19', '0', '1000', null, '0', '2018-12-19 13:00:00');
INSERT INTO `session` VALUES ('686', '12', '邦伞', '上', '邦伞上场[2018-12-19]', null, null, null, '27', '2018-12-19', '0', '1000', null, '0', '2018-12-19 13:00:00');
INSERT INTO `session` VALUES ('687', '13', '南邓', '上', '南邓上场[2018-12-20]', null, null, null, '27', '2018-12-20', '0', '1000', null, '0', '2018-12-20 13:00:00');
INSERT INTO `session` VALUES ('688', '12', '邦伞', '上', '邦伞上场[2018-12-20]', null, null, null, '27', '2018-12-20', '0', '1000', null, '0', '2018-12-20 13:00:00');
INSERT INTO `session` VALUES ('689', '13', '南邓', '上', '南邓上场[2018-12-21]', '2018-12-21 15:00', null, null, '27', '2018-12-21', '0', '1000', null, '0', '2018-12-21 13:00:00');
INSERT INTO `session` VALUES ('690', '12', '邦伞', '上', '邦伞上场[2018-12-21]', '2018-12-21 16:30', null, null, '27', '2018-12-21', '0', '1000', null, '0', '2018-12-21 13:00:00');
INSERT INTO `session` VALUES ('691', '13', '南邓', '上', '南邓上场[2018-12-22]', null, null, null, '27', '2018-12-22', '0', '1000', null, '0', '2018-12-22 13:00:00');
INSERT INTO `session` VALUES ('692', '12', '邦伞', '上', '邦伞上场[2018-12-22]', null, null, null, '27', '2018-12-22', '0', '1000', null, '0', '2018-12-22 13:00:00');
INSERT INTO `session` VALUES ('693', '13', '南邓', '上', '南邓上场[2018-12-23]', null, null, null, '27', '2018-12-23', '0', '1000', null, '0', '2018-12-23 13:00:00');
INSERT INTO `session` VALUES ('694', '12', '邦伞', '上', '邦伞上场[2018-12-23]', null, null, null, '27', '2018-12-23', '0', '1000', null, '0', '2018-12-23 13:00:00');
INSERT INTO `session` VALUES ('695', '13', '南邓', '上', '南邓上场[2018-12-24]', '2018-12-24 15:00', '6', '鸡', '27', '2018-12-24', '1', '1000', null, '0', '2018-12-24 13:00:00');
INSERT INTO `session` VALUES ('696', '12', '邦伞', '上', '邦伞上场[2018-12-24]', '2018-12-25 15:00', null, null, '27', '2018-12-24', '0', '1000', null, '0', '2018-12-24 13:00:00');
INSERT INTO `session` VALUES ('697', '13', '南邓', '中', '南邓中场[2018-12-24]', '2018-12-24 19:00', '31', '鸽子', '27', '2018-12-24', '1', '1000', null, '0', '2018-12-24 15:01:13');
INSERT INTO `session` VALUES ('698', '13', '南邓', '下', '南邓下场[2018-12-24]', '2018-12-25 0:05', '15', '孔雀', '27', '2018-12-24', '1', '1000', null, '0', '2018-12-24 19:21:56');
INSERT INTO `session` VALUES ('699', '13', '南邓', '上', '南邓上场[2018-12-25]', '2018-12-25 15:00', '32', '青蛙', '27', '2018-12-25', '1', '1000', null, '0', '2018-12-25 11:49:28');
INSERT INTO `session` VALUES ('700', '12', '邦伞', '上', '邦伞上场[2018-12-25]', null, null, null, '27', '2018-12-25', '0', '1000', null, '0', '2018-12-25 13:00:00');
INSERT INTO `session` VALUES ('701', '13', '南邓', '中', '南邓中场[2018-12-25]', '2018-12-25 23:39', '8', '马鹿', '27', '2018-12-25', '1', '1000', null, '0', '2018-12-25 23:39:35');
INSERT INTO `session` VALUES ('702', '13', '南邓', '下', '南邓下场[2018-12-25]', '2018-12-26 00:17', '1', '马', '27', '2018-12-25', '1', '1000', null, '0', '2018-12-25 23:42:54');
INSERT INTO `session` VALUES ('703', '13', '南邓', '上', '南邓上场[2018-12-26]', '2018-12-26 15:00', '26', '螃蟹', '27', '2018-12-26', '1', '1000', null, '0', '2018-12-26 11:58:47');
INSERT INTO `session` VALUES ('704', '12', '邦伞', '上', '邦伞上场[2018-12-26]', null, null, null, '27', '2018-12-26', '0', '1000', null, '0', '2018-12-26 13:00:00');
INSERT INTO `session` VALUES ('705', '13', '南邓', '中', '南邓中场[2018-12-26]', '2018-12-26 19:00', '12', '大象', '27', '2018-12-26', '1', '1000', null, '0', '2018-12-26 15:01:56');
INSERT INTO `session` VALUES ('706', '13', '南邓', '下', '南邓下场[2018-12-26]', '2018-12-26 23:59', null, null, '27', '2018-12-26', '0', '1000', null, '0', '2018-12-26 19:10:15');

-- ----------------------------
-- Table structure for uorder
-- ----------------------------
DROP TABLE IF EXISTS `uorder`;
CREATE TABLE `uorder` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `count` float(11,2) DEFAULT NULL,
  `balance` float(11,2) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL COMMENT '提点日期，不包含时间',
  `datetime` varchar(20) DEFAULT NULL COMMENT '提点日期，包含时间',
  `type` varchar(5) DEFAULT NULL COMMENT '"+"或“-”',
  `optname` varchar(10) DEFAULT NULL COMMENT '账户变更名称：充值 / 提点 / 下注 / 中奖',
  `status` int(11) DEFAULT NULL COMMENT '充值状态：0-待处理  1-已处理',
  `sessionName` varchar(100) DEFAULT NULL,
  `luckAniName` varchar(20) DEFAULT NULL COMMENT '中奖动物名称',
  `lucyAniCount` int(11) DEFAULT NULL COMMENT '中奖动物下注点数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=155 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of uorder
-- ----------------------------
INSERT INTO `uorder` VALUES ('119', '87', 'yt', '100000.00', '100000.00', null, '2018-08-15 15:21:38', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('120', '87', 'yt', '300.00', '99700.00', null, '2018-08-15 15:23:07', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('121', '87', 'yt', '1000.00', '98700.00', '2018-08-15', '2018-08-15 15:24:30', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('122', '87', 'yt', '0.00', '98700.00', null, '2018-08-15 17:02:18', '+', '中奖', null, '邦伞上场', '', '0');
INSERT INTO `uorder` VALUES ('123', '94', '杨小哥', '100000.00', '100000.00', null, '2018-08-19 16:14:18', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('124', '94', '杨小哥', '200.00', '99800.00', null, '2018-08-19 20:19:40', '-', '下注', null, '邦伞中场', null, null);
INSERT INTO `uorder` VALUES ('125', '94', '杨小哥', '190.00', '99810.00', null, '2018-08-19 20:20:28', '-', '下注', null, '邦伞中场', null, null);
INSERT INTO `uorder` VALUES ('126', '94', '杨小哥', '210.00', '99790.00', null, '2018-08-19 22:40:12', '-', '下注', null, '邦伞中场', null, null);
INSERT INTO `uorder` VALUES ('127', '94', '杨小哥', '0.00', '99790.00', null, '2018-08-19 23:45:56', '+', '中奖', null, '邦伞中场', '', '0');
INSERT INTO `uorder` VALUES ('128', '94', '杨小哥', '200.00', '99590.00', null, '2018-08-20 14:53:25', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('129', '94', '杨小哥', '250.00', '99540.00', null, '2018-08-20 15:34:14', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('130', '94', '杨小哥', '0.00', '99540.00', null, '2018-08-20 16:56:34', '+', '中奖', null, '邦伞上场', '', '0');
INSERT INTO `uorder` VALUES ('131', '94', '杨小哥', '320.00', '99220.00', null, '2018-08-21 15:18:48', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('132', '94', '杨小哥', '340.00', '99200.00', null, '2018-08-21 15:19:45', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('133', '94', '杨小哥', '0.00', '99200.00', null, '2018-08-21 18:03:02', '+', '中奖', null, '邦伞上场', '', '0');
INSERT INTO `uorder` VALUES ('134', '94', '杨小哥', '300.00', '98900.00', null, '2018-08-22 15:12:12', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('135', '94', '杨小哥', '0.00', '98900.00', null, '2018-08-22 16:35:25', '+', '中奖', null, '邦伞上场', '', '0');
INSERT INTO `uorder` VALUES ('136', '94', '杨小哥', '500.00', '98400.00', null, '2018-08-23 15:40:33', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('137', '94', '杨小哥', '0.00', '98400.00', null, '2018-08-23 16:55:21', '+', '中奖', null, '邦伞上场', '', '0');
INSERT INTO `uorder` VALUES ('138', '92', '昏昏沉沉', '100000.00', '100000.00', null, '2018-08-28 22:57:33', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('139', '81', 'cc', '50000000.00', '50000000.00', null, '2018-09-03 21:54:01', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('140', '81', 'cc', '1822.00', '49998176.00', null, '2018-09-03 21:56:00', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('141', '81', 'cc', '1823.00', '49998176.00', null, '2018-09-03 21:56:28', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('142', '81', 'cc', '1822.00', '49998176.00', null, '2018-09-03 21:57:01', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('143', '81', 'cc', '9658.00', '49990340.00', null, '2018-09-03 22:01:07', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('144', '81', 'cc', '500.00', '49989840.00', null, '2018-09-03 22:02:15', '-', '下注', null, '邦伞上场', null, null);
INSERT INTO `uorder` VALUES ('145', '81', 'cc', '9657.00', '49989840.00', null, '2018-09-03 22:03:16', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('146', '81', 'cc', '9989840.00', '40000000.00', '2018-09-03', '2018-09-03 22:04:42', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('147', '81', 'cc', '39000000.00', '1000000.00', '2018-09-03', '2018-09-03 22:07:13', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('148', '81', 'cc', '9900.00', '990100.00', '2018-09-03', '2018-09-03 22:07:34', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('149', '81', 'cc', '99000.00', '891100.00', '2018-09-03', '2018-09-03 22:07:50', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('150', '81', 'cc', '89000.00', '802100.00', '2018-09-03', '2018-09-03 22:08:06', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('151', '81', 'cc', '890000.00', '0.00', '2018-09-03', '2018-09-03 22:08:14', '-', '提点', null, null, null, null);
INSERT INTO `uorder` VALUES ('152', '81', 'cc', '5000.00', '5000.00', null, '2018-09-03 22:09:14', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('153', '108', '永恒牵挂', '5000.00', '5000.00', null, '2018-12-26 00:33:08', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('154', '106', '古古怪怪', '100.00', '100.00', null, '2018-12-26 21:26:39', '+', '充点', null, null, null, null);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `mail` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `role` int(2) DEFAULT NULL,
  `joinTime` varchar(20) DEFAULT NULL,
  `headImg` varchar(100) DEFAULT NULL,
  `balance` float(100,2) unsigned DEFAULT NULL,
  `authority` varchar(100) DEFAULT NULL COMMENT '管理员权限列表',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Administrator', 'admin', 'haone1', '1', '1970-01-01 00:00:00', '0.jpg', '1000000.00', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20');
INSERT INTO `users` VALUES ('81', 'cc', 'cc', '321', '0', '2018-07-30 21:43:28', '2.jpg', '5000.00', null);
INSERT INTO `users` VALUES ('82', '123456', '123456', '123456', '0', '2018-07-30 22:23:26', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('83', '777', '1858728', 'beijing', '2', '2018-07-30 22:26:53', '0.jpg', '10000.00', '10');
INSERT INTO `users` VALUES ('84', '字画街', 'noyes', 'haone', '0', '2018-07-30 22:35:35', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('85', '皇冠', '6519666', 'asdf10086', '0', '2018-08-01 19:10:06', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('86', '吊爆了', 'io1990', '0987654321', '0', '2018-08-12 23:30:59', '6.jpg', '0.00', null);
INSERT INTO `users` VALUES ('87', 'yt', 'yt', '226811', '0', '2018-08-15 15:15:21', '0.jpg', '98700.00', null);
INSERT INTO `users` VALUES ('88', '红谷新城', '850050111', 'asdf10086', '0', '2018-08-19 13:13:36', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('89', '过山车', 'tiana', 'haine', '0', '2018-08-19 13:15:38', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('90', '样样好', 'over', 'haone', '0', '2018-08-19 13:16:38', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('91', '回个信息', '886687', 'asdf10086', '0', '2018-08-19 13:17:48', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('92', '昏昏沉沉', '4832546', 'asdf10086', '0', '2018-08-19 13:18:36', '0.jpg', '100000.00', null);
INSERT INTO `users` VALUES ('93', '杨家强', 'ay123456', 'zk131452', '0', '2018-08-19 15:54:08', '2.jpg', '0.00', null);
INSERT INTO `users` VALUES ('94', '杨小哥', 'ok131452', 'zxcvbnma', '0', '2018-08-19 16:03:48', '0.jpg', '98400.00', null);
INSERT INTO `users` VALUES ('95', '大S', '94789435', 'qing.137593', '0', '2018-08-20 17:19:27', '6.jpg', '0.00', null);
INSERT INTO `users` VALUES ('96', '大Si', '18788352956', 'qq137593', '0', '2018-08-20 17:20:51', '6.jpg', '0.00', null);
INSERT INTO `users` VALUES ('97', '发财哥', '15557096931', 'yr824905', '0', '2018-08-20 17:31:42', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('98', '894555', '894997', 'asdf10086', '0', '2018-08-28 23:46:39', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('99', '！', '13368833335', '1234567', '0', '2018-09-02 19:18:18', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('100', '旧梦', 'cj8899', 'cj123456789', '0', '2018-09-06 16:54:08', '3.jpg', '0.00', null);
INSERT INTO `users` VALUES ('101', 'ssr', 'ads', '45678', '0', '2018-12-24 14:50:20', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('102', 'zhong', '888999', '334567', '0', '2018-12-24 14:51:46', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('103', 'HKDY', '8834456', 'asdf10086', '0', '2018-12-25 13:53:55', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('104', '怪盗基德', '812798808', 'asdf10086', '2', '2018-12-25 13:57:18', '0.jpg', '10000.00', '1,10,14,15');
INSERT INTO `users` VALUES ('105', '能_', '879563', 'asdf10086', '0', '2018-12-25 23:25:01', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('106', '古古怪怪', '8795633', 'asdf10086', '0', '2018-12-25 23:25:43', '0.jpg', '100.00', null);
INSERT INTO `users` VALUES ('107', '龙牌', 'Zh', 'zh198712', '0', '2018-12-26 00:17:25', '1.jpg', '0.00', null);
INSERT INTO `users` VALUES ('108', '永恒牵挂', '520347347520', '520347zzj520', '0', '2018-12-26 00:25:10', '0.jpg', '5000.00', null);
INSERT INTO `users` VALUES ('109', '雍', 'hanmu97', 'lll7890', '0', '2018-12-26 01:13:20', '0.jpg', '0.00', null);
