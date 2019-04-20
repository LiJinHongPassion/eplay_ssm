/*
Navicat MySQL Data Transfer

Source Server         : MyEclipse
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : eplay

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2019-04-20 10:37:14
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `group_id` varchar(255) NOT NULL,
  `group_name` varchar(255) DEFAULT NULL,
  `group_userlist` varchar(255) NOT NULL,
  `sport_address` varchar(255) DEFAULT NULL,
  `sport_time` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES ('1', '跑步', '116213801', '重庆理工大学（花溪）操场', '2019-4-6 15：00');
INSERT INTO `group` VALUES ('2', '大打篮球', '2', '重庆理工大学（花溪）体育馆', '2019-4-16 15:00 ');
INSERT INTO `group` VALUES ('20190414155721950', '快乐小分队', '3', '重理工', '2019-04-05');

-- ----------------------------
-- Table structure for groupuserlist
-- ----------------------------
DROP TABLE IF EXISTS `groupuserlist`;
CREATE TABLE `groupuserlist` (
  `group_userlist_id` varchar(255) NOT NULL,
  `user1` varchar(255) DEFAULT NULL,
  `user2` varchar(255) DEFAULT NULL,
  `user3` varchar(255) DEFAULT NULL,
  `user4` varchar(255) DEFAULT NULL,
  `user5` varchar(255) DEFAULT NULL,
  `user6` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`group_userlist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of groupuserlist
-- ----------------------------
INSERT INTO `groupuserlist` VALUES ('1', '白胡顺', '李佳阳', '李锦洪', '王淑', '康晓亚', null);
INSERT INTO `groupuserlist` VALUES ('2', '乔布斯', null, null, null, null, null);

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(190) NOT NULL,
  `session` varchar(4000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('17492efe-e365-4739-8ba7-23d21d21b518', 'rO0ABXNyACpvcmcuYXBhY2hlLnNoaXJvLnNlc3Npb24ubWd0LlNpbXBsZVNlc3Npb26dHKG41YxibgMAAHhwdwIAW3QAJDE3NDkyZWZlLWUzNjUtNDczOS04YmE3LTIzZDIxZDIxYjUxOHNyAA5qYXZhLnV0aWwuRGF0ZWhqgQFLWXQZAwAAeHB3CAAAAWocGCwaeHEAfgAEdxMAAAAAABt3QAAJMTI3LjAuMC4xeA==');
INSERT INTO `sessions` VALUES ('63ca297a-3e58-4c02-a910-a6bac4c4e550', 'rO0ABXNyACpvcmcuYXBhY2hlLnNoaXJvLnNlc3Npb24ubWd0LlNpbXBsZVNlc3Npb26dHKG41YxibgMAAHhwdwIA23QAJDYzY2EyOTdhLTNlNTgtNGMwMi1hOTEwLWE2YmFjNGM0ZTU1MHNyAA5qYXZhLnV0aWwuRGF0ZWhqgQFLWXQZAwAAeHB3CAAAAWocGIEGeHNxAH4AA3cIAAABahwYgYd4dxkAAAAAABt3QAAPMDowOjA6MDowOjA6MDoxc3IAEWphdmEudXRpbC5IYXNoTWFwBQfawcMWYNEDAAJGAApsb2FkRmFjdG9ySQAJdGhyZXNob2xkeHA/QAAAAAAADHcIAAAAEAAAAAF0ABFzaGlyb1NhdmVkUmVxdWVzdHNyACZvcmcuYXBhY2hlLnNoaXJvLndlYi51dGlsLlNhdmVkUmVxdWVzdK/OPK15gsq6AgADTAAGbWV0aG9kdAASTGphdmEvbGFuZy9TdHJpbmc7TAALcXVlcnlTdHJpbmdxAH4ACkwACnJlcXVlc3RVUklxAH4ACnhwdAADR0VUcHQADy90ZXN0L2luZGV4LmpzcHh4');
INSERT INTO `sessions` VALUES ('89ab1fdc-4826-49b3-9801-f2abac81360f', 'rO0ABXNyACpvcmcuYXBhY2hlLnNoaXJvLnNlc3Npb24ubWd0LlNpbXBsZVNlc3Npb26dHKG41YxibgMAAHhwdwIA23QAJDg5YWIxZmRjLTQ4MjYtNDliMy05ODAxLWYyYWJhYzgxMzYwZnNyAA5qYXZhLnV0aWwuRGF0ZWhqgQFLWXQZAwAAeHB3CAAAAWocGDaxeHNxAH4AA3cIAAABahwYa1N4dxkAAAAAABt3QAAPMDowOjA6MDowOjA6MDoxc3IAEWphdmEudXRpbC5IYXNoTWFwBQfawcMWYNEDAAJGAApsb2FkRmFjdG9ySQAJdGhyZXNob2xkeHA/QAAAAAAADHcIAAAAEAAAAAN0AFBvcmcuYXBhY2hlLnNoaXJvLnN1YmplY3Quc3VwcG9ydC5EZWZhdWx0U3ViamVjdENvbnRleHRfQVVUSEVOVElDQVRFRF9TRVNTSU9OX0tFWXNyABFqYXZhLmxhbmcuQm9vbGVhbs0gcoDVnPruAgABWgAFdmFsdWV4cAF0AE1vcmcuYXBhY2hlLnNoaXJvLnN1YmplY3Quc3VwcG9ydC5EZWZhdWx0U3ViamVjdENvbnRleHRfUFJJTkNJUEFMU19TRVNTSU9OX0tFWXNyADJvcmcuYXBhY2hlLnNoaXJvLnN1YmplY3QuU2ltcGxlUHJpbmNpcGFsQ29sbGVjdGlvbqh/WCXGowhKAwABTAAPcmVhbG1QcmluY2lwYWxzdAAPTGphdmEvdXRpbC9NYXA7eHBzcgAXamF2YS51dGlsLkxpbmtlZEhhc2hNYXA0wE5cEGzA+wIAAVoAC2FjY2Vzc09yZGVyeHEAfgAGP0AAAAAAAAx3CAAAABAAAAABdAAoY29tLmNxdXQubGkuZXBsYXlfc3NtLnJlYWxtLk15c3FsUmVhbG1fMHNyABdqYXZhLnV0aWwuTGlua2VkSGFzaFNldNhs11qV3SoeAgAAeHIAEWphdmEudXRpbC5IYXNoU2V0ukSFlZa4tzQDAAB4cHcMAAAAED9AAAAAAAABdAADMTIzeHgAdwEBcQB+ABB4dAAIdXNlcl9tc2dzcQB+AAY/QAAAAAAADHcIAAAAEAAAAAV0AAhiaXJ0aGRheXQAEzIwMTktMDItMDIgMDA6MDA6MDB0AAZyZXN1bHR0AAExdAAIcGFzc3dvcmR0ACBjYWU1MjA4YzQwNDM1ZWY1NWMyMzFiZDVhZWJlMjMwNHQAB3VzZXJfaWR0AAMxMjN0AAl1c2VyX25hbWV0AAVhZG1pbnh4eA==');

-- ----------------------------
-- Table structure for sport
-- ----------------------------
DROP TABLE IF EXISTS `sport`;
CREATE TABLE `sport` (
  `sport_id` varchar(255) NOT NULL,
  `sport_name` varchar(255) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `introduce` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`sport_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sport
-- ----------------------------
INSERT INTO `sport` VALUES ('1', '游泳', '180.00', '锻炼身体全身肌肉，提高身体素质。');
INSERT INTO `sport` VALUES ('2', '乒乓球', '20.00', '锻炼反应能力。');
INSERT INTO `sport` VALUES ('3', '锻炼局部肌肉', '35.00', '可选择锻炼手臂，腿部，上肢等地方单独联系。');
INSERT INTO `sport` VALUES ('4', '瑜伽', '300.00', '修身养性，提高身体柔韧度。');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` varchar(255) NOT NULL,
  `user_name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `birthday` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('116213801', 'admin', '123', '2019-4-8', '重庆理工大学', 'eplay@139.com');
INSERT INTO `user` VALUES ('123', 'admin', 'cae5208c40435ef55c231bd5aebe2304', '2019-02-02 00:00:00', null, null);
