-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2021 at 02:17 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `about_contents`
--

CREATE TABLE `about_contents` (
  `id` int(10) UNSIGNED NOT NULL,
  `why_content` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `key_point_1_content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `key_point_2_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_2_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_3_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_3_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_4_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_4_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_5_title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `key_point_5_content` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `about_us` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `who_we_are` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `intro_video_embed_code` text COLLATE utf8_unicode_ci NOT NULL,
  `video_site_link` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_contents`
--

INSERT INTO `about_contents` (`id`, `why_content`, `key_point_1_title`, `key_point_1_content`, `key_point_2_title`, `key_point_2_content`, `key_point_3_title`, `key_point_3_content`, `key_point_4_title`, `key_point_4_content`, `key_point_5_title`, `key_point_5_content`, `about_us`, `who_we_are`, `intro_video_embed_code`, `video_site_link`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy.', 'Key point 1', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', 'Key point 2', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock', NULL, NULL, NULL, NULL, NULL, NULL, 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '<iframe src=\"https://www.youtube.com/embed/6sa1G_9jCb0\" frameborder=\"0\"  allowfullscreen></iframe>', 'https://www.youtube.com', '2021-02-06 07:40:07', '2021-02-06 07:40:07', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `about_sliders`
--

CREATE TABLE `about_sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `about_sliders`
--

INSERT INTO `about_sliders` (`id`, `image`, `order`, `created_at`, `updated_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '1.jpg', 1, '2021-02-06 07:40:07', '2021-02-06 07:40:07', 0, 0, NULL),
(2, '2.jpg', 2, '2021-02-06 07:40:07', '2021-02-06 07:40:07', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `academic_years`
--

CREATE TABLE `academic_years` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `is_open_for_admission` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `academic_years`
--

INSERT INTO `academic_years` (`id`, `title`, `start_date`, `end_date`, `is_open_for_admission`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2021', '2021-01-01', '2021-12-31', 0, '1', '2021-02-06 07:40:28', '2021-02-06 07:40:28', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `app_metas`
--

CREATE TABLE `app_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `app_metas`
--

INSERT INTO `app_metas` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'institute_settings', '{\"logo\":\"fWvvgMzdvBG07C9WZm4pvp14b6WgNbJri9CF58Gh.png\",\"logo_small\":\"0wmrFwPAtDpDGPFnAruT19XRFfDocb4MgyAAkGYF.jpeg\",\"favicon\":\"Dbo7quEB2lYaVJQa5BOOTzY1QFvNl04gs6IIgZf0.png\",\"name\":\"SD Muhammadiyah 8 & 10\",\"short_name\":\"SD Muh 8 & 10\",\"establish\":\"2010\",\"website_link\":\"http:\\/\\/localhost:8000\",\"email\":\"info@gmail.com\",\"phone_no\":\"+62808880888\",\"address\":\"Banjarmasin\"}', '2021-02-06 07:40:28', '2021-02-07 00:39:25', NULL, 1, 1, NULL),
(2, 'academic_year', '1', '2021-02-06 07:40:28', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(3, 'frontend_website', '1', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(4, 'language', 'en', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(5, 'disable_language', '1', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(6, 'institute_type', '3', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(7, 'shift_data', '{\"Morning\":{\"start\":\"7:00 am\",\"end\":\"1:00 pm\"},\"Day\":{\"start\":\"2:00 pm\",\"end\":\"5:00 pm\"},\"Evening\":{\"start\":\"12:00 am\",\"end\":\"12:00 pm\"}}', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(8, 'weekends', '[\"0\"]', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(9, 'week_start_day', '1', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(10, 'week_end_day', '6', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(11, 'total_casual_leave', '14', '2021-02-06 07:40:29', '2021-02-07 00:10:23', NULL, 1, 1, NULL),
(12, 'total_sick_leave', '10', '2021-02-06 07:40:29', '2021-02-07 00:10:23', NULL, 1, 1, NULL),
(13, 'total_maternity_leave', '90', '2021-02-06 07:40:29', '2021-02-07 00:10:23', NULL, 1, 1, NULL),
(14, 'total_special_leave', '5', '2021-02-06 07:40:29', '2021-02-07 00:10:23', NULL, 1, 1, NULL),
(15, 'board_name', 'Banjarmasin', '2021-02-06 07:40:29', '2021-02-07 00:24:07', NULL, 1, 1, NULL),
(16, 'result_default_grade_id', '1', '2021-02-06 07:40:45', '2021-02-07 00:24:07', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `class_profiles`
--

CREATE TABLE `class_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `image_sm` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image_lg` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `teacher` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `room_no` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `shift` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `short_description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `outline` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_profiles`
--

INSERT INTO `class_profiles` (`id`, `name`, `slug`, `image_sm`, `image_lg`, `teacher`, `room_no`, `capacity`, `shift`, `short_description`, `description`, `outline`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Class Three', 'class-three', '1-sm.jpg', '1-lg.jpg', 'MC Smith', 'R301-R302', 60, 'Morning', 'Lorem ipsum text', NULL, NULL, '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL),
(2, 'Class Four', 'class-four', '2-sm.jpg', '2-lg.jpg', 'Jhon Doe', 'R401-R402', 70, 'Morning', 'Lorem ipsum text', NULL, NULL, '2021-02-06 07:40:08', '2021-02-06 07:40:08', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `id_card` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` tinyint(3) UNSIGNED DEFAULT NULL,
  `qualification` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `joining_date` date NOT NULL,
  `leave_date` date DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `shift` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `duty_start` time DEFAULT NULL,
  `duty_end` time DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `user_id`, `role_id`, `id_card`, `name`, `designation`, `qualification`, `dob`, `gender`, `religion`, `email`, `phone_no`, `address`, `joining_date`, `leave_date`, `photo`, `signature`, `shift`, `duty_start`, `duty_end`, `status`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 6, 2, '0000000015', 'Mrs. Luna Kohler', 7, 'consectetur', '02/04/2008', '1', '5', 'mateo47@example.net', '+5372630052998', '74400 Raphaelle Mountain Suite 357\nSchmelermouth, MO 82907', '2017-03-16', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:29', NULL, 1, 0, NULL),
(2, 7, 2, '0000000043', 'Terence Tromp', 15, 'nulla', '03/06/2019', '2', '4', 'twaelchi@example.net', '+2791037022946', '2825 Blick Junction Apt. 286\nPort Marilieborough, NH 34605', '2017-04-03', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(3, 8, 2, '0000000030', 'Ms. Kenna Russel', 6, 'earum', '04/01/2013', '1', '3', 'bryana.little@example.com', '+2116619095415', '16501 Lempi Islands\nNorth Dulce, IN 03776-7610', '2018-10-18', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(4, 9, 2, '0000000031', 'Bennie Hand Jr.', 5, 'quo', '05/06/2015', '1', '2', 'cartwright.josefina@example.net', '+1668149812090', '295 Bridie Isle Suite 119\nEast Edmund, NY 91957-8015', '2017-08-14', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(5, 10, 2, '0000000084', 'Michale Williamson Jr.', 9, 'sit', '30/01/2014', '1', '2', 'fredrick.strosin@example.com', '+2074857653455', '35087 Lelah Burgs Apt. 660\nPort King, NY 03449-6132', '2016-07-29', NULL, NULL, NULL, '2', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(6, 11, 2, '0000000023', 'Cole Nolan', 19, 'saepe', '04/05/2002', '2', '2', 'buford38@example.net', '+2614322543555', '475 Thiel Lake Suite 847\nLake Kenyatta, NE 92703', '2019-01-26', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(7, 12, 5, '0000000073', 'Mr. Johnathan Veum', 12, 'et', '11/04/2006', '2', '3', 'ritchie.arch@example.net', '+2495391131789', '758 O\'Hara Island Suite 092\nBiankaview, NV 97794-3678', '2016-02-25', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(8, 13, 6, '0000000012', 'Cassidy Langosh', 6, 'incidunt', '15/11/2002', '1', '1', 'ipollich@example.net', '+5498270317386', '60413 Jade Shores\nNew Jeramie, RI 50431-9964', '2019-01-01', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(9, 14, 7, '0000000003', 'Ms. Leora Hegmann', 6, 'odit', '11/01/2010', '1', '2', 'dan.senger@example.com', '+5671575953673', '3045 Isaac Village Suite 632\nWest Olinbury, MT 98349-3569', '2017-03-10', NULL, NULL, NULL, '1', '09:00:00', '17:00:00', '1', 0, '2021-02-06 07:40:31', '2021-02-06 07:40:32', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `employee_attendances`
--

CREATE TABLE `employee_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `working_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `employee_attendances`
--

INSERT INTO `employee_attendances` (`id`, `employee_id`, `attendance_date`, `in_time`, `out_time`, `working_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(2, 2, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(3, 3, '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(4, 4, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(5, 5, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(6, 6, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(7, 7, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(8, 8, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(9, 9, '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(10, 1, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(11, 2, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(12, 3, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(13, 4, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(14, 5, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(15, 6, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(16, 7, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(17, 8, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(18, 9, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(19, 1, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(20, 2, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(21, 3, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(22, 4, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(23, 5, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(24, 6, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(25, 7, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(26, 8, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(27, 9, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(28, 1, '2021-01-26', '2021-01-26 08:00:00', '2021-01-26 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(29, 2, '2021-01-26', '2021-01-26 08:00:00', '2021-01-26 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(30, 3, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(31, 4, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(32, 5, '2021-01-26', '2021-01-26 08:00:00', '2021-01-26 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(33, 6, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(34, 7, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(35, 8, '2021-01-26', '2021-01-26 08:00:00', '2021-01-26 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(36, 9, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(37, 1, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(38, 2, '2021-01-27', '2021-01-27 00:00:00', '2021-01-27 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(39, 3, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(40, 4, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(41, 5, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(42, 6, '2021-01-27', '2021-01-27 00:00:00', '2021-01-27 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(43, 7, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(44, 8, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(45, 9, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(46, 1, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(47, 2, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(48, 3, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(49, 4, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(50, 5, '2021-01-28', '2021-01-28 08:00:00', '2021-01-28 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(51, 6, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(52, 7, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(53, 8, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(54, 9, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(55, 1, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(56, 2, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(57, 3, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(58, 4, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(59, 5, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(60, 6, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(61, 7, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(62, 8, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(63, 9, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(64, 1, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(65, 2, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(66, 3, '2021-01-31', '2021-01-31 08:00:00', '2021-01-31 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(67, 4, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(68, 5, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(69, 6, '2021-01-31', '2021-01-31 08:00:00', '2021-01-31 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(70, 7, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(71, 8, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(72, 9, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(73, 1, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(74, 2, '2021-02-01', '2021-02-01 00:00:00', '2021-02-01 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(75, 3, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(76, 4, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(77, 5, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(78, 6, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(79, 7, '2021-02-01', '2021-02-01 00:00:00', '2021-02-01 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(80, 8, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(81, 9, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(82, 1, '2021-02-02', '2021-02-02 00:00:00', '2021-02-02 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(83, 2, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(84, 3, '2021-02-02', '2021-02-02 00:00:00', '2021-02-02 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(85, 4, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(86, 5, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(87, 6, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(88, 7, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(89, 8, '2021-02-02', '2021-02-02 00:00:00', '2021-02-02 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(90, 9, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(91, 1, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(92, 2, '2021-02-03', '2021-02-03 00:00:00', '2021-02-03 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(93, 3, '2021-02-03', '2021-02-03 00:00:00', '2021-02-03 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(94, 4, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(95, 5, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(96, 6, '2021-02-03', '2021-02-03 00:00:00', '2021-02-03 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(97, 7, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(98, 8, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(99, 9, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(100, 1, '2021-02-04', '2021-02-04 08:00:00', '2021-02-04 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(101, 2, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 12:10:11', NULL, 1, 1, NULL),
(102, 3, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 12:10:12', NULL, 1, 1, NULL),
(103, 4, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 12:10:13', NULL, 1, 1, NULL),
(104, 5, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 12:10:09', NULL, 1, 1, NULL),
(105, 6, '2021-02-04', '2021-02-04 08:00:00', '2021-02-04 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(106, 7, '2021-02-04', '2021-02-04 08:00:00', '2021-02-04 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(107, 8, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 12:10:07', NULL, 1, 1, NULL),
(108, 9, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 12:10:09', NULL, 1, 1, NULL),
(109, 1, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(110, 2, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 07:50:32', NULL, 1, 1, NULL),
(111, 3, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 07:50:36', NULL, 1, 1, NULL),
(112, 4, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 07:50:38', NULL, 1, 1, NULL),
(113, 5, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(114, 6, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(115, 7, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '1', '2021-02-06 07:40:43', '2021-02-06 07:50:39', NULL, 1, 1, NULL),
(116, 8, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL),
(117, 9, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:43', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(10) UNSIGNED NOT NULL,
  `event_time` datetime NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `cover_photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cover_video` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `tags` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `slider_1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slider_3` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_time`, `title`, `slug`, `cover_photo`, `cover_video`, `tags`, `description`, `slider_1`, `slider_2`, `slider_3`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '2021-12-20 15:00:00', 'Annual function 2021', 'annual-function-2021', '1.jpg', '', 'annual,function', 'it is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution', '11.jpg', '22.jpg', '33.jpg', '2021-02-06 07:40:08', '2021-02-06 07:40:08', NULL, 0, 0, NULL),
(2, '2021-02-21 15:40:08', 'Farewell Party', 'farewell-party', NULL, '<iframe src=\"https://www.youtube.com/embed/pXfqbimmBhE\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'farewell,party', '<p><b>Details:</b><br><ul><li><p>What restrooms are available prior to gates opening?</p><div>Angel Stadium restrooms are available prior to the gates opening; they are located in the parking lot near the Orangewood entrance.</div></li><li><div>Can I bring food or drinks into the stadium?</div><div>You can bring one unopened bottle of water per person into the stadium. No other food or drinks are permitted.</div></li><li><div>Will food be available for sale inside the stadium?</div><div>Yes. Concession stands will be open until Greg Laurie speaks. Alcohol will not be available.</div></li><li><div>Can I reserve or save seats?</div><div>No. Seating is first-come, first-served.</div></li></ul><br></p>', '11.jpg', '22.jpg', '33.jpg', '2021-02-06 07:40:08', '2021-02-06 07:40:08', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exams`
--

CREATE TABLE `exams` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `elective_subject_point_addition` decimal(5,2) NOT NULL DEFAULT 0.00,
  `marks_distribution_types` text COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `open_for_marks_entry` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exams`
--

INSERT INTO `exams` (`id`, `class_id`, `name`, `elective_subject_point_addition`, `marks_distribution_types`, `status`, `open_for_marks_entry`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 10, 'Iusto et saepe non et.', '0.00', '[1,2,3]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(2, 4, 'Voluptatem odio ipsam porro qui.', '0.00', '[3,5,7]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(3, 7, 'Minus nemo sed.', '2.00', '[2,6,7]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(4, 6, 'Commodi asperiores ducimus.', '1.00', '[2,3,6]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(5, 10, 'Qui qui vitae asperiores.', '0.00', '[1,5,6]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(6, 5, 'Sapiente aut autem eaque.', '1.00', '[1,2,6]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(7, 7, 'Suscipit magni a.', '0.00', '[4,6,7]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(8, 8, 'Enim quae et nobis.', '0.00', '[2,3,5]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(9, 6, 'Aut omnis maxime.', '2.00', '[4,5,6]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(10, 3, 'Amet neque nisi.', '0.00', '[2,6,7]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(11, 1, '1st Term Exam', '0.00', '[1,2,7]', '1', 1, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(12, 1, 'Mid Term Exam', '2.00', '[1,2,5]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:44', NULL, 1, 0, NULL),
(13, 1, 'Final Exam', '0.00', '[1,2,7]', '1', 0, '2021-02-06 07:40:43', '2021-02-06 07:40:45', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `exam_rules`
--

CREATE TABLE `exam_rules` (
  `id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `grade_id` int(10) UNSIGNED NOT NULL,
  `combine_subject_id` int(10) UNSIGNED DEFAULT NULL,
  `marks_distribution` text COLLATE utf8_unicode_ci NOT NULL,
  `passing_rule` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `total_exam_marks` int(11) NOT NULL DEFAULT 0,
  `over_all_pass` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_rules`
--

INSERT INTO `exam_rules` (`id`, `class_id`, `subject_id`, `exam_id`, `grade_id`, `combine_subject_id`, `marks_distribution`, `passing_rule`, `total_exam_marks`, `over_all_pass`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 11, 11, 1, 12, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":0},{\"type\":2,\"total_marks\":30,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 100, 33, '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(2, 1, 12, 11, 2, NULL, '[{\"type\":1,\"total_marks\":35,\"pass_marks\":0},{\"type\":2,\"total_marks\":15,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 50, 17, '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(3, 1, 13, 11, 1, 14, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":0},{\"type\":2,\"total_marks\":30,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 100, 33, '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(4, 1, 14, 11, 2, NULL, '[{\"type\":1,\"total_marks\":35,\"pass_marks\":0},{\"type\":2,\"total_marks\":15,\"pass_marks\":0},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '1', 50, 17, '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(5, 1, 15, 11, 1, NULL, '[{\"type\":1,\"total_marks\":70,\"pass_marks\":25},{\"type\":2,\"total_marks\":30,\"pass_marks\":10},{\"type\":7,\"total_marks\":0,\"pass_marks\":0}]', '2', 100, 0, '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(6, 1, 16, 11, 1, NULL, '[{\"type\":1,\"total_marks\":50,\"pass_marks\":25},{\"type\":2,\"total_marks\":30,\"pass_marks\":15},{\"type\":7,\"total_marks\":20,\"pass_marks\":10}]', '3', 100, 50, '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `rules` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `grades`
--

INSERT INTO `grades` (`id`, `name`, `rules`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '100 Marks', '[{\"grade\":1,\"point\":5,\"marks_from\":80,\"marks_upto\":100},{\"grade\":2,\"point\":4,\"marks_from\":70,\"marks_upto\":79},{\"grade\":3,\"point\":3.5,\"marks_from\":60,\"marks_upto\":69},{\"grade\":4,\"point\":3,\"marks_from\":50,\"marks_upto\":59},{\"grade\":5,\"point\":2,\"marks_from\":40,\"marks_upto\":49},{\"grade\":6,\"point\":1,\"marks_from\":33,\"marks_upto\":39},{\"grade\":7,\"point\":0,\"marks_from\":0,\"marks_upto\":32}]', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(2, '50 Marks', '[{\"grade\":1,\"point\":5,\"marks_from\":40,\"marks_upto\":50},{\"grade\":2,\"point\":4,\"marks_from\":35,\"marks_upto\":39},{\"grade\":3,\"point\":3.5,\"marks_from\":30,\"marks_upto\":34},{\"grade\":4,\"point\":3,\"marks_from\":25,\"marks_upto\":29},{\"grade\":5,\"point\":2,\"marks_from\":20,\"marks_upto\":24},{\"grade\":6,\"point\":1,\"marks_from\":17,\"marks_upto\":19},{\"grade\":7,\"point\":0,\"marks_from\":0,\"marks_upto\":16}]', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `i_classes`
--

CREATE TABLE `i_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `have_selective_subject` tinyint(1) NOT NULL DEFAULT 0,
  `max_selective_subject` tinyint(3) UNSIGNED DEFAULT NULL,
  `have_elective_subject` tinyint(1) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_open_for_admission` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i_classes`
--

INSERT INTO `i_classes` (`id`, `name`, `numeric_value`, `order`, `group`, `duration`, `have_selective_subject`, `max_selective_subject`, `have_elective_subject`, `note`, `is_open_for_admission`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'One', 1, 1, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(2, 'Two', 2, 2, 'None', 1, 1, 2, 1, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(3, 'Three', 3, 3, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(4, 'Four', 4, 4, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(5, 'Five', 5, 5, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(6, 'Six', 6, 6, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(7, 'Seven', 7, 7, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(8, 'Eight', 8, 8, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(9, 'Nine Science', 90, 9, 'Science', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
(10, 'Nine Humanities', 91, 10, 'Humanities', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL);

--
-- Triggers `i_classes`
--
DELIMITER $$
CREATE TRIGGER `i_class__ai` AFTER INSERT ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'insert', NULL, d.* 
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `i_class__au` AFTER UPDATE ON `i_classes` FOR EACH ROW INSERT INTO i_class_history SELECT 'update', NULL, d.*
    FROM i_classes AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `i_class_history`
--

CREATE TABLE `i_class_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `numeric_value` int(11) NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `group` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `duration` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `have_selective_subject` tinyint(1) NOT NULL DEFAULT 0,
  `max_selective_subject` tinyint(3) UNSIGNED DEFAULT NULL,
  `have_elective_subject` tinyint(1) NOT NULL DEFAULT 0,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_open_for_admission` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `i_class_history`
--

INSERT INTO `i_class_history` (`action`, `revision`, `id`, `name`, `numeric_value`, `order`, `group`, `duration`, `have_selective_subject`, `max_selective_subject`, `have_elective_subject`, `note`, `is_open_for_admission`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'One', 1, 1, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 2, 'Two', 2, 2, 'None', 1, 1, 2, 1, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 3, 'Three', 3, 3, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 4, 'Four', 4, 4, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 5, 'Five', 5, 5, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 6, 'Six', 6, 6, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 7, 'Seven', 7, 7, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 8, 'Eight', 8, 8, 'None', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 9, 'Nine Science', 90, 9, 'Science', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL),
('insert', 1, 10, 'Nine Humanities', 91, 10, 'Humanities', 1, 0, NULL, 0, 'demo test', 0, '1', '2021-02-06 07:40:29', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `leaves`
--

CREATE TABLE `leaves` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_id` int(10) UNSIGNED NOT NULL,
  `leave_type` enum('1','2','3','4','5') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `leave_date` date NOT NULL,
  `document` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `leaves`
--

INSERT INTO `leaves` (`id`, `employee_id`, `leave_type`, `leave_date`, `document`, `description`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 9, '2', '2021-01-31', NULL, 'Laudantium veniam in quia pariatur esse.', '2', '2021-02-06 07:40:43', '2021-02-06 07:40:43', NULL, 1, 0, NULL),
(2, 8, '1', '2021-01-07', NULL, 'Reiciendis quibusdam incidunt provident quos.', '2', '2021-02-06 07:40:43', '2021-02-06 07:40:43', NULL, 1, 0, NULL),
(3, 3, '2', '2021-01-13', NULL, 'Cupiditate omnis aliquam voluptatem distinctio eos.', '2', '2021-02-06 07:40:43', '2021-02-06 07:40:43', NULL, 1, 0, NULL),
(4, 9, '1', '2021-01-25', NULL, 'Accusantium dolorem iste et tenetur dolor quibusdam dolorum.', '3', '2021-02-06 07:40:43', '2021-02-06 07:40:43', NULL, 1, 0, NULL),
(5, 4, '1', '2021-01-15', NULL, 'Dicta architecto quia sapiente adipisci nostrum est voluptatum.', '1', '2021-02-06 07:40:43', '2021-02-06 07:40:43', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `marks` text COLLATE utf8_unicode_ci NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `academic_year_id`, `class_id`, `section_id`, `registration_id`, `exam_id`, `subject_id`, `marks`, `total_marks`, `grade`, `point`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 12, 1, 11, 11, '{\"1\":64,\"2\":22,\"7\":0}', 86, 'A+', '5.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 12, 2, 11, 11, '{\"1\":7,\"2\":12,\"7\":0}', 19, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 12, 3, 11, 11, '{\"1\":44,\"2\":20,\"7\":0}', 64, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 12, 4, 11, 11, '{\"1\":15,\"2\":4,\"7\":0}', 19, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 12, 5, 11, 11, '{\"1\":51,\"2\":6,\"7\":0}', 57, 'B', '3.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 12, 1, 11, 12, '{\"1\":0,\"2\":4,\"7\":0}', 4, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 12, 2, 11, 12, '{\"1\":25,\"2\":5,\"7\":0}', 30, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 12, 3, 11, 12, '{\"1\":20,\"2\":13,\"7\":0}', 33, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 12, 4, 11, 12, '{\"1\":19,\"2\":4,\"7\":0}', 23, 'C', '2.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 12, 5, 11, 12, '{\"1\":0,\"2\":5,\"7\":0}', 5, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 12, 1, 11, 13, '{\"1\":40,\"2\":30,\"7\":0}', 70, 'A', '4.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 12, 2, 11, 13, '{\"1\":34,\"2\":25,\"7\":0}', 59, 'B', '3.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 12, 3, 11, 13, '{\"1\":19,\"2\":17,\"7\":0}', 36, 'D', '1.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 12, 4, 11, 13, '{\"1\":66,\"2\":16,\"7\":0}', 82, 'A+', '5.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 12, 5, 11, 13, '{\"1\":10,\"2\":23,\"7\":0}', 33, 'D', '1.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 12, 1, 11, 14, '{\"1\":22,\"2\":2,\"7\":0}', 24, 'C', '2.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 12, 2, 11, 14, '{\"1\":25,\"2\":8,\"7\":0}', 33, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 12, 3, 11, 14, '{\"1\":33,\"2\":1,\"7\":0}', 34, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 12, 4, 11, 14, '{\"1\":18,\"2\":0,\"7\":0}', 18, 'D', '1.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 12, 5, 11, 14, '{\"1\":22,\"2\":9,\"7\":0}', 31, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 12, 1, 11, 15, '{\"1\":11,\"2\":22,\"7\":0}', 33, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 12, 2, 11, 15, '{\"1\":19,\"2\":25,\"7\":0}', 44, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 12, 3, 11, 15, '{\"1\":46,\"2\":19,\"7\":0}', 65, 'A-', '3.50', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 12, 4, 11, 15, '{\"1\":57,\"2\":6,\"7\":0}', 63, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 12, 5, 11, 15, '{\"1\":2,\"2\":12,\"7\":0}', 14, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 12, 1, 11, 16, '{\"1\":31,\"2\":1,\"7\":14}', 46, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 12, 2, 11, 16, '{\"1\":47,\"2\":18,\"7\":20}', 85, 'A+', '5.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 12, 3, 11, 16, '{\"1\":16,\"2\":5,\"7\":9}', 30, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 12, 4, 11, 16, '{\"1\":8,\"2\":20,\"7\":2}', 30, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 12, 5, 11, 16, '{\"1\":16,\"2\":6,\"7\":10}', 32, 'F', '0.00', '1', '2021-02-06 07:40:45', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2018_03_04_000000_create_roles_table', 1),
(2, '2018_03_05_000000_create_users_table', 1),
(3, '2018_03_05_000001_create_user_roles_table', 1),
(4, '2018_03_05_000002_create_permissions_table', 1),
(5, '2018_03_05_000003_create_users_permissions_table', 1),
(6, '2018_03_05_000004_create_roles_permissions_table', 1),
(7, '2018_03_05_000005_create_password_resets_table', 1),
(8, '2018_06_09_065945_create_sliders_table', 1),
(9, '2018_07_06_103920_create_about_content_tables', 1),
(10, '2018_07_08_110923_create_site_metas_table', 1),
(11, '2018_07_11_035714_create_testimonials_table', 1),
(12, '2018_07_14_115139_create_class_profiles_table', 1),
(13, '2018_07_14_155755_create_teacher_profiles_table', 1),
(14, '2018_07_14_180514_create_events_table', 1),
(15, '2018_08_11_092832_create_app_metas_table', 1),
(16, '2018_08_11_121754_create_academic_years_table', 1),
(17, '2018_08_14_052209_create_employees_table', 1),
(18, '2018_08_14_055151_create_i_classes_table', 1),
(19, '2018_08_14_064130_create_sections_table', 1),
(20, '2018_08_14_064556_create_students_table', 1),
(21, '2018_08_15_105155_create_registrations_table', 1),
(22, '2018_11_20_013140_create_notifications_table', 1),
(23, '2019_01_12_151224_create_subjects_table', 1),
(24, '2019_01_12_151240_create_student_subjects_table', 1),
(25, '2019_01_12_151250_create_teacher_subjects_table', 1),
(26, '2019_01_13_155559_create_student_attendances_table', 1),
(27, '2019_02_12_105853_create_leaves_table', 1),
(28, '2019_02_15_111855_create_employee_attendances_table', 1),
(29, '2019_02_23_194914_create_exams_table', 1),
(30, '2019_02_23_195038_create_grades_table', 1),
(31, '2019_02_23_195053_create_exam_rules_table', 1),
(32, '2019_02_23_203247_create_marks_table', 1),
(33, '2019_02_23_203658_create_results_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`) VALUES
('11380dff-0849-4484-81eb-c9e2fcb04e92', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2021-02-07 00:39:25', '2021-02-07 00:39:25'),
('18904f82-7999-42d6-bc51-76d027532c1a', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2021-02-07 00:39:25', '2021-02-07 00:39:25'),
('22c81a64-baee-4649-aeed-f21f81e9a663', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"HR policy updated by Super Admin\"}', NULL, '2021-02-07 00:10:26', '2021-02-07 00:10:26'),
('481b521e-8f7f-43e5-bfc9-9f169d57a2f0', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2021-02-07 00:24:08', '2021-02-07 00:24:08'),
('82ab77e4-47e8-4b11-bcbb-4e67249db81b', 'App\\Notifications\\UserActivity', 'App\\User', 1, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2021-02-07 00:34:11', '2021-02-07 00:34:11'),
('8c7de60f-7248-4a6f-ad65-d4367e2dcbee', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2021-02-07 00:24:08', '2021-02-07 00:24:08'),
('cc53ee26-ed91-47c5-89ae-892d5ae6c118', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"HR policy updated by Super Admin\"}', NULL, '2021-02-07 00:10:26', '2021-02-07 00:10:26'),
('d4cf7c93-e150-4dec-bf7a-3781024b97a4', 'App\\Notifications\\UserActivity', 'App\\User', 2, '{\"msg_type\":\"info\",\"msg_text\":\"Institute settings updated by Super Admin\"}', NULL, '2021-02-07 00:34:11', '2021-02-07 00:34:11');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `slug`, `name`, `group`, `created_at`) VALUES
(1, 'change_password', 'Change Password', 'Common', '2021-02-06 09:39:36'),
(2, 'user.dashboard', 'Dashboard', 'Common', '2021-02-06 09:39:36'),
(3, 'lockscreen', 'Lock Screen', 'Common', '2021-02-06 09:39:36'),
(4, 'logout', 'Logout', 'Common', '2021-02-06 09:39:36'),
(5, 'profile', 'Profile', 'Common', '2021-02-06 09:39:36'),
(6, 'user.notification_unread', 'Notification View', 'Common', '2021-02-06 09:39:36'),
(7, 'user.notification_read', 'Notification View', 'Common', '2021-02-06 09:39:36'),
(8, 'user.notification_all', 'Notification View', 'Common', '2021-02-06 09:39:36'),
(9, 'user.role_index', 'User Role View', 'Administration Exclusive', '2021-02-06 09:39:36'),
(10, 'user.role_destroy', 'User Role Delete', 'Administration Exclusive', '2021-02-06 09:39:36'),
(11, 'user.role_create', 'User Role Create', 'Administration Exclusive', '2021-02-06 09:39:36'),
(12, 'user.role_store', 'User Role Create', 'Administration Exclusive', '2021-02-06 09:39:36'),
(13, 'user.role_update', 'User Role Edit', 'Administration Exclusive', '2021-02-06 09:39:36'),
(14, 'administrator.user_index', 'System Admin View', 'Administration Exclusive', '2021-02-06 09:39:36'),
(15, 'administrator.user_create', 'System Admin Create', 'Administration Exclusive', '2021-02-06 09:39:36'),
(16, 'administrator.user_status', 'System Admin Edit', 'Administration Exclusive', '2021-02-06 09:39:36'),
(17, 'administrator.user_store', 'System Admin Create', 'Administration Exclusive', '2021-02-06 09:39:36'),
(18, 'administrator.user_update', 'System Admin Edit', 'Administration Exclusive', '2021-02-06 09:39:36'),
(19, 'administrator.user_destroy', 'System Admin Delete', 'Administration Exclusive', '2021-02-06 09:39:36'),
(20, 'administrator.user_edit', 'System Admin Edit', 'Administration Exclusive', '2021-02-06 09:39:36'),
(21, 'administrator.user_password_reset', 'User Password Edit', 'Administration Exclusive', '2021-02-06 09:39:36'),
(22, 'user.store', 'User Create', 'Administration', '2021-02-06 09:39:36'),
(23, 'user.index', 'User View', 'Administration', '2021-02-06 09:39:36'),
(24, 'user.create', 'User Create', 'Administration', '2021-02-06 09:39:36'),
(25, 'user.status', 'User Edit', 'Administration', '2021-02-06 09:39:36'),
(26, 'user.show', 'User View', 'Administration', '2021-02-06 09:39:36'),
(27, 'user.update', 'User Edit', 'Administration', '2021-02-06 09:39:36'),
(28, 'user.destroy', 'User Delete', 'Administration', '2021-02-06 09:39:36'),
(29, 'user.edit', 'User Edit', 'Administration', '2021-02-06 09:39:36'),
(30, 'user.permission', 'User Edit', 'Administration', '2021-02-06 09:39:36'),
(31, 'administrator.academic_year_destroy', 'Academic Year Delete', 'Administration', '2021-02-06 09:39:36'),
(32, 'administrator.academic_year', 'Academic Year View', 'Administration', '2021-02-06 09:39:36'),
(33, 'administrator.academic_year_store', 'Academic Year Create', 'Administration', '2021-02-06 09:39:36'),
(34, 'administrator.academic_year_create', 'Academic Year Create', 'Administration', '2021-02-06 09:39:36'),
(35, 'administrator.academic_year_edit', 'Academic Year Edit', 'Administration', '2021-02-06 09:39:36'),
(36, 'administrator.academic_year_status', 'Academic Year Edit', 'Administration', '2021-02-06 09:39:36'),
(37, 'administrator.academic_year_update', 'Academic Year Edit', 'Administration', '2021-02-06 09:39:36'),
(38, 'settings.institute', 'Institute Settings Edit', 'Administration', '2021-02-06 09:39:36'),
(39, 'settings.report', 'Report Settings Edit', 'Administration', '2021-02-06 09:39:36'),
(40, 'academic.class_destroy', 'Class Delete', 'Academic', '2021-02-06 09:39:36'),
(41, 'academic.class', 'Class View', 'Academic', '2021-02-06 09:39:36'),
(42, 'academic.class_store', 'Class Create', 'Academic', '2021-02-06 09:39:36'),
(43, 'academic.class_create', 'Class Create', 'Academic', '2021-02-06 09:39:36'),
(44, 'academic.class_edit', 'Class Edit', 'Academic', '2021-02-06 09:39:36'),
(45, 'academic.class_status', 'Class Edit', 'Academic', '2021-02-06 09:39:36'),
(46, 'academic.class_update', 'Class Edit', 'Academic', '2021-02-06 09:39:36'),
(47, 'academic.section_destroy', 'Section Delete', 'Academic', '2021-02-06 09:39:36'),
(48, 'academic.section', 'Section View', 'Academic', '2021-02-06 09:39:36'),
(49, 'academic.section_store', 'Section Create', 'Academic', '2021-02-06 09:39:36'),
(50, 'academic.section_create', 'Section Create', 'Academic', '2021-02-06 09:39:36'),
(51, 'academic.section_edit', 'Section Edit', 'Academic', '2021-02-06 09:39:36'),
(52, 'academic.section_status', 'Section Edit', 'Academic', '2021-02-06 09:39:36'),
(53, 'academic.section_update', 'Section Edit', 'Academic', '2021-02-06 09:39:36'),
(54, 'academic.subject_destroy', 'Subject Delete', 'Academic', '2021-02-06 09:39:36'),
(55, 'academic.subject', 'Subject View', 'Academic', '2021-02-06 09:39:36'),
(56, 'academic.subject_store', 'Subject Create', 'Academic', '2021-02-06 09:39:36'),
(57, 'academic.subject_create', 'Subject Create', 'Academic', '2021-02-06 09:39:36'),
(58, 'academic.subject_edit', 'Subject Edit', 'Academic', '2021-02-06 09:39:36'),
(59, 'academic.subject_status', 'Subject Edit', 'Academic', '2021-02-06 09:39:36'),
(60, 'academic.subject_update', 'Subject Edit', 'Academic', '2021-02-06 09:39:36'),
(61, 'student.store', 'Student Create', 'Academic', '2021-02-06 09:39:36'),
(62, 'student.index', 'Student View', 'Academic', '2021-02-06 09:39:36'),
(63, 'student.list_by_filter', 'Student View', 'Academic', '2021-02-06 09:39:36'),
(64, 'student.create', 'Student Create', 'Academic', '2021-02-06 09:39:36'),
(65, 'student.status', 'Student Edit', 'Academic', '2021-02-06 09:39:36'),
(66, 'student.destroy', 'Student Delete', 'Academic', '2021-02-06 09:39:36'),
(67, 'student.update', 'Student Edit', 'Academic', '2021-02-06 09:39:36'),
(68, 'student.show', 'Student View', 'Academic', '2021-02-06 09:39:36'),
(69, 'student.edit', 'Student Edit', 'Academic', '2021-02-06 09:39:36'),
(70, 'teacher.index', 'Teacher View', 'Academic', '2021-02-06 09:39:36'),
(71, 'teacher.store', 'Teacher Create', 'Academic', '2021-02-06 09:39:36'),
(72, 'teacher.create', 'Teacher Create', 'Academic', '2021-02-06 09:39:36'),
(73, 'teacher.status', 'Teacher Edit', 'Academic', '2021-02-06 09:39:36'),
(74, 'teacher.destroy', 'Teacher Delete', 'Academic', '2021-02-06 09:39:36'),
(75, 'teacher.update', 'Teacher Edit', 'Academic', '2021-02-06 09:39:36'),
(76, 'teacher.show', 'Teacher View', 'Academic', '2021-02-06 09:39:36'),
(77, 'teacher.edit', 'Teacher Edit', 'Academic', '2021-02-06 09:39:36'),
(78, 'student_attendance.index', 'Student Attendance View', 'Academic', '2021-02-06 09:39:36'),
(79, 'student_attendance.store', 'Student Attendance Create', 'Academic', '2021-02-06 09:39:36'),
(80, 'student_attendance.create', 'Student Attendance Create', 'Academic', '2021-02-06 09:39:36'),
(81, 'student_attendance.status', 'Student Attendance Edit', 'Academic', '2021-02-06 09:39:36'),
(82, 'class_profile.index', 'Class Profile View', 'Website', '2021-02-06 09:39:36'),
(83, 'class_profile.store', 'Class Profile Create', 'Website', '2021-02-06 09:39:36'),
(84, 'class_profile.create', 'Class Profile Create', 'Website', '2021-02-06 09:39:36'),
(85, 'class_profile.show', 'Class Profile View', 'Website', '2021-02-06 09:39:36'),
(86, 'class_profile.update', 'Class Profile Edit', 'Website', '2021-02-06 09:39:36'),
(87, 'class_profile.destroy', 'Class Profile Delete', 'Website', '2021-02-06 09:39:36'),
(88, 'class_profile.edit', 'Class Profile Edit', 'Website', '2021-02-06 09:39:36'),
(89, 'event.index', 'Event View', 'Website', '2021-02-06 09:39:36'),
(90, 'event.store', 'Event Create', 'Website', '2021-02-06 09:39:36'),
(91, 'event.create', 'Event Create', 'Website', '2021-02-06 09:39:36'),
(92, 'event.destroy', 'Event Delete', 'Website', '2021-02-06 09:39:36'),
(93, 'event.show', 'Event View', 'Website', '2021-02-06 09:39:36'),
(94, 'event.update', 'Event Edit', 'Website', '2021-02-06 09:39:36'),
(95, 'event.edit', 'Event Edit', 'Website', '2021-02-06 09:39:36'),
(96, 'teacher_profile.index', 'Teacher Profile View', 'Website', '2021-02-06 09:39:36'),
(97, 'teacher_profile.store', 'Teacher Profile Create', 'Website', '2021-02-06 09:39:36'),
(98, 'teacher_profile.create', 'Teacher Profile Create', 'Website', '2021-02-06 09:39:36'),
(99, 'teacher_profile.update', 'Teacher Profile Edit', 'Website', '2021-02-06 09:39:36'),
(100, 'teacher_profile.show', 'Teacher Profile View', 'Website', '2021-02-06 09:39:36'),
(101, 'teacher_profile.destroy', 'Teacher Profile Delete', 'Website', '2021-02-06 09:39:36'),
(102, 'teacher_profile.edit', 'Teacher Profile Edit', 'Website', '2021-02-06 09:39:36'),
(103, 'site.about_content', 'Site About Content Edit', 'Website', '2021-02-06 09:39:36'),
(104, 'site.about_content', 'Site About Content Edit', 'Website', '2021-02-06 09:39:36'),
(105, 'site.about_content_image', 'Site About Content Edit', 'Website', '2021-02-06 09:39:36'),
(106, 'site.about_content_image', 'Site About Content Edit', 'Website', '2021-02-06 09:39:36'),
(107, 'site.about_content_image_delete', 'Site About Content Delete', 'Website', '2021-02-06 09:39:36'),
(108, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2021-02-06 09:39:36'),
(109, 'site.analytics', 'Site Analytics Setting Edit', 'Website', '2021-02-06 09:39:36'),
(110, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2021-02-06 09:39:36'),
(111, 'site.contact_us', 'Site Contact Us Edit', 'Website', '2021-02-06 09:39:36'),
(112, 'site.dashboard', 'Site Dashboard View', 'Website', '2021-02-06 09:39:36'),
(113, 'site.faq_delete', 'Site FAQ Delete', 'Website', '2021-02-06 09:39:36'),
(114, 'site.faq', 'Site FAQ Create', 'Website', '2021-02-06 09:39:36'),
(115, 'site.faq', 'Site FAQ Create', 'Website', '2021-02-06 09:39:36'),
(116, 'site.gallery', 'Site Gallery View', 'Website', '2021-02-06 09:39:36'),
(117, 'site.gallery_image', 'Site Gallery Create', 'Website', '2021-02-06 09:39:36'),
(118, 'site.gallery_image', 'Site Gallery Create', 'Website', '2021-02-06 09:39:36'),
(119, 'site.gallery_image_delete', 'Site Gallery Delete', 'Website', '2021-02-06 09:39:36'),
(120, 'site.service', 'Site Service Edit', 'Website', '2021-02-06 09:39:36'),
(121, 'site.service', 'Site Service Edit', 'Website', '2021-02-06 09:39:36'),
(122, 'site.settings', 'Site Settings Edit', 'Website', '2021-02-06 09:39:36'),
(123, 'site.settings', 'Site Settings Edit', 'Website', '2021-02-06 09:39:36'),
(124, 'site.statistic', 'Site Statistic Edit', 'Website', '2021-02-06 09:39:36'),
(125, 'site.statistic', 'Site Statistic Edit', 'Website', '2021-02-06 09:39:36'),
(126, 'site.subscribe', 'Site Subscriber View', 'Website', '2021-02-06 09:39:36'),
(127, 'site.testimonial', 'Site Testimonial View', 'Website', '2021-02-06 09:39:36'),
(128, 'site.testimonial_delete', 'Site Testimonial Delete', 'Website', '2021-02-06 09:39:36'),
(129, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2021-02-06 09:39:36'),
(130, 'site.testimonial_create', 'Site Testimonial Create', 'Website', '2021-02-06 09:39:36'),
(131, 'site.timeline', 'Site Timeline Create', 'Website', '2021-02-06 09:39:36'),
(132, 'site.timeline', 'Site Timeline Create', 'Website', '2021-02-06 09:39:36'),
(133, 'site.timeline_delete', 'Site Timeline Delete', 'Website', '2021-02-06 09:39:36'),
(134, 'slider.index', 'Slider View', 'Website', '2021-02-06 09:39:36'),
(135, 'slider.store', 'Slider Create', 'Website', '2021-02-06 09:39:36'),
(136, 'slider.create', 'Slider Create', 'Website', '2021-02-06 09:39:36'),
(137, 'slider.destroy', 'Slider Delete', 'Website', '2021-02-06 09:39:36'),
(138, 'slider.update', 'Slider Edit', 'Website', '2021-02-06 09:39:36'),
(139, 'slider.show', 'Slider View', 'Website', '2021-02-06 09:39:36'),
(140, 'slider.edit', 'Slider Edit', 'Website', '2021-02-06 09:39:36'),
(141, 'hrm.employee.index', 'Employee View', 'HRM', '2021-02-06 09:39:36'),
(142, 'hrm.employee.store', 'Employee Create', 'HRM', '2021-02-06 09:39:36'),
(143, 'hrm.employee.create', 'Employee Create', 'HRM', '2021-02-06 09:39:36'),
(144, 'hrm.employee.status', 'Employee Edit', 'HRM', '2021-02-06 09:39:36'),
(145, 'hrm.employee.destroy', 'Employee Delete', 'HRM', '2021-02-06 09:39:36'),
(146, 'hrm.employee.update', 'Employee Edit', 'HRM', '2021-02-06 09:39:36'),
(147, 'hrm.employee.show', 'Employee View', 'HRM', '2021-02-06 09:39:36'),
(148, 'hrm.employee.edit', 'Employee Edit', 'HRM', '2021-02-06 09:39:36'),
(149, 'hrm.leave.index', 'Leave View', 'HRM', '2021-02-06 09:39:36'),
(150, 'hrm.leave.store', 'Leave Create', 'HRM', '2021-02-06 09:39:36'),
(151, 'hrm.leave.create', 'Leave Create', 'HRM', '2021-02-06 09:39:36'),
(152, 'hrm.leave.destroy', 'Leave Delete', 'HRM', '2021-02-06 09:39:36'),
(153, 'hrm.leave.update', 'Leave Edit', 'HRM', '2021-02-06 09:39:36'),
(154, 'hrm.leave.show', 'Leave View', 'HRM', '2021-02-06 09:39:36'),
(155, 'hrm.leave.edit', 'Leave Edit', 'HRM', '2021-02-06 09:39:36'),
(156, 'hrm.policy', 'Policy View', 'HRM', '2021-02-06 09:39:36'),
(157, 'hrm.policy', 'Policy Create', 'HRM', '2021-02-06 09:39:36'),
(158, 'employee_attendance.index', 'Employee Attendance View', 'HRM', '2021-02-06 09:39:36'),
(159, 'employee_attendance.store', 'Employee Attendance Create', 'HRM', '2021-02-06 09:39:36'),
(160, 'employee_attendance.create', 'Employee Attendance Create', 'HRM', '2021-02-06 09:39:36'),
(161, 'employee_attendance.status', 'Employee Attendance Edit', 'HRM', '2021-02-06 09:39:36'),
(162, 'exam.index', 'Exam View', 'Exam', '2021-02-06 09:39:36'),
(163, 'exam.create', 'Exam Create', 'Exam', '2021-02-06 09:39:36'),
(164, 'exam.store', 'Exam Create', 'Exam', '2021-02-06 09:39:36'),
(165, 'exam.edit', 'Exam Edit', 'Exam', '2021-02-06 09:39:36'),
(166, 'exam.update', 'Exam Edit', 'Exam', '2021-02-06 09:39:36'),
(167, 'exam.status', 'Exam Edit', 'Exam', '2021-02-06 09:39:36'),
(168, 'exam.destroy', 'Exam Delete', 'Exam', '2021-02-06 09:39:36'),
(169, 'exam.grade.index', 'Grade View', 'Exam', '2021-02-06 09:39:36'),
(170, 'exam.grade.create', 'Grade Create', 'Exam', '2021-02-06 09:39:36'),
(171, 'exam.grade.store', 'Grade Create', 'Exam', '2021-02-06 09:39:36'),
(172, 'exam.grade.edit', 'Grade Edit', 'Exam', '2021-02-06 09:39:36'),
(173, 'exam.grade.update', 'Grade Edit', 'Exam', '2021-02-06 09:39:36'),
(174, 'exam.grade.destroy', 'Grade Delete', 'Exam', '2021-02-06 09:39:36'),
(175, 'exam.rule.index', 'Exam Rule View', 'Exam', '2021-02-06 09:39:36'),
(176, 'exam.rule.create', 'Exam Rule Create', 'Exam', '2021-02-06 09:39:36'),
(177, 'exam.rule.store', 'Exam Rule Create', 'Exam', '2021-02-06 09:39:36'),
(178, 'exam.rule.edit', 'Exam Rule Edit', 'Exam', '2021-02-06 09:39:36'),
(179, 'exam.rule.update', 'Exam Rule Edit', 'Exam', '2021-02-06 09:39:36'),
(180, 'exam.rule.destroy', 'Exam Rule Delete', 'Exam', '2021-02-06 09:39:36'),
(181, 'marks.index', 'Marks View', 'Exam', '2021-02-06 09:39:36'),
(182, 'marks.create', 'Marks Create', 'Exam', '2021-02-06 09:39:36'),
(183, 'marks.store', 'Marks Create', 'Exam', '2021-02-06 09:39:36'),
(184, 'marks.edit', 'Marks Edit', 'Exam', '2021-02-06 09:39:36'),
(185, 'marks.update', 'Marks Edit', 'Exam', '2021-02-06 09:39:36'),
(186, 'result.index', 'Result View', 'Exam', '2021-02-06 09:39:36'),
(187, 'result.create', 'Result Create', 'Exam', '2021-02-06 09:39:36'),
(188, 'result.delete', 'Result Delete', 'Exam', '2021-02-06 09:39:36'),
(189, 'promotion.create', 'Promotion Create', 'Exam', '2021-02-06 09:39:36'),
(190, 'promotion.store', 'Promotion Create', 'Exam', '2021-02-06 09:39:36'),
(191, 'report.student_monthly_attendance', 'Student Monthly Attendance View', 'Report', '2021-02-06 09:39:36'),
(192, 'report.student_list', 'Student List View', 'Report', '2021-02-06 09:39:36'),
(193, 'report.employee_list', 'Employee List View', 'Report', '2021-02-06 09:39:36'),
(194, 'report.employee_monthly_attendance', 'Employee Monthly Attendance View', 'Report', '2021-02-06 09:39:36');

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `regi_no` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `student_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `section_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `roll_no` int(11) DEFAULT NULL,
  `shift` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `card_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `board_regi_no` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_promoted` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0',
  `old_registration_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `regi_no`, `student_id`, `class_id`, `section_id`, `academic_year_id`, `roll_no`, `shift`, `card_no`, `board_regi_no`, `house`, `status`, `is_promoted`, `old_registration_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '211001', 1, 1, 12, 1, 1, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(2, '211002', 2, 1, 12, 1, 2, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(3, '211003', 3, 1, 12, 1, 3, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(4, '211004', 4, 1, 12, 1, 4, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(5, '211005', 5, 1, 12, 1, 5, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(6, '212001', 6, 2, 6, 1, 6, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(7, '212002', 7, 2, 6, 1, 7, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(8, '212003', 8, 2, 6, 1, 8, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(9, '212004', 9, 2, 6, 1, 9, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(10, '213001', 10, 3, 8, 1, 10, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(11, '213002', 11, 3, 8, 1, 11, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(12, '213003', 12, 3, 8, 1, 12, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(13, '214001', 13, 4, 11, 1, 13, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(14, '214002', 14, 4, 11, 1, 14, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL),
(15, '214003', 15, 4, 11, 1, 15, 'Morning', NULL, NULL, NULL, '1', '0', NULL, '2021-02-06 07:40:36', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL,
  `subject_fail_count` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`id`, `academic_year_id`, `class_id`, `registration_id`, `exam_id`, `total_marks`, `grade`, `point`, `subject_fail_count`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, 11, 202, 'F', '1.75', 2, '2021-02-06 07:40:46', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, 11, 224, 'F', '2.38', 1, '2021-02-06 07:40:46', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, 11, 207, 'F', '2.25', 1, '2021-02-06 07:40:46', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, 11, 188, 'F', '0.88', 3, '2021-02-06 07:40:46', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, 11, 131, 'F', '1.00', 2, '2021-02-06 07:40:46', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `result_combines`
--

CREATE TABLE `result_combines` (
  `id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `total_marks` int(11) NOT NULL,
  `grade` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `point` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_combines`
--

INSERT INTO `result_combines` (`id`, `registration_id`, `subject_id`, `exam_id`, `total_marks`, `grade`, `point`) VALUES
(1, 1, 11, 11, 90, 'A-', '3.50'),
(2, 1, 13, 11, 94, 'A-', '3.50'),
(3, 2, 11, 11, 49, 'D', '1.00'),
(4, 2, 13, 11, 92, 'A-', '3.50'),
(5, 3, 11, 11, 97, 'A-', '3.50'),
(6, 3, 13, 11, 70, 'C', '2.00'),
(7, 4, 11, 11, 42, 'F', '0.00'),
(8, 4, 13, 11, 100, 'A-', '3.50'),
(9, 5, 11, 11, 62, 'C', '2.00'),
(10, 5, 13, 11, 64, 'C', '2.00');

-- --------------------------------------------------------

--
-- Table structure for table `result_publish`
--

CREATE TABLE `result_publish` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `exam_id` int(10) UNSIGNED NOT NULL,
  `publish_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_publish`
--

INSERT INTO `result_publish` (`id`, `academic_year_id`, `class_id`, `exam_id`, `publish_date`) VALUES
(1, 1, 1, 11, '2021-02-06');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `deletable` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `deletable`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Admin', 0, '2021-02-06 07:39:35', '2021-02-06 07:39:35', NULL, 0, 0, NULL),
(2, 'Teacher', 0, '2021-02-06 07:39:35', '2021-02-06 07:39:35', NULL, 0, 0, NULL),
(3, 'Student', 0, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, 0, 0, NULL),
(4, 'Parents', 0, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, 0, 0, NULL),
(5, 'Accountant', 0, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, 0, 0, NULL),
(6, 'Librarian', 0, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, 0, 0, NULL),
(7, 'Receptionist', 0, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 2, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 3, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 4, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 5, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 6, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 7, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 8, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 22, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 23, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 24, '2021-02-06 07:39:36', '2021-02-06 07:39:36', NULL, NULL, NULL, NULL),
(1, 25, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 26, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 27, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 28, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 29, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 30, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 31, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 32, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 33, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 34, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 35, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 36, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 37, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 38, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 39, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 40, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 41, '2021-02-06 07:39:37', '2021-02-06 07:39:37', NULL, NULL, NULL, NULL),
(1, 42, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 43, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 44, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 45, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 46, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 47, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 48, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 49, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 50, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 51, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 52, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 53, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 54, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 55, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 56, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 57, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 58, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 59, '2021-02-06 07:39:38', '2021-02-06 07:39:38', NULL, NULL, NULL, NULL),
(1, 60, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 61, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 62, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 63, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 64, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 65, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 66, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 67, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 68, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 69, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 70, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 71, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 72, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 73, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 74, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 75, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 76, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 77, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 78, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 79, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 80, '2021-02-06 07:39:39', '2021-02-06 07:39:39', NULL, NULL, NULL, NULL),
(1, 81, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 82, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 83, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 84, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 85, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 86, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 87, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 88, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 89, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 90, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 91, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 92, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 93, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 94, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 95, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 96, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 97, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 98, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 99, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 100, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 101, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 102, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 103, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 104, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 105, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 106, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 107, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 108, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 109, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 110, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 111, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 112, '2021-02-06 07:39:40', '2021-02-06 07:39:40', NULL, NULL, NULL, NULL),
(1, 113, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 114, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 115, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 116, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 117, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 118, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 119, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 120, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 121, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 122, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 123, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 124, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 125, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 126, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 127, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 128, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 129, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 130, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 131, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 132, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 133, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 134, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 135, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 136, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 137, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 138, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 139, '2021-02-06 07:39:41', '2021-02-06 07:39:41', NULL, NULL, NULL, NULL),
(1, 140, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 141, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 142, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 143, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 144, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 145, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 146, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 147, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 148, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 149, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 150, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 151, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 152, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 153, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 154, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 155, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 156, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 157, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 158, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 159, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 160, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 161, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 162, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 163, '2021-02-06 07:39:42', '2021-02-06 07:39:42', NULL, NULL, NULL, NULL),
(1, 164, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 165, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 166, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 167, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 168, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 169, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 170, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 171, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 172, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 173, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 174, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 175, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 176, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 177, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 178, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 179, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 180, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 181, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 182, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 183, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 184, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 185, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 186, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 187, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 188, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 189, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 190, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 191, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 192, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 193, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(1, 194, '2021-02-06 07:39:43', '2021-02-06 07:39:43', NULL, NULL, NULL, NULL),
(2, 1, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 2, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 3, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 4, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 5, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 6, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 7, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(2, 8, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 1, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 2, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 3, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 4, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 5, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 6, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 7, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(3, 8, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(4, 1, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(4, 2, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(4, 3, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(4, 4, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(4, 5, '2021-02-06 07:39:44', '2021-02-06 07:39:44', NULL, NULL, NULL, NULL),
(4, 6, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(4, 7, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(4, 8, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 1, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 2, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 3, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 4, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 5, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 6, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 7, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(5, 8, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 1, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 2, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 3, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 4, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 5, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 6, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 7, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(6, 8, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(7, 1, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(7, 2, '2021-02-06 07:39:45', '2021-02-06 07:39:45', NULL, NULL, NULL, NULL),
(7, 3, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, NULL, NULL, NULL),
(7, 4, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, NULL, NULL, NULL),
(7, 5, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, NULL, NULL, NULL),
(7, 6, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, NULL, NULL, NULL),
(7, 7, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, NULL, NULL, NULL),
(7, 8, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sections`
--

CREATE TABLE `sections` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sections`
--

INSERT INTO `sections` (`id`, `name`, `capacity`, `class_id`, `teacher_id`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'T', 27, 9, 4, 'Fuga sit reprehenderit pariatur quisquam.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(2, 'Z', 24, 6, 2, 'Maxime et et occaecati tempore est nisi voluptatibus.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(3, 'D', 38, 8, 2, 'Quos dolorem quos minus quod.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(4, 'X', 24, 7, 1, 'Sed dicta et nihil aliquam.', '1', '2021-02-06 07:40:32', '2021-02-06 10:57:32', NULL, 1, 1, NULL),
(5, 'C', 20, 5, 6, 'Ipsa ipsa aperiam sed distinctio.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(6, 'L', 21, 2, 6, 'Sequi occaecati velit iste quae distinctio in.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(7, 'U', 25, 2, 4, 'Accusamus dicta sed ipsum repellat autem cupiditate excepturi illo.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(8, 'F', 38, 3, 6, 'Aliquid id earum veritatis ipsam placeat qui.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
(9, 'S', 38, 3, 3, 'Non inventore vel voluptas sit.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
(10, 'M', 25, 4, 3, 'Omnis labore omnis qui.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
(11, 'J', 38, 4, 4, 'Illum cupiditate aspernatur laboriosam magnam quibusdam expedita velit.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
(12, 'A', 31, 1, 3, 'Id aut est consequuntur ab natus laborum sit.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
(13, 'B', 32, 1, 6, 'Voluptatem alias quo laborum et rerum.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
(14, 'C', 29, 1, 4, 'Eligendi exercitationem eaque consequatur earum ut possimus dolor pariatur.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL);

--
-- Triggers `sections`
--
DELIMITER $$
CREATE TRIGGER `section__ai` AFTER INSERT ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'insert', NULL, d.* 
    FROM sections AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `section__au` AFTER UPDATE ON `sections` FOR EACH ROW INSERT INTO section_history SELECT 'update', NULL, d.*
    FROM sections AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `section_history`
--

CREATE TABLE `section_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `capacity` int(11) NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `note` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `section_history`
--

INSERT INTO `section_history` (`action`, `revision`, `id`, `name`, `capacity`, `class_id`, `teacher_id`, `note`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'T', 27, 9, 4, 'Fuga sit reprehenderit pariatur quisquam.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 2, 'Z', 24, 6, 2, 'Maxime et et occaecati tempore est nisi voluptatibus.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 3, 'D', 38, 8, 2, 'Quos dolorem quos minus quod.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 4, 'X', 24, 7, 1, 'Sed dicta et nihil aliquam.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 5, 'C', 20, 5, 6, 'Ipsa ipsa aperiam sed distinctio.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 6, 'L', 21, 2, 6, 'Sequi occaecati velit iste quae distinctio in.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 7, 'U', 25, 2, 4, 'Accusamus dicta sed ipsum repellat autem cupiditate excepturi illo.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
('insert', 1, 8, 'F', 38, 3, 6, 'Aliquid id earum veritatis ipsam placeat qui.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 9, 'S', 38, 3, 3, 'Non inventore vel voluptas sit.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 10, 'M', 25, 4, 3, 'Omnis labore omnis qui.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 11, 'J', 38, 4, 4, 'Illum cupiditate aspernatur laboriosam magnam quibusdam expedita velit.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 12, 'A', 31, 1, 3, 'Id aut est consequuntur ab natus laborum sit.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 13, 'B', 32, 1, 6, 'Voluptatem alias quo laborum et rerum.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 14, 'C', 29, 1, 4, 'Eligendi exercitationem eaque consequatur earum ut possimus dolor pariatur.', '1', '2021-02-06 07:40:32', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('update', 2, 4, 'X', 24, 7, 1, 'Sed dicta et nihil aliquam.', '0', '2021-02-06 07:40:32', '2021-02-06 10:57:25', NULL, 1, 1, NULL),
('update', 3, 4, 'X', 24, 7, 1, 'Sed dicta et nihil aliquam.', '1', '2021-02-06 07:40:32', '2021-02-06 10:57:32', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `site_metas`
--

CREATE TABLE `site_metas` (
  `id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `site_metas`
--

INSERT INTO `site_metas` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'settings', '{\"logo\":\"NG6LpdqNnAmiMEcXpYXHmB5aKUt5tJrfGDTIIeTt.jpeg\",\"logo2x\":\"KztJu5DNq4HkYmKkdjzrXTgUg06cFs38zsAI8adF.jpeg\",\"favicon\":\"IwwjdufygmNHJ4VO3lz2B3jrlug6gmsbokZebBNj.png\",\"name\":\"SD Muhammadiyah 8 & 10\",\"short_name\":\"SD Muh 8 & 10\",\"facebook\":\"#\",\"instagram\":\"#\",\"twitter\":\"#\",\"youtube\":\"#\"}', '2021-02-06 07:40:06', '2021-02-07 00:46:16', NULL, 0, 1, NULL),
(2, 'timeline', '{\"t\":\"We Start Here\",\"d\":\"Lorem ipsum\",\"y\":\"2006\"}', '2021-02-06 07:40:06', '2021-02-06 07:40:06', NULL, 0, 0, NULL),
(3, 'timeline', '{\"t\":\"Top Score\",\"d\":\"We achive top result score in the state\",\"y\":\"2010\"}', '2021-02-06 07:40:06', '2021-02-06 07:40:06', NULL, 0, 0, NULL),
(4, 'faq', '{\"q\":\"How to apply for adminission?\",\"a\":\"Just e-mail us, or contact on hot line.\"}', '2021-02-06 07:40:06', '2021-02-06 07:40:06', NULL, 0, 0, NULL),
(5, 'contact_address', 'Jl.cempaka II / 29 Banjarmasin, Mawar, Kec. Banjarmasin Tengah, Kota Banjarmasin Prov. Kalimantan Selatan', '2021-02-06 07:40:06', '2021-02-07 00:51:51', NULL, 0, 1, NULL),
(6, 'contact_phone', '(0511)4367766', '2021-02-06 07:40:06', '2021-02-07 00:51:51', NULL, 0, 1, NULL),
(7, 'contact_email', 'contact@gmail.com', '2021-02-06 07:40:06', '2021-02-07 00:51:51', NULL, 0, 1, NULL),
(8, 'contact_latlong', '-3.3219075089209675, 114.58546008022965', '2021-02-06 07:40:06', '2021-02-07 00:51:51', NULL, 0, 1, NULL),
(9, 'gallery', '1.jpg', '2021-02-06 07:40:06', '2021-02-06 07:40:06', NULL, 0, 0, NULL),
(10, 'gallery', '2.jpg', '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL),
(11, 'gallery', '3.jpg', '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL),
(12, 'statistic', '4000,150,18000,9800', '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL),
(13, 'our_service_text', 'Lorem ipsum', '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `subtitle`, `image`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'First slider image', 'This is subtitle 1', '1.jpg', 1, '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL),
(2, 'Second slider image', 'This is subtitle 2', '2.jpg', 2, '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nick_name` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `gender` enum('1','2') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `religion` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `blood_group` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nationality` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_no` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `extra_activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `note` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `father_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mother_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `guardian_phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present_address` varchar(500) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permanent_address` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  `sms_receive_no` smallint(6) NOT NULL DEFAULT 1,
  `siblings` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `user_id`, `name`, `nick_name`, `dob`, `gender`, `religion`, `blood_group`, `nationality`, `photo`, `email`, `phone_no`, `extra_activity`, `note`, `father_name`, `father_phone_no`, `mother_name`, `mother_phone_no`, `guardian`, `guardian_phone_no`, `present_address`, `permanent_address`, `sms_receive_no`, `siblings`, `signature`, `status`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 15, 'Mrs. Rae Kreiger DDS', NULL, '23/10/2013', '1', '1', '3', 'Antarctica (the territory South of 60 deg S)', NULL, 'desmond18@example.org', '+3374456758478', '', '', 'Beau Armstrong', '+5896568338088', 'Dr. Priscilla Kautzer V', '+8378905412864', NULL, NULL, '6973 Marlene Knoll Apt. 121\nLake Ronton, ND 09265-2222', '318 Haley Freeway\nPredovicshire, DE 32760', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:38', NULL, 1, 0, NULL),
(2, 16, 'Theodore Homenick III', NULL, '27/10/2003', '1', '5', '6', 'Tokelau', NULL, 'landen25@example.com', '+7935261764128', '', '', 'Heber Larson MD', '+3192417608559', 'Elyse Pouros', '+8783130494612', NULL, NULL, '176 Alexis Burgs Apt. 174\nLefflerside, TN 15310-7511', '9460 Miller Springs\nWest Delpha, TN 57872', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(3, 17, 'Johathan Hyatt Jr.', NULL, '07/07/2005', '2', '1', '4', 'Tunisia', NULL, 'osinski.ilene@example.org', '+6851224700913', '', '', 'Richmond Gerhold', '+7304036677165', 'Isabelle Gerhold', '+2665353713568', NULL, NULL, '8976 Isabelle Forges Suite 669\nTrevionhaven, GA 37740', '246 Hoppe Hollow Suite 852\nPourosberg, ID 31437-8115', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(4, 18, 'Prof. Hulda Klocko', NULL, '01/02/2004', '1', '5', '7', 'San Marino', NULL, 'andres.hegmann@example.org', '+4818316530195', '', '', 'Prof. Mitchel Purdy', '+1181590208023', 'Dr. Sasha Renner', '+5980896833385', NULL, NULL, '9106 Violet Squares\nUllrichville, TN 33759', '66488 Wilber Roads\nNorth Rosellabury, CA 01931', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(5, 19, 'Martin Schaden', NULL, '27/11/2014', '2', '5', '7', 'Timor-Leste', NULL, 'maggio.penelope@example.com', '+3580947680232', '', '', 'Prof. Anibal Schimmel II', '+9632434739638', 'Miss Abby Kirlin DVM', '+4275347376917', NULL, NULL, '561 Hansen Port\nPort Otiliaview, WY 94806', '8489 Delta Terrace Suite 614\nJessycahaven, HI 30527-4907', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(6, 20, 'Brice Morissette', NULL, '12/11/2018', '2', '2', '8', 'Papua New Guinea', NULL, 'bobbie43@example.net', '+2797040758957', '', '', 'Zander Windler V', '+7983548354050', 'Marlen Gulgowski', '+9716694979409', NULL, NULL, '2170 Trantow Burg Apt. 266\nEast Emilton, DE 57657', '135 Prosacco Keys Apt. 948\nNew Lisette, MS 67818-9910', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(7, 21, 'Dr. Randal Brekke', NULL, '13/07/2016', '1', '2', '8', 'Puerto Rico', NULL, 'xblock@example.net', '+1686692934386', '', '', 'Forest Reinger', '+4447264947705', 'Thalia Sporer', '+5715125310098', NULL, NULL, '716 Wehner Lakes Apt. 197\nConnellytown, MI 87546', '8841 Edison Court Suite 222\nMaidaview, MI 50959', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(8, 22, 'Libby Littel', NULL, '07/12/2017', '2', '5', '1', 'Azerbaijan', NULL, 'carli.upton@example.org', '+6994922752553', '', '', 'Cole Simonis I', '+7260578637069', 'Ms. Amalia Herzog II', '+1283014682803', NULL, NULL, '3894 Cartwright Locks\nLefflertown, DC 95094-8296', '2969 Lind Plaza Apt. 174\nGailton, HI 49753-1733', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(9, 23, 'Chanel Ullrich', NULL, '25/08/2018', '1', '2', '7', 'Saint Helena', NULL, 'hamill.kamren@example.org', '+8465557104551', '', '', 'Julio Parker', '+9101903918889', 'Keara Walsh', '+4852002254734', NULL, NULL, '69661 Grimes Causeway Apt. 225\nWest Zena, LA 67702', '255 Anya Junctions\nLebsackfort, AK 39294-1125', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(10, 24, 'Hermina Kihn', NULL, '17/02/2014', '2', '5', '5', 'Guernsey', NULL, 'trudie.johnson@example.net', '+7792793955097', '', '', 'Dr. Marcellus Jenkins', '+3967586027818', 'Michelle Trantow', '+4999974126239', NULL, NULL, '7035 Sydnee Circles\nSouth Manleyshire, VA 70257', '85059 Zboncak Drive\nWest Jaunita, MT 90686', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(11, 25, 'Logan Leannon', NULL, '28/04/2019', '1', '2', '5', 'Senegal', NULL, 'omari.veum@example.net', '+4992758324231', '', '', 'Jamison Davis', '+2017103777668', 'Lue Greenholt', '+5561193494240', NULL, NULL, '8176 Kris Mills\nRempelfurt, HI 83600', '224 Yundt Mills Apt. 642\nPort Linneamouth, MO 19702-7743', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(12, 26, 'Carley Gibson', NULL, '20/05/2012', '2', '4', '2', 'Netherlands Antilles', NULL, 'boyer.roy@example.com', '+2918437274044', '', '', 'Reese Konopelski', '+5565993396979', 'Arlene Schoen', '+8663254413820', NULL, NULL, '40649 Sanford Prairie\nMuellerburgh, NM 53290', '48477 Hauck Streets Suite 828\nRosenbaumland, OH 33598', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(13, 27, 'Dr. Brooke Lynch', NULL, '29/08/2019', '1', '2', '5', 'Eritrea', NULL, 'elias.gusikowski@example.net', '+5355102281063', '', '', 'Gonzalo Jones', '+1346317438606', 'Rubie Collins', '+1510830334451', NULL, NULL, '52308 Crystal Point\nFredmouth, OR 81443-6513', '61030 Koepp Views\nAlekview, FL 55616-9399', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(14, 28, 'Mrs. Harmony Kris IV', NULL, '05/10/2010', '1', '5', '1', 'Morocco', NULL, 'reilly.genesis@example.com', '+8534656471486', '', '', 'Reid Walsh', '+2900499832584', 'Janae Robel', '+9096286236566', NULL, NULL, '986 Tina Hills\nWest Claudieport, NC 48857', '4351 Ewell Cliff\nEast Mckayla, AZ 20406-1459', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(15, 29, 'Mr. Kurtis Sawayn', NULL, '05/07/2020', '1', '3', '1', 'El Salvador', NULL, 'yasmin.leuschke@example.com', '+3430864539689', '', '', 'Prof. Hermann Kassulke DDS', '+2882030554951', 'Ms. Maggie Walker I', '+7125554270100', NULL, NULL, '1704 Murphy Corners\nWatsicabury, NY 33677-0940', '60452 Roselyn Loaf Apt. 976\nNew Paolohaven, TN 38486-4241', 1, NULL, NULL, '1', '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_attendances`
--

CREATE TABLE `student_attendances` (
  `id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `class_id` int(10) UNSIGNED NOT NULL,
  `registration_id` int(10) UNSIGNED NOT NULL,
  `attendance_date` date NOT NULL,
  `in_time` datetime NOT NULL,
  `out_time` datetime NOT NULL,
  `staying_hour` time NOT NULL,
  `status` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `present` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_attendances`
--

INSERT INTO `student_attendances` (`id`, `academic_year_id`, `class_id`, `registration_id`, `attendance_date`, `in_time`, `out_time`, `staying_hour`, `status`, `present`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, 1, 1, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(2, 1, 1, 2, '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(3, 1, 1, 3, '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(4, 1, 1, 4, '2021-01-23', '2021-01-23 00:00:00', '2021-01-23 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(5, 1, 1, 5, '2021-01-23', '2021-01-23 08:00:00', '2021-01-23 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(6, 1, 1, 1, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(7, 1, 1, 2, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(8, 1, 1, 3, '2021-01-24', '2021-01-24 08:00:00', '2021-01-24 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(9, 1, 1, 4, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(10, 1, 1, 5, '2021-01-24', '2021-01-24 00:00:00', '2021-01-24 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(11, 1, 1, 1, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(12, 1, 1, 2, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(13, 1, 1, 3, '2021-01-25', '2021-01-25 00:00:00', '2021-01-25 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(14, 1, 1, 4, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(15, 1, 1, 5, '2021-01-25', '2021-01-25 08:00:00', '2021-01-25 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(16, 1, 1, 1, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(17, 1, 1, 2, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(18, 1, 1, 3, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(19, 1, 1, 4, '2021-01-26', '2021-01-26 00:00:00', '2021-01-26 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(20, 1, 1, 5, '2021-01-26', '2021-01-26 08:00:00', '2021-01-26 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(21, 1, 1, 1, '2021-01-27', '2021-01-27 00:00:00', '2021-01-27 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(22, 1, 1, 2, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(23, 1, 1, 3, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(24, 1, 1, 4, '2021-01-27', '2021-01-27 08:00:00', '2021-01-27 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(25, 1, 1, 5, '2021-01-27', '2021-01-27 00:00:00', '2021-01-27 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(26, 1, 1, 1, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(27, 1, 1, 2, '2021-01-28', '2021-01-28 08:00:00', '2021-01-28 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(28, 1, 1, 3, '2021-01-28', '2021-01-28 08:00:00', '2021-01-28 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(29, 1, 1, 4, '2021-01-28', '2021-01-28 08:00:00', '2021-01-28 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(30, 1, 1, 5, '2021-01-28', '2021-01-28 00:00:00', '2021-01-28 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(31, 1, 1, 1, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(32, 1, 1, 2, '2021-01-30', '2021-01-30 08:00:00', '2021-01-30 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(33, 1, 1, 3, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(34, 1, 1, 4, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(35, 1, 1, 5, '2021-01-30', '2021-01-30 00:00:00', '2021-01-30 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(36, 1, 1, 1, '2021-01-31', '2021-01-31 08:00:00', '2021-01-31 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(37, 1, 1, 2, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(38, 1, 1, 3, '2021-01-31', '2021-01-31 08:00:00', '2021-01-31 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(39, 1, 1, 4, '2021-01-31', '2021-01-31 00:00:00', '2021-01-31 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(40, 1, 1, 5, '2021-01-31', '2021-01-31 08:00:00', '2021-01-31 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(41, 1, 1, 1, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(42, 1, 1, 2, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(43, 1, 1, 3, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(44, 1, 1, 4, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(45, 1, 1, 5, '2021-02-01', '2021-02-01 08:00:00', '2021-02-01 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(46, 1, 1, 1, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(47, 1, 1, 2, '2021-02-02', '2021-02-02 00:00:00', '2021-02-02 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(48, 1, 1, 3, '2021-02-02', '2021-02-02 08:00:00', '2021-02-02 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(49, 1, 1, 4, '2021-02-02', '2021-02-02 00:00:00', '2021-02-02 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(50, 1, 1, 5, '2021-02-02', '2021-02-02 00:00:00', '2021-02-02 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(51, 1, 1, 1, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(52, 1, 1, 2, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(53, 1, 1, 3, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(54, 1, 1, 4, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(55, 1, 1, 5, '2021-02-03', '2021-02-03 08:00:00', '2021-02-03 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(56, 1, 1, 1, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(57, 1, 1, 2, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(58, 1, 1, 3, '2021-02-04', '2021-02-04 08:00:00', '2021-02-04 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(59, 1, 1, 4, '2021-02-04', '2021-02-04 00:00:00', '2021-02-04 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(60, 1, 1, 5, '2021-02-04', '2021-02-04 08:00:00', '2021-02-04 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(61, 1, 1, 1, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(62, 1, 1, 2, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(63, 1, 1, 3, '2021-02-06', '2021-02-06 08:00:00', '2021-02-06 13:00:00', '05:00:00', '', '1', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(64, 1, 1, 4, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL),
(65, 1, 1, 5, '2021-02-06', '2021-02-06 00:00:00', '2021-02-06 00:00:00', '00:00:00', '', '0', '2021-02-06 07:40:42', NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_info_log`
--

CREATE TABLE `student_info_log` (
  `student_id` int(10) UNSIGNED NOT NULL,
  `academic_year_id` int(10) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `meta_value` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `student_subjects`
--

CREATE TABLE `student_subjects` (
  `registration_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL,
  `subject_type` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_subjects`
--

INSERT INTO `student_subjects` (`registration_id`, `subject_id`, `subject_type`) VALUES
(1, 11, 1),
(1, 12, 1),
(1, 13, 1),
(1, 14, 1),
(1, 15, 1),
(1, 16, 1),
(2, 11, 1),
(2, 12, 1),
(2, 13, 1),
(2, 14, 1),
(2, 15, 1),
(2, 16, 1),
(3, 11, 1),
(3, 12, 1),
(3, 13, 1),
(3, 14, 1),
(3, 15, 1),
(3, 16, 1),
(4, 11, 1),
(4, 12, 1),
(4, 13, 1),
(4, 14, 1),
(4, 15, 1),
(4, 16, 1),
(5, 11, 1),
(5, 12, 1),
(5, 13, 1),
(5, 14, 1),
(5, 15, 1),
(5, 16, 1);

-- --------------------------------------------------------

--
-- Table structure for table `st_subjects_log`
--

CREATE TABLE `st_subjects_log` (
  `registration_id` int(10) UNSIGNED NOT NULL,
  `log` text COLLATE utf8_unicode_ci NOT NULL,
  `updated_by` int(10) UNSIGNED NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `exclude_in_result` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `code`, `type`, `class_id`, `status`, `order`, `exclude_in_result`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Harum sapiente non iste.', '120', '2', 10, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 09:33:40', NULL, 1, 1, NULL),
(2, 'Aut quo quasi esse.', '187', '2', 5, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(3, 'Quod sequi.', '108', '1', 9, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(4, 'Et ad quis.', '156', '1', 5, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(5, 'Unde ut quidem.', '130', '2', 7, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(6, 'Quia animi impedit.', '129', '2', 3, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(7, 'Architecto rerum natus.', '136', '1', 7, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(8, 'Atque non magnam.', '105', '1', 6, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(9, 'Eum eum molestiae.', '154', '1', 9, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(10, 'Nostrum eius cumque.', '150', '2', 8, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
(11, 'Bangla 1st', '101', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(12, 'Bangla 2nd', '102', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(13, 'English 1st', '107', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(14, 'English 2nd', '108', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(15, 'Math', '111', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(16, 'Computer', '112', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(17, 'Bangla 1st', '101', '1', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(18, 'Magic Study', '102', '3', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(19, 'English 1st', '107', '1', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(20, 'Drawing', '108', '3', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(21, 'Math', '111', '1', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
(22, 'Computer', '112', '2', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:36', NULL, 1, 0, NULL);

--
-- Triggers `subjects`
--
DELIMITER $$
CREATE TRIGGER `subject_ai` AFTER INSERT ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'insert', NULL, d.* 
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `subject_au` AFTER UPDATE ON `subjects` FOR EACH ROW INSERT INTO subject_history SELECT 'update', NULL, d.*
    FROM subjects AS d WHERE d.id = NEW.id
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subject_history`
--

CREATE TABLE `subject_history` (
  `action` varchar(8) COLLATE utf8_unicode_ci DEFAULT 'insert',
  `revision` int(6) NOT NULL,
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `class_id` int(10) UNSIGNED NOT NULL,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `order` smallint(5) UNSIGNED NOT NULL DEFAULT 0,
  `exclude_in_result` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_history`
--

INSERT INTO `subject_history` (`action`, `revision`, `id`, `name`, `code`, `type`, `class_id`, `status`, `order`, `exclude_in_result`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
('insert', 1, 1, 'Harum sapiente non iste.', '120', '2', 10, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:33', NULL, 1, 0, NULL),
('insert', 1, 2, 'Aut quo quasi esse.', '187', '2', 5, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 3, 'Quod sequi.', '108', '1', 9, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 4, 'Et ad quis.', '156', '1', 5, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 5, 'Unde ut quidem.', '130', '2', 7, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 6, 'Quia animi impedit.', '129', '2', 3, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 7, 'Architecto rerum natus.', '136', '1', 7, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 8, 'Atque non magnam.', '105', '1', 6, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 9, 'Eum eum molestiae.', '154', '1', 9, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 10, 'Nostrum eius cumque.', '150', '2', 8, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:34', NULL, 1, 0, NULL),
('insert', 1, 11, 'Bangla 1st', '101', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 12, 'Bangla 2nd', '102', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 13, 'English 1st', '107', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 14, 'English 2nd', '108', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 15, 'Math', '111', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 16, 'Computer', '112', '1', 1, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 17, 'Bangla 1st', '101', '1', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 18, 'Magic Study', '102', '3', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 19, 'English 1st', '107', '1', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 20, 'Drawing', '108', '3', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 21, 'Math', '111', '1', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:35', NULL, 1, 0, NULL),
('insert', 1, 22, 'Computer', '112', '2', 2, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 07:40:36', NULL, 1, 0, NULL),
('update', 2, 1, 'Harum sapiente non iste.', '120', '2', 10, '0', 0, 0, '2021-02-06 07:40:33', '2021-02-06 09:33:39', NULL, 1, 1, NULL),
('update', 3, 1, 'Harum sapiente non iste.', '120', '2', 10, '1', 0, 0, '2021-02-06 07:40:33', '2021-02-06 09:33:40', NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_profiles`
--

CREATE TABLE `teacher_profiles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `designation` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `qualification` longtext COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_profiles`
--

INSERT INTO `teacher_profiles` (`id`, `name`, `designation`, `image`, `description`, `qualification`, `facebook`, `instagram`, `twitter`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Fakir Chand', 'Headmaster', '1.jpg', 'Super cool boy!', 'M.A in English', '#', '#', '#', '2021-02-06 07:40:08', '2021-02-06 07:40:08', NULL, 0, 0, NULL),
(2, 'Nosimon Beagum', 'Class Teacher', '2.jpg', '', 'Hons in English', '#', '#', '#', '2021-02-06 07:40:08', '2021-02-06 07:40:08', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subjects`
--

CREATE TABLE `teacher_subjects` (
  `teacher_id` int(10) UNSIGNED NOT NULL,
  `subject_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `teacher_subjects`
--

INSERT INTO `teacher_subjects` (`teacher_id`, `subject_id`) VALUES
(4, 1),
(2, 2),
(3, 3),
(5, 4),
(4, 5),
(1, 6),
(3, 7),
(6, 8),
(4, 9),
(6, 10),
(3, 11),
(3, 12),
(4, 13),
(4, 14),
(3, 15),
(5, 16),
(6, 17),
(5, 18),
(6, 19),
(1, 20),
(2, 21),
(4, 22);

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` int(10) UNSIGNED NOT NULL,
  `writer` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `comments` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `writer`, `comments`, `avatar`, `order`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Shadhin', 'Awesome Academy', NULL, 1, '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL),
(2, 'HRS', 'Great school', NULL, 2, '2021-02-06 07:40:07', '2021-02-06 07:40:07', NULL, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone_no` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `force_logout` tinyint(1) NOT NULL DEFAULT 0,
  `status` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `is_super_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `phone_no`, `password`, `remember_token`, `force_logout`, `status`, `is_super_admin`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 'Super Admin', 'superadmin', 'superadmin@cloudschoolbd.com', NULL, '$2y$10$EaAqreyuygNQfgQ.PXTx4O4z1Kk4E15UA5wPiLgXSrOrSgDMX/CGi', 'XFWPYABgMgdOpybrtF0GRkY0HG0vWr6qQBvf8GjSA0yjunPle0XZwxRHAzDq', 0, '1', 1, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, 0, 1, NULL),
(2, 'Mr. admin', 'admin', 'admin@cloudschoolbd.com', NULL, '$2y$10$QSw2FcpJ.4zu7FLFhfE2zO7ham5lTtD30BK9sEYKXOw.hMYQ34G4O', NULL, 0, '1', 0, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, 0, 0, NULL),
(3, 'Miss Kayla Nolan DVM', 'dax.quitzon', 'batz.narciso@example.org', NULL, '$2y$10$IEzwyUEMHuJ6xvAa5zW4IusuiGyQJyaJywQrD0m44txd.hnEjasu.', 'SujeTVmOAp', 0, '1', 0, '2021-02-06 07:40:27', '2021-02-06 07:40:27', NULL, 1, 0, NULL),
(4, 'Ms. Breanna Streich MD', 'ernser.marilyne', 'brandi.gleichner@example.com', NULL, '$2y$10$3PgmaH1aAFHBZN2Jfnoq2uY1CdWCrCqFH8fJkbdQRkpgi1Q1Kl06e', 'C8T5CZV3DH', 0, '1', 0, '2021-02-06 07:40:27', '2021-02-06 07:40:28', NULL, 1, 0, NULL),
(5, 'Kamille Cassin DVM', 'maurine68', 'alisha.roberts@example.org', NULL, '$2y$10$W.PsEIZ.EuG9w8bqrfUjEuhqJBmmKpoVA.9VVxJlIKOFhREmiHOoK', 'uc3hftfykZ', 0, '1', 0, '2021-02-06 07:40:27', '2021-02-06 07:40:28', NULL, 1, 0, NULL),
(6, 'Cortez Sawayn', 'ufunk', 'mateo47@example.net', NULL, '$2y$10$YtMuhHyAhGi1mEw6RoBw3ufToYrh3783Uo2x7bJwn7Xt45dK5W/9u', 'gSxCXPoXSH', 0, '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:29', NULL, 1, 0, NULL),
(7, 'George Dicki', 'vonrueden.georgiana', 'twaelchi@example.net', NULL, '$2y$10$T2ls25YtvRc2J90qKJIVZeB7XiQmmfAJ7eSZJ2vdx47320MqK1D.6', 'JFuj7shAhf', 0, '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:29', NULL, 1, 0, NULL),
(8, 'Baylee Jakubowski', 'murphy.harley', 'bryana.little@example.com', NULL, '$2y$10$OllzpGxn4VMiGg855OM9GepY5p7NcoSSfEVq9akeF549WS6xjTutS', 'bzbrlZQKk8', 0, '1', 0, '2021-02-06 07:40:29', '2021-02-06 07:40:29', NULL, 1, 0, NULL),
(9, 'Nicola Wilderman Jr.', 'eichmann.libby', 'cartwright.josefina@example.net', NULL, '$2y$10$mItlM6tYGxqcuggZ2h.gzOMTlf4.Me1ztwBRw/ln7Fh/JXfoLCldO', 'gr0EnJZABn', 0, '1', 0, '2021-02-06 07:40:30', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(10, 'Francisco Schultz', 'pouros.bertha', 'fredrick.strosin@example.com', NULL, '$2y$10$rSu26u4GNWfsDDANXzfNceMR4JYm4B0mH1prUyz7LQ/7FhV/xr4t6', 'jTVg4thGD7', 0, '1', 0, '2021-02-06 07:40:30', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(11, 'Dahlia Ledner', 'jazmyn48', 'buford38@example.net', NULL, '$2y$10$Fq9UbG1gHj1MvgPjBnFnWuSIo4k7LanotZTTZOq142Jiq/3zRVH9m', 'VHhXBLaLvy', 0, '1', 0, '2021-02-06 07:40:30', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(12, 'Prof. Katelynn Paucek', 'weissnat.penelope', 'ritchie.arch@example.net', NULL, '$2y$10$qaZN0nkfdoPGPmLcfyxMK.ETfb0/6RKpSI/OfX8iKp3NM6EPwya8.', 'Dl3cfGB4dS', 0, '1', 0, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(13, 'Mr. Kale Kub', 'angelina70', 'ipollich@example.net', NULL, '$2y$10$52UkgpGznB/xkM2VRBJxSOAHDSpjKaYNtEHX8VzFhvQU18ttJOZx6', 'hluwxCB5dN', 0, '1', 0, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(14, 'Zachery Douglas', 'cdickinson', 'dan.senger@example.com', NULL, '$2y$10$kw2hKA10Xd219EK0t5zYoe.otp3sBeTcijIkOc6hCj8chDCiXUjh6', 'e3izOnWpzM', 0, '1', 0, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(15, 'Harvey Weimann', 'fannie.gutkowski', 'desmond18@example.org', NULL, '$2y$10$OeOtrUPF3pM0XskTSr5yUeaUXkcvR3ofzp8Bbf5ppFI3oSsWTW80K', '7x93vAAC0u', 0, '1', 0, '2021-02-06 07:40:36', '2021-02-06 07:40:36', NULL, 1, 0, NULL),
(16, 'Nichole Lowe', 'tomasa84', 'landen25@example.com', NULL, '$2y$10$ArBKkk8KWo/AbxlS65plL.WxDun5TN.c4lXZEtDcm5Hy5HvYFJJn.', '7vIo6qni3O', 0, '1', 0, '2021-02-06 07:40:36', '2021-02-06 07:40:36', NULL, 1, 0, NULL),
(17, 'Dr. Jed Hyatt', 'hane.amaya', 'osinski.ilene@example.org', NULL, '$2y$10$GvmMgKum6MNvslAXU0T4UOzn7ruOszXEgre.9gx5tPRlAILzX53pS', 'kJuzdEDzl8', 0, '1', 0, '2021-02-06 07:40:36', '2021-02-06 07:40:36', NULL, 1, 0, NULL),
(18, 'Zoila Mosciski', 'franecki.richmond', 'andres.hegmann@example.org', NULL, '$2y$10$g3Rqvl6o3GCE5Cjyy7all.qDlYd3iyoR6eUI9DpC96VDamnjpDF5i', 'RaHT9chcTa', 0, '1', 0, '2021-02-06 07:40:36', '2021-02-06 07:40:36', NULL, 1, 0, NULL),
(19, 'Nick Sporer IV', 'yhoppe', 'maggio.penelope@example.com', NULL, '$2y$10$JmQAlfg1UF/slyYw7BoNRe.ej0UTSJSAlTuZuDTI4eXQg21oT4o5u', 'dR7t8cBNRs', 0, '1', 0, '2021-02-06 07:40:36', '2021-02-06 07:40:36', NULL, 1, 0, NULL),
(20, 'Garrick Lynch', 'roberta.cummerata', 'bobbie43@example.net', NULL, '$2y$10$dQBdieuqoICmaO1FrYH0o.8SZ8c0NcDxXul.j3DFL.INgYJWJoe9C', '2qWDkioGvw', 0, '1', 0, '2021-02-06 07:40:37', '2021-02-06 07:40:37', NULL, 1, 0, NULL),
(21, 'Scarlett Rempel', 'fisher.mabel', 'xblock@example.net', NULL, '$2y$10$1PP7pDkMUukSXNjIix4LH.8iIxzbQOFXsqkVzpFLN8j2ibG.v2D6W', 'xvzBWI5HnC', 0, '1', 0, '2021-02-06 07:40:37', '2021-02-06 07:40:37', NULL, 1, 0, NULL),
(22, 'Elvie Funk IV', 'vdenesik', 'carli.upton@example.org', NULL, '$2y$10$Ql1XFAKsJSZdinxBvr/K5OaIXsiAxPeoKIIgNdoih/DdbCbztg3Q.', 'AyOKxQ8yg8', 0, '1', 0, '2021-02-06 07:40:37', '2021-02-06 07:40:37', NULL, 1, 0, NULL),
(23, 'Ernest Huel', 'sigurd96', 'hamill.kamren@example.org', NULL, '$2y$10$316cEMok.vH0Kivach0WQ.vEPGhTUM.OmyyhOHubvzxSBH5TXHQdi', 'Tzt1rj4IEY', 0, '1', 0, '2021-02-06 07:40:37', '2021-02-06 07:40:37', NULL, 1, 0, NULL),
(24, 'Herminio Mertz', 'gustave.armstrong', 'trudie.johnson@example.net', NULL, '$2y$10$UYlzElZPvk25UcUykS.7C.WmF9LuXwRoKmbi6R2UKUkLbC7/TW0zq', 'W5J7eXRT7Y', 0, '1', 0, '2021-02-06 07:40:38', '2021-02-06 07:40:38', NULL, 1, 0, NULL),
(25, 'Ms. Zoila Wiegand', 'daphnee.rempel', 'omari.veum@example.net', NULL, '$2y$10$szpm85jyWJv/mVSp/gazZOz4T3tPOExx5f1n2x8bR/Ryxx8L7htuW', '2cY8FnyDGG', 0, '1', 0, '2021-02-06 07:40:38', '2021-02-06 07:40:38', NULL, 1, 0, NULL),
(26, 'Bell Lindgren', 'soledad.huels', 'boyer.roy@example.com', NULL, '$2y$10$m.uV9OdhMryS9XylOs/39eOWzB3gnxHFM.S5mw8qHkLQT1hEyNQFK', 'vscCFA3mfn', 0, '1', 0, '2021-02-06 07:40:38', '2021-02-06 07:40:38', NULL, 1, 0, NULL),
(27, 'Miss Cleora Bailey', 'mueller.jamaal', 'elias.gusikowski@example.net', NULL, '$2y$10$M.qo3kiU0U9Op3haoJToy.6eLUQx9U6rUkYG8cxXLnQPEFzY.5DSe', 'frv5kcGOxc', 0, '1', 0, '2021-02-06 07:40:38', '2021-02-06 07:40:38', NULL, 1, 0, NULL),
(28, 'Mariane Greenfelder', 'naomie.carroll', 'reilly.genesis@example.com', NULL, '$2y$10$MHP2HuMOjbn/A9rTlXoFDu.YIS89nVD6iAoBAz74ECLibSvb2y9.6', 'jg3qMVdvx1', 0, '1', 0, '2021-02-06 07:40:38', '2021-02-06 07:40:38', NULL, 1, 0, NULL),
(29, 'Jayde Towne MD', 'lockman.marcellus', 'yasmin.leuschke@example.com', NULL, '$2y$10$AfPNv6n29lp2CDvLzvvsguKwKMje6xhAUIc7MCLsf2fVIkVg5c.jq', 'zJMA9cZ2ib', 0, '1', 0, '2021-02-06 07:40:38', '2021-02-06 07:40:38', NULL, 1, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_permissions`
--

CREATE TABLE `users_permissions` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` int(10) UNSIGNED DEFAULT NULL,
  `updated_by` int(10) UNSIGNED DEFAULT NULL,
  `deleted_by` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_roles`
--

INSERT INTO `user_roles` (`user_id`, `role_id`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, 1, '2021-02-06 07:39:46', '2021-02-06 07:39:46', NULL, 0, 0, NULL),
(2, 1, '2021-02-06 07:39:47', '2021-02-06 07:39:47', NULL, 0, 0, NULL),
(3, 3, '2021-02-06 07:40:27', '2021-02-06 07:40:28', NULL, 1, 0, NULL),
(4, 4, '2021-02-06 07:40:27', '2021-02-06 07:40:28', NULL, 1, 0, NULL),
(5, 6, '2021-02-06 07:40:27', '2021-02-06 07:40:28', NULL, 1, 0, NULL),
(6, 2, '2021-02-06 07:40:29', '2021-02-06 07:40:29', NULL, 1, 0, NULL),
(7, 2, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(8, 2, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(9, 2, '2021-02-06 07:40:29', '2021-02-06 07:40:30', NULL, 1, 0, NULL),
(10, 2, '2021-02-06 07:40:29', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(11, 2, '2021-02-06 07:40:29', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(12, 5, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(13, 6, '2021-02-06 07:40:31', '2021-02-06 07:40:31', NULL, 1, 0, NULL),
(14, 7, '2021-02-06 07:40:31', '2021-02-06 07:40:32', NULL, 1, 0, NULL),
(15, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(16, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:39', NULL, 1, 0, NULL),
(17, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(18, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(19, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(20, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(21, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(22, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(23, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(24, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(25, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(26, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(27, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(28, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL),
(29, 3, '2021-02-06 07:40:36', '2021-02-06 07:40:40', NULL, 1, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about_contents`
--
ALTER TABLE `about_contents`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_contents_created_by_index` (`created_by`),
  ADD KEY `about_contents_updated_by_index` (`updated_by`),
  ADD KEY `about_contents_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `about_sliders`
--
ALTER TABLE `about_sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `about_sliders_created_by_index` (`created_by`),
  ADD KEY `about_sliders_updated_by_index` (`updated_by`),
  ADD KEY `about_sliders_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `academic_years`
--
ALTER TABLE `academic_years`
  ADD PRIMARY KEY (`id`),
  ADD KEY `academic_years_created_by_index` (`created_by`),
  ADD KEY `academic_years_updated_by_index` (`updated_by`),
  ADD KEY `academic_years_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `app_metas`
--
ALTER TABLE `app_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_metas_created_by_index` (`created_by`),
  ADD KEY `app_metas_updated_by_index` (`updated_by`),
  ADD KEY `app_metas_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `class_profiles`
--
ALTER TABLE `class_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_profiles_created_by_index` (`created_by`),
  ADD KEY `class_profiles_updated_by_index` (`updated_by`),
  ADD KEY `class_profiles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `employees_id_card_unique` (`id_card`),
  ADD KEY `employees_user_id_foreign` (`user_id`),
  ADD KEY `employees_role_id_foreign` (`role_id`),
  ADD KEY `employees_created_by_index` (`created_by`),
  ADD KEY `employees_updated_by_index` (`updated_by`),
  ADD KEY `employees_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employee_attendances_employee_id_foreign` (`employee_id`),
  ADD KEY `employee_attendances_created_by_index` (`created_by`),
  ADD KEY `employee_attendances_updated_by_index` (`updated_by`),
  ADD KEY `employee_attendances_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`),
  ADD KEY `events_created_by_index` (`created_by`),
  ADD KEY `events_updated_by_index` (`updated_by`),
  ADD KEY `events_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `exams`
--
ALTER TABLE `exams`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exams_class_id_foreign` (`class_id`),
  ADD KEY `exams_created_by_index` (`created_by`),
  ADD KEY `exams_updated_by_index` (`updated_by`),
  ADD KEY `exams_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `exam_rules`
--
ALTER TABLE `exam_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `exam_rules_class_id_foreign` (`class_id`),
  ADD KEY `exam_rules_subject_id_foreign` (`subject_id`),
  ADD KEY `exam_rules_grade_id_foreign` (`grade_id`),
  ADD KEY `exam_rules_combine_subject_id_foreign` (`combine_subject_id`),
  ADD KEY `exam_rules_created_by_index` (`created_by`),
  ADD KEY `exam_rules_updated_by_index` (`updated_by`),
  ADD KEY `exam_rules_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `grades_created_by_index` (`created_by`),
  ADD KEY `grades_updated_by_index` (`updated_by`),
  ADD KEY `grades_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `i_classes`
--
ALTER TABLE `i_classes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `i_classes_created_by_index` (`created_by`),
  ADD KEY `i_classes_updated_by_index` (`updated_by`),
  ADD KEY `i_classes_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `i_class_history`
--
ALTER TABLE `i_class_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `i_classes_created_by_index` (`created_by`),
  ADD KEY `i_classes_updated_by_index` (`updated_by`),
  ADD KEY `i_classes_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `leaves`
--
ALTER TABLE `leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leaves_employee_id_foreign` (`employee_id`),
  ADD KEY `leaves_created_by_index` (`created_by`),
  ADD KEY `leaves_updated_by_index` (`updated_by`),
  ADD KEY `leaves_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `marks_class_id_exam_id_registration_id_subject_id_unique` (`class_id`,`exam_id`,`registration_id`,`subject_id`),
  ADD KEY `marks_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `marks_section_id_foreign` (`section_id`),
  ADD KEY `marks_registration_id_foreign` (`registration_id`),
  ADD KEY `marks_exam_id_foreign` (`exam_id`),
  ADD KEY `marks_subject_id_foreign` (`subject_id`),
  ADD KEY `marks_created_by_index` (`created_by`),
  ADD KEY `marks_updated_by_index` (`updated_by`),
  ADD KEY `marks_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `registrations_student_id_foreign` (`student_id`),
  ADD KEY `registrations_class_id_foreign` (`class_id`),
  ADD KEY `registrations_section_id_foreign` (`section_id`),
  ADD KEY `registrations_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `registrations_old_registration_id_foreign` (`old_registration_id`),
  ADD KEY `registrations_regi_no_index` (`regi_no`),
  ADD KEY `registrations_created_by_index` (`created_by`),
  ADD KEY `registrations_updated_by_index` (`updated_by`),
  ADD KEY `registrations_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `results_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `results_class_id_foreign` (`class_id`),
  ADD KEY `results_registration_id_foreign` (`registration_id`),
  ADD KEY `results_exam_id_foreign` (`exam_id`),
  ADD KEY `results_created_by_index` (`created_by`),
  ADD KEY `results_updated_by_index` (`updated_by`),
  ADD KEY `results_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `result_combines`
--
ALTER TABLE `result_combines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_combines_registration_id_foreign` (`registration_id`),
  ADD KEY `result_combines_subject_id_foreign` (`subject_id`),
  ADD KEY `result_combines_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD PRIMARY KEY (`id`),
  ADD KEY `result_publish_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `result_publish_class_id_foreign` (`class_id`),
  ADD KEY `result_publish_exam_id_foreign` (`exam_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`),
  ADD KEY `roles_created_by_index` (`created_by`),
  ADD KEY `roles_updated_by_index` (`updated_by`),
  ADD KEY `roles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD KEY `roles_permissions_role_id_foreign` (`role_id`),
  ADD KEY `roles_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `roles_permissions_created_by_index` (`created_by`),
  ADD KEY `roles_permissions_updated_by_index` (`updated_by`),
  ADD KEY `roles_permissions_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sections`
--
ALTER TABLE `sections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sections_class_id_foreign` (`class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sections_created_by_index` (`created_by`),
  ADD KEY `sections_updated_by_index` (`updated_by`),
  ADD KEY `sections_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `section_history`
--
ALTER TABLE `section_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `sections_class_id_foreign` (`class_id`),
  ADD KEY `sections_teacher_id_foreign` (`teacher_id`),
  ADD KEY `sections_created_by_index` (`created_by`),
  ADD KEY `sections_updated_by_index` (`updated_by`),
  ADD KEY `sections_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `site_metas`
--
ALTER TABLE `site_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `site_metas_created_by_index` (`created_by`),
  ADD KEY `site_metas_updated_by_index` (`updated_by`),
  ADD KEY `site_metas_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_created_by_index` (`created_by`),
  ADD KEY `sliders_updated_by_index` (`updated_by`),
  ADD KEY `sliders_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `students_created_by_index` (`created_by`),
  ADD KEY `students_updated_by_index` (`updated_by`),
  ADD KEY `students_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_attendances_academic_year_id_foreign` (`academic_year_id`),
  ADD KEY `student_attendances_class_id_foreign` (`class_id`),
  ADD KEY `student_attendances_registration_id_foreign` (`registration_id`),
  ADD KEY `student_attendances_created_by_index` (`created_by`),
  ADD KEY `student_attendances_updated_by_index` (`updated_by`),
  ADD KEY `student_attendances_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `student_info_log`
--
ALTER TABLE `student_info_log`
  ADD KEY `student_info_log_student_id_foreign` (`student_id`),
  ADD KEY `student_info_log_academic_year_id_foreign` (`academic_year_id`);

--
-- Indexes for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD KEY `student_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `student_subjects_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `st_subjects_log`
--
ALTER TABLE `st_subjects_log`
  ADD KEY `st_subjects_log_registration_id_foreign` (`registration_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_created_by_index` (`created_by`),
  ADD KEY `subjects_updated_by_index` (`updated_by`),
  ADD KEY `subjects_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `subject_history`
--
ALTER TABLE `subject_history`
  ADD PRIMARY KEY (`id`,`revision`),
  ADD KEY `subjects_class_id_foreign` (`class_id`),
  ADD KEY `subjects_created_by_index` (`created_by`),
  ADD KEY `subjects_updated_by_index` (`updated_by`),
  ADD KEY `subjects_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_profiles_created_by_index` (`created_by`),
  ADD KEY `teacher_profiles_updated_by_index` (`updated_by`),
  ADD KEY `teacher_profiles_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD KEY `teacher_subjects_subject_id_foreign` (`subject_id`),
  ADD KEY `teacher_subjects_teacher_id_foreign` (`teacher_id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`),
  ADD KEY `testimonials_created_by_index` (`created_by`),
  ADD KEY `testimonials_updated_by_index` (`updated_by`),
  ADD KEY `testimonials_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_created_by_index` (`created_by`),
  ADD KEY `users_updated_by_index` (`updated_by`),
  ADD KEY `users_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD KEY `users_permissions_user_id_foreign` (`user_id`),
  ADD KEY `users_permissions_permission_id_foreign` (`permission_id`),
  ADD KEY `users_permissions_created_by_index` (`created_by`),
  ADD KEY `users_permissions_updated_by_index` (`updated_by`),
  ADD KEY `users_permissions_deleted_by_index` (`deleted_by`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_role_id_foreign` (`role_id`),
  ADD KEY `user_roles_created_by_index` (`created_by`),
  ADD KEY `user_roles_updated_by_index` (`updated_by`),
  ADD KEY `user_roles_deleted_by_index` (`deleted_by`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about_contents`
--
ALTER TABLE `about_contents`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `about_sliders`
--
ALTER TABLE `about_sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `academic_years`
--
ALTER TABLE `academic_years`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `app_metas`
--
ALTER TABLE `app_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `class_profiles`
--
ALTER TABLE `class_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `exams`
--
ALTER TABLE `exams`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `exam_rules`
--
ALTER TABLE `exam_rules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `i_classes`
--
ALTER TABLE `i_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `i_class_history`
--
ALTER TABLE `i_class_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `leaves`
--
ALTER TABLE `leaves`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `result_combines`
--
ALTER TABLE `result_combines`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `result_publish`
--
ALTER TABLE `result_publish`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sections`
--
ALTER TABLE `sections`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `section_history`
--
ALTER TABLE `section_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `site_metas`
--
ALTER TABLE `site_metas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `student_attendances`
--
ALTER TABLE `student_attendances`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `subject_history`
--
ALTER TABLE `subject_history`
  MODIFY `revision` int(6) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `teacher_profiles`
--
ALTER TABLE `teacher_profiles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `employee_attendances`
--
ALTER TABLE `employee_attendances`
  ADD CONSTRAINT `employee_attendances_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `exams`
--
ALTER TABLE `exams`
  ADD CONSTRAINT `exams_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`);

--
-- Constraints for table `exam_rules`
--
ALTER TABLE `exam_rules`
  ADD CONSTRAINT `exam_rules_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `exam_rules_combine_subject_id_foreign` FOREIGN KEY (`combine_subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `exam_rules_grade_id_foreign` FOREIGN KEY (`grade_id`) REFERENCES `grades` (`id`),
  ADD CONSTRAINT `exam_rules_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `leaves`
--
ALTER TABLE `leaves`
  ADD CONSTRAINT `leaves_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `marks`
--
ALTER TABLE `marks`
  ADD CONSTRAINT `marks_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `marks_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `marks_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `marks_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `marks_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `marks_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registrations_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `registrations_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `registrations_old_registration_id_foreign` FOREIGN KEY (`old_registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `registrations_section_id_foreign` FOREIGN KEY (`section_id`) REFERENCES `sections` (`id`),
  ADD CONSTRAINT `registrations_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `results`
--
ALTER TABLE `results`
  ADD CONSTRAINT `results_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `results_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `results_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `results_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `result_combines`
--
ALTER TABLE `result_combines`
  ADD CONSTRAINT `result_combines_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`),
  ADD CONSTRAINT `result_combines_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `result_combines_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `result_publish`
--
ALTER TABLE `result_publish`
  ADD CONSTRAINT `result_publish_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `result_publish_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `result_publish_exam_id_foreign` FOREIGN KEY (`exam_id`) REFERENCES `exams` (`id`);

--
-- Constraints for table `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `roles_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `roles_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sections`
--
ALTER TABLE `sections`
  ADD CONSTRAINT `sections_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `sections_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `student_attendances`
--
ALTER TABLE `student_attendances`
  ADD CONSTRAINT `student_attendances_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_attendances_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`),
  ADD CONSTRAINT `student_attendances_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `student_info_log`
--
ALTER TABLE `student_info_log`
  ADD CONSTRAINT `student_info_log_academic_year_id_foreign` FOREIGN KEY (`academic_year_id`) REFERENCES `academic_years` (`id`),
  ADD CONSTRAINT `student_info_log_student_id_foreign` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`);

--
-- Constraints for table `student_subjects`
--
ALTER TABLE `student_subjects`
  ADD CONSTRAINT `student_subjects_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`),
  ADD CONSTRAINT `student_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`);

--
-- Constraints for table `st_subjects_log`
--
ALTER TABLE `st_subjects_log`
  ADD CONSTRAINT `st_subjects_log_registration_id_foreign` FOREIGN KEY (`registration_id`) REFERENCES `registrations` (`id`);

--
-- Constraints for table `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_class_id_foreign` FOREIGN KEY (`class_id`) REFERENCES `i_classes` (`id`);

--
-- Constraints for table `teacher_subjects`
--
ALTER TABLE `teacher_subjects`
  ADD CONSTRAINT `teacher_subjects_subject_id_foreign` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`),
  ADD CONSTRAINT `teacher_subjects_teacher_id_foreign` FOREIGN KEY (`teacher_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `users_permissions`
--
ALTER TABLE `users_permissions`
  ADD CONSTRAINT `users_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_permissions_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
