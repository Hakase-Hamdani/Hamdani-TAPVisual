CREATE DATABASE data_sekolah_rev;
USE data_sekolah_rev;
CREATE TABLE `user` (
  `id` int(8) AUTO_INCREMENT,
  `nama` varchar(40),
  `password` varchar(40),
  `level` enum('admin', 'guru', 'siswa'),
  `status` boolean,
  PRIMARY KEY (`id`)
);

CREATE TABLE `siswa` (
  `id` int(8) AUTO_INCREMENT,
  `user_id` int(8),
  `nis` bigint(10),
  `nisn` bigint(10),
  `nama_siswa` varchar(40),
  `nik` bigint(18),
  `tempat_lahir` varchar(40),
  `tanggal_lahir` date,
  `jenis_kelamin` boolean,
  `tingkat_kelas` enum('1', '2', '3', '4', '5', '6'),
  `jurusan` varchar(20),
  `wali_kelas` varchar(40),
  `alamat` varchar(40),
  `telp` varchar(14),
  `hp` varchar(14),
  `status` enum('aktif', 'nonaktif'),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
);

CREATE TABLE `kelas` (
  `id` int(8) AUTO_INCREMENT,
  `nama` varchar(40),
  `jenis` varchar(20),
  `jurusan` varchar(20),
  PRIMARY KEY (`id`)
);

CREATE TABLE `ortu` (
  `id` int(8) AUTO_INCREMENT,
  `nik` bigint(18),
  `nama` varchar(40),
  `pendidikan` varchar(20),
  `pekerjaan` varchar(20),
  `telp` varchar(14),
  `alamat` varchar(40),
  `agama` varchar(15),
  `jk` boolean,
  `status` enum('hidup', 'meninggal', 'wali'),
  PRIMARY KEY (`id`)
);

CREATE TABLE `hubungan` (
  `id` int(8) AUTO_INCREMENT,
  `siswa_id` int(8),
  `ortu_id` int(8),
  `status_hub` enum('kandung', 'angkat', 'wali'),
  `keterangan` varchar(40),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`ortu_id`) REFERENCES `ortu`(`id`),
  FOREIGN KEY (`siswa_id`) REFERENCES `siswa`(`id`)
);

CREATE TABLE `wali_kelas` (
  `id` int(8) AUTO_INCREMENT,
  `user_id` int(8),
  `nik/nip` bigint(18),
  `nama` varchar(40),
  `jk` boolean,
  `alamat` varchar(40),
  `telp` varchar(14),
  `matpel` varchar(20),
  `pendidikan` varchar(30),
  `status` enum('aktif', 'nonaktif'),
  PRIMARY KEY (`id`),
  FOREIGN KEY (`user_id`) REFERENCES `user`(`id`)
);

CREATE TABLE `poin` (
  `id` int(8) AUTO_INCREMENT,
  `nama` varchar(30),
  `bobot` int(3),
  `jenis` enum('prestasi', 'pelanggaran'),
  `status` boolean,
  PRIMARY KEY (`id`)
);

CREATE TABLE `riwayat_poin` (
  `id` int(8) AUTO_INCREMENT,
  `siswa_id` int(8),
  `poin_id` int(8),
  `wali_id` int(8),
  `ortu_id` int(8),
  `kelas_id` int(8),
  `tanggal` date,
  `semester` boolean,
  `status` boolean,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`siswa_id`) REFERENCES `siswa`(`id`),
  FOREIGN KEY (`kelas_id`) REFERENCES `kelas`(`id`),
  FOREIGN KEY (`wali_id`) REFERENCES `wali_kelas`(`id`),
  FOREIGN KEY (`ortu_id`) REFERENCES `ortu`(`id`),
  FOREIGN KEY (`poin_id`) REFERENCES `poin`(`id`)
);

