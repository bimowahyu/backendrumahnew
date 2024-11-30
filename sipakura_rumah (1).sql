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
(67, 'Berpenghuni', 121, 121, 'Test penghasilan 0', 26, '1998-10-24', 'Perempuan', '2222222222222222', '2222222222222222', 'KSB', 2, 6, 'Jl.kesana kemari happy', 'Poto Tano', 'Kiantar', 'D4/S1', 'ASN', 'Rumah Tinggal/Hunian', 0, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '1300', 'Tidak Pernah', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Plesteran', 'Layak', 'Genteng Biasa', 'Layak', 80, 100, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Bersama/MCK Komunal', 1, 'Leher Angsa', 'Pabrikasi', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 11, 'Mata Air', '-6.9986277, 110.4344014', '', '2024-11-22', 3, 10, 'Rumah Layak Huni');


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
