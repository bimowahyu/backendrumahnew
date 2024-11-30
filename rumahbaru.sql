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
(2, 'user', 'surveyors@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$PfU6yOSMlNTybkMKPzoQSg$wmT92yEOL+rB8qCzLxZJrX/FX3bd8DWk2kqGQpAvZuQ', 'surveyor', '2024-11-05 10:40:13', '2024-11-12 21:56:58'),
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
(1, 'Tidak Berpenghuni', 1, 2, 'test map update admnin update', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Maluk', 'Maluk', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0582272, 110.42816', '', '2024-11-07', 1, 3, 'Rumah Layak Huni'),
(8, 'Tidak Berpenghuni', 1, 123, 'John Doe', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-6.200000,106.816666', 'Dapat Diubah', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(9, 'Tidak Berpenghuni', 1, 123, 'John Doe update upload', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0051546, 110.4381371', '-7.0148528, 110.4445564', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(10, 'Tidak Berpenghuni', 1, 1, 'test frontend', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Brang Ene', 'Mataiyang', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '', '-7.0148528,110.4445564', '2024-11-06', 1, 3, 'Rumah Layak Huni'),
(11, 'Tidak Berpenghuni', 1, 123, 'John Doe', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-6.200000,106.816666', 'Dapat Diubah', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(12, 'Tidak Berpenghuni', 1, 123, 'koordinat', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '', '-7.0067839,110.3198436', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(13, 'Tidak Berpenghuni', 1, 1, 'test frontend', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Brang Ene', 'Mataiyang', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 3, 'Rumah Layak Huni'),
(14, 'Tidak Berpenghuni', 99, 10, 'test update by user', 24, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Tanjung Priok', 'Brang Ene', 'Mujahidin', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0051546, 110.4381371', '', '2024-11-08', 2, 3, 'Rumah Layak Huni'),
(15, 'Tidak Berpenghuni', 12, 12, 'test all', 12, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Poto Tano', 'Kiantar', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0582272, 110.42816', '', '2024-11-08', 2, 3, 'Rumah Layak Huni'),
(16, 'Berpenghuni', 13, 13, 'test baru all lagi', 33, '1991-05-17', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', '4', 12, 'Tanjung Priok', 'Maluk', 'Benete', 'D4/S1', 'BPD', 'Rumah Tinggal/Hunian', 3400000, 'Milik Sendiri', 'Tidak Ada', 'Bukan Milik Sendiri', 'Ada', 'PLN dengan Meteran', '2200', 'Pernah, <10 Tahun', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Rabat ', 'Layak', 'Tembok Plesteran', 'Layak', 'Multiroof', 'Layak', 100, 140, 'Diresapkan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Dinding Beton', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'PDAM', '', '-6.963840, 110.525946', '2024-11-08', 2, 3, 'Rumah Layak Huni'),
(17, 'Tidak Berpenghuni', 1, 123, 'John Doe', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-6.200000,106.816666', 'Dapat Diubah', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(18, 'Tidak Berpenghuni', 1, 123, 'John Doe update lagi okey', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0549504, 110.4248832', '', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(19, 'Tidak Berpenghuni', 1, 1, 'test frontend', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Brang Ene', 'Mataiyang', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 3, 'Rumah Layak Huni'),
(26, 'Tidak Berpenghuni', 1, 123, 'upload score otomatis', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-6.200000,106.816666', 'Dapat Diubah', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(27, 'Tidak Berpenghuni', 1, 123, 'upload kategori otomatis update new', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-', '-7.115142, 109.951829', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(28, 'Tidak Berpenghuni', 1, 1, 'upload otomatis ', 0, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'test', 'Brang Ene', 'Mataiyang', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 3, 'Rumah Layak Huni'),
(29, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, NULL, 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', '1', 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'Tidak Berpenghuni', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(30, 'Berpenghuni', 1, 123, 'Test', 35, NULL, 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', '1', 4, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', 'Sarjana', 'Karyawan Swasta', 'Tempat Tinggal', 10000000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'Listrik', '1300', 'Tidak', 'Minimalis', 'Beton', 'Beton', 'Besi', 'Gypsum', 'Beton', 'Beton', 'Kayu', 'Ada', 'Keramik', 'Baik', 'Batu Bata', 'Baik', 'Genteng', 'Baik', 100, 120, 'Sistem Pipa', 'Kanal', 'Rutin', 'Septik Tank', 'Milik Sendiri', 2, 'Kloset Duduk', 'Beton', 'Beton', 'Tanah', 'Ada', 'Belakang Rumah', 10, 'PDAM', NULL, '-7.115142, 109.951829', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(31, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, NULL, 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', '4', 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni'),
(32, 'Berpenghuni', 1, 123, 'John Doe', 21, '2003-08-17', 'Laki-laki', '1234567890', '0987654321', 'Jakarta', '1', 4, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', 'Sarjana', 'Karyawan Swasta', 'Tempat Tinggal', 10000000, 'Milik Sendiri', '0', 'Milik Sendiri', '0', 'Listrik', '1300', 'Tidak', 'Minimalis', 'Beton', 'Beton', 'Besi', 'Gypsum', 'Beton', 'Beton', 'Kayu', 'Ada', 'Keramik', 'Baik', 'Batu Bata', 'Baik', 'Genteng', 'Baik', 100, 120, 'Sistem Pipa', 'Kanal', 'Rutin', 'Septik Tank', 'Milik Sendiri', 2, 'Kloset Duduk', 'Beton', 'Beton', 'Tanah', 'Ada', 'Belakang Rumah', 10, 'PDAM', '-', '-7.115142, 109.951829', '2024-11-11', 1, 3, 'Rumah Layak Huni'),
(33, 'Berpenghuni', 99, 99, 'Test form baru', 23, '2001-01-11', 'Laki-laki', '2222222222222222', '2222222222222222', 'KSB', '2', 8, 'Tanjung Priok Jakarta utara', 'Jereweh', 'Dasan Anyar', 'D4/S1', 'Perangkat Desa/Kelurahan', 'Rumah Tinggal/Hunian', 4300000, 'Bukan Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Ada', 'Listrik Non PLN', '2200', 'Pernah, >5 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Keramik', 'Layak', 'Tembok Plesteran', 'Tidak Layak', 'Genteng Biasa', 'Layak', 100, 140, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Tidak Terpelihara', 'Lubang Tanah', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Luar Rumah', 9, 'Mata Air', '-6.9997916, 110.4351579', '', '2024-11-11', 2, 34, 'Rumah Layak Huni'),
(34, 'Berpenghuni', 12, 12, 'update 13/11', 23, '2001-01-01', 'Laki-laki', '0000000000000000', '0000000000000000', 'KSB', '1', 3, 'testrevisi', 'Brang Rea', 'Moteng', 'SMP/Sederajat', 'Tidak Bekerja', 'Rumah Toko (RUKO)', 4000000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '2200', 'Pernah, <5 Tahun', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Tidak Layak', 'Tanah', 'Layak', 'Kalsiplank', 'Layak', 'Multiroof', 'Layak', 60, 100, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Tidak Terpelihara', 'Tangki Septik', 'Bersama/MCK Komunal', 1, 'Plengsengan', 'Pabrikasi', 'Fiber', 'Kedap', 'Tidak Ada', 'Dalam Rumah', 9, 'Air Hujan', '-7.0385664, 110.42816', '', '2024-11-11', 3, 24, 'Rumah Layak Huni'),
(35, 'Tidak Berpenghuni', 123, 123, 'test baru all lagi revisi', 116, '1908-08-07', '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'Tanjung Priok', 'Maluk', 'Mantun', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0385664, 110.42816', '', '2024-11-11', 3, 3, 'Rumah Layak Huni'),
(76, 'Tidak Berpenghuni', 11111, 11111, 'asdadada', NULL, NULL, '0', '0000000000000000', '0000000000000000', '0', '0', 0, 'adsadasd', 'Seteluk', 'Lamusung', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0051547, 110.4381371', '', '2024-11-21', 3, 3, 'Rumah Layak Huni'),
(77, 'Tidak Berpenghuni', 1, 1, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381371', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(78, 'Tidak Berpenghuni', 2, 2, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381372', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(79, 'Tidak Berpenghuni', 3, 3, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381373', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(80, 'Tidak Berpenghuni', 4, 4, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381374', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(81, 'Tidak Berpenghuni', 5, 5, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381375', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(82, 'Tidak Berpenghuni', 6, 6, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381376', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(83, 'Tidak Berpenghuni', 7, 7, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381377', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(84, 'Tidak Berpenghuni', 8, 8, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381378', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(85, 'Tidak Berpenghuni', 9, 9, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381379', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(86, 'Tidak Berpenghuni', 10, 10, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381380', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(87, 'Tidak Berpenghuni', 11, 11, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381381', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(88, 'Tidak Berpenghuni', 12, 12, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381382', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(89, 'Tidak Berpenghuni', 13, 13, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381383', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(90, 'Tidak Berpenghuni', 14, 14, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381384', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(91, 'Tidak Berpenghuni', 15, 15, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381385', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(92, 'Tidak Berpenghuni', 16, 16, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381386', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(93, 'Tidak Berpenghuni', 17, 17, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381387', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(94, 'Tidak Berpenghuni', 18, 18, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381388', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(95, 'Tidak Berpenghuni', 19, 19, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381389', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(96, 'Tidak Berpenghuni', 20, 20, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381390', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(97, 'Tidak Berpenghuni', 21, 21, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381391', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(98, 'Tidak Berpenghuni', 22, 22, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381392', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(99, 'Tidak Berpenghuni', 23, 23, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381393', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(100, 'Tidak Berpenghuni', 24, 24, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381394', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(101, 'Tidak Berpenghuni', 25, 25, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381395', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(102, 'Tidak Berpenghuni', 26, 26, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381396', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(103, 'Tidak Berpenghuni', 27, 27, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381397', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(104, 'Tidak Berpenghuni', 28, 28, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381398', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(105, 'Tidak Berpenghuni', 29, 29, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381399', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(106, 'Tidak Berpenghuni', 30, 30, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381400', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(107, 'Tidak Berpenghuni', 31, 31, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381401', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(108, 'Tidak Berpenghuni', 32, 32, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381402', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(109, 'Tidak Berpenghuni', 33, 33, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381403', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(110, 'Tidak Berpenghuni', 34, 34, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381404', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(111, 'Tidak Berpenghuni', 35, 35, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381405', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(112, 'Tidak Berpenghuni', 36, 36, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381406', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(113, 'Tidak Berpenghuni', 37, 37, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381407', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(114, 'Tidak Berpenghuni', 38, 38, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381408', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(115, 'Tidak Berpenghuni', 39, 39, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381409', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(116, 'Tidak Berpenghuni', 40, 40, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381410', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(117, 'Tidak Berpenghuni', 41, 41, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381411', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(118, 'Tidak Berpenghuni', 42, 42, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381412', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(119, 'Tidak Berpenghuni', 43, 43, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381413', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(120, 'Tidak Berpenghuni', 44, 44, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381414', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(121, 'Tidak Berpenghuni', 45, 45, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381415', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(122, 'Tidak Berpenghuni', 46, 46, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381416', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(123, 'Tidak Berpenghuni', 47, 47, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381417', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(124, 'Tidak Berpenghuni', 48, 48, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381418', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(125, 'Tidak Berpenghuni', 49, 49, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381419', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(126, 'Tidak Berpenghuni', 50, 50, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381420', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(127, 'Tidak Berpenghuni', 51, 51, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381421', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(128, 'Tidak Berpenghuni', 52, 52, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381422', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(129, 'Tidak Berpenghuni', 53, 53, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381423', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(130, 'Tidak Berpenghuni', 54, 54, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381424', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(131, 'Tidak Berpenghuni', 55, 55, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381425', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(132, 'Tidak Berpenghuni', 56, 56, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381426', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(133, 'Tidak Berpenghuni', 57, 57, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381427', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(134, 'Tidak Berpenghuni', 58, 58, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381428', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(135, 'Tidak Berpenghuni', 59, 59, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381429', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(136, 'Tidak Berpenghuni', 60, 60, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381430', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(137, 'Tidak Berpenghuni', 61, 61, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381431', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(138, 'Tidak Berpenghuni', 62, 62, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381432', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(139, 'Tidak Berpenghuni', 63, 63, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381433', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(140, 'Tidak Berpenghuni', 64, 64, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381434', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(141, 'Tidak Berpenghuni', 65, 65, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381435', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(142, 'Tidak Berpenghuni', 66, 66, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381436', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(143, 'Tidak Berpenghuni', 67, 67, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381437', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(144, 'Tidak Berpenghuni', 68, 68, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381438', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(145, 'Tidak Berpenghuni', 69, 69, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381439', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(146, 'Tidak Berpenghuni', 70, 70, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381440', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(147, 'Tidak Berpenghuni', 71, 71, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381441', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(148, 'Tidak Berpenghuni', 72, 72, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381442', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(149, 'Tidak Berpenghuni', 73, 73, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381443', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(150, 'Tidak Berpenghuni', 74, 74, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381444', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(151, 'Tidak Berpenghuni', 75, 75, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381445', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(152, 'Tidak Berpenghuni', 76, 76, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381446', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(153, 'Tidak Berpenghuni', 77, 77, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381447', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(154, 'Tidak Berpenghuni', 78, 78, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381448', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(155, 'Tidak Berpenghuni', 79, 79, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381449', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(156, 'Tidak Berpenghuni', 80, 80, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381450', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(157, 'Tidak Berpenghuni', 81, 81, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381451', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(158, 'Tidak Berpenghuni', 82, 82, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381452', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(159, 'Tidak Berpenghuni', 83, 83, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381453', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(160, 'Tidak Berpenghuni', 84, 84, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381454', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(161, 'Tidak Berpenghuni', 85, 85, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381455', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(162, 'Tidak Berpenghuni', 86, 86, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381456', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(163, 'Tidak Berpenghuni', 87, 87, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381457', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(164, 'Tidak Berpenghuni', 88, 88, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381458', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(165, 'Tidak Berpenghuni', 89, 89, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381459', '1970-01-01', 1, 3, 'Rumah Layak Huni');
INSERT INTO `questionnaire` (`id`, `statusrumah`, `nomorUrut`, `nomorRumahPadaPeta`, `namaLengkapKK`, `usia`, `tanggallahir`, `jenisKelamin`, `nomorKK`, `nomorKTP`, `asalKTP`, `jumlahKK`, `jumlahPenghuni`, `alamatRumah`, `kecamatan`, `desaKelurahan`, `pendidikanTerakhir`, `pekerjaan`, `fungsiBangunan`, `penghasilan`, `statusKepemilikanRumah`, `asetRumahDiTempatLain`, `statusKepemilikanTanah`, `asetTanahDiTempatLain`, `sumberPenerangan`, `dayaListrik`, `bantuanPerumahan`, `modelRumah`, `pondasi`, `kolom`, `rangkaAtap`, `plafon`, `balok`, `sloof`, `pintuJendelaKonsen`, `ventilasi`, `materialLantaiTerluas`, `kondisiLantai`, `materialDindingTerluas`, `kondisiDinding`, `materialPenutupAtapTerluas`, `kondisiPenutupAtap`, `luasRumah`, `luasTanah`, `buanganAirLimbahRumahTangga`, `saranaPengelolaanLimbahCair`, `pemiliharaanSaranaPengelolaanLimbah`, `jenisTempatPembuanganAirTinja`, `kepemilikanKamarMandiDanJamban`, `jumlahJamban`, `jenisKloset`, `jenisTangkiSeptik`, `materialTangkiSeptik`, `alasTangkiSeptik`, `lubangPenyedotan`, `posisiTangkiSeptik`, `jarakTangkiSeptikDenganSumberAir`, `sumberAirMinum`, `titikKoordinatRumah`, `manualTitikKoordinatRumah`, `tanggalPendataan`, `AdminId`, `score`, `kategori`) VALUES
(166, 'Tidak Berpenghuni', 90, 90, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381460', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(167, 'Tidak Berpenghuni', 91, 91, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381461', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(168, 'Tidak Berpenghuni', 92, 92, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381462', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(169, 'Tidak Berpenghuni', 93, 93, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381463', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(170, 'Tidak Berpenghuni', 94, 94, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381464', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(171, 'Tidak Berpenghuni', 95, 95, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381465', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(172, 'Tidak Berpenghuni', 96, 96, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381466', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(173, 'Tidak Berpenghuni', 97, 97, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381467', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(174, 'Tidak Berpenghuni', 98, 98, 'test server', 0, NULL, 'Pilih', '0', '0', '0', '0', 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381468', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(175, 'Berpenghuni', 99, 99, 'test server update berpenghuni', 26, '1998-10-24', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', '1', 2, 'test', 'Sekongkang', 'Sekongkang Bawah', 'D4/S1', 'Perangkat Desa/Kelurahan', 'Rumah Tinggal/Hunian', 4300000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Permanen', 'Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Papan Kayu', 'Layak', 'Genteng Kramik', 'Layak', 120, 200, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'PDAM', '-7.0068664, 110.4753775', '', '2024-11-22', 1, 8, 'Rumah Layak Huni');

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
('1It5LQ_7Kz_Xyhaj-82FUHFEdtOsWpi_', '2024-12-01 02:27:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:27:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:27:07', '2024-11-30 02:27:07'),
('3CjNtGeaIgNlppMYU-0mkABl7Zq3v3zg', '2024-12-01 04:14:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:14:38 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:14:38', '2024-11-30 04:14:38'),
('3fq2XX8-lsE6jT-RmSRtdLxsCz0_JW_z', '2024-12-01 04:26:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:26:56 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:26:56', '2024-11-30 04:26:56'),
('3v67c0yyDZrmdTfGqt7rQn2_S3TCSquE', '2024-12-01 04:15:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:15:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:15:12', '2024-11-30 04:15:12'),
('41qMWgVwsvA1xye9F23iTrorPVHnZGgx', '2024-12-01 02:49:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:49:41 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:49:41', '2024-11-30 02:49:41'),
('4aEghVxge0tTxbYoqniV-dW134Xbo-i2', '2024-12-01 03:04:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 02:04:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 03:04:02', '2024-11-30 03:04:02'),
('70KMRl0P37mgkCX-7XExwAZ0blok3gLq', '2024-12-01 04:07:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:07:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:07:45', '2024-11-30 04:07:45'),
('7YaXLNc8fhsqFy82GjZ77mxp4k5UOAmC', '2024-12-01 04:29:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:29:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:29:13', '2024-11-30 04:29:13'),
('8Vml3nF7Nr0_Yk1h8V-yuKuvDEXENxCw', '2024-12-01 04:45:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:45:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:45:26', '2024-11-30 04:45:26'),
('9wN2MlnOF4zdkDz_2wYbEkW0ytIRRmIn', '2024-12-01 04:56:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:56:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:56:30', '2024-11-30 04:56:30'),
('aUciyKn2D-7iGhbD4UqseTYfyGccDeUu', '2024-12-01 04:15:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:15:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:15:31', '2024-11-30 04:15:31'),
('AwQn-sB4FmG5lveElz5YAveB2y7CXkE1', '2024-12-01 02:27:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:27:59 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:27:59', '2024-11-30 02:27:59'),
('bJPjNJ89NqY4VeBJaZmEZZDAoUM673Jb', '2024-12-01 16:20:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 15:20:58 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 16:20:58', '2024-11-30 16:20:58'),
('BtpBu3rf67qFueN0DehfKgGxSy2_HSD6', '2024-12-01 02:29:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:29:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:29:45', '2024-11-30 02:29:45'),
('CmxIxDdIPhk0MlWTqdsV1K9Q1a9oKd_E', '2024-12-01 03:05:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 02:05:00 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 03:05:00', '2024-11-30 03:05:00'),
('cuESryKaEr6wWo8vjjkeRbPINKCJHbGT', '2024-12-01 16:21:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 15:21:00 GMT+0700 (Western Indonesia Time)\",\"adminId\":3,\"adminRole\":\"admin\"}', '2024-11-29 09:38:43', '2024-11-30 16:21:00'),
('CUtS7s9B3Bj8v9TvofC_2qrSoGqbJMBz', '2024-12-01 04:56:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:56:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:56:35', '2024-11-30 04:56:35'),
('D93vKXh0cRbKY5_3RsqDgmGjN_jiBWuZ', '2024-12-01 02:22:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:22:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:22:27', '2024-11-30 02:22:27'),
('DiSennIknqyEUHPTARUrFApyg-Ep2EQk', '2024-12-01 04:29:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:29:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:29:19', '2024-11-30 04:29:19'),
('ecv2VmWWc_i9-riq_mVU_UqQagKO4t7u', '2024-12-01 04:26:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:26:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:26:26', '2024-11-30 04:26:26'),
('eGomqsW53M_otN3295hq-1UVJot-DFiq', '2024-12-01 04:28:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:28:57 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:28:57', '2024-11-30 04:28:57'),
('feRyOLU8XFidudxu3BNaWSNo-etU4D5s', '2024-12-01 04:17:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:17:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:17:09', '2024-11-30 04:17:09'),
('Fj2_3iOEBWxxM9IZ0SW7C2Hc6H4a57wU', '2024-12-01 04:27:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:27:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:27:18', '2024-11-30 04:27:18'),
('fXlpgHTlXXbFIzVDXRNJmJVEMiaiVfvS', '2024-12-01 02:05:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:05:41 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:05:41', '2024-11-30 02:05:41'),
('GEfd3xgfCfMTjT-akLP6X_IEAuL-z0yI', '2024-12-01 02:06:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:06:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:06:22', '2024-11-30 02:06:22'),
('gEZY_BsipJH_MngmFRYNnmmHIx2RXqxY', '2024-12-01 02:11:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:11:59 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:11:59', '2024-11-30 02:11:59'),
('jNPVbnTja5EgM-iG4VWSFOD7TNU39ALr', '2024-12-01 03:04:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 02:04:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 03:04:24', '2024-11-30 03:04:24'),
('jx85f1QkHOh6zlOI0AP6ErZIst7y03ig', '2024-12-01 04:45:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:45:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:45:30', '2024-11-30 04:45:30'),
('kxfaAwh5WVqqo_PrIGBGeSbrk74mApg7', '2024-12-01 04:25:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:25:54 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:25:54', '2024-11-30 04:25:54'),
('RE27bUz6NgLzhMH-Di-X1yNyalM8HeZu', '2024-12-01 02:15:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:15:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:15:27', '2024-11-30 02:15:27'),
('rGQ0v3lC-1o6Rg-kHvvbJcSQGxECT8_2', '2024-12-01 04:25:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:25:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:25:51', '2024-11-30 04:25:51'),
('rkfuZjpzgi30dc0ZNTfpCEnoXYoiRpBc', '2024-12-01 02:05:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:05:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:05:39', '2024-11-30 02:05:39'),
('vYgQYclWBsrNifmpogoM-REw1azvgf56', '2024-12-01 04:16:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:16:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:16:39', '2024-11-30 04:16:39'),
('Xcat9aiSWxdEZyAuUm0vDqS_dcL6wnTO', '2024-12-01 04:14:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:14:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:14:51', '2024-11-30 04:14:51'),
('XhUkpsmVv9j0yZPYoSb9Yygp9y1gYmE3', '2024-12-01 02:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 01:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 02:30:09', '2024-11-30 02:30:09'),
('_eZr2jUVnUWRzzjdu7BJV41F4r8MERZ9', '2024-12-01 04:06:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:06:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:06:31', '2024-11-30 04:06:31'),
('_isqmEEQMTpmz8AVPmONUwbFpgltTuAO', '2024-12-01 04:28:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Sat Nov 30 2024 03:28:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-30 04:28:46', '2024-11-30 04:28:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `datarecaps`
--
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
