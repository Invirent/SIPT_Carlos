-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Nov 11, 2022 at 03:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `studenttermsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lectureId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tahunMasuk` int(11) DEFAULT NULL,
  `jurusan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`id`, `created_at`, `updated_at`, `nama`, `lectureId`, `tahunMasuk`, `jurusan`) VALUES
(2, '2022-11-11 07:36:58', '2022-11-11 07:36:58', 'Dosen Test', '12TEST11', 2022, 'Sistem Informasi');

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
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `kode_khs` int(11) NOT NULL,
  `StudentID` varchar(12) DEFAULT NULL,
  `kode_term` varchar(4) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `kode_krs` varchar(115) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`kode_khs`, `StudentID`, `kode_term`, `keterangan`, `kode_krs`) VALUES
(18033, '03081200004', '1214', 'KHS', '100000005');

-- --------------------------------------------------------

--
-- Table structure for table `khs_detail`
--

CREATE TABLE `khs_detail` (
  `kode_khs_detail` int(11) NOT NULL,
  `kode_khs` int(11) DEFAULT NULL,
  `kode_krs_detail` varchar(15) DEFAULT NULL,
  `NilaiHuruf` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs_detail`
--

INSERT INTO `khs_detail` (`kode_khs_detail`, `kode_khs`, `kode_krs_detail`, `NilaiHuruf`) VALUES
(18033001, 18033, '10000000501', 'A'),
(18033002, 18033, '10000000502', 'B+'),
(18033003, 18033, '10000000503', 'A+'),
(18033004, 18033, '10000000504', 'A-'),
(18033005, 18033, '10000000505', 'B'),
(18033006, 18033, '10000000506', 'A');

-- --------------------------------------------------------

--
-- Stand-in structure for view `khs_detail_view`
-- (See below for the actual view)
--
CREATE TABLE `khs_detail_view` (
`StudentID` varchar(12)
,`nama` varchar(50)
,`kode_matkul` varchar(6)
,`nama_matkul` varchar(50)
,`sks` int(11)
,`huruf` varchar(2)
);

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `kode_krs` varchar(15) NOT NULL,
  `StudentID` varchar(12) NOT NULL,
  `kode_term` varchar(4) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`kode_krs`, `StudentID`, `kode_term`, `keterangan`) VALUES
('100000001', '100000001', '1212', ''),
('100000002', '100000001', '1213', ''),
('100000003', '100000002', '1212', ''),
('100000004', '100000002', '1213', ''),
('100000005', '03081200004', '1214', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `krs_detail`
--

CREATE TABLE `krs_detail` (
  `kode_krsdetail` varchar(15) NOT NULL,
  `kode_krs` varchar(15) NOT NULL,
  `kode_matakuliah` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `krs_detail`
--

INSERT INTO `krs_detail` (`kode_krsdetail`, `kode_krs`, `kode_matakuliah`) VALUES
('10000000101', '100000001', 'MK0001'),
('10000000102', '100000001', 'MK0003'),
('10000000201', '100000002', 'MK0002'),
('10000000202', '100000002', 'MK0001'),
('10000000301', '100000003', 'MK0002'),
('10000000302', '100000003', 'MK0001'),
('10000000401', '100000004', 'MK0002'),
('10000000402', '100000004', 'MK0001'),
('10000000501', '100000005', 'MK0001'),
('10000000502', '100000005', 'MK0002'),
('10000000503', '100000005', 'MK0004'),
('10000000504', '100000005', 'MK0005'),
('10000000505', '100000005', 'MK0006'),
('10000000506', '100000005', 'MK0007');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `StudentID` varchar(12) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Jurusan` varchar(30) NOT NULL,
  `Tahun_masuk` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`StudentID`, `Nama`, `Jurusan`, `Tahun_masuk`) VALUES
('03081200004', 'Carlos', 'SISTEM INFORMASI', '2020'),
('100000001', 'BUDI', 'SISTEM INFORMASI', '2017'),
('100000002', 'SUSI', 'SISTEM INFORMASI', '2017');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode_matakuliah` varchar(6) NOT NULL,
  `nama_matakuliah` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode_matakuliah`, `nama_matakuliah`, `sks`) VALUES
('MK0001', 'BUSINESS APPLICATION PROGRAMMING', 4),
('MK0002', 'AUDIT DAN KONTROL SISTEM INFROMASI', 4),
('MK0003', 'PEMROGRAMAN BERORIENTASI OBJEK', 4),
('MK0004', 'DASAR MANAJEMEN KEUANGAN PERUSAHAAN', 3),
('MK0005', 'MANAJEMEN STRATEGIS PERUSAHAAN', 3),
('MK0006', 'ENTERPRISE INFORMATION SYSTEMS', 3),
('MK0007', 'DIGITAL MARKETING', 3);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliahs`
--

CREATE TABLE `matakuliahs` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `kode_matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_matakuliah` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sks` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `matakuliahs`
--

INSERT INTO `matakuliahs` (`id`, `created_at`, `updated_at`, `kode_matakuliah`, `nama_matakuliah`, `sks`) VALUES
(1, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0001', 'BUSINESS APPLICATION PROGRAMMING', 4),
(2, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0002', 'AUDIT DAN KONTROL SISTEM INFROMASI', 4),
(3, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0003', 'PEMROGRAMAN BERORIENTASI OBJEK', 4),
(4, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0004', 'DASAR MANAJEMEN KEUANGAN PERUSAHAAN', 3),
(5, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0005', 'MANAJEMEN STRATEGIS PERUSAHAAN', 3),
(6, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0006', 'ENTERPRISE INFORMATION SYSTEMS', 3),
(7, '2022-11-11 14:50:36', '2022-11-11 14:50:36', 'MK0007', 'DIGITAL MARKETING', 3);

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_10_160455_create_dosens_table', 2),
(6, '2022_11_11_140657_create_dosen_table', 3),
(7, '2022_11_11_143844_create_matakuliahs_table', 4),
(8, '2022_11_11_144053_create_matakuliahs_table', 5);

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
-- Stand-in structure for view `student_data`
-- (See below for the actual view)
--
CREATE TABLE `student_data` (
`student_id` varchar(12)
,`nama` varchar(50)
,`term` varchar(4)
,`total_sks` decimal(32,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `student_detail_major`
-- (See below for the actual view)
--
CREATE TABLE `student_detail_major` (
`student_id` varchar(12)
,`kode` varchar(6)
,`name` varchar(50)
,`sks` int(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `kode_term` varchar(4) NOT NULL,
  `tahun_ajar` varchar(4) NOT NULL,
  `semester` varchar(10) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `term`
--

INSERT INTO `term` (`kode_term`, `tahun_ajar`, `semester`, `keterangan`) VALUES
('1212', '2020', 'GANJIL', ''),
('1213', '2020', 'GENAP', ''),
('1214', '2022', 'GANJIL', ' ');

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

-- --------------------------------------------------------

--
-- Structure for view `khs_detail_view`
--
DROP TABLE IF EXISTS `khs_detail_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Invirent`@`localhost` SQL SECURITY DEFINER VIEW `khs_detail_view`  AS SELECT `siswa`.`StudentID` AS `StudentID`, `siswa`.`Nama` AS `nama`, `kuliah`.`kode_matakuliah` AS `kode_matkul`, `kuliah`.`nama_matakuliah` AS `nama_matkul`, `kuliah`.`sks` AS `sks`, `khd`.`NilaiHuruf` AS `huruf` FROM ((((`mahasiswa` `siswa` left join `krs` on(`siswa`.`StudentID` = `krs`.`StudentID`)) left join `krs_detail` `kd` on(`krs`.`kode_krs` = `kd`.`kode_krs`)) left join `matakuliah` `kuliah` on(`kd`.`kode_matakuliah` = `kuliah`.`kode_matakuliah`)) left join `khs_detail` `khd` on(`kd`.`kode_krsdetail` = `khd`.`kode_krs_detail`)) ;

-- --------------------------------------------------------

--
-- Structure for view `student_data`
--
DROP TABLE IF EXISTS `student_data`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Invirent`@`localhost` SQL SECURITY DEFINER VIEW `student_data`  AS SELECT `siswa`.`StudentID` AS `student_id`, `siswa`.`Nama` AS `nama`, `krs`.`kode_term` AS `term`, sum(coalesce(`m`.`sks`,0)) AS `total_sks` FROM (((`mahasiswa` `siswa` left join `krs` on(`siswa`.`StudentID` = `krs`.`StudentID`)) left join `krs_detail` `kd` on(`krs`.`kode_krs` = `kd`.`kode_krs`)) left join `matakuliah` `m` on(`kd`.`kode_matakuliah` = `m`.`kode_matakuliah`)) GROUP BY `siswa`.`StudentID`, `siswa`.`Nama`, `krs`.`kode_term` ;

-- --------------------------------------------------------

--
-- Structure for view `student_detail_major`
--
DROP TABLE IF EXISTS `student_detail_major`;

CREATE ALGORITHM=UNDEFINED DEFINER=`Invirent`@`localhost` SQL SECURITY DEFINER VIEW `student_detail_major`  AS SELECT `siswa`.`StudentID` AS `student_id`, `m`.`kode_matakuliah` AS `kode`, `m`.`nama_matakuliah` AS `name`, `m`.`sks` AS `sks` FROM (((`mahasiswa` `siswa` left join `krs` on(`siswa`.`StudentID` = `krs`.`StudentID`)) left join `krs_detail` `kd` on(`krs`.`kode_krs` = `kd`.`kode_krs`)) left join `matakuliah` `m` on(`kd`.`kode_matakuliah` = `m`.`kode_matakuliah`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`kode_khs`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `kode_term` (`kode_term`),
  ADD KEY `kode_krs` (`kode_krs`);

--
-- Indexes for table `khs_detail`
--
ALTER TABLE `khs_detail`
  ADD PRIMARY KEY (`kode_khs_detail`),
  ADD KEY `kode_khs` (`kode_khs`),
  ADD KEY `kode_krs_detail` (`kode_krs_detail`);

--
-- Indexes for table `krs`
--
ALTER TABLE `krs`
  ADD PRIMARY KEY (`kode_krs`),
  ADD KEY `StudentID` (`StudentID`),
  ADD KEY `kode_term` (`kode_term`);

--
-- Indexes for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD PRIMARY KEY (`kode_krsdetail`),
  ADD KEY `kode_krs` (`kode_krs`),
  ADD KEY `kode_matakuliah` (`kode_matakuliah`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`StudentID`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode_matakuliah`);

--
-- Indexes for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `term`
--
ALTER TABLE `term`
  ADD PRIMARY KEY (`kode_term`);

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
-- AUTO_INCREMENT for table `dosen`
--
ALTER TABLE `dosen`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `matakuliahs`
--
ALTER TABLE `matakuliahs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `khs`
--
ALTER TABLE `khs`
  ADD CONSTRAINT `khs_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `mahasiswa` (`StudentID`),
  ADD CONSTRAINT `khs_ibfk_2` FOREIGN KEY (`kode_term`) REFERENCES `term` (`kode_term`),
  ADD CONSTRAINT `khs_ibfk_3` FOREIGN KEY (`kode_krs`) REFERENCES `krs` (`kode_krs`);

--
-- Constraints for table `khs_detail`
--
ALTER TABLE `khs_detail`
  ADD CONSTRAINT `khs_detail_ibfk_1` FOREIGN KEY (`kode_khs`) REFERENCES `khs` (`kode_khs`),
  ADD CONSTRAINT `khs_detail_ibfk_2` FOREIGN KEY (`kode_krs_detail`) REFERENCES `krs_detail` (`kode_krsdetail`);

--
-- Constraints for table `krs`
--
ALTER TABLE `krs`
  ADD CONSTRAINT `krs_ibfk_1` FOREIGN KEY (`StudentID`) REFERENCES `mahasiswa` (`StudentID`),
  ADD CONSTRAINT `krs_ibfk_2` FOREIGN KEY (`kode_term`) REFERENCES `term` (`kode_term`);

--
-- Constraints for table `krs_detail`
--
ALTER TABLE `krs_detail`
  ADD CONSTRAINT `krs_detail_ibfk_1` FOREIGN KEY (`kode_krs`) REFERENCES `krs` (`kode_krs`),
  ADD CONSTRAINT `krs_detail_ibfk_2` FOREIGN KEY (`kode_matakuliah`) REFERENCES `matakuliah` (`kode_matakuliah`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
