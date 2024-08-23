-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2024 at 03:17 AM
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
-- Database: `trainingmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `absensi`
--

CREATE TABLE `absensi` (
  `id_absensi` int(11) NOT NULL,
  `id_training` int(11) DEFAULT NULL,
  `id_test` varchar(255) DEFAULT NULL,
  `nip_pegawai` varchar(50) NOT NULL,
  `tanggal` date DEFAULT NULL,
  `StatusTest_Done` tinyint(1) DEFAULT NULL,
  `jumlah_test` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `absensi`
--

INSERT INTO `absensi` (`id_absensi`, `id_training`, `id_test`, `nip_pegawai`, `tanggal`, `StatusTest_Done`, `jumlah_test`, `created_at`, `updated_at`) VALUES
(1, 1, '1', '1', '2023-01-02', 1, 3, '2024-07-09 14:36:44', '2024-07-09 14:36:44'),
(2, 2, '2', '2', '2023-02-02', 0, 2, '2024-07-09 14:36:44', '2024-07-09 14:36:44'),
(3, 3, '3', '3', '2023-03-02', 1, 1, '2024-07-09 14:36:44', '2024-07-09 14:36:44');

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
-- Table structure for table `generate_sertifikat`
--

CREATE TABLE `generate_sertifikat` (
  `id_sertifikat` int(11) NOT NULL,
  `id_absensi` int(11) DEFAULT NULL,
  `date_generate` datetime DEFAULT NULL,
  `no_sertifikat` varchar(50) DEFAULT NULL,
  `date_sertifikat` date DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `generate_sertifikat`
--

INSERT INTO `generate_sertifikat` (`id_sertifikat`, `id_absensi`, `date_generate`, `no_sertifikat`, `date_sertifikat`, `created_at`) VALUES
(1, 1, '2024-07-09 14:37:30', 'Sertifikat-001', '2023-01-03', '2024-07-09 14:37:30'),
(2, 2, '2024-07-09 14:37:30', 'Sertifikat-002', '2023-02-03', '2024-07-09 14:37:30'),
(3, 3, '2024-07-09 14:37:30', 'Sertifikat-003', '2023-03-03', '2024-07-09 14:37:30');

-- --------------------------------------------------------

--
-- Table structure for table `materi`
--

CREATE TABLE `materi` (
  `id_materi` int(11) NOT NULL,
  `judul_materi` varchar(200) DEFAULT NULL,
  `nama_pemateri` varchar(100) DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `file` blob DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_training` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `materi`
--

INSERT INTO `materi` (`id_materi`, `judul_materi`, `nama_pemateri`, `jam`, `file`, `created_at`, `updated_at`, `id_training`) VALUES
(0, 'Management', 'pemateri 1', '09:00:00', 0x706174682f746f2f66696c652e706466, '2024-07-28 19:43:22', '2024-07-28 19:43:22', 1),
(1, 'Materi 1', 'Pemateri 1', '01:00:00', NULL, '2024-07-09 14:34:45', '2024-07-09 14:34:45', 1),
(2, 'Materi 2', 'Pemateri 2', '02:00:00', NULL, '2024-07-09 14:34:45', '2024-07-09 14:34:45', 1),
(3, 'Materi 3', 'Pemateri 3', '01:30:00', NULL, '2024-07-09 14:34:45', '2024-07-09 14:34:45', 2);

-- --------------------------------------------------------

--
-- Stand-in structure for view `materi_view`
-- (See below for the actual view)
--
CREATE TABLE `materi_view` (
`id_materi` int(11)
,`judul_materi` varchar(200)
,`nama_pemateri` varchar(100)
,`jam` time
,`file` blob
);

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
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `nip_pegawai` varchar(50) NOT NULL,
  `nama_pegawai` varchar(100) DEFAULT NULL,
  `jabatan_pegawai` varchar(100) DEFAULT NULL,
  `unit_kerja` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`nip_pegawai`, `nama_pegawai`, `jabatan_pegawai`, `unit_kerja`, `created_at`, `updated_at`, `id`) VALUES
('1', 'Pegawai 1', 'Jabatan 1', 'Unit 1', '2024-07-09 14:36:22', '2024-07-09 14:36:22', 1),
('2', 'Pegawai 2', 'Jabatan 2', 'Unit Kepegawaian', '2024-07-09 14:36:22', '2024-07-09 14:36:22', 2),
('3', 'Pegawai 3', 'Jabatan 3', 'Unit 3', '2024-07-09 14:36:22', '2024-07-09 14:36:22', 3);

-- --------------------------------------------------------

--
-- Stand-in structure for view `pegawai_view`
-- (See below for the actual view)
--
CREATE TABLE `pegawai_view` (
`nip_pegawai` varchar(50)
,`nama_pegawai` varchar(100)
,`jabatan_pegawai` varchar(100)
,`unit_kerja` varchar(100)
,`created_at` datetime
,`updated_at` datetime
);

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
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `id_question` int(11) NOT NULL,
  `id_test` varchar(255) DEFAULT NULL,
  `question` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`id_question`, `id_test`, `question`, `created_at`, `updated_at`) VALUES
(1, '1', 'Pertanyaan 1 untuk Test 1', '2024-07-09 14:36:57', '2024-07-09 14:36:57'),
(2, '1', 'Pertanyaan 2 untuk Test 1', '2024-07-09 14:36:57', '2024-07-09 14:36:57'),
(3, '2', 'Pertanyaan 1 untuk Test 2', '2024-07-09 14:36:57', '2024-07-09 14:36:57'),
(4, '3', 'Pertanyaan 1 untuk Test 3', '2024-07-09 14:36:57', '2024-07-09 14:36:57');

-- --------------------------------------------------------

--
-- Table structure for table `respons`
--

CREATE TABLE `respons` (
  `id_respons` int(11) NOT NULL,
  `id_test` varchar(255) DEFAULT NULL,
  `id_question` int(11) DEFAULT NULL,
  `respons_answer` tinyint(4) DEFAULT NULL CHECK (`respons_answer` between 1 and 5),
  `date_start` datetime DEFAULT NULL,
  `date_end` datetime DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `respons`
--

INSERT INTO `respons` (`id_respons`, `id_test`, `id_question`, `respons_answer`, `date_start`, `date_end`, `created_at`, `updated_at`) VALUES
(1, '1', 1, 3, '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08'),
(2, '1', 2, 4, '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08'),
(3, '2', 3, 5, '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08'),
(4, '3', 4, 2, '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08', '2024-07-09 14:37:08');

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id_test` varchar(255) NOT NULL,
  `jenis_test` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_training` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id_test`, `jenis_test`, `created_at`, `updated_at`, `id_training`, `id`) VALUES
('1', 'Test 1', '2024-07-09 14:36:32', '2024-07-09 14:36:32', 1, 1),
('2', 'Test 2', '2024-07-09 14:36:32', '2024-07-09 14:36:32', 1, 2),
('3', 'Test 3', '2024-07-09 14:36:32', '2024-07-09 14:36:32', 1, 3),
('T004', 'Knowledge Test', '2024-07-28 21:15:17', '2024-07-28 21:15:17', 2, 4),
('T005', 'Introduce Test', '2024-07-28 21:15:17', '2024-07-28 21:15:17', 2, 5),
('T006', 'Practical Test', '2024-07-28 21:15:17', '2024-07-28 21:15:17', 2, 6),
('T007', 'Final Assessment', '2024-07-28 21:15:17', '2024-07-28 21:15:17', 2, 7);

-- --------------------------------------------------------

--
-- Stand-in structure for view `test_view`
-- (See below for the actual view)
--
CREATE TABLE `test_view` (
`id_test` varchar(255)
,`jenis_test` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `training`
--

CREATE TABLE `training` (
  `id_training` int(11) NOT NULL,
  `id_materi` int(11) DEFAULT NULL,
  `judul_training` varchar(200) DEFAULT NULL,
  `tanggal_training` date DEFAULT NULL,
  `jenis_training` varchar(100) DEFAULT NULL,
  `tempat_training` varchar(100) DEFAULT NULL,
  `pelaksanaan_training` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `training`
--

INSERT INTO `training` (`id_training`, `id_materi`, `judul_training`, `tanggal_training`, `jenis_training`, `tempat_training`, `pelaksanaan_training`, `created_at`, `updated_at`) VALUES
(1, 1, 'Training 1', '2023-01-01', 'Jenis 1', 'Tempat 1', 'Pelaksanaan 1', '2024-07-09 14:36:04', '2024-07-09 14:36:04'),
(2, 2, 'Training 2', '2023-02-01', 'Jenis 2', 'Tempat 2', 'Pelaksanaan 2', '2024-07-09 14:36:04', '2024-07-09 14:36:04'),
(3, 3, 'Training 3', '2023-03-01', 'Jenis 3', 'Tempat 3', 'Pelaksanaan 3', '2024-07-09 14:36:04', '2024-07-09 14:36:04');

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
(1, 'user', 'user@gmail.com', NULL, '$2y$10$f6KRI3nE5sbn0oP.SbJjT.XsqjINUN1aOJqoW1siU2xnDj3TH0ok2', NULL, '2024-07-23 00:58:22', '2024-07-23 00:58:22');

-- --------------------------------------------------------

--
-- Structure for view `materi_view`
--
DROP TABLE IF EXISTS `materi_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `materi_view`  AS SELECT `materi`.`id_materi` AS `id_materi`, `materi`.`judul_materi` AS `judul_materi`, `materi`.`nama_pemateri` AS `nama_pemateri`, `materi`.`jam` AS `jam`, `materi`.`file` AS `file` FROM `materi` ;

-- --------------------------------------------------------

--
-- Structure for view `pegawai_view`
--
DROP TABLE IF EXISTS `pegawai_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `pegawai_view`  AS SELECT `pegawai`.`nip_pegawai` AS `nip_pegawai`, `pegawai`.`nama_pegawai` AS `nama_pegawai`, `pegawai`.`jabatan_pegawai` AS `jabatan_pegawai`, `pegawai`.`unit_kerja` AS `unit_kerja`, `pegawai`.`created_at` AS `created_at`, `pegawai`.`updated_at` AS `updated_at` FROM `pegawai` ;

-- --------------------------------------------------------

--
-- Structure for view `test_view`
--
DROP TABLE IF EXISTS `test_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `test_view`  AS SELECT `test`.`id_test` AS `id_test`, `test`.`jenis_test` AS `jenis_test` FROM `test` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `absensi`
--
ALTER TABLE `absensi`
  ADD PRIMARY KEY (`id_absensi`),
  ADD KEY `id_training` (`id_training`),
  ADD KEY `id_test` (`id_test`),
  ADD KEY `nip_pegawai` (`nip_pegawai`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `generate_sertifikat`
--
ALTER TABLE `generate_sertifikat`
  ADD PRIMARY KEY (`id_sertifikat`),
  ADD KEY `id_absensi` (`id_absensi`);

--
-- Indexes for table `materi`
--
ALTER TABLE `materi`
  ADD PRIMARY KEY (`id_materi`);

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
  ADD PRIMARY KEY (`nip_pegawai`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`id_question`),
  ADD KEY `id_test` (`id_test`);

--
-- Indexes for table `respons`
--
ALTER TABLE `respons`
  ADD PRIMARY KEY (`id_respons`),
  ADD KEY `id_test` (`id_test`),
  ADD KEY `id_question` (`id_question`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id_test`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `training`
--
ALTER TABLE `training`
  ADD PRIMARY KEY (`id_training`),
  ADD KEY `id_materi` (`id_materi`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test`
--
ALTER TABLE `test`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `absensi`
--
ALTER TABLE `absensi`
  ADD CONSTRAINT `absensi_ibfk_1` FOREIGN KEY (`id_training`) REFERENCES `training` (`id_training`),
  ADD CONSTRAINT `absensi_ibfk_2` FOREIGN KEY (`id_test`) REFERENCES `test` (`id_test`),
  ADD CONSTRAINT `absensi_ibfk_3` FOREIGN KEY (`nip_pegawai`) REFERENCES `pegawai` (`nip_pegawai`);

--
-- Constraints for table `generate_sertifikat`
--
ALTER TABLE `generate_sertifikat`
  ADD CONSTRAINT `generate_sertifikat_ibfk_1` FOREIGN KEY (`id_absensi`) REFERENCES `absensi` (`id_absensi`);

--
-- Constraints for table `question`
--
ALTER TABLE `question`
  ADD CONSTRAINT `question_ibfk_1` FOREIGN KEY (`id_test`) REFERENCES `test` (`id_test`);

--
-- Constraints for table `respons`
--
ALTER TABLE `respons`
  ADD CONSTRAINT `respons_ibfk_1` FOREIGN KEY (`id_test`) REFERENCES `test` (`id_test`),
  ADD CONSTRAINT `respons_ibfk_2` FOREIGN KEY (`id_question`) REFERENCES `question` (`id_question`);

--
-- Constraints for table `training`
--
ALTER TABLE `training`
  ADD CONSTRAINT `training_ibfk_1` FOREIGN KEY (`id_materi`) REFERENCES `materi` (`id_materi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
