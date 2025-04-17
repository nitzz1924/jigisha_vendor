-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 11:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jigisha_vendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `masters`
--

CREATE TABLE `masters` (
  `id` int(11) NOT NULL,
  `label` varchar(255) DEFAULT NULL,
  `type` varchar(255) NOT NULL DEFAULT 'Master',
  `categoryimage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `masters`
--

INSERT INTO `masters` (`id`, `label`, `type`, `categoryimage`, `created_at`, `updated_at`) VALUES
(44, 'Product Categories', 'Master', '', '2025-03-01 00:46:50', '2025-03-04 04:54:16'),
(49, 'Chemicals', 'Product Categories', '1742550967_bez-imeni-1-65.jpg', '2025-03-04 05:01:18', '2025-03-21 04:26:07'),
(50, 'Cleaners', 'Product Categories', '1742550996_bez-imeni-1-65.jpg', '2025-03-04 05:01:34', '2025-03-21 04:26:36'),
(51, 'Washers', 'Product Categories', '1742550943_e885ae8cbd58d449e96a0fdee55f47b21e14b1be.jpeg', '2025-03-04 05:01:46', '2025-03-21 04:25:43'),
(52, 'Blog Categories', 'Master', '', '2025-03-25 01:48:20', '2025-03-25 01:48:20'),
(53, 'Business', 'Blog Categories', '', '2025-03-25 01:48:28', '2025-03-25 01:48:28'),
(54, 'Health', 'Blog Categories', '', '2025-03-25 01:48:36', '2025-03-25 01:48:36'),
(55, 'Computer Software', 'Blog Categories', '', '2025-03-25 01:48:53', '2025-03-25 01:48:53'),
(56, 'Fashion', 'Blog Categories', '', '2025-03-25 01:49:03', '2025-03-25 01:49:03'),
(57, 'Order Status', 'Master', '', '2025-04-09 02:03:47', '2025-04-09 02:03:47'),
(58, 'Completed', 'Order Status', '', '2025-04-09 02:04:10', '2025-04-09 02:04:10'),
(59, 'Processing', 'Order Status', '', '2025-04-09 02:04:18', '2025-04-09 02:04:18'),
(60, 'Cancelled', 'Order Status', '', '2025-04-09 02:04:27', '2025-04-09 02:04:27'),
(61, 'On Hold', 'Order Status', '', '2025-04-09 02:04:34', '2025-04-09 02:04:34'),
(62, 'Refund', 'Order Status', '', '2025-04-09 02:04:41', '2025-04-09 02:04:41');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2025_01_02_080358_add_two_factor_columns_to_users_table', 1),
(5, '2025_01_02_080436_create_personal_access_tokens_table', 1),
(6, '2025_01_09_070838_add_website_link_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\RegisterUser', 4, 'AuthToken', 'c66de47a3a37dd288023acbce8a9b689fe675ab3ea78510aa8f76634c8d1ead3', '[\"*\"]', '2025-02-27 07:50:00', NULL, '2025-02-06 01:18:37', '2025-02-27 07:50:00'),
(2, 'App\\Models\\RegisterUser', 4, 'AuthToken', '2fefbabb846b97adfe982636046d943ae0a733d0542cb3df0576616fb35a36d8', '[\"*\"]', NULL, NULL, '2025-02-06 05:26:40', '2025-02-06 05:26:40'),
(3, 'App\\Models\\RegisterUser', 4, 'AuthToken', 'faa67e6120bf28184d0ba3ddd2890d0a5c0a0f623dcd38431afe59155ea62d5e', '[\"*\"]', NULL, NULL, '2025-02-06 05:51:29', '2025-02-06 05:51:29'),
(4, 'App\\Models\\RegisterUser', 11, 'AuthToken', 'c2570152b33048f47492068383c1e72143978c8f3e9f177b17b7e39163797cd8', '[\"*\"]', NULL, NULL, '2025-02-06 06:08:10', '2025-02-06 06:08:10'),
(5, 'App\\Models\\RegisterUser', 11, 'AuthToken', 'dbf7c19a1eb71fa44fc1dea553a69ce4dd95f17b0a3091d924b1ed4a88324f5d', '[\"*\"]', '2025-02-06 06:56:50', NULL, '2025-02-06 06:49:32', '2025-02-06 06:56:50'),
(6, 'App\\Models\\RegisterUser', 4, 'AuthToken', 'ef5497a9641d058e851133de819223cf08889f233047b2954507184720ecf1c6', '[\"*\"]', NULL, NULL, '2025-02-08 00:29:59', '2025-02-08 00:29:59');

-- --------------------------------------------------------

--
-- Table structure for table `register_companies`
--

CREATE TABLE `register_companies` (
  `id` int(11) NOT NULL,
  `companyname` varchar(255) DEFAULT NULL,
  `companylogo` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` varchar(255) DEFAULT NULL,
  `contactnumber` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `officeaddress` text DEFAULT NULL,
  `registrationimage` varchar(255) DEFAULT NULL,
  `pancardimage` varchar(255) DEFAULT NULL,
  `gstpercentage` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_companies`
--

INSERT INTO `register_companies` (`id`, `companyname`, `companylogo`, `city`, `state`, `country`, `pincode`, `contactnumber`, `email`, `officeaddress`, `registrationimage`, `pancardimage`, `gstpercentage`, `created_at`, `updated_at`) VALUES
(2, 'True Omega', '1740809527_omegafinallogo.png', 'Ajmer', 'Rajasthan', 'India', '305001', '0000000000', 'true@gmail.com', 'Demo Address', '1736320860_music.png', '1736320860_music.png', '5', '2025-01-08 01:51:00', '2025-04-09 01:59:27');

-- --------------------------------------------------------

--
-- Table structure for table `register_users`
--

CREATE TABLE `register_users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `company_name` varchar(255) DEFAULT NULL,
  `company_document` varchar(255) DEFAULT NULL,
  `profile_photo_path` varchar(255) DEFAULT NULL,
  `verification_status` varchar(255) DEFAULT '0',
  `userstatus` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register_users`
--

INSERT INTO `register_users` (`id`, `name`, `mobile`, `email`, `password`, `company_name`, `company_document`, `profile_photo_path`, `verification_status`, `userstatus`, `remember_token`, `created_at`, `updated_at`) VALUES
(1003, 'Jigisha Enterprises', '5555555555', 'jigisha@gamil.com', '$2y$12$k1Z.ciLdMwZyhYFDQKvLYuOcniIwHqoxysmHnssTcRXv7ztdTtQ/W', NULL, NULL, '/defaultuser.png', '0', NULL, NULL, '2025-04-17 04:10:57', '2025-04-17 04:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('5KUoiElyixy8AsQ037C0BEgliboCeVx0RTvPiQwR', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZ0Z4VnBnbzgzbDRyUW93MHJGVlNOQW5SczZsb3dKcWdYUjJxeW90dCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3ZlbmRvci1yZWdpc3RlcmF0aW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1744865416),
('MpkeiFNA4R1IxVVhiLK8eHevbv7u4MQ8rsr439iW', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoib3lxY2tpWUVtMmZFZUM4bVBHenhtN3FTZ2J2SjJpY3daeFBhTTF1SCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3ZlbmRvci1yZWdpc3RlcmF0aW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1744865417),
('PCJyKlXwUYR7stNT7HnIhtq33pgZog9Th7qEfIQ9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZDAwYWFTZWQ0b2tKRjRLQVlKa1dxSVlHaElKNDVVZXpVMlVRa3d1TiI7czo1OiJlcnJvciI7czo0MjoiWW91IG11c3QgYmUgbG9nZ2VkIGluIHRvIGFjY2VzcyB0aGlzIHBhZ2UuIjtzOjY6Il9mbGFzaCI7YToyOntzOjM6Im5ldyI7YTowOnt9czozOiJvbGQiO2E6MTp7aTowO3M6NToiZXJyb3IiO319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL215cHJvZmlsZSI7fX0=', 1744865416),
('ptm31CZyKyWu43Lg7z0sciWJyITH1mX9rBF8T2ce', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTGVYa1lTaDRsQzZ4NE00Q3dvYk9kVU9POWo1NTJWdGNqb2cxUkhxTyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3ZlbmRvci1yZWdpc3RlcmF0aW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1744865416),
('TqVFq3Fro7lae82zt2HLKqBGFpQWgWArFIhSLtXB', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/135.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNTVJRk9zY00xS1NCVHY1Y0tPaWN2R0hqSVQyTmJ1ejNqZndGZHQ5WiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJuZXciO2E6MDp7fXM6Mzoib2xkIjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VyL3ZlbmRvci1yZWdpc3RlcmF0aW9uIjt9fQ==', 1744883024);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(255) DEFAULT NULL,
  `website_link` varchar(255) DEFAULT NULL,
  `fulladdress` varchar(255) DEFAULT NULL,
  `old_password` varchar(255) DEFAULT NULL,
  `new_password` varchar(255) DEFAULT NULL,
  `confirm_password` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `website_link`, `fulladdress`, `old_password`, `new_password`, `confirm_password`, `created_at`, `updated_at`) VALUES
(1, 'ALOKRISH PVT LTD', 'true@gmail.com', NULL, '$2y$12$uVAfvTIVFxvUGl7sQBT5XeXNnyUtEVkFs78M8zvqHFaJFl8GzOuta', NULL, NULL, NULL, NULL, NULL, '1740809706_faviomega.png', 'www.investorlands.com', 'Ajmer, Rajasthan, India.', NULL, NULL, NULL, '2025-01-02 02:38:23', '2025-03-01 00:45:06');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `userid` varchar(255) DEFAULT NULL,
  `firm_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `firm_type` varchar(255) DEFAULT NULL,
  `company_status` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `street_address` varchar(255) DEFAULT NULL,
  `apartment` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `zip` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `pan` varchar(255) DEFAULT NULL,
  `pan_file` varchar(255) DEFAULT NULL,
  `gst` varchar(255) DEFAULT NULL,
  `gst_file` varchar(255) DEFAULT NULL,
  `certificate_incorporation` varchar(255) DEFAULT NULL,
  `incorporation_file` varchar(255) DEFAULT NULL,
  `establishment_certificate` varchar(255) DEFAULT NULL,
  `establishment_file` varchar(255) DEFAULT NULL,
  `trademark_certificates` varchar(255) DEFAULT NULL,
  `trademark_file` varchar(255) DEFAULT NULL,
  `turnover` varchar(255) DEFAULT NULL,
  `ca_certificate_file` varchar(255) DEFAULT NULL,
  `msme` varchar(255) DEFAULT NULL,
  `msme_certificate_file` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `numberofemployee` varchar(255) DEFAULT NULL,
  `product_brief` varchar(255) DEFAULT NULL,
  `business_brief` varchar(255) DEFAULT NULL,
  `company_brief` varchar(255) DEFAULT NULL,
  `product_spec_file` varchar(255) DEFAULT NULL,
  `list_product_file` varchar(255) DEFAULT NULL,
  `product_certificate_file` varchar(255) DEFAULT NULL,
  `product_test_file` varchar(255) DEFAULT NULL,
  `catalog_file` varchar(255) DEFAULT NULL,
  `approval_certificate_file` varchar(255) DEFAULT NULL,
  `epfo_file` varchar(255) DEFAULT NULL,
  `iso_file` varchar(255) DEFAULT NULL,
  `product_image_file` varchar(255) DEFAULT NULL,
  `list_plant_file` varchar(255) DEFAULT NULL,
  `registered_address_file` varchar(255) DEFAULT NULL,
  `head_office_image` varchar(255) DEFAULT NULL,
  `list_product_1` varchar(255) DEFAULT NULL,
  `annual_production_1` varchar(255) DEFAULT NULL,
  `plan_image_1` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `userid`, `firm_name`, `email`, `firm_type`, `company_status`, `phone`, `street_address`, `apartment`, `city`, `state`, `zip`, `country`, `website`, `pan`, `pan_file`, `gst`, `gst_file`, `certificate_incorporation`, `incorporation_file`, `establishment_certificate`, `establishment_file`, `trademark_certificates`, `trademark_file`, `turnover`, `ca_certificate_file`, `msme`, `msme_certificate_file`, `product`, `numberofemployee`, `product_brief`, `business_brief`, `company_brief`, `product_spec_file`, `list_product_file`, `product_certificate_file`, `product_test_file`, `catalog_file`, `approval_certificate_file`, `epfo_file`, `iso_file`, `product_image_file`, `list_plant_file`, `registered_address_file`, `head_office_image`, `list_product_1`, `annual_production_1`, `plan_image_1`, `created_at`, `updated_at`) VALUES
(3, '1003', 'kishan', 'ans@gmail.com', '[\"Sole proprietorship\",\"NGO\"]', '[\"Manu\\/OEM\",\"INDIAn subs\"]', '917678045430', 'kerya ki dhani markerwali', 'makerwali road ajmer', 'ajmer', 'Rajasthan', '305004', NULL, NULL, '34234', '1744882896_FIRM PAN.pdf', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '1744882896_architecture.png', '2025-04-17 04:11:36', '2025-04-17 04:11:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `masters`
--
ALTER TABLE `masters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `register_companies`
--
ALTER TABLE `register_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_users`
--
ALTER TABLE `register_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `masters`
--
ALTER TABLE `masters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `register_companies`
--
ALTER TABLE `register_companies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register_users`
--
ALTER TABLE `register_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1004;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
