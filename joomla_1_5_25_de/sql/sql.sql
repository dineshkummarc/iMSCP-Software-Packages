SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;


-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `banner`
--

CREATE TABLE IF NOT EXISTS `banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Daten für Tabelle `banner`
--

INSERT INTO `banner` (`bid`, `cid`, `type`, `name`, `alias`, `imptotal`, `impmade`, `clicks`, `imageurl`, `clickurl`, `date`, `showBanner`, `checked_out`, `checked_out_time`, `editor`, `custombannercode`, `catid`, `description`, `sticky`, `ordering`, `publish_up`, `publish_down`, `tags`, `params`) VALUES
(1, 1, 'banner', 'OSM 1', 'osm-1', 0, 43, 0, 'osmbanner1.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(2, 1, 'banner', 'OSM 2', 'osm-2', 0, 49, 0, 'osmbanner2.png', 'http://www.opensourcematters.org', '2004-07-07 15:31:29', 1, 0, '0000-00-00 00:00:00', '', '', 13, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(3, 1, '', 'Joomla!', 'joomla', 0, 18, 0, '', 'http://www.joomla.org', '2006-05-29 14:21:28', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla!, das bekannteste und meistgenutzte Open-Source-CMS-Projekt der Welt.', 14, '', 0, 1, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(4, 1, '', 'JoomlaCode', 'joomlacode', 0, 18, 0, '', 'http://joomlacode.org', '2006-05-29 14:19:26', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomlaCode - Entwicklung und Verbreitung einfach gemacht.', 14, '', 0, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(5, 1, '', 'Joomla!-Erweitungen', 'joomla-erweitungen', 0, 13, 0, '', 'http://extensions.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nJoomla!-Komponenten, Module, Plugins und Übersetzungen zentral.', 14, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(6, 1, '', 'Joomla!-Shop', 'joomla-shop', 0, 13, 0, '', 'http://shop.joomla.org', '2006-05-29 14:23:21', 1, 0, '0000-00-00 00:00:00', '', '<a href="{CLICKURL}" target="_blank">{NAME}</a>\r\n<br/>\r\nFür alle Ihre Joomla!-Artikel.', 14, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(7, 1, '', 'Joomla! Promo-Artikel', 'joomla-promo-artikel', 0, 9, 1, 'shop-ad.jpg', 'http://shop.joomla.org', '2007-09-19 17:26:24', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', ''),
(8, 1, '', 'Joomla!-Bücher', 'joomla-buecher', 0, 9, 0, 'shop-ad-books.jpg', 'http://shop.joomla.org/amazoncom-bookstores.html', '2007-09-19 17:28:01', 1, 0, '0000-00-00 00:00:00', '', '', 33, '', 0, 4, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bannerclient`
--

CREATE TABLE IF NOT EXISTS `bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `bannerclient`
--

INSERT INTO `bannerclient` (`cid`, `name`, `contact`, `email`, `extrainfo`, `checked_out`, `checked_out_time`, `editor`) VALUES
(1, 'Open Source Matters', 'Administrator', 'admin@opensourcematters.org', '', 0, '00:00:00', NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bannertrack`
--

CREATE TABLE IF NOT EXISTS `bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Daten für Tabelle `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `title`, `name`, `alias`, `image`, `section`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `editor`, `ordering`, `access`, `count`, `params`) VALUES
(1, 0, 'Aktuell', '', 'aktuelle-nachrichten', 'taking_notes.jpg', '1', 'left', 'Die aktuellen Nachrichten vom Joomla!-Team', 1, 0, '0000-00-00 00:00:00', '', 1, 0, 1, ''),
(2, 0, 'Links rund um Joomla!', '', 'links-rund-um-joomla', 'clock.jpg', 'com_weblinks', 'left', 'Eine Auswahl an Weblinks, die mit dem Joomla!-Projekt zu tun haben.', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(3, 0, 'Kurzmeldungen', '', 'kurzmeldungen', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', '', 2, 0, 0, ''),
(4, 0, 'Joomla!', '', 'joomla', '', 'com_newsfeeds', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(5, 0, 'Freie und Open Source-Software', '', 'freie-und-open-source-software', '', 'com_newsfeeds', 'left', 'Lesen Sie das Neueste über Freie und Open Source Software von einigen der führenden Verfechtern.', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(6, 0, 'Related Projects', '', 'related-projects', '', 'com_newsfeeds', 'left', 'Joomla basiert auf andere Freie und Open Source Projekte und arbeitet mit vielen zusammen. Wir haben einige ausgewählt, damit Sie auf dem Laufenden bleiben.', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(12, 0, 'Kontakte', '', 'kontakte', '', 'com_contact_details', 'left', 'Details zu den Kontakten dieser Webseite', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(13, 0, 'Joomla', '', 'joomla', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(14, 0, 'Text-Werbung', '', 'text-werbung', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 0, 0, 0, ''),
(15, 0, 'Merkmale', '', 'merkmale', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 6, 0, 0, ''),
(17, 0, 'Benefits', '', 'benefits', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(18, 0, 'Plattformen', '', 'plattformen', '', 'com_content', 'left', '', 0, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(19, 0, 'Andere Quellen', '', 'andere-quellen', '', 'com_weblinks', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(29, 0, 'Das CMS', '', 'das-cms', '', '4', 'left', 'Information über die Software hinter Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(28, 0, 'Erfahrene Benutzer', '', 'erfahrene-benutzer', '', '3', 'left', 'Fragen von Benutzer, die auf Joomla 1.5 wechseln möchten, sind gerne willkommen', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, ''),
(25, 0, 'Das Projekt', '', 'das-projekt', '', '4', 'left', 'Allgemeine Fakten über Joomla!', 1, 65, '2007-06-28 14:50:15', NULL, 1, 0, 0, ''),
(27, 0, 'Neu bei Joomla', '', 'neu-bei-joomla', '', '3', 'left', 'Fragen für neue Benutzer von Joomla!', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(30, 0, 'Die Community', '', 'die-community', '', '4', 'left', 'Millionen an Joomla!-Benutzern und Websites', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, ''),
(31, 0, 'Allgemein', '', 'allgemein', '', '3', 'left', 'Allgemeine Fragen zum Joomla! CMS', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, ''),
(32, 0, 'Sprachen', '', 'sprachen', '', '3', 'left', 'Fragen bezüglich der Übersetzung und zu Sprachen', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, ''),
(33, 0, 'Joomla! Promo', '', 'joomla-promo', '', 'com_banner', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `components`
--

CREATE TABLE IF NOT EXISTS `components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Daten für Tabelle `components`
--

INSERT INTO `components` (`id`, `name`, `link`, `menuid`, `parent`, `admin_menu_link`, `admin_menu_alt`, `option`, `ordering`, `admin_menu_img`, `iscore`, `params`, `enabled`) VALUES
(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1),
(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1),
(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1),
(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1),
(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1),
(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1),
(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1),
(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1),
(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1),
(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1),
(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1),
(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1),
(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1),
(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html', 1),
(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\nfeed_summary=0\n\n', 1),
(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1),
(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1),
(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'administrator=de-DE\nsite=de-DE', 1),
(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1),
(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1),
(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1),
(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1),
(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1),
(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1),
(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1),
(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1),
(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `contact_details`
--

CREATE TABLE IF NOT EXISTS `contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Daten für Tabelle `contact_details`
--

INSERT INTO `contact_details` (`id`, `name`, `alias`, `con_position`, `address`, `suburb`, `state`, `country`, `postcode`, `telephone`, `fax`, `misc`, `image`, `imagepos`, `email_to`, `default_con`, `published`, `checked_out`, `checked_out_time`, `ordering`, `params`, `user_id`, `catid`, `access`, `mobile`, `webpage`) VALUES
(1, 'Name', 'name', 'Position', 'Straße', 'Stadt/Bezirk', 'Bundesland/Kanton', 'Staat', 'PLZ', 'Telefon', 'Fax', 'Weitere Infos', 'powered_by.png', 'top', 'email@email.com', 1, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\r\nshow_position=1\r\nshow_email=0\r\nshow_street_address=1\r\nshow_suburb=1\r\nshow_state=1\r\nshow_postcode=1\r\nshow_country=1\r\nshow_telephone=1\r\nshow_mobile=1\r\nshow_fax=1\r\nshow_webpage=1\r\nshow_misc=1\r\nshow_image=1\r\nallow_vcard=0\r\ncontact_icons=0\r\nicon_address=\r\nicon_email=\r\nicon_telephone=\r\nicon_fax=\r\nicon_misc=\r\nshow_email_form=1\r\nemail_description=1\r\nshow_email_copy=1\r\nbanned_email=\r\nbanned_subject=\r\nbanned_text=', 0, 12, 0, '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content`
--

CREATE TABLE IF NOT EXISTS `content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Daten für Tabelle `content`
--

INSERT INTO `content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(1, 'Willkommen bei Joomla!', 'willkommen-bei-joomla', '', '<div align="left"><strong>Joomla! ist ein freies Open-Source-Framework und Content-Publishing-System, das geschaffen wurde, um damit schnell interaktive, mehrsprachige Websites, Online-Communitys, Medienportale, Blogs und eCommerce-Anwendungen zu erstellen.</strong></div>\r\n<p><img src="images/stories/powered_by.png" border="0" alt="Joomla! Logo" title="Beschriftungsbeispiel" hspace="6" vspace="0" width="165" height="68" align="left" />Joomla! bietet eine benutzerfreundliche Oberfläche, die das Verwalten und Publizieren großer Mengen an HTML, Dokumenten und Mediendaten vereinfacht. Joomla! wird von Unternehmen jeder Größe für öffentliche Websites, Intranets und Extranets verwendet und wird durch eine Gemeinschaft von tausenden Anwendern unterstützt.</p>', '<p>Die vollständig dokumentierte Sammlung an Entwickler-Ressourcen gibt Ihnen die Möglichkeit, alle Aspekte einer Joomla!-Website anzupassen. Dies beinhaltet die Anzeige, das Layout, die Administration und die zügige Integration von Anwendungen Dritter.</p>\r\n<p>Joomla! hat ein reichhaltiges Erbe und wurde bereits mehrfach zum CMS-König gekrönt. Mit der mehr Power unter seiner Haube schaltet Joomla! jetzt einen Gang höher. Es bietet Entwicklern mehr Leistung während die Benutzerfreundlichkeit insgesamt noch besser wird. Für all jene, die sich bessere Erweiterbarkeit gewünscht haben, lässt Joomla! 1.5  diesen Wunsch nun wahr werden.</p><p>Ein sehr aktives Entwicklerteam legt Ihnen ein neues Framework und die grundlegende Umgestaltung für ein aufregendes "CMS der nächsten Generation" in die Hände. Egal ob Sie Systemarchitekt oder Neuling sind: Joomla! bringt sie auf die nächste Stufe der Bereitstellung von Inhalten.</p><p>"Mehr als ein CMS" haben wir zum Schlachtruf erhoben, denn die neue Joomla!-Programmierschnittstelle (API) ist unglaublich leistungsfähig und flexibel. Sie haben die Freiheit jeden Weg einzuschlagen, den Ihr kreativer Geist hervorbringt. Joomla! hilft Ihnen, Ihre Ziele jetzt noch einfacher zu erreichen als jemals zuvor.</p><p>Sie denken an Web-Publishing? Denken Sie Joomla!</p>', 1, 1, 0, 1, '2006-10-12 10:00:00', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2006-01-03 01:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 28, 0, 1, '', '', 0, 92, 'robots=\nauthor='),
(2, 'Kurzmeldung 1', 'kurzmeldung-1', '', '<p>Mit Joomla! ist es einfach eine beliebige Website zu erstellen. Was immer Sie machen möchten, ob es nur eine Web-Visitenkarte werden soll oder ob Sie eine große Online-Community erstellen möchten, Joomla! erlaubt Ihnen, Ihre Träume in wenigen Minuten zu verwirklichen und bietet Ihnen die Möglichkeit Funktionalitäten da einzusetzen, wo Sie sie brauchen. Die Vielzahl an Erweiterungen wird Ihrer Site erlauben zu wachsen und Ihren Besuchern neue Funktionen bieten, die Ihr Ansehen im gesamten Internet erhöhen kann.</p>', '', 1, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 3, '', '', 0, 1, 'robots=\nauthor='),
(3, 'Kurzmeldung 2', 'kurzmeldung-2', '', '<p>Das Wichtigste an einer Website ist die Veränderung! Mit Joomla! ist es leicht neue Beiträge zu schreiben, Bilder, Videos und vieles mehr einzufügen und einfach zu verändern. Administratoren können Inhalte direkt verändern und verwalten, indem sie den "Bearbeiten"-Link anklicken. Auch Webmaster können Inhalte über eine grafische Administratoren-Oberfläche bearbeiten, mit der Sie die volle Kontrolle über die Website besitzen.</p>', '', 1, 1, 0, 3, '2004-08-09 22:30:34', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2004-08-09 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 4, '', '', 0, 0, 'robots=\nauthor='),
(4, 'Kurzmeldung 3', 'kurzmeldung-3', '', '<p>Mit einer Sammlung von Hunderten von kostenlosen Erweiterungen können Sie Ihrer Seite den Teil hinzufügen, der Ihr noch fehlt. Schauen Sie sich noch heute die Sammlung von <a href="http://extensions.joomla.org/" target="_blank">Joomla!-Erweiterungen</a>  an. </p>', '', 1, 1, 0, 3, '2004-08-10 06:30:34', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2004-08-09 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 5, '', '', 0, 1, 'robots=\nauthor='),
(5, 'Joomla!-Lizenzrichtlinien', 'joomla-lizenzrichtlinien', '', '<p>Diese Website läuft mit <a href="http://www.joomla.org/">Joomla!</a>. Die Beispielinhalte, die zusammen mit Joomla! vertrieben werden, unterliegen der <a href="http://docs.joomla.org/JEDL" target="_blank" lang="en">Joomla! Electronic Documentation License</a>. Für sonstigen Inhalte und Daten, inklusive Daten die auf dieser Website nach der Installation eingegeben wurden, liegt das Urheberrecht bei den jeweiligen Urhebern.</p><p>Wenn Sie Joomla! vertreiben, kopieren oder abändern wollen, dann dürfen Sie das entsprechend den Bedingungen der <a href="http://www.gnu.de/documents/gpl.de.html" lang="en">GNU General Public License</a> (GPL) gerne tun. Wenn Sie diese Lizenzbedingungen nicht kennen, empfehlen wir Ihnen die Lektüre des Abschnitts &bdquo;<a href="http://www.gnu.de/documents/gpl.de.html">Wie Sie diese Bedingungen auf Ihre eigenen, neuen Programme anwenden können</a>&ldquo; sowie den (englischen) &bdquo;<a href="http://www.gnu.org/licenses/gpl-faq.html" lang="en" title="Fragen und Antworten zur GNU General Public License">GNU General Public License FAQ</a>&ldquo;.</p><p>Joomla! stand seit jeher unter der GPL.</p>', '', 1, 4, 0, 25, '2008-11-13 01:15:08', 62, '', '0000-00-00 00:00:00', 62, 0, '0000-00-00 00:00:00', '2008-11-13 01:15:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 2, '', '', 0, 98, 'robots=\nauthor='),
(6, 'Wir sind Freiwillige', 'wir-sind-freiwillige', '', '<p>Das Joomla!-Kernteam besteht aus freiwilligen Entwicklern, Kreativen, Administratoren und Managern. Gemeinsam mit zahlreichen Mitgliedern aus Arbeitsgruppen haben sie Joomla in relativ kurzer Zeit weit vorangebracht.  Diese gutgeölte Maschine wird oft kopiert, aber nie übertroffen. Das Joomla!-Projekt hat sehr talentierte Leute, die den Open-Source-Begriff in die erste Reihe der Industriestandards bringen. Joomla! 1.5 ist ein großer Schritt vorwärts und repräsentiert die spannendste Joomla!-Version in der Geschichte des Projekts. </p>', '<p>Das Projekt hält die Balance zwischen erfahrenenen und bekannten Entwicklern wie Andrew Eddie (der den Weg zum frühen Erfolg von Mambo ebnete) und den jüngeren Stars wie Johan Janssens und Louis Landry. Dieses dynamische Trio hat das Projekt durch neues Talent weiter gestärkt. In der Entwicklung von Open-Source-Software wird oft über den "Bus-Faktor" gewitzelt. Projekte, an denen nur einer programmiert, gelten als bedroht, wenn der Hauptentwickler von einem Bus überfahren werden sollte.</p>', 1, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:10:35', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 8, 0, 2, '', '', 0, 54, 'robots=\nauthor='),
(7, 'Halt'' dich an den Code!', 'halt-dich-an-den-code', '', 'Um die Veröffentlichung des Quellcodes abzusichern, begann Wilco Jansen damit, Johan Janssens, einem der Hauptentwickler, eine Flasche Rum zu schicken. Johan, der mit dem ersten "Fluch der Karibik"-Film eine Vorliebe für Rum entwickelt hatte, fraß den Köder, mixte ihn mit Cola und heraus kam die neueste Version 1.5. Getreu dem Motto der Karibikpiraten, "Halt dich an den Code", sieht es ganz danach aus, als ob Piratengeschwätz noch eine große Rolle bei der zukünftigen Entwicklung von Joomla! spielen wird!', '<strong><br />Übersetzung für Euch wahre Piraten:<br /></strong>Erster Maat Wilco is'' nach vorn'' geflüchtet und is loosgahn Buddels mit Rum an''n gemeinsam'' Käpt''n Johan zu schick''n. Johann, der seit ''m ersten "Fluch der Karibik" Film een Vorleev für so''n Rum hat, is dem Köder draufgegang'', hat Melasse ünnermuschelt und dabei rutkommen is die neuste 1.5 Ausgabe. Getreu dem Motto von de Karibikpirat''n, "Halt dich an den Code", süht dat ganz danach uut, dass Piratenschnack noch een groote Roll bei die zukünftige Entwicklung von Joomla! speeln ward!', 1, 1, 0, 1, '2004-07-07 12:00:00', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2004-07-07 11:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 12, 0, 3, '', '', 0, 55, 'robots=\nauthor='),
(8, 'Die Legende von Buca di Beppo', 'die-legende-von-buca-di-beppo', '', '<p>Die Legende von Buca di Beppo bezieht sich auf ein Geheimtreffen der Chefentwickler in einem mafia-mäßigen Restaurant in den Vereinigten Staaten.  ''Buca'' war schon mehrfach der Katalysator zur Lösung von wichtigen (und in einigen Fällen sogar als unüberwindbar geltenden) Entwicklungshürden.</p><p>Mit üppigem Essen und Wein in Strömen scheinen die kreativen Sinne der Entwickler anscheinend schärfer und schneller, und Probleme werden gelöst. Louis Landry meinte sogar, in der Nähe von Bucas zu wohnen, könnte zu schnelleren Entwicklungszyklen führen.</p><p>Hmmm. Ein Restaurant, voller Fotos von bekannten Mafia-Filmen wie ''Der Pate'' und angelehnten Geigenkästen. Gibt einem zu denken, oder?  </p><p>Wenn Joomla! ein kommerzielles Projekt wäre, sind wir sicher, dass das Management in Erwägung ziehen würde, ein Bucas ins Firmengebäude einzubauen!</p><p>Masterchef trifft Bugsy Landry. </p>', '', 1, 1, 0, 1, '2004-04-12 09:54:06', 62, '', '2007-11-08 12:14:09', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 4, '', '', 0, 13, 'robots=\nauthor='),
(9, 'Millionenfaches Lächeln', 'millionenfaches-laecheln', '', '<p>Das Joomla!-Team hat Millionen guter Gründe wegen Joomla! 1.5 zu lächeln: In der aktuellen Fassung wurde es millionenfach heruntergeladen und erreicht damit eine Popularität von bislang ungekanntem Ausmaß. Die Code-Basis wurde nahezu komplett überarbeitet. Die Benutzerführung ist immer noch extrem raffiniert, doch für Entwickler ist die neue API geradezu ein Traum. Ein ordentliches Framework für echte PHP-Architekten, die das Beste vom Besten suchen.</p><p>Wenn Sie ein ehemaliger Benutzer von Mambo oder Joomla! 1.0 sind, ist Version 1.5 für Sie aus mehreren Gründen die Zukunft der Content-Management Systeme. Joomla 1.5 ist viel leistungsfähiger, flexibler, sicherer und intuitiver. Unsere Entwickler und Schnittstellen-Designer haben unzählige Stunden daran gearbeitet, damit Version 1.5 zur besten und aufregendsten Veröffentlichung im ganzen CMS-Universum wird.</p><p>Also los! Holen Sie sich Ihre KOSTENLOSE Ausgabe von Joomla! noch heute und erzählen Sie allen von diesem bahnbrechenden Projekt.</p>', '', 1, 1, 0, 1, '2004-07-07 09:54:06', 62, '', '2007-11-08 12:16:19', 62, 0, '0000-00-00 00:00:00', '2004-07-06 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 5, '', '', 0, 23, 'robots=\nauthor='),
(10, 'Wie stelle ich Joomla! auf meine Sprache um?', 'wie-stelle-ich-joomla-auf-meine-sprache-um', '', '<h4>Allgemein</h4><p>In Joomla! 1.5 können alle Benutzeroberflächen lokalisiert werden. Das beinhaltet die Installation, die Administration im Back-End und die Website des Front-End.</p><p>Die Grundversion von Joomla! 1.5 wird mit mehreren Sprachen ausgeliefert, die Sie während der Installation wählen können. Weitere Sprachdateien für Website und Administration können Sie, mit Ausnahme der Standardsprache Englisch, nach der Installation hinzufügen. Links zu diesen Sprachpaketen finden Sie weiter unten.</p>', '<p>Die Übersetzungs-Teams für Joomla! 1.5 haben einige vollständige Installationspakete erstellt, in den Website, Administration und die Beispieldaten in ihre jeweilige Sprache übersetzt wurden. Diese lokalisierten Ausgaben erhalten Sie über die jeweiligen Team-Projekte auf <a href="http://joomlacode.org" title="Das Joomla! Code Repository">JoomlaCode</a>.</p><h4>Wie installiere ich die Sprachpakete?</h4><ul><li>Laden Sie zunächst die Sprachpakete in der benötigten Sprache für die Administration und die Website herunter.</li><li>Installieren Sie jedes Paket einzeln über das Menü Erweiterungen &gt;Installieren/Deinstallieren und der darin enthaltenen Funktion "Paketdatei hochladen".</li><li>Wechseln Sie zu Erweiterungen &gt;Sprachen und wählen Sie den Reiter Site oder Administrator. Dort markieren Sie die gewünschte Sprache und klicken in der Symbolleiste auf die Schaltfläche Standard.</li></ul><h4>Wie wähle ich Sprachen aus?</h4><ul><li>Die Standardsprache kann separat für die Administration und die Website gesetzt werden.</li><li>Zusätzlich können Benutzer ihre bevorzugte Sprache jeweils für die Website und die Administration einstellen. Diese Einstellung wird beim Anmelden übernommen.</li><li>Bei der Anmeldung in der Administration kann die Sprache für die jeweilige Sitzung festgelegt werden.</li></ul><h4>Wo finde ich Sprachpakete und übersetzte Ausgaben?</h4><p><em>Bitte bedenken Sie, dass Joomla! 1.5 noch neu ist und entsprechende Sprachpakete für diese Version eventuell noch nicht freigegeben wurden.</em> </p><ul><li>Das <a href="http://joomlacode.org/gf/project/jtranslation/" target="_blank" title="Offizielle Übersetzungen">Joomla! Accredited Translations Project</a> dient als gemeinsamer Speicher der offiziellen Sprachpakete. Diese wurden von den einzelnen Teams der Arbeitsgruppe &bdquo;Joomla! Translation&ldquo; erstellt.</li><li>Die <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1837/Itemid,35/" target="_blank">Joomla! Extensions Website - Translations</a> (Übersetzungen)</li><li><a href="http://dev.joomla.org/content/view/42/66/" target="_blank" title="Teams in der Arbeitsgruppe Übersetzungen">Liste der Übersetzungsteams und Partner-Websites für Joomla! 1.5</a></li></ul><h4>Mehrsprachige Websites</h4><p>Joomla! kann für die Ausgabe mehrsprachiger Websites angepasst werden. Hierzu ist die Installation der Komponenten Joom-Fish erforderlich.</p><ul><li> <a href="http://extensions.joomla.org/component/option,com_mtree/task,listcats/cat_id,1838/Itemid,35/" target="_blank" title="Joom-Fish">Die Joomla! Extension Website - Multi-lingual Content</a> (mehrsprachige Inhalte)</li></ul>', 1, 3, 0, 32, '2006-09-30 14:06:37', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2006-09-29 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 8, 0, 5, '', '', 0, 9, 'robots=\nauthor='),
(11, 'Wie upgrade/aktualisiere ich Joomla! 1.5?', 'Wie-upgrade-aktualisiere-ich-Joomla-15', '', '<p>Joomla 1.5 unterstützt keine Updatemöglichkeit von vorherigen Versionen. Eine bestehenden Website auf Joomla 1.5 zu aktualisieren bedeutet, eine neue, leere Website mit Joomla 1.5 zu erstellen und danach den bestehenden Inhalt von der alten Website zu übertragen. Diese Migration von Inhalten lässt sich nicht eins-zu-eins umsetzen und benötigt einige Konvertierungen und Anpassungen.</p> <p>Es gibt zwei Möglichkeiten diese Migration durchzuführen:</p>', ' <div id="post_content-107"><li>Es gibt eine automatisierte Migrationsmethode über eine spezielle Komponente, mit der Sie ein Migrationpaket aus der alten Website (Mambo 4.5.x bis zu Joomla 1.0.x) erstellen, und eine intelligente Importfunktion während der Installation von Joomla 1.5, die die nötigen Konvertierungen und Anpassungen während des Installationsprozesses vornimmt.</li> <li>Die Migration kann aber auch manuell durchgeführt werden. Dazu müssen alle benötigten Tabellen exportiert, von Hand konvertiert und angepasst und nach der Installation der neuen Website die Inhalte importiert werden.</li>  <p><!--more--></p> <h4><strong> Automatisierte Migration</strong></h4>  <p>Dieser Prozess besteht aus 2 Schritten und 2 Werkzeugen. Das erste Werkzeug ist eine Migrationskomponente namens &quot;com_migrator&quot;. Diese Komponente stammt von Harald Baer und basiert auf seiner Komponente &quot;eBackup&quot;. Der Migrator muss auf der alten Webseite installiert werden und, wenn aktiviert, bereitet er den benötigten Export der Dateien der alten Website vor. Das zweite Werkzeug ist im Installationsprozess von Joomla! 1.5 enthalten. Die exportierte Datensicherung wird auf die neue Website hochgeladen und sämtliche Konvertierungen und Anpassungen werden während des Installationsprozesses automatisch durchgeführt.</p> <p><u><br /> Schritt 1 - Mit com_migrator die Dateien der alten Website exportieren:</u></p> <li>Installieren Sie die com_migrator-Komponente auf der <u><strong>alten</strong></u> Website. Sie können com_migrator auf der <a href="http://joomlacode.org/gf/project/pasamioprojects/frs/" target="_blank">JoomlaCode-Entwicklerseite</a> finden.<br /></li> <li>Wählen Sie in der Administration die Komponente aus.</li> <li>Klicken Sie auf &quot;Dump it&quot;. Drei gzip-Export-Skripte werden erstellt. Das erste enthält ein vollständiges Backup der alten Website. Das zweite enthält den zu migrierenden Inhalt sämtlicher Kern-Komponenten, die in die neue Website importiert werden. Das dritte Skript enthält ein Backup aller Tabellen von Drittanbieter-Komponenten.</li> <li>Klicken Sie bei der jeweiligen Exportdatei auf die Schaltfläche "Download" und speichern Sie diese lokal auf Ihrem Rechner.</li> <li>Sie können mehrere Exportdatensätze erstellen.</li> <li>Die exportierten Dateien werden nicht verändert und die ursprüngliche Zeichensatz-Kodierung wird beibehalten. Deshalb ist com_migrator auch das empfohlene Werkzeug für die manuelle Migration.</li> <p><u><br /> Schritt 2 - Migrationsfunktion bei der Installation von Joomla! 1.5 nutzen, um Dateien zu importieren und zu konvertieren:</u></p><p>Hinweis: Diese Funktion benötigt die &quot;iconv&quot;-Funktion in PHP um die Zeichenkodierung zu konvertieren. Falls &quot;iconv&quot; nicht vorhanden ist, wird eine Warnmeldung ausgegeben.<br /></p> <li>In Schritt 6 der Installation - Konfiguration - wählen Sie im Bereich ''Beispieldaten laden, Inhalte aus Sicherung oder Migration wieder herstellen'' die Option ''Lade Migrationsskript''.</li> <li>Geben Sie das Tabellenpräfix an, das Sie während des Dateienexports verwendet haben, zum Beispiel sind &quot;jos_&quot; oder &quot;jos__&quot; zulässige Werte.</li> <li>Wählen Sie die Zeichenkodierung der exportierten Dateien aus der Auswahlliste. Dies sollte die Zeichenkodierung sein, die Sie auf den Seiten der alten Website verwendet haben  (zu finden in den _ISO-Variablen in der Sprachdatei oder im Browser unter Eigenschaften/Zeichenkodierung/Quelltext).</li> <li>Wählen Sie auf Ihrem Rechner die Exportdatei aus und migrieren Sie diese mit einem Klick auf &quot;Hochladen und ausführen&quot;.</li> <li>Eine Erfolgsmeldung sollte angezeigt werden oder eine Liste der Datenbankfehler.</li> <li>Füllen Sie die restlichen benötigten Felder in Schritt 6 - Konfiguration aus, wie &quot;Website-Name&quot; und die Angaben für den Administrator, und führen Sie den letzten Installationsschritt durch. (Die Administrator-Angaben werden ignoriert, da der Datenimport Priorität hat. Vergessen Sie nicht den Admin-Name und Passwort der alten Webseite!)</li> <p><u><br /></u></p></div>', 1, 3, 0, 28, '2006-09-30 20:27:52', 62, '', '2007-11-08 11:01:01', 62, 0, '0000-00-00 00:00:00', '2006-09-29 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 8, 0, 3, '', '', 0, 13, 'robots=\nauthor='),
(12, 'Warum nutzt Joomla! 1.5 utf-8-Zeichenkodierung?', 'warum-nutzt-joomla-15-utf-8-zeichenkodierung', '', '<p>Nun... wie wäre es, wenn Sie sich nie mehr mit dem Einstellen von Zeichenkodierungen herumschlagen müssten?</p><p>Wollte Sie schon einmal verschiedene Sprachen auf einer Seite oder Website anzeigen und irgendetwas erschien immer als Kauderwelsch?</p><p>Mit utf-8 (einer Variante von Unicode) können Glyphen (Zeichen) von nahezu allen Sprachen mit nur einer Zeichenkodierung dargestellt werden.</p>', '', 1, 3, 0, 31, '2006-10-05 01:11:29', 62, '', '2007-11-08 11:39:51', 62, 0, '0000-00-00 00:00:00', '2006-10-03 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 7, 0, 8, '', '', 0, 28, 'robots=\nauthor='),
(13, 'Was ist mit den Lokalisierungs-Einstellungen geschehen?', 'was-ist-mit-den-lokalisierungs-einstellungen-geschehen', '', 'Diese sind jetzt in der Sprachdatei  &lt;lang&gt;.xml in den Sprach-Metadaten-Einstellungen definiert. Wenn Sie Lokalisierungsprobleme haben, etwa bei der Datumsdarstellung, dann können Sie die Einträge im ''locale''-Tag überprüfen/ändern. Beachten Sie, dass Lokalisierungseinstellungen mehrfach gesetzt sein können und der Host normalerweise die erste gefundene Einstellung verwenden wird.', '', 1, 3, 0, 28, '2006-10-06 16:47:35', 62, '', '2007-11-04 23:12:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 2, '', '', 0, 10, 'robots=\nauthor='),
(14, 'Wozu dient die FTP-Ebene?', 'wozu-dient-die-ftp-ebene', '', '<p>Die FTP-Ebene ermöglicht Datei-Operationen (wie die Installation von Erweiterungen oder die Aktualisierung der Hauptkonfiguration), ohne sämtliche Dateien und Verzeichnisse beschreibbar zu machen, was insbesondere bei Linux und anderen Unix-basierten Systemen hinsichtlich der Dateirechte ein Problem war. Das erleichtert dem Site-Administrator das Leben ungemein und erhöht die Sicherheit der Site.</p><p>Sie können die Verzeichnisberechtigungen überprüfen, indem Sie unter ''''Hilfe-&gt;System Info" und dann "Verzeichnisberechtigung" anwählen. Mit der FTP-Ebene läuft Joomla! selbst dann, wenn alle Verzeichnise rot markiert sind.</p><p>Hinweis: Die FTP-Ebene wird auf einem Windows-Host/Server nicht benötigt.</p>', '', 1, 3, 0, 31, '2006-10-06 21:27:49', 62, '', '2007-05-03 09:39:48', 62, 0, '0000-00-00 00:00:00', '2006-10-05 16:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 6, '', '', 0, 22, 'robots=\nauthor='),
(15, 'Funktioniert Joomla! 1.5 mit PHP Safe Mode On?', 'funktioniert-joomla-15-mit-php-safe-mode-on', '', '<p>Ja, das geht! Das ist eine bedeutende Sicherheitsverbesserung.</p><p>Der Safe Mode schränkt die Rechte von PHP-Dateien so ein, dass diese nur Funktionen mit Dateien/Verzeichnissen ausführen können, bei denen der Besitzer derselbe ist wie der PHP-Benutzer. Meistens ist dieser PHP-Benutzer Apache. Da Dateien meistens von Joomla! oder über den FTP-Zugang erstellt werden, ist es durch die Kombination von PHP-Dateifunktionen und der FTP-Ebene möglich, den Safe Mode zu verwenden.</p>', '', 1, 3, 0, 31, '2006-10-06 19:28:35', 62, '', '2007-11-08 11:26:51', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 4, '', '', 0, 7, 'robots=\nauthor='),
(16, 'Nur noch ein Fenster zur Bearbeitung! Wie erstelle ich den "Weiterlesen..."-Link?', 'nur-noch-ein-fenster-zur-bearbeitung-wie-erstelle-ich-den-weiterlesen-link', '', '<hr class="system-pagebreak" /><p>Dies funktioniert nun durch Einfügen eines Tags (die entsprechende Schaltfläche befindet sich unter dem Editor-Bereich). Eine gestrichelte Linie erscheint im Text, um die Zeilenbruchstelle anzudeuten, wo der "Weiterlesen..."-Text sichtbar sein wird. Ein neues Plugin kümmert sich um den Rest.</p><p> Es darf an dieser Stelle erwähnt werden, dass es keine negative Auswirkung auf migrierte Inhalte von früheren Websites hat. Die neue Umsetzung ist voll abwärtskompatibel.</p>', '', 1, 3, 0, 28, '2006-10-06 19:29:28', 62, '', '2007-11-08 11:03:30', 62, 0, '0000-00-00 00:00:00', '2006-10-05 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 4, '', '', 0, 19, 'robots=\nauthor='),
(17, 'Meine MySQL-Datenbank unterstützt nicht utf-8. Habe ich ein Problem?', 'meine-mysql-datenbank-unterstuetzt-nicht-utf-8-habe-ich-ein-problem', '', 'Nein, haben Sie nicht. Versionen von MySQL, die älter als Versionsnummer 4.1 sind, unterstützen kein utf-8. Joomla! 1.5 hat aber aus Abwärtskompatibilitätsgründen Vorkehrungen getroffen und kann utf-8 auch mit älteren Datenbanken verwenden. Lassen Sie das Installationskript alle Einstellungen vornehmen. Es ist deshalb nicht nötig, die Datenbank zu verändern (hinsichtlich des Zeichensatzes, der Kollation oder anderem).', '', 1, 3, 0, 31, '2006-10-07 09:30:37', 62, '', '2007-11-08 11:39:01', 62, 0, '0000-00-00 00:00:00', '2006-10-05 20:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 8, 0, 7, '', '', 0, 8, 'robots=\nauthor='),
(18, 'Joomla!-Features', 'joomla-features', '', '<h4 class="highlight">Joomla!-Features:</h4><ul><li>Komplett datenbankbasierte Website-Engine </li><li>Neuigkeiten-, Produkt- und/oder Dienstleistungsbereiche sind leicht zu bearbeiten und zu verwalten</li><li>Themenbereiche können von Autoren hinzugefügt werden </li><li>Voll anpassbares Layout inklusive linker, zentrierter und rechter Menü-Kästen </li><li>Browser-Upload von Bildern, die im gesamten System genutzen werden können </li><li>Dynamisches Foren-, Umfrage- und Bewertungssystem mit sofort lieferbaren Resultaten </li><li>Läuft auf den Plattformen Linux, FreeBSD, Mac OS X Server, Solaris und AIX ', '</li></ul><h4>Umfassende Administration:</h4><ul><li>Reihenfolge der Objekte ändern, inklusiv Nachrichten, FAQs, Beiträge usw.</li><li>Zufallsgesteuerter Generator für Kurzmeldungen </li><li>Modul zum standortunabhängigen Einreichen von Nachrichten, Beiträgen, FAQs und Links durch Autoren</li><li>Objektstandhierarchie - so viele Bereiche, Abteilungen und Seiten, wie Sie wollen </li><li>Bildbibliothek - Speichern Sie alle Ihre von Grafiken und Dokumente wie PNG, PDF, DOC, XLS, GIF, JPEG etc. </li><li>Automatischer Pfad-Finder: Setzen Sie ein Bild und lassen Sie Joomla! den zugehörigen Link setzen. </li><li>Newsfeed-Verwaltung. Wählen Sie aus über 360 Newsfeeds aus der ganzen Welt </li><li>E-Mail-, Druck- und PDF-Funktion für jeden Beitrag </li><li>Eingebetteter Texteditor, der ähnlich wie einfache Textbearbeitungsprogramme aufgebaut ist</li><li>Benutzerabhängiges Look & Feel </li><li>Umfragen - beliebig viele, auch pro Seite </li><li>Eigene Seitenmodule. Laden Sie sich angepasste oder anpassbare Seitenmodule runter, um Ihre Website aufzupeppen</li><li>Template-Verwaltung. Laden Sie Layout-Vorlagen herunter und installieren Sie diese in wenigen Sekunden</li><li>Layoutvorschau. Sehen Sie, wie die Inhalt aussehen, bevor sie veröffentlicht werden.</li><li>Bannerverwaltung. Verdienen Sie Geld mit Ihrer Website</li></ul>', 1, 4, 0, 29, '2006-10-08 23:32:45', 62, '', '2007-11-04 16:38:53', 62, 0, '0000-00-00 00:00:00', '2006-10-07 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 10, 0, 4, '', '', 0, 59, 'robots=\nauthor='),
(19, 'Joomla!-Überblick', 'joomla-ueberblick', '', '<p>Wenn Sie Neueinsteiger bei Web-Content-Management-Systemen sind, dann werden Sie merken, dass Joomla! hoch entwickelte Lösungen für Ihre Online-Bedürfnisse liefert. Es kann robuste Unternehmens-Websites liefern, die durch zahllose Erweiterungen all Ihre Wünsche erfüllen. Dazu kommt, dass es oft das System der Wahl für Kleinunternehmen und Privatbenutzer ist, die eine professionell aussehende Webseite wollen, die einfach zu erstellen und zu benutzen ist. Wir machen Inhalt richtig!</p><p> OK, und wo ist der Haken? Wieviel kostet denn dieses System? Da gibt''s gute Nachrichten... und noch mehr gute Nachrichten! Joomla! 1.5 ist frei, herausgegeben unter einer Open-Source-Lizenz, der GNU/General Public License v 2.0.</p><p>Wenn Sie in eine kommerzielle Alternative investieren, bleibt Ihnen nichts als Motten im Portmonnaie übrig und jedes Mal, wenn Sie den Funktionsumfang erweitern möchten, müssten Sie möglicherweise eine zweite Hypothek aufnehmen.</p><p>Mit Joomla! ändert sich all das ... Joomla! ist anders als die üblichen Softwaremodelle von Content-Management-Systemen. Zunächst einmal ist es unkompliziert. Joomla! wurde für alle entwickelt und alle können es weiterentwickeln. Dann ist es so aufgebaut, dass es (in erster Linie) mit anderer Open-Source-Software wie PHP, MySQL und Apache läuft.  Es ist einfach zu installieren und zu verwalten, und es ist zuverlässig. Joomla! verlangt nicht einmal, dass ein Benutzer oder der Administrator HTML-Kenntnisse besitzt, wenn es läuft.</p><p>Die perfekte Website mit allen Funktionen, die Sie für Ihren Anwendungszweck benötigen, kann Sie zwar zusätzlich Zeit und Energie kosten, aber es gibt jemanden, der Ihnen weiterhelfen kann. Sei es durch die Unterstützung der Joomla!-Community oder durch die vielen Dritt-Entwickler, die nahezu täglich neue Erweiterungen für die 1.5-Plattform entwickeln und veröffentlichen.</p>', '', 1, 4, 0, 29, '2006-10-09 07:49:20', 62, '', '2007-11-04 15:50:34', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 12, 0, 2, '', '', 0, 146, 'robots=\nauthor='),
(20, 'Unterstützung und Dokumentation', 'unterstuetzung-und-dokumentation', '', '<h1>Unterstützung</h1><p>Unterstützung für das Joomla!-CMS gibt es an verschiedenen Orten. Der beste Ausgangspunkt ist die offizielle <a href="http://help.joomla.org/" target="_blank">Hilfeseite</a>. Auf dieser Hilfeseite können Sie viel Dokumentation finden, wie, z.B. ein Administratorenhandbuch, Entwicklerinfos, Häufig gestellte Fragen usw.</p><p>Nicht zu vergessen das Hilfesystem im CMS selbst. Im Administrations-Bereich finden Sie im oberen Menü die Schaltfläche Hilfe, worunter viele Funktionen erklärt werden. </p><p>Ein weiteres Hilfsmittel sind die umfangreichen <a href="http://forum.joomla.org/" target="_blank">Foren</a>. Im Joomla!-Forum können Sie Hilfe und Unterstützung nicht nur von der Joomla!-Gemeinde erhalten, sondern auch von Joomla!-Kernmitglieder und den Mitglieder der Arbeitsgruppen. Das Forum enthält viele Informationen, FAQs - nahezu alles, was Sie zur Unterstützung brauchen.</p><p>Zwei weitere Ressourcen zur Unterstützung finden Sie auf der <a href="http://dev.joomla.org/" target="_blank">Entwicklerseite</a> und der <a href="http://extensions.joomla.org/" target="_blank">Erweiterungsseite</a>. Die Entwicklerseite bietet beispielsweise viele technische Informationen für erfahrene Entwickler und alle, für die Joomla! und Software-Entwicklung noch Neuland ist. Die Joomla!-Kernmitglieder stellen hier regelmäßig Blog-Einträge über Themen wie Programmiertechniken, die in Joomla! verwendet werden, Sicherheit, Events und mehr zur Verfügung.</p><h1>Dokumentation </h1><p>Dokumentation zu Joomla! gibt es natürlich auf der <a href="http://help.joomla.org/" target="_blank">Hilfeseite</a>. Hier gibt es zum Beispiel ein Installationshandbuch, ein Handbuch für Benutzer und Administratoren, Häufig gestellte Fragen (FAQs) und vieles mehr.</p><p>Neben der Dokumentation, die von den Kernmitglieder zur Verfügung gestellt wird, gibt es auch Bücher über Joomla!. Sie können eine Liste dieser Veröffentlichungen im <a href="http://help.joomla.org/content/section/44/254/" target="_blank">Joomla!-Bücherregal</a> finden.</p><h1>Möchten Sie helfen? </h1><p>Wenn Sie im Dokumentationsteam helfen wollen, so schreiben Sie Ihre Details in das <a href="http://forum.joomla.org/viewforum.php?f=62" title="Das Joomla!-Forum Benutzerdokumentation">Forum Benutzerdokumentation</a> oder in das <a href="http://forum.joomla.org/viewforum.php?f=60" title="Joomla!-Forum Entwicklerdokumentation">Forum Entwicklerdokumentation</a> </p><p><a class="urlextern" href="http://forum.joomla.org/viewforum.php?f=391" target="_blank" title="http://forum.joomla.org/viewforum.php?f=59" onclick="return svchk()"><br /></a></p>', '', 1, 4, 0, 25, '2006-10-09 08:33:57', 62, '', '2007-11-04 18:49:37', 62, 0, '0000-00-00 00:00:00', '2006-10-07 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 13, 0, 1, '', '', 0, 6, 'robots=\nauthor='),
(21, 'Joomla!-Fakten', 'joomla-fakten', '', '<p>Hier einige interessante Fakten über Joomla!</p><ul><li>Über 140,000 aktive registrierte Benutzer im offiziellen Joomla!-Forum und noch mehr auf den vielen internationalen Websites von Joomla!-Gemeinschaften.</li><li>1168 Projekte auf JoomlaCode (<a href="http://joomlacode.org/">http://joomlacode.org</a> ). Alles für Open Source Erweiterungen von Drittentwickler.</li><li>Über 3750 registrierte Erweiterungen für Joomla! auf der Erweiterungswebsite (<a href="http://extensions.joomla.org/">extensions.joomla.org</a>)</li><li>Joomla.org hat mehr als 2 TB Datenverkehr pro Monat!</li><li>Alexa-bericht[November 2007]: Joomla.org ist auf Platz #690 der am häufigsten benutzten Websites der Welt.</li><li><a href="http://forum.joomla.org">Gemeinschaftsforen</a>, über eine halbe Million Beiträge und 60 000 aktive Benutzer. Über 1200 Beiträge und 150 neue Benutzer pro Tag!</li></ul><p>&nbsp;</p>', '', 1, 4, 0, 30, '2006-10-09 16:46:37', 62, '', '2007-11-04 18:24:09', 62, 0, '0000-00-00 00:00:00', '2006-10-07 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 12, 0, 1, '', '', 0, 50, 'robots=\nauthor='),
(22, 'Was ist neu in 1.5?', 'was-ist-neu-in-15', '', '<p>Wie auch in früheren Versionen bietet Joomla! ein einheitliches und leicht benutzbares Framework, um Inhalte für allerlei Arten von Websites zu liefern. Damit Joomla! bereit ist für das sich dynamisch ändernde Internet und für neu entstehende Webtechnologien, bedurfte es einer umfassenden Umstrukturierung der Kernfunktionen. Die Gelegenheit wurde genutzt um viele Benutzeroberflächen zu vereinfachen. Joomla! hat viele neue Funktionen.</p>', '<p>Die Ziele für Joomla! 1.5 sind: </p><ul><li><p>wesentliche Verbesserungen der Benutzbarkeit, Verwaltbarkeit und Skalierbarkeit, weit über die ursprünglichen Mambo-Fundamente hinaus</p></li><li><p>Barrierefreiheit zu erweitern durch die Unterstützung von Internationalisierung, doppelten Byte-Zeichen und Rechts-nach-Links-Unterstützung für arabische und hebräische Sprachen </p></li><li><p>Erweiterung der Integration von externen Anwendungen durch Web- und Verzeichnisdienste wie das Lightweight Directory Access Protocol (LDAP). </p></li><li><p>Verbesserung der Funktionen zu Inhaltbereitstellung, Templates und Präsentation, um Standards zur Barrierefreiheit zu erfüllen sowie für den Zugang und die Inhaltsbereitstellung für beliebige Zielmedien</p></li><li><p>Bereitstellung eines nachhaltigen und flexiblen Frameworks für Komponenten- und Erweiterungsentwickler</p></li><li>Abwärtskompatibilität mit früheren Versionen von Komponenten, Templates, Modulen und anderen Erweiterungen</li></ul><p>&nbsp;</p>', 1, 4, 0, 29, '2006-10-11 22:13:58', 62, '', '2007-11-04 15:39:15', 62, 62, '2007-05-25 12:51:09', '2006-10-10 18:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 7, 0, 1, '', '', 0, 88, 'robots=\nauthor='),
(23, 'Plattformen und offene Standards', 'plattformen-und-offene-standards', '', '<p>Joomla! läuft auf allen Platformen, inklusive Windows, unter den meisten Linux-Varianten, unter mehreren Unix-Versionen und unter Apples Mac OS X. Joomla! benötigt PHP und eine MySQL-Datenbank um dynamische Inhalte liefern zu können. </p><p>Die Minimalanforderungen sind:</p><ul><li>Apache 1.x, 2.x oder höher</li><li>PHP 4.3 oder höher</li><li>MySQL 3.23 oder höher</li></ul>Es wird außerdem auch auf anderen Server-Plattformen wie dem Windows IIS laufen - vorausgesetzt diese unterstützen PHP und MySQL, wobei letztere zusätzlich konfiguriert werden müssen, damit Joomla! erfolgreich installiert und betrieben werden kann.', '', 1, 4, 0, 25, '2006-10-11 04:22:14', 62, '', '2007-11-04 23:07:08', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 3, '', '', 0, 11, 'robots=\nauthor='),
(24, 'Inhalt-Layouts', 'inhalt-layouts', '', '<p>Joomla! bietet Ihnen ein hohes Maß an Flexibilität, Ihre Webseite zu präsentieren. Unabhängig davon, ob Sie Joomla! für ein Blog, eine Nachrichten- oder für eine Unternehmenswebsite einsetzen, werden Sie eine oder mehrere Darstellungsformen finden, um Ihren Inhalt zu präsentieren. Sie können sogar die Darstellungsform dynamisch wechseln, ganz wie es Ihnen gefällt. Wie eine Seite angezeigt wird, heißt bei Joomla! "<strong>Layout</strong>". Beachten Sie die Informationen weiter unten, um zu verstehen welche, Layouts es gibt und wie Sie diese verwenden könnten. </p><h2>Inhalt</h2><p>Joomla! macht es Ihnen extrem einfach, neue Inhalte hinzuzufügen und darzustellen. Alle Inhalte werden dargestellt, wo die Position "mainbody" in Ihrem Template definiert wurde. Drei verschiedene Grund-Layouts stehen in Joomla! zur Verfügung, und alle können durch die Einstellungen angepasst werden. Die Darstellung und die Einstellungen werden im Menüeintrag festgelegt, den Sie für die Anzeige des Inhalts benutzen. Sie erstellen diese Layouts, indem Sie einen Menüeintrag erstellen und darin festlegen, wie der Inhalt dargestellt werden soll.</p><h3>Blog-Layout<br /></h3><p>Blog-Layout wird eine Liste aller Beiträge des gewählten Bereich oder der Kategorie anzeigen, und zwar in der "mainbody"-Position Ihres Templates. Ausgegeben wird der Standardtitel und der Einleitungstext jedes Beitrags dieser Kategorie und/oder dieses Bereich. Sie können dieses Layout über die Inhalt-Einstellungen anpassen (siehe Inhalts-Einstellungen). Dies geschieht in der Menü-Verwaltung, nicht in der Bereichs-Verwaltung!</p><h3>Blog-Archiv-Layout<br /></h3><p>Ein Blog-Archiv-Layout zeigt die Beiträge so ähnlich wie das normale Blog-Layout an, jedoch werden oben zusätzlich zwei Auswahllisten für den Monat und das Jahr angezeigt, sowie eine Suchfunktion, die es den Benutzern ermöglicht, nach bestimmten Beiträgen im Archiv in einem bestimmten Monat und Jahr zu suchen.</p><h3>Tabellen-Layout<br /></h3><p>Das Tabellen-Layout gibt Ihnen einfach eine tabellarische Liste aller Titel im ausgewählten Bereich oder der Kategorie. Kein Einführungstext wird dargestellt, sondern nur die Titel. Sie könne über die Einstellungen des Menüeintrags bestimmen, wieviele Titel angezeigt werden sollen. Das Tabellen-Layout verfügt auch über eine Filter-Funktion, mit der Benutzer die Titelliste anders anordnen, filtern und die Anzahl der angezeigten Titel pro Seite (bis zu 50) definieren können.</p><h2>Wrapper</h2><p>Mit Wrappern können Sie eigenständige Web-Anwendungen oder andere Websites in Ihre Joomla!-Website einbinden. Der Inhalt innerhalb eines Umschlags (Wrapper) wird in der Hauptposition - definiert durch den "mainbody" Tag - dargestellt. So können Sie diese Inhalt als einen Teil Ihrer Website darstellen. Ein Wrapper setzt ein "IFRAME" innerhalb des Inhaltsbereichs und umhüllt es mit der Standard-Template-Navigation Ihrer Website, so dass es in derselben Weise angezeigt wird wie beispielsweise ein Beitrag.</p><h2>Inhalt-Einstellungen</h2><p>Die Einstellungen für jeden Layouttyp finden Sie in der Bearbeitungsansicht eines Menüeintrags rechts neben dem Editor-Bereich. Welche Einstellungen zur Verfügung stehen, hängt vom Layouttyp ab, den Sie bearbeiten.</p>', '', 1, 4, 0, 29, '2006-10-12 22:33:10', 62, '', '2007-11-04 16:58:35', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 10, 0, 5, '', '', 0, 69, 'robots=\nauthor='),
(25, 'Was sind die Anforderungen, um Joomla! 1.5 zu betreiben?', 'was-sind-die-anforderungen-um-joomla-15-zu-betreiben', '', 'Joomla! läuft auf PHP-Basis. PHP gibt es in verschiedenen Ausprägungen und für viele Betriebssysteme. Neben PHP benötigen Sie noch einen Webserver. Joomla! ist für Apache optimiert, aber es läuft auch auf anderen Webservern, wie Microsoft IIS. Joomla! ist zudem datenbankbasiert und dafür steht im Moment nur MySQL zur Verfügung. <br /><br />Viele Leute wissen aus eigener Erfahrung, dass es nicht so einfach ist eine Apache Webserver zu installieren und es wird noch schwieriger, wenn Sie auch noch MySQL, PHP und Perl hinzufügen möchten. XAMPP, WAMP und MAMP sind einfacher zu installierende Server-Zusammengestellungen, die Apache, MySQL, PHP und Perl für Betriebssysteme wie Windows, Mac OS X und Linux enthalten. Diese Pakete sind nur für lokale Server-Installationen auf nicht-öffentlichen Servern gedacht.<br /><br />Die Minimum-Variante benötigt:<br /><ul><li>Apache 1.x oder 2.x<br /></li><li>PHP 4.3 oder höher<br /></li><li>MySQL 3.2.3 oder höher</li></ul>', '', 1, 3, 0, 31, '2006-10-11 00:42:31', 62, '', '2007-11-08 11:36:52', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 5, '', '', 0, 23, 'robots=\nauthor=');
INSERT INTO `content` (`id`, `title`, `alias`, `title_alias`, `introtext`, `fulltext`, `state`, `sectionid`, `mask`, `catid`, `created`, `created_by`, `created_by_alias`, `modified`, `modified_by`, `checked_out`, `checked_out_time`, `publish_up`, `publish_down`, `images`, `urls`, `attribs`, `version`, `parentid`, `ordering`, `metakey`, `metadesc`, `access`, `hits`, `metadata`) VALUES
(26, 'Erweiterungen', 'erweiterungen', '', '<p>Das Joomla!-Basissystem ist eine leistungsstarke Lösung zur Verwaltung von Inhalten, und bietet eine Website, die sofort einsatzbereit ist. Für viele liegt die Stärke von Joomla! jedoch im Anwendungs-Framework, das es tausenden Entwicklern in aller Welt ermöglicht, leistungsstarke Zusatzprogramme zu schaffen. Diese Zusatzprogramme werden Erweiterungen genannt. Eine Erweiterung wird eingesetzt, um die Funktionalität des Joomla!-Basissystems zu erweitern. Hier sind einige Beispiele der unzähligen vorhandenen Erweiterungen:</p><ul><li>Dynamische Formular-Erstellung</li><li>Verzeichnisse für Unternehmen oder Organisationen</li><li>Dokumentenverwaltung</li><li>Bilder- und Multimedia-Galerien</li><li>E-Commerce- und Online-Shop-Anwendungen</li><li>Foren- und Chat-Software</li><li>Kalender</li><li>E-Mail-Newsletter</li><li>Werkzeuge zur Datensammlung und Berichtserstellung</li><li>Banner-Werbungssysteme</li><li>kostenpflichtige Abonnement-Dienste</li><li>und vieles, vieles mehr</li></ul><p>Mehr Beispiele finden Sie in unserem ständig wachsenden <a href="http://extensions.joomla.org" target="_blank" title="Verzeichnis der Joomla!-Erweiterungen">Verzeichnis der Joomla!-Erweiterungen</a>. Bereiten Sie sich darauf vor, sich von der vielfältige Arbeit verblüffen zu lassen, die von unserer aktiven Entwicklergemeinschaft geleistet wird!</p><p>Ein nützliches Handbuch zur Erweiterungs-Website können Sie hier finden:<br /><a href="http://extensions.joomla.org/content/view/15/63/" target="_blank" title="Guide to the Joomla! Extension site">http://extensions.joomla.org/content/view/15/63/</a></p><h3>Arten von Erweiterungen</h3><p>Es gibt fünf Arten von Erweiterungen:</p><ul><li>Komponenten</li><li>Module</li><li>Templates</li><li>Plugins</li><li>Sprachen</li></ul><p>Sie können mehr über jede einzelne Art erfahren, wenn Sie die Links im Inhaltsverzeichnis dieses Beitrag (eine weitere, nützliche Funktion von Joomla!) anklicken. Das Inhaltsverzeichnis finden Sie oben rechts, oder indem Sie unten auf den <strong>Weiter</strong>-Link klicken. </p><hr class="system-pagebreak" title="Komponenten" /><h3><img src="images/stories/ext_com.png" border="0" alt="Komponenten - Verzeichnis der Joomla!-Erweiterungen" title="Komponente - Verzeichnis der Joomla!-Erweiterungen" width="17" height="17" />Komponenten</h3><p>Eine Komponente ist die umfangreichste und komplexeste Art der Erweiterung. Komponenten sind wie Mini-Anwendungen, die den Hauptbereich der Seite steuern. Man könnte die Beziehung zwischen Joomla! und den Komponenten vergleichen mit einem Buch und dessen einzelnen Kapiteln. Die Kern-Beitragskomponente (com_content) ist beispielsweise eine Mini-Anwendung, die alle Beiträge darstellt. Die Kern-Benutzerverwaltungskomponente (com_user) ist eine Mini-Anwendung, die die Benutzer-Registrierung handhabt.</p><p>Viele der Joomla!-Kernfunktionen basieren auf den Standardkomponenten, wie z.B.:</p><ul><li>Kontakte</li><li>Startseite</li><li>Newsfeeds</li><li>Banner</li><li>Massenmail</li><li>Umfragen</li><li>RSS</li></ul><p>Eine Komponente verwaltet Daten, steuert die Darstellung, bietet Funktionalität und übernimmt im allgemeinen sämtliche Aufgaben, die nicht zu den Grundfunktionen der Joomla!-Kern-Anwendung gehört.</p><p>Komponenten arbeiten Hand in Hand mit Modulen und Plugins, um eine große Vielfalt bei der Darstellung von Inhalten und der Funktionalität zu bieten, die über die standardmäßige Beitrags- und Inhaltsdarstellung hinausgeht. Komponenten ermöglichen es Joomla! komplett umzugestalten und dessen Funktionsumfang enorm zu erweiteren.</p><p>Mehr Information über Komponenten finden Sie in den Joomla!-Hilfe-Handbüchern zu Komponenten<br /><a href="http://help.joomla.org/content/view/77/153/" target="_blank" title="Joomla! help manual: Components">http://help.joomla.org/content/view/77/153/</a></p><hr class="system-pagebreak" title="Modules" /><h3><img src="images/stories/ext_mod.png" border="0" alt="Module - Verzeichnis der Joomla!-Erweiterungen" title="Module - Verzeichnis der Joomla!-Erweiterungen" width="17" height="17" /> Module</h3><p>Eine etwas weniger umfangreiche, aber flexible Erweiterung, die für die Seitendarstellungen verwendet wird, ist ein Modul. Module werden für kleinere Teile der Seite eingesetzt, die normalerweise weniger komplex sind und über mehrere Komponenten hinweg angezeigt werden können. Um die Buch-Analogie weiterzuführen, kann ein Modul als Fußnote oder Kopfzeile, vielleicht auch als Bereich für Bilder und Legenden betrachtet werden, die auf bestimmten Seiten angezeigt werden sollen. Natürlich können Sie eine Fußnote auf jeder Seite verwenden, aber nicht jede Seite wird eine haben. Fußnoten könnten auch unabhängig vom gerade gelesenen Kapitel dargestellt werden. Auf ähnliche Weise kann ein Modul eingesetzt werden, unabhängig davon, welche Komponente gerade aufgerufen wurde.</p><p>Module sind wie kleine Progrämmchen, die überall auf der Website platziert werden können. Sie arbeiten in einigen Fällen mit Komponenten zusammen, und in anderen Fällen sind sie völlig selbstständige Code-Schnipsel, die dazu dienen, Daten aus der Datenbank anzuzeigen, wie z.B. (Nachrichten-) Beiträge. Module werden üblicherweise dazu verwendet, um Daten auszugeben, aber sie können auch als interaktive Formularelemente benutzt werden, um eingegebene Daten zu verarbeiten, etwa das Anmeldungs- oder das Umfrage-Modul.</p><p>Modulen können bestimmte Positionen im Template zugewiesen werden. Diese Positionen des verwendeten Templates können in der Administration unter dem Menü Erweiterungen/Module/Modulposition definiert werden. So sind zum Beispiel "left" und "right" Standard für ein 3-spaltiges Layout. </p><h4>Module darstellen</h4><p>Jedes Modul wird einer Modulposition auf Ihrer Website zugewiesen. Wenn Sie es an zwei verschiedenen Stellen auf derselben Seite anzeigen möchten, müssen Sie das Modul kopieren und die Kopie einer neuen Position zuweisen. Sie können auch bestimmen, unter welchen Menüeinträgen (und damit auf welchen Seiten) es angezeigt werden soll, indem Sie dem Modul bestimmte Menüeinträge zuweisen. Sie können in der Bearbeiten-Ansicht des Moduls alle Menüeinträge wählen, oder Sie können einzelne auswählen, indem Sie bestimmte Menüeinträge einzeln anklicken, und die Strg-Taste gedrückt halten.</p><p>Beachten Sie: Das Hauptmenü ist ein Modul! Wenn Sie ein neues Menü in der Menü-Verwaltung anlegen, erstellen Sie eigentlich eine Kopie des Hauptmenü-Moduls (<code>mod_mainmenu</code>) und versehen es mit einem neuen Namen. Wenn Sie ein Modul kopieren, dann kopieren Sie nicht sämtliche Einstellungen, Sie erlauben Joomla! einfach, denselben Quellcode mit zwei verschiedenen Einstellungen zu benutzen.</p><h4>Beispiel Newsflash</h4><p>Newsflash ist ein Modul, das Beiträge Ihrer Website auf einer zugewiesenen Modulposition anzeigt. Es kann dazu benutzt werden, um eine Kategorie, alle Kategorien oder um einen einzelnen Beitrag nach dem Zufallsprinzip anzuzeigen. Es wird so viel von einem Beitrag anzeigen, wie Sie festlegen und es wird einen "weiter"-Link enthalten, um den Benutzer zum ganzen Beitrag zu führen.</p><p>Die Newsflash-Komponente ist besonders nützlich für Dinge wie Nachrichten über die Site oder um den neuesten Beitrag der Website anzuzeigen.</p><p>Mehr Information über Module finden Sie im Joomla! Hilfehandbuch: Modules<br /><a href="http://help.joomla.org/content/view/91/153/" target="_blank" title="Joomla! Hilfehandbuch: Modules">http://help.joomla.org/content/view/91/153/</a></p><hr class="system-pagebreak" title="Plugins" /><h3><img src="images/stories/ext_plugin.png" border="0" alt="Plugin - Verzeichnis der Joomla!-Erweiterungen" title="Plugin - Verzeichnis der Joomla!-Erweiterungen" width="17" height="17" /> Plugins</h3><p>Eine der fortgeschritteneren Erweiterungen für Joomla! ist das Plugin, früher bekannt als Mambot. Neben dem Namen wurde auch deren Funktionalität erweitert. Ein Plugin ist ein Stück Programm-Code, der zum Einsatz kommt, wenn ein bestimmtes Ereignis innerhalb von Joomla! auftritt. Text-Editoren sind beispielsweise Plugins, die ausgeführt werden, wenn das Ereignis <code>onGetEditorArea</code> auftritt. Über Plugins kann der Entwickler steuern, dass sich der Programm-Code bei einem bestimmten Ereignis unterschiedlich verhält, je nachdem, welche Plugins installiert sind und wie sie darauf reagieren.</p><p>Mehr Informationen zu Plugins erhalten Sie in den Joomla!-Hilfe-Handbüchern: Plugins<br /><a href="http://help.joomla.org/content/view/110/153/" target="_blank" title="Joomla!-Hilfe-Handbuch: Plugins">http://help.joomla.org/content/view/110/153/</a></p><hr class="system-pagebreak" title="Sprachen" /><h3><img src="images/stories/ext_lang.png" border="0" alt="Sprachen - Verzeichnis der Joomla!-Erweiterungen" title="Sprachen - Verzeichnis der Joomla!-Erweiterungen" width="17" height="17" /> Sprachen</h3><p>Neu in Joomla! 1.5 und wahrscheinlich die grundlegendste und kritischste Erweiterung ist die Sprache. Joomla! wird mit vielen Sprachen für die Installation herausgegeben, jedoch sind im Installationspaket für die Site und die Adminstration nur englische (en-GB) Sprachdateien enthalten. Sämtliche Übersetzungen mitzuliefern, würde das Installationspaket des Joomla!-Kerns nur aufblähen und es unmöglich machen, das Paket hochzuladen. Mit den Sprachdateien ist es möglich, alle Benutzeroberflächen, sowohl für die Site als auch für die Administration, in der gewünschten Sprache anzuzeigen. Beachten Sie, dass diese Sprachdateien keinen Einfluss auf den eigentlichen Inhalt, wie etwa Beiträge, haben.</p><p>Mehr Informationen über Sprachen finden Sie auf der Joomla!-Hilfeseite: Sprachen<br /><a href="http://help.joomla.org/content/view/1651/243/" target="_blank" title="Joomla!-Sprachen">http://help.joomla.org/content/view/1651/243/</a></p>', '', 1, 4, 0, 29, '2006-10-11 06:00:00', 62, '', '2007-11-08 14:49:48', 62, 0, '0000-00-00 00:00:00', '2006-10-10 22:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 21, 0, 3, 'Über Joomla!, Allgemein, Erweiterungen', '', 0, 100, 'robots=\nauthor='),
(27, 'Die Joomla!-Gemeinschaft', 'die-joomla-gemeinschaft', '', '<p><strong>Haben Sie eine Frage? </strong>Mit über 140.000 Mitgliedern ist das Online-Forum auf <a href="http://forum.joomla.org/" target="_blank">Joomla.org</a> eine großartige Quelle für neue und erfahrene Benutzer. Hier können Sie Ihrer schwersten Fragen stellen, denn die Gemeinschaft wartet darauf, zu sehen, was Sie aus Ihrer Joomla!-Website machen.</p><p><strong>Wollen Sie Ihre neue Joomla!-Website vorzeigen?</strong> Nichts wie los, wir haben jetzt einen Bereich im Forum genau für diesen Zweck. </p><p><strong>Wollen Sie mitmachen?</strong></p><p>Falls Sie denken, mit Joomla! zu arbeiten würde Spaß machen, dann warten Sie nur, bis Sie anfangen sich an der Entwicklung zu beteiligen. Wir helfen Joomla!-Benutzern leidenschaftlich gerne dabei, aktive Gemeinschaftsmitglieder zu werden. Dazu gibt es verschiedene Möglichkeiten, etwas beizusteuern:</p><ul><li>Nachrichten über Joomla! einreichen. Wir sammeln alle Neuigkeiten, die mit Joomla! zu tun haben, in unserem <a href="http://news.joomla.org" title="Joomla!-News-Portal">News-Portal</a>. Wenn Sie Joomla!-Neuigkeiten haben, die Sie mit der Gemeinschaft teilen möchten, dann schicken Sie bitte Ihre Beiträge, Geschichten, Ankündigungen oder Rezensionen <a href="http://www.joomla.org/component/option,com_submissions/Itemid,75" title="Submit News">hierher</a>. </li><li>Berichten Sie Fehler (Bugs) und stellen Sie Anfragen für neue Funktionen in unseren <a href="http://forge.joomla.org/sf/tracker/do/listTrackers/projects.joomla/tracker" title="Joomla! developement trackers">Tracker</a>. Bitte lesen Sie <a href="http://dev.joomla.org/content/view/1450/89/">Fehler berichten</a>, um genauer zu erfahren, wie wir gerne solche Fehlerberichte erhalten.</li><li>Reichen Sie Patches für neues und/oder korrigiertes Verhalten von Joomla! ein. Bitte lesen Sie <a href="http://dev.joomla.org/content/view/14/55/">Patches einreichen</a>, um zu erfahren, wie Sie diese Patches einreichen können.</li><li>Werden Sie Mitglied im <a href="http://forum.joomla.org/viewforum.php?f=509" title="Joomla!-Entwicklerforum">Entwicklerforum</a> und teilen Sie Ihre Ideen, wie Joomla! verbessert werden kann, mit uns. Wir sind immer offen für gute Ideen, obwohl wir wahrscheinlich etwas skeptisch sein werden, wenn Sie größere Vorhaben ohne Programm-Code vorstellen.</li><li>Treten Sie einer der <a href="content/view/13/53/" title="Joomla! working groups">Gemeinschafts-Arbeitsgruppen</a> bei und bringen Sie Ihr persönliches Fachwissen in die Joomla!-Gemeinschaft ein. Weitere Informationen über die unterschiedlichen Arbeitsgruppen erhalten Sie <a href="content/view/13/53/" title="Joomla! working groups">hier</a>. </li></ul><p>Das ist alles das Sie wissen müssen, wenn Sie bei der Entwicklung von Joomla! mitmachen möchten. </p>', '', 1, 4, 0, 30, '2006-10-12 16:50:48', 62, '', '2007-11-04 18:29:55', 62, 0, '0000-00-00 00:00:00', '2006-10-11 02:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 10, 0, 2, '', '', 0, 50, 'robots=\nauthor='),
(28, 'Wie installiere ich Joomla! 1.5?', 'wie-installiere-ich-joomla-15', '', '<p>Die Installation von Joomla! 1.5 ist recht einfach. Wir nehmen an, dass Sie bereits eine Web-Server haben und mit Ihrem Browser darauf zugreifen können.<br /><br />Laden Sie sich nun Joomla! 1.5 herunter, entpacken Sie die Installationsdatei und kopieren Sie das Paket auf Ihr Verzeichnis, starten Sie dann den Browser und geben Sie die Adresse zu Ihrer Site, gefolgt von dem Verzeichnis wohin Sie die Joomla!-Dateien entpackt haben, ein. Nun wird die Installation beginnen. Mehr Informationen zur Installation finden Sie unter <a href="http://help.joomla.org/content/category/48/268/302" title="Joomla! 1.5 Installation Manual">Installation Manual</a> auf der <a href="http://help.joomla.org" title="Joomla! Hilfe-Website">Joomla!-Hilfe-Website</a>, wo Sie außerdem eine PDF-Version finden.<br /></p>', '', 1, 3, 0, 31, '2006-10-11 01:10:59', 62, '', '2007-11-08 11:22:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 3, '', '', 0, 4, 'robots=\nauthor='),
(29, 'Wozu die Kollation bei der Installation auswählen?', 'wozu-die-kollation-bei-der-installation-auswaehlen', '', '<p>Die Kollations-Option legt fest, wie die Datenbank geordnet wird. Bei Sprachen die Sonderzeichen benutzen, wie zum Beispiel Umlaute, bestimmt die Datenbankkollation die Sortierreihenfolge. Wenn Sie nicht wissen, welche Kollation Sie benötigen, wählen Sie "utf8_general_ci", da die meisten Sprachen diese verwenden. Die anderen aufgelisteten Kollationen sind Ausnahmen gegenüber den allgemeinen Kollationen. Wenn Ihre Sprache nicht in der Liste der Kollationen aufgeführt wird, bedeutet es wahrscheinlich, dass "utf8_general_ci" geeignet ist.</p>', '', 1, 3, 0, 32, '2006-10-11 03:11:38', 62, '', '2007-05-03 09:40:32', 62, 0, '0000-00-00 00:00:00', '2006-10-10 08:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 4, '', '', 0, 6, 'robots=\nauthor='),
(30, 'Welche Sprachen werden von Joomla! 1.5 unterstützt?', 'welche-sprachen-werden-von-joomla-15-unterstuetzt', '', '<p>Bei der Installation wird Ihnen eine breite Sprachpalette angeboten. Der Installer unterstützt zurzeit folgende Sprachen bzw. Schriften: Arabisch, Bulgarisch, Bengali, Tschechisch, Dänisch, Deutsch, Griechisch, Englisch, Spanisch, Finnisch, Französisch, Hebräisch, Devanagari (Indien), Kroatisch, Ungarisch, Italienisch, Malaiisch, Norwegisch (Bokmål), Holländisch, Portugiesisch (Brasilien sowie Portugal), Rumänisch, Russisch, Serbisch, Schwedisch, Thai und es kommen weitere hinzu.<br /><br />Für die Website und den Administrationsbereich ist Englisch vorinstalliert. Über das <a href="http://extensions.joomla.org" lang="en" target="_blank">Joomla!Extensions Directory</a>, dem englischen Verzeichnis für Joomla!-Erweiterungen, können Sie zusätzliche Sprachdateien herunterladen. Einige Übersetzungsteams bieten zudem vollständig lokalisierte Gesamtpakete an. Schauen Sie auch auf der <a href="http://help.joomla.org/content/view/1651/62/" target="_blank">Joomla! Help Site</a> nach Links zu anderen Adressen, wo Sprachen und lokalisierte Versionen zu finden sind.</p>', '', 1, 3, 0, 32, '2006-10-11 01:12:18', 62, '', '2008-05-12 03:15:03', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 2, '', '', 0, 7, 'robots=\nauthor='),
(31, 'Ist es sinnvoll die Beispieldaten zu installieren?', 'ist-es-sinnvoll-die-beispieldaten-zu-installieren', '', '<p>Das kommt darauf an, was Ihr Ziel ist. Wenn Sie neu bei Joomla! sind und noch nicht wissen, wie alles zusammenhängt, dann installieren Sie die Beispieldaten. Wenn Ihnen diese Beispieldaten nicht gefallen, etwa weil Sie eine andere Sprache, zum Beispiel Chinesisch, sprechen, dann lassen Sie es sein.</p>', '', 1, 3, 0, 27, '2006-10-11 09:12:55', 62, '', '2007-11-08 12:03:24', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 3, '', '', 0, 2, 'robots=\nauthor='),
(32, 'Wo ist der statische Inhalt?', 'wo-ist-der-statische-inhalt', '', '<p>In den Joomla! Versionen vor 1.5 wurden statische und dynamischen Inhalte unterschiedlich erstellt. Die Erstellungsprozesse wurden nun zusammengelegt. Beide Inhaltstypen sind noch vorhanden, werden aber nicht mehr getrennt behandelt. Wenn Sie statische Inhalte erstellen möchten, dann wählen Sie als Bereich und Kategorie l "<em>Nicht kategorisiert</em>".</p>', '', 1, 3, 0, 28, '2006-10-10 23:13:33', 62, '', '2007-11-08 11:23:56', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 6, '', '', 0, 4, 'robots=\nauthor='),
(33, 'Was ist "nicht kategorisierter" Inhalt?', 'was-ist-nicht-kategorisierter-inhalt', '', '<p>Die meisten Beiträge werden einem Bereich und einer Kategorie zugewiesen. In einigen Fällen wissen Sie aber möglicherweise nicht, wo sie erscheinen sollen. Also weisen Sie den Beitrag dem Bereich "Nicht kategorisiert" zu. Die so markierten Beiträge werden als statische Inhalte behandelt.<br /></p>', '', 1, 3, 0, 31, '2006-10-11 15:14:11', 62, '', '2007-11-08 11:23:14', 62, 0, '0000-00-00 00:00:00', '2006-10-10 12:00:00', '0000-00-00 00:00:00', '', '', 'show_title=1\nlink_titles=\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 2, '', '', 0, 5, 'robots=\nauthor='),
(34, 'Kann die PDF-Ausgabe Bilder und Sonderzeichen enthalten?', 'kann-die-pdf-ausgabe-bilder-und-sonderzeichen-enhalten', '', '<p>Ja! Vor Joomla! 1.5 war die PDF-Ausgabe nur für den Textinhalt eines Beitrags und nur und für ISO-8859-1-kodierte Beiträge möglich. Mit der neuen PDF-Bibliothek kann der gesamte Beitrag inklusive Bildern als PDF-Datei ausgegeben werden. Der PDF-Generator kann außerdem mit UTF-8-Texten und mit sämtlichen Zeichensätzen aller Sprachen umgehen. Dazu müssen zwar die entsprechenden Schriftarten installiert sein, doch dies geschieht automatisch während der Installation eines Sprachpakets.</p>', '', 1, 3, 0, 31, '2006-10-11 17:14:57', 62, '', '2007-11-08 11:46:29', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 3, '', '', 0, 5, 'robots=\nauthor='),
(35, 'Kann man den Typ eines Menüeintrags ändern?', 'kann-man-den-typ-eines-menueeintrags-ändern', '', '<p>Ja, die Anzeige der verschiedenen Menüeintrags-Typen können Sie ganz beliebig anpassen, auch nachdem Sie einen Menüeintrag erstellt haben. Wenn Sie zum Beispiel den Blog-Bereich eines Menü-Links ändern wollen, gehen Sie in die Administration und bearbeiten den Menüeintrag. Klicken Sie auf "<em>Typ ändern</em>" und verändern Sie die Einstellungen für die Anzeige des ausgewählten Menüeintrags, ganz so, wie Sie es möchten.</p>', '', 1, 3, 0, 32, '2006-10-10 23:15:36', 62, '', '2007-11-08 11:25:01', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 1, '', '', 0, 17, 'robots=\nauthor='),
(36, 'Wo sind die Installer hin?', 'wo-sind-die-installer-hin', '', '<p>Das verbesserte Installationswerkzeug befindet sich im Menü "Erweiterungen". Vor Joomla! 1.5 musste der jeweilige Erweiterungstyp zunächst ausgewählt werden, bevor die Installation durchgeführt  werden konnte. Mit Joomla! 1.5 wählen Sie nur noch die Erweiterung aus, die Sie hochladen möchten, und klicken auf "Installieren". Das Installationswerkzeug macht dann für Sie den ganzen Rest.</p>', '', 1, 3, 0, 31, '2006-10-10 23:16:20', 62, '', '2007-11-04 23:10:18', 62, 0, '0000-00-00 00:00:00', '2006-10-10 04:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 1, '', '', 0, 3, 'robots=\nauthor='),
(37, 'Wo sind die Mambots hin?', 'wo-sind-die-mambots-hin', '', '<p>Mambots wurden zu "Plugins" umbenannt. Mambots wurden in Mambo eingeführt und boten die Möglichkeit, Ihrer Website ein Plugin-System hinzuzufügen, hauptsächlich zum Bearbeiten von Inhalten. In Joomla!, werden im Vergleich zu Mambots  die Plugins nun eine größere Funktionsbreite haben. Plugins können nun auch die Funktionalität auf Framework-Ebene erweiteren.</p>', '', 1, 3, 0, 28, '2006-10-11 09:17:00', 62, '', '2007-11-08 11:04:30', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 1, '', '', 0, 3, 'robots=\nauthor='),
(38, 'Ich habe Joomla! in meiner Sprache installiert, aber das Back-end ist immer noch in Englisch.', 'ich-habe-joomla-in-meiner-sprache-installiert-aber-das-back-end-ist-immer-noch-in-englisch', '', '<p>Viele verschiedene Sprachen stehen für das Back-end zur Verfügung, jedoch ist die gewünschte Sprache nicht immer standardmäßig installiert. Wenn Sie das Back-end in Ihrer Sprache haben möchten, holen Sie sich Ihr Sprachpaket und installieren Sie es über das Menü "Erweiterungen". Danach wählen Sie im Menü Erweiterungen den Sprachmanager und definieren Sie Ihre Sprache als Standard. Das Back-end wird dann ab sofort übersetzt sein.</p><p>Benutzer, die Zugangsrechte für das Back-end haben, können in ihren Benutzereinstellungen auch eine andere Sprache festlegen.</p><p>Das gilt natürlich auch für die Sprache des Frontends. </p><p> Eine gute Adresse um herauszufinden, wo es Ihre Sprachen und lokalisierte Versionen von Joomla! gibt, ist die <a href="http://help.joomla.org/content/view/1651/62/" target="blank_" title="Hilfeseite">Hilfeseite</a>.</p>', '', 1, 3, 0, 28, '2006-10-11 17:18:14', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2006-10-10 14:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 5, '', '', 0, 6, 'robots=\nauthor='),
(39, 'Wie entferne ich einen Beitrag?', 'wie-entferne-ich-einen-beitrag', '', '<p>Um einen Beitrag komplett zu entfernen, markieren Sie den Beitrag und werfen ihn in den Papierkorb. Dann öffnen Sie den Papierkorb im Menü "Inhalt" und wählen Sie die Beiträge aus, die Sie löschen möchten. Nachdem Sie ein Beitrag komplett gelöscht haben, wird er aus der Datenbank gelöscht und kann nicht wiederhergestellt werden.  </p>', '', 1, 3, 0, 32, '2006-10-11 09:19:01', 62, '', '2008-05-05 01:05:03', 62, 0, '0000-00-00 00:00:00', '2006-10-10 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 6, 0, 1, '', '', 0, 3, 'robots=\nauthor='),
(40, 'Was ist der Unterschied zwischen dem Archivieren und dem Wegwerfen eines Beitrags?', 'was-ist-der-unterschied-zwischen-dem-archivieren-und-dem-wegwerfen-eines-beitrags', '', '<p>Wenn Sie ein Beitrag archivieren, wird der Status so verändert, dass die freigebenen Inhalte von der Website entfernt werden. Der Beitrag steht aber innerhalb der Administration immer noch zur Verfügung und kann bearbeitet und wiederverwendet werden. Weggeworfene Beiträge hingegen sind nur einen Schritt entfernt vom Löschen. Sie sind aber immer noch verfügbar, bis Sie den Papierkorb endgültig leeren. Sie sollten Inhalte archivieren, wenn Sie einen Beitrag als wichtig, aber nicht aktuell erachten. Wegwerfen sollte benutzt werden, wenn Sie den Inhalt von der Website komplett löschen wollen und in zukünftigen Suchergebnissen nicht mehr erscheinen soll.  </p><br />', '', 1, 3, 0, 27, '2006-10-11 05:19:43', 62, '', '2007-11-08 12:02:40', 62, 0, '0000-00-00 00:00:00', '2006-10-10 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 5, 0, 1, '', '', 0, 4, 'robots=\nauthor='),
(41, 'Kurzmeldung 5', 'kurzmeldung-5', '', 'Joomla! 1.5 - ''Entdecke die Freiheit''!. Nie war es einfacher, eine eigene dynamische Website zu erstellen. Verwalten Sie Ihre Inhalte über die beste CMS-Administrations-Oberfläche und in nahezu jeder Sprache, die Sie sprechen.<br />', '', 1, 1, 0, 3, '2006-10-12 00:17:31', 62, '', '2007-11-08 12:17:53', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 2, '', '', 0, 4, 'robots=\nauthor='),
(42, 'Kurzmeldung 4', 'kurzmeldung-4', '', 'Gestern traten alle amerikanischen Server in den Streik mit der Forderung nach mehr RAM und besseren CPUs. Ein Sprecher verkündete, dass der Bedarf an besserem RAM darauf zurückzuführen sei, dass irgend ein Idiot beschlossen hatte, die Geschwindigkeit des Front-Side-Bus zu erhöhen. Zukünftig sollen Busse aufgefordert werden, in der Nähe bewohnter Motherboards die Geschwindigkeit zu reduzieren.', '', 1, 1, 0, 3, '2006-10-12 00:25:50', 62, '', '2007-11-08 12:17:20', 62, 0, '0000-00-00 00:00:00', '2006-10-11 06:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=', 4, 0, 1, '', '', 0, 5, 'robots=\nauthor='),
(43, 'Beispielseiten und Menülinks', 'beispielseiten-und-menuelinks', '', '<p>Diese Seite dient als Beispiel für einen Beitrag der "nicht kategorisiert" ist, d.h. er gehört keinem Bereich und keiner Kategorie an. Wie Sie sehen gibt es hier auf der linken Seite ein neues Menü. Es enthält Links zu denselben Inhalten, die jedoch in vier Varianten dargestellt werden:</p><ul><li>ein Bereich als Blog</li><li>ein Bereich als Tabelle</li><li>eine Kategorie als Blog</li><li>eine Kategorie als Tabelle</li></ul><p>Folgen Sie den Links im Menü <strong>Beispielseiten</strong>, um einige Möglichkeiten zu sehen, wie sich die verschiedenen Inhalte innerhalb der Grundinstallation von Joomla! darstellen lassen.</p><p>Darin sind Komponenten und einzelne Beiträge eingeschlossen. Die Links oder Menüeintrags-Typen werden gemeinsam über <strong><code>Menüs-&gt;[menüname]-&gt;Menüeinträge</code></strong> verwaltet.</p>', '', 1, 0, 0, 0, '2006-10-12 09:26:52', 62, '', '2008-05-12 18:32:57', 62, 62, '2008-05-12 18:32:58', '2006-10-11 10:00:00', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 8, 0, 1, 'Nicht kategorisiert, unkategorisiert, Beispielseiten und Menülinks', '', 0, 42, 'robots=\nauthor='),
(44, 'Joomlas Sicherheitsstoßtrupp', 'joomlas-sicherheitsstosstrupp', '', '<p>Das Joomla-Projekt hat ein erstklassiges Expertenteam zusammengestellt und daraus den neuen Joomla-Sicherheitsstoßtrupp formiert. Das neue Team wird sich ausschließlich auf die Erforschung und Lösung von Sicherheitsfragen konzentrieren. Anstatt jedoch in relativer Geheimhaltung zu agieren, wird das sogenannte <em>Joomla Security Strike Team</em> (JSST) im neuen <a href="http://developer.joomla.org/security.html" lang="en">Joomla Security Center</a> intensiv und öffentlich seine Präsenz zeigen.</p>', '<p>Dem <abbr title="Joomla Security Strike Team" lang="en">JSST</abbr> dient das neue, englischsprachige <a href="http://developer.joomla.org/security.html">Joomla Security Center</a> als Basisstation. In diesem Sicherheitszentrum werden <a href="http://developer.joomla.org/security/news.html">Sicherheitsmängel</a> öffentlich ausgewiesen, zugleich stellt es dem <abbr title="Joomla Security Strike Team" lang="en">JSST</abbr> eine Plattform bereit um der Öffentlichkeit <a href="http://developer.joomla.org/security/articles-tutorials.html">Hilfe im Umgang mit dem Thema Sicherheit</a> zu geben und welche Rolle es bei Joomla! spielt. Das Sicherheitszentrum hilft Anwendern auch dabei das Thema Sicherheit und die Behandlung bei Problemen besser nachzuvollziehen. Darüber hinaus liegt ein <a href="http://feedproxy.google.com/JoomlaSecurityNews">News-Feed</a> bereit, der Abonennten, pünktlich auf die Minute, über auftretende Sicherheitsprobleme informiert.</p>', 1, 1, 0, 1, '2008-08-31 04:07:47', 62, '', '2008-09-11 06:15:06', 62, 0, '0000-00-00 00:00:00', '2008-08-31 04:07:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 3, '', '', 0, 0, 'robots=\nauthor='),
(45, 'Joomla Community-Portal', 'joomla-community-portal', '', '<p>Das neue <a href="http://community.joomla.org/">Joomla Community-Portal</a> ist online. Beim Joomla Community-Portal handelt es sich um eine neue Website für die Joomla-Gemeinde. Sie finden dort eine stetig sprudelnde Quelle an Informationen über die Aktivitäten, die das Joomla-Projekt antreiben. Sie erfahren von weltweiten <a href="http://community.joomla.org/events.html">Joomla-Events</a> und können sich nach einer <a href="http://community.joomla.org/joomla-user-groups.html">Joomla User-Group</a> in Ihrer Nähe umschauen. Ein neues, monatliches <a href="http://magazine.joomla.org">Joomla Community Magazin</a> verspricht eine interessante Übersicht der Projektaktivitäten, Leistungen der Community sowie Lernmaterialien.</p>', '<p>Das <a href="http://magazine.joomla.org">Joomla Community-Magazin</a> verspricht eine monatliches Zwangslektüre zu werden. Mitglieder der Community werden abwechselnd ihre coolen Joomla! 1.5 Websites, Joomla 1.5 GPL Erweiterungen, Veranstaltungen, Möglichkeiten zum Mitmachen und Beiträge über lokale Communities mit Ihnen teilen.</p> <p>Das neue <a href="http://community.joomla.org/connect.html">JoomlaConnect&trade;</a> vereint Tonnen an Joomla!-News aus aller Welt. Holen Sie sich das Neueste und Größte indem Sie <a href="http://community.joomla.org/connect.html">hier klicken</a>.</p>', 1, 1, 0, 1, '2008-08-31 04:07:47', 62, '', '2008-09-11 06:15:06', 62, 0, '0000-00-00 00:00:00', '2008-08-31 04:07:47', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 2, 0, 2, '', '', 0, 0, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content_frontpage`
--

CREATE TABLE IF NOT EXISTS `content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `content_frontpage`
--

INSERT INTO `content_frontpage` (`content_id`, `ordering`) VALUES
(45, 2),
(6, 3),
(44, 4),
(5, 5),
(9, 6),
(30, 7),
(16, 8);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `content_rating`
--

CREATE TABLE IF NOT EXISTS `content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_acl_aro`
--

CREATE TABLE IF NOT EXISTS `core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `core_acl_aro`
--

INSERT INTO `core_acl_aro` (`id`, `section_value`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_acl_aro_groups`
--

CREATE TABLE IF NOT EXISTS `core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `gacl_parent_id_aro_groups` (`parent_id`),
  KEY `gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Daten für Tabelle `core_acl_aro_groups`
--

INSERT INTO `core_acl_aro_groups` (`id`, `parent_id`, `name`, `lft`, `rgt`, `value`) VALUES
(17, 0, 'ROOT', 1, 22, 'ROOT'),
(28, 17, 'USERS', 2, 21, 'USERS'),
(29, 28, 'Public Frontend', 3, 12, 'Public Frontend'),
(18, 29, 'Registered', 4, 11, 'Registered'),
(19, 18, 'Author', 5, 10, 'Author'),
(20, 19, 'Editor', 6, 9, 'Editor'),
(21, 20, 'Publisher', 7, 8, 'Publisher'),
(30, 28, 'Public Backend', 13, 20, 'Public Backend'),
(23, 30, 'Manager', 14, 19, 'Manager'),
(24, 23, 'Administrator', 15, 18, 'Administrator'),
(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_acl_aro_map`
--

CREATE TABLE IF NOT EXISTS `core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_acl_aro_sections`
--

CREATE TABLE IF NOT EXISTS `core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gacl_value_aro_sections` (`value`),
  KEY `gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Daten für Tabelle `core_acl_aro_sections`
--

INSERT INTO `core_acl_aro_sections` (`id`, `value`, `order_value`, `name`, `hidden`) VALUES
(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_acl_groups_aro_map`
--

CREATE TABLE IF NOT EXISTS `core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `core_acl_groups_aro_map`
--

INSERT INTO `core_acl_groups_aro_map` (`group_id`, `section_value`, `aro_id`) VALUES
(25, '', 10);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_log_items`
--

CREATE TABLE IF NOT EXISTS `core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `core_log_searches`
--

CREATE TABLE IF NOT EXISTS `core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `groups`
--

CREATE TABLE IF NOT EXISTS `groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `groups`
--

INSERT INTO `groups` (`id`, `name`) VALUES
(0, 'Public'),
(1, 'Registered'),
(2, 'Special');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=53 ;

--
-- Daten für Tabelle `menu`
--

INSERT INTO `menu` (`id`, `menutype`, `name`, `alias`, `link`, `type`, `published`, `parent`, `componentid`, `sublevel`, `ordering`, `checked_out`, `checked_out_time`, `pollid`, `browserNav`, `access`, `utaccess`, `params`, `lft`, `rgt`, `home`) VALUES
(1, 'mainmenu', 'Startseite', 'home', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=Willkommen auf der Startseite\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=front\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 1),
(2, 'mainmenu', 'Joomla!-Lizenz', 'joomla-lizenz', 'index.php?option=com_content&view=article&id=5', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(41, 'mainmenu', 'FAQ', 'faq', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(11, 'othermenu', 'Joomla!-Home', 'joomla-home', 'http://www.joomla.org', 'url', 1, 0, 0, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(12, 'othermenu', 'Joomla!-Foren', 'joomla-forums', 'http://forum.joomla.org', 'url', 1, 0, 0, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(13, 'othermenu', 'Joomla!-Hilfe', 'joomla-help', 'http://help.joomla.org', 'url', 1, 0, 0, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(14, 'othermenu', 'Joomla! Community', 'joomla-community', 'http://community.joomla.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(15, 'othermenu', 'Joomla! Magazin', 'joomla-community-magazin', 'http://magazine.joomla.org', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(16, 'othermenu', 'OSM Home', 'osm-home', 'http://www.opensourcematters.org', 'url', 1, 0, 0, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 4, 'menu_image=-1\n\n', 0, 0, 0),
(17, 'othermenu', 'Administrator', 'administrator', 'administrator/', 'url', 1, 0, 0, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'menu_image=-1\n\n', 0, 0, 0),
(18, 'topmenu', 'News', 'news', 'index.php?option=com_newsfeeds&view=newsfeed&id=1&feedid=1', 'component', 1, 0, 11, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'show_page_title=1\npage_title=News\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(20, 'usermenu', 'Ihre Details', 'ihre-details', 'index.php?option=com_user&view=user&task=edit', 'component', 1, 0, 14, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(24, 'usermenu', 'Abmelden', 'abmelden', 'index.php?option=com_user&view=login', 'component', 1, 0, 14, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 1, 3, '', 0, 0, 0),
(38, 'keyconcepts', 'Inhaltlayouts', 'inhaltlayouts', 'index.php?option=com_content&view=article&id=24', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(27, 'mainmenu', 'Joomla! im Überblick', 'joomla-overview', 'index.php?option=com_content&view=article&id=19', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(28, 'topmenu', 'Über Joomla!', 'about-joomla', 'index.php?option=com_content&view=article&id=25', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(29, 'topmenu', 'Merkmale', 'merkmale', 'index.php?option=com_content&view=article&id=22', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(30, 'topmenu', 'Die Community', 'die-community', 'index.php?option=com_content&view=article&id=27', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(34, 'mainmenu', 'Was ist neu in 1.5?', 'was-ist-neu-in-1-5', 'index.php?option=com_content&view=article&id=22', 'component', 1, 27, 20, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(40, 'keyconcepts', 'Erweiterungen', 'erweiterungen', 'index.php?option=com_content&view=article&id=26', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(37, 'mainmenu', 'Mehr über Joomla!', 'mehr-ueber-joomla', 'index.php?option=com_content&view=section&id=4', 'component', 1, 0, 20, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1', 0, 0, 0),
(43, 'keyconcepts', 'Beispielseiten', 'beispielseiten', 'index.php?option=com_content&view=article&id=43', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'pageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(44, 'ExamplePages', 'Bereich als Blog', 'bereich-als-blog', 'index.php?option=com_content&view=section&layout=blog&id=3', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Beispiel eines Bereichs-Blog-Layout (FAQ-Bereich)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(45, 'ExamplePages', 'Bereich als Tabelle', 'bereich-als-tabelle', 'index.php?option=com_content&view=section&id=3', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Beispiel eines Bereichs-Layout (Joomla!-Standard) (FAQ-Bereich)\nshow_description=0\nshow_description_image=0\nshow_categories=1\nshow_empty_categories=0\nshow_cat_num_articles=1\nshow_category_description=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby=\nshow_noauth=0\nshow_title=1\nnlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(46, 'ExamplePages', 'Kategorie als Blog', 'kategorie-als-blog', 'index.php?option=com_content&view=category&layout=blog&id=31', 'component', 1, 0, 20, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Beispiel eines Kategorie-Blog-Layouts (FAQ/Allgemein-Kategorie)\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(47, 'ExamplePages', 'Kategorie als Tabelle', 'kategorie-als-tabelle', 'index.php?option=com_content&view=category&id=32', 'component', 1, 0, 20, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Beispiel eines Kategorie-Listen-Layouts (Joomla!-Standard) (FAQ/Sprachen-Kategorie)\nshow_headings=1\nshow_date=0\ndate_format=\nfilter=1\nfilter_type=title\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_sec=\nshow_pagination=1\nshow_pagination_limit=1\nshow_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(48, 'mainmenu', 'Weblinks', 'weblinks', 'index.php?option=com_weblinks&view=categories', 'component', 1, 0, 4, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=Weblinks\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 0, 0, 0),
(49, 'mainmenu', 'Newsfeeds', 'newsfeeds', 'index.php?option=com_newsfeeds&view=categories', 'component', 1, 0, 11, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=Newsfeeds\nshow_comp_description=1\ncomp_description=\nimage=-1\nimage_align=right\npageclass_sfx=\nmenu_image=-1\nsecure=0\nshow_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_other_cats=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 0, 0, 0),
(50, 'mainmenu', 'Neuigkeiten', 'neuigkeiten', 'index.php?option=com_content&view=category&layout=blog&id=1', 'component', 1, 0, 20, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_page_title=1\npage_title=The News\nshow_description=0\nshow_description_image=0\nnum_leading_articles=1\nnum_intro_articles=4\nnum_columns=2\nnum_links=4\nshow_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\norderby_pri=\norderby_sec=\nshow_pagination=2\nshow_pagination_results=1\nshow_noauth=0\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=1\nshow_create_date=1\nshow_modify_date=1\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=1\nshow_pdf_icon=1\nshow_print_icon=1\nshow_email_icon=1\nshow_hits=1\n\n', 0, 0, 0),
(51, 'usermenu', 'Beitrag einreichen', 'beitrag-einreichen', 'index.php?option=com_content&view=article&layout=form', 'component', 1, 0, 20, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0),
(52, 'usermenu', 'Weblink einreichen', 'weblink-einreichen', 'index.php?option=com_weblinks&view=weblink&layout=form', 'component', 1, 0, 4, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 2, 0, '', 0, 0, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `menu_types`
--

CREATE TABLE IF NOT EXISTS `menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `menu_types`
--

INSERT INTO `menu_types` (`id`, `menutype`, `title`, `description`) VALUES
(1, 'mainmenu', 'Hauptmenü', 'Das Hauptmenü dieser Website'),
(2, 'usermenu', 'Benutzermenü', 'Ein Menü für angemeldete Benutzer'),
(3, 'topmenu', 'Menü oben', 'Menü oben'),
(4, 'othermenu', 'Weiteres Menü', 'Zusätzliche Links'),
(5, 'ExamplePages', 'Beispielseiten', 'Beispielseiten'),
(6, 'keyconcepts', 'Schlüsselkonzepte', 'Beschreibung einiger kritischer Informationen für neue Benutzer.');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages`
--

CREATE TABLE IF NOT EXISTS `messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `messages_cfg`
--

CREATE TABLE IF NOT EXISTS `messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `migration_backlinks`
--

CREATE TABLE IF NOT EXISTS `migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `modules`
--

CREATE TABLE IF NOT EXISTS `modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=44 ;

--
-- Daten für Tabelle `modules`
--

INSERT INTO `modules` (`id`, `title`, `content`, `ordering`, `position`, `checked_out`, `checked_out_time`, `published`, `module`, `numnews`, `access`, `showtitle`, `params`, `iscore`, `client_id`, `control`) VALUES
(1, 'Hauptmenü', '', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=mainmenu\nmoduleclass_sfx=_menu\n', 1, 0, ''),
(2, 'Anmeldung', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, ''),
(3, 'Beliebt', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, ''),
(4, 'Neue Beiträge', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, ''),
(5, 'Statistiken', '', 6, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, ''),
(6, 'Ungelesene Nachrichten', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, ''),
(7, 'Benutzer online', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, ''),
(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, ''),
(9, 'Quick-Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_quickicon', 0, 2, 1, '', 1, 1, ''),
(10, 'Angemeldete Benutzer', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_logged', 0, 2, 1, '', 0, 1, ''),
(11, 'Fußzeile', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, ''),
(12, 'Admin-Menü', '', 1, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_menu', 0, 2, 1, '', 0, 1, ''),
(13, 'Admin-Untermenü', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, ''),
(14, 'Benutzerstatus', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, ''),
(15, 'Titel', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, ''),
(43, 'Update nötig?', '', 2, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_jgerman', 0, 2, 1, 'select_language=de-DE\nauto_check=auto_check_no\ncheck_core=check_core_show\ndelete_notice=delete_notice_show\nimage_size=middle\ncache=0\n\n', 0, 1, ''),
(16, 'Umfragen', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_poll', 0, 0, 1, 'id=14\ncache=1', 0, 0, ''),
(17, 'Benutzermenü', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 1, 1, 'menutype=usermenu\nmoduleclass_sfx=_menu\ncache=1', 1, 0, ''),
(18, 'Anmeldung', '', 8, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, 'greeting=1\nname=0', 1, 0, ''),
(19, 'Neueste Nachrichten', '', 4, 'user1', 0, '0000-00-00 00:00:00', 1, 'mod_latestnews', 0, 0, 1, 'cache=1', 1, 0, ''),
(20, 'Statistiken', '', 6, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_stats', 0, 0, 1, 'serverinfo=1\nsiteinfo=1\ncounter=1\nincrease=0\nmoduleclass_sfx=', 0, 0, ''),
(21, 'Wer ist online', '', 1, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_whosonline', 0, 0, 1, 'online=1\nusers=1\nmoduleclass_sfx=', 0, 0, ''),
(22, 'Meist gelesen', '', 6, 'user2', 0, '0000-00-00 00:00:00', 1, 'mod_mostread', 0, 0, 1, 'cache=1', 0, 0, ''),
(23, 'Archiv', '', 9, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_archive', 0, 0, 1, 'cache=1', 1, 0, ''),
(24, 'Bereiche', '', 10, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_sections', 0, 0, 1, 'cache=1', 1, 0, ''),
(25, 'Schlagzeilen', '', 1, 'top', 0, '0000-00-00 00:00:00', 1, 'mod_newsflash', 0, 0, 1, 'catid=3\r\nstyle=random\r\nitems=\r\nmoduleclass_sfx=', 0, 0, ''),
(26, 'Verwandte Beiträge', '', 11, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_related_items', 0, 0, 1, '', 0, 0, ''),
(27, 'Suche', '', 1, 'user4', 0, '0000-00-00 00:00:00', 1, 'mod_search', 0, 0, 0, 'cache=1', 0, 0, ''),
(28, 'Zufallsbild', '', 9, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_random_image', 0, 0, 1, '', 0, 0, ''),
(29, 'Menü oben', '', 1, 'user3', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'cache=1\nmenutype=topmenu\nmenu_style=list_flat\nmenu_images=n\nmenu_images_align=left\nexpand_menu=n\nclass_sfx=-nav\nmoduleclass_sfx=\nindent_image1=0\nindent_image2=0\nindent_image3=0\nindent_image4=0\nindent_image5=0\nindent_image6=0', 1, 0, ''),
(30, 'Banner', '', 1, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 0, 'target=1\ncount=1\ncid=1\ncatid=33\ntag_search=0\nordering=random\nheader_text=\nfooter_text=\nmoduleclass_sfx=\ncache=1\ncache_time=900\n\n', 1, 0, ''),
(31, 'Quellen', '', 2, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'menutype=othermenu\nmenu_style=list\ncache=1\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nclass_sfx=\nmoduleclass_sfx=\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nmoduleclass_sfx=_menu\n', 0, 0, ''),
(32, 'Wrapper', '', 12, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_wrapper', 0, 0, 1, '', 0, 0, ''),
(33, 'Fußzeile', '', 2, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 0, 'cache=1\n\n', 1, 0, ''),
(34, 'Feed-Anzeige', '', 13, 'left', 0, '0000-00-00 00:00:00', 0, 'mod_feed', 0, 0, 1, '', 1, 0, ''),
(35, 'Navigationspfad (Breadcrumb)', '', 1, 'breadcrumb', 0, '0000-00-00 00:00:00', 1, 'mod_breadcrumbs', 0, 0, 1, 'moduleclass_sfx=\ncache=0\nshowHome=1\nhomeText=Start\nshowComponent=1\nseparator=\n\n', 1, 0, ''),
(36, 'Syndication', '', 3, 'syndicate', 0, '0000-00-00 00:00:00', 1, 'mod_syndicate', 0, 0, 0, '', 1, 0, ''),
(38, 'Werbung', '', 3, 'right', 0, '0000-00-00 00:00:00', 1, 'mod_banners', 0, 0, 1, 'count=4\r\nrandomise=0\r\ncid=0\r\ncatid=14\r\nheader_text=Empfohlene Links:\r\nfooter_text=<a href="http://www.joomla.org">Inserate von Joomla!</a>\r\nmoduleclass_sfx=_text\r\ncache=0\r\n\r\n', 0, 0, ''),
(39, 'Beispielseiten', '', 5, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=ExamplePages\nmenu_style=list_flat\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(40, 'Schlüsselkonzepte', '', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 1, 'cache=1\nclass_sfx=\nmoduleclass_sfx=_menu\nmenutype=keyconcepts\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nfull_active_id=0\nmenu_images=0\nmenu_images_align=0\nexpand_menu=0\nactivate_parent=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\nwindow_open=\n\n', 0, 0, ''),
(41, 'Willkommen bei Joomla!', '<div style="padding: 5px"><p>Gratulation, dass Sie Joomla! als Ihr Content-Management-System gewählt haben. Wir hoffen, dass es Ihnen mit unserem Programm gelingt eine erfolgreiche Website zu erstellen und der Gemeinschaft vielleicht zu einem späteren Punkt etwas zurückgeben können.</p><p>Um Ihren Anfang mit Joomla! so einfach wie möglich zu gestalten, möchten wir Ihnen einige Punkte aufzeigen, wie z.B. allgemeinen Fragen, Hilfen und Sicherheit Ihres Server.</p><p>Sie sollten mit dem &quot;<a href="http://docs.joomla.org/beginners" target="_blank">Absolute Beginners Guide to Joomla!</a>&quot; anfangen und dann, um die Sicherheit Ihres Servers zu gewährleisten, die &quot;<a href="http://forum.joomla.org/viewtopic.php?t=81058" target="_blank">Security Checklist</a>&quot; lesen.</p><p>Für Ihre häufig gestellten Fragen sollten Sie zuerst ins <a href="http://forum.joomla.org" target="_blank">Forum</a> schauen und die <a href="http://docs.joomla.org/Category:FAQ" target="_blank">FAQ</a> im Wiki lesen. Im Forum finden Sie eine Antwort auf fast alle Ihre Fragen. Auch wenn diese bisher nur einmal von anderen beantwortet wurden, so ist das Forum ein großes Nachschlagewerk für Anfänger und Profis. Bitte benutzen Sie die Suchfunktion des Forums bevor Sie Ihre Frage stellen, es könnte nämlich sein, dass diese schon einmal gestellt wurde. <img alt="Lächeln" border="0" src="../plugins/editors/tinymce/jscripts/tiny_mce/plugins/emotions/images/smiley-smile.gif" title="Lächeln" /></p><p>Die Sicherheit ist ein großes Anliegen für uns, deshalb würden wir es begrüßen, wenn Sie das &quot;<a href="http://forum.joomla.org/viewforum.php?f=8" target="_blank">Announcement-Forum</a>&quot; abonnieren würden, damit Sie immer aktuelle Informationen über neue Joomla!-Versionen bekommen. Sie sollten aber auch regelmäßig das &quot;<a href="http://forum.joomla.org/viewforum.php?f=432" target="_blank">Security-Forum</a>&quot; besuchen.</p><p>Wir hoffen, dass Sie viel Spaß und Erfolg mit Joomla! haben und Sie bald unter den Hunderten bzw. Tausenden an Joomla!-Benutzern sind, die Anfängern helfen können.</p><p>Ihr Joomla!-Team</p><p>P.S.: Um diese Anzeige zu entfernen, löschen Sie einfach das &quot;Willkommen bei Joomla!&quot;-Modul unter &quot;Erweiterungen&quot;-&gt;&quot;Module&quot; -&gt;&quot;Administrator&quot;.</p></div>', 1, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 2, 1, 'moduleclass_sfx=\n\n', 1, 1, ''),
(42, 'Joomla! Security Newsfeed', '', 6, 'cpanel', 62, '2008-10-25 20:15:17', 1, 'mod_feed', 0, 0, 1, 'cache=1\ncache_time=15\nmoduleclass_sfx=\nrssurl=http://feeds.joomla.org/JoomlaSecurityNews\nrssrtl=0\nrsstitle=1\nrssdesc=0\nrssimage=1\nrssitems=1\nrssitemdesc=1\nword_count=0\n\n', 0, 1, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `modules_menu`
--

CREATE TABLE IF NOT EXISTS `modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `modules_menu`
--

INSERT INTO `modules_menu` (`moduleid`, `menuid`) VALUES
(1, 0),
(16, 1),
(17, 0),
(18, 1),
(19, 1),
(19, 2),
(19, 4),
(19, 27),
(19, 36),
(21, 1),
(22, 1),
(22, 2),
(22, 4),
(22, 27),
(22, 36),
(25, 0),
(27, 0),
(29, 0),
(30, 0),
(31, 1),
(32, 0),
(33, 0),
(34, 0),
(35, 0),
(36, 0),
(38, 1),
(39, 43),
(39, 44),
(39, 45),
(39, 46),
(39, 47),
(40, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `newsfeeds`
--

CREATE TABLE IF NOT EXISTS `newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16 ;

--
-- Daten für Tabelle `newsfeeds`
--

INSERT INTO `newsfeeds` (`catid`, `id`, `name`, `alias`, `link`, `filename`, `published`, `numarticles`, `cache_time`, `checked_out`, `checked_out_time`, `ordering`, `rtl`) VALUES
(4, 1, 'Joomla! Ankündigungen', 'joomla-ankuendigungen', 'http://feeds.joomla.org/JoomlaAnnouncements', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(4, 2, 'Joomla! Core-Team Blog', 'joomla-core-team-blog', 'http://feeds.joomla.org/JoomlaCommunityCoreTeamBlog', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(4, 3, 'Joomla! Community-Magazin', 'joomla-community-magazin', 'http://feeds.joomla.org/JoomlaMagazine', '', 1, 20, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(4, 4, 'Joomla! Developer-News', 'joomla-developer-news', 'http://feeds.joomla.org/JoomlaDeveloper', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 5, 'Joomla! Sicherheits-News', 'joomla-sicherheits-news', 'http://feeds.joomla.org/JoomlaSecurityNews', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(5, 6, 'Free Software Foundation Blogs', 'free-software-foundation-blogs', 'http://www.fsf.org/blogs/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(5, 7, 'Free Software Foundation', 'free-software-foundation', 'http://www.fsf.org/news/RSS', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(5, 8, 'Software Freedom Law Center Blog', 'software-freedom-law-center-blog', 'http://www.softwarefreedom.org/feeds/blog/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(5, 9, 'Software Freedom Law Center News', 'software-freedom-law-center', 'http://www.softwarefreedom.org/feeds/news/', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(5, 10, 'Open Source Initiative Blog', 'open-source-initiative-blog', 'http://www.opensource.org/blog/feed', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 5, 0),
(6, 11, 'PHP-News und Ankündigungen', 'php-news-und-ankuendigungen', 'http://www.php.net/feed.atom', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 1, 0),
(6, 12, 'Planet MySQL', 'planet-mysql', 'http://www.planetmysql.org/rss20.xml', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 2, 0),
(6, 13, 'Linux Foundation Ankündigungen', 'linux-foundation-ankuendigungen', 'http://www.linuxfoundation.org/press/rss20.xml', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 3, 0),
(6, 14, 'Mootools Blog', 'mootools-blog', 'http://feeds.feedburner.com/mootools-blog', NULL, 1, 5, 3600, 0, '0000-00-00 00:00:00', 4, 0),
(4, 15, 'J!German News', 'jgerman-news', 'http://www.jgerman.de/feed/rss.html', '', 1, 5, 3600, 0, '0000-00-00 00:00:00', 6, 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `plugins`
--

CREATE TABLE IF NOT EXISTS `plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=35 ;

--
-- Daten für Tabelle `plugins`
--

INSERT INTO `plugins` (`id`, `name`, `element`, `folder`, `access`, `ordering`, `published`, `iscore`, `client_id`, `checked_out`, `checked_out_time`, `params`) VALUES
(1, 'Authentifikation - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(2, 'Authentifikation - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n'),
(3, 'Authentifikation - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(4, 'Authentifikation - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(5, 'Benutzer - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n'),
(6, 'Suche - Inhalte', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n'),
(7, 'Suche - Kontakte', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(8, 'Suche - Kategorien', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(9, 'Suche - Bereiche', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(10, 'Suche - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(11, 'Suche - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n'),
(12, 'Inhalt - Seitenumbruch', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n'),
(13, 'Inhalt - Bewertung', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(14, 'Inhalt - E-Mail-Verschleierung', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n'),
(15, 'Inhalt - Code-Hervorhebung (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', ''),
(16, 'Inhalt - Modul laden', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n'),
(17, 'Inhalt - Seitennavigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n'),
(18, 'Editor - Kein Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=de\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%d.%m.%Y\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n'),
(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(21, 'Editorbutton - Bild', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(22, 'Editorbutton - Seitenumbruch', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(23, 'Editorbutton - Weiterlesen', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(25, 'XML-RPC - Blogger-API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n'),
(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', ''),
(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n'),
(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n'),
(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n'),
(31, 'System - Protokoll', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(32, 'System - Angemeldet bleiben', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', ''),
(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', ''),
(34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 8, 0, 1, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `poll_data`
--

CREATE TABLE IF NOT EXISTS `poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=13 ;

--
-- Daten für Tabelle `poll_data`
--

INSERT INTO `poll_data` (`id`, `pollid`, `text`, `hits`) VALUES
(1, 14, 'Community-Seiten', 2),
(2, 14, 'Öffentliche Firmenseiten', 3),
(3, 14, 'eCommerce', 1),
(4, 14, 'Blogs', 0),
(5, 14, 'Intranets', 0),
(6, 14, 'Foto- und Medienseiten', 2),
(7, 14, 'Alles oben genannte!', 3),
(8, 14, '', 0),
(9, 14, '', 0),
(10, 14, '', 0),
(11, 14, '', 0),
(12, 14, '', 0);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `poll_date`
--

CREATE TABLE IF NOT EXISTS `poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Daten für Tabelle `poll_date`
--

INSERT INTO `poll_date` (`id`, `date`, `vote_id`, `poll_id`) VALUES
(1, '2007-10-09 13:01:58', 1, 14),
(2, '2007-10-10 15:19:43', 7, 14),
(3, '2007-10-11 11:08:16', 7, 14),
(4, '2007-10-11 15:02:26', 2, 14),
(5, '2007-10-11 15:43:03', 7, 14),
(6, '2007-10-11 15:43:38', 7, 14),
(7, '2007-10-12 00:51:13', 2, 14),
(8, '2008-05-10 19:12:29', 3, 14),
(9, '2008-05-14 14:18:00', 6, 14),
(10, '2008-06-10 15:20:29', 6, 14),
(11, '2008-07-03 12:37:53', 2, 14);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `poll_menu`
--

CREATE TABLE IF NOT EXISTS `poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `polls`
--

CREATE TABLE IF NOT EXISTS `polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=15 ;

--
-- Daten für Tabelle `polls`
--

INSERT INTO `polls` (`id`, `title`, `alias`, `voters`, `checked_out`, `checked_out_time`, `published`, `access`, `lag`) VALUES
(14, 'Wozu nutzen Sie Joomla!?', 'wozu-nutzen-sie-joomla', 11, 0, '0000-00-00 00:00:00', 1, 0, 86400);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `sections`
--

CREATE TABLE IF NOT EXISTS `sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Daten für Tabelle `sections`
--

INSERT INTO `sections` (`id`, `title`, `name`, `alias`, `image`, `scope`, `image_position`, `description`, `published`, `checked_out`, `checked_out_time`, `ordering`, `access`, `count`, `params`) VALUES
(1, 'News', '', 'news', 'articles.jpg', 'content', 'right', 'Wählen Sie eines der unten angeführten News-Themen, dann den Beitrag zum Lesen.', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, ''),
(3, 'FAQs', '', 'faqs', 'key.jpg', 'content', 'left', 'Wählen Sie eines der unten angeführten FAQ-Themen, dann eine FAQ. Sollten Sie eine Frage haben welche hier nicht beantwortet ist, kontaktieren Sie uns bitte.', 1, 0, '0000-00-00 00:00:00', 5, 0, 23, ''),
(4, 'Über Joomla!', '', 'ueber-joomla', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 14, '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `session`
--

CREATE TABLE IF NOT EXISTS `session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `session`
--

INSERT INTO `session` (`username`, `time`, `session_id`, `guest`, `userid`, `usertype`, `gid`, `client_id`, `data`) VALUES
('', '1325586509', 'igupn1ml2sovi84rholk8uhnt5', 1, 0, '', 0, 0, 'eBc9BQszszm6waEtX_LFLc8s3UDfh1L3hHdPPxrc3S09YmeOGWMIgPeLS7w3wA6MS6Z2TSwg1m35aoGAoUyR6_sxePiDVsmZSb_Xs0OyP_p1abzY-OEu7c_87WrU3u0oCzU_S5_B8qrERNF2Wbsg7t0OjIV9VM8mc4P33KBSNT4ZEqzNaL13qcVT5--A7UzX5Wo3sfd6Hm9ir3pJzGBBacwrzgXaDfWk2UiT_kj-5Ygn3Jav3YDUPGTXh_pA8_2vAyCTAS-gABBJUT65sS7d1m50kRlzrFGHXnqD-UK4b6gEnL3dSXXdks0hMffNbGNKaTQHUFe3eSfSRlL9lrOzGCxEJ8RFmSE1ZQJ2hptRf76gLTB29hJaaFtZug_ZdrGDniXiUGIFjeANu8D6kPwpblLjzZzKyEIUatiIbC2cC2s1kuHdu68rC6Ayjeld7GmBjOGa-D6dl9a32Qx57kzGlUCxOhrCkC0JMG4KrbMFzpvD34C19qRU1LhR1oibqYab06lKN6sBtlzPbsl-pB01g-1StQq7oIWi_13Wuhz_KUoBQDrix5H7rfSywpffzr8QfO3Yggdx7ZLvim4v6ST6sq1ss_mx5OAJ7ab8-MBLIS8406_BuIuse8bsmBevO8n0vfIlldaHFj2XjpZHt8AU34Xw0ps16B_OOZhFqoQfIysCts-Soon26IIEfh8lmzmRNqPjA34BjMeqDzfT1Xol_gts-zcgYPfbLahsi2P9mJAlacfmz4SMtdzPwbjesq-4FJz2BVx4gz0OEekB9YW-zS4EssHzxBFe5OUdMbrtYCCMrgWgyseoDx-MTejvp2IFWU26sFuqQpHsJjfYakVi1imZfPytOfBB9EXEeySD-SguDiOWz2tMK42ByP6z7PxMZxDdLqR3_5iNrSS9k5hqv_DVigP8CD963csMopVUj12HSBp-MwEWAkwJGCUrUJNou5Y8KxUOcknp_m65ymxA2SMB9vSmDTDA_vo_Yj1fLDsMMQy4Xmvdz1MvnT1FcX-7qDNr5r6C4gTn0GeaU5iMvcRtmbb9E9IRi1BT131LU7Q-ZWXycBuAdmQwoBENebozwFRnzJGylLisiQgR_hcJJoLzMV6_PqVpHG5o8BlFJFvABJe9iCp4Yu4rMDid505x-c4MJ-kx66Cz07G3OT2C-9IS6OwABDQvrmoz-BER4ggLmumHBvCoZi5DeH0ZOSv0_2mvQGcVvnpNi52_3N6BkWP6dcljnqS5LqVnY8L7FQTz7oqot_N5WqpoUFO3HxalA1bNMFSN_q4fI_s_QDY9xa-6igKL6cLBXCDwRy4gww0JCkRNbSBlVp_W1CR84NlsdF8RfKoL_OWYUZyagfrGU4AjCZ4bJQ7WqvpFAUg5BA1AQLQ2dSOlXx2OhIQ7pEMaTaPiRHyvIl9ddm45QE42h3IKu2T_Rw1C7cUJlygERixgo6q5BL0xXLEQSNkuwH70u7_nCN-8toWSJ82ChLdRgg7tWOQsuNLvrVuA9ymYysbJw1-GuT5qybLQibM07Hyv48EPTnw3sXRm08I-TV8WPFq5pd-qGual5zb6bNyJ7fw-73rQvihdGR4K2WjgDb3iYEjpYD6MRkIcFqa1URL6AYBPyB9AAtRo13CVPattvBRZ6zV8Ya_BvI7AM2RNcoVQ_y-M3KTIpBCjxR8pPnEq6PUyHldS_Asym9ssHjGdPIjbewJx-9BxCK-uEg-YNEBQri4BhkCUJuS6pd0JvQy_KgSVSwshOpo0Ss8EIFR0sc0vdeiCO8CGmIfF1R9RTJnfnawvpMbTtv2c7Bv0jvDYKbz8XdcB5YL-rchY_EVbxwexF3PskmmTULI5JijkJzvBNgwzc2PEYxB0ijAil2t38zqiaBVqG4nqdWTbR6EEshd_W8tsYGxEs5xs-jz0at18B3fveuX78U366t4OGdW0HyYI1bAJfC4qOxeXrk9BR1Ooxt2VfoZGgnivg3weqsaemGW9Z3abQ7RCVM5YPrwFgm1vdTYXfm8EbL0yJv5j1z3aKLUsB4NYoda3RXkX27ix0WEIygVQFUS11p1hy4A3WswXxEq575EJEp7hQj00O0K3JV6FuSVtIKU0XnhuSIwtoMC4ieQh_FSDIYxEDKTj-fmDa3TSMeCxd-03xHTZEo-j9lQ789k_Jr5cbCtqf557cpnETYTSIELUP6nv2VIG2C-GEYAWbMZIbilZDQlSMaoZQVAhdstYsBetjTKcCvr6uXIAcdltpXFb3TBMJ1pVqgqba1eDKvoyouM3OfKjLxK4H-fQqEOK1NPDYO_n_iFyLEJTq7mSupFmt2hwONrJCJtGF_1I2V8C5Xnr51ViZ8Sbc716EyJkjdfz5eD5nrMhmvU4w138nwbTvncY7F5ZFunzmgaBgVDGqDWKzUKS4eaud8t07mwgqaCPPUMplH365swyckdjjaUvRGCqvTN4dVN4Sbuu3luf9XgpLeisyAYN5fci7iRXECXTcrIIrzfif8im6_k7JYiIkEHPR2PiVYzs_HmaIGnV-7IUgC5Qgb7mpCl51LgiF8bExHoOWPU6ZwJu3F3NpMJ403L-swgfl5QyQA8d7yf8Jbf9VBC3QxaDcyMNNmM-yCAHGGGTaGL4kwci1fDUODv83VN0z6wLcaMc_RuWUCQgiIweAIWZSD3H5gwG1Y_hFmwF7MIM-q5fIwQPb0Dc4ynFwYjPNFekvA4dRoZafreNAhzF5gg5I1iyxlacy_-UktZBytD2xm2UEdRJ2qmbwzQTqdgDhtGQjBZfvmCzXpFyJe2jWHiwI9jc0C1rKhOnOa0AdbIGaPihqBJTz4qYVLfL-jhTMDurBQuya8f-PCISWCKXP_0QXcO28OgKH5EF0weTdAVV4_NwTqzznGZ5-C7QZ3SGBzUOSUAf8TIbseH7znhxy9DgjQmCLGfgmMEFBE5o1K4wGA7X85f_EKTTGLzRg65fLFeYn62Nt5RLr5brJIvWS3m2XY8c-L65az5S4Y3t1kyf9PQcurxj5viNDSeTMarQwcd5FbeK8i9OlLdOPBnEDkkqsQdZdmCM2x6mobiZ7q04asMfN29wzrhCQUwLn-BBPyx4k4xMrDTZ_pK1mZ1md2GGwcuhY-mLxbNzeSSpcmfeSe0eI4zvT2vtCKOtUlE_Q0sTBOAQt-Tyh1FUwD7bpBoc0lq6MSkxHysRsjXZegMJygDitXyoqr0v4XFdzKN3WFo8Klw4itneqdc--rpRcfBx_oRfFFGNOQJgovMlwVp8Z--c8PM6skr7UubOdV69TgUEuX5dxSLiQ--7gf1NfDBLAbPhv1PXt4LEC8w2YwXwPrmKe78Tn7pBebHjYJ6Y-Id1i80ywr4vAY7--bqKllFaO_09T-e5Jt8tqDXoRmaHrgBd');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `stats_agents`
--

CREATE TABLE IF NOT EXISTS `stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `templates_menu`
--

CREATE TABLE IF NOT EXISTS `templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Daten für Tabelle `templates_menu`
--

INSERT INTO `templates_menu` (`template`, `menuid`, `client_id`) VALUES
('rhuk_milkyway', 0, 0),
('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Daten für Tabelle `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `password`, `usertype`, `block`, `sendEmail`, `gid`, `registerDate`, `lastvisitDate`, `activation`, `params`) VALUES
(62, 'Administrator', 'admin', 'noreply@i-mscp.net', '8d0a66712dc8a5ae98de5fe8d63edaf3:Sa5g32TJh63mJevap3plKb3W3kFE9cR1', 'Super Administrator', 0, 1, 25, '2012-01-03 11:27:57', '0000-00-00 00:00:00', '', '');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `weblinks`
--

CREATE TABLE IF NOT EXISTS `weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Daten für Tabelle `weblinks`
--

INSERT INTO `weblinks` (`id`, `catid`, `sid`, `title`, `alias`, `url`, `description`, `date`, `hits`, `published`, `checked_out`, `checked_out_time`, `ordering`, `archived`, `approved`, `params`) VALUES
(1, 2, 0, 'Joomla!', 'joomla', 'http://www.joomla.org', 'Das Zuhause von Joomla!', '2005-02-14 15:19:02', 3, 1, 0, '0000-00-00 00:00:00', 1, 0, 1, 'target=0'),
(2, 2, 0, 'php.net', 'php', 'http://www.php.net', 'Die Sprache, mit der Joomla! entwickelt wird', '2004-07-07 11:33:24', 6, 1, 0, '0000-00-00 00:00:00', 3, 0, 1, ''),
(3, 2, 0, 'MySQL', 'mysql', 'http://www.mysql.com', 'Die Datenbank, die Joomla! nutzt', '2004-07-07 10:18:31', 1, 1, 0, '0000-00-00 00:00:00', 5, 0, 1, ''),
(4, 2, 0, 'OpenSourceMatters', 'opensourcematters', 'http://www.opensourcematters.org', 'Das Zuhause von OSM', '2005-02-14 15:19:02', 11, 1, 0, '0000-00-00 00:00:00', 2, 0, 1, 'target=0'),
(5, 2, 0, 'Joomla!-Foren', 'joomla-foren', 'http://forum.joomla.org', 'Joomla! Foren', '2005-02-14 15:19:02', 4, 1, 0, '0000-00-00 00:00:00', 4, 0, 1, 'target=0'),
(6, 2, 0, 'Ohloh über Joomla!', 'ohloh-ueber-joomla', 'http://www.ohloh.net/projects/20', 'Sachliche Berichte von Ohloo über die Aktivitäten der Joomla-Entwicklung. Joomla! hat einige ernsthaft anerkannte Star-Programmierer.', '2007-07-19 09:28:31', 1, 1, 0, '0000-00-00 00:00:00', 6, 0, 1, 'target=0\n\n');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
