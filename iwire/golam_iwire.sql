-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2019 at 09:00 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `golam_iwire`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-08-06 11:08:46', '2018-08-06 11:08:46', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/iwire', 'yes'),
(2, 'home', 'http://localhost/iwire', 'yes'),
(3, 'blogname', 'i-wire', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'webgrity138@gmail.com', 'yes'),
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
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:13:\"allproduct/?$\";s:30:\"index.php?post_type=allproduct\";s:43:\"allproduct/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=allproduct&feed=$matches[1]\";s:38:\"allproduct/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=allproduct&feed=$matches[1]\";s:30:\"allproduct/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=allproduct&paged=$matches[1]\";s:14:\"certificate/?$\";s:31:\"index.php?post_type=certificate\";s:44:\"certificate/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=certificate&feed=$matches[1]\";s:39:\"certificate/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?post_type=certificate&feed=$matches[1]\";s:31:\"certificate/page/([0-9]{1,})/?$\";s:49:\"index.php?post_type=certificate&paged=$matches[1]\";s:13:\"pf_contact/?$\";s:30:\"index.php?post_type=pf_contact\";s:43:\"pf_contact/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=pf_contact&feed=$matches[1]\";s:38:\"pf_contact/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?post_type=pf_contact&feed=$matches[1]\";s:30:\"pf_contact/page/([0-9]{1,})/?$\";s:48:\"index.php?post_type=pf_contact&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:38:\"allproduct/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"allproduct/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"allproduct/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"allproduct/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"allproduct/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"allproduct/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"allproduct/([^/]+)/embed/?$\";s:43:\"index.php?allproduct=$matches[1]&embed=true\";s:31:\"allproduct/([^/]+)/trackback/?$\";s:37:\"index.php?allproduct=$matches[1]&tb=1\";s:51:\"allproduct/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?allproduct=$matches[1]&feed=$matches[2]\";s:46:\"allproduct/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?allproduct=$matches[1]&feed=$matches[2]\";s:39:\"allproduct/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?allproduct=$matches[1]&paged=$matches[2]\";s:46:\"allproduct/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?allproduct=$matches[1]&cpage=$matches[2]\";s:35:\"allproduct/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?allproduct=$matches[1]&page=$matches[2]\";s:27:\"allproduct/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"allproduct/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"allproduct/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"allproduct/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"allproduct/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"allproduct/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"certificate/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"certificate/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"certificate/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"certificate/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"certificate/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"certificate/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"certificate/([^/]+)/embed/?$\";s:44:\"index.php?certificate=$matches[1]&embed=true\";s:32:\"certificate/([^/]+)/trackback/?$\";s:38:\"index.php?certificate=$matches[1]&tb=1\";s:52:\"certificate/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?certificate=$matches[1]&feed=$matches[2]\";s:47:\"certificate/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?certificate=$matches[1]&feed=$matches[2]\";s:40:\"certificate/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?certificate=$matches[1]&paged=$matches[2]\";s:47:\"certificate/([^/]+)/comment-page-([0-9]{1,})/?$\";s:51:\"index.php?certificate=$matches[1]&cpage=$matches[2]\";s:36:\"certificate/([^/]+)(?:/([0-9]+))?/?$\";s:50:\"index.php?certificate=$matches[1]&page=$matches[2]\";s:28:\"certificate/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"certificate/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"certificate/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"certificate/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"certificate/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"certificate/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"pf_contact/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"pf_contact/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"pf_contact/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"pf_contact/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"pf_contact/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"pf_contact/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"pf_contact/([^/]+)/embed/?$\";s:43:\"index.php?pf_contact=$matches[1]&embed=true\";s:31:\"pf_contact/([^/]+)/trackback/?$\";s:37:\"index.php?pf_contact=$matches[1]&tb=1\";s:51:\"pf_contact/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pf_contact=$matches[1]&feed=$matches[2]\";s:46:\"pf_contact/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?pf_contact=$matches[1]&feed=$matches[2]\";s:39:\"pf_contact/([^/]+)/page/?([0-9]{1,})/?$\";s:50:\"index.php?pf_contact=$matches[1]&paged=$matches[2]\";s:46:\"pf_contact/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?pf_contact=$matches[1]&cpage=$matches[2]\";s:35:\"pf_contact/([^/]+)(?:/([0-9]+))?/?$\";s:49:\"index.php?pf_contact=$matches[1]&page=$matches[2]\";s:27:\"pf_contact/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"pf_contact/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"pf_contact/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"pf_contact/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"pf_contact/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"pf_contact/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=10&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:41:\"advanced-custom-fields-pro-master/acf.php\";i:1;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:2;s:29:\"pirate-forms/pirate-forms.php\";i:3;s:43:\"themeisle-companion/themeisle-companion.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:5:{i:0;s:61:\"D:\\wamp64\\www\\iwire/wp-content/themes/golam_wire/category.php\";i:1;s:58:\"D:\\wamp64\\www\\iwire/wp-content/themes/golam_wire/style.css\";i:2;s:59:\"D:\\wamp64\\www\\iwire/wp-content/themes/golam_wire/header.php\";i:3;s:61:\"D:\\wamp64\\www\\iwire/wp-content/themes/golam_wire/services.php\";i:4;s:0:\"\";}', 'no'),
(40, 'template', 'golam_wire', 'yes'),
(41, 'stylesheet', 'golam_wire', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '0', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '0', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '240', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '35', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:5:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:5:{i:1574669327;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1574680127;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1574680139;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1574684359;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533618868;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}s:18:\"nav_menu_locations\";a:1:{s:3:\"top\";i:2;}}', 'yes'),
(128, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:21:\"webgrity138@gmail.com\";s:7:\"version\";s:6:\"4.9.12\";s:9:\"timestamp\";i:1574668798;}', 'no'),
(132, 'current_theme', 'i-WIRE', 'yes'),
(133, 'theme_switched', '', 'yes'),
(134, 'theme_switched_via_customizer', '', 'yes'),
(131, 'theme_mods_golam', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533554604;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(858, '_site_transient_timeout_theme_roots', '1574670586', 'no'),
(859, '_site_transient_theme_roots', 'a:6:{s:10:\"golam_wire\";s:7:\"/themes\";s:6:\"hestia\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";s:14:\"twentythirteen\";s:7:\"/themes\";}', 'no'),
(130, 'can_compress_scripts', '1', 'no'),
(217, 'obfx_beta_show_safe-updates', 'no', 'yes'),
(218, 'obfx_beta_show_image-cdn', 'yes', 'yes'),
(219, 'recently_activated', 'a:0:{}', 'yes'),
(220, 'themeisle_companion_install', '1533625271', 'yes'),
(135, 'customize_stashed_theme_mods', 'a:0:{}', 'no'),
(573, 'cptui_new_install', 'false', 'yes'),
(574, 'cptui_taxonomies', 'a:0:{}', 'yes'),
(578, 'pirate_forms_logger_flag', 'no', 'yes'),
(579, 'cptui_post_types', 'a:2:{s:10:\"allproduct\";a:28:{s:4:\"name\";s:10:\"allproduct\";s:5:\"label\";s:10:\"allproduct\";s:14:\"singular_label\";s:10:\"allproduct\";s:11:\"description\";s:16:\"for all products\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:11:\"All Product\";s:14:\"featured_image\";s:14:\"Featured Image\";s:18:\"set_featured_image\";s:18:\"Set featured image\";s:18:\"use_featured_image\";s:21:\"Use as featured image\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}s:11:\"certificate\";a:28:{s:4:\"name\";s:11:\"certificate\";s:5:\"label\";s:11:\"Certificate\";s:14:\"singular_label\";s:11:\"Certificate\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:12:\"show_in_rest\";s:5:\"false\";s:9:\"rest_base\";s:0:\"\";s:11:\"has_archive\";s:4:\"true\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";s:0:\"\";s:8:\"supports\";a:5:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";i:4;s:15:\"page-attributes\";}s:10:\"taxonomies\";a:2:{i:0;s:8:\"category\";i:1;s:8:\"post_tag\";}s:6:\"labels\";a:23:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";}}', 'yes'),
(155, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(151, 'theme_mods_golam_wire', 'a:5:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535446355;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}s:11:\"custom_logo\";i:242;}', 'yes'),
(153, 'theme_mods_twentyfifteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533555508;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(862, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1574668796;s:7:\"checked\";a:6:{s:10:\"golam_wire\";s:0:\"\";s:6:\"hestia\";s:6:\"1.1.85\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";s:14:\"twentythirteen\";s:3:\"2.4\";}s:8:\"response\";a:5:{s:6:\"hestia\";a:6:{s:5:\"theme\";s:6:\"hestia\";s:11:\"new_version\";s:5:\"2.5.5\";s:3:\"url\";s:36:\"https://wordpress.org/themes/hestia/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/theme/hestia.2.5.5.zip\";s:8:\"requires\";s:3:\"4.0\";s:12:\"requires_php\";b:0;}s:13:\"twentyfifteen\";a:6:{s:5:\"theme\";s:13:\"twentyfifteen\";s:11:\"new_version\";s:3:\"2.5\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentyfifteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentyfifteen.2.5.zip\";s:8:\"requires\";s:3:\"4.1\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:15:\"twentyseventeen\";a:6:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"2.2\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.2.2.zip\";s:8:\"requires\";s:3:\"4.7\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:13:\"twentysixteen\";a:6:{s:5:\"theme\";s:13:\"twentysixteen\";s:11:\"new_version\";s:3:\"2.0\";s:3:\"url\";s:43:\"https://wordpress.org/themes/twentysixteen/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/theme/twentysixteen.2.0.zip\";s:8:\"requires\";s:3:\"4.4\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:14:\"twentythirteen\";a:6:{s:5:\"theme\";s:14:\"twentythirteen\";s:11:\"new_version\";s:3:\"2.9\";s:3:\"url\";s:44:\"https://wordpress.org/themes/twentythirteen/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/theme/twentythirteen.2.9.zip\";s:8:\"requires\";s:3:\"3.6\";s:12:\"requires_php\";s:5:\"5.2.4\";}}s:12:\"translations\";a:0:{}}', 'no'),
(863, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1574668799;s:7:\"checked\";a:6:{s:41:\"advanced-custom-fields-pro-master/acf.php\";s:5:\"5.7.0\";s:19:\"akismet/akismet.php\";s:5:\"4.0.3\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:5:\"1.5.8\";s:29:\"pirate-forms/pirate-forms.php\";s:5:\"2.4.4\";s:9:\"hello.php\";s:3:\"1.7\";s:43:\"themeisle-companion/themeisle-companion.php\";s:5:\"2.5.6\";}s:8:\"response\";a:5:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.3\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:29:\"pirate-forms/pirate-forms.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:26:\"w.org/plugins/pirate-forms\";s:4:\"slug\";s:12:\"pirate-forms\";s:6:\"plugin\";s:29:\"pirate-forms/pirate-forms.php\";s:11:\"new_version\";s:5:\"2.5.2\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/pirate-forms/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/pirate-forms.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/pirate-forms/assets/icon-128x128.png?rev=1635118\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/pirate-forms/assets/banner-772x250.png?rev=1635118\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:6:\"4.9.12\";s:12:\"requires_php\";s:5:\"5.2.4\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:9:\"hello.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.2.4\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:43:\"themeisle-companion/themeisle-companion.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/themeisle-companion\";s:4:\"slug\";s:19:\"themeisle-companion\";s:6:\"plugin\";s:43:\"themeisle-companion/themeisle-companion.php\";s:11:\"new_version\";s:6:\"2.8.13\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/themeisle-companion/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/themeisle-companion.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/themeisle-companion/assets/icon-128x128.png?rev=1807829\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/themeisle-companion/assets/banner-772x250.png?rev=1832347\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:41:\"advanced-custom-fields-pro-master/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=1069557\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=1069557\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=1069557\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=1069557\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";a:0:{}}}}', 'no'),
(388, 'themeisle_sdk_active_notification', 'a:2:{s:3:\"key\";s:41:\"pirate_formsThemeIsle_SDK_Feedback_Review\";s:4:\"time\";i:1535182350;}', 'yes'),
(179, '_transient_twentysixteen_categories', '1', 'yes'),
(178, 'theme_mods_ambia', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1533618859;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(188, 'theme_mods_hestia', 'a:23:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:35;s:26:\"hestia_page_sidebar_layout\";s:10:\"full-width\";s:27:\"hestia_enable_scroll_to_top\";b:1;s:21:\"hestia_general_layout\";b:0;s:23:\"hestia_header_titles_fs\";s:35:\"{\"desktop\":0,\"tablet\":0,\"mobile\":0}\";s:28:\"hestia_post_page_headings_fs\";d:-2;s:27:\"hestia_post_page_content_fs\";d:-17;s:19:\"hestia_big_title_fs\";d:10;s:34:\"hestia_section_primary_headings_fs\";d:6;s:25:\"hestia_section_content_fs\";d:-4;s:27:\"hestia_big_title_background\";s:60:\"http://localhost/iwire/wp-content/uploads/2018/08/banner.jpg\";s:19:\"hestia_top_bar_hide\";b:1;s:21:\"hestia_search_in_menu\";b:0;s:23:\"hestia_header_alignment\";s:4:\"left\";s:12:\"header_image\";s:21:\"random-uploaded-image\";s:28:\"hestia_header_image_sitewide\";b:0;s:20:\"hestia_header_layout\";s:7:\"default\";s:28:\"hestia_header_gradient_color\";s:7:\"#a81d84\";s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1535446433;s:4:\"data\";a:10:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}s:17:\"subscribe-widgets\";a:0:{}s:19:\"sidebar-woocommerce\";a:0:{}s:15:\"sidebar-top-bar\";a:0:{}s:14:\"header-sidebar\";a:0:{}s:17:\"sidebar-big-title\";a:0:{}s:18:\"footer-one-widgets\";a:0:{}s:18:\"footer-two-widgets\";a:0:{}s:20:\"footer-three-widgets\";a:0:{}}}s:13:\"show_on_front\";s:4:\"page\";}', 'yes'),
(189, 'hestia_install', '1533623474', 'yes'),
(192, 'hestia_time_activated', '1535446358', 'yes'),
(193, 'hestia_had_elementor', 'no', 'yes'),
(751, 'WPLANG', '', 'yes'),
(752, 'new_admin_email', 'webgrity138@gmail.com', 'yes'),
(355, 'acf_version', '5.7.0', 'yes'),
(856, '_transient_timeout_acf_plugin_updates', '1574841584', 'no'),
(857, '_transient_acf_plugin_updates', 'a:3:{s:7:\"plugins\";a:1:{s:41:\"advanced-custom-fields-pro-master/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:41:\"advanced-custom-fields-pro-master/acf.php\";s:11:\"new_version\";s:5:\"5.8.7\";s:3:\"url\";s:36:\"https://www.advancedcustomfields.com\";s:6:\"tested\";s:5:\"5.3.0\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:2:{s:3:\"low\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";s:4:\"high\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";}}}s:10:\"expiration\";i:172800;s:6:\"status\";i:1;}', 'no'),
(659, 'category_children', 'a:0:{}', 'yes'),
(228, 'widget_pirate_forms_contact_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(229, 'pirate_forms_install', '1533625641', 'yes'),
(232, 'pirate_forms_settings_array', 'a:40:{s:20:\"pirateformsopt_email\";s:21:\"webgrity138@gmail.com\";s:31:\"pirateformsopt_email_recipients\";s:21:\"webgrity138@gmail.com\";s:20:\"pirateformsopt_store\";s:2:\"no\";s:23:\"pirateformsopt_store_ip\";s:2:\"no\";s:20:\"pirateformsopt_nonce\";s:3:\"yes\";s:28:\"pirateformsopt_confirm_email\";s:0:\"\";s:25:\"pirateformsopt_copy_email\";s:0:\"\";s:30:\"pirateformsopt_save_attachment\";s:0:\"\";s:28:\"pirateformsopt_thank_you_url\";s:0:\"\";s:22:\"pirateformsopt_akismet\";s:0:\"\";s:25:\"pirateformsopt_name_field\";s:3:\"req\";s:26:\"pirateformsopt_email_field\";s:3:\"req\";s:28:\"pirateformsopt_subject_field\";s:3:\"req\";s:28:\"pirateformsopt_message_field\";s:3:\"req\";s:31:\"pirateformsopt_attachment_field\";s:0:\"\";s:29:\"pirateformsopt_checkbox_field\";s:0:\"\";s:30:\"pirateformsopt_recaptcha_field\";s:0:\"\";s:32:\"pirateformsopt_recaptcha_sitekey\";s:0:\"\";s:34:\"pirateformsopt_recaptcha_secretkey\";s:0:\"\";s:25:\"pirateformsopt_label_name\";s:9:\"Your Name\";s:26:\"pirateformsopt_label_email\";s:10:\"Your Email\";s:28:\"pirateformsopt_label_subject\";s:7:\"Subject\";s:28:\"pirateformsopt_label_message\";s:12:\"Your message\";s:31:\"pirateformsopt_label_submit_btn\";s:12:\"Send Message\";s:29:\"pirateformsopt_label_checkbox\";s:0:\"\";s:28:\"pirateformsopt_email_content\";s:468:\"<h2>Contact form submission from i-wire (http://localhost/iwire)</h2><table><tr><th>Name:</th><td>{name}</td></tr><tr><th>Email:</th><td>{email}</td></tr><tr><th>Subject:</th><td>{subject}</td></tr><tr><th>Message:</th><td>{message}</td></tr><tr><th>Checkbox:</th><td>{checkbox}</td></tr><tr><th>IP search:</th><td>http://whatismyipaddress.com/ip/{ip}</td></tr><tr><th>Came from:</th><td>{referer}</td></tr><tr><th>Sent from page:</th><td>{permalink}</td></tr></table>\";s:29:\"pirateformsopt_label_err_name\";s:15:\"Enter your name\";s:30:\"pirateformsopt_label_err_email\";s:17:\"Enter valid email\";s:32:\"pirateformsopt_label_err_subject\";s:22:\"Please enter a subject\";s:35:\"pirateformsopt_label_err_no_content\";s:30:\"Enter your question or comment\";s:38:\"pirateformsopt_label_err_no_attachment\";s:24:\"Please add an attachment\";s:36:\"pirateformsopt_label_err_no_checkbox\";s:26:\"Please select the checkbox\";s:27:\"pirateformsopt_label_submit\";s:41:\"Thanks, your email was sent successfully!\";s:23:\"pirateformsopt_use_smtp\";s:0:\"\";s:24:\"pirateformsopt_smtp_host\";s:0:\"\";s:24:\"pirateformsopt_smtp_port\";s:0:\"\";s:38:\"pirateformsopt_use_smtp_authentication\";s:3:\"yes\";s:25:\"pirateformsopt_use_secure\";s:0:\"\";s:28:\"pirateformsopt_smtp_username\";s:0:\"\";s:28:\"pirateformsopt_smtp_password\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(861, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:5:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-5.3.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-5.3-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:3:\"5.3\";s:7:\"version\";s:3:\"5.3\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:3;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.1.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.1.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.1.3-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.1.3\";s:7:\"version\";s:5:\"5.1.3\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}i:4;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.7.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.0.7.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.0.7-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.0.7-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.0.7\";s:7:\"version\";s:5:\"5.0.7\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";s:9:\"new_files\";s:1:\"1\";}}s:12:\"last_checked\";i:1574668795;s:15:\"version_checked\";s:6:\"4.9.12\";s:12:\"translations\";a:0:{}}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` varchar(2000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'products.php'),
(5, 6, '_menu_item_type', 'post_type'),
(6, 6, '_menu_item_menu_item_parent', '0'),
(7, 6, '_menu_item_object_id', '2'),
(8, 6, '_menu_item_object', 'page'),
(9, 6, '_menu_item_target', ''),
(10, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(11, 6, '_menu_item_xfn', ''),
(12, 6, '_menu_item_url', ''),
(14, 7, '_menu_item_type', 'custom'),
(15, 7, '_menu_item_menu_item_parent', '0'),
(16, 7, '_menu_item_object_id', '7'),
(17, 7, '_menu_item_object', 'custom'),
(18, 7, '_menu_item_target', ''),
(19, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(20, 7, '_menu_item_xfn', ''),
(21, 7, '_menu_item_url', 'http://localhost/iwire'),
(23, 8, '_menu_item_type', 'post_type'),
(24, 8, '_menu_item_menu_item_parent', '0'),
(25, 8, '_menu_item_object_id', '2'),
(26, 8, '_menu_item_object', 'page'),
(27, 8, '_menu_item_target', ''),
(28, 8, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(29, 8, '_menu_item_xfn', ''),
(30, 8, '_menu_item_url', ''),
(31, 8, '_menu_item_orphaned', '1533557068'),
(34, 10, '_edit_last', '1'),
(35, 10, '_edit_lock', '1550125265:1'),
(93, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:72;s:4:\"file\";s:16:\"2018/08/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"logo-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(92, 35, '_wp_attached_file', '2018/08/logo.png'),
(45, 2, '_edit_lock', '1533648465:1'),
(46, 2, '_edit_last', '1'),
(47, 17, '_edit_last', '1'),
(48, 17, '_edit_lock', '1533635909:1'),
(49, 19, '_edit_last', '1'),
(50, 19, '_edit_lock', '1533636784:1'),
(51, 22, '_edit_last', '1'),
(52, 22, '_edit_lock', '1533620001:1'),
(53, 24, '_menu_item_type', 'post_type'),
(54, 24, '_menu_item_menu_item_parent', '0'),
(55, 24, '_menu_item_object_id', '22'),
(56, 24, '_menu_item_object', 'page'),
(57, 24, '_menu_item_target', ''),
(58, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 24, '_menu_item_xfn', ''),
(60, 24, '_menu_item_url', ''),
(62, 25, '_menu_item_type', 'post_type'),
(63, 25, '_menu_item_menu_item_parent', '0'),
(64, 25, '_menu_item_object_id', '19'),
(65, 25, '_menu_item_object', 'page'),
(66, 25, '_menu_item_target', ''),
(67, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 25, '_menu_item_xfn', ''),
(69, 25, '_menu_item_url', ''),
(71, 26, '_menu_item_type', 'post_type'),
(72, 26, '_menu_item_menu_item_parent', '0'),
(73, 26, '_menu_item_object_id', '17'),
(74, 26, '_menu_item_object', 'page'),
(75, 26, '_menu_item_target', ''),
(76, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 26, '_menu_item_xfn', ''),
(78, 26, '_menu_item_url', ''),
(80, 27, '_menu_item_type', 'post_type'),
(81, 27, '_menu_item_menu_item_parent', '0'),
(82, 27, '_menu_item_object_id', '2'),
(83, 27, '_menu_item_object', 'page'),
(84, 27, '_menu_item_target', ''),
(85, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(86, 27, '_menu_item_xfn', ''),
(87, 27, '_menu_item_url', ''),
(88, 27, '_menu_item_orphaned', '1533619376'),
(178, 84, '_wp_page_template', 'products-details.php'),
(177, 84, '_edit_lock', '1535178567:1'),
(176, 84, '_edit_last', '1'),
(111, 44, '_wp_attached_file', '2018/08/banner.jpg'),
(112, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1366;s:6:\"height\";i:664;s:4:\"file\";s:18:\"2018/08/banner.jpg\";s:5:\"sizes\";a:5:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"banner-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"banner-300x146.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:146;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"banner-768x373.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:373;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:19:\"banner-1024x498.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:498;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"hestia-blog\";a:4:{s:4:\"file\";s:18:\"banner-360x240.jpg\";s:5:\"width\";i:360;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(118, 44, '_wp_attachment_custom_header_last_used_hestia', '1533628308'),
(119, 44, '_wp_attachment_is_custom_header', 'hestia'),
(128, 19, '_wp_page_template', 'certification.php'),
(124, 17, '_wp_page_template', 'services.php'),
(125, 50, '_wp_attached_file', '2018/08/service1.jpg'),
(126, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:610;s:6:\"height\";i:330;s:4:\"file\";s:20:\"2018/08/service1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"service1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"service1-300x162.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:162;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(127, 10, '_wp_page_template', 'index.php'),
(129, 57, '_edit_last', '1'),
(130, 57, '_wp_page_template', 'get-in-touch.php'),
(131, 57, '_edit_lock', '1535432794:1'),
(132, 7, 'obfx_menu_icon', ''),
(133, 6, 'obfx_menu_icon', ''),
(134, 26, 'obfx_menu_icon', ''),
(135, 25, 'obfx_menu_icon', ''),
(136, 24, 'obfx_menu_icon', ''),
(137, 60, '_edit_last', '1'),
(138, 60, '_edit_lock', '1535177410:1'),
(141, 62, '_edit_last', '1'),
(142, 62, '_edit_lock', '1535539382:1'),
(148, 62, '_thumbnail_id', '68'),
(150, 68, '_wp_attached_file', '2018/08/product2.jpg'),
(151, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(153, 69, '_wp_attached_file', '2018/08/product1.jpg'),
(154, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(155, 60, '_thumbnail_id', '69'),
(158, 1, '_edit_lock', '1535186010:1'),
(159, 71, '_wp_attached_file', '2018/08/product3.jpg'),
(160, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(161, 1, '_edit_last', '1'),
(162, 1, '_thumbnail_id', '71'),
(164, 73, '_edit_last', '1'),
(165, 73, '_edit_lock', '1535188641:1'),
(166, 74, '_wp_attached_file', '2018/08/product4.jpg'),
(167, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(168, 73, '_thumbnail_id', '74'),
(194, 73, 'demo', ''),
(185, 62, 'demo', ''),
(186, 62, '_demo', 'field_5b6d55ae46442'),
(187, 67, 'demo', ''),
(188, 67, '_demo', 'field_5b6d55ae46442'),
(195, 73, '_demo', 'field_5b6d55ae46442'),
(196, 75, 'demo', ''),
(197, 75, '_demo', 'field_5b6d55ae46442'),
(209, 91, '_edit_last', '1'),
(210, 91, '_edit_lock', '1535186577:1'),
(217, 98, '_edit_last', '1'),
(218, 98, '_edit_lock', '1535607801:1'),
(219, 102, '_edit_last', '1'),
(220, 102, '_edit_lock', '1534843421:1'),
(221, 106, '_edit_last', '1'),
(222, 106, '_edit_lock', '1534843747:1'),
(223, 111, '_edit_last', '1'),
(224, 111, '_edit_lock', '1534843865:1'),
(225, 114, '_edit_last', '1'),
(226, 114, '_edit_lock', '1534843915:1'),
(227, 117, '_edit_last', '1'),
(228, 117, '_edit_lock', '1534843964:1'),
(229, 120, '_edit_last', '1'),
(230, 120, '_edit_lock', '1534844060:1'),
(231, 123, '_edit_last', '1'),
(232, 123, '_edit_lock', '1534846200:1'),
(233, 126, '_wp_attached_file', '2018/08/table1.jpg'),
(234, 126, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:791;s:6:\"height\";i:566;s:4:\"file\";s:18:\"2018/08/table1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"table1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"table1-300x215.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:215;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"table1-768x550.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:550;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(236, 62, 'conductor', 'Flexible wires with fine stranded copper conductor, CLASS  5 EN 60228, IEC 60228'),
(237, 62, '_conductor', 'field_5b7bd6926a480'),
(238, 62, 'insulation', 'Flame retardant according to IEC 60332-1-2'),
(239, 62, '_insulation', 'field_5b7bd793c2bec'),
(240, 62, 'upload_pdf', ''),
(241, 62, '_upload_pdf', 'field_5b7bd87ff2d7e'),
(242, 62, 'application', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(243, 62, '_application', 'field_5b7bd9cb79683'),
(244, 62, 'voltage_rating', 'H05V-K : 300/500V'),
(245, 62, '_voltage_rating', 'field_5b7bdae23eaf1'),
(246, 62, '_', 'field_5b7bdd5dfc929'),
(247, 67, 'conductor', 'Flexible wires with fine stranded copper conductor, CLASS  5 EN 60228, IEC 60228'),
(248, 67, '_conductor', 'field_5b7bd6926a480'),
(249, 67, 'insulation', 'Flame retardant according to IEC 60332-1-2'),
(250, 67, '_insulation', 'field_5b7bd793c2bec'),
(251, 67, 'upload_pdf', ''),
(252, 67, '_upload_pdf', 'field_5b7bd87ff2d7e'),
(253, 67, 'application', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(254, 67, '_application', 'field_5b7bd9cb79683'),
(255, 67, 'voltage_rating', 'H05V-K : 300/500V'),
(256, 67, '_voltage_rating', 'field_5b7bdae23eaf1'),
(263, 136, '_edit_last', '1'),
(264, 136, '_edit_lock', '1535181211:1'),
(276, 142, '_edit_last', '1'),
(277, 142, '_edit_lock', '1535186404:1'),
(278, 146, '_edit_last', '1'),
(279, 146, '_edit_lock', '1535182559:1'),
(280, 154, '_edit_last', '1'),
(281, 154, '_edit_lock', '1535182901:1'),
(282, 157, '_edit_last', '1'),
(283, 157, '_edit_lock', '1535183249:1'),
(284, 163, '_edit_last', '1'),
(285, 163, '_edit_lock', '1535183340:1'),
(286, 166, '_edit_last', '1'),
(287, 166, '_edit_lock', '1535183397:1'),
(288, 169, '_edit_last', '1'),
(289, 169, '_edit_lock', '1535183484:1'),
(290, 172, '_edit_last', '1'),
(291, 172, '_edit_lock', '1535183556:1'),
(292, 175, '_edit_last', '1'),
(293, 175, '_edit_lock', '1535183613:1'),
(294, 178, '_edit_last', '1'),
(295, 178, '_edit_lock', '1535183696:1'),
(296, 180, '_edit_last', '1'),
(297, 180, '_edit_lock', '1535540257:1'),
(298, 180, 'CONDUCTOR', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228'),
(299, 180, '_CONDUCTOR', 'field_5b8106d50f6be'),
(300, 180, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(301, 180, '_INSULATION', 'field_5b81084c279d2'),
(302, 180, 'INSULATION COLOR', 'Black, Blue, Brown, Dark Blue, Green/Yellow, Grey, Red, White, Yellow'),
(303, 180, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(304, 180, 'APPLICATION', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(305, 180, '_APPLICATION', 'field_5b810a2827ba1'),
(306, 180, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(307, 180, '_VOLTAGE RATING', 'field_5b810a810d466'),
(308, 180, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(309, 180, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(310, 180, 'OPERATING TEMPERATURE', '70°C'),
(311, 180, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(312, 180, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(313, 180, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(314, 180, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(315, 180, '_STANDARDS', 'field_5b810b940a75c'),
(316, 180, '_thumbnail_id', '68'),
(317, 181, '_edit_last', '1'),
(318, 181, '_edit_lock', '1535610190:1'),
(319, 187, '_edit_last', '1'),
(320, 187, '_edit_lock', '1535540264:1'),
(321, 187, 'CONDUCTOR', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228'),
(322, 187, '_CONDUCTOR', 'field_5b8106d50f6be'),
(323, 187, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(324, 187, '_INSULATION', 'field_5b81084c279d2'),
(325, 187, 'INSULATION COLOR', 'Black, Blue, Brown, Dark Blue, Green/Yellow, Grey, Red, White, Yellow'),
(326, 187, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(327, 187, 'APPLICATION', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(328, 187, '_APPLICATION', 'field_5b810a2827ba1'),
(329, 187, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(330, 187, '_VOLTAGE RATING', 'field_5b810a810d466'),
(331, 187, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(332, 187, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(333, 187, 'OPERATING TEMPERATURE', '70°C'),
(334, 187, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(335, 187, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(336, 187, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(337, 187, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(338, 187, '_STANDARDS', 'field_5b810b940a75c'),
(339, 187, 'UPLOAD  FILE', ''),
(340, 187, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(341, 187, '_thumbnail_id', '68'),
(342, 188, '_edit_last', '1'),
(343, 188, '_edit_lock', '1535540276:1'),
(344, 188, '_thumbnail_id', '69'),
(345, 188, 'CONDUCTOR', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228'),
(346, 188, '_CONDUCTOR', 'field_5b8106d50f6be'),
(347, 188, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(348, 188, '_INSULATION', 'field_5b81084c279d2'),
(349, 188, 'INSULATION COLOR', 'Black, Blue, Brown'),
(350, 188, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(351, 188, 'APPLICATION', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(352, 188, '_APPLICATION', 'field_5b810a2827ba1'),
(353, 188, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(354, 188, '_VOLTAGE RATING', 'field_5b810a810d466'),
(355, 188, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(356, 188, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(357, 188, 'OPERATING TEMPERATURE', '70°C'),
(358, 188, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(359, 188, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(360, 188, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(361, 188, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(362, 188, '_STANDARDS', 'field_5b810b940a75c'),
(363, 188, 'UPLOAD  FILE', ''),
(364, 188, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(365, 189, '_edit_last', '1'),
(366, 189, '_edit_lock', '1535540270:1'),
(367, 189, '_thumbnail_id', '74'),
(368, 189, 'CONDUCTOR', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228'),
(369, 189, '_CONDUCTOR', 'field_5b8106d50f6be'),
(370, 189, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(371, 189, '_INSULATION', 'field_5b81084c279d2'),
(372, 189, 'INSULATION COLOR', 'Black, Blue, Brown'),
(373, 189, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(374, 189, 'APPLICATION', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(375, 189, '_APPLICATION', 'field_5b810a2827ba1'),
(376, 189, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(377, 189, '_VOLTAGE RATING', 'field_5b810a810d466'),
(378, 189, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(379, 189, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(380, 189, 'OPERATING TEMPERATURE', '70°C'),
(381, 189, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(382, 189, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(383, 189, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(384, 189, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(385, 189, '_STANDARDS', 'field_5b810b940a75c'),
(386, 189, 'UPLOAD  FILE', ''),
(387, 189, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(388, 190, '_edit_last', '1'),
(389, 190, '_edit_lock', '1535621110:1'),
(390, 191, '_wp_attached_file', '2018/08/product5.jpg'),
(391, 191, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(392, 190, '_thumbnail_id', '191'),
(393, 190, 'CONDUCTOR', 'marine cable webgrity'),
(394, 190, '_CONDUCTOR', 'field_5b8106d50f6be'),
(395, 190, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(396, 190, '_INSULATION', 'field_5b81084c279d2'),
(397, 190, 'INSULATION COLOR', 'Black, Blue, Brown'),
(398, 190, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(399, 190, 'APPLICATION', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(400, 190, '_APPLICATION', 'field_5b810a2827ba1'),
(401, 190, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(402, 190, '_VOLTAGE RATING', 'field_5b810a810d466'),
(403, 190, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(404, 190, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(405, 190, 'OPERATING TEMPERATURE', '70°C'),
(406, 190, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(407, 190, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(408, 190, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(409, 190, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(410, 190, '_STANDARDS', 'field_5b810b940a75c'),
(411, 190, 'UPLOAD  FILE', '261'),
(412, 190, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(413, 192, '_edit_last', '1'),
(414, 192, '_edit_lock', '1535539525:1'),
(415, 192, '_thumbnail_id', '71'),
(416, 192, 'CONDUCTOR', 'marine cable webgrity'),
(417, 192, '_CONDUCTOR', 'field_5b8106d50f6be'),
(418, 192, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(419, 192, '_INSULATION', 'field_5b81084c279d2'),
(420, 192, 'INSULATION COLOR', 'Black, Blue, Brown, Dark Blue, Green/Yellow, Grey, Red, White, Yellow'),
(421, 192, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(422, 192, 'APPLICATION', 'Used in control panels and electrical equipments, on and under plaster as laid in conduit.'),
(423, 192, '_APPLICATION', 'field_5b810a2827ba1'),
(424, 192, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(425, 192, '_VOLTAGE RATING', 'field_5b810a810d466'),
(426, 192, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(427, 192, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(428, 192, 'OPERATING TEMPERATURE', '70°C'),
(429, 192, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(430, 192, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(431, 192, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(432, 192, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(433, 192, '_STANDARDS', 'field_5b810b940a75c'),
(434, 192, 'UPLOAD  FILE', ''),
(435, 192, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(436, 193, '_edit_last', '1'),
(437, 193, '_edit_lock', '1535620924:1'),
(438, 194, '_wp_attached_file', '2018/08/product7.jpg'),
(439, 194, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product7.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product7-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 195, '_wp_attached_file', '2018/08/product9.jpg'),
(441, 195, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product9.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 196, '_wp_attached_file', '2018/08/product8.jpg'),
(443, 196, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:270;s:6:\"height\";i:220;s:4:\"file\";s:20:\"2018/08/product8.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"product8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(444, 193, '_thumbnail_id', '194'),
(445, 193, 'CONDUCTOR', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228'),
(446, 193, '_CONDUCTOR', 'field_5b8106d50f6be'),
(447, 193, 'INSULATION', 'Flame retardant according to IEC 60332-1-2'),
(448, 193, '_INSULATION', 'field_5b81084c279d2'),
(449, 193, 'INSULATION COLOR', 'Black, Blue, Brown'),
(450, 193, '_INSULATION COLOR', 'field_5b8108ca4ba30'),
(451, 193, 'APPLICATION', 'this is others product , other product'),
(452, 193, '_APPLICATION', 'field_5b810a2827ba1'),
(453, 193, 'VOLTAGE RATING', 'H05V-K : 300/500V'),
(454, 193, '_VOLTAGE RATING', 'field_5b810a810d466'),
(455, 193, 'TEST VOLTAGE', 'H05V-K : 1500V'),
(456, 193, '_TEST VOLTAGE', 'field_5b810abf7038b'),
(457, 193, 'OPERATING TEMPERATURE', '70°C'),
(458, 193, '_OPERATING TEMPERATURE', 'field_5b810b146b572'),
(459, 193, 'SHORT CIRCUIT TEMPERATURE', '160°C (max. 5 sn.)'),
(460, 193, '_SHORT CIRCUIT TEMPERATURE', 'field_5b810b5c8b6c9'),
(461, 193, 'STANDARDS', 'TS 9758, VDE 0281, IEC 60227, BS 6004, HD 21.3 S3'),
(462, 193, '_STANDARDS', 'field_5b810b940a75c'),
(463, 193, 'UPLOAD  FILE', '261'),
(464, 193, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(465, 197, '_edit_last', '1'),
(466, 197, '_edit_lock', '1535347867:1'),
(467, 199, '_wp_attached_file', '2018/08/image1.jpg'),
(468, 199, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:224;s:4:\"file\";s:18:\"2018/08/image1.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image1-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(469, 192, 'Other Image', '199'),
(470, 192, '_Other Image', 'field_5b838cd2c8cc4'),
(471, 200, '_wp_attached_file', '2018/08/image2.jpg'),
(472, 200, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:224;s:4:\"file\";s:18:\"2018/08/image2.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image2-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(473, 201, '_wp_attached_file', '2018/08/image3.jpg'),
(474, 201, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:224;s:4:\"file\";s:18:\"2018/08/image3.jpg\";s:5:\"sizes\";a:2:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"image3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"image3-300x187.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:187;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(475, 193, 'Other Image', '200'),
(476, 193, '_Other Image', 'field_5b838cd2c8cc4'),
(477, 190, 'Other Image', '201'),
(478, 190, '_Other Image', 'field_5b838cd2c8cc4'),
(479, 189, 'Other Image', '199'),
(480, 189, '_Other Image', 'field_5b838cd2c8cc4'),
(481, 188, 'Other Image', '200'),
(482, 188, '_Other Image', 'field_5b838cd2c8cc4'),
(483, 187, 'Other Image', '201'),
(484, 187, '_Other Image', 'field_5b838cd2c8cc4'),
(485, 180, 'Other Image', '200'),
(486, 180, '_Other Image', 'field_5b838cd2c8cc4'),
(487, 180, 'UPLOAD  FILE', ''),
(488, 180, '_UPLOAD  FILE', 'field_5b8114f6292fc'),
(489, 205, '_edit_last', '1'),
(490, 205, '_edit_lock', '1535437758:1'),
(491, 216, '_edit_last', '1'),
(492, 216, '_edit_lock', '1535441564:1'),
(493, 217, '_wp_attached_file', '2018/08/certi1.jpg'),
(494, 217, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi1.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 218, '_wp_attached_file', '2018/08/certi2.jpg'),
(496, 218, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi2.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(497, 219, '_wp_attached_file', '2018/08/certi3.jpg'),
(498, 219, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi3.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(499, 220, '_wp_attached_file', '2018/08/certi4.jpg'),
(500, 220, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi4.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(501, 216, 'Image 1', '217'),
(502, 216, '_Image 1', 'field_5b84e50a7411f'),
(503, 216, 'Image 2', '218'),
(504, 216, '_Image 2', 'field_5b84ebd915e86'),
(505, 216, 'Image 3', '219'),
(506, 216, '_Image 3', 'field_5b84ec8b560ab'),
(507, 216, 'Image 4', '220'),
(508, 216, '_Image 4', 'field_5b84ecad055ae'),
(509, 221, '_edit_last', '1'),
(510, 221, '_edit_lock', '1535437811:1'),
(511, 223, '_edit_last', '1'),
(512, 223, '_edit_lock', '1535437843:1'),
(513, 225, '_edit_last', '1'),
(514, 225, '_edit_lock', '1535438167:1'),
(515, 227, '_edit_last', '1'),
(516, 227, '_edit_lock', '1535441487:1'),
(517, 227, 'Image 1', '231'),
(518, 227, '_Image 1', 'field_5b84e50a7411f'),
(519, 227, 'Image 2', ''),
(520, 227, '_Image 2', 'field_5b84ebd915e86'),
(521, 227, 'Image 3', '230'),
(522, 227, '_Image 3', 'field_5b84ec8b560ab'),
(523, 227, 'Image 4', ''),
(524, 227, '_Image 4', 'field_5b84ecad055ae'),
(525, 229, '_wp_attached_file', '2018/08/certi5.jpg'),
(526, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi5.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(527, 230, '_wp_attached_file', '2018/08/certi6.jpg'),
(528, 230, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi6.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(529, 231, '_wp_attached_file', '2018/08/certi8.jpg'),
(530, 231, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi8.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi8-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(531, 232, '_wp_attached_file', '2018/08/certi9.jpg'),
(532, 232, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:240;s:6:\"height\";i:261;s:4:\"file\";s:18:\"2018/08/certi9.jpg\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"certi9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(533, 236, '_edit_last', '1'),
(534, 236, '_edit_lock', '1535441561:1'),
(535, 236, 'Image 1', '232'),
(536, 236, '_Image 1', 'field_5b84e50a7411f'),
(537, 236, 'Image 2', ''),
(538, 236, '_Image 2', 'field_5b84ebd915e86'),
(539, 236, 'Image 3', '229'),
(540, 236, '_Image 3', 'field_5b84ec8b560ab'),
(541, 236, 'Image 4', ''),
(542, 236, '_Image 4', 'field_5b84ecad055ae'),
(543, 237, '_wp_attached_file', '2018/08/logo-1.png'),
(544, 237, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:72;s:4:\"file\";s:18:\"2018/08/logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(549, 242, '_wp_attached_file', '2018/08/logo-1.png'),
(550, 242, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:194;s:6:\"height\";i:72;s:4:\"file\";s:18:\"2018/08/logo-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"logo-1-150x72.png\";s:5:\"width\";i:150;s:6:\"height\";i:72;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(556, 249, '_edit_last', '1'),
(553, 239, '_edit_lock', '1535461125:1'),
(554, 239, '_edit_last', '1'),
(555, 239, '_wp_page_template', 'index.php'),
(557, 249, '_edit_lock', '1535462603:1'),
(558, 239, 'slider_0_', '44'),
(559, 239, '_slider_0_', 'field_5b852ca8410a7'),
(560, 239, 'slider_1_', '44'),
(561, 239, '_slider_1_', 'field_5b852ca8410a7'),
(562, 239, 'slider', '4'),
(563, 239, '_slider', 'field_5b852a8a20da9'),
(564, 247, 'slider_0_', '44'),
(565, 247, '_slider_0_', 'field_5b852ca8410a7'),
(566, 247, 'slider_1_', '44'),
(567, 247, '_slider_1_', 'field_5b852ca8410a7'),
(568, 247, 'slider', '4'),
(569, 247, '_slider', 'field_5b852a8a20da9'),
(570, 239, 'slider_0_slider', '44'),
(571, 239, '_slider_0_slider', 'field_5b852ca8410a7'),
(572, 239, 'slider_1_slider', '44'),
(573, 239, '_slider_1_slider', 'field_5b852ca8410a7'),
(574, 247, 'slider_0_slider', '44'),
(575, 247, '_slider_0_slider', 'field_5b852ca8410a7'),
(576, 247, 'slider_1_slider', '44'),
(577, 247, '_slider_1_slider', 'field_5b852ca8410a7'),
(578, 239, 'slider_2_slider', '44'),
(579, 239, '_slider_2_slider', 'field_5b852ca8410a7'),
(580, 239, 'slider_3_slider', '44'),
(581, 239, '_slider_3_slider', 'field_5b852ca8410a7'),
(582, 247, 'slider_2_slider', '44'),
(583, 247, '_slider_2_slider', 'field_5b852ca8410a7'),
(584, 247, 'slider_3_slider', '44'),
(585, 247, '_slider_3_slider', 'field_5b852ca8410a7'),
(588, 254, '_edit_last', '1'),
(589, 254, '_edit_lock', '1535609270:1'),
(590, 254, '_wp_page_template', 'product_type.php'),
(591, 259, '_edit_last', '1'),
(592, 259, '_edit_lock', '1535607629:1'),
(593, 261, '_wp_attached_file', '2018/08/php_tutorial.pdf'),
(594, 193, 'Product Details Image', '126'),
(595, 193, '_Product Details Image', 'field_5b8780d4f2225'),
(596, 190, 'Product Details Image', '126'),
(597, 190, '_Product Details Image', 'field_5b8780d4f2225');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-08-06 11:08:46', '2018-08-06 11:08:46', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'Flexible Power Cable', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-08-21 05:39:35', '2018-08-21 05:39:35', '', 0, 'http://localhost/iwire/?p=1', 0, 'post', '', 1),
(2, 1, '2018-08-06 11:08:46', '2018-08-06 11:08:46', '', 'products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2018-08-07 11:32:41', '2018-08-07 11:32:41', '', 0, 'http://localhost/iwire/?page_id=2', 1, 'page', '', 0),
(16, 1, '2018-08-07 05:19:51', '2018-08-07 05:19:51', '', 'products', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-07 05:19:51', '2018-08-07 05:19:51', '', 2, 'http://localhost/iwire/2018/08/07/2-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-08-07 05:20:16', '2018-08-07 05:20:16', '', 'services', '', 'publish', 'closed', 'closed', '', 'services', '', '', '2018-08-07 09:26:57', '2018-08-07 09:26:57', '', 0, 'http://localhost/iwire/?page_id=17', 2, 'page', '', 0),
(18, 1, '2018-08-07 05:20:16', '2018-08-07 05:20:16', '', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 05:20:16', '2018-08-07 05:20:16', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-08-07 05:20:38', '2018-08-07 05:20:38', '', 'certifications', '', 'publish', 'closed', 'closed', '', 'certification', '', '', '2018-08-07 10:09:41', '2018-08-07 10:09:41', '', 0, 'http://localhost/iwire/?page_id=19', 3, 'page', '', 0),
(20, 1, '2018-08-07 05:20:38', '2018-08-07 05:20:38', '', 'certification', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-08-07 05:20:38', '2018-08-07 05:20:38', '', 19, 'http://localhost/iwire/2018/08/07/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2018-08-07 05:21:03', '2018-08-07 05:21:03', '', 'certifications', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2018-08-07 05:21:03', '2018-08-07 05:21:03', '', 19, 'http://localhost/iwire/2018/08/07/19-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-08-06 12:03:57', '2018-08-06 12:03:57', ' ', '', '', 'publish', 'closed', 'closed', '', '6', '', '', '2018-08-30 09:24:20', '2018-08-30 09:24:20', '', 0, 'http://localhost/iwire/?p=6', 2, 'nav_menu_item', '', 0),
(7, 1, '2018-08-06 12:04:45', '2018-08-06 12:04:45', '', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-30 09:24:20', '2018-08-30 09:24:20', '', 0, 'http://localhost/iwire/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2018-08-06 12:04:28', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-06 12:04:28', '0000-00-00 00:00:00', '', 0, 'http://localhost/iwire/?p=8', 1, 'nav_menu_item', '', 0),
(10, 1, '2018-08-06 12:19:32', '2018-08-06 12:19:32', '', 'home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2018-08-28 09:25:02', '2018-08-28 09:25:02', '', 0, 'http://localhost/iwire/?page_id=10', 0, 'page', '', 0),
(11, 1, '2018-08-06 12:19:32', '2018-08-06 12:19:32', '', 'about', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-08-06 12:19:32', '2018-08-06 12:19:32', '', 10, 'http://localhost/iwire/2018/08/06/10-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-08-07 05:17:05', '2018-08-07 05:17:05', '', 'home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-08-07 05:17:05', '2018-08-07 05:17:05', '', 10, 'http://localhost/iwire/2018/08/07/10-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2018-08-06 13:20:22', '2018-08-06 13:20:22', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/iwire/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-08-06 13:20:22', '2018-08-06 13:20:22', '', 2, 'http://localhost/iwire/2018/08/06/2-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2018-08-07 05:21:54', '2018-08-07 05:21:54', '', 'customer feedback', '', 'publish', 'closed', 'closed', '', 'customer-feedback', '', '', '2018-08-07 05:33:21', '2018-08-07 05:33:21', '', 0, 'http://localhost/iwire/?page_id=22', 4, 'page', '', 0),
(23, 1, '2018-08-07 05:21:54', '2018-08-07 05:21:54', '', 'customer feedback', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2018-08-07 05:21:54', '2018-08-07 05:21:54', '', 22, 'http://localhost/iwire/2018/08/07/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2018-08-07 05:23:58', '2018-08-07 05:23:58', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-08-30 09:24:20', '2018-08-30 09:24:20', '', 0, 'http://localhost/iwire/?p=24', 5, 'nav_menu_item', '', 0),
(25, 1, '2018-08-07 05:23:57', '2018-08-07 05:23:57', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2018-08-30 09:24:20', '2018-08-30 09:24:20', '', 0, 'http://localhost/iwire/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2018-08-07 05:23:57', '2018-08-07 05:23:57', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2018-08-30 09:24:20', '2018-08-30 09:24:20', '', 0, 'http://localhost/iwire/?p=26', 3, 'nav_menu_item', '', 0),
(27, 1, '2018-08-07 05:22:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-07 05:22:56', '0000-00-00 00:00:00', '', 0, 'http://localhost/iwire/?p=27', 1, 'nav_menu_item', '', 0),
(30, 1, '2018-08-07 05:36:39', '2018-08-07 05:36:39', '', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 05:36:39', '2018-08-07 05:36:39', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2018-08-08 05:47:38', '2018-08-08 05:47:38', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'Switchboard Cable', '', 'publish', 'open', 'open', '', 'testing', '', '', '2018-08-21 05:38:33', '2018-08-21 05:38:33', '', 0, 'http://localhost/iwire/?p=60', 0, 'post', '', 0),
(58, 1, '2018-08-07 10:15:43', '2018-08-07 10:15:43', '', 'getin touch', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2018-08-07 10:15:43', '2018-08-07 10:15:43', '', 57, 'http://localhost/iwire/2018/08/07/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2018-08-07 11:50:57', '2018-08-07 11:50:57', '<a href=\"http://localhost/iwire/getin-touch/\"></a>', 'getin touch', '', 'inherit', 'closed', 'closed', '', '57-autosave-v1', '', '', '2018-08-07 11:50:57', '2018-08-07 11:50:57', '', 57, 'http://localhost/iwire/2018/08/07/57-autosave-v1/', 0, 'revision', '', 0),
(61, 1, '2018-08-08 05:47:38', '2018-08-08 05:47:38', 'this is for testing', 'testing', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-08-08 05:47:38', '2018-08-08 05:47:38', '', 60, 'http://localhost/iwire/2018/08/08/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2018-08-08 06:21:51', '2018-08-08 06:21:51', 'Tinned or Bare, Stranded or Solid Copper, range from 32 AWG to 16 AWG.', 'Hook Up', '', 'publish', 'open', 'open', '', 'test-2', '', '', '2018-08-29 10:43:02', '2018-08-29 10:43:02', '', 0, 'http://localhost/iwire/?p=62', 0, 'post', '', 0),
(63, 1, '2018-08-08 06:21:51', '2018-08-08 06:21:51', 'second time test', 'test 2', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-08-08 06:21:51', '2018-08-08 06:21:51', '', 62, 'http://localhost/iwire/2018/08/08/62-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2018-08-21 05:05:55', '2018-08-21 05:05:55', '', 'Product Details', '', 'inherit', 'closed', 'closed', '', '84-revision-v1', '', '', '2018-08-21 05:05:55', '2018-08-21 05:05:55', '', 84, 'http://localhost/iwire/2018/08/21/84-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2018-08-08 07:21:14', '2018-08-08 07:21:14', 'Tinned or Bare, Stranded or Solid Copper, range from 32 AWG to 16 AWG.', 'Hook Up', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-08-08 07:21:14', '2018-08-08 07:21:14', '', 62, 'http://localhost/iwire/2018/08/08/62-revision-v1/', 0, 'revision', '', 0),
(67, 1, '2018-08-08 07:23:23', '2018-08-08 07:23:23', 'Tinned or Bare, Stranded or Solid Copper, range from 32 AWG to 16 AWG.', 'Hook Up', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-08-08 07:23:23', '2018-08-08 07:23:23', '', 62, 'http://localhost/iwire/2018/08/08/62-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2018-08-08 07:22:23', '2018-08-08 07:22:23', '<img src=\"http://localhost/iwire/wp-content/uploads/2018/08/service1-300x162.jpg\" alt=\"\" width=\"300\" height=\"162\" class=\"alignnone size-medium wp-image-50\" />Tinned or Bare, Stranded or Solid Copper, range from 32 AWG to 16 AWG.', 'Hook Up', '', 'inherit', 'closed', 'closed', '', '62-revision-v1', '', '', '2018-08-08 07:22:23', '2018-08-08 07:22:23', '', 62, 'http://localhost/iwire/2018/08/08/62-revision-v1/', 0, 'revision', '', 0),
(68, 1, '2018-08-08 07:42:08', '2018-08-08 07:42:08', '', 'product2', '', 'inherit', 'open', 'closed', '', 'product2', '', '', '2018-08-08 07:42:08', '2018-08-08 07:42:08', '', 62, 'http://localhost/iwire/wp-content/uploads/2018/08/product2.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2018-08-08 07:43:27', '2018-08-08 07:43:27', '', 'product1', '', 'inherit', 'open', 'closed', '', 'product1', '', '', '2018-08-08 07:43:27', '2018-08-08 07:43:27', '', 60, 'http://localhost/iwire/wp-content/uploads/2018/08/product1.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 1, '2018-08-08 07:54:43', '2018-08-08 07:54:43', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'Switchboard Cable', '', 'inherit', 'closed', 'closed', '', '60-revision-v1', '', '', '2018-08-08 07:54:43', '2018-08-08 07:54:43', '', 60, 'http://localhost/iwire/2018/08/08/60-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2018-08-08 07:56:07', '2018-08-08 07:56:07', '', 'product3', '', 'inherit', 'open', 'closed', '', 'product3', '', '', '2018-08-08 07:56:07', '2018-08-08 07:56:07', '', 1, 'http://localhost/iwire/wp-content/uploads/2018/08/product3.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 1, '2018-08-08 07:56:17', '2018-08-08 07:56:17', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'Flexible Power Cable', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-08-08 07:56:17', '2018-08-08 07:56:17', '', 1, 'http://localhost/iwire/2018/08/08/1-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2018-08-08 07:57:31', '2018-08-08 07:57:31', 'Fine stranded tinned copper wire with 0.65mm nominal diameter of conductor for 0.25mm².', 'VCT-F MVV -S', '', 'publish', 'open', 'open', '', 'vct-f-mvv-s', '', '', '2018-08-21 06:55:49', '2018-08-21 06:55:49', '', 0, 'http://localhost/iwire/?p=73', 0, 'post', '', 0),
(74, 1, '2018-08-08 07:57:26', '2018-08-08 07:57:26', '', 'product4', '', 'inherit', 'open', 'closed', '', 'product4', '', '', '2018-08-08 07:57:26', '2018-08-08 07:57:26', '', 73, 'http://localhost/iwire/wp-content/uploads/2018/08/product4.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 1, '2018-08-08 07:57:31', '2018-08-08 07:57:31', 'Fine stranded tinned copper wire with 0.65mm nominal diameter of conductor for 0.25mm².', 'VCT-F MVV -S', '', 'inherit', 'closed', 'closed', '', '73-revision-v1', '', '', '2018-08-08 07:57:31', '2018-08-08 07:57:31', '', 73, 'http://localhost/iwire/2018/08/08/73-revision-v1/', 0, 'revision', '', 0),
(31, 1, '2018-08-07 05:38:14', '2018-08-07 05:38:14', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'images/service1.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'images/service2.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'images/service3.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'images/service4.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'images/service5.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 05:38:14', '2018-08-07 05:38:14', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-08-07 05:35:37', '2018-08-07 05:35:37', '&lt;div class=\"page-header\"&gt;\r\n&lt;div class=\"container\"&gt;\r\n&lt;div class=\"col-left\"&gt;\r\n&lt;h1&gt;SERVICES&lt;/h1&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"breadcrumb\"&gt;\r\n&lt;span property=\"itemListElement\" typeof=\"ListItem\"&gt;&lt;a href=\"index.html\" class=\"home\"&gt;&lt;span property=\"name\"&gt;Home&lt;/span&gt;&lt;/a&gt;&lt;meta property=\"position\" content=\"1\"&gt;&lt;/span&gt; &lt;i class=\"fa fa-angle-right\" aria-hidden=\"true\"&gt;&lt;/i&gt; &lt;span property=\"itemListElement\" typeof=\"ListItem\"&gt;&lt;span property=\"name\"&gt;SERVICES&lt;/span&gt;&lt;meta property=\"position\" content=\"2\"&gt;&lt;/span&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!--Header End--&gt;\r\n\r\n&lt;!--Main Contaner Start--&gt;\r\n&lt;div class=\"site-content-contain\"&gt;\r\n&lt;div id=\"content\" class=\"site-content\"&gt;\r\n&lt;div class=\"container\"&gt;\r\n\r\n&lt;div class=\"content-area\"&gt;\r\n&lt;main id=\"main\" class=\"site-main\" role=\"main\"&gt;\r\n&lt;p&gt;i-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.&lt;/p&gt;\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;div class=\"service-list\"&gt;\r\n&lt;div class=\"service-item clearfix\"&gt;\r\n&lt;div class=\"thumb\" style=\"background-image:url(images/service1.jpg);\"&gt;&lt;/div&gt;\r\n&lt;div class=\"dec\"&gt;\r\n&lt;h3&gt;Quality &amp; Environmental&lt;/h3&gt;\r\n&lt;p&gt;We are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.&lt;/p&gt;\r\n\r\n&lt;p&gt;In order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.&lt;/p&gt;\r\n\r\n&lt;p&gt;In fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"service-item clearfix\"&gt;\r\n&lt;div class=\"thumb\" style=\"background-image:url(images/service2.jpg);\"&gt;&lt;/div&gt;\r\n&lt;div class=\"dec\"&gt;\r\n&lt;h3&gt;Product Innovation&lt;/h3&gt;\r\n&lt;p&gt;We trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.&lt;/p&gt;\r\n\r\n&lt;p&gt;Substantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"service-item clearfix\"&gt;\r\n&lt;div class=\"thumb\" style=\"background-image:url(images/service3.jpg);\"&gt;&lt;/div&gt;\r\n&lt;div class=\"dec\"&gt;\r\n&lt;h3&gt;Sales &amp; Service&lt;/h3&gt;\r\n&lt;p&gt;For any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"service-item clearfix\"&gt;\r\n&lt;div class=\"thumb\" style=\"background-image:url(images/service4.jpg);\"&gt;&lt;/div&gt;\r\n&lt;div class=\"dec\"&gt;\r\n&lt;h3&gt;Response &amp; Delivery&lt;/h3&gt;\r\n&lt;p&gt; Our dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.&lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;div class=\"service-item clearfix\"&gt;\r\n&lt;div class=\"thumb\" style=\"background-image:url(images/service5.jpg);\"&gt;&lt;/div&gt;\r\n&lt;div class=\"dec\"&gt;\r\n&lt;h3&gt;Distribution&lt;/h3&gt;\r\n&lt;p&gt;i-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship. &lt;/p&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/main&gt;\r\n&lt;/div&gt;\r\n\r\n&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;/div&gt;', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 05:35:37', '2018-08-07 05:35:37', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(57, 1, '2018-08-07 10:15:43', '2018-08-07 10:15:43', '', 'getin touch', '', 'publish', 'closed', 'closed', '', 'getin-touch', '', '', '2018-08-28 04:51:16', '2018-08-28 04:51:16', '', 0, 'http://localhost/iwire/?page_id=57', 0, 'page', '', 0),
(32, 1, '2018-08-07 05:40:07', '2018-08-07 05:40:07', '&nbsp;\r\n<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 05:40:07', '2018-08-07 05:40:07', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2018-08-07 09:19:25', '2018-08-07 09:19:25', '<div class=\"page-header\">\n<div class=\"container\">\n<div class=\"col-left\">\n<h1>SERVICES</h1>\n</div>\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\n</div>\n</div>\n<!--Header End-->\n\n<!--Main Contaner Start-->\n<div class=\"site-content-contain\">\n<div id=\"content\" class=\"site-content\">\n<div class=\"container\">\n<div class=\"content-area\">\n\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\n\n&nbsp;\n<div class=\"service-list\">\n<div class=\"service-item clearfix\">\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service1.jpg\');\"></div>\n<div class=\"dec\">\n<h3>Quality &amp; Environmental</h3>\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\n\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\n\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\n\n</div>\n</div>\n<div class=\"service-item clearfix\">\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service2.jpg\');\"></div>\n<div class=\"dec\">\n<h3>Product Innovation</h3>\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\n\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\n\n</div>\n</div>\n<div class=\"service-item clearfix\">\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service3.jpg\');\"></div>\n<div class=\"dec\">\n<h3>Sales &amp; Service</h3>\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\n\n</div>\n</div>\n<div class=\"service-item clearfix\">\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service1.jpg\');\"></div>\n<div class=\"dec\">\n<h3>Response &amp; Delivery</h3>\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\n\n</div>\n</div>\n<div class=\"service-item clearfix\">\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\n<div class=\"dec\">\n<h3>Distribution</h3>\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\n\n</div>\n</div>\n</div>\n&nbsp;\n\n</div>\n</div>\n</div>\n</div>\n<!--Main Contaner Start-->\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-autosave-v1', '', '', '2018-08-07 09:19:25', '2018-08-07 09:19:25', '', 17, 'http://localhost/iwire/2018/08/07/17-autosave-v1/', 0, 'revision', '', 0),
(48, 1, '2018-08-07 09:08:23', '2018-08-07 09:08:23', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(<?php bloginfo( \'template_url\' ); ?>/images/service1.jpg);\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:08:23', '2018-08-07 09:08:23', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2018-08-07 05:50:13', '2018-08-07 05:50:13', '\r\n<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 05:50:13', '2018-08-07 05:50:13', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2018-08-07 06:01:06', '2018-08-07 06:01:06', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2018-08-07 06:01:06', '2018-08-07 06:01:06', '', 0, 'http://localhost/iwire/wp-content/uploads/2018/08/logo.png', 0, 'attachment', 'image/png', 0),
(187, 1, '2018-08-27 05:10:17', '2018-08-27 05:10:17', 'Tinned or Bare, Stranded or Solid Copper, range from 32 AWG to 16 AWG.', 'Hook Up', '', 'publish', 'closed', 'closed', '', 'hook-up', '', '', '2018-08-29 10:57:43', '2018-08-29 10:57:43', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=187', 0, 'allproduct', '', 0),
(188, 1, '2018-08-27 05:12:54', '2018-08-27 05:12:54', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'Switchboard Cable', '', 'publish', 'closed', 'closed', '', 'switchboard-cable', '', '', '2018-08-29 10:57:56', '2018-08-29 10:57:56', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=188', 0, 'allproduct', '', 0),
(44, 1, '2018-08-07 07:20:22', '2018-08-07 07:20:22', '', 'banner', '', 'inherit', 'open', 'closed', '', 'banner', '', '', '2018-08-28 11:10:14', '2018-08-28 11:10:14', '', 239, 'http://localhost/iwire/wp-content/uploads/2018/08/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-08-21 09:11:58', '2018-08-21 09:11:58', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'CONDUCTOR', 'conductor', 'publish', 'closed', 'closed', '', 'group_5b7bd503133f6', '', '', '2018-08-25 08:41:41', '2018-08-25 08:41:41', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=91', 0, 'acf-field-group', '', 0),
(49, 1, '2018-08-07 09:10:09', '2018-08-07 09:10:09', '&nbsp;\r\n<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:10:09', '2018-08-07 09:10:09', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2018-08-07 09:11:00', '2018-08-07 09:11:00', '', 'service1', '', 'inherit', 'open', 'closed', '', 'service1', '', '', '2018-08-07 09:11:00', '2018-08-07 09:11:00', '', 17, 'http://localhost/iwire/wp-content/uploads/2018/08/service1.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(53, 1, '2018-08-07 09:15:35', '2018-08-07 09:15:35', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/service1.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:15:35', '2018-08-07 09:15:35', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2018-08-07 09:13:28', '2018-08-07 09:13:28', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/uploads/2018/08/service1-300x162.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:13:28', '2018-08-07 09:13:28', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2018-08-07 09:12:35', '2018-08-07 09:12:35', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(http://localhost/iwire/wp-content/uploads/2018/08/service1-300x162.jpg);\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly kee<img class=\"alignnone size-medium wp-image-50\" src=\"http://localhost/iwire/wp-content/uploads/2018/08/service1-300x162.jpg\" alt=\"\" width=\"300\" height=\"162\" />ping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:12:35', '2018-08-07 09:12:35', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2018-08-07 09:16:23', '2018-08-07 09:16:23', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service1.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(&lt;?php bloginfo( \'template_url\' );\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:16:23', '2018-08-07 09:16:23', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2018-08-07 09:26:57', '2018-08-07 09:26:57', '', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:26:57', '2018-08-07 09:26:57', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(55, 1, '2018-08-07 09:19:43', '2018-08-07 09:19:43', '<div class=\"page-header\">\r\n<div class=\"container\">\r\n<div class=\"col-left\">\r\n<h1>SERVICES</h1>\r\n</div>\r\n<div class=\"breadcrumb\"><a class=\"home\" href=\"index.html\">Home</a><i class=\"fa fa-angle-right\" aria-hidden=\"true\"></i> SERVICES</div>\r\n</div>\r\n</div>\r\n<!--Header End-->\r\n\r\n<!--Main Contaner Start-->\r\n<div class=\"site-content-contain\">\r\n<div id=\"content\" class=\"site-content\">\r\n<div class=\"container\">\r\n<div class=\"content-area\">\r\n\r\ni-WIRE (ASIA) PTE LTD aims to be the leading manufacturer and distributor of cable and wire products in Asia. We believe that strong partnerships with our customers and distributors are our top priority, and the i-WIRE brand is the embodiment of our commitment towards ensuring that the needs of our customers are always met through these key areas.\r\n\r\n&nbsp;\r\n<div class=\"service-list\">\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service1.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Quality &amp; Environmental</h3>\r\nWe are specialists in the manufacture of cable and wire. Our dedication to our business means we are constantly keeping ourselves abreast with new technology and meticulously careful about the quality of our products, to ensure that our customers can get the best value for money.\r\n\r\nIn order to protect the environment, we manufacture our cable and wire with environmentally friendly materials and according to environmental specifications, such as LSF (low smoke and fume), LSZH (Low Smoke and Zero Halogen), Lead Free / RoHS (2002/95/EC) etc.\r\n\r\nIn fact, all our cable, wire and assemblies are also Cadmium Free, Mercury Free, Chromium Free, PBB &amp; PBDE free in compliance with RoHS (2002/95/EC) and European Standard EN71 Part 3: 1994 + A1 2000.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service2.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Product Innovation</h3>\r\nWe trust that innovation is critical to a company\'s progress; hence we constantly pursue innovative products by focusing on market research to identify our client\'s needs.\r\n\r\nSubstantial investment is channeled into R&amp;D and personnel to ensure that all creative ideas are materialized in providing high quality and innovative products for our clients. We are confident of becoming the pioneer in innovation of cable and wire and computer/audio/video assemblies.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service3.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Sales &amp; Service</h3>\r\nFor any industry, deep knowledge of your product is absolutely vital. Our extensive product knowledge and years of experience enable us to provide expert advice as to the types of products most suitable to your needs. Through efficient matching of solutions and customization of products to suit your needs, we can help you keep your systems running optimally, improving productivity and reducing downtime.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service4.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Response &amp; Delivery</h3>\r\nOur dedication to good customer service also means ensuring prompt response to enquiries and speedy deliveries. Our strong logistics team and advanced inventory management tools allow us to consistently respond to customer needs within the shortest time possible. Our staff can deliver i-WIRE products to any Singapore-based company, as well as arrange for forwarding to overseas clients.\r\n\r\n</div>\r\n</div>\r\n<div class=\"service-item clearfix\">\r\n<div class=\"thumb\" style=\"background-image: url(\'http://localhost/iwire/wp-content/themes/golam_wire/images/service5.jpg\');\"></div>\r\n<div class=\"dec\">\r\n<h3>Distribution</h3>\r\ni-WIRE (ASIA) PTE LTD works with a broad network of distributors to distribute our products to different industries globally. We are always interested in setting up further partnership opportunities, and welcome any enquiries regarding sales or distributorship.\r\n\r\n</div>\r\n</div>\r\n</div>\r\n&nbsp;\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>\r\n<!--Main Contaner Start-->\r\n<!--?php get_footer(); ?-->', 'services', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-08-07 09:19:43', '2018-08-07 09:19:43', '', 17, 'http://localhost/iwire/2018/08/07/17-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2018-08-21 05:05:55', '2018-08-21 05:05:55', '', 'Product Details', '', 'publish', 'closed', 'closed', '', 'product-details', '', '', '2018-08-25 06:24:59', '2018-08-25 06:24:59', '', 0, 'http://localhost/iwire/?page_id=84', 0, 'page', '', 0),
(189, 1, '2018-08-27 05:14:25', '2018-08-27 05:14:25', 'Fine stranded tinned copper wire with 0.65mm nominal diameter of conductor for 0.25mm²', 'VCT-F MVV -S', '', 'publish', 'closed', 'closed', '', 'vct-f-mvv-s', '', '', '2018-08-29 10:57:50', '2018-08-29 10:57:50', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=189', 0, 'allproduct', '', 0),
(190, 1, '2018-08-27 05:16:42', '2018-08-27 05:16:42', 'Tinned flexible compacted copper IEC 60228 class 2', 'Marine Cable', '', 'publish', 'closed', 'closed', '', 'marine-cable', '', '', '2018-08-30 07:50:01', '2018-08-30 07:50:01', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=190', 0, 'allproduct', '', 0),
(191, 1, '2018-08-27 05:15:49', '2018-08-27 05:15:49', '', 'product5', '', 'inherit', 'open', 'closed', '', 'product5', '', '', '2018-08-27 05:15:49', '2018-08-27 05:15:49', '', 190, 'http://localhost/iwire/wp-content/uploads/2018/08/product5.jpg', 0, 'attachment', 'image/jpeg', 0),
(98, 1, '2018-08-21 09:21:04', '2018-08-21 09:21:04', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Upload Pdf File', 'upload-pdf-file', 'publish', 'closed', 'closed', '', 'group_5b7bd87b876a0', '', '', '2018-08-21 09:21:04', '2018-08-21 09:21:04', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(100, 1, '2018-08-21 09:21:04', '2018-08-21 09:21:04', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'UPLOAD PDF', 'upload_pdf', 'publish', 'closed', 'closed', '', 'field_5b7bd87ff2d7e', '', '', '2018-08-21 09:21:04', '2018-08-21 09:21:04', '', 98, 'http://localhost/iwire/?post_type=acf-field&p=100', 0, 'acf-field', '', 0),
(102, 1, '2018-08-21 09:23:12', '2018-08-21 09:23:12', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Application Area', 'application-area', 'publish', 'closed', 'closed', '', 'group_5b7bd9a7e4f51', '', '', '2018-08-21 09:23:12', '2018-08-21 09:23:12', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=102', 0, 'acf-field-group', '', 0),
(103, 1, '2018-08-21 09:23:12', '2018-08-21 09:23:12', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'APPLICATION', 'application', 'publish', 'closed', 'closed', '', 'field_5b7bd9cb79683', '', '', '2018-08-21 09:23:12', '2018-08-21 09:23:12', '', 102, 'http://localhost/iwire/?post_type=acf-field&p=103', 0, 'acf-field', '', 0),
(207, 1, '2018-08-28 06:01:28', '2018-08-28 06:01:28', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'Image 1', 'publish', 'closed', 'closed', '', 'field_5b84e50a7411f', '', '', '2018-08-28 06:29:17', '2018-08-28 06:29:17', '', 205, 'http://localhost/iwire/?post_type=acf-field&#038;p=207', 0, 'acf-field', '', 0),
(106, 1, '2018-08-21 09:27:33', '2018-08-21 09:27:33', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'VOLTAGE RATING', 'voltage-rating', 'publish', 'closed', 'closed', '', 'group_5b7bdaad38d32', '', '', '2018-08-21 09:29:46', '2018-08-21 09:29:46', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=106', 0, 'acf-field-group', '', 0),
(108, 1, '2018-08-21 09:27:33', '2018-08-21 09:27:33', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'voltage_rating', 'publish', 'closed', 'closed', '', 'field_5b7bdae23eaf1', '', '', '2018-08-21 09:29:46', '2018-08-21 09:29:46', '', 106, 'http://localhost/iwire/?post_type=acf-field&#038;p=108', 0, 'acf-field', '', 0),
(205, 1, '2018-08-28 06:01:28', '2018-08-28 06:01:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"certificate\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'CERTIFICATE IMAGE', 'certificate-image', 'publish', 'closed', 'closed', '', 'group_5b84e4d11020f', '', '', '2018-08-28 06:29:17', '2018-08-28 06:29:17', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=205', 0, 'acf-field-group', '', 0),
(111, 1, '2018-08-21 09:32:14', '2018-08-21 09:32:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'TEST VOLTAGE', 'test-voltage', 'publish', 'closed', 'closed', '', 'group_5b7bdbf3884a6', '', '', '2018-08-21 09:32:14', '2018-08-21 09:32:14', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=111', 0, 'acf-field-group', '', 0),
(112, 1, '2018-08-21 09:32:14', '2018-08-21 09:32:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5b7bdbfae1d90', '', '', '2018-08-21 09:32:14', '2018-08-21 09:32:14', '', 111, 'http://localhost/iwire/?post_type=acf-field&p=112', 0, 'acf-field', '', 0),
(114, 1, '2018-08-21 09:33:48', '2018-08-21 09:33:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'OPERATING TEMPERATURE', 'operating-temperature', 'publish', 'closed', 'closed', '', 'group_5b7bdc696f535', '', '', '2018-08-21 09:33:48', '2018-08-21 09:33:48', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=114', 0, 'acf-field-group', '', 0),
(115, 1, '2018-08-21 09:33:48', '2018-08-21 09:33:48', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5b7bdc6d815ad', '', '', '2018-08-21 09:33:48', '2018-08-21 09:33:48', '', 114, 'http://localhost/iwire/?post_type=acf-field&p=115', 0, 'acf-field', '', 0),
(117, 1, '2018-08-21 09:34:41', '2018-08-21 09:34:41', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'SHORT CIRCUIT TEMPERATURE', 'short-circuit-temperature', 'publish', 'closed', 'closed', '', 'group_5b7bdc9b99c63', '', '', '2018-08-21 09:34:41', '2018-08-21 09:34:41', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=117', 0, 'acf-field-group', '', 0),
(118, 1, '2018-08-21 09:34:41', '2018-08-21 09:34:41', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5b7bdca17795a', '', '', '2018-08-21 09:34:41', '2018-08-21 09:34:41', '', 117, 'http://localhost/iwire/?post_type=acf-field&p=118', 0, 'acf-field', '', 0),
(120, 1, '2018-08-21 09:35:27', '2018-08-21 09:35:27', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'STANDARDS', 'standards', 'publish', 'closed', 'closed', '', 'group_5b7bdccc7fd87', '', '', '2018-08-21 09:35:27', '2018-08-21 09:35:27', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=120', 0, 'acf-field-group', '', 0),
(121, 1, '2018-08-21 09:35:27', '2018-08-21 09:35:27', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5b7bdcd1a70cc', '', '', '2018-08-21 09:35:27', '2018-08-21 09:35:27', '', 120, 'http://localhost/iwire/?post_type=acf-field&p=121', 0, 'acf-field', '', 0),
(123, 1, '2018-08-21 09:38:16', '2018-08-21 09:38:16', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'DESCRIPTION IMAGE', 'description-image', 'publish', 'closed', 'closed', '', 'group_5b7bdd2c338b8', '', '', '2018-08-21 09:38:16', '2018-08-21 09:38:16', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=123', 0, 'acf-field-group', '', 0),
(124, 1, '2018-08-21 09:38:16', '2018-08-21 09:38:16', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:2:\"id\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5b7bdd5dfc929', '', '', '2018-08-21 09:38:16', '2018-08-21 09:38:16', '', 123, 'http://localhost/iwire/?post_type=acf-field&p=124', 0, 'acf-field', '', 0),
(126, 1, '2018-08-21 09:44:40', '2018-08-21 09:44:40', '', 'table1', '', 'inherit', 'open', 'closed', '', 'table1', '', '', '2018-08-21 09:44:40', '2018-08-21 09:44:40', '', 62, 'http://localhost/iwire/wp-content/uploads/2018/08/table1.jpg', 0, 'attachment', 'image/jpeg', 0),
(134, 1, '2018-08-25 07:01:09', '2018-08-25 07:01:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'tetsinig', 'publish', 'closed', 'closed', '', 'field_5b80fe94ae7ac', '', '', '2018-08-25 07:02:04', '2018-08-25 07:02:04', '', 102, 'http://localhost/iwire/?post_type=acf-field&#038;p=134', 0, 'acf-field', '', 0),
(136, 1, '2018-08-25 07:09:54', '2018-08-25 07:09:54', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"products\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Trying', 'trying', 'publish', 'closed', 'closed', '', 'group_5b8100540ab2b', '', '', '2018-08-25 07:09:55', '2018-08-25 07:09:55', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=136', 0, 'acf-field-group', '', 0),
(137, 1, '2018-08-25 07:09:54', '2018-08-25 07:09:54', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'Try', 'publish', 'closed', 'closed', '', 'field_5b8100b4551b4', '', '', '2018-08-25 07:09:54', '2018-08-25 07:09:54', '', 136, 'http://localhost/iwire/?post_type=acf-field&p=137', 0, 'acf-field', '', 0),
(142, 1, '2018-08-25 07:22:22', '0000-00-00 00:00:00', '', 'Draft created on August 25, 2018 at 7:22 am', '', 'draft', 'closed', 'closed', '', '', '', '', '2018-08-25 07:22:22', '2018-08-25 07:22:22', '', 0, 'http://localhost/iwire/?p=142', 0, 'post', '', 0),
(143, 1, '2018-08-25 07:22:22', '2018-08-25 07:22:22', '', 'Draft created on August 25, 2018 at 7:22 am', '', 'inherit', 'closed', 'closed', '', '142-revision-v1', '', '', '2018-08-25 07:22:22', '2018-08-25 07:22:22', '', 142, 'http://localhost/iwire/2018/08/25/142-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2018-08-25 07:36:14', '2018-08-25 07:36:14', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'CONDUCTOR', 'conductor', 'publish', 'closed', 'closed', '', 'group_5b8106995aff2', '', '', '2018-08-25 07:36:14', '2018-08-25 07:36:14', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=146', 0, 'acf-field-group', '', 0),
(148, 1, '2018-08-25 07:36:14', '2018-08-25 07:36:14', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:10:\"Enter here\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'CONDUCTOR', 'publish', 'closed', 'closed', '', 'field_5b8106d50f6be', '', '', '2018-08-25 07:36:14', '2018-08-25 07:36:14', '', 146, 'http://localhost/iwire/?post_type=acf-field&p=148', 0, 'acf-field', '', 0),
(154, 1, '2018-08-25 07:43:09', '2018-08-25 07:43:09', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'INSULATION', 'insulation', 'publish', 'closed', 'closed', '', 'group_5b81083d6448d', '', '', '2018-08-25 07:43:09', '2018-08-25 07:43:09', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=154', 0, 'acf-field-group', '', 0),
(155, 1, '2018-08-25 07:43:09', '2018-08-25 07:43:09', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:18:\"Insulation Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'INSULATION', 'publish', 'closed', 'closed', '', 'field_5b81084c279d2', '', '', '2018-08-25 07:43:09', '2018-08-25 07:43:09', '', 154, 'http://localhost/iwire/?post_type=acf-field&p=155', 0, 'acf-field', '', 0),
(157, 1, '2018-08-25 07:44:40', '2018-08-25 07:44:40', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'INSULATION COLOR', 'insulation-color', 'publish', 'closed', 'closed', '', 'group_5b8108c4c30d2', '', '', '2018-08-25 07:48:45', '2018-08-25 07:48:45', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=157', 0, 'acf-field-group', '', 0),
(158, 1, '2018-08-25 07:44:40', '2018-08-25 07:44:40', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:16:\"Insulation Color\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'INSULATION COLOR', 'publish', 'closed', 'closed', '', 'field_5b8108ca4ba30', '', '', '2018-08-25 07:44:40', '2018-08-25 07:44:40', '', 157, 'http://localhost/iwire/?post_type=acf-field&p=158', 0, 'acf-field', '', 0),
(163, 1, '2018-08-25 07:50:34', '2018-08-25 07:50:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'APPLICATION', 'application', 'publish', 'closed', 'closed', '', 'group_5b810a2151675', '', '', '2018-08-25 07:50:34', '2018-08-25 07:50:34', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=163', 0, 'acf-field-group', '', 0),
(164, 1, '2018-08-25 07:50:34', '2018-08-25 07:50:34', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Enter Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'APPLICATION', 'publish', 'closed', 'closed', '', 'field_5b810a2827ba1', '', '', '2018-08-25 07:50:34', '2018-08-25 07:50:34', '', 163, 'http://localhost/iwire/?post_type=acf-field&p=164', 0, 'acf-field', '', 0),
(166, 1, '2018-08-25 07:51:53', '2018-08-25 07:51:53', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'VOLTAGE RATING', 'voltage-rating', 'publish', 'closed', 'closed', '', 'group_5b810a7c34e03', '', '', '2018-08-25 07:51:54', '2018-08-25 07:51:54', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=166', 0, 'acf-field-group', '', 0),
(167, 1, '2018-08-25 07:51:53', '2018-08-25 07:51:53', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Enter Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'VOLTAGE RATING', 'publish', 'closed', 'closed', '', 'field_5b810a810d466', '', '', '2018-08-25 07:51:53', '2018-08-25 07:51:53', '', 166, 'http://localhost/iwire/?post_type=acf-field&p=167', 0, 'acf-field', '', 0),
(169, 1, '2018-08-25 07:53:02', '2018-08-25 07:53:02', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'TEST VOLTAGE', 'test-voltage', 'publish', 'closed', 'closed', '', 'group_5b810ab51c1bf', '', '', '2018-08-25 07:53:02', '2018-08-25 07:53:02', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=169', 0, 'acf-field-group', '', 0),
(170, 1, '2018-08-25 07:53:02', '2018-08-25 07:53:02', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Enter Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'TEST VOLTAGE', 'publish', 'closed', 'closed', '', 'field_5b810abf7038b', '', '', '2018-08-25 07:53:02', '2018-08-25 07:53:02', '', 169, 'http://localhost/iwire/?post_type=acf-field&p=170', 0, 'acf-field', '', 0),
(172, 1, '2018-08-25 07:54:21', '2018-08-25 07:54:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'OPERATING TEMPERATURE', 'operating-temperature', 'publish', 'closed', 'closed', '', 'group_5b810b0ba05cf', '', '', '2018-08-25 07:54:21', '2018-08-25 07:54:21', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=172', 0, 'acf-field-group', '', 0),
(173, 1, '2018-08-25 07:54:21', '2018-08-25 07:54:21', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Enter Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'OPERATING TEMPERATURE', 'publish', 'closed', 'closed', '', 'field_5b810b146b572', '', '', '2018-08-25 07:54:21', '2018-08-25 07:54:21', '', 172, 'http://localhost/iwire/?post_type=acf-field&p=173', 0, 'acf-field', '', 0),
(175, 1, '2018-08-25 07:55:28', '2018-08-25 07:55:28', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'SHORT CIRCUIT TEMPERATURE', 'short-circuit-temperature', 'publish', 'closed', 'closed', '', 'group_5b810b543dc05', '', '', '2018-08-25 07:55:29', '2018-08-25 07:55:29', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=175', 0, 'acf-field-group', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(176, 1, '2018-08-25 07:55:29', '2018-08-25 07:55:29', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Enter Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'SHORT CIRCUIT TEMPERATURE', 'publish', 'closed', 'closed', '', 'field_5b810b5c8b6c9', '', '', '2018-08-25 07:55:29', '2018-08-25 07:55:29', '', 175, 'http://localhost/iwire/?post_type=acf-field&p=176', 0, 'acf-field', '', 0),
(178, 1, '2018-08-25 07:56:19', '2018-08-25 07:56:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'STANDARDS', 'standards', 'publish', 'closed', 'closed', '', 'group_5b810b8d42ce6', '', '', '2018-08-25 07:56:19', '2018-08-25 07:56:19', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=178', 0, 'acf-field-group', '', 0),
(179, 1, '2018-08-25 07:56:19', '2018-08-25 07:56:19', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:13:\"Enter Details\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', 'STANDARDS', 'publish', 'closed', 'closed', '', 'field_5b810b940a75c', '', '', '2018-08-25 07:56:19', '2018-08-25 07:56:19', '', 178, 'http://localhost/iwire/?post_type=acf-field&p=179', 0, 'acf-field', '', 0),
(180, 1, '2018-08-25 08:00:29', '2018-08-25 08:00:29', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'Flexible Power Cable', '', 'publish', 'closed', 'closed', '', 'flexible-power-cable', '', '', '2018-08-29 10:57:37', '2018-08-29 10:57:37', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=180', 0, 'allproduct', '', 0),
(181, 1, '2018-08-25 08:36:34', '2018-08-25 08:36:34', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'UPLOAD PDF', 'upload-pdf', 'publish', 'closed', 'closed', '', 'group_5b8114ea07c44', '', '', '2018-08-30 05:52:56', '2018-08-30 05:52:56', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=181', 0, 'acf-field-group', '', 0),
(182, 1, '2018-08-25 08:36:34', '2018-08-25 08:36:34', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'UPLOAD  FILE', 'publish', 'closed', 'closed', '', 'field_5b8114f6292fc', '', '', '2018-08-30 05:52:56', '2018-08-30 05:52:56', '', 181, 'http://localhost/iwire/?post_type=acf-field&#038;p=182', 0, 'acf-field', '', 0),
(192, 1, '2018-08-27 05:18:21', '2018-08-27 05:18:21', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC 60228', 'AS AP', '', 'publish', 'closed', 'closed', '', 'as-ap', '', '', '2018-08-29 10:45:24', '2018-08-29 10:45:24', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=192', 0, 'allproduct', '', 0),
(193, 1, '2018-08-27 05:20:48', '2018-08-27 05:20:48', 'Flexible wires with fine stranded copper conductor, CLASS 5 EN 60228, IEC60228', 'Others Product', '', 'publish', 'closed', 'closed', '', 'others-product', '', '', '2018-08-30 09:22:03', '2018-08-30 09:22:03', '', 0, 'http://localhost/iwire/?post_type=allproduct&#038;p=193', 0, 'allproduct', '', 0),
(194, 1, '2018-08-27 05:19:30', '2018-08-27 05:19:30', '', 'product7', '', 'inherit', 'open', 'closed', '', 'product7', '', '', '2018-08-27 05:19:30', '2018-08-27 05:19:30', '', 193, 'http://localhost/iwire/wp-content/uploads/2018/08/product7.jpg', 0, 'attachment', 'image/jpeg', 0),
(195, 1, '2018-08-27 05:19:36', '2018-08-27 05:19:36', '', 'product9', '', 'inherit', 'open', 'closed', '', 'product9', '', '', '2018-08-27 05:19:36', '2018-08-27 05:19:36', '', 193, 'http://localhost/iwire/wp-content/uploads/2018/08/product9.jpg', 0, 'attachment', 'image/jpeg', 0),
(196, 1, '2018-08-27 05:19:46', '2018-08-27 05:19:46', '', 'product8', '', 'inherit', 'open', 'closed', '', 'product8', '', '', '2018-08-27 05:19:46', '2018-08-27 05:19:46', '', 193, 'http://localhost/iwire/wp-content/uploads/2018/08/product8.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2018-08-27 05:33:23', '2018-08-27 05:33:23', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'IMAGE FOR  FRONT PAGE', 'image-for-front-page', 'publish', 'closed', 'closed', '', 'group_5b838c7395d76', '', '', '2018-08-27 05:33:23', '2018-08-27 05:33:23', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=197', 0, 'acf-field-group', '', 0),
(198, 1, '2018-08-27 05:33:23', '2018-08-27 05:33:23', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'Other Image', 'publish', 'closed', 'closed', '', 'field_5b838cd2c8cc4', '', '', '2018-08-27 05:33:23', '2018-08-27 05:33:23', '', 197, 'http://localhost/iwire/?post_type=acf-field&p=198', 0, 'acf-field', '', 0),
(199, 1, '2018-08-27 05:35:44', '2018-08-27 05:35:44', '', 'image1', '', 'inherit', 'open', 'closed', '', 'image1', '', '', '2018-08-27 05:35:44', '2018-08-27 05:35:44', '', 192, 'http://localhost/iwire/wp-content/uploads/2018/08/image1.jpg', 0, 'attachment', 'image/jpeg', 0),
(200, 1, '2018-08-27 06:22:36', '2018-08-27 06:22:36', '', 'image2', '', 'inherit', 'open', 'closed', '', 'image2', '', '', '2018-08-27 06:22:36', '2018-08-27 06:22:36', '', 193, 'http://localhost/iwire/wp-content/uploads/2018/08/image2.jpg', 0, 'attachment', 'image/jpeg', 0),
(201, 1, '2018-08-27 06:22:42', '2018-08-27 06:22:42', '', 'image3', '', 'inherit', 'open', 'closed', '', 'image3', '', '', '2018-08-27 06:22:42', '2018-08-27 06:22:42', '', 193, 'http://localhost/iwire/wp-content/uploads/2018/08/image3.jpg', 0, 'attachment', 'image/jpeg', 0),
(222, 1, '2018-08-28 06:30:32', '2018-08-28 06:30:32', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'Image 2', 'publish', 'closed', 'closed', '', 'field_5b84ebd915e86', '', '', '2018-08-28 06:30:32', '2018-08-28 06:30:32', '', 221, 'http://localhost/iwire/?post_type=acf-field&p=222', 0, 'acf-field', '', 0),
(223, 1, '2018-08-28 06:33:00', '2018-08-28 06:33:00', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"certificate\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'IMAGE 3', 'image-3', 'publish', 'closed', 'closed', '', 'group_5b84ec83a0711', '', '', '2018-08-28 06:33:00', '2018-08-28 06:33:00', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=223', 0, 'acf-field-group', '', 0),
(224, 1, '2018-08-28 06:33:00', '2018-08-28 06:33:00', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'Image 3', 'publish', 'closed', 'closed', '', 'field_5b84ec8b560ab', '', '', '2018-08-28 06:33:00', '2018-08-28 06:33:00', '', 223, 'http://localhost/iwire/?post_type=acf-field&p=224', 0, 'acf-field', '', 0),
(216, 1, '2018-08-28 06:24:15', '2018-08-28 06:24:15', '', 'MARINE', '', 'publish', 'closed', 'closed', '', 'marine', '', '', '2018-08-28 07:15:34', '2018-08-28 07:15:34', '', 0, 'http://localhost/iwire/?post_type=certificate&#038;p=216', 0, 'certificate', '', 0),
(217, 1, '2018-08-28 06:23:29', '2018-08-28 06:23:29', '', 'certi1', '', 'inherit', 'open', 'closed', '', 'certi1', '', '', '2018-08-28 06:23:29', '2018-08-28 06:23:29', '', 216, 'http://localhost/iwire/wp-content/uploads/2018/08/certi1.jpg', 0, 'attachment', 'image/jpeg', 0),
(218, 1, '2018-08-28 06:23:30', '2018-08-28 06:23:30', '', 'certi2', '', 'inherit', 'open', 'closed', '', 'certi2', '', '', '2018-08-28 06:23:30', '2018-08-28 06:23:30', '', 216, 'http://localhost/iwire/wp-content/uploads/2018/08/certi2.jpg', 0, 'attachment', 'image/jpeg', 0),
(221, 1, '2018-08-28 06:30:32', '2018-08-28 06:30:32', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"certificate\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'IMAGE 2', 'image-2', 'publish', 'closed', 'closed', '', 'group_5b84ebc0031b6', '', '', '2018-08-28 06:32:23', '2018-08-28 06:32:23', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=221', 0, 'acf-field-group', '', 0),
(219, 1, '2018-08-28 06:23:31', '2018-08-28 06:23:31', '', 'certi3', '', 'inherit', 'open', 'closed', '', 'certi3', '', '', '2018-08-28 06:23:31', '2018-08-28 06:23:31', '', 216, 'http://localhost/iwire/wp-content/uploads/2018/08/certi3.jpg', 0, 'attachment', 'image/jpeg', 0),
(220, 1, '2018-08-28 06:23:32', '2018-08-28 06:23:32', '', 'certi4', '', 'inherit', 'open', 'closed', '', 'certi4', '', '', '2018-08-28 06:23:32', '2018-08-28 06:23:32', '', 216, 'http://localhost/iwire/wp-content/uploads/2018/08/certi4.jpg', 0, 'attachment', 'image/jpeg', 0),
(225, 1, '2018-08-28 06:33:45', '2018-08-28 06:33:45', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"certificate\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'IMAGE 4', 'image-4', 'publish', 'closed', 'closed', '', 'group_5b84eca36cc0b', '', '', '2018-08-28 06:34:25', '2018-08-28 06:34:25', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=225', 0, 'acf-field-group', '', 0),
(226, 1, '2018-08-28 06:33:45', '2018-08-28 06:33:45', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'Image 4', 'publish', 'closed', 'closed', '', 'field_5b84ecad055ae', '', '', '2018-08-28 06:34:17', '2018-08-28 06:34:17', '', 225, 'http://localhost/iwire/?post_type=acf-field&#038;p=226', 0, 'acf-field', '', 0),
(227, 1, '2018-08-28 06:37:39', '2018-08-28 06:37:39', '', 'TSE', '', 'publish', 'closed', 'closed', '', 'marine-2', '', '', '2018-08-28 07:33:46', '2018-08-28 07:33:46', '', 0, 'http://localhost/iwire/?post_type=certificate&#038;p=227', 0, 'certificate', '', 0),
(229, 1, '2018-08-28 07:16:46', '2018-08-28 07:16:46', '', 'certi5', '', 'inherit', 'open', 'closed', '', 'certi5', '', '', '2018-08-28 07:16:46', '2018-08-28 07:16:46', '', 227, 'http://localhost/iwire/wp-content/uploads/2018/08/certi5.jpg', 0, 'attachment', 'image/jpeg', 0),
(230, 1, '2018-08-28 07:16:54', '2018-08-28 07:16:54', '', 'certi6', '', 'inherit', 'open', 'closed', '', 'certi6', '', '', '2018-08-28 07:16:54', '2018-08-28 07:16:54', '', 227, 'http://localhost/iwire/wp-content/uploads/2018/08/certi6.jpg', 0, 'attachment', 'image/jpeg', 0),
(231, 1, '2018-08-28 07:17:01', '2018-08-28 07:17:01', '', 'certi8', '', 'inherit', 'open', 'closed', '', 'certi8', '', '', '2018-08-28 07:17:01', '2018-08-28 07:17:01', '', 227, 'http://localhost/iwire/wp-content/uploads/2018/08/certi8.jpg', 0, 'attachment', 'image/jpeg', 0),
(232, 1, '2018-08-28 07:17:08', '2018-08-28 07:17:08', '', 'certi9', '', 'inherit', 'open', 'closed', '', 'certi9', '', '', '2018-08-28 07:17:08', '2018-08-28 07:17:08', '', 227, 'http://localhost/iwire/wp-content/uploads/2018/08/certi9.jpg', 0, 'attachment', 'image/jpeg', 0),
(236, 1, '2018-08-28 07:34:29', '2018-08-28 07:34:29', '', 'UL', '', 'publish', 'closed', 'closed', '', 'ul', '', '', '2018-08-28 07:34:29', '2018-08-28 07:34:29', '', 0, 'http://localhost/iwire/?post_type=certificate&#038;p=236', 0, 'certificate', '', 0),
(237, 1, '2018-08-28 07:49:41', '2018-08-28 07:49:41', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-2', '', '', '2018-08-28 07:49:41', '2018-08-28 07:49:41', '', 0, 'http://localhost/iwire/wp-content/uploads/2018/08/logo-1.png', 0, 'attachment', 'image/png', 0),
(239, 1, '2018-08-28 08:52:38', '2018-08-28 08:52:38', '', 'Front Page', '', 'publish', 'closed', 'closed', '', 'hestia-front', '', '', '2018-08-28 12:44:17', '2018-08-28 12:44:17', '', 0, 'http://localhost/iwire/hestia-front/', 0, 'page', '', 0),
(240, 1, '2018-08-28 08:52:39', '2018-08-28 08:52:39', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-08-28 08:52:39', '2018-08-28 08:52:39', '', 0, 'http://localhost/iwire/blog/', 0, 'page', '', 0),
(242, 1, '2018-08-28 09:20:09', '2018-08-28 09:20:09', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo-3', '', '', '2018-08-28 09:20:09', '2018-08-28 09:20:09', '', 0, 'http://localhost/iwire/wp-content/uploads/2018/08/logo-1.png', 0, 'attachment', 'image/png', 0),
(244, 1, '2018-08-28 09:21:19', '2018-08-28 09:21:19', '', 'about', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-08-28 09:21:19', '2018-08-28 09:21:19', '', 10, 'http://localhost/iwire/2018/08/28/10-revision-v1/', 0, 'revision', '', 0),
(246, 1, '2018-08-28 09:25:02', '2018-08-28 09:25:02', '', 'home', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2018-08-28 09:25:02', '2018-08-28 09:25:02', '', 10, 'http://localhost/iwire/2018/08/28/10-revision-v1/', 0, 'revision', '', 0),
(247, 1, '2018-08-28 09:32:01', '2018-08-28 09:32:01', '', 'Front Page', '', 'inherit', 'closed', 'closed', '', '239-revision-v1', '', '', '2018-08-28 09:32:01', '2018-08-28 09:32:01', '', 239, 'http://localhost/iwire/2018/08/28/239-revision-v1/', 0, 'revision', '', 0),
(249, 1, '2018-08-28 10:58:19', '2018-08-28 10:58:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"239\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'slider', 'slider', 'publish', 'closed', 'closed', '', 'group_5b8529e1d243b', '', '', '2018-08-28 12:03:33', '2018-08-28 12:03:33', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=249', 0, 'acf-field-group', '', 0),
(250, 1, '2018-08-28 10:58:20', '2018-08-28 10:58:20', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:5:\"Image\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'slider', 'slider', 'publish', 'closed', 'closed', '', 'field_5b852a8a20da9', '', '', '2018-08-28 11:27:32', '2018-08-28 11:27:32', '', 249, 'http://localhost/iwire/?post_type=acf-field&#038;p=250', 0, 'acf-field', '', 0),
(254, 1, '2018-08-29 11:50:30', '2018-08-29 11:50:30', '', 'product type', '', 'publish', 'closed', 'closed', '', 'protype', '', '', '2018-08-30 06:07:50', '2018-08-30 06:07:50', '', 0, 'http://localhost/iwire/?page_id=254', 0, 'page', '', 0),
(255, 1, '2018-08-29 11:50:30', '2018-08-29 11:50:30', '', 'test cat', '', 'inherit', 'closed', 'closed', '', '254-revision-v1', '', '', '2018-08-29 11:50:30', '2018-08-29 11:50:30', '', 254, 'http://localhost/iwire/2018/08/29/254-revision-v1/', 0, 'revision', '', 0),
(256, 1, '2018-08-29 12:10:05', '2018-08-29 12:10:05', '', 'category', '', 'inherit', 'closed', 'closed', '', '254-revision-v1', '', '', '2018-08-29 12:10:05', '2018-08-29 12:10:05', '', 254, 'http://localhost/iwire/2018/08/29/254-revision-v1/', 0, 'revision', '', 0),
(252, 1, '2018-08-28 11:06:36', '2018-08-28 11:06:36', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'slider', 'publish', 'closed', 'closed', '', 'field_5b852ca8410a7', '', '', '2018-08-28 12:03:33', '2018-08-28 12:03:33', '', 250, 'http://localhost/iwire/?post_type=acf-field&#038;p=252', 0, 'acf-field', '', 0),
(257, 1, '2018-08-29 12:35:47', '2018-08-29 12:35:47', '', 'p', '', 'inherit', 'closed', 'closed', '', '254-autosave-v1', '', '', '2018-08-29 12:35:47', '2018-08-29 12:35:47', '', 254, 'http://localhost/iwire/2018/08/29/254-autosave-v1/', 0, 'revision', '', 0),
(258, 1, '2018-08-29 12:36:13', '2018-08-29 12:36:13', '', 'product type', '', 'inherit', 'closed', 'closed', '', '254-revision-v1', '', '', '2018-08-29 12:36:13', '2018-08-29 12:36:13', '', 254, 'http://localhost/iwire/2018/08/29/254-revision-v1/', 0, 'revision', '', 0),
(259, 1, '2018-08-30 05:31:24', '2018-08-30 05:31:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:10:\"allproduct\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Details Image', 'details-image', 'publish', 'closed', 'closed', '', 'group_5b8780b81a843', '', '', '2018-08-30 05:31:24', '2018-08-30 05:31:24', '', 0, 'http://localhost/iwire/?post_type=acf-field-group&#038;p=259', 0, 'acf-field-group', '', 0),
(260, 1, '2018-08-30 05:31:24', '2018-08-30 05:31:24', 'a:10:{s:4:\"type\";s:4:\"file\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:7:\"library\";s:3:\"all\";s:8:\"min_size\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', '', 'Product Details Image', 'publish', 'closed', 'closed', '', 'field_5b8780d4f2225', '', '', '2018-08-30 05:31:24', '2018-08-30 05:31:24', '', 259, 'http://localhost/iwire/?post_type=acf-field&p=260', 0, 'acf-field', '', 0),
(261, 1, '2018-08-30 05:33:57', '2018-08-30 05:33:57', '', 'php_tutorial', '', 'inherit', 'open', 'closed', '', 'php_tutorial', '', '', '2018-08-30 05:33:57', '2018-08-30 05:33:57', '', 193, 'http://localhost/iwire/wp-content/uploads/2018/08/php_tutorial.pdf', 0, 'attachment', 'application/pdf', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 10, 'Try', 'ffff'),
(2, 10, '_Try', 'field_5b8100b4551b4');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Switchboard Cable', 'switchboard-cable', 0),
(4, 'Hook Up', 'hook-up', 0),
(5, 'Flexible Power Cable', 'flexible-power-cable', 0),
(6, 'VCT-F MVV -S', 'vct-f-mvv-s', 0),
(7, 'Marine Cable', 'marine-cable', 0),
(8, 'AS AP', 'as-ap', 0),
(9, 'Others Product', 'others-product', 0),
(10, 'amb', 'amb', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(142, 1, 0),
(6, 2, 0),
(7, 2, 0),
(1, 5, 0),
(26, 2, 0),
(25, 2, 0),
(24, 2, 0),
(60, 3, 0),
(62, 4, 0),
(73, 6, 0),
(180, 5, 0),
(187, 4, 0),
(188, 3, 0),
(189, 6, 0),
(192, 8, 0),
(190, 7, 0),
(190, 8, 0),
(193, 9, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', 'Switchboard Cable', 0, 2),
(4, 4, 'category', 'Hook Up', 0, 2),
(5, 5, 'category', 'Flexible Power Cable', 0, 2),
(6, 6, 'category', 'VCT-F MVV -S', 0, 2),
(7, 7, 'category', 'Marine Cable', 0, 1),
(8, 8, 'category', 'AS AP', 0, 2),
(9, 9, 'category', 'Others Product', 0, 1),
(10, 10, 'products', 'test', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'wordpress'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:1:{s:64:\"31915223cf892250ef804b970f981f14a8900424a8c74596f7a8ed56e16fff95\";a:4:{s:10:\"expiration\";i:1551334552;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:113:\"Mozilla/5.0 (Windows NT 6.1; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/71.0.3578.98 Safari/537.36\";s:5:\"login\";i:1550124952;}}'),
(17, 1, 'wp_user-settings', 'mfold=o&editor=html&libraryContent=browse'),
(18, 1, 'wp_user-settings-time', '1535346659'),
(19, 1, 'wp_dashboard_quick_press_last_post_id', '262'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(25, 1, 'meta-box-order_post', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,categorydiv,tagsdiv-post_tag,postimagediv\";s:6:\"normal\";s:276:\"acf-group_5b7bd503133f6,acf-group_5b7bd87b876a0,acf-group_5b7bd9a7e4f51,acf-group_5b7bdaad38d32,acf-group_5b7bdbf3884a6,acf-group_5b7bdc696f535,acf-group_5b7bdc9b99c63,acf-group_5b7bdccc7fd87,acf-group_5b7bdd2c338b8,postexcerpt,trackbacksdiv,commentstatusdiv,slugdiv,authordiv\";s:8:\"advanced\";s:0:\"\";}'),
(23, 1, 'closedpostboxes_post', 'a:0:{}'),
(24, 1, 'metaboxhidden_post', 'a:7:{i:0;s:23:\"acf-group_5b8106995aff2\";i:1;s:23:\"acf-group_5b8100540ab2b\";i:2;s:11:\"postexcerpt\";i:3;s:13:\"trackbacksdiv\";i:4;s:16:\"commentstatusdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(26, 1, 'screen_layout_post', '2'),
(27, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(28, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(29, 1, 'acf_user_settings', 'a:1:{s:15:\"show_field_keys\";s:1:\"0\";}'),
(30, 1, 'closedpostboxes_allproduct', 'a:2:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";}'),
(31, 1, 'metaboxhidden_allproduct', 'a:11:{i:0;s:23:\"acf-group_5b7bd9a7e4f51\";i:1;s:23:\"acf-group_5b7bd503133f6\";i:2;s:23:\"acf-group_5b7bdd2c338b8\";i:3;s:23:\"acf-group_5b7bdc696f535\";i:4;s:23:\"acf-group_5b7bdc9b99c63\";i:5;s:23:\"acf-group_5b7bdccc7fd87\";i:6;s:23:\"acf-group_5b7bdbf3884a6\";i:7;s:23:\"acf-group_5b8100540ab2b\";i:8;s:23:\"acf-group_5b7bd87b876a0\";i:9;s:23:\"acf-group_5b7bdaad38d32\";i:10;s:7:\"slugdiv\";}'),
(32, 1, 'meta-box-order_allproduct', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:51:\"submitdiv,postimagediv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:655:\"acf-group_5b84e4d11020f,acf-group_5b84ebc0031b6,acf-group_5b84ec83a0711,acf-group_5b84eca36cc0b,acf-group_5b8529e1d243b,acf-group_5b7bd9a7e4f51,acf-group_5b7bd503133f6,acf-group_5b8106995aff2,acf-group_5b7bdd2c338b8,acf-group_5b81083d6448d,acf-group_5b8108c4c30d2,acf-group_5b810a2151675,acf-group_5b810a7c34e03,acf-group_5b810ab51c1bf,acf-group_5b810b0ba05cf,acf-group_5b810b543dc05,acf-group_5b810b8d42ce6,acf-group_5b8780b81a843,acf-group_5b838c7395d76,acf-group_5b8114ea07c44,acf-group_5b7bdc696f535,acf-group_5b7bdc9b99c63,acf-group_5b7bdccc7fd87,acf-group_5b7bdbf3884a6,acf-group_5b8100540ab2b,acf-group_5b7bd87b876a0,acf-group_5b7bdaad38d32,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(33, 1, 'screen_layout_allproduct', '2'),
(34, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"192.168.0.0\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'wordpress', '$P$BhjpEB9Jz/Ps3/uVKw9j0.nr3.Lw4i1', 'wordpress', 'webgrity138@gmail.com', '', '2018-08-06 11:08:46', '', 0, 'wordpress');

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
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=864;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=598;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
