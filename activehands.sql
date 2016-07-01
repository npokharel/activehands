-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2016 at 07:53 PM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `activehands`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_album`
--

INSERT INTO `wp_bwg_album` (`id`, `name`, `slug`, `description`, `preview_image`, `random_preview_image`, `order`, `author`, `published`) VALUES
(3, 'My Album One', 'my-album-one', '', '/thumb/Lhathan_Gang.png', '', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_album_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_album_gallery` (
  `id` bigint(20) NOT NULL,
  `album_id` bigint(20) NOT NULL,
  `is_album` tinyint(1) NOT NULL,
  `alb_gal_id` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_album_gallery`
--

INSERT INTO `wp_bwg_album_gallery` (`id`, `album_id`, `is_album`, `alb_gal_id`, `order`) VALUES
(4, 3, 0, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_gallery`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_gallery` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `description` mediumtext NOT NULL,
  `page_link` mediumtext NOT NULL,
  `preview_image` mediumtext NOT NULL,
  `random_preview_image` mediumtext NOT NULL,
  `order` bigint(20) NOT NULL,
  `author` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `gallery_type` varchar(32) NOT NULL,
  `gallery_source` varchar(256) NOT NULL,
  `autogallery_image_number` int(4) NOT NULL,
  `update_flag` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_gallery`
--

INSERT INTO `wp_bwg_gallery` (`id`, `name`, `slug`, `description`, `page_link`, `preview_image`, `random_preview_image`, `order`, `author`, `published`, `gallery_type`, `gallery_source`, `autogallery_image_number`, `update_flag`) VALUES
(3, 'My Gallery', 'my-gallery', 'My First Gallery', '', '/thumb/Mayala_Mhendo_-_Tamang_Flims.png', '', 1, 1, 1, '', '', 12, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image` (
  `id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL,
  `slug` longtext NOT NULL,
  `filename` varchar(255) NOT NULL,
  `image_url` mediumtext NOT NULL,
  `thumb_url` mediumtext NOT NULL,
  `description` mediumtext NOT NULL,
  `alt` mediumtext NOT NULL,
  `date` varchar(128) NOT NULL,
  `size` varchar(128) NOT NULL,
  `filetype` varchar(128) NOT NULL,
  `resolution` varchar(128) NOT NULL,
  `author` bigint(20) NOT NULL,
  `order` bigint(20) NOT NULL,
  `published` tinyint(1) NOT NULL,
  `comment_count` bigint(20) NOT NULL,
  `avg_rating` float NOT NULL,
  `rate_count` bigint(20) NOT NULL,
  `hit_count` bigint(20) NOT NULL,
  `redirect_url` varchar(255) NOT NULL,
  `pricelist_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_image`
--

INSERT INTO `wp_bwg_image` (`id`, `gallery_id`, `slug`, `filename`, `image_url`, `thumb_url`, `description`, `alt`, `date`, `size`, `filetype`, `resolution`, `author`, `order`, `published`, `comment_count`, `avg_rating`, `rate_count`, `hit_count`, `redirect_url`, `pricelist_id`) VALUES
(12, 3, 'Dangsing Lhari Mhendomaya', 'Dangsing Lhari Mhendomaya', '/Dangsing_Lhari_Mhendomaya.png', '/thumb/Dangsing_Lhari_Mhendomaya.png', '', 'Dangsing Lhari Mhendomaya', '01 July 2016, 17:08', '480 KB', 'PNG', '654 x 373 px', 1, 8, 1, 0, 0, 0, 0, '', 0),
(13, 3, 'Helumbhu Mathi', 'Helumbhu Mathi', '/Helumbhu_Mathi.PNG', '/thumb/Helumbhu_Mathi.PNG', '', 'Helumbhu Mathi', '01 July 2016, 17:09', '899 KB', 'PNG', '871 x 495 px', 1, 7, 1, 0, 0, 0, 0, '', 0),
(14, 3, 'Hyula rakshyak - mar muila', 'Hyula rakshyak - mar muila', '/Hyula_rakshyak_-_mar_muila.png', '/thumb/Hyula_rakshyak_-_mar_muila.png', '', 'Hyula rakshyak - mar muila', '01 July 2016, 17:08', '244 KB', 'PNG', '653 x 372 px', 1, 6, 1, 0, 0, 0, 0, '', 0),
(15, 3, 'Hyulla Rakshyak - mi nag nag', 'Hyulla Rakshyak - mi nag nag', '/Hyulla_Rakshyak_-_mi_nag_nag.png', '/thumb/Hyulla_Rakshyak_-_mi_nag_nag.png', '', 'Hyulla Rakshyak - mi nag nag', '01 July 2016, 17:08', '302 KB', 'PNG', '650 x 371 px', 1, 5, 1, 0, 0, 0, 0, '', 0),
(16, 3, 'Jamuna Yonjan Tamang Selo', 'Jamuna Yonjan Tamang Selo', '/Jamuna_Yonjan_Tamang_Selo.png', '/thumb/Jamuna_Yonjan_Tamang_Selo.png', '', 'Jamuna Yonjan Tamang Selo', '01 July 2016, 17:08', '291 KB', 'PNG', '653 x 368 px', 1, 4, 1, 0, 0, 0, 0, '', 0),
(17, 3, 'Lhathan Gang', 'Lhathan Gang', '/Lhathan_Gang.png', '/thumb/Lhathan_Gang.png', '', 'Lhathan Gang', '01 July 2016, 17:09', '823 KB', 'PNG', '864 x 489 px', 1, 3, 1, 0, 0, 0, 0, '', 0),
(18, 3, 'Mayala Mhendo - Tamang Flims', 'Mayala Mhendo - Tamang Flims', '/Mayala_Mhendo_-_Tamang_Flims.png', '/thumb/Mayala_Mhendo_-_Tamang_Flims.png', '', 'Mayala Mhendo - Tamang Flims', '01 July 2016, 17:09', '599 KB', 'PNG', '653 x 371 px', 1, 2, 1, 0, 0, 0, 0, '', 0),
(19, 3, 'Lupro Daplya dapo', 'Lupro Daplya dapo', '/Lupro_Daplya_dapo.png', '/thumb/Lupro_Daplya_dapo.png', '', 'Lupro Daplya dapo', '01 July 2016, 17:09', '471 KB', 'PNG', '650 x 368 px', 1, 1, 1, 0, 0, 0, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_comment`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_comment` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `date` varchar(64) NOT NULL,
  `comment` mediumtext NOT NULL,
  `url` mediumtext NOT NULL,
  `mail` mediumtext NOT NULL,
  `published` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_rate`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_rate` (
  `id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `rate` float NOT NULL,
  `ip` varchar(64) NOT NULL,
  `date` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_image_tag`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_image_tag` (
  `id` bigint(20) NOT NULL,
  `tag_id` bigint(20) NOT NULL,
  `image_id` bigint(20) NOT NULL,
  `gallery_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_option`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_option` (
  `id` bigint(20) NOT NULL,
  `images_directory` mediumtext NOT NULL,
  `masonry` varchar(255) NOT NULL,
  `mosaic` varchar(255) NOT NULL,
  `resizable_mosaic` tinyint(1) NOT NULL,
  `mosaic_total_width` int(4) NOT NULL,
  `image_column_number` int(4) NOT NULL,
  `images_per_page` int(4) NOT NULL,
  `thumb_width` int(4) NOT NULL,
  `thumb_height` int(4) NOT NULL,
  `upload_thumb_width` int(4) NOT NULL,
  `upload_thumb_height` int(4) NOT NULL,
  `image_enable_page` tinyint(1) NOT NULL,
  `image_title_show_hover` varchar(20) NOT NULL,
  `ecommerce_icon_show_hover` varchar(20) NOT NULL,
  `album_column_number` int(4) NOT NULL,
  `albums_per_page` int(4) NOT NULL,
  `album_title_show_hover` varchar(8) NOT NULL,
  `album_thumb_width` int(4) NOT NULL,
  `album_thumb_height` int(4) NOT NULL,
  `album_enable_page` tinyint(1) NOT NULL,
  `extended_album_height` int(4) NOT NULL,
  `extended_album_description_enable` tinyint(1) NOT NULL,
  `image_browser_width` int(4) NOT NULL,
  `image_browser_title_enable` tinyint(1) NOT NULL,
  `image_browser_description_enable` tinyint(1) NOT NULL,
  `blog_style_width` int(4) NOT NULL,
  `blog_style_title_enable` tinyint(1) NOT NULL,
  `blog_style_images_per_page` int(4) NOT NULL,
  `blog_style_enable_page` tinyint(1) NOT NULL,
  `slideshow_type` varchar(16) NOT NULL,
  `slideshow_interval` int(4) NOT NULL,
  `slideshow_width` int(4) NOT NULL,
  `slideshow_height` int(4) NOT NULL,
  `slideshow_enable_autoplay` tinyint(1) NOT NULL,
  `slideshow_enable_shuffle` tinyint(1) NOT NULL,
  `slideshow_enable_ctrl` tinyint(1) NOT NULL,
  `slideshow_enable_filmstrip` tinyint(1) NOT NULL,
  `slideshow_filmstrip_height` int(4) NOT NULL,
  `slideshow_enable_title` tinyint(1) NOT NULL,
  `slideshow_title_position` varchar(16) NOT NULL,
  `slideshow_enable_description` tinyint(1) NOT NULL,
  `slideshow_description_position` varchar(16) NOT NULL,
  `slideshow_enable_music` tinyint(1) NOT NULL,
  `slideshow_audio_url` varchar(255) NOT NULL,
  `slideshow_effect_duration` int(4) NOT NULL,
  `popup_width` int(4) NOT NULL,
  `popup_height` int(4) NOT NULL,
  `popup_type` varchar(16) NOT NULL,
  `popup_interval` int(4) NOT NULL,
  `popup_enable_filmstrip` tinyint(1) NOT NULL,
  `popup_filmstrip_height` int(4) NOT NULL,
  `popup_enable_ctrl_btn` tinyint(1) NOT NULL,
  `popup_enable_fullscreen` tinyint(1) NOT NULL,
  `popup_enable_info` tinyint(1) NOT NULL,
  `popup_info_always_show` tinyint(1) NOT NULL,
  `popup_enable_rate` tinyint(1) NOT NULL,
  `popup_enable_comment` tinyint(1) NOT NULL,
  `popup_enable_email` tinyint(1) NOT NULL,
  `popup_enable_captcha` tinyint(1) NOT NULL,
  `popup_enable_download` tinyint(1) NOT NULL,
  `popup_enable_fullsize_image` tinyint(1) NOT NULL,
  `popup_enable_facebook` tinyint(1) NOT NULL,
  `popup_enable_twitter` tinyint(1) NOT NULL,
  `popup_enable_google` tinyint(1) NOT NULL,
  `popup_enable_ecommerce` tinyint(1) NOT NULL,
  `popup_effect_duration` int(4) NOT NULL,
  `watermark_type` varchar(8) NOT NULL,
  `watermark_position` varchar(16) NOT NULL,
  `watermark_width` int(4) NOT NULL,
  `watermark_height` int(4) NOT NULL,
  `watermark_url` mediumtext NOT NULL,
  `watermark_text` mediumtext NOT NULL,
  `watermark_link` mediumtext NOT NULL,
  `watermark_font_size` int(4) NOT NULL,
  `watermark_font` varchar(16) NOT NULL,
  `watermark_color` varchar(8) NOT NULL,
  `watermark_opacity` int(4) NOT NULL,
  `built_in_watermark_type` varchar(16) NOT NULL,
  `built_in_watermark_position` varchar(16) NOT NULL,
  `built_in_watermark_size` int(4) NOT NULL,
  `built_in_watermark_url` mediumtext NOT NULL,
  `built_in_watermark_text` mediumtext NOT NULL,
  `built_in_watermark_font_size` int(4) NOT NULL,
  `built_in_watermark_font` varchar(16) NOT NULL,
  `built_in_watermark_color` varchar(8) NOT NULL,
  `built_in_watermark_opacity` int(4) NOT NULL,
  `image_right_click` tinyint(1) NOT NULL,
  `popup_fullscreen` tinyint(1) NOT NULL,
  `gallery_role` tinyint(1) NOT NULL,
  `album_role` tinyint(1) NOT NULL,
  `image_role` tinyint(1) NOT NULL,
  `popup_autoplay` tinyint(1) NOT NULL,
  `album_view_type` varchar(16) NOT NULL,
  `popup_enable_pinterest` tinyint(1) NOT NULL,
  `popup_enable_tumblr` tinyint(1) NOT NULL,
  `show_search_box` tinyint(1) NOT NULL,
  `search_box_width` int(4) NOT NULL,
  `preload_images` tinyint(1) NOT NULL,
  `preload_images_count` int(4) NOT NULL,
  `thumb_click_action` varchar(16) NOT NULL,
  `thumb_link_target` tinyint(1) NOT NULL,
  `comment_moderation` tinyint(1) NOT NULL,
  `popup_hit_counter` tinyint(1) NOT NULL,
  `enable_ML_import` tinyint(1) NOT NULL,
  `showthumbs_name` tinyint(1) NOT NULL,
  `show_album_name` tinyint(1) NOT NULL,
  `show_image_counts` tinyint(1) NOT NULL,
  `upload_img_width` int(4) NOT NULL,
  `upload_img_height` int(4) NOT NULL,
  `play_icon` tinyint(1) NOT NULL,
  `show_masonry_thumb_description` tinyint(1) NOT NULL,
  `slideshow_title_full_width` tinyint(1) NOT NULL,
  `popup_info_full_width` tinyint(1) NOT NULL,
  `show_sort_images` tinyint(1) NOT NULL,
  `autoupdate_interval` int(4) NOT NULL,
  `instagram_access_token` varchar(128) NOT NULL,
  `description_tb` tinyint(1) NOT NULL,
  `enable_seo` tinyint(1) NOT NULL,
  `autohide_lightbox_navigation` tinyint(1) NOT NULL,
  `autohide_slideshow_navigation` tinyint(1) NOT NULL,
  `read_metadata` tinyint(1) NOT NULL,
  `enable_loop` tinyint(1) NOT NULL,
  `enable_addthis` tinyint(1) NOT NULL,
  `addthis_profile_id` varchar(66) NOT NULL,
  `carousel_interval` int(4) NOT NULL,
  `carousel_width` int(4) NOT NULL,
  `carousel_height` int(4) NOT NULL,
  `carousel_image_column_number` int(4) NOT NULL,
  `carousel_image_par` varchar(32) NOT NULL,
  `carousel_enable_title` tinyint(1) NOT NULL,
  `carousel_enable_autoplay` tinyint(1) NOT NULL,
  `carousel_r_width` int(4) NOT NULL,
  `carousel_fit_containerWidth` tinyint(1) NOT NULL,
  `carousel_prev_next_butt` tinyint(1) NOT NULL,
  `carousel_play_pause_butt` tinyint(1) NOT NULL,
  `permissions` varchar(20) NOT NULL,
  `facebook_app_id` varchar(64) NOT NULL,
  `facebook_app_secret` varchar(64) NOT NULL,
  `show_tag_box` tinyint(1) NOT NULL,
  `show_hide_custom_post` tinyint(1) NOT NULL,
  `show_hide_post_meta` tinyint(1) NOT NULL,
  `placeholder` varchar(32) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_option`
--

INSERT INTO `wp_bwg_option` (`id`, `images_directory`, `masonry`, `mosaic`, `resizable_mosaic`, `mosaic_total_width`, `image_column_number`, `images_per_page`, `thumb_width`, `thumb_height`, `upload_thumb_width`, `upload_thumb_height`, `image_enable_page`, `image_title_show_hover`, `ecommerce_icon_show_hover`, `album_column_number`, `albums_per_page`, `album_title_show_hover`, `album_thumb_width`, `album_thumb_height`, `album_enable_page`, `extended_album_height`, `extended_album_description_enable`, `image_browser_width`, `image_browser_title_enable`, `image_browser_description_enable`, `blog_style_width`, `blog_style_title_enable`, `blog_style_images_per_page`, `blog_style_enable_page`, `slideshow_type`, `slideshow_interval`, `slideshow_width`, `slideshow_height`, `slideshow_enable_autoplay`, `slideshow_enable_shuffle`, `slideshow_enable_ctrl`, `slideshow_enable_filmstrip`, `slideshow_filmstrip_height`, `slideshow_enable_title`, `slideshow_title_position`, `slideshow_enable_description`, `slideshow_description_position`, `slideshow_enable_music`, `slideshow_audio_url`, `slideshow_effect_duration`, `popup_width`, `popup_height`, `popup_type`, `popup_interval`, `popup_enable_filmstrip`, `popup_filmstrip_height`, `popup_enable_ctrl_btn`, `popup_enable_fullscreen`, `popup_enable_info`, `popup_info_always_show`, `popup_enable_rate`, `popup_enable_comment`, `popup_enable_email`, `popup_enable_captcha`, `popup_enable_download`, `popup_enable_fullsize_image`, `popup_enable_facebook`, `popup_enable_twitter`, `popup_enable_google`, `popup_enable_ecommerce`, `popup_effect_duration`, `watermark_type`, `watermark_position`, `watermark_width`, `watermark_height`, `watermark_url`, `watermark_text`, `watermark_link`, `watermark_font_size`, `watermark_font`, `watermark_color`, `watermark_opacity`, `built_in_watermark_type`, `built_in_watermark_position`, `built_in_watermark_size`, `built_in_watermark_url`, `built_in_watermark_text`, `built_in_watermark_font_size`, `built_in_watermark_font`, `built_in_watermark_color`, `built_in_watermark_opacity`, `image_right_click`, `popup_fullscreen`, `gallery_role`, `album_role`, `image_role`, `popup_autoplay`, `album_view_type`, `popup_enable_pinterest`, `popup_enable_tumblr`, `show_search_box`, `search_box_width`, `preload_images`, `preload_images_count`, `thumb_click_action`, `thumb_link_target`, `comment_moderation`, `popup_hit_counter`, `enable_ML_import`, `showthumbs_name`, `show_album_name`, `show_image_counts`, `upload_img_width`, `upload_img_height`, `play_icon`, `show_masonry_thumb_description`, `slideshow_title_full_width`, `popup_info_full_width`, `show_sort_images`, `autoupdate_interval`, `instagram_access_token`, `description_tb`, `enable_seo`, `autohide_lightbox_navigation`, `autohide_slideshow_navigation`, `read_metadata`, `enable_loop`, `enable_addthis`, `addthis_profile_id`, `carousel_interval`, `carousel_width`, `carousel_height`, `carousel_image_column_number`, `carousel_image_par`, `carousel_enable_title`, `carousel_enable_autoplay`, `carousel_r_width`, `carousel_fit_containerWidth`, `carousel_prev_next_butt`, `carousel_play_pause_butt`, `permissions`, `facebook_app_id`, `facebook_app_secret`, `show_tag_box`, `show_hide_custom_post`, `show_hide_post_meta`, `placeholder`) VALUES
(1, 'wp-content/uploads', 'vertical', 'vertical', 0, 100, 5, 30, 180, 90, 300, 300, 1, 'none', '', 5, 30, 'hover', 120, 90, 1, 150, 1, 800, 1, 1, 800, 1, 5, 1, 'fade', 5, 800, 500, 0, 0, 1, 1, 90, 0, 'top-right', 0, 'bottom-right', 0, '', 1, 800, 500, 'fade', 5, 1, 70, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 1, 1, 1, 0, 1, 'none', 'bottom-left', 90, 90, 'http://localhost/activehands/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 'https://web-dorado.com', 20, 'arial', 'FFFFFF', 30, 'none', 'middle-center', 15, 'http://localhost/activehands/wp-content/plugins/photo-gallery/images/watermark.png', 'web-dorado.com', 20, 'arial', 'FFFFFF', 30, 0, 0, 0, 0, 0, 0, 'thumbnail', 0, 0, 0, 180, 0, 10, 'open_lightbox', 1, 0, 0, 0, 0, 0, 0, 1200, 1200, 1, 0, 0, 0, 0, 30, '', 0, 1, 1, 1, 1, 1, 0, '', 5, 300, 300, 5, '0.75', 0, 0, 800, 1, 1, 1, 'manage_options', '', '', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_shortcode`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_shortcode` (
  `id` bigint(20) NOT NULL,
  `tagtext` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_shortcode`
--

INSERT INTO `wp_bwg_shortcode` (`id`, `tagtext`) VALUES
(1, ' gallery_type="thumbnails" theme_id="1" gallery_id="0" sort_by="order" order_by="asc" show_search_box="0" show_sort_images="0" search_box_width="180" image_column_number="5" images_per_page="30" image_title="none" image_enable_page="1" thumb_width="180" thumb_height="90" load_more_image_count="30" show_tag_box="0" thumb_click_action="open_lightbox" thumb_link_target="1" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="1" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" show_tag_box="0" popup_effect_duration="1" watermark_type="none" watermark_link="https://web-dorado.com"'),
(2, ' gallery_type="thumbnails" theme_id="1" gallery_id="0" sort_by="order" order_by="asc" show_search_box="0" show_sort_images="0" search_box_width="180" image_column_number="5" images_per_page="30" image_title="none" image_enable_page="1" thumb_width="180" thumb_height="90" load_more_image_count="30" show_tag_box="0" thumb_click_action="open_lightbox" thumb_link_target="1" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="1" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" show_tag_box="0" popup_effect_duration="1" watermark_type="none" watermark_link="https://web-dorado.com"'),
(3, ' gallery_type="thumbnails" theme_id="1" gallery_id="1" sort_by="order" order_by="asc" show_search_box="0" show_sort_images="0" search_box_width="180" image_column_number="5" images_per_page="30" image_title="hover" image_enable_page="1" thumb_width="180" thumb_height="90" load_more_image_count="30" show_tag_box="0" thumb_click_action="open_lightbox" thumb_link_target="1" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="1" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" show_tag_box="0" popup_effect_duration="1" watermark_type="none" watermark_link="https://web-dorado.com"'),
(4, ' gallery_type="thumbnails" theme_id="1" gallery_id="3" sort_by="random" order_by="asc" show_search_box="0" show_sort_images="0" search_box_width="180" image_column_number="4" images_per_page="30" image_title="none" image_enable_page="1" thumb_width="180" thumb_height="90" load_more_image_count="30" show_tag_box="0" thumb_click_action="open_lightbox" thumb_link_target="1" popup_fullscreen="0" popup_autoplay="0" popup_width="800" popup_height="500" popup_effect="fade" popup_interval="5" popup_enable_filmstrip="1" popup_filmstrip_height="70" popup_enable_ctrl_btn="1" popup_enable_fullscreen="1" popup_enable_info="1" popup_info_always_show="0" popup_info_full_width="0" popup_enable_rate="0" popup_enable_comment="1" popup_hit_counter="0" popup_enable_facebook="1" popup_enable_twitter="1" popup_enable_google="1" popup_enable_pinterest="0" popup_enable_tumblr="0" show_tag_box="0" popup_effect_duration="1" watermark_type="none" watermark_link="https://web-dorado.com"');

-- --------------------------------------------------------

--
-- Table structure for table `wp_bwg_theme`
--

CREATE TABLE IF NOT EXISTS `wp_bwg_theme` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `options` longtext NOT NULL,
  `default_theme` tinyint(1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_bwg_theme`
--

INSERT INTO `wp_bwg_theme` (`id`, `name`, `options`, `default_theme`) VALUES
(1, 'Theme 1', '{"thumb_margin":4,"thumb_padding":0,"thumb_border_radius":"0","thumb_border_width":0,"thumb_border_style":"none","thumb_border_color":"CCCCCC","thumb_bg_color":"FFFFFF","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"0px 0px 0px #888888","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"scale","thumb_hover_effect_value":"1.1","thumb_transition":1,"thumb_title_font_color":"CCCCCC","thumb_title_font_style":"segoe ui","thumb_title_pos":"bottom","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_title_margin":"2px","thumb_title_shadow":"0px 0px 0px #888888","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"segoe ui","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"solid","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FFFFFF","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_overlay_bg_color":"000000","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":100,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_transparent":65,"lightbox_ctrl_cont_border_radius":4,"lightbox_close_btn_transparent":100,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_width":2,"lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"0","lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_size":10,"lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":0,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"CCCCCC","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"segoe ui","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"616161","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"2px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"383838","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"CCCCCC","lightbox_filmstrip_pos":"top","lightbox_filmstrip_rl_bg_color":"3B3B3B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"solid","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_rl_btn_style":"fa-chevron","lightbox_rl_btn_transparent":80,"lightbox_bg_transparent":100,"album_compact_back_font_color":"000000","album_compact_back_font_style":"segoe ui","album_compact_back_font_size":16,"album_compact_back_font_weight":"bold","album_compact_back_padding":"0","album_compact_title_font_color":"CCCCCC","album_compact_title_font_style":"segoe ui","album_compact_thumb_title_pos":"bottom","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_title_margin":"2px","album_compact_title_shadow":"0px 0px 0px #888888","album_compact_thumb_margin":4,"album_compact_thumb_padding":0,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":0,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"CCCCCC","album_compact_thumb_bg_color":"FFFFFF","album_compact_thumbs_bg_color":"FFFFFF","album_compact_thumb_bg_transparent":0,"album_compact_thumb_box_shadow":"0px 0px 0px #888888","album_compact_thumb_transparent":100,"album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"scale","album_compact_thumb_hover_effect_value":"1.1","album_compact_thumb_transition":0,"album_extended_thumb_margin":2,"album_extended_thumb_padding":0,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":0,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"CCCCCC","album_extended_thumb_bg_color":"FFFFFF","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":0,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"scale","album_extended_thumb_hover_effect_value":"1.1","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"segoe ui","album_extended_back_font_size":20,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"0 0 0 0","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"solid","album_extended_div_separator_color":"E0E0E0","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"0","album_extended_thumb_div_border_width":1,"album_extended_thumb_div_border_style":"solid","album_extended_thumb_div_border_color":"E8E8E8","album_extended_thumb_div_padding":"5px","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"solid","album_extended_text_div_border_color":"E8E8E8","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"segoe ui","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"segoe ui","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"F2D22E","album_extended_desc_more_size":12,"masonry_thumb_padding":4,"masonry_thumb_border_radius":"0","masonry_thumb_border_width":0,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":100,"masonry_thumb_align":"center","masonry_thumb_hover_effect":"scale","masonry_thumb_hover_effect_value":"1.1","masonry_thumb_transition":0,"slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"0px 0px 0px #000000","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"CCCCCC","slideshow_filmstrip_pos":"top","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"solid","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"3B3B3B","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"segoe ui","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"0 0 0 0","slideshow_description_font_size":14,"slideshow_description_font":"segoe ui","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":12,"slideshow_dots_height":12,"slideshow_dots_border_radius":"5px","slideshow_dots_background_color":"F2D22E","slideshow_dots_margin":3,"slideshow_dots_active_background_color":"FFFFFF","slideshow_dots_active_border_width":1,"slideshow_dots_active_border_color":"000000","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","blog_style_margin":"2px","blog_style_padding":"0","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"solid","blog_style_border_color":"F5F5F5","blog_style_bg_color":"FFFFFF","blog_style_transparent":80,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"segoe ui","blog_style_img_font_color":"000000","blog_style_share_buttons_color":"B3AFAF","blog_style_share_buttons_bg_transparent":0,"blog_style_share_buttons_font_size":20,"image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"0","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"F5F5F5","image_browser_bg_color":"EBEBEB","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"0px 5px 0px 5px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"EBEBEB","image_browser_image_description_align":"center","image_browser_img_font_size":15,"image_browser_img_font_family":"segoe ui","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":2,"image_browser_full_border_style":"none","image_browser_full_border_color":"F7F7F7","image_browser_full_bg_color":"F5F5F5","image_browser_full_transparent":90,"lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"segoe ui","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"segoe ui","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"segoe ui","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"masonry_description_font_size":12,"masonry_description_color":"CCCCCC","masonry_description_font_style":"segoe ui","album_masonry_back_font_color":"000000","album_masonry_back_font_style":"segoe ui","album_masonry_back_font_size":16,"album_masonry_back_font_weight":"bold","album_masonry_back_padding":"0","album_masonry_title_font_color":"CCCCCC","album_masonry_title_font_style":"segoe ui","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"2px","album_masonry_title_shadow":"0px 0px 0px #888888","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":0,"album_masonry_thumb_border_radius":"0","album_masonry_thumb_border_width":0,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"CCCCCC","album_masonry_thumb_bg_color":"FFFFFF","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":0,"album_masonry_thumb_box_shadow":"0px 0px 0px #888888","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"scale","album_masonry_thumb_hover_effect_value":"1.1","album_masonry_thumb_transition":0,"mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"0","mosaic_thumb_border_width":0,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":100,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"scale","mosaic_thumb_hover_effect_value":"1.1","mosaic_thumb_title_font_color":"CCCCCC","mosaic_thumb_title_font_style":"segoe ui","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"Arial","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"white","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":1}', 1),
(2, 'Theme 2', '{"thumb_margin":4,"thumb_padding":4,"thumb_border_radius":"0","thumb_border_width":5,"thumb_border_style":"none","thumb_border_color":"FFFFFF","thumb_bg_color":"E8E8E8","thumbs_bg_color":"FFFFFF","thumb_bg_transparent":0,"thumb_box_shadow":"0px 0px 0px #888888","thumb_transparent":100,"thumb_align":"center","thumb_hover_effect":"rotate","thumb_hover_effect_value":"2deg","thumb_transition":1,"thumb_title_font_color":"CCCCCC","thumb_title_font_style":"segoe ui","thumb_title_pos":"bottom","thumb_title_font_size":16,"thumb_title_font_weight":"bold","thumb_title_margin":"5px","thumb_title_shadow":"","page_nav_position":"bottom","page_nav_align":"center","page_nav_number":0,"page_nav_font_size":12,"page_nav_font_style":"segoe ui","page_nav_font_color":"666666","page_nav_font_weight":"bold","page_nav_border_width":1,"page_nav_border_style":"none","page_nav_border_color":"E3E3E3","page_nav_border_radius":"0","page_nav_margin":"0","page_nav_padding":"3px 6px","page_nav_button_bg_color":"FCFCFC","page_nav_button_bg_transparent":100,"page_nav_box_shadow":"0","page_nav_button_transition":1,"page_nav_button_text":0,"lightbox_overlay_bg_color":"000000","lightbox_overlay_bg_transparent":70,"lightbox_bg_color":"000000","lightbox_ctrl_btn_pos":"bottom","lightbox_ctrl_btn_align":"center","lightbox_ctrl_btn_height":20,"lightbox_ctrl_btn_margin_top":10,"lightbox_ctrl_btn_margin_left":7,"lightbox_ctrl_btn_transparent":80,"lightbox_ctrl_btn_color":"FFFFFF","lightbox_toggle_btn_height":14,"lightbox_toggle_btn_width":100,"lightbox_ctrl_cont_bg_color":"000000","lightbox_ctrl_cont_transparent":80,"lightbox_ctrl_cont_border_radius":4,"lightbox_close_btn_transparent":95,"lightbox_close_btn_bg_color":"000000","lightbox_close_btn_border_width":0,"lightbox_close_btn_border_radius":"16px","lightbox_close_btn_border_style":"none","lightbox_close_btn_border_color":"FFFFFF","lightbox_close_btn_box_shadow":"","lightbox_close_btn_color":"FFFFFF","lightbox_close_btn_size":10,"lightbox_close_btn_width":20,"lightbox_close_btn_height":20,"lightbox_close_btn_top":"-10","lightbox_close_btn_right":"-10","lightbox_close_btn_full_color":"FFFFFF","lightbox_rl_btn_bg_color":"000000","lightbox_rl_btn_border_radius":"20px","lightbox_rl_btn_border_width":2,"lightbox_rl_btn_border_style":"none","lightbox_rl_btn_border_color":"FFFFFF","lightbox_rl_btn_box_shadow":"","lightbox_rl_btn_color":"FFFFFF","lightbox_rl_btn_height":40,"lightbox_rl_btn_width":40,"lightbox_rl_btn_size":20,"lightbox_close_rl_btn_hover_color":"FFFFFF","lightbox_comment_pos":"left","lightbox_comment_width":400,"lightbox_comment_bg_color":"000000","lightbox_comment_font_color":"CCCCCC","lightbox_comment_font_style":"arial","lightbox_comment_font_size":12,"lightbox_comment_button_bg_color":"333333","lightbox_comment_button_border_color":"666666","lightbox_comment_button_border_width":1,"lightbox_comment_button_border_style":"none","lightbox_comment_button_border_radius":"3px","lightbox_comment_button_padding":"3px 10px","lightbox_comment_input_bg_color":"333333","lightbox_comment_input_border_color":"666666","lightbox_comment_input_border_width":1,"lightbox_comment_input_border_style":"none","lightbox_comment_input_border_radius":"0","lightbox_comment_input_padding":"3px","lightbox_comment_separator_width":1,"lightbox_comment_separator_style":"solid","lightbox_comment_separator_color":"2B2B2B","lightbox_comment_author_font_size":14,"lightbox_comment_date_font_size":10,"lightbox_comment_body_font_size":12,"lightbox_comment_share_button_color":"FFFFFF","lightbox_filmstrip_pos":"top","lightbox_filmstrip_rl_bg_color":"2B2B2B","lightbox_filmstrip_rl_btn_size":20,"lightbox_filmstrip_rl_btn_color":"FFFFFF","lightbox_filmstrip_thumb_margin":"0 1px","lightbox_filmstrip_thumb_border_width":1,"lightbox_filmstrip_thumb_border_style":"none","lightbox_filmstrip_thumb_border_color":"000000","lightbox_filmstrip_thumb_border_radius":"0","lightbox_filmstrip_thumb_deactive_transparent":80,"lightbox_filmstrip_thumb_active_border_width":0,"lightbox_filmstrip_thumb_active_border_color":"FFFFFF","lightbox_rl_btn_style":"fa-chevron","lightbox_rl_btn_transparent":80,"lightbox_bg_transparent":100,"album_compact_back_font_color":"000000","album_compact_back_font_style":"segoe ui","album_compact_back_font_size":14,"album_compact_back_font_weight":"normal","album_compact_back_padding":"0","album_compact_title_font_color":"CCCCCC","album_compact_title_font_style":"segoe ui","album_compact_thumb_title_pos":"bottom","album_compact_title_font_size":16,"album_compact_title_font_weight":"bold","album_compact_title_margin":"5px","album_compact_title_shadow":"","album_compact_thumb_margin":4,"album_compact_thumb_padding":4,"album_compact_thumb_border_radius":"0","album_compact_thumb_border_width":1,"album_compact_thumb_border_style":"none","album_compact_thumb_border_color":"000000","album_compact_thumb_bg_color":"E8E8E8","album_compact_thumbs_bg_color":"FFFFFF","album_compact_thumb_bg_transparent":100,"album_compact_thumb_box_shadow":"","album_compact_thumb_transparent":100,"album_compact_thumb_align":"center","album_compact_thumb_hover_effect":"rotate","album_compact_thumb_hover_effect_value":"2deg","album_compact_thumb_transition":1,"album_extended_thumb_margin":2,"album_extended_thumb_padding":4,"album_extended_thumb_border_radius":"0","album_extended_thumb_border_width":4,"album_extended_thumb_border_style":"none","album_extended_thumb_border_color":"E8E8E8","album_extended_thumb_bg_color":"E8E8E8","album_extended_thumbs_bg_color":"FFFFFF","album_extended_thumb_bg_transparent":100,"album_extended_thumb_box_shadow":"","album_extended_thumb_transparent":100,"album_extended_thumb_align":"left","album_extended_thumb_hover_effect":"rotate","album_extended_thumb_hover_effect_value":"2deg","album_extended_thumb_transition":0,"album_extended_back_font_color":"000000","album_extended_back_font_style":"segoe ui","album_extended_back_font_size":16,"album_extended_back_font_weight":"bold","album_extended_back_padding":"0","album_extended_div_bg_color":"FFFFFF","album_extended_div_bg_transparent":0,"album_extended_div_border_radius":"0","album_extended_div_margin":"0 0 5px 0","album_extended_div_padding":10,"album_extended_div_separator_width":1,"album_extended_div_separator_style":"none","album_extended_div_separator_color":"CCCCCC","album_extended_thumb_div_bg_color":"FFFFFF","album_extended_thumb_div_border_radius":"0","album_extended_thumb_div_border_width":0,"album_extended_thumb_div_border_style":"none","album_extended_thumb_div_border_color":"CCCCCC","album_extended_thumb_div_padding":"0","album_extended_text_div_bg_color":"FFFFFF","album_extended_text_div_border_radius":"0","album_extended_text_div_border_width":1,"album_extended_text_div_border_style":"none","album_extended_text_div_border_color":"CCCCCC","album_extended_text_div_padding":"5px","album_extended_title_span_border_width":1,"album_extended_title_span_border_style":"none","album_extended_title_span_border_color":"CCCCCC","album_extended_title_font_color":"000000","album_extended_title_font_style":"segoe ui","album_extended_title_font_size":16,"album_extended_title_font_weight":"bold","album_extended_title_margin_bottom":2,"album_extended_title_padding":"2px","album_extended_desc_span_border_width":1,"album_extended_desc_span_border_style":"none","album_extended_desc_span_border_color":"CCCCCC","album_extended_desc_font_color":"000000","album_extended_desc_font_style":"segoe ui","album_extended_desc_font_size":14,"album_extended_desc_font_weight":"normal","album_extended_desc_padding":"2px","album_extended_desc_more_color":"FFC933","album_extended_desc_more_size":12,"masonry_thumb_padding":4,"masonry_thumb_border_radius":"2px","masonry_thumb_border_width":1,"masonry_thumb_border_style":"none","masonry_thumb_border_color":"CCCCCC","masonry_thumbs_bg_color":"FFFFFF","masonry_thumb_bg_transparent":0,"masonry_thumb_transparent":80,"masonry_thumb_align":"center","masonry_thumb_hover_effect":"rotate","masonry_thumb_hover_effect_value":"2deg","masonry_thumb_transition":0,"slideshow_cont_bg_color":"000000","slideshow_close_btn_transparent":100,"slideshow_rl_btn_bg_color":"000000","slideshow_rl_btn_border_radius":"20px","slideshow_rl_btn_border_width":0,"slideshow_rl_btn_border_style":"none","slideshow_rl_btn_border_color":"FFFFFF","slideshow_rl_btn_box_shadow":"","slideshow_rl_btn_color":"FFFFFF","slideshow_rl_btn_height":40,"slideshow_rl_btn_size":20,"slideshow_rl_btn_width":40,"slideshow_close_rl_btn_hover_color":"DBDBDB","slideshow_filmstrip_pos":"bottom","slideshow_filmstrip_thumb_border_width":1,"slideshow_filmstrip_thumb_border_style":"none","slideshow_filmstrip_thumb_border_color":"000000","slideshow_filmstrip_thumb_border_radius":"0","slideshow_filmstrip_thumb_margin":"0 1px","slideshow_filmstrip_thumb_active_border_width":0,"slideshow_filmstrip_thumb_active_border_color":"FFFFFF","slideshow_filmstrip_thumb_deactive_transparent":80,"slideshow_filmstrip_rl_bg_color":"303030","slideshow_filmstrip_rl_btn_color":"FFFFFF","slideshow_filmstrip_rl_btn_size":20,"slideshow_title_font_size":16,"slideshow_title_font":"segoe ui","slideshow_title_color":"FFFFFF","slideshow_title_opacity":70,"slideshow_title_border_radius":"5px","slideshow_title_background_color":"000000","slideshow_title_padding":"5px 10px 5px 10px","slideshow_description_font_size":14,"slideshow_description_font":"segoe ui","slideshow_description_color":"FFFFFF","slideshow_description_opacity":70,"slideshow_description_border_radius":"0","slideshow_description_background_color":"000000","slideshow_description_padding":"5px 10px 5px 10px","slideshow_dots_width":10,"slideshow_dots_height":10,"slideshow_dots_border_radius":"10px","slideshow_dots_background_color":"292929","slideshow_dots_margin":1,"slideshow_dots_active_background_color":"292929","slideshow_dots_active_border_width":2,"slideshow_dots_active_border_color":"FFC933","slideshow_play_pause_btn_size":60,"slideshow_rl_btn_style":"fa-chevron","blog_style_margin":"2px","blog_style_padding":"4px","blog_style_border_radius":"0","blog_style_border_width":1,"blog_style_border_style":"none","blog_style_border_color":"CCCCCC","blog_style_bg_color":"E8E8E8","blog_style_transparent":70,"blog_style_box_shadow":"","blog_style_align":"center","blog_style_share_buttons_margin":"5px auto 10px auto","blog_style_share_buttons_border_radius":"0","blog_style_share_buttons_border_width":0,"blog_style_share_buttons_border_style":"none","blog_style_share_buttons_border_color":"000000","blog_style_share_buttons_bg_color":"FFFFFF","blog_style_share_buttons_align":"right","blog_style_img_font_size":16,"blog_style_img_font_family":"segoe ui","blog_style_img_font_color":"000000","blog_style_share_buttons_color":"A1A1A1","blog_style_share_buttons_bg_transparent":0,"blog_style_share_buttons_font_size":20,"image_browser_margin":"2px auto","image_browser_padding":"4px","image_browser_border_radius":"2px","image_browser_border_width":1,"image_browser_border_style":"none","image_browser_border_color":"E8E8E8","image_browser_bg_color":"E8E8E8","image_browser_box_shadow":"","image_browser_transparent":80,"image_browser_align":"center","image_browser_image_description_margin":"24px 0px 0px 0px","image_browser_image_description_padding":"8px 8px 8px 8px","image_browser_image_description_border_radius":"0","image_browser_image_description_border_width":1,"image_browser_image_description_border_style":"none","image_browser_image_description_border_color":"FFFFFF","image_browser_image_description_bg_color":"E8E8E8","image_browser_image_description_align":"center","image_browser_img_font_size":14,"image_browser_img_font_family":"segoe ui","image_browser_img_font_color":"000000","image_browser_full_padding":"4px","image_browser_full_border_radius":"0","image_browser_full_border_width":1,"image_browser_full_border_style":"solid","image_browser_full_border_color":"EDEDED","image_browser_full_bg_color":"FFFFFF","image_browser_full_transparent":90,"lightbox_info_pos":"top","lightbox_info_align":"right","lightbox_info_bg_color":"000000","lightbox_info_bg_transparent":70,"lightbox_info_border_width":1,"lightbox_info_border_style":"none","lightbox_info_border_color":"000000","lightbox_info_border_radius":"5px","lightbox_info_padding":"5px","lightbox_info_margin":"15px","lightbox_title_color":"FFFFFF","lightbox_title_font_style":"segoe ui","lightbox_title_font_weight":"bold","lightbox_title_font_size":18,"lightbox_description_color":"FFFFFF","lightbox_description_font_style":"segoe ui","lightbox_description_font_weight":"normal","lightbox_description_font_size":14,"lightbox_rate_pos":"bottom","lightbox_rate_align":"right","lightbox_rate_icon":"star","lightbox_rate_color":"F9D062","lightbox_rate_size":20,"lightbox_rate_stars_count":5,"lightbox_rate_padding":"15px","lightbox_rate_hover_color":"F7B50E","lightbox_hit_pos":"bottom","lightbox_hit_align":"left","lightbox_hit_bg_color":"000000","lightbox_hit_bg_transparent":70,"lightbox_hit_border_width":1,"lightbox_hit_border_style":"none","lightbox_hit_border_color":"000000","lightbox_hit_border_radius":"5px","lightbox_hit_padding":"5px","lightbox_hit_margin":"0 5px","lightbox_hit_color":"FFFFFF","lightbox_hit_font_style":"segoe ui","lightbox_hit_font_weight":"normal","lightbox_hit_font_size":14,"masonry_description_font_size":12,"masonry_description_color":"CCCCCC","masonry_description_font_style":"segoe ui","album_masonry_back_font_color":"000000","album_masonry_back_font_style":"segoe ui","album_masonry_back_font_size":14,"album_masonry_back_font_weight":"normal","album_masonry_back_padding":"0","album_masonry_title_font_color":"CCCCCC","album_masonry_title_font_style":"segoe ui","album_masonry_thumb_title_pos":"bottom","album_masonry_title_font_size":16,"album_masonry_title_font_weight":"bold","album_masonry_title_margin":"5px","album_masonry_title_shadow":"","album_masonry_thumb_margin":4,"album_masonry_thumb_padding":4,"album_masonry_thumb_border_radius":"0","album_masonry_thumb_border_width":1,"album_masonry_thumb_border_style":"none","album_masonry_thumb_border_color":"000000","album_masonry_thumb_bg_color":"E8E8E8","album_masonry_thumbs_bg_color":"FFFFFF","album_masonry_thumb_bg_transparent":100,"album_masonry_thumb_box_shadow":"","album_masonry_thumb_transparent":100,"album_masonry_thumb_align":"center","album_masonry_thumb_hover_effect":"rotate","album_masonry_thumb_hover_effect_value":"2deg","album_masonry_thumb_transition":1,"mosaic_thumb_padding":4,"mosaic_thumb_border_radius":"2px","mosaic_thumb_border_width":1,"mosaic_thumb_border_style":"none","mosaic_thumb_border_color":"CCCCCC","mosaic_thumbs_bg_color":"FFFFFF","mosaic_thumb_bg_transparent":0,"mosaic_thumb_transparent":80,"mosaic_thumb_align":"center","mosaic_thumb_hover_effect":"rotate","mosaic_thumb_hover_effect_value":"2deg","mosaic_thumb_title_font_color":"CCCCCC","mosaic_thumb_title_font_style":"segoe ui","mosaic_thumb_title_font_weight":"bold","mosaic_thumb_title_margin":"2px","mosaic_thumb_title_shadow":"0px 0px 0px #888888","mosaic_thumb_title_font_size":16,"carousel_cont_bg_color":"000000","carousel_cont_btn_transparent":0,"carousel_close_btn_transparent":100,"carousel_rl_btn_bg_color":"000000","carousel_rl_btn_border_radius":"20px","carousel_rl_btn_border_width":0,"carousel_rl_btn_border_style":"none","carousel_rl_btn_border_color":"FFFFFF","carousel_rl_btn_color":"FFFFFF","carousel_rl_btn_height":40,"carousel_rl_btn_size":20,"carousel_play_pause_btn_size":20,"carousel_rl_btn_width":40,"carousel_close_rl_btn_hover_color":"CCCCCC","carousel_rl_btn_style":"fa-chevron","carousel_mergin_bottom":"0.5","carousel_font_family":"Arial","carousel_feature_border_width":2,"carousel_feature_border_style":"solid","carousel_feature_border_color":"5D204F","carousel_caption_background_color":"000000","carousel_caption_bottom":0,"carousel_caption_p_mergin":0,"carousel_caption_p_pedding":5,"carousel_caption_p_font_weight":"bold","carousel_caption_p_font_size":14,"carousel_caption_p_color":"white","carousel_title_opacity":100,"carousel_title_border_radius":"5px","mosaic_thumb_transition":1}', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-09-02 17:17:47', '2015-09-02 17:17:47', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM AUTO_INCREMENT=361 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/activehands', 'yes'),
(2, 'home', 'http://localhost/activehands', 'yes'),
(3, 'blogname', 'Active Hands', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'aa@aa.aa', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";i:4;s:9:"hello.php";i:5;s:47:"responsive-photo-gallery/responsive-gallery.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:5:{i:0;s:83:"E:\\xampp\\htdocs\\activehands/wp-content/plugins/contact-form-7/wp-contact-form-7.php";i:1;s:66:"E:\\xampp\\htdocs\\activehands/wp-content/themes/activehand/style.css";i:2;s:88:"E:\\xampp\\htdocs\\activehands/wp-content/plugins/cpt-bootstrap-carousel/cptbc-frontend.php";i:3;s:96:"E:\\xampp\\htdocs\\activehands/wp-content/plugins/cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";i:4;s:0:"";}', 'no'),
(41, 'template', 'activehand', 'yes'),
(42, 'stylesheet', 'activehand', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '33056', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '1', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(81, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(84, 'page_for_posts', '0', 'yes'),
(85, 'page_on_front', '52', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'finished_splitting_shared_terms', '1', 'yes'),
(89, 'initial_db_version', '33055', 'yes'),
(90, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(91, 'widget_search', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'widget_meta', 'a:2:{i:2;a:1:{s:5:"title";s:0:"";}s:12:"_multiwidget";i:1;}', 'yes'),
(96, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:18:"orphaned_widgets_1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}s:13:"array_version";i:3;}', 'yes'),
(98, 'cron', 'a:5:{i:1893484620;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1893518267;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1893518407;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1893519445;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(356, 'wd_bwg_version', '1.3.0', 'no'),
(357, 'wd_bwg_theme_version', '1.0.0', 'no'),
(103, '_transient_random_seed', 'bfc2547030e0f5c6d571ae0f4622b76a', 'yes'),
(336, '_site_transient_timeout_theme_roots', '1893478790', 'yes'),
(337, '_site_transient_theme_roots', 'a:4:{s:10:"activehand";s:7:"/themes";s:13:"twentyfifteen";s:7:"/themes";s:14:"twentyfourteen";s:7:"/themes";s:14:"twentythirteen";s:7:"/themes";}', 'yes'),
(300, 'rewrite_rules', 'a:68:{s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=52&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(307, 'acf_version', '4.4.3', 'yes'),
(308, 'cptbc_settings', 'a:24:{s:8:"interval";s:4:"5000";s:11:"showcaption";s:4:"true";s:12:"showcontrols";s:4:"true";s:10:"customprev";s:0:"";s:10:"customnext";s:0:"";s:7:"orderby";s:10:"menu_order";s:5:"order";s:3:"ASC";s:8:"category";s:0:"";s:12:"before_title";s:4:"<h4>";s:11:"after_title";s:5:"</h4>";s:14:"before_caption";s:3:"<p>";s:13:"after_caption";s:4:"</p>";s:10:"image_size";s:4:"full";s:11:"link_button";s:1:"1";s:16:"link_button_text";s:9:"Read more";s:17:"link_button_class";s:26:"btn btn-default pull-right";s:18:"link_button_before";s:0:"";s:17:"link_button_after";s:0:"";s:2:"id";s:0:"";s:4:"twbs";s:1:"3";s:21:"use_background_images";s:1:"0";s:24:"background_images_height";s:3:"500";s:28:"background_images_style_size";s:5:"cover";s:24:"use_javascript_animation";s:1:"1";}', 'yes'),
(315, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1467280602;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(127, 'current_theme', 'Active Hands', 'yes'),
(128, 'theme_mods_activehand', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:2:{s:6:"footer";i:3;s:7:"primary";i:2;}}', 'yes'),
(129, 'theme_switched', '', 'yes'),
(137, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(311, 'category_children', 'a:0:{}', 'yes'),
(156, 'widget_calendar', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(157, 'widget_nav_menu', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(158, 'widget_pages', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(159, 'widget_tag_cloud', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'yes'),
(189, 'recently_activated', 'a:1:{s:31:"photo-gallery/photo-gallery.php";i:1467394432;}', 'yes'),
(254, 'db_upgraded', '', 'yes'),
(255, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.5.3.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.5.3-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.5.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.5.3";s:7:"version";s:5:"4.5.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.4";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1893476989;s:15:"version_checked";s:5:"4.3.1";s:12:"translations";a:0:{}}', 'yes'),
(343, '_site_transient_timeout_browser_fb5ae4c281981ca10a522b6e1bdcd161', '1894081881', 'yes'),
(344, '_site_transient_browser_fb5ae4c281981ca10a522b6e1bdcd161', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"51.0.2704.103";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(258, 'can_compress_scripts', '1', 'yes'),
(351, 'wpcf7', 'a:2:{s:7:"version";s:5:"4.4.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1467358924;s:7:"version";s:5:"4.4.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'yes'),
(358, 'bwg_admin_notice', 'a:3:{s:15:"ecommerce_promo";a:2:{s:5:"start";s:8:"7/4/2016";s:3:"int";i:3;}s:15:"two_week_review";a:2:{s:5:"start";s:9:"7/15/2016";s:3:"int";i:14;}s:16:"one_week_support";a:2:{s:5:"start";s:8:"7/8/2016";s:3:"int";i:7;}}', 'yes'),
(360, 'WL_IGP_Settings', 's:266:"a:7:{s:18:"WL_Hover_Animation";s:4:"fade";s:17:"WL_Gallery_Layout";s:8:"col-md-4";s:14:"WL_Hover_Color";s:7:"#74C9BE";s:22:"WL_Hover_Color_Opacity";s:1:"1";s:13:"WL_Font_Style";s:5:"Arial";s:18:"WL_Image_View_Icon";s:9:"fa-camera";s:16:"WL_Gallery_Title";s:3:"yes";}";', 'yes'),
(345, '_transient_timeout_plugin_slugs', '1467480955', 'no'),
(346, '_transient_plugin_slugs', 'a:6:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:36:"contact-form-7/wp-contact-form-7.php";i:3;s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";i:4;s:9:"hello.php";i:5;s:47:"responsive-photo-gallery/responsive-gallery.php";}', 'no'),
(347, '_transient_timeout_dash_88ae138922fe95674369b1cb3d215a2b', '1893520290', 'no'),
(348, '_transient_dash_88ae138922fe95674369b1cb3d215a2b', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: SSL certificate problem: certificate has expired</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: SSL certificate problem: certificate has expired</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(349, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1467368601', 'yes'),
(350, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'a:100:{s:6:"widget";a:3:{s:4:"name";s:6:"widget";s:4:"slug";s:6:"widget";s:5:"count";s:4:"5926";}s:4:"post";a:3:{s:4:"name";s:4:"Post";s:4:"slug";s:4:"post";s:5:"count";s:4:"3671";}s:6:"plugin";a:3:{s:4:"name";s:6:"plugin";s:4:"slug";s:6:"plugin";s:5:"count";s:4:"3617";}s:5:"admin";a:3:{s:4:"name";s:5:"admin";s:4:"slug";s:5:"admin";s:5:"count";s:4:"3136";}s:5:"posts";a:3:{s:4:"name";s:5:"posts";s:4:"slug";s:5:"posts";s:5:"count";s:4:"2807";}s:9:"shortcode";a:3:{s:4:"name";s:9:"shortcode";s:4:"slug";s:9:"shortcode";s:5:"count";s:4:"2399";}s:7:"sidebar";a:3:{s:4:"name";s:7:"sidebar";s:4:"slug";s:7:"sidebar";s:5:"count";s:4:"2226";}s:6:"google";a:3:{s:4:"name";s:6:"google";s:4:"slug";s:6:"google";s:5:"count";s:4:"2104";}s:7:"twitter";a:3:{s:4:"name";s:7:"twitter";s:4:"slug";s:7:"twitter";s:5:"count";s:4:"2052";}s:4:"page";a:3:{s:4:"name";s:4:"page";s:4:"slug";s:4:"page";s:5:"count";s:4:"2039";}s:6:"images";a:3:{s:4:"name";s:6:"images";s:4:"slug";s:6:"images";s:5:"count";s:4:"1995";}s:8:"comments";a:3:{s:4:"name";s:8:"comments";s:4:"slug";s:8:"comments";s:5:"count";s:4:"1938";}s:5:"image";a:3:{s:4:"name";s:5:"image";s:4:"slug";s:5:"image";s:5:"count";s:4:"1875";}s:11:"woocommerce";a:3:{s:4:"name";s:11:"woocommerce";s:4:"slug";s:11:"woocommerce";s:5:"count";s:4:"1756";}s:8:"facebook";a:3:{s:4:"name";s:8:"Facebook";s:4:"slug";s:8:"facebook";s:5:"count";s:4:"1694";}s:3:"seo";a:3:{s:4:"name";s:3:"seo";s:4:"slug";s:3:"seo";s:5:"count";s:4:"1591";}s:9:"wordpress";a:3:{s:4:"name";s:9:"wordpress";s:4:"slug";s:9:"wordpress";s:5:"count";s:4:"1547";}s:6:"social";a:3:{s:4:"name";s:6:"social";s:4:"slug";s:6:"social";s:5:"count";s:4:"1402";}s:7:"gallery";a:3:{s:4:"name";s:7:"gallery";s:4:"slug";s:7:"gallery";s:5:"count";s:4:"1320";}s:5:"links";a:3:{s:4:"name";s:5:"links";s:4:"slug";s:5:"links";s:5:"count";s:4:"1291";}s:5:"email";a:3:{s:4:"name";s:5:"email";s:4:"slug";s:5:"email";s:5:"count";s:4:"1232";}s:7:"widgets";a:3:{s:4:"name";s:7:"widgets";s:4:"slug";s:7:"widgets";s:5:"count";s:4:"1117";}s:5:"pages";a:3:{s:4:"name";s:5:"pages";s:4:"slug";s:5:"pages";s:5:"count";s:4:"1093";}s:6:"jquery";a:3:{s:4:"name";s:6:"jquery";s:4:"slug";s:6:"jquery";s:5:"count";s:4:"1009";}s:5:"media";a:3:{s:4:"name";s:5:"media";s:4:"slug";s:5:"media";s:5:"count";s:3:"997";}s:9:"ecommerce";a:3:{s:4:"name";s:9:"ecommerce";s:4:"slug";s:9:"ecommerce";s:5:"count";s:3:"987";}s:5:"video";a:3:{s:4:"name";s:5:"video";s:4:"slug";s:5:"video";s:5:"count";s:3:"927";}s:4:"ajax";a:3:{s:4:"name";s:4:"AJAX";s:4:"slug";s:4:"ajax";s:5:"count";s:3:"918";}s:7:"content";a:3:{s:4:"name";s:7:"content";s:4:"slug";s:7:"content";s:5:"count";s:3:"917";}s:5:"login";a:3:{s:4:"name";s:5:"login";s:4:"slug";s:5:"login";s:5:"count";s:3:"915";}s:3:"rss";a:3:{s:4:"name";s:3:"rss";s:4:"slug";s:3:"rss";s:5:"count";s:3:"914";}s:10:"javascript";a:3:{s:4:"name";s:10:"javascript";s:4:"slug";s:10:"javascript";s:5:"count";s:3:"842";}s:10:"responsive";a:3:{s:4:"name";s:10:"responsive";s:4:"slug";s:10:"responsive";s:5:"count";s:3:"836";}s:10:"buddypress";a:3:{s:4:"name";s:10:"buddypress";s:4:"slug";s:10:"buddypress";s:5:"count";s:3:"799";}s:8:"security";a:3:{s:4:"name";s:8:"security";s:4:"slug";s:8:"security";s:5:"count";s:3:"782";}s:10:"e-commerce";a:3:{s:4:"name";s:10:"e-commerce";s:4:"slug";s:10:"e-commerce";s:5:"count";s:3:"776";}s:7:"youtube";a:3:{s:4:"name";s:7:"youtube";s:4:"slug";s:7:"youtube";s:5:"count";s:3:"763";}s:5:"photo";a:3:{s:4:"name";s:5:"photo";s:4:"slug";s:5:"photo";s:5:"count";s:3:"762";}s:5:"share";a:3:{s:4:"name";s:5:"Share";s:4:"slug";s:5:"share";s:5:"count";s:3:"758";}s:4:"spam";a:3:{s:4:"name";s:4:"spam";s:4:"slug";s:4:"spam";s:5:"count";s:3:"754";}s:4:"feed";a:3:{s:4:"name";s:4:"feed";s:4:"slug";s:4:"feed";s:5:"count";s:3:"751";}s:4:"link";a:3:{s:4:"name";s:4:"link";s:4:"slug";s:4:"link";s:5:"count";s:3:"745";}s:8:"category";a:3:{s:4:"name";s:8:"category";s:4:"slug";s:8:"category";s:5:"count";s:3:"712";}s:9:"analytics";a:3:{s:4:"name";s:9:"analytics";s:4:"slug";s:9:"analytics";s:5:"count";s:3:"704";}s:6:"photos";a:3:{s:4:"name";s:6:"photos";s:4:"slug";s:6:"photos";s:5:"count";s:3:"696";}s:4:"form";a:3:{s:4:"name";s:4:"form";s:4:"slug";s:4:"form";s:5:"count";s:3:"695";}s:5:"embed";a:3:{s:4:"name";s:5:"embed";s:4:"slug";s:5:"embed";s:5:"count";s:3:"693";}s:3:"css";a:3:{s:4:"name";s:3:"CSS";s:4:"slug";s:3:"css";s:5:"count";s:3:"692";}s:6:"search";a:3:{s:4:"name";s:6:"search";s:4:"slug";s:6:"search";s:5:"count";s:3:"668";}s:6:"slider";a:3:{s:4:"name";s:6:"slider";s:4:"slug";s:6:"slider";s:5:"count";s:3:"667";}s:6:"custom";a:3:{s:4:"name";s:6:"custom";s:4:"slug";s:6:"custom";s:5:"count";s:3:"653";}s:9:"slideshow";a:3:{s:4:"name";s:9:"slideshow";s:4:"slug";s:9:"slideshow";s:5:"count";s:3:"647";}s:5:"stats";a:3:{s:4:"name";s:5:"stats";s:4:"slug";s:5:"stats";s:5:"count";s:3:"617";}s:6:"button";a:3:{s:4:"name";s:6:"button";s:4:"slug";s:6:"button";s:5:"count";s:3:"614";}s:4:"menu";a:3:{s:4:"name";s:4:"menu";s:4:"slug";s:4:"menu";s:5:"count";s:3:"606";}s:5:"theme";a:3:{s:4:"name";s:5:"theme";s:4:"slug";s:5:"theme";s:5:"count";s:3:"602";}s:7:"comment";a:3:{s:4:"name";s:7:"comment";s:4:"slug";s:7:"comment";s:5:"count";s:3:"599";}s:9:"dashboard";a:3:{s:4:"name";s:9:"dashboard";s:4:"slug";s:9:"dashboard";s:5:"count";s:3:"598";}s:4:"tags";a:3:{s:4:"name";s:4:"tags";s:4:"slug";s:4:"tags";s:5:"count";s:3:"591";}s:10:"categories";a:3:{s:4:"name";s:10:"categories";s:4:"slug";s:10:"categories";s:5:"count";s:3:"583";}s:6:"mobile";a:3:{s:4:"name";s:6:"mobile";s:4:"slug";s:6:"mobile";s:5:"count";s:3:"579";}s:10:"statistics";a:3:{s:4:"name";s:10:"statistics";s:4:"slug";s:10:"statistics";s:5:"count";s:3:"571";}s:3:"ads";a:3:{s:4:"name";s:3:"ads";s:4:"slug";s:3:"ads";s:5:"count";s:3:"565";}s:6:"editor";a:3:{s:4:"name";s:6:"editor";s:4:"slug";s:6:"editor";s:5:"count";s:3:"557";}s:4:"user";a:3:{s:4:"name";s:4:"user";s:4:"slug";s:4:"user";s:5:"count";s:3:"556";}s:4:"list";a:3:{s:4:"name";s:4:"list";s:4:"slug";s:4:"list";s:5:"count";s:3:"543";}s:5:"users";a:3:{s:4:"name";s:5:"users";s:4:"slug";s:5:"users";s:5:"count";s:3:"538";}s:12:"social-media";a:3:{s:4:"name";s:12:"social media";s:4:"slug";s:12:"social-media";s:5:"count";s:3:"525";}s:7:"plugins";a:3:{s:4:"name";s:7:"plugins";s:4:"slug";s:7:"plugins";s:5:"count";s:3:"523";}s:12:"contact-form";a:3:{s:4:"name";s:12:"contact form";s:4:"slug";s:12:"contact-form";s:5:"count";s:3:"517";}s:9:"affiliate";a:3:{s:4:"name";s:9:"affiliate";s:4:"slug";s:9:"affiliate";s:5:"count";s:3:"516";}s:7:"picture";a:3:{s:4:"name";s:7:"picture";s:4:"slug";s:7:"picture";s:5:"count";s:3:"515";}s:6:"simple";a:3:{s:4:"name";s:6:"simple";s:4:"slug";s:6:"simple";s:5:"count";s:3:"511";}s:9:"multisite";a:3:{s:4:"name";s:9:"multisite";s:4:"slug";s:9:"multisite";s:5:"count";s:3:"508";}s:7:"contact";a:3:{s:4:"name";s:7:"contact";s:4:"slug";s:7:"contact";s:5:"count";s:3:"486";}s:3:"api";a:3:{s:4:"name";s:3:"api";s:4:"slug";s:3:"api";s:5:"count";s:3:"470";}s:9:"marketing";a:3:{s:4:"name";s:9:"marketing";s:4:"slug";s:9:"marketing";s:5:"count";s:3:"465";}s:4:"shop";a:3:{s:4:"name";s:4:"shop";s:4:"slug";s:4:"shop";s:5:"count";s:3:"464";}s:8:"pictures";a:3:{s:4:"name";s:8:"pictures";s:4:"slug";s:8:"pictures";s:5:"count";s:3:"463";}s:3:"url";a:3:{s:4:"name";s:3:"url";s:4:"slug";s:3:"url";s:5:"count";s:3:"455";}s:10:"navigation";a:3:{s:4:"name";s:10:"navigation";s:4:"slug";s:10:"navigation";s:5:"count";s:3:"447";}s:4:"html";a:3:{s:4:"name";s:4:"html";s:4:"slug";s:4:"html";s:5:"count";s:3:"445";}s:10:"newsletter";a:3:{s:4:"name";s:10:"newsletter";s:4:"slug";s:10:"newsletter";s:5:"count";s:3:"435";}s:6:"events";a:3:{s:4:"name";s:6:"events";s:4:"slug";s:6:"events";s:5:"count";s:3:"428";}s:4:"meta";a:3:{s:4:"name";s:4:"meta";s:4:"slug";s:4:"meta";s:5:"count";s:3:"424";}s:8:"tracking";a:3:{s:4:"name";s:8:"tracking";s:4:"slug";s:8:"tracking";s:5:"count";s:3:"423";}s:8:"calendar";a:3:{s:4:"name";s:8:"calendar";s:4:"slug";s:8:"calendar";s:5:"count";s:3:"423";}s:5:"flash";a:3:{s:4:"name";s:5:"flash";s:4:"slug";s:5:"flash";s:5:"count";s:3:"421";}s:10:"shortcodes";a:3:{s:4:"name";s:10:"shortcodes";s:4:"slug";s:10:"shortcodes";s:5:"count";s:3:"414";}s:4:"news";a:3:{s:4:"name";s:4:"News";s:4:"slug";s:4:"news";s:5:"count";s:3:"413";}s:3:"tag";a:3:{s:4:"name";s:3:"tag";s:4:"slug";s:3:"tag";s:5:"count";s:3:"410";}s:6:"upload";a:3:{s:4:"name";s:6:"upload";s:4:"slug";s:6:"upload";s:5:"count";s:3:"407";}s:9:"thumbnail";a:3:{s:4:"name";s:9:"thumbnail";s:4:"slug";s:9:"thumbnail";s:5:"count";s:3:"405";}s:11:"advertising";a:3:{s:4:"name";s:11:"advertising";s:4:"slug";s:11:"advertising";s:5:"count";s:3:"405";}s:7:"sharing";a:3:{s:4:"name";s:7:"sharing";s:4:"slug";s:7:"sharing";s:5:"count";s:3:"403";}s:6:"paypal";a:3:{s:4:"name";s:6:"paypal";s:4:"slug";s:6:"paypal";s:5:"count";s:3:"403";}s:12:"notification";a:3:{s:4:"name";s:12:"notification";s:4:"slug";s:12:"notification";s:5:"count";s:3:"400";}s:7:"profile";a:3:{s:4:"name";s:7:"profile";s:4:"slug";s:7:"profile";s:5:"count";s:3:"395";}s:4:"text";a:3:{s:4:"name";s:4:"text";s:4:"slug";s:4:"text";s:5:"count";s:3:"395";}s:8:"linkedin";a:3:{s:4:"name";s:8:"linkedin";s:4:"slug";s:8:"linkedin";s:5:"count";s:3:"394";}}', 'yes'),
(251, 'auto_core_update_notified', 'a:4:{s:4:"type";s:6:"manual";s:5:"email";s:8:"aa@aa.aa";s:7:"version";s:5:"4.5.3";s:9:"timestamp";i:1467128318;}', 'yes'),
(341, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1893477001;s:7:"checked";a:4:{s:10:"activehand";s:3:"1.0";s:13:"twentyfifteen";s:3:"1.3";s:14:"twentyfourteen";s:3:"1.5";s:14:"twentythirteen";s:3:"1.6";}s:8:"response";a:3:{s:13:"twentyfifteen";a:4:{s:5:"theme";s:13:"twentyfifteen";s:11:"new_version";s:3:"1.5";s:3:"url";s:43:"https://wordpress.org/themes/twentyfifteen/";s:7:"package";s:58:"http://downloads.wordpress.org/theme/twentyfifteen.1.5.zip";}s:14:"twentyfourteen";a:4:{s:5:"theme";s:14:"twentyfourteen";s:11:"new_version";s:3:"1.7";s:3:"url";s:44:"https://wordpress.org/themes/twentyfourteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentyfourteen.1.7.zip";}s:14:"twentythirteen";a:4:{s:5:"theme";s:14:"twentythirteen";s:11:"new_version";s:3:"1.9";s:3:"url";s:44:"https://wordpress.org/themes/twentythirteen/";s:7:"package";s:59:"http://downloads.wordpress.org/theme/twentythirteen.1.9.zip";}}s:12:"translations";a:0:{}}', 'yes'),
(342, '_site_transient_update_plugins', 'O:8:"stdClass":5:{s:12:"last_checked";i:1467394549;s:7:"checked";a:6:{s:30:"advanced-custom-fields/acf.php";s:5:"4.4.3";s:19:"akismet/akismet.php";s:5:"3.1.3";s:36:"contact-form-7/wp-contact-form-7.php";s:5:"4.4.2";s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";s:5:"1.9.1";s:9:"hello.php";s:3:"1.6";s:47:"responsive-photo-gallery/responsive-gallery.php";s:5:"3.2.6";}s:8:"response";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.7";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/advanced-custom-fields.4.4.7.zip";}s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:6:"3.1.11";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:57:"https://downloads.wordpress.org/plugin/akismet.3.1.11.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:4:{s:36:"contact-form-7/wp-contact-form-7.php";O:8:"stdClass":6:{s:2:"id";s:3:"790";s:4:"slug";s:14:"contact-form-7";s:6:"plugin";s:36:"contact-form-7/wp-contact-form-7.php";s:11:"new_version";s:5:"4.4.2";s:3:"url";s:45:"https://wordpress.org/plugins/contact-form-7/";s:7:"package";s:63:"https://downloads.wordpress.org/plugin/contact-form-7.4.4.2.zip";}s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";O:8:"stdClass":6:{s:2:"id";s:5:"40275";s:4:"slug";s:22:"cpt-bootstrap-carousel";s:6:"plugin";s:49:"cpt-bootstrap-carousel/cpt-bootstrap-carousel.php";s:11:"new_version";s:5:"1.9.1";s:3:"url";s:53:"https://wordpress.org/plugins/cpt-bootstrap-carousel/";s:7:"package";s:71:"https://downloads.wordpress.org/plugin/cpt-bootstrap-carousel.1.9.1.zip";}s:9:"hello.php";O:8:"stdClass":6:{s:2:"id";s:4:"3564";s:4:"slug";s:11:"hello-dolly";s:6:"plugin";s:9:"hello.php";s:11:"new_version";s:3:"1.6";s:3:"url";s:42:"https://wordpress.org/plugins/hello-dolly/";s:7:"package";s:58:"https://downloads.wordpress.org/plugin/hello-dolly.1.6.zip";}s:47:"responsive-photo-gallery/responsive-gallery.php";O:8:"stdClass":6:{s:2:"id";s:5:"50904";s:4:"slug";s:24:"responsive-photo-gallery";s:6:"plugin";s:47:"responsive-photo-gallery/responsive-gallery.php";s:11:"new_version";s:5:"3.2.6";s:3:"url";s:55:"https://wordpress.org/plugins/responsive-photo-gallery/";s:7:"package";s:73:"https://downloads.wordpress.org/plugin/responsive-photo-gallery.3.2.6.zip";}}}', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=294 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(202, 71, '_wp_attached_file', '2016/06/03.jpg'),
(203, 71, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1341;s:6:"height";i:525;s:4:"file";s:14:"2016/06/03.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"03-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"03-300x117.jpg";s:5:"width";i:300;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"03-1024x401.jpg";s:5:"width";i:1024;s:6:"height";i:401;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:13:"03-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(38, 17, '_edit_last', '1'),
(39, 17, '_edit_lock', '1467357187:1'),
(40, 20, '_edit_last', '1'),
(41, 20, '_edit_lock', '1467303844:1'),
(42, 22, '_edit_last', '1'),
(43, 22, '_edit_lock', '1441435108:1'),
(44, 24, '_edit_last', '1'),
(45, 24, '_edit_lock', '1441215562:1'),
(46, 26, '_edit_last', '1'),
(47, 26, '_edit_lock', '1467303048:1'),
(48, 28, '_edit_last', '1'),
(49, 28, '_edit_lock', '1467391111:1'),
(174, 56, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(173, 56, '_menu_item_target', ''),
(172, 56, '_menu_item_object', 'page'),
(171, 56, '_menu_item_object_id', '54'),
(170, 56, '_menu_item_menu_item_parent', '0'),
(79, 33, '_menu_item_object_id', '28'),
(169, 56, '_menu_item_type', 'post_type'),
(168, 54, '_edit_lock', '1467387563:1'),
(167, 54, '_edit_last', '1'),
(166, 52, '_edit_lock', '1467265707:1'),
(165, 52, '_edit_last', '1'),
(164, 47, '_edit_lock', '1441300780:1'),
(78, 33, '_menu_item_menu_item_parent', '0'),
(163, 47, '_edit_last', '1'),
(162, 45, '_edit_lock', '1441299690:1'),
(161, 45, '_edit_last', '1'),
(160, 43, '_edit_lock', '1441562633:1'),
(159, 43, '_edit_last', '1'),
(158, 1, '_edit_lock', '1467389088:1'),
(77, 33, '_menu_item_type', 'post_type'),
(80, 33, '_menu_item_object', 'page'),
(81, 33, '_menu_item_target', ''),
(82, 33, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 33, '_menu_item_xfn', ''),
(84, 33, '_menu_item_url', ''),
(86, 34, '_menu_item_type', 'post_type'),
(87, 34, '_menu_item_menu_item_parent', '0'),
(88, 34, '_menu_item_object_id', '20'),
(89, 34, '_menu_item_object', 'page'),
(90, 34, '_menu_item_target', ''),
(91, 34, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(92, 34, '_menu_item_xfn', ''),
(93, 34, '_menu_item_url', ''),
(95, 35, '_menu_item_type', 'post_type'),
(96, 35, '_menu_item_menu_item_parent', '0'),
(97, 35, '_menu_item_object_id', '17'),
(98, 35, '_menu_item_object', 'page'),
(99, 35, '_menu_item_target', ''),
(100, 35, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(101, 35, '_menu_item_xfn', ''),
(102, 35, '_menu_item_url', ''),
(201, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1341;s:6:"height";i:525;s:4:"file";s:14:"2016/06/01.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:14:"01-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:14:"01-300x117.jpg";s:5:"width";i:300;s:6:"height";i:117;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:15:"01-1024x401.jpg";s:5:"width";i:1024;s:6:"height";i:401;s:9:"mime-type";s:10:"image/jpeg";}s:16:"featured_preview";a:4:{s:4:"file";s:13:"01-100x55.jpg";s:5:"width";i:100;s:6:"height";i:55;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";d:9;s:6:"credit";s:29:"Luca Galuzzi - www.galuzzi.it";s:6:"camera";s:22:"Canon EOS 350D DIGITAL";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:70:"licensed under the Creative Commons Attribution ShareAlike 2.5 License";s:12:"focal_length";s:2:"85";s:3:"iso";s:3:"100";s:13:"shutter_speed";s:5:"0.005";s:5:"title";s:0:"";s:11:"orientation";i:1;}}'),
(200, 70, '_wp_attached_file', '2016/06/01.jpg'),
(199, 69, '_edit_lock', '1467279119:1'),
(198, 69, '_edit_last', '1'),
(131, 39, '_menu_item_type', 'post_type'),
(132, 39, '_menu_item_menu_item_parent', '0'),
(133, 39, '_menu_item_object_id', '26'),
(134, 39, '_menu_item_object', 'page'),
(135, 39, '_menu_item_target', ''),
(136, 39, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(137, 39, '_menu_item_xfn', ''),
(138, 39, '_menu_item_url', ''),
(178, 57, '_edit_last', '1'),
(140, 40, '_menu_item_type', 'post_type'),
(141, 40, '_menu_item_menu_item_parent', '0'),
(142, 40, '_menu_item_object_id', '24'),
(143, 40, '_menu_item_object', 'page'),
(144, 40, '_menu_item_target', ''),
(145, 40, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(146, 40, '_menu_item_xfn', ''),
(147, 40, '_menu_item_url', ''),
(176, 56, '_menu_item_url', ''),
(149, 41, '_menu_item_type', 'post_type'),
(150, 41, '_menu_item_menu_item_parent', '0'),
(151, 41, '_menu_item_object_id', '22'),
(152, 41, '_menu_item_object', 'page'),
(153, 41, '_menu_item_target', ''),
(154, 41, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(155, 41, '_menu_item_xfn', ''),
(156, 41, '_menu_item_url', ''),
(175, 56, '_menu_item_xfn', ''),
(179, 57, '_edit_lock', '1467387622:1'),
(183, 59, '_edit_lock', '1467307532:1'),
(182, 59, '_edit_last', '1'),
(187, 61, '_edit_lock', '1467303676:1'),
(186, 61, '_edit_last', '1'),
(191, 64, '_edit_lock', '1467303673:1'),
(190, 64, '_edit_last', '1'),
(195, 66, '_edit_lock', '1467390232:1'),
(194, 66, '_edit_last', '1'),
(204, 69, '_thumbnail_id', '70'),
(205, 69, 'cptbc_image_url', ''),
(206, 69, 'cptbc_image_url_openblank', '0'),
(207, 69, 'cptbc_image_link_text', ''),
(208, 72, '_edit_last', '1'),
(209, 72, '_edit_lock', '1467279797:1'),
(210, 72, '_thumbnail_id', '71'),
(211, 72, 'cptbc_image_url', ''),
(212, 72, 'cptbc_image_url_openblank', '0'),
(213, 72, 'cptbc_image_link_text', ''),
(214, 75, '_edit_last', '1'),
(215, 75, '_edit_lock', '1467392694:1'),
(216, 77, '_edit_last', '1'),
(217, 77, '_edit_lock', '1467395128:1'),
(222, 81, '_menu_item_type', 'post_type'),
(223, 81, '_menu_item_menu_item_parent', '0'),
(224, 81, '_menu_item_object_id', '75'),
(225, 81, '_menu_item_object', 'page'),
(226, 81, '_menu_item_target', ''),
(227, 81, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(228, 81, '_menu_item_xfn', ''),
(229, 81, '_menu_item_url', ''),
(231, 82, '_edit_last', '1'),
(232, 82, '_edit_lock', '1467303672:1'),
(244, 77, '_wp_page_template', 'gallery.php'),
(243, 75, '_wp_page_template', 'news.php'),
(245, 85, '_menu_item_type', 'post_type'),
(246, 85, '_menu_item_menu_item_parent', '0'),
(247, 85, '_menu_item_object_id', '77'),
(248, 85, '_menu_item_object', 'page'),
(249, 85, '_menu_item_target', ''),
(250, 85, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(251, 85, '_menu_item_xfn', ''),
(252, 85, '_menu_item_url', ''),
(254, 17, '_wp_page_template', 'contact.php'),
(255, 87, '_form', '<p>Your Name (required)<br />\n    [text* your-name] </p>\n\n<p>Your Email (required)<br />\n    [email* your-email] </p>\n\n<p>Subject<br />\n    [text your-subject] </p>\n\n<p>Your Message<br />\n    [textarea your-message] </p>\n\n<p>[submit "Send"]</p>'),
(256, 87, '_mail', 'a:8:{s:7:"subject";s:29:"Active Hands "[your-subject]"";s:6:"sender";s:22:"[your-name] <aa@aa.aa>";s:4:"body";s:178:"From: [your-name] <[your-email]>\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Active Hands (http://localhost/activehands)";s:9:"recipient";s:8:"aa@aa.aa";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(257, 87, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:29:"Active Hands "[your-subject]"";s:6:"sender";s:23:"Active Hands <aa@aa.aa>";s:4:"body";s:120:"Message Body:\n[your-message]\n\n--\nThis e-mail was sent from a contact form on Active Hands (http://localhost/activehands)";s:9:"recipient";s:12:"[your-email]";s:18:"additional_headers";s:18:"Reply-To: aa@aa.aa";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(258, 87, '_messages', 'a:23:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:22:"The field is required.";s:16:"invalid_too_long";s:22:"The field is too long.";s:17:"invalid_too_short";s:23:"The field is too short.";s:12:"invalid_date";s:29:"The date format is incorrect.";s:14:"date_too_early";s:44:"The date is before the earliest one allowed.";s:13:"date_too_late";s:41:"The date is after the latest one allowed.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:20:"The file is too big.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:14:"invalid_number";s:29:"The number format is invalid.";s:16:"number_too_small";s:47:"The number is smaller than the minimum allowed.";s:16:"number_too_large";s:46:"The number is larger than the maximum allowed.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:17:"captcha_not_match";s:31:"Your entered code is incorrect.";s:13:"invalid_email";s:38:"The e-mail address entered is invalid.";s:11:"invalid_url";s:19:"The URL is invalid.";s:11:"invalid_tel";s:32:"The telephone number is invalid.";}'),
(259, 87, '_additional_settings', ''),
(260, 87, '_locale', 'en_US'),
(261, 54, '_wp_page_template', 'blog.php'),
(264, 1, '_edit_last', '1'),
(267, 28, '_wp_page_template', 'default'),
(268, 98, '_edit_last', '1'),
(269, 98, '_edit_lock', '1467394511:1'),
(270, 99, '_wp_attached_file', '2016/07/Chhulang-hamro-purkhako-gaau.png'),
(271, 99, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:650;s:6:"height";i:377;s:4:"file";s:40:"2016/07/Chhulang-hamro-purkhako-gaau.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:40:"Chhulang-hamro-purkhako-gaau-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:40:"Chhulang-hamro-purkhako-gaau-300x174.png";s:5:"width";i:300;s:6:"height";i:174;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(272, 100, '_wp_attached_file', '2016/07/Hyula-rakshyak-mar-muila.png'),
(273, 100, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:653;s:6:"height";i:372;s:4:"file";s:36:"2016/07/Hyula-rakshyak-mar-muila.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:36:"Hyula-rakshyak-mar-muila-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:36:"Hyula-rakshyak-mar-muila-300x171.png";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(274, 98, 'rpg_all_photos_details', 's:332:"a:2:{i:0;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:96:"http://localhost/activehands/wp-content/uploads/2016/07/Chhulang-hamro-purkhako-gaau-300x174.png";}i:1;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:92:"http://localhost/activehands/wp-content/uploads/2016/07/Hyula-rakshyak-mar-muila-300x171.png";}}";'),
(275, 98, 'rpg_total_images_count', '2'),
(276, 101, '_edit_last', '1'),
(277, 101, '_edit_lock', '1467394970:1'),
(278, 101, 'rpg_all_photos_details', 's:949:"a:6:{i:0;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:80:"http://localhost/activehands/wp-content/uploads/2016/07/chhimi-mamba-300x169.png";}i:1;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:86:"http://localhost/activehands/wp-content/uploads/2016/07/Fyukuri-Banki-Gang-300x170.png";}i:2;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:82:"http://localhost/activehands/wp-content/uploads/2016/07/Helumbhu-Mathi-300x170.png";}i:3;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:93:"http://localhost/activehands/wp-content/uploads/2016/07/Hyula-rakshyak-mar-muila1-300x171.png";}i:4;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:93:"http://localhost/activehands/wp-content/uploads/2016/07/Dangsing-Lhari-Mhendomaya-300x171.png";}i:5;a:2:{s:15:"rpg_image_label";s:0:"";s:13:"rpg_image_url";s:95:"http://localhost/activehands/wp-content/uploads/2016/07/Mayala-Mhendo-Tamang-Flims1-300x170.png";}}";'),
(279, 101, 'rpg_total_images_count', '6'),
(280, 102, '_wp_attached_file', '2016/07/Fyukuri-Banki-Gang.png'),
(281, 102, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:656;s:6:"height";i:372;s:4:"file";s:30:"2016/07/Fyukuri-Banki-Gang.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:30:"Fyukuri-Banki-Gang-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:30:"Fyukuri-Banki-Gang-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(282, 104, '_wp_attached_file', '2016/07/chhimi-mamba.png'),
(283, 104, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:647;s:6:"height";i:365;s:4:"file";s:24:"2016/07/chhimi-mamba.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:24:"chhimi-mamba-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:24:"chhimi-mamba-300x169.png";s:5:"width";i:300;s:6:"height";i:169;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(284, 105, '_wp_attached_file', '2016/07/Helumbhu-Mathi.png'),
(285, 105, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:871;s:6:"height";i:495;s:4:"file";s:26:"2016/07/Helumbhu-Mathi.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:26:"Helumbhu-Mathi-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:26:"Helumbhu-Mathi-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(286, 106, '_wp_attached_file', '2016/07/Hyula-rakshyak-mar-muila1.png'),
(287, 106, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:653;s:6:"height";i:372;s:4:"file";s:37:"2016/07/Hyula-rakshyak-mar-muila1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Hyula-rakshyak-mar-muila1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"Hyula-rakshyak-mar-muila1-300x171.png";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(288, 107, '_wp_attached_file', '2016/07/Dangsing-Lhari-Mhendomaya.png'),
(289, 107, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:654;s:6:"height";i:373;s:4:"file";s:37:"2016/07/Dangsing-Lhari-Mhendomaya.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:37:"Dangsing-Lhari-Mhendomaya-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:37:"Dangsing-Lhari-Mhendomaya-300x171.png";s:5:"width";i:300;s:6:"height";i:171;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(290, 108, '_wp_attached_file', '2016/07/Mayala-Mhendo-Tamang-Flims.png'),
(291, 108, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:653;s:6:"height";i:371;s:4:"file";s:38:"2016/07/Mayala-Mhendo-Tamang-Flims.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:38:"Mayala-Mhendo-Tamang-Flims-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:38:"Mayala-Mhendo-Tamang-Flims-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(292, 109, '_wp_attached_file', '2016/07/Mayala-Mhendo-Tamang-Flims1.png'),
(293, 109, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:653;s:6:"height";i:371;s:4:"file";s:39:"2016/07/Mayala-Mhendo-Tamang-Flims1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:39:"Mayala-Mhendo-Tamang-Flims1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:39:"Mayala-Mhendo-Tamang-Flims1-300x170.png";s:5:"width";i:300;s:6:"height";i:170;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-09-02 17:17:47', '2015-09-02 17:17:47', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2016-07-01 15:42:34', '2016-07-01 15:42:34', '', 0, 'http://localhost/activehands/?p=1', 0, 'post', '', 1),
(2, 1, '2015-09-02 17:17:47', '2015-09-02 17:17:47', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/activehands/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'open', 'open', '', 'sample-page', '', '', '2015-09-02 17:17:47', '2015-09-02 17:17:47', '', 0, 'http://localhost/activehands/?page_id=2', 0, 'page', '', 0),
(72, 1, '2016-06-30 09:34:49', '2016-06-30 09:34:49', '', 'My Carosuel two', 'orem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip e', 'publish', 'closed', 'closed', '', 'my-carosuel-two', '', '', '2016-06-30 09:39:13', '2016-06-30 09:39:13', '', 0, 'http://localhost/activehands/?post_type=cptbc&#038;p=72', 0, 'cptbc', '', 0),
(84, 1, '2016-06-30 15:38:04', '2016-06-30 15:38:04', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2016-06-30 15:38:04', '2016-06-30 15:38:04', '', 66, 'http://localhost/activehands/66-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2016-07-01 15:42:34', '2016-07-01 15:42:34', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2016-07-01 15:42:34', '2016-07-01 15:42:34', '', 1, 'http://localhost/activehands/1-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2016-07-01 16:28:25', '2016-07-01 16:28:25', 'Portfolio Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-07-01 16:28:25', '2016-07-01 16:28:25', '', 28, 'http://localhost/activehands/28-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2016-07-01 16:28:41', '2016-07-01 16:28:41', '<a href="http://localhost/activehands/wp-content/uploads/2016/06/03.jpg"><img src="http://localhost/activehands/wp-content/uploads/2016/06/03-300x117.jpg" alt="03" width="300" height="117" class="alignnone size-medium wp-image-71" /></a>\r\nPortfolio Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-07-01 16:28:41', '2016-07-01 16:28:41', '', 28, 'http://localhost/activehands/28-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2016-06-30 09:51:09', '2016-06-30 09:51:09', '', 'News', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2016-06-30 16:26:40', '2016-06-30 16:26:40', '', 0, 'http://localhost/activehands/?page_id=75', 0, 'page', '', 0),
(76, 1, '2016-06-30 09:51:09', '2016-06-30 09:51:09', '', 'News', '', 'inherit', 'closed', 'closed', '', '75-revision-v1', '', '', '2016-06-30 09:51:09', '2016-06-30 09:51:09', '', 75, 'http://localhost/activehands/75-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2016-06-30 09:51:23', '2016-06-30 09:51:23', '[WRG id=101]\r\n[WRG id=98]', 'Photo Gallery', '', 'publish', 'closed', 'closed', '', 'gallery', '', '', '2016-07-01 17:45:27', '2016-07-01 17:45:27', '', 0, 'http://localhost/activehands/?page_id=77', 0, 'page', '', 0),
(78, 1, '2016-06-30 09:51:23', '2016-06-30 09:51:23', '', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-06-30 09:51:23', '2016-06-30 09:51:23', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2016-07-01 07:42:04', '2016-07-01 07:42:04', '<p>Your Name (required)<br />\r\n    [text* your-name] </p>\r\n\r\n<p>Your Email (required)<br />\r\n    [email* your-email] </p>\r\n\r\n<p>Subject<br />\r\n    [text your-subject] </p>\r\n\r\n<p>Your Message<br />\r\n    [textarea your-message] </p>\r\n\r\n<p>[submit "Send"]</p>\nActive Hands "[your-subject]"\n[your-name] <aa@aa.aa>\nFrom: [your-name] <[your-email]>\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Active Hands (http://localhost/activehands)\naa@aa.aa\nReply-To: [your-email]\n\n\n\n\nActive Hands "[your-subject]"\nActive Hands <aa@aa.aa>\nMessage Body:\r\n[your-message]\r\n\r\n--\r\nThis e-mail was sent from a contact form on Active Hands (http://localhost/activehands)\n[your-email]\nReply-To: aa@aa.aa\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nThe field is required.\nThe field is too long.\nThe field is too short.\nThe date format is incorrect.\nThe date is before the earliest one allowed.\nThe date is after the latest one allowed.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe file is too big.\nThere was an error uploading the file.\nThe number format is invalid.\nThe number is smaller than the minimum allowed.\nThe number is larger than the maximum allowed.\nThe answer to the quiz is incorrect.\nYour entered code is incorrect.\nThe e-mail address entered is invalid.\nThe URL is invalid.\nThe telephone number is invalid.', 'Active Hands Contact', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2016-07-01 08:48:14', '2016-07-01 08:48:14', '', 0, 'http://localhost/activehands/?post_type=wpcf7_contact_form&#038;p=87', 0, 'wpcf7_contact_form', '', 0),
(86, 1, '2030-01-01 05:51:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2030-01-01 05:51:21', '0000-00-00 00:00:00', '', 0, 'http://localhost/activehands/?p=86', 0, 'post', '', 0),
(81, 1, '2016-06-30 10:00:06', '2016-06-30 10:00:06', ' ', '', '', 'publish', 'closed', 'closed', '', '81', '', '', '2016-06-30 16:27:21', '2016-06-30 16:27:21', '', 0, 'http://localhost/activehands/?p=81', 2, 'nav_menu_item', '', 0),
(82, 1, '2016-06-30 14:59:01', '2016-06-30 14:59:01', '', 'Photo Gallery', '', 'publish', 'closed', 'closed', '', 'photo-gallery', '', '', '2016-06-30 14:59:01', '2016-06-30 14:59:01', '', 0, 'http://localhost/activehands/?page_id=82', 0, 'page', '', 0),
(83, 1, '2016-06-30 14:59:01', '2016-06-30 14:59:01', '', 'Photo Gallery', '', 'inherit', 'closed', 'closed', '', '82-revision-v1', '', '', '2016-06-30 14:59:01', '2016-06-30 14:59:01', '', 82, 'http://localhost/activehands/82-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2016-06-30 16:27:21', '2016-06-30 16:27:21', ' ', '', '', 'publish', 'closed', 'closed', '', '85', '', '', '2016-06-30 16:27:21', '2016-06-30 16:27:21', '', 0, 'http://localhost/activehands/?p=85', 3, 'nav_menu_item', '', 0),
(17, 1, '2015-09-02 17:40:46', '2015-09-02 17:40:46', 'Contact Us Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2016-07-01 06:08:05', '2016-07-01 06:08:05', '', 0, 'http://localhost/activehands/?page_id=17', 0, 'page', '', 0),
(18, 1, '2015-09-02 17:40:38', '2015-09-02 17:40:38', 'Contact Us', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-09-02 17:40:38', '2015-09-02 17:40:38', '', 17, 'http://localhost/activehands/2015/09/02/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2015-09-02 17:40:46', '2015-09-02 17:40:46', 'Contact Us Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Contact Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2015-09-02 17:40:46', '2015-09-02 17:40:46', '', 17, 'http://localhost/activehands/2015/09/02/17-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2015-09-02 17:41:08', '2015-09-02 17:41:08', 'About Us Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2015-09-02 17:41:08', '2015-09-02 17:41:08', '', 0, 'http://localhost/activehands/?page_id=20', 0, 'page', '', 0),
(21, 1, '2015-09-02 17:41:08', '2015-09-02 17:41:08', 'About Us Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'About Us', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2015-09-02 17:41:08', '2015-09-02 17:41:08', '', 20, 'http://localhost/activehands/2015/09/02/20-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-09-02 17:41:23', '2015-09-02 17:41:23', 'FAQ Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'FAQ', '', 'publish', 'closed', 'closed', '', 'faq', '', '', '2015-09-05 06:37:00', '2015-09-05 06:37:00', '', 0, 'http://localhost/activehands/?page_id=22', 0, 'page', '', 0),
(23, 1, '2015-09-02 17:41:23', '2015-09-02 17:41:23', 'FAQ Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'FAQ', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-09-02 17:41:23', '2015-09-02 17:41:23', '', 22, 'http://localhost/activehands/2015/09/02/22-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-09-02 17:41:45', '2015-09-02 17:41:45', 'Terms &amp; Conditions Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Terms & Conditions', '', 'publish', 'closed', 'closed', '', 'terms-conditions', '', '', '2015-09-02 17:41:45', '2015-09-02 17:41:45', '', 0, 'http://localhost/activehands/?page_id=24', 0, 'page', '', 0),
(25, 1, '2015-09-02 17:41:45', '2015-09-02 17:41:45', 'Terms &amp; Conditions Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Terms & Conditions', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2015-09-02 17:41:45', '2015-09-02 17:41:45', '', 24, 'http://localhost/activehands/2015/09/02/24-revision-v1/', 0, 'revision', '', 0),
(26, 1, '2015-09-02 17:42:06', '2015-09-02 17:42:06', 'Privacy Policy Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Privacy Policy', '', 'publish', 'closed', 'closed', '', 'privacy-policy', '', '', '2015-09-02 17:42:06', '2015-09-02 17:42:06', '', 0, 'http://localhost/activehands/?page_id=26', 0, 'page', '', 0),
(27, 1, '2015-09-02 17:42:06', '2015-09-02 17:42:06', 'Privacy Policy Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2015-09-02 17:42:06', '2015-09-02 17:42:06', '', 26, 'http://localhost/activehands/2015/09/02/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-09-02 17:42:21', '2015-09-02 17:42:21', '<a href="http://localhost/activehands/wp-content/uploads/2016/06/03.jpg"><img src="http://localhost/activehands/wp-content/uploads/2016/06/03-300x117.jpg" alt="03" width="100%" height="100%" class="alignnone size-medium wp-image-71" /></a>\r\nPortfolio Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2016-07-01 16:29:02', '2016-07-01 16:29:02', '', 0, 'http://localhost/activehands/?page_id=28', 0, 'page', '', 0),
(29, 1, '2015-09-02 17:42:21', '2015-09-02 17:42:21', 'Portfolio Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2015-09-02 17:42:21', '2015-09-02 17:42:21', '', 28, 'http://localhost/activehands/2015/09/02/28-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-09-03 17:03:24', '2015-09-03 17:03:24', 'Mission Statement Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Mission Statement', '', 'publish', 'closed', 'closed', '', 'mission-statement', '', '', '2015-09-03 17:03:24', '2015-09-03 17:03:24', '', 20, 'http://localhost/activehands/?page_id=43', 0, 'page', '', 0),
(71, 1, '2016-06-30 09:34:11', '2016-06-30 09:34:11', '', '03', '', 'inherit', 'open', 'closed', '', '03', '', '', '2016-06-30 09:34:11', '2016-06-30 09:34:11', '', 69, 'http://localhost/activehands/wp-content/uploads/2016/06/03.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2015-09-02 17:58:48', '2015-09-02 17:58:48', ' ', '', '', 'publish', 'closed', 'closed', '', '33', '', '', '2016-06-30 16:27:21', '2016-06-30 16:27:21', '', 0, 'http://localhost/activehands/?p=33', 1, 'nav_menu_item', '', 0),
(34, 1, '2015-09-02 17:58:48', '2015-09-02 17:58:48', ' ', '', '', 'publish', 'closed', 'closed', '', '34', '', '', '2016-06-30 16:27:21', '2016-06-30 16:27:21', '', 0, 'http://localhost/activehands/?p=34', 6, 'nav_menu_item', '', 0),
(35, 1, '2015-09-02 17:58:48', '2015-09-02 17:58:48', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2016-06-30 16:27:21', '2016-06-30 16:27:21', '', 0, 'http://localhost/activehands/?p=35', 5, 'nav_menu_item', '', 0),
(70, 1, '2016-06-30 09:34:01', '2016-06-30 09:34:01', '', '01', '', 'inherit', 'open', 'closed', '', '01', '', '', '2016-06-30 09:34:01', '2016-06-30 09:34:01', '', 69, 'http://localhost/activehands/wp-content/uploads/2016/06/01.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 1, '2016-06-30 09:34:20', '2016-06-30 09:34:20', '', 'My Carosuel Slider One', 'Description Goes Herer', 'publish', 'closed', 'closed', '', 'my-carosuel-slider-one', '', '', '2016-06-30 09:34:20', '2016-06-30 09:34:20', '', 0, 'http://localhost/activehands/?post_type=cptbc&#038;p=69', 0, 'cptbc', '', 0),
(39, 1, '2015-09-02 18:01:39', '2015-09-02 18:01:39', ' ', '', '', 'publish', 'closed', 'closed', '', '39', '', '', '2015-09-02 18:01:46', '2015-09-02 18:01:46', '', 0, 'http://localhost/activehands/?p=39', 1, 'nav_menu_item', '', 0),
(40, 1, '2015-09-02 18:01:39', '2015-09-02 18:01:39', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2015-09-02 18:01:46', '2015-09-02 18:01:46', '', 0, 'http://localhost/activehands/?p=40', 2, 'nav_menu_item', '', 0),
(41, 1, '2015-09-02 18:01:39', '2015-09-02 18:01:39', ' ', '', '', 'publish', 'closed', 'closed', '', '41', '', '', '2015-09-02 18:01:46', '2015-09-02 18:01:46', '', 0, 'http://localhost/activehands/?p=41', 3, 'nav_menu_item', '', 0),
(44, 1, '2015-09-03 17:03:24', '2015-09-03 17:03:24', 'Mission Statement Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Mission Statement', '', 'inherit', 'closed', 'closed', '', '43-revision-v1', '', '', '2015-09-03 17:03:24', '2015-09-03 17:03:24', '', 43, 'http://localhost/activehands/2015/09/43-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-09-03 17:03:48', '2015-09-03 17:03:48', 'Our Future Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Our Future', '', 'publish', 'closed', 'closed', '', 'our-future', '', '', '2015-09-03 17:03:48', '2015-09-03 17:03:48', '', 20, 'http://localhost/activehands/?page_id=45', 0, 'page', '', 0),
(46, 1, '2015-09-03 17:03:48', '2015-09-03 17:03:48', 'Our Future Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Our Future', '', 'inherit', 'closed', 'closed', '', '45-revision-v1', '', '', '2015-09-03 17:03:48', '2015-09-03 17:03:48', '', 45, 'http://localhost/activehands/2015/09/45-revision-v1/', 0, 'revision', '', 0),
(47, 1, '2015-09-03 17:04:16', '2015-09-03 17:04:16', 'Our History Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Our History', '', 'publish', 'closed', 'closed', '', 'our-history', '', '', '2015-09-03 17:16:21', '2015-09-03 17:16:21', '', 20, 'http://localhost/activehands/?page_id=47', 0, 'page', '', 0),
(48, 1, '2015-09-03 17:04:16', '2015-09-03 17:04:16', 'Our History Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod\r\ntempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam,\r\nquis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo\r\nconsequat. Duis aute irure dolor in reprehenderit in voluptate velit esse\r\ncillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non\r\nproident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Our History', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2015-09-03 17:04:16', '2015-09-03 17:04:16', '', 47, 'http://localhost/activehands/2015/09/47-revision-v1/', 0, 'revision', '', 0),
(49, 1, '2015-09-05 06:35:04', '2015-09-05 06:35:04', 'FAQ Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna liqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute  rure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'FAQ', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-09-05 06:35:04', '2015-09-05 06:35:04', '', 22, 'http://localhost/activehands/2015/09/22-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-09-05 06:36:28', '2015-09-05 06:36:28', 'FAQ\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'FAQ', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-09-05 06:36:28', '2015-09-05 06:36:28', '', 22, 'http://localhost/activehands/2015/09/22-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-09-05 06:37:00', '2015-09-05 06:37:00', 'FAQ Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\n\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'FAQ', '', 'inherit', 'closed', 'closed', '', '22-revision-v1', '', '', '2015-09-05 06:37:00', '2015-09-05 06:37:00', '', 22, 'http://localhost/activehands/2015/09/22-revision-v1/', 0, 'revision', '', 0),
(52, 1, '2015-09-05 06:43:47', '2015-09-05 06:43:47', 'Hello This is the home page, welcome to the homepage', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2015-09-05 06:43:47', '2015-09-05 06:43:47', '', 0, 'http://localhost/activehands/?page_id=52', 0, 'page', '', 0),
(53, 1, '2015-09-05 06:43:47', '2015-09-05 06:43:47', 'Hello This is the home page, welcome to the homepage', 'Home', '', 'inherit', 'closed', 'closed', '', '52-revision-v1', '', '', '2015-09-05 06:43:47', '2015-09-05 06:43:47', '', 52, 'http://localhost/activehands/2015/09/52-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-09-05 06:44:10', '2015-09-05 06:44:10', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2016-07-01 15:41:17', '2016-07-01 15:41:17', '', 0, 'http://localhost/activehands/?page_id=54', 0, 'page', '', 0),
(55, 1, '2015-09-05 06:44:10', '2015-09-05 06:44:10', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '54-revision-v1', '', '', '2015-09-05 06:44:10', '2015-09-05 06:44:10', '', 54, 'http://localhost/activehands/2015/09/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-09-05 06:47:36', '2015-09-05 06:47:36', ' ', '', '', 'publish', 'closed', 'closed', '', '56', '', '', '2016-06-30 16:27:21', '2016-06-30 16:27:21', '', 0, 'http://localhost/activehands/?p=56', 4, 'nav_menu_item', '', 0),
(57, 1, '2015-09-05 12:58:31', '2015-09-05 12:58:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post one', '', 'publish', 'open', 'open', '', 'the-post-one', '', '', '2016-07-01 15:42:27', '2016-07-01 15:42:27', '', 0, 'http://localhost/activehands/?p=57', 0, 'post', '', 0),
(58, 1, '2015-09-05 12:58:31', '2015-09-05 12:58:31', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post one', '', 'inherit', 'closed', 'closed', '', '57-revision-v1', '', '', '2015-09-05 12:58:31', '2015-09-05 12:58:31', '', 57, 'http://localhost/activehands/2015/09/57-revision-v1/', 0, 'revision', '', 0),
(59, 1, '2015-09-05 12:58:46', '2015-09-05 12:58:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Two', '', 'publish', 'open', 'open', '', 'the-post-two', '', '', '2016-06-30 15:36:13', '2016-06-30 15:36:13', '', 0, 'http://localhost/activehands/?p=59', 0, 'post', '', 0),
(60, 1, '2015-09-05 12:58:46', '2015-09-05 12:58:46', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Two', '', 'inherit', 'closed', 'closed', '', '59-revision-v1', '', '', '2015-09-05 12:58:46', '2015-09-05 12:58:46', '', 59, 'http://localhost/activehands/2015/09/59-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2015-09-05 12:58:58', '2015-09-05 12:58:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Three', '', 'publish', 'open', 'open', '', 'the-post-three', '', '', '2016-06-30 15:36:10', '2016-06-30 15:36:10', '', 0, 'http://localhost/activehands/?p=61', 0, 'post', '', 0),
(62, 1, '2015-09-05 12:58:58', '2015-09-05 12:58:58', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Three', '', 'inherit', 'closed', 'closed', '', '61-revision-v1', '', '', '2015-09-05 12:58:58', '2015-09-05 12:58:58', '', 61, 'http://localhost/activehands/2015/09/61-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-09-05 15:27:37', '2015-09-05 15:27:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Four', '', 'publish', 'open', 'open', '', 'the-post-four', '', '', '2016-06-30 15:36:04', '2016-06-30 15:36:04', '', 0, 'http://localhost/activehands/?p=64', 0, 'post', '', 0),
(65, 1, '2015-09-05 15:27:37', '2015-09-05 15:27:37', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Four', '', 'inherit', 'closed', 'closed', '', '64-revision-v1', '', '', '2015-09-05 15:27:37', '2015-09-05 15:27:37', '', 64, 'http://localhost/activehands/2015/09/64-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(66, 1, '2015-09-05 15:27:49', '2015-09-05 15:27:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat', '', 'publish', 'open', 'open', '', 'the-post-five', '', '', '2016-06-30 15:38:04', '2016-06-30 15:38:04', '', 0, 'http://localhost/activehands/?p=66', 0, 'post', '', 0),
(67, 1, '2015-09-05 15:27:49', '2015-09-05 15:27:49', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.\r\nLorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum. Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit essecillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident,sunt in culpa qui officia deserunt mollit anim id est laborum.', 'The Post Five', '', 'inherit', 'closed', 'closed', '', '66-revision-v1', '', '', '2015-09-05 15:27:49', '2015-09-05 15:27:49', '', 66, 'http://localhost/activehands/2015/09/66-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2016-07-01 16:29:02', '2016-07-01 16:29:02', '<a href="http://localhost/activehands/wp-content/uploads/2016/06/03.jpg"><img src="http://localhost/activehands/wp-content/uploads/2016/06/03-300x117.jpg" alt="03" width="100%" height="100%" class="alignnone size-medium wp-image-71" /></a>\r\nPortfolio Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmodtempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2016-07-01 16:29:02', '2016-07-01 16:29:02', '', 28, 'http://localhost/activehands/28-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2016-07-01 17:13:52', '2016-07-01 17:13:52', '<?php echo photo_gallery(1); ?>\r\n<?php echo photo_gallery(2); ?>', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:13:52', '2016-07-01 17:13:52', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2016-07-01 17:37:59', '2016-07-01 17:37:59', '[WRG id=98]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-autosave-v1', '', '', '2016-07-01 17:37:59', '2016-07-01 17:37:59', '', 77, 'http://localhost/activehands/77-autosave-v1/', 0, 'revision', '', 0),
(103, 1, '2016-07-01 17:38:02', '2016-07-01 17:38:02', '[WRG id=101]\r\n[WRG id=98]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:38:02', '2016-07-01 17:38:02', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(95, 1, '2016-07-01 17:27:07', '2016-07-01 17:27:07', '<?php echo photo_gallery(4); ?>', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:27:07', '2016-07-01 17:27:07', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2016-07-01 17:20:54', '2016-07-01 17:20:54', '<?php echo photo_gallery(1); ?>\r\n<?php echo photo_gallery(2); ?>\r\n<?php echo photo_gallery(3); ?>\r\n', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:20:54', '2016-07-01 17:20:54', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2016-07-01 17:27:16', '2016-07-01 17:27:16', '<?php echo photo_gallery(4); ?>\r\n\r\nHello ', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:27:16', '2016-07-01 17:27:16', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(97, 1, '2016-07-01 17:27:37', '2016-07-01 17:27:37', '[Best_Wordpress_Gallery id="4" gal_title="My Gallery"]', 'Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:27:37', '2016-07-01 17:27:37', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2016-07-01 17:36:48', '2016-07-01 17:36:48', '', 'Gallery 1', '', 'publish', 'closed', 'closed', '', 'gallery-1', '', '', '2016-07-01 17:36:48', '2016-07-01 17:36:48', '', 0, 'http://localhost/activehands/?post_type=responsive-gallery&#038;p=98', 0, 'responsive-gallery', '', 0),
(99, 1, '2016-07-01 17:36:27', '2016-07-01 17:36:27', '', 'Chhulang hamro purkhako gaau', '', 'inherit', 'open', 'closed', '', 'chhulang-hamro-purkhako-gaau', '', '', '2016-07-01 17:36:27', '2016-07-01 17:36:27', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Chhulang-hamro-purkhako-gaau.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2016-07-01 17:36:41', '2016-07-01 17:36:41', '', 'Hyula rakshyak - mar muila', '', 'inherit', 'open', 'closed', '', 'hyula-rakshyak-mar-muila', '', '', '2016-07-01 17:36:41', '2016-07-01 17:36:41', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Hyula-rakshyak-mar-muila.png', 0, 'attachment', 'image/png', 0),
(101, 1, '2016-07-01 17:37:07', '2016-07-01 17:37:07', '', 'Gallery 2', '', 'publish', 'closed', 'closed', '', 'gallery-2', '', '', '2016-07-01 17:42:21', '2016-07-01 17:42:21', '', 0, 'http://localhost/activehands/?post_type=responsive-gallery&#038;p=101', 0, 'responsive-gallery', '', 0),
(102, 1, '2016-07-01 17:37:45', '2016-07-01 17:37:45', '', 'Fyukuri Banki Gang', '', 'inherit', 'open', 'closed', '', 'fyukuri-banki-gang', '', '', '2016-07-01 17:37:45', '2016-07-01 17:37:45', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Fyukuri-Banki-Gang.png', 0, 'attachment', 'image/png', 0),
(104, 1, '2016-07-01 17:40:58', '2016-07-01 17:40:58', '', 'chhimi mamba', '', 'inherit', 'open', 'closed', '', 'chhimi-mamba', '', '', '2016-07-01 17:40:58', '2016-07-01 17:40:58', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/chhimi-mamba.png', 0, 'attachment', 'image/png', 0),
(105, 1, '2016-07-01 17:41:15', '2016-07-01 17:41:15', '', 'Helumbhu Mathi', '', 'inherit', 'open', 'closed', '', 'helumbhu-mathi', '', '', '2016-07-01 17:41:15', '2016-07-01 17:41:15', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Helumbhu-Mathi.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2016-07-01 17:41:27', '2016-07-01 17:41:27', '', 'Hyula rakshyak - mar muila', '', 'inherit', 'open', 'closed', '', 'hyula-rakshyak-mar-muila-2', '', '', '2016-07-01 17:41:27', '2016-07-01 17:41:27', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Hyula-rakshyak-mar-muila1.png', 0, 'attachment', 'image/png', 0),
(107, 1, '2016-07-01 17:41:41', '2016-07-01 17:41:41', '', 'Dangsing Lhari Mhendomaya', '', 'inherit', 'open', 'closed', '', 'dangsing-lhari-mhendomaya', '', '', '2016-07-01 17:41:41', '2016-07-01 17:41:41', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Dangsing-Lhari-Mhendomaya.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2016-07-01 17:41:53', '2016-07-01 17:41:53', '', 'Mayala Mhendo - Tamang Flims', '', 'inherit', 'open', 'closed', '', 'mayala-mhendo-tamang-flims', '', '', '2016-07-01 17:41:53', '2016-07-01 17:41:53', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Mayala-Mhendo-Tamang-Flims.png', 0, 'attachment', 'image/png', 0),
(109, 1, '2016-07-01 17:42:13', '2016-07-01 17:42:13', '', 'Mayala Mhendo - Tamang Flims', '', 'inherit', 'open', 'closed', '', 'mayala-mhendo-tamang-flims-2', '', '', '2016-07-01 17:42:13', '2016-07-01 17:42:13', '', 0, 'http://localhost/activehands/wp-content/uploads/2016/07/Mayala-Mhendo-Tamang-Flims1.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2016-07-01 17:45:27', '2016-07-01 17:45:27', '[WRG id=101]\r\n[WRG id=98]', 'Photo Gallery', '', 'inherit', 'closed', 'closed', '', '77-revision-v1', '', '', '2016-07-01 17:45:27', '2016-07-01 17:45:27', '', 77, 'http://localhost/activehands/77-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Primary Menu Links', 'primary-menu-links', 0),
(3, 'Footer Menu Links', 'footer-menu-links', 0),
(4, 'Blog', 'blog', 0),
(5, 'News', 'news', 0),
(6, 'Events', 'events', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(81, 2, 0),
(66, 5, 0),
(64, 5, 0),
(61, 5, 0),
(59, 5, 0),
(85, 2, 0),
(59, 1, 0),
(57, 1, 0),
(56, 2, 0),
(33, 2, 0),
(34, 2, 0),
(35, 2, 0),
(39, 3, 0),
(40, 3, 0),
(41, 3, 0),
(61, 1, 0),
(64, 1, 0),
(66, 1, 0),
(57, 4, 0),
(1, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 6),
(2, 2, 'nav_menu', '', 0, 6),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'category', 'Blog ', 0, 2),
(5, 5, 'category', 'News', 0, 4),
(6, 6, 'category', 'Events', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'a'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', ''),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"a119f4ccd209fd791be0f57f6662aba418a481c8e3cff4008df3e4c25dda0662";a:4:{s:10:"expiration";i:1893649879;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1893477079;}s:64:"0ae6ecd89214ca460b76d36ae6d06ac79152fabf26b5b99d790a930285e5f86f";a:4:{s:10:"expiration";i:1467560287;s:2:"ip";s:3:"::1";s:2:"ua";s:110:"Mozilla/5.0 (Windows NT 10.0; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36";s:5:"login";i:1467387487;}}'),
(15, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&mfold=o&post_dfw=off&editor_expand=off'),
(16, 1, 'wp_user-settings-time', '1467390500'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '86'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";i:4;s:15:"title-attribute";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:"add-post_tag";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'closedpostboxes_cptbc', 'a:1:{i:0;s:13:"pageparentdiv";}'),
(22, 1, 'metaboxhidden_cptbc', 'a:1:{i:0;s:7:"slugdiv";}'),
(23, 1, 'meta-box-order_cptbc', 'a:4:{s:15:"acf_after_title";s:0:"";s:4:"side";s:73:"submitdiv,postimagediv,carousel_categorydiv,pageparentdiv,cptbc_image_url";s:6:"normal";s:19:"postexcerpt,slugdiv";s:8:"advanced";s:0:"";}'),
(24, 1, 'screen_layout_cptbc', '2'),
(25, 1, 'meta-box-order_post', 'a:3:{s:4:"side";s:65:"submitdiv,categorydiv,postimagediv,tagsdiv-post_tag,pageparentdiv";s:6:"normal";s:83:"postexcerpt,trackbacksdiv,postcustom,commentstatusdiv,commentsdiv,slugdiv,authordiv";s:8:"advanced";s:0:"";}'),
(26, 1, 'screen_layout_post', '2'),
(27, 1, 'closedpostboxes_post', 'a:0:{}'),
(28, 1, 'metaboxhidden_post', 'a:6:{i:0;s:13:"trackbacksdiv";i:1;s:10:"postcustom";i:2;s:16:"commentstatusdiv";i:3;s:11:"commentsdiv";i:4;s:7:"slugdiv";i:5;s:9:"authordiv";}'),
(29, 1, 'closedpostboxes_page', 'a:0:{}'),
(30, 1, 'metaboxhidden_page', 'a:2:{i:0;s:7:"slugdiv";i:1;s:9:"authordiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$Bs0086gpYeSDONkupupp.Nf5u8Jhk91', 'a', 'aa@aa.aa', '', '2015-09-02 17:17:47', '', 0, 'a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_option`
--
ALTER TABLE `wp_bwg_option`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_shortcode`
--
ALTER TABLE `wp_bwg_shortcode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `comment_id` (`comment_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`), ADD KEY `comment_post_ID` (`comment_post_ID`), ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`), ADD KEY `comment_date_gmt` (`comment_date_gmt`), ADD KEY `comment_parent` (`comment_parent`), ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`), ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`), ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`), ADD KEY `post_id` (`post_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`), ADD KEY `post_name` (`post_name`(191)), ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`), ADD KEY `post_parent` (`post_parent`), ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`), ADD KEY `slug` (`slug`(191)), ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`), ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`), ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`), ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`), ADD KEY `user_id` (`user_id`), ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`), ADD KEY `user_login_key` (`user_login`), ADD KEY `user_nicename` (`user_nicename`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_bwg_album`
--
ALTER TABLE `wp_bwg_album`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_bwg_album_gallery`
--
ALTER TABLE `wp_bwg_album_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `wp_bwg_gallery`
--
ALTER TABLE `wp_bwg_gallery`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `wp_bwg_image`
--
ALTER TABLE `wp_bwg_image`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `wp_bwg_image_comment`
--
ALTER TABLE `wp_bwg_image_comment`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_image_rate`
--
ALTER TABLE `wp_bwg_image_rate`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_image_tag`
--
ALTER TABLE `wp_bwg_image_tag`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_bwg_option`
--
ALTER TABLE `wp_bwg_option`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_bwg_theme`
--
ALTER TABLE `wp_bwg_theme`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=361;
--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=294;
--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
