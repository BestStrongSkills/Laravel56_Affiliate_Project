/*
 Navicat Premium Data Transfer

 Source Server         : MyProjects
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : localhost:3306
 Source Schema         : referral_notification

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 05/05/2018 12:57:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for blogs
-- ----------------------------
DROP TABLE IF EXISTS `blogs`;
CREATE TABLE `blogs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of blogs
-- ----------------------------
INSERT INTO `blogs` VALUES (1, 'gdgdfgd', 'dgfgdffffffffffffffffffffffffffggggggggggggggggggggg', 7, NULL, NULL);

-- ----------------------------
-- Table structure for bonouses
-- ----------------------------
DROP TABLE IF EXISTS `bonouses`;
CREATE TABLE `bonouses`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `week_referral` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `week_bonous` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alltime_referral` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alltime_bonous` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `qualified_loan` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 27 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of bonouses
-- ----------------------------
INSERT INTO `bonouses` VALUES (1, 1, '2', '1', '5', '2', 1, '2018-03-29 13:50:57', '2018-03-31 16:11:55');
INSERT INTO `bonouses` VALUES (2, 2, '2', '1', '2', '2', 1, '2018-03-29 13:51:00', '2018-03-31 16:11:55');
INSERT INTO `bonouses` VALUES (3, 4, '2', '2', '6', '2', 1, '2018-03-29 13:51:10', '2018-03-31 16:11:56');
INSERT INTO `bonouses` VALUES (4, 3, '2', '5', '4', '2', 1, '2018-03-29 13:56:15', '2018-03-31 16:11:57');
INSERT INTO `bonouses` VALUES (5, 5, '3', '6', '3', '6', 1, '2018-03-30 04:37:40', '2018-03-31 16:12:02');
INSERT INTO `bonouses` VALUES (6, 1, '2', '1', '4', '2', 1, '2018-03-30 18:12:22', '2018-03-31 16:12:03');
INSERT INTO `bonouses` VALUES (7, 1, '2', '1', '6', '3', 0, '2018-03-30 18:12:41', '2018-03-30 18:12:41');
INSERT INTO `bonouses` VALUES (8, 1, '2', '1', '6', '3', 0, '2018-03-30 18:20:37', '2018-03-30 18:20:37');
INSERT INTO `bonouses` VALUES (9, 2, '2', '1', '8', '4', 0, '2018-03-31 02:31:22', '2018-03-31 02:31:22');
INSERT INTO `bonouses` VALUES (10, 2, '2', '1', '8', '4', 0, '2018-03-31 02:32:13', '2018-03-31 02:32:13');
INSERT INTO `bonouses` VALUES (11, 2, '2', '1', '8', '4', 0, '2018-03-31 03:09:11', '2018-03-31 03:09:11');
INSERT INTO `bonouses` VALUES (12, 2, '2', '1', '8', '4', 0, '2018-03-31 13:59:47', '2018-03-31 13:59:47');
INSERT INTO `bonouses` VALUES (13, 2, '2', '1', '8', '4', 0, '2018-03-31 14:26:56', '2018-03-31 14:26:56');
INSERT INTO `bonouses` VALUES (14, 2, '2', '1', '8', '4', 0, '2018-03-31 14:27:18', '2018-03-31 14:27:18');
INSERT INTO `bonouses` VALUES (15, 2, '2', '1', '8', '4', 0, '2018-03-31 14:27:43', '2018-03-31 14:27:43');
INSERT INTO `bonouses` VALUES (16, 2, '2', '1', '8', '4', 0, '2018-03-31 14:28:10', '2018-03-31 14:28:10');
INSERT INTO `bonouses` VALUES (17, 2, '2', '1', '8', '4', 0, '2018-03-31 14:28:38', '2018-03-31 14:28:38');
INSERT INTO `bonouses` VALUES (18, 2, '2', '1', '8', '4', 0, '2018-03-31 14:31:31', '2018-03-31 14:31:31');
INSERT INTO `bonouses` VALUES (19, 2, '2', '1', '8', '4', 0, '2018-03-31 14:31:47', '2018-03-31 14:31:47');
INSERT INTO `bonouses` VALUES (20, 2, '2', '1', '8', '4', 0, '2018-03-31 14:32:00', '2018-03-31 14:32:00');
INSERT INTO `bonouses` VALUES (21, 2, '2', '1', '8', '4', 0, '2018-03-31 14:33:13', '2018-03-31 14:33:13');
INSERT INTO `bonouses` VALUES (22, 2, '2', '1', '8', '4', 0, '2018-03-31 14:33:41', '2018-03-31 14:33:41');
INSERT INTO `bonouses` VALUES (23, 2, '2', '1', '8', '4', 0, '2018-03-31 14:34:02', '2018-03-31 14:34:02');
INSERT INTO `bonouses` VALUES (24, 2, '2', '1', '8', '4', 0, '2018-03-31 14:35:29', '2018-03-31 14:35:29');
INSERT INTO `bonouses` VALUES (25, 5, '2', '1', '8', '4', 0, '2018-03-31 15:48:29', '2018-03-31 15:48:29');
INSERT INTO `bonouses` VALUES (26, 6, '2', '1', '8', '4', 0, '2018-03-31 15:51:39', '2018-03-31 15:51:39');

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `comment` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `sortname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for files
-- ----------------------------
DROP TABLE IF EXISTS `files`;
CREATE TABLE `files`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `safe_file_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_size` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of files
-- ----------------------------
INSERT INTO `files` VALUES (1, 'Cntct.txt', 'txt', 'Q5XHliAZsV.txt', '111 bytes', NULL, NULL);

-- ----------------------------
-- Table structure for loan_settings
-- ----------------------------
DROP TABLE IF EXISTS `loan_settings`;
CREATE TABLE `loan_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `minium_referral_loan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_referral_loan` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of loan_settings
-- ----------------------------
INSERT INTO `loan_settings` VALUES (1, '6000', '0.25', '2018-03-30 01:32:36', '2018-03-30 01:32:36');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 192 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (8, '2018_03_22_063536_create_referral_links_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_03_22_153554_create_users_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_03_26_082137_create_referral_links_table', 2);
INSERT INTO `migrations` VALUES (12, '2018_03_26_082516_create_users_table', 2);
INSERT INTO `migrations` VALUES (15, '2018_03_26_090639_create_referral_settings_table', 4);
INSERT INTO `migrations` VALUES (16, '2018_03_26_091305_create_bonouses_table', 4);
INSERT INTO `migrations` VALUES (20, '2018_03_27_021225_create_files_table', 7);
INSERT INTO `migrations` VALUES (21, '2018_03_27_101221_create_files_table', 8);
INSERT INTO `migrations` VALUES (174, '2014_10_12_100000_create_password_resets_table', 9);
INSERT INTO `migrations` VALUES (175, '2017_09_29_142134_create_posts_table', 9);
INSERT INTO `migrations` VALUES (176, '2017_10_04_081637_create_comments_table', 9);
INSERT INTO `migrations` VALUES (177, '2017_10_07_070138_create_countries_table', 9);
INSERT INTO `migrations` VALUES (178, '2018_03_11_054315_create_blogs_table', 9);
INSERT INTO `migrations` VALUES (179, '2018_03_22_044612_create_user_activations_table', 9);
INSERT INTO `migrations` VALUES (180, '2018_03_22_063257_create_referral_programs_table', 9);
INSERT INTO `migrations` VALUES (181, '2018_03_22_064005_create_referral_relationships_table', 9);
INSERT INTO `migrations` VALUES (182, '2018_03_26_083627_create_referral_contest_settings_table', 9);
INSERT INTO `migrations` VALUES (183, '2018_03_26_083904_create_loan_settings_table', 9);
INSERT INTO `migrations` VALUES (184, '2018_03_26_092454_create_referral_links_table', 9);
INSERT INTO `migrations` VALUES (185, '2018_03_26_093044_create_referral_settings_table', 9);
INSERT INTO `migrations` VALUES (186, '2018_03_26_133035_create_users_table', 9);
INSERT INTO `migrations` VALUES (187, '2018_03_27_103032_create_files_table', 9);
INSERT INTO `migrations` VALUES (188, '2018_03_27_223652_create_bonouses_table', 9);
INSERT INTO `migrations` VALUES (189, '2018_03_30_162255_create_verify_users_table', 10);
INSERT INTO `migrations` VALUES (190, '2018_03_30_163622_create_users_table', 11);
INSERT INTO `migrations` VALUES (191, '2018_03_30_181637_create_users_table', 12);

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for referral_contest_settings
-- ----------------------------
DROP TABLE IF EXISTS `referral_contest_settings`;
CREATE TABLE `referral_contest_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `minium_contest` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_day` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of referral_contest_settings
-- ----------------------------
INSERT INTO `referral_contest_settings` VALUES (1, '1500', '20', NULL, NULL);

-- ----------------------------
-- Table structure for referral_links
-- ----------------------------
DROP TABLE IF EXISTS `referral_links`;
CREATE TABLE `referral_links`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `referral_program_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `referral_links_referral_program_id_user_id_unique`(`referral_program_id`, `user_id`) USING BTREE,
  INDEX `referral_links_code_index`(`code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of referral_links
-- ----------------------------
INSERT INTO `referral_links` VALUES (1, 2, 1, '7a20781e-3357-11e8-afe5-00ff5e722ee0', '2018-03-29 13:45:43', '2018-03-29 13:45:43');
INSERT INTO `referral_links` VALUES (2, 2, 2, '7a26fc48-3357-11e8-9e7d-00ff5e722ee0', '2018-03-29 13:45:43', '2018-03-29 13:45:43');
INSERT INTO `referral_links` VALUES (3, 5, 1, 'd4960bce-3357-11e8-a4aa-00ff5e722ee0', '2018-03-29 13:48:15', '2018-03-29 13:48:15');
INSERT INTO `referral_links` VALUES (4, 5, 2, 'd49713d4-3357-11e8-bfb5-00ff5e722ee0', '2018-03-29 13:48:15', '2018-03-29 13:48:15');
INSERT INTO `referral_links` VALUES (5, 19, 1, 'e4c1e70e-3445-11e8-92af-00ff5e722ee0', '2018-03-30 18:12:23', '2018-03-30 18:12:23');
INSERT INTO `referral_links` VALUES (6, 19, 2, 'e4c80328-3445-11e8-8a6d-00ff5e722ee0', '2018-03-30 18:12:23', '2018-03-30 18:12:23');
INSERT INTO `referral_links` VALUES (7, 1, 1, '0ba41490-3447-11e8-bf7a-00ff5e722ee0', '2018-03-30 18:20:37', '2018-03-30 18:20:37');
INSERT INTO `referral_links` VALUES (8, 1, 2, '0ba55198-3447-11e8-bafd-00ff5e722ee0', '2018-03-30 18:20:37', '2018-03-30 18:20:37');

-- ----------------------------
-- Table structure for referral_programs
-- ----------------------------
DROP TABLE IF EXISTS `referral_programs`;
CREATE TABLE `referral_programs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lifetime_minutes` int(11) NOT NULL DEFAULT 10080,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of referral_programs
-- ----------------------------
INSERT INTO `referral_programs` VALUES (1, 'Sign-up Bonus', 'register', 10080, '2018-03-29 13:39:35', '2018-03-29 13:39:35');
INSERT INTO `referral_programs` VALUES (2, 'Sign-up', 'register', 10080, '2018-03-29 13:39:46', '2018-03-29 13:39:46');

-- ----------------------------
-- Table structure for referral_relationships
-- ----------------------------
DROP TABLE IF EXISTS `referral_relationships`;
CREATE TABLE `referral_relationships`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `referral_link_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for referral_settings
-- ----------------------------
DROP TABLE IF EXISTS `referral_settings`;
CREATE TABLE `referral_settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname_statue` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `per_referred_account` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minium_contest` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reset_day` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `minium_referral_loan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `per_referral_loan` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of referral_settings
-- ----------------------------
INSERT INTO `referral_settings` VALUES (1, NULL, '34', '345', '20', '5000', '0.6', '2018-03-30 01:29:29', '2018-03-31 16:12:25');
INSERT INTO `referral_settings` VALUES (12, NULL, 'o.6$', '700', '30 days', '5500', '0.25$', '2018-03-29 17:46:55', '2018-03-29 17:46:55');

-- ----------------------------
-- Table structure for user_activations
-- ----------------------------
DROP TABLE IF EXISTS `user_activations`;
CREATE TABLE `user_activations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `user_activations_token_index`(`token`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 35 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user_activations
-- ----------------------------
INSERT INTO `user_activations` VALUES (1, 1, 'aad36b2e8afdaf1ab05f20741a92d16db49f47da3ace5a1bd312f50e156de330', '2018-03-29 13:40:54', NULL);
INSERT INTO `user_activations` VALUES (3, 3, '6868ab1276fc550ea663bf8d925a6ca1659d6c67bb1e78a2ee953cd6a62e5d35', '2018-03-29 13:47:18', NULL);
INSERT INTO `user_activations` VALUES (6, 8, 'd70b52c3f814217a7f12c7647f5eb2e3a5d34ce0026e7f6390143a8bddbdbf52', '2018-03-30 13:44:43', NULL);
INSERT INTO `user_activations` VALUES (7, 9, 'ea7a0e7e51d1deb6027db9d61081f13aaf73e7b3c6ab47f1a5179ddc009cbcb8', '2018-03-30 13:51:34', NULL);
INSERT INTO `user_activations` VALUES (8, 11, '9359b63813bd7af7c137128020487e455ab4c35f070f59098c4d2ffed46024a1', '2018-03-30 13:52:48', NULL);
INSERT INTO `user_activations` VALUES (9, 13, 'ba399b7a8eb696f9e8a3ad869c619e53d2b58eaec2ee149e767aec192e35a416', '2018-03-30 13:54:38', NULL);
INSERT INTO `user_activations` VALUES (10, 16, '75e302de71863b30c501e2c3aa2fec2c22b07b00f8caf76425b468a09d3d9ef3', '2018-03-30 13:55:41', NULL);
INSERT INTO `user_activations` VALUES (11, 18, '4ad42c0ff68e0fca352daf922347187fd1bcce7dd5fc9d01d8fa90b8947d3a2d', '2018-03-30 14:04:01', NULL);
INSERT INTO `user_activations` VALUES (12, 19, '5bade27be87af0676275d70ff1e466528d453d80a83eb513b783c793889a8935', '2018-03-30 14:05:05', NULL);
INSERT INTO `user_activations` VALUES (13, 20, '0156c814fc57ac97922ae20d3c547e0e50c00c5519fb4db3fd442c7e1e2a5806', '2018-03-30 14:05:36', NULL);
INSERT INTO `user_activations` VALUES (14, 22, '28457b6fc8e98b97f948ea7b5ef4cbf6643551cf8622af85c1f43e1341c52505', '2018-03-30 14:07:43', NULL);
INSERT INTO `user_activations` VALUES (15, 23, '40557726a0dfdb0cdeddb9f1bbc8767f0426972e10cc682aa5c60480b611ba22', '2018-03-30 14:11:56', NULL);
INSERT INTO `user_activations` VALUES (16, 24, 'be84593e2d50047e0e4bc7f99e3a5ba9e560a05a98c8b00445aa4466565aa98e', '2018-03-30 14:14:59', NULL);
INSERT INTO `user_activations` VALUES (17, 25, '2a4e0fa0f7d4487373c8b3b93015f1d2e929a4b7eb1d297ed9a8292f6a794691', '2018-03-30 14:15:49', NULL);
INSERT INTO `user_activations` VALUES (18, 27, 'feb2d34ede28fa82154ecf57e9b036533747592a8e4eb82e4bcface813e70038', '2018-03-30 14:17:33', NULL);
INSERT INTO `user_activations` VALUES (19, 29, 'e92dccda561218636e307cdcf45912b7c5c7cc7462d60c10fccd1fbd7701d562', '2018-03-30 14:20:13', NULL);
INSERT INTO `user_activations` VALUES (20, 30, '73739bb3b44bcdcd13d6d24d0fcc796eb8b641d6132f8d49c08f6a25b97e9e53', '2018-03-30 14:22:03', NULL);
INSERT INTO `user_activations` VALUES (21, 31, '1128588ff0248c858bb7881836920c9e338d93eaf88b8b8c4a190b5aacf483e7', '2018-03-30 14:24:05', NULL);
INSERT INTO `user_activations` VALUES (23, 34, '646c8904e69720c80497fdf02c8d9b77cc08cccb784ef39b4b75da51d2d7aee9', '2018-03-30 14:26:21', NULL);
INSERT INTO `user_activations` VALUES (24, 35, 'f5ac8d6f93b7de3f62122c853b2eaac9f8449e06c8d10ced940127476611c1e8', '2018-03-30 14:26:59', NULL);
INSERT INTO `user_activations` VALUES (25, 36, 'c969ebc2af2db4f0ff360539e85c183c5caa0d73625ecd32540e12b45704490b', '2018-03-30 14:37:21', NULL);
INSERT INTO `user_activations` VALUES (26, 38, '16d6ea1aca313b79e9a2ea1a370b4d7235b3b625f32eb00ae949d110d64c1240', '2018-03-30 14:38:02', NULL);
INSERT INTO `user_activations` VALUES (27, 39, '6fe25598a2daabc43723508812748a4825c1c66e94e3e20f3449ec4dd02a2531', '2018-03-30 14:40:16', NULL);
INSERT INTO `user_activations` VALUES (28, 40, '3475a13cc0ba31c67e9d1b625dc66458a28a2fecbc9eaa4b63dccf3bc788a9e3', '2018-03-30 14:41:20', NULL);
INSERT INTO `user_activations` VALUES (29, 41, 'f86cc16256776496dbd5296676147ceebf07f68f1021b194e8fcd6073ba0a1c3', '2018-03-30 14:42:28', NULL);
INSERT INTO `user_activations` VALUES (30, 42, '640872630029cc60dbdfb1846687c46ee306905c020345d8d81388a378699227', '2018-03-30 14:44:19', NULL);
INSERT INTO `user_activations` VALUES (31, 43, 'd461e0fc12f823792fba7cc4ea30f09d7fa1a0f4c04a9456d04398125d31493a', '2018-03-30 14:45:02', NULL);
INSERT INTO `user_activations` VALUES (32, 44, 'ed6c63cf6ca735857283123f54548bec60d9d300f00b81978b80efb5c4daf610', '2018-03-30 14:45:40', NULL);
INSERT INTO `user_activations` VALUES (33, 45, 'eaf828a12fc578c0fcd6eadc07820e8d3359d64344ef236e698e2a4cb01f4974', '2018-03-30 14:48:34', NULL);
INSERT INTO `user_activations` VALUES (34, 46, 'ea2673d4aa340549c1bd6f4424fdbe73001618c91b55ed225c80db87e744175a', '2018-03-30 14:53:40', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `fullname` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `country` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsappNumber` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_admin` tinyint(1) NULL DEFAULT 0,
  `verified` tinyint(1) NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'KOLA', 'laravel2341', '2018-03-30', 'United States of America', 'pllklk', 'setchininoeFDSF', 'nikolaydmitrievich9268@gmail.com', '123456', '123456', '$2y$10$diI7pmcKaF/cvzScergK0OTqQsnGXrjlGGM9es5aUnsBEiSI2bMlO', 0, 1, 'jRAaHK7BTttTLeO9eJjwl1XyK5JiBm2MCkjPusocNMrX7JSw7P53dRjhJqbJ', '2018-03-30 18:19:50', '2018-03-30 18:20:12');
INSERT INTO `users` VALUES (2, 'KOLASA', 'customer', '2018-03-10', 'United States of America', 'Bopob', 'setchininoe', 'nikolaydmitrievich9258@gmail.com', '123456', '123456', '$2y$10$f3j3OCQ641xuz49kLlQt0uiHtes2tfxLMRccEmA7.osRwwhT6Cf/y', 0, 1, 'HbytmeyNUW8EIMm3qcd90hjXAEpGndbcg2y3NSv1OByObvwy8f3okk5VIrKz', '2018-03-31 02:26:59', '2018-03-31 02:28:09');
INSERT INTO `users` VALUES (3, 'MMM', 'qweqweqwe', '2018-04-14', 'China', 'QQq', 'Poenix', 'nikolaydmitrievich9218@gmail.com', '+1236564792', '+125487932', '$2y$10$s1QE.p8.QdsE0VcnrAd0uOz63O9eF/BgHzJHmhpFRyAdHwpAN7G5K', 0, 1, '0mN3R7iFLsQmdcEJQmfDzzROxhXEkCAazFtXeCLu0fI886KNUOONGI5AWB0J', '2018-03-31 15:41:35', '2018-03-31 15:43:03');
INSERT INTO `users` VALUES (4, 'MMM', 'qweqweqwe', '2018-04-13', 'China', 'QQq', 'Poenix', 'nikolaydmitrievich99238@gmail.com', '+1236564792', '+125487932', '$2y$10$U7eeSADjfgBDlgwwPx9P3uB6h7LkPvIWpnD91sQOl7xpOek99Dq22', 0, 0, 'XaaB42gpqySt1fBdL3ukpUXpL5dYBxhzCrHUhZ2iNHMxciJ4qGISrc6As472', '2018-03-31 15:43:47', '2018-03-31 15:43:47');
INSERT INTO `users` VALUES (5, '', 'nikolaydmitrievich', '2018-04-12', 'United States of America', 'dadasd', 'sdasdasd', 'nikolaydmitrievich9628@gmail.com', '+1236564792', '+125487932', '123456', 0, 1, 'HGUrngGe9PkJhnjw3PSMpIaBDFHWepLRREsHb3N9Ws6YSYMBi66JtPUjmMn7', '2018-03-31 15:45:53', '2018-03-31 15:48:10');
INSERT INTO `users` VALUES (6, '', 'nikolaydmitrievichxcvxcvx', '2018-04-25', 'United States of America', 'MM', 'Poenix', 'nikolaydmitrievich92899@gmail.com', '+1236564792', '+125487932', '123456', 1, 1, 'imxo94zE36aPUp0vRHYzdKMBPztOh0o4iOOJ51KOxpJ7wouFPzFRIBzeEgzk', '2018-03-31 15:50:23', '2018-03-31 15:51:13');
INSERT INTO `users` VALUES (7, 'MMM', 'nikolaydmitrievich', '2018-04-14', 'Russia', 'QQQ', 'Poenix', 'nikolaydmitrievich@gmail.com', '+1236564792', '+125487932', '123456', 1, 1, 'wezszxOt3rto1ZY6Te8yCZ7BkFDW40miBfrNt3NlWN0UT9hRisZGQCJJVLpq', '2018-03-31 15:57:05', '2018-03-31 16:12:40');

-- ----------------------------
-- Table structure for verify_users
-- ----------------------------
DROP TABLE IF EXISTS `verify_users`;
CREATE TABLE `verify_users`  (
  `user_id` int(11) NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of verify_users
-- ----------------------------
INSERT INTO `verify_users` VALUES (13, 'DoMPi03WRjftBx90niWyzz4AEXaKWtB9UrrsTW7A', '2018-03-30 17:39:23', '2018-03-30 17:39:23');
INSERT INTO `verify_users` VALUES (14, 'JlUl5iUhLHoHQGmevSV4aUCwpzrnJ3D3PtLRWEsv', '2018-03-30 17:41:21', '2018-03-30 17:41:21');
INSERT INTO `verify_users` VALUES (15, '4FTUWRscEVGpVclNLRxV0L5fdQFbpL00mldN9lXK', '2018-03-30 17:47:10', '2018-03-30 17:47:10');
INSERT INTO `verify_users` VALUES (16, 'L5HhFvwFUtf848Gy4LjjUomutY7EFmdEd25niM07', '2018-03-30 17:52:40', '2018-03-30 17:52:40');
INSERT INTO `verify_users` VALUES (17, 'OnpzWHqwe0rcaeliQnWFJmcP1LZnaFQPFOHDiNfO', '2018-03-30 17:56:23', '2018-03-30 17:56:23');
INSERT INTO `verify_users` VALUES (18, '42phxodxMGO3tpDEqM9lXkkNdM5wkMgiKTWakZDA', '2018-03-30 18:07:42', '2018-03-30 18:07:42');
INSERT INTO `verify_users` VALUES (19, 'dmwzmjfg3Ivy5uDwJY5DeTa5ypLLjji5b2Isdg6S', '2018-03-30 18:11:24', '2018-03-30 18:11:24');
INSERT INTO `verify_users` VALUES (1, 'UI9CaiWqSo53jHD7QOL7hJYliiNA5LQ15Vw1CSjJ', '2018-03-30 18:19:50', '2018-03-30 18:19:50');
INSERT INTO `verify_users` VALUES (2, '1czEIkR92LyR08amW5iltjak27PFLTOiNvlJP0HM', '2018-03-31 02:26:59', '2018-03-31 02:26:59');
INSERT INTO `verify_users` VALUES (3, '1jfRDcyNkAIDCgbim5L6hAPCThNnaA6vddQljUDb', '2018-03-31 15:41:35', '2018-03-31 15:41:35');
INSERT INTO `verify_users` VALUES (4, 'YmDafZR7kuGeRug5vhbBDDmyXB8YbQynS27yyU4u', '2018-03-31 15:43:47', '2018-03-31 15:43:47');
INSERT INTO `verify_users` VALUES (5, 'wal9l986xGbonvFLpqOks7DB7y6uDYSSLAbatp8W', '2018-03-31 15:45:53', '2018-03-31 15:45:53');
INSERT INTO `verify_users` VALUES (6, 'a3lqGobw4gQPSaZwpDdjoIdNLx8e2jInIG2cadcS', '2018-03-31 15:50:23', '2018-03-31 15:50:23');
INSERT INTO `verify_users` VALUES (7, 'vyaPoASziPJbNGOCmn5UeeaTGIL1IsGnlzPXxhYV', '2018-03-31 15:57:05', '2018-03-31 15:57:05');

SET FOREIGN_KEY_CHECKS = 1;
