/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - jiatongjizhangben
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`jiatongjizhangben` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `jiatongjizhangben`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','http://localhost:8080/jiatongjizhangben/upload/config1.jpg'),(2,'轮播图2','http://localhost:8080/jiatongjizhangben/upload/config2.jpg'),(3,'轮播图3','http://localhost:8080/jiatongjizhangben/upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'shouruxiangqing_types','收入类型',1,'工作收入',NULL,NULL,'2022-05-12 15:26:11'),(2,'shouruxiangqing_types','收入类型',2,'收入类型2',NULL,NULL,'2022-05-12 15:26:11'),(3,'shouruxiangqing_types','收入类型',3,'其他收入',NULL,NULL,'2022-05-12 15:26:11'),(4,'xiaofeixiangqing_types','消费类型',1,'消费类型1',NULL,NULL,'2022-05-12 15:26:11'),(5,'xiaofeixiangqing_types','消费类型',2,'消费类型2',NULL,NULL,'2022-05-12 15:26:12'),(6,'xiaofeixiangqing_types','消费类型',3,'其他消费',NULL,NULL,'2022-05-12 15:26:12'),(7,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2022-05-12 15:26:12'),(8,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2022-05-12 15:26:12'),(9,'news_types','公告类型',3,'公告类型3',NULL,NULL,'2022-05-12 15:26:12'),(10,'sex_types','性别',1,'男',NULL,NULL,'2022-05-12 15:26:12'),(11,'sex_types','性别',2,'女',NULL,NULL,'2022-05-12 15:26:12'),(12,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2022-05-12 15:26:12'),(13,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2022-05-12 15:26:12');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '专家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` text COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='论坛信息';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,'发布内容1',NULL,1,'2022-05-12 15:26:39','2022-05-12 15:26:39','2022-05-12 15:26:39'),(2,'帖子标题2',2,NULL,'发布内容2',NULL,1,'2022-05-12 15:26:39','2022-05-12 15:26:39','2022-05-12 15:26:39'),(3,'帖子标题3',2,NULL,'发布内容3',NULL,1,'2022-05-12 15:26:39','2022-05-12 15:26:39','2022-05-12 15:26:39'),(4,'帖子标题4',2,NULL,'发布内容4',NULL,1,'2022-05-12 15:26:39','2022-05-12 15:26:39','2022-05-12 15:26:39'),(5,'帖子标题5',3,NULL,'发布内容5',NULL,1,'2022-05-12 15:26:39','2022-05-12 15:26:39','2022-05-12 15:26:39'),(6,NULL,1,NULL,'评论内容212',5,2,'2022-05-12 16:25:31',NULL,'2022-05-12 16:25:31'),(7,NULL,NULL,1,'管理评论21',5,2,'2022-05-12 16:26:50',NULL,'2022-05-12 16:26:50');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` text COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',1,'http://localhost:8080/jiatongjizhangben/upload/news1.jpg','2022-05-12 15:26:39','公告详情1','2022-05-12 15:26:39'),(2,'公告标题2',3,'http://localhost:8080/jiatongjizhangben/upload/news2.jpg','2022-05-12 15:26:39','公告详情2','2022-05-12 15:26:39'),(3,'公告标题3',1,'http://localhost:8080/jiatongjizhangben/upload/news3.jpg','2022-05-12 15:26:39','公告详情3','2022-05-12 15:26:39'),(4,'公告标题4',2,'http://localhost:8080/jiatongjizhangben/upload/news4.jpg','2022-05-12 15:26:39','公告详情4','2022-05-12 15:26:39'),(5,'公告标题5',3,'http://localhost:8080/jiatongjizhangben/upload/news5.jpg','2022-05-12 15:26:39','公告详情5','2022-05-12 15:26:39');

/*Table structure for table `shouruxiangqing` */

DROP TABLE IF EXISTS `shouruxiangqing`;

CREATE TABLE `shouruxiangqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shouruxiangqing_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `shouruxiangqing_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `shouruxiangqing_money` int(11) DEFAULT NULL COMMENT '收入金额',
  `shouruxiangqing_types` int(11) DEFAULT NULL COMMENT '收入类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shouruxiangqing_content` text COMMENT '备注 ',
  `insert_time` date DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='收入详情';

/*Data for the table `shouruxiangqing` */

insert  into `shouruxiangqing`(`id`,`shouruxiangqing_name`,`shouruxiangqing_photo`,`shouruxiangqing_money`,`shouruxiangqing_types`,`yonghu_id`,`shouruxiangqing_content`,`insert_time`,`create_time`) values (1,'标题1','http://localhost:8080/jiatongjizhangben/upload/shouruxiangqing1.jpg',315,2,2,'备注1','2022-05-12','2022-05-12 15:26:39'),(2,'标题2','http://localhost:8080/jiatongjizhangben/upload/shouruxiangqing2.jpg',309,3,3,'备注2','2022-05-12','2022-05-12 15:26:39'),(3,'标题3','http://localhost:8080/jiatongjizhangben/upload/shouruxiangqing3.jpg',39,1,2,'备注3','2022-05-12','2022-05-12 15:26:39'),(4,'标题4','http://localhost:8080/jiatongjizhangben/upload/shouruxiangqing4.jpg',324,1,3,'备注4','2022-05-12','2022-05-12 15:26:39'),(5,'标题5','http://localhost:8080/jiatongjizhangben/upload/shouruxiangqing5.jpg',326,3,1,'备注5','2022-05-12','2022-05-12 15:26:39');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','73jv13xmxxxnb2g4cgbjbbuwudsqabwp','2022-05-12 15:03:08','2022-05-12 17:24:12'),(2,1,'admin','users','管理员','bv5poqot69bv3hvzhf8hb0avqr88fnh5','2022-05-12 15:42:00','2022-05-12 17:26:03');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2022-05-01 00:00:00');

/*Table structure for table `xiaofeixiangqing` */

DROP TABLE IF EXISTS `xiaofeixiangqing`;

CREATE TABLE `xiaofeixiangqing` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `xiaofeixiangqing_name` varchar(200) DEFAULT NULL COMMENT '标题  Search111 ',
  `xiaofeixiangqing_photo` varchar(200) DEFAULT NULL COMMENT '封面',
  `xiaofeixiangqing_money` int(11) DEFAULT NULL COMMENT '消费金额',
  `xiaofeixiangqing_types` int(11) DEFAULT NULL COMMENT '消费类型 Search111',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `xiaofeixiangqing_content` text COMMENT '备注 ',
  `insert_time` date DEFAULT NULL COMMENT '记录时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='收入详情';

/*Data for the table `xiaofeixiangqing` */

insert  into `xiaofeixiangqing`(`id`,`xiaofeixiangqing_name`,`xiaofeixiangqing_photo`,`xiaofeixiangqing_money`,`xiaofeixiangqing_types`,`yonghu_id`,`xiaofeixiangqing_content`,`insert_time`,`create_time`) values (1,'标题1','http://localhost:8080/jiatongjizhangben/upload/xiaofeixiangqing1.jpg',439,1,2,'备注1','2022-05-12','2022-05-12 15:26:39'),(2,'标题2','http://localhost:8080/jiatongjizhangben/upload/xiaofeixiangqing2.jpg',485,1,3,'备注2','2022-05-12','2022-05-12 15:26:39'),(3,'标题3','http://localhost:8080/jiatongjizhangben/upload/xiaofeixiangqing3.jpg',169,3,2,'备注3','2022-05-12','2022-05-12 15:26:39'),(5,'标题5','http://localhost:8080/jiatongjizhangben/upload/xiaofeixiangqing5.jpg',474,2,3,'备注5','2022-05-12','2022-05-12 15:26:39'),(6,'标题1111','http://localhost:8080/jiatongjizhangben/upload/1652343905887.jpg',999,1,1,'备注111','2022-05-12','2022-05-12 16:25:19');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账号',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '专家姓名 Search111 ',
  `yonghu_photo` varchar(255) DEFAULT NULL COMMENT '头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `yonghu_shenfen` varchar(200) DEFAULT NULL COMMENT '身份',
  `yonghu_delete` int(11) DEFAULT '1' COMMENT '假删',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_photo`,`sex_types`,`yonghu_phone`,`yonghu_email`,`yonghu_shenfen`,`yonghu_delete`,`insert_time`,`create_time`) values (1,'a1','123456','用户姓名1','http://localhost:8080/jiatongjizhangben/upload/yonghu1.jpg',1,'17703786901','1@qq.com','爸爸',1,'2022-05-12 15:26:39','2022-05-12 15:26:39'),(2,'a2','123456','用户姓名2','http://localhost:8080/jiatongjizhangben/upload/yonghu2.jpg',2,'17703786902','2@qq.com','身份2',1,'2022-05-12 15:26:39','2022-05-12 15:26:39'),(3,'a3','123456','用户姓名3','http://localhost:8080/jiatongjizhangben/upload/yonghu3.jpg',2,'17703786903','3@qq.com','身份3',1,'2022-05-12 15:26:39','2022-05-12 15:26:39');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
