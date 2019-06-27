/*
 Navicat MySQL Data Transfer

 Source Server         : com.mysql.cj.jdbc.Driver
 Source Server Type    : MySQL
 Source Server Version : 50726
 Source Host           : 47.100.195.116:3306
 Source Schema         : course_sys

 Target Server Type    : MySQL
 Target Server Version : 50726
 File Encoding         : 65001

 Date: 27/06/2019 22:38:30
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for account
-- ----------------------------
DROP TABLE IF EXISTS `account`;
CREATE TABLE `account` (
  `user_name` varchar(255) NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_type` enum('PARENT','EDUORG','TEACHER','SYSADMIN') DEFAULT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of account
-- ----------------------------
BEGIN;
INSERT INTO `account` VALUES ('', '', '13905287574', 'heheheh@qqq.com', 'PARENT');
INSERT INTO `account` VALUES ('0eduorg', '000000', '17574965307', '123456@qq.com', 'EDUORG');
INSERT INTO `account` VALUES ('0parent0', '000000', '13333333333', '123456@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('0parent1', '123456', '13909090909', '1fadverw@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('0parent2', '123456', '13980088008', 'lasdfgglaj@outlook.com', 'PARENT');
INSERT INTO `account` VALUES ('0teacher', '000000', '17574965307', '123456@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('0teacher1', '000000', '17574965307', '123456@qq.com', 'TEACHER');
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
INSERT INTO `account` VALUES ('1YSj6O', '813058', '17574965307', '123456@qq.com', 'TEACHER');
INSERT INTO `account` VALUES ('21160101', '123456', '13388886666', '12Ha5J@mails.jlu.edu.cn', 'PARENT');
INSERT INTO `account` VALUES ('233Wi8', '802028', '17301007362', '1YIA52@126.com', 'PARENT');
INSERT INTO `account` VALUES ('2431U4', '739950', '14626885342', '77sgUt@163.com', 'PARENT');
INSERT INTO `account` VALUES ('26O4f5', '460195', '14740079398', 'Me25rC@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('26T6f6', '691011', '15649406961', '106ln8@sina.com.cn', 'EDUORG');
INSERT INTO `account` VALUES ('27gdp3', '813058', '17574965307', '123456@qq.com', 'TEACHER');
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
INSERT INTO `account` VALUES ('43p581', '333313', '17349236580', '1P2Dp5@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('452GW6', '768147', '18045264496', '2tu4R3@126.com', 'PARENT');
INSERT INTO `account` VALUES ('454yqG', '585825', '15775390009', '5gpR5H@sina.com.cn', 'PARENT');
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
INSERT INTO `account` VALUES ('7H6DT3', '650039', '17959590132', '17959590132', 'EDUORG');
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
INSERT INTO `account` VALUES ('sysadmin1', '111', '13222112211', 'Ymq4gT@gmail.com', 'SYSADMIN');
INSERT INTO `account` VALUES ('sysadmin2', '222', '13222112211', 'Ymq4gT@gmail.com', 'SYSADMIN');
INSERT INTO `account` VALUES ('sysadmin3', '333', '17353179968', 'yUWDLY@126.com', 'SYSADMIN');
INSERT INTO `account` VALUES ('t0Hih6', '502331', '16264050566', 's3jGS3@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('t0i8u7', '702114', '18847807996', '565ogO@qq.com', 'PARENT');
INSERT INTO `account` VALUES ('T6hX68', '604276', '18551753408', 'd2b4JY@163.com', 'PARENT');
INSERT INTO `account` VALUES ('tDp13m', '526293', '17337879624', '534uFs@yahoo.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('tx3D17', '565161', '13616529524', 'Nl220n@sina.com.cn', 'PARENT');
INSERT INTO `account` VALUES ('u1704R', '306007', '17224557644', 'ACf568@sina.com.cn', 'EDUORG');
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
COMMIT;

-- ----------------------------
-- Table structure for course
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `course_id` varchar(255) NOT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `time` varchar(255) DEFAULT NULL,
  `place` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `teach_id` varchar(255) DEFAULT NULL,
  `age_recommend` decimal(10,0) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `course_field` varchar(255) DEFAULT NULL,
  `homework` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`),
  KEY `course_teacher_id` (`teach_id`),
  CONSTRAINT `course_teacher_id` FOREIGN KEY (`teach_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
BEGIN;
INSERT INTO `course` VALUES ('111', '软件工程课程设计', '2019-10-24 13:00:00', '计算机楼B212', '编写APP', '0eduorg', 22, 66666, 'CHEMISTRY', '需求分析文档');
INSERT INTO `course` VALUES ('112', '软件工程', '2019-10-24 13:00:00', '计算机楼A212', 'C++面向对象程序设计', '0eduorg', 39, 9999, 'BIOLOGY', '编写贪吃蛇小游戏，周二上课交');
INSERT INTO `course` VALUES ('113', '编译原理', '2019-05-24 18:00:00', '逸夫楼第三阶梯', 'LL1', '0eduorg', 18, 296, 'DEFAULT', '编写LL1');
INSERT INTO `course` VALUES ('121', '计算机组成', '2019-03-28', '逸夫楼五阶', 'CPU', '0teacher', 20, 9888, 'MATH', '设计CPU');
INSERT INTO `course` VALUES ('122', '微机接口', '2019-03-29', '逸夫楼三阶', '8251的使用', '0teacher', 20, 9898, 'MATH', '用8251实现跑马灯');
INSERT INTO `course` VALUES ('123', '微机原理', '2019-03-22', '逸夫楼四阶', '8031', '0teacher', 20, 9000, 'MATH', '用8031实现跑马灯');
INSERT INTO `course` VALUES ('124', '离散数学', '2019-03-26', '逸夫楼四阶', '群、环', '0teacher', 20, 7008, 'MATH', '书后习题P81-3.');
INSERT INTO `course` VALUES ('125', '离散数学', '2019-03-27', '逸夫楼四阶', '最短路', '0teacher', 20, 2333, 'MATH', '书后习题P82-34');
INSERT INTO `course` VALUES ('127', '组合数学', '2019-03-27', '逸夫楼12阶', '计数问题', '0teacher', 20, 2333, 'MATH', '书后习题P82-34');
INSERT INTO `course` VALUES ('128', '组合数学', '2019-03-27', '逸夫楼13阶', '涂色问题', '0teacher', 20, 2333, 'MATH', '书后习题P12-20');
INSERT INTO `course` VALUES ('130', '微积分', '2019-04-11', '李四光楼304', '一元积分学', '0teacher1', 19, 2111, 'MATH', 'P31-5');
INSERT INTO `course` VALUES ('131', '微积分', '2019-04-14', '李四光楼304', '二元积分学', '0teacher1', 19, 2211, 'MATH', 'P35-5');
INSERT INTO `course` VALUES ('133', '线性代数', '2019-04-15', '李四光楼502', '矩阵变换', '0teacher1', 19, 3411, 'MATH', 'P65-18');
INSERT INTO `course` VALUES ('134', '概率论', '2019-04-18', '经信C502', '后验概率', '0teacher1', 19, 2411, 'MATH', 'P45-25');
COMMIT;

-- ----------------------------
-- Table structure for coursecomment
-- ----------------------------
DROP TABLE IF EXISTS `coursecomment`;
CREATE TABLE `coursecomment` (
  `course_id` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `score` decimal(10,0) DEFAULT NULL,
  `picture_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`course_id`,`publisher`),
  KEY `pcomment_publisher` (`publisher`),
  KEY `pcomment_picture_id` (`picture_id`),
  CONSTRAINT `pcomment_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pcomment_picture_id` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`picture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pcomment_publisher` FOREIGN KEY (`publisher`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of coursecomment
-- ----------------------------
BEGIN;
INSERT INTO `coursecomment` VALUES ('112', '0parent0', '这个课程非常好，老师认真负责，孩子学会了好多东西', 4, 'NO_PIC');
INSERT INTO `coursecomment` VALUES ('130', '0parent1', '课堂很乱，秩序不好，有人说话', 2, 'NO_PIC');
INSERT INTO `coursecomment` VALUES ('131', '0parent1', '课程很好，安排很满', 5, 'NO_PIC');
INSERT INTO `coursecomment` VALUES ('133', '0parent1', '希望课间留些思考题', 1, 'NO_PIC');
INSERT INTO `coursecomment` VALUES ('134', '0parent1', '课程容量太小', 1, 'NO_PIC');
COMMIT;

-- ----------------------------
-- Table structure for eduorg
-- ----------------------------
DROP TABLE IF EXISTS `eduorg`;
CREATE TABLE `eduorg` (
  `user_name` varchar(255) DEFAULT NULL,
  `org_code` varchar(255) DEFAULT NULL,
  `org_address` varchar(255) DEFAULT NULL,
  `org_contact` varchar(255) DEFAULT NULL,
  `org_introduction` text,
  `edu_field` varchar(255) DEFAULT NULL,
  `edu_age` decimal(10,0) DEFAULT NULL,
  `qualified` enum('YES','CHECK','NO') DEFAULT NULL,
  KEY `user_name_eduorg` (`user_name`) USING BTREE,
  CONSTRAINT `user_name_eduorg` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of eduorg
-- ----------------------------
BEGIN;
INSERT INTO `eduorg` VALUES ('o7At16', '202', '山东大学', '15352556930', '6Kj4S5', 'DEFAULT', 22, 'YES');
INSERT INTO `eduorg` VALUES ('dT5Ft2', '204', '北大', '16289239361', 's2oU62', 'BIOLOGY', 22, 'YES');
INSERT INTO `eduorg` VALUES ('s5vnyr', '205', '清华同方', '18750707148', '81uJI8', 'DEFAULT', 17, 'YES');
INSERT INTO `eduorg` VALUES ('41814a', '207', '新东方', '17863057066', '613255', 'BIOLOGY', 29, 'YES');
INSERT INTO `eduorg` VALUES ('3470y6', '208', '蓝翔', '18045197832', 'F52cDf', 'DEFAULT', 25, 'YES');
INSERT INTO `eduorg` VALUES ('7H6DT3', '209', '兰强大学', '13426607079', '2H38j2', 'CHEMISTRY', 16, 'YES');
INSERT INTO `eduorg` VALUES ('u1704R', '210', '厨师学校', '17224557644', '73P7T7', 'BIOLOGY', 15, 'YES');
INSERT INTO `eduorg` VALUES ('4BIk28', '211', '吉林大学', '18705038122', 'K515j2', 'DEFAULT', 11, 'YES');
INSERT INTO `eduorg` VALUES ('67l758', '212', '山东大学', '16990122534', 'xw3j7i', 'CHEMISTRY', 17, 'YES');
INSERT INTO `eduorg` VALUES ('3mE36I', '213', '华侨大学', '13359167048', '28xvf3', 'BIOLOGY', 15, 'YES');
INSERT INTO `eduorg` VALUES ('GKwe26', '215', '清华同方', '15049296736', 'c05pI6', 'CHEMISTRY', 4, 'YES');
INSERT INTO `eduorg` VALUES ('8D1ED7', '216', '吉大纱窗', '17903989834', '308mau', 'BIOLOGY', 16, 'YES');
INSERT INTO `eduorg` VALUES ('C572iT', '218', '蓝翔', '14092719879', '4LPnR7', 'CHEMISTRY', 26, 'NO');
INSERT INTO `eduorg` VALUES ('F76F01', '219', '兰强大学', '17109975053', 'n8r0LQ', 'BIOLOGY', 26, 'YES');
INSERT INTO `eduorg` VALUES ('H2123D', '220', '厨师学校', '15692304242', 'i7C6N8', 'DEFAULT', 10, 'YES');
INSERT INTO `eduorg` VALUES ('BoA26j', '221', '吉林大学', '18915094546', '72k6g0', 'CHEMISTRY', 16, 'YES');
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
INSERT INTO `eduorg` VALUES ('0eduorg', '201906272020590eduorg', '河南省新乡市金穗大道与和平路交叉口向西500米路南(星海假日王府楼下）', '13333339746', '11巴布阅读课程突破了传统英语的授课方式，以英文绘本与分级阅读为主导贯穿幼儿综合英语课程、自然拼读课程、少儿综合英语课程及学科英语国际课程，独家研发读前引导、读中思考、读后写作、创意活动及评估的五步阅读教学法。', 'MATH', 12, 'YES');
COMMIT;

-- ----------------------------
-- Table structure for news
-- ----------------------------
DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `news_id` varchar(255) NOT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  `time` datetime DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `course_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`news_id`) USING BTREE,
  KEY `news_publisher` (`publisher`),
  KEY `news_course_id` (`course_id`),
  CONSTRAINT `news_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `news_publisher` FOREIGN KEY (`publisher`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of news
-- ----------------------------
BEGIN;
INSERT INTO `news` VALUES ('20190627202710sysadmin1', 'sysadmin1', '2019-06-27 20:27:10', '软件测试公告', '本软件正式开始第一轮阿法测试！', NULL);
INSERT INTO `news` VALUES ('201906272101280eduorg', '0eduorg', '2019-06-27 21:01:28', '明天逸夫九阶上课', '2016级计科五班666小组发布测试', NULL);
INSERT INTO `news` VALUES ('201906272109530eduorg', '0eduorg', '2019-06-27 21:09:53', '周日考试占用考场停课一次', 'C++课由于高考占用教室，周日停课一次', NULL);
INSERT INTO `news` VALUES ('201906272146120teacher1', '0teacher1', '2019-06-27 21:46:12', '明天结课划重点', '大家注意一下，明天按时上课别迟到', NULL);
INSERT INTO `news` VALUES ('201906272147030teacher1', '0teacher1', '2019-06-27 21:47:03', '周六补上端午的课', '家长请提醒孩子按时上课', NULL);
INSERT INTO `news` VALUES ('201906272148020teacher1', '0teacher1', '2019-06-27 21:48:02', '最近天气转冷', '请提醒孩子注意添衣', NULL);
INSERT INTO `news` VALUES ('201906272148400teacher1', '0teacher1', '2019-06-27 21:48:40', '家长监督孩子写作业', '最近作业完成情况很差，请家长检查作业并签字', NULL);
INSERT INTO `news` VALUES ('201906272149290teacher1', '0teacher1', '2019-06-27 21:49:29', '课程要求', '每周都会留作业，请监督孩子认真完成', NULL);
INSERT INTO `news` VALUES ('201906272155010teacher1', '0teacher1', '2019-06-27 21:55:01', '恭喜陆子旭同学小测验满分', '恭喜陆子旭同学小测验满分', NULL);
INSERT INTO `news` VALUES ('20190627215618sysadmin1', 'sysadmin1', '2019-06-27 21:56:18', '谷歌推出地理位置历史自动删除功能 ', '谷歌今天宣布推出地理位置历史自动删除的功能。\n在此之前，删除地理位置信息需要依赖于用户手动删除，如果不手动删除，谷歌上的位置跟踪、网页与应用的活动等历史记录会长久保存。\n\n', NULL);
INSERT INTO `news` VALUES ('201906272156470teacher1', '0teacher1', '2019-06-27 21:56:47', '表扬庄浩华同学值日认真负责', '表扬庄浩华同学值日认真负责，清理地上的垃圾', NULL);
INSERT INTO `news` VALUES ('201906272157500teacher1', '0teacher1', '2019-06-27 21:57:50', '百度网盘不限速啦', '欢迎大家来体验', NULL);
COMMIT;

-- ----------------------------
-- Table structure for parent
-- ----------------------------
DROP TABLE IF EXISTS `parent`;
CREATE TABLE `parent` (
  `user_name` varchar(255) NOT NULL,
  `child_name` varchar(255) DEFAULT NULL,
  `child_birthday` date DEFAULT NULL,
  `child_gender` enum('MALE','FEMALE') DEFAULT NULL,
  `parent_name` varchar(255) DEFAULT NULL,
  `parent_contact` varchar(255) DEFAULT NULL,
  `course_field` varchar(255) DEFAULT NULL,
  `course_cost` decimal(10,0) DEFAULT NULL,
  `course_place` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  CONSTRAINT `user_name_parent` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of parent
-- ----------------------------
BEGIN;
INSERT INTO `parent` VALUES ('', '李语尧', '1997-12-25', 'MALE', '陆子旭', '13905287474', 'DEFAULT', 1000, NULL);
INSERT INTO `parent` VALUES ('0parent0', '李四', '2001-01-01', 'MALE', '李三', '13333333333', 'MATH', 500, '随便');
INSERT INTO `parent` VALUES ('0parent1', '乔可可', '2010-02-12', 'FEMALE', '陆子旭', '13909090909', 'CHEMISTRY', 2033, '吉大');
INSERT INTO `parent` VALUES ('0parent2', '李倩', '2009-01-23', 'FEMALE', '李语尧', '13980088008', 'BIOLOGY', 1200, '北京二环');
INSERT INTO `parent` VALUES ('10en30', '王一涵', '2017-01-15', 'FEMALE', '关敬萱', '17574965307', 'BIOLOGY', 1335, NULL);
INSERT INTO `parent` VALUES ('133gH1', '韩畅', '2002-01-01', 'MALE', '尹子依', '13487984141', 'DEFAULT', 4838, NULL);
INSERT INTO `parent` VALUES ('1471k2', '陈硕', '2017-06-30', 'MALE', '孙玉冰', '14901264159', 'BIOLOGY', 3082, NULL);
INSERT INTO `parent` VALUES ('1yBrE1', '米泉莹', '2002-08-20', 'FEMALE', '赵明轩', '13534576505', 'BIOLOGY', 3000, NULL);
INSERT INTO `parent` VALUES ('21160101', '张三', '1999-06-27', 'MALE', '李四', '13388886666', 'DEFAULT', 1000, NULL);
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
COMMIT;

-- ----------------------------
-- Table structure for pictures
-- ----------------------------
DROP TABLE IF EXISTS `pictures`;
CREATE TABLE `pictures` (
  `picture_id` varchar(255) NOT NULL,
  `pic_blob` mediumblob,
  PRIMARY KEY (`picture_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of pictures
-- ----------------------------
BEGIN;
INSERT INTO `pictures` VALUES ('1561567875263', 0xFFD8FFE000104A46494600010101006000600000FFE100224578696600004D4D002A00000008000101120003000000010001000000000000FFEC00114475636B7900010004000000640000FFE1038B687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D304D7043656869487A7265537A4E54637A6B633964223F3E0D0A3C783A786D706D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D70746B3D2241646F626520584D5020436F726520352E352D633031342037392E3135313438312C20323031332F30332F31332D31323A30393A31352020202020202020223E0D0A093C7264663A52444620786D6C6E733A7264663D22687474703A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461782D6E7323223E0D0A09093C7264663A4465736372697074696F6E207264663A61626F75743D222220786D6C6E733A786D704D4D3D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F73547970652F5265736F75726365526566232220786D6C6E733A786D703D22687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F2220786D704D4D3A4F726967696E616C446F63756D656E7449443D22786D702E6469643A32306365323733342D303234662D353334642D623631332D3033323030653430343362372220786D704D4D3A446F63756D656E7449443D22786D702E6469643A41323737353042393231363731314535393938384336323641363039444444372220786D704D4D3A496E7374616E636549443D22786D702E6969643A41323737353042383231363731314535393938384336323641363039444444372220786D703A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70204343202857696E646F777329223E0D0A0909093C786D704D4D3A4465726976656446726F6D2073745265663A696E7374616E636549443D22786D702E6969643A37636266666566372D363833352D303134352D396463632D363362306263616564333862222073745265663A646F63756D656E7449443D22786D702E6469643A32306365323733342D303234662D353334642D623631332D303332303065343034336237222F3E0D0A09093C2F7264663A4465736372697074696F6E3E0D0A093C2F7264663A5244463E0D0A3C2F783A786D706D6574613E0D0A3C3F787061636B657420656E643D2777273F3EFFDB0043000201010201010202020202020202030503030303030604040305070607070706070708090B0908080A0807070A0D0A0A0B0C0C0C0C07090E0F0D0C0E0B0C0C0CFFDB004301020202030303060303060C0807080C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC000110800A400A403012200021101031101FFC4001F0000010501010101010100000000000000000102030405060708090A0BFFC400B5100002010303020403050504040000017D01020300041105122131410613516107227114328191A1082342B1C11552D1F02433627282090A161718191A25262728292A3435363738393A434445464748494A535455565758595A636465666768696A737475767778797A838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE1E2E3E4E5E6E7E8E9EAF1F2F3F4F5F6F7F8F9FAFFC4001F0100030101010101010101010000000000000102030405060708090A0BFFC400B51100020102040403040705040400010277000102031104052131061241510761711322328108144291A1B1C109233352F0156272D10A162434E125F11718191A262728292A35363738393A434445464748494A535455565758595A636465666768696A737475767778797A82838485868788898A92939495969798999AA2A3A4A5A6A7A8A9AAB2B3B4B5B6B7B8B9BAC2C3C4C5C6C7C8C9CAD2D3D4D5D6D7D8D9DAE2E3E4E5E6E7E8E9EAF2F3F4F5F6F7F8F9FAFFDA000C03010002110311003F00FDFCA28A2800A28A2800A28CE2BE5CFDBD7FE0AFDF05FF00E09F2B2E9BE28D6A5D7BC6DE5878BC29A104BAD4C060A55A7CB2C76A855C3033BA1750C635908C577E5B95E2F30C42C2E069CAA4DECA2AEFD7C92EADE8BA98D7C453A30752AC9452EACFA8EB96F8AFF1CBC13F01B405D5BC73E30F0BF82F4B76D8B79AEEAB069D6EC78180F332AE791DFB8AFC22F8E5FF0005E6FDA8BF6F3F1B1F05FC1FD16F3C171DFAB343A3782ECA5D63C413C38019A5BBF2CBAA29C37990456FB013B9C8E6A7F837FF0006E2FED29FB507893FE129F8A9E20D2BC1375AA366F2FF00C49A9C9E22F114A33C3BA46ECB264127125DABE78201271FAAD3F0A68E5F4D56E28C7D3C2DF5E45EFD46BD13FC63CE8F9D7C452AEF972FA32A9E7F0C7EF7FF0000FD2BF899FF0007077ECA7F0DE79EDE3F88973E25BD818030E87A15F5DA3839E567F296DD87D25CF35E3BAA7FC1D53F016D26923B5F00FC68BCDA70920D374B8E27FF00BEB500E3F15AA1F0A3FE0D57F841E1DB5B793C65F10FE22F8AAFA3FF005A9606D349B19B8FF9E7E54D32F39E93FF008D7B4E8FFF0006EC7EC8DA659C71CDF0D754D466450AD3DC78C35A0F21F52B1DDAA027AFCAA3AF61C516F0D309EEB789AFE6B952F927ECDFDF71AFEDEA9AFEEE1E5ABFF33C6ED7FE0EB3F81E58FDA3E1BFC6755EDE4D9E9321FC775FAFF335DE7C3BFF008398BF661F1915FED8BDF1E782C3672757F0DC971B71D33F616B93CF4E33EF8AECA4FF00837A3F641742A7E13DD2E7BAF8C75E53F98BDCD703F11BFE0D8BFD9AFC6458E8D37C47F05F3955D2B5F5B951C74FF4D8AE0907AF5CFA1147D63C33AFEE7B3C4D2F3F75DBFF00269FFE921CB9F475E6A72F2F7BFE01F547C05FF828AFC0AFDA76EAD6D7C0BF15FC0FAF6A979FEA74B5D4E3B7D4DFA73F6494A4E06580C94EBC75CD7B457E22FED01FF06A178B6C2CAE26F871F14BC39E2656276699E27D324D359538E3ED3099D6463CF0608C74C9E491E0F1FC5BFDB9FF00E08CD7D6E75B7F1C693E0FB195214835D3FF00091F84A64DD88E159D5E48ED439E4470CD6F31E780770AB8F86F9266DFF24D66719CFA53AA9C24FC93B26DFA42DE7627FB771787FF007FC3B4BF9A3EF2FF0081F79FD19515F983FB0C7FC1CD1F0EBE335D58F87FE33692BF0BB5E9CAC4BAD432B5D787AE5CED197723CDB3CB127F7A1E2455CB4E3A57E9A689AE59789B46B3D4B4DBCB5D434FD4204B9B5BAB6956586E62750C9223A92ACACA410C090410457E6D9FF0C66992D6F6199D174DBD9BD62FFC32574FE4F4EA7BB82CC30F8B87B4C3C9497E2BD56E8B545145782760514514005145140051451400552F1278934FF07787AFF57D5EFECF4BD274BB792F2F6F6F27582DECE08D4BC92C92310A88AA0B3331000049200A4F12F8974DF06787350D6358D42C749D2749B692F2FAFAF27582DACE08D4BC92C92310A888A0B3331000049200AFC03FF82A1FFC1513C79FF0576F8EBA6FC15F82BA6EB979F0F6F7535B4D2748B48CC37BE3ABA8D8BADDDD2BEDF2AD23F2CCD1C52954896337170559156D7ECF82F82F15C438A708354E8D3D6A547F0C23F3B2BD93B2BAD9B6D24DAF2F35CD69E0A9F34B593D2315BB7FD6EFF5B23D4BFE0A7BFF000713F883E2FEAF3FC37FD9B24D534BD26FA4FECD9BC5B0DB3FF6C6B72CAC235874C871E640AD9DAB295FB43B483CA584A2C9253FF8278FFC1B61E28F8CA6DBC71FB436A5AA78574BD4A5FED0FF008462D66DDAEEA65DCBB3DFDC9DC2DBCC3CB22EF9D84A773DBC8A457DC1FF00049EFF008227783BFE09EDA4D8F8B3C49F60F187C629ADD85C6B214B59E85E6295920D395C0651B5991AE1944B282FC448E611EF7E2EF8F9FF000D19F0FBE2E785FE03F8F3C1EBF15BC07349A14CDAA5A4B756BA26A9E58911278815628C0B20990491A48926526682580FDEE3B8E30D96D1964FC170F65495954C434DCE577CBCCDD9B8C6EF476BEBEE463D7C7A393D4C44D627367CD2FB305F0AD36B757F87A9B7F03BE06FC26FD8B7C39A3781FC0FA2F84FC076FADCC61B1B0B7290DD6B73C5033B12CE7CEBB9D618DDD9DD9E4D91B331C0247CE7FF000503FF0082ABF8E7F668FDA3EC7E0DFC2DF811E28F8ABF10355D0A3F10432453ECB082CDE6920FB4110A4AE52399363997ECEAA5D3E7F9D0B7CFBFB4C7ED9F3FC72FD9B7C0FF001E354D01FC1FF1D3F633F88162DF12FC2F0A17BFD3AC2E9C58EA915B8CB9FB25E42EB2A4A19D0C70380F26C663EA1FF05CA4F187C247F827FB42FC2AD5349D3BC53E11D6A6F0A49A95EAAC9A5C7A7EBB08B74BABB619DD04370B6E5321955A7DFB5B055BC1CAF8752CD28FF6B255A75BDAC5AA92928FB68AE685E717CD284D4A93524F553BABA4AFE962314D5097B0F754795E895F95EF64D593567A791F46FF00C265F16FC5FF00F04D7D7B58F18E910FC37F8CF37827536BAB5D32E219A3D23544B69D639A0759678F6EF549501924DA182B1620D7E75FECF3E2AFDA2BF67DD13F657FDA075EFDA2F5EF895E17F8EFE2ED07C29AA782F55B3923B7B28B5757462AC67759248190B068E2898B46A7250BA37E86FF00C13E3E077C70F855F077C4161FB427C47D1FE2778A7C41A9BDE89B4FB430C1A6C0F6F144D6A8E23855A3DD1B380B6F16D323FDEDC36FE3AFEC7BFB38E97FB227C23FD967F6A3F1B4DA878D7C0FA2F8BAF3C33E33D3357BB964B6F87D750EA7716765AB5AAA00238A16B78A574983E64D9B06E92330FB5C27430CE18FC3F3529275145285353551CE9D66A9539544A7057825195D3BDB56DABF2E6129F3529DA5B5DDE56E5B38EAD2D1E8F55B6FD0FD21FF0082CEFC60F133F8FBE02FC13D07E2ADC7C0DD3FE336B1A98D5FC716F3FD9E7D3E1D3ED63962B4497CD85A36BAB89E08C1496372C1172CACD1C9E95FF04B2B6F8BFF000BFF00672F18786FE3BEA5AA6A9A8FC3BF176A9A368FE26D64EDB8F1268502C4F6FA948CD248C55F7CC0191CB858C0666605DBCC7FE0A6179F06FF006BEFDA834DFD977E3469F0F86F4D9FC16FF10341F1D1F1045A6DC595FADD4B68F656E92C4637636EB34CE246742884988945913E7AF84DFB40F893E197FC1B73F1021875ABCF1A4B25FEADF0D7C05A93178E5D6EC6E751FECBB57B7DEECC1516598C69B8F9496EB18E2315E7D0CAE58BE1EC2E02105094EA534EF08DDBAB3A9CB561516BF0AE49C24F45052496ACD5D6E4C64EA377493D9BD3952BC5C76DF54D77B763EB6FD9C3FE0A5DAAEAFF00F04ACBBFDA6BE26787BECF6663D4757B4D1BC3F612FDA8E9C97B25BD92B2C92B832C88B1BBCA5922024DE446AAD8EBBF63DFF82AAFC04FF8281D8C7A57843C5D60DAF6A5032CBE14D763165AAC8A6367911609095B9558C3176B76963519CB551FDA5FE2659FFC1297FE09612368BFE99A87C3BF09D9785FC3102C3E6C9A96A7E5476564A22CEE9374C51DD572DB04879C1AA7FF0004E7FF0082577C3FFD8CFE1EFC3FD7AF3C33A6DC7C65D23C36FA7EBDE273234B757D757722DCDF33BE42CCC26CC71CCEA655854461C21653F3F89A3924F0389C7CE9CE0E7566A872B56B257E5945ABDA1785E4A577CDB68EFD719625558524D34A2B9AEB5BF74D3EBAE96E8788FEDEFF00F06E0FC27FDA2ACEFB5DF853F66F847E33656916DACA0DDE1DD41F030925A2E3ECD9DA06FB6DAABB99DA199B02BF38FE0D7ED45FB4CFFC1027E3A1F05789749BA7F0BDC4ED712785B529DA5D075D843E64BAD2EEC2B085DBCCCB3C4386957ED1033AAA2FE987ECDBFF00056DD33C07F04BE2F7C5CF8C7E32F33C1BAA7C4ED6343F85DA45AD9472EA5AD69B6AD14112594718125CB4B31607CCC889B3BA454236FD69F1FBF672F877FB7E7ECF69E1DF1D78766D63C33AFC116A56B1DFD94DA7EA3A64AD19314E8B2AA5C5A5D22C8C0865491773C6EB82E87ECB05C6199E510FEC9E29A5F5BC149F2BE64DB4D257509BB37285ECD37EEB568CA3B9E557CA686225F59CBE5ECEAEFA6CFF00C49747DFE7A98BFB0B7FC140FE1BFF00C1433E163F89BE1FEA923CD60638B57D1AF5561D4F4399C12A93C409186DADB6442D1BEC7DACC5580F6EAFE737F6AAFD92BE34FF00C100BF6B6D13C7DE06D72EAF3C317D3BDB681E2668375A6AB0B7EF25D1B56814AAF98CB1EE280AACCB109E068E58585B7ED6FF00C1373FE0A35E0DFF008291FC088FC53E1DC695E20D2CA5AF897C3934E24BAD0AE981206EC2F9B6F26D668A70A048AAC0849239628FE6F8D381A96028433AC967EDB0357697583FE59FCF44DA5AFBB249DAFD99566D2AD3785C5AE4AD1DD746BBC7C8FA168A28AFCD4F7428A28A0028271457C9FF00F0597FDBF5BFE09FBFB18EADAE68F731C7E3CF1549FD85E154215DA1BB9118BDD9460C0A5BC4AF2FCCA51A410C6D8F3457A194E5788CC7194F0385579D4928AF57D5F64B76FA2BB31C462214294AB5476515767E77FF00C1C3BFF053BBEF8E7F131FF66DF86B25D6A1A3E8FA8C56BE27934DDD713F88756F31445A4C291E4BAC32940E83734973B63DAA60224FB8BFE08ADFF049FB1FF82797C1BFF8483C51636971F18BC616ABFDB7761966FEC5B6255D74C81D49508ACAAD33A12269541DCC914213E27FF83697FE09CABF11BC6579FB4478D2C64BCD3341B896C3C1CB785E437DA80256EB5225BFD6793968518970666B862164811ABF52BE397FC1407E177ECDDF1FBC35F0DFE216B337846FFC6960D77A3EABAB59C96FA0DF3ABB235A0BF61E42DC0DA18C6EC30248B2732C6ADFB071C633EA5878F0470F2728D25CD59C5372A934AF2BDAEED1B5E4B5B34A3B435F9AC9E8BAD379B633472D209FD98F4F9BFD7CCE0FF6A4FDB93C4DE04F05785FE2DFC1DB5F08FC6EF833A3DCDD41E3E87C2F7CBA96B305B8F2C0BBD3A4865304A6D8895A68186E652B828373A793FED476A56E7C33FB747ECBF269BE3864D202F8D747D318AC7F11FC369C4985C02352B2F2DB66E55997C930B87F296D9FC37F6FDFF824EEB3FB0C7C66BEFDA07F673D4BC7BE0DF0BDC2B4BE2CD03C092225EE8406585EDA59B8F26FEC637FDE49A6C9B5400C2378E323C8E37F67EF881FB437EC01E27B7F8E1E08F0EF86FE3B7ECE9F12106A9E259FE184322DB6AEF928DACAE92E7CCD37560236FB4A4082D1BCAF2A610488258F3CB321C07D529E2F28AD09B69C7967EE7B44EEE542ADDF273FFCFB94649CAC9A8FBAA70E9A98AABCEE1888B5E6B5B769474BDBBA6B4D6EFA3FA43F6EEFD96B45FDBFBE05587ED35FB3ADD5BEB9E28D73C2773A5EA7A75ACA62B7F897E1BB98DA2BCD1AE82FCD1DEC6038899BE68A78046E034713DBB3F61ED257FE0AB3FF000400FF008573AA496ADAFAF872EBC08F25FAC823B5D474D6D9A7CF37CA5895F2ACA69300B06DE3EF035EF5FB22FECB3A0FEC71E26F891F107C3BE2597C27F05FE21DAC1E316F076B5A79D321F06DF188C97D741E7656B48648846D25B488A2068D8031A288D7E26FDBB3FE0E60B5D23C432F823F66AF0E41E28D4AEAE7EC51F89F51B3964B6B9B890E3669F62BB65B9919DC859242AA5D7E58A7470C7932B86679B2594E49075550A90A94EB4BDD74A2937ECEA36ACF95BE8EF78BE5E68D9278AA987C2FFB462A4A3CC9A715AF3376D52DFA7E3AEA7D01FB19FF00C12EFE32FC30F8FBE1FF008BFF001D3F699F1778EF5CF0DC13C8BE1EB39A48FC3F6ED2DB4904A1FCE6F2E48F6387CA5B5BB6F8D1893B6B7F53F187EC47F06BF67AF167C1DD7BE27FC2BBAF05F8A353BEBFD6341BFF001A4179399EEEE0DD4B85498CD105970C9B36946552086C13F9BDE0EFF825FF00ED7DFF000557F174EDF19BE242687F644B6D52EB46F17EB1E6EA1A7417224105D47A05AE23B4123412A85996D598C2F80761C7B77C39FF00836DFF0067DD33E212F80BC5DFB476ABAB7C4058D643A0E8373A4E91A8106369437D8A717730531A3B8FF6549CE0135EDE6597E571ADCD9C66F7AB1517C985A568C141B716A504A368F33B369357BF538A862312E36C361AD177D6A4B577F2777ADB63DCBF682D6FFE09E5FB74781FC17E15F17FC4EF87CF6BF0FED174ED02E66F1949A5DCD8DB048D4C26E26954CCACB0C609999C9650410E771F743FB1F7C19FDA5FE0EFC15D07E1AF8A3478FE1CFC11F16699E2AD26C7C2BA841A858DF4D64B298229E656767CBC865672E5E47CB397624D7C95F163FE0D95FD9B7E13F80351F10EBBF19BE26784349D3103DCEAFAF6B5A2C3A75986608A6677B2895416655199172580CF35E05FB407FC1B8FE34FD9412D7C7DF0D7E3F7842CE782745B0BED62EE4F07DEC723FF00AA8ADEFE2964579A460A13984124723AD73D1C3F0FE2A9D3C3E0739AD4F9652F66AAC25287335EF5AD68C5BE6D5EEAF7DD952A98EA4DD4AB8584AE95DC6493B2DB7D4FD36FDAE3F663F18FED45FB6FFC03379636ABF06FE165DDDF8EB549DEED0C9A8EBF005874B8043C48BE49965B8120DC8C03AB6C2137ED7FC14D3F6C4FF863BFD98EFAF347867D53E2378CE65F0BF81345B51BAEB57D6AEFF756EA8381B632DE6B162A311ED077BA06FC9FF815FF0005B9FDA7FF00E09D7E28D1FC37F1E3C3F79F103C2BA846B2D94FAA4917DBEEAD82AE66D3F57B7DF6DA822870CCCCD3966217CF8B9C7EA37ECBBF163F67FF00F829CF8C7C1FF1D3C2171FF09078C3E1BD95CD859DB5F5C4B0DF7845EFD1567596CB798E39A4589A313AAB2C8A8E12474008F9FCF385F1F934B0D5F34A6AB60E926A33A4F9A137CD2925277BAE79B5194AD7E5D217E547760B32A18AE78506E351EEA5A35A25A2EB65B79EE79DFF00C12D3FE089BE11FD83B40F0D788BC5D7BFF0B0BE29E8BA67D86CF50BB2D2E9BE128E49249A5B6D2617FF0052BE64D3169C81248D2CEE04427922AFB92835F9C9FF00047CF861FB6B7827F6AAF8917BFB476ADA9DE782EF2C25110BDD5ED6F6D6F356373098A6D3628999ADAD041F68CA05857F7B0831974611FCCE22A62B3F58ACDF31C5C3DA5349F2CDDA53E693F769C52B7BBAB69592BAEEDAEE8A8613D9E1E8D37CAF4BAD9596F27E67DDFF001D7E06F857F695F847AF7817C6DA3DAEBDE17F125B1B5BEB29F203AE432BAB290D1C88EAAE92210F1BA23A90CA08FE7AFC6BE13F8A3FF06F3FFC1486CB50B1171AE686C1E4D3E699FC9B5F1C682F22896DA5751B63B98C840D853E4CCB0CBB1A274127F4815F33FF00C1577FE09F5A6FFC144BF64ED5BC2EB1D9DBF8D3470DAA784B529894FB1DFA29C44EE39104EB9864C860038902978A323D9F0EF8C2195626597E62B9F0588F76A45ECAFA73AECD7DAB6AE3E6A36E3CEF2C96269AAD434AB0D62FF47E4FF3F99ECDFB3CFC7CF0CFED47F04FC37F103C1BA82EA5E1BF15592DED9CA08DE99CABC52282764D1C8AF1C884E5248DD4F2A6BB2AFC30FF00836E7F6E8D4BE007ED15AD7ECEFE36FB6697A678BAF6E1F4AB5BF5F2A5D0F5FB7056E6CDC30CC7E7242CA5598059ED95554BCEC4FEE7D791C73C2B5387F369E05BE6A6FDE84BF9A0F67EAB58BF34EDA58EACA7318E370CAB2D1ECD766B75FD740A28A2BE3CF482BF9EDFF82D57C61D7BFE0A41FF000566D3BE12F83EE16EECFC27A8C3E01D080DD2DBC7A8CD320D46E9D40DCA239808A5C70134D0DC726BF75BF6A3F8E16BFB347ECD9E3DF885791A4D0F82B40BDD67C8660BF6A7820791211923E69195500CE49600726BF13BFE0D8FF80B73F1BBF6EBF167C52D7E46D527F877A4BDC1BB98FEF65D5F55696213E7B93047A806C0EB329E3807F64F0B210CB70998715555FEEF0E5A77DBDA4F45FA45F94D9F2FC44DD7A9472E8FFCBC95E5FE18EAFF00AF23F6FBE00FC10F0FFECD5F04FC2DE01F0ADB7D97C3FE11D361D32CD582F9922C6A019242A0069646CBBBE32EEECC7926BE1AF8E5F1B7E217ECD1E13D57C17FB697C3FD07E36FC07D5A46DFF12BC33E1F6921D251A42C8757D2577C96BE57256E6D8BF97880299266671F776A7F1A7C1DA2FC49B7F065E78B3C3369E30BCB54BFB7D0A6D5208F529EDDDDE35992DCB798D1B3C6EA1C2E0B230CE4115D2B28914AB0DCADC107BD7E7797E6B3C2D775B194BDA7B46A4DB6E33BDDB538545AC6576DDFDE8B7F1465656F7AA51538F2C1DADA775E8D75FCFB347E61DF788B5FFF008252FC0BB7F8CBF027E235A7C6CFD91E296237BE0BD53565BDBBF0D5BCB7096CA744D4CB12C9148F1C7F64B8384F2DC126491A44FA93F64FF813F0B7E0B49E24F8F7F0FBC55A87857E15FC56F0FDB78C2FB419A68ACFC2F6EF2422E5F5CF2E540D6733DA98C4BB1E388AA6644665468FCF3E37FF00C1BE7FB367C6AF1A49ABC7E1FD7BC176D7D771DEEA9A3785B556D3748D56541B417B50AD1C476EE5DD6E216F9D8821896AF92BFE0E27FDB11F40B2F067EC87F09AC7CB8E6874F4D674AD1A15DCD19648F4AD120453C17658E4688052545A282524753FA160E8D0E24C451CBB2DAB3F6B55CBDBCE508C17B28F2B4EA252719CE2D36AA7BAE4DC79B57A78F5EB4F034E75ABC572C6DCA936DB93BAD2EB44F4D35B6A78FF00EDB5FB6EFC56FF0082F0FED496FF00047E085ADF41F0CE2B832C504CD259C1AA430C8B9D63556DBBA2B48DB6345032960C62251EE1A38E3FD45FF8274FFC1207E15FFC13BFC2D1CDA658C3E2CF1F5DDB08754F16EA96A86EE6CA912476D192C2D2DDB27F748C59942096498A06AB7FF049AFF8271E91FF0004E2FD98ECF4268EC6F3C7BE2258B50F176AF0AEEFB5DDED3B6DE372031B6B70CD1C430A0E64936ABCCF9F943E29FF00C14D3F6CDF88FF00B6BFC66F85BF02FE15FC26F1F68FF0BF528ECEE06A10182EA3B7990F946669F56B68E52C52507CB4C0DBC81919E9CCB30A99CC2A641C353861F01875794A7350553DE51E7A9376BF349AB276BE8DABD9471C361D61A4B1B8FBCEB4F44926F9746F96295ED657BBFE9F6FFF000489F07693E01FF82A77EDD9A4E87A4E9BA269567ABF8644165616A96B6F0068B5363B63401572493C0E4927A935F2CFED13F0F3C47E12FD95FE21785BE1578A3C3FE39BCF11FED5666F0E788E237F69AFC3E272D1BBDABC135AA4724B6D240ECD7D0DCBC4E91390130C13BFF034FF00F0504F861E31B8F11786BF628FD987C3BE20BC7325C6A7A6695A55A5E4EC43025A58F5E0EC48771927A3B7A9AB577F13FF00E0A25E0EF145D78EA4FD90FF00673B0D76C62B9B99F5D4B2D385FC6922A9B86F3975EF34EF58937E092C235073815EDD1A73A799CB1D0C561A578D05CAF114B595184609BD5B6A4E37D1ECDA6A4ECD672945D0F6528CD6B2D5425A2936F4D3A5FF0003AEFF00838EF58D7BC6DFB17FC56B7D5B47F1369FE17F07C9A345A0C896E574FD52F26BDB36B8D4279958E638E395AD2089B68F35AEDDE373F63963DEF8FF00E22F17F8DBFE0B17FB29C36B1FFC23BA5DFF0080F5E5F0EFFC24DA5CD24769A9A4170B7EE96F1CD13B4E6D12DD73E6A158E6DC09C956F9EFE1C7EDE1FB6D7FC1503E0C7F6D68FF00B33FECE3F17BC0F6FA83DA83AC68D0496C9751AA330105FEB48DB82BA1DC131CF04E0E3BFD77C6BFF051AF14F816C7C2FA9FEC77FB396A5E19D3591ACF48BAB2D366B1B4280AA98E16D7CA2150CC06D03018FA9AC68E4F532FC253CB313570D1A94BDBC64A55E9A71F6D4A14EFCB277E64E1CD24D24F99C744EE37898D79BAF4D4F965CAD5A12D7964DEF6D9A76FC4F7FF00F824BF85BE1BFEDD1FF0493D07C2BE20F84FE1AB3F03C57BA9E9474857BABED2EFA64BB99A5D46C66BA792E977CF2CCEB2195A58651205937206AF807F6F3FF8273FC50FF821D7C70D3FE3AFC09F106AF73F0FE29D6DDAEE51E7CDA109645074ED4D170B736133845494EDF9FCB46D932C13CDF4078D7F6DDFF82927ECD3F06F51D7357FD9CFE07F857C11E07D29AE6E5E05B736FA558DBC793B21835F66D891AE024684E000AA7815F757FC13E7E376A1FB7DFF00C13DBC23E2FF0088DA37866EEE3E20E997906B5A5DAD8B7F655CC26E27B6687C89E494B46F12E195DD836E6EC703CF96679970F622B66F19D2AF81C45594674A359568BE7BC9A93D7DFE55F13D5F54D3B173C3D0C6C6387F7A3560AF1972B8B56B2D36D2FD0ADFF04CAFF828EF853FE0A4BFB3FC7E27D1C43A4F8A34764B4F13F879A6F326D1AE8825482402F6F285668A5030C03A9DB2472A27B17C6FF8E3E11FD9BBE166B3E36F1D6BDA7F867C2FE1F83ED17DA85E3958E2190AAAA002CF23B15448D033C8ECAAAACCC01FC26F897E16F117FC1BB5FF00055ED2F5CD1FFB4AFBE12F89834B0478699B55D0249545DD912C7F797764E51D0EFDCDB6D99D945C4895F7EFFC162BE037C4EFDA9752FD9CBE227C27F0968FF1BBC03E08D6DBC4DAAF839B5982CED7C48244B77B2BB0D3308648D625B940DF3B2FDB01F2A68DE503C7CEB8232E866D86AD85ADCB80C527384DB4AD64DBA4E527CB195ED04E4EC9C97336D48E8C1E6B5A54270AB1FDF53766975BED2496B6B6BA799D0E93FB777ED31FB675AAEA5FB3AFC13F0EF857C0F3A8974EF197C60BCB8D3E1D7232010F6FA6D9E6EBC9752AF1CECDB2457070A410373FE0937FF0509F883FB64788FE327827E297867C33A378E3E0BEBE9A26A57DE1A694E8FA83B4B751324425791C3C6F66FBB2E72B2C64AA1CA8F76FD92FE25FC4CF8C5F0BAF356F8AFF000C60F847AECDA8490DAE811788E1D7255B311C7B6692E60558C48F2197E45FBAAA993926BC4BE1FF00ED37FB19FF00C12F3C1F63F0CFC2FE3AF877E0FB7BAD5F61D1B4DD55F59D4A5BFB991137DD6C69EE4B9CC69E65C1C2C71A2EE58E3017C5A92C3E2286232CC36013AC9C7D9BA4DD571B3BCE52A919494EE95AD18F236DC972F2A4FB146719C2B4AAFBBADEFA5FB249A56EFAEBD35BE9F99DFF0007197ECB17DFB277EDD1E1BF8CFE09693438BE203A6B11DDDAC607F65F88B4F7898CEA02EC46917ECD3A8392F2C772E73935FB45FB15FED31A7FED8BFB29780FE2669AB0471F8B7498AEAE6DE172E96378B98EEADB71EA61B849A227B98CD782FF00C17C3F66F4FDA2FF00E098FE3D78E159356F87A89E35D3DD8FFAA3621DAE881DD8D8BDE20039DCE3AF43F35FFC1AA7FB4349E28F811F12BE17DE4ED23F83757B7D774E1238F96D6FD1D5E28D7A9549ED64918E386BB1CF2057D5E692FEDEE03A38E96B5B033F6727D5D395947EEBC12FF0CBB9E561D7D4F389D15F0D65CCBFC4B7FBF57F71FABD451457E2C7D49F057FC1C91F157FE15DFF00C12EF5ED2925686E3C75AF697A146EAC55B0B3FDBA4518ECD15948A41E0AB35723FF0006BCFC24FF00842FFE09FBADF8A66857ED1E3AF16DE5CC336DC335ADB470D9AA67B859E1BA39F591876AE27FE0EBDF12C907ECCFF09745F97C8BCF174DA8B71CEF82C278979CFA5D3F6FC4739FA8BFE084DE154F077FC1277E0EDAC7BB1716179A81C8C7373A85D5C9FD653CF7AFD9310FEA9E1AD28C37C4621B7E6A29AFCE113E5E1FBCCFA4DFD8A7F9BFF827CD1FF057CFDA774DD2FE266B9A778FBF604BEF8C1A0E8F10B2B6F1D6A31EC8DED400E5A3BDB6B2B992DA312492615A58D8F27682C40F9C7F66B8BE267C6FD6F498FF00653F8B5F0E7E0AB2B66CBC293FC7DBCF12DAA263EE9D22FACA7903FDD5C98C2E54FCA4602FE9078A7C57FB75785FC5FACCD63E10FD98FC55E1B3A85C7F64C16DAE6B1A7EA4B67E63791E79961688CBE5ECDFB085DC1B00022BC5BE3F691F16FF00686B8913E2A7FC1377E1DFC4491E331CBAC5B7C44D0E6BC54E0FEEA49E08AE10F017E59013B4F6C03E86479B52A182861234E9592D5BC4C6507A6EF0F5EAC20DF74ACB7495B6D3118794AA39CA52DF6E469EFD25057B7A9F53FEC6363F1C7E0E7C0AD72EBF698F1A7807C49AB693249751EA7E1DB49208A1B08E10CF25C318A156937090E238502A81F789E3F28BFE086DE0BBEFF828E7FC15ABC7DF1FBC5D6BF68B7F0BC93789C5BDC30945ADFDFBC9069B6E4303B92DED63B8087AA35A4041C806BEE6FDA8EDF4CFD95BFE0809E3CB0D0FC0BAA7C2AB06F07DE6951785F54D59B54BAD11B54B86B7685AE5E590B9DF78C57E73B432AAE02851E75FF06AEFC3C8741FD887C73E2468235BEF1178D66844C0FCCF6D6D6568B1A1FF0076592E4FFC0EB972EAEB05C3B9C66F49253AB35878B8C6314A2DDE768C1CA2B9A2D69194926934DAD5E3888FB5C76170B26DA8A73776DB6D68AEDABBB3EE91FA755F9BFF00F04B2FF94C9FEDCBFF00610D1BFF006F2BF482BF38FF00E09516C6EFFE0B01FB765D2B2F9706ADA240C0FDE2CDF6FE9EDFBB3F98AF89E1976CA736BFFCF987FEA4513D8C77FBC50FF13FFD2647E8E572FF001BBFE48C78BBFEC0B79FFA21EBA8AE5FE377FC918F177FD816F3FF00443D7C9E17F8F0F55F99DF53E07E87C0DFF06B47FCA33AF3FEC72BEFFD26B3AFD21AFCC5FF00836A7E21E83F09BFE0935AF7893C51AC69BE1FF0FE8FE2CD42E2FB51D42E52DED6D2316D659679188551C81C9E4903AD27823FE0E50F0CFC50FDB1A6F0BE83E06BA6F837A4DBDD5DEADE37BEBB7B5B8B2B38139D49ED1A2FDDDB194C5124723ACF2B5CC2AA82774B67FD3B8C385F34CDB89733AB80A2E71A739393D125E576D5E4FA455E4FA23C2CB71F430F81C3C6B4ACE4924BFAE9DDEC8FADBFE0AD07FE358DF1F3FEC44D5BFF004964AE3BFE084E73FF00049DF83BFF005E179FFA70BAAFCB5FDB67FE0E47F899F1D355F14E83E0BF0FF82741F85DA82CB670DBF883428F55D4351B32BB58DE2CEEF6B89002C61F24840FB59A4C6E3EABFB10FC39FF008296FC61F85DA5B7843C55E1BF833E04863326936BACF85B43D0E03134858FD9EC2DF4B9668D4B1671E6C712B86DC198364FBD5FC3DCC705C30B099A56A386E6AAAA2752A34FE071E5B4612BCB5BB49BB23869E7987AF8FE7C346552D171F763A6E9DEEDAEC7D8BFF070AFECA10FED21FF0004E9F116BD6D6B1C9E22F852DFF09658CD80AE2DA1522FE32D8DDB0DA1964D838692DE1CFDD18E27FE0DFF00F8FDAF7ED39FF04AFD5BC0B67E259BC3FE32F87725EF84F4CD6BECF1DF4FA64324026D3AEC412831C8B6FE779491B8DAC2C82B0C139FBABC39E04D53C5BFB3FD8F867E234DA66B9AD6A7E1F8F4BF13CB63118ACB50B892D84776D12372B13B990AA9E42B006BF1CBFE0D47F155D782FF00689F8C9E05BE64FB5DF68363793A6E1C4BA7DD4D6EE579E99BDE481D9738E33E464B278DE0AC7E124D49E0EA53AB07BAB4DB8C92BFD9B272B3566DEA8EAC55A8E6D46AAD1558CA2FE5AAF9F43B3FF8283FC1FF00D9E7C25F033C7763F18FF6C9F197C58F8A573A45E5B693A25F78B7ED1A658EB7E538B56FEC4D311BC85F3BCA0CB2865201CF4E343FE0941F18BC75F063F64CF07E93F0D7F61CD7B58F8A1696D2C1ACF8B350D3EC3C17A76A711B89BECF38D42E14CF7845BB441F09CB070A48C1AFA1AC24F8B3FB3AFC6BF1647F07FF00602F00D85BCDAADE88FC66BE3BD1349975E469E4617722476EF758941DFB24395DFB780A2BA8B8F15FFC1403C5BB64D33C1FFB2A783A3DD868B5BD6B5AD526C74C8FB34488718279619C81C60D7A35B3894F2DFA855F675212929FEF3114D457BAD72AA58792708EBAC5CB74B4567723864ABFB68DD349AD20EFBA77E69EEFB3B773EA6F0C69BA97C44F82FA7D9F8F347D3ECF56D73458E1F116956B726E2D209E6800BAB78E5C299230CCE81F00B28070335F837FF06ECEB979FB387FC15AB50F87FAA5C335D6A9A3EB5E10B98D898C4B79652A5C17DBFDF516370307A077AFDD7FD9DED7E21597C1FD263F8AB79E11BEF1EEEB86D526F0C413C1A4FCD712342B02CECD2E16131292E492CAC7BD7E127C1753F083FE0E6C95ADCAB193E2B6B67246EC7F69477A1FD3A0BC61EDEE3AE7E1CC556CBF3CCB2E9A9519495AFCB787359C6FADAED5AFADAD732CF7DCAF84AFD54D2F94B7FC8FE8428A28AFC54FA93F24FF00E0EC3819BE0EFC19970DB135DD4109FE1C9B64233EFF0029FD6BECEFF82305F2EA1FF04B4F826E9D13C391C279EE924887F5535F35FF00C1D3BE07935FFD837C1BAD4302BC9E1DF1D5ABCF2E3E68ADE6B1BE84807AE0CCD6F91D381E82BD3FFE0DD1F1D45E30FF008250F816CD65696EBC33A8EB1A5DCE7F81BFB46E2E235FC20B886BF62CCD7B6F0DF0738FFCBBC44A2FE6A6FF0055F79F3187F773DAA9FDAA69FDCD23A9F187FC16B7E0EF847C5BAC686BA4FC5AD5F52D06FE7D3AF934DF00EA97091490C8F1B912794119772300CA486EA3239AF0FF00DBFF00FE0A58BFB52FEC71F10BC03E01F827FB544BE24F126986DB4EBB8BE18EA31C31C9E6232BB48BF3A21DB8DC01233D0F4AF7AF8B5F19FF006C3F107C4AF10683F0E3E0A7C29F0FE89A6DE490697E2AF19F8D64BAB6D6201F72E3EC5650F9F0E7BA3B1607BE39AF32F8BDA0FED39E13F0FC3AE7C64FDB2BE0A7ECFF00A5CEFE5BC1A0784ED3ECB3F1F324577AC4FBC372304216C91D38AF3F27C165742BD1C428C235138CA29D7751B6ACD7BB428CDADB58BD56CEC76E2275A71941B76775A452F2DE4D7F5B1C27ED53E11F138FF8360E1D23C41A66B1A5F89348F05E80B7F65AB5A4D6B7D6DF65D42C99D668E45122B88E224EF00E464E339AEA3FE0D8BD7E0D5FFE09AB3DAC4CAD2691E31D4ED6703AABB25BCE01F7D9321FA115EC1E15F017867F6B3FF8260F8F3E1AF83FE335B7C769F57D0759F0FBF8BA6D56D7509DF51B949A5884ED6E4471B42D3C3B108056348BA8F98FC3FF00F069EFED0319B0F8B3F0AEF245B6BA32DAF8C34FB490159A4DC8B677A4A9E4797E55829CF796BD9A9CD8CE11CD68A5EF51C4AACD59AB29FB97B34A4968DEA934B7B1C0E2A966B879B7A4A9B8FCD6BB9F6E7FC1407FE09B5AF7ED1BA66ABE20F843F163C75F057E225E234B732E89AF5ED9E8DE24984491A1BEB782450B36C8A3885DC43CE540A184EB1C71AFCA1FB057FC140E7FF826D7C45BCF857FB5DF8261F87FE3CD69E182D3E2A2E9B1CD178E6DA0CAC2752D42152F7524226005DB9721663F6AF225124937EB1D7E757C08F12CFF00B57FFC14C7F6B8FD9DBE37359FC42F03E971697AAF873C3FAC5B432C3A4DBBC22477B76550E8E16FED489037991B2A9565619AF9CE1ACD258BCB31380CC60AA61E8C14DDBDDAD15CF087B92B35251724DC2A5E365A38B48EFC6D0F675E15A8BE59C9DBBC5E8DEABA3D346B5F55A1FA07E0EF19E8FF0010FC3163AE787F56D375CD1753884F67A869F729756B7719E8F1CA84ABA9F552457CE3FF00050EFF0082A8FC17FD843C23A869BE35D5A1F1078A2FAD0A43E0DD2D92E353BC4906079C99DB6D0B2B13E64E5032AB04F318043F037ED8DFF06E4F8FBE07DCEADE24FD95FC71AF269D7CE67B8F07CFAE49A65F673C2DBDE8748EE00C80AB74519550933C8C40AF82FC17FF000486FDA73E227C416D0EDBE0BF8E2D752B89CB5C5E6AF6C2C2C5598E5E57BB98AC4FDD8946766E70198807EB385FC3DE16C6CBEBD57354E8C757069529AF297349D9746E29A7F6648F2F32CEF31A2BD8C30CF9DE89AF7A3F2B2FC1DBCCA1E3EF8D3E2EFDBAFC576FE01F07F87FC2FF000C7E1A69F7B73E20B4F08E9321B2F0DF866255027D5B519F6E65686055125D4ABF28CAC31234C217E1BE2F7C4FD122F0CC7E03F00FDB62F03D8DCA5DDEEA1770FD9EFF00C677F18655D42EE3C9F2A28C3C8B6B69B996DA391C92F3CD712C9E93FB527C2FF177ECE6DAC7C0BF0FF83FC5D6FA7E97A9AC5E2AD65B43B98EE3C77A9DB3E119094C8D2E0724DA42A4894B0BB9374924296DE7BE05FD897E347C4DBC8E1F0FFC20F8A3AB191C47E6C1E15BE36E849206F98C42341C1E5D80E0FA57F4765B3CBE346188E68D3A0B582725ADF5F6936DDDC9EEB99B6BE293E77687C262FEB1774A3172A8F493B3D3FBB1EC975B6FD34DFEB6FF008259FF00C13A5BE2A7EC3BF1C3F680B58354D77C6FE0FD3352D2BE1D695A30927BEB1D6A2B35986A291C1991AED1A6885B281BA370D3052FF67923FD47FD8B7F6BFB1FD923FE096DF0E7C4FF00B4A78BF56F0A789FEC378D7EBE347B84F105F4AB777056316F38FB5CF2F94136A2A3314DA40DB835F951E06FF82287ED05F053E0CF89BC7DF117C5D0FC03F01E8F686FF5D316AB36A5AA4B0A03B596CB4F93CA9DBE6DA124B88D817C71938FBD7FE0983FF0450FD977C5DF0A3C37F1824835EF8D175E2688DE5BDFF8D2DFC9B594A3BC4CDFD9D8D8C859090B746E08E0861C57E23E2262327C642AE271B8D75A97B54E3ECA9F338DA0D2A4AAB97B349DDCDDB99B7EF72BB9F5F90D3C4D251A74E8F24B95DF9A56BEABDEE54B99BE9ADBB5CF7BFF0082507FC144BC69FF000521F0DF8E3C61AB7C2F9BC07F0FED35086DFC1DA9CD786693C411FEF96E320AA8630B4716E922DD11799E25666B7918FE737FC1B3A7FE131FF82967C5CF1359884E993785F51656894AA62E757B5962DA390176C4F804F40319E71FAD7FB7AFC7AB5FD8FBF61CF891E38B77B7D364F0AF872E3FB214011C62F593C8B18401C286B89208C60606E15F9DBFF069AFC0D9340F85BF173E20491AFD9B56D474FF000C58964C328B285E798A9EEADF6E841ED9848EA0E3E4F28C561E3C359DE6787A2A8D2AAE952A704DCACD3F79734B56F95A937D5B7649591E962E9CE59861284E5CD28F349BB5BA69A7457D17E65CFDBD7F6AEFD9F3E14FED1FE2C23F6ABFDAF24F1C2EB2F6F7BE0EF87BE21596C34BBA0DE535B429796E2CA308EA54C4262436EDC33D389F85BAF7ED73F1DBC536D27C2FF8F579F0EBC2AA5192EFE26FC48F0C789750D4222CBB192DB4FD3DFCA7077831CCC77F00B2E30DE9BFB417ED49E17FD8C3F69A93C27FB5FF00C05F82BE2ED13C6D77A9EB1A078D3C2DE1EB5D52E23B0371BDFF00B4B4F9E3371BA38DF7493C7BBCCD87624CC92BAFD4FF000A3F627FD8B7F6BCF86B67E2AF047C25FD9FFC59E1DBC3F25FE8BE18D3942BEC04C5218A3578E450E3745261D090194115D95B34C365597D1A95F0B2A9194528D59C29D7A6FA7B96F671D2CD72D45292B6BAAB8E9D19D7AB38A9A567F0ABC64BAEBBBF9AB23D8BF645F0478E3E1FFC0ED374FF0088DF1361F8BBE2CF36692EBC470E8D6BA4C338691B642905B7EEC2C4B84DDF798A9638CED1F88125C7F6DFFC1CDDBA0C49B7E2984F95837FAA882BF3EDB1B23B631D6BF787E0A7C10F097ECE1F0CB4DF06781741D3FC2FE15D1CCA6CB4CB14D96F6DE6CCF349B476DD2C8EC7DD8D7E0AFF00C133655FDA1BFE0E2597C516AAB7BA549E36F17F894195B762D5A3D445B1EFCAB4F6D8EC368C74158786D5A2D67798AF8561EA7D98C17BD76BDD8FBB1BF2FC31D16CB44471046F2C252EBED23DDEDF8BF53FA14A28A2BF123EA8F987FE0B3BF04A4F8FFF00F04C1F8C5A1DBA3497961A21F105B2C69BA4924D3658F5011A0009DD27D98C600EBE66320126BE1CFF0083503E3B453F84BE2F7C319A58924B5BFB4F16D821397B813C42D2E88E3EEC7F65B3CF3D67181D6BF5F6EAD63BEB69219A38E6866529246EA195D48C1041E08238C1AFE747F64ED6A4FF008237FF00C1705BC33AB4CF67E17D2F5E9BC1F7F33CC3E7D0B51F2DEC6E25918E02A07D3EE653938F2245EA335FB3F01C7FB5F85F34E1E8EB522957A6BAB71B735BD79631FF00B7BA1F2F9C3FAB66187C6BF85DE12F9EDF8DDFC8FDA4FDABBF64AF8B9FB4AFC52863D17F683F137C2BF85EDA6C505F68DE15D22D63D72FAEBCC90CB2C7AA481A4B65D9E485088C776F278C0AE0ED3FE08B1F083E16F857C49E20F0DF83741F891F18AE74C97FB3FC49F16EE6EBC50B7BA8AA31B796F048C42AF98577BC11A385C9193815F65515F9B61F89B32A14A3430F53920AD7504A1CD6FE77149CFCF99BFC11EF4B074A52E792BBF3D6DE97D17C8F92FF00E095DFF04C65FF00827B69BE3ED6B56F10587883C71F14F518B53D74E93A68D3346D3FCB6B8923B5B2B604EC8A37BA9C06F97729401102815F98DFB63596A9FF00044FFF0082E1597C52D3F4FBD6F87BE35BE9BC4021B7462B7DA7DEB6DD5ECD07CAAD2C13C8678E2042AE6C77100D7EF6D7CD3FF0555FF8277697FF00051FFD976F7C2BBEC74DF18E8F21D4FC2BABDC0609637AAA47972B202DF6799498E4015B00AC8119E24C7D6F09F1BCA39D55AF9E4B9E8E2A3ECEB696F75A514D25A2E4B2B595D46E96A79999655CD858C308AD2A6F9A3EAB5B7CF53E84F0778BF4BF883E11D2F5ED0F50B5D5B45D72CE2D434FBDB5904905E5BCA8248A58D870C8E8CAC08E0820D7E6FF00ED71A8AFEC31FF0005FDF83DF152E4259783FE3D787DFC09ACDD84DDB6F95E38E32E780A1A4FEC71963C245336484207CE3FF0462FF82AA6A3FF0004FCF887A87ECD3FB424771E13D0F4BD525B3D3B51D4E40BFF00086DEB36E7B4BA7C94FB0CACDE64770A4A4665DE59ADE55920FD38FF0082A2FEC15A6FFC1467F641D77E1FCF2DAD8EBD1BAEABE1BD42E0B08F4FD4A25711B3ED04F95223CB0C98562239DCA8DE148E8FEC67C2D9EBC2662EF84C44650F68B552A551594E36D1B83E59B4AFAAD2E9A6E638A598613DA50D2A41A7CAF7525BC5FAEAAFD99F44673583F14B5AB9F0DFC32F116A16727937961A5DCDCC126D0DB24489994E0E41C100E0F15F0FFF00C1297FE0AB371F10B5193F67FF00DA015BC09FB44780D93479E0D625587FE12DD8AA12589C928F78C851D911996E15C5C5B9789D961FBD35DD16D7C4BA25E69B7B1F9D67A840F6D3C7B8AEF8DD4AB0CA9046412320822BE1B36C971394637EAD8D8ED669AD6338BD54A2F69464B54FE4ECEE8F570F8A862697B4A4FF00469F66BA35D4F8CBFE0825FB5E7C42FDB63F61CBAF197C4CD797C45E228FC4B77A7ADD2D8DBD98102416CEABB20444E1A4739C679EBC0AFB5EBCD7F654FD903E1DFEC49F0C64F06FC31F0FB786BC372DEC9A8B5A36A1757D99DD5119FCCB99247E563418DD818E0649CE0FEDB1FB7F7C30FD803E1A49E23F889E208ECE59A391B4CD1AD76CDAAEB9220198EDA0DC0B72541918AC51EF5323A29CD75671ECB36CEAABC968351AB37ECE9A8A4D27B2518DD2F45A2230BCD87C2C56265AC56ADBFC6ECF91FF00E0E54FDA0AE344FD947C33F053C37049AA78E3E376BF69A7D9E9B067CF9EDEDEE219709FED49786C600A71BC4D2633B48AFB93F65AF81D6DFB337ECD7E02F87B692ADC43E0AD02CB46370ABB7ED4F04091BCC47AC8CACE7DD8D7E78FFC12F3F664F1F7FC140FF6C19BF6D4F8E1A3AE8B6124222F865E19999A416967B5C417603853E44692CAD0BB2833CD3CB74A9127D9CBFD0DFF000571FF0082B6786BFE09B5F0BFEC3A7FD87C41F16BC476ACFE1FD01DCB476A84B27F685E852192D5183055055EE1D0C68542CB2C3F599B6595AA4709C1D95AF6B5A3294EAF2BBAF6D3B26AFB5A9422A3295ED7E66F63CEA188847DA667887CB16928DFF956CEDBDE4DDD2DED63E2FF00F8399FF6D39FE2078B3C23FB33F8216EB58D61EFED755F115A587EF26B9BC9709A6696AAADF348ED289CC6CB9CB593293B881FA09FB27FEC2977FB347FC137F43F82DA1F89AF3C27E234D0A48350F11E92A935C5B6A7745A5BBB9B7322E0E26964111704A22C63F8457E7EFF00C1BFFF00F04D7F117C5BF8A127ED59F1856E752B8D4EE67D4BC26BA90CDCEB179396336B72A001447F338B704618B34CA8AA96F237EC956FC759961F2CC361B85F2C9A9470CF9EA4959A9D67BE8EE9A86B1D7BF2BF875CF27A352BD49E615D59D4D22BAA82DBE6F73F397C59FF000444F8B5AE7ED17E19F8B96FFB5C78924F891E0DD3CE99A2EB9AB78174FD464B18196E51D04464485F725DDC2EE7467FDE13B8E176F229FF00041DF8E5E04F8CFF00F0B1BC0DFB51683E11F1C5C0617FA9681F0CADFC3F1EABF36F1F6CB4B5BBFB1DDFCE5DCF9D01DCCD96DC42EDFD48A2BC0A7E22E7905CAA70B72F259D1A3F05DBE57FBBF86EDBE5DAEDBB5D9DFF00D8F85BDECF7BFC52DFBEFBE88F2BFDB83E3FAFECB1FB1FFC4AF885E74315D7853C3D797D6026FBB35E888ADAC5C823325C34518C8C65C678AFC87FF83507E05B6A1FB427C4CF1EB2C82DBC25E1AB6F0E5BB3A9DB2C97D3899CA9C60B22E9E99E7204E3AEE38F72FF0083A5FF006B48BC1FF013C1FF000634FBAFF89978E2FD75DD6634752134DB270614917A8F36F3CA746E9FE8320F4C7BFF00FC1BEFFB2EC9FB35FF00C136BC2F797F6FF67D73E264EFE33BD52DBB6C57291AD98F55FF00428AD98A1FBAEF20C6739FAFCBE3FD8DE1F623133D2A63AA2847BF241EAFD349AFFB79773C9AD2FAD6750A71F868C5B7FE296897DD667DB7451457E307D4857E3EFF00C1D29FB0DFF6E7873C33F1F347B3F37FB2E38FC2DE2D555C8FB2C9231B1B961D0059A592063CB31BAB71F76335FB05581F157E17E83F1B3E1A6BDE0FF1469F16ADE1DF13584DA66A5672332ADC412A1475DCA43292A4E19486538208201AFA6E0EE24AB90E6F4732A776A2FDE4BED45E925EB6D55F6693E870669818E330D3C3CBAAD1F67D1FDE7C9DFF000431FDBFD7F6E6FD8BF4DB6D6B506BAF889F0E521D07C4825937CF781548B5BF6258B37DA224259C850678AE4018515F6857F37DE15D6FC7DFF06F8FFC151A7B5BDFB66B9A0DA810DDAC68A3FE130F0D5C49949E356DAAB72863C8C150B736D247BCC4CC5FFA1DF843F177C37F1EBE19687E32F07EAF6BAF7867C476897BA75F5BE764F130E386019581CAB2300C8CACAC030207D37897C2B4F2EC6C733CBBDEC2627DFA725B2BEAE1E56DD2FE5D378BB7064398CABD2742BE9569E925E9D7E7F99D25707AB7ED3FF0FF0041FDA1F4CF84F7DE2BD26CFE236B5A51D6F4FD0A790C7757D681A552F1646D73FB89CEC525F6C3236DDA8CC3B2D6EE6E2CB46BB9ACEDFED7770C2EF0C05F679CE14954CF6C9C0CF6CD7F387FF057BFF82865CFEDD7E17F87DA4FC47F8177DF0AFE337845A65D667D4527B679EC658E368E14B6B88D2508F36F940995BC9F2C7972389E6C79FC03C135388F18E85DC6095A524E378B6A4E3270934E51BAB4AD67AAD5368DF39CDA380A3ED5EFD13BEBAABABA4ECEDB5CFD1CFDBB7F66FF00D99FFE0B776D75FF000ACFE2A78061F8E7E1B375A7E997B6B7C866D552D1F125BDCDB712DCD96E7CC7770AB88FCC1244D246CF14BF1AFECE7FF0527FDA3BFE0879E3EB5F847F19FC23A8F88BC0F6BB63D3F4DBFB9FDEDADAA60799A3EA0374735BAA3A7FA3B6E542A91E6D5BCC159FFF000428FD83FE2D78D3C7BA4FC76F857E24F813337876E6E746BDB1F14C77F7DA8E82EF847716D14518499ED998C52C774018E76424169517F76BE327C0EF077ED11E03BAF0BF8EBC31A1F8B7C3F78434961AAD9A5CC21C0216450C0ED91724ABAE194F2A41E6BF40CF337C070DD77C358B7F5EC12DE32D2A529DF5E4924ADA6A92B5EEECE29B6FC6C1E1EB63E9ACC29FEE6ABEAB58C974BAEBF9A3E03F885F117F619FF82ECF8534DB5F10F88AC7C3FE3E5816D2C1AFEE22F0FF008AF4EC92FF006788CDBA1BC41B9CF96BF698559D9800FF0030AF69FF0004D4FDB87F66AB24D2FE0FFED6F63E24F0FC6E0C365E3AD2FCD96DA30485884F3437F21555C0FDD9897B04500630FF00696FF83583E15FC419E6BAF865E36F127C3A9266CFF676A30FFC241A646BFDD8C492477233CE59EE24ED81C60FCFBA67FC1BE1FB637C00592DFE1A7C67D0B4CD2E33B628F44F1B6B5E1F95D739E61860F2D477C7987A77AD32FC46433A0A86599AA8D1BDD50C5D18D48C6FDA4D38C7FEDCF56FA8AB471AA7CD88C3B72FE7A53E56FD55D3FBFE47D429FB147FC146BE26B4BA7F8B7F6A8F00F85B47BA256593C35A2C535CA2923EE30B0B59548E71B6753C0CB555F0A7FC1287F663FD817C4E9F13BF698F8B51FC4CF1D4C05C7F68FC44D5916DEF268C361E2B1924926BB900CED49A4B9C15528AACA0D7CDCDFF000466FF008283F8E617B1D63E3A5E7D8A452244D57E2CEBF716F20E3828B1499FC571C76E2ABEA3FF0006D9D8FECF3F0B3C49F147E3E7C64FB2E83E1BB29B55D72D7C1FA39BABFBA5419222BCBA2034AC70AA1ED8E5997240CD765F0315F5796714A946768F2612828CE77D3979A0B9B5DB5BA7B332FDF6928E16526B5BD59DD2F3B36F6EFB9E99FB757FC1CE706A026F08FECDBE1FBED5355D4A4FB05BF8AF58D3DC03249848FEC1A730F3669496F90DC2A61D40304CAD8AC7FF00826BFF00C105FC63FB40FC4DFF0085D3FB5836A97CDAB489A9C7E17D5EE4CFA9EBB3155F2E5D59892638551500B3CEF202472889236B793EF0FF0082677EC0FF00B3D7C05F83FE11F885F093C1ABE7F8CB43B4D62CFC49AE29BAD7A6B5BBB749573249936FBE375DF140238C9EAB919AF61FDAFBF66BD3FF006BEFD9BBC57F0E752D4F52D120F125B2245A8E9F214B9D3EE229527B79D08232639A28DF6E4060A54900D7C962B8D72FCB22F28E1BA52C2C24F96AD79AE6AED5ED2B24FDDB6F68B577B72BD4F4A9E555EBC96271F2551AD6305A413E9EBEAFF13F36BFE0AF9FF05A1F1E7C3AF8DFE1CF831FB33DE4763A925E1D1751D660D005E3CDAAADD8B45D26C16789E090C52298E62914DF3CA91A323C5229FD36FD9ABC1DE36F007C09F0CE91F11BC5CBE3CF1CD9DA7FC4EB5D4B186C63BEB866666D914291A2A26E11A908A5950330DC4D7E36FED49F0B7E347FC138BE3E7ECC7E17F147C4293E2E789279BC6507C3FD47FB336CFA7EBBAC18ACE0B8BA92E6595AF8A5DDF5B5D11290C8D23A0791550D7D73E3FF00DAEFC05FF0463F1C7C6AF034525BFF0065C9E1DD1BC6BF0F7C2526A37135E6ADAA5F1BDD3EEAD2392532388DEE74EB7B99A4F9887BFB999B7BBB67A788B8770F5F2BC160B23A719B929C94E31BCEB3557D936E528C6714AEA5CAD72EB2BBF714A4F058A9C6BD5AD8A934AE959BB28FBA9F769DF5D77DBBE9FA2359BE33F18E97F0EFC1FAB78835CBFB5D2B44D0ECE6D4350BDB990470D9DBC4864965763C2AA22B3127A006B89FD91A7F89B79FB3B7866EBE3245A1DAFC4ABE864BBD6ECF47FF008F1D3A4925774B68F96CF951347193BE4F991B12CA31237E53FF00C1C87FF054CB7F1035C7ECEBE01D504F6B6B324DE3DBEB61B95A54657874A47EE5582CB3ECE8CB145B89FB4443E1785F843139D672B2AC3B4D26F9A71D62A29D9C93EA9FD9DB99B4BA9E8E6199D3C2615E26A76D16CDB7B2F5EFDB53E63F0DDA6B3FF05EEFF82C479F796FA843E0FD62EFED17303B323E89E14B16004470C4C524C1D50EC2C16EB50661F2E71FD1C595943A6D9C36F6F0C76F6F6E8238A28D42A46A0602A81C0007000E95F10FFC1097FE09B52FEC1BFB2EB6B3E29B15B7F89DF12043A96B68DBBCCD22D9549B5D38E7003C41DDE5C0FF005D348BB9D238DABEE2AF73C4DE24C3E618F865F977FBAE163ECE9DB676B294BCEF6493EAA29EED9C990E06A50A2EB623F8951F34BCBB2F90514515F9A9EE851451401F2DFF00C158BFE09A7A3FFC14ABF677FEC359ACB48F1D786DA4BEF0AEB33A129693B28125BCCCA0BFD9A7088B2050482914815DA2553F929FF04AEFF829AF8C3FE0905FB406B9F073E33E93AD69FE021AAB5BEB9A5CD119AF7C157EDB49BDB754DDE75B48A51E48E22C258D92E2DCBB12973FD07D7C77FF000569FF0082447857FE0A4FF0F9752B292CFC33F163C3F6C62D0FC42D19F2AEA204BFD82F828DD25B333315700C903B9740CAD2C337EA5C11C6383A785970E710479F0555E8FED5293FB51F2BEAD2D9DDA4EF28CBE7F36CB2ACAA2C7609DAAC56DD24BB3FD3FE19AF1DFF0082B65D7C4EFDA0FC53A19F0E7893E20A7EC8D73F0FEEBC4FE37D5FE1E7D82EEE3C450813325A58CC034B2BCF1B5BA95665B5682691DCBAC7201E43FF0004D9F891E1FF00DBEBE3BE83A569373A7FC50F87D6FA4CFA7F8B344F8EA3C31AB7899ACADCEFB2934A1656A2EE68A392652C6F375BA99660844855DBE55FD903F6FBF8E9FF000431F8F975F0D7E20786F55BAF0924A6E353F075FCE142472B37FC4C34AB8E63019C3B650982665951BCB9732C5FB09FF04E1D63F65FF8EFA9789FE30FC05D23C2BA7F897C5B05BC3E294B3B6165A9583EE964115CD9E76DBC8F21959E48D42DCB461F7CC111C7D771160EB70EE52E83A2AA51E5FDC57A49723726EF2A9D55469AB4D49A7CB151D136B8B03888636BF327CB3BFBF097C4AD6DBFBBE56EAEE7B57C15FD93FE17FECDB7DAA5D7C3CF875E07F02DC6B7E58BF7D0343B6D34DD88C108AFE4A2E5572C42F405DCE32CC4FA0515F3C7FC1537C41F077C31FB14F8B2F7E39DBCBA87816DE3590E996DA95C69F79ACDDAE5A0B3B692DE58A532CAC366D0E14A97DE4461C8FC470B0AD9863614EAB94E536A374B9E6EF64AC9B5CCFA24E4BB5D1F4F5251A54DCB4492BF65FF0000F12FDB13F691D73E377EDABA4FC2EF867AF788AF3C41E02D57C3F702CBC317CC90DBDECBA809F52BBD6E48C8F2F4FB4D2ADDE2104A765E4BABBC4A8D3C113C37BFE09C3FF0565B8FDB47F6E6F8F5F0AF50B086DED7C0FA85C4BE169ECED9BCA9F4DB4BAFB0CCF3CA4FFAD92531CA8085CA4ACA07EE989FCE7F08FF00C14BB4BFD9E7FE09A3E38F0EDBDBEA9E14F88DF14BC753F88345B5F86E8DE1FD034BB48ADB4C896D9750B78D15ADE15805B4A96121B97F28ABDC42F29B8AFB0FFE0D91FDA4BE15EBDFB269F859A21B5B0F8ABE1E9AF356F134725BC70CFAE472DECBE4DD248A7370B0C0F6D03E70D11D8A40578D9FF62CF383FF00B3B87B115EB615C95371A7092DD3D1D4AB7B7C1CD1E54ACF59CAD2B3B2F9DC3E68AB6329D285449B4E4D797D98FAEB7EFA6C7E9DD7CA9FF05BFBD7B0FF008253FC679230A59B478A23B86787BB810FE3863F8D7D575F97BFF07327883C6DE11FD9D11ADFE2DD8786FC0BE248AD7486F02C7A44525FF8B6F96F166924FB593E6C36F0DBA891B67CACD12C6D9138C7E73C0781FADF10E0E8F328FEF20F55277E59276F75377696EED15BC9A576BD6CE2AFB3C15595BECBEDDBCDAFEB63D2BF608FF8291FC2BFD9F7FE09CBFB2FE99E30D6F528757F17786A3D0F45D3B4BD26F35CD43509F4FC5A4A91DAD9C52DC101A360088CA8DBB739DA1BEF4B3BA5BEB48A64122A4C81D4491B46E0119E5580653EC4023B8AFCAFFF008208FED5DFB327C07FD90FC27A36ADE21F03FC3FF8B5AC5BDDCBAE5DEBD0FF00645D6B717F69DE25BF977D70A91DD44021554865754749536AC8B228FD3AF87DF11FC3DF167C2367E20F0AEBDA2F89B41D414B5AEA5A4DEC7796772012A4A4B1B32300411C13C822BAB8F72B8E1335C446146A457B4A9794D5A32BCE4D72AE55656D9F34B9ADCCB9765394E21D5C34252926F963A2E9A2DFFE18F31FDAEBFE09F9F0B3F6E4BAF0ADCFC46D0F51D4AFBC13712DD6877961AD5EE9773A7492342D232496B2C6724DBC2727254C60A953CD7E7AFF00C153AFBE2C7ED77E21F155AAFC08F89DE2EB1B7BCD47C11F0DFC3771A14D1E8F6F3BC62CAEBC63A8484793E67FA5BC5A6ACCE161413DD308F2597F59BC43E21D3FC25A0DF6ABAB5F59E99A5E996F25DDE5E5DCCB0DBDA431A967924762151154162CC40001278AFC7AFF0082AC7FC1C836DFD99AAF807F676BD3B8936FA8FC4074DB1448061D34D471F3127E5FB5380A02B1895F7A4E9EC78714F3AC6E3E9D1C0D275952F85CE5254E9293BC9DD3F7799FC4A3EF4973249B6CE7CEAB61685094AB4B979B7B257976F5B74BEDA76377F6CAFF0082996A5FF0494FD87BC1DFB37F87BC670F8F3F683D27408B4ED675E46FB45AF83A375DEA72E0196E123748EDA291722248E79D4031C571C4FF00C1BF3FF0489D4BC6FE2AD27F68EF8AFA7CCDA6C530D57C15A76A7996E358B963E62EB73EFCB6C0C77DBB3E5A5908B8185586496BFF00C120BFE0815AC7C4FF00145AFC5BFDA3F47BC8F48698EA3A7783B590ED7DAFDC3B7986EB56593E7111625CDB49FBC9DC9F3C2C61E29FF6C5116240AAA155460003815F43C59C5181C8F095B23C866AA56ACDBC457492E66EF7842DA28EAD597BB14DA5793935E7E5F97D6C5D58E2F189C630F820FA7F7A5DDFA8B451457E1C7D60514514005145140051451401E43FB657EC2FF0CFF6F3F864DE17F891E1F87548A1590E9BA8C27C9D4B4495C0066B59C0DD1B655095398E4D8164475CA9FC54FDAB7FE089BFB447FC134BE242FC46F82FAC788BC63A2E92ECF67ADF854490788B4A84B2931DD59C7969A33C2B987CD8E45476962890EDAFE8268AFB9E13F10334C853A145AA9425F1529EB077DECBA37E5A3FB49EC7939964B87C67BF3F766B692D1AF99F893FB15FFC1D2BE20F0B5ADAE8FF001D3C263C596B08F28F897C2E915B6A24A80B99EC9D920918B64B3C5242140C2C2C78AFBEAD7F6AEFD90FFE0AE1F0EECFC17A878B3C1DE32B5BBBFB7BE87C33ACDD4BA46A8D750B864296D298677C3651BCB0D1BABB212E8E43761FB607FC1283E03FEDC12CD7DE37F02D82789261FF002316904E9BAB96DA154C93C58FB40503E54B812A2F65CD7E71FED17FF069FEB119B897E15FC54D2F55B5738874BF1A58340EABEAF7B6AAEAE71D85A28FCF03ED69E2381738A8B134A7532DC45EE9C6F2A6A5DD5B556F2F6691E572671858F24947110F3D256F3BE8FF0013EE6D17FE08DFF0BFC59E18F15691F117C3DA0F8A6DE6F10789AFFC272C36FE4FFC23361AD981E48A180E6059E078808A528E63F291E3319664183FB0CFFC11D345F831E0CF80FE24F88C6CAE3E357C118AFEC21D77C2F7F3C367AA59492EA096F6F3ABA219116DEF413F2AB870C9BDE22EB27E635B7FC1347FE0A0DFB1C2FD9FC163E2343A1E9C418C783BC76B269CE7A0C58FDA51DF03FBD6F803D2AD41FB647FC14DBC067FB3D6D3F680916038F9FE1445A9E7807FD79D3242DFF7D9EFEF5ED54E12CD715427432DCEE854A727777A8E2D5E338C95A3CFCAA6A72E78E89B777A9CF1CD28C249D6C24E324BF96FD53DF4BDACACFA1FD07D7C73FF000523FF0082297C31FF00828DEBEBE2AD4B50D73C23F10EDED22B0875FB098DC472DB465D9209AD6526368D5A591818FCA937372E4654FE5BA7FC140BFE0A697E83C9B4F8ECC376DDF0FC1781867A104FF64903DFD2ABB7813FE0A63FB5285DDFF0D051ACA0C8C926AA9E0D4652390CAD2D9AE307EE11EA36D79B94F86B9A64F8958E866D87A0E3F69547F34D4A318B5DD3767D51AE2B3CA189A7EC6586A934FA38FF00C13EEEF8E9FF000485FD9DFE137FC137FC09F0AFE337C50D1BC3779E0396FEE749F1EDD4D69A25E4971777525D5C46914CEEB242ED22279059D888E2C30902B8F9CFE117FC1587F668FF0082447C18D5FC0BFB3B695E32F8C7E22D5AF9EF752F106AF34BA56977D3EE74477F3141DF145E54605B5A24732C2A4CBBBE73C1FC23FF0083603E3D7C56D7BFB5BE2178BBC13E0B3A87CD757325C4FAFEB1BBFDB4511C4FE99FB51AFBBFF657FF00836F7F67CF8077569A978B2D756F8B5AE5BB2CBFF151C8ABA52B8EA16C620B1C919EE972671FA63D3C6665C3582C34F0F9C667531EA53751D2A6B969B9C9B93BB4ED6726DDA3512BFBDCB7B18D3A598569A9E1B0F1A3A28F34B5959744BFCD795CFCC0D47C67FB5F7FC17C7C7ABA7431DEEB1E15B7BB5DF6F691BE91E09D064529F34CE4BF9D24648701DAE6E9433796B8C8AFD4AFF8267FFC1047E1CFEC3D75A7F8BFC5D25BFC48F8A16C5278350BAB6DBA6E83283BB3636EC4FEF14ED02E25DD2653746200EC87EEAF0F78774FF08E8567A5E936367A5E99A7C4B6F6B69690AC305B46A30A888A02AA81C00000055CAF83E23F13B1B8DC37F666574E384C2EDC94F46D7F7A492BDFAA4927F6B98F5B039052A353EB18893A953F9A5D3D1740A28A2BF323DE0A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2800A28A2803FFFD9);
INSERT INTO `pictures` VALUES ('NO_PIC', NULL);
COMMIT;

-- ----------------------------
-- Table structure for previewapp
-- ----------------------------
DROP TABLE IF EXISTS `previewapp`;
CREATE TABLE `previewapp` (
  `parent_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `agreement` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`parent_id`,`course_id`),
  KEY `preview_course_id` (`course_id`),
  CONSTRAINT `preview_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `preview_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of previewapp
-- ----------------------------
BEGIN;
INSERT INTO `previewapp` VALUES ('0parent0', '112', 'YES');
INSERT INTO `previewapp` VALUES ('0parent0', '130', 'NO');
INSERT INTO `previewapp` VALUES ('0parent0', '131', 'NO');
INSERT INTO `previewapp` VALUES ('0parent0', '133', 'NO');
INSERT INTO `previewapp` VALUES ('0parent0', '134', 'NO');
INSERT INTO `previewapp` VALUES ('0parent1', '130', 'YES');
INSERT INTO `previewapp` VALUES ('0parent1', '131', 'YES');
INSERT INTO `previewapp` VALUES ('0parent1', '133', 'YES');
INSERT INTO `previewapp` VALUES ('0parent1', '134', 'YES');
COMMIT;

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase` (
  `parent_id` varchar(255) NOT NULL,
  `course_id` varchar(255) NOT NULL,
  `purchased` enum('YES','NO') DEFAULT NULL,
  PRIMARY KEY (`parent_id`,`course_id`),
  KEY `purchase_course_id` (`course_id`),
  CONSTRAINT `purchase_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `purchase_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of purchase
-- ----------------------------
BEGIN;
INSERT INTO `purchase` VALUES ('0parent0', '130', 'YES');
INSERT INTO `purchase` VALUES ('0parent0', '131', 'NO');
INSERT INTO `purchase` VALUES ('0parent0', '133', 'YES');
INSERT INTO `purchase` VALUES ('0parent0', '134', 'NO');
INSERT INTO `purchase` VALUES ('0parent1', '130', 'YES');
INSERT INTO `purchase` VALUES ('0parent1', '131', 'NO');
INSERT INTO `purchase` VALUES ('0parent1', '133', 'NO');
INSERT INTO `purchase` VALUES ('0parent1', '134', 'NO');
COMMIT;

-- ----------------------------
-- Table structure for sysadmin
-- ----------------------------
DROP TABLE IF EXISTS `sysadmin`;
CREATE TABLE `sysadmin` (
  `user_name` varchar(255) NOT NULL,
  `page_item_count` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  CONSTRAINT `user_name_sysadmin` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sysadmin
-- ----------------------------
BEGIN;
INSERT INTO `sysadmin` VALUES ('sysadmin1', '1');
INSERT INTO `sysadmin` VALUES ('sysadmin2', '2');
INSERT INTO `sysadmin` VALUES ('sysadmin3', '3');
COMMIT;

-- ----------------------------
-- Table structure for teachcomment
-- ----------------------------
DROP TABLE IF EXISTS `teachcomment`;
CREATE TABLE `teachcomment` (
  `teach_id` varchar(255) NOT NULL,
  `publisher` varchar(255) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `score` decimal(10,0) DEFAULT NULL,
  `picture_id` varchar(255) DEFAULT NULL,
  `course_id` varchar(255) NOT NULL,
  PRIMARY KEY (`teach_id`,`publisher`,`course_id`) USING BTREE,
  KEY `tcomment_publisher` (`publisher`),
  KEY `tcomment_picture_id` (`picture_id`),
  KEY `tcomment_course_id` (`course_id`),
  CONSTRAINT `tcomment_course_id` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tcomment_picture_id` FOREIGN KEY (`picture_id`) REFERENCES `pictures` (`picture_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tcomment_publisher` FOREIGN KEY (`publisher`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `tcomment_teachid` FOREIGN KEY (`teach_id`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teachcomment
-- ----------------------------
BEGIN;
INSERT INTO `teachcomment` VALUES ('0teacher1', '0parent1', '老师人很好', 2, 'NO_PIC', '130');
INSERT INTO `teachcomment` VALUES ('0teacher1', '0parent1', '老师人很好，认真负责，还会来选课的', 1, 'NO_PIC', '131');
INSERT INTO `teachcomment` VALUES ('0teacher1', '0parent1', '一般般吧', 3, 'NO_PIC', '133');
INSERT INTO `teachcomment` VALUES ('0teacher1', '0parent1', '老师耐心', 0, 'NO_PIC', '134');
COMMIT;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `user_name` varchar(255) NOT NULL,
  `tea_name` varchar(255) DEFAULT NULL,
  `tea_gender` enum('MALE','FEMALE') DEFAULT NULL,
  `tea_birthday` date DEFAULT NULL,
  `tea_id_number` varchar(255) DEFAULT NULL,
  `tea_contact` varchar(255) DEFAULT NULL,
  `tea_introduction` text,
  `edu_field` varchar(255) DEFAULT NULL,
  `edu_year` decimal(10,0) DEFAULT NULL,
  `edu_age` decimal(10,0) DEFAULT NULL,
  `qualified` enum('YES','CHECK','NO') DEFAULT NULL,
  PRIMARY KEY (`user_name`) USING BTREE,
  CONSTRAINT `user_name_teacher` FOREIGN KEY (`user_name`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
BEGIN;
INSERT INTO `teacher` VALUES ('0teacher', '刘星红', 'FEMALE', '2019-06-27', '322283199803120211', '13905286555', '我爱化学！', 'CHEMISTRY', 12, 8, 'YES');
INSERT INTO `teacher` VALUES ('0teacher1', '庄浩华', 'MALE', '2019-06-27', '321182199804030011', '15952118987', '大家好，我喜欢唱。', 'PHYSICS', 12, 6, 'YES');
INSERT INTO `teacher` VALUES ('1YSj6O', 'nIP82e', 'FEMALE', '2019-06-27', '452644199603283990', '14133829270', '17y3B1', 'DEFAULT', 6, 24, 'YES');
INSERT INTO `teacher` VALUES ('27gdp3', 'T4Rpf2', 'MALE', '2019-06-27', '607588199506211576', '14147415866', 'fm8K61', 'DEFAULT', 19, 32, 'YES');
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
INSERT INTO `teacher` VALUES ('sysadmin2', '45', 'FEMALE', '2019-06-27', '321182199809040011', '43', '34', 'DEFAULT', 345, 43, 'NO');
INSERT INTO `teacher` VALUES ('Uli76e', '8124r5', 'MALE', '1900-01-19', '411649197107124539', '18693453331', 'Yb72D2', 'CHEMISTRY', 7, 55, 'YES');
INSERT INTO `teacher` VALUES ('uU7uX0', 'YF37h0', 'FEMALE', '1900-01-20', '397473200006116110', '14478806772', 'IV76D3', 'DEFAULT', 23, 43, 'YES');
INSERT INTO `teacher` VALUES ('V06427', '60580h', 'MALE', '1900-01-20', '389191200009199718', '18467219673', '540J2V', 'DEFAULT', 5, 57, 'YES');
INSERT INTO `teacher` VALUES ('w4326u', 'TKVqKa', 'FEMALE', '1900-01-19', '457407198609149641', '18673548453', '76054X', 'DEFAULT', 16, 36, 'YES');
INSERT INTO `teacher` VALUES ('w5U8i5', '58RO1k', 'MALE', '1900-01-19', '841263199001199222', '13714512831', '4kQ7j6', 'BIOLOGY', 9, 57, 'NO');
INSERT INTO `teacher` VALUES ('wCkApg', 'F78qF4', 'MALE', '1900-01-19', '160774197105297014', '17341208092', '356gS0', 'DEFAULT', 12, 49, 'YES');
INSERT INTO `teacher` VALUES ('Wn7q51', '330Sa7', 'FEMALE', '1900-01-19', '805718199005192442', '14413209594', 'WKh7v8', 'DEFAULT', 4, 49, 'YES');
COMMIT;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `title` varchar(255) NOT NULL,
  `video_id` varchar(255) NOT NULL,
  `time` datetime DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `publisher` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `video` (`publisher`),
  CONSTRAINT `video` FOREIGN KEY (`publisher`) REFERENCES `account` (`user_name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of video
-- ----------------------------
BEGIN;
INSERT INTO `video` VALUES ('【老番茄】我毕业啦！！', '20190627212000sysadmin1', '2019-06-27 21:19:38', 'https://www.bilibili.com/video/av56728862/', 'sysadmin1');
INSERT INTO `video` VALUES ('罗汉鬼套路：LOL一个挨打就能赢的套路！ ', '20190627212024sysadmin1', '2019-06-27 21:20:12', 'https://www.bilibili.com/video/av56784804/', 'sysadmin1');
INSERT INTO `video` VALUES ('[全36集][日本大叔用中文教日语][出口仁][大家学标准日本语][初级][中级][高级][中日双字][日语入门][日语教程] ', '20190627212040sysadmin1', '2019-06-27 21:20:31', 'https://www.bilibili.com/video/av56627825/', 'sysadmin1');
INSERT INTO `video` VALUES ('走出自闭，在地铁当众跳舞是什么体验？【欣小萌】 ', '20190627212140sysadmin1', '2019-06-27 21:21:33', 'https://www.bilibili.com/video/av56643023/', 'sysadmin1');
INSERT INTO `video` VALUES ('灵感爆发！一年来的全部实力，好听哭了？ ', '20190627212157sysadmin1', '2019-06-27 21:21:51', 'https://www.bilibili.com/video/av56471791/', 'sysadmin1');
INSERT INTO `video` VALUES ('试吃“象拔蚌刺身”，这长相也太夸张了吧，结果味道竟超好吃\r\n', 'qweqw', '2019-06-26 21:40:26', 'https://www.bilibili.com/video/av56838725', 'sysadmin2');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
