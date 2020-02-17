/*
Navicat MySQL Data Transfer

Source Server         : laragon
Source Server Version : 50724
Source Host           : localhost:3306
Source Database       : eloquent-practise

Target Server Type    : MYSQL
Target Server Version : 50724
File Encoding         : 65001

Date: 2020-02-17 22:16:23
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `bars`
-- ----------------------------
DROP TABLE IF EXISTS `bars`;
CREATE TABLE `bars` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `foo_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bars_foo_id_foreign` (`foo_id`),
  CONSTRAINT `bars_foo_id_foreign` FOREIGN KEY (`foo_id`) REFERENCES `foos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of bars
-- ----------------------------
INSERT INTO `bars` VALUES ('1', '2', 'ss sdfsfs', 'sdfsd dsfsdf sdfdsfsdfds sdfdsfdsfsd sdfsdfdsfds', '2020-02-17 21:33:21', '2020-02-17 21:33:24');

-- ----------------------------
-- Table structure for `cats`
-- ----------------------------
DROP TABLE IF EXISTS `cats`;
CREATE TABLE `cats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cats
-- ----------------------------
INSERT INTO `cats` VALUES ('1', 'boolean', '2020-02-17 20:41:45', '2020-02-17 20:41:47');
INSERT INTO `cats` VALUES ('2', 'google', '2020-02-17 20:42:03', '2020-02-17 20:42:06');

-- ----------------------------
-- Table structure for `foos`
-- ----------------------------
DROP TABLE IF EXISTS `foos`;
CREATE TABLE `foos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of foos
-- ----------------------------
INSERT INTO `foos` VALUES ('1', 'wix', '2020-02-17 21:32:31', '2020-02-17 21:32:36');
INSERT INTO `foos` VALUES ('2', 'bar', '2020-02-17 21:32:50', '2020-02-17 21:32:53');

-- ----------------------------
-- Table structure for `migrations`
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('1', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('2', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('3', '2020_02_17_142016_create_cats_table', '1');
INSERT INTO `migrations` VALUES ('4', '2020_02_17_142136_create_posts_table', '1');
INSERT INTO `migrations` VALUES ('5', '2020_02_17_153111_create_onecats_table', '2');
INSERT INTO `migrations` VALUES ('6', '2020_02_17_153230_create_oneposts_table', '2');
INSERT INTO `migrations` VALUES ('7', '2020_02_17_155654_create_foos_table', '3');
INSERT INTO `migrations` VALUES ('8', '2020_02_17_155750_create_bars_table', '3');

-- ----------------------------
-- Table structure for `onecats`
-- ----------------------------
DROP TABLE IF EXISTS `onecats`;
CREATE TABLE `onecats` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of onecats
-- ----------------------------
INSERT INTO `onecats` VALUES ('1', 'google', '2020-02-17 21:08:22', '2020-02-17 21:08:25');
INSERT INTO `onecats` VALUES ('2', 'foo', '2020-02-17 21:08:15', '2020-02-17 21:08:19');

-- ----------------------------
-- Table structure for `oneposts`
-- ----------------------------
DROP TABLE IF EXISTS `oneposts`;
CREATE TABLE `oneposts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oneposts_cat_id_foreign` (`cat_id`),
  CONSTRAINT `oneposts_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `onecats` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of oneposts
-- ----------------------------
INSERT INTO `oneposts` VALUES ('1', '2', 'roo bar', 'lorem ipsum dolor sid amte la la land do do wind0ows', '2020-02-17 21:09:04', '2020-02-17 21:09:06');

-- ----------------------------
-- Table structure for `password_resets`
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for `posts`
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cat_id` bigint(20) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_cat_id_foreign` (`cat_id`),
  CONSTRAINT `posts_cat_id_foreign` FOREIGN KEY (`cat_id`) REFERENCES `cats` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES ('1', '2', 'lorem', 'lorem ipsum dolor sid amet why zooo', '2020-02-17 20:42:50', '2020-02-17 20:42:53');

-- ----------------------------
-- Table structure for `users`
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
