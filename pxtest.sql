/*
Navicat MySQL Data Transfer

Source Server         : MySQL_ローカル
Source Server Version : 50141
Source Host           : localhost:3306
Source Database       : pxtest

Target Server Type    : MYSQL
Target Server Version : 50141
File Encoding         : 65001

Date: 2013-03-09 13:08:35
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `address`
-- ----------------------------
DROP TABLE IF EXISTS `address`;
CREATE TABLE `address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `name` text NOT NULL,
  `name_kana` text NOT NULL,
  `phone` varchar(13) NOT NULL,
  `zip` varchar(8) NOT NULL,
  `pref` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text,
  `address_type` tinyint(1) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of address
-- ----------------------------
INSERT INTO address VALUES ('1', '1', '宇野佑太', 'うのゆうた', '09012345678', '064-0824', '北海道', '札幌市中央区北4条西28丁目', '1-10', '0');
INSERT INTO address VALUES ('2', '2', '美しい魔闘家鈴木', 'うつくしいまとうかすずき', '09064867358', '958-0061', '新潟県', '岩船郡粟島浦村', '粟島浦村一円', '1');
INSERT INTO address VALUES ('3', '3', 'イワークたけし', 'いわーくたけし', '0120111111', '100-1401', '東京都', '八丈島八丈町大賀郷', '169', '0');

-- ----------------------------
-- Table structure for `admin`
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` text NOT NULL,
  `authority` int(11) NOT NULL,
  PRIMARY KEY (`admin_id`),
  UNIQUE KEY `login_id` (`login_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO admin VALUES ('1', 'root', 'admin', '管理者マスター', '0');
INSERT INTO admin VALUES ('2', 'uno', 'admin', '宇野', '1');
INSERT INTO admin VALUES ('3', 'okamoto', 'admin', '岡本', '1');
INSERT INTO admin VALUES ('4', 'ishii', 'admin', '石井', '1');
INSERT INTO admin VALUES ('5', 'okada', 'admin', '岡田', '1');

-- ----------------------------
-- Table structure for `category`
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO category VALUES ('1', '醤油');
INSERT INTO category VALUES ('2', '味噌');
INSERT INTO category VALUES ('3', '塩');
INSERT INTO category VALUES ('4', '坦々');
INSERT INTO category VALUES ('5', 'その他');

-- ----------------------------
-- Table structure for `goods`
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `goods_code` char(8) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` text,
  `category_id` int(11) NOT NULL,
  `shop_id` int(4) unsigned zerofill NOT NULL,
  `stock` int(11) NOT NULL,
  `entry_date` datetime NOT NULL,
  PRIMARY KEY (`goods_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO goods VALUES ('00010001', '○岡屋 醤油ラーメン', '750', 'common/img/20017971.jpg', '○岡屋の名物、醤油ラーメンです。', '1', '0001', '1000', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00010002', '○岡屋 味噌ラーメン', '780', 'common/img/20017984.jpg', '○岡屋 自慢の味噌ラーメンです。', '2', '0001', '1000', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00010003', '○岡屋 塩ラーメン', '780', 'common/img/20017996.jpg', '○岡屋 塩ラーメンです。', '3', '0001', '1000', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00010004', '○岡屋 担担麺', '850', 'common/img/20018014.jpg', '○岡屋 担担麺です。', '4', '0001', '500', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00020001', '花の屋台 醤油ラーメン', '630', 'common/img/18353127.jpg', '花の屋台の名物、醤油ラーメンです。', '1', '0002', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00020002', '花の屋台 味噌ラーメン', '630', 'common/img/18451446.jpg', '花の屋台 自慢の味噌ラーメンです。', '2', '0002', '50', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00020004', '花の屋台 担担麺', '700', 'common/img/18451459.jpg', '花の屋台 担担麺です。', '4', '0002', '0', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00030001', '三風堂 醤油ラーメン', '780', 'common/img/11248114.jpg', '三風堂の名物、醤油ラーメンです。', '1', '0003', '100', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00030002', '三風堂 味噌ラーメン', '800', 'common/img/11248136.jpg', '三風堂 自慢の味噌ラーメンです。', '2', '0003', '100', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00030003', '三風堂 塩ラーメン', '800', 'common/img/11248147.jpg', '三風堂 塩ラーメンです。', '3', '0003', '100', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00030004', '三風堂 担担麺', '820', 'common/img/11248123.jpg', '三風堂 担担麺です。', '4', '0003', '50', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00040001', '味のクラーク像 醤油ラーメン', '800', 'common/img/16482688.jpg', '味のクラーク像の名物、醤油ラーメンです。', '1', '0004', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00040002', '味のクラーク像 味噌ラーメン', '830', 'common/img/16482712.jpg', '味のクラーク像 自慢の味噌ラーメンです。', '2', '0004', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00040003', '味のクラーク像 塩ラーメン', '800', 'common/img/16482704.jpg', '味のクラーク像 塩ラーメンです。', '3', '0004', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00050001', '虎徹 醤油ラーメン', '850', 'common/img/14684942.jpg', '人気メニュー！あっさり朝に食べたいお味です。', '1', '0005', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00050002', '虎徹 味噌ラーメン', '850', 'common/img/14684924.jpg', '虎徹 自慢の味噌ラーメンです。', '2', '0005', '0', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00050003', '虎徹 塩ラーメン', '850', 'common/img/14684964.jpg', '当店の自慢 透明な薄味スープの塩ラーメン！', '3', '0005', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00060001', '小心 醤油ラーメン', '750', 'common/img/15143126.jpg', '小心の名物、醤油ラーメンです。', '1', '0006', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00060002', '小心 味噌ラーメン', '780', 'common/img/15143114.jpg', '小心 自慢の味噌ラーメンです。', '2', '0006', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00060003', '小心 塩ラーメン', '780', 'common/img/15143141.jpg', '小心 塩ラーメンです。', '3', '0006', '10', '2013-03-09 13:00:32');
INSERT INTO goods VALUES ('00060004', '小心 担担麺', '780', 'common/img/15143154.jpg', '小心 担担麺です。', '4', '0006', '10', '2013-03-09 13:00:32');

-- ----------------------------
-- Table structure for `order_goods`
-- ----------------------------
DROP TABLE IF EXISTS `order_goods`;
CREATE TABLE `order_goods` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `goods_code` char(8) NOT NULL,
  `quantity` int(11) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of order_goods
-- ----------------------------
INSERT INTO order_goods VALUES ('1', '1', '00010001', '1');
INSERT INTO order_goods VALUES ('2', '1', '00010002', '1');
INSERT INTO order_goods VALUES ('3', '2', '00010001', '2');
INSERT INTO order_goods VALUES ('4', '2', '00010003', '1');
INSERT INTO order_goods VALUES ('5', '3', '00010001', '1');
INSERT INTO order_goods VALUES ('6', '3', '00010003', '2');

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `pay_id` int(11) NOT NULL,
  `payment` text NOT NULL,
  `charge` int(11) NOT NULL,
  PRIMARY KEY (`pay_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of payment
-- ----------------------------
INSERT INTO payment VALUES ('0', '代引き', '315');
INSERT INTO payment VALUES ('1', 'カード', '0');

-- ----------------------------
-- Table structure for `picking`
-- ----------------------------
DROP TABLE IF EXISTS `picking`;
CREATE TABLE `picking` (
  `picking_id` int(11) NOT NULL AUTO_INCREMENT,
  `sales_id` int(11) NOT NULL,
  `custmer` text NOT NULL,
  `sender` text NOT NULL,
  `contact` varchar(13) NOT NULL,
  `zip` varchar(8) NOT NULL,
  `pref` text NOT NULL,
  `address1` text NOT NULL,
  `address2` text NOT NULL,
  `deliver` text NOT NULL,
  `goods_code` char(8) NOT NULL,
  `quantity` int(11) NOT NULL,
  `goods_code2` char(8) DEFAULT NULL,
  `quantity2` int(11) DEFAULT NULL,
  `goods_code3` char(8) DEFAULT NULL,
  `quantity3` int(11) DEFAULT NULL,
  `goods_code4` char(8) DEFAULT NULL,
  `quantity4` int(11) DEFAULT NULL,
  `goods_code5` char(8) DEFAULT NULL,
  `quantity5` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  PRIMARY KEY (`picking_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of picking
-- ----------------------------
INSERT INTO picking VALUES ('1', '1', 'コエンマ', 'エンマ', '0120-123-4876', '958-0061', '新潟県', '岩船郡粟島浦村', '粟島浦村一円', '16:00-18:00', '00020001', '3', null, null, null, null, null, null, null, null, '0');
INSERT INTO picking VALUES ('2', '2', '美しい魔闘家鈴木', '美しい魔闘家鈴木', '080-5468-3457', '141-0021', '東京都', '品川区上大崎', '1-57', '09:00-12:00', '00010001', '5', '00010002', '2', '00010003', '1', '00020001', '3', '00030001', '3', '0');
INSERT INTO picking VALUES ('3', '3', 'イワークたけし', 'スターミーかすみ', '090-3649-5721', '060-0052', '北海道', '札幌市中央区南2条', '東2丁目8-1 大都ビル9F', '18:00-20:00', '00060001', '3', '00060002', '5', null, null, null, null, null, null, '0');

-- ----------------------------
-- Table structure for `price`
-- ----------------------------
DROP TABLE IF EXISTS `price`;
CREATE TABLE `price` (
  `price_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_code` char(8) NOT NULL,
  `price` int(11) NOT NULL,
  `entry_date` datetime NOT NULL,
  `end_date` datetime DEFAULT NULL,
  PRIMARY KEY (`price_id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of price
-- ----------------------------
INSERT INTO price VALUES ('1', '00010001', '750', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('2', '00010002', '780', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('3', '00010003', '780', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('4', '00010004', '850', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('5', '00020001', '630', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('6', '00020002', '630', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('7', '00020004', '700', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('8', '00030001', '780', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('9', '00030002', '800', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('10', '00030003', '800', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('11', '00030004', '820', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('12', '00040001', '800', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('13', '00040002', '830', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('14', '00040003', '800', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('15', '00050001', '850', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('16', '00050002', '850', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('17', '00050003', '850', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('18', '00060001', '750', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('19', '00060002', '780', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('20', '00060003', '780', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('21', '00060004', '780', '2013-03-09 13:00:32', null);
INSERT INTO price VALUES ('22', '00040001', '750', '2013-03-01 00:00:00', '2013-04-01 00:00:00');

-- ----------------------------
-- Table structure for `sales`
-- ----------------------------
DROP TABLE IF EXISTS `sales`;
CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `pay_id` int(11) NOT NULL,
  `postage` int(11) NOT NULL,
  `tax` decimal(3,2) NOT NULL,
  `received` datetime NOT NULL,
  PRIMARY KEY (`sales_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sales
-- ----------------------------
INSERT INTO sales VALUES ('1', '1', '0', '500', '0.05', '2013-10-02 01:27:39');
INSERT INTO sales VALUES ('2', '2', '1', '500', '0.05', '2013-10-03 01:27:39');
INSERT INTO sales VALUES ('3', '1', '1', '500', '0.05', '2013-10-05 01:27:39');

-- ----------------------------
-- Table structure for `shop`
-- ----------------------------
DROP TABLE IF EXISTS `shop`;
CREATE TABLE `shop` (
  `shop_id` int(4) unsigned zerofill NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `contents` text NOT NULL,
  `map` text,
  `address` text NOT NULL,
  `phone` varchar(13) DEFAULT NULL,
  `open` text NOT NULL,
  `holiday` text,
  `capacity` int(11) DEFAULT NULL,
  `parking` text,
  `entry_time` datetime NOT NULL,
  PRIMARY KEY (`shop_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of shop
-- ----------------------------
INSERT INTO shop VALUES ('0001', '○岡屋', 'common/img/20018022.jpg', '旨い！安い！臭い！でお馴染み、○岡屋です！', 'http://yashoku-ramen.jp/images/map/map_yoshizu.html', '北海道函館市若松町19-1', '0120-222-2222', '11:00-23:00(L.O.22:30)', '月曜日', '39', '4台', '2013-03-09 13:00:33');
INSERT INTO shop VALUES ('0002', '花の屋台', 'common/img/18451476.jpg', '地元の老舗、花の屋台です。', 'http://yashoku-ramen.jp/images/map/map_yoshizu.html', '札幌市豊平区平岸2条3丁目2-22', '011-823-8542', '11:00-23:00', '不定休', '15', '3台', '2013-03-09 13:00:33');
INSERT INTO shop VALUES ('0003', '三風堂', 'common/img/11248161.jpg', '本場博多とんこつが自慢の三風堂！', 'http://yashoku-ramen.jp/images/map/map_yoshizu.html', '北海道札幌市中央区南4条西5丁目6 第2秀高ビル 60F', '011-252-6777', '11:00-翌3:00', '日曜日', '16', 'なし', '2013-03-09 13:00:33');
INSERT INTO shop VALUES ('0004', '味のクラーク像', 'common/img/16482731.jpg', '北海道のラーメンといえばここ！ 味のクラーク像！', 'http://yashoku-ramen.jp/images/map/map_yoshizu.html', '札幌市中央区大通西8丁目2-39 北大通ビルB24F', '011-281-1102', '11:00-19:30(LO)', '土日祝', '13', 'なし', '2013-03-09 13:00:33');
INSERT INTO shop VALUES ('0005', '虎徹', 'common/img/14684951.jpg', 'ラーメン通なら一度は行きたい、虎徹本店です。', 'http://yashoku-ramen.jp/images/map/map_yoshizu.html', '札幌市豊平区平岸1条9丁目6番1号', '011-815-3130', '平日11:30-15:00 17:00～21:00', '日祝', '12', '8台', '2013-03-09 13:00:33');
INSERT INTO shop VALUES ('0006', '小心', 'common/img/15143163.jpg', '地元に愛されて150年、ラーメン小心です。', 'http://yashoku-ramen.jp/images/map/map_yoshizu.html', '札幌市清田区真栄2条1丁目5-34', '011-888-8888', '11:00～15:00、17:00～20:00<br>土日祝11:00-20:00', '不定休', '8', '3台', '2013-03-09 13:00:33');

-- ----------------------------
-- Table structure for `supplement`
-- ----------------------------
DROP TABLE IF EXISTS `supplement`;
CREATE TABLE `supplement` (
  `supp_id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_code` char(8) NOT NULL,
  `quantity` int(11) NOT NULL,
  `supp_date` datetime NOT NULL,
  PRIMARY KEY (`supp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of supplement
-- ----------------------------
INSERT INTO supplement VALUES ('1', '00020004', '5', '2013-03-09 13:00:33');
INSERT INTO supplement VALUES ('2', '00050002', '10', '2013-03-09 13:00:33');
INSERT INTO supplement VALUES ('3', '00060003', '100', '2013-03-09 13:00:33');

-- ----------------------------
-- Table structure for `tbl_user`
-- ----------------------------
DROP TABLE IF EXISTS `tbl_user`;
CREATE TABLE `tbl_user` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL COMMENT '名前',
  `mail` varchar(255) DEFAULT NULL COMMENT 'メールアドレス',
  `created_dt` datetime DEFAULT NULL COMMENT '登録日時',
  `updated_dt` datetime DEFAULT NULL COMMENT '更新日時',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tbl_user
-- ----------------------------
INSERT INTO tbl_user VALUES ('1', '浅野a', 'asano@xenophy.com', '2013-03-06 19:13:22', '2013-03-08 20:57:07');
INSERT INTO tbl_user VALUES ('2', '浅野更新3', 'asano@xenophy.com', '2013-03-07 19:41:18', '2013-03-08 20:48:15');
INSERT INTO tbl_user VALUES ('3', 'あさの', 'asano@xenophy.com', '2013-03-07 19:49:03', '2013-03-08 20:37:40');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `login_id` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `name` text NOT NULL,
  `name_kana` text NOT NULL,
  `sex` tinyint(1) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `mailaddress` text NOT NULL,
  `job` text,
  `birth` date NOT NULL,
  `magazine` tinyint(1) NOT NULL,
  `entry_time` datetime NOT NULL,
  `update_time` datetime NOT NULL,
  `available` tinyint(1) NOT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `login_id` (`login_id`,`mailaddress`(255))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO user VALUES ('1', 'uno', 'F129B4068B53703F5AF2C6CC08EC23EAE461F91C', '宇野佑太', 'うのゆうた', '0', '090-1234-5678', '090-1234-5679', 'uyuta@example.com', 'アルバイト', '1989-05-11', '0', '2013-03-09 13:00:33', '2013-03-09 13:00:33', '1');
INSERT INTO user VALUES ('2', 'suzuki', '7CB146463EB7368F7FD24653C17FF81D4A430070', '美しい魔闘家鈴木', 'うつくしいまとうかすずき', '0', '090-6486-7358', '090-6486-7359', 'umsuzui@example.com', '格闘家', '1980-07-18', '0', '2013-03-09 13:00:33', '2013-03-09 13:00:33', '1');
INSERT INTO user VALUES ('3', 'takeshi', 'A94A8FE5CCB19BA61C4C0873D391E987982FBBD3', 'イワークたけし', 'いわーくたけし', '0', '0120-111-111', '0120-111-112', 'takeshi@example.com', 'ジムリーダー', '1950-01-01', '1', '2013-03-09 13:00:33', '2013-03-09 13:00:33', '1');
