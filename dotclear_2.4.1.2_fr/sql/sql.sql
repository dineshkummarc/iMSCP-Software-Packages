SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `dotclear`
--

-- --------------------------------------------------------

--
-- Structure de la table `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `blog_uid` varchar(32) COLLATE utf8_bin NOT NULL,
  `blog_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `blog_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `blog_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `blog_name` varchar(255) COLLATE utf8_bin NOT NULL,
  `blog_desc` longtext COLLATE utf8_bin,
  `blog_status` smallint(6) NOT NULL DEFAULT '1',
  PRIMARY KEY (`blog_id`),
  KEY `idx_blog_blog_upddt` (`blog_upddt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `blog`
--

INSERT INTO `blog` (`blog_id`, `blog_uid`, `blog_creadt`, `blog_upddt`, `blog_url`, `blog_name`, `blog_desc`, `blog_status`) VALUES
('default', '6cab8ab589b2245236431e9c58c833a6', '2012-01-11 18:19:36', '2012-01-11 18:19:36', 'http://i-mscp.net/index.php?', 'Mon premier blog', NULL, 1);

-- --------------------------------------------------------

--
-- Structure de la table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `cat_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `cat_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `cat_desc` longtext COLLATE utf8_bin,
  `cat_position` int(11) DEFAULT '0',
  `cat_lft` int(11) DEFAULT NULL,
  `cat_rgt` int(11) DEFAULT NULL,
  PRIMARY KEY (`cat_id`),
  UNIQUE KEY `uk_cat_url` (`cat_url`,`blog_id`),
  KEY `idx_category_blog_id` (`blog_id`) USING BTREE,
  KEY `idx_category_cat_lft_blog_id` (`blog_id`,`cat_lft`) USING BTREE,
  KEY `idx_category_cat_rgt_blog_id` (`blog_id`,`cat_rgt`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
  `comment_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `comment_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `comment_tz` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `comment_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `comment_author` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment_site` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `comment_content` longtext COLLATE utf8_bin,
  `comment_words` longtext COLLATE utf8_bin,
  `comment_ip` varchar(39) COLLATE utf8_bin DEFAULT NULL,
  `comment_status` smallint(6) DEFAULT '0',
  `comment_spam_status` varchar(128) COLLATE utf8_bin DEFAULT '0',
  `comment_spam_filter` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `comment_trackback` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_id`),
  KEY `idx_comment_post_id` (`post_id`) USING BTREE,
  KEY `idx_comment_post_id_dt_status` (`post_id`,`comment_dt`,`comment_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `comment`
--

INSERT INTO `comment` (`comment_id`, `post_id`, `comment_dt`, `comment_tz`, `comment_upddt`, `comment_author`, `comment_email`, `comment_site`, `comment_content`, `comment_words`, `comment_ip`, `comment_status`, `comment_spam_status`, `comment_spam_filter`, `comment_trackback`) VALUES
(1, 1, '2012-01-11 18:19:36', 'Europe/London', '2012-01-11 18:19:36', 'L''équipe Dotclear', 'contact@dotclear.net', 'http://www.dotclear.org/', '<p>Ceci est un commentaire</p><p>Pour le supprimer, connectez-vous et affichez les commentaires de votre blog. Vous pourrez alors le supprimer ou le modifier.</p>', 'ceci est commentairepour supprimer connectez vous affichez les commentaires votre blog vous pourrez alors supprimer modifier', 'localhost', 1, '0', NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `link`
--

CREATE TABLE IF NOT EXISTS `link` (
  `link_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `link_href` varchar(255) COLLATE utf8_bin NOT NULL,
  `link_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `link_desc` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link_lang` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `link_xfn` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `link_position` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`link_id`),
  KEY `idx_link_blog_id` (`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `log`
--

CREATE TABLE IF NOT EXISTS `log` (
  `log_id` bigint(20) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `log_table` varchar(255) COLLATE utf8_bin NOT NULL,
  `log_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `log_ip` varchar(39) COLLATE utf8_bin NOT NULL,
  `log_msg` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `idx_log_user_id` (`user_id`) USING BTREE,
  KEY `fk_log_blog` (`blog_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `media`
--

CREATE TABLE IF NOT EXISTS `media` (
  `media_id` bigint(20) NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `media_path` varchar(255) COLLATE utf8_bin NOT NULL,
  `media_title` varchar(255) COLLATE utf8_bin NOT NULL,
  `media_file` varchar(255) COLLATE utf8_bin NOT NULL,
  `media_dir` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '.',
  `media_meta` longtext COLLATE utf8_bin,
  `media_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `media_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `media_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `media_private` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`media_id`),
  KEY `idx_media_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `meta`
--

CREATE TABLE IF NOT EXISTS `meta` (
  `meta_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `meta_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `post_id` bigint(20) NOT NULL,
  PRIMARY KEY (`meta_id`,`meta_type`,`post_id`),
  KEY `idx_meta_post_id` (`post_id`) USING BTREE,
  KEY `idx_meta_meta_type` (`meta_type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `permissions` longtext COLLATE utf8_bin,
  PRIMARY KEY (`user_id`,`blog_id`),
  KEY `idx_permissions_blog_id` (`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `ping`
--

CREATE TABLE IF NOT EXISTS `ping` (
  `post_id` bigint(20) NOT NULL,
  `ping_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `ping_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`post_id`,`ping_url`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `post_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `cat_id` bigint(20) DEFAULT NULL,
  `post_dt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `post_tz` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `post_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `post_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `post_password` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `post_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'post',
  `post_format` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'xhtml',
  `post_url` varchar(255) COLLATE utf8_bin NOT NULL,
  `post_lang` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `post_title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `post_excerpt` longtext COLLATE utf8_bin,
  `post_excerpt_xhtml` longtext COLLATE utf8_bin,
  `post_content` longtext COLLATE utf8_bin,
  `post_content_xhtml` longtext COLLATE utf8_bin NOT NULL,
  `post_notes` longtext COLLATE utf8_bin,
  `post_meta` longtext COLLATE utf8_bin,
  `post_words` longtext COLLATE utf8_bin,
  `post_status` smallint(6) NOT NULL DEFAULT '0',
  `post_selected` smallint(6) NOT NULL DEFAULT '0',
  `post_position` int(11) NOT NULL DEFAULT '0',
  `post_open_comment` smallint(6) NOT NULL DEFAULT '0',
  `post_open_tb` smallint(6) NOT NULL DEFAULT '0',
  `nb_comment` int(11) NOT NULL DEFAULT '0',
  `nb_trackback` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  UNIQUE KEY `uk_post_url` (`post_url`,`post_type`,`blog_id`),
  KEY `idx_post_cat_id` (`cat_id`) USING BTREE,
  KEY `idx_post_user_id` (`user_id`) USING BTREE,
  KEY `idx_post_blog_id` (`blog_id`) USING BTREE,
  KEY `idx_post_post_dt` (`post_dt`) USING BTREE,
  KEY `idx_post_post_dt_post_id` (`post_dt`,`post_id`) USING BTREE,
  KEY `idx_blog_post_post_dt_post_id` (`blog_id`,`post_dt`,`post_id`) USING BTREE,
  KEY `idx_blog_post_post_status` (`blog_id`,`post_status`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `post`
--

INSERT INTO `post` (`post_id`, `blog_id`, `user_id`, `cat_id`, `post_dt`, `post_tz`, `post_creadt`, `post_upddt`, `post_password`, `post_type`, `post_format`, `post_url`, `post_lang`, `post_title`, `post_excerpt`, `post_excerpt_xhtml`, `post_content`, `post_content_xhtml`, `post_notes`, `post_meta`, `post_words`, `post_status`, `post_selected`, `post_position`, `post_open_comment`, `post_open_tb`, `nb_comment`, `nb_trackback`) VALUES
(1, 'default', 'admin', NULL, '2012-01-11 18:19:00', 'Europe/London', '2012-01-11 18:19:36', '2012-01-11 18:19:36', NULL, 'post', 'xhtml', '2012/01/11/Bienvenue-sur-Dotclear !', 'fr', 'Bienvenue sur Dotclear !', NULL, '', '<p>Ceci est votre premier billet. Quand vous serez prêt à bloguer, connectez-vous pour le modifier ou le supprimer.</p>', '<p>Ceci est votre premier billet. Quand vous serez prêt à bloguer, connectez-vous pour le modifier ou le supprimer.</p>', NULL, NULL, 'bienvenue sur dotclear ceci est votre premier billet quand vous serez prêt bloguer connectez vous pour modifier supprimer', 1, 0, 0, 1, 0, 1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `post_media`
--

CREATE TABLE IF NOT EXISTS `post_media` (
  `media_id` bigint(20) NOT NULL,
  `post_id` bigint(20) NOT NULL,
  `link_type` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'attachment',
  PRIMARY KEY (`media_id`,`post_id`,`link_type`),
  KEY `idx_post_media_post_id` (`post_id`) USING BTREE,
  KEY `idx_post_media_media_id` (`media_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `pref`
--

CREATE TABLE IF NOT EXISTS `pref` (
  `pref_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `user_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `pref_ws` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'system',
  `pref_value` longtext COLLATE utf8_bin,
  `pref_type` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT 'string',
  `pref_label` longtext COLLATE utf8_bin,
  UNIQUE KEY `uk_pref` (`pref_ws`,`pref_id`,`user_id`),
  KEY `idx_pref_user_id` (`user_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `pref`
--

INSERT INTO `pref` (`pref_id`, `user_id`, `pref_ws`, `pref_value`, `pref_type`, `pref_label`) VALUES
('doclinks', NULL, 'dashboard', '1', 'boolean', ''),
('dcnews', NULL, 'dashboard', '1', 'boolean', ''),
('quickentry', NULL, 'dashboard', '1', 'boolean', ''),
('nodragdrop', NULL, 'accessibility', '0', 'boolean', ''),
('enhanceduploader', NULL, 'interface', '0', 'boolean', ''),
('g000', NULL, 'favorites', 'a:8:{s:4:"name";s:8:"new_post";s:5:"title";s:9:"New entry";s:3:"url";s:8:"post.php";s:10:"small-icon";s:20:"images/menu/edit.png";s:10:"large-icon";s:22:"images/menu/edit-b.png";s:11:"permissions";s:18:"usage,contentadmin";s:2:"id";N;s:5:"class";s:13:"menu-new-post";}', 'string', NULL),
('g001', NULL, 'favorites', 'a:8:{s:4:"name";s:5:"posts";s:5:"title";s:7:"Entries";s:3:"url";s:9:"posts.php";s:10:"small-icon";s:23:"images/menu/entries.png";s:10:"large-icon";s:25:"images/menu/entries-b.png";s:11:"permissions";s:18:"usage,contentadmin";s:2:"id";N;s:5:"class";N;}', 'string', NULL),
('g002', NULL, 'favorites', 'a:8:{s:4:"name";s:8:"comments";s:5:"title";s:8:"Comments";s:3:"url";s:12:"comments.php";s:10:"small-icon";s:24:"images/menu/comments.png";s:10:"large-icon";s:26:"images/menu/comments-b.png";s:11:"permissions";s:18:"usage,contentadmin";s:2:"id";N;s:5:"class";N;}', 'string', NULL),
('g003', NULL, 'favorites', 'a:8:{s:4:"name";s:5:"prefs";s:5:"title";s:14:"My preferences";s:3:"url";s:15:"preferences.php";s:10:"small-icon";s:25:"images/menu/user-pref.png";s:10:"large-icon";s:27:"images/menu/user-pref-b.png";s:11:"permissions";s:1:"*";s:2:"id";N;s:5:"class";N;}', 'string', NULL),
('g004', NULL, 'favorites', 'a:8:{s:4:"name";s:9:"blog_pref";s:5:"title";s:13:"Blog settings";s:3:"url";s:13:"blog_pref.php";s:10:"small-icon";s:25:"images/menu/blog-pref.png";s:10:"large-icon";s:27:"images/menu/blog-pref-b.png";s:11:"permissions";s:5:"admin";s:2:"id";N;s:5:"class";N;}', 'string', NULL),
('g005', NULL, 'favorites', 'a:8:{s:4:"name";s:10:"blog_theme";s:5:"title";s:15:"Blog appearance";s:3:"url";s:14:"blog_theme.php";s:10:"small-icon";s:22:"images/menu/themes.png";s:10:"large-icon";s:28:"images/menu/blog-theme-b.png";s:11:"permissions";s:5:"admin";s:2:"id";N;s:5:"class";N;}', 'string', NULL),
('g006', NULL, 'favorites', 'a:8:{s:4:"name";s:5:"pages";s:5:"title";s:5:"Pages";s:3:"url";s:18:"plugin.php?p=pages";s:10:"small-icon";s:27:"index.php?pf=pages/icon.png";s:10:"large-icon";s:31:"index.php?pf=pages/icon-big.png";s:11:"permissions";s:18:"contentadmin,pages";s:2:"id";N;s:5:"class";N;}', 'string', NULL),
('g007', NULL, 'favorites', 'a:8:{s:4:"name";s:8:"blogroll";s:5:"title";s:8:"Blogroll";s:3:"url";s:21:"plugin.php?p=blogroll";s:10:"small-icon";s:36:"index.php?pf=blogroll/icon-small.png";s:10:"large-icon";s:30:"index.php?pf=blogroll/icon.png";s:11:"permissions";s:18:"usage,contentadmin";s:2:"id";N;s:5:"class";N;}', 'string', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `ses_id` varchar(40) COLLATE utf8_bin NOT NULL,
  `ses_time` int(11) NOT NULL DEFAULT '0',
  `ses_start` int(11) NOT NULL DEFAULT '0',
  `ses_value` longtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ses_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Structure de la table `setting`
--

CREATE TABLE IF NOT EXISTS `setting` (
  `setting_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `setting_ns` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT 'system',
  `setting_value` longtext COLLATE utf8_bin,
  `setting_type` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT 'string',
  `setting_label` longtext COLLATE utf8_bin,
  UNIQUE KEY `uk_setting` (`setting_ns`,`setting_id`,`blog_id`),
  KEY `idx_setting_blog_id` (`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `setting`
--

INSERT INTO `setting` (`setting_id`, `blog_id`, `setting_ns`, `setting_value`, `setting_type`, `setting_label`) VALUES
('allow_comments', NULL, 'system', '1', 'boolean', 'Allow comments on blog'),
('allow_trackbacks', NULL, 'system', '1', 'boolean', 'Allow trackbacks on blog'),
('blog_timezone', NULL, 'system', 'Europe/London', 'string', 'Blog timezone'),
('comments_nofollow', NULL, 'system', '1', 'boolean', 'Add rel="nofollow" to comments URLs'),
('comments_pub', NULL, 'system', '1', 'boolean', 'Publish comments immediately'),
('comments_ttl', NULL, 'system', '0', 'integer', 'Number of days to keep comments open (0 means no ttl)'),
('copyright_notice', NULL, 'system', '', 'string', 'Copyright notice (simple text)'),
('date_format', NULL, 'system', '%A, %B %e %Y', 'string', 'Date format. See PHP strftime function for patterns'),
('editor', NULL, 'system', '', 'string', 'Person responsible of the content'),
('enable_html_filter', NULL, 'system', '0', 'boolean', 'Enable HTML filter'),
('enable_xmlrpc', NULL, 'system', '0', 'boolean', 'Enable XML/RPC interface'),
('lang', NULL, 'system', 'en', 'string', 'Default blog language'),
('media_exclusion', NULL, 'system', '/\\.php$/i', 'string', 'File name exclusion pattern in media manager. (PCRE value)'),
('media_img_m_size', NULL, 'system', '448', 'integer', 'Image medium size in media manager'),
('media_img_s_size', NULL, 'system', '240', 'integer', 'Image small size in media manager'),
('media_img_t_size', NULL, 'system', '100', 'integer', 'Image thumbnail size in media manager'),
('media_img_title_pattern', NULL, 'system', 'Title ;; Date(%b %Y) ;; separator(, )', 'string', 'Pattern to set image title when you insert it in a post'),
('nb_post_per_page', NULL, 'system', '20', 'integer', 'Number of entries on home page and category pages'),
('nb_post_per_feed', NULL, 'system', '20', 'integer', 'Number of entries on feeds'),
('nb_comment_per_feed', NULL, 'system', '20', 'integer', 'Number of comments on feeds'),
('post_url_format', NULL, 'system', '{y}/{m}/{d}/{t}', 'string', 'Post URL format. {y}: year, {m}: month, {d}: day, {id}: post id, {t}: entry title'),
('public_path', NULL, 'system', 'public', 'string', 'Path to public directory, begins with a / for a full system path'),
('public_url', NULL, 'system', '/public', 'string', 'URL to public directory'),
('robots_policy', NULL, 'system', 'INDEX,FOLLOW', 'string', 'Search engines robots policy'),
('short_feed_items', NULL, 'system', '0', 'boolean', 'Display short feed items'),
('theme', NULL, 'system', 'default', 'string', 'Blog theme'),
('themes_path', NULL, 'system', 'themes', 'string', 'Themes root path'),
('themes_url', NULL, 'system', '/themes', 'string', 'Themes root URL'),
('time_format', NULL, 'system', '%H:%M', 'string', 'Time format. See PHP strftime function for patterns'),
('tpl_allow_php', NULL, 'system', '0', 'boolean', 'Allow PHP code in templates'),
('tpl_use_cache', NULL, 'system', '1', 'boolean', 'Use template caching'),
('trackbacks_pub', NULL, 'system', '1', 'boolean', 'Publish trackbacks immediately'),
('trackbacks_ttl', NULL, 'system', '0', 'integer', 'Number of days to keep trackbacks open (0 means no ttl)'),
('url_scan', NULL, 'system', 'query_string', 'string', 'URL handle mode (path_info or query_string)'),
('use_smilies', NULL, 'system', '0', 'boolean', 'Show smilies on entries and comments'),
('wiki_comments', NULL, 'system', '0', 'boolean', 'Allow commenters to use a subset of wiki syntax'),
('lang', 'default', 'system', 'fr', 'string', 'Default blog language'),
('date_format', 'default', 'system', '%A %e %B %Y', 'string', 'Date format. See PHP strftime function for patterns'),
('antispam_moderation_ttl', NULL, 'antispam', '0', 'integer', 'Antispam Moderation TTL (days)'),
('blowup_style', NULL, 'themes', '', 'string', 'Blow Up  custom style'),
('simpleMenu', NULL, 'system', 'a:2:{i:0;a:3:{s:5:"label";s:4:"Home";s:5:"descr";s:12:"Recent posts";s:3:"url";s:11:"/index.php?";}i:1;a:3:{s:5:"label";s:8:"Archives";s:5:"descr";s:0:"";s:3:"url";s:18:"/index.php?archive";}}', 'string', 'simpleMenu default menu'),
('widgets_nav', 'default', 'widgets', '', 'string', 'Navigation widgets'),
('widgets_extra', 'default', 'widgets', '', 'string', 'Extra widgets'),
('widgets_custom', 'default', 'widgets', '', 'string', 'Custom widgets'),
('antispam_date_last_purge', 'default', 'antispam', '1326305985', 'integer', 'Antispam Date Last Purge (unix timestamp)');

-- --------------------------------------------------------

--
-- Structure de la table `spamrule`
--

CREATE TABLE IF NOT EXISTS `spamrule` (
  `rule_id` bigint(20) NOT NULL,
  `blog_id` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `rule_type` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT 'word',
  `rule_content` varchar(128) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`rule_id`),
  KEY `idx_spamrule_blog_id` (`blog_id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `spamrule`
--

INSERT INTO `spamrule` (`rule_id`, `blog_id`, `rule_type`, `rule_content`) VALUES
(1, NULL, 'word', '/-credit(\\s+|$)/'),
(2, NULL, 'word', '/-digest(\\s+|$)/'),
(3, NULL, 'word', '/-loan(\\s+|$)/'),
(4, NULL, 'word', '/-online(\\s+|$)/'),
(5, NULL, 'word', '4u'),
(6, NULL, 'word', 'adipex'),
(7, NULL, 'word', 'advicer'),
(8, NULL, 'word', 'ambien'),
(9, NULL, 'word', 'baccarat'),
(10, NULL, 'word', 'baccarrat'),
(11, NULL, 'word', 'blackjack'),
(12, NULL, 'word', 'bllogspot'),
(13, NULL, 'word', 'bolobomb'),
(14, NULL, 'word', 'booker'),
(15, NULL, 'word', 'byob'),
(16, NULL, 'word', 'car-rental-e-site'),
(17, NULL, 'word', 'car-rentals-e-site'),
(18, NULL, 'word', 'carisoprodol'),
(19, NULL, 'word', 'cash'),
(20, NULL, 'word', 'casino'),
(21, NULL, 'word', 'casinos'),
(22, NULL, 'word', 'chatroom'),
(23, NULL, 'word', 'cialis'),
(24, NULL, 'word', 'craps'),
(25, NULL, 'word', 'credit-card'),
(26, NULL, 'word', 'credit-report-4u'),
(27, NULL, 'word', 'cwas'),
(28, NULL, 'word', 'cyclen'),
(29, NULL, 'word', 'cyclobenzaprine'),
(30, NULL, 'word', 'dating-e-site'),
(31, NULL, 'word', 'day-trading'),
(32, NULL, 'word', 'debt'),
(33, NULL, 'word', 'digest-'),
(34, NULL, 'word', 'discount'),
(35, NULL, 'word', 'discreetordering'),
(36, NULL, 'word', 'duty-free'),
(37, NULL, 'word', 'dutyfree'),
(38, NULL, 'word', 'estate'),
(39, NULL, 'word', 'favourits'),
(40, NULL, 'word', 'fioricet'),
(41, NULL, 'word', 'flowers-leading-site'),
(42, NULL, 'word', 'freenet'),
(43, NULL, 'word', 'freenet-shopping'),
(44, NULL, 'word', 'gambling'),
(45, NULL, 'word', 'gamias'),
(46, NULL, 'word', 'health-insurancedeals-4u'),
(47, NULL, 'word', 'holdem'),
(48, NULL, 'word', 'holdempoker'),
(49, NULL, 'word', 'holdemsoftware'),
(50, NULL, 'word', 'holdemtexasturbowilson'),
(51, NULL, 'word', 'hotel-dealse-site'),
(52, NULL, 'word', 'hotele-site'),
(53, NULL, 'word', 'hotelse-site'),
(54, NULL, 'word', 'incest'),
(55, NULL, 'word', 'insurance-quotesdeals-4u'),
(56, NULL, 'word', 'insurancedeals-4u'),
(57, NULL, 'word', 'jrcreations'),
(58, NULL, 'word', 'levitra'),
(59, NULL, 'word', 'macinstruct'),
(60, NULL, 'word', 'mortgage'),
(61, NULL, 'word', 'online-gambling'),
(62, NULL, 'word', 'onlinegambling-4u'),
(63, NULL, 'word', 'ottawavalleyag'),
(64, NULL, 'word', 'ownsthis'),
(65, NULL, 'word', 'palm-texas-holdem-game'),
(66, NULL, 'word', 'paxil'),
(67, NULL, 'word', 'pharmacy'),
(68, NULL, 'word', 'phentermine'),
(69, NULL, 'word', 'pills'),
(70, NULL, 'word', 'poker'),
(71, NULL, 'word', 'poker-chip'),
(72, NULL, 'word', 'poze'),
(73, NULL, 'word', 'prescription'),
(74, NULL, 'word', 'rarehomes'),
(75, NULL, 'word', 'refund'),
(76, NULL, 'word', 'rental-car-e-site'),
(77, NULL, 'word', 'roulette'),
(78, NULL, 'word', 'shemale'),
(79, NULL, 'word', 'slot'),
(80, NULL, 'word', 'slot-machine'),
(81, NULL, 'word', 'soma'),
(82, NULL, 'word', 'taboo'),
(83, NULL, 'word', 'tamiflu'),
(84, NULL, 'word', 'texas-holdem'),
(85, NULL, 'word', 'thorcarlson'),
(86, NULL, 'word', 'top-e-site'),
(87, NULL, 'word', 'top-site'),
(88, NULL, 'word', 'tramadol'),
(89, NULL, 'word', 'trim-spa'),
(90, NULL, 'word', 'ultram'),
(91, NULL, 'word', 'v1h'),
(92, NULL, 'word', 'vacuum'),
(93, NULL, 'word', 'valeofglamorganconservatives'),
(94, NULL, 'word', 'viagra'),
(95, NULL, 'word', 'vicodin'),
(96, NULL, 'word', 'vioxx'),
(97, NULL, 'word', 'xanax'),
(98, NULL, 'word', 'zolus');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` varchar(32) COLLATE utf8_bin NOT NULL,
  `user_super` smallint(6) DEFAULT NULL,
  `user_status` smallint(6) NOT NULL DEFAULT '1',
  `user_pwd` varchar(40) COLLATE utf8_bin NOT NULL,
  `user_change_pwd` smallint(6) NOT NULL DEFAULT '0',
  `user_recover_key` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_firstname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_displayname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_url` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `user_desc` longtext COLLATE utf8_bin,
  `user_default_blog` varchar(32) COLLATE utf8_bin DEFAULT NULL,
  `user_options` longtext COLLATE utf8_bin,
  `user_lang` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `user_tz` varchar(128) COLLATE utf8_bin NOT NULL DEFAULT 'UTC',
  `user_post_status` smallint(6) NOT NULL DEFAULT '-2',
  `user_creadt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  `user_upddt` datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
  PRIMARY KEY (`user_id`),
  KEY `idx_user_user_default_blog` (`user_default_blog`) USING BTREE,
  KEY `idx_user_user_super` (`user_super`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`user_id`, `user_super`, `user_status`, `user_pwd`, `user_change_pwd`, `user_recover_key`, `user_name`, `user_firstname`, `user_displayname`, `user_email`, `user_url`, `user_desc`, `user_default_blog`, `user_options`, `user_lang`, `user_tz`, `user_post_status`, `user_creadt`, `user_upddt`) VALUES
('admin', 1, 1, 'fedd98604613dc0f5c3b2f8b96f25e9adaf44578', 0, NULL, '', 'admin', NULL, 'noreply@i-mscp.net', NULL, NULL, NULL, 'a:3:{s:9:"edit_size";i:24;s:14:"enable_wysiwyg";b:1;s:11:"post_format";s:4:"wiki";}', 'fr', 'Europe/London', -2, '2012-01-11 18:19:36', '2012-01-11 18:19:36');

-- --------------------------------------------------------

--
-- Structure de la table `version`
--

CREATE TABLE IF NOT EXISTS `version` (
  `module` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` varchar(32) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Contenu de la table `version`
--

INSERT INTO `version` (`module`, `version`) VALUES
('antispam', '1.3.1'),
('blogroll', '1.2'),
('blowupConfig', '1.1'),
('core', '2.4.1.2'),
('simpleMenu', '1.0'),
('widgets', '3');

--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `fk_category_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `fk_comment_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `link`
--
ALTER TABLE `link`
  ADD CONSTRAINT `fk_link_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `fk_log_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Contraintes pour la table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `fk_media_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `meta`
--
ALTER TABLE `meta`
  ADD CONSTRAINT `fk_meta_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `fk_permissions_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_permissions_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `ping`
--
ALTER TABLE `ping`
  ADD CONSTRAINT `fk_ping_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `fk_post_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_category` FOREIGN KEY (`cat_id`) REFERENCES `category` (`cat_id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_post_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `post_media`
--
ALTER TABLE `post_media`
  ADD CONSTRAINT `fk_media_post` FOREIGN KEY (`post_id`) REFERENCES `post` (`post_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_media` FOREIGN KEY (`media_id`) REFERENCES `media` (`media_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `pref`
--
ALTER TABLE `pref`
  ADD CONSTRAINT `fk_pref_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `setting`
--
ALTER TABLE `setting`
  ADD CONSTRAINT `fk_setting_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `spamrule`
--
ALTER TABLE `spamrule`
  ADD CONSTRAINT `fk_spamrule_blog` FOREIGN KEY (`blog_id`) REFERENCES `blog` (`blog_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `fk_user_default_blog` FOREIGN KEY (`user_default_blog`) REFERENCES `blog` (`blog_id`) ON DELETE SET NULL ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
