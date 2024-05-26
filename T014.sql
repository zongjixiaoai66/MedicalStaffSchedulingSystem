/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb3 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

DROP DATABASE IF EXISTS `t014`;
CREATE DATABASE IF NOT EXISTS `t014` /*!40100 DEFAULT CHARACTER SET utf8mb3 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `t014`;

DROP TABLE IF EXISTS `config`;
CREATE TABLE IF NOT EXISTS `config` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COMMENT='配置文件';

DELETE FROM `config`;
INSERT INTO `config` (`id`, `name`, `value`) VALUES
	(1, 'picture1', 'http://localhost:8080/springbootjf5zc/upload/picture1.jpg'),
	(2, 'picture2', 'http://localhost:8080/springbootjf5zc/upload/picture2.jpg'),
	(3, 'picture3', 'http://localhost:8080/springbootjf5zc/upload/picture3.jpg'),
	(6, 'homepage', NULL);

DROP TABLE IF EXISTS `discusskeshixinxi`;
CREATE TABLE IF NOT EXISTS `discusskeshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb3 COMMENT='科室信息评论表';

DELETE FROM `discusskeshixinxi`;
INSERT INTO `discusskeshixinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(121, '2021-05-08 08:41:54', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(122, '2021-05-08 08:41:54', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(123, '2021-05-08 08:41:54', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(124, '2021-05-08 08:41:54', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(125, '2021-05-08 08:41:54', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(126, '2021-05-08 08:41:54', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `discussyiyuanxinxi`;
CREATE TABLE IF NOT EXISTS `discussyiyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint NOT NULL COMMENT '关联表id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `nickname` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=117 DEFAULT CHARSET=utf8mb3 COMMENT='医院信息评论表';

DELETE FROM `discussyiyuanxinxi`;
INSERT INTO `discussyiyuanxinxi` (`id`, `addtime`, `refid`, `userid`, `nickname`, `content`, `reply`) VALUES
	(111, '2021-05-08 08:41:54', 1, 1, '用户名1', '评论内容1', '回复内容1'),
	(112, '2021-05-08 08:41:54', 2, 2, '用户名2', '评论内容2', '回复内容2'),
	(113, '2021-05-08 08:41:54', 3, 3, '用户名3', '评论内容3', '回复内容3'),
	(114, '2021-05-08 08:41:54', 4, 4, '用户名4', '评论内容4', '回复内容4'),
	(115, '2021-05-08 08:41:54', 5, 5, '用户名5', '评论内容5', '回复内容5'),
	(116, '2021-05-08 08:41:54', 6, 6, '用户名6', '评论内容6', '回复内容6');

DROP TABLE IF EXISTS `forum`;
CREATE TABLE IF NOT EXISTS `forum` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint DEFAULT NULL COMMENT '父节点id',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8mb3 COMMENT='论坛表';

DELETE FROM `forum`;
INSERT INTO `forum` (`id`, `addtime`, `title`, `content`, `parentid`, `userid`, `username`, `isdone`) VALUES
	(91, '2021-05-08 08:41:54', '帖子标题1', '帖子内容1', 1, 1, '用户名1', '开放'),
	(92, '2021-05-08 08:41:54', '帖子标题2', '帖子内容2', 2, 2, '用户名2', '开放'),
	(93, '2021-05-08 08:41:54', '帖子标题3', '帖子内容3', 3, 3, '用户名3', '开放'),
	(94, '2021-05-08 08:41:54', '帖子标题4', '帖子内容4', 4, 4, '用户名4', '开放'),
	(95, '2021-05-08 08:41:54', '帖子标题5', '帖子内容5', 5, 5, '用户名5', '开放'),
	(96, '2021-05-08 08:41:54', '帖子标题6', '帖子内容6', 6, 6, '用户名6', '开放');

DROP TABLE IF EXISTS `keshixinxi`;
CREATE TABLE IF NOT EXISTS `keshixinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshi` varchar(200) NOT NULL COMMENT '科室',
  `tupian` varchar(200) NOT NULL COMMENT '图片',
  `keshijieshao` longtext COMMENT '科室介绍',
  `keshiweizhi` varchar(200) DEFAULT NULL COMMENT '科室位置',
  `keshiyisheng` varchar(200) DEFAULT NULL COMMENT '科室医生',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb3 COMMENT='科室信息';

DELETE FROM `keshixinxi`;
INSERT INTO `keshixinxi` (`id`, `addtime`, `keshi`, `tupian`, `keshijieshao`, `keshiweizhi`, `keshiyisheng`, `lianxidianhua`) VALUES
	(71, '2021-05-08 08:41:54', '科室1', 'http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian1.jpg', '科室介绍1', '科室位置1', '科室医生1', '联系电话1'),
	(72, '2021-05-08 08:41:54', '科室2', 'http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian2.jpg', '科室介绍2', '科室位置2', '科室医生2', '联系电话2'),
	(73, '2021-05-08 08:41:54', '科室3', 'http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian3.jpg', '科室介绍3', '科室位置3', '科室医生3', '联系电话3'),
	(74, '2021-05-08 08:41:54', '科室4', 'http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian4.jpg', '科室介绍4', '科室位置4', '科室医生4', '联系电话4'),
	(75, '2021-05-08 08:41:54', '科室5', 'http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian5.jpg', '科室介绍5', '科室位置5', '科室医生5', '联系电话5'),
	(76, '2021-05-08 08:41:54', '科室6', 'http://localhost:8080/springbootjf5zc/upload/keshixinxi_tupian6.jpg', '科室介绍6', '科室位置6', '科室医生6', '联系电话6');

DROP TABLE IF EXISTS `paibanleixing`;
CREATE TABLE IF NOT EXISTS `paibanleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `banci` varchar(200) DEFAULT NULL COMMENT '班次',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8mb3 COMMENT='排班类型';

DELETE FROM `paibanleixing`;
INSERT INTO `paibanleixing` (`id`, `addtime`, `banci`) VALUES
	(61, '2021-05-08 08:41:54', '班次1'),
	(62, '2021-05-08 08:41:54', '班次2'),
	(63, '2021-05-08 08:41:54', '班次3'),
	(64, '2021-05-08 08:41:54', '班次4'),
	(65, '2021-05-08 08:41:54', '班次5'),
	(66, '2021-05-08 08:41:54', '班次6');

DROP TABLE IF EXISTS `paibanxinxi`;
CREATE TABLE IF NOT EXISTS `paibanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `yiling` varchar(200) DEFAULT NULL COMMENT '医龄',
  `guahaofeiyong` int NOT NULL COMMENT '挂号费用',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `banci` varchar(200) DEFAULT NULL COMMENT '班次',
  `gerenjianjie` longtext COMMENT '个人简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb3 COMMENT='排班信息';

DELETE FROM `paibanxinxi`;
INSERT INTO `paibanxinxi` (`id`, `addtime`, `gonghao`, `xingming`, `xingbie`, `keshi`, `zhicheng`, `yiling`, `guahaofeiyong`, `lianxidianhua`, `touxiang`, `banci`, `gerenjianjie`) VALUES
	(51, '2021-05-08 08:41:54', '工号1', '姓名1', '性别1', '科室1', '职称1', '医龄1', 1, '13823888881', 'http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang1.jpg', '班次1', '个人简介1'),
	(52, '2021-05-08 08:41:54', '工号2', '姓名2', '性别2', '科室2', '职称2', '医龄2', 2, '13823888882', 'http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang2.jpg', '班次2', '个人简介2'),
	(53, '2021-05-08 08:41:54', '工号3', '姓名3', '性别3', '科室3', '职称3', '医龄3', 3, '13823888883', 'http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang3.jpg', '班次3', '个人简介3'),
	(54, '2021-05-08 08:41:54', '工号4', '姓名4', '性别4', '科室4', '职称4', '医龄4', 4, '13823888884', 'http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang4.jpg', '班次4', '个人简介4'),
	(55, '2021-05-08 08:41:54', '工号5', '姓名5', '性别5', '科室5', '职称5', '医龄5', 5, '13823888885', 'http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang5.jpg', '班次5', '个人简介5'),
	(56, '2021-05-08 08:41:54', '工号6', '姓名6', '性别6', '科室6', '职称6', '医龄6', 6, '13823888886', 'http://localhost:8080/springbootjf5zc/upload/paibanxinxi_touxiang6.jpg', '班次6', '个人简介6');

DROP TABLE IF EXISTS `storeup`;
CREATE TABLE IF NOT EXISTS `storeup` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint NOT NULL COMMENT '用户id',
  `refid` bigint DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='收藏表';

DELETE FROM `storeup`;

DROP TABLE IF EXISTS `token`;
CREATE TABLE IF NOT EXISTS `token` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COMMENT='token表';

DELETE FROM `token`;
INSERT INTO `token` (`id`, `userid`, `username`, `tablename`, `role`, `token`, `addtime`, `expiratedtime`) VALUES
	(1, 1, 'admin', 'users', '管理员', 'bg3k36u868irqfkbvcki50mkn1476je7', '2023-12-19 12:52:27', '2023-12-19 13:59:51'),
	(2, 11, '工号1', 'yihu', '医护', 'lzb3hfxvzda8k0dg4u4nozzpeede8ksg', '2023-12-19 12:52:59', '2023-12-19 13:56:44');

DROP TABLE IF EXISTS `tousuxinxi`;
CREATE TABLE IF NOT EXISTS `tousuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `tousumingcheng` varchar(200) DEFAULT NULL COMMENT '投诉名称',
  `tousuneirong` longtext COMMENT '投诉内容',
  `tousuriqi` date DEFAULT NULL COMMENT '投诉日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3 COMMENT='投诉信息';

DELETE FROM `tousuxinxi`;
INSERT INTO `tousuxinxi` (`id`, `addtime`, `gonghao`, `xingming`, `zhaopian`, `tousumingcheng`, `tousuneirong`, `tousuriqi`) VALUES
	(81, '2021-05-08 08:41:54', '工号1', '姓名1', 'http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian1.jpg', '投诉名称1', '投诉内容1', '2021-05-08'),
	(82, '2021-05-08 08:41:54', '工号2', '姓名2', 'http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian2.jpg', '投诉名称2', '投诉内容2', '2021-05-08'),
	(83, '2021-05-08 08:41:54', '工号3', '姓名3', 'http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian3.jpg', '投诉名称3', '投诉内容3', '2021-05-08'),
	(84, '2021-05-08 08:41:54', '工号4', '姓名4', 'http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian4.jpg', '投诉名称4', '投诉内容4', '2021-05-08'),
	(85, '2021-05-08 08:41:54', '工号5', '姓名5', 'http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian5.jpg', '投诉名称5', '投诉内容5', '2021-05-08'),
	(86, '2021-05-08 08:41:54', '工号6', '姓名6', 'http://localhost:8080/springbootjf5zc/upload/tousuxinxi_zhaopian6.jpg', '投诉名称6', '投诉内容6', '2021-05-08');

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COMMENT='用户表';

DELETE FROM `users`;
INSERT INTO `users` (`id`, `username`, `password`, `role`, `addtime`) VALUES
	(1, 'admin', '123456', '管理员', '2021-05-08 08:41:54');

DROP TABLE IF EXISTS `yihu`;
CREATE TABLE IF NOT EXISTS `yihu` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `nianling` int DEFAULT NULL COMMENT '年龄',
  `shoujihao` varchar(200) DEFAULT NULL COMMENT '手机号',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shenfenzheng` varchar(200) DEFAULT NULL COMMENT '身份证',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb3 COMMENT='医护';

DELETE FROM `yihu`;
INSERT INTO `yihu` (`id`, `addtime`, `gonghao`, `mima`, `xingming`, `xingbie`, `nianling`, `shoujihao`, `youxiang`, `shenfenzheng`, `zhaopian`) VALUES
	(11, '2021-05-08 08:41:54', '工号1', '123456', '姓名1', '男', 1, '13823888881', '773890001@qq.com', '440300199101010001', 'http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian1.jpg'),
	(12, '2021-05-08 08:41:54', '工号2', '123456', '姓名2', '男', 2, '13823888882', '773890002@qq.com', '440300199202020002', 'http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian2.jpg'),
	(13, '2021-05-08 08:41:54', '工号3', '123456', '姓名3', '男', 3, '13823888883', '773890003@qq.com', '440300199303030003', 'http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian3.jpg'),
	(14, '2021-05-08 08:41:54', '工号4', '123456', '姓名4', '男', 4, '13823888884', '773890004@qq.com', '440300199404040004', 'http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian4.jpg'),
	(15, '2021-05-08 08:41:54', '工号5', '123456', '姓名5', '男', 5, '13823888885', '773890005@qq.com', '440300199505050005', 'http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian5.jpg'),
	(16, '2021-05-08 08:41:54', '工号6', '123456', '姓名6', '男', 6, '13823888886', '773890006@qq.com', '440300199606060006', 'http://localhost:8080/springbootjf5zc/upload/yihu_zhaopian6.jpg');

DROP TABLE IF EXISTS `yihuleixing`;
CREATE TABLE IF NOT EXISTS `yihuleixing` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yihuleixing` varchar(200) DEFAULT NULL COMMENT '医护类型',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb3 COMMENT='医护类型';

DELETE FROM `yihuleixing`;
INSERT INTO `yihuleixing` (`id`, `addtime`, `yihuleixing`) VALUES
	(41, '2021-05-08 08:41:54', '医护类型1'),
	(42, '2021-05-08 08:41:54', '医护类型2'),
	(43, '2021-05-08 08:41:54', '医护类型3'),
	(44, '2021-05-08 08:41:54', '医护类型4'),
	(45, '2021-05-08 08:41:54', '医护类型5'),
	(46, '2021-05-08 08:41:54', '医护类型6');

DROP TABLE IF EXISTS `yihuxinxi`;
CREATE TABLE IF NOT EXISTS `yihuxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  `yihuleixing` varchar(200) DEFAULT NULL COMMENT '医护类型',
  `yiyuan` varchar(200) DEFAULT NULL COMMENT '医院',
  `keshi` varchar(200) DEFAULT NULL COMMENT '科室',
  `shanzhang` varchar(200) DEFAULT NULL COMMENT '擅长',
  `jianjie` varchar(200) DEFAULT NULL COMMENT '简介',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb3 COMMENT='医护信息';

DELETE FROM `yihuxinxi`;
INSERT INTO `yihuxinxi` (`id`, `addtime`, `gonghao`, `xingming`, `zhaopian`, `yihuleixing`, `yiyuan`, `keshi`, `shanzhang`, `jianjie`) VALUES
	(31, '2021-05-08 08:41:54', '工号1', '姓名1', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医护类型1', '医院1', '科室1', '擅长1', '简介1'),
	(32, '2021-05-08 08:41:54', '工号2', '姓名2', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医护类型2', '医院2', '科室2', '擅长2', '简介2'),
	(33, '2021-05-08 08:41:54', '工号3', '姓名3', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医护类型3', '医院3', '科室3', '擅长3', '简介3'),
	(34, '2021-05-08 08:41:54', '工号4', '姓名4', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医护类型4', '医院4', '科室4', '擅长4', '简介4'),
	(35, '2021-05-08 08:41:54', '工号5', '姓名5', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医护类型5', '医院5', '科室5', '擅长5', '简介5'),
	(36, '2021-05-08 08:41:54', '工号6', '姓名6', 'https://asoa-1305425069.cos.ap-shanghai.myqcloud.com/1669635627773202432.png', '医护类型6', '医院6', '科室6', '擅长6', '简介6');

DROP TABLE IF EXISTS `yiyuanxinxi`;
CREATE TABLE IF NOT EXISTS `yiyuanxinxi` (
  `id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yiyuanmingcheng` varchar(200) NOT NULL COMMENT '医院名称',
  `yiyuandizhi` varchar(200) DEFAULT NULL COMMENT '医院地址',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `yiyuantupian` varchar(200) DEFAULT NULL COMMENT '医院图片',
  `yiyuanjianjie` longtext COMMENT '医院简介',
  `thumbsupnum` int DEFAULT '0' COMMENT '赞',
  `crazilynum` int DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3 COMMENT='医院信息';

DELETE FROM `yiyuanxinxi`;
INSERT INTO `yiyuanxinxi` (`id`, `addtime`, `yiyuanmingcheng`, `yiyuandizhi`, `lianxidianhua`, `yiyuantupian`, `yiyuanjianjie`, `thumbsupnum`, `crazilynum`) VALUES
	(21, '2021-05-08 08:41:54', '医院名称1', '医院地址1', '13823888881', 'http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian1.jpg', '医院简介1', 1, 1),
	(22, '2021-05-08 08:41:54', '医院名称2', '医院地址2', '13823888882', 'http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian2.jpg', '医院简介2', 2, 2),
	(23, '2021-05-08 08:41:54', '医院名称3', '医院地址3', '13823888883', 'http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian3.jpg', '医院简介3', 3, 3),
	(24, '2021-05-08 08:41:54', '医院名称4', '医院地址4', '13823888884', 'http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian4.jpg', '医院简介4', 4, 4),
	(25, '2021-05-08 08:41:54', '医院名称5', '医院地址5', '13823888885', 'http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian5.jpg', '医院简介5', 5, 5),
	(26, '2021-05-08 08:41:54', '医院名称6', '医院地址6', '13823888886', 'http://localhost:8080/springbootjf5zc/upload/yiyuanxinxi_yiyuantupian6.jpg', '医院简介6', 6, 6);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
