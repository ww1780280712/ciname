-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.5.53 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win32
-- HeidiSQL 版本:                  9.5.0.5220
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 moviestation 的数据库结构
CREATE DATABASE IF NOT EXISTS `moviestation` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `moviestation`;

-- 导出  表 moviestation.admin 结构
CREATE TABLE IF NOT EXISTS `admin` (
  `a_id` int(11) NOT NULL COMMENT '管理员id',
  `a_name` char(16) DEFAULT NULL COMMENT '管理员账户',
  `a_tel` bigint(20) DEFAULT NULL COMMENT '管理员电话',
  `a_password` char(32) DEFAULT NULL COMMENT '管理员密码',
  `a_lasttime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `a_status` int(2) DEFAULT '1' COMMENT '1为正常',
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员';

-- 正在导出表  moviestation.admin 的数据：2 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` (`a_id`, `a_name`, `a_tel`, `a_password`, `a_lasttime`, `a_status`) VALUES
	(1, '张立', 15630615629, 'zhangli', '2018-10-26 14:09:22', 1),
	(2, '王伟', 15696517982, 'wangwei', '2018-09-25 09:28:28', 1);
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- 导出  表 moviestation.bdsource 结构
CREATE TABLE IF NOT EXISTS `bdsource` (
  `bds_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_id` int(11) NOT NULL COMMENT '电影id movies外键',
  `bds_name` text COMMENT '资源',
  `bds_pw` text,
  `bds_date` date NOT NULL COMMENT '添加时间',
  `bds_upclass` int(2) NOT NULL DEFAULT '0' COMMENT '添加人类型0管理员',
  `bds_upname` char(12) NOT NULL COMMENT '添加人账号',
  `bds_status` int(4) NOT NULL COMMENT '资源状态0通过，1待审核，2审核不通过',
  `bds_describe` text,
  PRIMARY KEY (`bds_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='百度资源表';

-- 正在导出表  moviestation.bdsource 的数据：18 rows
/*!40000 ALTER TABLE `bdsource` DISABLE KEYS */;
INSERT INTO `bdsource` (`bds_id`, `m_id`, `bds_name`, `bds_pw`, `bds_date`, `bds_upclass`, `bds_upname`, `bds_status`, `bds_describe`) VALUES
	(1, 1, 'https://pan.baidu.com/s/1x-DW62OIHa_LCu6xg7kd0A', '6666', '2018-09-21', 0, '电里', 0, '蓝光1080p特效中英字幕视频'),
	(2, 1, 'https://pan.baidu.com/s/1bEqQFl_394V1-oNQo_qICQ', '1omw', '2018-09-21', 0, '电里', 0, 'WEB-DL1080p内嵌中英字幕视频'),
	(4, 4, 'http://pan.baidu.com/s/1hslS0bq', 'uudq', '0000-00-00', 0, '电里', 0, NULL),
	(3, 2, 'https://pan.baidu.com/s/1rasnW8O', '7ucy', '0000-00-00', 0, '电里', 0, NULL),
	(5, 5, 'http://pan.baidu.com/s/1o7GjwYQ', '83rl', '0000-00-00', 0, '电里', 0, NULL),
	(6, 6, 'http://pan.baidu.com/s/1jIL3MCY', 'h554', '0000-00-00', 0, '电里', 0, NULL),
	(7, 7, 'http://pan.baidu.com/s/1bpzU0zH', 'iq6x', '0000-00-00', 0, '电里', 0, NULL),
	(8, 8, 'http://pan.baidu.com/s/1c2mNyCw', '1pe8', '0000-00-00', 0, '电里', 0, NULL),
	(9, 9, 'https://pan.baidu.com/s/1o7EjT3c', 'jpxz', '0000-00-00', 0, '电里', 0, NULL),
	(10, 10, 'http://pan.baidu.com/s/1bEwnD0', 'qmhz', '0000-00-00', 0, '电里', 0, NULL),
	(11, 11, 'https://pan.baidu.com/s/1o8ttvdg', 'i356', '0000-00-00', 0, '电里', 0, NULL),
	(12, 12, 'http://pan.baidu.com/s/1jIliNsU', 'ehg8', '0000-00-00', 0, '', 0, NULL),
	(19, 15, '百度1', NULL, '2018-09-26', 0, '电里', 0, NULL),
	(20, 16, '百度1', NULL, '2018-09-26', 0, '电里', 0, NULL),
	(21, 16, 'baidu2', NULL, '2018-09-26', 0, '电里', 0, NULL),
	(22, 17, 'sss', NULL, '2018-09-26', 0, '电里', 0, NULL),
	(23, 18, 'bd1', NULL, '2018-09-26', 0, '电里', 0, NULL),
	(24, 20, 'adaf', NULL, '2018-09-26', 0, '电里', 0, NULL);
/*!40000 ALTER TABLE `bdsource` ENABLE KEYS */;

-- 导出  表 moviestation.bdsource0 结构
CREATE TABLE IF NOT EXISTS `bdsource0` (
  `bds_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_id` int(11) NOT NULL COMMENT '电影id movies外键',
  `bds_name` text COMMENT '资源',
  `bds_date` date NOT NULL COMMENT '添加时间',
  `bds_upclass` int(2) NOT NULL DEFAULT '0' COMMENT '添加人类型0管理员',
  `bds_upname` char(12) NOT NULL COMMENT '添加人账号',
  `bds_status` int(4) NOT NULL COMMENT '资源状态0通过，1待审核，2审核不通过',
  PRIMARY KEY (`bds_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='百度资源表';

-- 正在导出表  moviestation.bdsource0 的数据：15 rows
/*!40000 ALTER TABLE `bdsource0` DISABLE KEYS */;
INSERT INTO `bdsource0` (`bds_id`, `m_id`, `bds_name`, `bds_date`, `bds_upclass`, `bds_upname`, `bds_status`) VALUES
	(1, 9, 'alhlada', '2018-09-21', 0, '电里', 0),
	(2, 10, 'alhlada', '2018-09-21', 0, '电里', 0),
	(3, 11, 'alhlada', '2018-09-21', 0, '电里', 0),
	(4, 12, '无', '2018-09-21', 0, '电里', 0),
	(5, 13, '', '2018-09-21', 0, '电里', 0),
	(6, 14, '', '2018-09-21', 0, '电里', 0),
	(7, 19, '百度资源', '2018-09-22', 0, '电里', 0),
	(8, 20, '百度资源', '2018-09-22', 0, '电里', 0),
	(9, 21, '百度资源', '2018-09-22', 0, '电里', 0),
	(10, 22, '百度资源', '2018-09-22', 0, '电里', 0),
	(11, 23, '两个都变', '2018-09-22', 0, '电里', 0),
	(12, 23, '变变变', '2018-09-22', 0, '电里', 0),
	(13, 29, '百度1', '2018-09-23', 0, '电里', 0),
	(16, 29, '百度2', '2018-09-23', 0, '电里', 0),
	(15, 30, '的', '2018-09-23', 0, '电里', 0);
/*!40000 ALTER TABLE `bdsource0` ENABLE KEYS */;

-- 导出  表 moviestation.collection 结构
CREATE TABLE IF NOT EXISTS `collection` (
  `c_id` int(16) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `u_id` int(11) DEFAULT NULL COMMENT '收藏人id',
  `m_id` int(11) DEFAULT NULL COMMENT '收藏电影',
  `c_date` datetime DEFAULT NULL COMMENT '收藏时间',
  `c_status` int(2) DEFAULT '1' COMMENT '收藏状态默认为1表示收藏',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='收藏';

-- 正在导出表  moviestation.collection 的数据：15 rows
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
INSERT INTO `collection` (`c_id`, `u_id`, `m_id`, `c_date`, `c_status`) VALUES
	(7, 1, 10, '2018-09-25 15:53:08', 1),
	(12, 1, 1, '2018-09-25 22:03:22', 1),
	(9, 2, 11, '2018-09-25 15:54:39', 1),
	(13, 2, 5, '2018-09-26 15:15:24', 1),
	(14, 16, 2, '2018-09-26 17:14:14', 1),
	(16, NULL, 2, '2018-10-25 23:29:13', 1),
	(17, NULL, 2, '2018-10-25 23:29:14', 1),
	(18, NULL, 2, '2018-10-25 23:29:15', 1),
	(19, NULL, 2, '2018-10-25 23:31:53', 1),
	(20, NULL, 2, '2018-10-25 23:36:19', 1),
	(21, NULL, 2, '2018-10-25 23:37:14', 1),
	(22, NULL, 2, '2018-10-25 23:37:16', 1),
	(23, NULL, 2, '2018-10-25 23:37:18', 1),
	(25, NULL, 1, '2018-10-26 14:11:21', 1),
	(26, 17, 1, '2018-10-26 14:11:51', 1);
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;

-- 导出  表 moviestation.movies 结构
CREATE TABLE IF NOT EXISTS `movies` (
  `m_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键，电影id',
  `m_name` char(50) DEFAULT NULL COMMENT '电影名',
  `m_info` text COMMENT '电影简介信息',
  `m_director` char(30) DEFAULT NULL COMMENT '电影导演',
  `m_actor` text COMMENT '演员',
  `m_class` char(30) DEFAULT NULL COMMENT '电影分类',
  `m_location` char(16) DEFAULT NULL COMMENT '电影制片地区',
  `m_language` char(20) DEFAULT NULL COMMENT '语言',
  `m_showtime` date DEFAULT NULL COMMENT '上映日期',
  `m_anname` char(50) DEFAULT NULL COMMENT '又名',
  `m_update` datetime DEFAULT NULL COMMENT '资源发布时间',
  `m_tag` text COMMENT '电影标签',
  `m_score` double(2,1) DEFAULT NULL COMMENT '电影评分',
  `m_uperclass` char(50) DEFAULT '管理员' COMMENT '资源分享人类型，0代表管理员',
  `m_upername` char(16) DEFAULT NULL COMMENT '资源分享人name',
  `m_status` int(2) DEFAULT NULL COMMENT '状态：0通过，1待审核 2：审核通过，',
  `m_image` char(255) DEFAULT './uploads/2018/09/test.jpg' COMMENT '封面照片',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COMMENT='电影';

-- 正在导出表  moviestation.movies 的数据：21 rows
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` (`m_id`, `m_name`, `m_info`, `m_director`, `m_actor`, `m_class`, `m_location`, `m_language`, `m_showtime`, `m_anname`, `m_update`, `m_tag`, `m_score`, `m_uperclass`, `m_upername`, `m_status`, `m_image`) VALUES
	(1, '复仇者联盟3：无限战争', '最先与灭霸军团遭遇的雷神索尔一行遭遇惨烈打击，洛基遇害，空间宝石落入灭霸之手。未几，灭霸的先锋部队杀至地球，一番缠斗后掳走奇异博士。为阻止时间宝石落入敌手，斯塔克和蜘蛛侠闯入了敌人的飞船。与此同时，拥有心灵宝石的幻视也遭到外星侵略者的袭击，为此美国队长、黑寡妇等人将其带到瓦坎达王国，向黑豹求助。幸免于难的索尔与星爵一行相逢，随后他们兵分两路。索尔与火箭、格鲁特踏上再铸雷神之锤的旅程，星爵则与卡魔拉等人试图阻止灭霸的恶行。而知晓灵魂宝石下落的卡魔拉，同样是其义父灭霸追踪的对象。 ', '安东尼·罗素 / 乔·罗素', '小罗伯特·唐尼 / 克里斯·海姆斯沃斯 / 克里斯·埃文斯 / 马克·鲁弗洛 / 乔什·布洛林 / 佐伊·索尔达娜 / 本尼迪克特·康伯巴奇 / 克里斯·帕拉特 / 汤姆·赫兰德 / 伊丽莎白·奥尔森 / 保罗·贝坦尼 / 斯嘉丽·约翰逊 / 查德维克·博斯曼 / 塞巴斯蒂安·斯坦 ', '爱情片', '美国', '国语', '2018-09-24', '复仇者联盟3：无限之战', '2018-10-11 23:47:43', NULL, 1.0, '管理员', '张一', 0, './uploads/2018/09/a561b538ly1ftsrkmiwv5j20u018fdru.jpg'),
	(2, '正义联盟 Justice League', '受到超人无私奉献的影响，蝙蝠侠重燃了对人类的信心，接受了新盟友——神奇女侠（戴安娜·普林斯）的帮助，去对抗更加强大的敌人。蝙蝠侠和神奇女侠一同寻找并招募了一支超人类联盟来抵挡新觉醒的威胁。但尽管这支队伍集结了超人、蝙蝠侠、神奇女侠、闪电侠、海王和钢骨等人，他们似乎无法阻止敌人对地球的进攻……', '扎克·施奈德', '本·阿弗莱克 / 亨利·卡维尔 / 盖尔·加朵', '科幻', '美国', '英语', '2018-09-24', ' The Justice League Part One', '2018-09-24 21:53:51', NULL, 6.5, '管理员', '张二', 0, './uploads/2018/09/a561b538ly1fmpfkenzysj20u01a8wpm.jpg'),
	(3, '复仇者联盟2：奥创纪元 Avengers: Age of Ultron', '托尼·斯塔克（小罗伯特·唐尼 Robert Downey Jr. 饰）试图重启一个已经废弃的维和项目，不料该项目却成为危机导火索。世上最强大的超级英雄——钢铁侠、美国队长（克里斯·埃文斯 Chris Evans 饰）、雷神（克里斯·海姆斯沃斯 Chris Hemsworth 饰）、绿巨人（马克·鲁弗洛 Mark Ruffalo 饰）、黑寡妇（斯嘉丽·约翰逊 Scarlett Johansson 饰）和鹰眼（杰瑞米·雷纳 Jeremy Renner 饰），不得不接受终极考验，拯救危在旦夕的地球。神秘反派奥创（詹姆斯·斯派德 James Spader 配音）逐渐崛起，超级英雄们必须重新集结，竭力阻止奥创实施人类灭绝计划。战斗中，复仇者联盟成员们还遇到了两个新人物——旺达·马克西莫夫（伊丽莎白·奥尔森 Elizabeth Olsen 饰）和皮特罗·马克西莫... ', '乔斯·韦登', '小罗伯特·唐尼 / 克里斯·海姆斯沃斯 / 马克·鲁弗洛 / 克里斯·埃文斯 / 斯嘉丽·约翰逊 /', '科幻', '美国', '英语', '2018-09-24', '复仇者联盟：奥创时代', '2018-09-24 22:09:51', NULL, 7.2, '管理员', '张三', 0, './uploads/2018/09/006qnv8Ggw1f3p2qtgqq8j30b90go0ww.jpg'),
	(4, '复仇者联盟 The Avengers', '一股突如其来的强大邪恶势力对地球造成致命威胁，没有任何一个超级英雄能够单独抵挡。长期致力于保护全球安危的神盾局（SHIELD）感到措手不及，其指挥官“独眼侠”尼克-法瑞（塞缪尔·杰克逊 Samuel L. Jackson 饰）意识到他必须创建一个“史上最强”的联盟组织，云集各方超级英雄一起发威，才能拯救世界于水深火热，抵御黑暗势力的侵袭。于是由六大超级英雄——“钢铁侠”（小罗伯特·唐尼 Robert Downey Jr. 饰）、“雷神” （克里斯·海姆斯沃斯 Chris Hemsworth 饰）、“美国队长”（克里斯·埃文斯 Chris Evans 饰）、“绿巨人” （马克·鲁弗洛 Mark Ruffalo 饰）、“黑寡妇”（斯嘉丽·约翰逊 Scarlett Johansson 饰）和“鹰眼”（杰瑞米·雷纳 Jeremy Renner 饰）组成的 “复仇者联盟”应运而生。他们各显神通，团结一心，终于战胜了邪恶势力，保证了地球的安全。', '乔斯·韦登', ' 小罗伯特·唐尼 / 克里斯·埃文斯 / 斯嘉丽·约翰逊 / 克里斯·海姆斯沃斯', '战争', '美国', '英语', '2018-09-24', '复仇者', '2018-09-24 22:42:47', NULL, 7.0, '管理员', '张四', 0, './uploads/2018/09/005GAtUNgw1ev9747s55mj30b90gotca.jpg'),
	(5, '银河护卫队 Guardians of the Galaxy', '彼得·奎尔（克里斯·帕拉特 Chris Pratt 饰）是一名从小被劫持到外太空的地球人，在义父勇度（迈克尔·鲁克 Michael Rooker 饰）的培养下成了一个终极混混，自称“星爵”。一次行动中他偷了一块神秘球体，便成为了赏金猎人火箭浣熊（布莱德利·库珀 B radl ey Cooper 配音）、树人格鲁特（范·迪塞尔 Vin Diesel 配音）的绑架目标，而神秘的卡魔拉（佐伊·索尔达娜 Zoe Saldana 饰）也对神秘球体势在必得。经过笑料百出的坎坷遭遇，星爵被迫和这三人，以及复仇心切的“毁灭者”德拉克斯（戴夫·巴蒂斯塔 Dave Batista 饰）组成小分队逃避“指控者”罗南（李·佩斯 Lee Pace 饰）的追杀。然而这个神秘球体拥有无穷的力量，小分队必须团结一致对付罗南，才有可能解救整个银河系，银河护卫队由此诞生', '詹姆斯·古恩', '克里斯·普拉特 / 佐伊·索尔达娜 / 布莱德利·库珀 / 范·迪塞尔', '喜剧', '美国', '英语', '2018-09-24', '银河守卫者', '2018-09-24 23:01:51', NULL, 7.2, '管理员', '张五', 0, './uploads/2018/09/006xTuHMgy1fe17jkvd73j30wl15hn7k.jpg'),
	(6, '银河护卫队2 Guardians of the Galaxy Vol. 2', '漫威影业最新力作《银河护卫队2》带着全新劲爆好听的“劲歌金曲第二辑”回归大银幕！银河护卫队在本集中穿越宇宙，继续外太空的史诗冒险之旅。他们必须共同作战，守护彼此；同时要解开“星爵”彼得·奎尔的身世之谜。旧日敌人变为盟友，漫画中深受喜爱的角色也会现身，对护卫队出手援助。漫威电影宇宙则将持续扩张，进入新纪元！', '詹姆斯·古恩', '克里斯·普拉特 / 佐伊·索尔达娜 / 戴夫·巴蒂斯塔 / 范·迪塞尔', '科幻', '美国', '英语', '2018-09-24', 'Guardians of the Galaxy 2', '2018-09-24 23:10:20', NULL, 7.3, '管理员', '张六', 0, './uploads/2018/09/006xTuHMgy1ffl5awvgmyj30jg0t6gre.jpg'),
	(7, '长城 The Great Wall', '电影《长城》讲述了在古代，一支中国精英部队为保卫人类，在举世闻名的长城上与怪兽饕餮进行生死决战的故事。欧洲雇佣军威廉（马特·达蒙 Matt Damon 饰）与同伴佩罗·托瓦尔（佩德罗·帕斯卡 Pedro Pascal 饰）不远万里来到中国盗取火药配方，意外发现了长城是为抵御60年降临人间一次的饕餮所建。长城内部机关重重，宛如“陆上航母”，由无影禁军世代镇守。在这里，威廉见识了饕餮的凶残，也见证了无影禁军的精锐和勇敢，并被这群战士之间的信任和牺牲所感动，义无反顾地加入到了共同守护人类的战斗当中。', '张艺谋', '马特·达蒙 / 景甜 / 佩德罗·帕斯卡 / 刘德华', '动作', '中国', '国语', '2018-09-24', '万里长城', '2018-09-24 23:17:21', NULL, 7.2, '管理员', '张七', 0, './uploads/2018/09/006xTuHMgy1fg5ofyi93uj30wd15malh.jpg'),
	(8, '大话西游之月光宝盒', '孙悟空（周星驰）护送唐三藏（罗家英）去西天取经路上，与牛魔王合谋欲杀害唐三藏，并偷走了月光宝盒，此举使观音萌生将其铲除心思，经唐三藏请求，孙悟空被判五百年后重新投胎做人赎其罪孽。 ', '刘镇伟', '周星驰 / 吴孟达 / 罗家英 / 蓝洁瑛', '爱情', '中国', '国语', '2018-09-24', '齐天大圣东游记', '2018-09-24 23:24:36', NULL, 8.5, '管理员', '张八', 0, './uploads/2018/09/005GAtUNgw1eqce986kmmj30bx0goacs.jpg'),
	(9, '大话西游之大圣娶亲', '至尊宝（周星驰）被月光宝盒带回到五百年前，遇见紫霞仙子（朱茵），被对方打上烙印成为对方的人，并发觉自己已变成孙悟空。 ', '刘镇伟', '周星驰 / 吴孟达 / 朱茵 / 蔡少芬', '恐怖', '中国', '国语', '2018-09-24', '齐天大圣西游记', '2018-09-24 23:31:32', NULL, 8.3, '管理员', '张九', 0, './uploads/2018/09/006xTuHMgy1ffi6ipv7lrj31kw27n7sr.jpg'),
	(10, '釜山行 부산행', '一场神秘的病毒疫情爆发，让整个韩国陷入紧急状态！ ', '延尚昊', '孔侑 / 郑有美 / 马东锡 / 安昭熙 ', '恐怖', '韩国', '韩语', '2018-09-24', 'Train to Busan', '2018-09-24 23:40:36', NULL, 7.6, '管理员', '张十', 0, './uploads/2018/09/005GAtUNgw1f6rripu12tj30bn0godj5.jpg'),
	(11, '死亡笔记 デスノート', '死神硫克把一本“死亡笔记”遗落人间，被天才少年夜神月（藤原龙也 饰）拾到，月利用“死亡笔记”制裁了许多法律的正义无法制裁的犯人，他自称以“KILLER =基拉”为名的“救世主”，利用自己的双手制裁犯罪者，构筑理想中的世界；一连串杀人事件引起了ICPO（国际刑警组织）的注意，派出了天才侦探L（松山健一 饰）进行调查，步步逼近，和月斗智斗勇…… ', '金子修介', '藤原龙也 / 松山研一 / 香椎由宇 / 濑户朝香', '喜剧', '日本', '日语', '2018-09-24', 'Death Note', '2018-09-24 23:47:53', NULL, 7.4, '管理员', '王一', 0, './uploads/2018/09/006xTuHMgw1fapbbxzgezj30d60gojuc.jpg'),
	(12, '天使爱美丽 Le fabuleux destin d\'Amélie Poulain', '艾米莉（奥黛丽·塔图 Audrey Tautou 饰）有着别人看来不幸的童年——父亲给她做健康检查时，发现她心跳过快，便断定她患上心脏病，从此艾米莉与学校绝缘。随后因为一桩意外，母亲在她眼前突然死去。这一切都毫不影响艾米莉对生活的豁达乐观。 ', '让-皮埃尔·热内', '奥黛丽·塔图 / 马修·卡索维茨 / 贾梅尔·杜布兹', '爱情', '法国', '法语', '2018-09-24', '天使艾米莉', '2018-09-24 23:55:39', NULL, 8.6, '用户', '王二', 0, './uploads/2018/09/006qnv8Ggw1f3z5tmkwdlj30bd0go0u7.jpg'),
	(13, '张立电影修改', '太好看了', '张艺谋', '张立', '爱情片', '中国', '国语', '2018-09-17', '点应该别名', '2018-09-26 17:27:52', NULL, 1.0, '管理员', NULL, 0, './uploads/2018/09/test.jpg'),
	(14, '天剑', '太好看了', '', '', '喜剧片', '', '国语', '0000-00-00', '', '2018-09-26 15:48:31', NULL, 3.0, '管理员', '电里', 0, './uploads/2018/09/test.jpg'),
	(15, '天剑', '太好看了', '', '', '喜剧片', '', '国语', '0000-00-00', '', '2018-09-26 15:49:48', NULL, 3.0, '管理员', '电里', 0, './uploads/2018/09/test.jpg'),
	(16, '天剑', '太好看了', '', '', '喜剧片', '', '国语', '0000-00-00', '', '2018-09-26 15:50:19', NULL, 3.0, '管理员', '电里', 0, './uploads/2018/09/test.jpg'),
	(17, 'guanliyuan', '', '', '', '爱情片', '', '国语', '0000-00-00', '', '2018-09-26 16:11:40', NULL, 1.0, '管理员', '电里', 0, './uploads/2018/09/test.jpg'),
	(18, '用户', '', '', '', '爱情片', '', '国语', '0000-00-00', '', '2018-09-26 16:14:09', NULL, 1.0, '用户', '电里', 2, './uploads/2018/09/test.jpg'),
	(19, 'guanliyuan', '简介', 'adafaf', 'fefafaf', '爱情片', 'agagag', '日语', '2018-09-17', 'adada', '2018-09-26 17:23:15', NULL, 3.0, '管理员', NULL, 2, NULL),
	(20, 'jahflafa', '', '', '', '爱情片', '', '国语', '0000-00-00', '', '2018-09-26 17:25:33', NULL, 1.0, '管理员', '电里', 2, NULL),
	(21, 'aaa', '', '', '', '爱情片', '', '国语', '0000-00-00', '', '2018-10-25 23:49:11', NULL, 1.0, '用户', NULL, 2, NULL);
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- 导出  表 moviestation.talk 结构
CREATE TABLE IF NOT EXISTS `talk` (
  `t_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '评论id主键',
  `t_text` text NOT NULL COMMENT '评论内容',
  `m_id` int(11) DEFAULT NULL COMMENT '电影id',
  `u_id` int(11) DEFAULT NULL COMMENT '用户id',
  `u_name` char(10) DEFAULT NULL COMMENT '用户姓名',
  `t_time` datetime DEFAULT NULL COMMENT '评论时间',
  `t_status` int(4) DEFAULT '1' COMMENT '默认1显示',
  PRIMARY KEY (`t_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COMMENT='评论表';

-- 正在导出表  moviestation.talk 的数据：12 rows
/*!40000 ALTER TABLE `talk` DISABLE KEYS */;
INSERT INTO `talk` (`t_id`, `t_text`, `m_id`, `u_id`, `u_name`, `t_time`, `t_status`) VALUES
	(1, '大家好，我是灭霸，我的手套被扣在海关了，急需要200元交罚款，如果你5月11愿意发红包给我，我保证在打响指时你会活下来。我代表我们泰坦星下发红头文件:赶在2019面之前务必要让全宇宙的人口降低一半，宇宙的人均GDP才能翻一番，实现又好又快发展。这是千年大计、宇宙大事！', 1, 1, '张三', '2018-09-25 15:58:46', 1),
	(2, '只是我的第一条评论', 1, 2, '王伟', '2018-09-25 16:46:41', 1),
	(3, '王伟是大好人的同桌\r\n', 1, 1, '电里', '2018-09-25 16:47:12', 1),
	(4, '111111111111111111111111', 2, 1, '电里', '2018-09-25 16:50:43', 1),
	(5, '我的评论提交', 3, 2, '王伟', '2018-09-25 19:23:35', 1),
	(6, '闪闪撒所所所所所所所所所所', 2, 1, '电里', '2018-09-25 22:16:16', 1),
	(7, '我是王伟我是王伟', 3, 2, '王伟', '2018-09-26 15:15:08', 1),
	(8, '我的评论我的评论', 2, 16, '账号2', '2018-09-26 17:14:04', 1),
	(9, '玩儿体育对方过后就开了； ', 10, 1, '张立', '2018-09-26 17:30:55', 1),
	(10, 'pinglun\r\n', 3, NULL, NULL, '2018-10-11 21:38:19', 1),
	(11, '1111111111111111111111111111', 2, NULL, NULL, '2018-10-25 23:31:48', 1),
	(12, '1213211', 3, 17, '王伟1', '2018-10-26 14:12:03', 1);
/*!40000 ALTER TABLE `talk` ENABLE KEYS */;

-- 导出  表 moviestation.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `u_name` char(6) DEFAULT NULL COMMENT '登陆账号',
  `u_tel` bigint(20) DEFAULT NULL COMMENT '用户电话',
  `u_password` char(32) DEFAULT NULL COMMENT '用户密码',
  `u_lasttime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `u_head` text COMMENT '用户头像',
  `u_sex` char(10) DEFAULT NULL COMMENT '用户性别',
  `u_age` int(10) DEFAULT NULL COMMENT '用户年龄',
  `u_info` text COMMENT '个性签名',
  `u_status` int(2) DEFAULT '1' COMMENT '1为正常',
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='用户';

-- 正在导出表  moviestation.user 的数据：5 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`u_id`, `u_name`, `u_tel`, `u_password`, `u_lasttime`, `u_head`, `u_sex`, `u_age`, `u_info`, `u_status`) VALUES
	(1, '张立', 4, 'zhangli', '2018-10-25 23:38:22', NULL, '男', 4, '4', 1),
	(2, '王伟', 110, 'wangwei', '2018-09-26 15:13:08', 'uploads/2018/09/1537945601982_08637581.png', '男', 18, '我是王伟', 1),
	(16, '王伟2', 120, 'wangwei2', '2018-09-26 17:20:26', 'uploads/2018/09/1537953578185_58454639.png', '男', 18, '签名', 1),
	(17, '王伟1', 15696517982, '333', '2018-10-26 14:11:34', NULL, NULL, NULL, NULL, 1),
	(18, '1', 2, '3', '2019-01-18 22:10:04', NULL, NULL, NULL, NULL, 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 moviestation.xlsource 结构
CREATE TABLE IF NOT EXISTS `xlsource` (
  `xls_id` int(12) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `m_id` int(11) NOT NULL COMMENT '电影id',
  `xls_name` text COMMENT '资源',
  `xls_date` date NOT NULL COMMENT '添加时间',
  `xls_upclass` int(2) NOT NULL DEFAULT '0' COMMENT '添加人类型0管理员',
  `xls_upname` char(12) NOT NULL COMMENT '添加人账号',
  `xls_status` int(4) NOT NULL COMMENT '资源状态',
  PRIMARY KEY (`xls_id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8 COMMENT='迅雷资源表';

-- 正在导出表  moviestation.xlsource 的数据：29 rows
/*!40000 ALTER TABLE `xlsource` DISABLE KEYS */;
INSERT INTO `xlsource` (`xls_id`, `m_id`, `xls_name`, `xls_date`, `xls_upclass`, `xls_upname`, `xls_status`) VALUES
	(1, 1, 'magnet:?xt=urn:btih:68FEA4F2D2C289ABC3CFE8EB2A3CC0933B0C2C47', '2018-09-21', 0, '电里', 0),
	(2, 1, 'magnet:?xt=urn:btih:C318D4232A08AEFBE49E196FF9F489B0937A78C2', '2018-09-21', 0, '电里', 0),
	(3, 2, 'magnet:?xt=urn:btih:0F58E570DACEC97A339BB7D674D6B6C6B962E595', '0000-00-00', 0, '', 0),
	(4, 2, 'magnet:?xt=urn:btih:50C54EFF409B64FA00930CE56638F32B6897E6AB', '0000-00-00', 0, '', 0),
	(5, 3, 'magnet:?xt=urn:btih:53AC25F83FA20635C9C7BC3D82A1F0E9EF819541', '0000-00-00', 0, '', 0),
	(6, 3, 'ed2k://|file|%E5%A4%8D%E4%BB%87%E8%80%85%E8%81%94%E7%9B%9F2.%E5%A5%A5%E5%88%9B%E7%BA%AA%E5%85%83.Avengers.Age.of.Ultron.2015.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95.720p.BluRay.x264.%E6%B7%B1%E5%BD%B1%E5%AD%97%E5%B9%95%E7%BB%84V2.mp4|1273495967|C634D9C94AA9C288A0D5D44E4BEAA8F4|h=TU3KU5QXAYIA2KNU25MBCN4IHZC2UDZE|/', '0000-00-00', 0, '', 0),
	(7, 4, 'magnet:?xt=urn:btih:216F0C5049C599A2BA9C474393DBE89A6CAFE871', '0000-00-00', 0, '', 0),
	(8, 4, 'magnet:?xt=urn:btih:167E9FE083D35B51CD39F54EF7F7E361A212507C', '0000-00-00', 0, '', 0),
	(9, 5, 'ed2k://|file|%E9%93%B6%E6%B2%B3%E6%8A%A4%E5%8D%AB%E9%98%9F.Guardians.of.the.Galaxy.2014.BD-720p.1280X534.%E4%B8%AD%E8%8B%B1%E5%8F%8C%E8%AF%AD-%E7%94%B5%E6%B3%A2%E5%AD%97%E5%B9%95%E7%BB%84.mkv|2162065425|14b3c1e4fad2d5d250bb40353f138509|h=bnnk2m6d7coedrlbkpyijmvij5qhburd|/', '0000-00-00', 0, '', 0),
	(10, 5, 'magnet:?xt=urn:btih:892506A4346993E01B349C8A981403D007F36A6B', '0000-00-00', 0, '', 0),
	(11, 6, 'magnet:?xt=urn:btih:84FD99BF797DA2E4C74A14336ADD26B844A288D8', '0000-00-00', 0, '', 0),
	(12, 6, 'magnet:?xt=urn:btih:d78f6ca201aecb66ee8be38e89577c28c079bbd8&dn=%E9%93%B6%E6%B2%B3%E6%8A%A4%E5%8D%AB%E9%98%9F2.2017.1080p.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95%EF%BF%A1CMCT%E9%98%BF%E5%87%A1%E6%8F%90', '0000-00-00', 0, '', 0),
	(13, 7, 'magnet:?xt=urn:btih:fc5a4e04000650ef5a9d70b0a57e12c8fc1ca67d&dn=%E9%95%BF%E5%9F%8E.2016.%E4%B8%AD%E8%8B%B1%E5%AD%97%E5%B9%95%EF%BF%A1CMCT%E6%A2%A6%E5%B9%BB', '0000-00-00', 0, '', 0),
	(14, 7, 'magnet:?xt=urn:btih:be296b53d431571b8650ad121b88681ad17025eb&dn=%5B%E9%95%BF%E5%9F%8E%5DThe.Great.Wall.2016.BluRay.720p.x264.AC3-CnSCG', '0000-00-00', 0, '', 0),
	(15, 8, 'magnet:?xt=urn:btih:81FDDEB1DBE2140E451F5C9EE716E210A0D6D4D2&dn=%E5%A4%A7%E8%AF%9D%E8%A5%BF%E6%B8%B8%E5%90%88%E9%9B%86.A.Chinese.Odyssey.1994.Twins.Pack.BluRay.720p.x264.DTS-WiKi)', '2018-09-24', 0, '', 0),
	(16, 8, 'magnet:?xt=urn:btih:BF798E8B32CF1A28641DACF07AE45F641004940F&dn=%E5%A4%A7%E8%AF%9D%E8%A5%BF%E6%B8%B8%E4%B8%A4%E9%83%A8%E5%90%88%E9%9B%86.1994.%E5%9B%BD%E7%B2%A4%E5%8F%8C%E8%AF%AD.%E7%AE%80%E7%B9%81%E4%B8%AD%E5%AD%97%EF%BF%A1%E5%9C%A3%E5%9F%8E%E6%98%A5%E6%A0%91)', '0000-00-00', 0, '', 0),
	(17, 9, 'magnet:?xt=urn:btih:554D6801CFDD284AC23FD349415415D88EDED403', '0000-00-00', 0, '', 0),
	(18, 10, 'ed2k://|file|Busanhaeng.(aka.Train.to.Busan).(2016).BD.MiniSD-TLF.mkv|1105294836|8845D4C72D23F09C4BB42B9EA439223B|h=XPPU2UVUOXEVBVN47457HRLB5YB74RZQ|/', '0000-00-00', 0, '', 0),
	(19, 10, 'ed2k://|file|%E9%87%9C%E5%B1%B1%E8%A1%8CBD%E4%B8%AD%E5%AD%971280%E9%AB%98%E6%B8%85[www.dysfz.net].rmvb|1375073563|4FD9E2D6EEC3B5D438378902C33B9099|h=BO44JTWYGDQDQY5QVJHM2X73B43SAXND|/', '0000-00-00', 0, '', 0),
	(20, 11, 'magnet:?xt=urn:btih:891BEE5BC67928A50CC9484317B9861D6F8296ED', '0000-00-00', 0, '', 0),
	(21, 11, 'magnet:?xt=urn:btih:F2D4C92F71D3447E508D2F084998B4DDB69B6709', '0000-00-00', 0, '', 0),
	(22, 12, 'magnet:?xt=urn:btih:26AC647826584A3E978CC027777C4F6317BD18FC&dn=%E5%A4%A9%E4%BD%BF%E7%88%B1%E7%BE%8E%E4%B8%BD(%E5%9B%BD%E6%B3%95%E5%8F%8C%E8%AF%AD).2001.%E7%AE%80%E4%BD%93%E4%B8%AD%E5%AD%97%EF%BF%A1CMCT%E6%9A%AE%E9%9B%A8%E6%BD%87%E6%BD%87)', '0000-00-00', 0, '', 0),
	(23, 12, 'magnet:?xt=urn:btih:1DF1925E606DEC9E9942B8F441DED0B711C1B6C0&dn=Le.fabuleux.destin.d', '0000-00-00', 0, '', 0),
	(24, 15, '迅雷2', '2018-09-26', 0, '电里', 0),
	(25, 16, '迅雷2', '2018-09-26', 0, '电里', 0),
	(26, 16, 'xunlei2', '2018-09-26', 0, '电里', 0),
	(27, 17, 'adada', '2018-09-26', 0, '电里', 0),
	(28, 18, '迅雷', '2018-09-26', 0, '电里', 1),
	(29, 20, 'afafafa', '2018-09-26', 0, '电里', 0);
/*!40000 ALTER TABLE `xlsource` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
