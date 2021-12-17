-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 20, 2019 at 08:42 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database_raskin`
--

-- --------------------------------------------------------

--
-- Table structure for table `max_min_topsis`
--

CREATE TABLE `max_min_topsis` (
  `Kode_Kriteria` varchar(50) DEFAULT NULL,
  `Nilai_Max_Min` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nilai_topsis`
--

CREATE TABLE `nilai_topsis` (
  `Id_Nilai` varchar(10) DEFAULT NULL,
  `Kode_Kriteria` varchar(50) DEFAULT NULL,
  `NIK` varchar(50) DEFAULT NULL,
  `Nilai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nilai_topsis`
--

INSERT INTO `nilai_topsis` (`Id_Nilai`, `Kode_Kriteria`, `NIK`, `Nilai`) VALUES
('', '1', '4', 2),
('', '2', '4', 11),
('', '3', '4', 1),
('', '4', '4', 5),
('', '5', '4', 5),
('', '6', '4', 1),
('', '7', '4', 1),
('', '8', '4', 4),
('', '9', '4', 2),
('', '10', '4', 1),
('', '1', '5', 3),
('', '2', '5', 12),
('', '3', '5', 5),
('', '4', '5', 1),
('', '5', '5', 5),
('', '6', '5', 3),
('', '7', '5', 3),
('', '8', '5', 4),
('', '9', '5', 2),
('', '10', '5', 3);

-- --------------------------------------------------------

--
-- Table structure for table `pw_kriteria`
--

CREATE TABLE `pw_kriteria` (
  `Kode_Kriteria` int(11) NOT NULL,
  `pw1` varchar(50) DEFAULT NULL,
  `pw2` varchar(50) DEFAULT NULL,
  `pw3` varchar(50) DEFAULT NULL,
  `pw4` varchar(50) DEFAULT NULL,
  `pw5` varchar(50) DEFAULT NULL,
  `pw6` varchar(50) DEFAULT NULL,
  `pw7` varchar(50) DEFAULT NULL,
  `pw8` varchar(50) DEFAULT NULL,
  `pw9` varchar(50) DEFAULT NULL,
  `pw10` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `Id_Admin` varchar(50) NOT NULL,
  `Nama_Admin` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`Id_Admin`, `Nama_Admin`, `Password`) VALUES
('123456', 'virna', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `Kode_Kriteria` int(11) NOT NULL DEFAULT '0',
  `Nama_Kriteria` varchar(50) DEFAULT NULL,
  `Bobot` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`Kode_Kriteria`, `Nama_Kriteria`, `Bobot`) VALUES
(1, 'Pekerjaan', 0.19),
(2, 'Jumlah Keluarga', 0.14),
(3, 'Fasilitas Rumah', 0.14),
(4, 'Luas Rumah', 0.12),
(5, 'Luas Tanah', 0.1),
(6, 'Jenis Lantai', 0.07),
(7, 'Jenis Dinding', 0.07),
(8, 'Jenis Atap', 0.07),
(9, 'Fasilitas Toilet', 0.06),
(10, 'Pembuangan Toilet', 0.05);

-- --------------------------------------------------------

--
-- Table structure for table `tb_nilai_penduduk`
--

CREATE TABLE `tb_nilai_penduduk` (
  `NIK` varchar(50) DEFAULT NULL,
  `K1` double DEFAULT NULL,
  `K2` double DEFAULT NULL,
  `K3` double DEFAULT NULL,
  `K4` double DEFAULT NULL,
  `K5` double DEFAULT NULL,
  `K6` double DEFAULT NULL,
  `K7` double DEFAULT NULL,
  `K8` double DEFAULT NULL,
  `K9` double DEFAULT NULL,
  `K10` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_nilai_penduduk`
--

INSERT INTO `tb_nilai_penduduk` (`NIK`, `K1`, `K2`, `K3`, `K4`, `K5`, `K6`, `K7`, `K8`, `K9`, `K10`) VALUES
('4', 2, 11, 1, 5, 5, 1, 1, 4, 2, 1),
('5', 3, 12, 5, 1, 5, 3, 3, 4, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `tb_penduduk`
--

CREATE TABLE `tb_penduduk` (
  `NIK` varchar(50) NOT NULL,
  `Nama` varchar(50) DEFAULT NULL,
  `Alamat` longtext,
  `Jenis_Kelamin` varchar(50) DEFAULT NULL,
  `Umur` varchar(50) DEFAULT NULL,
  `Pendidikan` varchar(50) DEFAULT NULL,
  `Pekerjaan` varchar(50) DEFAULT NULL,
  `Jumlah_Keluarga` varchar(50) DEFAULT NULL,
  `Kepemilikan_Rumah` varchar(50) DEFAULT NULL,
  `Luas_Rumah` varchar(50) DEFAULT NULL,
  `Luas_Tanah` varchar(50) DEFAULT NULL,
  `Jenis_Lantai` varchar(50) DEFAULT NULL,
  `Jenis_Dinding` varchar(50) DEFAULT NULL,
  `Jenis_Atap` varchar(50) DEFAULT NULL,
  `Fasilitas_Toilet` varchar(50) DEFAULT NULL,
  `Tempat_Pembuangan_Tinja` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_penduduk`
--

INSERT INTO `tb_penduduk` (`NIK`, `Nama`, `Alamat`, `Jenis_Kelamin`, `Umur`, `Pendidikan`, `Pekerjaan`, `Jumlah_Keluarga`, `Kepemilikan_Rumah`, `Luas_Rumah`, `Luas_Tanah`, `Jenis_Lantai`, `Jenis_Dinding`, `Jenis_Atap`, `Fasilitas_Toilet`, `Tempat_Pembuangan_Tinja`) VALUES
('4', 'D', 'D', 'L', '11', 'Tidak Sekolah', 'Pedagang', '11', 'Milik Sendiri', '12', '12', 'Keramik', 'Tembok Semen', 'Seng', 'Bersama', 'Tangki'),
('5', 'E', 'E', 'L', '89', 'SMP', 'Peternak', '12', 'Kontrak', '88', '92', 'Tanah', 'Anyaman Bambu', 'Seng', 'Bersama', 'Kolam/Sawah/Sungai/Danau');

-- --------------------------------------------------------

--
-- Table structure for table `tb_perbandingan_kriteria`
--

CREATE TABLE `tb_perbandingan_kriteria` (
  `Id` varchar(50) DEFAULT NULL,
  `Kriteria_1` varchar(50) DEFAULT NULL,
  `Kriteria_2` varchar(50) DEFAULT NULL,
  `Nilai_Banding` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_perbandingan_kriteria`
--

INSERT INTO `tb_perbandingan_kriteria` (`Id`, `Kriteria_1`, `Kriteria_2`, `Nilai_Banding`) VALUES
('1', 'Pekerjaan', 'Pekerjaan', '1'),
('2', 'Jumlah Keluarga', 'Jumlah Keluarga', '1'),
('3', 'Fasilitas Rumah', 'Fasilitas Rumah', '1'),
('4', 'Luas Rumah', 'Luas Rumah', '1'),
('5', 'Luas Tanah', 'Luas Tanah', '1'),
('6', 'Jenis Lantai', 'Jenis Lantai', '1'),
('7', 'Jenis Dinding', 'Jenis Dinding', '1'),
('8', 'Jenis Atap', 'Jenis Atap', '1'),
('9', 'Fasilitas Toilet', 'Fasilitas Toilet', '1'),
('10', 'Pembuangan Toilet', 'Pembuangan Toilet', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ranking`
--

CREATE TABLE `tb_ranking` (
  `Ranking` varchar(50) DEFAULT NULL,
  `NIK` varchar(50) DEFAULT NULL,
  `Nilai` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_ranking`
--

INSERT INTO `tb_ranking` (`Ranking`, `NIK`, `Nilai`) VALUES
('1', '5', 0.69),
('2', '4', 0.31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pw_kriteria`
--
ALTER TABLE `pw_kriteria`
  ADD PRIMARY KEY (`Kode_Kriteria`);

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`Id_Admin`);

--
-- Indexes for table `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`Kode_Kriteria`);

--
-- Indexes for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD PRIMARY KEY (`NIK`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pw_kriteria`
--
ALTER TABLE `pw_kriteria`
  MODIFY `Kode_Kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
