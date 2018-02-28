-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 24, 2018 at 06:47 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 7.0.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smaitp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama`, `role`) VALUES
('anel', 'anel', 'Daniel Raysa Putra', 'Administrator'),
('danil', 'danil', 'Anel Raysa', 'Admin CMS');

-- --------------------------------------------------------

--
-- Table structure for table `ortu_wali`
--

CREATE TABLE `ortu_wali` (
  `NOMORINDUK` varchar(20) DEFAULT NULL,
  `IDPENDAFTAR` varchar(10) DEFAULT NULL,
  `TENTANG` varchar(10) DEFAULT NULL,
  `NAMAORTUWALI` varchar(50) DEFAULT NULL,
  `TEMPATLAHIR` varchar(20) DEFAULT NULL,
  `TGLLAHIR` varchar(20) DEFAULT NULL,
  `AGAMA` varchar(10) DEFAULT NULL,
  `KEWARGANEGARAAN` varchar(20) DEFAULT NULL,
  `PENDIDIKANTERAKHIR` varchar(10) DEFAULT NULL,
  `PEKERJAAN` varchar(30) DEFAULT NULL,
  `GOLONGANPEKERJAAN` varchar(20) DEFAULT NULL,
  `PENGHASILAN` int(11) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `KODEPOS` varchar(6) DEFAULT NULL,
  `NOTELP` varchar(20) DEFAULT NULL,
  `STATUS` varchar(10) DEFAULT NULL,
  `NIKAH` varchar(15) DEFAULT NULL,
  `HIDUP` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ortu_wali`
--

INSERT INTO `ortu_wali` (`NOMORINDUK`, `IDPENDAFTAR`, `TENTANG`, `NAMAORTUWALI`, `TEMPATLAHIR`, `TGLLAHIR`, `AGAMA`, `KEWARGANEGARAAN`, `PENDIDIKANTERAKHIR`, `PEKERJAAN`, `GOLONGANPEKERJAAN`, `PENGHASILAN`, `ALAMAT`, `KODEPOS`, `NOTELP`, `STATUS`, `NIKAH`, `HIDUP`) VALUES
(NULL, 'E-1802003', 'Ayah', 'Maryadi', 'Semarang', '18 Februari 1967', 'Kristen', 'WNI', 'S1', 'Tidak kerja', 'tidak kerja', 0, 'GPD D/12', '61271', '08967684232', 'Kandung', 'Nikah', 'Ya'),
(NULL, 'E-1802003', 'Ibu', 'Sartini', 'Klaten', '20 April 1966', 'Kristen', 'WNI', 'S1', 'IRT', 'IRT', 500000, 'GPH D/12', '61271', '08967684232', 'Kandung', 'Nikah', 'Ya');

-- --------------------------------------------------------

--
-- Table structure for table `pendaftar`
--

CREATE TABLE `pendaftar` (
  `IDPENDAFTAR` varchar(10) NOT NULL,
  `NOMORINDUK` varchar(20) DEFAULT NULL,
  `TAHUNAJARAN` varchar(10) DEFAULT NULL,
  `NAMAPENDAFTAR` varchar(50) DEFAULT NULL,
  `NISN` varchar(20) DEFAULT NULL,
  `TEMPATLAHIR` varchar(20) DEFAULT NULL,
  `TGLLAHIR` varchar(20) DEFAULT NULL,
  `JENISKELAMIN` varchar(10) DEFAULT NULL,
  `NAMAORTUWALI` varchar(50) DEFAULT NULL,
  `PEKERJAAN` varchar(30) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `NOTELP` varchar(20) DEFAULT NULL,
  `SEKOLAHASAL` varchar(40) DEFAULT NULL,
  `ALAMATSEKOLAH` varchar(100) DEFAULT NULL,
  `NOMORIJAZAH` varchar(30) DEFAULT NULL,
  `TAHUNLULUS` varchar(4) DEFAULT NULL,
  `FOTO` varchar(50) DEFAULT NULL,
  `TANGGALDAFTAR` date DEFAULT NULL,
  `STATUSFORM` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendaftar`
--

INSERT INTO `pendaftar` (`IDPENDAFTAR`, `NOMORINDUK`, `TAHUNAJARAN`, `NAMAPENDAFTAR`, `NISN`, `TEMPATLAHIR`, `TGLLAHIR`, `JENISKELAMIN`, `NAMAORTUWALI`, `PEKERJAAN`, `ALAMAT`, `NOTELP`, `SEKOLAHASAL`, `ALAMATSEKOLAH`, `NOMORIJAZAH`, `TAHUNLULUS`, `FOTO`, `TANGGALDAFTAR`, `STATUSFORM`) VALUES
('E-1802000', NULL, '2018/2019', 'Daniel Raysa', '1098178', 'Surabaya', '22 April 1997', 'Laki-laki', 'Master', 'Kuli', 'GPH D/12', '089624762088', 'SMAK Untung Suropati', 'Jl. Truno', '18161876', '2015', NULL, '2018-02-05', 'Sudah Kembali'),
('E-1802002', NULL, '2018/2019', 'dewi', '15410100160', 'surabaya', '05 Februari 2018', 'Perempuan', 'daniel', 'guru les', '', '', 'smp stikom', '', 'effrfr', '2015', NULL, '2018-02-05', 'Sudah Kembali'),
('E-1802003', NULL, '2018/2019', 'jojon', '178652', 'mafgetan', '02 Februari 2018', 'Laki-laki', 'stry', 'kiki', 'GPH D/12', '089624762088', 'SMAK Untung Suropati', 'ffghvbj', '23456758', '1990', NULL, '2018-02-05', 'Sudah Kembali'),
('E-1802004', NULL, '2018/2019', 'Raysa Putra', '121414', 'Surabaya', '22 April 1997', 'Laki-laki', 'Daaaa', 'ALi', 'Gakaaaa', '', 'SMP 5', 'Jl Rumah', '1861731', '1009', NULL, '2018-02-08', 'Sudah Kembali'),
('E-1802005', NULL, '2018/2019', 'Ade PRis', '16761', 'Surabaya', '22 Februari 1997', 'Laki-laki', 'Budi', 'Kuli', 'Pacar Keling', '', 'SMAN 6', 'Jl Surabaya', '127318', '2016', NULL, '2018-02-09', 'Sudah Kembali'),
('E-1802006', NULL, '2018/2019', 'Ade Cantiqu', '82736', 'Surabaya', '22 Februari 1997', 'Laki-laki', 'Budi', 'Kuli', 'Pacar Keling', '', 'SMAN 6', 'Jl Surabaya', '127318', '2015', NULL, '2018-02-09', 'Sudah Kembali'),
('E-1802007', NULL, '2018/2019', 'Ruth ali', '16726', 'Sidoarjo', '22 Mei 2000', 'Perempuan', 'Sartini', 'IRT', 'GPH D/12', '', 'SMK', 'Jl Truno', '178721', '2016', NULL, '2018-02-09', 'Sudah Kembali'),
('E-1802008', NULL, '2018/2019', 'Oliv Margo', '126784', 'Sidoarjo', '04 Nopember 2000', 'Perempuan', 'Sartini', 'IRT', 'GPH D/12', '', 'SMK', 'Jl Truno', '178721', '2016', NULL, '2018-02-09', 'Sudah Kembali'),
('E-1802009', NULL, '2018/2019', 'Sari Roti', '167358', 'Sidoarjo', '18 Mei 1998', 'Perempuan', 'Santoso', 'IRT', 'Menanggal', '', 'SMAN 1', 'Jl Bawah', '17871', '2015', NULL, '2018-02-09', 'Sudah Kembali'),
('E-1802010', NULL, '2018/2019', 'zahrotul chasanah', '15410100188', 'gorontalo', '16 Februari 2018', 'Perempuan', 'mukidi', 'pegawai', 'jln yos sudarso', '', 'makassar', 'jln baruk utara', '089807976', '2017', NULL, '2018-02-09', 'Belum Kembali'),
('E-1802011', NULL, '2018/2019', 'lulu', '15410100188', 'gorontalo', '13 Februari 2018', 'Laki-laki', 'mukidi', 'pegawai', 'jln yos sudarso', '', 'makassar', 'jln baruk utara', '089807976', '2016', NULL, '2018-02-09', 'Belum Kembali'),
('E-1802012', NULL, '2018/2019', 'Dani', '186186', 'Sidoaro', '15 Februari 2018', 'Laki-laki', 'Budi', 'Guru', 'Gph', '', 'SMA', 'Jl Turno', '187817', '2015', NULL, '2018-02-15', 'Belum Kembali'),
('E-1802013', NULL, '2018/2019', 'Raysa Dani', '8367813', 'Surabaya', '22 April 1997', 'Laki-laki', 'Sartini', 'Tidak bekerja', 'Gph D/12', '', 'SMP 6', 'Jl. Bluru', '178748', '2015', NULL, '2018-02-20', 'Belum Kembali'),
('E-1802014', NULL, '2018/2019', 'Rizal', '1827361', 'Sidoarjo', '24 Oktober 1997', 'Laki-laki', 'sdakjsd', 'askjdha', 'akjsdhajskdh', NULL, 'aksjhdak', 'aksjdhak', '123768', '2016', NULL, '2018-02-21', 'Belum Kembali');

-- --------------------------------------------------------

--
-- Table structure for table `penilaian`
--

CREATE TABLE `penilaian` (
  `IDPENDAFTAR` varchar(10) NOT NULL,
  `STATUSSELEKSI` varchar(5) NOT NULL,
  `NILAI` float NOT NULL,
  `CATATAN` varchar(100) NOT NULL,
  `TANGGALSELEKSI` varchar(20) NOT NULL,
  `LOLOS` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penilaian`
--

INSERT INTO `penilaian` (`IDPENDAFTAR`, `STATUSSELEKSI`, `NILAI`, `CATATAN`, `TANGGALSELEKSI`, `LOLOS`) VALUES
('E-1802000', 'Sudah', 90, 'Menjawab dengan baik', '09 Februari 2018', 'Ya'),
('E-1802002', 'Sudah', 80, 'Baik', '13 Februari 2018', 'Ya'),
('E-1802003', 'Sudah', 70, 'Cukup', '16 Februari 2018', 'Ya'),
('E-1802004', 'Belum', 0, '', '10 Februari 2018', ''),
('E-1802005', 'Belum', 0, '', '10 Februari 2018', ''),
('E-1802006', 'Belum', 0, '', '', ''),
('E-1802007', 'Belum', 0, '', '', ''),
('E-1802008', 'Belum', 0, '', '', ''),
('E-1802009', 'Belum', 0, '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_baru`
--

CREATE TABLE `siswa_baru` (
  `NOMORINDUK` varchar(20) NOT NULL,
  `IDPENDAFTAR` varchar(10) NOT NULL,
  `NAMALENGKAP` varchar(50) DEFAULT NULL,
  `NAMAPANGGILAN` varchar(20) DEFAULT NULL,
  `AGAMA` varchar(10) DEFAULT NULL,
  `KEWARGANEGARAAN` varchar(20) DEFAULT NULL,
  `ANAKKE` int(11) DEFAULT NULL,
  `JMLSAUDARAKANDUNG` int(11) DEFAULT NULL,
  `JMLSAUDARAANGKAT` int(11) DEFAULT NULL,
  `STATUSDLMKELUARGA` varchar(20) DEFAULT NULL,
  `BAHASAHARIAN` varchar(40) DEFAULT NULL,
  `PIHAKDIHUBUNGI` varchar(10) DEFAULT NULL,
  `PENANGGUNGBIAYA` varchar(20) DEFAULT NULL,
  `EMAIL` varchar(30) DEFAULT NULL,
  `KODEPOS` varchar(6) DEFAULT NULL,
  `KELURAHANDESA` varchar(30) DEFAULT NULL,
  `KABUPATENKOTA` varchar(30) DEFAULT NULL,
  `PROPINSI` varchar(20) DEFAULT NULL,
  `TINGGAL` varchar(20) DEFAULT NULL,
  `JARAKKESEKOLAH` varchar(20) DEFAULT NULL,
  `TRANSPORTSEKOLAH` varchar(20) DEFAULT NULL,
  `GOLONGANDARAH` varchar(2) DEFAULT NULL,
  `TINGGIBADAN` float DEFAULT NULL,
  `BERATBADAN` float DEFAULT NULL,
  `TANGGALDITERIMA` varchar(20) DEFAULT NULL,
  `TANGGALLULUS` varchar(20) DEFAULT NULL,
  `NOMORSTL` varchar(30) DEFAULT NULL,
  `LAMABELAJAR` int(11) DEFAULT NULL,
  `NILAISKHUN` float DEFAULT NULL,
  `TANGGALSKHUN` varchar(20) DEFAULT NULL,
  `NOMORSKHUN` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `siswa_baru`
--

INSERT INTO `siswa_baru` (`NOMORINDUK`, `IDPENDAFTAR`, `NAMALENGKAP`, `NAMAPANGGILAN`, `AGAMA`, `KEWARGANEGARAAN`, `ANAKKE`, `JMLSAUDARAKANDUNG`, `JMLSAUDARAANGKAT`, `STATUSDLMKELUARGA`, `BAHASAHARIAN`, `PIHAKDIHUBUNGI`, `PENANGGUNGBIAYA`, `EMAIL`, `KODEPOS`, `KELURAHANDESA`, `KABUPATENKOTA`, `PROPINSI`, `TINGGAL`, `JARAKKESEKOLAH`, `TRANSPORTSEKOLAH`, `GOLONGANDARAH`, `TINGGIBADAN`, `BERATBADAN`, `TANGGALDITERIMA`, `TANGGALLULUS`, `NOMORSTL`, `LAMABELAJAR`, `NILAISKHUN`, `TANGGALSKHUN`, `NOMORSKHUN`) VALUES
('', 'E-1802002', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
('E-1802000', 'E-1802000', 'Daniel Raysa', 'Anel', 'Kristen', 'WNI', 1, 2, 0, 'Anak Kandung', 'Indonesia', 'Ibu', 'Ibu', 'anelzraysa@gmail.com', '61271', 'Wedoroklurak', 'Sidoarjo', 'Jawa Timur', 'Orang Tua', 'Lebih dari 1 km', 'Kendaraan Pribadi', 'B', 170, 50, '15 Februari 2018', '15 Februari 2018', '18161876', 3, 89.1, '15 Februari 2018', '264178'),
('E-1802003', 'E-1802003', 'jojon', 'jon', 'Kristen', 'WNI', 1, 2, 0, 'Anak Kandung', 'Indonesia', 'Ayah', 'Ayah', 'anelzraysa@gmail.com', '61271', 'Wedoroklurak', 'Sidoarjo', 'Jawa Timur', 'Orang Tua', 'Lebih dari 1 km', 'Kendaraan Pribadi', 'B', 170, 50, '16 Februari 2018', '16 Februari 2015', '23456758', 3, 89.1, '16 Februari 2015', '278729920');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `ortu_wali`
--
ALTER TABLE `ortu_wali`
  ADD KEY `FK_RELATIONSHIP_3` (`NOMORINDUK`);

--
-- Indexes for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD PRIMARY KEY (`IDPENDAFTAR`),
  ADD KEY `FK_RELATIONSHIP_1` (`NOMORINDUK`);

--
-- Indexes for table `penilaian`
--
ALTER TABLE `penilaian`
  ADD PRIMARY KEY (`IDPENDAFTAR`);

--
-- Indexes for table `posts`
--

--
-- Indexes for table `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`NOMORINDUK`),
  ADD KEY `FK_RELATIONSHIP_2` (`IDPENDAFTAR`);


--
-- Constraints for table `ortu_wali`
--
ALTER TABLE `ortu_wali`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`NOMORINDUK`) REFERENCES `siswa_baru` (`NOMORINDUK`);

--
-- Constraints for table `pendaftar`
--
ALTER TABLE `pendaftar`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`NOMORINDUK`) REFERENCES `siswa_baru` (`NOMORINDUK`);

--
-- Constraints for table `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`IDPENDAFTAR`) REFERENCES `pendaftar` (`IDPENDAFTAR`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
