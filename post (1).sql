-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 01, 2020 at 09:43 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `post`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-08-13 15:27:00', '2020-08-13 15:27:00', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/post', 'yes'),
(2, 'home', 'http://localhost/post', 'yes'),
(3, 'blogname', 'post', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'farkhundahanif@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:298:{s:10:\"project/?$\";s:27:\"index.php?post_type=project\";s:40:\"project/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:35:\"project/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=project&feed=$matches[1]\";s:27:\"project/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=project&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:9:\"office/?$\";s:26:\"index.php?post_type=office\";s:39:\"office/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=office&feed=$matches[1]\";s:34:\"office/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?post_type=office&feed=$matches[1]\";s:26:\"office/page/([0-9]{1,})/?$\";s:44:\"index.php?post_type=office&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:56:\"layout_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:51:\"layout_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?layout_category=$matches[1]&feed=$matches[2]\";s:32:\"layout_category/([^/]+)/embed/?$\";s:48:\"index.php?layout_category=$matches[1]&embed=true\";s:44:\"layout_category/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?layout_category=$matches[1]&paged=$matches[2]\";s:26:\"layout_category/([^/]+)/?$\";s:37:\"index.php?layout_category=$matches[1]\";s:52:\"layout_pack/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:47:\"layout_pack/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_pack=$matches[1]&feed=$matches[2]\";s:28:\"layout_pack/([^/]+)/embed/?$\";s:44:\"index.php?layout_pack=$matches[1]&embed=true\";s:40:\"layout_pack/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_pack=$matches[1]&paged=$matches[2]\";s:22:\"layout_pack/([^/]+)/?$\";s:33:\"index.php?layout_pack=$matches[1]\";s:52:\"layout_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:47:\"layout_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?layout_type=$matches[1]&feed=$matches[2]\";s:28:\"layout_type/([^/]+)/embed/?$\";s:44:\"index.php?layout_type=$matches[1]&embed=true\";s:40:\"layout_type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?layout_type=$matches[1]&paged=$matches[2]\";s:22:\"layout_type/([^/]+)/?$\";s:33:\"index.php?layout_type=$matches[1]\";s:46:\"scope/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:41:\"scope/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?scope=$matches[1]&feed=$matches[2]\";s:22:\"scope/([^/]+)/embed/?$\";s:38:\"index.php?scope=$matches[1]&embed=true\";s:34:\"scope/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?scope=$matches[1]&paged=$matches[2]\";s:16:\"scope/([^/]+)/?$\";s:27:\"index.php?scope=$matches[1]\";s:53:\"module_width/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:48:\"module_width/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:51:\"index.php?module_width=$matches[1]&feed=$matches[2]\";s:29:\"module_width/([^/]+)/embed/?$\";s:45:\"index.php?module_width=$matches[1]&embed=true\";s:41:\"module_width/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?module_width=$matches[1]&paged=$matches[2]\";s:23:\"module_width/([^/]+)/?$\";s:34:\"index.php?module_width=$matches[1]\";s:40:\"et_pb_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"et_pb_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"et_pb_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"et_pb_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"et_pb_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"et_pb_layout/([^/]+)/embed/?$\";s:60:\"index.php?post_type=et_pb_layout&name=$matches[1]&embed=true\";s:33:\"et_pb_layout/([^/]+)/trackback/?$\";s:54:\"index.php?post_type=et_pb_layout&name=$matches[1]&tb=1\";s:41:\"et_pb_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&paged=$matches[2]\";s:48:\"et_pb_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:67:\"index.php?post_type=et_pb_layout&name=$matches[1]&cpage=$matches[2]\";s:37:\"et_pb_layout/([^/]+)(?:/([0-9]+))?/?$\";s:66:\"index.php?post_type=et_pb_layout&name=$matches[1]&page=$matches[2]\";s:29:\"et_pb_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"et_pb_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"et_pb_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"et_pb_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"et_pb_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"project/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"project/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"project/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"project/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"project/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"project/([^/]+)/embed/?$\";s:40:\"index.php?project=$matches[1]&embed=true\";s:28:\"project/([^/]+)/trackback/?$\";s:34:\"index.php?project=$matches[1]&tb=1\";s:48:\"project/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:43:\"project/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?project=$matches[1]&feed=$matches[2]\";s:36:\"project/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&paged=$matches[2]\";s:43:\"project/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?project=$matches[1]&cpage=$matches[2]\";s:32:\"project/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?project=$matches[1]&page=$matches[2]\";s:24:\"project/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"project/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"project/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"project/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"project/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:57:\"project_category/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:52:\"project_category/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?project_category=$matches[1]&feed=$matches[2]\";s:33:\"project_category/([^/]+)/embed/?$\";s:49:\"index.php?project_category=$matches[1]&embed=true\";s:45:\"project_category/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?project_category=$matches[1]&paged=$matches[2]\";s:27:\"project_category/([^/]+)/?$\";s:38:\"index.php?project_category=$matches[1]\";s:52:\"project_tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:47:\"project_tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?project_tag=$matches[1]&feed=$matches[2]\";s:28:\"project_tag/([^/]+)/embed/?$\";s:44:\"index.php?project_tag=$matches[1]&embed=true\";s:40:\"project_tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?project_tag=$matches[1]&paged=$matches[2]\";s:22:\"project_tag/([^/]+)/?$\";s:33:\"index.php?project_tag=$matches[1]\";s:48:\"singers/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?singers=$matches[1]&feed=$matches[2]\";s:43:\"singers/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?singers=$matches[1]&feed=$matches[2]\";s:24:\"singers/([^/]+)/embed/?$\";s:40:\"index.php?singers=$matches[1]&embed=true\";s:36:\"singers/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?singers=$matches[1]&paged=$matches[2]\";s:18:\"singers/([^/]+)/?$\";s:29:\"index.php?singers=$matches[1]\";s:52:\"office_data/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?office_data=$matches[1]&feed=$matches[2]\";s:47:\"office_data/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?office_data=$matches[1]&feed=$matches[2]\";s:28:\"office_data/([^/]+)/embed/?$\";s:44:\"index.php?office_data=$matches[1]&embed=true\";s:40:\"office_data/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?office_data=$matches[1]&paged=$matches[2]\";s:22:\"office_data/([^/]+)/?$\";s:33:\"index.php?office_data=$matches[1]\";s:33:\"sound/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"sound/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"sound/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"sound/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"sound/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"sound/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"sound/([^/]+)/embed/?$\";s:38:\"index.php?sound=$matches[1]&embed=true\";s:26:\"sound/([^/]+)/trackback/?$\";s:32:\"index.php?sound=$matches[1]&tb=1\";s:34:\"sound/([^/]+)/page/?([0-9]{1,})/?$\";s:45:\"index.php?sound=$matches[1]&paged=$matches[2]\";s:41:\"sound/([^/]+)/comment-page-([0-9]{1,})/?$\";s:45:\"index.php?sound=$matches[1]&cpage=$matches[2]\";s:30:\"sound/([^/]+)(?:/([0-9]+))?/?$\";s:44:\"index.php?sound=$matches[1]&page=$matches[2]\";s:22:\"sound/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:32:\"sound/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:52:\"sound/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"sound/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:47:\"sound/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:28:\"sound/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"office/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"office/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"office/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"office/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"office/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"office/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:21:\"office/(.+?)/embed/?$\";s:39:\"index.php?office=$matches[1]&embed=true\";s:25:\"office/(.+?)/trackback/?$\";s:33:\"index.php?office=$matches[1]&tb=1\";s:45:\"office/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?office=$matches[1]&feed=$matches[2]\";s:40:\"office/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:45:\"index.php?office=$matches[1]&feed=$matches[2]\";s:33:\"office/(.+?)/page/?([0-9]{1,})/?$\";s:46:\"index.php?office=$matches[1]&paged=$matches[2]\";s:40:\"office/(.+?)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?office=$matches[1]&cpage=$matches[2]\";s:29:\"office/(.+?)(?:/([0-9]+))?/?$\";s:45:\"index.php?office=$matches[1]&page=$matches[2]\";s:44:\"et_theme_builder/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_theme_builder/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_theme_builder/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_theme_builder/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_theme_builder/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_theme_builder/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_theme_builder/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_theme_builder&name=$matches[1]&embed=true\";s:37:\"et_theme_builder/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_theme_builder&name=$matches[1]&tb=1\";s:45:\"et_theme_builder/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_theme_builder&name=$matches[1]&paged=$matches[2]\";s:52:\"et_theme_builder/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_theme_builder&name=$matches[1]&cpage=$matches[2]\";s:41:\"et_theme_builder/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_theme_builder&name=$matches[1]&page=$matches[2]\";s:33:\"et_theme_builder/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_theme_builder/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_theme_builder/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_theme_builder/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_theme_builder/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_theme_builder/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"et_template/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"et_template/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"et_template/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"et_template/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"et_template/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"et_template/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"et_template/([^/]+)/embed/?$\";s:59:\"index.php?post_type=et_template&name=$matches[1]&embed=true\";s:32:\"et_template/([^/]+)/trackback/?$\";s:53:\"index.php?post_type=et_template&name=$matches[1]&tb=1\";s:40:\"et_template/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?post_type=et_template&name=$matches[1]&paged=$matches[2]\";s:47:\"et_template/([^/]+)/comment-page-([0-9]{1,})/?$\";s:66:\"index.php?post_type=et_template&name=$matches[1]&cpage=$matches[2]\";s:36:\"et_template/([^/]+)(?:/([0-9]+))?/?$\";s:65:\"index.php?post_type=et_template&name=$matches[1]&page=$matches[2]\";s:28:\"et_template/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"et_template/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"et_template/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"et_template/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"et_template/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"et_template/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"et_header_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_header_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_header_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_header_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_header_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_header_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_header_layout/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_header_layout&name=$matches[1]&embed=true\";s:37:\"et_header_layout/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_header_layout&name=$matches[1]&tb=1\";s:45:\"et_header_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_header_layout&name=$matches[1]&paged=$matches[2]\";s:52:\"et_header_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_header_layout&name=$matches[1]&cpage=$matches[2]\";s:41:\"et_header_layout/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_header_layout&name=$matches[1]&page=$matches[2]\";s:33:\"et_header_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_header_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_header_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_header_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_header_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_header_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:42:\"et_body_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"et_body_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"et_body_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"et_body_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"et_body_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"et_body_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"et_body_layout/([^/]+)/embed/?$\";s:62:\"index.php?post_type=et_body_layout&name=$matches[1]&embed=true\";s:35:\"et_body_layout/([^/]+)/trackback/?$\";s:56:\"index.php?post_type=et_body_layout&name=$matches[1]&tb=1\";s:43:\"et_body_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:69:\"index.php?post_type=et_body_layout&name=$matches[1]&paged=$matches[2]\";s:50:\"et_body_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:69:\"index.php?post_type=et_body_layout&name=$matches[1]&cpage=$matches[2]\";s:39:\"et_body_layout/([^/]+)(?:/([0-9]+))?/?$\";s:68:\"index.php?post_type=et_body_layout&name=$matches[1]&page=$matches[2]\";s:31:\"et_body_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"et_body_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"et_body_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"et_body_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"et_body_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"et_body_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"et_footer_layout/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"et_footer_layout/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"et_footer_layout/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_footer_layout/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"et_footer_layout/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"et_footer_layout/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"et_footer_layout/([^/]+)/embed/?$\";s:64:\"index.php?post_type=et_footer_layout&name=$matches[1]&embed=true\";s:37:\"et_footer_layout/([^/]+)/trackback/?$\";s:58:\"index.php?post_type=et_footer_layout&name=$matches[1]&tb=1\";s:45:\"et_footer_layout/([^/]+)/page/?([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_footer_layout&name=$matches[1]&paged=$matches[2]\";s:52:\"et_footer_layout/([^/]+)/comment-page-([0-9]{1,})/?$\";s:71:\"index.php?post_type=et_footer_layout&name=$matches[1]&cpage=$matches[2]\";s:41:\"et_footer_layout/([^/]+)(?:/([0-9]+))?/?$\";s:70:\"index.php?post_type=et_footer_layout&name=$matches[1]&page=$matches[2]\";s:33:\"et_footer_layout/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"et_footer_layout/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"et_footer_layout/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_footer_layout/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"et_footer_layout/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"et_footer_layout/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:36:\"contact-form-7/wp-contact-form-7.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'Divi', 'yes'),
(41, 'stylesheet', 'Divi-child', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '48748', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
(50, 'default_link_category', '2', 'yes'),
(51, 'show_on_front', 'posts', 'yes'),
(52, 'tag_base', '', 'yes'),
(53, 'show_avatars', '1', 'yes'),
(54, 'avatar_rating', 'G', 'yes'),
(55, 'upload_url_path', '', 'yes'),
(56, 'thumbnail_size_w', '150', 'yes'),
(57, 'thumbnail_size_h', '150', 'yes'),
(58, 'thumbnail_crop', '1', 'yes'),
(59, 'medium_size_w', '300', 'yes'),
(60, 'medium_size_h', '300', 'yes'),
(61, 'avatar_default', 'mystery', 'yes'),
(62, 'large_size_w', '1024', 'yes'),
(63, 'large_size_h', '1024', 'yes'),
(64, 'image_default_link_type', 'none', 'yes'),
(65, 'image_default_size', '', 'yes'),
(66, 'image_default_align', '', 'yes'),
(67, 'close_comments_for_old_posts', '0', 'yes'),
(68, 'close_comments_days_old', '14', 'yes'),
(69, 'thread_comments', '1', 'yes'),
(70, 'thread_comments_depth', '5', 'yes'),
(71, 'page_comments', '0', 'yes'),
(72, 'comments_per_page', '50', 'yes'),
(73, 'default_comments_page', 'newest', 'yes'),
(74, 'comment_order', 'asc', 'yes'),
(75, 'sticky_posts', 'a:0:{}', 'yes'),
(76, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', '', 'yes'),
(81, 'page_for_posts', '0', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1612884419', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'initial_db_version', '48748', 'yes'),
(96, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:67:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"et_support_center\";b:1;s:24:\"et_support_center_system\";b:1;s:31:\"et_support_center_remote_access\";b:1;s:31:\"et_support_center_documentation\";b:1;s:27:\"et_support_center_safe_mode\";b:1;s:22:\"et_support_center_logs\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(97, 'fresh_site', '0', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:8:{i:1598992021;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1599017221;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1599060420;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599060431;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599060437;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1599233221;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1600018898;a:1:{s:32:\"et_core_page_resource_auto_clear\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2592000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:1:{s:22:\"6zrsUa7MpZE728SOcnEgO8\";a:2:{s:10:\"hashed_key\";s:34:\"$P$BJnQ9g4l5FrfjFFaQF3sW11MGAKwLe1\";s:10:\"created_at\";i:1598961210;}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.5.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.5-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.5-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"5.5\";s:7:\"version\";s:3:\"5.5\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1598984324;s:15:\"version_checked\";s:3:\"5.5\";s:12:\"translations\";a:0:{}}', 'no'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1597426894;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(128, 'can_compress_scripts', '1', 'no'),
(131, 'recently_activated', 'a:0:{}', 'yes'),
(142, 'finished_updating_comment_type', '1', 'yes'),
(147, 'acf_version', '5.8.14', 'yes'),
(150, 'cptui_new_install', 'false', 'yes'),
(151, 'cptui_post_types', 'a:2:{s:5:\"sound\";a:30:{s:4:\"name\";s:5:\"sound\";s:5:\"label\";s:6:\"Sounds\";s:14:\"singular_label\";s:5:\"Sound\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:6:\"office\";a:30:{s:4:\"name\";s:6:\"office\";s:5:\"label\";s:7:\"Offices\";s:14:\"singular_label\";s:6:\"Office\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:18:\"dashicons-building\";s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(160, 'cptui_taxonomies', 'a:2:{s:7:\"singers\";a:24:{s:4:\"name\";s:7:\"singers\";s:5:\"label\";s:7:\"Singers\";s:14:\"singular_label\";s:6:\"Singer\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:5:\"sound\";}}s:11:\"office_data\";a:24:{s:4:\"name\";s:11:\"office_data\";s:5:\"label\";s:7:\"offices\";s:14:\"singular_label\";s:6:\"office\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:12:\"hierarchical\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:12:\"show_in_menu\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";s:17:\"show_admin_column\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:18:\"show_in_quick_edit\";s:0:\"\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:6:\"labels\";a:18:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:11:\"update_item\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:13:\"new_item_name\";s:0:\"\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:13:\"popular_items\";s:0:\"\";s:26:\"separate_items_with_commas\";s:0:\"\";s:19:\"add_or_remove_items\";s:0:\"\";s:21:\"choose_from_most_used\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:8:\"no_terms\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";}s:11:\"meta_box_cb\";s:0:\"\";s:12:\"object_types\";a:1:{i:0;s:6:\"office\";}}}', 'yes'),
(178, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"8\",\"critical\":\"0\"}', 'yes'),
(185, 'current_theme', 'Divi Child', 'yes'),
(186, 'theme_mods_Divi', 'a:6:{i:0;b:0;s:18:\"custom_css_post_id\";i:30;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:0:{}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598960659;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}}}}', 'yes'),
(187, 'theme_switched', '', 'yes'),
(188, 'et_pb_cache_notice', 'a:1:{s:5:\"4.5.6\";s:6:\"ignore\";}', 'yes'),
(193, 'et_core_version', '4.5.6', 'yes'),
(195, 'et_divi', 'a:148:{s:39:\"static_css_custom_css_safety_check_done\";b:1;s:23:\"2_5_flush_rewrite_rules\";s:4:\"done\";s:30:\"et_flush_rewrite_rules_library\";s:5:\"4.5.6\";s:31:\"divi_previous_installed_version\";s:6:\"3.22.7\";s:29:\"divi_latest_installed_version\";s:5:\"4.5.6\";s:27:\"divi_skip_font_subset_force\";b:1;s:27:\"et_pb_clear_templates_cache\";b:1;s:40:\"divi_email_provider_credentials_migrated\";b:1;s:15:\"divi_1_3_images\";s:7:\"checked\";s:21:\"et_pb_layouts_updated\";b:1;s:30:\"library_removed_legacy_layouts\";b:1;s:30:\"divi_2_4_documentation_message\";s:9:\"triggered\";s:9:\"divi_logo\";s:59:\"http://localhost/post/wp-content/uploads/2020/09/logo-2.png\";s:14:\"divi_fixed_nav\";s:2:\"on\";s:26:\"divi_gallery_layout_enable\";s:5:\"false\";s:18:\"divi_color_palette\";s:63:\"#000000|#ffffff|#e02b20|#e09900|#edf000|#7cda24|#0c71c3|#8300e9\";s:15:\"divi_grab_image\";s:5:\"false\";s:15:\"divi_blog_style\";s:5:\"false\";s:12:\"divi_sidebar\";s:16:\"et_right_sidebar\";s:22:\"divi_shop_page_sidebar\";s:16:\"et_right_sidebar\";s:23:\"divi_show_facebook_icon\";s:2:\"on\";s:22:\"divi_show_twitter_icon\";s:2:\"on\";s:21:\"divi_show_google_icon\";s:2:\"on\";s:24:\"divi_show_instagram_icon\";s:2:\"on\";s:18:\"divi_show_rss_icon\";s:2:\"on\";s:17:\"divi_facebook_url\";s:1:\"#\";s:16:\"divi_twitter_url\";s:1:\"#\";s:15:\"divi_google_url\";s:1:\"#\";s:18:\"divi_instagram_url\";s:1:\"#\";s:12:\"divi_rss_url\";s:0:\"\";s:34:\"divi_woocommerce_archive_num_posts\";i:9;s:17:\"divi_catnum_posts\";i:6;s:21:\"divi_archivenum_posts\";i:5;s:20:\"divi_searchnum_posts\";i:5;s:17:\"divi_tagnum_posts\";i:5;s:16:\"divi_date_format\";s:6:\"M j, Y\";s:16:\"divi_use_excerpt\";s:5:\"false\";s:26:\"divi_responsive_shortcodes\";s:2:\"on\";s:33:\"divi_gf_enable_all_character_sets\";s:5:\"false\";s:16:\"divi_back_to_top\";s:5:\"false\";s:18:\"divi_smooth_scroll\";s:5:\"false\";s:25:\"divi_disable_translations\";s:5:\"false\";s:27:\"divi_minify_combine_scripts\";s:2:\"on\";s:26:\"divi_minify_combine_styles\";s:2:\"on\";s:15:\"divi_custom_css\";s:662:\"a {\n    color: black !important;\n    display: block !important;\n	font-size: 25px;\nfont-weight: 600;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}\np.description {\n    margin-top: 10px;\n    font-size: 19px;\n	color: blue;}\n input[type=text], select, textarea {\n    margin: 0;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\n .wpcf7 input[type=\"email\"], .wpcf7 input[type=\"tel\"] {\n    direction: ltr;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\ntextarea{\n	padding-right:26px;\n}\na.number {\n    font-size: 15px;\n	margin-bottom: 12px;}\";s:21:\"divi_enable_dropdowns\";s:2:\"on\";s:14:\"divi_home_link\";s:2:\"on\";s:15:\"divi_sort_pages\";s:10:\"post_title\";s:15:\"divi_order_page\";s:3:\"asc\";s:22:\"divi_tiers_shown_pages\";i:3;s:32:\"divi_enable_dropdowns_categories\";s:2:\"on\";s:21:\"divi_categories_empty\";s:2:\"on\";s:27:\"divi_tiers_shown_categories\";i:3;s:13:\"divi_sort_cat\";s:4:\"name\";s:14:\"divi_order_cat\";s:3:\"asc\";s:20:\"divi_disable_toptier\";s:5:\"false\";s:25:\"divi_scroll_to_anchor_fix\";s:5:\"false\";s:27:\"et_pb_post_type_integration\";a:5:{s:4:\"post\";s:2:\"on\";s:4:\"page\";s:2:\"on\";s:7:\"project\";s:2:\"on\";s:5:\"sound\";s:3:\"off\";s:6:\"office\";s:3:\"off\";}s:21:\"et_pb_static_css_file\";s:3:\"off\";s:19:\"et_pb_css_in_footer\";s:3:\"off\";s:25:\"et_pb_product_tour_global\";s:2:\"on\";s:24:\"et_enable_classic_editor\";s:2:\"on\";s:14:\"divi_postinfo2\";a:4:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";i:3;s:8:\"comments\";}s:22:\"divi_show_postcomments\";s:2:\"on\";s:15:\"divi_thumbnails\";s:2:\"on\";s:20:\"divi_page_thumbnails\";s:5:\"false\";s:23:\"divi_show_pagescomments\";s:5:\"false\";s:14:\"divi_postinfo1\";a:3:{i:0;s:6:\"author\";i:1;s:4:\"date\";i:2;s:10:\"categories\";}s:21:\"divi_thumbnails_index\";s:2:\"on\";s:19:\"divi_seo_home_title\";s:5:\"false\";s:25:\"divi_seo_home_description\";s:5:\"false\";s:22:\"divi_seo_home_keywords\";s:5:\"false\";s:23:\"divi_seo_home_canonical\";s:5:\"false\";s:23:\"divi_seo_home_titletext\";s:0:\"\";s:29:\"divi_seo_home_descriptiontext\";s:0:\"\";s:26:\"divi_seo_home_keywordstext\";s:0:\"\";s:18:\"divi_seo_home_type\";s:27:\"BlogName | Blog description\";s:22:\"divi_seo_home_separate\";s:3:\" | \";s:21:\"divi_seo_single_title\";s:5:\"false\";s:27:\"divi_seo_single_description\";s:5:\"false\";s:24:\"divi_seo_single_keywords\";s:5:\"false\";s:25:\"divi_seo_single_canonical\";s:5:\"false\";s:27:\"divi_seo_single_field_title\";s:9:\"seo_title\";s:33:\"divi_seo_single_field_description\";s:15:\"seo_description\";s:30:\"divi_seo_single_field_keywords\";s:12:\"seo_keywords\";s:20:\"divi_seo_single_type\";s:21:\"Post title | BlogName\";s:24:\"divi_seo_single_separate\";s:3:\" | \";s:24:\"divi_seo_index_canonical\";s:5:\"false\";s:26:\"divi_seo_index_description\";s:5:\"false\";s:19:\"divi_seo_index_type\";s:24:\"Category name | BlogName\";s:23:\"divi_seo_index_separate\";s:3:\" | \";s:28:\"divi_integrate_header_enable\";s:2:\"on\";s:26:\"divi_integrate_body_enable\";s:2:\"on\";s:31:\"divi_integrate_singletop_enable\";s:2:\"on\";s:34:\"divi_integrate_singlebottom_enable\";s:2:\"on\";s:21:\"divi_integration_head\";s:0:\"\";s:21:\"divi_integration_body\";s:0:\"\";s:27:\"divi_integration_single_top\";s:0:\"\";s:30:\"divi_integration_single_bottom\";s:0:\"\";s:15:\"divi_468_enable\";s:5:\"false\";s:14:\"divi_468_image\";s:0:\"\";s:12:\"divi_468_url\";s:0:\"\";s:16:\"divi_468_adsense\";s:0:\"\";s:23:\"builder_custom_defaults\";O:8:\"stdClass\":0:{}s:33:\"customizer_settings_migrated_flag\";b:1;s:34:\"builder_custom_defaults_unmigrated\";b:0;s:22:\"builder_global_presets\";O:8:\"stdClass\":0:{}s:29:\"custom_defaults_migrated_flag\";b:1;s:19:\"product_tour_status\";a:1:{i:1;s:3:\"off\";}s:32:\"et_fb_pref_settings_bar_location\";s:6:\"bottom\";s:28:\"et_fb_pref_builder_animation\";s:4:\"true\";s:41:\"et_fb_pref_builder_display_modal_settings\";s:5:\"false\";s:39:\"et_fb_pref_builder_enable_dummy_content\";s:4:\"true\";s:21:\"et_fb_pref_event_mode\";s:5:\"hover\";s:28:\"et_fb_pref_limited_view_mode\";s:9:\"wireframe\";s:32:\"et_fb_pref_hide_disabled_modules\";s:5:\"false\";s:28:\"et_fb_pref_history_intervals\";i:1;s:29:\"et_fb_pref_page_creation_flow\";s:7:\"default\";s:42:\"et_fb_pref_quick_actions_always_start_with\";s:7:\"nothing\";s:44:\"et_fb_pref_quick_actions_show_recent_queries\";s:3:\"off\";s:39:\"et_fb_pref_quick_actions_recent_queries\";s:0:\"\";s:40:\"et_fb_pref_quick_actions_recent_category\";s:0:\"\";s:35:\"et_fb_pref_limited_modal_preference\";s:7:\"default\";s:30:\"et_fb_pref_modal_snap_location\";s:5:\"false\";s:21:\"et_fb_pref_modal_snap\";s:5:\"false\";s:27:\"et_fb_pref_modal_fullscreen\";s:5:\"false\";s:32:\"et_fb_pref_modal_dimension_width\";i:400;s:33:\"et_fb_pref_modal_dimension_height\";i:400;s:27:\"et_fb_pref_modal_position_x\";i:30;s:27:\"et_fb_pref_modal_position_y\";i:50;s:32:\"et_fb_pref_limited_toolbar_click\";s:5:\"false\";s:34:\"et_fb_pref_limited_toolbar_desktop\";s:4:\"true\";s:31:\"et_fb_pref_limited_toolbar_grid\";s:5:\"false\";s:32:\"et_fb_pref_limited_toolbar_hover\";s:5:\"false\";s:32:\"et_fb_pref_limited_toolbar_phone\";s:4:\"true\";s:33:\"et_fb_pref_limited_toolbar_tablet\";s:4:\"true\";s:36:\"et_fb_pref_limited_toolbar_wireframe\";s:4:\"true\";s:31:\"et_fb_pref_limited_toolbar_zoom\";s:4:\"true\";s:36:\"et_fb_pref_lv_modal_dimension_height\";i:0;s:35:\"et_fb_pref_lv_modal_dimension_width\";i:0;s:30:\"et_fb_pref_lv_modal_position_x\";i:0;s:30:\"et_fb_pref_lv_modal_position_y\";i:0;s:29:\"divi_enable_responsive_images\";s:2:\"on\";s:24:\"footer_widget_text_color\";s:7:\"#ffffff\";s:24:\"footer_widget_link_color\";s:7:\"#ffffff\";s:16:\"menu_link_active\";s:7:\"#000000\";s:12:\"header_style\";s:5:\"split\";s:12:\"vertical_nav\";b:0;}', 'yes'),
(196, 'widget_aboutmewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(197, 'widget_adsensewidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(198, 'widget_advwidget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(199, 'shop_catalog_image_size', 'a:3:{s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"400\";s:4:\"crop\";i:1;}', 'yes'),
(200, 'shop_single_image_size', 'a:3:{s:5:\"width\";s:3:\"510\";s:6:\"height\";s:4:\"9999\";s:4:\"crop\";i:0;}', 'yes'),
(201, 'shop_thumbnail_image_size', 'a:3:{s:5:\"width\";s:3:\"157\";s:6:\"height\";s:3:\"157\";s:4:\"crop\";i:1;}', 'yes'),
(202, 'et_support_site_id', 'xl+*3FXMmso=OL9fSjKQ', 'yes'),
(203, 'et_safe_mode_plugins_whitelist', 'a:5:{i:0;s:27:\"ari-adminer/ari-adminer.php\";i:1;s:15:\"etdev/etdev.php\";i:2;s:29:\"divi-builder/divi-builder.php\";i:3;s:31:\"query-monitor/query-monitor.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(205, 'et_images_temp_folder', 'C:\\xampp\\htdocs\\post/wp-content/uploads/et_temp', 'yes'),
(206, 'et_schedule_clean_images_last_time', '1598858386', 'yes'),
(207, 'et_bfb_settings', 'a:1:{s:10:\"enable_bfb\";s:2:\"on\";}', 'yes'),
(208, 'et_pb_builder_options', 'a:2:{i:0;b:0;s:35:\"email_provider_credentials_migrated\";b:1;}', 'yes'),
(209, 'et_google_api_settings', 'a:3:{s:7:\"api_key\";s:0:\"\";s:26:\"enqueue_google_maps_script\";s:2:\"on\";s:16:\"use_google_fonts\";s:2:\"on\";}', 'yes'),
(210, 'et_automatic_updates_options', 'a:2:{s:8:\"username\";s:8:\"genetech\";s:7:\"api_key\";s:40:\"7221fdbce97beb01140e0a57d593000665ad3e3d\";}', 'no'),
(236, 'et_safe_mode_plugins_allowlist', 'a:8:{i:0;s:15:\"etdev/etdev.php\";i:1;s:15:\"bloom/bloom.php\";i:2;s:19:\"monarch/monarch.php\";i:3;s:29:\"divi-builder/divi-builder.php\";i:4;s:27:\"ari-adminer/ari-adminer.php\";i:5;s:31:\"query-monitor/query-monitor.php\";i:6;s:27:\"woocommerce/woocommerce.php\";i:7;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}', 'yes'),
(291, '_site_transient_timeout_php_check_c35af108126e3879ab2f7bb297998072', '1599463204', 'no'),
(292, '_site_transient_php_check_c35af108126e3879ab2f7bb297998072', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(293, '_site_transient_timeout_browser_ef304b8034ec4ae3b449ff3aaae049f6', '1599463278', 'no'),
(294, '_site_transient_browser_ef304b8034ec4ae3b449ff3aaae049f6', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"84.0.4147.135\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(295, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1599032116', 'no'),
(296, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:2:{i:0;a:8:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:59:\"Discussion Group: Introduction to Contributing to WordPress\";s:3:\"url\";s:68:\"https://www.meetup.com/learn-wordpress-discussions/events/272502647/\";s:6:\"meetup\";s:27:\"Learn WordPress Discussions\";s:10:\"meetup_url\";s:51:\"https://www.meetup.com/learn-wordpress-discussions/\";s:4:\"date\";s:19:\"2020-09-03 01:00:00\";s:8:\"end_date\";s:19:\"2020-09-03 02:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:37.779998779297;s:9:\"longitude\";d:-122.41999816895;}}i:1;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:16:\"WordCamp Ogijima\";s:3:\"url\";s:34:\"https://2020.ogijima.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-09-06 01:00:00\";s:8:\"end_date\";s:19:\"2020-09-06 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"JP\";s:8:\"latitude\";d:37.8327357;s:9:\"longitude\";d:139.1183573;}}}}', 'no'),
(300, 'category_children', 'a:0:{}', 'yes'),
(301, 'singers_children', 'a:0:{}', 'yes'),
(309, 'et_account_status', 'active', 'no'),
(333, '_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b', '1598999838', 'no'),
(334, '_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b', '<div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div><div class=\"rss-widget\"><p><strong>RSS Error:</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 65233 bytes received</p></div>', 'no'),
(357, 'office_data_children', 'a:0:{}', 'yes'),
(363, 'theme_mods_Divi-child', 'a:6:{i:0;b:0;s:16:\"et_pb_css_synced\";s:3:\"yes\";s:18:\"nav_menu_locations\";a:0:{}s:39:\"et_updated_layouts_built_for_post_types\";s:3:\"yes\";s:18:\"custom_css_post_id\";i:60;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598975548;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:9:\"sidebar-3\";a:0:{}s:9:\"sidebar-4\";a:0:{}s:9:\"sidebar-5\";a:0:{}s:9:\"sidebar-6\";a:0:{}s:9:\"sidebar-7\";a:0:{}}}}', 'yes'),
(368, 'recovery_mode_email_last_sent', '1598961210', 'yes'),
(375, '_transient_timeout_et_divi_customizer_option_set', '1599062160', 'no'),
(376, '_transient_et_divi_customizer_option_set', 'theme', 'no'),
(379, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1598986275', 'no'),
(380, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4716;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4323;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2684;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2564;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1969;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1817;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1802;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1487;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1486;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1480;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1456;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1450;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1442;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1306;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1216;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1204;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1153;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1135;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1101;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:1007;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:901;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:896;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:883;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:880;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:804;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:799;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:790;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:780;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:773;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:753;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:740;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:724;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:718;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:702;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:698;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:681;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:662;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:661;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:656;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:649;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:635;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:632;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:604;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:593;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:589;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:581;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:580;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:578;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:562;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:558;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:555;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:551;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:550;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:550;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:540;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:529;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:528;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:520;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:519;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:516;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:513;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:503;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:495;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:481;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:479;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:473;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:459;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:449;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:440;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:439;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:436;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:435;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:431;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:423;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:419;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:417;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:413;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:411;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:410;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:410;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:400;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:398;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:397;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:391;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:384;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:384;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:378;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:378;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:376;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:375;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:372;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:366;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:360;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:355;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:347;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:342;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:341;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:339;}}', 'no'),
(382, 'theme_mods_twentynineteen', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1598975621;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(385, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1598984328;s:7:\"checked\";a:6:{s:10:\"Divi-child\";s:0:\"\";s:4:\"Divi\";s:5:\"4.5.6\";s:9:\"gema-lite\";s:5:\"1.3.2\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:4:{s:11:\"new_version\";s:3:\"4.6\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";s:7:\"package\";s:142:\"https://www.elegantthemes.com/api/api_downloads.php?api_update=1&theme=Divi&api_key=7221fdbce97beb01140e0a57d593000665ad3e3d&username=genetech\";}}s:9:\"no_update\";a:4:{s:9:\"gema-lite\";a:6:{s:5:\"theme\";s:9:\"gema-lite\";s:11:\"new_version\";s:5:\"1.3.2\";s:3:\"url\";s:39:\"https://wordpress.org/themes/gema-lite/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/gema-lite.1.3.2.zip\";s:8:\"requires\";s:5:\"4.9.9\";s:12:\"requires_php\";b:0;}s:14:\"twentynineteen\";a:6:{s:5:\"theme\";s:14:\"twentynineteen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentynineteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentynineteen.1.7.zip\";s:8:\"requires\";s:5:\"4.9.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.4.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:12:\"twentytwenty\";a:6:{s:5:\"theme\";s:12:\"twentytwenty\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:42:\"https://wordpress.org/themes/twentytwenty/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/twentytwenty.1.5.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(391, 'et_support_center_installed', 'true', 'yes'),
(392, 'et_support_center_setup_done', 'processed', 'yes'),
(393, 'et_pb_contact_form_90aa8b8ca31859f0ef7f76de09a189ed', 'off', 'yes'),
(398, '_site_transient_timeout_theme_roots', '1598986126', 'no'),
(399, '_site_transient_theme_roots', 'a:6:{s:10:\"Divi-child\";s:7:\"/themes\";s:4:\"Divi\";s:7:\"/themes\";s:9:\"gema-lite\";s:7:\"/themes\";s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(400, '_site_transient_et_update_themes', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:6:{s:10:\"Divi-child\";s:0:\"\";s:4:\"Divi\";s:5:\"4.5.6\";s:9:\"gema-lite\";s:5:\"1.3.2\";s:14:\"twentynineteen\";s:3:\"1.7\";s:15:\"twentyseventeen\";s:3:\"2.4\";s:12:\"twentytwenty\";s:3:\"1.5\";}s:8:\"response\";a:1:{s:4:\"Divi\";a:4:{s:11:\"new_version\";s:3:\"4.6\";s:5:\"theme\";s:4:\"Divi\";s:3:\"url\";s:52:\"https://www.elegantthemes.com/api/changelog/divi.txt\";s:7:\"package\";s:142:\"https://www.elegantthemes.com/api/api_downloads.php?api_update=1&theme=Divi&api_key=7221fdbce97beb01140e0a57d593000665ad3e3d&username=genetech\";}}s:12:\"last_checked\";i:1598984327;}', 'no'),
(406, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1598984992;s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.14\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"5.9.0\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.9.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.8.0\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.8.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.5\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.6\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.6.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}}s:36:\"contact-form-7/wp-contact-form-7.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/contact-form-7\";s:4:\"slug\";s:14:\"contact-form-7\";s:6:\"plugin\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:11:\"new_version\";s:5:\"5.2.2\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/contact-form-7/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/contact-form-7.5.2.2.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:67:\"https://ps.w.org/contact-form-7/assets/icon-256x256.png?rev=2279696\";s:2:\"1x\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";s:3:\"svg\";s:59:\"https://ps.w.org/contact-form-7/assets/icon.svg?rev=2339255\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:69:\"https://ps.w.org/contact-form-7/assets/banner-1544x500.png?rev=860901\";s:2:\"1x\";s:68:\"https://ps.w.org/contact-form-7/assets/banner-772x250.png?rev=880427\";}s:11:\"banners_rtl\";a:0:{}}s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(407, '_site_transient_et_update_all_plugins', 'O:8:\"stdClass\":3:{s:7:\"checked\";a:5:{s:30:\"advanced-custom-fields/acf.php\";s:6:\"5.8.14\";s:19:\"akismet/akismet.php\";s:5:\"4.1.6\";s:36:\"contact-form-7/wp-contact-form-7.php\";s:5:\"5.2.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.7.5\";s:9:\"hello.php\";s:5:\"1.7.2\";}s:8:\"response\";a:0:{}s:12:\"last_checked\";i:1598984992;}', 'no'),
(408, 'wpcf7', 'a:2:{s:7:\"version\";s:5:\"5.2.2\";s:13:\"bulk_validate\";a:4:{s:9:\"timestamp\";i:1598984994;s:7:\"version\";s:5:\"5.2.2\";s:11:\"count_valid\";i:1;s:13:\"count_invalid\";i:0;}}', 'yes'),
(409, '_transient_timeout_et_core_path', '1599071394', 'no'),
(410, '_transient_et_core_path', 'C:/xampp/htdocs/post/wp-content/themes/Divi/core', 'no'),
(411, '_transient_timeout_et_core_version', '1599071394', 'no'),
(412, '_transient_et_core_version', '4.5.6', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(9, 3, '_edit_lock', '1597427280:1'),
(10, 12, '_edit_last', '1'),
(11, 12, '_edit_lock', '1598886179:1'),
(20, 23, '_edit_lock', '1597778976:1'),
(21, 24, '_wp_attached_file', '2020/08/iphone_6-30.mp3'),
(22, 24, '_wp_attachment_metadata', 'a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:128124.98163565132;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.09079151193002502;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:427215;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:27;s:16:\"length_formatted\";s:4:\"0:27\";s:5:\"genre\";s:5:\"Blues\";s:16:\"encoder_settings\";s:13:\"Lavf57.56.101\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(23, 25, '_wp_attached_file', '2020/08/iphone_6-30-1.mp3'),
(24, 25, '_wp_attachment_metadata', 'a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:128124.98163565132;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.09079151193002502;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:427215;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:27;s:16:\"length_formatted\";s:4:\"0:27\";s:5:\"genre\";s:5:\"Blues\";s:16:\"encoder_settings\";s:13:\"Lavf57.56.101\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(25, 26, '_wp_attached_file', '2020/08/iphone_6-30-2.mp3'),
(26, 26, '_wp_attachment_metadata', 'a:18:{s:10:\"dataformat\";s:3:\"mp3\";s:8:\"channels\";i:2;s:11:\"sample_rate\";i:44100;s:7:\"bitrate\";d:128124.98163565132;s:11:\"channelmode\";s:6:\"stereo\";s:12:\"bitrate_mode\";s:3:\"vbr\";s:8:\"lossless\";b:0;s:15:\"encoder_options\";s:3:\"VBR\";s:17:\"compression_ratio\";d:0.09079151193002502;s:10:\"fileformat\";s:3:\"mp3\";s:8:\"filesize\";i:427215;s:9:\"mime_type\";s:10:\"audio/mpeg\";s:6:\"length\";i:27;s:16:\"length_formatted\";s:4:\"0:27\";s:5:\"genre\";s:5:\"Blues\";s:16:\"encoder_settings\";s:13:\"Lavf57.56.101\";s:6:\"artist\";s:0:\"\";s:5:\"album\";s:0:\"\";}'),
(27, 23, '_edit_last', '1'),
(28, 23, '_', 'field_5f36ab003ff78'),
(29, 32, '_edit_last', '1'),
(30, 32, '_edit_lock', '1598886186:1'),
(31, 32, '_', 'field_5f36ab003ff78'),
(32, 35, '_edit_last', '1'),
(33, 35, '_edit_lock', '1597600011:1'),
(34, 36, '_wp_attached_file', '2020/08/323184-200.png'),
(35, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:22:\"2020/08/323184-200.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"323184-200-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(36, 36, '_wp_attachment_image_alt', 'song'),
(37, 35, '_thumbnail_id', '36'),
(38, 35, '_', 'field_5f36ab003ff78'),
(39, 32, 'audio', '26'),
(40, 32, '_audio', 'field_5f36ab003ff78'),
(41, 32, 'singer_bio', 'hello'),
(42, 32, '_singer_bio', 'field_5f3a290659774'),
(43, 42, 'audio', '26'),
(44, 42, '_audio', 'field_5f36ab003ff78'),
(45, 42, 'singer_bio', 'hello'),
(46, 42, '_singer_bio', 'field_5f3a290659774'),
(47, 32, 'singer_image', '36'),
(48, 32, '_singer_image', 'field_5f3a293253e84'),
(49, 43, 'audio', '26'),
(50, 43, '_audio', 'field_5f36ab003ff78'),
(51, 43, 'singer_bio', 'hello'),
(52, 43, '_singer_bio', 'field_5f3a290659774'),
(53, 43, 'singer_image', '36'),
(54, 43, '_singer_image', 'field_5f3a293253e84'),
(55, 46, '_edit_last', '1'),
(56, 46, '_edit_lock', '1598859688:1'),
(57, 12, '_wp_trash_meta_status', 'publish'),
(58, 12, '_wp_trash_meta_time', '1598889622'),
(59, 12, '_wp_desired_post_slug', 'group_5f36aafbdf187'),
(60, 13, '_wp_trash_meta_status', 'publish'),
(61, 13, '_wp_trash_meta_time', '1598889622'),
(62, 13, '_wp_desired_post_slug', 'field_5f36ab003ff78'),
(63, 39, '_wp_trash_meta_status', 'publish'),
(64, 39, '_wp_trash_meta_time', '1598889622'),
(65, 39, '_wp_desired_post_slug', 'field_5f3a290659774'),
(66, 40, '_wp_trash_meta_status', 'publish'),
(67, 40, '_wp_trash_meta_time', '1598889622'),
(68, 40, '_wp_desired_post_slug', 'field_5f3a293253e84'),
(69, 46, '_wp_trash_meta_status', 'draft'),
(70, 46, '_wp_trash_meta_time', '1598889625'),
(71, 46, '_wp_desired_post_slug', ''),
(72, 50, '_edit_last', '1'),
(73, 50, '_edit_lock', '1598988183:1'),
(74, 51, '_edit_last', '1'),
(75, 51, '_edit_lock', '1598987510:1'),
(76, 55, '_edit_last', '1'),
(77, 55, '_edit_lock', '1598985591:1'),
(78, 55, '_wp_page_template', 'default'),
(79, 55, '_et_pb_post_hide_nav', 'default'),
(80, 55, '_et_pb_page_layout', 'et_right_sidebar'),
(81, 55, '_et_pb_side_nav', 'off'),
(82, 55, '_et_pb_use_builder', 'on'),
(83, 55, '_et_pb_first_image', ''),
(84, 55, '_et_pb_truncate_post', ''),
(85, 55, '_et_pb_truncate_post_date', ''),
(86, 55, '_et_pb_old_content', '[sum_two_value]'),
(87, 55, '_et_pb_built_for_post_type', 'page'),
(88, 55, '_et_pb_ab_subjects', ''),
(89, 55, '_et_pb_enable_shortcode_tracking', ''),
(90, 55, '_et_pb_ab_current_shortcode', '[et_pb_split_track id=\"55\" /]'),
(91, 55, '_et_pb_custom_css', ''),
(92, 55, '_et_pb_gutter_width', '3'),
(94, 55, '_et_builder_version', 'VB|Divi|4.5.6'),
(95, 55, '_et_pb_show_page_creation', 'off'),
(97, 64, '_edit_last', '1'),
(98, 64, '_edit_lock', '1598985647:1'),
(99, 65, '_edit_last', '1'),
(100, 65, '_edit_lock', '1598987587:1'),
(101, 65, 'location', ''),
(102, 65, '_location', 'field_5f4e2d3eafff1'),
(103, 65, 'phone-number', ''),
(104, 65, '_phone-number', 'field_5f4e2d65afff2'),
(105, 65, 'address', 'Quas libero quas Nam'),
(106, 65, '_address', 'field_5f4e2da0afff3'),
(107, 66, '_edit_last', '1'),
(108, 66, '_edit_lock', '1598987808:1'),
(109, 66, 'location', ''),
(110, 66, '_location', 'field_5f4e2d3eafff1'),
(111, 66, 'phone-number', ''),
(112, 66, '_phone-number', 'field_5f4e2d65afff2'),
(113, 66, 'address', 'Quas libero quas Nam'),
(114, 66, '_address', 'field_5f4e2da0afff3'),
(115, 67, '_wp_trash_meta_status', 'publish'),
(116, 67, '_wp_trash_meta_time', '1598975039'),
(117, 71, '_wp_trash_meta_status', 'publish'),
(118, 71, '_wp_trash_meta_time', '1598975818'),
(121, 77, '_form', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]'),
(122, 77, '_mail', 'a:8:{s:7:\"subject\";s:21:\"post \"[your-subject]\"\";s:6:\"sender\";s:31:\"post <farkhundahanif@gmail.com>\";s:4:\"body\";s:164:\"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on post (http://localhost/post)\";s:9:\"recipient\";s:24:\"farkhundahanif@gmail.com\";s:18:\"additional_headers\";s:22:\"Reply-To: [your-email]\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(123, 77, '_mail_2', 'a:9:{s:6:\"active\";b:0;s:7:\"subject\";s:21:\"post \"[your-subject]\"\";s:6:\"sender\";s:31:\"post <farkhundahanif@gmail.com>\";s:4:\"body\";s:106:\"Message Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on post (http://localhost/post)\";s:9:\"recipient\";s:12:\"[your-email]\";s:18:\"additional_headers\";s:34:\"Reply-To: farkhundahanif@gmail.com\";s:11:\"attachments\";s:0:\"\";s:8:\"use_html\";i:0;s:13:\"exclude_blank\";i:0;}'),
(124, 77, '_messages', 'a:8:{s:12:\"mail_sent_ok\";s:45:\"Thank you for your message. It has been sent.\";s:12:\"mail_sent_ng\";s:71:\"There was an error trying to send your message. Please try again later.\";s:16:\"validation_error\";s:61:\"One or more fields have an error. Please check and try again.\";s:4:\"spam\";s:71:\"There was an error trying to send your message. Please try again later.\";s:12:\"accept_terms\";s:69:\"You must accept the terms and conditions before sending your message.\";s:16:\"invalid_required\";s:22:\"The field is required.\";s:16:\"invalid_too_long\";s:22:\"The field is too long.\";s:17:\"invalid_too_short\";s:23:\"The field is too short.\";}'),
(125, 77, '_additional_settings', NULL),
(126, 77, '_locale', 'en_US'),
(128, 81, '_wp_trash_meta_status', 'publish'),
(129, 81, '_wp_trash_meta_time', '1598985906'),
(130, 82, '_wp_attached_file', '2020/09/Logo.png'),
(131, 82, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:66;s:6:\"height\";i:12;s:4:\"file\";s:16:\"2020/09/Logo.png\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(132, 83, '_wp_attached_file', '2020/09/logo-2.png'),
(133, 83, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:256;s:6:\"height\";i:66;s:4:\"file\";s:18:\"2020/09/logo-2.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-2-150x66.png\";s:5:\"width\";i:150;s:6:\"height\";i:66;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(134, 84, '_wp_trash_meta_status', 'publish'),
(135, 84, '_wp_trash_meta_time', '1598986032'),
(136, 85, '_edit_lock', '1598986093:1'),
(137, 85, '_wp_trash_meta_status', 'publish'),
(138, 85, '_wp_trash_meta_time', '1598986100'),
(139, 87, '_edit_lock', '1598986568:1'),
(140, 87, '_wp_trash_meta_status', 'publish'),
(141, 87, '_wp_trash_meta_time', '1598986571'),
(142, 89, '_edit_lock', '1598986689:1'),
(143, 89, '_wp_trash_meta_status', 'publish'),
(144, 89, '_wp_trash_meta_time', '1598986707'),
(145, 91, '_wp_trash_meta_status', 'publish'),
(146, 91, '_wp_trash_meta_time', '1598986747'),
(147, 93, '_wp_trash_meta_status', 'publish'),
(148, 93, '_wp_trash_meta_time', '1598987336'),
(149, 50, 'location', ''),
(150, 50, '_location', 'field_5f4e2d3eafff1'),
(151, 50, 'number', '0030033034'),
(152, 50, '_number', 'field_5f4e2d65afff2'),
(153, 50, 'address', 'street 19 uk'),
(154, 50, '_address', 'field_5f4e2da0afff3'),
(155, 65, 'number', '03556633224'),
(156, 65, '_number', 'field_5f4e2d65afff2'),
(157, 66, 'number', '0404044040'),
(158, 66, '_number', 'field_5f4e2d65afff2');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-08-13 15:27:00', '2020-08-13 15:27:00', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2020-08-13 15:27:00', '2020-08-13 15:27:00', '', 0, 'http://localhost/post/?p=1', 0, 'post', '', 1),
(2, 1, '2020-08-13 15:27:00', '2020-08-13 15:27:00', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"http://localhost/post/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-08-13 15:27:00', '2020-08-13 15:27:00', '', 0, 'http://localhost/post/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-08-13 15:27:00', '2020-08-13 15:27:00', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://localhost/post.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-08-13 15:27:00', '2020-08-13 15:27:00', '', 0, 'http://localhost/post/?page_id=3', 0, 'page', '', 0),
(12, 1, '2020-08-14 15:20:58', '2020-08-14 15:20:58', 'a:7:{s:8:\"location\";a:2:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"sound\";}}i:1;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Audio', 'audio', 'trash', 'closed', 'closed', '', 'group_5f36aafbdf187__trashed', '', '', '2020-08-31 16:00:22', '2020-08-31 16:00:22', '', 0, 'http://localhost/post/?post_type=acf-field-group&#038;p=12', 0, 'acf-field-group', '', 0),
(13, 1, '2020-08-14 15:20:58', '2020-08-14 15:20:58', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:9:\".mp3, ogg\";}', 'Audio', 'audio', 'trash', 'closed', 'closed', '', 'field_5f36ab003ff78__trashed', '', '', '2020-08-31 16:00:22', '2020-08-31 16:00:22', '', 12, 'http://localhost/post/?post_type=acf-field&#038;p=13', 0, 'acf-field', '', 0),
(23, 1, '2020-08-14 16:02:37', '2020-08-14 16:02:37', '', 'hello', '', 'publish', 'closed', 'closed', '', 'hello', '', '', '2020-08-14 17:38:35', '2020-08-14 17:38:35', '', 0, 'http://localhost/post/?post_type=sound&#038;p=23', 0, 'sound', '', 0),
(24, 1, '2020-08-14 16:01:16', '2020-08-14 16:01:16', '\"iphone_6-30\". Genre: Blues.', 'iphone_6-30', '', 'inherit', 'open', 'closed', '', 'iphone_6-30', '', '', '2020-08-14 16:01:32', '2020-08-14 16:01:32', '', 23, 'http://localhost/post/wp-content/uploads/2020/08/iphone_6-30.mp3', 0, 'attachment', 'audio/mpeg', 0),
(25, 1, '2020-08-14 16:01:36', '2020-08-14 16:01:36', '\"iphone_6-30\". Genre: Blues.', 'iphone_6-30', '', 'inherit', 'open', 'closed', '', 'iphone_6-30-2', '', '', '2020-08-14 16:01:46', '2020-08-14 16:01:46', '', 23, 'http://localhost/post/wp-content/uploads/2020/08/iphone_6-30-1.mp3', 0, 'attachment', 'audio/mpeg', 0),
(26, 1, '2020-08-14 16:01:46', '2020-08-14 16:01:46', '\"iphone_6-30\". Genre: Blues.', 'iphone_6-30', '', 'inherit', 'open', 'closed', '', 'iphone_6-30-3', '', '', '2020-08-17 06:55:13', '2020-08-17 06:55:13', '', 23, 'http://localhost/post/wp-content/uploads/2020/08/iphone_6-30-2.mp3', 0, 'attachment', 'audio/mpeg', 0),
(27, 1, '2020-08-14 16:02:37', '2020-08-14 16:02:37', '', 'hello', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-08-14 16:02:37', '2020-08-14 16:02:37', '', 23, 'http://localhost/post/2020/08/14/23-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-08-14 16:02:37', '2020-08-14 16:02:37', '', 'hello', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-08-14 16:02:37', '2020-08-14 16:02:37', '', 23, 'http://localhost/post/2020/08/14/23-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2020-08-14 17:38:35', '2020-08-14 17:38:35', '', 'hello', '', 'inherit', 'closed', 'closed', '', '23-revision-v1', '', '', '2020-08-14 17:38:35', '2020-08-14 17:38:35', '', 23, 'http://localhost/post/2020/08/14/23-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2020-08-14 17:47:26', '2020-08-14 17:47:26', '', 'Divi', '', 'publish', 'closed', 'closed', '', 'divi', '', '', '2020-08-14 17:48:52', '2020-08-14 17:48:52', '', 0, 'http://localhost/post/2020/08/14/divi/', 0, 'custom_css', '', 0),
(31, 1, '2020-08-14 17:47:26', '2020-08-14 17:47:26', '', 'Divi', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2020-08-14 17:47:26', '2020-08-14 17:47:26', '', 30, 'http://localhost/post/2020/08/14/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2020-08-14 17:51:07', '2020-08-14 17:51:07', 'this is a song', 'song-a', '', 'publish', 'closed', 'closed', '', 'song-a', '', '', '2020-08-17 06:57:15', '2020-08-17 06:57:15', '', 0, 'http://localhost/post/?post_type=sound&#038;p=32', 0, 'sound', '', 0),
(33, 1, '2020-08-14 17:51:07', '2020-08-14 17:51:07', 'this is a song', 'song-a', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-08-14 17:51:07', '2020-08-14 17:51:07', '', 32, 'http://localhost/post/2020/08/14/32-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2020-08-16 17:38:29', '2020-08-16 17:38:29', 'this is a song', 'song-a', '', 'publish', 'closed', 'closed', '', 'song-a-2', '', '', '2020-08-16 17:38:29', '2020-08-16 17:38:29', '', 0, 'http://localhost/post/?post_type=sound&#038;p=35', 0, 'sound', '', 0),
(36, 1, '2020-08-16 17:38:18', '2020-08-16 17:38:18', '', '323184-200', '', 'inherit', 'open', 'closed', '', '323184-200', '', '', '2020-08-16 17:38:23', '2020-08-16 17:38:23', '', 35, 'http://localhost/post/wp-content/uploads/2020/08/323184-200.png', 0, 'attachment', 'image/png', 0),
(37, 1, '2020-08-16 17:38:29', '2020-08-16 17:38:29', 'this is a song', 'song-a', '', 'inherit', 'closed', 'closed', '', '35-revision-v1', '', '', '2020-08-16 17:38:29', '2020-08-16 17:38:29', '', 35, 'http://localhost/post/2020/08/16/35-revision-v1/', 0, 'revision', '', 0),
(39, 1, '2020-08-17 06:52:28', '2020-08-17 06:52:28', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";a:1:{i:0;a:1:{i:0;a:2:{s:5:\"field\";s:19:\"field_5f3a293253e84\";s:8:\"operator\";s:7:\"==empty\";}}}s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";s:0:\"\";s:9:\"new_lines\";s:0:\"\";}', 'Singer Bio', 'singer_bio', 'trash', 'closed', 'closed', '', 'field_5f3a290659774__trashed', '', '', '2020-08-31 16:00:22', '2020-08-31 16:00:22', '', 12, 'http://localhost/post/?post_type=acf-field&#038;p=39', 1, 'acf-field', '', 0),
(40, 1, '2020-08-17 06:53:22', '2020-08-17 06:53:22', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:19:\"jpg, jpeg, gif, png\";}', 'Singer Image', 'singer_image', 'trash', 'closed', 'closed', '', 'field_5f3a293253e84__trashed', '', '', '2020-08-31 16:00:22', '2020-08-31 16:00:22', '', 12, 'http://localhost/post/?post_type=acf-field&#038;p=40', 2, 'acf-field', '', 0),
(42, 1, '2020-08-17 06:56:07', '2020-08-17 06:56:07', 'this is a song', 'song-a', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-08-17 06:56:07', '2020-08-17 06:56:07', '', 32, 'http://localhost/post/2020/08/17/32-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2020-08-17 06:57:15', '2020-08-17 06:57:15', 'this is a song', 'song-a', '', 'inherit', 'closed', 'closed', '', '32-revision-v1', '', '', '2020-08-17 06:57:15', '2020-08-17 06:57:15', '', 32, 'http://localhost/post/2020/08/17/32-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2020-08-31 07:21:19', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-08-31 07:21:19', '0000-00-00 00:00:00', '', 0, 'http://localhost/post/?p=45', 0, 'post', '', 0),
(46, 1, '2020-08-31 16:00:25', '2020-08-31 16:00:25', '', 'taxanonmy', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2020-08-31 16:00:25', '2020-08-31 16:00:25', '', 0, 'http://localhost/post/?post_type=acf-field-group&#038;p=46', 0, 'acf-field-group', '', 0),
(47, 1, '2020-08-31 16:00:29', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-08-31 16:00:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/post/?post_type=acf-field-group&p=47', 0, 'acf-field-group', '', 0),
(48, 1, '2020-09-01 11:06:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-01 11:06:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/post/?post_type=office&p=48', 0, 'office', '', 0),
(49, 1, '2020-09-01 11:09:24', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-09-01 11:09:24', '0000-00-00 00:00:00', '', 0, 'http://localhost/post/?post_type=office&p=49', 0, 'office', '', 0),
(50, 1, '2020-09-01 11:13:07', '2020-09-01 11:13:07', 'Lorem Ipsum is simply dummying<em> text</em> of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard <em>dummy text</em> ever since the 1500s', 'Office-1 Data', '', 'publish', 'closed', 'closed', '', 'office-1-data', '', '', '2020-09-01 19:19:28', '2020-09-01 19:19:28', '', 0, 'http://localhost/post/?post_type=office&#038;p=50', 0, 'office', '', 0),
(51, 1, '2020-09-01 11:18:00', '2020-09-01 11:18:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"office\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Office-datail', 'office-datail', 'publish', 'closed', 'closed', '', 'group_5f4e2d2af3407', '', '', '2020-09-01 19:02:33', '2020-09-01 19:02:33', '', 0, 'http://localhost/post/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2020-09-01 11:18:00', '2020-09-01 11:18:00', 'a:9:{s:4:\"type\";s:10:\"google_map\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:10:\"center_lat\";s:0:\"\";s:10:\"center_lng\";s:0:\"\";s:4:\"zoom\";s:0:\"\";s:6:\"height\";s:0:\"\";}', 'location', 'location', 'publish', 'closed', 'closed', '', 'field_5f4e2d3eafff1', '', '', '2020-09-01 15:17:59', '2020-09-01 15:17:59', '', 51, 'http://localhost/post/?post_type=acf-field&#038;p=52', 0, 'acf-field', '', 0),
(53, 1, '2020-09-01 11:18:00', '2020-09-01 11:18:00', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'number', 'number', 'publish', 'closed', 'closed', '', 'field_5f4e2d65afff2', '', '', '2020-09-01 19:02:33', '2020-09-01 19:02:33', '', 51, 'http://localhost/post/?post_type=acf-field&#038;p=53', 1, 'acf-field', '', 0),
(54, 1, '2020-09-01 11:18:01', '2020-09-01 11:18:01', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'address', 'address', 'publish', 'closed', 'closed', '', 'field_5f4e2da0afff3', '', '', '2020-09-01 11:18:01', '2020-09-01 11:18:01', '', 51, 'http://localhost/post/?post_type=acf-field&p=54', 2, 'acf-field', '', 0),
(55, 1, '2020-09-01 11:39:16', '2020-09-01 11:39:16', '[et_pb_section fb_built=\"1\" _builder_version=\"3.22\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_text _builder_version=\"4.5.6\" background_size=\"initial\" background_position=\"top_left\" background_repeat=\"repeat\"][sum_two_value][/et_pb_text][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_code _builder_version=\"4.5.6\" _module_preset=\"default\" hover_enabled=\"0\"][contact-form-7 id=\"77\" title=\"Contact form 1\"][/et_pb_code][/et_pb_column][/et_pb_row][/et_pb_section]', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2020-09-01 18:36:38', '2020-09-01 18:36:38', '', 0, 'http://localhost/post/?page_id=55', 0, 'page', '', 0),
(56, 1, '2020-09-01 11:35:27', '2020-09-01 11:35:27', '', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 11:35:27', '2020-09-01 11:35:27', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2020-09-01 11:39:16', '2020-09-01 11:39:16', '[et_pb_section fb_built=\"1\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_row _builder_version=\"4.5.6\" _module_preset=\"default\" column_structure=\"1_2,1_2\"][et_pb_column _builder_version=\"4.5.6\" _module_preset=\"default\" type=\"1_2\"][et_pb_text _builder_version=\"4.5.6\" _module_preset=\"default\" hover_enabled=\"0\"][office-details][/et_pb_text][/et_pb_column][et_pb_column _builder_version=\"4.5.6\" _module_preset=\"default\" type=\"1_2\"][/et_pb_column][/et_pb_row][/et_pb_section]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 11:39:16', '2020-09-01 11:39:16', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2020-09-01 11:39:52', '2020-09-01 11:39:52', '[et_pb_section fb_built=\"1\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_code _builder_version=\"4.5.6\" _module_preset=\"default\" hover_enabled=\"0\"][office-details][/et_pb_code][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][/et_pb_column][/et_pb_row][/et_pb_section]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 11:39:52', '2020-09-01 11:39:52', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2020-09-01 11:45:34', '2020-09-01 11:45:34', 'a {\n    color: black !important;\n    display: block !important;\n	font-size: 25px;\nfont-weight: 600;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}\np.description {\n    margin-top: 10px;\n    font-size: 19px;\n	color: blue;}\n input[type=text], select, textarea {\n    margin: 0;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\n .wpcf7 input[type=\"email\"], .wpcf7 input[type=\"tel\"] {\n    direction: ltr;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\ntextarea{\n	padding-right:26px;\n}\na.number {\n    font-size: 15px;\n	margin-bottom: 12px;}', 'Divi-child', '', 'publish', 'closed', 'closed', '', 'divi-child', '', '', '2020-09-01 19:08:56', '2020-09-01 19:08:56', '', 0, 'http://localhost/post/2020/09/01/divi-child/', 0, 'custom_css', '', 0),
(61, 1, '2020-09-01 11:45:34', '2020-09-01 11:45:34', '', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 11:45:34', '2020-09-01 11:45:34', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2020-09-01 11:48:24', '2020-09-01 11:48:24', '', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 11:48:24', '2020-09-01 11:48:24', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(63, 1, '2020-09-01 11:48:54', '2020-09-01 11:48:54', '[sum_two_value]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 11:48:54', '2020-09-01 11:48:54', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2020-09-01 15:16:10', '0000-00-00 00:00:00', '', 'office_2', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-09-01 15:16:10', '2020-09-01 15:16:10', '', 0, 'http://localhost/post/?post_type=office&#038;p=64', 0, 'office', '', 0),
(65, 1, '2020-09-01 15:18:25', '2020-09-01 15:18:25', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', 'Office-2 Data', '', 'publish', 'closed', 'closed', '', 'office-2-detail', '', '', '2020-09-01 19:15:28', '2020-09-01 19:15:28', '', 0, 'http://localhost/post/?post_type=office&#038;p=65', 0, 'office', '', 0),
(66, 1, '2020-09-01 15:18:43', '2020-09-01 15:18:43', 'Reference site about Lorem Ipsum, giving information on its origins, as well as a random Lipsum generator', 'Office-3 Data', '', 'publish', 'closed', 'closed', '', 'office-3-detail', '', '', '2020-09-01 19:15:49', '2020-09-01 19:15:49', '', 0, 'http://localhost/post/?post_type=office&#038;p=66', 0, 'office', '', 0),
(67, 1, '2020-09-01 15:43:59', '2020-09-01 15:43:59', '{\n    \"custom_css[Divi-child]\": {\n        \"value\": \"a {\\n    color: black !important;\\n    display: block;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 15:43:59\"\n    },\n    \"et_divi[footer_widget_text_color]\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 15:43:59\"\n    },\n    \"et_divi[footer_widget_link_color]\": {\n        \"value\": \"#ffffff\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 15:43:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '584c9efc-dfe1-42bd-ae54-747d283401cf', '', '', '2020-09-01 15:43:59', '2020-09-01 15:43:59', '', 0, 'http://localhost/post/2020/09/01/584c9efc-dfe1-42bd-ae54-747d283401cf/', 0, 'customize_changeset', '', 0),
(68, 1, '2020-09-01 15:43:59', '2020-09-01 15:43:59', 'a {\n    color: black !important;\n    display: block;\n}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 15:43:59', '2020-09-01 15:43:59', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-09-01 15:55:56', '2020-09-01 15:55:56', 'a {\r\n    color: black !important;\r\n    display: block !important;\r\n}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 15:55:56', '2020-09-01 15:55:56', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-09-01 15:56:58', '2020-09-01 15:56:58', '{\n    \"et_divi[menu_link_active]\": {\n        \"value\": \"#000000\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 15:56:58\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '833767f6-e0bd-4c09-819f-eb0632799230', '', '', '2020-09-01 15:56:58', '2020-09-01 15:56:58', '', 0, 'http://localhost/post/2020/09/01/833767f6-e0bd-4c09-819f-eb0632799230/', 0, 'customize_changeset', '', 0),
(72, 1, '2020-09-01 15:57:54', '2020-09-01 15:57:54', '[et_pb_section][et_pb_row][et_pb_column type=\"4_4\"][et_pb_text][sum_two_value][/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 15:57:54', '2020-09-01 15:57:54', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-09-01 15:58:12', '2020-09-01 15:58:12', '[et_pb_section fb_built=\"1\" _builder_version=\"3.22\"][et_pb_row _builder_version=\"3.25\" background_size=\"initial\" background_position=\"top_left\" background_repeat=\"repeat\"][et_pb_column type=\"4_4\" _builder_version=\"3.25\" custom_padding=\"|||\" custom_padding__hover=\"|||\"][et_pb_text _builder_version=\"3.27.4\" background_size=\"initial\" background_position=\"top_left\" background_repeat=\"repeat\"][sum_two_value][/et_pb_text][/et_pb_column][/et_pb_row][/et_pb_section]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 15:58:12', '2020-09-01 15:58:12', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2020-09-01 15:59:22', '2020-09-01 15:59:22', '[et_pb_section fb_built=\"1\" _builder_version=\"3.22\"][et_pb_row _builder_version=\"4.5.6\" _module_preset=\"default\" column_structure=\"1_2,1_2\"][et_pb_column _builder_version=\"4.5.6\" _module_preset=\"default\" type=\"1_2\"][et_pb_text _builder_version=\"4.5.6\" background_size=\"initial\" background_position=\"top_left\" background_repeat=\"repeat\" hover_enabled=\"0\"][sum_two_value][/et_pb_text][/et_pb_column][et_pb_column _builder_version=\"4.5.6\" _module_preset=\"default\" type=\"1_2\"][et_pb_contact_form _builder_version=\"4.5.6\" _module_preset=\"default\" hover_enabled=\"0\"][et_pb_contact_field field_id=\"Name\" field_title=\"Name\" _builder_version=\"3.16\" button_text_size__hover_enabled=\"off\" button_one_text_size__hover_enabled=\"off\" button_two_text_size__hover_enabled=\"off\" button_text_color__hover_enabled=\"off\" button_one_text_color__hover_enabled=\"off\" button_two_text_color__hover_enabled=\"off\" button_border_width__hover_enabled=\"off\" button_one_border_width__hover_enabled=\"off\" button_two_border_width__hover_enabled=\"off\" button_border_color__hover_enabled=\"off\" button_one_border_color__hover_enabled=\"off\" button_two_border_color__hover_enabled=\"off\" button_border_radius__hover_enabled=\"off\" button_one_border_radius__hover_enabled=\"off\" button_two_border_radius__hover_enabled=\"off\" button_letter_spacing__hover_enabled=\"off\" button_one_letter_spacing__hover_enabled=\"off\" button_two_letter_spacing__hover_enabled=\"off\" button_bg_color__hover_enabled=\"off\" button_one_bg_color__hover_enabled=\"off\" button_two_bg_color__hover_enabled=\"off\"][/et_pb_contact_field][et_pb_contact_field field_id=\"Email\" field_title=\"Email Address\" field_type=\"email\" _builder_version=\"3.16\" button_text_size__hover_enabled=\"off\" button_one_text_size__hover_enabled=\"off\" button_two_text_size__hover_enabled=\"off\" button_text_color__hover_enabled=\"off\" button_one_text_color__hover_enabled=\"off\" button_two_text_color__hover_enabled=\"off\" button_border_width__hover_enabled=\"off\" button_one_border_width__hover_enabled=\"off\" button_two_border_width__hover_enabled=\"off\" button_border_color__hover_enabled=\"off\" button_one_border_color__hover_enabled=\"off\" button_two_border_color__hover_enabled=\"off\" button_border_radius__hover_enabled=\"off\" button_one_border_radius__hover_enabled=\"off\" button_two_border_radius__hover_enabled=\"off\" button_letter_spacing__hover_enabled=\"off\" button_one_letter_spacing__hover_enabled=\"off\" button_two_letter_spacing__hover_enabled=\"off\" button_bg_color__hover_enabled=\"off\" button_one_bg_color__hover_enabled=\"off\" button_two_bg_color__hover_enabled=\"off\"][/et_pb_contact_field][et_pb_contact_field field_id=\"Message\" field_title=\"Message\" field_type=\"text\" fullwidth_field=\"on\" _builder_version=\"3.16\" button_text_size__hover_enabled=\"off\" button_one_text_size__hover_enabled=\"off\" button_two_text_size__hover_enabled=\"off\" button_text_color__hover_enabled=\"off\" button_one_text_color__hover_enabled=\"off\" button_two_text_color__hover_enabled=\"off\" button_border_width__hover_enabled=\"off\" button_one_border_width__hover_enabled=\"off\" button_two_border_width__hover_enabled=\"off\" button_border_color__hover_enabled=\"off\" button_one_border_color__hover_enabled=\"off\" button_two_border_color__hover_enabled=\"off\" button_border_radius__hover_enabled=\"off\" button_one_border_radius__hover_enabled=\"off\" button_two_border_radius__hover_enabled=\"off\" button_letter_spacing__hover_enabled=\"off\" button_one_letter_spacing__hover_enabled=\"off\" button_two_letter_spacing__hover_enabled=\"off\" button_bg_color__hover_enabled=\"off\" button_one_bg_color__hover_enabled=\"off\" button_two_bg_color__hover_enabled=\"off\"][/et_pb_contact_field][/et_pb_contact_form][/et_pb_column][/et_pb_row][/et_pb_section]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 15:59:22', '2020-09-01 15:59:22', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2020-09-01 18:29:54', '2020-09-01 18:29:54', '<label> Your Name (required)\n    [text* your-name] </label>\n\n<label> Your Email (required)\n    [email* your-email] </label>\n\n<label> Subject\n    [text your-subject] </label>\n\n<label> Your Message\n    [textarea your-message] </label>\n\n[submit \"Send\"]\npost \"[your-subject]\"\npost <farkhundahanif@gmail.com>\nFrom: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on post (http://localhost/post)\nfarkhundahanif@gmail.com\nReply-To: [your-email]\n\n0\n0\n\npost \"[your-subject]\"\npost <farkhundahanif@gmail.com>\nMessage Body:\n[your-message]\n\n-- \nThis e-mail was sent from a contact form on post (http://localhost/post)\n[your-email]\nReply-To: farkhundahanif@gmail.com\n\n0\n0\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.', 'Contact form 1', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2020-09-01 18:29:54', '2020-09-01 18:29:54', '', 0, 'http://localhost/post/?post_type=wpcf7_contact_form&p=77', 0, 'wpcf7_contact_form', '', 0),
(78, 1, '2020-09-01 18:36:34', '2020-09-01 18:36:34', '[et_pb_section fb_built=\"1\" _builder_version=\"3.22\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_text _builder_version=\"4.5.6\" background_size=\"initial\" background_position=\"top_left\" background_repeat=\"repeat\"][sum_two_value][/et_pb_text][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_code _builder_version=\"4.5.6\" _module_preset=\"default\" hover_enabled=\"0\"][contact-form-7 id=\"77\" title=\"Contact form 1\"][/et_pb_code][/et_pb_column][/et_pb_row][/et_pb_section]', 'contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 18:36:34', '2020-09-01 18:36:34', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2020-09-01 18:36:38', '2020-09-01 18:36:38', '[et_pb_section fb_built=\"1\" _builder_version=\"3.22\"][et_pb_row column_structure=\"1_2,1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_text _builder_version=\"4.5.6\" background_size=\"initial\" background_position=\"top_left\" background_repeat=\"repeat\"][sum_two_value][/et_pb_text][/et_pb_column][et_pb_column type=\"1_2\" _builder_version=\"4.5.6\" _module_preset=\"default\"][et_pb_code _builder_version=\"4.5.6\" _module_preset=\"default\" hover_enabled=\"0\"][contact-form-7 id=\"77\" title=\"Contact form 1\"][/et_pb_code][/et_pb_column][/et_pb_row][/et_pb_section]', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '55-revision-v1', '', '', '2020-09-01 18:36:38', '2020-09-01 18:36:38', '', 55, 'http://localhost/post/2020/09/01/55-revision-v1/', 0, 'revision', '', 0),
(81, 1, '2020-09-01 18:45:06', '2020-09-01 18:45:06', '{\n    \"et_divi[header_style]\": {\n        \"value\": \"split\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:45:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3acac44d-ef16-4d92-ad25-8dd1392d5c72', '', '', '2020-09-01 18:45:06', '2020-09-01 18:45:06', '', 0, 'http://localhost/post/2020/09/01/3acac44d-ef16-4d92-ad25-8dd1392d5c72/', 0, 'customize_changeset', '', 0),
(82, 1, '2020-09-01 18:45:43', '2020-09-01 18:45:43', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-09-01 18:45:43', '2020-09-01 18:45:43', '', 0, 'http://localhost/post/wp-content/uploads/2020/09/Logo.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2020-09-01 18:45:59', '2020-09-01 18:45:59', '', 'logo (2)', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2020-09-01 18:45:59', '2020-09-01 18:45:59', '', 0, 'http://localhost/post/wp-content/uploads/2020/09/logo-2.png', 0, 'attachment', 'image/png', 0),
(84, 1, '2020-09-01 18:47:12', '2020-09-01 18:47:12', '{\n    \"et_divi[header_style]\": {\n        \"value\": \"split\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:47:12\"\n    },\n    \"et_divi[vertical_nav]\": {\n        \"value\": false,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:47:12\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '98f02610-fb9a-4b24-bdf0-20227ce5b983', '', '', '2020-09-01 18:47:12', '2020-09-01 18:47:12', '', 0, 'http://localhost/post/2020/09/01/98f02610-fb9a-4b24-bdf0-20227ce5b983/', 0, 'customize_changeset', '', 0),
(85, 1, '2020-09-01 18:48:20', '2020-09-01 18:48:20', '{\n    \"custom_css[Divi-child]\": {\n        \"value\": \"a {\\n    color: black !important;\\n    display: block !important;\\n}\\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\\n \\n\\tmargin-left: 24px;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:48:20\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd3b55e5e-d055-4094-bef8-b8b64caf8a66', '', '', '2020-09-01 18:48:20', '2020-09-01 18:48:20', '', 0, 'http://localhost/post/?p=85', 0, 'customize_changeset', '', 0),
(86, 1, '2020-09-01 18:48:20', '2020-09-01 18:48:20', 'a {\n    color: black !important;\n    display: block !important;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 18:48:20', '2020-09-01 18:48:20', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2020-09-01 18:56:10', '2020-09-01 18:56:10', '{\n    \"custom_css[Divi-child]\": {\n        \"value\": \"a {\\n    color: black !important;\\n    display: block !important;\\n\\tfont-size: 25px;\\nfont-weight: 600;\\n}\\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\\n \\n\\tmargin-left: 24px;}\\np.description {\\n    margin-top: 10px;\\n    font-size: 19px;\\n\\tcolor: blue;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:50:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '420a6a1f-e321-40ea-ba28-220efeb1fb27', '', '', '2020-09-01 18:56:10', '2020-09-01 18:56:10', '', 0, 'http://localhost/post/?p=87', 0, 'customize_changeset', '', 0),
(88, 1, '2020-09-01 18:56:11', '2020-09-01 18:56:11', 'a {\n    color: black !important;\n    display: block !important;\n	font-size: 25px;\nfont-weight: 600;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}\np.description {\n    margin-top: 10px;\n    font-size: 19px;\n	color: blue;}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 18:56:11', '2020-09-01 18:56:11', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-09-01 18:58:27', '2020-09-01 18:58:27', '{\n    \"custom_css[Divi-child]\": {\n        \"value\": \"a {\\n    color: black !important;\\n    display: block !important;\\n\\tfont-size: 25px;\\nfont-weight: 600;\\n}\\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\\n \\n\\tmargin-left: 24px;}\\np.description {\\n    margin-top: 10px;\\n    font-size: 19px;\\n\\tcolor: blue;}\\n input[type=text], select, textarea {\\n    margin: 0;\\n    padding-bottom: 23px;\\n\\t padding-right: 26px;}\\n .wpcf7 input[type=\\\"email\\\"], .wpcf7 input[type=\\\"tel\\\"] {\\n    direction: ltr;\\n    padding-bottom: 23px;\\n\\t padding-right: 26px;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:58:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '864de5d7-37d7-4b83-b92f-63df2357aa30', '', '', '2020-09-01 18:58:27', '2020-09-01 18:58:27', '', 0, 'http://localhost/post/?p=89', 0, 'customize_changeset', '', 0),
(90, 1, '2020-09-01 18:58:27', '2020-09-01 18:58:27', 'a {\n    color: black !important;\n    display: block !important;\n	font-size: 25px;\nfont-weight: 600;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}\np.description {\n    margin-top: 10px;\n    font-size: 19px;\n	color: blue;}\n input[type=text], select, textarea {\n    margin: 0;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\n .wpcf7 input[type=\"email\"], .wpcf7 input[type=\"tel\"] {\n    direction: ltr;\n    padding-bottom: 23px;\n	 padding-right: 26px;}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 18:58:27', '2020-09-01 18:58:27', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2020-09-01 18:59:06', '2020-09-01 18:59:06', '{\n    \"custom_css[Divi-child]\": {\n        \"value\": \"a {\\n    color: black !important;\\n    display: block !important;\\n\\tfont-size: 25px;\\nfont-weight: 600;\\n}\\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\\n \\n\\tmargin-left: 24px;}\\np.description {\\n    margin-top: 10px;\\n    font-size: 19px;\\n\\tcolor: blue;}\\n input[type=text], select, textarea {\\n    margin: 0;\\n    padding-bottom: 23px;\\n\\t padding-right: 26px;}\\n .wpcf7 input[type=\\\"email\\\"], .wpcf7 input[type=\\\"tel\\\"] {\\n    direction: ltr;\\n    padding-bottom: 23px;\\n\\t padding-right: 26px;}\\ntextarea{\\n\\tpadding-right:26px;\\n}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 18:59:06\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '466fbb1e-dcf0-4740-b1c2-271a9665a2e1', '', '', '2020-09-01 18:59:06', '2020-09-01 18:59:06', '', 0, 'http://localhost/post/2020/09/01/466fbb1e-dcf0-4740-b1c2-271a9665a2e1/', 0, 'customize_changeset', '', 0),
(92, 1, '2020-09-01 18:59:06', '2020-09-01 18:59:06', 'a {\n    color: black !important;\n    display: block !important;\n	font-size: 25px;\nfont-weight: 600;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}\np.description {\n    margin-top: 10px;\n    font-size: 19px;\n	color: blue;}\n input[type=text], select, textarea {\n    margin: 0;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\n .wpcf7 input[type=\"email\"], .wpcf7 input[type=\"tel\"] {\n    direction: ltr;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\ntextarea{\n	padding-right:26px;\n}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 18:59:06', '2020-09-01 18:59:06', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2020-09-01 19:08:56', '2020-09-01 19:08:56', '{\n    \"custom_css[Divi-child]\": {\n        \"value\": \"a {\\n    color: black !important;\\n    display: block !important;\\n\\tfont-size: 25px;\\nfont-weight: 600;\\n}\\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\\n \\n\\tmargin-left: 24px;}\\np.description {\\n    margin-top: 10px;\\n    font-size: 19px;\\n\\tcolor: blue;}\\n input[type=text], select, textarea {\\n    margin: 0;\\n    padding-bottom: 23px;\\n\\t padding-right: 26px;}\\n .wpcf7 input[type=\\\"email\\\"], .wpcf7 input[type=\\\"tel\\\"] {\\n    direction: ltr;\\n    padding-bottom: 23px;\\n\\t padding-right: 26px;}\\ntextarea{\\n\\tpadding-right:26px;\\n}\\na.number {\\n    font-size: 15px;\\n\\tmargin-bottom: 12px;}\",\n        \"type\": \"custom_css\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-09-01 19:08:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3d0f7e0b-d004-4643-91f0-9c6f187fdb02', '', '', '2020-09-01 19:08:56', '2020-09-01 19:08:56', '', 0, 'http://localhost/post/2020/09/01/3d0f7e0b-d004-4643-91f0-9c6f187fdb02/', 0, 'customize_changeset', '', 0),
(94, 1, '2020-09-01 19:08:56', '2020-09-01 19:08:56', 'a {\n    color: black !important;\n    display: block !important;\n	font-size: 25px;\nfont-weight: 600;\n}\n.et_header_style_split #main-header .centered-inline-logo-wrap .logo_container, .et_header_style_split #main-header .centered-inline-logo-wrap a {\n \n	margin-left: 24px;}\np.description {\n    margin-top: 10px;\n    font-size: 19px;\n	color: blue;}\n input[type=text], select, textarea {\n    margin: 0;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\n .wpcf7 input[type=\"email\"], .wpcf7 input[type=\"tel\"] {\n    direction: ltr;\n    padding-bottom: 23px;\n	 padding-right: 26px;}\ntextarea{\n	padding-right:26px;\n}\na.number {\n    font-size: 15px;\n	margin-bottom: 12px;}', 'Divi-child', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2020-09-01 19:08:56', '2020-09-01 19:08:56', '', 60, 'http://localhost/post/2020/09/01/60-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Atif Aslam', 'atif-aslam', 0),
(3, 'Ali Zafar', 'ali-zafar', 0),
(4, 'Fateh Ali', 'fateh-ali', 0),
(5, 'post-format-audio', 'post-format-audio', 0),
(6, 'office_1', 'office_1', 0),
(7, 'office_2', 'office_2', 0),
(8, 'office_3', 'office_3', 0),
(9, 'office_1', 'office_1', 0),
(10, 'office_2', 'office_2', 0),
(11, 'office_3', 'office_3', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(32, 5, 0),
(35, 5, 0),
(50, 9, 0),
(65, 10, 0),
(66, 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'singers', '', 0, 0),
(3, 3, 'singers', '', 0, 0),
(4, 4, 'singers', '', 0, 0),
(5, 5, 'post_format', '', 0, 2),
(6, 6, 'office_1', '', 0, 0),
(7, 7, 'office_1', '', 0, 0),
(8, 8, 'office_1', '', 0, 0),
(9, 9, 'office_data', '', 0, 1),
(10, 10, 'office_data', '', 0, 1),
(11, 11, 'office_data', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:6:{s:64:\"45af08061ac6ea29e9d660ef37b76e28f8be626fb5c66b593eaf3224a828a741\";a:4:{s:10:\"expiration\";i:1599031273;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598858473;}s:64:\"cdac026a6c6f37416dc5a7268168707fe72b892da7adfcc2d2b25b761e1b9d95\";a:4:{s:10:\"expiration\";i:1599058612;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598885812;}s:64:\"38750fd3a1b2c86729776c4197b75e0e4184ce08ea268b6fd7d0a2e7fc1ace6a\";a:4:{s:10:\"expiration\";i:1599129414;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598956614;}s:64:\"340fbcb9760f67bcd80cada844778c17bb18d7a0929ddeac54943a7f4d40ac83\";a:4:{s:10:\"expiration\";i:1599130121;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598957321;}s:64:\"a3316451c42cdf428d0e3caf2293c8c31c4f59584967a7e21528e2ef0c7a626c\";a:4:{s:10:\"expiration\";i:1599145261;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598972461;}s:64:\"44122a6fe9a375bb5cf9fda6ddf1ed6d572b289da0ccce64e61bd7b906468ff9\";a:4:{s:10:\"expiration\";i:1599157049;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/84.0.4147.135 Safari/537.36\";s:5:\"login\";i:1598984249;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '45'),
(18, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(19, 1, 'wp_user-settings-time', '1598960355'),
(20, 1, 'closedpostboxes_sound', 'a:0:{}'),
(21, 1, 'metaboxhidden_sound', 'a:0:{}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BQ3mXW/.6Cmi77jg52IuoefdbfuWtf/', 'admin', 'farkhundahanif@gmail.com', 'http://localhost/post', '2020-08-13 15:27:00', '', 0, 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=414;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
