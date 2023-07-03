-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2023 at 05:52 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `busticketci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_menu`
--

CREATE TABLE `tbl_access_menu` (
  `kd_access_menu` int(11) DEFAULT NULL,
  `kd_level` int(11) DEFAULT NULL,
  `kd_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_menu`
--

INSERT INTO `tbl_access_menu` (`kd_access_menu`, `kd_level`, `kd_menu`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 2, 2),
(1, 1, 1),
(2, 1, 2),
(3, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `kd_admin` varchar(50) NOT NULL,
  `nama_admin` varchar(35) DEFAULT NULL,
  `username_admin` varchar(30) DEFAULT NULL,
  `password_admin` varchar(256) DEFAULT NULL,
  `img_admin` varchar(35) DEFAULT NULL,
  `email_admin` varchar(35) DEFAULT NULL,
  `level_admin` varchar(12) DEFAULT NULL,
  `status_admin` int(1) DEFAULT NULL,
  `date_create_admin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`kd_admin`, `nama_admin`, `username_admin`, `password_admin`, `img_admin`, `email_admin`, `level_admin`, `status_admin`, `date_create_admin`) VALUES
('ADM0001', 'Administrator', 'admin', '$2y$10$nvmCaXC4Ohua5eW4fFAMauISafgwvPsoRXVNnToZpbF4vWfBw.xvu', 'assets/backend/img/default.png', 'adm@gmail.com', '2', 1, '1552276812'),
('ADM0003', 'BS Owner', 'owner', '$2y$10$nvmCaXC4Ohua5eW4fFAMauISafgwvPsoRXVNnToZpbF4vWfBw.xvu', 'assets/backend/img/default.png', 'owner@gmail.com', '1', 1, '1552819095');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bank`
--

CREATE TABLE `tbl_bank` (
  `kd_bank` varchar(50) NOT NULL,
  `nasabah_bank` varchar(50) DEFAULT NULL,
  `nama_bank` varchar(50) DEFAULT NULL,
  `nomrek_bank` varchar(50) DEFAULT NULL,
  `photo_bank` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bank`
--

INSERT INTO `tbl_bank` (`kd_bank`, `nasabah_bank`, `nama_bank`, `nomrek_bank`, `photo_bank`) VALUES
('BNK0001', 'BNI', 'Bank Negara Indonesia', '5709506', '/assets/frontend/img/bank/Bni.png'),
('BNK0002', 'BCA', 'Bank Central Asia', '23588300', '/assets/frontend/img/bank/Bca.jpg'),
('BNK0003', 'Mandiri', 'Bank Mandiri', '52997777', '/assets/frontend/img/bank/mandiri.png'),
('BNK0004', 'BRI', 'Bank Rakyat Indonesia', '2500065', '/assets/frontend/img/bank/bri.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bus`
--

CREATE TABLE `tbl_bus` (
  `kd_bus` varchar(50) NOT NULL,
  `nama_bus` varchar(50) DEFAULT NULL,
  `plat_bus` varchar(50) DEFAULT NULL,
  `kapasitas_bus` int(13) DEFAULT NULL,
  `status_bus` int(1) DEFAULT NULL,
  `desc_bus` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_bus`
--

INSERT INTO `tbl_bus` (`kd_bus`, `nama_bus`, `plat_bus`, `kapasitas_bus`, `status_bus`, `desc_bus`) VALUES
('B001', 'Agra Mas', 'CA2150', 23, 1, NULL),
('B002', 'Agra Mas', 'CA1100', 23, 1, NULL),
('B003', 'Agra Mas', 'CA1213', 20, 1, NULL),
('B004', 'Agra Mas', 'CA1515', 23, 1, NULL),
('B005', 'Agra Mas', 'CA1200', 23, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jadwal`
--

CREATE TABLE `tbl_jadwal` (
  `kd_jadwal` varchar(50) NOT NULL,
  `kd_bus` varchar(50) DEFAULT NULL,
  `kd_tujuan` varchar(50) DEFAULT NULL,
  `kd_asal` varchar(50) DEFAULT NULL,
  `wilayah_jadwal` varchar(50) DEFAULT NULL,
  `jam_berangkat_jadwal` time DEFAULT NULL,
  `jam_tiba_jadwal` time DEFAULT NULL,
  `harga_jadwal` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_jadwal`
--

INSERT INTO `tbl_jadwal` (`kd_jadwal`, `kd_bus`, `kd_tujuan`, `kd_asal`, `wilayah_jadwal`, `jam_berangkat_jadwal`, `jam_tiba_jadwal`, `harga_jadwal`) VALUES
('J0001', 'B001', 'TJ001', 'TJ002', 'Tasikmalaya', '07:00:00', '12:00:00', '315000'),
('J0002', 'B002', 'TJ009', 'TJ008', 'Bandung', '10:00:00', '13:00:00', '200000'),
('J0003', 'B003', 'TJ004', 'TJ009', 'Cirebon', '09:00:00', '13:00:00', '250000'),
('J0004', 'B004', 'TJ008', 'TJ004', 'Kab. Bekasi', '10:00:00', '13:00:00', '200000'),
('J0005', 'B005', 'TJ006', 'TJ008', 'Karawang', '10:00:00', '11:30:00', '100000');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_konfirmasi`
--

CREATE TABLE `tbl_konfirmasi` (
  `kd_konfirmasi` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_konfirmasi` varchar(50) DEFAULT NULL,
  `nama_bank_konfirmasi` varchar(50) DEFAULT NULL,
  `norek_konfirmasi` varchar(50) DEFAULT NULL,
  `total_konfirmasi` varchar(50) DEFAULT NULL,
  `photo_konfirmasi` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_konfirmasi`
--

INSERT INTO `tbl_konfirmasi` (`kd_konfirmasi`, `kd_order`, `nama_konfirmasi`, `nama_bank_konfirmasi`, `norek_konfirmasi`, `total_konfirmasi`, `photo_konfirmasi`) VALUES
('KF0001', 'ORD00001', 'Muhammad Arief', 'Bank Mandiri', '087654345678', '630000', '/assets/frontend/upload/payment/mandiri2.png'),
('KF0002', 'ORD00002', 'Ayana Fira', 'Bank Central Asia', '098765434567', '200000', '/assets/frontend/upload/payment/Bca.jpg'),
('KF0003', 'ORD00003', 'Arief', 'Bank Negara Indonesia', '98765433456', '200000', '/assets/frontend/upload/payment/Bni2.png'),
('KF0004', 'ORD00005', 'Muhammad Arief', 'Bank Mandiri', '76548967', '630000', '/assets/frontend/upload/payment/mandiri3.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_level`
--

CREATE TABLE `tbl_level` (
  `kd_level` int(11) NOT NULL,
  `nama_level` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_level`
--

INSERT INTO `tbl_level` (`kd_level`, `nama_level`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_menu`
--

CREATE TABLE `tbl_menu` (
  `kd_menu` int(11) NOT NULL,
  `nama_menu` varchar(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_menu`
--

INSERT INTO `tbl_menu` (`kd_menu`, `nama_menu`) VALUES
(1, 'owner'),
(2, 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id_order` int(11) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `kd_tiket` varchar(50) DEFAULT NULL,
  `kd_jadwal` varchar(50) DEFAULT NULL,
  `kd_pelanggan` varchar(50) DEFAULT NULL,
  `kd_bank` varchar(50) DEFAULT NULL,
  `asal_order` varchar(200) DEFAULT NULL,
  `nama_order` varchar(50) DEFAULT NULL,
  `tgl_beli_order` varchar(50) DEFAULT NULL,
  `tgl_berangkat_order` varchar(50) DEFAULT NULL,
  `nama_kursi_order` varchar(50) DEFAULT NULL,
  `umur_kursi_order` varchar(50) DEFAULT NULL,
  `no_kursi_order` varchar(50) DEFAULT NULL,
  `no_ktp_order` varchar(50) DEFAULT NULL,
  `no_tlpn_order` varchar(50) DEFAULT NULL,
  `alamat_order` varchar(100) DEFAULT NULL,
  `email_order` varchar(100) DEFAULT NULL,
  `expired_order` varchar(50) DEFAULT NULL,
  `qrcode_order` varchar(100) DEFAULT NULL,
  `status_order` varchar(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id_order`, `kd_order`, `kd_tiket`, `kd_jadwal`, `kd_pelanggan`, `kd_bank`, `asal_order`, `nama_order`, `tgl_beli_order`, `tgl_berangkat_order`, `nama_kursi_order`, `umur_kursi_order`, `no_kursi_order`, `no_ktp_order`, `no_tlpn_order`, `alamat_order`, `email_order`, `expired_order`, `qrcode_order`, `status_order`) VALUES
(46, 'ORD00001', 'TORD00001J0001202306111', 'J0001', 'CA0001', 'BNK0003', 'TJ002', 'Muhammad Arief', 'Saturday, 03 June 2023, 13:17', '2023-06-11', 'Arief', '40', '1', '0987654345678', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '04-06-2023 13:17:13', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(47, 'ORD00001', 'TORD00001J0001202306112', 'J0001', 'CA0001', 'BNK0003', 'TJ002', 'Muhammad Arief', 'Saturday, 03 June 2023, 13:17', '2023-06-11', 'Arief', '39', '2', '0987654345678', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '04-06-2023 13:17:13', 'assets/frontend/upload/qrcode/ORD00001.png', '2'),
(48, 'ORD00002', 'TORD00002J0002202306031', 'J0002', 'CA0002', 'BNK0001', 'TJ008', 'Ayana Fira', 'Saturday, 03 June 2023, 13:37', '2023-06-03', 'Ayana', '20', '1', '987654234567', '0876435627', 'Jl. Hj. Putra 20', 'Ayana@gmail.com', '04-06-2023 13:37:09', 'assets/frontend/upload/qrcode/ORD00002.png', '2'),
(49, 'ORD00003', 'TORD00003J0002202306032', 'J0002', 'CA0001', 'BNK0001', 'TJ008', 'Muhammad Arief', 'Saturday, 03 June 2023, 23:20', '2023-06-03', 'Arief', '33', '2', '23456789', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '04-06-2023 23:20:02', 'assets/frontend/upload/qrcode/ORD00003.png', '2'),
(50, 'ORD00004', 'TORD00004J0002202306041', 'J0002', 'CA0001', 'BNK0001', 'TJ008', 'Muhammad Arief', 'Sunday, 04 June 2023, 19:54', '2023-06-04', 'Arief', '43', '1', '0987654345678', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '05-06-2023 19:54:03', 'assets/frontend/upload/qrcode/ORD00004.png', '2'),
(51, 'ORD00005', 'TORD00005J0001202306161', 'J0001', 'CA0001', 'BNK0003', 'TJ002', 'Muhammad Arief', 'Friday, 16 June 2023, 15:53', '2023-06-16', 'Arief', '20', '1', '0987654345678', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '17-06-2023 15:53:16', 'assets/frontend/upload/qrcode/ORD00005.png', '2'),
(52, 'ORD00005', 'TORD00005J0001202306162', 'J0001', 'CA0001', 'BNK0003', 'TJ002', 'Muhammad Arief', 'Friday, 16 June 2023, 15:53', '2023-06-16', 'Acong', '20', '2', '0987654345678', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '17-06-2023 15:53:16', 'assets/frontend/upload/qrcode/ORD00005.png', '2'),
(53, 'ORD00006', 'TORD00006J0001202306301', 'J0001', 'CA0001', 'BNK0001', 'TJ002', 'Muhammad Arief', 'Friday, 30 June 2023, 22:52', '2023-06-30', 'arief', '43', '1', '7654323456789', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '01-07-2023 22:52:21', 'assets/frontend/upload/qrcode/ORD00006.png', '1'),
(54, 'ORD00007', 'TORD00007J0001202307011', 'J0001', 'CA0001', 'BNK0001', 'TJ002', 'Muhammad Arief', 'Saturday, 01 July 2023, 02:15', '2023-07-01', 'arief', '88', '1', '7654323456789', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '02-07-2023 02:15:41', 'assets/frontend/upload/qrcode/ORD00007.png', '1'),
(55, 'ORD00008', 'TORD00008J0001202307012', 'J0001', 'CA0001', 'BNK0003', 'TJ002', 'Muhammad Arief', 'Saturday, 01 July 2023, 04:00', '2023-07-01', 'arief', '89', '2', '7654323456789', '081122334455', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '02-07-2023 04:00:15', 'assets/frontend/upload/qrcode/ORD00008.png', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `kd_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `password_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `no_ktp_pelanggan` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `nama_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `alamat_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `email_pelanggan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `telpon_pelanggan` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `img_pelanggan` varchar(200) COLLATE latin1_general_ci NOT NULL,
  `status_pelanggan` int(1) DEFAULT NULL,
  `date_create_pelanggan` varchar(50) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`kd_pelanggan`, `username_pelanggan`, `password_pelanggan`, `no_ktp_pelanggan`, `nama_pelanggan`, `alamat_pelanggan`, `email_pelanggan`, `telpon_pelanggan`, `img_pelanggan`, `status_pelanggan`, `date_create_pelanggan`) VALUES
('CA0002', 'Ayana', '$2y$10$rOoePRZa6Ge10T8admUodOPia9lNebSFTQFY7l09V.sMs.gImtCKC', '', 'Ayana Fira', 'Jl. Hj. Putra 20', 'Ayana@gmail.com', '0876435627', 'assets/frontend/img/default.png', 1, '1685769244'),
('CA0001', 'Arief', '$2y$10$4QxUDLykiUfLKeenXbhsXe.cbH/7verICaQRKiUj0W.aUWxEFp4.G', '', 'Muhammad Arief', 'Jl. Sudirman 10', 'Ariefmuh123@gmail.com', '081122334455', 'assets/frontend/img/default.png', 1, '1685768767');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sub_menu`
--

CREATE TABLE `tbl_sub_menu` (
  `kd_sub_menu` int(11) NOT NULL,
  `kd_menu` int(11) DEFAULT NULL,
  `title_sub_menu` varchar(128) DEFAULT NULL,
  `url_sub_menu` varchar(128) DEFAULT NULL,
  `is_active_sub_menu` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_sub_menu`
--

INSERT INTO `tbl_sub_menu` (`kd_sub_menu`, `kd_menu`, `title_sub_menu`, `url_sub_menu`, `is_active_sub_menu`) VALUES
(0, 1, 'Dashboard', 'backend/home', '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tiket`
--

CREATE TABLE `tbl_tiket` (
  `kd_tiket` varchar(50) NOT NULL,
  `kd_order` varchar(50) DEFAULT NULL,
  `nama_tiket` varchar(50) DEFAULT NULL,
  `kursi_tiket` varchar(50) DEFAULT NULL,
  `umur_tiket` varchar(50) DEFAULT NULL,
  `asal_beli_tiket` varchar(50) DEFAULT NULL,
  `harga_tiket` varchar(50) NOT NULL,
  `etiket_tiket` varchar(100) DEFAULT NULL,
  `status_tiket` varchar(50) NOT NULL,
  `create_tgl_tiket` date DEFAULT NULL,
  `create_admin_tiket` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tiket`
--

INSERT INTO `tbl_tiket` (`kd_tiket`, `kd_order`, `nama_tiket`, `kursi_tiket`, `umur_tiket`, `asal_beli_tiket`, `harga_tiket`, `etiket_tiket`, `status_tiket`, `create_tgl_tiket`, `create_admin_tiket`) VALUES
('TORD00001J0001202306111', 'ORD00001', 'Arief', '1', '40 Years', 'TJ002', '315000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2023-06-03', 'owner'),
('TORD00001J0001202306112', 'ORD00001', 'Arief', '2', '39 Years', 'TJ002', '315000', 'assets/backend/upload/etiket/ORD00001.pdf', '2', '2023-06-03', 'owner'),
('TORD00002J0002202306031', 'ORD00002', 'Ayana', '1', '20 Years', 'TJ008', '200000', 'assets/backend/upload/etiket/ORD00002.pdf', '2', '2023-06-03', 'owner'),
('TORD00003J0002202306032', 'ORD00003', 'Arief', '2', '33 Years', 'TJ008', '200000', 'assets/backend/upload/etiket/ORD00003.pdf', '2', '2023-06-04', 'owner'),
('TORD00004J0002202306041', 'ORD00004', 'Arief', '1', '43 Years', 'TJ008', '200000', 'assets/backend/upload/etiket/ORD00004.pdf', '2', '2023-06-16', 'owner'),
('TORD00005J0001202306161', 'ORD00005', 'Arief', '1', '20 Years', 'TJ002', '315000', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2023-06-16', 'owner'),
('TORD00005J0001202306162', 'ORD00005', 'Acong', '2', '20 Years', 'TJ002', '315000', 'assets/backend/upload/etiket/ORD00005.pdf', '2', '2023-06-16', 'owner');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_token_pelanggan`
--

CREATE TABLE `tbl_token_pelanggan` (
  `kd_token` int(11) NOT NULL,
  `nama_token` varchar(256) DEFAULT NULL,
  `email_token` varchar(50) DEFAULT NULL,
  `date_create_token` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_token_pelanggan`
--

INSERT INTO `tbl_token_pelanggan` (`kd_token`, `nama_token`, `email_token`, `date_create_token`) VALUES
(20, 'e51a292e016ebb4770766730cd409ef9', 'Ariefmuh123@gmail.com', 1685768768),
(21, 'ef3f8c5e3668337870912334fbc06bf3', 'Ayana@gmail.com', 1685769244);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tujuan`
--

CREATE TABLE `tbl_tujuan` (
  `kd_tujuan` varchar(50) NOT NULL,
  `kota_tujuan` varchar(50) NOT NULL,
  `nama_terminal_tujuan` varchar(50) NOT NULL,
  `terminal_tujuan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tujuan`
--

INSERT INTO `tbl_tujuan` (`kd_tujuan`, `kota_tujuan`, `nama_terminal_tujuan`, `terminal_tujuan`) VALUES
('TJ001', 'Tasikmalaya', '', 'Terminal Singaparna'),
('TJ002', 'Jakarta Pusat', '', 'Terminal Pasar Senen'),
('TJ003', 'Garut', '', 'Terminal Guntur'),
('TJ004', 'Cirebon', '', 'Terminal Harjamukti'),
('TJ005', 'Subang', '', 'Terminal Subang'),
('TJ006', 'Karawang', '', 'Terminal Klari'),
('TJ007', 'Indramayu', '', 'Terminal Indramayu'),
('TJ008', 'Kab. Bekasi', '', 'Terminal Cikarang'),
('TJ009', 'Bandung', '', 'Terminal Ledeng'),
('TJ010', 'Sukabumi', '', 'Terminal Pelabuhanratu');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`kd_admin`);

--
-- Indexes for table `tbl_bank`
--
ALTER TABLE `tbl_bank`
  ADD PRIMARY KEY (`kd_bank`);

--
-- Indexes for table `tbl_bus`
--
ALTER TABLE `tbl_bus`
  ADD PRIMARY KEY (`kd_bus`);

--
-- Indexes for table `tbl_jadwal`
--
ALTER TABLE `tbl_jadwal`
  ADD PRIMARY KEY (`kd_jadwal`),
  ADD KEY `kd_bus` (`kd_bus`),
  ADD KEY `kd_tujuan` (`kd_tujuan`);

--
-- Indexes for table `tbl_konfirmasi`
--
ALTER TABLE `tbl_konfirmasi`
  ADD PRIMARY KEY (`kd_konfirmasi`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_level`
--
ALTER TABLE `tbl_level`
  ADD PRIMARY KEY (`kd_level`);

--
-- Indexes for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  ADD PRIMARY KEY (`kd_menu`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id_order`),
  ADD KEY `kd_jadwal` (`kd_jadwal`),
  ADD KEY `kd_kustomer` (`kd_pelanggan`),
  ADD KEY `kd_tiket` (`kd_tiket`),
  ADD KEY `kd_bank` (`kd_bank`);

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `tbl_sub_menu`
--
ALTER TABLE `tbl_sub_menu`
  ADD PRIMARY KEY (`kd_sub_menu`),
  ADD KEY `kd_menu` (`kd_menu`);

--
-- Indexes for table `tbl_tiket`
--
ALTER TABLE `tbl_tiket`
  ADD PRIMARY KEY (`kd_tiket`),
  ADD KEY `kode_order` (`kd_order`);

--
-- Indexes for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  ADD PRIMARY KEY (`kd_token`);

--
-- Indexes for table `tbl_tujuan`
--
ALTER TABLE `tbl_tujuan`
  ADD PRIMARY KEY (`kd_tujuan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_level`
--
ALTER TABLE `tbl_level`
  MODIFY `kd_level` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_menu`
--
ALTER TABLE `tbl_menu`
  MODIFY `kd_menu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
--
-- AUTO_INCREMENT for table `tbl_token_pelanggan`
--
ALTER TABLE `tbl_token_pelanggan`
  MODIFY `kd_token` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
