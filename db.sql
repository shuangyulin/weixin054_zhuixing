/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssm2g510
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssm2g510` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssm2g510`;

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssm2g510/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssm2g510/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssm2g510/upload/picture3.jpg'),(4,'picture4','http://localhost:8080/ssm2g510/upload/picture4.jpg'),(5,'picture5','http://localhost:8080/ssm2g510/upload/picture5.jpg'),(6,'homepage','http://localhost:8080/ssm2g510/upload/1608879085926.png');

/*Table structure for table `discussmingxingxinxi` */

DROP TABLE IF EXISTS `discussmingxingxinxi`;

CREATE TABLE `discussmingxingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608879511217 DEFAULT CHARSET=utf8 COMMENT='明星信息评论表';

/*Data for the table `discussmingxingxinxi` */

insert  into `discussmingxingxinxi`(`id`,`addtime`,`refid`,`userid`,`content`,`reply`) values (1,'2020-12-25 14:01:44',1,1,'评论内容1','回复内容1'),(2,'2020-12-25 14:01:44',2,2,'评论内容2','回复内容2'),(3,'2020-12-25 14:01:44',3,3,'评论内容3','回复内容3'),(4,'2020-12-25 14:01:44',4,4,'评论内容4','回复内容4'),(5,'2020-12-25 14:01:44',5,5,'评论内容5','回复内容5'),(6,'2020-12-25 14:01:44',6,6,'评论内容6','111'),(1608879263269,'2020-12-25 14:54:22',1608878989531,1608879202930,'123123112',''),(1608879511216,'2020-12-25 14:58:30',1608878989531,1608879427574,'11','');

/*Table structure for table `messages` */

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '留言人id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `content` longtext NOT NULL COMMENT '留言内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608879532183 DEFAULT CHARSET=utf8 COMMENT='留言板';

/*Data for the table `messages` */

insert  into `messages`(`id`,`addtime`,`userid`,`username`,`content`,`reply`) values (1,'2020-12-25 14:01:44',1,'用户名1','留言内容1','回复内容1'),(2,'2020-12-25 14:01:44',2,'用户名2','留言内容2','回复内容2'),(3,'2020-12-25 14:01:44',3,'用户名3','留言内容3','回复内容3'),(4,'2020-12-25 14:01:44',4,'用户名4','留言内容4','回复内容4'),(5,'2020-12-25 14:01:44',5,'用户名5','留言内容5','回复内容5'),(6,'2020-12-25 14:01:44',6,'用户名6','留言内容6','154554545'),(1608879284032,'2020-12-25 14:54:43',1608879202930,'456','其味无穷二',''),(1608879532182,'2020-12-25 14:58:51',1608879427574,'123','112','');

/*Table structure for table `mingxingfenlei` */

DROP TABLE IF EXISTS `mingxingfenlei`;

CREATE TABLE `mingxingfenlei` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingxingfenlei` varchar(200) NOT NULL COMMENT '明星分类',
  PRIMARY KEY (`id`),
  UNIQUE KEY `mingxingfenlei` (`mingxingfenlei`)
) ENGINE=InnoDB AUTO_INCREMENT=1608878893408 DEFAULT CHARSET=utf8 COMMENT='明星分类';

/*Data for the table `mingxingfenlei` */

insert  into `mingxingfenlei`(`id`,`addtime`,`mingxingfenlei`) values (1608878832043,'2020-12-25 14:47:11','歌手'),(1608878849903,'2020-12-25 14:47:29','小品演员'),(1608878893407,'2020-12-25 14:48:13','影视明星');

/*Table structure for table `mingxingxinxi` */

DROP TABLE IF EXISTS `mingxingxinxi`;

CREATE TABLE `mingxingxinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `mingxingxingming` varchar(200) DEFAULT NULL COMMENT '明星姓名',
  `daibiaozuo` varchar(200) DEFAULT NULL COMMENT '代表作',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `mingxingfenlei` varchar(200) DEFAULT NULL COMMENT '明星分类',
  `nianling` varchar(200) DEFAULT NULL COMMENT '年龄',
  `shengao` varchar(200) DEFAULT NULL COMMENT '身高',
  `tizhong` varchar(200) DEFAULT NULL COMMENT '体重',
  `xingzuo` varchar(200) DEFAULT NULL COMMENT '星座',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  `shipin` varchar(200) DEFAULT NULL COMMENT '视频',
  `xingcheng` longtext COMMENT '行程',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  `clicktime` datetime DEFAULT NULL COMMENT '最近点击时间',
  `clicknum` int(11) DEFAULT '0' COMMENT '点击次数',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608878989532 DEFAULT CHARSET=utf8 COMMENT='明星信息';

/*Data for the table `mingxingxinxi` */

insert  into `mingxingxinxi`(`id`,`addtime`,`mingxingxingming`,`daibiaozuo`,`xingbie`,`mingxingfenlei`,`nianling`,`shengao`,`tizhong`,`xingzuo`,`touxiang`,`shipin`,`xingcheng`,`thumbsupnum`,`crazilynum`,`clicktime`,`clicknum`) values (1,'2020-12-25 14:01:44','明星姓名1','代表作1','男','明星分类1','年龄1','身高1','体重1','星座1','http://localhost:8080/ssm2g510/upload/mingxingxinxi_touxiang1.jpg','','行程1',1,1,'2020-12-25 14:01:44',1),(2,'2020-12-25 14:01:44','明星姓名2','代表作2','男','明星分类2','年龄2','身高2','体重2','星座2','http://localhost:8080/ssm2g510/upload/mingxingxinxi_touxiang2.jpg','','行程2',2,2,'2020-12-25 14:01:44',2),(3,'2020-12-25 14:01:44','明星姓名3','代表作3','男','明星分类3','年龄3','身高3','体重3','星座3','http://localhost:8080/ssm2g510/upload/mingxingxinxi_touxiang3.jpg','','行程3',3,3,'2020-12-25 14:01:44',3),(4,'2020-12-25 14:01:44','明星姓名4','代表作4','男','明星分类4','年龄4','身高4','体重4','星座4','http://localhost:8080/ssm2g510/upload/mingxingxinxi_touxiang4.jpg','','行程4',4,4,'2020-12-25 14:01:44',4),(5,'2020-12-25 14:01:44','明星姓名5','代表作5','男','明星分类5','年龄5','身高5','体重5','星座5','http://localhost:8080/ssm2g510/upload/mingxingxinxi_touxiang5.jpg','','行程5',5,5,'2020-12-25 14:01:44',5),(6,'2020-12-25 14:01:44','明星姓名6','代表作6','男','明星分类6','年龄6','身高6','体重6','星座6','http://localhost:8080/ssm2g510/upload/mingxingxinxi_touxiang6.jpg','','行程6',6,6,'2020-12-25 14:01:44',6),(1608878989531,'2020-12-25 14:49:48','杨幂','仙剑奇侠传','女','影视明星','32','176','56','水瓶座','http://localhost:8080/ssm2g510/upload/1608878957848.jpg','http://localhost:8080/ssm2g510/upload/1608878978621.mp4','<p>烦得很萨芬京东数科按揭付款的说法凯迪拉克分类的时刻奥拉夫肯定是拉开发了多少卡弗兰克的酸辣粉看到啦开发的临时卡分离点时空裂缝宽度上拉开发了多少卡立方的抗衰老疯狂的老师开发两点上课联发科的顺利开发李大哥发的个</p>',2,0,'2020-12-25 14:59:11',12);

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608879061708 DEFAULT CHARSET=utf8 COMMENT='新闻资讯';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`picture`,`content`) values (1,'2020-12-25 14:01:44','标题1','http://localhost:8080/ssm2g510/upload/news_picture1.jpg','内容1'),(2,'2020-12-25 14:01:44','标题2','http://localhost:8080/ssm2g510/upload/news_picture2.jpg','内容2'),(3,'2020-12-25 14:01:44','标题3','http://localhost:8080/ssm2g510/upload/news_picture3.jpg','内容3'),(4,'2020-12-25 14:01:44','标题4','http://localhost:8080/ssm2g510/upload/news_picture4.jpg','内容4'),(5,'2020-12-25 14:01:44','标题5','http://localhost:8080/ssm2g510/upload/news_picture5.jpg','内容5'),(6,'2020-12-25 14:01:44','标题6','http://localhost:8080/ssm2g510/upload/news_picture6.jpg','内容6'),(1608879061707,'2020-12-25 14:51:00','最新资讯','http://localhost:8080/ssm2g510/upload/1608879053194.jpg','<p>范德萨发的范德萨范德萨放是的范德萨阿范德萨范德萨发的a富士达f<img src=\"http://localhost:8080/ssm2g510/upload/1608879060077.jpg\"></p>');

/*Table structure for table `storeup` */

DROP TABLE IF EXISTS `storeup`;

CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1608879546833 DEFAULT CHARSET=utf8 COMMENT='收藏表';

/*Data for the table `storeup` */

insert  into `storeup`(`id`,`addtime`,`userid`,`refid`,`tablename`,`name`,`picture`) values (1608879243287,'2020-12-25 14:54:02',1608879202930,1608878989531,'mingxingxinxi','杨幂','http://localhost:8080/ssm2g510/upload/1608878957848.jpg'),(1608879546832,'2020-12-25 14:59:05',1608879427574,1608878989531,'mingxingxinxi','杨幂','http://localhost:8080/ssm2g510/upload/1608878957848.jpg');

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'abo','users','管理员','jugiuo2izfkq03ct5n7owci8760o103g','2020-12-25 14:46:51','2020-12-25 15:46:51'),(2,1608879202930,'456','yonghu','用户','11tpzo11mxfu22wmvrhzs5mdwfyrgdzm','2020-12-25 14:53:32','2020-12-25 15:53:32'),(3,1608879427574,'123','yonghu','用户','y40hdbxywnb2gwfuk3ab4b3uulr1wi0d','2020-12-25 14:57:15','2020-12-25 15:57:16');

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

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2020-12-25 14:01:45');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yonghuzhanghao` varchar(200) NOT NULL COMMENT '用户账号',
  `yonghuxingming` varchar(200) NOT NULL COMMENT '用户姓名',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `lianxidianhua` varchar(200) DEFAULT NULL COMMENT '联系电话',
  `dianziyouxiang` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yonghuzhanghao` (`yonghuzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1608879427575 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`addtime`,`yonghuzhanghao`,`yonghuxingming`,`mima`,`xingbie`,`lianxidianhua`,`dianziyouxiang`) values (1,'2020-12-25 14:01:44','用户1','用户姓名1','123456','男','13823888881','773890001@qq.com'),(2,'2020-12-25 14:01:44','用户2','用户姓名2','123456','男','13823888882','773890002@qq.com'),(3,'2020-12-25 14:01:44','用户3','用户姓名3','123456','男','13823888883','773890003@qq.com'),(4,'2020-12-25 14:01:44','用户4','用户姓名4','123456','男','13823888884','773890004@qq.com'),(5,'2020-12-25 14:01:44','用户5','用户姓名5','123456','男','13823888885','773890005@qq.com'),(6,'2020-12-25 14:01:44','用户6','用户姓名6','123456','男','13823888886','773890006@qq.com'),(1608879202930,'2020-12-25 14:53:22','456','古井','456',NULL,'13513513525','565656@qq.com'),(1608879427574,'2020-12-25 14:57:07','123','李月','123',NULL,'13513513525','2656566@qq.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
