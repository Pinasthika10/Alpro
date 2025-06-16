-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2025 at 04:10 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rs_kel 2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel dokter`
--

CREATE TABLE `tabel dokter` (
  `Kode Dokter` varchar(10) NOT NULL,
  `Nama Dokter` varchar(20) NOT NULL,
  `JK Dokter` varchar(15) NOT NULL,
  `Gelar/Spesialis` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel dokter`
--

INSERT INTO `tabel dokter` (`Kode Dokter`, `Nama Dokter`, `JK Dokter`, `Gelar/Spesialis`) VALUES
('RCN24', 'Dr.Ryan Kusuma,Sp.PD', 'Laki-laki', 'Sp.Penyakit Dalam'),
('WNR72', 'Dr.Retno Widjaja,Sp.', 'Perempuan', 'Sp.Penyakit Dalam'),
('RCN44', 'Dr.Pratama,Sp.PD', 'Laki-laki', 'Sp.Penyakit Dalam'),
('RCN23', 'Dr.Syafudin,Sp.PD', 'Laki-laki', 'Sp.Penyakit Dalam');

-- --------------------------------------------------------

--
-- Table structure for table `tabel pasien`
--

CREATE TABLE `tabel pasien` (
  `Kode Pasien` varchar(10) NOT NULL,
  `Nama Pasien` varchar(10) NOT NULL,
  `No.Telpn` varchar(15) NOT NULL,
  `Alamat` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel pasien`
--

INSERT INTO `tabel pasien` (`Kode Pasien`, `Nama Pasien`, `No.Telpn`, `Alamat`) VALUES
('WX01', 'Angga,Tn', '0813333333', 'Bekasi'),
('WX02', 'Didin,Tn', '08255555555', 'Tebet'),
('WX03', 'Wisnu,Tn', '021567890', 'Condet'),
('WX04', 'Aep,Tn', '0856666666', 'Jonggol');

-- --------------------------------------------------------

--
-- Table structure for table `tabel pendaftaran pasien`
--

CREATE TABLE `tabel pendaftaran pasien` (
  `Kode Pendaftaran` varchar(10) NOT NULL,
  `Nama Pendaftar` varchar(20) NOT NULL,
  `Tgl.Pendaftaran` date NOT NULL,
  `No.Antre Pasien` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel pendaftaran pasien`
--

INSERT INTO `tabel pendaftaran pasien` (`Kode Pendaftaran`, `Nama Pendaftar`, `Tgl.Pendaftaran`, `No.Antre Pasien`) VALUES
('WX01', 'Galuh', '2018-12-12', '001'),
('WX02', 'Riyanti', '2018-12-12', '002'),
('WX03', 'Bagas', '2018-12-12', '003'),
('WX04', 'Sunaryo', '2018-12-12', '004');

-- --------------------------------------------------------

--
-- Table structure for table `tabel rekam medis`
--

CREATE TABLE `tabel rekam medis` (
  `No.RM` varchar(15) NOT NULL,
  `Kode Dokter` varchar(20) NOT NULL,
  `Tgl.Periksa Pasien` date NOT NULL,
  `Diagnosa Dokter` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel rekam medis`
--

INSERT INTO `tabel rekam medis` (`No.RM`, `Kode Dokter`, `Tgl.Periksa Pasien`, `Diagnosa Dokter`) VALUES
('11-33-45', 'RCN24', '2018-12-12', 'Cardiomegaly'),
('05-33-46', 'WNR72', '2018-12-12', 'Cardiomegaly'),
('02-12-33', 'RCN44', '2018-12-12', 'Cardiomegaly'),
('01-03-04', 'RCN23', '2018-12-12', 'Cardiomegaly');

-- --------------------------------------------------------

--
-- Table structure for table `tabel transaksi`
--

CREATE TABLE `tabel transaksi` (
  `No. Antrian` varchar(10) NOT NULL,
  `No. Pasien` varchar(10) NOT NULL,
  `No. Pembayaran` varchar(10) NOT NULL,
  `Jmlh. Pembayaran` varchar(15) NOT NULL,
  `Nama Pasien` varchar(10) NOT NULL,
  `No. RM` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tabel transaksi`
--

INSERT INTO `tabel transaksi` (`No. Antrian`, `No. Pasien`, `No. Pembayaran`, `Jmlh. Pembayaran`, `Nama Pasien`, `No. RM`) VALUES
('001', '11-33-45', 'WX01', 'Rp.300.000', 'ANGGA', '11-33-45'),
('002', '05-33-46', 'WX02', 'Rp.200.000', 'DIDIN', '05-33-46'),
('003', '02-12-33', 'WX03', 'Rp.400.000', 'WISNU', '02-12-33'),
('004', '01-03-04', 'WX04', 'Rp.2.000.000', 'AEP', '01-03-04');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
