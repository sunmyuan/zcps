-- --------------------------------------------------------
-- 主机:                           47.105.97.17
-- 服务器版本:                        5.6.40 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Linux
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 score 的数据库结构
CREATE DATABASE IF NOT EXISTS `score` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `score`;

-- 导出  表 score.info 结构
CREATE TABLE IF NOT EXISTS `info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `context` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- 正在导出表  score.info 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` (`id`, `context`) VALUES
	(1, NULL);
/*!40000 ALTER TABLE `info` ENABLE KEYS */;

-- 导出  表 score.Note 结构
CREATE TABLE IF NOT EXISTS `Note` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `min` double(255,0) DEFAULT NULL,
  `max` double(255,0) DEFAULT NULL,
  `count_voter` varchar(255) DEFAULT NULL,
  `control_voter` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- 正在导出表  score.Note 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `Note` DISABLE KEYS */;
INSERT INTO `Note` (`id`, `name`, `min`, `max`, `count_voter`, `control_voter`) VALUES
	(1, '投票测试页面', 50, 100, '张三', '李四');
/*!40000 ALTER TABLE `Note` ENABLE KEYS */;

-- 导出  表 score.user 结构
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_status` int(11) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1011 DEFAULT CHARSET=utf8;

-- 正在导出表  score.user 的数据：~10 rows (大约)
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`user_id`, `user_name`, `user_password`, `user_status`) VALUES
	(1001, 'name', '123', 2),
	(1002, '2', '123', 10),
	(1003, '3', '125', 1),
	(1004, '4', '126', 1),
	(1005, '5', '127', 1),
	(1006, '6', '128', 1),
	(1007, '7', '129', 1),
	(1008, '8', '130', 1),
	(1009, '9', '131', 1),
	(1010, '10', '132', 1);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

-- 导出  表 score.voter 结构
CREATE TABLE IF NOT EXISTS `voter` (
  `voter_id` int(255) NOT NULL AUTO_INCREMENT,
  `voter_name` varchar(255) NOT NULL,
  `voter_password` varchar(255) NOT NULL,
  `voter_context` varchar(255) DEFAULT NULL,
  `voter_age` int(255) DEFAULT NULL,
  `voter_job` varchar(255) DEFAULT NULL,
  `voter_project` varchar(255) DEFAULT NULL,
  `voter_score` double(255,0) DEFAULT NULL,
  `voter_file1` varchar(255) DEFAULT NULL,
  `voter_file2` varchar(255) DEFAULT NULL,
  `voter_file3` varchar(255) DEFAULT NULL,
  `voter_file4` varchar(255) DEFAULT NULL,
  `voter_img` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`voter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1010 DEFAULT CHARSET=utf8;

-- 正在导出表  score.voter 的数据：~9 rows (大约)
/*!40000 ALTER TABLE `voter` DISABLE KEYS */;
INSERT INTO `voter` (`voter_id`, `voter_name`, `voter_password`, `voter_context`, `voter_age`, `voter_job`, `voter_project`, `voter_score`, `voter_file1`, `voter_file2`, `voter_file3`, `voter_file4`, `voter_img`) VALUES
	(1001, '马云', '1001', '马云，男，1964年9月10日生于浙江省杭州市，祖籍浙江省嵊州市（原嵊县）谷来镇，阿里巴巴集团主要创始人，现担任阿里巴巴集团董事局主席、日本软银董事、TNC（大自然保护协会）中国理事会主席兼全球董事会成员、华谊兄弟董事、生命科学突破奖基金会董事。', 35, '河南大学', '2003年5月，马云投资一亿元人民币建立个人网上贸易市场平台——淘宝网。2004年10月，阿里巴巴投资成立支付宝公司，面向中国电子商务市场推出基于中介的安全交易服务。2014年9月19日，阿里巴巴集团在纽约证券交易所正式挂牌上市，股票代码“BABA”。2017年11月11日全天，2017天猫双11全球狂欢节总交易额（GMV）达到1682亿元人民币。11月20日，阿里巴巴宣布，与欧尚零售、润泰集团宣布达成新零售战略合作', 75, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1002, '李彦宏', '1002', '李彦宏，百度公司创始人、董事长兼首席执行官，全面负责百度公司的战略规划和运营管理。', 36, '河南大学', NULL, 68, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1003, '马化腾', '1003', '马化腾，男，汉族，1971年10月29日生于广东省汕头市潮南区。腾讯公司主要创办人之一，现担任腾讯公司控股董事会主席兼首席执行官；全国青联副主席。', 37, '河南大学', '见附件军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军军核桃仁若若若若若若', 78, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1004, '张朝阳', '1004', '张朝阳，1964年10月31日出生在陕西省西安市，搜狐公司董事局主席兼首席执行官。1986年毕业于清华大学物理系，并于同年考取李政道奖学金赴美留学。1993年在麻省理工学院获得博士学位后，在麻省理工学院继续博士后研究。1996年8月手持风险资金，回国创建了爱特信公司，公司于1998年正式推出其品牌网站搜狐网，同时更名为搜狐公司。', 38, '河南大学', '搜狐', 78, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1005, '库克', '1005', '蒂姆·库克，苹果公司首席执行官。蒂姆·库克生于美国阿拉巴马州，1982年毕业于奥本大学工业工程专业，1988年获得杜克大学企业管理硕士学位。曾在IBM供职12 年，负责PC部门在北美和拉美的制造和分销运作。1998年年初，库克进入苹果，任副总裁，主管苹果的电脑制造业务。2011年接替史蒂夫·乔布斯担任苹果公司CEO。', 39, '河南大学', NULL, 68, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1006, '史蒂夫乔布斯', '1006', '史蒂夫▪乔布斯（1955年2月24日—2011年10月5日），生于美国旧金山，苹果公司联合创办人。\n1976年乔布斯和朋友“斯蒂夫·盖瑞·沃兹尼亚克”成立苹果电脑公司，1985年在苹果高层权力斗争中离开苹果并成立了NeXT公司，1997年回到苹果接任行政总裁，2011年8月24日辞去苹果公司行政总裁职位。', 40, '河南大学', '苹果', 86, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1007, '雷军', '1007', '雷军，1969年12月出生于湖北仙桃，毕业于武汉大学，是中国大陆著名天使投资人。2013年10月，全国工商联60华诞之际，《中国工商》杂志、华商韬略编辑委员会、中华工商联合出版社联合发起《民营力量璀璨中国梦想——100位对民族产业贡献卓著的民营功勋企业家》荣誉报道活动', 41, '河南大学', '小米集团', 75, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1008, '罗永浩', '1008', '罗永浩，男，1972年出生于吉林省延边朝鲜族自治州和龙县（今和龙市）。锤子科技创始人。曾先后创办过牛博网、老罗英语培训学校，并著有《我的奋斗》一书。2012年4月8日 罗永浩宣布做智能手机，2013年3月27日发布基于安卓（android）的深度定制操作系统，2013年5月以4.7亿人民币估值获得7000万风险投资。2014年5月20日，罗永浩正式发布了首款智能手机产品Smartisan T1', 42, '河南大学', NULL, 85, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png'),
	(1009, '任正非', '1009', '任正非，1944年10月25日出生于贵州省镇宁县，祖籍浙江省浦江县，华为技术有限公司主要创始人、总裁。\n1963年就读于重庆建筑工程学院(现已并入重庆大学)，毕业后就业于建筑工程单位。1974年为建设从法国引进的辽阳化纤总厂，应征入伍加入承担这项工程建设任务的基建工程兵，历任技术员、工程师、副所长(技术副团级)，无军衔。任正非也因工程建设中的贡献出席了1978年的全国科学大会和1982年的中共第十二次全国代表大会。1987年，任正非集资21000元人民币创立华为公司，1988年任华为公司总裁', 43, '河南大学', NULL, 76, '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', '123123abcabcacbacb', 'http://47.94.90.102:8080/Download/logo.png');
/*!40000 ALTER TABLE `voter` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
