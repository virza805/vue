-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 06:05 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_entries`
--

CREATE TABLE `book_entries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `book_id` int(11) DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_entries`
--

INSERT INTO `book_entries` (`id`, `user_id`, `book_id`, `date`, `return_date`, `time`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-12-5', '2022-2-17', '4:26', NULL, NULL, 1, NULL, NULL),
(2, 2, 26, '2022-9-9', '2022-8-3', '9:48', NULL, NULL, 1, NULL, NULL),
(3, 3, 95, '2022-10-8', '2022-10-22', '9:3', NULL, NULL, 1, NULL, NULL),
(4, 4, 60, '2022-7-11', '2022-8-28', '10:13', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `book_lists`
--

CREATE TABLE `book_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `section` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `published_data` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_lists`
--

INSERT INTO `book_lists` (`id`, `name`, `image`, `author`, `section`, `published_data`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Charlotte\'s Web', 'covers.openlibrary.org/b/id/8461797-M.jpg', NULL, 'A', '1952', NULL, NULL, 1, NULL, NULL),
(2, 'Harbrace Handbook', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2002', NULL, NULL, 1, NULL, NULL),
(3, 'Black Belt Web Programming Methods', 'covers.openlibrary.org/b/id/1633560-M.jpg', NULL, 'C', '1998', NULL, NULL, 1, NULL, NULL),
(4, 'The Philadelphia Negro A Social Study', 'covers.openlibrary.org/b/id/10996354-M.jpg', NULL, 'A', '2018', NULL, NULL, 1, NULL, NULL),
(5, 'The Philadelphia Negro a Social Study', 'covers.openlibrary.org/b/id/11167014-M.jpg', NULL, 'E', '2018', NULL, NULL, 1, NULL, NULL),
(6, 'Hacking with Kali Linux', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2020', NULL, NULL, 1, NULL, NULL),
(7, 'From the Twisted Fabric of My Eye', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2021', NULL, NULL, 1, NULL, NULL),
(8, 'A warning to all such who are making a profession of God, Christ, and the Scriptures', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '1659', NULL, NULL, 1, NULL, NULL),
(9, 'The malignants conventicle, or, A learned speech spoken by M. VVeb, a citizen, to the rest of his society', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '1643', NULL, NULL, 1, NULL, NULL),
(10, 'The malignants conventicle; or, A learned speech', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '1643', NULL, NULL, 1, NULL, NULL),
(11, 'Life 101', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2007', NULL, NULL, 1, NULL, NULL),
(12, 'Wisden Collection', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2005', NULL, NULL, 1, NULL, NULL),
(13, 'Adventure Puzzles', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2020', NULL, NULL, 1, NULL, NULL),
(14, 'PHP 7 : Intensive Coding Bootcamp for One Month to Create a PHP Framework', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2020', NULL, NULL, 1, NULL, NULL),
(15, 'The documents of the Lodz ghetto', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1988', NULL, NULL, 1, NULL, NULL),
(16, 'Valley of the Birds (Music of the Spheres)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '1988', NULL, NULL, 1, NULL, NULL),
(17, 'Sound Trek (Music of the Spheres)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1988', NULL, NULL, 1, NULL, NULL),
(18, 'A Garden', 'covers.openlibrary.org/b/id/7396000-M.jpg', NULL, 'B', '2000', NULL, NULL, 1, NULL, NULL),
(19, 'Whispered Visions (Music of the Spheres)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1988', NULL, NULL, 1, NULL, NULL),
(20, 'The Lost Red Patriot', 'covers.openlibrary.org/b/id/1821261-M.jpg', NULL, 'E', '2007', NULL, NULL, 1, NULL, NULL),
(21, 'Pure Sawdust', 'covers.openlibrary.org/b/id/2778347-M.jpg', NULL, 'E', '2005', NULL, NULL, 1, NULL, NULL),
(22, 'Trick of the Light', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2007', NULL, NULL, 1, NULL, NULL),
(23, 'Official Netscape Live 3D', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1997', NULL, NULL, 1, NULL, NULL),
(24, 'Jewish documentary sources in Russia, Ukraine and Belarus', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '1996', NULL, NULL, 1, NULL, NULL),
(25, 'Dear Stepfather', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2020', NULL, NULL, 1, NULL, NULL),
(26, 'Dear Grandfather', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2020', NULL, NULL, 1, NULL, NULL),
(27, 'Slow Cooker', 'covers.openlibrary.org/b/id/11216718-M.jpg', NULL, 'B', '2015', NULL, NULL, 1, NULL, NULL),
(28, 'IL SEGRETO DEL GRAN KAHAL', 'covers.openlibrary.org/b/id/10971494-M.jpg', NULL, 'B', '2016', NULL, NULL, 1, NULL, NULL),
(29, 'School Puzzles', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2020', NULL, NULL, 1, NULL, NULL),
(30, 'The black sheep', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '1975', NULL, NULL, 1, NULL, NULL),
(31, 'KINDERGARTEN WRITING PAPER - Practicing ABC Handwriting for Kids', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2020', NULL, NULL, 1, NULL, NULL),
(32, 'Interstitial Cystitis', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2020', NULL, NULL, 1, NULL, NULL),
(33, 'Impara a Leggere e Scrivere Colorando', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2021', NULL, NULL, 1, NULL, NULL),
(34, 'Spider\'s Web', 'covers.openlibrary.org/b/id/6881281-M.jpg', NULL, 'C', '2000', NULL, NULL, 1, NULL, NULL),
(35, 'Web of Dreams', 'covers.openlibrary.org/b/id/9355030-M.jpg', NULL, 'B', '1920', NULL, NULL, 1, NULL, NULL),
(36, 'Wtf Is My Password', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2020', NULL, NULL, 1, NULL, NULL),
(37, '2002-2003 Market Outlook', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2003', NULL, NULL, 1, NULL, NULL),
(38, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/2332842-M.jpg', NULL, 'D', '1999', NULL, NULL, 1, NULL, NULL),
(39, 'Web', 'covers.openlibrary.org/b/id/93663-M.jpg', NULL, 'D', '1979', NULL, NULL, 1, NULL, NULL),
(40, 'Web : The Web', 'covers.openlibrary.org/b/id/10653636-M.jpg', NULL, 'B', '1997', NULL, NULL, 1, NULL, NULL),
(41, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10568821-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(42, '********', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2020', NULL, NULL, 1, NULL, NULL),
(43, 'The web', 'covers.openlibrary.org/b/id/3812238-M.jpg', NULL, 'E', '1995', NULL, NULL, 1, NULL, NULL),
(44, 'Spider\'s Web', 'covers.openlibrary.org/b/id/1058043-M.jpg', NULL, 'B', '1956', NULL, NULL, 1, NULL, NULL),
(45, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/10562276-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(46, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/11492239-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(47, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(48, 'Web Design Annual 1999', 'covers.openlibrary.org/b/id/5196950-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(49, 'Copy Bible', 'covers.openlibrary.org/b/id/11355808-M.jpg', NULL, 'C', '2019', NULL, NULL, 1, NULL, NULL),
(50, 'Password Organizer', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2020', NULL, NULL, 1, NULL, NULL),
(51, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '1999', NULL, NULL, 1, NULL, NULL),
(52, 'ISI in cites', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1995', NULL, NULL, 1, NULL, NULL),
(53, 'The Web design annual', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(54, 'The Baird jewels and archive including Tipu Sultan\'s sword', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2003', NULL, NULL, 1, NULL, NULL),
(55, 'Best Hire Dedicated Website Designers in India', 'covers.openlibrary.org/b/id/7238434-M.jpg', NULL, 'B', '2008', NULL, NULL, 1, NULL, NULL),
(56, 'Poetry pages', 'covers.openlibrary.org/b/id/1796968-M.jpg', NULL, 'B', '1995', NULL, NULL, 1, NULL, NULL),
(57, '********', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2020', NULL, NULL, 1, NULL, NULL),
(58, 'Carnet de Notes Entrepreneur 2. 0', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2020', NULL, NULL, 1, NULL, NULL),
(59, 'Html Construction Kit', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '1997', NULL, NULL, 1, NULL, NULL),
(60, 'Microsoft Word for Beginners', 'covers.openlibrary.org/b/id/2721908-M.jpg', NULL, 'E', '2004', NULL, NULL, 1, NULL, NULL),
(61, 'Catalog Of Products Of Coldset/non-heatset Web Offset Printers', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2005', NULL, NULL, 1, NULL, NULL),
(62, 'Catalog Of Products Of Heatset Web Offset Printers', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2005', NULL, NULL, 1, NULL, NULL),
(63, 'E-mail for Beginners', 'covers.openlibrary.org/b/id/2721909-M.jpg', NULL, 'D', '2005', NULL, NULL, 1, NULL, NULL),
(64, 'The Internet for Beginners', 'covers.openlibrary.org/b/id/1716597-M.jpg', NULL, 'B', '2005', NULL, NULL, 1, NULL, NULL),
(65, 'Heatset Web Offset Directory 2005', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2005', NULL, NULL, 1, NULL, NULL),
(66, 'Coldset/non-heatset Web Offset Directory 2005', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2005', NULL, NULL, 1, NULL, NULL),
(67, 'Coldset/Non-Heatset Directory 2001', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2001', NULL, NULL, 1, NULL, NULL),
(68, 'Heatset Web Offset Directory 2001', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '2001', NULL, NULL, 1, NULL, NULL),
(69, 'Focus on English: Standard 10 (Second Language: Focus on English)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1995', NULL, NULL, 1, NULL, NULL),
(70, 'The Web Design Annual', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(71, 'Focus on English: Standard 9 (Second Language: Focus on English)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '1995', NULL, NULL, 1, NULL, NULL),
(72, 'Focus on English: Standard 8 (Second Language: Focus on English)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '1995', NULL, NULL, 1, NULL, NULL),
(73, 'Poetry Pages', 'covers.openlibrary.org/b/id/1764428-M.jpg', NULL, 'E', '2003', NULL, NULL, 1, NULL, NULL),
(74, 'Poetry from the Dark Side', 'covers.openlibrary.org/b/id/1766437-M.jpg', NULL, 'D', '2004', NULL, NULL, 1, NULL, NULL),
(75, 'Synchronized Multimedia Integration Language Smil 1.0 Specification', 'covers.openlibrary.org/b/id/2525735-M.jpg', NULL, 'C', '2000', NULL, NULL, 1, NULL, NULL),
(76, 'Diary 2021 - 2022', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2021', NULL, NULL, 1, NULL, NULL),
(77, 'Coloriamo', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2021', NULL, NULL, 1, NULL, NULL),
(78, 'Super Wings Coloring Book : a Collection of over 40 Selected Illustrations', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2020', NULL, NULL, 1, NULL, NULL),
(79, 'My Journey Journal', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2020', NULL, NULL, 1, NULL, NULL),
(80, 'Rescuing the American dream', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2009', NULL, NULL, 1, NULL, NULL),
(81, 'Charlotte\'s Web', 'covers.openlibrary.org/b/id/38950-M.jpg', NULL, 'D', '2006', NULL, NULL, 1, NULL, NULL),
(82, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(83, 'Nature\'s Web', 'covers.openlibrary.org/b/id/1895630-M.jpg', NULL, 'D', '1992', NULL, NULL, 1, NULL, NULL),
(84, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '2001', NULL, NULL, 1, NULL, NULL),
(85, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10564103-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(86, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10392291-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(87, 'Webs', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '1966', NULL, NULL, 1, NULL, NULL),
(88, 'Webs', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1995', NULL, NULL, 1, NULL, NULL),
(89, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2008', NULL, NULL, 1, NULL, NULL),
(90, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '1997', NULL, NULL, 1, NULL, NULL),
(91, 'Webbed', 'covers.openlibrary.org/b/id/8846412-M.jpg', NULL, 'D', '2017', NULL, NULL, 1, NULL, NULL),
(92, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'D', '1997', NULL, NULL, 1, NULL, NULL),
(93, 'Webs', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '2019', NULL, NULL, 1, NULL, NULL),
(94, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2016', NULL, NULL, 1, NULL, NULL),
(95, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2008', NULL, NULL, 1, NULL, NULL),
(96, 'Webs', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'E', '1993', NULL, NULL, 1, NULL, NULL),
(97, 'Webs', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1989', NULL, NULL, 1, NULL, NULL),
(98, 'Web', 'covers.openlibrary.org/b/id/8156714-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(99, 'WEB', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '1973', NULL, NULL, 1, NULL, NULL),
(100, 'Web', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'C', '2002', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2022_03_15_075212_create_user_roles_table', 1),
(11, '2022_03_15_075307_create_book_lists_table', 1),
(12, '2022_03_15_075340_create_book_entries_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_serial`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', '1', 'super_admin@gmail.com', NULL, '$2y$10$JNZiEZIn74jeFY3j6gGX7ODF28WkJteuHJ46X8llguygBg7UhTSf.', NULL, NULL, NULL),
(2, 'admin', '2', 'admin@gmail.com', NULL, '$2y$10$nBPyA/OuYOxJ/YdQDgwGjOgNmpNFz4jKHeUworA/MOPkHKddFAZU6', NULL, NULL, NULL),
(3, 'management', '3', 'management@gmail.com', NULL, '$2y$10$kh6ZPzkd0sHfeOA2q3HipeZnSSYLvD7xo553D7zmAg3V4pePfUmku', NULL, NULL, NULL),
(4, 'student', '4', 'student@gmail.com', NULL, '$2y$10$dKdJvkjJNEDOD8jv02HQMu88vjIo11HNUQnAelmGYkd9o5mMlnMTK', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_serial` int(11) DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`id`, `role_serial`, `name`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'super_admin', NULL, NULL, 1, '2022-03-15 22:19:51', '2022-03-15 22:19:51'),
(2, 2, 'admin', NULL, NULL, 1, '2022-03-15 22:19:51', '2022-03-15 22:19:51'),
(3, 3, 'management', NULL, NULL, 1, '2022-03-15 22:19:52', '2022-03-15 22:19:52'),
(4, 4, 'student', NULL, NULL, 1, '2022-03-15 22:19:52', '2022-03-15 22:19:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_entries`
--
ALTER TABLE `book_entries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `book_lists`
--
ALTER TABLE `book_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_entries`
--
ALTER TABLE `book_entries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `book_lists`
--
ALTER TABLE `book_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
