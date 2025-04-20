-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2025 at 09:52 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts-uasmobile2`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggan`
--

CREATE TABLE `tbl_pelanggan` (
  `id` int(11) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `alamat` varchar(200) DEFAULT NULL,
  `kota` varchar(100) DEFAULT NULL,
  `provinsi` char(100) DEFAULT NULL,
  `kodepos` char(20) DEFAULT NULL,
  `telp` char(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` char(100) DEFAULT NULL,
  `PASSWORD` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_pelanggan`
--

INSERT INTO `tbl_pelanggan` (`id`, `nama`, `alamat`, `kota`, `provinsi`, `kodepos`, `telp`, `status`, `email`, `PASSWORD`) VALUES
(2, 'candra tri', 'K', 'K', 'JT', '9999', '08999999', 1, 'candra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'user4', NULL, NULL, NULL, NULL, NULL, 1, 'user4@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(4, 'faiznur1', 'tegal', 'kota tegal', 'jawa', '8947', '0893736', 1, 'faiz@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(5, 'indratanujaya', 'null', 'null', 'null', 'null', 'null', 1, 'indra@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(6, 'ihsan', NULL, NULL, NULL, NULL, NULL, 1, 'ihsan@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(8, 'rizqi', 'Karangdowo', 'Kendal', 'Jawatengah', '53553', '0894749345', 1, 'rizqi@gmail.com', '04467003e9364a2110ee786352d096c1'),
(9, 'Dani', 'Semarang', 'Semarang', 'Jawatengah', '52132l', '089778700', 1, 'dani@gmail.com', '202cb962ac59075b964b07152d234b70'),
(10, 'kipli', NULL, NULL, NULL, NULL, NULL, 1, 'kipli@gmail.com', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `kode` char(10) NOT NULL,
  `merk` varchar(200) DEFAULT NULL,
  `kategori` varchar(30) DEFAULT NULL,
  `satuan` char(20) DEFAULT NULL,
  `hargabeli` double DEFAULT NULL,
  `diskonbeli` double DEFAULT NULL,
  `hargapokok` double DEFAULT NULL,
  `hargajual` double DEFAULT NULL,
  `diskonjual` double DEFAULT NULL,
  `stok` int(11) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL,
  `deskripsi` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`kode`, `merk`, `kategori`, `satuan`, `hargabeli`, `diskonbeli`, `hargapokok`, `hargajual`, `diskonjual`, `stok`, `foto`, `deskripsi`) VALUES
('K01', 'Kulkas LG,169L / 164L Kulkas 1 Pintu GNY201CLSR', '1 Pintu', 'unit', 2213999, 0, 2213999, 2213999, 0, 20, 'Kulkas LG, 169L  164L Kulkas 1 Pintu GN-Y201CLSR.png', '• Model: LG GNY201CLSR\r\n• Tipe: Kulkas 1 Pintu\r\n• Kapasitas Total: 169 Liter (Gross) / 164\r\nLiter (Net)\r\n• Dimensi (P x L x T): 525 x 555 x 1135\r\nmm\r\n• Berat: ±11 kg\r\n• Warna: Dark Graphite Steel\r\n• Material Pintu: VCM (Stainless Look)\r\n'),
('K02', 'Kulkas LG 2 Pintu 235L / 217L GNB212PQNR', '2 Pintu', 'unit', 3467000, 0, 3467000, 3467000, 0, 12, 'Kulkas LG 2 Pintu 235L  217L GN-B212PQNR.png', '• Model: LG GNB212PQNR\r\n• Tipe: Kulkas 2 Pintu (Top Freezer)\r\n• Kapasitas: 235 Liter (Gross) / 217 Liter (Net)\r\n• Warna: Dark Graphite Steel Rak: Rak Tempered Glass (tahan beban berat) Penerangan: Lampu LED'),
('K03', 'GC-L257CQ.FMH 65 617L / 674L Kulkas Side by Side, Pintu UltraSleek dan Smart Inverter Compressor', 'Side by Side', 'unit', 20248000, 0, 20248000, 20248000, 0, 0, 'GC-L257CQ.FMH65 617L 674L Kulkas Side by Side Terbaru dengan Pintu UltraSleek dan Smart Inverter Compressor.png', '• Model: LG GC-L257CQ.FMH65\r\n• Tipe: Kulkas Side by Side\r\n• Kapasitas: 674 Liter (Gross) / 617 Liter (Net)\r\n• Dimensi (P x T x D): 913 x 1790 x 735 mm\r\n• Berat: 111 kg • Warna: Matte Black Steel\r\n• Desain Pintu: UltraSleek Door dengan pegangan tersembunyi\r\n• Kompresor: Smart Inverter Compressor'),
('K04', 'GR-RF610WE-PMF(37) Kulkas TOSHIBA Multi Door | Inverter', 'Multi Door', 'unit', 19984000, 0, 19984000, 19984000, 0, 9, 'GR-RF610WE-PMF(37).png', '• Model: Toshiba GR-RF610WE-PMF(37)\r\n• Tipe: Kulkas Multi Door (4 pintu)\r\n• Kapasitas Total: 511 Liter (Net)\r\n• Dimensi (P x L x T): 833 x 648 x 1898 mm\r\n• Berat: 99 kg\r\n• Warna: Morandi Grey\r\n• Material Pintu: Anti sidik jari, finishing panel 10 lapis\r\n• Kompresor: Origin Inverter\r\n• Daya Listrik: 145 Watt'),
('K05', 'GN-INV304BK 171L / 165L Freezer LG 1 Pintu\r\n', 'Freezer', 'unit', 3412000, 0, 3412000, 3412000, 0, 4, 'GN-INV304BK 171L, 165L Freezer LG 1 Pintu.png', '• Model: LG GN-INV304BK\r\n• Tipe: Freezer 1 Pintu (Upright)\r\n• Kapasitas: 171 Liter (Gross) / 165 Liter (Net)\r\n• Dimensi (P x T x L): 530 x 1300 x 600 mm\r\n• Berat: 22 kg\r\n• Warna: Western Black\r\n• Handle Pintu: Vertical Pocket\r\n• Kompresor: Smart Inverter Compressor\r\n• Konsumsi Daya: 80 Watt\r\n• Sistem Pendinginan: Direct Cooling\r\n• Defrost: Manual\r\n• Rak Pintu Transparan: 4 buah\r\n• Rak Tempered Glass: 1 buah\r\n• Laci Freezer: 1 buah'),
('K06', 'GR-RD196CC-DMF, Kulkas Toshiba 1 Pintu | Kapasitas 160 Liter', '1 Pintu', 'unit', 2441889, 0, 2441889, 2441889, 0, 0, 'GR-RD196CC-DMF.png', '• Model: Toshiba GR-RD196CC-DMF\r\n• Tipe: Kulkas 1 Pintu\r\n• Kapasitas: 151 Liter\r\n• Dimensi (P x L x T): 520 x 590 x 1120mm\r\n• Berat: 30 kg\r\n• Konsumsi Daya:120 Watt (normal:65 Watt)\r\n• Refrigerant: R-600a\r\n• Warna: Silve'),
('K07', 'GN-B312PQMB,340L / 315L Kulkas LG 2 Pintu\r\n', '2 Pintu', 'unit', 6367000, 0, 6367000, 6367000, 0, 9, 'GN-B312PQMB, 340L, 315L Kulkas LG 2 Pintu.png', '• Model: LG GN-B312PQMB\r\n• Tipe: Kulkas 2 Pintu (Top Freezer)\r\n• Kapasitas: 340 Liter (Gross) / 315 Liter (Net)\r\n• Dimensi (P x T x L): 600 x 1640 x 710 mm\r\n• Berat: 54 kg\r\n• Warna: Dark Graphite Steel\r\n• Handle Pintu: Horizontal Pocket\r\n• Kompresor: Smart Inverter Compressor(BLDC)\r\n• Sistem Pendinginan: Total No Frost\r\n• Kontrol Suhu: Knob Putar'),
('K08', 'GC-X257CSEW, 674L / 617L Kulkas InstaView™ Side by Side\r\n', 'Side by Side', 'unit', 27926000, 0, 27926000, 27926000, 0, 4, 'GC-X257CSEW, 674L, 617L Kulkas InstaView Side by Side.png', '• Model: LG GC-X257CSEW\r\n• Tipe: Kulkas Side by Side\r\n• Kapasitas Total: 674 Liter (Gross) / 617 Liter (Net)\r\n• Dimensi (P x T x L): 913 x 1790 x 735 mm\r\n• Berat: 128 kg\r\n• Warna Pintu: Brushed Steel\r\n• Material Pintu: VCM (Vinyl Coated Metal)\r\n• Handle Pintu: Pocket Handle dengan Lapisan/Penutup\r\n• Kompresor: Smart Inverter Compressor (BLDC)\r\n• Konsumsi Daya: 170 Watt\r\n• Sistem Pendinginan: Total No Fros\r\n• Dispenser Air dan Es: Eksternal dengan Fungsi Es Batu dan Es Serut\r\n• Pemipaan: Tidak diperlukan'),
('K09', 'GC-Q257SGVL, 694L / 647L Kulkas LG InstaView™ Side by Side', 'Side by Side', 'unit', 18991000, 0, 18991000, 18991000, 0, 4, 'GC-Q257SGVL, 694L 647L Kulkas InstaView™ Side by Side.png', '• Model: LG GC-Q257SGVL\r\n• Tipe: Kulkas Side by Side\r\n• Kapasitas Total: 694 Liter (Gross) / 647 Liter (Net)\r\n• Dimensi (P x T x L): 913 x 1790 x 735 mm\r\n• Berat: 122 kg\r\n• InstaView: Lihat isi kulkas dengan mengetuk dua kali pada panel kaca.\r\n• Door-in-Door™: Akses mudah ke camilan favorit tanpa membuka seluruh pintu.\r\n• LINEAR Cooling™: Menjaga suhu tetap stabil untuk kesegaran makanan lebih lama.\r\n• Door Cooling+™: Distribusi udara dingin merata ke seluruh bagian kulkas.\r\n• Hygiene Fresh+™: Menyaring udara di dalam kulkas untuk menjaga kebersihan dan kesegaran.\r\n• Smart ThinQ™ (Wi-Fi): Kontrol dan diagnosis kulkas melalui smartphone kapan saja dan dimana saja'),
('K10', 'CR-A258I, Chest Freezer TOSHIBA | Kapasitas 198 Liter', 'Freezer', 'unit', 2650000, 0, 2650000, 2650000, 0, 10, 'CR-A258I, Chest Freezer Kapasitas 198 Liter.png', '• Model: Toshiba CR-A258I\r\n• Tipe: Chest Freezer(Freezer Box)\r\n• Kapasitas: 198 Liter\r\n• Dimensi (P x L x T): 98 x 52 x 85 cm\r\n• Berat: 32 kg\r\n• Warna: Putih\r\n• Konsumsi Daya: 150 Watt\r\n• Sistem Pendinginan: Direct Cool\r\n• Kontrol Suhu: Mekanik\r\n• Refrigerant: R-600a\r\n• Suhu Operasional: -15°C hingga -20°C\r\n• Sistem Defrost: Manual'),
('K11', 'Kulkas 1 Pintu SHARP SJ-N162N-HS', '1 Pintu', 'unit', 1350000, 0, 1350000, 1350000, 0, 7, 'Kulkas 1 Pintu SHARP SJ-N162N-HS.png', '• Model: SHARP SJ-N162N-HS\r\n• Kapasitas: 133 Liter (Bruto), 128 Liter (Neto)\r\n• Dimensi: 535 x 550 x 970 mm\r\n• Berat: 24 kg\r\n• Warna: Elegant Dark Silver Finish\r\n• Konsumsi Daya: 60 Watt\r\n• Sistem Pendinginan: Direct Cooling\r\n• Defrost: Semi Automatic\r\n• Freezer: 20 Liter (Bruto)\r\n• Refrigerator: 113 Liter (Bruto)\r\n• Material Pintu: Plat Coating\r\n• Refrigerant: HFC-134a (NON CFC)'),
('K12', 'KULKAS TOSHIBA 2 PINTU | NON-INVERTER GR-B22ISP\r\n', '2 Pintu', 'unit', 2998000, 0, 2998000, 2998000, 0, 5, 'KULKAS TOSHIBA 2 PINTU, NON-INVERTER GR-B22ISP.png', '• Model: Toshiba GR-B22ISP\r\n• Tipe: Kulkas 2 Pintu(Non-Inverter)\r\n• Kapasitas:\r\n• Total: 180 Liter\r\n• Freezer: 61 Liter\r\n• Refrigerator: 107 Liter\r\n• Dimensi (P x L x T): 545 x 623 x 1.285 mm\r\n• Berat Bersih: 37 kg\r\n• Konsumsi Daya: 80 Watt\r\n• Refrigerant: R600a\r\n• Material Pintu: Metal\r\n• Warna: Dark Blue (KK)\r\n'),
('K13', 'GR-RF677WI-PMF(22), Kulkas TOSHIBA Multi Door | Inverter', 'Multi Door', 'unit', 10477125, 0, 10477125, 10477125, 0, 7, 'GR-RF677WI-PMF(22), Kulkas Multi Door Inverter.png', '• Model: Toshiba GR-RF677WI-PMF(22)\r\n• Tipe: Kulkas Multi Door\r\n• Kapasitas Total: 590 Liter (Bruto) / 530 Liter (Neto)\r\n• Dimensi (P x L x T): 900 x 750 x 1.800 mm\r\n• Berat: 100,5 kg\r\n• Warna: Glass Black\r\n• Material Pintu: Kaca Tempered\r\n• Kompresor: Origin Inverter\r\n• Konsumsi Daya: 170 Watt\r\n• Refrigerant: R600a'),
('K14', 'GVB25FFGPB, Kulkas LG InstaView™ Multi Door Terbaru 677L / 617L\r\n', 'Multi Door', 'unit', 29592000, 0, 29592000, 29592000, 0, 0, 'GV-B25FFGPB, Kulkas LG InstaView™ Multi Door Terbaru 677L,617L.png', '• Model: GVB25FFGPB\r\n• Tipe: Kulkas Multi Door\r\n• Kapasitas Total: 677 Liter (Bruto) / 617 Liter (Neto)\r\n• Dimensi (P x L x T): 914 x 1.860 x 680 mm\r\n• Berat: 133 kg\r\n• Warna Pintu: Mint-Beige\r\n• Material Pintu: Kaca Tempered\r\n• Konsumsi Daya: N/A\r\n• Kompresor: Smart Inverter Compressor (BLDC)\r\n• Refrigerant: R-600a\r\n• Sistem Pendinginan: Linear Cooling™ dan DoorCooling+™\r\n• Kontrol & Display: LED Display Internal\r\n'),
('K15', 'GR-RC130CE-DMF(01), Chest Freezer TOSHIBA | Kapasitas 99 Liter', 'Freezer', 'unit', 2404000, 0, 2404000, 2404000, 0, 18, 'GR-RC130CE-DMF(01), Chest Freezer TOSHIBA Kapasitas 99 Liter.png', '• Model: Toshiba GR-RC130CE-DMF(01)\r\n• Kapasitas:\r\n• Bruto: 128 Liter\r\n• Neto: 99 Liter\r\n• Dimensi (P x L x T): 545 x 495 x 850 mm\r\n• Berat Bersih: 23 kg\r\n• Konsumsi Daya: 140 Watt\r\n• Suhu Operasional: Dapat disesuaikan antara -30°C hingga 10°C\r\n• Refrigerant: R600a\r\n• Warna: Putih'),
('K16', 'KULKAS SHARP 1 PINTU SJ 162', '1 Pintu', 'unit', 1730000, 0, 1730000, 1730000, 0, 6, 'KULKAS SHARP 1 PINTU SJ 162.png', '• Model: SJ-N162N-HS\r\n• Kapasitas:\r\n• Total: 133 Liter (Bruto), 128 Liter (Neto)\r\n• Freezer: 20 Liter (Bruto), 19 Liter (Neto)\r\n• Refrigerator: 113 Liter (Bruto), 109 Liter (Neto)\r\n• Dimensi (P x L x T): 535 x 550 x 970 mm\r\n• Berat: 24 kg\r\n• Konsumsi Daya: 84 Watt\r\n• Tegangan: 220-240V\r\n• Warna & Material Pintu: Elegant Dark Silver Finish\r\n• Sistem Pendinginan: Direct Cooling\r\n• Refrigerant: HFC-134a (NON CFC)\r\n• Defrost: Semi Automatic'),
('K17', 'GN-G222SLCB, 225L / 209L Kulkas LG 2 Pintu', '2 Pintu', 'unit', 4461000, 0, 4461000, 4461000, 0, 21, 'GN-G222SLCB, 225L 209L Kulkas LG 2 Pintu.png', '• Model: GN-G222SLCB\r\n• Kapasitas:\r\n• Total: 225 Liter (Bruto) / 209 Liter (Neto)\r\n• Freezer: 44 Liter\r\n• Refrigerator: 165 Liter\r\n• Dimensi (P x L x T): 555 x 1.520 x 585 mm\r\n• Berat: 42 kg\r\n• Konsumsi Energi: 346,2 kWh/tahun\r\n• Warna: Platinum Silver\r\n• Material Pintu: PET\r\n• Tipe Kompresor: Smart Inverter Compressor\r\n• Handle: Horizontal Pocket\r\n'),
('K18', 'GR-RS780WE-PMF(06), Kulkas TOSHIBA Side By Side | Kapasitas 584 Liter', 'Side by Side', 'unit', 10000000, 0, 10000000, 10000000, 0, 2, 'GR-RS780WE-PMF(06), Kulkas TOSHIBA Side By Side, Kapasitas 584 Liter.jpg', '• Model: GR-RS780WE-PMF(06)\r\n• Kapasitas Total: 562 Liter\r\n• Konsumsi Daya:145 Watt\r\n• Kompresor: Origin Inverter\r\n• PureBio: Sistem pembersihan udara untuk menjaga kesegaran makanan.\r\n• Super Cooling & Super Freezing: Fitur pendinginan cepat untuk menjaga kualitas makanan.\r\n• Exterior Display: Panel kontrol eksternal untuk pengaturan yang mudah.\r\n• Fast Purification: Proses pemurnian udara yang cepat di dalam kulkas'),
('K19', 'CR-A390I, Chest Freezer TOSHIBA | Kapasitas 293 Liter', 'Freezer', 'unit', 3824000, 0, 3824000, 3824000, 5, 13, 'CR-A390I, Chest Freezer TOSHIBA, Kapasitas 293 Liter.png', '• Model: CR-A390I\r\n• Tipe: Chest Freezer 2-in-1 (Freezer & Chiller)\r\n• Kapasitas:\r\n• Bruto: 390 Liter\r\n• Neto: 293 Liter\r\n• Dimensi (P x L x T): 1.065 x 590 x 845 mm\r\n• Berat Bersih: 34,5 kg\r\n• Konsumsi Daya: 135 Watt\r\n• Refrigerant: R600a\r\n• Suhu Operasional: Dapat disesuaikan antara -30°C hingga10°C\r\n• Sistem Pendinginan: Direct Cool\r\n• Sistem Defrost: Manual\r\n• Sistem Kontrol: Mekanik\r\n• Warna: Putih'),
('K20', 'Aqua AQRCTD506R GC-MB Kulkas Side by Side Multidoor 4 Pintu 406 Liter Twin Inverter', 'Multi Door', 'unit', 7390000, 0, 7390000, 7390000, 0, 4, 'Aqua AQRCTD506RGC-MB Kulkas Side by Side Multidoor 4 Pintu 406 Liter Twin Inverter.png', '• Model: AQRCTD506RGC(MB)\r\n• Tipe: Kulkas Multidoor 4 Pintu\r\n• Kapasitas Total (Neto): 406 Liter\r\n• Freezer: 139 Liter\r\n• Dimensi (P x L x T): 700 x 675 x 1.775 mm\r\n• Konsumsi Daya: 33 Watt\r\n• Warna: Black Shine\r\n• Material Pintu: Meta');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` char(20) NOT NULL,
  `password` varchar(100) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `email` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `status`, `email`) VALUES
('user1', '12345', 1, 'user1@gmail.com'),
('user2', '12345', 0, 'user2@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nama` (`nama`),
  ADD KEY `nama_2` (`nama`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`kode`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_pelanggan`
--
ALTER TABLE `tbl_pelanggan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
