-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 09, 2020 at 09:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tabeldata`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabeladmin`
--

CREATE TABLE `tabeladmin` (
  `password` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `no_hp` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabelbantuan`
--

CREATE TABLE `tabelbantuan` (
  `id` int(10) NOT NULL,
  `nama_gapotkan/poktan` varchar(50) DEFAULT NULL,
  `jenis_usaha` varchar(50) DEFAULT NULL,
  `tahun_menerima_bantuan` varchar(10) DEFAULT NULL,
  `jenis_bantuan` varchar(10) DEFAULT NULL,
  `jumlah_bantuan` int(50) DEFAULT NULL,
  `ketua_gapoktan/poktan` varchar(10) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabelgapoktan`
--

CREATE TABLE `tabelgapoktan` (
  `Id` int(10) NOT NULL,
  `Desa` varchar(50) DEFAULT NULL,
  `nama_gapoktan` varchar(50) DEFAULT NULL,
  `tahun_pembentukan` int(10) DEFAULT NULL,
  `jenis_kelompok` varchar(20) DEFAULT NULL,
  `total_anggota` varchar(10) DEFAULT NULL,
  `total_luas` int(10) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `ketua_gapoktan` varchar(50) DEFAULT NULL,
  `sekretaris_gapoktan` varchar(50) DEFAULT NULL,
  `bendaraha_gapoktan` varchar(50) DEFAULT NULL,
  `komoditas_gapoktan` varchar(50) DEFAULT NULL,
  `tingkat_kemampuan` varchar(50) DEFAULT NULL,
  `nama_penyuluhan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabelpenyuluhan`
--

CREATE TABLE `tabelpenyuluhan` (
  `nip` int(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(10) DEFAULT NULL,
  `pangkat` varchar(10) DEFAULT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `wilayah_kerja` varchar(100) DEFAULT NULL,
  `no_hp` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tabelpoktan`
--

CREATE TABLE `tabelpoktan` (
  `id` int(10) NOT NULL,
  `desa` varchar(50) DEFAULT NULL,
  `nama_poktan` varchar(50) DEFAULT NULL,
  `tahun_pembentukan` int(10) DEFAULT NULL,
  `jemis_kelompok` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabeladmin`
--
ALTER TABLE `tabeladmin`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `tabelbantuan`
--
ALTER TABLE `tabelbantuan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tabelgapoktan`
--
ALTER TABLE `tabelgapoktan`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tabelpenyuluhan`
--
ALTER TABLE `tabelpenyuluhan`
  ADD PRIMARY KEY (`nip`);

--
-- Indexes for table `tabelpoktan`
--
ALTER TABLE `tabelpoktan`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
