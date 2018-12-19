-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 21, 2018 at 10:15 PM
-- Server version: 5.7.24-0ubuntu0.16.04.1
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mui`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `order`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'Category 1', 'category-1', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(2, NULL, 1, 'Category 2', 'category-2', '2018-03-14 18:30:18', '2018-03-14 18:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `cleaners`
--

CREATE TABLE `cleaners` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sex` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `city` int(11) DEFAULT '0',
  `rate` int(11) DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pay_rate` int(11) DEFAULT NULL,
  `if_vip` int(11) NOT NULL DEFAULT '0',
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL,
  `work_years` int(11) NOT NULL,
  `languages` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `skills` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `id_image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cleaners`
--

INSERT INTO `cleaners` (`id`, `user_id`, `email`, `phone`, `name`, `sex`, `created_at`, `updated_at`, `city`, `rate`, `avatar`, `pay_rate`, `if_vip`, `address`, `lat`, `lng`, `work_years`, `languages`, `skills`, `id_image`) VALUES
(6, '49', 'foreserviceltd@gmail.com', '6042838800', 'WiiCleaner', 0, '2018-07-23 23:40:00', '2018-10-18 13:06:50', 2, 4, 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-08%2F15284921249940?alt=media&token=26225bb2-b724-4f53-b3f9-fee799837929', 30, 1, '200 W Broadway, Vancouver, BC V5Y 3W2, Canada', 49.26303319999999, -123.10952270000001, 2, 'En,Zh', '["General Cleaning","Kitchen Cleaning","Microwave Cleaning","Fridge Cleaning","Stove Cleaning","Oven Cleaning","Bathroom Cleaning"]', ''),
(16, '55', 'rik@gmail.com', '6047195215', 'Developer', 0, '2018-07-25 05:57:58', '2018-07-24 22:57:58', 3, 4, 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-07-21%2F15321520796190?alt=media&token=d409faa1-a9e4-4b52-8c14-1beeef14841a', 20, 0, '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', 49.2409377, -123.05677689999999, 1, 'En,Zh', '[]', ''),
(17, '60', 'richardyych@gmail.com', '6047195215', 'test', 0, '2018-07-24 09:42:00', '2018-10-10 18:12:28', 1, 4, 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-28%2F15302166255950?alt=media&token=c7bedaec-f2a7-40d4-98d9-292d24f5a4ea', 16, 0, '4299 Kingsway, Burnaby, BC, Canada', 49.3286251, -123.16019819999997, 6, 'Chinese, English', '["General Cleaning","Kitchen Cleaning","Microwave Cleaning","Fridge Cleaning","Stove Cleaning"]', ''),
(18, '64', 'adrianleung100@gmail.com', '6042838800', 'Adrian', 0, '2018-10-07 04:26:04', '2018-10-06 21:26:04', 2, NULL, NULL, 24, 0, '999 Granville St, Vancouver, BC V6Z 2A8, Canada', 49.27961669999999, -123.12308810000002, 0, 'Zh,En', '["General Cleaning"]', ''),
(19, '66', 'admin@test.com', '6047195215', 'Dev_Y', 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '', '', ''),
(20, '68', 'wtbrian710@gmail.com', '6047678248', 'Brian', 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '', '', ''),
(21, '72', 'aaaddd@gmail.com', '7787755505', 'Sum', 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52', 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, 0, '', '', ''),
(22, '73', 'addlll@gmail.com', '7787777777', 'Wai', 0, '2018-09-20 13:45:00', '2018-09-24 18:52:30', 0, NULL, NULL, 15, 0, NULL, NULL, NULL, 0, 'English', '["General Cleaning","Kitchen Cleaning","Fridge Cleaning","Rotate Bedding"]', ''),
(23, '74', 'richardyych2@gmail.com', '6047195215', 'yyc', 0, '2018-09-27 09:54:00', '2018-09-26 12:56:29', 1, NULL, 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-09-26%2F15379916580400?alt=media&token=9f3e0780-90f8-4599-9f40-3efe7f50ff01', 12, 0, '1773 Kingsway, Vancouver, BC V5N 2S5, Canada', 49.246797, -123.06828719999999, 0, 'Zh,En', '["General Cleaning"]', 'cleaners/September2018/Fd9D6amCh4LwfnWQ6LP4.png'),
(24, '77', '123@gmil.com', '6047195215', '123', 0, '2018-10-06 00:51:00', '2018-10-05 11:11:02', 0, NULL, NULL, 1, 0, '2382 Kingsway, Vancouver, BC, Canada', 49.2409377, -123.05677689999999, 1, 'Zh,En', '', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-10-05%2F15387618941090?alt=media&token=f54bd308-6fe2-41c6-a6e7-2a7dfc72656b'),
(25, '78', 'Stanleycheung0407@gmail.com', '6047853652', 'Stan', 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34', 0, NULL, NULL, 20, 0, NULL, NULL, NULL, 2, '', '', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-10-07%2F15389265875290?alt=media&token=c66e8395-e9bb-4abc-97b9-68d090d335ab'),
(26, '79', 'jflj@gmail.com', '2361234567', 'Adria', 0, '2018-10-11 01:17:20', '2018-10-10 18:17:20', 1, NULL, 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-10-11%2F15392206390220?alt=media&token=5a1779df-5e52-41a7-afe2-138c30a7151c', 20, 0, '5432 Kingsway, Burnaby, BC, Canada', 49.2237476, -122.98585939999998, 11, 'Chinese, English', '["Kitchen Cleaning"]', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-10-10%2F15391566005390?alt=media&token=57de6d94-38c8-49e4-a83b-24953d47f50b'),
(27, '82', 'adrianel@gmail.com', '6041234567', 'Adll', 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20', 0, NULL, NULL, 20, 0, NULL, NULL, NULL, 5, '', '', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-10-18%2F15398220758690?alt=media&token=0c46f406-c410-413c-afb7-582b32fee42c');

-- --------------------------------------------------------

--
-- Table structure for table `cleaner_reviews`
--

CREATE TABLE `cleaner_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `rate` int(11) NOT NULL,
  `images` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cleaner_reviews`
--

INSERT INTO `cleaner_reviews` (`id`, `order_id`, `user_id`, `cleaner_id`, `comments`, `rate`, `images`, `created_at`, `updated_at`) VALUES
(1, 1, 56, 16, 'Very Good!', 4, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-08%2F15284949938930?alt=media&token=1e362c3c-4b16-4e27-896d-a75175ab4551"]', '2018-06-08 14:56:35', '2018-06-08 14:56:35'),
(2, 2, 56, 16, 'Really Poor', 2, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-08%2F15284972665200?alt=media&token=4864f13e-cc0e-4d32-8358-dcd59396ed55"]', '2018-06-08 15:34:27', '2018-06-08 15:34:27'),
(3, 3, 56, 6, 'Good', 4, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-08%2F15284988760830?alt=media&token=be4c7352-ebcf-4c62-a28c-c2c506fc1181"]', '2018-06-08 16:01:22', '2018-06-08 16:01:22'),
(4, 8, 58, 16, 'Perfect', 3, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-11%2F15287573985131?alt=media&token=b6c6f5ed-e4cb-471a-bed9-08c70f007233","https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-11%2F15287573985060?alt=media&token=d73994bf-bc75-452d-bf78-67c5a3248a64","https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-11%2F15287573985502?alt=media&token=019255bd-0fed-4df1-ac0a-9ef9cd0b2bea"]', '2018-06-11 15:50:08', '2018-06-11 15:50:08'),
(5, 17, 59, 16, '很棒', 4, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-22%2F15296849738172?alt=media&token=193e929e-221b-463b-be46-aa915425a0f6","https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-22%2F15296849738171?alt=media&token=217d177e-56ad-48f7-9004-6d8ca9b643ea","https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-22%2F15296849738173?alt=media&token=59920ecd-194b-419b-bf65-7c4dcc7fda88","https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-22%2F15296849738150?alt=media&token=c8c34ce4-3c7f-409c-9435-491e6223c136"]', '2018-06-22 09:29:39', '2018-06-22 09:29:39'),
(6, 22, 56, 16, 'GOOD', 1, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-28%2F15302214390870?alt=media&token=0b1e46da-7707-4b96-a815-7046311a21cd"]', '2018-06-28 14:30:50', '2018-06-28 14:30:50'),
(7, 21, 57, 16, 'Good', 5, '[]', '2018-06-30 16:52:47', '2018-06-30 16:52:47'),
(8, 24, 56, 17, '666666666666666', 5, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-07-19%2F15320254982700?alt=media&token=9c105820-22e4-49c6-a0d7-58d4a0bdd629"]', '2018-07-19 11:38:19', '2018-07-19 11:38:19'),
(9, 30, 63, 17, 'app test', 3, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-07-23%2F15323245324630?alt=media&token=d789167e-799a-4c57-97a7-360220a0dc56"]', '2018-07-22 22:42:21', '2018-07-22 22:42:21'),
(10, 12, 56, 16, 'hahah', 4, '["https:\\/\\/firebasestorage.googleapis.com\\/v0\\/b\\/foreclient-d7a02.appspot.com\\/o\\/images%2F2018-07-23%2F15323250518020?alt=media&token=61b43b88-3726-43cb-af5b-7e3707b09bd8"]', '2018-09-18 17:55:13', '2018-09-18 10:55:13'),
(11, 33, 57, 16, 'Good job!!', 5, '[]', '2018-09-22 07:10:04', '2018-09-22 00:10:04');

-- --------------------------------------------------------

--
-- Table structure for table `cleaner_schedules`
--

CREATE TABLE `cleaner_schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `day` int(11) NOT NULL,
  `start` int(11) NOT NULL,
  `end` int(11) NOT NULL,
  `active` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `cleaner_schedules`
--

INSERT INTO `cleaner_schedules` (`id`, `cleaner_id`, `day`, `start`, `end`, `active`, `created_at`, `updated_at`) VALUES
(7, 16, 1, 7, 18, 1, '2018-07-21 06:12:12', '2018-07-20 23:12:12'),
(8, 16, 2, 8, 18, 1, '2018-06-08 21:19:17', '2018-06-08 14:19:17'),
(9, 16, 3, 8, 18, 1, '2018-06-08 21:19:17', '2018-06-08 14:19:17'),
(10, 16, 4, 8, 18, 1, '2018-06-08 21:19:17', '2018-06-08 14:19:17'),
(11, 16, 5, 8, 18, 1, '2018-06-08 21:19:17', '2018-06-08 14:19:17'),
(12, 16, 6, 8, 18, 1, '2018-06-08 21:19:17', '2018-06-08 14:19:17'),
(13, 16, 7, 9, 19, 1, '2018-06-11 00:14:32', '2018-06-10 17:14:32'),
(14, 17, 1, 8, 23, 1, '2018-08-02 04:04:14', '2018-08-01 21:04:14'),
(15, 17, 2, 8, 23, 1, '2018-07-23 05:19:49', '2018-07-22 22:19:49'),
(16, 17, 3, 8, 23, 1, '2018-07-23 05:19:49', '2018-07-22 22:19:49'),
(17, 17, 4, 8, 23, 1, '2018-07-23 05:19:49', '2018-07-22 22:19:49'),
(18, 17, 5, 8, 23, 1, '2018-07-23 05:19:49', '2018-07-22 22:19:49'),
(19, 17, 6, 8, 23, 1, '2018-07-23 05:19:37', '2018-07-22 22:19:37'),
(20, 17, 7, 8, 23, 1, '2018-07-23 05:18:04', '2018-07-22 22:18:04'),
(21, 18, 1, 8, 18, 1, '2018-07-25 21:14:25', '2018-07-25 14:14:25'),
(22, 18, 2, 8, 18, 1, '2018-07-25 21:14:25', '2018-07-25 14:14:25'),
(23, 18, 3, 9, 15, 1, '2018-11-05 23:51:08', '2018-11-05 15:51:08'),
(24, 18, 4, 8, 18, 1, '2018-07-25 21:14:25', '2018-07-25 14:14:25'),
(25, 18, 5, 5, 23, 1, '2018-10-31 20:44:40', '2018-10-31 13:44:40'),
(26, 18, 6, 8, 16, 1, '2018-11-09 05:23:22', '2018-11-08 21:23:22'),
(27, 18, 7, 8, 19, 1, '2018-11-09 05:23:22', '2018-11-08 21:23:22'),
(28, 19, 1, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(29, 19, 2, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(30, 19, 3, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(31, 19, 4, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(32, 19, 5, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(33, 19, 6, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(34, 19, 7, 8, 18, 0, '2018-07-25 14:29:05', '2018-07-25 14:29:05'),
(35, 20, 1, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(36, 20, 2, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(37, 20, 3, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(38, 20, 4, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(39, 20, 5, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(40, 20, 6, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(41, 20, 7, 8, 18, 0, '2018-08-01 00:00:00', '2018-08-01 00:00:00'),
(42, 21, 1, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(43, 21, 2, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(44, 21, 3, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(45, 21, 4, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(46, 21, 5, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(47, 21, 6, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(48, 21, 7, 8, 18, 0, '2018-09-19 23:40:52', '2018-09-19 23:40:52'),
(49, 22, 1, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(50, 22, 2, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(51, 22, 3, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(52, 22, 4, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(53, 22, 5, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(54, 22, 6, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(55, 22, 7, 8, 18, 0, '2018-09-19 23:45:29', '2018-09-19 23:45:29'),
(56, 23, 1, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(57, 23, 2, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(58, 23, 3, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(59, 23, 4, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(60, 23, 5, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(61, 23, 6, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(62, 23, 7, 8, 18, 1, '2018-09-26 19:54:34', '2018-09-26 12:54:34'),
(63, 24, 1, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(64, 24, 2, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(65, 24, 3, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(66, 24, 4, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(67, 24, 5, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(68, 24, 6, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(69, 24, 7, 8, 18, 0, '2018-10-05 10:51:43', '2018-10-05 10:51:43'),
(70, 25, 1, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(71, 25, 2, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(72, 25, 3, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(73, 25, 4, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(74, 25, 5, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(75, 25, 6, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(76, 25, 7, 8, 18, 0, '2018-10-07 08:36:34', '2018-10-07 08:36:34'),
(77, 26, 1, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(78, 26, 2, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(79, 26, 3, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(80, 26, 4, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(81, 26, 5, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(82, 26, 6, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(83, 26, 7, 8, 18, 0, '2018-10-10 00:30:23', '2018-10-10 00:30:23'),
(84, 27, 1, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20'),
(85, 27, 2, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20'),
(86, 27, 3, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20'),
(87, 27, 4, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20'),
(88, 27, 5, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20'),
(89, 27, 6, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20'),
(90, 27, 7, 8, 18, 0, '2018-10-17 17:21:20', '2018-10-17 17:21:20');

-- --------------------------------------------------------

--
-- Table structure for table `client_reviews`
--

CREATE TABLE `client_reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `comments` text COLLATE utf8_unicode_ci,
  `rate` int(11) DEFAULT NULL,
  `images` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `client_reviews`
--

INSERT INTO `client_reviews` (`id`, `order_id`, `user_id`, `cleaner_id`, `comments`, `rate`, `images`, `created_at`, `updated_at`) VALUES
(1, 3, 56, 6, '66666', 5, NULL, '2018-07-20 00:53:00', '2018-07-21 08:05:44'),
(2, 22, 56, 16, '客戶評價测试', 4, '["https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-07-21%2F15321855642830?alt=media&token=98f0f589-6166-41c9-9f43-42f15f236ece"]', '2018-07-21 08:06:16', '2018-07-21 08:06:16'),
(3, 12, 56, 16, '6666666666666', 5, '[]', '2018-07-21 08:07:29', '2018-07-21 08:07:29'),
(4, 2, 56, 16, 'bad', 1, '[]', '2018-07-21 08:09:22', '2018-07-21 08:09:22'),
(5, 33, 57, 16, 'Good Client！', 5, '[]', '2018-07-24 23:05:46', '2018-07-24 23:05:46'),
(6, 21, 57, 16, 'Good', 4, '[]', '2018-08-01 11:01:09', '2018-08-01 11:01:09'),
(7, 36, 57, 18, 'Good', 5, '[]', '2018-10-31 13:43:13', '2018-10-31 13:43:13');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
(5, 1, 'excerpt', 'text_area', 'excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 0, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 1, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 0, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 0, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"name","pivot_table":"roles","pivot":"0"}', 10),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, NULL, 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 3, 'phone', 'text', 'Phone', 0, 1, 1, 1, 1, 1, NULL, 7),
(56, 3, 'user_hasmany_post_relationship', 'relationship', 'posts', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Post","table":"posts","type":"hasMany","column":"author_id","key":"id","label":"id","pivot_table":"categories","pivot":"0"}', 11),
(57, 7, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(58, 7, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, NULL, 2),
(59, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(60, 7, 'status', 'text', 'Status', 0, 1, 0, 0, 0, 0, NULL, 4),
(61, 7, 'from', 'text', 'From', 0, 1, 0, 0, 0, 0, NULL, 5),
(62, 7, 'to', 'text', 'To', 0, 1, 0, 0, 0, 0, NULL, 6),
(63, 7, 'body', 'text', 'Body', 0, 1, 0, 0, 0, 0, NULL, 7),
(64, 7, 'deleted_at', 'timestamp', 'Deleted At', 0, 1, 0, 0, 0, 0, NULL, 8),
(65, 7, 'code', 'text', 'Code', 0, 1, 0, 0, 0, 0, NULL, 9),
(66, 8, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(67, 8, 'created_at', 'timestamp', 'Created At', 0, 1, 0, 0, 0, 0, NULL, 2),
(68, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 3),
(69, 8, 'deleted_at', 'timestamp', 'Deleted At', 0, 0, 0, 0, 0, 0, NULL, 4),
(70, 8, 'path', 'image', 'Path', 0, 1, 1, 1, 1, 0, NULL, 5),
(71, 9, 'id', 'number', 'Id', 1, 0, 1, 0, 0, 0, NULL, 2),
(72, 9, 'order_type', 'select_dropdown', 'Order Type', 1, 1, 1, 1, 0, 0, '{"options":{"0":"","1":"airbnb","2":"home","3":"moving"}}', 4),
(73, 9, 'name', 'text', 'Name', 0, 1, 1, 1, 0, 0, NULL, 5),
(74, 9, 'phone', 'text', 'Phone', 0, 1, 1, 1, 0, 0, NULL, 6),
(75, 9, 'address', 'text', 'Address', 0, 1, 1, 1, 0, 0, NULL, 8),
(76, 9, 'time', 'time', 'Time', 0, 1, 1, 0, 0, 0, NULL, 9),
(77, 9, 'bedroom', 'number', 'Bedroom', 0, 0, 1, 1, 0, 0, NULL, 11),
(78, 9, 'bathroom', 'number', 'Bathroom', 0, 0, 1, 1, 0, 0, NULL, 12),
(79, 9, 'additional', 'select_multiple', 'Additional', 0, 0, 1, 1, 0, 0, '{"options":{"0":"","1":"Inside fridge","2":"Inside oven","3":"Inside cabinets","4":"Interior windows","5":"Laundry wash & dry"}}', 13),
(80, 9, 'cleaner_id', 'number', 'Cleaner Id', 0, 1, 1, 1, 0, 0, NULL, 15),
(81, 9, 'cleaner_rate', 'number', 'Cleaner Rate', 0, 0, 1, 0, 0, 0, NULL, 16),
(82, 9, 'hours', 'number', 'Hours', 0, 0, 1, 0, 0, 0, NULL, 17),
(83, 9, 'price', 'number', 'Price', 0, 1, 1, 1, 0, 0, NULL, 18),
(84, 9, 'order_status', 'select_dropdown', 'Order Status', 0, 1, 1, 1, 0, 0, '{"options":{"0":"请选择","1":"订单已创建","2":"已选择Cleaner","3":"已付款","4":"选择其他时间（等确认）","5":"服务中","6":"已完成","7":"已取消","8":"已取消未退款","9":"已取消已退款","10":"<24 更改收30%"}}', 19),
(85, 9, 'if_changed', 'select_dropdown', 'If Changed', 0, 0, 1, 1, 0, 0, '{"options":{"0":"未修改","1":"已修改日期"}}', 20),
(86, 9, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 21),
(87, 9, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 22),
(88, 9, 'deleted_at', 'timestamp', 'Deleted At', 1, 0, 0, 0, 0, 0, NULL, 23),
(89, 9, 'city', 'text', 'City', 0, 1, 1, 1, 0, 0, '{"op":{"0":"","Vancouver":"Vancouver","Richmond":"Richmond","Burnaby":"Burnaby","Coquiltlam":"Coquiltlam","Surrey":"Surrey"}}', 7),
(90, 10, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(91, 10, 'token', 'text', 'Token', 1, 1, 1, 1, 1, 1, NULL, 2),
(92, 10, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(93, 10, 'phone', 'text', 'Phone', 1, 1, 1, 1, 1, 1, NULL, 4),
(94, 10, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(95, 10, 'sex', 'select_dropdown', 'Sex', 1, 1, 1, 1, 1, 1, '{"options":{"0":"","1":"男","2":"女"}}', 6),
(96, 11, 'id', 'number', 'Cleaner Id', 1, 1, 1, 0, 0, 0, NULL, 1),
(98, 11, 'email', 'text', 'Email', 1, 1, 1, 1, 0, 0, NULL, 3),
(99, 11, 'phone', 'text', 'Phone', 1, 1, 1, 1, 0, 0, NULL, 4),
(100, 11, 'name', 'text', 'Name', 1, 1, 1, 1, 0, 0, NULL, 5),
(101, 11, 'sex', 'select_dropdown', 'Sex', 0, 1, 1, 1, 0, 0, '{"options":{"0":"","1":"男","2":"女"}}', 6),
(102, 11, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 0, NULL, 7),
(103, 11, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 8),
(104, 11, 'city', 'select_dropdown', 'City', 0, 1, 1, 1, 0, 0, '{"options":{"0":"","1":"Vancouver","2":"Richdmond","3":"Burnaby","4":"Coquiltlam","5":"Surrey"}}', 9),
(105, 11, 'rate', 'number', 'Rate', 0, 1, 1, 0, 0, 0, NULL, 10),
(106, 11, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 0, 0, NULL, 11),
(107, 12, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(108, 12, 'cleaner_id', 'number', 'Cleaner Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(109, 12, 'day', 'select_dropdown', 'Day', 1, 1, 1, 1, 1, 1, '{"options":{"0":"","1":"周一","2":"周二","3":"周三","4":"周四","5":"周五","6":"周六","7":"周日"}}', 3),
(110, 12, 'start', 'number', 'Start', 1, 1, 1, 1, 1, 1, NULL, 4),
(111, 12, 'end', 'number', 'End', 1, 1, 1, 1, 1, 1, NULL, 5),
(112, 12, 'active', 'radio_btn', 'Active', 1, 1, 1, 1, 1, 1, '{"options":{"0":"未激活","1":"激活"}}', 6),
(113, 9, 'start_time', 'text', 'Start Time', 0, 0, 1, 0, 0, 0, NULL, 24),
(114, 9, 'end_time', 'text', 'End Time', 0, 1, 1, 0, 0, 0, NULL, 10),
(115, 9, 'serve_time', 'timestamp', 'Serve Time', 1, 0, 1, 0, 0, 0, NULL, 25),
(116, 11, 'pay_rate', 'number', 'Pay Rate', 0, 1, 1, 1, 0, 0, NULL, 12),
(117, 13, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 0),
(118, 13, 'cleaner_id', 'number', 'Cleaner Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(119, 13, 'order_id', 'number', 'Order Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(120, 13, 'status', 'number', 'Status', 1, 0, 0, 0, 0, 0, NULL, 4),
(121, 13, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 5),
(122, 13, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 6),
(123, 3, 'type', 'select_dropdown', 'Type', 0, 1, 1, 1, 1, 1, '{"options":{"0":"未审核","1":"客户","2":"审核Cleaner"}}', 8),
(124, 3, 'firebase_token', 'text', 'Firebase Token', 0, 1, 1, 1, 1, 1, NULL, 9),
(125, 9, 'user_id', 'number', 'User Id', 1, 0, 1, 0, 0, 0, NULL, 3),
(126, 14, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 0),
(127, 14, 'payment_number', 'text', 'Payment Number', 1, 1, 0, 0, 0, 0, NULL, 2),
(128, 14, 'order_id', 'number', 'Order Id', 1, 1, 0, 0, 0, 0, NULL, 3),
(130, 14, 'created_at', 'timestamp', 'Created At', 1, 1, 0, 0, 0, 0, NULL, 5),
(131, 14, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 6),
(132, 14, 'amount', 'number', 'Amount', 1, 1, 1, 1, 0, 0, NULL, 4),
(133, 9, 'agent_fee', 'number', 'Agent Fee', 0, 1, 1, 1, 0, 0, NULL, 26),
(134, 9, 'cancel_reason', 'text', 'Cancel Reason', 0, 0, 1, 1, 0, 0, NULL, 27),
(135, 15, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 0),
(136, 15, 'order_id', 'number', 'Order Id', 1, 1, 1, 0, 0, 0, NULL, 2),
(137, 15, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, NULL, 3),
(138, 15, 'cleaner_id', 'number', 'Cleaner Id', 1, 1, 1, 0, 0, 0, NULL, 4),
(139, 15, 'comments', 'text_area', 'Comments', 1, 1, 1, 1, 0, 0, NULL, 5),
(140, 15, 'rate', 'number', 'Rate', 1, 1, 1, 1, 0, 0, NULL, 6),
(141, 15, 'images', 'multiple_images', 'Images', 1, 1, 1, 0, 0, 0, NULL, 7),
(142, 15, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 8),
(143, 15, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 9),
(144, 9, 'review_status', 'checkbox', 'Review Status', 0, 0, 1, 0, 0, 0, NULL, 28),
(145, 11, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, NULL, 2),
(146, 11, 'if_vip', 'number', 'If Vip', 1, 1, 1, 0, 0, 0, NULL, 13),
(147, 11, 'address', 'text', 'Address', 0, 1, 1, 1, 0, 0, NULL, 14),
(148, 11, 'lat', 'number', 'Lat', 0, 1, 1, 1, 0, 0, NULL, 15),
(149, 11, 'lng', 'number', 'Lng', 0, 1, 1, 1, 0, 0, NULL, 16),
(150, 11, 'cleaner_hasmany_order_relationship', 'relationship', 'orders', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\Order","table":"orders","type":"hasMany","column":"cleaner_id","key":"id","label":"id","pivot_table":"categories","pivot":"0"}', 17),
(151, 11, 'work_years', 'number', 'Work Years', 1, 1, 1, 1, 0, 0, NULL, 17),
(152, 11, 'languages', 'text', 'Languages', 1, 1, 1, 1, 0, 0, NULL, 18),
(153, 11, 'skills', 'select_multiple', 'Skills', 1, 0, 1, 1, 0, 0, '{"options":{"0":"","General Cleaning":"General Cleaning","Kitchen Cleaning":"Kitchen Cleaning","Microwave Cleaning":"Microwave Cleaning","Fridge Cleaning":"Fridge Cleaning","Stove Cleaning":"Stove Cleaning","Oven Cleaning":"Oven Cleaning","Bathroom Cleaning":"Bathroom Cleaning","Spot cleaning of walls":"Spot cleaning of walls","Office Cleaning":"Office Cleaning","Renovation Cleaning":"Renovation Cleaning","Move Out Cleaning":"Move Out Cleaning","Deep Cleaning":"Deep Cleaning","Washing Dishes":"Washing Dishes","Interial Window Cleaning":"Interial Window Cleaning","Rotate Bedding":"Rotate Bedding","Laundry":"Laundry","Vacuum":"Vacuum","Mop the floor":"Mop the floor"}}', 19),
(154, 16, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(155, 16, 'user_id', 'number', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(156, 16, 'cleaner_id', 'number', 'Cleaner Id', 1, 1, 1, 1, 1, 1, NULL, 3),
(157, 16, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 4),
(158, 16, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 5),
(159, 17, 'id', 'number', 'Id', 1, 0, 0, 0, 0, 0, NULL, 0),
(160, 17, 'order_id', 'number', 'Order Id', 1, 1, 1, 0, 0, 0, NULL, 2),
(161, 17, 'user_id', 'number', 'User Id', 1, 1, 1, 0, 0, 0, NULL, 3),
(162, 17, 'cleaner_id', 'number', 'Cleaner Id', 1, 1, 1, 0, 0, 0, NULL, 4),
(163, 17, 'comments', 'text', 'Comments', 0, 1, 1, 0, 0, 0, NULL, 5),
(164, 17, 'rate', 'number', 'Rate', 0, 1, 1, 0, 0, 0, NULL, 6),
(165, 17, 'images', 'multiple_images', 'Images', 0, 1, 1, 0, 0, 0, NULL, 7),
(166, 17, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 0, 0, 0, NULL, 8),
(167, 17, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 9),
(168, 3, 'rate', 'number', 'Rate', 0, 1, 1, 1, 1, 1, NULL, 12),
(169, 18, 'id', 'number', 'Id', 1, 1, 0, 0, 0, 0, NULL, 1),
(170, 18, 'cleaner_id', 'number', 'Cleaner Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(171, 18, 'amount', 'number', 'Amount', 1, 1, 1, 1, 1, 1, NULL, 3),
(172, 18, 'created_at', 'timestamp', 'Created At', 1, 1, 1, 1, 0, 1, NULL, 4),
(173, 18, 'updated_at', 'timestamp', 'Updated At', 1, 0, 0, 0, 0, 0, NULL, 5),
(174, 9, 'cancel_time', 'text', 'Cancel Time', 0, 0, 1, 0, 0, 0, NULL, 29),
(175, 9, 'finish_time', 'text', 'Finish Time', 1, 0, 1, 0, 0, 0, NULL, 30),
(176, 9, 'notes', 'text_area', 'Notes', 0, 1, 1, 1, 0, 0, NULL, 31),
(178, 9, 'order_sn', 'number', 'Order No', 1, 1, 1, 0, 0, 0, NULL, 1),
(179, 9, 'order_hasone_cleaner_relationship', 'relationship', 'Cleaner', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 14),
(180, 18, 'wii_payment_belongsto_cleaner_relationship', 'relationship', 'cleaners', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 6),
(181, 15, 'cleaner_review_belongsto_cleaner_relationship', 'relationship', 'cleaners', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 10),
(182, 17, 'client_review_belongsto_cleaner_relationship', 'relationship', 'cleaners', 0, 1, 1, 0, 0, 0, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 10),
(183, 12, 'cleaner_schedule_belongsto_cleaner_relationship', 'relationship', 'cleaners', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 7),
(184, 16, 'saved_cleaner_belongsto_cleaner_relationship', 'relationship', 'cleaners', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 6),
(185, 13, 'service_response_belongsto_cleaner_relationship', 'relationship', 'cleaners', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Cleaner","table":"cleaners","type":"belongsTo","column":"cleaner_id","key":"id","label":"name","pivot_table":"categories","pivot":"0"}', 7),
(186, 11, 'id_image', 'image', 'Id Image', 0, 1, 1, 1, 0, 0, NULL, 20),
(187, 9, 'room_no', 'text', 'Room No', 0, 1, 1, 1, 0, 0, NULL, 31),
(188, 9, 'if_pet', 'select_dropdown', 'If Pet', 0, 0, 1, 1, 1, 0, '{"options":{"0":"没","1":"有"}}', 32),
(189, 9, 'gst', 'number', 'Gst', 0, 1, 1, 1, 1, 1, NULL, 33),
(190, 14, 'cleaner_id', 'checkbox', 'Cleaner Id', 0, 1, 1, 0, 0, 0, NULL, 7);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', 'PageController', NULL, 1, 0, '2018-03-14 18:30:17', '2018-03-27 10:53:53'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-03-14 18:30:17', '2018-03-14 18:30:17'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2018-03-14 18:30:17', '2018-03-14 18:32:15'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-03-14 18:30:17', '2018-03-14 18:30:17'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-03-14 18:30:17', '2018-03-14 18:30:17'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-03-14 18:30:17', '2018-03-14 18:30:17'),
(7, 'sms_records', 'sms-records', 'Sms Record', 'Sms Records', 'voyager-dot-3', 'App\\SmsRecord', NULL, NULL, NULL, 1, 1, '2018-03-19 21:18:23', '2018-07-19 14:51:44'),
(8, 'files', 'files', 'File', 'Files', 'voyager-file-text', 'App\\File', NULL, NULL, NULL, 1, 0, '2018-03-26 15:22:40', '2018-03-27 10:45:39'),
(9, 'orders', 'orders', 'Order', 'Orders', NULL, 'App\\Order', NULL, NULL, NULL, 1, 0, '2018-05-23 11:35:22', '2018-07-27 13:40:14'),
(10, 'cleaner', 'cleaner', 'Cleaner', 'Cleaners', NULL, 'App\\Cleaner', NULL, NULL, NULL, 1, 0, '2018-05-28 22:56:45', '2018-05-28 22:56:45'),
(11, 'cleaners', 'cleaners', 'Cleaner', 'Cleaners', NULL, 'App\\Cleaner', NULL, NULL, NULL, 1, 0, '2018-05-31 10:35:20', '2018-05-31 10:35:20'),
(12, 'cleaner_schedules', 'cleaner-schedules', 'Cleaner schedule', 'Cleaner schedules', NULL, 'App\\CleanerSchedule', NULL, NULL, NULL, 1, 0, '2018-05-31 14:15:59', '2018-05-31 14:15:59'),
(13, 'service_responses', 'service-responses', 'Service response', 'Service responses', NULL, 'App\\ServiceResponse', NULL, NULL, NULL, 1, 0, '2018-05-31 16:24:08', '2018-05-31 16:24:08'),
(14, 'payments', 'payments', 'Payment', 'Payments', NULL, 'App\\Payment', NULL, NULL, NULL, 1, 0, '2018-06-04 15:43:53', '2018-06-04 15:43:53'),
(15, 'cleaner_reviews', 'cleaner-reviews', 'Cleaner review', 'Cleaner reviews', NULL, 'App\\CleanerReview', NULL, NULL, NULL, 1, 0, '2018-06-05 09:28:51', '2018-06-05 09:28:51'),
(16, 'saved_cleaners', 'saved-cleaners', 'Saved cleaner', 'Saved cleaners', NULL, 'App\\SavedCleaner', NULL, NULL, NULL, 1, 0, '2018-07-17 15:55:58', '2018-07-17 15:55:58'),
(17, 'client_reviews', 'client-reviews', 'Client review', 'Client reviews', NULL, 'App\\ClientReview', NULL, NULL, NULL, 1, 0, '2018-07-17 16:27:17', '2018-07-17 16:27:17'),
(18, 'wii_payments', 'wii-payments', 'Wii payment', 'Wii payments', NULL, 'App\\WiiPayment', NULL, NULL, NULL, 1, 0, '2018-07-22 13:36:00', '2018-07-22 13:36:00');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `path` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `created_at`, `updated_at`, `deleted_at`, `path`) VALUES
(2, '2018-05-29 16:46:55', '2018-05-29 16:46:55', NULL, 'files/May2018/QGX5vpdWrTS24uVgVcuh.png'),
(3, '2018-05-29 16:47:07', '2018-05-29 16:47:07', NULL, 'files/May2018/i1pfxjezYz9dV3pqJYNp.png'),
(4, '2018-05-29 16:47:16', '2018-05-29 16:47:16', NULL, 'files/May2018/F87bJWudFFzD5ITZn2Lk.png'),
(5, '2018-05-31 13:29:24', '2018-05-31 13:29:24', NULL, 'files/May2018/9OFHyqBtWwZqbebh4e9V.png');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-03-14 18:30:17', '2018-03-14 18:30:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-03-14 18:30:17', '2018-03-14 18:30:17', 'voyager.dashboard', NULL),
(4, 1, 'Users', '', '_self', 'voyager-person', NULL, 15, 1, '2018-03-14 18:30:17', '2018-03-19 21:11:36', 'voyager.users.index', NULL),
(7, 1, 'Roles', '', '_self', 'voyager-lock', NULL, 15, 2, '2018-03-14 18:30:17', '2018-03-19 21:11:42', 'voyager.roles.index', NULL),
(8, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 7, '2018-03-14 18:30:17', '2018-07-27 11:17:12', NULL, NULL),
(9, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 8, 1, '2018-03-14 18:30:17', '2018-03-19 21:09:48', 'voyager.menus.index', NULL),
(10, 1, 'Database', '', '_self', 'voyager-data', NULL, 8, 2, '2018-03-14 18:30:17', '2018-03-19 21:09:48', 'voyager.database.index', NULL),
(11, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 8, 3, '2018-03-14 18:30:17', '2018-03-19 21:09:48', 'voyager.compass.index', NULL),
(12, 1, 'Settings', '', '_self', 'voyager-settings', '#000000', NULL, 8, '2018-03-14 18:30:17', '2018-07-27 11:17:12', 'voyager.settings.index', 'null'),
(13, 1, 'Hooks', '', '_self', 'voyager-hook', NULL, 8, 4, '2018-03-14 18:30:18', '2018-03-19 21:09:48', 'voyager.hooks', NULL),
(14, 1, 'Other', 'other', '_self', 'voyager-info-circled', '#000000', NULL, 9, '2018-03-19 21:09:43', '2018-07-27 11:17:12', NULL, ''),
(15, 1, '用户管理', 'user', '_blank', 'voyager-person', '#000000', NULL, 3, '2018-03-19 21:11:29', '2018-07-27 11:15:55', NULL, ''),
(16, 1, 'Sms Records', '/admin/sms-records', '_self', 'voyager-phone', '#000000', 14, 1, '2018-03-19 21:18:23', '2018-07-27 15:39:21', NULL, ''),
(17, 1, '文件', '/admin/files', '_self', 'voyager-images', '#000000', NULL, 2, '2018-03-26 15:22:40', '2018-07-27 11:15:55', NULL, ''),
(21, 1, '基本信息', '/admin/user-base-infos', '_self', NULL, '#000000', 23, 1, '2018-03-31 17:13:28', '2018-04-06 16:40:16', NULL, ''),
(22, 1, '语言信息', '/admin/user-languages', '_self', NULL, '#000000', 23, 2, '2018-04-06 14:16:51', '2018-04-06 16:39:42', NULL, ''),
(25, 1, '护照信息', '/admin/user-passports', '_self', NULL, '#000000', 23, 3, '2018-04-06 16:39:14', '2018-04-06 16:39:38', NULL, ''),
(26, 1, '婚姻信息', '/admin/user-marriages', '_self', NULL, '#000000', 23, 4, '2018-04-09 14:40:54', '2018-04-10 14:21:21', NULL, ''),
(27, 1, '居住信息', '/admin/user-residences', '_self', NULL, '#000000', 23, 5, '2018-04-09 15:22:45', '2018-04-10 14:21:29', NULL, ''),
(28, 1, '联系信息', '/admin/user-contacts', '_self', NULL, '#000000', 23, 6, '2018-04-10 13:55:47', '2018-04-10 14:21:36', NULL, ''),
(29, 1, 'CA入境信息', '/admin/user-entries', '_self', NULL, '#000000', 23, 7, '2018-04-10 15:09:01', '2018-04-10 16:02:09', NULL, ''),
(32, 1, 'CA学校信息', '/admin/user-ca-schools', '_self', NULL, '#000000', 23, 8, '2018-04-11 13:50:40', '2018-04-11 13:55:59', NULL, ''),
(33, 1, '工作教育历史信息', '/admin/user-work-edu-histories', '_self', NULL, '#000000', 23, 9, '2018-04-11 14:49:47', '2018-04-11 15:46:07', NULL, ''),
(34, 1, '背景信息', '/admin/user-backgrounds', '_self', NULL, '#000000', 23, 10, '2018-04-11 15:35:37', '2018-04-11 15:46:13', NULL, ''),
(35, 1, 'Orders', '/admin/orders', '_self', 'voyager-documentation', '#000000', NULL, 4, '2018-05-23 11:35:25', '2018-07-27 15:36:21', NULL, ''),
(37, 1, 'Cleaners', '/admin/cleaners', '_self', 'voyager-people', '#000000', 15, 3, '2018-05-31 10:35:20', '2018-07-27 15:35:20', NULL, ''),
(38, 1, 'Cleaner schedules', '/admin/cleaner-schedules', '_self', 'voyager-alarm-clock', '#000000', 14, 5, '2018-05-31 14:15:59', '2018-07-27 15:41:18', NULL, ''),
(39, 1, 'Service responses', '/admin/service-responses', '_self', 'voyager-group', '#000000', 14, 6, '2018-05-31 16:24:08', '2018-07-27 15:42:08', NULL, ''),
(40, 1, 'Payments', '/admin/payments', '_self', 'voyager-dollar', '#000000', NULL, 5, '2018-06-04 15:43:53', '2018-07-27 15:37:03', NULL, ''),
(41, 1, 'Cleaner reviews', '/admin/cleaner-reviews', '_self', 'voyager-bubble', '#000000', 14, 2, '2018-06-05 09:28:51', '2018-07-27 15:39:39', NULL, ''),
(42, 1, 'Saved cleaners', '/admin/saved-cleaners', '_self', 'voyager-star-two', '#000000', 14, 4, '2018-07-17 15:55:58', '2018-07-27 15:40:56', NULL, ''),
(43, 1, 'Client reviews', '/admin/client-reviews', '_self', 'voyager-thumbs-up', '#000000', 14, 3, '2018-07-17 16:27:17', '2018-07-27 15:40:37', NULL, ''),
(44, 1, 'Wii payments', '/admin/wii-payments', '_self', 'voyager-paypal', '#000000', NULL, 6, '2018-07-22 13:36:00', '2018-07-27 15:37:13', NULL, '');

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 1),
(6, '2016_01_01_000000_create_posts_table', 1),
(7, '2016_02_15_204651_create_categories_table', 1),
(8, '2016_05_19_173453_create_menu_table', 1),
(9, '2016_10_21_190000_create_roles_table', 1),
(10, '2016_10_21_190000_create_settings_table', 1),
(11, '2016_11_30_135954_create_permission_table', 1),
(12, '2016_11_30_141208_create_permission_role_table', 1),
(13, '2016_12_26_201236_data_types__add__server_side', 1),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(15, '2017_01_14_005015_create_translations_table', 1),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 1),
(17, '2017_01_15_000000_create_permission_groups_table', 1),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 1),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(23, '2017_08_05_000000_add_group_to_settings_table', 1),
(24, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(25, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(26, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(27, '2016_06_01_000004_create_oauth_clients_table', 2),
(28, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
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
('007750236d65ddc4cc03be013c4109a9744a453a36dee2c43cdfffe6fac18e6730e1dccf1d385783', 61, 1, 'fore', '[]', 0, '2018-10-31 13:18:55', '2018-10-31 13:18:55', '2019-10-31 13:18:55'),
('0146f60e36aad589e4ad7fb5b235140a200f1942ed479ee66da548e73d6af6b04c224985fbb1dc9a', 56, 1, 'fore', '[]', 0, '2018-06-28 12:23:25', '2018-06-28 12:23:25', '2019-06-28 12:23:25'),
('015f76ca68c099c2688688a645731955dc0aa6b7cc7e8390ba6e2f0901ff6ac0085766dab7a559ac', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:21:35', '2018-04-11 13:21:35', '2019-04-11 13:21:35'),
('01ad813a2fda62c6329e67b56c6af5858c66ee8d02675ed6ef17cd58edeacd5b0436e082893595a2', 61, 1, 'fore', '[]', 0, '2018-11-06 21:29:04', '2018-11-06 21:29:04', '2019-11-06 21:29:04'),
('02ff2a288031d1d57a7a48aa064d8b18ac2caabd7392df10f34f5b0ed9faf7c15594053af1d37ebe', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:28:57', '2018-03-27 15:28:57', '2019-03-27 15:28:57'),
('0342e036d151490c8c1650e43be8172cb59963d2d544680838df64e42d35fef8a2a10e6c4d62f97d', 56, 1, 'fore', '[]', 0, '2018-06-19 10:42:10', '2018-06-19 10:42:10', '2019-06-19 10:42:10'),
('03a5d5d06d03a9938996cfafa24e57994da00dffa32d69dc1745f0be0fe164ef7e4e992e74e16abf', 25, 1, 'fore', '[]', 0, '2018-06-01 10:34:01', '2018-06-01 10:34:01', '2019-06-01 10:34:01'),
('03bdfd79ab93eb586d74e88dbf4593d09834bef8768204b12d3762fe8057631f472137bb90d458c5', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:47:04', '2018-04-04 20:47:04', '2019-04-04 20:47:04'),
('0476c1ba3fd988c3e2eff75777c11fef7443a76c97a99a44ea1157d68c3ed976c64a490467c855e5', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:18:04', '2018-03-28 13:18:04', '2019-03-28 13:18:04'),
('04da2cbe2415ae839dc2620b2d22d767dd82a9ae33f7479e6f0487b1921f7b594ef7ea964ed672c4', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:00:03', '2018-04-11 13:00:03', '2019-04-11 13:00:03'),
('04de7360c0513a8e95b2d350665adba5f6f39e73da7da0413340fc6d001df5a5a4e381a5dd512332', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 01:16:44', '2018-04-09 01:16:44', '2019-04-09 01:16:44'),
('04e2198f456d758aa16e328639fc83181ba1e8d84530d2febe2aff43ca72ff93d382510f128726c0', 63, 1, 'fore', '[]', 0, '2018-07-22 22:39:30', '2018-07-22 22:39:30', '2019-07-22 22:39:30'),
('0524178178c69e575ae70530ff6a861e6dcfcbd442d2f2bbcef8b1edc3c44c4ae1647033e79b5ecd', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 20:20:11', '2018-03-20 20:20:11', '2019-03-20 20:20:11'),
('05ad3800bbf738e259d6c26311ed91e779a6ba2a15bd7c2939ea73bdcbfdfbc8b9d01a1a48cc8a19', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:44:00', '2018-04-05 13:44:00', '2019-04-05 13:44:00'),
('05ccd5e45b33bea6c36dc9c579ba5079c1f54b3fc8c0616959ac8ed01b2e8678f6b2288dc00d5a19', 14, 1, 'Pizza App', '[]', 0, '2018-04-10 09:23:47', '2018-04-10 09:23:47', '2019-04-10 09:23:47'),
('061fb9f008eca9fa1f3823fa76bde2f69ed48a40109c355bf5decc1666723e9121dd04691412e592', 56, 1, 'fore', '[]', 0, '2018-07-18 16:37:01', '2018-07-18 16:37:01', '2019-07-18 16:37:01'),
('065cffa2fbaf1347bd298572a289895667f0b6dfa8031529fcbecbbda8102c01df58a17129d27157', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:28:00', '2018-04-11 12:28:00', '2019-04-11 12:28:00'),
('072a88a790a44fa7f0a73c786026c7d7295e040c3b6871d50eac2c67caf0c440e18e31f21653094b', 28, 1, 'fore', '[]', 0, '2018-06-01 13:02:36', '2018-06-01 13:02:36', '2019-06-01 13:02:36'),
('0797edb137f2c3fb1be36de5f363affff5784c70efbea6b4295479bb6cb813eb361cefeb26c490b7', 56, 1, 'fore', '[]', 0, '2018-06-30 16:19:33', '2018-06-30 16:19:33', '2019-06-30 16:19:33'),
('07f80f4c0c8608af1eea2a107a213e072a684bf0934f0a22b29f342f0450badd01f871bfbc0e6b0a', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:07:23', '2018-04-02 12:07:23', '2019-04-02 12:07:23'),
('0824bea0d8c82acf411969d64bba7cfc3bca52f81a2580b4f021b36ffbcea4941d2438eca7ff41f8', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:37:40', '2018-03-21 22:37:40', '2019-03-21 22:37:40'),
('086a2e1b0b8dbb9858da6e38ff560db63d79cccc9672bae1d880ff2e7fbcaebdb62dca849bd38d71', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 11:32:46', '2018-04-02 11:32:46', '2019-04-02 11:32:46'),
('088af6f861eeba4eee8a8481b02bbfd43ac8ce455c05f82cdb7564ed794efc25fa3533dbc966f460', 1, 1, 'Pizza App', '[]', 0, '2018-03-14 19:13:26', '2018-03-14 19:13:26', '2019-03-14 19:13:26'),
('08b4af88230c7b1f49a12f5b11743614255f086ea169eb61a4b33af9f3ec9c0be761b2ee0f408705', 1, 1, 'Pizza App', '[]', 0, '2018-03-17 06:06:04', '2018-03-17 06:06:04', '2019-03-17 06:06:04'),
('097a8d285ceecd4176bdb090c8088aa7a9136eb64a2c2c512dd683d84d14d8ce424f7d4f32291d49', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:49:41', '2018-04-02 10:49:41', '2019-04-02 10:49:41'),
('0a1f27d55d5d6a43b7f74037e137854ab94c8c9abe97d73505a0808f9f1990c432c98714ed8f5108', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:29:25', '2018-03-27 16:29:25', '2019-03-27 16:29:25'),
('0a655f9550add4f8555354f43c2e3203fd8d5097c6893af5d1a7d77a865487e71f880e198e6aeb17', 13, 1, 'Pizza App', '[]', 0, '2018-04-01 12:23:30', '2018-04-01 12:23:30', '2019-04-01 12:23:30'),
('0af442c251cce3bcfacb4006a6472df95806a33c5da328e671c6f9ba68779686810b307eb6665352', 37, 1, 'fore', '[]', 0, '2018-06-06 09:09:21', '2018-06-06 09:09:21', '2019-06-06 09:09:21'),
('0bf3b4084db00c2ab950ac49a20040f5016b78db82f2831b54ece4b04ee5b351bee8e641c397605d', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:56:31', '2018-04-11 12:56:31', '2019-04-11 12:56:31'),
('0c4d8992c566e24f0c345ad7d42d61246492c2cd5ccc7a64da05fd11f6e7156ea14948a79010cc7b', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:45:10', '2018-04-04 20:45:10', '2019-04-04 20:45:10'),
('0c58b7b57c3892e5bf39fbd33c9626406af12c2b732c5bde00c279a131e6e3547c670a5dffb68dd1', 61, 1, 'fore', '[]', 0, '2018-07-17 12:49:34', '2018-07-17 12:49:34', '2019-07-17 12:49:34'),
('0c8b5772edf7804e2c9f30b28d855e70d874cee94248cccc0cd89b4e09d2a43b74e695805157c48c', 59, 1, 'fore', '[]', 0, '2018-06-20 13:30:08', '2018-06-20 13:30:08', '2019-06-20 13:30:08'),
('0c97a5f7b45492602972e61d9cbdfbb88bd9bb06e07862b9c30f70e2aa87aab781975c64d096ba38', 56, 1, 'fore', '[]', 0, '2018-07-23 12:57:53', '2018-07-23 12:57:53', '2019-07-23 12:57:53'),
('0c9a91f23654b4ad3d1f603dbfcf6919291c7a136580ef4facdbe097e87eb296a4d1b6e303bafd32', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:16:06', '2018-04-02 12:16:06', '2019-04-02 12:16:06'),
('0d17f3c552640f40a7834a1cc01435070259c133ad805d65d3acd511c2f5439f7f424b01fc2d2a24', 56, 1, 'fore', '[]', 0, '2018-06-28 09:54:32', '2018-06-28 09:54:32', '2019-06-28 09:54:32'),
('0d20148f15b3dc8f99f46891b04cdbaacb08c707cdb662e9a7bc6e7002e9960bd1d1d31550ff93fd', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 16:24:06', '2018-03-28 16:24:06', '2019-03-28 16:24:06'),
('0daa35956333ac137eecb35207fe15d66f91e169908ecc184715da507eb04658db489ee65ce4a6b3', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:31:22', '2018-03-27 16:31:22', '2019-03-27 16:31:22'),
('0dafbb3b57248043dfea63d43ff573646ce9b8f6b187b96d1627fefd1cc9200df420108f1f92aee8', 56, 1, 'fore', '[]', 0, '2018-07-17 13:07:03', '2018-07-17 13:07:03', '2019-07-17 13:07:03'),
('0ded18c13e6c679130dbb4ff66cd985e00759e80cdf2b143e73baa46823562b10c1736fa1b2b554f', 56, 1, 'fore', '[]', 0, '2018-07-18 14:27:20', '2018-07-18 14:27:20', '2019-07-18 14:27:20'),
('0e13ebbc7806f6c59f030efa06406e1710f380010f2f1ac17381f554acdbd61ed03c23130283c7f9', 56, 1, 'fore', '[]', 0, '2018-07-24 20:16:19', '2018-07-24 20:16:19', '2019-07-24 20:16:19'),
('0ea0fc2307cb9015da2a6468cb0b5a6fedbd5bcb5df9bed4a325ebc9082e947ef507c38ac5f6302a', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:50:57', '2018-04-09 00:50:57', '2019-04-09 00:50:57'),
('0f82a23bd369c64fef02d54b4ed15a986dce27c62ba2ee49d5bb554c3458c223632baca311cd30a6', 56, 1, 'fore', '[]', 0, '2018-07-23 12:56:38', '2018-07-23 12:56:38', '2019-07-23 12:56:38'),
('115c6234fe1d3ef0b4ca78545c73eb2c78c4bfc63a326882b2e4adb2d9842eae2248718ff927829a', 74, 1, 'fore', '[]', 0, '2018-09-30 11:02:19', '2018-09-30 11:02:19', '2019-09-30 11:02:19'),
('116cc03d16aca33cf5ac3bfd1a3b5bf9c980bb064b3bc27f30eb5662a9536e9c14ea7a7a905e1d39', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:06:30', '2018-04-02 13:06:30', '2019-04-02 13:06:30'),
('1192f0d0838fd459d856e477e32e1a75faa411b67ac32a353380d178d3128770fa40af7c314ec400', 49, 1, 'fore', '[]', 0, '2018-06-08 16:00:25', '2018-06-08 16:00:25', '2019-06-08 16:00:25'),
('11daa861fa8cfb35a02814db8665e9b369a93934941aa374f9e1ad7f92edbbd118daed216f5ee4d4', 56, 1, 'fore', '[]', 0, '2018-07-22 14:34:28', '2018-07-22 14:34:28', '2019-07-22 14:34:28'),
('11e071d39dae38f64c550cdb2cfdd0d504f229c18402b480f6cb62cf8c22bdfea59db477596c3c22', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:32:11', '2018-03-27 15:32:11', '2019-03-27 15:32:11'),
('121194e77085d7b5f17a76d6c90f059eac4dc66cdef6a1f4ed9ce6d508e7670912d4571617dbd669', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:03:40', '2018-03-28 12:03:40', '2019-03-28 12:03:40'),
('1227288ad6efd26313e0a6cd50b31606c36e56e53824bde7dc6e7b8704ff24dbc85cf4d12fb13416', 56, 1, 'fore', '[]', 0, '2018-06-19 11:22:07', '2018-06-19 11:22:07', '2019-06-19 11:22:07'),
('1290aed4a3acf67e23b6197b22496cb6c25a7c85d68b19059f7a025364f61f181525c6845ef12952', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:20:33', '2018-04-11 12:20:33', '2019-04-11 12:20:33'),
('12df4e2157bfc253aca0c853694f927b974d7c4d5938e39746fae7bd015a63dfbaaab8d68ddbeeb7', 74, 1, 'fore', '[]', 0, '2018-09-30 10:00:17', '2018-09-30 10:00:17', '2019-09-30 10:00:17'),
('13342d3cb4d814795c3c4c17c0f3063df258b26779ec22ae48c7af4cb192bd99fbea6142e1606f15', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:22:45', '2018-04-09 13:22:45', '2019-04-09 13:22:45'),
('13866f9f9237e72565d9bc671f2b7c5c3f1c049cb1fb1fb1d1f28db24e5139ed5d7cb4c93013b8c6', 50, 1, 'fore', '[]', 0, '2018-06-08 13:48:34', '2018-06-08 13:48:34', '2019-06-08 13:48:34'),
('13b1e01aac8d07af95b43f06a7598ce9caba5ab9536608b2ac4cca07a730acaeac06ec04e52ec07e', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 20:31:22', '2018-03-27 20:31:22', '2019-03-27 20:31:22'),
('13ee10ff8e5e2eaf0ef226bd4b6d839346d5e96ce323ce18f0632472d20b58626e2bd4f475307eb2', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:26:54', '2018-04-11 12:26:54', '2019-04-11 12:26:54'),
('1498c5578512635e7cd4af19db8f72b9b5dd66fc6efb7c88e5f4932768e5245303190f114b17518f', 79, 1, 'fore', '[]', 0, '2018-10-10 18:17:12', '2018-10-10 18:17:12', '2019-10-10 18:17:12'),
('14e8b22636a787d9983ce6190e8a02648ccde961948a413c15b509a4257c81668056012cfd9526f4', 56, 1, 'fore', '[]', 0, '2018-07-18 15:17:23', '2018-07-18 15:17:23', '2019-07-18 15:17:23'),
('15a14ecd81a77398092a7916262c2319379dbc13a1dfa2f4c0986bfb6b8aa925f8ac15b7226ac27f', 63, 1, 'fore', '[]', 0, '2018-07-24 21:37:20', '2018-07-24 21:37:20', '2019-07-24 21:37:20'),
('15c4628bee138df22cd1d4324c7fc7226faf41c5691f974fdddf4249992982b0f61f61fd3aa76e30', 59, 1, 'fore', '[]', 0, '2018-06-22 09:18:54', '2018-06-22 09:18:54', '2019-06-22 09:18:54'),
('16175b20480de957e7b7f11ce46ea8b3f84b71035198a3a67819b43bb10bea9e0ac5eff4c348526c', 56, 1, 'fore', '[]', 0, '2018-07-18 16:44:00', '2018-07-18 16:44:00', '2019-07-18 16:44:00'),
('162c4db1d73023e9acf74134348fee7a72c18c39f6abef2500bde5bf8b04b94cc9cfd6047bf830ad', 74, 1, 'fore', '[]', 0, '2018-09-26 12:52:32', '2018-09-26 12:52:32', '2019-09-26 12:52:32'),
('162dcf77e4a57a1d33040ec5c431641f72c99e7bd15fefa039e9767b2cd92c12dd2d3d578c2cbde7', 55, 1, 'fore', '[]', 0, '2018-06-09 11:19:34', '2018-06-09 11:19:34', '2019-06-09 11:19:34'),
('16336004f8349dd781e617d6e836fe2d088bb4c8e498b8b9fcd375848d66bdfe1993b0bdfaa9da0e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:52:59', '2018-04-02 10:52:59', '2019-04-02 10:52:59'),
('164cd08bebf131bb37ec479f5113e3f35543477472a271be292eb6de58c20f01e0985d26c2fd2073', 71, 1, 'fore', '[]', 0, '2018-09-14 11:20:17', '2018-09-14 11:20:17', '2019-09-14 11:20:17'),
('173dbc730e5f7be7df2e7cb96b1e2f3f67401a589805f19ce7353cf692c175a593dd36aaf8a963d6', 56, 1, 'fore', '[]', 0, '2018-07-18 15:42:50', '2018-07-18 15:42:50', '2019-07-18 15:42:50'),
('17499b1f61c0d7ff5ae034fbc15f23ffee881e41245f32ae0a9e70226782631a5f128337c88c603b', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:20:29', '2018-03-27 16:20:29', '2019-03-27 16:20:29'),
('183def7af1895ad57d59bf995d785808937f3dd11f134758c107b49095772b6c7fe152b43249e2fe', 37, 1, 'fore', '[]', 0, '2018-06-06 10:41:38', '2018-06-06 10:41:38', '2019-06-06 10:41:38'),
('1878760166c5d46c119d2338d7fe7fe4e86a61f42a14d676d4fc47b9686df4b481aab107cd4dd1ab', 56, 1, 'fore', '[]', 0, '2018-07-23 13:03:52', '2018-07-23 13:03:52', '2019-07-23 13:03:52'),
('188989009d5335a4b1799c17fb3015ce2df94853937a2e99bf958930daed977fbce63bd2c6ffd22b', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:56:20', '2018-04-11 23:56:20', '2019-04-11 23:56:20'),
('18e52d1187e92edd893e94fee8e0510ec637f4ee86e4ca6a07eaa64608a8a078008371d6def5c1c7', 56, 1, 'fore', '[]', 0, '2018-07-18 16:43:51', '2018-07-18 16:43:51', '2019-07-18 16:43:51'),
('19a7898579737f2501745ff43266f4ba97fafe7b91cc33b00ad8a384b7b58d1ae868cfc99649803f', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:22:03', '2018-04-05 13:22:03', '2019-04-05 13:22:03'),
('1a4f881b8a1901d8f35a9726430ac5f693cee6f05d8ad442ad58f26d81e7625539dcdfec2bd66a94', 33, 1, 'fore', '[]', 0, '2018-06-05 09:20:10', '2018-06-05 09:20:10', '2019-06-05 09:20:10'),
('1a5c001d198e1c4b9f8f040f135112274ca300ef4b08b50bde5fd4c5fc0a8a2a783c5f7c1be492f7', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:17:24', '2018-03-21 22:17:24', '2019-03-21 22:17:24'),
('1a901e9110a9af065009978c878965fff2846297dc52a612902ab0877d57f464f7b557cb0a9e5cd6', 34, 1, 'fore', '[]', 0, '2018-06-05 09:18:57', '2018-06-05 09:18:57', '2019-06-05 09:18:57'),
('1ac74ff4cb737a33520d8a54ceceb8ae8bd0193a01196a4cdb50bf2401a0009467eaee4b75ea78cc', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 21:00:54', '2018-03-27 21:00:54', '2019-03-27 21:00:54'),
('1b40d3d560893e8e4368b1cf9c8789a5fd70a77a331af32748d1280d63af44bd5b0b351b1ac75902', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:51:30', '2018-04-02 10:51:30', '2019-04-02 10:51:30'),
('1b6db5ce220132d321eca4dfca60be497eccc7285bcab982c62161efbd6a713abbb3ce0007dec362', 6, 1, 'Pizza App', '[]', 0, '2018-03-22 06:31:32', '2018-03-22 06:31:32', '2019-03-22 06:31:32'),
('1bbcf4ad9392bb32c676d6b65ed8b0037e6f430b683adf191ee2b3ed18aed55b5bfbd6798007cd25', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:13:18', '2018-04-09 12:13:18', '2019-04-09 12:13:18'),
('1c3f12b00826379c13ad6b505f0122eb8ad8f84dcb2975a8a79399176cb52e7ba51fad6944236b47', 56, 1, 'fore', '[]', 0, '2018-07-18 15:38:44', '2018-07-18 15:38:44', '2019-07-18 15:38:44'),
('1c3fb258625bf0a60febc2f1611306da0fdc4b26d885a200ff8ec9ec316abc3b560fde13f3183c44', 15, 1, 'mui', '[]', 0, '2018-04-20 08:59:30', '2018-04-20 08:59:30', '2019-04-20 08:59:30'),
('1c503163205142eaacafdda54573bc9a17aff689253e9c42218936307afe852740136d50e2dd4880', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:23:58', '2018-04-05 11:23:58', '2019-04-05 11:23:58'),
('1c5f27731200d4629b50f9b78fb50d30f3b6c225e42810442124618a48a39d4b6146f8a35d1272ac', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:48:22', '2018-04-04 20:48:22', '2019-04-04 20:48:22'),
('1e18e83ac809c848b2ab07416ee7df4276a9cb29b68fae340c2f58e3b2114ac874174ec362b6a65b', 56, 1, 'fore', '[]', 0, '2018-07-19 11:20:32', '2018-07-19 11:20:32', '2019-07-19 11:20:32'),
('1e1c07a45986e65d4ea3dc1c458bc2969444ab08211c7a6907b10f8b06483fd6afa9c5a70af5b439', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:24:36', '2018-03-28 12:24:36', '2019-03-28 12:24:36'),
('1e5d2f9fd8aa05c47c7b312ac3826ff38760d5203929a1ddbd46e904ad7512525838a73b35c1d156', 43, 1, 'fore', '[]', 0, '2018-06-06 22:26:22', '2018-06-06 22:26:22', '2019-06-06 22:26:22'),
('1f167921b9d438ebb3937d8e24730f11bfe5cb5d369b66e213400cc9b25490b66620769fc45c48f4', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:50:21', '2018-04-02 10:50:21', '2019-04-02 10:50:21'),
('1f9bde5c1be8aec4102d03cbbbe065037ef69664c9ee6a838f1d76149152436f549d4b248cc55b52', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:55:16', '2018-04-04 20:55:16', '2019-04-04 20:55:16'),
('1fcf6b7914b02ee65be96897b35d8a1df0f1240fcc1240fa9d36fab90b45eeb08a3560a599fb8144', 28, 1, 'fore', '[]', 0, '2018-06-01 13:14:53', '2018-06-01 13:14:53', '2019-06-01 13:14:53'),
('2013108730909f98380ae91d9e4eeec97b04c6f91a6e69fbaad75a7b6afd57d9541cf04bf663d148', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:56:03', '2018-04-03 21:56:03', '2019-04-03 21:56:03'),
('203df6ff4fdf0cfb1528f3c51f9fc98a4effc258444208e276481f0e9f3c7f8c7eb224f555451222', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:04:13', '2018-03-28 12:04:13', '2019-03-28 12:04:13'),
('207641ed8779c72a35ff1de63839084567a00678500cf0ae6f9ca013995238c02d2b170b9343e96b', 9, 1, 'Pizza App', '[]', 0, '2018-03-21 01:09:16', '2018-03-21 01:09:16', '2019-03-21 01:09:16'),
('20e445b8c02379afdeb9f2df52ff6ef6e0efd1773e665848429e414b5b39c1a64cd2b4ed3379a6b1', 15, 1, 'mui', '[]', 0, '2018-04-19 16:39:51', '2018-04-19 16:39:51', '2019-04-19 16:39:51'),
('20e4dbac3af067fda2a474f4dae7a19d4a479dc5aaf597318154dab063faaa4563f347c9c5be70e1', 28, 1, 'fore', '[]', 0, '2018-06-01 13:05:23', '2018-06-01 13:05:23', '2019-06-01 13:05:23'),
('217f9787d730749f65c29cdaa9d96109f7f772d2b396c68cae534925bed3780532c053f63383292a', 56, 1, 'fore', '[]', 0, '2018-06-08 14:40:53', '2018-06-08 14:40:53', '2019-06-08 14:40:53'),
('21fd62f8db9f9181d1f539c40844a897add9a31834d94995e02d8ac3ddf25a639d781462e02b34d6', 56, 1, 'fore', '[]', 0, '2018-07-18 10:09:33', '2018-07-18 10:09:33', '2019-07-18 10:09:33'),
('2238c17c4254e85d0ffa687842513bfbb59bb83cba381d9fec08cc944e847723232c78a15cb813f8', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:54:50', '2018-04-02 12:54:50', '2019-04-02 12:54:50'),
('2239ab57e16415014b377b39ccf5a3d86280c72f94adba6591aaf607d7b4e581741e2ddc4ae3971b', 74, 1, 'fore', '[]', 0, '2018-09-26 11:40:18', '2018-09-26 11:40:18', '2019-09-26 11:40:18'),
('223d9706ccbd46c56b1ef2c3d1d9994a6a41a8db308fd0178c7e36538863ca96dbded820ad517394', 56, 1, 'fore', '[]', 0, '2018-06-28 12:34:46', '2018-06-28 12:34:46', '2019-06-28 12:34:46'),
('2257c07ea6d7686b612103289768652c81cef70dbde35591fbdc49e9f74026cd5853955bfd593bf8', 61, 1, 'fore', '[]', 0, '2018-10-24 18:10:47', '2018-10-24 18:10:47', '2019-10-24 18:10:47'),
('2283269c2e59ef5d7a714112a356708ca56dfe772bc27c31671e4de8d683690fd1f460d88898529d', 61, 1, 'fore', '[]', 0, '2018-10-16 17:44:40', '2018-10-16 17:44:40', '2019-10-16 17:44:40'),
('22e327a8f609ad466412ae944a7e18a93bc88ffaddd455f3958c07195239b9d994b977437a1aea89', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:22:07', '2018-03-21 22:22:07', '2019-03-21 22:22:07'),
('237794f031ce60e08133775c6fb00b2db3d5a6de21c57cb18bafc076f765463e4c300f5c4d1d4827', 56, 1, 'fore', '[]', 0, '2018-07-20 14:59:50', '2018-07-20 14:59:50', '2019-07-20 14:59:50'),
('2470fc2240b919439de86d4ba0b5e7a48b885b1245fa55e56795cb86c01ca9c3a67c2eabdbf5cb28', 56, 1, 'fore', '[]', 0, '2018-07-22 15:30:22', '2018-07-22 15:30:22', '2019-07-22 15:30:22'),
('248a453ebe83e91d01dd4e37f6aa570578b7fd3461b5e9924d900fca2e4eb935c56e2cb7efd3ea58', 43, 1, 'fore', '[]', 0, '2018-06-06 16:29:42', '2018-06-06 16:29:42', '2019-06-06 16:29:42'),
('24ce31e01b5595d5099291d78ddabd0996309cdddd0c3f2d3a80b75727196c83c2928458a144e037', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:08:05', '2018-03-21 22:08:05', '2019-03-21 22:08:05'),
('24f42e330bed0d72c89c22c5c8f6fa4a1e06c2058e599172b1c7aea780007a1ae9c4fc5f5e3081f6', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:35:49', '2018-03-28 12:35:49', '2019-03-28 12:35:49'),
('254c0c3a542f25df4f7a7d82f906bf3190d0acb46eaaaa81a3788208c2c1687bda6dcb2b31405940', 56, 1, 'fore', '[]', 0, '2018-07-23 12:51:08', '2018-07-23 12:51:08', '2019-07-23 12:51:08'),
('255b6f220c0ea1caeb0490063c564ce84f8a88f884afa99063627d639fc58b808f82cab34114e063', 38, 1, 'fore', '[]', 0, '2018-06-06 10:27:14', '2018-06-06 10:27:14', '2019-06-06 10:27:14'),
('2591020fe10b7355c852873cb38715a134e4d3cd71431170d981045cd28032407fe1c16ca0e6d89e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:29:00', '2018-04-02 13:29:00', '2019-04-02 13:29:00'),
('25dc2b0569d601e285ad1d3c92db03d042c2695a951dc110b0d1797e2826a7bf4aa350448b4fa971', 37, 1, 'fore', '[]', 0, '2018-06-06 12:59:20', '2018-06-06 12:59:20', '2019-06-06 12:59:20'),
('25e8f1a3d3a61f8874c799b55f5686d3059d563d105d51a10070cd755df917974656e4f21ebc824c', 11, 1, 'Pizza App', '[]', 0, '2018-03-22 21:37:12', '2018-03-22 21:37:12', '2019-03-22 21:37:12'),
('260e798bffc21e794a2d7277b894ce389132d36755dbb052f4162c2f5cdd562f4889cc8672fdaa48', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:11:02', '2018-04-05 13:11:02', '2019-04-05 13:11:02'),
('26887d6b65617cef4ff3441f5e2e89564aa95f26e27698b2b864338db8b42136cdd89026e0d2945a', 56, 1, 'fore', '[]', 0, '2018-07-19 12:30:36', '2018-07-19 12:30:36', '2019-07-19 12:30:36'),
('268e1734d447b5990c83eff91b32fbff4ceec478d014cc4cf128241baa89e84b19375b25fb1906da', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:37:30', '2018-04-04 20:37:30', '2019-04-04 20:37:30'),
('26f7820e557193a3d6ea2d1b62cf473cf8de375e77d6c244ab744dd0a9d510f62a96f47fd15abdf4', 56, 1, 'fore', '[]', 0, '2018-07-23 12:58:21', '2018-07-23 12:58:21', '2019-07-23 12:58:21'),
('27054ca6d9fc3023cbd2d7b8559ea37e9dcef8979bde96bf95e8cd1a270a6d187b4d412de1223067', 30, 1, 'fore', '[]', 0, '2018-06-04 18:18:21', '2018-06-04 18:18:21', '2019-06-04 18:18:21'),
('279ee2ff5cfb55dfce35671fe711c1d46a15e3fd57394fc84bd6e91169b0c765c04b4c62e1ab46d9', 56, 1, 'fore', '[]', 0, '2018-07-23 13:00:34', '2018-07-23 13:00:34', '2019-07-23 13:00:34'),
('27d9d586b7fd7232fd0e24c289b67187f201d612a30cdafa1392e4011103d3b8bc5b56b88bdd4933', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:03:09', '2018-04-02 13:03:09', '2019-04-02 13:03:09'),
('282a8816baa53275eae96ec03110fc38cb9ba4f3fc83305adce8dc06a111c35722fa905e02363be9', 25, 1, 'fore', '[]', 0, '2018-06-01 13:03:42', '2018-06-01 13:03:42', '2019-06-01 13:03:42'),
('286b1e878ae7d0a38da393bbc9923f71c59dce5d78409c2a9dd3a990e5f49ec7e92612802ebda57b', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:36:54', '2018-04-09 12:36:54', '2019-04-09 12:36:54'),
('289ff2af063265ea6129ed6a18aee0978f0b37ee00029d5fba920cc414e1892281581380a06e570e', 2, 1, 'Pizza App', '[]', 0, '2018-03-17 06:08:31', '2018-03-17 06:08:31', '2019-03-17 06:08:31'),
('2a0079d1393daf29d001d5d01672406c6be3ac365b9b821d0a46bde45b28c9d9e4703c3657e42818', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:08:27', '2018-04-04 11:08:27', '2019-04-04 11:08:27'),
('2a0861208c0a5a29672e7f4304092b36468c79ae08f639171e97847cb557130bfc9f1ec2a4df7401', 56, 1, 'fore', '[]', 0, '2018-07-18 16:43:46', '2018-07-18 16:43:46', '2019-07-18 16:43:46'),
('2aeb7993cc7effd46f119800d363fb84ccb101ee21539001f83aae7dfad43701ed78c4e46f5c8bfe', 55, 1, 'fore', '[]', 0, '2018-07-24 21:04:13', '2018-07-24 21:04:13', '2019-07-24 21:04:13'),
('2bc1a879ffec0dcaf9f3ab3c92b9121bb7d388648e1e8d9329f62035179672314fe707465ebfa511', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:57:32', '2018-04-11 12:57:32', '2019-04-11 12:57:32'),
('2bd1b5a8c7c6b02b776728b5d41a73ef9585fd12aeb4bc5d011f325704bbb0965ac84505f001bb67', 56, 1, 'fore', '[]', 0, '2018-07-22 22:49:10', '2018-07-22 22:49:10', '2019-07-22 22:49:10'),
('2c1cbff2637f1952b0be932a486f9a0dfa9a4227287969dc65bf9cece57108b9b54702dff173d7c9', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:09:55', '2018-04-03 21:09:55', '2019-04-03 21:09:55'),
('2c2e447abc1a3a8c51d51b901e3652ed5489b1e82b610bd132aa98360cc3141db5157ec19c3ee32b', 56, 1, 'fore', '[]', 0, '2018-07-17 11:19:30', '2018-07-17 11:19:30', '2019-07-17 11:19:30'),
('2c46302274fdd2f5176147596ec09c4d9341a208c9249e41d626564f0bbae6763a212527c68231d3', 13, 1, 'Pizza App', '[]', 0, '2018-04-06 15:52:33', '2018-04-06 15:52:33', '2019-04-06 15:52:33'),
('2c5dc968fa478456acac1a9dc8cd2a15441c4114c7fd2ba1bc906c7316ee916e0af1d6cb5516c968', 61, 1, 'fore', '[]', 0, '2018-10-10 18:32:41', '2018-10-10 18:32:41', '2019-10-10 18:32:41'),
('2d981193cf62e736eedcf4f90386c8db7f28cfa405897f92c9a433027b97b8a410754627651ea083', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:19:26', '2018-04-03 21:19:26', '2019-04-03 21:19:26'),
('2dc4946689d8ffac33e98ee9a621fdd8bff1b775758aa05943288593d1ec2068ab8deec5b28429bb', 15, 1, 'mui', '[]', 0, '2018-04-19 21:36:47', '2018-04-19 21:36:47', '2019-04-19 21:36:47'),
('2e0cf50eafc2ec7ae8299a35918183a48b7426bd4f6c818eb079a529e60eb1d1f33da6c7f952ed9d', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:57:26', '2018-04-02 13:57:26', '2019-04-02 13:57:26'),
('2e0ea308e5669b8999749679aefde276755a6cda28b3cbb533c14495b196786193268fe8dbca6dec', 56, 1, 'fore', '[]', 0, '2018-07-20 15:11:03', '2018-07-20 15:11:03', '2019-07-20 15:11:03'),
('2e223f65bce7b8a62a13139d2ff4eee7d388743e3f68361927412fa84afdf6d7f067765b99b41b63', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:30:36', '2018-03-28 12:30:36', '2019-03-28 12:30:36'),
('2e57771f95af0a9e64dfa97ff8860bca8c578408f56fbaff356d00eabd8dacc54d99009c1bf18228', 56, 1, 'fore', '[]', 0, '2018-06-16 23:49:04', '2018-06-16 23:49:04', '2019-06-16 23:49:04'),
('2ee5174bb634dfab357b0c0e708cf29599d2b0ee75bbf833a4b3a4ba4eb348aac7ba949ccc79ea6c', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:34:26', '2018-04-04 20:34:26', '2019-04-04 20:34:26'),
('303739967cc1d751e5a4bd06d4da45599a4d1f330ea29ad36e75ab5a48d39a049f383a310cdf6538', 38, 1, 'fore', '[]', 0, '2018-06-08 11:38:06', '2018-06-08 11:38:06', '2019-06-08 11:38:06'),
('315ae090df7896f901d2c8c8d10dbb15720e8f48e3db00c0f7b982d88c1aefabc929bfcd381b48be', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 21:01:13', '2018-03-27 21:01:13', '2019-03-27 21:01:13'),
('31d222e6426eb1e76741642a468e46d813f0089f4f59056c874f393f56835a3ec9ccafd0602e0589', 61, 1, 'fore', '[]', 0, '2018-09-21 23:02:39', '2018-09-21 23:02:39', '2019-09-21 23:02:39'),
('341e0c850e95bc1cc0c53b661f36166a1f7b23eee1965a452a84648b6e7d7aef3d71142360bf75d6', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:45:32', '2018-04-02 13:45:32', '2019-04-02 13:45:32'),
('347df05c57fb695a16eb3eec55172f72835a9dc89c6025a2774c6804316bda1412661f4a398784fa', 28, 1, 'fore', '[]', 0, '2018-06-04 21:16:47', '2018-06-04 21:16:47', '2019-06-04 21:16:47'),
('34f0020c0b4941062788b3353f15b63deb3aa2cf8052804b9bf2a2f4f35d50fa16ab1cd35de60cb8', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:25:58', '2018-04-05 12:25:58', '2019-04-05 12:25:58'),
('35a70aa776b2412ada141edddb7bb84ccc538e81fc142ae29f393da484fd536b1531ad613835d682', 56, 1, 'fore', '[]', 0, '2018-06-09 00:18:29', '2018-06-09 00:18:29', '2019-06-09 00:18:29'),
('35ab4e7f5fe74d1f76050608aa03f33db860f1b42af8e77e99167097c87210fa9b15f4989035e405', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:58:58', '2018-04-11 23:58:58', '2019-04-11 23:58:58'),
('35af1f1e51394be960bde505a4398e85ae78c2c84a59ae5486f150d379ebbe69ee5c1e6b2928c828', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 13:10:35', '2018-04-03 13:10:35', '2019-04-03 13:10:35'),
('35cf474e76fc94f29cc7e9a7a01bd1c7130d6dc386c627617376e0346251acbb880f8b9b89674070', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:07:08', '2018-04-03 21:07:08', '2019-04-03 21:07:08'),
('3600a90b28e95eb42cafafe06d8bed4e8c29e784d8cee8036ba9e992f30ee7763131e4b3150753de', 28, 1, 'fore', '[]', 0, '2018-06-03 10:45:38', '2018-06-03 10:45:38', '2019-06-03 10:45:38'),
('36084639fa7107af7100975f2047ee8aa329635cc28b6bbb968bc57e75f4cd5b3557c73d0e57b0ea', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:39:36', '2018-04-09 13:39:36', '2019-04-09 13:39:36'),
('36427d8a9dbdd609565b4308302e87cc620db355ed7e154f9e232df75eefed60ff45e379abb474da', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:16:49', '2018-03-27 16:16:49', '2019-03-27 16:16:49'),
('378b6f2623063d3782f43b369acf422ee55ed810ae35c63c8fc271e3028bacfa03503b9c78ccc971', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:10:07', '2018-04-02 13:10:07', '2019-04-02 13:10:07'),
('37a839b8ebd16098f9847ffa7cd8b838b971121270046292e2371b25f440d4fcbc5eab05817dccc7', 59, 1, 'fore', '[]', 0, '2018-06-19 14:01:12', '2018-06-19 14:01:12', '2019-06-19 14:01:12'),
('37bcd5242d0cffc5b448f440ac92d5b5884ef0a4f2b3d03e9d98810d0e1c5ab7069ea67ea33425a3', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 16:20:05', '2018-04-11 16:20:05', '2019-04-11 16:20:05'),
('37e074780eab78dcde9dd792d83f8db8bef125d0a12f2c090606d33696e40ada8840a44940213207', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:56:07', '2018-04-04 20:56:07', '2019-04-04 20:56:07'),
('3828b9ab0577c81dd483f1f8e9e9966c0741bd165ea1387ed789f6f5d5eec6459e9f54260455ddcf', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:35:09', '2018-03-28 12:35:09', '2019-03-28 12:35:09'),
('38d9b6e53936ad0be5159ab586c2efb8aee41dcf674b0c8a00b14183c6fb69bdd3b0a5214812d0d9', 56, 1, 'fore', '[]', 0, '2018-07-18 11:03:42', '2018-07-18 11:03:42', '2019-07-18 11:03:42'),
('39053eb5028f55021e270ddb5dfa462e8daa82b1ae950f6ebf0ba7376628ff2731136bf61c91561b', 64, 1, 'fore', '[]', 0, '2018-11-20 00:10:30', '2018-11-20 00:10:30', '2019-11-20 00:10:30'),
('39339c11056bc761b8eab358261ce7a2f507431221ddf74e7b87fabe19ec34c32bae1f5144b9a231', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:21:35', '2018-03-21 22:21:35', '2019-03-21 22:21:35'),
('39cf7edc8a5e81787c4b07955c62ac94c128f11e0d5df07bf4c3dda7fc1049d249cf09f9f79848b5', 59, 1, 'fore', '[]', 0, '2018-06-22 10:20:11', '2018-06-22 10:20:11', '2019-06-22 10:20:11'),
('3a77267b60920b630c1d914685738b5d4f1d5e0a367b0b3ce1536e0be45f922fbf7d4b35df31abe4', 38, 1, 'fore', '[]', 0, '2018-06-06 16:22:53', '2018-06-06 16:22:53', '2019-06-06 16:22:53'),
('3a9ed8c5d3fbad0f8efee930ee5e0efd19bb30a76497da9a0c4813acdeb8cfa87fb796a9080e63eb', 60, 1, 'fore', '[]', 0, '2018-07-20 20:57:29', '2018-07-20 20:57:29', '2019-07-20 20:57:29'),
('3b517d6f1221d794e920b1751561b289583bd074fc8f035ec6a34df712d2670cb1fc2674f3d96044', 24, 1, 'fore', '[]', 0, '2018-06-01 09:49:08', '2018-06-01 09:49:08', '2019-06-01 09:49:08'),
('3bbb6dc9c6f456cf0e3eb975ab04c8322ebd4dced99e32490279a3695f42494a378b7dbb0ac53972', 55, 1, 'fore', '[]', 0, '2018-07-20 22:03:00', '2018-07-20 22:03:00', '2019-07-20 22:03:00'),
('3c2fd80ee44c504f4b68b77b6426de9965dd72948db37399e8151db35ac9b5310ef8bc40a7cd7a4d', 56, 1, 'fore', '[]', 0, '2018-09-10 11:52:30', '2018-09-10 11:52:30', '2019-09-10 11:52:30'),
('3c3aa2e9f07330fcbe038bb9aa7f3fb69bb5b81af61109abd16fb0f8aac8067bde6d36cc33605d8a', 56, 1, 'fore', '[]', 0, '2018-06-30 09:42:36', '2018-06-30 09:42:36', '2019-06-30 09:42:36'),
('3ca2df05bfcb13d6b3b00e751b8674dd1703a981e6e1975988927618d2c9c8f9aecd1672abd59309', 56, 1, 'fore', '[]', 0, '2018-07-20 15:00:04', '2018-07-20 15:00:04', '2019-07-20 15:00:04'),
('3cd30248087e5db97b842ab836b361ae4b2b1d3457c9ce2bedb9243794da41699f27c2aa9f5679f0', 37, 1, 'fore', '[]', 0, '2018-06-05 23:09:15', '2018-06-05 23:09:15', '2019-06-05 23:09:15'),
('3d0b59048d7afe06ed0d49099c67dc19b35723beca61b6c7f17ea0baa648db09f96b70efcd3b3657', 56, 1, 'fore', '[]', 0, '2018-07-23 13:01:20', '2018-07-23 13:01:20', '2019-07-23 13:01:20'),
('3d3ddc90691d6270a6fcd17bb5c85c6dde6eb453c6aabd5c6437b4f130429f6d21f4a76e7ff0029a', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:57:21', '2018-04-11 23:57:21', '2019-04-11 23:57:21'),
('3d9bce284d46d61cb73bda2306cd26602ca2afe0e20fda2eaa7ec85081c7d90f594d740e4ce3e986', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:06:38', '2018-04-04 11:06:38', '2019-04-04 11:06:38'),
('3f0a63116d7429daf1e85ab6c558b6d6229e7f0bf457a61fd58a97ee692a8a598779b7d7adc20a0e', 28, 1, 'fore', '[]', 0, '2018-06-03 17:03:30', '2018-06-03 17:03:30', '2019-06-03 17:03:30'),
('3f14461ffca18fc0d2484f909d2032a035f3705e6d4fb31326878caae309d0e4ea0ed67107a55f97', 56, 1, 'fore', '[]', 0, '2018-06-30 09:34:52', '2018-06-30 09:34:52', '2019-06-30 09:34:52'),
('3f765f66667e8b521f6691a8ac160d3e8672f1e2a62493876eb0eea3bace60bc57a7cbf8f60d167e', 58, 1, 'fore', '[]', 0, '2018-06-11 16:00:38', '2018-06-11 16:00:38', '2019-06-11 16:00:38'),
('3fac2830bb7847e40df37ae02d39f54d7bc1cb1e1377ebc65f9997dff1341c45718d683262e0f173', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:49:14', '2018-04-09 00:49:14', '2019-04-09 00:49:14'),
('402cb0624555985e2cf4eed0234da4f241e985dfbf02f07fa1c2829316d9ff3faa5f536791cc4089', 28, 1, 'fore', '[]', 0, '2018-06-03 17:00:08', '2018-06-03 17:00:08', '2019-06-03 17:00:08'),
('40ab80b4241d34ec9a73e35194b143b3871c5fa1704c3ddacca9474efa400ad91909577efd787f75', 29, 1, 'fore', '[]', 0, '2018-06-01 13:02:49', '2018-06-01 13:02:49', '2019-06-01 13:02:49'),
('40c54904442bdfa843aab2373720d36339692c0aa8aaaeaf142b1d9b26747c4f77cf783bce016b4a', 13, 1, 'Pizza App', '[]', 0, '2018-04-08 23:55:46', '2018-04-08 23:55:46', '2019-04-08 23:55:46'),
('410296a2603b03ce0df6e92e74161fc5fb379cb4d50e879013d83d19a688860c68771c35d7f301ab', 74, 1, 'fore', '[]', 0, '2018-09-26 12:47:21', '2018-09-26 12:47:21', '2019-09-26 12:47:21'),
('412101be2a394b9d214615a9861ee49172a1b8283c7e02378bdf48957bd27a69a6f81aa2821660a7', 56, 1, 'fore', '[]', 0, '2018-06-22 09:23:00', '2018-06-22 09:23:00', '2019-06-22 09:23:00'),
('41a2a4a75f28c10e328a7dca7fcfe0c1c2cf00d738017e91e65bd93b7e1170fd8377aa81155e9f4b', 28, 1, 'fore', '[]', 0, '2018-06-01 10:54:33', '2018-06-01 10:54:33', '2019-06-01 10:54:33'),
('41b2ddef88399797b13a4f1dbc294397ee2e69114bf8cb003f8fe492985651774562d607f29bbe46', 56, 1, 'fore', '[]', 0, '2018-07-18 16:44:40', '2018-07-18 16:44:40', '2019-07-18 16:44:40'),
('422c50af365c4521bbe558a2a6a8da07ab8d3b2d65d9eba004bda70f1eb8484d61be9339df8362fa', 76, 1, 'fore', '[]', 0, '2018-09-28 21:44:18', '2018-09-28 21:44:18', '2019-09-28 21:44:18'),
('428db223d1b4e564c0197e4ea3935d8895f80291b7bf8f71f67cd7c9c65772356a746dfd8cb7ada5', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:28:27', '2018-03-27 15:28:27', '2019-03-27 15:28:27'),
('429f58f276d2eac404edc3a726bb443052d6af23a5feab1592599ce5ca9417e599ddd67d5573c7f4', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:25:44', '2018-04-09 13:25:44', '2019-04-09 13:25:44'),
('42ab37cf0becc261d785b81629a66e4b18762972d67195e01558d10454811a233892a1c460e34dac', 13, 1, 'Pizza App', '[]', 0, '2018-04-13 12:04:37', '2018-04-13 12:04:37', '2019-04-13 12:04:37'),
('430623bd9d6059580b4bcaf0d360f5e1936040b36763663c64e90c6372d9640f199122be9e1c10f1', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:43:12', '2018-04-11 23:43:12', '2019-04-11 23:43:12'),
('434ebde8a49702074c6e86959b97b6c8e0741bfc26cd307deaaf96a5b08089890e0b0bd5fbdc5ed4', 56, 1, 'fore', '[]', 0, '2018-07-18 15:07:27', '2018-07-18 15:07:27', '2019-07-18 15:07:27'),
('44c0bf419c47384a12f6f0a9168447534123066ee3a88adff9beb5e3bd5bef856d5e9b335f2427c7', 59, 1, 'fore', '[]', 0, '2018-06-19 18:19:33', '2018-06-19 18:19:33', '2019-06-19 18:19:33'),
('45364cda1e99da23ecc99b751e8407b661f079304d651c219eba2b4db8f4232fa615dc4b2e4b8719', 59, 1, 'fore', '[]', 0, '2018-09-14 11:55:20', '2018-09-14 11:55:20', '2019-09-14 11:55:20'),
('4541bd96aab7a164d77f42c21dbb654467044800b5bd05104aec957ff2a55ebb9fd5567ff22635e2', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:13:34', '2018-03-21 22:13:34', '2019-03-21 22:13:34'),
('4559e4fa0a595467c0d4fbbbccdc2d8fce4d0afb0017c1d0a6818bde977ce79c178fce6a925fac80', 38, 1, 'fore', '[]', 0, '2018-06-06 13:00:48', '2018-06-06 13:00:48', '2019-06-06 13:00:48'),
('457c4c42653aa4469f367b216a521d3dbfbbe6f724ec9bba84c0441d3197ae5d601f6cd7e7ffed5e', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:16:39', '2018-03-28 13:16:39', '2019-03-28 13:16:39'),
('45bfbbf1cf205f8a05c2deb2f867339ba6fd6286b804f346ff19b792b44b08ff3614d08768883e0f', 57, 1, 'fore', '[]', 0, '2018-06-11 00:24:40', '2018-06-11 00:24:40', '2019-06-11 00:24:40'),
('462b8a64fd718c9091e9c7ca691f2a65fff09dc1431c5ff0393d3e2d9257fd004ad1fdf54fa820ff', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 21:04:56', '2018-03-20 21:04:56', '2019-03-20 21:04:56'),
('463a5ffff54f23a3977c3f0b72956518483a74ee9696045047c0b6a5192745adf77dca5fafefa7fb', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:48:27', '2018-03-27 16:48:27', '2019-03-27 16:48:27'),
('4670ca01244849f55dcaddc09c5fc132de31797b4a57081d1251151c923bdf330bd4ed32fc14bd72', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:14:04', '2018-04-04 11:14:04', '2019-04-04 11:14:04'),
('4686c553160c5683ad4ff40a086a4622a5f4d6d132fa2304f803a83c808eb1c523b8ea7f9c4c168a', 56, 1, 'fore', '[]', 0, '2018-07-24 22:19:37', '2018-07-24 22:19:37', '2019-07-24 22:19:37'),
('46e344ff405f19e54acd091037bbc600ee9d731ee9b5214dc7fd65ae71f8e00d5e767f3ee7835ea5', 14, 1, 'Pizza App', '[]', 0, '2018-04-05 16:24:41', '2018-04-05 16:24:41', '2019-04-05 16:24:41'),
('46fec00f0d9401ce4a2657f1507afd662775eec29982be598e7fa8fdfc55b72a35133de4652675df', 14, 1, 'Pizza App', '[]', 0, '2018-04-05 23:10:36', '2018-04-05 23:10:36', '2019-04-05 23:10:36'),
('47195627868490202575c257a52fa14ea157c8321fff66f794b7649952da2c0b966ad6300bc38950', 13, 1, 'Pizza App', '[]', 0, '2018-04-12 15:59:15', '2018-04-12 15:59:15', '2019-04-12 15:59:15'),
('475730c5685756e15d7ad6ec745d4de4b64d469263957697c0026a343ea5d9ddd6669c22681bc62f', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:48:40', '2018-04-09 00:48:40', '2019-04-09 00:48:40'),
('47d427670eb59254971c28ce9832ba31b87117291ffb159923eef5d88d3cd6ca1c15198898d42745', 37, 1, 'fore', '[]', 0, '2018-06-06 13:56:49', '2018-06-06 13:56:49', '2019-06-06 13:56:49'),
('480e235c103b9ffa5dfe1d16cca9699485cc01d73cbacd86eb2e650bda5ec8cb4308496371b1f75f', 56, 1, 'fore', '[]', 0, '2018-07-18 15:20:14', '2018-07-18 15:20:14', '2019-07-18 15:20:14'),
('481de0bf601ab92e8a0b739d079628d1228b90db66417dd4896a97c52bbceec6c76f8f5e658b9340', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:18:07', '2018-04-09 12:18:07', '2019-04-09 12:18:07'),
('48a098682f0bb43648e63345722e2fe9baff04c9b2a9447f89ba3a1c1ddc90982f25b9b2ca830887', 55, 1, 'fore', '[]', 0, '2018-06-30 17:03:28', '2018-06-30 17:03:28', '2019-06-30 17:03:28'),
('490a050a7312503ad80486f87a051b26e549226fabc1ad806883506a147e4ade51c4d61323e649d8', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 12:13:26', '2018-04-03 12:13:26', '2019-04-03 12:13:26'),
('4963931df4c590d51b87daba8ecfa19daac953ca103ba21a3a7620f35aa01762be5df2b15dbbaf59', 56, 1, 'fore', '[]', 0, '2018-07-18 15:39:47', '2018-07-18 15:39:47', '2019-07-18 15:39:47'),
('499381d3c72b57c489327573942b1a967dfbfc6c4d6679f98029be0d3572e12044c93645c8517850', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:30:10', '2018-03-28 13:30:10', '2019-03-28 13:30:10'),
('49eb448a163e38377d681488b15738db6f9f358ef578a44953666d83b022b7d46b0a9773cf621194', 56, 1, 'fore', '[]', 0, '2018-07-23 12:50:11', '2018-07-23 12:50:11', '2019-07-23 12:50:11'),
('49f10b712f118b3190a88c098e28b22239de2c4bdb93e53f54b76579b0321c0ce10fd18cee6e0c70', 26, 1, 'fore', '[]', 0, '2018-06-01 10:20:46', '2018-06-01 10:20:46', '2019-06-01 10:20:46'),
('4a03d92f68aea6827bf2691dc97d2d6eb6e11c1fa855fa472c1eb1d9bcbd9b674e921e0e28547135', 43, 1, 'fore', '[]', 0, '2018-06-06 21:58:55', '2018-06-06 21:58:55', '2019-06-06 21:58:55'),
('4a26985fb2578b38913701c238750909aa4e92e738a1a6015391cd55e316321a25dc5b395e90f81f', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:43:17', '2018-04-04 20:43:17', '2019-04-04 20:43:17'),
('4a27809e9b9da870381a5967a621840f1d886c6377278ffd822336d17e580a9587f180468bdfeefd', 59, 1, 'fore', '[]', 0, '2018-06-19 18:16:08', '2018-06-19 18:16:08', '2019-06-19 18:16:08'),
('4b48946d693db9c0f64add1a9bc93ec4b076168c1c50f6dd3db63016ca07486021c1c4860ec67ce3', 64, 1, 'fore', '[]', 0, '2018-09-25 22:54:36', '2018-09-25 22:54:36', '2019-09-25 22:54:36'),
('4b7cb8661beabbca971a73b4bc94403352c85cdc8affedd1dac5718c8784b2229ec6efdc0ecdbc1e', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:46:53', '2018-04-09 00:46:53', '2019-04-09 00:46:53'),
('4bf995d65e5da0e956d3a7c9cdda9685cff3123df6dfa609eac0f8867ced6facb7f59fe98e39cb3c', 14, 1, 'Pizza App', '[]', 0, '2018-03-27 16:49:39', '2018-03-27 16:49:39', '2019-03-27 16:49:39'),
('4d029a21ab3e0ca7ec7a6db8725c1715967c10dd3b983d00ab8cffca750fceb7cd55fabe15148262', 38, 1, 'fore', '[]', 0, '2018-06-06 13:19:04', '2018-06-06 13:19:04', '2019-06-06 13:19:04'),
('4d0dc449497c3e47629b1937e02af36829a48094ad20a02db6c81dc1e9e5de9f46b173f30bb14bd6', 61, 1, 'fore', '[]', 0, '2018-10-31 13:18:40', '2018-10-31 13:18:40', '2019-10-31 13:18:40'),
('4d70f0acd04d5aef1270cb173f7629af369145722228051dbe27118c9aa8e1420ca98e88b190bd6e', 23, 1, 'fore', '[]', 0, '2018-06-01 09:46:26', '2018-06-01 09:46:26', '2019-06-01 09:46:26'),
('4d7180383f7e888e1bdb832e10725ac5e33823f4ed927ef7cbab074296f09b7d65bfd48993679706', 43, 1, 'fore', '[]', 0, '2018-06-06 22:24:09', '2018-06-06 22:24:09', '2019-06-06 22:24:09'),
('4edc4e971cdfc9f9893ee3955bede25e1ed4f784ccec4d3a073d15ffe52a566082447bb698b94a83', 56, 1, 'fore', '[]', 0, '2018-07-18 11:05:02', '2018-07-18 11:05:02', '2019-07-18 11:05:02'),
('4f5c6f2ba35a68606928b6f233f9e6538feee351a364e6bf94577b09bb505f5cb5485d877916668c', 56, 1, 'fore', '[]', 0, '2018-07-18 14:56:05', '2018-07-18 14:56:05', '2019-07-18 14:56:05'),
('4fe96b2443424f2f620485049503ddf96934500933f36ba30ce000ff93d54ecf44caf2d9f8f8791c', 56, 1, 'fore', '[]', 0, '2018-09-10 11:32:32', '2018-09-10 11:32:32', '2019-09-10 11:32:32'),
('4fef91011d8a780ff2cb5fdf5b8d354f65711b9f37ccd7734c699dd516fe91a109effef06c74a2a5', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:54:07', '2018-04-02 10:54:07', '2019-04-02 10:54:07'),
('50cf43c4d283b2878256dc863cb8d9c10688be98dea801a5ef8edffec80da543eff5ba54fe22f68d', 6, 1, 'Pizza App', '[]', 0, '2018-03-22 06:42:02', '2018-03-22 06:42:02', '2019-03-22 06:42:02'),
('5102a9d0d20e0def738098eece6215ecbad934be7f8dc8276f3a30827c806805d8b58cb35b19fcf3', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 01:15:54', '2018-04-09 01:15:54', '2019-04-09 01:15:54'),
('51425aeb7dc2f531f7097a7cccc23ae14f6ec1a97f24736c8985c687eed507dde6dce21737507f7a', 56, 1, 'fore', '[]', 0, '2018-07-24 22:49:42', '2018-07-24 22:49:42', '2019-07-24 22:49:42'),
('515d43da8598c3ab4d631bb95339f3d0f05019125c476cc2024411f4b6c1fc23c9840d75b143de87', 56, 1, 'fore', '[]', 0, '2018-06-30 16:44:16', '2018-06-30 16:44:16', '2019-06-30 16:44:16'),
('518a2647a758bc4cf9f8a7359fe02904a6f6c57e3dcfeb0befdf68d93d7fb01ef3a8200b2d109ebc', 28, 1, 'fore', '[]', 0, '2018-06-04 20:52:47', '2018-06-04 20:52:47', '2019-06-04 20:52:47'),
('51c0f877e38564a832b3575e9557a1168f7bd3a9fba1afe7558441474044597290500110d7437d8b', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:45:47', '2018-04-09 12:45:47', '2019-04-09 12:45:47'),
('520ead2ea57d95a03f9c222227f501bb0c4f52aa789dd1e379583c5cbe7ec2d683dcaf9c4f02ab9b', 56, 1, 'fore', '[]', 0, '2018-06-26 13:55:28', '2018-06-26 13:55:28', '2019-06-26 13:55:28'),
('52a341146f614a5d0f631df9dd495737824f2d5041e89300bdb4e9fd0bbf2f713c937f7455cba720', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 17:39:51', '2018-03-27 17:39:51', '2019-03-27 17:39:51'),
('52f9ada7c98184668a6b9cfb786c7346adabf84d5e555bef0103f2685d62af4304fdd90197d6a7c4', 13, 1, 'Pizza App', '[]', 0, '2018-03-29 14:22:56', '2018-03-29 14:22:56', '2019-03-29 14:22:56'),
('5366b0b591c9d59c33eac799107e4a95b8ce8702299acd580169aeb07ab863877185e7e848dee396', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 20:55:00', '2018-03-27 20:55:00', '2019-03-27 20:55:00'),
('5375fe411686f178c08f1e9b463ebad5192e46ad6c21442562287b8c8581e0b9be62f593c9ff51f2', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:04:41', '2018-04-02 12:04:41', '2019-04-02 12:04:41'),
('53b7895135430eed8af754229c15f32592a65b36fe4d224514162e52831157b8bae1ca25b61c7d8e', 15, 1, 'mui', '[]', 0, '2018-04-19 23:03:19', '2018-04-19 23:03:19', '2019-04-19 23:03:19'),
('541a53a03002313ef94c33466817ef186eb2194ae2948b3d0571ea08e8e0d0c6982d5344454feda1', 28, 1, 'fore', '[]', 0, '2018-06-01 13:15:04', '2018-06-01 13:15:04', '2019-06-01 13:15:04'),
('54239879ff04a8e816710d8db87498d015463d7a2237a06b0fea6f1ad16b0dda02a9a193ba5b4655', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 23:39:11', '2018-04-09 23:39:11', '2019-04-09 23:39:11'),
('5459ac2d741a95e39a9d1c013919891790db97e295bb0f5f0b05c10076665f117a97aa658cd26a3d', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:06:00', '2018-04-02 12:06:00', '2019-04-02 12:06:00'),
('545f3d3c76dd9c7fb19b29b383590d768df3c197b0e687b0e9637f30f7a09df8541f1310d163fe7c', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:37:29', '2018-03-28 12:37:29', '2019-03-28 12:37:29'),
('55874d424289d113efdfa705d06ae9abbf6a57abeaaa62bb582a92c4ce4876bae2983fc02b6b344c', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:51:51', '2018-04-02 10:51:51', '2019-04-02 10:51:51'),
('55a5391e2fe125c244bd2737e731153576f64f31fad7a24ad90b3929407f72168b282c84b31a7846', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:35:48', '2018-04-04 20:35:48', '2019-04-04 20:35:48'),
('5705b80b693eb444b6e6bc3470f25c7a085463b5c4530320524d8388f18ddb165dafd3de8a3378c5', 64, 1, 'fore', '[]', 0, '2018-11-19 02:11:04', '2018-11-19 02:11:04', '2019-11-19 02:11:04'),
('570dbae9242125ffcbace7de3491adcd0b455036252e79f866c7c84288e7d35f09ddb02c4288fe6c', 38, 1, 'fore', '[]', 0, '2018-06-06 21:43:30', '2018-06-06 21:43:30', '2019-06-06 21:43:30'),
('57517c9e9cbb251739a6c87bbf54ad1fbc303071f85ddb975176d54777391ccf058063817f70f979', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:28:23', '2018-04-05 11:28:23', '2019-04-05 11:28:23'),
('57b6dc9db7bdf363f80cb84c7d89fdd8d122bea006c3cd4f95abfa77e4b2e223299d59e7171d7c9e', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:33:33', '2018-03-28 12:33:33', '2019-03-28 12:33:33'),
('57de464917bef55b3de448be3438f9f6cb52521b3a1837540fbd6fa95c658d26d30f35e209f7470d', 37, 1, 'fore', '[]', 0, '2018-06-06 11:33:25', '2018-06-06 11:33:25', '2019-06-06 11:33:25'),
('586deca56b28092a79d1939581dd9871885367746f526a382951d1125dc4154a792e1b5ff989927c', 81, 1, 'fore', '[]', 0, '2018-10-12 19:52:54', '2018-10-12 19:52:54', '2019-10-12 19:52:54'),
('5882ccdad6bae7c697de8091d50a3e4d6ce611a631385d786da25e54d2cb2558551447239d64d9b5', 56, 1, 'fore', '[]', 0, '2018-10-30 09:19:27', '2018-10-30 09:19:27', '2019-10-30 09:19:27'),
('589ec118cf987ba37823ad11df802da6d303c53b677a374b8e989c3d9a89db4d6e8fb0360c8299db', 45, 1, 'fore', '[]', 0, '2018-06-07 16:22:56', '2018-06-07 16:22:56', '2019-06-07 16:22:56'),
('58c5044d03c3536ea549d81ed696be091ce8ca593972c714aee9bb437a090452e4dc9e9557603acd', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:17:26', '2018-04-05 12:17:26', '2019-04-05 12:17:26'),
('58e145fd2bd8f1fab76262e267b84835b6d2361ce3d7aa16b5bac166dc2a04a62704c869fe1cb041', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:29:55', '2018-03-27 15:29:55', '2019-03-27 15:29:55'),
('59abcff3aaf1b1fb5e09bb087f16ca398d266f5845143bd0105270d3a78744d21bd3b3cbdb0b5240', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 22:02:44', '2018-04-03 22:02:44', '2019-04-03 22:02:44'),
('59b350e2c8c64246a514a0cd0b626dce7f78eb007a0830bc56c22a83b16cd260542461d130309de5', 55, 1, 'fore', '[]', 0, '2018-07-27 09:42:05', '2018-07-27 09:42:05', '2019-07-27 09:42:05'),
('5a088f4239b5a2b71f5e3b93a2d65bb2b0dc4f5e5478daa1aa81ed915e610516d3fa869f43f0eeb3', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:41:07', '2018-04-09 13:41:07', '2019-04-09 13:41:07'),
('5a55c89538a52955c2325ddc8ddeba0d57750329e8c3f34c7da46eab9ccf761fa8f88b4cffcddf06', 37, 1, 'fore', '[]', 0, '2018-06-06 14:58:25', '2018-06-06 14:58:25', '2019-06-06 14:58:25'),
('5a859a3d2f125767cd3680f481ee61b3bf74a7684d5c570bc7348a61e20c6fdca4f9b6491f5a4aa2', 38, 1, 'fore', '[]', 0, '2018-06-06 14:30:44', '2018-06-06 14:30:44', '2019-06-06 14:30:44'),
('5b3965b06dc3fd4ee353d3f53e9a77d0e2d2f70a50b8709efb206ba6312727e217401798dfe1db25', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:24:29', '2018-04-05 11:24:29', '2019-04-05 11:24:29'),
('5bf3f0509378b839bbeec82d906f21f22438a5bc81ba331dd6589477d86311c675437d47d49c3264', 57, 1, 'fore', '[]', 0, '2018-06-10 23:48:38', '2018-06-10 23:48:38', '2019-06-10 23:48:38'),
('5bfab5d0ae5a3339fb55ac822a8f1f79be34cd969a29ab19b76b50aa8b3796ad13508a03b36c8f6a', 17, 1, 'mui', '[]', 0, '2018-05-02 16:01:55', '2018-05-02 16:01:55', '2019-05-02 16:01:55'),
('5c0e77e871ee77515386c1ade3322ad9f18eec9f34f792582dd69832db811ffab3fb91184916fee2', 56, 1, 'fore', '[]', 0, '2018-09-25 10:46:08', '2018-09-25 10:46:08', '2019-09-25 10:46:08'),
('5c2e8266c363fd9673b9723226e1b98d74a782f4184229279b5ae3278a97c820ca9329a813c01131', 37, 1, 'fore', '[]', 0, '2018-06-06 11:34:02', '2018-06-06 11:34:02', '2019-06-06 11:34:02'),
('5c3642b99d0ffb75f5e081aa1754c42d62b271acee40138f7b00c1a99d696a300ce9ea6834525e9b', 56, 1, 'fore', '[]', 0, '2018-07-19 13:43:41', '2018-07-19 13:43:41', '2019-07-19 13:43:41'),
('5c5f2896a7d5b4bced4689b5bd9f74888f862743d3b0145e1c29f22cf483158f271e7e0e4d7a44cc', 56, 1, 'fore', '[]', 0, '2018-10-09 13:58:20', '2018-10-09 13:58:20', '2019-10-09 13:58:20'),
('5d22e6a97535a258d8d8619a88eec9246b9629e4e28ed76198876b4403c649a4b3df9c3502d5c090', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 11:34:13', '2018-04-11 11:34:13', '2019-04-11 11:34:13'),
('5d403e0e9cb7d1923c1a8de4089b35315b9aeaeeae20f2faff8e48656277819157e23c23ad2ffda8', 17, 1, 'mui', '[]', 0, '2018-05-02 16:02:59', '2018-05-02 16:02:59', '2019-05-02 16:02:59'),
('5de2e75c9e4d4b326b50d663e46f94828abb31ce935a8bd194207a02bee9e7cc7d8bf1b866da6e0b', 55, 1, 'fore', '[]', 0, '2018-07-24 22:41:42', '2018-07-24 22:41:42', '2019-07-24 22:41:42'),
('5e01f7963eda620682ddfdb1db4865bb0b599dd6479be09a4a785dbd22da0ec66dcde725555c27b1', 37, 1, 'fore', '[]', 0, '2018-06-06 15:15:04', '2018-06-06 15:15:04', '2019-06-06 15:15:04'),
('5ea2b647b86588a9ca413510ad5a3c39461b9e7f1bc0159cf609c9af533d0284e190d919e13f9bba', 60, 1, 'fore', '[]', 0, '2018-07-20 20:57:36', '2018-07-20 20:57:36', '2019-07-20 20:57:36'),
('5f6db86d802f3a7d42da7d2865ffd4c02e14fe03fe8cb169d42cb415ac80eae80c61da22fd70024c', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:44:21', '2018-04-04 20:44:21', '2019-04-04 20:44:21'),
('5f747434303549cdc65911fbb2497cbfa50bb6683b90685c17d3c9e8ede83525715ea91a10cf36da', 61, 1, 'fore', '[]', 0, '2018-11-19 02:08:17', '2018-11-19 02:08:17', '2019-11-19 02:08:17'),
('5f9d6eececbea733d02adade142a7959da13389816755fb012b737b714e35c2a04df8a3d5d12b1c3', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:49:22', '2018-04-02 10:49:22', '2019-04-02 10:49:22'),
('5fabc795c9b634e208b4f0c19e07afc5b309e8eb9e77810e637e6412a9acf88b5eeea4a0d440a6ec', 28, 1, 'fore', '[]', 0, '2018-06-04 16:00:52', '2018-06-04 16:00:52', '2019-06-04 16:00:52'),
('5faedf389e26438b2eb1a79faac20cbb218b2d6a12e8c60f90b4408c9eaef0641ec49d053d94a3c7', 55, 1, 'fore', '[]', 0, '2018-06-27 15:28:24', '2018-06-27 15:28:24', '2019-06-27 15:28:24'),
('604efd4e6e63de3010265c86324339add8803b76d9d5bf2798714b22c1c4d4832694928bb9ea8d87', 36, 1, 'fore', '[]', 0, '2018-06-05 22:52:09', '2018-06-05 22:52:09', '2019-06-05 22:52:09'),
('60ab7b6ff617e0f05b6a38e7a1624d9264d28bf8009bfaf5480eaef8e85dca50d587672719834e4b', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:34:24', '2018-03-27 15:34:24', '2019-03-27 15:34:24'),
('60e7cba7d1151a6ca4f95a53c16bdd33bc119e11137e156ee4ed6638070e4dd36ba5dd0d44566d30', 63, 1, 'fore', '[]', 0, '2018-07-19 15:24:41', '2018-07-19 15:24:41', '2019-07-19 15:24:41'),
('61063af560be6af9f6173d05db090988f8dce52c54a1fde682bdc3023d3943f36ffc696da6a327e8', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:17:27', '2018-04-09 12:17:27', '2019-04-09 12:17:27');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('6113d6a7ff8916148108b1b6c6e9e48099ccd5a81b665a17574516ec6fb72e94731c8e129f608ce6', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:22:38', '2018-04-02 13:22:38', '2019-04-02 13:22:38'),
('614966c46d4c573dcbc567dadf542ac061c7c3b3b5515b0936659b752395d7288d5aecb3ad1bc14a', 56, 1, 'fore', '[]', 0, '2018-07-18 15:21:04', '2018-07-18 15:21:04', '2019-07-18 15:21:04'),
('6161d5c51c828a1f0829230ee652b413d30e8704946424f0a7703619cfdc170aba07893eaa008520', 11, 1, 'Pizza App', '[]', 0, '2018-03-22 22:01:09', '2018-03-22 22:01:09', '2019-03-22 22:01:09'),
('62bb94177b871448a76c54677d074f4621c3a52d867bd71a9f470fe4e4eca6b40535587a19c5926e', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:11:41', '2018-04-09 12:11:41', '2019-04-09 12:11:41'),
('6317c410f3b81cc59940220083daf865505e2d4c8a4571d494a7b777be63b5cddd242563575eb019', 1, 1, 'mui', '[]', 0, '2018-04-19 16:52:13', '2018-04-19 16:52:13', '2019-04-19 16:52:13'),
('63513df64a54bfbeeeb8d29d7ac0d35e40b25ef024bd396905a6cee4135d8c66fd783bfe0134e23d', 56, 1, 'fore', '[]', 0, '2018-06-28 12:29:38', '2018-06-28 12:29:38', '2019-06-28 12:29:38'),
('63dcd5325158104774da05fba358c8236e3294ef2b56ccb5a9f62710a99174437d34485c049a76e8', 56, 1, 'fore', '[]', 0, '2018-07-18 15:01:19', '2018-07-18 15:01:19', '2019-07-18 15:01:19'),
('6407218673f56c61d6e7ee392c1122d2b6dd552a0993fcbf0cffe87d94fcb6b5873bbb45cc0bc635', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:13:04', '2018-04-11 23:13:04', '2019-04-11 23:13:04'),
('643b5a17e58679903886ff4ca53f0236adb40e174d2195b234d40852bd89f772394c1427135a9eea', 25, 1, 'fore', '[]', 0, '2018-06-01 12:58:31', '2018-06-01 12:58:31', '2019-06-01 12:58:31'),
('64734aa0ec796f4b43aa39fae11ad7d837b796cefd71c5ec61883cd2737f9c8a0e342e29e9d657a1', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:25:01', '2018-03-27 15:25:01', '2019-03-27 15:25:01'),
('655c77dabd80f3680a14a44711674817aed033d6f4cf85e3f1bf544fa8cd6562cd428ec761ebc895', 61, 1, 'fore', '[]', 0, '2018-09-14 00:52:56', '2018-09-14 00:52:56', '2019-09-14 00:52:56'),
('6633b2dce26252c5dd80386ab46296d6147806d4c7e231e15557beb2e8efd60884d9585165199c48', 28, 1, 'fore', '[]', 0, '2018-06-04 21:02:05', '2018-06-04 21:02:05', '2019-06-04 21:02:05'),
('664da3af1e5a375408b145da815aba6f8af980bac765391bf1aa5194040a80b58dc5baa8244545c6', 11, 1, 'Pizza App', '[]', 0, '2018-03-22 21:30:27', '2018-03-22 21:30:27', '2019-03-22 21:30:27'),
('665eaea469c74b80f4f47224e801d8960eaca2f177b9040c807b1395f1585ce6a81a8168c8b6e096', 56, 1, 'fore', '[]', 0, '2018-07-17 13:24:09', '2018-07-17 13:24:09', '2019-07-17 13:24:09'),
('6669ce3b2b7a1ecb7a9fe9f61fce1d9ed386266b55d82f41f7b28c562dff5c6f543d0e3ee52ee5f9', 56, 1, 'fore', '[]', 0, '2018-07-18 14:48:13', '2018-07-18 14:48:13', '2019-07-18 14:48:13'),
('667e318e46d2f8e1a182c6fed7a37b7a4d9c2b89dbe893f9a3567f6bad33f879db5def428011cff0', 38, 1, 'fore', '[]', 0, '2018-06-06 16:27:45', '2018-06-06 16:27:45', '2019-06-06 16:27:45'),
('66be916d768afdeeab78fd3ae3ddbb240b82930774f0015943d1b3fb770bc22d5a1cb1256a5f845a', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 11:38:10', '2018-04-11 11:38:10', '2019-04-11 11:38:10'),
('6760e4fa23affd73d5daad366944040eb7edc7c629c5cc959213b9eba83008cc067a0eaa9391c303', 43, 1, 'fore', '[]', 0, '2018-06-06 22:25:46', '2018-06-06 22:25:46', '2019-06-06 22:25:46'),
('678180f2b9ee1e5269c5d5bbe0873490183d022ee0cd6bb578430571c4af885773cf4a54845e6f6d', 56, 1, 'fore', '[]', 0, '2018-06-28 09:06:55', '2018-06-28 09:06:55', '2019-06-28 09:06:55'),
('67cbf4e483e1df93b6ee569abd73eef3f616202b1defe1a08ed542e2c9d23808475a46bf58b6fffe', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:45:38', '2018-04-04 20:45:38', '2019-04-04 20:45:38'),
('67ecdfc1addb805f6d690fefae3725480a6308fa47679163d5b645057f3d232220e0e62cc3ae8640', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:01:55', '2018-04-04 11:01:55', '2019-04-04 11:01:55'),
('67ee54f2a291a07e3310a60c8de881b3757b3349b7ad5d07299931c81e87141f507102520ba59817', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:52:15', '2018-04-04 20:52:15', '2019-04-04 20:52:15'),
('67fb034f4bc51cfa4112276f6f692aaf1fc90bcaa7d3c78a2cc80dec1f62cb52d2343fae5afe2712', 55, 1, 'fore', '[]', 0, '2018-11-05 12:38:44', '2018-11-05 12:38:44', '2019-11-05 12:38:44'),
('6871bc236085b836712b9041a0a37e1ab1acbc31403930562efaa56c91478a9896edef2a36bfabb2', 56, 1, 'fore', '[]', 0, '2018-07-20 20:44:10', '2018-07-20 20:44:10', '2019-07-20 20:44:10'),
('68cc8f68d65df2855f4f6bcc84ae4fcdf5ce3e0cfef89b1307ab1158935f74a7bb541a68b5a4dab1', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 11:59:46', '2018-03-28 11:59:46', '2019-03-28 11:59:46'),
('68ef370a6b320120dc69794310e9f91d2041199c8927eb88f4f910c4c2e3c85d5d1053809333aab2', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 14:07:09', '2018-04-05 14:07:09', '2019-04-05 14:07:09'),
('69560f49b721dfe3437912a80d0b0be4475db611c1842cb09de30a4d7315e63f55227f171389b774', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:26:49', '2018-03-28 12:26:49', '2019-03-28 12:26:49'),
('696665378e79c713d7338f0d9a3e1644b3dd8f38ebccdd33dd1ac3c201a53359c604a3fee3a753b1', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:19:42', '2018-04-05 11:19:42', '2019-04-05 11:19:42'),
('699058cda70df432481d9762ce077be60d16693cc7d0bd24830832a385f247203d32c6f250d6d29d', 56, 1, 'fore', '[]', 0, '2018-07-19 11:25:04', '2018-07-19 11:25:04', '2019-07-19 11:25:04'),
('69c9b6404effec804befe3bab9b19dcde83e048da3ee7b813573a11f079ca307233531effd7a7f2d', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 21:18:03', '2018-03-20 21:18:03', '2019-03-20 21:18:03'),
('69e3b1b10a9c362b700358e6f215d7e753bb4cec3133b6b98ae16cff3ce45bb861978a86777099f3', 5, 1, 'Pizza App', '[]', 0, '2018-03-19 23:11:53', '2018-03-19 23:11:53', '2019-03-19 23:11:53'),
('69ed98ae40ba0778cf942afd51cd129401dbac3b60157b773571e3b4ed85d43e4773578e36d9abe8', 56, 1, 'fore', '[]', 0, '2018-10-22 13:55:59', '2018-10-22 13:55:59', '2019-10-22 13:55:59'),
('6a00ef00b81987bc4528f3197a825e3c4c01f09766c60b010f7e43a42676b42d558edb7b86455923', 13, 1, 'Pizza App', '[]', 0, '2018-04-12 00:01:41', '2018-04-12 00:01:41', '2019-04-12 00:01:41'),
('6a369d8c2f2ee0d8993a8b9fd52dfb5c9e29c6d358f49b6df50c2d4e953d0a0258ebb8d3e6e29cf2', 56, 1, 'fore', '[]', 0, '2018-07-18 15:19:49', '2018-07-18 15:19:49', '2019-07-18 15:19:49'),
('6af30b819eab6f6a00c3daaca929a39413f96a01c7b9333e10b4ce299abca35b45e82160226abf71', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 11:11:16', '2018-03-28 11:11:16', '2019-03-28 11:11:16'),
('6b62b0366b009bc9623b93eed57b661d012fc6c3388de43d237c8e73b7bc2201f02318db196b61c4', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:16:22', '2018-03-21 22:16:22', '2019-03-21 22:16:22'),
('6b901015dab5c58b1b874f490518cb60c230a3e10680cd17c86bb6a250af5f69ba449554ad58a737', 58, 1, 'fore', '[]', 0, '2018-06-11 15:47:39', '2018-06-11 15:47:39', '2019-06-11 15:47:39'),
('6c0d62912a2d6ad8bd59014cce748b05d0d4c5035ab884583dbcca9cf07e05edec15037652fde2ce', 28, 1, 'fore', '[]', 0, '2018-06-01 13:03:16', '2018-06-01 13:03:16', '2019-06-01 13:03:16'),
('6c658a5185444f3a041d2d8be1053817f017a25ed97e9a037f59b60ac1f79bc3fbefc5ad16fa4359', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:42:03', '2018-04-02 10:42:03', '2019-04-02 10:42:03'),
('6c8a4e0faee5fa5ee81c10d6612162fa24cccd4d2c959e7608cbee69d6cdd05e17ae46f52003dacc', 39, 1, 'fore', '[]', 0, '2018-06-06 10:56:09', '2018-06-06 10:56:09', '2019-06-06 10:56:09'),
('6c939433398cfc2b29f9fede1c94a709c064e2a1ec8f9e3d550a4861e0b4efce861e61b410ce96ea', 56, 1, 'fore', '[]', 0, '2018-07-23 13:01:28', '2018-07-23 13:01:28', '2019-07-23 13:01:28'),
('6de9c1835cc7a2526ab2964f044865a096cfddf83777c122eb4c7ab4d1cb321d5a5d8308e0a30be0', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:48:06', '2018-04-09 00:48:06', '2019-04-09 00:48:06'),
('6e00c751b8015f5dfe67ff364c755d7650e0b9ec4d19973a5845f3c43d1b19e5e7ac83adb67f8be2', 56, 1, 'fore', '[]', 0, '2018-07-18 15:19:04', '2018-07-18 15:19:04', '2019-07-18 15:19:04'),
('6e1ac16db97634e8ee851e33e5870c34a2a5541669f8a3cd051e4f2cfd144c2da9ad742a6a0e634d', 64, 1, 'fore', '[]', 0, '2018-11-06 22:31:01', '2018-11-06 22:31:01', '2019-11-06 22:31:01'),
('6e728f53b505384a4a683d41ef22ee47388e7895e09ee4c753eeea284f38ad572844399172c4ffc6', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:30:40', '2018-03-28 13:30:40', '2019-03-28 13:30:40'),
('6f08262a9d640713396e282974bb53c14bda3f50183863a5fff8a8ce6c9ebe81f3a84e2b65054866', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 14:24:14', '2018-04-05 14:24:14', '2019-04-05 14:24:14'),
('6fac04adc0bd23d30b8fd6e18564882b674685daef3d2ec6e0ef6d2c7d288356db777b39555518d3', 56, 1, 'fore', '[]', 0, '2018-07-20 14:58:16', '2018-07-20 14:58:16', '2019-07-20 14:58:16'),
('6fc335fd032b2f9cce9d5d30d97aaeff56e8cd34780069c8da706b0aa032833ef1b75300d45fdba2', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:36:46', '2018-04-04 20:36:46', '2019-04-04 20:36:46'),
('7006e0e753c586342a83e0fc6765d89e9df6011d8f3782a4a3a88ab774a4664a0c7fba9954434d90', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 14:14:38', '2018-04-09 14:14:38', '2019-04-09 14:14:38'),
('701d290f2a2cbc6deb0568cf03306d976dce33da782e673cc96875dac2b9a7fc406b29de5e2f3ca0', 61, 1, 'fore', '[]', 0, '2018-10-16 22:23:09', '2018-10-16 22:23:09', '2019-10-16 22:23:09'),
('7043fab4d7e70a8ad8da38662298f7195e89d5f2f6ad78063b086791cc40aed87b5f20cf1680cf67', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:47:58', '2018-04-04 20:47:58', '2019-04-04 20:47:58'),
('70a920999bbc6b543e0c812f9a27457273c14ac8e359b05685190d97129abf289f5c12a4da954881', 1, 1, 'mui', '[]', 0, '2018-04-19 16:51:44', '2018-04-19 16:51:44', '2019-04-19 16:51:44'),
('70db4c4dd43017e4add3ffb66d99ed84f51fd94a677028211b9050821f185666741ea4b81de05248', 56, 1, 'fore', '[]', 0, '2018-06-19 13:55:42', '2018-06-19 13:55:42', '2019-06-19 13:55:42'),
('70e8f7482e1d7d7fd1683da4a7f79609ee47d9175fc6db20f0ca6771b0a57a960abc110d34e5728e', 56, 1, 'fore', '[]', 0, '2018-06-16 23:33:09', '2018-06-16 23:33:09', '2019-06-16 23:33:09'),
('70faa7d789c76a6fe1994f59606c215033fa3605b8d22c11c044b52ec3d50307222e2f86e9daca00', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:29:45', '2018-04-11 13:29:45', '2019-04-11 13:29:45'),
('7148be5095544cd4e5d6155c7e85af93174fde3f7ebf763bfbae81a2ebce964b7068d78c0981dc2e', 49, 1, 'fore', '[]', 0, '2018-06-10 23:42:31', '2018-06-10 23:42:31', '2019-06-10 23:42:31'),
('71d4fc4cc883c011a01476ebc3eb333ac16ce4755c6e9e32fccff1d8068dd92fcf0785c3fb47d941', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 01:27:51', '2018-04-09 01:27:51', '2019-04-09 01:27:51'),
('71e95ba1d50853db9d1babdb66edbf8c3e617fc5549528d005c0ad569b24cb682fe1662cbc3ce12d', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 14:13:55', '2018-04-09 14:13:55', '2019-04-09 14:13:55'),
('728742c0919eec7cc7c6fd29af3d78939e61085dc1b86f7cb7095b61ed52b61f4df5d0a371123650', 61, 1, 'fore', '[]', 0, '2018-10-17 17:17:47', '2018-10-17 17:17:47', '2019-10-17 17:17:47'),
('72bb904d5329ddf15cf0b1e9808cd36ccefab733d293aae966afd0ccb64231b237b0c5b364b426de', 7, 1, 'Pizza App', '[]', 0, '2018-03-21 00:40:40', '2018-03-21 00:40:40', '2019-03-21 00:40:40'),
('72f420dba22bb834fd0be9f1b6660063635684b93f1f7aa2c10eae1abb33b171fee3951ed424fb1d', 31, 1, 'fore', '[]', 0, '2018-06-04 22:28:18', '2018-06-04 22:28:18', '2019-06-04 22:28:18'),
('732a79fc2dedba3b93a94a945125d1a27c9b4247017b708b1f646413714ec30863b2937548040a1a', 1, 1, 'Pizza App', '[]', 0, '2018-03-14 19:13:28', '2018-03-14 19:13:28', '2019-03-14 19:13:28'),
('735f72a41cadd2cb898e38e9fbb5649f8ae0d45942d990a37892572f71ecf10ec3d112739b3a5c35', 62, 1, 'fore', '[]', 0, '2018-07-17 20:00:29', '2018-07-17 20:00:29', '2019-07-17 20:00:29'),
('738c71553c24be745feb956b6d0014da1d918bb0e22f8ae9c472c487988b864f05687525ae0e098d', 13, 1, 'Pizza App', '[]', 0, '2018-04-08 23:55:10', '2018-04-08 23:55:10', '2019-04-08 23:55:10'),
('73e681dbd731c378f61a10b47b2b3fc56fd0aa1cc94ab726d291d7cc136254efad0e434d14f1c278', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:05:29', '2018-03-28 12:05:29', '2019-03-28 12:05:29'),
('7460180ad300036987941f5bb517d779af2c89fed405bede8f767cc47076267660af971af4b2260c', 56, 1, 'fore', '[]', 0, '2018-07-19 11:18:52', '2018-07-19 11:18:52', '2019-07-19 11:18:52'),
('746740e12ca21794d54b03c435a051c19864463056be513745166cf956f38eb92d3c9b36fefeb09c', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:29:55', '2018-04-09 13:29:55', '2019-04-09 13:29:55'),
('7492e18813a4165ab81af1071d07b64669d40d1d663a4d799dc854e69f91a1513b3586524680e49e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:22:35', '2018-04-02 13:22:35', '2019-04-02 13:22:35'),
('749c577bb79034bba4fb98bff3b699b720e724124cad9d346523f065b4d8a69084d8ca123b241d52', 56, 1, 'fore', '[]', 0, '2018-07-18 15:07:44', '2018-07-18 15:07:44', '2019-07-18 15:07:44'),
('74b808643270d793ae5b2fadb19dcf7a77b5101731de634186e078ae2ee5ae1f0d239122371bb8cc', 55, 1, 'fore', '[]', 0, '2018-06-11 15:48:45', '2018-06-11 15:48:45', '2019-06-11 15:48:45'),
('74cafb756bf9267133f20ddfb79b314bdb1b6fb86d02a25764dfcd9dca5a2f9a8e36fb031731935d', 35, 1, 'fore', '[]', 0, '2018-06-05 09:43:08', '2018-06-05 09:43:08', '2019-06-05 09:43:08'),
('74e054e65bc040714da98a6259bb5a96250c22b3699f64631fff6ac21f034210881d318c19c02808', 43, 1, 'fore', '[]', 0, '2018-06-07 12:50:25', '2018-06-07 12:50:25', '2019-06-07 12:50:25'),
('752485c9ffde78c1482eb8234a403090283950d979d6b1b2f2a9e21d0d144cb8e078fa706900ccbd', 56, 1, 'fore', '[]', 0, '2018-07-19 17:27:21', '2018-07-19 17:27:21', '2019-07-19 17:27:21'),
('7543eb1dc70865f6254c4dfa15c0bf4a2cb5800fbdf4e23e8003bb32ecab6a77978b5fd1fad0f44e', 60, 1, 'fore', '[]', 0, '2018-07-20 21:37:16', '2018-07-20 21:37:16', '2019-07-20 21:37:16'),
('7570125834a0336b09baeb1b3ecd241a9e2581331b511c5781e36f897c10bec65efcdfce46c1f0f7', 33, 1, 'fore', '[]', 0, '2018-06-05 09:18:31', '2018-06-05 09:18:31', '2019-06-05 09:18:31'),
('757ff76d6500c66426c3c6af2cb185a5e815900e0e0728c8cf59f25ddce0bde4124ca04969424869', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 11:17:00', '2018-04-02 11:17:00', '2019-04-02 11:17:00'),
('7588572dacf2b38e48135c23e43d90797ae6396bb44e1493fd52533661d708582a6661b1a9853dfb', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:46:05', '2018-04-04 20:46:05', '2019-04-04 20:46:05'),
('763791203fc0fd93fb06796737ef04cf356c4c8c55d3f6ff8eafa49946c21d28b57f9002412360f1', 38, 1, 'fore', '[]', 0, '2018-06-06 00:08:44', '2018-06-06 00:08:44', '2019-06-06 00:08:44'),
('7638fcd2dd26032875d2b0c98c8ffca42feed49f11892044669f0eccefdb71851c12f1c3e76ee8ab', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:33:48', '2018-04-04 11:33:48', '2019-04-04 11:33:48'),
('76ff18220647bd5cec6da8e7992f2bcf43ed9426e08086b0d7028542f8d64f64bd24d483cbdc2822', 56, 1, 'fore', '[]', 0, '2018-07-19 11:19:23', '2018-07-19 11:19:23', '2019-07-19 11:19:23'),
('7761dcd4298946ff39c5c2c9e38147401273b39ee6c90ad3eeceb4e0c0f254bf8d90785e5d1f8553', 63, 1, 'fore', '[]', 0, '2018-07-22 22:35:46', '2018-07-22 22:35:46', '2019-07-22 22:35:46'),
('7797d7195a157c364734449df3931b123a3aa59c7fec78f762cac9e207f574a29e3f4c461b9d0f5a', 28, 1, 'fore', '[]', 0, '2018-06-01 22:21:31', '2018-06-01 22:21:31', '2019-06-01 22:21:31'),
('779a195a7416cdff4104f784ce8c0f819878629b0cda3c4dc980d88e4bfe1b2774feeb2d005fadb9', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:07:44', '2018-03-27 15:07:44', '2019-03-27 15:07:44'),
('77f44c3c6c7e6ad0dcd75ecce32614bf273f494a8155f99b06bfdc6a07e37d789e87c0605456c637', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 22:50:27', '2018-04-11 22:50:27', '2019-04-11 22:50:27'),
('77f9421d8ab15c586cc6f91cc7963e7e45a825eb63edfc7a5398a06f49d6866797bffdad979d63c6', 56, 1, 'fore', '[]', 0, '2018-07-19 11:39:59', '2018-07-19 11:39:59', '2019-07-19 11:39:59'),
('7845ab2f2f2a854a986d9077df3bdadada2969edfc9bbcc609c26378876122702f35fbbc19440e08', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:23:29', '2018-03-28 13:23:29', '2019-03-28 13:23:29'),
('78bd0679b9737aa7354f7cbf2c1a5bf70715ec98a35eb302f61b4b7653cf74ba4e3175019bb8555a', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 20:42:32', '2018-03-27 20:42:32', '2019-03-27 20:42:32'),
('78fd886863c10ea8233898c4789cf363fd7d65306bc918b2688c78f6dc7e2af09839aa11f43fc9df', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:59:34', '2018-04-11 12:59:34', '2019-04-11 12:59:34'),
('78fe6be24dfdb950e486653541e43ee4b351235f2f7830982578dd6704f09bff0196cd8772fea30e', 56, 1, 'fore', '[]', 0, '2018-07-18 15:45:50', '2018-07-18 15:45:50', '2019-07-18 15:45:50'),
('790e4751f200a9600330ebdcab4ab87c6a5dc29c3e440b837a7360c30a42ccd06ebbcf6f61545506', 43, 1, 'fore', '[]', 0, '2018-06-07 14:36:26', '2018-06-07 14:36:26', '2019-06-07 14:36:26'),
('79f39d9927aaf364bb5736ef0dcabb5c84c5690e73e0b5b946c1068d381f8ba9f46e7a8adb58e4fe', 56, 1, 'fore', '[]', 0, '2018-06-16 13:56:26', '2018-06-16 13:56:26', '2019-06-16 13:56:26'),
('7a040a0d943629b11183b26ad02e2bef6ec02da2c74ddcc660ff14db27444d372f62e7073d1acad0', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 20:38:16', '2018-03-20 20:38:16', '2019-03-20 20:38:16'),
('7a3c310315604000a86704c0e9a670fd7a8bb7a51fce14aab8227d4b17aa37e6c11a949a0cfbffef', 56, 1, 'fore', '[]', 0, '2018-06-28 12:36:13', '2018-06-28 12:36:13', '2019-06-28 12:36:13'),
('7a93ea559c182ed0fdb4c56d79281ff85a73365fe5e9cb6ac057970947abdd43759a324ecbbf06b1', 56, 1, 'fore', '[]', 0, '2018-07-17 11:48:00', '2018-07-17 11:48:00', '2019-07-17 11:48:00'),
('7aef9502da896eb0deebe7da69fbd361e52dac50e6690a279d796d0b6319401bc25415c946bef8ef', 15, 1, 'mui', '[]', 0, '2018-04-19 17:17:08', '2018-04-19 17:17:08', '2019-04-19 17:17:08'),
('7b5a41aa2f5e72a56bd1d20a7edc1794950b9f552110a873673203f26fa9e710e93b88ba182eb99c', 56, 1, 'fore', '[]', 0, '2018-07-22 15:35:24', '2018-07-22 15:35:24', '2019-07-22 15:35:24'),
('7b93ad24e0143a34c4c7732b38514d0d31cfc0e85e110e57daf15954f72c2ea9e08775c50dfbdaa7', 64, 1, 'fore', '[]', 0, '2018-10-06 21:23:29', '2018-10-06 21:23:29', '2019-10-06 21:23:29'),
('7bf64e3a11327dcfbd4dde25d3924fc1d1233d509dabd64abbdbbdffdf148c5e9549075dcb379ed0', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:44:49', '2018-04-02 10:44:49', '2019-04-02 10:44:49'),
('7bfe798719395fc0e3d931018b273e42a881421939d16ac60b6eb68183fa13a9a1d6104d69974c3e', 56, 1, 'fore', '[]', 0, '2018-07-18 15:05:22', '2018-07-18 15:05:22', '2019-07-18 15:05:22'),
('7c13010e84dfb4cbc5dffea71357316e9a452374c96c325c9f99e760d50cc7ee614edeeeca5f6f2e', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 21:11:29', '2018-03-27 21:11:29', '2019-03-27 21:11:29'),
('7d0c63911b32219a7d3e5262f73b89389180a83337f5b2aeb1bc5f544dac0f17fc4ab9b9493b9d5c', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 17:12:04', '2018-03-27 17:12:04', '2019-03-27 17:12:04'),
('7e4628bf3e7d40bbe725ea95d00980c352f08849a58522e648dd9c63d8403d3bc99f71911588d40a', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:21:14', '2018-04-03 21:21:14', '2019-04-03 21:21:14'),
('7e9d6caa157ab9cad4b98e751cec745be2cb968370c021d50e81b22442803caf6db5af8a47854e7f', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:19:18', '2018-04-09 12:19:18', '2019-04-09 12:19:18'),
('7eb878ef6b122fca176587163dc935ca690fbe36d63b764ee14bd3537f3da07dbf21b558053a76c7', 21, 1, 'fore', '[]', 0, '2018-06-01 09:40:04', '2018-06-01 09:40:04', '2019-06-01 09:40:04'),
('7ecb8a93b5b482c2f3873d79517e75832714cb9759b5c0d01a9b61b4f5c7853e02b959165a8bee31', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:14:41', '2018-04-09 12:14:41', '2019-04-09 12:14:41'),
('7f2f95095c8fe60b6397549aeef6909fca63a39f478a0d24b2a685ff9504a0ee38c4e1d2edef6c9a', 1, 1, 'Pizza App', '[]', 0, '2018-03-15 21:07:38', '2018-03-15 21:07:38', '2019-03-15 21:07:38'),
('7f5566d2b71e8b32cacd79b52b3fdc72ff4b1d9292f3aa05756913fab984e4d3aa16c9d7236bad97', 37, 1, 'fore', '[]', 0, '2018-06-06 12:32:48', '2018-06-06 12:32:48', '2019-06-06 12:32:48'),
('7f6d1eaff29385d75becbca60c3b1e8e5030c4cb49c02c02a1e9f117f6189efefa4026213503201f', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:52:06', '2018-04-02 10:52:06', '2019-04-02 10:52:06'),
('7fa8e22155815fb6e19b65db9582ae52e189006ad2a4ae438b25fb2083e8e329d0c2cc5a1e717b7f', 37, 1, 'fore', '[]', 0, '2018-06-06 11:26:46', '2018-06-06 11:26:46', '2019-06-06 11:26:46'),
('7fa999c72e3cdbb49bebb3e29b0d9d8d190ef22fd7d6541adce9884c666904281245ef72c440ef8d', 61, 1, 'fore', '[]', 0, '2018-10-23 01:00:19', '2018-10-23 01:00:19', '2019-10-23 01:00:19'),
('7ffb3f3271b73723b6f41fa9b9bbfde028268e4b0c596b9b806eb294353b42e6cef14d303072cf3f', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:50:12', '2018-04-04 20:50:12', '2019-04-04 20:50:12'),
('80343ec2bba2a7bc453015095e8d3a47028e3bb3696f890ec10fb931e30d5fde0be40ccbfc1b9d86', 56, 1, 'fore', '[]', 0, '2018-07-23 12:47:35', '2018-07-23 12:47:35', '2019-07-23 12:47:35'),
('804ca458ee369a56fe3a40c04d30454ebbcc37da48e74294a0eb1bec675f04e58245b7b5e025fe4a', 56, 1, 'fore', '[]', 0, '2018-08-02 11:16:45', '2018-08-02 11:16:45', '2019-08-02 11:16:45'),
('80acb27c6a946f62bcfb05bef8a0e34a9a71aa6c72eeefc9788a22625ce4876fa2450c2d945d1898', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 11:01:12', '2018-04-02 11:01:12', '2019-04-02 11:01:12'),
('814702f025e58c37ce37e792c17eba055dbbb3929d6a432bbaa6281fd83ddd476ced7d214fc893d7', 11, 1, 'Pizza App', '[]', 0, '2018-03-22 21:49:18', '2018-03-22 21:49:18', '2019-03-22 21:49:18'),
('83537e8344c8a342d30a3c9c425be5f81f7c4f414bccaf00cac6f2917de1e59160c9026a5964fb7d', 56, 1, 'fore', '[]', 0, '2018-06-28 12:31:12', '2018-06-28 12:31:12', '2019-06-28 12:31:12'),
('8493fe169ea0d874f91ad7292a9c9725bf23251367d0f1f8c746d1dd9debe5388753942fea5f5ee8', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:31:31', '2018-04-09 13:31:31', '2019-04-09 13:31:31'),
('851c5adc735cb1b075c4d194d5b1c5d5076115da54994ad3d106aa8818412bb200fdaaade2d2c1b3', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:00:11', '2018-04-02 13:00:11', '2019-04-02 13:00:11'),
('861d068a5379842c4d10ae0d8c9599fe7a5b4819da7b06070b144daa6a78d53d3c32269f6623ad32', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:16:35', '2018-04-05 12:16:35', '2019-04-05 12:16:35'),
('8631d1cfc516bd62c7f00a3e48d1315b392024db2cb611390a72c64c9a382192dfa713ca0a59aab5', 64, 1, 'fore', '[]', 0, '2018-10-30 13:07:49', '2018-10-30 13:07:49', '2019-10-30 13:07:49'),
('863c20a4e2a4644da5d0f7e39d660324b10fa05fecc5918eef3b36b63e0938e917dc212de3fbcb2f', 56, 1, 'fore', '[]', 0, '2018-07-19 12:22:22', '2018-07-19 12:22:22', '2019-07-19 12:22:22'),
('86ed0ffd4a85c11a21eaaec2d4e798d6f5870dbb48a5bd84b4aed1bc0549d200df9e0d5eba0547f5', 15, 1, 'mui', '[]', 0, '2018-04-19 23:37:42', '2018-04-19 23:37:42', '2019-04-19 23:37:42'),
('86f261e1837118f40ff4d2e19e1eac0bcc5781d7461db9f5ff6608da14c65ebbf6eb85126cda41d9', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 12:56:02', '2018-04-03 12:56:02', '2019-04-03 12:56:02'),
('872b2ceba09a7c91376962f1271d66184ce4f47f2deb8daebf41140a94d83067ec11e7110f42a9dd', 61, 1, 'fore', '[]', 0, '2018-10-17 17:27:47', '2018-10-17 17:27:47', '2019-10-17 17:27:47'),
('87c10cd517c458146ecd0e384debe540ed29b89f112bca270f245fefb8da5e77f868b797cd3d0eaa', 11, 1, 'Pizza App', '[]', 0, '2018-03-21 19:15:38', '2018-03-21 19:15:38', '2019-03-21 19:15:38'),
('87f98eab071239b259a732192b6fb99943542856b93723aa586e84c351681058d76e9999fb3394b3', 56, 1, 'fore', '[]', 0, '2018-07-23 12:45:45', '2018-07-23 12:45:45', '2019-07-23 12:45:45'),
('8843d4dfc65d282a5843ad243e236ea1da5d236fe9e9a5156873627fe5fade1ab671462cf0decb3e', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:40:54', '2018-04-05 12:40:54', '2019-04-05 12:40:54'),
('88572871c649296e21ca0bcfb34415f228b857e3879d849debf667d9e023094835d96a3d2da7381d', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:16:22', '2018-03-28 12:16:22', '2019-03-28 12:16:22'),
('899b651a14b3cefd3e9ddb57094920f3876c6755f48460fa4e22a671d67a9b777e934099de46bcde', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:34:16', '2018-04-02 13:34:16', '2019-04-02 13:34:16'),
('8a3a2970df671bd6158a67cff3b6ebd8328714707669d16ff4bbb4dfbbbd188adc71fe7e9887d54a', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:23:06', '2018-04-04 11:23:06', '2019-04-04 11:23:06'),
('8a4bc56c39c12be812f696a13c8e6d1afe740f3e7d26fe22385373b551549f7c09883f9ac8e2324c', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:14:52', '2018-04-03 21:14:52', '2019-04-03 21:14:52'),
('8b4664a06a7065e0295c7a45522fc65097a8a392b4e8485a4e5387d45dbc66e903151ea7e0779b7d', 48, 1, 'fore', '[]', 0, '2018-06-07 16:28:29', '2018-06-07 16:28:29', '2019-06-07 16:28:29'),
('8bf3733028c7cbd1dc9813a6f1bd608a81247d0f3b2d685e0b0f024173d6735d4a6aeb929320b2ae', 28, 1, 'fore', '[]', 0, '2018-06-04 20:59:12', '2018-06-04 20:59:12', '2019-06-04 20:59:12'),
('8c8253deb7486c9c77718e5e915151acf9729cefcf3265112305725aed6222e9baa0a16d41fcd8ee', 56, 1, 'fore', '[]', 0, '2018-06-18 13:06:54', '2018-06-18 13:06:54', '2019-06-18 13:06:54'),
('8c8cf07d9282025d9a23ce65839506b0b0794ed2924eda550f11739df90c802b9ab5bb514b75156b', 13, 1, 'Pizza App', '[]', 0, '2018-04-06 15:51:56', '2018-04-06 15:51:56', '2019-04-06 15:51:56'),
('8d15e3b7a40dc2bfc5b47841b7b9217cc476c43ce4b382038c610949eaf7499c674f53d0d78f6664', 56, 1, 'fore', '[]', 0, '2018-10-23 15:00:28', '2018-10-23 15:00:28', '2019-10-23 15:00:28'),
('8d66791a30a68a4af8e784a4e330a83f845f24ba3554a35402833356c98dddd4043fac24e1367b06', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 14:13:10', '2018-04-09 14:13:10', '2019-04-09 14:13:10'),
('8e387639d7703c0680c2ee262626ebd0ce082ec1e280310a97ae78aa64d59def943c230c8fb53cad', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:06:57', '2018-04-02 13:06:57', '2019-04-02 13:06:57'),
('8f1c702f9cea468d872356aee705346ca0fcfebfc72da8033f345d1e64557665562ea1311303ea06', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:16:50', '2018-03-27 16:16:50', '2019-03-27 16:16:50'),
('8f2f37817b0f153b58ad3c42a61d4d401a6d5123c61003979692f5e6c9c2c70b343bd1126d243aa3', 56, 1, 'fore', '[]', 0, '2018-07-23 12:58:47', '2018-07-23 12:58:47', '2019-07-23 12:58:47'),
('90cb83d3ca33103da113c667c23df91f6b42d24bb24b6be2136e546c4acae4567a8b6729faed3f4f', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:56:55', '2018-04-02 12:56:55', '2019-04-02 12:56:55'),
('90d2e3dabea05429ef9eb16c1ea1b2d03e2840eb51ffdf693c3abaea765b6935fd0dc749b192dcef', 56, 1, 'fore', '[]', 0, '2018-07-18 15:43:31', '2018-07-18 15:43:31', '2019-07-18 15:43:31'),
('916e8ba51196897a8ae3f76450420e58e416c4de5876a839006be7d41a592304a4960a188bc516dd', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:45:51', '2018-04-09 00:45:51', '2019-04-09 00:45:51'),
('918cc47a98e9ee8aa3f6220ca77099516590d46051e4a4aa0f3447cf8945fc20e81419e7a58aa2a4', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 11:24:21', '2018-04-02 11:24:21', '2019-04-02 11:24:21'),
('9216162e2531c083e2bedd0669c5b2230ae36f8a11fd5be14346caa05ec5c6c3c5f9e4172b7df85a', 70, 1, 'fore', '[]', 0, '2018-08-14 17:20:03', '2018-08-14 17:20:03', '2019-08-14 17:20:03'),
('92365862cacb545f9ffecdf27c847de85cf54f17bdc2e3e50fd09bc8c7b28f6263087713d5c9fcce', 26, 1, 'fore', '[]', 0, '2018-06-01 10:41:13', '2018-06-01 10:41:13', '2019-06-01 10:41:13'),
('9254c4b2886caf86df0f4f2ca6585d130098cd58eff52624132153e6b504a762ff2160db134d6bcc', 55, 1, 'fore', '[]', 0, '2018-06-08 14:36:45', '2018-06-08 14:36:45', '2019-06-08 14:36:45'),
('92ff7c296aa6234755d8b0453da1cb958fea1288b33715b8814b83d171023f878d8fdf7b755dc0bf', 55, 1, 'fore', '[]', 0, '2018-06-11 00:25:09', '2018-06-11 00:25:09', '2019-06-11 00:25:09'),
('93702680e4852605e25a806b23f49bb30ea1a9e37c73d2c6eea0e8c143fe589ea594377abd092072', 56, 1, 'fore', '[]', 0, '2018-06-08 15:57:38', '2018-06-08 15:57:38', '2019-06-08 15:57:38'),
('938f83b2b880e48c8f3894bf20123c8ce3a3ee4aebbdaa738b90da71ed323a2b36f76e1792bbd9d7', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 16:22:59', '2018-04-11 16:22:59', '2019-04-11 16:22:59'),
('93f818caad2fb9ddac5f157ab264e184d82d3a2e0539c0cc6a11ef549c4d42bd98ae0310bf08de0b', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:10:43', '2018-03-28 13:10:43', '2019-03-28 13:10:43'),
('94e7b94f84f093142aef9b8cc07bc1e84e70510789f571232d70115178414f7216e60a801b1cd6dd', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:13:11', '2018-04-03 21:13:11', '2019-04-03 21:13:11'),
('94f2b3d18a09a899622df01580c1b283659429f4d60c39bad23ee2638dfc086b9d9959acb4565ec2', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:36:44', '2018-03-27 16:36:44', '2019-03-27 16:36:44'),
('954c919948542c21793f990018c6c8e5798917b22171a9e55f831a16032263660b7b4b146ffe2c4c', 14, 1, 'Pizza App', '[]', 0, '2018-03-28 11:02:59', '2018-03-28 11:02:59', '2019-03-28 11:02:59'),
('9582b064bdf5e225af378417da8bb9206880519585f900898d03d30e6dc7dfbfebd868efe81c8b35', 56, 1, 'fore', '[]', 0, '2018-07-23 12:48:40', '2018-07-23 12:48:40', '2019-07-23 12:48:40'),
('960a6f123f58ef20fc038865cea9c5b0080e713dc09f92ba7032d0ff6c193b02a0fe470413f42988', 28, 1, 'fore', '[]', 0, '2018-06-01 13:01:57', '2018-06-01 13:01:57', '2019-06-01 13:01:57'),
('961124e6a19d55e26fa07e11f0ea7e447b206aee9deec7b60945079f6f5589314912408794b82a2e', 79, 1, 'fore', '[]', 0, '2018-10-10 18:16:01', '2018-10-10 18:16:01', '2019-10-10 18:16:01'),
('962e2d5ca47c7c07c721e3acb29b4268738547b084af11160ab0f4338e1683730407370816934127', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 20:32:41', '2018-03-20 20:32:41', '2019-03-20 20:32:41'),
('96500f6a9251df1910f4ef56aafb87094bb77bd8e56e89b0a2aef72876d2e0d708f01522063f9360', 37, 1, 'fore', '[]', 0, '2018-06-06 16:56:53', '2018-06-06 16:56:53', '2019-06-06 16:56:53'),
('96cce6ca670d16729ba6a8d67245aa0811f17a0cf6478647252637f6617142f9a4e8112cce1ad607', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:31:07', '2018-04-02 13:31:07', '2019-04-02 13:31:07'),
('96eb2d6f906f5c09ecd32ad017c3cb91c468f7f8bffaec25b713a436006472e0c87e2aec71518ebc', 55, 1, 'fore', '[]', 0, '2018-10-22 14:38:56', '2018-10-22 14:38:56', '2019-10-22 14:38:56'),
('9738b3a150e1f204034c2ddaaff4aa9bdb4e5c2989d32f69216cc1f7acf4ea26617f52d8ee1b9f51', 37, 1, 'fore', '[]', 0, '2018-06-06 11:03:40', '2018-06-06 11:03:40', '2019-06-06 11:03:40'),
('978f54c821c84f41adda56db2dfeeec54048d0f8fa73652e63deb0f2f688bfd7e821b68f1efffe1e', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 16:16:34', '2018-04-11 16:16:34', '2019-04-11 16:16:34'),
('97c15d28ac7574f00d4b620fd4ff16a8e53f0ceea4baa34ba12374d46e2610db2154afa77ff81014', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:47:42', '2018-04-09 00:47:42', '2019-04-09 00:47:42'),
('98b4de1d405d588ab159ec456f53bbb3988facc39c49ccae15bcad3cca9aa74c08ae411f65f4faa1', 56, 1, 'fore', '[]', 0, '2018-06-28 12:35:32', '2018-06-28 12:35:32', '2019-06-28 12:35:32'),
('98ee3944d6d7ff55b529e16710ee321899cc0d9e1d40c86dd1c0c4a6b31e298601ac356da8f12ed2', 56, 1, 'fore', '[]', 0, '2018-06-15 16:53:32', '2018-06-15 16:53:32', '2019-06-15 16:53:32'),
('98f3a2c091ad479b05353d1f15672af6a187b3c8b82f96a0b4c666a3960772dbb04bea17ac6f7788', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:49:32', '2018-04-11 12:49:32', '2019-04-11 12:49:32'),
('9900e31d7ef5c53b8e3da5c912f512f126ced4c3a2d647ecdd52b1b0b5e5cce9fec643158962b399', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:25:39', '2018-04-02 10:25:39', '2019-04-02 10:25:39'),
('9a4a12eef809ac4e48e5988d4c185a4cf42591e45ddfb5e41297bd47475d3048dd9f922e19f611c7', 66, 1, 'fore', '[]', 0, '2018-07-25 14:29:45', '2018-07-25 14:29:45', '2019-07-25 14:29:45'),
('9a947ffbd59fe5a02a9849072c72b929ce6f677c57f0bf90a1767df143b231a1ba5ac5d756c98869', 43, 1, 'fore', '[]', 0, '2018-06-06 16:05:23', '2018-06-06 16:05:23', '2019-06-06 16:05:23'),
('9bbf3a5520fc543c6f9e231d88686f9461ca567b79979fbd21071b4af2633f63f1bc4594a85cdafd', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:35:48', '2018-04-11 13:35:48', '2019-04-11 13:35:48'),
('9bfd98e435c3cf3e2a6c91ac73c3624c9395c14119ccd7ddec7a04fc7a40e9b58935a9202be0d678', 56, 1, 'fore', '[]', 0, '2018-07-18 10:18:59', '2018-07-18 10:18:59', '2019-07-18 10:18:59'),
('9c4062f60535c4442aaf7ca2c291b6eff296c2a391d1f2e5d7055a12140d0478812651f890327303', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:24:36', '2018-03-21 22:24:36', '2019-03-21 22:24:36'),
('9ccf80775600f4567b7da4903e976caa58deab3e18fc74680f7a2cdd7e8c997bef2856f13f84b85e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:06:30', '2018-04-02 13:06:30', '2019-04-02 13:06:30'),
('9cdfb4404ea9166c72b90e5a8cd96498327d4bd5634f05e67fd6816ebe6a905df45299796f0b0c91', 49, 1, 'fore', '[]', 0, '2018-06-08 14:08:36', '2018-06-08 14:08:36', '2019-06-08 14:08:36'),
('9d0f0f3ba26ac850a1d75ffa57b9c5f0580cbbc2ef08bbcaf524adacf42abbd49fff098a98220e5b', 8, 1, 'Pizza App', '[]', 0, '2018-03-21 00:42:26', '2018-03-21 00:42:26', '2019-03-21 00:42:26'),
('9d0fd512499b17085ebd6ff849b5fd4163d5da10e16b11158f8b11d3dee91f2bba7a91bab6d3925f', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 19:57:51', '2018-03-20 19:57:51', '2019-03-20 19:57:51'),
('9d34dd00e2ab70db8a1c0d633895440eec4f8b8b0647c20341a83ca2a92d3df27d9a800341f934e2', 33, 1, 'fore', '[]', 0, '2018-06-05 09:19:16', '2018-06-05 09:19:16', '2019-06-05 09:19:16'),
('9d4aeca7def856b06bef738b91a47271bde4775846f7260aedcffe826bc7d80780c3b386e2e8a6b3', 11, 1, 'Pizza App', '[]', 0, '2018-03-21 19:15:27', '2018-03-21 19:15:27', '2019-03-21 19:15:27'),
('9d6431771fb5603c78e66bd6a04abf93472633b8cb73ee3dc5370657fe39d1b48b4d90feb0d68e61', 13, 1, 'Pizza App', '[]', 0, '2018-03-29 14:55:24', '2018-03-29 14:55:24', '2019-03-29 14:55:24'),
('9db8d9403d222d66f496b96c17ad92f329a0e42ccc5c8624fc3244a213d488fbc01ed72d79a6d6b4', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:38:45', '2018-04-05 12:38:45', '2019-04-05 12:38:45'),
('9e91308e24d7f21bd361e071342f503bb876d503847949f9acbe752606fbfd614d644f91bdd06391', 28, 1, 'fore', '[]', 0, '2018-06-01 13:28:36', '2018-06-01 13:28:36', '2019-06-01 13:28:36'),
('9eabfedc323de14d264d24128fb151aafc438f6a7baee46c4de4826cf0e81fa14c0ced63e8ee01fe', 45, 1, 'fore', '[]', 0, '2018-06-07 16:22:30', '2018-06-07 16:22:30', '2019-06-07 16:22:30'),
('9eda087b2fb488dd7d06b1d031f3669520194ae15bcbe3549ccf48e53417e154a6abf01caf4fac75', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 11:49:31', '2018-04-03 11:49:31', '2019-04-03 11:49:31'),
('9f63c70ef2fd89682492fc76dd72e28981758b247d54e058bba318da33c790dd1b2e131a9d3bf75d', 14, 1, 'Pizza App', '[]', 0, '2018-04-12 10:03:00', '2018-04-12 10:03:00', '2019-04-12 10:03:00'),
('9fb9a9fa66024a8a01cd5d8d9052abe9100fcf6bed22bbecc803c66747c3060f4683651e23e15d5a', 56, 1, 'fore', '[]', 0, '2018-06-28 12:34:23', '2018-06-28 12:34:23', '2019-06-28 12:34:23'),
('a242c4216700889a16bfa6d52efc6fd7a835b69f0fe6f83fdde0d53ee7b0a29b4271efcd45b54dde', 61, 1, 'fore', '[]', 0, '2018-10-23 00:54:23', '2018-10-23 00:54:23', '2019-10-23 00:54:23'),
('a244e648b1f6c97f20783f10f7acaf1a2c95834178eb6b77446f9d8193b3601fbc269c6a5c5fb8b8', 55, 1, 'fore', '[]', 0, '2018-11-05 12:50:47', '2018-11-05 12:50:47', '2019-11-05 12:50:47'),
('a246770f51455c7e10fced95c15e0169a75e776e4b406005a00ef4d75d3148b45cd67cf04b4d34fc', 28, 1, 'fore', '[]', 0, '2018-06-04 20:53:18', '2018-06-04 20:53:18', '2019-06-04 20:53:18'),
('a258a4ab18bd5b6602efa32b654c4417eb9903b299da05301397293c1f58f75998b92523474804d4', 13, 1, 'Pizza App', '[]', 0, '2018-04-08 20:43:16', '2018-04-08 20:43:16', '2019-04-08 20:43:16'),
('a25d65fac2fbeb3f8b25c87d786eec5f0928544a0ef245ea32c82b6362d2d7994a6aa5a3753c26e3', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:54:33', '2018-04-02 10:54:33', '2019-04-02 10:54:33'),
('a2d7f06bd5f0e3bd25d48a1c1ab67834ddb4a0b0f182e6499b408f5d2c03c740fbe140f751d4880d', 56, 1, 'fore', '[]', 0, '2018-07-23 12:50:49', '2018-07-23 12:50:49', '2019-07-23 12:50:49'),
('a2e6e6503260fbbee3f36549fef14a2a879f5027c73cde3f85c426d1ff6ca75740dc81ba7348e686', 14, 1, 'Pizza App', '[]', 0, '2018-04-05 16:25:47', '2018-04-05 16:25:47', '2019-04-05 16:25:47'),
('a366b77c04b83f6f3c14e2237d996ca3cffebb24a519c110c619d362b05cc678cc5ff0539b8df826', 61, 1, 'fore', '[]', 0, '2018-10-30 13:05:01', '2018-10-30 13:05:01', '2019-10-30 13:05:01'),
('a378e99f024c27d9a96abefdc4f917f7b19fdd06aab233981ca6d34ea359408148fe46be50bd7bcb', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:09:46', '2018-04-02 13:09:46', '2019-04-02 13:09:46'),
('a395d0606fd0ef952ae33b0ac6b918eba584883d158a8f9931d7e146f882e62da460ac9748cbac38', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:46:41', '2018-04-05 13:46:41', '2019-04-05 13:46:41'),
('a4006cbec8aaebab3c1922957ace02c33ad04d4ac448a401347dc3a56a8a963977d28e8b4aae3088', 56, 1, 'fore', '[]', 0, '2018-07-17 17:39:43', '2018-07-17 17:39:43', '2019-07-17 17:39:43'),
('a4d6e7dfae24782daba142ef50141117238ef4817594ed59b2cab961fe7e491c8c6edbbb716d6159', 38, 1, 'fore', '[]', 0, '2018-06-06 11:37:12', '2018-06-06 11:37:12', '2019-06-06 11:37:12'),
('a557e1cb171dd7d5d672122238cb4d8c80519f5f169f7dddca8f87a3496c4b1e79f431188390d096', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:16:35', '2018-04-03 21:16:35', '2019-04-03 21:16:35'),
('a5ee15d1e8cb116480518646df73edc47b44fcdb5e3be41fe5d466fd4e9f8909119b6b4e9249d437', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 15:57:48', '2018-04-05 15:57:48', '2019-04-05 15:57:48'),
('a664c6bbc1cf14e3f6872ad3b0688a658574e804e91d8a403c3ea0c3ed5a528e411ba260a03ff064', 1, 1, 'Pizza App', '[]', 0, '2018-03-21 18:14:54', '2018-03-21 18:14:54', '2019-03-21 18:14:54'),
('a68943eeccbaae9c431f421b1bc54ced35b1c7306879fa6c2d3f55ff322443ba39c5578c49f8cc9b', 37, 1, 'fore', '[]', 0, '2018-06-06 14:53:16', '2018-06-06 14:53:16', '2019-06-06 14:53:16'),
('a6cfdee9f20d1f935775beb5dadd0df26d234491f68b28f3891b333a0af4a60f32d3049b7b5bd909', 37, 1, 'fore', '[]', 0, '2018-06-06 15:02:23', '2018-06-06 15:02:23', '2019-06-06 15:02:23'),
('a718931730dfa70e47b9fc3c32ec2a853de610bddccd9df630f423df4248f3427b49fc331e107e57', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 17:21:27', '2018-03-27 17:21:27', '2019-03-27 17:21:27'),
('a74e1d07037cf447b950cc2ba842181110803144f6d2888a05fc693c58ab4db9b2711b0f30468ac1', 15, 1, 'mui', '[]', 0, '2018-04-19 21:17:45', '2018-04-19 21:17:45', '2019-04-19 21:17:45'),
('a76eca6c46098203ddfd7aca6957ef5f89aa3c75768a73a4e7d36e16278c8a067539efc3bb2b66b8', 11, 1, 'Pizza App', '[]', 0, '2018-03-22 21:32:05', '2018-03-22 21:32:05', '2019-03-22 21:32:05'),
('a7a4d54e08ddf6f53aa9115b13305ebbb6e03427b8c70372cc3d3558f597b57122e5b28369371b9c', 65, 1, 'fore', '[]', 0, '2018-07-25 08:00:03', '2018-07-25 08:00:03', '2019-07-25 08:00:03'),
('a7df67f358d964e4a74000772b27722f43976f74f67efd5abe1f193097ca6a4c4fcff465a997dd9f', 1, 1, 'Pizza App', '[]', 0, '2018-03-15 21:07:14', '2018-03-15 21:07:14', '2019-03-15 21:07:14'),
('a7ea6620e1b68d0a9f4dd7f2067dce0cbde73dd4692566d888839df8902040dd2aa0e938b53c3c74', 28, 1, 'fore', '[]', 0, '2018-06-03 23:49:10', '2018-06-03 23:49:10', '2019-06-03 23:49:10'),
('a821262d38e202f65b91dcd5c452cd4a9eeffda9544217a36cf5247c7e9129459f17efb53cee6c2e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 11:31:25', '2018-04-02 11:31:25', '2019-04-02 11:31:25'),
('a86a08380b4ae51c4ce310e88d221e2104702318783cef7d8ced9145bc93315648a92b13220a4f2e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 11:44:46', '2018-04-02 11:44:46', '2019-04-02 11:44:46'),
('a88234d57b608dab44e6b3a6abda8db15db1fe48199fb19b931c2283faac20fac5917d46622ac882', 13, 1, 'Pizza App', '[]', 0, '2018-04-13 12:04:03', '2018-04-13 12:04:03', '2019-04-13 12:04:03'),
('a9c09031996104f2f4fb9fd3ddbd84912ce5e5372de793b88001373273154a7e2512dc451c67d0a7', 55, 1, 'fore', '[]', 0, '2018-07-21 22:42:16', '2018-07-21 22:42:16', '2019-07-21 22:42:16'),
('a9c828187b656a24679158ba0a41e64e580cba121d9abc3b56d6c319e307013dc708def0e5ed32ba', 34, 1, 'fore', '[]', 0, '2018-06-05 09:20:39', '2018-06-05 09:20:39', '2019-06-05 09:20:39'),
('aa31bea6868e7c6c69a227e4ffffe9f0f70a0e6869b4596023d09c4ba5110b9fdbdd6f1a9c7baa22', 61, 1, 'fore', '[]', 0, '2018-10-25 20:00:32', '2018-10-25 20:00:32', '2019-10-25 20:00:32'),
('aa3cac3a5bb3ffa56b346119992d2c923e29d426f22f2f3843f4096354f940e21023bab10b70049b', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:43:53', '2018-04-11 13:43:53', '2019-04-11 13:43:53'),
('aa5edf9fed063e465a08dde035e96a44701a1293566b9fe9ff34bfb8718382128da80e9c0583aac0', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:27:27', '2018-03-21 22:27:27', '2019-03-21 22:27:27'),
('aa78186d3b9ee9470052918794c2199c6543490858c94a069e9922912589a5d7fa2f005ce231d088', 6, 1, 'Pizza App', '[]', 0, '2018-03-22 17:57:40', '2018-03-22 17:57:40', '2019-03-22 17:57:40'),
('aa796fe25cef081cfa659f3bda633d9dbd0601bb52eb4a774c0ea28a805b18b28a3008950ffc4da5', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:59:22', '2018-04-02 12:59:22', '2019-04-02 12:59:22'),
('aa7c41364b7aa84161790a384d8735167d530608e7b54d80ef2518955916afea4f2880d5cead447c', 40, 1, 'fore', '[]', 0, '2018-06-06 11:02:56', '2018-06-06 11:02:56', '2019-06-06 11:02:56'),
('aad2fe9e03421094a1163680ded428fbec8108130caac799915bdfe3d7ec71055e261030ca45be3f', 28, 1, 'fore', '[]', 0, '2018-06-01 13:04:36', '2018-06-01 13:04:36', '2019-06-01 13:04:36'),
('abbbf04e3ea18cf93ce23d817d6c868068459d1fce3ba8e640cbe691f2ea1e0ed0065cd42897ca3e', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:38:04', '2018-04-05 12:38:04', '2019-04-05 12:38:04'),
('ac62b279746b00f94728046b8cb3dd0d5dfb3360495f0f75a81fed96db2ef842833f24e66f818dcd', 56, 1, 'fore', '[]', 0, '2018-08-07 09:23:07', '2018-08-07 09:23:07', '2019-08-07 09:23:07'),
('ad1452d2ca26a9ecdedcf8c96845316fde32b8faa6e29df525f116642b40f05142a8d21614efac31', 75, 1, 'fore', '[]', 0, '2018-09-28 18:07:23', '2018-09-28 18:07:23', '2019-09-28 18:07:23'),
('ad3f44904a85f13933ae267ee36fef78fa9669bb9e3cbac8420c7510b49615aecfd525d408b6c86c', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:02:09', '2018-03-28 12:02:09', '2019-03-28 12:02:09'),
('add321cea4d460467e9441dd638769cecfd3cf18a4538a992a971b3faec80efa24f1d6711d32a4eb', 6, 1, 'Pizza App', '[]', 0, '2018-03-22 06:05:53', '2018-03-22 06:05:53', '2019-03-22 06:05:53'),
('ae933200b50dc7ecea3c23091b0f60f0c6926bbcfbb9177be5f090b823548946e9c1a5ecff05c926', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 01:14:59', '2018-04-09 01:14:59', '2019-04-09 01:14:59'),
('af12ca7f31cca74d9d0104eb54086e3b9c5a76440e6d004f5a0e07b80994f4f1fc92c45a1100ced9', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:19:17', '2018-04-05 13:19:17', '2019-04-05 13:19:17'),
('af782cfa69f2fcff9bbfc7a58cbe6008b147d94fe83b10250ccb9f35c094fb06ff5764cf25f980b0', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:26:27', '2018-04-05 11:26:27', '2019-04-05 11:26:27'),
('afae21e2d9c8561cda8e6f4e4ab59517be0b44b287d7560acb652290e20f05e989bf0909816bf74d', 56, 1, 'fore', '[]', 0, '2018-06-08 15:58:12', '2018-06-08 15:58:12', '2019-06-08 15:58:12'),
('affeedbe6d0edce01e34fe5dee5332ff88dc60410e75ba8f14c8cdf1b1819d7249f747b28d02df40', 61, 1, 'fore', '[]', 0, '2018-10-10 18:40:14', '2018-10-10 18:40:14', '2019-10-10 18:40:14'),
('b0deb8e243d94e664264d83cdecd7f0780487fa9e45c827a810c1ac242a28c1f93c74001927bf728', 59, 1, 'fore', '[]', 0, '2018-06-22 09:19:47', '2018-06-22 09:19:47', '2019-06-22 09:19:47'),
('b0f224e29687469756d1c4505ed1f9507c4e637ae2ca026d896fb02d3d0527f186611fded90b998d', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:09:36', '2018-03-27 15:09:36', '2019-03-27 15:09:36'),
('b0fb03ecba0ef1f8059c6963b5a4a5b39225a3133206d36457f807fd6ee1c208e18267648e99e5fd', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 01:17:57', '2018-04-09 01:17:57', '2019-04-09 01:17:57'),
('b104b9dc9e8d6007a76917f4b695baf2ddb183a592c0e9f831fb55761db51b05cd211333dcac5ede', 56, 1, 'fore', '[]', 0, '2018-07-18 15:43:45', '2018-07-18 15:43:45', '2019-07-18 15:43:45'),
('b11c1ff739cf85f61a3256e2180d44026a43b8ada2b866a246bf05c5e0c5fd7f5923fab320c26f5d', 37, 1, 'fore', '[]', 0, '2018-06-06 15:16:29', '2018-06-06 15:16:29', '2019-06-06 15:16:29'),
('b1925aa76de8e0629d30677b01b2a5fc5bc2b9208f36daeadb05ca390ede3d519a78aba20e7ea5e9', 59, 1, 'fore', '[]', 0, '2018-06-19 18:18:30', '2018-06-19 18:18:30', '2019-06-19 18:18:30'),
('b26f7b4773bd98772dbe00ecd4d0ad421e365fdce2fa7e2b43e675a26311c725fd27aa582b28f852', 13, 1, 'Pizza App', '[]', 0, '2018-04-08 23:59:19', '2018-04-08 23:59:19', '2019-04-08 23:59:19'),
('b275299fc8d77f152018b47c1a687e12566ee80bb70af74b1f25b627f0171e6f8677b5fea77a028b', 74, 1, 'fore', '[]', 0, '2018-10-05 09:22:26', '2018-10-05 09:22:26', '2019-10-05 09:22:26'),
('b2a141a7f2aabe4a8ff3af2911bdfbfdd909a739f6f04ca8876de62f8e09294ba7bcda254fa024e9', 56, 1, 'fore', '[]', 0, '2018-07-23 13:02:38', '2018-07-23 13:02:38', '2019-07-23 13:02:38'),
('b3103548198e3584f793b52313e4380e3e1d5335412ab328ca8982fd6925607527adf0fd20c83aa9', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:26:43', '2018-04-04 11:26:43', '2019-04-04 11:26:43'),
('b353f8b18f1e0e1f784ad88859c4e06c4bedb140790f122eb24df4442bf6b0cd2afb750a1a38b1ed', 56, 1, 'fore', '[]', 0, '2018-07-23 12:54:25', '2018-07-23 12:54:25', '2019-07-23 12:54:25'),
('b355a44c14d6397169b3ef6035c85707b853107ae4a85466b6bc4e3070de79840bcf59f18084539d', 64, 1, 'fore', '[]', 0, '2018-09-25 22:50:39', '2018-09-25 22:50:39', '2019-09-25 22:50:39'),
('b37556df26f1a7b83fce76ac86f45821a20686d95f558460c4d988ccf291071bf092b7ef813419a5', 59, 1, 'fore', '[]', 0, '2018-06-30 09:36:23', '2018-06-30 09:36:23', '2019-06-30 09:36:23'),
('b388b89198c0582aa902deda62d9878fd7b0d41d801bd3d5496f14ddcd3d9824d1df7bb7db844b5e', 14, 1, 'Pizza App', '[]', 0, '2018-04-06 15:22:53', '2018-04-06 15:22:53', '2019-04-06 15:22:53'),
('b3bd48e042a769ec8c59f1f911cff651ae76b22e0bd50c178a4579e1fb1b825f4947b025a3af55f5', 45, 1, 'fore', '[]', 0, '2018-06-07 16:23:27', '2018-06-07 16:23:27', '2019-06-07 16:23:27'),
('b3e3823fc63a1ec218ad6a2d131ca41bb9a8578ac9a045bba4da6bfd3996f4d04f2f34be9c239614', 64, 1, 'fore', '[]', 0, '2018-11-05 15:50:53', '2018-11-05 15:50:53', '2019-11-05 15:50:53'),
('b4140beddeeaa77e0a28c3794059866a3cfa9fffa27f44691bf2809692482b705d21a492f37d3303', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:54:35', '2018-04-05 12:54:35', '2019-04-05 12:54:35'),
('b48957b3683a88f09097cddbe6f817017ec7be79ae0279b94a63568ad4fd4a1fe44d00d8d2ac2113', 56, 1, 'fore', '[]', 0, '2018-07-23 12:55:34', '2018-07-23 12:55:34', '2019-07-23 12:55:34'),
('b4c5ce192cf7ff7a3da8f1dfb01cac71dee6d37ef2d9029811d8916dabeb8c4ec1d75843d121cfdf', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:25:56', '2018-03-27 15:25:56', '2019-03-27 15:25:56'),
('b4c85cf7a9ac6e6ad011950bc64f34ae406d316d23cc1a5db06a857cc7385b3352c2f77c1a1dc282', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:56:26', '2018-04-02 13:56:26', '2019-04-02 13:56:26'),
('b4ee4bcc6f08e3159c75e379f1786a1b3b8de33590465fdb9658031621266398d87b29af351e37a4', 80, 1, 'fore', '[]', 0, '2018-10-10 21:18:39', '2018-10-10 21:18:39', '2019-10-10 21:18:39'),
('b4f3c3a7752b80abdd74f99ca27a7ddafb2797e1251e00b680e0bac8aea4a5dd251912b3be2f8361', 45, 1, 'fore', '[]', 0, '2018-06-07 16:22:43', '2018-06-07 16:22:43', '2019-06-07 16:22:43'),
('b52978138b895af1b11d7d702ba1a6eea33bf9fa4d3e7cc77b433afab8a8be78924000d444984c09', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:26:00', '2018-04-02 13:26:00', '2019-04-02 13:26:00'),
('b544703395cde5460e2dba6e52391f362b7702cfecde6392002f28bffa7a72f76a0cca6b1e264784', 28, 1, 'fore', '[]', 0, '2018-06-01 13:15:12', '2018-06-01 13:15:12', '2019-06-01 13:15:12'),
('b54e9fe4ad3fa029d3637b6a64140c3b0b71a7b3b1574ae104126d33727dee9fe50914aec9486b80', 43, 1, 'fore', '[]', 0, '2018-06-06 22:02:33', '2018-06-06 22:02:33', '2019-06-06 22:02:33'),
('b654b6adf33e73791db0055669e9b2c3e36eef343d95cbc0a414bcd50916c243c72ec401f8a4dd90', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:45:42', '2018-04-11 13:45:42', '2019-04-11 13:45:42'),
('b69ea0038237fa898ea29d28f5644ee16bf583725c3b239a3dfc25f4b3cfb892e17250fcd24380cd', 55, 1, 'fore', '[]', 0, '2018-07-31 23:04:59', '2018-07-31 23:04:59', '2019-07-31 23:04:59'),
('b6d86ac8be9e448b122ebb526b98e3459d5ffe2b21f1c579eb28e5ee33fdf8b6bf6e6ee86ae893db', 43, 1, 'fore', '[]', 0, '2018-06-06 22:28:20', '2018-06-06 22:28:20', '2019-06-06 22:28:20'),
('b6f4ec2abba9c8f316c060a96dbdbf9fac4737399f4b7887ba9910bd343851cf941b79abecc289d6', 56, 1, 'fore', '[]', 0, '2018-07-18 15:42:06', '2018-07-18 15:42:06', '2019-07-18 15:42:06'),
('b73826d48e1efda810cfbddb1ccdc90e1eb34d66a92a45d585fc27cec671fef7e0387538439a71a4', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:16:42', '2018-04-04 20:16:42', '2019-04-04 20:16:42'),
('b73ae8eb00372a719b91154dce338881736152a4f3e1abef2ba62ec013de674c194a6b752b592ae4', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:54:21', '2018-04-04 20:54:21', '2019-04-04 20:54:21'),
('b7bcfef176007f08350d9ff20cbd676abc7c4f149994493612fa88a51c08167a951bd4817fded8ec', 12, 1, 'Pizza App', '[]', 0, '2018-03-21 21:12:54', '2018-03-21 21:12:54', '2019-03-21 21:12:54'),
('b7dde03f916c6ad52db509cbfd94c36dc7c768c0f64f4f04aad114e5b5e1e334729e4626c799e5d4', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:25:02', '2018-03-28 13:25:02', '2019-03-28 13:25:02'),
('b856328eb028f4cf3d8436d9d15384b3ccfed0bebdef55959bc32e84839c9d52db12bf7a59c1ecab', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:11:38', '2018-04-05 13:11:38', '2019-04-05 13:11:38'),
('b85d00294b04feed56e39cd2d6ecc1e57d4dfc8c7cb67a6b43c71766ba5bdfbb404a87f0b0463b0d', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 23:35:16', '2018-03-20 23:35:16', '2019-03-20 23:35:16'),
('bae99f4cbfef21f1ce7648cc5f7011b443df2b4de21c2547b658f32cc5a7cbdd21b54dc3889fd956', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 17:20:56', '2018-03-27 17:20:56', '2019-03-27 17:20:56'),
('bb265e67c711d4c4b6b93508e088fbaca593261dcd5258bcdd2fc84c8be5e29567243709bf5e9951', 42, 1, 'fore', '[]', 0, '2018-06-06 12:51:32', '2018-06-06 12:51:32', '2019-06-06 12:51:32'),
('bb3d23cbb6f748763cf893800f75bd753f09730e0c28274dd5b38ed91cc79eecbe0b65b955f61451', 56, 1, 'fore', '[]', 0, '2018-07-19 09:16:06', '2018-07-19 09:16:06', '2019-07-19 09:16:06'),
('bc69221681263ac261690979ddc6cca1a6b5627a8ff403a6eae0bff40efe43349baa7683ba0dd007', 37, 1, 'fore', '[]', 0, '2018-06-06 13:45:11', '2018-06-06 13:45:11', '2019-06-06 13:45:11'),
('bcaac03076814f2bfa854881d6a4e6da039d6afe8b2356b8c1bea29266adad73980e7400d580b537', 56, 1, 'fore', '[]', 0, '2018-07-20 19:42:15', '2018-07-20 19:42:15', '2019-07-20 19:42:15'),
('bcc910cbf9c3ea239dc0faa976f33b4011e7ed69e8b33e857fc0486b628e85555504a4d5e90e99e2', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:58:46', '2018-04-11 12:58:46', '2019-04-11 12:58:46'),
('bcf5ed722b87071ee0e30d8cba04d6cb850fccf93df0efded418a5bc0668d5f350eebb0ffed1ce4c', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:22:08', '2018-04-05 11:22:08', '2019-04-05 11:22:08'),
('bcfa37bf7551d20e516c0faf241d3f12878cfa43d8dc9d0aa476fecb1dec14fcc9f128c1152cf747', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:48:21', '2018-04-02 13:48:21', '2019-04-02 13:48:21'),
('bd00ad4f4eba591456e43bf4cdb915774ab0ee0f7081611319df45178c4283f39c4e7e48fb92dac0', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 20:27:37', '2018-03-27 20:27:37', '2019-03-27 20:27:37'),
('bd30dff9e743645f649c5cbe0585d210d68b267aa7073db8e6fde5d3153a5711b8d206214752acdc', 61, 1, 'fore', '[]', 0, '2018-10-16 17:36:22', '2018-10-16 17:36:22', '2019-10-16 17:36:22'),
('be38a2e5fbbfd990c3c5a763e4fe95915528085450334bfee46ab16250f1574df9a229a4c6d9b8e4', 56, 1, 'fore', '[]', 0, '2018-06-30 16:43:30', '2018-06-30 16:43:30', '2019-06-30 16:43:30');
INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('be5439b7b8ad4d98823692f497c633127fe76e82474a41474d57a24ef7f3156fa78690b2d73354db', 37, 1, 'fore', '[]', 0, '2018-06-06 11:35:17', '2018-06-06 11:35:17', '2019-06-06 11:35:17'),
('be66b7d0720ff9f14c73650429913dfc4c65e9c2b7e464c5651bd2dea97b1eba0c11de1412d84621', 13, 1, 'Pizza App', '[]', 0, '2018-04-12 16:06:27', '2018-04-12 16:06:27', '2019-04-12 16:06:27'),
('bea454ab07dfbd16983b9a517f7ce0f7ca19733d071621e93051a51b212c9b585ea3236ea7127ffe', 56, 1, 'fore', '[]', 0, '2018-07-18 15:52:27', '2018-07-18 15:52:27', '2019-07-18 15:52:27'),
('bedbc516efc4f10748363f3a29befa857016d88714222b2353a432289dec642a049bfc56d5f2a771', 15, 1, 'mui', '[]', 0, '2018-04-19 21:14:54', '2018-04-19 21:14:54', '2019-04-19 21:14:54'),
('bf7732b52406a1bbf8d3715ca53006be823c28333f873d79c467b0bb214d68e47955946b5a399612', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:37:13', '2018-04-05 12:37:13', '2019-04-05 12:37:13'),
('bf96649fbbf1e8ceff0ea3d3dcad41556cd68f52681165215fd21dc062c0e2f1d566cb329361bf72', 56, 1, 'fore', '[]', 0, '2018-06-30 16:35:20', '2018-06-30 16:35:20', '2019-06-30 16:35:20'),
('bfc27c149b419eabf587c4e5f7753cd92652f9c0ea453023438cb5bcd72daa1e386b04d56e3b1941', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 21:40:33', '2018-04-04 21:40:33', '2019-04-04 21:40:33'),
('bfcf34c9ba47b42d70827eb24adb6806bfa736f46d2abb5cc3baf37c5499ccd1363c05bdb596599b', 56, 1, 'fore', '[]', 0, '2018-07-23 13:08:23', '2018-07-23 13:08:23', '2019-07-23 13:08:23'),
('bfd26487cf3577a423ec32d1a9d626e52c4e3354596fe4d355026d755b3de507e92ec875f542bcd0', 59, 1, 'fore', '[]', 0, '2018-06-28 12:31:29', '2018-06-28 12:31:29', '2019-06-28 12:31:29'),
('bfec2b855a0bfcef0497b20bd017b51f97cf8a8efbfc615f4aac3e50cfd4821e4e831163aee61838', 49, 1, 'fore', '[]', 0, '2018-06-27 15:55:44', '2018-06-27 15:55:44', '2019-06-27 15:55:44'),
('c0279178459a54ade5c823f2b6072664fb7e55c9cf12633dbdda053798ce424f2d0d1cb75368f40b', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:02:12', '2018-04-02 13:02:12', '2019-04-02 13:02:12'),
('c065cfd7ff78a959533a78577d08aedadebdf4b713449d9f6ed32373a4fa4223ccd50ab2c9c3fd46', 56, 1, 'fore', '[]', 0, '2018-07-18 16:47:12', '2018-07-18 16:47:12', '2019-07-18 16:47:12'),
('c07485cacb27723018a5808a0defd6120e03cf52b1853141c278ba6843098ab1a5905f1fdcee92a0', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:22:37', '2018-04-02 13:22:37', '2019-04-02 13:22:37'),
('c0bccaa2ace54317df350d5cbf2a74e339ae072d177a5f5a1a1750509c3b27ab50c654566f925432', 61, 1, 'fore', '[]', 0, '2018-10-21 00:41:27', '2018-10-21 00:41:27', '2019-10-21 00:41:27'),
('c0c64633345631a28e4d71c10ecab6eadf1d7a39121a9c036f7e99bfb0e952e2e0e0b40c650a32dd', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 11:21:31', '2018-04-05 11:21:31', '2019-04-05 11:21:31'),
('c1a476fb70be020180a88f9b8f6fa8d60a059c76d5432a1e0d5b3faa8b12e892cf0a6a79a915ccd1', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:41:00', '2018-04-11 23:41:00', '2019-04-11 23:41:00'),
('c2685e3d61d0f38fd25bd9d3a5d5da479db434f86aee445aebeb35559d0bde8287025f9e4dc05ed2', 60, 1, 'fore', '[]', 0, '2018-07-18 16:51:15', '2018-07-18 16:51:15', '2019-07-18 16:51:15'),
('c2ab1266214dab783ed67c115c33e1472cbc5dc429d7de68db2b6e8c194e4435a5b816b83282a5f4', 61, 1, 'fore', '[]', 0, '2018-08-13 01:39:39', '2018-08-13 01:39:39', '2019-08-13 01:39:39'),
('c2c3cd0135c9b914b31a5ee3f266c1ea23a55c85fa0a393fa81af3977d4d8c554093c1e58c268792', 37, 1, 'fore', '[]', 0, '2018-06-06 13:10:26', '2018-06-06 13:10:26', '2019-06-06 13:10:26'),
('c2e36b52a9b81a757c1ee233d210addbd064628cac551f0e3c328e3df56be22d4c9ccd7e12e510b4', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:31:00', '2018-03-28 13:31:00', '2019-03-28 13:31:00'),
('c2e78ed982a4e6254536b18c2fb70bbe88ddfdc7a35632904913d03a0d6378b9c5dd249ab6b20913', 61, 1, 'fore', '[]', 0, '2018-10-23 00:58:23', '2018-10-23 00:58:23', '2019-10-23 00:58:23'),
('c3887a387e3f44f5e92ab1bb7d03c6fa368f0369afe33675b343af858e5f1c69460bc3a08bf442fc', 37, 1, 'fore', '[]', 0, '2018-06-05 23:08:12', '2018-06-05 23:08:12', '2019-06-05 23:08:12'),
('c3c21a3c362fc5c81be0b6289e00aa59a9d032b7cc4d61311271571ea9033b4fb114b3ec280e3b55', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:26:14', '2018-03-27 16:26:14', '2019-03-27 16:26:14'),
('c401b33c1e669c872dc45e642c0e7d3d43b9f2b640ed76c96ede5aa045ebdd3211c6cd94d89ff26d', 56, 1, 'fore', '[]', 0, '2018-07-18 14:04:12', '2018-07-18 14:04:12', '2019-07-18 14:04:12'),
('c43304f3b69b2ecd3503fcb4dd3d0db3806f94744797c371daf9777a0d15cf0358e0817bc539d25a', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:41:54', '2018-04-09 13:41:54', '2019-04-09 13:41:54'),
('c47de2eae958201bded509aae9570e3e045b1702b73f617c4068cbb8a07201f5cd68f253a62a2387', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:33:48', '2018-04-04 20:33:48', '2019-04-04 20:33:48'),
('c48912792b7fe14e41ef3013158f636eb65bdaf0cf57708fd39cfbc334aaceb2d875c0a9f9642175', 28, 1, 'fore', '[]', 0, '2018-06-04 18:53:32', '2018-06-04 18:53:32', '2019-06-04 18:53:32'),
('c51125a0e9047bb23868d6a81099be07310881afa98cea594243e7b896225618b68ee7d563b89769', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:18:49', '2018-04-05 12:18:49', '2019-04-05 12:18:49'),
('c543c2d9361bb4537757e1ad2989cddf06513313fd5e3c336b9c403fde47c64ac59c999ff4c5374e', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:19:35', '2018-03-21 22:19:35', '2019-03-21 22:19:35'),
('c5536aa1f1aa297e12575406096d2b5a256509a0164eec27e62f72851f1f083f0b1ee7861ccd0d93', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:23:56', '2018-04-11 13:23:56', '2019-04-11 13:23:56'),
('c5ad6fb608611b062ae7d6d73c86f8ef096c0055b910cd5f6b9b9ea26f64fbb919af68655c1378c4', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 11:35:29', '2018-04-11 11:35:29', '2019-04-11 11:35:29'),
('c5e41c4fb13db1b8cb7819b81b8dcab1e795269ba4ca016a4bff1742c46ba7528018b96879152d80', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 22:27:22', '2018-04-11 22:27:22', '2019-04-11 22:27:22'),
('c6240506cd5be344901b5fcf7047a66e1b6262a4731406af7b8fcdfd0750344f555abb3dd7ef6d19', 13, 1, 'Pizza App', '[]', 0, '2018-04-08 23:50:59', '2018-04-08 23:50:59', '2019-04-08 23:50:59'),
('c64d61c4180010cfce687189408f376b3e1fb2d6ee8fe9c8705498ba3c35ccc87a97dab4952b58cd', 43, 1, 'fore', '[]', 0, '2018-06-06 22:15:49', '2018-06-06 22:15:49', '2019-06-06 22:15:49'),
('c6652df50e989ee76499823c4bab8700a9d6925a1d0a6fad023eac0d663ffa7fa00f4512d6cb9e0b', 1, 1, 'Pizza App', '[]', 0, '2018-03-14 19:09:21', '2018-03-14 19:09:21', '2019-03-14 19:09:21'),
('c72157180a0479342db14558f610dd620af6e02020d4408e3542904a9d0aba5dd62c07e732b272e8', 15, 1, 'mui', '[]', 0, '2018-04-19 21:17:48', '2018-04-19 21:17:48', '2019-04-19 21:17:48'),
('c784428d8a72afc436738e64e86dc9d98e01f56df187efdae91d60289cb9e3b5ca2101bc9aad6f9a', 43, 1, 'fore', '[]', 0, '2018-06-06 22:22:45', '2018-06-06 22:22:45', '2019-06-06 22:22:45'),
('c7bfe89132257577244a25152a55399fdf5e834be0a42654a77fcd7067c95152ea280a25d587a2c4', 56, 1, 'fore', '[]', 0, '2018-07-23 12:47:54', '2018-07-23 12:47:54', '2019-07-23 12:47:54'),
('c7f121a90181c13e67f0e0cf383e1eebf17a104d0a8b0e84217d5c824febd6f1a1ab8486d0d2473f', 1, 1, 'fore', '[]', 0, '2018-06-06 09:30:08', '2018-06-06 09:30:08', '2019-06-06 09:30:08'),
('c835a57af3e96a901d87b0a2c70768d93d58e8e261c6bf5f19573c3e38723d4ba7a16c83fa4567ac', 55, 1, 'fore', '[]', 0, '2018-06-08 14:18:21', '2018-06-08 14:18:21', '2019-06-08 14:18:21'),
('c95526ba030fdc37c632d15ad4fefb9d8ac9d6aca3cb1abba94585e6736de2478f812dbfe5665b3d', 56, 1, 'fore', '[]', 0, '2018-07-13 16:44:33', '2018-07-13 16:44:33', '2019-07-13 16:44:33'),
('c96ff07bc3c31c792576bbc523c3ad9d6dd353a45ac07e2bd3eb4842be22408e3553c799e91797be', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:43:56', '2018-04-11 23:43:56', '2019-04-11 23:43:56'),
('c9a397c7c16d65cd7871716faba6f0d8ff49aea1b0b79bdde159cd051084ede771d74730b57126d0', 56, 1, 'fore', '[]', 0, '2018-06-09 11:16:37', '2018-06-09 11:16:37', '2019-06-09 11:16:37'),
('c9ac1aa62b7b7fff78f7cf9ea527730d0af32ccccff695e9542d70d60bfd0525ef0804b7f7c813bc', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:14:42', '2018-03-28 13:14:42', '2019-03-28 13:14:42'),
('c9ae6b191b5be791c8e9b6d4394b6a4759a9527836fdd017ef2c0d872fb906e476486c6928114de4', 56, 1, 'fore', '[]', 0, '2018-09-14 11:53:32', '2018-09-14 11:53:32', '2019-09-14 11:53:32'),
('c9d2e770f14455d9bee87a1d6f7f6717feafad34d028d98cd6fabacf0459400b27618d10c73a73ce', 15, 1, 'mui', '[]', 0, '2018-04-19 16:54:28', '2018-04-19 16:54:28', '2019-04-19 16:54:28'),
('caa16e188e8c7282e2ac78133242f49869d1b88187e788511a8465495ce8c9758de1a073f204d22a', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 20:12:42', '2018-03-20 20:12:42', '2019-03-20 20:12:42'),
('cb2af6eb7b4ccaa9d61190b9367ad7f4fc101b8caaf4d2c8749a7dedeb84baf3776bf9c63f239491', 56, 1, 'fore', '[]', 0, '2018-07-17 09:32:19', '2018-07-17 09:32:19', '2019-07-17 09:32:19'),
('cb79a2385e2b963a88545cdb9edd1fc2ad91a8a2311444e0d2e305510d902c155023fc9ca8887aee', 56, 1, 'fore', '[]', 0, '2018-06-11 15:59:35', '2018-06-11 15:59:35', '2019-06-11 15:59:35'),
('cc01dbb0077fafe5ab9c4bf69d9f3f27fdf3c7366e4c7e29694ba2e36bdafa7ed237678c58f95785', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:18:17', '2018-03-28 12:18:17', '2019-03-28 12:18:17'),
('cc468a1b6e1ffe071810c3f340e6429a7b7fd68c79a8e6ba2e8feb0f4119e8254482634f88d3c680', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:43:46', '2018-04-02 10:43:46', '2019-04-02 10:43:46'),
('ccce30bba223e9438cd9f3294c2e3542843eab4b651ceec568d238ffaf2e42b34f4eaa68b13c463c', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 00:50:09', '2018-04-09 00:50:09', '2019-04-09 00:50:09'),
('cccf557b8f38d5fab2ab13dc61f33181fe108caeb15b928c1197cd9bdc0a06afaef8c4940bc9fe8c', 43, 1, 'fore', '[]', 0, '2018-06-06 22:23:36', '2018-06-06 22:23:36', '2019-06-06 22:23:36'),
('cd6e1b6a447969f1efadf71ec7162bb8e1e5884584ee00ee00f6fd4515eeb9edf2aa31e1291c940e', 42, 1, 'fore', '[]', 0, '2018-06-06 13:02:30', '2018-06-06 13:02:30', '2019-06-06 13:02:30'),
('cdb13219d23a9243e129ad2dafab16220da02a6d7cd17eddebede90790f3abe9c7a4e23ac0ef6933', 61, 1, 'fore', '[]', 0, '2018-10-25 19:46:59', '2018-10-25 19:46:59', '2019-10-25 19:46:59'),
('cdd800ad735aa215d99979cd5854f21b26ce0ac2eb0ae6eb29c1ef06d54095b31ed9100f71dff561', 56, 1, 'fore', '[]', 0, '2018-06-22 09:22:28', '2018-06-22 09:22:28', '2019-06-22 09:22:28'),
('cdd9da41d26fc9d3a3e3d5985eeabe89ba4dcf10dd226a8190d617639e8de6622900dd380f4f956e', 43, 1, 'fore', '[]', 0, '2018-06-07 16:33:44', '2018-06-07 16:33:44', '2019-06-07 16:33:44'),
('ce0d9587edfe5feaa8d3a4e39550d2e87bf7156ffda4a034d75ddb4e4e6154e7073c57b23527e93a', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 16:53:54', '2018-04-05 16:53:54', '2019-04-05 16:53:54'),
('ce2232eb675eaaa411e5a299ea2b1e14c6cb166bb065ae17bf9a798536fad7d5cd86b1122ec39b1d', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:44:05', '2018-04-05 12:44:05', '2019-04-05 12:44:05'),
('ce2760127feeaa931380eac32eefd37f339ee84bebf253d66f1480fe2f961f3c2d3c92a0ef571d4f', 25, 1, 'fore', '[]', 0, '2018-06-01 12:58:30', '2018-06-01 12:58:30', '2019-06-01 12:58:30'),
('ce5a24e5f125417205a150e0cbaf74d49e440cc374e7366402c9083cb2498f1f07e5b4933aeb1d7d', 13, 1, 'Pizza App', '[]', 0, '2018-04-13 11:30:21', '2018-04-13 11:30:21', '2019-04-13 11:30:21'),
('cf8f03a04aebe74b956135f2639f47b9bfa9d90c75b41967d1176205ded1fe0b35cbba5cb378369a', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:20:48', '2018-04-09 12:20:48', '2019-04-09 12:20:48'),
('cfbcc92f2fe4cd1993e0bc97a5d2083cedfd17cb08c77ebc1c4fd2f292071ba1f1853a1b3c039576', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 16:21:53', '2018-04-11 16:21:53', '2019-04-11 16:21:53'),
('cfca9bf4ccfc0da881efc89e81f67656440342df21ac43bad2d755fd338dbc4cdab99b0a6976420c', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:52:00', '2018-04-05 12:52:00', '2019-04-05 12:52:00'),
('cfcea7006c975b16655d529323bb9cdfdea058589a0f46b9ec2ce7a2102f30186a78ead28410b59b', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 11:31:55', '2018-04-11 11:31:55', '2019-04-11 11:31:55'),
('cfd61ce71691ffc268f11810738a620c1fbac886d90324b5d009ff07f0d195cd6176457a09d2486a', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:34:27', '2018-03-28 12:34:27', '2019-03-28 12:34:27'),
('d03bd8d8655061d00f9ac310da1a9d66537323b72e9b0ac757058ab6a63608970ba405acf1705e60', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:02:55', '2018-03-28 12:02:55', '2019-03-28 12:02:55'),
('d0d154ecd535df051830969b193bb3250cc532131346bb69216e2cd0583080a5a98257f5d5725852', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 01:12:31', '2018-03-21 01:12:31', '2019-03-21 01:12:31'),
('d0d407bf8efa8710d9f8e37a2d3dee091767e063f0e0d967d30bbc1176609d87039acacbd513e5b0', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:37:55', '2018-04-09 13:37:55', '2019-04-09 13:37:55'),
('d1217e03e0dbfea8b5bab1aa2ada208e550f2b55df6d33796d504e75da41e7175ac87b94bc9e9491', 1, 1, 'Pizza App', '[]', 0, '2018-03-19 23:08:24', '2018-03-19 23:08:24', '2019-03-19 23:08:24'),
('d1489d15638c3b7abe579475a6aff7466ba7498800ed11a9ea50b03aa6e7ee279dcb9253e5ef4d0c', 25, 1, 'fore', '[]', 0, '2018-06-01 10:43:11', '2018-06-01 10:43:11', '2019-06-01 10:43:11'),
('d168a5ad5a44f6b8a9ada268a58bee81e844bf6a927b885d16d376c5ee1ff0490efa86e39a3664d0', 1, 1, 'Pizza App', '[]', 0, '2018-03-15 21:06:52', '2018-03-15 21:06:52', '2019-03-15 21:06:52'),
('d1c811d77664cfc8ee9070b67a0098d1c224014f43b0c6b43c1c5a2c0269f538ada08d74b3a3e666', 1, 1, 'Pizza App', '[]', 0, '2018-03-19 23:16:34', '2018-03-19 23:16:34', '2019-03-19 23:16:34'),
('d1de6bbc3a45dc3c73fe380f1760c9872b03bc04f170a5db915950c3fcdc79bc27359fdbe871b07a', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:26:04', '2018-03-28 13:26:04', '2019-03-28 13:26:04'),
('d1fc70b100573b2d91ecc994f50fea9aa0956b05f27bf751e74bfdf8fcae8838271386596371110a', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:21:14', '2018-03-28 13:21:14', '2019-03-28 13:21:14'),
('d22ce6db3f617c3446798c3cd3045b8249c7c0b4ef7cd503834a4b16d60d65ba90caac179da8a086', 56, 1, 'fore', '[]', 0, '2018-10-23 14:38:10', '2018-10-23 14:38:10', '2019-10-23 14:38:10'),
('d24c1653d0d4f835f4ed91dcd0f6426b10239422f31c88efaee246315f543a34f28bb1d1ef4833f2', 56, 1, 'fore', '[]', 0, '2018-10-07 13:39:12', '2018-10-07 13:39:12', '2019-10-07 13:39:12'),
('d26e92423e1be7a9241cb3535cd140ec48bde9040bb3bf019851ee7b0be895cffce8f11a1666dc25', 6, 1, 'Pizza App', '[]', 0, '2018-03-22 19:35:45', '2018-03-22 19:35:45', '2019-03-22 19:35:45'),
('d2a954cd01816d666431a109e31ff7f764b460b8af12624426d68cba5ee9fcd459d09704d3bd5feb', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:02:52', '2018-03-27 15:02:52', '2019-03-27 15:02:52'),
('d2f92821cb4911e58f03ea21ed606c34ad3094f155c897efece1a6198958e0603dc30da9318c5506', 61, 1, 'fore', '[]', 0, '2018-11-06 21:27:40', '2018-11-06 21:27:40', '2019-11-06 21:27:40'),
('d310c7635e7f07c866aa30f8ed1ef246bb581c921d1a57cfbcce29f43efa7c814b6c593434e84b37', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:25:41', '2018-03-21 22:25:41', '2019-03-21 22:25:41'),
('d34876ceab2ea838357eccdfe15032abf6f66e8a5f7da5148cf009af625f59483cce08bd4265fc56', 56, 1, 'fore', '[]', 0, '2018-07-17 13:31:22', '2018-07-17 13:31:22', '2019-07-17 13:31:22'),
('d3b703c4d3814ff71e6adc5e4294b8530da7327b15d4861f54aae93fa71dc851796d446b2098cc78', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 12:28:44', '2018-04-11 12:28:44', '2019-04-11 12:28:44'),
('d3e02e2be52618beb2b923286464403d984b0517570b71be625366558fecc5e51b3548e22cfe37c6', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:58:06', '2018-04-05 12:58:06', '2019-04-05 12:58:06'),
('d41753b58ead904ae7d30d938bb214f3baf1e5b7918c8411f040374b0a2723f8fe8f3b17ff8132e2', 56, 1, 'fore', '[]', 0, '2018-07-23 12:43:04', '2018-07-23 12:43:04', '2019-07-23 12:43:04'),
('d423f45aee1a1c0440b7c4194b90f7a4c30e5e6067342bb4f58b40d2207c0606a1ea976e9f18c1d9', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:42:07', '2018-04-05 12:42:07', '2019-04-05 12:42:07'),
('d476090654883a6bbeb105dd2d89e5d3ff6b213181699d4fac052a2d85d8a532a2328977553de36a', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:12:19', '2018-04-09 12:12:19', '2019-04-09 12:12:19'),
('d501bf23a9ad9c618d5bd96093cfcbfbf08ce5376df2de49b3374e5b8eeca04dfc1c894c6343e343', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:41:58', '2018-04-11 13:41:58', '2019-04-11 13:41:58'),
('d50f2bfdcc561248175a06d52961043b51d16d4173e67e2aa5ee6b16fb5e717cf842c0460fce5f43', 56, 1, 'fore', '[]', 0, '2018-06-08 15:47:54', '2018-06-08 15:47:54', '2019-06-08 15:47:54'),
('d51da7b9d52efa5908650de5e459439aba066996b5d005228b9c8b9ac0ff3e55e22d490ea9479adb', 56, 1, 'fore', '[]', 0, '2018-07-23 12:49:07', '2018-07-23 12:49:07', '2019-07-23 12:49:07'),
('d56250dbd9361c328ac999952d8bd9cddca4eb1e59bc0c4bbab0077ada14c3863b4b820e1a0e2c63', 6, 1, 'Pizza App', '[]', 0, '2018-03-22 06:41:21', '2018-03-22 06:41:21', '2019-03-22 06:41:21'),
('d570b0ea8f446bb55e4aa177ec340953e5fe866f19921db7ddc8714f809cec02ec80a2833aa5a545', 37, 1, 'fore', '[]', 0, '2018-06-06 16:11:08', '2018-06-06 16:11:08', '2019-06-06 16:11:08'),
('d573c8e34440f063cc1d4d33e81329ea2d155699c05611965fb1314ca58e877b3fcb57103ac68505', 57, 1, 'fore', '[]', 0, '2018-06-11 00:18:09', '2018-06-11 00:18:09', '2019-06-11 00:18:09'),
('d5b7b716ab548f2d71d2611f20187eb7013a59e5860466d2a2f4698b00f54d2d27b8360e85b6f0b8', 1, 1, 'Pizza App', '[]', 0, '2018-03-19 21:47:55', '2018-03-19 21:47:55', '2019-03-19 21:47:55'),
('d5d0d2f836fb7e1f2438b90c802e385709feb1772696df60bbbf5aa76126c89ca358245e5bf00e14', 60, 1, 'fore', '[]', 0, '2018-07-20 21:36:23', '2018-07-20 21:36:23', '2019-07-20 21:36:23'),
('d5dc3a7d1db900570c7fb757ef781805512d34ed3be07c429c254719aa88b4ae8c148f1376fa4cd9', 56, 1, 'fore', '[]', 0, '2018-07-23 13:00:12', '2018-07-23 13:00:12', '2019-07-23 13:00:12'),
('d65f2f9f5e597f3d234291f355970ede488949aedab76d37711e46128eb8e9b6aaa2226ab63b91e1', 13, 1, 'Pizza App', '[]', 0, '2018-04-19 01:29:32', '2018-04-19 01:29:32', '2019-04-19 01:29:32'),
('d6b38b2e72834d960350f9e244cd2f60a57249dc35dd76be28902bcb815ba58d5849fa48a76972ca', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:06:36', '2018-03-28 12:06:36', '2019-03-28 12:06:36'),
('d7534482c1d18c56b668fd97b41419ee46047913567dba603bd04036dc4858710f0353c35e582b9e', 13, 1, 'Pizza App', '[]', 0, '2018-04-08 23:52:43', '2018-04-08 23:52:43', '2019-04-08 23:52:43'),
('d7fb72e76c28d37726027861fcd5e731dbb1432927e5667295f13755480bef8804c16beb5344b289', 25, 1, 'fore', '[]', 0, '2018-06-01 12:58:30', '2018-06-01 12:58:30', '2019-06-01 12:58:30'),
('d7fe53b862fa5ad9be6b202b04b4cbf9725146858b21b5462d828fbcedde1461d0150c84bf54b3fe', 28, 1, 'fore', '[]', 0, '2018-06-01 13:07:55', '2018-06-01 13:07:55', '2019-06-01 13:07:55'),
('d963bae5dd7add925e52519cddf58241d10d1eb85419a8a2496012d3f1eabb84abfc6f43eb437e91', 61, 1, 'fore', '[]', 0, '2018-10-19 23:23:09', '2018-10-19 23:23:09', '2019-10-19 23:23:09'),
('d970156a2e135457e04359454067c9db36f9af12c530d79e125ef1bcd781603bbd4c26a1370c0500', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 11:12:10', '2018-04-04 11:12:10', '2019-04-04 11:12:10'),
('d980757f60748d460a45ad66b7319bf5cfdc7d22e2445a8ff09cb7c6ee632161aba20bf53a7a1bed', 28, 1, 'fore', '[]', 0, '2018-06-01 14:32:44', '2018-06-01 14:32:44', '2019-06-01 14:32:44'),
('d993bd6c62f6d0e48394c72eed8e79b908cbd2f9c74d0b7792ad9ad9c67d0ca78f06bcf80292ddf1', 37, 1, 'fore', '[]', 0, '2018-06-06 09:08:45', '2018-06-06 09:08:45', '2019-06-06 09:08:45'),
('d9a2dc9bba194b2ca04622e9aa1360bb17611e4c68d10a064028bd965ddf31cda627ce2a0e50f38d', 37, 1, 'fore', '[]', 0, '2018-06-06 11:30:28', '2018-06-06 11:30:28', '2019-06-06 11:30:28'),
('d9d360589d8edfcb71d9ee27fd18bd90caa3ad23bab406c587fa675e70bfb71c0d9566069a943691', 57, 1, 'fore', '[]', 0, '2018-07-24 22:17:18', '2018-07-24 22:17:18', '2019-07-24 22:17:18'),
('da2ba22a0cbedfe29cb1ab5133740a92a47a4de447ae00674412af2be6552a071487e7e25d4faa27', 50, 1, 'fore', '[]', 0, '2018-06-08 13:55:51', '2018-06-08 13:55:51', '2019-06-08 13:55:51'),
('daf105301e5ba48df1e09d907ecdfe274412baa42775e467a70bdd1db7425bdf0f4d9d9ff206c44d', 27, 1, 'fore', '[]', 0, '2018-06-01 10:50:39', '2018-06-01 10:50:39', '2019-06-01 10:50:39'),
('db19e8793cb370d64a46a4a5290ed5159def63bab3c06a9efa93d0e7e517d133243158f64eb5098a', 36, 1, 'fore', '[]', 0, '2018-06-05 09:52:26', '2018-06-05 09:52:26', '2019-06-05 09:52:26'),
('db24084f75fcdcdcd2535e2d11faacef7bb926178af3c8173d77e1a8b85f454c2ec2684646873a70', 28, 1, 'fore', '[]', 0, '2018-06-01 12:59:43', '2018-06-01 12:59:43', '2019-06-01 12:59:43'),
('db9991abd2c2be5c9510e3912478c4c9f189588284cd5067ff8f579cf8fdcd2e3d44f6e8659d935f', 43, 1, 'fore', '[]', 0, '2018-06-06 22:27:57', '2018-06-06 22:27:57', '2019-06-06 22:27:57'),
('dba2be0bc011abd13a6433bc1da34b2efbac8efbf6189b0b348c57db9bda4bb4d23d62fe99156b30', 60, 1, 'fore', '[]', 0, '2018-07-20 21:35:31', '2018-07-20 21:35:31', '2019-07-20 21:35:31'),
('dc60f476b257ca5e216b87e128ed3511b99bd75d6a539a7c409d5d89bd9c7ea198950967bf8f2762', 56, 1, 'fore', '[]', 0, '2018-07-23 12:51:47', '2018-07-23 12:51:47', '2019-07-23 12:51:47'),
('dd01a142c6eb2b3ade4697d1a46117e32926e10e8cc0ed8af573abb982318b906b1e920f47edeb57', 60, 1, 'fore', '[]', 0, '2018-07-20 21:36:46', '2018-07-20 21:36:46', '2019-07-20 21:36:46'),
('dd1d8dbc210b40c4ad2312fd8c18c16cbc7e90e2ce846b95d104bc86e362b80ab0af234e1ca1391a', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:31:06', '2018-04-05 12:31:06', '2019-04-05 12:31:06'),
('dd4d2599f325822bc9e072418dd3744679fb53139ae5effcb02724dceee6dba420ddf1b05aae7cb6', 56, 1, 'fore', '[]', 0, '2018-07-17 11:43:34', '2018-07-17 11:43:34', '2019-07-17 11:43:34'),
('dd93a24b3d479fbc71bb2fb3156f03ce5c9064fdad9f78b60b53f146bf01e78f7ce93eb6445b95d6', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 14:08:14', '2018-04-05 14:08:14', '2019-04-05 14:08:14'),
('ddaab19fbce1be05fe97fe8c7fa626db543be058ca35a4efd2126113f0ad5a8b755e3ee6e4db58b1', 28, 1, 'fore', '[]', 0, '2018-06-01 22:33:02', '2018-06-01 22:33:02', '2019-06-01 22:33:02'),
('de0825702d335c69fccefe67d051580f071d1140f9c493e48143f2f61222e2529e869de06a9b9c6d', 14, 1, 'Pizza App', '[]', 0, '2018-04-14 23:46:54', '2018-04-14 23:46:54', '2019-04-14 23:46:54'),
('dea5bd3e924e68220f0a1027eed83567936bfcd347251f9a39142eb334c041fe4dbe0cb7f54654c4', 28, 1, 'fore', '[]', 0, '2018-06-01 13:16:03', '2018-06-01 13:16:03', '2019-06-01 13:16:03'),
('deecf55f005956627707cdcd12a65d9399b4b910a46580194079b10b74deeff6925fb48a38303aba', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:35:55', '2018-04-09 13:35:55', '2019-04-09 13:35:55'),
('df76ef3404dd347db50b94279e5a0c019a88b0d29fc2f07deb627140a8ece578071003b8f636216d', 71, 1, 'fore', '[]', 0, '2018-09-14 11:20:51', '2018-09-14 11:20:51', '2019-09-14 11:20:51'),
('dfc259eaf6044f17751dfb31c53ad4fc73072d758a4328ead12a56804772c93a5be927e64cb5b082', 61, 1, 'fore', '[]', 0, '2018-10-10 18:30:09', '2018-10-10 18:30:09', '2019-10-10 18:30:09'),
('dff355fa2a1a457d4b8e9cce8e42a9b7b95d41f6e2a83eb359ee87aef4d5da43d1715869c0945917', 26, 1, 'fore', '[]', 0, '2018-06-01 10:22:24', '2018-06-01 10:22:24', '2019-06-01 10:22:24'),
('e045e4658a46fdf41fa210252de6bd1ed636e7136d66728329310e793d53acccb6c2ac6ced661070', 56, 1, 'fore', '[]', 0, '2018-11-13 11:09:16', '2018-11-13 11:09:16', '2019-11-13 11:09:16'),
('e079765ccb1a87da68d40e993656cabce29fe82ac9df980334549bdbd3bc72b67054206ae6abb4b7', 14, 1, 'Pizza App', '[]', 0, '2018-03-31 16:12:28', '2018-03-31 16:12:28', '2019-03-31 16:12:28'),
('e0a66b805ce34e5ad2828ea1e8f47806e612638e3a0ae929b55102bb8a1ce5ffc2376b17d51ebca4', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:31:00', '2018-04-09 13:31:00', '2019-04-09 13:31:00'),
('e0db90750afef357ecb58e1123b79d46e514e28f561e363c2203c66044f1262b7f27acf7e3059046', 37, 1, 'fore', '[]', 0, '2018-06-06 09:09:07', '2018-06-06 09:09:07', '2019-06-06 09:09:07'),
('e19185f8bcf9253c7afc8408bf471000a40cef52d4e8536c6efc5f03ea7e5a7d6a1e3aaa8ca60247', 13, 1, 'Pizza App', '[]', 0, '2018-04-19 01:33:36', '2018-04-19 01:33:36', '2019-04-19 01:33:36'),
('e19d6e942fdb84c24cd7cb16c14edb893c620c6e6697ac101b60ce7c9f0898c798a6e1204355e569', 55, 1, 'fore', '[]', 0, '2018-08-01 10:59:57', '2018-08-01 10:59:57', '2019-08-01 10:59:57'),
('e19f57d9a615b4d9cde9175725f65abe7ce7f94442685ca1ebf2c744e51e5f73a15c736531281be7', 56, 1, 'fore', '[]', 0, '2018-06-28 09:48:20', '2018-06-28 09:48:20', '2019-06-28 09:48:20'),
('e1d0f939b77a03eb0b431821675176390a38821b2d0c4bf8d3bf7eb0bb1da7e1991b84a783931061', 32, 1, 'fore', '[]', 0, '2018-06-05 09:15:03', '2018-06-05 09:15:03', '2019-06-05 09:15:03'),
('e25a89e01f2fbdf3a95b3e1cbca2b1a2416870224caec548e3aa5227b046faab8291d0bdbade05a2', 56, 1, 'fore', '[]', 0, '2018-07-18 16:26:03', '2018-07-18 16:26:03', '2019-07-18 16:26:03'),
('e2cf976da137c56577c61e1ee0fba16c161adf6719c551254180307544672b04d9459d0e7d664c8f', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:37:03', '2018-03-21 22:37:03', '2019-03-21 22:37:03'),
('e2d93532e86b80485c50fe1482aae21d995e9ed2a9ce6d31d0cea74ef71e6dc62a82140d407aa1ae', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 16:19:15', '2018-04-05 16:19:15', '2019-04-05 16:19:15'),
('e3054b4895ee2f38ad0a8dae994e47cf04ec8d91bbf07b9cd3ffff3684542b299beb78c4bd6075dd', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 16:53:00', '2018-04-05 16:53:00', '2019-04-05 16:53:00'),
('e37ce4e90168784e394797c8541e680100da92a0f3136b9a199b64588ff22227b587bc573f7e77dc', 60, 1, 'fore', '[]', 0, '2018-07-20 21:34:47', '2018-07-20 21:34:47', '2019-07-20 21:34:47'),
('e38c6a8fdf995babdb3dcd925007f05e03393d43e048ab7e11beb2803fe9a58c055a1d632ce0f299', 25, 1, 'fore', '[]', 0, '2018-06-01 12:58:30', '2018-06-01 12:58:30', '2019-06-01 12:58:30'),
('e3d8a45a2f1507a356ddfaa393008ffee8924d604552dd33b097fd5e8d789c000e864662314e4667', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:16:26', '2018-04-05 12:16:26', '2019-04-05 12:16:26'),
('e5300b6b90b2224bec35f58e64b50d3be7d9f4a708255fcc871054526b3fdb0a67f0a06d296fa70d', 43, 1, 'fore', '[]', 0, '2018-06-06 22:25:10', '2018-06-06 22:25:10', '2019-06-06 22:25:10'),
('e5761de6cff9fc711957d1582b6d08525d7bc85c15bc2205c6ca03d526dfdc8811761525782fc0a1', 37, 1, 'fore', '[]', 0, '2018-06-06 14:52:33', '2018-06-06 14:52:33', '2019-06-06 14:52:33'),
('e64aab83089f2efe068ea2416dd242bcc9e520f4ba7fc28f6887e489d42dbc7f5495d3fc05776de9', 60, 1, 'fore', '[]', 0, '2018-07-20 21:38:36', '2018-07-20 21:38:36', '2019-07-20 21:38:36'),
('e66c5297f3310afcfc0193561e9f650d44c07dbbe60a127b815ff2dc006f3ce0356f7d7b6926c470', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:40:28', '2018-04-09 13:40:28', '2019-04-09 13:40:28'),
('e740bb428a0a6f3e69815233f23b14047afd1fc44d857e63a5df2ff6760a9a5b8e526d3a80df6f98', 22, 1, 'fore', '[]', 0, '2018-06-01 09:43:20', '2018-06-01 09:43:20', '2019-06-01 09:43:20'),
('e760d6016aadcc9e93b854452f91fea732250b864a12b4f195ca62239456b434b9329fee3b7839f7', 1, 1, 'Pizza App', '[]', 0, '2018-03-17 06:06:20', '2018-03-17 06:06:20', '2019-03-17 06:06:20'),
('e79f2a6afd37035f38ce4a2d8bff5ba782cd7dec2869f153e8d72e916e8e617961c9a8ce39a43337', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:15:55', '2018-04-03 21:15:55', '2019-04-03 21:15:55'),
('e7b47f306139ce92658fd9c9a3d09acc1591db824fdc2af7d8b59168e224c08c1e27c326e7b66e82', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 14:48:45', '2018-03-27 14:48:45', '2019-03-27 14:48:45'),
('e849d23fc3d5dd83935c81c5a5ea540c720455cd1d3ef082f718507e2279b5a49331e8c37d7d1719', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:49:44', '2018-04-05 13:49:44', '2019-04-05 13:49:44'),
('e8b2e689a392f9b18a913521e49a15cc52c7ae3ec8044b66b5480aee7d661fee0dd7b43e0e8aa6e0', 13, 1, 'Pizza App', '[]', 0, '2018-04-04 20:40:03', '2018-04-04 20:40:03', '2019-04-04 20:40:03'),
('e8b43dc64ec61c831ed390c9e836d9fdb0e739e9303deadeccf71e01ce740ab2c7fb2377ef4e4c53', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:08:04', '2018-04-03 21:08:04', '2019-04-03 21:08:04'),
('e8d6f313ca7f10d7e3c9c4285d0f9ff4a0e0db631e76094b6444a7dbcd39fa0583206a9dea169b69', 28, 1, 'fore', '[]', 0, '2018-06-01 13:02:25', '2018-06-01 13:02:25', '2019-06-01 13:02:25'),
('e8de6ad72dcb2bf2c3c29d528797cf0ea1f388da4bb633071d764c000ddcae7fbe1741a43a6c76ba', 69, 1, 'fore', '[]', 0, '2018-08-01 00:01:14', '2018-08-01 00:01:14', '2019-08-01 00:01:14'),
('e90b1b0aaf99c0163056649d8390c507cce6e01b830c7ff890404d682939cf7c17f2d7d0fff18c24', 37, 1, 'fore', '[]', 0, '2018-06-06 12:48:01', '2018-06-06 12:48:01', '2019-06-06 12:48:01'),
('e98bd0c2904102e94ed66eea20b50482682922e1b95cbb750e73693ab0a4d1157855436fae9e6755', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 13:40:15', '2018-04-11 13:40:15', '2019-04-11 13:40:15'),
('eaaa3865584d5f3482baed02bef674eaa3be0e69f7040c9dcb6dab0e6da9efe4f5f8de6cf13c230c', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:45:34', '2018-04-11 23:45:34', '2019-04-11 23:45:34'),
('eab786bedb7208786bcff2e953fa2a9a7559f1f1fb982b1e037dd7f3e70e951a2762c71a636a9b1a', 55, 1, 'fore', '[]', 0, '2018-07-21 10:32:48', '2018-07-21 10:32:48', '2019-07-21 10:32:48'),
('eac33e8acbb247c785c12b60c8c920c7b1bb41fddf958d98365956fce4178fc49ae2c745669cac0d', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 15:27:46', '2018-03-27 15:27:46', '2019-03-27 15:27:46'),
('eb37019d8bff3e294ea4c94a76a5e8f32ae5b9ecf2aa6e7b32e23769964db4d1ab55a36e8bf2cd35', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 12:42:37', '2018-04-05 12:42:37', '2019-04-05 12:42:37'),
('ebcdf5d6a76392bee7d9fb552025ee225997833091d541bd5c651b5750f0a5669de28a7ad5dc5d8a', 25, 1, 'fore', '[]', 0, '2018-06-01 10:12:22', '2018-06-01 10:12:22', '2019-06-01 10:12:22'),
('ebecd32f0e6d3afb13568d35c3cb282995940a2443097469959d296bac4bc1c552a55405bf247248', 14, 1, 'Pizza App', '[]', 0, '2018-03-27 16:46:51', '2018-03-27 16:46:51', '2019-03-27 16:46:51'),
('ec3644ace4992afd348cc781b634a966c65c0d878c0add382a9318f74cbfbbffbb76e6ac03e9765f', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 12:15:57', '2018-03-28 12:15:57', '2019-03-28 12:15:57'),
('ec52d9299b36a08cff715f3957cec8cd9fd13f875e712fdbae41762c179413db00cef10292cf3b8d', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 20:52:13', '2018-03-27 20:52:13', '2019-03-27 20:52:13'),
('ec64e19f84f2413a76bed857b46e0d1a0123f715dbeae8ab434ae2a550765216f0bb18a2b2464845', 13, 1, 'Pizza App', '[]', 0, '2018-03-29 14:25:06', '2018-03-29 14:25:06', '2019-03-29 14:25:06'),
('ec6c1aa74002c7e7d9f532709f9302c342ad8ac90b27dd88f105c103d9b30e087c5822c37af546b8', 56, 1, 'fore', '[]', 0, '2018-07-24 22:13:33', '2018-07-24 22:13:33', '2019-07-24 22:13:33'),
('ed087a15a290d98f4e832622bb0a1aa7216968c14070ae5cdd894826b08e25d8ba4459af9e9deb31', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:12:49', '2018-04-09 12:12:49', '2019-04-09 12:12:49'),
('ed112f0cb2cff416c06648d2a95e218d33868e4b7423deaac611f898c48271efb3c331874d7b298e', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:32:05', '2018-04-02 13:32:05', '2019-04-02 13:32:05'),
('ed1abe0f69316de17812c769f8d94b2d53671f160832d4fc0532484f8798d330608b8994d465017c', 6, 1, 'Pizza App', '[]', 0, '2018-03-21 22:14:55', '2018-03-21 22:14:55', '2019-03-21 22:14:55'),
('ed3dcd87c80a06894635ed06bd72f70c22785e3604c8d786571dedb10cee169d2171d2bbaa8cf65d', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 14:52:11', '2018-03-27 14:52:11', '2019-03-27 14:52:11'),
('ed41b9cc6a036235d9145cc022be0c5bab5edaf946658091c6a6941a574865ed819fd2d2a73c87b1', 61, 1, 'fore', '[]', 0, '2018-10-16 17:34:06', '2018-10-16 17:34:06', '2019-10-16 17:34:06'),
('ed5ac649408c51637fdedbcb078897c900c29a39d50c77f5a5137534ab984537d9182236a9ddf1ab', 33, 1, 'fore', '[]', 0, '2018-06-05 09:24:46', '2018-06-05 09:24:46', '2019-06-05 09:24:46'),
('eddc90364b2515df4d1891f715cf7165b267c744d5246add2fd507624a7880c706fd962d13d8ada1', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:25:10', '2018-04-02 13:25:10', '2019-04-02 13:25:10'),
('ee0abf4d1c5c20747b4d8428e013763594a398d992b5274f5ccba7a937163ef9fc43457554b2406a', 60, 1, 'fore', '[]', 0, '2018-07-20 21:37:50', '2018-07-20 21:37:50', '2019-07-20 21:37:50'),
('ee61c812e2be22edae191451cfbb6bd6585ab555b4fa531cb873b4ba4099ccb78b9a35b63a5da041', 25, 1, 'fore', '[]', 0, '2018-06-01 10:23:25', '2018-06-01 10:23:25', '2019-06-01 10:23:25'),
('eeed46fa671979a3cadf1f316cb05b58b38c02add45ae61d61e17e959e4a08e17f1cfc3b50f4c04f', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 21:24:11', '2018-03-20 21:24:11', '2019-03-20 21:24:11'),
('ef35d6a231f7b57cb2dcde27fbf1edf344f7a338dc9586fd68eddcd4dde773b9b1f61ce4049db1c9', 44, 1, 'fore', '[]', 0, '2018-06-06 16:05:07', '2018-06-06 16:05:07', '2019-06-06 16:05:07'),
('efdfbf129512a100226f500f1416cac400996a713b0e6f6c614c9cdd79937348c6d40b502d10386d', 60, 1, 'fore', '[]', 0, '2018-07-20 21:37:26', '2018-07-20 21:37:26', '2019-07-20 21:37:26'),
('f043b3572adfd7ec28cf236d5e43ec5928b5a07935aec2c55b5a0edc7069e29bc261936871e2cc9f', 13, 1, 'Pizza App', '[]', 0, '2018-03-29 14:21:08', '2018-03-29 14:21:08', '2019-03-29 14:21:08'),
('f0464e53060469fefdc43b9b1cedf27817217d34124c3b32bc4305273852d12d21028c183473ba73', 56, 1, 'fore', '[]', 0, '2018-07-23 12:58:04', '2018-07-23 12:58:04', '2019-07-23 12:58:04'),
('f0ab1badcd55ca52f51d48a560b8168a44bc33b6578c45c98ebc09285324fbddb0cf3e78250c1172', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 13:13:34', '2018-03-28 13:13:34', '2019-03-28 13:13:34'),
('f100f499cd60aa5bf1aa8d7fda2c9c66a61a70cf10be225a55c2e6a50c591f661bd198a5f9ea6148', 13, 1, 'Pizza App', '[]', 0, '2018-04-19 01:34:55', '2018-04-19 01:34:55', '2019-04-19 01:34:55'),
('f237e75cfc8ff4caa2d96d41b9d9203c5712b5e10b9baa673fbf248bd2ff9348c54575dcbed68c48', 56, 1, 'fore', '[]', 0, '2018-07-23 12:46:04', '2018-07-23 12:46:04', '2019-07-23 12:46:04'),
('f2b130d678d65c20773ccec7c04adc02e43d483e23259757c49d90955ca04706af38b7f7b27e55b1', 56, 1, 'fore', '[]', 0, '2018-09-25 11:01:43', '2018-09-25 11:01:43', '2019-09-25 11:01:43'),
('f2f57782855e46755d4fcc77d6368a58cf63c8156841ce90a1120876637bac08f5c65c1200101055', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 13:29:00', '2018-04-02 13:29:00', '2019-04-02 13:29:00'),
('f344cec1c9f5010a23678bbf8d38597801018059c76f8f5de1641a7779faed7cbf049ce9f13fbf86', 60, 1, 'fore', '[]', 0, '2018-07-20 21:38:01', '2018-07-20 21:38:01', '2019-07-20 21:38:01'),
('f496c59c559144359816084d91d43b6bd1c872d2c1a7db90e11a88029c2528b229306ba9349bf312', 61, 1, 'fore', '[]', 0, '2018-08-07 22:39:56', '2018-08-07 22:39:56', '2019-08-07 22:39:56'),
('f49d26ec657447846dbdb6f0b88e6f03d49b5f3028c97a633b17f7cf31b1ad3b240a0b793ae1542b', 45, 1, 'fore', '[]', 0, '2018-06-07 16:22:55', '2018-06-07 16:22:55', '2019-06-07 16:22:55'),
('f4a6cb32ab469a3c6a034741b9ab8c0f4f32e941bbfd91c1b39b1f4adfc2d92f9ddb8127d070ba09', 6, 1, 'Pizza App', '[]', 0, '2018-03-20 21:22:27', '2018-03-20 21:22:27', '2019-03-20 21:22:27'),
('f4e1674349d971d2aaf08fd8463abb304fd8552e8da54b7581d69b6ed025bd9df9c67343fc6e9b31', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 13:43:59', '2018-04-09 13:43:59', '2019-04-09 13:43:59'),
('f4e8310f796b5759cb4bd090e5d04f41412e4cfd40e012c16e49de6836000bb24d0378f1495f9840', 56, 1, 'fore', '[]', 0, '2018-07-18 15:16:57', '2018-07-18 15:16:57', '2019-07-18 15:16:57'),
('f500c4ae045e7c00cbd2aeb754ff08a739535c35ca4868084b2b1889fe7aef3bb9bc4e078f46577a', 13, 1, 'Pizza App', '[]', 0, '2018-04-11 23:44:45', '2018-04-11 23:44:45', '2019-04-11 23:44:45'),
('f50e8b0847499b73e64852025ac41e6f90741390127416b397b68c445299642f6b1a7ca9e5518674', 64, 1, 'fore', '[]', 0, '2018-07-25 14:13:51', '2018-07-25 14:13:51', '2019-07-25 14:13:51'),
('f548a984a04584b6726615bd204c0de6154554acb8b98177b8ad3cdeea14360bc1ad2524cef7c6cc', 71, 1, 'fore', '[]', 0, '2018-09-14 11:22:30', '2018-09-14 11:22:30', '2019-09-14 11:22:30'),
('f54aeac2406c329c4e1b3c36229923209b2e3d5cef86a753ce354727ee33dd45aafb3a41a338d71b', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:17:04', '2018-04-03 21:17:04', '2019-04-03 21:17:04'),
('f5b3546b9343c8cf57a60fac6a0a6bcdf6c3117bf1850ebdf85995f708aaaa897ed8bb40831badfa', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 11:44:28', '2018-04-03 11:44:28', '2019-04-03 11:44:28'),
('f61513b66ab837ae3c05a260c2fec86d6317fd6dae43f3fa50d50305b96b3ec8e1556206a1544980', 56, 1, 'fore', '[]', 0, '2018-07-21 08:08:50', '2018-07-21 08:08:50', '2019-07-21 08:08:50'),
('f69589fb643829b1b84883baf0dc9eb2cb472afc29c487120439b7e68dad61dad3fb553ab9eabae2', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:58:58', '2018-04-02 12:58:58', '2019-04-02 12:58:58'),
('f6b7105a60d950dfd18b361cd6d77e282e2e0e21a1a5db17cef74fa6d524d0f92914e5f7e47fe324', 13, 1, 'Pizza App', '[]', 0, '2018-03-27 16:28:05', '2018-03-27 16:28:05', '2019-03-27 16:28:05'),
('f776bfb12aafaff97daa295043c31c0034e4ba051abfc7d9b34fa54c6049cceb4f42231de321829c', 37, 1, 'fore', '[]', 0, '2018-06-06 14:52:55', '2018-06-06 14:52:55', '2019-06-06 14:52:55'),
('f83b44584ebe88ad5aa5ea84fee33dbdc972cc8dc2f46399400ac441e71a0e160016957956c583e0', 49, 1, 'fore', '[]', 0, '2018-06-08 13:35:20', '2018-06-08 13:35:20', '2019-06-08 13:35:20'),
('f8fb6cb8bd1d917ddee4b84f0e85fac7e80f8a5587b5c9f405fd837a47688d8e2a240fd24e36810f', 71, 1, 'fore', '[]', 0, '2018-09-14 11:53:43', '2018-09-14 11:53:43', '2019-09-14 11:53:43'),
('f8fe26c81f15490d2caf2db66943e526bf3da978d3c6928d2fca9d16b45ab05a0b325f6b303236d7', 13, 1, 'Pizza App', '[]', 0, '2018-04-03 21:14:05', '2018-04-03 21:14:05', '2019-04-03 21:14:05'),
('f9e5d5a7de8823a9ec087cea4bd2ff7aeff48533a137057309ae626d442a8a73d2b387817a6adaec', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 11:57:36', '2018-03-28 11:57:36', '2019-03-28 11:57:36'),
('fa54eabdaa2644d6b8acd20c9c7b7989c6beded1d7a2c12440b4d3e93c469e784b2a5db3f8adc55a', 37, 1, 'fore', '[]', 0, '2018-06-06 12:56:47', '2018-06-06 12:56:47', '2019-06-06 12:56:47'),
('fa6d051136c943debfa361c5f6869f90487a268bb3886f1e54f27974a30929dc0f6b579e13795e91', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 11:55:38', '2018-03-28 11:55:38', '2019-03-28 11:55:38'),
('fad3db1f8814d11aa46944937b696b29025dbb514b049f7646592980b397f222662fc3c27bc8164d', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 12:40:56', '2018-04-09 12:40:56', '2019-04-09 12:40:56'),
('fade222ee197a40de95fd1456aa94d5c1eef45cc727601d4e05c846d4b9c984e6ae797f503eb6b44', 28, 1, 'fore', '[]', 0, '2018-06-03 23:48:16', '2018-06-03 23:48:16', '2019-06-03 23:48:16'),
('faff4ea30b4fe4e31a06433e4cceaf2ea554f3b7404174172437037e1b0e2793421d0e6d6c66bfca', 61, 1, 'fore', '[]', 0, '2018-10-16 22:05:09', '2018-10-16 22:05:09', '2019-10-16 22:05:09'),
('fb12e634bde72ac05a61e960299558ea08f34a6b3943c612f161a8a31d774aa428ffdb9fd22669d7', 6, 1, 'Pizza App', '[]', 0, '2018-03-23 18:38:30', '2018-03-23 18:38:30', '2019-03-23 18:38:30'),
('fb6f4a01546e13151a3dfeae0eb77abd98f3fdc6d1a796eb8e00eb04bf33f5f679c177f12a889292', 55, 1, 'fore', '[]', 0, '2018-10-22 14:38:41', '2018-10-22 14:38:41', '2019-10-22 14:38:41'),
('fb82c5ac7754769687eafd1281c920acefad67a4ed0980aa24ceae4d52065d030a5ad9c712efbf3b', 56, 1, 'fore', '[]', 0, '2018-07-19 14:46:57', '2018-07-19 14:46:57', '2019-07-19 14:46:57'),
('fbd3404bfc3271ba4010e16e014ee56c55f33b84cd7dcfd9daead5674ba7d9f13472dd8afa541ee8', 56, 1, 'fore', '[]', 0, '2018-07-10 09:27:04', '2018-07-10 09:27:04', '2019-07-10 09:27:04'),
('fbd68fa1faf81af16e97068d1100dddb41708ab6e7d9ccefc64d0f1136c082306b77cd5beb6f8d0a', 56, 1, 'fore', '[]', 0, '2018-06-11 15:58:57', '2018-06-11 15:58:57', '2019-06-11 15:58:57'),
('fc3c3ecb483352327c59f1d637a092e1a73caecc70d68293160354b9a9e7182281fc2a3b77f7e0c4', 13, 1, 'Pizza App', '[]', 0, '2018-04-12 16:04:59', '2018-04-12 16:04:59', '2019-04-12 16:04:59'),
('fd57ae2e8b9d139751dd60b8953a8932fb9d75cad9b6adee3cd9eefe3d675a1d6273a46de8fe7050', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 12:52:27', '2018-04-02 12:52:27', '2019-04-02 12:52:27'),
('fd700eaeabe4a8296e90b89fcfb381900bb08acdb6dd2e848082edec04439e8df3c18d4973eda139', 60, 1, 'fore', '[]', 0, '2018-06-28 13:07:06', '2018-06-28 13:07:06', '2019-06-28 13:07:06'),
('fd9a9482727d729a27c7eebda6ee7fd42dc0f9d257212dfd9a9d69a38b97d08045864c5abba48861', 41, 1, 'fore', '[]', 0, '2018-06-06 11:31:22', '2018-06-06 11:31:22', '2019-06-06 11:31:22'),
('fddc972a10289f9f13fdea7f405c50914ea22251e0f46d01795c83ec24cf647269971076ad7ba6aa', 13, 1, 'Pizza App', '[]', 0, '2018-03-28 11:56:24', '2018-03-28 11:56:24', '2019-03-28 11:56:24'),
('fe0616c27dfd037423b8e3b2ed2b99d80d0af891d5e3f972891a086cdd38fcc810dbc2706c5863f9', 13, 1, 'Pizza App', '[]', 0, '2018-04-05 13:20:48', '2018-04-05 13:20:48', '2019-04-05 13:20:48'),
('fe5fa4c3d8c6dc1b52ed34e29220dff0f3fbc3171f8d058195fbd5dd704b8ea8450268872ad76cf5', 30, 1, 'fore', '[]', 0, '2018-06-04 18:19:10', '2018-06-04 18:19:10', '2019-06-04 18:19:10'),
('fea80e2b5d72f9ae4dc248817ff8404348a774dd02eae859c1adf678505340234d67ed5ea210406b', 13, 1, 'Pizza App', '[]', 0, '2018-04-02 10:56:27', '2018-04-02 10:56:27', '2019-04-02 10:56:27'),
('feaf8df90470fe610470c6a5fa648c773fe49feb448dc6761e220c6b4763bdef99e36ff4fdae231c', 49, 1, 'fore', '[]', 0, '2018-06-11 00:36:55', '2018-06-11 00:36:55', '2019-06-11 00:36:55'),
('fed530229e7343741c5edd538f3289a794f46c03c408965ff23aa0631bc5ec4d501abff27ee3ad10', 11, 1, 'Pizza App', '[]', 0, '2018-03-22 21:45:36', '2018-03-22 21:45:36', '2019-03-22 21:45:36'),
('ff223679951165c429266c37e5f48d74e64943befcdc854ac3a143c8579cd95de991652766de15f3', 13, 1, 'Pizza App', '[]', 0, '2018-04-09 23:41:11', '2018-04-09 23:41:11', '2019-04-09 23:41:11'),
('ffd83874a968ed9e5c660cb31f4a975159312bcbb5535e14f1a45eb498bda5f7392c19409c63f1ca', 64, 1, 'fore', '[]', 0, '2018-09-25 19:55:52', '2018-09-25 19:55:52', '2019-09-25 19:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'DMySDpvndE43AuNpt6wqmWQsXbiCZQJnqnCKdRUZ', 'http://localhost', 1, 0, 0, '2018-03-14 18:58:06', '2018-03-14 18:58:06'),
(2, NULL, 'Laravel Password Grant Client', 'ZENAM8GcI4bqITm6eJiDnsZOJZajahZWsRETK2Mn', 'http://localhost', 0, 1, 0, '2018-03-14 18:58:06', '2018-03-14 18:58:06');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2018-03-14 18:58:06', '2018-03-14 18:58:06');

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
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_type` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bedroom` int(11) DEFAULT NULL,
  `bathroom` int(11) DEFAULT NULL,
  `additional` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cleaner_id` int(11) DEFAULT NULL,
  `cleaner_rate` int(11) DEFAULT '0',
  `hours` float DEFAULT '0',
  `price` float DEFAULT '0',
  `order_status` int(11) DEFAULT '0',
  `if_changed` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `city` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `end_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `serve_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(11) NOT NULL,
  `agent_fee` float DEFAULT NULL,
  `cancel_reason` text COLLATE utf8_unicode_ci,
  `review_status` int(11) DEFAULT NULL,
  `cancel_time` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `finish_time` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notes` text COLLATE utf8_unicode_ci,
  `order_sn` bigint(20) NOT NULL DEFAULT '0',
  `room_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `if_pet` int(11) DEFAULT NULL,
  `gst` float DEFAULT '0',
  `repay_amount` float DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_type`, `name`, `phone`, `address`, `time`, `bedroom`, `bathroom`, `additional`, `cleaner_id`, `cleaner_rate`, `hours`, `price`, `order_status`, `if_changed`, `created_at`, `updated_at`, `deleted_at`, `city`, `start_time`, `end_time`, `serve_time`, `user_id`, `agent_fee`, `cancel_reason`, `review_status`, `cancel_time`, `finish_time`, `notes`, `order_sn`, `room_no`, `if_pet`, `gst`, `repay_amount`) VALUES
(1, 1, 'Singed', '6047195215', '4299 Kingsway, Burnaby, BC V5H 1Z5, Canada', '2018-06-07 14:42', 3, 2, NULL, 16, 20, 3, 60, 6, 0, '2018-06-08 21:56:35', '2018-06-08 14:56:35', '0000-00-00 00:00:00', 'Burnaby', '14:42', '17:42', '2018-06-08 14:47:00', 56, 6, NULL, 1, NULL, '2018-06-08 14:47', '', 0, '', 0, 0, 0),
(2, 1, 'Singed', '6047195215', '4211 Kingsway, Burnaby, BC V5H 1Z6, Canada', '2018-06-08 13:32', 1, 0, NULL, 16, 20, 2, 40, 6, 0, '2018-06-08 22:34:27', '2018-06-08 15:34:27', '0000-00-00 00:00:00', 'Burnaby', '13:32', '15:32', '2018-06-08 15:33:00', 56, 4, NULL, 1, NULL, '2018-06-08 15:33', '', 0, '', 0, 0, 0),
(3, 1, 'Singed', '6047195215', '4500 A Kingsway, Burnaby, BC V5H 2A9, Canada', '2018-06-09 13:58', 1, 0, NULL, 6, 0, 2, 60, 6, 0, '2018-06-08 23:01:22', '2018-06-08 16:01:22', '0000-00-00 00:00:00', 'Burnaby', '13:58', '15:58', '2018-06-08 16:00:00', 56, 0, NULL, 1, NULL, '2018-06-08 16:00', '', 0, '', 0, 0, 0),
(4, 3, 'Singed', '6047195215', '4500 A Kingsway, Burnaby, BC V5H 2A9, Canada', '2018-06-10 19:18', 2, 1, '[1,2]', 6, 20, 5, 100, 3, 1, '2018-06-09 18:22:34', '2018-06-09 11:22:34', '0000-00-00 00:00:00', 'Burnaby', '09:18', '14:18', '0000-00-00 00:00:00', 56, 10, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(5, 1, 'Singed', '6047195215', '2100 Marine Dr, West Vancouver, BC V7V 4Y2, Canada', '2018-08-12 01:57', 2, 1, '[2]', 6, 20, 3, 60, 8, 1, '2018-09-14 19:15:15', '2018-09-14 12:15:15', '0000-00-00 00:00:00', 'West Vancouver', '08:57', '11:57', '0000-00-00 00:00:00', 56, 6, '', NULL, '2018-09-14 12:15', '', '', 0, '', 0, 0, 0),
(6, 1, 'adrianleung100', '6042838800', '9280 No 3 Rd, Richmond, BC V7A 1V9, Canada', '2018-06-15 14:20', 2, 0, '[2]', 16, 20, 3, 60, 2, 0, '2018-06-11 07:25:27', '2018-06-11 00:25:27', '0000-00-00 00:00:00', 'Richmond', '14:20', '17:20', '0000-00-00 00:00:00', 57, 6, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(7, 2, 'adrianleung100', '6042838800', '928 W Broadway, Vancouver, BC V5Z 1K7, Canada', '2018-06-16 11:24', 1, 1, '[1]', 16, 20, 3.5, 70, 6, 0, '2018-06-11 07:33:14', '2018-06-11 00:33:14', '0000-00-00 00:00:00', 'Vancouver', '11:24', '14:54', '2018-06-11 00:32:00', 57, 7, NULL, NULL, NULL, '2018-06-11 00:33', '', 0, '', 0, 0, 0),
(8, 1, 'richardyych1', '6047195215', '439 W Broadway, Vancouver, BC V6K 4M2, Canada', '2018-06-14 10:47', 2, 1, '[2,3]', 16, 20, 3.5, 70, 6, 0, '2018-06-11 22:50:08', '2018-06-11 15:50:08', '0000-00-00 00:00:00', 'Vancouver', '10:47', '14:17', '2018-06-11 15:49:00', 58, 7, NULL, 1, NULL, '2018-06-11 15:49', '', 0, '', 0, 0, 0),
(9, 1, 'Singed1', '6047195215', '2774 Kingsway, Vancouver, BC V5R 5H6, Canada', '2018-08-17 08:33', 2, 1, '[2,3]', 16, 20, 3.5, 70, 7, 0, '2018-07-23 04:42:39', '2018-07-22 21:42:39', '0000-00-00 00:00:00', 'Vancouver', '08:33', '12:03', '0000-00-00 00:00:00', 56, 7, '', NULL, '2018-07-22 21:42', '', '', 0, '', 0, 0, 0),
(10, 1, 'Singed1', '6047195215', '2774 Kingsway, Vancouver, BC V5R 5H6, Canada', '2018-08-01 12:00', 2, 1, '["2","3"]', 16, 20, 3.5, 70, 5, 1, '2018-08-01 06:35:19', '2018-07-31 23:35:19', '0000-00-00 00:00:00', 'Vancouver', '12:00', '15:30', '2018-07-31 23:35:00', 56, 7, NULL, NULL, '0', '0', '0', 0, '', 0, 0, 0),
(11, 1, 'Singed', '6047195215', '2775 W 8th Ave, Vancouver, BC V6K 2B7, Canada', '2018-06-19 11:46', 1, 0, '[2,3]', NULL, 0, 3, 0, 7, 0, '2018-07-23 04:42:48', '2018-07-22 21:42:48', '0000-00-00 00:00:00', 'Vancouver', '11:46', '14:46', '0000-00-00 00:00:00', 56, 0, '', NULL, '2018-07-22 21:42', '', NULL, 0, '', 0, 0, 0),
(12, 2, 'Singed', '6047195215', '2775 W 8th Ave, Vancouver, BC V6K 2B7, Canada', '2018-08-10 10:47', 2, 1, '[1,2]', 16, 20, 4.5, 90, 6, 1, '2018-07-23 05:51:03', '2018-07-22 22:51:03', '0000-00-00 00:00:00', 'Vancouver', '10:47', '15:17', '2018-07-20 23:30:00', 56, 9, NULL, 1, NULL, '2018-07-20 23:30', NULL, 0, '', 0, 0, 0),
(13, 1, 'Singed1', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-06-20 08:44', 1, 0, '[3]', NULL, 0, 2.5, 0, 7, 0, '2018-07-23 04:42:53', '2018-07-22 21:42:53', '0000-00-00 00:00:00', 'Vancouver', '08:44', '11:14', '0000-00-00 00:00:00', 56, 0, '', NULL, '2018-07-22 21:42', '', NULL, 0, '', 0, 0, 0),
(14, 1, 'Singed1', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-06-20 08:46', 2, 1, '[2,3]', NULL, 0, 3.5, 0, 7, 0, '2018-07-23 04:42:56', '2018-07-22 21:42:56', '0000-00-00 00:00:00', 'Vancouver', '08:46', '12:16', '0000-00-00 00:00:00', 56, 0, '', NULL, '2018-07-22 21:42', '', '哈哈哈', 0, '', 0, 0, 0),
(15, 1, 'Singed1', '6047195215', '2132 Granville St, Vancouver, BC V6J, Canada', '2018-07-28 03:34', 1, 0, NULL, 6, 0, 2, 60, 8, 1, '2018-07-20 04:02:03', '2018-07-19 21:02:03', '0000-00-00 00:00:00', 'Vancouver', '20:33', '22:33', '0000-00-00 00:00:00', 56, 0, '不想要了', NULL, '2018-07-19 21:02', '', '', 0, '', 0, 0, 0),
(16, 1, 'Singed1', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-06-21 08:36', 1, 0, NULL, NULL, 0, 2, 0, 7, 0, '2018-07-23 04:43:00', '2018-07-22 21:43:00', '0000-00-00 00:00:00', 'Vancouver', '08:36', '10:36', '0000-00-00 00:00:00', 56, 0, '', NULL, '2018-07-22 21:43', '', '', 0, '', 0, 0, 0),
(17, 1, 'richard', '6047195215', '2409 Kingsway, Vancouver, BC V5R 5G8, Canada', '2018-06-21 10:01', 2, 1, '[2,3]', 16, 20, 3.5, 70, 6, 0, '2018-06-22 16:29:39', '2018-06-22 09:29:39', '0000-00-00 00:00:00', 'Vancouver', '10:01', '13:31', '2018-06-22 09:28:00', 59, 7, NULL, 1, NULL, '2018-06-22 09:28', '', 0, '', 0, 0, 0),
(18, 1, 'richard', '6047195215', '3287 Kingsway, Vancouver, BC V5R 5K4, Canada', '2018-06-20 14:17', 1, 0, '[2,3]', NULL, 0, 3, 0, 7, 0, '2018-06-20 01:19:54', '2018-06-19 18:19:54', '0000-00-00 00:00:00', 'Vancouver', '14:17', '17:17', '0000-00-00 00:00:00', 59, 0, '测试', NULL, '2018-06-19 18:19', '', '', 0, '', 0, 0, 0),
(19, 1, 'richard', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-06-20 14:32', 1, 0, NULL, NULL, 0, 2, 0, 7, 0, '2018-06-20 20:35:16', '2018-06-20 13:35:16', '0000-00-00 00:00:00', 'Vancouver', '14:32', '16:32', '0000-00-00 00:00:00', 59, 0, '不哑了', NULL, '2018-06-20 13:35', '', '', 0, '', 0, 0, 0),
(20, 1, 'adrianleung100', '6042838800', '9280 Cunningham Pl, Richmond, BC V6X 3N7, Canada', '2018-07-03 11:37', 2, 0, '[2]', 16, 20, 3, 60, 2, 0, '2018-06-28 21:16:06', '2018-06-28 14:16:06', '0000-00-00 00:00:00', 'Richmond', '11:37', '14:37', '0000-00-00 00:00:00', 57, 6, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(21, 1, 'adrianleung100', '6042838800', '9280 No 3 Rd, Richmond, BC V7A 1V9, Canada', '2018-06-28 08:30', 3, 0, NULL, 16, 20, 3, 60, 6, 0, '2018-06-30 23:52:47', '2018-06-30 16:52:47', '0000-00-00 00:00:00', 'Richmond', '08:30', '11:30', '2018-06-30 16:51:00', 57, 6, NULL, 1, NULL, '2018-06-30 16:52', '', 0, '', 0, 0, 0),
(22, 1, 'Singed1', '6047195215', '1236 Kingsway, Vancouver, BC V5V 3E1, Canada', '2018-06-29 09:28', 1, 0, NULL, 16, 20, 2, 40, 6, 0, '2018-06-28 21:30:50', '2018-06-28 14:30:50', '0000-00-00 00:00:00', 'Vancouver', '09:28', '11:28', '2018-06-28 14:30:00', 56, 4, NULL, 1, NULL, '2018-06-28 14:30', '', 0, '', 0, 0, 0),
(23, 1, 'adrianleung100', '6042838800', '936 Kingsway, Vancouver, BC V5V 3C4, Canada', '2018-07-02 11:47', 3, 0, NULL, NULL, 0, 3, 0, 1, 0, '2018-06-30 16:47:52', '2018-06-30 16:47:52', '0000-00-00 00:00:00', 'Vancouver', '11:47', '14:47', '0000-00-00 00:00:00', 57, 0, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(24, 1, 'Singed', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-07-19 11:36', 2, 1, '[3]', 17, 16, 3, 48, 6, 0, '2018-07-19 18:38:19', '2018-07-19 11:38:19', '0000-00-00 00:00:00', 'Vancouver', '11:36', '14:36', '2018-07-19 11:36:00', 56, 5, NULL, 1, NULL, '2018-07-19 11:37', '', 0, '', 0, 0, 0),
(25, 1, 'Singed', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-07-20 14:31', 1, 0, NULL, 17, 16, 2, 32, 2, 0, '2018-07-21 04:28:34', '2018-07-20 21:28:34', '0000-00-00 00:00:00', 'Vancouver', '14:31', '16:31', '0000-00-00 00:00:00', 56, 3, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(26, 1, 'Singed', '6047195215', '3287 Kingsway, Vancouver, BC V5R 5K4, Canada', '2018-07-19 13:49', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-07-19 13:46:33', '2018-07-19 13:46:33', '0000-00-00 00:00:00', 'Vancouver', '13:49', '15:49', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '6666', 0, '', 0, 0, 0),
(27, 1, 'Singed', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-07-21 14:06', 2, 1, '[2]', NULL, 0, 3, 0, 1, 0, '2018-07-19 21:08:13', '2018-07-19 21:08:13', '0000-00-00 00:00:00', 'Vancouver', '14:06', '17:06', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(28, 1, 'Singed', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-07-23 09:45', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-07-22 21:18:50', '2018-07-22 21:18:50', '0000-00-00 00:00:00', 'Vancouver', '09:45', '11:45', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(29, 1, 'Singed', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-07-23 15:30', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-07-22 21:30:03', '2018-07-22 21:30:03', '0000-00-00 00:00:00', 'Vancouver', '15:30', '17:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(30, 1, 'richardyych5', '6047195215', '2774 Kingsway, Vancouver, BC V5R 5H6, Canada', '2018-07-31 20:30', 2, 1, NULL, 17, 16, 2.5, 40, 6, 1, '2018-07-23 05:42:21', '2018-07-22 22:42:21', '0000-00-00 00:00:00', 'Vancouver', '20:30', '23:00', '2018-07-22 22:41:00', 63, 4, NULL, 1, NULL, '2018-07-22 22:41', '', 0, '', 0, 0, 0),
(31, 1, 'Singed', '6047195215', '2774 Kingsway, Vancouver, BC V5R 5H6, Canada', '2018-07-29 16:00', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-07-22 22:49:44', '2018-07-22 22:49:44', '0000-00-00 00:00:00', 'Vancouver', '16:00', '18:00', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 0, '', 0, 0, 0),
(32, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-07-31 15:00', 2, 1, '[3,2]', NULL, 0, 3.5, 0, 1, 0, '2018-07-24 20:57:17', '2018-07-24 20:57:17', '0000-00-00 00:00:00', 'Vancouver', '15:00', '18:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 1532491037, '', 0, 0, 0),
(33, 1, 'adrianleung100', '6042838800', '44 Kingsway, Vancouver, BC V5T 3H9, Canada', '2018-07-28 10:30', 3, 0, NULL, 16, 20, 3, 60, 6, 1, '2018-07-25 05:57:58', '2018-07-24 22:57:58', '0000-00-00 00:00:00', 'Vancouver', '11:30', '14:30', '2018-07-24 22:51:00', 57, 6, NULL, 1, NULL, '2018-07-24 22:52', '', 1532497276, '', 0, 0, 0),
(34, 1, 'adrianleung100', '6042838800', '3337 Kingsway, Vancouver, BC V5R 5K6, Canada', '2018-07-27 12:30', 3, 0, '[2]', NULL, 0, 3.5, 0, 1, 0, '2018-07-24 22:42:22', '2018-07-24 22:42:22', '0000-00-00 00:00:00', 'Vancouver', '12:30', '16:00', '0000-00-00 00:00:00', 57, 0, NULL, NULL, NULL, '', '', 1532497342, '', 0, 0, 0),
(35, 1, 'adrianleung100', '6042838800', '320 Robson St, Vancouver, BC V6B 6B3, Canada', '2018-07-26', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-07-25 14:38:00', '2018-07-27 13:44:33', '0000-00-00 00:00:00', 'Vancouver', '11:30', '13:30', '0000-00-00 00:00:00', 57, 0, NULL, NULL, NULL, '', NULL, 1532504284, '', 0, 0, 0),
(36, 1, 'adrianleung100', '6042838800', '927 Granville St, Vancouver, BC V6Z 1L3, Canada', '2018-08-21 10:00', 2, 0, NULL, 18, 20, 2.5, 50, 6, 0, '2018-08-01 06:07:07', '2018-07-31 23:07:07', '0000-00-00 00:00:00', 'Vancouver', '10:00', '12:30', '2018-07-31 22:56:00', 57, 5, NULL, NULL, NULL, '2018-07-31 23:07', '', 1533102696, '', 0, 0, 0),
(37, 2, 'adrianleung100', '6042838800', '3479 Kingsway, Vancouver, BC V5R 5L5, Canada', '2018-08-21 15:00', 5, 4, NULL, NULL, 0, 6, 0, 1, 0, '2018-07-31 22:55:07', '2018-07-31 22:55:07', '0000-00-00 00:00:00', 'Vancouver', '15:00', '21:00', '0000-00-00 00:00:00', 57, 0, NULL, NULL, NULL, '', '', 1533102907, '', 0, 0, 0),
(38, 1, 'adrianleung100', '6042838800', '3337 Kingsway, Vancouver, BC V5R 5K6, Canada', '2018-08-13 15:00', 3, 0, NULL, 18, 20, 3, 60, 2, 0, '2018-08-01 05:56:12', '2018-07-31 22:56:12', '0000-00-00 00:00:00', 'Vancouver', '15:00', '18:00', '0000-00-00 00:00:00', 57, 6, NULL, NULL, NULL, '', '', 1533102949, '', 0, 0, 0),
(39, 1, 'Adrian Leung', '6042838800', '9280 No 3 Rd, Richmond, BC V7A 1V9, Canada', '2018-08-21 19:30', 2, 0, NULL, NULL, 0, 2.5, 0, 1, 0, '2018-08-07 22:43:27', '2018-08-07 22:43:27', '0000-00-00 00:00:00', 'Richmond', '19:30', '22:00', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1533707007, '', 0, 0, 0),
(40, 1, 'Adrian Leung', '6042838800', '3337 Kingsway, Vancouver, BC V5R 5K6, Canada', '2018-08-13 18:00', 2, 0, NULL, NULL, 0, 2.5, 0, 1, 0, '2018-08-07 22:54:42', '2018-08-07 22:54:42', '0000-00-00 00:00:00', 'Vancouver', '18:00', '20:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1533707682, '', 0, 0, 0),
(41, 1, 'Singed', '6047195215', '1285w W Broadway, Vancouver, BC V6H 3X8, Canada', '2018-08-09 16:30', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-08-08 22:32:55', '2018-08-08 22:32:55', '0000-00-00 00:00:00', 'Vancouver', '16:30', '18:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 1533792775, '', 0, 0, 0),
(42, 1, 'Adrian Leung', '6042310809', '9280 No 3 Rd, Richmond, BC V7A 1V9, Canada', '2018-09-19 12:00', 3, 0, NULL, NULL, 0, 3, 0, 1, 0, '2018-09-07 17:06:30', '2018-09-07 17:06:30', '0000-00-00 00:00:00', 'Richmond', '12:00', '15:00', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1536365190, '', 0, 0, 0),
(43, 1, 'Adrian Leung', '6042838800', '928 Kingsway, Vancouver, BC V5V 3C4, Canada', '2018-09-13 12:00', 2, 0, NULL, 18, 20, 2.5, 50, 2, 0, '2018-09-08 00:10:55', '2018-09-07 17:10:55', '0000-00-00 00:00:00', 'Vancouver', '12:00', '14:30', '0000-00-00 00:00:00', 61, 5, NULL, NULL, NULL, '', '', 1536365415, '', 0, 0, 0),
(44, 1, 'Adrian Leung', '6042838800', '9280 Cunningham Pl, Richmond, BC V6X 3N7, Canada', '2018-09-28 12:00', 2, 0, NULL, NULL, 0, 2.5, 0, 1, 0, '2018-09-14 00:55:55', '2018-09-14 00:55:55', '0000-00-00 00:00:00', 'Richmond', '12:00', '14:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1536911755, '', 0, 0, 0),
(45, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-09-15 13:30', 1, 0, NULL, 6, 0, 2, 0, 1, 0, '2018-09-22 07:00:27', '2018-09-22 00:00:27', '0000-00-00 00:00:00', 'Vancouver', '13:30', '15:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', NULL, 1536957527, '', 0, 0, 0),
(46, 1, 'Singed Dev', '6047195215', '2774 Kingsway, Vancouver, BC V5R 5H6, Canada', '2018-09-25 11:30', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-09-25 11:05:28', '2018-09-25 11:05:28', '0000-00-00 00:00:00', 'Vancouver', '11:30', '13:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 1537898728, '', 0, 0, 0),
(47, 1, 'Singed Dev', '6047195215', '2349 Granville St, Vancouver, BC V6H 3G4, Canada', '2018-09-30 19:00', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-09-29 22:13:41', '2018-09-29 22:13:41', '0000-00-00 00:00:00', 'Vancouver', '19:00', '21:00', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 1538284421, '', 0, 0, 0),
(48, 1, 'Adrian Leung', '6042838800', '936 Kingsway, Vancouver, BC V5V 3C4, Canada', '2018-10-25 14:00', 3, 0, NULL, NULL, 0, 3, 0, 7, 0, '2018-10-20 06:24:30', '2018-10-19 23:24:30', '0000-00-00 00:00:00', 'Vancouver', '14:00', '17:00', '0000-00-00 00:00:00', 61, 0, '', NULL, '2018-10-19 23:24', '', '', 1539219107, '', 0, 0, 0),
(49, 1, 'Adrian Leung', '6042838800', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-10-10 18:30', 1, 0, NULL, NULL, 0, 2, 0, 1, 0, '2018-10-10 18:33:29', '2018-10-10 18:33:29', '0000-00-00 00:00:00', 'Vancouver', '18:30', '20:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1539221609, '', 0, 0, 0),
(50, 3, 'Adrian Leung', '6042838800', '3479 Kingsway, Vancouver, BC V5R 5L5, Canada', '2018-10-24 16:30', 3, 0, NULL, 6, 0, 4.5, 135, 2, 0, '2018-10-16 17:37:10', '2018-10-16 17:37:10', '0000-00-00 00:00:00', 'Vancouver', '16:30', '21:00', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1539736630, '', 0, 0, 0),
(51, 1, 'Adrian Leung', '6042838800', '928 Kingsway, Vancouver, BC V5V 3C4, Canada', '2018-10-23 13:00', 2, 0, NULL, 6, 0, 2.5, 75, 2, 0, '2018-10-16 17:55:36', '2018-10-16 17:55:36', '0000-00-00 00:00:00', 'Vancouver', '13:00', '15:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1539737736, '', 0, 0, 0),
(52, 1, 'Adrian Leung', '6042838800', '938 W Broadway, Vancouver, BC V5Z 1K7, Canada', '2018-10-25 14:30', 2, 0, NULL, 6, 0, 2.5, 75, 7, 0, '2018-10-23 08:15:17', '2018-10-23 01:15:17', '0000-00-00 00:00:00', 'Vancouver', '14:30', '17:00', '0000-00-00 00:00:00', 61, 0, '', NULL, '2018-10-23 01:15', '', '', 1539760936, '', 0, 0, 0),
(53, 1, 'Adrian Leung', '6042838800', '938 W Broadway, Vancouver, BC V5Z 1K7, Canada', '2018-10-19 14:30', 2, 0, NULL, 6, 0, 2.5, 75, 2, 0, '2018-10-17 17:18:24', '2018-10-17 17:18:24', '0000-00-00 00:00:00', 'Vancouver', '14:30', '17:00', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1539821904, '', 0, 0, 0),
(54, 1, 'Adrian Leung', '6042838800', '865 W Broadway, Vancouver, BC V5Z 1J9, Canada', '2018-10-18 15:30', 3, 0, NULL, NULL, 0, 3, 0, 1, 0, '2018-10-17 17:32:03', '2018-10-17 17:32:03', '0000-00-00 00:00:00', 'Vancouver', '15:30', '18:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1539822723, '', 0, 0, 0),
(55, 1, 'Singed Dev', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-10-18 16:30', 1, 1, '[2]', NULL, 0, 2.5, 0, 1, 0, '2018-10-18 16:17:13', '2018-10-18 16:17:13', '0000-00-00 00:00:00', 'Vancouver', '16:30', '19:00', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 1539904633, '', 0, 0, 0),
(56, 1, 'Adrian Leung', '6042838800', '936 Granville St, Vancouver, BC V6Z 1L2, Canada', '2018-10-25 13:00', 2, 0, '[2]', NULL, 0, 3, 0, 7, 0, '2018-10-25 01:37:53', '2018-10-24 18:37:53', '0000-00-00 00:00:00', 'Vancouver', '13:00', '16:00', '0000-00-00 00:00:00', 61, 0, '', NULL, '2018-10-24 18:37', '', '', 1539925081, '', 0, 0, 0),
(57, 2, 'Adrian Leung', '6042838800', '839 W Broadway, Unit 705', '2018-10-20 15:30', 1, 0, '[1]', NULL, 0, 3.5, 0, 1, 0, '2018-10-19 23:24:17', '2018-10-19 23:24:17', '0000-00-00 00:00:00', 'Vancouver', '15:30', '19:00', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1540016657, '', 0, 0, 0),
(58, 3, 'Adrian Leung', '6042838800', '99 Kingsway, Vancouver, BC V5T 3J1, Canada', '2018-10-25 12:30', 7, 0, NULL, 6, 0, 8, 240, 2, 0, '2018-10-21 00:43:32', '2018-10-21 00:43:32', '0000-00-00 00:00:00', 'Vancouver', '12:30', '20:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1540107812, '', 0, 0, 0),
(59, 1, 'Adrian Leung', '6042838800', '938 W Broadway, Vancouver, BC V5Z 1K7, Canada', '2018-10-24 11:00', 2, 1, NULL, NULL, 0, 2.5, 0, 1, 0, '2018-10-23 00:55:18', '2018-10-23 00:55:18', '0000-00-00 00:00:00', 'Vancouver', '11:00', '13:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1540281318, '', 0, 0, 0),
(60, 1, 'Adrian Leung', '6042838800', '6931 Kingsway, Burnaby, BC V5E 1E5, Canada', '2018-10-26 14:00', 2, 1, NULL, NULL, 0, 2.5, 0, 1, 0, '2018-10-25 19:55:31', '2018-10-25 19:55:31', '0000-00-00 00:00:00', 'Burnaby', '14:00', '16:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1540522531, '', 0, 0, 0),
(61, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-10-30 09:30', 2, 1, '[2,3]', NULL, 0, 3.5, 0, 1, 0, '2018-10-30 09:30:38', '2018-10-30 09:30:38', '0000-00-00 00:00:00', 'Vancouver', '09:30', '13:00', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '23', 1540917038, NULL, 0, 0, 0),
(62, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-10-31 09:30', 1, 1, NULL, NULL, 0, 2, 0, 1, 0, '2018-10-30 09:33:11', '2018-10-30 09:33:11', '0000-00-00 00:00:00', 'Vancouver', '09:30', '11:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '', 1540917191, NULL, 0, 0, 0),
(63, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-10-30 10:30', 1, 0, '[2]', NULL, 0, 2.5, 0, 1, 0, '2018-10-30 10:37:33', '2018-10-30 10:37:33', '0000-00-00 00:00:00', 'Vancouver', '10:30', '13:00', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', 'test', 1540921053, '23', 1, 0, 0),
(64, 1, 'Singed Dev', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-10-31 10:30', 2, 1, '[2,3]', NULL, 0, 3.5, 0, 1, 0, '2018-10-30 10:39:26', '2018-10-30 10:39:26', '0000-00-00 00:00:00', 'Vancouver', '10:30', '14:00', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', '312313', 1540921166, '23', 1, 0, 0),
(65, 1, 'Adrian Leung', '6042838800', '952 Granville St, Vancouver, BC V6Z 1L2, Canada', '2018-10-30 14:00', 2, 1, NULL, NULL, 0, 2.5, 0, 1, 0, '2018-10-30 13:05:41', '2018-10-30 13:05:41', '0000-00-00 00:00:00', 'Vancouver', '14:00', '16:30', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1540929941, NULL, NULL, 0, 0),
(66, 1, 'Adrian Leung', '6042838800', '3989 Granville St, Vancouver, BC V6H 3L1, Canada', '2018-10-31 15:30', 2, 1, NULL, 6, 0, 2.5, 75, 2, 0, '2018-10-31 13:47:43', '2018-10-31 13:47:43', '0000-00-00 00:00:00', 'Vancouver', '15:30', '18:00', '0000-00-00 00:00:00', 61, 0, NULL, NULL, NULL, '', '', 1541018863, NULL, NULL, 0, 0),
(67, 1, 'Singed Dev', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-11-05 12:30', 1, 1, '[2,3]', NULL, 0, 3, 0, 1, 0, '2018-11-05 12:36:03', '2018-11-05 12:36:03', '0000-00-00 00:00:00', 'Vancouver', '12:30', '15:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', 'tes', 1541450163, '23', 1, 0, 0),
(68, 3, 'Singed Dev', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-11-07 12:30', 1, 0, NULL, NULL, 0, 4, 0, 1, 0, '2018-11-05 12:36:26', '2018-11-05 12:36:26', '0000-00-00 00:00:00', 'Vancouver', '12:30', '16:30', '0000-00-00 00:00:00', 56, 0, NULL, NULL, NULL, '', 'yrdy', 1541450186, '3444', 1, 0, 0),
(69, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-11-06 10:30', 1, 0, NULL, 16, 20, 2, 40, 2, 0, '2018-11-05 21:53:25', '2018-11-05 13:53:25', '0000-00-00 00:00:00', 'Vancouver', '10:30', '12:30', '0000-00-00 00:00:00', 56, 4, NULL, NULL, NULL, '', '23', 1541450363, '23', 1, 0, 0),
(70, 1, 'Adrian Leung', '6042838800', '906 W Broadway, Vancouver, BC V5Z 1K7, Canada', '2018-11-09 12:30', 2, 1, '[2]', 6, 0, 3, 90, 8, 1, '2018-11-09 05:10:38', '2018-11-08 21:10:38', '0000-00-00 00:00:00', 'Vancouver', '12:30', '15:30', '0000-00-00 00:00:00', 61, NULL, '', NULL, '2018-11-08 21:10', '', 'I will be home ', 1541568717, '', 1, 0, 0),
(71, 1, 'Adrian Leung', '6042838800', '33 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-11-16 18:00', 2, 1, '[2]', 18, 24, 3, 72, 3, 0, '2018-11-09 05:19:35', '2018-11-08 21:19:35', '0000-00-00 00:00:00', 'Vancouver', '18:00', '21:00', '0000-00-00 00:00:00', 61, 7.2, NULL, NULL, NULL, '', '', 1541740391, '111', 0, 0, 0),
(72, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-11-15 10:30', 1, 0, '[2,3]', 16, 20, 3, 60, 2, 0, '2018-11-13 18:55:20', '2018-11-13 10:55:20', '0000-00-00 00:00:00', 'Vancouver', '10:30', '13:30', '0000-00-00 00:00:00', 56, 6, NULL, NULL, NULL, '', 'test', 1542134925, '23', 1, 3, 0),
(73, 1, 'Adrian Leung', '6042838800', '938 W Broadway, Vancouver, BC V5Z 1K7, Canada', '2018-11-21 12:00', 2, 1, '[3]', 18, 24, 3, 72, 3, 0, '2018-11-19 10:15:53', '2018-11-19 02:15:53', '0000-00-00 00:00:00', 'Vancouver', '12:00', '15:00', '0000-00-00 00:00:00', 61, 7.2, NULL, NULL, NULL, '', '', 1542622184, '', 1, 3.6, 0),
(74, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-11-20 10:00', 1, 0, NULL, 16, 20, 2, 40, 2, 0, '2018-11-19 17:54:28', '2018-11-19 09:54:28', '0000-00-00 00:00:00', 'Vancouver', '10:00', '12:00', '0000-00-00 00:00:00', 56, 4, NULL, NULL, NULL, '', '', 1542650055, '23', 1, 2.2, 0),
(75, 3, 'Singed Dev', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-11-22 10:00', 1, 0, NULL, 16, 20, 4, 80, 3, 1, '2018-11-20 21:14:57', '2018-11-20 13:14:57', '0000-00-00 00:00:00', 'Vancouver', '10:00', '14:00', '0000-00-00 00:00:00', 56, 8, NULL, NULL, NULL, '', NULL, 1542650149, '234', 1, 4.4, 0),
(76, 1, 'Singed Dev', '6047195215', '2382 Kingsway, Vancouver, BC V5R 5G9, Canada', '2018-11-24 13:30', 1, 0, NULL, 16, 20, 2, 40, 3, 1, '2018-11-20 21:19:33', '2018-11-20 13:19:33', '0000-00-00 00:00:00', 'Vancouver', '13:30', '15:30', '0000-00-00 00:00:00', 56, 4, NULL, NULL, NULL, '', '', 1542748740, '23', 0, 2.2, 0),
(77, 1, 'Singed Dev', '6047195215', '23 W Broadway, Vancouver, BC V5Y 1P1, Canada', '2018-11-23 12:30', 1, 0, NULL, 16, 20, 2, 40, 3, 1, '2018-11-20 21:33:17', '2018-11-20 13:33:17', '0000-00-00 00:00:00', 'Vancouver', '12:30', '14:30', '0000-00-00 00:00:00', 56, 4, NULL, NULL, NULL, '', '', 1542748799, '23', 0, 2.2, 13.9);

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Hello World', 'Hang the jib grog grog blossom grapple dance the hempen jig gangway pressgang bilge rat to go on account lugger. Nelsons folly gabion line draught scallywag fire ship gaff fluke fathom case shot. Sea Legs bilge rat sloop matey gabion long clothes run a shot across the bow Gold Road cog league.', '<p>Hello World. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', 'pages/page1.jpg', 'hello-world', 'Yar Meta Description', 'Keyword1, Keyword2', 'ACTIVE', '2018-03-14 18:30:18', '2018-03-14 18:30:18');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_number` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cleaner_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_number`, `order_id`, `amount`, `created_at`, `updated_at`, `cleaner_id`) VALUES
(4, 'ch_1CZj0vKfApmIYsskA0yrH9sk', 3, 90, '2018-06-05 10:32:10', '2018-06-05 10:32:10', 0),
(5, 'ch_1CZuq9KfApmIYsskb5pPZjPS', 5, 120, '2018-06-05 23:09:50', '2018-06-05 23:09:50', 0),
(6, 'ch_1Ca7gMKfApmIYsskTfdhfYEM', 8, 120, '2018-06-06 12:52:35', '2018-06-06 12:52:35', 0),
(7, 'ch_1CaUbMKfApmIYsskXNqQMIby', 13, 44, '2018-06-07 13:20:57', '2018-06-07 13:20:57', 0),
(8, 'ch_1CaX6qKfApmIYsskmVQpwSOs', 14, 44, '2018-06-07 16:01:37', '2018-06-07 16:01:37', 0),
(9, 'ch_1CasOFAAkSwU431q8V8REQ5K', 1, 66, '2018-06-08 14:45:00', '2018-06-08 14:45:00', 0),
(10, 'ch_1Cat97AAkSwU431qQ6nDvNTM', 2, 44, '2018-06-08 15:33:26', '2018-06-08 15:33:26', 0),
(11, 'ch_1CatXfAAkSwU431qoSpF5Wf2', 3, 60, '2018-06-08 15:58:47', '2018-06-08 15:58:47', 0),
(12, 'ch_1CbBgnAAkSwU431qoOhkKPBW', 4, 110, '2018-06-09 11:21:26', '2018-06-09 11:21:26', 0),
(13, 'ch_1CbkVdAAkSwU431qqdYEAEI5', 7, 77, '2018-06-11 00:32:14', '2018-06-11 00:32:14', 0),
(14, 'ch_1Cbyp9AAkSwU431q0F4YH4SC', 8, 77, '2018-06-11 15:49:19', '2018-06-11 15:49:19', 0),
(15, 'ch_1CduVMAAkSwU431q9uvuZRwM', 5, 66, '2018-06-16 23:36:53', '2018-06-16 23:36:53', 0),
(16, 'ch_1CeqY8AAkSwU431qKSIFnBXZ', 15, 60, '2018-06-19 13:35:37', '2018-06-19 13:35:37', 0),
(17, 'ch_1Cfs7iAAkSwU431qU1VSwVtM', 17, 77, '2018-06-22 09:28:35', '2018-06-22 09:28:35', 0),
(18, 'ch_1Ci7gkAAkSwU431qS1dHhwzZ', 22, 44, '2018-06-28 14:30:03', '2018-06-28 14:30:03', 0),
(19, 'ch_1CisoZAAkSwU431qzWws8iaV', 21, 66, '2018-06-30 16:49:16', '2018-06-30 16:49:16', 0),
(20, 'ch_1CoyEoAAkSwU431qiKpAiBqm', 12, 99, '2018-07-17 11:49:31', '2018-07-17 11:49:31', 0),
(21, 'ch_1CpgzcAAkSwU431qNJc36Lro', 24, 53, '2018-07-19 11:36:48', '2018-07-19 11:36:48', 0),
(22, 'ch_1CppoEAAkSwU431qBpJaOLu8', 10, 77, '2018-07-19 21:01:38', '2018-07-19 21:01:38', 0),
(23, 'ch_1CqwmkAAkSwU431qcsFQBuAL', 30, 44, '2018-07-22 22:40:43', '2018-07-22 22:40:43', 0),
(24, 'ch_1CrftCAAkSwU431qy0IKKJ7R', 33, 66, '2018-07-24 22:50:23', '2018-07-24 22:50:23', 0),
(25, 'ch_1CuDHSAAkSwU431qcAdgD3a2', 36, 55, '2018-07-31 22:53:55', '2018-07-31 22:53:55', 0),
(26, 'ch_1DTkWzAAkSwU431qMJLbiwW1', 70, 90, '2018-11-06 22:28:50', '2018-11-06 22:28:50', 0),
(27, 'ch_1DUSP4AAkSwU431qkHh6Lphi', 71, 79.2, '2018-11-08 21:19:35', '2018-11-08 21:19:35', 0),
(28, 'ch_1DY9nIAAkSwU431qAsy5HtmS', 73, 79.2, '2018-11-19 02:15:53', '2018-11-19 02:15:53', 0),
(29, 'ch_1DYH03AAkSwU431qP7hB40sc', 75, 92.4, '2018-11-19 09:57:32', '2018-11-19 09:57:32', 0),
(30, 'ch_1DYgYeAAkSwU431qChtT74zF', 75, 27.7, '2018-11-20 13:14:57', '2018-11-20 13:14:57', 16),
(31, 'ch_1DYgcnAAkSwU431q7G28UihU', 76, 46.2, '2018-11-20 13:19:14', '2018-11-20 13:19:14', NULL),
(32, 'ch_1DYgdjAAkSwU431qaqFpOsjO', 77, 46.2, '2018-11-20 13:20:12', '2018-11-20 13:20:12', NULL),
(33, 'ch_1DYgeGAAkSwU431q2YdfI3R2', 77, 13.9, '2018-11-20 13:20:45', '2018-11-20 13:20:45', 16);

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(2, 'browse_database', NULL, '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(3, 'browse_media', NULL, '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(4, 'browse_compass', NULL, '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(5, 'browse_menus', 'menus', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(6, 'read_menus', 'menus', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(7, 'edit_menus', 'menus', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(8, 'add_menus', 'menus', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(9, 'delete_menus', 'menus', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(10, 'browse_pages', 'pages', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(11, 'read_pages', 'pages', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(12, 'edit_pages', 'pages', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(13, 'add_pages', 'pages', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(14, 'delete_pages', 'pages', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(15, 'browse_roles', 'roles', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(16, 'read_roles', 'roles', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(17, 'edit_roles', 'roles', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(18, 'add_roles', 'roles', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(19, 'delete_roles', 'roles', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(20, 'browse_users', 'users', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(21, 'read_users', 'users', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(22, 'edit_users', 'users', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(23, 'add_users', 'users', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(24, 'delete_users', 'users', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(25, 'browse_posts', 'posts', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(26, 'read_posts', 'posts', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(27, 'edit_posts', 'posts', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(28, 'add_posts', 'posts', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(29, 'delete_posts', 'posts', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(30, 'browse_categories', 'categories', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(31, 'read_categories', 'categories', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(32, 'edit_categories', 'categories', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(33, 'add_categories', 'categories', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(34, 'delete_categories', 'categories', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(35, 'browse_settings', 'settings', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(36, 'read_settings', 'settings', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(37, 'edit_settings', 'settings', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(38, 'add_settings', 'settings', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(39, 'delete_settings', 'settings', '2018-03-14 18:30:17', '2018-03-14 18:30:17', NULL),
(40, 'browse_hooks', NULL, '2018-03-14 18:30:18', '2018-03-14 18:30:18', NULL),
(41, 'browse_sms_records', 'sms_records', '2018-03-19 21:18:23', '2018-03-19 21:18:23', NULL),
(42, 'read_sms_records', 'sms_records', '2018-03-19 21:18:23', '2018-03-19 21:18:23', NULL),
(43, 'edit_sms_records', 'sms_records', '2018-03-19 21:18:23', '2018-03-19 21:18:23', NULL),
(44, 'add_sms_records', 'sms_records', '2018-03-19 21:18:23', '2018-03-19 21:18:23', NULL),
(45, 'delete_sms_records', 'sms_records', '2018-03-19 21:18:23', '2018-03-19 21:18:23', NULL),
(46, 'browse_files', 'files', '2018-03-26 15:22:40', '2018-03-26 15:22:40', NULL),
(47, 'read_files', 'files', '2018-03-26 15:22:40', '2018-03-26 15:22:40', NULL),
(48, 'edit_files', 'files', '2018-03-26 15:22:40', '2018-03-26 15:22:40', NULL),
(49, 'add_files', 'files', '2018-03-26 15:22:40', '2018-03-26 15:22:40', NULL),
(50, 'delete_files', 'files', '2018-03-26 15:22:40', '2018-03-26 15:22:40', NULL),
(51, 'browse_orders', 'orders', '2018-05-23 11:35:24', '2018-05-23 11:35:24', NULL),
(52, 'read_orders', 'orders', '2018-05-23 11:35:24', '2018-05-23 11:35:24', NULL),
(53, 'edit_orders', 'orders', '2018-05-23 11:35:24', '2018-05-23 11:35:24', NULL),
(54, 'add_orders', 'orders', '2018-05-23 11:35:24', '2018-05-23 11:35:24', NULL),
(55, 'delete_orders', 'orders', '2018-05-23 11:35:25', '2018-05-23 11:35:25', NULL),
(56, 'browse_cleaner', 'cleaner', '2018-05-28 22:56:45', '2018-05-28 22:56:45', NULL),
(57, 'read_cleaner', 'cleaner', '2018-05-28 22:56:45', '2018-05-28 22:56:45', NULL),
(58, 'edit_cleaner', 'cleaner', '2018-05-28 22:56:45', '2018-05-28 22:56:45', NULL),
(59, 'add_cleaner', 'cleaner', '2018-05-28 22:56:46', '2018-05-28 22:56:46', NULL),
(60, 'delete_cleaner', 'cleaner', '2018-05-28 22:56:46', '2018-05-28 22:56:46', NULL),
(61, 'browse_cleaners', 'cleaners', '2018-05-31 10:35:20', '2018-05-31 10:35:20', NULL),
(62, 'read_cleaners', 'cleaners', '2018-05-31 10:35:20', '2018-05-31 10:35:20', NULL),
(63, 'edit_cleaners', 'cleaners', '2018-05-31 10:35:20', '2018-05-31 10:35:20', NULL),
(64, 'add_cleaners', 'cleaners', '2018-05-31 10:35:20', '2018-05-31 10:35:20', NULL),
(65, 'delete_cleaners', 'cleaners', '2018-05-31 10:35:20', '2018-05-31 10:35:20', NULL),
(66, 'browse_cleaner_schedules', 'cleaner_schedules', '2018-05-31 14:15:59', '2018-05-31 14:15:59', NULL),
(67, 'read_cleaner_schedules', 'cleaner_schedules', '2018-05-31 14:15:59', '2018-05-31 14:15:59', NULL),
(68, 'edit_cleaner_schedules', 'cleaner_schedules', '2018-05-31 14:15:59', '2018-05-31 14:15:59', NULL),
(69, 'add_cleaner_schedules', 'cleaner_schedules', '2018-05-31 14:15:59', '2018-05-31 14:15:59', NULL),
(70, 'delete_cleaner_schedules', 'cleaner_schedules', '2018-05-31 14:15:59', '2018-05-31 14:15:59', NULL),
(71, 'browse_service_responses', 'service_responses', '2018-05-31 16:24:08', '2018-05-31 16:24:08', NULL),
(72, 'read_service_responses', 'service_responses', '2018-05-31 16:24:08', '2018-05-31 16:24:08', NULL),
(73, 'edit_service_responses', 'service_responses', '2018-05-31 16:24:08', '2018-05-31 16:24:08', NULL),
(74, 'add_service_responses', 'service_responses', '2018-05-31 16:24:08', '2018-05-31 16:24:08', NULL),
(75, 'delete_service_responses', 'service_responses', '2018-05-31 16:24:08', '2018-05-31 16:24:08', NULL),
(76, 'browse_payments', 'payments', '2018-06-04 15:43:53', '2018-06-04 15:43:53', NULL),
(77, 'read_payments', 'payments', '2018-06-04 15:43:53', '2018-06-04 15:43:53', NULL),
(78, 'edit_payments', 'payments', '2018-06-04 15:43:53', '2018-06-04 15:43:53', NULL),
(79, 'add_payments', 'payments', '2018-06-04 15:43:53', '2018-06-04 15:43:53', NULL),
(80, 'delete_payments', 'payments', '2018-06-04 15:43:53', '2018-06-04 15:43:53', NULL),
(81, 'browse_cleaner_reviews', 'cleaner_reviews', '2018-06-05 09:28:51', '2018-06-05 09:28:51', NULL),
(82, 'read_cleaner_reviews', 'cleaner_reviews', '2018-06-05 09:28:51', '2018-06-05 09:28:51', NULL),
(83, 'edit_cleaner_reviews', 'cleaner_reviews', '2018-06-05 09:28:51', '2018-06-05 09:28:51', NULL),
(84, 'add_cleaner_reviews', 'cleaner_reviews', '2018-06-05 09:28:51', '2018-06-05 09:28:51', NULL),
(85, 'delete_cleaner_reviews', 'cleaner_reviews', '2018-06-05 09:28:51', '2018-06-05 09:28:51', NULL),
(86, 'browse_saved_cleaners', 'saved_cleaners', '2018-07-17 15:55:58', '2018-07-17 15:55:58', NULL),
(87, 'read_saved_cleaners', 'saved_cleaners', '2018-07-17 15:55:58', '2018-07-17 15:55:58', NULL),
(88, 'edit_saved_cleaners', 'saved_cleaners', '2018-07-17 15:55:58', '2018-07-17 15:55:58', NULL),
(89, 'add_saved_cleaners', 'saved_cleaners', '2018-07-17 15:55:58', '2018-07-17 15:55:58', NULL),
(90, 'delete_saved_cleaners', 'saved_cleaners', '2018-07-17 15:55:58', '2018-07-17 15:55:58', NULL),
(91, 'browse_client_reviews', 'client_reviews', '2018-07-17 16:27:17', '2018-07-17 16:27:17', NULL),
(92, 'read_client_reviews', 'client_reviews', '2018-07-17 16:27:17', '2018-07-17 16:27:17', NULL),
(93, 'edit_client_reviews', 'client_reviews', '2018-07-17 16:27:17', '2018-07-17 16:27:17', NULL),
(94, 'add_client_reviews', 'client_reviews', '2018-07-17 16:27:17', '2018-07-17 16:27:17', NULL),
(95, 'delete_client_reviews', 'client_reviews', '2018-07-17 16:27:17', '2018-07-17 16:27:17', NULL),
(96, 'browse_wii_payments', 'wii_payments', '2018-07-22 13:36:00', '2018-07-22 13:36:00', NULL),
(97, 'read_wii_payments', 'wii_payments', '2018-07-22 13:36:00', '2018-07-22 13:36:00', NULL),
(98, 'edit_wii_payments', 'wii_payments', '2018-07-22 13:36:00', '2018-07-22 13:36:00', NULL),
(99, 'add_wii_payments', 'wii_payments', '2018-07-22 13:36:00', '2018-07-22 13:36:00', NULL),
(100, 'delete_wii_payments', 'wii_payments', '2018-07-22 13:36:00', '2018-07-22 13:36:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(20, 3),
(21, 1),
(21, 3),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(41, 1),
(41, 3),
(42, 1),
(42, 3),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(46, 3),
(47, 1),
(47, 3),
(48, 1),
(48, 3),
(49, 1),
(49, 3),
(50, 1),
(50, 3),
(51, 1),
(51, 3),
(52, 1),
(52, 3),
(53, 1),
(53, 3),
(54, 1),
(55, 1),
(56, 1),
(56, 3),
(57, 1),
(57, 3),
(58, 1),
(58, 3),
(59, 1),
(60, 1),
(61, 1),
(61, 3),
(62, 1),
(62, 3),
(63, 1),
(63, 3),
(64, 1),
(65, 1),
(66, 1),
(66, 3),
(67, 1),
(67, 3),
(68, 1),
(68, 3),
(69, 1),
(70, 1),
(71, 1),
(71, 3),
(72, 1),
(72, 3),
(73, 1),
(73, 3),
(74, 1),
(75, 1),
(76, 1),
(76, 3),
(77, 1),
(77, 3),
(78, 1),
(78, 3),
(79, 1),
(80, 1),
(81, 1),
(81, 3),
(82, 1),
(82, 3),
(83, 1),
(83, 3),
(84, 1),
(85, 1),
(86, 1),
(86, 3),
(87, 1),
(87, 3),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(91, 3),
(92, 1),
(92, 3),
(93, 1),
(93, 3),
(94, 1),
(95, 1),
(96, 1),
(96, 3),
(97, 1),
(97, 3),
(98, 1),
(98, 3),
(99, 1),
(99, 3),
(100, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'Lorem Ipsum Post1', NULL, 'This is the excerpt for the Lorem Ipsum Post', '<p>This is the body of the lorem ipsum post</p>', 'posts/post1.jpg', 'lorem-ipsum-post1', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 18:30:18', '2018-03-27 10:58:22'),
(2, 1, NULL, 'My Sample Post', NULL, 'This is the excerpt for the sample Post', '<p>This is the body for the sample post, which includes the body.</p>\n                <h2>We can use all kinds of format!</h2>\n                <p>And include a bunch of other stuff.</p>', 'posts/post2.jpg', 'my-sample-post', 'Meta Description for sample post', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(3, 0, NULL, 'Latest Post', NULL, 'This is the excerpt for the latest post', '<p>This is the body for the latest post</p>', 'posts/post3.jpg', 'latest-post', 'This is the meta description', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(4, 0, NULL, 'Yarr Post', NULL, 'Reef sails nipperkin bring a spring upon her cable coffer jury mast spike marooned Pieces of Eight poop deck pillage. Clipper driver coxswain galleon hempen halter come about pressgang gangplank boatswain swing the lead. Nipperkin yard skysail swab lanyard Blimey bilge water ho quarter Buccaneer.', '<p>Swab deadlights Buccaneer fire ship square-rigged dance the hempen jig weigh anchor cackle fruit grog furl. Crack Jennys tea cup chase guns pressgang hearties spirits hogshead Gold Road six pounders fathom measured fer yer chains. Main sheet provost come about trysail barkadeer crimp scuttle mizzenmast brig plunder.</p>\n<p>Mizzen league keelhaul galleon tender cog chase Barbary Coast doubloon crack Jennys tea cup. Blow the man down lugsail fire ship pinnace cackle fruit line warp Admiral of the Black strike colors doubloon. Tackle Jack Ketch come about crimp rum draft scuppers run a shot across the bow haul wind maroon.</p>\n<p>Interloper heave down list driver pressgang holystone scuppers tackle scallywag bilged on her anchor. Jack Tar interloper draught grapple mizzenmast hulk knave cable transom hogshead. Gaff pillage to go on account grog aft chase guns piracy yardarm knave clap of thunder.</p>', 'posts/post4.jpg', 'yarr-post', 'this be a meta descript', 'keyword1, keyword2, keyword3', 'PUBLISHED', 0, '2018-03-14 18:30:18', '2018-03-14 18:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-03-14 18:30:17', '2018-03-14 18:30:17'),
(2, 'user', 'Normal User', '2018-03-14 18:30:17', '2018-03-14 18:30:17'),
(3, 'ForeAdmin', 'ForeAdmin', '2018-07-27 11:14:14', '2018-07-27 11:14:14');

-- --------------------------------------------------------

--
-- Table structure for table `saved_cleaners`
--

CREATE TABLE `saved_cleaners` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `saved_cleaners`
--

INSERT INTO `saved_cleaners` (`id`, `user_id`, `cleaner_id`, `created_at`, `updated_at`) VALUES
(100, 57, 16, '2018-07-24 23:01:23', '2018-07-24 23:01:23'),
(127, 56, 17, '2018-09-15 12:57:54', '2018-09-15 12:57:54'),
(129, 56, 16, '2018-10-10 19:07:38', '2018-10-10 19:07:38');

-- --------------------------------------------------------

--
-- Table structure for table `service_responses`
--

CREATE TABLE `service_responses` (
  `id` int(10) UNSIGNED NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `accept_status` int(11) NOT NULL DEFAULT '0',
  `decline_reason` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `service_responses`
--

INSERT INTO `service_responses` (`id`, `cleaner_id`, `order_id`, `created_at`, `updated_at`, `accept_status`, `decline_reason`) VALUES
(1, 16, 1, '2018-06-08 21:47:15', '2018-06-08 14:47:15', 1, NULL),
(2, 16, 2, '2018-06-08 22:33:49', '2018-06-08 15:33:49', 1, NULL),
(3, 16, 4, '2018-06-09 18:20:55', '2018-06-09 11:20:55', 1, NULL),
(4, 16, 5, '2018-06-11 22:48:49', '2018-06-11 15:48:49', 1, NULL),
(5, 16, 6, '2018-06-11 07:25:27', '2018-06-11 00:25:27', 1, NULL),
(6, 16, 7, '2018-06-11 07:33:14', '2018-06-11 00:33:14', 1, NULL),
(7, 16, 8, '2018-06-11 22:49:29', '2018-06-11 15:49:29', 1, NULL),
(8, 16, 9, '2018-06-22 16:26:36', '2018-06-22 09:26:36', 1, NULL),
(9, 16, 10, '2018-08-01 06:35:19', '2018-07-31 23:35:19', 1, NULL),
(10, 16, 11, '2018-06-19 10:47:07', '2018-06-19 10:47:07', 0, NULL),
(11, 16, 12, '2018-07-21 06:30:59', '2018-07-20 23:30:59', 1, NULL),
(12, 16, 13, '2018-06-19 11:44:49', '2018-06-19 11:44:49', 0, NULL),
(13, 16, 14, '2018-06-19 11:46:42', '2018-06-19 11:46:42', 0, NULL),
(14, 16, 16, '2018-06-19 13:36:16', '2018-06-19 13:36:16', 0, NULL),
(15, 16, 17, '2018-06-22 16:28:58', '2018-06-22 09:28:58', 1, NULL),
(16, 16, 18, '2018-06-19 18:17:23', '2018-06-19 18:17:23', 0, NULL),
(17, 16, 19, '2018-06-20 13:33:35', '2018-06-20 13:33:35', 0, NULL),
(18, 16, 20, '2018-06-28 21:16:06', '2018-06-28 14:16:06', 1, NULL),
(19, 16, 21, '2018-06-30 23:52:13', '2018-06-30 16:52:13', 1, NULL),
(20, 16, 22, '2018-06-28 21:30:13', '2018-06-28 14:30:13', 1, NULL),
(21, 17, 22, '2018-06-28 21:29:20', '2018-06-28 14:29:20', 1, NULL),
(22, 17, 23, '2018-06-30 16:47:52', '2018-06-30 16:47:52', 0, NULL),
(23, 16, 24, '2018-07-19 11:33:48', '2018-07-19 11:33:48', 0, NULL),
(24, 17, 24, '2018-07-19 18:37:37', '2018-07-19 11:37:37', 1, NULL),
(25, 16, 25, '2018-07-19 12:31:47', '2018-07-19 12:31:47', 0, NULL),
(26, 17, 25, '2018-07-21 04:28:34', '2018-07-20 21:28:34', 1, NULL),
(27, 16, 26, '2018-07-19 13:46:33', '2018-07-19 13:46:33', 0, NULL),
(28, 16, 27, '2018-07-19 21:08:13', '2018-07-19 21:08:13', 0, NULL),
(29, 17, 27, '2018-07-19 21:08:13', '2018-07-19 21:08:13', 0, NULL),
(30, 16, 28, '2018-07-22 21:18:50', '2018-07-22 21:18:50', 0, NULL),
(31, 17, 28, '2018-07-22 21:18:50', '2018-07-22 21:18:50', 0, NULL),
(32, 16, 29, '2018-07-22 21:30:03', '2018-07-22 21:30:03', 0, NULL),
(33, 17, 29, '2018-07-22 21:30:04', '2018-07-22 21:30:04', 0, NULL),
(34, 17, 30, '2018-07-23 05:41:22', '2018-07-22 22:41:22', 1, NULL),
(35, 17, 31, '2018-07-22 22:49:44', '2018-07-22 22:49:44', 0, NULL),
(36, 16, 31, '2018-07-22 22:49:45', '2018-07-22 22:49:45', 0, NULL),
(37, 17, 32, '2018-07-24 20:57:17', '2018-07-24 20:57:17', 0, NULL),
(38, 16, 33, '2018-07-25 05:52:31', '2018-07-24 22:52:31', 1, NULL),
(39, 17, 34, '2018-07-24 22:42:22', '2018-07-24 22:42:22', 0, NULL),
(40, 17, 35, '2018-07-25 00:38:04', '2018-07-25 00:38:04', 0, NULL),
(41, 16, 35, '2018-07-25 00:38:05', '2018-07-25 00:38:05', 0, NULL),
(42, 18, 36, '2018-08-01 06:07:07', '2018-07-31 23:07:07', 1, NULL),
(43, 17, 37, '2018-07-31 22:55:07', '2018-07-31 22:55:07', 0, NULL),
(44, 18, 38, '2018-08-01 05:56:12', '2018-07-31 22:56:12', 1, NULL),
(45, 17, 38, '2018-07-31 22:55:50', '2018-07-31 22:55:50', 0, NULL),
(46, 17, 39, '2018-08-07 22:43:27', '2018-08-07 22:43:27', 0, NULL),
(47, 17, 40, '2018-08-07 22:54:42', '2018-08-07 22:54:42', 0, NULL),
(48, 17, 41, '2018-08-08 22:32:55', '2018-08-08 22:32:55', 0, NULL),
(49, 16, 42, '2018-09-07 17:06:30', '2018-09-07 17:06:30', 0, NULL),
(50, 18, 43, '2018-09-08 00:10:55', '2018-09-07 17:10:55', 1, NULL),
(51, 16, 44, '2018-09-14 00:55:55', '2018-09-14 00:55:55', 0, NULL),
(52, 16, 45, '2018-09-14 13:38:47', '2018-09-14 13:38:47', 0, NULL),
(53, 17, 45, '2018-09-14 13:38:47', '2018-09-14 13:38:47', 0, NULL),
(54, 16, 46, '2018-09-25 11:05:28', '2018-09-25 11:05:28', 0, NULL),
(55, 18, 46, '2018-09-25 11:05:29', '2018-09-25 11:05:29', 0, NULL),
(56, 17, 46, '2018-09-25 11:05:29', '2018-09-25 11:05:29', 0, NULL),
(57, 17, 47, '2018-09-29 22:13:41', '2018-09-29 22:13:41', 0, NULL),
(58, 23, 48, '2018-10-10 17:51:47', '2018-10-10 17:51:47', 0, NULL),
(59, 16, 48, '2018-10-10 17:51:47', '2018-10-10 17:51:47', 0, NULL),
(60, 17, 49, '2018-10-10 18:33:29', '2018-10-10 18:33:29', 0, NULL),
(61, 17, 54, '2018-10-17 17:32:03', '2018-10-17 17:32:03', 0, NULL),
(62, 17, 55, '2018-10-18 16:17:13', '2018-10-18 16:17:13', 0, NULL),
(63, 18, 56, '2018-10-18 21:58:01', '2018-10-18 21:58:01', 0, NULL),
(64, 17, 57, '2018-10-19 23:24:17', '2018-10-19 23:24:17', 0, NULL),
(65, 18, 59, '2018-10-23 00:55:18', '2018-10-23 00:55:18', 0, NULL),
(66, 23, 59, '2018-10-23 00:55:19', '2018-10-23 00:55:19', 0, NULL),
(67, 16, 60, '2018-10-25 19:55:31', '2018-10-25 19:55:31', 0, NULL),
(68, 23, 61, '2018-10-30 09:30:38', '2018-10-30 09:30:38', 0, NULL),
(69, 17, 61, '2018-10-30 09:30:38', '2018-10-30 09:30:38', 0, NULL),
(70, 23, 62, '2018-10-30 09:33:11', '2018-10-30 09:33:11', 0, NULL),
(71, 23, 63, '2018-10-30 10:37:33', '2018-10-30 10:37:33', 0, NULL),
(72, 23, 64, '2018-10-30 10:39:26', '2018-10-30 10:39:26', 0, NULL),
(73, 18, 65, '2018-10-30 13:05:41', '2018-10-30 13:05:41', 0, NULL),
(74, 23, 67, '2018-11-05 12:36:03', '2018-11-05 12:36:03', 0, NULL),
(75, 23, 68, '2018-11-05 12:36:26', '2018-11-05 12:36:26', 0, NULL),
(76, 16, 69, '2018-11-05 21:53:25', '2018-11-05 13:53:25', 1, NULL),
(77, 18, 71, '2018-11-09 05:14:40', '2018-11-08 21:14:40', 1, NULL),
(78, 23, 72, '2018-11-13 10:48:45', '2018-11-13 10:48:45', 0, NULL),
(79, 16, 72, '2018-11-13 18:55:20', '2018-11-13 10:55:20', 1, NULL),
(80, 18, 73, '2018-11-19 10:11:21', '2018-11-19 02:11:21', 1, NULL),
(81, 16, 74, '2018-11-19 17:54:28', '2018-11-19 09:54:28', 1, NULL),
(82, 16, 75, '2018-11-19 17:56:07', '2018-11-19 09:56:07', 1, NULL),
(83, 16, 76, '2018-11-20 21:19:06', '2018-11-20 13:19:06', 1, NULL),
(84, 16, 77, '2018-11-20 21:20:03', '2018-11-20 13:20:03', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `sms_records`
--

CREATE TABLE `sms_records` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `from` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `to` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `code` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sms_records`
--

INSERT INTO `sms_records` (`id`, `created_at`, `updated_at`, `status`, `from`, `to`, `body`, `deleted_at`, `code`) VALUES
(1, '2018-06-08 15:32:49', '2018-06-08 15:32:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(2, '2018-06-08 15:33:07', '2018-06-08 15:33:07', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(3, '2018-06-08 15:33:26', '2018-06-08 15:33:26', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(4, '2018-06-08 15:33:39', '2018-06-08 15:33:39', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(5, '2018-06-08 15:33:50', '2018-06-08 15:33:50', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(6, '2018-06-08 15:58:32', '2018-06-08 15:58:32', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 你有新的vip订单，请注意查收', NULL, NULL),
(7, '2018-06-08 15:58:48', '2018-06-08 15:58:48', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(8, '2018-06-08 16:00:29', '2018-06-08 16:00:29', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(9, '2018-06-08 16:00:32', '2018-06-08 16:00:32', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(10, '2018-06-09 11:18:45', '2018-06-09 11:18:45', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(11, '2018-06-09 11:20:55', '2018-06-09 11:20:55', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(12, '2018-06-09 11:21:26', '2018-06-09 11:21:26', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(13, '2018-06-09 11:22:10', '2018-06-09 11:22:10', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(14, '2018-06-09 11:22:34', '2018-06-09 11:22:34', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 有修改时间订单被拒绝，并转交给VIP服务！', NULL, NULL),
(15, '2018-06-09 11:22:35', '2018-06-09 11:22:35', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 有修改时间订单被拒绝，并转交给VIP服务！', NULL, NULL),
(16, '2018-06-09 13:58:01', '2018-06-09 13:58:01', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(17, '2018-06-11 00:23:12', '2018-06-11 00:23:12', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(18, '2018-06-11 00:25:22', '2018-06-11 00:25:22', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(19, '2018-06-11 00:25:28', '2018-06-11 00:25:28', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(20, '2018-06-11 00:27:06', '2018-06-11 00:27:06', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(21, '2018-06-11 00:32:14', '2018-06-11 00:32:14', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(22, '2018-06-11 00:32:52', '2018-06-11 00:32:52', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(23, '2018-06-11 00:33:15', '2018-06-11 00:33:15', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(24, '2018-06-11 15:48:13', '2018-06-11 15:48:13', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(25, '2018-06-11 15:48:49', '2018-06-11 15:48:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(26, '2018-06-11 15:49:02', '2018-06-11 15:49:02', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(27, '2018-06-11 15:49:20', '2018-06-11 15:49:20', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(28, '2018-06-11 15:49:26', '2018-06-11 15:49:26', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(29, '2018-06-11 15:49:30', '2018-06-11 15:49:30', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(30, '2018-06-16 23:34:30', '2018-06-16 23:34:30', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(31, '2018-06-16 23:35:07', '2018-06-16 23:35:07', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(32, '2018-06-16 23:36:53', '2018-06-16 23:36:53', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(33, '2018-06-19 10:47:08', '2018-06-19 10:47:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(34, '2018-06-19 10:47:44', '2018-06-19 10:47:44', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(35, '2018-06-19 11:44:50', '2018-06-19 11:44:50', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(36, '2018-06-19 11:46:43', '2018-06-19 11:46:43', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(37, '2018-06-19 11:49:37', '2018-06-19 11:49:37', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(38, '2018-06-19 13:35:25', '2018-06-19 13:35:25', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 你有新的vip订单，请注意查收', NULL, NULL),
(39, '2018-06-19 13:35:39', '2018-06-19 13:35:39', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(40, '2018-06-19 13:36:16', '2018-06-19 13:36:16', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(41, '2018-06-19 14:02:08', '2018-06-19 14:02:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(42, '2018-06-19 18:17:24', '2018-06-19 18:17:24', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(43, '2018-06-19 18:19:54', '2018-06-19 18:19:54', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(44, '2018-06-20 13:33:36', '2018-06-20 13:33:36', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(45, '2018-06-20 13:35:17', '2018-06-20 13:35:17', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(46, '2018-06-22 09:26:37', '2018-06-22 09:26:37', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(47, '2018-06-22 09:27:18', '2018-06-22 09:27:18', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(48, '2018-06-22 09:27:50', '2018-06-22 09:27:50', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(49, '2018-06-22 09:28:35', '2018-06-22 09:28:35', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(50, '2018-06-22 09:28:52', '2018-06-22 09:28:52', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(51, '2018-06-22 09:28:59', '2018-06-22 09:28:59', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(52, '2018-06-24 23:38:03', '2018-06-24 23:38:03', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(53, '2018-06-28 01:30:08', '2018-06-28 01:30:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(54, '2018-06-28 14:16:06', '2018-06-28 14:16:06', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(55, '2018-06-28 14:16:13', '2018-06-28 14:16:13', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(56, '2018-06-28 14:28:36', '2018-06-28 14:28:36', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(57, '2018-06-28 14:28:36', '2018-06-28 14:28:36', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(58, '2018-06-28 14:29:07', '2018-06-28 14:29:07', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(59, '2018-06-28 14:30:04', '2018-06-28 14:30:04', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(60, '2018-06-28 14:30:11', '2018-06-28 14:30:11', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(61, '2018-06-28 14:30:14', '2018-06-28 14:30:14', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(62, '2018-06-30 16:47:52', '2018-06-30 16:47:52', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(63, '2018-06-30 16:49:16', '2018-06-30 16:49:16', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(64, '2018-06-30 16:51:39', '2018-06-30 16:51:39', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(65, '2018-06-30 16:52:14', '2018-06-30 16:52:14', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(66, '2018-07-17 11:49:32', '2018-07-17 11:49:32', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(67, '2018-07-19 11:33:49', '2018-07-19 11:33:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(68, '2018-07-19 11:33:49', '2018-07-19 11:33:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(69, '2018-07-19 11:34:42', '2018-07-19 11:34:42', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(70, '2018-07-19 11:36:49', '2018-07-19 11:36:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(71, '2018-07-19 11:37:00', '2018-07-19 11:37:00', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(72, '2018-07-19 11:37:37', '2018-07-19 11:37:37', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(73, '2018-07-19 12:31:48', '2018-07-19 12:31:48', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(74, '2018-07-19 12:31:48', '2018-07-19 12:31:48', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(75, '2018-07-19 13:46:34', '2018-07-19 13:46:34', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(76, '2018-07-19 14:50:15', '2018-07-19 14:50:15', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(77, '2018-07-19 14:50:37', '2018-07-19 14:50:37', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(78, '2018-07-19 14:53:37', '2018-07-19 14:53:37', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 修改时间订单被重新接受，请注意查看！', NULL, NULL),
(79, '2018-07-19 14:54:08', '2018-07-19 14:54:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(80, '2018-07-19 14:54:22', '2018-07-19 14:54:22', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 有修改时间订单被拒绝，并转交给VIP服务！', NULL, NULL),
(81, '2018-07-19 14:54:22', '2018-07-19 14:54:22', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 有修改时间订单被拒绝，并转交给VIP服务！', NULL, NULL),
(82, '2018-07-19 21:01:39', '2018-07-19 21:01:39', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(83, '2018-07-19 21:02:04', '2018-07-19 21:02:04', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(84, '2018-07-19 21:08:13', '2018-07-19 21:08:13', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(85, '2018-07-19 21:08:14', '2018-07-19 21:08:14', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(86, '2018-07-20 21:28:35', '2018-07-20 21:28:35', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(87, '2018-07-20 23:30:57', '2018-07-20 23:30:57', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(88, '2018-07-20 23:30:59', '2018-07-20 23:30:59', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(89, '2018-07-22 21:18:50', '2018-07-22 21:18:50', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(90, '2018-07-22 21:18:50', '2018-07-22 21:18:50', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(91, '2018-07-22 21:30:04', '2018-07-22 21:30:04', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(92, '2018-07-22 21:30:04', '2018-07-22 21:30:04', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(93, '2018-07-22 21:42:39', '2018-07-22 21:42:39', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(94, '2018-07-22 21:42:48', '2018-07-22 21:42:48', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(95, '2018-07-22 21:42:53', '2018-07-22 21:42:53', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(96, '2018-07-22 21:42:57', '2018-07-22 21:42:57', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(97, '2018-07-22 21:43:00', '2018-07-22 21:43:00', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单已经取消！', NULL, NULL),
(98, '2018-07-22 21:58:01', '2018-07-22 21:58:01', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(99, '2018-07-22 22:06:19', '2018-07-22 22:06:19', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(100, '2018-07-22 22:08:14', '2018-07-22 22:08:14', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(101, '2018-07-22 22:11:07', '2018-07-22 22:11:07', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(102, '2018-07-22 22:39:56', '2018-07-22 22:39:56', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(103, '2018-07-22 22:40:28', '2018-07-22 22:40:28', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(104, '2018-07-22 22:40:43', '2018-07-22 22:40:43', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(105, '2018-07-22 22:40:54', '2018-07-22 22:40:54', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(106, '2018-07-22 22:41:08', '2018-07-22 22:41:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 修改时间订单被重新接受，请注意查看！', NULL, NULL),
(107, '2018-07-22 22:41:17', '2018-07-22 22:41:17', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(108, '2018-07-22 22:41:22', '2018-07-22 22:41:22', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(109, '2018-07-22 22:49:45', '2018-07-22 22:49:45', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(110, '2018-07-22 22:49:46', '2018-07-22 22:49:46', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(111, '2018-07-24 20:57:17', '2018-07-24 20:57:17', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(112, '2018-07-24 22:41:16', '2018-07-24 22:41:16', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(113, '2018-07-24 22:42:21', '2018-07-24 22:42:21', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(114, '2018-07-24 22:42:22', '2018-07-24 22:42:22', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(115, '2018-07-24 22:50:23', '2018-07-24 22:50:23', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(116, '2018-07-24 22:50:52', '2018-07-24 22:50:52', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(117, '2018-07-24 22:51:04', '2018-07-24 22:51:04', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 修改时间订单被重新接受，请注意查看！', NULL, NULL),
(118, '2018-07-24 22:51:48', '2018-07-24 22:51:48', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单开始服务！', NULL, NULL),
(119, '2018-07-24 22:52:32', '2018-07-24 22:52:32', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单已经完成服务！', NULL, NULL),
(120, '2018-07-25 00:38:05', '2018-07-25 00:38:05', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(121, '2018-07-25 00:38:06', '2018-07-25 00:38:06', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(122, '2018-07-27 11:39:46', '2018-07-27 11:39:46', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(123, '2018-07-27 11:44:00', '2018-07-27 11:44:00', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - 您的订单时间改变，请及时查看确认！', NULL, NULL),
(124, '2018-07-31 22:51:37', '2018-07-31 22:51:37', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 你有新的订单，请注意查收', NULL, NULL),
(125, '2018-07-31 22:52:37', '2018-07-31 22:52:37', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您选择的Cleaner已经接受这个订单,请您尽快确认！详情请看订单细节！', NULL, NULL),
(126, '2018-07-31 22:53:55', '2018-07-31 22:53:55', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - 您有订单已支付，请注意安排时间！', NULL, NULL),
(127, '2018-07-31 22:55:08', '2018-07-31 22:55:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(128, '2018-07-31 22:55:50', '2018-07-31 22:55:50', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(129, '2018-07-31 22:55:50', '2018-07-31 22:55:50', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(130, '2018-07-31 22:56:12', '2018-07-31 22:56:12', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(131, '2018-07-31 22:56:47', '2018-07-31 22:56:47', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your ordered service has started!', NULL, NULL),
(132, '2018-07-31 23:07:08', '2018-07-31 23:07:08', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your ordered service is finished!', NULL, NULL),
(133, '2018-07-31 23:09:49', '2018-07-31 23:09:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Rescheduled order is accepted, please check!', NULL, NULL),
(134, '2018-07-31 23:35:20', '2018-07-31 23:35:20', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your ordered service has started!', NULL, NULL),
(135, '2018-08-07 22:43:27', '2018-08-07 22:43:27', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(136, '2018-08-07 22:54:43', '2018-08-07 22:54:43', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(137, '2018-08-08 22:32:56', '2018-08-08 22:32:56', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(138, '2018-09-07 17:06:31', '2018-09-07 17:06:31', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(139, '2018-09-07 17:10:16', '2018-09-07 17:10:16', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(140, '2018-09-07 17:10:55', '2018-09-07 17:10:55', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(141, '2018-09-14 00:55:56', '2018-09-14 00:55:56', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(142, '2018-09-14 12:15:16', '2018-09-14 12:15:16', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your order is cancelled!', NULL, NULL),
(143, '2018-09-14 13:38:47', '2018-09-14 13:38:47', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(145, '2018-09-25 11:05:29', '2018-09-25 11:05:29', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(146, '2018-09-25 11:05:29', '2018-09-25 11:05:29', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(147, '2018-09-25 11:05:29', '2018-09-25 11:05:29', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(148, '2018-09-26 12:46:46', '2018-09-26 12:46:46', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your new password is “8U6Y5swR”。', NULL, NULL),
(149, '2018-09-29 22:13:42', '2018-09-29 22:13:42', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(150, '2018-10-10 17:51:47', '2018-10-10 17:51:47', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(151, '2018-10-10 17:51:48', '2018-10-10 17:51:48', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(152, '2018-10-10 18:33:29', '2018-10-10 18:33:29', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(153, '2018-10-16 17:37:10', '2018-10-16 17:37:10', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(154, '2018-10-16 17:55:37', '2018-10-16 17:55:37', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(155, '2018-10-17 00:22:17', '2018-10-17 00:22:17', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(156, '2018-10-17 17:18:24', '2018-10-17 17:18:24', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(157, '2018-10-17 17:32:04', '2018-10-17 17:32:04', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(158, '2018-10-18 16:17:14', '2018-10-18 16:17:14', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(159, '2018-10-18 21:58:02', '2018-10-18 21:58:02', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(160, '2018-10-19 23:24:18', '2018-10-19 23:24:18', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(161, '2018-10-19 23:24:31', '2018-10-19 23:24:31', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your order is cancelled!', NULL, NULL),
(162, '2018-10-21 00:43:33', '2018-10-21 00:43:33', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(163, '2018-10-22 14:37:24', '2018-10-22 14:37:24', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your new password is “VWNMxZQZ”。', NULL, NULL),
(164, '2018-10-22 14:38:27', '2018-10-22 14:38:27', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your new password is “A6oMjyti”。', NULL, NULL),
(165, '2018-10-23 00:55:19', '2018-10-23 00:55:19', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(166, '2018-10-23 00:55:20', '2018-10-23 00:55:20', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(167, '2018-10-23 01:15:18', '2018-10-23 01:15:18', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your order is cancelled!', NULL, NULL),
(168, '2018-10-24 18:37:54', '2018-10-24 18:37:54', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your order is cancelled!', NULL, NULL),
(169, '2018-10-25 19:55:31', '2018-10-25 19:55:31', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(170, '2018-10-30 09:30:38', '2018-10-30 09:30:38', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(171, '2018-10-30 09:30:39', '2018-10-30 09:30:39', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(172, '2018-10-30 09:33:12', '2018-10-30 09:33:12', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(173, '2018-10-30 10:37:33', '2018-10-30 10:37:33', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(174, '2018-10-30 10:39:26', '2018-10-30 10:39:26', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(175, '2018-10-30 13:05:42', '2018-10-30 13:05:42', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(176, '2018-10-31 13:47:44', '2018-10-31 13:47:44', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(177, '2018-11-05 12:36:03', '2018-11-05 12:36:03', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(178, '2018-11-05 12:36:26', '2018-11-05 12:36:26', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(179, '2018-11-05 12:39:24', '2018-11-05 12:39:24', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(180, '2018-11-05 13:53:26', '2018-11-05 13:53:26', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(181, '2018-11-06 21:31:58', '2018-11-06 21:31:58', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new VIP order!', NULL, NULL),
(182, '2018-11-06 22:28:50', '2018-11-06 22:28:50', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - You have a paid order, please remember scheduled appointment!', NULL, NULL),
(183, '2018-11-06 22:29:36', '2018-11-06 22:29:36', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check to confirm your service time change!', NULL, NULL),
(184, '2018-11-08 21:10:39', '2018-11-08 21:10:39', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your order is cancelled!', NULL, NULL),
(185, '2018-11-08 21:13:12', '2018-11-08 21:13:12', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(186, '2018-11-08 21:14:40', '2018-11-08 21:14:40', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(187, '2018-11-08 21:19:35', '2018-11-08 21:19:35', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - You have a paid order, please remember scheduled appointment!', NULL, NULL),
(188, '2018-11-13 10:48:46', '2018-11-13 10:48:46', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(189, '2018-11-13 10:48:46', '2018-11-13 10:48:46', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(190, '2018-11-13 10:55:21', '2018-11-13 10:55:21', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(191, '2018-11-19 02:09:45', '2018-11-19 02:09:45', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(192, '2018-11-19 02:11:22', '2018-11-19 02:11:22', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(193, '2018-11-19 02:15:53', '2018-11-19 02:15:53', 'queued', '+16042294618', '6042838800', 'Sent from your Twilio trial account - You have a paid order, please remember scheduled appointment!', NULL, NULL),
(194, '2018-11-19 09:54:15', '2018-11-19 09:54:15', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(195, '2018-11-19 09:54:29', '2018-11-19 09:54:29', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(196, '2018-11-19 09:55:49', '2018-11-19 09:55:49', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(197, '2018-11-19 09:56:08', '2018-11-19 09:56:08', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(198, '2018-11-19 09:57:32', '2018-11-19 09:57:32', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - You have a paid order, please remember scheduled appointment!', NULL, NULL),
(199, '2018-11-19 10:09:55', '2018-11-19 10:09:55', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check to confirm your service time change!', NULL, NULL),
(200, '2018-11-20 12:19:06', '2018-11-20 12:19:06', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check to confirm your service time change and wait for re-paying!', NULL, NULL),
(201, '2018-11-20 13:14:57', '2018-11-20 13:14:57', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - You have a paid and changed order, please check changed order!', NULL, NULL),
(202, '2018-11-20 13:19:01', '2018-11-20 13:19:01', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(203, '2018-11-20 13:19:06', '2018-11-20 13:19:06', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(204, '2018-11-20 13:19:14', '2018-11-20 13:19:14', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - You have a paid order, please remember scheduled appointment!', NULL, NULL),
(205, '2018-11-20 13:19:24', '2018-11-20 13:19:24', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check to confirm your service time change and wait for re-paying!', NULL, NULL),
(206, '2018-11-20 13:19:33', '2018-11-20 13:19:33', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Rescheduled order is accepted, please check!', NULL, NULL),
(207, '2018-11-20 13:20:00', '2018-11-20 13:20:00', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check for your new order!', NULL, NULL),
(208, '2018-11-20 13:20:04', '2018-11-20 13:20:04', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Your cleaner has accepted the order, please confirm! Please refer to order form for details!', NULL, NULL),
(209, '2018-11-20 13:20:12', '2018-11-20 13:20:12', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - You have a paid order, please remember scheduled appointment!', NULL, NULL),
(210, '2018-11-20 13:20:20', '2018-11-20 13:20:20', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Please check to confirm your service time change and wait for re-paying!', NULL, NULL),
(211, '2018-11-20 13:20:45', '2018-11-20 13:20:45', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - You have a paid and changed order, please check changed order!', NULL, NULL),
(212, '2018-11-20 13:33:17', '2018-11-20 13:33:17', 'queued', '+16042294618', '6047195215', 'Sent from your Twilio trial account - Rescheduled order is accepted, please check!', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `translations`
--

INSERT INTO `translations` (`id`, `table_name`, `column_name`, `foreign_key`, `locale`, `value`, `created_at`, `updated_at`) VALUES
(1, 'data_types', 'display_name_singular', 1, 'pt', 'Post', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(2, 'data_types', 'display_name_singular', 2, 'pt', 'Página', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(3, 'data_types', 'display_name_singular', 3, 'pt', 'Utilizador', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(4, 'data_types', 'display_name_singular', 4, 'pt', 'Categoria', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(5, 'data_types', 'display_name_singular', 5, 'pt', 'Menu', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(6, 'data_types', 'display_name_singular', 6, 'pt', 'Função', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(7, 'data_types', 'display_name_plural', 1, 'pt', 'Posts', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(8, 'data_types', 'display_name_plural', 2, 'pt', 'Páginas', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(9, 'data_types', 'display_name_plural', 3, 'pt', 'Utilizadores', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(10, 'data_types', 'display_name_plural', 4, 'pt', 'Categorias', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(11, 'data_types', 'display_name_plural', 5, 'pt', 'Menus', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(12, 'data_types', 'display_name_plural', 6, 'pt', 'Funções', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(13, 'categories', 'slug', 1, 'pt', 'categoria-1', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(14, 'categories', 'name', 1, 'pt', 'Categoria 1', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(15, 'categories', 'slug', 2, 'pt', 'categoria-2', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(16, 'categories', 'name', 2, 'pt', 'Categoria 2', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(17, 'pages', 'title', 1, 'pt', 'Olá Mundo', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(18, 'pages', 'slug', 1, 'pt', 'ola-mundo', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(19, 'pages', 'body', 1, 'pt', '<p>Olá Mundo. Scallywag grog swab Cat o\'nine tails scuttle rigging hardtack cable nipper Yellow Jack. Handsomely spirits knave lad killick landlubber or just lubber deadlights chantey pinnace crack Jennys tea cup. Provost long clothes black spot Yellow Jack bilged on her anchor league lateen sail case shot lee tackle.</p>\r\n<p>Ballast spirits fluke topmast me quarterdeck schooner landlubber or just lubber gabion belaying pin. Pinnace stern galleon starboard warp carouser to go on account dance the hempen jig jolly boat measured fer yer chains. Man-of-war fire in the hole nipperkin handsomely doubloon barkadeer Brethren of the Coast gibbet driver squiffy.</p>', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(20, 'menu_items', 'title', 1, 'pt', 'Painel de Controle', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(21, 'menu_items', 'title', 2, 'pt', 'Media', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(22, 'menu_items', 'title', 3, 'pt', 'Publicações', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(23, 'menu_items', 'title', 4, 'pt', 'Utilizadores', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(24, 'menu_items', 'title', 5, 'pt', 'Categorias', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(25, 'menu_items', 'title', 6, 'pt', 'Páginas', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(26, 'menu_items', 'title', 7, 'pt', 'Funções', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(27, 'menu_items', 'title', 8, 'pt', 'Ferramentas', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(28, 'menu_items', 'title', 9, 'pt', 'Menus', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(29, 'menu_items', 'title', 10, 'pt', 'Base de dados', '2018-03-14 18:30:18', '2018-03-14 18:30:18'),
(30, 'menu_items', 'title', 12, 'pt', 'Configurações', '2018-03-14 18:30:18', '2018-03-14 18:30:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(60) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `firebase_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rate` int(11) DEFAULT '0',
  `remember_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `phone`, `type`, `firebase_token`, `created_at`, `updated_at`, `rate`, `remember_token`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', '$2y$10$PgvUVbjhdKu7OvHqsijNKO0krf05WWFKOxWkeetrSZ58Gh34FA.1K', '6047195216', '0', 'orY9HLCgpUuvSpUQUWNZDBOOl7vreupDdbq9TCK4NtbkfPGwvUmAE1YFc2Mt', '2018-03-14 18:30:18', '2018-04-19 15:03:46', 0, 'ikAtVr2uBeu5gEo4L6uHx7GechTTyycblS9SgGyvALnFmuKdjK5W7IPgfc1S'),
(49, 2, 'Wii', 'foreservicesltd@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-08%2F15284921249940?alt=media&token=26225bb2-b724-4f53-b3f9-fee799837929', '$2y$10$SOCQ5b5UG0M6UAhZCZmn9ulHXdN6QmSwrfgo9vGUD1k7lIVMYStlW', '6042838800', '2', NULL, '2018-06-08 13:34:22', '2018-06-08 14:08:49', 0, ''),
(55, 2, 'Developer', 'rik@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-07-21%2F15321520796190?alt=media&token=d409faa1-a9e4-4b52-8c14-1beeef14841a', '$2y$10$/Qx3b76LeDvZcOC27pH2q.UPsJgdb.Nuv/anFNFE70MmvQ1KX4qfq', '6047195215', '2', NULL, '2018-06-08 14:17:26', '2018-10-22 14:38:50', 0, ''),
(56, 2, 'Singed Dev', 'richardyych@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-09-26%2F15379883186190?alt=media&token=b443fa9d-8659-4c9e-98f6-a2820c9bca53', '$2y$10$2rSGDHvHrjTow7HcJpNgsu2ZC9FOLUT93pG0bQ.u15/IzIo.3QErK', '6047195215', '1', '2YOLxscQPWf9OpGnkPcHFYLePAw2', '2018-06-08 14:40:53', '2018-09-26 11:58:41', 4, ''),
(57, 2, 'adrianleung100', 'adrianleung100@gmail.com', NULL, '$2y$10$ihB6kQJK/dYfIypZxjLZpu9x6/VLALWFvgOrlv3hkce05nwFOO7o6', '6042838800', '1', 'TQ4UaUgberVFMJSsCfhM5oHXFlw1', '2018-06-10 23:48:38', '2018-10-31 13:43:13', 5, ''),
(58, 2, 'richardyych1', 'richardyych1@gmail.com', NULL, '$2y$10$9gQ336x9ep6uXkm1gQ8rF.9nOyswMxahAgoln9rRywPBogDaUsb42', '6047195215', '1', 'MVZtvujXmVfurHzK9eo0qu7yYCG2', '2018-06-11 15:47:39', '2018-06-11 15:47:39', 0, ''),
(59, 2, 'richard', 'richard@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-22%2F15296880763900?alt=media&token=0ce7aeb8-9af1-4511-a004-b83890a89ee8', '$2y$10$oBJBaF6FU.H3Dkwtmli7T.fIWKt1GDEGUijeuWEkbB6AhshUq8/YW', '6047195215', '1', 'iH3EbQrXrwYJjVkeOFUcDLHNzQ33', '2018-06-19 14:01:12', '2018-06-22 10:21:19', 0, ''),
(60, 2, 'test', 'richardyych@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-06-28%2F15302166255950?alt=media&token=c7bedaec-f2a7-40d4-98d9-292d24f5a4ea', '$2y$10$9bAimWb8IIbVTqO1fbNO9OAg1co98l4yLSuEq7SdiFSOjf5F7JCkq', '6047195215', '2', NULL, '2018-06-28 13:03:33', '2018-06-28 13:10:27', 0, ''),
(61, 2, 'Adrian Leung', NULL, NULL, '$2y$10$YROZww7j0wn0EzdQVfDEYO.ZiUHpZ7BSW0vqiTCiB3f2wPSZIMfGC', '6042838800', '1', 'YgF39e7LTbcY4yAVpahh4ciINQm1', '2018-07-17 12:49:34', '2018-10-10 17:59:00', 0, ''),
(62, 2, 'cathy.cmifs', 'cathy.cmifs@gmail.com', NULL, '$2y$10$BSYHEWUyJ6r38mKUD84xLeKWdvZaNk1KgbkO0LuGGGv1Wul9Hadry', '7783880889', '1', 'JEXeLK9ry9a0pc48BjtsPti9hjY2', '2018-07-17 20:00:29', '2018-07-17 20:00:29', 0, ''),
(63, 2, 'richardyych5haha', 'richardyych5@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-07-25%2F15324934617280?alt=media&token=eee0faf0-c000-4ed3-bd11-48fe2284eff8', '$2y$10$uObFBiMtwPzMMz8IbQMwJOwxnbfkYmd4irFLfEPyAm2mbRQ4XDdyS', '6047195215', '1', 'bCqwLWzs7VUUgJtyLMtUan7d4Wt1', '2018-07-19 15:24:41', '2018-07-24 21:37:47', 0, ''),
(64, 2, 'Adrian', 'adrianleung100@gmail.com', NULL, '$2y$10$1p98NTTK.p33VNHNt9Sa/OU6za5faArtNYh6pHsNVXGmF9MPtPuF6', '6042838800', '2', NULL, '2018-07-25 00:07:43', '2018-07-25 11:52:48', 0, ''),
(65, 2, 'Stanley Cheung', NULL, NULL, '$2y$10$tRXGrPoyvezU/ZOYVzlu4OAdniKKK0olUfu.TxFE6nyb5Edj2BXfu', NULL, '1', 'kKki7BhSjOWz6rMwZRt80A33fLN2', '2018-07-25 08:00:03', '2018-07-25 08:00:03', 0, ''),
(66, 2, 'Dev_Y', 'admin@test.com', NULL, '$2y$10$KLZz4ZHblkARY47twZ5fgu78XVax50ED/9g4LHiNP4XqiuOZ/ESGa', '6047195215', '2', NULL, '2018-07-25 14:29:05', '2018-07-25 14:29:42', 0, ''),
(67, 3, 'ForeAdmin', 'foreadmin@wiicleaner.com', 'users/July2018/SleLtFDX82gepDG6eZPA.png', '$2y$10$28SR9OlyQlyxY3u5GvVUMuz1wKz4rmB.fStcjQ5fSJSDOxDA.znBK', '6047195215', '0', NULL, '2018-07-27 11:15:19', '2018-09-18 11:47:34', NULL, 'RS30BplLgd5z5QAnopFNd8lNRs8CMjlL6QKpQzdHPxKS9RNki0FGnjAPtdb9'),
(68, 2, 'Brian', 'wtbrian710@gmail.com', NULL, '$2y$10$Ci2KhxkixT23jSM29yk72uACyMDrHlNUoernHNYbHdOkiya2uHV.G', '6047678248', '0', NULL, '2018-08-01 00:00:00', '2018-08-01 00:00:00', 0, '0'),
(69, 2, 'wtbrian710', 'wtbrian710@gmail.com', NULL, '$2y$10$hHNf8m18QIYPhE.ge5Qg9.DRWwlfVOy4WxRcmC6l/3eQK5vs5tEuu', '6047678248', '1', 'ep4oGpfscfY48kfPJEJloN9kWdq2', '2018-08-01 00:01:13', '2018-08-01 00:01:13', 0, '0'),
(70, 2, 'zowodimiy', 'zowodimiy@1shivom.com', NULL, '$2y$10$3eWWGMZYwpqIkni0KDXOE.wWzRbvD5WWAbv5p40FUlYIiL89HK/x6', '3453453454', '1', 'eh3Zggcx9Bau0JLFe3PA7xF3yjl2', '2018-08-14 17:20:03', '2018-09-20 13:55:38', 0, '0'),
(71, 2, 'Yuyingchao Yu', NULL, NULL, '$2y$10$LulENMEQY.dkyIxbwYGn7.A2lLQqg5pzUyrfqPrHJiv7foreuKo5O', NULL, '1', 'b1BpmH66yrWTIa8b76Mb7KcT1Yl1', '2018-09-14 11:20:17', '2018-09-14 11:20:17', 0, '0'),
(72, 2, 'Sum', 'aaaddd@gmail.com', NULL, '$2y$10$v1yvrgVi8QF8LsMFXCdXLOn7RkBtAidlpllJYThRkx5jKjv1m6L3a', '7787755505', '0', NULL, '2018-09-19 23:40:52', '2018-09-19 23:40:52', 0, '0'),
(73, 2, 'Wai', 'addlll@gmail.com', NULL, '$2y$10$8e9Yk69I5l2YNLSg.cP8sOqgHDqbPKO2DUfjYc.bNArBp/9O/jUH.', '7787777777', '0', NULL, '2018-09-19 23:45:29', '2018-09-19 23:45:29', 0, '0'),
(74, 2, 'yyc', 'richardyych2@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-09-26%2F15379916580400?alt=media&token=9f3e0780-90f8-4599-9f40-3efe7f50ff01', '$2y$10$3eAnEBoML7oL5m2PnNgrzuCLnRaMcyuo/JMqHK6X7QkKTeO9pXz8q', '6047195215', '2', NULL, '2018-09-26 11:24:50', '2018-10-22 14:37:10', 0, '0'),
(75, 2, 'candysytsang', 'candysytsang@gmail.com', NULL, '$2y$10$whuSMUVYWINL1/aUkl0aBeyWQuDEtM05YKPN9xz1X9iEH9jkt1bZq', '7788658728', '1', 'pw8osMUTRNQ5tCGgfWPnkZJScTG3', '2018-09-28 18:07:23', '2018-09-28 18:07:23', 0, '0'),
(76, 2, 'adr', 'adr@gmail.com', NULL, '$2y$10$WT3Z4Dx082faTgjbONe5HOucR.nJJrzMiwmF5hJq5wci//x/gYGv2', '6047755505', '1', 'jnaItoGZSfNGgEzuzm7OftIS0e92', '2018-09-28 21:44:18', '2018-09-28 21:44:18', 0, '0'),
(77, 2, '123', '123@gmil.com', NULL, '$2y$10$1eVlL4gz4z1c5sogBDmIa..93ngnCIn8hPy2sYqmK0Csdkq9Us6te', '6047195215', '0', NULL, '2018-10-05 10:51:43', '2018-10-05 10:51:43', 0, '0'),
(78, 2, 'Stan', 'Stanleycheung0407@gmail.com', NULL, '$2y$10$Ylmhtx0MRTsJZHfT8mpXjOo3KCp8XRxzXyBlfUp9ewNeiDS5vCNgW', '6047853652', '0', NULL, '2018-10-07 08:36:34', '2018-10-07 08:36:34', 0, '0'),
(79, 2, 'Adria', 'jflj@gmail.com', 'https://firebasestorage.googleapis.com/v0/b/foreclient-d7a02.appspot.com/o/images%2F2018-10-11%2F15392206390220?alt=media&token=5a1779df-5e52-41a7-afe2-138c30a7151c', '$2y$10$tlILhThdY9HPLgZsO1jp9.QzeGlsuHEDeWYmBEEtzv9du6SFt/nUa', '2361234567', '2', NULL, '2018-10-10 00:30:23', '2018-10-10 18:17:20', 0, '0'),
(80, 2, 'Testing', 'Testing@gmail.com', NULL, '$2y$10$t2iw9kUnLuZ2DOFPcvYzK.NXwF2U3wnTb7opmy4T91i5xqOotWKCy', '7782351233', '1', 'CCrmaLzl6xRp5xhjQS8wJcnDDrk2', '2018-10-10 21:18:39', '2018-10-10 21:18:39', 0, '0'),
(81, 2, 'Samuel Kwok', NULL, NULL, '$2y$10$nP4i15JiH7uNrcluD/eCoeIlIYOnhWbvlvb1eVk4T/NxskH.T8at2', NULL, '1', '7dqvPeqCptgbDlUky84iZXBkLz63', '2018-10-12 19:52:53', '2018-10-12 19:52:53', 0, '0'),
(82, 2, 'Adll', 'adrianel@gmail.com', NULL, '$2y$10$YD8CglOffxj31wDdD8WcEOAi3F8xrBZzhXAAH1Q1mIS05y6mDZFke', '6041234567', '0', NULL, '2018-10-17 17:21:20', '2018-10-17 17:21:20', 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `wii_payments`
--

CREATE TABLE `wii_payments` (
  `id` int(10) UNSIGNED NOT NULL,
  `cleaner_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `wii_payments`
--

INSERT INTO `wii_payments` (`id`, `cleaner_id`, `amount`, `created_at`, `updated_at`) VALUES
(1, 16, 100, '2018-07-22 13:43:54', '2018-07-22 13:43:54'),
(2, 18, 100, '2018-07-26 04:36:00', '2018-07-25 14:38:19'),
(3, 19, 100, '2018-07-26 04:37:00', '2018-07-25 14:38:25');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_slug_unique` (`slug`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

--
-- Indexes for table `cleaners`
--
ALTER TABLE `cleaners`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cleaner_token_unique` (`user_id`),
  ADD UNIQUE KEY `cleaner_email_unique` (`email`);

--
-- Indexes for table `cleaner_reviews`
--
ALTER TABLE `cleaner_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cleaner_schedules`
--
ALTER TABLE `cleaner_schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_reviews`
--
ALTER TABLE `client_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pages_slug_unique` (`slug`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permission_groups_name_unique` (`name`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `saved_cleaners`
--
ALTER TABLE `saved_cleaners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_responses`
--
ALTER TABLE `service_responses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `sms_records`
--
ALTER TABLE `sms_records`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_firebase_token_unique` (`firebase_token`);

--
-- Indexes for table `wii_payments`
--
ALTER TABLE `wii_payments`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `cleaners`
--
ALTER TABLE `cleaners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `cleaner_reviews`
--
ALTER TABLE `cleaner_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `cleaner_schedules`
--
ALTER TABLE `cleaner_schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `client_reviews`
--
ALTER TABLE `client_reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `saved_cleaners`
--
ALTER TABLE `saved_cleaners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;
--
-- AUTO_INCREMENT for table `service_responses`
--
ALTER TABLE `service_responses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `sms_records`
--
ALTER TABLE `sms_records`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;
--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `wii_payments`
--
ALTER TABLE `wii_payments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
