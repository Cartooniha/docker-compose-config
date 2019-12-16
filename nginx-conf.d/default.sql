-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql_db_service:3306
-- Generation Time: Dec 16, 2019 at 02:47 PM
-- Server version: 8.0.17
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cartooniha`
--

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_autoview`
--

CREATE TABLE `tasvir_autoview` (
  `ave_id` int(11) NOT NULL,
  `ave_cartoons` text NOT NULL,
  `ave_lastdate` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_bookmark`
--

CREATE TABLE `tasvir_bookmark` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_buffer`
--

CREATE TABLE `tasvir_buffer` (
  `buf_id` int(10) UNSIGNED NOT NULL,
  `buf_type` varchar(255) NOT NULL,
  `buf_input` varchar(255) NOT NULL,
  `buf_status` enum('0','1','2') NOT NULL,
  `buf_setting` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_carton_cat`
--

CREATE TABLE `tasvir_carton_cat` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `enname` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `maincat` int(5) NOT NULL,
  `view` tinyint(1) NOT NULL,
  `gener` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `text` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `metakeywords` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `metadesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `totalepisods` int(5) NOT NULL,
  `date` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_carton_players`
--

CREATE TABLE `tasvir_carton_players` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `code` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_cartoonrequest`
--

CREATE TABLE `tasvir_cartoonrequest` (
  `id` int(10) UNSIGNED NOT NULL,
  `persianname` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `englishname` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `total` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_cartoons`
--

CREATE TABLE `tasvir_cartoons` (
  `id` int(10) UNSIGNED NOT NULL,
  `catname` int(5) NOT NULL,
  `name` varchar(255) NOT NULL,
  `summary` text NOT NULL,
  `text` text NOT NULL,
  `more` text NOT NULL,
  `ext_fields` text NOT NULL,
  `ext_fieldsD` text NOT NULL,
  `metakeyword` text NOT NULL,
  `metadesc` varchar(255) NOT NULL,
  `gener` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `thumb` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `date` int(11) NOT NULL,
  `update` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `viewed` int(11) NOT NULL,
  `view` tinyint(1) NOT NULL,
  `comments` tinyint(1) NOT NULL,
  `customorder` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_cartoon_counter`
--

CREATE TABLE `tasvir_cartoon_counter` (
  `cco_id` int(10) UNSIGNED NOT NULL,
  `cco_total` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_catprice`
--

CREATE TABLE `tasvir_catprice` (
  `s_id` int(11) UNSIGNED NOT NULL,
  `s_ccid` int(11) UNSIGNED NOT NULL,
  `s_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `s_desc` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `s_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `s_amount` int(11) NOT NULL,
  `s_customorder` int(11) NOT NULL,
  `s_shoplink` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_charge_mellat`
--

CREATE TABLE `tasvir_charge_mellat` (
  `ta_id` int(11) UNSIGNED NOT NULL,
  `ta_amount` int(11) NOT NULL,
  `ta_date` int(11) NOT NULL,
  `ta_time` int(11) NOT NULL,
  `ta_refid` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `ta_err` int(11) NOT NULL,
  `ta_function` varchar(15) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `ta_userid` int(11) NOT NULL,
  `ta_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_comments`
--

CREATE TABLE `tasvir_comments` (
  `co_id` int(11) UNSIGNED NOT NULL,
  `co_cartoonid` int(10) UNSIGNED NOT NULL,
  `co_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `co_userid` int(11) NOT NULL,
  `co_email` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `co_weblog` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `co_replayid` int(11) NOT NULL,
  `co_date` int(10) UNSIGNED NOT NULL,
  `co_sex` enum('0','1','2') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `co_active` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `co_type` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `co_comment` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `co_issecure` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `co_vote` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_company`
--

CREATE TABLE `tasvir_company` (
  `comp_id` int(11) UNSIGNED NOT NULL,
  `comp_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_faname` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_founded` int(11) NOT NULL,
  `comp_founder` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_country` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_keypeople` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_products` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_text` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_extendfields` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `comp_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_contact`
--

CREATE TABLE `tasvir_contact` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `title` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `notes` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_copyrights`
--

CREATE TABLE `tasvir_copyrights` (
  `cright_id` int(11) NOT NULL,
  `cright_videoid` int(11) NOT NULL,
  `cright_cid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_counter_allday`
--

CREATE TABLE `tasvir_counter_allday` (
  `ca_id` int(10) UNSIGNED NOT NULL,
  `ca_date` int(11) UNSIGNED NOT NULL,
  `ca_totalviewer` int(11) UNSIGNED NOT NULL,
  `ca_totalview` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_counter_today`
--

CREATE TABLE `tasvir_counter_today` (
  `ct_id` int(10) UNSIGNED NOT NULL,
  `ct_ip` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `ct_page` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `ct_session` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `ct_referer` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_imdb`
--

CREATE TABLE `tasvir_imdb` (
  `imdb_id` int(11) UNSIGNED NOT NULL,
  `imdb_vid` int(11) NOT NULL,
  `imdb_link` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `imdb_date` int(11) NOT NULL,
  `imdb_company` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `imdb_rating` int(11) NOT NULL,
  `imdb_extend` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `imdb_age` int(11) NOT NULL,
  `imdb_information` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_maincats`
--

CREATE TABLE `tasvir_maincats` (
  `mc_id` int(10) UNSIGNED NOT NULL,
  `mc_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `mc_desc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `mc_metakeywrod` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `mc_metadesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_news`
--

CREATE TABLE `tasvir_news` (
  `news_id` int(11) UNSIGNED NOT NULL,
  `news_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `news_summary` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `news_text` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `news_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `news_metadesc` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `news_view` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_news_category`
--

CREATE TABLE `tasvir_news_category` (
  `newsc_id` int(10) UNSIGNED NOT NULL,
  `newsc_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_order`
--

CREATE TABLE `tasvir_order` (
  `order_id` int(11) NOT NULL,
  `order_userid` int(11) NOT NULL,
  `order_videoid` int(11) NOT NULL,
  `order_type` int(11) NOT NULL,
  `order_price` int(11) NOT NULL,
  `order_status` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `order_date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_order_types`
--

CREATE TABLE `tasvir_order_types` (
  `otypes_id` int(11) NOT NULL,
  `otypes_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_page`
--

CREATE TABLE `tasvir_page` (
  `page_id` int(11) NOT NULL,
  `page_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `page_content` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `page_keyword` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `page_describtion` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_payment_methods`
--

CREATE TABLE `tasvir_payment_methods` (
  `pmet_id` int(11) UNSIGNED NOT NULL,
  `pmet_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `pmet_tablename` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_people`
--

CREATE TABLE `tasvir_people` (
  `p_id` int(11) UNSIGNED NOT NULL,
  `p_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_faname` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_born` int(11) UNSIGNED NOT NULL,
  `p_borncity` varchar(2000) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_died` int(11) UNSIGNED NOT NULL,
  `p_diedcity` varchar(2000) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_extendfields` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_pictures` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_occupation` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_description` text CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_keyword` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_metadesc` varchar(500) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `p_date` int(11) NOT NULL,
  `p_imdblink` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_playlist`
--

CREATE TABLE `tasvir_playlist` (
  `p_id` int(10) UNSIGNED NOT NULL,
  `p_cid` int(11) NOT NULL,
  `p_uid` int(11) NOT NULL,
  `p_lastdate` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_rating`
--

CREATE TABLE `tasvir_rating` (
  `rate_id` int(11) NOT NULL,
  `rate_rate` float NOT NULL,
  `rate_part` int(11) NOT NULL,
  `rate_partid` int(11) NOT NULL,
  `rate_userid` int(11) NOT NULL,
  `rate_questtoken` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_search`
--

CREATE TABLE `tasvir_search` (
  `s_id` int(10) UNSIGNED NOT NULL,
  `s_word` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `s_totalsearch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_sitelinks`
--

CREATE TABLE `tasvir_sitelinks` (
  `sl_id` int(10) UNSIGNED NOT NULL,
  `sl_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `sl_url` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `sl_order` int(11) NOT NULL,
  `sl_parent` int(11) NOT NULL,
  `sl_model` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_sms`
--

CREATE TABLE `tasvir_sms` (
  `id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `number` varchar(12) NOT NULL,
  `text` varchar(60) NOT NULL,
  `date` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_tags`
--

CREATE TABLE `tasvir_tags` (
  `tag_id` int(11) NOT NULL,
  `tag_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `tag_link` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `tag_type` enum('0','1','2','3','4','5','6','7') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_tag_parts`
--

CREATE TABLE `tasvir_tag_parts` (
  `tagp_id` int(11) NOT NULL,
  `tagp_partname` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_tag_relation`
--

CREATE TABLE `tasvir_tag_relation` (
  `tagr_id` int(11) NOT NULL,
  `tagr_tagid` int(11) NOT NULL,
  `tagr_tagpart` int(11) NOT NULL,
  `tagr_pageid` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_unit_perms`
--

CREATE TABLE `tasvir_unit_perms` (
  `up_id` int(10) UNSIGNED NOT NULL,
  `up_class` int(11) NOT NULL,
  `up_request` int(11) NOT NULL,
  `up_viewinviplist` int(11) NOT NULL,
  `up_amount` int(11) NOT NULL,
  `up_showcounter` int(11) NOT NULL,
  `up_lottery` int(11) NOT NULL,
  `up_advanced_profile` int(11) NOT NULL,
  `up_getnewinemail` int(11) NOT NULL,
  `up_getwallpaper` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_users`
--

CREATE TABLE `tasvir_users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `last_name` varchar(250) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `phone_number` varchar(12) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `upass` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '',
  `isadmin` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT '0',
  `class` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_users_class`
--

CREATE TABLE `tasvir_users_class` (
  `uc_id` int(11) NOT NULL,
  `uc_name` varchar(150) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `uc_description` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `uc_commentstyle` varchar(150) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `uc_dlspeed` int(11) NOT NULL,
  `uc_dlperday` int(11) NOT NULL,
  `uc_dlperperiod` int(11) NOT NULL,
  `uc_period` int(11) NOT NULL,
  `uc_amount` int(11) NOT NULL,
  `uc_order` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_user_profile`
--

CREATE TABLE `tasvir_user_profile` (
  `up_id` int(11) NOT NULL,
  `up_userid` int(11) NOT NULL,
  `up_web` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `up_lastvisit` int(11) NOT NULL,
  `up_presneter` int(11) NOT NULL,
  `up_polltakmil` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL,
  `up_profiletakmil` enum('0','1') CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_videoprice`
--

CREATE TABLE `tasvir_videoprice` (
  `vp_id` int(11) UNSIGNED NOT NULL,
  `vp_videoid` int(11) NOT NULL,
  `vp_onlineprice` int(11) NOT NULL,
  `vp_downloadprice` int(11) NOT NULL,
  `vp_postprice` int(11) NOT NULL,
  `vp_postlink` varchar(255) CHARACTER SET utf8 COLLATE utf8_persian_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='videos prices';

-- --------------------------------------------------------

--
-- Table structure for table `tasvir_videovisit`
--

CREATE TABLE `tasvir_videovisit` (
  `video_id` int(11) NOT NULL,
  `video_visit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tasvir_autoview`
--
ALTER TABLE `tasvir_autoview`
  ADD PRIMARY KEY (`ave_id`);

--
-- Indexes for table `tasvir_bookmark`
--
ALTER TABLE `tasvir_bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_buffer`
--
ALTER TABLE `tasvir_buffer`
  ADD PRIMARY KEY (`buf_id`);

--
-- Indexes for table `tasvir_carton_cat`
--
ALTER TABLE `tasvir_carton_cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_carton_players`
--
ALTER TABLE `tasvir_carton_players`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_cartoonrequest`
--
ALTER TABLE `tasvir_cartoonrequest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_cartoons`
--
ALTER TABLE `tasvir_cartoons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_catprice`
--
ALTER TABLE `tasvir_catprice`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `tasvir_charge_mellat`
--
ALTER TABLE `tasvir_charge_mellat`
  ADD PRIMARY KEY (`ta_id`);

--
-- Indexes for table `tasvir_comments`
--
ALTER TABLE `tasvir_comments`
  ADD PRIMARY KEY (`co_id`);

--
-- Indexes for table `tasvir_company`
--
ALTER TABLE `tasvir_company`
  ADD PRIMARY KEY (`comp_id`);

--
-- Indexes for table `tasvir_contact`
--
ALTER TABLE `tasvir_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_copyrights`
--
ALTER TABLE `tasvir_copyrights`
  ADD PRIMARY KEY (`cright_id`);

--
-- Indexes for table `tasvir_counter_allday`
--
ALTER TABLE `tasvir_counter_allday`
  ADD PRIMARY KEY (`ca_id`);

--
-- Indexes for table `tasvir_counter_today`
--
ALTER TABLE `tasvir_counter_today`
  ADD PRIMARY KEY (`ct_id`);

--
-- Indexes for table `tasvir_imdb`
--
ALTER TABLE `tasvir_imdb`
  ADD PRIMARY KEY (`imdb_id`);

--
-- Indexes for table `tasvir_maincats`
--
ALTER TABLE `tasvir_maincats`
  ADD PRIMARY KEY (`mc_id`);

--
-- Indexes for table `tasvir_news`
--
ALTER TABLE `tasvir_news`
  ADD PRIMARY KEY (`news_id`);

--
-- Indexes for table `tasvir_news_category`
--
ALTER TABLE `tasvir_news_category`
  ADD PRIMARY KEY (`newsc_id`);

--
-- Indexes for table `tasvir_order`
--
ALTER TABLE `tasvir_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tasvir_order_types`
--
ALTER TABLE `tasvir_order_types`
  ADD PRIMARY KEY (`otypes_id`);

--
-- Indexes for table `tasvir_page`
--
ALTER TABLE `tasvir_page`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `tasvir_payment_methods`
--
ALTER TABLE `tasvir_payment_methods`
  ADD PRIMARY KEY (`pmet_id`);

--
-- Indexes for table `tasvir_people`
--
ALTER TABLE `tasvir_people`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tasvir_playlist`
--
ALTER TABLE `tasvir_playlist`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `tasvir_rating`
--
ALTER TABLE `tasvir_rating`
  ADD PRIMARY KEY (`rate_id`);

--
-- Indexes for table `tasvir_search`
--
ALTER TABLE `tasvir_search`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `word` (`s_word`);

--
-- Indexes for table `tasvir_sitelinks`
--
ALTER TABLE `tasvir_sitelinks`
  ADD PRIMARY KEY (`sl_id`);

--
-- Indexes for table `tasvir_sms`
--
ALTER TABLE `tasvir_sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasvir_tags`
--
ALTER TABLE `tasvir_tags`
  ADD PRIMARY KEY (`tag_id`);

--
-- Indexes for table `tasvir_tag_parts`
--
ALTER TABLE `tasvir_tag_parts`
  ADD PRIMARY KEY (`tagp_id`);

--
-- Indexes for table `tasvir_tag_relation`
--
ALTER TABLE `tasvir_tag_relation`
  ADD PRIMARY KEY (`tagr_id`);

--
-- Indexes for table `tasvir_unit_perms`
--
ALTER TABLE `tasvir_unit_perms`
  ADD PRIMARY KEY (`up_id`);

--
-- Indexes for table `tasvir_users`
--
ALTER TABLE `tasvir_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone_number` (`phone_number`);

--
-- Indexes for table `tasvir_users_class`
--
ALTER TABLE `tasvir_users_class`
  ADD PRIMARY KEY (`uc_id`);

--
-- Indexes for table `tasvir_videoprice`
--
ALTER TABLE `tasvir_videoprice`
  ADD PRIMARY KEY (`vp_id`);

--
-- Indexes for table `tasvir_videovisit`
--
ALTER TABLE `tasvir_videovisit`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tasvir_autoview`
--
ALTER TABLE `tasvir_autoview`
  MODIFY `ave_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_bookmark`
--
ALTER TABLE `tasvir_bookmark`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_buffer`
--
ALTER TABLE `tasvir_buffer`
  MODIFY `buf_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_carton_cat`
--
ALTER TABLE `tasvir_carton_cat`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_carton_players`
--
ALTER TABLE `tasvir_carton_players`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_cartoonrequest`
--
ALTER TABLE `tasvir_cartoonrequest`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_cartoons`
--
ALTER TABLE `tasvir_cartoons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_catprice`
--
ALTER TABLE `tasvir_catprice`
  MODIFY `s_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_charge_mellat`
--
ALTER TABLE `tasvir_charge_mellat`
  MODIFY `ta_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_comments`
--
ALTER TABLE `tasvir_comments`
  MODIFY `co_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_company`
--
ALTER TABLE `tasvir_company`
  MODIFY `comp_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_contact`
--
ALTER TABLE `tasvir_contact`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_copyrights`
--
ALTER TABLE `tasvir_copyrights`
  MODIFY `cright_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_counter_allday`
--
ALTER TABLE `tasvir_counter_allday`
  MODIFY `ca_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_counter_today`
--
ALTER TABLE `tasvir_counter_today`
  MODIFY `ct_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_imdb`
--
ALTER TABLE `tasvir_imdb`
  MODIFY `imdb_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_maincats`
--
ALTER TABLE `tasvir_maincats`
  MODIFY `mc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_news`
--
ALTER TABLE `tasvir_news`
  MODIFY `news_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_news_category`
--
ALTER TABLE `tasvir_news_category`
  MODIFY `newsc_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_order`
--
ALTER TABLE `tasvir_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_order_types`
--
ALTER TABLE `tasvir_order_types`
  MODIFY `otypes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_page`
--
ALTER TABLE `tasvir_page`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_payment_methods`
--
ALTER TABLE `tasvir_payment_methods`
  MODIFY `pmet_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_people`
--
ALTER TABLE `tasvir_people`
  MODIFY `p_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_playlist`
--
ALTER TABLE `tasvir_playlist`
  MODIFY `p_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_rating`
--
ALTER TABLE `tasvir_rating`
  MODIFY `rate_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_search`
--
ALTER TABLE `tasvir_search`
  MODIFY `s_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_sitelinks`
--
ALTER TABLE `tasvir_sitelinks`
  MODIFY `sl_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_sms`
--
ALTER TABLE `tasvir_sms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_tags`
--
ALTER TABLE `tasvir_tags`
  MODIFY `tag_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_tag_parts`
--
ALTER TABLE `tasvir_tag_parts`
  MODIFY `tagp_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_tag_relation`
--
ALTER TABLE `tasvir_tag_relation`
  MODIFY `tagr_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_unit_perms`
--
ALTER TABLE `tasvir_unit_perms`
  MODIFY `up_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_users`
--
ALTER TABLE `tasvir_users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_users_class`
--
ALTER TABLE `tasvir_users_class`
  MODIFY `uc_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasvir_videoprice`
--
ALTER TABLE `tasvir_videoprice`
  MODIFY `vp_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
