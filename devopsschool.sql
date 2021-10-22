-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2021 at 01:57 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.1.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `devopsschool`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('tumelozitha490@gmail.com', '$2y$10$7GxE7KjbxlWjeUdXZQpOOe4j3s.FnWBTbeJu9NyZdFPlb.hzW0KEy', '2021-10-20 15:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `title` varchar(255) NOT NULL,
  `body` varchar(255) NOT NULL,
  `updated_at` date NOT NULL,
  `created_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`title`, `body`, `updated_at`, `created_at`) VALUES
('tu', 'ts', '2021-10-19', '2021-10-19'),
('tu', 'ts', '2021-10-19', '2021-10-19'),
('sc', 'sc', '2021-10-19', '2021-10-19'),
('sc', 'sc', '2021-10-19', '2021-10-19'),
('sc', 'sc', '2021-10-19', '2021-10-19'),
('sc', 'sc', '2021-10-19', '2021-10-19'),
('sc', 'sc', '2021-10-19', '2021-10-19'),
('tu', 'ts', '2021-10-19', '2021-10-19'),
('tu', 'ts', '2021-10-19', '2021-10-19'),
('tu', 'ts', '2021-10-19', '2021-10-19');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `role_id` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email_verified_at` varchar(255) DEFAULT NULL,
  `remember_token` varchar(255) DEFAULT NULL,
  `detail` text,
  `created_at` date DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `username`, `name`, `lastname`, `role_id`, `email`, `password`, `email_verified_at`, `remember_token`, `detail`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', 'admin', 'admin', 'admin@gmail.com', 'pass@admin', NULL, NULL, 'This is Admin role', NULL, NULL),
(2, 'manager', 'manager', 'manager', 'manager', 'manager@gmail.com', 'pass@manager', NULL, NULL, 'This is Manager role', NULL, NULL),
(3, 'user', 'user', 'user', 'user', 'user@gmail.com', 'pass@user', NULL, NULL, 'This is user role', NULL, NULL),
(4, 'manager', 'manager', 'manager', 'manager', 'manager@gmail.com', 'pass@manager', NULL, NULL, 'This is Manager role', NULL, NULL),
(7, NULL, 'tshilidzi', NULL, '2', 'chilidziconny96@gmail.com', 'tshilidzi', NULL, 'tshilidzi', NULL, NULL, NULL),
(8, NULL, 'tumelo', NULL, '1', 'tumelozitha490@gmail.com', 'tumelo', NULL, 'tumelo', NULL, NULL, NULL),
(12, 'test', 'test', 'test', 'Admin', NULL, 'ahhh', NULL, NULL, 'test', '2021-10-22', '2021-10-22'),
(13, 'test1', 'test1', 'test1', 'Admin', NULL, 'Ma@12$we', NULL, NULL, '1234', '2021-10-22', '2021-10-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `username`, `lastname`, `detail`) VALUES
(1, 1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$7OPiVSHOGqbaSQp2zRYTbut.sdUchIZeHEY3jGtcYwQEqxIzOOVa6', 'ocvWttloxdQ9TYPbhrieGBwdwFzCDKbrqzZWzNQMCS0MYceOrr6G4gLRLFtO', NULL, NULL, NULL, NULL, ''),
(2, 2, 'User', 'user@gmail.com', NULL, '$2y$10$Iq0hPJW0sTr1lMWiq8wjEOuxLfmFjyIeXO89BKMvS56uY10rHbjv.', 'LLq7I2xAwzJWHl88eccGxnfTiVcvUxNzvejW0AKec7XFAy8pqIpNnCoewlsA', NULL, NULL, NULL, NULL, ''),
(3, 3, 'Manager', 'manager@gmail.com', NULL, '$2y$10$PWwPN67P4tyQ6EPXK9ItbOPgXGMDUtevD50BY61Y/T.iZRkXOYsCe', 'HsKTSde8pQnH6Jemkg9hqOB2gHs3IgazuNWoLzi01hEYtJWFP2jkAkLsrKxA', NULL, NULL, NULL, NULL, ''),
(4, 1, 'tumelo', 'tumelozitha490@gmail.com', NULL, 'tumelo', 'tumelo', NULL, NULL, NULL, NULL, ''),
(5, 2, 'tshilidzi', 'chilidziconny96@gmail.com', NULL, 'tshilidzi', 'tshilidzi', NULL, NULL, NULL, NULL, ''),
(6, 3, 'rene', 'rene@gmail.com', NULL, 'rene1234', 'rene1234', NULL, NULL, NULL, NULL, ''),
(7, 1, 'Tum', 'tumelozith@gmail.com', NULL, '$2y$10$3DPZ//iWMqFEpGmPM6xFqO9FL/HpSHrr8jDRdpVxy0PvXTzKEJNIK', NULL, '2021-10-20 12:00:21', '2021-10-20 12:00:21', NULL, NULL, NULL),
(8, 2, 'tum', 'tume@tum.com', NULL, '$2y$10$/KxA6DKo3n87o5qC2V/xRujFs18Hh6O2XAeLDpcib.f2A0CwfKGWC', NULL, '2021-10-20 12:00:53', '2021-10-20 12:00:53', NULL, NULL, NULL),
(9, NULL, 'qqq', 'tumel490@gmail.com', NULL, '$2y$10$PcWbBK7P804IyVOsQAEDzOtmKKv/nIRTxJngsyHQS3jr2oebIa41K', NULL, '2021-10-22 09:48:04', '2021-10-22 09:48:04', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
