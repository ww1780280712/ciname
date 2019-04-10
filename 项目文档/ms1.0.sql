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
  `a_tel` int(16) DEFAULT NULL COMMENT '管理员电话',
  `a_password` char(32) DEFAULT NULL COMMENT '管理员密码',
  `a_lasttime` datetime DEFAULT NULL COMMENT '最后一次登录时间',
  `a_status` int(2) DEFAULT '1' COMMENT '1为正常',
  PRIMARY KEY (`a_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='管理员';

-- 正在导出表  moviestation.admin 的数据：0 rows
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;

-- 导出  表 moviestation.collection 结构
CREATE TABLE IF NOT EXISTS `collection` (
  `c_id` int(16) NOT NULL COMMENT '主键',
  `c_user` char(50) DEFAULT NULL COMMENT '收藏人',
  `c_movie` char(50) DEFAULT NULL COMMENT '收藏电影',
  `c_date` datetime DEFAULT NULL COMMENT '收藏时间',
  `c_status` int(2) DEFAULT '1' COMMENT '收藏状态默认为1',
  PRIMARY KEY (`c_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='收藏';

-- 正在导出表  moviestation.collection 的数据：0 rows
/*!40000 ALTER TABLE `collection` DISABLE KEYS */;
/*!40000 ALTER TABLE `collection` ENABLE KEYS */;

-- 导出  表 moviestation.movies 结构
CREATE TABLE IF NOT EXISTS `movies` (
  `m_id` int(11) NOT NULL COMMENT '主键，电影id',
  `m_name` char(50) DEFAULT NULL COMMENT '电影名',
  `m_info` text COMMENT '电影简介信息',
  `m_director` char(30) DEFAULT NULL COMMENT '电影导演',
  `m_actor` text COMMENT '演员',
  `m_class` char(30) DEFAULT NULL COMMENT '电影分类',
  `m_location` char(16) DEFAULT NULL COMMENT '电影制片地区',
  `m_language` char(20) DEFAULT NULL COMMENT '语言',
  `m_showtime` datetime DEFAULT NULL COMMENT '上映日期',
  `m_anname` char(50) DEFAULT NULL COMMENT '又名',
  `m_baidu` text COMMENT '百度资源',
  `m_xunlei` text COMMENT '迅雷资源',
  `m_update` datetime DEFAULT NULL COMMENT '资源发布时间',
  `m_tag` text COMMENT '电影标签',
  `m_score` double(2,1) DEFAULT NULL COMMENT '电影评分',
  `m_uperclass` int(2) DEFAULT NULL COMMENT '资源分享人类型，0代表管理员',
  `m_upername` char(16) DEFAULT NULL COMMENT '资源分享人name',
  `m_status` int(2) DEFAULT NULL COMMENT '状态：0通过，1待审核 2：审核通过，',
  PRIMARY KEY (`m_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='电影';

-- 正在导出表  moviestation.movies 的数据：0 rows
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;

-- 导出  表 moviestation.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `u_id` int(11) NOT NULL COMMENT '主键',
  `u_name` char(6) DEFAULT NULL COMMENT '登陆账号',
  `u_tel` int(16) DEFAULT NULL COMMENT '用户电话',
  `u_password` char(32) DEFAULT NULL COMMENT '用户密码',
  `u_lasttame` int(11) DEFAULT NULL COMMENT '最后一次登录时间',
  `u_status` int(2) DEFAULT '1' COMMENT '1为正常',
  PRIMARY KEY (`u_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COMMENT='用户';

-- 正在导出表  moviestation.user 的数据：0 rows
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
