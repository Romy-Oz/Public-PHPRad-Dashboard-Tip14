-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 13, 2025 at 09:02 AM
-- Server version: 8.0.19
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jualbeliimport`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `NamaBarang` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `HargaBarang` int NOT NULL,
  `JumlahBarang` int NOT NULL,
  `KodeBarang` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`NamaBarang`, `HargaBarang`, `JumlahBarang`, `KodeBarang`) VALUES
('Abu Gosok', 850, 10, 'ABU001'),
('Headphone Sony', 1500000, 5, 'HPS001'),
('Kamera DSLR', 8000000, 3, 'KMD001'),
('Kursi Kantor', 300000, 7, 'KSK001'),
('Keyboard Mekanik', 1000000, 6, 'KYM001'),
('Laptop Dell', 12000000, 4, 'LPD001'),
('Lampu LED', 150000, 20, 'LPL001'),
('Meja Komputer', 500000, 3, 'MJK001'),
('Monitor LG', 2000000, 4, 'MNL001'),
('Printer Canon', 2500000, 6, 'PRC001'),
('Raket Yonex 10', 250000, 10, 'RYX010'),
('Smartphone Samsung', 5000000, 2, 'SMS001'),
('Sepatu Nike', 750000, 5, 'SNK001'),
('Tas Ransel', 350000, 8, 'TSR001');

-- --------------------------------------------------------

--
-- Table structure for table `jualdetail`
--

CREATE TABLE `jualdetail` (
  `KodeBarang` varchar(6) NOT NULL,
  `KuantitasJual` int NOT NULL,
  `HargaJual` int NOT NULL,
  `JualHId` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jualdetail`
--

INSERT INTO `jualdetail` (`KodeBarang`, `KuantitasJual`, `HargaJual`, `JualHId`) VALUES
('ABU001', 10, 10000, 1),
('ABU001', 10, 1000, 2),
('ABU001', 1, 10000, 3),
('HPS001', 5, 1500000, 7),
('HPS001', 6, 1500000, 10),
('HPS001', 4, 1500000, 14),
('HPS001', 5, 1500000, 18),
('HPS001', 7, 1500000, 24),
('HPS001', 4, 1500000, 30),
('KMD001', 3, 8000000, 6),
('KMD001', 2, 8000000, 9),
('KMD001', 3, 8000000, 12),
('KMD001', 4, 8000000, 17),
('KMD001', 5, 8000000, 21),
('KMD001', 6, 8000000, 29),
('KSK001', 7, 300000, 4),
('KSK001', 6, 300000, 12),
('KSK001', 5, 300000, 23),
('KYM001', 6, 1000000, 8),
('LPD001', 4, 12000000, 5),
('LPD001', 2, 12000000, 15),
('LPD001', 5, 12000000, 20),
('LPL001', 20, 150000, 7),
('LPL001', 25, 150000, 10),
('LPL001', 30, 150000, 13),
('LPL001', 22, 150000, 17),
('LPL001', 25, 150000, 23),
('MJK001', 3, 500000, 4),
('MJK001', 4, 500000, 8),
('MJK001', 5, 500000, 14),
('MNL001', 4, 2000000, 7),
('MNL001', 5, 2000000, 10),
('MNL001', 7, 2000000, 13),
('MNL001', 6, 2000000, 18),
('MNL001', 4, 2000000, 25),
('PRC001', 6, 2500000, 5),
('PRC001', 2, 2500000, 9),
('PRC001', 3, 2500000, 11),
('PRC001', 4, 2500000, 16),
('PRC001', 3, 2500000, 19),
('PRC001', 7, 2500000, 22),
('PRC001', 5, 2500000, 27),
('RYX010', 1, 5000000, 2),
('SMS001', 2, 5000000, 5),
('SMS001', 3, 5000000, 15),
('SNK001', 5, 750000, 4),
('SNK001', 3, 750000, 8),
('SNK001', 10, 750000, 11),
('SNK001', 6, 750000, 16),
('SNK001', 2, 750000, 19),
('SNK001', 4, 750000, 22),
('SNK001', 8, 750000, 26),
('TSR001', 8, 350000, 6),
('TSR001', 7, 350000, 9),
('TSR001', 4, 350000, 12),
('TSR001', 5, 350000, 17),
('TSR001', 6, 350000, 21),
('TSR001', 4, 350000, 25),
('TSR001', 3, 350000, 28);

-- --------------------------------------------------------

--
-- Table structure for table `jualh`
--

CREATE TABLE `jualh` (
  `JualHid` int NOT NULL,
  `PelangganKode` varchar(6) NOT NULL,
  `Tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `jualh`
--

INSERT INTO `jualh` (`JualHid`, `PelangganKode`, `Tanggal`) VALUES
(1, 'ABD001', '2024-04-04'),
(2, 'GINA00', '2024-04-04'),
(3, 'ABD001', '2024-04-18'),
(4, 'ABD001', '2024-05-05'),
(5, 'GINA00', '2024-05-12'),
(6, 'BUD001', '2024-05-20'),
(7, 'SIT001', '2024-06-02'),
(8, 'AND001', '2024-06-11'),
(9, 'RIN001', '2024-06-22'),
(10, 'FAI001', '2024-06-25'),
(11, 'LIN001', '2024-07-03'),
(12, 'ABD001', '2024-07-10'),
(13, 'GINA00', '2024-07-19'),
(14, 'BUD001', '2024-08-06'),
(15, 'SIT001', '2024-08-14'),
(16, 'AND001', '2024-08-25'),
(17, 'RIN001', '2024-08-28'),
(18, 'FAI001', '2024-09-01'),
(19, 'LIN001', '2024-09-08'),
(20, 'ABD001', '2024-09-17'),
(21, 'GINA00', '2024-10-04'),
(22, 'BUD001', '2024-10-12'),
(23, 'SIT001', '2024-10-22'),
(24, 'AND001', '2024-11-02'),
(25, 'RIN001', '2024-11-09'),
(26, 'FAI001', '2024-11-21'),
(27, 'LIN001', '2024-11-28'),
(28, 'ABD001', '2024-12-04'),
(29, 'GINA00', '2024-12-12'),
(30, 'BUD001', '2024-12-20');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `PelangganNama` varchar(255) NOT NULL,
  `PelangganHP` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `PelangganKode` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`PelangganNama`, `PelangganHP`, `PelangganKode`) VALUES
('Abdullah', '083929322299', 'ABD001'),
('Andi', '82345678901', 'AND001'),
('Budi', '82939482349', 'BUD001'),
('Faisal', '83456789012', 'FAI001'),
('Gina', '085167743320', 'GINA00'),
('Lina', '83678901234', 'LIN001'),
('Rina', '85234567890', 'RIN001'),
('Siti', '81123456789', 'SIT001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KodeBarang`);

--
-- Indexes for table `jualdetail`
--
ALTER TABLE `jualdetail`
  ADD PRIMARY KEY (`KodeBarang`,`JualHId`);

--
-- Indexes for table `jualh`
--
ALTER TABLE `jualh`
  ADD PRIMARY KEY (`JualHid`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`PelangganKode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jualh`
--
ALTER TABLE `jualh`
  MODIFY `JualHid` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
