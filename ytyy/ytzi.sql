/*
SQLyog Ultimate v8.32 
MySQL - 5.7.17 : Database - ytzx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ytzx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ytzx`;

/*Table structure for table `RESERVATION_STU` */

DROP TABLE IF EXISTS `RESERVATION_STU`;

CREATE TABLE `RESERVATION_STU` (
  `RESSTU_ID` varchar(20) NOT NULL COMMENT '学生预约信息编号 联合主键',
  `US_ID` int(11) NOT NULL COMMENT '学生编号 联合主键',
  `VINFO_ID` varchar(20) NOT NULL COMMENT '场馆信息编号 联合主键',
  PRIMARY KEY (`RESSTU_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生预约信息表';

/*Data for the table `RESERVATION_STU` */

/*Table structure for table `RESERVATION_TIME` */

DROP TABLE IF EXISTS `RESERVATION_TIME`;

CREATE TABLE `RESERVATION_TIME` (
  `RESTIME_ID` varchar(20) NOT NULL COMMENT '学生预约时间编号',
  `RES_IN_TIME` date NOT NULL COMMENT '预约入馆时间',
  `RES_OUT_TIME` date NOT NULL COMMENT '预约出馆时间',
  PRIMARY KEY (`RESTIME_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='学生预约时间表';

/*Data for the table `RESERVATION_TIME` */

/*Table structure for table `USR_COLLEGE` */

DROP TABLE IF EXISTS `USR_COLLEGE`;

CREATE TABLE `USR_COLLEGE` (
  `US_COLLEGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `US_COLLEGE_NAME` varchar(60) NOT NULL,
  PRIMARY KEY (`US_COLLEGE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `USR_COLLEGE` */

insert  into `USR_COLLEGE`(`US_COLLEGE_ID`,`US_COLLEGE_NAME`) values (1,'软件学软'),(2,'商学院'),(3,'艺术学软'),(4,'电子工程学软');

/*Table structure for table `USR_USRSTUDENT` */

DROP TABLE IF EXISTS `USR_USRSTUDENT`;

CREATE TABLE `USR_USRSTUDENT` (
  `US_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '学生编号主键',
  `US_COLLEGE` varchar(20) NOT NULL COMMENT '院系',
  `US_NO` varchar(20) NOT NULL COMMENT '学生学号',
  `US_NAME` varchar(20) NOT NULL COMMENT '学生姓名',
  `STSTU_TYPE` varchar(5) NOT NULL COMMENT '学生状态 0未预约 1已预约未入馆 2入馆 3出馆',
  PRIMARY KEY (`US_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='学生信息表';

/*Data for the table `USR_USRSTUDENT` */


/*Table structure for table `USR_USURADMIN` */

DROP TABLE IF EXISTS `USR_USURADMIN`;

CREATE TABLE `USR_USURADMIN` (
  `UA_ID` varchar(20) NOT NULL COMMENT '管理员编号 主键',
  `UA_NAME` varchar(20) NOT NULL COMMENT '管理员姓名',
  `UA_PASSWORD` varchar(32) NOT NULL COMMENT '管理员密码',
  PRIMARY KEY (`UA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员信息表';

/*Data for the table `USR_USURADMIN` */

/*Table structure for table `VENUE_INFO` */

DROP TABLE IF EXISTS `VENUE_INFO`;

CREATE TABLE `VENUE_INFO` (
  `VINFO_ID` int(20) NOT NULL AUTO_INCREMENT COMMENT '场馆编号 主键',
  `VINFO_NAME` varchar(50) NOT NULL COMMENT '场馆名称',
  `VINFO_MAX_NUM` int(11) NOT NULL COMMENT '场馆最大容纳人数',
  `VTIME_ID` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`VINFO_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='场馆信息表';

/*Data for the table `VENUE_INFO` */

insert  into `VENUE_INFO`(`VINFO_ID`,`VINFO_NAME`,`VINFO_MAX_NUM`,`VTIME_ID`) values (1,'羽毛球馆',24,'[1,2,3]'),(2,'乒乓球馆',16,'[1,2,3]'),(3,'篮球训练馆',24,'[1,2,3]'),(4,'健身馆',15,'[1,2,3]');

/*Table structure for table `VENUE_TIME` */

DROP TABLE IF EXISTS `VENUE_TIME`;

CREATE TABLE `VENUE_TIME` (
  `VTIME_ID` int(20) NOT NULL AUTO_INCREMENT COMMENT '场馆开放时间编号 联合主键',
  `VTIME_OPEN_TIME` time NOT NULL COMMENT '场馆开馆时间',
  `VTIME_CLOSE_TIME` time NOT NULL COMMENT '场馆闭馆时间',
  PRIMARY KEY (`VTIME_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='场馆开放时间表';

/*Data for the table `VENUE_TIME` */

insert  into `VENUE_TIME`(`VTIME_ID`,`VTIME_OPEN_TIME`,`VTIME_CLOSE_TIME`) values (1,'12:00:00','12:50:00'),(2,'17:00:00','19:00:00'),(3,'19:00:00','21:00:00');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
