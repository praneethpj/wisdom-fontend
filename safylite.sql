/*
Navicat MySQL Data Transfer

Source Server         : newcon
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : safylite

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2018-10-11 07:10:32
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for `attendance`
-- ----------------------------
DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `subject_ID` int(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `in_time` time DEFAULT NULL,
  `out_time` time DEFAULT NULL,
  `student_id` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of attendance
-- ----------------------------

-- ----------------------------
-- Table structure for `download`
-- ----------------------------
DROP TABLE IF EXISTS `download`;
CREATE TABLE `download` (
  `teacher_id` int(100) DEFAULT NULL,
  `student_id` int(100) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of download
-- ----------------------------

-- ----------------------------
-- Table structure for `exam`
-- ----------------------------
DROP TABLE IF EXISTS `exam`;
CREATE TABLE `exam` (
  `ExamId` int(100) NOT NULL DEFAULT '0',
  `Name` varchar(50) DEFAULT NULL,
  `Academic_Year` varchar(10) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `teacher_id` int(100) DEFAULT NULL,
  `student_id` int(100) DEFAULT NULL,
  `subject_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`ExamId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of exam
-- ----------------------------

-- ----------------------------
-- Table structure for `hall`
-- ----------------------------
DROP TABLE IF EXISTS `hall`;
CREATE TABLE `hall` (
  `hallid` int(100) NOT NULL AUTO_INCREMENT,
  `hallname` varchar(100) DEFAULT NULL,
  `capacity` int(5) DEFAULT NULL,
  `subject_id` int(100) DEFAULT NULL,
  `institute_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`hallid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of hall
-- ----------------------------

-- ----------------------------
-- Table structure for `instituition`
-- ----------------------------
DROP TABLE IF EXISTS `instituition`;
CREATE TABLE `instituition` (
  `instituition_name` varchar(11) NOT NULL DEFAULT '0',
  `location` char(0) DEFAULT NULL,
  `longitude` char(0) DEFAULT NULL,
  `latitude` char(0) DEFAULT NULL,
  `student_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`instituition_name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of instituition
-- ----------------------------

-- ----------------------------
-- Table structure for `marks`
-- ----------------------------
DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `student_id` int(100) DEFAULT NULL,
  `exam_id` int(100) DEFAULT NULL,
  `mark` double(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of marks
-- ----------------------------

-- ----------------------------
-- Table structure for `parent`
-- ----------------------------
DROP TABLE IF EXISTS `parent`;
CREATE TABLE `parent` (
  `parent_id` int(100) NOT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `address_line1` varchar(100) DEFAULT NULL,
  `city` varchar(100) DEFAULT NULL,
  `mobile_sms` int(11) DEFAULT NULL,
  `mobile_call` int(11) DEFAULT NULL,
  `nic` int(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of parent
-- ----------------------------

-- ----------------------------
-- Table structure for `payment`
-- ----------------------------
DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `student_id` int(100) DEFAULT NULL,
  `subject_id` int(100) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `discount` double(10,0) DEFAULT NULL,
  `amount` double(10,0) DEFAULT NULL,
  `payment_id` int(100) NOT NULL DEFAULT '0',
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment
-- ----------------------------

-- ----------------------------
-- Table structure for `payment_info`
-- ----------------------------
DROP TABLE IF EXISTS `payment_info`;
CREATE TABLE `payment_info` (
  `student_id` int(100) DEFAULT NULL,
  `subject_id` int(100) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_id` int(100) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of payment_info
-- ----------------------------

-- ----------------------------
-- Table structure for `rate`
-- ----------------------------
DROP TABLE IF EXISTS `rate`;
CREATE TABLE `rate` (
  `student_id` int(100) DEFAULT NULL,
  `teacher_id` int(100) DEFAULT NULL,
  `rate` varchar(10) DEFAULT NULL,
  `rate_type` int(5) DEFAULT NULL,
  `comment` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of rate
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `student_id` int(11) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(0) DEFAULT NULL,
  `last_name` varchar(0) DEFAULT NULL,
  `gender` varchar(0) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `school` varchar(0) DEFAULT NULL,
  `barcode` char(0) DEFAULT NULL,
  `grade` varchar(0) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `parent_nic` int(11) DEFAULT NULL,
  `uid` int(11) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of student
-- ----------------------------

-- ----------------------------
-- Table structure for `subject`
-- ----------------------------
DROP TABLE IF EXISTS `subject`;
CREATE TABLE `subject` (
  `subject_ID` int(100) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `subject_type` varchar(50) DEFAULT NULL,
  `teacher_ID` int(100) DEFAULT NULL,
  PRIMARY KEY (`subject_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of subject
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher_exam`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_exam`;
CREATE TABLE `teacher_exam` (
  `teacherid` int(100) DEFAULT NULL,
  `examid` int(100) DEFAULT NULL,
  `preparedate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_exam
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher_material`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_material`;
CREATE TABLE `teacher_material` (
  `teacher_id` int(100) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `createdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_material
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher_payment`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_payment`;
CREATE TABLE `teacher_payment` (
  `payment_id` int(100) NOT NULL AUTO_INCREMENT,
  `amount` double(10,0) DEFAULT NULL,
  `incentive` double(10,0) DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `teacher_id` int(100) DEFAULT NULL,
  PRIMARY KEY (`payment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_payment
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher_paymentinfo`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_paymentinfo`;
CREATE TABLE `teacher_paymentinfo` (
  `payment_id` int(100) NOT NULL,
  `subject_id` int(100) DEFAULT NULL,
  `teacher_id` int(100) DEFAULT NULL,
  `payment_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_paymentinfo
-- ----------------------------

-- ----------------------------
-- Table structure for `teacher_subject`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_subject`;
CREATE TABLE `teacher_subject` (
  `teacherid` int(100) DEFAULT NULL,
  `subjectid` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of teacher_subject
-- ----------------------------

-- ----------------------------
-- Table structure for `upload`
-- ----------------------------
DROP TABLE IF EXISTS `upload`;
CREATE TABLE `upload` (
  `teacher_id` int(100) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of upload
-- ----------------------------

-- ----------------------------
-- Table structure for `user_account`
-- ----------------------------
DROP TABLE IF EXISTS `user_account`;
CREATE TABLE `user_account` (
  `user_id` int(100) NOT NULL DEFAULT '0',
  `user_name` varchar(100) DEFAULT NULL,
  `user_type` varchar(5) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `activated` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of user_account
-- ----------------------------
