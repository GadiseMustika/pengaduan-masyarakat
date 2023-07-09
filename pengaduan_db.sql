-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2023 at 08:09 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengaduan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_masyarakat`
--

CREATE TABLE `tb_masyarakat` (
  `id` bigint(20) NOT NULL,
  `nik` char(16) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_masyarakat`
--

INSERT INTO `tb_masyarakat` (`id`, `nik`, `nama`, `username`, `password`, `telp`) VALUES
(5, '1234567890123455', 'yunita', 'yunita', '41a0b6583426e2f3b0382d9cb3a3969205d39980', '08122323243'),
(6, '1231231231123123', 'ai', 'ai', '141a92417f71895e56c4a5da05f3e98fc78e2220', '01928198200'),
(7, '1231231451452345', 'yana', 'yana', '54d5a2ff84fc92d0c057b642f6144230af5ab7f2', '0812222343434'),
(8, '3603164606010004', 'Gadis', 'Dise', '8cb2237d0679ca88db6464eac60da96345513964', '089503783435'),
(9, '123456', 'Tika', 'Mustika', '1234', '089503568343'),
(10, '3603164606010005', 'Gadis', 'Gadise', '7c4a8d09ca3762af61e59520943dc26494f8941b', '089503783435');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengaduan`
--

CREATE TABLE `tb_pengaduan` (
  `id` bigint(20) NOT NULL,
  `tgl` date NOT NULL,
  `nik` char(16) NOT NULL,
  `kategori_pengaduan` enum('Kependudukan','Pencatatan Sipil','Gratifikasi','Layanan') NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('ditanggapi','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pengaduan`
--

INSERT INTO `tb_pengaduan` (`id`, `tgl`, `nik`, `kategori_pengaduan`, `isi_laporan`, `foto`, `status`) VALUES
(3, '2020-04-08', '1234567890123455', 'Kependudukan', 'jaf;ha;oian;odjanvgfa;ownhfda;ofnc;oanhv;oa', 'bantu_java_code_1.png', 'selesai'),
(4, '2020-04-07', '1231231231123123', 'Kependudukan', 'ajfola afp0aufjawdo', 'migration_laravel_3.png', 'selesai'),
(5, '2020-04-30', '1231231231123123', 'Kependudukan', 'kudsu7jyzrhx', 'reached.png', 'proses'),
(10, '2020-05-01', '1234567890123455', 'Kependudukan', 'tes', 'b_indo_23_.png', 'proses'),
(11, '2023-07-09', '3603164606010004', 'Kependudukan', 'Proses Akta Kelahiran', 'a,f_10_lining.png', 'proses');

-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE `tb_petugas` (
  `id` bigint(20) NOT NULL,
  `nama_petugas` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `telp` varchar(255) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`id`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(2, 'andi', 'andi', 'dbd122ef7b6a09ffecf5db9c9296320f3c94e707', '0812', 'admin'),
(12, 'yani', 'yani', '99a123b54e4c74b11c40ce5934bc137b2fbf2531', '0812', 'petugas'),
(13, 'Gadise', 'Dise', '1234', '089503568343', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tanggapan`
--

CREATE TABLE `tb_tanggapan` (
  `id` bigint(20) NOT NULL,
  `id_pengaduan` bigint(20) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tanggapan`
--

INSERT INTO `tb_tanggapan` (`id`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(3, 2, '2020-04-30', 'andi isi ya', 2),
(4, 3, '2020-04-30', ';ofalah ;alhf a;fha;ohf;ahfda', 2),
(5, 7, '2020-05-01', 'kami akan segera menyelesaikan nya\r\n', 2),
(6, 4, '2020-05-01', 'FDAdWADGFDA', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_masyarakat`
--
ALTER TABLE `tb_masyarakat`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_pengaduan`
--
ALTER TABLE `tb_pengaduan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tb_petugas`
--
ALTER TABLE `tb_petugas`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_tanggapan`
--
ALTER TABLE `tb_tanggapan`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
