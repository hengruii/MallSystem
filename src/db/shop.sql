/*
 Navicat Premium Data Transfer

 Source Server         : test
 Source Server Type    : MySQL
 Source Server Version : 50626 (5.6.26)
 Source Host           : localhost:3306
 Source Schema         : shop

 Target Server Type    : MySQL
 Target Server Version : 50626 (5.6.26)
 File Encoding         : 65001

 Date: 08/07/2023 13:49:16
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for car
-- ----------------------------
DROP TABLE IF EXISTS `car`;
CREATE TABLE `car`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `num` int(11) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of car
-- ----------------------------

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NULL DEFAULT NULL,
  `item_id` int(11) NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (7, 3, 35, '真的很不错', '2018-03-20 19:23:03');
INSERT INTO `comment` VALUES (8, 3, 28, '真好吃', '2018-03-20 19:32:31');
INSERT INTO `comment` VALUES (9, 10, 33, '很好！nice', '2023-06-29 12:23:43');
INSERT INTO `comment` VALUES (10, 2, 37, '包包很好，孩子很喜欢', '2023-07-05 15:15:02');
INSERT INTO `comment` VALUES (11, 2, 171, 'nice', '2023-07-05 20:47:51');
INSERT INTO `comment` VALUES (12, 2, 103, '书包质量很好', '2023-07-06 16:30:00');
INSERT INTO `comment` VALUES (13, 2, 41, '质量很好', '2023-07-08 10:29:30');
INSERT INTO `comment` VALUES (14, 2, 115, '书包质量很好', '2023-07-08 10:54:34');

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `price` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `scNum` int(11) NULL DEFAULT NULL COMMENT '收藏数',
  `gmNum` int(11) NULL DEFAULT NULL COMMENT '购买数',
  `url1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url4` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url5` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `ms` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `pam1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数1',
  `pam2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数2',
  `pam3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数3',
  `val3` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值3',
  `val2` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值2',
  `val1` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '值1',
  `type` int(11) NULL DEFAULT NULL,
  `zk` int(10) NULL DEFAULT NULL COMMENT '折扣',
  `category_id_one` int(11) NULL DEFAULT NULL COMMENT '类别id',
  `category_id_two` int(11) NULL DEFAULT NULL COMMENT '类别2级',
  `isDelete` int(2) NULL DEFAULT NULL COMMENT '0否 1是',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 216 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES (37, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '9.9', 1, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (38, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '49.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 10, 0);
INSERT INTO `item` VALUES (39, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '85.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 10, 0);
INSERT INTO `item` VALUES (40, '帆布包女2023年新款加大容量简约小布袋上班族通勤包包迷你手提包', '12.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 0);
INSERT INTO `item` VALUES (41, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '89.8', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (58, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '9.9', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (59, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '49.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 10, 0);
INSERT INTO `item` VALUES (60, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '85.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 10, 0);
INSERT INTO `item` VALUES (61, '帆布包女2023年新款加大容量简约小布袋上班族通勤包包迷你手提包', '12.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 0);
INSERT INTO `item` VALUES (62, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '89.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (63, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '9.9', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (64, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '49.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 10, 0);
INSERT INTO `item` VALUES (65, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '85.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 10, 0);
INSERT INTO `item` VALUES (66, '帆布包女2023年新款加大容量简约小布袋上班族通勤包包迷你手提包', '12.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 0);
INSERT INTO `item` VALUES (67, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '89.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (68, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '9.9', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (69, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '49.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 10, 0);
INSERT INTO `item` VALUES (70, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '85.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 10, 0);
INSERT INTO `item` VALUES (71, '帆布包女2023年新款加大容量简约小布袋上班族通勤包包迷你手提包', '12.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 0);
INSERT INTO `item` VALUES (72, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '89.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (73, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '9.9', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (74, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '49.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 10, 0);
INSERT INTO `item` VALUES (75, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '85.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 10, 0);
INSERT INTO `item` VALUES (76, '帆布包女2023年新款加大容量简约小布袋上班族通勤包包迷你手提包', '12.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 0);
INSERT INTO `item` VALUES (77, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '89.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (78, '饭盒袋保温便当手提包学生带饭防水防油上班族装餐包加厚铝箔袋子', '9.9', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.1.png', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (79, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '49.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 10, 0);
INSERT INTO `item` VALUES (80, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '85.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 10, 0);
INSERT INTO `item` VALUES (81, '帆布包女2023年新款加大容量简约小布袋上班族通勤包包迷你手提包', '12.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 0);
INSERT INTO `item` VALUES (82, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '89.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 10, 0);
INSERT INTO `item` VALUES (83, '防消磁卡包男女式拉链多卡位银行证件卡夹大容量驾照小巧卡套钱包', '9.9', 0, 3, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (84, '多款可爱卡通零钱包卡片小包包硬币零钱袋INS网红钥匙包证件包', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (85, '袋鼠域真皮钱包牛皮钱包男士短款牛皮钱夹有拉链可装驾驶证卡包', '36.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 11, 0);
INSERT INTO `item` VALUES (86, '包邮 时尚撞色牛仔布三折男钱包 学生钱夹简约多卡位青年小钱包扣', '25', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (87, '三丽鸥可爱圆包美乐蒂儿童硅胶斜挎包时尚库洛米小女孩零钱包包', '35', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (88, '防消磁卡包男女式拉链多卡位银行证件卡夹大容量驾照小巧卡套钱包', '9.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (89, '多款可爱卡通零钱包卡片小包包硬币零钱袋INS网红钥匙包证件包', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (90, '袋鼠域真皮钱包牛皮钱包男士短款牛皮钱夹有拉链可装驾驶证卡包', '36.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 11, 0);
INSERT INTO `item` VALUES (91, '包邮 时尚撞色牛仔布三折男钱包 学生钱夹简约多卡位青年小钱包扣', '25', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (92, '三丽鸥可爱圆包美乐蒂儿童硅胶斜挎包时尚库洛米小女孩零钱包包', '35', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (93, '防消磁卡包男女式拉链多卡位银行证件卡夹大容量驾照小巧卡套钱包', '9.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (94, '多款可爱卡通零钱包卡片小包包硬币零钱袋INS网红钥匙包证件包', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (95, '袋鼠域真皮钱包牛皮钱包男士短款牛皮钱夹有拉链可装驾驶证卡包', '36.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 11, 0);
INSERT INTO `item` VALUES (96, '包邮 时尚撞色牛仔布三折男钱包 学生钱夹简约多卡位青年小钱包扣', '25', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (97, '三丽鸥可爱圆包美乐蒂儿童硅胶斜挎包时尚库洛米小女孩零钱包包', '35', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (98, '防消磁卡包男女式拉链多卡位银行证件卡夹大容量驾照小巧卡套钱包', '9.9', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (99, '多款可爱卡通零钱包卡片小包包硬币零钱袋INS网红钥匙包证件包', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (100, '袋鼠域真皮钱包牛皮钱包男士短款牛皮钱夹有拉链可装驾驶证卡包', '36.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 11, 0);
INSERT INTO `item` VALUES (101, '包邮 时尚撞色牛仔布三折男钱包 学生钱夹简约多卡位青年小钱包扣', '25', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 11, 0);
INSERT INTO `item` VALUES (102, '三丽鸥可爱圆包美乐蒂儿童硅胶斜挎包时尚库洛米小女孩零钱包包', '35', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 11, 0);
INSERT INTO `item` VALUES (103, '双肩包男士大容量商务旅行包电脑背包登山包初中高中大学生书包', '89', 2, 3, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (104, '双肩包男士简约百搭大容量电脑旅行背包女初中生高中大学生书包男', '126', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 12, 0);
INSERT INTO `item` VALUES (105, '日本SHUKIKU幼儿园书包男孩儿童女小学生宝宝一年级2022年新背包', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 12, 0);
INSERT INTO `item` VALUES (106, '双肩包女士短途短期大容量旅行背包户外旅游登山电脑包大学生书包', '99', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (107, '超轻户外旅行包运动背包男轻便旅游登山包通勤折叠小双肩包女书包', '158', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 12, 0);
INSERT INTO `item` VALUES (108, '双肩包男士大容量商务旅行包电脑背包登山包初中高中大学生书包', '89', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (109, '双肩包男士简约百搭大容量电脑旅行背包女初中生高中大学生书包男', '126', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 12, 0);
INSERT INTO `item` VALUES (110, '日本SHUKIKU幼儿园书包男孩儿童女小学生宝宝一年级2022年新背包', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 12, 0);
INSERT INTO `item` VALUES (111, '双肩包女士短途短期大容量旅行背包户外旅游登山电脑包大学生书包', '99', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (112, '超轻户外旅行包运动背包男轻便旅游登山包通勤折叠小双肩包女书包', '158', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 12, 0);
INSERT INTO `item` VALUES (113, '双肩包男士大容量商务旅行包电脑背包登山包初中高中大学生书包', '89', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (114, '双肩包男士简约百搭大容量电脑旅行背包女初中生高中大学生书包男', '126', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 12, 0);
INSERT INTO `item` VALUES (115, '日本SHUKIKU幼儿园书包男孩儿童女小学生宝宝一年级2022年新背包', '88', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 12, 0);
INSERT INTO `item` VALUES (116, '双肩包女士短途短期大容量旅行背包户外旅游登山电脑包大学生书包', '99', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (117, '超轻户外旅行包运动背包男轻便旅游登山包通勤折叠小双肩包女书包', '158', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 12, 0);
INSERT INTO `item` VALUES (118, '双肩包男士大容量商务旅行包电脑背包登山包初中高中大学生书包', '89', 2, 2, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.3.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 12, 0);
INSERT INTO `item` VALUES (119, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '50', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (120, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '47.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (121, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '70', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 13, 0);
INSERT INTO `item` VALUES (122, '防水大容量游泳健身包干湿分离运动单肩手提旅行袋收纳袋男女通用', '68', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (123, '旅行包大容量健身包女运动训练包多功能手提双肩包短途行李收纳袋', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (127, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '50', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (128, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '47.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (129, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '70', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 13, 0);
INSERT INTO `item` VALUES (130, '防水大容量游泳健身包干湿分离运动单肩手提旅行袋收纳袋男女通用', '68', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (131, '旅行包大容量健身包女运动训练包多功能手提双肩包短途行李收纳袋', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (132, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '50', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (133, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '47.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (134, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '70', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 13, 0);
INSERT INTO `item` VALUES (135, '防水大容量游泳健身包干湿分离运动单肩手提旅行袋收纳袋男女通用', '68', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (136, '旅行包大容量健身包女运动训练包多功能手提双肩包短途行李收纳袋', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (137, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '50', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (138, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '47.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (139, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '70', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 13, 0);
INSERT INTO `item` VALUES (140, '防水大容量游泳健身包干湿分离运动单肩手提旅行袋收纳袋男女通用', '68', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (141, '旅行包大容量健身包女运动训练包多功能手提双肩包短途行李收纳袋', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (142, '运动健身包干湿分离游泳包男手提短途旅行包女大容量行李包收纳袋', '50', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (143, '健身包男干湿分离训练运动包手提行李袋短途旅行包女大容量游泳包', '47.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (144, '大容量手提短途旅行包女时尚轻便防水行李包男出差旅游收纳登机包', '70', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 13, 0);
INSERT INTO `item` VALUES (145, '防水大容量游泳健身包干湿分离运动单肩手提旅行袋收纳袋男女通用', '68', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 13, 0);
INSERT INTO `item` VALUES (146, '旅行包大容量健身包女运动训练包多功能手提双肩包短途行李收纳袋', '88', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.4.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 13, 0);
INSERT INTO `item` VALUES (147, '行李箱女小型20寸拉杆箱万向轮24寸男学生耐用结实密码旅行皮箱子', '268', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 14, 0);
INSERT INTO `item` VALUES (148, '20寸行李登机箱女小型号轻便儿童拉杆箱可爱日系旅行密码箱子学生', '137', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (149, '漫游铝框款行李箱万向轮皮箱拉杆箱28旅行箱20登机箱子24寸26男女', '164', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (150, '旅行箱行李箱拉杆箱女男学生静音万向轮密码皮箱子铝框20寸登机箱', '354', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (151, '行李箱拉杆箱2022新款女耐用结实旅行箱20寸小行静音万向轮密码箱', '109', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (152, '行李箱女小型20寸拉杆箱万向轮24寸男学生耐用结实密码旅行皮箱子', '268', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 14, 0);
INSERT INTO `item` VALUES (153, '20寸行李登机箱女小型号轻便儿童拉杆箱可爱日系旅行密码箱子学生', '137', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (154, '漫游铝框款行李箱万向轮皮箱拉杆箱28旅行箱20登机箱子24寸26男女', '164', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (155, '旅行箱行李箱拉杆箱女男学生静音万向轮密码皮箱子铝框20寸登机箱', '354', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (156, '行李箱拉杆箱2022新款女耐用结实旅行箱20寸小行静音万向轮密码箱', '109', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (157, '行李箱女小型20寸拉杆箱万向轮24寸男学生耐用结实密码旅行皮箱子', '268', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 14, 0);
INSERT INTO `item` VALUES (158, '20寸行李登机箱女小型号轻便儿童拉杆箱可爱日系旅行密码箱子学生', '137', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (159, '漫游铝框款行李箱万向轮皮箱拉杆箱28旅行箱20登机箱子24寸26男女', '164', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (160, '旅行箱行李箱拉杆箱女男学生静音万向轮密码皮箱子铝框20寸登机箱', '354', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (161, '行李箱拉杆箱2022新款女耐用结实旅行箱20寸小行静音万向轮密码箱', '109', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (162, '行李箱女小型20寸拉杆箱万向轮24寸男学生耐用结实密码旅行皮箱子', '268', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 14, 0);
INSERT INTO `item` VALUES (163, '20寸行李登机箱女小型号轻便儿童拉杆箱可爱日系旅行密码箱子学生', '137', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (164, '漫游铝框款行李箱万向轮皮箱拉杆箱28旅行箱20登机箱子24寸26男女', '164', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (165, '旅行箱行李箱拉杆箱女男学生静音万向轮密码皮箱子铝框20寸登机箱', '354', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (166, '行李箱拉杆箱2022新款女耐用结实旅行箱20寸小行静音万向轮密码箱', '109', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (167, '行李箱女小型20寸拉杆箱万向轮24寸男学生耐用结实密码旅行皮箱子', '268', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 1, 14, 0);
INSERT INTO `item` VALUES (168, '20寸行李登机箱女小型号轻便儿童拉杆箱可爱日系旅行密码箱子学生', '137', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (169, '漫游铝框款行李箱万向轮皮箱拉杆箱28旅行箱20登机箱子24寸26男女', '164', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (170, '旅行箱行李箱拉杆箱女男学生静音万向轮密码皮箱子铝框20寸登机箱', '354', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 1, 14, 0);
INSERT INTO `item` VALUES (171, '行李箱拉杆箱2022新款女耐用结实旅行箱20寸小行静音万向轮密码箱', '109', 0, 1, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\1.5.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 1, 14, 0);
INSERT INTO `item` VALUES (172, '红星照耀中国和昆虫记原著必读正版名著法布尔八年级上册必读课外书人民教育出版社', '20.15', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (173, '【老师推荐】三年级上册快乐读书吧 三年级必读课外书 稻草人书 小学生三年级课外', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (174, '全套4册送考点中国民间故事五年级上册必读的课外书阅读欧洲非洲民间故事田螺姑娘', '35.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 7, 45, 0);
INSERT INTO `item` VALUES (175, '全3册 快乐读书吧三年级上册必读的课外书 稻草人书叶圣陶正版 全套彩图上学期阅读', '18.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (176, '正版 夏洛的网正版包邮小学生版 经典童书 上海译文8-9-12岁儿童文学四五六年级畅销', '33.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (177, '红星照耀中国和昆虫记原著必读正版名著法布尔八年级上册必读课外书人民教育出版社', '20.15', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (178, '【老师推荐】三年级上册快乐读书吧 三年级必读课外书 稻草人书 小学生三年级课外', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (179, '全套4册送考点中国民间故事五年级上册必读的课外书阅读欧洲非洲民间故事田螺姑娘', '35.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 7, 45, 0);
INSERT INTO `item` VALUES (180, '全3册 快乐读书吧三年级上册必读的课外书 稻草人书叶圣陶正版 全套彩图上学期阅读', '18.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (181, '正版 夏洛的网正版包邮小学生版 经典童书 上海译文8-9-12岁儿童文学四五六年级畅销', '33.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (182, '红星照耀中国和昆虫记原著必读正版名著法布尔八年级上册必读课外书人民教育出版社', '20.15', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (183, '【老师推荐】三年级上册快乐读书吧 三年级必读课外书 稻草人书 小学生三年级课外', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (184, '全套4册送考点中国民间故事五年级上册必读的课外书阅读欧洲非洲民间故事田螺姑娘', '35.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 7, 45, 0);
INSERT INTO `item` VALUES (185, '全3册 快乐读书吧三年级上册必读的课外书 稻草人书叶圣陶正版 全套彩图上学期阅读', '18.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (186, '正版 夏洛的网正版包邮小学生版 经典童书 上海译文8-9-12岁儿童文学四五六年级畅销', '33.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (187, '红星照耀中国和昆虫记原著必读正版名著法布尔八年级上册必读课外书人民教育出版社', '20.15', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (188, '【老师推荐】三年级上册快乐读书吧 三年级必读课外书 稻草人书 小学生三年级课外', '20.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (189, '全套4册送考点中国民间故事五年级上册必读的课外书阅读欧洲非洲民间故事田螺姑娘', '35.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 7, 45, 0);
INSERT INTO `item` VALUES (190, '全3册 快乐读书吧三年级上册必读的课外书 稻草人书叶圣陶正版 全套彩图上学期阅读', '18.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 45, 0);
INSERT INTO `item` VALUES (191, '正版 夏洛的网正版包邮小学生版 经典童书 上海译文8-9-12岁儿童文学四五六年级畅销', '33.6', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.1.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 45, 0);
INSERT INTO `item` VALUES (192, '蝶变单词书高中英语词汇3500高考必背英语词汇单词书乱序版2024新高考英语课标', '48.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (193, '一本高中文言文完全解读人教版RJ高中同步教材必修+选择性必修全一册高中文言文教辅资料辅导书全解知识梳理文本译注赏析', '52.1', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 7, 46, 0);
INSERT INTO `item` VALUES (194, '星火高中英语词汇必备3500高考必背英语词汇单词书乱序版2024高考英语课标大纲3500词随身速记词典高一二三教辅资料记背手册高频词', '23.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (195, '\r\n高中英语3500词衡水体英文字帖钢笔临摹描写硬笔练字字帖衡水中学高分高中生英语字帖华夏万卷中学教辅', '16.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 46, 0);
INSERT INTO `item` VALUES (196, '2024腾远高一基础题高考数学物理化学生物人教版必修一二上下册同步教辅资料万唯', '43.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (197, '蝶变单词书高中英语词汇3500高考必背英语词汇单词书乱序版2024新高考英语课标', '48.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (198, '一本高中文言文完全解读人教版RJ高中同步教材必修+选择性必修全一册高中文言文教辅资料辅导书全解知识梳理文本译注赏析', '52.1', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 7, 46, 0);
INSERT INTO `item` VALUES (199, '星火高中英语词汇必备3500高考必背英语词汇单词书乱序版2024高考英语课标大纲3500词随身速记词典高一二三教辅资料记背手册高频词', '23.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (200, '\r\n高中英语3500词衡水体英文字帖钢笔临摹描写硬笔练字字帖衡水中学高分高中生英语字帖华夏万卷中学教辅', '16.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 46, 1);
INSERT INTO `item` VALUES (201, '2024腾远高一基础题高考数学物理化学生物人教版必修一二上下册同步教辅资料万唯', '43.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (202, '蝶变单词书高中英语词汇3500高考必背英语词汇单词书乱序版2024新高考英语课标', '48.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (203, '一本高中文言文完全解读人教版RJ高中同步教材必修+选择性必修全一册高中文言文教辅资料辅导书全解知识梳理文本译注赏析', '52.1', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 7, 46, 0);
INSERT INTO `item` VALUES (204, '星火高中英语词汇必备3500高考必背英语词汇单词书乱序版2024高考英语课标大纲3500词随身速记词典高一二三教辅资料记背手册高频词', '23.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (205, '\r\n高中英语3500词衡水体英文字帖钢笔临摹描写硬笔练字字帖衡水中学高分高中生英语字帖华夏万卷中学教辅', '16.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 46, 1);
INSERT INTO `item` VALUES (206, '2024腾远高一基础题高考数学物理化学生物人教版必修一二上下册同步教辅资料万唯', '43.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (207, '蝶变单词书高中英语词汇3500高考必背英语词汇单词书乱序版2024新高考英语课标', '48.2', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.1.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (208, '一本高中文言文完全解读人教版RJ高中同步教材必修+选择性必修全一册高中文言文教辅资料辅导书全解知识梳理文本译注赏析', '52.1', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.2.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 7, 7, 46, 0);
INSERT INTO `item` VALUES (209, '星火高中英语词汇必备3500高考必背英语词汇单词书乱序版2024高考英语课标大纲3500词随身速记词典高一二三教辅资料记背手册高频词', '23.4', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.3.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (210, '\r\n高中英语3500词衡水体英文字帖钢笔临摹描写硬笔练字字帖衡水中学高分高中生英语字帖华夏万卷中学教辅', '16.8', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.4.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 7, 46, 1);
INSERT INTO `item` VALUES (211, '2024腾远高一基础题高考数学物理化学生物人教版必修一二上下册同步教辅资料万唯', '43.5', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\7.2.5.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, 7, 46, 0);
INSERT INTO `item` VALUES (212, '咖啡', '88', 0, 14, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\a8fa0b301d3711ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\a8fa32401d3711ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\a8fa80601d3711ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\a8faa7701d3711ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\a8face801d3711ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '<p><strong>衣服</strong></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 8, 48, 1);
INSERT INTO `item` VALUES (213, '咖啡', '267', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\930b33b01c8f11eeaefe5bcf60624d95', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\930b5ac01c8f11eeaefe5bcf60624d95', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\930b81d01c8f11eeaefe5bcf60624d95', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\930ba8e01c8f11eeaefe5bcf60624d95', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\930bf7001c8f11eeaefe5bcf60624d95', '<p>这是一罐咖啡</p><p><img src=\"/test1_war_exploded/resource/ueditor/upload/720671701c8f11eeaefe5bcf60624d9500c163b0323c11e720ede353dd7395b1timg8.jpeg\" title=\"\" alt=\"00c163b0323c11e720ede353dd7395b1timg8.jpeg\"/></p><p><br/></p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 3, 29, 1);
INSERT INTO `item` VALUES (214, '商品', '10', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\d45f84101cb211ee4975c462f4c842f7', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\d45fab201cb211ee4975c462f4c842f7', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\d45fd2301cb211ee4975c462f4c842f7', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\d45ff9401cb211ee4975c462f4c842f7', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\d46020501cb211ee4975c462f4c842f7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 5, 1, 10, 1);
INSERT INTO `item` VALUES (215, '咖啡', '267', 0, 0, '/MallSystem_war_exploded\\resource\\ueditor\\upload\\f65b47b01d3a11ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\f65b95d01d3a11ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\f65be3f01d3a11ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\f65be3f11d3a11ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', '/MallSystem_war_exploded\\resource\\ueditor\\upload\\f65c0b001d3a11ee40f2134718c4b22100c163b0323c11e720ede353dd7395b1timg8.jpeg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, 8, 48, 1);

-- ----------------------------
-- Table structure for item_category
-- ----------------------------
DROP TABLE IF EXISTS `item_category`;
CREATE TABLE `item_category`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `pid` int(11) NULL DEFAULT NULL,
  `isDelete` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item_category
-- ----------------------------
INSERT INTO `item_category` VALUES (1, '箱包', NULL, 0);
INSERT INTO `item_category` VALUES (2, '衣帽', NULL, 0);
INSERT INTO `item_category` VALUES (3, '日用百货', NULL, 0);
INSERT INTO `item_category` VALUES (4, '水果', NULL, 0);
INSERT INTO `item_category` VALUES (5, '蔬菜', NULL, 0);
INSERT INTO `item_category` VALUES (6, '数码产品', NULL, 0);
INSERT INTO `item_category` VALUES (7, '书籍', NULL, 0);
INSERT INTO `item_category` VALUES (8, '食品', NULL, 0);
INSERT INTO `item_category` VALUES (9, '鞋子', NULL, 0);
INSERT INTO `item_category` VALUES (10, '手提包', 1, 1);
INSERT INTO `item_category` VALUES (11, '钱包', 1, 0);
INSERT INTO `item_category` VALUES (12, '书包', 1, 0);
INSERT INTO `item_category` VALUES (13, '旅行包', 1, 0);
INSERT INTO `item_category` VALUES (14, '拉杆箱', 1, 0);
INSERT INTO `item_category` VALUES (15, '男-T恤', 2, 0);
INSERT INTO `item_category` VALUES (16, '女-T恤', 2, 0);
INSERT INTO `item_category` VALUES (17, '男-长裤', 2, 0);
INSERT INTO `item_category` VALUES (18, '女-长裤', 2, 0);
INSERT INTO `item_category` VALUES (19, '男-短裤', 2, 0);
INSERT INTO `item_category` VALUES (20, '女-短裤', 2, 0);
INSERT INTO `item_category` VALUES (21, '棒球帽', 2, 0);
INSERT INTO `item_category` VALUES (22, '遮阳帽', 2, 0);
INSERT INTO `item_category` VALUES (23, '渔夫帽', 2, 0);
INSERT INTO `item_category` VALUES (24, '盆帽', 2, 0);
INSERT INTO `item_category` VALUES (25, '牙膏', 3, 0);
INSERT INTO `item_category` VALUES (26, '洗衣液', 3, 0);
INSERT INTO `item_category` VALUES (27, '除菌液', 3, 0);
INSERT INTO `item_category` VALUES (28, '牙刷', 3, 0);
INSERT INTO `item_category` VALUES (29, '洗面奶', 3, 0);
INSERT INTO `item_category` VALUES (30, '柔顺剂', 3, 0);
INSERT INTO `item_category` VALUES (31, '香皂', 3, 0);
INSERT INTO `item_category` VALUES (32, '柠檬', 4, 0);
INSERT INTO `item_category` VALUES (33, '榴莲', 4, 0);
INSERT INTO `item_category` VALUES (34, '苹果', 4, 0);
INSERT INTO `item_category` VALUES (35, '梨子', 4, 0);
INSERT INTO `item_category` VALUES (36, '橙子', 4, 0);
INSERT INTO `item_category` VALUES (37, '西瓜', 4, 0);
INSERT INTO `item_category` VALUES (38, '白菜', 5, 0);
INSERT INTO `item_category` VALUES (39, '辣椒', 5, 0);
INSERT INTO `item_category` VALUES (40, '胡萝卜', 5, 0);
INSERT INTO `item_category` VALUES (41, '手机', 6, 0);
INSERT INTO `item_category` VALUES (42, '电脑', 6, 0);
INSERT INTO `item_category` VALUES (43, '电子手表', 6, 0);
INSERT INTO `item_category` VALUES (44, '平板', 6, 0);
INSERT INTO `item_category` VALUES (45, '课外小说', 7, 0);
INSERT INTO `item_category` VALUES (46, '教辅', 7, 0);
INSERT INTO `item_category` VALUES (47, '坚果', 8, 0);
INSERT INTO `item_category` VALUES (48, '零食', 8, 0);
INSERT INTO `item_category` VALUES (49, '运动鞋', 9, 0);
INSERT INTO `item_category` VALUES (50, '篮球鞋', 9, 0);
INSERT INTO `item_category` VALUES (51, '拖鞋', 9, 0);
INSERT INTO `item_category` VALUES (52, '凉鞋', 9, 0);
INSERT INTO `item_category` VALUES (53, '洞洞鞋', 9, 0);
INSERT INTO `item_category` VALUES (54, 'souh', NULL, 1);
INSERT INTO `item_category` VALUES (55, 'rgwqg', 54, 1);
INSERT INTO `item_category` VALUES (56, '食品', NULL, 1);
INSERT INTO `item_category` VALUES (57, '电脑', NULL, 1);
INSERT INTO `item_category` VALUES (58, '联想电脑', 57, 1);
INSERT INTO `item_category` VALUES (59, '电脑', NULL, 1);
INSERT INTO `item_category` VALUES (60, '联想电脑', 59, 1);

-- ----------------------------
-- Table structure for item_order
-- ----------------------------
DROP TABLE IF EXISTS `item_order`;
CREATE TABLE `item_order`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `addTime` datetime NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `isDelete` int(255) NULL DEFAULT NULL,
  `status` int(255) NULL DEFAULT NULL COMMENT '0.新建代发货1.已取消 2已已发货3.到收货4已评价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 48 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of item_order
-- ----------------------------
INSERT INTO `item_order` VALUES (38, NULL, 2, '2023070515130001', '2023-07-05 15:13:46', '8.92', 0, 3);
INSERT INTO `item_order` VALUES (39, NULL, 2, '2023070520470001', '2023-07-05 20:47:07', '76.30', 0, 3);
INSERT INTO `item_order` VALUES (40, NULL, 2, '2023070521010001', '2023-07-05 21:01:32', '985.74', 0, 1);
INSERT INTO `item_order` VALUES (41, NULL, 2, '2023070616280001', '2023-07-06 16:28:45', '213.63', 0, 3);
INSERT INTO `item_order` VALUES (42, NULL, 2, '2023070714240001', '2023-07-07 14:24:20', '47.61', 0, 0);
INSERT INTO `item_order` VALUES (43, NULL, 2, '2023070800510001', '2023-07-08 00:51:10', '80.82', 0, 3);
INSERT INTO `item_order` VALUES (44, NULL, 2, '2023070810280001', '2023-07-08 10:28:24', '26.76', 0, 1);
INSERT INTO `item_order` VALUES (45, NULL, 2, '2023070810470001', '2023-07-08 10:47:05', '71.21', 0, 1);
INSERT INTO `item_order` VALUES (46, NULL, 2, '2023070810480001', '2023-07-08 10:48:50', '61.61', 0, 3);
INSERT INTO `item_order` VALUES (47, NULL, 2, '2023070810530001', '2023-07-08 10:53:11', '71.21', 0, 1);

-- ----------------------------
-- Table structure for manage
-- ----------------------------
DROP TABLE IF EXISTS `manage`;
CREATE TABLE `manage`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of manage
-- ----------------------------
INSERT INTO `manage` VALUES (1, 'admin', '111111', '管理员');

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES (5, 'ergewqgr', 'ergwerg', 'erwgwerge');
INSERT INTO `message` VALUES (7, 'ddd', '123456789', 'ddd');
INSERT INTO `message` VALUES (8, 'dd', '123456', '系统很好');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `addTime` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 41 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES (22, '开业了', '<p>开业了</p>', '2023-07-05 20:50:53');
INSERT INTO `news` VALUES (23, '下班了', '<p>下班了</p>', '2023-07-05 20:51:18');
INSERT INTO `news` VALUES (24, '1', '<p>1</p>', '2023-07-05 20:54:52');
INSERT INTO `news` VALUES (25, '2', '<p>2</p>', '2023-07-05 20:54:57');
INSERT INTO `news` VALUES (26, '3', NULL, '2023-07-05 20:55:01');
INSERT INTO `news` VALUES (27, '4', NULL, '2023-07-05 20:55:04');
INSERT INTO `news` VALUES (28, '5', NULL, '2023-07-05 20:55:07');
INSERT INTO `news` VALUES (29, '6', NULL, '2023-07-05 20:55:13');
INSERT INTO `news` VALUES (30, '7', NULL, '2023-07-05 20:55:17');
INSERT INTO `news` VALUES (31, '8', NULL, '2023-07-05 20:55:21');
INSERT INTO `news` VALUES (32, '9', NULL, '2023-07-05 20:55:25');
INSERT INTO `news` VALUES (33, '10', NULL, '2023-07-05 20:55:32');
INSERT INTO `news` VALUES (34, '11', NULL, '2023-07-05 20:55:38');
INSERT INTO `news` VALUES (35, '12', NULL, '2023-07-05 20:55:41');
INSERT INTO `news` VALUES (36, '13', NULL, '2023-07-05 20:55:44');
INSERT INTO `news` VALUES (37, '14', NULL, '2023-07-05 20:55:50');
INSERT INTO `news` VALUES (38, '15', NULL, '2023-07-05 20:55:54');
INSERT INTO `news` VALUES (39, '公告1111', NULL, '2023-07-08 10:32:35');

-- ----------------------------
-- Table structure for order_detail
-- ----------------------------
DROP TABLE IF EXISTS `order_detail`;
CREATE TABLE `order_detail`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(255) NULL DEFAULT NULL,
  `order_id` int(11) NULL DEFAULT NULL,
  `status` int(11) NULL DEFAULT NULL COMMENT '0.未退货 1已退货',
  `num` int(11) NULL DEFAULT NULL,
  `total` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 83 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of order_detail
-- ----------------------------
INSERT INTO `order_detail` VALUES (54, 27, 27, 0, 1, '1');
INSERT INTO `order_detail` VALUES (55, 32, 28, 0, 5, '25');
INSERT INTO `order_detail` VALUES (56, 27, 28, 0, 3, '9');
INSERT INTO `order_detail` VALUES (57, 28, 28, 0, 1, '1');
INSERT INTO `order_detail` VALUES (58, 35, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (59, 34, 29, 0, 4, '16');
INSERT INTO `order_detail` VALUES (60, 32, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (61, 36, 29, 0, 3, '9');
INSERT INTO `order_detail` VALUES (62, 32, 29, 0, 2, '4');
INSERT INTO `order_detail` VALUES (63, 35, 30, 0, 6, '36');
INSERT INTO `order_detail` VALUES (64, 30, 30, 0, 3, '9');
INSERT INTO `order_detail` VALUES (65, 28, 31, 0, 4, '16');
INSERT INTO `order_detail` VALUES (66, 28, 31, 0, 2, '4');
INSERT INTO `order_detail` VALUES (67, 28, 32, 0, 1, '1');
INSERT INTO `order_detail` VALUES (68, 35, 33, 0, 1, '22.5');
INSERT INTO `order_detail` VALUES (69, 27, 34, 0, 1, '49.41');
INSERT INTO `order_detail` VALUES (70, 35, 35, 0, 1, '22.5');
INSERT INTO `order_detail` VALUES (71, 33, 36, 0, 1, '72.0');
INSERT INTO `order_detail` VALUES (72, 36, 37, 0, 3, '180.0');
INSERT INTO `order_detail` VALUES (73, 37, 38, 0, 1, '8.92');
INSERT INTO `order_detail` VALUES (74, 171, 39, 0, 1, '76.3');
INSERT INTO `order_detail` VALUES (75, 212, 40, 0, 14, '985.74');
INSERT INTO `order_detail` VALUES (76, 103, 41, 0, 3, '213.63');
INSERT INTO `order_detail` VALUES (77, 145, 42, 0, 1, '47.61');
INSERT INTO `order_detail` VALUES (78, 41, 43, 0, 1, '80.82');
INSERT INTO `order_detail` VALUES (79, 83, 44, 0, 3, '26.759999999999998');
INSERT INTO `order_detail` VALUES (80, 118, 45, 0, 1, '71.21');
INSERT INTO `order_detail` VALUES (81, 115, 46, 0, 1, '61.61');
INSERT INTO `order_detail` VALUES (82, 118, 47, 0, 1, '71.21');

-- ----------------------------
-- Table structure for sc
-- ----------------------------
DROP TABLE IF EXISTS `sc`;
CREATE TABLE `sc`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sc
-- ----------------------------
INSERT INTO `sc` VALUES (17, 27, 3);
INSERT INTO `sc` VALUES (18, 28, 3);
INSERT INTO `sc` VALUES (21, 33, 10);
INSERT INTO `sc` VALUES (25, 103, 2);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `passWord` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `realName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sex` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 55 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (2, 'dd', 'dd', '324568', '用户', '男', '东北石油大学', 'dd@163.com');
INSERT INTO `user` VALUES (9, 'admin', 'admin', '1315202135', '管理员', NULL, NULL, 'hhhh@163.com');
INSERT INTO `user` VALUES (30, 'qq', 'qq', 'qq', '用户', NULL, NULL, 'qq');
INSERT INTO `user` VALUES (54, 'ddd', 'ddd', '123456', '用户', NULL, NULL, '123456@123.com');

SET FOREIGN_KEY_CHECKS = 1;
