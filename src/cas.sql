/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50528
Source Host           : localhost:3306
Source Database       : cas

Target Server Type    : MYSQL
Target Server Version : 50528
File Encoding         : 65001

Date: 2014-11-01 11:31:31
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `client`
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `domain` varchar(255) NOT NULL,
  `pubkey` varchar(255) NOT NULL,
  `prikey` varchar(256) NOT NULL,
  `modkey` varchar(256) NOT NULL,
  `ip` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of client
-- ----------------------------
INSERT INTO `client` VALUES ('1', 'sshdemo', 'http://192.168.1.118:8080/sshdemo', '10001', 'ba7ec629eced543d0b204459b457c19f94b14300afcab5fcf5b7a2cdf8ca50b70db9cb4420bbc29e59686adf4a54fbec8827838d5fc2fa791098d11a3b9dd4c3b3f667ca691f5e5106085e5855cda9583174ce4aa38792b7025f4705750c749bd609182294579ff0aff4ea8cf9d0141c48f54fd9f436618dbbd755fc9277c7f1', 'c3dae6ef21c97c6f44347d7456902b37eb3acfffe154478edbf08fb31f58aaf4375169b5ce9581e5d1d410f30144ca9b7fe9782553d8d74d49519ac2d9d6508e725ed4090b2bdefed4d12cf9bc29db2f1dd485c90f593aeed3b17e25121b8c305dcffcaaa373f7187d0c1af3a766df8dfd577d0a4c470c65860fbc658c5d3561', '#192.168.10.118#');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `account` varchar(20) NOT NULL,
  `password` char(80) NOT NULL,
  `date` date NOT NULL,
  `changeDate` date NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'a63278cc4017f6ccb0b31b2f51d8533c4ace773cd1467f9b540e61ea885076b93248d0e6416584f1', '2014-02-19', '2014-10-21', '0');
INSERT INTO `user` VALUES ('2', 'b051中文', '37a2b3a5f44fd7750105a01ff4f5eaf899366f49', '2014-02-19', '2014-09-01', '0');
INSERT INTO `user` VALUES ('3', 'b051', '74c59f51c1d71801a6e56201938b3ce24c0b5ea90815f79a53df4c1ad4fadd86ad0818ea231759e0', '2014-02-19', '2014-02-19', '0');
INSERT INTO `user` VALUES ('4', 'b049', '6293f10118943f4574ce8155704af6db8d2f63e0', '2014-09-01', '2014-09-01', '0');
INSERT INTO `user` VALUES ('5', 'test', '8008b087c0d3065c0e835db08953b3af2172f427', '2014-09-01', '2014-09-01', '0');
INSERT INTO `user` VALUES ('6', 'test中文', '6fdfdb03d9b53924ef3386848b74ae72bf1dd236', '2014-09-02', '2014-09-02', '0');
INSERT INTO `user` VALUES ('7', 'test003', 'd679e5c60e8430dbaf6b64739bb5a7ac0f32c777', '2014-09-07', '2014-09-07', '0');
INSERT INTO `user` VALUES ('8', 'a017', 'ea7a075b3b6fb4da73822574dc71b02a265b1a9c', '2014-09-11', '2014-09-11', '0');
INSERT INTO `user` VALUES ('9', 'aa', '29bdd5b49c34d63b1c01da1bcc82406487cdd9a60f290d7f45ba6bddff6b7d0d98387267720d5379', '2014-10-21', '2014-10-21', '1');
