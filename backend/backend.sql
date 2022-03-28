-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2022 at 06:19 PM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
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
  `book_return` tinyint(4) NOT NULL DEFAULT '0',
  `creator` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_entries`
--

INSERT INTO `book_entries` (`id`, `user_id`, `book_id`, `date`, `return_date`, `time`, `book_return`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-12-5', '2022-2-17', '4:26', 0, NULL, NULL, 1, NULL, NULL),
(2, 2, 26, '2022-9-9', '2022-8-3', '9:48', 0, NULL, NULL, 1, NULL, NULL),
(3, 3, 95, '2022-10-8', '2022-10-22', '9:3', 0, NULL, NULL, 1, NULL, NULL),
(4, 4, 60, '2022-7-11', '2022-8-28', '10:13', 1, NULL, NULL, 1, NULL, '2022-03-20 20:47:37'),
(5, 6, 18, '2022-03-23', '2022-03-29', '14:43', 1, NULL, NULL, 1, '2022-03-20 02:45:39', '2022-03-24 00:40:38'),
(6, 6, 49, '2022-03-23', '2022-03-29', '14:43', 1, NULL, NULL, 1, '2022-03-20 02:45:39', '2022-03-22 23:24:35'),
(7, 4, 81, '2022-03-21', '2022-03-31', '14:46', 1, NULL, NULL, 1, '2022-03-20 02:47:46', '2022-03-20 20:35:14'),
(8, 4, 7, '2022-03-21', '2022-03-31', '14:46', 0, NULL, NULL, 1, '2022-03-20 02:47:46', NULL),
(9, 4, 41, '2022-03-21', '2022-03-31', '14:46', 1, NULL, NULL, 1, '2022-03-20 02:47:46', '2022-03-20 20:35:18'),
(10, 5, 55, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(11, 5, 7, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(12, 5, 45, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(13, 5, 84, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(14, 5, 91, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(15, 5, 19, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:16:38', NULL),
(16, 5, 18, '2022-03-21', '2022-03-31', '15:18', 1, NULL, NULL, 1, '2022-03-20 03:17:00', '2022-03-23 01:10:55'),
(17, 5, 81, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(18, 5, 83, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(19, 5, 46, '2022-03-21', '2022-03-31', '15:18', 0, NULL, NULL, 1, '2022-03-20 03:17:00', NULL),
(20, 5, 18, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:58', NULL),
(21, 5, 55, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:58', NULL),
(22, 5, 81, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:58', NULL),
(23, 5, 63, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:59', NULL),
(24, 5, 83, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:58:59', NULL),
(25, 5, 55, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:59:12', NULL),
(26, 5, 81, '2022-03-21', '2022-03-31', '15:00', 1, NULL, NULL, 1, '2022-03-20 03:59:12', '2022-03-20 04:28:02'),
(27, 5, 85, '2022-03-21', '2022-03-31', '15:00', 0, NULL, NULL, 1, '2022-03-20 03:59:12', NULL),
(28, 5, 98, '2022-03-21', '2022-03-31', '15:00', 1, NULL, NULL, 1, '2022-03-20 03:59:12', '2022-03-20 04:29:23'),
(29, 6, 60, '2022-03-24', '2022-03-31', '11:25', 1, NULL, NULL, 1, '2022-03-22 23:25:52', '2022-03-25 02:55:53'),
(30, 6, 83, '2022-03-24', '2022-03-31', '11:25', 1, NULL, NULL, 1, '2022-03-22 23:25:52', '2022-03-25 18:46:33'),
(31, 6, 46, '2022-03-24', '2022-03-31', '11:25', 1, NULL, NULL, 1, '2022-03-22 23:25:52', '2022-03-25 02:55:57'),
(32, 6, 44, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:25:52', NULL),
(33, 5, 42, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:11', NULL),
(34, 5, 55, '2022-03-24', '2022-03-31', '11:25', 1, NULL, NULL, 1, '2022-03-22 23:27:11', '2022-03-23 00:44:03'),
(35, 5, 81, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:11', NULL),
(36, 5, 63, '2022-03-24', '2022-03-31', '11:25', 1, NULL, NULL, 1, '2022-03-22 23:27:11', '2022-03-23 00:43:58'),
(37, 5, 86, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:11', NULL),
(38, 5, 101, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:11', NULL),
(39, 5, 19, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:11', NULL),
(40, 4, 55, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:34', NULL),
(41, 4, 73, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:34', NULL),
(42, 4, 48, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:34', NULL),
(43, 4, 35, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:34', NULL),
(44, 4, 91, '2022-03-24', '2022-03-31', '11:25', 0, NULL, NULL, 1, '2022-03-22 23:27:34', NULL),
(45, 5, 55, '2022-03-12', '2022-03-05', '10:34', 0, NULL, NULL, 1, '2022-03-24 22:31:49', NULL),
(46, 12, 18, '2022-03-12', '2022-03-05', '10:34', 0, NULL, NULL, 1, '2022-03-24 22:32:02', NULL),
(47, 6, 101, '2022-03-12', '2022-03-05', '10:34', 0, NULL, NULL, 1, '2022-03-24 22:32:09', NULL),
(48, 8, 18, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(49, 8, 55, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(50, 8, 3, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(51, 8, 101, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(52, 8, 7, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(53, 8, 60, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(54, 8, 41, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(55, 8, 74, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(56, 8, 5, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(57, 8, 48, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL),
(58, 8, 19, '2022-03-25', '2022-03-30', '22:58', 0, NULL, NULL, 1, '2022-03-24 22:59:29', NULL);

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
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `book_lists`
--

INSERT INTO `book_lists` (`id`, `name`, `image`, `author`, `section`, `published_data`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(3, 'Black Belt Web Programming Methods', 'covers.openlibrary.org/b/id/1633560-M.jpg', NULL, 'C', '1998', NULL, NULL, 1, NULL, NULL),
(4, 'The Philadelphia Negro A Social Study', 'covers.openlibrary.org/b/id/10996354-M.jpg', NULL, 'A', '2018', NULL, NULL, 1, NULL, NULL),
(5, 'The Philadelphia Negro a Social Study', 'covers.openlibrary.org/b/id/11167014-M.jpg', NULL, 'E', '2018', NULL, NULL, 1, NULL, NULL),
(7, 'From the Twisted Fabric of My Eye', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'B', '2021', NULL, NULL, 1, NULL, NULL),
(18, 'A Garden', 'covers.openlibrary.org/b/id/7396000-M.jpg', NULL, 'B', '2000', NULL, NULL, 1, NULL, NULL),
(19, 'Whispered Visions (Music of the Spheres)', 'covers.openlibrary.org/b/id/8311467-M.jpg', 'Nitu Lovely', 'A', '1988', NULL, NULL, 1, NULL, '2022-03-25 04:20:00'),
(20, 'The Lost Red Patriot', 'covers.openlibrary.org/b/id/1821261-M.jpg', NULL, 'E', '2007', NULL, NULL, 1, NULL, NULL),
(21, 'Pure Sawdust', 'covers.openlibrary.org/b/id/2778347-M.jpg', NULL, 'E', '2005', NULL, NULL, 1, NULL, NULL),
(27, 'Slow Cooker', 'covers.openlibrary.org/b/id/11216718-M.jpg', NULL, 'B', '2015', NULL, NULL, 1, NULL, NULL),
(28, 'IL SEGRETO DEL GRAN KAHAL', 'covers.openlibrary.org/b/id/10971494-M.jpg', NULL, 'B', '2016', NULL, NULL, 1, NULL, NULL),
(34, 'Spider\'s Web', 'covers.openlibrary.org/b/id/6881281-M.jpg', NULL, 'C', '2000', NULL, NULL, 1, NULL, NULL),
(35, 'Web of Dreams', 'covers.openlibrary.org/b/id/9355030-M.jpg', NULL, 'B', '1920', NULL, NULL, 1, NULL, NULL),
(38, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/2332842-M.jpg', NULL, 'D', '1999', NULL, NULL, 1, NULL, NULL),
(39, 'Web', 'covers.openlibrary.org/b/id/93663-M.jpg', NULL, 'D', '1979', NULL, NULL, 1, NULL, NULL),
(40, 'Web : The Web', 'covers.openlibrary.org/b/id/10653636-M.jpg', NULL, 'B', '1997', NULL, NULL, 1, NULL, NULL),
(41, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10568821-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(42, 'Like this map', 'upload/books/27IyDFCDPnVoG2YysVJcpXFJNFbs0u9GQkYM0dpf.png', 'tanvir', 'B', '2020', NULL, NULL, 1, NULL, '2022-03-25 04:19:02'),
(43, 'The web', 'covers.openlibrary.org/b/id/3812238-M.jpg', NULL, 'E', '1995', NULL, NULL, 1, NULL, NULL),
(44, 'Spider\'s Web', 'covers.openlibrary.org/b/id/1058043-M.jpg', NULL, 'B', '1956', NULL, NULL, 1, NULL, NULL),
(45, 'Oxford Literacy Web', 'covers.openlibrary.org/b/id/10562276-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(46, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/11492239-M.jpg', NULL, 'C', '1999', NULL, NULL, 1, NULL, NULL),
(47, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/8311467-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(48, 'Web Design Annual 1999', 'covers.openlibrary.org/b/id/5196950-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(49, 'Copy Bible', 'covers.openlibrary.org/b/id/11355808-M.jpg', NULL, 'C', '2019', NULL, NULL, 1, NULL, NULL),
(55, 'Best Hire Dedicated Website Designers in India', 'covers.openlibrary.org/b/id/7238434-M.jpg', NULL, 'B', '2008', NULL, NULL, 1, NULL, NULL),
(56, 'Poetry pages', 'covers.openlibrary.org/b/id/1796968-M.jpg', NULL, 'B', '1995', NULL, NULL, 1, NULL, NULL),
(60, 'Microsoft Word for Beginners', 'covers.openlibrary.org/b/id/2721908-M.jpg', NULL, 'E', '2004', NULL, NULL, 1, NULL, NULL),
(63, 'E-mail for Beginners', 'covers.openlibrary.org/b/id/2721909-M.jpg', NULL, 'D', '2005', NULL, NULL, 1, NULL, NULL),
(64, 'The Internet for Beginners', 'covers.openlibrary.org/b/id/1716597-M.jpg', NULL, 'B', '2005', NULL, NULL, 1, NULL, NULL),
(73, 'Poetry Pages', 'covers.openlibrary.org/b/id/1764428-M.jpg', NULL, 'E', '2003', NULL, NULL, 1, NULL, NULL),
(74, 'Poetry from the Dark Side', 'covers.openlibrary.org/b/id/1766437-M.jpg', NULL, 'D', '2004', NULL, NULL, 1, NULL, NULL),
(75, 'Synchronized Multimedia Integration Language Smil 1.0 Specification', 'covers.openlibrary.org/b/id/2525735-M.jpg', NULL, 'C', '2000', NULL, NULL, 1, NULL, NULL),
(81, 'Charlotte\'s Web', 'covers.openlibrary.org/b/id/38950-M.jpg', NULL, 'D', '2006', NULL, NULL, 1, NULL, NULL),
(83, 'Nature\'s Web', 'covers.openlibrary.org/b/id/1895630-M.jpg', NULL, 'D', '1992', NULL, NULL, 1, NULL, NULL),
(85, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10564103-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(86, 'Oxford Literacy Web (Oxford Literacy Web)', 'covers.openlibrary.org/b/id/10392291-M.jpg', NULL, 'B', '1999', NULL, NULL, 1, NULL, NULL),
(88, 'Webs', 'upload/books/UWcJUpiIah5wUkZiO7ZexCrNqmHQrvzktDzBWKEQ.jpg', 'Tanvir', 'A', '1995', NULL, NULL, 1, NULL, '2022-03-18 21:54:58'),
(91, 'Webbed', 'covers.openlibrary.org/b/id/8846412-M.jpg', NULL, 'D', '2017', NULL, NULL, 1, NULL, NULL),
(93, 'Webs', 'upload/books/Iii7SjP2d0bbDYBcXHyOwTCQ1ribOwoxbJtHox6h.png', 'Al-Amin', 'A', '2019', NULL, NULL, 1, NULL, '2022-03-18 21:55:45'),
(98, 'Web', 'covers.openlibrary.org/b/id/8156714-M.jpg', NULL, 'A', '1999', NULL, NULL, 1, NULL, NULL),
(101, 'Tanvir Md. Al-Amin', 'upload/books/InZ3i5JFkODxN6tSUD5HD6l6WV2b3vmKu3ohJ0i6.png', 'CEO', 'A', NULL, NULL, NULL, 1, '2022-03-18 20:11:37', '2022-03-25 04:13:21'),
(104, 'Tonny', 'upload/books/tAipRrkxmc862KM3yVYArueJKIlUKfyuPt8WMDxh.jpg', 'Pop', 'W', NULL, NULL, NULL, 1, '2022-03-18 20:28:08', '2022-03-24 21:01:10');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
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
(12, '2022_03_15_075340_create_book_entries_table', 1),
(13, '2022_03_25_045445_create_task_lists_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0109e4fa20502d1415cdae8f730b8fd1952686c71f909d78245417c97d29b2ce8c34867bdc4c6120', 4, 1, 'accessToken', '[]', 1, '2022-03-22 22:09:55', '2022-03-22 22:09:55', '2023-03-23 04:09:55'),
('028de50f938ffa3d515a3b9c94a4d4d162231f18a2ac5745809b2ef161de07282ff1c131cb6a2896', 4, 1, 'accessToken', '[]', 1, '2022-03-22 23:28:11', '2022-03-22 23:28:11', '2023-03-23 05:28:11'),
('04dc891c108b3c4d8a661079afb3a490905b8786d4db92e1436cd755ad7fa5be5f30ccec4adb0c7e', 5, 1, 'accessToken', '[]', 1, '2022-03-21 20:08:09', '2022-03-21 20:08:09', '2023-03-22 02:08:09'),
('0533e65e97c1b35c8fa932311cf2e967868832c0ba100b88044b133c395a598967e7e771d2cca2d3', 3, 1, 'accessToken', '[]', 1, '2022-03-22 23:11:48', '2022-03-22 23:11:48', '2023-03-23 05:11:48'),
('05fdcc95e722f9b371504ce735fe749ab1fe4532b7dbfd207f16b2ae7d3cb0934f0b386d6f2e2006', 2, 1, 'accessToken', '[]', 1, '2022-03-23 21:23:15', '2022-03-23 21:23:15', '2023-03-24 03:23:15'),
('06c86c3901a24e828b3f0f57d7cea33ebb2eabee6b8c540148408c47eca9fa04f9147e0864da391f', 4, 1, 'accessToken', '[]', 1, '2022-03-20 03:57:17', '2022-03-20 03:57:17', '2023-03-20 09:57:17'),
('07d2e998dfd10955bcd61005e590cf60275055100814b21db31b280d1ff099283d84ce791aa8dcc0', 3, 1, 'accessToken', '[]', 1, '2022-03-18 00:24:46', '2022-03-18 00:24:46', '2023-03-18 06:24:46'),
('085a223c309bf2f8411d2ef08c80d5cafca47a1f39882207e837f8072c6e1de20cee9adedaced628', 4, 1, 'accessToken', '[]', 1, '2022-03-18 00:17:29', '2022-03-18 00:17:29', '2023-03-18 06:17:29'),
('092fffb40f93c20f19c01e0d3cfa075618872d8b0a8fe368915585c0957f6c77901ca65e0c3c4d93', 4, 1, 'accessToken', '[]', 0, '2022-03-17 22:42:00', '2022-03-17 22:42:00', '2023-03-18 04:42:00'),
('0a626a8f652d461eb29e931dd97d7f7a80132e2c5fc1f2dc6d57c153fa5d417cbed35d2a73f5fd89', 4, 1, 'accessToken', '[]', 1, '2022-03-20 20:47:23', '2022-03-20 20:47:23', '2023-03-21 02:47:23'),
('0a65395ac09c9e1d2cb835966a49e973adb4683bb1f6a264d28bf0039d265760a9b039682c53488c', 4, 1, 'accessToken', '[]', 1, '2022-03-23 03:14:22', '2022-03-23 03:14:22', '2023-03-23 09:14:22'),
('0a74b17fe4de2ce8b27017490ea0f0373f0af522790173944727df3ae5a4dc53bd65440f6ab58b2a', 5, 1, 'accessToken', '[]', 1, '2022-03-23 02:44:58', '2022-03-23 02:44:58', '2023-03-23 08:44:58'),
('0a7fe6dba7fb2a3fa936906f8660817dc7a88e9e2b73c832efef58dd60d72c6b6556fe7017c97633', 1, 1, 'accessToken', '[]', 0, '2022-03-16 05:12:29', '2022-03-16 05:12:29', '2023-03-16 11:12:29'),
('0acde3dd5519f3cf68919af945d1bf6c372560fa9bb339cef2250a6f06743d6909b8024dbcccd296', 3, 1, 'accessToken', '[]', 1, '2022-03-22 22:24:06', '2022-03-22 22:24:06', '2023-03-23 04:24:06'),
('102592e5bc42f2a16a82db3069bf98b04d9894b12971d02edf665b7ecb08a3c870bfe778ab3da221', 2, 1, 'accessToken', '[]', 1, '2022-03-24 22:29:43', '2022-03-24 22:29:43', '2023-03-25 04:29:43'),
('173e8f102a4b387ffbc2ff4b80398029c463220fb78e51f5a3958060104df902aa938466e428f7a0', 2, 1, 'accessToken', '[]', 1, '2022-03-25 20:50:11', '2022-03-25 20:50:11', '2023-03-26 02:50:11'),
('17f195bc751951ea88a313532a19fb7ceb4cd9599bc6a0329997e16a13bddb7ad30ac8c411d2154c', 2, 1, 'accessToken', '[]', 1, '2022-03-24 19:41:43', '2022-03-24 19:41:43', '2023-03-25 01:41:43'),
('1b6934ba6b11916c767049289a25c31e665d7508895431df70fc2c74814dfc8bce0a47a58c1651c1', 2, 1, 'accessToken', '[]', 1, '2022-03-24 01:12:42', '2022-03-24 01:12:42', '2023-03-24 07:12:42'),
('1cb166dc7621b2129c5f1fbf94224389f5ad59c151fa3ba9fb2e89889e2a28a4553281c3fb630afe', 2, 1, 'accessToken', '[]', 1, '2022-03-18 19:38:34', '2022-03-18 19:38:34', '2023-03-19 01:38:34'),
('1e51830bf95c6cc42656f41356fbdbe3acd204e76b7b5db5cb55bb3a5629e1cbca9b37ed0302885d', 10, 1, 'accessToken', '[]', 1, '2022-03-25 20:33:29', '2022-03-25 20:33:29', '2023-03-26 02:33:29'),
('1ef1326f045096e2404858a9e8526d2f034d811098e8c312f2e52a2b6890135c486bb1ab4667c343', 4, 1, 'accessToken', '[]', 1, '2022-03-22 23:12:10', '2022-03-22 23:12:10', '2023-03-23 05:12:10'),
('1f51ad063a046e1926fb567d2875c52b8107211f056bf83ea93323e091b9ccd4a8c80edc51a606ec', 6, 1, 'accessToken', '[]', 1, '2022-03-22 23:12:27', '2022-03-22 23:12:27', '2023-03-23 05:12:27'),
('20c066ede797370b828d532790859b39bb067eae584831aaa7652da921337a7163d94064c6c37892', 4, 1, 'accessToken', '[]', 1, '2022-03-23 01:18:57', '2022-03-23 01:18:57', '2023-03-23 07:18:57'),
('24000e6af426b90939739075b781c017fcf9df60e8666feb9f8a1c9e5e28ad52e1c0ec81a499d67a', 6, 1, 'accessToken', '[]', 1, '2022-03-23 03:13:49', '2022-03-23 03:13:49', '2023-03-23 09:13:49'),
('24fa7456a59ffe7d0fea64dadccef4e91e36bd4c0a0b8ea967e897fbbc85d1d749866f5d3bc7d424', 2, 1, 'accessToken', '[]', 1, '2022-03-24 00:16:19', '2022-03-24 00:16:19', '2023-03-24 06:16:19'),
('2799f67bc166db50d3bb18b930795b9023cec58fdfce58e7af5a33f940019bb34ce181e2364c0f06', 4, 1, 'accessToken', '[]', 1, '2022-03-19 21:17:02', '2022-03-19 21:17:02', '2023-03-20 03:17:02'),
('27c41febcfdd7a16a965ba8108bc3ea281a5cafc69fc4fa0c834f57fcb836d8049512646d0ee5a59', 2, 1, 'accessToken', '[]', 1, '2022-03-18 01:15:59', '2022-03-18 01:15:59', '2023-03-18 07:15:59'),
('2925e56bed15e55a091ae592c1bf6cf87cd14880f7f643f3a613e304d4c4cc1b7c0e539aa4f0cb90', 4, 1, 'accessToken', '[]', 1, '2022-03-25 04:15:44', '2022-03-25 04:15:44', '2023-03-25 10:15:44'),
('2c8ee17a6559889ffeff7c6b129e70c0988c6307e32ef321e28904be5453ed80d350f16eab74e3e6', 2, 1, 'accessToken', '[]', 1, '2022-03-20 03:58:10', '2022-03-20 03:58:10', '2023-03-20 09:58:10'),
('2e43684f8f4e717a16b0c659bcb8ef24d4ce3ee000159689b735dee8b5b86db80b6b6401eb7e275e', 3, 1, 'accessToken', '[]', 1, '2022-03-22 23:27:46', '2022-03-22 23:27:46', '2023-03-23 05:27:46'),
('2e6333ec3b4ee56808af1058e103839de11f3f56181d1d4be51777c908ee2d4698bdfe7d5079c6df', 5, 1, 'accessToken', '[]', 1, '2022-03-23 01:52:04', '2022-03-23 01:52:04', '2023-03-23 07:52:04'),
('2f40f97698373e202349419254bede4c02ead4913e292fe7299d17d26d8264365fa8a0708d5bb4b3', 5, 1, 'accessToken', '[]', 1, '2022-03-23 02:11:15', '2022-03-23 02:11:15', '2023-03-23 08:11:15'),
('3359d30672737af5b27114f49008516554b072b7993a5563979245e1ce2c3140a79d2041009b4523', 5, 1, 'accessToken', '[]', 1, '2022-03-23 22:46:45', '2022-03-23 22:46:45', '2023-03-24 04:46:45'),
('3872238e3ad4cebc15520520497cf67e57266c09b0a1e0fd29692d9ccc4d47c61ca3b6640a46eb92', 2, 1, 'accessToken', '[]', 1, '2022-03-22 23:24:48', '2022-03-22 23:24:48', '2023-03-23 05:24:48'),
('39285efaab426f646564c2215ac745925270568ed9cdfad6652a56d82dee97a484d3f38efc1e58ac', 2, 1, 'accessToken', '[]', 1, '2022-03-23 20:52:36', '2022-03-23 20:52:36', '2023-03-24 02:52:36'),
('3ba137ed2d564c3a8a77950ba346c603556094250bf7d5469158dba41f6f46e06ba5c11f02ed5433', 15, 1, 'accessToken', '[]', 1, '2022-03-26 04:07:35', '2022-03-26 04:07:35', '2023-03-26 10:07:35'),
('3c1c8a02f98860181b90ffb49e6c356d4d998c1a05eb5f3677906e9fd7e690d063bc31bce8abfefa', 2, 1, 'accessToken', '[]', 1, '2022-03-26 03:51:08', '2022-03-26 03:51:08', '2023-03-26 09:51:08'),
('3e7491d4c60bf54a4240bb72859d98daa7664957b38ca7677478c17898f056811f64bcfd8e04b806', 3, 1, 'accessToken', '[]', 1, '2022-03-23 04:21:57', '2022-03-23 04:21:57', '2023-03-23 10:21:57'),
('415b2ebe405015524bed575ce2a4359c2e6557bf8ceb7c99b508e3ad894f221e0f1b52285bb9e84c', 2, 1, 'accessToken', '[]', 1, '2022-03-23 02:07:53', '2022-03-23 02:07:53', '2023-03-23 08:07:53'),
('446b0531083f922e361d170964fa72dfb8177eff9a7b1c73ffeff57bbb681d91754195daf1636a34', 2, 1, 'accessToken', '[]', 1, '2022-03-19 21:05:10', '2022-03-19 21:05:10', '2023-03-20 03:05:10'),
('45102f28f635247e2889061e90bf52cb45dc4940a5bd525713302df3e499b595b533abfd4a2d636c', 2, 1, 'accessToken', '[]', 1, '2022-03-23 03:15:33', '2022-03-23 03:15:33', '2023-03-23 09:15:33'),
('46372409cf0cafd488af6785b7483f15bff0bd3caa340052717789ddf3221b25da3fd66e5059e947', 1, 1, 'accessToken', '[]', 0, '2022-03-16 05:12:29', '2022-03-16 05:12:29', '2023-03-16 11:12:29'),
('4ce0098b2e78906c7d8d9f09ebc4889ee537dac7b4d53f81618965b1c587d48d9290bf685a2ea44b', 2, 1, 'accessToken', '[]', 1, '2022-03-25 04:18:14', '2022-03-25 04:18:14', '2023-03-25 10:18:14'),
('4d072a6109fe12776ecbed19badd8b24d6fb761824af5d104b632867714107f59a552f068fbb8d87', 2, 1, 'accessToken', '[]', 1, '2022-03-23 01:59:24', '2022-03-23 01:59:24', '2023-03-23 07:59:24'),
('4e08b49e70325d487291f5aebaa22d2696d129a65aa53b3a6a5b32ee1b5c9b3fbab40fe8eff109df', 4, 1, 'accessToken', '[]', 0, '2022-03-25 00:33:58', '2022-03-25 00:33:58', '2023-03-25 06:33:58'),
('4fe551e66147a648927f82ad2016dc3f7f6169f3b93bbee78591e6777f1cafd2a82ec41bab69fd13', 5, 1, 'accessToken', '[]', 0, '2022-03-18 00:31:32', '2022-03-18 00:31:32', '2023-03-18 06:31:32'),
('50255a5dfdfc1e03d8d56293ff8ff14022763ec972d61bc17ced80d09f418474629fe1f84a865371', 4, 1, 'accessToken', '[]', 1, '2022-03-20 03:18:12', '2022-03-20 03:18:12', '2023-03-20 09:18:12'),
('525d01e0b919409497529f718484dcc9d539b357a785e9db858e5114251672c6daf2d3c9c34d510e', 2, 1, 'accessToken', '[]', 1, '2022-03-23 22:49:23', '2022-03-23 22:49:23', '2023-03-24 04:49:23'),
('5426f8ff485e1cdfa344f6fb19f14cd841508a22adf6dc61de370d0ceab206c16e3d5d97c30f240e', 2, 1, 'accessToken', '[]', 1, '2022-03-21 20:08:58', '2022-03-21 20:08:58', '2023-03-22 02:08:58'),
('5680ca2b97b5a77383d4d3638ae08d6c11b4efb0cd9e68bb177a6d1fdedf589eb2c4f917c6ef871b', 2, 1, 'accessToken', '[]', 1, '2022-03-23 02:44:23', '2022-03-23 02:44:23', '2023-03-23 08:44:23'),
('56b5fd106a719e86bc375f031b93c32f2c880b459dfd91497d6668a3e67a5d221d696160200c0f52', 14, 1, 'accessToken', '[]', 0, '2022-03-25 07:17:27', '2022-03-25 07:17:27', '2023-03-25 13:17:27'),
('59bd0d6c7da1895017ba473bd2bdb41b0dd2e47222d21a647ef88a9f1235cc66607d6bea0a20cf2e', 2, 1, 'accessToken', '[]', 1, '2022-03-19 20:33:02', '2022-03-19 20:33:02', '2023-03-20 02:33:02'),
('5a9342834a959599da3aecc28668229d4e562c40bd1475677a4fac8864603ec48c3c1aedcd002275', 2, 1, 'accessToken', '[]', 1, '2022-03-22 22:02:08', '2022-03-22 22:02:08', '2023-03-23 04:02:08'),
('5beaeffea36d72bd51142fadc30048294ad7128538e2c99ca46012072c301494f6ef1242f23d5c6d', 4, 1, 'accessToken', '[]', 1, '2022-03-23 05:04:50', '2022-03-23 05:04:50', '2023-03-23 11:04:50'),
('5ef6a34a4d49ef7f93e60ab5a2e3d91d4c3a82c2462f360dc3f867a9d99f0603edd5767fdd89deff', 4, 1, 'accessToken', '[]', 1, '2022-03-23 21:19:20', '2022-03-23 21:19:20', '2023-03-24 03:19:20'),
('602e67a32b5a4a5b037d1a81a1f496ebdd76ff218b303b0e5fd12d86ffc33eb8a47d2d31a7e75624', 10, 1, 'accessToken', '[]', 1, '2022-03-26 06:01:10', '2022-03-26 06:01:10', '2023-03-26 12:01:10'),
('619a031444cd9ceaf6d17eaf2deae4949587c1795e18fdb4cd830ccce2cd2369e0753b2b47b6f946', 6, 1, 'accessToken', '[]', 1, '2022-03-17 20:52:10', '2022-03-17 20:52:10', '2023-03-18 02:52:10'),
('630474443a2eaa21d6669b08f3ce423341d80893317395645d88c25b54760fcbdb5c07c7edea9b18', 6, 1, 'accessToken', '[]', 1, '2022-03-25 02:13:54', '2022-03-25 02:13:54', '2023-03-25 08:13:54'),
('634574898716ddedb15062c9994964ad074df4569b974f4406081e8a6930adb46a461601358c94b1', 3, 1, 'accessToken', '[]', 1, '2022-03-23 01:59:07', '2022-03-23 01:59:07', '2023-03-23 07:59:07'),
('687e4521d70f3f68da10526863e2ce0fe5e5b0a401b1b748a68d745da14967873b9e718c8b41b62b', 6, 1, 'accessToken', '[]', 1, '2022-03-17 21:35:13', '2022-03-17 21:35:13', '2023-03-18 03:35:13'),
('6fef173fbc6c66ed57e82c442994e2977846e06b0867265a4218856c553f1b407a3e957460b6a1e7', 2, 1, 'accessToken', '[]', 0, '2022-03-23 01:19:12', '2022-03-23 01:19:12', '2023-03-23 07:19:12'),
('7049ff208958edffa50531f261bd24c3140496f061b48af4a859947d5673969b9293c8652cacab08', 5, 1, 'accessToken', '[]', 1, '2022-03-23 03:52:30', '2022-03-23 03:52:30', '2023-03-23 09:52:30'),
('73a1c5bcda53ac7fbc9fa3c8192371f32f390cfdd37c44f702b95aea76cab7f280be60cb87837d56', 2, 1, 'accessToken', '[]', 1, '2022-03-18 21:26:44', '2022-03-18 21:26:44', '2023-03-19 03:26:44'),
('74a63c591d1e949ab9e758bee211349ad6d46824ee0ccb1d4b267eee63361bff249d0e296fe7c1d4', 2, 1, 'accessToken', '[]', 1, '2022-03-25 07:15:27', '2022-03-25 07:15:27', '2023-03-25 13:15:27'),
('757cbfd2c3dae7496253301ff2c21220d555a32c2fa39d97debab888e9517579e230cc643b2b5e9a', 1, 1, 'accessToken', '[]', 0, '2022-03-16 05:12:28', '2022-03-16 05:12:28', '2023-03-16 11:12:28'),
('7591ec52eb6c73f830c4bd59b32b6efa506b04160e6888958c58a1714c6e123833522acea6279f3e', 2, 1, 'accessToken', '[]', 1, '2022-03-26 04:10:19', '2022-03-26 04:10:19', '2023-03-26 10:10:19'),
('765738add77fe7b239d05c626f4ab8dfba02bfcf54531423c37b009ab7d4e176f6c5092c60538823', 6, 1, 'accessToken', '[]', 1, '2022-03-17 22:48:15', '2022-03-17 22:48:15', '2023-03-18 04:48:15'),
('7715bd537eb833c4bde8d8c0c37ef03f8d35af110c48c7c757f5825693b623f9b7126801f8370002', 4, 1, 'accessToken', '[]', 0, '2022-03-25 00:28:16', '2022-03-25 00:28:16', '2023-03-25 06:28:16'),
('77420e071274bb44c6739bc4f032ab2937ab0e136069fd2f33fc6b0428cd05aafae9304031c8df4b', 6, 1, 'accessToken', '[]', 1, '2022-03-19 19:40:10', '2022-03-19 19:40:10', '2023-03-20 01:40:10'),
('7ae066d91a82a8bf5918cbadb3d5dd2f1d59c09e022067168be6440df299e0c73e44975a0bfab7b5', 2, 1, 'accessToken', '[]', 1, '2022-03-22 22:11:52', '2022-03-22 22:11:52', '2023-03-23 04:11:52'),
('7c1315fb4e44c32e4d95895a974fa878637f6a6b07fbf2a8d7db51831aaf81fb8efc99f1b5027dea', 4, 1, 'accessToken', '[]', 1, '2022-03-24 23:41:48', '2022-03-24 23:41:48', '2023-03-25 05:41:48'),
('7cdb50c2d63374b7559fccbc0a58153678f4619d52632351fdbc07c2a1b7da1bd4817f7bd29516e8', 6, 1, 'accessToken', '[]', 0, '2022-03-17 22:35:45', '2022-03-17 22:35:45', '2023-03-18 04:35:45'),
('7e015a0ba0abcd47edab32ffd66d4834f8e73b3803c365471ad64584785b86c66931f6a5654ce480', 4, 1, 'accessToken', '[]', 1, '2022-03-19 21:05:25', '2022-03-19 21:05:25', '2023-03-20 03:05:25'),
('7e333a2bc7859fd457ab9c6c3ab019a86292115b3b7d9d6bb644195d434c9db130d2f5ff8aa93491', 11, 1, 'accessToken', '[]', 1, '2022-03-24 22:58:17', '2022-03-24 22:58:17', '2023-03-25 04:58:17'),
('7f5fea3352490db5a527207852005bde054314afa2e079555f50941c1f6bd0f6e347e8b705ed31d3', 4, 1, 'accessToken', '[]', 1, '2022-03-25 00:21:36', '2022-03-25 00:21:36', '2023-03-25 06:21:36'),
('7f604fbfc092acda5d97e8f35033e63a7e935519ee23668dad0c2977c6d5860ff77ce3064c8e5206', 5, 1, 'accessToken', '[]', 1, '2022-03-25 04:16:20', '2022-03-25 04:16:20', '2023-03-25 10:16:20'),
('80bbb69044a5393f4a8ec2988f9b4a774b2954cfd2de25dd7e0694c59a7da02b175eaa44c06ae53a', 3, 1, 'accessToken', '[]', 1, '2022-03-23 02:07:42', '2022-03-23 02:07:42', '2023-03-23 08:07:42'),
('831804bee5355e9fcad75d9e410b5d08dc1361b02ba0a93b42e04649d641b1bff99d4a187e391d86', 12, 1, 'accessToken', '[]', 1, '2022-03-24 20:29:55', '2022-03-24 20:29:55', '2023-03-25 02:29:55'),
('836dd218792cb4675e2d4ef52ab36f00f855c5e52b516120fe0f8642f2757f62f510cd2297218775', 2, 1, 'accessToken', '[]', 1, '2022-03-17 20:40:30', '2022-03-17 20:40:30', '2023-03-18 02:40:30'),
('864e33b240ca40803a6137e38b915e510a8c54e8d545ff767568a1bab28970e2b5c86f8ea7debb57', 10, 1, 'accessToken', '[]', 1, '2022-03-26 04:09:50', '2022-03-26 04:09:50', '2023-03-26 10:09:50'),
('896b290be930650ce8a27a19badeb070a50573b513f566e999a87cddcbe05e66191db39c91f849a3', 2, 1, 'accessToken', '[]', 1, '2022-03-22 02:37:03', '2022-03-22 02:37:03', '2023-03-22 08:37:03'),
('8980ef2b2d19ba869b712e0c3634b2c7cb8d3a1289de1c46a50952707e0bb113f29a4b869fec0c54', 2, 1, 'accessToken', '[]', 1, '2022-03-18 21:26:09', '2022-03-18 21:26:09', '2023-03-19 03:26:09'),
('8a3b4cb7f33e16267d0f230f230efbcdcd7f41f5ffecc9ab5814d717934fe09f47e8d923c7c988f1', 4, 1, 'accessToken', '[]', 1, '2022-03-19 19:41:12', '2022-03-19 19:41:12', '2023-03-20 01:41:12'),
('8a43cf03fe1e3b13c80cf962ef3e8194ce37711b16069702adf8ace292170f4c87d8c3fe0c31f09f', 10, 1, 'accessToken', '[]', 1, '2022-03-26 06:00:01', '2022-03-26 06:00:01', '2023-03-26 12:00:01'),
('8ad8fff32f3b2b13240099eebb17f2151b2cecdff6a8de49ec93bc790b4eb1c6491576f22d21fee5', 2, 1, 'accessToken', '[]', 1, '2022-03-19 21:17:23', '2022-03-19 21:17:23', '2023-03-20 03:17:23'),
('8bc0f881d3c431d2f702b009c4656788a4802f3d799fdaa193d49ffcea0e808f239b92577ed857d0', 5, 1, 'accessToken', '[]', 1, '2022-03-23 02:00:18', '2022-03-23 02:00:18', '2023-03-23 08:00:18'),
('8cc2cb04c313bafbd5d2f9804e18229c51856b8e5c8b94d288686a0534c529eee3f7526f85b5ac59', 3, 1, 'accessToken', '[]', 1, '2022-03-23 02:11:05', '2022-03-23 02:11:05', '2023-03-23 08:11:05'),
('9590f54e58ca2036422d683f667ffc8cd13b9a0a573c0baec1224e85615f2119e46087d26a0407c2', 10, 1, 'accessToken', '[]', 1, '2022-03-26 03:49:04', '2022-03-26 03:49:04', '2023-03-26 09:49:04'),
('96beaaa95fc2319d637eae9c60ed3a944cec0096c1f4e7d32d8a1db7a9e9a8fdb215ee9cf1e8ff9b', 2, 1, 'accessToken', '[]', 1, '2022-03-17 19:51:14', '2022-03-17 19:51:14', '2023-03-18 01:51:14'),
('972eb915a63429d2670aa8044ca72d8e318afa96394b5cbb67e2434e6b78a878e0c906ae977ba782', 5, 1, 'accessToken', '[]', 1, '2022-03-23 02:34:47', '2022-03-23 02:34:47', '2023-03-23 08:34:47'),
('97faef919c6e32b8bf042d77d2d2d59df0647569ec1aa98b6177afac8fb1797ffb779537be94ec04', 8, 1, 'accessToken', '[]', 1, '2022-03-24 19:41:21', '2022-03-24 19:41:21', '2023-03-25 01:41:21'),
('98c29e02a5b36523fae887637c9a54317262da0891204f36edcf32910eb7a257b23c5332ee746057', 7, 1, 'accessToken', '[]', 1, '2022-03-24 05:01:46', '2022-03-24 05:01:46', '2023-03-24 11:01:46'),
('996a775ed5c312fd7b9e8a2a69ca502e47adda98452682947716552bb06cedea5084017b81ffc9fe', 6, 1, 'accessToken', '[]', 1, '2022-03-23 22:46:27', '2022-03-23 22:46:27', '2023-03-24 04:46:27'),
('9a586a82c869e8fd3d4d51f7f1830a49c665a15be80ebb7b1ab598c461942a75c228504ce83906b1', 5, 1, 'accessToken', '[]', 1, '2022-03-20 03:57:50', '2022-03-20 03:57:50', '2023-03-20 09:57:50'),
('9ac24c92ef9c120049b586e2275564f9207c6aed98606915120ddec393cc156cc47615af1a76c115', 5, 1, 'accessToken', '[]', 1, '2022-03-24 01:12:30', '2022-03-24 01:12:30', '2023-03-24 07:12:30'),
('9c3fa3a149df8328b6f67b9fa253a52fe1f6570445bd0262931c693b1655b0a788b00fc195026501', 5, 1, 'accessToken', '[]', 1, '2022-03-23 04:21:12', '2022-03-23 04:21:12', '2023-03-23 10:21:12'),
('9e76902ca5ef7afad8e76b32d0866f367c3a4784ccd35c33c4dc775273a9e3039f731f2cfdc7c328', 4, 1, 'accessToken', '[]', 1, '2022-03-18 19:39:05', '2022-03-18 19:39:05', '2023-03-19 01:39:05'),
('9e9364aef350c2651a2c59c6d82b8b7dbb70ff9dc4d1d820d82d06993f1fd5488bb426bfd7d2a90a', 2, 1, 'accessToken', '[]', 0, '2022-03-22 02:37:06', '2022-03-22 02:37:06', '2023-03-22 08:37:06'),
('9f516e48d3c56b60b7428f04ce976b0af789e2ac889a74484707eb5dc3d8b33e316a49daf840fbc3', 2, 1, 'accessToken', '[]', 1, '2022-03-23 04:15:28', '2022-03-23 04:15:28', '2023-03-23 10:15:28'),
('a29ef264c49b909835caaa1bca270d09425a96779b10679dc3a3cbf97617e874b3b97194164e825c', 2, 1, 'accessToken', '[]', 1, '2022-03-25 04:12:32', '2022-03-25 04:12:32', '2023-03-25 10:12:32'),
('a30bd8dcff4921dcc768d55b75544361ac282a5a6756125838f7dbbc81e66a9d6486172afad56883', 4, 1, 'accessToken', '[]', 1, '2022-03-26 03:50:35', '2022-03-26 03:50:35', '2023-03-26 09:50:35'),
('a32007cca52b494acd10f24b5f9ec83bb1bc15e2386d64eb973d470f1cd7e3dfb22f575e6cc61dc4', 4, 1, 'accessToken', '[]', 1, '2022-03-21 20:07:17', '2022-03-21 20:07:17', '2023-03-22 02:07:17'),
('a7e80d4d61318c1fb1d44f42287c17ae3680893f46b0a9153d7ac02fd974a10e98995fa6c74ab591', 12, 1, 'accessToken', '[]', 1, '2022-03-24 20:29:39', '2022-03-24 20:29:39', '2023-03-25 02:29:39'),
('a93498134f753310ca524c2e1e447c9ee6a494db710b096585ecb3dbbae1403013a935aac02bbddf', 5, 1, 'accessToken', '[]', 0, '2022-03-20 03:59:26', '2022-03-20 03:59:26', '2023-03-20 09:59:26'),
('b10ce5754f399e0547e666a954410e765de567a0102f916626a2d04a28953297ded7f963ee698e75', 4, 1, 'accessToken', '[]', 1, '2022-03-17 22:48:44', '2022-03-17 22:48:44', '2023-03-18 04:48:44'),
('b1855369516a70a0b873281f389240b012384fc10e1f6b267b65ac63048b91e47066a9551598a3fd', 2, 1, 'accessToken', '[]', 0, '2022-03-19 19:56:56', '2022-03-19 19:56:56', '2023-03-20 01:56:56'),
('b1de8dd2d369fc4e53079f0c820f2a609f302bc61abaad19d098ca52a3c981c718178c190281af78', 3, 1, 'accessToken', '[]', 1, '2022-03-24 05:03:09', '2022-03-24 05:03:09', '2023-03-24 11:03:09'),
('b212234837c3aaf6d1bfc1484db8538ca792b4fa7d4fec2aff760ad6d99183aa2a903454281fff4d', 10, 1, 'accessToken', '[]', 1, '2022-03-26 03:55:06', '2022-03-26 03:55:06', '2023-03-26 09:55:06'),
('b213b7af37a809c60e6e3a503c7e99c21c41d835ff3dcd87ff53fd32c95ba4790f504f60f40e7160', 4, 1, 'accessToken', '[]', 1, '2022-03-23 03:13:04', '2022-03-23 03:13:04', '2023-03-23 09:13:04'),
('b27be55c97445b191466e25fb68433418a183584b96f420109595afbe5805855f54ed82e9497c698', 2, 1, 'accessToken', '[]', 0, '2022-03-25 00:33:37', '2022-03-25 00:33:37', '2023-03-25 06:33:37'),
('b2b851cd63f19d43904898dbf20da71ecf811c2b73f0ef231a803f67349cc9fd0c9c27bfc4245766', 2, 1, 'accessToken', '[]', 1, '2022-03-22 22:08:52', '2022-03-22 22:08:52', '2023-03-23 04:08:52'),
('b2f476c14f649cdcf7fa4600f51db70ee5ee87374efbe0913e2975c143a149fdd0ba428c645a4c98', 6, 1, 'accessToken', '[]', 0, '2022-03-17 20:56:57', '2022-03-17 20:56:57', '2023-03-18 02:56:57'),
('b516272f7c7dd3cce534d57d9b6306719ac40c87342ce03d2cac64e55df0e1ec440f661410a1ed67', 6, 1, 'accessToken', '[]', 0, '2022-03-25 04:21:04', '2022-03-25 04:21:04', '2023-03-25 10:21:04'),
('bc05f4086f13913df406c995112a09673d420979917962b27143358d2554e196fed200a1d89c0cab', 5, 1, 'accessToken', '[]', 1, '2022-03-23 01:55:12', '2022-03-23 01:55:12', '2023-03-23 07:55:12'),
('bc0b8870d6377060ea84f8202800fcae08af53972e574c064de610babb0cb9186d065e6c6e4aa9cd', 6, 1, 'accessToken', '[]', 1, '2022-03-20 03:29:47', '2022-03-20 03:29:47', '2023-03-20 09:29:47'),
('bc597625b27dd60e942274f5c58cd0d4215b08d71edbe154d2451feab24e93329fbe389b32d8f8f7', 3, 1, 'accessToken', '[]', 1, '2022-03-18 00:53:48', '2022-03-18 00:53:48', '2023-03-18 06:53:48'),
('bea22a0cfe646add8b3be115d542dcf55eaeb8cff7eb28c002ed1314fb55c3c3a4d452ea665d8978', 4, 1, 'accessToken', '[]', 1, '2022-03-23 22:45:54', '2022-03-23 22:45:54', '2023-03-24 04:45:54'),
('bea5c372e5aea13b2d5bca869cdcad22ccaa2953befd995766d130cb57862474a291f020c6659e69', 1, 1, 'accessToken', '[]', 0, '2022-03-16 00:20:29', '2022-03-16 00:20:29', '2023-03-16 06:20:29'),
('bf4ca8a0f1ec8f9f2a01d441e719aeb2d13d307136bfdec90bc676f056b677ae73354dfdab763ad0', 4, 1, 'accessToken', '[]', 1, '2022-03-25 03:12:57', '2022-03-25 03:12:57', '2023-03-25 09:12:57'),
('c0e6738b8c2e09e33dfd13a165431d65d5278aa423b2e74acd99663777b9543d3eedde22a85a733e', 5, 1, 'accessToken', '[]', 1, '2022-03-23 01:57:49', '2022-03-23 01:57:49', '2023-03-23 07:57:49'),
('c2ccf7c0780362f543f7ed8d60e25d00d667521ea092e414220938152be2a8afaf162f48dac54f82', 10, 1, 'accessToken', '[]', 1, '2022-03-26 03:53:43', '2022-03-26 03:53:43', '2023-03-26 09:53:43'),
('c373a5ab8ec7eccae1169c736de1b3951bf3adb36f31b63dc27ead4bfec5ef9e0b5053ed88014d51', 3, 1, 'accessToken', '[]', 1, '2022-03-23 03:37:48', '2022-03-23 03:37:48', '2023-03-23 09:37:48'),
('c8151532750500a5cca85f5a464c140d4ed81612bf76ed28f335bcad0baffeab93ec846b69ccf285', 4, 1, 'accessToken', '[]', 1, '2022-03-25 03:01:07', '2022-03-25 03:01:07', '2023-03-25 09:01:07'),
('c95bb3a14f3eab6b5f25020fd86830bfa8578e14e073d22b71f0d97cd68265cd32a17a33cf4de103', 2, 1, 'accessToken', '[]', 0, '2022-03-24 21:56:34', '2022-03-24 21:56:34', '2023-03-25 03:56:34'),
('c9cff44b6dabf77eb96ebbae68df0541fd6a02db857f5da333f13674e134d8464d8d2236efd06c2c', 10, 1, 'accessToken', '[]', 1, '2022-03-26 03:51:31', '2022-03-26 03:51:31', '2023-03-26 09:51:31'),
('cacdc23c9b362da24c9e42d6ec7cbf9cf055f31cb83e7828d586b4f080d005b7c39ed60f554820e9', 6, 1, 'accessToken', '[]', 1, '2022-03-18 00:29:47', '2022-03-18 00:29:47', '2023-03-18 06:29:47'),
('cb075b19695161f87a99221f5d6c26e27b043de76ce50790d7534786e619eaeddd22281e905f0414', 2, 1, 'accessToken', '[]', 0, '2022-03-18 02:26:22', '2022-03-18 02:26:22', '2023-03-18 08:26:22'),
('cd1303d5948934b3758a099e6c18ad1866e6d4f6bbedecf1de65dc3539ea75e52ec2f1e6164e10b2', 4, 1, 'accessToken', '[]', 1, '2022-03-23 04:36:24', '2022-03-23 04:36:24', '2023-03-23 10:36:24'),
('ce632c8c31a7145258cb51f3e92ffe4f8502abb86cbe7202ef6df518b64175c76c63166283ae3bc9', 5, 1, 'accessToken', '[]', 1, '2022-03-24 00:15:20', '2022-03-24 00:15:20', '2023-03-24 06:15:20'),
('cf736c2912ed38048ad5c926eafc999fb01c9fa8d8aed5c0e235a210dee1dd178235e73ef54492b4', 5, 1, 'accessToken', '[]', 1, '2022-03-19 19:40:38', '2022-03-19 19:40:38', '2023-03-20 01:40:38'),
('d1482652f115a42f29a44af61ecc53808243b41bf8f76300fbfd07a0d80fed12eed9323fdcb3c4c5', 1, 1, 'accessToken', '[]', 0, '2022-03-16 00:23:45', '2022-03-16 00:23:45', '2023-03-16 06:23:45'),
('d2d089a17a6f4cd024fdd1bad9d4465648af606a577441568fdb00c9933725d1b65e7b9b43d5a01a', 2, 1, 'accessToken', '[]', 1, '2022-03-22 21:34:40', '2022-03-22 21:34:40', '2023-03-23 03:34:40'),
('d6b880993f9097d1c5fea176de0c4443e56f129cb1bc233c32ef86b6eae591c1e352b4c5699d8bb5', 2, 1, 'accessToken', '[]', 1, '2022-03-24 23:25:03', '2022-03-24 23:25:03', '2023-03-25 05:25:03'),
('d6bee7eab9b492a50a4824ca61d9292e02867fc639ca897d2538730dbb0400d9b5d504086ab17b8c', 5, 1, 'accessToken', '[]', 1, '2022-03-23 01:58:42', '2022-03-23 01:58:42', '2023-03-23 07:58:42'),
('d7f295a7a821df16c6ff893e51d428598acb34139c60bea20347400eb870a2247510c0a8c165cee2', 4, 1, 'accessToken', '[]', 1, '2022-03-23 01:17:05', '2022-03-23 01:17:05', '2023-03-23 07:17:05'),
('ded84c06eb05c2bec2494557cdfbba2a7303abc54d5255a555d3b5021094c484b32ea79a06536b8a', 8, 1, 'accessToken', '[]', 1, '2022-03-25 03:01:50', '2022-03-25 03:01:50', '2023-03-25 09:01:50'),
('df8820d7664d529548098df839a0feedde1b11ddde21769ab3ef8f4e145bcd5d122350b186298fbe', 2, 1, 'accessToken', '[]', 1, '2022-03-18 01:25:50', '2022-03-18 01:25:50', '2023-03-18 07:25:50'),
('dfae0b3dac611d0aff4b3e228e85157e34e778122f5fa5ce63568b56af69fe36739d57c6b0a51db2', 2, 1, 'accessToken', '[]', 1, '2022-03-23 02:20:23', '2022-03-23 02:20:23', '2023-03-23 08:20:23'),
('e0a8e689d24a92fe9a5b641d248a3cd4f994f734d4689c100eb67e0961cf02ba8983a319867b5509', 8, 1, 'accessToken', '[]', 1, '2022-03-24 22:59:40', '2022-03-24 22:59:40', '2023-03-25 04:59:40'),
('e218a24063ea148ab9d1519e5cf38ae8ed5b417670ec75a959fb7a8da384edc3aab042492e42aafa', 5, 1, 'accessToken', '[]', 1, '2022-03-23 04:36:36', '2022-03-23 04:36:36', '2023-03-23 10:36:36'),
('e22cc2f18fc5fffcee01268a8a9196e99033e17d1d31de7a2d611a41507f47647b17428a12cd7402', 15, 1, 'accessToken', '[]', 1, '2022-03-26 03:57:15', '2022-03-26 03:57:15', '2023-03-26 09:57:15'),
('e410e637df49269993dbaf76d256993e54f47cc0e49422cc79f26495313347195cc493023fc15a9c', 10, 1, 'accessToken', '[]', 1, '2022-03-26 03:45:15', '2022-03-26 03:45:15', '2023-03-26 09:45:15'),
('e655b199445562eae9193e0c40c256fadf9c1e928f604eaab742403784f4d995e0b4212ce8bb0427', 8, 1, 'accessToken', '[]', 1, '2022-03-24 22:56:56', '2022-03-24 22:56:56', '2023-03-25 04:56:56'),
('e8b0f68578d5a30c72077f285998b159b6c9c19db1182575280f0ac1482a319cf08fee7cb4dd4927', 2, 1, 'accessToken', '[]', 1, '2022-03-22 22:37:37', '2022-03-22 22:37:37', '2023-03-23 04:37:37'),
('e9160d4db3213d9ac2218de16289603dd7ccf95d0c46770d1ca48dbe3a7914c31b236413196ad4f9', 6, 1, 'accessToken', '[]', 1, '2022-03-18 00:30:16', '2022-03-18 00:30:16', '2023-03-18 06:30:16'),
('e9d0d8e6d30a963fd93b4517c7d82992ddda194fced4be6ad0acb84c5bd077172663256de4940a35', 2, 1, 'accessToken', '[]', 1, '2022-03-23 03:12:35', '2022-03-23 03:12:35', '2023-03-23 09:12:35'),
('eb1817663e04b04a950e4128dd9ae3e25c09c6068f9d0ba2ca3fc0688722a3ad174b182890ad6962', 10, 1, 'accessToken', '[]', 1, '2022-03-26 03:58:26', '2022-03-26 03:58:26', '2023-03-26 09:58:26'),
('ed5ff0ff8df55a35ab555570b69e293979ef85c475ea723ffc39384497a0b9b1f5d4d4f4d4cf3380', 2, 1, 'accessToken', '[]', 0, '2022-03-18 19:51:22', '2022-03-18 19:51:22', '2023-03-19 01:51:22'),
('ee0e45a75c27c284b8dc1eefc61b33da34ae4c6ff0cd87d8abebd8f2ace90fc2d01b2f03735192a0', 2, 1, 'accessToken', '[]', 1, '2022-03-19 19:37:54', '2022-03-19 19:37:54', '2023-03-20 01:37:54'),
('f07569427c5856aa55ebf775bd0fa998fcceaac89ab13732a5d879ed84ac942509149fb0d3ef14c6', 2, 1, 'accessToken', '[]', 1, '2022-03-18 19:51:23', '2022-03-18 19:51:23', '2023-03-19 01:51:23'),
('f46a7eda1f8dfacae9024146ce07635dada841de299ad4c631b323bc29a12d52e272cc83ece26a59', 4, 1, 'accessToken', '[]', 1, '2022-03-21 02:33:30', '2022-03-21 02:33:30', '2023-03-21 08:33:30'),
('f5fbf9379499ff446bccb5eebbfa3854875a8a27a79efcc3faaddab7b915146a844cf05c1e6d9b4a', 5, 1, 'accessToken', '[]', 0, '2022-03-17 20:46:56', '2022-03-17 20:46:56', '2023-03-18 02:46:56'),
('f684454ce5a032609eeb9b9096fbdfb21c2fd634484e5b846fd20c8731341517d8a26b6308227676', 5, 1, 'accessToken', '[]', 1, '2022-03-22 23:28:28', '2022-03-22 23:28:28', '2023-03-23 05:28:28'),
('f6b723afc8eedb157c0b11f04f6f313e954fb47c72a30ed221d7c5dc384b30686e62103c5f04a2a3', 6, 1, 'accessToken', '[]', 1, '2022-03-25 18:46:07', '2022-03-25 18:46:07', '2023-03-26 00:46:07'),
('f8043533536bc833b6943ed1427855444979a15a64fa23e8e6113e9a9b9ee133a8349db68ea25028', 11, 1, 'accessToken', '[]', 1, '2022-03-24 20:33:01', '2022-03-24 20:33:01', '2023-03-25 02:33:01'),
('f956ab2ec9579d3f77662ecd7f15968a53909fbfb68eab513ca981d51c17f0e23d7ac740dc3363e2', 2, 1, 'accessToken', '[]', 1, '2022-03-21 20:14:55', '2022-03-21 20:14:55', '2023-03-22 02:14:55'),
('f98f7a973e952e856a50cddbf17b13d43f441ee05a1e7272e6d896a62a2a4a97c1258c3bc2a5f8db', 4, 1, 'accessToken', '[]', 1, '2022-03-20 20:34:50', '2022-03-20 20:34:50', '2023-03-21 02:34:50'),
('fbcfe7f237f204bd8e57cfb158f1080273b0cddad693eb70974c92da941426f954dbd7ac3955f67c', 6, 1, 'accessToken', '[]', 1, '2022-03-17 21:47:21', '2022-03-17 21:47:21', '2023-03-18 03:47:21'),
('fe4fd5e2d434d685d78614be6fae86325f026cc40388f9345dbbbb3a1d0507cb986fb121c3559d24', 2, 1, 'accessToken', '[]', 0, '2022-03-23 22:09:20', '2022-03-23 22:09:20', '2023-03-24 04:09:20'),
('fec16405a1e7b66dd578ece4f18c9975a38b7aa0a505f1676cd466fb6ee56cd0e418871304ab2aea', 2, 1, 'accessToken', '[]', 1, '2022-03-23 04:24:50', '2022-03-23 04:24:50', '2023-03-23 10:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
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

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'sdoOGnx6WcqkMiZaXSuNch3srQE40OPi1AwbbOGO', NULL, 'http://localhost', 1, 0, 0, '2022-03-16 00:18:54', '2022-03-16 00:18:54');

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

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-03-16 00:18:54', '2022-03-16 00:18:54');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `task_lists`
--

CREATE TABLE `task_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dec` varchar(700) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `c_date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `success_task` tinyint(4) NOT NULL DEFAULT '0',
  `creator` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `task_lists`
--

INSERT INTO `task_lists` (`id`, `user_id`, `title`, `dec`, `date`, `c_date`, `success_task`, `creator`, `slug`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'kkkkkkkkkkkkkkk', '4hiuhk jfh  safdhh', '12345678', '1-03-2022', 0, NULL, NULL, 1, '2022-03-25 00:54:32', '2022-03-25 00:54:32'),
(2, 4, 'test Task 1', 'Thid is dumi decriptions', '2022-12-06', '1-03-2022', 0, NULL, NULL, 1, '2022-03-25 01:10:33', '2022-03-25 01:10:33'),
(4, 4, 'fhggrh', 'dfgdf', '2022-03-26', '2022-03-27', 0, NULL, NULL, 1, '2022-03-25 02:12:07', '2022-03-25 02:12:07'),
(5, 6, 'অ-নামিকা (কাজী নজরুল ইসলাম)', 'তোমারে বন্দনা করি স্বপ্ন-সহচরী', '2022-03-26', '2022-04-14', 0, NULL, NULL, 1, '2022-03-25 02:17:15', '2022-03-25 02:17:15'),
(6, 8, 'তুমি নহ নিভে যাওয়া আলো, নহ শিখা।', 'বারে বারে একই জন্মে শতবার করি!\r\nযেখানে দেখেছি রূপ,-করেছি বন্দনা প্রিয়া তোমারেই স্মরি’।\r\nরূপে রূপে, অপরূপা, খুঁজেছি তোমায়,\r\nপবনের যবনিকা যত তুলি তত বেড়ে যায়!', '2022-03-26', '2022-03-29', 0, NULL, NULL, 1, '2022-03-25 03:02:30', '2022-03-25 03:02:30'),
(7, 4, 'তুমি নহ নিভে যাওয়া আলো, নহ শিখা।', 'বারে বারে একই জন্মে শতবার করি!\r\nযেখানে দেখেছি রূপ,-করেছি বন্দনা প্রিয়া তোমারেই স্মরি’।\r\nরূপে রূপে, অপরূপা, খুঁজেছি তোমায়,\r\nপবনের যবনিকা যত তুলি তত বেড়ে যায়!', '2022-03-26', '2022-03-29', 0, NULL, NULL, 1, '2022-03-25 03:13:40', '2022-03-25 03:13:40'),
(8, 4, 'বিরহের কান্না-ধোওয়া তৃপ্ত হিয়া ভরি’ বারে বারে উদিয়াছ ইন্দ্রধনুসমা, হাওয়া-পরী প্রিয় মনোরমা! ধরিতে গিয়োছি-তুমি মিলায়েছ দূর দিগ্বলয়ে ব্যথা-দেওয়া রাণী মোর, এলে না ক’ কথা কওয়া হ’য়ে।', 'চির-দূরে থাকা ওগো চির-নাহি-আসা!\r\nতোমারে দেহের তীরে পাবার দুরাশা\r\nগ্রহ হ’তে গ্রহান্তরে ল’য়ে যায় মোরে!\r\nবাসনার বিপুল আগ্রহে-\r\nজন্ম লভি লোকে-লোকান্তরে!\r\nউদ্বেলিত বুকে মোর অতৃপ্ত যৌবন-ক্ষুধা\r\nউদগ্র কামনা,\r\nজন্ম তাই লভি বারে বারে,\r\nনা-পাওয়ার করি আরাধনা!….\r\nযা-কিছু সুন্দর হেরি’ ক’রেছি চুম্বন,\r\nযা-কিছু চুম্বন দিয়া ক’রেছি সুন্দর-\r\nসে-সবার মাঝে যেন তব হরষণ\r\nঅনুভব করিয়াছি!-ছুঁয়েছি অধর\r\nতিলোত্তমা, তিলে তিলে!\r\nতোমারে যে করেছি চুম্বন\r\nপ্রতি তরুণীর ঠোঁটে\r\nপ্রকাশ গোপন।', '2022-03-26', '2022-04-04', 0, NULL, NULL, 1, '2022-03-25 03:14:23', '2022-03-25 03:14:23'),
(9, 4, 'যে কেহ প্রিয়ারে তার চুম্বিয়াছে ঘুম-ভাঙা রাতে, রাত্রি-জাগা তন্দ্রা-লাগা ঘুম-পাওয়া প্রাতে,', 'সে বুঝি সুন্দরতর-আরো আরো মধু!\r\nআমারি বধূর বুকে হাসো তুমি হ’য়ে নববধূ।\r\nবুকে যারে পাই, হায়,\r\nতারি বুকে তাহারি শয্যায়\r\nনাহি-পাওয়া হ’য়ে তুমি কাঁদ একাকিনী,\r\nওগো মোর প্রিয়ার সতিনী।….\r\nবারে বারে পাইলাম-বারে বারে মন যেন কহে-\r\nনহে, এ সে নহে!\r\nকুহেলিকা! কোথা তুমি? দেখা পাব কবে?\r\nজন্মেছিলে জন্মিয়াছ কিম্বা জন্ম লবে?\r\nকথা কও, কও কথা প্রিয়া,', '2022-03-28', '2022-04-04', 0, NULL, NULL, 1, '2022-03-25 03:17:05', '2022-03-25 03:17:05'),
(10, 4, 'প্রেম সত্য, প্রেম-পাত্র বহু-আগণন, তাই-চাই, বুকে পাই, তবু কেন কেঁদে ওঠে মন। মদ সত্য, পাত্র সত্য নয়! যে-পাত্রে ঢালিয়া খাও সেই নেশা হয়! চির-সহচরী!', 'সকলের সাথে আমি চুমিয়াছি তোমা’ সকলের ঠোঁটে যেন,কী যে তুমি, কী যে নহ, কত ভাবি-কত দিকে চাই! নামে নামে, অ-নামিকা, তোমারে কি খুঁজিনু বৃথাই? বৃথাই বাসিনু ভালো? বৃথা সবে ভালোবাসে মোরে? তুমি ভেবে যারে বুকে চেপে ধরি সে-ই যায় স’রে। কেন হেন হয়, হায়, কেন লয় মনে- যারে ভালো বাসিলাম, তারো চেয়ে ভালো কেহ বাসিছে গোপনে।', '2022-03-30', '2022-04-08', 0, NULL, NULL, 1, '2022-03-25 03:17:38', '2022-03-25 03:17:38'),
(12, 4, 'বৃথা আমি খুঁজে মরি’ জন্মে জন্মে করিনু রোদন। প্রতি রূপে, অপরূপা, ডাক তুমি, চিনেছি তোমায়, যাহারে বাসিব ভালো-সে-ই তুমি,', 'যাহারে বাসিব ভালো-সে-ই তুমি,\r\nধরা দেবে তায়!\r\n\r\n\r\nকাব্যগ্রন্থঃ সিন্ধু-হিন্দোল', '2022-03-30', '2022-04-08', 0, NULL, NULL, 1, '2022-03-25 03:19:12', '2022-03-25 03:19:12'),
(13, 4, 'প্রতি রূপে, অপরূপা, ডাক তুমি, চিনেছি তোমায়, যাহারে বাসিব ভালো-সে-ই তুমি,', 'কাব্যগ্রন্থঃ সিন্ধু-হিন্দোল', '2022-03-30', '2022-04-08', 0, NULL, NULL, 1, '2022-03-25 03:19:23', '2022-03-25 03:19:23'),
(14, 4, 'প্রেম এক, প্রেমিকা সে বহু, বহু পাত্রে ঢেলে পি’ব সেই প্রেম- সে শরাব লোহু।', 'তোমারে করিব পান, অ-নামিকা, শত কামনায়, ভৃঙ্গারে, গোলাসে কভু, কভু পেয়ালায়!', '2022-03-30', '2022-04-10', 0, NULL, NULL, 1, '2022-03-25 03:19:50', '2022-03-25 03:19:50'),
(16, 4, 'fgh', 'hjkyk u tyu  urt jub ffkby gh', '2022-03-12', '2022-03-27', 0, NULL, NULL, 1, '2022-03-25 03:29:45', '2022-03-25 03:29:45'),
(17, 5, 'fgh', 'jhhjhkjhhhhhhhhhhhh hkj', '2022-03-12', '2022-03-27', 0, NULL, NULL, 1, '2022-03-25 04:16:27', '2022-03-25 04:16:27'),
(18, 5, 'fghklkk', 'jhhj', '2022-03-12', '2022-12-30', 0, NULL, NULL, 1, '2022-03-25 04:16:54', '2022-03-25 04:16:54'),
(19, 6, '564.505', 'This is test update data test', '2022-03-20', '2022-12-06', 1, NULL, NULL, 1, '2022-03-25 04:21:11', '2022-03-25 20:04:06'),
(20, 6, 'Ipsum is simply a dummy', 'Typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-03-21', '2022-12-31', 0, NULL, NULL, 1, '2022-03-25 04:28:40', '2022-03-25 04:30:35'),
(21, 6, 'Tanvir Hasan', 'fgujyj', '2022-03-21', '2022-12-31', 0, NULL, NULL, 1, '2022-03-25 04:29:54', '2022-03-25 20:04:21'),
(22, 6, 'dummy', 'Lorem Ipsum is simply a text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s,', '2022-03-21', '2022-12-31', 1, NULL, NULL, 1, '2022-03-25 04:30:05', '2022-03-25 19:08:40'),
(23, 6, NULL, 'dfsg', NULL, NULL, 0, NULL, NULL, 1, '2022-03-25 20:06:24', '2022-03-25 20:06:24'),
(24, 6, NULL, NULL, NULL, NULL, 0, NULL, NULL, 1, '2022-03-25 20:06:33', '2022-03-25 20:06:33'),
(25, 6, 'nnnnnnn', 'dfsg', NULL, NULL, 0, NULL, NULL, 1, '2022-03-25 20:07:46', '2022-03-25 20:07:46'),
(26, 10, 'Tanvir test', 'আমি এমন একটা তুমি চাই এমন একটা তুমি চাই যে তুমিতে আমি ছাড়া অন্য কেউ নাই আমি এমন একটা তুমি চাই এমন একটা তুমি চাই যে তুমিতে আমি ছাড়া অন্য কেউ নাই তুমি একবার বলো যদি আমি পাড়ি দেবো খরস্রোতা নদী তুমি একবার বলো যদি আমি পাড়ি দেবো খরস্রোতা নদী ভালোবাসা দেবো পুরোটা', '2022-03-20', '2022-03-27', 1, NULL, NULL, 1, '2022-03-25 20:34:54', '2022-03-25 20:46:47'),
(27, 2, 'hghfh', 'gfhfgjh', '2022-03-15', '2022-03-28', 0, NULL, NULL, 1, '2022-03-25 20:50:38', '2022-03-25 20:50:38'),
(28, 2, 'fghfdh hghfh', 'gfh fgjhgh', '2022-03-15', '2022-03-28', 1, NULL, NULL, 1, '2022-03-25 20:50:47', '2022-03-25 20:51:08'),
(29, 15, 'This is test Task Add', 'Success', '2022-03-09', '2022-03-29', 0, NULL, NULL, 1, '2022-03-26 04:08:53', '2022-03-26 04:08:53'),
(30, 15, 'Success', 'This is test Task Add', '2022-03-09', '2022-03-29', 1, NULL, NULL, 1, '2022-03-26 04:09:27', '2022-03-26 04:09:30'),
(31, 10, 'This is test Task Add', 'Success', '2022-03-09', '2022-03-29', 0, NULL, NULL, 1, '2022-03-26 04:09:58', '2022-03-26 04:09:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_serial` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `forget_token` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `role_serial`, `image`, `email`, `email_verified_at`, `password`, `forget_token`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'super_admin', '1', NULL, 'superadmin@gmail.com', NULL, '$2y$10$JNZiEZIn74jeFY3j6gGX7ODF28WkJteuHJ46X8llguygBg7UhTSf.', NULL, NULL, NULL, NULL),
(2, 'admin', '2', 'uploads/6FBF7cJXedb6GXlIYbEzywKB1OVpO6y9i7oBrN9x.png', 'admin@gmail.com', NULL, '$2y$10$nBPyA/OuYOxJ/YdQDgwGjOgNmpNFz4jKHeUworA/MOPkHKddFAZU6', NULL, NULL, NULL, '2022-03-23 03:37:06'),
(3, 'Teacher', '3', 'uploads/pXfsIbyB6ZFCxGrE6HWJyowgEPM6iTRvHCRX5lah.jpg', 'management@gmail.com', NULL, '$2y$10$WGYvd3XuVpn6FMmceM5I5OHZK6MCWZoBCPfG4vxFWUfgxzJSGW9pK', '$2y$10$o5bS0jEt2M071vot0d3wa.IzNWN7gePP0xAlYDFQxl/cKMieJgcHC', NULL, NULL, '2022-03-23 03:44:22'),
(4, 'student', '4', 'uploads/XZYT9Y6dRP0n5RIGsbfOd6JYvNzRijBigNUP8KM1.jpg', 'student@gmail.com', NULL, '$2y$10$dKdJvkjJNEDOD8jv02HQMu88vjIo11HNUQnAelmGYkd9o5mMlnMTK', '$2y$10$tpLbN.Pg66W73VLyBpK41OPvfeW9TVh42.aGlAIJGOlc/KdRD04Tu', NULL, NULL, '2022-03-19 19:41:29'),
(5, 'Tanvir Md. Al-Amin', '4', 'uploads/pZdzhuwv1epAv9WdOYiaKJFxgm2WhcbkOP52D6wi.jpg', 'user1@gmail.com', NULL, '$2y$10$Dv5CRa2.PwDdDMqDCyshielqred4Afb.4gWs6XxS6MuJAz3lZOUcW', '$2y$10$8PCsS6UaSTDFUVEVs76ZyeBsyv4PacZ3qu4bPPF6PDUbnlrQTIpdq', NULL, '2022-03-17 20:46:56', '2022-03-23 04:37:10'),
(6, 'Guest', '4', 'uploads/aN3xnyNW2K55nwLx91bsW7kkVTCePnAFKYdNonDk.png', 'user@gmail.com', NULL, '$2y$10$azBPmWJa7mdRHcknU03Fz.mfAXMhTfG4qs/U6aSu2q3wh8zMb6wHe', NULL, NULL, '2022-03-17 20:52:10', '2022-03-22 23:14:54'),
(7, 'Tanvir Md. Al-Amin', '4', NULL, '1tanvirmdalamin@gmail.com', NULL, '$2y$10$CGis96J0FsfvEcgbHFxlLOpf44AvjK4f1I4fwuwMRE4UtoE3emsEi', NULL, NULL, '2022-03-24 05:01:46', '2022-03-24 05:01:46'),
(8, 'Al - Amin', '4', NULL, 'al-amin@seopage1.net', NULL, '$2y$10$.NGbVtglUhZ9PgjNxs4Dsu8ZSsQ1OFFzChce2H1fFaQA4FtR1ojE6', NULL, NULL, '2022-03-24 19:41:20', '2022-03-24 19:41:20'),
(9, 'tanvir', '3', NULL, '01mdalamin1@gmail.com', NULL, '$2y$10$quc4XBqaVDSICQ3ZgBzdWeVZGaFCzUOyFkOfr0RN4s.EOSs6eDR36', NULL, NULL, '2022-03-24 19:49:18', '2022-03-24 19:49:18'),
(10, 'Afroza', '2', NULL, 'virza805@gmail.com', NULL, '$2y$10$OG0pYZRGc3yjDjtx05PLoeacYTad0W2TacEv5I6rgwQDpXzJHP6p6', NULL, NULL, '2022-03-24 20:13:42', '2022-03-26 06:00:44'),
(11, 'tanvir', '2', NULL, 'onamicatanvir@gmail.com', NULL, '$2y$10$G34kl163BfZXf9QH3/YvvOjk0vEwVCd70.rkcw.VP5iooVIdDQ3Zm', NULL, NULL, '2022-03-24 20:19:26', '2022-03-24 20:19:26'),
(12, 'Sayeed', '4', 'uploads/SHRbwHCh2RfjFSlMEuTSrOpApv5NHfl2CKb5GSWf.png', 'sayeed@gmail.com', NULL, '$2y$10$P3QHu59FLfaSGz3hg6GDg.YVm2IvKMmvi/zRAFT8GDwYt/uNvZ9Nq', NULL, NULL, '2022-03-24 20:29:38', '2022-03-24 20:31:01'),
(13, 'Hasan', '3', NULL, 'teacher@gmail.com', NULL, '$2y$10$9guo2H0MbTpo3QJbRMvtaeLxjzSP/EjWesceuaGe6rRG9vi9Ql6YK', NULL, NULL, '2022-03-24 22:14:45', '2022-03-24 22:14:45'),
(14, 'TANJIL', '4', NULL, 'mdtanjil8915@gmail.com', NULL, '$2y$10$kXzKU2QCu45AIYVwaNVpfewYpIOdiy0pYjQe0JwmlJff5S4GBPQ8.', NULL, NULL, '2022-03-25 07:17:27', '2022-03-25 07:17:27'),
(15, 'virza = zavir', '3', NULL, 'virza.bd@gmail.com', NULL, '$2y$10$HKFXdBrJo5QStSJVsfAh0OiQuuwt9bnCVlhajQcXgXs0F.PPCz95G', NULL, NULL, '2022-03-26 03:57:15', '2022-03-26 04:08:05');

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
  `status` int(11) NOT NULL DEFAULT '1',
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
  ADD KEY `password_resets_email_index` (`email`(191));

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`(191),`tokenable_id`);

--
-- Indexes for table `task_lists`
--
ALTER TABLE `task_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `book_lists`
--
ALTER TABLE `book_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `task_lists`
--
ALTER TABLE `task_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user_roles`
--
ALTER TABLE `user_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
