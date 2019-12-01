-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2019 at 03:19 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mri_transfer`
--

-- --------------------------------------------------------

--
-- Table structure for table `archieve_transfer`
--

CREATE TABLE `archieve_transfer` (
  `transfer_id` int(11) NOT NULL,
  `transfer_req_id` int(11) NOT NULL,
  `transfer_type` tinyint(4) NOT NULL,
  `jenis_pembayaran_id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `waktu_request` datetime NOT NULL,
  `jadwal_transfer` datetime NOT NULL,
  `norek` varbinary(20) NOT NULL,
  `pemilik_rekening` varchar(40) NOT NULL,
  `bank` varchar(25) NOT NULL,
  `kode_bank` varchar(10) NOT NULL,
  `berita_transfer` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `terotorisasi` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_transfer`
--

CREATE TABLE `data_transfer` (
  `transfer_id` int(11) NOT NULL,
  `transfer_req_id` int(11) NOT NULL,
  `transfer_type` tinyint(4) NOT NULL,
  `jenis_pembayaran_id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `waktu_request` datetime NOT NULL,
  `jadwal_transfer` datetime NOT NULL,
  `norek` text NOT NULL,
  `pemilik_rekening` varchar(40) NOT NULL,
  `bank` varchar(25) NOT NULL,
  `kode_bank` varchar(10) NOT NULL,
  `berita_transfer` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `terotorisasi` tinyint(4) NOT NULL,
  `hasil_transfer` tinyint(4) NOT NULL,
  `ket_transfer` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_transfer`
--

INSERT INTO `data_transfer` (`transfer_id`, `transfer_req_id`, `transfer_type`, `jenis_pembayaran_id`, `keterangan`, `waktu_request`, `jadwal_transfer`, `norek`, `pemilik_rekening`, `bank`, `kode_bank`, `berita_transfer`, `jumlah`, `terotorisasi`, `hasil_transfer`, `ket_transfer`) VALUES
(1, 1, 2, 16, 'honor test', '2019-11-18 00:00:00', '2019-12-01 00:00:00', '0201245681', 'teguh', 'bca', '014', 'test', 100000, 2, 2, 'Success'),
(8, 2, 2, 16, 'honor testtt', '2019-11-18 00:00:00', '2019-12-01 00:00:00', '0201245681', 'teguh', 'bca', '014', 'test', 200000, 2, 2, 'Success'),
(18, 3, 2, 16, 'honor testtt', '2019-11-18 00:00:00', '2019-12-01 00:00:00', '0201245501', 'teguh', 'BRINIDJA', 'BRINIDJA', 'test', 300000, 2, 1, 'antri');

-- --------------------------------------------------------

--
-- Table structure for table `data_transfer_copy`
--

CREATE TABLE `data_transfer_copy` (
  `transfer_id` int(11) NOT NULL,
  `transfer_req_id` int(11) NOT NULL,
  `transfer_type` tinyint(4) NOT NULL,
  `jenis_pembayaran_id` int(11) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `waktu_request` datetime NOT NULL,
  `jadwal_transfer` datetime NOT NULL,
  `norek` text NOT NULL,
  `pemilik_rekening` varchar(40) NOT NULL,
  `bank` varchar(25) NOT NULL,
  `kode_bank` varchar(10) NOT NULL,
  `berita_transfer` varchar(30) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `terotorisasi` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_transfer_copy`
--

INSERT INTO `data_transfer_copy` (`transfer_id`, `transfer_req_id`, `transfer_type`, `jenis_pembayaran_id`, `keterangan`, `waktu_request`, `jadwal_transfer`, `norek`, `pemilik_rekening`, `bank`, `kode_bank`, `berita_transfer`, `jumlah`, `terotorisasi`) VALUES
(1, 1, 0, 16, 'honor', '2019-11-15 12:00:00', '2019-11-15 12:00:00', '12345678', 'teguh', 'bca', '014', 'test', 10000000, 1),
(2, 1, 0, 16, 'honor', '2019-11-15 12:00:00', '2019-11-15 12:00:00', '12345678', 'teguh', 'bca', '014', 'test', 5000000, 0),
(4, 1, 0, 16, 'honor', '2019-11-15 12:00:00', '2019-11-15 12:00:00', '12345678', 'teguh', 'bca', '014', 'test', 7000000, 0),
(5, 1, 0, 16, 'honor', '2019-11-15 12:00:00', '2019-11-15 12:00:00', '12345678', 'teguh', 'bca', '014', 'test', 3000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pembayaran`
--

CREATE TABLE `jenis_pembayaran` (
  `jenispembayaranid` int(11) NOT NULL,
  `jenispembayaran` varchar(30) NOT NULL,
  `max_transfer` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jenis_pembayaran`
--

INSERT INTO `jenis_pembayaran` (`jenispembayaranid`, `jenispembayaran`, `max_transfer`) VALUES
(16, 'Honor', 5000000);

-- --------------------------------------------------------

--
-- Table structure for table `role`
--

CREATE TABLE `role` (
  `roleid` int(11) NOT NULL,
  `role` varchar(15) NOT NULL,
  `level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `role`
--

INSERT INTO `role` (`roleid`, `role`, `level`) VALUES
(1, 'administrator', 1),
(2, 'user', 2);

-- --------------------------------------------------------

--
-- Table structure for table `saldo`
--

CREATE TABLE `saldo` (
  `saldo_id` int(11) NOT NULL,
  `saldo` int(11) NOT NULL,
  `datetime` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saldo`
--

INSERT INTO `saldo` (`saldo_id`, `saldo`, `datetime`) VALUES
(1, 118850000, '2019-11-28 22:44:02'),
(2, 118855000, '2019-11-28 22:46:14'),
(3, 118850000, '2019-11-28 22:53:18'),
(4, 118850000, '2019-11-28 22:54:08'),
(5, 118850000, '2019-11-28 22:55:23'),
(6, 118855000, '2019-11-28 22:55:36'),
(7, 118850000, '2019-11-28 22:57:36'),
(8, 118850000, '2019-11-28 22:58:20'),
(9, 118850000, '2019-11-28 22:58:43'),
(10, 118850000, '2019-11-28 22:59:06'),
(11, 118850000, '2019-11-28 22:59:39'),
(12, 118855000, '2019-11-28 23:04:44'),
(13, 118855000, '2019-11-28 23:09:53'),
(14, 118900000, '2019-11-28 23:36:24'),
(15, 118850000, '2019-12-01 20:49:01'),
(16, 118850000, '2019-12-01 21:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `user_name` varchar(20) NOT NULL,
  `user_login` varchar(30) NOT NULL,
  `user_password` varchar(15) NOT NULL,
  `roleid` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `user_name`, `user_login`, `user_password`, `roleid`) VALUES
(1, 'admin', 'admin@test.com', '12345', 1),
(2, 'user', 'user@test.com', '12345', 2),
(5, 'teguh', 'teguh@gmail.com', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `archieve_transfer`
--
ALTER TABLE `archieve_transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `data_transfer`
--
ALTER TABLE `data_transfer`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `data_transfer_copy`
--
ALTER TABLE `data_transfer_copy`
  ADD PRIMARY KEY (`transfer_id`);

--
-- Indexes for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  ADD PRIMARY KEY (`jenispembayaranid`);

--
-- Indexes for table `role`
--
ALTER TABLE `role`
  ADD PRIMARY KEY (`roleid`);

--
-- Indexes for table `saldo`
--
ALTER TABLE `saldo`
  ADD PRIMARY KEY (`saldo_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `archieve_transfer`
--
ALTER TABLE `archieve_transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `data_transfer`
--
ALTER TABLE `data_transfer`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `data_transfer_copy`
--
ALTER TABLE `data_transfer_copy`
  MODIFY `transfer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jenis_pembayaran`
--
ALTER TABLE `jenis_pembayaran`
  MODIFY `jenispembayaranid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `role`
--
ALTER TABLE `role`
  MODIFY `roleid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `saldo`
--
ALTER TABLE `saldo`
  MODIFY `saldo_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
