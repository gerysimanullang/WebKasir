-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Mar 04, 2019 at 07:18 PM
-- Server version: 5.7.25-0ubuntu0.16.04.2
-- PHP Version: 7.0.32-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `parse_pelanggan` (IN `p` VARCHAR(45), OUT `res` VARCHAR(45))  SELECT pelanggan.idpelanggan INTO res FROM pelanggan WHERE pelanggan.namapelanggan = p$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `idmenu` int(11) NOT NULL,
  `namamenu` varchar(100) DEFAULT NULL,
  `harga` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`idmenu`, `namamenu`, `harga`) VALUES
(2, 'Jus jeruk', 3000),
(4, 'Ayam goreng', 10000),
(5, 'Es kosong', 1000),
(7, 'menu bau', 1233),
(9, 'es hampir berisi', 5000),
(10, 'jus mangga', 6000),
(11, 'nasi ramas', 15000),
(12, 'ayam bakar', 8000),
(13, 'jus pokat', 5000),
(14, 'ayam kangkung', 10000),
(15, 'jasjus', 2000),
(16, 'sdfdsfsd', 10000),
(17, 'mzmz', 1000),
(18, 'sdkfhdsjhfds', 234),
(19, 'mnbv', 12333),
(20, 'mmnmn', 1000),
(21, 'mnmnmnm', 12344),
(22, 'zxzxzx', 123123213),
(23, 'qwq', 123123),
(24, 'nsnd', 10000),
(25, 'qaa', 1000),
(26, 'qaz', 10000),
(27, 'qazzz', 10000),
(28, 'kjfkjfk', 10000),
(29, 'mcnvcv', 15000),
(30, 'vcvcvcv', 1233),
(31, 'cvcvcvx', 10000),
(32, 'sdfcvc', 10000),
(33, 'mzz', 2000),
(34, 'test', 10000),
(35, 'eee', 2000),
(36, 'e2', 10000),
(37, 'e123456', 10000),
(38, 'e3', 10000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `idpelanggan` int(11) NOT NULL,
  `namapelanggan` varchar(80) DEFAULT NULL,
  `jeniskelamin` tinyint(1) DEFAULT NULL,
  `nohp` varchar(13) DEFAULT NULL,
  `alamat` varchar(95) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`idpelanggan`, `namapelanggan`, `jeniskelamin`, `nohp`, `alamat`) VALUES
(1, 'raga', 1, '085326161', 'lsjdflksjdf'),
(2, 'raga2', 1, '082137', 'jskdhfksjdf'),
(3, 'raga3', 1, '0853216111', 'jalan utama gang cipta'),
(4, 'raga4', 1, '0853216161', 'jalan utama gang cipta'),
(5, 'raga5', 1, '08532111', 'jalan utama gang cipta'),
(6, 'raga6', 1, '08532161744', 'jalan utama gcang'),
(7, 'raga7', 1, '08532161744', 'jalan utama gnacdf'),
(8, 'raga8', 1, '0853216', 'ksdfkshdf'),
(9, 'cool', 1, '08536344', 'jalan utama gang cipta'),
(10, 'cool2', 1, '08536314', 'jalan utama gang cipta'),
(11, 'cool3', 1, '085363213123', 'jalads'),
(12, 'cool4', 1, '923743264', 'sdfsdf'),
(13, 'cool5', 1, '3234', 'dfsdf'),
(14, 'cool6', 1, '085213', 'jhskjdfhsdf'),
(15, 'cool7', 1, '213123123', 'sdhfskdjfhdsf'),
(16, 'cool8', 1, '085363123', 'jalan utama gang cipta'),
(17, 'cil1', 1, '234234234', 'jalan utama gang cipta'),
(18, 'cil2', 1, '192839213', 'jalan utama ganc tip\\r\\n'),
(19, 'cil3', 1, '234234234', 'jalan utama gang cipta'),
(20, 'cil4', 1, '072932384', 'kjhksdhfkdsf'),
(21, 'dika', 1, '078564856', 'ksdhfkshfsd');

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `idpesanan` int(11) NOT NULL,
  `kodepesanan` varchar(15) DEFAULT NULL,
  `menu_idmenu` int(11) NOT NULL,
  `pelanggan_idpelanggan` int(11) NOT NULL,
  `user_iduser` int(11) NOT NULL,
  `jumlah` tinyint(1) NOT NULL,
  `dibuat` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`idpesanan`, `kodepesanan`, `menu_idmenu`, `pelanggan_idpelanggan`, `user_iduser`, `jumlah`, `dibuat`) VALUES
(3, 'ABCCCFB12DGAF3', 4, 1, 2, 1, '2019-02-21'),
(4, 'ABCCCFB12DGAF3', 5, 1, 2, 2, '2019-02-21'),
(5, 'ABADEDFDG3C51F', 14, 5, 2, 3, '2019-02-21'),
(6, 'ABBCBBFGBCE31F', 2, 21, 2, 1, '2019-02-25'),
(7, 'ABBCBBFGBCE31F', 4, 21, 2, 2, '2019-02-25');

--
-- Triggers `pesanan`
--
DELIMITER $$
CREATE TRIGGER `before_delete_pesanan` BEFORE DELETE ON `pesanan` FOR EACH ROW UPDATE transaksi SET
transaksi.total = transaksi.total - (SELECT menu.harga * old.jumlah FROM menu WHERE menu.idmenu = old.menu_idmenu)
WHERE transaksi.idtransaksi = old.kodepesanan
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_transaksi` AFTER INSERT ON `pesanan` FOR EACH ROW INSERT INTO transaksi SET
transaksi.idtransaksi = new.kodepesanan,
transaksi.total = (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)

ON duplicate KEY UPDATE transaksi.total = transaksi.total + (SELECT menu.harga * new.jumlah FROM menu WHERE menu.idmenu = new.menu_idmenu)
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idtransaksi` varchar(15) NOT NULL,
  `total` int(1) DEFAULT NULL,
  `bayar` int(4) DEFAULT '0',
  `kembalian` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idtransaksi`, `total`, `bayar`, `kembalian`, `status`) VALUES
('ABADEDFDG3C51F', 30000, 32000, 2000, 1),
('ABBCBBFGBCE31F', 23000, 0, 0, 0),
('ABCCCFB12DGAF3', 12000, 13000, 1000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `namauser` varchar(80) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `akses` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `namauser`, `password`, `akses`) VALUES
(2, 'ragamuliakusuma', '7df01eaeb134d0597903d79f0826a48c', 1),
(3, 'naruto', 'cf9ee5bcb36b4936dd7064ee9b2f139e', 2),
(4, 'sasuke', '93207db25ad357906be2fd0c3f65f3dc', 3),
(5, 'owner', '72122ce96bfec66e2396d2e25225d70a', 4);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_pesanan`
--
CREATE TABLE `v_pesanan` (
`idpesanan` int(11)
,`kodepesanan` varchar(15)
,`namapelanggan` varchar(80)
,`namamenu` varchar(100)
,`jumlah` tinyint(1)
,`total` bigint(14)
,`dibuat` date
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_transaksi`
--
CREATE TABLE `v_transaksi` (
`idtransaksi` varchar(15)
,`total` int(1)
,`bayar` int(4)
,`kembalian` int(3)
,`status` tinyint(1)
);

-- --------------------------------------------------------

--
-- Structure for view `v_pesanan`
--
DROP TABLE IF EXISTS `v_pesanan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_pesanan`  AS  select `pesanan`.`idpesanan` AS `idpesanan`,`pesanan`.`kodepesanan` AS `kodepesanan`,`pelanggan`.`namapelanggan` AS `namapelanggan`,`menu`.`namamenu` AS `namamenu`,`pesanan`.`jumlah` AS `jumlah`,(select (`menu`.`harga` * `pesanan`.`jumlah`) from `menu` where (`menu`.`idmenu` = `pesanan`.`menu_idmenu`)) AS `total`,`pesanan`.`dibuat` AS `dibuat` from ((`pesanan` join `pelanggan` on((`pelanggan`.`idpelanggan` = `pesanan`.`pelanggan_idpelanggan`))) join `menu` on((`menu`.`idmenu` = `pesanan`.`menu_idmenu`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_transaksi`
--
DROP TABLE IF EXISTS `v_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_transaksi`  AS  select `transaksi`.`idtransaksi` AS `idtransaksi`,`transaksi`.`total` AS `total`,`transaksi`.`bayar` AS `bayar`,`transaksi`.`kembalian` AS `kembalian`,`transaksi`.`status` AS `status` from `transaksi` where (`transaksi`.`status` = 0) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`idmenu`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`idpelanggan`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`idpesanan`),
  ADD KEY `fk_pesanan_menu1_idx` (`menu_idmenu`),
  ADD KEY `fk_pesanan_pelanggan1_idx` (`pelanggan_idpelanggan`),
  ADD KEY `user_iduser` (`user_iduser`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idtransaksi`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `idmenu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `idpelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `idpesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `fk_pesanan_menu1` FOREIGN KEY (`menu_idmenu`) REFERENCES `menu` (`idmenu`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_pesanan_pelanggan1` FOREIGN KEY (`pelanggan_idpelanggan`) REFERENCES `pelanggan` (`idpelanggan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`user_iduser`) REFERENCES `user` (`iduser`) ON DELETE CASCADE ON UPDATE CASCADE;

DELIMITER $$
--
-- Events
--
CREATE DEFINER=`root`@`localhost` EVENT `delete_transaksi` ON SCHEDULE EVERY 1 SECOND STARTS '2019-02-19 10:16:15' ON COMPLETION NOT PRESERVE ENABLE DO DELETE FROM transaksi WHERE transaksi.total <= 0$$

DELIMITER ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
