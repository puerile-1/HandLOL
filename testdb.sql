/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50729
Source Host           : localhost:3306
Source Database       : testdb

Target Server Type    : MYSQL
Target Server Version : 50729
File Encoding         : 65001

Date: 2022-06-09 00:11:28
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `lolRank` varchar(255) DEFAULT NULL,
  `cloudRank` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `videoBg` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `readNum` int(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `sendNum` int(11) DEFAULT NULL,
  `commentNum` int(11) DEFAULT NULL,
  `shareNum` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of articles
-- ----------------------------
INSERT INTO `articles` VALUES ('1', '/src/assets/img/toux.jpg', 'Flechazo', '9', '最强王者', '钻二', '小超梦发现顶级ID，只享受了一分钟', '/src/assets/video/video.mp4', '/src/assets/img/视频封面.jpg', null, '520', '06-01', '13', '14', '520', '2022-06-05 13:29:46', '2022-06-05 13:29:48');
INSERT INTO `articles` VALUES ('2', '/src/assets/img/toux1.jpg', '浅挚半兮', '5', '黄金二', '白银一', '最强王者组精彩击杀集锦', '/src/assets/video/video3.mp4', '/src/assets/img/王者组封面.jpg', null, '1314', '06-02', '30', '40', '50', '2022-06-05 13:30:00', '2022-06-05 13:30:01');
INSERT INTO `articles` VALUES ('3', '/src/assets/img/toux2.jpg', '小猪猪', '99', '最强王者', '最强王者', '玩LOL十年，拿过最刺激的五杀', '/src/assets/video/video2.mp4', '/src/assets/img/刺激五杀.jpg', null, '258', '06-03', '15', '16', '20', '2022-06-05 13:44:16', '2022-06-05 13:44:20');

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of messages
-- ----------------------------
INSERT INTO `messages` VALUES ('1', '浅挚半兮', '我想你了', '15:15', '/src/assets/img/toux1.jpg', '2022-06-02 16:19:01', '2022-06-02 16:19:05');
INSERT INTO `messages` VALUES ('2', '猪头', '你才是猪', '15:20', '/src/assets/img/toux2.jpg', '2022-06-02 16:20:19', '2022-06-02 16:20:22');
INSERT INTO `messages` VALUES ('3', 'Gipsófila', '你在干嘛呀', '13:14', '/src/assets/img/toux3.jpg', '2022-06-02 16:21:22', '2022-06-02 16:21:25');
INSERT INTO `messages` VALUES ('4', 'Flechazo', '我在想是吃烤乳猪、清蒸猪，还是油炸猪', '22:58', '/src/assets/img/toux4.jpg', '2022-06-02 16:23:16', '2022-06-02 16:23:19');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `comeFrom` varchar(255) DEFAULT NULL,
  `commentNum` int(11) DEFAULT NULL,
  `body` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '5月26日凌晨一点停机版本更新公告', 'LOL', '英雄联盟官方', '203', 'LOL将在5月26日凌晨1点开始全区停机维护(请注意：5月26日0点将关闭排位赛入口，不会影响正在进行中的排位赛)发布12.10版本，预计停机时间为1:00-12：00 。对于在停机期间结束的活动，其实际结束时间也将提前至停机维护开始时，敬请留意。', '/src/assets/img/body1.jpg', '2022-05-25 20:38:49', '2022-05-25 20:38:52');
INSERT INTO `news` VALUES ('2', '12.10云顶之弈版本更新公告', '云顶', '英雄联盟官方', '16', 'LOL将在526日凌晨1点开始全区停机维护', '/src/assets/img/body2.jpg', '2022-05-25 20:44:43', '2022-05-25 20:44:46');
INSERT INTO `news` VALUES ('3', '西部魔影二度冲击即将上线', 'LOL', '英雄联盟官方', '3', 'LOL将在526日凌晨1点开始全区停机维护', '/src/assets/img/body5.jpg', '2022-05-25 20:45:47', '2022-05-25 20:45:49');
INSERT INTO `news` VALUES ('4', 'Faker的狐狸不能放，RNG亲测，让他拿佐伊挺好的', 'LOL', '电竞苦瓜', '14', '《苦瓜电竞》--让你体验不一样的电竞主播', '/src/assets/img/body4.jpg', '2022-05-25 20:47:31', '2022-05-25 20:47:34');
INSERT INTO `news` VALUES ('5', 'EG辅助放话有信心赢下RNG：我们的上野比RNG强', 'LOL', '暴龙电竞官方号', '23', '伴随MSI季中赛对抗赛的结束，MSI季中赛临近了尾声', '/src/assets/img/body3.jpg', '2022-05-26 20:37:28', '2022-05-27 20:37:31');
INSERT INTO `news` VALUES ('7', '【汇总】12.11版本海洋之歌系列新皮肤情况汇总', 'LOL', '小老鼠小伟', '30', '12.11版本一共有七款新皮肤，六款海洋之歌系列', '/src/assets/img/body7.png', '2022-05-26 20:50:02', '2022-05-26 20:50:04');
INSERT INTO `news` VALUES ('8', '重返LPL赛场！马哥Smlz正式加入WE，宁王面临考验', 'LOL', '联盟一起聊', '1', '夜色已深，看点十足的Msi淘汰赛即将上演，从5月27日开始', '/src/assets/img/body8.jpg', '2022-05-26 22:04:12', '2022-05-26 22:04:16');

-- ----------------------------
-- Table structure for records
-- ----------------------------
DROP TABLE IF EXISTS `records`;
CREATE TABLE `records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `outcome` varchar(255) DEFAULT NULL,
  `mode` varchar(255) DEFAULT NULL,
  `kda` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of records
-- ----------------------------
INSERT INTO `records` VALUES ('1', '胜利', '匹配模式', '15/2/0', '/src/assets/img/Jhin.png', '2022-06-04 15:44:55', '2022-06-04 15:44:58');
INSERT INTO `records` VALUES ('2', '胜利', '单双排', '13/14/9', '/src/assets/img/Yasuo.png', '2022-06-04 15:45:57', '2022-06-04 15:45:59');
INSERT INTO `records` VALUES ('3', '胜利', '单双排', '9/9/9', '/src/assets/img/LeeSin.png', '2022-06-04 15:46:38', '2022-06-04 15:46:41');
INSERT INTO `records` VALUES ('4', '失败', '匹配模式', '20/7/18', '/src/assets/img/Senna.png', '2022-06-04 15:50:26', '2022-06-04 15:50:51');
INSERT INTO `records` VALUES ('5', '胜利', '无限乱斗', '31/9/7', '/src/assets/img/Varus.png', '2022-06-04 15:51:01', '2022-06-04 15:51:04');

-- ----------------------------
-- Table structure for tutorials
-- ----------------------------
DROP TABLE IF EXISTS `tutorials`;
CREATE TABLE `tutorials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of tutorials
-- ----------------------------
INSERT INTO `tutorials` VALUES ('1', 'aaa', 'bbb', null, '2022-05-22 05:59:39', '2022-05-22 05:59:39');

-- ----------------------------
-- Table structure for uploads
-- ----------------------------
DROP TABLE IF EXISTS `uploads`;
CREATE TABLE `uploads` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of uploads
-- ----------------------------
INSERT INTO `uploads` VALUES ('21', 'uploads\\2022068\\file-1654656797582.jpg', '2022-06-08 02:53:17', '2022-06-08 02:53:17');
INSERT INTO `uploads` VALUES ('22', 'uploads\\2022068\\file-1654703316920.jpeg', '2022-06-08 15:48:37', '2022-06-08 15:48:37');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL,
  `updatedAt` datetime DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `lolRank` varchar(255) DEFAULT NULL,
  `cloudRank` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', '1', '1', '2022-06-07 16:52:14', '2022-06-07 16:52:17', '/src/assets/img/toux.jpg', 'Flechazo', '9', '最强王者', '钻二');
INSERT INTO `user` VALUES ('2', '2', '2', '2022-06-07 16:56:14', '2022-06-07 16:56:18', '/src/assets/img/toux1.jpg', '浅挚半兮', '5', '黄金二', '白银一');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) DEFAULT NULL,
  `userPwd` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `grade` int(11) DEFAULT NULL,
  `lolRank` varchar(255) DEFAULT NULL,
  `cloudRank` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', '1', '1', '/src/assets/img/touX.jpg', '张大飞', '9', '黄金二', '白银一', '2022-06-07 18:15:18', '2022-06-08 15:47:59');
INSERT INTO `users` VALUES ('2', '2', '2', '/src/assets/img/toux1.jpg', '劳小怡', '15', '最强王者', '钻二', '2022-06-07 18:23:26', '2022-06-07 18:23:29');
