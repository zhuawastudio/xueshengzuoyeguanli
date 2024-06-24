/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xueshengzuoyeguanli
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xueshengzuoyeguanli` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xueshengzuoyeguanli`;

/*Table structure for table `banji_kecheng_laoshi` */

DROP TABLE IF EXISTS `banji_kecheng_laoshi`;

CREATE TABLE `banji_kecheng_laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banji_id` int(11) DEFAULT NULL COMMENT '班级',
  `kecheng_id` int(11) DEFAULT NULL COMMENT '课程',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `beizhu_content` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='班级课程老师关系';

/*Data for the table `banji_kecheng_laoshi` */

insert  into `banji_kecheng_laoshi`(`id`,`banji_id`,`kecheng_id`,`laoshi_id`,`beizhu_content`,`create_time`) values (1,7,10,2,'宿舍\r\n','2021-03-24 20:14:25'),(2,7,9,1,'','2021-03-24 20:22:18'),(3,6,9,2,'','2021-03-25 09:58:06'),(4,5,10,2,'班级散的数学课的张22老师\r\n','2021-03-25 15:45:20');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/jspmm2ql6/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/jspmm2ql6/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/jspmm2ql6/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/jspmm2ql6/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/jspmm2ql6/upload/picture5.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字   ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='字典表';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`create_time`) values (1,'sex_types','性别',1,'男',NULL,'2021-03-24 16:50:50'),(2,'sex_types','性别',2,'女',NULL,'2021-03-24 16:50:50'),(3,'politics_types','政治面貌',1,'群众',NULL,'2021-03-24 16:50:50'),(4,'politics_types','政治面貌',2,'党员',NULL,'2021-03-24 16:50:50'),(5,'banji_types','班级名称',1,'班级一',NULL,'2021-03-24 16:50:50'),(6,'banji_types','班级名称',2,'班级二',NULL,'2021-03-24 16:50:50'),(7,'banji_types','班级名称',3,'班级三',NULL,'2021-03-24 16:50:50'),(8,'kecheng_types','课程名称',1,'语文',NULL,'2021-03-24 16:50:50'),(9,'kecheng_types','课程名称',2,'数学',NULL,'2021-03-24 16:50:50'),(10,'kecheng_types','课程名称',3,'英文',NULL,'2021-03-24 16:50:50'),(11,'kecheng_types','课程名称',4,'课程4',NULL,'2021-03-25 15:47:32');

/*Table structure for table `laoshi` */

DROP TABLE IF EXISTS `laoshi`;

CREATE TABLE `laoshi` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `laoshi_name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `laoshi_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `laoshi_phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `laoshi_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `laoshi_nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `laoshi_address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='老师';

/*Data for the table `laoshi` */

insert  into `laoshi`(`id`,`username`,`password`,`laoshi_name`,`sex_types`,`laoshi_id_number`,`laoshi_phone`,`laoshi_photo`,`laoshi_nation`,`politics_types`,`laoshi_address`,`create_time`) values (1,'a11','123456','张11',1,'410224199610232011','17703786911','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586665768.jpg','汉',2,'北京3环1','2021-03-24 19:51:11'),(2,'a22','123456','张22老师',2,'410224199610232022','17703786922','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586701554.jpg','汉',2,'北京2环','2021-03-24 19:51:47');

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
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,6,'admin','users','管理员','3xo9hae2cg5yaufiy7x2hq111abosmom','2021-03-24 18:58:44','2021-03-25 16:41:44'),(2,1,'a1','yonghu','用户','l654827f19xq3aj91yk7bfnacfg0rmz0','2021-03-25 13:54:42','2021-03-25 16:53:14'),(3,7,'a1','users','小管理员','jra9gu5dmc2nxe193v5ly4m4aiecro4g','2021-03-25 14:07:25','2021-03-25 16:48:58'),(4,1,'a11','laoshi','老师','vkbz7k3umhhy6ewnqtwqp2fhr4ecq9vr','2021-03-25 14:08:49','2021-03-25 16:53:21'),(5,2,'a22','laoshi','老师','daga020k252z0716qc8mqjc4jmlfhddx','2021-03-25 14:21:19','2021-03-25 17:01:13'),(6,4,'a4','yonghu','用户','b9j42puf9ghi6sk1hze8ajy66d33bkx3','2021-03-25 16:00:01','2021-03-25 17:02:09');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (6,'admin','123456','管理员','2021-01-29 14:51:13'),(7,'a1','123456','小管理员','2021-03-25 13:52:46'),(8,'a2','123456','小管理员','2021-03-25 15:41:59');

/*Table structure for table `xitonggonggao` */

DROP TABLE IF EXISTS `xitonggonggao`;

CREATE TABLE `xitonggonggao` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `biaoti` varchar(200) DEFAULT NULL COMMENT '标题 Search',
  `leixing` varchar(200) DEFAULT NULL COMMENT '类型',
  `neirong` longtext COMMENT '内容',
  `riqi` datetime DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统公告';

/*Data for the table `xitonggonggao` */

insert  into `xitonggonggao`(`id`,`addtime`,`biaoti`,`leixing`,`neirong`,`riqi`) values (1,'2021-03-24 16:50:50','日常公告','日常公告','公告信息','2021-03-24 16:50:50'),(2,'2021-03-24 16:50:50','紧急公告','紧急公告','公告信息','2021-03-24 16:50:50'),(3,'2021-03-24 16:50:50','其他公告','其他公告','公告信息','2021-03-24 16:50:50');

/*Table structure for table `xuesheng_zuoye` */

DROP TABLE IF EXISTS `xuesheng_zuoye`;

CREATE TABLE `xuesheng_zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '学生',
  `zuoye_id` int(11) DEFAULT NULL COMMENT '作业',
  `xuesheng_zuoye_file` varchar(200) DEFAULT NULL COMMENT '学生完成作业',
  `xuesheng_zuoye_time` timestamp NULL DEFAULT NULL COMMENT '学生完成作业时间',
  `laoshi_id` int(11) DEFAULT NULL COMMENT '老师',
  `laoshi_zuoye_file` varchar(200) DEFAULT NULL COMMENT '老师批改作业',
  `laoshi_zuoye_content` varchar(200) DEFAULT NULL COMMENT '老师批改作业备注',
  `laoshi_zuoye_time` timestamp NULL DEFAULT NULL COMMENT '老师批改作业时间',
  `zuoye_number` int(11) DEFAULT NULL COMMENT '作业分数',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `xuesheng_zuoye` */

insert  into `xuesheng_zuoye`(`id`,`yonghu_id`,`zuoye_id`,`xuesheng_zuoye_file`,`xuesheng_zuoye_time`,`laoshi_id`,`laoshi_zuoye_file`,`laoshi_zuoye_content`,`laoshi_zuoye_time`,`zuoye_number`,`create_time`) values (3,1,5,'http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616657025177.jpg','2021-03-25 15:30:30',2,'http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616657412410.jpg','‍完成的很好\r\n','2021-03-25 15:30:30',177,'2021-03-25 14:21:56'),(4,2,5,NULL,NULL,2,NULL,NULL,NULL,NULL,'2021-03-25 14:21:56'),(5,4,5,NULL,NULL,2,NULL,NULL,NULL,NULL,'2021-03-25 14:21:56'),(6,5,6,NULL,NULL,1,NULL,NULL,NULL,NULL,'2021-03-25 15:40:17'),(7,6,6,NULL,NULL,1,NULL,NULL,NULL,NULL,'2021-03-25 15:40:17'),(8,1,7,NULL,NULL,2,NULL,NULL,NULL,NULL,'2021-03-25 15:57:06'),(9,2,7,NULL,NULL,2,NULL,NULL,NULL,NULL,'2021-03-25 15:57:06'),(10,4,7,'http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616659222032.jpg','2021-03-25 16:01:52',2,'http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616659298338.jpg','j做的不错\r\n','2021-03-25 16:01:52',78,'2021-03-25 15:57:06');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `name` varchar(200) DEFAULT NULL COMMENT '姓名   ',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别',
  `id_number` varchar(200) DEFAULT NULL COMMENT '身份证号   ',
  `phone` varchar(200) DEFAULT NULL COMMENT '手机号  ',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '照片',
  `nation` varchar(200) DEFAULT NULL COMMENT '民族',
  `politics_types` int(11) DEFAULT NULL COMMENT '政治面貌',
  `address` varchar(200) DEFAULT NULL COMMENT '家庭住址',
  `banji_types` int(11) DEFAULT NULL COMMENT '班级   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`name`,`sex_types`,`id_number`,`phone`,`yonghu_photo`,`nation`,`politics_types`,`address`,`banji_types`,`create_time`) values (1,'a1','123456','张1',2,'410224199610232011','17703789991','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586221107.jpg','汉',1,'郑州东郊',2,'2021-03-24 19:43:54'),(2,'a2','123456','张2',1,'410224199610232012','17703789992','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586454073.jpg','汉',1,'郑州东郊',2,'2021-03-24 19:47:42'),(3,'a3','123456','张三',1,'410224199610232013','17703789993','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586497856.jpg','汉',1,'北京朝阳区朝阳街道',1,'2021-03-24 19:48:28'),(4,'a4','123456','张4',1,'410224199610232014','17703789994','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586540062.jpg','汉',2,'北京2环1',2,'2021-03-24 19:49:09'),(5,'a5','123456','张5',1,'410224199610232015','17703789995','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586576601.jpg','汉',2,'北京朝阳区朝阳街道',3,'2021-03-24 19:49:44'),(6,'a6','123456','张6',1,'410224199610232016','17703789996','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616586613808.jpg','汉',2,'北京1环',3,'2021-03-24 19:50:23'),(7,'a7','123456','张7',2,'410224199610232017','17703789997','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616658149371.jpg','汉',2,'郑州东郊',3,'2021-03-25 15:42:59');

/*Table structure for table `zuoye` */

DROP TABLE IF EXISTS `zuoye`;

CREATE TABLE `zuoye` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `banji_kecheng_laoshi_id` int(11) DEFAULT NULL COMMENT '班级课程',
  `zuoye_name` varchar(200) DEFAULT NULL COMMENT '作业名字   ',
  `zuoye_file` varchar(200) DEFAULT NULL COMMENT '布置的作业',
  `zuoye_content` varchar(200) DEFAULT NULL COMMENT '作业详情',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发布作业时间',
  `end_time` timestamp NULL DEFAULT NULL COMMENT '作业截止时间   ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='作业';

/*Data for the table `zuoye` */

insert  into `zuoye`(`id`,`banji_kecheng_laoshi_id`,`zuoye_name`,`zuoye_file`,`zuoye_content`,`insert_time`,`end_time`,`create_time`) values (5,3,'作业测试1','','第一次作业测试要求\r\n','2021-03-25 14:21:56','2021-03-26 00:00:00','2021-03-25 14:21:56'),(6,2,'第二次作业测试','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616658000495.jpg','第二次作业测试要求\r\n','2021-03-25 15:40:17','2021-03-26 00:00:00','2021-03-25 15:40:17'),(7,3,'作业测试9','http://localhost:8080/xueshengzuoyeguanli/file/download?fileName=1616658965180.jpg','作业测试9 的班级二数学 张22老师的要求   \r\n不能抄袭  不能相互偷看\r\n','2021-03-25 15:57:06','2021-03-26 03:00:00','2021-03-25 15:57:06');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
