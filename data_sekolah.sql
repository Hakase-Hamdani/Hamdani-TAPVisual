-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 02:20 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `data_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `hubungan`
--

CREATE TABLE `hubungan` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `status_hub` enum('kandung','angkat','wali') DEFAULT NULL,
  `keterangan` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hubungan`
--

INSERT INTO `hubungan` (`id`, `siswa_id`, `ortu_id`, `status_hub`, `keterangan`) VALUES
(1, 1, 1, 'kandung', NULL),
(2, 1, 2, 'kandung', NULL),
(3, 2, 3, 'kandung', NULL),
(4, 2, 4, 'kandung', NULL),
(5, 3, 5, 'kandung', NULL),
(6, 3, 6, 'kandung', NULL),
(7, 4, 7, 'kandung', NULL),
(8, 4, 8, 'kandung', NULL),
(9, 5, 9, 'kandung', NULL),
(10, 5, 10, 'kandung', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id` int(8) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `jenis` varchar(20) DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ortu`
--

CREATE TABLE `ortu` (
  `id` int(8) NOT NULL,
  `nik` bigint(18) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `pendidikan` varchar(20) DEFAULT NULL,
  `pekerjaan` varchar(20) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `agama` varchar(15) DEFAULT NULL,
  `jk` tinyint(1) DEFAULT NULL,
  `status` enum('hidup','meninggal') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ortu`
--

INSERT INTO `ortu` (`id`, `nik`, `nama`, `pendidikan`, `pekerjaan`, `telp`, `alamat`, `agama`, `jk`, `status`) VALUES
(1, 197031458207906841, 'Lena Hanifah', 'SMA', 'Ibu Rumah Tangga', '083145456767', 'Jl. Pematang RT.02', 'Islam', 0, 'hidup'),
(2, 197031458207906842, 'Alex Ruhiyan', 'S1', 'Pegawai Negeri Sipil', '083145450000', 'Jl. Pematang RT.02', 'Islam', 1, 'meninggal'),
(3, 197031458207906843, 'Rina Agustina', 'SMA', 'Ibu Rumah Tangga', '083145457788', 'Jl. Merdeka No. 12', 'Islam', 0, 'hidup'),
(4, 197031458207906844, 'Budi Santoso', 'SMA', 'Karyawan Swasta', '083145450012', 'Jl. Merdeka No. 12', 'Islam', 1, 'hidup'),
(5, 197031458207906845, 'Dewi Lestari', 'D3', 'Pegawai Negeri Sipil', '083145450034', 'Jl. Diponegoro No. 5', 'Kristen', 0, 'hidup'),
(6, 197031458207906846, 'Joko Susilo', 'SMA', 'Karyawan Swasta', '083145450067', 'Jl. Diponegoro No. 5', 'Kristen', 1, 'hidup'),
(7, 197031458207906847, 'Sari Puspita', 'SMA', 'Ibu Rumah Tangga', '083145458897', 'Jl. Pahlawan No. 11', 'Budha', 0, 'hidup'),
(8, 197031458207906848, 'Agus Setiawan', 'S1', 'Pegawai Negeri Sipil', '083145450045', 'Jl. Pahlawan No. 11', 'Budha', 1, 'hidup'),
(9, 197031458207906849, 'Rahmat Budiman', 'D3', 'Karyawan Swasta', '083145450098', 'Jl. Cik Di Tiro No. 2', 'Islam', 1, 'meninggal'),
(10, 197031458207906850, 'Lina Herawati', 'SMA', 'Ibu Rumah Tangga', '083145459876', 'Jl. Cik Di Tiro No. 2', 'Islam', 0, 'hidup');

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `id` int(8) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `bobot` int(3) DEFAULT NULL,
  `jenis` enum('prestasi','pelanggaran') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `poin`
--

INSERT INTO `poin` (`id`, `nama`, `bobot`, `jenis`, `status`) VALUES
(1, 'Siswa Teladan', 35, 'prestasi', 1),
(2, 'Juara Kelas Peringkat I', 20, 'prestasi', 1),
(3, 'Juara Kelas Peringkat I', 15, 'prestasi', 1),
(4, 'Juara Kelas Peringkat I', 10, 'prestasi', 1),
(5, 'Juara Umum', 30, 'prestasi', 0),
(6, 'Juara I Lomba Tingkat Kab/Kota', 15, 'prestasi', 1),
(7, 'Juara II Lomba Tingkat Kab/Kota', 10, 'prestasi', 1),
(8, 'Juara III Lomba Tingkat Kab/Kota', 5, 'prestasi', 1),
(9, 'Juara I Lomba Tingkat Provinsi', 30, 'prestasi', 1),
(10, 'Juara II Lomba Tingkat Provinsi', 25, 'prestasi', 1),
(11, 'Juara III Lomba Tingkat Provinsi', 20, 'prestasi', 1),
(12, 'Juara I Lomba Tingkat Nasional', 75, 'prestasi', 1),
(13, 'Juara II Lomba Tingkat Nasional', 60, 'prestasi', 1),
(14, 'Juara III Lomba Tingkat Nasional', 45, 'prestasi', 1),
(15, 'Datang terlambat', 5, 'pelanggaran', 1),
(16, 'Keluar kelas tanpa izin', 5, 'pelanggaran', 1),
(17, 'Tidak melaksanakan tugas piket sekolah', 5, 'pelanggaran', 1),
(18, 'Tidak berseragam lengkap dan rapi/olah raga ', 5, 'pelanggaran', 1),
(19, 'Membuang sampah tidak pada tempatnya', 5, 'pelanggaran', 1),
(20, 'Mencoret-coret tembok/meja/kursi, dan merusak tanaman', 5, 'pelanggaran', 1),
(21, 'Siswa memasuki runag Kepala Madrasah (Guru/Tu/Laboratorium/Perpustakaan) tanpa izin sebelumnya', 5, 'pelanggaran', 1),
(22, 'Menggunakan perhiasan yang berlebihan', 5, 'pelanggaran', 1),
(23, 'Rambut gondrong/memakai gelang, anting, kalung bagi pria', 5, 'pelanggaran', 1),
(24, 'Rambut di cat, kuku panjang, kuku di cat', 5, 'pelanggaran', 1),
(25, 'Tidak mengikuti kegiatan madrasah/ekstra kurikuler', 5, 'pelanggaran', 1),
(26, 'Perbuatan tidak menyenangkan', 5, 'pelanggaran', 1),
(27, 'Melakukan olah raga pada jam pelajaran lain/jam istirahat', 5, 'pelanggaran', 1),
(28, 'Keluar halaman madrasah tanpa ijin/alpa', 10, 'pelanggaran', 1),
(29, 'Melompat pagar atau jendela', 10, 'pelanggaran', 1),
(30, 'Tidak mengikuti sholat berjamaah', 10, 'pelanggaran', 1),
(31, 'Membawa barang-barang yang tidak ada kaitannya dengan pelajaran', 10, 'pelanggaran', 1),
(32, 'Mengacau sekolah/kelas', 10, 'pelanggaran', 1),
(33, 'Tidur di kelas pada saat jam pelajaran', 10, 'pelanggaran', 1),
(34, 'Terlibat perkelahian ringan', 10, 'pelanggaran', 1),
(35, 'Membuat izin palsu/tanda tangan palsu', 10, 'pelanggaran', 1),
(36, 'Siswa berlainan jenis berduaan', 20, 'pelanggaran', 1),
(37, 'Bergandengan tangan', 20, 'pelanggaran', 1),
(38, 'Membawa HP/menggunakan pada saat pelajaran', 20, 'pelanggaran', 1),
(39, 'Memalsu raport', 25, 'pelanggaran', 1),
(40, 'Membawa buku/gambar/vidio porno', 25, 'pelanggaran', 1),
(41, 'Merusak sarana prasaran madrasah', 25, 'pelanggaran', 1),
(42, 'Bersikap tidak sopan/menentang guru', 25, 'pelanggaran', 1),
(43, 'Menyinggung guru/karyawan', 25, 'pelanggaran', 1),
(44, 'Merokok/membawa rokok di dalam lingkungan madrasah', 25, 'pelanggaran', 1),
(45, 'Mengambil barang tanpa izin pemiliknya atau membajak siswa lain', 25, 'pelanggaran', 1),
(46, 'Terlibat perkelahian berat (tauran)/Pencurian di luar sekolah', 75, 'pelanggaran', 1),
(47, 'Membawa minum-minuman keras, Mabuk atau sejenisnya', 75, 'pelanggaran', 1),
(48, 'Terlibat penyalahgunaan narkoba/obat terlarang lainnya', 75, 'pelanggaran', 1),
(49, 'Berurusan dengan pihak berwajib karena tindakan kejahatan/kriminal', 75, 'pelanggaran', 1),
(50, 'Membawa senjata tajam tanpa sepengetahuan Madrasah', 75, 'pelanggaran', 1),
(51, 'Berjudi di sekolah dan di lingkugan madrasah', 75, 'pelanggaran', 1),
(52, 'Mengancam guru/Karyawan Madrasah', 75, 'pelanggaran', 1),
(53, 'Siswa berlainan jenis, berpelukan, berciuman', 75, 'pelanggaran', 1),
(54, 'Berzinah', 100, 'pelanggaran', 1),
(55, 'Menikah', 100, 'pelanggaran', 1),
(56, 'Hamil/Menghamili', 100, 'pelanggaran', 1),
(57, 'Membawa senjata tajam untuk melukai', 100, 'pelanggaran', 1);

-- --------------------------------------------------------

--
-- Table structure for table `riwayat_poin`
--

CREATE TABLE `riwayat_poin` (
  `id` int(8) NOT NULL,
  `siswa_id` int(8) DEFAULT NULL,
  `poin_id` int(8) DEFAULT NULL,
  `wali_id` int(8) DEFAULT NULL,
  `ortu_id` int(8) DEFAULT NULL,
  `kelas_id` int(8) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `semester` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `id` int(8) NOT NULL,
  `nis` bigint(10) DEFAULT NULL,
  `nisn` bigint(10) DEFAULT NULL,
  `nama_siswa` varchar(40) DEFAULT NULL,
  `nik` bigint(18) DEFAULT NULL,
  `tempat_lahir` varchar(40) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` tinyint(1) DEFAULT NULL,
  `tingkat_kelas` enum('1','2','3','4','5','6') DEFAULT NULL,
  `jurusan` varchar(20) DEFAULT NULL,
  `wali_kelas` varchar(40) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `hp` varchar(14) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`id`, `nis`, `nisn`, `nama_siswa`, `nik`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `tingkat_kelas`, `jurusan`, `wali_kelas`, `alamat`, `telp`, `hp`, `status`) VALUES
(1, 2879234560, 5938274100, 'Dani', 200985346127093820, 'Banjarmasin', '2002-03-21', 1, '1', 'TKJ', 'Halimah', 'Jl. Pematang RT.02', '082159318569', '082159318569', 'aktif'),
(2, 5938274106, 7209481653, 'Amelia', 200926857049831764, 'Banjarbaru', '2001-11-10', 0, '1', 'TKJ', 'Lisa', 'Jl. Merdeka No. 12', '084613597208', '084613597208', 'aktif'),
(3, 8140692357, 3265784919, 'Alex', 524076910386790412, 'Martapura', '2003-11-10', 0, '2', 'MM', 'Andi', 'Jl. Diponegoro No. 5', '089743610257', '089743610257', 'aktif'),
(4, 4571238960, 3094682571, 'Gina', 200902876543219087, 'Kota Baru', '2000-10-10', 0, '2', 'TKJ', 'Rudi', 'Jl. Pahlawan No. 11', '082947156039', '082947156039', 'aktif'),
(5, 1856932748, 9841527602, 'Anton', 200902876543219087, 'Banjarmasin', '2004-11-22', 0, '2', 'MM', 'Andi', 'Jl. Cik Di Tiro No. 2', '082947156039', '082947156039', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(8) NOT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `level` enum('admin','guru','siswa') DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wali_kelas`
--

CREATE TABLE `wali_kelas` (
  `id` int(8) NOT NULL,
  `nik/nip` bigint(18) DEFAULT NULL,
  `nama` varchar(40) DEFAULT NULL,
  `jk` tinyint(1) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telp` varchar(14) DEFAULT NULL,
  `matpel` varchar(20) DEFAULT NULL,
  `pendidikan` varchar(30) DEFAULT NULL,
  `status` enum('aktif','nonaktif') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wali_kelas`
--

INSERT INTO `wali_kelas` (`id`, `nik/nip`, `nama`, `jk`, `alamat`, `telp`, `matpel`, `pendidikan`, `status`) VALUES
(1, 199180007676150300, 'Dani Hamdani', 1, 'Jl.Pematang Panjang', '083159318569', 'Tikom', 'S1 Teknik Komputer', 'aktif'),
(2, 199180007676150301, 'Andin Mahrini', 0, 'Jl.Sungai Tabuk', '083159318000', 'Bahasa Arab', 'S1 Pendidikan Islam', 'aktif'),
(3, 199180007676150302, 'Azka Rahardian', 1, 'Jl.Banjar Berkah', '083122118569', 'Fikih', 'S1 Pendidikan Islam', 'aktif'),
(4, 199180007676150303, 'Aria Ananda', 0, 'Jl.Banjar Berkah', '083250010069', 'Matematika', 'D3 Matematika', 'aktif'),
(5, 199180007676150304, 'Aji Ahmadi', 1, 'Jl.Gambut Terang', '083122110987', 'Alquran dan Hadis', 'S1 Pendidikan Islam', 'aktif'),
(6, 199180007676150305, 'Alex Adinda', 1, 'Jl.Lianganggang', '083159318569', 'Olahraga', 'S3 Olahraga', 'nonaktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `siswa_id` (`siswa_id`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ortu`
--
ALTER TABLE `ortu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD PRIMARY KEY (`id`),
  ADD KEY `siswa_id` (`siswa_id`),
  ADD KEY `kelas_id` (`kelas_id`),
  ADD KEY `wali_id` (`wali_id`),
  ADD KEY `ortu_id` (`ortu_id`),
  ADD KEY `poin_id` (`poin_id`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hubungan`
--
ALTER TABLE `hubungan`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ortu`
--
ALTER TABLE `ortu`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `poin`
--
ALTER TABLE `poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wali_kelas`
--
ALTER TABLE `wali_kelas`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `hubungan`
--
ALTER TABLE `hubungan`
  ADD CONSTRAINT `hubungan_ibfk_1` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `hubungan_ibfk_2` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`);

--
-- Constraints for table `riwayat_poin`
--
ALTER TABLE `riwayat_poin`
  ADD CONSTRAINT `riwayat_poin_ibfk_1` FOREIGN KEY (`siswa_id`) REFERENCES `siswa` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_2` FOREIGN KEY (`kelas_id`) REFERENCES `kelas` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_3` FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_4` FOREIGN KEY (`ortu_id`) REFERENCES `ortu` (`id`),
  ADD CONSTRAINT `riwayat_poin_ibfk_5` FOREIGN KEY (`poin_id`) REFERENCES `poin` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
