-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 24, 2024 at 11:26 AM
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
-- Database: `db_siletter`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_magang`
--

CREATE TABLE `anggota_magang` (
  `id_anggota_magang` int(11) NOT NULL,
  `id_surat_masuk` int(11) NOT NULL,
  `id_bagian` int(11) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `nim` varchar(25) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `anggota_magang`
--

INSERT INTO `anggota_magang` (`id_anggota_magang`, `id_surat_masuk`, `id_bagian`, `nama`, `nim`, `created_at`, `updated_at`) VALUES
(7, 8, 19, 'huhu', '111', '2024-05-17 18:45:30', '2024-06-23 03:23:01'),
(8, 9, 4, 'nama1', '111', '2024-05-19 14:32:13', '2024-06-20 04:49:10'),
(9, 9, 4, 'nama2', '222', '2024-05-19 14:32:13', '2024-06-20 04:49:10'),
(31, 27, NULL, '111', '11', '2024-06-07 16:47:16', '2024-06-07 16:47:16'),
(32, 28, 4, 'nadia', '2111521007', '2024-06-07 16:49:00', '2024-06-22 17:13:47'),
(33, 28, 5, 'nur', '2111521008', '2024-06-07 16:49:00', '2024-06-22 17:13:47'),
(34, 30, 7, 'Sarah', '2111521007', '2024-06-17 07:28:50', '2024-06-17 08:12:36'),
(35, 30, 8, 'Permata', '2111521008', '2024-06-17 07:28:50', '2024-06-17 08:12:36'),
(36, 30, 9, 'Sari', '2111521009', '2024-06-17 07:28:50', '2024-06-17 08:12:36'),
(37, 31, 4, 'Nadia Nur Saida', '2111521007', '2024-06-22 23:48:28', '2024-06-22 23:49:21'),
(38, 31, 4, 'Vania Zerlina Utami', '2111523003', '2024-06-22 23:48:28', '2024-06-22 23:49:21'),
(39, 31, 5, 'Syadza Intan Benya', '2111521011', '2024-06-22 23:48:28', '2024-06-22 23:49:21'),
(40, 31, 5, 'Nadini Annisa Byant', '2111522021', '2024-06-22 23:48:28', '2024-06-22 23:49:21'),
(41, 32, 19, 'saida', '154545', '2024-06-24 08:48:42', '2024-06-24 08:52:05'),
(42, 32, 21, 'zerlina', '54545', '2024-06-24 08:48:42', '2024-06-24 08:52:05');

-- --------------------------------------------------------

--
-- Table structure for table `bagian`
--

CREATE TABLE `bagian` (
  `id_bagian` int(11) NOT NULL,
  `id_biro` int(11) NOT NULL,
  `nama_bagian` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bagian`
--

INSERT INTO `bagian` (`id_bagian`, `id_biro`, `nama_bagian`, `created_at`, `updated_at`) VALUES
(1, 1, 'Bagian Otonomi Daerah', '2024-05-15 15:28:25', '2024-05-15 15:28:25'),
(2, 1, 'Bagian Pemerintahan Umum', '2024-05-15 15:28:38', '2024-05-15 15:28:38'),
(3, 1, 'Bagian Administrasi Pemerintahan', '2024-05-15 15:28:45', '2024-05-15 15:28:45'),
(4, 2, 'Bagian Dokumentasi, Bantuan Hukum dan HAM', '2024-05-15 15:29:04', '2024-05-15 15:29:04'),
(5, 2, 'Bagian Penyusunan Peraturan Perundang-undangan', '2024-05-15 15:29:14', '2024-05-15 15:29:14'),
(6, 2, 'Bagian Pembinaan dan Pengawasan Produk Hukum Daerah Kabupaten/ Kota', '2024-05-15 15:29:31', '2024-05-15 15:29:31'),
(7, 3, 'Bagian Penyelenggaraan Informasi Pimpinan', '2024-05-15 15:30:08', '2024-05-15 15:30:08'),
(8, 3, 'Bagian Analisa Kebijakan dan Media', '2024-05-15 15:30:14', '2024-05-15 15:30:14'),
(9, 3, 'Bagian Pengelolaan Administrasi Informasi', '2024-05-15 15:30:21', '2024-05-15 15:30:21'),
(10, 4, 'Bagian Bina Sarana Perekonomian', '2024-05-15 15:30:38', '2024-05-15 15:30:38'),
(11, 4, 'Bagian Bina Produksi dan Pemasaran', '2024-05-15 15:30:52', '2024-05-15 15:30:52'),
(12, 4, 'Bagian Bina Kelembagaan Ekonomi', '2024-05-15 15:31:03', '2024-05-15 15:31:03'),
(13, 5, 'Bagian Bina Metal', '2024-05-15 15:32:09', '2024-05-15 15:32:09'),
(14, 5, 'Bagian Pengembangan Generasi Muda dan Tata Usaha', '2024-05-15 15:32:16', '2024-05-15 15:32:16'),
(15, 5, 'Bagian Kesejahteraan Rakyat', '2024-05-15 15:32:25', '2024-05-15 15:32:25'),
(16, 6, 'Bagian Rantau', '2024-05-15 15:32:40', '2024-05-15 15:32:40'),
(17, 6, 'Bagian Kerjasama Daerah', '2024-05-15 15:32:46', '2024-05-15 15:32:46'),
(18, 6, 'Bagian Pembangunan', '2024-05-15 15:32:52', '2024-05-15 15:32:52'),
(19, 7, 'Bagian Kelembagaan dan Analisis Jabatan', '2024-05-15 15:33:11', '2024-05-15 15:33:11'),
(20, 7, 'Bagian Pengembangan Kinerja', '2024-05-15 15:33:21', '2024-05-15 15:33:21'),
(21, 7, 'Bagian Tatalaksana', '2024-05-15 15:33:32', '2024-05-15 15:33:32'),
(23, 8, 'Bagian Perlengkapan dan Kesekretariatan', '2024-05-15 15:33:44', '2024-05-15 15:33:44'),
(24, 8, 'Bagian Rumah Tangga dan Keprotokolan', '2024-05-15 15:34:25', '2024-05-15 15:34:25'),
(25, 8, 'Bagian Tata Usaha dan Keuangan', '2024-05-15 15:34:33', '2024-05-15 15:34:33'),
(26, 9, 'Bagian Pengelolaan Pengadaan Barang dan Jasa', '2024-05-15 15:34:43', '2024-05-15 15:34:43'),
(27, 9, 'Bagian Pengelolaan Layanan Pengadaan Secara Elektronik', '2024-05-15 15:34:49', '2024-05-15 15:34:49'),
(28, 9, 'Bagian Pembinaan dan Advokasi Pengadaan Barang dan Jasa', '2024-05-15 15:35:01', '2024-05-15 15:35:01');

-- --------------------------------------------------------

--
-- Table structure for table `biro`
--

CREATE TABLE `biro` (
  `id_biro` int(11) NOT NULL,
  `nama_biro` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `biro`
--

INSERT INTO `biro` (`id_biro`, `nama_biro`, `created_at`, `updated_at`) VALUES
(1, 'Biro Pemerintahan', '2024-05-15 15:17:27', '2024-05-15 15:17:27'),
(2, 'Biro Hukum', '2024-05-15 15:18:16', '2024-05-15 15:18:16'),
(3, 'Biro Humas', '2024-05-15 15:18:24', '2024-05-15 15:18:24'),
(4, 'Biro Perekonomian', '2024-05-15 15:18:29', '2024-05-15 15:18:29'),
(5, 'Biro Bina Mental dan Kesejahteraan Rakyat', '2024-05-15 15:22:59', '2024-05-15 15:22:59'),
(6, 'Biro Kerjasama, Pembangunan dan Rantau', '2024-05-15 15:23:35', '2024-05-15 15:23:35'),
(7, 'Biro Organisasi', '2024-05-15 15:26:01', '2024-05-15 15:26:01'),
(8, 'Biro Umum', '2024-05-15 15:26:08', '2024-05-15 15:26:08'),
(9, 'Biro Pengadaan Barang dan Jasa', '2024-05-15 15:26:20', '2024-05-15 15:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `disposisi`
--

CREATE TABLE `disposisi` (
  `id_disposisi` int(11) NOT NULL,
  `id_surat_masuk` int(11) NOT NULL,
  `id_pegawai` int(11) NOT NULL,
  `keterangan` longtext DEFAULT NULL,
  `status` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `disposisi`
--

INSERT INTO `disposisi` (`id_disposisi`, `id_surat_masuk`, `id_pegawai`, `keterangan`, `status`, `created_at`, `updated_at`) VALUES
(82, 30, 10, NULL, 'Telah di setujui sekretaris biro', '2024-06-17 07:56:28', '2024-06-17 07:56:28'),
(83, 30, 9, NULL, 'Telah di setujui kepala bagian', '2024-06-17 08:12:36', '2024-06-17 08:12:36'),
(84, 30, 8, NULL, 'Disetujui', '2024-06-17 08:43:20', '2024-06-17 08:43:20'),
(85, 28, 7, NULL, 'Telah di setujui sekretaris biro', '2024-06-19 18:20:50', '2024-06-19 18:20:50'),
(86, 9, 7, NULL, 'Telah di setujui sekretaris biro', '2024-06-20 01:01:11', '2024-06-20 01:01:11'),
(99, 9, 6, NULL, 'Telah di setujui kepala bagian', '2024-06-20 04:49:10', '2024-06-20 04:49:10'),
(103, 28, 5, NULL, 'Disetujui', '2024-06-20 07:25:42', '2024-06-20 07:25:42'),
(104, 9, 5, 'test\n', 'Ditolak', '2024-06-20 07:25:53', '2024-06-20 07:25:53'),
(106, 28, 6, NULL, 'Telah di setujui kepala bagian', '2024-06-22 17:13:47', '2024-06-22 17:13:47'),
(107, 31, 7, NULL, 'Telah di setujui sekretaris biro', '2024-06-22 23:48:51', '2024-06-22 23:48:51'),
(108, 31, 6, NULL, 'Telah di setujui kepala bagian', '2024-06-22 23:49:21', '2024-06-22 23:49:21'),
(109, 31, 6, NULL, 'Telah di setujui kepala bagian', '2024-06-22 23:49:21', '2024-06-22 23:49:21'),
(110, 31, 6, NULL, 'Telah di setujui kepala bagian', '2024-06-22 23:49:21', '2024-06-22 23:49:21'),
(111, 31, 5, NULL, 'Disetujui', '2024-06-22 23:49:41', '2024-06-22 23:49:41'),
(112, 8, 22, NULL, 'Telah di setujui sekretaris biro', '2024-06-23 03:22:39', '2024-06-23 03:22:39'),
(113, 8, 21, NULL, 'Telah di setujui kepala bagian', '2024-06-23 03:23:01', '2024-06-23 03:23:01'),
(114, 32, 22, NULL, 'Telah di setujui sekretaris biro', '2024-06-24 08:50:54', '2024-06-24 08:50:54'),
(115, 32, 21, NULL, 'Telah di setujui kepala bagian', '2024-06-24 08:52:05', '2024-06-24 08:52:05'),
(116, 32, 21, NULL, 'Telah di setujui kepala bagian', '2024-06-24 08:52:05', '2024-06-24 08:52:05'),
(117, 32, 20, NULL, 'Disetujui', '2024-06-24 08:53:14', '2024-06-24 08:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `instansi` varchar(100) NOT NULL,
  `fakultas` varchar(50) DEFAULT NULL,
  `jurusan` varchar(50) DEFAULT NULL,
  `angkatan` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id_mahasiswa`, `nama`, `username`, `password`, `instansi`, `fakultas`, `jurusan`, `angkatan`, `jenis_kelamin`, `no_hp`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'Nadia Nur Saida', 'nadianrs', '$2b$10$G28IzE3KkhT/TMcHJxTPRutynGLJtR9Ao9IRZnTup4bbIzLumoCmy', 'Universitas Andalas', 'Fakultas Teknologi Informasi', 'Sistem Informasi', '2021', 'Perempuan', '087899144406', 'Untitled design (5).png', '2024-05-15 13:47:52', '2024-06-23 00:23:52'),
(2, 'Vania Zerlina Utami', 'vania', '$2b$10$WpMtQgOLjwoOHPWmKI3Umugqy87gO3dW.RHO2laY3nVG2x54yPAyi', 'Universitas Andalas', 'Fakultas Teknologi Informasi', 'Sistem Informasi', '2021', 'Perempuan', '085274776389', NULL, '2024-05-17 16:40:33', '2024-05-17 16:40:33'),
(3, 'Sarah Permata Sari', 'sarahpermata', '$2b$10$VLUX0x2gtRkrxvNlqB9fM.3bmLXVKZraQz.ZGggbmJ3YND0Tkrf/i', 'Universitas Andalas', 'Fakultas Teknologi Informasi', 'Sistem Informasi', '2021', 'Perempuan', '087899144407', NULL, '2024-06-07 17:15:18', '2024-06-07 17:15:18'),
(4, 'A', 'A', '$2b$10$tdg4LOc00bmAwGwEe7gTCuv/yYRpMskcojjP4dLFrml59.ksEBKMW', 'A', 'A', 'A', '1', 'Perempuan', '1', NULL, '2024-06-07 17:18:31', '2024-06-07 17:18:31'),
(5, 'a', 'ab', '$2b$10$m//en/oGnAIAJ14T46gEp.GWvy.jZdSxw1aihwbyZNPf7xEyg16Iy', 'a', 'a', 'a', '1', 'Perempuan', '1', NULL, '2024-06-07 17:22:01', '2024-06-07 17:22:01'),
(6, 'Syadza Intan Benya', 'syadza', '$2b$10$eaHhk1aTfO.AXEgR4o4ajuy9L6fanfAXnKjbwAHSWxfhtKZW/kkY.', 'Universitas Andalas', 'Fakultas Teknologi Informasi', 'Sistem Informasi', '2021', 'Perempuan', '089999887711', NULL, '2024-06-22 23:46:47', '2024-06-22 23:46:47');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `id_role` int(11) NOT NULL,
  `id_biro` int(11) NOT NULL,
  `id_bagian` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(256) NOT NULL,
  `foto` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `id_role`, `id_biro`, `id_bagian`, `nama`, `nip`, `username`, `email`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, 'Doni Rahmat Samulo, S.STP,M.S', '197606181995111001', 'Biro Pemerintahan', 'donirahmat@gmail.com', '$2b$10$aUwNt6S9DRhcD59YsMT5V.LBMaVpIiWdlOOHLCFio994Zg5/tZz.O', NULL, '2024-05-15 16:23:33', '2024-05-15 16:23:33'),
(2, 2, 1, 2, 'Nuzurwan Erixon, S.IP, M.SI', '197207061992031002', 'Kabag Pemerintahan', 'nuzurwan@gmail.com', '$2b$10$pdm2g3uK1WIyE3KoQ3ftT.TnjuyFvUkWuWawWLoT.xJQ2znN/.Aei', NULL, '2024-05-15 16:27:14', '2024-05-15 16:27:14'),
(3, 3, 1, 2, 'Arnel Efita, S.E, M.SI', '197411111997012002', 'Sekretaris Pemerintahan', 'arnelefita@gmail.com', '$2b$10$NSbgfgsQM91oLRSohFiFp.Fx8yLnKKx4Mt8aSt2FSDz/P/ahh4TE.', NULL, '2024-05-15 16:28:27', '2024-05-15 16:28:27'),
(5, 1, 2, NULL, 'Ezeddin Zain, S.H, M.E.', '197410311998031004', 'Biro Hukum', 'ezeddinzain@gmail.com', '$2b$10$jv35.L3Gwm9v820GXXsgQuggZ3mHTIfFDwhUiv3RBwJNFOn8p6ygC', 'Workshop MD.png', '2024-05-15 16:33:52', '2024-06-21 00:00:07'),
(6, 2, 2, 4, 'M. Rezha Fahlevie, S.H, M.H.', '198204142006041003', 'Kabag Hukum', 'rezha@gmail.com', '$2b$10$wtgGF0BQh8J30RvueyPEI.5n1Pv5GUMP5vzGT8q2fQ4.4YWxg2ZOG', 'depan.png', '2024-05-15 16:38:00', '2024-06-20 23:58:32'),
(7, 3, 2, 4, 'Sujaswadi, S.T, M.M', '197503212010011006', 'Sekretaris Hukum', 'sujaswadi@gmail.com', '$2b$10$hNYtPEslJgiYmhOYRCgeuu6nCqrEqh0tlHSOYcW8TqjsNw8UwHgCa', 'Twibbon PIP 7.0.png', '2024-05-15 16:38:48', '2024-06-20 23:14:40'),
(8, 1, 3, NULL, 'Drs. Jasman. M.M', '196801011988091001', 'Biro Humas', 'jasman@gmail.com', '$2b$10$vLnbY9MhS/NNSEbOxLbqkuJqs90078zm6WkmGf6rKpnCp7J7Yk6De', NULL, '2024-05-15 16:43:11', '2024-05-15 16:43:11'),
(9, 2, 3, 9, 'Zardi Syahrir, S.H, M.M', '196806211989031003', 'Kabag Humas', 'zardi@gmail.com', '$2b$10$fKBxgVmAOKOA0vvMDTgfFeYd3EZah9QtG.0SvYf3gMIZSFB9E9E8S', NULL, '2024-05-15 16:44:21', '2024-05-15 16:44:21'),
(10, 3, 3, 9, 'Dian Maya Sari. S.STP', '198509102006022001', 'Sekretaris Humas', 'dianmaya@gmail.com', '$2b$10$yPNdy5D60kkqKjFeJ8ZVxeeDYxIcPl2nfY/FgX8fISZpjGimWMLLK', NULL, '2024-05-15 16:44:59', '2024-05-15 16:44:59'),
(11, 1, 4, NULL, 'xxx', '000', 'Biro Perekonomian', 'xxx@gmail.com', '$2b$10$45RawfVP34dq9FM7LfmEj.c5vT1I5huHcJb6OApBMYH5uxIrIAePm', NULL, '2024-05-15 16:52:56', '2024-05-15 16:52:56'),
(12, 2, 4, 10, 'xxx', '111', 'Kabag Perekonomian', 'xxx@gmail.com', '$2b$10$oGzWJi.DWpO8ntfWoieKJ.Aa7Y5ykL5jwyDrPd428tNxr0DA./uoe', NULL, '2024-05-15 16:54:26', '2024-05-15 16:54:26'),
(13, 3, 4, 10, 'xxx', '222', 'Sekretaris Perekonomian', 'xxx@gmail.com', '$2b$10$iKHnoMYjw6e2JImkKzkubOVEiOnw7.vXDF0odE/bSlfYFeOt6Yvtu', NULL, '2024-05-15 16:54:36', '2024-05-15 16:54:36'),
(14, 1, 5, NULL, 'xxx', '333', 'Biro Bina Metal dan Kesra', 'xxx@gmail.com', '$2b$10$TeukiWGXOKJuxxWiEOgEReELEPie9eeVN5GKFYH5xDMYOoQZCpM.e', NULL, '2024-05-15 16:56:53', '2024-05-15 16:56:53'),
(15, 2, 5, 14, 'xxx', '444', 'Kabag Bina Metal dan Kesra', 'xxx@gmail.com', '$2b$10$CsLuLQLiBjKQEPfu8r3Ile0hTl3MEItH7sYjlxKuEG9KgxdvPA60K', NULL, '2024-05-15 16:57:23', '2024-05-15 16:57:23'),
(16, 3, 5, 14, 'xxx', '555', 'Sekretaris Bina Metal dan Kesra', 'xxx@gmail.com', '$2b$10$dfrcyG95PEUBGCjQCKmVp.qkyO1ShARleMhNprhshjkdmQ4Off7Va', NULL, '2024-05-15 16:57:38', '2024-05-15 16:57:38'),
(17, 1, 6, NULL, 'xxx', '666', 'Biro Kerjasama Pemran', 'xxx@gmail.com', '$2b$10$B0RycRMvF39dKh8Dy/gCZeisooZ21OQe0VCp01ljdb8.ZZzIe8YDm', NULL, '2024-05-15 17:00:40', '2024-05-15 17:00:40'),
(18, 2, 6, 17, 'xxx', '777', 'Kabag Kerjasama Pemran', 'xxx@gmail.com', '$2b$10$e2GkzDNwbJN27A9yqjTfoOudtJgoToJDiKXpimtr6VcRCnLR0IyZ.', NULL, '2024-05-15 17:00:55', '2024-05-15 17:00:55'),
(19, 3, 6, 17, 'xxx', '888', 'Sekretaris Kerjasama Pemran', 'xxx@gmail.com', '$2b$10$.ZJlkOhi7K0CRtoC.3RBHu61MGoVTOx.WIsopt9KR2L9oNBchyvsu', NULL, '2024-05-15 17:01:06', '2024-05-15 17:01:06'),
(20, 1, 7, NULL, 'Fitriati, M. S.Si, M.Si', '197305131997032005', 'Biro Organisasi', 'fitriati@gmail.com', '$2b$10$H6a7LyFzxVTr8P1xx20OTey1UeA8FOUWPnERkvzSWEMXC2J3esCL.', NULL, '2024-05-15 17:02:42', '2024-05-15 17:02:42'),
(21, 2, 7, 21, 'Igusti Firmansyah, S.Sos, M.A.P', '198408042008041001', 'Kabag Organisasi', 'igusti@gmail.com', '$2b$10$.EahMu5xC2VfkuKbrOPeHeYjpcD4V2.0U8kAM.EekqLg/Uj712Jv6', NULL, '2024-05-15 17:03:44', '2024-05-15 17:03:44'),
(22, 3, 7, 21, 'Yulia Hidayah, S.STP, MM.', '199107282012062001', 'Sekretaris Organisasi', 'yulia@gmail.com', '$2b$10$DujEB.rcaFIO/nJFxm.Fr.UaHtSmzOrNM2eRLBJc0BeuVpqSa5Fa6', NULL, '2024-05-15 17:04:40', '2024-05-15 17:04:40'),
(23, 1, 8, NULL, 'xxx', '999', 'Biro Umum', 'xxx@gmail.com', '$2b$10$CIhuos6lgZdjtzolwQDzMemR.u7v4LTjRbBs6QXbJiBL.Eur9RvXm', NULL, '2024-05-15 17:14:18', '2024-05-15 17:14:18'),
(24, 2, 8, 25, 'xxx', '1010', 'Kabag Umum', 'xxx@gmail.com', '$2b$10$xdR4gnjdJOukFODzTcPKEOwtx1Y/ZZLPYL5zdqplUcLeGu/hT97IS', NULL, '2024-05-15 17:16:27', '2024-05-15 17:16:27'),
(25, 3, 8, 25, 'xxx', '1111', 'Sekretaris Umum', 'xxx@gmail.com', '$2b$10$5K7py5AXX/4RWzkq3qgnhOeUQj3iSlVQVZIUVOhW2pPWRTQNJV3Oa', NULL, '2024-05-15 17:16:56', '2024-05-15 17:16:56'),
(26, 1, 9, NULL, 'Hefdi, S.H, M.SI', '196409151990031007', 'Biro PBJ', 'hefdi@gmail.com', '$2b$10$NV9oUY.W.sJigCyFasZPg.YuafPymR30wLv.8ACK5VjhN52w8J5GK', NULL, '2024-05-15 17:18:03', '2024-05-15 17:18:03'),
(27, 2, 9, 28, 'Cerry, M. ST, MM', '197610162008121001', 'Kabag PBJ', 'cerry@gmail.com', '$2b$10$Uj/0GiozJSrw82afrOvxw.uJdn1RhtQFpLzfdplRyTydHt5LdpNzm', NULL, '2024-05-15 17:21:55', '2024-05-15 17:21:55'),
(28, 3, 9, 28, 'April Diwan, S. Sos', '196604171999031004', 'Sekretaris PBJ', 'aprilridwan@gmail.com', '$2b$10$Log5bNRV4NGQNb6WyEMcv.xPbs6i/EtnIIARXS7/LHzgCDdL1j2vW', NULL, '2024-05-15 17:22:51', '2024-05-15 17:22:51');

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `id_role` int(11) NOT NULL,
  `nama_role` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`id_role`, `nama_role`, `created_at`, `updated_at`) VALUES
(1, 'Kepala Biro', '2024-05-15 15:45:56', '2024-05-15 15:45:56'),
(2, 'Kepala Bagian', '2024-05-15 15:46:04', '2024-05-15 15:46:04'),
(3, 'Sekretaris Biro', '2024-05-15 15:46:15', '2024-05-15 15:46:15');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keluar`
--

CREATE TABLE `surat_keluar` (
  `id_surat_keluar` int(11) NOT NULL,
  `id_surat_masuk` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_biro` int(11) NOT NULL,
  `no_surat` varchar(100) DEFAULT NULL,
  `perihal` varchar(256) NOT NULL,
  `file` varchar(256) DEFAULT NULL,
  `keterangan` longtext DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_keluar`
--

INSERT INTO `surat_keluar` (`id_surat_keluar`, `id_surat_masuk`, `id_mahasiswa`, `id_biro`, `no_surat`, `perihal`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 7, '3', 'AAA', 'Tugas Besar_2111521007_Nadia Nur Saida.pdf', 'AA', '2024-06-06 17:38:22', '2024-06-06 17:38:22'),
(20, 31, 6, 2, '2.2024', 'Penerimaan Permohonan Magang Mahasiswa', 'Surat_Balasan_2.2024.pdf', 'test 2', '2024-06-22 23:51:11', '2024-06-22 23:51:16'),
(21, 28, 1, 2, '3.2024', 'Penerimaan Permohonan Magang Mahasiswa', 'Surat_Balasan_3.2024.pdf', 'silahkan kembali pada tangggal 3 mei 2024', '2024-06-24 07:08:00', '2024-06-24 07:08:24'),
(22, 32, 1, 7, '5.2024', 'Penerimaan Permohonan Magang Mahasiswa', 'Surat_Balasan_5.2024.pdf', 'silahkan balik tanggal 5', '2024-06-24 08:54:50', '2024-06-24 08:54:55');

-- --------------------------------------------------------

--
-- Table structure for table `surat_masuk`
--

CREATE TABLE `surat_masuk` (
  `id_surat_masuk` int(11) NOT NULL,
  `id_mahasiswa` int(11) NOT NULL,
  `id_biro` int(11) NOT NULL,
  `periode_magang` varchar(100) NOT NULL,
  `file` varchar(256) NOT NULL,
  `keterangan` longtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `surat_masuk`
--

INSERT INTO `surat_masuk` (`id_surat_masuk`, `id_mahasiswa`, `id_biro`, `periode_magang`, `file`, `keterangan`, `created_at`, `updated_at`) VALUES
(8, 1, 7, '1 Mei - 31 Mei 20', 'Colorful Playful Illustration 2024 Calendar(6).pdf', NULL, '2024-05-17 18:45:30', '2024-05-17 18:45:30'),
(9, 1, 2, '1 Mei - 31 Mei 20', 'Colorful Playful Illustration 2024 Calendar.pdf', NULL, '2024-05-19 14:32:13', '2024-05-19 14:32:13'),
(27, 1, 3, '123', 'Nadia Nur Saida-resume (17).pdf', '', '2024-06-07 16:47:16', '2024-06-07 16:47:16'),
(28, 1, 2, '15 januari - 23 Mei 2024', 'Laporan Penilaian Pegawai Periode Februari Tahun 2024.pdf', '', '2024-06-07 16:49:00', '2024-06-07 16:49:00'),
(30, 1, 3, '12 Januari - 14 Mei 2024', 'Nadia Nur Saida-resume (17)(1).pdf', 'Assalamualaikum selamat pagi bapak ibuk, \nsaya nadia perwakilan blablabla\nmohon ditinjau surat permohonan magang dari kami, terimakasih', '2024-06-17 07:28:50', '2024-06-17 07:28:50'),
(31, 6, 2, '1 Mei - 13 Juli 2024', '1629-Article Text-6801-1-10-20240212.pdf', 'Assalamualaikum selamat pagi bapak ibuk, \r\nsaya syadza perwakilan blablabla\r\nmohon ditinjau surat permohonan magang dari kami, terimakasih', '2024-06-22 23:48:28', '2024-06-22 23:48:28'),
(32, 1, 7, '12 Januari - 14 Mei 2024', 'JURNAL_RANTAI_PASOK+CLEAR.pdf', 'terima aja', '2024-06-24 08:48:42', '2024-06-24 08:48:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_magang`
--
ALTER TABLE `anggota_magang`
  ADD PRIMARY KEY (`id_anggota_magang`),
  ADD KEY `id_bagian` (`id_bagian`),
  ADD KEY `id_surat_masuk` (`id_surat_masuk`);

--
-- Indexes for table `bagian`
--
ALTER TABLE `bagian`
  ADD PRIMARY KEY (`id_bagian`),
  ADD KEY `id_biro` (`id_biro`);

--
-- Indexes for table `biro`
--
ALTER TABLE `biro`
  ADD PRIMARY KEY (`id_biro`);

--
-- Indexes for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD PRIMARY KEY (`id_disposisi`),
  ADD KEY `id_surat_masuk` (`id_surat_masuk`,`id_pegawai`),
  ADD KEY `id_pegawai` (`id_pegawai`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`),
  ADD KEY `id_role` (`id_role`),
  ADD KEY `id_biro` (`id_biro`),
  ADD KEY `id_bagian` (`id_bagian`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`id_role`);

--
-- Indexes for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD PRIMARY KEY (`id_surat_keluar`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`,`id_biro`),
  ADD KEY `id_biro` (`id_biro`),
  ADD KEY `id_surat_masuk` (`id_surat_masuk`);

--
-- Indexes for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD PRIMARY KEY (`id_surat_masuk`),
  ADD KEY `id_mahasiswa` (`id_mahasiswa`),
  ADD KEY `id_biro` (`id_biro`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `anggota_magang`
--
ALTER TABLE `anggota_magang`
  MODIFY `id_anggota_magang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `bagian`
--
ALTER TABLE `bagian`
  MODIFY `id_bagian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `biro`
--
ALTER TABLE `biro`
  MODIFY `id_biro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `disposisi`
--
ALTER TABLE `disposisi`
  MODIFY `id_disposisi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `id_role` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  MODIFY `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  MODIFY `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggota_magang`
--
ALTER TABLE `anggota_magang`
  ADD CONSTRAINT `anggota_magang_ibfk_2` FOREIGN KEY (`id_bagian`) REFERENCES `bagian` (`id_bagian`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `anggota_magang_ibfk_3` FOREIGN KEY (`id_surat_masuk`) REFERENCES `surat_masuk` (`id_surat_masuk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bagian`
--
ALTER TABLE `bagian`
  ADD CONSTRAINT `bagian_ibfk_1` FOREIGN KEY (`id_biro`) REFERENCES `biro` (`id_biro`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `disposisi`
--
ALTER TABLE `disposisi`
  ADD CONSTRAINT `disposisi_ibfk_2` FOREIGN KEY (`id_pegawai`) REFERENCES `pegawai` (`id_pegawai`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `disposisi_ibfk_3` FOREIGN KEY (`id_surat_masuk`) REFERENCES `surat_masuk` (`id_surat_masuk`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD CONSTRAINT `pegawai_ibfk_1` FOREIGN KEY (`id_biro`) REFERENCES `biro` (`id_biro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_2` FOREIGN KEY (`id_role`) REFERENCES `role` (`id_role`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawai_ibfk_3` FOREIGN KEY (`id_bagian`) REFERENCES `bagian` (`id_bagian`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `surat_keluar`
--
ALTER TABLE `surat_keluar`
  ADD CONSTRAINT `surat_keluar_ibfk_1` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_keluar_ibfk_2` FOREIGN KEY (`id_biro`) REFERENCES `biro` (`id_biro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_keluar_ibfk_3` FOREIGN KEY (`id_surat_masuk`) REFERENCES `surat_masuk` (`id_surat_masuk`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `surat_masuk`
--
ALTER TABLE `surat_masuk`
  ADD CONSTRAINT `surat_masuk_ibfk_1` FOREIGN KEY (`id_biro`) REFERENCES `biro` (`id_biro`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `surat_masuk_ibfk_2` FOREIGN KEY (`id_mahasiswa`) REFERENCES `mahasiswa` (`id_mahasiswa`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
