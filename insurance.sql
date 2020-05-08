/*
Navicat MySQL Data Transfer

Source Server         : mysql_forum
Source Server Version : 50519
Source Host           : localhost:3306
Source Database       : insurance

Target Server Type    : MYSQL
Target Server Version : 50519
File Encoding         : 65001

Date: 2018-09-04 23:35:03
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `t_adversecardamage`
-- ----------------------------
DROP TABLE IF EXISTS `t_adversecardamage`;
CREATE TABLE `t_adversecardamage` (
  `adverseCarDamageId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `carTypeId` int(11) DEFAULT NULL,
  `carType` varchar(30) DEFAULT NULL,
  `carNumber` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`adverseCarDamageId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adversecardamage
-- ----------------------------
INSERT INTO t_adversecardamage VALUES ('2', '下载', '15467891234', null, '奥迪77', '京66666', '4970');
INSERT INTO t_adversecardamage VALUES ('3', '下载', '15467891234', null, '奥迪77', '京66666', '6000');
INSERT INTO t_adversecardamage VALUES ('4', '王多鱼', '15874957854', null, '奥迪45', '湘A5789', '10400');
INSERT INTO t_adversecardamage VALUES ('5', '', '', null, '', '', '0');
INSERT INTO t_adversecardamage VALUES ('6', '', '', null, '', '', '0');

-- ----------------------------
-- Table structure for `t_adversecardamagedetails`
-- ----------------------------
DROP TABLE IF EXISTS `t_adversecardamagedetails`;
CREATE TABLE `t_adversecardamagedetails` (
  `adverseCarDamageDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `adverseCarDamageId` int(11) DEFAULT NULL,
  `damagePartId` int(11) DEFAULT NULL,
  `damagePartName` varchar(30) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `damageExtend` varchar(30) DEFAULT NULL,
  `damageImg` varchar(100) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`adverseCarDamageDetailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_adversecardamagedetails
-- ----------------------------
INSERT INTO t_adversecardamagedetails VALUES ('2', '2', '1', '车门', '1', '5050', null, 'upload/20180828085039695.jpg', '湖南软评', '完全不能用');
INSERT INTO t_adversecardamagedetails VALUES ('4', '4', '0', '轮胎', '2', '5200', null, 'upload/20180828105356265.jpg', '湖南东风', '无');

-- ----------------------------
-- Table structure for `t_assessment`
-- ----------------------------
DROP TABLE IF EXISTS `t_assessment`;
CREATE TABLE `t_assessment` (
  `assessmentId` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` int(11) DEFAULT NULL,
  `myCarDamageId` int(11) DEFAULT NULL,
  `adverseCarDamageId` int(11) DEFAULT NULL,
  `assessmentTime` varchar(30) DEFAULT NULL,
  `totalPrice` int(11) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `assessmentPerson` varchar(30) DEFAULT NULL,
  `status` int(11) DEFAULT '0',
  PRIMARY KEY (`assessmentId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_assessment
-- ----------------------------
INSERT INTO t_assessment VALUES ('2', '1', '2', '2', 'Tue Aug 28 08:50:39 CST 2018', '8950', null, '2', '马云', '2');
INSERT INTO t_assessment VALUES ('4', '2', '4', '4', 'Tue Aug 28 10:53:55 CST 2018', '12900', null, '2', '马云', '2');
INSERT INTO t_assessment VALUES ('5', '3', '5', '5', 'Tue Aug 28 18:47:45 CST 2018', '1000', null, '10', '核心', '2');
INSERT INTO t_assessment VALUES ('6', '4', '6', '6', 'Wed Aug 29 10:51:32 CST 2018', '2000', null, '10', '核心', '2');

-- ----------------------------
-- Table structure for `t_carpart`
-- ----------------------------
DROP TABLE IF EXISTS `t_carpart`;
CREATE TABLE `t_carpart` (
  `carPartId` int(11) NOT NULL AUTO_INCREMENT,
  `carTypeId` int(11) DEFAULT NULL,
  `carPartName` varchar(30) DEFAULT NULL,
  `carPartPrice` int(11) DEFAULT NULL,
  `carPartRemark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`carPartId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_carpart
-- ----------------------------
INSERT INTO t_carpart VALUES ('1', '1', '发动机', '2000', '无');

-- ----------------------------
-- Table structure for `t_cartype`
-- ----------------------------
DROP TABLE IF EXISTS `t_cartype`;
CREATE TABLE `t_cartype` (
  `carTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `carName` varchar(30) DEFAULT NULL,
  `carBrand` varchar(30) DEFAULT NULL,
  `carSpecificType` varchar(100) DEFAULT NULL,
  `carValue` int(11) DEFAULT NULL,
  PRIMARY KEY (`carTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_cartype
-- ----------------------------
INSERT INTO t_cartype VALUES ('7', '奥拓一代', '奥拓一代x1', '轿车', '15');
INSERT INTO t_cartype VALUES ('8', '宝马', '宝马xx', '轿车', '33');
INSERT INTO t_cartype VALUES ('9', '法拉利', '法拉利sss', '跑车', '400');
INSERT INTO t_cartype VALUES ('10', '劳斯莱斯', '劳斯莱斯幻影', '老爷车', '500');
INSERT INTO t_cartype VALUES ('11', '奥拓一代', '奥拓', '奥拓Z1', '30000');

-- ----------------------------
-- Table structure for `t_case`
-- ----------------------------
DROP TABLE IF EXISTS `t_case`;
CREATE TABLE `t_case` (
  `caseId` int(11) NOT NULL AUTO_INCREMENT,
  `reportId` int(11) DEFAULT NULL,
  `reportReason` varchar(100) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `jieanId` int(11) DEFAULT NULL,
  `checkId` int(11) DEFAULT NULL,
  `assessmentId` int(11) DEFAULT NULL,
  `nuclearDamageId` int(11) DEFAULT NULL,
  `settlementId` int(11) DEFAULT NULL,
  `settleId` int(11) DEFAULT NULL,
  `caseStatus` int(11) DEFAULT '0',
  PRIMARY KEY (`caseId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_case
-- ----------------------------
INSERT INTO t_case VALUES ('1', '1', 'xz', 'sds', null, null, '2', '4', '5', '5', '5');
INSERT INTO t_case VALUES ('2', '2', 'dddddd', 'das', '1', '1', '2', '4', '5', '5', '5');
INSERT INTO t_case VALUES ('3', '3', '轮胎爆炸', '贵州省安顺市普定县李四路', '1', '1', '10', '4', null, null, '1');
INSERT INTO t_case VALUES ('4', '4', '轮胎爆炸', '陕西宝鸡市金台区', '2', '2', '10', '4', null, null, '3');

-- ----------------------------
-- Table structure for `t_check`
-- ----------------------------
DROP TABLE IF EXISTS `t_check`;
CREATE TABLE `t_check` (
  `checkId` int(11) NOT NULL AUTO_INCREMENT,
  `reportId` int(11) DEFAULT NULL,
  `checkPersonId` int(11) DEFAULT NULL,
  `checkName` varchar(30) DEFAULT NULL,
  `checkAddress` varchar(100) DEFAULT NULL,
  `checkTime` datetime DEFAULT NULL,
  `mydrivername` varchar(30) DEFAULT NULL,
  `oppositedrivername` varchar(30) DEFAULT NULL,
  `mydrivertel` varchar(30) DEFAULT NULL,
  `oppositedrivertel` varchar(30) DEFAULT NULL,
  `myVehicleLicense` varchar(30) DEFAULT NULL,
  `oppositeVehicleLicense` varchar(30) DEFAULT NULL,
  `myLicense` varchar(100) DEFAULT NULL,
  `oppositeLicense` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`checkId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_check
-- ----------------------------
INSERT INTO t_check VALUES ('1', '1', null, '', 'sds', '2018-08-07 00:00:00', 'sda', '23', '13232', '23132', '12123', '1321', '123132', '231');
INSERT INTO t_check VALUES ('2', '2', '1', '王多鱼', 'das', '2018-08-22 00:00:00', 'dsa', '3', '2', '54654', '123', '132', '123', '123132');
INSERT INTO t_check VALUES ('3', '3', '1', '王多鱼', '贵州省安顺市普定县李四路', '2018-08-21 00:00:00', '张三', '李四', '15478569785', '17845621457', '113212313421231', '456465465464564', '13454621231313', '45461232531215');
INSERT INTO t_check VALUES ('4', '4', '2', '马云', '陕西宝鸡市金台区', '2018-08-15 00:00:00', '王威', '唐明福', '17680419813', '17680419813', '123123', '12312', '1231', '1231');

-- ----------------------------
-- Table structure for `t_checkdetails`
-- ----------------------------
DROP TABLE IF EXISTS `t_checkdetails`;
CREATE TABLE `t_checkdetails` (
  `checkDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `checkId` int(11) DEFAULT NULL,
  `checkImg` varchar(500) DEFAULT NULL,
  `checkRemark` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`checkDetailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_checkdetails
-- ----------------------------
INSERT INTO t_checkdetails VALUES ('1', '1', 'upload/20180827191939217.jpg', 'sda');
INSERT INTO t_checkdetails VALUES ('2', '2', 'upload/20180828104818417.jpg', 'asda');
INSERT INTO t_checkdetails VALUES ('3', '3', 'upload/20180828184052990.jpg', '很惨');
INSERT INTO t_checkdetails VALUES ('4', '3', 'upload/20180828184053157.jpg', '特别惨');
INSERT INTO t_checkdetails VALUES ('5', '4', 'upload/20180829104424692.jpg', 'dsa');

-- ----------------------------
-- Table structure for `t_data`
-- ----------------------------
DROP TABLE IF EXISTS `t_data`;
CREATE TABLE `t_data` (
  `dataId` int(11) NOT NULL AUTO_INCREMENT,
  `specificList` varchar(100) DEFAULT NULL,
  `specificInvoice` varchar(100) DEFAULT NULL,
  `remark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`dataId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_data
-- ----------------------------
INSERT INTO t_data VALUES ('1', 'upload/20180827182430680.jpg', 'upload/0827182430680S.jpg', '未审核');
INSERT INTO t_data VALUES ('2', 'upload/20180827182906618.jpg', 'upload/0827182906618S.jpg', '1');

-- ----------------------------
-- Table structure for `t_insurancetype`
-- ----------------------------
DROP TABLE IF EXISTS `t_insurancetype`;
CREATE TABLE `t_insurancetype` (
  `insuranceTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `insuranceTypeName` varchar(30) DEFAULT NULL,
  `insuranceTerm` varchar(30) DEFAULT NULL,
  `insuranceTypeRemark` varchar(100) DEFAULT NULL,
  `insuranceTypeSize` float(20,0) DEFAULT NULL,
  `insuranceTypePrice` float(20,0) DEFAULT NULL,
  PRIMARY KEY (`insuranceTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_insurancetype
-- ----------------------------
INSERT INTO t_insurancetype VALUES ('1', '玻璃险', '一年', '无', '5000', '30000');
INSERT INTO t_insurancetype VALUES ('2', '轮胎险', '一年', '保护你的胎', '200', '1000');
INSERT INTO t_insurancetype VALUES ('3', '车门险', '一年', '保护你的门', '1000', '10000');
INSERT INTO t_insurancetype VALUES ('4', '玻璃险', '1年', '无', '500', '2000');
INSERT INTO t_insurancetype VALUES ('5', '车漆险', '一年', '车漆容易被刮', '500', '2000');

-- ----------------------------
-- Table structure for `t_log`
-- ----------------------------
DROP TABLE IF EXISTS `t_log`;
CREATE TABLE `t_log` (
  `logId` int(11) NOT NULL AUTO_INCREMENT,
  `logName` varchar(50) DEFAULT NULL,
  `logContent` varchar(200) DEFAULT NULL,
  `logTime` varchar(100) DEFAULT NULL,
  `consumeTime` int(11) DEFAULT NULL,
  PRIMARY KEY (`logId`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_log
-- ----------------------------
INSERT INTO t_log VALUES ('5', '长大', '根据昵称和密码查询员工', '2018-08-27 10:43:06.111 ', '71');
INSERT INTO t_log VALUES ('6', '长大', '根据昵称和密码查询员工', '2018-08-27 10:43:06.280 ', '10');
INSERT INTO t_log VALUES ('7', '长大', '遍历员工', '2018-08-27 10:43:31.313 ', '13');
INSERT INTO t_log VALUES ('8', '长大', '根据昵称和密码查询员工', '2018-08-27 10:50:19.353 ', '63');
INSERT INTO t_log VALUES ('9', '长大', '根据昵称和密码查询员工', '2018-08-27 10:50:19.568 ', '11');
INSERT INTO t_log VALUES ('10', '长大', '根据昵称和密码查询员工', '2018-08-27 10:57:25.525 ', '28');
INSERT INTO t_log VALUES ('11', '长大', '根据昵称和密码查询员工', '2018-08-27 10:57:25.684 ', '6');
INSERT INTO t_log VALUES ('12', '长大', '根据昵称和密码查询员工', '2018-08-27 11:05:13.421 ', '43');
INSERT INTO t_log VALUES ('13', '长大', '根据昵称和密码查询员工', '2018-08-27 11:05:13.627 ', '4');
INSERT INTO t_log VALUES ('14', '长大', '根据昵称和密码查询员工', '2018-08-27 11:32:40.624 ', '227');
INSERT INTO t_log VALUES ('15', '长大', '根据昵称和密码查询员工', '2018-08-27 11:32:40.948 ', '13');
INSERT INTO t_log VALUES ('16', '长大', '遍历员工', '2018-08-27 11:33:00.894 ', '20');
INSERT INTO t_log VALUES ('17', '马云', '根据昵称和密码查询员工', '2018-08-27 11:57:20.944 ', '482');
INSERT INTO t_log VALUES ('18', '马云', '根据昵称和密码查询员工', '2018-08-27 11:57:21.517 ', '5');
INSERT INTO t_log VALUES ('19', '马云', '根据昵称和密码查询员工', '2018-08-27 12:00:30.719 ', '38');
INSERT INTO t_log VALUES ('20', '马云', '根据昵称和密码查询员工', '2018-08-27 12:00:30.944 ', '15');
INSERT INTO t_log VALUES ('21', '马云', '遍历员工', '2018-08-27 12:00:45.135 ', '15');

-- ----------------------------
-- Table structure for `t_mycardamage`
-- ----------------------------
DROP TABLE IF EXISTS `t_mycardamage`;
CREATE TABLE `t_mycardamage` (
  `myCarDamageId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `carTypeId` varchar(30) DEFAULT NULL,
  `carType` varchar(30) DEFAULT NULL,
  `carNumber` varchar(30) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  PRIMARY KEY (`myCarDamageId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mycardamage
-- ----------------------------
INSERT INTO t_mycardamage VALUES ('2', '达瓦', '15874957854', '1', '宝马A6', '湘88888', '3980');
INSERT INTO t_mycardamage VALUES ('4', '浑南', '15145154447', '1', '宝马', '湘a5444', '2500');
INSERT INTO t_mycardamage VALUES ('5', '张三', '17895416523', '1', '奥拓一代', '湘15478', '1000');
INSERT INTO t_mycardamage VALUES ('6', '丘处机', '15789456234', '1', '宝马', '湘A5555', '2000');

-- ----------------------------
-- Table structure for `t_mycardamagedetails`
-- ----------------------------
DROP TABLE IF EXISTS `t_mycardamagedetails`;
CREATE TABLE `t_mycardamagedetails` (
  `myCarDamageDetailsId` int(11) NOT NULL AUTO_INCREMENT,
  `myCarDamageId` int(11) DEFAULT NULL,
  `damagePartId` int(11) DEFAULT NULL,
  `damagePartName` varchar(30) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `damageExtend` varchar(30) DEFAULT NULL,
  `damageImg` varchar(100) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `remark` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`myCarDamageDetailsId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_mycardamagedetails
-- ----------------------------
INSERT INTO t_mycardamagedetails VALUES ('1', '2', '1', '车窗', '2', '990', null, 'upload/20180828085036376.jpg', '湖南软评', '没死人');
INSERT INTO t_mycardamagedetails VALUES ('2', '2', '1', '轮胎', '1', '2123', null, 'upload/20180828085036430.jpg', '湖南软评', '不能补');
INSERT INTO t_mycardamagedetails VALUES ('4', '4', '1', '车门', '1', '1500', null, 'upload/20180828105352356.jpg', '湖南东风', '无');
INSERT INTO t_mycardamagedetails VALUES ('5', '4', '1', '车窗玻璃', '2', '500', null, 'upload/20180828105352409.jpg', '湖南东风', '无');
INSERT INTO t_mycardamagedetails VALUES ('6', '5', '1', '轮胎', '2', '550', null, 'upload/20180828184745888.jpg', '菱湖小镇', '暂无');
INSERT INTO t_mycardamagedetails VALUES ('7', '6', '1', '车窗', '1', '500', null, 'upload/20180829105132354.jpg', '华南4s', '暂无');
INSERT INTO t_mycardamagedetails VALUES ('8', '6', '1', '车门', '1', '1500', null, 'upload/20180829105132510.jpg', '华南4s', '弯曲变形');

-- ----------------------------
-- Table structure for `t_nucleardamage`
-- ----------------------------
DROP TABLE IF EXISTS `t_nucleardamage`;
CREATE TABLE `t_nucleardamage` (
  `nuclearDamageId` int(11) NOT NULL AUTO_INCREMENT,
  `assessmentId` int(11) DEFAULT NULL,
  `nuclearDamageTime` datetime DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `UserName` varchar(30) DEFAULT NULL,
  `nuclearDamageStatus` int(11) DEFAULT '0',
  PRIMARY KEY (`nuclearDamageId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_nucleardamage
-- ----------------------------
INSERT INTO t_nucleardamage VALUES ('3', '2', '2018-08-29 02:33:47', '4', '雷军', '4');
INSERT INTO t_nucleardamage VALUES ('4', '4', '2018-08-29 09:56:08', '4', '雷军', '0');
INSERT INTO t_nucleardamage VALUES ('5', '5', null, '4', '雷军', '1');
INSERT INTO t_nucleardamage VALUES ('6', '6', null, '4', '雷军', '2');

-- ----------------------------
-- Table structure for `t_policyholders`
-- ----------------------------
DROP TABLE IF EXISTS `t_policyholders`;
CREATE TABLE `t_policyholders` (
  `policyholdersId` int(11) NOT NULL AUTO_INCREMENT,
  `policyholdersName` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `cardId` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `addressShen` varchar(30) DEFAULT NULL,
  `addressShi` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`policyholdersId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_policyholders
-- ----------------------------
INSERT INTO t_policyholders VALUES ('1', '张杰', '男', '362202199898765678', '13034556789', '天津市', '和平区', '245656789@qq.com');
INSERT INTO t_policyholders VALUES ('4', '', '男', '', '', '请选择省/城市', '请选择城市/地区', '');
INSERT INTO t_policyholders VALUES ('5', '张三', '男', '4309221525697415476', '15748965235', '江苏省', '苏州市', '157841@qq.com');

-- ----------------------------
-- Table structure for `t_recognizee`
-- ----------------------------
DROP TABLE IF EXISTS `t_recognizee`;
CREATE TABLE `t_recognizee` (
  `recognizeeId` int(11) NOT NULL AUTO_INCREMENT,
  `recognizeeName` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `cardId` varchar(30) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `addressShen` varchar(30) DEFAULT NULL,
  `addressShi` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `bankNumber` varchar(30) DEFAULT NULL,
  `driveId` varchar(30) DEFAULT NULL,
  `vehicleLicenseId` varchar(30) DEFAULT NULL,
  `engineId` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`recognizeeId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_recognizee
-- ----------------------------
INSERT INTO t_recognizee VALUES ('1', '刘虎', '男', '431222187877878892', '13677890987', '天津市', '和平区', '565445667@qq.com', '7876789876552222', '213213', '31231', '231231');
INSERT INTO t_recognizee VALUES ('4', '', '男', '', '', '请选择省/城市', '请选择城市/地区', '', '', '', '', '');
INSERT INTO t_recognizee VALUES ('5', '张三', '男', '4309221525697415476', '15748965235', '请选择省/城市', '请选择城市/地区', '157841@qq.com', '1564651132351351213213', 'dasd455121', 'dad798451151', '151asdsxxc155');
INSERT INTO t_recognizee VALUES ('6', '张帆', '男', '362202199878788891', '12256778900', '天津市', '和平区', '125656qq@.com', '2222', '3333', '333', '333');

-- ----------------------------
-- Table structure for `t_report`
-- ----------------------------
DROP TABLE IF EXISTS `t_report`;
CREATE TABLE `t_report` (
  `reportId` int(11) NOT NULL AUTO_INCREMENT,
  `warrantyId` int(11) DEFAULT NULL,
  `reportPersonName` varchar(30) DEFAULT NULL,
  `reporPersontPhone` varchar(100) DEFAULT NULL,
  `reportTime` datetime DEFAULT NULL,
  `reportReason` varchar(100) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `area` varchar(30) DEFAULT NULL,
  `road` varchar(30) DEFAULT NULL,
  `road_direction` varchar(30) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `caseStatus` int(11) DEFAULT '0',
  PRIMARY KEY (`reportId`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_report
-- ----------------------------
INSERT INTO t_report VALUES ('1', '1', 'xz', '13567684561', '2018-08-09 00:00:00', 'xz', '西藏', '拉萨市', '市辖区', 'zx', '由东到西', null, null, '2');
INSERT INTO t_report VALUES ('2', '19', 'www', '14856324569', '2018-08-24 00:00:00', 'dddddd', '西藏', '那曲地区', '安多县', 'dddddwww', '由东到西', null, null, '2');
INSERT INTO t_report VALUES ('3', '23', '李', '15456456445', '2018-08-16 00:00:00', '轮胎爆炸', '贵州', '安顺市', '普定县', '李四路', '由东到西', null, null, '2');
INSERT INTO t_report VALUES ('4', '23', '李四', '15456456445', '2018-08-15 00:00:00', '轮胎爆炸', '陕西', '宝鸡市', '金台区', '李四路', '由南到北', null, null, '2');
INSERT INTO t_report VALUES ('5', '1', 'zx', '13504789456', '2018-08-17 00:00:00', 'j交通', '河南', '安阳市', '安阳县', '个傻瓜到符合', '由东到西', null, null, '1');

-- ----------------------------
-- Table structure for `t_right`
-- ----------------------------
DROP TABLE IF EXISTS `t_right`;
CREATE TABLE `t_right` (
  `rightId` int(11) NOT NULL AUTO_INCREMENT,
  `rightName` varchar(50) DEFAULT NULL,
  `parentId` int(11) DEFAULT NULL,
  PRIMARY KEY (`rightId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_right
-- ----------------------------
INSERT INTO t_right VALUES ('1', '员工管理', '0');
INSERT INTO t_right VALUES ('2', '系统设置', '0');
INSERT INTO t_right VALUES ('3', '保单管理', '0');
INSERT INTO t_right VALUES ('4', '接案管理', '0');
INSERT INTO t_right VALUES ('5', '勘察管理', '0');
INSERT INTO t_right VALUES ('6', '定损核损', '0');
INSERT INTO t_right VALUES ('7', '理算核赔', '0');
INSERT INTO t_right VALUES ('8', '更新员工', '1');

-- ----------------------------
-- Table structure for `t_role`
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `roleId` int(11) NOT NULL AUTO_INCREMENT,
  `roleName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_role
-- ----------------------------
INSERT INTO t_role VALUES ('1', 'BOSS');
INSERT INTO t_role VALUES ('2', '勘察员');
INSERT INTO t_role VALUES ('3', '接案员');
INSERT INTO t_role VALUES ('4', '核损员');
INSERT INTO t_role VALUES ('5', '理赔员');
INSERT INTO t_role VALUES ('6', '保单员');
INSERT INTO t_role VALUES ('7', '定损员');
INSERT INTO t_role VALUES ('8', '结案员');
INSERT INTO t_role VALUES ('9', 'ddd');
INSERT INTO t_role VALUES ('10', '勘察员');

-- ----------------------------
-- Table structure for `t_roleright`
-- ----------------------------
DROP TABLE IF EXISTS `t_roleright`;
CREATE TABLE `t_roleright` (
  `roleId` int(11) DEFAULT NULL,
  `rightId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_roleright
-- ----------------------------
INSERT INTO t_roleright VALUES ('1', '1');
INSERT INTO t_roleright VALUES ('1', '2');
INSERT INTO t_roleright VALUES ('1', '3');

-- ----------------------------
-- Table structure for `t_settleclaim`
-- ----------------------------
DROP TABLE IF EXISTS `t_settleclaim`;
CREATE TABLE `t_settleclaim` (
  `settleclaimId` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` int(11) DEFAULT NULL,
  `nuclearDamageId` int(11) DEFAULT NULL,
  `settleClaimPrice` int(11) DEFAULT NULL,
  `settleClaimTime` varchar(30) DEFAULT NULL,
  `settleClaimStatus` int(11) DEFAULT '0',
  `userName` varchar(30) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`settleclaimId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_settleclaim
-- ----------------------------
INSERT INTO t_settleclaim VALUES ('1', '1', '3', '8950', '2018-08-29 11:03:31', '1', null, '5');
INSERT INTO t_settleclaim VALUES ('2', '2', '4', '12900', null, '0', null, '5');

-- ----------------------------
-- Table structure for `t_settlement`
-- ----------------------------
DROP TABLE IF EXISTS `t_settlement`;
CREATE TABLE `t_settlement` (
  `settlementId` int(11) NOT NULL AUTO_INCREMENT,
  `caseId` int(11) DEFAULT NULL,
  `adverseCarDamageId` int(11) DEFAULT NULL,
  `settlementPrice` int(11) DEFAULT NULL,
  `settlementTime` datetime DEFAULT NULL,
  `settlementStatus` int(11) DEFAULT '0',
  `userName` varchar(30) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`settlementId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_settlement
-- ----------------------------

-- ----------------------------
-- Table structure for `t_standardprice`
-- ----------------------------
DROP TABLE IF EXISTS `t_standardprice`;
CREATE TABLE `t_standardprice` (
  `standardPriceId` int(11) NOT NULL AUTO_INCREMENT,
  `insuranceTypeId` int(11) DEFAULT NULL,
  `warrantyId` int(11) DEFAULT NULL,
  `standardPrice` int(11) DEFAULT NULL,
  `standardPriceRemark` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`standardPriceId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_standardprice
-- ----------------------------

-- ----------------------------
-- Table structure for `t_user`
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(30) DEFAULT NULL,
  `cardId` varchar(30) DEFAULT NULL,
  `workTime` varchar(30) DEFAULT NULL,
  `sex` varchar(2) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `province` varchar(30) DEFAULT NULL,
  `city` varchar(30) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `leaveStatus` int(11) DEFAULT '0',
  `img` varchar(30) DEFAULT NULL,
  `account` varchar(30) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO t_user VALUES ('1', '王多鱼', '362227198611223248', '2018-08-19 23:28:30', '男', '25', '14789574863', '上海市', '丰贤区', '895748635@qq.com', '0', 'upload/20180819225433475.jpg', '年年有余', '123456');
INSERT INTO t_user VALUES ('2', '马云', '362227198611224756', '2018-08-19 23:31:33', '男', '26', '14789574584', '深圳市', '罗湖区', '789574584@qq.com', '0', 'upload/20180819233133712.jpg', '阿里巴巴', '123456');
INSERT INTO t_user VALUES ('3', '朱丽叶', '362227198611222563', '2018-08-20 09:07:34', '女', '26', '14789574863', '上海市', '丰贤区', '568748635@qq.com', '0', 'upload/20180820090734194.jpg', '我爱企鹅', '123456');
INSERT INTO t_user VALUES ('4', '雷军', '362227198611221458', '2018-08-20 09:31:48', '男', '30', '14758574863', '天津市', '南开区', '869748635@qq.com', '0', 'upload/20180820093148787.jpg', '风口来了', '654321');
INSERT INTO t_user VALUES ('5', '董明珠', '362227199111223245', '2018-08-20 09:40:03', '女', '27', '14789574862', '江苏省', '苏州市', '147895748@qq.com', '0', 'upload/20180820094003525.jpg', '董小姐', '123456');
INSERT INTO t_user VALUES ('6', '乔布斯', '362227197910223249', '2018-08-20 10:17:00', '男', '39', '14789574356', '江苏省', '无锡市', '568748563@qq.com', '0', 'upload/20180820101700702.jpg', '大苹果', '123456');
INSERT INTO t_user VALUES ('9', '巴菲特', '362227198811223248', '2018-08-21 11:16:51', '女', '30', '14789574635', '北京市', '朝阳区', '89574368@qq.com', '0', 'upload/20180823185531947.jpg', '牛市', '123456');
INSERT INTO t_user VALUES ('10', '核心', '456465465464564654', '2018-08-28 08:37:50', '男', '23', '15874957854', '北京市', '海淀区', '1745545@qq.com', '0', 'upload/20180828083750041.jpg', '大赛', '123456');
INSERT INTO t_user VALUES ('11', '丘处机', '456132122002345612200', '2018-08-29 06:31:28', '男', '33', '15789456234', '天津市', '河东区', '15789456234@sign.com', '0', 'upload/20180829063128001.jpg', 'hello', '123456');
INSERT INTO t_user VALUES ('12', 'DDDD', '454644766565226566', '2018-08-29 11:06:29', '女', '23', '458767367767', '海南省', '海口市', '734343', '0', 'upload/20180829110629033.jpg', 'dddd', '123456');

-- ----------------------------
-- Table structure for `t_userrole`
-- ----------------------------
DROP TABLE IF EXISTS `t_userrole`;
CREATE TABLE `t_userrole` (
  `userId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of t_userrole
-- ----------------------------
INSERT INTO t_userrole VALUES ('1', '1');
INSERT INTO t_userrole VALUES ('2', '2');
INSERT INTO t_userrole VALUES ('4', '4');
INSERT INTO t_userrole VALUES ('5', '5');
INSERT INTO t_userrole VALUES ('6', '6');
INSERT INTO t_userrole VALUES ('9', '2');
INSERT INTO t_userrole VALUES ('3', '3');
INSERT INTO t_userrole VALUES ('10', '7');
INSERT INTO t_userrole VALUES ('2', '7');
INSERT INTO t_userrole VALUES ('11', '8');
INSERT INTO t_userrole VALUES ('12', '8');

-- ----------------------------
-- Table structure for `t_warranty`
-- ----------------------------
DROP TABLE IF EXISTS `t_warranty`;
CREATE TABLE `t_warranty` (
  `warrantyId` int(11) NOT NULL AUTO_INCREMENT,
  `policyholdersId` int(11) DEFAULT NULL,
  `policyholdersName` varchar(30) DEFAULT NULL,
  `policyholderPhone` varchar(30) DEFAULT NULL,
  `recognizeeId` int(11) DEFAULT NULL,
  `recognizeeName` varchar(30) DEFAULT NULL,
  `recognizeeIdCard` varchar(30) DEFAULT NULL,
  `insuranceBeginTime` varchar(30) DEFAULT NULL,
  `insuranceEndTime` varchar(30) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `carTypeId` int(11) DEFAULT NULL,
  `carTypeName` varchar(30) DEFAULT NULL,
  `insurancePrice` int(11) DEFAULT NULL,
  `warrantyPrice` int(11) DEFAULT NULL,
  `signingDate` varchar(30) DEFAULT NULL,
  `paymentDate` varchar(30) DEFAULT NULL,
  `sailId` varchar(50) DEFAULT NULL,
  `driverId` varchar(50) DEFAULT NULL,
  `engineId` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`warrantyId`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warranty
-- ----------------------------
INSERT INTO t_warranty VALUES ('1', null, null, null, null, null, null, null, '2018-08-31', null, null, null, null, null, null, null, null, null, null, null);
INSERT INTO t_warranty VALUES ('23', '5', '张三', '15748965235', '5', '张三', '4309221525697415476', '2018-08-15', '2018-09-06', '2', '马云', '7', '奥拓一代', '6500', '112000', '2018-08-15', '2018-08-15', 'dad798451151', 'dasd455121', '151asdsxxc155');
INSERT INTO t_warranty VALUES ('24', '5', '张三', '15748965235', '6', '张帆', '362202199878788891', '2018-08-01', '2018-08-17', '6', '乔布斯', '7', '奥拓一代', '5200', '31000', '2018-08-25', '2018-08-02', '333', '3333', '333');

-- ----------------------------
-- Table structure for `t_warrantyinsurancetype`
-- ----------------------------
DROP TABLE IF EXISTS `t_warrantyinsurancetype`;
CREATE TABLE `t_warrantyinsurancetype` (
  `warrantyId` int(11) DEFAULT NULL,
  `insuranceTypeId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_warrantyinsurancetype
-- ----------------------------
INSERT INTO t_warrantyinsurancetype VALUES ('1', '1');
INSERT INTO t_warrantyinsurancetype VALUES ('1', '2');
INSERT INTO t_warrantyinsurancetype VALUES ('1', '3');
INSERT INTO t_warrantyinsurancetype VALUES ('2', '1');
INSERT INTO t_warrantyinsurancetype VALUES ('2', '3');
INSERT INTO t_warrantyinsurancetype VALUES ('24', '2');
INSERT INTO t_warrantyinsurancetype VALUES ('24', '1');
