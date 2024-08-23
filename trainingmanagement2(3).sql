-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 01:24 PM
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
-- Database: `trainingmanagement2`
--

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
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `pelatihan_id` bigint(20) UNSIGNED NOT NULL,
  `judul_materi` varchar(255) NOT NULL,
  `nama_pemateri` varchar(255) NOT NULL,
  `jam` time NOT NULL,
  `file` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id`, `pelatihan_id`, `judul_materi`, `nama_pemateri`, `jam`, `file`, `created_at`, `updated_at`) VALUES
(1, 4, 'Pembekalan soft skill', 'Anisha', '12:00:00', 'materi_files/zDmzUQktw0dHgGENpQcgVDCeidxx88xLz4JzFlcc.pdf', '2024-08-05 19:38:49', '2024-08-05 19:38:49'),
(2, 4, 'Management Kepegawaian', 'Bpk Vino', '01:00:00', 'materi_files/oMhzG9zozbfa1dpWqb0RjBhU4CBiV3TUzlUyNnK5.docx', '2024-08-07 23:48:07', '2024-08-07 23:48:07'),
(4, 4, 'Self Motivating', 'Naza', '01:30:00', 'materi_files/72hOZkpDKLAzRWQRftpa3jmgVzRLOOQYb4R9TaYX.docx', '2024-08-08 23:58:04', '2024-08-08 23:58:04');

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
(5, '2024_07_23_042122_pegawai', 1),
(6, '2024_07_25_024657_test', 1),
(7, '2024_08_02_212617_create_pelatihan_table', 1),
(8, '2024_08_02_212637_create_materi_table', 1),
(9, '2024_08_09_015456_add_pelatihan_id_to_test_table', 2);

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
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nip_pegawai` varchar(255) NOT NULL,
  `nama_pegawai` varchar(255) NOT NULL,
  `jabatan_pegawai` varchar(255) NOT NULL,
  `unit_kerja` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id`, `nip_pegawai`, `nama_pegawai`, `jabatan_pegawai`, `unit_kerja`, `created_at`, `updated_at`) VALUES
(4, '13211312321', 'Anisha Trie Ayu', 'Kepegawaian', 'Bina Marga', '2024-08-05 19:38:09', '2024-08-08 20:37:26'),
(5, '1203210111', 'Aditya Valentino Tino Utomo', 'Magang', 'Kepegawaian', '2024-08-05 23:16:13', '2024-08-05 23:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `pelatihan`
--

CREATE TABLE `pelatihan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_materi` varchar(255) NOT NULL,
  `judul_training` varchar(255) NOT NULL,
  `tanggal_training` date NOT NULL,
  `jenis_training` varchar(255) NOT NULL,
  `tempat_training` varchar(255) NOT NULL,
  `pelaksanaan_training` varchar(255) NOT NULL,
  `status` enum('active','non-active') DEFAULT 'active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelatihan`
--

INSERT INTO `pelatihan` (`id`, `id_materi`, `judul_training`, `tanggal_training`, `jenis_training`, `tempat_training`, `pelaksanaan_training`, `status`, `created_at`, `updated_at`) VALUES
(4, '1', 'Kepegawaian', '2024-08-05', 'Skill kepegawaian', 'Unit 1', 'Hybrid', 'active', '2024-08-05 19:38:26', '2024-08-05 19:38:26'),
(5, 'M-01', 'Management', '2024-08-19', 'Sertifikasi Pelatihan', 'Kantor BKD', 'Luring', 'active', '2024-08-08 00:21:56', '2024-08-08 00:21:56');

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
-- Table structure for table `respons`
--

CREATE TABLE `respons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `test_id` bigint(20) UNSIGNED NOT NULL,
  `rating1` int(11) DEFAULT NULL,
  `rating2` int(11) DEFAULT NULL,
  `rating3` int(11) DEFAULT NULL,
  `rating4` int(11) DEFAULT NULL,
  `rating5` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `respons`
--

INSERT INTO `respons` (`id`, `test_id`, `rating1`, `rating2`, `rating3`, `rating4`, `rating5`, `created_at`, `updated_at`) VALUES
(1, 11, 1, 2, 1, 2, 1, '2024-08-09 00:48:38', '2024-08-09 00:48:38'),
(2, 11, 2, 1, 1, 1, 1, '2024-08-09 00:48:46', '2024-08-09 00:48:46'),
(3, 11, 3, 3, 3, 3, 3, '2024-08-09 00:56:34', '2024-08-09 00:56:34'),
(4, 11, 2, 2, 2, 2, 2, '2024-08-09 00:56:41', '2024-08-09 00:56:41'),
(5, 11, 1, 2, 1, 1, 2, '2024-08-09 04:22:04', '2024-08-09 04:22:04'),
(6, 11, 5, 5, 5, 5, 5, '2024-08-09 04:23:54', '2024-08-09 04:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `Jenis` varchar(255) NOT NULL,
  `pertanyaan1` varchar(500) NOT NULL,
  `pertanyaan2` varchar(500) NOT NULL,
  `pertanyaan3` varchar(500) NOT NULL,
  `pertanyaan4` varchar(500) NOT NULL,
  `pertanyaan5` varchar(500) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `pelatihan_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `Jenis`, `pertanyaan1`, `pertanyaan2`, `pertanyaan3`, `pertanyaan4`, `pertanyaan5`, `created_at`, `updated_at`, `pelatihan_id`) VALUES
(11, 'test', 'Kejelasan Materi yang disampaikan', 'Pemahamanan materi yang anda dapat dari materi yang disampaikan', 'Materi dan topik bahasan dapat diterima dengan baik dan jelas', 'Pemateri dapat menyampaikan dengan baik, jelas dan benar', 'Materi dapat diterima dengan baik dan diterapkan dikemudian hari', '2024-08-08 19:12:15', '2024-08-08 20:28:25', 4);

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
(1, 'admin1', 'admin1@gmail.com', NULL, '$2y$10$o91UHI.14tZ4Yk.8UU84Zez/QVR.Xckdl5h3EJviOdxbm.2QOqwJm', NULL, '2024-08-05 11:55:59', '2024-08-05 11:55:59'),
(2, 'ANISHA TRIE APRILYASA', 'anishaaprilyasa@gmail.com', NULL, '$2y$10$fywdbx8q6RGErPTB4PzEMem/KHTxbkC4DrhjAR9FuRJaeAw984tmq', NULL, '2024-08-05 19:34:10', '2024-08-05 19:34:10'),
(3, 'user2', 'user2@gmail.com', NULL, '$2y$10$e.xz1ldJ.bqpxDaLlkc5jeGMerTh1n250HQa3vFR2Pxl7OXgQoEje', NULL, '2024-08-05 21:38:41', '2024-08-05 21:38:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
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
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawai_nip_pegawai_unique` (`nip_pegawai`);

--
-- Indexes for table `pelatihan`
--
ALTER TABLE `pelatihan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `respons`
--
ALTER TABLE `respons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `test_id` (`test_id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
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
-- AUTO_INCREMENT for table `materi`
--
ALTER TABLE `materi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelatihan`
--
ALTER TABLE `pelatihan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `respons`
--
ALTER TABLE `respons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `respons`
--
ALTER TABLE `respons`
  ADD CONSTRAINT `respons_ibfk_1` FOREIGN KEY (`test_id`) REFERENCES `test` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
