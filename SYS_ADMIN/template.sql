/*
Navicat MySQL Data Transfer

Source Server         : 本地--local
Source Server Version : 50714
Source Host           : localhost:3306
Source Database       : template

Target Server Type    : MYSQL
Target Server Version : 50714
File Encoding         : 65001

Date: 2017-11-18 21:37:35
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for sys_auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_assignment`;
CREATE TABLE `sys_auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `sys_auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `sys_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_auth_assignment
-- ----------------------------
INSERT INTO `sys_auth_assignment` VALUES ('admin', '1', '1508899632');

-- ----------------------------
-- Table structure for sys_auth_item
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_item`;
CREATE TABLE `sys_auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `idx-auth_item-type` (`type`),
  CONSTRAINT `sys_auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `sys_auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_auth_item
-- ----------------------------
INSERT INTO `sys_auth_item` VALUES ('/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/base/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/common/*', '2', null, null, null, '1510800626', '1510800626');
INSERT INTO `sys_auth_item` VALUES ('/demo/*', '2', null, null, null, '1510800626', '1510800626');
INSERT INTO `sys_auth_item` VALUES ('/demo/index', '2', null, null, null, '1510800626', '1510800626');
INSERT INTO `sys_auth_item` VALUES ('/echarts/*', '2', null, null, null, '1510800571', '1510800571');
INSERT INTO `sys_auth_item` VALUES ('/echarts/pie', '2', null, null, null, '1510800618', '1510800618');
INSERT INTO `sys_auth_item` VALUES ('/home/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/home/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/login/*', '2', null, null, null, '1508906174', '1508906174');
INSERT INTO `sys_auth_item` VALUES ('/login/captcha', '2', null, null, null, '1510800626', '1510800626');
INSERT INTO `sys_auth_item` VALUES ('/login/error', '2', null, null, null, '1508906174', '1508906174');
INSERT INTO `sys_auth_item` VALUES ('/login/index', '2', null, null, null, '1508906174', '1508906174');
INSERT INTO `sys_auth_item` VALUES ('/login/login', '2', null, null, null, '1508906174', '1508906174');
INSERT INTO `sys_auth_item` VALUES ('/login/logout', '2', null, null, null, '1508906174', '1508906174');
INSERT INTO `sys_auth_item` VALUES ('/login/register', '2', null, null, null, '1510800626', '1510800626');
INSERT INTO `sys_auth_item` VALUES ('/site/*', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/site/error', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/site/index', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/site/login', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/site/logout', '2', null, null, null, '1508894470', '1508894470');
INSERT INTO `sys_auth_item` VALUES ('/text/*', '2', null, null, null, '1509451644', '1509451644');
INSERT INTO `sys_auth_item` VALUES ('/text/index', '2', null, null, null, '1509451644', '1509451644');
INSERT INTO `sys_auth_item` VALUES ('admin', '1', '系统管理员', null, null, '1508894506', '1508894506');
INSERT INTO `sys_auth_item` VALUES ('教师', '1', '教师', null, null, '1508919613', '1508919613');

-- ----------------------------
-- Table structure for sys_auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_item_child`;
CREATE TABLE `sys_auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `sys_auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `sys_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sys_auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `sys_auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_auth_item_child
-- ----------------------------
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/assignment/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/assignment/assign');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/assignment/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/assignment/revoke');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/assignment/view');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/default/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/default/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/menu/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/menu/create');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/menu/delete');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/menu/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/menu/update');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/menu/view');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/assign');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/create');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/delete');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/remove');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/update');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/permission/view');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/assign');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/create');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/delete');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/remove');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/update');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/role/view');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/route/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/route/assign');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/route/create');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/route/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/route/refresh');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/route/remove');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/rule/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/rule/create');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/rule/delete');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/rule/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/rule/update');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/rule/view');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/activate');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/change-password');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/delete');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/login');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/logout');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/request-password-reset');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/reset-password');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/signup');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/admin/user/view');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/base/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/common/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/demo/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/demo/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/echarts/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/echarts/pie');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/home/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/home/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/captcha');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/error');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/login');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/logout');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/login/register');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/site/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/site/error');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/site/index');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/site/login');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/site/logout');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/text/*');
INSERT INTO `sys_auth_item_child` VALUES ('admin', '/text/index');

-- ----------------------------
-- Table structure for sys_auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `sys_auth_rule`;
CREATE TABLE `sys_auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for sys_demo
-- ----------------------------
DROP TABLE IF EXISTS `sys_demo`;
CREATE TABLE `sys_demo` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of sys_demo
-- ----------------------------

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `sys_menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `sys_menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1', '首页', null, '/home/index', '1', 0x7B22737461747573223A202231222C226E6F745F646973706C61795F6368696C64223A2230227D);
INSERT INTO `sys_menu` VALUES ('2', '权限控制', null, null, '100', null);
INSERT INTO `sys_menu` VALUES ('3', '用户', '2', '/admin/user/index', '1', null);
INSERT INTO `sys_menu` VALUES ('4', '分配', '2', '/admin/assignment/index', '2', null);
INSERT INTO `sys_menu` VALUES ('5', '角色', '2', '/admin/role/index', '3', null);
INSERT INTO `sys_menu` VALUES ('6', '权限', '2', '/admin/permission/index', '4', null);
INSERT INTO `sys_menu` VALUES ('7', '路由', '2', '/admin/route/index', '5', null);
INSERT INTO `sys_menu` VALUES ('8', '规则', '2', '/admin/rule/index', '6', null);
INSERT INTO `sys_menu` VALUES ('9', '菜单', '2', '/admin/menu/index', '7', null);
INSERT INTO `sys_menu` VALUES ('10', '富文本（未完成）', null, '/text/index', '2', null);
INSERT INTO `sys_menu` VALUES ('11', 'Echarts统计图', null, null, '3', null);
INSERT INTO `sys_menu` VALUES ('12', '饼图', '11', '/echarts/pie', '1', null);

-- ----------------------------
-- Table structure for sys_migration
-- ----------------------------
DROP TABLE IF EXISTS `sys_migration`;
CREATE TABLE `sys_migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of sys_migration
-- ----------------------------
INSERT INTO `sys_migration` VALUES ('m000000_000000_base', '1508830114');
INSERT INTO `sys_migration` VALUES ('m130524_201442_init', '1508830137');
INSERT INTO `sys_migration` VALUES ('m140506_102106_rbac_init', '1508830451');
INSERT INTO `sys_migration` VALUES ('m140602_111327_create_menu_table', '1508832168');
INSERT INTO `sys_migration` VALUES ('m160312_050000_create_user', '1508832168');

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '## 用户名',
  `name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '## 姓名',
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL COMMENT '## 自动登录key',
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL COMMENT '## 加密密码',
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '## 重置密码token',
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '## 手机号码',
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL COMMENT '## 邮箱',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '## 状态',
  `created_at` int(11) NOT NULL COMMENT '## 创建时间',
  `updated_at` int(11) NOT NULL COMMENT '## 更新时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `password_reset_token` (`password_reset_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('1', 'admin', 'admin', '4mmpgyEpW_Dd4AAYeMYdTKx3Q-nJumQp', '$2y$13$/75di6Umn7C0qRjsn0FWR.1W4RfhETsBbioOsQbV2AnGKftE3lQTu', null, null, '287887940@qq.com', '10', '1491539427', '1492741518');
INSERT INTO `sys_user` VALUES ('2', '测试', '测试', '4mmpgyEpW_Dd4AAYeMYdTKx3Q-nJumQp', '$2y$13$/75di6Umn7C0qRjsn0FWR.1W4RfhETsBbioOsQbV2AnGKftE3lQTu', null, null, 'test@qq.com', '10', '1491539427', '1492741518');
