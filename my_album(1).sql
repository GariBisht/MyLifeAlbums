-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2024 at 06:46 AM
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
-- Database: `my_album`
--

-- --------------------------------------------------------

--
-- Table structure for table `details`
--

CREATE TABLE `details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `excerpt` varchar(255) DEFAULT NULL,
  `content` text DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `details`
--

INSERT INTO `details` (`id`, `title`, `excerpt`, `content`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Happy Moments', 'Good things take time', 'if you live a life of make-believe, your life isn\'t worth anything until you do something that does challenge your reality. ', 'pexels-lilartsy-1721092.jpg', '2024-05-15 23:08:59', '2024-05-15 23:08:59'),
(2, 'About Life', '\"Life is really simple, but we insist on making it complicated.\"', 'One of the things you can always depend on - this is one of the truths of the universe, and you heard it first from here - whatever we decide we want to do is what we do.', 'pexels-prateekkatyal-2740954.jpg', '2024-05-15 23:12:42', '2024-05-15 23:12:42'),
(3, 'Miracles in Life', '\"Life is about creating yourself.\"', 'Life is a series of natural and spontaneous changes. Don\'t resist them - that only creates sorrow. Let reality be reality. Let things flow naturally forward in whatever way they like.', 'pexels-fotios-photos-1485548.jpg', '2024-05-15 23:19:05', '2024-05-15 23:19:05'),
(4, 'Gratitude', 'Gratitude is the memory of heart', 'She carry an aura of appreciation, recognizing the blessings in both big triumphs and small gestures. Her gratitude is not just a passing emotion but a guiding principle, shaping their outlook on life. She express thankfulness effortlessly, finding joy in acknowledging the kindness of others and the beauty of the world around her.', 'image.jpg', '2024-05-16 04:03:19', '2024-05-16 04:03:19'),
(5, 'Kind', '\" Kindness isn’t a tactic. It’s a command. \"', 'For attractive lips, speak words of kindness. For lovely eyes, seek out the good in people. For a slim figure, share your food with the hungry. For beautiful hair, let a child run his fingers through it once a day. For poise, walk with the knowledge you’ll never walk alone.', 'new.jpg', '2024-05-16 04:11:23', '2024-05-16 04:11:23'),
(8, 'LOVE', '“You are the love of my life, and the light of my love”', 'Love is patient, love is kind. It does not envy, it does not boast, it is not proud. Love is the deliberate act of valuing someone more than you value yourself', 'leighann-blackwood-gsQ4uk6cnyw-unsplash.jpg', '2024-05-20 03:11:22', '2024-05-20 03:11:22'),
(9, 'Think Twice', '\"Let your mind alone, and see what happen.\"', 'Try a thing you haven\'t done three times .Once, to get over the fear of doing it .Twice, to learn how to do it. And a third time to figure out whether you like it or not.', '1716352785.png', '2024-05-21 01:19:14', '2024-05-21 23:09:45'),
(10, 'Never Give Up', '\"Quiting is not a option for anything\"', 'Everything that’s broken was beautiful at one time. And our mistakes make us better people', '1716352070.png', '2024-05-21 02:00:08', '2024-05-21 22:57:50'),
(14, 'Growth', '\"Strength and growth come only through continuous effort and struggle\"', 'The journey is never ending. There\'s always gonna be growth, improvement, adversity; you just gotta take it all in and do what\'s right, continue to grow, continue to live in the moment.', 'growth.png', '2024-05-22 00:09:39', '2024-05-22 00:09:39'),
(16, 'Sometime Sad Moments', '\"Grief is not a sign of weakness, nor a lack of faith. It is the price of love.\"', 'There are moments when I wish I could roll back the clock and take all the sadness away, but I have the feeling that if I did, the joy would be gone as well.', 'sad.png', '2024-05-27 01:02:20', '2024-05-27 01:02:20'),
(17, 'Alone Life', '\"To live alone is the fate of all great souls.\"', 'I am stronger than depression and I am braver than loneliness and nothing will ever exhaust me.', 'Screenshot from 2024-05-27 12-13-55.png', '2024-05-27 01:26:09', '2024-05-27 01:26:09');

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_05_14_093206_create_details_table', 2);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'garima', 'garima@gmail.com', NULL, '$2y$10$SGFctWnJYNYTwpYGd2h.dusDKGiEM3ywV2hqq3lMzri2g5LVBGkzC', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `details`
--
ALTER TABLE `details`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `details`
--
ALTER TABLE `details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
