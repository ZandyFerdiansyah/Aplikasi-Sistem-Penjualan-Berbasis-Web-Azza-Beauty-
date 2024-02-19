-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 04:49 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `azzabeauty`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `name`, `email`, `phone`, `address`, `product_title`, `quantity`, `price`, `image`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(25, 'user', 'user@gmail.com', '0215856633', 'Jakarta Barat', 'Dear Me Beauty Skin Barrier Sunscreen', '2', '252', '1686891782.jpg', '2', '1', '2023-06-23 22:46:11', '2023-06-23 23:57:41'),
(26, 'user', 'user@gmail.com', '0215856633', 'Jakarta Barat', 'Avoskin Your Skin Bae Vitamin C Serum', '5', '635', '1687364806.jpg', '12', '1', '2023-06-23 23:58:02', '2023-06-24 04:02:38'),
(30, 'user', 'user@gmail.com', '0215856633', 'Jakarta Barat', 'Skintific 5X Ceramide Barier Repair Serum', '2', '308', '1687325669.jpg', '9', '1', '2023-06-24 00:07:11', '2023-06-24 00:09:40'),
(31, 'user', 'user@gmail.com', '0215856633', 'Jakarta Barat', 'Skintific 5X Ceramide Barier Repair Moisturizer', '2', '308', '1687364730.jpg', '8', '1', '2023-06-24 03:50:17', '2023-06-24 04:02:23'),
(33, 'user', 'user@gmail.com', '0215856633', 'Jakarta Barat', 'Dear Me Beauty Skin Barrier Cream', '1', '118', '1686827977.jpg', '3', '1', '2023-06-28 21:38:05', '2023-06-28 21:38:05'),
(34, 'Taufik', 'taufikgoodman@gmail.com', '08988387271', 'Jl. Palembang', 'Dear Me Beauty Skin Barrier Cream', '1', '118', '1686827977.jpg', '3', '8', '2023-11-22 21:22:04', '2023-11-22 21:22:04');

-- --------------------------------------------------------

--
-- Table structure for table `catagories`
--

CREATE TABLE `catagories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `catagories`
--

INSERT INTO `catagories` (`id`, `category_name`, `created_at`, `updated_at`) VALUES
(1, 'Serum', '2023-06-14 09:39:40', '2023-06-14 09:39:40'),
(2, 'Toner', '2023-06-14 09:47:25', '2023-06-14 09:47:25'),
(3, 'Sunscreen', '2023-06-14 09:48:17', '2023-06-14 09:48:17'),
(4, 'Cream', '2023-06-14 09:52:26', '2023-06-14 09:52:26'),
(5, 'Masker', '2023-06-14 09:53:11', '2023-06-14 09:53:11'),
(6, 'Moisturizer', '2023-06-14 09:54:50', '2023-06-14 09:54:50');

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
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_06_12_135544_create_sessions_table', 1),
(7, '2023_06_14_161316_create_catagories_table', 2),
(8, '2023_06_15_032949_create_products_table', 3),
(9, '2023_06_15_035343_create_products_table', 4),
(10, '2023_06_17_113428_create_carts_table', 5),
(11, '2023_06_18_145442_create_orders_table', 6),
(12, '2023_06_22_050524_create_notifications_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paymenttype` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `namatransfer` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tanggaltransfer` date DEFAULT NULL,
  `buktitransfer` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `name`, `email`, `phone`, `address`, `user_id`, `product_title`, `quantity`, `price`, `image`, `product_id`, `paymenttype`, `payment_status`, `delivery_status`, `created_at`, `updated_at`, `namatransfer`, `tanggaltransfer`, `buktitransfer`) VALUES
(1, 'Sugeng', 'sugeng@gmail.com', '08951285912', 'Jl. Palembang', '9', 'Dear Me Beauty Skin Barrier Sunscreen', '1', '126', '1686891782.jpg', '2', 'cash on delivery', 'cash on delivery', 'processing', '2023-11-29 02:23:06', '2023-11-29 02:23:06', '', '0000-00-00', ''),
(2, 'Sugeng', 'sugeng@gmail.com', '08951285912', 'Jl. Palembang', '9', 'Dear Me Beauty Skin Barrier Cream', '1', '118', '1686827977.jpg', '3', 'cash on delivery', 'cash on delivery', 'processing', '2023-11-29 02:23:06', '2023-11-29 02:23:06', '', '0000-00-00', ''),
(5, 'Sugeng', 'sugeng@gmail.com', '08951285912', 'Jl. Palembang', '9', 'Skintific 10% Niacinamide Moisturizer', '1', '154', '1687364698.jpg', '7', 'Proof of Payment by Transfer / QRIS', 'paid', 'processing', '2023-11-29 02:26:17', '2023-11-29 03:23:04', 'Sugeng', '2023-11-29', '20231129100900bukti.jpeg'),
(6, 'Sugeng', 'sugeng@gmail.com', '08951285912', 'Jl. Palembang', '9', 'Skintific 5X Ceramide Barier Repair Moisturizer', '1', '154', '1687364730.jpg', '8', 'Proof of Payment by Transfer / QRIS', 'Rejected', 'Rejected', '2023-11-29 02:26:17', '2023-11-29 03:23:26', 'Sugeng', '2023-11-29', '20231129102321bukti.jpeg'),
(7, 'Sugeng', 'sugeng@gmail.com', '08951285912', 'Jl. Palembang', '9', 'Dear Me Beauty Skin Barrier Sunscreen', '2', '252', '1686891782.jpg', '2', 'Proof of Payment by Transfer / QRIS', 'paid', 'delivered', '2023-11-29 03:27:10', '2023-11-29 03:28:30', 'Sugeng', '2023-11-29', '20231129102738bukti.jpeg'),
(8, 'Sugeng', 'sugeng@gmail.com', '08951285912', 'Jl. Palembang', '9', 'Dear Me Beauty Skin Barrier Cream', '1', '118', '1686827977.jpg', '3', 'Proof of Payment by Transfer / QRIS', 'Rejected', 'Rejected', '2023-11-29 03:27:10', '2023-11-29 03:28:26', 'Sugeng', '2023-11-29', '20231129102752bukti.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
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
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `catagory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_price` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `image`, `catagory`, `quantity`, `price`, `discount_price`, `created_at`, `updated_at`) VALUES
(2, 'Dear Me Beauty Skin Barrier Sunscreen', 'This is sunscreen', '1686891782.jpg', 'Sunscreen', '7', '139', '126', '2023-06-15 04:18:05', '2023-11-29 01:51:19'),
(3, 'Dear Me Beauty Skin Barrier Cream', 'This is cream', '1686827977.jpg', 'Cream', '12', '129', '118', '2023-06-15 04:19:37', '2023-06-16 08:58:37'),
(7, 'Skintific 10% Niacinamide Moisturizer', 'This is moisturizer', '1687364698.jpg', 'Moisturizer', '12', '169', '154', '2023-06-16 00:54:50', '2023-06-21 09:24:58'),
(8, 'Skintific 5X Ceramide Barier Repair Moisturizer', 'This is moisturizer', '1687364730.jpg', 'Moisturizer', '12', '169', '154', '2023-06-16 00:55:26', '2023-06-21 09:25:30'),
(9, 'Skintific 5X Ceramide Barier Repair Serum', 'This is serum', '1687325669.jpg', 'Serum', '12', '169', '154', '2023-06-16 00:56:10', '2023-06-20 22:34:29'),
(10, 'Skintific 10% Niacinamide Serum', 'This is serum', '1687364750.jpg', 'Serum', '12', '169', '154', '2023-06-16 00:56:33', '2023-06-21 09:25:50'),
(11, 'Avoskin Your Skin Bae Niacinamide Serum', 'This is serum', '1687364786.jpg', 'Serum', '12', '139', '127', '2023-06-16 00:57:33', '2023-06-21 09:26:27'),
(12, 'Avoskin Your Skin Bae Vitamin C Serum', 'This is serum', '1687364806.jpg', 'Serum', '12', '139', '127', '2023-06-16 00:57:55', '2023-06-21 09:26:46'),
(13, 'Avoskin Your Skin Bae Latic Acid Serum', 'This is serum', '1687364821.jpg', 'Serum', '12', '129', '118', '2023-06-16 00:58:13', '2023-06-21 09:27:01'),
(14, 'Avoskin Your Skin Bae Alpha Arbutin Serum', 'This is serum', '1687364839.jpg', 'Serum', '12', '139', '127', '2023-06-16 00:58:34', '2023-06-21 09:27:19'),
(15, 'Avoskin Your Skin Bae Hyacross Serum', 'This is serum', '1687364857.jpg', 'Serum', '12', '139', '127', '2023-06-16 00:59:10', '2023-06-21 09:27:37'),
(16, 'Scarlett Glowtening Serum', 'This is serum', '1687364879.jpg', 'Serum', '24', '75', '65', '2023-06-16 01:00:22', '2023-06-21 09:27:59'),
(17, 'Scarlett Acne Serum', 'This is serum', '1687364909.jpg', 'Serum', '24', '75', '65', '2023-06-16 01:01:02', '2023-06-21 09:28:29'),
(18, 'Scarlett Brightly Serum', 'This is serum', '1687364946.jpg', 'Serum', '24', '75', '65', '2023-06-16 01:01:35', '2023-06-21 09:29:06'),
(19, 'Dear Me Beauty Primer Sunstick', 'This is sunscreen', '1687006717.jpg', 'Sunscreen', '12', '139', NULL, '2023-06-17 05:58:37', '2023-06-17 06:26:38'),
(20, 'Lacoco Watermelon Glow Mask', 'This is mask', '1687008309.jpg', 'Masker', '12', '250', NULL, '2023-06-17 06:25:09', '2023-06-17 06:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('Ygwv66Nzy7tgp7Zb3kAdtuPWEtEbN0I2LRW1WcZu', 8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiWDE4c2IwRWlzUTFqcXRwcWtreHNWN2V4OWJZSGhtRkdyQ21oQ3BxUyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9vcmRlciI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjg7fQ==', 1701263346);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `usertype`, `phone`, `address`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '0', '0215856633', 'Jakarta Barat', '2023-06-18 03:51:50', '$2y$10$phySpdtnK6lRfmKQzmrKHuJPH4z7fIsWFl9jz9VG5px5l2BlR5IAK', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 07:47:28', '2023-06-12 07:47:28'),
(2, 'admin', 'admin@gmail.com', '1', '0215854488', 'Jakarta Pusat', '2023-06-19 03:52:19', '$2y$10$d.y3s4SYzDWtKRZgn/G8i.kHLP5FLvRgaJG2CYg9Lv4yMGnMp3aBi', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-12 07:49:49', '2023-06-12 07:49:49'),
(3, 'ferdi', 'ferdi@gmail.com', '0', '087714502316', 'Jakarta Barat', '2023-06-20 10:06:08', '$2y$10$2LN4BprS.86lp6KpqhWe6.pi.FdNLPXvXR7JL563LGwGB5PBxfCg.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-17 09:07:03', '2023-06-17 09:07:03'),
(5, 'Azza Beauty', 'azzabeauty.in@gmail.com', '0', '088219940275', 'Tangerang', '2023-06-21 20:47:29', '$2y$10$xI7dvio28iQb2xgbExSl7uN4ZmS0IjqmzIu9V11bhwVxaNJCWjt7W', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-21 20:40:47', '2023-06-21 20:47:29'),
(7, 'Zandy', 'zandyferdi.in@gmail.com', '0', '0823231450238', 'Tangerang Selatan', '2023-06-21 21:10:34', '$2y$10$h24X/EenUHXwltbL9zsU..Fo83R4CWs54/C05ofMS7YOA01KpFc5i', NULL, NULL, NULL, 'VrU5ExcXgBDTEuWZk4nkLJU66JkVEV4k832uYePyO0Ryb9yAa2qmGcJMkZVV', NULL, NULL, '2023-06-21 21:10:17', '2023-06-24 03:33:33'),
(8, 'Taufik', 'taufikgoodman@gmail.com', '1', '08988387271', 'Jl. Palembang', '2023-06-21 21:10:34', '$2y$10$L.0aReV15k1rKoCldW5Yfu4IddmzxUrQlie9qtMiPrGhwDByVxqe.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-22 21:21:16', '2023-11-22 21:21:16'),
(9, 'Sugeng', 'sugeng@gmail.com', '0', '08951285912', 'Jl. Palembang', '2023-06-21 21:10:34', '$2y$10$teAF7wxAf75JRlbDmZuasOHEI7J32dbRhUOYfnXEjGAbFdJL16qz.', NULL, NULL, NULL, NULL, NULL, NULL, '2023-11-29 01:52:11', '2023-11-29 01:52:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagories`
--
ALTER TABLE `catagories`
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
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
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
-- Indexes for table `products`
--
ALTER TABLE `products`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `catagories`
--
ALTER TABLE `catagories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
