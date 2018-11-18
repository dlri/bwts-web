/*
Navicat MySQL Data Transfer

Source Server         : 10.77.238.30
Source Server Version : 50720
Source Host           : 10.77.238.30:3306
Source Database       : db_maven

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-18 12:11:43
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for detection_details
-- ----------------------------
DROP TABLE IF EXISTS `detection_details`;
CREATE TABLE `detection_details` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `channel_name` varchar(16) DEFAULT NULL COMMENT '测点名',
  `valid_value` float DEFAULT NULL COMMENT '有效值',
  `peak_value` float DEFAULT NULL COMMENT '峰值',
  `vibration_severity` float DEFAULT NULL COMMENT '振动烈度',
  `vibration_energy` float DEFAULT NULL COMMENT '振动能量',
  `peak_num` int(11) DEFAULT NULL COMMENT '峰值个数',
  `ripple_factor` float DEFAULT NULL COMMENT '纹波系数',
  `evaluation` varchar(8) DEFAULT NULL COMMENT '评价',
  `non_qualified` varchar(30) DEFAULT NULL COMMENT '不合格项',
  `f_drid` bigint(20) DEFAULT NULL COMMENT '检测记录外键',
  `bearing_no` varchar(16) DEFAULT NULL COMMENT '轴承型号',
  `seq_num` int(11) DEFAULT NULL COMMENT '序号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1105 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detection_details
-- ----------------------------

-- ----------------------------
-- Table structure for detection_record
-- ----------------------------
DROP TABLE IF EXISTS `detection_record`;
CREATE TABLE `detection_record` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键编号',
  `wheel_id` varchar(16) DEFAULT NULL COMMENT '轮对编号',
  `repair_rank` varchar(8) DEFAULT NULL COMMENT '修程级别',
  `a_bearing_num` varchar(10) DEFAULT NULL COMMENT 'A侧轴承编号',
  `b_bearing_num` varchar(10) DEFAULT NULL COMMENT 'B侧轴承编号',
  `detection_time` datetime DEFAULT NULL COMMENT '检测时间',
  `channel_num` int(12) unsigned zerofill DEFAULT NULL COMMENT '通道记录数',
  `tbed_num` varchar(16) DEFAULT NULL COMMENT '试验台编号',
  `save_path` varchar(255) DEFAULT NULL COMMENT '存放路径',
  `pdf_file` varchar(50) DEFAULT NULL COMMENT 'PDF文件',
  `bgm_file` varchar(50) DEFAULT NULL COMMENT 'BGM文件',
  `work_shop` varchar(10) DEFAULT NULL COMMENT '车间',
  `placement` varchar(10) DEFAULT NULL COMMENT '机位',
  `equipment` varchar(20) DEFAULT NULL COMMENT '设备',
  `checker` varchar(10) DEFAULT NULL COMMENT '检验员',
  `gearbox_num` varchar(10) DEFAULT NULL COMMENT '齿轮箱编号',
  `gearbox_nog` varchar(16) DEFAULT NULL COMMENT '轴承型号(G)',
  `gearbox_nop` varchar(16) DEFAULT NULL COMMENT '轴承型号(P)',
  `bearing_no` varchar(16) DEFAULT NULL COMMENT '轴箱轴承型号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=229 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detection_record
-- ----------------------------

-- ----------------------------
-- Table structure for schedule_job
-- ----------------------------
DROP TABLE IF EXISTS `schedule_job`;
CREATE TABLE `schedule_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务编号',
  `job_name` varchar(16) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(8) DEFAULT NULL COMMENT '任务分组',
  `server_path` varchar(255) DEFAULT NULL COMMENT '服务器虚拟路径',
  `job_status` varchar(4) DEFAULT NULL COMMENT '任务状态',
  `cron_expression` varchar(100) DEFAULT NULL COMMENT '任务时间表达式',
  `job_desc` varchar(255) DEFAULT NULL COMMENT '任务描述',
  `ftp_ip` varchar(16) DEFAULT '' COMMENT 'FTP连接地址',
  `ftp_port` varchar(8) DEFAULT '21' COMMENT '连接端口',
  `ftp_name` varchar(16) DEFAULT 'admin' COMMENT 'FTP连接用户名',
  `ftp_password` varchar(30) DEFAULT 'dlri12345' COMMENT 'FTP连接密码',
  PRIMARY KEY (`job_id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of schedule_job
-- ----------------------------
INSERT INTO `schedule_job` VALUES ('1', 'RUN001', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '1号跑合台FTP服务终端', '10.77.238.11', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('2', 'RUN002', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '2号跑合台FTP服务终端', '10.77.238.12', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('3', 'RUN003', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '3号跑合台FTP服务终端', '10.77.238.13', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('4', 'RUN004', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '4号跑合台FTP服务终端', '10.77.238.14', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('5', 'RUN005', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '5号跑合台FTP服务终端', '10.77.238.15', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('6', 'RUN006', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '6号跑合台FTP服务终端', '10.77.238.16', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('7', 'RUN007', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '7号跑合台FTP服务终端', '10.77.238.17', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('8', 'RUN008', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '8号跑合台FTP服务终端', '10.77.238.18', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('9', 'RUN009', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '9号跑合台FTP服务终端', '10.77.238.19', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('10', 'RUN010', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '10号跑合台FTP服务终端', '10.77.238.20', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('11', 'RUN011', 'run', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '11号跑合台FTP服务终端', '10.77.238.21', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('12', 'WASH012', 'wash', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '12号清洗机FTP服务终端', '10.77.238.22', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('13', 'WASH013', 'wash', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '13号清洗机FTP服务终端', '10.77.238.23', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('14', 'WASH014', 'wash', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '14号清洗机FTP服务终端', '10.77.238.24', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('15', 'WASH015', 'wash', 'D:/BWTS_FILE/', '1', '0/30 * * * * ?', '15号清洗机FTP服务终端', '10.77.238.25', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('906', 'RUN106', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留6号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('907', 'RUN107', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留7号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('908', 'RUN108', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留8号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('909', 'RUN109', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留9号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('910', 'RUN110', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留10号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('911', 'RUN111', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留11号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('912', 'RUN112', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留12号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('913', 'RUN113', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留13号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('914', 'RUN114', 'run', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留14号跑合台FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('925', 'WASH105', 'wash', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留5号清洗机FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('926', 'WASH106', 'wash', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留6号清洗机FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('927', 'WASH107', 'wash', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留7号清洗机FTP服务终端', '10.77.238.10', '21', 'admin', '123456');
INSERT INTO `schedule_job` VALUES ('928', 'WASH108', 'wash', 'D:/BWTS_FILE/', '0', '0/30 * * * * ?', '预留8号清洗机FTP服务终端', '10.77.238.10', '21', 'admin', '123456');

-- ----------------------------
-- Table structure for t_users
-- ----------------------------
DROP TABLE IF EXISTS `t_users`;
CREATE TABLE `t_users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(50) NOT NULL,
  `gender` varchar(2) NOT NULL DEFAULT '1',
  `userno` varchar(20) NOT NULL,
  `pwd` varchar(50) DEFAULT NULL,
  `birthday` varchar(20) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `fnamepy` varchar(50) DEFAULT NULL,
  `worktime` varchar(30) DEFAULT NULL,
  `nation` varchar(10) DEFAULT '汉族',
  `idcard` varchar(20) DEFAULT NULL,
  `hometown` smallint(6) DEFAULT NULL,
  `diploma` smallint(6) DEFAULT NULL,
  `wage` smallint(6) DEFAULT NULL,
  `photo` varchar(50) DEFAULT NULL,
  `partmentid` bigint(20) NOT NULL,
  `orgid` bigint(20) DEFAULT NULL,
  `stat` smallint(1) DEFAULT '1',
  `remark` varchar(255) DEFAULT NULL,
  `resume` longtext,
  `position` varchar(50) DEFAULT NULL,
  `ip` varchar(30) DEFAULT NULL,
  `logintime` datetime DEFAULT NULL,
  `telphone` varchar(30) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `qq` varchar(50) DEFAULT NULL,
  `msn` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userno` (`userno`),
  KEY `idx_employee_pwd` (`pwd`),
  KEY `idx_employee_userno` (`userno`),
  KEY `idx_emp_pyname` (`fnamepy`)
) ENGINE=InnoDB AUTO_INCREMENT=100004 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_users
-- ----------------------------
INSERT INTO `t_users` VALUES ('100000', '管理员', '1', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '2013-04-01', '13333333333', '青岛四方机车车辆股份有限公司', 'lsf', '2018-11-18', '1', '362422111112302332', '1', '9', '10000', '/upload/Usij7hQ.jpg', '8', '1', '1', 'fdsagfdsgfdg\r\nfda\r\nfdsa<input type=\'hidden\' name=\'token\' value=\'-3753824874469148842\' />', '<p>\r\n	范德萨飞洒<img src=\"/upload/image/1375874498387.jpg\" alt=\"\" /> \r\n</p>', '总经理', '172.30.104.207', '2018-07-13 16:19:27', null, null, null, null, null);
INSERT INTO `t_users` VALUES ('100001', '操作员01', '1', 'czy01', 'e10adc3949ba59abbe56e057f20f883e', '2013-08-13', '', '青岛四方机车车辆股份有限公司', 'fdsfa', '2018-11-18', '1', '362422111112302332', '1', '7', null, '', '9', null, '1', '', null, '经理', '0:0:0:0:0:0:0:1', '2018-07-13 16:02:09', '', '', '', '', '');
INSERT INTO `t_users` VALUES ('100002', '操作员02', '1', 'czy02', 'e10adc3949ba59abbe56e057f20f883e', '2013-08-13', '13911111111', '青岛四方机车车辆股份有限公司', 'fdsa', '2018-11-18', '1', '362422111112302332', '4', '7', null, '/upload/Us1BBGh.jpg', '10', null, '1', '', null, '财会', '127.0.0.1', '2016-09-23 09:01:45', '22222222', '1111111', '2318876@qq.com', '2311111111', '231111111');
INSERT INTO `t_users` VALUES ('100003', '操作员03', '1', 'czy03', 'e10adc3949ba59abbe56e057f20f883e', '2013-08-15', null, '青岛四方机车车辆股份有限公司', 'fdsafs', '2018-11-18', '1', '362422111112302332', '1', '7', null, null, '11', null, '1', null, null, '销售员', '127.0.0.1', '2016-09-23 09:05:55', null, null, null, null, null);

-- ----------------------------
-- Procedure structure for insertDetectionData
-- ----------------------------
DROP PROCEDURE IF EXISTS `insertDetectionData`;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `insertDetectionData`(IN wheelId varchar(16),IN repairRank varchar(8),IN aBearingNum varchar(10),IN bBearingNum varchar(10),IN detectionTime datetime,IN channelNum int,IN tBedNum varchar(16),IN savePath varchar(100),IN pdfFile varchar(50),IN bgmFile varchar(50),IN workShop varchar(10),IN placement varchar(10),IN equipment varchar(20),IN checker varchar(10),IN gearboxNum varchar(10),IN gearboxNog varchar(16),IN gearboxNop varchar(16),IN bearingNod varchar(16),IN detectionData varchar(1024),OUT res int)
BEGIN
	DECLARE fdrid BIGINT; 
	DECLARE totalLength INT;
	DECLARE i INT;
	DECLARE Start1 int;  
	DECLARE comma INT;
	DECLARE filed varchar(100) ;   
	DECLARE Length int ; 
	DECLARE casenum int ;
	DECLARE channelName VARCHAR(16) ;
	DECLARE validValue FLOAT ;
	DECLARE peakValue FLOAT ;
	DECLARE vibrationSeverity FLOAT ;
	#DECLARE vibrationEnergy FLOAT ;
	#DECLARE peakNum INT ;
	DECLARE rippleFactor FLOAT ;
	DECLARE evaluation VARCHAR(8)  ;
	DECLARE nonQualified VARCHAR(30)  ;
	DECLARE f_drid BIGINT ;
  DECLARE bearingNo VARCHAR(16) ;
  DECLARE seqNum INT ;

  #SELECT concat('开始主表入库： ','detection_record');
	#插入detection_record表
	INSERT INTO detection_record(wheel_id,repair_rank,a_bearing_num,b_bearing_num,detection_time,channel_num,tbed_num,save_path,pdf_file,bgm_file,work_shop,placement,equipment,checker,gearbox_num,gearbox_nog,gearbox_nop,bearing_no)
	VALUES
	(wheelId,repairRank,aBearingNum,bBearingNum,detectionTime,channelNum,tBedNum,savePath,pdfFile,bgmFile,workShop,placement,equipment,checker,gearboxNum,gearboxNog,gearboxNop,bearingNod);
  #SELECT concat('完成主表入库： ','detection_record');	
  #
	SET fdrid=LAST_INSERT_ID();
	SET totalLength=LENGTH(detectionData); 
	#SELECT totalLength;
	SET i=1;
	SET Start1=1; 
	SET comma=0;
	SET Length=0;
	WHILE i<=totalLength DO
		IF(SUBSTRING(detectionData,i,1)=',')THEN
				SET comma=comma+1;
				SET filed=SUBSTRING(detectionData,Start1,Length);  --                                                          
				SET casenum=comma%9;
				SELECT filed;
				CASE casenum
					WHEN 0 THEN
					SET nonQualified=filed;
					#SELECT concat('开始子入库： ','detection_details');
					INSERT INTO detection_details
					(channel_name,valid_value,peak_value,vibration_severity,vibration_energy,peak_num,ripple_factor,evaluation,non_qualified,f_drid,bearing_no,seq_num) 
					VALUES(channelName,validValue,peakValue,vibrationSeverity,99.00,99,rippleFactor,evaluation,nonQualified,fDrid,bearingNo,seqNum) ;
					#SELECT concat('完成子表入库： ','detection_details');
					WHEN 1 THEN 
						SET seqNum=filed;
					WHEN 2 THEN
						SET channelName=filed;
					WHEN 3 THEN
						SET bearingNo=filed;
					WHEN 4 THEN
						SET validValue=filed;
					WHEN 5 THEN
						SET peakValue=filed;
					WHEN 6 THEN
						SET vibrationSeverity=filed;
					WHEN 7 THEN
						SET rippleFactor=filed;
					WHEN 8 THEN
						SET evaluation=filed;
					WHEN 9 THEN 
						SET nonQualified=filed;                   
				END CASE;        
					 SET Start1=i+1;                         
					 SET Length=0;                 
		ELSE                     
					SET Length=Length+1; -- 如果不是， 则截取的长度加1                                     
		END IF;             
		SET i=i+1;         
	END WHILE; 
	SET res=1;
	COMMIT;
#测试语句
#'H63-2304','三级','5-15-3','5-15-1',NOW(),2,'RUN001','/2018/04/','cc.pdf','cc.bgm','B04','R01','齿轮箱清洗机','张三','J43056','AR4178587','AR2458667','AR130-419','4,IN0:A8,AR130-419,35.28,50.55,0.41,4.00,合格,无1,3,IN0:A9,AR130-419,36.28,50.55,0.41,4.00,合格2,无3,',@res
END
;;
DELIMITER ;
