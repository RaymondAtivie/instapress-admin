-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 17, 2019 at 01:13 PM
-- Server version: 5.7.26-0ubuntu0.18.10.1
-- PHP Version: 7.2.19-0ubuntu0.18.10.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instapress`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_owners`
--

CREATE TABLE `brand_owners` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `brand_name` varchar(50) DEFAULT NULL,
  `mobile_number` varchar(50) DEFAULT NULL,
  `website_url` varchar(50) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brand_owners`
--

INSERT INTO `brand_owners` (`id`, `first_name`, `last_name`, `email`, `password`, `brand_name`, `mobile_number`, `website_url`, `status`, `last_login`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'admin@admin.com', '1234', 'me', NULL, NULL, 'pending', NULL, '2019-05-02 11:47:56', '2019-05-20 12:23:23'),
(6, NULL, NULL, 'akinsanyaadeoluwa1@gmail.com', NULL, 'mhbuhuj', NULL, NULL, 'pending', NULL, '2019-05-24 10:53:36', '2019-05-24 10:53:36'),
(8, NULL, NULL, 'lkndlknsd@kdnfd.djkfnd', NULL, 'dfndkfn', NULL, NULL, 'pending', NULL, '2019-06-10 12:23:58', '2019-06-10 12:23:58'),
(9, NULL, NULL, 's@dlf.fd', NULL, 'sklnvlksnd', NULL, NULL, 'pending', NULL, '2019-06-10 12:25:21', '2019-06-10 12:25:21'),
(10, NULL, NULL, 'slkdnskn@mdfjd.dfdf', NULL, 'dfndfionodf', NULL, NULL, 'pending', NULL, '2019-06-10 12:26:43', '2019-06-10 12:26:43'),
(11, NULL, NULL, 'kjbb@jhdbf.dfjb', NULL, 'dflkndfk', NULL, NULL, 'pending', NULL, '2019-06-10 12:28:27', '2019-06-10 12:28:27'),
(12, NULL, NULL, 'sdkn@lkfnd.df', NULL, 'sdlknlksnd', NULL, NULL, 'pending', NULL, '2019-06-10 12:30:14', '2019-06-10 12:30:14'),
(13, NULL, NULL, 'wfsd@f.sd', NULL, 'sd', NULL, NULL, 'pending', NULL, '2019-06-10 12:31:08', '2019-06-10 12:31:08'),
(14, NULL, NULL, 'jkfbkjdfb@kjfd.dfj', NULL, 'dflkn', NULL, NULL, 'pending', NULL, '2019-06-10 12:42:08', '2019-06-10 12:42:08'),
(15, NULL, NULL, 'crudeninja@gmail.com', 'welcome1', 'tejnoid', NULL, NULL, 'pending', NULL, '2019-06-10 12:50:41', '2019-06-14 13:06:12'),
(16, NULL, NULL, 'akinsanyaadeoluwa31@gmail.com', 'dssfs', 'mhbuhuj', NULL, NULL, 'active', '2019-06-11 13:59:05', '2019-06-11 13:25:36', '2019-06-13 14:37:35'),
(17, NULL, NULL, 'dfknlkdnf@dflknkdf.dfdf', NULL, 'dflklkdfn', NULL, NULL, 'pending', NULL, '2019-06-13 11:55:31', '2019-06-13 11:55:31');

-- --------------------------------------------------------

--
-- Table structure for table `briefs`
--

CREATE TABLE `briefs` (
  `id` int(11) NOT NULL,
  `owner_id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `body` text,
  `plan` int(11) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'ongoing',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `briefs`
--

INSERT INTO `briefs` (`id`, `owner_id`, `title`, `body`, `plan`, `type`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 'Bar', 'Hello, world!', 10, NULL, 'ongoing', '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(2, 16, 'akins', 'bini', 10, NULL, 'ongoing', '2019-06-17 13:05:13', '2019-06-17 13:05:13'),
(3, 16, 'akins', 'bini', 10, NULL, 'ongoing', '2019-06-17 13:09:25', '2019-06-17 13:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `brief_category`
--

CREATE TABLE `brief_category` (
  `id` int(11) NOT NULL,
  `brief_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brief_category`
--

INSERT INTO `brief_category` (`id`, `brief_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(2, 2, 2, '2019-06-17 13:05:13', '2019-06-17 13:05:13'),
(3, 3, 2, '2019-06-17 13:09:25', '2019-06-17 13:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `brief_image`
--

CREATE TABLE `brief_image` (
  `id` int(11) NOT NULL,
  `brief_id` int(11) NOT NULL,
  `image_url` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `brief_platform`
--

CREATE TABLE `brief_platform` (
  `id` int(11) NOT NULL,
  `brief_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brief_platform`
--

INSERT INTO `brief_platform` (`id`, `brief_id`, `platform_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(2, 1, 2, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(3, 1, 3, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(4, 1, 4, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(5, 2, 1, '2019-06-17 13:05:13', '2019-06-17 13:05:13'),
(6, 2, 2, '2019-06-17 13:05:13', '2019-06-17 13:05:13'),
(7, 2, 3, '2019-06-17 13:05:13', '2019-06-17 13:05:13'),
(8, 2, 4, '2019-06-17 13:05:13', '2019-06-17 13:05:13'),
(9, 3, 1, '2019-06-17 13:09:25', '2019-06-17 13:09:25'),
(10, 3, 2, '2019-06-17 13:09:25', '2019-06-17 13:09:25'),
(11, 3, 3, '2019-06-17 13:09:25', '2019-06-17 13:09:25'),
(12, 3, 4, '2019-06-17 13:09:25', '2019-06-17 13:09:25');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2, 'Finance', 'Finance', '2019-05-02 11:39:27', '2019-05-07 11:26:13'),
(3, 'Real estate and Architecture', 'Real estate and Architecture', '2019-05-07 10:39:23', '2019-05-07 10:39:23'),
(4, 'Fashion', 'Fashion', '2019-05-07 10:40:47', '2019-05-07 10:40:47'),
(5, 'Sports', 'Sports', '2019-05-07 10:56:53', '2019-05-07 10:56:53'),
(6, 'Music', 'Music', '2019-05-07 10:58:36', '2019-05-07 10:58:36'),
(7, 'Technology', 'Technology', '2019-05-07 11:07:32', '2019-05-07 11:07:32'),
(8, 'Entertainment, News and Events', 'Entertainment, News and Events', '2019-05-07 11:24:01', '2019-05-07 11:24:01'),
(9, 'Food (Agriculture)', 'Food (Agriculture)', '2019-05-07 11:25:07', '2019-05-07 11:25:07'),
(10, 'Art and Design', 'Art and Design', '2019-05-07 11:33:59', '2019-05-07 11:33:59'),
(11, 'Health Care', 'Health Care', '2019-05-07 11:35:48', '2019-05-07 11:35:48');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `brand_owner_id` int(11) NOT NULL,
  `media_partner_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `brand_owner_id`, `media_partner_id`, `created_at`, `updated_at`) VALUES
(1, 15, 20, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(2, 15, 2, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(3, 15, 4, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(4, 15, 19, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(5, 15, 22, '2019-06-17 12:44:52', '2019-06-17 12:44:52'),
(6, 16, 9, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(7, 16, 4, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(8, 16, 2, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(9, 16, 16, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(10, 16, 23, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(11, 16, 21, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(12, 16, 14, '2019-06-17 13:05:14', '2019-06-17 13:05:14'),
(13, 16, 6, '2019-06-17 13:05:15', '2019-06-17 13:05:15'),
(14, 16, 15, '2019-06-17 13:05:15', '2019-06-17 13:05:15'),
(15, 16, 19, '2019-06-17 13:05:15', '2019-06-17 13:05:15');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `code` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Afghanistan', 'AF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(2, 'Åland Islands', 'AX', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(3, 'Albania', 'AL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(4, 'Algeria', 'DZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(5, 'American Samoa', 'AS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(6, 'AndorrA', 'AD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(7, 'Angola', 'AO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(8, 'Anguilla', 'AI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(9, 'Antarctica', 'AQ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(10, 'Antigua and Barbuda', 'AG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(11, 'Argentina', 'AR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(12, 'Armenia', 'AM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(13, 'Aruba', 'AW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(14, 'Australia', 'AU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(15, 'Austria', 'AT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(16, 'Azerbaijan', 'AZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(17, 'Bahamas', 'BS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(18, 'Bahrain', 'BH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(19, 'Bangladesh', 'BD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(20, 'Barbados', 'BB', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(21, 'Belarus', 'BY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(22, 'Belgium', 'BE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(23, 'Belize', 'BZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(24, 'Benin', 'BJ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(25, 'Bermuda', 'BM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(26, 'Bhutan', 'BT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(27, 'Bolivia', 'BO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(28, 'Bosnia and Herzegovina', 'BA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(29, 'Botswana', 'BW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(30, 'Bouvet Island', 'BV', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(31, 'Brazil', 'BR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(32, 'British Indian Ocean Territory', 'IO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(33, 'Brunei Darussalam', 'BN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(34, 'Bulgaria', 'BG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(35, 'Burkina Faso', 'BF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(36, 'Burundi', 'BI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(37, 'Cambodia', 'KH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(38, 'Cameroon', 'CM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(39, 'Canada', 'CA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(40, 'Cape Verde', 'CV', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(41, 'Cayman Islands', 'KY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(42, 'Central African Republic', 'CF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(43, 'Chad', 'TD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(44, 'Chile', 'CL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(45, 'China', 'CN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(46, 'Christmas Island', 'CX', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(47, 'Cocos (Keeling) Islands', 'CC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(48, 'Colombia', 'CO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(49, 'Comoros', 'KM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(50, 'Congo', 'CG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(51, 'Congo, The Democratic Republic of the', 'CD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(52, 'Cook Islands', 'CK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(53, 'Costa Rica', 'CR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(54, 'Cote D\'Ivoire', 'CI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(55, 'Croatia', 'HR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(56, 'Cuba', 'CU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(57, 'Cyprus', 'CY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(58, 'Czech Republic', 'CZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(59, 'Denmark', 'DK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(60, 'Djibouti', 'DJ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(61, 'Dominica', 'DM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(62, 'Dominican Republic', 'DO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(63, 'Ecuador', 'EC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(64, 'Egypt', 'EG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(65, 'El Salvador', 'SV', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(66, 'Equatorial Guinea', 'GQ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(67, 'Eritrea', 'ER', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(68, 'Estonia', 'EE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(69, 'Ethiopia', 'ET', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(70, 'Falkland Islands (Malvinas)', 'FK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(71, 'Faroe Islands', 'FO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(72, 'Fiji', 'FJ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(73, 'Finland', 'FI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(74, 'France', 'FR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(75, 'French Guiana', 'GF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(76, 'French Polynesia', 'PF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(77, 'French Southern Territories', 'TF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(78, 'Gabon', 'GA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(79, 'Gambia', 'GM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(80, 'Georgia', 'GE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(81, 'Germany', 'DE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(82, 'Ghana', 'GH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(83, 'Gibraltar', 'GI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(84, 'Greece', 'GR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(85, 'Greenland', 'GL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(86, 'Grenada', 'GD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(87, 'Guadeloupe', 'GP', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(88, 'Guam', 'GU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(89, 'Guatemala', 'GT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(90, 'Guernsey', 'GG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(91, 'Guinea', 'GN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(92, 'Guinea-Bissau', 'GW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(93, 'Guyana', 'GY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(94, 'Haiti', 'HT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(95, 'Heard Island and Mcdonald Islands', 'HM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(96, 'Holy See (Vatican City State)', 'VA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(97, 'Honduras', 'HN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(98, 'Hong Kong', 'HK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(99, 'Hungary', 'HU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(100, 'Iceland', 'IS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(101, 'India', 'IN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(102, 'Indonesia', 'ID', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(103, 'Iran, Islamic Republic Of', 'IR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(104, 'Iraq', 'IQ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(105, 'Ireland', 'IE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(106, 'Isle of Man', 'IM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(107, 'Israel', 'IL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(108, 'Italy', 'IT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(109, 'Jamaica', 'JM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(110, 'Japan', 'JP', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(111, 'Jersey', 'JE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(112, 'Jordan', 'JO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(113, 'Kazakhstan', 'KZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(114, 'Kenya', 'KE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(115, 'Kiribati', 'KI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(116, 'Korea, Democratic People\'S Republic of', 'KP', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(117, 'Korea, Republic of', 'KR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(118, 'Kuwait', 'KW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(119, 'Kyrgyzstan', 'KG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(120, 'Lao People\'S Democratic Republic', 'LA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(121, 'Latvia', 'LV', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(122, 'Lebanon', 'LB', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(123, 'Lesotho', 'LS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(124, 'Liberia', 'LR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(125, 'Libyan Arab Jamahiriya', 'LY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(126, 'Liechtenstein', 'LI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(127, 'Lithuania', 'LT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(128, 'Luxembourg', 'LU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(129, 'Macao', 'MO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(130, 'Macedonia, The Former Yugoslav Republic of', 'MK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(131, 'Madagascar', 'MG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(132, 'Malawi', 'MW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(133, 'Malaysia', 'MY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(134, 'Maldives', 'MV', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(135, 'Mali', 'ML', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(136, 'Malta', 'MT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(137, 'Marshall Islands', 'MH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(138, 'Martinique', 'MQ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(139, 'Mauritania', 'MR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(140, 'Mauritius', 'MU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(141, 'Mayotte', 'YT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(142, 'Mexico', 'MX', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(143, 'Micronesia, Federated States of', 'FM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(144, 'Moldova, Republic of', 'MD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(145, 'Monaco', 'MC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(146, 'Mongolia', 'MN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(147, 'Montserrat', 'MS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(148, 'Morocco', 'MA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(149, 'Mozambique', 'MZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(150, 'Myanmar', 'MM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(151, 'Namibia', 'NA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(152, 'Nauru', 'NR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(153, 'Nepal', 'NP', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(154, 'Netherlands', 'NL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(155, 'Netherlands Antilles', 'AN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(156, 'New Caledonia', 'NC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(157, 'New Zealand', 'NZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(158, 'Nicaragua', 'NI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(159, 'Niger', 'NE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(160, 'Nigeria', 'NG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(161, 'Niue', 'NU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(162, 'Norfolk Island', 'NF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(163, 'Northern Mariana Islands', 'MP', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(164, 'Norway', 'NO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(165, 'Oman', 'OM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(166, 'Pakistan', 'PK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(167, 'Palau', 'PW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(168, 'Palestinian Territory, Occupied', 'PS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(169, 'Panama', 'PA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(170, 'Papua New Guinea', 'PG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(171, 'Paraguay', 'PY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(172, 'Peru', 'PE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(173, 'Philippines', 'PH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(174, 'Pitcairn', 'PN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(175, 'Poland', 'PL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(176, 'Portugal', 'PT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(177, 'Puerto Rico', 'PR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(178, 'Qatar', 'QA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(179, 'Reunion', 'RE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(180, 'Romania', 'RO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(181, 'Russian Federation', 'RU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(182, 'RWANDA', 'RW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(183, 'Saint Helena', 'SH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(184, 'Saint Kitts and Nevis', 'KN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(185, 'Saint Lucia', 'LC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(186, 'Saint Pierre and Miquelon', 'PM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(187, 'Saint Vincent and the Grenadines', 'VC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(188, 'Samoa', 'WS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(189, 'San Marino', 'SM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(190, 'Sao Tome and Principe', 'ST', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(191, 'Saudi Arabia', 'SA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(192, 'Senegal', 'SN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(193, 'Serbia and Montenegro', 'CS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(194, 'Seychelles', 'SC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(195, 'Sierra Leone', 'SL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(196, 'Singapore', 'SG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(197, 'Slovakia', 'SK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(198, 'Slovenia', 'SI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(199, 'Solomon Islands', 'SB', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(200, 'Somalia', 'SO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(201, 'South Africa', 'ZA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(202, 'South Georgia and the South Sandwich Islands', 'GS', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(203, 'Spain', 'ES', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(204, 'Sri Lanka', 'LK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(205, 'Sudan', 'SD', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(206, 'Suriname', 'SR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(207, 'Svalbard and Jan Mayen', 'SJ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(208, 'Swaziland', 'SZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(209, 'Sweden', 'SE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(210, 'Switzerland', 'CH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(211, 'Syrian Arab Republic', 'SY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(212, 'Taiwan, Province of China', 'TW', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(213, 'Tajikistan', 'TJ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(214, 'Tanzania, United Republic of', 'TZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(215, 'Thailand', 'TH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(216, 'Timor-Leste', 'TL', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(217, 'Togo', 'TG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(218, 'Tokelau', 'TK', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(219, 'Tonga', 'TO', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(220, 'Trinidad and Tobago', 'TT', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(221, 'Tunisia', 'TN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(222, 'Turkey', 'TR', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(223, 'Turkmenistan', 'TM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(224, 'Turks and Caicos Islands', 'TC', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(225, 'Tuvalu', 'TV', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(226, 'Uganda', 'UG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(227, 'Ukraine', 'UA', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(228, 'United Arab Emirates', 'AE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(229, 'United Kingdom', 'GB', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(230, 'United States', 'US', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(231, 'United States Minor Outlying Islands', 'UM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(232, 'Uruguay', 'UY', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(233, 'Uzbekistan', 'UZ', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(234, 'Vanuatu', 'VU', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(235, 'Venezuela', 'VE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(236, 'Viet Nam', 'VN', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(237, 'Virgin Islands, British', 'VG', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(238, 'Virgin Islands, U.S.', 'VI', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(239, 'Wallis and Futuna', 'WF', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(240, 'Western Sahara', 'EH', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(241, 'Yemen', 'YE', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(242, 'Zambia', 'ZM', '2019-05-24 16:47:23', '2019-05-24 16:47:23'),
(243, 'Zimbabwe', 'ZW', '2019-05-24 16:47:23', '2019-05-24 16:47:23');

-- --------------------------------------------------------

--
-- Table structure for table `keys`
--

CREATE TABLE `keys` (
  `id` int(11) NOT NULL,
  `key` varchar(40) NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `keys`
--

INSERT INTO `keys` (`id`, `key`, `level`, `ignore_limits`, `date_created`) VALUES
(1, 'gsco4wwwwwscc4s8k04sogokc4coo0goww8gsgg0', 1, 1, 1556796201);

-- --------------------------------------------------------

--
-- Table structure for table `keywords`
--

CREATE TABLE `keywords` (
  `id` int(11) NOT NULL,
  `value` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `keywords`
--

INSERT INTO `keywords` (`id`, `value`, `created_at`, `updated_at`) VALUES
(1, 'ritual', '2019-05-01 05:25:50', '2019-05-01 05:25:50'),
(2, 'babalawo', '2019-05-01 05:25:50', '2019-05-01 05:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `media_partners`
--

CREATE TABLE `media_partners` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `platform_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(19) DEFAULT NULL,
  `website_url` varchar(50) DEFAULT NULL,
  `json` text,
  `status` varchar(255) NOT NULL DEFAULT 'pending',
  `last_login` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_partners`
--

INSERT INTO `media_partners` (`id`, `first_name`, `last_name`, `platform_name`, `email`, `password`, `phone`, `website_url`, `json`, `status`, `last_login`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 'Ghana Stock Exchange', 'akinsanyaadeoluwa21@gmail.com', '1234', '(+233) 302-669-908', 'https://gse.com.gh/', '{\"debounce\":{\"email\":\"info@gse.com.gh\",\"code\":\"4\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Accept All, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5097\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-06-13 15:05:45'),
(2, NULL, NULL, 'Money.com.gh', 'emeka.mbaa@gmail.com', NULL, '233 24 477 2723', 'https://www.money.com.gh/blog/', '{\"debounce\":{\"email\":\"support@money.com.gh\",\"code\":\"4\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Accept All, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5096\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-05-23 15:34:19'),
(3, NULL, NULL, 'EStock Analytics', 'stephencharles02@gmail.com', NULL, '(+233)548557582', 'https://estockanalysis.com/', '{\"debounce\":{\"email\":\"peagama@gmail.com\",\"code\":\"5\",\"role\":\"false\",\"free_email\":\"true\",\"result\":\"Safe to Send\",\"reason\":\"Deliverable\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5095\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-05-24 09:17:57'),
(4, NULL, NULL, 'Ceditalk', 'stephen@reftek.co', NULL, NULL, 'https://www.ceditalk.com/about/', '{\"debounce\":{\"email\":\"jerome@ceditalk.com\",\"code\":\"7\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Unknown\",\"reason\":\"Unreachable\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5095\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-05-24 09:18:17'),
(5, NULL, NULL, 'Pulse Ghana', 'hellomamabot@gmail.com', NULL, '233 30 296 0494', 'https://www.pulse.com.gh', '{\"debounce\":{\"email\":\"social@pulse.com.gh\",\"code\":\"4\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Accept All, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5094\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-05-24 09:21:22'),
(6, NULL, NULL, 'Biz community', 'jbloodmatch@gmail.com', NULL, NULL, 'https://www.bizcommunity.com.gh/Blogs/83/357.html', '{\"debounce\":{\"email\":\"sales@bizcommunity.com\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5093\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-05-24 09:28:31'),
(7, NULL, NULL, 'LIQUID', 'buccelection@gmail.com', NULL, NULL, 'https://liquid.com.gh/', '{\"debounce\":{\"email\":\"support@liquid.com.gh\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5092\"}', 'pending', NULL, '2019-05-06 10:49:28', '2019-05-24 09:31:00'),
(8, NULL, NULL, 'Centerforfinancialinclusion', 'somefun770@gmail.com', NULL, '1 202.393.5113', 'https://www.centerforfinancialinclusion.org', NULL, 'pending', NULL, '2019-05-06 10:49:28', '2019-05-24 09:35:20'),
(9, NULL, NULL, 'CGAP - Consultative Group ', 'tomispot89@gmail.com', NULL, '1.202.458.0147 ', 'https://www.cgap.org', '{\"debounce\":{\"email\":\"erosen@worldbank.org\",\"code\":\"4\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Accept All\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5091\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:36:47'),
(10, NULL, NULL, 'Mikashini\'s Blog', 'meka.mba@yahoo.com', NULL, NULL, 'http://mikashini.com/blog/', '{\"debounce\":{\"email\":\"support@mikashini.com\",\"code\":\"7\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Unknown\",\"reason\":\"Unknown\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5091\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:38:17'),
(11, NULL, NULL, 'Economist', 'e@emergentlabs.com.ng', NULL, NULL, 'https://www.economist.com/topics/ghana', '{\"debounce\":{\"email\":\"letters@economist.com\",\"code\":\"5\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Safe to Send\",\"reason\":\"Deliverable\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5090\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:38:50'),
(12, NULL, NULL, 'Teledataict', 'info@emergentlabs.com.ng', NULL, '242439494', 'https://www.teledataict.com/', '{\"debounce\":{\"email\":\"info@teledataict.com\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5089\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:39:06'),
(13, NULL, NULL, 'Mfidie', 'uzo@emergentlabs.com.ng', NULL, NULL, 'https://mfidie.com/start-blog-ghana/', '{\"debounce\":{\"email\":\"shepherd@mfidie.com\",\"code\":\"4\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Accept All\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5088\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:39:17'),
(14, NULL, NULL, 'Geeksglobalworld', 'raymondativie@gmail.com', NULL, '577915391', 'https://www.geeksglobalworld.com/make-money-online', '{\"debounce\":{\"email\":\"info@geeksglobalworld.com\",\"code\":\"7\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Unknown\",\"reason\":\"Unknown\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5088\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:40:39'),
(15, NULL, NULL, 'Ecoligo', 'somefun770@gmail.com', NULL, '49 30 767373980', 'https://ecoligo.com/tag/ghana/', '{\"debounce\":{\"email\":\"hello@ecoligo.com\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5087\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:45:21'),
(16, NULL, NULL, 'Easy Track Ghana', 'tomispot89@gmail.com', NULL, '233 27 665 7036', 'https://www.easytrackghana.com/travel-information-', '{\"debounce\":{\"email\":\"info@easytrackghana.com\",\"code\":\"4\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Accept All, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5086\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:45:11'),
(17, NULL, NULL, 'Meqasa', 'jbloodmatch@gmail.com', NULL, '233 506 866 060', 'https://meqasa.com/blog/6-investment-tools-ghana/', '{\"debounce\":{\"email\":\"info@meqasa.com\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5085\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:44:55'),
(18, NULL, NULL, 'Bench Mark Ghana', 'buccelection@gmail.com', NULL, '233 277 511315', 'https://benchmarkghana.com/', '{\"debounce\":{\"email\":\"elorm@benchmarkghana.com\",\"code\":\"7\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Unknown\",\"reason\":\"Unreachable\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5085\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:44:45'),
(19, NULL, NULL, 'Infomineo', 'hellomamabot@gmail.com', NULL, '27 84 400 89 64', 'https://infomineo.com/tag/ghana/', '{\"debounce\":{\"email\":\"info@infomineo.com\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5084\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:44:39'),
(20, NULL, NULL, 'Ghana Talks Business', 'akinsanyaadeoluwa21@gmail.com', '1234', '201196080', 'https://ghanatalksbusiness.com/smart-investment-ti', '{\"debounce\":{\"email\":\"news@ghanatalksbusiness.com\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5083\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-06-13 15:06:01'),
(21, NULL, NULL, 'Afb Blog', 'somefun770@gmail.com', NULL, '233 30 220 8342', 'http://afb.com.gh/about/blog/', '{\"debounce\":{\"email\":\"info@afb.com.gh\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5082\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:44:15'),
(22, NULL, NULL, 'Nelson Oppong (Ph.D)', 'tomispot89@gmail.com', NULL, '17189910134', 'http://www.oppongnelson.com/ghanas-banking-chaos-a', '{\"debounce\":{\"email\":\"nelson@oppongnelson.com\",\"code\":\"5\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Safe to Send\",\"reason\":\"Deliverable\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5081\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:43:52'),
(23, NULL, NULL, 'Opportunity', 'jbloodmatch@gmail.com', NULL, '416.444.2448 ', 'https://opportunityinternational.ca/news/blog/2018', '{\"debounce\":{\"email\":\"info@opportunityinternational.ca\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5080\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:43:10'),
(24, NULL, NULL, 'IES Abroad', 'buccelection@gmail.com', NULL, '800.995.2300', 'https://www.iesabroad.org/blogs/nia-hill/my-trip-g', '{\"debounce\":{\"email\":\"info@iesabroad.org\",\"code\":\"5\",\"role\":\"true\",\"free_email\":\"false\",\"result\":\"Risky\",\"reason\":\"Deliverable, Role\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5079\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:42:58'),
(25, NULL, NULL, 'Grameen Foundation', 'hellomamabot@gmail.com', NULL, '1 202-628-3560', 'https://grameenfoundation.org/where-we-work/sub-sa', '{\"debounce\":{\"email\":\"development@grameenfoundation.org\",\"code\":\"5\",\"role\":\"false\",\"free_email\":\"false\",\"result\":\"Safe to Send\",\"reason\":\"Deliverable\",\"send_transactional\":\"1\"},\"success\":\"1\",\"balance\":\"5078\"}', 'pending', NULL, '2019-05-06 10:49:29', '2019-05-24 09:42:44');

-- --------------------------------------------------------

--
-- Table structure for table `media_partner_category`
--

CREATE TABLE `media_partner_category` (
  `id` int(11) NOT NULL,
  `media_partner_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_partner_category`
--

INSERT INTO `media_partner_category` (`id`, `media_partner_id`, `category_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(2, 2, 3, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(3, 2, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(4, 3, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(5, 3, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(6, 4, 3, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(7, 4, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(8, 5, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(9, 5, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(10, 5, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(11, 5, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(12, 6, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(13, 6, 8, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(14, 7, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(15, 7, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(16, 8, 8, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(17, 8, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(18, 9, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(19, 9, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(20, 9, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(21, 9, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(22, 10, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(23, 10, 11, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(24, 11, 9, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(25, 11, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(26, 12, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(27, 12, 11, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(28, 13, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(29, 13, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(30, 13, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(31, 13, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(32, 14, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(33, 14, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(34, 14, 11, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(35, 15, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(36, 15, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(37, 15, 11, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(38, 16, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(39, 16, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(40, 17, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(41, 17, 8, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(42, 18, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(43, 18, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(44, 18, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(45, 18, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(46, 19, 2, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(47, 19, 3, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(48, 19, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(49, 19, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(50, 20, 2, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(51, 20, 3, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(52, 21, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(53, 21, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(54, 21, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(55, 21, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(56, 22, 2, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(57, 22, 3, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(58, 23, 2, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(59, 23, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(60, 23, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(61, 24, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(62, 24, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(63, 24, 10, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(64, 25, 4, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(65, 25, 5, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(66, 25, 6, '2019-06-17 12:11:53', '2019-06-17 12:11:53'),
(67, 25, 7, '2019-06-17 12:11:53', '2019-06-17 12:11:53');

-- --------------------------------------------------------

--
-- Table structure for table `media_partner_platform`
--

CREATE TABLE `media_partner_platform` (
  `id` int(11) NOT NULL,
  `media_partner_id` int(11) NOT NULL,
  `platform_id` int(11) NOT NULL,
  `platform_handle` varchar(255) DEFAULT NULL,
  `platform_reach` varchar(255) DEFAULT '100000',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `media_partner_platform`
--

INSERT INTO `media_partner_platform` (`id`, `media_partner_id`, `platform_id`, `platform_handle`, `platform_reach`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, '1340000', '2019-05-19 12:49:23', '2019-05-19 12:50:05'),
(2, 1, 2, NULL, '45789987', '2019-05-19 12:49:23', '2019-05-23 11:03:29'),
(3, 2, 1, NULL, '10000350', '2019-05-19 12:49:23', '2019-05-19 12:50:10'),
(4, 2, 2, NULL, '1000003442', '2019-05-19 12:49:23', '2019-05-19 12:50:17'),
(5, 2, 4, NULL, '10000022', '2019-05-19 12:49:23', '2019-05-19 12:50:24'),
(6, 3, 1, NULL, '100000434', '2019-05-19 12:49:23', '2019-05-19 12:50:14'),
(7, 3, 2, NULL, '1000003422', '2019-05-19 12:49:23', '2019-05-19 12:50:21'),
(8, 3, 3, NULL, '56789765', '2019-05-19 12:49:23', '2019-05-23 11:03:13'),
(9, 4, 2, NULL, '5678900', '2019-05-19 12:49:23', '2019-05-23 11:02:23'),
(10, 4, 3, NULL, '42242424', '2019-05-19 12:49:23', '2019-05-19 12:50:27'),
(11, 5, 1, NULL, '56790976', '2019-05-19 12:49:23', '2019-05-23 11:02:31'),
(12, 5, 2, NULL, '6789986', '2019-05-19 12:49:23', '2019-05-23 11:02:38'),
(13, 5, 3, NULL, '5679097', '2019-05-19 12:49:23', '2019-05-23 11:02:16'),
(14, 6, 1, NULL, '1000004224', '2019-05-19 12:49:23', '2019-05-19 12:50:29'),
(15, 7, 2, NULL, '993839', '2019-05-19 12:49:23', '2019-05-23 11:01:38'),
(16, 8, 3, NULL, '93387373', '2019-05-19 12:49:23', '2019-05-23 11:01:45'),
(17, 9, 4, NULL, '4242442442', '2019-05-19 12:49:23', '2019-05-19 12:50:33'),
(18, 10, 1, NULL, '3455445', '2019-05-19 12:49:23', '2019-05-23 11:01:25'),
(19, 10, 2, NULL, '4567890008', '2019-05-19 12:49:23', '2019-05-23 11:02:47'),
(20, 10, 3, NULL, '78965568', '2019-05-19 12:49:23', '2019-05-23 11:02:52'),
(21, 11, 1, NULL, '19827733', '2019-05-19 12:49:23', '2019-05-23 11:01:54'),
(22, 11, 2, NULL, '88477473', '2019-05-19 12:49:23', '2019-05-23 11:02:00'),
(23, 12, 2, NULL, '5689097', '2019-05-19 12:49:23', '2019-05-23 11:02:08'),
(24, 12, 3, NULL, '456789966', '2019-05-19 12:49:23', '2019-05-23 11:03:03'),
(25, 13, 2, NULL, '10000024424', '2019-05-19 12:49:23', '2019-05-19 12:50:37'),
(26, 13, 3, NULL, '8388383', '2019-05-19 12:49:23', '2019-05-23 11:03:49'),
(27, 13, 4, NULL, '282828283', '2019-05-19 12:49:23', '2019-05-23 11:04:14'),
(28, 14, 1, NULL, '9974639', '2019-05-19 12:49:23', '2019-05-23 11:04:07'),
(29, 14, 2, NULL, '8484874', '2019-05-19 12:49:23', '2019-05-23 11:03:58'),
(30, 14, 3, NULL, '73838393', '2019-05-19 12:49:23', '2019-05-23 11:03:54'),
(31, 15, 3, NULL, '10000024', '2019-05-19 12:49:23', '2019-05-19 12:51:43'),
(32, 15, 4, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(33, 16, 2, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(34, 16, 4, NULL, '100000242', '2019-05-19 12:49:23', '2019-05-19 12:51:40'),
(35, 17, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(36, 17, 2, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(37, 17, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(38, 17, 4, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(39, 18, 2, NULL, '10000024', '2019-05-19 12:49:23', '2019-05-19 12:51:47'),
(40, 18, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(41, 19, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(42, 19, 2, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(43, 19, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(44, 20, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(45, 20, 2, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(46, 21, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(47, 21, 4, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(48, 22, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(49, 22, 4, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(50, 23, 2, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(51, 23, 3, NULL, '35343', '2019-05-19 12:49:23', '2019-05-23 11:01:03'),
(52, 23, 4, NULL, '135363', '2019-05-19 12:49:23', '2019-05-23 11:01:12'),
(53, 24, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(54, 24, 2, NULL, '1000002424', '2019-05-19 12:49:23', '2019-05-19 12:51:26'),
(55, 24, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(56, 24, 4, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(57, 25, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(58, 25, 2, NULL, '100000224', '2019-05-19 12:49:23', '2019-05-19 12:51:21'),
(59, 25, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(60, 26, 3, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(61, 26, 4, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(62, 27, 1, NULL, '100000', '2019-05-19 12:49:23', '2019-05-19 12:49:23'),
(63, 27, 2, NULL, '1000004242', '2019-05-19 12:49:23', '2019-05-19 12:51:29');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(255) NOT NULL,
  `message_thread_code` longtext NOT NULL,
  `message` longtext NOT NULL,
  `sender` longtext NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT '0' COMMENT '0 unread 1 read',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message_thread`
--

CREATE TABLE `message_thread` (
  `message_thread_id` int(11) NOT NULL,
  `message_thread_code` longtext COLLATE utf8_unicode_ci NOT NULL,
  `sender` longtext COLLATE utf8_unicode_ci NOT NULL,
  `receiver` longtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `data` text,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `users_num` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `charge_per_credit` int(11) NOT NULL,
  `outreach_type` varchar(255) DEFAULT 'organic',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `title`, `description`, `users_num`, `credit`, `charge_per_credit`, `outreach_type`, `created_at`, `updated_at`) VALUES
(8, 'starters', 'For 5 users', 5, 5, 40, 'organic', '2019-05-02 06:18:56', '2019-05-24 09:46:47'),
(10, 'professional', 'For 10 users', 10, 10, 30, 'organic', '2019-05-02 06:20:13', '2019-05-23 13:24:28'),
(11, 'enterprise', 'For 15 users', 15, 15, 25, 'organic', '2019-05-02 11:26:01', '2019-05-23 13:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Youtube', 'Youtube Outreach', '2019-05-10 16:13:51', '2019-05-16 11:56:24'),
(2, 'Twitter', 'Twitter Outreach', '2019-05-13 16:16:54', '2019-05-16 11:56:32'),
(3, 'Facebook', 'Facebook Outreach', '2019-05-10 16:13:51', '2019-05-16 11:56:47'),
(4, 'Instagram', 'Instagram Outreach', '2019-05-13 16:16:54', '2019-05-16 11:57:01');

-- --------------------------------------------------------

--
-- Table structure for table `sent_briefs`
--

CREATE TABLE `sent_briefs` (
  `id` int(11) NOT NULL,
  `brief_id` int(11) NOT NULL,
  `media_partner_id` int(11) NOT NULL,
  `email_message_id` varchar(250) NOT NULL,
  `delivery_status` varchar(255) DEFAULT 'pending',
  `read_status` varchar(255) DEFAULT 'unread',
  `clicked_link` varchar(255) DEFAULT 'no',
  `job_status` varchar(255) NOT NULL DEFAULT 'pending',
  `paid_status` int(11) NOT NULL DEFAULT '0',
  `budget` varchar(255) DEFAULT NULL,
  `job_link` varchar(255) DEFAULT NULL,
  `job_comment` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_briefs`
--

INSERT INTO `sent_briefs` (`id`, `brief_id`, `media_partner_id`, `email_message_id`, `delivery_status`, `read_status`, `clicked_link`, `job_status`, `paid_status`, `budget`, `job_link`, `job_comment`, `created_at`, `updated_at`) VALUES
(1, 1, 20, '20190617124452.1.08F008D5BD0CF0A3@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 12:44:52', '2019-06-17 12:44:59'),
(2, 1, 2, '20190617124452.1.38E0308A093F6BD5@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 12:44:52', '2019-06-17 12:48:54'),
(3, 1, 4, '20190617124452.1.0DB622D09DAA00F2@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 12:44:52', '2019-06-17 12:52:13'),
(4, 1, 19, '20190617124452.1.80368FB791CF6181@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 12:44:52', '2019-06-17 13:07:58'),
(5, 1, 22, '20190617124452.1.A4D5E8D6A1606CBA@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 12:44:52', '2019-06-17 12:44:58'),
(6, 2, 9, '20190617130513.1.90A6C9C9DC2FEB3B@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:08:37'),
(7, 2, 4, '20190617130514.1.BBE259CC27B9D50F@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:05:57'),
(8, 2, 2, '20190617130514.1.5A6BA71D6877168A@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:05:16'),
(9, 2, 16, '20190617130514.1.94E3D8E75164B263@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:05:18'),
(10, 2, 23, '20190617130514.1.160572218EDDCE8E@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:05:18'),
(11, 2, 21, '20190617130514.1.E0E024FA935A1CD3@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:05:18'),
(12, 2, 14, '20190617130514.1.016C3175A3296647@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:14', '2019-06-17 13:07:19'),
(13, 2, 6, '20190617130514.1.518892488D09BC73@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:15', '2019-06-17 13:07:51'),
(14, 2, 15, '20190617130515.1.4D514FF08CF09B30@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:15', '2019-06-17 13:05:16'),
(15, 2, 19, '20190617130515.1.39A1016049F591CE@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:05:15', '2019-06-17 13:07:59'),
(16, 3, 9, '20190617130925.1.D065CF5AA458DAC7@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:25', '2019-06-17 13:09:27'),
(17, 3, 4, '20190617130926.1.712F5051E764C2EC@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:26', '2019-06-17 13:10:22'),
(18, 3, 2, '20190617130926.1.839A83A6BD515184@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:26', '2019-06-17 13:09:28'),
(19, 3, 16, '20190617130926.1.BC80733E9365F0BE@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:27', '2019-06-17 13:09:34'),
(20, 3, 23, '20190617130927.1.FC843AE44ABCCF52@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:27', '2019-06-17 13:09:29'),
(21, 3, 21, '20190617130927.1.C3B9CB8010753F30@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:27', '2019-06-17 13:09:34'),
(22, 3, 14, '20190617130928.1.AB0BB17860D4C422@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:28', '2019-06-17 13:09:33'),
(23, 3, 6, '20190617130928.1.440814EC90D64E94@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:28', '2019-06-17 13:09:34'),
(24, 3, 15, '20190617130929.1.B42E20F6061A9FE9@myinstapress.com', 'delivered', 'unread', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:29', '2019-06-17 13:09:31'),
(25, 3, 19, '20190617130929.1.4AE60BAF09EE50CF@myinstapress.com', 'delivered', 'read', 'no', 'pending', 0, '30', NULL, NULL, '2019-06-17 13:09:29', '2019-06-17 13:09:40');

-- --------------------------------------------------------

--
-- Table structure for table `sent_brief_email_status`
--

CREATE TABLE `sent_brief_email_status` (
  `id` int(11) NOT NULL,
  `email_message_id` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL,
  `data` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sent_brief_email_status`
--

INSERT INTO `sent_brief_email_status` (`id`, `email_message_id`, `status`, `data`, `created_at`, `updated_at`) VALUES
(1, '20190617124452.1.80368FB791CF6181@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560775495\",\"token\":\"93bf972c61ab2c784bac596ded977e240524697b99af9f5a5c\",\"signature\":\"9fb68f244c210c8c178c0bf0fad80211ecda67174d34dbec8474bfb8b7aecdf2\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560775494.576451,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFBcxASlORnq0REetK_osh1yBmpoFuZA==\",\"key\":\"AgEFBcxASlORnq0REetK_osh1yBmpoFuZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"A4rCNNXARpKg1IvYPgUW9g\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"hellomamabot@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Infomineo <hellomamabot@gmail.com>\",\"message-id\":\"20190617124452.1.80368FB791CF6181@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"tejnoid will like to run a story on your Infomineo\"},\"attachments\":[],\"size\":16144},\"recipient\":\"hellomamabot@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.10121488571167,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 12:44:55', '2019-06-17 12:44:55'),
(2, '20190617124452.1.0DB622D09DAA00F2@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560775495\",\"token\":\"4e64c1ae0bf2ffe837500a749303a5c30384b34994bcf4ccf9\",\"signature\":\"ac619d5e54ff802942140da8511f7d0a250e93f006b2ac5c17a0a50caee98e11\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560775495.358027,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEF9CnGm8VLr8XIKqtL4KtIG7dmKMdUZA==\",\"key\":\"AgEF9CnGm8VLr8XIKqtL4KtIG7dmKMdUZA==\"},\"recipient-domain\":\"reftek.co\",\"id\":\"5MzWAyboSW6x9IqFN580pQ\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"stephen@reftek.co\"},\"message\":{\"headers\":{\"to\":\"Ceditalk <stephen@reftek.co>\",\"message-id\":\"20190617124452.1.0DB622D09DAA00F2@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"tejnoid will like to run a story on your Ceditalk\"},\"attachments\":[],\"size\":16100},\"recipient\":\"stephen@reftek.co\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"reftek-co.mail.protection.outlook.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":2.106534004211426,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 12:44:56', '2019-06-17 12:44:56'),
(3, '20190617124452.1.08F008D5BD0CF0A3@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560775496\",\"token\":\"1bc9a8706f85045608cf6854caa6157483d89fe0ec42e30edd\",\"signature\":\"4c5c10b84c1c121e0078960c15b1ae93339fa34c156db1a5745d0b0a9749386b\"},\"event-data\":{\"geolocation\":{\"country\":\"US\",\"region\":\"CA\",\"city\":\"Mountain View\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.91.56\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560775495.755342,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Chrome\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.135 Safari\\/537.36 Edge\\/12.246 Mozilla\\/5.0\"},\"message\":{\"headers\":{\"message-id\":\"20190617124452.1.08F008D5BD0CF0A3@myinstapress.com\"}},\"recipient\":\"akinsanyaadeoluwa21@gmail.com\",\"id\":\"gXNn_xzsQlm73wIuDb0VOw\"}}', '2019-06-17 12:44:57', '2019-06-17 12:44:57'),
(4, '20190617124452.1.A4D5E8D6A1606CBA@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560775495\",\"token\":\"1b5367f1235b0629971109389832896b0b7a6cb2fa6add7e5a\",\"signature\":\"ed7f66d9bc3518c709185feeaae31f5d92e31290bd491e2ba49540e6f5ddcaef\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560775494.836653,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEF4E0AimW1TYmwB1NF26qbA39cS8AeZA==\",\"key\":\"AgEF4E0AimW1TYmwB1NF26qbA39cS8AeZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"jMk77J_SQEmLkJsJebmcCA\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"tomispot89@gmail.com\"},\"message\":{\"headers\":{\"to\":\"\\\"Nelson Oppong (Ph.D)\\\" <tomispot89@gmail.com>\",\"message-id\":\"20190617124452.1.A4D5E8D6A1606CBA@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"tejnoid will like to run a story on your Nelson Oppong (Ph.D)\"},\"attachments\":[],\"size\":16174},\"recipient\":\"tomispot89@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.5125980377197266,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 12:44:58', '2019-06-17 12:44:58'),
(5, '20190617124452.1.38E0308A093F6BD5@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560775494\",\"token\":\"8796013adda31aec051f3bd797b18a8bd1f099acb622e7f889\",\"signature\":\"d8b87e7d8f9b138f7faec3e4aef35312e0f4458af973fddd28bcfb0ddb794336\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560775494.838789,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEF3hXuDhjKKXI0GCpGt51GgE6H8S-DZA==\",\"key\":\"AgEF3hXuDhjKKXI0GCpGt51GgE6H8S-DZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"RvIYXhHkTAu2QyZMrqOvLw\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"emeka.mbaa@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Money.com.gh <emeka.mbaa@gmail.com>\",\"message-id\":\"20190617124452.1.38E0308A093F6BD5@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"tejnoid will like to run a story on your Money.com.gh\"},\"attachments\":[],\"size\":16141},\"recipient\":\"emeka.mbaa@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.3365249633789062,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 12:44:58', '2019-06-17 12:44:58'),
(6, '20190617124452.1.3DE769C5E46C7FC2@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560775495\",\"token\":\"9baefbd5d5712e45730300bfc423ed1dcaed118f3a5d3aada7\",\"signature\":\"89895ea0f44691aa29a7b0458c1196fdd22b5b4a3aa7c100e218694bcb8abb96\"},\"event-data\":{\"tags\":[\"media_partner_broadcast\"],\"timestamp\":1560775494.579515,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEF1WaW1aktZYzM2e5JqJK58I2OkXniZA==\",\"key\":\"AgEF1WaW1aktZYzM2e5JqJK58I2OkXniZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"ANSyzvyyR9CKCgc6EgktWw\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"crudeninja@gmail.com\"},\"message\":{\"headers\":{\"to\":\"tejnoid <crudeninja@gmail.com>\",\"message-id\":\"20190617124452.1.3DE769C5E46C7FC2@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"Your Instapress Campaign - Bar\"},\"attachments\":[],\"size\":13128},\"recipient\":\"crudeninja@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.2727651596069336,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 12:44:58', '2019-06-17 12:44:58'),
(7, '20190617124452.1.08F008D5BD0CF0A3@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560775495\",\"token\":\"0e920a74cdfa8d84c09b87690176a48de6403872bbdc6d6f14\",\"signature\":\"7953777998a687808705b93a18216925e2451b4815054d20e44b77d84f41d478\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560775494.692232,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFHflhxbMkV76gtzpDzbKp_xE-LuwbZA==\",\"key\":\"AgEFHflhxbMkV76gtzpDzbKp_xE-LuwbZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"-m9qARKSR7KnyZhyTc7Dyg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"akinsanyaadeoluwa21@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Ghana Talks Business <akinsanyaadeoluwa21@gmail.com>\",\"message-id\":\"20190617124452.1.08F008D5BD0CF0A3@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"tejnoid will like to run a story on your Ghana Talks Business\"},\"attachments\":[],\"size\":16266},\"recipient\":\"akinsanyaadeoluwa21@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.029891014099121,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 12:44:59', '2019-06-17 12:44:59'),
(8, '20190617124452.1.38E0308A093F6BD5@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560775733\",\"token\":\"83b10a10edda683ecd4ba95c99e43253d960d7accfbac9957a\",\"signature\":\"8dbd71a19e8b81bc1436a1a006a651fd8fea30b93f774b4ccb218bfb6e705a78\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.30\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560775733.136022,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190617124452.1.38E0308A093F6BD5@myinstapress.com\"}},\"recipient\":\"emeka.mbaa@gmail.com\",\"id\":\"BCyhyc1-R7SYiKUByzdJpw\"}}', '2019-06-17 12:48:54', '2019-06-17 12:48:54'),
(9, '20190614155856.1.FD88984EA97C0C95@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560775930\",\"token\":\"95f355a2a12ea903526943f1cbce21f8c3e5098ae6b6cb55d5\",\"signature\":\"dc7bc78e33bc57b8ccf53125c1b577987a4a199494e3437c1c52933b603f02e2\"},\"event-data\":{\"geolocation\":{\"country\":\"NG\",\"region\":\"LA\",\"city\":\"Lagos\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"41.184.171.70\",\"recipient-domain\":\"reftek.co\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560775929.688006,\"client-info\":{\"client-type\":\"mobile browser\",\"client-os\":\"Android\",\"device-type\":\"mobile\",\"client-name\":\"Android Webkit\",\"user-agent\":\"Mozilla\\/5.0 (Linux; Android 5.1; HTC Desire 626s Build\\/LMY47O; wv) AppleWebKit\\/537.36 (KHTML, like Gecko) Version\\/4.0 Chrome\\/74.0.3729.157 Mobile Safari\\/537.36\"},\"message\":{\"headers\":{\"message-id\":\"20190614155856.1.FD88984EA97C0C95@myinstapress.com\"}},\"recipient\":\"stephen@reftek.co\",\"id\":\"qUnNrCNFSNK-ze2TRUrPOw\"}}', '2019-06-17 12:52:11', '2019-06-17 12:52:11'),
(10, '20190617124452.1.0DB622D09DAA00F2@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560775930\",\"token\":\"2077dc3796ebc7432ff0267ae3f8a747e074eee2062741451f\",\"signature\":\"f7d289faf98b0263c1451e3b9a67c9d55ee18fd49dbc908438ce752d4636ee7c\"},\"event-data\":{\"geolocation\":{\"country\":\"NG\",\"region\":\"LA\",\"city\":\"Lagos\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"41.184.171.70\",\"recipient-domain\":\"reftek.co\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560775928.158079,\"client-info\":{\"client-type\":\"mobile browser\",\"client-os\":\"Android\",\"device-type\":\"mobile\",\"client-name\":\"Android Webkit\",\"user-agent\":\"Mozilla\\/5.0 (Linux; Android 5.1; HTC Desire 626s Build\\/LMY47O; wv) AppleWebKit\\/537.36 (KHTML, like Gecko) Version\\/4.0 Chrome\\/74.0.3729.157 Mobile Safari\\/537.36\"},\"message\":{\"headers\":{\"message-id\":\"20190617124452.1.0DB622D09DAA00F2@myinstapress.com\"}},\"recipient\":\"stephen@reftek.co\",\"id\":\"Ny6KYvRwT-aEAo0AlKOetg\"}}', '2019-06-17 12:52:13', '2019-06-17 12:52:13'),
(11, '20190617130514.1.5A6BA71D6877168A@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776715\",\"token\":\"1c0dc364ed8ee3afb1b4cac3a71345f9d427b45efb45109280\",\"signature\":\"cdf557e9731e9d78f8c1bd3712c6aa5c45d25b553a0fdad64922d5acbc1aa5b3\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776715.17356,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFkNFKbmaWH_-Gt5lDXZxuKX7fMgEfZA==\",\"key\":\"AgEFkNFKbmaWH_-Gt5lDXZxuKX7fMgEfZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"8us1oK-WR66dmdTCwmYEpg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"emeka.mbaa@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Money.com.gh <emeka.mbaa@gmail.com>\",\"message-id\":\"20190617130514.1.5A6BA71D6877168A@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Money.com.gh\"},\"attachments\":[],\"size\":16134},\"recipient\":\"emeka.mbaa@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.6206610202789307,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:16', '2019-06-17 13:05:16'),
(12, '20190617130515.1.4D514FF08CF09B30@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776716\",\"token\":\"dd360137ebc85eb967e77e402a3043d42c6dcd7c50fec3aab9\",\"signature\":\"a4ed71d6e9db9705ea6f122ad9a02462ffa0a1e212602def2d799d76c3c8608c\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776716.133515,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEF0Tj98leZ2BPp4LlHlosXzSQN4V3lZA==\",\"key\":\"AgEF0Tj98leZ2BPp4LlHlosXzSQN4V3lZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"o5-hukmsT-WPMTPxmyCflQ\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"209.61.151.226\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"somefun770@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Ecoligo <somefun770@gmail.com>\",\"message-id\":\"20190617130515.1.4D514FF08CF09B30@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Ecoligo\"},\"attachments\":[],\"size\":16124},\"recipient\":\"somefun770@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.3638460636138916,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:16', '2019-06-17 13:05:16'),
(13, '20190617130514.1.E0E024FA935A1CD3@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776715\",\"token\":\"5f51698160aae5837b0923ab5a76b86a09fc338a3520de3aa0\",\"signature\":\"5e7fb29085e3259ff718e07a68d96a672c7441d1083657a88c36f1f31c22e08d\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776715.44211,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFm4VdNGfm4Of87FhKH6yx8zqw9HrwZA==\",\"key\":\"AgEFm4VdNGfm4Of87FhKH6yx8zqw9HrwZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"L2aZXINhSnuo_3Zq3yPA9Q\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"somefun770@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Afb Blog <somefun770@gmail.com>\",\"message-id\":\"20190617130514.1.E0E024FA935A1CD3@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Afb Blog\"},\"attachments\":[],\"size\":16124},\"recipient\":\"somefun770@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.5970790386199951,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:17', '2019-06-17 13:05:17'),
(14, '20190617130515.1.0E6C1ECC52246E2F@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776717\",\"token\":\"16e9efe15b52a8a0f5a2d87a63f561645d9e365c172cdb15f7\",\"signature\":\"dce809cc365cb2044f12bfc4f3fc7d794c78a7a48ca1f45a43f3f156d10fd4d4\"},\"event-data\":{\"tags\":[\"media_partner_broadcast\"],\"timestamp\":1560776716.864784,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFaZDl4oz57rHQIdpBXZYYOhOnMyiVZA==\",\"key\":\"AgEFaZDl4oz57rHQIdpBXZYYOhOnMyiVZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"yjZlNjhITaaeRZxG8jr0sg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"209.61.151.226\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"akinsanyaadeoluwa31@gmail.com\"},\"message\":{\"headers\":{\"to\":\"mhbuhuj <akinsanyaadeoluwa31@gmail.com>\",\"message-id\":\"20190617130515.1.0E6C1ECC52246E2F@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"Your Instapress Campaign - akins\"},\"attachments\":[],\"size\":13216},\"recipient\":\"akinsanyaadeoluwa31@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.2850069999694824,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:17', '2019-06-17 13:05:17'),
(15, '20190617130514.1.160572218EDDCE8E@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776717\",\"token\":\"22d00b5adb5d0fc08450bc45a92e7864f7f642195c1f52dd03\",\"signature\":\"316a8005e27a12236f0c18f75da85da607ccc85387cb3491ded1d53e0a157f64\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776716.178021,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFbIh_16mgcl0Wz8xKNquDwLNF6IGOZA==\",\"key\":\"AgEFbIh_16mgcl0Wz8xKNquDwLNF6IGOZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"8H0y9lxZQMOMs2CKbhoD-Q\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"jbloodmatch@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Opportunity <jbloodmatch@gmail.com>\",\"message-id\":\"20190617130514.1.160572218EDDCE8E@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Opportunity\"},\"attachments\":[],\"size\":16138},\"recipient\":\"jbloodmatch@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.3820021152496338,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:17', '2019-06-17 13:05:17'),
(16, '20190617130514.1.94E3D8E75164B263@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776715\",\"token\":\"1a29f4b50cbce8e1c4f727c7143555053eae9d7453105599e3\",\"signature\":\"81b04432a942032d9bcd241f3ca06b5a056c52b41a25d148624753718f5a99eb\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776715.456872,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEF0GGGtOwVsb3e7jBBsaZ55pS8SxKAZA==\",\"key\":\"AgEF0GGGtOwVsb3e7jBBsaZ55pS8SxKAZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"Lv2vlbDQTomYbWlbRwn_xg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"tomispot89@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Easy Track Ghana <tomispot89@gmail.com>\",\"message-id\":\"20190617130514.1.94E3D8E75164B263@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Easy Track Ghana\"},\"attachments\":[],\"size\":16150},\"recipient\":\"tomispot89@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.696692943572998,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:18', '2019-06-17 13:05:18'),
(17, '20190617130514.1.E0E024FA935A1CD3@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776717\",\"token\":\"69e82a06d0dc569c966c2502c076186c4c5719a9e8537eba14\",\"signature\":\"c69886bb51793eb8e54b5a29b6ececd0a98831d6b59cb55d1bb02774d16a4518\"},\"event-data\":{\"geolocation\":{\"country\":\"US\",\"region\":\"CA\",\"city\":\"Mountain View\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.91.55\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776716.78669,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Chrome\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.135 Safari\\/537.36 Edge\\/12.246 Mozilla\\/5.0\"},\"message\":{\"headers\":{\"message-id\":\"20190617130514.1.E0E024FA935A1CD3@myinstapress.com\"}},\"recipient\":\"somefun770@gmail.com\",\"id\":\"m70USX8LS8Gi0JcVYGuC4A\"}}', '2019-06-17 13:05:18', '2019-06-17 13:05:18'),
(18, '20190617130514.1.160572218EDDCE8E@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776718\",\"token\":\"98db37ccf6609f0de57b88815fc23f20c964a36e918c8e7952\",\"signature\":\"0413a45924c622b8ce675abd92a42dd9204ba04ecbeb14f84771a3f33947e0e1\"},\"event-data\":{\"geolocation\":{\"country\":\"US\",\"region\":\"CA\",\"city\":\"Mountain View\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.91.53\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776717.551869,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Chrome\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.135 Safari\\/537.36 Edge\\/12.246 Mozilla\\/5.0\"},\"message\":{\"headers\":{\"message-id\":\"20190617130514.1.160572218EDDCE8E@myinstapress.com\"}},\"recipient\":\"jbloodmatch@gmail.com\",\"id\":\"0dr5hygXTJuHAu0WF1MreQ\"}}', '2019-06-17 13:05:18', '2019-06-17 13:05:18'),
(19, '20190617130515.1.39A1016049F591CE@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776716\",\"token\":\"00c8e8e1a539aaa0b0ced2693a3fa4a25254b91400b70b9267\",\"signature\":\"1f4c188ef688b7752dce697c1bb7bae4f848f1ee71be3b04b9c9e3f213b3aa06\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776716.482027,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFGwI-fMZkZm8aKQVOZYzZv_7AwTd0ZA==\",\"key\":\"AgEFGwI-fMZkZm8aKQVOZYzZv_7AwTd0ZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"A6udkUp5SlWyZlJLB9UABw\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"hellomamabot@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Infomineo <hellomamabot@gmail.com>\",\"message-id\":\"20190617130515.1.39A1016049F591CE@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Infomineo\"},\"attachments\":[],\"size\":16137},\"recipient\":\"hellomamabot@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.6618039608001709,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:19', '2019-06-17 13:05:19'),
(20, '20190617130514.1.BBE259CC27B9D50F@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776718\",\"token\":\"671380289eea4ece04cc39b4969d05fb050f341a969b6686a8\",\"signature\":\"2f8e8336bdbec5de3aab4f745a9b4e4f1b2e0ab80e92c1533f63f555c4f6e532\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776718.309412,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFhpBiezmnywbZv-9O8IakSpfiLEmkZA==\",\"key\":\"AgEFhpBiezmnywbZv-9O8IakSpfiLEmkZA==\"},\"recipient-domain\":\"reftek.co\",\"id\":\"WO6QjauGQBeNsNon5AJs1Q\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"stephen@reftek.co\"},\"message\":{\"headers\":{\"to\":\"Ceditalk <stephen@reftek.co>\",\"message-id\":\"20190617130514.1.BBE259CC27B9D50F@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Ceditalk\"},\"attachments\":[],\"size\":16103},\"recipient\":\"stephen@reftek.co\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"reftek-co.mail.protection.outlook.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":2.474381923675537,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:05:19', '2019-06-17 13:05:19'),
(21, '20190617130515.1.0E6C1ECC52246E2F@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776720\",\"token\":\"0e464a5f9f704081476a32f2c8a302706e5cb47778389fd7a0\",\"signature\":\"a200d25c74e899646d7489dced1c0479915f2b2ce57814a7edde9d71b254ff76\"},\"event-data\":{\"geolocation\":{\"country\":\"US\",\"region\":\"CA\",\"city\":\"Mountain View\"},\"tags\":[\"media_partner_broadcast\"],\"ip\":\"66.249.91.53\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776717.928705,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Chrome\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.135 Safari\\/537.36 Edge\\/12.246 Mozilla\\/5.0\"},\"message\":{\"headers\":{\"message-id\":\"20190617130515.1.0E6C1ECC52246E2F@myinstapress.com\"}},\"recipient\":\"akinsanyaadeoluwa31@gmail.com\",\"id\":\"fKLlz-enTvyxaH1T4anPYA\"}}', '2019-06-17 13:05:22', '2019-06-17 13:05:22'),
(22, '20190617130514.1.BBE259CC27B9D50F@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776755\",\"token\":\"4ca9ebfdf72640396a2de30a430ff0b115d9c93cc4bafe1cbd\",\"signature\":\"3fd4008471df7fa30923f2823e467364564c2fb64e17548f63ec03ca362976ed\"},\"event-data\":{\"geolocation\":{\"country\":\"NG\",\"region\":\"LA\",\"city\":\"Lagos\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"41.184.171.70\",\"recipient-domain\":\"reftek.co\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776755.32307,\"client-info\":{\"client-type\":\"mobile browser\",\"client-os\":\"Android\",\"device-type\":\"mobile\",\"client-name\":\"Android Webkit\",\"user-agent\":\"Mozilla\\/5.0 (Linux; Android 5.1; HTC Desire 626s Build\\/LMY47O; wv) AppleWebKit\\/537.36 (KHTML, like Gecko) Version\\/4.0 Chrome\\/74.0.3729.157 Mobile Safari\\/537.36\"},\"message\":{\"headers\":{\"message-id\":\"20190617130514.1.BBE259CC27B9D50F@myinstapress.com\"}},\"recipient\":\"stephen@reftek.co\",\"id\":\"6Ndg5wC-RDuo47Byi3h4AA\"}}', '2019-06-17 13:05:57', '2019-06-17 13:05:57'),
(23, '20190617124452.1.0DB622D09DAA00F2@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776759\",\"token\":\"8ba9e02765d95b274d9f4b581a5c2ae90558714214dcf2d966\",\"signature\":\"eebf998a97021fffd1f648ff6aa87d9e89fd364c992822c376a3453a4c80a2e3\"},\"event-data\":{\"geolocation\":{\"country\":\"NG\",\"region\":\"LA\",\"city\":\"Lagos\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"41.184.171.70\",\"recipient-domain\":\"reftek.co\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776758.402114,\"client-info\":{\"client-type\":\"mobile browser\",\"client-os\":\"Android\",\"device-type\":\"mobile\",\"client-name\":\"Android Webkit\",\"user-agent\":\"Mozilla\\/5.0 (Linux; Android 5.1; HTC Desire 626s Build\\/LMY47O; wv) AppleWebKit\\/537.36 (KHTML, like Gecko) Version\\/4.0 Chrome\\/74.0.3729.157 Mobile Safari\\/537.36\"},\"message\":{\"headers\":{\"message-id\":\"20190617124452.1.0DB622D09DAA00F2@myinstapress.com\"}},\"recipient\":\"stephen@reftek.co\",\"id\":\"NUUT8FtwQ1Swe3DCrIGjGg\"}}', '2019-06-17 13:06:00', '2019-06-17 13:06:00'),
(24, '20190617130514.1.016C3175A3296647@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776838\",\"token\":\"442b54050b5eb3d141a27b5d220e6840ee46a19b001a71a06c\",\"signature\":\"7de923745b6027be027c9ffe82c04ada140061eccfbe7ded0c9a8dff7efd4565\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776837.966634,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFy9yK-ZKBU-5lh-FPOLzBeUfqm0KQZA==\",\"key\":\"AgEFy9yK-ZKBU-5lh-FPOLzBeUfqm0KQZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"jBqQ6AxKTESkUWGQSVBoHg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"raymondativie@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Geeksglobalworld <raymondativie@gmail.com>\",\"message-id\":\"20190617130514.1.016C3175A3296647@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Geeksglobalworld\"},\"attachments\":[],\"size\":16175},\"recipient\":\"raymondativie@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":2,\"description\":\"\",\"session-seconds\":2.236445903778076,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:07:19', '2019-06-17 13:07:19'),
(25, '20190617130514.1.518892488D09BC73@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776866\",\"token\":\"a1eaad9fb0a436ddec0287011a851755e2ddb69d948af59c64\",\"signature\":\"45e791bd8c8a7715c8bac101ff19decaf4ea577a55961f94fae9b2102a2fe8f2\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776866.388925,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFYZ5EzJfxD-Wz9jxAcL-4JT2J-gy-ZA==\",\"key\":\"AgEFYZ5EzJfxD-Wz9jxAcL-4JT2J-gy-ZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"OPfELjOxQQ6nsdMkgb45cA\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"209.61.151.226\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"jbloodmatch@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Biz community <jbloodmatch@gmail.com>\",\"message-id\":\"20190617130514.1.518892488D09BC73@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Biz community\"},\"attachments\":[],\"size\":16151},\"recipient\":\"jbloodmatch@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":2,\"description\":\"\",\"session-seconds\":0.9361889362335205,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:07:49', '2019-06-17 13:07:49'),
(26, '20190617130514.1.518892488D09BC73@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776868\",\"token\":\"caa8012051a8565824e83b2562a96c4bfcd5d453c335b87889\",\"signature\":\"ea9c93f7687eef7d38224f322f2bf6579f770aa490405941afed32d60f590b02\"},\"event-data\":{\"geolocation\":{\"country\":\"US\",\"region\":\"CA\",\"city\":\"Mountain View\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.91.53\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776867.237695,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Chrome\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit\\/537.36 (KHTML, like Gecko) Chrome\\/42.0.2311.135 Safari\\/537.36 Edge\\/12.246 Mozilla\\/5.0\"},\"message\":{\"headers\":{\"message-id\":\"20190617130514.1.518892488D09BC73@myinstapress.com\"}},\"recipient\":\"jbloodmatch@gmail.com\",\"id\":\"PcfpT8z0TG-YbDDfQBHe6g\"}}', '2019-06-17 13:07:51', '2019-06-17 13:07:51'),
(27, '20190617124452.1.80368FB791CF6181@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776877\",\"token\":\"4ff83f3f3ddf263e2947c3d7c4f5195c9e0c36b8a1b6381ee7\",\"signature\":\"01cc39ff0ab4bc65ddf32b9678f68dc6dc1b50f90da80893755453734a21746d\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.11\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776877.132558,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190617124452.1.80368FB791CF6181@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"4fIWnaKSRaWhVK_YcwFZsg\"}}', '2019-06-17 13:07:58', '2019-06-17 13:07:58'),
(28, '20190614140326.1.E9337BE817CA4188@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776878\",\"token\":\"e1b0001175445f5c79bea515e06c4b72a06fc3796a9d15a1ef\",\"signature\":\"f97e47ec0ee17b63415c6c3ac9acf2174d4e187b8e924b24ccc362fc2da9641d\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.7\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776877.112373,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190614140326.1.E9337BE817CA4188@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"0AqyeVYFTAaGnV1VAnWNxw\"}}', '2019-06-17 13:07:58', '2019-06-17 13:07:58'),
(29, '20190617130515.1.39A1016049F591CE@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776877\",\"token\":\"b8ca08afabac7d1cc9a3a0699e5ed250bf78e3d6287e0c73cb\",\"signature\":\"9a9f064a890f26cd0c02ac009d4ff399655568e65ebf9ecb733f30d22d5f0f50\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.10\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776876.499593,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190617130515.1.39A1016049F591CE@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"aKiq1lIUQlGlLW2fOvB6Bw\"}}', '2019-06-17 13:07:59', '2019-06-17 13:07:59'),
(30, '20190617130513.1.90A6C9C9DC2FEB3B@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776914\",\"token\":\"5c582271eb4db6f7763643bc03326eff7c067dc8dd5cad0c7d\",\"signature\":\"d45b5cbde44cd492169b1bab053019d3930e9c4a2aa607587e425df17351b6cb\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776913.842015,\"storage\":{\"url\":\"https:\\/\\/se.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFT5vfjvAD0dNCfbJLmpYRCDSt5UnoZA==\",\"key\":\"AgEFT5vfjvAD0dNCfbJLmpYRCDSt5UnoZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"Yr069LOjTdOBVcP7g2s-AA\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"209.61.151.225\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"tomispot89@gmail.com\"},\"message\":{\"headers\":{\"to\":\"\\\"CGAP - Consultative Group \\\" <tomispot89@gmail.com>\",\"message-id\":\"20190617130513.1.90A6C9C9DC2FEB3B@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your CGAP - Consultative Group \"},\"attachments\":[],\"size\":16209},\"recipient\":\"tomispot89@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":2,\"description\":\"\",\"session-seconds\":0.6532480716705322,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:08:37', '2019-06-17 13:08:37'),
(31, '20190617130925.1.D065CF5AA458DAC7@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776966\",\"token\":\"ca96c3d603e1caf4c7d6db4634ab92dba6ab06483e20509d16\",\"signature\":\"bb06b0f8a2abf658a48ed8b905def5d11fb3d996a27c30a33f4c98930f839c37\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776966.564589,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFTceJA4NLDyOPkyFGw4rJy44D5cFMZA==\",\"key\":\"AgEFTceJA4NLDyOPkyFGw4rJy44D5cFMZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"ArMH2Mw-RwmkSn1AjPtH5A\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"tomispot89@gmail.com\"},\"message\":{\"headers\":{\"to\":\"\\\"CGAP - Consultative Group \\\" <tomispot89@gmail.com>\",\"message-id\":\"20190617130925.1.D065CF5AA458DAC7@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your CGAP - Consultative Group \"},\"attachments\":[],\"size\":16189},\"recipient\":\"tomispot89@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.6601707935333252,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:27', '2019-06-17 13:09:27'),
(32, '20190617130926.1.839A83A6BD515184@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776967\",\"token\":\"4af9d81d90328c58aa7373ff9c13d7cb87bc237a975799a773\",\"signature\":\"f9bd3bb4888625efe318a20cdd1bd825f5d4e1c42f7abfc39cce960136171974\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776967.829117,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFzaanhM970oKpv8lL6pR_HF2HQzTeZA==\",\"key\":\"AgEFzaanhM970oKpv8lL6pR_HF2HQzTeZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"bycbXudNThu-MxTJWdAERg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"emeka.mbaa@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Money.com.gh <emeka.mbaa@gmail.com>\",\"message-id\":\"20190617130926.1.839A83A6BD515184@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Money.com.gh\"},\"attachments\":[],\"size\":16133},\"recipient\":\"emeka.mbaa@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.0214669704437256,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:28', '2019-06-17 13:09:28'),
(33, '20190617130927.1.FC843AE44ABCCF52@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776968\",\"token\":\"5ed7e4d7541177f1d6dd98fb4c22f9f4c386dde97dcc734842\",\"signature\":\"d54bcdcfc2263588e399bbd72516493b84ee34c6016d5d66959e235cfc54d119\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776968.190386,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFdyXsxmfP6eO2dpVPkICcWB4AqhBIZA==\",\"key\":\"AgEFdyXsxmfP6eO2dpVPkICcWB4AqhBIZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"aYQkWepcRqOPM_ia5wKWNw\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"jbloodmatch@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Opportunity <jbloodmatch@gmail.com>\",\"message-id\":\"20190617130927.1.FC843AE44ABCCF52@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Opportunity\"},\"attachments\":[],\"size\":16145},\"recipient\":\"jbloodmatch@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.45709705352783203,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:29', '2019-06-17 13:09:29'),
(34, '20190617130929.1.B42E20F6061A9FE9@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776970\",\"token\":\"370d62ac33fd07c32c8c41dafd3b50258b34611b7e935bfa8a\",\"signature\":\"78af781e24ccd979c542e319953ec3fca5b73daa330316af09444dcab9d2ed5d\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776970.622399,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFyEXhm2ijsHu14IZGhYqIpPPWWTWmZA==\",\"key\":\"AgEFyEXhm2ijsHu14IZGhYqIpPPWWTWmZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"0RMsdoxlQwSpkLFVCIWXVg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"somefun770@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Ecoligo <somefun770@gmail.com>\",\"message-id\":\"20190617130929.1.B42E20F6061A9FE9@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Ecoligo\"},\"attachments\":[],\"size\":16112},\"recipient\":\"somefun770@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.809089183807373,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:31', '2019-06-17 13:09:31');
INSERT INTO `sent_brief_email_status` (`id`, `email_message_id`, `status`, `data`, `created_at`, `updated_at`) VALUES
(35, '20190617130929.1.4AE60BAF09EE50CF@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776971\",\"token\":\"b7cabeb43fafd923b5b0571051281c8b92f7331e301cad838d\",\"signature\":\"4fc2d0e1bdb850702976992d587e557eefc61fe6cd0db4ffca5f1cd688d64ee2\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776970.470787,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFfzDKy_3LSqGUSpZKDqZ6Vzz5MLZPZA==\",\"key\":\"AgEFfzDKy_3LSqGUSpZKDqZ6Vzz5MLZPZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"GZXYpqufT5WjLNLZwAz37A\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"hellomamabot@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Infomineo <hellomamabot@gmail.com>\",\"message-id\":\"20190617130929.1.4AE60BAF09EE50CF@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Infomineo\"},\"attachments\":[],\"size\":16145},\"recipient\":\"hellomamabot@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.5454800128936768,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:32', '2019-06-17 13:09:32'),
(36, '20190617130928.1.AB0BB17860D4C422@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776970\",\"token\":\"95e9e67436491909d47f150dfaa5ae1612e12a48abba3a3e48\",\"signature\":\"40973f379274fd753cb8f19fb72a4a3a930c24e605b4c3b208fa66f23b03c034\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776969.868979,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFjMRxo4PH0IVJd_hIfZjsspEK_AKSZA==\",\"key\":\"AgEFjMRxo4PH0IVJd_hIfZjsspEK_AKSZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"IixSVGgHT5upy7cOPLqUpg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"raymondativie@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Geeksglobalworld <raymondativie@gmail.com>\",\"message-id\":\"20190617130928.1.AB0BB17860D4C422@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Geeksglobalworld\"},\"attachments\":[],\"size\":16182},\"recipient\":\"raymondativie@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.6294958591461182,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:33', '2019-06-17 13:09:33'),
(37, '20190617130926.1.712F5051E764C2EC@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776970\",\"token\":\"ee29895d9e8a99b54f22fa3da325ab56e130393e42ad289379\",\"signature\":\"52862dce141fd6fd4cab920530c7f1b45a5207ac1fc9f3a5f913ffca7d31e796\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776970.23399,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFJjoVDfQz9gvKlzJBrJj8ALRZFbm6ZA==\",\"key\":\"AgEFJjoVDfQz9gvKlzJBrJj8ALRZFbm6ZA==\"},\"recipient-domain\":\"reftek.co\",\"id\":\"8qYucOlTTASSvf0KuR8upA\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"stephen@reftek.co\"},\"message\":{\"headers\":{\"to\":\"Ceditalk <stephen@reftek.co>\",\"message-id\":\"20190617130926.1.712F5051E764C2EC@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Ceditalk\"},\"attachments\":[],\"size\":16098},\"recipient\":\"stephen@reftek.co\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"reftek-co.mail.protection.outlook.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":2.936194896697998,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:33', '2019-06-17 13:09:33'),
(38, '20190617130926.1.BC80733E9365F0BE@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776973\",\"token\":\"ae876b8b762fa0528b2a9c62b9dd76dc8802b9bfdb39e9cb22\",\"signature\":\"049286aa733794d86b148c29ef814d36740b5ddb872968ee70af403f991855dc\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776972.740012,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFtURmg1sGEL_wg_VD0b9Jy2bJGmPFZA==\",\"key\":\"AgEFtURmg1sGEL_wg_VD0b9Jy2bJGmPFZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"YaZ5pz-HTbesSrB2aPBOrA\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"tomispot89@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Easy Track Ghana <tomispot89@gmail.com>\",\"message-id\":\"20190617130926.1.BC80733E9365F0BE@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Easy Track Ghana\"},\"attachments\":[],\"size\":16154},\"recipient\":\"tomispot89@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":2.042382001876831,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:34', '2019-06-17 13:09:34'),
(39, '20190617130927.1.C3B9CB8010753F30@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776970\",\"token\":\"1a8fff3c1f57ba3eb5c12dde6883ecb7c89c095c56a5652fea\",\"signature\":\"547087e98d60a7351bedab06c385b01308db743836b90f1d4447b73b954ce9f6\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776968.552805,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFiX9NNz6goYziHjxLd72XU8S7-CoYZA==\",\"key\":\"AgEFiX9NNz6goYziHjxLd72XU8S7-CoYZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"Yb5n0GcEQnuRZ-1nAQFV3Q\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"somefun770@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Afb Blog <somefun770@gmail.com>\",\"message-id\":\"20190617130927.1.C3B9CB8010753F30@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Afb Blog\"},\"attachments\":[],\"size\":16114},\"recipient\":\"somefun770@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.6620900630950928,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:34', '2019-06-17 13:09:34'),
(40, '20190617130928.1.440814EC90D64E94@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776971\",\"token\":\"86b8c788500e29cce5e6e5e789c2b059a533c0c8776a1e82db\",\"signature\":\"95e7d4c715eb54cf06ee8c76146d94b618d4c4bb0cb17d37b9f60399c9db123d\"},\"event-data\":{\"tags\":[\"mediaPartner\",\"broadcast\"],\"timestamp\":1560776970.506122,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFQNWjy-ogw04mHHhAYbTCqEkFUn3UZA==\",\"key\":\"AgEFQNWjy-ogw04mHHhAYbTCqEkFUn3UZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"wr7r-_zLTDyHITbBkUx9Zw\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"jbloodmatch@gmail.com\"},\"message\":{\"headers\":{\"to\":\"Biz community <jbloodmatch@gmail.com>\",\"message-id\":\"20190617130928.1.440814EC90D64E94@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"mhbuhuj will like to run a story on your Biz community\"},\"attachments\":[],\"size\":16145},\"recipient\":\"jbloodmatch@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":1.2489731311798096,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:34', '2019-06-17 13:09:34'),
(41, '20190617130929.1.1192E6F77A6DCAE5@myinstapress.com', 'delivered', '{\"signature\":{\"timestamp\":\"1560776973\",\"token\":\"c20e1bc2df65c4c5c468bbbd1f6bb23e1bd0a59a079bb916eb\",\"signature\":\"0e3eab9fd937b6adbcef63f57f7140c016a22342ac8e0f129972cec5c432b9ee\"},\"event-data\":{\"tags\":[\"media_partner_broadcast\"],\"timestamp\":1560776971.413375,\"storage\":{\"url\":\"https:\\/\\/sw.api.mailgun.net\\/v3\\/domains\\/myinstapress.com\\/messages\\/AgEFJn39zwRGH1Oa18JHe4zz4NfocS-cZA==\",\"key\":\"AgEFJn39zwRGH1Oa18JHe4zz4NfocS-cZA==\"},\"recipient-domain\":\"gmail.com\",\"id\":\"V0I3hJPEQIuquDqNUZWthg\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"flags\":{\"is-routed\":false,\"is-authenticated\":true,\"is-system-test\":false,\"is-test-mode\":false},\"log-level\":\"info\",\"envelope\":{\"sending-ip\":\"69.72.42.5\",\"sender\":\"hello@myinstapress.com\",\"transport\":\"smtp\",\"targets\":\"akinsanyaadeoluwa31@gmail.com\"},\"message\":{\"headers\":{\"to\":\"mhbuhuj <akinsanyaadeoluwa31@gmail.com>\",\"message-id\":\"20190617130929.1.1192E6F77A6DCAE5@myinstapress.com\",\"from\":\"myinstapress <hello@myinstapress.com>\",\"subject\":\"Your Instapress Campaign - akins\"},\"attachments\":[],\"size\":13208},\"recipient\":\"akinsanyaadeoluwa31@gmail.com\",\"event\":\"delivered\",\"delivery-status\":{\"tls\":true,\"mx-host\":\"gmail-smtp-in.l.google.com\",\"attempt-no\":1,\"description\":\"\",\"session-seconds\":0.6123881340026855,\"utf8\":true,\"code\":250,\"message\":\"OK\",\"certificate-verified\":true}}}', '2019-06-17 13:09:36', '2019-06-17 13:09:36'),
(42, '20190614140326.1.E9337BE817CA4188@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776979\",\"token\":\"2364e3e5a018cb6f3aa31c1f3bcf1c1aa18113d176f525b056\",\"signature\":\"e9266d2492e13052e7e233462f1be4209badbc240ebaa2d945ddefcf22d7cb8c\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.11\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776979.166406,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190614140326.1.E9337BE817CA4188@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"_SeYksGOTD-bORj1ec-9ow\"}}', '2019-06-17 13:09:40', '2019-06-17 13:09:40'),
(43, '20190617130929.1.4AE60BAF09EE50CF@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776979\",\"token\":\"7a7e0874f63f2177bccb634c34018029cef777706a1d29c725\",\"signature\":\"7600467e773220d996e60d27388736dfd1a06c6d04676cfbb40bd3b73068ef07\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.7\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776978.623203,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190617130929.1.4AE60BAF09EE50CF@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"r90dqB1dQWSPyK0-ndf7pA\"}}', '2019-06-17 13:09:40', '2019-06-17 13:09:40'),
(44, '20190617130515.1.39A1016049F591CE@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776981\",\"token\":\"16c8adeb8925fd686e80c98a6356aba3f184aa59b95e35339b\",\"signature\":\"d9fe4889d0bd7bcde3cce3a5ab46b5ce069a5144dd431d53ce2ffd8560991d33\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.11\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776980.531384,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190617130515.1.39A1016049F591CE@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"cLZCDLhkRES5Uhb2nxU5YA\"}}', '2019-06-17 13:09:42', '2019-06-17 13:09:42'),
(45, '20190617124452.1.80368FB791CF6181@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560776979\",\"token\":\"f6bc40aa2ee4902cc56495e75e58ddf36df3bd21d079e71627\",\"signature\":\"cbd42443a74144a8f706b98ce9c6ba0576faf37889c9c1e5692f0745f40bf6bb\"},\"event-data\":{\"geolocation\":{\"country\":\"Unknown\",\"region\":\"Unknown\",\"city\":\"Unknown\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"66.249.93.11\",\"recipient-domain\":\"gmail.com\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560776978.95948,\"client-info\":{\"client-type\":\"browser\",\"client-os\":\"Windows\",\"device-type\":\"desktop\",\"client-name\":\"Firefox\",\"user-agent\":\"Mozilla\\/5.0 (Windows NT 5.1; rv:11.0) Gecko Firefox\\/11.0 (via ggpht.com GoogleImageProxy)\"},\"message\":{\"headers\":{\"message-id\":\"20190617124452.1.80368FB791CF6181@myinstapress.com\"}},\"recipient\":\"hellomamabot@gmail.com\",\"id\":\"YhWZPucLTdObJGQBkfIJMA\"}}', '2019-06-17 13:09:43', '2019-06-17 13:09:43'),
(46, '20190617130926.1.712F5051E764C2EC@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560777021\",\"token\":\"6a1d3f5aa84481cda00faaee9df135bfca6717314e407bde3a\",\"signature\":\"7fd931709aaef2b656a60aa243ebfb6bed648a0802b7288f4d92710314a89140\"},\"event-data\":{\"geolocation\":{\"country\":\"NG\",\"region\":\"LA\",\"city\":\"Lagos\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"41.184.171.70\",\"recipient-domain\":\"reftek.co\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560777020.725732,\"client-info\":{\"client-type\":\"mobile browser\",\"client-os\":\"Android\",\"device-type\":\"mobile\",\"client-name\":\"Android Webkit\",\"user-agent\":\"Mozilla\\/5.0 (Linux; Android 5.1; HTC Desire 626s Build\\/LMY47O; wv) AppleWebKit\\/537.36 (KHTML, like Gecko) Version\\/4.0 Chrome\\/74.0.3729.157 Mobile Safari\\/537.36\"},\"message\":{\"headers\":{\"message-id\":\"20190617130926.1.712F5051E764C2EC@myinstapress.com\"}},\"recipient\":\"stephen@reftek.co\",\"id\":\"JkarN-4FT8mUWR0Q7SmmkA\"}}', '2019-06-17 13:10:22', '2019-06-17 13:10:22'),
(47, '20190617130514.1.BBE259CC27B9D50F@myinstapress.com', 'opened', '{\"signature\":{\"timestamp\":\"1560777023\",\"token\":\"08ff0d5c2894347064eaaa2114188381cab3e0ef89e0e902d7\",\"signature\":\"a24998ab6ae6e38b81b722462d4148ed48b5266f6a8e8eef892748b7f502ddf0\"},\"event-data\":{\"geolocation\":{\"country\":\"NG\",\"region\":\"LA\",\"city\":\"Lagos\"},\"tags\":[\"mediaPartner\",\"broadcast\"],\"ip\":\"41.184.171.70\",\"recipient-domain\":\"reftek.co\",\"event\":\"opened\",\"campaigns\":[],\"user-variables\":{\"custom-data\":\"{\\\"media_partner_id\\\":\\\"test\\\"}\"},\"log-level\":\"info\",\"timestamp\":1560777022.096688,\"client-info\":{\"client-type\":\"mobile browser\",\"client-os\":\"Android\",\"device-type\":\"mobile\",\"client-name\":\"Android Webkit\",\"user-agent\":\"Mozilla\\/5.0 (Linux; Android 5.1; HTC Desire 626s Build\\/LMY47O; wv) AppleWebKit\\/537.36 (KHTML, like Gecko) Version\\/4.0 Chrome\\/74.0.3729.157 Mobile Safari\\/537.36\"},\"message\":{\"headers\":{\"message-id\":\"20190617130514.1.BBE259CC27B9D50F@myinstapress.com\"}},\"recipient\":\"stephen@reftek.co\",\"id\":\"nnEwh4dJQWaYX97AdPa53w\"}}', '2019-06-17 13:10:25', '2019-06-17 13:10:25');

-- --------------------------------------------------------

--
-- Table structure for table `startups`
--

CREATE TABLE `startups` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `country` int(11) NOT NULL,
  `website_url` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `startups`
--

INSERT INTO `startups` (`id`, `name`, `email`, `description`, `country`, `website_url`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Flutterwave', 'flutterwave@gmail.com', '2nd Best Payment Solution', 160, 'flutterwave.com', 1, '2019-05-19 13:19:25', '2019-06-10 14:05:26'),
(7, 'Myinstapress', 'myinstapress@gmail.com', 'Best PR automation tool', 160, '', 1, '2019-05-19 13:20:32', '2019-05-25 05:59:08'),
(8, 'Paystack', 'paystack@gmail.com', 'Best payment tool', 160, '', 1, '2019-05-19 13:21:17', '2019-05-25 05:58:46'),
(9, 'FieldInsight', 'field@gmail.com', 'Track your logistics system', 226, '', 1, '2019-05-25 05:53:44', '2019-06-10 15:20:25'),
(10, 'Foo Bar', 'foobar@gmail.com', 'foo bar', 1, 'https://foobar.co', 1, '2019-06-10 14:06:27', '2019-06-10 15:19:37');

-- --------------------------------------------------------

--
-- Table structure for table `startups_category`
--

CREATE TABLE `startups_category` (
  `id` int(11) NOT NULL,
  `startup_id` int(11) NOT NULL,
  `startup_category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `startups_category`
--

INSERT INTO `startups_category` (`id`, `startup_id`, `startup_category_id`, `created_at`, `updated_at`) VALUES
(1, 6, 1, '2019-05-19 13:19:25', '2019-05-19 13:19:25'),
(2, 7, 1, '2019-05-19 13:20:32', '2019-05-19 13:20:32'),
(3, 8, 1, '2019-05-19 13:21:17', '2019-05-19 13:21:17'),
(4, 8, 3, '2019-05-19 13:21:17', '2019-05-19 13:21:17'),
(5, 9, 1, '2019-05-25 05:53:44', '2019-05-25 05:53:44'),
(6, 9, 3, '2019-05-25 05:53:44', '2019-05-25 05:53:44'),
(7, 10, 1, '2019-06-10 14:06:27', '2019-06-10 14:06:27'),
(8, 10, 3, '2019-06-10 14:06:27', '2019-06-10 14:06:27');

-- --------------------------------------------------------

--
-- Table structure for table `startups_platform`
--

CREATE TABLE `startups_platform` (
  `id` int(11) NOT NULL,
  `startup_id` int(11) DEFAULT NULL,
  `platform_name` varchar(50) DEFAULT NULL,
  `platform_handle` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `startups_platform`
--

INSERT INTO `startups_platform` (`id`, `startup_id`, `platform_name`, `platform_handle`, `created_at`, `updated_at`) VALUES
(1, 6, 'facebook', 'me', '2019-05-19 13:19:25', '2019-05-19 13:19:25'),
(2, 6, 'twitter', 'me', '2019-05-19 13:19:25', '2019-05-19 13:19:25'),
(3, 7, 'facebook', 'me', '2019-05-19 13:20:32', '2019-05-19 13:20:32'),
(4, 7, 'twitter', 'me', '2019-05-19 13:20:32', '2019-05-19 13:20:32'),
(5, 8, 'facebook', 'me', '2019-05-19 13:21:17', '2019-05-19 13:21:17'),
(6, 8, 'twitter', 'me', '2019-05-19 13:21:17', '2019-05-19 13:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `startup_category`
--

CREATE TABLE `startup_category` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `startup_category`
--

INSERT INTO `startup_category` (`id`, `title`, `created_at`, `updated_at`) VALUES
(1, 'Fintech', '2019-05-14 16:05:11', '2019-05-14 16:05:11'),
(3, 'Agriculture', '2019-05-15 11:15:12', '2019-05-15 11:15:12');

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `id` int(11) NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_swedish_ci NOT NULL,
  `user_id` int(10) NOT NULL,
  `user_type` varchar(255) DEFAULT NULL,
  `is_used` tinyint(1) DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`id`, `token`, `user_id`, `user_type`, `is_used`, `date_created`, `date_modified`) VALUES
(10, '16d47fd96de5a185c11edd9ffaa819', 7, NULL, 0, '2019-05-02 14:58:25', '0000-00-00 00:00:00'),
(11, '33aa7b572282b6494b107ae88fead6', 8, NULL, 0, '2019-05-02 14:59:37', '0000-00-00 00:00:00'),
(12, '64b2aa9b56c5323b5f3d41536e36db', 9, NULL, 0, '2019-05-03 08:24:29', '0000-00-00 00:00:00'),
(13, 'd6bc04b58fbcc1733e12c74bac0d0a', 10, NULL, 0, '2019-05-03 08:25:33', '0000-00-00 00:00:00'),
(14, '9712885ab90c48aae6ce785098a878', 11, NULL, 0, '2019-05-03 09:49:34', '0000-00-00 00:00:00'),
(15, '7e81944c0c376b3416d97ab8d5cbe1', 12, NULL, 0, '2019-05-03 09:52:11', '0000-00-00 00:00:00'),
(16, '9c35849bb627e44267f80bba452925', 13, NULL, 0, '2019-05-03 10:20:21', '0000-00-00 00:00:00'),
(17, '5e813d28f88736f2fbada75bff4c90', 14, NULL, 0, '2019-05-03 10:38:13', '0000-00-00 00:00:00'),
(18, '57755ac3e197c850bbd2d6a6555dc2', 15, NULL, 0, '2019-05-03 11:00:45', '0000-00-00 00:00:00'),
(19, 'b3d5510b3660ff7bd8717c38241df0', 16, NULL, 0, '2019-05-03 11:16:58', '0000-00-00 00:00:00'),
(20, '25077b3133e0c13d866246797f5092', 17, NULL, 0, '2019-05-03 11:17:34', '0000-00-00 00:00:00'),
(21, '50f7cac0f4a3b2933fcfe16f3e58bd', 691, NULL, 0, '2019-05-08 11:10:52', '0000-00-00 00:00:00'),
(22, '7c0de4d7c4c4b78d8c768bf2cbb2f3', 692, NULL, 0, '2019-05-08 11:12:18', '0000-00-00 00:00:00'),
(23, 'ff8c76f106911e7e42dcf9da7d1bab', 691, NULL, 0, '2019-05-15 15:34:41', '0000-00-00 00:00:00'),
(24, '7c122fe8e675c9f93f8051bf4a3afb', 692, NULL, 0, '2019-05-15 15:35:50', '0000-00-00 00:00:00'),
(25, 'df759374547d31ec9887266a281b79', 693, NULL, 0, '2019-05-19 12:52:38', '0000-00-00 00:00:00'),
(26, '99086bf1ce4fb6a54814b2df17ccf8', 694, NULL, 0, '2019-05-19 12:53:12', '0000-00-00 00:00:00'),
(27, '050bbe73a5377ce6bcd4eaf39f90e3', 695, NULL, 0, '2019-05-19 12:55:18', '0000-00-00 00:00:00'),
(28, '1e8b9edd23be4d43fc7fed9cc68c3b', 696, NULL, 0, '2019-05-23 15:34:34', '0000-00-00 00:00:00'),
(29, 'c7fa64fc8253c1301fb5e77e2c57fe', 697, NULL, 0, '2019-05-23 15:39:19', '0000-00-00 00:00:00'),
(30, 'd07d3d84b8da382c30b808255b8111', 698, NULL, 0, '2019-05-23 16:45:39', '0000-00-00 00:00:00'),
(31, '5c2aca55e633c560c3c137be0cd07e', 699, NULL, 0, '2019-05-23 16:47:03', '0000-00-00 00:00:00'),
(32, '0fd359e6aea33d6b7e9b8df6ad3391', 700, NULL, 0, '2019-05-24 03:48:43', '0000-00-00 00:00:00'),
(33, '2a9efc0cf2729ef1f5fb77da0db512', 701, NULL, 0, '2019-05-24 08:30:07', '0000-00-00 00:00:00'),
(34, 'bb6c6eb12a069f03b269b6d199a6ac', 702, NULL, 0, '2019-06-03 15:27:22', '0000-00-00 00:00:00'),
(35, 'faab18ec00d0eff35cb3d6de0ceed1', 703, NULL, 0, '2019-06-05 07:02:52', '0000-00-00 00:00:00'),
(36, '3be53cb0ef2eb40a52549651a54fc1', 704, NULL, 0, '2019-06-10 14:17:03', '0000-00-00 00:00:00'),
(37, '46e16cfd4d13ba2661f9d80a8c4184', 705, 'media_partner', 1, '2019-06-11 12:17:48', '2019-06-11 12:53:29'),
(38, 'dd3b5e1ee8a81d04afc0c726786548', 706, 'media_partner', 1, '2019-06-11 12:56:19', '2019-06-11 13:16:05'),
(39, 'aa6647e1468203c4209d5f8243f6bc', 16, 'brand_owner', 1, '2019-06-11 13:25:36', '2019-06-11 13:59:05'),
(40, '29b7668f158bbfdb306e7b8e7db25c', 17, 'brand_owner', 0, '2019-06-13 11:55:31', '2019-06-13 11:55:31'),
(41, '79afe0dab9b9e3e048b8ada03779ee', 707, 'media_partner', 0, '2019-06-13 12:05:40', '2019-06-13 12:05:40');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `reference_no` varchar(50) NOT NULL,
  `amount` int(11) NOT NULL,
  `transaction_type` varchar(255) DEFAULT NULL,
  `brief_id` varchar(255) DEFAULT NULL,
  `status` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `reference_no`, `amount`, `transaction_type`, `brief_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 15, 'T334651440874163', 150, 'brand_owner', '1', 'success', '2019-06-17 12:44:53', '2019-06-17 12:44:53'),
(2, 16, '727282992', 300, 'brand_owner', '2', 'success', '2019-06-17 13:05:15', '2019-06-17 13:05:15'),
(3, 16, '727282992', 300, 'brand_owner', '3', 'success', '2019-06-17 13:09:30', '2019-06-17 13:09:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_owners`
--
ALTER TABLE `brand_owners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `briefs`
--
ALTER TABLE `briefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brief_category`
--
ALTER TABLE `brief_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brief_image`
--
ALTER TABLE `brief_image`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brief_platform`
--
ALTER TABLE `brief_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keys`
--
ALTER TABLE `keys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keywords`
--
ALTER TABLE `keywords`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_partners`
--
ALTER TABLE `media_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_partner_category`
--
ALTER TABLE `media_partner_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_partner_platform`
--
ALTER TABLE `media_partner_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_thread`
--
ALTER TABLE `message_thread`
  ADD PRIMARY KEY (`message_thread_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sent_briefs`
--
ALTER TABLE `sent_briefs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sent_brief_email_status`
--
ALTER TABLE `sent_brief_email_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startups`
--
ALTER TABLE `startups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startups_category`
--
ALTER TABLE `startups_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startups_platform`
--
ALTER TABLE `startups_platform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `startup_category`
--
ALTER TABLE `startup_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand_owners`
--
ALTER TABLE `brand_owners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `briefs`
--
ALTER TABLE `briefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brief_category`
--
ALTER TABLE `brief_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `brief_image`
--
ALTER TABLE `brief_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `brief_platform`
--
ALTER TABLE `brief_platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `keys`
--
ALTER TABLE `keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `keywords`
--
ALTER TABLE `keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `media_partners`
--
ALTER TABLE `media_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `media_partner_category`
--
ALTER TABLE `media_partner_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `media_partner_platform`
--
ALTER TABLE `media_partner_platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message_thread`
--
ALTER TABLE `message_thread`
  MODIFY `message_thread_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `sent_briefs`
--
ALTER TABLE `sent_briefs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `sent_brief_email_status`
--
ALTER TABLE `sent_brief_email_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
--
-- AUTO_INCREMENT for table `startups`
--
ALTER TABLE `startups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `startups_category`
--
ALTER TABLE `startups_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `startups_platform`
--
ALTER TABLE `startups_platform`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `startup_category`
--
ALTER TABLE `startup_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
