-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 27, 2024 at 02:47 PM
-- Server version: 10.6.17-MariaDB-cll-lve
-- PHP Version: 8.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipakura_rumah`
--

-- --------------------------------------------------------

--
-- Table structure for table `Admins`
--

CREATE TABLE `Admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Admins`
--

INSERT INTO `Admins` (`id`, `username`, `email`, `password`, `role`, `createdAt`, `updatedAt`) VALUES
(1, 'test', 'test@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$9D0avxZcOny66XkcJ0C5zA$DakYxQf1IDFsRmxz4uYfdIqytUNGaF3SE/kGZZmZ+pc', 'admin', '2024-11-05 10:34:12', '2024-11-05 10:34:12'),
(2, 'user', 'surveyors@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$e2NNbHOe7F8qDD1NjvuWwg$b7NWYaDpynTb5e/NffGHLic+1uptlUOcb3reMA/WKCM', 'surveyor', '2024-11-05 10:40:13', '2024-11-05 10:40:13'),
(3, 'admin', 'admin@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$6kTvOlCEg8lfPPPT8YOfNA$abzJIQyN1qGWbi6pljHLSDhtOBXKyJhCtMch9Q2HK8Q', 'admin', '2024-11-06 12:20:20', '2024-11-06 12:20:20'),
(4, 'baru', 'baru@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$H/DwptUX/tTyWM6l6cmMaA$IFnIA38OBo0+lxmiDeqO7AchMry00CHyEAanZYtZMMg', 'surveyor', '2024-11-06 19:09:57', '2024-11-06 19:09:57'),
(5, 'buatbaru', 'buatbaru@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$YYGtiT/q0J/ZMGanC7TvgQ$haGE6+rq0GH5iFfAoOCAYExQTdnmL0TAHvxDAEswhu4', 'surveyor', '2024-11-06 22:06:40', '2024-11-06 22:06:40'),
(6, 'buatbaru123', 'bari@gmaiil.com', '$argon2id$v=19$m=65536,t=3,p=4$zAHfgkBZo1KAz78NNj60kA$pd27FcoD8hJcN4nMXVf2TPJJkyRmUdYzV4pV7A3GJ6w', 'surveyor', '2024-11-10 07:05:11', '2024-11-10 07:05:11'),
(7, 'lantang', 'lantang@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$0c9TQQNhUPShzzs/SgpzDQ$e9BC3BzjrCyltVPql03N12Qo8Au+IhsMzY3pA0vqWYY', 'surveyor', '2024-11-10 07:19:40', '2024-11-10 07:19:40'),
(8, 'irfan', 'irfan@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$NkPBRDs8514Jj6s5AXPWmg$Tn6if4r2zy1/wDBuZMGG9jzDq0yx+y46pmD8JhsLtTo', 'surveyor', '2024-11-12 09:41:48', '2024-11-12 09:41:48'),
(9, 'Surveyor1', 'surveyor1@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$5iCbQmMXou5PLrAtEbEjsg$wDuYoRJI+8d1upDVT7/Q3FbYJjuYVAQRW2Lk6Hb/9fI', 'surveyor', '2024-11-22 09:58:24', '2024-11-22 09:58:24');

-- --------------------------------------------------------

--
-- Table structure for table `Datarecaps`
--

CREATE TABLE `Datarecaps` (
  `id` int(11) NOT NULL,
  `nomorUrut` varchar(255) NOT NULL,
  `nomorRumahPadaPeta` varchar(255) NOT NULL,
  `namaLengkapKK` varchar(255) NOT NULL,
  `usia` int(11) NOT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `nomorKK` varchar(255) NOT NULL,
  `nomorKTP` varchar(255) NOT NULL,
  `asalKTP` varchar(255) NOT NULL,
  `jumlahKKDalamRumah` int(11) NOT NULL,
  `jumlahPenghuni` int(11) NOT NULL,
  `alamatRumah` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `desaKelurahan` varchar(255) NOT NULL,
  `pendidikanTerakhir` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `fungsiBangunan` varchar(255) NOT NULL,
  `penghasilanBulan` int(11) NOT NULL,
  `statusKepemilikanRumah` varchar(255) NOT NULL,
  `asetRumahDiTempatLain` varchar(255) NOT NULL,
  `statusKepemilikanTanah` varchar(255) NOT NULL,
  `asetTanahDiTempatLain` varchar(255) NOT NULL,
  `sumberPenerangan` varchar(255) NOT NULL,
  `dayaListrik` int(11) NOT NULL,
  `bantuanPerumahan` varchar(255) NOT NULL,
  `modelRumah` varchar(255) NOT NULL,
  `pondasi` varchar(255) NOT NULL,
  `kolom` varchar(255) NOT NULL,
  `rangkaAtap` varchar(255) NOT NULL,
  `plafon` varchar(255) NOT NULL,
  `balok` varchar(255) NOT NULL,
  `sloof` varchar(255) NOT NULL,
  `pintuJendelaKonsen` varchar(255) NOT NULL,
  `ventilasi` varchar(255) NOT NULL,
  `materialLantaiTerluas` varchar(255) NOT NULL,
  `kondisiLantai` varchar(255) NOT NULL,
  `materialDindingTerluas` varchar(255) NOT NULL,
  `kondisiDinding` varchar(255) NOT NULL,
  `materialPenutupAtapTerluas` varchar(255) NOT NULL,
  `kondisiPenutupAtap` varchar(255) NOT NULL,
  `luasRumah` int(11) NOT NULL,
  `luasTanah` int(11) NOT NULL,
  `buanganAirLimbahRumahTangga` varchar(255) NOT NULL,
  `saranaPengelolaanLimbahCair` varchar(255) NOT NULL,
  `pemiliharaanSaranaPengelolaanLimbahCair` varchar(255) NOT NULL,
  `jenisTempatPembuanganAirTinja` varchar(255) NOT NULL,
  `kepemilikanKamarMandiDanJamban` varchar(255) NOT NULL,
  `jumlahJamban` int(11) NOT NULL,
  `jenisKloset` varchar(255) NOT NULL,
  `jenisTangkiSeptik` varchar(255) NOT NULL,
  `materialTangkiSeptik` varchar(255) NOT NULL,
  `alasTangkiSeptik` varchar(255) NOT NULL,
  `lubangPenyedotan` varchar(255) NOT NULL,
  `posisiTangkiSeptik` varchar(255) NOT NULL,
  `jarakTangkiSeptikDenganSumberAir` int(11) NOT NULL,
  `sumberAirMinum` varchar(255) NOT NULL,
  `titikKoordinatRumah` varchar(255) NOT NULL,
  `manualTitikKoordinatRumah` varchar(255) NOT NULL,
  `tanggalPendataan` datetime NOT NULL,
  `adminId` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `fotos`
--

CREATE TABLE `fotos` (
  `id` int(11) NOT NULL,
  `questionnaireId` int(11) NOT NULL,
  `foto_rumah` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fotos`
--

INSERT INTO `fotos` (`id`, `questionnaireId`, `foto_rumah`, `createdAt`, `updatedAt`) VALUES
(11, 35, 'images/35_1731209115756.png', '2024-11-10 11:25:15', '2024-11-10 11:25:15'),
(13, 43, 'images/43_1731408348632.webp', '2024-11-12 18:45:48', '2024-11-12 18:45:48'),
(14, 60, 'images/60_1731458914922.png', '2024-11-13 08:48:34', '2024-11-13 08:48:34'),
(16, 61, 'images/61_1731500196665.png', '2024-11-13 20:16:36', '2024-11-13 20:16:36'),
(17, 66, 'images/66_1731544405403.png', '2024-11-14 08:33:25', '2024-11-14 08:33:25'),
(18, 65, 'images/65_1731841285371.png', '2024-11-17 14:34:20', '2024-11-17 19:01:25'),
(19, 58, 'images/58_1731900836552.png', '2024-11-18 11:33:56', '2024-11-18 11:33:56'),
(20, 167, 'images/167_1732418419734.png', '2024-11-24 11:20:19', '2024-11-24 11:20:19');

-- --------------------------------------------------------

--
-- Table structure for table `pdfs`
--

CREATE TABLE `pdfs` (
  `id` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `path` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pdfs`
--

INSERT INTO `pdfs` (`id`, `filename`, `path`, `createdAt`, `updatedAt`) VALUES
(1, '1731387919478.pdf', 'uploads/pdf/1731387919478.pdf', '2024-11-12 13:05:19', '2024-11-12 13:05:19'),
(2, '1731408031899.pdf', 'uploads/pdf/1731408031899.pdf', '2024-11-12 18:40:31', '2024-11-12 18:40:31'),
(3, '1731500347233.pdf', 'uploads/pdf/1731500347233.pdf', '2024-11-13 20:19:07', '2024-11-13 20:19:07');

-- --------------------------------------------------------

--
-- Table structure for table `questionnaire`
--

CREATE TABLE `questionnaire` (
  `id` int(11) NOT NULL,
  `statusrumah` varchar(255) DEFAULT NULL,
  `nomorUrut` int(11) NOT NULL,
  `nomorRumahPadaPeta` int(11) NOT NULL,
  `namaLengkapKK` varchar(255) NOT NULL,
  `usia` int(11) DEFAULT NULL,
  `tanggallahir` date DEFAULT NULL,
  `jenisKelamin` varchar(255) NOT NULL,
  `nomorKK` varchar(255) NOT NULL,
  `nomorKTP` varchar(255) DEFAULT NULL,
  `asalKTP` varchar(255) NOT NULL,
  `jumlahKK` int(11) DEFAULT NULL,
  `jumlahPenghuni` int(11) DEFAULT NULL,
  `alamatRumah` varchar(255) NOT NULL,
  `kecamatan` varchar(255) NOT NULL,
  `desaKelurahan` varchar(255) NOT NULL,
  `pendidikanTerakhir` varchar(255) NOT NULL,
  `pekerjaan` varchar(255) NOT NULL,
  `fungsiBangunan` varchar(255) NOT NULL,
  `penghasilan` int(11) NOT NULL,
  `statusKepemilikanRumah` varchar(255) NOT NULL,
  `asetRumahDiTempatLain` varchar(255) NOT NULL,
  `statusKepemilikanTanah` varchar(255) NOT NULL,
  `asetTanahDiTempatLain` varchar(255) NOT NULL,
  `sumberPenerangan` varchar(255) NOT NULL,
  `dayaListrik` varchar(255) NOT NULL,
  `bantuanPerumahan` varchar(255) NOT NULL,
  `modelRumah` varchar(255) NOT NULL,
  `pondasi` varchar(255) NOT NULL,
  `kolom` varchar(255) NOT NULL,
  `rangkaAtap` varchar(255) NOT NULL,
  `plafon` varchar(255) NOT NULL,
  `balok` varchar(255) NOT NULL,
  `sloof` varchar(255) NOT NULL,
  `pintuJendelaKonsen` varchar(255) NOT NULL,
  `ventilasi` varchar(255) NOT NULL,
  `materialLantaiTerluas` varchar(255) NOT NULL,
  `kondisiLantai` varchar(255) NOT NULL,
  `materialDindingTerluas` varchar(255) NOT NULL,
  `kondisiDinding` varchar(255) NOT NULL,
  `materialPenutupAtapTerluas` varchar(255) NOT NULL,
  `kondisiPenutupAtap` varchar(255) NOT NULL,
  `luasRumah` int(11) DEFAULT NULL,
  `luasTanah` int(11) DEFAULT NULL,
  `buanganAirLimbahRumahTangga` varchar(255) NOT NULL,
  `saranaPengelolaanLimbahCair` varchar(255) NOT NULL,
  `pemiliharaanSaranaPengelolaanLimbah` varchar(255) NOT NULL,
  `jenisTempatPembuanganAirTinja` varchar(255) NOT NULL,
  `kepemilikanKamarMandiDanJamban` varchar(255) NOT NULL,
  `jumlahJamban` int(11) DEFAULT NULL,
  `jenisKloset` varchar(255) NOT NULL,
  `jenisTangkiSeptik` varchar(255) NOT NULL,
  `materialTangkiSeptik` varchar(255) NOT NULL,
  `alasTangkiSeptik` varchar(255) NOT NULL,
  `lubangPenyedotan` varchar(255) NOT NULL,
  `posisiTangkiSeptik` varchar(255) NOT NULL,
  `jarakTangkiSeptikDenganSumberAir` int(11) NOT NULL,
  `sumberAirMinum` varchar(255) NOT NULL,
  `titikKoordinatRumah` varchar(255) DEFAULT NULL,
  `manualTitikKoordinatRumah` varchar(255) DEFAULT NULL,
  `tanggalPendataan` date DEFAULT NULL,
  `AdminId` int(11) NOT NULL,
  `score` int(11) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `questionnaire`
--

INSERT INTO `questionnaire` (`id`, `statusrumah`, `nomorUrut`, `nomorRumahPadaPeta`, `namaLengkapKK`, `usia`, `tanggallahir`, `jenisKelamin`, `nomorKK`, `nomorKTP`, `asalKTP`, `jumlahKK`, `jumlahPenghuni`, `alamatRumah`, `kecamatan`, `desaKelurahan`, `pendidikanTerakhir`, `pekerjaan`, `fungsiBangunan`, `penghasilan`, `statusKepemilikanRumah`, `asetRumahDiTempatLain`, `statusKepemilikanTanah`, `asetTanahDiTempatLain`, `sumberPenerangan`, `dayaListrik`, `bantuanPerumahan`, `modelRumah`, `pondasi`, `kolom`, `rangkaAtap`, `plafon`, `balok`, `sloof`, `pintuJendelaKonsen`, `ventilasi`, `materialLantaiTerluas`, `kondisiLantai`, `materialDindingTerluas`, `kondisiDinding`, `materialPenutupAtapTerluas`, `kondisiPenutupAtap`, `luasRumah`, `luasTanah`, `buanganAirLimbahRumahTangga`, `saranaPengelolaanLimbahCair`, `pemiliharaanSaranaPengelolaanLimbah`, `jenisTempatPembuanganAirTinja`, `kepemilikanKamarMandiDanJamban`, `jumlahJamban`, `jenisKloset`, `jenisTangkiSeptik`, `materialTangkiSeptik`, `alasTangkiSeptik`, `lubangPenyedotan`, `posisiTangkiSeptik`, `jarakTangkiSeptikDenganSumberAir`, `sumberAirMinum`, `titikKoordinatRumah`, `manualTitikKoordinatRumah`, `tanggalPendataan`, `AdminId`, `score`, `kategori`) VALUES
(35, 'Berpenghuni', 12, 12, 'Bujirdin', 55, NULL, 'Laki-laki', '5207013112740001', '5207013112740001', 'KSB', 1, 6, 'RT. 001 RW. 002', 'Maluk', '', 'SD/Sederajat', 'Pedagang', 'Rumah Tinggal/Hunian', 1500000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Tidak Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Plesteran', 'Layak', 'Spandek', 'Tidak Layak', 88, 200, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 11, 'Air Kemasan/Isi Ulang', '-8.9165731, 116.7535123', '', '2024-11-10', 7, 8, 'Rumah Layak Huni'),
(38, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, NULL, 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(40, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, NULL, 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni'),
(43, 'Berpenghuni', 1, 1, 'Kamila', 4, '2020-03-10', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 1, 3, 'Batu putih', 'Taliwang', 'Batu Putih', 'SD/Sederajat', 'Petani/Pekebun', 'Rumah Tinggal/Hunian', 1200000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Panggung', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Papan Kayu', 'Layak', 'Papan Kayu', 'Layak', 'Spandek', 'Layak', 24, 100, 'Buang Bebas', 'Berfungsi Baik', 'Tidak Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Luar Rumah', 9, 'SPAMDES', '-8.735493333333332, 116.80059333333332', '', '2024-11-12', 8, 4, 'Rumah Layak Huni'),
(44, 'Berpenghuni', 1, 123, 'update deploy', 54, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(46, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, '1970-01-01', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni'),
(47, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(54, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(56, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, '1970-01-01', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni'),
(58, 'Tidak Berpenghuni', 12, 12, 'Test update tidak berpenghuni', 23, NULL, '0', '0000000000000000', '0000000000000000', '0', 0, 0, 'Test', 'Brang Ene', 'Manemeng', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.003647, 110.4516014', '', '2024-11-12', 1, 3, 'Rumah Layak Huni'),
(60, 'Berpenghuni', 2, 2, 'TOERWANTO', 46, '1977-12-12', 'Laki-laki', '5207013112740001', '5207013112740001', 'KSB', 1, 5, 'RT. 001 RW. 002', 'Taliwang', 'Kuang', 'D3', 'ASN', 'Rumah Tinggal/Hunian', 3400000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Tidak Ada', 'PLN dengan Meteran', '1300', 'Tidak Pernah', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Plesteran', 'Layak', 'Genteng Biasa', 'Layak', 54, 300, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Luar Rumah', 11, 'Air Kemasan/Isi Ulang', '-8.7561207, 116.8534882', '', '2024-11-13', 7, 3, 'Rumah Layak Huni'),
(61, 'Berpenghuni', 3, 3, 'GILANG ANTAR NUSA', 33, '1990-12-12', 'Laki-laki', '5207013112740001', '5207013112740001', 'KSB', 2, 5, 'RT. 001 RW. 002', 'Taliwang', 'Telaga Bertong', 'D4/S1', 'Honorer', 'Rumah Tinggal/Hunian', 1000000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Tidak Ada', 'PLN dengan Meteran', '900', 'Pernah, >5 Tahun', 'Permanen', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tanah', 'Tidak Layak', 'Bedek/Anyaman Bambu', 'Tidak Layak', 'Seng', 'Tidak Layak', 30, 150, 'Buang Bebas', 'Tidak Berfungsi', 'Tidak Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Konvensional', 'Batu Bata', 'Tidak Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'Sumur/Sumur Bor', '-8.7561207, 116.8534882', '', '2024-11-13', 7, 80, 'Rumah Tidak Layak Huni'),
(62, 'Tidak Berpenghuni', 11, 11, 'Test', NULL, NULL, '0', '0000000000000000', '0000000000000000', '0', 0, 0, 'Test', 'Brang Ene', 'Manemeng', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-6.9986317, 110.434402', '', '2024-11-13', 1, 3, 'Rumah Layak Huni'),
(65, 'Tidak Berpenghuni', 122, 122, 'Bimo Wahyu Syahputro', NULL, NULL, '0', '0000000000000000', '0000000000000000', '0', 0, 0, 'Jl.Beruang Raya no 1,RT2,RW1,Gayamsari,Semarang', 'Brang Rea', 'Tepas', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-7.0036486, 110.4515986', '', '2024-11-13', 3, 3, 'Rumah Layak Huni'),
(66, 'Berpenghuni', 6, 6, 'Yan', 36, '1988-07-12', 'Laki-laki', '5207020207880002', '5207013112740001', 'KSB', 1, 4, 'RT. 001 RW. 002', 'Taliwang', 'Menala', 'D4/S1', 'ASN', 'Rumah Tinggal/Hunian', 2200000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Tidak Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Permanen', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Belum Plesteran', 'Tidak Layak', 'Spandek', 'Tidak Layak', 56, 200, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Tidak Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Luar Rumah', 11, 'Sumur/Sumur Bor', '-8.7560937, 116.8535038', '', '2024-11-14', 7, 47, 'Rumah Tidak Layak Huni'),
(67, 'Berpenghuni', 121, 121, 'Test penghasilan 0', 26, '1998-10-24', 'Perempuan', '2222222222222222', '2222222222222222', 'KSB', 2, 6, 'Jl.kesana kemari happy', 'Poto Tano', 'Kiantar', 'D4/S1', 'ASN', 'Rumah Tinggal/Hunian', 0, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '1300', 'Tidak Pernah', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Plesteran', 'Layak', 'Genteng Biasa', 'Layak', 80, 100, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Bersama/MCK Komunal', 1, 'Leher Angsa', 'Pabrikasi', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 11, 'Mata Air', '-6.9986277, 110.4344014', '', '2024-11-22', 3, 10, 'Rumah Layak Huni'),
(68, 'Tidak Berpenghuni', 1, 1, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381371', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(69, 'Tidak Berpenghuni', 2, 2, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381372', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(70, 'Tidak Berpenghuni', 3, 3, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381373', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(71, 'Tidak Berpenghuni', 4, 4, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381374', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(72, 'Tidak Berpenghuni', 5, 5, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381375', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(73, 'Tidak Berpenghuni', 6, 6, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381376', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(74, 'Tidak Berpenghuni', 7, 7, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381377', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(75, 'Tidak Berpenghuni', 8, 8, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381378', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(76, 'Tidak Berpenghuni', 9, 9, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381379', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(77, 'Tidak Berpenghuni', 10, 10, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381380', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(78, 'Tidak Berpenghuni', 11, 11, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381381', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(79, 'Tidak Berpenghuni', 12, 12, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381382', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(80, 'Tidak Berpenghuni', 13, 13, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381383', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(81, 'Tidak Berpenghuni', 14, 14, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381384', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(82, 'Tidak Berpenghuni', 15, 15, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381385', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(83, 'Tidak Berpenghuni', 16, 16, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381386', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(84, 'Tidak Berpenghuni', 17, 17, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381387', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(85, 'Tidak Berpenghuni', 18, 18, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381388', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(86, 'Tidak Berpenghuni', 19, 19, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381389', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(87, 'Tidak Berpenghuni', 20, 20, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381390', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(88, 'Tidak Berpenghuni', 21, 21, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381391', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(89, 'Tidak Berpenghuni', 22, 22, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381392', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(90, 'Tidak Berpenghuni', 23, 23, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381393', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(91, 'Tidak Berpenghuni', 24, 24, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381394', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(92, 'Tidak Berpenghuni', 25, 25, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381395', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(93, 'Tidak Berpenghuni', 26, 26, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381396', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(94, 'Tidak Berpenghuni', 27, 27, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381397', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(95, 'Tidak Berpenghuni', 28, 28, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381398', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(96, 'Tidak Berpenghuni', 29, 29, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381399', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(97, 'Tidak Berpenghuni', 30, 30, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381400', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(98, 'Tidak Berpenghuni', 31, 31, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381401', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(99, 'Tidak Berpenghuni', 32, 32, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381402', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(100, 'Tidak Berpenghuni', 33, 33, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381403', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(101, 'Tidak Berpenghuni', 34, 34, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381404', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(102, 'Tidak Berpenghuni', 35, 35, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381405', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(103, 'Tidak Berpenghuni', 36, 36, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381406', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(104, 'Tidak Berpenghuni', 37, 37, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381407', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(105, 'Tidak Berpenghuni', 38, 38, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381408', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(106, 'Tidak Berpenghuni', 39, 39, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381409', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(107, 'Tidak Berpenghuni', 40, 40, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381410', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(108, 'Tidak Berpenghuni', 41, 41, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381411', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(109, 'Tidak Berpenghuni', 42, 42, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381412', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(110, 'Tidak Berpenghuni', 43, 43, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381413', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(111, 'Tidak Berpenghuni', 44, 44, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381414', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(112, 'Tidak Berpenghuni', 45, 45, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381415', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(113, 'Tidak Berpenghuni', 46, 46, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381416', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(114, 'Tidak Berpenghuni', 47, 47, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381417', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(115, 'Tidak Berpenghuni', 48, 48, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381418', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(116, 'Tidak Berpenghuni', 49, 49, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381419', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(117, 'Tidak Berpenghuni', 50, 50, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381420', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(118, 'Tidak Berpenghuni', 51, 51, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381421', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(119, 'Tidak Berpenghuni', 52, 52, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381422', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(120, 'Tidak Berpenghuni', 53, 53, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381423', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(121, 'Tidak Berpenghuni', 54, 54, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381424', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(122, 'Tidak Berpenghuni', 55, 55, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381425', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(123, 'Tidak Berpenghuni', 56, 56, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381426', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(124, 'Tidak Berpenghuni', 57, 57, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381427', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(125, 'Tidak Berpenghuni', 58, 58, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381428', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(126, 'Tidak Berpenghuni', 59, 59, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381429', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(127, 'Tidak Berpenghuni', 60, 60, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381430', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(128, 'Tidak Berpenghuni', 61, 61, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381431', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(129, 'Tidak Berpenghuni', 62, 62, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381432', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(130, 'Tidak Berpenghuni', 63, 63, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381433', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(131, 'Tidak Berpenghuni', 64, 64, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381434', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(132, 'Tidak Berpenghuni', 65, 65, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381435', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(133, 'Tidak Berpenghuni', 66, 66, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381436', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(134, 'Tidak Berpenghuni', 67, 67, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381437', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(135, 'Tidak Berpenghuni', 68, 68, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381438', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(136, 'Tidak Berpenghuni', 69, 69, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381439', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(137, 'Tidak Berpenghuni', 70, 70, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381440', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(138, 'Tidak Berpenghuni', 71, 71, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381441', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(139, 'Tidak Berpenghuni', 72, 72, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381442', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(140, 'Tidak Berpenghuni', 73, 73, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381443', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(141, 'Tidak Berpenghuni', 74, 74, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381444', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(142, 'Tidak Berpenghuni', 75, 75, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381445', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(143, 'Tidak Berpenghuni', 76, 76, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381446', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(144, 'Tidak Berpenghuni', 77, 77, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381447', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(145, 'Tidak Berpenghuni', 78, 78, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381448', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(146, 'Tidak Berpenghuni', 79, 79, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381449', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(147, 'Tidak Berpenghuni', 80, 80, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381450', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(148, 'Tidak Berpenghuni', 81, 81, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381451', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(149, 'Tidak Berpenghuni', 82, 82, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381452', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(150, 'Tidak Berpenghuni', 83, 83, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381453', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(151, 'Tidak Berpenghuni', 84, 84, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381454', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(152, 'Tidak Berpenghuni', 85, 85, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381455', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(153, 'Tidak Berpenghuni', 86, 86, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381456', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(154, 'Tidak Berpenghuni', 87, 87, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381457', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(155, 'Tidak Berpenghuni', 88, 88, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381458', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(156, 'Tidak Berpenghuni', 89, 89, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381459', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(157, 'Tidak Berpenghuni', 90, 90, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381460', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(158, 'Tidak Berpenghuni', 91, 91, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381461', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(159, 'Tidak Berpenghuni', 92, 92, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381462', '1970-01-01', 1, 3, 'Rumah Layak Huni');
INSERT INTO `questionnaire` (`id`, `statusrumah`, `nomorUrut`, `nomorRumahPadaPeta`, `namaLengkapKK`, `usia`, `tanggallahir`, `jenisKelamin`, `nomorKK`, `nomorKTP`, `asalKTP`, `jumlahKK`, `jumlahPenghuni`, `alamatRumah`, `kecamatan`, `desaKelurahan`, `pendidikanTerakhir`, `pekerjaan`, `fungsiBangunan`, `penghasilan`, `statusKepemilikanRumah`, `asetRumahDiTempatLain`, `statusKepemilikanTanah`, `asetTanahDiTempatLain`, `sumberPenerangan`, `dayaListrik`, `bantuanPerumahan`, `modelRumah`, `pondasi`, `kolom`, `rangkaAtap`, `plafon`, `balok`, `sloof`, `pintuJendelaKonsen`, `ventilasi`, `materialLantaiTerluas`, `kondisiLantai`, `materialDindingTerluas`, `kondisiDinding`, `materialPenutupAtapTerluas`, `kondisiPenutupAtap`, `luasRumah`, `luasTanah`, `buanganAirLimbahRumahTangga`, `saranaPengelolaanLimbahCair`, `pemiliharaanSaranaPengelolaanLimbah`, `jenisTempatPembuanganAirTinja`, `kepemilikanKamarMandiDanJamban`, `jumlahJamban`, `jenisKloset`, `jenisTangkiSeptik`, `materialTangkiSeptik`, `alasTangkiSeptik`, `lubangPenyedotan`, `posisiTangkiSeptik`, `jarakTangkiSeptikDenganSumberAir`, `sumberAirMinum`, `titikKoordinatRumah`, `manualTitikKoordinatRumah`, `tanggalPendataan`, `AdminId`, `score`, `kategori`) VALUES
(160, 'Tidak Berpenghuni', 93, 93, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381463', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(161, 'Tidak Berpenghuni', 94, 94, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381464', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(162, 'Tidak Berpenghuni', 95, 95, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381465', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(163, 'Tidak Berpenghuni', 96, 96, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381466', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(164, 'Tidak Berpenghuni', 97, 97, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381467', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(165, 'Tidak Berpenghuni', 98, 98, 'test server', 0, NULL, 'Pilih', '0', '0', '0', 0, 0, 'test', 'Sekongkang', 'Sekongkang Bawah', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', NULL, '-7.0051546, 110.4381468', '1970-01-01', 1, 3, 'Rumah Layak Huni'),
(166, 'Berpenghuni', 99, 99, 'test server update berpenghuni', 32, '1992-10-23', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 1, 2, 'test', 'Seteluk', 'Seteluk Atas', 'D3', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 3700000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '1300', 'Pernah, >10 Tahun', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Belum Plesteran', 'Layak', 'Genteng Biasa', 'Layak', 100, 120, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Dinding Beton', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'PDAM', '-7.0068664, 110.4753775', '', '2024-11-22', 1, 3, 'Rumah Layak Huni'),
(167, 'Berpenghuni', 12, 12, '1111111111111', 43, '1980-12-12', 'Perempuan', '1111111111111111', '1234567891011234', 'KSB', 2, 6, 'RT. 001 RW. 002', 'Jereweh', 'Belo', 'SD/Sederajat', 'Petani/Pekebun', 'Rumah Tinggal/Hunian', 1500000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Tidak Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Panggung', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Tidak Layak', 'Papan Kayu', 'Tidak Layak', 'Spandek', 'Tidak Layak', 'Seng', 'Tidak Layak', 54, 200, 'Jaringan Perpipaan', 'Tidak Berfungsi', 'Tidak Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Konvensional', 'Batu Bata', 'Tidak Kedap', 'Tidak Ada', 'Luar Rumah', 11, 'Air Kemasan/Isi Ulang', '-8.8626077, 116.8299527', '', '2024-11-24', 7, 66, 'Rumah Tidak Layak Huni'),
(168, 'Tidak Berpenghuni', 1, 1, 'Kosong', NULL, NULL, '0', '0000000000000000', '0000000000000000', '0', 0, 0, 'RT. 001 RW. 002', 'Jereweh', 'Goa', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, '0', '0', '0', '0', '0', 0, '0', '0', '0', '0', '0', '0', 0, '0', '-8.8463101, 116.8175508', '', '2024-11-25', 7, 3, 'Rumah Layak Huni');

-- --------------------------------------------------------

--
-- Table structure for table `Sessions`
--

CREATE TABLE `Sessions` (
  `sid` varchar(36) NOT NULL,
  `expires` datetime DEFAULT NULL,
  `data` text DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `Sessions`
--

INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('-DDZqszrKrPq1Hw4VR6B9klI82Dq5bbm', '2024-11-27 15:45:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 14:45:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 15:45:08', '2024-11-26 15:45:08'),
('0X6dujg9CPYB53kiYxE7SzuPNj6Qd3SQ', '2024-11-27 10:00:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 09:00:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 10:00:23', '2024-11-26 10:00:23'),
('2JYJPaj5JG_FIIJZGWG0GQDqUozcWx9P', '2024-11-28 02:03:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:03:00 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:03:00', '2024-11-27 02:03:00'),
('2QZL7Xn2DjjqnxmtcTzMbFcWzlX4O5rt', '2024-11-28 06:03:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:03:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:03:47', '2024-11-27 06:03:47'),
('2ROHkcpFqs6Zvj5TsD5p6Hs0pS0tVZIE', '2024-11-27 11:45:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 10:45:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 11:45:19', '2024-11-26 11:45:19'),
('2Y5JGONUMdpG2VW8qpJ-hVmq0Cnqqbht', '2024-11-27 13:15:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 12:15:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 13:15:09', '2024-11-26 13:15:09'),
('3B0UIVxZw5ZAOJ89fDiCYQjaYGwnKCVf', '2024-11-28 06:03:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:03:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:03:47', '2024-11-27 06:03:47'),
('3p1TPC3SDFjmD7I0PlvVWQ27b4g_mgd5', '2024-11-28 13:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 12:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 13:45:17', '2024-11-27 13:45:17'),
('3q3x6qIeR-52Ke3p4r9HbbBpJWBMj88V', '2024-11-27 12:15:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 11:15:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 12:15:07', '2024-11-26 12:15:07'),
('4633hdwanjZFklAWUh2GHksAwlZyItKW', '2024-11-28 06:02:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:20', '2024-11-27 06:02:20'),
('4EnDERhjd_ObPPOr3PP7h0uWAJFRb6gq', '2024-11-27 20:01:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:01:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:01:15', '2024-11-26 20:01:17'),
('4UogYFDpFiA22TwLZAhg6xmKk-OLKQJO', '2024-11-27 08:45:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:45:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 08:45:19', '2024-11-26 08:45:19'),
('4VJE-DdVoTqmqW5o9mmMGlxs-YobeekN', '2024-11-28 05:15:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:15:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:15:15', '2024-11-27 05:15:15'),
('4_BY31226EEU5bHDNKLBTGykU_Qvvhzo', '2024-11-27 09:30:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 08:30:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 09:30:20', '2024-11-26 09:30:20'),
('5-jBJQDv-g5-kMv-Sb1q8nYddnZdDF5e', '2024-11-27 08:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:00:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 08:00:17', '2024-11-26 08:00:17'),
('55zm--QvO1Dc8AxbY8EMFsb6xhOafzqB', '2024-11-28 04:28:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:28:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:28:02', '2024-11-27 04:28:02'),
('5gV-2Ttt9RDnyjcEqx5w4ZTpsr6hWOpz', '2024-11-28 01:25:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:25:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:25:06', '2024-11-27 01:25:06'),
('5kQLLLTMJWUCFeT9OZx4tzmXOK8GIL-R', '2024-11-28 05:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:55:53 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:55:53', '2024-11-27 05:55:53'),
('5RJNlfTjQi2ieEQ-vTDBQeILKER5QbSk', '2024-11-27 15:30:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 14:30:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 15:30:13', '2024-11-26 15:30:13'),
('5wiyDP7Rlo9yjG2MSS1tR86Vo0ddAgbU', '2024-11-27 09:06:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 08:06:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 09:06:14', '2024-11-26 09:06:14'),
('5x-JJxm_XVSExh8tMDAFSGNkoShPghQC', '2024-11-27 20:18:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:39', '2024-11-26 20:18:39'),
('6e8Ht_I_KAJqAbuhnve61kXw-nA1-UVk', '2024-11-28 09:00:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 08:00:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 09:00:19', '2024-11-27 09:00:19'),
('6mH5yCRZPGB5u8X1kzSg2m73hU9LvvYJ', '2024-11-28 04:00:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:00:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:00:22', '2024-11-27 04:00:22'),
('6ooJlMTlURGKOEm3591XfHKUBbboh3yt', '2024-11-28 01:00:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:00:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:00:16', '2024-11-27 01:00:16'),
('6wGczyfhJX1ySMtwDeb9eL2opWaFWFIT', '2024-11-28 04:30:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:30:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:30:11', '2024-11-27 04:30:11'),
('71Oyabr_42pG1qeOt80xIcPPu4P099cW', '2024-11-28 00:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:15:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:15:16', '2024-11-27 00:15:16'),
('7bxZO00u1jLeDkAoxhSC52pdXM_0-B28', '2024-11-28 05:58:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:19', '2024-11-27 05:58:19'),
('7ecg0ehe3zrCyRsrNXiecLlWNP61pZHt', '2024-11-27 08:15:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:15:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 08:15:21', '2024-11-26 08:15:21'),
('7kuzPNxcPn_ozhDINXv_8lOHDkGfr8Zi', '2024-11-28 05:00:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:00:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:00:22', '2024-11-27 05:00:22'),
('8iw7B2luiS4gNwCGfKeG8ACM4RHtg3QX', '2024-11-27 19:30:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 18:30:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 19:30:22', '2024-11-26 19:30:22'),
('8KFCnzDAYe9RIq4CzMENWYGmdVtvcVid', '2024-11-28 01:01:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:01:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:01:48', '2024-11-27 01:01:48'),
('8owAb7ZnsD0rxkjBB5D1UAdNIolAhg3V', '2024-11-27 20:00:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:07', '2024-11-26 20:00:07'),
('8uvmeUDjldy97Vdehz4OCZE4CTCX9xC3', '2024-11-27 21:30:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 20:30:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 21:30:18', '2024-11-26 21:30:18'),
('9QmOZpB0ZBt3KG1UzLc9QnSsp_IVHZQl', '2024-11-28 00:30:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:30:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:30:12', '2024-11-27 00:30:12'),
('a6AOqBzgJ9S-9pbwQrmLWdi9aNE-Jm1y', '2024-11-27 15:00:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 14:00:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 15:00:27', '2024-11-26 15:00:27'),
('ABA24EvVlIkxMpkmKaLCoCH0j4CmLCSN', '2024-11-27 20:00:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:07', '2024-11-26 20:00:07'),
('aIkgKDS8vxCSt_ZL-8oAJZwFMANrNPEB', '2024-11-28 03:44:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:44:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:44:09', '2024-11-27 03:44:09'),
('AL7LUO6FDZpvDA33EFQ-FP0nbMaV1qKx', '2024-11-28 06:02:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:20', '2024-11-27 06:02:20'),
('apE0geJui-qStq30qFCUYfKe0rjBs0x3', '2024-11-27 12:30:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 11:30:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 12:30:21', '2024-11-26 12:30:21'),
('aSjy5NuDeqMa2fOEqHQiKNdg7ZcfMeWj', '2024-11-27 19:00:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 18:00:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 19:00:23', '2024-11-26 19:00:23'),
('B-qpIQ3ejY9pzYXo3HJaGJwSAsds-pSv', '2024-11-28 06:03:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:03:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:03:43', '2024-11-27 06:03:43'),
('B1SEXnJhFSq1k7Mp3qmgjNKWm-VNo2cW', '2024-11-28 03:43:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:39', '2024-11-27 03:43:39'),
('B4ZUCidiCfnCP5v3AsXsdhK-D8zk3LGX', '2024-11-28 14:15:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 13:15:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 14:15:15', '2024-11-27 14:15:15'),
('BBPo_IWjw-dlImZYCI2sp1hDBN4DNnmj', '2024-11-28 02:02:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:02:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:02:39', '2024-11-27 02:02:39'),
('bFllEjXgFkofueWogMqVL_vNN4FR3Ib7', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('bKh9ia6xLCBo4cx95WArYVllvLtJD2m-', '2024-11-27 20:15:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:15:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:15:07', '2024-11-26 20:15:07'),
('bLFdXAH7oZrephSIQZFIwMkqCR_y0IUM', '2024-11-28 04:29:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:29:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:29:14', '2024-11-27 04:29:14'),
('BM7J5MIPHbojpxT0e0JqeejfRmCcHizu', '2024-11-28 06:03:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:03:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:03:24', '2024-11-27 06:03:24'),
('BP_EHXiT7f0k6zEtvxMV-BxW0GBM9yox', '2024-11-27 22:15:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 21:15:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 22:15:08', '2024-11-26 22:15:08'),
('bqyKjJ2BkvKRs3W0YK2EwSXTNVm7fX_i', '2024-11-28 02:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:15:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:15:17', '2024-11-27 02:15:17'),
('bz4Uv3fCTxErIdw7sDKbGXqP03BQ-Yex', '2024-11-27 20:11:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:11:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:11:35', '2024-11-26 20:11:35'),
('cb1wGiEpsL1VZGtd5nXy2BzqpN2kyalS', '2024-11-27 20:01:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:01:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:01:27', '2024-11-26 20:01:27'),
('CBuGAkgaIGMJ4L-aAn2KPMcS04ea_ITA', '2024-11-28 12:00:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 11:00:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 12:00:23', '2024-11-27 12:00:23'),
('CeuKCKgLaN36FaXTYNDVj_NfIvYdT6md', '2024-11-28 14:45:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 13:45:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 14:45:15', '2024-11-27 14:45:15'),
('cgNtF9r2MberWxZl8m75xQKxbY27aZbn', '2024-11-28 07:30:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 06:30:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 07:30:22', '2024-11-27 07:30:22'),
('CIyq5Whg54KR0-y7FkoY5hWEnRh5CrTH', '2024-11-27 22:30:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 21:30:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 22:30:11', '2024-11-26 22:30:11'),
('cNXaudqZ0c1-VBaIyj5eZpox_05S6SCq', '2024-11-27 14:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 13:00:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 14:00:17', '2024-11-26 14:00:17'),
('coE4XhgAjgq1pQ_lEF8dSEY6tVOPlOMy', '2024-11-28 08:45:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 07:45:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 08:45:13', '2024-11-27 08:45:13'),
('CScdtSok0ixbzlYiFWvcYUSMKaKNEulN', '2024-11-27 18:45:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 17:45:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 18:45:19', '2024-11-26 18:45:19'),
('CSlkWMYIjkqSPbzlDWW1kIf9N3Vm2Ck-', '2024-11-28 03:43:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:34', '2024-11-27 03:43:34'),
('CV9LkR1KrYs3D0v7AQRB1kQs9CWvL8n9', '2024-11-28 12:30:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 11:30:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 12:30:17', '2024-11-27 12:30:17'),
('Cz_FK_QoyHcFmGWj_ZtSK5CblQ3B2DYq', '2024-11-28 02:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:30:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:30:24', '2024-11-27 02:30:24'),
('d2-Xun4YbMYRo807b4k4Ttl_gWF2OAtO', '2024-11-27 14:30:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 13:30:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 14:30:23', '2024-11-26 14:30:23'),
('d6raw8GuH3g1cQU5TGln2KXqeaJ5RLm7', '2024-11-28 05:55:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:55:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:55:37', '2024-11-27 05:55:37'),
('DAryno7ZXgSpEsDbQnhKAds4HraCniyD', '2024-11-27 20:00:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:15', '2024-11-26 20:00:15'),
('dbwLpOchPrdTOr24V2Z8rGuABHkTsH1g', '2024-11-28 06:45:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:45:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:45:18', '2024-11-27 06:45:18'),
('dH558lHOkRNEsuxMu4sdBl5UEa-Jc2cI', '2024-11-27 16:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 15:30:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 16:30:25', '2024-11-26 16:30:25'),
('Dj77n_7E4ml1aoLPfJplmI-3chrijI7z', '2024-11-27 19:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 18:15:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 19:15:16', '2024-11-26 19:15:16'),
('DoHCBU0IKcMV_dBWkD5Ef5I93epE1WTn', '2024-11-28 06:02:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:20', '2024-11-27 06:02:20'),
('dsHOqs3IV8BMYYW3SlKHJf4WO1D_Dp3L', '2024-11-27 20:17:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:31', '2024-11-26 20:17:31'),
('DU72mmNcQU3YOoabvHwqf4QPPq25gFs7', '2024-11-28 05:59:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:05', '2024-11-27 05:59:05'),
('dUkXEkBranWAOXtE4sS0VYl23hhZ1GdR', '2024-11-28 01:58:49', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:58:49 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:58:49', '2024-11-27 01:58:49'),
('dvjUZ9NfeiwOZh5H1LhVUBb4dVnwt01k', '2024-11-27 20:18:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:16', '2024-11-26 20:18:16'),
('DWzQ3mIy4cm8WEl672cX29joauE02Q9D', '2024-11-28 07:00:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 06:00:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 07:00:24', '2024-11-27 07:00:24'),
('dZMXR6ql1_dXK9n6NBoTwkz9ABwm3vOJ', '2024-11-28 02:01:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:01:00 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:01:00', '2024-11-27 02:01:00'),
('E2c9GMDh14TU8m_wbjcLGuEgRJVB7Jbc', '2024-11-28 04:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:15:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:15:17', '2024-11-27 04:15:17'),
('E5Rv9lHQwsz7mbdw2Ozf8ObqikYGUBna', '2024-11-27 13:45:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 12:45:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 13:45:08', '2024-11-26 13:45:08'),
('E9yznnSmuruR8oULRHFOymTvEER8uFKC', '2024-11-28 01:25:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:25:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:25:08', '2024-11-27 01:25:08'),
('eEnEsOpmie7kIChMebpU597ZBtZMO5Zt', '2024-11-27 18:30:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 17:30:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 18:30:22', '2024-11-26 18:30:22'),
('eT9CLPuC-dy_rhnKmOIrocNxpvvfFtjd', '2024-11-28 05:59:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:36', '2024-11-27 05:59:36'),
('eueG8ZPPb9nJy4i-Huz3dULID1hJkS1-', '2024-11-28 10:30:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 09:30:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 10:30:16', '2024-11-27 10:30:16'),
('EuxqHfBOQeODDfUiwGv2DRy2t3YnJK8x', '2024-11-28 14:00:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 13:00:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 14:00:22', '2024-11-27 14:00:22'),
('e_7dbEqvRjd_-l5cf40vUoZtA7C3zmcq', '2024-11-27 23:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 22:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 23:45:17', '2024-11-26 23:45:17'),
('f6CGmXKm9prATDjw-f4UWqwamwcuZE9j', '2024-11-28 02:00:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:00:56 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:00:56', '2024-11-27 02:00:56'),
('FcADKaQIP7rcXUaJ8VmknRYdXCCDhQP1', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('fezCakTbwispub8Olu67tFGenaLRAkcP', '2024-11-28 02:00:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:00:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:00:24', '2024-11-27 02:00:24'),
('fFtOajzB3CVmOjz_9deRTXA9JQ9vEzbH', '2024-11-27 10:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 09:15:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 10:15:16', '2024-11-26 10:15:16'),
('FJ1Q6L6zG4tsKmFTQB3PgfnokAdYPrO3', '2024-11-28 02:02:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:02:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:02:42', '2024-11-27 02:02:42'),
('FrY0JCOB-ZGd12kM38R9NLlHHZcTSNJU', '2024-11-28 03:43:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:40 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:40', '2024-11-27 03:43:40'),
('Fu1XfqAM7nuLTue9_S_WHkjmUDWUBbT4', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('FWBnkoxHDwwsVbdUWBvJ1FP-rQm3Umye', '2024-11-28 04:28:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:28:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:28:02', '2024-11-27 04:28:02'),
('FWNfXuXjsH19QPCZciTzzV0uKSyrhw5H', '2024-11-28 14:30:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 13:30:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 14:30:21', '2024-11-27 14:30:21'),
('FZmUn1rqbrNxQHPvDObDfLk6Da45hdGc', '2024-11-28 05:58:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:31', '2024-11-27 05:58:31'),
('f_HIjKtZZsnKHwK4aKVX_3c_YqsR_Btt', '2024-11-28 05:55:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:55:53 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:55:53', '2024-11-27 05:55:53'),
('g8X43CLNYVfhj1xRIBg6zXfMY8vI2-FQ', '2024-11-27 20:01:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:01:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:01:28', '2024-11-26 20:01:28'),
('GBS5fHJip2A_v0S06CwhZYIsZ8P9BYJB', '2024-11-27 14:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 13:15:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 14:15:16', '2024-11-26 14:15:16'),
('gGZWnx75e8Xyncz28HTDS1N24Kb2EXUH', '2024-11-28 06:02:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:35', '2024-11-27 06:02:35'),
('gJQKPINRbCMZQgBAHGWaa_3ss7n635qN', '2024-11-28 05:58:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:09', '2024-11-27 05:58:09'),
('GJR6JQ8ip8GL7a2tBsimZSu9QGFkzy9c', '2024-11-27 20:00:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:07', '2024-11-26 20:00:07'),
('GKtN-U_3AshGzxmRRpJ-Vgh2zAtpftb3', '2024-11-28 06:02:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:28', '2024-11-27 06:02:28'),
('gLBdu7615PS_PJfvVL5oh4FZKFMI1ml8', '2024-11-28 05:58:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:07', '2024-11-27 05:58:07'),
('GOT1qff2l82O7bq3JdS4o15pfHAQ5Whq', '2024-11-27 20:15:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:15:56 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:15:56', '2024-11-26 20:15:56'),
('gOUDVNgp3eD4-u9PR0poUgRIXOlBG6Cn', '2024-11-27 17:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 16:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 17:45:17', '2024-11-26 17:45:17'),
('GrUq8QP81QLH_AZFjgjnBa12WDI1GGuc', '2024-11-28 01:15:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:15:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:15:19', '2024-11-27 01:15:19'),
('guE0zsXyngC2BxI4G0l9HeUwVQVT8uqh', '2024-11-28 07:45:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 06:45:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 07:45:18', '2024-11-27 07:45:18'),
('gznX_Dfwv42wawtCAnFHNyveiyxxy1E_', '2024-11-28 03:43:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:36', '2024-11-27 03:43:36'),
('h-t-yX7LPCbQK-RLmRHPwjobMgFb_st8', '2024-11-28 13:30:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 12:30:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 13:30:18', '2024-11-27 13:30:18'),
('HbQZYEiU4rwDyyw5LRQ6SXfcEX3qeWNp', '2024-11-28 15:45:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 14:45:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 15:45:15', '2024-11-27 15:45:15'),
('HCuaZXKcgnrhPuCHNzm76arxR4P30KJt', '2024-11-27 15:15:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 14:15:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 15:15:18', '2024-11-26 15:15:18'),
('hDLuGY5UO198nDFidZKJQXFeD0T7HzSy', '2024-11-28 15:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 14:15:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 15:15:16', '2024-11-27 15:15:16'),
('HIbYyYrqnLiJ9TYzStUioh2WEzH57jr0', '2024-11-28 03:43:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:37', '2024-11-27 03:43:37'),
('hKQFN1kjMuwyfbgx6l5KrILzIaBDI9ZA', '2024-11-28 02:01:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:01:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:01:14', '2024-11-27 02:01:14'),
('hMgfJPA5EDcJp5A4W-nlZlV_6AGrubBW', '2024-11-27 18:00:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 17:00:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 18:00:21', '2024-11-26 18:00:21'),
('HmyOTAMsNsCAXbXtTJMw4s5B79JoTXBZ', '2024-11-28 06:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:00:12', '2024-11-27 06:00:12'),
('hnmuNZ7UtNFjn170CRLfhgwswEjKNrIK', '2024-11-28 03:00:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:00:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:00:26', '2024-11-27 03:00:26'),
('ho-KKs_BtWkcr-ofDn-bSLkDfSRiTR7r', '2024-11-28 09:30:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 08:30:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 09:30:18', '2024-11-27 09:30:18'),
('HQbSksllAd7HV9e9pLfIeufwEkw5666i', '2024-11-28 05:38:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:38:38 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:38:38', '2024-11-27 05:38:38'),
('HQUmBhaPgh-DbBzF45V_WqKCBzb_fDJI', '2024-11-28 06:01:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:01:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:01:31', '2024-11-27 06:01:31'),
('HT_qtRFgClH9yuiaIl16ts6dmN3dMdjY', '2024-11-27 11:00:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 10:00:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 11:00:13', '2024-11-26 11:00:13'),
('HWojmABX5W1NHsmi4Yp3cRBY5cMmuMr5', '2024-11-27 20:30:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:30:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:30:12', '2024-11-26 20:30:12'),
('hX-tVcpmGDfojvI-zMH2wXFKNpLJ1LBN', '2024-11-28 05:59:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:05', '2024-11-27 05:59:05'),
('i43_4IKYG3MtczLL-1EV6T154BN1Y0Sp', '2024-11-28 06:10:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:10:03 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:10:03', '2024-11-27 06:10:03'),
('i75B6PXwHH1ZGb1MKgWdPzoO5weLyp3K', '2024-11-28 05:59:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:05', '2024-11-27 05:59:05'),
('IaHSjmOZzvgWb70lYbK2vnSTMRNGX62w', '2024-11-27 23:15:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 22:15:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 23:15:18', '2024-11-26 23:15:18'),
('IakuKWMzc3NYFs4l2fk2uoiyt4JYhMwM', '2024-11-27 12:45:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 11:45:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 12:45:20', '2024-11-26 12:45:20'),
('IccmYpPXzlOldwNNA5ok6EZVH6bzUMYv', '2024-11-28 05:58:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:10', '2024-11-27 05:58:10'),
('iHYHsNWdJqiwm6okh4xqgjmyie_CewIw', '2024-11-27 22:00:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 21:00:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 22:00:25', '2024-11-26 22:00:25'),
('ILnglX47VDQljYtUbHF060HpaF04JJT5', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('ImjwK2Zi1ErUHd9QTu3U4-2D0wRRIPRw', '2024-11-28 01:01:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:01:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:01:48', '2024-11-27 01:01:48'),
('In8Jy-vtojl2Fsk3841R6mw6eFwxCYK8', '2024-11-28 01:01:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:01:52 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:01:52', '2024-11-27 01:01:52'),
('j1HdEIcQ-0i9oe_sj11Ul6GvglOHYlO4', '2024-11-28 12:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 11:15:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 12:15:14', '2024-11-27 12:15:14'),
('jDMDEjPA9v_HrTmL8GYyD7UuIujH11VU', '2024-11-28 06:30:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:30:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:30:22', '2024-11-27 06:30:22'),
('jf0DHmIHaFDFBKy4-0mB6WQNu2qf-1Vn', '2024-11-28 05:58:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:07', '2024-11-27 05:58:07'),
('JHTAfKlzDNCtkPNMHQnSs4mAVzHPQqB8', '2024-11-27 21:00:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 20:00:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 21:00:26', '2024-11-26 21:00:26'),
('JhUL0HGGpmaiYSagN2dkvX5-c6QI6nUc', '2024-11-27 09:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 08:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 09:45:17', '2024-11-26 09:45:17'),
('jmLZwdEBcQ5upbuRVnC4BJP1B3UDN-d5', '2024-11-28 00:56:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:56:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:56:16', '2024-11-27 00:56:16'),
('Jt6yaL4c59sjqHlZfm7hbU2X6Z-2b0wp', '2024-11-28 02:02:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:02:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:02:39', '2024-11-27 02:02:39'),
('JzIYoQEPkiXr_y6zemRUBl7MsldRvkg0', '2024-11-27 20:18:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:15', '2024-11-26 20:18:15'),
('k7gFC_etymL6Y4TAflX-ehqvSp-rURqU', '2024-11-28 12:45:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 11:45:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 12:45:12', '2024-11-27 12:45:12'),
('kGZuODRvVszOGXh3zId3v8Rq4F7KIbjy', '2024-11-27 17:30:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 16:30:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 17:30:21', '2024-11-26 17:30:21'),
('KHCQSQGPhjNf91FLET47TiG-ARPSQtwc', '2024-11-27 20:18:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:23', '2024-11-26 20:18:23'),
('KlGHxo2Ucu7J7wFT8SvwpJaMGhHohJ9L', '2024-11-28 06:02:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:20', '2024-11-27 06:02:20'),
('KNhNB_ahWJRUutLSqiws4nCM4F8X9OmD', '2024-11-28 03:44:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:44:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:44:09', '2024-11-27 03:44:09'),
('KQG8ORF9Qc_tXpNwm8QnniapO8dg_JqP', '2024-11-27 20:45:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:45:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:45:19', '2024-11-26 20:45:19'),
('kRPRKz3zRxJq0wdiuyBpbwaOqdC3tZgp', '2024-11-28 15:00:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 14:00:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 15:00:22', '2024-11-27 15:00:22'),
('KxkFSKBaMWbInbaWDsWFL0KSY9QzJ2R_', '2024-11-27 09:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 08:15:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 09:15:17', '2024-11-26 09:15:17'),
('LgDJuxLhN1DGnmMLQ0IsWZb3yvzgn5RT', '2024-11-27 20:11:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:11:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:11:36', '2024-11-26 20:11:36'),
('LjDthaqVQ1rGZj8iEGoqPx8hWySQ7mNS', '2024-11-28 06:02:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:35', '2024-11-27 06:02:35'),
('LmTB_5xl9M1Qt_hry3Y-noe1PIO4FCX9', '2024-11-28 06:03:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:03:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:03:46', '2024-11-27 06:03:46'),
('lVSRMEsco7d11scrHdSGXDUj6zy32GC0', '2024-11-27 20:53:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:53:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:53:48', '2024-11-26 20:53:48'),
('LyxB9YacULEl3uMtofmgtz2fd7dYANmS', '2024-11-28 08:00:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 07:00:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 08:00:15', '2024-11-27 08:00:15'),
('lzUKxC6LsSGmIQaY7SAlJsOtJ-Y52vEQ', '2024-11-28 02:02:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:02:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:02:51', '2024-11-27 02:02:51'),
('m0BhABmZzC7Is3LA-V7u3m2Q7N7HufBP', '2024-11-28 00:58:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:58:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:58:45', '2024-11-27 00:58:45'),
('McZdEPK7wI-Q8IbliqLgQ0qPq5KWL0G1', '2024-11-28 01:02:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:02:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:02:12', '2024-11-27 01:02:12'),
('MN5bySRYh1rKZ8giE0UjHMoazTONkXS9', '2024-11-27 16:00:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 15:00:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 16:00:26', '2024-11-26 16:00:26'),
('mSr5DUR8B3ToBMTMzWhR4hVudElIu9sM', '2024-11-27 20:17:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:34', '2024-11-26 20:17:34'),
('MTXDHTvY34WayqFNpG77BTXOQUPHu2QE', '2024-11-28 00:56:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:56:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:56:16', '2024-11-27 00:56:16'),
('MYsNVIsZWtAb54qBl14JR5QAF32Ug_ym', '2024-11-27 18:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 17:15:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 18:15:17', '2024-11-26 18:15:17'),
('n1Es58eMh6R3FYq7NrQwOV9vxZL9EZz9', '2024-11-28 03:43:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:41 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:41', '2024-11-27 03:43:41'),
('NeYjuHJ0hIZiAZuvfSlgZ7mpe9gd9gKt', '2024-11-27 22:45:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 21:45:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 22:45:21', '2024-11-26 22:45:21'),
('NFrNPD0eT3vRvSbEuYX08zNKjkADhGJu', '2024-11-28 04:27:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:27:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:27:27', '2024-11-27 04:27:27'),
('Ng3-swLVk-5wuGEqwYJxDe_88NN5R8wV', '2024-11-28 00:56:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:56:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:56:16', '2024-11-27 00:56:16'),
('nKtELDRNG1JHhRaKX9G_H8Fh6nqPqUC5', '2024-11-28 03:30:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:30:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:30:21', '2024-11-27 03:30:21'),
('nvJvn_QpllAnzw_7-UobzKJY_WwTzyWV', '2024-11-27 20:16:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:16:00 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-26 20:00:07', '2024-11-26 20:16:00'),
('nwiPAv1mH-4yJ59VZkuqTNfCCsogRoqt', '2024-11-27 20:17:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:31', '2024-11-26 20:17:31'),
('NX0Ev2GYyCn3EmkpDq683FPs7oqGmW07', '2024-11-27 20:54:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:39', '2024-11-26 20:54:39'),
('oFFpHMmA-qqfqPVgCyA--cO2cVepKucF', '2024-11-27 20:17:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:31', '2024-11-26 20:17:31'),
('oFpI_Pof9RL7d9PUtkAi4a8T-gakgktT', '2024-11-28 05:59:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:31', '2024-11-27 05:59:31'),
('osOpxfwf1p0uw6qQHodx-YHWUcj3rrRX', '2024-11-27 09:06:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 08:06:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 09:06:18', '2024-11-26 09:06:18'),
('oZN8ANLf1Cd4XoouL6G_yBltCzQIYqBs', '2024-11-27 20:18:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:39', '2024-11-26 20:18:39'),
('o_OWeWuSJ3IBTYakAkSfhn4HIUAQDjvM', '2024-11-27 20:54:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:34', '2024-11-26 20:54:34');
INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('p8zV4-CkRz1CuZ0rIsgAWgL1IGmrirDn', '2024-11-28 04:27:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:27:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:27:27', '2024-11-27 04:27:27'),
('pF4bMGomuTptfJx-2VcWwV15F1WHz-TW', '2024-11-27 14:45:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 13:45:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 14:45:08', '2024-11-26 14:45:08'),
('PJtH9OdYjISAM8p5CnNL48LLP6HxeRev', '2024-11-27 20:18:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:39', '2024-11-26 20:18:39'),
('PJylOkyR3umTO22UDCBk8hqqxkwjPhEr', '2024-11-27 20:54:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:30', '2024-11-26 20:54:30'),
('pN4vIiFXk6fk1ulvr0h7VwPh0YltpFbI', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('pPFFDCOCj3aarRq5oG8pMRO22ABXBHTU', '2024-11-27 20:54:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:16', '2024-11-26 20:54:16'),
('prbLpJQzLxna7VN3rBsDixWBEu7AWg2s', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('PTWSAMN6A_2UKJ6ChYng5lCd9cUlzIkF', '2024-11-28 00:00:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:00:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:00:29', '2024-11-27 00:00:29'),
('pUAHpwDYFm-tzIqXTLNqWlpOVhNxR6eR', '2024-11-28 05:55:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:55:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:55:46', '2024-11-27 05:55:46'),
('pWZmI2eAdfJKYL2vbyX1_hiMqwOtavQa', '2024-11-28 08:15:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 07:15:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 08:15:13', '2024-11-27 08:15:13'),
('PXE7gKIGMA0TA6cBIbtjae4uowyqoOxD', '2024-11-28 01:01:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:01:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:01:48', '2024-11-27 01:01:48'),
('PySOa1sgeX_aYi82yWGJnViHEXfXdlDO', '2024-11-27 08:37:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:37:25 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-26 08:37:21', '2024-11-26 08:37:25'),
('q6RDALvAR58-HFe7fvfFHMdbq9ig_BsU', '2024-11-28 05:58:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:34', '2024-11-27 05:58:34'),
('qa5c71pl2VhU_OAaitETsgvpa1y6SjLz', '2024-11-27 10:30:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 09:30:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 10:30:19', '2024-11-26 10:30:19'),
('QC5-hJl131W89CyjJeIcncr65syiC7jR', '2024-11-27 21:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 20:15:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 21:15:17', '2024-11-26 21:15:17'),
('qFaz0aCx8RFGforSduWqT3joCH2TurfA', '2024-11-27 12:00:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 11:00:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 12:00:13', '2024-11-26 12:00:13'),
('qFlq-0Wpf09-ZGdOHwvm2OUtZwNBCDuc', '2024-11-28 13:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 12:15:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 13:15:15', '2024-11-27 13:15:15'),
('qFsCJlx4EebNQeTvNGEm3g5X8XaG_I5e', '2024-11-27 09:00:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 08:00:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 09:00:21', '2024-11-26 09:00:21'),
('Qn0S_8Bo-_wHwaNlMQIXTixwubP8pE3K', '2024-11-28 07:15:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 06:15:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 07:15:16', '2024-11-27 07:15:16'),
('qoU8PJABAYK6PlJEbCkJSqInn1ixFYin', '2024-11-28 08:30:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 07:30:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 08:30:16', '2024-11-27 08:30:16'),
('qwwpTGBfG9Nt2_MKCAxpDCClgJKUDh5k', '2024-11-27 21:45:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 20:45:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 21:45:09', '2024-11-26 21:45:09'),
('r7nn87obuRcCfthLDS5e4T5Ibbwg1Wox', '2024-11-28 04:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:45:17', '2024-11-27 04:45:17'),
('r9YJLrpzlv7xd4bJCKRVJ8WdD9laxlsm', '2024-11-28 02:00:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:00:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:00:55', '2024-11-27 02:00:55'),
('Rc8__1YEmTibs4k4OGpaR70rr6hvlFhn', '2024-11-27 20:18:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:21', '2024-11-26 20:18:21'),
('rfD-EmBSqJRaxZsjd5yBKMBon0W32-Dp', '2024-11-28 03:45:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:45:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:45:07', '2024-11-27 03:45:07'),
('RodydtRhaG359mA19otXFTHcc9flKduW', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('rRkxx1YHBCZfs95wY6BwE5_1cte0HC99', '2024-11-28 09:45:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 08:45:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 09:45:14', '2024-11-27 09:45:14'),
('RswttixdDZ2dkB0l4Bx122xhXaTykXRk', '2024-11-28 06:00:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:00:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:00:07', '2024-11-27 06:00:07'),
('RyF5zbQRfKmWtLb9DxvbpBEnml8JFB5t', '2024-11-27 20:54:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:24', '2024-11-26 20:54:24'),
('S76gsBb92ZrzhFHkdh4Bdyoje2h2sIgL', '2024-11-28 02:00:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:00:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:00:47', '2024-11-27 02:00:47'),
('Saa4uZFkKa0qLAw9Sj_4lecVdAQm8HNv', '2024-11-28 02:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:45:17', '2024-11-27 02:45:17'),
('sMJkTcquRwnCltnxuejDwagMt8lyol6t', '2024-11-27 23:51:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 22:51:01 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 23:51:01', '2024-11-26 23:51:01'),
('sOE9c4KJccfW0BON9Q0yayG556GTUZRv', '2024-11-27 13:00:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 12:00:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 13:00:24', '2024-11-26 13:00:24'),
('ss_Bc0t8yqE27hl2yHp0ES09vHKJ0Q3E', '2024-11-27 11:30:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 10:30:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 11:30:20', '2024-11-26 11:30:20'),
('sT1y--iDDa8ScBJNtJ7LbHCHvWj9tUCh', '2024-11-28 05:59:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:11', '2024-11-27 05:59:11'),
('sU90I3t21x3YRQ7z2iV8L74CjJpM3YPQ', '2024-11-27 20:01:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:01:48 GMT+0700 (Western Indonesia Time)\",\"adminId\":3,\"adminRole\":\"admin\"}', '2024-11-26 20:01:06', '2024-11-26 20:01:48'),
('szTE342jhRWHMnUYWgv37yeJyNC4hNlw', '2024-11-28 05:45:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:45:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:45:08', '2024-11-27 05:45:08'),
('T041FF6K-VwVF8XbzdkvpA8uYIvCrlya', '2024-11-28 06:00:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:00:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:00:18', '2024-11-27 06:00:18'),
('tjb-nSzf_fugCfFa8G53wDgrj8qv8xoM', '2024-11-27 20:17:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:31', '2024-11-26 20:17:31'),
('tJoV7e2o-qAvFmkjHxvZXiD9SKboZ9l8', '2024-11-28 04:28:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:28:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:28:02', '2024-11-27 04:28:02'),
('TpWPeOkqmYOFPPLuBrABME6jZdkitvxu', '2024-11-28 01:04:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:04:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:04:22', '2024-11-27 01:04:22'),
('tQlVG7In61hRoRdmczFNBUKk-kIkmC2-', '2024-11-28 01:41:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:41:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:41:26', '2024-11-27 01:41:26'),
('TR-Oer8Uju9j3bfHy_lxm1MIbUcDsUhm', '2024-11-27 11:15:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 10:15:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 11:15:07', '2024-11-26 11:15:07'),
('tt5g2NDwEDMt52zXvAMt65iC7nGq_8CH', '2024-11-28 09:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 08:15:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 09:15:14', '2024-11-27 09:15:14'),
('TtOKKivWitEUDH24J5KBkpiiS3BXboDu', '2024-11-27 20:18:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:18:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:18:16', '2024-11-26 20:18:16'),
('Ty1WNcLdG_LexKO3_RUaT_o8XD-jqJhT', '2024-11-28 00:45:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:45:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:45:22', '2024-11-27 00:45:22'),
('TZ1pKsWnj8twf2S7_5qPFHNF2aTuFCNv', '2024-11-27 19:45:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 18:45:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 19:45:19', '2024-11-26 19:45:19'),
('tZnYL1nU5vAZn5RSBPPNPvak-2w6f5qR', '2024-11-27 20:20:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:20:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:20:34', '2024-11-26 20:20:34'),
('u4aVfmG9z077tILhFc52P4rKsH3koSKu', '2024-11-28 04:28:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:28:01 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:28:01', '2024-11-27 04:28:01'),
('U8u1jsKbkv0HbfFUX81fPB4JtQG7AK7R', '2024-11-28 05:59:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:59:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:59:51', '2024-11-27 05:59:51'),
('U9XvVWAGSoF2mEx_WUSh1NomzztFLU22', '2024-11-27 20:54:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:27', '2024-11-26 20:54:27'),
('unJ22-GYqsivWYrBBWJvNBp7MlZ0PYA_', '2024-11-28 06:00:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:00:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:00:14', '2024-11-27 06:00:14'),
('UPGDKYcwiiDzv3qZJsIjlQSJTbeXbXiq', '2024-11-27 20:54:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:41 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:14:20', '2024-11-26 20:54:41'),
('v6mukkhUXXkL11XqajM9k4SSgjsMRpIW', '2024-11-27 08:30:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:30:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 08:30:11', '2024-11-26 08:30:11'),
('viNJosncsCEloMe5uGMZuTUWrNlx1-qD', '2024-11-28 05:38:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:38:38 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:38:38', '2024-11-27 05:38:38'),
('vqrQZ5kEyGr62XTHiWWUBo-RjoNxl0JV', '2024-11-28 01:06:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:06:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:06:27', '2024-11-27 01:06:27'),
('VRPxmEKKXTIbNJuGVxEamSNdLvsC7dss', '2024-11-27 17:00:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 16:00:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 17:00:25', '2024-11-26 17:00:25'),
('vtVvHpVLNwCFZQgw0YqEhugSV1howYQk', '2024-11-28 03:15:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:15:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:15:17', '2024-11-27 03:15:17'),
('VyyyuJ03IRAqyw9krj9_essxN87DSwkk', '2024-11-27 20:54:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:30', '2024-11-26 20:54:30'),
('V_uAPy-z6JwXsBlTcL-kHZZa1CLHY2XT', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('w1RqTV0bc3xCT4Y3KRmrR1CGqj7Yl1JD', '2024-11-27 17:15:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 16:15:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 17:15:20', '2024-11-26 17:15:20'),
('W6ojCylftsroLcOJGRrcx6t_rCpJfdUn', '2024-11-27 08:37:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:37:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 08:37:21', '2024-11-26 08:37:21'),
('WBdiFTOqvNje_YgFaC3rr2yy5umCiaJt', '2024-11-27 20:54:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:54:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:54:36', '2024-11-26 20:54:36'),
('wBqEzNMx3D-7kBL4sDo_AwtVE_PKt6zQ', '2024-11-27 16:45:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 15:45:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 16:45:18', '2024-11-26 16:45:18'),
('We-cOB4ztK90BC78luPz3X8dRsF4CSwx', '2024-11-28 02:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:00:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:00:17', '2024-11-27 02:00:17'),
('WH9iPh4cfsNKBQu3pTxS-IKojBgvaMti', '2024-11-28 10:15:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 09:15:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 10:15:21', '2024-11-27 10:15:21'),
('wMfUQhmw4dJW8Q33Tmuklnsn7Dv8qa-r', '2024-11-28 02:02:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:02:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:02:39', '2024-11-27 02:02:39'),
('WoEfBhv6VVeozvyIPdqEAIX2Msb0Ff31', '2024-11-27 10:45:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 09:45:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 10:45:18', '2024-11-26 10:45:18'),
('WpPDzKST00Ta6OszKCblAOP8W-2MBUP1', '2024-11-28 13:00:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 12:00:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 13:00:22', '2024-11-27 13:00:22'),
('WxBr9wnrTZN1AYYUKj_oDIrD4EaF5ATN', '2024-11-28 02:01:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:01:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:01:12', '2024-11-27 02:01:12'),
('x-gPgfuli-P0L91R9idoQDqak2SEjcIs', '2024-11-28 15:30:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 14:30:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 15:30:19', '2024-11-27 15:30:19'),
('X3xorvw_uj4udVQf5iOBIVhFqilOD7Ln', '2024-11-28 01:30:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:30:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:30:11', '2024-11-27 01:30:11'),
('XDNq2fQ76R3aQoQm3BkAvZ9nwBfrFdFU', '2024-11-27 23:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 22:30:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 23:30:24', '2024-11-26 23:30:24'),
('Xe8txJ9C26D9Ws2dj_fyLOQd5V-bZKWH', '2024-11-27 16:15:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 15:15:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 16:15:20', '2024-11-26 16:15:20'),
('xiZnxfmpwfMyIVL41M9Y4uVC_pQKPY_1', '2024-11-27 23:00:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 22:00:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 23:00:25', '2024-11-26 23:00:25'),
('XjdRBD4pcJwxsrr36RNUBeLqopNrZu_O', '2024-11-27 20:51:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:51:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:51:13', '2024-11-26 20:51:13'),
('Xjsp1wNGtx3gm6cYaQmk49gIuLQT6G_V', '2024-11-28 06:15:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:15:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:15:19', '2024-11-27 06:15:19'),
('XQdpwrpwxIU0mVT_hBIdlTYxG7lspcpF', '2024-11-28 03:44:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:44:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:44:09', '2024-11-27 03:44:10'),
('Y0IOG2JebWBpHwgL-_7y4m9C--W0ljjA', '2024-11-28 10:45:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 09:45:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 10:45:14', '2024-11-27 10:45:14'),
('Y0pVIr4tST7WErZsfDsT9I_IKhO7otVh', '2024-11-27 20:15:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:15:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:15:55', '2024-11-26 20:15:55'),
('YcgIM2pi0BHxquZdoxqWRzdifDJxP7kD', '2024-11-28 01:03:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:03:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:03:12', '2024-11-27 01:03:12'),
('YfhGN-dGmVqFuM9JLG0ffu05WVOryZWY', '2024-11-28 06:02:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:02:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:02:35', '2024-11-27 06:02:35'),
('YhIK2VvX34jtET9nqlCUZw7WVlRpl4hU', '2024-11-27 20:20:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:20:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:20:39', '2024-11-26 20:20:39'),
('yis_SEdxPjhgxMUANoGBL55OvP8LMO_S', '2024-11-27 08:37:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 07:37:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 08:37:21', '2024-11-26 08:37:21'),
('yXRf25JPhNP4Aj6rZDnnIvTt5JA5oJRq', '2024-11-28 06:10:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 05:10:03 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 06:03:47', '2024-11-27 06:10:03'),
('Z5OCPEsqooVY5xnRfd7J4K7-qVLLvslk', '2024-11-27 20:15:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:15:32 GMT+0700 (Western Indonesia Time)\",\"adminId\":9,\"adminRole\":\"surveyor\"}', '2024-11-26 20:10:38', '2024-11-26 20:15:32'),
('z7Hg-8rLNyLCzBiO0h8W55OPsoPBSqf2', '2024-11-28 01:45:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 00:45:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 01:45:17', '2024-11-27 01:45:17'),
('zgt1IQ_RtzYpCBfMhzmN5b95PuJbbdnf', '2024-11-28 03:44:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:44:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:44:09', '2024-11-27 03:44:09'),
('zh3pWIoi9xuea0_ZU1wFYmjf_plCUzyW', '2024-11-27 20:17:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:31', '2024-11-26 20:17:31'),
('Zjbj1MYbJrhT3_SWYvQkOxI09NFiMmAO', '2024-11-28 05:58:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:58:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:58:18', '2024-11-27 05:58:18'),
('ZK9UZnolPuF5ku4-XLjNdceTOCQJ-JIA', '2024-11-28 05:55:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:55:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:55:42', '2024-11-27 05:55:42'),
('ZL7Z3Yz9F-djnFk2-RmNN2pnMOKNZ0YI', '2024-11-28 10:00:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 09:00:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 10:00:19', '2024-11-27 10:00:19'),
('ZR0JoLTR3P9GQrvQx9byzMoYfCcKkvDS', '2024-11-27 13:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 12:30:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 13:30:24', '2024-11-26 13:30:24'),
('Zs4qGdZV4qsRrdhQwzCCfFEnywFcGv-I', '2024-11-27 20:22:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:22:40 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-26 20:18:39', '2024-11-26 20:22:40'),
('ZSGZw8NPoONlzPBBOsetR7sN6dKruzTm', '2024-11-28 02:01:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 01:01:00 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 02:01:00', '2024-11-27 02:01:00'),
('Zsh-0FthjH9lcvuBH6WIK1SNfKAwlUva', '2024-11-27 20:00:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:00:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:00:06', '2024-11-26 20:00:06'),
('ZX7HczfR6ygUy8ZuuYtTnXQT8UMlwn8r', '2024-11-27 20:17:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 19:17:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-26 20:17:31', '2024-11-26 20:17:31'),
('ZXBk281uY4L5U5YZ4geUcpvojV8YoIKY', '2024-11-28 03:43:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 02:43:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 03:43:46', '2024-11-27 03:43:46'),
('ZYLZlbIIASlkuxpEV1FFOHL5PtaK5SkH', '2024-11-28 05:30:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 04:30:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 05:30:22', '2024-11-27 05:30:22'),
('_pt5sH10xjhhCNTwe4kQhMC9vRepNxAI', '2024-11-28 04:27:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Wed Nov 27 2024 03:27:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 04:27:27', '2024-11-27 04:27:27'),
('_pTZDXFYT9qZGytcBPevW4khb2Kv03-A', '2024-11-28 00:58:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 26 2024 23:58:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-27 00:58:46', '2024-11-27 00:58:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Admins`
--
ALTER TABLE `Admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `Datarecaps`
--
ALTER TABLE `Datarecaps`
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
-- Indexes for table `Sessions`
--
ALTER TABLE `Sessions`
  ADD PRIMARY KEY (`sid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Admins`
--
ALTER TABLE `Admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `Datarecaps`
--
ALTER TABLE `Datarecaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Datarecaps`
--
ALTER TABLE `Datarecaps`
  ADD CONSTRAINT `Datarecaps_ibfk_1` FOREIGN KEY (`adminId`) REFERENCES `Admins` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `fotos`
--
ALTER TABLE `fotos`
  ADD CONSTRAINT `fotos_ibfk_1` FOREIGN KEY (`questionnaireId`) REFERENCES `questionnaire` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `questionnaire`
--
ALTER TABLE `questionnaire`
  ADD CONSTRAINT `questionnaire_ibfk_1` FOREIGN KEY (`AdminId`) REFERENCES `Admins` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
