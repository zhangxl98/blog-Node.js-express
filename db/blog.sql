/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50703
 Source Host           : localhost:3306
 Source Schema         : blog

 Target Server Type    : MySQL
 Target Server Version : 50703
 File Encoding         : 65001

 Date: 04/07/2018 20:06:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for article_table
-- ----------------------------
DROP TABLE IF EXISTS `article_table`;
CREATE TABLE `article_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(16) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `author_src` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `post_time` int(11) NOT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `summary` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `n_like` int(11) UNSIGNED NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of article_table
-- ----------------------------
INSERT INTO `article_table` VALUES (1, 'root', 'img/head_1.jpg', '《巧克力与香子兰》再创黄油界奇迹 销量突破200万', 1530693899, '『巧克力与香子兰』讲述出生在和果子世家的水无月嘉祥打算自立门户，以西点师身份开了一家名为“La Soleil”的蛋糕店。由于舍不得家里的人形猫巧克力和香子兰跟着自己受苦，于是把她们留在了老家。没想到从送来的快递中发现了她们的身影，她们死活都要留在最疼爱她们的主人身边，并且为了主人而努力考证。他的妹妹水无月时雨也带着自己的猫咪登场，暗中帮助哥哥。通过众筹完成的画师Tam-UOVA由由FelixFilm制作，由立花慎之介为水无月嘉祥配音，朋永真季为巧克力配音，猪口有佳为香子兰配音，其他声优还有永井真衣、成濑未亚、小仓结衣、冈嶋妙以及立石惠等。漫画版由画师Tam-U绘制，在角川『电击G’s comic』上连载。', '『巧克力与香子兰』是NEKO WORKs公司制作的美少女游戏，2014年诞生以来吸引大批绅士吸猫，随后又有推出OVA和漫画版。目前销量已经突破200万，『TECHGIAN』6月号将刊登其大特集。', 6);
INSERT INTO `article_table` VALUES (2, 'root', 'img/head_1.jpg', '死宅钱真好骗！碧蓝幻想&Denon合作联名耳机发售', 1530694090, '以Hi-End音响、扩大机及高级耳机为主要营运项目，于1910年就创立至今的著名日本厂商“DENON”，于日前宣布和热门手机游戏《碧蓝幻想》进行合作，将推出全新限量联名款AH-GC20/GBF耳机，其相关发售情报一并在网络上得到了释出。\r\n死宅钱真好骗！碧蓝幻想&Denon合作联名耳机发售\r\n\r\n这次联名款耳机同样以热销机种AH-GC20为基础，并采用特制BOX来进行包装、但在耳机本体上没有太大变动。耳机内建的系统语音会改成特别收录的“ゼタ”（花泽香菜）、“ベアトリクス”（平野绫）、“バザラガ”（立木文彦）及“ユーステス （中井和哉）声音，并额外附有游戏特典武器序号、mimimamo、透明资料夹等体特典，预计在5月30日上市，售价为35,640日圆（含税）！\r\n死宅钱真好骗！碧蓝幻想&Denon合作联名耳机发售\r\n\r\nAH-GC20作为目前主流的蓝牙降噪耳机，将采用噪声相位消除方式来作为降噪设计，搭配上全新40mm驱动单元、让使用者可以得到更加完美的低频表现。且作为方便外出时使用的蓝牙耳机，其重量仅有275克，并在耳机两侧配有完善的操纵按钮及高品质麦克风。电力方面则在同时开启降噪及蓝牙通讯功能下，能够持续使用约20小时左右，已应付一般外出情况。', '以Hi-End音响、扩大机及高级耳机为主要营运项目，于1910年就创立至今的著名日本厂商“DENON”，于日前宣布和热门手机游戏《碧蓝幻想》进行合作，将推出全新限量联名款AH-GC20/GBF耳机，其相关发售情报一并在网络上得到了释出。', 0);
INSERT INTO `article_table` VALUES (3, 'root', 'img/head_1.jpg', '只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开', 1530694210, '“我名为Queen Elizabeth class Battleship Warspite！”出自超人气网页游戏《舰队Collection》，伊丽莎白女王级2号舰“厌战号(Warspite)”继黏土人化后，现在也将以1/8比例模型的方式华丽登场。以收录在“舰娘型录 贰”中的立绘为设计，将其腰杆挺直的英勇站姿立体化，更加精致的舰装不只可调整开阖的角度，砲塔部份也采可动设计，能依照自己喜爱的角度把玩。快将这款历经无数战役，拥有如其称号老女士般美丽的厌战号带回家吧！\r\n只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开\r\n\r\n只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开\r\n\r\n只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开\r\n\r\n只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开\r\n\r\n只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开\r\n\r\n只要1万8女王带回家！舰队Collection“厌战号”手办涂装公开\r\n\r\n商品名称：厌战号\r\n作品名称：舰队Collection\r\n分类：WONDERFUL HOBBY SELECTION\r\n商品规格：ABS&PVC 涂装完成品・1/8比例模型・附专用台座\r\n全高：约240mm\r\n原型制作：コケ\r\n色彩：西部秀寿\r\n价格：18,333日圆 +消费税\r\n发售日期：2018/12\r\n制造商：Good Smile Company', '“我名为Queen Elizabeth class Battleship Warspite！”出自超人气网页游戏《舰队Collection》，伊丽莎白女王级2号舰“厌战号(Warspite)”继黏土人化后，现在也将以1/8比例模型的方式华丽登场。', 0);
INSERT INTO `article_table` VALUES (4, 'root', 'img/head_1.jpg', '黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞', 1530694246, '因2010年“札幌雪祭”制作纯白的“初音未来”雪雕为契机诞生的“雪未来”，是宣传冬季北海道的形象大使，现在每年北海道都举办以她为主角的“SNOW MIKU”祭典。2018年届满9周年的雪未来，服装造型于投稿网站“piapro”上募集，并由niconico生放送的观众与WEB票选决定，本次主题为“以北海道白雪为意象设计的“动物”，由鲷ちゃどん描绘出以丹顶鹤为意象设计，充满神秘氛围的雪未来正式黏土人化。\r\n黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞\r\n\r\n黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞\r\n\r\n黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞\r\n\r\n黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞\r\n\r\n黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞\r\n\r\n黏土人“雪未来”迎向9周年！以丹顶巫女的造型为大家献上祈福之舞\r\n\r\n除了巫女服上的兜帽可拿下之外，表情并有“普通脸”、带点虚幻氛围的“微笑脸”以及抹上浅浅一层口红充满高雅气质的“祈祷脸”，可搭配绑着绳子的“神乐铃”与“桧扇”赏玩献舞时的模样，另附有来摆放舞乐道具的“桧台”以及正坐用的下半身零件，掌心上的“冰纸鹤”造型也相当细致，再加上鸟居以及铺着石砖的豪华专用台座，更加提升整体气氛，石砖上的“积雪”配件也能取下，搭配“竹扫帚”就能摆出扫去积雪的模样喔！\r\n商品名称：黏土人 雪未来 丹顶巫女Ver.\r\n作品名称：Character Vocal系列01 初音未来\r\n全高：约100mm\r\n原型制作：井口慎也\r\n色彩：ねんどろん\r\n价格：5,556日圆+消费税\r\n发售日期：2018/02\r\n制造商：Good Smile Company', '因2010年“札幌雪祭”制作纯白的“初音未来”雪雕为契机诞生的“雪未来”，是宣传冬季北海道的形象大使，现在每年北海道都举办以她为主角的“SNOW MIKU”祭典', 0);

-- ----------------------------
-- Table structure for banner_table
-- ----------------------------
DROP TABLE IF EXISTS `banner_table`;
CREATE TABLE `banner_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `sub_title` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `banner_src` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of banner_table
-- ----------------------------
INSERT INTO `banner_table` VALUES (1, '舰娘', '岛风', 'images/banner_1.jpg');
INSERT INTO `banner_table` VALUES (2, '约会大作战', '狂三', 'images/banner_2.jpg');
INSERT INTO `banner_table` VALUES (3, '东方Project', '洩矢诹访子', 'images/banner_3.jpg');

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table`  (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_src` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`ID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

SET FOREIGN_KEY_CHECKS = 1;
