/*
 Navicat MySQL Data Transfer

 Source Server         : 666
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 47.100.195.116:3306
 Source Schema         : course_sys

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 23/06/2019 23:38:19
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
INSERT INTO `account` VALUES ('007CH7', '367156', '15908840195', '445X43@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('031Ks3', '611543', '14773266825', 'j8Xpr0@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('0562oJ', '842924', '15870974333', '0GR000@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('06GUpb', '574133', '16019742956', 'qobslJ@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('06J338', '986943', '17759283993', 'st74Mm@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('07AKN6', '207294', '13451833645', '6d3eG7@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('07P343', '830322', '16533930857', 'svmQ54@163.com', 'PARENT');
INSERT INTO `account` VALUES ('083Mxc', '327630', '15348205971', '12006C@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('088063', '801280', '18481513774', '5357s0@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('0Aou5F', '959909', '17133213476', 'FHi8O4@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('0C077i', '778019', '15769355231', 'Pn04g2@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('0cNkb1', '652098', '16540148907', 'c12661@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('0D661C', '754224', '14385192080', 'b215W4@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('0dWr3i', '231065', '14679425610', '2nc40v@126.com', 'PARENT');
INSERT INTO `account` VALUES ('0GI6ci', '998023', '14785603216', 'KSP026@163.com', 'PARENT');
INSERT INTO `account` VALUES ('0reoLX', '278007', '16716032010', 'f4U1dS@163.com', 'PARENT');
INSERT INTO `account` VALUES ('0UP57v', '949977', '14378325872', 'swpc58@163.com', 'PARENT');
INSERT INTO `account` VALUES ('0W5641', '794398', '16237186117', 'uiW6nf@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('0XN6l3', '142982', '14078393182', 'QG7q6R@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('10312S', '496901', '15326416315', 'o57Q1N@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('10en30', '185895', '17574965307', '7O7b7b@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('110UQ3', '133770', '17849259564', '7fSf70@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('116353', '141606', '18165895527', '20pafQ@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('11KHAE', '807847', '18317135863', '85352O@163.com', 'PARENT');
INSERT INTO `account` VALUES ('12adXu', '779636', '15101409951', 'Dy28So@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('133gH1', '249861', '13487984141', 'n58unn@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('1471k2', '739842', '14901264159', '3vtw31@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('15g4DX', '165522', '16034598772', '48UUWP@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('1G85p4', '222429', '17694905835', 'SPUG00@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('1Gp0t7', '509632', '16428043812', 'f5qPV6@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('1I05i4', '572924', '16381556363', '8K0h50@163.com', 'PARENT');
INSERT INTO `account` VALUES ('1qCg3R', '461363', '13971193277', 'o76S37@yahoo.com', 'EDUORG');
INSERT INTO `account` VALUES ('1UHD1x', '182969', '13880129280', 'm74i2l@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('1yBrE1', '813058', '13534576505', 'ubBtdX@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('1YSj6O', '998592', '14133829270', '45K6t4@yahoo.com', 'TEACHER');
INSERT INTO `account` VALUES ('233Wi8', '802028', '17301007362', '1YIA52@126.com', 'PARENT');
INSERT INTO `account` VALUES ('24', '113', '123', '123456789', 'TEACHER');
INSERT INTO `account` VALUES ('2431U4', '739950', '14626885342', '77sgUt@163.com', 'PARENT');
INSERT INTO `account` VALUES ('2452', '11', '0', '123456789', 'SYSADMIN');
INSERT INTO `account` VALUES ('254236', '', '', '', 'TEACHER');
INSERT INTO `account` VALUES ('26O4f5', '460195', '14740079398', 'Me25rC@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('26T6f6', '691011', '15649406961', '106ln8@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('27gdp3', '534230', '14147415866', '62OR20@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('2eqDC0', '725593', '17856878749', 'MCx6Gg@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('2f5Bi4', '615226', '16438671061', '5W2726@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('2P1C50', '324310', '16529678787', '1TN5j7@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('2qD5FL', '617569', '17242489282', '5hySeE@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('2QyHI8', '532125', '18124498896', '002uQ2@126.com', 'PARENT');
INSERT INTO `account` VALUES ('2rG3S2', '679247', '15504937049', '01NB7o@163.com', 'PARENT');
INSERT INTO `account` VALUES ('2S0si4', '881308', '17652058889', 'JfB30D@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('2sKgu2', '731801', '14619306673', 'kjJ4I1@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('2stgct', '956455', '17391797766', '86t17r@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('2V8480', '418889', '15462077051', 'tgCj0Y@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('2y818q', '891121', '14852328929', 'FM2jqX@yahoo.com', 'TEACHER');
INSERT INTO `account` VALUES ('3147f8', '184024', '15958058754', 'q2Y0m3@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('317tJu', '996251', '16578272264', 'U8o5Ge@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('343ujg', '634376', '17888355762', 'v6p2tm@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('3470y6', '145589', '18045197832', 'w4FY50@163.com', 'EDUORG');
INSERT INTO `account` VALUES ('3478ju', '866399', '18661692280', '5dG642@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('348X12', '820582', '13300767098', 'hx0med@126.com', 'PARENT');
INSERT INTO `account` VALUES ('3F70e8', '547590', '14852070674', 'bFno22@126.com', 'PARENT');
INSERT INTO `account` VALUES ('3h836P', '225748', '18771638734', '7X7PYE@163.com', 'PARENT');
INSERT INTO `account` VALUES ('3Kk2Uq', '888575', '18547712168', '0r6nJ8@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('3l1422', '935054', '18530445965', '7m04G0@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('3mE36I', '798441', '13359167048', '45Y40c@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('3NGF0n', '590651', '16573560769', 'mrvGG0@163.com', 'PARENT');
INSERT INTO `account` VALUES ('3nGTD2', '546494', '17070154862', '5DoJr2@163.com', 'PARENT');
INSERT INTO `account` VALUES ('3PHgdA', '849387', '16101260432', 'tH36b4@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('3r2350', '893667', '16357082596', '0VtR7M@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('3t78wS', '659601', '13931105388', '3PC36f@126.com', 'EDUORG');
INSERT INTO `account` VALUES ('3v2V3J', '320856', '14969375585', 'JQ1pl3@yahoo.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('3vwwN1', '106963', '16791187606', '60J5nc@163.com', 'PARENT');
INSERT INTO `account` VALUES ('40oU41', '438123', '14505148013', '7y2NU0@126.com', 'PARENT');
INSERT INTO `account` VALUES ('41028B', '128939', '13886533281', 'E8tXi1@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('41814a', '950089', '17863057066', '3v7Q8V@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('42265F', '877214', '17639692615', '8a2P52@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('42U1S1', '187203', '14097824041', 'T0ne20@126.com', 'EDUORG');
INSERT INTO `account` VALUES ('43p581', '333313', '17349236580', '1P2Dp5@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('4444', '', '', '', 'PARENT');
INSERT INTO `account` VALUES ('452GW6', '768147', '18045264496', '2tu4R3@126.com', 'PARENT');
INSERT INTO `account` VALUES ('4546', '', '453', '45', 'PARENT');
INSERT INTO `account` VALUES ('454yqG', '585825', '15775390009', '5gpR5H@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('456', '', '', '', 'PARENT');
INSERT INTO `account` VALUES ('4566', '', '', '', 'PARENT');
INSERT INTO `account` VALUES ('458S33', '704222', '13681177649', 'Gw0hSb@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('46myM0', '834001', '15059962263', '1v61n2@yahoo.com', 'TEACHER');
INSERT INTO `account` VALUES ('473fab', '671962', '17799781504', '0rQFL6@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('4a8748', '686572', '14451412400', 'MOkk05@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('4BIk28', '619492', '18705038122', '747v20@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('4K6N8P', '630852', '15562437008', 'sq1y7v@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('4m58Bp', '595330', '15596955082', 'Y76gp4@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('4PR136', '407806', '16142763638', 'f2Te17@163.com', 'PARENT');
INSERT INTO `account` VALUES ('4q34I6', '624163', '15027425868', '7gJU77@126.com', 'PARENT');
INSERT INTO `account` VALUES ('4TDr46', '114808', '13862945047', '431oCX@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('5307P1', '349490', '15938411187', '0m06SV@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('533h7v', '396382', '18787264360', 'S3iG37@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('546F26', '412370', '18579868709', 't3Skh3@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('54i064', '247409', '15972422800', 'blF0A8@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('56b824', '253648', '14827235620', 'y4pEqe@163.com', 'PARENT');
INSERT INTO `account` VALUES ('58jXI1', '296221', '14096888847', 'jfVwX3@126.com', 'EDUORG');
INSERT INTO `account` VALUES ('5C8kI6', '700251', '16614697773', '8oED2U@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('5H2070', '802368', '16167879054', 'nMVH8C@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('5HJJBo', '590274', '17822664893', 'Jq4yal@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('5ho450', '478465', '18642190443', '48I660@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('5Km285', '253656', '17933510500', '848B50@yahoo.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('5LWUVw', '840757', '18371018927', '341380@126.com', 'PARENT');
INSERT INTO `account` VALUES ('5U3V28', '773561', '16593488673', '18VS77@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('5U7505', '641389', '17156499192', '52l11X@gmail.com', 'TEACHER');
INSERT INTO `account` VALUES ('5VE105', '569297', '15831380971', '5753Yw@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('60F840', '294945', '14938259409', 'vBV8M2@163.com', 'PARENT');
INSERT INTO `account` VALUES ('60k6OU', '986497', '14670988893', 'Tk1E50@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('61361c', '436726', '17545910533', 'Cf20t7@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('62vsV4', '657253', '14115652378', '4i557X@yahoo.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('62wkUa', '720414', '17042339328', '66qX04@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('63S2y1', '786522', '17336455755', '4xP1oX@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('672416', '505178', '16151095887', '153J5G@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('67I0Rh', '123986', '14556608491', 'A83280@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('67l758', '791106', '16990122534', '2KS3B6@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('683sp4', '531106', '14829741628', '1ne424@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('6H8xf4', '585790', '16423940839', 'x7h73h@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('6K4Ccp', '836987', '14420214097', 'cp6Gq4@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('6t2817', '973777', '17347987618', '1k1FvS@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('6v75Ns', '138799', '16809911037', '631xs2@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('6y3He8', '114293', '16386862290', '8u52g6@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('6Yb36N', '499105', '16043472983', 'm452r0@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('7007F1', '265535', '18807832547', '5uCe82@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('71XMdn', '782894', '14966233597', '5Q0P8V@163.com', 'PARENT');
INSERT INTO `account` VALUES ('770a3w', '287581', '15634537375', '3Up5r3@126.com', 'PARENT');
INSERT INTO `account` VALUES ('777n4c', '531230', '16799799675', 'lp3P83@126.com', 'PARENT');
INSERT INTO `account` VALUES ('77rp0O', '464050', '14420459778', 'J431Y3@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('77W7e2', '429585', '13534523105', 'RB38ME@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('7ap30l', '958994', '18532439308', 'FSr227@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('7E073G', '513840', '15341336821', '636T87@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('7e5n2J', '650039', '17959590132', '14Tn42@163.com', 'PARENT');
INSERT INTO `account` VALUES ('7H6DT3', '783035', '13426607079', 'osi5o6@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('7K8mcM', '840319', '15154977657', '30080p@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('7n32Q3', '867354', '15010024658', '1V0518@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('7s7J35', '144928', '17253742607', 'Bjq0O8@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('7YJ8c0', '710471', '15554525137', '2gP472@163.com', 'PARENT');
INSERT INTO `account` VALUES ('80Co5x', '719777', '15213074420', 'SWgQ07@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('81p4T7', '392520', '17559376120', '0720WE@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('843y6e', '268598', '18851460162', '0bl2Xf@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('844W16', '489626', '18951900859', 'Y4kl01@163.com', 'PARENT');
INSERT INTO `account` VALUES ('845v0G', '868385', '15781565338', 'S5KOWd@126.com', 'PARENT');
INSERT INTO `account` VALUES ('857vJ5', '120208', '14751946637', 'te6l2B@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('85aWR7', '949029', '16809913495', '8H556W@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('8alK5T', '182579', '18565523299', '7t4HrT@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('8CnuJq', '534532', '13315840455', 'ue7fFs@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('8D1ED7', '577759', '17903989834', 'ak7B6F@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('8D84Qk', '487512', '13685542541', '6p7675@yahoo.com', 'EDUORG');
INSERT INTO `account` VALUES ('8DyQ04', '263308', '15012692986', '076741@126.com', 'PARENT');
INSERT INTO `account` VALUES ('8j1021', '692782', '14150135144', '5T1G8m@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('8mx338', '792519', '16679047315', '8JOt84@gmail.com', 'TEACHER');
INSERT INTO `account` VALUES ('8R273w', '120505', '16312980856', '2i032r@163.com', 'PARENT');
INSERT INTO `account` VALUES ('a55s36', '999299', '13730065520', '7bL7I4@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('a5K0X8', '455753', '13372262894', '131w0u@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('a614lj', '133938', '14928397162', 'l651T3@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('AJ1L8I', '879209', '16618146762', '3171t0@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('asG402', '483269', '16668378571', 'limv0t@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('B0E1SK', '597558', '14351522445', 'L1pWg7@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('b1dQD0', '474907', '17503283561', 'LA30cw@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('b4G6my', '555823', '14566921571', 'xvP5Uo@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('bB66D7', '835663', '18714747341', 'J5J64l@163.com', 'PARENT');
INSERT INTO `account` VALUES ('Bj2353', '715284', '16619722636', '7SM680@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('bL7464', '940701', '15810155732', '5040e3@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('Bl8Wd7', '193904', '18596919931', '7T44o5@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('BnN62b', '219968', '13631160342', '4553W8@yahoo.com', 'TEACHER');
INSERT INTO `account` VALUES ('BoA26j', '849103', '18915094546', 'Kd76Mn@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('btk35Q', '378085', '16765426907', '70N3vH@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('bXLO21', '891262', '16377388846', '5KiFb5@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('BxNC2T', '361213', '13784507510', '11785v@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('c41H20', '574795', '18311697277', 'Lb1650@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('C572iT', '604671', '14092719879', '80P8w1@126.com', 'EDUORG');
INSERT INTO `account` VALUES ('cB014t', '422523', '16603232505', 'V6jmqr@yahoo.com', 'TEACHER');
INSERT INTO `account` VALUES ('Cy2L43', '180378', '14341086302', 'P60FTW@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('D1oLNw', '693753', '16556457191', 'fG575i@163.com', 'PARENT');
INSERT INTO `account` VALUES ('DGYKi1', '223361', '15402443327', '42517b@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('dLDy12', '788280', '18521870870', '152e51@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('dT5Ft2', '909044', '16289239361', 'x0JvV8@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('e05831', '414378', '17976691138', '3sv3Hf@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('E16Oc4', '259262', '15913264979', '75gI46@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('e24T01', '481592', '14377640912', 'BbGr6g@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('E2vrR5', '922349', '13380553402', '7D407d@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('E2XT3r', '928302', '17701163828', '4G02ge@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('e66A4y', '959587', '15280278238', 'pN8c5c@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('e6XG02', '806506', '15151132846', '846C3h@163.com', 'EDUORG');
INSERT INTO `account` VALUES ('E8e6n3', '427829', '15821781559', 'Rm3uyl@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('eD5C04', '979546', '17829956122', 'U3h3i8@163.com', 'EDUORG');
INSERT INTO `account` VALUES ('Ej34p7', '421008', '15438210611', 's4Cn2n@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('EN6p34', '804214', '18493758061', 'K86s40@163.com', 'PARENT');
INSERT INTO `account` VALUES ('ESrJ26', '344726', '16842200972', 'yl546D@163.com', 'PARENT');
INSERT INTO `account` VALUES ('F425m1', '679963', '14098767682', '7222qp@163.com', 'PARENT');
INSERT INTO `account` VALUES ('F48D5U', '788633', '15431800179', 'Cu46a2@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('F6D232', '810822', '14542976842', 'S8sIn8@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('F76F01', '209443', '17109975053', '0IhMK3@yahoo.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('f7s2J8', '213958', '13813167723', '35hU8h@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('f8763v', '775522', '13687608417', 't0ThEq@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('fVI6f3', '670951', '18169031191', 'r24Ws0@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('G3WV83', '240858', '17353179968', 'yUWDLY@126.com', 'SYSADMIN');
INSERT INTO `account` VALUES ('gFrYkd', '796211', '18483223090', '0367q4@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('GKwe26', '934085', '15049296736', '6j88fQ@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('gocX17', '351112', '18576489343', 'Ymq4gT@gmail.com', 'TEACHER');
INSERT INTO `account` VALUES ('Guq0b0', '597439', '13322488055', '7tqADS@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('gX7rhM', '162114', '16987845466', '73C5WC@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('h20Y8T', '726018', '17934283020', 'o62858@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('H2123D', '301159', '15692304242', '3w24e5@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('hDr18x', '272875', '17496551264', '15h57y@163.com', 'PARENT');
INSERT INTO `account` VALUES ('HF51QS', '610052', '14396458587', 'LY1411@163.com', 'PARENT');
INSERT INTO `account` VALUES ('hl0v1L', '433304', '14163184177', 'Q246xA@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('Hs55p5', '962447', '17497239332', '84r763@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('hwo0C7', '310865', '15732736731', 'l3v50t@163.com', 'PARENT');
INSERT INTO `account` VALUES ('HX5002', '994358', '18114185815', '37YqPm@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('I018N3', '997305', '15993440674', 'Ssn0E8@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('I0csRu', '579992', '14277925319', '6Pb10t@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('Ir3qK7', '856280', '18406565085', '6f82C4@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('J34W34', '705603', '14873224671', '5hk6km@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('JDo661', '251174', '18837105632', 'oDqwg4@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('K038J6', '359377', '18650663697', '074km6@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('k11555', '890873', '13456569425', '3tfRv1@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('K2iLS2', '836079', '15742011307', '0kvxw6@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('K4V01Y', '835498', '17163951238', '086Mfs@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('K546pP', '420612', '16962599322', 'oU28FP@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('KH2HYA', '177984', '16934562344', '7p5F63@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('kj5o62', '821133', '16498522756', 'DW440d@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('KX5k1j', '868988', '13373648812', 'nme866@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('KX7r45', '400230', '16848634500', 'MYVm25@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('L2RHgq', '478230', '18468914797', 'U283A4@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('L8lv0p', '754071', '18788095882', '0y008v@163.com', 'PARENT');
INSERT INTO `account` VALUES ('Ld4603', '850811', '16036863466', 'FH0n15@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('Lfy4K1', '881306', '16843902701', 'q7vanF@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('M2Vy1c', '157371', '17839059124', 'Me8VD5@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('M4sy72', '164772', '16742362037', 'YQ6hvd@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('M6v7Id', '258063', '17739034905', '8yI1l7@163.com', 'PARENT');
INSERT INTO `account` VALUES ('m7n281', '657082', '15525001005', '22N63A@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('m828wt', '133806', '17272526167', 'L25LW6@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('Mc513o', '875711', '16464597830', '7678L5@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('N335O4', '197359', '16032682974', '4r2j75@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('NIB6JJ', '198921', '18536585243', '2l1uPL@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('nK3cg3', '780095', '18276139244', '8d1O6E@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('NK4j8H', '816231', '15354043270', '37YBl8@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('nLpr33', '937442', '18015773076', 'LO4443@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('NyB0C3', '395903', '16473601250', '088502@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('O2224R', '269540', '14176213166', '35gA26@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('O535f5', '228437', '15150545982', 'JD813A@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('o7At16', '564191', '15352556930', '11f02s@yahoo.com', 'EDUORG');
INSERT INTO `account` VALUES ('o7p384', '261535', '15771995580', 'O4576V@163.com', 'PARENT');
INSERT INTO `account` VALUES ('OT3v0w', '332436', '14591025261', 'H5D18C@yahoo.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('P2j3fw', '399951', '18871647269', '1382j3@yahoo.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('p5D05w', '336834', '17957054734', '6160Lg@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('pF4B2Q', '495172', '17683003331', '5S64y5@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('pgn82P', '939192', '14699940083', '35wML1@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('Po24w5', '115670', '16523272857', 'ACC8Q1@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('PU7g87', '387448', '16618535330', 'eUA6Yo@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('q037M2', '455757', '13867303644', 'o7W64r@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('Q1DPQs', '462297', '17980339461', 'dl7fbr@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('q4F7j0', '573882', '16129901115', 'ko7h16@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('QG3clA', '812207', '17003712672', 'bm5hjC@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('Ql4kiI', '326869', '15497275100', '32hW35@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('qT26E7', '984004', '15971474526', 'L1I862@163.com', 'PARENT');
INSERT INTO `account` VALUES ('r0N4t0', '431686', '17495868263', 'c4qvO8@163.com', 'PARENT');
INSERT INTO `account` VALUES ('r2gQg8', '234629', '14880965273', 'K8yC2k@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('R5F8p4', '808862', '15081576739', 'Gjn00f@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('R5TL0K', '974094', '14673722455', 'Fh724W@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('R778V5', '950003', '14109457744', 'L5H54Y@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('S2w05l', '872014', '17317747477', 'Bs53j3@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('S37i0X', '637854', '13604096980', 'Y16B33@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('S4kd5G', '669476', '13881662647', 'E367sX@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('s5vnyr', '283344', '18750707148', 'J3R803@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('s6ghjx', '528915', '17424250335', '1u4cYW@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('SA1220', '200739', '18002412190', 'Mgr1Pe@163.com', 'TEACHER');
INSERT INTO `account` VALUES ('saoy7F', '456540', '16711105156', 'rlT186@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('sl41TH', '789995', '17029279470', '5K6pXp@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('Sq825v', '831096', '15560973406', '1mmW21@yahoo.com', 'TEACHER');
INSERT INTO `account` VALUES ('t0Hih6', '502331', '16264050566', 's3jGS3@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('t0i8u7', '702114', '18847807996', '565ogO@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('T6hX68', '604276', '18551753408', 'd2b4JY@163.com', 'PARENT');
INSERT INTO `account` VALUES ('tDp13m', '526293', '17337879624', '534uFs@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('tx3D17', '565161', '13616529524', 'Nl220n@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('u1704R', '306007', '17224557644', 'ACf568@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('u44j06', '421485', '15798302816', 's876Bq@126.com', 'EDUORG');
INSERT INTO `account` VALUES ('UJgfTg', '527909', '13344451089', '2wYwt0@163.com', 'PARENT');
INSERT INTO `account` VALUES ('Uli76e', '873995', '18693453331', 'S2e630@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('uU7uX0', '489119', '14478806772', '5p6sM3@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('UUrVuR', '811695', '17986441665', '3svC5T@163.com', 'EDUORG');
INSERT INTO `account` VALUES ('V06427', '446379', '18467219673', 'M0k7ce@126.com', 'TEACHER');
INSERT INTO `account` VALUES ('v30l14', '467030', '16799549021', '3oW11p@163.com', 'PARENT');
INSERT INTO `account` VALUES ('v487cQ', '998423', '14060190636', 'T1a0fl@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('v755O4', '192479', '16773772597', '480b13@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('v81oyp', '404730', '15003433091', '6r4X64@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('w4326u', '694204', '18673548453', 'Eb3l06@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('W4wDAh', '680806', '17642797133', '63322F@gmail.com', 'PARENT');
INSERT INTO `account` VALUES ('w5U8i5', '382549', '13714512831', 'tc3lh4@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('W72Dr1', '628233', '17640736855', '5svC3f@yahoo.com', 'EDUORG');
INSERT INTO `account` VALUES ('w7P4a1', '945369', '16256962378', '4E85ib@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('W884uX', '709628', '14465532566', '84220l@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('wa58S0', '694960', '15761691336', 'j4txm8@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('wAXC16', '367148', '16109777485', 'i5fEEd@163.com', 'PARENT');
INSERT INTO `account` VALUES ('WAY38m', '856591', '15830407659', 'y4T8Yi@163.com', 'PARENT');
INSERT INTO `account` VALUES ('wBO0d0', '244110', '18310290013', 'D45Va3@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('wCkApg', '447242', '17341208092', '88d74P@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('WDje68', '262512', '15760508299', '0Ta162@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('Wn7q51', '809260', '14413209594', 'm20j20@sina.com.cn', 'TEACHER');
INSERT INTO `account` VALUES ('y67776', '919958', '17043240823', 'A4M345@126.com', 'PARENT');
INSERT INTO `account` VALUES ('ye5E6F', '988992', '17235626720', 'UJ602y@yahoo.com', 'PARENT');
INSERT INTO `account` VALUES ('yH55eJ', '853733', '15714249238', '53Oa40@163.com', 'PARENT');
INSERT INTO `account` VALUES ('Yh8480', '881987', '17773868988', '261C18@sina.com.cn', 'PARENT');

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
INSERT INTO `course` VALUES ('2462', '000', '000', '00', '000', '2452', 0, 100, 'MATH', '000', 3, 1);
INSERT INTO `course` VALUES ('777', '数据库', '', '', '', '254236', 0, 0, 'CHEMISTRY', '', 3, 1);
INSERT INTO `course` VALUES ('777456', '高等数学', '', '', '', '254236', 0, 0, 'BIOLOGY', '', 3, 1);
INSERT INTO `course` VALUES ('CID1', '呵呵', '随便', '慕课', '呵呵', '00', 20, 10, 'MATH', '来上课就行', 3, 1);
INSERT INTO `course` VALUES ('DS201906', '数据结构', '每周三', '逸夫楼', '线性表、堆栈、树、图、查找、排序', '007CH7', 20, 500, 'MATH', '课程设计', 3, 1);
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
INSERT INTO `eduorg` VALUES ('o7At16', '202', '山东大学', '15352556930', '6Kj4S5', 'DEFAULT', 22, 'YES');
INSERT INTO `eduorg` VALUES ('007CH7', '203', '华侨大学', '15908840195', 'vFI575', 'CHEMISTRY', 14, 'YES');
INSERT INTO `eduorg` VALUES ('dT5Ft2', '204', '北大', '16289239361', 's2oU62', 'BIOLOGY', 22, 'YES');
INSERT INTO `eduorg` VALUES ('s5vnyr', '205', '清华同方', '18750707148', '81uJI8', 'DEFAULT', 17, 'YES');
INSERT INTO `eduorg` VALUES ('OT3v0w', '206', '吉大纱窗', '14591025261', 'hM7q0u', 'CHEMISTRY', 10, 'YES');
INSERT INTO `eduorg` VALUES ('41814a', '207', '新东方', '17863057066', '613255', 'BIOLOGY', 29, 'YES');
INSERT INTO `eduorg` VALUES ('3470y6', '208', '蓝翔', '18045197832', 'F52cDf', 'DEFAULT', 25, 'YES');
INSERT INTO `eduorg` VALUES ('7H6DT3', '209', '兰强大学', '13426607079', '2H38j2', 'CHEMISTRY', 16, 'YES');
INSERT INTO `eduorg` VALUES ('u1704R', '210', '厨师学校', '17224557644', '73P7T7', 'BIOLOGY', 15, 'YES');
INSERT INTO `eduorg` VALUES ('4BIk28', '211', '吉林大学', '18705038122', 'K515j2', 'DEFAULT', 11, 'YES');
INSERT INTO `eduorg` VALUES ('67l758', '212', '山东大学', '16990122534', 'xw3j7i', 'CHEMISTRY', 17, 'YES');
INSERT INTO `eduorg` VALUES ('3mE36I', '213', '华侨大学', '13359167048', '28xvf3', 'BIOLOGY', 15, 'YES');
INSERT INTO `eduorg` VALUES ('42U1S1', '214', '北大', '14097824041', 'm157a7', 'DEFAULT', 14, 'YES');
INSERT INTO `eduorg` VALUES ('GKwe26', '215', '清华同方', '15049296736', 'c05pI6', 'CHEMISTRY', 4, 'YES');
INSERT INTO `eduorg` VALUES ('8D1ED7', '216', '吉大纱窗', '17903989834', '308mau', 'BIOLOGY', 16, 'YES');
INSERT INTO `eduorg` VALUES ('u44j06', '217', '新东方', '15798302816', 'jRD730', 'DEFAULT', 16, 'YES');
INSERT INTO `eduorg` VALUES ('C572iT', '218', '蓝翔', '14092719879', '4LPnR7', 'CHEMISTRY', 26, 'NO');
INSERT INTO `eduorg` VALUES ('F76F01', '219', '兰强大学', '17109975053', 'n8r0LQ', 'BIOLOGY', 26, 'YES');
INSERT INTO `eduorg` VALUES ('H2123D', '220', '厨师学校', '15692304242', 'i7C6N8', 'DEFAULT', 10, 'YES');
INSERT INTO `eduorg` VALUES ('BoA26j', '221', '吉林大学', '18915094546', '72k6g0', 'CHEMISTRY', 16, 'YES');
INSERT INTO `eduorg` VALUES ('083Mxc', '222', '山东大学', '15348205971', '232w78', 'BIOLOGY', 21, 'YES');
INSERT INTO `eduorg` VALUES ('06GUpb', '223', '华侨大学', '16019742956', '23Ll25', 'DEFAULT', 28, 'YES');
INSERT INTO `eduorg` VALUES ('e6XG02', '224', '北大', '15151132846', 'T6k045', 'CHEMISTRY', 7, 'YES');
INSERT INTO `eduorg` VALUES ('26T6f6', '225', '清华同方', '15649406961', '6lGHe7', 'BIOLOGY', 15, 'YES');
INSERT INTO `eduorg` VALUES ('UUrVuR', '226', '吉大纱窗', '17986441665', '85vVb2', 'DEFAULT', 12, 'YES');
INSERT INTO `eduorg` VALUES ('1UHD1x', '227', '新东方', '13880129280', 'S7w65a', 'CHEMISTRY', 12, 'YES');
INSERT INTO `eduorg` VALUES ('1qCg3R', '228', '蓝翔', '13971193277', 'o761Tc', 'BIOLOGY', 13, 'YES');
INSERT INTO `eduorg` VALUES ('B0E1SK', '229', '兰强大学', '14351522445', 'pf7C68', 'DEFAULT', 5, 'NO');
INSERT INTO `eduorg` VALUES ('eD5C04', '230', '厨师学校', '17829956122', '300n63', 'CHEMISTRY', 26, 'YES');
INSERT INTO `eduorg` VALUES ('8D84Qk', '231', '吉林大学', '13685542541', 'XxT6b8', 'BIOLOGY', 12, 'YES');
INSERT INTO `eduorg` VALUES ('3t78wS', '232', '山东大学', '13931105388', 'g128G7', 'DEFAULT', 5, 'YES');
INSERT INTO `eduorg` VALUES ('W72Dr1', '233', '华侨大学', '17640736855', '3eqy0y', 'CHEMISTRY', 1, 'YES');
INSERT INTO `eduorg` VALUES ('sl41TH', '234', '北大', '17029279470', 'q4q0g4', 'BIOLOGY', 23, 'NO');

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
INSERT INTO `parent` VALUES ('0562oJ', '关键', '2002-08-20', 'MALE', '魏盛元', '15870974333', 'BIOLOGY', 9247, NULL);
INSERT INTO `parent` VALUES ('07P343', '田硕', '2006-01-08', 'FEMALE', '吴雪', '16533930857', 'DEFAULT', 7199, NULL);
INSERT INTO `parent` VALUES ('0D661C', '靳观瑜', '2002-10-17', 'FEMALE', '李成', '14385192080', 'CHEMISTRY', 3611, NULL);
INSERT INTO `parent` VALUES ('0dWr3i', '王煜', '2015-03-04', 'MALE', '吕雅琪', '14679425610', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('0GI6ci', '徐翰林', '1998-12-29', 'MALE', '王云灏', '14785603216', 'BIOLOGY', 7544, NULL);
INSERT INTO `parent` VALUES ('0XN6l3', '宋展鹏', '2008-09-29', 'FEMALE', '耿畅', '14078393182', 'BIOLOGY', 6395, NULL);
INSERT INTO `parent` VALUES ('10en30', '王一涵', '2017-01-15', 'FEMALE', '关敬萱', '17574965307', 'BIOLOGY', 1335, NULL);
INSERT INTO `parent` VALUES ('133gH1', '韩畅', '2002-01-01', 'MALE', '尹子依', '13487984141', 'DEFAULT', 4838, NULL);
INSERT INTO `parent` VALUES ('1471k2', '陈硕', '2017-06-30', 'MALE', '孙玉冰', '14901264159', 'BIOLOGY', 3082, NULL);
INSERT INTO `parent` VALUES ('1yBrE1', '米泉莹', '2002-08-20', 'FEMALE', '赵明轩', '13534576505', 'BIOLOGY', 3000, NULL);
INSERT INTO `parent` VALUES ('233Wi8', '徐宇欣', '2015-11-05', 'MALE', '袁劼', '17301007362', 'DEFAULT', 5602, NULL);
INSERT INTO `parent` VALUES ('2431U4', '蔡筱诗', '2005-08-27', 'MALE', '奚源', '14626885342', 'CHEMISTRY', 8442, NULL);
INSERT INTO `parent` VALUES ('26O4f5', '高维崧', '1996-07-26', 'FEMALE', '李娜', '14740079398', 'CHEMISTRY', 2000, NULL);
INSERT INTO `parent` VALUES ('2f5Bi4', '刘雨晴', '1996-06-09', 'MALE', '刘秀丹', '16438671061', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('2rG3S2', '杜雨桐', '2007-02-06', 'FEMALE', '刘仁太', '15504937049', 'BIOLOGY', 4427, NULL);
INSERT INTO `parent` VALUES ('2S0si4', '张萌', '2005-04-09', 'MALE', '李蕊岐', '17652058889', 'DEFAULT', 4435, NULL);
INSERT INTO `parent` VALUES ('2stgct', '赵健宇', '2005-02-18', 'FEMALE', '王梁印', '17391797766', 'CHEMISTRY', 8408, NULL);
INSERT INTO `parent` VALUES ('348X12', '杨佰鸽', '1995-12-09', 'MALE', '杨丽婷', '13300767098', 'CHEMISTRY', 8680, NULL);
INSERT INTO `parent` VALUES ('3F70e8', '潘贞明', '2008-10-26', 'FEMALE', '邵帅', '14852070674', 'CHEMISTRY', 3000, NULL);
INSERT INTO `parent` VALUES ('3h836P', '韩畅', '2003-02-16', 'FEMALE', '王晓敏', '18771638734', 'BIOLOGY', 1884, NULL);
INSERT INTO `parent` VALUES ('3Kk2Uq', '麻君豪', '2014-07-06', 'MALE', '郭嘉欢', '18547712168', 'BIOLOGY', 8705, NULL);
INSERT INTO `parent` VALUES ('3nGTD2', '杨丰睿', '2004-07-13', 'MALE', '孙嘉林', '17070154862', 'DEFAULT', 8839, NULL);
INSERT INTO `parent` VALUES ('3vwwN1', '赵迪', '1998-08-12', 'FEMALE', '李若冰', '16791187606', 'CHEMISTRY', 3510, NULL);
INSERT INTO `parent` VALUES ('40oU41', '陈硕', '2004-08-18', 'MALE', '周瑞', '14505148013', 'DEFAULT', 3746, NULL);
INSERT INTO `parent` VALUES ('41028B', '张福临', '2002-12-27', 'MALE', '李静', '13886533281', 'BIOLOGY', 9488, NULL);
INSERT INTO `parent` VALUES ('43p581', '李永泽', '2015-10-13', 'FEMALE', '李星宇', '17349236580', 'CHEMISTRY', 9435, NULL);
INSERT INTO `parent` VALUES ('4444', '', '2019-06-17', 'MALE', '', '', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('4546', '45', '2019-06-17', 'MALE', '4', '5', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('456', '', '2019-06-17', 'MALE', '', '', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('4566', '', '1766-06-17', 'MALE', '', '', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('4a8748', '徐宇欣', '1997-11-01', 'FEMALE', '郑永豪', '14451412400', 'BIOLOGY', 2507, NULL);
INSERT INTO `parent` VALUES ('4K6N8P', '蔡筱诗', '2007-04-07', 'MALE', '杨森', '15562437008', 'DEFAULT', 3000, NULL);
INSERT INTO `parent` VALUES ('4m58Bp', '米泉莹', '1999-09-07', 'MALE', '孟姣', '15596955082', 'CHEMISTRY', 8293, NULL);
INSERT INTO `parent` VALUES ('4q34I6', '白恩泽', '2017-06-06', 'FEMALE', '王思雨', '15027425868', 'CHEMISTRY', 3916, NULL);
INSERT INTO `parent` VALUES ('4TDr46', '唐亚丽', '2014-02-01', 'MALE', '冉华欣', '13862945047', 'DEFAULT', 7658, NULL);
INSERT INTO `parent` VALUES ('533h7v', '朱子赫', '2012-05-03', 'MALE', '孙思文', '18787264360', 'DEFAULT', 3081, NULL);
INSERT INTO `parent` VALUES ('5H2070', '宫海祁', '2011-03-05', 'MALE', '金博', '16167879054', 'DEFAULT', 6273, NULL);
INSERT INTO `parent` VALUES ('5HJJBo', '田硕', '2012-10-07', 'FEMALE', '包立剑', '17822664893', 'BIOLOGY', 4946, NULL);
INSERT INTO `parent` VALUES ('5ho450', '王煜', '2008-08-13', 'MALE', '谢福林', '18642190443', 'DEFAULT', 3714, NULL);
INSERT INTO `parent` VALUES ('60F840', '张与之', '2009-02-21', 'MALE', '杜成岩', '14938259409', 'CHEMISTRY', 6669, NULL);
INSERT INTO `parent` VALUES ('60k6OU', '陈俊杰', '2011-11-03', 'MALE', '郭佳', '14670988893', 'DEFAULT', 2530, NULL);
INSERT INTO `parent` VALUES ('61361c', '洪彬', '2002-07-29', 'MALE', '叶绩', '17545910533', 'CHEMISTRY', 5582, NULL);
INSERT INTO `parent` VALUES ('63S2y1', '杜雨桐', '2011-12-07', 'FEMALE', '刘洋', '17336455755', 'CHEMISTRY', 7284, NULL);
INSERT INTO `parent` VALUES ('7K8mcM', '麻君豪', '2004-09-20', 'MALE', '拱兴博', '15154977657', 'DEFAULT', 6738, NULL);
INSERT INTO `parent` VALUES ('7s7J35', '高维崧', '2010-06-15', 'FEMALE', '王天泽', '17253742607', 'DEFAULT', 7839, NULL);
INSERT INTO `parent` VALUES ('80Co5x', '高维崧', '1997-06-07', 'FEMALE', '崔家明', '15213074420', 'BIOLOGY', 1163, NULL);
INSERT INTO `parent` VALUES ('85aWR7', '初东航', '2000-01-10', 'FEMALE', '孙新', '16809913495', 'BIOLOGY', 9131, NULL);
INSERT INTO `parent` VALUES ('a614lj', '刘雨晴', '2008-09-18', 'MALE', '滕天博', '14928397162', 'DEFAULT', 6451, NULL);
INSERT INTO `parent` VALUES ('bB66D7', '靳观瑜', '2009-05-04', 'FEMALE', '张鹏伟', '18714747341', 'BIOLOGY', 5813, NULL);
INSERT INTO `parent` VALUES ('bL7464', '路子旭', '1999-08-20', 'MALE', '李语尧', '15810155732', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('btk35Q', '杨丰睿', '1999-11-16', 'MALE', '张煊', '16765426907', 'BIOLOGY', 9499, NULL);
INSERT INTO `parent` VALUES ('Cy2L43', '马静', '2013-03-22', 'MALE', '吴楠', '14341086302', 'CHEMISTRY', 3223, NULL);
INSERT INTO `parent` VALUES ('DGYKi1', '赵迪', '2011-08-18', 'FEMALE', '乔艳丽', '15402443327', 'DEFAULT', 8119, NULL);
INSERT INTO `parent` VALUES ('dLDy12', '赵健宇', '2011-04-26', 'FEMALE', '赵元隆', '18521870870', 'BIOLOGY', 8566, NULL);
INSERT INTO `parent` VALUES ('e05831', '张晓榕', '1996-02-09', 'FEMALE', '陈雪岩', '17976691138', 'CHEMISTRY', 8888, NULL);
INSERT INTO `parent` VALUES ('e24T01', '张士宝', '2015-09-07', 'FEMALE', '王常明', '14377640912', 'CHEMISTRY', 9543, NULL);
INSERT INTO `parent` VALUES ('e66A4y', '李艳涛', '1999-05-07', 'FEMALE', '郑鹏远', '15280278238', 'DEFAULT', 2000, NULL);
INSERT INTO `parent` VALUES ('EN6p34', '刘雨晴', '2012-08-23', 'FEMALE', '于凯伦', '18493758061', 'CHEMISTRY', 5589, NULL);
INSERT INTO `parent` VALUES ('F425m1', '关键', '2000-10-07', 'MALE', '李君錞', '14098767682', 'CHEMISTRY', 3325, NULL);
INSERT INTO `parent` VALUES ('F48D5U', '蔡筱诗', '2008-06-19', 'MALE', '王启月', '15431800179', 'BIOLOGY', 8235, NULL);
INSERT INTO `parent` VALUES ('F6D232', '潘贞明', '2002-11-21', 'FEMALE', '王荟', '14542976842', 'BIOLOGY', 2518, NULL);
INSERT INTO `parent` VALUES ('f8763v', '张江', '2003-03-24', 'MALE', '吕爽', '13687608417', 'DEFAULT', 7591, NULL);
INSERT INTO `parent` VALUES ('fVI6f3', '张福临', '2014-01-06', 'MALE', '杨润', '18169031191', 'CHEMISTRY', 3583, NULL);
INSERT INTO `parent` VALUES ('gFrYkd', '张晓榕', '2003-09-18', 'FEMALE', '刘怀湜', '18483223090', 'DEFAULT', 9028, NULL);
INSERT INTO `parent` VALUES ('Guq0b0', '赵健宇', '2009-12-17', 'MALE', '郭嘉馨', '13322488055', 'DEFAULT', 3898, NULL);
INSERT INTO `parent` VALUES ('gX7rhM', '宫海祁', '2013-05-09', 'MALE', '张舒雯', '16987845466', 'DEFAULT', 1196, NULL);
INSERT INTO `parent` VALUES ('h20Y8T', '李永泽', '1999-01-07', 'FEMALE', '孙霄鹏', '17934283020', 'DEFAULT', 4508, NULL);
INSERT INTO `parent` VALUES ('hDr18x', '杨佰鸽', '2001-05-29', 'MALE', '李奇缘', '17496551264', 'BIOLOGY', 4273, NULL);
INSERT INTO `parent` VALUES ('HF51QS', '朱子赫', '2017-11-25', 'FEMALE', '沈佳琦', '14396458587', 'CHEMISTRY', 2409, NULL);
INSERT INTO `parent` VALUES ('Hs55p5', '王一涵', '2012-04-29', 'MALE', '刘妍', '17497239332', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('HX5002', '徐翰林', '1996-07-17', 'MALE', '尹航', '18114185815', 'DEFAULT', 8096, NULL);
INSERT INTO `parent` VALUES ('k11555', '初东航', '1998-11-03', 'FEMALE', '李贺', '13456569425', 'CHEMISTRY', 5225, NULL);
INSERT INTO `parent` VALUES ('K2iLS2', '陈曦', '2006-10-29', 'FEMALE', '杜万鹏', '15742011307', 'BIOLOGY', 8374, NULL);
INSERT INTO `parent` VALUES ('K4V01Y', '赵迪', '2012-06-30', 'FEMALE', '陈思达', '17163951238', 'BIOLOGY', 2000, NULL);
INSERT INTO `parent` VALUES ('kj5o62', '初东航', '2016-02-01', 'MALE', '何嘉媛', '16498522756', 'DEFAULT', 5220, NULL);
INSERT INTO `parent` VALUES ('KX5k1j', '洪彬', '2004-08-28', 'MALE', '苏星元', '13373648812', 'DEFAULT', 2015, NULL);
INSERT INTO `parent` VALUES ('M4sy72', '宫海祁', '2012-04-15', 'FEMALE', '李添淇', '16742362037', 'CHEMISTRY', 2948, NULL);
INSERT INTO `parent` VALUES ('M6v7Id', '米泉莹', '2011-08-06', 'MALE', '孙世斌', '17739034905', 'DEFAULT', 7304, NULL);
INSERT INTO `parent` VALUES ('m828wt', '唐亚丽', '2006-05-21', 'MALE', '季英雪', '17272526167', 'CHEMISTRY', 2251, NULL);
INSERT INTO `parent` VALUES ('NK4j8H', '李艳涛', '2012-07-12', 'FEMALE', '李昊', '15354043270', 'CHEMISTRY', 7244, NULL);
INSERT INTO `parent` VALUES ('nLpr33', '陈楚元', '2001-04-29', 'FEMALE', '秦扬', '18015773076', 'CHEMISTRY', 2752, NULL);
INSERT INTO `parent` VALUES ('O2224R', '陈曦', '1996-11-25', 'FEMALE', '杨海峰', '14176213166', 'CHEMISTRY', 5821, NULL);
INSERT INTO `parent` VALUES ('pF4B2Q', '姜慧琳', '2012-02-04', 'FEMALE', '张楠', '17683003331', 'CHEMISTRY', 9413, NULL);
INSERT INTO `parent` VALUES ('pgn82P', '程墨', '2014-12-29', 'FEMALE', '刘怀宇', '14699940083', 'CHEMISTRY', 6741, NULL);
INSERT INTO `parent` VALUES ('Po24w5', '李艳涛', '2011-03-20', 'FEMALE', '张剑飞', '16523272857', 'BIOLOGY', 4478, NULL);
INSERT INTO `parent` VALUES ('q4F7j0', '潘贞明', '1997-09-17', 'MALE', '郑熹妹', '16129901115', 'DEFAULT', 6129, NULL);
INSERT INTO `parent` VALUES ('Ql4kiI', '张晓榕', '1996-12-25', 'FEMALE', '董海博', '15497275100', 'BIOLOGY', 2858, NULL);
INSERT INTO `parent` VALUES ('r0N4t0', '关键', '1995-07-25', 'MALE', '李强', '17495868263', 'DEFAULT', 8082, NULL);
INSERT INTO `parent` VALUES ('r2gQg8', '白恩泽', '1996-08-16', 'FEMALE', '于新歌', '14880965273', 'BIOLOGY', 8334, NULL);
INSERT INTO `parent` VALUES ('R5TL0K', '王煜', '2007-10-16', 'MALE', '谢福森', '14673722455', 'DEFAULT', 2165, NULL);
INSERT INTO `parent` VALUES ('S37i0X', '王一涵', '1999-08-03', 'FEMALE', '李想', '13604096980', 'CHEMISTRY', 5782, NULL);
INSERT INTO `parent` VALUES ('S4kd5G', '张萌', '2000-01-23', 'MALE', '张效略', '13881662647', 'DEFAULT', 8102, NULL);
INSERT INTO `parent` VALUES ('saoy7F', '陈曦', '1997-02-28', 'FEMALE', '李剑雨', '16711105156', 'DEFAULT', 1422, NULL);
INSERT INTO `parent` VALUES ('t0Hih6', '陈俊杰', '2004-03-02', 'MALE', '师泽来', '16264050566', 'DEFAULT', 1657, NULL);
INSERT INTO `parent` VALUES ('tx3D17', '陈楚元', '2009-08-11', 'MALE', '王昱智', '13616529524', 'DEFAULT', 7969, NULL);
INSERT INTO `parent` VALUES ('v81oyp', '宋展鹏', '2012-12-18', 'FEMALE', '王一丁', '15003433091', 'DEFAULT', 8530, NULL);
INSERT INTO `parent` VALUES ('W4wDAh', '马静', '1995-10-21', 'MALE', '王鹤霖', '17642797133', 'BIOLOGY', 9857, NULL);
INSERT INTO `parent` VALUES ('w7P4a1', '程墨', '1999-03-07', 'FEMALE', '刘桐羽', '16256962378', 'DEFAULT', 3711, NULL);
INSERT INTO `parent` VALUES ('W884uX', '张与之', '2007-06-13', 'MALE', '刘芳菲', '14465532566', 'DEFAULT', 4253, NULL);
INSERT INTO `parent` VALUES ('wa58S0', '姜慧琳', '1995-05-02', 'FEMALE', '王昱博', '15761691336', 'DEFAULT', 2161, NULL);
INSERT INTO `parent` VALUES ('wAXC16', '程墨', '2017-01-05', 'FEMALE', '王琳', '16109777485', 'BIOLOGY', 2767, NULL);
INSERT INTO `parent` VALUES ('WAY38m', '杨丰睿', '2015-11-19', 'MALE', '李牧宸', '15830407659', 'DEFAULT', 5710, NULL);
INSERT INTO `parent` VALUES ('ye5E6F', '张江', '2001-10-22', 'FEMALE', '邢日', '17235626720', 'BIOLOGY', 1218, NULL);
INSERT INTO `parent` VALUES ('yH55eJ', '张士宝', '2016-07-18', 'FEMALE', '黄殷梓', '15714249238', 'BIOLOGY', 5764, NULL);

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
INSERT INTO `previewapp` VALUES ('', 'DS201906', 'YES');
INSERT INTO `previewapp` VALUES ('0dWr3i', 'sss', 'YES');
INSERT INTO `previewapp` VALUES ('1yBrE1', 'CID1', 'NO');
INSERT INTO `previewapp` VALUES ('26O4f5', '123', 'YES');
INSERT INTO `previewapp` VALUES ('2f5Bi4', 'SE201901', 'NO');
INSERT INTO `previewapp` VALUES ('3F70e8', '777456', 'YES');
INSERT INTO `previewapp` VALUES ('4K6N8P', 'DS201906', 'NO');
INSERT INTO `previewapp` VALUES ('bL7464', 'DS201906', 'NO');
INSERT INTO `previewapp` VALUES ('btk35Q', 'sss', 'NO');
INSERT INTO `previewapp` VALUES ('e66A4y', '777', 'NO');
INSERT INTO `previewapp` VALUES ('F425m1', 'SE201901', 'YES');
INSERT INTO `previewapp` VALUES ('Hs55p5', '002', 'NO');
INSERT INTO `previewapp` VALUES ('K4V01Y', '2462', 'NO');

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
INSERT INTO `purchase` VALUES ('', '777', 'YES');
INSERT INTO `purchase` VALUES ('', 'SE201901', 'YES');
INSERT INTO `purchase` VALUES ('', 'sss', 'YES');
INSERT INTO `purchase` VALUES ('1yBrE1', 'SE201901', 'YES');
INSERT INTO `purchase` VALUES ('2stgct', 'CID1', 'YES');
INSERT INTO `purchase` VALUES ('3F70e8', '777', 'YES');
INSERT INTO `purchase` VALUES ('4K6N8P', 'sss', 'YES');
INSERT INTO `purchase` VALUES ('btk35Q', '777', 'YES');
INSERT INTO `purchase` VALUES ('F425m1', '2462', 'NO');
INSERT INTO `purchase` VALUES ('gX7rhM', '777456', 'YES');

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
INSERT INTO `teacher` VALUES ('031Ks3', 'm57Us5', 'MALE', '1900-01-19', '323674199009181623', '14773266825', 'xP1gmK', 'DEFAULT', 13, 59, 'YES');
INSERT INTO `teacher` VALUES ('0Aou5F', 'y4x3nY', 'MALE', '1900-01-19', '626758198201191467', '17133213476', '0RlI5g', 'DEFAULT', 20, 39, 'YES');
INSERT INTO `teacher` VALUES ('0W5641', '46NS5L', 'MALE', '1900-01-19', '572482198508148376', '16237186117', '348720', 'DEFAULT', 24, 38, 'YES');
INSERT INTO `teacher` VALUES ('10312S', '103AaA', 'MALE', '1900-01-19', '421202198405167360', '15326416315', '17CxH8', 'CHEMISTRY', 16, 48, 'YES');
INSERT INTO `teacher` VALUES ('1YSj6O', 'nIP82e', 'FEMALE', '1900-01-19', '452644199603283990', '14133829270', '17y3B1', 'DEFAULT', 6, 24, 'YES');
INSERT INTO `teacher` VALUES ('24', '45', 'FEMALE', '2019-06-18', '321182199809040014', '43', '34', 'CHEMISTRY', 345, 43, 'YES');
INSERT INTO `teacher` VALUES ('2452', '45', 'FEMALE', '1674-06-16', '321182199809040011', '43', '34', 'DEFAULT', 345, 43, 'YES');
INSERT INTO `teacher` VALUES ('254236', '', 'MALE', '1819-06-17', '', '', '', 'DEFAULT', 20, 20, 'YES');
INSERT INTO `teacher` VALUES ('27gdp3', 'T4Rpf2', 'MALE', '1900-01-19', '607588199506211576', '14147415866', 'fm8K61', 'DEFAULT', 19, 32, 'YES');
INSERT INTO `teacher` VALUES ('2sKgu2', 'c16g45', 'MALE', '1900-01-19', '189505199203204760', '14619306673', 'S760U3', 'DEFAULT', 24, 37, 'YES');
INSERT INTO `teacher` VALUES ('2y818q', '448Ukt', 'FEMALE', '1900-01-20', '235184200005217464', '14852328929', '0Bg2n6', 'BIOLOGY', 8, 39, 'NO');
INSERT INTO `teacher` VALUES ('3147f8', 'fS1666', 'MALE', '1900-01-19', '364161197009138792', '15958058754', 'XN865E', 'DEFAULT', 18, 55, 'YES');
INSERT INTO `teacher` VALUES ('3PHgdA', 'wk44c7', 'MALE', '1900-01-19', '375114197609268895', '16101260432', '0f60OF', 'CHEMISTRY', 11, 57, 'YES');
INSERT INTO `teacher` VALUES ('3r2350', 'S7TxE8', 'FEMALE', '1900-01-19', '457869197102294699', '16357082596', 'q8uJ75', 'DEFAULT', 12, 28, 'YES');
INSERT INTO `teacher` VALUES ('3v2V3J', '45', 'MALE', '1900-01-19', '321182199809040000', '14969375585', '43', 'DEFAULT', 345, 43, 'YES');
INSERT INTO `teacher` VALUES ('46myM0', '7Xe2w2', 'MALE', '1900-01-19', '661263198508153153', '15059962263', 'm73suU', 'CHEMISTRY', 23, 22, 'YES');
INSERT INTO `teacher` VALUES ('473fab', 'qb0720', 'MALE', '1900-01-19', '605225199708128944', '17799781504', '31r145', 'DEFAULT', 4, 45, 'YES');
INSERT INTO `teacher` VALUES ('5307P1', 'V1Uy3w', 'MALE', '1900-01-19', '752320199906231244', '15938411187', '3PI1j6', 'DEFAULT', 3, 44, 'YES');
INSERT INTO `teacher` VALUES ('54i064', 'nYW5ov', 'FEMALE', '1900-01-19', '778676197602148894', '15972422800', '43MV2s', 'CHEMISTRY', 10, 52, 'YES');
INSERT INTO `teacher` VALUES ('5C8kI6', 'kms846', 'FEMALE', '1900-01-19', '332882199308167992', '16614697773', '72TV41', 'CHEMISTRY', 8, 38, 'YES');
INSERT INTO `teacher` VALUES ('5Km285', '8T501u', 'MALE', '1900-01-19', '770776199905267392', '17933510500', '5Rpm4J', 'BIOLOGY', 6, 29, 'NO');
INSERT INTO `teacher` VALUES ('5U7505', '3P5441', 'FEMALE', '1900-01-19', '399033197607186705', '17156499192', '3077NR', 'BIOLOGY', 4, 36, 'NO');
INSERT INTO `teacher` VALUES ('62vsV4', 'owpkx5', 'MALE', '1900-01-20', '142912200006249853', '14115652378', '23j2R1', 'CHEMISTRY', 14, 49, 'YES');
INSERT INTO `teacher` VALUES ('672416', 'gP23p3', 'FEMALE', '1900-01-19', '211133197104103862', '16151095887', 'L7684J', 'BIOLOGY', 14, 23, 'NO');
INSERT INTO `teacher` VALUES ('683sp4', 'NkU34k', 'MALE', '1900-01-19', '258007199104266946', '14829741628', 'f1P086', 'CHEMISTRY', 12, 31, 'YES');
INSERT INTO `teacher` VALUES ('6v75Ns', '48H803', 'MALE', '1900-01-19', '486983197503119436', '16809911037', 'e2Y8Qr', 'CHEMISTRY', 23, 34, 'YES');
INSERT INTO `teacher` VALUES ('6y3He8', '70X8x4', 'FEMALE', '1900-01-19', '172287198205227332', '16386862290', 'X46W11', 'CHEMISTRY', 8, 27, 'YES');
INSERT INTO `teacher` VALUES ('7007F1', '2M6pAP', 'FEMALE', '1900-01-19', '643270197706276839', '18807832547', 'K4T3C3', 'DEFAULT', 15, 43, 'YES');
INSERT INTO `teacher` VALUES ('77rp0O', '28L8B5', 'FEMALE', '1900-01-19', '332332199001309764', '14420459778', '4V36Nq', 'DEFAULT', 16, 36, 'YES');
INSERT INTO `teacher` VALUES ('7ap30l', '1ci630', 'FEMALE', '1900-01-19', '294929198602248372', '18532439308', 'f60M8y', 'BIOLOGY', 18, 26, 'NO');
INSERT INTO `teacher` VALUES ('7E073G', 'XPE6Kp', 'FEMALE', '1900-01-19', '760186198907307719', '15341336821', 'lT4WCk', 'BIOLOGY', 13, 50, 'NO');
INSERT INTO `teacher` VALUES ('7n32Q3', 'evU2Ys', 'MALE', '1900-01-19', '245305197001174264', '15010024658', '7tA7r7', 'BIOLOGY', 25, 48, 'NO');
INSERT INTO `teacher` VALUES ('857vJ5', '7u5h41', 'MALE', '1900-01-19', '323398199609263861', '14751946637', '27R1v1', 'DEFAULT', 19, 42, 'YES');
INSERT INTO `teacher` VALUES ('8j1021', '60gt41', 'FEMALE', '1900-01-19', '758438199503171164', '14150135144', 'Bc330r', 'DEFAULT', 13, 52, 'YES');
INSERT INTO `teacher` VALUES ('8mx338', 'H0f4Qk', 'FEMALE', '1900-01-19', '744040199006147746', '16679047315', 'HY24Ha', 'BIOLOGY', 4, 22, 'NO');
INSERT INTO `teacher` VALUES ('a55s36', '4yAtq2', 'FEMALE', '1900-01-19', '801428197608181041', '13730065520', 'df7s5W', 'BIOLOGY', 12, 25, 'NO');
INSERT INTO `teacher` VALUES ('b1dQD0', 'x3T246', 'FEMALE', '1900-01-19', '698579197203127181', '17503283561', 'HdWS7U', 'DEFAULT', 9, 33, 'YES');
INSERT INTO `teacher` VALUES ('b4G6my', 'gc384D', 'FEMALE', '1900-01-19', '449429198508136957', '14566921571', '848xN7', 'DEFAULT', 17, 39, 'YES');
INSERT INTO `teacher` VALUES ('BnN62b', '3O1506', 'MALE', '1900-01-19', '259359197802277144', '13631160342', '73o5I7', 'DEFAULT', 23, 42, 'YES');
INSERT INTO `teacher` VALUES ('c41H20', 'dn2Tk1', 'MALE', '1900-01-19', '837468199209134340', '18311697277', 't35aj7', 'DEFAULT', 20, 20, 'YES');
INSERT INTO `teacher` VALUES ('cB014t', '867yn1', 'MALE', '1900-01-19', '204521198807237085', '16603232505', '3qpV70', 'DEFAULT', 17, 49, 'YES');
INSERT INTO `teacher` VALUES ('E8e6n3', 's7673O', 'MALE', '1900-01-19', '500204197205134342', '15821781559', 'Q47ty3', 'BIOLOGY', 21, 29, 'NO');
INSERT INTO `teacher` VALUES ('gocX17', 'fC11b5', 'MALE', '1900-01-20', '658534200003282506', '18576489343', '500VE4', 'CHEMISTRY', 5, 42, 'YES');
INSERT INTO `teacher` VALUES ('I018N3', 'x5s4E0', 'MALE', '1900-01-19', '786884199204292568', '15993440674', '04X584', 'BIOLOGY', 3, 39, 'NO');
INSERT INTO `teacher` VALUES ('J34W34', 'wer05R', 'FEMALE', '1900-01-19', '381283199008256358', '14873224671', '4q26v1', 'CHEMISTRY', 14, 50, 'YES');
INSERT INTO `teacher` VALUES ('K038J6', '53cy3E', 'MALE', '1900-01-19', '788144197401186633', '18650663697', 'TerY88', 'DEFAULT', 24, 22, 'YES');
INSERT INTO `teacher` VALUES ('KH2HYA', '1wQ0Y5', 'FEMALE', '1900-01-19', '533969198606166824', '16934562344', '4H234R', 'BIOLOGY', 24, 35, 'NO');
INSERT INTO `teacher` VALUES ('L2RHgq', 'd17m27', 'FEMALE', '1900-01-19', '348757198006189629', '18468914797', 'bAbBby', 'DEFAULT', 21, 53, 'YES');
INSERT INTO `teacher` VALUES ('M2Vy1c', '21W553', 'FEMALE', '1900-01-19', '749304198108295447', '17839059124', '67U513', 'DEFAULT', 13, 27, 'YES');
INSERT INTO `teacher` VALUES ('Mc513o', 'I6n7RS', 'MALE', '1900-01-19', '832398198502123068', '16464597830', '846nB8', 'BIOLOGY', 10, 57, 'NO');
INSERT INTO `teacher` VALUES ('N335O4', '3Jo730', 'FEMALE', '1900-01-19', '462032199402271035', '16032682974', '2F8374', 'CHEMISTRY', 23, 48, 'YES');
INSERT INTO `teacher` VALUES ('NIB6JJ', 'fTU0jk', 'MALE', '1900-01-19', '351221199707156569', '18536585243', '674glA', 'CHEMISTRY', 20, 44, 'YES');
INSERT INTO `teacher` VALUES ('NyB0C3', '23Jn13', 'MALE', '1900-01-20', '232536200008176902', '16473601250', '7H71t5', 'CHEMISTRY', 12, 44, 'YES');
INSERT INTO `teacher` VALUES ('P2j3fw', 'x56SP8', 'FEMALE', '1900-01-19', '377547199303295215', '18871647269', 'PG7uW7', 'DEFAULT', 15, 54, 'YES');
INSERT INTO `teacher` VALUES ('p5D05w', 'C0wA6X', 'MALE', '1900-01-19', '728660199505273025', '17957054734', '68i5d5', 'DEFAULT', 5, 44, 'YES');
INSERT INTO `teacher` VALUES ('PU7g87', 'L0513l', 'FEMALE', '1900-01-19', '769931198003162932', '16618535330', 'Aq66wC', 'DEFAULT', 25, 32, 'YES');
INSERT INTO `teacher` VALUES ('q037M2', 'odq51l', 'FEMALE', '1900-01-19', '713864198406224377', '13867303644', '4O8t88', 'BIOLOGY', 6, 42, 'NO');
INSERT INTO `teacher` VALUES ('Q1DPQs', 'xYugM7', 'FEMALE', '1900-01-19', '877033199805129382', '17980339461', '7300eP', 'DEFAULT', 4, 23, 'YES');
INSERT INTO `teacher` VALUES ('QG3clA', '6stN76', 'FEMALE', '1900-01-19', '661476197107174488', '17003712672', 'LN76oE', 'DEFAULT', 17, 54, 'YES');
INSERT INTO `teacher` VALUES ('SA1220', 'J2JCes', 'MALE', '1900-01-19', '795836198104186553', '18002412190', '27S2Iq', 'BIOLOGY', 3, 59, 'NO');
INSERT INTO `teacher` VALUES ('Sq825v', '2M73Tj', 'FEMALE', '1900-01-19', '525643197201251127', '15560973406', 'FgD3t7', 'CHEMISTRY', 20, 53, 'YES');
INSERT INTO `teacher` VALUES ('Uli76e', '8124r5', 'MALE', '1900-01-19', '411649197107124539', '18693453331', 'Yb72D2', 'CHEMISTRY', 7, 55, 'YES');
INSERT INTO `teacher` VALUES ('uU7uX0', 'YF37h0', 'FEMALE', '1900-01-20', '397473200006116110', '14478806772', 'IV76D3', 'DEFAULT', 23, 43, 'YES');
INSERT INTO `teacher` VALUES ('V06427', '60580h', 'MALE', '1900-01-20', '389191200009199718', '18467219673', '540J2V', 'DEFAULT', 5, 57, 'YES');
INSERT INTO `teacher` VALUES ('w4326u', 'TKVqKa', 'FEMALE', '1900-01-19', '457407198609149641', '18673548453', '76054X', 'DEFAULT', 16, 36, 'YES');
INSERT INTO `teacher` VALUES ('w5U8i5', '58RO1k', 'MALE', '1900-01-19', '841263199001199222', '13714512831', '4kQ7j6', 'BIOLOGY', 9, 57, 'NO');
INSERT INTO `teacher` VALUES ('wCkApg', 'F78qF4', 'MALE', '1900-01-19', '160774197105297014', '17341208092', '356gS0', 'DEFAULT', 12, 49, 'YES');
INSERT INTO `teacher` VALUES ('Wn7q51', '330Sa7', 'FEMALE', '1900-01-19', '805718199005192442', '14413209594', 'WKh7v8', 'DEFAULT', 4, 49, 'YES');

SET FOREIGN_KEY_CHECKS = 1;
