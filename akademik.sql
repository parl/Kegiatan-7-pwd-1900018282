-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2021 at 03:12 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `khs`
--

CREATE TABLE `khs` (
  `NIM` varchar(5) NOT NULL,
  `KodeMK` varchar(5) NOT NULL,
  `nilai` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khs`
--

INSERT INTO `khs` (`NIM`, `KodeMK`, `nilai`) VALUES
('mhs01', 'mk002', '80'),
('mhs02', 'mk001', '90');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(5) NOT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `jkel` varchar(1) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `tgllhr` date DEFAULT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama`, `jkel`, `alamat`, `tgllhr`, `nilai`) VALUES
('MHS01', 'Siti Aminah', 'P', 'SOLO', '1995-10-01', 80),
('MHS02', 'Rita', 'P', 'SOLO', '1999-01-01', 75),
('MHS03', 'Amirudin', 'L', 'SEMARANG', '1998-08-11', 90),
('MHS04', 'Siti', 'P', 'JAKARTA', '1995-04-15', 85),
('MHS05', 'Genjieehhh', 'L', 'TOKYO', '1992-07-05', 0);

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `sem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`kode`, `nama`, `sks`, `sem`) VALUES
('mk001', 'Pemrograman Web Dinamis', 3, 5),
('mk002', 'Keamanan Komputer', 3, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL,
  `Negara` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `password`, `nama_lengkap`, `email`, `level`, `Negara`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Jerry', 'JerryVue@gmail.com', '', 'Indonesia');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `khs`
--
ALTER TABLE `khs`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
