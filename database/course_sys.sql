/*
 Navicat Premium Data Transfer

 Source Server         : Aliyun-Shanghai
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 47.100.195.116:3306
 Source Schema         : course_sys

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 22/06/2019 09:11:56
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `user_type` enum('PARENT','EDUORG','TEACHER','SYSADMIN') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of account
-- ----------------------------
INSERT INTO `account` VALUES ('', '', '13905287474', 'heheheh@qqq.com', 'PARENT');
INSERT INTO `account` VALUES ('00', '123', '123456', '123456789', 'EDUORG');
INSERT INTO `account` VALUES ('001', '001', NULL, NULL, 'PARENT');
INSERT INTO `account` VALUES ('002', '002', NULL, NULL, 'PARENT');
INSERT INTO `account` VALUES ('24', '113', '123', '123456789', 'TEACHER');
INSERT INTO `account` VALUES ('2452', '11', '0', '123456789', 'SYSADMIN');
INSERT INTO `account` VALUES ('254236', '', '', '', 'TEACHER');
INSERT INTO `account` VALUES ('4444', '', '', '', 'PARENT');
INSERT INTO `account` VALUES ('4546', '', '453', '45', 'PARENT');
INSERT INTO `account` VALUES ('456', '', '', '', 'PARENT');
INSERT INTO `account` VALUES ('4566', '', '', '', 'PARENT');

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course`  (
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `teach_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `age_recommend` decimal(10, 0) NULL DEFAULT NULL,
  `price` decimal(10, 0) NULL DEFAULT NULL,
  `course_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `homework` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `avg_mark` decimal(10, 0) NULL DEFAULT NULL,
  `mark_count` decimal(10, 0) NULL DEFAULT NULL,
  PRIMARY KEY (`course_id`) USING BTREE,
  INDEX `course_teacher_id`(`teach_id`) USING BTREE,
  CONSTRAINT `course_teacher_id` FOREIGN KEY (`teach_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('002', '000', '000', '00', '000', '2452', 0, 100, 'MATH', '000', 4, 2);
INSERT INTO `course` VALUES ('123', '编译原理', '', '', '', '254236', 0, 0, 'DEFAULT', '', 3, 1);
INSERT INTO `course` VALUES ('245210', '000', '000', '00', '000', '2452', 0, 100, 'MATH', '000', 3, 1);
INSERT INTO `course` VALUES ('2462', '000', '000', '00', '000', '2452', 0, 100, 'MATH', '000', 3, 1);
INSERT INTO `course` VALUES ('777', '数据库', '', '', '', '254236', 0, 0, 'CHEMISTRY', '', 3, 1);
INSERT INTO `course` VALUES ('777456', '高等数学', '', '', '', '254236', 0, 0, 'BIOLOGY', '', 3, 1);
INSERT INTO `course` VALUES ('CID1', '呵呵', '随便', '慕课', '呵呵', '00', 20, 10, 'MATH', '来上课就行', 3, 1);
INSERT INTO `course` VALUES ('SE201901', '软件工程课程设计', '每周三', '计算机楼', '软件工程', '254236', 20, 2000, 'DEFAULT', '提交实验报告', 3, 1);
INSERT INTO `course` VALUES ('sss', '', '', '', '呵呵', '00', 20, 10, 'MATH', '来上课就行', 3, 1);

-- ----------------------------
-- Table structure for eduorg
-- ----------------------------
DROP TABLE IF EXISTS `eduorg`;
CREATE TABLE `eduorg`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_code` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_address` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `org_introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `edu_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edu_age` decimal(10, 0) NULL DEFAULT NULL,
  `qualified` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  INDEX `user_name_eduorg`(`user_name`) USING BTREE,
  CONSTRAINT `user_name_eduorg` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of eduorg
-- ----------------------------
INSERT INTO `eduorg` VALUES ('00', '201', '0101', '1364846431', '1', 'BIOLOGY', 21, 'YES');

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news`  (
  `news_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`news_id`) USING BTREE,
  INDEX `news_publisher`(`publisher`) USING BTREE,
  INDEX `news_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `news_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_publisher` FOREIGN KEY (`publisher`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of news
-- ----------------------------
INSERT INTO `news` VALUES ('1', '2452', '2019-06-14 13:37:14', '这这是一条新闻', '呵呵呵\n呵呵呵\n阿三开的吉林快就发神经df\n呵呵呵呵呵', NULL);
INSERT INTO `news` VALUES ('3', '2452', '2019-06-04 14:29:02', '这不是新闻', '123456789\n凡是科技部发不发八点九分', NULL);
INSERT INTO `news` VALUES ('4', '24', '2019-06-03 16:12:34', '774', '我确认', '123');

-- ----------------------------
-- Table structure for newscomment
-- ----------------------------
DROP TABLE IF EXISTS `newscomment`;
CREATE TABLE `newscomment`  (
  `comment_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `news_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publisher` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `time` datetime(0) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `comment_publisher`(`publisher`) USING BTREE,
  INDEX `comment_news`(`news_id`) USING BTREE,
  CONSTRAINT `comment_news` FOREIGN KEY (`news_id`) REFERENCES `news` (`news_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comment_publisher` FOREIGN KEY (`publisher`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for parent
-- ----------------------------
DROP TABLE IF EXISTS `parent`;
CREATE TABLE `parent`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `child_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `child_birthday` date NULL DEFAULT NULL,
  `child_gender` enum('MALE','FEMALE') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `parent_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `course_cost` decimal(10, 0) NULL DEFAULT NULL,
  `course_place` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  CONSTRAINT `user_name_parent` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of parent
-- ----------------------------
INSERT INTO `parent` VALUES ('', '李语尧', '1997-10-31', 'MALE', '陆子旭', '13905287474', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('001', 'hehe', '2019-06-10', 'MALE', '发发', '发发', 'DEFAULT', 20, '呵呵');
INSERT INTO `parent` VALUES ('4444', '', '2019-06-17', 'MALE', '', '', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('4546', '45', '2019-06-17', 'MALE', '4', '5', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('456', '', '2019-06-17', 'MALE', '', '', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('4566', '', '1766-06-17', 'MALE', '', '', 'DEFAULT', 1000, NULL);

-- ----------------------------
-- Table structure for previewapp
-- ----------------------------
DROP TABLE IF EXISTS `previewapp`;
CREATE TABLE `previewapp`  (
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `agreement` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`parent_id`, `course_id`) USING BTREE,
  INDEX `preview_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `preview_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `preview_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of previewapp
-- ----------------------------
INSERT INTO `previewapp` VALUES ('', '002', 'NO');

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `parent_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `course_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `purchased` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`parent_id`, `course_id`) USING BTREE,
  INDEX `purchase_course_id`(`course_id`) USING BTREE,
  CONSTRAINT `purchase_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchase_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('', '002', 'NO');
INSERT INTO `purchase` VALUES ('', '245210', 'YES');
INSERT INTO `purchase` VALUES ('', '777', 'YES');
INSERT INTO `purchase` VALUES ('', 'SE201901', 'YES');
INSERT INTO `purchase` VALUES ('', 'sss', 'YES');
INSERT INTO `purchase` VALUES ('001', '123', 'YES');
INSERT INTO `purchase` VALUES ('001', '2462', 'YES');
INSERT INTO `purchase` VALUES ('002', '002', 'NO');

-- ----------------------------
-- Table structure for sysadmin
-- ----------------------------
DROP TABLE IF EXISTS `sysadmin`;
CREATE TABLE `sysadmin`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `page_item_count` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  CONSTRAINT `user_name_sysadmin` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sysadmin
-- ----------------------------
INSERT INTO `sysadmin` VALUES ('2452', NULL);

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher`  (
  `user_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `tea_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tea_gender` enum('MALE','FEMALE') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tea_birthday` date NULL DEFAULT NULL,
  `tea_id_number` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tea_contact` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tea_introduction` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL,
  `edu_field` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `edu_year` decimal(10, 0) NULL DEFAULT NULL,
  `edu_age` decimal(10, 0) NULL DEFAULT NULL,
  `qualified` enum('YES','NO') CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  CONSTRAINT `user_name_teacher` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('24', '45', 'FEMALE', '2019-06-18', '34', '43', '34', 'CHEMISTRY', 345, 43, 'YES');
INSERT INTO `teacher` VALUES ('2452', '45', 'FEMALE', '1674-06-16', '34', '43', '34', 'DEFAULT', 345, 43, 'YES');
INSERT INTO `teacher` VALUES ('254236', '', 'MALE', '1819-06-17', '', '', '', 'DEFAULT', 20, 20, 'YES');

SET FOREIGN_KEY_CHECKS = 1;
