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
-- Table structure for table `components`
--

CREATE TABLE `components` (
  `id_component` int(11) NOT NULL,
  `konten` varchar(50) NOT NULL,
  `isi` text NOT NULL,
  `tanggal_update` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `components`
--

INSERT INTO `components` (`id_component`, `konten`, `isi`, `tanggal_update`) VALUES
(1, 'Visi Sekolah', '<p>Menjadi sekolah yang unggul dan tertib dalam proses pembelajaran.</p>\r\n', '2018-02-16'),
(2, 'Misi Sekolah', '<ol>\r\n	<li>Menumbuhkan motivasi untuk selalu menjaga dan meningkatkan mutu pendidikan.</li>\r\n	<li>Meningkatkan prestasi di bidang olahraga dan seni.</li>\r\n	<li>Menciptakan dan mencetak lulusan yang cerdas, santun dan agamis.</li>\r\n	<li>Menjalin dan mengembangkan hubungan yang baik dengan instansi terkait.</li>\r\n</ol>\r\n', '2018-02-16'),
(3, 'Email Sekolah', 'smaitp@gmail.com', '0000-00-00'),
(4, 'Nomor Telepon Sekolah', '031-8950674', '0000-00-00'),
(5, 'Alamat Sekolah', '<p>Jl. Dukuh Menanggal XII/4 Surabaya, Jawa Timur</p>\r\n', '2018-02-23');

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(11) NOT NULL,
  `id_post` int(11) DEFAULT NULL,
  `judul_gambar` varchar(50) NOT NULL,
  `path` text NOT NULL,
  `tanggal` datetime NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_post`, `judul_gambar`, `path`, `tanggal`, `tanggal_update`) VALUES
(1, 7, 'Tes Gambar Upload', '1518666589.jpg', '2018-02-15 04:49:48', '0000-00-00 00:00:00'),
(2, 0, 'Testing Gambar 1', '33.jpg', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, NULL, 'Tambah Baru 1', '3.jpg', '2018-02-20 15:18:48', '2018-02-20 00:00:00'),
(4, NULL, 'Tambah Baru 2', '11.jpg', '2018-02-20 15:18:48', '2018-02-20 00:00:00'),
(5, 10, 'Halaman Baru Fresh', '1514291408549.jpg', '2018-02-20 15:45:22', '0000-00-00 00:00:00'),
(6, 11, 'dasda', 'aa.png', '2018-02-20 16:54:54', '2018-02-25 00:11:28'),
(7, 13, 'NEW BARUU', 'Youth Choir Fest2016_791.jpg', '2018-02-25 00:31:53', '2018-02-25 00:31:53');

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
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id_post` int(11) NOT NULL,
  `author` varchar(30) NOT NULL,
  `judul` text NOT NULL,
  `isi` longtext NOT NULL,
  `link` text NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id_post`, `author`, `judul`, `isi`, `link`, `tanggal_post`, `tanggal_update`) VALUES
(1, 'Daniel Raysa Putra', 'Hello World', '<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n\r\n<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>\r\n', '', '2018-02-13 00:00:00', '2018-02-23 23:30:59'),
(7, 'Daniel Raysa Putra', 'Tes Gambar Upload', '<p>This is new pages</p>\r\n', '', '2018-02-15 04:49:48', '2018-02-15 04:49:48'),
(8, 'Daniel Raysa Putra', 'Tes Baru No Image', '<p>This is new page&nbsp;<strong>without image</strong></p>\r\n', '', '2018-02-16 20:37:54', '2018-02-16 20:37:54'),
(9, 'Daniel Raysa Putra', 'New Page With Pages', '<p>Hello this is new pages with HTML pages</p>\r\n', '', '2018-02-16 21:31:03', '2018-02-16 21:31:03'),
(10, 'Daniel Raysa Putra', 'Halaman Baru Fresh', '<p>Ini halaman baru dari update yang paling baru</p>\r\n', 'Halaman-Baru-Fresh.html', '2018-02-20 15:45:22', '2018-02-20 15:45:22'),
(11, 'Daniel Raysa Putra', 'Page HAlaman Baru', '<p>ajdkahdjahsdjahb aksjdhkajshda ajsdhakshdkjashd</p>\r\n', 'Page-HAlaman-Baru.html', '2018-02-20 16:54:54', '2018-02-20 16:54:54'),
(12, 'Anel Raysa', 'KIIIII HALLO', '<p>Youth Choir Fest 2017</p>\r\n', 'KIIIII-HALLO.html', '2018-02-25 00:24:50', '2018-02-25 00:24:50'),
(13, 'Anel Raysa', 'NEW BARUU', '<p>YFC 2124567893213456fgs gs</p>\r\n', 'NEW-BARUU.php', '2018-02-25 00:31:53', '2018-02-25 00:31:53');

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
-- Indexes for table `components`
--
ALTER TABLE `components`
  ADD PRIMARY KEY (`id_component`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

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
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id_post`);

--
-- Indexes for table `siswa_baru`
--
ALTER TABLE `siswa_baru`
  ADD PRIMARY KEY (`NOMORINDUK`),
  ADD KEY `FK_RELATIONSHIP_2` (`IDPENDAFTAR`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `components`
--
ALTER TABLE `components`
  MODIFY `id_component` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id_post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- Constraints for dumped tables
--

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
