-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 30, 2024 at 09:45 PM
-- Server version: 8.0.30
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rumahbaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'test', 'test@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$9D0avxZcOny66XkcJ0C5zA$DakYxQf1IDFsRmxz4uYfdIqytUNGaF3SE/kGZZmZ+pc', 'admin', '2024-11-05 10:34:12', '2024-11-05 10:34:12'),
(2, 'user', 'user@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$PfU6yOSMlNTybkMKPzoQSg$wmT92yEOL+rB8qCzLxZJrX/FX3bd8DWk2kqGQpAvZuQ', 'admin', '2024-11-05 10:40:13', '2024-11-12 21:56:58'),
(3, 'admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$9VUYNIOv9+w09Xbw6xV5xA$p763o76XVCsXPnnAPB1+oSCPp1AIIuktOajF81tbDfM', 'admin', '2024-11-06 12:20:20', '2024-11-12 22:30:11');

-- --------------------------------------------------------

--
-- Table structure for table `datarecaps`
--

CREATE TABLE `datarecaps` (
  `id` int NOT NULL,
  `nomorUrut` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomorRumahPadaPeta` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `namaLengkapKK` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `usia` int NOT NULL,
  `jenisKelamin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomorKK` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomorKTP` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `asalKTP` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlahKKDalamRumah` int NOT NULL,
  `jumlahPenghuni` int NOT NULL,
  `alamatRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `desaKelurahan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pendidikanTerakhir` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fungsiBangunan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `penghasilanBulan` int NOT NULL,
  `statusKepemilikanRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `asetRumahDiTempatLain` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `statusKepemilikanTanah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `asetTanahDiTempatLain` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sumberPenerangan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dayaListrik` int NOT NULL,
  `bantuanPerumahan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `modelRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pondasi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rangkaAtap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `balok` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sloof` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pintuJendelaKonsen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ventilasi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialLantaiTerluas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kondisiLantai` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialDindingTerluas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kondisiDinding` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialPenutupAtapTerluas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kondisiPenutupAtap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `luasRumah` int NOT NULL,
  `luasTanah` int NOT NULL,
  `buanganAirLimbahRumahTangga` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `saranaPengelolaanLimbahCair` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pemiliharaanSaranaPengelolaanLimbahCair` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jenisTempatPembuanganAirTinja` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kepemilikanKamarMandiDanJamban` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlahJamban` int NOT NULL,
  `jenisKloset` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jenisTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alasTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lubangPenyedotan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `posisiTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jarakTangkiSeptikDenganSumberAir` int NOT NULL,
  `sumberAirMinum` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `titikKoordinatRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `manualTitikKoordinatRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `tanggalPendataan` datetime NOT NULL,
  `adminId` int NOT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` int NOT NULL,
  `questionnaireId` int NOT NULL,
  `foto_rumah` text COLLATE utf8mb4_general_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`id`, `questionnaireId`, `foto_rumah`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'images/1_1731835294516.png', '2024-11-07 22:53:28', '2024-11-17 17:21:34'),
(2, 13, 'images/13_1731039361610.jpeg', '2024-11-08 11:16:01', '2024-11-08 11:16:01'),
(3, 8, 'images/8_1731039446881.jpeg', '2024-11-08 11:17:26', '2024-11-08 11:17:26'),
(4, 14, 'images/14_1731046846185.webp', '2024-11-08 13:20:46', '2024-11-08 13:20:46'),
(5, 16, 'images/16_1731054375531.jpeg', '2024-11-08 15:26:15', '2024-11-08 15:26:15'),
(6, 15, 'images/15_1731061841433.jpg', '2024-11-08 17:30:41', '2024-11-08 17:30:41'),
(7, 1, 'images/1_1731834989299.png', '2024-11-17 17:16:29', '2024-11-17 17:16:29'),
(8, 9, 'images/9_1731835413159.png', '2024-11-17 17:23:12', '2024-11-17 17:23:33'),
(9, 28, 'images/28_1731842508678.png', '2024-11-17 19:21:48', '2024-11-17 19:21:48');

-- --------------------------------------------------------

--
-- Table structure for table `pdfs`
--

CREATE TABLE `pdfs` (
  `id` int NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pdfs`
--

INSERT INTO `pdfs` (`id`, `filename`, `path`, `createdAt`, `updatedAt`) VALUES
(2, '1731385894047.pdf', 'uploads/pdf/1731385894047.pdf', '2024-11-12 12:31:34', '2024-11-12 12:31:34'),
(14, 'cvfarid.pdf', 'uploads/pdf/cvfarid.pdf', '2024-11-13 23:08:22', '2024-11-13 23:08:22'),
(15, 'Bp. Kris - PURWDADI [ LAYING HENS - STARTER LAYING ] - [ 12-Okt-24 - 10-31-45 AM ].pdf', 'uploads/pdf/Bp. Kris - PURWDADI [ LAYING HENS - STARTER LAYING ] - [ 12-Okt-24 - 10-31-45 AM ].pdf', '2024-11-29 09:38:35', '2024-11-29 09:38:35');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int NOT NULL,
  `statusrumah` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `nomorUrut` int NOT NULL,
  `nomorRumahPadaPeta` int NOT NULL,
  `namaLengkapKK` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `usia` int DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `jenisKelamin` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomorKK` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `nomorKTP` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `asalKTP` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlahKK` varchar(225) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `jumlahPenghuni` int DEFAULT NULL,
  `alamatRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kecamatan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `desaKelurahan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pendidikanTerakhir` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `fungsiBangunan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `penghasilan` int NOT NULL,
  `statusKepemilikanRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `asetRumahDiTempatLain` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `statusKepemilikanTanah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `asetTanahDiTempatLain` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sumberPenerangan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `dayaListrik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `bantuanPerumahan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `modelRumah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pondasi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kolom` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `rangkaAtap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `plafon` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `balok` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `sloof` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pintuJendelaKonsen` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ventilasi` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialLantaiTerluas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kondisiLantai` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialDindingTerluas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kondisiDinding` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialPenutupAtapTerluas` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kondisiPenutupAtap` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `luasRumah` int DEFAULT NULL,
  `luasTanah` int NOT NULL,
  `buanganAirLimbahRumahTangga` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `saranaPengelolaanLimbahCair` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `pemiliharaanSaranaPengelolaanLimbah` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jenisTempatPembuanganAirTinja` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `kepemilikanKamarMandiDanJamban` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jumlahJamban` int NOT NULL,
  `jenisKloset` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jenisTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `materialTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `alasTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `lubangPenyedotan` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `posisiTangkiSeptik` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `jarakTangkiSeptikDenganSumberAir` int NOT NULL,
  `sumberAirMinum` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `titikKoordinatRumah` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `manualTitikKoordinatRumah` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tanggalPendataan` date DEFAULT NULL,
  `AdminId` int NOT NULL,
  `score` int DEFAULT NULL,
  `kategori` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `statusrumah`, `nomorUrut`, `nomorRumahPadaPeta`, `namaLengkapKK`, `usia`, `tanggallahir`, `jenisKelamin`, `nomorKK`, `nomorKTP`, `asalKTP`, `jumlahKK`, `jumlahPenghuni`, `alamatRumah`, `kecamatan`, `desaKelurahan`, `pendidikanTerakhir`, `pekerjaan`, `fungsiBangunan`, `penghasilan`, `statusKepemilikanRumah`, `asetRumahDiTempatLain`, `statusKepemilikanTanah`, `asetTanahDiTempatLain`, `sumberPenerangan`, `dayaListrik`, `bantuanPerumahan`, `modelRumah`, `pondasi`, `kolom`, `rangkaAtap`, `plafon`, `balok`, `sloof`, `pintuJendelaKonsen`, `ventilasi`, `materialLantaiTerluas`, `kondisiLantai`, `materialDindingTerluas`, `kondisiDinding`, `materialPenutupAtapTerluas`, `kondisiPenutupAtap`, `luasRumah`, `luasTanah`, `buanganAirLimbahRumahTangga`, `saranaPengelolaanLimbahCair`, `pemiliharaanSaranaPengelolaanLimbah`, `jenisTempatPembuanganAirTinja`, `kepemilikanKamarMandiDanJamban`, `jumlahJamban`, `jenisKloset`, `jenisTangkiSeptik`, `materialTangkiSeptik`, `alasTangkiSeptik`, `lubangPenyedotan`, `posisiTangkiSeptik`, `jarakTangkiSeptikDenganSumberAir`, `sumberAirMinum`, `titikKoordinatRumah`, `manualTitikKoordinatRumah`, `tanggalPendataan`, `AdminId`, `score`, `kategori`) VALUES
(1, 'Tidak Berpenghuni', 1, 2, 'test map update admnin update', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Maluk', 'Maluk', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0582272, 110.42816', '', '2024-11-07', 1, 3, 'Rumah Layak Huni');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('12FpvMXFclQ0cCVWZUtvvlnGsYAcB2cQ', '2024-12-01 04:11:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:11:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:11:13', '2024-11-30 04:11:13'),
('1It5LQ_7Kz_Xyhaj-82FUHFEdtOsWpi_', '2024-12-01 02:27:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:27:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:27:07', '2024-11-30 02:27:07');

ALTER TABLE `datarecaps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`adminId`);

--
-- Indexes for table `fotos`
--
ALTER TABLE `fotos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `QuestionnaireId` (`questionnaireId`);

--
-- Indexes for table `pdfs`
--
ALTER TABLE `pdfs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adminId` (`AdminId`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `datarecaps`
--
ALTER TABLE `datarecaps`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `datarecaps`
--
ALTER TABLE `datarecaps`
  ADD CONSTRAINT `Datarecaps_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `admins` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`questionnaireId`) REFERENCES `questionnaire` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD CONSTRAINT `questionnaire_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `admins` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
