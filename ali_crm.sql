/*
Navicat MySQL Data Transfer

Source Server         : s16
Source Server Version : 50642
Source Host           : localhost:3306
Source Database       : ali_crm

Target Server Type    : MYSQL
Target Server Version : 50642
File Encoding         : 65001

Date: 2019-02-15 15:44:05
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `auth_group`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_group_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_group_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_permission`
-- ----------------------------
DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_permission
-- ----------------------------
INSERT INTO `auth_permission` VALUES ('1', 'Can add log entry', '1', 'add_logentry');
INSERT INTO `auth_permission` VALUES ('2', 'Can change log entry', '1', 'change_logentry');
INSERT INTO `auth_permission` VALUES ('3', 'Can delete log entry', '1', 'delete_logentry');
INSERT INTO `auth_permission` VALUES ('4', 'Can add permission', '2', 'add_permission');
INSERT INTO `auth_permission` VALUES ('5', 'Can change permission', '2', 'change_permission');
INSERT INTO `auth_permission` VALUES ('6', 'Can delete permission', '2', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('7', 'Can add group', '3', 'add_group');
INSERT INTO `auth_permission` VALUES ('8', 'Can change group', '3', 'change_group');
INSERT INTO `auth_permission` VALUES ('9', 'Can delete group', '3', 'delete_group');
INSERT INTO `auth_permission` VALUES ('10', 'Can add user', '4', 'add_user');
INSERT INTO `auth_permission` VALUES ('11', 'Can change user', '4', 'change_user');
INSERT INTO `auth_permission` VALUES ('12', 'Can delete user', '4', 'delete_user');
INSERT INTO `auth_permission` VALUES ('13', 'Can add content type', '5', 'add_contenttype');
INSERT INTO `auth_permission` VALUES ('14', 'Can change content type', '5', 'change_contenttype');
INSERT INTO `auth_permission` VALUES ('15', 'Can delete content type', '5', 'delete_contenttype');
INSERT INTO `auth_permission` VALUES ('16', 'Can add session', '6', 'add_session');
INSERT INTO `auth_permission` VALUES ('17', 'Can change session', '6', 'change_session');
INSERT INTO `auth_permission` VALUES ('18', 'Can delete session', '6', 'delete_session');
INSERT INTO `auth_permission` VALUES ('19', 'Can add campuses', '7', 'add_campuses');
INSERT INTO `auth_permission` VALUES ('20', 'Can change campuses', '7', 'change_campuses');
INSERT INTO `auth_permission` VALUES ('21', 'Can delete campuses', '7', 'delete_campuses');
INSERT INTO `auth_permission` VALUES ('22', 'Can add class list', '8', 'add_classlist');
INSERT INTO `auth_permission` VALUES ('23', 'Can change class list', '8', 'change_classlist');
INSERT INTO `auth_permission` VALUES ('24', 'Can delete class list', '8', 'delete_classlist');
INSERT INTO `auth_permission` VALUES ('25', 'Can add consult record', '9', 'add_consultrecord');
INSERT INTO `auth_permission` VALUES ('26', 'Can change consult record', '9', 'change_consultrecord');
INSERT INTO `auth_permission` VALUES ('27', 'Can delete consult record', '9', 'delete_consultrecord');
INSERT INTO `auth_permission` VALUES ('28', 'Can add course record', '10', 'add_courserecord');
INSERT INTO `auth_permission` VALUES ('29', 'Can change course record', '10', 'change_courserecord');
INSERT INTO `auth_permission` VALUES ('30', 'Can delete course record', '10', 'delete_courserecord');
INSERT INTO `auth_permission` VALUES ('31', 'Can add customer', '11', 'add_customer');
INSERT INTO `auth_permission` VALUES ('32', 'Can change customer', '11', 'change_customer');
INSERT INTO `auth_permission` VALUES ('33', 'Can delete customer', '11', 'delete_customer');
INSERT INTO `auth_permission` VALUES ('34', 'Can add department', '12', 'add_department');
INSERT INTO `auth_permission` VALUES ('35', 'Can change department', '12', 'change_department');
INSERT INTO `auth_permission` VALUES ('36', 'Can delete department', '12', 'delete_department');
INSERT INTO `auth_permission` VALUES ('37', 'Can add enrollment', '13', 'add_enrollment');
INSERT INTO `auth_permission` VALUES ('38', 'Can change enrollment', '13', 'change_enrollment');
INSERT INTO `auth_permission` VALUES ('39', 'Can delete enrollment', '13', 'delete_enrollment');
INSERT INTO `auth_permission` VALUES ('40', 'Can add payment record', '14', 'add_paymentrecord');
INSERT INTO `auth_permission` VALUES ('41', 'Can change payment record', '14', 'change_paymentrecord');
INSERT INTO `auth_permission` VALUES ('42', 'Can delete payment record', '14', 'delete_paymentrecord');
INSERT INTO `auth_permission` VALUES ('43', 'Can add study record', '15', 'add_studyrecord');
INSERT INTO `auth_permission` VALUES ('44', 'Can change study record', '15', 'change_studyrecord');
INSERT INTO `auth_permission` VALUES ('45', 'Can delete study record', '15', 'delete_studyrecord');
INSERT INTO `auth_permission` VALUES ('46', 'Can add user profile', '16', 'add_userprofile');
INSERT INTO `auth_permission` VALUES ('47', 'Can change user profile', '16', 'change_userprofile');
INSERT INTO `auth_permission` VALUES ('48', 'Can delete user profile', '16', 'delete_userprofile');
INSERT INTO `auth_permission` VALUES ('49', 'Can add 权限', '17', 'add_permission');
INSERT INTO `auth_permission` VALUES ('50', 'Can change 权限', '17', 'change_permission');
INSERT INTO `auth_permission` VALUES ('51', 'Can delete 权限', '17', 'delete_permission');
INSERT INTO `auth_permission` VALUES ('52', 'Can add menu', '18', 'add_menu');
INSERT INTO `auth_permission` VALUES ('53', 'Can change menu', '18', 'change_menu');
INSERT INTO `auth_permission` VALUES ('54', 'Can delete menu', '18', 'delete_menu');
INSERT INTO `auth_permission` VALUES ('55', 'Can add role', '19', 'add_role');
INSERT INTO `auth_permission` VALUES ('56', 'Can change role', '19', 'change_role');
INSERT INTO `auth_permission` VALUES ('57', 'Can delete role', '19', 'delete_role');

-- ----------------------------
-- Table structure for `auth_user`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user
-- ----------------------------
INSERT INTO `auth_user` VALUES ('1', 'pbkdf2_sha256$36000$T4NXvEShwfBn$LSSDDcDwOxj0mv0aJYEGBr8lKbR53rW95JQMFRklQSY=', '2018-12-18 03:00:15.874223', '1', 'root', '', '', '', '1', '1', '2018-12-17 02:19:29.059073');

-- ----------------------------
-- Table structure for `auth_user_groups`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_groups
-- ----------------------------

-- ----------------------------
-- Table structure for `auth_user_user_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_user_user_permissions
-- ----------------------------

-- ----------------------------
-- Table structure for `crm_campuses`
-- ----------------------------
DROP TABLE IF EXISTS `crm_campuses`;
CREATE TABLE `crm_campuses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `address` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_campuses
-- ----------------------------
INSERT INTO `crm_campuses` VALUES ('1', '北京', null);

-- ----------------------------
-- Table structure for `crm_classlist`
-- ----------------------------
DROP TABLE IF EXISTS `crm_classlist`;
CREATE TABLE `crm_classlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(64) NOT NULL,
  `semester` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `memo` varchar(100) DEFAULT NULL,
  `start_date` date NOT NULL,
  `graduate_date` date DEFAULT NULL,
  `class_type` varchar(64) DEFAULT NULL,
  `campuses_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_classlist_course_semester_campuses_id_118b09f0_uniq` (`course`,`semester`,`campuses_id`),
  KEY `crm_classlist_campuses_id_34b62f4c_fk_crm_campuses_id` (`campuses_id`),
  CONSTRAINT `crm_classlist_campuses_id_34b62f4c_fk_crm_campuses_id` FOREIGN KEY (`campuses_id`) REFERENCES `crm_campuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_classlist
-- ----------------------------
INSERT INTO `crm_classlist` VALUES ('1', 'PythonFullStack', '1', '10000', null, '2018-12-17', null, 'fulltime', '1');
INSERT INTO `crm_classlist` VALUES ('2', 'Linux', '1', '10000', null, '2018-12-17', null, null, '1');
INSERT INTO `crm_classlist` VALUES ('3', 'Linux', '2', '10000', null, '2018-12-17', null, null, '1');

-- ----------------------------
-- Table structure for `crm_classlist_teachers`
-- ----------------------------
DROP TABLE IF EXISTS `crm_classlist_teachers`;
CREATE TABLE `crm_classlist_teachers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classlist_id` int(11) NOT NULL,
  `userprofile_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_classlist_teachers_classlist_id_userprofile_id_fdeb6cf0_uniq` (`classlist_id`,`userprofile_id`),
  KEY `crm_classlist_teache_userprofile_id_4ba87056_fk_crm_userp` (`userprofile_id`),
  CONSTRAINT `crm_classlist_teache_userprofile_id_4ba87056_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_classlist_teachers_classlist_id_4b676750_fk_crm_classlist_id` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_classlist_teachers
-- ----------------------------
INSERT INTO `crm_classlist_teachers` VALUES ('1', '1', '3');
INSERT INTO `crm_classlist_teachers` VALUES ('2', '2', '1');
INSERT INTO `crm_classlist_teachers` VALUES ('3', '3', '1');
INSERT INTO `crm_classlist_teachers` VALUES ('4', '3', '2');
INSERT INTO `crm_classlist_teachers` VALUES ('5', '3', '3');

-- ----------------------------
-- Table structure for `crm_consultrecord`
-- ----------------------------
DROP TABLE IF EXISTS `crm_consultrecord`;
CREATE TABLE `crm_consultrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `note` longtext NOT NULL,
  `status` varchar(8) NOT NULL,
  `date` datetime(6) NOT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userprofile_id` (`consultant_id`),
  KEY `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id` (`customer_id`),
  CONSTRAINT `crm_consultrecord_consultant_id_0a04c00c_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_consultrecord_customer_id_c1259023_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_consultrecord
-- ----------------------------
INSERT INTO `crm_consultrecord` VALUES ('1', 'xxxxx', 'E', '2018-12-19 02:31:00.314077', '0', '1', '2');
INSERT INTO `crm_consultrecord` VALUES ('2', 'aasdd', 'C', '2018-12-19 03:15:17.711018', '0', '1', '2');
INSERT INTO `crm_consultrecord` VALUES ('3', 'zxxxx', 'B', '2018-12-19 07:14:18.020610', '0', '1', '3');
INSERT INTO `crm_consultrecord` VALUES ('4', 'asdasd', 'A', '2018-12-28 07:52:44.898713', '0', '1', '4');

-- ----------------------------
-- Table structure for `crm_courserecord`
-- ----------------------------
DROP TABLE IF EXISTS `crm_courserecord`;
CREATE TABLE `crm_courserecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_num` int(11) NOT NULL,
  `date` date NOT NULL,
  `course_title` varchar(64) DEFAULT NULL,
  `course_memo` longtext,
  `has_homework` tinyint(1) NOT NULL,
  `homework_title` varchar(64) DEFAULT NULL,
  `homework_memo` longtext,
  `scoring_point` longtext,
  `re_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_courserecord_re_class_id_day_num_90a7cd93_uniq` (`re_class_id`,`day_num`),
  KEY `crm_courserecord_teacher_id_3ace9808_fk_crm_userprofile_id` (`teacher_id`),
  CONSTRAINT `crm_courserecord_re_class_id_f13402af_fk_crm_classlist_id` FOREIGN KEY (`re_class_id`) REFERENCES `crm_classlist` (`id`),
  CONSTRAINT `crm_courserecord_teacher_id_3ace9808_fk_crm_userprofile_id` FOREIGN KEY (`teacher_id`) REFERENCES `crm_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_courserecord
-- ----------------------------
INSERT INTO `crm_courserecord` VALUES ('1', '1', '2018-12-20', 'asdasasdas', '123123', '1', null, 'asdasd', '', '3', '1');
INSERT INTO `crm_courserecord` VALUES ('2', '2', '2018-12-20', null, 'qwqweqwe', '1', null, '', '', '3', '1');

-- ----------------------------
-- Table structure for `crm_customer`
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer`;
CREATE TABLE `crm_customer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `qq` varchar(64) NOT NULL,
  `qq_name` varchar(64) DEFAULT NULL,
  `name` varchar(32) DEFAULT NULL,
  `sex` varchar(16) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `source` varchar(64) NOT NULL,
  `course` varchar(21) NOT NULL,
  `class_type` varchar(64) NOT NULL,
  `customer_note` longtext,
  `status` varchar(64) NOT NULL,
  `network_consult_note` longtext,
  `date` datetime(6) NOT NULL,
  `last_consult_date` date NOT NULL,
  `next_date` date DEFAULT NULL,
  `consultant_id` int(11) DEFAULT NULL,
  `introduce_from_id` int(11) DEFAULT NULL,
  `network_consultant_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `qq` (`qq`),
  KEY `crm_customer_consultant_id_11f5298a_fk_crm_userprofile_id` (`consultant_id`),
  KEY `crm_customer_introduce_from_id_2ca323af_fk_crm_customer_id` (`introduce_from_id`),
  KEY `crm_customer_network_consultant_i_1b6675eb_fk_crm_userp` (`network_consultant_id`),
  CONSTRAINT `crm_customer_consultant_id_11f5298a_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_customer_introduce_from_id_2ca323af_fk_crm_customer_id` FOREIGN KEY (`introduce_from_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_customer_network_consultant_i_1b6675eb_fk_crm_userp` FOREIGN KEY (`network_consultant_id`) REFERENCES `crm_userprofile` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer
-- ----------------------------
INSERT INTO `crm_customer` VALUES ('2', '239966930011', null, null, 'female', '2018-12-17', null, 'qq', 'PythonFullStack', 'fulltime', '', 'studying', '', '2018-12-17 02:31:23.096023', '2018-12-17', null, '1', null, null);
INSERT INTO `crm_customer` VALUES ('3', '2399669301', null, '太亮', 'male', '2018-12-28', null, 'qq', 'PythonFullStack', 'fulltime', '', 'studying', '', '2018-12-17 02:31:48.169878', '2018-12-17', null, null, null, null);
INSERT INTO `crm_customer` VALUES ('4', '2399669302', null, null, 'male', null, null, 'qq', 'Linux', 'fulltime', '', 'unregistered', '', '2018-12-18 01:38:49.724627', '2018-12-18', null, '1', null, null);
INSERT INTO `crm_customer` VALUES ('5', '2399669300222', null, null, 'male', null, null, 'qq', 'PythonFullStack', 'fulltime', '', 'unregistered', '', '2018-12-18 02:22:35.285167', '2018-12-18', null, '2', null, null);
INSERT INTO `crm_customer` VALUES ('6', '239966930123555', null, null, 'male', null, null, 'qq', 'PythonFullStack', 'fulltime', '', 'unregistered', '', '2018-12-18 02:24:55.301822', '2018-12-18', null, '1', null, null);
INSERT INTO `crm_customer` VALUES ('7', '23996693023', null, null, 'male', null, null, 'qq', 'Linux', 'fulltime', '', 'unregistered', '', '2018-12-18 07:29:40.071521', '2018-12-18', null, null, null, null);
INSERT INTO `crm_customer` VALUES ('8', '2399669300112122', null, null, 'male', null, null, 'qq', 'Linux', 'fulltime', '', 'unregistered', '', '2018-12-18 07:29:52.773590', '2018-12-18', null, null, null, null);

-- ----------------------------
-- Table structure for `crm_customer_class_list`
-- ----------------------------
DROP TABLE IF EXISTS `crm_customer_class_list`;
CREATE TABLE `crm_customer_class_list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `classlist_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_customer_class_list_customer_id_classlist_id_965b57d6_uniq` (`customer_id`,`classlist_id`),
  KEY `crm_customer_class_l_classlist_id_d6308406_fk_crm_class` (`classlist_id`),
  CONSTRAINT `crm_customer_class_l_classlist_id_d6308406_fk_crm_class` FOREIGN KEY (`classlist_id`) REFERENCES `crm_classlist` (`id`),
  CONSTRAINT `crm_customer_class_list_customer_id_bd17a54f_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_customer_class_list
-- ----------------------------
INSERT INTO `crm_customer_class_list` VALUES ('6', '2', '3');
INSERT INTO `crm_customer_class_list` VALUES ('7', '3', '3');

-- ----------------------------
-- Table structure for `crm_department`
-- ----------------------------
DROP TABLE IF EXISTS `crm_department`;
CREATE TABLE `crm_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `count` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_department
-- ----------------------------

-- ----------------------------
-- Table structure for `crm_enrollment`
-- ----------------------------
DROP TABLE IF EXISTS `crm_enrollment`;
CREATE TABLE `crm_enrollment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `why_us` longtext,
  `your_expectation` longtext,
  `contract_agreed` tinyint(1) NOT NULL,
  `contract_approved` tinyint(1) NOT NULL,
  `enrolled_date` datetime(6) NOT NULL,
  `memo` longtext,
  `delete_status` tinyint(1) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enrolment_class_id` int(11) NOT NULL,
  `school_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_enrollment_enrolment_class_id_customer_id_8283d1dd_uniq` (`enrolment_class_id`,`customer_id`),
  KEY `crm_enrollment_customer_id_4e9336cf_fk_crm_customer_id` (`customer_id`),
  KEY `crm_enrollment_school_id_b5e8c943_fk_crm_campuses_id` (`school_id`),
  CONSTRAINT `crm_enrollment_customer_id_4e9336cf_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_enrollment_enrolment_class_id_8500dce0_fk_crm_classlist_id` FOREIGN KEY (`enrolment_class_id`) REFERENCES `crm_classlist` (`id`),
  CONSTRAINT `crm_enrollment_school_id_b5e8c943_fk_crm_campuses_id` FOREIGN KEY (`school_id`) REFERENCES `crm_campuses` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_enrollment
-- ----------------------------
INSERT INTO `crm_enrollment` VALUES ('1', '真想不开！！', '', '0', '0', '2018-12-19 07:58:14.245259', '', '0', '2', '1', '1');

-- ----------------------------
-- Table structure for `crm_paymentrecord`
-- ----------------------------
DROP TABLE IF EXISTS `crm_paymentrecord`;
CREATE TABLE `crm_paymentrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pay_type` varchar(64) NOT NULL,
  `paid_fee` int(11) NOT NULL,
  `note` longtext,
  `date` datetime(6) NOT NULL,
  `course` varchar(64) DEFAULT NULL,
  `class_type` varchar(64) DEFAULT NULL,
  `delete_status` tinyint(1) NOT NULL,
  `status` int(11) NOT NULL,
  `confirm_date` datetime(6) DEFAULT NULL,
  `confirm_user_id` int(11) DEFAULT NULL,
  `consultant_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `enrolment_class_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `crm_paymentrecord_confirm_user_id_e88e5f25_fk_crm_userprofile_id` (`confirm_user_id`),
  KEY `crm_paymentrecord_consultant_id_45289fb8_fk_crm_userprofile_id` (`consultant_id`),
  KEY `crm_paymentrecord_customer_id_cd6d33f2_fk_crm_customer_id` (`customer_id`),
  KEY `crm_paymentrecord_enrolment_class_id_36cbd119_fk_crm_class` (`enrolment_class_id`),
  CONSTRAINT `crm_paymentrecord_confirm_user_id_e88e5f25_fk_crm_userprofile_id` FOREIGN KEY (`confirm_user_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_paymentrecord_consultant_id_45289fb8_fk_crm_userprofile_id` FOREIGN KEY (`consultant_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_paymentrecord_customer_id_cd6d33f2_fk_crm_customer_id` FOREIGN KEY (`customer_id`) REFERENCES `crm_customer` (`id`),
  CONSTRAINT `crm_paymentrecord_enrolment_class_id_36cbd119_fk_crm_class` FOREIGN KEY (`enrolment_class_id`) REFERENCES `crm_classlist` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_paymentrecord
-- ----------------------------

-- ----------------------------
-- Table structure for `crm_studyrecord`
-- ----------------------------
DROP TABLE IF EXISTS `crm_studyrecord`;
CREATE TABLE `crm_studyrecord` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `attendance` varchar(64) NOT NULL,
  `score` int(11) NOT NULL,
  `homework_note` varchar(255) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `note` varchar(255) DEFAULT NULL,
  `homework` varchar(100) DEFAULT NULL,
  `course_record_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_studyrecord_course_record_id_student_id_c1b4eb36_uniq` (`course_record_id`,`student_id`),
  KEY `crm_studyrecord_student_id_18b0c323_fk_crm_customer_id` (`student_id`),
  CONSTRAINT `crm_studyrecord_course_record_id_e3601e93_fk_crm_courserecord_id` FOREIGN KEY (`course_record_id`) REFERENCES `crm_courserecord` (`id`),
  CONSTRAINT `crm_studyrecord_student_id_18b0c323_fk_crm_customer_id` FOREIGN KEY (`student_id`) REFERENCES `crm_customer` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_studyrecord
-- ----------------------------
INSERT INTO `crm_studyrecord` VALUES ('5', 'vacate', '60', null, '2018-12-20 07:32:24.135848', null, '', '1', '2');
INSERT INTO `crm_studyrecord` VALUES ('6', 'vacate', '-1', null, '2018-12-20 07:32:24.136846', null, '', '1', '3');

-- ----------------------------
-- Table structure for `crm_userprofile`
-- ----------------------------
DROP TABLE IF EXISTS `crm_userprofile`;
CREATE TABLE `crm_userprofile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(128) NOT NULL,
  `name` varchar(32) NOT NULL,
  `mobile` varchar(32) DEFAULT NULL,
  `memo` longtext,
  `date_joined` datetime(6) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `department_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `crm_userprofile_department_id_b7469aef_fk_crm_department_id` (`department_id`),
  CONSTRAINT `crm_userprofile_department_id_b7469aef_fk_crm_department_id` FOREIGN KEY (`department_id`) REFERENCES `crm_department` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_userprofile
-- ----------------------------
INSERT INTO `crm_userprofile` VALUES ('1', 'root@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'root', null, '', '2018-12-14 04:30:56.081897', '1', null);
INSERT INTO `crm_userprofile` VALUES ('2', 'root1@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'root', null, null, '2018-12-14 04:32:17.903040', '1', null);
INSERT INTO `crm_userprofile` VALUES ('3', 'alex@qq.com', 'e10adc3949ba59abbe56e057f20f883e', 'alex', null, null, '2018-12-14 04:35:04.129613', '1', null);

-- ----------------------------
-- Table structure for `crm_userprofile_roles`
-- ----------------------------
DROP TABLE IF EXISTS `crm_userprofile_roles`;
CREATE TABLE `crm_userprofile_roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `crm_userprofile_roles_userprofile_id_role_id_cee8b0c7_uniq` (`userprofile_id`,`role_id`),
  KEY `crm_userprofile_roles_role_id_33eee41d_fk_rbac_role_id` (`role_id`),
  CONSTRAINT `crm_userprofile_role_userprofile_id_39ea736f_fk_crm_userp` FOREIGN KEY (`userprofile_id`) REFERENCES `crm_userprofile` (`id`),
  CONSTRAINT `crm_userprofile_roles_role_id_33eee41d_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of crm_userprofile_roles
-- ----------------------------
INSERT INTO `crm_userprofile_roles` VALUES ('1', '1', '3');
INSERT INTO `crm_userprofile_roles` VALUES ('2', '2', '3');
INSERT INTO `crm_userprofile_roles` VALUES ('3', '3', '1');

-- ----------------------------
-- Table structure for `django_admin_log`
-- ----------------------------
DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_admin_log
-- ----------------------------
INSERT INTO `django_admin_log` VALUES ('1', '2018-12-17 02:27:31.027447', '1', '北京', '1', '[{\"added\": {}}]', '7', '1');
INSERT INTO `django_admin_log` VALUES ('2', '2018-12-17 02:28:26.325601', '1', 'PythonFullStack1(北京)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('3', '2018-12-17 02:31:23.097980', '2', '2399669300', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('4', '2018-12-17 02:31:48.171842', '3', '2399669301', '1', '[{\"added\": {}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('5', '2018-12-17 02:42:12.990318', '2', '2399669300', '2', '[{\"changed\": {\"fields\": [\"birthday\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('6', '2018-12-17 02:42:19.244599', '3', '2399669301', '2', '[{\"changed\": {\"fields\": [\"birthday\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('7', '2018-12-17 02:46:04.272958', '2', '2399669300', '2', '[{\"changed\": {\"fields\": [\"consultant\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('8', '2018-12-17 02:46:12.087100', '3', '2399669301', '2', '[{\"changed\": {\"fields\": [\"consultant\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('9', '2018-12-17 02:47:39.222130', '2', '2399669300', '2', '[{\"changed\": {\"fields\": [\"class_list\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('10', '2018-12-17 02:47:42.101404', '3', '2399669301', '2', '[{\"changed\": {\"fields\": [\"class_list\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('11', '2018-12-17 02:53:30.196760', '2', 'Linux中高级1(北京)', '1', '[{\"added\": {}}]', '8', '1');
INSERT INTO `django_admin_log` VALUES ('12', '2018-12-17 02:53:33.308410', '2', '2399669300', '2', '[{\"changed\": {\"fields\": [\"class_list\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('13', '2018-12-17 03:01:16.247690', '3', '2399669301', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '11', '1');
INSERT INTO `django_admin_log` VALUES ('14', '2018-12-17 03:01:25.609659', '2', '2399669300', '2', '[{\"changed\": {\"fields\": [\"status\"]}}]', '11', '1');

-- ----------------------------
-- Table structure for `django_content_type`
-- ----------------------------
DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_content_type
-- ----------------------------
INSERT INTO `django_content_type` VALUES ('1', 'admin', 'logentry');
INSERT INTO `django_content_type` VALUES ('3', 'auth', 'group');
INSERT INTO `django_content_type` VALUES ('2', 'auth', 'permission');
INSERT INTO `django_content_type` VALUES ('4', 'auth', 'user');
INSERT INTO `django_content_type` VALUES ('5', 'contenttypes', 'contenttype');
INSERT INTO `django_content_type` VALUES ('7', 'crm', 'campuses');
INSERT INTO `django_content_type` VALUES ('8', 'crm', 'classlist');
INSERT INTO `django_content_type` VALUES ('9', 'crm', 'consultrecord');
INSERT INTO `django_content_type` VALUES ('10', 'crm', 'courserecord');
INSERT INTO `django_content_type` VALUES ('11', 'crm', 'customer');
INSERT INTO `django_content_type` VALUES ('12', 'crm', 'department');
INSERT INTO `django_content_type` VALUES ('13', 'crm', 'enrollment');
INSERT INTO `django_content_type` VALUES ('14', 'crm', 'paymentrecord');
INSERT INTO `django_content_type` VALUES ('15', 'crm', 'studyrecord');
INSERT INTO `django_content_type` VALUES ('16', 'crm', 'userprofile');
INSERT INTO `django_content_type` VALUES ('18', 'rbac', 'menu');
INSERT INTO `django_content_type` VALUES ('17', 'rbac', 'permission');
INSERT INTO `django_content_type` VALUES ('19', 'rbac', 'role');
INSERT INTO `django_content_type` VALUES ('6', 'sessions', 'session');

-- ----------------------------
-- Table structure for `django_migrations`
-- ----------------------------
DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_migrations
-- ----------------------------
INSERT INTO `django_migrations` VALUES ('1', 'contenttypes', '0001_initial', '2018-12-14 03:19:13.439179');
INSERT INTO `django_migrations` VALUES ('2', 'auth', '0001_initial', '2018-12-14 03:19:19.406226');
INSERT INTO `django_migrations` VALUES ('3', 'admin', '0001_initial', '2018-12-14 03:19:20.851362');
INSERT INTO `django_migrations` VALUES ('4', 'admin', '0002_logentry_remove_auto_add', '2018-12-14 03:19:20.887266');
INSERT INTO `django_migrations` VALUES ('5', 'contenttypes', '0002_remove_content_type_name', '2018-12-14 03:19:21.735997');
INSERT INTO `django_migrations` VALUES ('6', 'auth', '0002_alter_permission_name_max_length', '2018-12-14 03:19:22.297526');
INSERT INTO `django_migrations` VALUES ('7', 'auth', '0003_alter_user_email_max_length', '2018-12-14 03:19:22.856003');
INSERT INTO `django_migrations` VALUES ('8', 'auth', '0004_alter_user_username_opts', '2018-12-14 03:19:22.889941');
INSERT INTO `django_migrations` VALUES ('9', 'auth', '0005_alter_user_last_login_null', '2018-12-14 03:19:23.286851');
INSERT INTO `django_migrations` VALUES ('10', 'auth', '0006_require_contenttypes_0002', '2018-12-14 03:19:23.305801');
INSERT INTO `django_migrations` VALUES ('11', 'auth', '0007_alter_validators_add_error_messages', '2018-12-14 03:19:23.340706');
INSERT INTO `django_migrations` VALUES ('12', 'auth', '0008_alter_user_username_max_length', '2018-12-14 03:19:23.806463');
INSERT INTO `django_migrations` VALUES ('13', 'crm', '0001_initial', '2018-12-14 03:19:41.652747');
INSERT INTO `django_migrations` VALUES ('14', 'sessions', '0001_initial', '2018-12-14 03:19:42.052704');
INSERT INTO `django_migrations` VALUES ('15', 'rbac', '0001_initial', '2018-12-28 07:15:10.034442');
INSERT INTO `django_migrations` VALUES ('16', 'crm', '0002_auto_20181228_1514', '2018-12-28 07:15:14.140484');
INSERT INTO `django_migrations` VALUES ('17', 'rbac', '0002_auto_20181228_1527', '2018-12-28 07:27:53.159745');

-- ----------------------------
-- Table structure for `django_session`
-- ----------------------------
DROP TABLE IF EXISTS `django_session`;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of django_session
-- ----------------------------
INSERT INTO `django_session` VALUES ('7irn7p2ckei5q047texy95tvp9dai4hv', 'NjA4ZWEyOTI5Y2VkMDI3ZTBmMzA1OWQ1OTA5YTRmMzI5YTI1OTFmOTp7InVzZXJfaWQiOjF9', '2019-01-03 01:55:38.226164');
INSERT INTO `django_session` VALUES ('kbu7ge06e8i2vqkka0q2681qhasrc67z', 'OWE5MmU0YWMwNjI4NDA1M2JlNGQxYTZlZmFjNjg2NjM2NzRhZDVjODp7InVzZXJfaWQiOjMsInBlcm1pc3Npb25zIjp7ImN1c3RvbWVyX2xpc3QiOnsidXJsIjoiL2NybS9jdXN0b21lcl9saXN0LyIsImlkIjo1LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NTE2Y1x1NjIzNyJ9LCJteV9jdXN0b21lciI6eyJ1cmwiOiIvY3JtL215X2N1c3RvbWVyLyIsImlkIjo2LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1NzljMVx1NjIzNyJ9LCJjdXN0b21lcl9hZGQiOnsidXJsIjoiL2NybS9jdXN0b21lcl9hZGQvIiwiaWQiOjcsInBpZCI6NiwicG5hbWUiOiJteV9jdXN0b21lciIsInRpdGxlIjoiXHU2ZGZiXHU1MmEwXHU1YmEyXHU2MjM3In0sImN1c3RvbWVyX2VkaXQiOnsidXJsIjoiL2NybS9jdXN0b21lcl9lZGl0LyhcXGQrKS8iLCJpZCI6OCwicGlkIjo2LCJwbmFtZSI6Im15X2N1c3RvbWVyIiwidGl0bGUiOiJcdTdmMTZcdThmOTFcdTViYTJcdTYyMzcifSwiY29uc3VsdF9saXN0Ijp7InVybCI6Ii9jcm0vY29uc3VsdF9saXN0Lyg/UDxjdXN0b21lcl9pZD5cXGQrKS8iLCJpZCI6OSwicGlkIjozNSwicG5hbWUiOiJhbGxfY29uc3VsdF9saXN0IiwidGl0bGUiOiJcdTY3ZDBcdTRlYmFcdTc2ODRcdThkZGZcdThmZGJcdThiYjBcdTVmNTUifSwiZW5yb2xsbWVudF9saXN0Ijp7InVybCI6Ii9jcm0vZW5yb2xsbWVudF9saXN0Lyg/UDxjdXN0b21lcl9pZD5cXGQrKS8iLCJpZCI6MTIsInBpZCI6bnVsbCwicG5hbWUiOm51bGwsInRpdGxlIjoiXHU2N2QwXHU0ZWJhXHU3Njg0XHU2MmE1XHU1NDBkXHU4YmIwXHU1ZjU1In0sImVucm9sbG1lbnRfYWRkIjp7InVybCI6Ii9jcm0vZW5yb2xsbWVudF9hZGQvKD9QPGN1c3RvbWVyX2lkPlxcZCspLyIsImlkIjoxMywicGlkIjpudWxsLCJwbmFtZSI6bnVsbCwidGl0bGUiOiJcdTZkZmJcdTUyYTBcdTYyYTVcdTU0MGQifSwiZW5yb2xsbWVudF9lZGl0Ijp7InVybCI6Ii9jcm0vZW5yb2xsbWVudF9lZGl0Lyg/UDxyZWNvcmRfaWQ+XFxkKykvIiwiaWQiOjE0LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1N2YxNlx1OGY5MVx1NjJhNVx1NTQwZCJ9LCJhbGxfY29uc3VsdF9saXN0Ijp7InVybCI6Ii9jcm0vY29uc3VsdF9saXN0LzAvIiwiaWQiOjM1LCJwaWQiOm51bGwsInBuYW1lIjpudWxsLCJ0aXRsZSI6Ilx1OGRkZlx1OGZkYlx1OGJiMFx1NWY1NSJ9fSwibWVudXMiOnsiMSI6eyJ0aXRsZSI6Ilx1NWJhMlx1NjIzN1x1N2JhMVx1NzQwNiIsImljb24iOiJmYS1jYW1lcmEtcmV0cm8iLCJ3ZWlnaHQiOjEwMCwiY2hpbGRyZW4iOlt7InRpdGxlIjoiXHU1MTZjXHU2MjM3IiwidXJsIjoiL2NybS9jdXN0b21lcl9saXN0LyIsImlkIjo1fSx7InRpdGxlIjoiXHU3OWMxXHU2MjM3IiwidXJsIjoiL2NybS9teV9jdXN0b21lci8iLCJpZCI6Nn0seyJ0aXRsZSI6Ilx1OGRkZlx1OGZkYlx1OGJiMFx1NWY1NSIsInVybCI6Ii9jcm0vY29uc3VsdF9saXN0LzAvIiwiaWQiOjM1fV19fX0=', '2019-01-11 07:59:34.144770');
INSERT INTO `django_session` VALUES ('ordml7mjwbi9h0mgquml0y12ps1lok1b', 'ZWJjNzRjNTAzZGQ1N2Y5NGE2NTc2OTIxNzA3MzFlM2YwOWJmMDE1Yzp7InVzZXJfaWQiOjN9', '2019-01-03 01:55:05.467782');

-- ----------------------------
-- Table structure for `rbac_menu`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_menu`;
CREATE TABLE `rbac_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `icon` varchar(64) DEFAULT NULL,
  `weight` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_menu
-- ----------------------------
INSERT INTO `rbac_menu` VALUES ('1', '客户管理', 'fa-camera-retro', '100');
INSERT INTO `rbac_menu` VALUES ('2', '班级管理', 'fa-compass', '50');
INSERT INTO `rbac_menu` VALUES ('3', '权限管理', 'fa-sort-alpha-asc', '1');

-- ----------------------------
-- Table structure for `rbac_permission`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_permission`;
CREATE TABLE `rbac_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(108) NOT NULL,
  `title` varchar(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` (`menu_id`),
  KEY `rbac_permission_parent_id_bcb411ef_fk_rbac_permission_id` (`parent_id`),
  CONSTRAINT `rbac_permission_menu_id_3dcc68be_fk_rbac_menu_id` FOREIGN KEY (`menu_id`) REFERENCES `rbac_menu` (`id`),
  CONSTRAINT `rbac_permission_parent_id_bcb411ef_fk_rbac_permission_id` FOREIGN KEY (`parent_id`) REFERENCES `rbac_permission` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_permission
-- ----------------------------
INSERT INTO `rbac_permission` VALUES ('1', '/login/', '登录', 'login', null, null);
INSERT INTO `rbac_permission` VALUES ('2', '/logout/', '注销', 'logout', null, null);
INSERT INTO `rbac_permission` VALUES ('3', '/index/', '首页', 'index', null, null);
INSERT INTO `rbac_permission` VALUES ('4', '/reg/', '注册', 'reg', null, null);
INSERT INTO `rbac_permission` VALUES ('5', '/crm/customer_list/', '公户', 'customer_list', '1', null);
INSERT INTO `rbac_permission` VALUES ('6', '/crm/my_customer/', '私户', 'my_customer', '1', null);
INSERT INTO `rbac_permission` VALUES ('7', '/crm/customer_add/', '添加客户', 'customer_add', null, '6');
INSERT INTO `rbac_permission` VALUES ('8', '/crm/customer_edit/(\\d+)/', '编辑客户', 'customer_edit', null, '6');
INSERT INTO `rbac_permission` VALUES ('9', '/crm/consult_list/(?P<customer_id>\\d+)/', '某人的跟进记录', 'consult_list', null, '35');
INSERT INTO `rbac_permission` VALUES ('10', '/crm/consult_add/', '添加跟进', 'consult_add', null, '35');
INSERT INTO `rbac_permission` VALUES ('11', '/crm/consult_edit/(\\d+)/', '编辑跟进', 'consult_edit', null, '35');
INSERT INTO `rbac_permission` VALUES ('12', '/crm/enrollment_list/(?P<customer_id>\\d+)/', '某人的报名记录', 'enrollment_list', null, null);
INSERT INTO `rbac_permission` VALUES ('13', '/crm/enrollment_add/(?P<customer_id>\\d+)/', '添加报名', 'enrollment_add', null, null);
INSERT INTO `rbac_permission` VALUES ('14', '/crm/enrollment_edit/(?P<record_id>\\d+)/', '编辑报名', 'enrollment_edit', null, null);
INSERT INTO `rbac_permission` VALUES ('15', '/crm/class_list/', '班级列表', 'class_list', '2', null);
INSERT INTO `rbac_permission` VALUES ('16', '/crm/class_add/', '添加班级', 'class_add', null, '15');
INSERT INTO `rbac_permission` VALUES ('17', '/crm/class_edit/(\\d+)/', '编辑班级', 'class_edit', null, '15');
INSERT INTO `rbac_permission` VALUES ('18', '/crm/course_record_list/(?P<class_id>\\d+)', '某班的课程记录', 'course_record_list', null, '15');
INSERT INTO `rbac_permission` VALUES ('19', '/crm/course_record_add/(?P<class_id>\\d+)', '添加课程记录', 'course_record_add', null, '15');
INSERT INTO `rbac_permission` VALUES ('20', '/crm/course_record_edit/(?P<course_record_id>\\d+)/', '编辑课程记录', 'course_record_edit', null, '15');
INSERT INTO `rbac_permission` VALUES ('21', '/crm/study_record_list/(?P<course_record_id>\\d+)/', '学习记录', 'study_record_list', null, '15');
INSERT INTO `rbac_permission` VALUES ('22', '/rbac/role/list/', '角色管理', 'rbac:role_list', '3', null);
INSERT INTO `rbac_permission` VALUES ('23', '/rbac/role/add/', '添加角色', 'rbac:role_add', null, '22');
INSERT INTO `rbac_permission` VALUES ('24', '/rbac/role/edit/(\\d+)', '编辑角色', 'rbac:role_edit', null, '22');
INSERT INTO `rbac_permission` VALUES ('25', '/rbac/role/del/(\\d+)', '删除角色', 'rbac:role_del', null, '22');
INSERT INTO `rbac_permission` VALUES ('26', '/rbac/menu/list/', '权限管理', 'rbac:menu_list', '3', null);
INSERT INTO `rbac_permission` VALUES ('27', '/rbac/menu/add/', '添加菜单', 'rbac:menu_add', null, '26');
INSERT INTO `rbac_permission` VALUES ('28', '/rbac/menu/edit/(\\d+)', '编辑菜单', 'rbac:menu_edit', null, '26');
INSERT INTO `rbac_permission` VALUES ('29', '/rbac/menu/del/(\\d+)', '删除菜单', 'rbac:menu_del', null, '26');
INSERT INTO `rbac_permission` VALUES ('30', '/rbac/permission/add/', '添加权限', 'rbac:permission_add', null, '26');
INSERT INTO `rbac_permission` VALUES ('31', '/rbac/permission/edit/(\\d+)', '编辑权限', 'rbac:permission_edit', null, '26');
INSERT INTO `rbac_permission` VALUES ('32', '/rbac/permission/del/(\\d+)', '删除权限', 'rbac:permission_del', null, '26');
INSERT INTO `rbac_permission` VALUES ('33', '/rbac/multi/permissions/', '批量操作权限', 'rbac:multi_permissions', null, '26');
INSERT INTO `rbac_permission` VALUES ('34', '/rbac/distribute/permissions/', '分配权限', 'rbac:distribute_permissions', '3', null);
INSERT INTO `rbac_permission` VALUES ('35', '/crm/consult_list/0/', '跟进记录', 'all_consult_list', '1', null);

-- ----------------------------
-- Table structure for `rbac_role`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role`;
CREATE TABLE `rbac_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_role
-- ----------------------------
INSERT INTO `rbac_role` VALUES ('1', '销售');
INSERT INTO `rbac_role` VALUES ('2', '班主任');
INSERT INTO `rbac_role` VALUES ('3', '管理员');

-- ----------------------------
-- Table structure for `rbac_role_permissions`
-- ----------------------------
DROP TABLE IF EXISTS `rbac_role_permissions`;
CREATE TABLE `rbac_role_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `rbac_role_permissions_role_id_permission_id_d01303da_uniq` (`role_id`,`permission_id`),
  KEY `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` (`permission_id`),
  CONSTRAINT `rbac_role_permission_permission_id_f5e1e866_fk_rbac_perm` FOREIGN KEY (`permission_id`) REFERENCES `rbac_permission` (`id`),
  CONSTRAINT `rbac_role_permissions_role_id_d10416cb_fk_rbac_role_id` FOREIGN KEY (`role_id`) REFERENCES `rbac_role` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=67 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of rbac_role_permissions
-- ----------------------------
INSERT INTO `rbac_role_permissions` VALUES ('64', '1', '5');
INSERT INTO `rbac_role_permissions` VALUES ('58', '1', '6');
INSERT INTO `rbac_role_permissions` VALUES ('63', '1', '7');
INSERT INTO `rbac_role_permissions` VALUES ('59', '1', '8');
INSERT INTO `rbac_role_permissions` VALUES ('66', '1', '9');
INSERT INTO `rbac_role_permissions` VALUES ('60', '1', '12');
INSERT INTO `rbac_role_permissions` VALUES ('61', '1', '13');
INSERT INTO `rbac_role_permissions` VALUES ('62', '1', '14');
INSERT INTO `rbac_role_permissions` VALUES ('65', '1', '35');
INSERT INTO `rbac_role_permissions` VALUES ('21', '2', '15');
INSERT INTO `rbac_role_permissions` VALUES ('24', '2', '16');
INSERT INTO `rbac_role_permissions` VALUES ('20', '2', '17');
INSERT INTO `rbac_role_permissions` VALUES ('23', '2', '18');
INSERT INTO `rbac_role_permissions` VALUES ('22', '2', '19');
INSERT INTO `rbac_role_permissions` VALUES ('26', '2', '20');
INSERT INTO `rbac_role_permissions` VALUES ('25', '2', '21');
INSERT INTO `rbac_role_permissions` VALUES ('34', '3', '5');
INSERT INTO `rbac_role_permissions` VALUES ('54', '3', '6');
INSERT INTO `rbac_role_permissions` VALUES ('42', '3', '7');
INSERT INTO `rbac_role_permissions` VALUES ('41', '3', '8');
INSERT INTO `rbac_role_permissions` VALUES ('43', '3', '9');
INSERT INTO `rbac_role_permissions` VALUES ('50', '3', '10');
INSERT INTO `rbac_role_permissions` VALUES ('49', '3', '11');
INSERT INTO `rbac_role_permissions` VALUES ('39', '3', '12');
INSERT INTO `rbac_role_permissions` VALUES ('55', '3', '13');
INSERT INTO `rbac_role_permissions` VALUES ('32', '3', '14');
INSERT INTO `rbac_role_permissions` VALUES ('52', '3', '15');
INSERT INTO `rbac_role_permissions` VALUES ('47', '3', '16');
INSERT INTO `rbac_role_permissions` VALUES ('46', '3', '17');
INSERT INTO `rbac_role_permissions` VALUES ('35', '3', '18');
INSERT INTO `rbac_role_permissions` VALUES ('51', '3', '19');
INSERT INTO `rbac_role_permissions` VALUES ('56', '3', '20');
INSERT INTO `rbac_role_permissions` VALUES ('48', '3', '21');
INSERT INTO `rbac_role_permissions` VALUES ('37', '3', '22');
INSERT INTO `rbac_role_permissions` VALUES ('31', '3', '23');
INSERT INTO `rbac_role_permissions` VALUES ('40', '3', '24');
INSERT INTO `rbac_role_permissions` VALUES ('44', '3', '25');
INSERT INTO `rbac_role_permissions` VALUES ('45', '3', '26');
INSERT INTO `rbac_role_permissions` VALUES ('57', '3', '27');
INSERT INTO `rbac_role_permissions` VALUES ('29', '3', '28');
INSERT INTO `rbac_role_permissions` VALUES ('27', '3', '29');
INSERT INTO `rbac_role_permissions` VALUES ('53', '3', '30');
INSERT INTO `rbac_role_permissions` VALUES ('28', '3', '31');
INSERT INTO `rbac_role_permissions` VALUES ('33', '3', '32');
INSERT INTO `rbac_role_permissions` VALUES ('36', '3', '33');
INSERT INTO `rbac_role_permissions` VALUES ('30', '3', '34');
INSERT INTO `rbac_role_permissions` VALUES ('38', '3', '35');
