/*
Navicat MySQL Data Transfer

Source Server         : 10.77.238.30
Source Server Version : 50720
Source Host           : 10.77.238.30:3306
Source Database       : db_maven

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-11-19 18:27:39
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
) ENGINE=InnoDB AUTO_INCREMENT=1809 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detection_details
-- ----------------------------
INSERT INTO `detection_details` VALUES ('1105', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '229', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1106', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '229', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1107', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '229', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1108', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '229', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1109', 'PM', '-7.36', '3.78', '0', '99', '99', '0', '合格', '无', '230', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1110', 'PW', '-8.12', '3.26', '0.01', '99', '99', '0', '合格', '无', '230', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1111', 'GM', '-9.98', '2.97', '0', '99', '99', '0', '合格', '无', '230', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1112', 'GW', '-6', '5.52', '0.01', '99', '99', '0', '合格', '无', '230', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1113', 'PM', '-6.01', '6.18', '0', '99', '99', '0', '合格', '无', '231', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1114', 'PW', '-8.55', '3.48', '0', '99', '99', '0', '合格', '无', '231', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1115', 'GM', '-10.71', '0.89', '0', '99', '99', '1', '合格', '无', '231', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1116', 'GW', '-7.44', '3.59', '0', '99', '99', '0', '合格', '无', '231', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1117', 'PM', '-6.07', '5.95', '0', '99', '99', '0', '合格', '无', '232', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1118', 'PW', '-8.79', '2.01', '0', '99', '99', '0', '合格', '无', '232', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1119', 'GM', '-10.7', '1.63', '0', '99', '99', '0', '合格', '无', '232', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1120', 'GW', '-7.53', '4.21', '0', '99', '99', '0', '合格', '无', '232', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1121', 'PM', '-6.08', '6.73', '0', '99', '99', '0', '合格', '无', '233', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1122', 'PW', '-8.66', '2.56', '0', '99', '99', '0', '合格', '无', '233', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1123', 'GM', '-10.65', '1.04', '0', '99', '99', '0', '合格', '无', '233', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1124', 'GW', '-7.46', '4.65', '0', '99', '99', '1', '合格', '无', '233', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1125', 'PM', '-3.46', '18.53', '0', '99', '99', '3', '合格', '无', '234', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1126', 'PW', '-9.12', '20.28', '0', '99', '99', '4', '合格', '无', '234', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1127', 'GM', '-8.1', '22.93', '0', '99', '99', '5', '合格', '无', '234', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1128', 'GW', '-5.59', '17.65', '0', '99', '99', '6', '合格', '无', '234', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1129', 'PM', '-3.63', '7.76', '0', '99', '99', '0', '合格', '无', '235', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1130', 'PW', '-9.84', '2.34', '0', '99', '99', '0', '合格', '无', '235', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1131', 'GM', '-9.85', '1.54', '0', '99', '99', '0', '合格', '无', '235', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1132', 'GW', '-6.72', '4.95', '0', '99', '99', '0', '合格', '无', '235', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1133', 'PM', '-3.31', '16.73', '0', '99', '99', '2', '合格', '无', '236', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1134', 'PW', '-9.64', '10.45', '0', '99', '99', '2', '合格', '无', '236', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1135', 'GM', '-9.45', '14.49', '0', '99', '99', '2', '合格', '无', '236', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1136', 'GW', '-4.65', '19.44', '0', '99', '99', '2', '合格', '无', '236', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1137', 'PM', '-3.63', '8.84', '0', '99', '99', '0', '合格', '无', '237', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1138', 'PW', '-9.84', '1.77', '0', '99', '99', '0', '合格', '无', '237', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1139', 'GM', '-9.76', '1.63', '0', '99', '99', '0', '合格', '无', '237', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1140', 'GW', '-6.72', '5.27', '0', '99', '99', '0', '合格', '无', '237', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1141', 'PM', '-10.32', '2.05', '0', '99', '99', '0', '合格', '无', '238', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1142', 'PW', '-2.87', '8.2', '0', '99', '99', '0', '合格', '无', '238', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1143', 'GM', '-9.24', '3.85', '0', '99', '99', '0', '合格', '无', '238', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1144', 'GW', '-9.43', '3.49', '0', '99', '99', '0', '合格', '无', '238', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1145', 'PM', '-10.39', '1.08', '0', '99', '99', '0', '合格', '无', '239', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1146', 'PW', '-2.84', '9.08', '0', '99', '99', '0', '合格', '无', '239', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1147', 'GM', '-9.3', '2.28', '0', '99', '99', '0', '合格', '无', '239', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1148', 'GW', '-9.43', '3.23', '0', '99', '99', '0', '合格', '无', '239', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1149', 'PM', '-6.21', '7.48', '0', '99', '99', '0', '合格', '无', '240', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1150', 'PW', '-8.66', '4.08', '0', '99', '99', '0', '合格', '无', '240', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1151', 'GM', '-10.62', '1.81', '0', '99', '99', '0', '合格', '无', '240', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1152', 'GW', '-7.73', '4.76', '0', '99', '99', '0', '合格', '无', '240', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1153', 'PM', '-7.71', '4.21', '0', '99', '99', '0', '合格', '无', '241', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1154', 'PW', '-9.65', '1.61', '0', '99', '99', '0', '合格', '无', '241', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1155', 'GM', '-7.87', '4.49', '0', '99', '99', '0', '合格', '无', '241', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1156', 'GW', '-8.92', '3.86', '0', '99', '99', '0', '合格', '无', '241', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1157', 'PM', '-7.79', '4.74', '0', '99', '99', '0', '合格', '无', '242', 'R205-1g3s3QWAP6A', '1');
INSERT INTO `detection_details` VALUES ('1158', 'PW', '-10.09', '1.16', '0', '99', '99', '0', '合格', '无', '242', 'R205-1g3s3QWAP6A', '2');
INSERT INTO `detection_details` VALUES ('1159', 'GM', '-8.82', '2.92', '0', '99', '99', '0', '合格', '无', '242', '四方小轴R70', '3');
INSERT INTO `detection_details` VALUES ('1160', 'GW', '-9.29', '4.01', '0', '99', '99', '0', '合格', '无', '242', '四方小轴R70', '4');
INSERT INTO `detection_details` VALUES ('1161', 'PM', '-2.23', '9.29', '0.01', '99', '99', '0', '合格', '无', '245', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1162', 'PM', '-1.39', '9.57', '0.01', '99', '99', '0', '合格', '无', '243', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1163', 'PM', '0.11', '11.37', '0.01', '99', '99', '0', '合格', '无', '244', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1164', 'PM', '0.09', '6.88', '0.01', '99', '99', '0', '合格', '无', '246', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1165', 'PW', '-5.06', '5.34', '0', '99', '99', '0', '合格', '无', '245', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1166', 'PW', '2.64', '9.96', '0.01', '99', '99', '0', '合格', '无', '243', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1167', 'PW', '-0.98', '8.19', '0.01', '99', '99', '0', '合格', '无', '244', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1168', 'PW', '2.25', '12.64', '0.01', '99', '99', '0', '合格', '无', '246', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1169', 'GM', '-7.01', '3.92', '0.01', '99', '99', '0', '合格', '无', '245', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1170', 'GM', '12.32', '18.26', '0.03', '99', '99', '0', '合格', '无', '243', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1171', 'GM', '-7.26', '5.31', '0', '99', '99', '0', '合格', '无', '244', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1172', 'GM', '-6.7', '5.13', '0', '99', '99', '0', '合格', '无', '246', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1173', 'GW', '-8.28', '2.98', '0', '99', '99', '0', '合格', '无', '245', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1174', 'GW', '-0.92', '8.92', '0.01', '99', '99', '0', '合格', '无', '243', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1175', 'GW', '-3.32', '7.6', '0.01', '99', '99', '0', '合格', '无', '244', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1176', 'GW', '1.76', '9.84', '0.01', '99', '99', '0', '合格', '无', '246', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1177', 'PM', '0.07', '7.41', '0.01', '99', '99', '0', '合格', '无', '247', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1178', 'PM', '-0.08', '11.34', '0.01', '99', '99', '0', '合格', '无', '248', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1179', 'PW', '2.18', '12.09', '0.01', '99', '99', '0', '合格', '无', '247', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1180', 'PW', '-1.23', '7.5', '0.01', '99', '99', '0', '合格', '无', '248', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1181', 'GM', '-6.86', '4.89', '0', '99', '99', '0', '合格', '无', '247', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1182', 'GM', '-7.14', '4.14', '0', '99', '99', '0', '合格', '无', '248', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1183', 'GW', '-3.28', '7.21', '0.01', '99', '99', '0', '合格', '无', '248', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1184', 'GW', '1.72', '9.98', '0.01', '99', '99', '0', '合格', '无', '247', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1185', 'PM', '-1.91', '9.54', '0.01', '99', '99', '0', '合格', '无', '249', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1186', 'PW', '1.39', '9.03', '0.01', '99', '99', '0', '合格', '无', '249', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1187', 'GM', '12.03', '16.85', '0.03', '99', '99', '0', '合格', '无', '249', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1188', 'GW', '-1.83', '8.31', '0.01', '99', '99', '0', '合格', '无', '249', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1189', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '250', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1190', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '250', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1191', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '250', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1192', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '250', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1193', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '251', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1194', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '251', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1195', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '251', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1196', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '251', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1197', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '252', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1198', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '252', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1199', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '252', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1200', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '252', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1201', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '253', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1202', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '253', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1203', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '253', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1204', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '253', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1205', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '254', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1206', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '254', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1207', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '254', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1208', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '254', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1209', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '255', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1210', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '255', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1211', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '255', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1212', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '255', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1213', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '256', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1214', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '256', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1215', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '256', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1216', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '256', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1217', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '257', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1218', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '257', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1219', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '257', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1220', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '257', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1221', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '258', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1222', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '258', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1223', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '258', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1224', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '258', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1225', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '259', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1226', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '259', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1227', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '259', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1228', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '259', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1229', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '260', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1230', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '260', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1231', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '260', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1232', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '260', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1233', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '261', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1234', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '261', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1235', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '261', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1236', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '261', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1237', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '262', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1238', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '262', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1239', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '262', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1240', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '262', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1241', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '263', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1242', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '263', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1243', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '263', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1244', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '263', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1245', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '264', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1246', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '264', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1247', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '264', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1248', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '264', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1249', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '265', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1250', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '265', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1251', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '265', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1252', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '265', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1253', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '266', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1254', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '266', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1255', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '266', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1256', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '266', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1257', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '267', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1258', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '267', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1259', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '267', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1260', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '267', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1261', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '268', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1262', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '268', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1263', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '268', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1264', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '268', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1265', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '269', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1266', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '269', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1267', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '269', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1268', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '269', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1269', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '270', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1270', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '270', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1271', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '270', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1272', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '270', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1273', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '271', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1274', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '271', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1275', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '271', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1276', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '271', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1277', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '272', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1278', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '272', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1279', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '272', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1280', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '272', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1281', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '273', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1282', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '273', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1283', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '273', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1284', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '273', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1285', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '274', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1286', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '274', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1287', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '274', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1288', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '274', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1289', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '275', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1290', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '275', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1291', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '275', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1292', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '275', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1293', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '276', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1294', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '276', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1295', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '276', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1296', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '276', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1297', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '277', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1298', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '277', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1299', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '277', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1300', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '277', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1301', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '278', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1302', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '278', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1303', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '278', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1304', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '278', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1305', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '279', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1306', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '279', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1307', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '279', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1308', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '279', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1309', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '280', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1310', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '280', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1311', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '280', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1312', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '280', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1313', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '281', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1314', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '281', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1315', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '281', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1316', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '281', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1317', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '282', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1318', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '282', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1319', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '282', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1320', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '282', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1321', 'PM', '-5.1', '5.76', '0', '99', '99', '0', '合格', '无', '283', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1322', 'PW', '-4.4', '6.84', '0.01', '99', '99', '0', '合格', '无', '283', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1323', 'GM', '-3.65', '6.03', '0', '99', '99', '0', '合格', '无', '283', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1324', 'GW', '-1.92', '8.49', '0.01', '99', '99', '0', '合格', '无', '283', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1325', 'PM', '-5.32', '6.07', '0', '99', '99', '0', '合格', '无', '284', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1326', 'PW', '-4.72', '6.59', '0.01', '99', '99', '0', '合格', '无', '284', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1327', 'GM', '-5.97', '5.18', '0', '99', '99', '0', '合格', '无', '284', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1328', 'GW', '-2.76', '7.98', '0.01', '99', '99', '0', '合格', '无', '284', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1329', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '285', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1330', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '285', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1331', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '285', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1332', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '285', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1333', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '286', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1334', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '286', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1335', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '286', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1336', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '286', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1337', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '287', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1338', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '287', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1339', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '287', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1340', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '287', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1341', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '288', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1342', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '288', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1343', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '288', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1344', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '288', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1345', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '289', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1346', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '289', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1347', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '289', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1348', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '289', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1349', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '290', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1350', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '290', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1351', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '290', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1352', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '290', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1353', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '291', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1354', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '291', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1355', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '291', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1356', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '291', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1357', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '292', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1358', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '292', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1359', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '292', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1360', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '292', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1361', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '293', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1362', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '293', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1363', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '293', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1364', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '293', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1365', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '294', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1366', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '294', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1367', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '294', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1368', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '294', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1369', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '295', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1370', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '295', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1371', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '295', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1372', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '295', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1373', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '296', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1374', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '296', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1375', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '296', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1376', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '296', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1377', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '297', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1378', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '297', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1379', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '297', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1380', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '297', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1381', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '298', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1382', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '298', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1383', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '298', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1384', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '298', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1385', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '299', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1386', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '299', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1387', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '299', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1388', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '299', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1389', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '300', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1390', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '300', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1391', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '300', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1392', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '300', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1393', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '301', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1394', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '301', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1395', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '301', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1396', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '301', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1397', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '302', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1398', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '302', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1399', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '302', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1400', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '302', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1401', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '303', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1402', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '303', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1403', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '303', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1404', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '303', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1405', 'PM', '-7.33', '5', '0', '99', '99', '0', '合格', '无', '304', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1406', 'PW', '-8.2', '3.47', '0.01', '99', '99', '0', '合格', '无', '304', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1407', 'GM', '-10.03', '1.92', '0', '99', '99', '0', '合格', '无', '304', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1408', 'GW', '-6.21', '5.46', '0.01', '99', '99', '0', '合格', '无', '304', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1409', 'PM', '47.97', '58.36', '3.07', '99', '99', '0', '不合格', '有效值', '305', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1410', 'PW', '49.14', '60.11', '3.23', '99', '99', '0', '不合格', '有效值', '305', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1411', 'GM', '46.71', '56.77', '2.87', '99', '99', '0', '不合格', '有效值', '305', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1412', 'GW', '47.94', '58.58', '2.88', '99', '99', '0', '不合格', '有效值', '305', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1413', 'PM', '47.64', '58.62', '2.99', '99', '99', '0', '不合格', '有效值', '306', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1414', 'PW', '48.82', '58.91', '3.13', '99', '99', '0', '不合格', '有效值', '306', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1415', 'GM', '46.43', '56.06', '2.85', '99', '99', '0', '不合格', '有效值', '306', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1416', 'GW', '47.7', '58.58', '2.83', '99', '99', '0', '不合格', '有效值', '306', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1417', 'PM', '47.54', '58.33', '2.99', '99', '99', '0', '不合格', '有效值', '307', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1418', 'PW', '48.74', '60.26', '3.09', '99', '99', '0', '不合格', '有效值', '307', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1419', 'GM', '46.38', '58.25', '2.89', '99', '99', '0', '不合格', '有效值', '307', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1420', 'GW', '47.6', '59.06', '2.88', '99', '99', '0', '不合格', '有效值', '307', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1421', 'PM', '47.2', '57.4', '2.91', '99', '99', '0', '不合格', '有效值', '308', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1422', 'PW', '48.48', '58.46', '3.01', '99', '99', '0', '不合格', '有效值', '308', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1423', 'GM', '46', '57.01', '2.8', '99', '99', '0', '不合格', '有效值', '308', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1424', 'GW', '47.22', '57.37', '2.77', '99', '99', '0', '不合格', '有效值', '308', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1425', 'PM', '48.07', '59.43', '3', '99', '99', '0', '不合格', '有效值', '309', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1426', 'PW', '49.25', '60.41', '3.12', '99', '99', '0', '不合格', '有效值', '309', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1427', 'GM', '46.79', '57.61', '2.85', '99', '99', '0', '不合格', '有效值', '309', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1428', 'GW', '48.04', '58.66', '2.87', '99', '99', '0', '不合格', '有效值', '309', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1429', 'PM', '47.94', '58.79', '2.99', '99', '99', '0', '不合格', '有效值', '310', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1430', 'PW', '49.12', '60.61', '3.17', '99', '99', '0', '不合格', '有效值', '310', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1431', 'GM', '46.79', '57.52', '2.84', '99', '99', '0', '不合格', '有效值', '310', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1432', 'GW', '47.93', '59.86', '2.83', '99', '99', '0', '不合格', '有效值', '310', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1433', 'PM', '47.91', '59.67', '2.95', '99', '99', '0', '不合格', '有效值', '311', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1434', 'PW', '49.17', '59.5', '3.04', '99', '99', '0', '不合格', '有效值', '311', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1435', 'GM', '46.66', '58.3', '2.85', '99', '99', '0', '不合格', '有效值', '311', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1436', 'GW', '47.9', '58.83', '2.85', '99', '99', '0', '不合格', '有效值', '311', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1437', 'PM', '35.24', '46.63', '0.23', '99', '99', '0', '合格', '无', '312', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1438', 'PW', '40.17', '50.78', '0.29', '99', '99', '0', '合格', '无', '312', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1439', 'GM', '33.07', '49.76', '0.49', '99', '99', '1', '合格', '无', '312', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1440', 'GW', '35.92', '48.16', '0.26', '99', '99', '0', '合格', '无', '312', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1441', 'PM', '35.54', '46.34', '0.24', '99', '99', '0', '合格', '无', '313', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1442', 'PW', '40.07', '50.49', '0.29', '99', '99', '0', '合格', '无', '313', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1443', 'GM', '33.86', '50.02', '0.53', '99', '99', '0', '合格', '无', '313', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1444', 'GW', '36.29', '46.75', '0.27', '99', '99', '0', '合格', '无', '313', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1445', 'PM', '43.39', '53.97', '0.71', '99', '99', '0', '合格', '无', '314', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1446', 'PW', '50.08', '60.64', '1.02', '99', '99', '0', '合格', '无', '314', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1447', 'GM', '45.3', '56.14', '0.84', '99', '99', '0', '合格', '无', '314', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1448', 'GW', '39.3', '53.36', '0.8', '99', '99', '0', '合格', '无', '314', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1449', 'PM', '44.28', '53.66', '0.68', '99', '99', '0', '合格', '无', '315', 'R205-1g3s3QWAP6A', '1');
INSERT INTO `detection_details` VALUES ('1450', 'PW', '39.76', '49.98', '0.64', '99', '99', '0', '合格', '无', '315', 'R205-1g3s3QWAP6A', '2');
INSERT INTO `detection_details` VALUES ('1451', 'GM', '44.3', '56.7', '0.65', '99', '99', '0', '合格', '无', '315', '四方小轴R70', '3');
INSERT INTO `detection_details` VALUES ('1452', 'GW', '44.74', '54.83', '0.75', '99', '99', '0', '合格', '无', '315', '四方小轴R70', '4');
INSERT INTO `detection_details` VALUES ('1453', 'PM', '43.53', '53.68', '0.62', '99', '99', '1', '合格', '无', '316', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1454', 'PM', '44.29', '55.33', '0.62', '99', '99', '0', '合格', '无', '317', 'R205-1g3s3QWAP6A', '1');
INSERT INTO `detection_details` VALUES ('1455', 'PW', '50.36', '58.9', '0.95', '99', '99', '0', '合格', '无', '316', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1456', 'GM', '45.55', '55.73', '0.76', '99', '99', '0', '合格', '无', '316', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1457', 'PW', '39.82', '51.07', '0.55', '99', '99', '1', '合格', '无', '317', 'R205-1g3s3QWAP6A', '2');
INSERT INTO `detection_details` VALUES ('1458', 'PM', '41.39', '51.99', '1.05', '99', '99', '0', '合格', '无', '318', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1459', 'GW', '39.31', '52.85', '0.66', '99', '99', '0', '合格', '无', '316', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1460', 'GM', '44.33', '56.25', '0.51', '99', '99', '0', '合格', '无', '317', '四方小轴R70', '3');
INSERT INTO `detection_details` VALUES ('1461', 'PW', '40.93', '53.35', '0.89', '99', '99', '0', '合格', '无', '318', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1462', 'GW', '44.72', '55.1', '0.63', '99', '99', '0', '合格', '无', '317', '四方小轴R70', '4');
INSERT INTO `detection_details` VALUES ('1463', 'GM', '42.37', '53.11', '1.09', '99', '99', '2', '合格', '无', '318', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1464', 'GW', '40.29', '52.71', '1', '99', '99', '0', '合格', '无', '318', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1465', 'PM', '39.6', '50.26', '0.37', '99', '99', '0', '合格', '无', '319', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1466', 'PW', '34.25', '46.67', '0.27', '99', '99', '0', '合格', '无', '319', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1467', 'GM', '35.97', '47.08', '0.29', '99', '99', '0', '合格', '无', '319', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1468', 'GW', '36.68', '47.75', '0.31', '99', '99', '0', '合格', '无', '319', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1469', 'PM', '35.22', '46.23', '0.23', '99', '99', '0', '合格', '无', '320', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1470', 'PW', '40.93', '51.27', '0.29', '99', '99', '0', '合格', '无', '320', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1471', 'GM', '37.09', '53.78', '0.93', '99', '99', '4', '合格', '无', '320', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1472', 'GW', '36.52', '47.14', '0.24', '99', '99', '0', '合格', '无', '320', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1473', 'PM', '37.51', '48.8', '0.27', '99', '99', '0', '合格', '无', '321', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1474', 'PW', '42.38', '53.12', '0.32', '99', '99', '0', '合格', '无', '321', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1475', 'GM', '37.18', '51.45', '0.36', '99', '99', '2', '合格', '无', '321', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1476', 'GW', '39.27', '50.45', '0.31', '99', '99', '0', '合格', '无', '321', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1477', 'PM', '36.81', '48.6', '0.19', '99', '99', '0', '合格', '无', '322', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1478', 'PW', '38.26', '50.54', '0.18', '99', '99', '0', '合格', '无', '322', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1479', 'GM', '24.94', '37.2', '0.07', '99', '99', '8', '合格', '无', '322', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1480', 'GW', '36.24', '47.81', '0.18', '99', '99', '0', '合格', '无', '322', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1481', 'PM', '20.73', '33.47', '0.03', '99', '99', '12', '合格', '无', '323', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1482', 'PW', '18.29', '31.25', '0.02', '99', '99', '13', '合格', '无', '323', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1483', 'GM', '22.03', '34.76', '0.03', '99', '99', '10', '合格', '无', '323', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1484', 'GW', '20.26', '31.02', '0.02', '99', '99', '12', '合格', '无', '323', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1485', 'PM', '5.92', '22.88', '0.01', '99', '99', '14', '合格', '无', '324', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1486', 'PW', '12.88', '23.14', '0.01', '99', '99', '2', '合格', '无', '324', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1487', 'GM', '1.64', '17.51', '0', '99', '99', '14', '合格', '无', '324', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1488', 'GW', '3.26', '16.92', '0.01', '99', '99', '13', '合格', '无', '324', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1489', 'PM', '50.42', '68.17', '1.01', '99', '99', '12', '合格', '无', '325', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1490', 'PW', '50.73', '68.62', '0.81', '99', '99', '12', '合格', '无', '325', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1491', 'GM', '48', '65.36', '0.69', '99', '99', '12', '合格', '无', '325', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1492', 'GW', '48.17', '66.34', '0.5', '99', '99', '12', '合格', '无', '325', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1493', 'PM', '6.03', '21.1', '0.01', '99', '99', '14', '合格', '无', '326', 'R205-1g3s3QWAP6A', '1');
INSERT INTO `detection_details` VALUES ('1494', 'PW', '16.85', '28.44', '0.03', '99', '99', '4', '合格', '无', '326', 'R205-1g3s3QWAP6A', '2');
INSERT INTO `detection_details` VALUES ('1495', 'GM', '17.13', '28.48', '0.03', '99', '99', '2', '合格', '无', '326', '四方小轴R70', '3');
INSERT INTO `detection_details` VALUES ('1496', 'GW', '5.96', '20.75', '0.01', '99', '99', '9', '合格', '无', '326', '四方小轴R70', '4');
INSERT INTO `detection_details` VALUES ('1497', 'PM', '46.15', '64.29', '0.59', '99', '99', '14', '合格', '无', '327', 'R205-1g3s3QWAP6A', '1');
INSERT INTO `detection_details` VALUES ('1498', 'PW', '45.78', '62.02', '0.49', '99', '99', '14', '合格', '无', '327', 'R205-1g3s3QWAP6A', '2');
INSERT INTO `detection_details` VALUES ('1499', 'GM', '51.39', '65.05', '0.69', '99', '99', '0', '合格', '无', '327', '四方小轴R70', '3');
INSERT INTO `detection_details` VALUES ('1500', 'GW', '47.2', '66.13', '0.5', '99', '99', '14', '不合格', '外环', '327', '四方小轴R70', '4');
INSERT INTO `detection_details` VALUES ('1501', 'PM', '47.42', '67.52', '0.52', '99', '99', '12', '合格', '无', '328', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1502', 'PW', '50.54', '68.36', '0.58', '99', '99', '6', '合格', '无', '328', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1503', 'GM', '44.28', '62.18', '0.47', '99', '99', '12', '合格', '无', '328', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1504', 'PM', '45.67', '64.21', '0.45', '99', '99', '14', '合格', '无', '329', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1505', 'GW', '46.59', '65.27', '0.56', '99', '99', '12', '合格', '无', '328', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1506', 'PW', '47.48', '65.5', '0.64', '99', '99', '14', '合格', '无', '329', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1507', 'GM', '45.7', '69.58', '3.99', '99', '99', '4', '不合格', '内环', '329', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1508', 'GW', '46.2', '64.33', '0.5', '99', '99', '14', '不合格', '纹波系数', '329', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1509', 'PM', '41.62', '56.13', '0.36', '99', '99', '0', '合格', '无', '330', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1510', 'PW', '48.14', '59.88', '0.53', '99', '99', '0', '合格', '无', '330', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1511', 'GM', '26.65', '39.66', '0.07', '99', '99', '3', '合格', '无', '330', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1512', 'GW', '43.65', '54.07', '0.27', '99', '99', '0', '合格', '无', '330', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1513', 'A1', '21.82', '32.62', '0.14', '99', '99', '0', '合格', '无', '331', 'CRI-2677', '1');
INSERT INTO `detection_details` VALUES ('1514', 'B1', '22.27', '32.82', '0.13', '99', '99', '0', '合格', '无', '331', 'CRI-2677', '2');
INSERT INTO `detection_details` VALUES ('1515', 'B2', '17.21', '28.03', '0.07', '99', '99', '0', '合格', '无', '331', 'CRI-2677', '3');
INSERT INTO `detection_details` VALUES ('1516', 'A2', '16.53', '27', '0.06', '99', '99', '0', '合格', '无', '331', 'CRI-2677', '4');
INSERT INTO `detection_details` VALUES ('1517', 'PM', '25.45', '37.03', '0.2', '99', '99', '0', '合格', '无', '331', 'R205', '5');
INSERT INTO `detection_details` VALUES ('1518', 'PW', '29.12', '39.19', '0.25', '99', '99', '0', '合格', '无', '331', 'R205', '6');
INSERT INTO `detection_details` VALUES ('1519', 'GM', '23.47', '33.87', '0.26', '99', '99', '0', '合格', '无', '331', 'R70', '7');
INSERT INTO `detection_details` VALUES ('1520', 'GW', '19.46', '29.87', '0.2', '99', '99', '0', '合格', '无', '331', 'R70', '8');
INSERT INTO `detection_details` VALUES ('1521', 'A1', '41.43', '57.83', '0.44', '99', '99', '7', '合格', '无', '332', 'CRI-2692', '1');
INSERT INTO `detection_details` VALUES ('1522', 'B1', '2.13', '11.66', '0', '99', '99', '0', '合格', '无', '332', 'CRI-2692', '2');
INSERT INTO `detection_details` VALUES ('1523', 'B2', '38.14', '59.51', '0.38', '99', '99', '11', '合格', '无', '332', 'CRI-2692', '3');
INSERT INTO `detection_details` VALUES ('1524', 'A2', '39.91', '61.72', '0.4', '99', '99', '14', '合格', '无', '332', 'CRI-2692', '4');
INSERT INTO `detection_details` VALUES ('1525', 'PM', '41.63', '56.97', '0.28', '99', '99', '0', '合格', '无', '332', 'R205', '5');
INSERT INTO `detection_details` VALUES ('1526', 'PW', '42.79', '58', '0.32', '99', '99', '4', '合格', '无', '332', 'R205', '6');
INSERT INTO `detection_details` VALUES ('1527', 'GM', '39.41', '54.36', '0.3', '99', '99', '0', '合格', '无', '332', 'R70', '7');
INSERT INTO `detection_details` VALUES ('1528', 'GW', '45.08', '59.91', '0.37', '99', '99', '0', '合格', '无', '332', 'R70', '8');
INSERT INTO `detection_details` VALUES ('1529', 'A1', '41.68', '58.11', '0.43', '99', '99', '3', '合格', '无', '333', 'CRI-2692', '1');
INSERT INTO `detection_details` VALUES ('1530', 'B1', '2.1', '11.8', '0', '99', '99', '0', '合格', '无', '333', 'CRI-2692', '2');
INSERT INTO `detection_details` VALUES ('1531', 'B2', '38.27', '60.76', '0.37', '99', '99', '12', '合格', '无', '333', 'CRI-2692', '3');
INSERT INTO `detection_details` VALUES ('1532', 'A2', '40.64', '66.86', '0.38', '99', '99', '13', '合格', '无', '333', 'CRI-2692', '4');
INSERT INTO `detection_details` VALUES ('1533', 'PM', '41.78', '55.28', '0.29', '99', '99', '1', '合格', '无', '333', 'R205', '5');
INSERT INTO `detection_details` VALUES ('1534', 'PW', '42.82', '58', '0.35', '99', '99', '4', '合格', '无', '333', 'R205', '6');
INSERT INTO `detection_details` VALUES ('1535', 'GM', '39.81', '55.22', '0.31', '99', '99', '1', '合格', '无', '333', 'R70', '7');
INSERT INTO `detection_details` VALUES ('1536', 'GW', '45.26', '58.3', '0.39', '99', '99', '0', '合格', '无', '333', 'R70', '8');
INSERT INTO `detection_details` VALUES ('1537', 'A1', '44.95', '60.95', '0.42', '99', '99', '6', '不合格', '滚动体', '334', 'CRI-2692', '1');
INSERT INTO `detection_details` VALUES ('1538', 'B1', '2.4', '12.54', '0', '99', '99', '0', '合格', '无', '334', 'CRI-2692', '2');
INSERT INTO `detection_details` VALUES ('1539', 'B2', '43.9', '62.72', '0.31', '99', '99', '13', '合格', '无', '334', 'CRI-2692', '3');
INSERT INTO `detection_details` VALUES ('1540', 'A2', '47.47', '69.04', '0.33', '99', '99', '14', '不合格', '滚动体', '334', 'CRI-2692', '4');
INSERT INTO `detection_details` VALUES ('1541', 'PM', '42.74', '54.77', '0.43', '99', '99', '0', '合格', '无', '334', 'R205', '5');
INSERT INTO `detection_details` VALUES ('1542', 'PW', '43.15', '57.19', '0.45', '99', '99', '4', '合格', '无', '334', 'R205', '6');
INSERT INTO `detection_details` VALUES ('1543', 'GM', '39.46', '53.69', '0.28', '99', '99', '1', '合格', '无', '334', 'R70', '7');
INSERT INTO `detection_details` VALUES ('1544', 'GW', '43.44', '56.2', '0.24', '99', '99', '0', '合格', '无', '334', 'R70', '8');
INSERT INTO `detection_details` VALUES ('1545', 'PM', '43.9', '59.71', '0.77', '99', '99', '3', '合格', '无', '335', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1546', 'PW', '44.82', '62.49', '0.85', '99', '99', '2', '合格', '无', '335', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1547', 'GM', '41.99', '60.03', '0.37', '99', '99', '3', '合格', '无', '335', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1548', 'GW', '45.11', '59.97', '0.61', '99', '99', '2', '合格', '无', '335', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1549', 'A1', '1.76', '12.75', '0.01', '99', '99', '0', '合格', '无', '336', 'CRI-2677', '1');
INSERT INTO `detection_details` VALUES ('1550', 'B1', '1.4', '12.78', '0.01', '99', '99', '0', '合格', '无', '336', 'CRI-2677', '2');
INSERT INTO `detection_details` VALUES ('1551', 'B2', '-0.78', '12.13', '0.01', '99', '99', '0', '合格', '无', '336', 'CRI-2677', '3');
INSERT INTO `detection_details` VALUES ('1552', 'A2', '0.35', '11.16', '0.01', '99', '99', '0', '合格', '无', '336', 'CRI-2677', '4');
INSERT INTO `detection_details` VALUES ('1553', 'PM', '8.97', '19.98', '0.03', '99', '99', '0', '合格', '无', '336', 'R70', '5');
INSERT INTO `detection_details` VALUES ('1554', 'PW', '9.97', '21.21', '0.02', '99', '99', '0', '合格', '无', '336', 'R70', '6');
INSERT INTO `detection_details` VALUES ('1555', 'GM', '9.93', '20.84', '0.03', '99', '99', '0', '合格', '无', '336', 'R205', '7');
INSERT INTO `detection_details` VALUES ('1556', 'GW', '7.29', '18.86', '0.02', '99', '99', '0', '合格', '无', '336', 'R205', '8');
INSERT INTO `detection_details` VALUES ('1557', 'PM', '46.54', '57.76', '0.59', '99', '99', '0', '合格', '无', '337', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1558', 'PW', '53.01', '62.43', '0.7', '99', '99', '0', '合格', '无', '337', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1559', 'GM', '37.28', '51.93', '0.2', '99', '99', '0', '合格', '无', '337', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1560', 'GW', '41.21', '57.14', '0.22', '99', '99', '6', '合格', '无', '337', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1561', 'PM', '46.95', '57.54', '0.61', '99', '99', '0', '合格', '无', '338', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1562', 'PW', '46.56', '59.67', '0.56', '99', '99', '0', '合格', '无', '338', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1563', 'GM', '37.48', '48.32', '0.24', '99', '99', '4', '合格', '无', '338', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1564', 'GW', '42.11', '56.52', '0.37', '99', '99', '4', '合格', '无', '338', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1565', 'PM', '45.57', '60.7', '0.42', '99', '99', '0', '合格', '无', '339', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1566', 'PW', '44.52', '61.58', '0.5', '99', '99', '3', '合格', '无', '339', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1567', 'GM', '42.33', '55.69', '0.35', '99', '99', '2', '合格', '无', '339', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1568', 'GW', '41.35', '60.23', '0.19', '99', '99', '9', '合格', '无', '339', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1569', 'PM', '43.87', '56.18', '0.32', '99', '99', '1', '合格', '无', '340', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1570', 'PW', '45.22', '63.1', '0.45', '99', '99', '2', '合格', '无', '340', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1571', 'GM', '41.7', '55.2', '0.31', '99', '99', '3', '合格', '无', '340', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1572', 'GW', '43.48', '64.02', '0.18', '99', '99', '10', '合格', '无', '340', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1573', 'PM', '44.69', '55.84', '0.35', '99', '99', '0', '合格', '无', '341', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1574', 'PW', '44.15', '57.74', '0.46', '99', '99', '1', '合格', '无', '341', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1575', 'GM', '41.72', '51.98', '0.3', '99', '99', '0', '合格', '无', '341', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1576', 'GW', '41.2', '57.55', '0.17', '99', '99', '10', '合格', '无', '341', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1577', 'PM', '40.61', '53.92', '0.49', '99', '99', '1', '不合格', '有效值', '342', 'R205', '1');
INSERT INTO `detection_details` VALUES ('1578', 'PW', '43.14', '54.68', '0.47', '99', '99', '0', '不合格', '有效值', '342', 'R205', '2');
INSERT INTO `detection_details` VALUES ('1579', 'GM', '37.66', '50.07', '0.27', '99', '99', '1', '合格', '无', '342', 'R70', '3');
INSERT INTO `detection_details` VALUES ('1580', 'GW', '44.95', '56.55', '0.44', '99', '99', '0', '不合格', '有效值', '342', 'R70', '4');
INSERT INTO `detection_details` VALUES ('1581', 'PM', '40.44', '49.53', '0.21', '99', '99', '0', '合格', '无', '343', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1582', 'PW', '48.02', '54.97', '0.38', '99', '99', '0', '合格', '无', '343', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1583', 'GM', '42.21', '51', '0.25', '99', '99', '0', '合格', '无', '343', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1584', 'GW', '34.21', '45.67', '0.13', '99', '99', '0', '合格', '无', '343', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1585', 'PM', '40.43', '49.89', '0.21', '99', '99', '0', '合格', '无', '344', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1586', 'PW', '47.99', '55.01', '0.38', '99', '99', '0', '合格', '无', '344', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1587', 'GM', '42.2', '50.41', '0.26', '99', '99', '0', '合格', '无', '344', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1588', 'GW', '34.1', '46.97', '0.13', '99', '99', '0', '合格', '无', '344', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1589', 'PM', '40.53', '49.8', '0.22', '99', '99', '1', '合格', '无', '345', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1590', 'PW', '47.93', '55.26', '0.39', '99', '99', '0', '合格', '无', '345', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1591', 'GM', '42.23', '50.58', '0.26', '99', '99', '0', '合格', '无', '345', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1592', 'GW', '34.82', '46.1', '0.13', '99', '99', '0', '合格', '无', '345', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1593', 'PM', '41.45', '55.36', '0.6', '99', '99', '1', '合格', '无', '346', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1594', 'PW', '44.22', '56.1', '0.57', '99', '99', '0', '合格', '无', '346', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1595', 'GM', '38.05', '51.22', '0.25', '99', '99', '1', '合格', '无', '346', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1596', 'GW', '44.65', '56.45', '0.36', '99', '99', '0', '合格', '无', '346', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1597', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '347', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1598', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '347', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1599', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '347', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1600', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '347', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1601', 'PM', '41.23', '51.54', '0.46', '99', '99', '0', '合格', '无', '348', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1602', 'PW', '42.01', '51.14', '0.52', '99', '99', '0', '合格', '无', '348', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1603', 'GM', '39.56', '49.52', '0.49', '99', '99', '0', '合格', '无', '348', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1604', 'GW', '41.23', '50.84', '0.47', '99', '99', '0', '合格', '无', '348', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1605', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '349', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1606', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '349', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1607', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '349', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1608', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '349', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1609', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '350', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1610', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '350', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1611', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '350', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1612', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '350', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1613', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '351', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1614', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '351', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1615', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '351', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1616', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '351', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1617', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '352', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1618', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '352', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1619', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '352', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1620', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '352', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1621', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '353', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1622', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '353', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1623', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '353', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1624', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '353', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1625', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '354', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1626', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '354', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1627', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '354', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1628', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '354', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1629', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '355', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1630', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '355', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1631', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '355', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1632', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '355', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1633', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '356', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1634', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '356', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1635', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '356', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1636', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '356', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1637', 'PM', '37.07', '49.84', '0.61', '99', '99', '1', '合格', '无', '357', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1638', 'PW', '34.31', '46.63', '0.68', '99', '99', '0', '合格', '无', '357', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1639', 'GM', '37.28', '51.27', '0.72', '99', '99', '0', '合格', '无', '357', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1640', 'GW', '37.02', '48.3', '0.69', '99', '99', '0', '合格', '无', '357', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1641', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '358', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1642', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '359', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1643', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '358', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1644', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '359', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1645', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '358', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1646', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '359', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1647', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '358', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1648', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '359', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1649', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '360', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1650', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '361', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1651', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '360', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1652', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '361', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1653', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '360', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1654', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '361', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1655', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '360', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1656', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '361', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1657', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '362', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1658', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '362', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1659', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '362', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1660', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '362', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1661', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '363', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1662', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '364', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1663', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '363', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1664', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '363', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1665', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '364', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1666', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '364', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1667', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '363', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1668', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '364', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1669', 'PM', '6.9', '18.51', '0.02', '99', '99', '4', '合格', '无', '365', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1670', 'PW', '6.86', '18.26', '0.02', '99', '99', '4', '合格', '无', '365', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1671', 'GM', '5.95', '16.47', '0.02', '99', '99', '3', '合格', '无', '365', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1672', 'GW', '8.04', '18.54', '0.02', '99', '99', '2', '合格', '无', '365', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1673', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '366', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1674', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '367', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1675', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '368', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1676', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '366', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1677', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '367', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1678', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '368', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1679', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '366', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1680', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '367', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1681', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '368', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1682', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '366', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1683', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '367', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1684', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '368', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1685', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '369', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1686', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '369', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1687', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '369', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1688', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '369', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1689', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '370', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1690', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '370', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1691', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '370', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1692', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '370', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1693', 'PM', '37.11', '50.18', '0.64', '99', '99', '0', '合格', '无', '371', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1694', 'PW', '34.7', '46.38', '0.72', '99', '99', '0', '合格', '无', '371', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1695', 'GM', '37.43', '50.42', '0.76', '99', '99', '0', '合格', '无', '371', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1696', 'GW', '37.06', '47.97', '0.73', '99', '99', '0', '合格', '无', '371', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1697', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '372', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1698', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '373', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1699', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '374', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1700', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '372', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1701', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '373', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1702', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '374', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1703', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '372', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1704', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '373', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1705', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '374', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1706', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '372', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1707', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '373', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1708', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '374', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1709', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '375', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1710', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '375', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1711', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '375', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1712', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '376', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1713', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '375', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1714', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '376', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1715', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '376', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1716', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '376', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1717', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '377', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1718', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '377', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1719', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '377', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1720', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '377', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1721', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '378', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1722', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '378', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1723', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '378', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1724', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '378', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1725', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '379', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1726', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '380', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1727', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '379', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1728', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '380', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1729', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '379', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1730', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '380', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1731', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '379', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1732', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '380', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1733', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '381', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1734', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '383', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1735', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '382', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1736', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '381', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1737', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '383', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1738', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '382', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1739', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '381', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1740', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '383', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1741', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '382', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1742', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '381', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1743', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '383', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1744', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '382', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1745', 'PM', '41.28', '51.4', '0.51', '99', '99', '0', '合格', '无', '384', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1746', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '386', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1747', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '385', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1748', 'PW', '42.09', '51.51', '0.57', '99', '99', '0', '合格', '无', '384', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1749', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '386', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1750', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '385', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1751', 'GM', '39.6', '50.39', '0.53', '99', '99', '0', '合格', '无', '384', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1752', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '386', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1753', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '385', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1754', 'GW', '41.24', '51.25', '0.52', '99', '99', '0', '合格', '无', '384', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1755', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '386', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1756', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '385', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1757', 'PM', '41.23', '51.54', '0.46', '99', '99', '0', '合格', '无', '387', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1758', 'PW', '42.01', '51.14', '0.52', '99', '99', '0', '合格', '无', '387', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1759', 'GM', '39.56', '49.52', '0.49', '99', '99', '0', '合格', '无', '387', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1760', 'GW', '41.23', '50.84', '0.47', '99', '99', '0', '合格', '无', '387', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1761', 'PM', '35.47', '47.86', '0.55', '99', '99', '0', '合格', '无', '388', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1762', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '389', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1763', 'PW', '33.63', '45.58', '0.62', '99', '99', '0', '合格', '无', '388', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1764', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '389', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1765', 'GM', '35.66', '50.14', '0.66', '99', '99', '0', '合格', '无', '388', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1766', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '389', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1767', 'GW', '36.37', '47.88', '0.63', '99', '99', '0', '合格', '无', '388', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1768', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '389', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1769', 'PM', '37.07', '49.84', '0.61', '99', '99', '1', '合格', '无', '390', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1770', 'PW', '34.31', '46.63', '0.68', '99', '99', '0', '合格', '无', '390', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1771', 'GM', '37.28', '51.27', '0.72', '99', '99', '0', '合格', '无', '390', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1772', 'GW', '37.02', '48.3', '0.69', '99', '99', '0', '合格', '无', '390', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1773', 'PM', '37.11', '50.18', '0.64', '99', '99', '0', '合格', '无', '391', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1774', 'PW', '34.7', '46.38', '0.72', '99', '99', '0', '合格', '无', '391', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1775', 'GM', '37.43', '50.42', '0.76', '99', '99', '0', '合格', '无', '391', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1776', 'GW', '37.06', '47.97', '0.73', '99', '99', '0', '合格', '无', '391', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1777', 'PM', '6.95', '18.14', '0.02', '99', '99', '0', '合格', '无', '392', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1778', 'PW', '6.92', '17.32', '0.02', '99', '99', '0', '合格', '无', '392', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1779', 'GM', '6.01', '16.94', '0.02', '99', '99', '0', '合格', '无', '392', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1780', 'GW', '8.02', '19.52', '0.02', '99', '99', '0', '合格', '无', '392', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1781', 'PM', '6.9', '18.51', '0.02', '99', '99', '4', '合格', '无', '393', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1782', 'PW', '6.86', '18.26', '0.02', '99', '99', '4', '合格', '无', '393', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1783', 'GM', '5.95', '16.47', '0.02', '99', '99', '3', '合格', '无', '393', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1784', 'GW', '8.04', '18.54', '0.02', '99', '99', '2', '合格', '无', '393', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1785', 'PM', '37.55', '50.29', '0.58', '99', '99', '0', '合格', '无', '394', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1786', 'PW', '45.95', '54.79', '0.65', '99', '99', '0', '合格', '无', '394', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1787', 'GM', '37.53', '48.91', '0.63', '99', '99', '0', '合格', '无', '394', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1788', 'GW', '36.79', '48.91', '0.6', '99', '99', '0', '合格', '无', '394', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1789', 'PM', '38.48', '50.48', '0.75', '99', '99', '0', '合格', '无', '395', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1790', 'PW', '46.27', '55.9', '0.84', '99', '99', '0', '合格', '无', '395', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1791', 'GM', '38.37', '50.46', '0.81', '99', '99', '0', '合格', '无', '395', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1792', 'GW', '37.68', '50.12', '0.76', '99', '99', '0', '合格', '无', '395', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1793', 'PM', '39.12', '51.53', '1.02', '99', '99', '0', '合格', '无', '396', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1794', 'PW', '46.56', '56.51', '1.04', '99', '99', '0', '合格', '无', '396', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1795', 'GM', '39.05', '52.45', '1.08', '99', '99', '0', '合格', '无', '396', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1796', 'GW', '38.36', '51.89', '1.03', '99', '99', '0', '合格', '无', '396', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1797', 'PM', '-10.47', '1.32', '0', '99', '99', '0', '合格', '无', '397', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1798', 'PW', '-9.28', '2.46', '0', '99', '99', '0', '合格', '无', '397', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1799', 'GM', '-9.49', '2.25', '0', '99', '99', '0', '合格', '无', '397', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1800', 'GW', '-8.61', '3.86', '0', '99', '99', '0', '合格', '无', '397', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1801', 'PM', '-10.37', '1.87', '0', '99', '99', '0', '合格', '无', '398', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1802', 'PW', '-9.23', '2.45', '0', '99', '99', '0', '合格', '无', '398', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1803', 'GM', '-9.53', '2.43', '0', '99', '99', '0', '合格', '无', '398', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1804', 'GW', '-8.75', '2.62', '0', '99', '99', '0', '合格', '无', '398', 'R205', '4');
INSERT INTO `detection_details` VALUES ('1805', 'PM', '3.4', '18.94', '0.01', '99', '99', '4', '合格', '无', '399', 'R70', '1');
INSERT INTO `detection_details` VALUES ('1806', 'PW', '4.13', '20.25', '0.01', '99', '99', '8', '合格', '无', '399', 'R70', '2');
INSERT INTO `detection_details` VALUES ('1807', 'GM', '0.64', '17.21', '0.01', '99', '99', '5', '合格', '无', '399', 'R205', '3');
INSERT INTO `detection_details` VALUES ('1808', 'GW', '4.52', '20.27', '0.02', '99', '99', '6', '合格', '无', '399', 'R205', '4');

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
) ENGINE=InnoDB AUTO_INCREMENT=400 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of detection_record
-- ----------------------------
INSERT INTO `detection_record` VALUES ('229', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('230', '无', '三级', '无', '无', '2018-11-18 13:33:30', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_三级_20181118133330.pdf', 'D06_799-0050_三级_20181118133330.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('231', '无', '三级', '无', '无', '2018-11-18 13:49:53', '000000000004', 'RUN001', '2018/11/18', 'D06_D0601_三级_20181118134953.pdf', 'D06_D0601_三级_20181118134953.bgm', 'D06', 'D0601', ' 齿轮箱清洗机', '东东', 'GBRS123', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('232', '无', '三级', '无', '无', '2018-11-18 13:51:12', '000000000004', 'RUN001', '2018/11/18', 'D06_D0601_三级_20181118135112.pdf', 'D06_D0601_三级_20181118135112.bgm', 'D06', 'D0601', ' 齿轮箱清洗机', '东东', 'GBRS123', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('233', '无', '三级', '无', '无', '2018-11-18 13:53:08', '000000000004', 'RUN001', '2018/11/18', 'D06_D0601_三级_20181118135308.pdf', 'D06_D0601_三级_20181118135308.bgm', 'D06', 'D0601', ' 齿轮箱清洗机', '东东', 'GBRS123', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('234', '无', '三级', '无', '无', '2018-11-18 14:17:34', '000000000004', 'RUN002', '2018/11/18', 'D06_AERS0087_三级_20181118141734.pdf', 'D06_AERS0087_三级_20181118141734.bgm', 'D06', 'AERS0087', ' 齿轮箱清洗机', '东东', 'GR0406', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('235', '无', '三级', '无', '无', '2018-11-18 14:18:00', '000000000004', 'RUN002', '2018/11/18', 'D06_AERS0087_三级_20181118141800.pdf', 'D06_AERS0087_三级_20181118141800.bgm', 'D06', 'AERS0087', ' 齿轮箱清洗机', '东东', 'GR0406', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('236', '无', '三级', '无', '无', '2018-11-18 14:18:23', '000000000004', 'RUN002', '2018/11/18', 'D06_AERS0087_三级_20181118141823.pdf', 'D06_AERS0087_三级_20181118141823.bgm', 'D06', 'AERS0087', ' 齿轮箱清洗机', '东东', 'GR0406', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('237', '无', '三级', '无', '无', '2018-11-18 14:18:40', '000000000004', 'RUN002', '2018/11/18', 'D06_AERS0087_三级_20181118141840.pdf', 'D06_AERS0087_三级_20181118141840.bgm', 'D06', 'AERS0087', ' 齿轮箱清洗机', '东东', 'GR0406', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('238', '无', '三级', '无', '无', '2018-11-18 14:31:32', '000000000004', 'RUN003', '2018/11/18', 'D06_D0612_三级_20181118143132.pdf', 'D06_D0612_三级_20181118143132.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '东东', 'GRSTY', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('239', '无', '三级', '无', '无', '2018-11-18 14:33:52', '000000000004', 'RUN003', '2018/11/18', 'D06_D0612_三级_20181118143352.pdf', 'D06_D0612_三级_20181118143352.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '东东', 'GRSTY', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('240', '无', '三级', '无', '无', '2018-11-18 14:35:18', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_三级_20181118143518.pdf', 'D06_D0611_三级_20181118143518.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', 'GBRS123', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('241', '无', '三级', '无', '无', '2018-11-18 14:46:42', '000000000004', 'RUN004', '2018/11/18', 'D06_D0614_三级_20181118144642.pdf', 'D06_D0614_三级_20181118144642.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', 'GEAR04', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('242', '无', '三级', '无', '无', '2018-11-18 14:48:48', '000000000004', 'RUN004', '2018/11/18', 'D06_D0614_三级_20181118144848.pdf', 'D06_D0614_三级_20181118144848.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', 'GEAR04', 'R205-1g3s3QWAP6A', '四方小轴R70', '无');
INSERT INTO `detection_record` VALUES ('243', '无', '五级', '无', '无', '2018-11-18 16:39:26', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118163926.pdf', 'D06_D0611_五级_20181118163926.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '0593', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('244', '无', '四级', '无', '无', '2018-11-18 16:40:50', '000000000004', 'RUN002', '2018/11/18', 'D06_D0612_四级_20181118164050.pdf', 'D06_D0612_四级_20181118164050.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '王辉 姜展', '5535', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('245', '无', '四级', '无', '无', '2018-11-18 16:38:26', '000000000004', 'RUN005', '2018/11/18', 'D06_D0615_四级_20181118163826.pdf', 'D06_D0615_四级_20181118163826.bgm', 'D06', 'D0615', ' 齿轮箱清洗机', 'D0601', '5512', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('246', '无', '三级', '无', '无', '2018-11-18 16:40:49', '000000000004', 'RUN003', '2018/11/18', 'D06_D0613_三级_20181118164049.pdf', 'D06_D0613_三级_20181118164049.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', 'QWA', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('247', '无', '三级', '无', '无', '2018-11-18 16:42:31', '000000000004', 'RUN003', '2018/11/18', 'D06_D0613_三级_20181118164231.pdf', 'D06_D0613_三级_20181118164231.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', 'QWA', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('248', '无', '四级', '无', '无', '2018-11-18 16:42:57', '000000000004', 'RUN002', '2018/11/18', 'D06_D0612_四级_20181118164257.pdf', 'D06_D0612_四级_20181118164257.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '王辉 姜展', '5535', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('249', '无', '五级', '无', '无', '2018-11-18 16:41:55', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118164155.pdf', 'D06_D0611_五级_20181118164155.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '0593', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('250', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('251', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('252', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('253', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('254', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('255', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('256', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('257', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('258', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('259', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('260', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('261', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('262', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('263', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('264', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('265', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('266', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('267', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('268', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('269', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('270', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('271', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('272', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('273', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('274', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('275', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('276', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('277', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('278', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('279', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('280', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('281', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('282', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('283', '无', '一级', '无', '无', '2018-11-18 16:34:06', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118163406.pdf', 'D06_799-0050_一级_20181118163406.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('284', '无', '一级', '无', '无', '2018-11-18 17:04:04', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118170404.pdf', 'D06_799-0050_一级_20181118170404.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('285', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('286', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('287', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('288', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('289', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('290', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('291', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('292', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('293', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('294', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('295', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('296', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('297', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('298', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('299', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('300', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('301', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('302', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('303', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('304', '无', '三级', '无', '无', '2018-11-18 13:16:18', '000000000004', 'RUN001', '2018/11/18', 'D06_799-0050_三级_20181118131618.pdf', 'D06_799-0050_三级_20181118131618.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('305', '无', '一级', '无', '无', '2018-11-18 19:10:04', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191004.pdf', 'D06_799-0050_一级_20181118191004.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('306', '无', '一级', '无', '无', '2018-11-18 19:10:30', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191030.pdf', 'D06_799-0050_一级_20181118191030.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('307', '无', '一级', '无', '无', '2018-11-18 19:11:05', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191105.pdf', 'D06_799-0050_一级_20181118191105.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('308', '无', '一级', '无', '无', '2018-11-18 19:11:42', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191142.pdf', 'D06_799-0050_一级_20181118191142.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('309', '无', '一级', '无', '无', '2018-11-18 19:12:30', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191230.pdf', 'D06_799-0050_一级_20181118191230.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('310', '无', '一级', '无', '无', '2018-11-18 19:12:42', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191242.pdf', 'D06_799-0050_一级_20181118191242.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('311', '无', '一级', '无', '无', '2018-11-18 19:13:30', '000000000004', 'RUN006', '2018/11/18', 'D06_799-0050_一级_20181118191330.pdf', 'D06_799-0050_一级_20181118191330.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', 'QW3233', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('312', '无', '五级', '无', '无', '2018-11-18 19:15:23', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118191523.pdf', 'D06_D0611_五级_20181118191523.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '0593', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('313', '无', '五级', '无', '无', '2018-11-18 19:15:26', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118191526.pdf', 'D06_D0611_五级_20181118191526.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '0593', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('314', '无', '三级', '无', '无', '2018-11-18 19:17:32', '000000000004', 'RUN003', '2018/11/18', 'D06_D0613_三级_20181118191732.pdf', 'D06_D0613_三级_20181118191732.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', 'QWA', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('315', '无', '五级', '无', '无', '2018-11-18 19:17:00', '000000000004', 'RUN004', '2018/11/18', 'D06_D0614_五级_20181118191700.pdf', 'D06_D0614_五级_20181118191700.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', '1591', 'R205-1g3s3QWAP6A', '四方小轴R70', '无');
INSERT INTO `detection_record` VALUES ('316', '无', '三级', '无', '无', '2018-11-18 19:18:35', '000000000004', 'RUN003', '2018/11/18', 'D06_D0613_三级_20181118191835.pdf', 'D06_D0613_三级_20181118191835.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', 'QWA', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('317', '无', '五级', '无', '无', '2018-11-18 19:17:32', '000000000004', 'RUN004', '2018/11/18', 'D06_D0614_五级_20181118191732.pdf', 'D06_D0614_五级_20181118191732.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', '1591', 'R205-1g3s3QWAP6A', '四方小轴R70', '无');
INSERT INTO `detection_record` VALUES ('318', '无', '四级', '无', '无', '2018-11-18 19:17:49', '000000000004', 'RUN005', '2018/11/18', 'D06_D0615_四级_20181118191749.pdf', 'D06_D0615_四级_20181118191749.bgm', 'D06', 'D0615', ' 齿轮箱清洗机', 'D0601', '5512', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('319', '无', '四级', '无', '无', '2018-11-18 19:18:57', '000000000004', 'RUN002', '2018/11/18', 'D06_D0612_四级_20181118191857.pdf', 'D06_D0612_四级_20181118191857.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '王辉 姜展', '5535', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('320', '无', '五级', '无', '无', '2018-11-18 19:17:51', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118191751.pdf', 'D06_D0611_五级_20181118191751.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '0593', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('321', '无', '五级', '无', '无', '2018-11-18 19:18:09', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118191809.pdf', 'D06_D0611_五级_20181118191809.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '0593', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('322', '无', '五级', '无', '无', '2018-11-18 21:44:08', '000000000004', 'RUN001', '2018/11/18', 'D06_D0611_五级_20181118214408.pdf', 'D06_D0611_五级_20181118214408.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '1575', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('323', '无', '四级', '无', '无', '2018-11-19 00:56:09', '000000000004', 'RUN002', '2018/11/19', 'D06_D0612_四级_20181119005609.pdf', 'D06_D0612_四级_20181119005609.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '王辉 姜展', '1705', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('324', '无', '三级', '无', '无', '2018-11-19 01:04:04', '000000000004', 'RUN003', '2018/11/19', 'D06_D0613_三级_20181119010404.pdf', 'D06_D0613_三级_20181119010404.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', '4204', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('325', '无', '四级', '无', '无', '2018-11-19 01:09:58', '000000000004', 'RUN002', '2018/11/19', 'D06_D0612_四级_20181119010958.pdf', 'D06_D0612_四级_20181119010958.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '王辉 姜展', '1337', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('326', '无', '五级', '无', '无', '2018-11-19 01:12:25', '000000000004', 'RUN004', '2018/11/19', 'D06_D0614_五级_20181119011225.pdf', 'D06_D0614_五级_20181119011225.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', '4217', 'R205-1g3s3QWAP6A', '四方小轴R70', '无');
INSERT INTO `detection_record` VALUES ('327', '无', '五级', '无', '无', '2018-11-19 01:15:38', '000000000004', 'RUN004', '2018/11/19', 'D06_D0614_五级_20181119011538.pdf', 'D06_D0614_五级_20181119011538.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', '4217', 'R205-1g3s3QWAP6A', '四方小轴R70', '无');
INSERT INTO `detection_record` VALUES ('328', '无', '三级', '无', '无', '2018-11-19 01:16:43', '000000000004', 'RUN003', '2018/11/19', 'D06_D0613_三级_20181119011643.pdf', 'D06_D0613_三级_20181119011643.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', '1343', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('329', '无', '五级', '无', '无', '2018-11-19 01:15:58', '000000000004', 'RUN001', '2018/11/19', 'D06_D0611_五级_20181119011558.pdf', 'D06_D0611_五级_20181119011558.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '5444', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('330', '无', '五级', '无', '无', '2018-11-19 16:31:53', '000000000004', 'RUN001', '2018/11/19', 'D06_D0611_五级_20181119163153.pdf', 'D06_D0611_五级_20181119163153.bgm', 'D06', 'D0611', ' 齿轮箱清洗机', '东东', '4729', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('331', '1Y3658', '五级', '3-13-85', '11-13-580', '2018-11-19 15:31:12', '000000000008', 'WASH013', '2018/11/19', 'D06_GZ-1285_五级_20181119153112.pdf', 'D06_GZ-1285_五级_20181119153112.bgm', 'D06', 'GZ-1285', ' 齿轮箱清洗机', 'SSS', '东厂区', 'R205', 'R70', 'CRI-2677');
INSERT INTO `detection_record` VALUES ('332', 'M6520', '四级', '11-14-1226', '11-014-79', '2018-11-19 16:07:12', '000000000008', 'WASH012', '2018/11/19', 'D06_GZ-1285_四级_20181119160712.pdf', 'D06_GZ-1285_四级_20181119160712.bgm', 'D06', 'GZ-1285', ' 齿轮箱清洗机', '张三', 'JSTRBST', 'R205', 'R70', 'CRI-2692');
INSERT INTO `detection_record` VALUES ('333', 'M6520', '四级', '11-14-1226', '11-014-79', '2018-11-19 16:07:13', '000000000008', 'WASH012', '2018/11/19', 'D06_GZ-1285_四级_20181119160713.pdf', 'D06_GZ-1285_四级_20181119160713.bgm', 'D06', 'GZ-1285', ' 齿轮箱清洗机', '张三', 'JSTRBST', 'R205', 'R70', 'CRI-2692');
INSERT INTO `detection_record` VALUES ('334', 'M6520', '四级', '11-14-1226', '11-014-79', '2018-11-19 16:11:45', '000000000008', 'WASH012', '2018/11/19', 'D06_GZ-1285_四级_20181119161145.pdf', 'D06_GZ-1285_四级_20181119161145.bgm', 'D06', 'GZ-1285', ' 齿轮箱清洗机', '张三', 'JSTRBST', 'R205', 'R70', 'CRI-2692');
INSERT INTO `detection_record` VALUES ('335', '无', '五级', '无', '无', '2018-11-19 16:48:48', '000000000004', 'RUN002', '2018/11/19', 'D06_D0612_五级_20181119164848.pdf', 'D06_D0612_五级_20181119164848.bgm', 'D06', 'D0612', ' 齿轮箱清洗机', '王辉 姜展', 'M-107884', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('336', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 16:50:16', '000000000008', 'WASH015', '2018/11/19', 'B09_GZ-1222_四级_20181119165016.pdf', 'B09_GZ-1222_四级_20181119165016.bgm', 'B09', 'GZ-1222', ' 齿轮箱清洗机', '张三', 'JSTRBST', 'R70', 'R205', 'CRI-2677');
INSERT INTO `detection_record` VALUES ('337', '无', '五级', '无', '无', '2018-11-19 16:56:38', '000000000004', 'RUN003', '2018/11/19', 'D06_D0613_五级_20181119165638.pdf', 'D06_D0613_五级_20181119165638.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', '10037', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('338', '无', '五级', '无', '无', '2018-11-19 16:57:50', '000000000004', 'RUN004', '2018/11/19', 'D06_D0614_五级_20181119165750.pdf', 'D06_D0614_五级_20181119165750.bgm', 'D06', 'D0614', ' 齿轮箱清洗机', 'DONG', '4492', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('339', '无', '五级', '无', '无', '2018-11-19 17:08:34', '000000000004', 'RUN005', '2018/11/19', 'D06_D0615_五级_20181119170834.pdf', 'D06_D0615_五级_20181119170834.bgm', 'D06', 'D0615', ' 齿轮箱清洗机', 'D0601', '4716', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('340', '无', '五级', '无', '无', '2018-11-19 17:15:33', '000000000004', 'RUN005', '2018/11/19', 'D06_D0615_五级_20181119171533.pdf', 'D06_D0615_五级_20181119171533.bgm', 'D06', 'D0615', ' 齿轮箱清洗机', 'D0601', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('341', '无', '五级', '无', '无', '2018-11-19 17:17:43', '000000000004', 'RUN005', '2018/11/19', 'D06_D0615_五级_20181119171743.pdf', 'D06_D0615_五级_20181119171743.bgm', 'D06', 'D0615', ' 齿轮箱清洗机', 'D0601', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('342', '无', '五级', '无', '无', '2018-11-19 17:20:30', '000000000004', 'RUN006', '2018/11/19', 'D06_799-0050_五级_20181119172030.pdf', 'D06_799-0050_五级_20181119172030.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', '4100', 'R205', 'R70', '无');
INSERT INTO `detection_record` VALUES ('343', '无', '五级', '无', '无', '2018-11-19 17:42:31', '000000000004', 'RUN003', '2018/11/19', 'D06_D0613_五级_20181119174231.pdf', 'D06_D0613_五级_20181119174231.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('344', '无', '五级', '无', '无', '2018-11-19 17:42:35', '000000000004', 'RUN003', '2018/11/19', 'D06_D0613_五级_20181119174235.pdf', 'D06_D0613_五级_20181119174235.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('345', '无', '五级', '无', '无', '2018-11-19 17:42:40', '000000000004', 'RUN003', '2018/11/19', 'D06_D0613_五级_20181119174240.pdf', 'D06_D0613_五级_20181119174240.bgm', 'D06', 'D0613', ' 齿轮箱清洗机', 'D0601', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('346', '无', '五级', '无', '无', '2018-11-19 17:41:27', '000000000004', 'RUN006', '2018/11/19', 'D06_799-0050_五级_20181119174127.pdf', 'D06_799-0050_五级_20181119174127.bgm', 'D06', '799-0050', ' 齿轮箱清洗机', 'SSS', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('347', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('348', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:37', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175237.pdf', 'B09_R01_四级_20181119175237.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('349', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('350', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('351', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('352', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('353', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('354', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('355', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('356', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('357', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:34', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175534.pdf', 'D06_779-052_四级_20181119175534.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('358', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('359', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('360', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('361', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('362', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('363', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('364', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('365', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:58:01', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175801.pdf', 'B09_R01_四级_20181119175801.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('366', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('367', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('368', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('369', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('370', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('371', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:58:14', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175814.pdf', 'D06_779-052_四级_20181119175814.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('372', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('373', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('374', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('375', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('376', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('377', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('378', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('379', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('380', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('381', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('382', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('383', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('384', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:28', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175228.pdf', 'B09_R01_四级_20181119175228.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('385', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('386', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('387', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:52:37', '000000000004', 'RUN009', '2018/11/19', 'B09_R01_四级_20181119175237.pdf', 'B09_R01_四级_20181119175237.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('388', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:25', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175525.pdf', 'D06_779-052_四级_20181119175525.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('389', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('390', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:55:34', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175534.pdf', 'D06_779-052_四级_20181119175534.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('391', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:58:14', '000000000004', 'RUN008', '2018/11/19', 'D06_779-052_四级_20181119175814.pdf', 'D06_779-052_四级_20181119175814.bgm', 'D06', '779-052', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('392', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:57:40', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175740.pdf', 'B09_R01_四级_20181119175740.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('393', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:58:01', '000000000004', 'RUN007', '2018/11/19', 'B09_R01_四级_20181119175801.pdf', 'B09_R01_四级_20181119175801.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('394', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:37:03', '000000000004', 'RUN010', '2018/11/19', 'B09_R01_四级_20181119173703.pdf', 'B09_R01_四级_20181119173703.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('395', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:37:32', '000000000004', 'RUN010', '2018/11/19', 'B09_R01_四级_20181119173732.pdf', 'B09_R01_四级_20181119173732.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('396', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:45:29', '000000000004', 'RUN010', '2018/11/19', 'B09_R01_四级_20181119174529.pdf', 'B09_R01_四级_20181119174529.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('397', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:31:57', '000000000004', 'RUN011', '2018/11/19', 'B09_R01_四级_20181119173157.pdf', 'B09_R01_四级_20181119173157.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('398', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:32:03', '000000000004', 'RUN011', '2018/11/19', 'B09_R01_四级_20181119173203.pdf', 'B09_R01_四级_20181119173203.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');
INSERT INTO `detection_record` VALUES ('399', 'QWSE36', '四级', '12DE34', '456321', '2018-11-19 17:41:56', '000000000004', 'RUN011', '2018/11/19', 'B09_R01_四级_20181119174156.pdf', 'B09_R01_四级_20181119174156.bgm', 'B09', 'R01', ' 齿轮箱清洗机', '张三', '无', 'R70', 'R205', '无');

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
) ENGINE=InnoDB AUTO_INCREMENT=929 DEFAULT CHARSET=utf8;

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
	SELECT totalLength;
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
					SELECT concat('开始子入库： ','detection_details');
					INSERT INTO detection_details
					(channel_name,valid_value,peak_value,vibration_severity,vibration_energy,peak_num,ripple_factor,evaluation,non_qualified,f_drid,bearing_no,seq_num) 
					VALUES(channelName,validValue,peakValue,vibrationSeverity,99.00,99,rippleFactor,evaluation,nonQualified,fDrid,bearingNo,seqNum) ;
					SELECT concat('完成子表入库： ','detection_details');
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
