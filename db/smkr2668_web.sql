-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Bulan Mei 2019 pada 13.17
-- Versi server: 10.3.14-MariaDB-cll-lve
-- Versi PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smkr2668_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(11, 'JADWAL KBM SELAMA KELAS XII MELAKSANAKAN RANGKAIAN KEGIATAN UJIAN SMK ', '2019-03-13 06:16:33', 'Sehubungan dengan rangkaian kegiatan ujian kelas XII (USBN, UN, dan UKK/Uji sertifikasi), jadwal Kegiatan Belajar Mengajar (KBM) kelas X dan XI kegiatan KBM tetap efektif. Tanggal penting ujian tersebut sbb :\r\n\r\n\r\n(Tanggal) 18 s.d 22 Maret 2019, (kegiatan kelas XII) Pemantapan UNBK /jadwal khusus, (keterangan) kelas X atau XII belajar normal/biasa.          \r\n (Tanggal) 25 s.d 28 Maret 2019,  (kegiatan kelas XII) UNBK,  (keterangan) kelas X dan XI belajar di rumah/penugasan.\r\n (Tangga) 1 Apr s.d 3 Mei 2019, (kegiatan Kelas XII) Uji sertifikasi kompetensi, (keterangan) kelas X dan XII belajar normal/biasa.\r\n\r\n	\r\n', '2019-03-18', '2019-03-22', 'SMK Insan Aqilah 4', '06:30 - 14:30', 'Jadwal KBM ', 'Raditya Damaris'),
(12, 'UAS', '2019-05-03 09:57:27', 'Ujian Akhir Semester Genap / kenaikan kelas 2019 SMK Insan Aqilah 4 akan dilaksanakan pada tanggal 20 - 28 Mei 2019.', '2019-05-20', '2019-05-28', 'SMK Insan Aqilah 4', '07.00/sd', 'Ujian', 'Ali Yasin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(5, 'UPACARA 17 AGUSTUS', '2019-01-24 02:34:40', 1, 'Ali Yasin', 3, 'e4fd3f0df155013edc979fd4dc4f4aa0.png'),
(6, 'Hari Pramuka', '2019-01-24 03:44:18', 1, 'Ali Yasin', 3, '6c322aa4eb8b8390c11b0b596bfb9051.png'),
(7, 'Perjusa', '2019-01-24 03:48:29', 1, 'Ali Yasin', 3, '5b7fd4d20d7892080746e592b72a640f.png'),
(8, 'Promosi Sekolah', '2019-01-24 03:51:33', 1, 'Ali Yasin', 3, '7e3e04ef56a50cd0683572987cadc39d.png'),
(9, 'Farmasi', '2019-04-10 14:19:01', 1, 'Ali Yasin', 12, '20fb90e71eff3b7e027b03000a58677a.png'),
(11, 'Multimedia', '2019-04-10 14:29:49', 1, 'Ali Yasin', 9, '1a8f2d02f889543a0dc127677c7f4b4f.png'),
(12, 'Umum', '2019-04-10 14:33:06', 1, 'Ali Yasin', 2, '2fae231c45b87e03f0bfe50b45e1503a.png'),
(13, 'Halal Bihalal', '2019-05-03 09:28:58', 1, 'Ali Yasin', 3, '1284f9cb539fafc519b20e4dcf3f9481.jpeg'),
(14, 'Osis', '2019-05-03 10:08:10', 1, 'Ali Yasin', 2, 'bd4a75d802cef1b0d85d9a552f1a92dd.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(13, 'HTML 5', 'HTML5NotesForProfessionals', '2019-01-23 12:54:44', 'Ali Yasin', 0, '5943ac2ad34dad2ebb8482f1d5b6bd05.pdf'),
(14, 'HTML5 Canva', 'HTML5 Canvas Notes for Professionals book', '2019-03-13 05:21:14', 'Ali Yasin', 0, 'f81644bc4cb36197c2bbcd6c8b88b377.pdf'),
(15, 'CSS', 'CSS Notes for Professionals book', '2019-03-13 05:28:31', 'Ali Yasin', 0, '59815fc258884a57f405703d87b418ec.pdf'),
(16, 'Java Script', 'JavaScript® Notes for Professionals book', '2019-03-13 05:33:55', 'Ali Yasin', 0, 'a14ab1ff7afb84a271d94bbd3a0382d5.pdf'),
(17, 'jQuery', 'jQuery® Notes for Professionals book', '2019-03-13 05:37:30', 'Ali Yasin', 0, '53fcd0e9cf8c26fc8c4ff98067d5a21b.pdf'),
(18, 'C', 'C Notes for Professionals book', '2019-03-13 05:39:57', 'Ali Yasin', 0, '8a3ffc42768d314cc3bb2f0294adf905.pdf'),
(19, 'Linux', 'Linux® Notes for Professionals book', '2019-03-13 05:41:05', 'Ali Yasin', 0, 'e6970e5400aa9313dde5322169bd3849.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(21, 'UPACARA ', '2019-01-24 02:38:08', 'b6394d7fc61caac21fd871f96469eb87.jpg', 5, 5, 'Raditya damaris'),
(22, 'UPACARA ', '2019-01-24 02:38:47', '4b3aff180582fec05b741add7960d33a.jpg', 5, 5, 'Raditya damaris'),
(23, 'UPACARA ', '2019-01-24 02:40:03', '82c548ff38850be06410823c6a53770d.jpg', 5, 5, 'Raditya damaris'),
(24, 'Pramuka', '2019-01-24 03:45:01', 'f4280b8f8721a2eece5b58863f3135cc.jpg', 6, 5, 'Raditya damaris'),
(26, 'Pramuka', '2019-01-24 03:46:03', 'f451f770531f325581f0e92ec51687c7.jpg', 6, 5, 'Raditya damaris'),
(27, 'Pramuka', '2019-01-24 03:47:10', '9688e58d35734bd3c34b40701f15a9c0.jpg', 6, 5, 'Raditya damaris'),
(28, 'Perjusa', '2019-01-24 03:49:13', 'a2b204dded0978af8d71bfbe7bf8f58b.jpg', 7, 5, 'Raditya damaris'),
(29, 'Perjusa', '2019-01-24 03:49:43', '0fcfa73e80f2c5ea24f8fabd410f1bcf.jpg', 7, 5, 'Raditya damaris'),
(30, 'Perjusa', '2019-01-24 03:50:06', '36ca0824451f9fc12a6ca14d7f7fa902.jpg', 7, 5, 'Raditya damaris'),
(31, 'Promosi Sekolah', '2019-01-24 03:52:27', '32d99c69ead97a56bc536e85538d7a51.jpg', 8, 5, 'Raditya damaris'),
(32, 'Promosi Sekolah', '2019-01-24 03:53:16', 'be4146700ae27a1daa9d9fc79f63e887.jpg', 8, 5, 'Raditya damaris'),
(33, 'Promosi Sekolah', '2019-01-24 03:53:44', 'd755611c59c382742c141071dfa04c2c.jpg', 8, 5, 'Raditya damaris'),
(34, 'UPK Farmasi', '2019-04-10 14:20:35', '5bf23641ad031f0c3f7b202856832cb9.jpg', 9, 1, 'Ali Yasin'),
(35, 'UPK Farmasi', '2019-04-10 14:21:18', '366b5d7a596b35400c1867ffad8a0660.jpg', 9, 1, 'Ali Yasin'),
(36, 'UPK Farmasi', '2019-04-10 14:22:23', '7ccc0d09ba7851df9de27ddc8bd7f086.jpg', 9, 1, 'Ali Yasin'),
(37, 'UPK Farmasi', '2019-04-10 14:22:39', 'e696caaefaf2163c8965fd978c0ced23.jpg', 9, 1, 'Ali Yasin'),
(38, 'UNBK 2019', '2019-04-10 14:33:46', '64fcfc296c453c2e661a1598e3fb4032.jpg', 12, 1, 'Ali Yasin'),
(39, 'UNBK 2019', '2019-04-10 14:34:10', '03c0f2010cb057545357a8bcf3eff33a.jpg', 12, 1, 'Ali Yasin'),
(40, 'LSP', '2019-04-16 09:17:35', 'cea41840c81f1fe78b511f38ec665015.jpg', 11, 1, 'Ali Yasin'),
(41, 'LSP Farmasi', '2019-05-03 08:54:11', '86f8fa45308126bc9c9e0c59415d5fad.JPG', 9, 1, 'Ali Yasin'),
(42, 'LSP Farmasi1', '2019-05-03 08:54:50', '70a257c0ddcd366d6c71dcceaf3d48cf.JPG', 9, 1, 'Ali Yasin'),
(43, 'LSP Farmasi2', '2019-05-03 08:56:05', '0438aade51f1c1837c4f36a04c57151e.JPG', 9, 1, 'Ali Yasin'),
(44, 'LSP Farmasi2', '2019-05-03 08:56:33', '00c76334abcf83857bc382133110db96.JPG', 9, 1, 'Ali Yasin'),
(45, 'LSP Farmasi4', '2019-05-03 08:58:40', '270588cbf8c049a6a81265e29d1e1082.JPG', 9, 1, 'Ali Yasin'),
(46, 'LSP Farmasi5', '2019-05-03 08:59:41', '19f3cd8ebe64cb6061984cd849d1ddb1.JPG', 9, 1, 'Ali Yasin'),
(47, 'LSP Farmasi6', '2019-05-03 09:00:26', 'ed887624fb01b9e7b17c24f85093aed2.JPG', 9, 1, 'Ali Yasin'),
(48, 'LSP Farmasi7', '2019-05-03 09:01:19', 'b79c06a88ee80a5c84ba1b67a972c4bf.JPG', 9, 1, 'Ali Yasin'),
(49, 'Shoting', '2019-05-03 09:03:19', '372ac8f878ec1a81b187596f25b021b6.jpg', 11, 1, 'Ali Yasin'),
(50, 'LSP mm', '2019-05-03 09:06:25', 'ae9691a9799af1eea4281a069f0942b9.JPG', 11, 1, 'Ali Yasin'),
(51, 'lSP mm1', '2019-05-03 09:06:50', '14211125422185e604b2f1d885cc64d3.JPG', 11, 1, 'Ali Yasin'),
(52, 'lSP mm2', '2019-05-03 09:07:29', 'c85e753db43b169c236faf1d657397ff.JPG', 11, 1, 'Ali Yasin'),
(53, 'lSP mm2', '2019-05-03 09:09:01', 'a650d9229d047487c452c8013472bf76.JPG', 11, 1, 'Ali Yasin'),
(54, 'lSP mm3', '2019-05-03 09:10:12', 'ef8131dee414f2c26daad73f98fa4c21.JPG', 11, 1, 'Ali Yasin'),
(55, 'lSP mm5', '2019-05-03 09:22:16', '7ac3bf542a5d12eda54e261142d43000.JPG', 11, 1, 'Ali Yasin'),
(56, 'lSP mm6', '2019-05-03 09:22:57', '7d832bb248f600cf5509c6bf5cc954e8.JPG', 11, 1, 'Ali Yasin'),
(57, 'Halal Bihalal 2019', '2019-05-03 09:29:21', 'd3741fb1b0c939d41871f0f6363b36e1.jpeg', 13, 1, 'Ali Yasin'),
(59, 'Halal Bihalal 2019_1', '2019-05-03 09:32:27', 'd982a0371f269a2ace66ab8a4ee12901.jpeg', 13, 1, 'Ali Yasin'),
(60, 'Halal Bihalal 2019_2', '2019-05-03 09:33:28', 'def987847a8026543b2ea2026d936b45.jpeg', 13, 1, 'Ali Yasin'),
(61, 'Osis', '2019-05-03 10:08:28', 'd45f84e905196bcf26140b92987d9fe7.jpeg', 14, 1, 'Ali Yasin'),
(62, 'Osis 1', '2019-05-03 10:08:48', '2ed603789f25d041f81c5196666ad9db.jpeg', 14, 1, 'Ali Yasin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(10, '-', 'Kartika Vica Zuspita, S.Sos.', 'P', '-', '-', 'Kepala Sekolah', '4c7015f274bf1be6fb1b6728ddd0d262.jpg', '2019-01-29 08:10:37'),
(12, '-', 'Fatihatun Ni`mah, S.Pd.', 'P', '-', '-', 'Wakil Bidang Kurikulum', 'bb1cad2ac4cf02306a2eebbcf8041c67.jpg', '2019-01-29 08:37:31'),
(13, '-', 'Riki Fahrozi Kamal, M.I.Kom.', 'L', '-', '-', 'Ketua Jurusan Multimedia', '437e6f0eafbe2c6f244f3917ee444c2b.jpg', '2019-01-29 08:42:26'),
(14, '-', 'Dini Agustina Yuniaty, S.Farm.', 'P', '-', '-', 'Ketua Jurusan Farmasi', '32e5855cc0017f85f0e0ac38717ac6f5.jpg', '2019-01-29 08:45:08'),
(15, '-', 'Yuniar Sari', 'P', '-', '-', 'Operator Sekolah', '3263d32aed3482c3ef67642399856116.jpg', '2019-01-29 09:31:47'),
(16, '-', 'Nur Fauziah', 'P', '-', '-', 'Staff Tata Usaha', '47cd30a41dfbda6db1adbbc201cc50a1.jpg', '2019-01-29 09:41:57'),
(18, '-', 'Indra Pratama Wibisono', 'L', '-', '-', 'Guru Multimedia', '69ad3f393e125c250c8a765a52353366.jpg', '2019-01-30 03:07:59'),
(19, '-', 'Muhammad Pathul Bahri', 'L', '-', '-', 'Guru Multimedia', '2443268ed81f7ea090725bb214c25224.jpg', '2019-01-30 03:09:46'),
(20, '-', 'Wandi Hasminto, A.Md.', 'L', '-', '-', 'Guru Multimedia', 'ef4f854e42b4ab5ef5a4f36caa11c88b.jpg', '2019-01-30 03:24:02'),
(23, '-', 'Marta Halim, M.Farm.Apt', 'L', '-', '-', 'Guru Farmasi', 'e2229439bc24325f55da2ae61aefec55.jpg', '2019-02-06 07:08:57'),
(24, '-', 'Dessy Sartika, S.Farm.', 'P', '-', '-', 'Guru Farmasi', '25db44ddc54b462f9e7c39a93262f3c8.jpg', '2019-02-12 04:33:13'),
(27, '-', 'Widyati Uswatun Khasanah', 'P', '-', '-', 'Guru Farmasi', 'f5c5e012de3a89d47f0f570417303bde.jpg', '2019-02-12 11:04:19'),
(28, '-', 'Muhammad Idrus, S.PD.', 'L', '-', '-', 'Guru Farmasi', '0249725a11da3ea7acd92e97dfb0d0ea.jpg', '2019-02-13 03:16:38'),
(29, '-', 'Sugito, A.Md.', 'L', '-', '-', 'Penjaskes', '2d0f9ee8e15cf8ad2b3a88250ddbf2bb.jpg', '2019-02-13 03:20:03'),
(30, '-', 'Siti Fatimah, A.Md.', 'P', '-', '-', 'PPKN', '847c3dc7d9a14423b375ffd192a06b72.jpg', '2019-02-13 03:20:52'),
(31, '-', 'Nurjanah, S.PD.', 'P', '-', '-', 'Agama', 'b7dd865364d8fa034e58fbec39676a58.jpg', '2019-02-13 06:27:15'),
(32, '-', 'Aprilia Sari', 'P', '-', '-', 'Bahasa Inggris', 'b4edc1c32d0a7b6fdaa7e35aa7322e46.jpg', '2019-02-19 01:12:05');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(6, 'Prestasi', '2016-09-07 02:51:09'),
(14, 'Farmasi', '2019-01-23 12:51:17'),
(15, 'Multimedia', '2019-01-23 12:51:22'),
(16, 'Umum', '2019-02-01 02:37:04'),
(17, 'Acara', '2019-02-01 04:15:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'Ali Yasin', 'Hello', 'L', 'brother.91', '8a67a163eeb5b0b27fa994b16d622505', 'Hello World', 'ali.yasin@smkinsanaqilah4jkt.sch.id', '085810470993', 'aliy64069', 'null', 'null', 'null', 1, '1', '2019-02-26 17:00:00', '16412eedcebb44297f366385047a7d25.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(6, 'Peluncuran Website Resmi Smk Insan Aqilah 4', 'Peluncuran  website resmi Smk Insan Aqilah 4, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orang tua, dan masyarakat pada umumnya semakin meningkat.', '2019-02-27 12:30:26', 'Raditya Damaris'),
(7, 'USBN XII', 'Smk Insan Aqilah 4 akan mengikuti USBN kelas XII pada tanggal 4 - 15, dan di beritahukan kepada siswa kelas X dan XI akan di liburkan sementara saat USBN, Terima Kasih', '2019-03-03 14:39:59', 'Raditya Damaris'),
(8, 'Libur Awal Puasa 1 Ramadhan 1440 H', 'Diberitahukan kepada siswa & siswi bahwa tanggal 6 - 7 Mei 2019 kegiatan KBM diliburkan, para siswa & siswi belajar dirumah masing-masing. ', '2019-05-03 09:53:55', 'Ali Yasin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(931, '2019-01-23 12:29:11', '::1', 'Chrome'),
(932, '2019-01-23 15:21:55', '120.188.64.201', 'Chrome'),
(933, '2019-01-23 15:36:11', '66.249.84.218', 'Chrome'),
(934, '2019-01-23 15:36:13', '66.249.84.216', 'Chrome'),
(935, '2019-01-23 15:36:17', '66.249.84.220', 'Chrome'),
(936, '2019-01-23 15:48:51', '64.233.173.132', 'Chrome'),
(937, '2019-01-23 15:49:13', '64.233.173.128', 'Chrome'),
(938, '2019-01-23 16:37:49', '64.233.172.134', 'Chrome'),
(939, '2019-01-23 16:37:53', '64.233.172.130', 'Chrome'),
(940, '2019-01-23 19:01:45', '64.233.173.132', 'Chrome'),
(941, '2019-01-23 23:53:40', '120.188.64.201', 'Chrome'),
(942, '2019-01-24 01:56:11', '171.67.70.56', 'Mozilla'),
(943, '2019-01-24 02:14:50', '36.88.45.91', 'Chrome'),
(944, '2019-01-24 02:16:37', '171.67.70.61', 'Mozilla'),
(945, '2019-01-24 03:20:28', '64.233.173.130', 'Chrome'),
(946, '2019-01-24 03:21:16', '64.233.173.128', 'Chrome'),
(947, '2019-01-24 04:50:32', '119.47.88.182', 'Chrome'),
(948, '2019-01-24 06:25:27', '120.188.65.178', 'Chrome'),
(949, '2019-01-24 09:08:43', '125.161.140.94', 'Chrome'),
(950, '2019-01-25 11:57:38', '125.161.140.94', 'Chrome'),
(951, '2019-01-25 13:03:00', '120.188.65.178', 'Chrome'),
(952, '2019-01-25 13:58:44', '209.17.97.10', 'Mozilla'),
(953, '2019-01-25 15:17:01', '120.188.65.119', 'Chrome'),
(954, '2019-01-28 02:44:10', '114.4.79.200', 'Chrome'),
(955, '2019-01-28 06:26:00', '114.5.145.137', 'Chrome'),
(956, '2019-01-28 06:26:51', '125.161.140.94', 'Chrome'),
(957, '2019-01-28 10:49:10', '64.233.173.130', 'Chrome'),
(958, '2019-01-28 10:49:49', '64.233.173.128', 'Chrome'),
(959, '2019-01-28 10:51:06', '64.233.173.132', 'Chrome'),
(960, '2019-01-29 01:28:25', '64.233.173.130', 'Chrome'),
(961, '2019-01-29 02:14:50', '36.88.45.91', 'Chrome'),
(962, '2019-01-29 02:50:14', '64.233.173.132', 'Chrome'),
(963, '2019-01-29 07:31:59', '125.161.131.195', 'Chrome'),
(964, '2019-01-29 08:49:32', '120.188.66.45', 'Chrome'),
(965, '2019-01-29 09:45:32', '64.233.173.128', 'Chrome'),
(966, '2019-01-30 01:03:44', '125.161.131.195', 'Chrome'),
(967, '2019-01-30 01:09:06', '209.17.97.10', 'Mozilla'),
(968, '2019-01-30 02:41:00', '36.70.69.115', 'Chrome'),
(969, '2019-01-30 08:50:47', '114.4.82.97', 'Chrome'),
(970, '2019-01-30 12:38:46', '60.191.38.77', 'Firefox'),
(971, '2019-01-30 12:48:09', '125.161.131.153', 'Chrome'),
(972, '2019-01-30 12:56:22', '64.233.173.128', 'Chrome'),
(973, '2019-01-30 13:44:07', '64.233.173.130', 'Chrome'),
(974, '2019-01-30 14:04:40', '120.188.92.7', 'Chrome'),
(975, '2019-01-31 04:41:00', '114.4.79.221', 'Chrome'),
(976, '2019-01-31 05:51:48', '64.233.173.147', 'Chrome'),
(977, '2019-01-31 07:43:10', '64.233.173.145', 'Chrome'),
(978, '2019-01-31 15:46:19', '34.239.133.204', 'Chrome'),
(979, '2019-01-31 15:46:22', '3.94.109.128', 'Chrome'),
(980, '2019-01-31 15:46:22', '52.87.231.40', 'Chrome'),
(981, '2019-01-31 15:47:48', '54.224.203.202', 'Safari'),
(982, '2019-01-31 15:52:30', '54.208.201.249', 'Other'),
(983, '2019-01-31 15:53:45', '66.249.84.192', 'Chrome'),
(984, '2019-01-31 15:53:46', '66.249.84.194', 'Chrome'),
(985, '2019-01-31 15:53:51', '66.249.84.223', 'Chrome'),
(986, '2019-01-31 16:55:24', '64.233.172.142', 'Chrome'),
(987, '2019-01-31 16:55:33', '64.233.172.140', 'Chrome'),
(988, '2019-01-31 17:05:02', '114.4.79.221', 'Chrome'),
(989, '2019-02-01 00:43:35', '125.166.112.46', 'Chrome'),
(990, '2019-02-01 02:14:32', '110.136.46.87', 'Chrome'),
(991, '2019-02-01 03:17:09', '171.67.70.41', 'Mozilla'),
(992, '2019-02-01 04:33:32', '54.209.60.63', 'Safari'),
(993, '2019-02-01 04:33:33', '52.71.155.178', 'Safari'),
(994, '2019-02-01 04:33:44', '54.86.66.252', 'Safari'),
(995, '2019-02-01 20:22:54', '171.67.70.42', 'Mozilla'),
(996, '2019-02-02 13:44:47', '120.188.95.129', 'Chrome'),
(997, '2019-02-02 18:36:52', '120.188.95.129', 'Chrome'),
(998, '2019-02-03 12:02:45', '125.166.112.46', 'Chrome'),
(999, '2019-02-04 00:01:11', '114.5.147.112', 'Chrome'),
(1000, '2019-02-04 01:37:39', '112.215.170.204', 'Chrome'),
(1001, '2019-02-04 01:51:19', '114.4.214.136', 'Chrome'),
(1002, '2019-02-04 03:44:07', '36.78.81.1', 'Chrome'),
(1003, '2019-02-04 06:39:55', '120.188.7.228', 'Chrome'),
(1004, '2019-02-04 06:40:19', '110.136.46.87', 'Chrome'),
(1005, '2019-02-04 06:44:37', '120.188.4.73', 'Chrome'),
(1006, '2019-02-04 06:46:30', '120.188.87.68', 'Chrome'),
(1007, '2019-02-04 06:56:01', '140.213.37.20', 'Chrome'),
(1008, '2019-02-04 07:02:17', '114.124.240.186', 'Chrome'),
(1009, '2019-02-04 07:02:59', '116.206.28.25', 'Chrome'),
(1010, '2019-02-04 07:03:23', '114.124.198.13', 'Chrome'),
(1011, '2019-02-04 07:21:28', '120.188.38.31', 'Chrome'),
(1012, '2019-02-04 07:24:22', '101.91.60.107', 'Safari'),
(1013, '2019-02-04 07:24:48', '61.151.178.236', 'Safari'),
(1014, '2019-02-04 07:25:02', '61.151.178.197', 'Safari'),
(1015, '2019-02-04 07:25:14', '61.129.6.251', 'Safari'),
(1016, '2019-02-04 07:25:26', '61.151.178.165', 'Safari'),
(1017, '2019-02-04 07:29:04', '61.129.6.174', 'Safari'),
(1018, '2019-02-04 07:29:22', '114.124.164.231', 'Chrome'),
(1019, '2019-02-04 08:50:25', '114.124.230.172', 'Chrome'),
(1020, '2019-02-04 10:23:09', '141.0.12.166', 'Opera'),
(1021, '2019-02-04 10:47:04', '125.166.112.46', 'Chrome'),
(1022, '2019-02-04 11:01:24', '120.188.36.238', 'Chrome'),
(1023, '2019-02-04 12:33:42', '114.124.231.44', 'Chrome'),
(1024, '2019-02-04 19:25:05', '3.87.82.213', 'Chrome'),
(1025, '2019-02-04 23:32:06', '159.203.163.107', 'Mozilla'),
(1026, '2019-02-05 00:33:39', '125.166.112.46', 'Chrome'),
(1027, '2019-02-05 11:04:21', '120.188.66.140', 'Chrome'),
(1028, '2019-02-05 13:25:24', '37.9.87.209', 'YandexBot'),
(1029, '2019-02-06 00:00:20', '114.4.214.57', 'Chrome'),
(1030, '2019-02-06 03:30:38', '110.136.46.87', 'Chrome'),
(1031, '2019-02-06 05:18:09', '114.124.139.188', 'Chrome'),
(1032, '2019-02-06 05:24:30', '114.124.237.249', 'Chrome'),
(1033, '2019-02-06 06:10:12', '114.124.136.29', 'Chrome'),
(1034, '2019-02-06 07:29:54', '120.188.6.121', 'Chrome'),
(1035, '2019-02-06 08:40:39', '114.5.144.51', 'Chrome'),
(1036, '2019-02-06 12:38:12', '37.9.87.209', 'YandexBot'),
(1037, '2019-02-06 12:46:20', '202.80.216.229', 'Chrome'),
(1038, '2019-02-06 22:54:12', '114.5.146.248', 'Chrome'),
(1039, '2019-02-07 05:54:14', '100.43.81.116', 'YandexBot'),
(1040, '2019-02-07 09:20:54', '37.9.87.209', 'YandexBot'),
(1041, '2019-02-08 01:46:09', '125.161.128.48', 'Chrome'),
(1042, '2019-02-08 05:43:59', '37.9.87.209', 'YandexBot'),
(1043, '2019-02-08 05:54:39', '100.43.81.116', 'YandexBot'),
(1044, '2019-02-08 14:39:04', '120.188.94.75', 'Chrome'),
(1045, '2019-02-08 15:30:03', '114.4.83.128', 'Chrome'),
(1046, '2019-02-08 15:48:48', '37.146.193.228', 'Internet Explorer'),
(1047, '2019-02-09 10:19:37', '37.9.87.209', 'YandexBot'),
(1048, '2019-02-09 18:38:56', '37.9.87.135', 'YandexBot'),
(1049, '2019-02-10 13:21:19', '140.213.39.189', 'Chrome'),
(1050, '2019-02-11 03:27:31', '128.69.166.70', 'Internet Explorer'),
(1051, '2019-02-11 04:47:43', '37.9.87.197', 'YandexBot'),
(1052, '2019-02-11 06:10:03', '37.9.87.209', 'YandexBot'),
(1053, '2019-02-11 06:19:02', '114.124.151.49', 'Chrome'),
(1054, '2019-02-11 12:43:41', '100.43.81.116', 'YandexBot'),
(1055, '2019-02-11 14:24:00', '180.251.235.155', 'Chrome'),
(1056, '2019-02-11 23:57:13', '120.188.93.191', 'Chrome'),
(1057, '2019-02-12 03:13:25', '120.188.33.153', 'Chrome'),
(1058, '2019-02-12 04:30:30', '125.161.129.71', 'Chrome'),
(1059, '2019-02-12 05:13:09', '114.124.196.80', 'Chrome'),
(1060, '2019-02-12 08:56:54', '180.251.235.155', 'Chrome'),
(1061, '2019-02-12 08:59:12', '37.9.87.209', 'YandexBot'),
(1062, '2019-02-12 10:14:38', '116.206.35.13', 'Chrome'),
(1063, '2019-02-12 12:43:37', '37.9.87.130', 'YandexBot'),
(1064, '2019-02-12 12:56:51', '37.9.87.208', 'YandexBot'),
(1065, '2019-02-13 03:17:19', '125.161.129.71', 'Chrome'),
(1066, '2019-02-13 04:52:45', '209.17.96.202', 'Mozilla'),
(1067, '2019-02-13 11:07:05', '120.188.95.238', 'Chrome'),
(1068, '2019-02-13 15:12:47', '37.9.87.209', 'YandexBot'),
(1069, '2019-02-13 17:53:43', '100.43.81.116', 'YandexBot'),
(1070, '2019-02-13 19:49:10', '37.9.87.209', 'YandexBot'),
(1071, '2019-02-14 08:27:16', '5.255.250.139', 'YandexBot'),
(1072, '2019-02-14 19:40:58', '209.17.96.194', 'Mozilla'),
(1073, '2019-02-15 03:01:51', '125.161.129.71', 'Chrome'),
(1074, '2019-02-16 10:27:09', '180.243.117.251', 'Chrome'),
(1075, '2019-02-17 07:43:21', '188.255.63.235', 'Internet Explorer'),
(1076, '2019-02-17 22:57:16', '46.188.31.117', 'Internet Explorer'),
(1077, '2019-02-18 07:59:45', '120.188.35.136', 'Chrome'),
(1078, '2019-02-19 01:12:13', '125.161.130.59', 'Chrome'),
(1079, '2019-02-19 01:15:27', '114.4.79.185', 'Chrome'),
(1080, '2019-02-19 02:22:34', '36.84.242.158', 'Chrome'),
(1081, '2019-02-19 06:33:47', '37.9.87.209', 'YandexBot'),
(1082, '2019-02-20 00:46:14', '5.255.250.139', 'YandexBot'),
(1083, '2019-02-20 00:57:10', '125.161.130.59', 'Chrome'),
(1084, '2019-02-20 01:23:15', '93.158.161.25', 'YandexBot'),
(1085, '2019-02-20 01:50:12', '114.4.79.185', 'Chrome'),
(1086, '2019-02-21 04:46:58', '100.43.85.167', 'YandexBot'),
(1087, '2019-02-21 04:55:54', '100.43.81.126', 'YandexBot'),
(1088, '2019-02-21 13:27:35', '37.9.87.197', 'YandexBot'),
(1089, '2019-02-21 13:53:45', '5.255.250.88', 'YandexBot'),
(1090, '2019-02-21 17:59:22', '114.4.79.185', 'Chrome'),
(1091, '2019-02-21 22:40:23', '100.43.81.116', 'YandexBot'),
(1092, '2019-02-22 06:27:10', '180.243.5.98', 'Internet Explorer'),
(1093, '2019-02-22 07:47:20', '37.9.87.209', 'YandexBot'),
(1094, '2019-02-25 05:22:19', '125.160.213.125', 'Chrome'),
(1095, '2019-02-25 05:27:22', '37.9.87.209', 'YandexBot'),
(1096, '2019-02-25 07:11:04', '114.4.213.85', 'Chrome'),
(1097, '2019-02-25 19:13:54', '209.17.96.18', 'Mozilla'),
(1098, '2019-02-26 04:35:20', '180.243.5.98', 'Chrome'),
(1099, '2019-02-26 05:25:16', '36.88.33.197', 'Chrome'),
(1100, '2019-02-26 06:36:25', '180.243.114.162', 'Chrome'),
(1101, '2019-02-26 07:30:05', '115.178.222.12', 'Chrome'),
(1102, '2019-02-26 07:31:11', '101.91.60.106', 'Safari'),
(1103, '2019-02-26 09:56:43', '120.188.39.200', 'Chrome'),
(1104, '2019-02-27 01:25:36', '37.9.87.209', 'YandexBot'),
(1105, '2019-02-27 02:55:14', '182.0.145.71', 'Chrome'),
(1106, '2019-02-27 03:32:27', '36.88.33.197', 'Chrome'),
(1107, '2019-02-27 03:46:26', '::1', 'Chrome'),
(1108, '2019-02-27 06:59:14', '120.188.37.73', 'Chrome'),
(1109, '2019-02-27 08:07:34', '114.124.199.37', 'Chrome'),
(1110, '2019-02-27 09:07:20', '147.92.137.141', 'Other'),
(1111, '2019-02-27 09:07:21', '147.92.137.147', 'Other'),
(1112, '2019-02-27 09:08:09', '103.78.98.115', 'Chrome'),
(1113, '2019-02-27 09:37:24', '120.188.67.42', 'Chrome'),
(1114, '2019-02-27 09:40:58', '116.206.35.16', 'Chrome'),
(1115, '2019-02-27 09:44:32', '36.77.230.45', 'Chrome'),
(1116, '2019-02-27 11:31:26', '180.214.232.81', 'Chrome'),
(1117, '2019-02-27 12:00:30', '61.247.42.250', 'Chrome'),
(1118, '2019-02-27 12:30:32', '180.243.114.162', 'Chrome'),
(1119, '2019-02-27 13:14:25', '120.188.35.6', 'Chrome'),
(1120, '2019-02-27 20:22:27', '103.253.214.20', 'Other'),
(1121, '2019-02-27 23:44:01', '202.67.42.4', 'Chrome'),
(1122, '2019-02-28 02:39:18', '114.5.146.0', 'Chrome'),
(1123, '2019-02-28 07:32:27', '157.185.130.234', 'Firefox'),
(1124, '2019-02-28 13:19:45', '157.185.131.8', 'Firefox'),
(1125, '2019-02-28 20:27:10', '103.253.214.20', 'Other'),
(1126, '2019-03-01 00:42:25', '3.90.149.107', 'Other'),
(1127, '2019-03-01 10:35:10', '180.251.196.119', 'Chrome'),
(1128, '2019-03-01 10:41:23', '54.242.246.38', 'Chrome'),
(1129, '2019-03-01 10:47:29', '64.58.225.115', 'Other'),
(1130, '2019-03-01 10:48:14', '64.58.225.116', 'Other'),
(1131, '2019-03-01 20:23:48', '103.253.214.20', 'Other'),
(1132, '2019-03-02 19:16:57', '114.5.208.245', 'Chrome'),
(1133, '2019-03-02 20:20:01', '103.253.214.20', 'Other'),
(1134, '2019-03-03 14:27:08', '147.92.137.177', 'Other'),
(1135, '2019-03-03 14:27:10', '147.92.137.140', 'Other'),
(1136, '2019-03-03 14:40:06', '125.161.131.190', 'Chrome'),
(1137, '2019-03-03 14:50:20', '114.5.146.240', 'Chrome'),
(1138, '2019-03-03 20:21:39', '103.253.214.20', 'Other'),
(1139, '2019-03-04 13:38:51', '18.231.8.233', 'Chrome'),
(1140, '2019-03-05 20:31:10', '103.253.214.20', 'Other'),
(1141, '2019-03-06 03:45:40', '114.4.212.101', 'Chrome'),
(1142, '2019-03-06 05:24:16', '180.251.196.119', 'Chrome'),
(1143, '2019-03-06 20:21:25', '103.253.214.20', 'Other'),
(1144, '2019-03-07 10:35:06', '120.188.7.241', 'Chrome'),
(1145, '2019-03-07 14:18:11', '147.92.137.143', 'Other'),
(1146, '2019-03-07 14:18:12', '147.92.137.162', 'Other'),
(1147, '2019-03-07 17:34:02', '120.188.94.211', 'Chrome'),
(1148, '2019-03-07 19:53:28', '120.188.39.79', 'Chrome'),
(1149, '2019-03-07 20:19:08', '103.253.214.20', 'Other'),
(1150, '2019-03-08 00:46:34', '115.178.194.254', 'Chrome'),
(1151, '2019-03-08 16:50:08', '120.188.39.250', 'Chrome'),
(1152, '2019-03-08 20:20:53', '103.253.214.20', 'Other'),
(1153, '2019-03-09 02:23:08', '120.188.39.250', 'Chrome'),
(1154, '2019-03-09 08:22:51', '103.248.217.6', 'Chrome'),
(1155, '2019-03-09 20:14:37', '103.253.214.20', 'Other'),
(1156, '2019-03-10 08:31:45', '120.188.95.102', 'Chrome'),
(1157, '2019-03-10 16:06:47', '114.4.78.24', 'Chrome'),
(1158, '2019-03-10 18:20:55', '114.4.78.24', 'Chrome'),
(1159, '2019-03-10 19:20:46', '71.114.67.62', 'Internet Explorer'),
(1160, '2019-03-10 20:17:08', '103.253.214.20', 'Other'),
(1161, '2019-03-11 08:30:44', '147.92.137.130', 'Other'),
(1162, '2019-03-11 08:30:45', '147.92.137.179', 'Other'),
(1163, '2019-03-11 20:11:05', '103.253.214.20', 'Other'),
(1164, '2019-03-12 05:16:34', '125.161.131.233', 'Chrome'),
(1165, '2019-03-12 07:52:29', '125.161.128.112', 'Chrome'),
(1166, '2019-03-12 14:33:37', '209.17.97.10', 'Mozilla'),
(1167, '2019-03-12 20:18:12', '209.17.97.42', 'Mozilla'),
(1168, '2019-03-12 20:19:45', '103.253.214.20', 'Other'),
(1169, '2019-03-13 01:17:11', '125.161.128.112', 'Chrome'),
(1170, '2019-03-13 04:43:59', '125.161.131.233', 'Chrome'),
(1171, '2019-03-13 04:50:54', '114.4.212.164', 'Chrome'),
(1172, '2019-03-13 04:51:14', '114.124.149.174', 'Chrome'),
(1173, '2019-03-13 04:56:02', '120.188.66.112', 'Chrome'),
(1174, '2019-03-13 20:21:03', '103.253.214.20', 'Other'),
(1175, '2019-03-14 20:22:37', '103.253.214.20', 'Other'),
(1176, '2019-03-15 07:04:31', '209.17.97.82', 'Mozilla'),
(1177, '2019-03-15 14:08:34', '125.161.128.112', 'Chrome'),
(1178, '2019-03-15 20:20:41', '103.253.214.20', 'Other'),
(1179, '2019-03-15 23:44:06', '209.17.96.66', 'Mozilla'),
(1180, '2019-03-16 05:50:25', '147.92.137.179', 'Other'),
(1181, '2019-03-16 05:50:27', '147.92.137.145', 'Other'),
(1182, '2019-03-16 06:56:05', '120.188.95.100', 'Chrome'),
(1183, '2019-03-16 06:59:15', '114.5.208.94', 'Other'),
(1184, '2019-03-16 20:21:39', '103.253.214.20', 'Other'),
(1185, '2019-03-17 12:17:54', '120.188.95.100', 'Chrome'),
(1186, '2019-03-17 20:19:43', '103.253.214.20', 'Other'),
(1187, '2019-03-18 03:13:36', '120.188.95.100', 'Chrome'),
(1188, '2019-03-18 08:11:56', '125.165.75.187', 'Chrome'),
(1189, '2019-03-18 08:17:50', '182.0.139.155', 'Chrome'),
(1190, '2019-03-18 08:30:16', '182.0.179.237', 'Chrome'),
(1191, '2019-03-18 17:48:12', '209.17.97.26', 'Mozilla'),
(1192, '2019-03-18 20:18:05', '103.253.214.20', 'Other'),
(1193, '2019-03-18 21:20:32', '209.17.97.106', 'Mozilla'),
(1194, '2019-03-19 05:35:39', '180.251.208.168', 'Chrome'),
(1195, '2019-03-19 05:53:03', '66.220.149.5', 'Other'),
(1196, '2019-03-19 05:53:04', '66.220.149.26', 'Other'),
(1197, '2019-03-19 05:53:14', '173.252.79.4', 'Other'),
(1198, '2019-03-19 05:53:18', '31.13.115.6', 'Safari'),
(1199, '2019-03-19 05:53:18', '173.252.95.11', 'Chrome'),
(1200, '2019-03-19 05:53:19', '31.13.115.4', 'Chrome'),
(1201, '2019-03-19 05:53:55', '31.13.127.8', 'Chrome'),
(1202, '2019-03-19 10:04:14', '66.220.149.4', 'Other'),
(1203, '2019-03-19 10:04:32', '173.252.127.35', 'Safari'),
(1204, '2019-03-19 13:54:27', '222.124.53.225', 'Chrome'),
(1205, '2019-03-19 14:50:53', '147.92.137.154', 'Other'),
(1206, '2019-03-19 14:50:54', '147.92.137.148', 'Other'),
(1207, '2019-03-19 18:47:57', '66.220.149.15', 'Other'),
(1208, '2019-03-19 18:48:06', '66.220.149.32', 'Other'),
(1209, '2019-03-19 22:32:03', '66.220.149.4', 'Other'),
(1210, '2019-03-19 22:32:03', '66.220.149.20', 'Other'),
(1211, '2019-03-20 07:52:43', '180.251.208.168', 'Chrome'),
(1212, '2019-03-20 16:43:10', '173.252.95.12', 'Other'),
(1213, '2019-03-20 16:43:17', '173.252.95.7', 'Other'),
(1214, '2019-03-20 20:34:49', '103.253.214.20', 'Other'),
(1215, '2019-03-21 02:19:30', '120.188.67.55', 'Chrome'),
(1216, '2019-03-21 12:01:04', '178.128.86.187', 'Chrome'),
(1217, '2019-03-21 20:55:32', '103.253.214.20', 'Other'),
(1218, '2019-03-22 03:16:41', '66.220.149.19', 'Other'),
(1219, '2019-03-22 08:34:58', '36.71.143.226', 'Chrome'),
(1220, '2019-03-22 16:09:18', '103.253.214.10', 'Other'),
(1221, '2019-03-22 16:31:32', '66.249.84.26', 'Chrome'),
(1222, '2019-03-22 16:31:32', '66.249.84.30', 'Chrome'),
(1223, '2019-03-22 16:37:52', '114.4.213.106', 'Chrome'),
(1224, '2019-03-22 17:32:20', '64.233.172.222', 'Chrome'),
(1225, '2019-03-22 19:19:56', '114.4.213.106', 'Chrome'),
(1226, '2019-03-22 19:58:34', '103.253.214.10', 'Other'),
(1227, '2019-03-22 20:22:58', '103.253.214.20', 'Other'),
(1228, '2019-03-22 21:14:13', '208.167.252.235', 'Other'),
(1229, '2019-03-22 21:17:14', '54.250.168.253', 'Chrome'),
(1230, '2019-03-22 22:17:11', '66.220.149.38', 'Other'),
(1231, '2019-03-22 22:17:11', '66.220.149.22', 'Other'),
(1232, '2019-03-22 22:17:30', '66.220.149.20', 'Safari'),
(1233, '2019-03-23 02:11:11', '209.17.97.90', 'Mozilla'),
(1234, '2019-03-23 08:55:11', '66.220.149.3', 'Other'),
(1235, '2019-03-23 10:56:46', '66.220.149.12', 'Other'),
(1236, '2019-03-23 16:14:33', '209.17.96.18', 'Mozilla'),
(1237, '2019-03-23 20:33:33', '103.253.214.20', 'Other'),
(1238, '2019-03-24 07:15:09', '103.253.214.10', 'Other'),
(1239, '2019-03-24 07:18:28', '114.4.213.106', 'Chrome'),
(1240, '2019-03-24 07:36:36', '36.71.143.226', 'Chrome'),
(1241, '2019-03-24 11:42:47', '125.161.130.27', 'Chrome'),
(1242, '2019-03-24 13:35:14', '66.220.149.25', 'Other'),
(1243, '2019-03-24 20:21:56', '103.253.214.20', 'Other'),
(1244, '2019-03-25 03:14:22', '66.220.149.9', 'Other'),
(1245, '2019-03-25 20:28:35', '103.253.214.20', 'Other'),
(1246, '2019-03-26 10:07:13', '66.220.149.38', 'Other'),
(1247, '2019-03-26 10:07:22', '66.220.149.31', 'Other'),
(1248, '2019-03-26 16:32:36', '103.253.214.10', 'Other'),
(1249, '2019-03-26 16:58:13', '209.17.97.122', 'Mozilla'),
(1250, '2019-03-26 20:26:19', '103.253.214.20', 'Other'),
(1251, '2019-03-27 01:25:49', '110.136.63.73', 'Chrome'),
(1252, '2019-03-27 03:32:07', '209.17.96.34', 'Mozilla'),
(1253, '2019-03-28 13:28:49', '125.161.204.68', 'Chrome'),
(1254, '2019-03-28 20:23:42', '103.253.214.20', 'Other'),
(1255, '2019-03-29 01:18:09', '209.17.96.226', 'Mozilla'),
(1256, '2019-03-29 01:54:00', '66.220.149.25', 'Other'),
(1257, '2019-03-29 01:54:01', '66.220.149.18', 'Other'),
(1258, '2019-03-29 12:25:24', '125.161.204.68', 'Chrome'),
(1259, '2019-03-29 20:26:05', '103.253.214.20', 'Other'),
(1260, '2019-03-30 20:18:45', '103.253.214.20', 'Other'),
(1261, '2019-03-31 05:54:16', '125.161.204.68', 'Chrome'),
(1262, '2019-03-31 20:20:40', '103.253.214.20', 'Other'),
(1263, '2019-04-01 03:45:34', '61.5.22.95', 'Chrome'),
(1264, '2019-04-01 03:53:20', '125.160.105.66', 'Chrome'),
(1265, '2019-04-01 08:59:08', '103.253.214.10', 'Other'),
(1266, '2019-04-05 15:46:58', '::1', 'Chrome'),
(1267, '2019-04-05 17:04:06', '::1', 'Chrome'),
(1268, '2019-04-06 08:11:28', '36.70.142.185', 'Chrome'),
(1269, '2019-04-06 08:15:36', '114.5.212.245', 'Chrome'),
(1270, '2019-04-06 08:29:24', '103.253.214.10', 'Other'),
(1271, '2019-04-06 10:00:29', '114.4.212.68', 'Chrome'),
(1272, '2019-04-06 10:02:04', '147.92.137.173', 'Other'),
(1273, '2019-04-06 10:02:05', '147.92.137.169', 'Other'),
(1274, '2019-04-06 10:08:49', '182.253.245.126', 'Chrome'),
(1275, '2019-04-06 12:26:10', '66.249.84.97', 'Chrome'),
(1276, '2019-04-06 12:26:43', '66.249.84.100', 'Chrome'),
(1277, '2019-04-06 13:02:28', '66.249.84.103', 'Chrome'),
(1278, '2019-04-06 13:27:54', '64.233.172.218', 'Chrome'),
(1279, '2019-04-06 13:28:29', '64.233.172.220', 'Chrome'),
(1280, '2019-04-06 14:04:25', '66.249.81.62', 'Chrome'),
(1281, '2019-04-06 14:40:13', '66.249.81.60', 'Chrome'),
(1282, '2019-04-06 16:25:41', '66.102.9.5', 'Chrome'),
(1283, '2019-04-06 16:26:39', '66.249.81.58', 'Chrome'),
(1284, '2019-04-06 17:05:07', '114.4.212.68', 'Chrome'),
(1285, '2019-04-06 20:03:29', '51.15.76.110', 'Firefox'),
(1286, '2019-04-06 20:21:00', '103.253.214.20', 'Other'),
(1287, '2019-04-07 20:22:37', '103.253.214.20', 'Other'),
(1288, '2019-04-07 22:55:20', '147.92.137.182', 'Other'),
(1289, '2019-04-07 22:55:21', '147.92.137.133', 'Other'),
(1290, '2019-04-08 02:23:03', '180.252.225.182', 'Chrome'),
(1291, '2019-04-08 02:30:11', '103.253.214.10', 'Other'),
(1292, '2019-04-08 20:05:44', '66.220.149.18', 'Other'),
(1293, '2019-04-08 20:05:51', '66.220.149.23', 'Other'),
(1294, '2019-04-08 20:06:01', '66.220.149.9', 'Other'),
(1295, '2019-04-08 20:24:45', '103.253.214.20', 'Other'),
(1296, '2019-04-09 14:59:15', '66.249.71.14', 'Googlebot'),
(1297, '2019-04-09 15:58:07', '209.17.96.210', 'Mozilla'),
(1298, '2019-04-09 18:12:19', '114.5.212.41', 'Chrome'),
(1299, '2019-04-10 04:53:30', '36.70.142.185', 'Chrome'),
(1300, '2019-04-10 14:11:07', '114.4.212.144', 'Chrome'),
(1301, '2019-04-10 14:46:12', '66.249.79.168', 'Googlebot'),
(1302, '2019-04-10 14:54:33', '66.249.79.162', 'Googlebot'),
(1303, '2019-04-10 15:17:04', '103.253.214.10', 'Other'),
(1304, '2019-04-10 20:30:30', '103.253.214.20', 'Other'),
(1305, '2019-04-11 04:36:10', '36.70.142.185', 'Chrome'),
(1306, '2019-04-11 20:20:47', '103.253.214.20', 'Other'),
(1307, '2019-04-12 02:33:34', '147.92.137.131', 'Other'),
(1308, '2019-04-12 02:33:35', '147.92.137.161', 'Other'),
(1309, '2019-04-12 03:49:19', '120.188.93.95', 'Chrome'),
(1310, '2019-04-13 04:06:13', '66.249.79.165', 'Googlebot'),
(1311, '2019-04-13 04:54:03', '66.249.79.162', 'Googlebot'),
(1312, '2019-04-13 18:25:56', '66.249.79.168', 'Googlebot'),
(1313, '2019-04-13 20:21:14', '103.253.214.20', 'Other'),
(1314, '2019-04-14 14:25:48', '66.220.149.1', 'Other'),
(1315, '2019-04-14 14:58:17', '66.249.79.165', 'Googlebot'),
(1316, '2019-04-14 18:20:29', '120.188.64.86', 'Chrome'),
(1317, '2019-04-14 20:22:33', '103.253.214.20', 'Other'),
(1318, '2019-04-15 07:19:58', '120.188.64.56', 'Chrome'),
(1319, '2019-04-15 08:06:37', '120.188.64.235', 'Chrome'),
(1320, '2019-04-15 16:42:34', '103.253.214.10', 'Other'),
(1321, '2019-04-15 17:17:52', '162.158.67.71', 'Other'),
(1322, '2019-04-15 17:19:58', '103.253.214.10', 'Other'),
(1323, '2019-04-15 17:24:54', '120.188.64.235', 'Chrome'),
(1324, '2019-04-15 17:34:31', '108.162.245.20', 'Chrome'),
(1325, '2019-04-15 17:39:32', '162.158.107.95', 'Chrome'),
(1326, '2019-04-15 17:48:33', '162.158.107.119', 'Chrome'),
(1327, '2019-04-15 17:49:21', '108.162.245.14', 'Chrome'),
(1328, '2019-04-15 17:52:01', '108.162.245.86', 'Chrome'),
(1329, '2019-04-15 18:00:13', '108.162.246.159', 'Chrome'),
(1330, '2019-04-15 18:28:17', '162.158.107.71', 'Chrome'),
(1331, '2019-04-15 18:38:26', '162.158.88.126', 'Chrome'),
(1332, '2019-04-15 19:01:51', '141.101.104.225', 'Chrome'),
(1333, '2019-04-15 20:57:41', '162.158.167.250', 'Chrome'),
(1334, '2019-04-16 05:51:10', '172.68.146.48', 'Chrome'),
(1335, '2019-04-16 06:01:48', '172.69.134.67', 'Chrome'),
(1336, '2019-04-16 06:02:12', '172.68.146.60', 'Chrome'),
(1337, '2019-04-16 06:26:56', '172.68.144.65', 'Chrome'),
(1338, '2019-04-16 07:39:42', '162.158.165.172', 'Chrome'),
(1339, '2019-04-16 07:57:28', '108.162.245.62', 'Mozilla'),
(1340, '2019-04-16 08:11:42', '172.69.135.116', 'Chrome'),
(1341, '2019-04-18 12:31:12', '120.188.5.6', 'Chrome'),
(1342, '2019-04-18 12:56:10', '162.158.167.238', 'Chrome'),
(1343, '2019-04-18 13:50:46', '172.69.135.170', 'Chrome'),
(1344, '2019-04-18 14:48:50', '172.69.134.67', 'Chrome'),
(1345, '2019-04-18 14:53:01', '172.69.134.25', 'Chrome'),
(1346, '2019-04-18 15:09:08', '66.249.83.206', 'Other'),
(1347, '2019-04-18 15:13:17', '66.102.6.58', 'Other'),
(1348, '2019-04-18 15:19:07', '66.249.66.140', 'Googlebot'),
(1349, '2019-04-18 15:22:56', '141.0.12.198', 'Opera'),
(1350, '2019-04-18 15:24:51', '66.249.66.144', 'Googlebot'),
(1351, '2019-04-18 15:26:10', '66.249.66.142', 'Googlebot'),
(1352, '2019-04-18 17:02:07', '120.188.5.6', 'Chrome'),
(1353, '2019-04-18 17:28:06', '103.253.214.10', 'Other'),
(1354, '2019-04-18 18:30:12', '66.249.66.140', 'Googlebot'),
(1355, '2019-04-18 18:30:19', '66.249.66.142', 'Googlebot'),
(1356, '2019-04-18 18:33:04', '66.249.66.144', 'Googlebot'),
(1357, '2019-04-19 11:55:07', '114.5.214.51', 'Chrome'),
(1358, '2019-04-19 13:05:10', '114.5.213.73', 'Chrome'),
(1359, '2019-04-19 20:26:30', '103.253.214.20', 'Other'),
(1360, '2019-04-20 06:22:43', '114.4.212.133', 'Chrome'),
(1361, '2019-04-20 07:39:51', '46.160.110.146', 'Firefox'),
(1362, '2019-04-20 08:16:16', '69.171.251.35', 'Other'),
(1363, '2019-04-20 20:26:46', '103.253.214.20', 'Other'),
(1364, '2019-04-21 00:51:54', '66.220.149.8', 'Other'),
(1365, '2019-04-21 02:08:16', '103.247.10.137', 'Firefox'),
(1366, '2019-04-21 12:23:44', '103.253.214.10', 'Other'),
(1367, '2019-04-21 16:54:49', '66.249.84.100', 'Mozilla'),
(1368, '2019-04-21 16:55:35', '66.102.6.58', 'Chrome'),
(1369, '2019-04-21 16:55:35', '66.102.6.58', 'Chrome'),
(1370, '2019-04-21 21:48:24', '66.249.64.19', 'Googlebot'),
(1371, '2019-04-21 21:58:43', '66.249.64.21', 'Googlebot'),
(1372, '2019-04-22 00:20:06', '66.249.73.92', 'Googlebot'),
(1373, '2019-04-22 03:11:22', '66.249.73.90', 'Googlebot'),
(1374, '2019-04-22 04:24:25', '103.253.214.10', 'Other'),
(1375, '2019-04-22 07:37:18', '114.5.215.105', 'Chrome'),
(1376, '2019-04-22 07:38:18', '66.102.6.58', 'Chrome'),
(1377, '2019-04-22 07:38:19', '66.249.84.100', 'Mozilla'),
(1378, '2019-04-25 12:50:55', '120.188.32.17', 'Chrome'),
(1379, '2019-04-25 16:10:31', '103.253.214.10', 'Other'),
(1380, '2019-04-25 16:14:00', '66.102.6.56', 'Chrome'),
(1381, '2019-04-25 18:25:50', '66.249.84.103', 'Chrome'),
(1382, '2019-04-25 19:26:01', '66.102.6.58', 'Chrome'),
(1383, '2019-04-25 19:27:10', '66.102.9.8', 'Chrome'),
(1384, '2019-04-26 05:50:46', '72.14.199.38', 'AdsBot Google'),
(1385, '2019-04-26 19:11:29', '120.188.7.137', 'Chrome'),
(1386, '2019-04-26 19:16:00', '103.253.214.10', 'Other'),
(1387, '2019-04-27 02:32:06', '66.220.149.25', 'Other'),
(1388, '2019-04-27 12:35:38', '66.249.79.162', 'Googlebot'),
(1389, '2019-04-27 18:47:35', '114.5.217.235', 'Chrome'),
(1390, '2019-04-27 23:30:19', '52.79.110.149', 'Other'),
(1391, '2019-04-28 14:54:28', '103.253.214.10', 'Other'),
(1392, '2019-04-28 14:55:41', '120.188.7.1', 'Chrome'),
(1393, '2019-04-28 14:56:54', '66.102.6.56', 'Chrome'),
(1394, '2019-04-28 17:53:20', '103.253.214.10', 'Other'),
(1395, '2019-04-28 17:57:25', '120.188.7.1', 'Chrome'),
(1396, '2019-04-29 13:08:01', '180.244.48.185', 'Chrome'),
(1397, '2019-04-29 14:01:53', '120.188.5.249', 'Chrome'),
(1398, '2019-04-30 06:44:11', '180.252.18.83', 'Chrome'),
(1399, '2019-04-30 06:46:41', '103.253.214.10', 'Other'),
(1400, '2019-04-30 13:53:49', '66.249.71.14', 'Googlebot'),
(1401, '2019-04-30 16:13:16', '120.188.93.50', 'Chrome'),
(1402, '2019-04-30 17:05:28', '66.249.71.13', 'Googlebot'),
(1403, '2019-04-30 19:45:06', '120.188.93.50', 'Chrome'),
(1404, '2019-05-01 06:28:27', '66.249.73.92', 'Googlebot'),
(1405, '2019-05-01 06:28:40', '66.249.73.90', 'Googlebot'),
(1406, '2019-05-01 06:31:08', '66.249.73.94', 'Googlebot'),
(1407, '2019-05-01 19:28:45', '66.249.73.90', 'Googlebot'),
(1408, '2019-05-02 08:24:41', '66.249.73.92', 'Googlebot'),
(1409, '2019-05-02 13:53:20', '66.102.6.57', 'Chrome'),
(1410, '2019-05-02 13:58:58', '114.4.82.17', 'Chrome'),
(1411, '2019-05-02 16:25:25', '114.5.212.104', 'Chrome'),
(1412, '2019-05-03 05:19:08', '66.249.73.92', 'Googlebot'),
(1413, '2019-05-03 08:52:19', '180.251.207.97', 'Chrome'),
(1414, '2019-05-03 10:09:17', '120.188.35.0', 'Chrome'),
(1415, '2019-05-03 10:14:53', '114.4.213.183', 'Chrome'),
(1416, '2019-05-03 12:04:36', '103.213.131.65', 'Chrome'),
(1417, '2019-05-03 12:44:22', '173.252.127.35', 'Other'),
(1418, '2019-05-03 16:33:00', '66.220.149.42', 'Other'),
(1419, '2019-05-04 06:16:45', '114.4.212.194', 'Chrome'),
(1420, '2019-05-04 08:50:34', '120.188.35.0', 'Chrome'),
(1421, '2019-05-04 15:54:07', '178.128.94.99', 'Chrome'),
(1422, '2019-05-04 17:13:38', '120.188.35.0', 'Chrome'),
(1423, '2019-05-04 17:30:59', '114.5.208.136', 'Chrome'),
(1424, '2019-05-04 17:33:13', '114.4.212.194', 'Chrome'),
(1425, '2019-05-04 20:14:29', '103.253.214.10', 'Other'),
(1426, '2019-05-04 20:28:46', '120.188.34.63', 'Chrome'),
(1427, '2019-05-05 01:42:28', '66.249.73.94', 'Googlebot'),
(1428, '2019-05-05 01:46:39', '62.210.201.91', 'Internet Explorer'),
(1429, '2019-05-05 01:55:31', '66.249.73.90', 'Googlebot'),
(1430, '2019-05-05 07:07:50', '114.4.213.39', 'Chrome'),
(1431, '2019-05-06 13:11:07', '66.249.73.92', 'Googlebot'),
(1432, '2019-05-06 17:05:07', '103.253.214.10', 'Other'),
(1433, '2019-05-06 17:05:08', '114.4.213.41', 'Chrome'),
(1434, '2019-05-06 18:55:51', '66.249.73.92', 'Googlebot'),
(1435, '2019-05-06 19:57:07', '159.203.94.210', 'Mozilla'),
(1436, '2019-05-07 00:02:17', '66.102.6.57', 'Chrome'),
(1437, '2019-05-07 06:19:36', '66.249.71.13', 'Googlebot'),
(1438, '2019-05-07 10:04:49', '66.249.71.14', 'Googlebot'),
(1439, '2019-05-07 18:34:39', '114.4.213.41', 'Chrome'),
(1440, '2019-05-08 03:14:09', '103.253.214.10', 'Other'),
(1441, '2019-05-08 04:31:52', '66.249.73.92', 'Googlebot'),
(1442, '2019-05-08 08:19:19', '110.138.15.22', 'Chrome'),
(1443, '2019-05-08 17:37:54', '35.184.21.172', 'Other'),
(1444, '2019-05-08 18:36:59', '35.224.133.18', 'Other'),
(1445, '2019-05-08 20:32:58', '35.238.240.126', 'Other'),
(1446, '2019-05-08 20:56:02', '35.232.197.153', 'Other'),
(1447, '2019-05-08 21:47:07', '35.226.205.27', 'Other'),
(1448, '2019-05-08 23:24:04', '35.188.147.234', 'Other'),
(1449, '2019-05-09 00:29:54', '35.224.184.231', 'Other'),
(1450, '2019-05-09 02:58:21', '34.66.35.167', 'Other'),
(1451, '2019-05-09 04:17:39', '35.184.91.180', 'Other'),
(1452, '2019-05-09 11:40:40', '66.249.73.90', 'Googlebot'),
(1453, '2019-05-09 11:47:08', '66.249.73.94', 'Googlebot'),
(1454, '2019-05-09 11:50:08', '62.210.201.91', 'Internet Explorer'),
(1455, '2019-05-09 19:52:38', '173.252.127.36', 'Other'),
(1456, '2019-05-09 21:05:31', '66.249.73.90', 'Googlebot'),
(1457, '2019-05-09 21:11:43', '66.249.73.94', 'Googlebot'),
(1458, '2019-05-10 06:07:18', '114.5.217.146', 'Chrome'),
(1459, '2019-05-10 08:39:46', '115.178.219.228', 'Chrome'),
(1460, '2019-05-10 14:06:09', '66.249.73.92', 'Googlebot'),
(1461, '2019-05-10 14:55:49', '120.188.4.212', 'Chrome'),
(1462, '2019-05-10 18:14:21', '66.249.73.92', 'Googlebot'),
(1463, '2019-05-10 18:31:40', '66.249.73.90', 'Googlebot'),
(1464, '2019-05-11 00:48:15', '66.249.73.94', 'Googlebot'),
(1465, '2019-05-11 07:22:00', '66.249.82.141', 'Chrome'),
(1466, '2019-05-11 08:23:11', '66.249.81.220', 'Chrome'),
(1467, '2019-05-11 08:23:44', '66.102.9.2', 'Chrome'),
(1468, '2019-05-11 17:50:03', '120.188.32.134', 'Chrome'),
(1469, '2019-05-11 19:02:15', '114.4.213.148', 'Chrome'),
(1470, '2019-05-12 00:29:12', '66.249.73.90', 'Googlebot'),
(1471, '2019-05-13 00:39:53', '66.249.73.90', 'Googlebot');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(27, 'Sejarah Multimedia', '<p>&nbsp; Istilah multimedia berkenaan dengan penggunaan berbagai jenis/bentuk&nbsp;media secara berurutan maupun simultan dalam menyajikan suatu informasi.Merril et.al (1996: 168) memberikan pengertian multimedia merupakankombinasi dari berbagai jenis media seperti teks, grafik, suara, animasi danvideo dalam aplikasi komputer. Pengertian yang sama diungkapkan olehSteven Hackbarth (1996: 229) yaitu:</p>\r\n\r\n<p>&nbsp; Multimedia is suggested as meaning the use of multiple media formats for&nbsp;the presentation of information, including texts, still or animated graphics,movie segments, video, and audio information. Computer-based interactivemultimedia includes hypermedia and hypertext. Hypermedia is a computer-based system that allows interactive linking of multimedia format information.</p>\r\n\r\n<h1>&nbsp; Multimedia</h1>\r\n\r\n<p><a href=\"https://multimedia160.files.wordpress.com/2013/04/1.jpg\"><img alt=\"Gambar\" src=\"https://multimedia160.files.wordpress.com/2013/04/1.jpg?w=148&amp;h=152\" style=\"height:152px; width:148px\" /></a>&nbsp;</p>\r\n\r\n<p>Lahirnya teknologi multimedia adalah hasil dari perpaduan kemajuan teknologi elektronik, teknik komputer dan perangkat lunak. Kemampuan penyimpanan dan pengolahan gambar digital dalam belasan juta warna dengan resolusi tinggi serta reproduksi suara maupun video dalam bentuk digital, Multimedia merupakan konsep dan teknologi dari unsur &ndash; unsur gambar, suara, animasi serta video disatukan didalam komputer untuk disimpan, diproses dan disajikan guna membentuk interaktif yang sangat inovatif antara komputer dengan user, Bila dibandingkan dengan informasi dalam bentuk teks (huruf dan angka) yang umumnya terdapat pada komputer saat ini, tentu informasi dalam bentuk multimedia yang dapat diterima dengan kedua indra penglihatan manusia dalam bentuk yang sesuai dengan aslinya atau dalam dunia yang sesungguhnya (reality).<br />\r\n&nbsp;&nbsp;<br />\r\n&nbsp; &nbsp;Multimedia&nbsp;adalah penggunaan&nbsp;<a href=\"http://id.wikipedia.org/wiki/Komputer\">komputer</a>&nbsp;untuk menyajikan dan menggabungkan teks, suara, gambar, animasi dan video dengan alat bantu (<em>tool</em>) dan koneksi (<em>link</em>) sehingga pengguna dapat bernavigasi, berinteraksi, berkarya dan berkomunikasi. Multimedia sering digunakan dalam dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Hiburan\">hiburan</a>. Selain dari dunia hiburan, Multimedia juga diadopsi oleh dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Game\">Game</a>.Multimedia dimanfaatkan juga dalam dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Pendidikan\">pendidikan</a>dan&nbsp;<a href=\"http://id.wikipedia.org/wiki/Bisnis\">bisnis</a>. Di dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Pendidikan\">pendidikan</a>, multimedia digunakan sebagai media pengajaran, baik dalam kelas maupun secara sendiri-sendiri. Di dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Bisnis\">bisnis</a>, multimedia digunakan sebagai media profil&nbsp;<a href=\"http://id.wikipedia.org/wiki/Perusahaan\">perusahaan</a>, profil produk, bahkan sebagai media&nbsp;<a href=\"http://id.wikipedia.org/wiki/Kios_informasi\">kios informasi</a>&nbsp;dan<a href=\"http://id.wikipedia.org/wiki/Pelatihan\">pelatihan</a>&nbsp;dalam sistem&nbsp;<em>e-learning</em>.<br />\r\nIntisari<br />\r\nTeknologi Multimedia merupakan perpaduan dari teknologi komputer baik perangkat keras maupun perangkat lunak dengan teknologi elektronik, perkembangan serta pemanfaatan teknologi multimedia banyak digunakan hampir diseluruh aspek kegiatan.<br />\r\nPada aplikasi multimedia CBT ini diharapkan akan membantu dalam tugas &ndash; tugas Bapedalda dalam mempersentasikan atau memvisualisasikan: teknik &ndash; teknik sampling, prosedur &ndash; prosedur, visualisai peralatan lab, teknik analisis laboratorium yang diikuti dengan aturan pemerintah dll, serta tentang pemahaman peran laboratorium lingkungan dalam menghasilkan data &ndash; data yang akurat, sehingga dapat memberikan informasi yang tepat bagi masyarakat yang membutuhkannya.<br />\r\nKegiatan ini merupakan kerjasama Pusat Penelitian Pengembangan Informatika dan Ilmu Komputer (PUSLITBANG INKOM) &ndash; LIPI dengan Badan Pengendalian Dampak Lingkungan Hidup Daerah (BAPEDALDA) &ndash; Jawa Barat.<br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Definisi Multimedia :</strong></p>\r\n\r\n<p>Multimedia terdiri dari dua kata &quot;multi&quot; artinya banyak, dan &quot;media&quot; sesuatu yang dipakai untuk menyampaikan atau membawakan sesuatu. Media dalam Amerika yaitu alat untuk mendistribusikan dan mempresentasikan informasi.<br />\r\n<br />\r\n<br />\r\nMultimedia dapat diartikan sebagai penggunaan beberapa media yang berbeda untuk menggabungkan dan menyampaikan informasi dalam bentuk text, audio, animasi dan video.<br />\r\n<br />\r\n<strong>Berikut beberapa definisi Multimedia menurut beberapa ahli :</strong></p>\r\n\r\n<ol>\r\n	<li>Kombinasi dari komputer dan video.&nbsp;<em>(Rosch, 1996)</em></li>\r\n	<li>Kombinasi dari tiga elemen : suara, gambar dan text.&nbsp;<em>(Mc.Comick, 1996)</em></li>\r\n	<li>Kombinasi dari paling sedikit dua media input dan output. Media ini dapat berupa audio (suara, musik), animasi, video, teks, grafik dan gambar.&nbsp;<em>(Turban dan kawan-kawan, 2002)</em></li>\r\n	<li>Alat yang dapat menciptakan presentasi yang dinamis dan interaktif yang mengkombinasikan teks-grafik, animasi, audio dan video.&nbsp;<em>(Robin dan Linda, 2001)</em></li>\r\n	<li>Multimedia dalam konteks komputer menurut&nbsp;<em>Hofstekter, 2001</em>&nbsp;adalah pemanfaatan komputer untuk membuat dan menggabungkan teks, grafik, audio, video, dengan menggunakan tool yang memungkinkan pemakaian berinteraksi, berkreasi dan berkomunikasi.</li>\r\n</ol>\r\n\r\n<p><strong>&gt;&gt; Kategori Multimedia</strong><br />\r\n<br />\r\nMultimedia dapat di definisikan menjadi 2 kategori, yaitu multimedia content production dan multimedia communication dengan definisi sebagai berikut :</p>\r\n\r\n<ol>\r\n	<li><em><strong>Multimedia Content Production</strong></em>&nbsp;adalah penggunaan dan pemrosesan beberapa media (teks, audio, graphics, animation, video dan interactivity) yang berbeda untuk menyampaikan informasi atau menghasilkan produk multimedia (music, video, film, game, intertaintment, dll.) Atau penggunaan sejumlah teknologi yang berbeda yang memungkinkan untuk menggabungkan media (teks, audio, graphics, animation, video, dan interactivity) dengan cara yang baru untuk tujuan komunikasi. Dalam kategori ini media yang digunakan adalah :\r\n\r\n	<ul>\r\n		<li>media teks</li>\r\n		<li>media audio</li>\r\n		<li>media video</li>\r\n		<li>media animasi</li>\r\n		<li>media graph / image</li>\r\n		<li>media interactivity</li>\r\n		<li>media spesial effect&nbsp;</li>\r\n	</ul>\r\n	</li>\r\n	<li><em><strong>&nbsp;Multimedia Communication</strong></em>&nbsp;adalah penggunaan media (massa), seperti televisi, radio, media cetak dan internet untuk mempublikasikan / menyiarkan / mengkomunikasikan material advertising, publicity, entertaintment, news, education, dll. Dalam kategori ini media yang digunakan adalah :</li>\r\n</ol>\r\n\r\n<ul>\r\n	<li>TV</li>\r\n	<li>Radio</li>\r\n	<li>Film</li>\r\n	<li>Media Cetak</li>\r\n	<li>Musik</li>\r\n	<li>Game</li>\r\n	<li>Entertainment</li>\r\n	<li>Tutorial</li>\r\n	<li>ICT (Internet)</li>\r\n</ul>\r\n\r\n<p><strong>&gt;&gt; Karakteristik Multimedia&nbsp;</strong><br />\r\n<br />\r\nMultimedia juga mempunyai&nbsp; karakteristik, yaitu ada 2 bentuk :</p>\r\n\r\n<ol>\r\n	<li><strong>Bentuk Linier</strong>&nbsp;: Sebuah struktur multimedia dimana pengguna bernafigasi sesuai urutan dari satu frame atau bite informasi ke yang lainnya.</li>\r\n	<li><strong>Bentuk No Linier</strong>&nbsp;: Struktur multimedia dimana pengguna bernafigasi secara bebas, tidak oleh rute yang ditentukan.</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>TENTANG MULTIMEDIA</strong></p>\r\n\r\n<p><strong>Multimedia</strong>&nbsp;adalah penggunaan komputer untuk menyajikan dan menggabungkan teks, suara, gambar, animasi dan video dengan alat bantu ([tool]) dan koneksi ([link]) sehingga pengguna dapat ber-([navigasi]), berinteraksi, berkarya dan berkomunikasi. Multimedia sering digunakan dalam dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Hiburan\">hiburan</a>. Selain dari dunia hiburan, Multimedia juga diadopsi oleh dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Game\">Game</a>.<br />\r\nMultimedia dimanfaatkan juga dalam dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Pendidikan\">pendidikan</a>&nbsp;dan&nbsp;<a href=\"http://id.wikipedia.org/wiki/Bisnis\">bisnis</a>. Di dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Pendidikan\">pendidikan</a>, multimedia digunakan sebagai media pengajaran, baik dalam kelas maupun secara sendiri-sendiri. Di dunia&nbsp;<a href=\"http://id.wikipedia.org/wiki/Bisnis\">bisnis</a>, multimedia digunakan sebagai media profil&nbsp;<a href=\"http://id.wikipedia.org/wiki/Perusahaan\">perusahaan</a>, profil produk, bahkan sebagai media&nbsp;<a href=\"http://id.wikipedia.org/wiki/Kios_informasi\">kios informasi</a>&nbsp;dan&nbsp;<a href=\"http://id.wikipedia.org/wiki/Pelatihan\">pelatihan</a>&nbsp;dalam sistem&nbsp;<em>e-learning</em>.<br />\r\nPada awalnya multimedia hanya mencakup media yang menjadi konsumsi indra penglihatan (gambar diam, teks, gambar gerak video, dan gambar gerak rekaan/animasi), dan konsumsi indra pendengaran (suara). Dalam perkembangannya multimedia mencakup juga kinetik (gerak) dan bau yang merupakan konsupsi indra penciuman. Multimedia mulai memasukkan unsur kinetik sejak diaplikasikan pada pertunjukan film 3 dimensi yang digabungkan dengan gerakan pada kursi tempat duduk penonton. Kinetik dan film 3 dimensi membangkitkan sens rialistis.<br />\r\nBau mulai menjadi bagian dari multimedia sejak ditemukan teknologi reproduksi bau melalui telekomunikasi. Dengan perangkat input penditeksi bau, seorang operator dapat mengirimkan hasil digitizing bau tersebut melalui internet. Pada komputer penerima harus tersedia perangkat output berupa mesin reproduksi bau. Mesin reproduksi bau ini mencampurkan berbagai jenis bahan bau yang setelah dicampur menghasilkan output berupa bau yang mirip dengan data yang dikirim dari internet. Dengan menganalogikan dengan printer, alat ini menjadikan feromon-feromor bau sebagai pengganti tinta. Output bukan berupa cetakan melainkan aroma&nbsp;</p>\r\n\r\n<p>Istilah multimedia berkenaan dengan penggunaan berbagai jenis/bentuk&nbsp;media secara berurutan maupun simultan dalam menyajikan suatu informasi.Merril et.al (1996: 168) memberikan pengertian multimedia merupakankombinasi dari berbagai jenis media seperti teks, grafik, suara, animasi danvideo dalam aplikasi komputer. Pengertian yang sama diungkapkan olehSteven Hackbarth (1996: 229) yaitu:</p>\r\n\r\n<p>Multimedia is suggested as meaning the use of multiple media formats for&nbsp;the presentation of information, including texts, still or animated graphics,movie segments, video, and audio information. Computer-based interactivemultimedia includes hypermedia and hypertext. Hypermedia is a computer-based system that allows interactive linking of multimedia format information.</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"320\" height=\"345\" src=\"https://www.youtube.com/embed/taF6PH4hVpA\">\r\n</iframe>\r\n\r\n', '2019-01-29 02:31:37', 15, 'Multimedia', 12, '5b2eff2f9a7ba9dfab02402425721579.jpg', 8, 'Raditya Damaris', 0, 'sejarah-multimedia'),
(28, 'Sejarah Farmasi', '<p><strong>Farmasi</strong>&nbsp;(bahasa inggris: pharmacy, bahasa yunani: pharmacon, yang berarti: obat) merupakan salah satu bidang profesional kesehatan yang merupakan kombinasi dari ilmu kesehatan dan ilmu kimia, yang mempunyai tanggung-jawab memastikan efektivitas dan keamanan penggunaan obat. Ruang lingkup dari praktik farmasi termasuk praktik farmasi tradisionalseperti peracikan dan penyediaan sediaan obat, serta pelayanan farmasi modern yang berhubungan dengan layanan terhadap pasien(patient care) di antaranya layanan klinik, evaluasi efikasi dan keamanan penggunaan obat, dan penyediaan informasi obat.</p>\r\n\r\n<p><strong>Farmasis (apoteker</strong><strong>)</strong>&nbsp;merupakan gelar profesional dengan keahlian di bidang farmasi. Farmasis biasa bertugas di institusi-institusi baik pemerintahan maupun swasta seperti badan pengawas obat/makanan, rumah sakit, industri farmasi, industri obat tradisional, apotek, dan di berbagai sarana kesehatan. sumber&nbsp;<a href=\"https://id.wikipedia.org/wiki/Farmasi\">disini</a></p>\r\n\r\n<p>Dalam pendidikan tinggi, farmasi merupakan jurusan yang berkaitan dengan ilmu kedokteran dan ilmu kimia. Bila ilmu kedokteran mungkin akan lebih memfokuskan diri dalam upaya penanganan atau penyembuhan pasien secara langsung. Sedangkan pada jurusan farmasi fokusnya lebih kepada obat-obatan yang dapat berguna dalam penyembuhan pasien.</p>\r\n\r\n<p>Dalam ilmu farmasi, kita akan mempelajari berbagai hal mulai dari pembuatan obat, ramuan tradisional, cara kerja obat di dalam tubuh, pelayanan obat kepada pasien, dan famasetika. Termasuk juga belajar tentang cara menjelaskan atau memberikan informasi yang dapat diterima dengan mudah oleh pasien mengenai tata cara konsumsi (pemakaian) obat yang benar, indikasi, dan efek samping dari obat tersebut.</p>\r\n\r\n<p>Gelar Amd.Far akan didapatkan oleh mereka yang lulus dari jurusan D3 farmasi. Sedangkan bagi yang lulusan S1 farmasi maka akan memperoleh gelar S.Farm (Sarjana Farmasi), dan juga biasanya akan ditambah gelar profesi Apoteker (Apt.) di belakang S.Farm. Dalam jurusan farmasi sangat mengutamakan kemampuan analisis. Sebab, mereka yang lulus dari pendidikan farmasi ini akan bekerja pada industri farmasi yang membuat mereka harus bersentuhan dengan obat-obatan dan bahan kimia. Profesi seperti ini membutuhkan ketekunan ketelitian dan juga kesabaran. Calon mahasiswa farmasi harus mempunyai karakter tersebut dalam diri mereka.<br />\r\nMereka akan dihadapkan oleh banyak penelitian, hafalan, serta praktik kerja di industri farmasi selama mereka menempuh pendidikan di jurusan farmasi.</p>\r\n\r\n<p><strong>Keunggulan jurusan farmasi :</strong></p>\r\n\r\n<ul>\r\n	<li>Jurusan farmasi mempelajari berbagai sediaan obat dan zat aktif yang terkandung di dalamnya. Kebanyakan orang hanya mengetahui merk obatnya saja tanpa mengetahui zat yang berkhasiat dalam obat tersebut. Dengan kompetensi ini, seorang farmasis dapat lebih leluasa memilih obat yang sesuai.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Disamping mempelajari zat kimia sintetis yang berkhasiat obat, jurusan farmasi juga mempelajari bagian-bagian hewan dan tumbuhan yang mengandung zat-zat yang berkhasiat obat.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Bidang farmasi dan kedokteran bekerja sama dalam memberikan terapi untuk berbagai macam penyakit. Pada dasarnya tugas seorang dokter adalah mendiagnosis penyakit sementara kewenangan untuk memutuskan obat dan terapi apa yang akan diberikan sebagai penanganan penyakit serta pengawasan efektivitas terapi tersebut berada di tangan seorang farmasis (apoteker).</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Dengan pengetahuan kefarmasian, racun-racun kimia yang ada dapat diatur sehingga dapat memberikan efek terapi yang efektif.</li>\r\n</ul>\r\n\r\n<ul>\r\n	<li>Secara kasat mata, bidang farmasi dan teknik kimia memang tampak serupa namun bidang farmasi lebih terspesialisasi memproduksi bentuk sediaan obat sebagai hasil riil.</li>\r\n</ul>\r\n\r\n<p>Lapangan kerja bagi lulusan farmasi cukup luas mulai dari apotek, bagian kefarmasian rumah sakit maupun puskesmas dan klinik, peneliti Badan dan Balai POM, wirausaha mandiri, perusahaan industri (makanan, obat, kosmetik, dll), dan tenaga pengajar (dosen). sumber&nbsp;<a href=\"http://rengganies.weebly.com/posting/keunggulan-perkembangan-dan-prospek-masa-depan-jurusan-farmasi\">disini</a></p>\r\n\r\n<p><strong>peluang kerja untuk lulusan farmasi :</strong></p>\r\n\r\n<ol>\r\n	<li>pegawai instansi pemerintah</li>\r\n	<li>tenaga pengajar dan instansi penelitian</li>\r\n	<li>industri dan perusahaan swasta</li>\r\n</ol>\r\n', '2019-01-29 02:42:05', 14, 'Farmasi', 6, '4a2d150cb03f7aaa4037be80572b2b53.jpg', 5, 'Raditya damaris', 0, 'sejarah-farmasi'),
(29, 'Kompetensi Keahlian Farmasi', '<p>Kompetensi keahlian Farmasi SMK Insan Aqilah 4 Grogol - Jakbar didirikan tahun 2010. Pada Kompetensi keahlian ini berkonsentrasi di bidang farmasi pelayanan</p>\r\n\r\n<p><br />\r\n<br />\r\nKEGIATAN LABORATORIUM<br />\r\n1. LABORATORIUM FARMASETIKA</p>\r\n\r\n<p>&nbsp;&nbsp; Siswa diajarkan proses meracik berbagai sediaan obat. Didukung dengan fasilitas yang lengkap dan akomodatif sehingga menyuguhkan suasan yang kondusif untuk belajar<br />\r\n<br />\r\n2. LABORATORIUM FARMAKOGNOSI</p>\r\n\r\n<p>&nbsp;Siswa diajarkan menganal lebih dalam tanaman yang berkhasitan sebagai obat dan obat tradisional.<br />\r\n<br />\r\n3. LABORATORIUM KIMIA</p>\r\n\r\n<p>&nbsp;&nbsp;&nbsp; Siswa diajarkan mengenal lebih jauh penggunaan bahan bahan kimia sebagai bahan obat. Laboratorium ini dilengkapi dengan perangkat audio sistem, lab ini menawarkan situasi belajar yang serius dan santai.<br />\r\n<br />\r\nPROSPEK KERJA</p>\r\n\r\n<p>1. Intaslasi Farmasi Rumah Sakit</p>\r\n\r\n<p>2. Industri Farmasi</p>\r\n\r\n<p>3. Pedagang Besar Farmasi</p>\r\n\r\n<p>4. Apotek</p>\r\n\r\n<p>5. Toko Obat</p>\r\n\r\n<p>6. Dapat melanjutkan kuliah di semua jurusan, dipriritaskan apapabila melanjutkan studi ke Akademi Farmasi</p>\r\n', '2019-01-30 06:01:52', 14, 'Farmasi', 10, '49f6e1aaa9b5811171aac8b438c76b30.JPG', 1, 'Ali Yasin', 0, 'kompetensi-keahlian-farmasi'),
(30, 'Kompetensi Keahlian Multimedia', '<p>VISI KOMPETENSI KEAHLIAN<br />\r\n<br />\r\nMewujudkan Sumber Daya Manusia yang profesional dan kompeten di bidang Multimedia</p>\r\n\r\n<p><br />\r\nMISI KOMPETENSI KEAHLIAN</p>\r\n\r\n<ol>\r\n	<li>Menyiapkan tenaga yang terampil di bidang multimedia</li>\r\n	<li>Membentuk tamatan yang berkepribadian unggul dan mampu mengembangkan diri</li>\r\n	<li>Menyiapkan wirausaha yang handal di bidang multimedia</li>\r\n</ol>\r\n\r\n<p><br />\r\nTUJUAN KOMPETENSI KEAHLIAN MULTIMEDIA<br />\r\n<br />\r\nProgram Keahlian Multimedia pada SMK Insan Aqilah 4 Grogol - Jabar bertujuan untuk :</p>\r\n\r\n<ol>\r\n	<li>Meningkatkan keimanan dan ketaqwaan peserta didik</li>\r\n	<li>Mendidik peserta didik agar menjadi warga negara yang bertanggung jawab</li>\r\n	<li>Mendidik peserta didik agar dapat menerapkan hidup sehat, memiliki wawasan pengetahuan dan seni</li>\r\n	<li>Mendidik peserta didik dengan keahlian dan ketrampilan dalam progran keahlian Multimedia, agar dapat bekerja baik secara mandiri atau mengisi pekerjaan yang ada di DUDI sebagai tenaga kerja tingkat menengah.</li>\r\n	<li>Mendidik Peserta didik agar mampu memilih karir, berkompetisi dan mengembangkan sikap professional dalam program keahlian Multimedia.</li>\r\n	<li>&nbsp;Membekali peserta didik dengan ilmu pengetahuan dan keterampilan sebagai bekal bagi yang berminat untuk melanjutkan pendidikan yang lebih tinggi.</li>\r\n</ol>\r\n\r\n<p><br />\r\nDASAR KOMPETENSI KEJURUAN</p>\r\n\r\n<ol>\r\n	<li>Merakit personal computer</li>\r\n	<li>Melakukan instalasi sistem operasi dasar</li>\r\n	<li>Menerapkan Keselamatan, Kesehatan Kerja dan Lingkungan Hidup (K3LH)</li>\r\n</ol>\r\n\r\n<p><br />\r\nKOMPETENSI KEJURUAN</p>\r\n\r\n<ol>\r\n	<li>Melakukan entry data (multimedia) dengan menggunakan image scanner (level 2)</li>\r\n	<li>Mengoperasikan software multimedia</li>\r\n	<li>Mengoperasikan software presentasi (level 2)</li>\r\n	<li>Mengoperasikan software animasi 3 demensi</li>\r\n	<li>Mengoperasikan software animasi dasar 3 demensi (level 1)</li>\r\n	<li>Mengoperasikan software animasi (model) tiga dimensi (level 2)</li>\r\n	<li>Mengoperasikan software peripheral perekam suara</li>\r\n	<li>Mengoperasikan peripheral perekam gambar</li>\r\n	<li>Mengoperasikan software penyunting audio</li>\r\n	<li>Mengoperasikan software penyunting video</li>\r\n	<li>Mengopeasikan software effek visual</li>\r\n</ol>\r\n\r\n<p><br />\r\nKOMPETENSI TAMATAN<br />\r\n<br />\r\nMengoperasikan software dan periferal digital illustration, digital imaging, dan web design Adobe Certified Expert dan Macromedia Certified Professional<br />\r\nMengoperasikan software dan periferal multimedia, presentation, 2D animation, dan 3D animation Adobe Certified Expert dan Macromedia Certified Professional<br />\r\nMengoperasikan software dan periferal digital audio, digital video, dan visual effects Adobe Certified Expert dan Macromedia Certified Professional<br />\r\n<br />\r\nPELUANG BERWIRAMANDIRI</p>\r\n\r\n<ul style=\"list-style-type:disc\">\r\n	<li>Membuka jasa Pembuatan Website</li>\r\n	<li>Membuka jasa Pemeliharan Website</li>\r\n	<li>Membuka jasa Pembuatan Multimedia</li>\r\n	<li>Membuka jasa Pembuatan Permainan (Games)</li>\r\n	<li>Membuka jasa Pembuatan Media Simulasi</li>\r\n	<li>Membuka jasa Pembuatan Video Klip</li>\r\n	<li>Membuka jasa Pembuatan iklan</li>\r\n</ul>\r\n', '2019-01-30 06:04:14', 15, 'Multimedia', 9, 'bc9072e3df72fcece6e1fbd3b1d01e6d.jpg', 1, 'Ali Yasin', 0, 'kompetensi-keahlian-multimedia'),
(31, 'SMK BISA', '<p>SMK sudah sejak lama dikenal sebagai sekolah yang identik dengan pencetak para alumni yang handal dan siap kerja. Namun terkadang masih banyak masyarakat kita yang terjebak dalam pemikiran sempit yang mendiskreditkan SMK sebagai tempat mendidik anak nakal dan orang yang tak mampu (maaf). Mengapa bisa dikatakan seperti itu, karena masih banyak para orang tua yang berparadigma bahwa SMK sebagai pilihan terakhir. Kata yang biasanya muncul ialah &quot;wes pokoke sekolah&quot; (sudah pokoknya sekolah). Itu menandakan bahwa pesimisme terhadap SMK tetap selalu ada. Padahal di luar negeri sendiri, pendidikan kejuruan bukan hal baru lagi. Sejak Tiongkok memasuki era reformasi dan membuka diri terhadap dunia luar (1978), sekolah kejuruan mendapat suntikan dana besar dari pemerintah. Pada tahun 2001, terdapat 17.770 sekolah kejuruan. Proporsi siswa kejuruan meningkat pesat dari 19% pada tahun 1980, mencapai hampir separuh yakni 45,3% pada tahun 2001.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Para tenaga pendidik juga mendapat perhatian besar dari pemerintah. Kelas-kelas khusus dibuka untuk meningkatkan kualitas pengajar. Ada sekitar 200 tempat pelatihan yang didirikan oleh departemen sentral dan pemerintah lokal.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Di Jerman, sejarah pendidikan kejuruan telah dimulai sejak abad ke 19. Sekolah jenis ini menekankan sistem pendidikan ganda dimana selain training kejuruan di sekolah, siswa juga diberi kesempatan untuk magang di perusahaan. Pada tahun 2001, sebanyak dua pertiga dari seluruh generasi muda berusia dibawah 22 tahun telah menjalani magang di perusahaan. Untuk mendukung perkembangan pendidikan ini, pada tahun 2004, pemerintah mengeluarkan peraturan yang menegaskan bahwa semua pemilik perusahaan, kecuali yang berskala kecil, wajib menerima siswa magang untuk bekerja di perusahaannya.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Sementara di Indonesia sendiri, sekolah kejuruan pertama kali dibangun pada tahun 1853 saat masih dalam pemerintahan Hindia Belanda. Sayangnya, saat itu hanya orang keturunan Eropa dan golongan bangsawan saja yang dapat bersekolah di sana. Sementara itu, sekolah kejuruan pertama setelah Indonesia merdeka dibangun pada tahun 1964. Saat itu, sekolah kejuruan mulai menjamur dengan nama STM (Sekolah Teknologi Menengah), SMEA (Sekolah Menengah Ekonomi Atas), SMIK (Sekolah Menengah Industri dan Kerajinan) dan SMM (Sekolah Menengah Musik). Dan pada awal kemunculannya, banyak didatangkan guru - guru dari luar negeri untuk mengajar siswa - siswa di Indonesia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Berbeda dengan awal kemunculannya, SMK di era modern ini sudah banyak berubah. SMK modern saat ini banyak yang sudah berstandar internasional alias ISO. Itu sama halnya mengundang investor atau perusahaan untuk mencari lulusan SMK tersebut. Atau dengan kata lain, alumni SMK dicari oleh pekerjaan, bukan alumni yang mencari pekerjaan. Seandainya seorang siswa mampu mempelajari segala macam teori dan praktek yang diajarkan guru kemudian mampu menguasainya, bukan hal yang tidak mungkin dia akan direkrut dengan cepat oleh suatu perusahaan. Sudah banyak buktinya seorang alumni SMK bisa bekerja keliling dunia, bahkan guru yang telah mengajarinya belum tentu pernah merasakan keliling dunia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>SMK mengajarkan untuk hidup mandiri. Selain itu, SMK juga mencetak siswanya untuk siap kerja, jadi kalau anda lulus (dengan nilai baik dan etos kerja baik pastinya) dari SMK, andalah yang dicari oleh industri bukan anda yang mencari kerja. Jadi, tidak perlu lagi menganggap remeh dan skeptik tentang kapabilitas alumni SMK. Apalagi di era pemerintahan Bapak Jokowi saat ini, nama SMK sangat diperhitungkan. Karena di SMK-lah karya-karya dan ide-ide brilian siswa akan muncul. SMK Bisa, SMK Hebat!</p>\r\n', '2019-02-01 02:48:38', 16, 'Umum', 7, 'db549c6fb3f7f08a27630f7673b3341c.jpg', 5, 'Raditya damaris', 0, 'smk-bisa'),
(32, 'Hari Guru', '<p>Pahlawan bukanlah orang yang harus selalu mengangkat pedang dan senjata untuk mengorbankan darahnya mengalir atas perjuangannya, melainkan orang yang mengorbankan semua waktu, ilmu dan tenaganyapun merupakan pahlawan tanpa jasa yang harus kita hormati. Selamat Hari Guru 2018.</p>\r\n\r\n<p>https://www.youtube.com/watch?v=e8tiJDPS0gM</p>\r\n', '2019-02-01 04:36:51', 17, 'Acara', 7, '57b7f23aa21dbca0452ce3ab64759e21.jpeg', 5, 'Raditya damaris', 0, 'hari-guru'),
(33, 'Karya Siswa Aqilah', '<p>Dengan kesempatan kali ini saya membuat sebuah logo Smk Insan Aqilah yang di buat dengan Aplikasi adobe Ilustrator .</p>\r\n\r\n<p>&nbsp;Adobe Illustrator merupakan aplikasi untuk mengolah serta mengedit desain atau gambar vektor, dimana aplikasi ini dikembangkan dan dipasarkan oleh&nbsp;<a href=\"http://www.ardilas.com/2015/05/apakah-pengertian-definisi-arti-itu-adobe-systems-adalah-merupakan-perusahaan.html\" target=\"_blank\">Adobe&nbsp;Systems</a>. Adobe Illustrator tersedia di komputer, yang berarti aplikasi ini tidak bisa digunakan di perangkat lain seperti handphone, tablet, dan perangkat lainnya.</p>\r\n\r\n<p>Adobe Illustrator pertama kali dikembangkan untuk komputer Apple Macintosh pada Desember 1986 dan dirilis pada Januari 1987. Pada waktu itu&nbsp;Adobe Illustrator adalah produk pendamping dari Adobe Photoshop.</p>\r\n', '2019-02-06 05:33:11', 16, 'Umum', 10, 'cc81959fc8f5c6ae90063884fad09c6d.jpg', 5, 'Raditya damaris', 0, 'karya-siswa-aqilah'),
(34, 'Sejarah Multimedia Part 2', '<h2>DASAR KOMPETENSI KEJURUAN</h2>\r\n\r\n<h3>Merakit Personal Computer (PC)</h3>\r\n\r\n<ol>\r\n	<li>jelaskan konsep sistem komputer&nbsp;!</li>\r\n	<li>Menjelaskan fungsi komponen-komponen/ Pheriferal komputer</li>\r\n	<li>Mengidentifikasi keamanan &amp; keselamatan Kerja</li>\r\n	<li>Menjelaskan trobleshooting perakitan PC</li>\r\n	<li>Mengidentikasi peralatan merakit PC</li>\r\n	<li>uji coba perakitan PC.</li>\r\n</ol>\r\n\r\n<h3>Menginstalasi Sistem operasi</h3>\r\n\r\n<ol>\r\n	<li>Menjelaskan klasifikasi sistemoperasi</li>\r\n	<li>Menidentifikasi sfesifikasi komputer</li>\r\n	<li>Menginstalasi sistemoperasi berbasis Gui</li>\r\n	<li>Menginstalasi softwareaplikasi</li>\r\n</ol>\r\n\r\n<h2>B. KOMPETENSI KEJURUAN</h2>\r\n\r\n<h3>Mengidentifikasi etimologi multimedia</h3>\r\n\r\n<ol>\r\n	<li>Mendefinisikan dan mengkategorikan tentang multimedia</li>\r\n	<li>Mengidentifikasi multimedia content production</li>\r\n	<li>Mengidentifikasi multimedia communication.</li>\r\n</ol>\r\n\r\n<h3>Mengilustrasikan alir proses produksi produk multimedia</h3>\r\n\r\n<ol>\r\n	<li>Mengidentifkasi proses Pre Production multimedia</li>\r\n	<li>Mengidentifkasi proses Production multimedia</li>\r\n	<li>Mengidentifkasi proses Post Production multimedia.</li>\r\n</ol>\r\n\r\n<h3>Menyusun proposal penawaran</h3>\r\n\r\n<ol>\r\n	<li>Menganalisa syarat-syarat proyek</li>\r\n	<li>Mengidentifikasi keterampilan yang sesuai dengan persyaratan laporan</li>\r\n	<li>Membuat rancangan biaya biaya dan sumber sumber yang ada</li>\r\n	<li>Membuat proposal</li>\r\n	<li>Membuat pengajuan permohonan tender.</li>\r\n</ol>\r\n\r\n<h3>Merumuskan prosedur kesehatan, keselamatan, dan keamanan kerja</h3>\r\n\r\n<ol>\r\n	<li>Menjabarkan UU keselamatan kerja</li>\r\n	<li>Mengidentifikasi prosedur standar keamanan manusia</li>\r\n	<li>Mengidentifikasi prosedur standar keamanan alat</li>\r\n	<li>Menerapkan prosedur lingkungan kerja tentang kesehatan, keselamatan dan keamanan.</li>\r\n</ol>\r\n\r\n<h3>Merawat peralatan multimedia</h3>\r\n\r\n<ol>\r\n	<li>Mengindentifikasi langkah-langkah perawatan peralatan multimedia</li>\r\n	<li>Membuat kartu perawatan peralatan shooting.</li>\r\n</ol>\r\n\r\n<h3>Memperbarui isi halaman web</h3>\r\n\r\n<ol>\r\n	<li>Memeriksa informasi untuk relevansi dan updated</li>\r\n	<li>Memeriksa links dan navigasi</li>\r\n	<li>Mengedit informasi sesuai kebutuhan</li>\r\n	<li>Menguji dan memastikan perubahan perubahan.</li>\r\n</ol>\r\n\r\n<h3>Menguasai Teknik pengambilan gambar produksi</h3>\r\n\r\n<ol>\r\n	<li>Memilih dan menyiapkan bahan dan peralatan shooting</li>\r\n	<li>Men-set-up dan mengoperasikan kamera video dasar</li>\r\n	<li>Mengisi dan merawat battery selama pengambilan gambar</li>\r\n	<li>Mengoperasikan kamera</li>\r\n	<li>Menata kabel-kabel kamera</li>\r\n	<li>Mengoperasikan clapper board.</li>\r\n</ol>\r\n\r\n<h3>Menerapkan prinsip-prinsip seni grafis dalam desain komunikasi visual untuk multimedia</h3>\r\n\r\n<ol>\r\n	<li>Mengidentifikasi kaidah estetika dan etika seni grafis (nirmana)</li>\r\n	<li>Men-sketsa</li>\r\n	<li>Menggambar perspektif</li>\r\n	<li>Menggambar objek</li>\r\n	<li>Menggambar ilustrasi.</li>\r\n</ol>\r\n\r\n<h3>Menguasai cara menggambar kunci untuk animasi</h3>\r\n\r\n<ol>\r\n	<li>Mengidentifikasi syarat animasi</li>\r\n	<li>Membuat gambar kunci</li>\r\n	<li>Mengatur dan melengkapi gambar kunci.</li>\r\n</ol>\r\n\r\n<h3>Menguasai cara meng gambar clean-up dan sisip</h3>\r\n\r\n<ol>\r\n	<li>Menemukan syarat-syarat gambar yang asli</li>\r\n	<li>Membuat gambar-gambar asli</li>\r\n	<li>Mengidentifikasi syarat-syarat gambar tiga dimensi</li>\r\n	<li>Membuat gambar tiga dimensi.</li>\r\n</ol>\r\n\r\n<h3>Membuat animasi stop-motion (bidang datar)</h3>\r\n\r\n<ol>\r\n	<li>Identifikasi syarat-syarat animasi</li>\r\n	<li>Membuat model warna dan tempat warna</li>\r\n</ol>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h3>Menggabungkan teks kedalam sajian multimedia</h3>\r\n\r\n<ul>\r\n	<li>12.1 Menggunakan software teks multimedia</li>\r\n	<li>12.2 Mendesain teks multimedia.</li>\r\n</ul>\r\n\r\n<h3>Menggabungkan gambar 2D kedalam sajian multimedia</h3>\r\n\r\n<ul>\r\n	<li>13.1 Mengedit gambar digital</li>\r\n	<li>13.2 Menggunakan software grafik multimedia 2D</li>\r\n	<li>13.3 Menciptakan design grafik Multimedia 2D</li>\r\n	<li>13.4 Menampilkan karya seni digital 2D.</li>\r\n</ul>\r\n\r\n<h3>Menggabungkan fotografi digital kedalam sajian multimedia</h3>\r\n\r\n<ul>\r\n	<li>14.1 Menggunakan kamera digital</li>\r\n	<li>14.2 Menggabungkan camera digital kedalam rangkaian Banner</li>\r\n	<li>14.3 susunan karya seni foto digital dan grafik 8D.</li>\r\n</ul>\r\n\r\n<h3>Menggabungkan audio ke dalam sajian multimedia</h3>\r\n\r\n<ul>\r\n	<li>15.1 Menjabaran format audio digital</li>\r\n	<li>15.2 Menggunakan software audio digital</li>\r\n	<li>15.3 Merancang dan audio digital</li>\r\n	<li>15.4 Membangun track audio digital.</li>\r\n</ul>\r\n\r\n<h3>Membuat Story Board aplikasi multimedia</h3>\r\n\r\n<ul>\r\n	<li>16.1 Menidentifikasi kebutuhan</li>\r\n	<li>16.2 Merencanakan alur isi (story board)</li>\r\n	<li>16.3 Medeskripsikan proses pelaksanaan dalam Story board.</li>\r\n</ul>\r\n\r\n<h3>Menggunakan Peralatan tata cahaya.</h3>\r\n\r\n<ul>\r\n	<li>17.1 Mengidentifikasi dasar tata cahaya</li>\r\n	<li>17.2 Mengidentifiksdi efek cahaya</li>\r\n	<li>17.3 Menyiapkan operasi lighting</li>\r\n</ul>\r\n\r\n<h3>Menerapkan efek khusus pada objek produksi</h3>\r\n\r\n<ul>\r\n	<li>18.1 Mengidentifikasikan materi penunjang efek khusus</li>\r\n	<li>18.2 Menginstallasi soft ware effek khusus</li>\r\n	<li>18.3 Membuat efek khusus pada obyek.</li>\r\n</ul>\r\n', '2019-02-15 03:52:19', 15, 'Multimedia', 7, '40f5237e374026ad0778e9af1e62e655.jpg', 5, 'Raditya damaris', 0, 'sejarah-multimedia-part-2'),
(35, 'Sejarah Farmasi Part 2', '<p><strong>Farmasi</strong>&nbsp;(<a href=\"http://id.wikipedia.org/wiki/Bahasa_Inggris\">bahasa</a><a href=\"http://id.wikipedia.org/wiki/Bahasa_Inggris\">&nbsp;Inggris</a>:&nbsp;<em>pharmacy</em>,&nbsp;<a href=\"http://id.wikipedia.org/wiki/Bahasa_Yunani\">bahasa Yunani</a>: pharmacon, yangberarti:&nbsp;<a href=\"http://id.wikipedia.org/wiki/Obat\">oba</a><a href=\"http://id.wikipedia.org/wiki/Obat\">t</a>) merupakan salah satu bidang profesional&nbsp;<a href=\"http://id.wikipedia.org/wiki/Kesehatan\">kesehatan</a>&nbsp;yang merupakan kombinasi dari&nbsp;<a href=\"http://id.wikipedia.org/wiki/Ilmu_kesehatan\">ilmu kesehatan</a>&nbsp;dan&nbsp;<a href=\"http://id.wikipedia.org/wiki/Ilmu_kimia\">ilmu kimia</a>, yang mempunyai tanggung-jawab memastikan efektivitas dan keamanan penggunaan obat. Ruang lingkup dari praktik farmasi termasuk praktik farmasi&nbsp;<a href=\"http://id.wikipedia.org/wiki/Tradisional\">tradisional</a>&nbsp;seperti peracikan dan penyediaan sediaan obat, serta pelayanan farmasi&nbsp;<a href=\"http://id.wikipedia.org/wiki/Modern\">modern</a>&nbsp;yang berhubungan dengan layanan terhadap&nbsp;<a href=\"http://id.wikipedia.org/wiki/Pasien\">pasien</a>&nbsp;(<em>patient care</em>) di antaranya layanan&nbsp;<a href=\"http://id.wikipedia.org/wiki/Klinik\">klinik</a>, evaluasi&nbsp;<a href=\"http://id.wikipedia.org/w/index.php?title=Efikasi&amp;action=edit&amp;redlink=1\">efika</a><a href=\"http://id.wikipedia.org/w/index.php?title=Efikasi&amp;action=edit&amp;redlink=1\">si</a>&nbsp;dan keamanan penggunaan obat, dan penyediaan informasi obat. Kata farmasi berasal dari kata farma (<em>pharma</em>).&nbsp;<a href=\"http://id.wikipedia.org/wiki/Farma\">Farma</a>&nbsp;merupakan istilah yang dipakai pada tahun&nbsp;<a href=\"http://id.wikipedia.org/wiki/1400\">1400</a>&nbsp;&ndash;&nbsp;<a href=\"http://id.wikipedia.org/wiki/1600an\">1600an</a>.</p>\r\n\r\n<p><a href=\"https://nigthmareaqua.files.wordpress.com/2013/09/farmasi.jpeg\"><img alt=\"Image\" src=\"https://nigthmareaqua.files.wordpress.com/2013/09/farmasi.jpeg?w=179\" /></a>Institusi farmasi&nbsp;<a href=\"http://id.wikipedia.org/wiki/Eropa\">Eropa</a>&nbsp;pertama kali berdiri di&nbsp;<a href=\"http://id.wikipedia.org/wiki/Trier\">Trier</a>, Jerman, pada tahun&nbsp;<a href=\"http://id.wikipedia.org/wiki/1241\">1241</a>&nbsp;dan tetap eksis sampai dengan sekarang.</p>\r\n\r\n<p><strong>Farmasis (<a href=\"http://id.wikipedia.org/wiki/Apoteker\">apoteker</a>)</strong>&nbsp;merupakan gelar profesional dengan keahlian di bidang farmasi. Farmasis biasa bertugas di&nbsp;<a href=\"http://id.wikipedia.org/wiki/Institusi\">institusi</a>-institusi baik pemerintahan maupun&nbsp;<a href=\"http://id.wikipedia.org/wiki/Swasta\">swasta</a>&nbsp;seperti badan pengawas obat/makanan,&nbsp;<a href=\"http://id.wikipedia.org/wiki/Rumah_sakit\">rumah sakit</a>, industri farmasi, industri&nbsp;<a href=\"http://id.wikipedia.org/wiki/Obat_tradisional\">obat tradisional</a>,&nbsp;<a href=\"http://id.wikipedia.org/wiki/Apotek\">apotek</a>, dan di berbagai sarana kesehatan.</p>\r\n', '2019-02-15 04:06:41', 14, 'Farmasi', 6, 'f42daf0149d706bd0d5ce97c98c70416.jpg', 5, 'Raditya damaris', 0, 'sejarah-farmasi-part-2'),
(36, 'Buku Harian Sinta', '<p>Smk Insan Aqilah 4 mengikuti lomba film yang berjudul &quot; Buku Harian Sinta&quot;.Film tersebut selesai digarap sampai 1 bulan setengah sama dengan editing filmnya.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"320\" height=\"345\" src=\"https://www.youtube.com/embed/TztFrSU5Jd0\">\r\n</iframe>\r\n', '2019-02-20 01:20:04', 16, 'Umum', 31, '1cd33d5dd20f8c543230b93acb3b0aba.jpg', 8, 'Raditya Damaris', 0, 'buku-harian-sinta'),
(37, 'Sejarah Multimedia part 3', '<p>Multimedia technology is combine computer hardware and software with electronics technology, developing along with using most multimedia technology in aspect activity. Multimedia CBT application is hoped will help BAPEDALDA duty to presentation or visualization : sampling technique, procedure, laboratory tools visualization, laboratory analyst technique which follow role of government with understanding laboratory environment to accurate data result, than it&rsquo;s can give precise information to community who need it. This activity is cooperation informatic division in Indonesian Institute of sciences with BAPEDALDA east java.<br />\r\n<br />\r\n<strong>Intisari</strong><br />\r\nTeknologi Multimedia merupakan perpaduan dari teknologi komputer baik perangkat keras maupun perangkat lunak dengan teknologi elektronik, perkembangan serta pemanfaatan teknologi multimedia banyak digunakan hampir diseluruh aspek kegiatan.<br />\r\nPada aplikasi multimedia CBT ini diharapkan akan membantu dalam tugas &ndash; tugas Bapedalda dalam mempersentasikan atau memvisualisasikan: teknik &ndash; teknik sampling, prosedur &ndash; prosedur, visualisai peralatan lab, teknik analisis laboratorium yang diikuti dengan aturan pemerintah dll, serta tentang pemahaman peran laboratorium lingkungan dalam menghasilkan data &ndash; data yang akurat, sehingga dapat memberikan informasi yang tepat bagi masyarakat yang membutuhkannya.<br />\r\nKegiatan ini merupakan kerjasama Pusat Penelitian Pengembangan Informatika dan Ilmu Komputer (PUSLITBANG INKOM) &ndash; LIPI dengan Badan Pengendalian Dampak Lingkungan Hidup Daerah (BAPEDALDA) - Jawa Barat<br />\r\n<br />\r\n<strong>Pendahuluan</strong><br />\r\nLahirnya teknologi multimedia adalah hasil dari perpaduan kemajuan teknologi elektronik, teknik komputer dan perangkat lunak. Kemampuan penyimpanan dan pengolahan gambar digital dalam belasan juta warna dengan resolusi tinggi serta reproduksi suara maupun video dalam bentuk digital, Multimedia merupakan konsep dan teknologi dari unsur - unsur gambar, suara, animasi serta video disatukan didalam komputer untuk disimpan, diproses dan disajikan guna membentuk interaktif yang sangat inovatif antara komputer dengan user, Bila dibandingkan dengan informasi dalam bentuk teks (huruf dan angka) yang umumnya terdapat pada komputer saat ini, tentu informasi dalam bentuk multimedia yang dapat diterima dengan kedua indra penglihatan manusia dalam bentuk yang sesuai dengan aslinya atau dalam dunia yang sesungguhnya (reality).<br />\r\n<br />\r\nGuna lebih meningkatkan pemahaman akan peran laboratorium lingkungan dan penguasaan materi yang berkenaan dengan laboratorium lingkungan di tingkat pelaksana (kabupaten atau kota) seperti : jenis alat, materi, bahan, prosedur kerja dan lain &ndash; lain diperlukan suatu media yang efektif yang dapat menyampaikan informasi.<br />\r\nSalah satu media informasi yang paling elektif adalah media visualisasi multimedia computer base training (CBT) dalam CDROM yang dijalankan diatas perangkat komputer, dengan konsep multimedia CBT, informasi yang ditampilkan secara efektif dan atraktif, sehingga penyerapan informasi oleh penguna menjadi lebih baik.<br />\r\nDalam hal ini Bapedalda Jawa Barat memahami betapa pentingnya laboratorium lingkungan dalam pengeloaan lingkungan terutama dalam menghasilkan data &ndash; data yang akurat, sehingga dapat memberikan informasi yang tepat dalam pengambilan keputusan.&nbsp;<br />\r\n<br />\r\n<strong>Pengembangan Multimedia CBT</strong><br />\r\nDalam Pengembangan Multimedia CBT Laboratorium Lingkungan melalui tahapan &ndash; tahapan diantaranya:<br />\r\n1. Penentuan tujuan pengembangan aplikasi dan persyaratan aplikasi<br />\r\nTujuan dan manfaat yang dicapai dengan pengembangan Multimedia CBT laboratorium lingkungan ini adalah :<br />\r\n&bull; Meningkatkan kesadaran aparat, instansi terkait serta tentang pentingnya suatu laboratorium lingkungan dalam mendukung kegiatan khususnya dalam hal mendapatkan suatu validitas data;<br />\r\n&bull; Tersedianya paket presentasi atraktif terpadu dari beberapa masalah yang lazim terjadi di daerah yang pada akhirnya dapat disadari akan pentingnya &ldquo;good laboratory practice?;<br />\r\n&bull; Tersedianya suatu panduan laboratorium lingkungan dalam bentuk visualisasi elektronic yang berisikan peraturan, prosedure kerja, alat &ndash; alat laboratorium dan pratik pengukuran terhadap paramenter yang lazim digunakan;<br />\r\n&bull; Tersedianya stock foto slide yang akraktif dan cukup baik dan dapat dipergunakan sekaligus dalam pembuatan layanan masyarakat.<br />\r\n2. Perancangan aplikasi/disain<br />\r\n3. Pembuatan storyboards (alur jalannya aplikasi multimedia)<br />\r\n4. Pembuatan/Pengolahan data &ndash;data digital, mencakup hal &ndash; hal seperti:<br />\r\n- penentuan jenis data digital yg hendak ditampilkan<br />\r\n- pembuatan dan pengumpulkan materi yang diperlukan<br />\r\n- Digitasi<br />\r\n- Pengolahan data digital dan konversi format data digital<br />\r\n5. Pemrograman aplikasi dengan menggunakan Multimedia Authoring System<br />\r\n6. Pengujian aplikasi<br />\r\n7. Distribusi aplikasi<br />\r\n8. Pemeliharaan aplikasi [1]<br />\r\n<br />\r\nPada tahapan &ndash; tahapan ini menghasilkan suatu aplikasi Multimedia CBT laboratorium lingkungan yang dapat dapat dijalankan langsung dari sebuah CDROM pada perangkat komputer berkemampuan multimedia yang memiliki karakteristik utama, meliputi sebagai berikut :<br />\r\n1. Animasi logo Pemda Jawa Barat pada pembukaan<br />\r\n2. Data tentang laboratorium lingkungan di wilayah Jawa Barat<br />\r\n3. Referensi dasar hukum dari laboratorium lingkungan yang lengkap : SK.Gubernur, Kep.Men.Lingkungan hidup<br />\r\n4. Video klip tentang teknik sampling air<br />\r\n5. Video klip yang menggambarkan beberapa proses analisa<br />\r\nSeperti pada gambar 1.Logo menu awal dari Multimedia CBT</p>\r\n', '2019-03-06 06:40:32', 15, 'Multimedia', 2, '7366af495bf32f518efd4ec551461356.jpg', 8, 'Raditya Damaris', 0, 'sejarah-multimedia-part-3'),
(38, 'Sejarah Farmasi part 3', '<h1>Farmasi Industri</h1>\r\n\r\n<p>Perkembangan ilmu pengetahuan dan teknologi telah mewarnai pengembangan obat-obatan terutama dalam bidang formulasi, teknologi produksi, dan teknik pengawasan mutu obat yang telah melibatkan aplikasi peralatan dan metode yang semakin canggih dan kompleks.</p>\r\n\r\n<p><a href=\"http://i2.wp.com/www.artikelfarmasi.com/wp-content/uploads/2016/07/farmasi-industri.jpg\"><img alt=\"farmasi industri\" src=\"http://i2.wp.com/www.artikelfarmasi.com/wp-content/uploads/2016/07/farmasi-industri.jpg?resize=300%2C225\" style=\"height:225px; width:300px\" /></a>Hal ini juga telah diikuti dengan perkembangan regulasi dalam bidang kefarmasian, khususnya regulasi dalam bidang industri. Proses globalisasi dalam berbagai dimensi kehidupan, juga berdampak terhadap terjadinya globalisasi dalam bidang farmasi melalui harmonisasi pada tingkat regional dan global.</p>\r\n\r\n<p>Menghadapi tantangan ini, dibutuhkan tenaga-tenaga farmasis profesional yang memiliki bekal kemampuan untuk mengatasi berbagai masalah yang dihadapi industri farmasi. Kemampuan yang dituntut dari seorang farmasis oleh industri farmasi dewasa ini hanya dapat dipenuhi melalui pemberian dasar keilmuan kefarmasian yang kokoh, yang difokuskan pada aspek-aspek yang berhubungan dengan aspek produksi dan pengawasan mutu obat.</p>\r\n\r\n<p><strong>Peran Apoteker dalam Farmasi Industri sbb:</strong></p>\r\n\r\n<p><strong>Produksi</strong><br />\r\nBagian produksi bertugas untuk menjalankan proses produksi sesuai prosedur yang telah ditetapkan dan sesuai dengan ketentuan CPOB dan cGMP terbaru dan harus selalu update karena obat merupakan komoditi yang memerlukan perlakuan khusus dari mulai bahan baku sampai pengemasan obat.</p>\r\n', '2019-03-06 06:46:41', 14, 'Farmasi', 6, '651bc9547c5f597d3c5538d20502dcd9.png', 8, 'Raditya Damaris', 0, 'sejarah-farmasi-part-3'),
(39, 'Wisuda SMK Insan Aqilah 4 Jakarta', '<p>Puji Syukur kehadirat Allah SWT. pada tahun pelajaran 2017/2018 SMK Insan Aqilah 4 Jakarta melaksanakan acara Pengukuhan dan Pelepasan siswa-siswi berlokasi di Aula Villa Pram Cisarua, Puncak, Bogor, Jawa Barat. Semoga lulusan SMK Insan Aqilah 4 Jakarta dapat menjadi lulusan yang berguna bagi masyarakat, bangsa, dan agama, serta dapat menjaga nama baik sekolah. SMK Insan Aqilah 4 Jakarta &quot;Bisa&quot;.</p>\r\n\r\n\r\n<p>&nbsp;</p>\r\n<iframe width=\"320\" height=\"345\" src=\"https://www.youtube.com/embed/2iSRPlgY0IY\">\r\n</iframe>\r\n', '2019-03-13 05:12:16', 17, 'Acara', 8, '46feea182b94359a5a863e105eacde0b.JPG', 8, 'Raditya Damaris', 0, 'wisuda-smk-insan-aqilah-4-jakarta'),
(40, 'UNBK', '<p>UNBK telah usai, lanjut persiapkan untuk UPK dan UKK terus belajar semoga bagus hasil nya.. Semangat<br />\r\nAamiinn<br />\r\n<a href=\"https://www.facebook.com/hashtag/smkbisa?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARDIBMTvtfftbS2A4xrUqfj9QAllItf6qWAUmxPSmiQkF2r5ntEB4uBE-dgf8YsjKiMftbRpI3xS8E5ARe0R5zeWAgxpXkp7o_4gS3ItOs2T507ZwtI2T45qspAPCED_gygsOyzLlHJLzerUQ4I6jyTluEe7pUO1SAEVNtbgoTnQKYgCMxXuM4IImp00cpU-gZDRvOpgxctXWcuGXtkjwG-rfWIGpn6Ow1OaiHj9B31B5BJZltKSk3rT-5H1xuBsEWZtwL9mTOjI-d0PiSzLglwXpj3XFMQrDB2VGBtTFUKYgZz7P3BHtoeyEXYvNn8vF16hNrTlIpQl8tnJGvgPQ_Y&amp;__tn__=%2ANK-R\">#SMKBISA</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/farmasi?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARDIBMTvtfftbS2A4xrUqfj9QAllItf6qWAUmxPSmiQkF2r5ntEB4uBE-dgf8YsjKiMftbRpI3xS8E5ARe0R5zeWAgxpXkp7o_4gS3ItOs2T507ZwtI2T45qspAPCED_gygsOyzLlHJLzerUQ4I6jyTluEe7pUO1SAEVNtbgoTnQKYgCMxXuM4IImp00cpU-gZDRvOpgxctXWcuGXtkjwG-rfWIGpn6Ow1OaiHj9B31B5BJZltKSk3rT-5H1xuBsEWZtwL9mTOjI-d0PiSzLglwXpj3XFMQrDB2VGBtTFUKYgZz7P3BHtoeyEXYvNn8vF16hNrTlIpQl8tnJGvgPQ_Y&amp;__tn__=%2ANK-R\">#Farmasi</a>&nbsp;<a href=\"https://www.facebook.com/hashtag/multimedia?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARDIBMTvtfftbS2A4xrUqfj9QAllItf6qWAUmxPSmiQkF2r5ntEB4uBE-dgf8YsjKiMftbRpI3xS8E5ARe0R5zeWAgxpXkp7o_4gS3ItOs2T507ZwtI2T45qspAPCED_gygsOyzLlHJLzerUQ4I6jyTluEe7pUO1SAEVNtbgoTnQKYgCMxXuM4IImp00cpU-gZDRvOpgxctXWcuGXtkjwG-rfWIGpn6Ow1OaiHj9B31B5BJZltKSk3rT-5H1xuBsEWZtwL9mTOjI-d0PiSzLglwXpj3XFMQrDB2VGBtTFUKYgZz7P3BHtoeyEXYvNn8vF16hNrTlIpQl8tnJGvgPQ_Y&amp;__tn__=%2ANK-R\">#Multimedia</a></p>\r\n', '2019-04-01 03:53:17', 16, 'Umum', 10, 'db7bc3e29d8d18b9548e651fccb3c854.jpg', 1, 'Ali Yasin', 0, 'unbk');
INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(41, 'UPK Farmasi', '<p>Alhamdulillah UPK Farmasi pada tanggal 8 April 2019 telah&nbsp;selesai, terimakasih untuk para asesor, pengawas bidang SMK, serta pantia UPK yang telah mensukseskan UPK tahun pelajaran 2018/2019, dan untuk siswa siswi farmasi selamat yg telah menjalankan UPK dengan lancar, semoga lulus 100% Aamiin<br />\r\n<a href=\"https://web.facebook.com/hashtag/smkbisa?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#SMKbisa</a><br />\r\n<a href=\"https://web.facebook.com/hashtag/lulus100?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#Lulus100</a>%<br />\r\n<a href=\"https://web.facebook.com/hashtag/smkinsanaqilah4?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#Smkinsanaqilah4</a><br />\r\n<a href=\"https://web.facebook.com/hashtag/grogolpetamburan?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#Grogolpetamburan</a><br />\r\n<a href=\"https://web.facebook.com/hashtag/upk?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#UPK</a><br />\r\n<a href=\"https://web.facebook.com/hashtag/lsp?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#LSP</a><br />\r\n<a href=\"https://web.facebook.com/hashtag/apmfi?source=feed_text&amp;epa=HASHTAG&amp;__xts__%5B0%5D=68.ARCb9pf7MK0b3C2spceOnRn6_GEOFELIl_qSrrriIfvAcpuGoSwlfICAkKljpXqlhqDZKMTHD-XxCxM9CZ8xmw2FBxTc88VZTkna0E4CFn2Y6RBCKrG9DSM9UI2yUMJB0bTaN0qM2M0cqOyTm1mxN3bDZZeLgeomGD0F1hHmDGsSbaz6kNeBRRUqDdXyNgrKCOkpF895BNYfJVMfdhEsEqxfqAam5J0B145RjYERsJvahLXjSivFOO0clgAVpHxBn2uAj-uTssdZc_QQLzfqcT1G4pkdMuCqqZGOW45mJ-WpxT7aOIa4En8wRQvdznE8-NgXxfp6KVhL7QGEkAQmR1I&amp;__tn__=%2ANK-R\">#APMFI</a><br />\r\n#2019</p>\r\n', '2019-04-10 14:18:09', 14, 'Farmasi', 10, '642cdbbeb4cdbf3c6ec038914ab197d0.jpg', 1, 'Ali Yasin', 0, 'upk-farmasi'),
(44, 'Halal Bihalal Silahturahmi Untuk Menjaga Kekompakan', '<p><em>Minal aidzin wal faidzin</em></p>\r\n\r\n<p><em>Mohon maaf lahir dan batin</em></p>\r\n\r\n<p><em>Semoga silahturahmi kita terjalin begitu erat</em><em>&nbsp;s</em><em>eperti butiran tasbih ...</em></p>\r\n\r\n<p><em>Dalam kebaikan budi, keikhlasan hati, dan kebajikan karya</em></p>\r\n', '2019-05-03 09:42:10', 17, 'Acara', 5, 'ccaeda459c50f77d03bf311ad20b5a0d.jpeg', 1, 'Ali Yasin', 0, 'halal-bihalal-silahturahmi-untuk-menjaga-kekompakan');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indeks untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indeks untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indeks untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indeks untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indeks untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indeks untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indeks untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indeks untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indeks untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indeks untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indeks untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indeks untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indeks untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indeks untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT untuk tabel `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT untuk tabel `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT untuk tabel `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1472;

--
-- AUTO_INCREMENT untuk tabel `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
