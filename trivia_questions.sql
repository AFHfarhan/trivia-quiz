-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 05, 2020 at 08:02 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trivia_questions`
--

-- --------------------------------------------------------

--
-- Table structure for table `answers`
--

CREATE TABLE `answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_user` int(10) UNSIGNED NOT NULL,
  `id_quiz` int(10) UNSIGNED NOT NULL,
  `answer_1` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_3` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer_4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_6` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_7` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_8` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_9` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_10` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_11` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_12` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_13` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_14` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `answer_15` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_score` int(11) NOT NULL,
  `ranking` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `answers`
--

INSERT INTO `answers` (`id`, `id_user`, `id_quiz`, `answer_1`, `answer_2`, `answer_3`, `answer_4`, `answer_5`, `answer_6`, `answer_7`, `answer_8`, `answer_9`, `answer_10`, `answer_11`, `answer_12`, `answer_13`, `answer_14`, `answer_15`, `total_score`, `ranking`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 'George Washington', '100', 'D. G. Yuengling and Son, Inc', 'McDonald', 'Thomas Jefferson', 'Mercury', 'Liver', 'Platelets', 'poisson', 'Model', NULL, NULL, NULL, NULL, NULL, 100, '1', NULL, '2020-11-05 10:53:26', '2020-11-05 11:59:23'),
(2, 3, 1, 'George Washington', '100', 'D. G. Yuengling and Son, Inc', 'Burger King', 'Thomas Jefferson', 'Mercury', 'Liver', 'Platelets', 'poisson', 'Musician', NULL, NULL, NULL, NULL, NULL, 80, '2', NULL, '2020-11-05 10:55:54', '2020-11-05 12:00:21');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `created_at`, `updated_at`) VALUES
(1, 'General Knowledge', '2020-11-05 09:04:10', '2020-11-05 09:04:10'),
(2, 'Entertaiment Books', '2020-11-05 09:11:23', '2020-11-05 09:11:23'),
(3, 'Entertaiment Films', '2020-11-05 09:28:11', '2020-11-05 09:28:11'),
(4, 'Entertaiment Music', '2020-11-05 09:35:23', '2020-11-05 09:35:23'),
(5, 'Entertaiment Musicals & Theatres', '2020-11-05 09:37:31', '2020-11-05 09:37:31');

-- --------------------------------------------------------

--
-- Table structure for table `difficulties`
--

CREATE TABLE `difficulties` (
  `id` int(10) UNSIGNED NOT NULL,
  `difficulty` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `difficulties`
--

INSERT INTO `difficulties` (`id`, `difficulty`, `created_at`, `updated_at`) VALUES
(1, 'Easy', '2020-11-05 09:49:37', '2020-11-05 09:49:37'),
(2, 'Medium', '2020-11-05 09:49:43', '2020-11-05 09:49:43'),
(3, 'Hard', '2020-11-05 09:49:49', '2020-11-05 09:49:49');

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
(1, '2020_11_05_115528_create_users_table', 1),
(2, '2020_11_05_115730_create_categories_table', 1),
(3, '2020_11_05_115823_create_types_table', 1),
(4, '2020_11_05_115906_create_difficulties_table', 1),
(5, '2020_11_05_125014_create_quizzes_table', 1),
(6, '2020_11_05_133616_create_questions_table', 1),
(7, '2020_11_05_133758_create_answers_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_category` int(10) UNSIGNED NOT NULL,
  `id_type` int(10) UNSIGNED NOT NULL,
  `id_difficulty` int(10) UNSIGNED NOT NULL,
  `id_quiz` int(10) UNSIGNED DEFAULT NULL,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `correct_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `incorrect_answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `id_category`, `id_type`, `id_difficulty`, `id_quiz`, `question`, `correct_answer`, `incorrect_answer`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 1, 'Which American president appears on a one dollar bill?', 'George Washington', 'Thomas Jefferson,Abraham Lincoln,Benjamin Franklin', NULL, '2020-11-05 10:03:26', '2020-11-05 10:03:26'),
(2, 1, 1, 1, 1, 'Five dollars is worth how many nickles?', '100', '50,25,69', NULL, '2020-11-05 10:04:25', '2020-11-05 10:04:25'),
(3, 1, 1, 1, 1, 'Which American-owned brewery led the country in sales by volume in 2015?', 'D. G. Yuengling and Son, Inc', 'Anheuser Busch,Boston Beer Company,Miller Coors', NULL, '2020-11-05 10:05:20', '2020-11-05 10:05:20'),
(4, 1, 1, 1, 1, 'Which restaurant&#039;s mascot is a clown?', 'McDonald', 'Whataburger,Burger King,Sonic', NULL, '2020-11-05 10:06:15', '2020-11-05 10:06:15'),
(5, 1, 1, 1, 1, 'The likeness of which president is featured on the rare $2 bill of USA currency?', 'Thomas Jefferson', 'Martin Van Buren,Ulysses Grant,John Quincy Adams', NULL, '2020-11-05 10:07:09', '2020-11-05 10:07:09'),
(6, 1, 1, 1, 1, 'What is the closest planet to our solar system&#039;s sun?', 'Mercury', 'Mars,Jupiter,Earth', NULL, '2020-11-05 10:07:52', '2020-11-05 10:07:52'),
(7, 1, 1, 1, 1, 'Foie gras is a French delicacy typically made from what part of a duck or goose?', 'Liver', 'Heart,Stomach,Intestines', NULL, '2020-11-05 10:08:34', '2020-11-05 10:08:34'),
(8, 1, 1, 1, 1, 'Which of the following blood component forms a plug at the site of injuries?', 'Platelets', 'Red blood cells,White blood cells,Blood plasma', NULL, '2020-11-05 10:09:36', '2020-11-05 10:09:36'),
(9, 1, 1, 1, 1, 'What is the French word for &quot;fish&quot;?', 'poisson', 'fiche,escargot,mer', NULL, '2020-11-05 10:10:15', '2020-11-05 10:10:15'),
(10, 1, 1, 1, 1, 'What is the profession of Elon Musk&#039;s mom, Maye Musk?', 'Model', 'Professor,Biologist,Musician', NULL, '2020-11-05 10:10:53', '2020-11-05 10:10:53');

-- --------------------------------------------------------

--
-- Table structure for table `quizzes`
--

CREATE TABLE `quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quizzes`
--

INSERT INTO `quizzes` (`id`, `quiz_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'quiz begginer knowledge', 'active', '2020-11-05 09:51:48', '2020-11-05 09:51:48'),
(2, 'quiz begginer Music', 'active', '2020-11-05 09:52:00', '2020-11-05 09:52:00'),
(3, 'quiz begginer Film', 'active', '2020-11-05 09:52:06', '2020-11-05 09:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'multiple', '2020-11-05 09:46:42', '2020-11-05 09:46:42'),
(2, 'True/False', '2020-11-05 09:46:59', '2020-11-05 09:46:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_name`, `user_type`, `email`, `password`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'farhan555', 'admin', 'farhan555@gmail.com', '$2y$10$hIi0P5Ts7W4yVLSPnc.s5ODgknInURoaNRLgjYDtYkWnyCLUkLTHi', NULL, '2020-11-05 07:25:19', '2020-11-05 07:25:19'),
(2, 'farhan555', 'participant', 'saisy@gmail.com', '$2y$10$Ks7OqwevfPE/9XQeVwGDCOyBcV8Rf2UockzV0gOKNQxTqUGSjtVW.', NULL, '2020-11-05 09:40:14', '2020-11-05 09:40:14'),
(3, 'akbar', 'participant', 'akbar@gmail.com', '$2y$10$5oK5no3i9ojGWOfTz0sXxOTL/TOnU/IQycLd1sjZ93trWYZTVHaU.', NULL, '2020-11-05 10:54:35', '2020-11-05 10:54:35');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `answers_id_user_foreign` (`id_user`),
  ADD KEY `answers_id_quiz_foreign` (`id_quiz`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `difficulties`
--
ALTER TABLE `difficulties`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `questions_id_category_foreign` (`id_category`),
  ADD KEY `questions_id_type_foreign` (`id_type`),
  ADD KEY `questions_id_difficulty_foreign` (`id_difficulty`),
  ADD KEY `questions_id_quiz_foreign` (`id_quiz`);

--
-- Indexes for table `quizzes`
--
ALTER TABLE `quizzes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
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
-- AUTO_INCREMENT for table `answers`
--
ALTER TABLE `answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `difficulties`
--
ALTER TABLE `difficulties`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `quizzes`
--
ALTER TABLE `quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `types`
--
ALTER TABLE `types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_id_quiz_foreign` FOREIGN KEY (`id_quiz`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `answers_id_user_foreign` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`);

--
-- Constraints for table `questions`
--
ALTER TABLE `questions`
  ADD CONSTRAINT `questions_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `questions_id_difficulty_foreign` FOREIGN KEY (`id_difficulty`) REFERENCES `difficulties` (`id`),
  ADD CONSTRAINT `questions_id_quiz_foreign` FOREIGN KEY (`id_quiz`) REFERENCES `quizzes` (`id`),
  ADD CONSTRAINT `questions_id_type_foreign` FOREIGN KEY (`id_type`) REFERENCES `types` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
