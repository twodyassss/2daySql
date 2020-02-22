-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-02-21 23:03:01
-- 服务器版本： 8.0.12
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `twodays`
--

-- --------------------------------------------------------

--
-- 表的结构 `td_commentmeta`
--

CREATE TABLE `td_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_comments`
--

CREATE TABLE `td_comments` (
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

-- --------------------------------------------------------

--
-- 表的结构 `td_links`
--

CREATE TABLE `td_links` (
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
-- 表的结构 `td_mycred_log`
--

CREATE TABLE `td_mycred_log` (
  `id` int(11) NOT NULL,
  `ref` varchar(256) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ref_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `creds` bigint(22) DEFAULT NULL,
  `ctype` varchar(64) COLLATE utf8mb4_unicode_520_ci DEFAULT 'mycred_default',
  `time` bigint(20) DEFAULT NULL,
  `entry` longtext COLLATE utf8mb4_unicode_520_ci,
  `data` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_options`
--

CREATE TABLE `td_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_options`
--

INSERT INTO `td_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/twodayssss', 'yes'),
(2, 'home', 'http://localhost/twodayssss', 'yes'),
(3, 'blogname', '两天网', 'yes'),
(4, 'blogdescription', '希望你在“两天网”拥有一个美好周末的两天！', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'twodayssss@gmail.com', 'yes'),
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
(23, 'date_format', 'Y年n月j日', 'yes'),
(24, 'time_format', 'ag:i', 'yes'),
(25, 'links_updated_date_format', 'Y年n月j日ag:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '', 'yes'),
(29, 'rewrite_rules', '', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:3:{i:0;s:35:\"ultimate-member/ultimate-member.php\";i:1;s:27:\"woocommerce/woocommerce.php\";i:2;s:41:\"two-dayssss-importer/two-dayssss-importer.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twodayssss', 'yes'),
(41, 'stylesheet', 'twodayssss', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '45805', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '0', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(77, 'sticky_posts', 'a:1:{i:0;i:281;}', 'yes'),
(78, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:12:\"关于本站\";s:4:\"text\";s:108:\"这里也许是个介绍您自己的好地方，也能介绍您的网站或放进一些工作人员名单。\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:12:\"联系我们\";s:4:\"text\";s:168:\"<strong>地址</strong>\n123 Main Street\nNew York, NY 10001\n\n<strong>营业时间</strong>\n星期一&mdash;五：9:00&ndash;17:00\n星期六&mdash;日：11:00&ndash;15:00\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:1:{s:85:\"D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/mycred.php\";s:23:\"mycred_plugin_uninstall\";}', 'no'),
(82, 'timezone_string', 'Asia/Shanghai', 'yes'),
(83, 'page_for_posts', '13', 'yes'),
(84, 'page_on_front', '10', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1597852963', 'yes'),
(94, 'initial_db_version', '45805', 'yes'),
(95, 'td_user_roles', 'a:7:{s:13:\"administrator\";a:56:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}s:13:\"_um_is_custom\";s:1:\"0\";s:12:\"_um_priority\";s:0:\"\";s:12:\"_um_profilec\";s:1:\"1\";s:16:\"_um_profilec_pct\";s:3:\"100\";s:22:\"_um_allocated_progress\";s:1:\"0\";s:25:\"_um_profilec_upgrade_role\";s:1:\"0\";s:27:\"_um_profilec_prevent_browse\";s:1:\"0\";s:41:\"_um_profilec_prevent_browse_exclude_pages\";s:0:\"\";s:32:\"_um_profilec_prevent_profileview\";s:1:\"0\";s:28:\"_um_profilec_prevent_comment\";s:1:\"0\";s:23:\"_um_profilec_prevent_bb\";s:1:\"0\";s:22:\"_um_can_access_wpadmin\";s:1:\"1\";s:24:\"_um_can_not_see_adminbar\";s:1:\"0\";s:21:\"_um_can_edit_everyone\";s:1:\"1\";s:18:\"_um_can_edit_roles\";s:0:\"\";s:23:\"_um_can_delete_everyone\";s:1:\"1\";s:20:\"_um_can_delete_roles\";s:0:\"\";s:20:\"_um_can_edit_profile\";s:1:\"1\";s:22:\"_um_can_delete_profile\";s:1:\"1\";s:16:\"_um_can_view_all\";s:1:\"1\";s:18:\"_um_can_view_roles\";s:0:\"\";s:28:\"_um_can_make_private_profile\";s:1:\"1\";s:30:\"_um_can_access_private_profile\";s:1:\"1\";s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";s:20:\"_um_auto_approve_url\";s:0:\"\";s:24:\"_um_login_email_activate\";s:1:\"0\";s:20:\"_um_checkmail_action\";s:12:\"show_message\";s:21:\"_um_checkmail_message\";s:168:\"感谢注册我们的网站。我们已经给您发送了一封激活邮件，您需要点击邮件中的激活链接来激活您的账号，然后就可以登录了。\";s:17:\"_um_checkmail_url\";s:0:\"\";s:22:\"_um_url_email_activate\";s:0:\"\";s:18:\"_um_pending_action\";s:12:\"show_message\";s:19:\"_um_pending_message\";s:135:\"感谢您提交申请成为我们的用户。我们将查看您的信息然后发送邮件给您，告知您是否成功通过审核。\";s:15:\"_um_pending_url\";s:0:\"\";s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:22:\"_um_login_redirect_url\";s:0:\"\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:23:\"_um_logout_redirect_url\";s:0:\"\";s:16:\"_um_after_delete\";s:13:\"redirect_home\";s:23:\"_um_delete_redirect_url\";s:0:\"\";s:20:\"_um_enable_messaging\";s:1:\"1\";s:16:\"_um_can_start_pm\";s:1:\"1\";s:15:\"_um_can_read_pm\";s:1:\"1\";s:16:\"_um_can_reply_pm\";s:1:\"1\";s:19:\"_um_pm_max_messages\";s:0:\"\";s:22:\"_um_pm_max_messages_tf\";s:0:\"\";s:19:\"_um_enable_bookmark\";s:1:\"1\";s:14:\"_um_can_friend\";s:1:\"1\";s:20:\"_um_can_friend_roles\";s:0:\"\";s:18:\"_um_show_user_tags\";s:1:\"0\";s:14:\"_um_can_follow\";s:1:\"1\";s:20:\"_um_can_follow_roles\";s:0:\"\";s:23:\"_um_can_transfer_mycred\";s:1:\"0\";s:25:\"_um_cannot_receive_mycred\";s:1:\"0\";}s:6:\"editor\";a:16:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:6:\"author\";a:16:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:11:\"contributor\";a:16:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:10:\"subscriber\";a:16:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'zh_CN', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:10:\"archives-2\";i:1;s:6:\"meta-2\";i:2;s:8:\"search-2\";i:3;s:12:\"categories-2\";i:4;s:14:\"recent-posts-2\";i:5;s:17:\"recent-comments-2\";}s:9:\"sidebar-1\";a:2:{i:0;s:6:\"text-2\";i:1;s:6:\"text-3\";}s:11:\"sidebar-tag\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(148, 'nav_menu_options', 'a:1:{s:8:\"auto_add\";a:0:{}}', 'yes'),
(485, 'widget_um_my_groups', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(491, 'um_instagram_last_version_upgrade', '2.10.3', 'yes'),
(492, 'um_instagram_version', '2.10.3', 'yes'),
(497, 'um_mailchimp_last_version_upgrade', '2.10.1', 'yes'),
(498, 'um_mailchimp_version', '2.10.1', 'yes'),
(501, 'um_messaging_last_version_upgrade', '2.20.4', 'yes'),
(502, 'um_messaging_version', '2.20.4', 'yes'),
(503, 'ultimatemember_messaging_db2', '2.20.4', 'yes'),
(383, 'um_user_tags_last_version_upgrade', '2.10.9', 'yes'),
(384, 'um_user_tags_version', '2.10.9', 'yes'),
(385, 'widget_um_user_tags', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(398, 'um_user_tags_defaults', '1', 'yes'),
(422, 'um_user_tag_children', 'a:2:{i:23;a:6:{i:0;i:25;i:1;i:26;i:2;i:27;i:3;i:28;i:4;i:29;i:5;i:35;}i:24;a:8:{i:0;i:30;i:1;i:31;i:2;i:32;i:3;i:33;i:4;i:34;i:5;i:36;i:6;i:37;i:7;i:38;}}', 'yes'),
(444, 'um_admin_footer_text_rated', '1', 'yes'),
(462, 'um_user_bookmarks_last_version_upgrade', '2.10.1', 'yes'),
(463, 'um_user_bookmarks_version', '2.10.1', 'yes'),
(534, 'um_cache_userdata_1', 'a:146:{s:2:\"ID\";i:1;s:10:\"user_login\";s:10:\"twodayssss\";s:9:\"user_pass\";s:34:\"$P$BMa3cGX1hO5xg6gO587lyD456hj4tU.\";s:13:\"user_nicename\";s:10:\"twodayssss\";s:10:\"user_email\";s:20:\"twodayssss@gmail.com\";s:8:\"user_url\";s:0:\"\";s:15:\"user_registered\";s:19:\"2020-02-21 16:02:43\";s:11:\"user_status\";s:1:\"0\";s:12:\"display_name\";s:10:\"twodayssss\";s:13:\"administrator\";b:1;s:8:\"wp_roles\";s:13:\"administrator\";s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:6:\"filter\";N;s:16:\"\0WP_User\0site_id\";i:1;s:8:\"nickname\";s:10:\"twodayssss\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"rich_editing\";s:4:\"true\";s:19:\"syntax_highlighting\";s:4:\"true\";s:17:\"comment_shortcuts\";s:5:\"false\";s:11:\"admin_color\";s:5:\"fresh\";s:7:\"use_ssl\";s:1:\"0\";s:20:\"show_admin_bar_front\";s:4:\"true\";s:6:\"locale\";s:0:\"\";s:15:\"td_capabilities\";s:31:\"a:1:{s:13:\"administrator\";b:1;}\";s:13:\"td_user_level\";s:2:\"10\";s:18:\"show_welcome_panel\";s:1:\"1\";s:16:\"td_user-settings\";s:33:\"editor=html&libraryContent=browse\";s:21:\"td_user-settings-time\";s:10:\"1582300987\";s:37:\"td_dashboard_quick_press_last_post_id\";s:1:\"4\";s:14:\"account_status\";s:8:\"approved\";s:24:\"um_member_directory_data\";s:137:\"a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:1;s:11:\"cover_photo\";b:1;s:8:\"verified\";b:0;}\";s:35:\"um_user_profile_url_slug_user_login\";s:10:\"twodayssss\";s:25:\"community-events-location\";s:31:\"a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}\";s:24:\"um_account_secure_fields\";s:345:\"a:4:{s:7:\"privacy\";a:4:{i:0;s:19:\"_hide_online_status\";i:1;s:15:\"profile_privacy\";i:2;s:15:\"hide_in_members\";i:4;s:19:\"um_bookmark_privacy\";}s:7:\"general\";a:4:{i:0;s:10:\"user_login\";i:1;s:10:\"first_name\";i:2;s:9:\"last_name\";i:3;s:10:\"user_email\";}s:8:\"password\";a:1:{i:0;s:13:\"user_password\";}s:6:\"delete\";a:1:{i:0;s:20:\"single_user_password\";}}\";s:14:\"_um_last_login\";s:10:\"1582335433\";s:11:\"cover_photo\";s:15:\"cover_photo.jpg\";s:13:\"profile_photo\";s:17:\"profile_photo.jpg\";s:19:\"account_status_name\";s:6:\"批准\";s:4:\"role\";s:13:\"administrator\";s:5:\"roles\";a:1:{i:0;s:13:\"administrator\";}s:9:\"is_custom\";s:1:\"0\";s:8:\"priority\";s:0:\"\";s:8:\"profilec\";s:1:\"1\";s:12:\"profilec_pct\";s:3:\"100\";s:18:\"allocated_progress\";s:1:\"0\";s:21:\"profilec_upgrade_role\";s:1:\"0\";s:23:\"profilec_prevent_browse\";s:1:\"0\";s:37:\"profilec_prevent_browse_exclude_pages\";s:0:\"\";s:28:\"profilec_prevent_profileview\";s:1:\"0\";s:24:\"profilec_prevent_comment\";s:1:\"0\";s:19:\"profilec_prevent_bb\";s:1:\"0\";s:18:\"can_access_wpadmin\";s:1:\"1\";s:20:\"can_not_see_adminbar\";s:1:\"0\";s:17:\"can_edit_everyone\";s:1:\"1\";s:14:\"can_edit_roles\";s:0:\"\";s:19:\"can_delete_everyone\";s:1:\"1\";s:16:\"can_delete_roles\";s:0:\"\";s:16:\"can_edit_profile\";s:1:\"1\";s:18:\"can_delete_profile\";s:1:\"1\";s:12:\"can_view_all\";s:1:\"1\";s:14:\"can_view_roles\";s:0:\"\";s:24:\"can_make_private_profile\";s:1:\"1\";s:26:\"can_access_private_profile\";s:1:\"1\";s:6:\"status\";s:8:\"approved\";s:16:\"auto_approve_act\";s:16:\"redirect_profile\";s:16:\"auto_approve_url\";s:0:\"\";s:20:\"login_email_activate\";s:1:\"0\";s:16:\"checkmail_action\";s:12:\"show_message\";s:17:\"checkmail_message\";s:168:\"感谢注册我们的网站。我们已经给您发送了一封激活邮件，您需要点击邮件中的激活链接来激活您的账号，然后就可以登录了。\";s:13:\"checkmail_url\";s:0:\"\";s:18:\"url_email_activate\";s:0:\"\";s:14:\"pending_action\";s:12:\"show_message\";s:15:\"pending_message\";s:135:\"感谢您提交申请成为我们的用户。我们将查看您的信息然后发送邮件给您，告知您是否成功通过审核。\";s:11:\"pending_url\";s:0:\"\";s:11:\"after_login\";s:14:\"redirect_admin\";s:18:\"login_redirect_url\";s:0:\"\";s:12:\"after_logout\";s:13:\"redirect_home\";s:19:\"logout_redirect_url\";s:0:\"\";s:12:\"after_delete\";s:13:\"redirect_home\";s:19:\"delete_redirect_url\";s:0:\"\";s:16:\"enable_messaging\";s:1:\"1\";s:12:\"can_start_pm\";s:1:\"1\";s:11:\"can_read_pm\";s:1:\"1\";s:12:\"can_reply_pm\";s:1:\"1\";s:15:\"pm_max_messages\";s:0:\"\";s:18:\"pm_max_messages_tf\";s:0:\"\";s:15:\"enable_bookmark\";s:1:\"1\";s:10:\"can_friend\";s:1:\"1\";s:16:\"can_friend_roles\";s:0:\"\";s:14:\"show_user_tags\";s:1:\"0\";s:10:\"can_follow\";s:1:\"1\";s:16:\"can_follow_roles\";s:0:\"\";s:19:\"can_transfer_mycred\";s:1:\"0\";s:21:\"cannot_receive_mycred\";s:1:\"0\";s:11:\"super_admin\";i:1;}', 'no'),
(476, 'um_friends_last_version_upgrade', '2.10.3', 'yes'),
(477, 'um_friends_version', '2.10.3', 'yes'),
(478, 'ultimatemember_friends_db', '2.10.3', 'yes'),
(479, 'widget_um_my_friends', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(480, 'widget_um_my_friends_online', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(482, 'um_groups_last_version_upgrade', '2.10.6', 'yes'),
(483, 'um_groups_version', '2.10.6', 'yes'),
(484, 'ultimatemember_groups_db', '2.10.6', 'yes'),
(104, 'cron', 'a:20:{i:1582347723;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:0:{}s:8:\"interval\";i:60;}}}i:1582347765;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582347827;a:1:{s:26:\"um_hourly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1582350842;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1582358042;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582368842;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582373027;a:1:{s:30:\"um_twicedaily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582387200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582387364;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582387365;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1582387416;a:3:{s:28:\"um_check_extensions_licenses\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582388185;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"b4267a67df0cfb11e30d6396f858b5c9\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:40;}}}}i:1582390227;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"9faa5555021560fb2a78d8c9f3513bc5\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:42;}}}}i:1582390430;a:1:{s:26:\"importer_scheduled_cleanup\";a:1:{s:32:\"0788f78fe69d70d1d4752e57aa22b566\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:357;}}}}i:1582416227;a:1:{s:25:\"um_daily_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582433642;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582433652;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1582934627;a:1:{s:26:\"um_weekly_scheduled_events\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1583643302;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:5:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:3:{s:7:\"primary\";i:2;s:8:\"expanded\";i:3;s:6:\"social\";i:4;}s:11:\"custom_logo\";i:15;s:11:\"retina_logo\";b:1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1582301691;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:1:{i:0;s:6:\"text-2\";}s:9:\"sidebar-2\";a:1:{i:0;s:6:\"text-3\";}}}}', 'yes'),
(116, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:2:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.two-dayssss.org/release/zh_CN/two-dayssss-5.3.2.zip\";s:6:\"locale\";s:5:\"zh_CN\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.two-dayssss.org/release/zh_CN/two-dayssss-5.3.2.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.two-dayssss.org/release/two-dayssss-5.3.2.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.two-dayssss.org/release/two-dayssss-5.3.2.zip\";s:10:\"no_content\";s:70:\"https://downloads.two-dayssss.org/release/two-dayssss-5.3.2-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.two-dayssss.org/release/two-dayssss-5.3.2-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.3.2\";s:7:\"version\";s:5:\"5.3.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1582346990;s:15:\"version_checked\";s:5:\"5.3.2\";s:12:\"translations\";a:0:{}}', 'no'),
(118, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1582347229;s:7:\"checked\";a:3:{s:35:\"ultimate-member/ultimate-member.php\";s:5:\"2.1.3\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.9.2\";s:41:\"two-dayssss-importer/two-dayssss-importer.php\";s:5:\"0.6.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"3.9.2\";s:7:\"updated\";s:19:\"2020-02-22 01:54:26\";s:7:\"package\";s:77:\"http://downloads.two-dayssss.org/translation/plugin/woocommerce/3.9.2/zh_CN.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:35:\"ultimate-member/ultimate-member.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:29:\"w.org/plugins/ultimate-member\";s:4:\"slug\";s:15:\"ultimate-member\";s:6:\"plugin\";s:35:\"ultimate-member/ultimate-member.php\";s:11:\"new_version\";s:5:\"2.1.3\";s:3:\"url\";s:46:\"https://two-dayssss.org/plugins/ultimate-member/\";s:7:\"package\";s:63:\"http://downloads.two-dayssss.org/plugin/ultimate-member.2.1.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-256x256.png?rev=2143339\";s:2:\"1x\";s:68:\"https://ps.w.org/ultimate-member/assets/icon-128x128.png?rev=2143339\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/ultimate-member/assets/banner-1544x500.png?rev=2143172\";s:2:\"1x\";s:70:\"https://ps.w.org/ultimate-member/assets/banner-772x250.png?rev=2143172\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.9.2\";s:3:\"url\";s:42:\"https://two-dayssss.org/plugins/woocommerce/\";s:7:\"package\";s:59:\"http://downloads.two-dayssss.org/plugin/woocommerce.3.9.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:41:\"two-dayssss-importer/two-dayssss-importer.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:32:\"w.org/plugins/two-dayssss-importer\";s:4:\"slug\";s:18:\"two-dayssss-importer\";s:6:\"plugin\";s:41:\"two-dayssss-importer/two-dayssss-importer.php\";s:11:\"new_version\";s:5:\"0.6.4\";s:3:\"url\";s:49:\"https://two-dayssss.org/plugins/two-dayssss-importer/\";s:7:\"package\";s:66:\"http://downloads.two-dayssss.org/plugin/two-dayssss-importer.0.6.4.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:71:\"https://ps.w.org/two-dayssss-importer/assets/icon-256x256.png?rev=1908375\";s:2:\"1x\";s:63:\"https://ps.w.org/two-dayssss-importer/assets/icon.svg?rev=1908375\";s:3:\"svg\";s:63:\"https://ps.w.org/two-dayssss-importer/assets/icon.svg?rev=1908375\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/two-dayssss-importer/assets/banner-772x250.png?rev=547654\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(618, '_site_transient_timeout_theme_roots', '1582348794', 'no'),
(619, '_site_transient_theme_roots', 'a:2:{s:12:\"twentytwenty\";s:7:\"/themes\";s:10:\"twodayssss\";s:7:\"/themes\";}', 'no'),
(122, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1582346998;s:7:\"checked\";a:2:{s:12:\"twentytwenty\";s:3:\"1.1\";s:10:\"twodayssss\";s:5:\"1.1.1\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(123, '_site_transient_timeout_browser_65f29516619e512285e456d1418987ae', '1582905787', 'no'),
(124, '_site_transient_browser_65f29516619e512285e456d1418987ae', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"80.0.3987.116\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, 'um_last_version_upgrade', '2.1.3', 'yes'),
(125, 'can_compress_scripts', '1', 'no'),
(126, '_transient_timeout_plugin_slugs', '1582433871', 'no'),
(127, '_transient_plugin_slugs', 'a:3:{i:0;s:35:\"ultimate-member/ultimate-member.php\";i:1;s:27:\"woocommerce/woocommerce.php\";i:2;s:41:\"two-dayssss-importer/two-dayssss-importer.php\";}', 'no'),
(128, 'recently_activated', 'a:0:{}', 'yes'),
(621, '_transient_timeout_dash_v2_5438fb5baf31c513fff2b9a1067656a6', '1582390260', 'no'),
(622, '_transient_dash_v2_5438fb5baf31c513fff2b9a1067656a6', '<div class=\"rss-widget\"><p><strong>RSS错误：</strong> A feed could not be found at https://two-dayssss.org/news/feed/. A feed with an invalid mime type may fall victim to this error, or SimplePie was unable to auto-discover it.. Use force_feed() if you are certain this URL is a real feed.</p></div><div class=\"rss-widget\"><p><strong>RSS错误：</strong> WP HTTP Error: cURL error 28: Operation timed out after 10000 milliseconds with 0 bytes received</p></div>', 'no'),
(132, 'um_first_activation_date', '1582301016', 'yes'),
(133, 'um_version', '2.1.3', 'yes'),
(134, '__ultimatemember_sitekey', 'localhost/twodayssss-1WomeavHqU8RDrNFVeKh', 'yes'),
(135, 'um_is_installed', '1', 'yes'),
(136, 'um_core_forms', 'a:3:{s:8:\"register\";i:5;s:5:\"login\";i:6;s:7:\"profile\";i:7;}', 'yes'),
(137, 'um_core_directories', 'a:1:{s:7:\"members\";i:8;}', 'yes');
INSERT INTO `td_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(138, 'um_options', 'a:397:{s:30:\"restricted_access_post_metabox\";a:2:{s:4:\"post\";i:1;s:4:\"page\";i:1;}s:19:\"uninstall_on_delete\";i:0;s:14:\"permalink_base\";s:10:\"user_login\";s:12:\"display_name\";s:9:\"full_name\";s:18:\"display_name_field\";s:0:\"\";s:15:\"author_redirect\";i:1;s:12:\"members_page\";i:1;s:13:\"use_gravatars\";i:0;s:37:\"use_um_gravatar_default_builtin_image\";s:7:\"default\";s:29:\"use_um_gravatar_default_image\";i:0;s:24:\"reset_require_strongpass\";i:0;s:20:\"account_tab_password\";i:1;s:19:\"account_tab_privacy\";i:1;s:25:\"account_tab_notifications\";i:1;s:18:\"account_tab_delete\";i:1;s:19:\"delete_account_text\";s:147:\"您确定要删除您的账号吗？此操作将从网站上删除您账号的所有数据。要删除您的账号，请在下面输入您的密码\";s:12:\"account_name\";i:1;s:20:\"account_name_disable\";i:0;s:20:\"account_name_require\";i:1;s:13:\"account_email\";i:1;s:24:\"account_general_password\";i:0;s:25:\"account_hide_in_directory\";i:1;s:33:\"account_hide_in_directory_default\";s:2:\"No\";s:26:\"account_require_strongpass\";i:0;s:17:\"photo_thumb_sizes\";a:3:{i:0;i:40;i:1;i:80;i:2;i:190;}s:17:\"cover_thumb_sizes\";a:2:{i:0;i:300;i:1;i:600;}s:10:\"accessible\";i:0;s:15:\"access_redirect\";s:0:\"\";s:19:\"access_exclude_uris\";a:0:{}s:20:\"home_page_accessible\";i:1;s:24:\"category_page_accessible\";i:1;s:25:\"restricted_access_message\";s:0:\"\";s:17:\"restricted_blocks\";i:0;s:13:\"enable_blocks\";i:0;s:24:\"restricted_block_message\";s:0:\"\";s:27:\"enable_reset_password_limit\";i:1;s:27:\"reset_password_limit_number\";i:3;s:14:\"blocked_emails\";s:0:\"\";s:13:\"blocked_words\";s:47:\"admin\r\nadministrator\r\nwebmaster\r\nsupport\r\nstaff\";s:14:\"default_avatar\";s:0:\"\";s:13:\"default_cover\";s:0:\"\";s:28:\"disable_profile_photo_upload\";i:0;s:21:\"profile_show_metaicon\";i:0;s:12:\"profile_menu\";i:1;s:24:\"profile_menu_default_tab\";s:4:\"main\";s:18:\"profile_menu_icons\";i:1;s:13:\"form_asterisk\";i:0;s:13:\"profile_title\";s:28:\"{display_name} | {site_name}\";s:12:\"profile_desc\";s:83:\"{display_name} is on {site_name}. Join {site_name} to view {display_name}\'s profile\";s:11:\"admin_email\";s:20:\"twodayssss@gmail.com\";s:9:\"mail_from\";s:9:\"两天网\";s:14:\"mail_from_addr\";s:20:\"twodayssss@gmail.com\";s:10:\"email_html\";i:1;s:17:\"image_compression\";i:60;s:15:\"image_max_width\";i:1000;s:15:\"cover_min_width\";i:1000;s:22:\"profile_photo_max_size\";i:999999999;s:20:\"cover_photo_max_size\";i:999999999;s:22:\"custom_roles_increment\";i:1;s:28:\"um_profile_object_cache_stop\";i:0;s:16:\"rest_api_version\";s:3:\"2.0\";s:26:\"member_directory_own_table\";i:0;s:21:\"profile_show_html_bio\";i:0;s:16:\"profile_tab_main\";i:1;s:24:\"profile_tab_main_privacy\";i:0;s:22:\"profile_tab_main_roles\";s:0:\"\";s:17:\"profile_tab_posts\";i:1;s:25:\"profile_tab_posts_privacy\";i:0;s:23:\"profile_tab_posts_roles\";s:0:\"\";s:20:\"profile_tab_comments\";i:1;s:28:\"profile_tab_comments_privacy\";i:0;s:26:\"profile_tab_comments_roles\";s:0:\"\";s:16:\"welcome_email_on\";b:1;s:17:\"welcome_email_sub\";s:23:\"Welcome to {site_name}!\";s:13:\"welcome_email\";s:365:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account is now active.<br /><br />To login please visit the following url:<br /><br />{login_url} <br /><br />Your account e-mail: {email} <br />Your account username: {username} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:18:\"checkmail_email_on\";b:0;s:19:\"checkmail_email_sub\";s:28:\"Please activate your account\";s:15:\"checkmail_email\";s:304:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! To activate your account, please click the link below to confirm your email address:<br /><br />{account_activation_link} <br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks, <br />{site_name}\";s:16:\"pending_email_on\";b:0;s:17:\"pending_email_sub\";s:30:\"[{site_name}] New user account\";s:13:\"pending_email\";s:309:\"Hi {display_name}, <br /><br />Thank you for signing up with {site_name}! Your account is currently being reviewed by a member of our team.<br /><br />Please allow us some time to process your request.<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"approved_email_on\";b:0;s:18:\"approved_email_sub\";s:41:\"Your account at {site_name} is now active\";s:14:\"approved_email\";s:438:\"Hi {display_name},<br /><br />Thank you for signing up with {site_name}! Your account has been approved and is now active.<br /><br />To login please visit the following url:<br /><br />{login_url}<br /><br />Your account e-mail: {email}<br />Your account username: {username}<br />Set your account password: {password_reset_link}<br /><br />If you have any problems, please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"rejected_email_on\";b:0;s:18:\"rejected_email_sub\";s:30:\"Your account has been rejected\";s:14:\"rejected_email\";s:288:\"Hi {display_name},<br /><br />Thank you for applying for membership to {site_name}! We have reviewed your information and unfortunately we are unable to accept you as a member at this moment.<br /><br />Please feel free to apply again at a future date.<br /><br />Thanks,<br />{site_name}\";s:17:\"inactive_email_on\";b:1;s:18:\"inactive_email_sub\";s:33:\"Your account has been deactivated\";s:14:\"inactive_email\";s:250:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deactivated.<br /><br />If you would like your account to be reactivated please contact us at {admin_email}<br /><br />Thanks,<br />{site_name}\";s:17:\"deletion_email_on\";b:1;s:18:\"deletion_email_sub\";s:29:\"Your account has been deleted\";s:14:\"deletion_email\";s:355:\"Hi {display_name},<br /><br />This is an automated email to let you know your {site_name} account has been deleted. All of your personal information has been permanently deleted and you will no longer be able to login to {site_name}.<br /><br />If your account has been deleted by accident please contact us at {admin_email} <br />Thanks,<br />{site_name}\";s:16:\"resetpw_email_on\";b:1;s:17:\"resetpw_email_sub\";s:19:\"Reset your password\";s:13:\"resetpw_email\";s:303:\"Hi {display_name},<br /><br />We received a request to reset the password for your account. If you made this request, click the link below to change your password:<br /><br />{password_reset_link}<br /><br />If you didn\'t make this request, you can ignore this email <br /><br />Thanks,<br />{site_name}\";s:18:\"changedpw_email_on\";b:1;s:19:\"changedpw_email_sub\";s:42:\"Your {site_name} password has been changed\";s:15:\"changedpw_email\";s:307:\"Hi {display_name},<br /><br />You recently changed the password associated with your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:23:\"changedaccount_email_on\";b:1;s:24:\"changedaccount_email_sub\";s:39:\"Your account at {site_name} was updated\";s:20:\"changedaccount_email\";s:278:\"Hi {display_name},<br /><br />You recently updated your {site_name} account.<br /><br />If you did not make this change and believe your {site_name} account has been compromised, please contact us at the following email address: {admin_email}<br /><br />Thanks,<br />{site_name}\";s:24:\"notification_new_user_on\";b:1;s:25:\"notification_new_user_sub\";s:30:\"[{site_name}] New user account\";s:21:\"notification_new_user\";s:211:\"{display_name} has just created an account on {site_name}. To view their profile click here:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:22:\"notification_review_on\";b:0;s:23:\"notification_review_sub\";s:38:\"[{site_name}] New user awaiting review\";s:19:\"notification_review\";s:277:\"{display_name} has just applied for membership to {site_name} and is waiting to be reviewed.<br /><br />To review this member please click the following link:<br /><br />{user_profile_link}<br /><br />Here is the submitted registration form:<br /><br />{submitted_registration}\";s:24:\"notification_deletion_on\";b:0;s:25:\"notification_deletion_sub\";s:29:\"[{site_name}] Account deleted\";s:21:\"notification_deletion\";s:58:\"{display_name} has just deleted their {site_name} account.\";s:9:\"core_user\";i:33;s:10:\"core_login\";i:34;s:13:\"core_register\";i:35;s:12:\"core_members\";i:36;s:11:\"core_logout\";i:37;s:12:\"core_account\";i:38;s:19:\"core_password-reset\";i:39;s:17:\"profile_show_name\";i:1;s:25:\"profile_show_social_links\";i:0;s:16:\"profile_show_bio\";i:1;s:20:\"profile_bio_maxchars\";i:180;s:19:\"profile_header_menu\";s:2:\"bc\";s:18:\"profile_empty_text\";i:1;s:22:\"profile_empty_text_emo\";i:1;s:12:\"profile_role\";a:0:{}s:16:\"profile_template\";s:7:\"profile\";s:17:\"profile_max_width\";s:6:\"1000px\";s:22:\"profile_area_max_width\";s:5:\"600px\";s:13:\"profile_align\";s:6:\"center\";s:13:\"profile_icons\";s:5:\"label\";s:28:\"profile_disable_photo_upload\";i:0;s:17:\"profile_photosize\";s:3:\"190\";s:21:\"profile_cover_enabled\";i:1;s:17:\"profile_coversize\";s:8:\"original\";s:19:\"profile_cover_ratio\";s:5:\"2.7:1\";s:19:\"profile_photocorner\";s:1:\"1\";s:17:\"profile_header_bg\";s:0:\"\";s:24:\"profile_primary_btn_word\";s:18:\"更新个人资料\";s:21:\"profile_secondary_btn\";s:1:\"1\";s:26:\"profile_secondary_btn_word\";s:6:\"取消\";s:13:\"register_role\";s:1:\"0\";s:17:\"register_template\";s:8:\"register\";s:18:\"register_max_width\";s:5:\"450px\";s:14:\"register_align\";s:6:\"center\";s:14:\"register_icons\";s:5:\"label\";s:25:\"register_primary_btn_word\";s:6:\"注册\";s:22:\"register_secondary_btn\";i:1;s:27:\"register_secondary_btn_word\";s:6:\"登录\";s:26:\"register_secondary_btn_url\";s:0:\"\";s:14:\"login_template\";s:5:\"login\";s:15:\"login_max_width\";s:5:\"450px\";s:11:\"login_align\";s:6:\"center\";s:11:\"login_icons\";s:5:\"label\";s:22:\"login_primary_btn_word\";s:6:\"登录\";s:22:\"login_forgot_pass_link\";i:1;s:21:\"login_show_rememberme\";i:1;s:19:\"login_secondary_btn\";i:1;s:24:\"login_secondary_btn_word\";s:6:\"注册\";s:23:\"login_secondary_btn_url\";s:0:\"\";s:18:\"directory_template\";s:7:\"members\";s:16:\"directory_header\";s:20:\"{total_users} 用户\";s:23:\"directory_header_single\";s:23:\"{total_users} 个用户\";s:17:\"online_show_stats\";s:1:\"1\";s:20:\"followers_show_stats\";i:1;s:21:\"followers_show_button\";i:1;s:31:\"followers_allow_admin_to_follow\";i:0;s:15:\"new_follower_on\";i:1;s:16:\"new_follower_sub\";s:47:\"{follower} is now following you on {site_name}!\";s:12:\"new_follower\";s:303:\"Hi {followed},<br /><br />{follower} has just followed you on {site_name}.<br /><br />View his/her profile:<br />{follower_profile}<br /><br />Click on the following link to see your followers:<br />{followers_url}<br /><br />This is an automated notification from {site_name}. You do not need to reply.\";s:14:\"log_new_follow\";i:1;s:23:\"log_new_follow_template\";s:48:\"<strong>{member}</strong> has just followed you!\";s:17:\"user_tags_max_num\";i:5;s:21:\"profile_tab_bookmarks\";b:1;s:28:\"um_user_bookmarks_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:30:\"um_user_bookmarks_archive_page\";s:1:\"0\";s:26:\"um_user_bookmarks_position\";s:6:\"bottom\";s:26:\"um_user_bookmarks_add_text\";s:8:\"Bookmark\";s:29:\"um_user_bookmarks_remove_text\";s:15:\"Remove bookmark\";s:30:\"um_user_bookmarks_folders_text\";s:7:\"Folders\";s:29:\"um_user_bookmarks_folder_text\";s:6:\"Folder\";s:33:\"um_user_bookmarks_bookmarked_icon\";s:18:\"um-faicon-bookmark\";s:30:\"um_user_bookmarks_regular_icon\";s:20:\"um-faicon-bookmark-o\";s:19:\"profile_tab_friends\";i:1;s:27:\"profile_tab_friends_privacy\";i:0;s:18:\"friends_show_stats\";i:1;s:19:\"friends_show_button\";i:1;s:21:\"new_friend_request_on\";i:1;s:22:\"new_friend_request_sub\";s:52:\"{friend} wants to be friends with you on {site_name}\";s:18:\"new_friend_request\";s:268:\"Hi {receiver},<br /><br />{friend} has just sent you a friend request on {site_name}.<br /><br />View their profile to accept/reject this friendship request:<br />{friend_profile}<br /><br />This is an automated notification from {site_name}. You do not need to reply.\";s:13:\"new_friend_on\";i:1;s:14:\"new_friend_sub\";s:41:\"{friend} has accepted your friend request\";s:10:\"new_friend\";s:217:\"Hi {receiver},<br /><br />You are now friends with {friend} on {site_name}.<br /><br />View their profile:<br />{friend_profile}<br /><br />This is an automated notification from {site_name}. You do not need to reply.\";s:22:\"log_new_friend_request\";i:1;s:31:\"log_new_friend_request_template\";s:59:\"<strong>{member}</strong> has sent you a friendship request\";s:14:\"log_new_friend\";i:1;s:23:\"log_new_friend_template\";s:62:\"<strong>{member}</strong> has accepted your friendship request\";s:22:\"groups_join_request_on\";i:1;s:23:\"groups_join_request_sub\";s:26:\"{site_name} - Join Request\";s:19:\"groups_join_request\";s:240:\"Hi {display_name},<br /><br />{display_name} has requested to join {group_name}. You can view their profile here: {profile_link}<br /><br />To approve/reject this request please click the following link: {groups_request_tab_url}<br /><br />\";s:24:\"groups_approve_member_on\";i:1;s:25:\"groups_approve_member_sub\";s:66:\"{site_name} - Your request to join {group_name} has been approved.\";s:21:\"groups_approve_member\";s:75:\"Your request to join {group_name} has been approved.<br /><br />{group_url}\";s:18:\"groups_new_post_on\";i:1;s:19:\"groups_new_post_sub\";s:66:\"{site_name} - {author_name} added a new post on group {group_name}\";s:21:\"groups_new_comment_on\";i:1;s:22:\"groups_new_comment_sub\";s:79:\"{site_name} - {author_name} added a new comment on post on group \"{group_name}\"\";s:23:\"groups_invite_member_on\";i:1;s:24:\"groups_invite_member_sub\";s:56:\"{site_name} - You have been invited to join {group_name}\";s:20:\"groups_invite_member\";s:201:\"Hi {group_invitation_host_name},<br /><br />{group_invitation_guest_name} has invited you to join {group_name}.<br /><br />To confirm/reject this invitation please click the following link: {group_url}\";s:20:\"groups_invite_people\";s:8:\"everyone\";s:19:\"groups_show_avatars\";i:1;s:16:\"groups_posts_num\";i:10;s:20:\"groups_posts_num_mob\";i:5;s:26:\"groups_init_comments_count\";i:2;s:26:\"groups_load_comments_count\";i:10;s:20:\"groups_order_comment\";s:3:\"asc\";s:20:\"groups_post_truncate\";i:25;s:21:\"groups_enable_privacy\";i:1;s:20:\"groups_trending_days\";i:7;s:20:\"groups_require_login\";i:0;s:20:\"groups_need_to_login\";s:252:\"Please <a href=\"http://localhost/twodayssss/?page_id=35&redirect_to={current_page}\" class=\"um-link\">sign up</a> or <a href=\"http://localhost/twodayssss/?page_id=34&redirect_to={current_page}\" class=\"um-link\">sign in</a> to like or comment on this post.\";s:25:\"log_groups_approve_member\";i:1;s:34:\"log_groups_approve_member_template\";s:53:\"Your request to join {group_name} have been approved.\";s:23:\"log_groups_join_request\";i:1;s:32:\"log_groups_join_request_template\";s:49:\"{member_name} has requested to join {group_name}.\";s:24:\"log_groups_invite_member\";i:1;s:33:\"log_groups_invite_member_template\";s:66:\"{group_invitation_host_name} has invited you to join {group_name}.\";s:22:\"log_groups_change_role\";i:1;s:31:\"log_groups_change_role_template\";s:86:\"Your group role {group_role_old} has been changed to {group_role_new} in {group_name}.\";s:26:\"groups-discussion-new-user\";i:1;s:26:\"groups-discussion-new-post\";i:1;s:29:\"groups-discussion-new-product\";i:1;s:27:\"groups-discussion-new-gform\";i:1;s:38:\"groups-discussion-new-gform-submission\";i:1;s:28:\"groups-discussion-new-follow\";i:1;s:27:\"groups-discussion-new-topic\";i:1;s:22:\"enable_instagram_photo\";s:1:\"0\";s:25:\"instagram_photo_client_id\";s:0:\"\";s:29:\"instagram_photo_client_secret\";s:0:\"\";s:13:\"mailchimp_api\";s:0:\"\";s:20:\"profile_tab_messages\";i:1;s:15:\"pm_unread_first\";i:0;s:13:\"pm_char_limit\";i:200;s:14:\"pm_block_users\";s:0:\"\";s:15:\"pm_active_color\";s:7:\"#0085ba\";s:28:\"pm_coversation_refresh_timer\";i:5;s:16:\"pm_notify_period\";i:86400;s:16:\"pm_remind_period\";i:3;s:15:\"pm_remind_limit\";i:1;s:14:\"new_message_on\";i:1;s:15:\"new_message_sub\";s:41:\"{sender} has messaged you on {site_name}!\";s:11:\"new_message\";s:268:\"Hi {recipient},<br /><br />{sender} has just sent you a new private message on {site_name}.<br /><br />To view your new message(s) click the following link:<br />{message_history}<br /><br />This is an automated notification from {site_name}. You do not need to reply.\";s:23:\"new_message_reminder_on\";i:0;s:24:\"new_message_reminder_sub\";s:53:\"You have unread message from {sender} on {site_name}!\";s:20:\"new_message_reminder\";s:259:\"Hi {recipient},<br /><br />{sender} has sent you a private message on {site_name}.<br /><br />To view your new message(s) click the following link:<br />{message_history}<br /><br />This is an automated notification from {site_name}. You do not need to reply.\";s:10:\"log_new_pm\";i:1;s:19:\"log_new_pm_template\";s:62:\"<strong>{member}</strong> has just sent you a private message.\";s:17:\"mycred_badge_size\";i:80;s:18:\"account_tab_points\";i:1;s:12:\"mycred_refer\";i:0;s:28:\"mycred_show_badges_in_header\";i:0;s:29:\"mycred_show_badges_in_members\";i:0;s:15:\"mycred_decimals\";i:0;s:16:\"mycred_hide_role\";i:0;s:19:\"mycred_show_bb_rank\";i:0;s:21:\"mycred_show_bb_points\";i:0;s:23:\"mycred_show_bb_progress\";i:0;s:18:\"profile_tab_badges\";i:1;s:26:\"profile_tab_badges_privacy\";i:0;s:30:\"log_mycred_custom_notification\";i:1;s:39:\"log_mycred_custom_notification_template\";s:0:\"\";s:16:\"log_mycred_award\";i:1;s:25:\"log_mycred_award_template\";s:85:\"You have received <strong>{mycred_points}</strong> for <strong>{mycred_task}</strong>\";s:17:\"log_mycred_deduct\";i:1;s:26:\"log_mycred_deduct_template\";s:77:\"<strong>{mycred_points}</strong> deduction for <strong>{mycred_task}</strong>\";s:22:\"log_mycred_points_sent\";i:1;s:31:\"log_mycred_points_sent_template\";s:88:\"You have just got <strong>{mycred_points}</strong> from <strong>{mycred_sender}</strong>\";s:10:\"notice_pos\";s:5:\"right\";s:15:\"realtime_notify\";i:1;s:10:\"notify_pos\";s:5:\"right\";s:21:\"realtime_notify_timer\";i:45;s:28:\"notification_icon_visibility\";i:1;s:18:\"notification_sound\";i:0;s:28:\"account_tab_webnotifications\";i:1;s:16:\"log_upgrade_role\";i:1;s:25:\"log_upgrade_role_template\";s:103:\"Your membership level has been changed from <strong>{role_pre}</strong> to <strong>{role_post}</strong>\";s:17:\"log_comment_reply\";i:1;s:26:\"log_comment_reply_template\";s:62:\"<strong>{member}</strong> has replied to one of your comments.\";s:16:\"log_user_comment\";i:1;s:25:\"log_user_comment_template\";s:114:\"<strong>{member}</strong> has commented on your <strong>post</strong>. <span class=\"b1\">\"{comment_excerpt}\"</span>\";s:17:\"log_guest_comment\";i:1;s:26:\"log_guest_comment_template\";s:96:\"A guest has commented on your <strong>post</strong>. <span class=\"b1\">\"{comment_excerpt}\"</span>\";s:16:\"log_profile_view\";i:1;s:25:\"log_profile_view_template\";s:50:\"<strong>{member}</strong> has viewed your profile.\";s:22:\"log_profile_view_guest\";i:1;s:31:\"log_profile_view_guest_template\";s:32:\"A guest has viewed your profile.\";s:27:\"profile_tab_private_content\";i:1;s:25:\"tab_private_content_title\";s:15:\"Private Content\";s:24:\"tab_private_content_icon\";s:19:\"um-faicon-eye-slash\";s:18:\"g_recaptcha_status\";i:1;s:20:\"g_reCAPTCHA_site_key\";s:0:\"\";s:22:\"g_reCAPTCHA_secret_key\";s:0:\"\";s:19:\"g_recaptcha_sitekey\";s:0:\"\";s:21:\"g_recaptcha_secretkey\";s:0:\"\";s:25:\"g_recaptcha_language_code\";s:2:\"en\";s:17:\"g_recaptcha_theme\";s:5:\"light\";s:16:\"g_recaptcha_type\";s:5:\"image\";s:16:\"g_recaptcha_size\";s:6:\"normal\";s:26:\"g_recaptcha_password_reset\";i:0;s:19:\"profile_tab_reviews\";i:1;s:27:\"profile_tab_reviews_privacy\";i:0;s:19:\"members_show_rating\";i:1;s:18:\"review_date_format\";s:5:\"j F Y\";s:15:\"can_flag_review\";s:8:\"everyone\";s:16:\"review_notice_on\";i:1;s:17:\"review_notice_sub\";s:33:\"You\'ve got a new {rating} review!\";s:13:\"review_notice\";s:266:\"Hi {display_name},<br /><br />You\'ve received a new {rating} review from {reviewer}!<br /><br />Here is the review content:<br /><br />{review_content}<br /><br />{reviews_link}<br /><br />This is an automated notification from {site_name}. You do not need to reply.\";s:15:\"log_user_review\";i:1;s:24:\"log_user_review_template\";s:95:\"<strong>{member}</strong> has left you a new review. <span class=\"b1\">\"{review_excerpt}\"</span>\";s:18:\"activity_posts_num\";i:10;s:18:\"activity_max_faces\";i:10;s:22:\"activity_posts_num_mob\";i:5;s:28:\"activity_init_comments_count\";i:2;s:28:\"activity_load_comments_count\";i:10;s:22:\"activity_order_comment\";s:3:\"asc\";s:22:\"activity_post_truncate\";i:25;s:23:\"activity_enable_privacy\";i:1;s:22:\"activity_trending_days\";i:7;s:22:\"activity_require_login\";i:0;s:22:\"activity_need_to_login\";s:147:\"Please <a href=\"{register_page}\" class=\"um-link\">sign up</a> or <a href=\"{login_page}\" class=\"um-link\">sign in</a> to like or comment on this post.\";s:26:\"activity_followers_mention\";i:1;s:24:\"activity_friends_mention\";i:1;s:23:\"activity_followed_users\";i:0;s:22:\"activity_friends_users\";i:0;s:20:\"profile_tab_activity\";i:1;s:28:\"profile_tab_activity_privacy\";i:0;s:24:\"activity_highlight_color\";s:7:\"#0085ba\";s:17:\"activity-new-user\";i:1;s:17:\"activity-new-post\";i:1;s:20:\"activity-new-product\";i:1;s:18:\"activity-new-gform\";i:1;s:29:\"activity-new-gform-submission\";i:1;s:19:\"activity-new-follow\";i:1;s:18:\"activity-new-topic\";i:1;s:17:\"log_new_wall_post\";i:1;s:26:\"log_new_wall_post_template\";s:50:\"<strong>{member}</strong> has posted on your wall.\";s:20:\"log_new_wall_comment\";i:1;s:29:\"log_new_wall_comment_template\";s:58:\"<strong>{member}</strong> has commented on your wall post.\";s:17:\"log_new_post_like\";i:1;s:26:\"log_new_post_like_template\";s:47:\"<strong>{member}</strong> likes your wall post.\";s:15:\"log_new_mention\";i:1;s:24:\"log_new_mention_template\";s:45:\"<strong>{member}</strong> just mentioned you.\";s:15:\"enable_facebook\";i:0;s:15:\"facebook_app_id\";s:0:\"\";s:19:\"facebook_app_secret\";s:0:\"\";s:14:\"enable_twitter\";i:0;s:20:\"twitter_consumer_key\";s:0:\"\";s:23:\"twitter_consumer_secret\";s:0:\"\";s:13:\"enable_google\";i:0;s:16:\"google_client_id\";s:0:\"\";s:20:\"google_client_secret\";s:0:\"\";s:15:\"enable_linkedin\";i:0;s:16:\"linkedin_api_key\";s:0:\"\";s:19:\"linkedin_api_secret\";s:0:\"\";s:16:\"enable_instagram\";i:0;s:19:\"instagram_client_id\";s:0:\"\";s:23:\"instagram_client_secret\";s:0:\"\";s:9:\"enable_vk\";i:0;s:10:\"vk_api_key\";s:0:\"\";s:13:\"vk_api_secret\";s:0:\"\";s:28:\"um_user_photos_albums_column\";s:0:\"\";s:28:\"um_user_photos_images_column\";s:0:\"\";s:25:\"um_user_photos_cover_size\";s:0:\"\";s:25:\"um_user_photos_image_size\";s:0:\"\";s:18:\"profile_tab_photos\";i:1;s:17:\"verified_redirect\";s:27:\"http://localhost/twodayssss\";s:19:\"verified_account_on\";i:1;s:20:\"verified_account_sub\";s:40:\"Your account is verified on {site_name}!\";s:16:\"verified_account\";s:233:\"Hi {display_name},<br /><br />Good News! We have reviewed your verification request and are happy to say that your account is now verified.<br /><br />View your profile:<br />{user_profile_link}<br /><br />Thank You!<br />{site_name}\";s:23:\"verification_request_on\";i:1;s:24:\"verification_request_sub\";s:63:\"{display_name} ({username}) verification request on {site_name}\";s:20:\"verification_request\";s:233:\"{display_name} ({username}) has requested that their account be verified.<br /><br />View their profile:<br />{user_profile_link}<br /><br />To approve request:<br />{verify_approve}<br /><br />To reject request:<br />{verify_reject}\";s:25:\"activity-verified-account\";i:1;s:20:\"log_account_verified\";i:1;s:29:\"log_account_verified_template\";s:46:\"Congratulations! Your account is now verified.\";s:19:\"woo_oncomplete_role\";s:0:\"\";s:27:\"woo_oncomplete_except_roles\";s:0:\"\";s:23:\"woo_onhold_change_roles\";i:0;s:17:\"woo_onrefund_role\";s:0:\"\";s:16:\"woo_remove_roles\";i:0;s:33:\"woo_hide_billing_tab_from_account\";i:0;s:34:\"woo_hide_shipping_tab_from_account\";i:0;s:21:\"profile_tab_purchases\";i:1;s:29:\"profile_tab_purchases_privacy\";i:0;s:27:\"profile_tab_product-reviews\";i:1;s:35:\"profile_tab_product-reviews_privacy\";i:0;}', 'yes'),
(139, 'um_role_subscriber_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(140, 'um_role_author_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(141, 'um_role_contributor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(142, 'um_role_editor_meta', 'a:14:{s:22:\"_um_can_access_wpadmin\";i:0;s:24:\"_um_can_not_see_adminbar\";i:1;s:21:\"_um_can_edit_everyone\";i:0;s:23:\"_um_can_delete_everyone\";i:0;s:20:\"_um_can_edit_profile\";i:1;s:22:\"_um_can_delete_profile\";i:1;s:15:\"_um_after_login\";s:16:\"redirect_profile\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:20:\"_um_default_homepage\";i:1;s:16:\"_um_can_view_all\";i:1;s:28:\"_um_can_make_private_profile\";i:0;s:30:\"_um_can_access_private_profile\";i:0;s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";}', 'yes'),
(143, 'um_role_administrator_meta', 'a:54:{s:13:\"_um_is_custom\";s:1:\"0\";s:12:\"_um_priority\";s:0:\"\";s:12:\"_um_profilec\";s:1:\"1\";s:16:\"_um_profilec_pct\";s:3:\"100\";s:22:\"_um_allocated_progress\";s:1:\"0\";s:25:\"_um_profilec_upgrade_role\";s:1:\"0\";s:27:\"_um_profilec_prevent_browse\";s:1:\"0\";s:41:\"_um_profilec_prevent_browse_exclude_pages\";s:0:\"\";s:32:\"_um_profilec_prevent_profileview\";s:1:\"0\";s:28:\"_um_profilec_prevent_comment\";s:1:\"0\";s:23:\"_um_profilec_prevent_bb\";s:1:\"0\";s:22:\"_um_can_access_wpadmin\";s:1:\"1\";s:24:\"_um_can_not_see_adminbar\";s:1:\"0\";s:21:\"_um_can_edit_everyone\";s:1:\"1\";s:18:\"_um_can_edit_roles\";s:0:\"\";s:23:\"_um_can_delete_everyone\";s:1:\"1\";s:20:\"_um_can_delete_roles\";s:0:\"\";s:20:\"_um_can_edit_profile\";s:1:\"1\";s:22:\"_um_can_delete_profile\";s:1:\"1\";s:16:\"_um_can_view_all\";s:1:\"1\";s:18:\"_um_can_view_roles\";s:0:\"\";s:28:\"_um_can_make_private_profile\";s:1:\"1\";s:30:\"_um_can_access_private_profile\";s:1:\"1\";s:10:\"_um_status\";s:8:\"approved\";s:20:\"_um_auto_approve_act\";s:16:\"redirect_profile\";s:20:\"_um_auto_approve_url\";s:0:\"\";s:24:\"_um_login_email_activate\";s:1:\"0\";s:20:\"_um_checkmail_action\";s:12:\"show_message\";s:21:\"_um_checkmail_message\";s:168:\"感谢注册我们的网站。我们已经给您发送了一封激活邮件，您需要点击邮件中的激活链接来激活您的账号，然后就可以登录了。\";s:17:\"_um_checkmail_url\";s:0:\"\";s:22:\"_um_url_email_activate\";s:0:\"\";s:18:\"_um_pending_action\";s:12:\"show_message\";s:19:\"_um_pending_message\";s:135:\"感谢您提交申请成为我们的用户。我们将查看您的信息然后发送邮件给您，告知您是否成功通过审核。\";s:15:\"_um_pending_url\";s:0:\"\";s:15:\"_um_after_login\";s:14:\"redirect_admin\";s:22:\"_um_login_redirect_url\";s:0:\"\";s:16:\"_um_after_logout\";s:13:\"redirect_home\";s:23:\"_um_logout_redirect_url\";s:0:\"\";s:16:\"_um_after_delete\";s:13:\"redirect_home\";s:23:\"_um_delete_redirect_url\";s:0:\"\";s:20:\"_um_enable_messaging\";s:1:\"1\";s:16:\"_um_can_start_pm\";s:1:\"1\";s:15:\"_um_can_read_pm\";s:1:\"1\";s:16:\"_um_can_reply_pm\";s:1:\"1\";s:19:\"_um_pm_max_messages\";s:0:\"\";s:22:\"_um_pm_max_messages_tf\";s:0:\"\";s:19:\"_um_enable_bookmark\";s:1:\"1\";s:14:\"_um_can_friend\";s:1:\"1\";s:20:\"_um_can_friend_roles\";s:0:\"\";s:18:\"_um_show_user_tags\";s:1:\"0\";s:14:\"_um_can_follow\";s:1:\"1\";s:20:\"_um_can_follow_roles\";s:0:\"\";s:23:\"_um_can_transfer_mycred\";s:1:\"0\";s:25:\"_um_cannot_receive_mycred\";s:1:\"0\";}', 'yes'),
(144, 'widget_um_search_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(809, 'um_cached_users_queue', '0', 'no'),
(506, 'um_mycred_last_version_upgrade', '2.10.5', 'yes'),
(507, 'um_mycred_version', '2.10.5', 'yes'),
(510, 'um_notices_last_version_upgrade', '2.10.4', 'yes'),
(511, 'um_notices_version', '2.10.4', 'yes'),
(514, 'um_notifications_last_version_upgrade', '2.10.2', 'yes'),
(515, 'um_notifications_version', '2.10.2', 'yes'),
(516, 'ultimatemember_notification_db', '2.10.2', 'yes'),
(519, 'um_private_content_last_version_upgrade', '2.10.4', 'yes'),
(520, 'um_private_content_version', '2.10.4', 'yes'),
(523, 'um_profile_completeness_last_version_upgrade', '2.10.1', 'yes'),
(524, 'um_profile_completeness_version', '2.10.1', 'yes'),
(525, 'widget_um_profile_completeness', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(526, 'widget_um_profile_progress_bar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(537, 'um_recaptcha_last_version_upgrade', '2.1.3', 'yes'),
(538, 'um_recaptcha_version', '2.1.3', 'yes');
INSERT INTO `td_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(152, 'um_cache_fonticons', 'a:1219:{i:0;s:13:\"um-icon-alert\";i:1;s:21:\"um-icon-alert-circled\";i:2;s:19:\"um-icon-android-add\";i:3;s:26:\"um-icon-android-add-circle\";i:4;s:27:\"um-icon-android-alarm-clock\";i:5;s:21:\"um-icon-android-alert\";i:6;s:20:\"um-icon-android-apps\";i:7;s:23:\"um-icon-android-archive\";i:8;s:26:\"um-icon-android-arrow-back\";i:9;s:26:\"um-icon-android-arrow-down\";i:10;s:30:\"um-icon-android-arrow-dropdown\";i:11;s:37:\"um-icon-android-arrow-dropdown-circle\";i:12;s:30:\"um-icon-android-arrow-dropleft\";i:13;s:37:\"um-icon-android-arrow-dropleft-circle\";i:14;s:31:\"um-icon-android-arrow-dropright\";i:15;s:38:\"um-icon-android-arrow-dropright-circle\";i:16;s:28:\"um-icon-android-arrow-dropup\";i:17;s:35:\"um-icon-android-arrow-dropup-circle\";i:18;s:29:\"um-icon-android-arrow-forward\";i:19;s:24:\"um-icon-android-arrow-up\";i:20;s:22:\"um-icon-android-attach\";i:21;s:19:\"um-icon-android-bar\";i:22;s:23:\"um-icon-android-bicycle\";i:23;s:20:\"um-icon-android-boat\";i:24;s:24:\"um-icon-android-bookmark\";i:25;s:20:\"um-icon-android-bulb\";i:26;s:19:\"um-icon-android-bus\";i:27;s:24:\"um-icon-android-calendar\";i:28;s:20:\"um-icon-android-call\";i:29;s:22:\"um-icon-android-camera\";i:30;s:22:\"um-icon-android-cancel\";i:31;s:19:\"um-icon-android-car\";i:32;s:20:\"um-icon-android-cart\";i:33;s:20:\"um-icon-android-chat\";i:34;s:24:\"um-icon-android-checkbox\";i:35;s:30:\"um-icon-android-checkbox-blank\";i:36;s:32:\"um-icon-android-checkbox-outline\";i:37;s:38:\"um-icon-android-checkbox-outline-blank\";i:38;s:32:\"um-icon-android-checkmark-circle\";i:39;s:25:\"um-icon-android-clipboard\";i:40;s:21:\"um-icon-android-close\";i:41;s:21:\"um-icon-android-cloud\";i:42;s:28:\"um-icon-android-cloud-circle\";i:43;s:26:\"um-icon-android-cloud-done\";i:44;s:29:\"um-icon-android-cloud-outline\";i:45;s:29:\"um-icon-android-color-palette\";i:46;s:23:\"um-icon-android-compass\";i:47;s:23:\"um-icon-android-contact\";i:48;s:24:\"um-icon-android-contacts\";i:49;s:24:\"um-icon-android-contract\";i:50;s:22:\"um-icon-android-create\";i:51;s:22:\"um-icon-android-delete\";i:52;s:23:\"um-icon-android-desktop\";i:53;s:24:\"um-icon-android-document\";i:54;s:20:\"um-icon-android-done\";i:55;s:24:\"um-icon-android-done-all\";i:56;s:24:\"um-icon-android-download\";i:57;s:22:\"um-icon-android-drafts\";i:58;s:20:\"um-icon-android-exit\";i:59;s:22:\"um-icon-android-expand\";i:60;s:24:\"um-icon-android-favorite\";i:61;s:32:\"um-icon-android-favorite-outline\";i:62;s:20:\"um-icon-android-film\";i:63;s:22:\"um-icon-android-folder\";i:64;s:27:\"um-icon-android-folder-open\";i:65;s:22:\"um-icon-android-funnel\";i:66;s:21:\"um-icon-android-globe\";i:67;s:20:\"um-icon-android-hand\";i:68;s:23:\"um-icon-android-hangout\";i:69;s:21:\"um-icon-android-happy\";i:70;s:20:\"um-icon-android-home\";i:71;s:21:\"um-icon-android-image\";i:72;s:22:\"um-icon-android-laptop\";i:73;s:20:\"um-icon-android-list\";i:74;s:22:\"um-icon-android-locate\";i:75;s:20:\"um-icon-android-lock\";i:76;s:20:\"um-icon-android-mail\";i:77;s:19:\"um-icon-android-map\";i:78;s:20:\"um-icon-android-menu\";i:79;s:26:\"um-icon-android-microphone\";i:80;s:30:\"um-icon-android-microphone-off\";i:81;s:31:\"um-icon-android-more-horizontal\";i:82;s:29:\"um-icon-android-more-vertical\";i:83;s:24:\"um-icon-android-navigate\";i:84;s:29:\"um-icon-android-notifications\";i:85;s:34:\"um-icon-android-notifications-none\";i:86;s:33:\"um-icon-android-notifications-off\";i:87;s:20:\"um-icon-android-open\";i:88;s:23:\"um-icon-android-options\";i:89;s:22:\"um-icon-android-people\";i:90;s:22:\"um-icon-android-person\";i:91;s:26:\"um-icon-android-person-add\";i:92;s:31:\"um-icon-android-phone-landscape\";i:93;s:30:\"um-icon-android-phone-portrait\";i:94;s:19:\"um-icon-android-pin\";i:95;s:21:\"um-icon-android-plane\";i:96;s:25:\"um-icon-android-playstore\";i:97;s:21:\"um-icon-android-print\";i:98;s:32:\"um-icon-android-radio-button-off\";i:99;s:31:\"um-icon-android-radio-button-on\";i:100;s:23:\"um-icon-android-refresh\";i:101;s:22:\"um-icon-android-remove\";i:102;s:29:\"um-icon-android-remove-circle\";i:103;s:26:\"um-icon-android-restaurant\";i:104;s:19:\"um-icon-android-sad\";i:105;s:22:\"um-icon-android-search\";i:106;s:20:\"um-icon-android-send\";i:107;s:24:\"um-icon-android-settings\";i:108;s:21:\"um-icon-android-share\";i:109;s:25:\"um-icon-android-share-alt\";i:110;s:20:\"um-icon-android-star\";i:111;s:25:\"um-icon-android-star-half\";i:112;s:28:\"um-icon-android-star-outline\";i:113;s:25:\"um-icon-android-stopwatch\";i:114;s:22:\"um-icon-android-subway\";i:115;s:21:\"um-icon-android-sunny\";i:116;s:20:\"um-icon-android-sync\";i:117;s:23:\"um-icon-android-textsms\";i:118;s:20:\"um-icon-android-time\";i:119;s:21:\"um-icon-android-train\";i:120;s:22:\"um-icon-android-unlock\";i:121;s:22:\"um-icon-android-upload\";i:122;s:27:\"um-icon-android-volume-down\";i:123;s:27:\"um-icon-android-volume-mute\";i:124;s:26:\"um-icon-android-volume-off\";i:125;s:25:\"um-icon-android-volume-up\";i:126;s:20:\"um-icon-android-walk\";i:127;s:23:\"um-icon-android-warning\";i:128;s:21:\"um-icon-android-watch\";i:129;s:20:\"um-icon-android-wifi\";i:130;s:16:\"um-icon-aperture\";i:131;s:15:\"um-icon-archive\";i:132;s:20:\"um-icon-arrow-down-a\";i:133;s:20:\"um-icon-arrow-down-b\";i:134;s:20:\"um-icon-arrow-down-c\";i:135;s:20:\"um-icon-arrow-expand\";i:136;s:29:\"um-icon-arrow-graph-down-left\";i:137;s:30:\"um-icon-arrow-graph-down-right\";i:138;s:27:\"um-icon-arrow-graph-up-left\";i:139;s:28:\"um-icon-arrow-graph-up-right\";i:140;s:20:\"um-icon-arrow-left-a\";i:141;s:20:\"um-icon-arrow-left-b\";i:142;s:20:\"um-icon-arrow-left-c\";i:143;s:18:\"um-icon-arrow-move\";i:144;s:20:\"um-icon-arrow-resize\";i:145;s:25:\"um-icon-arrow-return-left\";i:146;s:26:\"um-icon-arrow-return-right\";i:147;s:21:\"um-icon-arrow-right-a\";i:148;s:21:\"um-icon-arrow-right-b\";i:149;s:21:\"um-icon-arrow-right-c\";i:150;s:20:\"um-icon-arrow-shrink\";i:151;s:18:\"um-icon-arrow-swap\";i:152;s:18:\"um-icon-arrow-up-a\";i:153;s:18:\"um-icon-arrow-up-b\";i:154;s:18:\"um-icon-arrow-up-c\";i:155;s:16:\"um-icon-asterisk\";i:156;s:10:\"um-icon-at\";i:157;s:17:\"um-icon-backspace\";i:158;s:25:\"um-icon-backspace-outline\";i:159;s:11:\"um-icon-bag\";i:160;s:24:\"um-icon-battery-charging\";i:161;s:21:\"um-icon-battery-empty\";i:162;s:20:\"um-icon-battery-full\";i:163;s:20:\"um-icon-battery-half\";i:164;s:19:\"um-icon-battery-low\";i:165;s:14:\"um-icon-beaker\";i:166;s:12:\"um-icon-beer\";i:167;s:17:\"um-icon-bluetooth\";i:168;s:15:\"um-icon-bonfire\";i:169;s:16:\"um-icon-bookmark\";i:170;s:14:\"um-icon-bowtie\";i:171;s:17:\"um-icon-briefcase\";i:172;s:11:\"um-icon-bug\";i:173;s:18:\"um-icon-calculator\";i:174;s:16:\"um-icon-calendar\";i:175;s:14:\"um-icon-camera\";i:176;s:12:\"um-icon-card\";i:177;s:12:\"um-icon-cash\";i:178;s:15:\"um-icon-chatbox\";i:179;s:23:\"um-icon-chatbox-working\";i:180;s:17:\"um-icon-chatboxes\";i:181;s:18:\"um-icon-chatbubble\";i:182;s:26:\"um-icon-chatbubble-working\";i:183;s:19:\"um-icon-chatbubbles\";i:184;s:17:\"um-icon-checkmark\";i:185;s:25:\"um-icon-checkmark-circled\";i:186;s:23:\"um-icon-checkmark-round\";i:187;s:20:\"um-icon-chevron-down\";i:188;s:20:\"um-icon-chevron-left\";i:189;s:21:\"um-icon-chevron-right\";i:190;s:18:\"um-icon-chevron-up\";i:191;s:17:\"um-icon-clipboard\";i:192;s:13:\"um-icon-clock\";i:193;s:13:\"um-icon-close\";i:194;s:21:\"um-icon-close-circled\";i:195;s:19:\"um-icon-close-round\";i:196;s:25:\"um-icon-closed-captioning\";i:197;s:13:\"um-icon-cloud\";i:198;s:12:\"um-icon-code\";i:199;s:21:\"um-icon-code-download\";i:200;s:20:\"um-icon-code-working\";i:201;s:14:\"um-icon-coffee\";i:202;s:15:\"um-icon-compass\";i:203;s:15:\"um-icon-compose\";i:204;s:23:\"um-icon-connection-bars\";i:205;s:16:\"um-icon-contrast\";i:206;s:12:\"um-icon-crop\";i:207;s:12:\"um-icon-cube\";i:208;s:12:\"um-icon-disc\";i:209;s:16:\"um-icon-document\";i:210;s:21:\"um-icon-document-text\";i:211;s:12:\"um-icon-drag\";i:212;s:13:\"um-icon-earth\";i:213;s:13:\"um-icon-easel\";i:214;s:12:\"um-icon-edit\";i:215;s:11:\"um-icon-egg\";i:216;s:13:\"um-icon-eject\";i:217;s:13:\"um-icon-email\";i:218;s:20:\"um-icon-email-unread\";i:219;s:24:\"um-icon-erlenmeyer-flask\";i:220;s:32:\"um-icon-erlenmeyer-flask-bubbles\";i:221;s:11:\"um-icon-eye\";i:222;s:20:\"um-icon-eye-disabled\";i:223;s:14:\"um-icon-female\";i:224;s:14:\"um-icon-filing\";i:225;s:19:\"um-icon-film-marker\";i:226;s:16:\"um-icon-fireball\";i:227;s:12:\"um-icon-flag\";i:228;s:13:\"um-icon-flame\";i:229;s:13:\"um-icon-flash\";i:230;s:17:\"um-icon-flash-off\";i:231;s:14:\"um-icon-folder\";i:232;s:12:\"um-icon-fork\";i:233;s:17:\"um-icon-fork-repo\";i:234;s:15:\"um-icon-forward\";i:235;s:14:\"um-icon-funnel\";i:236;s:14:\"um-icon-gear-a\";i:237;s:14:\"um-icon-gear-b\";i:238;s:12:\"um-icon-grid\";i:239;s:14:\"um-icon-hammer\";i:240;s:13:\"um-icon-happy\";i:241;s:21:\"um-icon-happy-outline\";i:242;s:17:\"um-icon-headphone\";i:243;s:13:\"um-icon-heart\";i:244;s:20:\"um-icon-heart-broken\";i:245;s:12:\"um-icon-help\";i:246;s:17:\"um-icon-help-buoy\";i:247;s:20:\"um-icon-help-circled\";i:248;s:12:\"um-icon-home\";i:249;s:16:\"um-icon-icecream\";i:250;s:13:\"um-icon-image\";i:251;s:14:\"um-icon-images\";i:252;s:19:\"um-icon-information\";i:253;s:27:\"um-icon-information-circled\";i:254;s:13:\"um-icon-ionic\";i:255;s:17:\"um-icon-ios-alarm\";i:256;s:25:\"um-icon-ios-alarm-outline\";i:257;s:18:\"um-icon-ios-albums\";i:258;s:26:\"um-icon-ios-albums-outline\";i:259;s:28:\"um-icon-ios-americanfootball\";i:260;s:36:\"um-icon-ios-americanfootball-outline\";i:261;s:21:\"um-icon-ios-analytics\";i:262;s:29:\"um-icon-ios-analytics-outline\";i:263;s:22:\"um-icon-ios-arrow-back\";i:264;s:22:\"um-icon-ios-arrow-down\";i:265;s:25:\"um-icon-ios-arrow-forward\";i:266;s:22:\"um-icon-ios-arrow-left\";i:267;s:23:\"um-icon-ios-arrow-right\";i:268;s:27:\"um-icon-ios-arrow-thin-down\";i:269;s:27:\"um-icon-ios-arrow-thin-left\";i:270;s:28:\"um-icon-ios-arrow-thin-right\";i:271;s:25:\"um-icon-ios-arrow-thin-up\";i:272;s:20:\"um-icon-ios-arrow-up\";i:273;s:14:\"um-icon-ios-at\";i:274;s:22:\"um-icon-ios-at-outline\";i:275;s:19:\"um-icon-ios-barcode\";i:276;s:27:\"um-icon-ios-barcode-outline\";i:277;s:20:\"um-icon-ios-baseball\";i:278;s:28:\"um-icon-ios-baseball-outline\";i:279;s:22:\"um-icon-ios-basketball\";i:280;s:30:\"um-icon-ios-basketball-outline\";i:281;s:16:\"um-icon-ios-bell\";i:282;s:24:\"um-icon-ios-bell-outline\";i:283;s:16:\"um-icon-ios-body\";i:284;s:24:\"um-icon-ios-body-outline\";i:285;s:16:\"um-icon-ios-bolt\";i:286;s:24:\"um-icon-ios-bolt-outline\";i:287;s:16:\"um-icon-ios-book\";i:288;s:24:\"um-icon-ios-book-outline\";i:289;s:21:\"um-icon-ios-bookmarks\";i:290;s:29:\"um-icon-ios-bookmarks-outline\";i:291;s:15:\"um-icon-ios-box\";i:292;s:23:\"um-icon-ios-box-outline\";i:293;s:21:\"um-icon-ios-briefcase\";i:294;s:29:\"um-icon-ios-briefcase-outline\";i:295;s:20:\"um-icon-ios-browsers\";i:296;s:28:\"um-icon-ios-browsers-outline\";i:297;s:22:\"um-icon-ios-calculator\";i:298;s:30:\"um-icon-ios-calculator-outline\";i:299;s:20:\"um-icon-ios-calendar\";i:300;s:28:\"um-icon-ios-calendar-outline\";i:301;s:18:\"um-icon-ios-camera\";i:302;s:26:\"um-icon-ios-camera-outline\";i:303;s:16:\"um-icon-ios-cart\";i:304;s:24:\"um-icon-ios-cart-outline\";i:305;s:21:\"um-icon-ios-chatboxes\";i:306;s:29:\"um-icon-ios-chatboxes-outline\";i:307;s:22:\"um-icon-ios-chatbubble\";i:308;s:30:\"um-icon-ios-chatbubble-outline\";i:309;s:21:\"um-icon-ios-checkmark\";i:310;s:27:\"um-icon-ios-checkmark-empty\";i:311;s:29:\"um-icon-ios-checkmark-outline\";i:312;s:25:\"um-icon-ios-circle-filled\";i:313;s:26:\"um-icon-ios-circle-outline\";i:314;s:17:\"um-icon-ios-clock\";i:315;s:25:\"um-icon-ios-clock-outline\";i:316;s:17:\"um-icon-ios-close\";i:317;s:23:\"um-icon-ios-close-empty\";i:318;s:25:\"um-icon-ios-close-outline\";i:319;s:17:\"um-icon-ios-cloud\";i:320;s:26:\"um-icon-ios-cloud-download\";i:321;s:34:\"um-icon-ios-cloud-download-outline\";i:322;s:25:\"um-icon-ios-cloud-outline\";i:323;s:24:\"um-icon-ios-cloud-upload\";i:324;s:32:\"um-icon-ios-cloud-upload-outline\";i:325;s:18:\"um-icon-ios-cloudy\";i:326;s:24:\"um-icon-ios-cloudy-night\";i:327;s:32:\"um-icon-ios-cloudy-night-outline\";i:328;s:26:\"um-icon-ios-cloudy-outline\";i:329;s:15:\"um-icon-ios-cog\";i:330;s:23:\"um-icon-ios-cog-outline\";i:331;s:24:\"um-icon-ios-color-filter\";i:332;s:32:\"um-icon-ios-color-filter-outline\";i:333;s:22:\"um-icon-ios-color-wand\";i:334;s:30:\"um-icon-ios-color-wand-outline\";i:335;s:19:\"um-icon-ios-compose\";i:336;s:27:\"um-icon-ios-compose-outline\";i:337;s:19:\"um-icon-ios-contact\";i:338;s:27:\"um-icon-ios-contact-outline\";i:339;s:16:\"um-icon-ios-copy\";i:340;s:24:\"um-icon-ios-copy-outline\";i:341;s:16:\"um-icon-ios-crop\";i:342;s:23:\"um-icon-ios-crop-strong\";i:343;s:20:\"um-icon-ios-download\";i:344;s:28:\"um-icon-ios-download-outline\";i:345;s:16:\"um-icon-ios-drag\";i:346;s:17:\"um-icon-ios-email\";i:347;s:25:\"um-icon-ios-email-outline\";i:348;s:15:\"um-icon-ios-eye\";i:349;s:23:\"um-icon-ios-eye-outline\";i:350;s:23:\"um-icon-ios-fastforward\";i:351;s:31:\"um-icon-ios-fastforward-outline\";i:352;s:18:\"um-icon-ios-filing\";i:353;s:26:\"um-icon-ios-filing-outline\";i:354;s:16:\"um-icon-ios-film\";i:355;s:24:\"um-icon-ios-film-outline\";i:356;s:16:\"um-icon-ios-flag\";i:357;s:24:\"um-icon-ios-flag-outline\";i:358;s:17:\"um-icon-ios-flame\";i:359;s:25:\"um-icon-ios-flame-outline\";i:360;s:17:\"um-icon-ios-flask\";i:361;s:25:\"um-icon-ios-flask-outline\";i:362;s:18:\"um-icon-ios-flower\";i:363;s:26:\"um-icon-ios-flower-outline\";i:364;s:18:\"um-icon-ios-folder\";i:365;s:26:\"um-icon-ios-folder-outline\";i:366;s:20:\"um-icon-ios-football\";i:367;s:28:\"um-icon-ios-football-outline\";i:368;s:29:\"um-icon-ios-game-controller-a\";i:369;s:37:\"um-icon-ios-game-controller-a-outline\";i:370;s:29:\"um-icon-ios-game-controller-b\";i:371;s:37:\"um-icon-ios-game-controller-b-outline\";i:372;s:16:\"um-icon-ios-gear\";i:373;s:24:\"um-icon-ios-gear-outline\";i:374;s:19:\"um-icon-ios-glasses\";i:375;s:27:\"um-icon-ios-glasses-outline\";i:376;s:21:\"um-icon-ios-grid-view\";i:377;s:29:\"um-icon-ios-grid-view-outline\";i:378;s:17:\"um-icon-ios-heart\";i:379;s:25:\"um-icon-ios-heart-outline\";i:380;s:16:\"um-icon-ios-help\";i:381;s:22:\"um-icon-ios-help-empty\";i:382;s:24:\"um-icon-ios-help-outline\";i:383;s:16:\"um-icon-ios-home\";i:384;s:24:\"um-icon-ios-home-outline\";i:385;s:20:\"um-icon-ios-infinite\";i:386;s:28:\"um-icon-ios-infinite-outline\";i:387;s:23:\"um-icon-ios-information\";i:388;s:29:\"um-icon-ios-information-empty\";i:389;s:31:\"um-icon-ios-information-outline\";i:390;s:25:\"um-icon-ios-ionic-outline\";i:391;s:18:\"um-icon-ios-keypad\";i:392;s:26:\"um-icon-ios-keypad-outline\";i:393;s:21:\"um-icon-ios-lightbulb\";i:394;s:29:\"um-icon-ios-lightbulb-outline\";i:395;s:16:\"um-icon-ios-list\";i:396;s:24:\"um-icon-ios-list-outline\";i:397;s:20:\"um-icon-ios-location\";i:398;s:28:\"um-icon-ios-location-outline\";i:399;s:18:\"um-icon-ios-locked\";i:400;s:26:\"um-icon-ios-locked-outline\";i:401;s:16:\"um-icon-ios-loop\";i:402;s:23:\"um-icon-ios-loop-strong\";i:403;s:19:\"um-icon-ios-medical\";i:404;s:27:\"um-icon-ios-medical-outline\";i:405;s:18:\"um-icon-ios-medkit\";i:406;s:26:\"um-icon-ios-medkit-outline\";i:407;s:15:\"um-icon-ios-mic\";i:408;s:19:\"um-icon-ios-mic-off\";i:409;s:23:\"um-icon-ios-mic-outline\";i:410;s:17:\"um-icon-ios-minus\";i:411;s:23:\"um-icon-ios-minus-empty\";i:412;s:25:\"um-icon-ios-minus-outline\";i:413;s:19:\"um-icon-ios-monitor\";i:414;s:27:\"um-icon-ios-monitor-outline\";i:415;s:16:\"um-icon-ios-moon\";i:416;s:24:\"um-icon-ios-moon-outline\";i:417;s:16:\"um-icon-ios-more\";i:418;s:24:\"um-icon-ios-more-outline\";i:419;s:24:\"um-icon-ios-musical-note\";i:420;s:25:\"um-icon-ios-musical-notes\";i:421;s:20:\"um-icon-ios-navigate\";i:422;s:28:\"um-icon-ios-navigate-outline\";i:423;s:21:\"um-icon-ios-nutrition\";i:424;s:29:\"um-icon-ios-nutrition-outline\";i:425;s:17:\"um-icon-ios-paper\";i:426;s:25:\"um-icon-ios-paper-outline\";i:427;s:22:\"um-icon-ios-paperplane\";i:428;s:30:\"um-icon-ios-paperplane-outline\";i:429;s:23:\"um-icon-ios-partlysunny\";i:430;s:31:\"um-icon-ios-partlysunny-outline\";i:431;s:17:\"um-icon-ios-pause\";i:432;s:25:\"um-icon-ios-pause-outline\";i:433;s:15:\"um-icon-ios-paw\";i:434;s:23:\"um-icon-ios-paw-outline\";i:435;s:18:\"um-icon-ios-people\";i:436;s:26:\"um-icon-ios-people-outline\";i:437;s:18:\"um-icon-ios-person\";i:438;s:26:\"um-icon-ios-person-outline\";i:439;s:21:\"um-icon-ios-personadd\";i:440;s:29:\"um-icon-ios-personadd-outline\";i:441;s:18:\"um-icon-ios-photos\";i:442;s:26:\"um-icon-ios-photos-outline\";i:443;s:15:\"um-icon-ios-pie\";i:444;s:23:\"um-icon-ios-pie-outline\";i:445;s:16:\"um-icon-ios-pint\";i:446;s:24:\"um-icon-ios-pint-outline\";i:447;s:16:\"um-icon-ios-play\";i:448;s:24:\"um-icon-ios-play-outline\";i:449;s:16:\"um-icon-ios-plus\";i:450;s:22:\"um-icon-ios-plus-empty\";i:451;s:24:\"um-icon-ios-plus-outline\";i:452;s:20:\"um-icon-ios-pricetag\";i:453;s:28:\"um-icon-ios-pricetag-outline\";i:454;s:21:\"um-icon-ios-pricetags\";i:455;s:29:\"um-icon-ios-pricetags-outline\";i:456;s:19:\"um-icon-ios-printer\";i:457;s:27:\"um-icon-ios-printer-outline\";i:458;s:17:\"um-icon-ios-pulse\";i:459;s:24:\"um-icon-ios-pulse-strong\";i:460;s:17:\"um-icon-ios-rainy\";i:461;s:25:\"um-icon-ios-rainy-outline\";i:462;s:21:\"um-icon-ios-recording\";i:463;s:29:\"um-icon-ios-recording-outline\";i:464;s:16:\"um-icon-ios-redo\";i:465;s:24:\"um-icon-ios-redo-outline\";i:466;s:19:\"um-icon-ios-refresh\";i:467;s:25:\"um-icon-ios-refresh-empty\";i:468;s:27:\"um-icon-ios-refresh-outline\";i:469;s:18:\"um-icon-ios-reload\";i:470;s:26:\"um-icon-ios-reverse-camera\";i:471;s:34:\"um-icon-ios-reverse-camera-outline\";i:472;s:18:\"um-icon-ios-rewind\";i:473;s:26:\"um-icon-ios-rewind-outline\";i:474;s:16:\"um-icon-ios-rose\";i:475;s:24:\"um-icon-ios-rose-outline\";i:476;s:18:\"um-icon-ios-search\";i:477;s:25:\"um-icon-ios-search-strong\";i:478;s:20:\"um-icon-ios-settings\";i:479;s:27:\"um-icon-ios-settings-strong\";i:480;s:19:\"um-icon-ios-shuffle\";i:481;s:26:\"um-icon-ios-shuffle-strong\";i:482;s:24:\"um-icon-ios-skipbackward\";i:483;s:32:\"um-icon-ios-skipbackward-outline\";i:484;s:23:\"um-icon-ios-skipforward\";i:485;s:31:\"um-icon-ios-skipforward-outline\";i:486;s:17:\"um-icon-ios-snowy\";i:487;s:23:\"um-icon-ios-speedometer\";i:488;s:31:\"um-icon-ios-speedometer-outline\";i:489;s:16:\"um-icon-ios-star\";i:490;s:21:\"um-icon-ios-star-half\";i:491;s:24:\"um-icon-ios-star-outline\";i:492;s:21:\"um-icon-ios-stopwatch\";i:493;s:29:\"um-icon-ios-stopwatch-outline\";i:494;s:17:\"um-icon-ios-sunny\";i:495;s:25:\"um-icon-ios-sunny-outline\";i:496;s:21:\"um-icon-ios-telephone\";i:497;s:29:\"um-icon-ios-telephone-outline\";i:498;s:22:\"um-icon-ios-tennisball\";i:499;s:30:\"um-icon-ios-tennisball-outline\";i:500;s:24:\"um-icon-ios-thunderstorm\";i:501;s:32:\"um-icon-ios-thunderstorm-outline\";i:502;s:16:\"um-icon-ios-time\";i:503;s:24:\"um-icon-ios-time-outline\";i:504;s:17:\"um-icon-ios-timer\";i:505;s:25:\"um-icon-ios-timer-outline\";i:506;s:18:\"um-icon-ios-toggle\";i:507;s:26:\"um-icon-ios-toggle-outline\";i:508;s:17:\"um-icon-ios-trash\";i:509;s:25:\"um-icon-ios-trash-outline\";i:510;s:16:\"um-icon-ios-undo\";i:511;s:24:\"um-icon-ios-undo-outline\";i:512;s:20:\"um-icon-ios-unlocked\";i:513;s:28:\"um-icon-ios-unlocked-outline\";i:514;s:18:\"um-icon-ios-upload\";i:515;s:26:\"um-icon-ios-upload-outline\";i:516;s:20:\"um-icon-ios-videocam\";i:517;s:28:\"um-icon-ios-videocam-outline\";i:518;s:23:\"um-icon-ios-volume-high\";i:519;s:22:\"um-icon-ios-volume-low\";i:520;s:21:\"um-icon-ios-wineglass\";i:521;s:29:\"um-icon-ios-wineglass-outline\";i:522;s:17:\"um-icon-ios-world\";i:523;s:25:\"um-icon-ios-world-outline\";i:524;s:12:\"um-icon-ipad\";i:525;s:14:\"um-icon-iphone\";i:526;s:12:\"um-icon-ipod\";i:527;s:11:\"um-icon-jet\";i:528;s:11:\"um-icon-key\";i:529;s:13:\"um-icon-knife\";i:530;s:14:\"um-icon-laptop\";i:531;s:12:\"um-icon-leaf\";i:532;s:14:\"um-icon-levels\";i:533;s:17:\"um-icon-lightbulb\";i:534;s:12:\"um-icon-link\";i:535;s:14:\"um-icon-load-a\";i:536;s:14:\"um-icon-load-b\";i:537;s:14:\"um-icon-load-c\";i:538;s:14:\"um-icon-load-d\";i:539;s:16:\"um-icon-location\";i:540;s:24:\"um-icon-lock-combination\";i:541;s:14:\"um-icon-locked\";i:542;s:14:\"um-icon-log-in\";i:543;s:15:\"um-icon-log-out\";i:544;s:12:\"um-icon-loop\";i:545;s:14:\"um-icon-magnet\";i:546;s:12:\"um-icon-male\";i:547;s:11:\"um-icon-man\";i:548;s:11:\"um-icon-map\";i:549;s:14:\"um-icon-medkit\";i:550;s:13:\"um-icon-merge\";i:551;s:13:\"um-icon-mic-a\";i:552;s:13:\"um-icon-mic-b\";i:553;s:13:\"um-icon-mic-c\";i:554;s:13:\"um-icon-minus\";i:555;s:21:\"um-icon-minus-circled\";i:556;s:19:\"um-icon-minus-round\";i:557;s:15:\"um-icon-model-s\";i:558;s:15:\"um-icon-monitor\";i:559;s:12:\"um-icon-more\";i:560;s:13:\"um-icon-mouse\";i:561;s:18:\"um-icon-music-note\";i:562;s:15:\"um-icon-navicon\";i:563;s:21:\"um-icon-navicon-round\";i:564;s:16:\"um-icon-navigate\";i:565;s:15:\"um-icon-network\";i:566;s:18:\"um-icon-no-smoking\";i:567;s:15:\"um-icon-nuclear\";i:568;s:14:\"um-icon-outlet\";i:569;s:18:\"um-icon-paintbrush\";i:570;s:19:\"um-icon-paintbucket\";i:571;s:22:\"um-icon-paper-airplane\";i:572;s:17:\"um-icon-paperclip\";i:573;s:13:\"um-icon-pause\";i:574;s:14:\"um-icon-person\";i:575;s:18:\"um-icon-person-add\";i:576;s:22:\"um-icon-person-stalker\";i:577;s:17:\"um-icon-pie-graph\";i:578;s:11:\"um-icon-pin\";i:579;s:16:\"um-icon-pinpoint\";i:580;s:13:\"um-icon-pizza\";i:581;s:13:\"um-icon-plane\";i:582;s:14:\"um-icon-planet\";i:583;s:12:\"um-icon-play\";i:584;s:19:\"um-icon-playstation\";i:585;s:12:\"um-icon-plus\";i:586;s:20:\"um-icon-plus-circled\";i:587;s:18:\"um-icon-plus-round\";i:588;s:14:\"um-icon-podium\";i:589;s:13:\"um-icon-pound\";i:590;s:13:\"um-icon-power\";i:591;s:16:\"um-icon-pricetag\";i:592;s:17:\"um-icon-pricetags\";i:593;s:15:\"um-icon-printer\";i:594;s:20:\"um-icon-pull-request\";i:595;s:18:\"um-icon-qr-scanner\";i:596;s:13:\"um-icon-quote\";i:597;s:19:\"um-icon-radio-waves\";i:598;s:14:\"um-icon-record\";i:599;s:15:\"um-icon-refresh\";i:600;s:13:\"um-icon-reply\";i:601;s:17:\"um-icon-reply-all\";i:602;s:16:\"um-icon-ribbon-a\";i:603;s:16:\"um-icon-ribbon-b\";i:604;s:11:\"um-icon-sad\";i:605;s:19:\"um-icon-sad-outline\";i:606;s:16:\"um-icon-scissors\";i:607;s:14:\"um-icon-search\";i:608;s:16:\"um-icon-settings\";i:609;s:13:\"um-icon-share\";i:610;s:15:\"um-icon-shuffle\";i:611;s:21:\"um-icon-skip-backward\";i:612;s:20:\"um-icon-skip-forward\";i:613;s:22:\"um-icon-social-android\";i:614;s:30:\"um-icon-social-android-outline\";i:615;s:22:\"um-icon-social-angular\";i:616;s:30:\"um-icon-social-angular-outline\";i:617;s:20:\"um-icon-social-apple\";i:618;s:28:\"um-icon-social-apple-outline\";i:619;s:22:\"um-icon-social-bitcoin\";i:620;s:30:\"um-icon-social-bitcoin-outline\";i:621;s:21:\"um-icon-social-buffer\";i:622;s:29:\"um-icon-social-buffer-outline\";i:623;s:21:\"um-icon-social-chrome\";i:624;s:29:\"um-icon-social-chrome-outline\";i:625;s:22:\"um-icon-social-codepen\";i:626;s:30:\"um-icon-social-codepen-outline\";i:627;s:19:\"um-icon-social-css3\";i:628;s:27:\"um-icon-social-css3-outline\";i:629;s:27:\"um-icon-social-designernews\";i:630;s:35:\"um-icon-social-designernews-outline\";i:631;s:23:\"um-icon-social-dribbble\";i:632;s:31:\"um-icon-social-dribbble-outline\";i:633;s:22:\"um-icon-social-dropbox\";i:634;s:30:\"um-icon-social-dropbox-outline\";i:635;s:19:\"um-icon-social-euro\";i:636;s:27:\"um-icon-social-euro-outline\";i:637;s:23:\"um-icon-social-facebook\";i:638;s:31:\"um-icon-social-facebook-outline\";i:639;s:25:\"um-icon-social-foursquare\";i:640;s:33:\"um-icon-social-foursquare-outline\";i:641;s:28:\"um-icon-social-freebsd-devil\";i:642;s:21:\"um-icon-social-github\";i:643;s:29:\"um-icon-social-github-outline\";i:644;s:21:\"um-icon-social-google\";i:645;s:29:\"um-icon-social-google-outline\";i:646;s:25:\"um-icon-social-googleplus\";i:647;s:33:\"um-icon-social-googleplus-outline\";i:648;s:25:\"um-icon-social-hackernews\";i:649;s:33:\"um-icon-social-hackernews-outline\";i:650;s:20:\"um-icon-social-html5\";i:651;s:28:\"um-icon-social-html5-outline\";i:652;s:24:\"um-icon-social-instagram\";i:653;s:32:\"um-icon-social-instagram-outline\";i:654;s:25:\"um-icon-social-javascript\";i:655;s:33:\"um-icon-social-javascript-outline\";i:656;s:23:\"um-icon-social-linkedin\";i:657;s:31:\"um-icon-social-linkedin-outline\";i:658;s:23:\"um-icon-social-markdown\";i:659;s:21:\"um-icon-social-nodejs\";i:660;s:22:\"um-icon-social-octocat\";i:661;s:24:\"um-icon-social-pinterest\";i:662;s:32:\"um-icon-social-pinterest-outline\";i:663;s:21:\"um-icon-social-python\";i:664;s:21:\"um-icon-social-reddit\";i:665;s:29:\"um-icon-social-reddit-outline\";i:666;s:18:\"um-icon-social-rss\";i:667;s:26:\"um-icon-social-rss-outline\";i:668;s:19:\"um-icon-social-sass\";i:669;s:20:\"um-icon-social-skype\";i:670;s:28:\"um-icon-social-skype-outline\";i:671;s:23:\"um-icon-social-snapchat\";i:672;s:31:\"um-icon-social-snapchat-outline\";i:673;s:21:\"um-icon-social-tumblr\";i:674;s:29:\"um-icon-social-tumblr-outline\";i:675;s:18:\"um-icon-social-tux\";i:676;s:21:\"um-icon-social-twitch\";i:677;s:29:\"um-icon-social-twitch-outline\";i:678;s:22:\"um-icon-social-twitter\";i:679;s:30:\"um-icon-social-twitter-outline\";i:680;s:18:\"um-icon-social-usd\";i:681;s:26:\"um-icon-social-usd-outline\";i:682;s:20:\"um-icon-social-vimeo\";i:683;s:28:\"um-icon-social-vimeo-outline\";i:684;s:23:\"um-icon-social-whatsapp\";i:685;s:31:\"um-icon-social-whatsapp-outline\";i:686;s:22:\"um-icon-social-windows\";i:687;s:30:\"um-icon-social-windows-outline\";i:688;s:24:\"um-icon-social-two-dayssss\";i:689;s:32:\"um-icon-social-two-dayssss-outline\";i:690;s:20:\"um-icon-social-yahoo\";i:691;s:28:\"um-icon-social-yahoo-outline\";i:692;s:18:\"um-icon-social-yen\";i:693;s:26:\"um-icon-social-yen-outline\";i:694;s:22:\"um-icon-social-youtube\";i:695;s:30:\"um-icon-social-youtube-outline\";i:696;s:16:\"um-icon-soup-can\";i:697;s:24:\"um-icon-soup-can-outline\";i:698;s:20:\"um-icon-speakerphone\";i:699;s:19:\"um-icon-speedometer\";i:700;s:13:\"um-icon-spoon\";i:701;s:12:\"um-icon-star\";i:702;s:18:\"um-icon-stats-bars\";i:703;s:13:\"um-icon-steam\";i:704;s:12:\"um-icon-stop\";i:705;s:19:\"um-icon-thermometer\";i:706;s:18:\"um-icon-thumbsdown\";i:707;s:16:\"um-icon-thumbsup\";i:708;s:14:\"um-icon-toggle\";i:709;s:21:\"um-icon-toggle-filled\";i:710;s:19:\"um-icon-transgender\";i:711;s:15:\"um-icon-trash-a\";i:712;s:15:\"um-icon-trash-b\";i:713;s:14:\"um-icon-trophy\";i:714;s:14:\"um-icon-tshirt\";i:715;s:22:\"um-icon-tshirt-outline\";i:716;s:16:\"um-icon-umbrella\";i:717;s:18:\"um-icon-university\";i:718;s:16:\"um-icon-unlocked\";i:719;s:14:\"um-icon-upload\";i:720;s:11:\"um-icon-usb\";i:721;s:19:\"um-icon-videocamera\";i:722;s:19:\"um-icon-volume-high\";i:723;s:18:\"um-icon-volume-low\";i:724;s:21:\"um-icon-volume-medium\";i:725;s:19:\"um-icon-volume-mute\";i:726;s:12:\"um-icon-wand\";i:727;s:17:\"um-icon-waterdrop\";i:728;s:12:\"um-icon-wifi\";i:729;s:17:\"um-icon-wineglass\";i:730;s:13:\"um-icon-woman\";i:731;s:14:\"um-icon-wrench\";i:732;s:12:\"um-icon-xbox\";i:733;s:21:\"um-faicon-sticky-note\";i:734;s:15:\"um-faicon-glass\";i:735;s:15:\"um-faicon-music\";i:736;s:16:\"um-faicon-search\";i:737;s:20:\"um-faicon-envelope-o\";i:738;s:15:\"um-faicon-heart\";i:739;s:14:\"um-faicon-star\";i:740;s:16:\"um-faicon-star-o\";i:741;s:14:\"um-faicon-user\";i:742;s:14:\"um-faicon-film\";i:743;s:18:\"um-faicon-th-large\";i:744;s:12:\"um-faicon-th\";i:745;s:17:\"um-faicon-th-list\";i:746;s:15:\"um-faicon-check\";i:747;s:15:\"um-faicon-times\";i:748;s:21:\"um-faicon-search-plus\";i:749;s:22:\"um-faicon-search-minus\";i:750;s:19:\"um-faicon-power-off\";i:751;s:16:\"um-faicon-signal\";i:752;s:13:\"um-faicon-cog\";i:753;s:17:\"um-faicon-trash-o\";i:754;s:14:\"um-faicon-home\";i:755;s:16:\"um-faicon-file-o\";i:756;s:17:\"um-faicon-clock-o\";i:757;s:14:\"um-faicon-road\";i:758;s:18:\"um-faicon-download\";i:759;s:29:\"um-faicon-arrow-circle-o-down\";i:760;s:27:\"um-faicon-arrow-circle-o-up\";i:761;s:15:\"um-faicon-inbox\";i:762;s:23:\"um-faicon-play-circle-o\";i:763;s:16:\"um-faicon-repeat\";i:764;s:17:\"um-faicon-refresh\";i:765;s:18:\"um-faicon-list-alt\";i:766;s:14:\"um-faicon-lock\";i:767;s:14:\"um-faicon-flag\";i:768;s:20:\"um-faicon-headphones\";i:769;s:20:\"um-faicon-volume-off\";i:770;s:21:\"um-faicon-volume-down\";i:771;s:19:\"um-faicon-volume-up\";i:772;s:16:\"um-faicon-qrcode\";i:773;s:17:\"um-faicon-barcode\";i:774;s:13:\"um-faicon-tag\";i:775;s:14:\"um-faicon-tags\";i:776;s:14:\"um-faicon-book\";i:777;s:18:\"um-faicon-bookmark\";i:778;s:15:\"um-faicon-print\";i:779;s:16:\"um-faicon-camera\";i:780;s:14:\"um-faicon-font\";i:781;s:14:\"um-faicon-bold\";i:782;s:16:\"um-faicon-italic\";i:783;s:21:\"um-faicon-text-height\";i:784;s:20:\"um-faicon-text-width\";i:785;s:20:\"um-faicon-align-left\";i:786;s:22:\"um-faicon-align-center\";i:787;s:21:\"um-faicon-align-right\";i:788;s:23:\"um-faicon-align-justify\";i:789;s:14:\"um-faicon-list\";i:790;s:17:\"um-faicon-outdent\";i:791;s:16:\"um-faicon-indent\";i:792;s:22:\"um-faicon-video-camera\";i:793;s:19:\"um-faicon-picture-o\";i:794;s:16:\"um-faicon-pencil\";i:795;s:20:\"um-faicon-map-marker\";i:796;s:16:\"um-faicon-adjust\";i:797;s:14:\"um-faicon-tint\";i:798;s:25:\"um-faicon-pencil-square-o\";i:799;s:24:\"um-faicon-share-square-o\";i:800;s:24:\"um-faicon-check-square-o\";i:801;s:16:\"um-faicon-arrows\";i:802;s:23:\"um-faicon-step-backward\";i:803;s:23:\"um-faicon-fast-backward\";i:804;s:18:\"um-faicon-backward\";i:805;s:14:\"um-faicon-play\";i:806;s:15:\"um-faicon-pause\";i:807;s:14:\"um-faicon-stop\";i:808;s:17:\"um-faicon-forward\";i:809;s:22:\"um-faicon-fast-forward\";i:810;s:22:\"um-faicon-step-forward\";i:811;s:15:\"um-faicon-eject\";i:812;s:22:\"um-faicon-chevron-left\";i:813;s:23:\"um-faicon-chevron-right\";i:814;s:21:\"um-faicon-plus-circle\";i:815;s:22:\"um-faicon-minus-circle\";i:816;s:22:\"um-faicon-times-circle\";i:817;s:22:\"um-faicon-check-circle\";i:818;s:25:\"um-faicon-question-circle\";i:819;s:21:\"um-faicon-info-circle\";i:820;s:20:\"um-faicon-crosshairs\";i:821;s:24:\"um-faicon-times-circle-o\";i:822;s:24:\"um-faicon-check-circle-o\";i:823;s:13:\"um-faicon-ban\";i:824;s:20:\"um-faicon-arrow-left\";i:825;s:21:\"um-faicon-arrow-right\";i:826;s:18:\"um-faicon-arrow-up\";i:827;s:20:\"um-faicon-arrow-down\";i:828;s:15:\"um-faicon-share\";i:829;s:16:\"um-faicon-expand\";i:830;s:18:\"um-faicon-compress\";i:831;s:14:\"um-faicon-plus\";i:832;s:15:\"um-faicon-minus\";i:833;s:18:\"um-faicon-asterisk\";i:834;s:28:\"um-faicon-exclamation-circle\";i:835;s:14:\"um-faicon-gift\";i:836;s:14:\"um-faicon-leaf\";i:837;s:14:\"um-faicon-fire\";i:838;s:13:\"um-faicon-eye\";i:839;s:19:\"um-faicon-eye-slash\";i:840;s:30:\"um-faicon-exclamation-triangle\";i:841;s:15:\"um-faicon-plane\";i:842;s:18:\"um-faicon-calendar\";i:843;s:16:\"um-faicon-random\";i:844;s:17:\"um-faicon-comment\";i:845;s:16:\"um-faicon-magnet\";i:846;s:20:\"um-faicon-chevron-up\";i:847;s:22:\"um-faicon-chevron-down\";i:848;s:17:\"um-faicon-retweet\";i:849;s:23:\"um-faicon-shopping-cart\";i:850;s:16:\"um-faicon-folder\";i:851;s:21:\"um-faicon-folder-open\";i:852;s:18:\"um-faicon-arrows-v\";i:853;s:18:\"um-faicon-arrows-h\";i:854;s:19:\"um-faicon-bar-chart\";i:855;s:24:\"um-faicon-twitter-square\";i:856;s:25:\"um-faicon-facebook-square\";i:857;s:22:\"um-faicon-camera-retro\";i:858;s:13:\"um-faicon-key\";i:859;s:14:\"um-faicon-cogs\";i:860;s:18:\"um-faicon-comments\";i:861;s:21:\"um-faicon-thumbs-o-up\";i:862;s:23:\"um-faicon-thumbs-o-down\";i:863;s:19:\"um-faicon-star-half\";i:864;s:17:\"um-faicon-heart-o\";i:865;s:18:\"um-faicon-sign-out\";i:866;s:25:\"um-faicon-linkedin-square\";i:867;s:20:\"um-faicon-thumb-tack\";i:868;s:23:\"um-faicon-external-link\";i:869;s:17:\"um-faicon-sign-in\";i:870;s:16:\"um-faicon-trophy\";i:871;s:23:\"um-faicon-github-square\";i:872;s:16:\"um-faicon-upload\";i:873;s:17:\"um-faicon-lemon-o\";i:874;s:15:\"um-faicon-phone\";i:875;s:18:\"um-faicon-square-o\";i:876;s:20:\"um-faicon-bookmark-o\";i:877;s:22:\"um-faicon-phone-square\";i:878;s:17:\"um-faicon-twitter\";i:879;s:18:\"um-faicon-facebook\";i:880;s:16:\"um-faicon-github\";i:881;s:16:\"um-faicon-unlock\";i:882;s:21:\"um-faicon-credit-card\";i:883;s:13:\"um-faicon-rss\";i:884;s:15:\"um-faicon-hdd-o\";i:885;s:18:\"um-faicon-bullhorn\";i:886;s:14:\"um-faicon-bell\";i:887;s:21:\"um-faicon-certificate\";i:888;s:22:\"um-faicon-hand-o-right\";i:889;s:21:\"um-faicon-hand-o-left\";i:890;s:19:\"um-faicon-hand-o-up\";i:891;s:21:\"um-faicon-hand-o-down\";i:892;s:27:\"um-faicon-arrow-circle-left\";i:893;s:28:\"um-faicon-arrow-circle-right\";i:894;s:25:\"um-faicon-arrow-circle-up\";i:895;s:27:\"um-faicon-arrow-circle-down\";i:896;s:15:\"um-faicon-globe\";i:897;s:16:\"um-faicon-wrench\";i:898;s:15:\"um-faicon-tasks\";i:899;s:16:\"um-faicon-filter\";i:900;s:19:\"um-faicon-briefcase\";i:901;s:20:\"um-faicon-arrows-alt\";i:902;s:15:\"um-faicon-users\";i:903;s:14:\"um-faicon-link\";i:904;s:15:\"um-faicon-cloud\";i:905;s:15:\"um-faicon-flask\";i:906;s:18:\"um-faicon-scissors\";i:907;s:17:\"um-faicon-files-o\";i:908;s:19:\"um-faicon-paperclip\";i:909;s:18:\"um-faicon-floppy-o\";i:910;s:16:\"um-faicon-square\";i:911;s:14:\"um-faicon-bars\";i:912;s:17:\"um-faicon-list-ul\";i:913;s:17:\"um-faicon-list-ol\";i:914;s:23:\"um-faicon-strikethrough\";i:915;s:19:\"um-faicon-underline\";i:916;s:15:\"um-faicon-table\";i:917;s:15:\"um-faicon-magic\";i:918;s:15:\"um-faicon-truck\";i:919;s:19:\"um-faicon-pinterest\";i:920;s:26:\"um-faicon-pinterest-square\";i:921;s:28:\"um-faicon-google-plus-square\";i:922;s:21:\"um-faicon-google-plus\";i:923;s:15:\"um-faicon-money\";i:924;s:20:\"um-faicon-caret-down\";i:925;s:18:\"um-faicon-caret-up\";i:926;s:20:\"um-faicon-caret-left\";i:927;s:21:\"um-faicon-caret-right\";i:928;s:17:\"um-faicon-columns\";i:929;s:14:\"um-faicon-sort\";i:930;s:19:\"um-faicon-sort-desc\";i:931;s:18:\"um-faicon-sort-asc\";i:932;s:18:\"um-faicon-envelope\";i:933;s:18:\"um-faicon-linkedin\";i:934;s:14:\"um-faicon-undo\";i:935;s:15:\"um-faicon-gavel\";i:936;s:20:\"um-faicon-tachometer\";i:937;s:19:\"um-faicon-comment-o\";i:938;s:20:\"um-faicon-comments-o\";i:939;s:14:\"um-faicon-bolt\";i:940;s:17:\"um-faicon-sitemap\";i:941;s:18:\"um-faicon-umbrella\";i:942;s:19:\"um-faicon-clipboard\";i:943;s:21:\"um-faicon-lightbulb-o\";i:944;s:18:\"um-faicon-exchange\";i:945;s:24:\"um-faicon-cloud-download\";i:946;s:22:\"um-faicon-cloud-upload\";i:947;s:17:\"um-faicon-user-md\";i:948;s:21:\"um-faicon-stethoscope\";i:949;s:18:\"um-faicon-suitcase\";i:950;s:16:\"um-faicon-bell-o\";i:951;s:16:\"um-faicon-coffee\";i:952;s:17:\"um-faicon-cutlery\";i:953;s:21:\"um-faicon-file-text-o\";i:954;s:20:\"um-faicon-building-o\";i:955;s:20:\"um-faicon-hospital-o\";i:956;s:19:\"um-faicon-ambulance\";i:957;s:16:\"um-faicon-medkit\";i:958;s:21:\"um-faicon-fighter-jet\";i:959;s:14:\"um-faicon-beer\";i:960;s:18:\"um-faicon-h-square\";i:961;s:21:\"um-faicon-plus-square\";i:962;s:27:\"um-faicon-angle-double-left\";i:963;s:28:\"um-faicon-angle-double-right\";i:964;s:25:\"um-faicon-angle-double-up\";i:965;s:27:\"um-faicon-angle-double-down\";i:966;s:20:\"um-faicon-angle-left\";i:967;s:21:\"um-faicon-angle-right\";i:968;s:18:\"um-faicon-angle-up\";i:969;s:20:\"um-faicon-angle-down\";i:970;s:17:\"um-faicon-desktop\";i:971;s:16:\"um-faicon-laptop\";i:972;s:16:\"um-faicon-tablet\";i:973;s:16:\"um-faicon-mobile\";i:974;s:18:\"um-faicon-circle-o\";i:975;s:20:\"um-faicon-quote-left\";i:976;s:21:\"um-faicon-quote-right\";i:977;s:17:\"um-faicon-spinner\";i:978;s:14:\"um-faicon-spin\";i:979;s:16:\"um-faicon-circle\";i:980;s:15:\"um-faicon-reply\";i:981;s:20:\"um-faicon-github-alt\";i:982;s:18:\"um-faicon-folder-o\";i:983;s:23:\"um-faicon-folder-open-o\";i:984;s:17:\"um-faicon-smile-o\";i:985;s:17:\"um-faicon-frown-o\";i:986;s:15:\"um-faicon-meh-o\";i:987;s:17:\"um-faicon-gamepad\";i:988;s:20:\"um-faicon-keyboard-o\";i:989;s:16:\"um-faicon-flag-o\";i:990;s:24:\"um-faicon-flag-checkered\";i:991;s:18:\"um-faicon-terminal\";i:992;s:14:\"um-faicon-code\";i:993;s:19:\"um-faicon-reply-all\";i:994;s:21:\"um-faicon-star-half-o\";i:995;s:24:\"um-faicon-location-arrow\";i:996;s:14:\"um-faicon-crop\";i:997;s:19:\"um-faicon-code-fork\";i:998;s:22:\"um-faicon-chain-broken\";i:999;s:18:\"um-faicon-question\";i:1000;s:14:\"um-faicon-info\";i:1001;s:21:\"um-faicon-exclamation\";i:1002;s:21:\"um-faicon-superscript\";i:1003;s:19:\"um-faicon-subscript\";i:1004;s:16:\"um-faicon-eraser\";i:1005;s:22:\"um-faicon-puzzle-piece\";i:1006;s:20:\"um-faicon-microphone\";i:1007;s:26:\"um-faicon-microphone-slash\";i:1008;s:16:\"um-faicon-shield\";i:1009;s:20:\"um-faicon-calendar-o\";i:1010;s:27:\"um-faicon-fire-extinguisher\";i:1011;s:16:\"um-faicon-rocket\";i:1012;s:16:\"um-faicon-maxcdn\";i:1013;s:29:\"um-faicon-chevron-circle-left\";i:1014;s:30:\"um-faicon-chevron-circle-right\";i:1015;s:27:\"um-faicon-chevron-circle-up\";i:1016;s:29:\"um-faicon-chevron-circle-down\";i:1017;s:15:\"um-faicon-html5\";i:1018;s:14:\"um-faicon-css3\";i:1019;s:16:\"um-faicon-anchor\";i:1020;s:20:\"um-faicon-unlock-alt\";i:1021;s:18:\"um-faicon-bullseye\";i:1022;s:20:\"um-faicon-ellipsis-h\";i:1023;s:20:\"um-faicon-ellipsis-v\";i:1024;s:20:\"um-faicon-rss-square\";i:1025;s:21:\"um-faicon-play-circle\";i:1026;s:16:\"um-faicon-ticket\";i:1027;s:22:\"um-faicon-minus-square\";i:1028;s:24:\"um-faicon-minus-square-o\";i:1029;s:18:\"um-faicon-level-up\";i:1030;s:20:\"um-faicon-level-down\";i:1031;s:22:\"um-faicon-check-square\";i:1032;s:23:\"um-faicon-pencil-square\";i:1033;s:30:\"um-faicon-external-link-square\";i:1034;s:22:\"um-faicon-share-square\";i:1035;s:17:\"um-faicon-compass\";i:1036;s:29:\"um-faicon-caret-square-o-down\";i:1037;s:27:\"um-faicon-caret-square-o-up\";i:1038;s:30:\"um-faicon-caret-square-o-right\";i:1039;s:13:\"um-faicon-eur\";i:1040;s:13:\"um-faicon-gbp\";i:1041;s:13:\"um-faicon-usd\";i:1042;s:13:\"um-faicon-inr\";i:1043;s:13:\"um-faicon-jpy\";i:1044;s:13:\"um-faicon-rub\";i:1045;s:13:\"um-faicon-krw\";i:1046;s:13:\"um-faicon-btc\";i:1047;s:14:\"um-faicon-file\";i:1048;s:19:\"um-faicon-file-text\";i:1049;s:24:\"um-faicon-sort-alpha-asc\";i:1050;s:25:\"um-faicon-sort-alpha-desc\";i:1051;s:25:\"um-faicon-sort-amount-asc\";i:1052;s:26:\"um-faicon-sort-amount-desc\";i:1053;s:26:\"um-faicon-sort-numeric-asc\";i:1054;s:27:\"um-faicon-sort-numeric-desc\";i:1055;s:19:\"um-faicon-thumbs-up\";i:1056;s:21:\"um-faicon-thumbs-down\";i:1057;s:24:\"um-faicon-youtube-square\";i:1058;s:17:\"um-faicon-youtube\";i:1059;s:14:\"um-faicon-xing\";i:1060;s:21:\"um-faicon-xing-square\";i:1061;s:22:\"um-faicon-youtube-play\";i:1062;s:17:\"um-faicon-dropbox\";i:1063;s:24:\"um-faicon-stack-overflow\";i:1064;s:19:\"um-faicon-instagram\";i:1065;s:16:\"um-faicon-flickr\";i:1066;s:13:\"um-faicon-adn\";i:1067;s:19:\"um-faicon-bitbucket\";i:1068;s:26:\"um-faicon-bitbucket-square\";i:1069;s:16:\"um-faicon-tumblr\";i:1070;s:23:\"um-faicon-tumblr-square\";i:1071;s:25:\"um-faicon-long-arrow-down\";i:1072;s:23:\"um-faicon-long-arrow-up\";i:1073;s:25:\"um-faicon-long-arrow-left\";i:1074;s:26:\"um-faicon-long-arrow-right\";i:1075;s:15:\"um-faicon-apple\";i:1076;s:17:\"um-faicon-windows\";i:1077;s:17:\"um-faicon-android\";i:1078;s:15:\"um-faicon-linux\";i:1079;s:18:\"um-faicon-dribbble\";i:1080;s:15:\"um-faicon-skype\";i:1081;s:20:\"um-faicon-foursquare\";i:1082;s:16:\"um-faicon-trello\";i:1083;s:16:\"um-faicon-female\";i:1084;s:14:\"um-faicon-male\";i:1085;s:16:\"um-faicon-gittip\";i:1086;s:15:\"um-faicon-sun-o\";i:1087;s:16:\"um-faicon-moon-o\";i:1088;s:17:\"um-faicon-archive\";i:1089;s:13:\"um-faicon-bug\";i:1090;s:12:\"um-faicon-vk\";i:1091;s:15:\"um-faicon-weibo\";i:1092;s:16:\"um-faicon-renren\";i:1093;s:19:\"um-faicon-pagelines\";i:1094;s:24:\"um-faicon-stack-exchange\";i:1095;s:30:\"um-faicon-arrow-circle-o-right\";i:1096;s:29:\"um-faicon-arrow-circle-o-left\";i:1097;s:29:\"um-faicon-caret-square-o-left\";i:1098;s:22:\"um-faicon-dot-circle-o\";i:1099;s:20:\"um-faicon-wheelchair\";i:1100;s:22:\"um-faicon-vimeo-square\";i:1101;s:13:\"um-faicon-try\";i:1102;s:23:\"um-faicon-plus-square-o\";i:1103;s:23:\"um-faicon-space-shuttle\";i:1104;s:15:\"um-faicon-slack\";i:1105;s:25:\"um-faicon-envelope-square\";i:1106;s:19:\"um-faicon-two-dayssss\";i:1107;s:16:\"um-faicon-openid\";i:1108;s:20:\"um-faicon-university\";i:1109;s:24:\"um-faicon-graduation-cap\";i:1110;s:15:\"um-faicon-yahoo\";i:1111;s:16:\"um-faicon-google\";i:1112;s:16:\"um-faicon-reddit\";i:1113;s:23:\"um-faicon-reddit-square\";i:1114;s:28:\"um-faicon-stumbleupon-circle\";i:1115;s:21:\"um-faicon-stumbleupon\";i:1116;s:19:\"um-faicon-delicious\";i:1117;s:14:\"um-faicon-digg\";i:1118;s:20:\"um-faicon-pied-piper\";i:1119;s:24:\"um-faicon-pied-piper-alt\";i:1120;s:16:\"um-faicon-drupal\";i:1121;s:16:\"um-faicon-joomla\";i:1122;s:18:\"um-faicon-language\";i:1123;s:13:\"um-faicon-fax\";i:1124;s:18:\"um-faicon-building\";i:1125;s:15:\"um-faicon-child\";i:1126;s:13:\"um-faicon-paw\";i:1127;s:15:\"um-faicon-spoon\";i:1128;s:14:\"um-faicon-cube\";i:1129;s:15:\"um-faicon-cubes\";i:1130;s:17:\"um-faicon-behance\";i:1131;s:24:\"um-faicon-behance-square\";i:1132;s:15:\"um-faicon-steam\";i:1133;s:22:\"um-faicon-steam-square\";i:1134;s:17:\"um-faicon-recycle\";i:1135;s:13:\"um-faicon-car\";i:1136;s:14:\"um-faicon-taxi\";i:1137;s:14:\"um-faicon-tree\";i:1138;s:17:\"um-faicon-spotify\";i:1139;s:20:\"um-faicon-deviantart\";i:1140;s:20:\"um-faicon-soundcloud\";i:1141;s:18:\"um-faicon-database\";i:1142;s:20:\"um-faicon-file-pdf-o\";i:1143;s:21:\"um-faicon-file-word-o\";i:1144;s:22:\"um-faicon-file-excel-o\";i:1145;s:27:\"um-faicon-file-powerpoint-o\";i:1146;s:22:\"um-faicon-file-image-o\";i:1147;s:24:\"um-faicon-file-archive-o\";i:1148;s:22:\"um-faicon-file-audio-o\";i:1149;s:22:\"um-faicon-file-video-o\";i:1150;s:21:\"um-faicon-file-code-o\";i:1151;s:14:\"um-faicon-vine\";i:1152;s:17:\"um-faicon-codepen\";i:1153;s:18:\"um-faicon-jsfiddle\";i:1154;s:19:\"um-faicon-life-ring\";i:1155;s:24:\"um-faicon-circle-o-notch\";i:1156;s:15:\"um-faicon-rebel\";i:1157;s:16:\"um-faicon-empire\";i:1158;s:20:\"um-faicon-git-square\";i:1159;s:13:\"um-faicon-git\";i:1160;s:21:\"um-faicon-hacker-news\";i:1161;s:23:\"um-faicon-tencent-weibo\";i:1162;s:12:\"um-faicon-qq\";i:1163;s:16:\"um-faicon-weixin\";i:1164;s:21:\"um-faicon-paper-plane\";i:1165;s:23:\"um-faicon-paper-plane-o\";i:1166;s:17:\"um-faicon-history\";i:1167;s:21:\"um-faicon-circle-thin\";i:1168;s:16:\"um-faicon-header\";i:1169;s:19:\"um-faicon-paragraph\";i:1170;s:17:\"um-faicon-sliders\";i:1171;s:19:\"um-faicon-share-alt\";i:1172;s:26:\"um-faicon-share-alt-square\";i:1173;s:14:\"um-faicon-bomb\";i:1174;s:18:\"um-faicon-futbol-o\";i:1175;s:13:\"um-faicon-tty\";i:1176;s:20:\"um-faicon-binoculars\";i:1177;s:14:\"um-faicon-plug\";i:1178;s:20:\"um-faicon-slideshare\";i:1179;s:16:\"um-faicon-twitch\";i:1180;s:14:\"um-faicon-yelp\";i:1181;s:21:\"um-faicon-newspaper-o\";i:1182;s:14:\"um-faicon-wifi\";i:1183;s:20:\"um-faicon-calculator\";i:1184;s:16:\"um-faicon-paypal\";i:1185;s:23:\"um-faicon-google-wallet\";i:1186;s:17:\"um-faicon-cc-visa\";i:1187;s:23:\"um-faicon-cc-mastercard\";i:1188;s:21:\"um-faicon-cc-discover\";i:1189;s:17:\"um-faicon-cc-amex\";i:1190;s:19:\"um-faicon-cc-paypal\";i:1191;s:19:\"um-faicon-cc-stripe\";i:1192;s:20:\"um-faicon-bell-slash\";i:1193;s:22:\"um-faicon-bell-slash-o\";i:1194;s:15:\"um-faicon-trash\";i:1195;s:19:\"um-faicon-copyright\";i:1196;s:12:\"um-faicon-at\";i:1197;s:20:\"um-faicon-eyedropper\";i:1198;s:21:\"um-faicon-paint-brush\";i:1199;s:23:\"um-faicon-birthday-cake\";i:1200;s:20:\"um-faicon-area-chart\";i:1201;s:19:\"um-faicon-pie-chart\";i:1202;s:20:\"um-faicon-line-chart\";i:1203;s:16:\"um-faicon-lastfm\";i:1204;s:23:\"um-faicon-lastfm-square\";i:1205;s:20:\"um-faicon-toggle-off\";i:1206;s:19:\"um-faicon-toggle-on\";i:1207;s:17:\"um-faicon-bicycle\";i:1208;s:13:\"um-faicon-bus\";i:1209;s:17:\"um-faicon-ioxhost\";i:1210;s:19:\"um-faicon-angellist\";i:1211;s:12:\"um-faicon-cc\";i:1212;s:13:\"um-faicon-ils\";i:1213;s:18:\"um-faicon-meanpath\";i:1214;s:14:\"um-faicon-spin\";i:1215;s:14:\"um-faicon-spin\";i:1216;s:14:\"um-faicon-spin\";i:1217;s:14:\"um-faicon-spin\";i:1218;s:14:\"um-faicon-spin\";}', 'yes'),
(162, 'current_theme', 'Twodayssss', 'yes'),
(163, 'theme_mods_twodayssss', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"second\";i:2;s:7:\"primary\";i:22;}s:18:\"custom_css_post_id\";i:-1;s:11:\"custom_logo\";i:15;}', 'yes'),
(164, 'theme_switched', '', 'yes'),
(165, 'twodays_modules', 'a:24:{s:13:\"member_online\";s:2:\"on\";s:16:\"member_followers\";s:2:\"on\";s:16:\"member_user_tags\";s:2:\"on\";s:14:\"member_bbpress\";s:3:\"off\";s:16:\"member_bookmarks\";s:2:\"on\";s:14:\"member_friends\";s:2:\"on\";s:13:\"member_groups\";s:2:\"on\";s:16:\"member_instagram\";s:2:\"on\";s:16:\"member_mailchimp\";s:2:\"on\";s:16:\"member_messaging\";s:2:\"on\";s:13:\"member_mycred\";s:2:\"on\";s:14:\"member_notices\";s:2:\"on\";s:20:\"member_notifications\";s:2:\"on\";s:22:\"member_private_content\";s:2:\"on\";s:27:\"member_profile_completeness\";s:2:\"on\";s:16:\"member_recaptcha\";s:2:\"on\";s:14:\"member_reviews\";s:2:\"on\";s:22:\"member_social_activity\";s:2:\"on\";s:19:\"member_social_login\";s:2:\"on\";s:23:\"member_terms_conditions\";s:2:\"on\";s:18:\"member_user_photos\";s:2:\"on\";s:21:\"member_verified_users\";s:2:\"on\";s:18:\"member_woocommerce\";s:2:\"on\";s:15:\"member_switcher\";s:3:\"off\";}', 'yes'),
(166, 'twodays_basics', '', 'yes'),
(167, 'twodays_advanced', '', 'yes'),
(168, 'twodays_others', '', 'yes'),
(239, '_site_transient_timeout_php_check_413a4f2c91fec3a4996c65b3565c8cb8', '1582909011', 'no'),
(240, '_site_transient_php_check_413a4f2c91fec3a4996c65b3565c8cb8', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(173, 'um_online_users_last_updated', '1582346969', 'yes'),
(174, 'um_online_last_version_upgrade', '2.1.2', 'yes'),
(175, 'um_online_version', '2.1.2', 'yes'),
(176, 'widget_um_online_users', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(742, 'woocommerce_admin_notices', 'a:2:{i:1;s:20:\"no_secure_connection\";i:2;s:8:\"wc_admin\";}', 'yes'),
(743, 'um_woocommerce_last_version_upgrade', '2.10.8', 'yes'),
(744, 'um_woocommerce_version', '2.10.8', 'yes'),
(748, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(749, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(750, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(751, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(752, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(753, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(754, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(755, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(756, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(757, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(758, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(766, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(792, 'woocommerce_setup_shipping_labels', '1', 'yes'),
(773, 'woocommerce_setup_background_installing_jetpack', '1', 'yes'),
(774, 'woocommerce_setup_background_installing_woocommerce-services', '1', 'yes'),
(770, 'woocommerce_product_type', 'both', 'yes'),
(771, 'woocommerce_sell_in_person', '1', 'yes'),
(761, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(762, '_transient_as_comment_count', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:0;s:3:\"all\";i:0;s:9:\"moderated\";i:0;s:8:\"approved\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(775, 'woocommerce_setup_background_installing_stripe', '1', 'yes'),
(776, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";s:3:\"yes\";s:5:\"email\";s:20:\"twodayssss@gmail.com\";}', 'yes'),
(777, 'woocommerce_setup_background_installing_square', '1', 'yes'),
(778, 'woocommerce_square_settings', 'a:1:{s:7:\"enabled\";s:3:\"yes\";}', 'yes'),
(779, 'woocommerce_setup_background_installing_ppec_paypal', '1', 'yes'),
(780, 'woocommerce_ppec_paypal_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:16:\"reroute_requests\";s:3:\"yes\";s:5:\"email\";s:20:\"twodayssss@gmail.com\";}', 'yes'),
(781, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(782, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(783, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(793, '_transient_shipping-transient-version', '1582347498', 'yes'),
(794, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:12:\"标准运费\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(795, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:12:\"标准运费\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(804, '_transient_timeout_wc_report_sales_by_date', '1582433917', 'no'),
(805, '_transient_wc_report_sales_by_date', 'a:8:{s:32:\"b134b1ea3a2a3e28fb40ea023b2637e3\";a:0:{}s:32:\"cee6624111cfff330a3309c3acfc3e71\";a:0:{}s:32:\"c0f707146fed969af1edb0111f90719f\";a:0:{}s:32:\"742390fab078cc0614d3ab4026478095\";N;s:32:\"79f8df55a486c49d881fc11768945eac\";a:0:{}s:32:\"2e3558ef50dc13b71dc8699c68fae5a1\";a:0:{}s:32:\"2063e21b8f7027d76a0bd10694f85fc2\";a:0:{}s:32:\"bc1ecc65d1e63377c85038b05970ec6d\";a:0:{}}', 'no');
INSERT INTO `td_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(806, '_transient_timeout_wc_admin_report', '1582433917', 'no'),
(807, '_transient_wc_admin_report', 'a:1:{s:32:\"be1994642903752cc0bc4779cd084710\";a:0:{}}', 'no'),
(189, '_site_transient_timeout_popular_importers_f27907f7f8408776f934cb88d88f9765', '1582474561', 'no'),
(190, '_site_transient_popular_importers_f27907f7f8408776f934cb88d88f9765', 'a:2:{s:9:\"importers\";a:8:{s:7:\"blogger\";a:4:{s:4:\"name\";s:7:\"Blogger\";s:11:\"description\";s:54:\"Import posts, comments, and users from a Blogger blog.\";s:11:\"plugin-slug\";s:16:\"blogger-importer\";s:11:\"importer-id\";s:7:\"blogger\";}s:9:\"wpcat2tag\";a:4:{s:4:\"name\";s:29:\"Categories and Tags Converter\";s:11:\"description\";s:71:\"Convert existing categories to tags or tags to categories, selectively.\";s:11:\"plugin-slug\";s:18:\"wpcat2tag-importer\";s:11:\"importer-id\";s:10:\"wp-cat2tag\";}s:11:\"livejournal\";a:4:{s:4:\"name\";s:11:\"LiveJournal\";s:11:\"description\";s:46:\"Import posts from LiveJournal using their API.\";s:11:\"plugin-slug\";s:20:\"livejournal-importer\";s:11:\"importer-id\";s:11:\"livejournal\";}s:11:\"movabletype\";a:4:{s:4:\"name\";s:24:\"Movable Type and TypePad\";s:11:\"description\";s:62:\"Import posts and comments from a Movable Type or TypePad blog.\";s:11:\"plugin-slug\";s:20:\"movabletype-importer\";s:11:\"importer-id\";s:2:\"mt\";}s:4:\"opml\";a:4:{s:4:\"name\";s:8:\"Blogroll\";s:11:\"description\";s:28:\"Import links in OPML format.\";s:11:\"plugin-slug\";s:13:\"opml-importer\";s:11:\"importer-id\";s:4:\"opml\";}s:3:\"rss\";a:4:{s:4:\"name\";s:3:\"RSS\";s:11:\"description\";s:30:\"Import posts from an RSS feed.\";s:11:\"plugin-slug\";s:12:\"rss-importer\";s:11:\"importer-id\";s:3:\"rss\";}s:6:\"tumblr\";a:4:{s:4:\"name\";s:6:\"Tumblr\";s:11:\"description\";s:53:\"Import posts &amp; media from Tumblr using their API.\";s:11:\"plugin-slug\";s:15:\"tumblr-importer\";s:11:\"importer-id\";s:6:\"tumblr\";}s:9:\"two-dayssss\";a:4:{s:4:\"name\";s:9:\"two-dayssss\";s:11:\"description\";s:96:\"Import posts, pages, comments, custom fields, categories, and tags from a two-dayssss export file.\";s:11:\"plugin-slug\";s:18:\"two-dayssss-importer\";s:11:\"importer-id\";s:9:\"two-dayssss\";}}s:10:\"translated\";b:0;}', 'no'),
(221, 'category_children', 'a:0:{}', 'yes'),
(205, 'um_followers_last_version_upgrade', '2.10.5', 'yes'),
(206, 'um_followers_version', '2.10.5', 'yes'),
(207, 'ultimatemember_followers_db', '2.10.5', 'yes'),
(208, 'widget_um_my_followers', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(209, 'widget_um_my_following', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(212, 'um_online_users', 'a:0:{}', 'yes'),
(800, '_transient_timeout_wc_low_stock_count', '1584939517', 'no'),
(801, '_transient_wc_low_stock_count', '0', 'no'),
(802, '_transient_timeout_wc_outofstock_count', '1584939517', 'no'),
(803, '_transient_wc_outofstock_count', '0', 'no'),
(544, 'um_reviews_last_version_upgrade', '2.10.4', 'yes'),
(545, 'um_reviews_version', '2.10.4', 'yes'),
(546, 'widget_um_reviews_top_rated', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(547, 'widget_um_reviews_most_rated', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(548, 'widget_um_reviews_lowest_rated', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(551, 'um_activity_last_version_upgrade', '2.10.8', 'yes'),
(552, 'um_activity_version', '2.10.8', 'yes'),
(553, 'widget_um_activity_trending_tags', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(556, 'um_social_login_last_version_upgrade', '2.10.7', 'yes'),
(557, 'um_social_login_version', '2.10.7', 'yes'),
(558, 'um_social_login_form_installed', '528', 'yes'),
(561, 'um_terms_conditions_last_version_upgrade', '2.1.2', 'yes'),
(562, 'um_terms_conditions_version', '2.1.2', 'yes'),
(570, 'um_existing_rows_5', 'a:1:{i:0;s:9:\"_um_row_1\";}', 'yes'),
(571, 'um_form_rowdata_5', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}', 'yes'),
(575, 'um_user_photos_last_version_upgrade', ' 2.10.2', 'yes'),
(576, 'um_user_photos_version', ' 2.10.2', 'yes'),
(579, 'um_verified_users_last_version_upgrade', '2.10.3', 'yes'),
(580, 'um_verified_users_version', '2.10.3', 'yes'),
(745, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"RHkULxbGisEVcnbIeb1yGUiqZNDNPDLx\";}', 'yes'),
(746, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(747, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(586, 'mycred_pref_core', 'a:10:{s:7:\"cred_id\";s:14:\"mycred_default\";s:6:\"format\";a:3:{s:4:\"type\";s:6:\"bigint\";s:8:\"decimals\";i:0;s:10:\"separators\";a:2:{s:7:\"decimal\";s:1:\".\";s:8:\"thousand\";s:1:\",\";}}s:4:\"name\";a:2:{s:8:\"singular\";s:6:\"积分\";s:6:\"plural\";s:6:\"积分\";}s:6:\"before\";s:0:\"\";s:5:\"after\";s:0:\"\";s:4:\"caps\";a:2:{s:6:\"plugin\";s:14:\"manage_options\";s:5:\"creds\";s:6:\"export\";}s:3:\"max\";i:0;s:7:\"exclude\";a:3:{s:14:\"plugin_editors\";i:0;s:12:\"cred_editors\";i:0;s:4:\"list\";s:0:\"\";}s:9:\"frequency\";a:2:{s:4:\"rate\";s:6:\"always\";s:4:\"date\";s:0:\"\";}s:11:\"delete_user\";i:0;}', 'yes'),
(587, 'mycred_version_db', '1.0', 'yes'),
(588, 'mycred_setup_completed', '1582311871', 'yes'),
(589, 'widget_mycred_widget_balance', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(590, 'widget_mycred_widget_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(599, 'mycred_pref_addons', 'a:2:{s:6:\"active\";a:0:{}s:9:\"installed\";a:11:{s:6:\"badges\";a:8:{s:4:\"name\";s:6:\"Badges\";s:11:\"description\";s:51:\"基于您的用户的活跃度奖励他们勋章。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.3\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:152:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/badges-addon.png\";s:8:\"requires\";a:0:{}}s:7:\"banking\";a:8:{s:4:\"name\";s:7:\"Banking\";s:11:\"description\";s:67:\"设置经常性支出或支付/收取用户帐户余额的利息。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"2.0\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:153:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/banking-addon.png\";s:8:\"requires\";a:0:{}}s:9:\"buy-creds\";a:8:{s:4:\"name\";s:7:\"buyCRED\";s:11:\"description\";s:190:\"<strong>buy</strong>CRED 扩展允许用户使用PayPal、Skrill (Moneybookers) 或 NETbilling 购买积分。 <strong>buy</strong>CRED 也可以让你的用户为其他用户购买积分。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.5\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:155:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/buy-creds-addon.png\";s:8:\"requires\";a:0:{}}s:7:\"coupons\";a:8:{s:4:\"name\";s:7:\"Coupons\";s:11:\"description\";s:93:\"优惠券扩展允许您创建优惠券，用户可以用它添加积分到他们的帐户。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.4\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:153:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/coupons-addon.png\";s:8:\"requires\";a:0:{}}s:13:\"email-notices\";a:8:{s:4:\"name\";s:19:\"Email Notifications\";s:11:\"description\";s:59:\"为任何类型的 myCRED 实例创建电子邮件通知。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.4\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:165:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/email-notifications-addon.png\";s:8:\"requires\";a:0:{}}s:7:\"gateway\";a:8:{s:4:\"name\";s:7:\"Gateway\";s:11:\"description\";s:226:\"让用户使用他们的 <strong>my</strong>CRED 积分余额进行支付。支持购物车：WooCommerce、 MarketPress 和 WP E-Commerce。支持活动预订：Event Espresso 和 Events Manager （免费版和专业版）。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.4\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:153:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/gateway-addon.png\";s:8:\"requires\";a:0:{}}s:13:\"notifications\";a:9:{s:4:\"name\";s:13:\"Notifications\";s:11:\"description\";s:54:\"当用户获得或失去积分时创建弹出通知。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:5:\"1.1.2\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:7:\"pro_url\";s:0:\"\";s:10:\"screenshot\";s:159:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/notifications-addon.png\";s:8:\"requires\";a:0:{}}s:5:\"ranks\";a:8:{s:4:\"name\";s:5:\"Ranks\";s:11:\"description\";s:107:\"当用户达到一定数量的 %_plural% 时创建等级，使用这个选项为每个等级添加图标。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.6\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:151:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/ranks-addon.png\";s:8:\"requires\";a:0:{}}s:12:\"sell-content\";a:8:{s:4:\"name\";s:12:\"Sell Content\";s:11:\"description\";s:189:\"这个扩展允许您在您的网站上销售文章、页面或任何公开的文章类型。您可以销售文章的全部内容，或使用我们的简码来销售文章的部分内容。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:5:\"2.0.1\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:158:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/sell-content-addon.png\";s:8:\"requires\";a:1:{i:0;s:3:\"log\";}}s:5:\"stats\";a:7:{s:4:\"name\";s:10:\"Statistics\";s:11:\"description\";s:79:\"Gives you access to your myCRED Statistics based on your users gains and loses.\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"2.0\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:10:\"screenshot\";s:156:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/statistics-addon.png\";}s:8:\"transfer\";a:9:{s:4:\"name\";s:9:\"Transfers\";s:11:\"description\";s:117:\"通过使用 mycred_transfer 简码或 myCRED转让 小工具，允许用户发送或\"捐献\"积分给其他用户。\";s:9:\"addon_url\";s:0:\"\";s:7:\"version\";s:3:\"1.6\";s:6:\"author\";s:19:\"Gabriel S Merovingi\";s:10:\"author_url\";s:0:\"\";s:7:\"pro_url\";s:0:\"\";s:10:\"screenshot\";s:154:\"http://localhost/twodayssss/wp-content/plugins/D:/phpstudy_pro/WWW/twodayssss/wp-content/themes/twodayssss/modules/mycred/assets/images/transfer-addon.png\";s:8:\"requires\";a:0:{}}}}', 'yes'),
(627, 'woocommerce_store_address', '波士顿', 'yes'),
(628, 'woocommerce_store_address_2', '', 'yes'),
(629, 'woocommerce_store_city', '波士顿', 'yes'),
(630, 'woocommerce_default_country', 'US:MA', 'yes'),
(631, 'woocommerce_store_postcode', '', 'yes'),
(632, 'woocommerce_allowed_countries', 'all', 'yes'),
(633, 'woocommerce_all_except_countries', '', 'yes'),
(634, 'woocommerce_specific_allowed_countries', '', 'yes'),
(635, 'woocommerce_ship_to_countries', '', 'yes'),
(636, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(637, 'woocommerce_default_customer_address', 'base', 'yes'),
(638, 'woocommerce_calc_taxes', 'no', 'yes'),
(639, 'woocommerce_enable_coupons', 'yes', 'yes'),
(640, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(641, 'woocommerce_currency', 'USD', 'yes'),
(642, 'woocommerce_currency_pos', 'left', 'yes'),
(643, 'woocommerce_price_thousand_sep', ',', 'yes'),
(644, 'woocommerce_price_decimal_sep', '.', 'yes'),
(645, 'woocommerce_price_num_decimals', '2', 'yes'),
(646, 'woocommerce_shop_page_id', '531', 'yes'),
(647, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(648, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(649, 'woocommerce_placeholder_image', '530', 'yes'),
(650, 'woocommerce_weight_unit', 'oz', 'yes'),
(651, 'woocommerce_dimension_unit', 'in', 'yes'),
(652, 'woocommerce_enable_reviews', 'yes', 'yes'),
(653, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(654, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(655, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(656, 'woocommerce_review_rating_required', 'yes', 'no'),
(657, 'woocommerce_manage_stock', 'yes', 'yes'),
(658, 'woocommerce_hold_stock_minutes', '60', 'no'),
(659, 'woocommerce_notify_low_stock', 'yes', 'no'),
(660, 'woocommerce_notify_no_stock', 'yes', 'no'),
(661, 'woocommerce_stock_email_recipient', 'twodayssss@gmail.com', 'no'),
(662, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(663, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(664, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(665, 'woocommerce_stock_format', '', 'yes'),
(666, 'woocommerce_file_download_method', 'force', 'no'),
(667, 'woocommerce_downloads_require_login', 'no', 'no'),
(668, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(669, 'woocommerce_prices_include_tax', 'no', 'yes'),
(670, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(671, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(672, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(673, 'woocommerce_tax_classes', '', 'yes'),
(674, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(675, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(676, 'woocommerce_price_display_suffix', '', 'yes'),
(677, 'woocommerce_tax_total_display', 'itemized', 'no'),
(678, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(679, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(680, 'woocommerce_ship_to_destination', 'billing', 'no'),
(681, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(682, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(683, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(684, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(685, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(686, 'woocommerce_registration_generate_username', 'yes', 'no'),
(687, 'woocommerce_registration_generate_password', 'yes', 'no'),
(688, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(689, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(690, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(691, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(692, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(693, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(694, 'woocommerce_trash_pending_orders', '', 'no'),
(695, 'woocommerce_trash_failed_orders', '', 'no'),
(696, 'woocommerce_trash_cancelled_orders', '', 'no'),
(697, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(698, 'woocommerce_email_from_name', '两天网', 'no'),
(699, 'woocommerce_email_from_address', 'twodayssss@gmail.com', 'no'),
(700, 'woocommerce_email_header_image', '', 'no'),
(701, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(702, 'woocommerce_email_base_color', '#96588a', 'no'),
(703, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(704, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(705, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(706, 'woocommerce_cart_page_id', '532', 'no'),
(707, 'woocommerce_checkout_page_id', '533', 'no'),
(708, 'woocommerce_myaccount_page_id', '534', 'no'),
(709, 'woocommerce_terms_page_id', '', 'no'),
(710, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(711, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(712, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(713, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(714, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(715, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(716, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(717, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(718, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(719, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(720, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(721, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(722, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(723, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(724, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(725, 'woocommerce_api_enabled', 'no', 'yes'),
(726, 'woocommerce_allow_tracking', 'no', 'no'),
(727, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(728, 'woocommerce_single_image_width', '600', 'yes'),
(729, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(730, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(731, 'woocommerce_demo_store', 'no', 'no'),
(732, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(733, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(734, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(735, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(736, 'product_cat_children', 'a:0:{}', 'yes'),
(737, 'default_product_cat', '52', 'yes'),
(763, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(740, 'woocommerce_version', '3.9.2', 'yes'),
(741, 'woocommerce_db_version', '3.9.2', 'yes');

-- --------------------------------------------------------

--
-- 表的结构 `td_postmeta`
--

CREATE TABLE `td_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_postmeta`
--

INSERT INTO `td_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_um_custom_fields', 'a:6:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"5\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}'),
(4, 5, '_um_mode', 'register'),
(5, 5, '_um_core', 'register'),
(6, 5, '_um_register_use_custom_settings', '0'),
(7, 6, '_um_custom_fields', 'a:3:{s:8:\"username\";a:13:{s:5:\"title\";s:18:\"Username or E-mail\";s:7:\"metakey\";s:8:\"username\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:18:\"Username or E-mail\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:24:\"unique_username_or_email\";s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:13:\"user_password\";a:16:{s:5:\"title\";s:8:\"Password\";s:7:\"metakey\";s:13:\"user_password\";s:4:\"type\";s:8:\"password\";s:5:\"label\";s:8:\"Password\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:9:\"min_chars\";i:8;s:9:\"max_chars\";i:30;s:15:\"force_good_pass\";i:1;s:18:\"force_confirm_pass\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(8, 6, '_um_mode', 'login'),
(9, 6, '_um_core', 'login'),
(10, 6, '_um_login_use_custom_settings', '0'),
(11, 7, '_um_custom_fields', 'a:1:{s:9:\"_um_row_1\";a:4:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";}}'),
(12, 7, '_um_mode', 'profile'),
(13, 7, '_um_core', 'profile'),
(14, 7, '_um_profile_use_custom_settings', '0'),
(15, 8, '_um_core', 'members'),
(16, 8, '_um_template', 'members'),
(17, 8, '_um_mode', 'directory'),
(18, 8, '_um_view_types', 'a:1:{i:0;s:4:\"grid\";}'),
(19, 8, '_um_default_view', 'grid'),
(21, 8, '_um_has_profile_photo', '0'),
(22, 8, '_um_has_cover_photo', '0'),
(24, 8, '_um_sortby', 'user_registered_desc'),
(25, 8, '_um_sortby_custom', ''),
(26, 8, '_um_sortby_custom_label', ''),
(27, 8, '_um_enable_sorting', '0'),
(28, 8, '_um_sorting_fields', 'a:1:{i:0;s:9:\"last_name\";}'),
(29, 8, '_um_profile_photo', '1'),
(30, 8, '_um_cover_photos', '1'),
(31, 8, '_um_show_name', '1'),
(32, 8, '_um_show_tagline', '0'),
(527, 8, '_um_show_these_users', ''),
(34, 8, '_um_show_userinfo', '0'),
(36, 8, '_um_show_social', '0'),
(37, 8, '_um_userinfo_animate', '1'),
(38, 8, '_um_search', '1'),
(40, 8, '_um_filters', '0'),
(526, 8, '_um_roles', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}'),
(43, 8, '_um_filters_expanded', '0'),
(44, 8, '_um_filters_is_collapsible', '1'),
(525, 8, '_um_directory_template', 'members'),
(46, 8, '_um_must_search', '0'),
(47, 8, '_um_max_users', ''),
(48, 8, '_um_profiles_per_page', '12'),
(49, 8, '_um_profiles_per_page_mobile', '6'),
(50, 8, '_um_directory_header', '{total_users} 用户'),
(51, 8, '_um_directory_header_single', '{total_users} 个用户'),
(52, 8, '_um_directory_no_users', '很抱歉，我们无法找到符合您的搜索条件的用户。'),
(53, 9, '_wp_attached_file', '2020/02/2020-landscape-1.png'),
(54, 9, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/02/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 9, '_starter_content_theme', 'twentytwenty'),
(322, 444, '_menu_item_menu_item_parent', '0'),
(321, 444, '_menu_item_type', 'post_type'),
(57, 10, '_thumbnail_id', '9'),
(331, 445, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:887;s:6:\"height\";i:887;s:4:\"file\";s:25:\"2020/02/20202020201-2.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020201-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020201-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"20202020201-2-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(319, 443, '_menu_item_url', ''),
(59, 10, '_customize_changeset_uuid', '0c98e897-aa0c-493e-b89c-42035a0fe9db'),
(318, 443, '_menu_item_xfn', ''),
(61, 11, '_customize_changeset_uuid', '0c98e897-aa0c-493e-b89c-42035a0fe9db'),
(317, 443, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 12, '_customize_changeset_uuid', '0c98e897-aa0c-493e-b89c-42035a0fe9db'),
(316, 443, '_menu_item_target', ''),
(65, 13, '_customize_changeset_uuid', '0c98e897-aa0c-493e-b89c-42035a0fe9db'),
(66, 15, '_wp_attached_file', '2020/02/twodays-1.png'),
(67, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:250;s:6:\"height\";i:141;s:4:\"file\";s:21:\"2020/02/twodays-1.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"twodays-1-150x141.png\";s:5:\"width\";i:150;s:6:\"height\";i:141;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(315, 443, '_menu_item_object', 'page'),
(314, 443, '_menu_item_object_id', '315'),
(313, 443, '_menu_item_menu_item_parent', '0'),
(312, 443, '_menu_item_type', 'post_type'),
(310, 442, '_menu_item_url', ''),
(309, 442, '_menu_item_xfn', ''),
(308, 442, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(307, 442, '_menu_item_target', ''),
(306, 442, '_menu_item_object', 'page'),
(305, 442, '_menu_item_object_id', '327'),
(304, 442, '_menu_item_menu_item_parent', '0'),
(303, 442, '_menu_item_type', 'post_type'),
(302, 82, '_edit_lock', '1582304370:1'),
(301, 44, '_edit_lock', '1582304346:1'),
(300, 43, '_edit_lock', '1582304333:1'),
(100, 24, '_menu_item_type', 'custom'),
(101, 24, '_menu_item_menu_item_parent', '0'),
(102, 24, '_menu_item_object_id', '24'),
(103, 24, '_menu_item_object', 'custom'),
(104, 24, '_menu_item_target', ''),
(105, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(106, 24, '_menu_item_xfn', ''),
(107, 24, '_menu_item_url', 'http://localhost/twodayssss/'),
(108, 25, '_menu_item_type', 'post_type'),
(109, 25, '_menu_item_menu_item_parent', '0'),
(110, 25, '_menu_item_object_id', '11'),
(111, 25, '_menu_item_object', 'page'),
(112, 25, '_menu_item_target', ''),
(113, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(114, 25, '_menu_item_xfn', ''),
(115, 25, '_menu_item_url', ''),
(116, 26, '_menu_item_type', 'post_type'),
(117, 26, '_menu_item_menu_item_parent', '0'),
(118, 26, '_menu_item_object_id', '13'),
(119, 26, '_menu_item_object', 'page'),
(120, 26, '_menu_item_target', ''),
(121, 26, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(122, 26, '_menu_item_xfn', ''),
(123, 26, '_menu_item_url', ''),
(124, 27, '_menu_item_type', 'post_type'),
(125, 27, '_menu_item_menu_item_parent', '0'),
(126, 27, '_menu_item_object_id', '12'),
(127, 27, '_menu_item_object', 'page'),
(128, 27, '_menu_item_target', ''),
(129, 27, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 27, '_menu_item_xfn', ''),
(131, 27, '_menu_item_url', ''),
(132, 28, '_menu_item_type', 'custom'),
(133, 28, '_menu_item_menu_item_parent', '0'),
(134, 28, '_menu_item_object_id', '28'),
(135, 28, '_menu_item_object', 'custom'),
(136, 28, '_menu_item_target', ''),
(137, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(138, 28, '_menu_item_xfn', ''),
(139, 28, '_menu_item_url', 'https://www.yelp.com'),
(140, 29, '_menu_item_type', 'custom'),
(141, 29, '_menu_item_menu_item_parent', '0'),
(142, 29, '_menu_item_object_id', '29'),
(143, 29, '_menu_item_object', 'custom'),
(144, 29, '_menu_item_target', ''),
(145, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(146, 29, '_menu_item_xfn', ''),
(147, 29, '_menu_item_url', 'https://www.facebook.com/two-dayssss'),
(148, 30, '_menu_item_type', 'custom'),
(149, 30, '_menu_item_menu_item_parent', '0'),
(150, 30, '_menu_item_object_id', '30'),
(151, 30, '_menu_item_object', 'custom'),
(152, 30, '_menu_item_target', ''),
(153, 30, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(154, 30, '_menu_item_xfn', ''),
(155, 30, '_menu_item_url', 'https://twitter.com/two-dayssss'),
(156, 31, '_menu_item_type', 'custom'),
(157, 31, '_menu_item_menu_item_parent', '0'),
(158, 31, '_menu_item_object_id', '31'),
(159, 31, '_menu_item_object', 'custom'),
(160, 31, '_menu_item_target', ''),
(161, 31, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(162, 31, '_menu_item_xfn', ''),
(163, 31, '_menu_item_url', 'https://www.instagram.com/explore/tags/wordcamp/'),
(164, 32, '_menu_item_type', 'custom'),
(165, 32, '_menu_item_menu_item_parent', '0'),
(166, 32, '_menu_item_object_id', '32'),
(167, 32, '_menu_item_object', 'custom'),
(168, 32, '_menu_item_target', ''),
(169, 32, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(170, 32, '_menu_item_xfn', ''),
(171, 32, '_menu_item_url', 'mailto:two-dayssss@example.com'),
(172, 14, '_wp_trash_meta_status', 'publish'),
(173, 14, '_wp_trash_meta_time', '1582301124'),
(174, 33, '_um_core', 'user'),
(175, 34, '_um_core', 'login'),
(176, 35, '_um_core', 'register'),
(177, 36, '_um_core', 'members'),
(178, 37, '_um_core', 'logout'),
(179, 38, '_um_core', 'account'),
(180, 39, '_um_core', 'password-reset'),
(181, 40, '_wp_attached_file', '2020/02/two-dayssss.2020-02-19.xml_.txt'),
(182, 40, '_wp_attachment_context', 'import'),
(244, 327, '_edit_lock', '1582304452:1'),
(242, 315, '_edit_lock', '1582304519:1'),
(243, 351, '_edit_lock', '1582304473:1'),
(188, 43, '_headstart_post', '_hs_about_page'),
(189, 43, 'sharing_disabled', 'a:1:{i:0;i:1;}'),
(190, 43, 'switch_like_status', 'a:1:{i:0;i:1;}'),
(191, 43, '_starter_page_template', ''),
(192, 43, '_wpas_skip_all_services', '1'),
(193, 43, '_publicize_pending', '1'),
(194, 43, '_checklist_post_type', '_hs_about_page'),
(195, 43, '_elasticsearch_indexed_on', '2019-12-29 17:05:39'),
(196, 43, '_edit_last', '1'),
(197, 43, '_wp_page_template', 'default'),
(198, 44, '_publicize_pending', '1'),
(199, 44, 'jabber_published', '1577907487'),
(200, 44, '_elasticsearch_indexed_on', '2020-01-01 19:38:09'),
(201, 44, '_g_feedback_shortcode_8ccaa8b5f4c9b946204fbe7dbda1ee641d642ac0', '\n[contact-field required=\"1\" type=\"name\" label=\"名稱\"/]\n\n[contact-field label=\"Email\" required=\"1\" type=\"email\"/]\n\n[contact-field type=\"url\" label=\"個人網站\"/]\n\n[contact-field required=\"1\" type=\"textarea\" label=\"訊息\"/]\n'),
(202, 44, '_g_feedback_shortcode_atts_8ccaa8b5f4c9b946204fbe7dbda1ee641d642ac0', 'a:9:{s:2:\"to\";s:20:\"twodayssss@gmail.com\";s:7:\"subject\";s:19:\"[两天网] Contact\";s:12:\"show_subject\";s:2:\"no\";s:6:\"widget\";i:0;s:2:\"id\";i:29;s:18:\"submit_button_text\";s:6:\"送出\";s:14:\"customThankyou\";s:0:\"\";s:21:\"customThankyouMessage\";s:30:\"Thank you for your submission!\";s:22:\"customThankyouRedirect\";s:0:\"\";}'),
(203, 44, '_g_feedback_shortcode_6f3a892de1b9f30d3591c8a71f5cea9d78ade8ff', '\n[contact-field required=\"1\" type=\"name\" label=\"名稱\"/]\n\n[contact-field label=\"Email\" required=\"1\" type=\"email\"/]\n\n[contact-field type=\"url\" label=\"網站\"/]\n\n[contact-field required=\"1\" type=\"textarea\" label=\"訊息\"/]\n'),
(204, 44, '_g_feedback_shortcode_atts_6f3a892de1b9f30d3591c8a71f5cea9d78ade8ff', 'a:9:{s:2:\"to\";s:20:\"twodayssss@gmail.com\";s:7:\"subject\";s:19:\"[两天网] Contact\";s:12:\"show_subject\";s:2:\"no\";s:6:\"widget\";i:0;s:2:\"id\";i:29;s:18:\"submit_button_text\";s:6:\"送出\";s:14:\"customThankyou\";s:0:\"\";s:21:\"customThankyouMessage\";s:21:\"感謝你的提交！\";s:22:\"customThankyouRedirect\";s:0:\"\";}'),
(205, 44, '_edit_last', '1'),
(206, 44, '_wp_page_template', 'page-templates/no-sidebar.php'),
(207, 44, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(208, 44, '_g_feedback_shortcode_1c34fa6f45c5c0c45284ba11c121e1a5e626e1ee', '\n\n[contact-field required=\"1\" type=\"name\" label=\"名稱\"/]\n\n[contact-field label=\"Email\" required=\"1\" type=\"email\"/]\n\n[contact-field type=\"url\" label=\"網站\"/]\n\n[contact-field required=\"1\" type=\"textarea\" label=\"訊息\"/]'),
(209, 44, '_g_feedback_shortcode_atts_1c34fa6f45c5c0c45284ba11c121e1a5e626e1ee', 'a:9:{s:2:\"to\";s:20:\"twodayssss@gmail.com\";s:7:\"subject\";s:19:\"[两天网] Contact\";s:12:\"show_subject\";s:2:\"no\";s:6:\"widget\";i:0;s:2:\"id\";i:29;s:18:\"submit_button_text\";s:6:\"送出\";s:14:\"customThankyou\";s:0:\"\";s:21:\"customThankyouMessage\";s:21:\"感謝你的提交！\";s:22:\"customThankyouRedirect\";s:0:\"\";}'),
(210, 44, 'switch_like_status', '0'),
(211, 44, 'sharing_disabled', '1'),
(212, 82, '_g_feedback_shortcode_6f3a892de1b9f30d3591c8a71f5cea9d78ade8ff', '\n[contact-field required=\"1\" type=\"name\" label=\"名稱\"/]\n\n[contact-field label=\"Email\" required=\"1\" type=\"email\"/]\n\n[contact-field type=\"url\" label=\"網站\"/]\n\n[contact-field required=\"1\" type=\"textarea\" label=\"訊息\"/]\n'),
(213, 82, '_g_feedback_shortcode_atts_6f3a892de1b9f30d3591c8a71f5cea9d78ade8ff', 'a:9:{s:2:\"to\";s:20:\"twodayssss@gmail.com\";s:7:\"subject\";s:34:\"[两天网] Contact联系我们！\";s:12:\"show_subject\";s:2:\"no\";s:6:\"widget\";i:0;s:2:\"id\";i:82;s:18:\"submit_button_text\";s:6:\"送出\";s:14:\"customThankyou\";s:0:\"\";s:21:\"customThankyouMessage\";s:21:\"感謝你的提交！\";s:22:\"customThankyouRedirect\";s:0:\"\";}'),
(214, 82, '_coblocks_attr', ''),
(215, 82, '_coblocks_dimensions', ''),
(216, 82, '_coblocks_responsive_height', ''),
(217, 82, '_coblocks_accordion_ie_support', ''),
(218, 82, 'amp_status', ''),
(219, 82, 'spay_email', ''),
(220, 82, '_starter_page_template', 'contact'),
(221, 82, '_edit_last', '1'),
(222, 82, '_wp_page_template', 'default'),
(223, 300, '_edit_last', '1'),
(224, 300, '_wp_page_template', 'page-templates/tourist-full-width.php'),
(225, 300, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(226, 300, '_thumbnail_id', '309'),
(227, 300, 'switch_like_status', '0'),
(228, 315, '_edit_last', '1'),
(229, 315, '_thumbnail_id', '316'),
(230, 315, '_wp_page_template', 'page-templates/tourist-full-width.php'),
(231, 315, 'switch_like_status', '0'),
(232, 315, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(233, 327, '_edit_last', '1'),
(234, 327, '_thumbnail_id', '328'),
(235, 327, '_wp_page_template', 'page-templates/tourist-full-width.php'),
(236, 327, 'switch_like_status', '0'),
(237, 327, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(238, 351, '_edit_last', '1'),
(239, 351, '_wp_page_template', 'page-templates/tourist-full-width.php'),
(240, 351, 'switch_like_status', '0'),
(241, 351, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(245, 300, '_edit_lock', '1582304457:1'),
(246, 356, '_wp_trash_meta_status', 'publish'),
(247, 356, '_wp_trash_meta_time', '1582303995'),
(298, 438, '_wp_trash_meta_status', 'publish'),
(299, 438, '_wp_trash_meta_time', '1582304179'),
(250, 281, '_edit_last', '1'),
(251, 281, '_thumbnail_id', '445'),
(252, 281, 'switch_like_status', '0'),
(253, 281, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(254, 386, '_edit_last', '1'),
(255, 386, '_thumbnail_id', '448'),
(256, 386, 'switch_like_status', '0'),
(257, 386, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(258, 394, '_edit_last', '1'),
(259, 394, '_thumbnail_id', '447'),
(260, 394, 'switch_like_status', '0'),
(261, 394, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(262, 405, '_edit_last', '1'),
(263, 405, '_thumbnail_id', '446'),
(264, 405, 'switch_like_status', '0'),
(265, 405, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(266, 407, '_edit_last', '1'),
(267, 407, '_thumbnail_id', '450'),
(268, 407, 'switch_like_status', '0'),
(269, 407, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(270, 411, '_edit_last', '1'),
(271, 411, '_thumbnail_id', '449'),
(272, 411, 'switch_like_status', '0'),
(273, 411, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(274, 413, '_edit_last', '1'),
(275, 413, '_thumbnail_id', '451'),
(276, 413, 'switch_like_status', '0'),
(277, 413, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(278, 416, '_edit_last', '1'),
(279, 416, '_thumbnail_id', '453'),
(280, 416, 'switch_like_status', '0'),
(281, 416, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(282, 431, '_edit_last', '1'),
(283, 431, '_thumbnail_id', '452'),
(284, 431, 'switch_like_status', '0'),
(285, 431, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(286, 433, '_edit_last', '1'),
(287, 433, '_thumbnail_id', '454'),
(288, 433, 'switch_like_status', '0'),
(289, 433, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(290, 436, '_edit_last', '1'),
(291, 436, '_thumbnail_id', '457'),
(292, 436, 'switch_like_status', '0'),
(293, 436, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(297, 436, '_edit_lock', '1582306709:1'),
(323, 444, '_menu_item_object_id', '34'),
(324, 444, '_menu_item_object', 'page'),
(325, 444, '_menu_item_target', ''),
(326, 444, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(327, 444, '_menu_item_xfn', ''),
(328, 444, '_menu_item_url', ''),
(330, 445, '_wp_attached_file', '2020/02/20202020201-2.jpg'),
(332, 446, '_wp_attached_file', '2020/02/20202020202-1.jpg'),
(333, 446, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:517;s:6:\"height\";i:517;s:4:\"file\";s:25:\"2020/02/20202020202-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020202-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020202-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(334, 447, '_wp_attached_file', '2020/02/20202020203-1.jpg'),
(335, 447, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:631;s:6:\"height\";i:631;s:4:\"file\";s:25:\"2020/02/20202020203-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020203-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020203-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(336, 448, '_wp_attached_file', '2020/02/20202020204-1.jpg'),
(337, 448, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:561;s:6:\"height\";i:561;s:4:\"file\";s:25:\"2020/02/20202020204-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020204-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020204-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(338, 449, '_wp_attached_file', '2020/02/20202020205-1.jpg'),
(339, 449, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1077;s:6:\"height\";i:1077;s:4:\"file\";s:25:\"2020/02/20202020205-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020205-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"20202020205-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020205-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"20202020205-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(340, 450, '_wp_attached_file', '2020/02/20202020206-1.jpg'),
(341, 450, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1033;s:6:\"height\";i:1033;s:4:\"file\";s:25:\"2020/02/20202020206-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020206-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"20202020206-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020206-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"20202020206-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(342, 451, '_wp_attached_file', '2020/02/20202020207-1.jpg'),
(343, 451, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1061;s:6:\"height\";i:1061;s:4:\"file\";s:25:\"2020/02/20202020207-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020207-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"20202020207-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020207-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"20202020207-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 452, '_wp_attached_file', '2020/02/20202020208-1.jpg'),
(345, 452, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:25:\"2020/02/20202020208-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020208-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020208-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(346, 453, '_wp_attached_file', '2020/02/20202020209-1.jpg'),
(347, 453, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:720;s:6:\"height\";i:720;s:4:\"file\";s:25:\"2020/02/20202020209-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"20202020209-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"20202020209-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(348, 454, '_wp_attached_file', '2020/02/202020202010-1.jpg'),
(349, 454, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:960;s:6:\"height\";i:960;s:4:\"file\";s:26:\"2020/02/202020202010-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"202020202010-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"202020202010-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"202020202010-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(350, 455, '_wp_attached_file', '2020/02/202020202011-1.jpg'),
(351, 455, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:853;s:6:\"height\";i:853;s:4:\"file\";s:26:\"2020/02/202020202011-1.jpg\";s:5:\"sizes\";a:3:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"202020202011-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"202020202011-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"202020202011-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(352, 456, '_wp_attached_file', '2020/02/202020202012-1.jpg'),
(353, 456, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1080;s:6:\"height\";i:1080;s:4:\"file\";s:26:\"2020/02/202020202012-1.jpg\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"202020202012-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"202020202012-1-1024x1024.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"202020202012-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"202020202012-1-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(354, 457, '_wp_attached_file', '2020/02/202020202013-1.jpg'),
(355, 457, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:360;s:6:\"height\";i:360;s:4:\"file\";s:26:\"2020/02/202020202013-1.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"202020202013-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"202020202013-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(356, 458, '_wp_attached_file', '2020/02/bg-1.jpg'),
(357, 458, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:600;s:4:\"file\";s:16:\"2020/02/bg-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"bg-1-300x94.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:94;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"bg-1-1024x320.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"bg-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"bg-1-768x240.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:240;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:17:\"bg-1-1536x480.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:480;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(358, 459, '_wp_attached_file', '2020/02/forman-1.jpg'),
(359, 459, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2020/02/forman-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"forman-1-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:21:\"forman-1-1024x213.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"forman-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:20:\"forman-1-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:21:\"forman-1-1536x320.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(360, 460, '_wp_attached_file', '2020/02/forwoman-1.jpg'),
(361, 460, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2020/02/forwoman-1.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"forwoman-1-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"forwoman-1-1024x213.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"forwoman-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"forwoman-1-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:23:\"forwoman-1-1536x320.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(362, 461, '_wp_attached_file', '2020/02/pic105.png'),
(363, 461, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:400;s:6:\"height\";i:260;s:4:\"file\";s:18:\"2020/02/pic105.png\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic105-300x195.png\";s:5:\"width\";i:300;s:6:\"height\";i:195;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic105-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(364, 462, '_wp_attached_file', '2020/02/testimonials.jpg'),
(365, 462, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:400;s:4:\"file\";s:24:\"2020/02/testimonials.jpg\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"testimonials-300x63.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:63;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"testimonials-1024x213.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:213;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"testimonials-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"testimonials-768x160.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:160;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:25:\"testimonials-1536x320.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:320;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(366, 463, '_wp_attached_file', '2020/02/pic103.jpg'),
(367, 463, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic103.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic103-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic103-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(368, 464, '_wp_attached_file', '2020/02/pic104.jpg'),
(369, 464, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic104.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic104-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic104-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(370, 465, '_wp_attached_file', '2020/02/pic201.jpg'),
(371, 465, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic201.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic201-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic201-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(372, 466, '_wp_attached_file', '2020/02/pic202.jpg'),
(373, 466, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic202.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic202-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic202-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(374, 467, '_wp_attached_file', '2020/02/pic203.jpg'),
(375, 467, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic203.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic203-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic203-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(376, 468, '_wp_attached_file', '2020/02/pic204.jpg'),
(377, 468, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic204.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic204-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic204-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(378, 469, '_wp_attached_file', '2020/02/pic205.jpg'),
(379, 469, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic205.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic205-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic205-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(380, 470, '_wp_attached_file', '2020/02/pic206.jpg');
INSERT INTO `td_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(381, 470, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:540;s:6:\"height\";i:360;s:4:\"file\";s:18:\"2020/02/pic206.jpg\";s:5:\"sizes\";a:2:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"pic206-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"pic206-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(382, 471, '_wp_attached_file', '2020/02/blur.jpg'),
(383, 471, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:16:\"2020/02/blur.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(384, 472, '_wp_attached_file', '2020/02/blur1.jpg'),
(385, 472, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur1.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(386, 473, '_wp_attached_file', '2020/02/blur2.jpg'),
(387, 473, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur2.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(388, 474, '_wp_attached_file', '2020/02/blur3.jpg'),
(389, 474, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur3.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 475, '_wp_attached_file', '2020/02/blur4.jpg'),
(391, 475, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur4.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(392, 476, '_wp_attached_file', '2020/02/blur5.jpg'),
(393, 476, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur5.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(394, 477, '_wp_attached_file', '2020/02/blur6.jpg'),
(395, 477, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur6.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(396, 478, '_wp_attached_file', '2020/02/blur7.jpg'),
(397, 478, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur7.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(398, 479, '_wp_attached_file', '2020/02/blur8.jpg'),
(399, 479, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur8.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(400, 480, '_wp_attached_file', '2020/02/blur9.jpg'),
(401, 480, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:17:\"2020/02/blur9.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(402, 481, '_wp_attached_file', '2020/02/blur10.jpg'),
(403, 481, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur10.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(404, 482, '_wp_attached_file', '2020/02/blur11.jpg'),
(405, 482, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur11.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(406, 483, '_wp_attached_file', '2020/02/blur12.jpg'),
(407, 483, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur12.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(408, 484, '_wp_attached_file', '2020/02/blur13.jpg'),
(409, 484, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur13.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(410, 485, '_wp_attached_file', '2020/02/blur14.jpg'),
(411, 485, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur14.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(412, 486, '_wp_attached_file', '2020/02/blur15.jpg'),
(413, 486, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur15.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(414, 487, '_wp_attached_file', '2020/02/blur16.jpg'),
(415, 487, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur16.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(416, 488, '_wp_attached_file', '2020/02/blur17.jpg'),
(417, 488, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur17.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(418, 489, '_wp_attached_file', '2020/02/blur18.jpg'),
(419, 489, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur18.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(420, 490, '_wp_attached_file', '2020/02/blur19.jpg'),
(421, 490, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur19.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(422, 491, '_wp_attached_file', '2020/02/blur20.jpg'),
(423, 491, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur20.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(424, 492, '_wp_attached_file', '2020/02/blur21.jpg'),
(425, 492, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur21.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(426, 493, '_wp_attached_file', '2020/02/blur22.jpg'),
(427, 493, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur22.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(428, 494, '_wp_attached_file', '2020/02/blur23.jpg'),
(429, 494, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur23.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(430, 495, '_wp_attached_file', '2020/02/blur24.jpg'),
(431, 495, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur24.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(432, 496, '_wp_attached_file', '2020/02/blur25.jpg'),
(433, 496, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur25.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(434, 497, '_wp_attached_file', '2020/02/blur26.jpg'),
(435, 497, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur26.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(436, 498, '_wp_attached_file', '2020/02/blur27.jpg'),
(437, 498, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur27.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(438, 499, '_wp_attached_file', '2020/02/blur28.jpg'),
(439, 499, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur28.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(440, 500, '_wp_attached_file', '2020/02/blur29.jpg'),
(441, 500, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur29.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(442, 501, '_wp_attached_file', '2020/02/blur30.jpg'),
(443, 501, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur30.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(444, 502, '_wp_attached_file', '2020/02/blur31.jpg'),
(445, 502, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur31.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(446, 503, '_wp_attached_file', '2020/02/blur32.jpg'),
(447, 503, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur32.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(448, 504, '_wp_attached_file', '2020/02/blur33.jpg'),
(449, 504, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur33.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(450, 505, '_wp_attached_file', '2020/02/blur34.jpg'),
(451, 505, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur34.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(452, 506, '_wp_attached_file', '2020/02/blur35.jpg'),
(453, 506, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur35.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(454, 507, '_wp_attached_file', '2020/02/blur36.jpg'),
(455, 507, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur36.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(456, 508, '_wp_attached_file', '2020/02/blur37.jpg'),
(457, 508, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur37.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(458, 509, '_wp_attached_file', '2020/02/blur38.jpg'),
(459, 509, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:120;s:6:\"height\";i:120;s:4:\"file\";s:18:\"2020/02/blur38.jpg\";s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(460, 281, '_edit_lock', '1582305145:1'),
(463, 386, '_edit_lock', '1582305183:1'),
(465, 394, '_edit_lock', '1582305201:1'),
(467, 405, '_edit_lock', '1582305221:1'),
(469, 407, '_edit_lock', '1582305252:1'),
(471, 411, '_edit_lock', '1582305286:1'),
(473, 413, '_edit_lock', '1582305303:1'),
(475, 416, '_edit_lock', '1582305326:1'),
(477, 431, '_edit_lock', '1582305354:1'),
(479, 433, '_edit_lock', '1582305372:1'),
(482, 521, '_menu_item_type', 'custom'),
(483, 521, '_menu_item_menu_item_parent', '0'),
(484, 521, '_menu_item_object_id', '521'),
(485, 521, '_menu_item_object', 'custom'),
(486, 521, '_menu_item_target', ''),
(487, 521, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(488, 521, '_menu_item_xfn', ''),
(489, 521, '_menu_item_url', 'http://localhost/twodayssss/'),
(521, 34, '_wp_page_template', 'page-templates/no-sidebar.php'),
(491, 522, '_menu_item_type', 'post_type'),
(492, 522, '_menu_item_menu_item_parent', '0'),
(493, 522, '_menu_item_object_id', '33'),
(494, 522, '_menu_item_object', 'page'),
(495, 522, '_menu_item_target', ''),
(496, 522, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(497, 522, '_menu_item_xfn', ''),
(498, 522, '_menu_item_url', ''),
(520, 34, '_thumbnail_id', '458'),
(500, 523, '_menu_item_type', 'post_type'),
(501, 523, '_menu_item_menu_item_parent', '0'),
(502, 523, '_menu_item_object_id', '36'),
(503, 523, '_menu_item_object', 'page'),
(504, 523, '_menu_item_target', ''),
(505, 523, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(506, 523, '_menu_item_xfn', ''),
(507, 523, '_menu_item_url', ''),
(519, 34, '_edit_last', '1'),
(509, 524, '_menu_item_type', 'post_type'),
(510, 524, '_menu_item_menu_item_parent', '0'),
(511, 524, '_menu_item_object_id', '38'),
(512, 524, '_menu_item_object', 'page'),
(513, 524, '_menu_item_target', ''),
(514, 524, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(515, 524, '_menu_item_xfn', ''),
(516, 524, '_menu_item_url', ''),
(518, 34, '_edit_lock', '1582305606:1'),
(522, 34, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(523, 8, '_edit_lock', '1582306033:1'),
(524, 8, '_edit_last', '1'),
(528, 8, '_um_online_hide_stats', '0'),
(529, 8, '_um_tagline_fields', 'a:1:{i:0;s:8:\"facebook\";}'),
(530, 8, '_um_reveal_fields', 'a:1:{i:0;s:8:\"facebook\";}'),
(531, 8, '_um_roles_can_search', 'a:5:{i:0;s:13:\"administrator\";i:1;s:6:\"editor\";i:2;s:6:\"author\";i:3;s:11:\"contributor\";i:4;s:10:\"subscriber\";}'),
(532, 8, '_um_search_fields', 'a:1:{i:0;s:10:\"birth_date\";}'),
(533, 8, '_um_search_filters_gmt', '8'),
(535, 38, '_edit_lock', '1582309358:1'),
(536, 38, '_edit_last', '1'),
(537, 38, '_wp_page_template', 'page-templates/no-sidebar.php'),
(538, 38, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(539, 33, '_edit_lock', '1582309382:1'),
(540, 33, '_edit_last', '1'),
(541, 33, '_wp_page_template', 'page-templates/no-sidebar.php'),
(542, 33, 'um_content_restriction', 'a:8:{s:26:\"_um_custom_access_settings\";s:1:\"0\";s:14:\"_um_accessible\";s:1:\"0\";s:19:\"_um_noaccess_action\";s:1:\"0\";s:30:\"_um_restrict_by_custom_message\";s:1:\"0\";s:27:\"_um_restrict_custom_message\";s:0:\"\";s:19:\"_um_access_redirect\";s:1:\"0\";s:23:\"_um_access_redirect_url\";s:0:\"\";s:28:\"_um_access_hide_from_queries\";s:1:\"0\";}'),
(543, 528, '_um_custom_fields', 'a:5:{s:10:\"user_login\";a:15:{s:5:\"title\";s:8:\"Username\";s:7:\"metakey\";s:10:\"user_login\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:8:\"Username\";s:8:\"required\";i:1;s:6:\"public\";i:1;s:8:\"editable\";i:0;s:8:\"validate\";s:15:\"unique_username\";s:9:\"min_chars\";i:3;s:9:\"max_chars\";i:24;s:8:\"position\";s:1:\"1\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:10:\"first_name\";a:12:{s:5:\"title\";s:10:\"First Name\";s:7:\"metakey\";s:10:\"first_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:10:\"First Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"2\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"last_name\";a:12:{s:5:\"title\";s:9:\"Last Name\";s:7:\"metakey\";s:9:\"last_name\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:9:\"Last Name\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"position\";s:1:\"3\";s:8:\"in_group\";s:0:\"\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";}s:10:\"user_email\";a:13:{s:5:\"title\";s:14:\"E-mail Address\";s:7:\"metakey\";s:10:\"user_email\";s:4:\"type\";s:4:\"text\";s:5:\"label\";s:14:\"E-mail Address\";s:8:\"required\";i:0;s:6:\"public\";i:1;s:8:\"editable\";i:1;s:8:\"validate\";s:12:\"unique_email\";s:8:\"position\";s:1:\"4\";s:6:\"in_row\";s:9:\"_um_row_1\";s:10:\"in_sub_row\";s:1:\"0\";s:9:\"in_column\";s:1:\"1\";s:8:\"in_group\";s:0:\"\";}s:9:\"_um_row_1\";a:5:{s:4:\"type\";s:3:\"row\";s:2:\"id\";s:9:\"_um_row_1\";s:8:\"sub_rows\";s:1:\"1\";s:4:\"cols\";s:1:\"1\";s:6:\"origin\";s:9:\"_um_row_1\";}}'),
(544, 528, '_um_mode', 'register'),
(545, 528, '_um_core', 'social'),
(546, 528, '_um_register_use_custom_settings', '0'),
(547, 528, '_um_social_login_form', '1'),
(548, 5, '_edit_lock', '1582311521:1'),
(553, 530, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(552, 530, '_wp_attached_file', 'woocommerce-placeholder.png');

-- --------------------------------------------------------

--
-- 表的结构 `td_posts`
--

CREATE TABLE `td_posts` (
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
-- 转存表中的数据 `td_posts`
--

INSERT INTO `td_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(3, 1, '2020-02-22 00:02:43', '2020-02-21 16:02:43', '<!-- wp:heading --><h2>我们是谁</h2><!-- /wp:heading --><!-- wp:paragraph --><p>我们的站点地址是：http://localhost/twodayssss。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>我们收集何种及为何收集个人数据</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>评论</h3><!-- /wp:heading --><!-- wp:paragraph --><p>当访客留下评论时，我们会收集评论表单所显示的数据，和访客的IP地址及浏览器的user agent字符串来帮助检查垃圾评论。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>由您的电子邮件地址所生成的匿名化字符串（又称为哈希）可能会被提供给Gravatar服务确认您是否有使用该服务。Gravatar服务的隐私政策在此：https://automattic.com/privacy/。在您的评论获批准后，您的资料图片将在您的评论旁公开展示。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>媒体</h3><!-- /wp:heading --><!-- wp:paragraph --><p>如果您向此网站上传图片，您应当避免上传那些有嵌入地理位置信息（EXIF GPS）的图片。此网站的访客将可以下载并提取此网站的图片中的位置信息。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>联系表单</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>如果您在我们的站点上留下评论，您可以选择用cookies保存您的姓名、电子邮件地址和网站。这是通过让您可以不用在评论时再次填写相关内容而向您提供方便。这些cookies会保留一年。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>如果您访问我们的登录页，我们会设置一个临时的cookie来确认您的浏览器是否接受cookies。此cookie不包含个人数据，且会在您关闭浏览器时被丢弃。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>当您登录时，我们也会设置多个cookies来保存您的登录信息及屏幕显示选项。登录cookies会保留两天，而屏幕显示选项cookies会保留一年。如果您选择了“记住我”，您的登录会保留两周。如果您注销，登录cookies将被移除。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>如果您编辑或发布文章，我们会在您的浏览器中保存一个额外的cookie。这个cookie不包含个人数据而只记录了您刚才编辑的文章的ID。这个小甜饼会保留一天。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>其他站点的嵌入内容</h3><!-- /wp:heading --><!-- wp:paragraph --><p>此站点上的文章可能会包含嵌入的内容（如视频、图像、文章等）。来自其他站点的嵌入内容的行为和您直接访问这些其他站点没有区别。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>这些站点可能会收集关于您的数据、使用cookies、嵌入额外的第三方跟踪程序及监视您与这些嵌入内容的交互，包括在您有这些站点的账户并登录了这些站点时，跟踪您与嵌入内容的交互。</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>统计</h3><!-- /wp:heading --><!-- wp:heading --><h2>我们与谁共享您的信息</h2><!-- /wp:heading --><!-- wp:heading --><h2>我们保留多久您的信息</h2><!-- /wp:heading --><!-- wp:paragraph --><p>如果您留下评论，评论和其元数据将被无限期保存。我们这样做以便能识别并自动批准任何后续评论，而不用将这些后续评论加入待审队列。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>对于本网站的注册用户，我们也会保存用户在个人资料中提供的个人信息。所有用户可以在任何时候查看、编辑或删除他们的个人信息（除了不能变更用户名外）、站点管理员也可以查看及编辑那些信息。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>您对您的信息有什么权利</h2><!-- /wp:heading --><!-- wp:paragraph --><p>如果您有此站点的账户，或曾经留下评论，您可以请求我们提供我们所拥有的您的个人数据的导出文件，这也包括了所有您提供给我们的数据。您也可以要求我们抹除所有关于您的个人数据。这不包括我们因管理、法规或安全需要而必须保留的数据。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>我们将您的信息发送到哪</h2><!-- /wp:heading --><!-- wp:paragraph --><p>访客评论可能会被自动垃圾评论监测服务检查。</p><!-- /wp:paragraph --><!-- wp:heading --><h2>您的联系信息</h2><!-- /wp:heading --><!-- wp:heading --><h2>其他信息</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>我们如何保护您的数据</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>我们有何种数据泄露处理流程</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>我们从哪些第三方接收数据</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>我们通过用户数据进行何种自动决策及/或归纳</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>行业监管披露要求</h3><!-- /wp:heading -->', '隐私政策', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-02-22 00:02:43', '2020-02-21 16:02:43', '', 0, 'http://localhost/twodayssss/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-02-22 00:03:12', '0000-00-00 00:00:00', '', '自动草稿', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-02-22 00:03:12', '0000-00-00 00:00:00', '', 0, 'http://localhost/twodayssss/?p=4', 0, 'post', '', 0),
(5, 1, '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 'Default Registration', '', 'publish', 'closed', 'closed', '', 'default-registration', '', '', '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 0, 'http://localhost/twodayssss/index.php/um_form/default-registration/', 0, 'um_form', '', 0),
(6, 1, '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 'Default Login', '', 'publish', 'closed', 'closed', '', 'default-login', '', '', '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 0, 'http://localhost/twodayssss/index.php/um_form/default-login/', 0, 'um_form', '', 0),
(7, 1, '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 'Default Profile', '', 'publish', 'closed', 'closed', '', 'default-profile', '', '', '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 0, 'http://localhost/twodayssss/index.php/um_form/default-profile/', 0, 'um_form', '', 0),
(8, 1, '2020-02-22 00:03:36', '2020-02-21 16:03:36', '', 'Members', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2020-02-22 01:29:34', '2020-02-21 17:29:34', '', 0, 'http://localhost/twodayssss/index.php/um_directory/members/', 0, 'um_directory', '', 0),
(9, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', '全新UMoMA开门迎客', '', 'inherit', 'open', 'closed', '', '%e5%85%a8%e6%96%b0umoma%e5%bc%80%e9%97%a8%e8%bf%8e%e5%ae%a2', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(10, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">瑞典北部现代艺术的主要目的地。在夏季每天从10时到18时开放。</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>工作与日子</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>战区</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>我应得的生活</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>从希涅克到马蒂斯</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">“Cyborg，正如哲学家唐娜·哈拉维所讲，是不恭敬的。他们没有记住宇宙。”</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">UMoMA共有七层引人注目的建筑，可举办国际当代艺术展览，有时还包括艺术史回顾展。存在性、政治性和哲学性的问题是我们展览的固有内容。作为访客，您可以免费参观艺术家的导览、讲座、电影放映和其他活动</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>这些展览是由UMoMA与世界各地的艺术家和博物馆合作制作的，它们经常引起国际关注。UMoMA已获得欧洲年度博物馆的特别表彰，并且是瑞典年度博物馆奖和欧洲理事会博物馆奖的最佳候选人之一。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">成为会员并获得独家优惠！</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">会员可以参观独家展览和销售。我们的会员费为$99.99，按年收费。</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">加入我们</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', '全新UMoMA开门迎客', '', 'publish', 'closed', 'closed', '', '%e5%85%a8%e6%96%b0umoma%e5%bc%80%e9%97%a8%e8%bf%8e%e5%ae%a2-2', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '<!-- wp:paragraph -->\n<p>您也许是位创作者，想要在这里介绍自己和自己的作品；或者您是一位商务人士，想在这里谈谈您的业务。</p>\n<!-- /wp:paragraph -->', '关于', '', 'publish', 'closed', 'closed', '', '%e5%85%b3%e4%ba%8e', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/?page_id=11', 0, 'page', '', 0),
(12, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '<!-- wp:paragraph -->\n<p>这个页面包含了一些基本的联系资料，像是地址和联系电话。您也可以尝试使用插件增加联系表单。</p>\n<!-- /wp:paragraph -->', '联系', '', 'publish', 'closed', 'closed', '', '%e8%81%94%e7%b3%bb', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/?page_id=12', 0, 'page', '', 0),
(13, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', '博客', '', 'publish', 'closed', 'closed', '', '%e5%8d%9a%e5%ae%a2', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLlhbPkuo7mnKznq5kiO3M6NDoidGV4dCI7czoxMDg6Iui/memHjOS5n+iuuOaYr+S4quS7i+e7jeaCqOiHquW3seeahOWlveWcsOaWue+8jOS5n+iDveS7i+e7jeaCqOeahOe9keermeaIluaUvui/m+S4gOS6m+W3peS9nOS6uuWRmOWQjeWNleOAgiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\\u5173\\u4e8e\\u672c\\u7ad9\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"ec2410462b09f0933ee5a40030140687\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEyOiLogZTns7vmiJHku6wiO3M6NDoidGV4dCI7czoxNjg6IjxzdHJvbmc+5Zyw5Z2APC9zdHJvbmc+CjEyMyBNYWluIFN0cmVldApOZXcgWW9yaywgTlkgMTAwMDEKCjxzdHJvbmc+6JCl5Lia5pe26Ze0PC9zdHJvbmc+CuaYn+acn+S4gCZtZGFzaDvkupTvvJo5OjAwJm5kYXNoOzE3OjAwCuaYn+acn+WFrSZtZGFzaDvml6XvvJoxMTowMCZuZGFzaDsxNTowMCI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"\\u8054\\u7cfb\\u6211\\u4eec\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"937032287a0850141a5efab1a44329c8\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            9,\n            10,\n            11,\n            12,\n            13\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"nav_menu[-1]\": {\n        \"value\": {\n            \"name\": \"\\u4e3b\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u9996\\u9875\",\n            \"url\": \"http://localhost/twodayssss/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u5173\\u4e8e\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u5173\\u4e8e\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u535a\\u5ba2\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u535a\\u5ba2\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u8054\\u7cfb\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u8054\\u7cfb\",\n            \"nav_menu_term_id\": -1,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"nav_menu[-5]\": {\n        \"value\": {\n            \"name\": \"\\u4e3b\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"\\u9996\\u9875\",\n            \"url\": \"http://localhost/twodayssss/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"value\": {\n            \"object_id\": 11,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"post_type\",\n            \"title\": \"\\u5173\\u4e8e\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u5173\\u4e8e\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"value\": {\n            \"object_id\": 13,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"post_type\",\n            \"title\": \"\\u535a\\u5ba2\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u535a\\u5ba2\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"value\": {\n            \"object_id\": 12,\n            \"object\": \"page\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"post_type\",\n            \"title\": \"\\u8054\\u7cfb\",\n            \"url\": \"\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\\u8054\\u7cfb\",\n            \"nav_menu_term_id\": -5,\n            \"_invalid\": false,\n            \"type_label\": \"\\u9875\\u9762\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"nav_menu[-9]\": {\n        \"value\": {\n            \"name\": \"\\u793e\\u4ea4\\u7f51\\u7edc\\u94fe\\u63a5\\u83dc\\u5355\",\n            \"description\": \"\",\n            \"parent\": 0,\n            \"auto_add\": false\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 0,\n            \"type\": \"custom\",\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 1,\n            \"type\": \"custom\",\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/two-dayssss\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 2,\n            \"type\": \"custom\",\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/two-dayssss\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 3,\n            \"type\": \"custom\",\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"value\": {\n            \"object_id\": 0,\n            \"object\": \"\",\n            \"menu_item_parent\": 0,\n            \"position\": 4,\n            \"type\": \"custom\",\n            \"title\": \"\\u7535\\u90ae\",\n            \"url\": \"mailto:two-dayssss@example.com\",\n            \"target\": \"\",\n            \"attr_title\": \"\",\n            \"description\": \"\",\n            \"classes\": \"\",\n            \"xfn\": \"\",\n            \"status\": \"publish\",\n            \"original_title\": \"\",\n            \"nav_menu_term_id\": -9,\n            \"_invalid\": false,\n            \"type_label\": \"\\u81ea\\u5b9a\\u4e49\\u94fe\\u63a5\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 10,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 13,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:03:46\"\n    },\n    \"blogdescription\": {\n        \"value\": \"\\u5e0c\\u671b\\u4f60\\u5728\\u201c\\u4e24\\u5929\\u7f51\\u201d\\u62e5\\u6709\\u4e00\\u4e2a\\u7f8e\\u597d\\u5468\\u672b\\u7684\\u4e24\\u5929\\uff01\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"twentytwenty::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    },\n    \"twentytwenty::retina_logo\": {\n        \"value\": true,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:05:23\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0c98e897-aa0c-493e-b89c-42035a0fe9db', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/?p=14', 0, 'customize_changeset', '', 0),
(15, 1, '2020-02-22 00:05:11', '2020-02-21 16:05:11', '', 'twodays', '', 'inherit', 'open', 'closed', '', 'twodays', '', '', '2020-02-22 00:05:11', '2020-02-21 16:05:11', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/twodays-1.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">瑞典北部现代艺术的主要目的地。在夏季每天从10时到18时开放。</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>工作与日子</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>战区</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>我应得的生活</h3><!-- /wp:heading --><!-- wp:paragraph --><p>8月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>从希涅克到马蒂斯</h3><!-- /wp:heading --><!-- wp:paragraph --><p>10月1日—12月1日</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">阅读更多</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">“Cyborg，正如哲学家唐娜·哈拉维所讲，是不恭敬的。他们没有记住宇宙。”</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">UMoMA共有七层引人注目的建筑，可举办国际当代艺术展览，有时还包括艺术史回顾展。存在性、政治性和哲学性的问题是我们展览的固有内容。作为访客，您可以免费参观艺术家的导览、讲座、电影放映和其他活动</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>这些展览是由UMoMA与世界各地的艺术家和博物馆合作制作的，它们经常引起国际关注。UMoMA已获得欧洲年度博物馆的特别表彰，并且是瑞典年度博物馆奖和欧洲理事会博物馆奖的最佳候选人之一。</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">成为会员并获得独家优惠！</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">会员可以参观独家展览和销售。我们的会员费为$99.99，按年收费。</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.two-dayssss.org/core/2019/09/27/block-editor-theme-related-updates-in-two-dayssss-5-3/\">加入我们</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/twodayssss/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', '全新UMoMA开门迎客', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 10, 'http://localhost/twodayssss/index.php/2020/02/22/10-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '<!-- wp:paragraph -->\n<p>您也许是位创作者，想要在这里介绍自己和自己的作品；或者您是一位商务人士，想在这里谈谈您的业务。</p>\n<!-- /wp:paragraph -->', '关于', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 11, 'http://localhost/twodayssss/index.php/2020/02/22/11-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '<!-- wp:paragraph -->\n<p>这个页面包含了一些基本的联系资料，像是地址和联系电话。您也可以尝试使用插件增加联系表单。</p>\n<!-- /wp:paragraph -->', '联系', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 12, 'http://localhost/twodayssss/index.php/2020/02/22/12-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', '博客', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 13, 'http://localhost/twodayssss/index.php/2020/02/22/13-revision-v1/', 0, 'revision', '', 0),
(440, 1, '2020-02-22 00:58:34', '2020-02-21 16:58:34', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Let\'s talk 👋 Don\'t hesitate to reach out with the contact information below, or send a message using the form. 如果你有意向加入我们，欢迎联系，让我们谈谈，碰撞出思想的火花！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":32,\"className\":\"desktop-only\"} -->\n<div class=\"wp-block-spacer desktop-only\" style=\"height: 32px;\" aria-hidden=\"true\"> </div>\n<!-- /wp:spacer -->\n<div class=\"wp-block-columns alignwide has-2-columns\"> </div>\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Get in Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-info -->\n<div class=\"wp-block-jetpack-contact-info\"><!-- wp:jetpack/address {\"address\":\"10 Street Road\",\"city\":\"City\",\"postal\":\"10100\",\"country\":\"USA\"} -->\n<div class=\"wp-block-jetpack-address\">\n<div class=\"jetpack-address__address jetpack-address__address1\">10 Street Road</div>\n<div><span class=\"jetpack-address__city\">City</span>, <span class=\"jetpack-address__postal\">10100</span></div>\n<div class=\"jetpack-address__country\">USA</div>\n</div>\n<!-- /wp:jetpack/address -->\n\n<!-- wp:jetpack/email {\"email\":\"Twodayssss@gmail.com\"} -->\n<div class=\"wp-block-jetpack-email\"><a href=\"mailto:Twodayssss@gmail.com\">Twodayssss@gmail.com</a></div>\n<!-- /wp:jetpack/email -->\n\n<!-- wp:jetpack/phone {\"phone\":\"(857）2108280\"} -->\n<div class=\"wp-block-jetpack-phone\"><a href=\"tel:8572108280\">(857）2108280</a></div>\n<!-- /wp:jetpack/phone -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:jetpack/contact-info --></div>\n<!-- /wp:column -->\n\n<!-- wp:columns {\"align\":\"wide\",\"className\":\"has-2-columns\"} -->\n<div class=\"wp-block-columns alignwide has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"> </div>\n<!-- /wp:column -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:columns -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Send Us a Message</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-form -->\n\n<!-- wp:jetpack/field-name {\"required\":true} /-->\n\n<!-- wp:jetpack/field-email {\"label\":\"Email\",\"required\":true} /-->\n\n<!-- wp:jetpack/field-url /-->\n\n<!-- wp:jetpack/field-textarea {\"required\":true} /--><!-- /wp:jetpack/contact-form --></div>\n<!-- /wp:column -->\n<p><!-- /wp:columns --></p>', 'Contact', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2020-02-22 00:58:34', '2020-02-21 16:58:34', '', 44, 'http://localhost/twodayssss/?p=440', 0, 'revision', '', 0),
(439, 1, '2020-02-22 00:57:56', '2020-02-21 16:57:56', '這是簡介頁面的範例。與文章不同的是，你希望能輕鬆存取的永久內容更適合放在頁面中，例如「簡介」或「聯絡資訊」。按一下「編輯」連結，以變更此頁面或<a href=\"https://two-dayssss.com/page\">新增其他頁面</a>。', '簡介', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2020-02-22 00:57:56', '2020-02-21 16:57:56', '', 43, 'http://localhost/twodayssss/?p=439', 0, 'revision', '', 0),
(24, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5-2', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/%e9%a6%96%e9%a1%b5-2/', 0, 'nav_menu_item', '', 0),
(25, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/25/', 1, 'nav_menu_item', '', 0),
(26, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/26/', 2, 'nav_menu_item', '', 0),
(27, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', ' ', '', '', 'publish', 'closed', 'closed', '', '27', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/27/', 3, 'nav_menu_item', '', 0),
(28, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 'Yelp', '', 'publish', 'closed', 'closed', '', 'yelp', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/yelp/', 0, 'nav_menu_item', '', 0),
(29, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 'Facebook', '', 'publish', 'closed', 'closed', '', 'facebook', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/facebook/', 1, 'nav_menu_item', '', 0),
(30, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 'Twitter', '', 'publish', 'closed', 'closed', '', 'twitter', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/twitter/', 2, 'nav_menu_item', '', 0),
(31, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 'Instagram', '', 'publish', 'closed', 'closed', '', 'instagram', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/instagram/', 3, 'nav_menu_item', '', 0),
(32, 1, '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', '电邮', '', 'publish', 'closed', 'closed', '', '%e7%94%b5%e9%82%ae', '', '', '2020-02-22 00:05:23', '2020-02-21 16:05:23', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/%e7%94%b5%e9%82%ae/', 4, 'nav_menu_item', '', 0),
(33, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '[ultimatemember form_id=\"7\"]', '用户', '', 'publish', 'closed', 'closed', '', 'user', '', '', '2020-02-22 02:25:25', '2020-02-21 18:25:25', '', 0, 'http://localhost/twodayssss/index.php/user/', 0, 'page', '', 0),
(34, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '[ultimatemember form_id=\"6\"]', '登录', '', 'publish', 'closed', 'closed', '', 'login', '', '', '2020-02-22 01:22:27', '2020-02-21 17:22:27', '', 0, 'http://localhost/twodayssss/index.php/login/', 0, 'page', '', 0),
(35, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '[ultimatemember form_id=\"5\"]', '注册', '', 'publish', 'closed', 'closed', '', 'register', '', '', '2020-02-22 00:05:32', '2020-02-21 16:05:32', '', 0, 'http://localhost/twodayssss/index.php/register/', 0, 'page', '', 0),
(36, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '[ultimatemember form_id=\"8\"]', '会员', '', 'publish', 'closed', 'closed', '', 'members', '', '', '2020-02-22 00:05:32', '2020-02-21 16:05:32', '', 0, 'http://localhost/twodayssss/index.php/members/', 0, 'page', '', 0),
(37, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '', '注销', '', 'publish', 'closed', 'closed', '', 'logout', '', '', '2020-02-22 00:05:32', '2020-02-21 16:05:32', '', 0, 'http://localhost/twodayssss/index.php/logout/', 0, 'page', '', 0),
(38, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '[ultimatemember_account]', '账号', '', 'publish', 'closed', 'closed', '', 'account', '', '', '2020-02-22 02:25:00', '2020-02-21 18:25:00', '', 0, 'http://localhost/twodayssss/index.php/account/', 0, 'page', '', 0),
(39, 1, '2020-02-22 00:05:32', '2020-02-21 16:05:32', '[ultimatemember_password]', '密码重置', '', 'publish', 'closed', 'closed', '', 'password-reset', '', '', '2020-02-22 00:05:32', '2020-02-21 16:05:32', '', 0, 'http://localhost/twodayssss/index.php/password-reset/', 0, 'page', '', 0),
(40, 1, '2020-02-22 00:16:25', '2020-02-21 16:16:25', 'http://localhost/twodayssss/wp-content/uploads/2020/02/two-dayssss.2020-02-19.xml_.txt', 'two-dayssss.2020-02-19.xml_.txt', '', 'private', 'open', 'closed', '', 'two-dayssss-2020-02-19-xml_-txt', '', '', '2020-02-22 00:16:25', '2020-02-21 16:16:25', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/two-dayssss.2020-02-19.xml_.txt', 0, 'attachment', '', 0),
(352, 1, '2020-02-22 00:51:19', '2020-02-21 16:51:19', '<article class=\"content-box\">\n<h2 class=\"reg text-primary\">认真寻找伴侣的女性会员众多</h2>\n<p class=\"h4 text-justify\">此网站平台每天都有具吸引力的女会员注册加入，而她们大部份都是打算认真地在此找寻一个伴侣，所以请留意这里所有注册女会员都是真实，而非由模特儿公司雇用，亦非由本网站以任何付费方式（如薪金/佣金）等拉拢过来的。</p>\n\n<div class=\"gals border-box\">\n<div class=\"thumbnails\">\n<ul class=\"d-flex justify-content-center\">\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-318\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur13.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-319\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur2.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-320\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur7.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-321\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur14.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-322\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur15.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-323\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur16.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-324\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur17.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n</ul>\n</div>\n</div>\n<p class=\"\">为保障会员私隐，显示之会员头像曾被适度调蒙</p>\n\n<h2 class=\"reg text-primary\" style=\"text-align: center;\">为何要选择 两天网？ 因为我们，</h2>\n\n<div class=\"row\">\n    <div class=\"col-md-6 mb-8\">\n       <div class=\"cell-left\">\n          <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic101.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-346\" /></figure>\n          <h3 class=\"reg text-primary\">查证女会员之身份</h3>\n          <p class=\"h4 text-justify\">所有女性在注册成为此俱乐部会员时都必须提交其身份证明文件之副本，以确保没有任何第三方可冒认或盗取他人身份申请成为会员。另外，只有真正的女性方可在此注册。</p>\n        </div>\n        </div>\n       <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic102.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-347\" /></figure>\n            <h3 class=\"reg text-primary\">尊重个人私隐</h3>\n            <p class=\"h4 text-justify\">男士只需要使用信用卡购买会籍以作注册，而无需提交身份证明或面试。无论阁下是已婚还是单身，都可以享受我们的服务。</p>\n        </div>\n        </div>\n       <div class=\"col-md-6 mb-8\">\n        <div class=\"cell-left\">\n          <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic103.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-348\" /></figure>\n            <h3 class=\"reg text-primary\">让你可免费与女会员联络</h3>\n            <p class=\"h4 text-justify\">我们只会收取会员登记费用；当阁下之会员资格开始生效，便可以随心所欲地向感兴趣的女会员发送信息，而无需支付额外费用。</p>\n          </div>\n        </div>\n       <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic104.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-349\" /></figure>\n            <h3 class=\"reg text-primary\">提供自动翻译服务</h3>\n            <p class=\"h4 text-justify\">通过我们网页发送的讯息将自动翻译为另一方使用的语言。网页目前的翻译功能支援英语，中文，日语，和俄语。</p>\n          </div>\n       </div>\n     </div>\n</article>', '男士网頁须知', '', 'inherit', 'closed', 'closed', '', '315-revision-v1', '', '', '2020-02-22 00:51:19', '2020-02-21 16:51:19', '', 315, 'http://localhost/twodayssss/index.php/2020/02/22/315-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `td_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(43, 1, '2020-02-22 00:05:39', '2020-02-21 16:05:39', '這是簡介頁面的範例。與文章不同的是，你希望能輕鬆存取的永久內容更適合放在頁面中，例如「簡介」或「聯絡資訊」。按一下「編輯」連結，以變更此頁面或<a href=\"https://two-dayssss.com/page\">新增其他頁面</a>。', '簡介', '', 'publish', 'closed', 'closed', '', '%e7%b0%a1%e4%bb%8b', '', '', '2020-02-22 00:58:53', '2020-02-21 16:58:53', '', 0, 'https://twodayssss.com/?page_id=2', 1, 'page', '', 0),
(44, 1, '2020-02-22 00:38:07', '2020-02-21 16:38:07', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Let\'s talk 👋 Don\'t hesitate to reach out with the contact information below, or send a message using the form. 如果你有意向加入我们，欢迎联系，让我们谈谈，碰撞出思想的火花！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":32,\"className\":\"desktop-only\"} -->\n<div class=\"wp-block-spacer desktop-only\" style=\"height: 32px;\" aria-hidden=\"true\"> </div>\n<!-- /wp:spacer -->\n<div class=\"wp-block-columns alignwide has-2-columns\"> </div>\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Get in Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-info -->\n<div class=\"wp-block-jetpack-contact-info\"><!-- wp:jetpack/address {\"address\":\"10 Street Road\",\"city\":\"City\",\"postal\":\"10100\",\"country\":\"USA\"} -->\n<div class=\"wp-block-jetpack-address\">\n<div class=\"jetpack-address__address jetpack-address__address1\">10 Street Road</div>\n<div><span class=\"jetpack-address__city\">City</span>, <span class=\"jetpack-address__postal\">10100</span></div>\n<div class=\"jetpack-address__country\">USA</div>\n</div>\n<!-- /wp:jetpack/address -->\n\n<!-- wp:jetpack/email {\"email\":\"Twodayssss@gmail.com\"} -->\n<div class=\"wp-block-jetpack-email\"><a href=\"mailto:Twodayssss@gmail.com\">Twodayssss@gmail.com</a></div>\n<!-- /wp:jetpack/email -->\n\n<!-- wp:jetpack/phone {\"phone\":\"(857）2108280\"} -->\n<div class=\"wp-block-jetpack-phone\"><a href=\"tel:8572108280\">(857）2108280</a></div>\n<!-- /wp:jetpack/phone -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:jetpack/contact-info --></div>\n<!-- /wp:column -->\n\n<!-- wp:columns {\"align\":\"wide\",\"className\":\"has-2-columns\"} -->\n<div class=\"wp-block-columns alignwide has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"> </div>\n<!-- /wp:column -->\n\n<!-- wp:paragraph -->\n<p>&nbsp;</p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:columns -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Send Us a Message</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-form -->\n\n<!-- wp:jetpack/field-name {\"required\":true} /-->\n\n<!-- wp:jetpack/field-email {\"label\":\"Email\",\"required\":true} /-->\n\n<!-- wp:jetpack/field-url /-->\n\n<!-- wp:jetpack/field-textarea {\"required\":true} /--><!-- /wp:jetpack/contact-form --></div>\n<!-- /wp:column -->\n<p><!-- /wp:columns --></p>', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-02-22 00:59:06', '2020-02-21 16:59:06', '', 0, 'http://twodayssss.com/contact/', 1, 'page', '', 0),
(82, 1, '2020-01-06 21:56:14', '2020-01-06 13:56:14', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Let\'s talk 👋 Don\'t hesitate to reach out with the contact information below, or send a message using the form. 如果你有意向加入我们，欢迎联系，让我们谈谈，碰撞出思想的火花！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":32,\"className\":\"desktop-only\"} -->\n<div style=\"height:32px\" aria-hidden=\"true\" class=\"wp-block-spacer desktop-only\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\",\"className\":\"has-2-columns\"} -->\n<div class=\"wp-block-columns alignwide has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Get in Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-info -->\n<div class=\"wp-block-jetpack-contact-info\"><!-- wp:jetpack/address {\"address\":\"10 Street Road\",\"city\":\"City\",\"postal\":\"10100\",\"country\":\"USA\"} -->\n<div class=\"wp-block-jetpack-address\"><div class=\"jetpack-address__address jetpack-address__address1\">10 Street Road</div><div><span class=\"jetpack-address__city\">City</span>, <span class=\"jetpack-address__region\"></span> <span class=\"jetpack-address__postal\">10100</span></div><div class=\"jetpack-address__country\">USA</div></div>\n<!-- /wp:jetpack/address -->\n\n<!-- wp:jetpack/email {\"email\":\"Twodayssss@gmail.com\"} -->\n<div class=\"wp-block-jetpack-email\"><a href=\"mailto:Twodayssss@gmail.com\">Twodayssss@gmail.com</a></div>\n<!-- /wp:jetpack/email -->\n\n<!-- wp:jetpack/phone {\"phone\":\"(857）2108280\"} -->\n<div class=\"wp-block-jetpack-phone\"><a href=\"tel:8572108280\">(857）2108280</a></div>\n<!-- /wp:jetpack/phone --></div>\n<!-- /wp:jetpack/contact-info -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Send Us a Message</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-form -->\n<!-- wp:jetpack/field-name {\"required\":true} /-->\n\n<!-- wp:jetpack/field-email {\"label\":\"Email\",\"required\":true} /-->\n\n<!-- wp:jetpack/field-url /-->\n\n<!-- wp:jetpack/field-textarea {\"required\":true} /-->\n<!-- /wp:jetpack/contact-form --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact联系我们！', '', 'publish', 'closed', 'closed', '', 'contact%e8%81%94%e7%b3%bb%e6%88%91%e4%bb%ac%ef%bc%81', '', '', '2020-02-22 00:59:30', '2020-02-21 16:59:30', '', 0, 'https://twodayssss.com/?page_id=82', 0, 'page', '', 0),
(300, 1, '2020-02-22 00:31:16', '2020-02-21 16:31:16', '<article class=\"content-box\">\r\n<div class=\"row\">\r\n<div class=\"col-md-6 mb-8\">\r\n<ul class=\"reviewer\">\r\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic011.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-302\" /></li>\r\n<li>来自日本东京的 <span class=\"d-block\">Ken, 47 岁, 资讯科技公司行政人员</span></li>\r\n</ul>\r\n<blockquote>我过去曾经使用过各种各样的交友网站和手机应用程式，但 <strong>两天网</strong> 是我目前使用过最快能让我遇到合适的对像的交友平台。其他交友服务总是令我怀疑自己能真正跟心仪女生约会的可能性，但在这里我能与条件吻合的女生有良好的关系发展。在过去的三个月，我在这里遇上五个合乎要求的女生，而且很快便跟其中二位有稳定约会关系。这平台对于我这类没有结婚打算却又享受交往感觉的男人是最适合不过的了。\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<ul class=\"reviewer lady\">\r\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic012.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-304\" /></li>\r\n<li>来自日本横滨的 <span class=\"d-block\">Rina, 25 岁, 文员</span></li>\r\n</ul>\r\n<blockquote>\r\n这是我头一趟使用这类交友约会平台。起初我非常担心，脑海经常出现负面的想法，如：我会否收到一些奇怪的要求，或会否遇上对我不利的会员？如遇上这些事情我该怎么办？我需要礼貌答覆吗等等 … … 但最后我还是做到了， 而且这些疑虑也很快随之烟消云散！我遇到的每个会员都很有绅士风度，与他们聊天总是充满趣味；而跟数个会员交谈后，我幸运地遇上现任男友。他出差时总会跟我联系。虽然在大多数约会，我们都是在高级餐厅享用晚餐后直接前往酒店，但我们都很享受彼此赖在一起的时光。每次他公干后回去，我都好想念他呢 … \r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<ul class=\"reviewer\">\r\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic013.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-305\" /></li>\r\n<li>来自香港的 <span class=\"d-block\">Alex, 36 岁, 投资银行家</span></li>\r\n</ul>\r\n<blockquote>\r\n我经常到日本出差，由于想在老婆不在身边时找个日本女生一起外出，于是找上了这个网站平台。在很多女会员当中，我选了22岁，刚从大学毕业的她。我同一天 便收到她的回覆，并开始聊天和约定见面日期等细节。我平常都是以中和和英文沟通，日文实在不行，因此见面前曾担心过没法沟通这问题;而讯息沟通则因为网站有翻译功能而没有很大的问题。两周后我们相约在东京见面，尽管大家的英语和日文水平都很烂，但还是过得很愉快！我肯定会再使用这平台服务！\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<ul class=\"reviewer lady\">\r\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic014.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-306\" /></li>\r\n<li>日本在住（広島県）<span class=\"d-block\">Nami 21歳　接客業</span></li>\r\n</ul>\r\n<blockquote>\r\n我在餐厅工作，一直不乏男性追求，但每当我和他们发展成情侣后，往往会感到失望。后来我经朋友介绍认识到这个网站，其实起初也很犹豫，但最后还是注册了，而且有点惊喜地发现这里的男会员都很有风度喔！除了总是耐心地倾听我的疑难外，还给了我很多建议，而且对我十分慷慨。最近我正与一位神户的进口商交往，看来我一直以来在英国读书的梦想，在他的支持下将会实现。\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<ul class=\"reviewer\">\r\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic015.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-307\" /></li>\r\n<li>来自日本兵库县的<span class=\"d-block\">Sho, 40 岁, 企业家</span></li>\r\n</ul>\r\n<blockquote>\r\n我大概是一个罕见的案例：我在这里遇到了我现在的老婆，并在上个月结婚。我一直专注营运自己的事业，根本没有机会认识其他异性；我也曾参加过数次单身派对，却遇不到能吸引自己的人；而吸引到我的女生，却最后总是选择了其他男人，让我什至怀疑派对中的参加者大多数是外聘回来滥于充数的。在经历过这些不愉快体验后，我决定放任自己并随便在这平台上找些女生寻开心算了；然而我却在她们当中遇到让我想照顾一生一世的女生，我生命中的另一半。\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<ul class=\"reviewer lady\">\r\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic016.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-308\" /></li>\r\n<li>來自日本大阪的<span class=\"d-block\">Yuki, 20 歲, 店員</span></li>\r\n</ul>\r\n<blockquote>\r\n说实话，我来这里纯粹是为了得到经济上的支持。我曾使用过其他约会平台，然而大多数的男人只想与我有肉体关系；这个网站平台上却每个会员都很有善，而且非常富有！有一位香港的男会员还想送一辆车给我作为礼物呢！但因为这只是我们第一次约会，所以我并没有接受。尽管如此，这事完全没有影响我们之间的关系，而且他仍然会在到来时找我喔！下次也许我就会接受他的好意噜！\r\n</blockquote>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic021.jpg\" alt=\"\" width=\"520\" height=\"200\" class=\"alignnone size-full wp-image-312\" /></figure>\r\n<p class=\"text-justify\">如果阁下希望与心目中的理想女生约会，或者想找个能在公干中伴你度过美好时光的另一半，两天网可替阁下找到最佳配偶。</p>\r\n<p class=\"text-center\"><a href=\"/forman\" class=\"btn btn-primary\">对于绅士们</a></p>\r\n</div>\r\n<div class=\"col-md-6 mb-8\">\r\n<figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic022.jpg\" alt=\"\" width=\"520\" height=\"200\" class=\"alignnone size-full wp-image-313\" /></figure>\r\n<p class=\"\">如果阁下想找个具经济能力的绅士，或能让您实现梦想的人作伴侣，两天网可替阁下找到最佳配偶。</p>\r\n<p class=\"text-center\"><a href=\"/forwoman\" class=\"btn btn-secondary\">对于女士们</a></p>\r\n</div>\r\n</article>', '会员体验分享', '', 'publish', 'closed', 'closed', '', 'testimonials', '', '', '2020-02-22 01:00:57', '2020-02-21 17:00:57', '', 0, 'https://twodayssss.com/?page_id=300', 0, 'page', '', 0),
(315, 1, '2020-02-22 00:09:17', '2020-02-21 16:09:17', '<article class=\"content-box\">\n<h2 class=\"reg text-primary\">认真寻找伴侣的女性会员众多</h2>\n<p class=\"h4 text-justify\">此网站平台每天都有具吸引力的女会员注册加入，而她们大部份都是打算认真地在此找寻一个伴侣，所以请留意这里所有注册女会员都是真实，而非由模特儿公司雇用，亦非由本网站以任何付费方式（如薪金/佣金）等拉拢过来的。</p>\n\n<div class=\"gals border-box\">\n<div class=\"thumbnails\">\n<ul class=\"d-flex justify-content-center\">\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-318\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur13.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-319\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur2.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-320\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur7.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-321\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur14.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-322\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur15.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-323\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur16.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n 	<li><a href=\"/login\"><img class=\"rounded-circle alignnone size-full wp-image-324\" src=\"https://twodayssss.com/wp-content/uploads/2020/01/blur17.jpg\" alt=\"\" width=\"120\" height=\"120\" /></a></li>\n</ul>\n</div>\n</div>\n<p class=\"\">为保障会员私隐，显示之会员头像曾被适度调蒙</p>\n\n<h2 class=\"reg text-primary\" style=\"text-align: center;\">为何要选择 两天网？ 因为我们，</h2>\n\n<div class=\"row\">\n    <div class=\"col-md-6 mb-8\">\n       <div class=\"cell-left\">\n          <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic101.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-346\" /></figure>\n          <h3 class=\"reg text-primary\">查证女会员之身份</h3>\n          <p class=\"h4 text-justify\">所有女性在注册成为此俱乐部会员时都必须提交其身份证明文件之副本，以确保没有任何第三方可冒认或盗取他人身份申请成为会员。另外，只有真正的女性方可在此注册。</p>\n        </div>\n        </div>\n       <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic102.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-347\" /></figure>\n            <h3 class=\"reg text-primary\">尊重个人私隐</h3>\n            <p class=\"h4 text-justify\">男士只需要使用信用卡购买会籍以作注册，而无需提交身份证明或面试。无论阁下是已婚还是单身，都可以享受我们的服务。</p>\n        </div>\n        </div>\n       <div class=\"col-md-6 mb-8\">\n        <div class=\"cell-left\">\n          <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic103.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-348\" /></figure>\n            <h3 class=\"reg text-primary\">让你可免费与女会员联络</h3>\n            <p class=\"h4 text-justify\">我们只会收取会员登记费用；当阁下之会员资格开始生效，便可以随心所欲地向感兴趣的女会员发送信息，而无需支付额外费用。</p>\n          </div>\n        </div>\n       <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic104.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-349\" /></figure>\n            <h3 class=\"reg text-primary\">提供自动翻译服务</h3>\n            <p class=\"h4 text-justify\">通过我们网页发送的讯息将自动翻译为另一方使用的语言。网页目前的翻译功能支援英语，中文，日语，和俄语。</p>\n          </div>\n       </div>\n     </div>\n</article>', '男士网頁须知', '', 'publish', 'closed', 'closed', '', 'forman', '', '', '2020-02-22 01:01:59', '2020-02-21 17:01:59', '', 0, 'https://twodayssss.com/?page_id=315', 0, 'page', '', 0),
(327, 1, '2020-02-22 00:15:53', '2020-02-21 16:15:53', '<h2 style=\"text-align: center;\">在 两天网，你可以：</h2>\n<div class=\"row\">\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-left\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic201.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-330\" /></figure>\n            <h3 class=\"reg text-secondary\">找到经济条件吸引的男士</h3>\n            <p class=\"h4 text-justify\">此平台的之男会员入会费定价刻意高于其他同类网站，由此将有更高机会让您在此找到高收入男士。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic202.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-331\" /></figure>\n            <h3 class=\"reg text-secondary\">达成理想</h3>\n            <p class=\"h4 text-justify\">这里的男会员均具有一定的社会地位及丰富的生活经验，能助您达成愿望及理想。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-left\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic203.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-332\" /></figure>\n            <h3 class=\"reg text-secondary\">连系到世界各地的男士</h3>\n            <p class=\"h4 text-justify\">会员可从世界各地登记注册，因此您有可能走出国际。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic204.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-333\" /></figure>\n            <h3 class=\"reg text-secondary\">享用自动翻译服务</h3>\n            <p class=\"h4 text-justify\">通过我们网页发送的讯息将自动翻译为另一方使用的语言。网页目前的翻译功能支援英语，中文，日语，和俄语。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-left\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic205.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-334\" /></figure>\n            <h3 class=\"reg text-secondary\">交换只属于您和对方之间的私密讯息</h3>\n            <p class=\"h4 text-justify\">这里并没有制定任何关于约会的规则，你亦可与对方秘密地沟通而无需向网站平台职员交代。我们绝不会对此作出阻挠。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic206-1.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-335\" /></figure>\n            <h3 class=\"reg text-secondary\">感到安心</h3>\n            <p class=\"h4 text-justify\">您可先与对方沟通至认为已对其具充份了解，再自行决定是否与对方会面或交换联络方法。这完全取决于阁下个人取向及意愿。</p>\n          </div>\n        </div>\n     </div>', '女士网頁须知', '', 'publish', 'closed', 'closed', '', 'forwoman', '', '', '2020-02-22 01:00:52', '2020-02-21 17:00:52', '', 0, 'https://twodayssss.com/?page_id=327', 0, 'page', '', 0),
(351, 1, '2020-02-22 00:50:02', '2020-02-21 16:50:02', '<h2 style=\"text-align: center;\">常见问题</h2>\n<h3 style=\"text-align: center;\">两天网 是一个会员制的网上交友俱乐部，主要为会员提供一个平台，让想寻求趣味和提升生活质素的女士，与有能力替女士们实现梦想的男士们有互想结识的机会。</h3>\n<div id=\"accordion\" class=\"ui-accordion ui-widget ui-helper-reset\" role=\"tablist\">\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-0\" aria-controls=\"ui-accordion-accordion-panel-0\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>注册与取消会籍</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-0\" aria-labelledby=\"ui-accordion-accordion-header-0\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：需要收取会费吗？</h4>\n        <p>答：不论是男或是女会员均可免费使用网站。但是，若男会员只使用免费会籍，或女会员一直不提交身份证明文件，均会限制了会员于网站上的可用功能。 </p>\n        <h4>问：使用此网站有年龄限制吗？</h4>\n        <p>答：是的，你必须年满十八岁方可使用此网站 (高中生除外)。</p>\n        <h4>问：如何取消我的会籍？</h4>\n        <p>答：<u>女会员</u> - 请填写<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">表格</a> (请按此连结) 以完成会籍取消手续。请在注解位置填写以下所需资料以验证阁下之身份。</p>\n        <ul>\n          <li>已登记电邮地址</li>\n          <li>个人资料名称</li>\n          <li>出生日期</li>\n          <li>退会原因</li>\n        </ul>\n        <p>答：<u>男会员</u> -</p>\n        <ol>\n          <li>如你只想取消付费会籍，请在<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">此</a>取消。由此，你仍可保留你的免费会籍及个人资料档案。</li>\n          <li>如阁下希望移除你的个人资料档案，请按<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">此</a>。请在注解位置填写已登记电邮地址及个人资料名称以验证阁下之身份。</li>\n        </ol>\n        <p>※请注意移除你的个人资料档案并不会自动取消其付费会籍。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-1\" aria-controls=\"ui-accordion-accordion-panel-1\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>有关使用此网站</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-1\" aria-labelledby=\"ui-accordion-accordion-header-1\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：我可用智能电话使用网站吗？</h4>\n        <p>答：可以，你可利用智能电话登入网址 <a href=\"index.html\">www.lovender.com</a> 以浏览网页。</p>\n        <h4>问：作为免费会员我于网站使用上有何权利？</h4>\n        <p>答：你仍然可以收取及阅读网页内的讯息，同时亦可查看谁曾浏览过自身个人资料档案；然而，你并没有权限回覆任何讯息。</p>\n        <p>※(女会员) 提交身份证明文件或；(男会员) 购买付费会籍后，便可回覆会员讯息。 </p>\n        <h4>问：除免费会员外我还有什么选择？</h4>\n        <p>答：(女会员) 提交身份证明文件或；(男会员) 购买付费会籍后，便可传送及回覆会员讯息。</p>\n        <h4>问：已登记的会员通常是什么人？</h4>\n        <p>答：女会员通常是二十出头的年轻女性，行业主要分布于高中以上学生、文职、模特儿、护士、公司接待员，或秘书等；而男会员则多为财政稳健及具有社会地位之人士。 而可互传讯息之会员均为已提交身份证明文件或信用卡资料作身份核证。</p>\n        <h4>问：登记成会员可保证我一定能在此找到约会对象吗？</h4>\n        <p>答：很抱歉我们没法为此作出保证，因最终决定权在双方会员手中。我们希望通过沟通及深入了解，你能在此找到最适合你的会员。</p>\n        <h4>问：与对方交换联络方法时我可以不使用真实姓名吗？</h4>\n        <p>答：可以，你并不需要使用你的名字以传用讯息。即使你俩于沟通后决定走在一起，如何称呼双方的决定权仍然在双方会员手上。</p>\n        <h4>问：就我登记成会员这件事上可以保守秘密吗？</h4>\n        <p>答：我们了解客户资料绝对保密的重要性，因此我们混合使用了多重安全资料保护系统去保障会员私隐，以确保阁下的身份永远不会被外泄。</p>\n        <h4>问：我可以如何真正地与其他会员见面？</h4>\n        <p>答：当你遇上感兴趣的会员，便可利用平台上的讯息功能与对方沟通，了解双方期许；你们亦可交换联络方法，并订下会面地点及日期时间。</p>\n        <h4>问：我可如何在对话前先基本了解对方的期许？</h4>\n        <p>答：你可在对方的个人资料档案中了解他们希望以什么方式约会。</p>\n        <h4>问：即使我身处外地也可使用 Lovender 的服务平台吗？</h4>\n        <p>答：你可在世上任何地方注册成 Lovender 的会员，而你的居住地将显示在个人资料档案上。我们欢迎你在商务公干时使用本网站。</p>\n        <h4>问：如果见面时发现对方不如我心中所想，我该怎么办？</h4>\n        <p>答：我们明白有这个可能性，但请紧记对方也付出了时间，因此若你打算拒绝对方，也请保持良好态度。</p>\n        <h4>问：若我长得不好看会否难以在此寻找对象？</h4>\n        <p>答：每个人眼中对美的定义不同；有些追求外表，亦有些想找个简单朴实的人，我们相信最重要的是你的性格和为人善良。</p>\n        <h4>问：智能手机和计算机的推荐设置是什么？</h4>\n        <p>答： [智能手机]</p>\n        <ul>\n          <li>iOS 12.0 - Safari</li>\n          <li>Android 10 - Chrome</li>\n          <li>Windows Phone 10 - Edge</li>\n        </ul>\n        <p>答： [电脑]</p>\n        <ul>\n          <li>CPU: 2.0GHz+</li>\n          <li>内存: 2GB+</li>\n          <li>下载/上传的網速: 1.5Mbps+</li>\n          <li>操作系统: Windows 7, Windows 8.1, Mac OS X (10.11/10.12/10.13/10.14)</li>\n          <li>浏览器: Google Chrome 74, Mozilla Firefox 66, Safari 11, Microsoft Edge 40</li>\n          <li>其他: JavaScript Enabled</li>\n        </ul>\n        <p>※请注意，若阁下已经按以上设定仍未能使用本网站平台，有可能是受软件支援、网络供应商，或网速因素所影响。请按情况向有关单位查询。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-2\" aria-controls=\"ui-accordion-accordion-panel-2\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于会员制 (男会员)</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-2\" aria-labelledby=\"ui-accordion-accordion-header-2\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：购买会籍后我可享有什么权利？</h4>\n        <p>答：你可以查看更多女会员的个人资料档案及交换讯息。</p>\n        <h4>问：除会员费外 Lovender 还有其他收费项目吗？</h4>\n        <p>答：没有，网站并不收取额外费用。</p>\n        <h4>问：我如何续会？</h4>\n        <p>答：除非你于<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">设定</a>中取消会籍，否则你的会籍将自动续约。</p>\n        <h4>问：我可如何查阅我的会籍期限？</h4>\n        <p>答：请在<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">此</a>页查阅。</p>\n        <h4>问：如何处理会员付款？</h4>\n        <p>答：所有付款均由 D2Pass 处理。会员需使用信用卡付款，而 VISA，Mastercard，JCB 和 Diners Club 均可接受。请到访 <a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">D2Pass</a> 以获取更多资讯。</p>\n        <h4>问：网站的名称会显示在我的信用卡月结单上吗？</h4>\n        <p>答：不会。你的信用卡月结单上将会显示为「KINGSUMMIT」。</p>\n        <h4>问：会籍可以退款吗？</h4>\n        <p>答：很抱歉，一经交易，款项将不作退回。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-3\" aria-controls=\"ui-accordion-accordion-panel-3\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于登入</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-3\" aria-labelledby=\"ui-accordion-accordion-header-3\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：忘记密码</h4>\n        <p>答：若阁下忘记登入密码，请于登入版面选择「<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">忘记密码</a>」以重新获取新密码。</p>\n        <h4>问：我已在网站注册，但无法登入。</h4>\n        <p>答：请检查阁下已输入的登入资料 (电邮地址及密码) 是否正确。然后清除网络浏览器上的 cookies，再尝试登入。若你仍然无法登入，<a href=\"#\" onclick=\"MM_openBrWindow(\'https://service.d2pass.com/lovender/inquiry\',\'inquiry\',\'resizable=yes,width=620,height=760\')\">请联络我们</a>。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-4\" aria-controls=\"ui-accordion-accordion-panel-4\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于个人资料档案</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-4\" aria-labelledby=\"ui-accordion-accordion-header-4\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：在制作个人资料档案上有什么建议？</h4>\n        <p>答：请不要发布以不个人资料以防泄露你的身份。</p>\n        <ul>\n          <li>你的个人联络资料 (真实姓名、电话号码、电邮地址，及住址等)</li>\n          <li>可连结到其他网站的超连结</li>\n          <li>阁下用于社交平台的照片</li>\n          <li>阁下用于社交平台的名称</li>\n          <li>其他个人资料</li>\n        </ul>\n        <h4>问：我可以修改或更改个人档案的资料吗？</h4>\n        <p>答：可以。请选择「修改」按钮并开启你的个人资料档案。修改后请紧记储存。</p>\n        <h4>问：我可如何设定我喜爱的会员？</h4>\n        <p>答：请按下会员列表或会员个人档案上的心形按钮。</p>\n        <h4>问：我可如何查看我喜爱的会员？</h4>\n        <p>答：请按下黄色心形按钮或列于网页顶端的「我喜爱的会员」。</p>\n        <h4>问：我可如何得知我成为别人的「喜爱会员」？</h4>\n        <p>答：请按下粉红色心形按钮或列于网页顶端的「别人喜爱的会员」。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-5\" aria-controls=\"ui-accordion-accordion-panel-5\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于图片</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-5\" aria-labelledby=\"ui-accordion-accordion-header-5\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：「个人档案照片」和「私密照片」有何分别？</h4>\n        <p>答：任何会员均可查看其他会员的「个人档案照片」。当你将该照片设定成个人档案主照片，它将显示于会员列表上的头像；而「秘密照片」则只有得到对方同意下才能查看，因此若你想上传一些私密照，请将其归类为「秘密」。</p>\n        <h4>问：我该用什么照片？</h4>\n        <p>答：请选择你认为最吸引的照片以留一良好的第一印象。</p>\n        <p>个人档案照片：请务必使用你自己的照片。建议使用你的大头贴；倘若你不希望以此作主图片，请将它传为「秘密照片」。</p>\n        <p>秘密照片：一些你认为是很私密的照片。</p>\n        <h4>问：什么照片是我不该使用？</h4>\n        <p>答：以下图片将被禁止显示：</p>\n        <ul>\n          <li>除你以外的任何人士</li>\n          <li>裸体或生殖器官</li>\n          <li>让人感到不悦的</li>\n          <li>你十八岁以下时拍的照片</li>\n        </ul>\n        <p>除此之外，Lovender 有权将任何认为不恰当之图片删除而无需预先作任何通知。</p>\n        <h4>问：有没有关于图片格式的规格？</h4>\n        <p>答：图像必须低于 5MB 且只接受 JPEG 格式。大于 5MB 和 / 或 PNG 或 GIF 格式的图像将无法上传。</p>\n        <h4>问：我可如何更改我的个人档案头像？</h4>\n        <p>答：请选择「修改个人档案」按钮并开启你的个人资料档案。按「选择图像」并选取所需照片上传。最后按「设定资料档案」以确认更改头像。</p>\n        <h4>问：上载并显示图像到网站平台需时多久？</h4>\n        <p>答：图像将于上载后四十八小时内被审查。若你发现「等待批准」之讯息消失后仍未能查看其图像，即代表该图像因某些原因而被禁。</p>\n        <h4>问：为何上载图片需先作检查？</h4>\n        <p>答：因为图片必须符合 Lovender 的规则。</p>\n        <h4>问：我没法上传图片。</h4>\n        <p>答：若你于上传图像三十秒后，「等待批准」讯息仍未显示，即表示其图像有可能不符合指定规格。请注意上载之图像必须低于 5MB 且只接受 JPEG 格式。大于 5MB 和 / 或 PNG 或 GIF 格式的图像并不接受。</p>\n        <h4>问：我想移除我的图片。</h4>\n        <p>答：按「更改个人档案」并开启你的个人档案，在你想移除的图片上选择「删除」。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-accordion-header-active ui-state-active ui-corner-top\" role=\"tab\" id=\"ui-accordion-accordion-header-6\" aria-controls=\"ui-accordion-accordion-panel-6\" aria-selected=\"true\" tabindex=\"0\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-s\"></span>使用网站时遇到问题 / 其他</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active\" id=\"ui-accordion-accordion-panel-6\" aria-labelledby=\"ui-accordion-accordion-header-6\" role=\"tabpanel\" aria-expanded=\"true\" aria-hidden=\"false\" style=\"display: block;\">\n        <h4>问：我无法传送讯息。</h4>\n        <p>答：(女会员) 你必须提交身份证明文件副本以证明阁下为十八岁或以上，才可于平台上传送讯息。请于登入时于「<a href=\"photocontract.html\" target=\"_blank\" rel=\"noopener noreferrer\">年龄核证</a>」查看更多资料。</p>\n        <p>答：(男会员) 免费会员没法传送讯息，请先登记付费计划。如你已注册成付费会员仍未能使用传讯功能，<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">请联络我们</a>。</p>\n        <h4>问：我登记后仍未收到确认电邮。</h4>\n        <p>答：请检查阁下电邮设定及垃圾邮件；若你仍未能找到，<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">请联络我们</a>。</p>\n        <h4>问：查问其他会员以取得其准许查看秘密图片是否免费？</h4>\n        <p>答：是的，你可以免费对此作出询问并查看对方照片</p>\n        <h4>问：我收到一个关于查我我的秘密照片的请求，我该如何应对？</h4>\n        <p>答：只有得到你的许可的会员才可看到你的秘密照片，而是否批许完全取决于阁下的个人意愿。</p>\n        <h4>问：我该如何提交我的身份证明文件？ (女会员)</h4>\n        <p>答：登入后，请于左上角的「<a href=\"photocontract.html\" target=\"_blank\" rel=\"noopener noreferrer\">身份核证</a>」提交资料。</p>\n      </div>\n    </div>', '常见问题', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2020-02-22 01:01:13', '2020-02-21 17:01:13', '', 0, 'https://twodayssss.com/?page_id=351', 0, 'page', '', 0),
(353, 1, '2020-02-22 00:51:28', '2020-02-21 16:51:28', '<h2 style=\"text-align: center;\">常见问题</h2>\n<h3 style=\"text-align: center;\">两天网 是一个会员制的网上交友俱乐部，主要为会员提供一个平台，让想寻求趣味和提升生活质素的女士，与有能力替女士们实现梦想的男士们有互想结识的机会。</h3>\n<div id=\"accordion\" class=\"ui-accordion ui-widget ui-helper-reset\" role=\"tablist\">\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-0\" aria-controls=\"ui-accordion-accordion-panel-0\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>注册与取消会籍</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-0\" aria-labelledby=\"ui-accordion-accordion-header-0\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：需要收取会费吗？</h4>\n        <p>答：不论是男或是女会员均可免费使用网站。但是，若男会员只使用免费会籍，或女会员一直不提交身份证明文件，均会限制了会员于网站上的可用功能。 </p>\n        <h4>问：使用此网站有年龄限制吗？</h4>\n        <p>答：是的，你必须年满十八岁方可使用此网站 (高中生除外)。</p>\n        <h4>问：如何取消我的会籍？</h4>\n        <p>答：<u>女会员</u> - 请填写<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">表格</a> (请按此连结) 以完成会籍取消手续。请在注解位置填写以下所需资料以验证阁下之身份。</p>\n        <ul>\n          <li>已登记电邮地址</li>\n          <li>个人资料名称</li>\n          <li>出生日期</li>\n          <li>退会原因</li>\n        </ul>\n        <p>答：<u>男会员</u> -</p>\n        <ol>\n          <li>如你只想取消付费会籍，请在<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">此</a>取消。由此，你仍可保留你的免费会籍及个人资料档案。</li>\n          <li>如阁下希望移除你的个人资料档案，请按<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">此</a>。请在注解位置填写已登记电邮地址及个人资料名称以验证阁下之身份。</li>\n        </ol>\n        <p>※请注意移除你的个人资料档案并不会自动取消其付费会籍。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-1\" aria-controls=\"ui-accordion-accordion-panel-1\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>有关使用此网站</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-1\" aria-labelledby=\"ui-accordion-accordion-header-1\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：我可用智能电话使用网站吗？</h4>\n        <p>答：可以，你可利用智能电话登入网址 <a href=\"index.html\">www.lovender.com</a> 以浏览网页。</p>\n        <h4>问：作为免费会员我于网站使用上有何权利？</h4>\n        <p>答：你仍然可以收取及阅读网页内的讯息，同时亦可查看谁曾浏览过自身个人资料档案；然而，你并没有权限回覆任何讯息。</p>\n        <p>※(女会员) 提交身份证明文件或；(男会员) 购买付费会籍后，便可回覆会员讯息。 </p>\n        <h4>问：除免费会员外我还有什么选择？</h4>\n        <p>答：(女会员) 提交身份证明文件或；(男会员) 购买付费会籍后，便可传送及回覆会员讯息。</p>\n        <h4>问：已登记的会员通常是什么人？</h4>\n        <p>答：女会员通常是二十出头的年轻女性，行业主要分布于高中以上学生、文职、模特儿、护士、公司接待员，或秘书等；而男会员则多为财政稳健及具有社会地位之人士。 而可互传讯息之会员均为已提交身份证明文件或信用卡资料作身份核证。</p>\n        <h4>问：登记成会员可保证我一定能在此找到约会对象吗？</h4>\n        <p>答：很抱歉我们没法为此作出保证，因最终决定权在双方会员手中。我们希望通过沟通及深入了解，你能在此找到最适合你的会员。</p>\n        <h4>问：与对方交换联络方法时我可以不使用真实姓名吗？</h4>\n        <p>答：可以，你并不需要使用你的名字以传用讯息。即使你俩于沟通后决定走在一起，如何称呼双方的决定权仍然在双方会员手上。</p>\n        <h4>问：就我登记成会员这件事上可以保守秘密吗？</h4>\n        <p>答：我们了解客户资料绝对保密的重要性，因此我们混合使用了多重安全资料保护系统去保障会员私隐，以确保阁下的身份永远不会被外泄。</p>\n        <h4>问：我可以如何真正地与其他会员见面？</h4>\n        <p>答：当你遇上感兴趣的会员，便可利用平台上的讯息功能与对方沟通，了解双方期许；你们亦可交换联络方法，并订下会面地点及日期时间。</p>\n        <h4>问：我可如何在对话前先基本了解对方的期许？</h4>\n        <p>答：你可在对方的个人资料档案中了解他们希望以什么方式约会。</p>\n        <h4>问：即使我身处外地也可使用 Lovender 的服务平台吗？</h4>\n        <p>答：你可在世上任何地方注册成 Lovender 的会员，而你的居住地将显示在个人资料档案上。我们欢迎你在商务公干时使用本网站。</p>\n        <h4>问：如果见面时发现对方不如我心中所想，我该怎么办？</h4>\n        <p>答：我们明白有这个可能性，但请紧记对方也付出了时间，因此若你打算拒绝对方，也请保持良好态度。</p>\n        <h4>问：若我长得不好看会否难以在此寻找对象？</h4>\n        <p>答：每个人眼中对美的定义不同；有些追求外表，亦有些想找个简单朴实的人，我们相信最重要的是你的性格和为人善良。</p>\n        <h4>问：智能手机和计算机的推荐设置是什么？</h4>\n        <p>答： [智能手机]</p>\n        <ul>\n          <li>iOS 12.0 - Safari</li>\n          <li>Android 10 - Chrome</li>\n          <li>Windows Phone 10 - Edge</li>\n        </ul>\n        <p>答： [电脑]</p>\n        <ul>\n          <li>CPU: 2.0GHz+</li>\n          <li>内存: 2GB+</li>\n          <li>下载/上传的網速: 1.5Mbps+</li>\n          <li>操作系统: Windows 7, Windows 8.1, Mac OS X (10.11/10.12/10.13/10.14)</li>\n          <li>浏览器: Google Chrome 74, Mozilla Firefox 66, Safari 11, Microsoft Edge 40</li>\n          <li>其他: JavaScript Enabled</li>\n        </ul>\n        <p>※请注意，若阁下已经按以上设定仍未能使用本网站平台，有可能是受软件支援、网络供应商，或网速因素所影响。请按情况向有关单位查询。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-2\" aria-controls=\"ui-accordion-accordion-panel-2\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于会员制 (男会员)</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-2\" aria-labelledby=\"ui-accordion-accordion-header-2\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：购买会籍后我可享有什么权利？</h4>\n        <p>答：你可以查看更多女会员的个人资料档案及交换讯息。</p>\n        <h4>问：除会员费外 Lovender 还有其他收费项目吗？</h4>\n        <p>答：没有，网站并不收取额外费用。</p>\n        <h4>问：我如何续会？</h4>\n        <p>答：除非你于<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">设定</a>中取消会籍，否则你的会籍将自动续约。</p>\n        <h4>问：我可如何查阅我的会籍期限？</h4>\n        <p>答：请在<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">此</a>页查阅。</p>\n        <h4>问：如何处理会员付款？</h4>\n        <p>答：所有付款均由 D2Pass 处理。会员需使用信用卡付款，而 VISA，Mastercard，JCB 和 Diners Club 均可接受。请到访 <a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">D2Pass</a> 以获取更多资讯。</p>\n        <h4>问：网站的名称会显示在我的信用卡月结单上吗？</h4>\n        <p>答：不会。你的信用卡月结单上将会显示为「KINGSUMMIT」。</p>\n        <h4>问：会籍可以退款吗？</h4>\n        <p>答：很抱歉，一经交易，款项将不作退回。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-3\" aria-controls=\"ui-accordion-accordion-panel-3\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于登入</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-3\" aria-labelledby=\"ui-accordion-accordion-header-3\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：忘记密码</h4>\n        <p>答：若阁下忘记登入密码，请于登入版面选择「<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">忘记密码</a>」以重新获取新密码。</p>\n        <h4>问：我已在网站注册，但无法登入。</h4>\n        <p>答：请检查阁下已输入的登入资料 (电邮地址及密码) 是否正确。然后清除网络浏览器上的 cookies，再尝试登入。若你仍然无法登入，<a href=\"#\" onclick=\"MM_openBrWindow(\'https://service.d2pass.com/lovender/inquiry\',\'inquiry\',\'resizable=yes,width=620,height=760\')\">请联络我们</a>。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-4\" aria-controls=\"ui-accordion-accordion-panel-4\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于个人资料档案</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-4\" aria-labelledby=\"ui-accordion-accordion-header-4\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：在制作个人资料档案上有什么建议？</h4>\n        <p>答：请不要发布以不个人资料以防泄露你的身份。</p>\n        <ul>\n          <li>你的个人联络资料 (真实姓名、电话号码、电邮地址，及住址等)</li>\n          <li>可连结到其他网站的超连结</li>\n          <li>阁下用于社交平台的照片</li>\n          <li>阁下用于社交平台的名称</li>\n          <li>其他个人资料</li>\n        </ul>\n        <h4>问：我可以修改或更改个人档案的资料吗？</h4>\n        <p>答：可以。请选择「修改」按钮并开启你的个人资料档案。修改后请紧记储存。</p>\n        <h4>问：我可如何设定我喜爱的会员？</h4>\n        <p>答：请按下会员列表或会员个人档案上的心形按钮。</p>\n        <h4>问：我可如何查看我喜爱的会员？</h4>\n        <p>答：请按下黄色心形按钮或列于网页顶端的「我喜爱的会员」。</p>\n        <h4>问：我可如何得知我成为别人的「喜爱会员」？</h4>\n        <p>答：请按下粉红色心形按钮或列于网页顶端的「别人喜爱的会员」。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-corner-all\" role=\"tab\" id=\"ui-accordion-accordion-header-5\" aria-controls=\"ui-accordion-accordion-panel-5\" aria-selected=\"false\" tabindex=\"-1\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-e\"></span>关于图片</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom\" id=\"ui-accordion-accordion-panel-5\" aria-labelledby=\"ui-accordion-accordion-header-5\" role=\"tabpanel\" aria-expanded=\"false\" aria-hidden=\"true\" style=\"display: none;\">\n        <h4>问：「个人档案照片」和「私密照片」有何分别？</h4>\n        <p>答：任何会员均可查看其他会员的「个人档案照片」。当你将该照片设定成个人档案主照片，它将显示于会员列表上的头像；而「秘密照片」则只有得到对方同意下才能查看，因此若你想上传一些私密照，请将其归类为「秘密」。</p>\n        <h4>问：我该用什么照片？</h4>\n        <p>答：请选择你认为最吸引的照片以留一良好的第一印象。</p>\n        <p>个人档案照片：请务必使用你自己的照片。建议使用你的大头贴；倘若你不希望以此作主图片，请将它传为「秘密照片」。</p>\n        <p>秘密照片：一些你认为是很私密的照片。</p>\n        <h4>问：什么照片是我不该使用？</h4>\n        <p>答：以下图片将被禁止显示：</p>\n        <ul>\n          <li>除你以外的任何人士</li>\n          <li>裸体或生殖器官</li>\n          <li>让人感到不悦的</li>\n          <li>你十八岁以下时拍的照片</li>\n        </ul>\n        <p>除此之外，Lovender 有权将任何认为不恰当之图片删除而无需预先作任何通知。</p>\n        <h4>问：有没有关于图片格式的规格？</h4>\n        <p>答：图像必须低于 5MB 且只接受 JPEG 格式。大于 5MB 和 / 或 PNG 或 GIF 格式的图像将无法上传。</p>\n        <h4>问：我可如何更改我的个人档案头像？</h4>\n        <p>答：请选择「修改个人档案」按钮并开启你的个人资料档案。按「选择图像」并选取所需照片上传。最后按「设定资料档案」以确认更改头像。</p>\n        <h4>问：上载并显示图像到网站平台需时多久？</h4>\n        <p>答：图像将于上载后四十八小时内被审查。若你发现「等待批准」之讯息消失后仍未能查看其图像，即代表该图像因某些原因而被禁。</p>\n        <h4>问：为何上载图片需先作检查？</h4>\n        <p>答：因为图片必须符合 Lovender 的规则。</p>\n        <h4>问：我没法上传图片。</h4>\n        <p>答：若你于上传图像三十秒后，「等待批准」讯息仍未显示，即表示其图像有可能不符合指定规格。请注意上载之图像必须低于 5MB 且只接受 JPEG 格式。大于 5MB 和 / 或 PNG 或 GIF 格式的图像并不接受。</p>\n        <h4>问：我想移除我的图片。</h4>\n        <p>答：按「更改个人档案」并开启你的个人档案，在你想移除的图片上选择「删除」。</p>\n      </div>\n      <h3 class=\"ui-accordion-header ui-helper-reset ui-state-default ui-accordion-icons ui-accordion-header-active ui-state-active ui-corner-top\" role=\"tab\" id=\"ui-accordion-accordion-header-6\" aria-controls=\"ui-accordion-accordion-panel-6\" aria-selected=\"true\" tabindex=\"0\"><span class=\"ui-accordion-header-icon ui-icon ui-icon-triangle-1-s\"></span>使用网站时遇到问题 / 其他</h3>\n      <div class=\"ui-accordion-content ui-helper-reset ui-widget-content ui-corner-bottom ui-accordion-content-active\" id=\"ui-accordion-accordion-panel-6\" aria-labelledby=\"ui-accordion-accordion-header-6\" role=\"tabpanel\" aria-expanded=\"true\" aria-hidden=\"false\" style=\"display: block;\">\n        <h4>问：我无法传送讯息。</h4>\n        <p>答：(女会员) 你必须提交身份证明文件副本以证明阁下为十八岁或以上，才可于平台上传送讯息。请于登入时于「<a href=\"photocontract.html\" target=\"_blank\" rel=\"noopener noreferrer\">年龄核证</a>」查看更多资料。</p>\n        <p>答：(男会员) 免费会员没法传送讯息，请先登记付费计划。如你已注册成付费会员仍未能使用传讯功能，<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">请联络我们</a>。</p>\n        <h4>问：我登记后仍未收到确认电邮。</h4>\n        <p>答：请检查阁下电邮设定及垃圾邮件；若你仍未能找到，<a href=\";\" target=\"_blank\" rel=\"noopener noreferrer\">请联络我们</a>。</p>\n        <h4>问：查问其他会员以取得其准许查看秘密图片是否免费？</h4>\n        <p>答：是的，你可以免费对此作出询问并查看对方照片</p>\n        <h4>问：我收到一个关于查我我的秘密照片的请求，我该如何应对？</h4>\n        <p>答：只有得到你的许可的会员才可看到你的秘密照片，而是否批许完全取决于阁下的个人意愿。</p>\n        <h4>问：我该如何提交我的身份证明文件？ (女会员)</h4>\n        <p>答：登入后，请于左上角的「<a href=\"photocontract.html\" target=\"_blank\" rel=\"noopener noreferrer\">身份核证</a>」提交资料。</p>\n      </div>\n    </div>', '常见问题', '', 'inherit', 'closed', 'closed', '', '351-revision-v1', '', '', '2020-02-22 00:51:28', '2020-02-21 16:51:28', '', 351, 'http://localhost/twodayssss/index.php/2020/02/22/351-revision-v1/', 0, 'revision', '', 0),
(354, 1, '2020-02-22 00:51:38', '2020-02-21 16:51:38', '<h2 style=\"text-align: center;\">在 两天网，你可以：</h2>\n<div class=\"row\">\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-left\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic201.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-330\" /></figure>\n            <h3 class=\"reg text-secondary\">找到经济条件吸引的男士</h3>\n            <p class=\"h4 text-justify\">此平台的之男会员入会费定价刻意高于其他同类网站，由此将有更高机会让您在此找到高收入男士。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic202.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-331\" /></figure>\n            <h3 class=\"reg text-secondary\">达成理想</h3>\n            <p class=\"h4 text-justify\">这里的男会员均具有一定的社会地位及丰富的生活经验，能助您达成愿望及理想。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-left\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic203.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-332\" /></figure>\n            <h3 class=\"reg text-secondary\">连系到世界各地的男士</h3>\n            <p class=\"h4 text-justify\">会员可从世界各地登记注册，因此您有可能走出国际。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic204.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-333\" /></figure>\n            <h3 class=\"reg text-secondary\">享用自动翻译服务</h3>\n            <p class=\"h4 text-justify\">通过我们网页发送的讯息将自动翻译为另一方使用的语言。网页目前的翻译功能支援英语，中文，日语，和俄语。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-left\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic205.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-334\" /></figure>\n            <h3 class=\"reg text-secondary\">交换只属于您和对方之间的私密讯息</h3>\n            <p class=\"h4 text-justify\">这里并没有制定任何关于约会的规则，你亦可与对方秘密地沟通而无需向网站平台职员交代。我们绝不会对此作出阻挠。</p>\n          </div>\n        </div>\n        <div class=\"col-md-6 mb-8\">\n          <div class=\"cell-right\">\n            <figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic206-1.jpg\" alt=\"\" width=\"540\" height=\"360\" class=\"alignnone size-full wp-image-335\" /></figure>\n            <h3 class=\"reg text-secondary\">感到安心</h3>\n            <p class=\"h4 text-justify\">您可先与对方沟通至认为已对其具充份了解，再自行决定是否与对方会面或交换联络方法。这完全取决于阁下个人取向及意愿。</p>\n          </div>\n        </div>\n     </div>', '女士网頁须知', '', 'inherit', 'closed', 'closed', '', '327-revision-v1', '', '', '2020-02-22 00:51:38', '2020-02-21 16:51:38', '', 327, 'http://localhost/twodayssss/index.php/2020/02/22/327-revision-v1/', 0, 'revision', '', 0),
(355, 1, '2020-02-22 00:51:52', '2020-02-21 16:51:52', '<article class=\"content-box\">\n<div class=\"row\">\n<div class=\"col-md-6 mb-8\">\n<ul class=\"reviewer\">\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic011.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-302\" /></li>\n<li>来自日本东京的 <span class=\"d-block\">Ken, 47 岁, 资讯科技公司行政人员</span></li>\n</ul>\n<blockquote>我过去曾经使用过各种各样的交友网站和手机应用程式，但 <strong>两天网</strong> 是我目前使用过最快能让我遇到合适的对像的交友平台。其他交友服务总是令我怀疑自己能真正跟心仪女生约会的可能性，但在这里我能与条件吻合的女生有良好的关系发展。在过去的三个月，我在这里遇上五个合乎要求的女生，而且很快便跟其中二位有稳定约会关系。这平台对于我这类没有结婚打算却又享受交往感觉的男人是最适合不过的了。\n</blockquote>\n</div>\n<div class=\"col-md-6 mb-8\">\n<ul class=\"reviewer lady\">\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic012.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-304\" /></li>\n<li>来自日本横滨的 <span class=\"d-block\">Rina, 25 岁, 文员</span></li>\n</ul>\n<blockquote>\n这是我头一趟使用这类交友约会平台。起初我非常担心，脑海经常出现负面的想法，如：我会否收到一些奇怪的要求，或会否遇上对我不利的会员？如遇上这些事情我该怎么办？我需要礼貌答覆吗等等 … … 但最后我还是做到了， 而且这些疑虑也很快随之烟消云散！我遇到的每个会员都很有绅士风度，与他们聊天总是充满趣味；而跟数个会员交谈后，我幸运地遇上现任男友。他出差时总会跟我联系。虽然在大多数约会，我们都是在高级餐厅享用晚餐后直接前往酒店，但我们都很享受彼此赖在一起的时光。每次他公干后回去，我都好想念他呢 … \n</blockquote>\n</div>\n<div class=\"col-md-6 mb-8\">\n<ul class=\"reviewer\">\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic013.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-305\" /></li>\n<li>来自香港的 <span class=\"d-block\">Alex, 36 岁, 投资银行家</span></li>\n</ul>\n<blockquote>\n我经常到日本出差，由于想在老婆不在身边时找个日本女生一起外出，于是找上了这个网站平台。在很多女会员当中，我选了22岁，刚从大学毕业的她。我同一天 便收到她的回覆，并开始聊天和约定见面日期等细节。我平常都是以中和和英文沟通，日文实在不行，因此见面前曾担心过没法沟通这问题;而讯息沟通则因为网站有翻译功能而没有很大的问题。两周后我们相约在东京见面，尽管大家的英语和日文水平都很烂，但还是过得很愉快！我肯定会再使用这平台服务！\n</blockquote>\n</div>\n<div class=\"col-md-6 mb-8\">\n<ul class=\"reviewer lady\">\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic014.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-306\" /></li>\n<li>日本在住（広島県）<span class=\"d-block\">Nami 21歳　接客業</span></li>\n</ul>\n<blockquote>\n我在餐厅工作，一直不乏男性追求，但每当我和他们发展成情侣后，往往会感到失望。后来我经朋友介绍认识到这个网站，其实起初也很犹豫，但最后还是注册了，而且有点惊喜地发现这里的男会员都很有风度喔！除了总是耐心地倾听我的疑难外，还给了我很多建议，而且对我十分慷慨。最近我正与一位神户的进口商交往，看来我一直以来在英国读书的梦想，在他的支持下将会实现。\n</blockquote>\n</div>\n<div class=\"col-md-6 mb-8\">\n<ul class=\"reviewer\">\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic015.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-307\" /></li>\n<li>来自日本兵库县的<span class=\"d-block\">Sho, 40 岁, 企业家</span></li>\n</ul>\n<blockquote>\n我大概是一个罕见的案例：我在这里遇到了我现在的老婆，并在上个月结婚。我一直专注营运自己的事业，根本没有机会认识其他异性；我也曾参加过数次单身派对，却遇不到能吸引自己的人；而吸引到我的女生，却最后总是选择了其他男人，让我什至怀疑派对中的参加者大多数是外聘回来滥于充数的。在经历过这些不愉快体验后，我决定放任自己并随便在这平台上找些女生寻开心算了；然而我却在她们当中遇到让我想照顾一生一世的女生，我生命中的另一半。\n</blockquote>\n</div>\n<div class=\"col-md-6 mb-8\">\n<ul class=\"reviewer lady\">\n<li><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic016.png\" alt=\"\" width=\"190\" height=\"190\" class=\"alignnone size-full wp-image-308\" /></li>\n<li>來自日本大阪的<span class=\"d-block\">Yuki, 20 歲, 店員</span></li>\n</ul>\n<blockquote>\n说实话，我来这里纯粹是为了得到经济上的支持。我曾使用过其他约会平台，然而大多数的男人只想与我有肉体关系；这个网站平台上却每个会员都很有善，而且非常富有！有一位香港的男会员还想送一辆车给我作为礼物呢！但因为这只是我们第一次约会，所以我并没有接受。尽管如此，这事完全没有影响我们之间的关系，而且他仍然会在到来时找我喔！下次也许我就会接受他的好意噜！\n</blockquote>\n</div>\n<div class=\"col-md-6 mb-8\">\n<figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic021.jpg\" alt=\"\" width=\"520\" height=\"200\" class=\"alignnone size-full wp-image-312\" /></figure>\n<p class=\"text-justify\">如果阁下希望与心目中的理想女生约会，或者想找个能在公干中伴你度过美好时光的另一半，两天网可替阁下找到最佳配偶。</p>\n<p class=\"text-center\"><a href=\"/forman\" class=\"btn btn-primary\">对于绅士们</a></p>\n</div>\n<div class=\"col-md-6 mb-8\">\n<figure class=\"pic\"><img src=\"https://twodayssss.com/wp-content/uploads/2020/01/pic022.jpg\" alt=\"\" width=\"520\" height=\"200\" class=\"alignnone size-full wp-image-313\" /></figure>\n<p class=\"\">如果阁下想找个具经济能力的绅士，或能让您实现梦想的人作伴侣，两天网可替阁下找到最佳配偶。</p>\n<p class=\"text-center\"><a href=\"/forwoman\" class=\"btn btn-secondary\">对于女士们</a></p>\n</div>\n</article>', '会员体验分享', '', 'inherit', 'closed', 'closed', '', '300-revision-v1', '', '', '2020-02-22 00:51:52', '2020-02-21 16:51:52', '', 300, 'http://localhost/twodayssss/index.php/2020/02/22/300-revision-v1/', 0, 'revision', '', 0),
(356, 1, '2020-02-22 00:53:15', '2020-02-21 16:53:15', '{\n    \"twodayssss::custom_logo\": {\n        \"value\": 15,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:53:15\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '019f7994-6c93-45e1-9f86-0e1df07ecd97', '', '', '2020-02-22 00:53:15', '2020-02-21 16:53:15', '', 0, 'http://localhost/twodayssss/index.php/2020/02/22/019f7994-6c93-45e1-9f86-0e1df07ecd97/', 0, 'customize_changeset', '', 0),
(438, 1, '2020-02-22 00:56:19', '2020-02-21 16:56:19', '{\n    \"show_on_front\": {\n        \"value\": \"posts\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-02-21 16:56:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '7696ab10-8705-4089-8abb-f05b3e6db13b', '', '', '2020-02-22 00:56:19', '2020-02-21 16:56:19', '', 0, 'http://localhost/twodayssss/?p=438', 0, 'customize_changeset', '', 0);
INSERT INTO `td_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(281, 1, '2020-01-21 18:39:02', '2020-01-21 10:39:02', '我来自马来西亚，华裔，希望在两天网跟大家交流', '小蜜桃', '', 'publish', 'closed', 'closed', '', '281', '', '', '2020-02-22 01:14:47', '2020-02-21 17:14:47', '', 0, 'https://twodayssss.com/?p=281', 0, 'post', '', 0),
(386, 1, '2020-02-01 21:06:49', '2020-02-01 13:06:49', 'hi！我来自阿拉斯加!在两天网享受周末美好的假期吧，期待你的联系。', 'Amanda', '', 'publish', 'closed', 'closed', '', 'amanda', '', '', '2020-02-22 01:15:05', '2020-02-21 17:15:05', '', 0, 'https://twodayssss.com/?p=386', 0, 'post', '', 0),
(394, 1, '2020-02-02 03:29:06', '2020-02-01 19:29:06', 'hi，我是hr职员，经常在哥伦比亚出差，希望跟心仪的帅哥度过烂漫的周末，在两天网等你加入！', 'Aimee', '', 'publish', 'open', 'open', '', 'aimee', '', '', '2020-02-22 01:15:42', '2020-02-21 17:15:42', '', 0, 'https://twodayssss.com/?p=394', 0, 'post', '', 0),
(405, 1, '2020-02-02 03:34:49', '2020-02-01 19:34:49', 'hi，我是GIGI！我的爱好是逛街和shopping，看电影！\r\n', 'GIGI', '', 'publish', 'open', 'open', '', 'gigi', '', '', '2020-02-22 01:16:01', '2020-02-21 17:16:01', '', 0, 'https://twodayssss.com/?p=405', 0, 'post', '', 0),
(407, 1, '2020-02-02 03:42:54', '2020-02-01 19:42:54', 'hi，我是Alexa，来聊天吧！', 'Alexa', '', 'publish', 'open', 'open', '', 'alexa', '', '', '2020-02-22 01:16:20', '2020-02-21 17:16:20', '', 0, 'https://twodayssss.com/?p=407', 0, 'post', '', 0),
(411, 1, '2020-02-02 03:44:35', '2020-02-01 19:44:35', 'hi，我是Arianna！在两天网等你哟！', 'Arianna', '', 'publish', 'open', 'open', '', 'arianna', '', '', '2020-02-22 01:16:53', '2020-02-21 17:16:53', '', 0, 'https://twodayssss.com/?p=411', 0, 'post', '', 0),
(413, 1, '2020-02-02 03:46:53', '2020-02-01 19:46:53', 'hi，我是Ella！', 'Ella', '', 'publish', 'open', 'open', '', 'ella', '', '', '2020-02-22 01:17:25', '2020-02-21 17:17:25', '', 0, 'https://twodayssss.com/?p=413', 0, 'post', '', 0),
(416, 1, '2020-02-02 03:52:30', '2020-02-01 19:52:30', 'hi,我是Andrea！这个周末约我吗？', 'Andrea', '', 'publish', 'open', 'open', '', 'andrea', '', '', '2020-02-22 01:17:47', '2020-02-21 17:17:47', '', 0, 'https://twodayssss.com/?p=416', 0, 'post', '', 0),
(431, 1, '2020-02-02 04:27:24', '2020-02-01 20:27:24', 'hi,你好！我是DAISY', 'DAISY', '', 'publish', 'open', 'open', '', 'daisy', '', '', '2020-02-22 01:18:16', '2020-02-21 17:18:16', '', 0, 'https://twodayssss.com/?p=431', 0, 'post', '', 0),
(433, 1, '2020-02-02 04:30:43', '2020-02-01 20:30:43', 'hi，我是天使Angel', 'Angel', '', 'publish', 'open', 'open', '', 'angel', '', '', '2020-02-22 01:18:33', '2020-02-21 17:18:33', '', 0, 'https://twodayssss.com/?p=433', 0, 'post', '', 0),
(436, 1, '2020-02-02 04:34:16', '2020-02-01 20:34:16', 'hi,我是Candy！', 'Candy', '', 'publish', 'closed', 'closed', '', 'candy', '', '', '2020-02-22 01:37:40', '2020-02-21 17:37:40', '', 0, 'https://twodayssss.com/?p=436', 0, 'post', '', 0),
(441, 1, '2020-02-22 00:59:30', '2020-02-21 16:59:30', '<!-- wp:paragraph {\"align\":\"left\"} -->\n<p class=\"has-text-align-left\">Let\'s talk 👋 Don\'t hesitate to reach out with the contact information below, or send a message using the form. 如果你有意向加入我们，欢迎联系，让我们谈谈，碰撞出思想的火花！</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:spacer {\"height\":32,\"className\":\"desktop-only\"} -->\n<div style=\"height:32px\" aria-hidden=\"true\" class=\"wp-block-spacer desktop-only\"></div>\n<!-- /wp:spacer -->\n\n<!-- wp:columns {\"align\":\"wide\",\"className\":\"has-2-columns\"} -->\n<div class=\"wp-block-columns alignwide has-2-columns\"><!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Get in Touch</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-info -->\n<div class=\"wp-block-jetpack-contact-info\"><!-- wp:jetpack/address {\"address\":\"10 Street Road\",\"city\":\"City\",\"postal\":\"10100\",\"country\":\"USA\"} -->\n<div class=\"wp-block-jetpack-address\"><div class=\"jetpack-address__address jetpack-address__address1\">10 Street Road</div><div><span class=\"jetpack-address__city\">City</span>, <span class=\"jetpack-address__region\"></span> <span class=\"jetpack-address__postal\">10100</span></div><div class=\"jetpack-address__country\">USA</div></div>\n<!-- /wp:jetpack/address -->\n\n<!-- wp:jetpack/email {\"email\":\"Twodayssss@gmail.com\"} -->\n<div class=\"wp-block-jetpack-email\"><a href=\"mailto:Twodayssss@gmail.com\">Twodayssss@gmail.com</a></div>\n<!-- /wp:jetpack/email -->\n\n<!-- wp:jetpack/phone {\"phone\":\"(857）2108280\"} -->\n<div class=\"wp-block-jetpack-phone\"><a href=\"tel:8572108280\">(857）2108280</a></div>\n<!-- /wp:jetpack/phone --></div>\n<!-- /wp:jetpack/contact-info -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph --></div>\n<!-- /wp:column -->\n\n<!-- wp:column -->\n<div class=\"wp-block-column\"><!-- wp:heading {\"align\":\"left\"} -->\n<h2 class=\"has-text-align-left\">Send Us a Message</h2>\n<!-- /wp:heading -->\n\n<!-- wp:jetpack/contact-form -->\n<!-- wp:jetpack/field-name {\"required\":true} /-->\n\n<!-- wp:jetpack/field-email {\"label\":\"Email\",\"required\":true} /-->\n\n<!-- wp:jetpack/field-url /-->\n\n<!-- wp:jetpack/field-textarea {\"required\":true} /-->\n<!-- /wp:jetpack/contact-form --></div>\n<!-- /wp:column --></div>\n<!-- /wp:columns -->', 'Contact联系我们！', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2020-02-22 00:59:30', '2020-02-21 16:59:30', '', 82, 'http://localhost/twodayssss/?p=441', 0, 'revision', '', 0),
(442, 1, '2020-02-22 01:02:27', '2020-02-21 17:02:27', ' ', '', '', 'publish', 'closed', 'closed', '', '442', '', '', '2020-02-22 01:02:27', '2020-02-21 17:02:27', '', 0, 'http://localhost/twodayssss/?p=442', 2, 'nav_menu_item', '', 0),
(443, 1, '2020-02-22 01:02:27', '2020-02-21 17:02:27', ' ', '', '', 'publish', 'closed', 'closed', '', '443', '', '', '2020-02-22 01:02:27', '2020-02-21 17:02:27', '', 0, 'http://localhost/twodayssss/?p=443', 1, 'nav_menu_item', '', 0),
(444, 1, '2020-02-22 01:02:27', '2020-02-21 17:02:27', ' ', '', '', 'publish', 'closed', 'closed', '', '444', '', '', '2020-02-22 01:02:27', '2020-02-21 17:02:27', '', 0, 'http://localhost/twodayssss/?p=444', 3, 'nav_menu_item', '', 0),
(445, 1, '2020-02-22 01:06:31', '2020-02-21 17:06:31', '', '20202020201', '', 'inherit', 'open', 'closed', '', '20202020201', '', '', '2020-02-22 01:06:31', '2020-02-21 17:06:31', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020201-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(446, 1, '2020-02-22 01:06:32', '2020-02-21 17:06:32', '', '20202020202', '', 'inherit', 'open', 'closed', '', '20202020202', '', '', '2020-02-22 01:06:32', '2020-02-21 17:06:32', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020202-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(447, 1, '2020-02-22 01:06:32', '2020-02-21 17:06:32', '', '20202020203', '', 'inherit', 'open', 'closed', '', '20202020203', '', '', '2020-02-22 01:06:32', '2020-02-21 17:06:32', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020203-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(448, 1, '2020-02-22 01:06:32', '2020-02-21 17:06:32', '', '20202020204', '', 'inherit', 'open', 'closed', '', '20202020204', '', '', '2020-02-22 01:06:32', '2020-02-21 17:06:32', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020204-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(449, 1, '2020-02-22 01:06:33', '2020-02-21 17:06:33', '', '20202020205', '', 'inherit', 'open', 'closed', '', '20202020205', '', '', '2020-02-22 01:06:33', '2020-02-21 17:06:33', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020205-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(450, 1, '2020-02-22 01:06:33', '2020-02-21 17:06:33', '', '20202020206', '', 'inherit', 'open', 'closed', '', '20202020206', '', '', '2020-02-22 01:06:33', '2020-02-21 17:06:33', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020206-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(451, 1, '2020-02-22 01:06:34', '2020-02-21 17:06:34', '', '20202020207', '', 'inherit', 'open', 'closed', '', '20202020207', '', '', '2020-02-22 01:06:34', '2020-02-21 17:06:34', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020207-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(452, 1, '2020-02-22 01:06:35', '2020-02-21 17:06:35', '', '20202020208', '', 'inherit', 'open', 'closed', '', '20202020208', '', '', '2020-02-22 01:06:35', '2020-02-21 17:06:35', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020208-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(453, 1, '2020-02-22 01:06:35', '2020-02-21 17:06:35', '', '20202020209', '', 'inherit', 'open', 'closed', '', '20202020209', '', '', '2020-02-22 01:06:35', '2020-02-21 17:06:35', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/20202020209-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(454, 1, '2020-02-22 01:06:36', '2020-02-21 17:06:36', '', '202020202010', '', 'inherit', 'open', 'closed', '', '202020202010', '', '', '2020-02-22 01:06:36', '2020-02-21 17:06:36', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/202020202010-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(455, 1, '2020-02-22 01:06:36', '2020-02-21 17:06:36', '', '202020202011', '', 'inherit', 'open', 'closed', '', '202020202011', '', '', '2020-02-22 01:06:36', '2020-02-21 17:06:36', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/202020202011-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(456, 1, '2020-02-22 01:06:37', '2020-02-21 17:06:37', '', '202020202012', '', 'inherit', 'open', 'closed', '', '202020202012', '', '', '2020-02-22 01:06:37', '2020-02-21 17:06:37', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/202020202012-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(457, 1, '2020-02-22 01:06:37', '2020-02-21 17:06:37', '', '202020202013', '', 'inherit', 'open', 'closed', '', '202020202013', '', '', '2020-02-22 01:06:37', '2020-02-21 17:06:37', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/202020202013-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(458, 1, '2020-02-22 01:07:48', '2020-02-21 17:07:48', '', 'bg', '', 'inherit', 'open', 'closed', '', 'bg', '', '', '2020-02-22 01:07:48', '2020-02-21 17:07:48', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/bg-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(459, 1, '2020-02-22 01:07:48', '2020-02-21 17:07:48', '', 'forman', '', 'inherit', 'open', 'closed', '', 'forman-2', '', '', '2020-02-22 01:07:48', '2020-02-21 17:07:48', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/forman-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(460, 1, '2020-02-22 01:07:49', '2020-02-21 17:07:49', '', 'forwoman', '', 'inherit', 'open', 'closed', '', 'forwoman-2', '', '', '2020-02-22 01:07:49', '2020-02-21 17:07:49', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/forwoman-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(461, 1, '2020-02-22 01:07:49', '2020-02-21 17:07:49', '', 'pic105', '', 'inherit', 'open', 'closed', '', 'pic105', '', '', '2020-02-22 01:07:49', '2020-02-21 17:07:49', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic105.png', 0, 'attachment', 'image/png', 0),
(462, 1, '2020-02-22 01:07:50', '2020-02-21 17:07:50', '', 'testimonials', '', 'inherit', 'open', 'closed', '', 'testimonials-2', '', '', '2020-02-22 01:07:50', '2020-02-21 17:07:50', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/testimonials.jpg', 0, 'attachment', 'image/jpeg', 0),
(463, 1, '2020-02-22 01:08:44', '2020-02-21 17:08:44', '', 'pic103', '', 'inherit', 'open', 'closed', '', 'pic103', '', '', '2020-02-22 01:08:44', '2020-02-21 17:08:44', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic103.jpg', 0, 'attachment', 'image/jpeg', 0),
(464, 1, '2020-02-22 01:08:44', '2020-02-21 17:08:44', '', 'pic104', '', 'inherit', 'open', 'closed', '', 'pic104', '', '', '2020-02-22 01:08:44', '2020-02-21 17:08:44', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic104.jpg', 0, 'attachment', 'image/jpeg', 0),
(465, 1, '2020-02-22 01:08:45', '2020-02-21 17:08:45', '', 'pic201', '', 'inherit', 'open', 'closed', '', 'pic201', '', '', '2020-02-22 01:08:45', '2020-02-21 17:08:45', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic201.jpg', 0, 'attachment', 'image/jpeg', 0),
(466, 1, '2020-02-22 01:08:45', '2020-02-21 17:08:45', '', 'pic202', '', 'inherit', 'open', 'closed', '', 'pic202', '', '', '2020-02-22 01:08:45', '2020-02-21 17:08:45', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic202.jpg', 0, 'attachment', 'image/jpeg', 0),
(467, 1, '2020-02-22 01:08:46', '2020-02-21 17:08:46', '', 'pic203', '', 'inherit', 'open', 'closed', '', 'pic203', '', '', '2020-02-22 01:08:46', '2020-02-21 17:08:46', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic203.jpg', 0, 'attachment', 'image/jpeg', 0),
(468, 1, '2020-02-22 01:08:46', '2020-02-21 17:08:46', '', 'pic204', '', 'inherit', 'open', 'closed', '', 'pic204', '', '', '2020-02-22 01:08:46', '2020-02-21 17:08:46', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic204.jpg', 0, 'attachment', 'image/jpeg', 0),
(469, 1, '2020-02-22 01:08:46', '2020-02-21 17:08:46', '', 'pic205', '', 'inherit', 'open', 'closed', '', 'pic205', '', '', '2020-02-22 01:08:46', '2020-02-21 17:08:46', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic205.jpg', 0, 'attachment', 'image/jpeg', 0),
(470, 1, '2020-02-22 01:08:47', '2020-02-21 17:08:47', '', 'pic206', '', 'inherit', 'open', 'closed', '', 'pic206', '', '', '2020-02-22 01:08:47', '2020-02-21 17:08:47', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/pic206.jpg', 0, 'attachment', 'image/jpeg', 0),
(471, 1, '2020-02-22 01:09:37', '2020-02-21 17:09:37', '', 'blur', '', 'inherit', 'open', 'closed', '', 'blur', '', '', '2020-02-22 01:09:37', '2020-02-21 17:09:37', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur.jpg', 0, 'attachment', 'image/jpeg', 0),
(472, 1, '2020-02-22 01:09:38', '2020-02-21 17:09:38', '', 'blur1', '', 'inherit', 'open', 'closed', '', 'blur1', '', '', '2020-02-22 01:09:38', '2020-02-21 17:09:38', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur1.jpg', 0, 'attachment', 'image/jpeg', 0),
(473, 1, '2020-02-22 01:09:38', '2020-02-21 17:09:38', '', 'blur2', '', 'inherit', 'open', 'closed', '', 'blur2', '', '', '2020-02-22 01:09:38', '2020-02-21 17:09:38', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur2.jpg', 0, 'attachment', 'image/jpeg', 0),
(474, 1, '2020-02-22 01:09:38', '2020-02-21 17:09:38', '', 'blur3', '', 'inherit', 'open', 'closed', '', 'blur3', '', '', '2020-02-22 01:09:38', '2020-02-21 17:09:38', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur3.jpg', 0, 'attachment', 'image/jpeg', 0),
(475, 1, '2020-02-22 01:09:39', '2020-02-21 17:09:39', '', 'blur4', '', 'inherit', 'open', 'closed', '', 'blur4', '', '', '2020-02-22 01:09:39', '2020-02-21 17:09:39', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur4.jpg', 0, 'attachment', 'image/jpeg', 0),
(476, 1, '2020-02-22 01:09:39', '2020-02-21 17:09:39', '', 'blur5', '', 'inherit', 'open', 'closed', '', 'blur5', '', '', '2020-02-22 01:09:39', '2020-02-21 17:09:39', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur5.jpg', 0, 'attachment', 'image/jpeg', 0),
(477, 1, '2020-02-22 01:09:39', '2020-02-21 17:09:39', '', 'blur6', '', 'inherit', 'open', 'closed', '', 'blur6', '', '', '2020-02-22 01:09:39', '2020-02-21 17:09:39', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur6.jpg', 0, 'attachment', 'image/jpeg', 0),
(478, 1, '2020-02-22 01:09:44', '2020-02-21 17:09:44', '', 'blur7', '', 'inherit', 'open', 'closed', '', 'blur7', '', '', '2020-02-22 01:09:44', '2020-02-21 17:09:44', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur7.jpg', 0, 'attachment', 'image/jpeg', 0),
(479, 1, '2020-02-22 01:09:44', '2020-02-21 17:09:44', '', 'blur8', '', 'inherit', 'open', 'closed', '', 'blur8', '', '', '2020-02-22 01:09:44', '2020-02-21 17:09:44', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur8.jpg', 0, 'attachment', 'image/jpeg', 0),
(480, 1, '2020-02-22 01:09:45', '2020-02-21 17:09:45', '', 'blur9', '', 'inherit', 'open', 'closed', '', 'blur9', '', '', '2020-02-22 01:09:45', '2020-02-21 17:09:45', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur9.jpg', 0, 'attachment', 'image/jpeg', 0),
(481, 1, '2020-02-22 01:09:45', '2020-02-21 17:09:45', '', 'blur10', '', 'inherit', 'open', 'closed', '', 'blur10', '', '', '2020-02-22 01:09:45', '2020-02-21 17:09:45', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur10.jpg', 0, 'attachment', 'image/jpeg', 0),
(482, 1, '2020-02-22 01:09:45', '2020-02-21 17:09:45', '', 'blur11', '', 'inherit', 'open', 'closed', '', 'blur11', '', '', '2020-02-22 01:09:45', '2020-02-21 17:09:45', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur11.jpg', 0, 'attachment', 'image/jpeg', 0),
(483, 1, '2020-02-22 01:09:46', '2020-02-21 17:09:46', '', 'blur12', '', 'inherit', 'open', 'closed', '', 'blur12', '', '', '2020-02-22 01:09:46', '2020-02-21 17:09:46', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur12.jpg', 0, 'attachment', 'image/jpeg', 0),
(484, 1, '2020-02-22 01:09:46', '2020-02-21 17:09:46', '', 'blur13', '', 'inherit', 'open', 'closed', '', 'blur13', '', '', '2020-02-22 01:09:46', '2020-02-21 17:09:46', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur13.jpg', 0, 'attachment', 'image/jpeg', 0),
(485, 1, '2020-02-22 01:09:54', '2020-02-21 17:09:54', '', 'blur14', '', 'inherit', 'open', 'closed', '', 'blur14', '', '', '2020-02-22 01:09:54', '2020-02-21 17:09:54', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur14.jpg', 0, 'attachment', 'image/jpeg', 0),
(486, 1, '2020-02-22 01:09:55', '2020-02-21 17:09:55', '', 'blur15', '', 'inherit', 'open', 'closed', '', 'blur15', '', '', '2020-02-22 01:09:55', '2020-02-21 17:09:55', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur15.jpg', 0, 'attachment', 'image/jpeg', 0),
(487, 1, '2020-02-22 01:09:55', '2020-02-21 17:09:55', '', 'blur16', '', 'inherit', 'open', 'closed', '', 'blur16', '', '', '2020-02-22 01:09:55', '2020-02-21 17:09:55', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur16.jpg', 0, 'attachment', 'image/jpeg', 0),
(488, 1, '2020-02-22 01:09:55', '2020-02-21 17:09:55', '', 'blur17', '', 'inherit', 'open', 'closed', '', 'blur17', '', '', '2020-02-22 01:09:55', '2020-02-21 17:09:55', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur17.jpg', 0, 'attachment', 'image/jpeg', 0),
(489, 1, '2020-02-22 01:09:56', '2020-02-21 17:09:56', '', 'blur18', '', 'inherit', 'open', 'closed', '', 'blur18', '', '', '2020-02-22 01:09:56', '2020-02-21 17:09:56', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur18.jpg', 0, 'attachment', 'image/jpeg', 0),
(490, 1, '2020-02-22 01:09:56', '2020-02-21 17:09:56', '', 'blur19', '', 'inherit', 'open', 'closed', '', 'blur19', '', '', '2020-02-22 01:09:56', '2020-02-21 17:09:56', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur19.jpg', 0, 'attachment', 'image/jpeg', 0),
(491, 1, '2020-02-22 01:09:56', '2020-02-21 17:09:56', '', 'blur20', '', 'inherit', 'open', 'closed', '', 'blur20', '', '', '2020-02-22 01:09:56', '2020-02-21 17:09:56', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur20.jpg', 0, 'attachment', 'image/jpeg', 0),
(492, 1, '2020-02-22 01:10:13', '2020-02-21 17:10:13', '', 'blur21', '', 'inherit', 'open', 'closed', '', 'blur21', '', '', '2020-02-22 01:10:13', '2020-02-21 17:10:13', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur21.jpg', 0, 'attachment', 'image/jpeg', 0),
(493, 1, '2020-02-22 01:10:13', '2020-02-21 17:10:13', '', 'blur22', '', 'inherit', 'open', 'closed', '', 'blur22', '', '', '2020-02-22 01:10:13', '2020-02-21 17:10:13', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur22.jpg', 0, 'attachment', 'image/jpeg', 0),
(494, 1, '2020-02-22 01:10:13', '2020-02-21 17:10:13', '', 'blur23', '', 'inherit', 'open', 'closed', '', 'blur23', '', '', '2020-02-22 01:10:13', '2020-02-21 17:10:13', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur23.jpg', 0, 'attachment', 'image/jpeg', 0),
(495, 1, '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 'blur24', '', 'inherit', 'open', 'closed', '', 'blur24', '', '', '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur24.jpg', 0, 'attachment', 'image/jpeg', 0),
(496, 1, '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 'blur25', '', 'inherit', 'open', 'closed', '', 'blur25', '', '', '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur25.jpg', 0, 'attachment', 'image/jpeg', 0),
(497, 1, '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 'blur26', '', 'inherit', 'open', 'closed', '', 'blur26', '', '', '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur26.jpg', 0, 'attachment', 'image/jpeg', 0),
(498, 1, '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 'blur27', '', 'inherit', 'open', 'closed', '', 'blur27', '', '', '2020-02-22 01:10:14', '2020-02-21 17:10:14', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur27.jpg', 0, 'attachment', 'image/jpeg', 0),
(499, 1, '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 'blur28', '', 'inherit', 'open', 'closed', '', 'blur28', '', '', '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur28.jpg', 0, 'attachment', 'image/jpeg', 0),
(500, 1, '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 'blur29', '', 'inherit', 'open', 'closed', '', 'blur29', '', '', '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur29.jpg', 0, 'attachment', 'image/jpeg', 0),
(501, 1, '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 'blur30', '', 'inherit', 'open', 'closed', '', 'blur30', '', '', '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur30.jpg', 0, 'attachment', 'image/jpeg', 0),
(502, 1, '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 'blur31', '', 'inherit', 'open', 'closed', '', 'blur31', '', '', '2020-02-22 01:10:33', '2020-02-21 17:10:33', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur31.jpg', 0, 'attachment', 'image/jpeg', 0),
(503, 1, '2020-02-22 01:10:34', '2020-02-21 17:10:34', '', 'blur32', '', 'inherit', 'open', 'closed', '', 'blur32', '', '', '2020-02-22 01:10:34', '2020-02-21 17:10:34', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur32.jpg', 0, 'attachment', 'image/jpeg', 0),
(504, 1, '2020-02-22 01:10:34', '2020-02-21 17:10:34', '', 'blur33', '', 'inherit', 'open', 'closed', '', 'blur33', '', '', '2020-02-22 01:10:34', '2020-02-21 17:10:34', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur33.jpg', 0, 'attachment', 'image/jpeg', 0),
(505, 1, '2020-02-22 01:10:34', '2020-02-21 17:10:34', '', 'blur34', '', 'inherit', 'open', 'closed', '', 'blur34', '', '', '2020-02-22 01:10:34', '2020-02-21 17:10:34', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur34.jpg', 0, 'attachment', 'image/jpeg', 0),
(506, 1, '2020-02-22 01:10:35', '2020-02-21 17:10:35', '', 'blur35', '', 'inherit', 'open', 'closed', '', 'blur35', '', '', '2020-02-22 01:10:35', '2020-02-21 17:10:35', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur35.jpg', 0, 'attachment', 'image/jpeg', 0),
(507, 1, '2020-02-22 01:10:35', '2020-02-21 17:10:35', '', 'blur36', '', 'inherit', 'open', 'closed', '', 'blur36', '', '', '2020-02-22 01:10:35', '2020-02-21 17:10:35', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur36.jpg', 0, 'attachment', 'image/jpeg', 0),
(508, 1, '2020-02-22 01:10:35', '2020-02-21 17:10:35', '', 'blur37', '', 'inherit', 'open', 'closed', '', 'blur37', '', '', '2020-02-22 01:10:35', '2020-02-21 17:10:35', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur37.jpg', 0, 'attachment', 'image/jpeg', 0),
(509, 1, '2020-02-22 01:10:36', '2020-02-21 17:10:36', '', 'blur38', '', 'inherit', 'open', 'closed', '', 'blur38', '', '', '2020-02-22 01:10:36', '2020-02-21 17:10:36', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/blur38.jpg', 0, 'attachment', 'image/jpeg', 0),
(510, 1, '2020-02-22 01:11:10', '2020-02-21 17:11:10', '我来自马来西亚，华裔，希望在两天网跟大家交流', '小蜜桃', '', 'inherit', 'closed', 'closed', '', '281-revision-v1', '', '', '2020-02-22 01:11:10', '2020-02-21 17:11:10', '', 281, 'http://localhost/twodayssss/?p=510', 0, 'revision', '', 0),
(511, 1, '2020-02-22 01:15:05', '2020-02-21 17:15:05', 'hi！我来自阿拉斯加!在两天网享受周末美好的假期吧，期待你的联系。', 'Amanda', '', 'inherit', 'closed', 'closed', '', '386-revision-v1', '', '', '2020-02-22 01:15:05', '2020-02-21 17:15:05', '', 386, 'http://localhost/twodayssss/?p=511', 0, 'revision', '', 0),
(512, 1, '2020-02-22 01:15:42', '2020-02-21 17:15:42', 'hi，我是hr职员，经常在哥伦比亚出差，希望跟心仪的帅哥度过烂漫的周末，在两天网等你加入！', 'Aimee', '', 'inherit', 'closed', 'closed', '', '394-revision-v1', '', '', '2020-02-22 01:15:42', '2020-02-21 17:15:42', '', 394, 'http://localhost/twodayssss/?p=512', 0, 'revision', '', 0),
(513, 1, '2020-02-22 01:16:01', '2020-02-21 17:16:01', 'hi，我是GIGI！我的爱好是逛街和shopping，看电影！\r\n', 'GIGI', '', 'inherit', 'closed', 'closed', '', '405-revision-v1', '', '', '2020-02-22 01:16:01', '2020-02-21 17:16:01', '', 405, 'http://localhost/twodayssss/?p=513', 0, 'revision', '', 0),
(514, 1, '2020-02-22 01:16:20', '2020-02-21 17:16:20', 'hi，我是Alexa，来聊天吧！', 'Alexa', '', 'inherit', 'closed', 'closed', '', '407-revision-v1', '', '', '2020-02-22 01:16:20', '2020-02-21 17:16:20', '', 407, 'http://localhost/twodayssss/?p=514', 0, 'revision', '', 0),
(515, 1, '2020-02-22 01:16:53', '2020-02-21 17:16:53', 'hi，我是Arianna！在两天网等你哟！', 'Arianna', '', 'inherit', 'closed', 'closed', '', '411-revision-v1', '', '', '2020-02-22 01:16:53', '2020-02-21 17:16:53', '', 411, 'http://localhost/twodayssss/?p=515', 0, 'revision', '', 0),
(516, 1, '2020-02-22 01:17:25', '2020-02-21 17:17:25', 'hi，我是Ella！', 'Ella', '', 'inherit', 'closed', 'closed', '', '413-revision-v1', '', '', '2020-02-22 01:17:25', '2020-02-21 17:17:25', '', 413, 'http://localhost/twodayssss/?p=516', 0, 'revision', '', 0),
(517, 1, '2020-02-22 01:17:47', '2020-02-21 17:17:47', 'hi,我是Andrea！这个周末约我吗？', 'Andrea', '', 'inherit', 'closed', 'closed', '', '416-revision-v1', '', '', '2020-02-22 01:17:47', '2020-02-21 17:17:47', '', 416, 'http://localhost/twodayssss/?p=517', 0, 'revision', '', 0),
(518, 1, '2020-02-22 01:18:16', '2020-02-21 17:18:16', 'hi,你好！我是DAISY', 'DAISY', '', 'inherit', 'closed', 'closed', '', '431-revision-v1', '', '', '2020-02-22 01:18:16', '2020-02-21 17:18:16', '', 431, 'http://localhost/twodayssss/?p=518', 0, 'revision', '', 0),
(519, 1, '2020-02-22 01:18:33', '2020-02-21 17:18:33', 'hi，我是天使Angel', 'Angel', '', 'inherit', 'closed', 'closed', '', '433-revision-v1', '', '', '2020-02-22 01:18:33', '2020-02-21 17:18:33', '', 433, 'http://localhost/twodayssss/?p=519', 0, 'revision', '', 0),
(520, 1, '2020-02-22 01:18:49', '2020-02-21 17:18:49', 'hi,我是Candy！', 'Candy', '', 'inherit', 'closed', 'closed', '', '436-revision-v1', '', '', '2020-02-22 01:18:49', '2020-02-21 17:18:49', '', 436, 'http://localhost/twodayssss/?p=520', 0, 'revision', '', 0),
(521, 1, '2020-02-22 01:21:25', '2020-02-21 17:21:25', '', '首页', '', 'publish', 'closed', 'closed', '', '%e9%a6%96%e9%a1%b5', '', '', '2020-02-22 01:21:25', '2020-02-21 17:21:25', '', 0, 'http://localhost/twodayssss/?p=521', 1, 'nav_menu_item', '', 0),
(522, 1, '2020-02-22 01:21:25', '2020-02-21 17:21:25', ' ', '', '', 'publish', 'closed', 'closed', '', '522', '', '', '2020-02-22 01:21:25', '2020-02-21 17:21:25', '', 0, 'http://localhost/twodayssss/?p=522', 2, 'nav_menu_item', '', 0),
(523, 1, '2020-02-22 01:21:25', '2020-02-21 17:21:25', ' ', '', '', 'publish', 'closed', 'closed', '', '523', '', '', '2020-02-22 01:21:25', '2020-02-21 17:21:25', '', 0, 'http://localhost/twodayssss/?p=523', 3, 'nav_menu_item', '', 0),
(524, 1, '2020-02-22 01:21:25', '2020-02-21 17:21:25', ' ', '', '', 'publish', 'closed', 'closed', '', '524', '', '', '2020-02-22 01:21:25', '2020-02-21 17:21:25', '', 0, 'http://localhost/twodayssss/?p=524', 4, 'nav_menu_item', '', 0),
(525, 1, '2020-02-22 01:22:27', '2020-02-21 17:22:27', '[ultimatemember form_id=\"6\"]', '登录', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2020-02-22 01:22:27', '2020-02-21 17:22:27', '', 34, 'http://localhost/twodayssss/?p=525', 0, 'revision', '', 0),
(526, 1, '2020-02-22 02:25:00', '2020-02-21 18:25:00', '[ultimatemember_account]', '账号', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-02-22 02:25:00', '2020-02-21 18:25:00', '', 38, 'http://localhost/twodayssss/?p=526', 0, 'revision', '', 0),
(527, 1, '2020-02-22 02:25:25', '2020-02-21 18:25:25', '[ultimatemember form_id=\"7\"]', '用户', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2020-02-22 02:25:25', '2020-02-21 18:25:25', '', 33, 'http://localhost/twodayssss/?p=527', 0, 'revision', '', 0),
(528, 1, '2020-02-22 02:58:29', '2020-02-21 18:58:29', '', 'Social Registration', '', 'publish', 'closed', 'closed', '', 'social-registration', '', '', '2020-02-22 02:58:29', '2020-02-21 18:58:29', '', 0, 'http://localhost/twodayssss/?p=528', 0, 'um_form', '', 0),
(530, 1, '2020-02-22 12:54:02', '2020-02-22 04:54:02', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-02-22 12:54:02', '2020-02-22 04:54:02', '', 0, 'http://localhost/twodayssss/wp-content/uploads/2020/02/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(531, 1, '2020-02-22 12:55:42', '2020-02-22 04:55:42', '', '商店', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2020-02-22 12:55:42', '2020-02-22 04:55:42', '', 0, 'http://localhost/twodayssss/?page_id=531', 0, 'page', '', 0),
(532, 1, '2020-02-22 12:55:42', '2020-02-22 04:55:42', '<!-- wp:shortcode -->[woocommerce_cart]<!-- /wp:shortcode -->', '购物车', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2020-02-22 12:55:42', '2020-02-22 04:55:42', '', 0, 'http://localhost/twodayssss/?page_id=532', 0, 'page', '', 0),
(533, 1, '2020-02-22 12:55:42', '2020-02-22 04:55:42', '<!-- wp:shortcode -->[woocommerce_checkout]<!-- /wp:shortcode -->', '结算', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2020-02-22 12:55:42', '2020-02-22 04:55:42', '', 0, 'http://localhost/twodayssss/?page_id=533', 0, 'page', '', 0),
(534, 1, '2020-02-22 12:55:42', '2020-02-22 04:55:42', '<!-- wp:shortcode -->[woocommerce_my_account]<!-- /wp:shortcode -->', '我的帐户', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2020-02-22 12:55:42', '2020-02-22 04:55:42', '', 0, 'http://localhost/twodayssss/?page_id=534', 0, 'page', '', 0);

-- --------------------------------------------------------

--
-- 表的结构 `td_termmeta`
--

CREATE TABLE `td_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_terms`
--

CREATE TABLE `td_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_terms`
--

INSERT INTO `td_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, '未分类', 'uncategorized', 0),
(2, '主', '%e4%b8%bb', 0),
(3, '主（2）', '%e4%b8%bb%ef%bc%882%ef%bc%89', 0),
(4, '社交网络链接菜单', '%e7%a4%be%e4%ba%a4%e7%bd%91%e7%bb%9c%e9%93%be%e6%8e%a5%e8%8f%9c%e5%8d%95', 0),
(5, 'Vip', '%e6%9c%aa%e5%88%86%e9%a1%9e', 0),
(6, '可愛', 'keai', 0),
(7, '洗车', '%e6%b4%97%e8%bd%a6', 0),
(8, '蘿莉', '%e8%98%bf%e8%8e%89', 0),
(9, '专业补课', '%e4%b8%93%e4%b8%9a%e8%a1%a5%e8%af%be', 0),
(10, '知性', 'zhixing', 0),
(11, '聊天', 'liaotian', 0),
(12, '成熟', 'chengshu', 0),
(13, '看电影', '%e7%9c%8b%e7%94%b5%e5%bd%b1', 0),
(14, '线下约会', '%e7%ba%bf%e4%b8%8b%e7%ba%a6%e4%bc%9a', 0),
(15, '字母', 'zimu', 0),
(16, '遛狗', 'liugou', 0),
(17, '性感', 'xinggang', 0),
(18, '游戏', '%e6%b8%b8%e6%88%8f', 0),
(19, '唱歌', 'changge', 0),
(20, '才藝', '%e5%ad%97%e6%af%8d', 0),
(21, '语音', '%e8%af%ad%e9%9f%b3', 0),
(22, '主菜单', '%e4%b8%bb%e8%8f%9c%e5%8d%95', 0),
(23, '线上服务', 'interests', 0),
(24, '线下服务', 'skills', 0),
(25, '语音', 'racing', 0),
(26, '视频', 'painting', 0),
(27, '唱歌', 'video-gaming', 0),
(28, '聊天', 'blogging', 0),
(29, '线上观影', 'reading', 0),
(30, '遛狗', 'php', 0),
(31, '看电影', 'html5', 0),
(32, '逛街', 'css', 0),
(33, '户外运动', 'jquery', 0),
(34, '专业补课', 'mysql', 0),
(35, '游戏', 'play', 0),
(36, '洗车', 'car', 0),
(37, '派对礼仪', 'party', 0),
(38, '家政', 'domestic', 0),
(39, 'simple', 'simple', 0),
(40, 'grouped', 'grouped', 0),
(41, 'variable', 'variable', 0),
(42, 'external', 'external', 0),
(43, 'exclude-from-search', 'exclude-from-search', 0),
(44, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(45, 'featured', 'featured', 0),
(46, 'outofstock', 'outofstock', 0),
(47, 'rated-1', 'rated-1', 0),
(48, 'rated-2', 'rated-2', 0),
(49, 'rated-3', 'rated-3', 0),
(50, 'rated-4', 'rated-4', 0),
(51, 'rated-5', 'rated-5', 0),
(52, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- 表的结构 `td_term_relationships`
--

CREATE TABLE `td_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_term_relationships`
--

INSERT INTO `td_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(281, 7, 0),
(521, 22, 0),
(444, 2, 0),
(442, 2, 0),
(443, 2, 0),
(24, 3, 0),
(25, 3, 0),
(26, 3, 0),
(27, 3, 0),
(28, 4, 0),
(29, 4, 0),
(30, 4, 0),
(31, 4, 0),
(32, 4, 0),
(522, 22, 0),
(281, 6, 0),
(386, 9, 0),
(386, 8, 0),
(394, 11, 0),
(394, 10, 0),
(394, 12, 0),
(411, 18, 0),
(405, 13, 0),
(405, 14, 0),
(405, 15, 0),
(407, 16, 0),
(407, 15, 0),
(411, 17, 0),
(416, 9, 0),
(413, 19, 0),
(413, 15, 0),
(413, 17, 0),
(413, 12, 0),
(416, 20, 0),
(433, 7, 0),
(431, 16, 0),
(431, 15, 0),
(433, 15, 0),
(436, 21, 0),
(436, 8, 0),
(523, 22, 0),
(524, 22, 0);

-- --------------------------------------------------------

--
-- 表的结构 `td_term_taxonomy`
--

CREATE TABLE `td_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_term_taxonomy`
--

INSERT INTO `td_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 4),
(4, 4, 'nav_menu', '', 0, 5),
(5, 5, 'category', '', 0, 0),
(6, 6, 'category', '', 0, 1),
(7, 7, 'post_tag', '', 0, 2),
(8, 8, 'category', '', 0, 2),
(9, 9, 'post_tag', '', 0, 2),
(10, 10, 'category', '', 0, 1),
(11, 11, 'post_tag', '', 0, 1),
(12, 12, 'category', '', 0, 2),
(13, 13, 'post_tag', '', 0, 1),
(14, 14, 'category', '', 0, 1),
(15, 15, 'category', '', 0, 5),
(16, 16, 'post_tag', '', 0, 2),
(17, 17, 'category', '', 0, 2),
(18, 18, 'post_tag', '', 0, 1),
(19, 19, 'post_tag', '', 0, 1),
(20, 20, 'category', '', 0, 1),
(21, 21, 'post_tag', '', 0, 1),
(22, 22, 'nav_menu', '', 0, 4),
(23, 23, 'um_user_tag', '', 0, 0),
(24, 24, 'um_user_tag', '', 0, 0),
(25, 25, 'um_user_tag', '', 23, 0),
(26, 26, 'um_user_tag', '', 23, 0),
(27, 27, 'um_user_tag', '', 23, 0),
(28, 28, 'um_user_tag', '', 23, 0),
(29, 29, 'um_user_tag', '', 23, 0),
(30, 30, 'um_user_tag', '', 24, 0),
(31, 31, 'um_user_tag', '', 24, 0),
(32, 32, 'um_user_tag', '', 24, 0),
(33, 33, 'um_user_tag', '', 24, 0),
(34, 34, 'um_user_tag', '', 24, 0),
(35, 35, 'um_user_tag', '', 23, 0),
(36, 36, 'um_user_tag', '', 24, 0),
(37, 37, 'um_user_tag', '', 24, 0),
(38, 38, 'um_user_tag', '', 24, 0),
(39, 39, 'product_type', '', 0, 0),
(40, 40, 'product_type', '', 0, 0),
(41, 41, 'product_type', '', 0, 0),
(42, 42, 'product_type', '', 0, 0),
(43, 43, 'product_visibility', '', 0, 0),
(44, 44, 'product_visibility', '', 0, 0),
(45, 45, 'product_visibility', '', 0, 0),
(46, 46, 'product_visibility', '', 0, 0),
(47, 47, 'product_visibility', '', 0, 0),
(48, 48, 'product_visibility', '', 0, 0),
(49, 49, 'product_visibility', '', 0, 0),
(50, 50, 'product_visibility', '', 0, 0),
(51, 51, 'product_visibility', '', 0, 0),
(52, 52, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `td_um_conversations`
--

CREATE TABLE `td_um_conversations` (
  `conversation_id` bigint(20) UNSIGNED NOT NULL,
  `user_a` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_b` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `last_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_um_followers`
--

CREATE TABLE `td_um_followers` (
  `id` int(11) UNSIGNED NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id1` int(11) UNSIGNED NOT NULL,
  `user_id2` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_um_friends`
--

CREATE TABLE `td_um_friends` (
  `id` int(11) UNSIGNED NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id1` int(11) UNSIGNED NOT NULL,
  `user_id2` int(11) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_um_groups_members`
--

CREATE TABLE `td_um_groups_members` (
  `id` int(11) UNSIGNED NOT NULL,
  `group_id` int(11) UNSIGNED NOT NULL,
  `user_id1` int(11) UNSIGNED NOT NULL,
  `user_id2` int(11) UNSIGNED NOT NULL,
  `status` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `role` varchar(30) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `invites` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `time_stamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_joined` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_um_messages`
--

CREATE TABLE `td_um_messages` (
  `message_id` bigint(20) UNSIGNED NOT NULL,
  `conversation_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `reminded` tinyint(2) NOT NULL DEFAULT '0',
  `author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `recipient` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_um_metadata`
--

CREATE TABLE `td_um_metadata` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `um_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `um_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_um_notifications`
--

CREATE TABLE `td_um_notifications` (
  `id` int(11) UNSIGNED NOT NULL,
  `time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `content` text COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_usermeta`
--

CREATE TABLE `td_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_usermeta`
--

INSERT INTO `td_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'twodayssss'),
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
(12, 1, 'td_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'td_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(35, 1, 'session_tokens', 'a:2:{s:64:\"8df09fd5a1953126432f3cf93e9464e8780ca7af275c6bc92361fd2ef376d3de\";a:4:{s:10:\"expiration\";i:1582479433;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36\";s:5:\"login\";i:1582306633;}s:64:\"dcc47fb6ccfe3927c87ee9d07a41f06e592222e7cbb60f5bd2ad8808a4dc2bd7\";a:4:{s:10:\"expiration\";i:1583556644;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/80.0.3987.116 Safari/537.36\";s:5:\"login\";i:1582347044;}}'),
(17, 1, 'td_user-settings', 'editor=html&libraryContent=browse'),
(18, 1, 'td_user-settings-time', '1582300987'),
(19, 1, 'td_dashboard_quick_press_last_post_id', '4'),
(20, 1, 'account_status', 'approved'),
(21, 1, 'um_member_directory_data', 'a:5:{s:14:\"account_status\";s:8:\"approved\";s:15:\"hide_in_members\";b:0;s:13:\"profile_photo\";b:1;s:11:\"cover_photo\";b:1;s:8:\"verified\";b:0;}'),
(22, 1, 'um_user_profile_url_slug_user_login', 'twodayssss'),
(23, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(24, 1, 'nav_menu_recently_edited', '22'),
(25, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(26, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(27, 1, 'meta-box-order_post', 'a:3:{s:4:\"side\";s:61:\"submitdiv,postimagediv,formatdiv,categorydiv,tagsdiv-post_tag\";s:6:\"normal\";s:109:\"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv,um-admin-restrict-content\";s:8:\"advanced\";s:0:\"\";}'),
(28, 1, 'screen_layout_post', '2'),
(29, 1, 'closedpostboxes_post', 'a:3:{i:0;s:9:\"formatdiv\";i:1;s:11:\"categorydiv\";i:2;s:16:\"tagsdiv-post_tag\";}'),
(30, 1, 'metaboxhidden_post', 'a:7:{i:0;s:11:\"postexcerpt\";i:1;s:13:\"trackbacksdiv\";i:2;s:10:\"postcustom\";i:3;s:16:\"commentstatusdiv\";i:4;s:11:\"commentsdiv\";i:5;s:7:\"slugdiv\";i:6;s:9:\"authordiv\";}'),
(31, 1, 'um_account_secure_fields', 'a:4:{s:7:\"privacy\";a:4:{i:0;s:19:\"_hide_online_status\";i:1;s:15:\"profile_privacy\";i:2;s:15:\"hide_in_members\";i:4;s:19:\"um_bookmark_privacy\";}s:7:\"general\";a:4:{i:0;s:10:\"user_login\";i:1;s:10:\"first_name\";i:2;s:9:\"last_name\";i:3;s:10:\"user_email\";}s:8:\"password\";a:1:{i:0;s:13:\"user_password\";}s:6:\"delete\";a:1:{i:0;s:20:\"single_user_password\";}}'),
(33, 1, '_um_last_login', '1582375844'),
(36, 1, 'cover_photo', 'cover_photo.jpg'),
(37, 1, 'profile_photo', 'profile_photo.jpg'),
(38, 1, '_um_verified', 'unverified'),
(39, 1, 'mycred_default_total', '0'),
(40, 1, 'mycred_default_history', 'a:0:{}'),
(41, 1, '_woocommerce_tracks_anon_id', 'woo:tSnBIXlgAikk8/ETVycDfRdo'),
(42, 1, 'wc_last_active', '1582329600');

-- --------------------------------------------------------

--
-- 表的结构 `td_users`
--

CREATE TABLE `td_users` (
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
-- 转存表中的数据 `td_users`
--

INSERT INTO `td_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'twodayssss', '$P$BMa3cGX1hO5xg6gO587lyD456hj4tU.', 'twodayssss', 'twodayssss@gmail.com', '', '2020-02-21 16:02:43', '', 0, 'twodayssss');

-- --------------------------------------------------------

--
-- 表的结构 `td_wc_download_log`
--

CREATE TABLE `td_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_wc_product_meta_lookup`
--

CREATE TABLE `td_wc_product_meta_lookup` (
  `product_id` bigint(20) NOT NULL,
  `sku` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT '',
  `virtual` tinyint(1) DEFAULT '0',
  `downloadable` tinyint(1) DEFAULT '0',
  `min_price` decimal(10,2) DEFAULT NULL,
  `max_price` decimal(10,2) DEFAULT NULL,
  `onsale` tinyint(1) DEFAULT '0',
  `stock_quantity` double DEFAULT NULL,
  `stock_status` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT 'instock',
  `rating_count` bigint(20) DEFAULT '0',
  `average_rating` decimal(3,2) DEFAULT '0.00',
  `total_sales` bigint(20) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_wc_tax_rate_classes`
--

CREATE TABLE `td_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_wc_tax_rate_classes`
--

INSERT INTO `td_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- 表的结构 `td_wc_webhooks`
--

CREATE TABLE `td_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_api_keys`
--

CREATE TABLE `td_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_attribute_taxonomies`
--

CREATE TABLE `td_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `td_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_log`
--

CREATE TABLE `td_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_order_itemmeta`
--

CREATE TABLE `td_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_order_items`
--

CREATE TABLE `td_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_payment_tokenmeta`
--

CREATE TABLE `td_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_payment_tokens`
--

CREATE TABLE `td_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_sessions`
--

CREATE TABLE `td_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_woocommerce_sessions`
--

INSERT INTO `td_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:712:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"MA\";s:7:\"country\";s:2:\"US\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"MA\";s:16:\"shipping_country\";s:2:\"US\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"twodayssss@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1582520318);

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_shipping_zones`
--

CREATE TABLE `td_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_woocommerce_shipping_zones`
--

INSERT INTO `td_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, '美国', 0);

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_shipping_zone_locations`
--

CREATE TABLE `td_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_woocommerce_shipping_zone_locations`
--

INSERT INTO `td_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'US', 'country');

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_shipping_zone_methods`
--

CREATE TABLE `td_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转存表中的数据 `td_woocommerce_shipping_zone_methods`
--

INSERT INTO `td_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_tax_rates`
--

CREATE TABLE `td_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- 表的结构 `td_woocommerce_tax_rate_locations`
--

CREATE TABLE `td_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- 转储表的索引
--

--
-- 表的索引 `td_commentmeta`
--
ALTER TABLE `td_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 表的索引 `td_comments`
--
ALTER TABLE `td_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- 表的索引 `td_links`
--
ALTER TABLE `td_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- 表的索引 `td_mycred_log`
--
ALTER TABLE `td_mycred_log`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- 表的索引 `td_options`
--
ALTER TABLE `td_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- 表的索引 `td_postmeta`
--
ALTER TABLE `td_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 表的索引 `td_posts`
--
ALTER TABLE `td_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- 表的索引 `td_termmeta`
--
ALTER TABLE `td_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 表的索引 `td_terms`
--
ALTER TABLE `td_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- 表的索引 `td_term_relationships`
--
ALTER TABLE `td_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- 表的索引 `td_term_taxonomy`
--
ALTER TABLE `td_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- 表的索引 `td_um_conversations`
--
ALTER TABLE `td_um_conversations`
  ADD PRIMARY KEY (`conversation_id`),
  ADD KEY `user_a_user_b` (`user_a`,`user_b`),
  ADD KEY `user_a` (`user_a`),
  ADD KEY `user_b` (`user_b`);

--
-- 表的索引 `td_um_followers`
--
ALTER TABLE `td_um_followers`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `td_um_friends`
--
ALTER TABLE `td_um_friends`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `td_um_groups_members`
--
ALTER TABLE `td_um_groups_members`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `td_um_messages`
--
ALTER TABLE `td_um_messages`
  ADD PRIMARY KEY (`message_id`),
  ADD KEY `recipient_author_status` (`recipient`,`author`,`status`),
  ADD KEY `conversation_id_author` (`conversation_id`,`author`),
  ADD KEY `recipient_author` (`recipient`,`author`),
  ADD KEY `recipient_status` (`recipient`,`status`),
  ADD KEY `conversation_id` (`conversation_id`),
  ADD KEY `recipient` (`recipient`),
  ADD KEY `status` (`status`),
  ADD KEY `author` (`author`);

--
-- 表的索引 `td_um_metadata`
--
ALTER TABLE `td_um_metadata`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id_indx` (`user_id`),
  ADD KEY `meta_key_indx` (`um_key`(250)),
  ADD KEY `meta_value_indx` (`um_value`(191));

--
-- 表的索引 `td_um_notifications`
--
ALTER TABLE `td_um_notifications`
  ADD PRIMARY KEY (`id`);

--
-- 表的索引 `td_usermeta`
--
ALTER TABLE `td_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- 表的索引 `td_users`
--
ALTER TABLE `td_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- 表的索引 `td_wc_download_log`
--
ALTER TABLE `td_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- 表的索引 `td_wc_product_meta_lookup`
--
ALTER TABLE `td_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- 表的索引 `td_wc_tax_rate_classes`
--
ALTER TABLE `td_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- 表的索引 `td_wc_webhooks`
--
ALTER TABLE `td_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `td_woocommerce_api_keys`
--
ALTER TABLE `td_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- 表的索引 `td_woocommerce_attribute_taxonomies`
--
ALTER TABLE `td_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- 表的索引 `td_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `td_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- 表的索引 `td_woocommerce_log`
--
ALTER TABLE `td_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- 表的索引 `td_woocommerce_order_itemmeta`
--
ALTER TABLE `td_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- 表的索引 `td_woocommerce_order_items`
--
ALTER TABLE `td_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- 表的索引 `td_woocommerce_payment_tokenmeta`
--
ALTER TABLE `td_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- 表的索引 `td_woocommerce_payment_tokens`
--
ALTER TABLE `td_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- 表的索引 `td_woocommerce_sessions`
--
ALTER TABLE `td_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- 表的索引 `td_woocommerce_shipping_zones`
--
ALTER TABLE `td_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- 表的索引 `td_woocommerce_shipping_zone_locations`
--
ALTER TABLE `td_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- 表的索引 `td_woocommerce_shipping_zone_methods`
--
ALTER TABLE `td_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- 表的索引 `td_woocommerce_tax_rates`
--
ALTER TABLE `td_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- 表的索引 `td_woocommerce_tax_rate_locations`
--
ALTER TABLE `td_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `td_commentmeta`
--
ALTER TABLE `td_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_comments`
--
ALTER TABLE `td_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `td_links`
--
ALTER TABLE `td_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_mycred_log`
--
ALTER TABLE `td_mycred_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_options`
--
ALTER TABLE `td_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=812;

--
-- 使用表AUTO_INCREMENT `td_postmeta`
--
ALTER TABLE `td_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- 使用表AUTO_INCREMENT `td_posts`
--
ALTER TABLE `td_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=535;

--
-- 使用表AUTO_INCREMENT `td_termmeta`
--
ALTER TABLE `td_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_terms`
--
ALTER TABLE `td_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `td_term_taxonomy`
--
ALTER TABLE `td_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- 使用表AUTO_INCREMENT `td_um_conversations`
--
ALTER TABLE `td_um_conversations`
  MODIFY `conversation_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_um_followers`
--
ALTER TABLE `td_um_followers`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_um_friends`
--
ALTER TABLE `td_um_friends`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_um_groups_members`
--
ALTER TABLE `td_um_groups_members`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_um_messages`
--
ALTER TABLE `td_um_messages`
  MODIFY `message_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_um_metadata`
--
ALTER TABLE `td_um_metadata`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_um_notifications`
--
ALTER TABLE `td_um_notifications`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_usermeta`
--
ALTER TABLE `td_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- 使用表AUTO_INCREMENT `td_users`
--
ALTER TABLE `td_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `td_wc_download_log`
--
ALTER TABLE `td_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_wc_tax_rate_classes`
--
ALTER TABLE `td_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `td_wc_webhooks`
--
ALTER TABLE `td_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_api_keys`
--
ALTER TABLE `td_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_attribute_taxonomies`
--
ALTER TABLE `td_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `td_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_log`
--
ALTER TABLE `td_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_order_itemmeta`
--
ALTER TABLE `td_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_order_items`
--
ALTER TABLE `td_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_payment_tokenmeta`
--
ALTER TABLE `td_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_payment_tokens`
--
ALTER TABLE `td_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_sessions`
--
ALTER TABLE `td_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_shipping_zones`
--
ALTER TABLE `td_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_shipping_zone_locations`
--
ALTER TABLE `td_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_shipping_zone_methods`
--
ALTER TABLE `td_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_tax_rates`
--
ALTER TABLE `td_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- 使用表AUTO_INCREMENT `td_woocommerce_tax_rate_locations`
--
ALTER TABLE `td_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
