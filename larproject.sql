-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 06:14 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_23_075313_create_products_table', 1),
(5, '2020_03_24_085217_create_product1s_table', 2),
(6, '2020_03_28_153058_create_product2s_table', 3),
(7, '2020_04_01_105109_create_payments_table', 4),
(8, '2020_04_01_115122_create_payments_table', 5);

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
-- Table structure for table `product2s`
--

CREATE TABLE `product2s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double NOT NULL,
  `shipping_cost` double NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product2s`
--

INSERT INTO `product2s` (`id`, `name`, `price`, `shipping_cost`, `description`, `category_id`, `item_id`, `image_path`, `created_at`, `updated_at`) VALUES
(1, 'Pita Bread', 135, 10, 'Originating in the Middle East, pita is a leavened flatbread made of wheat flour. They are cooked at high temperatures, causing the liquid in the dough to escape. This forms a large air bubble in the center, which becomes a pocket when cut in half — great for a hand-held falafel sandwich. They are also perfect for dipping when cut into wedges and toasted.', 1, 1, 'br1.jpg', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(2, 'Rye bread', 115, 10, 'Rye bread is made with a combination of bread flour and rye flour, giving it an assertive rye flavor and a tight crumb. Caraway or dill seeds are often added for an earthy flavor. Rye bread is what gives pastrami and corned beef sandwiches their signature flavor.', 1, 2, 'br2.jpg', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(3, 'Sourdough bread', 95, 10, 'Sourdough is a yeasted bread made from a starter — a fermented mixture of flour and water that makes many batches of bread. In fact, it can be kept for a VERY long time! The resulting loaf has a substantial crust with a soft, chewy center and large air bubbles. It makes a BOMB grilled cheese!', 1, 3, 'br3.jfif', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(4, 'Sicilian Pizza', 115, 10, 'Sicilian pizza, also known as \"sfincione,\" provides a thick cut of pizza with pillowy dough, a crunchy crust, and robust tomato sauce. This square-cut pizza is served with or without cheese, and often with the cheese underneath the sauce to prevent the pie from becoming soggy. Sicilian pizza was brought to America in the 19th century by Sicilian immigrants and became popular in the United States after the Second World War.', 2, 1, 'p1.jpg', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(5, 'Greek Pizza', 195, 10, 'Greek pizza was created by Greek immigrants who came to America and were introduced to Italian pizza. Greek-style pizza, especially popular in the New England states, features a thick and chewy crust cooked in shallow, oiled pans, resulting in a nearly deep-fried bottom. While this style has a crust that is puffier and chewier than thin crust pizzas, it’s not quite as thick as a deep-dish or Sicilian crust.', 2, 2, 'p2.jpg', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(6, 'Patty Burger', 145, 13.39, 'This homage to the classic American burger joint serves great food. The patties are made with Double Gold American beef from Wisconsin, served in a potato milk bun. The double cheeseburger is the signature option. Chosen by Shane Osborn of Arcane, Hong Kong', 3, 1, 'b1.jpeg', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(7, 'Onion Smashed Burgers', 115, 10, 'Inspired by the sliders at White Manna in Hackensack, New Jersey, Adam Fleischman creates beef patties by flattening balls of ground meat on the griddle. Tip: Burger purists handle ground meat as little as possible; over-working the beef can create a tight, meatloaf texture.', 3, 2, 'b2.jpg', '2020-03-28 10:25:54', '2020-03-28 10:25:54'),
(8, 'Chile-Stuffed Cheeseburger', 135, 10, 'The gooey filling for these juicy burgers was inspired by the Mexican dip chile con queso, made with melted cheese and roasted chiles.', 3, 3, 'b3.jpg', '2020-03-28 10:25:55', '2020-03-28 10:25:55');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Aman', 'sktakhar333@gmail.com', NULL, '$2y$10$xBYJiOEd4g.UQ7WVlIHSkOLQuOPllJ9XP/OcdPBAEUI3mRtLP8AQ.', NULL, '2020-03-23 03:45:46', '2020-03-23 03:45:46'),
(3, 'Kiran', 'k@gmail.com', NULL, '$2y$10$TytOG.5SRUW5WgsNpkvYuezU3pRiM5kCLSgN/WRH6Wo6mDh/u56W6', NULL, '2020-03-23 03:55:13', '2020-03-23 03:55:13'),
(8, 'Simrat Kaur', 'simrat.kaur.takhar@gmail.com', NULL, '$2y$10$2syyzPod.13ulg8PqHZ9d./PfBa0iys8ERxABMwQzV9LiiHmmiavO', NULL, '2020-03-24 02:26:11', '2020-03-24 02:26:11'),
(9, 'HAR', 'slkl@gmail.com', NULL, '$2y$10$wFD01hiskxQ5WJynI0I0JOiqvnMoTgUok.FYvxgLi4ui8bzk612dK', NULL, '2020-03-24 05:17:49', '2020-03-24 05:17:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `product2s`
--
ALTER TABLE `product2s`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product2s_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `product2s`
--
ALTER TABLE `product2s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
