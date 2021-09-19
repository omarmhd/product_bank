-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 13 سبتمبر 2021 الساعة 16:11
-- إصدار الخادم: 5.7.23-23
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `catchqui_Team2020`
--

-- --------------------------------------------------------

--
-- بنية الجدول `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `provider_id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL,
  `down_payment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `MTCN` int(11) NOT NULL DEFAULT '0',
  `Description` text COLLATE utf8mb4_unicode_ci,
  `Quantity` int(11) DEFAULT NULL,
  `Tax` double DEFAULT NULL,
  `Transfer_Name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Payment` double DEFAULT NULL,
  `invoice_number` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `invoices`
--

INSERT INTO `invoices` (`id`, `provider_id`, `role`, `down_payment`, `payment_method`, `file`, `date`, `created_at`, `updated_at`, `MTCN`, `Description`, `Quantity`, `Tax`, `Transfer_Name`, `Payment`, `invoice_number`) VALUES
(41, 12, 'client', '120', 'الاهلي', NULL, '2021-02-12', '2021-02-13 04:40:27', '2021-02-13 04:40:27', 0, 'mohammed', 1, 15.65, 'ali', NULL, 2021100),
(42, 12, 'client', '1200', 'الاهلي', NULL, '2021-02-12', '2021-02-13 04:41:36', '2021-02-13 04:41:36', 0, 'mohammed', 1, 156.52, 'ali', NULL, 2021102),
(43, 14, 'provider', '120', 'Paypal and western union', '1613155362_MGT.jpeg', '2021-02-12', '2021-02-13 04:42:42', '2021-02-13 04:42:42', 123, '123', NULL, NULL, NULL, NULL, 2021104),
(44, 91, 'client', '1380', 'الاهلي', NULL, '2021-02-14', '2021-02-14 04:04:11', '2021-02-14 04:04:11', 0, 'عضوية', 1, 180, 'راشد المري', NULL, 2021106),
(45, 16, 'provider', '544', 'PayPal', '1613253944_1613248237_Micheal.pdf', '2021-02-14', '2021-02-14 08:05:44', '2021-02-14 08:05:44', 1613248237, 'DownPayment 1 - 543.75', NULL, NULL, NULL, NULL, 2021108),
(46, 16, 'provider', '1024', 'PayPal', '1614504025_1613248238_Micheal.pdf', '2021-02-28', '2021-02-28 19:20:25', '2021-02-28 19:20:25', 1613248237, 'DownPayment 2 - 1023.75', NULL, NULL, NULL, NULL, 2021110),
(47, 16, 'provider', '1211', 'Paypal', '1615843466_1615841189_Micheal_orders.pdf', '2021-03-16', '2021-03-16 06:24:26', '2021-03-16 06:24:26', 111, 'DownPayment 3 - 1211.25', NULL, NULL, NULL, NULL, 2021112),
(48, 16, 'provider', '2563', 'PayPal', '1617293732_1617292150_Micheal_orders.pdf', '2021-04-01', '2021-04-02 01:15:32', '2021-04-02 01:15:32', 52525306, 'DownPayment 3 - 2562.25', NULL, NULL, NULL, NULL, 2021114),
(49, 16, 'provider', '1118', 'PayPal', '1618427307_1618426172_Micheal_orders.pdf', '2021-04-14', '2021-04-15 04:08:27', '2021-04-15 04:08:27', 25314, 'DownPayment 5 $1117.50', NULL, NULL, NULL, NULL, 2021116),
(51, 16, 'provider', '1504', 'PayPal', '1618966019_1618964913_Micheal_orders.pdf', '2021-04-21', '2021-04-21 09:46:59', '2021-04-21 09:46:59', 1232111, 'DownPayment 6 $1503.75', NULL, NULL, NULL, NULL, 2021118);

-- --------------------------------------------------------

--
-- بنية الجدول `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_09_25_200702_create_orders_table', 1),
(5, '2020_09_25_213312_create_images_table', 1),
(6, '2020_09_27_170527_create_invoices_table', 1),
(7, '2020_10_01_131337_create_settings_table', 1);

-- --------------------------------------------------------

--
-- بنية الجدول `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_number` bigint(20) DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED DEFAULT NULL,
  `provider_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_words` int(11) NOT NULL,
  `information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `added_date` date NOT NULL,
  `delivery_date` date DEFAULT NULL,
  `information_return` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(4) NOT NULL,
  `files` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `files_provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `words_PROF` int(11) DEFAULT '0',
  `time_send` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `orders`
--

INSERT INTO `orders` (`id`, `order_number`, `client_id`, `provider_id`, `title`, `number_words`, `information`, `deadline`, `added_date`, `delivery_date`, `information_return`, `status`, `files`, `files_provider`, `created_at`, `updated_at`, `words_PROF`, `time_send`) VALUES
(1964, 1000600, 207, 16, 'PHC 271 dis', 425, 'go with this paper \r\n250 words at least \r\nprovide examples \r\nthe course name is Introduction To Disease \r\nmake sure answers related to subjects \r\nfollow instruction', '2021-09-13', '2021-09-12', '2121-11-12', NULL, 4, '1631478508_Introduction To DiseasePHC 271.docx', '1631529271_1000600.docx', '2021-09-13 05:28:28', '2021-09-14 03:02:23', 250, '23:34:12'),
(1966, 1000604, 208, 16, 'PHC 271 dis', 408, 'go with this paper \r\n250 words at least \r\nprovide examples \r\nthe course name is Introduction To Disease \r\nmake sure answers related to subjects \r\nfollow instruction', '2021-09-13', '2021-09-12', '2121-11-12', NULL, 4, '1631478778_Introduction To DiseasePHC 271.docx', '1631508710_1000604.edited.docx', '2021-09-13 05:32:58', '2021-09-14 03:00:12', 250, '23:34:08'),
(1967, 1000608, 146, 198, 'PHC 271 Dis', 0, 'go with this paper \r\n250 words at least \r\nprovide examples \r\nthe course name is Introduction To Disease \r\nmake sure answers related to subjects \r\nfollow instruction', '2021-09-13', '2021-09-13', NULL, NULL, 2, '1631480781_Introduction To DiseasePHC 271.docx', NULL, '2021-09-13 06:06:21', '2021-09-13 20:27:52', 250, '00:06:51'),
(1968, 1000612, 18, 16, 'MGT 301 Dis', 345, 'go with this paper \r\n250 words at least \r\nprovide examples \r\nthe course name is Organizational Behaviour\r\nmake sure answers related to subjects \r\nfollow instruction \r\nASAP', '2021-09-13', '2021-09-12', '2121-11-12', NULL, 4, '1631481422_Organizational Behaviour MGT 301.docx', '1631512071_Organizational Behavior aa.docx', '2021-09-13 06:17:02', '2021-09-13 21:35:19', 250, '00:17:29'),
(1972, 1000616, 205, 14, 'eeeeeeeeeee', 222, 'eeeeeeeeeeeeeeeeeeeeee', '2021-09-13', '2021-09-11', NULL, NULL, 1, '1631556449_منتجات-رقمية.pdf', NULL, '2021-09-14 03:07:29', '2021-09-14 03:07:49', 222, '21:07:49'),
(1973, 1000620, 205, 14, 'a', 1, '1', '2021-09-14', '2021-09-13', NULL, NULL, 1, '1631566663_1631556449_منتجات-رقمية.pdf', NULL, '2021-09-14 05:57:43', '2021-09-14 06:50:52', 1, '23:58:02'),
(1975, 1000624, 205, 14, '1', 1, '1', '2021-09-15', '2021-09-15', NULL, NULL, 1, '1631570687_مطاعم الرياض حسب المجموعات.docx', NULL, '2021-09-14 07:04:47', '2021-09-14 07:04:54', 1, '01:04:54');

-- --------------------------------------------------------

--
-- بنية الجدول `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- بنية الجدول `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `settings`
--

INSERT INTO `settings` (`id`, `key`, `name`, `value`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'googleMail', 'No-replay', NULL, 'co.bananavip@gmail.com', 'zigkpmsphqusyogw', '2020-10-01 13:56:28', '2021-09-14 06:45:45');

-- --------------------------------------------------------

--
-- بنية الجدول `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` enum('admin','provider','client') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `words` int(11) DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `education_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_university` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `years_experience` int(11) DEFAULT NULL,
  `capacity_day` int(11) DEFAULT NULL,
  `subjects` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whats_up` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delete` tinyint(4) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- إرجاع أو استيراد بيانات الجدول `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `phone`, `payment`, `words`, `payment_method`, `education_level`, `name_university`, `years_experience`, `capacity_day`, `subjects`, `country`, `whats_up`, `delete`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'mym.abuabed@gmail.com', NULL, '$2y$10$ZjVF4Stj.xr7f0wlIdOqxeUfVL8IKTniX8Lj79hQ5aXJs4X4YEjaC', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'bHHfjsguEa2Oai4BVR08eUJM7ggYSNGesoRJefXZfpcQYCf45V3Z8MSPx7K8', '2020-10-02 03:01:58', '2020-10-03 06:31:00'),
(10, 'omar', 'omarmhd19988@gmail.com', NULL, '$2y$10$olRAwfLhoh9d1P4gojmj9eytSc6spYeeZssPTj0c72eIIVP5XYfTa', 'provider', NULL, NULL, NULL, 'ppp', 'bac', 'iug', 5, 12, 'subject1,subject2', 'pal', '+972592676623', 1, NULL, '2020-10-03 03:11:04', '2020-10-06 08:17:44'),
(11, 'Mohammed abu abed', 'm.t.r33@hotmail.com', NULL, '$2y$10$42EgreLpmEsrEkp90mRSfueME/Oc.n04Tjkp6KZcxbU8kR2.ME.Qa', 'provider', NULL, NULL, NULL, 'STC', 'high', 'biks', 4, 10, 'subject1,subject2', 'KSA', '0571528289', 1, NULL, '2020-10-03 06:41:34', '2020-10-04 00:32:32'),
(12, 'loky', 'helpstudentsvip@gmail.com', NULL, NULL, 'client', '0544444444444', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-03 06:43:19', '2021-09-13 06:43:17'),
(13, 'admin', 'admin@admin.com', NULL, '$2y$10$4ddNE9v8qFFM4zvbvUesmOjsFgeBmotJVB2cnzzzML9KU/0OO5cmi', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-03 17:47:02', '2020-10-03 17:47:02'),
(14, 'copy', 'quickorders069@gmail.com', NULL, '$2y$10$m/SlNQF9QNyCxoCYtFzF2uB4vg4JcY.Kkc94DpesGbMT3Bxz6X7y6', 'provider', NULL, NULL, NULL, 'STC', 'high', 'ke', 5, 1200, 'All', 'KSA', '555555555555555', 0, 'grlOUloa6426LGmvOPXhlmULHOPPMmfJLKeazOVQolcIg5J1BwzrGvOOAwij', '2020-10-04 00:04:03', '2021-03-17 23:50:14'),
(15, 'Njora', 'Essayboss01@gmail.com', NULL, '$2y$10$mbMp2g.0kwzEiUB5I8PvtetN6Z2hcgowECiom0YWfZS/g4CWBiK.O', 'provider', NULL, NULL, NULL, 'STC pay', 'Master', 'none', 5, 4000, 'MGT,PHC,Law,ENG', 'Kenya', '245717492561', 1, NULL, '2020-10-04 02:09:44', '2021-01-24 20:53:28'),
(16, 'Micheal', 'expertwriters921@gmail.com', NULL, '$2y$10$SPV3sP.eq6oZRTpKs4lATO/1zaOS8Z1hH2er6lwp9ZWlnyO1TCZGO', 'provider', NULL, NULL, NULL, 'STC pay', 'Master', 'none', 5, 3000, 'subject1,subject2', 'Kenya', '254714198770', 0, 'tBQ2nQ2Rwth8PiT2IrlPlD0tmIgT8v3LLf3I9IHCU8RD6ma791oqaJI2Nv1q', '2020-10-04 02:19:28', '2020-10-04 02:19:28'),
(17, 'Fida', 'Fida@gmail.com', NULL, NULL, 'client', '0544606688', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-04 03:40:04', '2021-09-13 06:43:40'),
(18, 'خالد الهويمل', 'k@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 04:11:50', '2020-10-04 04:11:50'),
(19, 'يوسف السبيعي', 'yousef@gmail.com', NULL, NULL, 'client', '111111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 04:27:17', '2020-10-04 04:27:17'),
(20, 'هيا فهد الفالح', 'haya@gmail.com', NULL, NULL, 'client', '0502891338', '1050', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 04:38:51', '2021-02-09 02:23:04'),
(21, 'فيصل القحطاني', 'FAISAL@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '0', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 05:04:38', '2020-10-04 05:04:38'),
(22, 'بسمة حسام', 'BASMA@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 05:21:12', '2020-10-04 05:21:12'),
(23, 'معتز علي المالكي', 'MAM@gmail.com', NULL, NULL, 'client', '055879060', '100', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 05:44:07', '2020-10-04 05:44:07'),
(24, 'نوره العلياني', 'NORAH@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 05:53:26', '2020-10-04 05:53:26'),
(25, 'ندى محمد الرفيدي', 'NADA@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '600', 5250, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 05:59:51', '2020-10-04 05:59:51'),
(26, 'نوف الحكمي', 'NOUF@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '600', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 06:46:24', '2020-10-04 06:46:24'),
(27, 'فاطمة خبراني', 'Fatmah@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '500', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 08:01:58', '2020-10-04 08:01:58'),
(28, 'لطيفة', 'latifa@gmail.com', NULL, NULL, 'client', '12121', '600', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 08:04:47', '2020-10-04 08:04:47'),
(29, 'منار ابراهيم', 'MANAR@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 08:16:22', '2021-02-28 01:27:43'),
(30, 'شهد العصيمي', 'shahad@gmail.com', NULL, NULL, 'client', '12121212', '0', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 08:19:07', '2020-10-04 08:19:07'),
(31, 'فاطمة الهلالي', 'Fatimah@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '500', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 09:17:46', '2020-10-04 09:17:46'),
(32, 'امجاد الحربي', 'AMJAD@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 10:32:35', '2020-10-04 10:32:35'),
(33, 'فاطمة حازمي', 'FatimaHazmi@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '600', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 10:58:02', '2020-10-04 10:58:02'),
(34, 'منال', 'Manal@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 11:33:01', '2020-10-04 11:33:01'),
(35, 'نوره يغمور', 'Nura@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '800', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 11:59:10', '2020-10-04 11:59:10'),
(36, 'فهد فقيهي', 'fahad@gmail.com', NULL, NULL, 'client', '0591313032', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 21:09:14', '2020-10-04 21:09:14'),
(37, 'عبد العزيز عبد الله', 'Aziz@gmail.com', NULL, NULL, 'client', '0555446022', '155', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-04 22:05:08', '2021-09-13 05:21:03'),
(38, 'ابراهيم محمد عيسى', 'Asi@gmail.com', NULL, NULL, 'client', '0532041168', '100', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 22:18:00', '2020-10-04 22:18:00'),
(39, 'عبد الرحمن طرابيشي', 'Tra@gmail.com', NULL, NULL, 'client', '0566674644', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 22:46:11', '2020-10-04 22:46:11'),
(40, 'نادية محمد سالم', 'Nadia@gmail.com', NULL, NULL, 'client', '0550849993', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 23:00:33', '2020-10-04 23:00:33'),
(41, 'غزوى', 'gz@gmail.com', NULL, NULL, 'client', '0581623940', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 23:11:06', '2020-10-04 23:11:06'),
(42, 'لينة العقاب', 'Lina@gmail.com', NULL, NULL, 'client', '0567567838', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 23:20:16', '2020-10-04 23:20:16'),
(43, 'لجين عدنان', 'logy@gmail.com', NULL, NULL, 'client', '0559162221', '330', 3000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-04 23:33:07', '2020-10-04 23:33:07'),
(44, 'محسن النعمي', 'Mohsen@gmail.com', NULL, NULL, 'client', '0598876699', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 00:34:35', '2020-10-05 00:34:35'),
(45, 'عبد الرحمن المزيني', 'mz@gmail.com', NULL, NULL, 'client', '0550600603', '45', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 01:12:10', '2020-10-05 01:12:10'),
(46, 'مشاعل يوسف المحمد', 'mom@gmal.com', NULL, NULL, 'client', '0551600041', '90', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 01:18:00', '2020-10-05 01:18:00'),
(47, 'اديب اللحيدان', 'adeeb8855@hotmail.com', NULL, NULL, 'client', '1212121', '1265', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 01:42:01', '2021-09-08 02:10:34'),
(48, 'وفاء الغامدي', 'lovelyprism_10@hotmail.com', NULL, NULL, 'client', '12121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 01:51:06', '2020-10-05 01:51:06'),
(49, 'عبد العزيز المجلي', 'Abdulaziz@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 02:21:15', '2020-10-05 02:21:15'),
(50, 'مشعل العتيبي', 'MS@gmail.com', NULL, NULL, 'client', '121212121', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-05 07:16:31', '2021-09-13 05:30:17'),
(51, 'رافع الغامدي', 'Rafe@gmail.com', NULL, NULL, 'client', '12121211', '1100', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 07:52:55', '2020-10-05 07:52:55'),
(52, 'مشاعل محمد', 'mshaiel@co.com', NULL, NULL, 'client', '21211', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-05 10:09:46', '2020-10-05 21:35:20'),
(53, 'اشجان العمري', 'ashjan@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 10:46:26', '2020-10-05 10:46:26'),
(54, 'فاطمة باحشوان', 'bahashwan@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 11:02:08', '2020-10-05 21:40:47'),
(55, 'test', 'test@test.com', NULL, '123456', 'client', '213', '123', 123, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-05 17:18:38', '2020-10-05 17:22:38'),
(56, 'Locky', 'helpstudent2019@outlook.com', NULL, NULL, 'client', '111111111111111111', '0', 10101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-05 21:43:30', '2020-10-05 21:43:56'),
(57, 'عادل الشهري', 'adel@g.com', NULL, NULL, 'client', '0550026311', '245', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 22:07:22', '2020-10-05 22:07:52'),
(58, 'اروئ فرحان', 'ar@g.com', NULL, NULL, 'client', '0552046156', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 22:44:49', '2020-10-05 22:44:49'),
(59, 'محمد الصلهبي', 'salhabi@c.com', NULL, NULL, 'client', '1212121', '135', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 23:24:02', '2020-10-05 23:24:02'),
(60, 'خلود', 'k@c.com', NULL, NULL, 'client', '0533326993', '40', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-05 23:28:06', '2020-10-05 23:28:06'),
(61, 'momon', 'aeeeeeee@gmail.com', NULL, NULL, 'client', '45454665645556', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 00:19:17', '2020-10-06 00:19:46'),
(62, 'ىىىىىىىىىىى', 'msms@c.com', NULL, NULL, 'client', '121212121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 00:20:42', '2020-10-06 00:21:25'),
(63, 'افنان القحطاني', 'afnan.n.alqahtani@gmail.com', NULL, NULL, 'client', '2020', '200', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-06 00:50:33', '2020-10-06 00:50:33'),
(64, 'ابراهيم الدايل', 'Abra@c.com', NULL, NULL, 'client', '0500803600', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-06 01:47:58', '2020-10-06 01:47:58'),
(65, 'عبير الشهري', 'berro1@gmail.com', NULL, NULL, 'client', '0557448882', '0', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-06 02:45:41', '2020-10-06 02:45:41'),
(66, 'test omar', '22222@hotmail.com', NULL, '123456', 'client', '0592676623', '11', 11111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 08:17:15', '2020-10-06 08:17:23'),
(67, 'test provider', '2222222222222222@gmail.com', NULL, '$2y$10$ICIBsvCRAJ6TnMF8pDRNROprVnJWig0PJkk3ZTnVPtO6O9Qa9opXy', 'provider', NULL, NULL, NULL, 'ffff', 'test', 'test', 12, 23, 'subject1,subject2', 'test', '2222222222222', 1, NULL, '2020-10-06 08:19:33', '2020-10-07 22:35:37'),
(68, 'test client', 'client@ddddd.com', NULL, NULL, 'client', '222222222', '22222222', 111111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 08:21:41', '2020-10-06 08:32:25'),
(69, 'testtesttest', 'testtesttest@admin.com', NULL, '123456789', 'client', '111', '111', 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 08:41:09', '2020-10-06 08:41:30'),
(70, 'nore', 'nore@gmail.com', NULL, NULL, 'client', '1212121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-10-06 12:41:44', '2020-10-06 12:41:59'),
(71, 'احمد ايوب عوض', 'Ahmed@c.com', NULL, NULL, 'client', '0555362060', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-06 14:28:38', '2020-10-06 14:28:38'),
(72, 'فواز الغامدي', 'fawaz@g.com', NULL, NULL, 'client', '0555966975', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-06 16:22:17', '2020-10-06 16:22:17'),
(73, 'حسين الوباري', 'husain@c.com', NULL, NULL, 'client', '121212121', '1000', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 03:18:47', '2020-10-07 03:18:47'),
(74, 'ساره الرشيد', 'sara@c.com', NULL, NULL, 'client', '12121212', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 03:49:54', '2020-10-07 03:49:54'),
(75, 'فهد المصري', 'fahadmasri@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 04:53:15', '2020-10-07 04:53:15'),
(76, 'ميساء الزحيفي', 'meso@c.com', NULL, NULL, 'client', '1212211', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 05:01:41', '2020-10-07 05:01:41'),
(77, 'منى الطميحي', 'mona@c.com', NULL, NULL, 'client', '0532304446', '115', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 06:06:46', '2020-10-07 06:06:46'),
(78, 'علي فقيهي', 'alif@c.com', NULL, NULL, 'client', '12121121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 06:12:45', '2020-10-07 06:12:45'),
(79, 'ساجدة الوباري', 'saj@c.com', NULL, NULL, 'client', '212121212121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 06:43:41', '2020-10-07 06:43:41'),
(80, 'سامي القحطاني', 'sami@c.com', NULL, NULL, 'client', '12121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 06:55:45', '2020-10-07 06:55:45'),
(81, 'احمد العبد الطيف', 'abdo@c.com', NULL, NULL, 'client', '1212121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 06:56:18', '2020-10-07 06:56:18'),
(82, 'مشرف احمد', 'mushref@c.com', NULL, NULL, 'client', '121212', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 07:04:05', '2020-10-07 07:04:05'),
(83, 'وهيبة الحربي', 'wab@c.com', NULL, NULL, 'client', '1212121', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 07:22:08', '2020-10-07 07:22:08'),
(84, 'الهنوف السبيعي', 'hanouf@c.com', NULL, NULL, 'client', '0534500181', '65', 400, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-07 21:43:03', '2020-10-07 21:43:03'),
(85, 'رواف مناع', 'rouaf@c.com', NULL, NULL, 'client', '0547790779', '80', 800, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-08 00:33:19', '2020-10-08 00:33:19'),
(86, 'فارس الشقاق', 'faris@c.com', NULL, NULL, 'client', '0545623073', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-08 00:47:32', '2020-10-08 00:47:32'),
(87, 'احمد الشريف', 'sharief@c.com', NULL, NULL, 'client', '00000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-08 08:07:37', '2020-10-08 08:07:37'),
(88, 'علياء الدوسري', 'ALai@c.com', NULL, NULL, 'client', '000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-09 02:12:57', '2020-10-09 02:12:57'),
(89, 'هيلا راجح', 'HAYLAH@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-09 03:46:59', '2020-10-09 03:49:56'),
(90, 'وليد حسين عبدالله', 'walead@c.com', NULL, NULL, 'client', '0508683421', '330', 2500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-09 21:02:21', '2020-10-09 21:02:21'),
(91, 'راشد المري', 'rashead@c.com', NULL, NULL, 'client', '0000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-10 18:59:42', '2020-10-10 18:59:42'),
(92, 'حبيبة الغامدي', 'S170256424@seu.edu.sa', NULL, NULL, 'client', '000000000000000000', '110', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-10 22:58:14', '2020-10-10 22:58:14'),
(93, 'زهراء البحراني', 'zah@c.com', NULL, NULL, 'client', '0568306680', '70', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-10 23:04:43', '2020-10-10 23:04:43'),
(94, 'حسن علي العلي', 'Hasssan@c.com', NULL, NULL, 'client', '0532313190', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-11 16:31:40', '2020-10-11 16:31:40'),
(95, 'عرفات السعيد', 'arfat@c.acom', NULL, NULL, 'client', '0541777172', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-11 22:56:05', '2020-10-11 22:56:05'),
(96, 'موضي فهد', 'mody@c.com', NULL, NULL, 'client', '0504340636', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-11 22:59:09', '2020-10-11 22:59:09'),
(97, 'ايمان الجهمي', 'Norahh@c.com', NULL, NULL, 'client', '0534999282', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-11 23:14:51', '2020-10-11 23:14:51'),
(98, 'افنان الشهراني', 'Afnan@gmail.com', NULL, NULL, 'client', '11111111111111111111111111', '1050', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-12 00:53:03', '2020-10-12 00:53:03'),
(99, 'اسماء الاسمري', 'asmary@c.com', NULL, NULL, 'client', '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-12 01:09:07', '2020-10-12 01:09:07'),
(100, 'عبدالعزيز احمد رمضان محمد', 'Axx@c.com', NULL, NULL, 'client', '0503907888', '290', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-12 12:02:23', '2020-10-12 12:02:23'),
(101, 'احمد سعيد دحام', 'Ahmeds@c.com', NULL, NULL, 'client', '0500324443', '40', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-12 21:52:10', '2020-10-12 21:52:10'),
(102, 'خلود غديان بعيجان العقيلي', 'S170079198@seu.edu.sa', NULL, NULL, 'client', '0', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-13 02:00:46', '2020-10-13 02:00:46'),
(103, 'مجهولة', 'Acroos@c.com', NULL, NULL, 'client', '0550407139', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-13 02:40:15', '2020-10-13 02:40:15'),
(104, 'اشواق حسن السديري', 'ashwaq@c.com', NULL, NULL, 'client', '0540262521', '195', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-13 22:45:10', '2020-10-13 22:45:10'),
(105, 'يحي محمد', 'yah@c.com', NULL, NULL, 'client', '00000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-18 10:38:16', '2020-10-18 10:38:16'),
(106, 'نوف النخيلان', 'noufa@c.com', NULL, NULL, 'client', '000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-18 12:47:51', '2020-10-18 12:47:51'),
(107, 'غاده العتيبي', 'gadah@c.com', NULL, NULL, 'client', '00000000000000', '1', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-20 07:35:09', '2021-02-24 04:43:03'),
(108, 'بشاير', 'bashier@gmail.com', NULL, NULL, 'client', '0566631099', '120', 1000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-22 10:22:11', '2020-10-22 10:22:11'),
(109, 'هبة الفهد', 'heba@co.com', NULL, NULL, 'client', '000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-26 10:40:52', '2020-10-26 10:40:52'),
(110, 'شوق المدني', 'shoooowq@c.com', NULL, '000000000', 'client', '0000000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-26 22:04:40', '2020-10-26 22:06:20'),
(111, 'شهد النفيسة', 'nafessah@c.com', NULL, NULL, 'client', '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-27 14:01:32', '2020-10-27 14:01:32'),
(112, 'هوبي', 'Hope@c.com', NULL, 'q', 'client', '00000', '0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-28 12:39:07', '2020-10-28 12:39:07'),
(113, 'فاطمة الملحم', 'Fatimahmoh@c.com', NULL, NULL, 'client', '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-28 17:07:05', '2020-10-28 17:07:05'),
(114, 'قبلان القحطاني', 'Qublan@c.com', NULL, NULL, 'client', '0', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-29 13:03:14', '2020-10-29 13:03:14'),
(115, 'حورا', 'hourah@c.com', NULL, NULL, 'client', '00000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-29 22:41:31', '2020-10-29 22:41:31'),
(116, 'صالحة النعمي', 'saleha@c.com', NULL, NULL, 'client', '0000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-10-31 15:02:52', '2020-10-31 15:02:52'),
(117, 'الجوهرة فهد ماضي', 'joooohrah@c.com', NULL, NULL, 'client', '000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-02 20:44:29', '2020-11-02 20:44:29'),
(118, 'كوثر', 'kuthar@c.com', NULL, NULL, 'client', '000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-04 00:06:07', '2020-11-04 00:06:07'),
(119, 'سعود الريس', 'alraias@c.com', NULL, NULL, 'client', '000000000000', '0000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-05 17:26:50', '2020-11-05 17:26:50'),
(120, 'زهراء عدنان الهاشمي', 'zoheeer@c.com', NULL, NULL, 'client', '00000000', '165', 1300, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-05 23:30:56', '2020-11-05 23:30:56'),
(121, 'صالح الملحم', 'salllleh@c.com', NULL, NULL, 'client', '0532603335', '0000000000000000000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-09 05:51:30', '2020-11-09 05:51:30'),
(122, 'بشرى محمد علي الخرس', 'boussss@c.com', NULL, NULL, 'client', '0000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-11-09 18:08:23', '2021-09-08 02:08:11'),
(123, 'محمد فقيهي', 'FFFFFFFFFF@c.com', NULL, NULL, 'client', '0594366423', '00000000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-09 18:19:30', '2020-11-09 18:19:30'),
(124, 'عامر الشهري', 'ammmmmar@c.com', NULL, NULL, 'client', '00000000000000000000000000', '00000000000000000', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-09 22:27:54', '2020-11-09 22:27:54'),
(125, 'هيا الجديد', 'haiaaaaaaaa@h.com', NULL, NULL, 'client', '0533488850', '150', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-10 01:27:46', '2020-11-10 01:27:46'),
(126, 'شيماء المحيش', 'shaima@c.com', NULL, NULL, 'client', '0567013604', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-15 04:06:40', '2020-11-15 04:06:40'),
(127, 'فيا محمد', 'fffffia@c.com', NULL, NULL, 'client', '0535339992', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-15 23:24:22', '2020-11-15 23:24:22'),
(128, 'انس الدوغان', 'anasdog@c.com', NULL, NULL, 'client', '0532380493', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-16 00:30:33', '2020-11-16 00:30:33'),
(129, 'اسماء يوسف هوساوي', 'soma.123.0@hotmail.com', NULL, NULL, 'client', '0000000000000000000', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-16 17:06:42', '2020-11-16 17:06:42'),
(130, 'نوف الخضير', 'NOUYYY@C.COM', NULL, NULL, 'client', '0558802823', '200', 2500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-18 00:35:04', '2020-11-18 00:35:04'),
(131, 'سعاد نيازي', 'niazi@c.com', NULL, NULL, 'client', '0544142705', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-18 01:22:38', '2020-11-18 01:22:38'),
(132, 'مريم جبريل', 'mariam@C.com', NULL, NULL, 'client', '0542481236', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-11-21 23:07:03', '2020-11-21 23:07:03'),
(133, 'test client22', 'testclient22@te.com', NULL, NULL, 'client', '05999999999999999999999', '11111', 1111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-12-09 02:27:09', '2021-09-13 06:42:07'),
(134, 'provider', 'provider@provider.com', NULL, '$2y$10$ZU8Km5rw4JuXaDwy66P/qOfSMuSXmtpbVCgu0lpNVCMPBgZh4qZxS', 'provider', NULL, NULL, NULL, 'ffff', '11', 'ww', 6, 22, 'subject1,dd', 'Palestine', '05999999999999999999999', 1, NULL, '2020-12-09 02:30:14', '2021-01-24 04:43:02'),
(135, 'مريم عبدالله البوعنين', 'mareiam@g.com', NULL, NULL, 'client', '1212221', '1380', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-01-29 21:33:49', '2021-01-29 21:33:49'),
(136, 'Joel', 'njorasister@gmail.com', NULL, '$2y$10$edz3Z4xs5.hnucWgKCpEM.I.Zg13.n8BGJI2yGWKJVQee3hQ15fjq', 'provider', NULL, NULL, NULL, 'Paypal and western union', 'master', 'none', 4, 3000, 'subject1,mgt', 'kenya', '1212', 1, NULL, '2021-02-01 03:37:28', '2021-02-01 21:10:03'),
(137, 'فتحيه سمتر', 'fathiah@g.com', NULL, NULL, 'client', '1212', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-01 19:04:16', '2021-02-01 19:04:16'),
(138, 'Joely', 'Jmwangi196@gmail.com', NULL, '$2y$10$CRp9VErhqATsqlTH3gQlju1aqluu7ivFFCGMs/6QqqU8ox0GNIX1y', 'provider', NULL, NULL, NULL, 'Paypal and western union', 'master', 'none', 4, 3000, 'subject1,subject2', 'kenya', '1212', 0, NULL, '2021-02-01 21:08:37', '2021-03-03 23:41:33'),
(139, 'سارة سعد الجبرين', 'sarasad@g.com', NULL, NULL, 'client', '1212221', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-01 21:30:16', '2021-02-01 21:30:16'),
(140, 'الهنوف العريفي', 'hanouf@g.com', NULL, NULL, 'client', '1', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-01 21:45:53', '2021-02-01 21:45:53'),
(141, 'طالب العنزي', 'taleb@gmail.com', NULL, NULL, 'client', '1212', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-06 18:36:12', '2021-02-06 18:36:12'),
(142, 'test222', 'omarm.hd19988@gmail.com', NULL, '$2y$10$nNYgHnn4YhuDNiMH8YxvHOaGzq0FHpETrP0hb4D.po4gUCl6HI2TG', 'provider', NULL, NULL, NULL, '1w', '22', 'dddd', 2, 2, 'subject1,subject2', '2', '2', 1, NULL, '2021-02-07 19:21:22', '2021-06-15 13:33:51'),
(143, 'عمر السحمي', 'ommmmmar@g.com', NULL, NULL, 'client', '1', '1100', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-08 21:03:38', '2021-02-08 21:03:38'),
(144, 'رفعان بن الحمري', 'rafan@g.com', NULL, NULL, 'client', '1', '1100', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-08 21:04:15', '2021-02-08 21:04:15'),
(145, 'ماجد الثبيتي', 'mJED@g.com', NULL, NULL, 'client', '1', '1100', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-08 21:04:50', '2021-02-08 21:04:50'),
(146, 'سفير الذيابي', 'safer@g.com', NULL, NULL, 'client', '12', '1100', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-08 21:05:18', '2021-02-08 21:05:18'),
(147, 'علي جابر خويري', 'majeed@g.com', NULL, NULL, 'client', '1212221', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-09 02:49:07', '2021-02-09 02:51:11'),
(148, 'ابراهيم الطريفي', 'abra@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-09 05:03:02', '2021-02-09 05:03:02'),
(149, 'شروق محسن خرمي', 'shrouq@gmail.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-09 05:17:58', '2021-02-09 05:17:58'),
(150, 'عيضة العنزي', 'Aedah@c.com', NULL, NULL, 'client', '12', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-10 04:39:37', '2021-02-10 04:39:37'),
(151, 'نايف الهايف', 'NNaif@gmail.com', NULL, NULL, 'client', '0', '1380', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-10 07:34:23', '2021-02-10 07:34:23'),
(152, 'نورة العنزي', 'Nourah@g.com', NULL, NULL, 'client', '12', '1000', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-11 07:13:04', '2021-02-11 07:13:04'),
(153, 'omar client2', 'oma.rm.hd19988@gmail.com', NULL, '123456789', 'client', '0592676623', '1111', 1111111111, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-02-13 09:17:38', '2021-09-13 06:42:14'),
(154, 'ليلى حسن ذروي', 'lili@g.com', NULL, NULL, 'client', '1212', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-14 23:54:14', '2021-02-14 23:54:14'),
(155, 'سلامة جبران القاعي', 'salama@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-15 08:15:31', '2021-02-15 08:15:31'),
(156, 'عهود العتيبي', 'ahooou@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-17 10:05:25', '2021-02-17 10:05:25'),
(157, 'وديعة عبد الوهاب', 'wadeah@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-20 22:11:31', '2021-02-20 22:11:31'),
(158, 'روان معمرجي', 'raowan@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-20 23:47:45', '2021-02-20 23:47:45'),
(159, 'عثمان عبد الله الهارون', 'aass@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-20 23:54:18', '2021-02-20 23:54:18'),
(160, 'مناهل عبد اللطيف', 'manahel@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-21 06:00:12', '2021-02-21 06:00:12'),
(161, 'امل احمد العبدلي', 'abdaly@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-22 04:58:03', '2021-02-22 04:58:03'),
(162, 'امل', 'ammal@g.com', NULL, NULL, 'client', '1', '1', 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-27 03:24:40', '2021-02-27 03:24:40'),
(163, 'هديل شحاته', 'haddel@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-27 09:37:18', '2021-02-27 09:37:18'),
(164, 'soso', 'y.ecom2030@hotmail.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-02-28 01:29:02', '2021-09-13 06:42:23'),
(165, 'عبد الرحمن ناصر المسعود', 'massod@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-02-28 03:32:29', '2021-02-28 03:32:29'),
(166, 'test12', 'test12@test12.com', NULL, NULL, 'client', '0592676623', '11232', 1211, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-03-06 08:03:41', '2021-09-13 06:42:31'),
(167, 'جواهر الحميد', 'jawaher@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-14 22:24:47', '2021-03-14 22:24:47'),
(168, 'محمد سعيد الاسمري', 'mohammedw@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-18 04:50:25', '2021-03-18 04:50:25'),
(169, 'افنان ابراهيم', 'afffnan@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-20 04:56:16', '2021-03-20 04:56:16'),
(170, 'جميلة يحي', 'jamelah@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-20 06:02:18', '2021-03-20 06:02:18'),
(171, 'سلمي البوري', 'salma@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-21 05:58:30', '2021-03-21 05:58:30'),
(172, 'مرح وليد', 'marah@g.vo', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-22 02:33:07', '2021-03-22 02:33:07'),
(173, 'فاتن اخت ياسمين', 'fatenyaso@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-22 03:00:27', '2021-03-22 03:00:27'),
(174, 'حياة الشامي', 'hayahh@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-22 05:04:08', '2021-03-22 05:04:08'),
(175, 'ريم نهايف المطيري', 'remamotairi@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-22 05:26:20', '2021-03-22 05:26:20'),
(176, 'سارة خميس الشامسي', 'sarashamsi@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-22 18:20:09', '2021-03-22 18:20:09'),
(177, 'مريم العنزي', 'maraisma@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-22 22:59:08', '2021-03-22 22:59:08'),
(178, 'الحسين الحدري', 'alhusain@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-23 18:44:27', '2021-03-23 18:44:27'),
(179, 'نوره العنزي', 'noreau@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-23 23:57:45', '2021-03-23 23:57:45'),
(180, 'علي البشر', 'alialbesher@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-24 05:52:51', '2021-03-24 05:52:51'),
(181, 'حسن الجبارة', 'hasssa@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-26 01:58:32', '2021-03-26 01:58:32'),
(182, 'ابرار عمر صالح', 'qqqqq@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-26 06:21:51', '2021-03-26 06:21:51'),
(183, 'عهود علي خبراني', 'ahooood@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-28 07:14:04', '2021-03-28 07:14:04'),
(184, 'علي شوعي', 'shoooi@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-29 03:58:31', '2021-03-29 03:58:31'),
(185, 'ياسمين مقلد', 'yasmaine@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-30 04:23:34', '2021-03-30 04:23:34'),
(186, 'بشاير خالد', 'bashair@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-30 07:20:01', '2021-03-30 07:20:01'),
(187, 'ام تركي', 'omtyr@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-03-31 04:38:51', '2021-03-31 04:38:51'),
(188, 'عايشة عبد العزيز', 'aisha@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-04-01 05:58:04', '2021-04-01 05:58:04'),
(189, 'غازي', 'ghazia@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-04-01 06:10:58', '2021-04-01 06:10:58'),
(190, 'داليا', 'daliaaa2@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-04-02 04:09:35', '2021-04-02 04:09:35'),
(191, 'مرام الشمري', 'marame@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-04-04 04:10:42', '2021-04-04 04:10:42'),
(192, 'مها خلف', 'mahakalaf@gmail.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-04-09 04:11:40', '2021-04-09 04:11:40'),
(193, 'سامي سعود العنزي', 'samia@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-04-15 21:22:01', '2021-04-15 21:22:01'),
(194, 'سلمي فهد النويس', 'salmeee@c.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-15 00:57:07', '2021-06-15 00:57:07'),
(195, 'سجى', 'saja@c.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-19 14:44:43', '2021-06-19 14:44:43'),
(196, 'دلال عامر الدوسري', 'dalo@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-26 13:18:23', '2021-06-26 13:18:23'),
(197, 'تهاني الدوسري', 'tahani@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-26 19:49:15', '2021-06-26 19:49:15'),
(198, 'Josh', 'gradesaver247@gmail.com', NULL, '$2y$10$8/Ks5ieaWwLKaLkTd.X2DeRpylTEFj/.WuntOnKwsMoTzivUDI7cu', 'provider', NULL, NULL, NULL, 'Paypal and western union', 'master', 'none', 3, 2000, 'subject1,subject2,all', 'kenya', '1212', 0, 'cHcmHz4fwWGLRttxUfCVJJq23EbeKUU7gyPCzNxqrI1mQOT149Jyhr6UA2Je', '2021-06-28 15:14:50', '2021-06-28 15:14:50'),
(199, 'نورة المري', 'noree@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-06-28 23:16:39', '2021-06-28 23:16:39'),
(200, 'بهيه الجهني', 'bahhh@g.cmo', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-07-02 00:43:57', '2021-07-02 00:43:57'),
(201, 'نوير عبدالله', 'nower@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-07-02 21:46:07', '2021-07-02 21:46:07'),
(202, 'مي الدوسري', 'may@g.com', NULL, NULL, 'client', '1', '1', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-07-23 02:36:23', '2021-07-23 02:36:23'),
(203, 'رنا القحطاني', 'rana@g.com', NULL, NULL, 'client', '1', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-08-24 06:00:28', '2021-09-08 02:11:22'),
(204, 'memo', 'academicboldsteps@gmail.com', NULL, NULL, 'client', '1212221', '100', 1200, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2021-08-30 03:56:19', '2021-09-04 02:45:09'),
(205, 'gg', 'academicboldsteps@gmail.co', NULL, NULL, 'client', '1212221', '1200', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-09-04 02:46:53', '2021-09-13 20:36:13'),
(206, 'بشرى محمد الخرس', 'Bushra.m.k.92@gmail.com', NULL, NULL, 'client', '1', '1200', 10500, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-09-08 02:08:34', '2021-09-08 02:08:34'),
(207, 'عبد العزيز عبدالله', 'aziz.mohize@gmail.com', NULL, NULL, 'client', '0555446022', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-09-13 05:21:46', '2021-09-13 05:21:46'),
(208, 'مشعل العتيبي صحية', 'alotaibimish@gmail.com', NULL, NULL, 'client', '0504230009', '0', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2021-09-13 05:32:21', '2021-09-13 05:32:21');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_client_id_foreign` (`client_id`),
  ADD KEY `orders_provider_id_foreign` (`provider_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1976;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=209;

--
-- قيود الجداول المحفوظة
--

--
-- القيود للجدول `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- القيود للجدول `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_client_id_foreign` FOREIGN KEY (`client_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `orders_provider_id_foreign` FOREIGN KEY (`provider_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
