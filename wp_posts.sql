-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 06:53 AM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-10-28 04:50:32', '2018-10-28 04:50:32', 'Welcome to WordPress. This is your first post. Edit or delete it, then start writing!', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-10-28 04:50:32', '2018-10-28 04:50:32', '', 0, 'http://localhost/wordpresstest/?p=1', 0, 'post', '', 1),
(2, 1, '2018-10-28 04:50:32', '2018-10-28 04:50:32', 'This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href=\"http://localhost/wordpresstest/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-10-28 04:50:32', '2018-10-28 04:50:32', '', 0, 'http://localhost/wordpresstest/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-10-28 04:50:32', '2018-10-28 04:50:32', '<h2>Who we are</h2><p>Our website address is: http://localhost/wordpresstest.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2018-10-28 04:50:32', '2018-10-28 04:50:32', '', 0, 'http://localhost/wordpresstest/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-10-28 04:50:48', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-28 04:50:48', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?p=4', 0, 'post', '', 0),
(6, 1, '2018-10-28 05:08:14', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:08:14', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=6', 0, 'films', '', 0),
(7, 1, '2018-10-28 05:08:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-28 05:08:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?p=7', 0, 'post', '', 0),
(8, 1, '2018-10-28 05:15:18', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-28 05:15:18', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?p=8', 0, 'post', '', 0),
(9, 1, '2018-10-28 05:15:33', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:15:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=9', 0, 'films', '', 0),
(10, 1, '2018-10-28 05:15:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:15:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=10', 0, 'films', '', 0),
(11, 1, '2018-10-28 05:15:52', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:15:52', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=11', 0, 'films', '', 0),
(12, 1, '2018-10-28 05:16:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:16:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=12', 0, 'films', '', 0),
(13, 1, '2018-10-28 05:17:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:17:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=13', 0, 'films', '', 0),
(14, 1, '2018-10-28 05:17:58', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:17:58', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=14', 0, 'films', '', 0),
(15, 1, '2018-10-28 05:18:30', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:18:30', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=15', 0, 'films', '', 0),
(16, 1, '2018-10-28 05:20:56', '2018-10-28 05:20:56', 'jkgkg', 'hjkk', '', 'trash', 'closed', 'closed', '', 'hjkk__trashed', '', '', '2018-10-28 05:45:34', '2018-10-28 05:45:34', '', 0, 'http://localhost/wordpresstest/?post_type=films&#038;p=16', 0, 'films', '', 0),
(17, 1, '2018-10-28 05:41:06', '2018-10-28 05:41:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:5:\"films\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'My Custom Fields', 'my-custom-fields', 'publish', 'closed', 'closed', '', 'group_5bd54b27638e3', '', '', '2018-10-28 05:45:13', '2018-10-28 05:45:13', '', 0, 'http://localhost/wordpresstest/?post_type=acf-field-group&#038;p=17', 0, 'acf-field-group', '', 0),
(18, 1, '2018-10-28 05:41:06', '2018-10-28 05:41:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Ticket Price\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Ticket Price', 'ticket_price', 'publish', 'closed', 'closed', '', 'field_5bd54b3eca935', '', '', '2018-10-28 05:41:06', '2018-10-28 05:41:06', '', 17, 'http://localhost/wordpresstest/?post_type=acf-field&p=18', 0, 'acf-field', '', 0),
(19, 1, '2018-10-28 05:41:06', '2018-10-28 05:41:06', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:12:\"Release Date\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Release Date', 'release_date', 'publish', 'closed', 'closed', '', 'field_5bd54ba3ca936', '', '', '2018-10-28 05:41:06', '2018-10-28 05:41:06', '', 17, 'http://localhost/wordpresstest/?post_type=acf-field&p=19', 1, 'acf-field', '', 0),
(20, 1, '2018-10-28 05:41:25', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-28 05:41:25', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?p=20', 0, 'post', '', 0),
(21, 1, '2018-10-28 05:41:40', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:41:40', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=21', 0, 'films', '', 0),
(22, 1, '2018-10-28 05:41:50', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-10-28 05:41:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?p=22', 0, 'post', '', 0),
(23, 1, '2018-10-28 05:45:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:45:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=23', 0, 'films', '', 0),
(24, 1, '2018-10-28 05:46:39', '2018-10-28 05:46:39', 'Film about divorce', 'A Seperation', '', 'publish', 'closed', 'closed', '', 'a-seperation', '', '', '2018-10-28 05:46:39', '2018-10-28 05:46:39', '', 0, 'http://localhost/wordpresstest/?post_type=films&#038;p=24', 0, 'films', '', 0),
(25, 1, '2018-10-28 05:46:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2018-10-28 05:46:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wordpresstest/?post_type=films&p=25', 0, 'films', '', 0),
(26, 1, '2018-10-28 05:48:36', '2018-10-28 05:48:36', 'An action movie with lots of car crashes', 'Fast & Furious', '', 'publish', 'closed', 'closed', '', 'fast-furious', '', '', '2018-10-28 05:48:36', '2018-10-28 05:48:36', '', 0, 'http://localhost/wordpresstest/?post_type=films&#038;p=26', 0, 'films', '', 0),
(27, 1, '2018-10-28 05:50:13', '2018-10-28 05:50:13', 'An enjoyable drama', 'Eyes Wide Shot', '', 'publish', 'closed', 'closed', '', 'eyes-wide-shot', '', '', '2018-10-28 05:50:13', '2018-10-28 05:50:13', '', 0, 'http://localhost/wordpresstest/?post_type=films&#038;p=27', 0, 'films', '', 0);

--
-- Indexes for dumped tables
--

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
