/*
Navicat MySQL Data Transfer

Source Server         : fengyun
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : fengyun2

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-01-02 22:09:53
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
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8;

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
INSERT INTO `buy` VALUES ('44', '106', '古古怪怪', '13', '710', '南邓上场[2018-12-28]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"212\",\"count\":212},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"46\",\"count\":46},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"175\",\"count\":175},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"310\",\"count\":310},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"139\",\"count\":142},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"18\",\"count\":18},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"135\",\"count\":135},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"427\",\"count\":387},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"4\",\"count\":4},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"73\",\"count\":73},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"48\",\"count\":48},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"170\",\"count\":170},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"267\",\"count\":277},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"20\",\"count\":20},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"442\",\"count\":442},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"212\",\"count\":244},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"106\",\"count\":136},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"437\",\"count\":437},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"150\",\"count\":150},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"285\",\"count\":305},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"479\",\"count\":479},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"138\",\"count\":158},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"157\",\"count\":157},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"179\",\"count\":181},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"7\",\"count\":7},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"277\",\"count\":277},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"108\",\"count\":113},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"15\",\"count\":45},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"239\",\"count\":239},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"409\",\"count\":409},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"520\",\"count\":520},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"282\",\"count\":285},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"618\",\"count\":618}]', '7219', '2881.00', '2018-12-28 16:32:36');
INSERT INTO `buy` VALUES ('45', '106', '古古怪怪', '13', '711', '南邓中场[2018-12-28]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"10\",\"count\":25},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"3\",\"count\":3},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"578\",\"count\":611},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"137\",\"count\":141},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"23\",\"count\":73},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"23\",\"count\":73},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"3\",\"count\":18},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"205\",\"count\":205},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"3\",\"count\":126},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"3\",\"count\":3},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"153\",\"count\":153},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"15\",\"count\":15},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"50\",\"count\":53},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"328\",\"count\":358},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"9\",\"count\":26},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"563\",\"count\":613},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"104\",\"count\":104},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"72\",\"count\":165},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"60\",\"count\":60},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"206\",\"count\":206},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"28\",\"count\":61},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"147\",\"count\":177},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"22\",\"count\":24},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"148\",\"count\":153},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"50\",\"count\":55},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"412\",\"count\":417},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"50\",\"count\":55},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"36\",\"count\":46},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"555\",\"count\":555}]', '4574', '4999.00', '2018-12-28 19:01:31');
INSERT INTO `buy` VALUES ('46', '111', '三丰', '13', '711', '南邓中场[2018-12-28]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"140\",\"count\":145},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"16\",\"count\":16},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"10\",\"count\":13},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"62\",\"count\":76},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"52\",\"count\":67},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"252\",\"count\":265},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"11\",\"count\":13},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"172\",\"count\":192},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"15\",\"count\":27},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"22\",\"count\":30},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"20\",\"count\":26},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"105\",\"count\":115},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"17\",\"count\":22},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"9\",\"count\":9},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"21\",\"count\":21},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"17\",\"count\":25},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"62\",\"count\":102},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"76\",\"count\":76},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"46\",\"count\":49},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"138\",\"count\":223},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"9\",\"count\":9},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"81\",\"count\":154},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"24\",\"count\":34},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"235\",\"count\":241},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"63\",\"count\":79},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"23\",\"count\":29},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"270\",\"count\":280},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"141\",\"count\":189},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"285\",\"count\":298},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"27\",\"count\":32},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"32\",\"count\":38}]', '2895', '7105.00', '2018-12-28 18:56:22');
INSERT INTO `buy` VALUES ('47', '111', '三丰', '13', '712', '南邓下场[2018-12-28]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"222\",\"count\":230},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"293\",\"count\":293},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"97\",\"count\":102},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"470\",\"count\":470},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"200\",\"count\":202},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"152\",\"count\":203},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"98\",\"count\":100},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"102\",\"count\":103},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"283\",\"count\":283},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"8\",\"count\":9},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"21\",\"count\":33},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"19\",\"count\":21},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"308\",\"count\":318},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"86\",\"count\":161},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"3\",\"count\":5},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"88\",\"count\":90},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"307\",\"count\":307},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"16\",\"count\":26},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"424\",\"count\":424},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"148\",\"count\":154},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"37\",\"count\":38},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"216\",\"count\":224},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"122\",\"count\":134},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"117\",\"count\":120},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"44\",\"count\":51},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"2\",\"count\":2},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"209\",\"count\":214},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"236\",\"count\":236},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"7\",\"count\":7},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"503\",\"count\":503},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"180\",\"count\":181},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"248\",\"count\":273},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"310\",\"count\":310}]', '5827', '9118.00', '2018-12-28 23:56:20');
INSERT INTO `buy` VALUES ('48', '106', '古古怪怪', '13', '712', '南邓下场[2018-12-28]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"2\",\"count\":47},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":null,\"count\":15},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"100\",\"count\":110},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":null,\"count\":10},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":null,\"count\":5},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":null,\"count\":10},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":null,\"count\":10},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":null,\"count\":12},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"10\",\"count\":20},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":null,\"count\":2},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"100\",\"count\":100},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":null,\"count\":20},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":null,\"count\":2},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"10\",\"count\":12},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"50\",\"count\":102},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":null,\"count\":10},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":null,\"count\":45},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"1\",\"count\":11},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"5\",\"count\":5},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"105\",\"count\":107},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":null,\"count\":10},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"25\",\"count\":25},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"152\",\"count\":155},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":null,\"count\":13},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":null,\"count\":2},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":null,\"count\":2},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"12\",\"count\":18},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"5\",\"count\":5},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"60\",\"count\":60},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":null,\"count\":2}]', '947', '5592.00', '2018-12-28 23:39:08');
INSERT INTO `buy` VALUES ('49', '111', '三丰', '13', '713', '南邓上场[2018-12-29]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"125\",\"count\":138},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"15\",\"count\":20},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"143\",\"count\":205},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"194\",\"count\":194},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"184\",\"count\":184},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"114\",\"count\":119},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"17\",\"count\":20},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"62\",\"count\":62},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"185\",\"count\":187},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"31\",\"count\":31},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"25\",\"count\":25},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"20\",\"count\":50},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"24\",\"count\":34},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"585\",\"count\":590},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"3\",\"count\":3},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"536\",\"count\":536},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"413\",\"count\":413},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"291\",\"count\":297},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"213\",\"count\":228},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"121\",\"count\":121},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"262\",\"count\":262},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"214\",\"count\":214},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"21\",\"count\":21},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"257\",\"count\":264},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"40\",\"count\":40},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"174\",\"count\":211},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"43\",\"count\":43},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"8\",\"count\":8},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"205\",\"count\":205},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"113\",\"count\":113},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"429\",\"count\":429},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"134\",\"count\":134},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"496\",\"count\":509}]', '5910', '4272.00', '2018-12-29 14:49:22');
INSERT INTO `buy` VALUES ('50', '106', '古古怪怪', '13', '713', '南邓上场[2018-12-29]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"30\",\"count\":35},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":null,\"count\":2},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"10\",\"count\":20},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":null,\"count\":5},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"10\",\"count\":10},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":null,\"count\":5},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"20\",\"count\":108},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":null,\"count\":20},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"0\",\"count\":7},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":null,\"count\":5},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":null,\"count\":18},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":null,\"count\":3},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"40\",\"count\":72},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":null,\"count\":8},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":null,\"count\":5},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":null,\"count\":3},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"10\",\"count\":10},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":null,\"count\":8},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":null,\"count\":3},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"30\",\"count\":70},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":null,\"count\":5},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"20\",\"count\":40},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":null,\"count\":3},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":null,\"count\":2},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":null,\"count\":12},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"20\",\"count\":7},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":null,\"count\":5},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":null,\"count\":3}]', '494', '5406.00', '2018-12-29 14:43:10');
INSERT INTO `buy` VALUES ('51', '111', '三丰', '13', '714', '南邓中场[2018-12-29]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"348\",\"count\":368},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"28\",\"count\":28},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"45\",\"count\":45},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"23\",\"count\":23},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"43\",\"count\":47},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"122\",\"count\":162},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"33\",\"count\":33},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"23\",\"count\":38},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"212\",\"count\":212},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"19\",\"count\":19},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"10\",\"count\":10},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"97\",\"count\":97},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"25\",\"count\":25},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"177\",\"count\":177},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"21\",\"count\":21},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"330\",\"count\":330},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"377\",\"count\":377},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"324\",\"count\":324},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"427\",\"count\":447},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"56\",\"count\":56},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"90\",\"count\":90},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"430\",\"count\":450},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"162\",\"count\":162},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"3\",\"count\":3},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"219\",\"count\":249},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"300\",\"count\":300},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"150\",\"count\":170},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"54\",\"count\":57},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"20\",\"count\":20},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"1\",\"count\":1},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"44\",\"count\":74},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"354\",\"count\":359},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"70\",\"count\":70},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"517\",\"count\":824}]', '5668', '34748.00', '2018-12-29 20:40:09');
INSERT INTO `buy` VALUES ('52', '106', '古古怪怪', '13', '714', '南邓中场[2018-12-29]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"38\",\"count\":38},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"70\",\"count\":70},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"5\",\"count\":7},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"20\",\"count\":30},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"135\",\"count\":135},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"5\",\"count\":5},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"9\",\"count\":9},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"49\",\"count\":49},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"65\",\"count\":65},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"7\",\"count\":7},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"31\",\"count\":36},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"105\",\"count\":105},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"2\",\"count\":2},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"10\",\"count\":10},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"5\",\"count\":5},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"16\",\"count\":46},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"40\",\"count\":45},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"97\",\"count\":102},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"27\",\"count\":27},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"84\",\"count\":84},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"6\",\"count\":6},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"126\",\"count\":126},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"70\",\"count\":75},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"10\",\"count\":10},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"79\",\"count\":84},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"15\",\"count\":20},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"27\",\"count\":27},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"27\",\"count\":27},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"27\",\"count\":30},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"10\",\"count\":10},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"10\",\"count\":10}]', '1302', '4244.00', '2018-12-29 18:51:59');
INSERT INTO `buy` VALUES ('53', '111', '三丰', '13', '715', '南邓下场[2018-12-29]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"180\",\"count\":380},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"1\",\"count\":1},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"21\",\"count\":21},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"537\",\"count\":537},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"36\",\"count\":36},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"84\",\"count\":84},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"94\",\"count\":94},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"27\",\"count\":27},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"331\",\"count\":331},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"81\",\"count\":81},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"60\",\"count\":560},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"25\",\"count\":25},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"12\",\"count\":62},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"332\",\"count\":332},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"600\",\"count\":600},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"170\",\"count\":170},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"117\",\"count\":117},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"18\",\"count\":18},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"600\",\"count\":600},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"101\",\"count\":301},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"4\",\"count\":4},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"133\",\"count\":133},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"106\",\"count\":206},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"122\",\"count\":122},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"18\",\"count\":18},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"6\",\"count\":6},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"66\",\"count\":66},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"328\",\"count\":328},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"388\",\"count\":388},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"459\",\"count\":459}]', '6107', '28641.00', '2018-12-29 22:48:50');
INSERT INTO `buy` VALUES ('54', '106', '古古怪怪', '13', '715', '南邓下场[2018-12-29]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"137\",\"count\":157},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"36\",\"count\":51},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"48\",\"count\":58},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"140\",\"count\":140},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"335\",\"count\":367},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"13\",\"count\":13},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"127\",\"count\":132},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"107\",\"count\":129},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"10\",\"count\":10},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"24\",\"count\":36},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"30\",\"count\":45},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"71\",\"count\":73},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"17\",\"count\":17},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"239\",\"count\":165},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"26\",\"count\":28},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"27\",\"count\":40},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"112\",\"count\":117},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"20\",\"count\":40},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"2\",\"count\":2},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"103\",\"count\":123},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"14\",\"count\":14},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"135\",\"count\":150},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"9\",\"count\":9},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"38\",\"count\":68},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"140\",\"count\":157},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"10\",\"count\":12},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"2\",\"count\":2},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"20\",\"count\":32},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"3\",\"count\":3},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"43\",\"count\":55},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"37\",\"count\":37}]', '2282', '3250.00', '2018-12-29 23:52:38');
INSERT INTO `buy` VALUES ('55', '111', '三丰', '13', '716', '南邓上场[2018-12-30]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"411\",\"count\":411},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"19\",\"count\":19},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"69\",\"count\":74},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"307\",\"count\":307},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"61\",\"count\":66},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"95\",\"count\":110},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"19\",\"count\":19},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"218\",\"count\":223},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"409\",\"count\":429},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"8\",\"count\":13},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"106\",\"count\":106},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"66\",\"count\":71},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"157\",\"count\":182},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"168\",\"count\":168},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"93\",\"count\":93},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"215\",\"count\":215},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"237\",\"count\":251},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"315\",\"count\":337},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"216\",\"count\":216},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"356\",\"count\":371},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"241\",\"count\":241},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"343\",\"count\":348},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"11\",\"count\":11},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"132\",\"count\":142},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"101\",\"count\":101},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"182\",\"count\":187},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"67\",\"count\":77},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"71\",\"count\":79},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"47\",\"count\":47},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"15\",\"count\":20},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"397\",\"count\":397},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"47\",\"count\":52},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"578\",\"count\":578}]', '5961', '31108.00', '2018-12-30 14:55:58');
INSERT INTO `buy` VALUES ('56', '111', '三丰', '13', '717', '南邓中场[2018-12-30]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"398\",\"count\":423},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"76\",\"count\":80},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"10\",\"count\":20},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"238\",\"count\":238},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"12\",\"count\":16},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"84\",\"count\":107},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"12\",\"count\":22},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"8\",\"count\":15},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"535\",\"count\":540},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"78\",\"count\":78},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"22\",\"count\":27},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"25\",\"count\":30},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"210\",\"count\":249},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"107\",\"count\":111},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"122\",\"count\":122},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"193\",\"count\":193},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"20\",\"count\":21},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"145\",\"count\":160},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"399\",\"count\":401},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"331\",\"count\":331},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"69\",\"count\":69},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"123\",\"count\":128},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"32\",\"count\":32},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"41\",\"count\":71},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"6\",\"count\":6},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"103\",\"count\":112},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"113\",\"count\":118},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"9\",\"count\":9},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"40\",\"count\":40},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"26\",\"count\":26},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"223\",\"count\":227},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"182\",\"count\":182},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"440\",\"count\":440}]', '4644', '26772.00', '2018-12-30 18:51:32');
INSERT INTO `buy` VALUES ('57', '106', '古古怪怪', '13', '717', '南邓中场[2018-12-30]', '[{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"10\",\"count\":10},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"20\",\"count\":20},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"5\",\"count\":5},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":null,\"count\":2},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":null,\"count\":2},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"5\",\"count\":7},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":null,\"count\":10},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":null,\"count\":2},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"2\",\"count\":2}]', '60', '6634.00', '2018-12-30 18:49:58');
INSERT INTO `buy` VALUES ('58', '111', '三丰', '13', '718', '南邓下场[2018-12-30]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"262\",\"count\":262},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"120\",\"count\":130},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"108\",\"count\":108},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"227\",\"count\":227},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"60\",\"count\":60},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"337\",\"count\":337},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"37\",\"count\":37},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"350\",\"count\":350},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"224\",\"count\":224},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"24\",\"count\":24},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"13\",\"count\":16},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"108\",\"count\":108},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"183\",\"count\":183},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"105\",\"count\":105},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"199\",\"count\":199},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"316\",\"count\":346},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"39\",\"count\":39},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"385\",\"count\":385},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"65\",\"count\":65},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"7\",\"count\":7},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"71\",\"count\":71},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"175\",\"count\":175},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"217\",\"count\":217},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"17\",\"count\":17},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"320\",\"count\":320},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"60\",\"count\":60},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"106\",\"count\":106},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"200\",\"count\":200},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"16\",\"count\":16},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"66\",\"count\":66},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"199\",\"count\":199},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"430\",\"count\":430}]', '5089', '22103.00', '2018-12-30 23:49:44');
INSERT INTO `buy` VALUES ('59', '106', '古古怪怪', '13', '718', '南邓下场[2018-12-30]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":null,\"count\":10},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":null,\"count\":10},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":null,\"count\":5},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":null,\"count\":10},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":null,\"count\":2},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":null,\"count\":3},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":null,\"count\":7},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":null,\"count\":5},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":null,\"count\":20},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":null,\"count\":5},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":null,\"count\":10},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":null,\"count\":2},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":null,\"count\":15},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":null,\"count\":12}]', '116', '6518.00', '2018-12-30 23:06:59');
INSERT INTO `buy` VALUES ('60', '111', '三丰', '13', '719', '南邓上场[2018-12-31]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"252\",\"count\":252},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"87\",\"count\":87},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"247\",\"count\":247},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"197\",\"count\":197},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"186\",\"count\":186},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"104\",\"count\":104},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"178\",\"count\":178},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"104\",\"count\":104},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"197\",\"count\":237},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"119\",\"count\":119},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"40\",\"count\":40},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"82\",\"count\":82},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"108\",\"count\":110},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"136\",\"count\":136},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"302\",\"count\":302},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"147\",\"count\":147},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"292\",\"count\":292},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"117\",\"count\":117},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"250\",\"count\":250},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"53\",\"count\":53},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"475\",\"count\":477},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"229\",\"count\":232},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"43\",\"count\":43},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"7\",\"count\":7},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"176\",\"count\":176},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"140\",\"count\":140},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"119\",\"count\":119},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"311\",\"count\":351},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"71\",\"count\":71},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"93\",\"count\":93},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"185\",\"count\":235},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"66\",\"count\":76},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"332\",\"count\":332}]', '5592', '29027.00', '2018-12-31 15:02:19');
INSERT INTO `buy` VALUES ('61', '106', '古古怪怪', '13', '720', '南邓中场[2018-12-31]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":null,\"count\":250},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":null,\"count\":250},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":null,\"count\":300}]', '800', '5718.00', '2018-12-31 16:01:24');
INSERT INTO `buy` VALUES ('62', '111', '三丰', '13', '720', '南邓中场[2018-12-31]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"137\",\"count\":137},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"167\",\"count\":167},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"149\",\"count\":149},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"93\",\"count\":93},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"30\",\"count\":30},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"213\",\"count\":228},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"324\",\"count\":324},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"163\",\"count\":163},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"4\",\"count\":4},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"213\",\"count\":213},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"148\",\"count\":148},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"75\",\"count\":75},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"189\",\"count\":189},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"2\",\"count\":2},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"292\",\"count\":292},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"99\",\"count\":99},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"31\",\"count\":41},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"229\",\"count\":239},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"233\",\"count\":233},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"485\",\"count\":485},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"162\",\"count\":162},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"13\",\"count\":13},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"4\",\"count\":4},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"522\",\"count\":522},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"169\",\"count\":169},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"261\",\"count\":266},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"213\",\"count\":228},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"84\",\"count\":89},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"1\",\"count\":1},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"141\",\"count\":151},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"141\",\"count\":251},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"95\",\"count\":95},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"78\",\"count\":78}]', '5340', '23687.00', '2018-12-31 18:58:56');
INSERT INTO `buy` VALUES ('63', '111', '三丰', '13', '721', '南邓下场[2018-12-31]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"150\",\"count\":150},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"219\",\"count\":249},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"322\",\"count\":337},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"90\",\"count\":95},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"73\",\"count\":73},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"277\",\"count\":277},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"150\",\"count\":150},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"246\",\"count\":246},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"5\",\"count\":5},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"365\",\"count\":365},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"190\",\"count\":195},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"195\",\"count\":195},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"136\",\"count\":136},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"5\",\"count\":5},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"22\",\"count\":22},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"100\",\"count\":120},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"98\",\"count\":98},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"572\",\"count\":572},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"197\",\"count\":202},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"601\",\"count\":606},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"470\",\"count\":475},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"275\",\"count\":275},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"2\",\"count\":2},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"263\",\"count\":263},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"178\",\"count\":178},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"21\",\"count\":21},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"55\",\"count\":60},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"130\",\"count\":130},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"139\",\"count\":139},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"290\",\"count\":290},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"473\",\"count\":473},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"455\",\"count\":455}]', '6859', '24276.00', '2018-12-31 23:52:53');
INSERT INTO `buy` VALUES ('64', '111', '三丰', '13', '722', '南邓上场[2019-01-01]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"155\",\"count\":155},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"40\",\"count\":50},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"66\",\"count\":71},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"428\",\"count\":438},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"20\",\"count\":20},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"160\",\"count\":165},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"117\",\"count\":117},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"115\",\"count\":120},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"245\",\"count\":245},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"290\",\"count\":290},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"71\",\"count\":71},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"120\",\"count\":120},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"80\",\"count\":90},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"165\",\"count\":175},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"5\",\"count\":5},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"460\",\"count\":480},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"50\",\"count\":50},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"105\",\"count\":105},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"335\",\"count\":335},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"490\",\"count\":490},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"415\",\"count\":425},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"144\",\"count\":159},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"213\",\"count\":213},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"157\",\"count\":172},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"51\",\"count\":51},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"45\",\"count\":50},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"70\",\"count\":75},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"40\",\"count\":40},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"5\",\"count\":5},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"233\",\"count\":258},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"270\",\"count\":275},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"345\",\"count\":365},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"395\",\"count\":395}]', '6075', '31501.00', '2019-01-01 14:51:03');
INSERT INTO `buy` VALUES ('65', '111', '三丰', '13', '723', '南邓中场[2019-01-01]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"350\",\"count\":350},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"85\",\"count\":110},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"15\",\"count\":15},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"155\",\"count\":170},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"132\",\"count\":192},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"250\",\"count\":310},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"50\",\"count\":60},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"338\",\"count\":388},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"58\",\"count\":58},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"70\",\"count\":115},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"5\",\"count\":33},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"20\",\"count\":130},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"140\",\"count\":165},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"565\",\"count\":565},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"210\",\"count\":325},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"105\",\"count\":125},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"90\",\"count\":100},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"305\",\"count\":305},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"45\",\"count\":55},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"5\",\"count\":5},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"195\",\"count\":230},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"10\",\"count\":10},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"95\",\"count\":105},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"121\",\"count\":121},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"20\",\"count\":20},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"90\",\"count\":95},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"54\",\"count\":54},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"35\",\"count\":55},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"70\",\"count\":160},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"5\",\"count\":57},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"505\",\"count\":520},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"337\",\"count\":337}]', '5340', '30781.00', '2019-01-01 18:51:40');
INSERT INTO `buy` VALUES ('66', '111', '三丰', '13', '724', '南邓下场[2019-01-01]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"66\",\"count\":66},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"20\",\"count\":20},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"25\",\"count\":25},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"10\",\"count\":10},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"25\",\"count\":25},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"255\",\"count\":255},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"205\",\"count\":205},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"5\",\"count\":5},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"25\",\"count\":25},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"30\",\"count\":30},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"446\",\"count\":446},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"56\",\"count\":56},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"280\",\"count\":290},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"191\",\"count\":191},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"275\",\"count\":275},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"310\",\"count\":310},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"15\",\"count\":15},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"210\",\"count\":210},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"25\",\"count\":25},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"70\",\"count\":70},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"75\",\"count\":75},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"105\",\"count\":105},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"20\",\"count\":20},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"60\",\"count\":60},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"125\",\"count\":125},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"425\",\"count\":425},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"351\",\"count\":351}]', '3715', '30146.00', '2019-01-01 23:51:07');
INSERT INTO `buy` VALUES ('67', '111', '三丰', '13', '725', '南邓上场[2019-01-02]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"235\",\"count\":245},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"5\",\"count\":5},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"353\",\"count\":353},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"230\",\"count\":230},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"35\",\"count\":35},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"5\",\"count\":5},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"120\",\"count\":120},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"163\",\"count\":163},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"380\",\"count\":380},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"5\",\"count\":5},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"25\",\"count\":25},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"420\",\"count\":420},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"355\",\"count\":355},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"83\",\"count\":83},{\"id\":16,\"aniName\":\"老虎\",\"oldCount\":\"5\",\"count\":5},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"185\",\"count\":185},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"110\",\"count\":110},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"15\",\"count\":15},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"250\",\"count\":250},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"95\",\"count\":95},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"15\",\"count\":15},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"190\",\"count\":190},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"370\",\"count\":370},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"35\",\"count\":35},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"270\",\"count\":277},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"45\",\"count\":45},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"275\",\"count\":275},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"110\",\"count\":110},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"30\",\"count\":30},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"225\",\"count\":225},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"213\",\"count\":213},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"30\",\"count\":30},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"255\",\"count\":255},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"500\",\"count\":500}]', '5654', '24492.00', '2019-01-02 14:55:31');
INSERT INTO `buy` VALUES ('68', '111', '三丰', '13', '726', '南邓中场[2019-01-02]', '[{\"id\":1,\"aniName\":\"马\",\"oldCount\":\"235\",\"count\":235},{\"id\":2,\"aniName\":\"蝴蝶\",\"oldCount\":\"137\",\"count\":142},{\"id\":3,\"aniName\":\"金龙\",\"oldCount\":\"5\",\"count\":5},{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"290\",\"count\":290},{\"id\":5,\"aniName\":\"尼姑\",\"oldCount\":\"105\",\"count\":105},{\"id\":6,\"aniName\":\"鸡\",\"oldCount\":\"5\",\"count\":13},{\"id\":7,\"aniName\":\"金鱼\",\"oldCount\":\"40\",\"count\":40},{\"id\":8,\"aniName\":\"马鹿\",\"oldCount\":\"15\",\"count\":15},{\"id\":9,\"aniName\":\"仙鹤\",\"oldCount\":\"148\",\"count\":189},{\"id\":11,\"aniName\":\"乌鸦\",\"oldCount\":\"5\",\"count\":5},{\"id\":12,\"aniName\":\"大象\",\"oldCount\":\"50\",\"count\":90},{\"id\":13,\"aniName\":\"蜘蛛\",\"oldCount\":\"465\",\"count\":490},{\"id\":14,\"aniName\":\"蛇\",\"oldCount\":\"85\",\"count\":85},{\"id\":15,\"aniName\":\"孔雀\",\"oldCount\":\"150\",\"count\":155},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":\"175\",\"count\":175},{\"id\":18,\"aniName\":\"燕子\",\"oldCount\":\"150\",\"count\":200},{\"id\":19,\"aniName\":\"猴子\",\"oldCount\":\"197\",\"count\":197},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"125\",\"count\":125},{\"id\":21,\"aniName\":\"螺蛳\",\"oldCount\":\"85\",\"count\":90},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"35\",\"count\":35},{\"id\":23,\"aniName\":\"兔子\",\"oldCount\":\"15\",\"count\":15},{\"id\":24,\"aniName\":\"飞龙\",\"oldCount\":\"110\",\"count\":110},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"20\",\"count\":20},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":\"420\",\"count\":440},{\"id\":27,\"aniName\":\"牛\",\"oldCount\":\"110\",\"count\":110},{\"id\":28,\"aniName\":\"羊\",\"oldCount\":\"120\",\"count\":125},{\"id\":29,\"aniName\":\"白鱼\",\"oldCount\":\"55\",\"count\":55},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"70\",\"count\":100},{\"id\":31,\"aniName\":\"鸽子\",\"oldCount\":\"71\",\"count\":71},{\"id\":32,\"aniName\":\"青蛙\",\"oldCount\":\"147\",\"count\":152},{\"id\":33,\"aniName\":\"宝石\",\"oldCount\":\"35\",\"count\":50},{\"id\":35,\"aniName\":\"鳝鱼\",\"oldCount\":\"45\",\"count\":45},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"240\",\"count\":240}]', '4214', '30162.00', '2019-01-02 18:57:42');
INSERT INTO `buy` VALUES ('69', '111', '三丰', '13', '727', '南邓下场[2019-01-02]', '[{\"id\":4,\"aniName\":\"野猫\",\"oldCount\":\"10\",\"count\":10},{\"id\":17,\"aniName\":\"大鹅\",\"oldCount\":null,\"count\":15},{\"id\":20,\"aniName\":\"猪\",\"oldCount\":\"50\",\"count\":50},{\"id\":22,\"aniName\":\"狗\",\"oldCount\":\"150\",\"count\":150},{\"id\":25,\"aniName\":\"家猫\",\"oldCount\":\"40\",\"count\":40},{\"id\":26,\"aniName\":\"螃蟹\",\"oldCount\":null,\"count\":5},{\"id\":30,\"aniName\":\"蚯蚓\",\"oldCount\":\"10\",\"count\":10},{\"id\":36,\"aniName\":\"老鼠\",\"oldCount\":\"200\",\"count\":200}]', '480', '30942.00', '2019-01-02 22:05:06');

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
) ENGINE=InnoDB AUTO_INCREMENT=796 DEFAULT CHARSET=utf8;

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
INSERT INTO `message` VALUES ('744', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-26 19:10:15');
INSERT INTO `message` VALUES ('745', '1', '充值成功，入账 100 点', '106', '2018-12-26 21:26:39');
INSERT INTO `message` VALUES ('746', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-27 11:09:49');
INSERT INTO `message` VALUES ('747', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-27 15:05:39');
INSERT INTO `message` VALUES ('748', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-27 19:06:21');
INSERT INTO `message` VALUES ('749', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-28 00:21:27');
INSERT INTO `message` VALUES ('750', '1', '充值成功，入账 10000 点', '106', '2018-12-28 12:31:52');
INSERT INTO `message` VALUES ('751', '1', '您下注的南邓上场[2018-12-28]已开奖！', '106', '2018-12-28 16:34:07');
INSERT INTO `message` VALUES ('752', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-28 16:34:07');
INSERT INTO `message` VALUES ('753', '1', '充值成功，入账 10000 点', '111', '2018-12-28 17:39:58');
INSERT INTO `message` VALUES ('754', '0', '您下注的南邓中场[2018-12-28]已开奖！', '106', '2018-12-28 19:04:32');
INSERT INTO `message` VALUES ('755', '1', '您下注的南邓中场[2018-12-28]已开奖！', '111', '2018-12-28 19:04:32');
INSERT INTO `message` VALUES ('756', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-28 19:04:32');
INSERT INTO `message` VALUES ('757', '1', '您下注的南邓下场[2018-12-28]已开奖！', '111', '2018-12-29 00:00:22');
INSERT INTO `message` VALUES ('758', '0', '您下注的南邓下场[2018-12-28]已开奖！', '106', '2018-12-29 00:00:22');
INSERT INTO `message` VALUES ('759', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-29 00:00:22');
INSERT INTO `message` VALUES ('760', '1', '您下注的南邓上场[2018-12-29]已开奖！', '111', '2018-12-29 15:01:06');
INSERT INTO `message` VALUES ('761', '0', '您下注的南邓上场[2018-12-29]已开奖！', '106', '2018-12-29 15:01:06');
INSERT INTO `message` VALUES ('762', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-29 15:01:06');
INSERT INTO `message` VALUES ('763', '1', '充值成功，入账 5000 点', '111', '2018-12-29 18:53:12');
INSERT INTO `message` VALUES ('764', '1', '充值成功，入账 20000 点', '111', '2018-12-29 18:53:28');
INSERT INTO `message` VALUES ('765', '1', '您下注的南邓中场[2018-12-29]已开奖！', '111', '2018-12-29 19:00:34');
INSERT INTO `message` VALUES ('766', '0', '您下注的南邓中场[2018-12-29]已开奖！', '106', '2018-12-29 19:00:34');
INSERT INTO `message` VALUES ('767', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-29 19:00:34');
INSERT INTO `message` VALUES ('768', '1', '您下注的南邓下场[2018-12-29]已开奖！', '111', '2018-12-30 00:01:01');
INSERT INTO `message` VALUES ('769', '0', '您下注的南邓下场[2018-12-29]已开奖！', '106', '2018-12-30 00:01:01');
INSERT INTO `message` VALUES ('770', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-30 00:01:01');
INSERT INTO `message` VALUES ('771', '1', '您下注的南邓上场[2018-12-30]已开奖！', '111', '2018-12-30 15:01:47');
INSERT INTO `message` VALUES ('772', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-30 15:01:47');
INSERT INTO `message` VALUES ('773', '1', '您下注的南邓中场[2018-12-30]已开奖！', '111', '2018-12-30 19:00:38');
INSERT INTO `message` VALUES ('774', '0', '您下注的南邓中场[2018-12-30]已开奖！', '106', '2018-12-30 19:00:38');
INSERT INTO `message` VALUES ('775', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-30 19:00:38');
INSERT INTO `message` VALUES ('776', '1', '您下注的南邓下场[2018-12-30]已开奖！', '111', '2018-12-31 00:02:01');
INSERT INTO `message` VALUES ('777', '0', '您下注的南邓下场[2018-12-30]已开奖！', '106', '2018-12-31 00:02:01');
INSERT INTO `message` VALUES ('778', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2018-12-31 00:02:01');
INSERT INTO `message` VALUES ('779', '1', '您下注的南邓上场[2018-12-31]已开奖！', '111', '2018-12-31 15:01:43');
INSERT INTO `message` VALUES ('780', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2018-12-31 15:01:43');
INSERT INTO `message` VALUES ('781', '0', '您下注的南邓中场[2018-12-31]已开奖！', '106', '2018-12-31 19:02:03');
INSERT INTO `message` VALUES ('782', '1', '您下注的南邓中场[2018-12-31]已开奖！', '111', '2018-12-31 19:02:03');
INSERT INTO `message` VALUES ('783', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2018-12-31 19:02:03');
INSERT INTO `message` VALUES ('784', '1', '您下注的南邓下场[2018-12-31]已开奖！', '111', '2019-01-01 00:02:13');
INSERT INTO `message` VALUES ('785', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2019-01-01 00:02:13');
INSERT INTO `message` VALUES ('786', '0', '您下注的南邓上场[2019-01-01]已开奖！', '111', '2019-01-01 15:02:19');
INSERT INTO `message` VALUES ('787', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2019-01-01 15:02:19');
INSERT INTO `message` VALUES ('788', '0', '您下注的南邓中场[2019-01-01]已开奖！', '111', '2019-01-01 19:06:11');
INSERT INTO `message` VALUES ('789', '1', '南邓下场已生成，请及时设置开奖信息！', '1', '2019-01-01 19:06:11');
INSERT INTO `message` VALUES ('790', '0', '您下注的南邓下场[2019-01-01]已开奖！', '111', '2019-01-02 00:00:52');
INSERT INTO `message` VALUES ('791', '1', '南邓上场已生成，请及时设置开奖信息！', '1', '2019-01-02 00:00:52');
INSERT INTO `message` VALUES ('792', '0', '您下注的南邓上场[2019-01-02]已开奖！', '111', '2019-01-02 15:01:19');
INSERT INTO `message` VALUES ('793', '1', '南邓中场已生成，请及时设置开奖信息！', '1', '2019-01-02 15:01:19');
INSERT INTO `message` VALUES ('794', '0', '您下注的南邓中场[2019-01-02]已开奖！', '111', '2019-01-02 19:00:59');
INSERT INTO `message` VALUES ('795', '0', '南邓下场已生成，请及时设置开奖信息！', '1', '2019-01-02 19:00:59');

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
INSERT INTO `notice` VALUES ('1', '风云网络字画站，合作请与宣传微信联系！联系V：luojie5823', '2018-12-27 00:25:37');

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
INSERT INTO `place` VALUES ('13', '南邓', '1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36', '2018-08-19 14:34:26', '【下场】 \n题目:远上寒山石径斜，白云深处有人家。(远)\n题目译文：远处的山很陡，在白云飘浮的地方有几户人家。\n唐诗：忽忆周天子，驱车上玉山。（玉）', '/images/uploads/2018-12-26/image-1545801759117.jpg', '3', '2019-01-02 19:00:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=728 DEFAULT CHARSET=utf8;

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
INSERT INTO `session` VALUES ('705', '13', '南邓', '中', '南邓中场[2018-12-26]', '2018-12-26 19:00', '12', '大象', '27', '2018-12-26', '1', '1000', null, '0', '2018-12-26 15:01:56');
INSERT INTO `session` VALUES ('706', '13', '南邓', '下', '南邓下场[2018-12-26]', '2018-12-26 23:59', '3', '金龙', '27', '2018-12-26', '1', '1000', null, '0', '2018-12-26 19:10:15');
INSERT INTO `session` VALUES ('707', '13', '南邓', '上', '南邓上场[2018-12-27]', '2018-12-27 15:00', '7', '金鱼', '27', '2018-12-27', '1', '1000', null, '0', '2018-12-27 11:09:49');
INSERT INTO `session` VALUES ('708', '13', '南邓', '中', '南邓中场[2018-12-27]', '2018-12-27 19:00', '11', '乌鸦', '27', '2018-12-27', '1', '1000', null, '0', '2018-12-27 15:05:39');
INSERT INTO `session` VALUES ('709', '13', '南邓', '下', '南邓下场[2018-12-27]', '2018-12-27 23:59', '2', '蝴蝶', '27', '2018-12-27', '1', '1000', null, '0', '2018-12-27 19:06:21');
INSERT INTO `session` VALUES ('710', '13', '南邓', '上', '南邓上场[2018-12-28]', '2018-12-28 16:33', '31', '鸽子', '28', '2018-12-28', '1', '1500', null, '7219', '2018-12-28 00:21:27');
INSERT INTO `session` VALUES ('711', '13', '南邓', '中', '南邓中场[2018-12-28]', '2018-12-28 19:04', '30', '蚯蚓', '28', '2018-12-28', '1', '2000', null, '7469', '2018-12-28 16:34:07');
INSERT INTO `session` VALUES ('712', '13', '南邓', '下', '南邓下场[2018-12-28]', 'null', '22', '狗', '28', '2018-12-28', '1', '1000', null, '6774', '2018-12-28 19:04:32');
INSERT INTO `session` VALUES ('713', '13', '南邓', '上', '南邓上场[2018-12-29]', '2018-12-29 15:01', '25', '家猫', '28', '2018-12-29', '1', '2000', null, '6404', '2018-12-29 00:00:22');
INSERT INTO `session` VALUES ('714', '13', '南邓', '中', '南邓中场[2018-12-29]', '2018-12-29 19:00', '18', '燕子', '28', '2018-12-29', '1', '2000', null, '6970', '2018-12-29 15:01:06');
INSERT INTO `session` VALUES ('715', '13', '南邓', '下', '南邓下场[2018-12-29]', '2018-12-30 00:01', '24', '飞龙', '28', '2018-12-29', '1', '2000', null, '8389', '2018-12-29 19:00:34');
INSERT INTO `session` VALUES ('716', '13', '南邓', '上', '南邓上场[2018-12-30]', '2018-12-30 15:01', '25', '家猫', '28', '2018-12-30', '1', '10000', null, '5961', '2018-12-30 00:01:01');
INSERT INTO `session` VALUES ('717', '13', '南邓', '中', '南邓中场[2018-12-30]', '2018-12-30 19:00', '8', '马鹿', '28', '2018-12-30', '1', '10000', null, '4704', '2018-12-30 15:01:47');
INSERT INTO `session` VALUES ('718', '13', '南邓', '下', '南邓下场[2018-12-30]', '2018-12-31 00:02', '31', '鸽子', '28', '2018-12-30', '1', '10000', null, '5205', '2018-12-30 19:00:38');
INSERT INTO `session` VALUES ('719', '13', '南邓', '上', '南邓上场[2018-12-31]', '2018-12-31 15:01', '3', '金龙', '28', '2018-12-31', '1', '1000', null, '5592', '2018-12-31 00:02:01');
INSERT INTO `session` VALUES ('720', '13', '南邓', '中', '南邓中场[2018-12-31]', '2018-12-31 19:01', '28', '羊', '28', '2018-12-31', '1', '10000', null, '6140', '2018-12-31 15:01:43');
INSERT INTO `session` VALUES ('721', '13', '南邓', '下', '南邓下场[2018-12-31]', '2019-01-01 19:02', '23', '兔子', '28', '2018-12-31', '1', '10000', null, '6859', '2018-12-31 19:02:03');
INSERT INTO `session` VALUES ('722', '13', '南邓', '上', '南邓上场[2019-01-01]', '2019-01-01 15:02', '6', '鸡', '28', '2019-01-01', '1', '10000', null, '6075', '2019-01-01 00:02:13');
INSERT INTO `session` VALUES ('723', '13', '南邓', '中', '南邓中场[2019-01-01]', '2019-01-01 19:06', '2', '蝴蝶', '28', '2019-01-01', '1', '10000', null, '5340', '2019-01-01 15:02:19');
INSERT INTO `session` VALUES ('724', '13', '南邓', '下', '南邓下场[2019-01-01]', '2019-01-02 19:00', '6', '鸡', '28', '2019-01-01', '1', '10000', null, '3715', '2019-01-01 19:06:11');
INSERT INTO `session` VALUES ('725', '13', '南邓', '上', '南邓上场[2019-01-02]', '2019-01-02 15:01', '3', '金龙', '28', '2019-01-02', '1', '10000', null, '5654', '2019-01-02 00:00:52');
INSERT INTO `session` VALUES ('726', '13', '南邓', '中', '南邓中场[2019-01-02]', '2019-01-02 19:00', '35', '鳝鱼', '28', '2019-01-02', '1', '10000', null, '4214', '2019-01-02 15:01:19');
INSERT INTO `session` VALUES ('727', '13', '南邓', '下', '南邓下场[2019-01-02]', null, null, null, '27', '2019-01-02', '0', '1000', null, '480', '2019-01-02 19:00:59');

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
) ENGINE=InnoDB AUTO_INCREMENT=535 DEFAULT CHARSET=utf8;

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
INSERT INTO `uorder` VALUES ('155', '106', '古古怪怪', '10000.00', '10100.00', null, '2018-12-28 12:31:52', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('156', '106', '古古怪怪', '1145.00', '8955.00', null, '2018-12-28 12:36:40', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('157', '106', '古古怪怪', '1150.00', '8950.00', null, '2018-12-28 13:10:35', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('158', '106', '古古怪怪', '1170.00', '8930.00', null, '2018-12-28 14:23:45', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('159', '106', '古古怪怪', '1205.00', '8895.00', null, '2018-12-28 14:25:52', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('160', '106', '古古怪怪', '1353.00', '8747.00', null, '2018-12-28 14:31:27', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('161', '106', '古古怪怪', '1439.00', '8661.00', null, '2018-12-28 14:37:54', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('162', '106', '古古怪怪', '1581.00', '8519.00', null, '2018-12-28 14:47:35', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('163', '106', '古古怪怪', '2225.00', '7875.00', null, '2018-12-28 14:54:00', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('164', '106', '古古怪怪', '2308.00', '7792.00', null, '2018-12-28 14:57:34', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('165', '106', '古古怪怪', '2633.00', '7467.00', null, '2018-12-28 15:00:22', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('166', '106', '古古怪怪', '2684.00', '7416.00', null, '2018-12-28 15:03:50', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('167', '106', '古古怪怪', '2928.00', '7172.00', null, '2018-12-28 15:10:14', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('168', '106', '古古怪怪', '2985.00', '7115.00', null, '2018-12-28 15:13:43', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('169', '106', '古古怪怪', '3050.00', '7050.00', null, '2018-12-28 15:21:11', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('170', '106', '古古怪怪', '3345.00', '6755.00', null, '2018-12-28 15:25:10', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('171', '106', '古古怪怪', '5364.00', '4736.00', null, '2018-12-28 15:44:06', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('172', '106', '古古怪怪', '6645.00', '3455.00', null, '2018-12-28 16:05:08', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('173', '106', '古古怪怪', '6769.00', '3331.00', null, '2018-12-28 16:12:07', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('174', '106', '古古怪怪', '7104.00', '2996.00', null, '2018-12-28 16:20:33', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('175', '106', '古古怪怪', '7219.00', '2881.00', null, '2018-12-28 16:32:36', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('176', '106', '古古怪怪', '6692.00', '9573.00', null, '2018-12-28 16:34:07', '+', '中奖', null, '南邓上场', '鸽子', '239');
INSERT INTO `uorder` VALUES ('177', '106', '古古怪怪', '500.00', '9073.00', null, '2018-12-28 16:44:43', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('178', '106', '古古怪怪', '3366.00', '6207.00', null, '2018-12-28 17:38:51', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('179', '111', '三丰', '10000.00', '10000.00', null, '2018-12-28 17:39:58', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('180', '111', '三丰', '20.00', '9980.00', null, '2018-12-28 17:43:26', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('181', '111', '三丰', '0.00', '10000.00', null, '2018-12-28 17:43:41', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('182', '111', '三丰', '230.00', '9770.00', null, '2018-12-28 17:49:02', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('183', '111', '三丰', '316.00', '9684.00', null, '2018-12-28 17:51:08', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('184', '111', '三丰', '508.00', '9492.00', null, '2018-12-28 18:05:59', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('185', '111', '三丰', '511.00', '9489.00', null, '2018-12-28 18:08:43', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('186', '111', '三丰', '691.00', '9309.00', null, '2018-12-28 18:10:33', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('187', '111', '三丰', '1157.00', '8843.00', null, '2018-12-28 18:21:06', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('188', '111', '三丰', '1587.00', '8413.00', null, '2018-12-28 18:23:20', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('189', '111', '三丰', '1827.00', '8173.00', null, '2018-12-28 18:26:59', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('190', '106', '古古怪怪', '3386.00', '6187.00', null, '2018-12-28 18:37:23', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('191', '111', '三丰', '2453.00', '7547.00', null, '2018-12-28 18:39:56', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('192', '106', '古古怪怪', '3554.00', '6019.00', null, '2018-12-28 18:44:04', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('193', '106', '古古怪怪', '3942.00', '5631.00', null, '2018-12-28 18:49:24', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('194', '106', '古古怪怪', '3996.00', '5577.00', null, '2018-12-28 18:52:54', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('195', '111', '三丰', '2895.00', '7105.00', null, '2018-12-28 18:56:22', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('196', '106', '古古怪怪', '4574.00', '4999.00', null, '2018-12-28 19:01:31', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('197', '106', '古古怪怪', '1540.00', '6539.00', null, '2018-12-28 19:04:32', '+', '中奖', null, '南邓中场', '蚯蚓', '55');
INSERT INTO `uorder` VALUES ('198', '111', '三丰', '7840.00', '14945.00', null, '2018-12-28 19:04:32', '+', '中奖', null, '南邓中场', '蚯蚓', '280');
INSERT INTO `uorder` VALUES ('199', '111', '三丰', '300.00', '14645.00', null, '2018-12-28 19:40:02', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('200', '111', '三丰', '600.00', '14345.00', null, '2018-12-28 19:40:36', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('201', '111', '三丰', '500.00', '14445.00', null, '2018-12-28 19:41:06', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('202', '111', '三丰', '600.00', '14345.00', null, '2018-12-28 21:23:14', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('203', '111', '三丰', '1876.00', '13069.00', null, '2018-12-28 21:44:16', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('204', '111', '三丰', '1881.00', '13064.00', null, '2018-12-28 21:53:52', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('205', '111', '三丰', '2241.00', '12704.00', null, '2018-12-28 22:05:43', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('206', '111', '三丰', '2541.00', '12404.00', null, '2018-12-28 22:12:58', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('207', '111', '三丰', '2561.00', '12384.00', null, '2018-12-28 22:14:41', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('208', '111', '三丰', '2361.00', '12584.00', null, '2018-12-28 22:18:58', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('209', '111', '三丰', '2511.00', '12434.00', null, '2018-12-28 22:19:34', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('210', '111', '三丰', '2709.00', '12236.00', null, '2018-12-28 22:22:01', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('211', '111', '三丰', '2749.00', '12196.00', null, '2018-12-28 22:24:19', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('212', '111', '三丰', '2852.00', '12093.00', null, '2018-12-28 22:34:26', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('213', '111', '三丰', '2927.00', '12018.00', null, '2018-12-28 22:43:49', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('214', '111', '三丰', '3097.00', '11848.00', null, '2018-12-28 22:51:55', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('215', '111', '三丰', '3187.00', '11758.00', null, '2018-12-28 22:56:35', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('216', '111', '三丰', '3468.00', '11477.00', null, '2018-12-28 22:59:40', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('217', '111', '三丰', '4140.00', '10805.00', null, '2018-12-28 23:10:23', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('218', '111', '三丰', '4578.00', '10367.00', null, '2018-12-28 23:19:34', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('219', '111', '三丰', '4587.00', '10358.00', null, '2018-12-28 23:21:24', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('220', '106', '古古怪怪', '73.00', '6466.00', null, '2018-12-28 23:29:00', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('221', '106', '古古怪怪', '188.00', '6351.00', null, '2018-12-28 23:30:03', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('222', '106', '古古怪怪', '637.00', '5902.00', null, '2018-12-28 23:32:07', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('223', '111', '三丰', '5093.00', '9852.00', null, '2018-12-28 23:34:12', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('224', '106', '古古怪怪', '947.00', '5592.00', null, '2018-12-28 23:39:08', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('225', '111', '三丰', '5103.00', '9842.00', null, '2018-12-28 23:41:02', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('226', '111', '三丰', '5391.00', '9554.00', null, '2018-12-28 23:45:23', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('227', '111', '三丰', '5431.00', '9514.00', null, '2018-12-28 23:46:11', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('228', '111', '三丰', '5561.00', '9384.00', null, '2018-12-28 23:46:51', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('229', '111', '三丰', '5576.00', '9369.00', null, '2018-12-28 23:47:42', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('230', '111', '三丰', '5827.00', '9118.00', null, '2018-12-28 23:56:20', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('231', '111', '三丰', '1064.00', '10182.00', null, '2018-12-29 00:00:22', '+', '中奖', null, '南邓下场', '狗', '38');
INSERT INTO `uorder` VALUES ('232', '106', '古古怪怪', '308.00', '5900.00', null, '2018-12-29 00:00:22', '+', '中奖', null, '南邓下场', '狗', '11');
INSERT INTO `uorder` VALUES ('233', '111', '三丰', '610.00', '9572.00', null, '2018-12-29 12:37:36', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('234', '111', '三丰', '910.00', '9272.00', null, '2018-12-29 12:56:47', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('235', '111', '三丰', '1754.00', '8428.00', null, '2018-12-29 13:01:28', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('236', '111', '三丰', '1850.00', '8332.00', null, '2018-12-29 13:13:24', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('237', '111', '三丰', '1862.00', '8320.00', null, '2018-12-29 13:25:47', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('238', '111', '三丰', '2656.00', '7526.00', null, '2018-12-29 13:37:43', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('239', '111', '三丰', '2716.00', '7466.00', null, '2018-12-29 13:42:06', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('240', '111', '三丰', '2816.00', '7366.00', null, '2018-12-29 13:54:32', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('241', '111', '三丰', '2926.00', '7256.00', null, '2018-12-29 13:59:59', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('242', '111', '三丰', '3334.00', '6848.00', null, '2018-12-29 14:08:24', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('243', '111', '三丰', '3354.00', '6828.00', null, '2018-12-29 14:10:42', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('244', '111', '三丰', '3359.00', '6823.00', null, '2018-12-29 14:11:09', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('245', '111', '三丰', '3504.00', '6678.00', null, '2018-12-29 14:14:21', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('246', '111', '三丰', '3564.00', '6618.00', null, '2018-12-29 14:18:25', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('247', '106', '古古怪怪', '120.00', '5780.00', null, '2018-12-29 14:20:43', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('248', '106', '古古怪怪', '190.00', '5710.00', null, '2018-12-29 14:21:50', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('249', '106', '古古怪怪', '225.00', '5675.00', null, '2018-12-29 14:23:02', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('250', '106', '古古怪怪', '190.00', '5710.00', null, '2018-12-29 14:30:24', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('251', '111', '三丰', '5493.00', '4689.00', null, '2018-12-29 14:39:15', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('252', '106', '古古怪怪', '494.00', '5406.00', null, '2018-12-29 14:43:10', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('253', '111', '三丰', '5697.00', '4485.00', null, '2018-12-29 14:44:26', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('254', '111', '三丰', '5910.00', '4272.00', null, '2018-12-29 14:49:22', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('255', '111', '三丰', '588.00', '4860.00', null, '2018-12-29 15:01:06', '+', '中奖', null, '南邓上场', '家猫', '21');
INSERT INTO `uorder` VALUES ('256', '106', '古古怪怪', '140.00', '5546.00', null, '2018-12-29 15:01:06', '+', '中奖', null, '南邓上场', '家猫', '5');
INSERT INTO `uorder` VALUES ('257', '111', '三丰', '530.00', '4330.00', null, '2018-12-29 15:14:13', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('258', '111', '三丰', '676.00', '4184.00', null, '2018-12-29 17:21:07', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('259', '111', '三丰', '1576.00', '3284.00', null, '2018-12-29 17:26:04', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('260', '111', '三丰', '1276.00', '3584.00', null, '2018-12-29 17:28:37', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('261', '111', '三丰', '1484.00', '3376.00', null, '2018-12-29 17:32:03', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('262', '111', '三丰', '1516.00', '3344.00', null, '2018-12-29 17:34:48', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('263', '111', '三丰', '1561.00', '3299.00', null, '2018-12-29 17:38:11', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('264', '111', '三丰', '1581.00', '3279.00', null, '2018-12-29 17:44:59', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('265', '111', '三丰', '1701.00', '3159.00', null, '2018-12-29 17:49:41', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('266', '111', '三丰', '1711.00', '3149.00', null, '2018-12-29 17:52:09', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('267', '111', '三丰', '1779.00', '3081.00', null, '2018-12-29 17:55:58', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('268', '111', '三丰', '3134.00', '1726.00', null, '2018-12-29 18:16:24', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('269', '106', '古古怪怪', '720.00', '4826.00', null, '2018-12-29 18:32:20', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('270', '106', '古古怪怪', '963.00', '4583.00', null, '2018-12-29 18:43:15', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('271', '111', '三丰', '4855.00', '5.00', null, '2018-12-29 18:45:32', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('272', '106', '古古怪怪', '1038.00', '4508.00', null, '2018-12-29 18:46:31', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('273', '106', '古古怪怪', '1093.00', '4453.00', null, '2018-12-29 18:47:20', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('274', '106', '古古怪怪', '1227.00', '4319.00', null, '2018-12-29 18:49:02', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('275', '106', '古古怪怪', '1302.00', '4244.00', null, '2018-12-29 18:51:59', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('276', '111', '三丰', '5000.00', '5005.00', null, '2018-12-29 18:53:12', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('277', '111', '三丰', '5154.00', '4706.00', null, '2018-12-29 18:53:16', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('278', '111', '三丰', '20000.00', '24706.00', null, '2018-12-29 18:53:28', '+', '充点', null, null, null, null);
INSERT INTO `uorder` VALUES ('279', '111', '三丰', '10556.00', '35262.00', null, '2018-12-29 19:00:34', '+', '中奖', null, '南邓中场', '燕子', '377');
INSERT INTO `uorder` VALUES ('280', '106', '古古怪怪', '1288.00', '5532.00', null, '2018-12-29 19:00:34', '+', '中奖', null, '南邓中场', '燕子', '46');
INSERT INTO `uorder` VALUES ('281', '111', '三丰', '5668.00', '34748.00', null, '2018-12-29 20:40:09', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('282', '111', '三丰', '878.00', '33870.00', null, '2018-12-29 20:51:22', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('283', '111', '三丰', '1710.00', '33038.00', null, '2018-12-29 20:55:50', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('284', '111', '三丰', '2050.00', '32698.00', null, '2018-12-29 21:04:00', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('285', '111', '三丰', '2490.00', '32258.00', null, '2018-12-29 21:34:07', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('286', '111', '三丰', '4122.00', '30626.00', null, '2018-12-29 22:01:51', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('287', '111', '三丰', '4358.00', '30390.00', null, '2018-12-29 22:11:38', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('288', '111', '三丰', '4503.00', '30245.00', null, '2018-12-29 22:14:58', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('289', '111', '三丰', '4603.00', '30145.00', null, '2018-12-29 22:18:20', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('290', '111', '三丰', '4905.00', '29843.00', null, '2018-12-29 22:26:48', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('291', '111', '三丰', '4947.00', '29801.00', null, '2018-12-29 22:35:34', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('292', '111', '三丰', '4992.00', '29756.00', null, '2018-12-29 22:38:05', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('293', '111', '三丰', '5032.00', '29716.00', null, '2018-12-29 22:41:35', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('294', '111', '三丰', '5057.00', '29691.00', null, '2018-12-29 22:46:40', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('295', '111', '三丰', '6107.00', '28641.00', null, '2018-12-29 22:48:50', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('296', '106', '古古怪怪', '40.00', '5492.00', null, '2018-12-29 22:53:28', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('297', '106', '古古怪怪', '741.00', '4791.00', null, '2018-12-29 23:07:30', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('298', '106', '古古怪怪', '787.00', '4745.00', null, '2018-12-29 23:08:59', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('299', '106', '古古怪怪', '940.00', '4592.00', null, '2018-12-29 23:14:57', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('300', '106', '古古怪怪', '968.00', '4564.00', null, '2018-12-29 23:16:48', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('301', '106', '古古怪怪', '988.00', '4544.00', null, '2018-12-29 23:18:17', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('302', '106', '古古怪怪', '1015.00', '4517.00', null, '2018-12-29 23:18:53', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('303', '106', '古古怪怪', '1065.00', '4467.00', null, '2018-12-29 23:21:43', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('304', '106', '古古怪怪', '1076.00', '4456.00', null, '2018-12-29 23:23:52', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('305', '106', '古古怪怪', '1296.00', '4236.00', null, '2018-12-29 23:25:36', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('306', '106', '古古怪怪', '1337.00', '4195.00', null, '2018-12-29 23:32:28', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('307', '106', '古古怪怪', '1347.00', '4185.00', null, '2018-12-29 23:33:22', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('308', '106', '古古怪怪', '1943.00', '3589.00', null, '2018-12-29 23:40:26', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('309', '106', '古古怪怪', '2075.00', '3457.00', null, '2018-12-29 23:43:14', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('310', '106', '古古怪怪', '2282.00', '3250.00', null, '2018-12-29 23:52:38', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('311', '111', '三丰', '8428.00', '37069.00', null, '2018-12-30 00:01:01', '+', '中奖', null, '南邓下场', '飞龙', '301');
INSERT INTO `uorder` VALUES ('312', '106', '古古怪怪', '3444.00', '6694.00', null, '2018-12-30 00:01:01', '+', '中奖', null, '南邓下场', '飞龙', '123');
INSERT INTO `uorder` VALUES ('313', '111', '三丰', '2753.00', '34316.00', null, '2018-12-30 14:04:28', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('314', '111', '三丰', '3207.00', '33862.00', null, '2018-12-30 14:13:35', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('315', '111', '三丰', '3607.00', '33462.00', null, '2018-12-30 14:19:52', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('316', '111', '三丰', '3732.00', '33337.00', null, '2018-12-30 14:25:34', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('317', '111', '三丰', '5777.00', '31292.00', null, '2018-12-30 14:50:39', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('318', '111', '三丰', '5961.00', '31108.00', null, '2018-12-30 14:55:58', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('319', '111', '三丰', '308.00', '31416.00', null, '2018-12-30 15:01:47', '+', '中奖', null, '南邓上场', '家猫', '11');
INSERT INTO `uorder` VALUES ('320', '111', '三丰', '1215.00', '30201.00', null, '2018-12-30 17:30:42', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('321', '111', '三丰', '2496.00', '28920.00', null, '2018-12-30 17:58:49', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('322', '111', '三丰', '2639.00', '28777.00', null, '2018-12-30 18:10:19', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('323', '111', '三丰', '2821.00', '28595.00', null, '2018-12-30 18:13:12', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('324', '111', '三丰', '2841.00', '28575.00', null, '2018-12-30 18:18:09', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('325', '111', '三丰', '3788.00', '27628.00', null, '2018-12-30 18:25:27', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('326', '111', '三丰', '3888.00', '27528.00', null, '2018-12-30 18:25:56', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('327', '111', '三丰', '4082.00', '27334.00', null, '2018-12-30 18:31:10', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('328', '111', '三丰', '4098.00', '27318.00', null, '2018-12-30 18:31:48', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('329', '111', '三丰', '4161.00', '27255.00', null, '2018-12-30 18:34:33', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('330', '111', '三丰', '4406.00', '27010.00', null, '2018-12-30 18:38:50', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('331', '111', '三丰', '4432.00', '26984.00', null, '2018-12-30 18:40:26', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('332', '106', '古古怪怪', '5.00', '6689.00', null, '2018-12-30 18:48:36', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('333', '106', '古古怪怪', '42.00', '6652.00', null, '2018-12-30 18:49:23', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('334', '106', '古古怪怪', '60.00', '6634.00', null, '2018-12-30 18:49:58', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('335', '111', '三丰', '4644.00', '26772.00', null, '2018-12-30 18:51:32', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('336', '111', '三丰', '420.00', '27192.00', null, '2018-12-30 19:00:38', '+', '中奖', null, '南邓中场', '马鹿', '15');
INSERT INTO `uorder` VALUES ('337', '106', '古古怪怪', '0.00', '6634.00', null, '2018-12-30 19:00:38', '+', '中奖', null, '南邓中场', '', '0');
INSERT INTO `uorder` VALUES ('338', '111', '三丰', '860.00', '26332.00', null, '2018-12-30 20:54:40', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('339', '111', '三丰', '1960.00', '25232.00', null, '2018-12-30 21:11:40', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('340', '111', '三丰', '2244.00', '24948.00', null, '2018-12-30 21:15:36', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('341', '111', '三丰', '2024.00', '25168.00', null, '2018-12-30 21:25:18', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('342', '111', '三丰', '2044.00', '25148.00', null, '2018-12-30 21:27:03', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('343', '111', '三丰', '2169.00', '25023.00', null, '2018-12-30 22:13:13', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('344', '111', '三丰', '2179.00', '25013.00', null, '2018-12-30 22:19:55', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('345', '111', '三丰', '2224.00', '24968.00', null, '2018-12-30 22:29:10', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('346', '111', '三丰', '3153.00', '24039.00', null, '2018-12-30 22:34:54', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('347', '111', '三丰', '3204.00', '23988.00', null, '2018-12-30 22:41:04', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('348', '111', '三丰', '3349.00', '23843.00', null, '2018-12-30 22:43:31', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('349', '111', '三丰', '3389.00', '23803.00', null, '2018-12-30 22:47:18', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('350', '111', '三丰', '4083.00', '23109.00', null, '2018-12-30 23:00:39', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('351', '106', '古古怪怪', '116.00', '6518.00', null, '2018-12-30 23:06:59', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('352', '111', '三丰', '4110.00', '23082.00', null, '2018-12-30 23:13:07', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('353', '111', '三丰', '4167.00', '23025.00', null, '2018-12-30 23:15:17', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('354', '111', '三丰', '4227.00', '22965.00', null, '2018-12-30 23:16:03', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('355', '111', '三丰', '4402.00', '22790.00', null, '2018-12-30 23:17:02', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('356', '111', '三丰', '4464.00', '22728.00', null, '2018-12-30 23:20:05', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('357', '111', '三丰', '4487.00', '22705.00', null, '2018-12-30 23:22:46', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('358', '111', '三丰', '4507.00', '22685.00', null, '2018-12-30 23:24:14', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('359', '111', '三丰', '4571.00', '22621.00', null, '2018-12-30 23:31:55', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('360', '111', '三丰', '4631.00', '22561.00', null, '2018-12-30 23:33:04', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('361', '111', '三丰', '4636.00', '22556.00', null, '2018-12-30 23:34:56', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('362', '111', '三丰', '4666.00', '22526.00', null, '2018-12-30 23:35:47', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('363', '111', '三丰', '4831.00', '22361.00', null, '2018-12-30 23:39:38', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('364', '111', '三丰', '4876.00', '22316.00', null, '2018-12-30 23:40:21', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('365', '111', '三丰', '4881.00', '22311.00', null, '2018-12-30 23:40:49', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('366', '111', '三丰', '4916.00', '22276.00', null, '2018-12-30 23:44:01', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('367', '111', '三丰', '4936.00', '22256.00', null, '2018-12-30 23:45:49', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('368', '111', '三丰', '5046.00', '22146.00', null, '2018-12-30 23:47:32', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('369', '111', '三丰', '5089.00', '22103.00', null, '2018-12-30 23:49:44', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('370', '111', '三丰', '5600.00', '27703.00', null, '2018-12-31 00:02:01', '+', '中奖', null, '南邓下场', '鸽子', '200');
INSERT INTO `uorder` VALUES ('371', '106', '古古怪怪', '0.00', '6518.00', null, '2018-12-31 00:02:01', '+', '中奖', null, '南邓下场', '', '0');
INSERT INTO `uorder` VALUES ('372', '111', '三丰', '1710.00', '25993.00', null, '2018-12-31 14:14:15', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('373', '111', '三丰', '2119.00', '25584.00', null, '2018-12-31 14:23:49', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('374', '111', '三丰', '4143.00', '23560.00', null, '2018-12-31 14:39:26', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('375', '111', '三丰', '5159.00', '22544.00', null, '2018-12-31 14:47:03', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('376', '111', '三丰', '5327.00', '22376.00', null, '2018-12-31 14:53:19', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('377', '111', '三丰', '5420.00', '22283.00', null, '2018-12-31 14:57:56', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('378', '111', '三丰', '5445.00', '22258.00', null, '2018-12-31 15:00:02', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('379', '111', '三丰', '6916.00', '29174.00', null, '2018-12-31 15:01:43', '+', '中奖', null, '南邓上场', '金龙', '247');
INSERT INTO `uorder` VALUES ('380', '111', '三丰', '5592.00', '29027.00', null, '2018-12-31 15:02:19', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('381', '106', '古古怪怪', '800.00', '5718.00', null, '2018-12-31 16:01:24', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('382', '111', '三丰', '250.00', '28777.00', null, '2018-12-31 17:04:21', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('383', '111', '三丰', '450.00', '28577.00', null, '2018-12-31 17:21:42', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('384', '111', '三丰', '620.00', '28407.00', null, '2018-12-31 17:26:23', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('385', '111', '三丰', '640.00', '28387.00', null, '2018-12-31 17:31:14', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('386', '111', '三丰', '1016.00', '28011.00', null, '2018-12-31 17:46:55', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('387', '111', '三丰', '1184.00', '27843.00', null, '2018-12-31 17:50:06', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('388', '111', '三丰', '965.00', '28062.00', null, '2018-12-31 17:51:31', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('389', '111', '三丰', '1633.00', '27394.00', null, '2018-12-31 17:54:38', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('390', '111', '三丰', '1644.00', '27383.00', null, '2018-12-31 17:56:25', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('391', '111', '三丰', '1944.00', '27083.00', null, '2018-12-31 17:59:13', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('392', '111', '三丰', '1964.00', '27063.00', null, '2018-12-31 18:00:40', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('393', '111', '三丰', '2094.00', '26933.00', null, '2018-12-31 18:10:48', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('394', '111', '三丰', '2128.00', '26899.00', null, '2018-12-31 18:19:09', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('395', '111', '三丰', '2295.00', '26732.00', null, '2018-12-31 18:27:42', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('396', '111', '三丰', '2405.00', '26622.00', null, '2018-12-31 18:30:48', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('397', '111', '三丰', '2725.00', '26302.00', null, '2018-12-31 18:33:57', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('398', '111', '三丰', '2835.00', '26192.00', null, '2018-12-31 18:36:23', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('399', '111', '三丰', '3455.00', '25572.00', null, '2018-12-31 18:37:28', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('400', '111', '三丰', '3465.00', '25562.00', null, '2018-12-31 18:37:43', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('401', '111', '三丰', '3872.00', '25155.00', null, '2018-12-31 18:43:22', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('402', '111', '三丰', '4947.00', '24080.00', null, '2018-12-31 18:48:35', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('403', '111', '三丰', '4992.00', '24035.00', null, '2018-12-31 18:54:53', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('404', '111', '三丰', '5160.00', '23867.00', null, '2018-12-31 18:56:43', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('405', '111', '三丰', '5340.00', '23687.00', null, '2018-12-31 18:58:56', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('406', '106', '古古怪怪', '0.00', '5718.00', null, '2018-12-31 19:02:03', '+', '中奖', null, '南邓中场', '', '0');
INSERT INTO `uorder` VALUES ('407', '111', '三丰', '7448.00', '31135.00', null, '2018-12-31 19:02:03', '+', '中奖', null, '南邓中场', '羊', '266');
INSERT INTO `uorder` VALUES ('408', '111', '三丰', '1114.00', '30021.00', null, '2018-12-31 20:24:10', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('409', '111', '三丰', '1132.00', '30003.00', null, '2018-12-31 20:38:13', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('410', '111', '三丰', '1526.00', '29609.00', null, '2018-12-31 21:36:38', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('411', '111', '三丰', '1665.00', '29470.00', null, '2018-12-31 21:41:11', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('412', '111', '三丰', '1488.00', '29647.00', null, '2018-12-31 21:45:53', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('413', '111', '三丰', '1538.00', '29597.00', null, '2018-12-31 21:46:56', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('414', '111', '三丰', '1540.00', '29595.00', null, '2018-12-31 21:49:21', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('415', '111', '三丰', '1550.00', '29585.00', null, '2018-12-31 21:52:02', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('416', '111', '三丰', '1600.00', '29535.00', null, '2018-12-31 21:53:40', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('417', '111', '三丰', '1650.00', '29485.00', null, '2018-12-31 21:55:07', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('418', '111', '三丰', '1714.00', '29421.00', null, '2018-12-31 22:02:23', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('419', '111', '三丰', '1773.00', '29362.00', null, '2018-12-31 22:03:45', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('420', '111', '三丰', '1828.00', '29307.00', null, '2018-12-31 22:11:32', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('421', '111', '三丰', '1943.00', '29192.00', null, '2018-12-31 22:20:20', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('422', '111', '三丰', '1993.00', '29142.00', null, '2018-12-31 22:28:02', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('423', '111', '三丰', '2013.00', '29122.00', null, '2018-12-31 22:40:07', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('424', '111', '三丰', '2168.00', '28967.00', null, '2018-12-31 22:45:04', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('425', '111', '三丰', '2318.00', '28817.00', null, '2018-12-31 22:48:29', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('426', '111', '三丰', '3368.00', '27767.00', null, '2018-12-31 22:58:54', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('427', '111', '三丰', '3478.00', '27657.00', null, '2018-12-31 23:01:41', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('428', '111', '三丰', '3921.00', '27214.00', null, '2018-12-31 23:09:12', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('429', '111', '三丰', '4202.00', '26933.00', null, '2018-12-31 23:17:26', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('430', '111', '三丰', '4422.00', '26713.00', null, '2018-12-31 23:18:43', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('431', '111', '三丰', '3722.00', '27413.00', null, '2018-12-31 23:24:05', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('432', '111', '三丰', '4342.00', '26793.00', null, '2018-12-31 23:27:37', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('433', '111', '三丰', '6406.00', '24729.00', null, '2018-12-31 23:37:08', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('434', '111', '三丰', '6603.00', '24532.00', null, '2018-12-31 23:39:09', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('435', '111', '三丰', '6674.00', '24461.00', null, '2018-12-31 23:41:10', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('436', '111', '三丰', '6694.00', '24441.00', null, '2018-12-31 23:41:58', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('437', '111', '三丰', '6724.00', '24411.00', null, '2018-12-31 23:42:22', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('438', '111', '三丰', '6734.00', '24401.00', null, '2018-12-31 23:42:33', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('439', '111', '三丰', '6764.00', '24371.00', null, '2018-12-31 23:43:34', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('440', '111', '三丰', '6859.00', '24276.00', null, '2018-12-31 23:52:53', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('441', '111', '三丰', '13300.00', '37576.00', null, '2019-01-01 00:02:13', '+', '中奖', null, '南邓下场', '兔子', '475');
INSERT INTO `uorder` VALUES ('442', '111', '三丰', '3120.00', '34456.00', null, '2019-01-01 14:03:42', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('443', '111', '三丰', '3143.00', '34433.00', null, '2019-01-01 14:06:40', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('444', '111', '三丰', '3193.00', '34383.00', null, '2019-01-01 14:11:59', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('445', '111', '三丰', '3739.00', '33837.00', null, '2019-01-01 14:23:05', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('446', '111', '三丰', '3759.00', '33817.00', null, '2019-01-01 14:26:40', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('447', '111', '三丰', '5114.00', '32462.00', null, '2019-01-01 14:42:04', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('448', '111', '三丰', '5900.00', '31676.00', null, '2019-01-01 14:46:48', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('449', '111', '三丰', '6075.00', '31501.00', null, '2019-01-01 14:51:03', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('450', '111', '三丰', '4620.00', '36121.00', null, '2019-01-01 15:02:19', '+', '中奖', null, '南邓上场', '鸡', '165');
INSERT INTO `uorder` VALUES ('451', '111', '三丰', '950.00', '35171.00', null, '2019-01-01 16:09:35', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('452', '111', '三丰', '1210.00', '34911.00', null, '2019-01-01 16:53:07', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('453', '111', '三丰', '1471.00', '34650.00', null, '2019-01-01 17:47:50', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('454', '111', '三丰', '1571.00', '34550.00', null, '2019-01-01 18:05:08', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('455', '111', '三丰', '3296.00', '32825.00', null, '2019-01-01 18:14:57', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('456', '111', '三丰', '3311.00', '32810.00', null, '2019-01-01 18:17:03', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('457', '111', '三丰', '3421.00', '32700.00', null, '2019-01-01 18:20:39', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('458', '111', '三丰', '3745.00', '32376.00', null, '2019-01-01 18:23:40', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('459', '111', '三丰', '3765.00', '32356.00', null, '2019-01-01 18:26:20', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('460', '111', '三丰', '3885.00', '32236.00', null, '2019-01-01 18:31:03', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('461', '111', '三丰', '4192.00', '31929.00', null, '2019-01-01 18:37:09', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('462', '111', '三丰', '4242.00', '31879.00', null, '2019-01-01 18:38:33', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('463', '111', '三丰', '4530.00', '31591.00', null, '2019-01-01 18:41:30', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('464', '111', '三丰', '5340.00', '30781.00', null, '2019-01-01 18:51:40', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('465', '111', '三丰', '3080.00', '33861.00', null, '2019-01-01 19:06:11', '+', '中奖', null, '南邓中场', '蝴蝶', '110');
INSERT INTO `uorder` VALUES ('466', '111', '三丰', '1650.00', '32211.00', null, '2019-01-01 20:51:24', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('467', '111', '三丰', '1670.00', '32191.00', null, '2019-01-01 21:15:53', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('468', '111', '三丰', '1685.00', '32176.00', null, '2019-01-01 21:56:33', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('469', '111', '三丰', '1805.00', '32056.00', null, '2019-01-01 22:04:15', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('470', '111', '三丰', '1839.00', '32022.00', null, '2019-01-01 22:07:52', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('471', '111', '三丰', '1859.00', '32002.00', null, '2019-01-01 22:26:25', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('472', '111', '三丰', '1909.00', '31952.00', null, '2019-01-01 22:30:18', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('473', '111', '三丰', '2224.00', '31637.00', null, '2019-01-01 22:39:25', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('474', '111', '三丰', '2360.00', '31501.00', null, '2019-01-01 22:42:35', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('475', '111', '三丰', '3175.00', '30686.00', null, '2019-01-01 22:50:10', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('476', '111', '三丰', '3185.00', '30676.00', null, '2019-01-01 22:52:08', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('477', '111', '三丰', '3205.00', '30656.00', null, '2019-01-01 23:30:09', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('478', '111', '三丰', '3270.00', '30591.00', null, '2019-01-01 23:31:36', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('479', '111', '三丰', '3290.00', '30571.00', null, '2019-01-01 23:41:46', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('480', '111', '三丰', '3690.00', '30171.00', null, '2019-01-01 23:43:15', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('481', '111', '三丰', '3705.00', '30156.00', null, '2019-01-01 23:43:33', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('482', '111', '三丰', '3715.00', '30146.00', null, '2019-01-01 23:51:07', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('483', '111', '三丰', '0.00', '30146.00', null, '2019-01-02 00:00:52', '+', '中奖', null, '南邓下场', '', '0');
INSERT INTO `uorder` VALUES ('484', '111', '三丰', '110.00', '30036.00', null, '2019-01-02 12:57:21', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('485', '111', '三丰', '610.00', '29536.00', null, '2019-01-02 12:58:48', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('486', '111', '三丰', '1925.00', '28221.00', null, '2019-01-02 13:48:50', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('487', '111', '三丰', '2825.00', '27321.00', null, '2019-01-02 13:54:30', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('488', '111', '三丰', '2975.00', '27171.00', null, '2019-01-02 13:59:17', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('489', '111', '三丰', '3075.00', '27071.00', null, '2019-01-02 14:00:45', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('490', '111', '三丰', '3225.00', '26921.00', null, '2019-01-02 14:02:34', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('491', '111', '三丰', '3245.00', '26901.00', null, '2019-01-02 14:07:19', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('492', '111', '三丰', '3505.00', '26641.00', null, '2019-01-02 14:15:17', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('493', '111', '三丰', '3510.00', '26636.00', null, '2019-01-02 14:16:05', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('494', '111', '三丰', '3536.00', '26610.00', null, '2019-01-02 14:20:07', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('495', '111', '三丰', '3601.00', '26545.00', null, '2019-01-02 14:24:21', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('496', '111', '三丰', '3646.00', '26500.00', null, '2019-01-02 14:25:40', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('497', '111', '三丰', '3666.00', '26480.00', null, '2019-01-02 14:26:25', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('498', '111', '三丰', '3816.00', '26330.00', null, '2019-01-02 14:27:12', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('499', '111', '三丰', '4016.00', '26130.00', null, '2019-01-02 14:28:34', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('500', '111', '三丰', '4061.00', '26085.00', null, '2019-01-02 14:31:40', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('501', '111', '三丰', '4211.00', '25935.00', null, '2019-01-02 14:35:23', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('502', '111', '三丰', '4326.00', '25820.00', null, '2019-01-02 14:39:24', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('503', '111', '三丰', '4524.00', '25622.00', null, '2019-01-02 14:42:09', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('504', '111', '三丰', '4984.00', '25162.00', null, '2019-01-02 14:47:28', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('505', '111', '三丰', '5637.00', '24509.00', null, '2019-01-02 14:55:05', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('506', '111', '三丰', '5654.00', '24492.00', null, '2019-01-02 14:55:31', '-', '下注', null, '南邓上场', null, null);
INSERT INTO `uorder` VALUES ('507', '111', '三丰', '9884.00', '34376.00', null, '2019-01-02 15:01:19', '+', '中奖', null, '南邓上场', '金龙', '353');
INSERT INTO `uorder` VALUES ('508', '111', '三丰', '350.00', '34026.00', null, '2019-01-02 16:58:53', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('509', '111', '三丰', '1050.00', '33326.00', null, '2019-01-02 17:45:23', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('510', '111', '三丰', '1185.00', '33191.00', null, '2019-01-02 17:49:35', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('511', '111', '三丰', '1235.00', '33141.00', null, '2019-01-02 17:51:53', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('512', '111', '三丰', '1440.00', '32936.00', null, '2019-01-02 18:06:18', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('513', '111', '三丰', '1450.00', '32926.00', null, '2019-01-02 18:07:06', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('514', '111', '三丰', '1480.00', '32896.00', null, '2019-01-02 18:09:37', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('515', '111', '三丰', '1570.00', '32806.00', null, '2019-01-02 18:11:33', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('516', '111', '三丰', '1585.00', '32791.00', null, '2019-01-02 18:12:12', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('517', '111', '三丰', '1635.00', '32741.00', null, '2019-01-02 18:18:53', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('518', '111', '三丰', '1675.00', '32701.00', null, '2019-01-02 18:24:42', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('519', '111', '三丰', '1687.00', '32689.00', null, '2019-01-02 18:25:11', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('520', '111', '三丰', '1727.00', '32649.00', null, '2019-01-02 18:27:00', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('521', '111', '三丰', '1857.00', '32519.00', null, '2019-01-02 18:28:05', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('522', '111', '三丰', '1977.00', '32399.00', null, '2019-01-02 18:31:39', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('523', '111', '三丰', '2222.00', '32154.00', null, '2019-01-02 18:35:49', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('524', '111', '三丰', '2292.00', '32084.00', null, '2019-01-02 18:37:24', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('525', '111', '三丰', '2885.00', '31491.00', null, '2019-01-02 18:43:56', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('526', '111', '三丰', '3210.00', '31166.00', null, '2019-01-02 18:47:49', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('527', '111', '三丰', '3601.00', '30775.00', null, '2019-01-02 18:50:35', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('528', '111', '三丰', '3721.00', '30655.00', null, '2019-01-02 18:52:20', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('529', '111', '三丰', '3960.00', '30416.00', null, '2019-01-02 18:55:18', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('530', '111', '三丰', '4214.00', '30162.00', null, '2019-01-02 18:57:42', '-', '下注', null, '南邓中场', null, null);
INSERT INTO `uorder` VALUES ('531', '111', '三丰', '1260.00', '31422.00', null, '2019-01-02 19:00:59', '+', '中奖', null, '南邓中场', '鳝鱼', '45');
INSERT INTO `uorder` VALUES ('532', '111', '三丰', '420.00', '31002.00', null, '2019-01-02 21:15:41', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('533', '111', '三丰', '460.00', '30962.00', null, '2019-01-02 21:53:27', '-', '下注', null, '南邓下场', null, null);
INSERT INTO `uorder` VALUES ('534', '111', '三丰', '480.00', '30942.00', null, '2019-01-02 22:05:06', '-', '下注', null, '南邓下场', null, null);

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
) ENGINE=InnoDB AUTO_INCREMENT=115 DEFAULT CHARSET=utf8;

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
INSERT INTO `users` VALUES ('106', '古古怪怪', '8795633', 'asdf10086', '0', '2018-12-25 23:25:43', '0.jpg', '5718.00', null);
INSERT INTO `users` VALUES ('107', '龙牌', 'Zh', 'zh198712', '0', '2018-12-26 00:17:25', '1.jpg', '0.00', null);
INSERT INTO `users` VALUES ('108', '永恒牵挂', '520347347520', '520347zzj520', '0', '2018-12-26 00:25:10', '0.jpg', '5000.00', null);
INSERT INTO `users` VALUES ('109', '雍', 'hanmu97', 'lll7890', '0', '2018-12-26 01:13:20', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('110', '小马哥', '198612', '198612', '0', '2018-12-28 15:36:56', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('111', '三丰', 'ig123', 'ig123', '0', '2018-12-28 16:26:47', '0.jpg', '30942.00', null);
INSERT INTO `users` VALUES ('112', '大发', '45678', '334567', '2', '2018-12-28 18:19:22', '0.jpg', '10000.00', '10');
INSERT INTO `users` VALUES ('113', '尘埃', 'huang3231259', '447498772', '0', '2018-12-29 14:24:43', '0.jpg', '0.00', null);
INSERT INTO `users` VALUES ('114', '7777', '777777', '12345678', '2', '2019-01-02 13:27:40', '0.jpg', '10000.00', '10');
