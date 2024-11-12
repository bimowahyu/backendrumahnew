-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 12, 2024 at 09:20 PM
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
(8, 'irfan', 'irfan@gmail.com', '$argon2id$v=19$m=65536,t=3,p=4$NkPBRDs8514Jj6s5AXPWmg$Tn6if4r2zy1/wDBuZMGG9jzDq0yx+y46pmD8JhsLtTo', 'surveyor', '2024-11-12 09:41:48', '2024-11-12 09:41:48');

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
(4, 14, 'images/14_1731046846185.webp', '2024-11-08 13:20:46', '2024-11-08 13:20:46'),
(5, 16, 'images/16_1731054375531.jpeg', '2024-11-08 15:26:15', '2024-11-08 15:26:15'),
(6, 15, 'images/15_1731061841433.jpg', '2024-11-08 17:30:41', '2024-11-08 17:30:41'),
(11, 35, 'images/35_1731209115756.png', '2024-11-10 11:25:15', '2024-11-10 11:25:15'),
(13, 43, 'images/43_1731408348632.webp', '2024-11-12 18:45:48', '2024-11-12 18:45:48');

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
(2, '1731408031899.pdf', 'uploads/pdf/1731408031899.pdf', '2024-11-12 18:40:31', '2024-11-12 18:40:31');

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
  `nomorKTP` varchar(255) NOT NULL,
  `asalKTP` varchar(255) NOT NULL,
  `jumlahKK` int(11) NOT NULL,
  `jumlahPenghuni` int(11) NOT NULL,
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
  `luasRumah` int(11) NOT NULL,
  `luasTanah` int(11) NOT NULL,
  `buanganAirLimbahRumahTangga` varchar(255) NOT NULL,
  `saranaPengelolaanLimbahCair` varchar(255) NOT NULL,
  `pemiliharaanSaranaPengelolaanLimbah` varchar(255) NOT NULL,
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
(14, 'Berpenghuni', 99, 10, 'buatbaru test kolom status rumah', 39, NULL, 'Perempuan', '1111111111111111', '1111111111111111', 'Luar KSB', 1, 4, 'Tanjung Priok', 'Brang Ene', 'Mujahidin', 'D4/S1', 'TNI/POLRI', 'Rumah Tinggal/Hunian', 3400000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Ada', 'PLN tanpa Meteran', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Spandek', 'Layak', 'Asbes', 'Layak', 80, 120, 'Jaringan Perpipaan', 'Tidak Berfungsi', 'Tidak Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Luar Rumah', 9, 'Mata Air', '-7.0051546, 110.4381371', '', '2024-11-08', 2, 16, 'Rumah Layak Huni'),
(15, 'Berpenghuni', 12, 12, 'test all', 12, NULL, 'Laki-laki', '1111111111111111', '1111111111111111', 'Luar KSB', 1, 4, 'test', 'Poto Tano', 'Kiantar', 'D4/S1', 'DPRD', 'Rumah Tinggal/Hunian', 4000000, 'Bukan Milik Sendiri', 'Ada', 'Tanah Negara', 'Ada', 'PLN tanpa Meteran', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Tanah', 'Layak', 'Spandek', 'Layak', 'Spandek', 'Layak', 80, 120, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'Sumur/Sumur Bor', '-7.0582272, 110.42816', '', '2024-11-08', 2, 16, 'Rumah Layak Huni'),
(16, 'Berpenghuni', 13, 13, 'test baru all lagi', 20, NULL, 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 12, 'Tanjung Priok', 'Maluk', 'Benete', 'D4/S1', 'BPD', 'Rumah Tinggal/Hunian', 3400000, 'Milik Sendiri', 'Tidak Ada', 'Bukan Milik Sendiri', 'Ada', 'PLN dengan Meteran', '2200', 'Pernah, <10 Tahun', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Rabat ', 'Layak', 'Tembok Plesteran', 'Layak', 'Multiroof', 'Layak', 100, 140, 'Diresapkan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Dinding Beton', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'PDAM', '', '-6.963840, 110.525946', '2024-11-08', 2, 3, 'Rumah Layak Huni'),
(35, 'Berpenghuni', 12, 12, 'Bujirdin', 55, NULL, 'Laki-laki', '5207013112740001', '5207013112740001', 'KSB', 1, 6, 'RT. 001 RW. 002', 'Maluk', 'Maluk', 'SD/Sederajat', 'Pedagang', 'Rumah Tinggal/Hunian', 1500000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Tidak Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Keramik', 'Layak', 'Tembok Plesteran', 'Layak', 'Spandek', 'Tidak Layak', 88, 200, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 11, 'Air Kemasan/Isi Ulang', '-8.9165731, 116.7535123', '', '2024-11-10', 7, 8, 'Rumah Layak Huni'),
(38, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, NULL, 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(40, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, NULL, 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni'),
(41, 'Berpenghuni', 22, 22, 'Ardi_KTC', 30, NULL, 'Laki-laki', '5207013112740001', '5207013112740001', 'KSB', 1, 5, 'RT. 001 RW. 002', 'Taliwang', 'Menala', 'D4/S1', 'Pedagang', 'Rumah Tinggal/Hunian', 2200000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '900', 'Pernah, >10 Tahun', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Marmer/Granit', 'Layak', 'Papan Kayu', 'Layak', 'Spandek', 'Layak', 58, 100, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'Air Kemasan/Isi Ulang', '-8.7560577, 116.8535343', '', '2024-11-11', 7, 3, 'Rumah Layak Huni'),
(42, 'Berpenghuni', 22, 22, 'Ardi_KTC', 30, NULL, 'Laki-laki', '5207013112740001', '5207013112740001', 'KSB', 1, 5, 'RT. 001 RW. 002', 'Taliwang', 'Menala', 'D4/S1', 'Pedagang', 'Rumah Tinggal/Hunian', 2200000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '900', 'Pernah, >10 Tahun', 'Permanen', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Marmer/Granit', 'Layak', 'Papan Kayu', 'Layak', 'Spandek', 'Layak', 58, 100, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Dalam Rumah', 9, 'Air Kemasan/Isi Ulang', '-8.7560577, 116.8535343', '', '2024-11-11', 7, 3, 'Rumah Layak Huni'),
(43, 'Berpenghuni', 1, 1, 'Kamila', 4, '2020-03-10', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 1, 3, 'Batu putih', 'Taliwang', 'Batu Putih', 'SD/Sederajat', 'Petani/Pekebun', 'Rumah Tinggal/Hunian', 1200000, 'Milik Sendiri', 'Tidak Ada', 'Milik Sendiri', 'Ada', 'PLN dengan Meteran', '900', 'Tidak Pernah', 'Panggung', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Papan Kayu', 'Layak', 'Papan Kayu', 'Layak', 'Spandek', 'Layak', 24, 100, 'Buang Bebas', 'Berfungsi Baik', 'Tidak Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Leher Angsa', 'Pabrikasi', 'Fiber', 'Kedap', 'Ada', 'Luar Rumah', 9, 'SPAMDES', '-8.735493333333332, 116.80059333333332', '', '2024-11-12', 8, 4, 'Rumah Layak Huni'),
(44, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(45, 'Berpenghuni', 1, 123, 'Test', 35, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', 'Sarjana', 'Karyawan Swasta', 'Tempat Tinggal', 10000000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'Listrik', '1300', 'Tidak', 'Minimalis', 'Beton', 'Beton', 'Besi', 'Gypsum', 'Beton', 'Beton', 'Kayu', 'Ada', 'Keramik', 'Baik', 'Batu Bata', 'Baik', 'Genteng', 'Baik', 100, 120, 'Sistem Pipa', 'Kanal', 'Rutin', 'Septik Tank', 'Milik Sendiri', 2, 'Kloset Duduk', 'Beton', 'Beton', 'Tanah', 'Ada', 'Belakang Rumah', 10, 'PDAM', NULL, '-7.115142, 109.951829', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(46, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, '1970-01-01', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni'),
(47, 'Berpenghuni', 1, 123, 'Test Upload baru', 35, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Maluk', 'Bukit Damai', 'S2', 'Karyawan Swasta', 'Rumah Tinggal/Hunian', 900000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Tidak Ada', 'Listrik Non PLN', '1300', 'Pernah, <10 Tahun', 'Semi Permanen', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Layak', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Tanah', 'Tidak Layak', 'Spandek', 'Layak', 'Asbes', 'Tidak Layak', 100, 120, 'Jaringan Perpipaan', 'Tidak Tersedia', 'Terpelihara', 'Pantai/Tanah Lapangan/Kebun', 'Bersama/MCK Komunal', 2, 'Leher Angsa', 'Pabrikasi', 'Batu Bata', 'Kedap', 'Tidak Ada', 'Luar Rumah', 9, 'PDAM', '-6.200000,106.816666', NULL, '2024-11-05', 1, 49, 'Rumah Tidak Layak Huni'),
(48, 'Berpenghuni', 1, 123, 'Test', 35, '1970-01-01', 'Laki-laki', '1.23456789101123e15', '1.23456789101123e15', 'KSB', 1, 4, 'Jl. Kebon Jeruk No. 10', 'Kebon Jeruk', 'Kebon Jeruk', 'Sarjana', 'Karyawan Swasta', 'Tempat Tinggal', 10000000, 'Milik Sendiri', 'Ada', 'Milik Sendiri', 'Ada', 'Listrik', '1300', 'Tidak', 'Minimalis', 'Beton', 'Beton', 'Besi', 'Gypsum', 'Beton', 'Beton', 'Kayu', 'Ada', 'Keramik', 'Baik', 'Batu Bata', 'Baik', 'Genteng', 'Baik', 100, 120, 'Sistem Pipa', 'Kanal', 'Rutin', 'Septik Tank', 'Milik Sendiri', 2, 'Kloset Duduk', 'Beton', 'Beton', 'Tanah', 'Ada', 'Belakang Rumah', 10, 'PDAM', NULL, '-7.115142, 109.951829', '2024-11-05', 1, 3, 'Rumah Layak Huni'),
(49, 'Berpenghuni', 1, 1, 'upload otomatis ', 14, '1970-01-01', 'Laki-laki', '1111111111111111', '1111111111111111', 'KSB', 4, 2, 'test', 'Brang Ene', 'Mataiyang', 'S3', 'Bupati', 'Rumah Toko (RUKO)', 4300000, 'Kontrak/Sewa', 'Tidak Ada', 'Tanah Negara', 'Tidak Ada', 'Bukan Listrik', '2200', 'Tidak Pernah', 'Semi Permanen', 'Tidak Layak', 'Tidak Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Layak', 'Tidak Layak', 'Bambu', 'Layak', 'Papan Kayu', 'Tidak Layak', 'Asbes', 'Layak', 100, 132, 'Jaringan Perpipaan', 'Berfungsi Baik', 'Terpelihara', 'Tangki Septik', 'Sendiri', 1, 'Cubluk/Cemplung', 'Konvensional', 'Dinding Beton', 'Kedap', 'Ada', 'Luar Rumah', 9, 'PDAM', '-7.0051546, 110.4381371', '', '2024-11-06', 1, 33, 'Rumah Layak Huni');

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
('-2w28s1vO9xLXbP9ggjW4KitfnDEZQXk', '2024-11-13 18:32:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:32:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:32:35', '2024-11-12 18:32:35'),
('-5bK1GPurLU8vlBbtppN7MuYZGDMJfHc', '2024-11-13 18:49:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:49:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:49:13', '2024-11-12 18:49:13'),
('-aDzbb7oZsOm8Upe8aL2xxSRz8O4Matj', '2024-11-13 19:13:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:13:50 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:13:50', '2024-11-12 19:13:50'),
('-iUWWxceb_Kqerp1t6CuwhO53bV-OLZn', '2024-11-13 09:50:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:26', '2024-11-12 09:50:26'),
('-L_zN7Xv9XE7M_NwWLDTgGH04nxH-eFH', '2024-11-13 04:42:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 03:42:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 04:42:36', '2024-11-12 04:42:36'),
('-XisoGkGhODMZ2hlVAEnp3NT8ADjrIO1', '2024-11-12 22:15:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:15:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:15:08', '2024-11-11 22:15:08'),
('-ytkIH1lihj26BUorCmZlLREX-DhNS5Q', '2024-11-13 09:56:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:56:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:56:42', '2024-11-12 09:56:42'),
('0a0HIHBiiqVenqnwJcfLE7iqC1-SQ9LS', '2024-11-13 18:56:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:56:32 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:56:32', '2024-11-12 18:56:32'),
('0adwpqEzDgkn9sNMkGLLsxBmNkAbG6TO', '2024-11-13 19:25:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:25:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:25:24', '2024-11-12 19:25:24'),
('0c6RWJJ3FKhCI4eilTz_Ylyw5IGhgjRQ', '2024-11-13 10:20:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:20:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:20:55', '2024-11-12 10:20:55'),
('0fLMypmtfhYT3jNcoVxFAqrYHn_67kNm', '2024-11-13 17:49:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:49:41 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:49:41', '2024-11-12 17:49:41'),
('0OwnuzmHuM2YafozcD2OlUqB7dDE7pdp', '2024-11-13 21:59:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:59:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:59:21', '2024-11-12 21:59:21'),
('0rlN_Nds4Am45VtRqOruvks28kG3YVDa', '2024-11-13 19:27:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:27:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:27:47', '2024-11-12 19:27:47'),
('0T2tlW1Hf4yKU1ydDRd23PH8nDf3GoYN', '2024-11-13 19:20:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:20:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:20:31', '2024-11-12 19:20:31'),
('0yOZM8bPwLYcU1uWDuqtzlhaTX3qxiQF', '2024-11-12 22:02:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:02:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:02:10', '2024-11-11 22:02:10'),
('1G9f5mV79S46wg-t01BAoAX-YEahnCCS', '2024-11-13 20:43:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:43:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:43:13', '2024-11-12 20:43:13'),
('1hQR8wHPkJzQI9qj1bf517g8G6kpUSja', '2024-11-13 19:53:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:20', '2024-11-12 19:53:20'),
('1iOXzYvZ9AciEYabTcKWQrdSJzJaAhw1', '2024-11-13 18:28:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:19', '2024-11-12 18:28:19'),
('1ll2asWbQTjAmGnwY60uSMH5yvzEh380', '2024-11-13 18:11:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:11:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:11:39', '2024-11-12 18:11:39'),
('1PKXjQ1NbgxSsiAecemGoGAIQV3F6zEY', '2024-11-13 18:30:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:28', '2024-11-12 18:30:28'),
('1_YJcwkLI0Zq_VmKQ4dsDQvnWmXGlY8c', '2024-11-12 22:07:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:07:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:07:42', '2024-11-11 22:07:42'),
('2eazdR5Nw4GLB5ZQmod_hEwGpBDkaiVu', '2024-11-13 18:49:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:49:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:49:13', '2024-11-12 18:49:14'),
('2ISYq7IIUpQQ70BoHPbtqexO4bOb9cSv', '2024-11-13 19:23:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:57 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:23:57', '2024-11-12 19:23:57'),
('2rMDm2mTQq-EmXvbVvnCQiqKVV1HWDPn', '2024-11-13 07:10:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:10:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:10:28', '2024-11-12 07:10:28'),
('2WBIOxeTcXl_NBP5MqZ4rdNO9uF4cXPT', '2024-11-13 19:20:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:20:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:20:43', '2024-11-12 19:20:43'),
('2x-nQ3Oououp6TbEnqB_W_8U73DxFbyT', '2024-11-13 21:57:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:57:56 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:57:56', '2024-11-12 21:57:56'),
('2_c8sGUGUVbuT5moECOEz0XcM_1ZMVvo', '2024-11-12 22:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:37'),
('3-Tqc7ZtqeODVyaEmL_2Lj7lIoxrf8o7', '2024-11-13 09:47:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:47:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:47:02', '2024-11-12 09:47:02'),
('3awHmuYCwPNMwPPEm3CtzUdiac7HniyS', '2024-11-13 19:53:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:25', '2024-11-12 19:53:25'),
('3dN1w8Dm1-0kmp4L60E0YPZtFUnaKJJ7', '2024-11-13 19:30:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:30:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:30:05', '2024-11-12 19:30:05'),
('3mXA1n5qYS0dnnVCIlinqy7XHsTVB1HI', '2024-11-13 09:50:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:56 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:56', '2024-11-12 09:50:56'),
('3Q2lMRp2vz0fr0I5oub4Ebj8HhTb4MVZ', '2024-11-13 19:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:15:05', '2024-11-12 19:15:05'),
('3QtZHMYj7dxqisW8Q0wZ4kWWOEhaysIu', '2024-11-13 19:20:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:20:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:20:37', '2024-11-12 19:20:37'),
('3tXgACHbZIFu2165Q-Z7wQycQE3c4lIQ', '2024-11-13 05:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:00:12', '2024-11-12 05:00:12'),
('3UYNQ-UKgRk2bHfGnyFplMdv4hh-Il1z', '2024-11-13 17:39:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:39:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:39:22', '2024-11-12 17:39:22'),
('3vsik6dMD2KzzSSZtoLmRwIVixquOg72', '2024-11-12 23:30:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:30:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:30:17', '2024-11-11 23:30:17'),
('3_7406H6sD8Q6T25f034dNScxvRL51lJ', '2024-11-13 18:29:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:32', '2024-11-12 18:29:32'),
('48BkvEBmBbrQXxfRsoyqqkjsi9L5_jjx', '2024-11-13 13:13:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:13:54 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:13:54', '2024-11-12 13:13:54'),
('4H8AU-hMBJEnAyZPi-TWu9MJs5X58PYA', '2024-11-13 19:20:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:20:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:20:31', '2024-11-12 19:20:31'),
('4KMwEy8_EcD0S1Ok4vbrWjw2LfmXFAUw', '2024-11-13 16:30:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:30:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:30:08', '2024-11-12 16:30:08'),
('4MIeQq0j4H_R2lcyTe1oreBW5ZlN42P7', '2024-11-13 18:50:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:50:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:50:47', '2024-11-12 18:50:47'),
('4zFJzcn8pNkLysBnVt4AVO4z4G9MVEjc', '2024-11-13 09:47:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:47:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:47:02', '2024-11-12 09:47:02'),
('5c8mJ0xL8cCa3heg51gD9r7fC7c5zSBG', '2024-11-13 19:36:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:36:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:36:28', '2024-11-12 19:36:28'),
('5DAhUBMYmXROfYNsBfbg0-_PVCgr7sWZ', '2024-11-13 00:24:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:24:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:24:14', '2024-11-12 00:24:14'),
('5GPaH7AH-XanWmbTXDee7cUvkQAhICGv', '2024-11-13 18:49:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:49:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:49:19', '2024-11-12 18:49:19'),
('5HgvBcrDUB6k0Ru0YALDvfc5XGU7yNu5', '2024-11-13 13:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:45:06', '2024-11-12 13:45:06'),
('5l98WphIlfj6UQIw_aEMGlOdX5jAcEvE', '2024-11-13 00:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:15:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:15:14', '2024-11-12 00:15:14'),
('5Mnd-whM_v7UDhAlQCsXGiVGxEFhBg9E', '2024-11-13 09:13:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:13:01 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:45', '2024-11-12 09:13:01'),
('5nZIW1lV_Xc0XVbYdR886xQb6r8rcyOc', '2024-11-13 09:12:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:28', '2024-11-12 09:12:28'),
('5p2aLgHc2ehOeGib0rTL9h5uN5FPutxT', '2024-11-13 15:15:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 14:15:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 15:15:13', '2024-11-12 15:15:13'),
('5QFyE-KLN1GytEodpZ7VFnrBjmX-AHCX', '2024-11-13 07:10:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:10:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:10:10', '2024-11-12 07:10:10'),
('5UVWATySG55L99W9-6Aw-IMcP0OcKdLq', '2024-11-13 09:12:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:30', '2024-11-12 09:12:30'),
('6-LpjgwIukmHwlzXZZYZFtr0mGMEOGuA', '2024-11-13 18:29:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:34', '2024-11-12 18:29:34'),
('64NgAHSwuDBZml0CSgeHljJvDVt2sbtZ', '2024-11-13 13:21:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:21:52 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:21:52', '2024-11-12 13:21:52'),
('68DAlgFznejRn1U4ALmRW3gs4vpceosh', '2024-11-13 19:53:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:06', '2024-11-12 19:53:06'),
('6aR52D4sIVkYeU35MNj09p45ymrBDpoJ', '2024-11-13 20:48:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:48:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:48:31', '2024-11-12 20:48:31'),
('6JDt_yPD-8i73lWqGHBjANr7RLWaK9Wq', '2024-11-13 05:52:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:52:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:52:06', '2024-11-12 05:52:07'),
('6OwvrvPyDL8OLCbwCi_atRdnXZk0BAzk', '2024-11-13 19:35:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:35:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:35:44', '2024-11-12 19:35:44'),
('6RuN3ojvNixj6qnVy3kpnpQ22-Do6N9j', '2024-11-13 10:45:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:45:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:45:05', '2024-11-12 10:45:05'),
('7g8KRBrRMiDBW6LrJVaid83w9yZCPsMt', '2024-11-13 15:45:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 14:45:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 15:45:12', '2024-11-12 15:45:12'),
('7JiDrJc34GcOmzXlEs4_IjUFMWx_65o8', '2024-11-13 09:49:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:49:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:49:45', '2024-11-12 09:49:45'),
('7k1AoyBczhktC-r7CjqUhhvRDQc6QHAm', '2024-11-13 13:25:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:25:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:25:35', '2024-11-12 13:25:35'),
('7M71SF0-ba2-N8AecjEjuIYtQY6INh-q', '2024-11-13 20:52:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:52:00 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:52:00', '2024-11-12 20:52:00'),
('7Nd_ivXWPQs5VJlsT_A069vAHzxjeEPf', '2024-11-13 07:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:45:06', '2024-11-12 07:45:06'),
('7WItSxo_NU8m8Vy_xZHGIpw7spEQZZQL', '2024-11-13 18:28:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:23', '2024-11-12 18:28:23'),
('81HV_JDcCunrJzDNveJ4xw9gYfBgH9Rc', '2024-11-13 18:30:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:24', '2024-11-12 18:30:24'),
('83DljyLwGKw7iLyBAbQdUYhj-O9V8I1h', '2024-11-13 13:19:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:19:53 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:19:53', '2024-11-12 13:19:53'),
('84CcgT0x3I-WDzUMVUacK56NTWWSuEeV', '2024-11-13 00:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:30:09', '2024-11-12 00:30:09'),
('8dDekKVdpscaxd9ln-b1WfMGaTvtJE8_', '2024-11-12 22:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:37'),
('8DFA1ZefibaGxlF-MkcwQooQvj9YMPvV', '2024-11-13 02:45:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 01:45:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 02:45:07', '2024-11-12 02:45:07'),
('8JnYuUh_vwExs9UPg3Jc91RP4t6UpHqg', '2024-11-13 17:40:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:40:46 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 17:39:07', '2024-11-12 17:40:46'),
('8oRvwSdV0RRQbFFxaYEBvLptHmzx5BZ4', '2024-11-13 18:49:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:49:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:49:13', '2024-11-12 18:49:13'),
('91kpkB-2XIFiiyYnSkO3qSx6YWyyIzsJ', '2024-11-13 19:25:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:25:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:25:24', '2024-11-12 19:25:24'),
('9H7VC40ldYIkJAiUQ5Ak9RD7Ka9Itics', '2024-11-13 19:23:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:53 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:23:53', '2024-11-12 19:23:53'),
('9O_koFpLSikual65aDGBQURokQSI5uy5', '2024-11-13 00:23:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:23:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:23:21', '2024-11-12 00:23:21'),
('9Pmn5b5g6bEGu_GF2r8L8U4q91MiN91Q', '2024-11-13 19:35:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:35:52 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:35:52', '2024-11-12 19:35:52'),
('9PPKbLjSbWZbD9F_k7coInbcCIZxeGVg', '2024-11-13 21:45:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:45:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:45:07', '2024-11-12 21:45:07'),
('9RYF2_8HRRG8kVHM9n2G6LviWgeZhSNP', '2024-11-13 06:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:45:06', '2024-11-12 06:45:06'),
('9YK_WV7XSxxbdc6w7Wyz8vVk0eU9N5h5', '2024-11-13 18:32:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:32:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:32:29', '2024-11-12 18:32:29'),
('9ZIh0nExsK4JQJj_8P5UlaDbvk7yFpxQ', '2024-11-12 22:30:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:30:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:30:15', '2024-11-11 22:30:15'),
('AaBInEYJSH58Vv93yi2FW6i-1lB6sX29', '2024-11-13 13:36:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:36:59 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:36:59', '2024-11-12 13:36:59'),
('ABprnmyRVjtz2Ds6MqruvFKbkwyYGsZ5', '2024-11-13 00:23:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:23:58 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:23:58', '2024-11-12 00:23:58'),
('aF4cVULz7Lkly7xNnqkX9wnkG-ZRGBL8', '2024-11-13 18:32:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:32:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:32:29', '2024-11-12 18:32:29'),
('ahBeN2pMubmIE7KbWYaHldZQh005P3o1', '2024-11-13 20:51:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:51:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:51:13', '2024-11-12 20:51:20'),
('ajg23Drrpt667Ycegb4PR63ihHp8BuMG', '2024-11-13 17:49:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:49:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:49:42', '2024-11-12 17:49:42'),
('akILNpgH19LzOC0i03Cqerr8pPJtdEnk', '2024-11-13 02:30:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 01:30:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 02:30:10', '2024-11-12 02:30:10'),
('AL_Z-V6CcF0ATsF-P3YcxUcXe8csOO6r', '2024-11-13 19:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:00:12', '2024-11-12 19:00:12'),
('amlDjyQwj6jyThmI88quxKNgtjahyol6', '2024-11-13 18:30:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:14', '2024-11-12 18:30:14'),
('anqD27YER1Mq4A2zHdP1EhCS1ulOu8SL', '2024-11-13 06:43:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:43:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:43:15', '2024-11-12 06:43:15'),
('AOwcvBh3Zj3AWGRV7tQlYacVWGZvjWw4', '2024-11-13 22:08:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 21:08:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 22:08:36', '2024-11-12 22:08:36'),
('aQ2ZsR2ASY4WcglJQ4oMzTWbi3Vk8khH', '2024-11-13 19:06:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:14', '2024-11-12 19:06:14'),
('AVhB6fLXFW5cK_oWQvTpE81zOAD6uoRx', '2024-11-13 21:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:00:12', '2024-11-12 21:00:12'),
('b-UT3BKAEuE1q_KfGkYafwu8LROuSMG-', '2024-11-12 22:09:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:48 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:48'),
('bCL8TUGzsyw9tzsdXF6kOz8eIuNSdpH1', '2024-11-13 18:44:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:44:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:44:45', '2024-11-12 18:44:46'),
('BeD4a2wvgymGyGK3oTSIAKiz1Lbvdy85', '2024-11-13 08:47:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:47:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:47:13', '2024-11-12 08:47:13'),
('bGn2Wb2BSHq7dyUK5NgSSwIrWV7Mks5y', '2024-11-13 19:28:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:28:04 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:28:04', '2024-11-12 19:28:04'),
('Biq4_zYBVhZ9LJeZQoBiU9fZwx7IlFeL', '2024-11-12 23:44:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:44:32 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:44:32', '2024-11-11 23:44:32'),
('Bnnr5AlmCEqFSL6xWiv6TJx9JCMpZfWf', '2024-11-13 14:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 13:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 14:15:05', '2024-11-12 14:15:05'),
('BuhiKvyY4odA5t9yVgHmLHiLlylqXxxH', '2024-11-13 17:40:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:40:32 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:40:32', '2024-11-12 17:40:32'),
('BVSg01gjhcSUZEc42p3k8ODiUwfko5s-', '2024-11-13 19:23:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:23:44', '2024-11-12 19:23:44'),
('bxp9jE9vWnmVRH6HBS0X9-ZXwBFP0vMJ', '2024-11-13 20:51:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:51:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:51:13', '2024-11-12 20:51:13'),
('bYjh-j98KNTyePuSwDlbi6A5zvw22k2W', '2024-11-12 23:15:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:15:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:15:13', '2024-11-11 23:15:13'),
('cIz7HeJBgqaK_yFSnuBsSpK_3x39sRjs', '2024-11-13 15:00:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 14:00:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 15:00:22', '2024-11-12 15:00:22'),
('CjtczYwkgvipWey1KYW12qWCoj0cbFVV', '2024-11-13 18:45:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:45:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:45:21', '2024-11-12 18:45:21'),
('cKUzYAKLj206_X3mjPdbfivVbtiIXLlZ', '2024-11-13 05:44:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:44:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:44:11', '2024-11-12 05:44:21'),
('cMmvdbfNW4EeYel3uzdVdzvCVyP4z1S2', '2024-11-13 10:20:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:20:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:20:51', '2024-11-12 10:20:51'),
('cMmWZzqeTHLGffrSFIwyaVrHIuAsmF5q', '2024-11-12 23:44:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:44:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:44:12', '2024-11-11 23:44:13'),
('CxveIvCGfDZ2hgrqYpVuqueK4VFkYSXI', '2024-11-13 19:06:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:14', '2024-11-12 19:06:14'),
('D29A9l1J9hDD7LdujlQnKPMAiPjJh3d2', '2024-11-13 17:50:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:50:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:50:11', '2024-11-12 17:50:11'),
('d2f7cv-VMikB7-5JOhnt-ccRrhqDJfUX', '2024-11-13 11:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:15:05', '2024-11-12 11:15:05'),
('D5PIWMOLwHE7JIsR2_q71-UzJ8v6Kd8m', '2024-11-13 09:12:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:45', '2024-11-12 09:12:45'),
('DC-S91ExSESi7a54jH959nR_H6VpQ7RR', '2024-11-13 19:52:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:52:57 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:52:57', '2024-11-12 19:52:57'),
('ddfTsud_V1FnsiKNZnArmEK4DnCuIOrr', '2024-11-13 19:53:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:19', '2024-11-12 19:53:19'),
('ddSPlu0F0H-jkqYZFwQNoo-KzdXJtAg0', '2024-11-12 22:06:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:06:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:06:23', '2024-11-11 22:06:23'),
('dGERwuQ-PEy7MKueLKE0KTtgEW1625wR', '2024-11-13 08:47:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:47:40 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:47:40', '2024-11-12 08:47:40'),
('dN5EjBZVM25jiN85fkCdmb4bB_jYNbTW', '2024-11-13 19:06:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:25', '2024-11-12 19:06:25'),
('dn7vbe7MCwp0vFFvBcBgiBw13z5tnV__', '2024-11-13 19:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:30:09', '2024-11-12 19:30:09'),
('dPH3n3C_lbP5uXSIxTzX0AFzQdQAh2Vf', '2024-11-13 05:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:45:06', '2024-11-12 05:45:06'),
('dRZKB02517GZQhe6BsJylV6cSBXYehgn', '2024-11-13 18:28:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:26', '2024-11-12 18:28:26'),
('DTi8QpM6DZmOcqMLq7S4nw-zooi8q7M0', '2024-11-13 18:29:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:43', '2024-11-12 18:29:43'),
('e2Dn8ZG5ClGimNKiR2Td0COeojVkHUsd', '2024-11-13 19:06:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:17', '2024-11-12 19:06:17'),
('E3d5TGJVhfLRWDABsOm5kdufvu9aMdiO', '2024-11-13 16:44:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:44:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:44:09', '2024-11-12 16:44:10'),
('egymKeLFudSFl0_KmAo7IJp02hHXhc5z', '2024-11-13 03:00:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 02:00:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 03:00:19', '2024-11-12 03:00:19'),
('eh_9SVNgoA0dyWToKJxv-OiCdTmACHo8', '2024-11-13 10:46:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:46:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:46:15', '2024-11-12 10:46:15'),
('Eqoqx4L8ukqwMh40rmOgv51xWiAdZL2k', '2024-11-13 10:35:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:35:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:35:28', '2024-11-12 10:35:28'),
('eR3bmWlC0U98HnnPGhhLnM2nFhgUgU_k', '2024-11-13 13:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:15:05', '2024-11-12 13:15:05'),
('ET_xY6DcUvU8Fh3VifIOzTj7IX7jjA7k', '2024-11-13 19:53:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:19', '2024-11-12 19:53:19'),
('EuCrPuyck9Z_y_i88T7NdeomjmBvajiN', '2024-11-13 18:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:15:05', '2024-11-12 18:15:05'),
('ewPV6hKBaXZgVHeaxPvjAZs_eKkD7rV2', '2024-11-13 03:45:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 02:45:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 03:45:13', '2024-11-12 03:45:13'),
('exq5DHMzCNXTCBvDtGawR5k6aLo_UlXd', '2024-11-13 18:22:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:22:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:22:43', '2024-11-12 18:22:43'),
('fE4Ox2YgzQ5y_nyQj3MdMUw-C2ixKPS6', '2024-11-13 00:25:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:25:58 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:25:35', '2024-11-12 00:25:58'),
('FEwM4kShUr2naxztLDoedvmzq7VNFpMH', '2024-11-13 05:44:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:44:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:44:11', '2024-11-12 05:44:11'),
('fHeDSrkBhlHh5-H9f9LflUdebrBFzLIY', '2024-11-12 22:09:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:47', '2024-11-11 22:09:47'),
('FjtS7mGuTf30zGfhEbeNOCVJhLYMzyWH', '2024-11-13 19:31:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:31:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:31:48', '2024-11-12 19:31:48'),
('FpEq6-dDXjwFwfoPbt019nQ6Am36nxZt', '2024-11-13 19:27:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:27:58 GMT+0700 (Western Indonesia Time)\",\"adminId\":3,\"adminRole\":\"admin\"}', '2024-11-12 19:06:14', '2024-11-12 19:27:58'),
('FQ5j5nIJy_zKgDO_xBEhyaLih5KevkU_', '2024-11-13 10:42:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:42:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:42:29', '2024-11-12 10:42:29'),
('FswDzUXexivECmNlJwzui9k0OWOG-sV9', '2024-11-13 09:30:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:30:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:30:15', '2024-11-12 09:30:15'),
('FToO2Fm7H9jn6Renh1bgg1wiWHZeSwg7', '2024-11-13 09:50:00', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:00 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:00', '2024-11-12 09:50:00'),
('fw6jRuDyrDLOllYKW1PE95sq1h18yXl-', '2024-11-13 19:52:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:52:03 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:52:03', '2024-11-12 19:52:03'),
('G9xmJ8deiB_hJtItqHUxLLIMOv6zM_EY', '2024-11-13 09:45:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:45:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:45:05', '2024-11-12 09:45:05'),
('gARz8Q9kXGaHbhXpH5YCPGiVSLvrt3Jd', '2024-11-13 20:48:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:48:33 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:48:33', '2024-11-12 20:48:33'),
('gDdyo4A3xivJt7SwqY-c_N1LuKDuzLRx', '2024-11-13 07:28:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:28:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:28:09', '2024-11-12 07:28:09'),
('gdMNzAyfWJEUNxwfXVK-01CDfWZYOx-r', '2024-11-13 19:35:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:35:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:35:44', '2024-11-12 19:35:44'),
('ges1w-X1bLeHRop7PZ9J3MZYk_Eofa6d', '2024-11-12 23:00:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:00:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:00:21', '2024-11-11 23:00:21'),
('GnGmMBQ90dg468Pj46stGnl2tiQDopZ8', '2024-11-12 22:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:37'),
('gU7ZmU990f6O5kAeWTWX0c9BzN_rBibv', '2024-11-12 22:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:37'),
('GUc_K8cyLyFHnhxXxvvJhEPI1FBOcO1y', '2024-11-13 09:15:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:15:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:15:06', '2024-11-12 09:15:06'),
('H--jpBorVzbfiTxuQjm4SHI_P3LG9ewv', '2024-11-13 19:23:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:23:44', '2024-11-12 19:23:44'),
('H-fu7TPQ69a58euv7Wfk_hQ8KKZgOV7s', '2024-11-13 19:15:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:15:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:15:36', '2024-11-12 19:15:36'),
('H5DnTGVTFl_-_AL5CzDV-QtoXXh6N5Hd', '2024-11-13 19:38:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:38:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:38:18', '2024-11-12 19:38:18'),
('hcSxWHukcwSLsvb43uQeh4DLIdFUt1o2', '2024-11-13 18:46:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:46:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:46:29', '2024-11-12 18:46:29'),
('HfF727ZaCziEMKX9hXPQLHelRT9V_vbY', '2024-11-12 22:05:53', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:05:53 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:05:53', '2024-11-11 22:05:53'),
('HgyUP9IrmrZixzOttkMOonHrBUy7aV3r', '2024-11-13 00:25:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:25:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:25:35', '2024-11-12 00:25:35'),
('HnMsz11qUm3qQJa6IjAZ0o9FM_m9MY4o', '2024-11-13 19:27:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:27:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:27:46', '2024-11-12 19:27:46'),
('HOzQdiyw7gPGb3Tcxq7h6hyca_eGcQ5M', '2024-11-13 09:41:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:41:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:41:48', '2024-11-12 09:41:48'),
('HrD01HKkoG1wzMRll46ms6qvW8_-tTRV', '2024-11-13 08:45:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:45:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:45:12', '2024-11-12 08:45:12'),
('hS0Q1LbMXseUJhQ5mKyQx-dvJ_BcDDq5', '2024-11-12 22:07:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:07:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:07:48', '2024-11-11 22:07:48'),
('hwY864LQbXeSOMxLZPJoNpZkiNR_oSmF', '2024-11-13 18:31:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:31:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:31:10', '2024-11-12 18:31:10'),
('i6CSSlTgO2wlRefaAPjnHccN4vvz087z', '2024-11-13 10:46:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:46:03 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:46:03', '2024-11-12 10:46:03'),
('i9haCDtSLu9LocHhFBd_2y4zF4lQJzVQ', '2024-11-13 18:32:32', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:32:32 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:32:32', '2024-11-12 18:32:32'),
('IBeyTTbIhb5r-IJ9fuSBy51em--rqDbd', '2024-11-13 09:12:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:46', '2024-11-12 09:12:46'),
('IbzPv3yl6vETyvM9KvRAGvqLWo2Oo4r6', '2024-11-13 08:00:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:00:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:00:20', '2024-11-12 08:00:20'),
('IcgUa4kpOIEa1TfJkRU8nNehxuA3pX1m', '2024-11-12 22:10:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:10:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:52', '2024-11-11 22:10:30'),
('ici4FDGc7cd4ENT291GKdk8vLV8m-VVY', '2024-11-13 18:45:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:45:22 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 18:45:09', '2024-11-12 18:45:22'),
('IewX3R93979igomXlNTBfgh7cR9dn34q', '2024-11-13 19:06:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:14', '2024-11-12 19:06:14'),
('Ifoh71mipHN9ZI8BH4OrovlxQ9FQ8VKX', '2024-11-13 03:30:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 02:30:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 03:30:15', '2024-11-12 03:30:15'),
('iID7JFHKuyhZWw015AFXjlVkiDvfsnjV', '2024-11-13 20:51:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:51:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:51:16', '2024-11-12 20:51:16'),
('iiomLkHdNut8WQd9fujygnqMUTYLFT0l', '2024-11-13 09:41:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:41:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:41:18', '2024-11-12 09:41:18'),
('IIWlrMvengcu8CzUaCs8JY5VY-2ndZgJ', '2024-11-13 20:51:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:51:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:51:51', '2024-11-12 20:51:51'),
('ilWKc0ZDHD4c4HE9lFXQd__6Te9KjIBh', '2024-11-13 09:58:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:58:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:58:16', '2024-11-12 09:58:16'),
('InroV9DPuigkjjXMwG_8CK5Z00XXR8jh', '2024-11-13 18:29:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:25', '2024-11-12 18:29:25');
INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('iOTTJwiXH-wI68G89zBiIN-jw1bIPSrp', '2024-11-13 19:15:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:15:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:15:36', '2024-11-12 19:15:36'),
('ipbHOJYANmTYtudd60TfilcbfjbXZ2yW', '2024-11-13 09:00:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:00:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:00:18', '2024-11-12 09:00:18'),
('IxRsnqNGdkimZXPmKEs3pNVmavdyy7bX', '2024-11-13 11:45:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:45:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:45:05', '2024-11-12 11:45:05'),
('iy3VhDTPPwhzdZ1RW4GQU6goKz1rMDXQ', '2024-11-13 00:24:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:24:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:24:06', '2024-11-12 00:24:06'),
('j8P8U4jvcgKy03COiCzFzAgemTKxyPIl', '2024-11-13 19:56:46', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:56:46 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:56:46', '2024-11-12 19:56:46'),
('JbenGUdYcfwakljqaa8LxT3Qi8p_bRh-', '2024-11-13 19:28:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:28:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:28:06', '2024-11-12 19:28:06'),
('jbkY36mFKThOKPtYmKMZ2FOELQSO8Oa2', '2024-11-13 18:30:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:20', '2024-11-12 18:30:20'),
('jbXut4NcxfPHvr3VF8mGJHAbCT0rhPdq', '2024-11-13 04:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 03:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 04:45:06', '2024-11-12 04:45:06'),
('JDtBclpgxuzJBDqZ74YG6L7jBwigiHi9', '2024-11-13 18:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:45:06', '2024-11-12 18:45:06'),
('JDYXjFlmqEhpjcwgRF0z0uVLr7pGhNJf', '2024-11-13 01:00:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 00:00:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 01:00:13', '2024-11-12 01:00:13'),
('jf8NZsmhxSfmmV1giVktCsVeG1tdnL4j', '2024-11-13 19:18:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:18:13 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 19:15:36', '2024-11-12 19:18:13'),
('jIwFOuyyNwfylOS-Ed6ALwUvyyMDVdP_', '2024-11-13 00:55:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:55:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:55:20', '2024-11-12 00:55:20'),
('jJKFN4Dvbdrc0MDjbhhSJkdn-vXGiI-x', '2024-11-13 08:47:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:47:40 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:47:40', '2024-11-12 08:47:40'),
('jlv0aTmC7vyerrD9dbx3zV4VMNDZgx0_', '2024-11-13 18:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:00:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:00:17', '2024-11-12 18:00:17'),
('JPvsm_0IEOhcro5aL_ZkVsHnZsgHNV6m', '2024-11-13 20:45:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:45:29 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 20:12:27', '2024-11-12 20:45:29'),
('JPW2l6nBrJcmO_Zjm87JSGyDYKgJJuL8', '2024-11-13 19:53:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:06', '2024-11-12 19:53:06'),
('jrKXohTCnBHkYgLce_pkyrnDNWD01Q9N', '2024-11-13 18:49:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:49:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:49:13', '2024-11-12 18:49:13'),
('Jt3zTydR0gvjSdpPR0YljZiDX9ekMK55', '2024-11-13 09:47:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:47:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:47:02', '2024-11-12 09:47:02'),
('JzdmIGCrkJlwm5c_Iwb64CcaQRikfo-5', '2024-11-13 13:20:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:20:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:20:12', '2024-11-12 13:20:12'),
('k4JoeY-WcmHkCKRMyvFRuXAVjgM5kX5m', '2024-11-13 19:18:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:18:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:18:09', '2024-11-12 19:18:09'),
('KAVYyh0IilunD7HAICAxF4CXZScxSF8n', '2024-11-13 11:53:56', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:53:56 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:53:56', '2024-11-12 11:53:56'),
('KFKiEXa25AjmS45wMp3yAeKZEcV6txw4', '2024-11-13 13:36:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:36:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:36:55', '2024-11-12 13:36:55'),
('kGmrY4nrENXvvd0wGEAq7jFExXmQV4tv', '2024-11-13 19:53:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:25', '2024-11-12 19:53:25'),
('Kh4IePXnJa35j96gHW7hNQmZNdQcTO29', '2024-11-13 18:22:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:22:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:22:48', '2024-11-12 18:22:48'),
('KHcgv-KQBRi8DUBkxsZpdTDtXNh6w9_L', '2024-11-13 17:51:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:51:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:51:12', '2024-11-12 17:51:12'),
('Ki0WUN3dSiBusxCorV1e2sqlg7p6SqSK', '2024-11-13 02:15:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 01:15:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 02:15:14', '2024-11-12 02:15:14'),
('KjCbuuP2zZ3ww2PAN2DvH35UldHbWFsh', '2024-11-13 18:44:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:44:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:44:45', '2024-11-12 18:44:45'),
('kJL1sD-nxL9JTA5VdaP1DcXQYw0PL4do', '2024-11-13 05:44:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:44:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:44:11', '2024-11-12 05:44:11'),
('kJTC3FIR34KrVp9vLMQBlBnyv7kKe3CF', '2024-11-13 06:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:00:12', '2024-11-12 06:00:12'),
('KmQDKjFM9bY0bBsv3nc9JLEaHZv14GPP', '2024-11-13 19:25:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:25:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:25:24', '2024-11-12 19:25:24'),
('kOQ4TfSruQEMBYpMvEuiTzvEZkbIALrV', '2024-11-13 00:25:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:25:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:25:34', '2024-11-12 00:25:34'),
('kqtNXvsaIDSvtUDB11MT4gtfDSphkIS9', '2024-11-12 22:14:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:14:12 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-11 21:54:49', '2024-11-11 22:14:12'),
('Ks0z26bRnYAWk7RjxlqpUHW583Iv5wfq', '2024-11-12 23:44:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:44:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:44:12', '2024-11-11 23:44:19'),
('kUfNcIuvL0M1U4UAYcouXiikS3veu_an', '2024-11-13 20:51:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:51:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:51:13', '2024-11-12 20:51:13'),
('Kwl1yChp2CcIbJ8KQinopM-5NExcZrOQ', '2024-11-13 00:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:00:12', '2024-11-12 00:00:12'),
('kXpeFfH1FCE4ZY4YFKcYI-25TBq2-qEr', '2024-11-13 19:53:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:11', '2024-11-12 19:53:11'),
('l6myQbOpASjQnupndigAlglF3vDm6GaV', '2024-11-13 21:57:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:57:54 GMT+0700 (Western Indonesia Time)\",\"adminId\":3,\"adminRole\":\"admin\"}', '2024-11-12 09:41:16', '2024-11-12 21:57:54'),
('LayVdbS2MHbzQOngCW-ozwopdXWV_YwK', '2024-11-13 08:30:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:30:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:30:15', '2024-11-12 08:30:15'),
('Ldy_BfAjLR15d8sTcIpvny1INHa39qoY', '2024-11-13 19:38:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:38:19 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 19:05:54', '2024-11-12 19:38:19'),
('lEkElTq0Wweq4UmS5T5KjNaB_Gb-cZqH', '2024-11-13 16:26:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:26:50 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:26:49', '2024-11-12 16:26:50'),
('LETLd3jOWCswrc9lHGKaHIHAppueH-3k', '2024-11-13 00:54:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:54:50 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:54:49', '2024-11-12 00:54:50'),
('lfDOabX8yVhNCP95mgphYvFBdrNiq2tA', '2024-11-13 13:30:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:30:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:30:08', '2024-11-12 13:30:08'),
('LgwUJixeMOn0CG7a1gRxy84mdF2JZ2_P', '2024-11-12 22:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:37'),
('LKWXSI8GoEln0SL_n-s-agdxOeeWu9Lq', '2024-11-13 06:15:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:15:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:15:12', '2024-11-12 06:15:12'),
('lpFShC-bgD55j4UAgIiYBu79jqUO5CMS', '2024-11-13 08:47:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:47:40 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:47:40', '2024-11-12 08:47:40'),
('lrEVF_FIwjPYEsRtwbKkaZ9WZw93fmh8', '2024-11-12 22:02:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:02:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:02:11', '2024-11-11 22:02:11'),
('LUjkilJV3OcuIRxZFtP8OTxP-4fqNJcG', '2024-11-13 11:42:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:42:57 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:42:57', '2024-11-12 11:42:57'),
('LW3xaL9c3kzWY0Dp0tWWasFCe8_CWjxB', '2024-11-13 18:22:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:22:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:22:43', '2024-11-12 18:22:43'),
('LwtRrzzkWAz3-OgqhL597YlLZ5K6-u7k', '2024-11-13 16:15:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:15:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:15:06', '2024-11-12 16:15:06'),
('lY5k0UeXO9A4HjBSIrCts58hXxXj5XxU', '2024-11-13 19:06:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:21 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:21', '2024-11-12 19:06:21'),
('MaFFgT-ecHC9D34HA8Izk6iz9PRIhtNZ', '2024-11-13 10:35:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:35:43 GMT+0700 (Western Indonesia Time)\",\"adminId\":3,\"adminRole\":\"admin\"}', '2024-11-12 10:35:26', '2024-11-12 10:35:43'),
('Me1GLGbk6es_-Ry__mWTdABIDpFzTFg9', '2024-11-13 00:54:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:54:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:54:05', '2024-11-12 00:54:05'),
('mEaIfwNkIDv2F1qhR6QTNILTVIeuGOAV', '2024-11-13 18:50:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:50:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:50:47', '2024-11-12 18:50:47'),
('mGB4b0lHn2KgBl6wo0n9Dx-uxPQgmCNA', '2024-11-13 00:25:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:25:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:25:35', '2024-11-12 00:25:35'),
('MlPDwAquxcmF8Y3FcmOn280T3YQNv7qV', '2024-11-13 01:15:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 00:15:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 01:15:12', '2024-11-12 01:15:12'),
('MPigthqfdNXBr9Ewy2P88VN9eG0SMWrz', '2024-11-13 01:30:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 00:30:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 01:30:18', '2024-11-12 01:30:18'),
('MQl8pnN7XsiK4JzQJDY-EnTXwx-876Gx', '2024-11-13 18:46:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:46:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:46:43', '2024-11-12 18:46:43'),
('MSlN8_msqilaB64PunFuw1bv1eHD0Em4', '2024-11-13 14:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 13:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 14:30:09', '2024-11-12 14:30:09'),
('mVlh6NMe4J2w759bj-eq9i71wdlq1ObQ', '2024-11-13 19:35:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:35:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:35:44', '2024-11-12 19:35:44'),
('n5I0S27-ux373BTygS75etLVHTaLzSOM', '2024-11-13 19:45:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:45:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:45:12', '2024-11-12 19:45:12'),
('n7eJURmMt-Y3HzXpFjouR8az60W4q89z', '2024-11-13 20:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:15:05', '2024-11-12 20:15:05'),
('Nj7bFHhYOHpCbxYpB5Ive5_VcpyqnlpW', '2024-11-13 18:30:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:14', '2024-11-12 18:30:14'),
('Nn5PnoqLQIU8pfqYfYNvSYB_Z-Ek5AbX', '2024-11-13 09:12:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:29', '2024-11-12 09:12:29'),
('NYr9uQaf3Rh96tpr4Ub4ebb1CfuF7gcv', '2024-11-13 12:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 11:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 12:15:05', '2024-11-12 12:15:05'),
('n_6DhbcXDt4_ogDnj_UN4XEhDOaKgd2h', '2024-11-13 19:19:50', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:19:50 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:19:50', '2024-11-12 19:19:50'),
('O-uBCsy6L8nhfJhx9VUI_RURT4mloGj8', '2024-11-13 19:37:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:37:07 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 19:35:44', '2024-11-12 19:37:07'),
('O0guMGssBhK4b6o_O9wmocT_GEUXhNYk', '2024-11-13 20:51:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:51:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:51:18', '2024-11-12 20:51:18'),
('O1x6WHtriTQAICjG4q_ysIWIQQyXN25e', '2024-11-13 12:30:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 11:30:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 12:30:08', '2024-11-12 12:30:08'),
('o2x4a2BNKEHAMqgA-taU83HCMXgcSh7G', '2024-11-13 19:23:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:23:45', '2024-11-12 19:23:45'),
('O46wGS0YLUA7fTXqYmm5TVU3uLJPxaVe', '2024-11-13 07:10:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:10:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:10:28', '2024-11-12 07:10:29'),
('O60g0GI1lXhl_7pxcTT1WOK_b-NMLYfO', '2024-11-13 17:45:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:45:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:45:05', '2024-11-12 17:45:05'),
('O7T0YacQp79shSCJfhrEtq6lRb2EwRkl', '2024-11-13 07:10:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:10:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:10:11', '2024-11-12 07:10:11'),
('o8QVDgWWkVQn_SfQj4Q__TmoShGPqxBb', '2024-11-13 20:09:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:09:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:09:23', '2024-11-12 20:09:23'),
('oA-XCxeolkn2fdgMbVCT3MN7jFdQjzy_', '2024-11-13 04:00:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 03:00:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 04:00:18', '2024-11-12 04:00:18'),
('ocVmeQjPGWtEVxiVs_l1PzQ3qFfsNKF8', '2024-11-13 18:28:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:19', '2024-11-12 18:28:19'),
('ok1xb2_X3nsbj3kq4ukRHbgNFw-RC2nS', '2024-11-13 09:41:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:41:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:41:48', '2024-11-12 09:41:48'),
('owTueCrvL-NH9KXWN5NXUVHYAfQwVkrS', '2024-11-13 10:15:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:15:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:15:06', '2024-11-12 10:15:06'),
('OY99drE1Hf33iwPu5cAjejWXnqrt4MK_', '2024-11-13 18:46:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:46:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:46:39', '2024-11-12 18:46:39'),
('p-gvlVjW9yhAV1LFY0ksErlQYO0cH5Tv', '2024-11-13 19:53:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:20', '2024-11-12 19:53:20'),
('P2vzpMIBYwdCkoBIJpG9IAxliwJI92Ge', '2024-11-13 21:30:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:30:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:30:10', '2024-11-12 21:30:10'),
('PBy8SoCAKfCNVV8Qf-LUgTZFxjBom4w7', '2024-11-13 19:36:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:36:59 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:36:59', '2024-11-12 19:36:59'),
('pdAcC6_DRUWE7VGSkirpYgBzzBV_8TdI', '2024-11-13 06:59:33', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:59:33 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:59:33', '2024-11-12 06:59:33'),
('pDeO4CJZTF2Q8DlK0fiuggp8mR2VDqh8', '2024-11-13 18:32:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:32:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:32:29', '2024-11-12 18:32:29'),
('Peq99lxeU8a9JMgpDV2dxTtqws8kHugm', '2024-11-13 08:47:40', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:47:40 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:47:40', '2024-11-12 08:47:40'),
('PG4lyiWe5Rl2kclIuZaQAuL-OpnJ3tbE', '2024-11-13 18:31:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:31:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:31:06', '2024-11-12 18:31:06'),
('Phn-bfFR2LRwR-ekHTpvOFKiXLOMw6A0', '2024-11-13 20:49:21', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:49:21 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 20:48:31', '2024-11-12 20:49:21'),
('pHrbXwQFGUQyEbGKC5aUTnRQE7ZKFIU8', '2024-11-13 18:30:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:14', '2024-11-12 18:30:14'),
('PmRfhhnhGilKya6IYxqWEJKn95Bj1b49', '2024-11-13 04:15:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 03:15:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 04:15:11', '2024-11-12 04:15:11'),
('pxNgQ9kotL_Sscc8rAtEuHKFUw6r-xW4', '2024-11-13 17:30:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:30:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:30:17', '2024-11-12 17:30:17'),
('PYSRJ6zSNHHqprr8IbWKR3XLVcYhHsi8', '2024-11-13 18:29:39', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:39 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:39', '2024-11-12 18:29:39'),
('q0Z3Xb9lw_Wy3QlNWZsJAO_ZScGd3z6p', '2024-11-13 00:23:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:23:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:23:55', '2024-11-12 00:23:55'),
('q6ci0z3UA6YU8sawcrRrbSlVIr9J_Atl', '2024-11-13 22:00:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 21:00:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 22:00:13', '2024-11-12 22:00:13'),
('q8nQLTkK-w4b02OnRXCLnAnkd6X1XgWL', '2024-11-13 19:53:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:25', '2024-11-12 19:53:25'),
('qAVtrBrXity2lz7ch6_wtswRxLlAd5OB', '2024-11-13 17:15:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:15:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:15:13', '2024-11-12 17:15:13'),
('QBSkWCmrFf5Hgr_Sw10amMUj2vJQzbL2', '2024-11-13 22:01:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 21:01:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 22:01:17', '2024-11-12 22:01:17'),
('QC7I1zjy5lGwecGTsOKI1oATVAz-EmaD', '2024-11-13 18:22:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:22:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:22:48', '2024-11-12 18:22:48'),
('Qg8fjBQ0AMKDy7gFIBoCvi1FA2klwGYM', '2024-11-13 07:10:28', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:10:28 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:10:28', '2024-11-12 07:10:28'),
('qHqs-6AgmvMST8Wuv2NWA0YAEGrpLWpb', '2024-11-13 17:51:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:51:04 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:51:04', '2024-11-12 17:51:04'),
('QkjLfh9pgDeYTtQOgbevmPfRpo4utn1S', '2024-11-13 07:15:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:15:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:15:05', '2024-11-12 07:15:05'),
('qmcp-ukrpoLG6J6DzOCQ1rXi4xpDRBX0', '2024-11-13 20:25:38', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:25:38 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:25:38', '2024-11-12 20:25:38'),
('QnVNz-YA9WAK0u_0qRHjCk57xTkQtKBG', '2024-11-13 19:27:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:27:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:27:19', '2024-11-12 19:27:19'),
('qr5v0xSHd5YY6i6m0SfGB_tHoLFZ17G8', '2024-11-13 13:13:58', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:13:58 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:13:58', '2024-11-12 13:13:58'),
('QscY87A2y4JlRqbwTFRQMefW2SsQs2lI', '2024-11-12 22:05:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:05:54 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:05:54', '2024-11-11 22:05:54'),
('QUWMHMcXzk2sjjweu_2lpSweKptJxxtt', '2024-11-13 06:54:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:54:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:54:06', '2024-11-12 06:54:07'),
('qXvWOEqzZK3Hy7e8oCtNhFJmihvgpJB2', '2024-11-13 19:25:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:25:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:25:26', '2024-11-12 19:25:26'),
('QZYz0hF5rJbogw0DGMrqicCuyjwsHriL', '2024-11-13 17:39:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:39:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:39:20', '2024-11-12 17:39:20'),
('R4hZ55qQmyEQKeiAditfxyZjseneRAAa', '2024-11-13 06:43:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:43:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:43:10', '2024-11-12 06:43:10'),
('r6lwZ8iVkDeBEIDU4OeuYzBIa28PsLLM', '2024-11-13 19:53:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:20', '2024-11-12 19:53:20'),
('RAgSszF_UHv_5XZ3FADY1sc1yMm0voOS', '2024-11-13 18:30:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:14', '2024-11-12 18:30:14'),
('rO3yMp0Cur2D1xcr6fdBW8N2nWWVLFSe', '2024-11-13 13:25:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:25:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:25:34', '2024-11-12 13:25:34'),
('RQ1OMDUiQr6Rmd20dAnO80ZhhmquGX66', '2024-11-13 11:43:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:43:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:43:12', '2024-11-12 11:43:12'),
('rqlys58NcjYVwVOjt2qjivurAjQXqqba', '2024-11-13 15:30:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 14:30:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 15:30:08', '2024-11-12 15:30:08'),
('ruMXewNKpQ9lDopUjyEZjv0kPsUetfiw', '2024-11-13 09:47:02', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:47:02 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:47:02', '2024-11-12 09:47:02'),
('rvsw64nIqDmsJeP92xir1PkWmS6uX2Dv', '2024-11-13 06:54:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:54:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:54:06', '2024-11-12 06:54:09'),
('RZ5kP-e7x1fBgPKRF64cWwUPSRJDh5Ck', '2024-11-13 12:00:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 11:00:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 12:00:10', '2024-11-12 12:00:10'),
('s01Ee_FCT2sE4m3M7mseaSnCeb2ymv6j', '2024-11-13 19:38:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:38:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:38:08', '2024-11-12 19:38:08'),
('s72bxShc_t3R74h3GqhbHEaQluhKWY4y', '2024-11-12 22:10:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:10:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:10:30', '2024-11-11 22:10:30'),
('sDLOR2JHsZ3ES0YqcuFPJik_5Xsh23om', '2024-11-13 19:06:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:24', '2024-11-12 19:06:24'),
('seLeJf8aOLt_TBnDPMDGAO_nS542l4v3', '2024-11-13 09:58:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:58:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:58:15', '2024-11-12 09:58:15'),
('sfXyiX1d0Qh-LfOVhzgMzu_692Wgi8FW', '2024-11-13 18:28:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:19', '2024-11-12 18:28:19'),
('sMHFE9VXjhq1pUATFyNRLoZWRAaRKZKt', '2024-11-13 18:47:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:47:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:47:18', '2024-11-12 18:47:18'),
('SoF8IpkvHQUWoM4n7la5zqzdTM-ZaN65', '2024-11-13 18:46:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:46:48 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:46:48', '2024-11-12 18:46:48'),
('SooFpsAzRTlcdNK3o5Mi-HyIZC6i26a8', '2024-11-13 19:13:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:13:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:13:44', '2024-11-12 19:13:44'),
('SROanNTXk0qFX9QL-JARCqwSfpJAQ2m9', '2024-11-12 22:09:37', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:37 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:37', '2024-11-11 22:09:37'),
('SY7bGEJItnDlz2LLG5w4mGH25OLNq2J2', '2024-11-13 03:15:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 02:15:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 03:15:11', '2024-11-12 03:15:11'),
('S_gFCrz1HAb09ta2ompj5CCTe8PZGEAb', '2024-11-13 06:30:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:30:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:30:17', '2024-11-12 06:30:17'),
('t4CeJP-i67mW7ESNnKiWUQSXwIrzFWJA', '2024-11-13 19:52:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:52:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:52:05', '2024-11-12 19:52:05'),
('TADMCW06SP9F5TyI7pZPkfGbI6D0CFpe', '2024-11-13 09:56:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:56:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:56:13', '2024-11-12 09:56:13'),
('tdvT1YTiciwpq3s5yZ3Dqf0XmkqCLAM5', '2024-11-13 21:15:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:15:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:15:07', '2024-11-12 21:15:07'),
('TgmZcNTF5tbe6-k1gqw-mTWoDesf202g', '2024-11-13 17:51:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:51:04 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:51:04', '2024-11-12 17:51:04'),
('ThLkvTIM3no8es5PgQCKzt7vUdr7lnDK', '2024-11-13 19:53:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:25', '2024-11-12 19:53:25'),
('ti7abfEpWqWmXjyhFD_XurebVIKt0cuI', '2024-11-13 09:50:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:26', '2024-11-12 09:50:26'),
('TImlU1efC51JwaoABKohTt1Aj8DIBTot', '2024-11-13 18:28:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:19', '2024-11-12 18:28:19'),
('tk8AjaF7QQd0_yaz7TaKz0bIhZRLOOvT', '2024-11-12 22:09:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:09:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:09:44', '2024-11-11 22:09:44'),
('TKvQ8ROyHnJAq_-8Xlqr7TmT7TNcI-UL', '2024-11-12 22:10:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:10:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:10:30', '2024-11-11 22:10:30'),
('TNIuvXu9dpPFDIjJuWwgGD0XcXAYFY2_', '2024-11-13 05:30:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:30:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:30:14', '2024-11-12 05:30:14'),
('tnY2sv0-Cg09vmo8ePmKs3zzp87j-GXE', '2024-11-13 13:25:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:25:35 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:25:35', '2024-11-12 13:25:35'),
('trsIDA7PEHPOMh7rd9rlFTAfHOE9Kpnh', '2024-11-13 16:26:45', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:26:45 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:26:44', '2024-11-12 16:26:45'),
('TztYs89F-CBnwMLnpPOMXd3m0CZgrHJA', '2024-11-13 19:13:42', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:13:42 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:13:42', '2024-11-12 19:13:42'),
('uazbP0-3_yu0SX-ApoIjrqrKGlFUGTot', '2024-11-13 19:27:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:27:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:27:29', '2024-11-12 19:27:29'),
('uCZhGV4QVFlLgr-QHR9alcXt1CsHwX65', '2024-11-13 11:50:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:50:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:50:16', '2024-11-12 11:50:16'),
('Uem8Ua_OC7jcGrDFjhdbqu7aVvgD94vl', '2024-11-13 07:00:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:00:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:00:12', '2024-11-12 07:00:12'),
('Uend5d2PSccvl0DN7z26qs5OELF7O8N2', '2024-11-13 08:15:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:15:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:15:13', '2024-11-12 08:15:13'),
('ug8EPMLzzqRJavPapIdfA05Xs_YkyXHS', '2024-11-13 20:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:45:06', '2024-11-12 20:45:06'),
('uIT0afxHSeV1wTRscBadG-YYiud_dWbB', '2024-11-13 07:30:08', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 06:30:08 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 07:30:08', '2024-11-12 07:30:08'),
('UjNGR2cNk2CYyuqKmL91r79wVu3L3AxL', '2024-11-13 21:58:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:58:03 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:58:03', '2024-11-12 21:58:03'),
('uMLcUGZpit3FGbtqJrgNQZ7Za9a1LD2T', '2024-11-13 19:35:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:35:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:35:44', '2024-11-12 19:35:44'),
('uMRer0f7iYU75WcQguCxH06q6mKOCNlc', '2024-11-13 19:18:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:18:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:18:10', '2024-11-12 19:18:10'),
('Upf_zxV8YNwIrGQtEqx_tnsA3oVtpGdM', '2024-11-13 18:45:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:45:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:45:22', '2024-11-12 18:45:22'),
('UPtMbbEesZW792XiOYUJy4SDYmRdYNna', '2024-11-13 19:05:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:05:54 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:05:54', '2024-11-12 19:05:54'),
('utpnJbyjn5t2zX8YvYNREJ45rWRz7yIL', '2024-11-13 20:48:31', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:48:31 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:48:31', '2024-11-12 20:48:31'),
('UUBPyP-lpZzvzpENN4G8tfELsYMEy5bv', '2024-11-13 21:59:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 20:59:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 21:59:16', '2024-11-12 21:59:16'),
('uVv-ofvHM2-353o-Qh58Z4gkgsfvkSff', '2024-11-13 05:15:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:15:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:15:11', '2024-11-12 05:15:11'),
('Uzh65gidPfMdZOYi3_pCYP0lspvxZfd-', '2024-11-13 00:23:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:23:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:23:13', '2024-11-12 00:23:13'),
('v0Fd4ta0Nb-X9jOfFu8r4xhdBKA9SIHm', '2024-11-13 09:12:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:43', '2024-11-12 09:12:43'),
('V2iPrgW7_oGlWmBGgxWgAmo_R83OFPT4', '2024-11-13 18:29:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:29', '2024-11-12 18:29:29'),
('V9Y1QhG6Q-sWGiLRsCKNe45xGSiKjxT6', '2024-11-13 18:48:43', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:48:43 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:48:43', '2024-11-12 18:48:43'),
('vAovzSzdnUCqWdyIp2cMyH9eobi2jhdG', '2024-11-12 23:45:07', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:45:07 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:45:07', '2024-11-11 23:45:07'),
('Va_iHIZV5gHaqZg009PejA-pTQk_a6Fx', '2024-11-12 22:08:54', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:08:54 GMT+0700 (Western Indonesia Time)\",\"adminId\":3,\"adminRole\":\"admin\"}', '2024-11-11 10:47:24', '2024-11-11 22:08:54'),
('vD1wB4I-O1_Mrk3ueqPKB6_-EOxXf6s-', '2024-11-13 18:28:19', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:28:19 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:28:19', '2024-11-12 18:28:19'),
('VEuMWZR5H6mMNhSHEj__OglbmNWHXokl', '2024-11-13 22:15:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 21:15:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 22:15:12', '2024-11-12 22:15:12'),
('vhcPnxzgIgggHYQj4JauVzM7-sjFTl3Z', '2024-11-13 18:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:30:09', '2024-11-12 18:30:09'),
('VkJdprdMD8up4xgNLlVYE_EBI4GLHOB1', '2024-11-13 19:53:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:06', '2024-11-12 19:53:06'),
('vlWFd0DDEAM_5z_xOcqasSXTD9r3HBjH', '2024-11-13 16:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:45:06', '2024-11-12 16:45:06'),
('VN9Da-3ct1zKkeE4QrHXIsCA_T2tdNh7', '2024-11-12 22:42:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:42:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:42:47', '2024-11-11 22:42:47'),
('vnz6HkHzqFYfXKxomOjlMcw4AB7v-v3R', '2024-11-13 17:51:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:51:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:51:13', '2024-11-12 17:51:13'),
('VOl2yOmCrHtW-w-P-qrThbyyA6nKtnRc', '2024-11-13 08:47:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:47:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:47:12', '2024-11-12 08:47:12'),
('VSdi6b6Gv2s1tReErsmjEpcNZoy8DQra', '2024-11-13 18:29:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:29:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:29:36', '2024-11-12 18:29:36'),
('vsI_g7whOOIUdXdc3rqY2glOn1Pen615', '2024-11-13 09:50:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:26', '2024-11-12 09:50:26'),
('VT6Uh_zjRJG7Xre2oJNTWQ-RsThJBZeO', '2024-11-13 09:56:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:56:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:56:06', '2024-11-12 09:56:06');
INSERT INTO `Sessions` (`sid`, `expires`, `data`, `createdAt`, `updatedAt`) VALUES
('vVe-W-tse8CIU5eAeE0ghZgQl55PuOev', '2024-11-13 09:50:41', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:41 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:41', '2024-11-12 09:50:41'),
('vVRK2EzhszE-wYS911GeliaEmwWbjHGT', '2024-11-13 18:47:12', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:47:12 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:47:12', '2024-11-12 18:47:12'),
('WCyBJrcybok_5imG-8rQ5lHUsr1ZAsko', '2024-11-13 13:20:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:20:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:20:09', '2024-11-12 13:20:09'),
('WGa4gsOQihGtcQeqDzPh0I966zTj5pcI', '2024-11-13 02:00:18', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 01:00:18 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 02:00:18', '2024-11-12 02:00:18'),
('wgibufcwoRWEpRFRoTAtfiNxXlagchY7', '2024-11-13 19:53:25', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:25 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:25', '2024-11-12 19:53:25'),
('wha9nLkEixu2044s-C0jsGApfyIhS0-K', '2024-11-13 00:45:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 23:45:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 00:45:13', '2024-11-12 00:45:13'),
('WmGVxkgYr4m5WVPqasFpO1TwdEelHjaK', '2024-11-13 17:00:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:00:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:00:20', '2024-11-12 17:00:20'),
('WnkCgJXz8lsyKyJHUM--QWOpArxYokRm', '2024-11-13 19:38:15', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:38:15 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:38:15', '2024-11-12 19:38:15'),
('wqQ1em_Z7yQaRDyF02D-dgAjHABZtGhk', '2024-11-13 11:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:30:09', '2024-11-12 11:30:09'),
('WRhvfWsaE-9YEAqVmawDlXSsJQjYqGQ8', '2024-11-13 16:00:17', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 15:00:17 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 16:00:17', '2024-11-12 16:00:17'),
('WT1kpH133ptt6rni_MQj26kQJ4J8CE8_', '2024-11-13 09:51:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:51:14 GMT+0700 (Western Indonesia Time)\",\"adminId\":8,\"adminRole\":\"surveyor\"}', '2024-11-12 09:50:39', '2024-11-12 09:51:14'),
('wuObtqLAfQCdHI5cVQEyrmF6lKinsqY3', '2024-11-13 18:47:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:47:01 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:47:01', '2024-11-12 18:47:01'),
('WvkYG9v4rcF-jvbteKyGy5rgqXSBXcUg', '2024-11-13 19:52:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:52:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:52:55', '2024-11-12 19:52:55'),
('WyADaNPntnw8Gwz02dFFjcxE1EfP29lO', '2024-11-13 19:25:24', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:25:24 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:25:24', '2024-11-12 19:25:24'),
('Wz7YmNFcziQJ1qxft4_kHKmTIwAOTxr_', '2024-11-13 17:51:04', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:51:04 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:51:04', '2024-11-12 17:51:04'),
('x-WqTm0oiRqHPlbEaCjRoGw9TAuy2RR2', '2024-11-12 22:00:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:00:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:00:14', '2024-11-11 22:00:14'),
('xDJeUCfblVeDlMxZ4GCMLYtXsyBnYTj5', '2024-11-13 13:25:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:25:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:25:34', '2024-11-12 13:25:34'),
('XgTQB0IqwlBWrH8quj-fZx3JZtCnCGI6', '2024-11-13 10:30:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:30:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:30:16', '2024-11-12 10:30:16'),
('Xhcc_Ao4IX_gFwbkeO_GexX6n9eLjmZF', '2024-11-13 13:19:52', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:19:52 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:19:52', '2024-11-12 13:19:52'),
('xjLTxgEvBTRUHwXIcDwVtKTQKgmZVj_V', '2024-11-12 23:52:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 22:52:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 23:52:21', '2024-11-11 23:52:22'),
('XmueUSvNCzIZ-8WVns0vrT_xwlTPSz6A', '2024-11-13 18:32:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:32:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:32:29', '2024-11-12 18:32:29'),
('XNT4nRhBwMZf30G92wiO9ZjtQdKLoyOi', '2024-11-12 22:05:57', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:05:57 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-11 21:56:27', '2024-11-11 22:05:57'),
('xQJWTrRhyW3R9ifWXRy3iTbiV_iqBqOE', '2024-11-13 17:39:27', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:39:27 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 17:39:27', '2024-11-12 17:39:27'),
('XrFuGw30qNEnVa8TBpFkQC25_D_pPTX6', '2024-11-13 06:59:03', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 05:59:03 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 06:59:03', '2024-11-12 06:59:03'),
('xsHHORRyIV2KfLhtsxk4m1MIZmxhL9oL', '2024-11-13 19:36:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:36:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:36:22', '2024-11-12 19:36:22'),
('XuomkrXMqHc5a5rwXy2zceGSpLx81_u3', '2024-11-13 12:45:05', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 11:45:05 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 12:45:05', '2024-11-12 12:45:05'),
('xWh8qGlCai7a78Qu0yBfMCbkO6Ln6x3R', '2024-11-13 09:41:22', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:41:22 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:41:22', '2024-11-12 09:41:22'),
('XZk16F2uHK66kyyFIpc6imRhABRZgsqg', '2024-11-13 19:53:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:53:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:53:06', '2024-11-12 19:53:06'),
('X_QyFGtoXA1dyxhNK-gVOajH-t6PRVJp', '2024-11-13 19:28:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:28:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:28:47', '2024-11-12 19:28:47'),
('YCYKYt6CiSKl7yYaijjGAtQu-PEvAjEz', '2024-11-13 08:46:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 07:46:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 08:46:51', '2024-11-12 08:46:51'),
('YHrWQJMy1FNuk6P1V0hKu9Lp89VSz1L4', '2024-11-13 09:46:59', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:46:59 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:46:59', '2024-11-12 09:46:59'),
('YizOA6M1jwv1-rQjPWtrXr0mim2XZfLr', '2024-11-13 18:54:23', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:54:23 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:54:21', '2024-11-12 18:54:23'),
('yJEcnu8r_RWvujlSJ9aM94zOBGDxZUud', '2024-11-13 10:35:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:35:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:35:34', '2024-11-12 10:35:34'),
('ymTFac8WULbk5RYCUmaecWgSlBGfnsFO', '2024-11-13 18:45:20', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:45:20 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:45:20', '2024-11-12 18:45:20'),
('YoC48Ms590kW8op7hxzTx2XIHwqtg4s9', '2024-11-13 19:23:44', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:44 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:23:45', '2024-11-12 19:23:45'),
('yoe_5VTBbi3JiD9O2es8sLPTydKK9oMa', '2024-11-13 20:00:13', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:00:13 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:00:13', '2024-11-12 20:00:13'),
('YQqBXGYeqVDu8sYhDLZJI3sv7H1HC2Nu', '2024-11-12 22:45:06', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Mon Nov 11 2024 21:45:06 GMT+0700 (Western Indonesia Time)\"}', '2024-11-11 22:45:06', '2024-11-11 22:45:06'),
('yTOYEuB8193reHPJmx-P5et0dsltK0_N', '2024-11-13 04:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 03:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 04:30:09', '2024-11-12 04:30:09'),
('YxE72e1rGk1A28Vd4jXAHTRRDXc-q3W6', '2024-11-13 11:51:35', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:51:35 GMT+0700 (Western Indonesia Time)\",\"adminId\":8,\"adminRole\":\"surveyor\"}', '2024-11-12 11:42:51', '2024-11-12 11:51:35'),
('YXvMsOjlSlpLZt7BDpXZ_8Xflpjk9ElR', '2024-11-13 19:15:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:15:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:15:36', '2024-11-12 19:15:36'),
('YyAZLo39-0TldTcVPkxsIEnlOpEhpVeM', '2024-11-13 13:20:01', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:20:01 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:20:01', '2024-11-12 13:20:01'),
('Zaspe9DAdJavOyzwYQ_Trd_TSqm2Dp4k', '2024-11-13 10:50:48', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:50:48 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 09:58:16', '2024-11-12 10:50:48'),
('ZbMadRHpF68Yk82KQeYhhZ3RJbsEuUFu', '2024-11-13 20:30:09', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:30:09 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:30:09', '2024-11-12 20:30:09'),
('ZeJNKEjjms1QxDlI2sYv9wfJkMaBTY9y', '2024-11-13 20:43:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 19:43:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 20:43:14', '2024-11-12 20:43:14'),
('zFtUFzBGOmdcHMc34V_5ZpwfdcfrZPox', '2024-11-13 13:00:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 12:00:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 13:00:11', '2024-11-12 13:00:11'),
('zg1KHPsTvCO8L68l3k3Cw8rMu5XMoYXS', '2024-11-13 14:45:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 13:45:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 14:45:14', '2024-11-12 14:45:14'),
('zmdRYd48RWkWwTzaWyEys5C3ZMpjQaIo', '2024-11-13 09:50:26', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:50:26 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:50:26', '2024-11-12 09:50:26'),
('ZsoVrZ8-AX3g5VHqeAiR8HCOyMYjFMrG', '2024-11-13 10:00:10', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 09:00:10 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 10:00:10', '2024-11-12 10:00:10'),
('zu69ZJWj5FxpsPJWYvhXMwfUWZPV3WRw', '2024-11-13 19:06:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:06:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:06:14', '2024-11-12 19:06:14'),
('_6KWJaZVhOQ94QgVewvsyLgsqi0kOFwi', '2024-11-13 17:51:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 16:51:14 GMT+0700 (Western Indonesia Time)\",\"adminId\":7,\"adminRole\":\"surveyor\"}', '2024-11-12 17:51:04', '2024-11-12 17:51:14'),
('_8VeaVVQ6oKznNwXdtug0LgbdCVJ-LFq', '2024-11-13 14:00:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 13:00:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 14:00:11', '2024-11-12 14:00:11'),
('_a90uPQMBMz4W1RaslRZI-YmMOVl5MpW', '2024-11-13 09:46:51', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:46:51 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:46:51', '2024-11-12 09:46:51'),
('_aSiahtTt_I31UZdQ1NY4U3W_lx_RTH-', '2024-11-13 18:50:47', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:50:47 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:50:47', '2024-11-12 18:50:47'),
('_DWpEYO-Tw1E35-srC7fbfP2A7eXbByw', '2024-11-13 18:56:29', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 17:56:29 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 18:56:29', '2024-11-12 18:56:29'),
('_g6EKpMypX_h6KwrmA3KsJ5WURTyNdgG', '2024-11-13 05:44:34', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 04:44:34 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 05:44:34', '2024-11-12 05:44:34'),
('_imk7ZLKrFxp0gALjXuYP3glgz4RvyLw', '2024-11-13 09:12:30', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:12:30 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:12:30', '2024-11-12 09:12:30'),
('_Ipo4uXJ2Knklb8lRNrUmkhhgYdBS-G3', '2024-11-13 01:45:14', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 00:45:14 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 01:45:14', '2024-11-12 01:45:14'),
('_oPwoH4wZSDRdB27QJpO4vOTlQCBTKaS', '2024-11-13 11:00:11', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 10:00:11 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 11:00:11', '2024-11-12 11:00:11'),
('_RUyuk0vu3YkoIKctufJ2GaHycsZT2Ud', '2024-11-13 19:23:55', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:23:55 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 12:36:40', '2024-11-12 19:23:55'),
('_t4h9x7SmNzwBi_L6XEyG2J1VlbzT_m1', '2024-11-13 09:58:16', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 08:58:16 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 09:58:16', '2024-11-12 09:58:16'),
('_W6nCrDsXS4-QZEzutO3LEWkrnwJrk-M', '2024-11-13 19:15:36', '{\"cookie\":{\"originalMaxAge\":null,\"expires\":null,\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"_garbage\":\"Tue Nov 12 2024 18:15:36 GMT+0700 (Western Indonesia Time)\"}', '2024-11-12 19:15:36', '2024-11-12 19:15:36');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Datarecaps`
--
ALTER TABLE `Datarecaps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `fotos`
--
ALTER TABLE `fotos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `pdfs`
--
ALTER TABLE `pdfs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questionnaire`
--
ALTER TABLE `questionnaire`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
