-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 15, 2025 at 09:24 PM
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
-- Database: `farm_inventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `item_id` int(11) DEFAULT NULL,
  `item_type` varchar(50) NOT NULL,
  `details` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `user_id`, `action`, `item_id`, `item_type`, `details`, `created_at`) VALUES
(1, 1, 'login', NULL, 'user', 'User logged in', '2025-05-30 17:45:05'),
(2, 1, 'logout', NULL, 'user', 'User logged out', '2025-05-30 18:04:54'),
(3, 1, 'login', NULL, 'user', 'User logged in', '2025-06-01 06:44:05'),
(4, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-01 07:14:21'),
(5, 1, 'login', NULL, 'user', 'User logged in', '2025-06-01 07:14:40'),
(6, 1, 'add', 1, 'inventory', 'Added inventory item: chili seeds', '2025-06-01 07:25:17'),
(7, 1, 'delete', 1, 'inventory', 'Deleted inventory item: chili seeds', '2025-06-01 07:29:31'),
(8, 1, 'add', 2, 'inventory', 'Added inventory item: chili seeds', '2025-06-01 07:32:05'),
(9, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-01 07:32:34'),
(10, 1, 'generate', 0, 'report', 'Generated Low Stock Report', '2025-06-01 07:35:08'),
(11, 1, 'add', 2, 'user', 'Added user: Tharindu', '2025-06-01 09:26:48'),
(12, 1, 'update', 1, 'user', 'Updated user information', '2025-06-01 09:27:19'),
(13, 1, 'update', 1, 'user', 'Updated user information', '2025-06-01 09:27:38'),
(14, 1, 'add', 3, 'user', 'Added user: Naveen', '2025-06-01 09:29:09'),
(15, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-01 09:30:10'),
(17, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 03:51:02'),
(18, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 03:55:08'),
(19, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 03:55:26'),
(20, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 04:32:06'),
(21, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-02 04:33:16'),
(22, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 04:52:54'),
(23, 1, 'retrieve', 2, 'inventory', 'Retrieved 5 g of chili seeds by dsdas', '2025-06-02 05:21:20'),
(24, 1, 'retrieve', 2, 'inventory', 'Retrieved 5 g of chili seeds by chili seeds', '2025-06-02 05:59:01'),
(25, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-02 05:59:12'),
(26, 1, 'add', 3, 'inventory', 'Added inventory item: Tomato seeds', '2025-06-02 06:04:23'),
(27, 1, 'add', 4, 'inventory', 'Added inventory item: Carrot seeds', '2025-06-02 06:06:35'),
(28, 1, 'update', 1, 'user', 'Updated user information', '2025-06-02 06:37:48'),
(29, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 06:37:56'),
(30, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 06:38:10'),
(31, 1, 'retrieve', 2, 'inventory', 'Retrieved 20 g of chili seeds by chili seeds', '2025-06-02 06:39:47'),
(32, 1, 'retrieve', 2, 'inventory', 'Retrieved 50 g of chili seeds', '2025-06-02 06:45:04'),
(33, 1, 'update', 3, 'inventory', 'Updated inventory item: Tomato seeds', '2025-06-02 06:57:08'),
(34, 1, 'retrieve', 3, 'inventory', 'Retrieved 515 g of Tomato seeds', '2025-06-02 06:57:34'),
(35, 1, 'add', 5, 'inventory', 'Added inventory item: amonia', '2025-06-02 07:00:20'),
(36, 1, 'delete', 5, 'inventory', 'Deleted inventory item: amonia', '2025-06-02 07:01:25'),
(37, 1, 'add', 8, 'category', 'Added category: qwe', '2025-06-02 07:02:27'),
(38, 1, 'delete', 8, 'category', 'Deleted category: qwe', '2025-06-02 07:02:42'),
(39, 1, 'generate', 0, 'report', 'Generated Low Stock Report', '2025-06-02 07:03:18'),
(40, 1, 'delete', 3, 'user', 'Deleted user: Naveen', '2025-06-02 07:05:56'),
(41, 1, 'update', 1, 'user', 'Updated profile information', '2025-06-02 07:06:58'),
(42, 1, 'update', 1, 'user', 'Updated profile information', '2025-06-02 07:07:33'),
(43, 1, 'generate', 0, 'report', 'Generated Low Stock Report', '2025-06-02 07:56:10'),
(44, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 07:59:08'),
(45, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 07:59:49'),
(46, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 08:16:31'),
(47, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 09:22:01'),
(48, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 09:34:22'),
(49, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 10:10:08'),
(50, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 10:24:31'),
(51, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 10:31:31'),
(52, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 10:43:08'),
(53, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 10:43:14'),
(54, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 10:43:29'),
(55, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 10:43:39'),
(56, 1, 'update', 1, 'user', 'Updated profile information', '2025-06-02 10:45:14'),
(57, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 14:47:36'),
(58, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 15:55:47'),
(59, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 15:58:43'),
(60, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:02:04'),
(61, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:04:48'),
(62, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:07:59'),
(63, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:08:08'),
(64, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:09:06'),
(65, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:09:08'),
(66, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:16:23'),
(67, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:16:25'),
(68, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:17:29'),
(69, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:17:31'),
(70, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:20:33'),
(71, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:20:35'),
(72, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:25:32'),
(73, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:25:34'),
(74, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:33:27'),
(75, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:41:55'),
(76, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 16:46:44'),
(77, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 16:49:27'),
(78, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 17:39:10'),
(79, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 17:39:12'),
(80, 2, 'add', 6, 'inventory', 'Added inventory item: Grains', '2025-06-02 18:04:46'),
(81, 2, 'update', 6, 'inventory', 'Updated inventory item: Grains', '2025-06-02 18:05:14'),
(82, 2, 'retrieve', 6, 'inventory', 'Retrieved 10 kg of Grains', '2025-06-02 18:05:52'),
(83, 2, 'add', 7, 'inventory', 'Added inventory item: Urea', '2025-06-02 18:11:09'),
(84, 2, 'retrieve', 7, 'inventory', 'Retrieved 17 kg of Urea', '2025-06-02 18:11:37'),
(85, 2, 'add', 8, 'inventory', 'Added inventory item: Hoe', '2025-06-02 18:15:40'),
(86, 2, 'retrieve', 8, 'inventory', 'Retrieved 20 pcs of Hoe', '2025-06-02 18:16:04'),
(87, 2, 'add', 9, 'inventory', 'Added inventory item: Poultry', '2025-06-02 18:21:11'),
(88, 2, 'retrieve', 9, 'inventory', 'Retrieved 350 pcs of Poultry', '2025-06-02 18:22:02'),
(89, 2, 'retrieve', 9, 'inventory', 'Retrieved 50 pcs of Poultry', '2025-06-02 18:22:18'),
(90, 2, 'update', 2, 'inventory', 'Updated inventory item: chili seeds', '2025-06-02 18:26:10'),
(91, 2, 'add', 10, 'inventory', 'Added inventory item: rg', '2025-06-02 18:28:34'),
(92, 2, 'delete', 10, 'inventory', 'Deleted inventory item: rg', '2025-06-02 18:28:50'),
(93, 2, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-02 18:30:00'),
(94, 2, 'generate', 0, 'report', 'Generated Low Stock Report', '2025-06-02 18:31:24'),
(95, 2, 'generate', 0, 'report', 'Generated Activity Report', '2025-06-02 18:31:54'),
(96, 2, 'generate', 0, 'report', 'Generated Activity Report', '2025-06-02 18:33:06'),
(97, 2, 'generate', 0, 'report', 'Generated Activity Report', '2025-06-02 18:33:23'),
(98, 2, 'generate', 0, 'report', 'Generated Activity Report', '2025-06-02 18:33:37'),
(99, 2, 'update', 2, 'user', 'Updated profile information', '2025-06-02 18:34:00'),
(100, 2, 'update', 2, 'user', 'Updated profile information', '2025-06-02 18:34:56'),
(101, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 18:45:45'),
(102, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 18:45:50'),
(103, 2, 'update', 2, 'inventory', 'Updated inventory item: Chili seeds', '2025-06-02 19:02:47'),
(104, 2, 'update', 4, 'inventory', 'Updated inventory item: Carrot seeds', '2025-06-02 19:03:07'),
(105, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:06:14'),
(106, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:08:08'),
(107, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:12:54'),
(108, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:13:04'),
(109, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:25:53'),
(110, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:25:57'),
(111, 1, 'add', 4, 'user', 'Added user: Naveen', '2025-06-02 19:28:32'),
(112, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:28:36'),
(113, 4, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:28:43'),
(114, 4, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:28:53'),
(115, 2, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:28:58'),
(116, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:29:03'),
(117, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:29:08'),
(118, 1, 'update', 9, 'inventory', 'Updated inventory item: Poultry', '2025-06-02 19:33:58'),
(119, 1, 'login', NULL, 'user', 'User logged in', '2025-06-02 19:39:54'),
(120, 1, 'update', 3, 'inventory', 'Updated inventory item: Tomato seeds', '2025-06-02 19:43:03'),
(121, 1, 'add', 11, 'inventory', 'Added inventory item: rg', '2025-06-02 19:44:12'),
(122, 1, 'update', 8, 'inventory', 'Updated inventory item: Hoe', '2025-06-02 19:44:53'),
(123, 1, 'delete', 11, 'inventory', 'Deleted inventory item: rg', '2025-06-02 19:45:06'),
(124, 1, 'update', 4, 'inventory', 'Updated inventory item: Carrot seeds', '2025-06-02 19:46:50'),
(125, 1, 'update', 2, 'inventory', 'Updated inventory item: Chili seeds', '2025-06-02 19:47:29'),
(126, 1, 'update', 6, 'inventory', 'Updated inventory item: Grains', '2025-06-02 19:47:56'),
(127, 1, 'update', 9, 'inventory', 'Updated inventory item: Poultry', '2025-06-02 19:48:25'),
(128, 1, 'update', 3, 'inventory', 'Updated inventory item: Tomato seeds', '2025-06-02 19:53:03'),
(129, 1, 'update', 7, 'inventory', 'Updated inventory item: Urea', '2025-06-02 19:53:37'),
(130, 1, 'retrieve', 2, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-02 19:53:57'),
(131, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-02 19:54:24'),
(132, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 03:34:25'),
(133, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 03:35:57'),
(134, 2, 'login', NULL, 'user', 'User logged in', '2025-06-03 03:55:27'),
(135, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-03 03:55:32'),
(136, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 03:55:38'),
(137, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:19:09'),
(138, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:23:02'),
(139, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:23:17'),
(140, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:27:13'),
(141, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:28:17'),
(142, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:40:01'),
(143, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:40:53'),
(144, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:41:54'),
(145, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:42:13'),
(146, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:46:33'),
(147, 1, 'add', 12, 'inventory', 'Added inventory item: rg', '2025-06-03 04:48:38'),
(148, 1, 'retrieve', 2, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-03 04:50:04'),
(149, 1, 'generate', 0, 'report', 'Generated Low Stock Report', '2025-06-03 04:51:11'),
(150, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:51:57'),
(151, 2, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:52:02'),
(152, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-03 04:52:31'),
(153, 4, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:52:34'),
(154, 1, 'login', NULL, 'user', 'User logged in', '2025-06-03 04:58:04'),
(155, 1, 'add', 13, 'inventory', 'Added inventory item: Chili seeds', '2025-06-03 05:01:14'),
(156, 1, 'login', NULL, 'user', 'User logged in', '2025-06-12 13:44:38'),
(157, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-12 13:46:30'),
(158, 2, 'login', NULL, 'user', 'User logged in', '2025-06-12 13:46:42'),
(159, 2, 'logout', NULL, 'user', 'User logged out', '2025-06-12 13:46:54'),
(160, 1, 'login', NULL, 'user', 'User logged in', '2025-06-12 13:46:59'),
(161, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-12 13:47:26'),
(162, 1, 'retrieve', 2, 'inventory', 'Retrieved 50 g of Chili seeds', '2025-06-12 13:57:52'),
(163, 1, 'retrieve', 13, 'inventory', 'Retrieved 50 g of Chili seeds', '2025-06-12 15:57:05'),
(164, 1, 'retrieve', 2, 'inventory', 'Retrieved 50 g of Chili seeds', '2025-06-12 16:36:30'),
(165, 1, 'logout', NULL, 'user', 'User logged out', '2025-06-12 16:40:03'),
(166, 1, 'login', NULL, 'user', 'User logged in', '2025-06-12 16:40:09'),
(167, 1, 'login', NULL, 'user', 'User logged in', '2025-06-13 07:47:50'),
(168, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-13 07:53:00'),
(169, 1, 'retrieve', 13, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-13 07:53:54'),
(170, 1, 'login', NULL, 'user', 'User logged in', '2025-06-15 13:05:37'),
(171, 1, 'retrieve', 13, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-15 15:19:18'),
(172, 1, 'retrieve', 13, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-15 15:19:57'),
(173, 1, 'login', NULL, 'user', 'User logged in', '2025-06-15 16:11:24'),
(174, 1, 'retrieve', 13, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-15 16:11:46'),
(175, 1, 'update', 13, 'inventory', 'Updated inventory item: Chili seeds', '2025-06-15 16:12:31'),
(176, 1, 'login', NULL, 'user', 'User logged in', '2025-06-15 16:49:50'),
(177, 1, 'retrieve', 13, 'inventory', 'Retrieved 10 g of Chili seeds', '2025-06-15 16:55:44'),
(178, 1, 'update', 13, 'inventory', 'Updated inventory item: Chili seeds', '2025-06-15 16:56:17'),
(179, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-15 16:56:40'),
(180, 1, 'generate', 0, 'report', 'Generated Low Stock Report', '2025-06-15 16:58:31'),
(181, 1, 'generate', 0, 'report', 'Generated Expiry Report', '2025-06-15 16:58:36'),
(182, 1, 'generate', 0, 'report', 'Generated Activity Report', '2025-06-15 16:58:43'),
(183, 1, 'login', NULL, 'user', 'User logged in', '2025-06-15 17:33:59'),
(184, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-15 17:34:08'),
(185, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-15 17:34:35'),
(186, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-15 17:35:04'),
(187, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-15 17:35:24'),
(188, 1, 'generate', 0, 'report', 'Generated Inventory Value Report', '2025-06-15 17:35:42');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text DEFAULT NULL,
  `type` enum('livestock','equipment','crops','supplies') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Cattle', 'All types of cattle and cows', 'livestock', '2025-05-30 17:44:44', '2025-05-30 17:44:44'),
(2, 'Poultry', 'Chickens, ducks and other birds', 'livestock', '2025-05-30 17:44:44', '2025-05-30 17:44:44'),
(3, 'Tractors', 'Farm tractors and attachments', 'equipment', '2025-05-30 17:44:45', '2025-05-30 17:44:45'),
(4, 'Hand Tools', 'Manual farm tools', 'equipment', '2025-05-30 17:44:45', '2025-05-30 17:44:45'),
(5, 'Seeds', 'All types of seeds for planting', 'crops', '2025-05-30 17:44:45', '2025-05-30 17:44:45'),
(6, 'Fertilizers', 'Chemical and organic fertilizers', 'supplies', '2025-05-30 17:44:45', '2025-05-30 17:44:45'),
(7, 'Animal Feed', 'Food for livestock', 'supplies', '2025-05-30 17:44:45', '2025-05-30 17:44:45');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 0,
  `unit` varchar(20) NOT NULL,
  `price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `purchase_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `min_stock_level` int(11) DEFAULT 0,
  `location` varchar(100) DEFAULT NULL,
  `status` enum('available','low_stock','out_of_stock','expired') DEFAULT 'available',
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `name`, `category_id`, `quantity`, `unit`, `price`, `purchase_date`, `expiry_date`, `min_stock_level`, `location`, `status`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Chili seeds', 5, 300, 'g', 1.00, '2025-01-05', '2025-06-01', 10, 'Area A', 'expired', 'chili seeds for planting', 'uploads/1748893649_chili.jpg', '2025-06-01 07:32:05', '2025-06-12 16:36:30'),
(3, 'Tomato seeds', 5, 5, 'g', 1.00, '2025-06-02', '2026-06-02', 10, 'Area B', 'low_stock', 'Tomato seeds for planting', 'uploads/1748893982_tomato.jpg', '2025-06-02 06:04:23', '2025-06-02 19:53:02'),
(4, 'Carrot seeds', 5, 0, 'g', 1.00, '2025-06-02', '2026-06-02', 10, 'Area C', 'out_of_stock', 'Carrot seeds for planting', 'uploads/1748893610_Carrot.jpg', '2025-06-02 06:06:35', '2025-06-02 19:46:50'),
(6, 'Grains', 7, 40, 'kg', 1550.00, '2025-06-02', '2026-03-17', 10, 'Area D', 'available', 'Grains for cattle', 'uploads/1748893676_Grains.jpg', '2025-06-02 18:04:46', '2025-06-02 19:47:56'),
(7, 'Urea', 6, 3, 'kg', 750.00, '2025-06-02', '2025-06-02', 5, 'Area E', 'expired', 'Urea for area A', 'uploads/1748894017_urea.jpg', '2025-06-02 18:11:09', '2025-06-03 03:34:25'),
(8, 'Hoe', 3, 0, 'pcs', 600.00, '2025-06-02', NULL, 2, 'Area F', 'out_of_stock', 'Hoes for every fields', 'uploads/1748893493_Hoe.jpg', '2025-06-02 18:15:39', '2025-06-02 19:44:53'),
(9, 'Poultry', 2, 100, 'pcs', 200.00, '2025-06-02', '2026-06-09', 100, 'Area D', 'low_stock', 'Hens for eggs', 'uploads/1748893705_poultry.jpg', '2025-06-02 18:21:11', '2025-06-02 19:48:25'),
(12, 'rg', 7, 23, 'fd', 134.00, '2025-06-02', '2025-07-11', 10, 'dvgf', 'available', 'hghfg', 'uploads/1748926118_tomato.jpg', '2025-06-03 04:48:38', '2025-06-03 04:48:38'),
(13, 'Chili seeds', 5, 10, 'g', 10.00, '2025-07-02', '2025-07-12', 0, 'Area A', 'available', 'chili seeds for planting', 'uploads/1748926874_chili.jpg', '2025-06-03 05:01:14', '2025-06-15 16:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `inventory_transactions`
--

CREATE TABLE `inventory_transactions` (
  `id` int(11) NOT NULL,
  `inventory_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `transaction_type` enum('update','retrieve') NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(50) NOT NULL,
  `notes` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inventory_transactions`
--

INSERT INTO `inventory_transactions` (`id`, `inventory_id`, `user_id`, `transaction_type`, `quantity`, `unit`, `notes`, `created_at`) VALUES
(1, 13, 1, 'retrieve', 10, 'g', '', '2025-06-15 16:55:44'),
(2, 13, 1, 'update', 10, 'g', 'Updated item: Chili seeds', '2025-06-15 16:56:17');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(50) NOT NULL,
  `item_id` int(11) NOT NULL,
  `table_name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `role` enum('admin','manager','staff') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `full_name`, `email`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$744XahQgI/bcV46niaouO.V31c6X5oEqfvCwqGZjCv7bpBL3scxZ.', 'Supun Disanayake', 'supun@gmail.com', 'admin', '2025-05-30 17:44:44', '2025-06-02 10:45:14'),
(2, 'Tharindu', '$2y$10$mbJZacldCBSEJ.6OoAqvA.Nhehx49vV3taI5JmVz/vnHOzGsZV0SW', 'Tharindu Rathnayake', 'tharindurathnayake@gmail.com', 'manager', '2025-06-01 09:26:48', '2025-06-01 09:26:48'),
(4, 'Naveen', '$2y$10$rTqD9dnn5OiEd3X0CtKf1uaDdk0R9aMtCDN7uLzT6c.2tuHqBfy8m', 'Naveen Rathnayake', 'naveen@gmail.com', 'staff', '2025-06-02 19:28:32', '2025-06-02 19:28:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=189;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `inventory_transactions`
--
ALTER TABLE `inventory_transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD CONSTRAINT `activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
