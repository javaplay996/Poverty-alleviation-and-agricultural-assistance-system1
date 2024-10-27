/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - chongwujiankangguwen
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`chongwujiankangguwen` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `chongwujiankangguwen`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (1,'sex_types','性别类型',1,'男',NULL,NULL,'2023-03-28 09:08:28'),(2,'sex_types','性别类型',2,'女',NULL,NULL,'2023-03-28 09:08:28'),(3,'gonggao_types','公告类型',1,'公告类型1',NULL,NULL,'2023-03-28 09:08:28'),(4,'gonggao_types','公告类型',2,'公告类型2',NULL,NULL,'2023-03-28 09:08:28'),(5,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-03-28 09:08:28'),(6,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-03-28 09:08:28'),(7,'jiankang_chat_types','数据类型',1,'问题',NULL,NULL,'2023-03-28 09:08:28'),(8,'jiankang_chat_types','数据类型',2,'回复',NULL,NULL,'2023-03-28 09:08:28'),(9,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-03-28 09:08:28'),(10,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-03-28 09:08:28'),(11,'jiankang_types','健康知识类型',1,'健康知识类型1',NULL,NULL,'2023-03-28 09:08:28'),(12,'jiankang_types','健康知识类型',2,'健康知识类型2',NULL,NULL,'2023-03-28 09:08:28'),(13,'jiankang_types','健康知识类型',3,'健康知识类型3',NULL,NULL,'2023-03-28 09:08:28'),(14,'jiankang_types','健康知识类型',4,'健康知识类型4',NULL,NULL,'2023-03-28 09:08:28'),(15,'guwen_yuyue_yesno_types','报名状态',1,'待审核',NULL,NULL,'2023-03-28 09:08:28'),(16,'guwen_yuyue_yesno_types','报名状态',2,'同意',NULL,NULL,'2023-03-28 09:08:28'),(17,'guwen_yuyue_yesno_types','报名状态',3,'拒绝',NULL,NULL,'2023-03-28 09:08:28');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guwen_id` int(11) DEFAULT NULL COMMENT '顾问',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`guwen_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',328,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(2,'帖子标题2',1,NULL,NULL,'发布内容2',348,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',314,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',41,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',322,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(6,'帖子标题6',2,NULL,NULL,'发布内容6',119,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(7,'帖子标题7',1,NULL,NULL,'发布内容7',138,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',387,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(9,'帖子标题9',2,NULL,NULL,'发布内容9',376,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(10,'帖子标题10',1,NULL,NULL,'发布内容10',228,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(11,'帖子标题11',1,NULL,NULL,'发布内容11',2,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(12,'帖子标题12',1,NULL,NULL,'发布内容12',459,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(13,'帖子标题13',3,NULL,NULL,'发布内容13',207,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(14,'帖子标题14',2,NULL,NULL,'发布内容14',365,1,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(15,'帖子',1,NULL,NULL,'<p>帖子</p>',NULL,1,'2023-03-28 09:21:01',NULL,'2023-03-28 09:21:01'),(16,NULL,NULL,1,NULL,'1231',15,2,'2023-03-28 09:24:35',NULL,'2023-03-28 09:24:35');

/*Table structure for table `gonggao` */

DROP TABLE IF EXISTS `gonggao`;

CREATE TABLE `gonggao` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `gonggao_name` varchar(200) DEFAULT NULL COMMENT '公告名称 Search111  ',
  `gonggao_photo` varchar(200) DEFAULT NULL COMMENT '公告图片 ',
  `gonggao_types` int(11) NOT NULL COMMENT '公告类型 Search111 ',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '公告发布时间 ',
  `gonggao_content` longtext COMMENT '公告详情 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `gonggao` */

insert  into `gonggao`(`id`,`gonggao_name`,`gonggao_photo`,`gonggao_types`,`insert_time`,`gonggao_content`,`create_time`) values (1,'公告名称1','upload/gonggao1.jpg',1,'2023-03-28 09:08:55','公告详情1','2023-03-28 09:08:55'),(2,'公告名称2','upload/gonggao2.jpg',1,'2023-03-28 09:08:55','公告详情2','2023-03-28 09:08:55'),(3,'公告名称3','upload/gonggao3.jpg',2,'2023-03-28 09:08:55','公告详情3','2023-03-28 09:08:55'),(4,'公告名称4','upload/gonggao4.jpg',2,'2023-03-28 09:08:55','公告详情4','2023-03-28 09:08:55'),(5,'公告名称5','upload/gonggao5.jpg',2,'2023-03-28 09:08:55','公告详情5','2023-03-28 09:08:55'),(6,'公告名称6','upload/gonggao6.jpg',2,'2023-03-28 09:08:55','公告详情6','2023-03-28 09:08:55'),(7,'公告名称7','upload/gonggao7.jpg',2,'2023-03-28 09:08:55','公告详情7','2023-03-28 09:08:55'),(8,'公告名称8','upload/gonggao8.jpg',1,'2023-03-28 09:08:55','公告详情8','2023-03-28 09:08:55'),(9,'公告名称9','upload/gonggao9.jpg',1,'2023-03-28 09:08:55','公告详情9','2023-03-28 09:08:55'),(10,'公告名称10','upload/gonggao10.jpg',2,'2023-03-28 09:08:55','公告详情10','2023-03-28 09:08:55'),(11,'公告名称11','upload/gonggao11.jpg',2,'2023-03-28 09:08:55','公告详情11','2023-03-28 09:08:55'),(12,'公告名称12','upload/gonggao12.jpg',2,'2023-03-28 09:08:55','公告详情12','2023-03-28 09:08:55'),(13,'公告名称13','upload/gonggao13.jpg',2,'2023-03-28 09:08:55','公告详情13','2023-03-28 09:08:55'),(14,'公告名称14','upload/gonggao14.jpg',1,'2023-03-28 09:08:55','公告详情14','2023-03-28 09:08:55');

/*Table structure for table `guwen` */

DROP TABLE IF EXISTS `guwen`;

CREATE TABLE `guwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `guwen_name` varchar(200) DEFAULT NULL COMMENT '顾问姓名 Search111 ',
  `guwen_phone` varchar(200) DEFAULT NULL COMMENT '顾问手机号',
  `guwen_id_number` varchar(200) DEFAULT NULL COMMENT '顾问身份证号',
  `guwen_photo` varchar(200) DEFAULT NULL COMMENT '顾问头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `guwen_email` varchar(200) DEFAULT NULL COMMENT '顾问邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='顾问';

/*Data for the table `guwen` */

insert  into `guwen`(`id`,`username`,`password`,`guwen_name`,`guwen_phone`,`guwen_id_number`,`guwen_photo`,`sex_types`,`guwen_email`,`create_time`) values (1,'a1','123456','顾问姓名1','17703786901','410224199010102001','upload/guwen1.jpg',1,'1@qq.com','2023-03-28 09:08:55'),(2,'a2','123456','顾问姓名2','17703786902','410224199010102002','upload/guwen2.jpg',1,'2@qq.com','2023-03-28 09:08:55'),(3,'a3','123456','顾问姓名3','17703786903','410224199010102003','upload/guwen3.jpg',2,'3@qq.com','2023-03-28 09:08:55');

/*Table structure for table `guwen_yuyue` */

DROP TABLE IF EXISTS `guwen_yuyue`;

CREATE TABLE `guwen_yuyue` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `guwen_yuyue_uuid_number` varchar(200) DEFAULT NULL COMMENT '报名编号 Search111 ',
  `guwen_id` int(11) DEFAULT NULL COMMENT '顾问',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `guwen_yuyue_text` longtext COMMENT '报名理由',
  `guwen_yuyue_yesno_types` int(11) DEFAULT NULL COMMENT '报名状态 Search111 ',
  `guwen_yuyue_yesno_text` longtext COMMENT '审核回复',
  `guwen_yuyue_shenhe_time` timestamp NULL DEFAULT NULL COMMENT '审核时间',
  `guwen_yuyue_time` timestamp NULL DEFAULT NULL COMMENT '预约时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '活动报名时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='活动报名';

/*Data for the table `guwen_yuyue` */

insert  into `guwen_yuyue`(`id`,`guwen_yuyue_uuid_number`,`guwen_id`,`yonghu_id`,`guwen_yuyue_text`,`guwen_yuyue_yesno_types`,`guwen_yuyue_yesno_text`,`guwen_yuyue_shenhe_time`,`guwen_yuyue_time`,`insert_time`,`create_time`) values (1,'1679965735909',3,3,'报名理由1',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(2,'1679965735902',3,3,'报名理由2',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(3,'1679965735981',3,3,'报名理由3',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(4,'1679965735966',3,1,'报名理由4',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(5,'1679965735951',3,3,'报名理由5',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(6,'1679965735974',1,1,'报名理由6',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(7,'1679965735976',1,3,'报名理由7',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(8,'1679965735918',3,2,'报名理由8',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(9,'1679965735941',1,2,'报名理由9',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(10,'1679965735938',3,3,'报名理由10',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(11,'1679965735981',3,1,'报名理由11',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(12,'1679965735985',2,1,'报名理由12',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(13,'1679965735925',2,2,'报名理由13',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(14,'1679965735964',3,1,'报名理由14',1,NULL,NULL,'2023-03-28 09:08:55','2023-03-28 09:08:55','2023-03-28 09:08:55'),(15,'1679966587975',1,1,'丫丫',2,'丫丫','2023-03-28 09:23:45','2023-03-28 00:00:00','2023-03-28 09:23:17','2023-03-28 09:23:17');

/*Table structure for table `jiankang` */

DROP TABLE IF EXISTS `jiankang`;

CREATE TABLE `jiankang` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `guwen_id` int(11) DEFAULT NULL COMMENT '顾问',
  `jiankang_name` varchar(200) DEFAULT NULL COMMENT '健康知识名称  Search111 ',
  `jiankang_uuid_number` varchar(200) DEFAULT NULL COMMENT '健康知识编号',
  `jiankang_photo` varchar(200) DEFAULT NULL COMMENT '健康知识照片',
  `jiankang_types` int(11) DEFAULT NULL COMMENT '健康知识类型 Search111',
  `jiankang_video` varchar(200) DEFAULT NULL COMMENT '健康知识视频',
  `jiankang_file` varchar(200) DEFAULT NULL COMMENT '健康知识文件',
  `jiankang_content` longtext COMMENT '健康知识介绍 ',
  `jiankang_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='健康知识';

/*Data for the table `jiankang` */

insert  into `jiankang`(`id`,`guwen_id`,`jiankang_name`,`jiankang_uuid_number`,`jiankang_photo`,`jiankang_types`,`jiankang_video`,`jiankang_file`,`jiankang_content`,`jiankang_delete`,`insert_time`,`create_time`) values (1,1,'健康知识名称1','1679965735909','upload/jiankang1.jpg',4,'upload/video.mp4','upload/file.rar','健康知识介绍1',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(2,3,'健康知识名称2','1679965735924','upload/jiankang2.jpg',4,'upload/video.mp4','upload/file.rar','健康知识介绍2',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(3,2,'健康知识名称3','1679965735984','upload/jiankang3.jpg',3,'upload/video.mp4','upload/file.rar','健康知识介绍3',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(4,1,'健康知识名称4','1679965735978','upload/jiankang4.jpg',3,'upload/video.mp4','upload/file.rar','健康知识介绍4',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(5,2,'健康知识名称5','1679965735967','upload/jiankang5.jpg',4,'upload/video.mp4','upload/file.rar','健康知识介绍5',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(6,2,'健康知识名称6','1679965735897','upload/jiankang6.jpg',3,'upload/video.mp4','upload/file.rar','健康知识介绍6',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(7,3,'健康知识名称7','1679965735917','upload/jiankang7.jpg',1,'upload/video.mp4','upload/file.rar','健康知识介绍7',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(8,1,'健康知识名称8','1679965735981','upload/jiankang8.jpg',2,'upload/video.mp4','upload/file.rar','健康知识介绍8',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(9,2,'健康知识名称9','1679965735908','upload/jiankang9.jpg',2,'upload/video.mp4','upload/file.rar','健康知识介绍9',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(10,2,'健康知识名称10','1679965735940','upload/jiankang10.jpg',1,'upload/video.mp4','upload/file.rar','健康知识介绍10',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(11,1,'健康知识名称11','1679965735963','upload/jiankang11.jpg',3,'upload/video.mp4','upload/file.rar','健康知识介绍11',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(12,2,'健康知识名称12','1679965735965','upload/jiankang12.jpg',4,'upload/video.mp4','upload/file.rar','健康知识介绍12',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(13,3,'健康知识名称13','1679965735920','upload/jiankang13.jpg',2,'upload/video.mp4','upload/file.rar','健康知识介绍13',1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(14,2,'健康知识名称14','1679965735938','upload/jiankang14.jpg',3,'upload/video.mp4','upload/file.rar','健康知识介绍14',1,'2023-03-28 09:08:55','2023-03-28 09:08:55');

/*Table structure for table `jiankang_chat` */

DROP TABLE IF EXISTS `jiankang_chat`;

CREATE TABLE `jiankang_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `guwen_id` int(11) DEFAULT NULL COMMENT '回答人',
  `jiankang_chat_issue_text` longtext COMMENT '问题',
  `jiankang_chat_issue_photo` varchar(200) DEFAULT NULL COMMENT '问题图片 ',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `jiankang_chat_reply_text` longtext COMMENT '回复',
  `jiankang_chat_reply_photo` varchar(200) DEFAULT NULL COMMENT '回复图片 ',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `jiankang_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `jiankang_chat` */

insert  into `jiankang_chat`(`id`,`yonghu_id`,`guwen_id`,`jiankang_chat_issue_text`,`jiankang_chat_issue_photo`,`issue_time`,`jiankang_chat_reply_text`,`jiankang_chat_reply_photo`,`reply_time`,`zhuangtai_types`,`jiankang_chat_types`,`insert_time`,`create_time`) values (1,1,2,'问题1','upload/jiankang_chat_issue1.jpg','2023-03-28 09:08:55','回复1','upload/jiankang_chat_reply1.jpg','2023-03-28 09:08:55',1,2,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(2,2,2,'问题2','upload/jiankang_chat_issue2.jpg','2023-03-28 09:08:55','回复2','upload/jiankang_chat_reply2.jpg','2023-03-28 09:08:55',1,2,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(3,2,3,'问题3','upload/jiankang_chat_issue3.jpg','2023-03-28 09:08:55','回复3','upload/jiankang_chat_reply3.jpg','2023-03-28 09:08:55',1,2,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(4,2,2,'问题4','upload/jiankang_chat_issue4.jpg','2023-03-28 09:08:55','回复4','upload/jiankang_chat_reply4.jpg','2023-03-28 09:08:55',1,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(5,1,3,'问题5','upload/jiankang_chat_issue5.jpg','2023-03-28 09:08:55','回复5','upload/jiankang_chat_reply5.jpg','2023-03-28 09:08:55',1,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(6,1,2,'问题6','upload/jiankang_chat_issue6.jpg','2023-03-28 09:08:55','回复6','upload/jiankang_chat_reply6.jpg','2023-03-28 09:08:55',2,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(7,2,3,'问题7','upload/jiankang_chat_issue7.jpg','2023-03-28 09:08:55','回复7','upload/jiankang_chat_reply7.jpg','2023-03-28 09:08:55',2,2,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(8,1,3,'问题8','upload/jiankang_chat_issue8.jpg','2023-03-28 09:08:55','回复8','upload/jiankang_chat_reply8.jpg','2023-03-28 09:08:55',1,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(9,2,3,'问题9','upload/jiankang_chat_issue9.jpg','2023-03-28 09:08:55','回复9','upload/jiankang_chat_reply9.jpg','2023-03-28 09:08:55',1,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(10,3,1,'问题10','upload/jiankang_chat_issue10.jpg','2023-03-28 09:08:55','回复10','upload/jiankang_chat_reply10.jpg','2023-03-28 09:08:55',2,2,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(11,2,3,'问题11','upload/jiankang_chat_issue11.jpg','2023-03-28 09:08:55','回复11','upload/jiankang_chat_reply11.jpg','2023-03-28 09:08:55',1,2,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(12,1,1,'问题12','upload/jiankang_chat_issue12.jpg','2023-03-28 09:08:55','回复12','upload/jiankang_chat_reply12.jpg','2023-03-28 09:08:55',2,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(13,2,3,'问题13','upload/jiankang_chat_issue13.jpg','2023-03-28 09:08:55','回复13','upload/jiankang_chat_reply13.jpg','2023-03-28 09:08:55',2,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(14,3,2,'问题14','upload/jiankang_chat_issue14.jpg','2023-03-28 09:08:55','回复14','upload/jiankang_chat_reply14.jpg','2023-03-28 09:08:55',1,1,'2023-03-28 09:08:55','2023-03-28 09:08:55'),(15,1,1,'哈哈哈',NULL,'2023-03-28 09:24:05',NULL,NULL,NULL,2,1,'2023-03-28 09:24:06','2023-03-28 09:24:06'),(16,1,1,NULL,NULL,NULL,'不要写',NULL,'2023-03-28 09:24:16',NULL,2,'2023-03-28 09:24:17','2023-03-28 09:24:17');

/*Table structure for table `jiankang_liuyan` */

DROP TABLE IF EXISTS `jiankang_liuyan`;

CREATE TABLE `jiankang_liuyan` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `jiankang_id` int(11) DEFAULT NULL COMMENT '健康知识',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `jiankang_liuyan_text` longtext COMMENT '评论内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评论时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='健康知识评论';

/*Data for the table `jiankang_liuyan` */

insert  into `jiankang_liuyan`(`id`,`jiankang_id`,`yonghu_id`,`jiankang_liuyan_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,2,'评论内容1','2023-03-28 09:08:55','回复信息1','2023-03-28 09:08:55','2023-03-28 09:08:55'),(2,2,3,'评论内容2','2023-03-28 09:08:55','回复信息2','2023-03-28 09:08:55','2023-03-28 09:08:55'),(3,3,3,'评论内容3','2023-03-28 09:08:55','回复信息3','2023-03-28 09:08:55','2023-03-28 09:08:55'),(4,4,3,'评论内容4','2023-03-28 09:08:55','回复信息4','2023-03-28 09:08:55','2023-03-28 09:08:55'),(5,5,1,'评论内容5','2023-03-28 09:08:55','回复信息5','2023-03-28 09:08:55','2023-03-28 09:08:55'),(6,6,3,'评论内容6','2023-03-28 09:08:55','回复信息6','2023-03-28 09:08:55','2023-03-28 09:08:55'),(7,7,1,'评论内容7','2023-03-28 09:08:55','回复信息7','2023-03-28 09:08:55','2023-03-28 09:08:55'),(8,8,3,'评论内容8','2023-03-28 09:08:55','回复信息8','2023-03-28 09:08:55','2023-03-28 09:08:55'),(9,9,1,'评论内容9','2023-03-28 09:08:55','回复信息9','2023-03-28 09:08:55','2023-03-28 09:08:55'),(10,10,1,'评论内容10','2023-03-28 09:08:55','回复信息10','2023-03-28 09:08:55','2023-03-28 09:08:55'),(11,11,2,'评论内容11','2023-03-28 09:08:55','回复信息11','2023-03-28 09:08:55','2023-03-28 09:08:55'),(12,12,1,'评论内容12','2023-03-28 09:08:55','回复信息12','2023-03-28 09:08:55','2023-03-28 09:08:55'),(13,13,2,'评论内容13','2023-03-28 09:08:55','回复信息13','2023-03-28 09:08:55','2023-03-28 09:08:55'),(14,14,1,'评论内容14','2023-03-28 09:08:55','回复信息14','2023-03-28 09:08:55','2023-03-28 09:08:55'),(15,13,1,'丫丫','2023-03-28 09:20:47',NULL,NULL,'2023-03-28 09:20:47'),(16,11,1,'原因是的 ','2023-03-28 09:24:55','忙呀','2023-03-28 09:25:08','2023-03-28 09:24:55');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '儿童id',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'a1','yonghu','用户','49215u1v40pex6r4wv74bovfrsge9e3j','2023-03-28 09:11:35','2023-03-28 10:20:27'),(2,1,'admin','users','管理员','ihxtnvkuuea5sztup9u7xe9r5fh0vfsg','2023-03-28 09:14:31','2023-03-28 10:35:04'),(3,1,'a1','guwen','顾问','8cs5qhb8qh75irc02wjwy1w2ih2bigjb','2023-03-28 09:23:30','2023-03-28 10:23:31');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '儿童名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-03-28 09:08:28');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '用户手机号',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '用户身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '用户邮箱',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','2023-03-28 09:08:55'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',1,'2@qq.com','2023-03-28 09:08:55'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','2023-03-28 09:08:55');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
