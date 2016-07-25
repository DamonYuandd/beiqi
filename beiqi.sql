-- Adminer 4.2.1 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

DROP TABLE IF EXISTS `y_access`;
CREATE TABLE `y_access` (
  `nodes` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_admin`;
CREATE TABLE `y_admin` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `is_publish` int(1) DEFAULT '0',
  `create_time` int(11) unsigned DEFAULT '0',
  `update_time` int(11) unsigned DEFAULT '0',
  `last_login_time` int(11) unsigned DEFAULT '0',
  `login_count` int(11) unsigned DEFAULT '0',
  `username` varchar(50) DEFAULT '',
  `realname` varchar(50) DEFAULT '',
  `password` varchar(32) DEFAULT '',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `email` varchar(50) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`) USING BTREE
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_admin` (`id`, `is_publish`, `create_time`, `update_time`, `last_login_time`, `login_count`, `username`, `realname`, `password`, `last_login_ip`, `email`, `remark`) VALUES
(2,	1,	1346841710,	1346841710,	1467859005,	417,	'admin',	'管理员',	'21232f297a57a5a743894a0e4a801fc3',	'221.4.48.100',	'',	'备注信息');

DROP TABLE IF EXISTS `y_advert`;
CREATE TABLE `y_advert` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `width` int(11) DEFAULT NULL,
  `height` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '999',
  `type` int(1) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `flash_img2` varchar(255) DEFAULT NULL,
  `flash_img1` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `net_image` varchar(255) DEFAULT NULL,
  `flash` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `code` text,
  `target` varchar(10) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `content` text,
  `my_id` int(11) NOT NULL,
  `is_top` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_advert` (`id`, `category_id`, `is_publish`, `width`, `height`, `ordernum`, `type`, `begin_time`, `end_time`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `flash_img2`, `flash_img1`, `image`, `net_image`, `flash`, `url`, `code`, `target`, `tag`, `content`, `my_id`, `is_top`) VALUES
(1,	1168,	1,	NULL,	NULL,	999,	2,	1378108563,	1378108563,	1378108563,	1378108563,	'pc',	'zh-cn',	'1',	NULL,	NULL,	'522444930cab2.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(2,	1168,	1,	NULL,	NULL,	999,	2,	1378108552,	1378108552,	1378108552,	1378108552,	'pc',	'zh-cn',	'2',	NULL,	NULL,	'52244487aff28.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(3,	1168,	1,	NULL,	NULL,	999,	2,	1378108543,	1378108543,	1378108543,	1378108543,	'pc',	'zh-cn',	'3',	NULL,	NULL,	'5224447ec7420.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(4,	1168,	1,	NULL,	NULL,	999,	2,	1379325161,	1379325161,	1379325161,	1379325161,	'pc',	'zh-cn',	'04',	NULL,	NULL,	'5236d4e8d0d30.jpg',	'',	NULL,	'',	'',	'_top',	NULL,	'',	0,	0),
(5,	1542,	1,	NULL,	NULL,	9,	2,	1467640807,	1467640807,	1467640807,	1467640807,	'pc',	'zh-cn',	'1',	NULL,	NULL,	'577a6be6b476c.jpg',	'',	NULL,	'#',	'',	'_top',	NULL,	'11',	0,	0),
(6,	1542,	1,	NULL,	NULL,	8,	2,	1467640836,	1467640836,	1467640836,	1467640836,	'pc',	'zh-cn',	'2',	NULL,	NULL,	'577a6c0434b14.jpg',	'',	NULL,	'##',	'',	'_top',	NULL,	'2',	0,	0),
(7,	1542,	1,	NULL,	NULL,	7,	2,	1467640856,	1467640856,	1467640856,	1467640856,	'pc',	'zh-cn',	'3',	NULL,	NULL,	'577a6c1854497.jpg',	'',	NULL,	'##',	'',	'_top',	NULL,	'3',	0,	0);

DROP TABLE IF EXISTS `y_category`;
CREATE TABLE `y_category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) DEFAULT '0',
  `is_publish` int(1) DEFAULT '1',
  `is_default` int(1) NOT NULL DEFAULT '0',
  `is_nav` int(1) NOT NULL DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_delete` int(1) DEFAULT '1',
  `is_fixed` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '50',
  `list_count` int(11) DEFAULT '1',
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(10) NOT NULL,
  `levels` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL DEFAULT '无标题',
  `image` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `module` varchar(255) NOT NULL,
  `color` varchar(10) NOT NULL,
  `burl` varchar(255) NOT NULL,
  `furl` varchar(255) NOT NULL,
  `tag` varchar(255) NOT NULL,
  `tpl_one` varchar(20) NOT NULL,
  `description` text NOT NULL,
  `my_id` int(11) NOT NULL,
  `is_mobile` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_category` (`id`, `pid`, `is_publish`, `is_default`, `is_nav`, `is_comment`, `is_delete`, `is_fixed`, `ordernum`, `list_count`, `hardware`, `lang`, `levels`, `title`, `image`, `alias`, `module`, `color`, `burl`, `furl`, `tag`, `tpl_one`, `description`, `my_id`, `is_mobile`) VALUES
(20,	12,	1,	0,	1,	0,	0,	1,	13,	36,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4ea7\\u54c1\\u5c55\\u793a\"}}',	'',	'Goods',	'Goods',	'',	'',	'',	'',	'auto',	'',	20,	1),
(19,	12,	1,	0,	1,	0,	0,	1,	10,	19,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u65b0\\u95fb\\u52a8\\u6001\"}}',	'',	'News',	'News',	'',	'',	'',	'',	'auto',	'',	19,	1),
(36,	12,	1,	0,	1,	0,	0,	1,	14,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5173\\u4e8e\\u6211\\u4eec\"}}',	'',	'About',	'About',	'',	'',	'',	'',	'auto',	'',	36,	0),
(34,	30000,	0,	0,	0,	0,	0,	1,	46,	0,	'pc',	'zh-cn',	'12|30',	'邮箱设置',	'',	'Email',	'',	'',	'',	'',	'',	'',	'',	34000,	0),
(205,	27,	1,	0,	0,	0,	0,	0,	30,	2,	'pc',	'zh-cn',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	205,	0),
(469,	22,	1,	0,	0,	0,	0,	0,	31,	6,	'pc',	'zh-cn',	'12|22',	'添加网点',	'',	'Market/index',	'',	'',	'',	'',	'',	'list',	'',	469,	1),
(21,	12,	1,	0,	1,	0,	0,	1,	9,	-7,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5728\\u7ebf\\u7559\\u8a00\"}}',	'',	'Guestbook',	'Guestbook',	'',	'',	'',	'',	'auto',	'',	21,	1),
(220,	21,	1,	0,	0,	0,	0,	0,	30,	-6,	'pc',	'zh-cn',	'12|21',	'回复留言',	'',	'Guestbook/view',	'',	'',	'',	'',	'',	'list',	'',	220,	1),
(499,	497,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|19|497',	'置顶',	'',	'news_istop',	'',	'',	'',	'',	'',	'list',	'',	499,	0),
(498,	497,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|19|497',	'首页',	'',	'news_ishome',	'',	'',	'',	'',	'',	'list',	'',	498,	0),
(22,	12,	0,	0,	0,	0,	0,	1,	11,	31,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u670d\\u52a1\\u7f51\\u70b9\"}}',	'',	'Market',	'Market',	'',	'',	'',	'',	'auto',	'',	22,	1),
(467,	25,	1,	0,	0,	0,	0,	1,	30,	0,	'pc',	'zh-cn',	'12|25',	'加盟申请',	'',	'Join/apply',	'',	'',	'',	'',	'',	'list',	'',	467,	0),
(12,	0,	1,	0,	0,	0,	0,	1,	50,	127,	'pc',	'zh-cn',	'',	'网站后台',	'',	'Module',	'',	'',	'',	'',	'',	'auto',	'',	12,	1),
(500,	497,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|19|497',	'已发布',	'',	'news_ispublish1',	'',	'',	'',	'',	'',	'list',	'',	500,	0),
(501,	497,	1,	0,	0,	0,	0,	1,	1,	0,	'pc',	'zh-cn',	'12|19|497',	'未发布',	'',	'news_ispublish0',	'',	'',	'',	'',	'',	'list',	'',	501,	0),
(1211,	23,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|23',	'首页多图片切换',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(513,	512,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|20|512',	'置顶',	'',	'goods_istop',	'',	'',	'',	'',	'',	'list',	'',	513,	0),
(514,	512,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|20|512',	'首页',	'',	'goods_ishome',	'',	'',	'',	'',	'',	'list',	'',	514,	0),
(515,	512,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|20|512',	'已发布',	'',	'goods_ispublish1',	'',	'',	'',	'',	'',	'list',	'',	515,	0),
(516,	512,	1,	0,	0,	0,	0,	1,	1,	0,	'pc',	'zh-cn',	'12|20|512',	'未发布',	'',	'goods_ispublish0',	'',	'',	'',	'',	'',	'list',	'',	516,	0),
(11,	0,	1,	0,	0,	0,	0,	0,	50,	0,	'pc',	'zh-cn',	'',	'多语言',	'',	'Lang',	'',	'',	'',	'',	'',	'auto',	'',	11,	0),
(26,	12,	0,	0,	0,	0,	0,	1,	0,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4e0b\\u8f7d\\u6587\\u4ef6\"}}',	'',	'Download',	'Download',	'',	'',	'',	'',	'auto',	'',	26,	1),
(37,	12,	0,	0,	0,	0,	0,	1,	0,	21,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u89c6\\u9891\\u7ba1\\u7406\"}}',	'',	'Video',	'Video',	'',	'',	'',	'',	'auto',	'',	37,	1),
(1503,	28,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-cn',	'12|28',	'分公司',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(775,	35,	1,	0,	0,	0,	0,	1,	4,	0,	'pc',	'zh-cn',	'12|30|35',	'手机主题',	'',	'MobileTheme',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	775,	0),
(749,	35,	1,	0,	0,	0,	0,	1,	1,	8,	'pc',	'zh-cn',	'12|30|35',	'联系方式',	'',	'MobileContact',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	749,	0),
(750,	35,	1,	0,	0,	0,	0,	1,	5,	0,	'pc',	'zh-cn',	'12|30|35',	'基本信息',	'',	'MobileBase',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	750,	0),
(751,	35,	1,	0,	0,	0,	0,	1,	2,	0,	'pc',	'zh-cn',	'12|30|35',	'移动SEO设置',	'',	'MobileSEO',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	751,	0),
(774,	35,	1,	0,	0,	0,	0,	1,	3,	0,	'pc',	'zh-cn',	'12|30|35',	'多域名绑定',	'',	'MobileDomain',	'',	'',	'Mobile/index',	'',	'',	'list',	'',	774,	0),
(781,	4,	0,	1,	0,	0,	0,	1,	29,	0,	'mobile',	'zh-cn',	'4',	'简体',	'',	'zh-cn',	'',	'',	'',	'',	'',	'',	'',	781,	0),
(615,	469,	1,	0,	0,	0,	1,	0,	30,	10,	'pc',	'zh-cn',	'12|22|469',	'广东',	'512ade93dfa5a.jpg',	'Guangdong',	'',	'',	'',	'',	'',	'list',	'',	615,	0),
(618,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'青海',	'',	'Qinghai',	'',	'',	'',	'',	'',	'list',	'',	618,	1),
(619,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'甘肃',	'',	'Gansu',	'',	'',	'',	'',	'',	'list',	'',	619,	1),
(620,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'内蒙古',	'',	'InnerMongolia',	'',	'',	'',	'',	'',	'list',	'',	620,	1),
(621,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'宁夏',	'',	'Ningxia',	'',	'',	'',	'',	'',	'list',	'',	621,	1),
(622,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'陕西',	'',	'Shanxi',	'',	'',	'',	'',	'',	'list',	'',	622,	0),
(623,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'山西',	'',	'Shanxi2',	'',	'',	'',	'',	'',	'list',	'',	623,	0),
(624,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'河北',	'',	'Hebei',	'',	'',	'',	'',	'',	'list',	'',	624,	0),
(625,	469,	1,	0,	0,	0,	1,	0,	30,	4,	'pc',	'zh-cn',	'12|22|469',	'北京',	'',	'Beijing',	'',	'',	'',	'',	'',	'list',	'',	625,	0),
(626,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'天津',	'',	'Tianjin',	'',	'',	'',	'',	'',	'list',	'',	626,	0),
(627,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'辽宁',	'',	'Liaoning',	'',	'',	'',	'',	'',	'list',	'',	627,	0),
(628,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'吉林',	'',	'Jilin',	'',	'',	'',	'',	'',	'list',	'',	628,	0),
(629,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'黑龙江',	'',	'Heilongjiang',	'',	'',	'',	'',	'',	'list',	'',	629,	0),
(630,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'山东',	'',	'Shandong',	'',	'',	'',	'',	'',	'list',	'',	630,	0),
(631,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'河南',	'',	'Henan',	'',	'',	'',	'',	'',	'list',	'',	631,	0),
(632,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'云南',	'',	'Yunnan',	'',	'',	'',	'',	'',	'list',	'',	632,	0),
(633,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'广西',	'',	'Guangxi',	'',	'',	'',	'',	'',	'list',	'',	633,	0),
(634,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'海南',	'',	'Hainan',	'',	'',	'',	'',	'',	'list',	'',	634,	0),
(635,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'湖南',	'',	'Hunan',	'',	'',	'',	'',	'',	'list',	'',	635,	0),
(636,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'重庆',	'',	'Chongqing',	'',	'',	'',	'',	'',	'list',	'',	636,	0),
(637,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'安徽',	'',	'Anhui',	'',	'',	'',	'',	'',	'list',	'',	637,	0),
(638,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'江苏',	'',	'Jiangsu',	'',	'',	'',	'',	'',	'list',	'',	638,	0),
(639,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'上海',	'',	'Shanghai',	'',	'',	'',	'',	'',	'list',	'',	639,	0),
(640,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'台湾',	'',	'Taiwan',	'',	'',	'',	'',	'',	'list',	'',	640,	0),
(641,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'贵州',	'',	'Guizhou',	'',	'',	'',	'',	'',	'list',	'',	641,	0),
(642,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'湖北',	'',	'Hubei',	'',	'',	'',	'',	'',	'list',	'',	642,	0),
(643,	469,	1,	0,	0,	0,	1,	0,	30,	3,	'pc',	'zh-cn',	'12|22|469',	'四川',	'',	'Sichuan',	'',	'',	'',	'',	'',	'list',	'',	643,	0),
(644,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'福建',	'',	'Fujian',	'',	'',	'',	'',	'',	'list',	'',	644,	0),
(645,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'江西',	'',	'Jiangxi',	'',	'',	'',	'',	'',	'list',	'',	645,	0),
(17,	3,	1,	1,	0,	0,	0,	1,	29,	0,	'pc',	'zh-cn',	'3',	'简体',	'',	'zh-cn',	'',	'',	'',	'',	'',	'',	'',	17,	0),
(18,	3,	0,	0,	0,	0,	0,	1,	27,	0,	'pc',	'en-us',	'3',	'英文',	'',	'en-us',	'',	'',	'',	'',	'',	'',	'',	18,	0),
(428,	3,	0,	0,	0,	0,	0,	1,	28,	0,	'pc',	'zh-tw',	'3',	'繁体',	'',	'zh-tw',	'',	'',	'',	'',	'',	'',	'',	428,	0),
(429,	3,	0,	0,	0,	0,	0,	1,	26,	0,	'pc',	'ja-jp',	'3',	'日文',	'',	'ja-jp',	'',	'',	'',	'',	'',	'',	'',	429,	0),
(430,	3,	0,	0,	0,	0,	0,	1,	25,	0,	'pc',	'ko-kr',	'3',	'韩文',	'',	'ko-kr',	'',	'',	'',	'',	'',	'',	'',	430,	0),
(1191,	37,	1,	0,	0,	0,	1,	0,	30,	2,	'pc',	'zh-cn',	'12|37',	'视频列表',	'',	'Video/Index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1168,	23,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|23',	'首页多图片切换',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1531,	12,	1,	0,	1,	0,	1,	0,	7,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5e7f\\u544a\\u7ba1\\u7406\"}}',	'',	'Advertisement',	'Advert',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1532,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20',	'五金部',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1207,	19,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|19',	'最新活动',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1169,	24,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|24',	'客服列表',	'',	'Link/info',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1170,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'公司简介',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1171,	36,	0,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'蒲记前景',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1172,	36,	0,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|36',	'蒲记定位',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1533,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20',	'耗材部',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1198,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|36',	'公司简介',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1238,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-cn',	'12|36',	'经营理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1208,	19,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|19',	'公司新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1209,	19,	1,	0,	0,	0,	1,	0,	30,	10,	'mobile',	'zh-cn',	'12|19',	'行业资讯',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1212,	22,	1,	0,	0,	0,	1,	0,	30,	25,	'mobile',	'zh-cn',	'12|22',	'添加网点',	'',	'Market/index',	'',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1213,	1212,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|22|1212',	'广州分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1214,	1212,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|22|1212',	'东莞分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1215,	1212,	1,	0,	0,	0,	1,	0,	30,	5,	'mobile',	'zh-cn',	'12|22|1212',	'北京分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1217,	27,	1,	0,	0,	0,	1,	0,	30,	7,	'mobile',	'zh-cn',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1218,	37,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|37',	'视频列表',	'',	'Video/Index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1223,	21,	1,	0,	0,	0,	1,	0,	30,	-2,	'mobile',	'zh-cn',	'12|21',	'回复留言',	'',	'Guestbook/view',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1225,	1223,	1,	0,	0,	0,	1,	0,	30,	-3,	'mobile',	'zh-cn',	'12|21|1223',	'反馈',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1226,	1223,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|21|1223',	'建议',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1227,	1223,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|21|1223',	'咨询',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1253,	20,	1,	0,	0,	0,	1,	0,	30,	6,	'mobile',	'zh-cn',	'12|20',	'LED筒灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED筒灯',	0,	0),
(1232,	25,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25',	'加盟信息',	'',	'Join/index',	'',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1233,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'加盟支持',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1234,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'加盟优势',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1235,	1232,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|25|1232',	'投资前景',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1237,	23,	1,	0,	0,	0,	1,	0,	30,	3,	'mobile',	'zh-cn',	'12|23',	'首页列表图片',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1239,	1212,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|22|1212',	'深圳分公司',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1261,	36,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|36',	'荣誉资质',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1542,	1531,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1531',	'首页广告管理',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1251,	20,	1,	0,	0,	0,	1,	0,	30,	8,	'mobile',	'zh-cn',	'12|20',	'LED球泡灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED球泡灯',	0,	0),
(1249,	20,	1,	0,	0,	0,	1,	0,	30,	4,	'mobile',	'zh-cn',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED日光管',	0,	0),
(1255,	20,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|20',	'LED天花灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED天花灯',	0,	0),
(1257,	20,	1,	0,	0,	0,	1,	0,	30,	0,	'mobile',	'zh-cn',	'12|20',	'LED豆胆灯',	'',	'',	'',	'',	'',	'',	'',	'list',	'LED豆胆灯',	0,	0),
(25,	12,	0,	0,	0,	0,	0,	1,	0,	0,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u5728\\u7ebf\\u52a0\\u76df\"},\"zh-tw\":{\"title\":\"\\u5728\\u7dda\\u52a0\\u76df\"},\"en-us\":{\"title\":\"Joinin\"},\"ja-jp\":{\"title\":\"\\u30aa\\u30f3\\u30e9\\u30a4\\u30f3\\u306e\\u52a0\\u76df\"},\"ko-kr\":{\"title\":\"\\uc628\\ub77c\\uc778 \\uc5d0 \\uc785\\ub2e8\"}}',	'',	'Joinin',	'Joinin',	'',	'',	'',	'',	'auto',	'',	25,	1),
(1262,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'新疆',	'',	'Xinjiang',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1263,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'西藏',	'',	'Tibet',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1264,	469,	1,	0,	0,	0,	1,	0,	30,	0,	'pc',	'zh-cn',	'12|22|469',	'浙江',	'',	'Zhejiang',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1,	0,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'终端',	'',	'Hardware',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(3,	1,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'电脑版',	'',	'pc',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(4,	1,	1,	0,	0,	0,	0,	0,	0,	0,	'',	'',	'',	'手机版',	'',	'mobile',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(27,	12,	0,	0,	0,	0,	0,	1,	10,	9,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4eba\\u624d\\u62db\\u8058\"}}',	'',	'Job',	'Job',	'',	'',	'',	'',	'auto',	'',	27,	1),
(28,	12,	1,	0,	1,	0,	1,	0,	8,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u8054\\u7cfb\\u6211\\u4eec\"}}',	'',	'Contact',	'About',	'',	'',	'',	'',	'auto',	'',	0,	0),
(29,	12,	0,	0,	0,	0,	1,	0,	7,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u4f01\\u4e1a\\u5fae\\u535a\"}}',	'',	'Weibo',	'About',	'',	'System/index/cid/tertiarycode',	'',	'',	'auto',	'',	0,	0),
(1529,	12,	1,	0,	1,	0,	1,	0,	12,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u751f\\u4ea7\\u8bbe\\u5907\"}}',	'',	'Equipment',	'News',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1530,	12,	1,	0,	1,	0,	1,	0,	11,	1,	'',	'',	'12',	'{\"zh-cn\":{\"title\":\"\\u6280\\u672f\\u670d\\u52a1\"}}',	'',	'Services',	'About',	'',	'',	'',	'',	'auto',	'',	0,	0),
(1391,	4,	0,	0,	0,	0,	1,	0,	28,	1,	'mobile',	'zh-tw',	'4',	'繁体',	'',	'zh-tw',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1392,	4,	0,	0,	0,	0,	1,	0,	27,	1,	'mobile',	'en-us',	'4',	'英文',	'',	'en-us',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1393,	4,	0,	0,	0,	0,	1,	0,	26,	1,	'mobile',	'ja-jp',	'4',	'日文',	'',	'ja-jp',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1394,	4,	0,	0,	0,	0,	1,	0,	25,	1,	'mobile',	'ko-kr',	'4',	'韩文',	'',	'ko-kr',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1395,	28,	1,	0,	0,	0,	1,	0,	31,	1,	'pc',	'zh-cn',	'12|28',	'联系方式',	'',	'Contact/mode',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1397,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|36',	'Company',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1398,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|36',	'Honors',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1399,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|19',	'Company News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1400,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|19',	'Industry News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1401,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|20',	'Category1',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1402,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|20',	'Category2',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1403,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'公司簡介',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1404,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'經營理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1405,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|36',	'榮譽資質',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1406,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'最新活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1407,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1408,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1409,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED筒燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1410,	0,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'',	'',	'无标题',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1411,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED球泡燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1412,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED日光管',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1413,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED天花燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1414,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'zh-tw',	'12|20',	'LED豆膽燈',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1415,	28,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|28',	'電子地圖',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1416,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'会社の概要',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1417,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'ビジネス哲学',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1418,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|36',	'優等',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1419,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1420,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'企業ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1421,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|19',	'ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1422,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1423,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|20',	'製品カテゴリ',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1424,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|23',	'首頁多圖片切換',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1425,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|23',	'內頁圖片廣告',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1426,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|23',	'home banner ',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1427,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|23',	'page ads',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1428,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|23',	'ホーム広告',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1429,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|23',	'広告のページの中の',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1430,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|23',	'홈 스위치',	'',	'index/adList',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1431,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|23',	'광고 페이지 내에',	'',	'Inside/ad',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1432,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'회사 소개',	'',	'About/indexInfo',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1433,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1434,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|36',	'영예',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1435,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'회사 소개',	'',	'News/company',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1436,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1437,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|19',	'영예',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1438,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'en-us',	'12|27',	'Job',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1439,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ko-kr',	'12|27',	'신병 모집',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1440,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'ja-jp',	'12|27',	'募集',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1441,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-tw',	'12|27',	'人才招聘',	'',	'Job/index',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1442,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|23',	'首頁多圖片切換',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1443,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|23',	'首頁列表圖片',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1444,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|23',	'home banner',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1445,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|23',	'Page ads',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1446,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|23',	'ホーム広告',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1447,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|23',	'広告のページの中の',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1448,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|23',	'광고 페이지 내에',	'',	'indexad/list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1449,	23,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|23',	'홈 스위치',	'',	'adv/m_list',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1450,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'公司簡介',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1451,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'經營理念',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1452,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|36',	'榮譽資質',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1453,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|36',	'Company',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1454,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|36',	'Honors',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1455,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|36',	'会社の概要',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1456,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|36',	'ビジネス哲学',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1457,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'회사 소개',	'',	'About/introduction',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1458,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'경영 철학',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1459,	36,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|36',	'영예',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1460,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'最新活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1461,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1462,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'zh-tw',	'12|19',	'公司新聞',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1463,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|19',	'Company News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1464,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|19',	' Industry News',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1465,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'活動',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1466,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'企業ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1467,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|19',	'ニュース',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1541,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|19',	'行业新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1540,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|19',	'公司新闻',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1539,	1530,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1530',	'技术服务',	'',	'',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1538,	1529,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|1529',	'生产设备',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1537,	1534,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20|1534',	'设备系列',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1536,	1533,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20|1533',	'半导体 光伏耗材',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1535,	1532,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20|1532',	'精密配件',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1534,	20,	1,	0,	0,	0,	1,	0,	30,	1,	'pc',	'zh-cn',	'12|20',	'设备部',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1481,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|27',	'Job',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1482,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|27',	'募集',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1483,	27,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|27',	'신병 모집',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1490,	20,	1,	0,	0,	0,	1,	0,	50,	1,	'pc',	'ko-kr',	'12|20',	'LED 전구',	'',	'',	'',	'',	'',	'',	'',	'',	'',	0,	0),
(1491,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ja-jp',	'12|22',	'ブランチ',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1492,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|22',	'지사',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1493,	22,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'en-us',	'12|22',	'Branch',	'',	'Market/index',	'',	'',	'',	'',	'',	'one',	'',	0,	0),
(1495,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'활동',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1498,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'기업 뉴스',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0),
(1497,	19,	1,	0,	0,	0,	1,	0,	30,	1,	'mobile',	'ko-kr',	'12|19',	'뉴스',	'',	'',	'',	'',	'',	'',	'',	'list',	'',	0,	0);

DROP TABLE IF EXISTS `y_comment`;
CREATE TABLE `y_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ref_id` int(11) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `reply` text,
  `reply_time` int(11) DEFAULT NULL,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_common`;
CREATE TABLE `y_common` (
  `id` int(1) NOT NULL DEFAULT '1',
  `weibo_type` varchar(255) DEFAULT NULL,
  `weibo_plug` text,
  `is_share` int(1) DEFAULT NULL,
  `share_plug` text,
  `flow_code` text,
  `mobile_theme` varchar(255) DEFAULT NULL,
  `web_theme` varchar(255) DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  `is_customer` int(1) DEFAULT '0',
  `customer_code` text,
  `is_qq` int(1) DEFAULT '0',
  `qq_nums` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_common` (`id`, `weibo_type`, `weibo_plug`, `is_share`, `share_plug`, `flow_code`, `mobile_theme`, `web_theme`, `my_id`, `is_customer`, `customer_code`, `is_qq`, `qq_nums`) VALUES
(1,	'sina',	'<iframe width=\"100%\" height=\"550\" class=\"share_self\"  frameborder=\"0\" scrolling=\"no\" src=\"http://widget.weibo.com/weiboshow/index.php?language=&width=0&height=550&fansRow=1&ptype=1&speed=300&skin=1&isTitle=1&noborder=0&isWeibo=1&isFans=1&uid=2050491212&verifier=f583b339&dpc=1\"></iframe>',	1,	'',	'<img  style=\"CURSOR: pointer\" onclick=\"javascript:window.open(\'http://b.qq.com/webc.htm?new=0&sid=790005994&o=移动&q=7\', \'_blank\', \'height=502, width=644,toolbar=no,scrollbars=no,menubar=no,status=no\');\"  border=\"0\" SRC=http://wpa.qq.com/pa?p=1:790005994:1 alt=\"点击这里给我发消息\">',	'YM04001',	'YP30002',	0,	0,	NULL,	0,	NULL);

DROP TABLE IF EXISTS `y_domain`;
CREATE TABLE `y_domain` (
  `id` int(50) NOT NULL AUTO_INCREMENT,
  `target` varchar(255) DEFAULT '',
  `domain_name` varchar(255) DEFAULT '',
  `remark` varchar(255) DEFAULT '',
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_domain` (`id`, `target`, `domain_name`, `remark`, `my_id`) VALUES
(1,	'手机',	'ASD',	'ASDASD',	0);

DROP TABLE IF EXISTS `y_download`;
CREATE TABLE `y_download` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT NULL,
  `is_top` int(1) DEFAULT NULL,
  `is_home` int(1) DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `imgwidth` varchar(20) DEFAULT NULL,
  `imgheight` varchar(20) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `downfile` varchar(255) NOT NULL DEFAULT '',
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_goods`;
CREATE TABLE `y_goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `content` text,
  `click_count` int(11) NOT NULL DEFAULT '1',
  `my_id` int(11) DEFAULT NULL,
  `imgwidth` int(11) DEFAULT NULL,
  `imgheight` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_goods` (`id`, `category_id`, `is_publish`, `is_comment`, `is_top`, `is_home`, `ordernum`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `tag`, `image`, `summary`, `seo_title`, `seo_keywords`, `seo_description`, `content`, `click_count`, `my_id`, `imgwidth`, `imgheight`) VALUES
(1,	1535,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'铝合金一体料管',	'',	'577b2329ca4cc.jpg',	'',	'',	'',	'',	'&lt;p&gt;1、采用优质抚钢电渣重熔H13和SKD61材料。&lt;/p&gt;&lt;p&gt;2、内孔磨削采用深孔内圆磨，内孔磨削不接刀，一次完成，光洁度可达0.8以上；外圆磨采用穿芯轴磨削，内孔的圆度、同轴度、垂直度等工作百分之百满足图纸要求。&lt;/p&gt;&lt;p&gt;3、热处理采用真空高温淬火(1030°C~1050°C)，二次高温回火(HRC42°~46°);表面处理采用辉光离子氮化(氮化层0.25~0.30mm)，HV≥900~950(相当于HRC62°~65°)底层硬度高，表面硬度高，内孔不易拉伤；有良好的耐热性，抗热疲劳性能、耐液态金属冲蚀性等特点。&lt;/p&gt;&lt;p&gt;4、我们加工的最大压射室有：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø101.6*167* 内Ø45。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø260*1080*内Ø160&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø340*1100*内Ø150。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø300*1275*内Ø150。&lt;/p&gt;&lt;p&gt;压射室最大使用寿命达到了10万模次以上，产品具有性能稳定、耐磨损、少变形、使用寿命长等特点。&lt;/p&gt;&lt;p&gt;5、生产周期7-10个工作日。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	5,	NULL,	NULL,	NULL),
(6,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'射嘴身 喷嘴',	'',	'577b23fbdd1e8.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(7,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'连接头',	'',	'577b24111277f.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;各种规格连接头&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(8,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'料壶',	'',	'577b242a85a77.png',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;各种品牌料壶&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(9,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'石墨保护管',	'',	'577b24415ed66.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; font-weight: bold; line-height: 25px; text-align: center; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;石墨保护管&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(10,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'铸铁坩埚',	'',	'577b245c93b88.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;各种规格坩埚&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(11,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'汤勺',	'',	'577b246de1673.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;各种规格汤勺&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(12,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'铍铜冲头',	'',	'577b249c41371.jpg',	'铍铜冲头',	'',	'',	'',	'',	1,	NULL,	NULL,	NULL),
(13,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'镁合金鹅颈',	'',	'577b25365a44a.jpg',	'',	'',	'',	'',	'&lt;p&gt;鹅颈（料壶）&lt;/p&gt;&lt;p&gt;1、 鹅颈（料壶）是镁合金热室压铸机核心部件，工作条件恶劣，性能要求要。镁合金鹅颈（料壶）钢材组织中有金属间化合物和合金碳化物的形成复合强化，具有优异的高温组织稳定性，优异的高温耐磨性；产品坚固耐用，孔径经过氮化处理，寿命达到国外同类水平；&lt;/p&gt;&lt;p&gt;2、鹅颈采用德国进口DIN1.2888高钴高铬耐热合金钢制作而成，不含NI,具有优异的耐镁合金液腐蚀性能，对镁液的污染小；&lt;/p&gt;&lt;p&gt;3、鹅颈使用寿命首次可保生产16万模次以上，镗孔、氮化一次使用寿命大于12万模次，使用寿命大于120万模次；&lt;/p&gt;&lt;p&gt;质保承诺&lt;/p&gt;&lt;p&gt;镗孔、氮化一次使用寿命大于12万模次&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(14,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'钢令',	'',	'577b24c9687e0.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝&lt;/span&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/span&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(15,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'铝合金料管',	'',	'577b24e115033.jpg',	'',	'',	'',	'',	'&lt;p&gt;1、采用优质抚钢电渣重熔H13和SKD61材料。&lt;/p&gt;&lt;p&gt;2、内孔磨削采用深孔内圆磨，内孔磨削不接刀，一次完成，光洁度可达0.8以上；外圆磨采用穿芯轴磨削，内孔的圆度、同轴度、垂直度等工作百分之百满足图纸要求。&lt;/p&gt;&lt;p&gt;3、热处理采用真空高温淬火(1030°C~1050°C)，二次高温回火(HRC42°~46°);表面处理采用辉光离子氮化(氮化层0.25~0.30mm)，HV≥900~950(相当于HRC62°~65°)底层硬度高，表面硬度高，内孔不易拉伤；有良好的耐热性，抗热疲劳性能、耐液态金属冲蚀性等特点。&lt;/p&gt;&lt;p&gt;4、我们加工的最大压射室有：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø101.6*167* 内Ø45。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø260*1080*内Ø160&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø340*1100*内Ø150。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;Ø300*1275*内Ø150。&lt;/p&gt;&lt;p&gt;压射室最大使用寿命达到了10万模次以上，产品具有性能稳定、耐磨损、少变形、使用寿命长等特点。&lt;/p&gt;&lt;p&gt;5、生产周期7-10个工作日。&lt;/p&gt;&lt;p&gt;6、欢迎各商家来图、来样订制；真诚欢迎各位莅临公司指导、相互学习，谢谢！！&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(16,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'活塞螺杆头',	'',	'577b250615ff7.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/span&gt;&lt;/p&gt;',	1,	NULL,	NULL,	NULL),
(19,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'模具加热管 单头管',	'',	'577b26aed3a2c.jpg',	'',	'',	'',	'',	'&lt;p&gt;模具加热管选用优质厚壁无缝不锈钢管、低碳钢管、铜、铝、钛金，英格莱800－840材料作为护套&lt;/p&gt;&lt;p&gt;高效率&lt;/p&gt;&lt;p&gt;体积短小, 温度高, 表面负荷高。经过深入研究的高精度产品低耗传递热量；&lt;/p&gt;&lt;p&gt;电气性能&lt;/p&gt;&lt;p&gt;具有优良的绝缘性能，特别是冷态时能保持较好的绝缘性能；&lt;/p&gt;&lt;p&gt;寿命长&lt;/p&gt;&lt;p&gt;使用高镍合金发热体，具有耐高温、抗氧化性能，并且使用耐热绝缘氧化镁比传统产品，使其明显具有很长的寿命；&lt;/p&gt;&lt;p&gt;可操作性&lt;/p&gt;&lt;p&gt;即使使用多个同时加热器，彼此间不会相互干扰，在盒内容易完成配线；&lt;/p&gt;&lt;p&gt;牢固性&lt;/p&gt;&lt;p&gt;采用能够承受使用时机械震动及冲击的结构设计，同时固定挡片结构易于加热管的固定和使用；&lt;/p&gt;&lt;p&gt;种类型号&lt;/p&gt;&lt;p&gt;种类多样、形状各异。有公制与英制尺寸、常规与非标种类，同时还能按照客户要求定制。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(2,	1536,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'在线铁氟龙加热器 桶式PVDF加热器',	'',	'577b25c8c1942.jpg',	'',	'',	'',	'',	'&lt;p&gt;环保 安全 高效 使用寿命长&lt;/p&gt;&lt;p&gt;简介&lt;/p&gt;&lt;p&gt;1.可拆卸式设计，可以实现快速安装和拆卸并可以反复使用。&lt;/p&gt;&lt;p&gt;2.整体加热温度均匀、温和、可靠。&lt;/p&gt;&lt;p&gt;3.不会对人体和周围环境产生影响，符合环保要求。&lt;/p&gt;&lt;p&gt;4.环境适应性强、耐用性好可在不同的环境下使用、可以进行防水、耐腐蚀。&lt;/p&gt;&lt;p&gt;5.可与多种其他加热器配合使用，使用非常灵活。&lt;/p&gt;&lt;p&gt;6.温度控制灵活、可以实现自动恒温加热也可以通过外置温控装置调整温度。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	7,	NULL,	NULL,	NULL),
(17,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'硅片清洗花篮',	'',	'577b26236bc8d.jpg',	'',	'',	'',	'',	'&lt;p&gt;规格：125mm*125mm&lt;/p&gt;&lt;p&gt;材质：采用进口PP材质&lt;/p&gt;&lt;p&gt;适用范围：用于装载125mm*125mm的硅片，能够适用于单晶硅片和多晶硅片的承载，可用于手工及机械操作。&lt;/p&gt;&lt;p&gt;太阳能硅片承载器的技术参数&lt;/p&gt;&lt;p&gt;规格（mm*mm） 外形尺寸（长*宽*高） &amp;nbsp; &amp;nbsp; 材质 &amp;nbsp; &amp;nbsp;容量 槽间距 槽最窄距&lt;/p&gt;&lt;p&gt;&amp;nbsp; 125*125 &amp;nbsp; &amp;nbsp;143.50*152.00*149.00 &amp;nbsp; PP或PVDF &amp;nbsp; 25 &amp;nbsp;4.76 &amp;nbsp; 1.52&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(18,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'单晶多晶加热器/板式铁氟龙加热器',	'',	'577b26912bca2.jpg',	'',	'',	'',	'',	'&lt;p&gt;板式铁氟龙加热器/单晶多晶制绒加热器&lt;/p&gt;&lt;p&gt;1、采用优质发热丝直接包敷（CPTEF）制作，选用氟塑料材质美国杜邦（TEFLON）日本大金株式会社（FLON）等进口原料制造，耐腐蚀性强、不粘稠、节能、环保，适用于各类腐蚀性液体加热。&lt;/p&gt;&lt;p&gt;2、低表面功率设计（＜1W/C m2）确保产品使用寿命。&lt;/p&gt;&lt;p&gt;3、电加热器的安装位置需注意防止溶液中固体沉积物于电热表面或液体太浓稠,液面过低都会因表面散热不良而烧坏铁氟龙管（PTFE）。&lt;/p&gt;&lt;p&gt;4、电加热器均配接PT100感温探头或温度保险丝（105℃），确保产品使用寿命及设备安全。&lt;/p&gt;&lt;p&gt;5、节能：跟同等功率加热器相比能节能20％。&lt;/p&gt;&lt;p&gt;6、本产品已通过欧盟市场CE认证。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;专业致力于PCB和光电电镀器材，加热器，冷热交换器，硅片承载花篮，电子片清洗提篮，表面喷涂铁氟龙及太阳能产业配件等研发和生产。可按照客户的定制要求定做，有需求详谈。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(3,	1537,	1,	0,	0,	0,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'自动流水线',	'',	'577b27d440f44.jpg',	'',	'',	'',	'',	'&lt;p&gt;技术参数:&lt;/p&gt;&lt;p&gt;线体宽度：50-1600mm，可由客户选定&lt;/p&gt;&lt;p&gt;线体高度：50-1200mm，可由客户选定&lt;/p&gt;&lt;p&gt;线体长度：800-60000mm，可由客户选定&lt;/p&gt;&lt;p&gt;板链间距：由客户选定，一般与所用链条节距相等&lt;/p&gt;&lt;p&gt;板链材质：不锈钢、工程塑料等，可做镀锌、镀 铬、包胶处理&lt;/p&gt;&lt;p&gt;板链功能：可输送重物并站人、可安装夹具、模具等&lt;/p&gt;&lt;p&gt;框架材质：由客户选定&lt;/p&gt;&lt;p&gt;板链速度：可定速0.5-10米/分，由客户选定，可电子调速或变频调速&lt;/p&gt;&lt;p&gt;使用电源：单相220V 三相380V 50Hz(由客户选定)&lt;/p&gt;&lt;p&gt;1、链板输送机的输送面平坦光滑，摩擦力小，物料在输送线之间的过渡平稳，可输送各类玻璃瓶、PET瓶、&lt;/p&gt;&lt;p&gt;易拉罐等物料，也可输送各类箱包。&lt;/p&gt;&lt;p&gt;2、链板有不锈钢和工程塑料等材质，规格品种繁多，可根据输送物料和工艺要求选用，能满足各行各业不&lt;/p&gt;&lt;p&gt;同的需求。&lt;/p&gt;&lt;p&gt;3、输送能力大，可承载较大的载荷，如用于电动车、摩托车、发电机等行业；&lt;/p&gt;&lt;p&gt;4、输送速度准确稳定，能保证精确的同步输送。&lt;/p&gt;&lt;p&gt;5、链板输送机一般都可以直接用水冲洗或直接浸泡在水中。设备清洁方便，能满足食品、饮料行业对卫生&lt;/p&gt;&lt;p&gt;的要求。&lt;/p&gt;&lt;p&gt;6、设备布局灵活。可以在一条输送线上完成水平、倾斜和转弯输送。&lt;/p&gt;&lt;p&gt;7、设备结构简单，维护方便。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	9,	NULL,	NULL,	NULL),
(25,	1537,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'隧道烘炉烤箱',	'',	'577b289575de2.jpg',	'',	'',	'',	'',	'&lt;p&gt;本设备结构先进、拆装简便、外形美观。选用国内新型保温材料、隔热保温性强、选用远红外加热技术，加热元件布置合理，能源消耗低。采用热风循环，使上下温度更均匀，确保烤箱产品质量。电控柜采用先进数显自动控温系统，在50-200度之间可任意调节，反应灵敏，工作可靠。可根据用户产品要求，设计制造各种非标烘箱及通过式烘道流水线。&lt;/p&gt;&lt;p&gt;性能特点&lt;/p&gt;&lt;p&gt;精确控温系统：PID微电脑控制，具有温度自整定功能；采用SSR固态继电器输出，可根据温度偏差的大小控制其加热功率的大小，使温度更加精准，内部温差±3度。&lt;/p&gt;&lt;p&gt;远红外加热系统；加热发热装置可选，循环风设计，内部各点温度均匀一致&lt;/p&gt;&lt;p&gt;输送系统：采用变频调速，按需要随意调整，始终保持平稳运行；&lt;/p&gt;&lt;p&gt;主要参数&lt;/p&gt;&lt;p&gt;温区：根据具体要求定&lt;/p&gt;&lt;p&gt;设定温度：室温~250℃&lt;/p&gt;&lt;p&gt;输送宽度：根据产品要求设计&lt;/p&gt;&lt;p&gt;加热方式：热风循环&lt;/p&gt;&lt;p&gt;电源：380V&lt;/p&gt;&lt;p&gt;外型尺寸：根据产品要求设计&lt;/p&gt;&lt;p&gt;专业生产：&lt;/p&gt;&lt;p&gt;&amp;nbsp; 皮带输送式隧道炉； 不锈钢网带式隧道炉；吊空轨道式隧道烘干炉；等各种型式隧道烘干设备。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(26,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'力士乐比例阀',	'',	'577b28a99752e.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;销售各种压铸机使用进口油阀、泵，泵心等配件&lt;/span&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(27,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'劲、伊之密、三基Vickers威格士电磁换向阀',	'',	'577b28d799817.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;销售各种压铸机使用进口油阀、泵，泵心等配件&lt;/span&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(5,	1535,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'SKD61柱塞头',	'',	'577b23d8bec5c.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/span&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(20,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'铁氟龙加热器 不锈钢加热器',	'',	'577b26c5b3a7f.jpg',	'',	'',	'',	'',	'&lt;p&gt;铁氟龙加热管是一种用四氟套管制成的新型耐强腐蚀的电加热器，用于各类腐蚀性液体的加热。具有优良抗老化性和较好的绕曲性能，采用低表面负荷设计。 铁氟龙加热管可分两种，一种是将加热管的表面直接喷涂氟塑料物质，另一种是在铁质加热管和铜质加热管的外层套上氟塑料套管构成&lt;/p&gt;&lt;p&gt;铁氟龙加热管注意点：&lt;/p&gt;&lt;p&gt;1.要防止被加热液体过于黏稠，固态物质粘连在管子表面，烧坏铁氟龙&lt;/p&gt;&lt;p&gt;2.建议增加温控保护器，以防温度超过110度，烧坏管子&lt;/p&gt;&lt;p&gt;3.接头部分切忌自主拆开，以防酸液渗透进入&lt;/p&gt;&lt;p&gt;4.功率要求能控制在1.5w/c㎡以下最好。最高不要超过2W/c㎡。&lt;/p&gt;&lt;p&gt;铁氟龙加热管铁氟龙加热管的用途&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;铁氟龙加热器是电镀、电解、除油、酸洗、化学镀镍镀磷、氢氟酸、阳极氧化、铝泊、冶炼、化工、医药、食品等腐蚀性的液体加热、冷凝、蒸发、浓缩等的最佳加热器选择！&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(21,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'不锈钢换热器 不锈钢冷却管',	'',	'577b26e478edc.jpg',	'',	'',	'',	'',	'&lt;p&gt;1、材 &amp;nbsp; 质：304、316L不锈钢&lt;/p&gt;&lt;p&gt;2、钢管规格： 按照客户要求&lt;/p&gt;&lt;p&gt;3、盘管尺寸：按照客户要求&lt;/p&gt;&lt;p&gt;4、可按用户特殊要求制作加工。&lt;/p&gt;&lt;p&gt;质量控制：&lt;/p&gt;&lt;p&gt;不锈钢盘管的主要用途是热交换，管内管外不同的介质（液体或气体）要进行热交换，就必须保证钢管能承受一定的压力，因此钢管的制造质量非常重要。我们对质量的控制最主要的部份是制管过程质量控制及盘管成品质量控制：在制管过程中，根据工况不同，定期取样进行扩口试验&lt;/p&gt;&lt;p&gt;不锈钢换热器特点：&lt;/p&gt;&lt;p&gt;电镀设备|不锈钢冷却管选用优质316无缝钢管制作，耐腐蚀性强,适用于低浓度碱性液体加热与冷却；采用自动焊接技术，焊口结合紧密，牢固，不漏水；翰运公司产品出厂检测：测漏，测压； &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;专业的弯管设备，焊接设备根据客户要求生产各类冷却管冷却管系类包括：钛冷却管、不锈钢冷却管、316冷却管、304冷却管、钛冷却管等产品形状根据客户要求生产，产品材料:根据要求生产钛、316、304等材质。&lt;/p&gt;&lt;p&gt;冷却管主要广泛用于电镀，塑胶，化工，线路板工厂等各个行业，材质有：304不锈钢冷却管，316不锈钢冷却管，钛冷却管。耐腐蚀性强，耐高温0-600度，冷却效果快。&lt;/p&gt;&lt;p&gt;1、采用优质无缝纯不锈钢管，耐腐蚀性强，小尺寸大功率。　&lt;/p&gt;&lt;p&gt;2、管径小，根数多、换热器面积大，承受压力高、热流分散均匀，体积小，重量轻，安装维护方便，占用空间小。&lt;/p&gt;&lt;p&gt;3、便于更换和清洗，广泛应用于电镀表面处理，食品，医药等。&lt;/p&gt;&lt;p&gt;4、可根据客户要求定制。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	3,	NULL,	NULL,	NULL),
(22,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'铁氟龙换热器',	'',	'577b26f99bd6a.jpg',	'',	'',	'',	'',	'&lt;p&gt;一、氟塑料材质采用美国杜邦（TEFLON）、日本大金株式会社（FLON）等进口原料制造。采用先进的制管设备及加工手段，对管束及法兰进行热熔性焊接，组装成换热器。氟塑料热交换器适用表面处理电镀中的镀铬、酸性镀锡、镀锌、电解、酸洗、化学镀、阳极氧化&lt;/p&gt;&lt;p&gt;及化工、医药、食品等腐蚀性溶液的加热、冷却、蒸发、浓缩。电镀表面处理中任何溶液的加热、&lt;/p&gt;&lt;p&gt;冷却、蒸发、浓缩、瘁取。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;二、氟塑料换热器的性能：采用PFA、FEP、PVDF管材制作换热器材质后，比聚四氟乙烯（PTFE）换热器材质更加优异，并具有更高的热稳定性、柔软性、抗裂性及透明性。产品适用温度范围在-180~260℃；中间耐温性极佳，可弯曲成任意形状，但曲率半径应≥150mm.优异的电绝缘性、不粘性、抗老化性、不论在任何强腐蚀性气体，液体和长期暴露在恶劣的大气中，抗老化性均能长达10年以上。&lt;/p&gt;&lt;p&gt;三、氟塑料换热器分为管束式槽内或反应釜内的换热器，管壳式外循环换热设备、防静电套管式换&lt;/p&gt;&lt;p&gt;热器及蒸发器。&lt;/p&gt;&lt;p&gt;四、氟塑料换热器，采用管束集束而成。管径小，根数多、换热器面积大，承&lt;/p&gt;&lt;p&gt;受压力高、热流分散均匀，体积小，重量轻，安装维护方便，占用空间小，使换热器在今后的使&lt;/p&gt;&lt;p&gt;用得到更为广泛的应用前景。&lt;/p&gt;&lt;p&gt;五、产品采用(PTFE、FEP、PFA、)材料制作而成。根据客户的要求严格设计产品&lt;/p&gt;&lt;p&gt;材质，达到满足工艺的技术条件，产品采用管束（ø4.5、ø6………ø12）穿入&lt;/p&gt;&lt;p&gt;两端法兰组装而成，形成换热器进出口，并用（PP、PVC、PTFE、PVDF框架）组装固定，可防止工&lt;/p&gt;&lt;p&gt;件碰撞使换热器损坏。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;1. &amp;nbsp; &amp;nbsp; 管道应安装限压阀≤0.4mpa。为防止管道系统内的杂质堵塞及划伤管束，应在换热器前安装维护方便的过滤器，出口安装疏水器。&lt;/p&gt;&lt;p&gt;2. &amp;nbsp; &amp;nbsp; 需要采用多组产品安装时，可采用并联连接。应考虑分汽箱集中供汽，各支路为独立供汽系统。&lt;/p&gt;&lt;p&gt;排汽也可以串联，但严禁与金属换热器出口相连接，以免造成换热器出口堵塞及管束胀裂。&lt;/p&gt;&lt;p&gt;3. &amp;nbsp; &amp;nbsp; 为防止工艺过程中工件、极板砸伤管束，应对产品制作相应的隔离装置。本厂可为用户加工制作保护装置，或按用户要求提供保护架制作图样。&lt;/p&gt;&lt;p&gt;4. &amp;nbsp; &amp;nbsp; 冬季温度在0℃以下，厂休息时请排净产品内的冷凝水，防止冰冻，造成管束破裂。&lt;/p&gt;&lt;p&gt;5. &amp;nbsp; &amp;nbsp; 管壳式换热器安装时请参照安装使用说明及技术协议，产品安装好试机时，请严格按照以下条件操作：&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;Ο1第一步打开氟塑料换热器管束内的腐蚀性液体循环泵，使用时流通压力≤0.45 mpa&lt;/p&gt;&lt;p&gt;Ο2第二步打开管壳式外循环加热（或冷却循环）水泵，压力≤0.4mpa&lt;/p&gt;&lt;p&gt;Ο3使用时，换热器管束式内压力始终≥管壳内加热及冷却循环水压力。防止管壳内大于管束内压力造成管束挤压。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(23,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'U型加热器',	'',	'577b27116d348.jpg',	'',	'',	'',	'',	'&lt;p&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/p&gt;',	3,	NULL,	NULL,	NULL),
(24,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'探温针 感温探头',	'',	'577b2737e9fe4.jpg',	'',	'',	'',	'',	'&lt;p&gt;Pt100 (100Ω @ 0ºC 0.00385Ω/Ω/ºC)铂RTD，具有1⁄10 DIN，1⁄3 DIN或&amp;quot;A&amp;quot;级精度 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;温度范围-100 ~ 400°C (-148 ~ 752°F)，取决于所选的电缆和精度 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;直径6和3 mm（¼和⅛&amp;quot;）的4芯结构 &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;&lt;/p&gt;&lt;p&gt;提供一系列安装螺纹和电缆材质&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL),
(28,	1536,	1,	0,	0,	0,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'隔膜泵浦',	'',	'577b28ec71f0c.jpg',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: verdana, arial; font-size: 13px; line-height: 23px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;公司专业生产各种进口、国产，镁合金、锌合金、铝合金压铸机配件及周边设备，产品匹配机型如德国富来、日本凌绍、东芝、香港力劲、宝弘、捷迅、台湾正峰、伟台、兴行、晨丰、友胜等镁、锌、铝合金压铸机。&lt;/span&gt;&lt;/p&gt;',	2,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `y_goods_inquire`;
CREATE TABLE `y_goods_inquire` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) DEFAULT NULL,
  `ordernum` int(11) NOT NULL,
  `hardware` varchar(255) NOT NULL,
  `lang` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `content` text,
  `create_time` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL DEFAULT '未处理',
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_goods_photo`;
CREATE TABLE `y_goods_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `goods_id` int(11) unsigned DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '30',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) DEFAULT NULL,
  `description` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_goods_photo` (`id`, `goods_id`, `is_publish`, `ordernum`, `lang`, `title`, `image`, `description`, `my_id`) VALUES
(5,	5,	0,	30,	NULL,	'',	'577b23d8bec5c.jpg',	NULL,	0),
(19,	2,	0,	30,	NULL,	'',	'577b25c8c1942.jpg',	NULL,	0),
(30,	25,	0,	30,	NULL,	'',	'577b289575de2.jpg',	NULL,	0),
(4,	1,	0,	30,	NULL,	'',	'577b2329ca4cc.jpg',	NULL,	0),
(6,	6,	0,	30,	NULL,	'',	'577b23fbdd1e8.jpg',	NULL,	0),
(7,	7,	0,	30,	NULL,	'',	'577b24111277f.jpg',	NULL,	0),
(8,	8,	0,	30,	NULL,	'',	'577b242a85a77.png',	NULL,	0),
(9,	9,	0,	30,	NULL,	'',	'577b24415ed66.jpg',	NULL,	0),
(10,	10,	0,	30,	NULL,	'',	'577b245c93b88.jpg',	NULL,	0),
(11,	11,	0,	30,	NULL,	'',	'577b246de1673.jpg',	NULL,	0),
(12,	12,	0,	30,	NULL,	'',	'577b249c41371.jpg',	NULL,	0),
(22,	18,	0,	30,	NULL,	'',	'577b26912bca2.jpg',	NULL,	0),
(14,	14,	0,	30,	NULL,	'',	'577b24c9687e0.jpg',	NULL,	0),
(15,	15,	0,	30,	NULL,	'',	'577b24e115033.jpg',	NULL,	0),
(16,	16,	0,	30,	NULL,	'',	'577b250615ff7.jpg',	NULL,	0),
(17,	13,	0,	30,	NULL,	'',	'577b25365a44a.jpg',	NULL,	0),
(21,	17,	0,	30,	NULL,	'',	'577b26236bc8d.jpg',	NULL,	0),
(23,	19,	0,	30,	NULL,	'',	'577b26aed3a2c.jpg',	NULL,	0),
(24,	20,	0,	30,	NULL,	'',	'577b26c5b3a7f.jpg',	NULL,	0),
(25,	21,	0,	30,	NULL,	'',	'577b26e478edc.jpg',	NULL,	0),
(26,	22,	0,	30,	NULL,	'',	'577b26f99bd6a.jpg',	NULL,	0),
(27,	23,	0,	30,	NULL,	'',	'577b27116d348.jpg',	NULL,	0),
(28,	24,	0,	30,	NULL,	'',	'577b2737e9fe4.jpg',	NULL,	0),
(29,	3,	0,	30,	NULL,	'',	'577b27d440f44.jpg',	NULL,	0),
(31,	26,	0,	30,	NULL,	'',	'577b28a99752e.jpg',	NULL,	0),
(32,	27,	0,	30,	NULL,	'',	'577b28d799817.jpg',	NULL,	0),
(33,	28,	0,	30,	NULL,	'',	'577b28ec71f0c.jpg',	NULL,	0);

DROP TABLE IF EXISTS `y_guestbook`;
CREATE TABLE `y_guestbook` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL DEFAULT '220',
  `is_top` int(1) DEFAULT '0',
  `is_publish` int(1) DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `create_time` int(11) DEFAULT NULL,
  `reply_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `content` text,
  `reply` text,
  `email` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `read` int(4) DEFAULT '0',
  `my_id` int(11) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL COMMENT '邮政编码',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_guestbook` (`id`, `category_id`, `is_top`, `is_publish`, `ordernum`, `create_time`, `reply_time`, `hardware`, `lang`, `title`, `content`, `reply`, `email`, `linkman`, `mobile`, `tel`, `fax`, `read`, `my_id`, `sex`, `company_name`, `address`, `code`) VALUES
(1,	220,	0,	1,	999,	1376117703,	1376117721,	'pc',	'zh-cn',	'热烈祝贺',	'热烈祝贺贵网站正式上线',	'谢谢',	'88888@qq.com',	'小袁',	'13665236698',	'13665232215',	'020-88888888',	1,	0,	'先生',	'xxx工作室',	'广东省广州市天河北..',	'52400'),
(2,	220,	0,	1,	999,	1467636464,	NULL,	'pc',	'zh-cn',	'热烈祝贺',	'热烈祝贺内容',	NULL,	'88@qq.com',	'DD',	NULL,	'13660253365',	NULL,	1,	NULL,	NULL,	NULL,	'湖南省长沙市开福区芙蓉中路564号 泊富国际18楼（湖南省妇幼保健院斜对面）',	NULL);

DROP TABLE IF EXISTS `y_job`;
CREATE TABLE `y_job` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `is_publish` int(1) DEFAULT NULL,
  `is_top` int(1) DEFAULT NULL,
  `is_home` int(1) DEFAULT NULL,
  `category_id` int(11) unsigned DEFAULT NULL,
  `position_id` int(11) DEFAULT '0',
  `department` varchar(255) DEFAULT NULL,
  `education` varchar(255) DEFAULT NULL,
  `salary` varchar(255) DEFAULT NULL,
  `ordernum` int(11) DEFAULT '999',
  `number` int(11) DEFAULT NULL,
  `begin_time` int(11) DEFAULT NULL,
  `end_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT '',
  `ask` text,
  `content` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_job` (`id`, `is_publish`, `is_top`, `is_home`, `category_id`, `position_id`, `department`, `education`, `salary`, `ordernum`, `number`, `begin_time`, `end_time`, `create_time`, `hardware`, `lang`, `title`, `site`, `ask`, `content`, `my_id`) VALUES
(1,	1,	NULL,	NULL,	205,	0,	'市场部',	'大专',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'pc',	'zh-cn',	'市场公关专员',	'广州',	'',	'&lt;p&gt;&lt;strong&gt;&lt;span style=&quot;font-size:18px;color:#FF0000;&quot;&gt;更新此内容登录后台选择：互易移动&amp;nbsp;&amp;gt;&amp;nbsp;人才招聘&amp;nbsp;&amp;gt;&amp;nbsp;人才招聘&lt;/span&gt;&lt;/strong&gt;&lt;br /&gt;&lt;/p&gt;&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、协助进行市场公关活动执行；&lt;/p&gt;&lt;p&gt;2、针对公司的活动及日常宣传需要，撰写新闻稿，并对外发布；&lt;/p&gt;&lt;p&gt;3、建立和维护媒体关系，负责媒体公关活动的策划和实施；&lt;/p&gt;&lt;p&gt;4、能够对合作项目进行有效的内外部跟踪，保证项目进度达成。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、大专以上学历，形象气质佳；&lt;/p&gt;&lt;p&gt;2、有一年以上市场策划及市场公关工作经验；&lt;/p&gt;&lt;p&gt;3、具备一定的沟通和协调能力，工作积极主动；&lt;/p&gt;&lt;p&gt;4、具备良好的文案功底，文字表达能力强；&lt;/p&gt;&lt;p&gt;5、熟悉广东省媒体，有媒体相关工作经验者优先。&lt;/p&gt;',	0),
(2,	1,	NULL,	NULL,	1217,	0,	'市场部',	'大专',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'mobile',	'zh-cn',	'市场公关专员',	'广州',	'',	'&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、协助进行市场公关活动执行；&lt;/p&gt;&lt;p&gt;2、针对公司的活动及日常宣传需要，撰写新闻稿，并对外发布；&lt;/p&gt;&lt;p&gt;3、建立和维护媒体关系，负责媒体公关活动的策划和实施；&lt;/p&gt;&lt;p&gt;4、能够对合作项目进行有效的内外部跟踪，保证项目进度达成。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、大专以上学历，形象气质佳；&lt;/p&gt;&lt;p&gt;2、有一年以上市场策划及市场公关工作经验；&lt;/p&gt;&lt;p&gt;3、具备一定的沟通和协调能力，工作积极主动；&lt;/p&gt;&lt;p&gt;4、具备良好的文案功底，文字表达能力强；&lt;/p&gt;&lt;p&gt;5、熟悉广东省媒体，有媒体相关工作经验者优先。&lt;/p&gt;',	0),
(3,	1,	NULL,	NULL,	205,	0,	'法务部',	'本科',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'pc',	'zh-cn',	'专利推广经理',	'广州',	'',	'&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、参与知识产权专利业务的发展策略规划，提供知识产权专利专业咨询服务和解决方案；&lt;/p&gt;&lt;p&gt;2、开展对销售团队知识产权专利方面的知识培训，提高其理论知识和专业度；&lt;/p&gt;&lt;p&gt;3、与知识产权专利局保持紧密沟通，及时掌握国家有关知识产权专利政策和动向；&lt;/p&gt;&lt;p&gt;4、协助处理分公司在当地的专利诉讼案件。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、本科以上学历，3年以上工作经验，有专利处理实战经验为佳；&lt;/p&gt;&lt;p&gt;2、熟悉专利相关法律、法规和业务流程；&lt;/p&gt;&lt;p&gt;3、具知识产权市场敏锐的嗅觉，出色的分析与研究能力；&lt;/p&gt;&lt;p&gt;4、良好的个人品德和职业操守，优秀的执行力和沟通协调技巧；&lt;/p&gt;&lt;p&gt;5、工作富激情，能承受较大的工作压力，适应快节奏的工作环境；&lt;/p&gt;&lt;p&gt;6、具大型知识产权代理公司相关工作经验者优先。&lt;/p&gt;',	0),
(4,	1,	NULL,	NULL,	1217,	0,	'法务部',	'本科',	'面议',	999,	1,	1351180800,	1351180800,	1351180800,	'mobile',	'zh-cn',	'专利推广经理',	'广州',	'',	'&lt;p&gt;职位信息：&lt;/p&gt;&lt;p&gt;1、参与知识产权专利业务的发展策略规划，提供知识产权专利专业咨询服务和解决方案；&lt;/p&gt;&lt;p&gt;2、开展对销售团队知识产权专利方面的知识培训，提高其理论知识和专业度；&lt;/p&gt;&lt;p&gt;3、与知识产权专利局保持紧密沟通，及时掌握国家有关知识产权专利政策和动向；&lt;/p&gt;&lt;p&gt;4、协助处理分公司在当地的专利诉讼案件。&amp;nbsp;&lt;/p&gt;&lt;p&gt;任职资格：：&lt;/p&gt;&lt;p&gt;1、本科以上学历，3年以上工作经验，有专利处理实战经验为佳；&lt;/p&gt;&lt;p&gt;2、熟悉专利相关法律、法规和业务流程；&lt;/p&gt;&lt;p&gt;3、具知识产权市场敏锐的嗅觉，出色的分析与研究能力；&lt;/p&gt;&lt;p&gt;4、良好的个人品德和职业操守，优秀的执行力和沟通协调技巧；&lt;/p&gt;&lt;p&gt;5、工作富激情，能承受较大的工作压力，适应快节奏的工作环境；&lt;/p&gt;&lt;p&gt;6、具大型知识产权代理公司相关工作经验者优先。&lt;/p&gt;',	0);

DROP TABLE IF EXISTS `y_job_resume`;
CREATE TABLE `y_job_resume` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `job_id` int(11) unsigned DEFAULT NULL,
  `position_id` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `linkname` varchar(255) NOT NULL DEFAULT '',
  `sex` char(1) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `intro` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_job_resume` (`id`, `job_id`, `position_id`, `create_time`, `linkname`, `sex`, `age`, `email`, `phone`, `address`, `file`, `intro`, `my_id`) VALUES
(1,	1,	0,	1350980513,	'yyyy',	'男',	NULL,	'13123@qq.com',	'132432413213',	'13213212',	'',	'3213213213',	0),
(4,	4,	0,	1351511875,	'张三',	'男',	NULL,	'888888@qq.com',	'020-8888888',	'地址',	NULL,	'联系内容',	0),
(5,	NULL,	0,	1351622619,	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(8,	1,	0,	1352947854,	'测试',	'男',	18,	'45452452@qq.com',	'158202369',	'测试地址',	'50a4588e3d154.docx',	'简历',	0),
(7,	1,	0,	1352366676,	'tttt',	'男',	12,	'1213425@qq.com',	'132435434',	'地址',	'509b7a54d43b9.doc',	'dszfdsfdsfsfd',	0);

DROP TABLE IF EXISTS `y_joinin`;
CREATE TABLE `y_joinin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `company_name` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `registered_capital` varchar(255) DEFAULT NULL,
  `employee_number` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `read` tinyint(4) DEFAULT '0',
  `content` text,
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_link`;
CREATE TABLE `y_link` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT '1169',
  `my_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `ordernum` int(11) DEFAULT '30',
  `update_time` int(11) DEFAULT '0',
  `create_time` int(11) DEFAULT NULL,
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT '',
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `hardware` varchar(255) DEFAULT 'pc',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_link` (`id`, `category_id`, `my_id`, `is_publish`, `is_home`, `is_top`, `ordernum`, `update_time`, `create_time`, `lang`, `title`, `tag`, `image`, `url`, `hardware`) VALUES
(1,	1169,	0,	1,	0,	0,	30,	1379008380,	1379008380,	'zh-cn',	'小欣',	NULL,	NULL,	'49906963',	'pc'),
(2,	1169,	0,	1,	0,	0,	30,	1379008362,	1379008362,	'zh-cn',	'小燕',	NULL,	NULL,	'867827398',	'pc'),
(3,	1169,	0,	1,	0,	0,	30,	1379008326,	1379008326,	'zh-cn',	'小邓',	NULL,	NULL,	'49906963',	'pc');

DROP TABLE IF EXISTS `y_market`;
CREATE TABLE `y_market` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `is_publish` int(1) NOT NULL DEFAULT '0',
  `is_top` int(11) NOT NULL DEFAULT '0',
  `is_home` int(11) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `mapcode` varchar(255) DEFAULT NULL,
  `content` text,
  `content_type` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imgwidth` varchar(20) DEFAULT NULL,
  `imgheight` varchar(20) DEFAULT NULL,
  `traffic1` varchar(255) DEFAULT NULL,
  `traffic2` varchar(255) DEFAULT NULL,
  `office_location` varchar(255) DEFAULT NULL,
  `point_x` varchar(255) DEFAULT NULL,
  `point_y` varchar(255) DEFAULT NULL,
  `address_title` varchar(255) DEFAULT NULL,
  `address_content` varchar(255) DEFAULT NULL,
  `email_title` varchar(255) DEFAULT NULL,
  `email_content` varchar(255) DEFAULT NULL,
  `tel_title` varchar(255) DEFAULT NULL,
  `tel_content` varchar(255) DEFAULT NULL,
  `weibo_title` varchar(255) DEFAULT NULL,
  `weibo_content` varchar(255) DEFAULT NULL,
  `fax_title` varchar(255) DEFAULT NULL,
  `fax_content` varchar(255) DEFAULT NULL,
  `sms_title` varchar(255) DEFAULT NULL,
  `sms_content` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `code_content` varchar(255) DEFAULT NULL,
  `other_title` varchar(255) DEFAULT NULL,
  `code_title` varchar(255) DEFAULT NULL,
  `web_content` varchar(255) DEFAULT NULL,
  `contact_content` varchar(255) DEFAULT NULL,
  `web_title` varchar(255) DEFAULT NULL,
  `other_content` varchar(255) DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_market` (`id`, `category_id`, `is_publish`, `is_top`, `is_home`, `ordernum`, `create_time`, `hardware`, `lang`, `title`, `tag`, `email`, `linkman`, `tel`, `fax`, `postcode`, `address`, `mapcode`, `content`, `content_type`, `image`, `imgwidth`, `imgheight`, `traffic1`, `traffic2`, `office_location`, `point_x`, `point_y`, `address_title`, `address_content`, `email_title`, `email_content`, `tel_title`, `tel_content`, `weibo_title`, `weibo_content`, `fax_title`, `fax_content`, `sms_title`, `sms_content`, `contact_title`, `code_content`, `other_title`, `code_title`, `web_content`, `contact_content`, `web_title`, `other_content`, `my_id`) VALUES
(2,	615,	1,	0,	0,	999,	1351233718,	'pc',	'zh-cn',	'广州办事处',	NULL,	'chen@domain.com',	'陈先生',	'020-88888888',	'020-88888887',	'510610',	'广东省广州市天河区天河北路366号',	'',	'负责分公司业务销售。',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(3,	615,	1,	0,	0,	999,	1351233706,	'pc',	'zh-cn',	'深圳办事处',	NULL,	'lili@domain.com',	'李先生',	'18688888888',	'075525981888',	'510610',	'罗湖区深南东路4003号世界金融中心1楼',	'',	'负责分公司业务销售。',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(4,	615,	1,	0,	0,	999,	1351233842,	'pc',	'zh-cn',	'东莞办事处',	NULL,	'chen126@domain.com',	'陈先生',	'07692039888',	'07692039887',	'',	'广东省东莞市东城中路达鑫创富中心',	'',	'',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(5,	625,	1,	0,	0,	999,	1351234364,	'pc',	'zh-cn',	'北京办事处',	NULL,	'lilis@domain.com',	'李先生',	'01084047312',	'01084047388',	'',	'北京市东城区隆福寺街95号',	'',	'',	NULL,	'',	'300',	'300',	'',	'',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	0),
(26,	1215,	1,	0,	0,	999,	1362044617,	'mobile',	'zh-tw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'cxvcxv',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(25,	1215,	1,	0,	0,	999,	1362044606,	'mobile',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'gffgdg',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(24,	1214,	1,	0,	0,	999,	1362044068,	'mobile',	'zh-tw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'繁.....',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(23,	1213,	1,	0,	0,	999,	1362043678,	'mobile',	'zh-tw',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'ffff广东省广州市天河客运站',	'113.349508',	'23.17719',	'hgghgjhg地址标题',	'地址内容',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'编码内容',	'其他标题',	'邮政编码',	'网站详情',	'联系人详情',	'网站主页',	'ggg其他信息',	NULL),
(22,	1214,	1,	0,	0,	999,	1367328158,	'mobile',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'东莞',	'东莞公司地址',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	'',	NULL),
(21,	1213,	1,	0,	0,	999,	1362042894,	'mobile',	'zh-cn',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	'广东省广州市天河客运站',	'113.349508',	'23.17719',	'地址标题',	'地址内容',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'编码内容',	'其他标题',	'邮政编码',	'网站详情',	'联系人详情',	'网站主页',	'其他信息',	NULL);

DROP TABLE IF EXISTS `y_member`;
CREATE TABLE `y_member` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `is_publish` int(1) DEFAULT NULL,
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `last_login_time` int(11) DEFAULT NULL,
  `ordernum` int(11) DEFAULT NULL,
  `username` varchar(255) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `realname` varchar(20) DEFAULT NULL,
  `sex` varchar(10) DEFAULT NULL,
  `face` varchar(255) DEFAULT NULL,
  `last_login_ip` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_mobile_contact`;
CREATE TABLE `y_mobile_contact` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `is_home` int(1) DEFAULT NULL,
  `is_contact` int(1) DEFAULT NULL,
  `is_publish` int(1) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `address_title` varchar(255) DEFAULT NULL,
  `address_content` varchar(255) DEFAULT NULL,
  `office_location` varchar(255) DEFAULT NULL,
  `point_x` varchar(255) DEFAULT NULL,
  `point_y` varchar(255) DEFAULT NULL,
  `email_title` varchar(255) DEFAULT NULL,
  `email_content` varchar(255) DEFAULT NULL,
  `tel_title` varchar(255) DEFAULT NULL,
  `tel_content` varchar(255) DEFAULT NULL,
  `weibo_title` varchar(255) DEFAULT NULL,
  `weibo_content` varchar(255) DEFAULT NULL,
  `fax_title` varchar(255) DEFAULT NULL,
  `fax_content` varchar(255) DEFAULT NULL,
  `sms_title` varchar(255) DEFAULT NULL,
  `sms_content` varchar(255) DEFAULT NULL,
  `contact_title` varchar(255) DEFAULT NULL,
  `contact_content` varchar(255) DEFAULT NULL,
  `web_content` varchar(255) DEFAULT NULL,
  `web_title` varchar(255) DEFAULT NULL,
  `other_content` varchar(255) DEFAULT NULL,
  `other_title` varchar(255) DEFAULT NULL,
  `code_content` varchar(255) DEFAULT NULL,
  `code_title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_mobile_contact` (`id`, `category_id`, `is_home`, `is_contact`, `is_publish`, `hardware`, `lang`, `address_title`, `address_content`, `office_location`, `point_x`, `point_y`, `email_title`, `email_content`, `tel_title`, `tel_content`, `weibo_title`, `weibo_content`, `fax_title`, `fax_content`, `sms_title`, `sms_content`, `contact_title`, `contact_content`, `web_content`, `web_title`, `other_content`, `other_title`, `code_content`, `code_title`) VALUES
(19,	1,	NULL,	NULL,	1,	'mobile',	'zh-cn',	'地址标题gggg',	'地址详细内容',	'广东省广州市天河客运站',	'113.349508',	'23.17719',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'联系人详情',	'网站详情',	'网站标题',	'其他内容',	'其他标题',	'邮政内容',	'邮政标题'),
(20,	1,	NULL,	NULL,	1,	'mobile',	'zh-tw',	't地址标题gfgfgfgf',	'tt地址详细内容',	'ttt广东省广州市天河客运站',	'113.349508',	'23.17719',	'邮箱标题',	'邮箱内容',	'电话标题',	'电话内容',	'微博标题',	'微博内容',	'传真标题',	'传真内容',	'短信标题',	'短信内容',	'联系人标题',	'联系人详情',	'网站详情',	'网站标题',	'其他内容',	'其他标题',	'邮政内容',	'邮政标题');

DROP TABLE IF EXISTS `y_news`;
CREATE TABLE `y_news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(1) DEFAULT '0',
  `is_comment` int(1) DEFAULT '0',
  `is_top` int(1) DEFAULT '0',
  `is_home` int(1) DEFAULT '0',
  `click_count` int(11) DEFAULT '1',
  `ordernum` int(11) DEFAULT '999',
  `update_time` int(11) DEFAULT NULL,
  `create_time` int(11) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `summary` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `content` text,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_news` (`id`, `category_id`, `is_publish`, `is_comment`, `is_top`, `is_home`, `click_count`, `ordernum`, `update_time`, `create_time`, `hardware`, `lang`, `title`, `tag`, `image`, `author`, `source`, `summary`, `seo_title`, `seo_keywords`, `seo_description`, `content`, `my_id`) VALUES
(1,	1170,	1,	0,	0,	0,	45,	999,	1467686704,	1467510566,	'pc',	'zh-cn',	'公司简介',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 26px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong&gt;昆山金联鑫精密五金制品厂&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/Public/ueditor/php/upload/20160705/14676867015442.jpg&quot; title=&quot;img4.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;昆山金联鑫精密五金制品厂创立于2007年3月，是精密五金和电热配件及周边设备的专业制造商。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;总部于广东东莞,厂房建筑面积2000㎡。本公司已于2007年12月通过了ISO9001:2000质量管理体系。经过多年的艰苦创业，依靠科学管理，聚集一批从事精密五金及电热科研开发的专业技术人员和高素质的市场销售人员，保证我公司产品可靠及稳定的质量，可以满足客户不断发展的需求，为客户提供优质及完善的产品售后服务。本公司位于江苏省昆山市石牌镇新澄路78号，公司地理位置便利。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;压铸机配件：（铝、镁合金）压铸机料管（料杯）、柱塞头（冲头）、连接杆（压射杆）、连接头、 压铸机料壶（鹅颈）、射咀头、射咀身（射料管）、合金锤头、（料锤）、钢令（活塞环）等。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;五金电热配件：特氟龙喷涂、铁氟龙热交换器、不锈钢换热器、各种加热饼、加热套、热电偶、不锈钢清洗篮、硅片清洗篮等。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;设备类：自动流水线，隧道烘炉，喷涂设备。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;本公司始终坚持以品質、创新、求精、服务为宗旨，创优质品牌，致力于打造中国光伏、半导体、PCB设备配件第一品牌，为客户提供一站式采购服务。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;金联鑫人在此感谢广大用户对我司的大力支持与信赖。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;主要客户：富士康集团公司、伟创力、赫比、比亚迪、华晨力华、毅华科技、华孚中镁等。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;br/&gt;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(2,	1538,	1,	0,	0,	0,	11,	999,	1467475200,	1467475200,	'pc',	'zh-cn',	'公司面貌',	NULL,	'577b1fda2513b.jpg',	'',	'',	'',	'',	'',	'',	'',	NULL),
(9,	1538,	1,	0,	0,	0,	1,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'生产设备',	NULL,	'577b1ff5ab4b9.jpg',	'',	'',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;我司現有CN加工中心3臺，龍門銑，車床等&lt;/span&gt;&lt;/p&gt;',	NULL),
(3,	1539,	1,	0,	0,	0,	36,	999,	1467686742,	1467518716,	'pc',	'zh-cn',	'技术服务',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 26px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;strong&gt;耐磨冲头性能特点&lt;/strong&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/Public/ueditor/themes/default/images/spacer.gif&quot; data-bd-imgshare-binded=&quot;1&quot; style=&quot;background:url(/Public/ueditor/lang/zh-cn/images/localimage.png) no-repeat center center;border:1px solid #ddd&quot; word_img=&quot;file:///C:/Users/Administrator/Desktop/GH/%E6%98%86%E5%B1%B1%E9%87%91%E8%81%94%E9%91%AB%E7%B2%BE%E5%AF%86%E4%BA%94%E9%87%91%E5%88%B6%E5%93%81%E5%8E%82/html/images/img5.jpg&quot;/&gt;&lt;/p&gt;&lt;p style=&quot;text-align:center;line-height: 33px; color: rgb(51, 51, 51); font-size: 20px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; font-weight: bold; background-color: rgb(255, 255, 255);&quot;&gt;&amp;nbsp;&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;耐磨冲头，是采用在特殊钢材为基体的表面上烧结一层耐磨材料而成。表面强化HRC38~45，对熔杯起到很好的保护作用(硬度较低不至于损害熔杯)。直径80以上的正常使用下寿命在2万多模次。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;耐磨冲头的三大特点及优势：　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1、耐磨冲头使用寿命是普通球铁冲头的20倍以上，性价比高普通球铁冲头平均使用寿命是一班一个(8小时)，而耐磨冲头平均使用寿命是一周以上(170小时)，耐磨冲头的使用寿命是普通球铁冲头的20倍以上。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2、耐磨冲头更换频率低，生产效率显著提升普通球铁冲头更换时间每班需15分钟，而耐磨冲头更换时间每周才需15分钟。耐磨冲头每周节省更换时间5个小时，增加5个小时的生产量，节省5个小时的能源，生产效率得以显著提升。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3、大大降低废品率&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;球铁冲头磨损后喷铝需更换冲头造成每班一个废品，耐磨冲头磨损后喷铝需更换冲头造成每周一个废品，每周可减少铸件废品20余件；球铁冲头更换冲头预热每班2件废品(慢压射不给增压)，耐磨冲头更换冲头预热每周2件废品(慢压射不给增压)，每周可减少预热废品40余件。例：以每件成品10元计算，每周可节省600元，一年可节省31200元。&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;使用说明：　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;1.确保冲头、压室、浇口套三者之间有良好的同心度、良好的配合公差，避免冲头表面拉伤、划伤或单边磨损。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;2.确保冲头有良好的冷却、良好的润滑，避免因热疲劳而开裂或表面拉伤。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;3.熔杯与模具浇口套相配合内孔不得错位，否则会出现冲头单边磨损、镍钴冲头端面因受剪力而剥落、拉伤等现象。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;4.冲头安装好后，需用熔融铝合金预热5~10次，使冲头、熔杯、浇口套同时预热到200ºC左右，冲头受力膨胀，确保冲头与熔杯的配合间隙理想化。联接轴配合示意图：　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;&lt;img src=&quot;/Public/ueditor/php/upload/20160705/14676867394104.jpg&quot; title=&quot;2015031371732929.jpg&quot;/&gt;　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;友情提示：用户最好能采用系列表内的规格，这样供货及时。如联接螺纹与我公司提供的规格存在出入，用户可以自行加工联接轴(用40cr材料调质)与压射头、压射杆相配 。配合方式如以上示意图。用户可以通过对N值的调整来调节冲头的长短要求。　　&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;标准压射头规格尺寸：&lt;br/&gt;直径(mm)Ø40Ø50Ø60Ø70Ø80Ø90Ø100Ø110Ø120Ø130Ø140长度(mm)90909090100120140140180180180螺纹M27X2M27X2M27X2M36X3M36X3M48X3M60X4M60X4M60X4M60X4M60X4&lt;/p&gt;&lt;p style=&quot;line-height: 33px; color: rgb(51, 51, 51); font-size: 14px; font-family: 微软雅黑, Verdana, Arial, Helvetica, sans-serif; margin-top: 0px; margin-bottom: 0px; padding: 0px; white-space: normal; background-color: rgb(255, 255, 255);&quot;&gt;备注：耐磨冲头一般可根据用户提供的图纸加工制作。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(4,	1395,	1,	0,	0,	0,	88,	999,	1467859790,	1467519146,	'pc',	'zh-cn',	'联系方式',	NULL,	NULL,	NULL,	NULL,	'',	'',	'',	'',	'&lt;p&gt;&amp;nbsp;&lt;/p&gt;&lt;p&gt;公司：昆山金联鑫精密五金制品厂&lt;/p&gt;&lt;p&gt;电话：0512-36904178&lt;/p&gt;&lt;p&gt;传真：0512-36904187&lt;/p&gt;&lt;p&gt;手机：廖先生 13915763883&lt;/p&gt;&lt;p&gt;24小时售后热线：13915763883&lt;/p&gt;&lt;p&gt;邮箱：liaoshuiqing@pcb-jlx.com&lt;/p&gt;&lt;p&gt;MSN : liaoshuiqing@hotmail.com&lt;/p&gt;&lt;p&gt;地址：江苏省昆山市石牌镇京坂路1199号&lt;/p&gt;',	NULL),
(6,	1540,	1,	0,	0,	0,	3,	999,	1467561600,	1467561600,	'pc',	'zh-cn',	'昆山金联鑫精密五金制品厂经营范围',	NULL,	'577b2213b4666.jpg',	'',	'',	'昆山金联鑫精密五金制品厂创立于2007年3月，是精密五金和电热配件及周边设备的专业制造商。 \r\n压铸机配件：（铝、镁合金）压铸机料管（料杯）、柱塞头（冲头）、连接杆（压射杆）、连接头、 压铸机料壶（鹅颈）、射咀头、射咀身（射料管）、合金锤头、（料锤）、钢令（活塞环）等。 \r\n五金电热配件：特氟龙喷涂、铁氟龙热交换器、不锈钢换热器、各种加热饼、加热套、热电偶、脱模剂、除渣剂、不锈钢清洗篮等。 ',	'',	'',	'',	'&lt;p&gt;昆山金联鑫精密五金制品厂创立于2007年3月，是精密五金和电热配件及周边设备的专业制造商。&amp;nbsp;&lt;/p&gt;&lt;p&gt;压铸机配件：（铝、镁合金）压铸机料管（料杯）、柱塞头（冲头）、连接杆（压射杆）、连接头、 压铸机料壶（鹅颈）、射咀头、射咀身（射料管）、合金锤头、（料锤）、钢令（活塞环）等。&amp;nbsp;&lt;/p&gt;&lt;p&gt;五金电热配件：特氟龙喷涂、铁氟龙热交换器、不锈钢换热器、各种加热饼、加热套、热电偶、脱模剂、除渣剂、不锈钢清洗篮等。&amp;nbsp;&lt;/p&gt;&lt;p&gt;本公司始终坚持以品質、创新、求精、服务为宗旨，创优质品牌。热诚与新老客户建立和发展业务。&lt;/p&gt;',	NULL),
(7,	1540,	1,	0,	0,	1,	11,	999,	1467561600,	1467561600,	'pc',	'zh-cn',	'如何保养压铸机配件？',	NULL,	'577b20d25c152.jpg',	'',	'',	'压铸机配件放置在干燥的地方，避免浸水破裂。　　\r\n压铸机配件之料勺的操做调养\r\n1、料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀。\r\n2、料勺等与开金液直接打仗的工具，发热电热器材要刷涂料减少开金液对料勺等工具的堕落，减少开金液删减铁量的机遇。',	'',	'',	'',	'&lt;p&gt;压铸机配件放置在干燥的地方，避免浸水破裂。　　&lt;/p&gt;&lt;p&gt;压铸机配件之料勺的操做调养&lt;/p&gt;&lt;p&gt;1、料勺等工具应停止少时分浸泡正在开金液内，以减少开金液对工具的腐蚀。&lt;/p&gt;&lt;p&gt;2、料勺等与开金液直接打仗的工具，发热电热器材要刷涂料减少开金液对料勺等工具的堕落，减少开金液删减铁量的机遇。&lt;/p&gt;&lt;p&gt;3、新刷涂料的工具应放正在炉边烘干后再操做，阳极染料以利于涂料正在工具大要组成一层坚毅的保护膜。&lt;/p&gt;&lt;p&gt;4、若操做机器足，钛锆制品厂炉中待机时分没有成太少，阳极染料以减少料勺正在开金液中的浸泡时分，收缩汤壁受炉内下温烘烤的时分。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(18,	1541,	1,	0,	0,	0,	1,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'压铸机配件产生气孔的原因及压铸机的维护与保养',	NULL,	'577b219f26700.jpg',	'',	'',	'为了保证压铸机的正常运行，应在正确的使用的同时，还应进行科学的维护工作。因此，必须根据说明书的要求和相关的规定，制订出机器的使用操作规程和维护管理制度，特别是安全规程，专人负责，认真贯彻落实，严禁违章作业。\r\n　　(1)清理机器上杂物和所有滑动表面上的灰尘、污物，对非自动润滑的滑动摩擦面进行润滑，检查保持润滑油箱内油量正常;',	'',	'',	'',	'&lt;p&gt;为了保证压铸机的正常运行，应在正确的使用的同时，还应进行科学的维护工作。因此，必须根据说明书的要求和相关的规定，制订出机器的使用操作规程和维护管理制度，特别是安全规程，专人负责，认真贯彻落实，严禁违章作业。&lt;/p&gt;&lt;p&gt;　　(1)清理机器上杂物和所有滑动表面上的灰尘、污物，对非自动润滑的滑动摩擦面进行润滑，检查保持润滑油箱内油量正常;&lt;/p&gt;&lt;p&gt;　　(2)检查液压油(液)容箱中的液位和管路有无渗漏现象，各连接紧固件有无松动;&lt;/p&gt;&lt;p&gt;　　(3)查看压力表指示是否正常，安全装置及行程开关是否正常;&lt;/p&gt;&lt;p&gt;　　(4)检查液压系统的压力、液压油(液)温度和颜色是否正常;&lt;/p&gt;&lt;p&gt;　　(5)查看自动润滑系统工作是否正常，特别是曲肘销套润滑情况;&lt;/p&gt;&lt;p&gt;　　(6)检查压室和冲头损伤情况，并及时清理和润滑;&lt;/p&gt;&lt;p&gt;　　(7)检查冷却系统是否正常;&lt;/p&gt;&lt;p&gt;　　(8)检查机器在运行中有无异常振动与噪声，及时进行处理。&lt;/p&gt;&lt;p&gt;　　压铸机配件产生气孔的原因&lt;/p&gt;&lt;p&gt;　　1、内浇口速度过高，湍流运动过剧，金属流卷入气体严重&lt;/p&gt;&lt;p&gt;　　2、内浇口截面积过小，喷射严重&lt;/p&gt;&lt;p&gt;　　3、内浇口位置不合理，通过内浇口后的金属立即撞击型壁、产生涡流，气体被卷入金属流中&lt;/p&gt;&lt;p&gt;　　4、排气道位置不对，截面积不够，造成排气条件不良&lt;/p&gt;&lt;p&gt;　　5、大机器压铸小零件，压室的充满度过小，尤其是卧式冷压铸机上更为明显&lt;/p&gt;&lt;p&gt;　　6、铸件设计不合理：a形成铸件有难以排气的部位;b局部部位的壁厚太厚&lt;/p&gt;&lt;p&gt;　　7、待加工面的加工量过大，使壁厚增加过多。&lt;/p&gt;&lt;p&gt;　　8、熔融金属中含有过多的气体&lt;/p&gt;&lt;p&gt;　　压铸机配件的气孔分为两种：&lt;/p&gt;&lt;p&gt;　　一种是填充时，金属卷入气体形成的内表面光亮和光滑、形状较为规则的孔洞。另一种是合金熔炼不正确或不够，气体熔解于合金中。压铸时，激冷甚剧，凝固很快，熔于金属内部的气体来不及析出，使金属内的气体留在铸件内而形成孔洞。&lt;/p&gt;&lt;p&gt;　　压铸机配件内的气孔以金属卷入型腔中的气体所形成的气孔是主要的，而气体的大部分为空气。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(10,	1538,	1,	0,	0,	0,	2,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'生产设备',	NULL,	'577b200755233.jpg',	'',	'',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;我司現有CN加工中心3臺，龍門銑，車床等&lt;/span&gt;&lt;/p&gt;',	NULL),
(11,	1538,	1,	0,	0,	0,	2,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'车床',	NULL,	'577b2018195e7.jpg',	'',	'',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;我司現有CN加工中心3臺，龍門銑，車床等&lt;/span&gt;&lt;/p&gt;',	NULL),
(12,	1538,	1,	0,	0,	0,	1,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'车床',	NULL,	'577b202b660ca.jpg',	'',	'',	'',	'',	'',	'',	'&lt;p&gt;&lt;span style=&quot;color: rgb(133, 133, 133); font-family: 瀹嬩綋; font-size: 14px; line-height: 25px; text-indent: 25px;  background-color: rgb(255, 255, 255);&quot;&gt;我司現有CN加工中心3臺，龍門銑，車床等&lt;/span&gt;&lt;/p&gt;',	NULL),
(20,	1541,	1,	0,	0,	0,	1,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'压铸机冲头卡、不回位怎么处理',	NULL,	'577b21c32e8b9.jpg',	'',	'',	'压铸机冲头经常卡、冲头不回解决方法：\r\n　　一、卡冲头\r\n　　检查及分析：冲头无动作，拆下冲头及冲头柄(锤柄)组件，射料活塞杆能回位，说明是冲头被卡住。\r\n　　1)检查冲头柄(锤柄)是否变形。装上冲头后，冲头应能在压射室(入料筒)中转动，否则为不正常。',	'',	'',	'',	'&lt;p&gt;压铸机冲头经常卡、冲头不回解决方法：&lt;/p&gt;&lt;p&gt;　　一、卡冲头&lt;/p&gt;&lt;p&gt;　　检查及分析：冲头无动作，拆下冲头及冲头柄(锤柄)组件，射料活塞杆能回位，说明是冲头被卡住。&lt;/p&gt;&lt;p&gt;　　1)检查冲头柄(锤柄)是否变形。装上冲头后，冲头应能在压射室(入料筒)中转动，否则为不正常。&lt;/p&gt;&lt;p&gt;　　2)检查冲头与压射室同轴度误差是否符合要求，压射室内径与型(模)具浇口套内径配合是否符合要求。&lt;/p&gt;&lt;p&gt;　　二、压铸冲头不回锤或回锤不到位&lt;/p&gt;&lt;p&gt;　　检查及分析：拆下冲头(锤头)及冲头联接组件，射料活塞杆能回位，说明是冲头被卡住，如拆下冲头后射&lt;/p&gt;&lt;p&gt;　　料活塞杆仍不能回位或回锤不到位则检查：&lt;/p&gt;&lt;p&gt;　　1、 回锤到位感应开关是否损坏；&lt;/p&gt;&lt;p&gt;　　2、 液压阀V24、V15、V32是否损坏；&lt;/p&gt;&lt;p&gt;　　3、 射料液压缸是否损坏。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(21,	1541,	1,	0,	0,	0,	1,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'不锈钢镀镍工艺流程',	NULL,	'577b21e66842a.jpg',	'',	'',	'化学镀镍过程涉及的氧化还原反应需要热能，对于任何化学镀液都是如此而已，即在一定的温度下才能发生化学沉积反应。除少数低温、常温镀液外，大多数的化学镀液要在比较高的温度下进行，当然不同的镀液对温度的敏感程度也不尽相同。',	'',	'',	'',	'&lt;p&gt;化学镀镍过程涉及的氧化还原反应需要热能，对于任何化学镀液都是如此而已，即在一定的温度下才能发生化学沉积反应。除少数低温、常温镀液外，大多数的化学镀液要在比较高的温度下进行，当然不同的镀液对温度的敏感程度也不尽相同。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;按照化学动力学经验公式，化学镀镍沉积速度为镀液温度的指数函数；某些化学镀液温度升高1℃，沉积速度增加5%-7%。在较高温度下速度较快，但是通过升高温度去提高镀速是要有镀液分解或降低寿命的风险的。为了尽可能得到一个尽可能快又不伤害镀液的稳定性，每种镀液都一个最佳的操作温度范围，比如酸性的，以次磷酸钠为还原剂的镀液最佳操作温度为88-92℃，在此范围内磷含量不会有超过1%的波动。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;由此可见对化学镀镍操作温度精确的控制是十分重要的，实际操作时镀液温度控制在最佳操作温度正负2℃范围内，应该尽可能让温度减少波动，我们在一些自动控制温度的生产线上，要定期对温控仪的温度传感器进行较正，以尽可能减少误差。另外，温度是与镀层的磷含量成反比的，越低的温度越有利于得到较高的磷含量，当然温度对磷含量的影响是比较小的。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(22,	1541,	1,	0,	0,	0,	1,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'压铸生产中机器工艺参数的设定和调节直接影响产品的质量',	NULL,	'577b22089bd9a.jpg',	'',	'',	'压铸生产中机器工艺参数的设定和调节直接影响产品的质量。一个参数可能造成产品的多个缺陷，而同一产品的同一缺陷有可能与多个参数有关，要求在试压铸生产中要仔细分析工艺参数的变化对铸件成型的影响。压铸生产企业通常由专人负责设定和调节机器的工艺参数。',	'',	'',	'',	'&lt;p&gt;压铸生产中机器工艺参数的设定和调节直接影响产品的质量。一个参数可能造成产品的多个缺陷，而同一产品的同一缺陷有可能与多个参数有关，要求在试压铸生产中要仔细分析工艺参数的变化对铸件成型的影响。压铸生产企业通常由专人负责设定和调节机器的工艺参数。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;压铸工艺参数的设定和调节技术&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;压铸生产中机器工艺参数的设定和调节直接影响产品的质量。一个参数可能造成产品的多个缺陷，而同一产品的同一缺陷有可能与多个参数有关，要求在试压铸生产中要仔细分析工艺参数的变化对铸件成型的影响。压铸生产企业通常由专人负责设定和调节机器的工艺参数。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;主要工艺参数的设定与调节技术&lt;/p&gt;&lt;p&gt;本节以力劲机械厂有限公司生产的DCC280卧式冷室压铸机为例，说明压铸生产中主要工艺参数的设定和调节技术。&lt;/p&gt;&lt;p&gt;DCC280卧式冷室压铸机工艺参数设定的内容及方法：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(1)射料时间：充填时间长短与铸件壁厚成正比。对于质量较大的铸件，压射速度(射料一速)较慢，则所需充填时间可适当加大，一般在2s以上。在快压压射速度(射料二速)下，冲头运动的时间等于填充时间。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(2)开模(型)时间：开模时间一般在2s以上。压铸件壁厚较薄时，开模时间较长；结构复杂的模具比结构简单的模具开模时间要长。调节开始时，开模时间可以略微长一点；然后再缩短。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;注意：机器工作程序为先开模，后开安全门，以防未完全冷却铸件喷溅伤人。&lt;/p&gt;&lt;p&gt;(3)顶出延时时间：在保证产品充分凝固成型、且不粘模的前提下，尽量减短顶出延时时间，一般在0.5s以上。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(4)顶回延时时间：在保证能顺利地取出铸件的前提下，尽量减短顶回延时时间，一般在0.5s以上。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(5)储能时间：一般在2s左右。设定时，操作机器作自动循环运动，观察储能时间结束时的压力是否能达到设定值；在能达到设定压力值的前提下，尽量减短储能时间。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(6)顶针次数：根据模具要求设定顶针次数。&lt;/p&gt;&lt;p&gt;(7)压力参数设定：在保证机器能正常工作，铸件产品质量能合乎要求的前提下，尽量减小工作压力。选择、设定压射比压时，应考虑以下因素：&lt;/p&gt;&lt;p&gt;&amp;nbsp; a）．压铸件结构特性决定的压力参数的设定。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;①壁厚因素：对薄壁件，压射比压选高些；对厚壁件，压实比压可选高些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;②铸件几何形状复杂程度：对于形状复杂的压铸件，选择高的压射和压实比压；对形状简单的铸件，比压应低一点。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;③工艺合理性：对工艺合理的模具和压铸件，压射和压实比压设得低一些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;b)压铸合金的特性决定的压力参数的设定。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;①合金的结晶温度窗口：对结晶温度窗口大的合金材料，选择高压射和压实比压；对结晶温度窗口小的合金材料，压射比压设得低一些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;②合金的流动性：对流动性好的合金，选择较低的压射比压；对流动性差的&lt;/p&gt;&lt;p&gt;合金，压射比压高些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;③合金的密度：对密度大的合金，压射比压、压实比压均应大一些；而对密度小的合金，压射比压、增压比压均选小些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;④铸件的比强度：要求铸件比强度大时，压实比压要高一点。&lt;/p&gt;&lt;p&gt;c)浇注系统决定的压力参数的设定。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;①浇道阻力：若浇道阻力大，且主要是由于浇道长、转向多，在同样截面积下的内浇道厚度小，则压实比压应选择大一些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;②浇道散热速度：若浇道散热速度快，则压射比压选高一些；反之，浇道散热速度慢，则压射比压需要设定低一点。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;d)排溢系统决定的压力参数的设置。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;①排气道分布：模具排气道分布合理时，压射比压和压实比压均选高一些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;②排气道截面积：模具排气道截面积足够大时，压射比压可选高一点。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(8)内浇道速度设定：若要求内浇道速度高，则压射比压应选高一些。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(9)温度设定：当合金熔体与模具温度的温差较大时，压射比压应选高一点；反之，若该温差较小，则压射比压设得低一点。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(10)压射速度的设定：压射速度分为慢压射速度(又称射料一速)、快压射速度(又称射料二速)和压实运动速度。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;慢压射速度通常在0.1~0.8m/s范围内选择，且运动速度由0逐渐增大。快压射速度与内浇道速度成正比，一般从低向高调节。在不影响铸件质量的情况下，以较低的快压射速度(即内浇道速度)为宜。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;压实运动所占时间极短。它的目的是压实金属，使铸件组织致密。压实运动速度在调节时，一般观察射料压力表的压力示值在压实运动中呈一斜线均匀上升，压铸产品无疏松现象即可。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(11)一速、二速射料速度的转换感应开关位置调节的原则：&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;a)压射冲头的一速、二速运动转换应该在压射冲头通过压室浇注口后进行。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;b)对于薄壁小铸件，一般一速延时时间较短，而二速较长。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;c)对于厚壁大铸件，一般一速延时时间较长，而二速较短。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;d)根据铸件质量(如飞边、欠铸、气泡等)调节转换点。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(12)金属熔体的温度调节：合金熔体的温度可在机器电气箱面板上显示和设定。各种合金熔体的浇注温度不相同；对同一压铸合金和不同结构的产品，厚壁铸件比薄壁铸件浇注温度要低。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(13)浇注量的选择：所选择的每次浇注量应使所生产出来的产品余料厚度在15~25mm范围为宜，并要求每次合金熔体的浇注量要稳定。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;(14)模温的控制：对于不同的合金熔体，其模温温度不同，一般以合金凝固温度的1/2为限。在压铸生产中，最重要的是模具工作温度的稳定和平衡——它是影响压铸件质量和压铸效率的重要因素之一。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;压铸机液压系统的参数设定和调节&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;机器液压系统各个动作的工艺参数，如压力、速度、行程、起点与终点，各个动作的时间和整个工作循环的总时间都有一定的技术参数。要求调试人员一定要熟悉机器技术性能，根据液压系统图，认真分析所有元件的结构、作用、性能和调试范围，搞清楚液压元件在设备上的实际位置，并了解机械、电气、液压的相互关系。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(19,	1541,	1,	0,	0,	0,	3,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'压铸机配件与铸件的联系',	NULL,	'577b216a04953.jpg',	'',	'',	'压铸机配件与铸件的联系\r\n1、破坏金属连续性；\r\n2、较少承载有效面积；\r\n3、气孔附近易引起应力集中,机械性能；\r\n4、弥散孔,气密性钛挂具制品；\r\n两分类(按气体去历)',	'',	'',	'',	'&lt;p&gt;压铸机配件与铸件的联系&lt;/p&gt;&lt;p&gt;1、破坏金属连续性；&lt;/p&gt;&lt;p&gt;2、较少承载有效面积；&lt;/p&gt;&lt;p&gt;3、气孔附近易引起应力集中,机械性能；&lt;/p&gt;&lt;p&gt;4、弥散孔,气密性钛挂具制品；&lt;/p&gt;&lt;p&gt;两分类(按气体去历)&lt;/p&gt;&lt;p&gt;1、侵进气孔: 砂型原料概略堆积的气体谥进金属液体中而组成；&lt;/p&gt;&lt;p&gt;气体去历: 中型质估中水分,钛锆制品厂 粘结剂,各种冈蹲泔；&lt;/p&gt;&lt;p&gt;特性: 多位于大要周围,尺寸较除夜,呈卵形或梨形孔的内大要被氧化.&lt;/p&gt;&lt;p&gt;组成进程:&lt;/p&gt;&lt;p&gt;浇注---水汽(一部门由分型里,通气孔架空,阳极染料别的一部门正在概略堆积呈下压中央面)—气压低落.溶进金属---一部门从金属液中劳出—浇心,其他正在铸件内部,组成螟孔.&lt;/p&gt;&lt;p&gt;防备: 降降型砂(型芯砂)的发起量,删减铸型排气才气.&lt;/p&gt;&lt;p&gt;2、析出气孔: 溶于金属液中的气体正在热凝进程中,果气体溶解度降降而析出, 使铸件组成螟孔. 启事: 金属熔化战浇注中与气体打仗(H2O2 NO CO等) 特性: 漫衍广,气孔尺寸甚小, 影响气稀性&lt;/p&gt;&lt;p&gt;3、反响反应气孔: 发热电热器材金属液与铸型原料,型芯撑,热铁或溶渣之间,果化教反响反应天撕媚气体而构秤弈气孔. 如: 热铁又光 Fe3O4 + C–Fe + CO↑ ∴热铁周围天活力孔 停止: 热铁 型芯撑大要没有得又光蚀,油污,要单调.&lt;/p&gt;&lt;p&gt;铸件量量节制&lt;/p&gt;&lt;p&gt;1、公允选定铸制开金战铸件挨算.&lt;/p&gt;&lt;p&gt;2、公允订定铸件足艺要供(许愿缺点,具涌定)&lt;/p&gt;&lt;p&gt;3、模子量量检验(模子及格—铸件及格)&lt;/p&gt;&lt;p&gt;4、铸件量量检验(宏没有雅观, 仪器)&lt;/p&gt;&lt;p&gt;5、铸件热措置: 消弭应力, 降降硬度,进步切削性,包管机器性能,退水,正水等&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(23,	1541,	1,	0,	0,	1,	8,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'铝合金化学抛光',	NULL,	'577b222eed6f9.jpg',	'',	'',	'铝和铝合金的化学抛光是以70％(质量百分数)的磷酸为基础的溶液。常用的是磷酸、硝酸、硫酸混合液，当合金成分变化时，硫酸含量(质量百分数)在9％。l5％之间变化，硝酸含量(质量百分比)在3％～9％之间变化。由于工作温度在105℃左右，大量产生氮氧化物污染环境。因此，在磷酸和硫酸混合液基础上用S类酸铜光亮剂作添加剂，产生了无黄烟化学抛光工艺。',	'',	'',	'',	'&lt;p&gt;铝和铝合金的化学抛光是以70％(质量百分数)的磷酸为基础的溶液。常用的是磷酸、硝酸、硫酸混合液，当合金成分变化时，硫酸含量(质量百分数)在9％。l5％之间变化，硝酸含量(质量百分比)在3％～9％之间变化。由于工作温度在105℃左右，大量产生氮氧化物污染环境。因此，在磷酸和硫酸混合液基础上用S类酸铜光亮剂作添加剂，产生了无黄烟化学抛光工艺。但这种无黄烟化学抛光只适用于纯铝或铝镁合金，对其他铝合金效果较差。后来又有只加2％硝酸的配方出现，也用类似的添加剂，没得到扩大适用范围。但是，至今磷酸、硝酸、硫酸混合液因为适应性强，还是主流配方。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;含铜、锌较高的铝合金，化学抛光时加2～5g/L铬酐有帮助。手册上有记述，含硅高的铝合金，化学抛光时用60～65mL／L硝酸、15～20mL／L氢氟酸、甘油1～2mL／L的混合液，在室温下浸2s。不过这种方法更像是浸蚀。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(24,	1541,	1,	0,	0,	1,	13,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'防腐材料阳极上的污垢怎么去除?',	NULL,	'577b225216abe.jpg',	'',	'',	'铝、镁阳极等阳极材料在阴极保护中的应用是非常多的，为了使镁金属更好的发挥作用，在阳极材料使用之前，都需对其质量进行检测，检测阳极表面是否受到污染。那么当阳极表面有污染时，可采取哪些清洁方式呢？\r\n1、干砂喷丸清理',	'',	'',	'',	'&lt;p&gt;铝、镁阳极等阳极材料在阴极保护中的应用是非常多的，为了使镁金属更好的发挥作用，在阳极材料使用之前，都需对其质量进行检测，检测阳极表面是否受到污染。那么当阳极表面有污染时，可采取哪些清洁方式呢？&lt;/p&gt;&lt;p&gt;1、干砂喷丸清理&lt;/p&gt;&lt;p&gt;干砂喷丸清理——该方法是用于镁合金铸件清理的最常用方法之一，一般企业会选择硅砂、钢砂、玻璃球或切丝锌丸、铝丸等进行喷砂，该方法还可用于酸洗前表面清理。当使用砂子或钢砂喷丸处理时，因为钢砂嵌入镁表面易导致表面腐蚀问题，干砂喷丸需进行酸性处理后再对镁阳极表面进行处理。&lt;/p&gt;&lt;p&gt;2、盘或研磨&lt;/p&gt;&lt;p&gt;盘或研磨——该情节方法主要是用来情节镁合金压铸件表面的压铸润滑油和其他表面污染物，通常与去污剂结合使用，而且它在清洁表面的同时，还具有一定的磨光作用。&lt;/p&gt;&lt;p&gt;3、干砂喷丸清理&lt;/p&gt;&lt;p&gt;干砂喷丸清理——该方法是用于镁合金铸件清理的最常用方法之一，一般企业会选择硅砂、钢砂、玻璃球或切丝锌丸、铝丸等进行喷砂，该方法还可用于酸洗前表面清理。当使用砂子或钢砂喷丸处理时，因为钢砂嵌入镁表面易导致表面腐蚀问题，干砂喷丸需进行酸性处理后再对镁阳极表面进行处理。&lt;/p&gt;&lt;p&gt;4、钢丝刷&lt;/p&gt;&lt;p&gt;钢丝刷——钢丝刷可清洁镁合金板的中间和电弧焊或电阻焊前去除氧化物。为了确保钢丝刷的清洁效果吗，压力的大小应该适当，以提高阳极质量。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL),
(25,	1541,	1,	0,	0,	0,	2,	999,	1467648000,	1467648000,	'pc',	'zh-cn',	'热喷涂原理及介绍',	NULL,	'577b226c643f3.jpg',	'',	'',	'热喷涂技术是表面工程领域的重要技术之一，它的原理是利用各种不同的热源，将预喷涂的各种材料如金属、合金、陶瓷、塑料及其各类复合材料加热至熔化或熔融状态，借助气流的高速雾化形成微粒雾流沉积在已预处理的工件表面形成堆积状，与基体紧密结合的涂层。而将Ni-Cr-B-Si系列喷涂层进行重熔处理形成的具有冶金结合特征的涂层称为喷熔层或重熔层。',	'',	'',	'',	'&lt;p&gt;热喷涂技术是表面工程领域的重要技术之一，它的原理是利用各种不同的热源，将预喷涂的各种材料如金属、合金、陶瓷、塑料及其各类复合材料加热至熔化或熔融状态，借助气流的高速雾化形成微粒雾流沉积在已预处理的工件表面形成堆积状，与基体紧密结合的涂层。而将Ni-Cr-B-Si系列喷涂层进行重熔处理形成的具有冶金结合特征的涂层称为喷熔层或重熔层。&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;热喷涂技术可用来喷涂几乎所有的固体工程材料，如硬质合金、陶瓷、金属、石墨和尼龙等，形成耐磨、耐蚀、隔热、抗氧化、绝缘、导电、防辐射等具有各种特殊功能的涂层。该技术还具有工艺灵活、施工方便、适应性强及经济效益好等优点，被广泛应用于宇航、机械、化工、冶金、地质、交通、建筑等工业部门，并获得了迅猛的发展。&amp;nbsp;&lt;/p&gt;&lt;p&gt;&amp;nbsp; 从喷涂材料进入热源到形成涂层称喷涂过程，一般经历四个阶段既加热、雾化、飞行和沉积。&lt;/p&gt;&lt;p&gt;&amp;nbsp; 热喷工艺过程如下：工件表面预处理 → 工件预热 → 喷涂 → 涂层后处理&lt;/p&gt;&lt;p&gt;1. 工件表面预处理&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;为了使涂层与基体材料很好地结合，基材表面必须清洁及粗糙， 净化和粗化表面的方法很多， 方法的选择要根据涂层的设计要求及基材的材质、形状、厚薄、表面原始状况以及施工条件等因素而定。净化处理的目的是除去工件表面的所有污垢，如氧化皮、油渍、油漆及其他污物， 关键是除去工件表面和渗入其中的油脂。净化处理的方法有：溶剂清洗法、蒸汽清洗法、碱洗法及加热脱脂法等。粗化处理的目的是增加涂层与基材间的接触面，增大涂层与基材的机械咬合力，使净化处理过的表面更加活化，以提高涂层与基材的结合强度。同时基材表面粗化还改变涂层中的残余应力分布，对提高涂层的结合强度也是有利的。粗化处理的方法有喷砂、机械加工法(如车螺纹、滚花)、电拉毛等。其中喷砂处理是最常用的粗化处理方法，常用的喷砂介质有氧化铝、碳化硅和冷硬铸铁等。喷砂时，喷砂介质的种类和粒度、喷砂时风压的大小等条件必须根据工件材质的硬度、工件的形状和尺寸等进行合理的选择。对于各种金属基体，推荐采用的砂粒粒度约为 16－60 号砂，粗砂用于坚固件和重型件的喷砂，喷砂压力为 0.5－0.7Mpa，薄工件易于变形，喷砂压力为 0.3－0.4 Mpa。特别值得注意的一点是用于喷砂的压缩空气一定要是无水无油的，否则会严重影响涂层的质量。喷涂前工件表面的粗化程度对大多数金属材料来说 2.5－13 &amp;nbsp;μmRa就够了。随着表面粗糙度的增加涂层与基体材料的结合增强，但是当表面粗糙度超过 10μmRa 后，涂层结合强度的提高程度便会减低。对于一些与基材粘结不好的涂层材料， 还应选择一种与基体材料粘结好的材料喷涂一层过渡层，称为粘结底层，常用作粘结底层的材料有 Mo、NiAl、NiCr 及铝青铜等。粘结底层的厚度一般为 0.08－0.18μm。&lt;/p&gt;&lt;p&gt;2.工件预热&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;预热的目的是为了消除工件表面的水分和湿气，提高喷涂粒子与工件接触时的界面温度，以提高涂层与基体的结合强度；减少因基材与涂层材料的热膨胀差异造成的应力而导致的涂层开裂。预热温度取决于工件的大小、形状和材质，以及基材和涂层材料的热膨胀系数等因素，一般情况下预热温度控制在 60 - 120 ℃之间。&lt;/p&gt;&lt;p&gt;3.喷涂&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;采用何种喷涂方法进行喷涂主要取决于选用的喷涂材料、工件的工况及对涂层质量的要求。例如，如果是陶瓷涂层，则最好选用等离子喷涂；如果是碳化物金属陶瓷涂层则最好采用高速火焰喷涂；若是喷涂塑料则只能采用火焰喷涂；而若要在户外进行大面积防腐工程的喷涂的话，那就非灵活高效的电弧喷涂或丝材火焰喷涂莫属了。总之，喷涂方法的选择一般来说是多样的，但对某种应用来说总有一种方法是最好的。预处理好的工件要在尽可能短的时间内进行喷涂，喷涂参数要根据涂层材料、喷枪性能和工件的具体情况而定，优化的喷涂条件可以提高喷涂效率、并获得致密度高、结合强度高的高质量涂层。&lt;/p&gt;&lt;p&gt;4.涂层后处理&lt;/p&gt;&lt;p&gt;&amp;nbsp; &amp;nbsp;喷涂所得涂层有时不能直接使用，必须进行一系列的后处理。用于防腐蚀的涂层,为了防止腐蚀介质透过涂层的孔隙到达基材引起基材的腐蚀，必须对涂层进行封孔处理。用作封孔剂的材料很多，有石腊、环氧树脂、硅树脂等有机材料及氧 化物等无机材料，如何选择合适的封孔剂，要根据工件的工作介质、环境、温度及成本等多种因素进行考虑。对于承受高应力载荷或冲击磨损的工件，为了提高涂层的结合强度，要对喷涂层进行重熔处理(如火焰重熔、感应重熔、激光重熔以及热等静压等)，使多孔的且与基体仅以机械结合的涂层变为与基材呈冶金结合的致密涂层。有尺寸精度要求的，要对涂层进行机械加工。由于喷涂涂层具有与一般的金属及陶瓷材料不同的特点，如涂层有微孔，不利于散热；涂层本身的强度较低，不能承受很大的切削力；涂层中有很多硬的质点，对刀具的磨损很快等，因而形成了喷涂涂层不同于一般材料的难于加工的特点。所以必须选用合理的加工方法和相应的工艺参数才能保证喷涂层机械加工的顺利进行和保证达到所要求的尺寸精度。&lt;/p&gt;&lt;p&gt;热喷涂技术的特点&lt;/p&gt;&lt;p&gt;从热喷涂技术的原理及工艺过程分析，热喷涂技术具有以下一些特点：&lt;/p&gt;&lt;p&gt;1. 由于热源的温度范围很宽，因而可喷涂的涂层材料几乎包括所有固态工程材料，如金属、合金、陶瓷、金属陶瓷、塑料以及由它们组成的复合物等。因而能赋予基体以各种功能(如耐磨、耐蚀、耐高温、抗氧化、绝缘、隔热、生物相容、红外吸收等)的表面。&lt;/p&gt;&lt;p&gt;2. 设备简单、操作灵活，既可对大型构件进行大面积喷涂，也可在指定的局部进行喷涂；既可在工厂室内进行喷涂也可在室外现场进行施工。&lt;/p&gt;&lt;p&gt;3.喷涂过程中基体表面受热的程度较小而且可以控制，因此可以在各种材料上进行喷涂(如金属、陶瓷、玻璃、布疋、纸张、塑料等)，并且对基材的组织和性能几乎没有影响，工件变形也小。&lt;/p&gt;&lt;p&gt;4. 喷涂操作的程序较少，施工时间较短，效率高，比较经济。随着热喷涂应用要求的提高和领域的扩大，特别是喷涂技术本身的进步，如喷涂设备的日益高能和精良，涂层材料品种的逐渐增多、性能逐渐提高，热喷涂技术近十年来获得了飞速的发展，不但应用领域大为扩展，而且该技术已由早期的制备一般的防护涂层发展到制备各种功能涂层；由单个工件的维修发展到大批的产品制造；由单一的涂层制备发展到包括产品失效分析、表面预处理、 涂层材料和设备的研制、选择，涂层系统设计和涂层后加工在内的喷涂系统工程；成为材料表面科学领域中一个十分活跃的学科。并且在现代工业中逐渐形成 象铸、锻、焊和热处理那样的独立的材料加工技术。成为工业部门节约贵重材料、节约能源、提高产品质量、延长产品使用寿命、降低成本、提高工效的重要的工艺手段，在国民经济的各个领域内得到越来越广泛的应用。&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;',	NULL);

DROP TABLE IF EXISTS `y_part`;
CREATE TABLE `y_part` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL DEFAULT '0',
  `orderNum` int(11) NOT NULL DEFAULT '0',
  `lang` varchar(255) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(255) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `is_publish` int(11) NOT NULL DEFAULT '0',
  `nowModule` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `y_part` (`id`, `pid`, `orderNum`, `lang`, `title`, `url`, `description`, `is_publish`, `nowModule`, `alias`) VALUES
(17,	0,	10,	'zh-cn',	'网站首页',	'__APP__',	'',	1,	'',	''),
(18,	0,	10,	'zh-cn',	'企业简介',	'__APP__/About',	'',	1,	'',	''),
(19,	0,	10,	'zh-cn',	'新闻动态',	'__APP__/News',	'',	1,	'',	''),
(20,	0,	10,	'zh-cn',	'产品展示',	'__APP__/Goods',	'',	1,	'',	''),
(21,	0,	10,	'zh-cn',	'服务网点',	'__APP__/Market',	'',	1,	'',	''),
(22,	0,	10,	'zh-cn',	'人才招聘',	'__APP__/Job/show',	'',	1,	'Job',	''),
(23,	0,	10,	'zh-cn',	'招商加盟',	'__APP__/Join',	'',	0,	'',	''),
(24,	0,	10,	'zh-cn',	'在线留言',	'__APP__/Guestbook',	'',	1,	'',	''),
(25,	0,	10,	'zh-cn',	'联系我们',	'__APP__/Contact',	'',	1,	'',	''),
(26,	0,	10,	'zh-cn',	'经营理念',	'/index.php/About/index/cid/1171.html',	'',	0,	'',	''),
(27,	0,	10,	'mobile',	'关于我们',	'__APP__/About',	'',	1,	'',	'About/index'),
(29,	0,	10,	'mobile',	'产品展示',	'__APP__/Goods',	'',	1,	'',	'Goods/index'),
(30,	0,	10,	'mobile',	'新闻动态',	'__APP__/News',	'',	1,	'',	'News/index'),
(31,	0,	10,	'mobile',	'营销网络',	'__APP__/Market',	'',	1,	'',	''),
(32,	0,	10,	'mobile',	'在线留言',	'__APP__/Message',	'',	1,	'',	''),
(33,	0,	10,	'mobile',	'联系方式',	'__APP__/Contact',	'',	1,	'',	''),
(34,	0,	10,	'mobile',	'企业微博',	'__APP__/Weibo',	'',	1,	'',	''),
(35,	0,	10,	'zh-cn',	'企业微博',	'__APP__/Weibo',	'',	1,	'',	''),
(37,	0,	10,	'mobile',	'人才招聘',	'__APP__/Job',	'',	1,	'',	'');

DROP TABLE IF EXISTS `y_survey`;
CREATE TABLE `y_survey` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned DEFAULT NULL,
  `pid` int(11) DEFAULT '0',
  `my_id` int(11) DEFAULT NULL,
  `issue_type` int(1) DEFAULT NULL,
  `validity_time` int(11) DEFAULT NULL,
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` text,
  `ques_num` int(11) NOT NULL DEFAULT '0',
  `is_publish` tinyint(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_survey_answer`;
CREATE TABLE `y_survey_answer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ques_id` int(11) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '999',
  `answer_type` tinyint(3) NOT NULL DEFAULT '0',
  `answer_title` varchar(250) NOT NULL DEFAULT '0',
  `my_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_survey_question`;
CREATE TABLE `y_survey_question` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `ordernum` int(11) NOT NULL DEFAULT '0',
  `answer_type` tinyint(3) NOT NULL DEFAULT '0',
  `ques_title` varchar(255) NOT NULL DEFAULT '',
  `text_answer` varchar(255) NOT NULL DEFAULT '',
  `answer_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_survey_result`;
CREATE TABLE `y_survey_result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_id` int(11) NOT NULL DEFAULT '0',
  `ques_id` int(11) NOT NULL DEFAULT '0',
  `answer_type` tinyint(4) NOT NULL DEFAULT '0',
  `answer_id` int(11) NOT NULL DEFAULT '0',
  `answer_text` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `y_system`;
CREATE TABLE `y_system` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `theme` varchar(255) DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `linkman` varchar(255) DEFAULT NULL,
  `company` varchar(50) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(20) DEFAULT NULL,
  `postcode` varchar(10) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `app_logo` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `website` varchar(50) DEFAULT NULL,
  `domain` varchar(255) DEFAULT NULL,
  `copyright` varchar(50) DEFAULT NULL,
  `credible` varchar(255) DEFAULT NULL,
  `icpnumber` varchar(255) DEFAULT NULL,
  `seo_title` varchar(100) DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `email_smtp_host` varchar(20) DEFAULT NULL,
  `email_smtp_port` varchar(10) DEFAULT NULL,
  `email_username` varchar(20) DEFAULT NULL,
  `email_password` varchar(20) DEFAULT NULL,
  `email_subject` varchar(255) DEFAULT NULL,
  `email_address` varchar(50) DEFAULT NULL,
  `email_auto` varchar(50) DEFAULT NULL,
  `is_twoCode` int(11) DEFAULT '1',
  `my_id` int(11) DEFAULT NULL,
  `sina_wb_url` varchar(255) DEFAULT NULL,
  `qq_wb_url` varchar(255) DEFAULT NULL,
  `weibo_type` int(11) DEFAULT NULL,
  `is_share` int(11) DEFAULT NULL,
  `share_plug` text,
  `weibo_plug` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

INSERT INTO `y_system` (`id`, `theme`, `hardware`, `lang`, `linkman`, `company`, `telephone`, `fax`, `postcode`, `address`, `image`, `app_logo`, `email`, `website`, `domain`, `copyright`, `credible`, `icpnumber`, `seo_title`, `seo_keywords`, `seo_description`, `email_smtp_host`, `email_smtp_port`, `email_username`, `email_password`, `email_subject`, `email_address`, `email_auto`, `is_twoCode`, `my_id`, `sina_wb_url`, `qq_wb_url`, `weibo_type`, `is_share`, `share_plug`, `weibo_plug`) VALUES
(1,	NULL,	'pc',	'zh-cn',	'廖先生',	'昆山金联鑫精密五金制品厂',	'13915763883',	'0512-36904187',	'',	'江苏省昆山市石牌镇京坂路1199号',	'577a6a2d41e04.png',	NULL,	'liaoshuiqing@pcb-jlx.com',	'',	'',	'昆山金联鑫精密五金制品厂',	'',	'',	'昆山金联鑫精密五金制品厂',	'压铸机配件/料壶/锤头/冲头/料管/射嘴身/射嘴头/钢令/力劲/宇部/东芝/东洋',	'昆山金联鑫精密五金制品厂创立于2007年，是压铸机配件及周边设备的专业制造商。',	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL,	NULL);

DROP TABLE IF EXISTS `y_theme`;
CREATE TABLE `y_theme` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pc` int(11) DEFAULT NULL,
  `mobile` int(11) DEFAULT NULL,
  `ipad` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `y_theme` (`id`, `pc`, `mobile`, `ipad`) VALUES
(1,	2,	1,	1);

DROP TABLE IF EXISTS `y_video`;
CREATE TABLE `y_video` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) unsigned NOT NULL,
  `is_publish` int(11) unsigned DEFAULT '0',
  `is_comment` int(11) unsigned DEFAULT NULL,
  `is_top` int(11) unsigned DEFAULT NULL,
  `is_home` int(11) unsigned DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `ordernum` int(11) unsigned DEFAULT '999',
  `update_time` int(11) unsigned DEFAULT NULL,
  `create_time` int(11) unsigned DEFAULT NULL,
  `hardware` varchar(255) NOT NULL DEFAULT 'pc',
  `lang` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `imgwidth` varchar(255) DEFAULT NULL,
  `imgheight` varchar(255) DEFAULT NULL,
  `downfile` varchar(255) DEFAULT NULL,
  `url` text,
  `tag` varchar(255) DEFAULT NULL,
  `is_show` int(11) DEFAULT '0',
  `is_online` int(11) DEFAULT NULL,
  `y_or_t` int(11) DEFAULT NULL,
  `vWidth` varchar(255) DEFAULT NULL,
  `vHeight` varchar(255) DEFAULT NULL,
  `is_phone` int(11) DEFAULT NULL,
  `my_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


-- 2016-07-25 01:50:57
