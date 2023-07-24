-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 24, 2023 at 06:22 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school_management_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `is_delete` tinyint(4) DEFAULT 0 COMMENT '0:no, 1:yes',
  `created_by` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `name`, `status`, `is_delete`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Class 3', 0, 0, 1, '2023-07-24 10:18:15', '2023-07-24 15:10:37'),
(3, 'Class 2', 0, 1, 1, '2023-07-24 10:35:38', '2023-07-24 11:07:14'),
(4, 'Class 1', 0, 1, 1, '2023-07-24 11:07:35', '2023-07-24 12:34:56'),
(5, 'Class 4', 0, 0, 1, '2023-07-24 12:35:13', '2023-07-24 12:35:13'),
(6, 'class 6', 0, 0, 1, '2023-07-24 14:12:44', '2023-07-24 14:12:44'),
(7, 'JHS 1', 0, 0, 1, '2023-07-24 14:12:59', '2023-07-24 14:12:59'),
(8, 'Class 1', 0, 0, 1, '2023-07-24 15:10:02', '2023-07-24 15:10:30'),
(9, 'JHS 2', 0, 0, 1, '2023-07-24 15:53:55', '2023-07-24 15:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `class_subject`
--

CREATE TABLE `class_subject` (
  `id` int(11) NOT NULL,
  `class_id` int(11) DEFAULT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `is_delete` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `class_subject`
--

INSERT INTO `class_subject` (`id`, `class_id`, `subject_id`, `created_by`, `is_delete`, `status`, `created_at`, `updated_at`) VALUES
(1, 7, 1, 1, 0, 0, '2023-07-24 14:38:01', '2023-07-24 14:38:01'),
(2, 7, 1, 1, 0, 0, '2023-07-24 14:39:11', '2023-07-24 14:39:11'),
(3, 5, 1, 1, 0, 0, '2023-07-24 14:39:44', '2023-07-24 14:39:44'),
(4, 6, 1, 1, 0, 1, '2023-07-24 14:40:25', '2023-07-24 14:40:25'),
(5, 8, 1, 1, 0, 0, '2023-07-24 15:13:36', '2023-07-24 15:13:36'),
(6, 8, 2, 1, 0, 0, '2023-07-24 15:13:36', '2023-07-24 15:13:36'),
(7, 8, 4, 1, 0, 0, '2023-07-24 15:13:36', '2023-07-24 15:13:36'),
(8, 7, 4, 1, 0, 0, '2023-07-24 15:13:48', '2023-07-24 15:13:48'),
(9, 9, 7, 1, 0, 0, '2023-07-24 15:56:13', '2023-07-24 15:56:13'),
(10, 9, 5, 1, 0, 0, '2023-07-24 15:56:13', '2023-07-24 15:56:13'),
(11, 9, 1, 1, 0, 0, '2023-07-24 15:56:13', '2023-07-24 15:56:13'),
(12, 9, 6, 1, 0, 0, '2023-07-24 15:57:10', '2023-07-24 15:57:10'),
(13, 9, 4, 1, 0, 0, '2023-07-24 15:57:10', '2023-07-24 15:57:10');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_by` int(11) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:active, 1:inactive',
  `is_delete` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0:no, 1:yes',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `name`, `type`, `created_by`, `status`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'biology', 'Theory', 1, 0, 0, '2023-07-24 12:22:46', '2023-07-24 12:22:46'),
(2, 'Biology', 'Practical', 1, 0, 0, '2023-07-24 12:23:04', '2023-07-24 12:23:04'),
(3, 'History1', 'Practical', 1, 1, 1, '2023-07-24 12:24:21', '2023-07-24 12:46:07'),
(4, 'Painting', 'Practical', 1, 0, 0, '2023-07-24 14:19:36', '2023-07-24 14:19:36'),
(5, 'Agric', 'Practical', 1, 0, 0, '2023-07-24 15:54:50', '2023-07-24 15:54:50'),
(6, 'Dance', 'Practical', 1, 0, 0, '2023-07-24 15:55:09', '2023-07-24 15:55:09'),
(7, 'Acting', 'Practical', 1, 0, 0, '2023-07-24 15:55:24', '2023-07-24 15:55:24');

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
  `remember_token` varchar(100) DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT 4 COMMENT '1:admin, 2:teacher, 3:student, 4:parent',
  `is_delete` int(11) NOT NULL DEFAULT 0 COMMENT '0:not deleted 1:deleted',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `user_type`, `is_delete`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@admin.com', '2023-07-23 10:19:33', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Y7AZLrkMKLy9LHZR6X5BEr5y6ZIYvKgqKuL1mBOtATgaY8XCEDr709JjEuIS', 1, 0, '2023-07-23 10:19:33', '2023-07-23 10:19:33'),
(2, 'Teacher', 'teacher@teacher.com', '2023-07-23 10:19:33', '$2y$10$EDMK6LHPkIkDySN7VE.b6O1eXmewIg9/QZFuxUIO/isRPaixbN0RC', 'xkxe0LzY3oyerRw9Jdq1VmGiLVPo1i', 2, 0, '2023-07-23 10:19:33', '2023-07-24 00:44:32'),
(3, 'Student', 'student@student.com', '2023-07-23 10:19:33', '$2y$10$KqWFI4Q0IWaRYOIPRD36a.ihf.M4Vl9TVUWEyI/f8qyuUjImAyusi', 'M6UzSuppQx16BdZDnxsT0rho1UJDvW', 3, 0, '2023-07-23 10:19:33', '2023-07-24 00:40:12'),
(4, 'Parent', 'parent@parent.com', '2023-07-23 10:19:33', '$2y$10$Qk7TCvETrhGSPTb2SmOqneMIifvFh8rL4D.u.a6R0VgJku9QUk8fK', 'qzhKR3IWk2IBuQfpbRXky7SfR6s3mv', 4, 0, '2023-07-23 10:19:33', '2023-07-24 00:39:15'),
(8, 'yaw ameena', 'yaw@gmail.com', NULL, '$2y$10$REjxoAAe8xsY8alGvO/tMe5Q.sUHr63aW6GMCeLBuUAE3he00ocYy', NULL, 4, 0, '2023-07-23 16:47:49', '2023-07-23 16:47:49'),
(10, 'yaw ameena', 'yaw1@gmail.com', NULL, '$2y$10$aSXC92B/0aEKGJLwJa46Oea5Y1Fos1SXAf80jMbe5KYManfpC1hwO', NULL, 4, 0, '2023-07-23 16:48:29', '2023-07-23 16:48:29'),
(11, 'lois', 'lois@admin.com', NULL, '$2y$10$T30JzP7CvWlSpYp5tDkNXevKqulruFC6RCEFwVKSw14emNSbcvgAC', NULL, 4, 0, '2023-07-23 16:50:27', '2023-07-23 16:50:27'),
(12, 'Admin 23', 'adm@admin.com', NULL, '$2y$10$tYDWfHMo4vIgcydQzG9JWOel7YPRHgSD342FEhUP92tqspO2QU5Ra', NULL, 4, 0, '2023-07-23 16:51:40', '2023-07-23 16:51:40'),
(13, 'kofi', 'kofi@admin.com', NULL, '$2y$10$ioQdN4ReM.QM3HjOTtMDVOey6lV/DuTQG2ILHkdmZ2Tu/ii4OyEb2', NULL, 4, 0, '2023-07-23 16:55:24', '2023-07-23 16:55:24'),
(14, 'kwame mensa', 'k@admin.com', NULL, '$2y$10$vgV9/B/dRX10FhMa7r9ki.lvvF1LHKlLH5BjUYdkLJlvF/tWYaxT6', NULL, 1, 1, '2023-07-23 16:58:40', '2023-07-24 02:27:45'),
(15, 'yaw marfo', 'marfo@gmail.com', NULL, '$2y$10$PahhJbZRweviVyB4D22Vq.aWroXzHngq/i2daZnLAL/Jbq4MAbJ1K', NULL, 1, 1, '2023-07-24 02:30:17', '2023-07-24 08:39:12'),
(16, 'kwame nkrumah', 'knkrumh@gmail.com', NULL, '$2y$10$FAeSiE/uZjRMNvBDSBE/IOhyFESVoao1FW5zkT7PKOFPtpOXNJSPq', NULL, 1, 0, '2023-07-24 08:39:56', '2023-07-24 08:53:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_subject`
--
ALTER TABLE `class_subject`
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
-- Indexes for table `subject`
--
ALTER TABLE `subject`
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
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `class_subject`
--
ALTER TABLE `class_subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
