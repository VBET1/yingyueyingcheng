/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80021
 Source Host           : localhost:3306
 Source Schema         : gec-auth

 Target Server Type    : MySQL
 Target Server Version : 80021
 File Encoding         : 65001

 Date: 12/12/2024 20:18:41
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for sys_category
-- ----------------------------
DROP TABLE IF EXISTS `sys_category`;
CREATE TABLE `sys_category`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '栏目名',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NULL DEFAULT 0,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_category
-- ----------------------------
INSERT INTO `sys_category` VALUES (1, '电视剧', '2022-11-16 11:16:47', '2023-01-16 11:17:27', 0);
INSERT INTO `sys_category` VALUES (2, '电影', '2022-12-14 11:16:57', '2023-01-16 11:17:30', 0);
INSERT INTO `sys_category` VALUES (3, '综艺', '2023-01-04 11:17:03', '2023-01-16 11:17:33', 0);
INSERT INTO `sys_category` VALUES (4, '动漫', '2022-11-16 11:17:08', '2023-01-16 11:17:35', 0);
INSERT INTO `sys_category` VALUES (5, '网剧', '2022-10-19 11:17:15', '2023-01-16 11:17:40', 0);
INSERT INTO `sys_category` VALUES (6, '纪录片', '2022-10-05 11:17:20', '2023-01-16 11:18:23', 0);
INSERT INTO `sys_category` VALUES (7, '肥皂剧', '2023-01-16 11:14:45', '2023-01-16 11:18:19', 0);
INSERT INTO `sys_category` VALUES (8, '短视频', '2024-09-22 14:47:20', '2024-09-22 14:47:25', 0);
INSERT INTO `sys_category` VALUES (9, 'vv', '2024-09-25 18:59:38', '2024-09-25 18:59:47', 1);
INSERT INTO `sys_category` VALUES (10, '如ii', '2024-09-25 20:21:03', '2024-09-25 20:21:06', 1);

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '部门名称',
  `parent_id` bigint(0) NULL DEFAULT 0 COMMENT '上级部门id',
  `tree_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT ',' COMMENT '树结构',
  `sort_value` int(0) NULL DEFAULT 1 COMMENT '排序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '电话',
  `status` tinyint(1) NULL DEFAULT 1 COMMENT '状态（1正常 0停用）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2018 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '组织机构' ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (1, '测试集团有限公司', 0, ',1,', 1, '张老师', '15659090912', 1, '2022-05-24 16:13:13', '2022-05-24 16:13:13', 0);
INSERT INTO `sys_dept` VALUES (10, '西安校区', 1, ',1,10,', 1, '李老师', '18790007789', 1, '2022-05-24 16:13:15', '2022-05-24 16:13:15', 0);
INSERT INTO `sys_dept` VALUES (20, '武汉校区', 1, ',1,20,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:25', '2022-05-25 14:02:25', 0);
INSERT INTO `sys_dept` VALUES (30, '长沙校区', 1, ',1,30,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:24', '2022-05-25 14:02:24', 0);
INSERT INTO `sys_dept` VALUES (1010, '教学部分', 10, ',1,10,1010,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:24', '2022-05-25 14:02:24', 0);
INSERT INTO `sys_dept` VALUES (1020, '运营部门', 10, ',1,10,1020,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:29', '2022-05-25 14:02:29', 0);
INSERT INTO `sys_dept` VALUES (1021, 'Java学科', 1010, ',1,10,1010,1021,', 1, '王老师', '15090987678', 1, '2022-05-24 16:13:31', '2022-05-24 16:13:31', 0);
INSERT INTO `sys_dept` VALUES (1022, '大数据学科', 1010, ',1,10,1010,1022,', 1, '王老师', '15090987678', 1, '2022-05-25 14:02:22', '2022-05-25 14:02:22', 0);
INSERT INTO `sys_dept` VALUES (1024, '前端学科', 1010, ',1,10,1010,1024,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:22', '2022-05-25 14:02:22', 0);
INSERT INTO `sys_dept` VALUES (1025, '客服', 1020, ',1,10,1020,1025,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:23', '2022-05-25 14:02:23', 0);
INSERT INTO `sys_dept` VALUES (1026, '网站推广', 1020, ',1,10,1020,1026,', 1, '30.607366', '15090987678', 1, '2022-05-25 14:02:26', '2022-05-25 14:02:26', 0);
INSERT INTO `sys_dept` VALUES (1027, '线下运营', 1020, ',1,10,1020,1027,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:26', '2022-05-25 14:02:26', 0);
INSERT INTO `sys_dept` VALUES (1028, '设计', 1020, ',1,10,1020,1028,', 1, '李老师', '15090987678', 1, '2022-05-25 14:02:27', '2022-05-25 14:02:27', 0);
INSERT INTO `sys_dept` VALUES (2012, '教学部门', 20, ',1,20,2012,', 1, '王老师', '18909890765', 1, '2022-05-24 16:13:51', '2022-05-24 16:13:51', 0);
INSERT INTO `sys_dept` VALUES (2013, '教学部门', 30, ',1,30,2013,', 1, '李老师', '18567867895', 1, '2022-05-24 16:13:50', '2022-05-24 16:13:50', 0);
INSERT INTO `sys_dept` VALUES (2016, 'Java学科', 2012, ',1,20,2012,2012,', 1, '张老师', '15090909909', 1, '2022-05-25 10:51:12', '2022-05-25 10:51:12', 0);
INSERT INTO `sys_dept` VALUES (2017, '大数据学科', 2012, ',1,20,2012,2012,', 1, '李老师', '15090980989', 1, '2022-05-27 09:11:54', NULL, 0);

-- ----------------------------
-- Table structure for sys_login_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_login_log`;
CREATE TABLE `sys_login_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `status` tinyint(1) NULL DEFAULT 0 COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '提示信息',
  `access_time` datetime(0) NULL DEFAULT NULL COMMENT '访问时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 124 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_login_log
-- ----------------------------
INSERT INTO `sys_login_log` VALUES (3, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-16 17:02:52', NULL, 1);
INSERT INTO `sys_login_log` VALUES (4, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 12:57:00', NULL, 0);
INSERT INTO `sys_login_log` VALUES (5, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 20:09:28', NULL, 0);
INSERT INTO `sys_login_log` VALUES (6, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 20:24:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (7, 'dafei2022', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 20:34:01', NULL, 0);
INSERT INTO `sys_login_log` VALUES (8, 'dafei2022', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 20:34:54', NULL, 0);
INSERT INTO `sys_login_log` VALUES (9, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:34:53', NULL, 0);
INSERT INTO `sys_login_log` VALUES (10, 'dafei2022', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:41:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (11, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:41:47', NULL, 0);
INSERT INTO `sys_login_log` VALUES (12, 'dafei2022', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:42:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (13, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:48:31', NULL, 0);
INSERT INTO `sys_login_log` VALUES (14, 'dafei2022', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:48:56', NULL, 0);
INSERT INTO `sys_login_log` VALUES (15, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:49:42', NULL, 0);
INSERT INTO `sys_login_log` VALUES (16, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:50:58', NULL, 0);
INSERT INTO `sys_login_log` VALUES (17, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:00', NULL, 0);
INSERT INTO `sys_login_log` VALUES (18, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:01', NULL, 0);
INSERT INTO `sys_login_log` VALUES (19, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:02', NULL, 0);
INSERT INTO `sys_login_log` VALUES (20, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:03', NULL, 0);
INSERT INTO `sys_login_log` VALUES (21, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:03', NULL, 0);
INSERT INTO `sys_login_log` VALUES (22, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (23, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:51:24', NULL, 0);
INSERT INTO `sys_login_log` VALUES (24, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:53:50', NULL, 0);
INSERT INTO `sys_login_log` VALUES (25, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:55:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (26, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:55:07', NULL, 0);
INSERT INTO `sys_login_log` VALUES (27, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:55:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (28, 'ceshi123', '127.0.0.1', 0, '登录成功', NULL, '2023-01-18 21:55:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (29, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-19 09:19:32', NULL, 0);
INSERT INTO `sys_login_log` VALUES (30, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-01-19 18:54:20', NULL, 0);
INSERT INTO `sys_login_log` VALUES (31, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-02-02 17:11:48', NULL, 0);
INSERT INTO `sys_login_log` VALUES (32, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-02-02 17:15:31', NULL, 0);
INSERT INTO `sys_login_log` VALUES (33, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-02-02 17:18:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (34, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2023-02-02 17:39:18', NULL, 0);
INSERT INTO `sys_login_log` VALUES (35, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-23 11:27:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (36, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-23 11:33:02', NULL, 0);
INSERT INTO `sys_login_log` VALUES (37, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-23 16:32:08', NULL, 0);
INSERT INTO `sys_login_log` VALUES (38, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-23 16:34:56', NULL, 0);
INSERT INTO `sys_login_log` VALUES (39, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 10:39:30', NULL, 0);
INSERT INTO `sys_login_log` VALUES (40, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 11:25:47', NULL, 0);
INSERT INTO `sys_login_log` VALUES (41, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:02:42', NULL, 0);
INSERT INTO `sys_login_log` VALUES (42, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:13:49', NULL, 0);
INSERT INTO `sys_login_log` VALUES (43, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:14:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (44, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:14:17', NULL, 0);
INSERT INTO `sys_login_log` VALUES (45, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:15:29', NULL, 0);
INSERT INTO `sys_login_log` VALUES (46, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:15:41', NULL, 0);
INSERT INTO `sys_login_log` VALUES (47, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:16:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (48, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:18:40', NULL, 0);
INSERT INTO `sys_login_log` VALUES (49, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:19:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (50, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:19:49', NULL, 0);
INSERT INTO `sys_login_log` VALUES (51, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:23:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (52, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:24:23', NULL, 0);
INSERT INTO `sys_login_log` VALUES (53, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:35:59', NULL, 0);
INSERT INTO `sys_login_log` VALUES (54, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:37:28', NULL, 0);
INSERT INTO `sys_login_log` VALUES (55, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:37:47', NULL, 0);
INSERT INTO `sys_login_log` VALUES (56, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:38:25', NULL, 0);
INSERT INTO `sys_login_log` VALUES (57, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:41:53', NULL, 0);
INSERT INTO `sys_login_log` VALUES (58, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:42:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (59, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:50:05', NULL, 0);
INSERT INTO `sys_login_log` VALUES (60, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:51:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (61, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:54:38', NULL, 0);
INSERT INTO `sys_login_log` VALUES (62, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:54:43', NULL, 0);
INSERT INTO `sys_login_log` VALUES (63, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:55:14', NULL, 0);
INSERT INTO `sys_login_log` VALUES (64, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-24 15:56:29', NULL, 0);
INSERT INTO `sys_login_log` VALUES (65, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 15:57:12', NULL, 0);
INSERT INTO `sys_login_log` VALUES (66, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 18:58:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (67, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 18:59:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (68, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:02:27', NULL, 0);
INSERT INTO `sys_login_log` VALUES (69, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:04:31', NULL, 0);
INSERT INTO `sys_login_log` VALUES (70, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:04:55', NULL, 0);
INSERT INTO `sys_login_log` VALUES (71, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:04:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (72, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:04:58', NULL, 0);
INSERT INTO `sys_login_log` VALUES (73, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:04:58', NULL, 0);
INSERT INTO `sys_login_log` VALUES (74, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:06:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (75, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:21:38', NULL, 0);
INSERT INTO `sys_login_log` VALUES (76, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-25 20:22:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (77, 'admin', '0:0:0:0:0:0:0:1', 0, '登录成功', NULL, '2024-09-26 10:33:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (78, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 11:15:34', NULL, 0);
INSERT INTO `sys_login_log` VALUES (79, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 11:16:18', NULL, 0);
INSERT INTO `sys_login_log` VALUES (80, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 15:52:23', NULL, 0);
INSERT INTO `sys_login_log` VALUES (81, 'admin', '0:0:0:0:0:0:0:1', 0, '登录成功', NULL, '2024-09-26 15:52:53', NULL, 0);
INSERT INTO `sys_login_log` VALUES (82, 'admin', '0:0:0:0:0:0:0:1', 0, '登录成功', NULL, '2024-09-26 15:54:53', NULL, 0);
INSERT INTO `sys_login_log` VALUES (83, 'admin', '0:0:0:0:0:0:0:1', 0, '登录成功', NULL, '2024-09-26 15:55:09', NULL, 0);
INSERT INTO `sys_login_log` VALUES (84, 'zdw', '0:0:0:0:0:0:0:1', 0, '登录成功', NULL, '2024-09-26 16:05:39', NULL, 0);
INSERT INTO `sys_login_log` VALUES (85, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 19:15:04', NULL, 0);
INSERT INTO `sys_login_log` VALUES (86, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 19:15:38', NULL, 0);
INSERT INTO `sys_login_log` VALUES (87, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 19:17:45', NULL, 0);
INSERT INTO `sys_login_log` VALUES (88, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 20:00:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (89, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 20:06:37', NULL, 0);
INSERT INTO `sys_login_log` VALUES (90, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-26 20:09:26', NULL, 0);
INSERT INTO `sys_login_log` VALUES (91, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 09:04:44', NULL, 0);
INSERT INTO `sys_login_log` VALUES (92, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 09:14:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (93, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:13:34', NULL, 0);
INSERT INTO `sys_login_log` VALUES (94, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:13:35', NULL, 0);
INSERT INTO `sys_login_log` VALUES (95, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:13:45', NULL, 0);
INSERT INTO `sys_login_log` VALUES (96, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:14:08', NULL, 0);
INSERT INTO `sys_login_log` VALUES (97, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:16:00', NULL, 0);
INSERT INTO `sys_login_log` VALUES (98, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:16:31', NULL, 0);
INSERT INTO `sys_login_log` VALUES (99, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:16:59', NULL, 0);
INSERT INTO `sys_login_log` VALUES (100, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:18:07', NULL, 0);
INSERT INTO `sys_login_log` VALUES (101, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:21:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (102, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:50:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (103, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:51:11', NULL, 0);
INSERT INTO `sys_login_log` VALUES (104, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:51:51', NULL, 0);
INSERT INTO `sys_login_log` VALUES (105, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:53:00', NULL, 0);
INSERT INTO `sys_login_log` VALUES (106, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:58:29', NULL, 0);
INSERT INTO `sys_login_log` VALUES (107, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:58:32', NULL, 0);
INSERT INTO `sys_login_log` VALUES (108, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:59:06', NULL, 0);
INSERT INTO `sys_login_log` VALUES (109, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 10:59:13', NULL, 0);
INSERT INTO `sys_login_log` VALUES (110, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 11:00:47', NULL, 0);
INSERT INTO `sys_login_log` VALUES (111, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 11:05:35', NULL, 0);
INSERT INTO `sys_login_log` VALUES (112, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 11:06:48', NULL, 0);
INSERT INTO `sys_login_log` VALUES (113, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 11:07:08', NULL, 0);
INSERT INTO `sys_login_log` VALUES (114, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 11:07:37', NULL, 0);
INSERT INTO `sys_login_log` VALUES (115, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 11:11:10', NULL, 0);
INSERT INTO `sys_login_log` VALUES (116, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-27 17:17:29', NULL, 0);
INSERT INTO `sys_login_log` VALUES (117, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 09:29:35', NULL, 0);
INSERT INTO `sys_login_log` VALUES (118, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:30:40', NULL, 0);
INSERT INTO `sys_login_log` VALUES (119, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:30:57', NULL, 0);
INSERT INTO `sys_login_log` VALUES (120, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:32:05', NULL, 0);
INSERT INTO `sys_login_log` VALUES (121, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:35:00', NULL, 0);
INSERT INTO `sys_login_log` VALUES (122, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:35:20', NULL, 0);
INSERT INTO `sys_login_log` VALUES (123, 'zdw', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:36:08', NULL, 0);
INSERT INTO `sys_login_log` VALUES (124, 'admin', '127.0.0.1', 0, '登录成功', NULL, '2024-09-29 10:36:40', NULL, 0);

-- ----------------------------
-- Table structure for sys_member
-- ----------------------------
DROP TABLE IF EXISTS `sys_member`;
CREATE TABLE `sys_member`  (
  `id` int(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `password` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '密码',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '手机号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_member
-- ----------------------------
INSERT INTO `sys_member` VALUES (1, 'tom', '123456', '13800000000');
INSERT INTO `sys_member` VALUES (2, 'jerry', '123456', '13800000001');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `parent_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '所属上级',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '名称',
  `type` tinyint(0) NOT NULL DEFAULT 0 COMMENT '类型(0:目录,1:菜单,2:按钮)',
  `path` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '路由地址',
  `component` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '组件路径',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '图标',
  `sort_value` int(0) NULL DEFAULT NULL COMMENT '排序',
  `status` tinyint(0) NULL DEFAULT NULL COMMENT '状态(0:禁止,1:正常)',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_parent_id`(`parent_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 57 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (2, 0, '系统管理', 0, 'system', 'Layout', NULL, 'el-icon-s-tools', 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:23:24', 0);
INSERT INTO `sys_menu` VALUES (3, 2, '用户管理', 1, 'sysUser', 'system/sysUser/list', '', 'el-icon-s-custom', 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:47', 0);
INSERT INTO `sys_menu` VALUES (4, 2, '角色管理', 1, 'sysRole', 'system/sysRole/list', '', 'el-icon-user-solid', 2, 1, '2021-05-31 18:05:37', '2022-06-09 09:37:18', 0);
INSERT INTO `sys_menu` VALUES (5, 2, '菜单管理', 1, 'sysMenu', 'system/sysMenu/list', '', 'el-icon-s-unfold', 3, 1, '2021-05-31 18:05:37', '2022-06-09 09:37:21', 0);
INSERT INTO `sys_menu` VALUES (6, 3, '查看', 2, NULL, NULL, 'bnt.sysUser.list', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (7, 3, '添加', 2, NULL, NULL, 'bnt.sysUser.add', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (8, 3, '修改', 2, NULL, NULL, 'bnt.sysUser.update', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (9, 3, '删除', 2, NULL, NULL, 'bnt.sysUser.remove', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (10, 4, '查看', 2, NULL, NULL, 'bnt.sysRole.list', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (11, 4, '添加', 2, NULL, NULL, 'bnt.sysRole.add', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (12, 4, '修改', 2, NULL, NULL, 'bnt.sysRole.update', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (13, 4, '删除', 2, NULL, NULL, 'bnt.sysRole.remove', NULL, 1, 1, '2021-05-31 18:05:37', '2024-09-24 15:22:58', 0);
INSERT INTO `sys_menu` VALUES (14, 5, '查看', 2, NULL, NULL, 'bnt.sysMenu.list', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (15, 5, '添加', 2, NULL, NULL, 'bnt.sysMenu.add', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (16, 5, '修改', 2, NULL, NULL, 'bnt.sysMenu.update', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (17, 5, '删除', 2, NULL, NULL, 'bnt.sysMenu.remove', NULL, 1, 1, '2021-05-31 18:05:37', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (18, 3, '分配角色', 2, NULL, NULL, 'bnt.sysUser.assignRole', NULL, 1, 1, '2022-05-23 17:14:32', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (19, 4, '分配权限', 2, 'assignAuth', 'system/sysRole/assignAuth', 'bnt.sysRole.assignAuth', NULL, 1, 1, '2022-05-23 17:18:14', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (20, 2, '部门管理', 1, 'sysDept', 'system/sysDept/list', '', 'el-icon-s-operation', 4, 1, '2022-05-24 10:07:05', '2022-06-09 09:38:12', 1);
INSERT INTO `sys_menu` VALUES (21, 20, '查看', 2, NULL, NULL, 'bnt.sysDept.list', NULL, 1, 1, '2022-05-24 10:07:44', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (22, 2, '岗位管理', 1, 'sysPost', 'system/sysPost/list', '', 'el-icon-more-outline', 5, 1, '2022-05-24 10:25:30', '2022-06-09 09:38:13', 1);
INSERT INTO `sys_menu` VALUES (23, 22, '查看', 2, NULL, NULL, 'bnt.sysPost.list', NULL, 1, 1, '2022-05-24 10:25:45', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (24, 20, '添加', 2, NULL, NULL, 'bnt.sysDept.add', NULL, 1, 1, '2022-05-25 15:31:27', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (25, 20, '修改', 2, NULL, NULL, 'bnt.sysDept.update', NULL, 1, 1, '2022-05-25 15:31:41', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (26, 20, '删除', 2, NULL, NULL, 'bnt.sysDept.remove', NULL, 1, 1, '2022-05-25 15:31:59', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (27, 22, '添加', 2, NULL, NULL, 'bnt.sysPost.add', NULL, 1, 1, '2022-05-25 15:32:44', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (28, 22, '修改', 2, NULL, NULL, 'bnt.sysPost.update', NULL, 1, 1, '2022-05-25 15:32:58', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (29, 22, '删除', 2, NULL, NULL, 'bnt.sysPost.remove', NULL, 1, 1, '2022-05-25 15:33:11', '2022-06-09 09:22:38', 1);
INSERT INTO `sys_menu` VALUES (30, 34, '操作日志', 1, 'sysOperLog', 'system/log/sysOperLog/list', '', 'el-icon-document-remove', 7, 0, '2022-05-26 16:09:59', '2024-09-25 18:55:16', 0);
INSERT INTO `sys_menu` VALUES (31, 30, '查看', 2, NULL, NULL, 'bnt.sysOperLog.list', NULL, 1, 1, '2022-05-26 16:10:17', '2022-06-09 09:22:38', 0);
INSERT INTO `sys_menu` VALUES (32, 34, '登录日志', 1, 'sysLoginLog', 'system/sysLoginLog/list', '', 'el-icon-s-goods', 8, 1, '2022-05-26 16:36:13', '2024-09-23 11:27:22', 0);
INSERT INTO `sys_menu` VALUES (33, 32, '查看', 2, NULL, NULL, 'bnt.sysLoginLog.list', NULL, 1, 1, '2022-05-26 16:36:31', '2022-06-09 09:36:36', 0);
INSERT INTO `sys_menu` VALUES (34, 2, '日志管理', 0, 'log', 'ParentView', '', 'el-icon-tickets', 6, 1, '2022-05-31 13:23:07', '2022-06-09 09:39:22', 0);
INSERT INTO `sys_menu` VALUES (35, 34, 'test2', 1, '', '', '', 'el-icon-s-tools', 1, 1, '2023-01-06 16:54:50', '2023-01-06 16:56:07', 1);
INSERT INTO `sys_menu` VALUES (36, 2, '影视管理', 1, 'sysMovie', 'system/sysMovie/list', 'bnt.sysMovie.list', 'el-icon-tickets', 6, 1, '2023-01-14 17:30:43', '2023-01-15 20:41:53', 0);
INSERT INTO `sys_menu` VALUES (37, 36, '视频播放', 2, 'assignVideo', 'system/sysMovie/assignVideo', 'bnt.sysMovie.assignVideo', '', 1, 1, '2023-01-15 20:44:53', NULL, 0);
INSERT INTO `sys_menu` VALUES (38, 2, '分类管理', 1, 'sysCategory', 'system/sysCategory/list', '', 'el-icon-s-tools', 1, 1, '2023-01-16 10:30:31', '2023-01-16 10:31:27', 0);
INSERT INTO `sys_menu` VALUES (39, 2, '员工管理', 1, 'admin/system/employee', 'Layout', '', 'el-icon-s-custom', 1, 0, '2023-06-18 22:53:35', '2024-09-25 18:55:01', 0);
INSERT INTO `sys_menu` VALUES (40, 39, '添加员工', 1, 'admin/system/employee/addemp', 'view/system/emps/list', '', 'el-icon-s-check', 1, 0, '2023-06-18 22:55:09', '2024-09-25 18:59:24', 0);
INSERT INTO `sys_menu` VALUES (43, 32, '删除', 2, '', '', 'bnt.sysLoginLog.remove', '', 1, 1, '2024-09-25 19:00:56', '2024-09-25 19:08:58', 0);
INSERT INTO `sys_menu` VALUES (44, 38, '添加', 2, '', '', 'bnt.sysCategory.add', '', 1, 1, '2024-09-25 20:17:29', NULL, 0);
INSERT INTO `sys_menu` VALUES (45, 38, '修改', 2, '', '', 'bnt.sysCategory.update', '', 1, 1, '2024-09-25 20:17:53', NULL, 0);
INSERT INTO `sys_menu` VALUES (46, 38, '删除', 2, '', '', 'bnt.sysCategory.remove', '', 1, 1, '2024-09-25 20:18:59', NULL, 0);
INSERT INTO `sys_menu` VALUES (47, 38, '查看', 2, '', '', 'bnt.sysCategory.list', '', 1, 1, '2024-09-25 20:19:29', NULL, 0);
INSERT INTO `sys_menu` VALUES (49, 2, '门户', 1, 'sysData', 'system/sysData/list', '', '', 1, 0, '2024-09-27 10:19:29', '2024-09-27 10:22:18', 0);
INSERT INTO `sys_menu` VALUES (50, 36, '添加', 2, '', '', 'bnt.sysMovie.addMovie', '', 1, 1, '2024-09-27 10:23:16', '2024-09-27 10:25:08', 0);
INSERT INTO `sys_menu` VALUES (51, 36, '修改', 2, '', '', 'bnt.sysMovie.updateMovie', '', 1, 1, '2024-09-27 10:23:27', '2024-09-27 10:25:32', 0);
INSERT INTO `sys_menu` VALUES (52, 36, '查看', 2, '', '', 'bnt.sysMovie.list', '', 1, 1, '2024-09-27 10:23:38', '2024-09-27 10:25:52', 0);
INSERT INTO `sys_menu` VALUES (53, 36, '删除', 2, '', '', 'bnt.sysMovie.remove', '', 1, 1, '2024-09-27 10:23:45', '2024-09-27 10:26:09', 0);
INSERT INTO `sys_menu` VALUES (54, 36, '上传', 2, '', '', '', '', 1, 1, '2024-09-27 11:01:13', '2024-09-27 11:01:36', 1);
INSERT INTO `sys_menu` VALUES (55, 36, '上传', 2, '', '', 'bnt.sysMovie.upload', '', 1, 0, '2024-09-27 11:04:22', '2024-09-27 11:10:23', 0);
INSERT INTO `sys_menu` VALUES (56, 0, '对的', 0, '对的', 'Layout', '', 'el-icon-s-tools', 2, 0, '2024-09-29 10:33:30', NULL, 1);
INSERT INTO `sys_menu` VALUES (57, 56, '对的', 1, '储存', '才', '', 'el-icon-s-tools', 2, 0, '2024-09-29 10:33:41', NULL, 1);

-- ----------------------------
-- Table structure for sys_movie
-- ----------------------------
DROP TABLE IF EXISTS `sys_movie`;
CREATE TABLE `sys_movie`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '电影名称',
  `cid` int(0) NULL DEFAULT NULL COMMENT '分类id',
  `description` varchar(512) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '内容描述',
  `keyword` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关键字，用来搜索',
  `director` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '导演姓名',
  `actor` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '主演',
  `image` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '缩略图',
  `type` varchar(2) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '2' COMMENT '视频类型:1.免费视频  2.付费视频',
  `url` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '播放连接',
  `play_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '播放id,阿里云提供',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_movie
-- ----------------------------
INSERT INTO `sys_movie` VALUES (1, '荞麦疯长', 2, '20世纪90年代的小城市里，云荞(马思纯饰)想要“活成一部电影”；李麦(钟楚曦饰)期待着看得见希望的未来；吴风(黄景瑜饰)要在平凡的日子里背水一战。每个人都有着对未来的憧憬，并带着憧憬与不可知开始了异乡漂泊之路。“云彼有荞麦，无风亦可长”，底层年轻人背井离乡，逆风成长', '背水一战 憧憬 漂泊', '徐展雄', '马思纯、钟楚曦、黄景瑜', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', '20923cc47c7071ef800b5017f1f80102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (2, '花木兰', 2, '中国的皇帝颁布法令，要求每家出一名男子服兵役，抵御北方侵略者。作为一名受人尊敬的战士的长女，花木兰（刘亦菲饰）站出来替生病的父亲应征入伍。她女扮男装，化名为花军，经历了种种考验，同时必须利用内在的力量，接纳自己真正的潜能。这是一场史诗般的旅程，让木兰蜕变为一名受人尊敬的战士，也赢得来自国家与骄傲的父亲的尊重', '服兵役 尊重  神秘', '妮基·卡罗', '刘亦菲、甄子丹、巩俐、李连杰、安柚鑫、李截、郑佩佩、赵家玲、马志、唐莎娜', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', 'a03669877bf871efb42c5107e0c90102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (3, '一出好戏', 2, '《一出好戏》是由上海瀚纳影视文化传媒有限公司制作的喜剧片，由黄渤执导，黄渤、王宝强、舒淇、张艺兴、于和伟、王迅联袂主演。该片于2018年8月10日在中国内地上映，2020年4月2日在韩国上映。该片讲述了公司员工团建出游遭遇海难，众人流落在荒岛之上，为了生存他们共同生活，并面对一系列人性问题的寓言故事', '喜剧 荒岛', '黄渤', '黄渤、张冀、郭俊立、查慕春、崔斯韦、邢爱娜、黄湛中', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', 'a03669877bf871efb42c5107e0c90102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (4, '极线杀手', 2, '别名「黑色凯萨」的世界顶尖杀手邓肯·维兹拉（麦斯·米科尔森饰）在享受退休生活之际，前雇主突然指控他不利于公司。他在身不由己的情况下重回本行，与一群杀手正面对决。这群心狠手辣的杀手不仅在年纪与体力占尽优势，更不计一切要取他性命。', '复仇特工 机密', '乔纳斯·阿克伦德', '麦斯·米科尔森、凡妮莎·哈金斯、凯瑟琳·温妮克、罗伯特·梅耶、马特·卢卡斯', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', 'a03669877bf871efb42c5107e0c90102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (5, '东北往事：我叫刘海柱', 2, '《东北往事：我叫刘海柱》讲述的是上世纪80年代初的东北，爱慕同事周萌的工人刘海柱因帮扶弱者，爱打抱不平，招惹上了不良分子并给自己的家人朋友带来危险。在经历被坏人打伤，被工厂开除等人生打击低谷后，刘海柱更面临危及生命的挑战。但此时，这个神奇的男人竟然还能重新站起来，面对一个个惊天的挑战，令世人震惊的完成着属于他的精彩传奇', '男人 挑战', '周润泽', '许君聪、杨蕊嘉、刘奔、龚小钧、田璐', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', 'a03669877bf871efb42c5107e0c90102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (6, '最美逆行', 2, '电影《最美逆行》是一部反映广东援鄂医务人员广州武汉高铁乘警们在本次疫情中坚难困苦，努力奋斗，可歌可泣的英雄故事', '新冠病毒 疫情 ', '范雨林  、邢博、胡树华', '程琤、启杰领衔主演，王奎荣，迟志强，沙溢、黄一山、陈龙，刘烨，柳海龙、梁梓滔、肖午、田甜等', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', 'a03669877bf871efb42c5107e0c90102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (7, '复仇者联盟4：终局之战', 2, '来自泰坦星的灭霸为了解决宇宙资源匮乏、人口暴增的问题，集齐了所有无限宝石，一个响指成功地使全宇宙生命随机减半。\r\n宇宙由于灭霸的行动而变得满目疮痍，但是五年之后，被困在量子领域的蚁人意外回到现实世界，他的出现为幸存的复仇者点燃了希望。无论前方将遭遇怎样的后果，幸存的复仇者都必须在剩余盟友的帮助下再一次集结，以逆转灭霸的所作所为，彻底恢复宇宙的秩序', '复联4 漫威 机器人 地球 宇宙', '安东尼·罗素、乔·罗素', '小罗伯特·唐尼，克里斯·埃文斯，马克·鲁法洛，克里斯·海姆斯沃斯，斯嘉丽·约翰逊，杰瑞米·雷纳', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', '70a36d877bf871ef87664531859c0102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (8, '蜘蛛侠：英雄归来', 2, '彼得帕克（汤姆·赫兰德 Tom Holland 饰）在内战后受到了钢铁侠托尼斯塔克（小罗伯特·唐尼 Robert Downey Jr. 饰）的赏识，表面上，彼得进入托尼的公司成为了一名实习生，实际上，他和复仇者联盟的成员们一起接受了各种各样的训练。托尼虽然欣赏彼得的勇敢和正直，却并不认为他目前已经拥有加入复联的实力，他派出了特工哈皮（乔恩·费儒 Jon Favreau 饰）暗中观察，这让十分想证明自己的彼得感到万分焦躁。\r\n　　在对付两个银行劫匪的过程中，彼得发现劫匪们使用的是一种前所未见的新型武器，他孤身一人深入敌后顺藤摸瓜找到了幕后主使秃鹰（迈克尔·基顿 Michael Keaton 饰），让他彼得没有想到的是，秃鹰竟然是他爱慕的女生利兹（劳拉·海瑞尔 Laura Harrier 饰）的父亲', '蜘蛛侠  回归 返校日', '乔·沃茨', ' 汤姆·赫兰德 / 小罗伯特·唐尼 / 玛丽莎·托梅 / 迈克尔·基顿 / 雅各布·巴特朗', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', '70a36d877bf871ef87664531859c0102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (9, '哥斯拉2：怪兽之王', 2, '动物基因组学（帝王计划）研究机构的一个小组在一座庙里研究着魔斯拉。她从幼体中孵出，在一群雇佣兵袭击这个机构时，魔斯拉逃了出去。然后她在一个瀑布包了茧，随后破茧而出，完成了全形态生长。在2014年，哥斯拉被整个世界看到后，“帝王组织”在水下建了一个基地，在这个位于水下好几英里的水中基地中，他们研究着哥斯拉和其它可能存在的生物。那是他们真正的研究核心', '基因 哥斯拉 怪兽', '迈克尔·道赫蒂', '凯尔·钱德勒，维拉·法梅加，米莉·博比·布朗，渡边谦，章子怡，布莱德利·惠特福德，莎莉·霍金斯', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', '70a36d877bf871ef87664531859c0102', NULL, NULL, 0);
INSERT INTO `sys_movie` VALUES (14, '123', 6, '123', '123', '123', '123', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, '70a36d877bf871ef87664531859c0102', NULL, '2023-01-16 11:40:47', 1);
INSERT INTO `sys_movie` VALUES (15, 'aaa', 7, 'aa', 'aa', 'aa', 'aa', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, '70a36d877bf871ef87664531859c0102', NULL, '2023-01-16 11:40:42', 1);
INSERT INTO `sys_movie` VALUES (16, '您好，北京', 2, '《您好，北京》是由曹茜茜执导，安泽豪、刘犇、李斐然领衔主演，徐峥特别出演的温情现实主义题材电影。 [1]  于2022年11月18日在全国上映 [16]  。 该片讲述了一个创业的中年人、一位快递员和一位年轻的歌手在北京生活奋斗的经历。', 'aa', '曹茜茜', '安泽豪、刘犇、李斐然', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, '70a36d877bf871ef87664531859c0102', '2023-01-15 16:08:16', '2023-01-16 11:42:13', 0);
INSERT INTO `sys_movie` VALUES (17, '汪汪队立大功之超能救援', 2, '《汪汪队立大功之超能救援》是全球知名儿童冒险IP《汪汪队立大功》剧场版电影，由加拿大斯平玛斯特有限公司和美国维亚康姆国际集团联合出品；中国电影集团公司进口，中国电影股份有限公司发行，中国电影股份有限公司译制。于2020年11月13日在中国电影院上映。 [1] ', '测试视频', '查尔斯·E·巴斯蒂安', '麦克斯·卡林内斯库德文·科恩德鲁·戴维斯欧文·梅森', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, '40f960877bf871ef9a565017f0e90102', '2023-01-15 19:30:30', '2023-01-16 11:41:56', 0);
INSERT INTO `sys_movie` VALUES (18, '鬼吹灯之南海归墟', 2, '摸金校尉胡八一等人，在金盆洗手后协助友人明叔前往南海打捞珍珠，不料遭遇海难、坠入海底，却意外发现了一个沉没在海底的千年古国遗迹，他们在海底历经了重重艰险，最终团结合作战胜深海巨兽，并巧妙利用遗迹内的机关装置逃生', '鬼吹灯之南海归墟', '项河生 、项秋良', '王紫逸、夏若妍、韩烨洲、骆达华', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, '40f960877bf871ef9a565017f0e90102', '2023-01-15 19:38:09', '2023-01-16 11:41:37', 0);
INSERT INTO `sys_movie` VALUES (19, '狙击手：逆战', 2, '《狙击手：逆战》是由严嘉执导，于荣光、邢恩领衔主演的电影，于2023年1月13日在优酷上线。', '狙击手：逆战', '严嘉', '于荣光、邢恩', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, '40f960877bf871ef9a565017f0e90102', '2023-01-15 19:41:53', '2023-01-18 21:38:33', 0);
INSERT INTO `sys_movie` VALUES (20, '我不是药神', 1, '《我不是药神》是由文牧野执导，宁浩、徐峥共同监制，徐峥、周一围、王传君、谭卓、章宇、杨新鸣等主演的剧情片 。', '犯罪、剧情、搞笑', '尚进文、牧野', '徐峥、王传君、周一围、谭卓、章宇', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', '', '40f960877bf871ef9a565017f0e90102', '2023-01-15 19:44:13', '2024-09-23 16:53:54', 0);
INSERT INTO `sys_movie` VALUES (21, 'sxx', 7, 'sxsx', 'xsxzxc', 'sxszxc', 'sxxzczx', 'https://movie-zouwh.oss-cn-guangzhou.aliyuncs.com/images/2024/09/23/1727081046542.png', '2', NULL, '40f960877bf871ef9a565017f0e90102', '2024-09-23 14:50:23', '2024-09-23 16:44:08', 0);
INSERT INTO `sys_movie` VALUES (22, '张定文', 6, '张定文', '张定文', '张定文', '张定文', 'https://movie-zouwh.oss-cn-guangzhou.aliyuncs.com/images/2024/09/23/1727080922423.png', '2', NULL, '40f960877bf871ef9a565017f0e90102', '2024-09-23 16:42:09', '2024-09-26 20:47:27', 0);
INSERT INTO `sys_movie` VALUES (23, '嗯嗯', 4, '嗯嗯', '嗯嗯', '嗯嗯', '嗯嗯', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727400576773.png', '2', NULL, '20923cc47c7071ef800b5017f1f80102', '2024-09-24 11:26:28', '2024-09-27 09:35:27', 0);
INSERT INTO `sys_movie` VALUES (24, 'cs', 3, 'cs', 'cs', 'cs', 'cs', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727402299580.png', '2', NULL, 'e09a3a4a7c7471ef80095017f1e90102', '2024-09-27 09:58:40', '2024-09-27 10:00:41', 0);
INSERT INTO `sys_movie` VALUES (25, 'dd', 8, 'dd', 'dd', 'dd', 'dd', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727406638185.png', '2', NULL, '60d916147c7e71ef9a575017f0e90102', '2024-09-27 10:52:03', NULL, 0);
INSERT INTO `sys_movie` VALUES (26, 'xx', 5, 'xx', 'xx', 'xx', 'xx', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/27/1727406638185.png', '2', NULL, '60d916147c7e71ef9a575017f0e90102', '2024-09-27 11:10:46', '2024-09-27 17:28:46', 0);
INSERT INTO `sys_movie` VALUES (27, '对的', 1, '存储', '存储', '存储', '存储', 'https://vbet.oss-cn-beijing.aliyuncs.com/images/2024/09/29/1727577156234.png', '2', NULL, '0030d2197e0b71ef800e5017f1f80102', '2024-09-29 10:32:49', NULL, 0);

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_param` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int(0) NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime(0) NULL DEFAULT NULL COMMENT '操作时间',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 64 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '角色管理', '1', 'com.gec.auth.controller.SysRoleController.save()', 'POST', '1', 'admin', '', '/admin/auth/sysRole/save', '', '{\"param\":{},\"roleCode\":\"\",\"roleName\":\"test\",\"id\":5}', '{\"code\":200,\"message\":\"成功\"}', 0, '', NULL, '2022-05-26 15:59:44', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (2, '角色管理', 'DELETE', 'com.gec.auth.controller.SysRoleController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/auth/sysRole/remove/5', '', '', '{\"code\":200,\"message\":\"成功\"}', 0, '', NULL, '2022-05-26 16:05:27', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (3, '角色管理', 'DELETE', 'com.gec.auth.controller.SysRoleController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/auth/sysRole/remove/4', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-26 16:52:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (4, '角色管理', 'UPDATE', 'com.gec.auth.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1622507920000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"普通管理员\",\"description\":\"普通管理员\",\"updateTime\":1645670566000,\"id\":2}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:47:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (5, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"SysRole\",\"select\":false,\"level\":3,\"updateTime\":1653287810000,\"type\":1,\"parentId\":2,\"isDeleted\":0,\"children\":[{\"code\":\"btn.SysRole.list\",\"select\":false,\"level\":4,\"updateTime\":1622460772000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"id\":10},{\"code\":\"btn.SysRole.add\",\"select\":false,\"level\":4,\"updateTime\":1653547976000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"id\":11},{\"code\":\"btn.SysRole.update\",\"select\":false,\"level\":4,\"updateTime\":1653547981000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"id\":12},{\"code\":\"btn.SysRole.remove\",\"select\":false,\"level\":4,\"updateTime\":1622507874000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"id\":13},{\"code\":\"btn.SysRole.assignAuth\",\"select\":false,\"level\":4,\"toCode\":\"AssignAuth\",\"updateTime\":1653376735000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"id\":19}],\"createTime\":1622455537000,\"param\":{},\"name\":\"角色管理\",\"id\":4}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:48:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (6, '岗位管理', 'UPDATE', 'com.gec.auth.controller.SysPostController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysPost/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1653359648000,\"param\":{},\"name\":\"总经理\",\"description\":\"2\",\"postCode\":\"zjl\",\"id\":6,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:56:29', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (7, '岗位管理', 'INSERT', 'com.gec.auth.controller.SysPostController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/auth/sysPost/save', '127.0.0.1', '{\"param\":{},\"name\":\"网咨\",\"description\":\"\",\"postCode\":\"wz\",\"id\":7,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:56:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (8, '岗位管理', 'DELETE', 'com.gec.auth.controller.SysPostController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/auth/sysPost/remove/7', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 08:56:41', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (9, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"btn.sysDept.list\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653358064000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653358064000,\"param\":{},\"name\":\"查看\",\"id\":21}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:02:49', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (10, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"btn.sysDept.add\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653463887000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463887000,\"param\":{},\"name\":\"添加\",\"id\":24}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:02:55', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (11, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"btn.sysDept.update\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653463901000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463901000,\"param\":{},\"name\":\"修改\",\"id\":25}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:03:01', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (12, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"btn.sysDept.remove\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653463919000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463919000,\"param\":{},\"name\":\"删除\",\"id\":26}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:03:07', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (13, '部门管理', 'UPDATE', 'com.gec.auth.controller.SysDeptController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysDept/update', '127.0.0.1', '{\"leader\":\"张老师\",\"updateTime\":1653447072000,\"parentId\":2012,\"sortValue\":1,\"isDeleted\":0,\"createTime\":1653447072000,\"param\":{},\"phone\":\"15090909909\",\"name\":\"Java学科\",\"id\":2016,\"treePath\":\",1,20,2012,2012,\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:11:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (14, '部门管理', 'INSERT', 'com.gec.auth.controller.SysDeptController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/auth/sysDept/save', '127.0.0.1', '{\"leader\":\"李老师\",\"parentId\":2012,\"param\":{},\"phone\":\"15090980989\",\"name\":\"大数据学科\",\"id\":2017,\"treePath\":\",1,20,2012,2012,\"}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:11:54', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (15, '部门管理', 'UPDATE', 'com.gec.auth.controller.SysDeptController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysDept/update', '127.0.0.1', '{\"leader\":\"李老师\",\"parentId\":2012,\"sortValue\":1,\"isDeleted\":0,\"createTime\":1653613914000,\"param\":{},\"phone\":\"15090980989\",\"name\":\"大数据学科\",\"id\":2017,\"treePath\":\",1,20,2012,2012,\",\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:16:38', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (16, '角色管理', 'UPDATE', 'com.gec.auth.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1622507920000,\"param\":{},\"roleCode\":\"COMMON\",\"roleName\":\"普通管理员\",\"description\":\"普通管理员\",\"updateTime\":1645670566000,\"id\":2}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 09:28:15', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (17, '角色管理', 'INSERT', 'com.gec.auth.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/auth/sysRole/save', '127.0.0.1', '{\"param\":{},\"roleCode\":\"\",\"roleName\":\"用户管理员\",\"id\":6}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 10:42:18', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (18, '角色管理', 'UPDATE', 'com.gec.auth.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1653619337000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"用户管理员\",\"updateTime\":1653619337000,\"id\":6}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-27 10:43:59', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (19, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysUser\",\"select\":false,\"level\":3,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysUser/list\",\"sortValue\":1,\"component\":\"auth/sysUser/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysUser.list\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"id\":6,\"status\":1},{\"code\":\"bnt.sysUser.add\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"id\":7,\"status\":1},{\"code\":\"bnt.sysUser.update\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"id\":8,\"status\":1},{\"code\":\"bnt.sysUser.remove\",\"select\":false,\"level\":4,\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"id\":9,\"status\":1},{\"code\":\"bnt.sysUser.assignRole\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1653297272000,\"param\":{},\"name\":\"分配角色\",\"id\":18,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"用户管理\",\"perms\":\"bnt.sysUser.list\",\"id\":3,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:14:26', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (20, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysRole\",\"select\":false,\"level\":3,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysRole/list\",\"sortValue\":0,\"component\":\"auth/sysRole/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysRole.list\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysRole.list\",\"id\":10,\"status\":1},{\"code\":\"bnt.sysRole.add\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysRole.add\",\"id\":11,\"status\":1},{\"code\":\"bnt.sysRole.update\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysRole.update\",\"id\":12,\"status\":1},{\"code\":\"bnt.sysRole.remove\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysRole.remove\",\"id\":13,\"status\":1},{\"code\":\"bnt.sysRole.assignAuth\",\"select\":false,\"level\":4,\"toCode\":\"assignAuth\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"perms\":\"bnt.sysRole.assignAuth\",\"id\":19,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"角色管理\",\"perms\":\" bnt.sysRole.list\",\"id\":4,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:18:12', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (21, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysMenu\",\"select\":false,\"level\":3,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysMenu/list\",\"sortValue\":0,\"component\":\"auth/sysMenu/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysMenu.list\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysMenu.list\",\"id\":14,\"status\":1},{\"code\":\"bnt.sysMenu.add\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysMenu.add\",\"id\":15,\"status\":1},{\"code\":\"bnt.sysMenu.update\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysMenu.update\",\"id\":16,\"status\":1},{\"code\":\"bnt.sysMenu.remove\",\"select\":false,\"level\":4,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysMenu.remove\",\"id\":17,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"菜单管理\",\"perms\":\"bnt.sysMenu.list\",\"id\":5,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:18:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (22, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysDept\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysDept/list\",\"sortValue\":0,\"component\":\"auth/sysDept/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysDept.list\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653358064000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysDept.list\",\"id\":21,\"status\":1},{\"code\":\"bnt.sysDept.add\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463887000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysDept.add\",\"id\":24,\"status\":1},{\"code\":\"bnt.sysDept.update\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463901000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysDept.update\",\"id\":25,\"status\":1},{\"code\":\"bnt.sysDept.remove\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463919000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysDept.remove\",\"id\":26,\"status\":1}],\"createTime\":1653358025000,\"param\":{},\"name\":\"部门管理\",\"perms\":\"bnt.sysDept.list\",\"id\":20,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:19:04', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (23, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysPost\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysPost/list\",\"sortValue\":0,\"component\":\"auth/sysPost/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysPost.list\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653359145000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysPost.list\",\"id\":23,\"status\":1},{\"code\":\"bnt.sysPost.add\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653463964000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysPost.add\",\"id\":27,\"status\":1},{\"code\":\"bnt.sysPost.update\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653463978000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysPost.update\",\"id\":28,\"status\":1},{\"code\":\"bnt.sysPost.remove\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653463991000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysPost.remove\",\"id\":29,\"status\":1}],\"createTime\":1653359130000,\"param\":{},\"name\":\"岗位管理\",\"perms\":\"bnt.sysPost.list\",\"id\":22,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:19:23', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (24, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysOperLog\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysOperLog/list\",\"sortValue\":0,\"component\":\"auth/sysOperLog/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysOperLog.list\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":30,\"isDeleted\":0,\"children\":[],\"createTime\":1653552617000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysOperLog.list\",\"id\":31,\"status\":1}],\"createTime\":1653552599000,\"param\":{},\"name\":\"操作日志\",\"perms\":\"bnt.sysOperLog.list\",\"id\":30,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:19:40', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (25, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysLoginLog\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysLoginLog/list\",\"sortValue\":0,\"component\":\"auth/sysLoginLog/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysLoginLog.list\",\"select\":false,\"level\":4,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":32,\"isDeleted\":0,\"children\":[],\"createTime\":1653554191000,\"param\":{},\"name\":\"查看\",\"id\":33,\"status\":1}],\"createTime\":1653554173000,\"param\":{},\"name\":\"登录日志\",\"perms\":\" bnt.sysLoginLog.list\",\"id\":32,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:20:09', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (26, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysUser\",\"select\":false,\"level\":2,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysUser\",\"sortValue\":1,\"component\":\"auth/sysUser/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysUser.list\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysUser.list\",\"id\":6,\"status\":1},{\"code\":\"bnt.sysUser.add\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysUser.add\",\"id\":7,\"status\":1},{\"code\":\"bnt.sysUser.update\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysUser.update\",\"id\":8,\"status\":1},{\"code\":\"bnt.sysUser.remove\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysUser.remove\",\"id\":9,\"status\":1},{\"code\":\"bnt.sysUser.assignRole\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":3,\"isDeleted\":0,\"children\":[],\"createTime\":1653297272000,\"param\":{},\"name\":\"分配角色\",\"perms\":\"bnt.sysUser.assignRole\",\"id\":18,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"用户管理\",\"perms\":\"bnt.sysUser.list\",\"id\":3,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:41:35', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (27, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysRole\",\"select\":false,\"level\":2,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysRole\",\"sortValue\":0,\"component\":\"auth/sysRole/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysRole.list\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysRole.list\",\"id\":10,\"status\":1},{\"code\":\"bnt.sysRole.add\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysRole.add\",\"id\":11,\"status\":1},{\"code\":\"bnt.sysRole.update\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysRole.update\",\"id\":12,\"status\":1},{\"code\":\"bnt.sysRole.remove\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysRole.remove\",\"id\":13,\"status\":1},{\"code\":\"bnt.sysRole.assignAuth\",\"select\":false,\"level\":3,\"toCode\":\"assignAuth\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":4,\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"perms\":\"bnt.sysRole.assignAuth\",\"id\":19,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"角色管理\",\"perms\":\" bnt.sysRole.list\",\"id\":4,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:41:42', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (28, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysMenu\",\"select\":false,\"level\":2,\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysMenu\",\"sortValue\":0,\"component\":\"auth/sysMenu/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysMenu.list\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysMenu.list\",\"id\":14,\"status\":1},{\"code\":\"bnt.sysMenu.add\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysMenu.add\",\"id\":15,\"status\":1},{\"code\":\"bnt.sysMenu.update\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysMenu.update\",\"id\":16,\"status\":1},{\"code\":\"bnt.sysMenu.remove\",\"select\":false,\"level\":3,\"updateTime\":1653959708000,\"type\":2,\"parentId\":5,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysMenu.remove\",\"id\":17,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"菜单管理\",\"perms\":\"bnt.sysMenu.list\",\"id\":5,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:41:51', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (29, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysDept\",\"select\":false,\"level\":2,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysDept\",\"sortValue\":0,\"component\":\"auth/sysDept/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysDept.list\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653358064000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysDept.list\",\"id\":21,\"status\":1},{\"code\":\"bnt.sysDept.add\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463887000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysDept.add\",\"id\":24,\"status\":1},{\"code\":\"bnt.sysDept.update\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463901000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysDept.update\",\"id\":25,\"status\":1},{\"code\":\"bnt.sysDept.remove\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":20,\"isDeleted\":0,\"children\":[],\"createTime\":1653463919000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysDept.remove\",\"id\":26,\"status\":1}],\"createTime\":1653358025000,\"param\":{},\"name\":\"部门管理\",\"perms\":\"bnt.sysDept.list\",\"id\":20,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:41:58', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (30, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysPost\",\"select\":false,\"level\":2,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysPost\",\"sortValue\":0,\"component\":\"auth/sysPost/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysPost.list\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653359145000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysPost.list\",\"id\":23,\"status\":1},{\"code\":\"bnt.sysPost.add\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653463964000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysPost.add\",\"id\":27,\"status\":1},{\"code\":\"bnt.sysPost.update\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653463978000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysPost.update\",\"id\":28,\"status\":1},{\"code\":\"bnt.sysPost.remove\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":22,\"isDeleted\":0,\"children\":[],\"createTime\":1653463991000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysPost.remove\",\"id\":29,\"status\":1}],\"createTime\":1653359130000,\"param\":{},\"name\":\"岗位管理\",\"perms\":\"bnt.sysPost.list\",\"id\":22,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:42:04', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (31, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysOperLog\",\"select\":false,\"level\":2,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysOperLog\",\"sortValue\":0,\"component\":\"auth/sysOperLog/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysOperLog.list\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653959708000,\"type\":2,\"parentId\":30,\"isDeleted\":0,\"children\":[],\"createTime\":1653552617000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysOperLog.list\",\"id\":31,\"status\":1}],\"createTime\":1653552599000,\"param\":{},\"name\":\"操作日志\",\"perms\":\"bnt.sysOperLog.list\",\"id\":30,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:42:09', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (32, '菜单管理', 'UPDATE', 'com.gec.auth.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/auth/sysMenu/update', '127.0.0.1', '{\"code\":\"sysLoginLog\",\"select\":false,\"level\":2,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":2,\"path\":\"sysLoginLog\",\"sortValue\":0,\"component\":\"auth/sysLoginLog/list\",\"isDeleted\":0,\"children\":[{\"code\":\"bnt.sysLoginLog.list\",\"select\":false,\"level\":3,\"toCode\":\"\",\"updateTime\":1653957062000,\"type\":1,\"parentId\":32,\"isDeleted\":0,\"children\":[],\"createTime\":1653554191000,\"param\":{},\"name\":\"查看\",\"id\":33,\"status\":1}],\"createTime\":1653554173000,\"param\":{},\"name\":\"登录日志\",\"perms\":\" bnt.sysLoginLog.list\",\"id\":32,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 09:42:15', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (33, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":0,\"parentId\":2,\"path\":\"log\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"日志管理\",\"perms\":\"\",\"id\":34,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 13:23:07', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (34, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"visible\":1,\"icon\":\"\",\"type\":0,\"parentId\":0,\"path\":\"order\",\"sortValue\":1,\"component\":\"Layout\",\"param\":{},\"name\":\"订单管理\",\"perms\":\"\",\"id\":35,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 13:57:50', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (35, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"visible\":1,\"icon\":\"\",\"type\":1,\"parentId\":35,\"path\":\"orderInfo\",\"sortValue\":1,\"component\":\"order/orderInfo/list\",\"param\":{},\"name\":\"订单列表\",\"perms\":\"bnt.orderInfo.list\",\"id\":36,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-05-31 13:58:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (36, '岗位管理', 'INSERT', 'com.gec.system.controller.SysPostController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysPost/save', '127.0.0.1', '{\"param\":{},\"name\":\"运营总监\",\"description\":\"\",\"postCode\":\"yyzj\",\"id\":8,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:14:21', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (37, '角色管理', 'INSERT', 'com.gec.system.controller.SysRoleController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysRole/save', '127.0.0.1', '{\"param\":{},\"roleCode\":\"\",\"roleName\":\"\",\"id\":8}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:39:04', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (38, '角色管理', 'UPDATE', 'com.gec.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1654681144000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"\",\"updateTime\":1654681144000,\"id\":8}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:39:08', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (39, '角色管理', 'UPDATE', 'com.gec.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1654681144000,\"param\":{},\"roleCode\":\"\",\"roleName\":\"\",\"updateTime\":1654681144000,\"id\":8}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:39:41', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (40, '角色管理', 'UPDATE', 'com.gec.system.controller.SysRoleController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysRole/update', '127.0.0.1', '{\"isDeleted\":0,\"createTime\":1654681144000,\"param\":{},\"roleCode\":\"yhgly\",\"roleName\":\"用户管理员\",\"updateTime\":1654681144000,\"id\":8}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-08 17:42:46', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (41, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-phone\",\"type\":0,\"parentId\":0,\"path\":\"order\",\"sortValue\":1,\"component\":\"Layout\",\"param\":{},\"name\":\"订单管理\",\"perms\":\"\",\"id\":35,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:50:13', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (42, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-phone\",\"updateTime\":1654735813000,\"type\":0,\"parentId\":0,\"path\":\"order\",\"sortValue\":1,\"component\":\"Layout\",\"isDeleted\":0,\"children\":[],\"createTime\":1654735813000,\"param\":{},\"name\":\"订单管理\",\"perms\":\"\",\"id\":35,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:50:22', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (43, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-help\",\"type\":1,\"parentId\":35,\"path\":\"orderInfo\",\"sortValue\":1,\"component\":\"order/orderInfo/list\",\"param\":{},\"name\":\"订单列表\",\"perms\":\"bnt.orderInfo.list\",\"id\":36,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:51:22', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (44, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":2,\"parentId\":36,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.add\",\"id\":37,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:52:37', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (45, '菜单管理', 'DELETE', 'com.gec.system.controller.SysMenuController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysMenu/remove/37', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:53:01', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (46, '菜单管理', 'DELETE', 'com.gec.system.controller.SysMenuController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysMenu/remove/36', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:53:04', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (47, '菜单管理', 'DELETE', 'com.gec.system.controller.SysMenuController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysMenu/remove/35', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 08:53:06', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (48, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-custom\",\"updateTime\":1654737767000,\"type\":1,\"parentId\":2,\"path\":\"sysUser\",\"sortValue\":1,\"component\":\"system/sysUser/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysUser.list\",\"id\":6,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysUser.add\",\"id\":7,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysUser.update\",\"id\":8,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysUser.remove\",\"id\":9,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":3,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653297272000,\"param\":{},\"name\":\"分配角色\",\"perms\":\"bnt.sysUser.assignRole\",\"id\":18,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"用户管理\",\"perms\":\"\",\"id\":3,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:01', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (49, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-user-solid\",\"updateTime\":1654737768000,\"type\":1,\"parentId\":2,\"path\":\"sysRole\",\"sortValue\":1,\"component\":\"system/sysRole/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysRole.list\",\"id\":10,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysRole.add\",\"id\":11,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysRole.update\",\"id\":12,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysRole.remove\",\"id\":13,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"perms\":\"bnt.sysRole.assignAuth\",\"id\":19,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"角色管理\",\"perms\":\"\",\"id\":4,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:10', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (50, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-unfold\",\"updateTime\":1654737769000,\"type\":1,\"parentId\":2,\"path\":\"sysMenu\",\"sortValue\":1,\"component\":\"system/sysMenu/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":5,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysMenu.list\",\"id\":14,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":5,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysMenu.add\",\"id\":15,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":5,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysMenu.update\",\"id\":16,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":5,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1622455537000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysMenu.remove\",\"id\":17,\"status\":1}],\"createTime\":1622455537000,\"param\":{},\"name\":\"菜单管理\",\"perms\":\"\",\"id\":5,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:21', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (51, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-operation\",\"updateTime\":1654737776000,\"type\":1,\"parentId\":2,\"path\":\"sysDept\",\"sortValue\":1,\"component\":\"system/sysDept/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":20,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653358064000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysDept.list\",\"id\":21,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":20,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653463887000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysDept.add\",\"id\":24,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":20,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653463901000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysDept.update\",\"id\":25,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":20,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653463919000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysDept.remove\",\"id\":26,\"status\":1}],\"createTime\":1653358025000,\"param\":{},\"name\":\"部门管理\",\"perms\":\"\",\"id\":20,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:28', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (52, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-more-outline\",\"updateTime\":1654737777000,\"type\":1,\"parentId\":2,\"path\":\"sysPost\",\"sortValue\":1,\"component\":\"system/sysPost/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":22,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653359145000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysPost.list\",\"id\":23,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":22,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653463964000,\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.sysPost.add\",\"id\":27,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":22,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653463978000,\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.sysPost.update\",\"id\":28,\"status\":1},{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":22,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653463991000,\"param\":{},\"name\":\"删除\",\"perms\":\"bnt.sysPost.remove\",\"id\":29,\"status\":1}],\"createTime\":1653359130000,\"param\":{},\"name\":\"岗位管理\",\"perms\":\"\",\"id\":22,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:35', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (53, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-tickets\",\"updateTime\":1653974966000,\"type\":0,\"parentId\":2,\"path\":\"log\",\"sortValue\":1,\"component\":\"ParentView\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737785000,\"type\":1,\"parentId\":34,\"path\":\"sysOperLog\",\"sortValue\":1,\"component\":\"system/sysOperLog/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":30,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653552617000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysOperLog.list\",\"id\":31,\"status\":1}],\"createTime\":1653552599000,\"param\":{},\"name\":\"操作日志\",\"perms\":\"\",\"id\":30,\"status\":1},{\"select\":false,\"updateTime\":1654737787000,\"type\":1,\"parentId\":34,\"path\":\"sysLoginLog\",\"sortValue\":1,\"component\":\"system/sysLoginLog/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":32,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653554191000,\"param\":{},\"name\":\"查看\",\"id\":33,\"status\":1}],\"createTime\":1653554173000,\"param\":{},\"name\":\"登录日志\",\"perms\":\"\",\"id\":32,\"status\":1}],\"createTime\":1653974587000,\"param\":{},\"name\":\"日志管理\",\"perms\":\"\",\"id\":34,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:46', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (54, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-document-remove\",\"updateTime\":1654737785000,\"type\":1,\"parentId\":34,\"path\":\"sysOperLog\",\"sortValue\":1,\"component\":\"system/sysOperLog/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":30,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653552617000,\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.sysOperLog.list\",\"id\":31,\"status\":1}],\"createTime\":1653552599000,\"param\":{},\"name\":\"操作日志\",\"perms\":\"\",\"id\":30,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:24:55', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (55, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-goods\",\"updateTime\":1654737787000,\"type\":1,\"parentId\":34,\"path\":\"sysLoginLog\",\"sortValue\":1,\"component\":\"system/sysLoginLog/list\",\"isDeleted\":0,\"children\":[{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":32,\"sortValue\":1,\"isDeleted\":0,\"children\":[],\"createTime\":1653554191000,\"param\":{},\"name\":\"查看\",\"id\":33,\"status\":1}],\"createTime\":1653554173000,\"param\":{},\"name\":\"登录日志\",\"perms\":\"\",\"id\":32,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:25:07', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (56, '用户管理', 'DELETE', 'com.gec.system.controller.SysUserController.remove()', 'DELETE', 'MANAGE', 'admin', '', '/admin/system/sysUser/remove/4', '127.0.0.1', '', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:25:21', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (57, '菜单管理', 'UPDATE', 'com.gec.system.controller.SysMenuController.updateById()', 'PUT', 'MANAGE', 'admin', '', '/admin/system/sysMenu/update', '127.0.0.1', '{\"select\":false,\"updateTime\":1654737758000,\"type\":2,\"parentId\":4,\"path\":\"assignAuth\",\"sortValue\":1,\"component\":\"system/sysRole/assignAuth\",\"isDeleted\":0,\"children\":[],\"createTime\":1653297494000,\"param\":{},\"name\":\"分配权限\",\"perms\":\"bnt.sysRole.assignAuth\",\"id\":19,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:26:07', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (58, '角色管理', 'ASSGIN', 'com.gec.system.controller.SysMenuController.doAssign()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/doAssign', '127.0.0.1', '{\"roleId\":2,\"menuIdList\":[2,3,6,7,8,5,14,20,21]}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-09 09:26:34', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (59, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-s-help\",\"type\":0,\"parentId\":0,\"path\":\"vod\",\"sortValue\":1,\"component\":\"Layout\",\"param\":{},\"name\":\"点播管理\",\"perms\":\"\",\"id\":35,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-10 15:26:53', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (60, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"el-icon-phone\",\"type\":1,\"parentId\":35,\"path\":\"teacher/list\",\"sortValue\":1,\"component\":\"vod/teacher/list\",\"param\":{},\"name\":\"讲师列表\",\"perms\":\"\",\"id\":36,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-10 15:27:38', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (61, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":2,\"parentId\":36,\"path\":\"teacher/create\",\"sortValue\":1,\"component\":\"vod/teacher/form\",\"param\":{},\"name\":\"添加\",\"perms\":\"bnt.teacher.add\",\"id\":37,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-10 15:28:27', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (62, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":2,\"parentId\":36,\"path\":\"teacher/edit/:id\",\"sortValue\":1,\"component\":\"vod/teacher/form\",\"param\":{},\"name\":\"修改\",\"perms\":\"bnt.teacher.update\",\"id\":38,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-10 15:29:13', NULL, 0);
INSERT INTO `sys_oper_log` VALUES (63, '菜单管理', 'INSERT', 'com.gec.system.controller.SysMenuController.save()', 'POST', 'MANAGE', 'admin', '', '/admin/system/sysMenu/save', '127.0.0.1', '{\"select\":false,\"icon\":\"\",\"type\":2,\"parentId\":36,\"path\":\"\",\"sortValue\":1,\"component\":\"\",\"param\":{},\"name\":\"查看\",\"perms\":\"bnt.teacher.list\",\"id\":39,\"status\":1}', '{\"code\":200,\"message\":\"成功\"}', 1, '', NULL, '2022-06-10 15:35:30', NULL, 0);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '岗位编码',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '岗位名称',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态（1正常 0停用）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (5, 'dsz', '董事长', '1', 1, '2022-05-24 10:33:53', NULL, 0);
INSERT INTO `sys_post` VALUES (6, 'zjl', '总经理', '2', 1, '2022-05-24 10:34:08', NULL, 0);
INSERT INTO `sys_post` VALUES (7, 'wz', '网咨', '', 1, '2022-05-27 08:56:41', '2022-05-27 08:56:41', 1);
INSERT INTO `sys_post` VALUES (8, 'yyzj', '运营总监', '', 1, '2022-06-08 17:14:21', NULL, 0);

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '角色id',
  `role_name` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '' COMMENT '角色名称',
  `role_code` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编码',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '描述',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 37 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, 'system管理员', 'SYSTEM', 'admin', '2021-05-31 18:09:18', '2024-09-19 16:03:09', 0);
INSERT INTO `sys_role` VALUES (2, '普通管理员', 'COMMON', '普通管理员', '2021-06-01 08:38:40', '2022-02-24 10:42:46', 0);
INSERT INTO `sys_role` VALUES (3, '用户管理员', 'yhgly', NULL, '2022-06-08 17:39:04', '2022-06-08 17:39:04', 0);
INSERT INTO `sys_role` VALUES (4, '大飞管理员', 'dafei', 'dafei', NULL, NULL, 0);
INSERT INTO `sys_role` VALUES (5, '大飞管理员2', 'dafei2', 'dafei2', '2022-12-26 15:53:38', NULL, 0);
INSERT INTO `sys_role` VALUES (6, '账务', 'caiwu', '测试账号', '2022-12-27 10:15:04', '2023-06-13 21:01:31', 0);
INSERT INTO `sys_role` VALUES (7, '张定文', '55', '张定文', '2024-09-20 14:23:55', NULL, 0);
INSERT INTO `sys_role` VALUES (8, '测试账号', 'testadmin', '测试账号', '2024-09-19 16:03:43', NULL, 0);
INSERT INTO `sys_role` VALUES (9, '周杰伦', 'testadmin', '测试账号', '2023-06-12 00:25:30', '2023-06-12 23:32:32', 0);
INSERT INTO `sys_role` VALUES (10, '林俊杰', 'lingjunjie', '江南', '2023-06-12 23:36:32', NULL, 0);
INSERT INTO `sys_role` VALUES (11, '张译', 'zhangyi', '狂飙', '2023-06-12 23:38:04', '2023-06-14 22:11:40', 0);
INSERT INTO `sys_role` VALUES (12, '老板', 'bigboss', '雷军', '2023-06-13 20:39:51', '2023-06-14 22:20:05', 0);
INSERT INTO `sys_role` VALUES (13, '明星', '王心凌6', NULL, '2023-06-14 21:52:17', '2023-06-14 23:57:58', 0);
INSERT INTO `sys_role` VALUES (14, '助理经理', 'zhuli', '测试经理', '2023-06-18 08:45:43', '2023-06-18 08:52:08', 0);
INSERT INTO `sys_role` VALUES (15, '账务', 'qian', NULL, '2023-06-19 08:48:36', '2023-06-19 08:59:02', 0);
INSERT INTO `sys_role` VALUES (16, '测试2', '300', '测试用的2', '2023-06-16 10:29:23', NULL, 0);
INSERT INTO `sys_role` VALUES (34, '121', '1221', NULL, '2024-09-24 15:37:12', NULL, 1);
INSERT INTO `sys_role` VALUES (35, '1221', '1212', NULL, '2024-09-24 15:37:16', NULL, 1);
INSERT INTO `sys_role` VALUES (36, '1221', '1221', NULL, '2024-09-24 15:37:19', NULL, 1);
INSERT INTO `sys_role` VALUES (37, '3112', '132213', NULL, '2024-09-24 15:37:22', NULL, 1);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(0) NOT NULL DEFAULT 0,
  `menu_id` bigint(0) NOT NULL DEFAULT 0,
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_menu_id`(`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 823 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (192, 2, 7, '2023-01-18 21:50:42', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (235, 22, 2, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (236, 22, 3, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (237, 22, 7, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (238, 22, 8, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (239, 22, 18, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (240, 22, 4, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (241, 22, 10, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (242, 22, 5, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (243, 22, 14, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (244, 22, 15, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (245, 22, 16, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (246, 22, 17, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (247, 22, 36, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (248, 22, 37, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (249, 22, 38, '2023-06-19 06:24:57', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (250, 30, 2, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (251, 30, 3, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (252, 30, 6, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (253, 30, 7, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (254, 30, 8, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (255, 30, 9, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (256, 30, 18, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (257, 30, 4, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (258, 30, 10, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (259, 30, 11, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (260, 30, 12, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (261, 30, 13, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (262, 30, 19, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (263, 30, 5, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (264, 30, 14, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (265, 30, 15, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (266, 30, 16, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (267, 30, 17, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (268, 30, 34, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (269, 30, 30, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (270, 30, 31, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (271, 30, 32, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (272, 30, 33, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (273, 30, 36, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (274, 30, 37, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (275, 30, 38, '2024-09-21 11:23:27', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (354, 1, 2, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (355, 1, 3, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (356, 1, 6, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (357, 1, 7, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (358, 1, 8, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (359, 1, 9, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (360, 1, 18, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (361, 1, 4, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (362, 1, 10, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (363, 1, 11, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (364, 1, 12, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (365, 1, 13, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (366, 1, 19, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (367, 1, 5, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (368, 1, 14, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (369, 1, 15, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (370, 1, 16, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (371, 1, 17, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (372, 1, 34, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (373, 1, 32, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (374, 1, 33, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (375, 1, 36, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (376, 1, 37, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (377, 1, 38, '2024-09-24 10:40:10', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (450, 27, 2, '2024-09-24 15:23:44', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (451, 27, 3, '2024-09-24 15:23:44', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (452, 27, 6, '2024-09-24 15:23:44', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (453, 27, 4, '2024-09-24 15:23:44', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (454, 27, 10, '2024-09-24 15:23:44', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (455, 21, 2, '2024-09-24 15:24:14', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (456, 21, 3, '2024-09-24 15:24:14', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (457, 21, 6, '2024-09-24 15:24:14', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (458, 21, 4, '2024-09-24 15:24:14', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (459, 21, 10, '2024-09-24 15:24:14', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (460, 7, 2, '2024-09-24 15:38:17', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (461, 7, 4, '2024-09-24 15:38:17', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (462, 7, 10, '2024-09-24 15:38:17', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (463, 1, 2, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (464, 1, 3, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (465, 1, 6, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (466, 1, 7, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (467, 1, 8, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (468, 1, 9, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (469, 1, 18, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (470, 1, 4, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (471, 1, 10, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (472, 1, 11, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (473, 1, 12, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (474, 1, 13, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (475, 1, 19, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (476, 1, 5, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (477, 1, 14, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (478, 1, 15, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (479, 1, 16, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (480, 1, 17, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (481, 1, 34, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (482, 1, 32, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (483, 1, 33, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (484, 1, 36, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (485, 1, 37, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (486, 1, 38, '2024-09-24 15:49:13', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (487, 7, 2, '2024-09-24 15:49:59', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (488, 7, 3, '2024-09-24 15:49:59', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (489, 7, 6, '2024-09-24 15:49:59', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (490, 7, 4, '2024-09-24 15:49:59', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (491, 7, 10, '2024-09-24 15:49:59', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (492, 1, 2, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (493, 1, 3, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (494, 1, 6, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (495, 1, 7, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (496, 1, 8, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (497, 1, 9, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (498, 1, 18, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (499, 1, 4, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (500, 1, 10, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (501, 1, 11, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (502, 1, 12, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (503, 1, 13, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (504, 1, 19, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (505, 1, 5, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (506, 1, 14, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (507, 1, 15, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (508, 1, 16, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (509, 1, 17, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (510, 1, 34, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (511, 1, 32, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (512, 1, 33, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (513, 1, 36, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (514, 1, 37, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (515, 1, 38, '2024-09-25 18:54:32', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (516, 1, 2, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (517, 1, 3, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (518, 1, 6, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (519, 1, 7, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (520, 1, 8, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (521, 1, 9, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (522, 1, 18, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (523, 1, 4, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (524, 1, 10, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (525, 1, 11, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (526, 1, 12, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (527, 1, 13, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (528, 1, 19, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (529, 1, 5, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (530, 1, 14, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (531, 1, 15, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (532, 1, 16, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (533, 1, 17, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (534, 1, 34, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (535, 1, 32, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (536, 1, 33, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (537, 1, 36, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (538, 1, 37, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (539, 1, 38, '2024-09-25 18:57:24', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (540, 7, 2, '2024-09-25 18:57:47', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (541, 7, 3, '2024-09-25 18:57:47', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (542, 7, 6, '2024-09-25 18:57:47', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (543, 7, 4, '2024-09-25 18:57:47', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (544, 7, 10, '2024-09-25 18:57:47', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (545, 1, 2, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (546, 1, 3, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (547, 1, 6, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (548, 1, 7, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (549, 1, 8, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (550, 1, 9, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (551, 1, 18, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (552, 1, 4, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (553, 1, 10, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (554, 1, 11, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (555, 1, 12, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (556, 1, 13, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (557, 1, 19, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (558, 1, 5, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (559, 1, 14, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (560, 1, 15, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (561, 1, 16, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (562, 1, 17, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (563, 1, 34, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (564, 1, 32, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (565, 1, 33, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (566, 1, 43, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (567, 1, 36, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (568, 1, 37, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (569, 1, 38, '2024-09-25 19:39:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (570, 7, 2, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (571, 7, 3, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (572, 7, 6, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (573, 7, 4, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (574, 7, 10, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (575, 7, 34, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (576, 7, 32, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (577, 7, 33, '2024-09-25 20:02:20', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (578, 1, 2, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (579, 1, 3, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (580, 1, 6, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (581, 1, 7, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (582, 1, 8, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (583, 1, 9, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (584, 1, 18, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (585, 1, 4, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (586, 1, 10, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (587, 1, 11, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (588, 1, 12, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (589, 1, 13, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (590, 1, 19, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (591, 1, 5, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (592, 1, 14, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (593, 1, 15, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (594, 1, 16, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (595, 1, 17, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (596, 1, 34, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (597, 1, 32, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (598, 1, 33, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (599, 1, 43, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (600, 1, 36, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (601, 1, 37, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (602, 1, 38, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (603, 1, 44, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (604, 1, 45, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (605, 1, 46, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (606, 1, 47, '2024-09-25 20:20:43', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (607, 7, 2, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (608, 7, 3, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (609, 7, 6, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (610, 7, 4, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (611, 7, 10, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (612, 7, 34, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (613, 7, 32, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (614, 7, 33, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (615, 7, 38, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (616, 7, 47, '2024-09-25 20:21:30', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (617, 1, 2, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (618, 1, 3, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (619, 1, 6, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (620, 1, 7, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (621, 1, 8, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (622, 1, 9, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (623, 1, 18, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (624, 1, 4, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (625, 1, 10, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (626, 1, 11, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (627, 1, 12, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (628, 1, 13, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (629, 1, 19, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (630, 1, 5, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (631, 1, 14, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (632, 1, 15, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (633, 1, 16, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (634, 1, 17, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (635, 1, 34, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (636, 1, 32, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (637, 1, 33, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (638, 1, 43, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (639, 1, 36, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (640, 1, 37, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (641, 1, 38, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (642, 1, 44, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (643, 1, 45, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (644, 1, 46, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (645, 1, 47, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (646, 1, 49, '2024-09-27 10:21:03', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (647, 1, 2, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (648, 1, 3, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (649, 1, 6, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (650, 1, 7, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (651, 1, 8, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (652, 1, 9, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (653, 1, 18, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (654, 1, 4, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (655, 1, 10, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (656, 1, 11, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (657, 1, 12, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (658, 1, 13, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (659, 1, 19, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (660, 1, 5, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (661, 1, 14, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (662, 1, 15, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (663, 1, 16, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (664, 1, 17, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (665, 1, 34, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (666, 1, 32, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (667, 1, 33, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (668, 1, 43, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (669, 1, 36, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (670, 1, 37, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (671, 1, 50, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (672, 1, 51, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (673, 1, 52, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (674, 1, 53, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (675, 1, 38, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (676, 1, 44, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (677, 1, 45, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (678, 1, 46, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (679, 1, 47, '2024-09-27 10:26:33', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (680, 7, 2, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (681, 7, 3, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (682, 7, 6, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (683, 7, 4, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (684, 7, 10, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (685, 7, 34, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (686, 7, 32, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (687, 7, 33, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (688, 7, 36, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (689, 7, 37, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (690, 7, 38, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (691, 7, 47, '2024-09-27 10:50:46', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (692, 7, 2, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (693, 7, 3, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (694, 7, 6, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (695, 7, 4, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (696, 7, 10, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (697, 7, 34, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (698, 7, 32, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (699, 7, 33, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (700, 7, 36, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (701, 7, 37, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (702, 7, 52, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (703, 7, 38, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (704, 7, 47, '2024-09-27 10:51:45', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (705, 1, 2, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (706, 1, 3, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (707, 1, 6, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (708, 1, 7, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (709, 1, 8, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (710, 1, 9, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (711, 1, 18, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (712, 1, 4, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (713, 1, 10, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (714, 1, 11, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (715, 1, 12, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (716, 1, 13, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (717, 1, 19, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (718, 1, 5, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (719, 1, 14, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (720, 1, 15, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (721, 1, 16, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (722, 1, 17, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (723, 1, 34, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (724, 1, 32, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (725, 1, 33, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (726, 1, 43, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (727, 1, 36, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (728, 1, 37, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (729, 1, 50, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (730, 1, 51, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (731, 1, 52, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (732, 1, 53, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (733, 1, 55, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (734, 1, 38, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (735, 1, 44, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (736, 1, 45, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (737, 1, 46, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (738, 1, 47, '2024-09-27 11:05:14', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (739, 1, 2, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (740, 1, 3, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (741, 1, 6, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (742, 1, 7, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (743, 1, 8, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (744, 1, 9, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (745, 1, 18, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (746, 1, 4, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (747, 1, 10, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (748, 1, 11, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (749, 1, 12, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (750, 1, 13, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (751, 1, 19, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (752, 1, 5, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (753, 1, 14, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (754, 1, 15, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (755, 1, 16, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (756, 1, 17, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (757, 1, 34, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (758, 1, 32, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (759, 1, 33, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (760, 1, 43, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (761, 1, 36, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (762, 1, 37, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (763, 1, 50, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (764, 1, 51, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (765, 1, 52, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (766, 1, 53, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (767, 1, 38, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (768, 1, 44, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (769, 1, 47, '2024-09-29 10:34:28', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (770, 1, 2, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (771, 1, 3, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (772, 1, 6, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (773, 1, 7, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (774, 1, 8, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (775, 1, 9, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (776, 1, 18, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (777, 1, 4, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (778, 1, 10, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (779, 1, 11, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (780, 1, 12, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (781, 1, 13, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (782, 1, 19, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (783, 1, 5, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (784, 1, 14, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (785, 1, 15, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (786, 1, 16, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (787, 1, 17, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (788, 1, 34, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (789, 1, 32, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (790, 1, 33, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (791, 1, 43, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (792, 1, 36, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (793, 1, 37, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (794, 1, 50, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (795, 1, 51, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (796, 1, 52, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (797, 1, 53, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (798, 1, 38, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (799, 1, 44, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (800, 1, 45, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (801, 1, 46, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (802, 1, 47, '2024-09-29 10:34:37', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (803, 7, 2, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (804, 7, 3, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (805, 7, 6, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (806, 7, 4, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (807, 7, 10, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (808, 7, 34, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (809, 7, 32, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (810, 7, 33, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (811, 7, 36, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (812, 7, 37, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (813, 7, 52, '2024-09-29 10:34:54', NULL, 1);
INSERT INTO `sys_role_menu` VALUES (814, 7, 2, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (815, 7, 3, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (816, 7, 6, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (817, 7, 4, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (818, 7, 10, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (819, 7, 34, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (820, 7, 32, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (821, 7, 33, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (822, 7, 38, '2024-09-29 10:36:00', NULL, 0);
INSERT INTO `sys_role_menu` VALUES (823, 7, 47, '2024-09-29 10:36:00', NULL, 0);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '会员id',
  `username` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户名',
  `password` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '密码',
  `name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '姓名',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '手机',
  `head_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '头像地址',
  `dept_id` bigint(0) NULL DEFAULT NULL COMMENT '部门id',
  `post_id` bigint(0) NULL DEFAULT NULL COMMENT '岗位id',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '描述',
  `status` tinyint(0) NULL DEFAULT 1 COMMENT '状态（1：正常 0：停用）',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `idx_username`(`username`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 'admin', 'e10adc3949ba59abbe56e057f20f883e', '张定文', '123456', NULL, NULL, NULL, NULL, 1, '2024-09-22 11:03:23', '2024-09-25 18:51:25', 0);
INSERT INTO `sys_user` VALUES (2, 'xiaoli', 'e10adc3949ba59abbe56e057f20f883e', '小李', '15010546381', 'http://r61cnlsfq.hn-bkt.clouddn.com/b09b3467-3d99-437a-bd2e-dd8c9be92bb8', 1022, 6, NULL, 1, '2022-02-08 10:35:38', '2022-05-25 15:58:31', 0);
INSERT INTO `sys_user` VALUES (3, 'fengdagang', 'e10adc3949ba59abbe56e057f20f883e', '冯大刚', '18909098909', NULL, 1024, 5, NULL, 1, '2022-05-24 11:05:40', '2022-06-02 10:19:25', 0);
INSERT INTO `sys_user` VALUES (4, 'huangdaxi', 'e10adc3949ba59abbe56e057f20f883e', '黄大西', '15010546381', '', 1021, 3, '', 1, '2023-01-03 22:19:21', NULL, 0);
INSERT INTO `sys_user` VALUES (5, 'test用户2', 'e10adc3949ba59abbe56e057f20f883e', '测试用户', '13212345678', NULL, NULL, NULL, NULL, 1, '2023-01-05 16:24:34', '2023-01-18 21:47:46', 0);
INSERT INTO `sys_user` VALUES (6, 'dafei2022', 'e10adc3949ba59abbe56e057f20f883e', 'dafei2022', '132', NULL, NULL, NULL, NULL, 1, '2023-01-14 12:04:53', '2023-01-18 21:49:13', 0);
INSERT INTO `sys_user` VALUES (7, 'ceshi123', 'e10adc3949ba59abbe56e057f20f883e', '嘻嘻', '123456', NULL, NULL, NULL, NULL, 1, '2023-01-18 21:50:03', '2023-06-15 23:49:55', 0);
INSERT INTO `sys_user` VALUES (8, 'haha', 'e10adc3949ba59abbe56e057f20f883e', '哈哈', '110', NULL, NULL, NULL, NULL, 1, '2023-06-15 23:29:23', '2024-09-20 21:16:07', 0);
INSERT INTO `sys_user` VALUES (10, 'admindasd', 'e10adc3949ba59abbe56e057f20f883e', '管理员', '15099909888', 'http://r61cnlsfq.hn-bkt.clouddn.com/7daa4595-dfde-45da-8513-c5c2b81d20cc', 1021, 5, NULL, 1, '2021-05-31 18:08:43', '2024-09-24 15:25:25', 0);
INSERT INTO `sys_user` VALUES (11, 'zdw', 'e10adc3949ba59abbe56e057f20f883e', 'zdw', '18024897036', NULL, NULL, NULL, NULL, 1, '2024-09-24 15:02:04', '2024-09-24 15:02:14', 0);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `id` bigint(0) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `role_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '角色id',
  `user_id` bigint(0) NOT NULL DEFAULT 0 COMMENT '用户id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `is_deleted` tinyint(0) NOT NULL DEFAULT 0 COMMENT '删除标记（0:可用 1:已删除）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_role_id`(`role_id`) USING BTREE,
  INDEX `idx_admin_id`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 193 CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户角色' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (11, 2, 5, '2023-01-06 11:48:43', NULL, 1);
INSERT INTO `sys_user_role` VALUES (12, 1, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (13, 2, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (14, 8, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (15, 9, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (16, 10, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (17, 11, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (18, 12, 4, '2023-01-06 11:50:17', NULL, 1);
INSERT INTO `sys_user_role` VALUES (19, 2, 4, '2023-01-06 11:50:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (20, 8, 4, '2023-01-06 11:50:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (21, 9, 4, '2023-01-06 11:50:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (22, 10, 4, '2023-01-06 11:50:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (23, 11, 4, '2023-01-06 11:50:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (24, 12, 4, '2023-01-06 11:50:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (25, 22, 6, '2023-01-14 12:05:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (26, 1, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (27, 2, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (28, 8, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (29, 9, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (30, 10, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (31, 11, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (32, 12, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (33, 21, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (34, 22, 1, '2023-01-14 17:36:49', NULL, 1);
INSERT INTO `sys_user_role` VALUES (35, 22, 6, '2023-01-18 20:33:38', NULL, 1);
INSERT INTO `sys_user_role` VALUES (36, 22, 6, '2023-01-18 21:43:09', NULL, 0);
INSERT INTO `sys_user_role` VALUES (37, 2, 7, '2023-01-18 21:50:16', NULL, 1);
INSERT INTO `sys_user_role` VALUES (38, 2, 5, '2023-01-18 21:51:38', NULL, 0);
INSERT INTO `sys_user_role` VALUES (39, 22, 7, '2023-01-18 21:54:38', NULL, 1);
INSERT INTO `sys_user_role` VALUES (40, 22, 7, '2023-02-02 17:39:46', NULL, 1);
INSERT INTO `sys_user_role` VALUES (41, 2, 7, '2023-02-02 17:39:46', NULL, 1);
INSERT INTO `sys_user_role` VALUES (42, 21, 7, '2023-02-02 17:39:46', NULL, 1);
INSERT INTO `sys_user_role` VALUES (43, 2, 4, '2023-06-17 22:41:32', NULL, 1);
INSERT INTO `sys_user_role` VALUES (44, 8, 4, '2023-06-17 22:41:32', NULL, 1);
INSERT INTO `sys_user_role` VALUES (45, 9, 4, '2023-06-17 22:41:32', NULL, 1);
INSERT INTO `sys_user_role` VALUES (46, 10, 4, '2023-06-17 22:41:32', NULL, 1);
INSERT INTO `sys_user_role` VALUES (47, 11, 4, '2023-06-17 22:41:32', NULL, 1);
INSERT INTO `sys_user_role` VALUES (48, 18, 4, '2023-06-17 22:41:32', NULL, 1);
INSERT INTO `sys_user_role` VALUES (49, 21, 8, '2024-09-20 20:09:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (50, 21, 8, '2024-09-20 20:10:20', NULL, 1);
INSERT INTO `sys_user_role` VALUES (51, 1, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (52, 2, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (53, 3, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (54, 4, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (55, 5, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (56, 6, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (57, 7, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (58, 8, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (59, 9, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (60, 10, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (61, 11, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (62, 12, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (63, 13, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (64, 14, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (65, 15, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (66, 16, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (67, 17, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (68, 18, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (69, 19, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (70, 20, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (71, 21, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (72, 27, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (73, 28, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (74, 29, 11, '2024-09-21 11:22:42', NULL, 1);
INSERT INTO `sys_user_role` VALUES (75, 1, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (76, 2, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (77, 3, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (78, 4, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (79, 5, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (80, 6, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (81, 7, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (82, 8, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (83, 9, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (84, 10, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (85, 11, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (86, 12, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (87, 13, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (88, 14, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (89, 15, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (90, 16, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (91, 17, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (92, 18, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (93, 19, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (94, 20, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (95, 21, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (96, 27, 9, '2024-09-22 10:34:36', NULL, 1);
INSERT INTO `sys_user_role` VALUES (97, 1, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (98, 2, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (99, 3, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (100, 4, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (101, 5, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (102, 6, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (103, 7, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (104, 8, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (105, 9, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (106, 10, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (107, 11, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (108, 12, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (109, 13, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (110, 14, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (111, 15, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (112, 16, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (113, 17, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (114, 18, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (115, 19, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (116, 20, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (117, 21, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (118, 27, 13, '2024-09-22 11:04:11', NULL, 0);
INSERT INTO `sys_user_role` VALUES (119, 1, 10, '2024-09-22 11:35:50', NULL, 1);
INSERT INTO `sys_user_role` VALUES (120, 2, 10, '2024-09-22 11:35:50', NULL, 1);
INSERT INTO `sys_user_role` VALUES (121, 3, 10, '2024-09-22 11:35:50', NULL, 1);
INSERT INTO `sys_user_role` VALUES (122, 4, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (123, 5, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (124, 6, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (125, 7, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (126, 8, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (127, 9, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (128, 10, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (129, 11, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (130, 12, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (131, 13, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (132, 14, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (133, 15, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (134, 16, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (135, 17, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (136, 18, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (137, 19, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (138, 20, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (139, 21, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (140, 27, 10, '2024-09-22 11:35:51', NULL, 1);
INSERT INTO `sys_user_role` VALUES (141, 1, 1, '2024-09-22 14:16:28', NULL, 1);
INSERT INTO `sys_user_role` VALUES (142, 2, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (143, 3, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (144, 4, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (145, 5, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (146, 6, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (147, 7, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (148, 8, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (149, 9, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (150, 10, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (151, 11, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (152, 12, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (153, 13, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (154, 14, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (155, 15, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (156, 16, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (157, 17, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (158, 18, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (159, 19, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (160, 20, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (161, 21, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (162, 27, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (163, 28, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (164, 29, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (165, 30, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (166, 31, 1, '2024-09-22 14:16:29', NULL, 1);
INSERT INTO `sys_user_role` VALUES (167, 1, 1, '2024-09-24 10:39:52', NULL, 1);
INSERT INTO `sys_user_role` VALUES (168, 27, 16, '2024-09-24 15:14:28', NULL, 1);
INSERT INTO `sys_user_role` VALUES (169, 27, 16, '2024-09-24 15:15:02', NULL, 1);
INSERT INTO `sys_user_role` VALUES (170, 21, 16, '2024-09-24 15:15:02', NULL, 1);
INSERT INTO `sys_user_role` VALUES (171, 21, 16, '2024-09-24 15:20:06', NULL, 1);
INSERT INTO `sys_user_role` VALUES (172, 21, 16, '2024-09-24 15:24:00', NULL, 0);
INSERT INTO `sys_user_role` VALUES (173, 7, 11, '2024-09-24 15:37:57', NULL, 1);
INSERT INTO `sys_user_role` VALUES (174, 1, 1, '2024-09-24 15:49:20', NULL, 1);
INSERT INTO `sys_user_role` VALUES (175, 7, 11, '2024-09-24 15:49:45', NULL, 1);
INSERT INTO `sys_user_role` VALUES (176, 2, 4, '2024-09-24 15:50:47', NULL, 0);
INSERT INTO `sys_user_role` VALUES (177, 8, 4, '2024-09-24 15:50:47', NULL, 0);
INSERT INTO `sys_user_role` VALUES (178, 9, 4, '2024-09-24 15:50:47', NULL, 0);
INSERT INTO `sys_user_role` VALUES (179, 10, 4, '2024-09-24 15:50:47', NULL, 0);
INSERT INTO `sys_user_role` VALUES (180, 11, 4, '2024-09-24 15:50:47', NULL, 0);
INSERT INTO `sys_user_role` VALUES (181, 18, 4, '2024-09-24 15:50:47', NULL, 0);
INSERT INTO `sys_user_role` VALUES (182, 7, 11, '2024-09-24 15:55:24', NULL, 1);
INSERT INTO `sys_user_role` VALUES (183, 22, 7, '2024-09-24 15:55:57', NULL, 1);
INSERT INTO `sys_user_role` VALUES (184, 2, 7, '2024-09-24 15:55:57', NULL, 1);
INSERT INTO `sys_user_role` VALUES (185, 21, 7, '2024-09-24 15:55:57', NULL, 1);
INSERT INTO `sys_user_role` VALUES (186, 12, 7, '2024-09-24 15:55:57', NULL, 1);
INSERT INTO `sys_user_role` VALUES (187, 22, 7, '2024-09-24 15:56:01', NULL, 0);
INSERT INTO `sys_user_role` VALUES (188, 2, 7, '2024-09-24 15:56:01', NULL, 0);
INSERT INTO `sys_user_role` VALUES (189, 21, 7, '2024-09-24 15:56:01', NULL, 0);
INSERT INTO `sys_user_role` VALUES (190, 1, 1, '2024-09-25 18:51:31', NULL, 1);
INSERT INTO `sys_user_role` VALUES (191, 7, 11, '2024-09-25 18:57:35', NULL, 1);
INSERT INTO `sys_user_role` VALUES (192, 1, 1, '2024-09-25 19:39:18', NULL, 0);
INSERT INTO `sys_user_role` VALUES (193, 7, 11, '2024-09-27 10:51:22', NULL, 0);

SET FOREIGN_KEY_CHECKS = 1;
