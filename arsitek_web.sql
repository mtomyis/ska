-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 29 Mar 2022 pada 02.04
-- Versi server: 10.5.15-MariaDB-cll-lve
-- Versi PHP: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `arsitek_web`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_riwayat`
--

CREATE TABLE `daftar_riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenispengalaman` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `posisi_penugasan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_personil` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_tgl_lahir` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_non` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tmp_tgl_pembuatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pembuat_pernyataan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `menyetujui` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `daftar_riwayat`
--

INSERT INTO `daftar_riwayat` (`id`, `jenispengalaman`, `posisi_penugasan`, `nama_perusahaan`, `nama_personil`, `tmp_tgl_lahir`, `pendidikan`, `pendidikan_non`, `tmp_tgl_pembuatan`, `pembuat_pernyataan`, `menyetujui`, `created_at`, `updated_at`) VALUES
(16, '2', 'Tenaga Ahli Mekanikal', 'PT. MAHAKARYA ABADI KONSULTAN', 'Ir. DJAMRUD MANGESTU PUTRO', NULL, 'Universitas Islam Malang Tahun 2003', 'Sertifikat Keahlian ASTEKINDO', 'Banyuwangi, 12 Februari 2021', 'Ir. DJAMRUD MANGESTU PUTRO', NULL, '2021-02-27 00:41:22', '2021-02-27 00:41:22'),
(17, '2', 'Tenaga Ahli Bangunan Gedung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-02-28 18:24:16', '2021-02-28 18:24:16'),
(18, '2', 'Tenaga Ahli Bangunan Gedung', 'PT. CONCEPT DESIGN ARCHITECT', 'BAMBANG SUDARWANTO, ST.', NULL, 'S1 Jurusan Teknik Sipil Universitas Darul’ulum Tahun 2007', 'Sertifikat Keahlian GATAKI', 'Jakarta, 10 Februari 2021', 'BAMBANG SUDARWANTO, ST.', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-02-28 18:29:40', '2021-02-28 18:29:40'),
(19, '2', 'Tenaga Ahli Mekanikal', 'PT. CONCEPT DESIGN ARCHITECT', 'BAMBANG SUDARWANTO, ST.', NULL, 'S1 Jurusan Teknik Sipil Universitas Darul’ulum Tahun 2007', 'Sertifikat Keahlian GATAKI', 'Jakarta, 10 Februari 2021', NULL, 'MOCH. YUSUF KURNIAWAN, ST.', '2021-02-28 18:35:09', '2021-02-28 18:35:09'),
(20, '2', 'Inspector Mekanikal dan Elektrikal', 'PT. CONCEPT DESIGN ARCHITECT', 'RENDRA BAYU ALWANA, ST', 'Banyuwangi, 29 Januari 1989', 'Universitas ABC', 'Sertifikat Keahlian LPJK', 'Jakarta, 10 Februari 2021', NULL, 'MOCH. YUSUF KURNIAWAN, ST.', '2021-02-28 18:38:06', '2021-02-28 18:38:06'),
(21, '2', 'Inspector K3', 'PT. MAHAKARYA ABADI KONSULTAN', 'ARIF CAHYONO, ST', 'Banyuwangi, 22 November 1978', 'S1 Jurusan Teknik Sipil Universitas Darul’ulum Tahun 2007', 'Sertifikat Keahlian GATAKI', 'Banyuwangi, 03 September 2019', 'ARIF CAHYONO, ST', 'WARSITO, ST', '2021-02-28 18:48:41', '2021-02-28 18:48:41'),
(22, '2', 'Administrasi', 'PT. CONCEPT DESIGN ARCHITECT', 'Wahyu', 'Banyuwangi, 22 November 1978', 'S1 Teknik Arsitektur Institut Teknologi Sepuluh November Tahun 1991', 'Sertifikat Keahlian GATAKI', 'Banyuwangi, 10 Februari 2021', 'Wahyu', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-02-28 18:51:30', '2021-02-28 18:51:30'),
(23, '2', 'CAD Operator', 'PT. CONCEPT DESIGN ARCHITECT', 'ARIF CAHYONO, ST', 'Banyuwangi, 29 Januari 1989', 'Institut Teknologi Sepuluh November Tahun 2004', 'Sertifikat Keahlian ASTEKINDO', 'Jakarta, 10 Februari 2021', 'ARIF CAHYONO, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-02-28 19:11:54', '2021-02-28 19:11:54'),
(24, '2', 'Surveyor', 'PT. CONCEPT DESIGN ARCHITECT', 'ARIF CAHYONO, ST', 'Banyuwangi, 22 November 1978', 'S1 Teknik Arsitektur Institut Teknologi Sepuluh November Tahun 1991', 'Sertifikat Keahlian GATAKI', 'Banyuwangi, 03 September 2019', 'ARIF CAHYONO, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-02-28 23:35:30', '2021-02-28 23:35:30'),
(25, '2', 'Tenaga Ahli Bangunan Gedung', 'PT. BUANA REKAYASA ADHIGANA', 'ARIF CAHYONO, ST', 'Banyuwangi, 22 November 1978', 'S1 Teknik Arsitektur Institut Teknologi Sepuluh November Tahun 1991', '-', 'Banyuwangi, 10 Februari 2021', 'ARIF CAHYONO, ST', 'WARSITO, ST', '2021-03-01 19:27:52', '2021-03-01 19:27:52'),
(26, '2', 'Tenaga Ahli Mekanikal', 'PT. CONCEPT DESIGN ARCHITECT', 'FITRIYA KURNIAWATI H, ST', 'Banyuwangi, 22 November 1978', 'Universitas Islam Malang Tahun 2003', 'Sertifikat Keahlian LPJK', 'Jakarta, 10 Februari 2021', 'FITRIYA KURNIAWATI H, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-01 20:09:04', '2021-03-01 20:09:04'),
(27, '2', 'Tenaga Ahli Mekanikal', 'PT. CONCEPT DESIGN ARCHITECT', 'FITRIYA KURNIAWATI H, ST', 'Banyuwangi, 22 November 1978', 'Universitas Islam Malang Tahun 2003', 'Sertifikat Keahlian LPJK', 'Jakarta, 10 Februari 2021', 'FITRIYA KURNIAWATI H, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-01 20:13:59', '2021-03-01 20:13:59'),
(28, '2', 'Asisten Tenaga Ahli K3', 'PT. CONCEPT DESIGN ARCHITECT', 'Wahyu', 'Banyuwangi, 04 Juni 1971', 'S1 Teknik Arsitektur Institut Teknologi Sepuluh November Tahun 1991', 'LPJK', 'Jakarta, 10 Februari 2021', 'Wahyu', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-02 18:58:10', '2021-03-02 18:58:10'),
(29, '2', 'Pengawas Utilitas dan ME', 'PT. IYYAKA ESTETIKA DESAIN', 'pengawasan', 'Banyuwangi, 29 Januari 1989', 'Universitas ABC', 'Sertifikat Keahlian LPJK', 'Banyuwangi, 12 Februari 2021', 'pengawasan', 'Ir. Wahyu', '2021-03-02 19:20:52', '2021-03-02 19:20:52'),
(30, '2', 'Tenaga Ahli Bangunan Gedung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-03 00:12:01', '2021-03-03 00:12:01'),
(31, '2', 'Tenaga Ahli Bangunan Gedung', 'PT. BUANA REKAYASA ADHIGANA', 'ARIF CAHYONO, ST', 'Banyuwangi, 22 November 1978', 'S1 Teknik Arsitektur Institut Teknologi Sepuluh November Tahun 1991', 'Sertifikat Keahlian ASTEKINDO', 'Jakarta, 10 Februari 2021', 'ARIF CAHYONO, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-03 00:12:24', '2021-03-03 00:12:24'),
(32, '2', 'Tenaga Ahli Bangunan Gedung', 'PT. CONCEPT DESIGN ARCHITECT', 'FITRIYA KURNIAWATI H, ST', 'Banyuwangi, 04 Juni 1971', 'S1 (Sarjana) Universitas Merdeka Malang Tahun 1998', 'Sertifikat Keahlian GATAKI', 'Jakarta, 10 Februari 2021', 'FITRIYA KURNIAWATI H, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-03 21:25:28', '2021-03-03 21:25:28'),
(33, '2', 'Surveyor', 'PT. CONCEPT DESIGN ARCHITECT', 'Wahyu', 'Banyuwangi, 29 Januari 1989', 'Universitas ABC', 'Sertifikat Keahlian ASTEKINDO', 'Banyuwangi, 03 September 2019', 'Wahyu', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-12 23:59:05', '2021-03-12 23:59:05'),
(34, '2', 'Tenaga Ahli Mekanikal', 'PT. BUANA REKAYASA ADHIGANA', 'FITRIYA KURNIAWATI H, ST', 'Banyuwangi, 22 November 1978', 'S1 Teknik Arsitektur Institut Teknologi Sepuluh November Tahun 1991', 'Sertifikat Keahlian LPJK', 'Banyuwangi, 03 September 2019', 'FITRIYA KURNIAWATI H, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-13 02:11:13', '2021-03-13 02:11:13'),
(35, '2', 'Ahli Arsitek', 'PT. BUANA REKAYASA ADHIGANA', 'FITRIYA KURNIAWATI H, ST', 'Banyuwangi, 29 Januari 1989', 'Institut Teknologi Sepuluh November Tahun 2004', '-', 'Jakarta, 10 Februari 2021', 'FITRIYA KURNIAWATI H, ST', 'BAMBANG TAIDI, ST', '2021-03-14 23:37:05', '2021-03-14 23:37:05'),
(36, '2', 'Administrasi', 'PT. CONCEPT DESIGN ARCHITECT', 'ARIF CAHYONO, ST', 'Banyuwangi, 04 Juni 1971', 'Universitas ABC', 'Sertifikat Keahlian LPJK', 'Banyuwangi, 03 September 2019', 'ARIF CAHYONO, ST', 'MOCH. YUSUF KURNIAWAN, ST.', '2021-03-14 23:52:18', '2021-03-14 23:52:18'),
(37, '2', 'Tenaga Ahli Bangunan Gedung', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-04-06 00:37:34', '2021-04-06 00:37:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `home`
--

CREATE TABLE `home` (
  `id_home` int(255) NOT NULL,
  `moto_web_h1` tinytext DEFAULT NULL,
  `moto_web_h2` tinytext DEFAULT NULL,
  `moto_layanan_kami` tinytext DEFAULT NULL,
  `deskripsi_perencanaan` tinytext DEFAULT NULL,
  `deskripsi_pengawasan` tinytext DEFAULT NULL,
  `img_banner` tinytext DEFAULT NULL,
  `moto_about_us` tinytext DEFAULT NULL,
  `deskripsi_about_us` tinytext DEFAULT NULL,
  `img_about_us_besar` tinytext DEFAULT NULL,
  `img_about_us_kecil` tinytext DEFAULT NULL,
  `moto_perusahaan` tinytext DEFAULT NULL,
  `moto_team_work` tinytext DEFAULT NULL,
  `moto_portofolio` tinytext DEFAULT NULL,
  `bg_atas` tinytext DEFAULT NULL,
  `bg_bawah` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `home`
--

INSERT INTO `home` (`id_home`, `moto_web_h1`, `moto_web_h2`, `moto_layanan_kami`, `deskripsi_perencanaan`, `deskripsi_pengawasan`, `img_banner`, `moto_about_us`, `deskripsi_about_us`, `img_about_us_besar`, `img_about_us_kecil`, `moto_perusahaan`, `moto_team_work`, `moto_portofolio`, `bg_atas`, `bg_bawah`) VALUES
(1, 'Think <span>Creative Turn</span>', 'Ideas Into Life', 'Membangun Kepercayaan Dengan Karya Terbaik 2020', '         Ini adalah contoh deskripsi perencanaan pada web concept design architect banyuwangi       ', '                        Ini adalah contoh deskripsi pengawasan pada web concept design architect banyuwangi                      ', 'http://ds.konseparsitek.com/upload/home/03250717201953.png', 'Ini adalah moto about us', '                Ini adalah conto deskripsi dari section about as              ', 'http://ds.konseparsitek.com/upload/about_us/03250718201916.png', 'http://ds.konseparsitek.com/upload/about_us/03250718201925.png', 'Berpengalaman </br> Dan Kompeten', 'Ini adalah moto team work', 'Ini adalah moto portofolio', 'http://konseparsitek.com/aset/img/banner_overlay_2.png', 'http://konseparsitek.com/aset/img/banner_overlay_1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kop_surat`
--

CREATE TABLE `kop_surat` (
  `id` int(11) NOT NULL,
  `nama` varchar(500) NOT NULL,
  `gambar` varchar(500) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kop_surat`
--

INSERT INTO `kop_surat` (`id`, `nama`, `gambar`) VALUES
(1, 'Kejaksaan Negeri Kabupaten Gorontalo', 'Kejaksaan Negeri Kabupaten Gorontalo.JPG'),
(2, 'Kementerian Hukum Dan Ham R.I Kantor Wilayah Maluku Lembaga Pembinaan Khusus Anak Kelas II Ambon', 'Kementerian Hukum Dan Ham R.I Kantor Wilayah Maluku Lembaga Pembinaan Khusus Anak Kelas II Ambon.JPG'),
(3, 'Kementerian Pekerjaan Umum dan Perumahan Rakyat Direktorat Jenderal Penyedian Perumahan Snvt Penyediaan Perumahan Provinsi Sulawesi Selatan Pejabat Pembuat Komitmen Rumah Susun Dan Rumah Khusus', 'Kementerian Pekerjaan Umum dan Perumahan Rakyat Direktorat Jenderal Penyedian Perumahan Snvt Penyediaan Perumahan Provinsi Sulawesi Selatan Pejabat Pembuat Komitmen Rumah Susun Dan Rumah Khusus.JPG'),
(4, 'Pemerintah Kabupaten Gorontalo Dinas Kesehatan', 'Pemerintah Kabupaten Gorontalo Dinas Kesehatan.JPG'),
(5, 'Pemerintah Kabupaten Sinjai Dinas Perdagangan Perindustrian Energi dan Sumber Daya Mineral', 'Pemerintah Kabupaten Sinjai Dinas Perdagangan Perindustrian Energi dan Sumber Daya Mineral.JPG');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2020_04_01_013728_create_tenaga_ahlis_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawasan_air`
--

CREATE TABLE `pengawasan_air` (
  `id` int(20) NOT NULL,
  `fk_idposisi_penugasan` varchar(20) NOT NULL,
  `keterangan` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengawasan_air`
--

INSERT INTO `pengawasan_air` (`id`, `fk_idposisi_penugasan`, `keterangan`) VALUES
(1, '28', 'Memberikan bantuan pengawasan kepada KPA / Kuasa Pengguna Anggaran dan PPK / Pejabat'),
(2, '28', 'Pembuat Komitmen.'),
(3, '28', 'Membuat schedule kegiatan atau jadwal kegiatan pekerjaan.'),
(4, '28', 'Memonitor atau memantau progress pekerjaan yang dilakukan tenaga ahli.'),
(5, '28', 'Bertanggung jawab dalam melaksanakan supervisi langsung dan tidak langsung kepada semua karyawan yang berada di bawah tanggung jawabnya, antara lain memberikan pelatihan kepada karyawan agar dapat mencapai tingkat batas minimum kemampuan yang diperlukan bagi teamnya dan dapat menerapkan sikap disiplin kepada karyawan sesuai dengan peraturan yang berlaku di perusahaan.'),
(6, '28', 'Bertanggung jawab dalam melaksanakan koordinasi dalam membina kerja sama team yang solid.'),
(7, '28', 'Bertanggung jawab dalam mencapai suatu target pekerjaan yang telah ditetapkan dan sesuai dengan aturan.'),
(8, '28', 'Mengkoordinir seluruh aktifitas Tim dalam mengelola seluruh kegiatan baik dilapangan maupun dikantor.'),
(9, '28', 'Bertanggung jawab terhadap pemberi pekerjaan yang berkaitan terhadap kegiatan tim pelaksana pekerjaan.'),
(10, '28', 'Membimbing dan Mengarahkan anggota team dalam mempersiapkan semua laporan yang diperlukan.'),
(11, '33', 'Melaksanakan pekerjaan pengawasan secara umum, pengawasan lapangan, koordinasi dan inspeksi kegiatan–kegiatan pembangunan agar pelaksanaan teknis maupun administrasi teknis yang dilakukan dapat secara terus menerus sampai dengan pekerjaan diserahkan untuk kedua kalinya. '),
(12, '33', 'Mengawasi kebenaran ukuran, kualitas dan kuantitas dari bahan atau komponen bangunan, peralatan dan perlengkapan selama pekerjaan pelaksanaan di lapangan atau ditempat kerja lainnya. '),
(13, '33', 'Mengawasi kemajuan pelaksanaan dan mengambil tindakan yang tepat dan cepat, agar batas waktu pelaksanaan minimal sesuai dengan jadwal yang ditetapkan. '),
(14, '33', 'Memberikan masukkan pendapat teknis tentang penambahan atau pengurangan biaya dan waktu pekerjaan serta berpengaruh pada ketentuan kontrak, untuk mendapatkan persetujuan dari Pengguna Jasa. '),
(15, '33', 'Memberikan petunjuk, perintah sejauh tidak mengenai pengurangan dan penambahan biaya dan waktu pekerjaan serta tidak menyimpang dari kontrak, dapat langsung disampaikan kepada pemborong, dengan pemberitahuan tertulis kepada Pengelola Proyek. '),
(16, '33', 'Memberikan bantuan dan petunjuk kepada Pemborong dalam mengusahakan perijinan sehubungan dengan pelaksanaan pembangunan.'),
(17, '47', 'Mengawasi dan meliputi ketetapan dari semua pengukuran/rekayasa lapangan yang dilakukan oleh kontraktor dengan maksud agar pimpro memungkinkan untuk menentukan hal-hal yang diperlukan menyangkut pekerjaan pengembalian kondisi dan memonitor terperinci.'),
(18, '47', 'Melakukan pengawasan yang terus menerus atas pelaksanaan pekerjaan, termasuk secara teratur memeriksa pekerjaan pada semua lokasi dilapangan. Dimana pekerjaan kontruksi sedang dilaksanakan serta memberi penjelasan tertulis kepada kontraktor dengan maksud agar menjadi jelas apa yang sebenarnya dituntut dalam pekerjaan tersebut bila dalam kontrak hanya dinyatakan secara umum.'),
(19, '47', 'Menjamin bahwa kontraktor memahami isi Dokumen Koontrak secara benar, melaksanakan pekerjaannya sesuai dengan spesifikasi serta gambar-gambar dan kontraktor menetapkan teknik pelaksanaan kontruksi yang tepat/cocok dengan keadaan lapangan untuk berbagai macam kegiatan pekerjaan.'),
(20, '47', 'Membuat rekomendasi kepada pimpro untuk menerima atau menolak pekerjaan dan material yang mutunya diragukan.'),
(21, '47', 'Mencatat kemajuan pekerjaan setiap hari yang dicapai kontraktor pada lembaran rencana kemajuan pekerjaan (Progress Schedule) yang telah disetujui.'),
(22, '47', 'Memonitor dengan teliti semua kuantitas hasil pengukuran yang disampaikan oleh Inspektor dan ikut serta dalam pelaksanaan pengukuran kuantitas akhir dari setiap pekerjaan yang telah selesai.'),
(23, '47', 'Memberi rekomendasi kepada pimpro yang menyangkut mutu dan jumlah pekerjaan yang telah selesai dan memeriksa kebenaran dari setiap spesifikasi pembayaran bulanan kontraktor (Monthly Payment Certificate).'),
(24, '47', 'Memeriksa AS Built Drawing yang akurat dan terbaru serta mengawasi/memeriksa pembuatan gambar-gambar lainnya yang diperlukan.'),
(25, '47', 'Menyusun / memelihara arsip korespondensi proyek. Laporan Mingguan, bagan Kemajuan Pekerjaan, Pengukuran dan lain-lain.'),
(26, '47', 'Membuat laporan bulanan mengenai kemajuan fisik dan keuangan dari proyek yang ada dibawah wewenangnya dan menyerahkan kepada pimpro serta kepada instansi terkait tepat pada waktunya'),
(27, '48', 'Mengawasi dan memeriksa hasil pekerjaan yang di Jasa Pemborongan;'),
(28, '48', 'Mengkoordinasikan Penyedia Jasa Pemborongan berkaitan dengan masalah utilitas umum dan jenis tanah;'),
(29, '48', 'Membuat sistem pengarsipan yang baik, antara lain : menyimpan tanda terima, dan memeliharanya sebagai catatan tetap, jaminan yang dibutuhkan menurut syarat kontrak yang ada dalam kegiatan;'),
(30, '48', 'Mempersiapkan As Built Drawing semua pekerjaan sipil termasuk detail-detailnya;'),
(31, '48', 'Melakukan survey selama pelaksanaan berlangsung bekerja sama dengan Spesial Technician untuk mengkonfirmasikan hasil survey dari Penyedia jasa Pemborongan;'),
(32, '48', 'Mencatat jadwal progres yang up to date dan membantu Pejabat Pembuat Komitmen dengan data pembayaran dan fisik pada saat diperlukan;'),
(33, '48', 'Mengawasi pekerjaan pembangunan dan perbaikan, dan lain-lain dan membantu mengambil keputusan yang cepat dan tepat apabila terjadi penyimpangan.'),
(34, '49', 'Menerapkan ketentuan peraturan perundang-undangan tentang dan terkait K3 Konstruksi'),
(35, '49', 'Mengelola dokumen kontrak dan metode kerja pelaksanaan konstruksi'),
(36, '49', 'Mengelola program K3'),
(37, '49', 'Mengevaluasi prosedur dan instruksi kerja penerapan ketentuan K3'),
(38, '49', 'Melakukan sosialisasi, penerapan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3'),
(39, '49', 'Mengelola laporan penerapan SMK3 dan pedoman teknis K3 konstruksi'),
(40, '49', 'Mengelola metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan'),
(41, '49', 'Mengelola penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat.'),
(42, '3', 'Mengawasi dan meliputi ketetapan dari semua pengukuran/rekayasa lapangan yang dilakukan oleh kontraktor dengan maksud agar pimpro memungkinkan untuk menentukan hal-hal yang diperlukan menyangkut pekerjaan pengembalian kondisi dan memonitor terperinci.'),
(43, '3', 'Melakukan pengawasan yang terus menerus atas pelaksanaan pekerjaan, termasuk secara teratur memeriksa pekerjaan pada semua lokasi dilapangan. Dimana pekerjaan kontruksi sedang dilaksanakan serta memberi penjelasan tertulis kepada kontraktor dengan maksud agar menjadi jelas apa yang sebenarnya dituntut dalam pekerjaan tersebut bila dalam kontrak hanya dinyatakan secara umum.'),
(44, '3', 'Menjamin bahwa kontraktor memahami isi Dokumen Koontrak secara benar, melaksanakan pekerjaannya sesuai dengan spesifikasi serta gambar-gambar dan kontraktor menetapkan teknik pelaksanaan kontruksi yang tepat/cocok dengan keadaan lapangan untuk berbagai macam kegiatan pekerjaan.'),
(45, '3', 'Membuat rekomendasi kepada pimpro untuk menerima atau menolak pekerjaan dan material yang mutunya diragukan.'),
(46, '3', 'Mencatat kemajuan pekerjaan setiap hari yang dicapai kontraktor pada lembaran rencana kemajuan pekerjaan (Progress Schedule) yang telah disetujui.'),
(47, '3', 'Memonitor dengan teliti semua kuantitas hasil pengukuran yang disampaikan oleh Inspektor dan ikut serta dalam pelaksanaan pengukuran kuantitas akhir dari setiap pekerjaan yang telah selesai.'),
(48, '3', 'Memberi rekomendasi kepada pimpro yang menyangkut mutu dan jumlah pekerjaan yang telah selesai dan memeriksa kebenaran dari setiap spesifikasi pembayaran bulanan kontraktor (Monthly Payment Certificate).'),
(49, '3', 'Memeriksa AS Built Drawing yang akurat dan terbaru serta mengawasi/memeriksa pembuatan gambar-gambar lainnya yang diperlukan.'),
(50, '3', 'Menyusun / memelihara arsip korespondensi proyek. Laporan Mingguan, bagan Kemajuan Pekerjaan, Pengukuran dan lain-lain.'),
(51, '3', 'Membuat laporan bulanan mengenai kemajuan fisik dan keuangan dari proyek yang ada dibawah wewenangnya dan menyerahkan kepada pimpro serta kepada instansi terkait tepat pada waktunya'),
(52, '24', 'Menerima dan membaca data yang masuk dan mencocokkan dengan buku ekspedisi untuk mengetahui jumlahnya.'),
(53, '24', 'Menyiapkan komputer dan menghidupkannya ke posisi on agar siap dioperasikan.'),
(54, '24', 'Memasukkan dan menyimpan data ke dalam komputer agar data tersirnpan dengan baik.'),
(55, '24', 'Mencetak file dengan memasukkan kertas ke dalam printer agar menghasilkan cetakan sesuai yang diperlukan.'),
(56, '24', 'Menyerahkan hasil cetakan dan mencatat ke dalam buku ekspedisi untuk diparaf sebagai barang bukti penyerahan.'),
(57, '24', 'Membuat copy file ke dalam disket sebagai arsip data.'),
(58, '24', 'Mencari file yang diperlukan sesuai dengan disposisi pennintaan agar dapat dicetak.'),
(59, '24', 'Merawat file dan kornputer dengan menjaga dari pihak lain yang tidak berkepentingan agar terhindar dari kerusakan.'),
(60, '24', 'Melaporkan pelaksanaan dan hasil kegiatan kepada atasan sebagai pertanggungjawaban.'),
(61, '24', 'Melaksanakan tugas kedinasan lain yang diperintahkan oleh atasan baik lisan maupun tertulis untuk kelancaran pelaksanaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawasan_gedung`
--

CREATE TABLE `pengawasan_gedung` (
  `id` int(20) NOT NULL,
  `fk_idposisi_penugasan` varchar(20) NOT NULL,
  `keterangan` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengawasan_gedung`
--

INSERT INTO `pengawasan_gedung` (`id`, `fk_idposisi_penugasan`, `keterangan`) VALUES
(1, '3', 'Membuat schedule kegiatan atau jadwal kegiatan pekerjaan'),
(2, '3', 'Memonitor atau memantau progress pekerjaan yang dilakukan tenaga ahli'),
(3, '3', 'Bertanggung jawab dalam melaksanakan supervisi langsung dan tidak langsung kepada semua karyawan yang berada di bawah tanggung jawabnya, antara lain memberikan pelatihan kepada karyawan agar dapat mencapai tingkat batas minimum kemampuan yang diperlukan bagi teamnya dan dapat menerapkan sikap disiplin kepada karyawan sesuai dengan peraturan yang berlaku di perusahaan;'),
(4, '3', 'Bertanggung jawab dalam melaksanakan koordinasi dalam membina kerja sama team yang solid;'),
(5, '3', 'Bertanggung jawab dalam mencapai suatu target pekerjaan yang telah ditetapkan dan sesuai dengan aturan'),
(6, '3', 'Mengkoordinir seluruh aktifitas Tim dalam mengelola seluruh kegiatan baik dilapangan maupun dikantor'),
(7, '3', 'Bertanggung jawab terhadap Pemberi Pekerjaan yang berkaitan terhadap kegiatan tim pelaksana pekerjaan'),
(8, '3', 'Membimbing dan Mengarahkan anggota team dalam mempersiapkan semua laporan yang diperlukan'),
(9, '3', 'Melakukan pengecekan hasil pekerjaan yang telah dilaksanakan'),
(10, '3', 'Melaksanakan presentasi dengan direksi pekerjaan dan instansi terkait.'),
(11, '18', 'Melakukan koordinasi dengan Badan Lingkungan Hidup terkait penentuan izin lingkungan.'),
(12, '18', 'Menyusun laporan pemantauan lingkungan.'),
(13, '18', 'Bertanggung jawab atas keberhasilan pengawasanpelaksanaan pekerjaan dibidng teknik lingkungansesuai dengan ketentuan.'),
(14, '18', 'Bertanggung jawab atas ijin lingkungan dan dilaporkan kepada Direksi.'),
(15, '19', 'Bersama dengan perwakilan Direksi di lapangan (Pengawas Lapangan) mengijinkan kontraktor memulai pekerjaan di lapangan setelah kelengkapan persiapan pekerjaan sesuai metode pelaksanaan yang disepakati bersama pada surat permohonan memulai pekerjaan (Request) yang diajukan oleh kontraktor.'),
(16, '19', 'Merekomendasikan kepada Direksi melalui Team Leader penghentian pekerjaan Kontraktor di lapangan apabila pekerjaan Kontraktor tidak sesuai spektek.'),
(17, '19', 'Merekomendasikan kepada Direksi melalui Team Leader untuk menyetujui prestasi/progress pekerjaan di lapangan dengan menandatangani laporan .'),
(18, '19', 'Bertanggung jawab kepada Team Leader atas keberhasilan pengawasan pelaksanaan pekerjaan yang telah diawasi dari segi kwalitas, kwantitas, estetika dan tertib/tepat waktu administrasi sesuai ketentuan.'),
(19, '25', 'Membuat gambar pelaksanaan /gambar shop drawing.'),
(20, '25', 'Menyesuaikan gambar perencana dengan kondisi nyata di lapangan.'),
(21, '25', 'Membuat gambar akhir pekerjaan / as built drawing.'),
(22, '25', 'Bertanggung jawab atas semua penyimpanan gambar-gambar yang terkait dengan kegiatan jasa layanan konsultasi.'),
(23, '25', 'Bertanggung jawab kepada team leader.'),
(24, '16', 'Membantu inspector/koordinator mengecek elevasi konstruksi pada saat awal dimulainya pekerjaan kontraktor (Joint Inspection dan Check List), pelaksanaan pekerjaan sampai dengan akhir pekerjaan (Inspection Record).'),
(25, '16', 'Membantu Team Leader melakukan pengukuran situasi untuk mendapat elevasi existing apabila terjadi perubahan desain/rencana.'),
(26, '16', 'Mengecek elevasi hasil pekerjaan kontraktor apabila dalam pengawasan ditemui dugaan perubahan elevasi pekerjaan oleh kontraktor yang tidak sesuai desain.'),
(27, '16', 'Dan lain – lain sesuai dengan perintah Team Leader.'),
(28, '16', 'Bertanggung jawab kepada Team Leader atas elevasi hasil pelaksanaan pekerjaan sesuai desain/rencana yang telah disetujui PPK.'),
(33, '21', 'Bertanggung jawab kepada pemilik proyek.'),
(34, '21', 'Mengkoordinir seluruh tim supervisi dalam pelaksanaan pekerjaan .'),
(35, '21', 'Mempelajari seluruh dokumen perencanaan dan dokumen kontrak dan memberikan masukan kepada pemilik proyek.'),
(36, '21', 'Mengadakan penilaian terhadap kemajuan pekerjaan, memberikan petunjuk-petunjuk atas wewenang yang diberikan pelaksana kegiatan.'),
(37, '21', 'Mengatur atau menggerakkan kegiatan teknis agar dicapai efisiensi pada setiap kegiatan (pekerjaan yang harus ditangani).'),
(38, '21', 'Mengecek dan menandatangani dokumen tentang pengendalian mutu dan volume pekerjaan.'),
(39, '22', 'Terus menerus mengawasi dan mencatat serta mengecek hasil pengukuran dan dilaporkan kepada staf teknis ataupun PPK.'),
(40, '22', 'Menyiapkan pengawasan yang terus menerus di lapangan setiap harinya, termasuk menyiapkan catatan harian untuk peralatan, tenaga dan bahan yang digunakan oleh kontraktor untuk menyelesaikan pekerjaan harian dan dilaporkan kepada staf teknis ataupun PPK. '),
(41, '22', 'Setiap hari senantiasa meringkas semua kegiatan konstruksi, mencatat cuaca, material yang dikirim kelapangan, perubahan dan kebutuhan tenaga kerja peralatan dilapangan, jumlah pekerjaan yang telah selesai, dan pengukuran lapangan, hal-hal khusus dan sebagainya, dengan formulir laporan yang standar dan dikirim ke dan dilaporkan kepada staf teknis ataupun PPK.'),
(42, '22', 'Membantu staf teknis untuk meng\"opname\" hasil pekerjaan atas pekerjaan-pekerjaan yang telah selesai.'),
(43, '23', 'Bertanggung jawab atas pengawasan pada bidangnya.'),
(44, '23', 'Mendukung dan memberi input terhadap design yang di hasilkan.'),
(45, '23', 'Memberikan informasi kepada tenaga ahli mekanikal dan quantity.'),
(46, '23', 'Konsultasi dengan team design lainnya. '),
(47, '23', 'Mengadakan review dan diskusi. '),
(48, '23', 'Mengumpulkan serta mengolah data dan informasi lapangan.'),
(49, '23', 'Pengawasan Instalasi jaringan air bersih.'),
(50, '23', 'Pengawasan Instalasi jaringan air kotor. '),
(51, '23', 'Mempersipakan bahan-bahan untuk paparan.'),
(52, '23', 'Pengawasan Instalasi Jaringan PJU. '),
(53, '23', 'Pengawasan Instalasi jaringan telepon.'),
(54, '23', 'Pengawasan Instalasi jaringan instalasi listrik di dalam gedung.'),
(55, '26', 'Menerapkan ketentuan peraturan perundang-undangan tentang dan terkait K3 konstruksi.'),
(56, '26', 'Mengevaluasi dokumen kontrak dan metode kerja pelaksanaan konstruksi. '),
(57, '26', 'Mengevaluasi program K3. '),
(58, '26', 'Mengavaluasi prosedur dan instruksi kerja penerapan ketentuan K3. '),
(59, '26', 'Melakukan sosialisasi, penerpaan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3.'),
(60, '26', 'Melakukan evaluasi dan membuat laporan penerapan SMK3 dan pedoman teknis K3 konstruksi.'),
(61, '26', 'Mengevalusi perbaikan metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan.'),
(62, '26', 'Mengevalusi penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat.'),
(63, '27', 'Merencanakan program kerja sesuai dengan tugas dan tanggungjawabnya.'),
(64, '27', 'Mengatur filling soft copy di komputer dan hard copy. '),
(65, '27', 'Membuat gambar-gambar kerja sesuai pengarahan Engineer proyek dan schedule yang ditetapkan.'),
(66, '27', 'Memeriksa kesesuaian gambar untuk konstruksi dari konsultan / owner terkait dengan bidang kerja lainnya (MEP, sipil / arsitek, landscape, dll), untuk diterapkan dalam pembuatan shop drawing.'),
(67, '27', 'Memeriksa kelengkapan dan sistim gambar sesuai dengan standar yang telah ditetapkan.'),
(68, '27', 'Menyusun dan menyiapkan dokumen As Built Drawing.'),
(69, '27', 'Melaksanakan peraturan tata tertib, sistem dan prosedur proyek.'),
(70, '27', 'Memelihara semua gambar yang menjadi arsip di proyek.'),
(71, '27', 'Memelihara aset yang ada di Bagiannya dengan baik(komputer, software, hardware).'),
(72, '27', 'Mengajukan usulan-usulan perbaikan.'),
(73, '27', 'Mengerjakan tugas-tugas lainnya yang berkaitan dengan pekerjaan proyek dibidangnya yang diberikan oleh atasan langsung / lebih tinggi.'),
(74, '27', 'Melaksanakan K3 dan memelihara kebersihan dan kerapian area kerja.'),
(75, '29', 'Melaksanakan pengambilan contoh tanah/material dan malakukan pengujian tanah/material di laboratorium.'),
(76, '29', 'Mengevaluasi hasil tes tersebut dan bertanggung jawab terhadap ketelitian dan kebenaran hasil yang diproses.'),
(77, '2', 'Menerapkan SMM, SMK3-L, Bangunan Hijau, dan peraturan yang berkaitan dengan bangunan gedung.'),
(78, '2', 'Mengumpulkan data geoteknik dan parameter tanah pada lokasi yang dipilih.'),
(79, '2', 'Melakukan perhitungan struktur atas dan struktur bawah bangunan gedung.'),
(80, '2', 'Membuat gambar rencana struktur bangunan gedung.'),
(81, '2', 'Membuat gambar rencana detail struktur bangunan gedung.'),
(82, '2', 'Menyiapkan data teknis untuk penyusunan spesifikasi teknis bangunan gedung.'),
(83, '2', 'Melakukan kegiatan staking out bangunan gedung.'),
(84, '2', 'Melakukan persiapan pelaksanaan konstruksi.'),
(85, '2', 'Melaksanakan pekerjaan konstruksi sesuai gambar rencana.'),
(86, '2', 'Menyiapkan kegiatan uji fungsi bangunan dan sarana dalam bangunan gedung.'),
(87, '2', 'Menyiapkan data serah terima pekerjaan.'),
(88, '2', 'Membuat laporan pekerjaan.'),
(89, '30', 'Menyusun program dan perencanaan pembangunan konstruksi.'),
(90, '30', 'Memahami dan menguasai pasal-pasal dalam dalam dokumen kontrak fisik, terutama  tata cara pengukuran dan pembayaran pekerjaan dan perhitungan volume terukur.'),
(91, '30', 'Mengawasi serta melakukan pengendalian dan pelaksanaan fisik pekerjaan. Sehingga semua pembayaran pekerjaan kepada kontraktor betul-betul  didasarkan   kepada ketentuan  yang  tercantum  dalam dokumen kontrak.'),
(92, '30', 'Membuat dan menghimpun semua data sehubungan dengan pengendalian volume pekerjaan .'),
(93, '30', 'Memeriksa kesesuaian volume yang tertuang dalam semua “Shop Drawing” yang Diajukan oleh kontraktor.'),
(94, '30', 'Melaksanakan pengarsipan surat-surat, laporan harian, laporan bulanan, jadwal kemajuan pekerjaan dan lain-lain  .'),
(95, '30', 'Merancang dan merencanakan program sistem manajemen mutu pelaksanaan proyek konstruksi dan melakukan pengawasan penerapan sistem, program dan perencanaan manajemen mutu konstruksi proyek.'),
(96, '30', 'Melakukan pengawasan dan pemantauan secara ketat atas mutu/kualitas hasil pelaksanaan pekerjaan dan tidak mentoleransi adanya penyimpangan-penyimpangan pelaksanaan pekerjaan .'),
(97, '30', 'Memahami dan menguasai pasal-pasal   dalam dalam dokumen kontrak, terutama terkait dengan kualitas pekerjaan .'),
(98, '30', 'Mengawasi serta melakukan pengendalian pelaksanaan fisik pekerjaan di lapangan agar pekerjaan bisa terkendali dan terkontrol secara baik.'),
(99, '30', 'Membuat dan menghimpun semua data sehubungan dengan pengendalian pekerjaan.'),
(100, '30', 'Mengajukan pengetesan atau pengujian terhadap bahan-bahan atau material yang baru  di datangkan oleh kontraktor.'),
(101, '30', 'Mengawasi dan memberi laporan kepada dinas tetang pengujian lab. terhadap  hasil  pelaksanaan dilapangan yang akan ditagihkan kontraktor.'),
(102, '30', 'Melaksanakan pengarsipan surat-surat, laporan harian, laporan bulanan, jadwal  kemajuan pekerjaan dan lain-lain.'),
(103, '31', 'Menerapkan ketentuan peraturan perundang-undangan tentang dan terkait K3 Konstruksi.'),
(104, '31', 'Mengkaji dokumen kontrak dan metode kerja pelaksanaan konstruksi.'),
(105, '31', 'Merencanakan dan menyusun program K3.'),
(106, '31', 'Membuat prosedur kerja dan instruksi kerja penerapan ketentuan K3.'),
(107, '31', 'Melakukan sosialisasi, penerapan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3.'),
(108, '31', 'Melakukan evaluasi dan membuat laporan penerapan SMK3 dan pedoman teknis K3 konstruksi.'),
(109, '31', 'Mengusulkan perbaikan metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan.'),
(110, '31', 'Melakukan penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat.'),
(111, '32', 'Memeriksa dan mempelajari dokumen untuk pelaksanaan kontruksi yang akan dijadikan dasar dalam pengawasan pekerjaan di lapangan.'),
(112, '32', 'Mengawasi pemakaian bahan, peralatan dan metode pelaksanaan, serta mengawasi ketepatan waktu, dan biaya pekerjaan kontruksi.'),
(113, '32', 'Mengawasi pelaksanaan pekerjaan kontruksi dari segi kualitas, kuantitas dan laju pencapaian volume/realisasi fisik.'),
(114, '32', 'Mengumpulkan data dan informasi di lapangan untuk memecahkan persoalan yang terjadi selama pekerjaan konstruksi.'),
(115, '32', 'Menyelenggarakan rapat-rapat lapangan secara berkala, membuat laporan mingguan dan bulanan pekerjaan pengawasan, dengan masukan hasilrapat-rapat lapangan, laporan harian, mingguandan bulanan pekerjaan konstruksi yang dibuat oleh pelaksana konstruksi.'),
(116, '32', 'Meneliti gambar-gambar untuk pelaksanaan (shop drawings) yang diajukan oleh pelaksana konstruksi.'),
(117, '32', 'Meneliti gambar-gambar yang sesuai dengan pelaksanaan di lapangan (As-Built Drawings) sebelum serah terima.'),
(118, '32', 'Menyusun daftar cacat/ kerusakan sebelum serah terima I, mengawasi perbaikannya pada masa pemeliharaan, dan menyusun laporan akhir pekerjaan pengawasan.'),
(119, '32', 'Menyusun berita acara persetujuan kemajuan pekerjaan, berita acara pemeliharaan pekerjaan,dan serah terima pertama dan kedua pelaksanaan konstruksi sebagai kelengkapan untuk pembayaran angsuran pekerjaan konstruksi.'),
(120, '32', 'Bersama-sama penyedia jasa perencanaan menyusun petunjuk pemeliharaan dan penggunaan bangunan gedung.'),
(121, '32', 'Membantu pengelola kegiatan dalam menyusun Dokumen Pendaftaran.'),
(122, '32', 'Membantu pengelola kegiatan dalam penyiapan kelengkapan dokumen Sertifikat Laik Fungsi (SLF) dari Pemerintah Kabupaten/Kota setempat.'),
(123, '34', 'Mengidentifikasi Pekerjaan Yang akan dihitung.'),
(124, '34', 'Menghitung Quantity (Kuantitas) Bahan Yang diperlukan.'),
(125, '34', 'Menghitung Peralatan-Peralatan, Tenaga Kerja dan Waktu yang Diperlukan.'),
(126, '34', 'Menghitung Biaya Total Pekerjaan.'),
(127, '34', 'Menghitung Biaya Akibat Adanya Perubahan Pekerjaan.'),
(128, '34', 'Melakukan Pemantauan Pelaksanaan Pekerjaan.'),
(129, '34', 'Membuat Laporan Hasil Pekerjaan.'),
(130, '36', 'Menerapkan ketentuan peraturan perundang-undangan tentang dan terkait K3 Konstruksi'),
(131, '36', 'Mengkaji dokumen kontrak dan metode kerja pelaksanaan konstruksi'),
(132, '36', 'Merencanakan dan menyusun program K3'),
(133, '36', 'Membuat prosedur kerja dan instruksi kerja penerapan ketentuan K3'),
(134, '36', 'Melakukan sosialisasi, penerapan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3'),
(135, '36', 'Melakukan evaluasi dan membuat laporan penerapan SMK3 dan pedoman teknis K3 konstruksi'),
(136, '36', 'Mengusulkan perbaikan metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan'),
(137, '36', 'Melakukan penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat.'),
(138, '5', 'Mempersiapkan seluruh kegiatan dan kelengkapannya yang dibutuhkan oleh anggota team.'),
(139, '5', 'Memeriksa termasuk gambar – gambar shop drawing , dan keterkaitannya dengan Spesifikasi Teknis dan Rencana Anggaran Biaya.'),
(140, '5', 'Mengkoordinasikan pelaksanaan infrastruktur'),
(141, '5', 'Berkoordinasi dengan tenaga ahli lainnya dalam rangka penentuan pentahapan, metode kontruksi dan material konstruksi.'),
(142, '5', 'Bertanggung jawab untuk koordinasi pengendalian, konstruksi, kesehatan dan keselamatan kerja (K3)'),
(143, '5', 'Menyiapkan laporan – laporan sesuai kontrak maupun atas petunjuk Tim Teknis bersama dengan tenaga ahli dan inspector'),
(151, '38', 'Melaksanakan prosedur K3 dan Lingkungan di tempat kerja'),
(152, '38', 'Bekerjasama dengan rekan kerja dan lingkungan sosial yang beragam'),
(153, '38', 'Mengelola Rencana Mutu (Quality Plan)'),
(154, '38', 'Mengelola isi Daftar Simak (Check List)'),
(155, '38', 'Mengelola hasil inspeksi dan pengujian (Quality Control)'),
(156, '38', 'Melakukan kaji ulang pelaksanaan jaminan mutu'),
(157, '38', 'Mengelola dokumentasi dan laporan'),
(158, '39', 'Memberikan bantuan pengawasan kapada para KPA dan PPK'),
(159, '39', 'Melakukan koordinasi dan komunkasi dengan peyelenggaraan program Pembangunan Proyek pekerjaan pengawasan'),
(160, '39', 'Bersama - sama kontraktor Membantu proyek menyiapkan soft drawing dan as-build drawing .'),
(161, '39', 'Memantau peyampaian pelaporan pembangunan kepada team leader'),
(162, '39', 'Melakukan konsolidasi laporan penanggung jawab kegiatan dan pengawas bangunan dalam setiap bulannya.'),
(163, '39', 'Memberikan saran penanganan apabila ada permasalahan, serta alternatif tindak lanjut penangananya kepada penyelenggara kegiatan di lapangan'),
(164, '39', 'Memberikan dukungan teknis, menajemen kepada pengawas bangunan.'),
(165, '39', 'Melakukan dokumentasi foto-foto pelaksanaan'),
(183, '41', 'Menerapkan ketentuan peraturan perundang-undangan tentang dan terkait K3 Konstruksi'),
(184, '41', 'Mengkaji dokumen kontrak dan metode kerja pelaksanaan konstruksi'),
(185, '41', 'Merencanakan dan menyusun program K3'),
(186, '41', 'Membuat prosedur kerja dan instruksi kerja penerapan ketentuan K3'),
(187, '41', 'Melakukan sosialisasi, penerapan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3'),
(188, '41', 'Melakukan evaluasi dan membuat laporan penerapan SMK3 dan pedoman teknis K3 konstruksi'),
(189, '41', 'Mengusulkan perbaikan metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan'),
(190, '41', 'Melakukan penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat.'),
(191, '40', 'Mengawasi dan memonitoring pelaksanaan pekerjaan M&E untuk residential & komersial.'),
(192, '40', 'Mengawasi pekerjaan jaringan instalasi ME untuk instalas building dan utilitas jaringan luar bangunan (air bersih, air limbah, telepon dan PLN)'),
(193, '40', 'Memeriksa gambar kerja kontraktor berdasarkan gambar rencana serta memeriksa dan memberi ijin pelaksanaan pekerjaan kontraktor.'),
(194, '40', 'Mengawasi dan memberi pengarahan pada pelaksanaan pekerjaan agar sesuai dengan prosedur berdasarkan spesifikasi'),
(195, '40', 'Menerimadan menolak hasil pekerjaan kontraktor berdasarkan spesifikasi teknis.'),
(196, '40', 'Membuat laporan harian mengenai aktifitas kontraktor untuk kemajuan pekerjaan, terdiri dari cuaca, material yang datang (masuk), perubahan dan bentuk dan ukuran pekerjaan, peralatan di lapangan, kuantitas dari pekerjaan yang telah diselesaikan, pengukuran di lapangan dan kejadian-kejadian khusus.'),
(197, '40', 'Memeriksa gambar (as built drawing) dari Kontraktor '),
(198, '40', 'Membuat catatan lengkap tentang peralatan, tenaga kerja dan material yang digunakan dalam setiap pelaksanaan yang merupakan atau mungkin akan menjadi pekerjaan tambah.'),
(199, '40', 'Memberikan teguran kepada supervisor kontraktor M/E bila terjadi penyimpangan pekerjaan dibidang ME.'),
(200, '37', 'Melakukan perencanaan sistem elektrikal yang berdasar pada perhitungan kebutuhan.'),
(201, '37', 'Melakukan analisa dan perhitungan kebutuhan.'),
(202, '37', 'Melakukan koordinasi dengan Team Leader, tenaga ahli yang lain dan tenaga pendukung yang ada.'),
(203, '37', 'Mampu dalam memberikan pemecahan terhadap permasalahan yang muncul dalam tahap pelaksanaan akibat kesalahan perencanaan.'),
(204, '37', 'Menyusun, mengatur, dan mengawasi kegiatan pemeliharaan dan perbaikan seluruh instalasi listrik perusahaan dan peralatan yang menggunakan tenaga listrik untuk menjamin kelancaran jalannya operasi pekerjaan.'),
(205, '37', 'Berusaha mencari cara-cara penekanan biaya dan metode perbaikan kerja yang lebih efisien.'),
(206, '6', 'Menerapkan Sistem Manajemen Keselamatan dan kesehatan Kerja dan Lingkungan ( K3L)'),
(207, '6', 'Memeriksa data perencanaan yang dibutuhkan'),
(208, '6', 'Menyusun criteria teknis yang dibutuhkan'),
(209, '6', 'Merancang Sistem Mekanikal sesuai dengan persyaratan dan spesifikasi teknis yang ditentukan'),
(210, '6', 'Mengawasi  kegiatan  pembuatan  sistem  mekanikal berdasarkan hasil rancangan yang telah dibuat sesuai jadwal dan spesifikasi yang ditetapkan'),
(211, '6', 'Melakukan pengawasan pada kegiatan instalasi system mekanikal mengacu pada manual pemasangan yang telah ditentukan'),
(212, '6', 'Melakukan pengujian hasil instalasi sistem mekanikal'),
(213, '6', 'Melakukan pemeliharaan sistem kekanikal yang telah dipasang'),
(214, '6', 'Membuat laporan hasil pekerjaan'),
(215, '20', 'Pengelolaan administrasi keuangan yang meliputi keuangan operasional kantor, pembayaran gaji pegawai dan invoice.'),
(216, '20', 'Memastikan semua data proyek diinput ke computer.'),
(217, '20', 'Memastikan Dokumentasi dari kegiatan proyek berjalan dengan baik dan lancar.'),
(218, '20', 'Memastikan semua inventory kantor terjaga dengan baik.'),
(219, '20', 'Memastikan semua reimburstment / klaim ke kantor pusat terorganisir secara faktual.'),
(220, '20', 'Memastikan dokumentasi surat jalan berjalan dengan lancar.'),
(221, '20', 'Memastikan laporan absensi dan lembur ada.'),
(222, '20', 'Memastikan kalau laporan bulanan ada.'),
(223, '20', 'Memastikan semua dokumen terduplikasi dan terjaga dengan baik.'),
(224, '43', 'Melakukan koordinasi dengan konsultan supervisi dalam monitoring pelaksanaan konstruksi SPAM.'),
(225, '43', 'Mengadakan kunjungan berkala ke lokasi proyek wilayah Konsultan Bintek.'),
(226, '43', 'Bertanggung jawab dalam memeriksa kemajuan dan standar dari konstruksi serta memberikan bantuan teknis bagi Pengawasan Konstruksi.'),
(227, '43', 'Bertanggung jawab terhadap pekerjaan struktur dan pekerjaan infrastruktur Perpipaan dan Konstruksi Bangunan Air serta mengkaji ulang detail perencanaan struktur dan pengawasan.'),
(228, '43', 'Melakukan monitoring uji coba kekuatan struktur.'),
(229, '43', 'Bertugas memonitoring dan evaluasi desain yang ada'),
(230, '43', 'Memberi nasehat teknik sesuai dengan persyaratan spesifikasi teknik dan melakukan pengawasan serta koordinasi dengan konsultan supervise dalam mengevaluasi dan menganalisa pekerjaan konstruksi'),
(231, '43', 'Bertanggung jawab terhadap monitoring konstruksi'),
(232, '43', 'Merekomendasikan pembuatan shop drawing.'),
(233, '43', 'Menyiapkan dan membuat laporan serta rekomendasinya'),
(234, '45', 'Memeriksa dan mempelajari dokumen untuk pelaksanaan kontruksi yang akan dijadikan dasar dalam pengawasan pekerjaan di lapangan'),
(235, '45', 'Mengawasi pemakaian bahan, peralatan dan metode pelaksanaan, serta mengawasi ketepatan waktu, dan biaya pekerjaan kontruksi'),
(236, '45', 'Mengawasi pelaksanaan pekerjaan kontruksi dari segi kualitas, kuantitas dan laju pencapaian volume/realisasi fisik'),
(237, '45', 'Mengumpulkan data dan informasi di lapangan untuk memecahkan persoalan yang terjadi selama pekerjaan konstruksi'),
(238, '45', 'Menyelenggarakan rapat-rapat lapangan secaraberkala, membuat laporan mingguan dan bulananpekerjaan pengawasan, dengan masukan hasilrapat-rapat lapangan, laporan harian, mingguandan bulanan pekerjaan konstruksi yang dibuat olehpelaksana konstruksi'),
(239, '45', 'Meneliti gambar-gambar untuk pelaksanaan (shopdrawings) yang diajukan oleh pelaksana konstruksi'),
(240, '45', 'Meneliti gambar-gambar yang sesuai denganpelaksanaan di lapangan (As-Built Drawings)sebelum serah terima'),
(241, '45', 'Menyusun daftar cacat/kerusakan sebelum serahterima I, mengawasi perbaikannya pada masapemeliharaan, dan menyusun laporan akhirpekerjaan pengawasan'),
(242, '45', 'Menyusun berita acara persetujuan kemajuanpekerjaan, berita acara pemeliharaan pekerjaan,dan serah terima pertama dan kedua pelaksanaankonstruksi sebagai kelengkapan untuk pembayaranangsuran pekerjaan konstruksi'),
(243, '45', 'Bersama-sama penyedia jasa perencanaanmenyusun petunjuk pemeliharaan dan penggunaanbangunan gedung'),
(244, '45', 'Membantu pengelola kegiatan dalam menyusun Dokumen Pendaftaran'),
(245, '45', 'Membantu pengelola kegiatan dalam penyiapan kelengkapan dokumen Sertifikat Laik Fungsi (SLF) dari Pemerintah Kabupaten/Kota setempat.'),
(246, '46', 'Membuat rencana kerja pengawasan sesuai dengan Lingkup tugas yang dibebebankan kepadanya.'),
(247, '46', 'Menyiapkan gambar-gambar dan spesifikasi teknis yang diperlukan untuk melaksanakan tugasnya.'),
(248, '46', 'Melaksanakan pemeriksaan pelaksanaan pekerjaan yang dilaksanakan oleh kontraktor dan mencatat hal yang tidak sesuai dan melaporkannya kepada atasannya.'),
(249, '46', 'Menghadiri rapat-rapat rutin dan rapat – rapat khusus tim pengawas proyek.'),
(250, '46', 'Melakukan pekerjaan administrasi dan pengarsipan.'),
(251, '46', 'Menyiapkan dan menyampaikan laporan kepada atasan nya,baik laporan periodik maupun khusus.'),
(252, '46', 'Melaksanakan tugas-tugas lain yang relevan yang diminta atasannya.'),
(253, '50', 'Menerapkan UUJK, SMK3 dan ketentuan pengendalian lingkungan kerja'),
(254, '50', 'Menganalisa data Geoteknik'),
(255, '50', 'Mempelajari dan menguasai data terdahulu untuk daerah yang akan diselidiki'),
(256, '50', 'Merencanakan survey lokasi'),
(257, '50', 'Mengevaluasi dan Menetapakan data daerah yang akan diselidiki'),
(258, '50', 'Merencanakan sumber daya penyelidikan geoteknik'),
(259, '50', 'Merencanakan Dampak Lingkungan'),
(260, '50', 'Melakukan pengendalian pekerjaan penyelidikan Geoteknik Melakukan analisa hasil penyelidikan Geoteknik untuk pekerjaan SDA'),
(261, '50', 'Membuat laporan dan rekomendasi hasil penyelidikan Geoteknik'),
(262, '50', 'Mengevaluasi pelaporan hasil pelaksanaan penyelidikan geoteknik'),
(265, '51', 'Mengidentifikasi gambar kerja dan spesifikasi teknis'),
(266, '51', 'Mempersiapkan proses dan metode pelaksanaan'),
(267, '51', 'Mengadakan pengujian'),
(268, '51', 'Mengidentifikasi kesiapan pelaksanaan pekerjaan'),
(269, '51', 'Melakukan pengawasan proses pelaksanaan pekerjaan'),
(270, '51', 'Membuat laporan pelaksanaan pekerjaan'),
(278, '53', 'Melakukan perencanaan sistem elektrikal yang berdasar pada perhitungan kebutuhan.'),
(279, '53', 'Melakukan analisa dan perhitungan kebutuhan.'),
(280, '53', 'Melakukan koordinasi dengan Team Leader, tenaga ahli yang lain dan tenaga pendukung yang ada.'),
(281, '53', 'Mampu dalam memberikan pemecahan terhadap permasalahan yang muncul dalam tahap pelaksanaan akibat kesalahan perencanaan.'),
(282, '53', 'Menyusun, mengatur, dan mengawasi kegiatan pemeliharaan dan perbaikan seluruh instalasi listrik perusahaan dan peralatan yang menggunakan tenaga listrik untuk menjamin kelancaran jalannya operasi pekerjaan.'),
(283, '53', 'Berusaha mencari cara-cara penekanan biaya dan metode perbaikan kerja yang lebih efisien.'),
(284, '53', 'Menerapkan Sistem Manajemen Keselamatan dan kesehatan Kerja dan Lingkungan ( K3L)'),
(285, '53', 'Memeriksa data perencanaan yang dibutuhkan'),
(286, '53', 'Menyusun criteria teknis yang dibutuhkan'),
(287, '53', 'Merancang Sistem Mekanikal sesuai dengan persyaratan dan spesifikasi teknis yang ditentukan'),
(288, '53', 'Mengawasi  kegiatan  pembuatan  sistem  mekanikal berdasarkan hasil rancangan yang telah dibuat sesuai jadwal dan spesifikasi yang ditetapkan'),
(289, '53', 'Melakukan pengawasan pada kegiatan instalasi system mekanikal mengacu pada manual pemasangan yang telah ditentukan'),
(290, '53', 'Melakukan pengujian hasil instalasi sistem mekanikal'),
(291, '53', 'Melakukan pemeliharaan sistem kekanikal yang telah dipasang'),
(292, '53', 'Membuat laporan hasil pekerjaan'),
(293, '54', 'Mempelajari Spsifikasi Teknis Pekerjaan'),
(294, '54', 'Mengidentifikasi Jenis Pekerjaan Yang Akan Dihitung'),
(295, '54', 'Menghitung Quantity Bahan Berdasar Gambar'),
(296, '54', 'Menjelasakan Cara Penilaian Pekerjaan Yang Sudah dilaksanakan'),
(297, '54', 'Menghitung kebutuhan Peralatan yang diperlukan'),
(298, '54', 'Menghitung Alokasi Waktu Penyelesaian Pekerjaan'),
(299, '54', 'Menghitung Biaya Bahan Bangunan Gedung'),
(300, '54', 'Menghitung Biaya Peralatan Dan Tenaga Kerja'),
(301, '54', 'Menghitung Time Schedule (Jadwal Pelaksanaan) Bangunan Gedung'),
(302, '54', 'Menghitung Biaya Akibat Perubahan Gambar Dan Spesifkasi'),
(303, '54', 'Menghitung Biaya Akibat Adanya Eskalasi Harga'),
(304, '54', 'Menyiapkan Borang-Borang sesuai dengan Bill Of Quantity Dan Jadwal Kerja Yang Telah Dibuat'),
(305, '54', 'Mengisi Borang-Borang sesuai dengan realisasi pekerjaan dilapangan'),
(306, '54', 'Menyiapkan Borang-Borang Laporan'),
(307, '54', 'Menyerahkan Laporan'),
(308, '69', 'Bertanggung jawab terhadap instalasi dan struktur sistem tata udara dan refigerasi, melaksanakan pekerjaan konstruksi sistem tata udara dan refigerasi.'),
(309, '69', 'Memberikan rekomendasi dan justifikasi CCO atau addendum jika tidak sesuai dengan kaidah teknis');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengawasan_jalan`
--

CREATE TABLE `pengawasan_jalan` (
  `id` int(20) NOT NULL,
  `fk_idposisi_penugasan` varchar(20) NOT NULL,
  `keterangan` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pengawasan_jalan`
--

INSERT INTO `pengawasan_jalan` (`id`, `fk_idposisi_penugasan`, `keterangan`) VALUES
(1, '3', 'Memenuhi syarat-syarat Kerangka Acuan Kerja/ KAK Perencanaan yang ditentukan oleh Pengguna Jasa pada setiap tahap pekerjaan.'),
(2, '3', 'Membuat Time Schedule, dan memastikan semua berjalan tepat waktu.'),
(3, '3', 'Mengkoordinasikan semua personil yang terlibat dalam kegiatan yang dilaksanakan.'),
(4, '3', 'Membuat struktur organisasi pelaksanaan kegiatan.'),
(5, '3', 'Menyampaikan pelaporan secara periodik perkembangan disain teknis kepada pemberi kerja.'),
(6, '3', 'Mengagendakan koordinasi secara rutin dengan PPK, PPTK, Direksi.'),
(7, '3', 'Mengatur penyelesaian administrasi, keuangan maupun teknis paling lambat 30 hari kalender setelah kontrak berakhir.'),
(8, '3', 'Mempersiapkan petunjuk teknis dari setiap kegiatan perencanaan.'),
(9, '3', 'Meneliti dan mengatur semua personil yang terlibat dalam pelaksanaan pembuatan disain.'),
(10, '3', 'Bertangung jawab penuh terhadap semua hasil Pekerjaan.'),
(11, '19', 'Membantu tugas-tugas Tenaga Ahli dalam pelaksanaan harian di lapangan.'),
(12, '19', 'Memeriksa shop drawing.'),
(13, '19', 'Memeriksa kelengkapan kerja kontraktor untuk pekerjaan terkait.'),
(14, '19', 'Mengawasi metode kerja kontraktor.'),
(15, '19', 'Menghitung progres/ volume harian, mingguan kontraktor.'),
(16, '35', 'Membuat serta memelihara bukti-bukti kerja.'),
(17, '35', 'Melakukan pemeliharaan gambar-gambar kerja.'),
(18, '35', 'Melakukan  koordinasi  dengan  tenaga ahli/ asisten tenaga ahli.'),
(19, '35', 'Membuat Daftar Penerimaan Dokumen gambar (DPD), Daftar  Induk Dokumen gambar (DID) dan daftar distribusi gambar. '),
(20, '35', 'Membuat metode kerja yang efektif dan efisien.'),
(21, '35', 'Membantu Team Leader dalam menyusun laporan.'),
(22, '21', 'Mengawasi dan meneliti ketepatan dari pengukuran/rekayasa lapangan yang dilakukan sehingga dapat memudahkan Satuan Kerja Perangkat Daerah mengambil keputusan- keputusan yang diperlukan, termasuk untuk pekerjaan pengembalian kondisi dan pekerjaan minor mendahului pekerjaan utama serta rekayasa terperinci lainnya.'),
(23, '21', 'Melakukan pengawasan secara teratur dan memeriksa pekerjaan pada semua lokasi di lapangan dimana pekerjaan konstruksi sedang dilaksanakan serta memberi penjelasan tertulis kepada Kontraktor mengenai apa yang sebenarnya dituntut dalam pekerjaan tersebut, bila dalam kontrak hanya dinyatakan secara umum.'),
(24, '21', 'Mengupayakan bahwa kontraktor memahami dokumen kontrak secara benar, melaksanakan pekerjaannya sesuai dengan spesifikasi serta gambar-ganbar, dan kontraktor menerapkan teknik pelaksanaan konstruksi yang tepat/cocok dengan keadaan lapangan untuk berbagai macam kegiatan pekerjaan.'),
(25, '21', 'Membuat rekomendasi kepada Satuan Kerja Perangkat Daerah untuk menerima atau menolak pekerjaan dan material.'),
(26, '21', 'Mencatat kemajuan setiap hari yang dicapai kontraktor pada lembar kemajuan pekerjaan (progress schedule) yang telah disetujui,'),
(35, '44', 'Menjamin bahwa semua isi dari Acuan Tugas ini akan dipenuhi dengan baik sehubungan dengan pelaksanaan pekerjaan peningkatan jalan.'),
(36, '44', 'Bekerjasama dengan Dinas Pekerjaan Umum Bina Marga Provinsi Jawa Timur sehubungan dengan pekerjaan tersebut.'),
(39, '44', 'Menjamin bahwa semua kebijakan dan standard dari Bina Marga akan dilaksanakan di semua paket kontrak yang diawasi.'),
(40, '44', 'Menjamin bahwa Pejabat Pembuat Komitmen selalu mendapat data terbaru mengenai perubahan desain, harga satuan baru dari negosiasi dan nilai kontrak fisik.'),
(41, '44', 'Memberi nasehat kepada team supervisi lapangan dalam menyusun prosedur yang efisien untuk manajemen dan pemantuan kegiatan kontraktor termasuk manajemen konstruksi dan pengendalian terhadap kuantitas dan biaya.'),
(42, '44', 'Mengatur dan mengawasi semua detail teknis lapangan yang diminta dalam acuan tugas ini untuk pelaksanaan yang baik.'),
(43, '44', 'Penafsiran yang benar dari gambar standart dan spesifikasi.'),
(44, '44', 'Teknik pelaksanaan konstruksi yang tepat untuk kegiatan-kegiatan yang berbeda disesuaikan dengan keadaan lapangan.'),
(45, '44', 'Metode yang tepat dari pengukuran kuantitas agar sesuai dengan cara-cara pembayaran dalam kontrak.'),
(46, '44', 'Detail teknik bila ada perintah perubahan, untuk kondisi lapangan dan kejadian yang khusus.'),
(49, '49', 'Menerapkan ketentuan peraturan perundang-undangan tentang dan terkait K3 Konstruksi. '),
(50, '49', 'Mengkaji dokumen kontrak dan metode kerja pelaksanaan konstruksi.'),
(51, '49', 'Merencanakan dan menyusun program K3.'),
(52, '49', 'Membuat prosedur kerja dan instruksi kerja penerapan ketentuan K3.'),
(53, '49', 'Melakukan sosialisasi, penerapan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3.'),
(54, '49', 'Melakukan evaluasi dan membuat laporan penerapan SMK3 dan pedoman teknis K3 konstruksi.'),
(55, '49', 'Mengusulkan perbaikan metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan.'),
(56, '49', 'Melakukan penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat.'),
(57, '61', 'Melakukan pengawasan di lapangan secara terus menerus pada semua lokasi pekerjaan konstruksi yang sedang dilaksanakan, dan memberitahu dengan segera kepada Site Engineer tentang semua pekerjaan yang tidak memenuhi/sesuai dokumen kontrak.'),
(58, '61', 'Semua hasil pengamatan tersebut dilaporkan secara tertulis kepada Site Engineer pada hari itu juga.'),
(59, '61', 'Secara terus menerus mengawasi, membuat catatan dan memeriksa semua hasil pengukuran, perhitungan kuantitas dan sertiflkat pembayaran serta menjamin bahwa pembayaran terhadap kontraktor sudah benar dan sesuai dengan ketentuan dalam dokumen kontrak.'),
(60, '61', 'Bersama-sama kontraktor setiap hari membuat ringkasan/risalah tentang kegiatan konstruksi, keadaan cuaca, pengadaan material, jumlah dan keadaan tenaga kerja, peralatan yang digunakan, jumlah pekerjaan yang telah diselesaikan, pengukuran dilapangan, Kejadian-kejadian khusus dan sebagainya dengan menggunakan formulir laporan standar (Laporan Harian) yang harus diserahkan/dikirim kepada Site Engineer dan Satuan Kerja Fisik tiap hari setelah selesai kerja.'),
(61, '61', 'Melakukan pengawasan dilapangan secara terus menerus terhadap semua pekerjaan harian (day work), termasuk membuat catatan mengenai peralatan, tenaga kerja dan bahan-bahan yang digunakan kontraktor dalam melaksanakan pekerjaan harian tersebut.'),
(62, '61', 'Mengevaluasi prosedur kerja yang diajukan oleh Kontraktor dan evaluasi hasil pekerjaan (performa pekerjaan) dilapangan.'),
(63, '61', 'Membantu Site Engineer mengadakan pengukuran akhir secara keseluruhan dari bagian pekerjaan yang telah diselesaikan yang mutunya memenuhi syarat'),
(64, '62', 'Mengawasi semua tenaga / personil yang terlibat dalam pekerjaan pengumpulan data leger jalan dimaksud tepat waktu.'),
(65, '62', 'Memeriksa hasil olahan semua data survei sekunder dan data primer yang berada di bawah tanggung jawabnya.'),
(66, '62', 'Bertanggung jawab atas kualitas pengumpulan data mencakup kebenaran, ketelitian, kemutakhiran dan kelengkapan hasil survei yang dilaksanakan sesuai waktu yang telah ditetapkan. '),
(67, '62', 'Bertanggung jawab atas kualitas hasil pengolahan data leger jalan dalam witayah pekerjaan yang menjadi tanggung jawabnya.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perencanaan_air`
--

CREATE TABLE `perencanaan_air` (
  `id` int(20) NOT NULL,
  `fk_idposisi_penugasan` varchar(20) NOT NULL,
  `keterangan` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perencanaan_air`
--

INSERT INTO `perencanaan_air` (`id`, `fk_idposisi_penugasan`, `keterangan`) VALUES
(30, '4', 'Bertanggungjawab atas hasil pekerjaan pada bidangnya.'),
(31, '4', 'Mengidentifikasi dan merumuskan kembali ketentuan-ketentuan teknis perencanaan bangunan.'),
(32, '4', 'Mengupayakan dan menyimpulkan hasil pengujian hasil survey tanah. Membuat konsep dasar, outline sistem struktur, rencana struktur serta penghitungan awal struktur.'),
(33, '4', 'Membuat gambar kerja, rencana kerja, merumuskan syarat-syarat pelaksanaannya serta mengidentifikasi bill of quantity (BQ).'),
(34, '4', 'Melakukan prakiraan biaya awal dan penghitungan Rencana Anggaran Biaya (RAB)'),
(35, '4', 'Menyusun Rencana Anggaran Biaya (RAB).'),
(36, '4', 'Menentukan material yang dipakai untuk ruang dalam maupun luar.'),
(37, '4', 'Memberikan informasi kepada Quantity Surveyor.'),
(38, '4', 'Konsultasi dengan Dinas Teknis Bangunan atau Unit Satuan Kerja terkait lainnya.'),
(39, '4', 'Membuat konsep &gambar perencanaan.'),
(40, '6', 'Bertanggungjawab atas hasil perencanaan pada bidangnya.'),
(41, '6', 'Mendukung dan memberi input terhadap design yang dihasilkan.'),
(42, '6', 'Memberikan informasi kepada  Mekanikal  & Quantity Surveyor.'),
(43, '6', 'Konsultasi dengan team design lainnya.'),
(44, '6', 'Mengadakan review dan diskusi.'),
(45, '6', 'Mengumpulkan serta mengolah data dan informasi lapangan.'),
(46, '6', 'Perencanaan jaringan air bersih.'),
(47, '6', 'Perencanaan jaringan Air Kotor.'),
(48, '6', 'Mempersiapkan bahan-bahan untuk pemaparan.'),
(49, '6', 'Bertanggungjawab atas hasil perencanaan pada bidangnya.'),
(50, '6', 'Mendukung dan memberi input terhadap design yang dihasilkan.'),
(51, '6', 'Memberikan informasi kepada  Elektrikal & Quantity Surveyor.'),
(52, '6', 'Konsultasi dengan team design lainnya.'),
(53, '6', 'Mengadakan review dan diskusi.'),
(54, '6', 'Mengumpulkan serta mengolah data dan informasi lapangan.'),
(55, '6', 'Perencanaan jaringan PJU.'),
(56, '6', 'Perencanaan jaringan telepon.'),
(57, '6', 'Perencanaan jaringan Instalasi Listrik di Dalam Gedung'),
(58, '16', 'Dokumentasi Kondisi Existing Pekerjaan'),
(59, '16', 'Menentukan Titik BM awal dan Menembak Elevasi sebagai dasar Perencanaan'),
(60, '16', 'Membuat sketsa rencana dan KOndisi Existing serta data tembakan Koordinat beserta Elevasinya'),
(61, '16', 'Mengkoordinasikan hasil Tembakan survey dengan drafter dan Team leader.'),
(62, '16', 'Membuat perencanaan kegiatan operasional drawing'),
(63, '16', 'Mengatur kegiatan operasional drawing'),
(64, '16', 'Melaksanakan kegiatan operasional drawing'),
(65, '16', 'Membuat gambar-gambar kerja sesuai pengarahan Engineer proyek dan schedule yang ditetapkan.'),
(66, '16', 'Memeriksa kesesuaian gambar for construction dari konsultan / owner terkait dengan bidang kerja lainnya (MEP, sipil / arsitek, landscape, dll), untuk diterapkan dalam pembuatan shop drawing'),
(67, '16', 'Memeriksa kelengkapan dan sistim gambar sesuai dengan standar yang telah ditetapkan'),
(68, '16', 'Memberikan solusi lapangan jika perlu'),
(69, '15', 'Membuat perencanaan kegiatan operasional drawing'),
(70, '15', 'Mengatur kegiatan operasional drawing'),
(71, '15', 'Melaksanakan kegiatan operasional drawing'),
(72, '15', 'Membuat gambar-gambar kerja sesuai pengarahan Engineer proyek dan schedule yang ditetapkan.'),
(73, '15', 'Memeriksa kesesuaian gambar for construction dari konsultan / owner terkait dengan bidang kerja lainnya (MEP, sipil / arsitek, landscape, dll), untuk diterapkan dalam pembuatan shop drawing'),
(74, '15', 'Memeriksa kelengkapan dan sistim gambar sesuai dengan standar yang telah ditetapkan'),
(75, '20', 'Membuat dokumen penawaran, dokumen administrasi dan dokumen penarikan termin'),
(76, '20', 'Merecord seluruh administrasi dinas dan perusahaan'),
(77, '20', 'Arsip terhadap dokumen perencanaan'),
(78, '20', 'Membantu membuat laporan - laporan'),
(79, '3', 'Bertanggung jawab dalam mencapai keberhasilan pekerjaan yang telah ditetapkan sesuai dengan kontrak;'),
(80, '3', 'Menerima semua tanggung jawab dari tim konsultan dalam penyelesaian pekerjaan, yang memenuhi aspek teknis, pengelolaan administrasi dan keuangan berdasarkan kontrak layanan jasa konsultan;'),
(81, '3', 'Mengorganisir tim konsultan untuk memberikan bantuan pekerjaan yang efisien kepada PPK melalui pelaksanaan yang lancer dalam hal keteknikan, kelembagaan dan keuangan;'),
(82, '3', 'Membantu PPK untuk memonitor kemajuan/progres fisik dan keuangan.'),
(83, '3', 'Memberi petunjuk dan pengarahan kepada masing-masing anggota tim sesuai bidang tugasnya.'),
(84, '3', 'Membuat pedoman dan catatan perencanaan (design note) yang akan digunakan seluruh anggota tim dalam merencanakan pekerjaan yang ditugaskan.'),
(85, '3', 'Memimpin dan memberikan pengarahan dalam penyusunan laporan akhir dari studi yang dilakukan dan mempresentasikannya.'),
(86, '55', 'Menerapkan Ketentuan prinsip-prinsip sistem manajemen mutu dan sistem manajemen keselamatan dan kesehatan kerja dan lingkungan dalam lingkup pekerjaan'),
(87, '55', 'Membantu Team Leader dalam mengolah data-data perkembangan progres lapangan harian secara kualitatif maupun kuantitatif untuk disusun dalam bentuk laporan mingguan dan bulanan '),
(88, '55', 'Mengevaluasi dalam rapat-rapat evaluasi harian atau mingguan'),
(89, '55', 'Berkoordinasi dengan team leader dalam pelaksanaan pengawasan harian pekerjaan Sipil di lapangan'),
(90, '55', 'Melakukan koordinasi antar bidang/ disiplin secara internal dalam organisasi tim konsultan'),
(91, '55', 'Bertanggung jawab atas sistem pelaporan kemajuan pekerjaan di lapangan untuk bidang Sipil / Bangunan Gedung.'),
(92, '56', 'Pengumpulan data yang berhubungan untuk pemetaan atau pengukurantopografi, baik dari studi terdahulu, instansi terkait maupun dari survey lapangan.'),
(93, '56', 'Melakukan survey lapangan bersama-sama Team Leader '),
(94, '56', 'Mengumpulkan data-data untuk perencanaan '),
(95, '56', 'Melakukan pengukuran topografi'),
(96, '56', 'Bertanggung jawab kepada Team Leader'),
(97, '56', 'Melaksanakan diskusi horinsontal dengan anggota tim lainnya yang terkaitdengan bidangnya untuk menjamin agar hasil pekerjaan menjadikomprehensif dan terpadu.'),
(98, '56', 'Menyiapkan laporan pemetaan topografi dan berperan aktif dalampenyusunan produk laporan lainnya'),
(99, '56', 'Menyusun spesifikasi teknis yang meliputi ukuran yang harus dipenuhi untuk mencapai kualitas pekerjaan yang disyaratkan;'),
(100, '56', 'Bertanggung jawab terhadap hasil survei dan analisis data pengukuran topografi dan batimetri yang dilaksanakan oleh surveyor;'),
(101, '56', 'Bertanggung jawab finalisasi semua laporan, gambar dan dokumen.'),
(102, '57', 'Melakukan desain bangunan air'),
(103, '57', 'Bertanggung jawab finalisasi semua laporan, gambar dan dokumen.'),
(104, '58', 'Melaksanakan investigasi mekanika tanah secara rinci pada titik yang telah direncanakan;'),
(105, '58', 'Bertanggung jawab finalisasi semua laporan, gambar dan dokumen.'),
(106, '18', 'Melakukan Survei dan Analisis /Kajian dampak Ekosistem Lingkungan.'),
(107, '18', 'MenyusunDokumen Lingkungan untuk pekerjaan ini.'),
(108, '59', 'Melakukan inventarisir kondisi eksisting pantai'),
(109, '59', 'Menyusun desain restorasi dan gambar desain tata ruang wilayah pantai'),
(110, '36', 'Mengkoordinasi sistem manajemen K3 sesuai dengan aspek-aspek K3'),
(111, '36', 'Menyusun Dokumen Rencana K3 untuk pekerjaan ini.'),
(112, '60', 'Mengkoordinasi aspek Sosial Ekonomi, kelembagaan, pada Studi ini. serta mencari informasi Status Tanah yang akan dibangun untuk laporan Kepemilikan Lahan dan Analisa Ekonomi.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perencanaan_gedung`
--

CREATE TABLE `perencanaan_gedung` (
  `id` int(20) NOT NULL,
  `fk_idposisi_penugasan` varchar(20) NOT NULL,
  `keterangan` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perencanaan_gedung`
--

INSERT INTO `perencanaan_gedung` (`id`, `fk_idposisi_penugasan`, `keterangan`) VALUES
(34, '3', 'Mengelola kesehatan dan keselamatan kerja prasarana lingkungan'),
(35, '3', 'Melakukan komunikasi di tempat kerja'),
(36, '3', 'Menyusun kebutuhan prasarana lingkungan'),
(37, '3', 'Menyusun rencana umum pembangunan prasarana lingkungan'),
(38, '3', 'Menyusun analisa dampak disain konseptual prasarana lingkungan'),
(39, '3', 'Menyusun rencana konstruksi prasarana ramah lingkungan'),
(40, '3', 'Menilai pelaksanaan konstruksi prasarana lingkungan'),
(41, '3', 'Menyusun dokumen teknis konstruksi prasarana lingkungan'),
(42, '4', 'Menyusun dokumen teknis konstruksi prasarana lingkungan'),
(43, '4', 'Melakukan analisa, perhitungan dan perencanaan struktur/ konstruksi bangunan'),
(44, '4', 'Menyusun pelaporan dan perhitungan struktur'),
(45, '4', 'Melakukan koordinasi dengan team leader, tenaga ahli yang lain dan tenaga pendukung yang ada'),
(46, '4', 'Membuat analisa teknis dan persyaratan bahan'),
(47, '4', 'Mampu dalam memberikan pemecahan terhadap permasalahan yang muncul dalam tahap pelaksanaan akibat kesalahan perencanaan'),
(48, '4', 'Melakukan control kualitas dokumen perencanaan'),
(49, '13', 'Bertanggung jawab pada Team Leader'),
(50, '13', 'Membantu mengelola kesehatan dan keselamatan kerja prasarana lingkungan'),
(51, '13', 'Mengindentifikasi kebutuhan prasarana lingkungan'),
(52, '14', 'Mempelajari gambar dan spesifikasi teknik daftar kuantitas'),
(53, '14', 'Memperkirakan biaya awal berdasarkan gambar untuk tender, menghitung biaya berdasarkan pekerjaan sejenis, membandingkan antara pagu dengan hasil perhitungan'),
(54, '14', 'Membuat jadwal pelaksanaan pekerjaan, membuat metode kerja, membuat network planning dan bar Chart'),
(55, '15', 'Membuat perencanaan kegiatan operasional drawing'),
(56, '15', 'Merencanakan program kerja sesuai dengan tugas dan tanggungjawabnya'),
(57, '15', 'Mengatur kegiatan operasional drawing'),
(58, '15', 'Melaksanakan kegiatan operasional drawing'),
(59, '15', 'Membuat gambar-gambar kerja sesuai pengarahan Engineer proyek dan schedule yang ditetapkan.'),
(60, '15', 'Memeriksa kesesuaian gambar for construction dari konsultan / owner terkait dengan bidang kerja lainnya (MEP, sipil / arsitek, landscape, dll), untuk diterapkan dalam pembuatan shop drawing'),
(61, '15', 'Memeriksa kelengkapan dan sistim gambar sesuai dengan standar yang telah ditetapkan'),
(62, '15', 'Menyusun dan menyiapkan dokumen As Built Drawing'),
(63, '15', 'Melaksanakan peraturan tata tertib, sistem dan prosedur proyek'),
(64, '15', 'Memelihara semua gambar yang menjadi arsip di proyek'),
(65, '16', 'Membantu Kegiatan survey dan pengukuran diantaranya pengukuran topografi lapangan dan melakukan penyusunan dan penggambaran data-data lapangan'),
(66, '16', 'Mencatat dan mengevaluasi hasil pengukuran yang telah dilakukan sehingga dapat meminimalisir kesalahan dan melakukan tindak koreksi dan pencegahannya'),
(67, '16', 'Mengawasi survei lapangan yang dilakukan kontraktor untuk memastikan pengukuran dilaksanakan dengan akurat telah mewakili kuantitas untuk pembayaran sertifikat bulanan untuk pembayaran terakhir.'),
(68, '16', 'Mengawasi survei lapangan yang dilakukan kontraktor untuk memastikan pengukuran dilaksanakan dengan prosedur yang benar dan menjamin data yang diperoleh akurat sesuai dengan kondisi lapangan untuk keperluan peninjauan desain atau detail desain.'),
(69, '16', 'Mengawasi pelaksanaan staking out, penetapan elevasi sesuai dengan gambar rencana.'),
(70, '16', 'Melakukan pelaksanaan survei lapangan dan penyelidikan Dan pengukuran tempat-tempat lokasi yang akan dikerjakan terutama untuk pekerjaan'),
(71, '16', 'Melaporkan dan bertanggung jawab hasil pekerjaan ke kepala proyek.'),
(72, '9', 'Melakukan survey lokasi'),
(73, '9', 'Mendokumentasikan lokasi survey, berkoordinasi dengan pengelola setempat'),
(74, '9', 'Merecord kendala dan memberi masukan terkait desain perencanaan'),
(75, '9', 'Membantu drafter dalam penyajian gambar Teknik'),
(76, '9', 'Membantu team leader membuat laporan laporan'),
(77, '17', 'Membuat perencanaan kegiatan operasional drawing'),
(78, '17', 'Mengatur kegiatan operasional drawing'),
(79, '17', 'Melaksanakan kegiatan operasional drawing'),
(80, '17', 'Membuat gambar-gambar kerja sesuai pengarahan Engineer proyek dan schedule yang ditetapkan.'),
(81, '17', 'Memeriksa kesesuaian gambar for construction dari konsultan / owner terkait dengan bidang kerja lainnya (MEP, sipil / arsitek, landscape, dll), untuk diterapkan dalam pembuatan shop drawing'),
(82, '17', 'Memeriksa kelengkapan dan sistim gambar sesuai dengan standar yang telah ditetapkan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perencanaan_jalan`
--

CREATE TABLE `perencanaan_jalan` (
  `id` int(20) NOT NULL,
  `fk_idposisi_penugasan` varchar(20) NOT NULL,
  `keterangan` varchar(1500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perencanaan_jalan`
--

INSERT INTO `perencanaan_jalan` (`id`, `fk_idposisi_penugasan`, `keterangan`) VALUES
(30, '4', 'Memimpin dan mengkoordinasi pekerjaan agar dalam pelaksanaanya dapat berjalan lancar'),
(31, '4', 'Mengawasi  pelaksanaan  secara rutin  dan  menjamin  setiap pelaporan  kemajuan proyek agar tepat  waktu'),
(32, '4', 'Bertanggung jawab untuk semua pelaksanaan survey inventarisasi jalan dan survey kondisi jalan'),
(33, '4', 'Bertangung jawab terhadap perencanaan teknis '),
(34, '4', 'Melakukan pendalaman pengetahuan daya dukung lingkungan'),
(35, '16', 'Membantu Kegiatan survey dan pengukuran'),
(36, '16', 'Mencatat dan mengevaluasi hasil pengukuran yang telah dilakukan '),
(37, '16', 'Mengawasi survei lapangan yang dilakukan kontraktor'),
(38, '16', 'Mengawasi pelaksanaan'),
(39, '16', 'Melaporkan dan bertanggung jawab hasil pekerjaan ke kepala proyek'),
(40, '15', 'Membuat gambar pelaksanaan shop drawing'),
(41, '15', 'Menyesuaikan gambar perencana dengan kondisi nyata di lapangan'),
(42, '15', 'Membuat detai – detail bangunan yang di rencanakan'),
(43, '9', 'Menerima tugas pengukuran dan pemetaan situasi secara teoristis'),
(44, '9', 'Melakukan orientasi lapangan'),
(45, '9', 'Menyiapkan alat ukur dan alat pemetaan'),
(46, '9', 'Mengukur detail situasi'),
(47, '9', 'Menghitung data ukuran situasi'),
(48, '20', 'Membantu Kelancaran Administrasi Dan Operasional Kegiatan.'),
(49, '20', 'Melakukan surat menyurat, proses penagihan, serta kegiatan administrasi lainnya.'),
(50, '24', 'Bertanggung jawaba atas kebersihan interior dan exterior kendaraan'),
(51, '24', 'Menaati jadwal yang sudah ditentukan oleh Perusahaan.'),
(52, '3', 'Mengkoordinasikan seluruh tim kerja dan bertanggung jawab terhadap seluruh hasil pekerjaan dan semua wewenang mengenai halhal yang berhubungan dengan pekerjaan Perencanaan Teknis Pembangunan PJU LED 120 watt serta melaporkan kemajuan pekerjaan yang dilaksanakan.'),
(53, '3', 'Bertanggung jawab untuk pengumpulan data dan informasi yang diperlukan, penentuan kebutuhan survai, organisasi personil dan penyampaian serta pembahasan laporan untuk mendapatkan persetujuan pemberi tugas.'),
(54, '3', 'Memberi pengarahan dan petunjuk pelaksanaan seluruh pekerjaan Perencanaan Teknis Pembangunan PJU LED 120 watt kepada seluruh anggota tim kerja.'),
(55, '3', 'Menyiapkan program kerja/jadwal pelaksanaan pekerjaan Perencanaan Teknis Pembangunan PJU LED 120 watt..'),
(56, '3', 'Memimpin tim kerja dalam setiap diskusi/asistensi dan koordinasi dengan Pemimpin pelaksana kegiatan dan dinas bangunan terkait.'),
(57, '3', 'Membuat dan mengkoordinir penyusunan seluruh laporan dan hasil – hasil karya pekerjaan Perencanaan Teknis Pembangunan PJU LED 120 watt.'),
(58, '3', 'Menyerahkan bendel hasil karya pekerjaan Perencanaan Teknis Pembangunan PJU LED 120 watt kepada pejabat pembuat komitmen.'),
(59, '3', 'Bertanggung jawab dalam penyusunan semua laporan pekerjaan Perencanaan Teknis Pembangunan PJU LED 120 watt.'),
(60, '63', 'Mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan elektrikal untuk pekerjaan perencanaan PJU LED 120 watt.'),
(61, '63', 'Melakukan survey dan inventarisasi data primer dan data sekunder terkait dengan sistem elektrikal.'),
(62, '63', 'Mengkoordinasikan kegiatan survey lapangan terkait untuk pekerjaan elektrikal untuk pekerjaan perencanaan PJU LED 120 watt.'),
(63, '63', 'Menyusun laporan-laporan yang menyangkut pekerjaan elektrikal untuk pekerjaan perencanaan PJU LED 120 watt.'),
(64, '63', 'Menyusun spesifikasi teknis untuk seluruh fasilitas sistem elektrikal yang direncanakan dalam pekerjaan perencanaan PJU LED 120 watt.'),
(65, '63', 'Mempelajari dan menganalisa data hasil elektrikal serta mendiskusikannya dengan tenaga ahli lain untuk dijadikan dasar pertimbangan dan data penunjang dalam pekerjaan perencanaan PJU LED 120 watt.'),
(66, '63', 'Memberikan rekomendasi sistem elektrikal yang cocok untuk PJU LED 120 watt dan fasilitas PJU LED 120 watt yang direncanakan.'),
(67, '63', 'Membantu Team Leader dalam penyusunan laporan.'),
(68, '6', 'Mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan sistem mekanikal untuk pekerjaan perencanaan PJU LED 120 watt.'),
(69, '6', 'Melakukan survey dan inventarisasi data primer dan data sekunder terkait dengan Tiang PJU.'),
(70, '6', 'Mengkoordinasikan kegiatan survey lapangan terkait untuk pekerjaan Tiang PJU untuk pekerjaan perencanaan PJU LED 120 watt.'),
(71, '6', 'Menyusun laporan-laporan yang menyangkut pekerjaan Tiang PJU untuk pekerjaan perencanaan PJU LED 120 watt.'),
(72, '6', 'Menyusun spesifikasi teknis untuk seluruh fasilitas Tiang PJU yang direncanakan dalam pekerjaan perencanaan PJU LED 120 watt.'),
(73, '6', 'Mempelajari dan menganalisa data hasil Tiang PJU serta mendiskusikannya dengan tenaga ahli lain untuk dijadikan dasar pertimbangan dan data penunjang dalam pekerjaan perencanaan PJU LED 120 watt.'),
(74, '6', 'Memberikan rekomendasi Tiang PJU yang cocok untuk PJU LED 120 watt dan fasilitas PJU LED 120 watt yang direncanakan.'),
(75, '6', 'Membantu Team Leader dalam penyusunan laporan.'),
(76, '64', 'Mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan perhitungan pencahayaan untuk pekerjaan perencanaan PJU LED 120 watt.'),
(77, '64', 'Melakukan survey dan inventarisasi data primer dan data sekunder untuk pekerjaan perencanaan PJU LED 120 watt.'),
(78, '64', 'Menyusun laporan-laporan yang menyangkut pekerjaan perhitungan pencahayaan untuk pekerjaan perencanaan PJU LED 120 watt.'),
(79, '64', 'Mempelajari dan menganalisa data hasil data perhitungan pencahayaan serta mendiskusikannya dengan tenaga ahli lain untuk dijadikan dasar pertimbangan dan data penunjang dalam pekerjaan perencanaan PJU LED 120 watt.'),
(80, '64', 'Memberikan rekomendasi aspek perhitungan pencahayaan satuan sesuai dengan kondisi hasil survey harga bahan dan material yang ada.'),
(81, '64', 'Membantu Team Leader dalam penyusunan laporan'),
(82, '49', 'Mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan perencanaan PJU LED 120 watt untuk K3'),
(83, '49', 'Melakukan survey dan inventarisasi data primer dan data sekunder untuk pekerjaan perencanaan PJU LED 120 wat untuk K3'),
(84, '49', 'Mengkoordinasikan kegiatan survey lapangan untuk pekerjaan pekerjaan perencanaan PJU LED 120 watt untuk K3'),
(85, '49', 'Membuat prosedur kerja dan instruksi kerja penerapan ketentuan K3'),
(86, '49', 'Melakukan sosialisasi, penerapan dan pengawasan pelaksanaan program, prosedur kerja dan instruksi kerja K3'),
(87, '49', 'Melakukan evaluasi dan membuat laporan penerapan SMK3 dan pedoman teknis K3 konstruksi'),
(88, '49', 'Mengusulkan perbaikan metode kerja pelaksanaan konstruksi berbasis K3, jika diperlukan'),
(89, '49', 'Melakukan penanganan kecelakaan kerja dan penyakit akibat kerja serta keadaan darurat'),
(90, '49', 'Membantu Team Leader dalam penyusunan laporan'),
(103, '65', 'Membantu tenaga ahli dalam mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(104, '65', 'Membantu tenaga ahli dalam melakukan survey dan inventarisasi data primer dan data sekunder bidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(105, '65', 'Melakukan kegiatan survey lapangan terkait untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(106, '65', 'Memberikan data dalam penyusunn laporanlaporan yang menyangkut pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(107, '65', 'Memberikan masukan kepada tenaga ahli dalam menyusun spesifikasi teknis bidangnya untuk seluruh fasilitas yang direncanakan dalam pekerjaan perencanaan PJU LED 120 watt.'),
(108, '65', 'Membantu Tenaga ahli arsitektur dalam penyusunan laporan.'),
(109, '66', 'Membantu tenaga ahli dalam mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(110, '66', 'Membantu tenaga ahli dalam melakukan survey dan inventarisasi data primer dan data sekunder bidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(111, '66', 'Melakukan kegiatan survey lapangan terkait untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(112, '66', 'Memberikan data dalam penyusunn laporanlaporan yang menyangkut pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(113, '66', 'Memberikan masukan kepada tenaga ahli dalam menyusun spesifikasi teknis bidangnya untuk seluruh fasilitas yang direncanakan dalam pekerjaan perencanaan PJU LED 120 watt.'),
(114, '66', 'Membantu Tenaga ahli arsitektur dalam penyusunan laporan.'),
(115, '67', 'Membantu tenaga ahli dalam mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(116, '67', 'Membantu tenaga ahli dalam melakukan survey dan inventarisasi data primer dan data sekunder bidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(117, '67', 'Melakukan kegiatan survey lapangan terkait untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(118, '67', 'Memberikan data dalam penyusunn laporanlaporan yang menyangkut pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(119, '67', 'Memberikan masukan kepada tenaga ahli dalam menyusun spesifikasi teknis bidangnya untuk seluruh fasilitas yang direncanakan dalam pekerjaan perencanaan PJU LED 120 watt.'),
(120, '67', 'Membantu Tenaga ahli arsitektur dalam penyusunan laporan.'),
(121, '68', 'Membantu tenaga ahli dalam mengumpulkan dan menganalisa data-data yang diperlukan untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(122, '68', 'Membantu tenaga ahli dalam melakukan survey dan inventarisasi data primer dan data sekunder bidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(123, '68', 'Melakukan kegiatan survey lapangan terkait untuk pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(124, '68', 'Memberikan data dalam penyusunn laporanlaporan yang menyangkut pekerjaan dibidangnya untuk pekerjaan perencanaan PJU LED 120 watt.'),
(125, '68', 'Memberikan masukan kepada tenaga ahli dalam menyusun spesifikasi teknis bidangnya untuk seluruh fasilitas yang direncanakan dalam pekerjaan perencanaan PJU LED 120 watt.'),
(126, '68', 'Membantu Tenaga ahli arsitektur dalam penyusunan laporan.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE `pesan` (
  `id_pesan` int(255) NOT NULL,
  `nama_pengirim` tinytext DEFAULT NULL,
  `email` tinytext DEFAULT NULL,
  `judul_pesan` tinytext DEFAULT NULL,
  `tanggal` datetime DEFAULT NULL,
  `isi` tinytext DEFAULT NULL,
  `status` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pesan`
--

INSERT INTO `pesan` (`id_pesan`, `nama_pengirim`, `email`, `judul_pesan`, `tanggal`, `isi`, `status`) VALUES
(4, 'Supardi Wajabae', 'supardiwajabae@gmail.com', 'tes online', '2019-07-25 04:11:52', 'Tes Kirim dari online', 1),
(5, 'George Martin', 'george1@georgemartinjr.com', 'Guest Post on Website', '2019-08-21 18:09:26', 'Would you be interested in submitting a guest post on georgemartjr.com or possibly allowing us to submit a post to konseparsitek.com ? Maybe you know by now that links are essential\r\nto building a brand online? If you are interested in submitting a post a', 0),
(6, 'Eric', 'eric@talkwithcustomer.com', 'It’s all about Perfect Timing', '2019-08-29 02:14:14', 'Hello konseparsitek.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve c', 0),
(7, 'LarryCobLR', 'raphaePn@gmail.com', 'A new method of email distribution.', '2019-09-01 15:41:48', 'Hello!  konseparsitek.com \r\n \r\nWe suggest \r\n \r\nSending your business proposition through the Contact us form which can be found on the sites in the contact partition. Contact form are filled in by our application and the captcha is solved. The superiority', 0),
(8, 'RonaldNesCE', 'quickchain50@gmail.com', 'free btc', '2019-09-14 05:53:45', 'Profit +10?ter 2 days \r\nThe minimum amount for donation is 0.0025 BTC. \r\nMaximum donation amount is 10 BTC. \r\n \r\nRef bonus 3 levels: 5%,3%,1% paying next day after donation \r\nhttps://quickchain.cc/', 0),
(9, 'AverymaxIY', 'raphaePn@gmail.com', 'Delivery of your email messages.', '2019-09-15 19:54:26', 'Hi!  konseparsitek.com \r\n \r\nHave you ever heard of sending messages via feedback forms? \r\n \r\nThink of that your message will be readseen by hundreds of thousands of your probable buyerscustomers. \r\nYour message will not go to the spam folder because peopl', 0),
(10, 'Lucas Weber', 'info@wrldclass-solutions.com', 'Can We  Publish Your Guest Post ?', '2019-09-23 19:18:25', 'Good Day,\r\n\r\nLucas Weber Here from World Class Solutions, wondering \r\ncan we publish your blog post over here? We are looking to \r\npublish new content and would love to hear about any new products,\r\nor new subjects regarding your website here at konsepars', 0),
(11, 'David Gomez', 'sergiodumass@gmail.com', 'A Letter from Barrister David Gomez Gonzalez', '2019-09-27 05:13:31', 'Dearest in mind, \r\n \r\nI would like to introduce myself for the first time. My name is Barrister David Gomez Gonzalez, the personal lawyer to my late client. \r\nWho worked as a private businessman in the international field. In 2012, my client succumbed to ', 0),
(12, 'RaymondDugVI', 'info1@revlight.com.sg', 'High quality CCTV cameras', '2019-10-02 12:57:34', 'Dear Customer, \r\n \r\nWe manufacture High-Definition Security Surveillance Systems for Residential & Commercial uses. All our cameras are weatherproof and comes with sony sensor for maximum quality. \r\nIPcam video quality: https://youtu.be/VPG82dnXfWY \r\n \r\nC', 0),
(13, 'MikeaudibMB', 'noreplyerypeCob@gmail.com', 'unique domains backlinks package', '2019-10-04 18:40:12', 'When you order 1000 backlinks with this service you get 1000 unique domains, Only receive 1 backlinks from each domain. All domains come with DA above 15-20 and with actual page high PA values. Simple yet very effective service to improve your linkbase an', 0),
(14, 'Pedro Molina', 'pedrom@uicinsuk.com', 'Client Insurance', '2019-10-07 00:00:44', 'Dear Sir, \r\nAm contacting you to partner with me to secure the life insurance of my late client, to avoid it being confiscated. For more information, please contact me on + 447452275874 or pedrom@uicinuk.com \r\nRegards \r\nPedro Molina', 0),
(15, 'MichaelrhicsWC', 'robertgutle@gmail.com', 'Eldorado international Foundation', '2019-11-03 04:18:47', 'The international Blockchain project \"Eldorado\" \r\nLeader in short-term investing in the cryptocurrency market. \r\nThe leader in payments for the affiliate program. \r\n \r\nThe investment period is 2 days. \r\nMinimum profit is 10%   \r\nDaily payments under the a', 0),
(16, 'Eric Jones', 'eric@talkwithcustomer.com', 'SUBJECT: How to convert website visitors into phone calls?', '2019-11-07 23:44:22', 'Hi,\r\n\r\nMy name is Eric and I was looking at a few different sites online and came across your site konseparsitek.com.  I must say - your website is very impressive.  I am seeing your website on the first page of the Search Engine. \r\n\r\nHave you noticed tha', 0),
(17, 'CecilItendNN', 'info2@revlight.com.sg', 'High quality CCTV cameras', '2019-11-14 18:51:43', 'Dear Sir/mdm, \r\n \r\nTired \r\nof cameras that always broke down easily? \r\n \r\nDon\'t worry, we manufacture High-Definition Security Surveillance \r\nSystems for Residential & Commercial uses. All our cameras are metal \r\nweatherproof and comes with sony sensor fo', 0),
(18, 'AverymaxIY', 'raphaePn@gmail.com', 'Mailing via the feedback form.', '2019-11-15 13:50:17', 'Hi!  konseparsitek.com \r\n \r\nHave you ever heard of sending messages via feedback forms? \r\n \r\nImagine that your message will be readread by hundreds of thousands of your future buyerscustomers. \r\nYour message will not go to the spam folder because people w', 0),
(19, 'MichaelChikeJD', 'revollet.marketing@gmail.com', 'Could you introduce the crypto debit card on your site?', '2019-11-21 15:30:47', 'Hi. This is Chris from Revollet Marketing International, who is in charge of marketing for Revollet. \r\n \r\nRevollet is a debit card that can be used by charging Crypto currency such as BTC, ETH and XRP. \r\n \r\nBy using debit card, you can withdraw your money', 0),
(20, 'crypto-mmmAL', 'williamFlami@gmail.com', 'The legendary \"CRYPTO-M\" cryptocurrency Fund. The absolute leader of the blockchain community. Open registration!', '2019-11-25 09:13:51', 'The legendary \"CRYPTO-M\" investment Fund has returned to the international cryptocurrency market in your country. \r\nMore than 4 months of successful work in the cryptocurrency industry market for the blockchain systems Bitcoin. \r\n \r\n10% BTC to each member', 0),
(21, 'Lilia Neuhaus', 'noreplygooglealexarank@gmail.com', 'Whitehat Monthly SEO Plans for  konseparsitek.com', '2019-11-25 16:06:31', 'Increase ranks and visibility for konseparsitek.com with a monthly SEO plan that is built uniquely for your website\r\n\r\nIncrease SEO metrics and ranks while receiving complete reports on monthly basis\r\n\r\nCheck out our plans\r\nhttps://googlealexarank.com/ind', 0),
(22, 'ClaytonwhoreEG', 'noreply.venuscoin@gmail.com', 'Venus Coin is on sale at 70% off! Now $ 0.03 / 1vnc !!', '2019-11-29 15:30:07', 'Hi, This is Venus Coin Project. \r\n \r\nVenus Coin is a new cryptocurrency used in the $ 350 billion night entertainment market (clubs, bars, dating clubs, sexual customs, etc.). \r\n \r\nWe already developed wallet app, exceeded 100,000 downloads worldwide, and', 0),
(23, 'ThomasAnderson', 'anthonyonery@gmail.com', 'Behold is  offering  http://bit.ly/2rtwuu4', '2019-12-08 03:25:45', 'Hello \r\nI invite you to my team, I work with the administrators of the company directly. \r\n- GUARANTEED high interest on Deposit rates \r\n- instant automatic payments \r\n- multi-level affiliate program \r\nIf you want to be a successful person write: \r\nTelegr', 0),
(24, 'http://bit.ly/2DhHHjK', 'schorno.rita@gmail.com', 'Behold is  an amazingoffer for you.   http://bit.ly/2qLRBHM', '2019-12-08 23:48:06', 'Here is  a goodoffer for you. http://bit.ly/2pRVtXu', 0),
(25, 'Virgil Smerd', 'noreply-monkeydigital@gmail.com', 'Get Top ahrefs rank for konseparsitek.com', '2019-12-13 12:32:36', 'Be in Top 500k ahrefs domain rank in just several weeks\r\nhttps://www.monkeydigital.co/product/ahrefs-seo-plan/\r\n', 0),
(26, 'Eric Jones', 'eric@talkwithcustomer.com', 'It’s all about Perfect Timing', '2019-12-18 10:54:27', 'Hello konseparsitek.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve c', 0),
(27, 'ElliotttomVT', 'jackob.james@yandex.ru', 'Do you accept bitcoin?', '2019-12-23 09:16:11', 'Hello! \r\n \r\nDo you know how to spend working hours with benefit? \r\n \r\nYou can grow bitcoins by 1.1% per day! \r\nIt takes 1 minute to start, quicker than a cup of coffee \r\n \r\nTry http://become-rich-2020.website \r\n \r\nPowered by Blockchain.', 0),
(28, 'Pharma ExhibitionMX', 'abcex.com@rediffmail.com', 'PRE-REGISTRTION - Healthcare and Pharma Show, Malaysia', '2019-12-25 20:57:52', 'Hello, \r\n \r\n23rd South East Asian Healthcare Show. \r\n22 - 24 April 2020 - Kuala Lumpur Convention Centre \r\n \r\nKLCC in April will be where you\'ll have the opportunity to secure new business opportunities. \r\nSEACare for short covers the entire profile for t', 0),
(29, 'KennethbagEN', 'raphaePn@gmail.com', 'A new method of email distribution.', '2020-01-01 13:28:49', 'Hello!  konseparsitek.com \r\n \r\nDid you know that it is possible to send business proposal fully legally? \r\nWe offer a new unique way of sending proposal through contact forms. Such forms are located on many sites. \r\nWhen such proposals are sent, no person', 0),
(30, 'HarrygeawnEX', 'no-reply_assek@gmail.com', 'keywords based Country targeted website traffic', '2020-01-01 21:59:25', 'hi there \r\nwould you want to receive more targeted traffic to konseparsitek.com ? \r\nGet keywords based and Country targeted traffic with us today \r\n \r\nvisit our website for more details \r\nhttps://hyperlabs.co/ \r\n \r\nthanks and regards \r\nHyper Labs Team', 0),
(31, 'Randell Blamey', 'randell.blamey@gmail.com', 'Whitehat SEO packages', '2020-01-12 14:11:14', 'hi there\r\n\r\nDo you want better ranks for your website?\r\n\r\nConsider a whitehat SEO plan and grab yourself the visibility that will get you more sales/leads\r\n\r\nMore info:\r\nhttps://www.ghostdigital.co/product-category/seo-packages/\r\n\r\nthanks and regards\r\nGho', 0),
(32, 'Eric Jones', 'eric@talkwithcustomer.com', 'A quick trip to a tomorrow of your dreams…', '2020-01-16 10:33:56', '\r\nHello konseparsitek.com,\r\n\r\nPeople ask, “why does TalkWithCustomer work so well?”\r\n\r\nIt’s simple.\r\n\r\nTalkWithCustomer enables you to connect with a prospective customer at EXACTLY the Perfect Time.\r\n\r\n- NOT one week, two weeks, three weeks after they’ve', 0),
(33, 'AlbertohoulaQG', 'monetizzareoggi2019@gmail.com', 'I introduce you Umo Finance', '2020-01-23 05:43:26', 'Hello, \r\ni\'m Alberto Simoni from Italy, a proud father of two kids and an happy husband. \r\nI work online full time from my home and i like earning also in a passive way thanks my investments. \r\nDo you know Umo Finance, the company and its online platform ', 0),
(34, 'AmmarMipRB', 'dramatexy@gmail.com', 'Trustworthiness', '2020-01-23 18:44:32', 'We will be most delighted in partnering with you, and we intend to maintain a Silent/Financial Position on our Business with your Company as we look forward to a prospective confidential financial business relationship with you. I\'m Wife of former Sudanes', 0),
(35, 'Berry Noguera', 'berry.noguera@gmail.com', 'Rank konseparsitek.com locally', '2020-01-28 19:58:46', '\r\nIf you`ll ever need New Local SEO strategies for 2020\r\n\r\nPlease consider our local SEO plan strategy\r\nhttps://www.ghostdigital.co/product/local-seo-package/\r\n\r\nMike Noguera\r\nghostdigital.mike@gmail.com\r\n\r\n\r\n\r\n', 0),
(36, 'LambertBoxTR', 'jlambert.1@yahoo.com', 'I wish to Partner with you', '2020-01-30 00:49:39', 'Good day \r\n \r\nI`m a private investors seeking for a reputable company/individuals to partner with in a manner it would benefit both parties. If interested, kindly contact us through this email lambertj283@gmail.com for clarification.', 0),
(37, 'BrianhitleIB', 'no-reply@hilkom-digital.de', 'cheap monthly SEO plans', '2020-02-08 23:55:27', 'hi there \r\nI have just checked konseparsitek.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly report', 0),
(38, 'AnthonyKAwDJ', 'raphaePn@gmail.com', 'The best advertising of your products and services!', '2020-02-13 08:25:26', 'Good day!  konseparsitek.com \r\n \r\nDo you know the simplest way to state your product or services? Sending messages exploitation contact forms will allow you to simply enter the markets of any country (full geographical coverage for all countries of the wo', 0),
(39, 'Kourtney Ansell', 'noreply@arteseo.co', 'Request for quotation', '2020-02-17 04:49:01', '\r\nAs per your inquiry, here is your unique domains backlinks package quotation and options for konseparsitek.com\r\n\r\nhttps://www.arteseo.co/quotation/\r\n\r\n', 0),
(40, 'Eric Jones', 'eric@talkwithcustomer.com', 'You deserve more clients… and it’s THIS easy…', '2020-03-04 00:52:34', ' \r\nHey,\r\n\r\nYou have a website konseparsitek.com, right?\r\n\r\nOf course you do. I am looking at your website now.\r\n\r\nIt gets traffic every day – that you’re probably spending $2 / $4 / $10 or more a click to get.  Not including all of the work you put into c', 0),
(41, 'DavidRatUL', 'no-reply@hilkom-digital.de', 'cheap monthly SEO plans', '2020-03-04 02:15:24', 'hi there \r\nI have just checked konseparsitek.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly report', 0),
(42, 'JamesTarSP', 'coronavaccine@hotmail.com', 'Support COVID-19 VACCINE Development.', '2020-03-29 13:20:10', 'Today every person on Earth has been affected by the COVID-19 outbreak. Airplanes are grounded, borders are closed, businesses are shut, citizens are forced into quarantine, and governments are taking spontaneous emergency decisions undermining the princi', 0),
(43, 'MartinDoFMY', 'no-reply@hilkom-digital.de', 'cheap monthly SEO plans', '2020-04-09 05:01:21', 'hi there \r\nI have just checked konseparsitek.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly report', 0),
(44, 'RaymondBrown', 'info@thecctvhub.com', 'Human body thermal camera high accuracy', '2020-04-10 05:16:02', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply N95, KN95, 3ply masks and Thermal cameras for Body Temperature Measurement up to accuracy of ±0.1?C \r\nAdvantages of thermal imaging detection: \r\n \r\n1. Intuitive, efficient and convenient, making users directl', 0),
(45, 'DavidMaidaMR', 'mindeasesg01@gmail.com', 'FREE Online 1:1 Counselling & Hypnotherapy Service', '2020-04-13 18:25:51', 'Hi there: \r\nHope you are keeping well despite the current Circuit Breaker lockdown in Singapore. \r\n \r\nIf not, I have some good news, hope can perk you up little bit. \r\n \r\nIf you or you know of someone who are: \r\n1. extremely stressed out by the current CO', 0),
(46, 'JerrywemTW', 'no-replyPn@gmail.com', 'Want more customers for your business?', '2020-04-24 23:52:56', 'Hi!  konseparsitek.com \r\n \r\nDid y?u kn?w th?t it is p?ssibl? t? s?nd ??mm?r?i?l ?ff?r utt?rly l?gitim?t? w?y? \r\nW? ?ff?ring ? n?w l?gitim?t? m?th?d ?f s?nding m?ss?g? thr?ugh ??nt??t f?rms. Su?h f?rms ?r? l???t?d ?n m?ny sit?s. \r\nWh?n su?h m?ss?g?s ?r? s?', 0),
(47, 'Lino Clemens', 'noreply@arteseo.co', 're: Your 6 months unlimited traffic Quote Request', '2020-05-03 23:22:32', 'here is your konseparsitek.com 6 months traffic quote\r\nhttps://www.arteseo.co/unlimited-traffic/\r\n\r\n\r\n', 0),
(48, 'Jonathan Roseland', 'noreply@asset.fin', 'INVESTMENT MANAGER', '2020-05-21 18:55:50', 'Hello Partners, \r\n \r\nThe International Investment arm of our company is seeking interested partners in need of alternative funding for long term capital projects or for business development. Our managed private investment portfolio has an excess pool in p', 0),
(49, 'MikeDoFXI', 'no-reply@hilkom-digital.de', 'cheap monthly SEO plans', '2020-05-26 00:28:07', 'hi there \r\nI have just checked konseparsitek.com for the ranking keywords and seen that your SEO metrics could use a boost. \r\n \r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly report', 0),
(50, 'MelvinSmuncDM', 'atrixxtrix@gmail.com', 'Human body thermal camera high accuracy and medical supplies', '2020-05-26 14:59:27', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply medical products: \r\n \r\nMedical masks \r\n3M 1860, 9502, 9501 \r\n3ply medical, KN95 FFP2, FFP3, N95 masks \r\nFace shield \r\nDisposable nitrile/latex gloves \r\nIsolation/surgical gown \r\nProtective PPE/Overalls \r\nIR n', 0),
(51, 'Derick Godley', 'hacker@leasedealcanada.info', 'Your Site Has Been Hacked', '2020-06-04 08:39:34', 'PLEASE FORWARD THIS EMAIL TO SOMEONE IN YOUR COMPANY WHO IS ALLOWED TO MAKE IMPORTANT DECISIONS!\r\n\r\nWe have hacked your website http://www.konseparsitek.com and extracted your databases.\r\n\r\nHow did this happen?\r\nOur team has found a vulnerability within y', 0),
(52, 'KomalGakNK', 'no-replyMug@gmail.com', 'Accept Payments online', '2020-06-09 08:54:47', 'Greetings, I was just visiting your site and wondering about \r\nthe payment method currently offered by you to your customers? \r\n \r\n \r\nI work for Amald.Com and we can serve your business by offering credit card and various local payment methods (eNets, Net', 0),
(53, 'PrinceTaylor', 'prance.gold.arbitrage@gmail.com', '[VIP] This invitation is a ticket for winning your life. Team PGA.', '2020-06-11 03:08:00', 'Hi! \r\nI\'m Prince Taylor. \r\n \r\nI contacted you with an invitation for investment program witch you will definitely win. \r\n \r\nThe winning project I\'m here to invite you is called \"Prance Gold Arbitrage (PGA)\". \r\n \r\nPGA is a proprietary system that creates p', 0),
(54, 'Pablo Ketchum', 'noreply@ghostdigital.co', 'GMB Quote', '2020-06-12 12:38:04', '\r\nHere is your quotation regarding the promotion of your Google Maps listing\r\n\r\nhttps://www.ghostdigital.co/google-maps-citations/\r\n\r\n\r\n', 0),
(55, 'John Brooks', 'swetmangdudley@gmail.com', 'FUNDING', '2020-06-21 19:56:13', 'My name is John Brooks of AAA Structured Finance Ltd , Thank you for your time, my company offers project financing and lending services, do you have any project that requires funding at the moment? We are ready to work with you on a more transparent appr', 0),
(56, 'Alannah Galgano', 'galgano.alannah@gmail.com', 'cheap monthly SEO plans', '2020-07-27 04:07:37', 'hi there\r\nI have just checked konseparsitek.com for the ranking keywords and seen that your SEO metrics could use a boost.\r\n\r\nWe will improve your SEO metrics and ranks organically and safely, using only whitehat methods, while providing monthly reports a', 0),
(57, 'Craig Durba', 'profaukdave@gmail.com', '“New Business Offer”', '2020-08-08 16:30:32', 'Dear CEO  konseparsitek.com \r\nI have contacted you in your feedback form with an offer to handle this business. Here is the placement: \r\n \r\nValue of funds: TWENTY-FIVE MILLION DOLLARS. \r\nLocation of funds: EUROPE. \r\nPlacement opens to: COMPANIES/INDIVIDUA', 0),
(58, 'JoshuatrughZA', 'no-replyPn@gmail.com', 'The best advertising of your products and services!', '2020-08-09 04:49:40', 'H?ll?!  konseparsitek.com \r\n \r\nDid y?u kn?w th?t it is p?ssibl? t? s?nd ??mm?r?i?l ?ff?r ?bs?lut?ly l?gitim?t? w?y? \r\nW? m?k? ?v?il?bl? ? n?w l?gitim?t? m?th?d ?f s?nding l?tt?r thr?ugh ??nt??t f?rms. Su?h f?rms ?r? l???t?d ?n m?ny sit?s. \r\nWh?n su?h ?pp?', 0),
(59, 'SAHROZI', 'roziy.amp09@gmail.com', 'PENAWARAN KERJASAMA PENERBITAN BANK GARANSI & SURETY BOND (ASURANSI)', '2020-08-13 14:46:56', '-- \r\nKepada Yth,\r\nPerusahaan Pemerintah BUMN & Swasta\r\nPT, LTD, TBK\r\nUp : Pimpinan / Finance Manager\r\nPerihal : Surat Perkenalan & Kerjasama\r\nTerlampir : Penawaran Penerbitan Bank Garansi & Asuransi Tanpa Agunan / Collateral\r\n\r\nSalam Sukses,\r\nPerkenalkan ', 0),
(60, 'Michel Gaston', 'frankegaston02@gmail.com', 'Investment Opportunity', '2020-08-16 16:50:02', 'Greetings! \r\n \r\nHow are you today? Hope fine? \r\n \r\nI genuinely solicit for the assistance of a reliable and honest foreign partner that will work closely with me in a joint venture partnership. I can make funds available for investments in a joint venture', 0),
(61, 'RobertjefGK', 'atrixxtrix@gmail.com', 'Fever screening thermal CCTV camera and medical masks', '2020-08-20 08:21:05', 'Dear Sir/mdm, \r\n \r\nHow are you? \r\n \r\nWe supply Professional surveillance & medical products: \r\n \r\nMoldex, makrite and 3M N95 1860, 9502, 9501, 8210 \r\n3ply medical, KN95, FFP2, FFP3, PPDS masks \r\nFace shield/medical goggles \r\nNitrile/vinyl/Latex/PP gloves ', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `portofolio`
--

CREATE TABLE `portofolio` (
  `id_portofolio` int(255) NOT NULL,
  `nama_pekerjaan` tinytext DEFAULT NULL,
  `kategori` tinyint(1) DEFAULT NULL,
  `tanggal_pelaksanaan` date DEFAULT NULL,
  `nama_client` tinytext DEFAULT NULL,
  `foto_pekerjaan` tinytext DEFAULT NULL,
  `deskripsi_pekerjaan` tinytext DEFAULT NULL,
  `lokasi` tinytext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `portofolio`
--

INSERT INTO `portofolio` (`id_portofolio`, `nama_pekerjaan`, `kategori`, `tanggal_pelaksanaan`, `nama_client`, `foto_pekerjaan`, `deskripsi_pekerjaan`, `lokasi`) VALUES
(5, 'Pengawasan Pembangunan Kantor Pusat Pertamina', 2, '2019-02-12', 'Pertamina', 'http://ds.konseparsitek.com/upload/portofolio/03250719201950.jpg', 'Pertamina (dahulu bernama Perusahaan Pertambangan Minyak dan Gas Bumi Negara) atau nama resminya PT. PERTAMINA (Persero) adalah sebuah BUMN yang bertugas mengelola penambangan minyak dan gas bumi di Indonesia. Pertamina masuk urutan ke 122 dalam Fortune G', 'Jakarta'),
(6, 'Perencanaan Pembangunan Gedung Supermarket Hero', 1, '2019-11-23', 'Hero Group', 'http://ds.konseparsitek.com/upload/portofolio/03250719201910.jpg', 'Supermarket Hero  adalah perusahaan ritel yang memiliki banyak cabang di Indonesia. Hero Supermarket Group adalah perusahaan ritel modern pertama di Indonesia, didirikan tanggal 23 Agustus 1971 oleh almarhum Muhammad Saleh Kurnia di Jalan Falatehan. ', 'Surabaya'),
(7, 'Pengawasan Perencanaan Tata Kota Jakarta Pusat', 2, '2019-08-23', 'Pemkot Jakarta Pusat', 'http://ds.konseparsitek.com/upload/portofolio/03250718201957.jpg', 'Pekerjaan Pengawasan Perencanaan Tata Kota Jakarta Pusat adalah kerjasama antara pemerintah kota jakarta pusat dengan pemerintah pusat. yang bertujuan untuk memberikan pelayanan terbaik dalam hal infrastruktur sistem pelayanan masyarakat dalam wilayah jak', 'Jakarta Pusat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `posisi_penugasan`
--

CREATE TABLE `posisi_penugasan` (
  `id` int(20) NOT NULL,
  `posisi` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `posisi_penugasan`
--

INSERT INTO `posisi_penugasan` (`id`, `posisi`) VALUES
(1, 'Ahli Geohidrologi'),
(2, 'Tenaga Ahli Bangunan Gedung'),
(3, 'Team Leader'),
(4, 'Tenaga Ahli Teknik Sipil'),
(5, 'Ahli Arsitek'),
(6, 'Tenaga Ahli Mekanikal'),
(7, 'Tenaga Ahli Interior'),
(8, 'Tenaga Ahli Lanscape'),
(9, 'Tenaga Ahli Estimator'),
(10, 'Asisten Ahli Teknik Sipil'),
(11, 'Asisten Ahli Arsitek'),
(12, 'Chief Inspector'),
(13, 'Asisten Ahli Teknik Lingkungan'),
(14, 'Asisten Ahli Cost Estimator'),
(15, 'Drafter'),
(16, 'Surveyor'),
(17, 'Operator CAD dan Komputer'),
(18, 'Tenaga Ahli Teknik Lingkungan'),
(19, 'Inspector'),
(20, 'Administrasi'),
(21, 'Site Engginer'),
(22, 'Inspector Sipil'),
(23, 'Inspector Mekanikal dan Elektrikal'),
(24, 'Operator Komputer'),
(25, 'CAD Operator'),
(26, 'Inspector K3'),
(27, 'Draftman'),
(28, 'Team Ahli Teknik Air Minum'),
(29, 'Material Technician'),
(30, 'Tenaga Ahli Kualitas dan Kuantitas'),
(31, 'Health Safety Environment (HSE)'),
(32, 'Pengawas Bangunan Gedung'),
(33, 'Tenaga Pengawas'),
(34, 'Juru Ukur atau Hitung atau Estimator Kuantitas'),
(35, 'Cad Operator atau Drafter'),
(36, 'Ahli K3 Konstruksi'),
(37, 'Tenaga Ahli Elektrikal'),
(38, 'Ahli Manajemen Mutu'),
(39, 'Pengawas Arsitek'),
(40, 'Pengawas Utilitas dan ME'),
(41, 'Asisten Tenaga Ahli K3'),
(43, 'Ahli Struktur'),
(44, 'Supervision Engineer'),
(45, 'Pengawas Struktur'),
(46, 'Pengawas Elektrikal'),
(47, 'Supervision Engineer (SE)'),
(48, 'Inspection Engineer (IE)'),
(49, 'Ahli K3'),
(50, 'Ahli Geoteknik'),
(51, 'Pengawas Mutu'),
(52, 'Pengawas Mutu'),
(53, 'Tenaga Ahli Mekanikal atau Elektrikal'),
(54, 'Juru Ukur'),
(55, 'Ahli Teknik Pantai'),
(56, 'Ahli Geodesi'),
(57, 'Ahli Bangunan Air'),
(58, 'Ahli Mekanika Tanah'),
(59, 'Ahli Arsitektur Landscape'),
(60, 'Ahli Sosial Ekonomi'),
(61, 'Quality dan Quantity Engineer'),
(62, 'Tenaga Ahli Jalan'),
(63, 'Ahli Teknik Tenaga Listrik'),
(64, 'Ahli Iluminasi'),
(65, 'Asisten Ahli Teknik Tenaga Listrik'),
(66, 'Asisten Ahli Mekanikal'),
(67, 'Asisten Ahli Sipil'),
(68, 'Asisten Ahli Estimator'),
(69, 'Ahli Bidang Tata Udara Pendingin Refrigerasi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi`
--

CREATE TABLE `referensi` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_idkop_surat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tanggal_ttd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nosurat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namappk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatanppk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_iddaftar_riwayat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nokontrak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktuawal` date DEFAULT NULL,
  `waktuakhir` date DEFAULT NULL,
  `template_surat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `referensi`
--

INSERT INTO `referensi` (`id`, `fk_idkop_surat`, `tempat_tanggal_ttd`, `nosurat`, `namappk`, `jabatanppk`, `nip`, `fk_iddaftar_riwayat`, `perusahaan`, `pekerjaan`, `lokasi`, `nokontrak`, `waktuawal`, `waktuakhir`, `template_surat`, `created_at`, `updated_at`) VALUES
(2, '1', 'hg', 'hjv', 'v', NULL, NULL, '16', NULL, NULL, NULL, NULL, '2021-02-21', '2021-03-13', 'a', '2021-02-27 01:32:36', '2021-02-27 01:32:36'),
(3, '1', '54', '54', '54', NULL, NULL, '16', NULL, NULL, NULL, NULL, NULL, '0005-05-04', 'a', '2021-02-27 01:42:56', '2021-02-27 01:42:56'),
(4, '1', '54', '545', '45', NULL, NULL, '16', NULL, NULL, NULL, NULL, '2021-02-01', '0045-04-22', 'a', '2021-02-27 01:43:53', '2021-02-27 01:43:53'),
(5, '1', '21', '231', '32123', NULL, NULL, '16', NULL, NULL, NULL, NULL, '2011-02-01', '2015-02-01', 'a', '2021-02-27 01:44:45', '2021-02-27 01:44:45'),
(6, '2', '32123121', '21', '21', NULL, NULL, '16', NULL, NULL, NULL, NULL, NULL, NULL, 'a', '2021-02-27 01:45:33', '2021-02-27 01:45:33'),
(7, '1', '54', '5', '5', NULL, NULL, '16', NULL, NULL, NULL, NULL, '2015-05-05', '2022-02-05', 'a', '2021-02-27 01:47:15', '2021-02-27 01:47:15'),
(8, '1', '32123121', '21', '5', NULL, NULL, '18', NULL, NULL, NULL, NULL, '2020-02-02', '2020-03-03', 'a', '2021-02-28 18:30:19', '2021-02-28 18:30:19'),
(9, '1', '54', '5', '5', NULL, '5', '19', '5', '5', NULL, '5', '2020-05-05', '2021-02-05', 'a', '2021-02-28 18:35:34', '2021-02-28 18:35:34'),
(10, '1', '32123121', '25', '25', NULL, '25', '20', '35', '235', NULL, '35', '2020-02-05', '2020-05-06', 'a', '2021-02-28 18:38:31', '2021-02-28 18:38:31'),
(11, '2', '20', '20', '20', NULL, '10', '22', '10', '10', NULL, '101', '2020-05-06', '2021-02-06', 'a', '2021-02-28 18:52:49', '2021-02-28 18:52:49'),
(12, '1', '32123121', '5', '21', NULL, '098', '22', '5', '5', NULL, '101', NULL, '2021-05-06', 'a', '2021-02-28 19:02:51', '2021-02-28 19:02:51'),
(13, '5', '6', '6', '6', '6', '6', '23', '6', '6', '6', '6', '2020-09-06', '2020-09-09', 'a', '2021-02-28 19:19:49', '2021-02-28 19:19:49'),
(14, '2', '32123121', '21', '5', '5', '5', '24', '5', '5', '5', '5', '2020-05-06', '2021-05-06', 'a', '2021-02-28 23:35:56', '2021-02-28 23:35:56'),
(15, '1', '6', '6', '6', '6', '6', '24', '6', '6', '6', '6', '2020-06-06', '2021-05-06', 'a', '2021-02-28 23:36:22', '2021-02-28 23:36:22'),
(16, '3', '32123121', '5', '5', '5', '5', '25', '6', '5', '5', '101', '2020-02-22', '2021-02-02', 'a', '2021-03-01 19:53:19', '2021-03-01 19:53:19'),
(17, '1', '32123121', '5', '5', '5', '098', '26', '5', '5', '5', '5', '2020-05-05', '2021-03-31', 'a', '2021-03-01 23:09:46', '2021-03-01 23:09:46'),
(18, '1', NULL, NULL, NULL, NULL, NULL, '26', NULL, NULL, NULL, NULL, NULL, NULL, 'a', '2021-03-01 23:10:35', '2021-03-01 23:10:35'),
(19, '3', '546', '6', '6', '6', '6', '26', '6', '6', '6', '6', '2020-06-06', '2020-09-09', 'a', '2021-03-01 23:18:41', '2021-03-01 23:18:41'),
(20, '3', '5', '5', '5', '5', '5', '26', '5', '5', '5', '5', '2020-05-05', '2020-06-06', 'a', '2021-03-01 23:19:53', '2021-03-01 23:19:53'),
(21, '2', 'umboto, januari 2020', '256/bvsdjfbuj/asdfjh/2020', 'SRI', 'Pejabat Pembual', '064587915', '26', 'PT. ABC', 'Belanja belanja', 'Jombang', '32144/knasbd/320/2020', '2021-03-02', '2021-03-27', 'a', '2021-03-02 00:25:39', '2021-03-02 00:25:39'),
(22, '2', '5', '6', '5', '5', '098', '28', '6', '5', 'Jombang', '101', '2021-03-03', '2021-04-10', 'a', '2021-03-02 18:58:33', '2021-03-02 18:58:33'),
(23, '1', '32123121', '54', '65', '65', '56', '28', '6', '65', '65', '56', NULL, '2021-10-10', 'a', '2021-03-02 19:01:35', '2021-03-02 19:01:35'),
(24, '1', '8479', '987', '987', '789', '987', '28', '987', '987', '987', '987', '2020-09-09', '2021-10-10', 'a', '2021-03-02 19:01:59', '2021-03-02 19:01:59'),
(25, '1', '56', '6', '6', '6', '6', '31', '6', '6', '6', '6', '2021-03-03', '2021-04-02', 'a', '2021-03-03 00:12:57', '2021-03-03 00:12:57'),
(26, '1', '654', '654', '654', '654', '654', '31', '654', '564', '654', '56', '2021-03-03', '2021-03-27', 'a', '2021-03-03 01:47:17', '2021-03-03 01:47:17'),
(27, '1', '32123121', '5', '5', '5', '5', '33', '5', '5', 'a', '101', '2021-03-13', '2021-04-02', 'a', '2021-03-12 23:59:43', '2021-03-12 23:59:43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `referensi_temp`
--

CREATE TABLE `referensi_temp` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `fk_idkop_surat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat_tanggal_ttd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nosurat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `namappk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatanppk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fk_iddaftar_riwayat` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `perusahaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pekerjaan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lokasi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nokontrak` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktuawal` date DEFAULT NULL,
  `waktuakhir` date DEFAULT NULL,
  `template_surat` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `struktur`
--

CREATE TABLE `struktur` (
  `id_struktur` int(255) NOT NULL,
  `struktur` tinytext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `struktur`
--

INSERT INTO `struktur` (`id_struktur`, `struktur`) VALUES
(1, 'http://ds.konseparsitek.com/upload/struktur/01290750201905.pdf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `team_work`
--

CREATE TABLE `team_work` (
  `id_team_work` int(255) NOT NULL,
  `nama` tinytext DEFAULT NULL,
  `jabatan` tinytext DEFAULT NULL,
  `foto` tinytext DEFAULT NULL,
  `level` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `team_work`
--

INSERT INTO `team_work` (`id_team_work`, `nama`, `jabatan`, `foto`, `level`) VALUES
(2, 'Agus Mulyadi, ST.', 'Head Office Perencanaan', 'http://ds.konseparsitek.com/upload/team_work/03250721201901.png', NULL),
(3, 'Robert Sastro Wardoyo, ST.', 'Direktur Pengembangan SDM', 'http://ds.konseparsitek.com/upload/team_work/03250720201950.png', NULL),
(4, 'Munawarman, ST.', 'Head Office Pengawasan', 'http://ds.konseparsitek.com/upload/team_work/03250720201938.png', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tenaga_ahli`
--

CREATE TABLE `tenaga_ahli` (
  `id` int(20) NOT NULL,
  `nama_tenaga_ahli` varchar(50) NOT NULL,
  `ska` varchar(50) NOT NULL,
  `tenggang_waktu` varchar(50) NOT NULL,
  `status_ska` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tenaga_ahlis`
--

CREATE TABLE `tenaga_ahlis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_penetapan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tenaga_ahlis`
--

INSERT INTO `tenaga_ahlis` (`id`, `nama`, `sertifikat`, `tanggal_penetapan`, `status_sertifikat`, `file`, `created_at`, `updated_at`) VALUES
(74, 'Peni Puspendah Sinarti,. ST', 'Ahli Arsitektur Lansekap Madya', '2019-08-28', 'Elektronik', 'Peni Puspendah Sinarti,. ST_Ahli Manajemen Konstruksi - Madya_857821373.pdf', '2020-04-17 00:47:15', '2020-04-22 08:18:14'),
(78, 'Mochamad Yusuf Kurniawan, ST.', 'Ahli Bangunan Gedung Madya', '2021-07-06', 'Elektronik', 'Mochamad Yusuf Kurniawan, ST._Ahli Bangunan Gedung Madya_916958735.pdf', '2020-04-22 08:07:13', '2021-07-16 17:13:34'),
(79, 'Mochamad Yusuf Kurniawan, ST.', 'Ahli Sumber Daya Air Muda', '2020-02-25', 'Elektronik', 'Mochamad Yusuf Kurniawan, ST._Ahli Sumber Daya Air Madya_414500758.pdf', '2020-04-22 08:07:48', '2021-07-16 17:17:09'),
(80, 'Mochamad Yusuf Kurniawan, ST.', 'Ahli Teknik Jalan Madya', '2022-02-14', 'Elektronik', 'Mochamad Yusuf Kurniawan, ST._Ahli Teknik Jalan Madya_188247210.pdf', '2020-04-22 08:08:26', '2022-02-14 01:35:02'),
(81, 'Arif Khoirul Wafa, ST.', 'Ahli Arsitek Madya', '2019-02-14', 'Elektronik', 'Arif Khoirul Wafa, ST._Ahli Arsitek Madya_63870320.pdf', '2020-04-22 08:10:59', '2020-09-14 20:55:40'),
(82, 'Arif Khoirul Wafa, ST.', 'Ahli Desain Interior Madya', '2017-06-07', 'Non Elektronik', NULL, '2020-04-22 08:11:45', '2020-04-22 08:11:45'),
(83, 'Subiantoro Harahap, ST.', 'Ahli Bangunan Gedung Madya', '2019-04-22', 'Elektronik', 'Subiantoro Harahap, ST._Ahli Bangunan Gedung Madya_854368278.pdf', '2020-04-22 08:13:27', '2020-04-30 06:31:56'),
(84, 'Subiantoro Harahap, ST.', 'Ahli Sistem Manajemen Mutu Madya', '2019-04-16', 'Elektronik', 'Subiantoro Harahap, ST._Ahli Sistem Manajemen Mutu Madya_582808466.pdf', '2020-04-22 08:13:59', '2020-04-30 06:32:23'),
(85, 'Arif Cahyono, ST.', 'Ahli Teknik Elektronika dan Telekomunikasi Dalam Gedung', '2019-08-09', 'Non Elektronik', NULL, '2020-04-22 08:15:15', '2020-04-23 01:38:31'),
(86, 'Arif Cahyono, ST.', 'Ahli Teknik Tenaga Listrik', '2019-04-22', 'Elektronik', 'Arif Cahyono, ST._Ahli Teknik Tenaga Listrik_608626817.pdf', '2020-04-22 08:16:31', '2020-09-14 21:00:33'),
(87, 'Peni Puspendah Sinatri, ST.', 'Ahli Arsitek Madya', '2019-04-24', 'Elektronik', 'Peni Puspendah Sinatri, ST._Ahli Arsitek Madya_800053781.pdf', '2020-04-22 08:18:52', '2020-09-14 20:54:50'),
(88, 'Djamrud Mangestu Putro', 'Ahli Arsitek Madya', '2019-09-30', 'Elektronik', 'Djamrud Mangestu Putro_Ahli Arsitek Madya_313682251.pdf', '2020-04-22 08:19:56', '2020-09-14 20:55:14'),
(89, 'Arif Rahman, ST.', 'Ahli Teknik Jalan-Muda', '2020-02-11', 'Elektronik', 'Arif Rahman, ST._Ahli Teknik Jalan-Muda_888164445.pdf', '2020-05-12 03:00:42', '2020-05-12 03:00:42'),
(92, 'LUFFI HUDIANDRI', 'Ahli Teknik Bangunan Gedung-Madya', '2020-03-16', 'Elektronik', 'LUFFI HUDIANDRI_Ahli Teknik Bangunan Gedung-Madya_134727369.pdf', '2020-09-14 21:01:37', '2021-01-18 21:10:16'),
(94, 'EKO HADI PARIYANTO, ST', 'Ahli Teknik Mekanikal-Madya', '2019-04-23', 'Elektronik', 'EKO HADI PARIYANTO, ST_Ahli Teknik Mekanikal-Madya_222180700.pdf', '2020-09-14 21:05:02', '2020-09-14 21:05:02'),
(95, 'MUHAMMAD TRIYONO, ST', 'Ahli Geoteknik-Madya', '2020-03-17', 'Elektronik', 'M. Triyono, ST_Ahli Geoteknik-Muda_608199604.pdf', '2020-09-14 21:06:16', '2021-07-15 08:55:16'),
(96, 'FITRIYA KURNIAWATI HOFSAH', 'Ahli Teknik Bangunan Gedung-Madya', '2020-03-17', 'Elektronik', 'FITRIYA KURNIAWATI HOFSAH_Ahli Teknik Bangunan Gedung-Madya_201037070.pdf', '2020-09-14 21:06:54', '2020-09-14 21:06:54'),
(97, 'Rendra Bayu Alwana', 'Ahli Teknik Plambing dan Pompa Mekanik-Madya', '2020-03-17', 'Elektronik', 'Rendra Bayu Alwana_Ahli Teknik Plambing dan Pompa Mekanik-Madya_507426461.pdf', '2020-09-14 21:07:49', '2020-09-14 21:07:49'),
(98, 'HERU SUBAGIYO', 'Ahli Sistem Manajemen Mutu-Muda', '2020-03-17', 'Elektronik', 'HERU SUBAGIYO_Ahli Sistem Manajemen Mutu-Muda_660853243.pdf', '2020-09-14 21:09:02', '2020-09-14 21:09:02'),
(99, 'LUHUR AKBAR DEVIANTO, ST', 'Ahli Teknik Lingkungan-Madya', '2020-03-09', 'Elektronik', 'LUHUR AKBAR DEVIANTO, ST_Ahli Teknik Lingkungan-Madya_718356453.pdf', '2020-09-14 21:11:01', '2020-09-14 21:11:01'),
(102, 'LUFFI HUDIANDRI', 'Ahli Teknik Dermaga-Muda', '2020-11-29', 'Elektronik', 'LUFFI HUDIANDRI_Ahli Teknik Dermaga-Muda_501117620.pdf', '2020-09-24 21:10:00', '2020-09-24 21:10:00'),
(103, 'LUFFI HUDIANDRI', 'AHLI TEKNIK LANDASAN TERBANG-Muda', '2020-02-26', 'Elektronik', 'LUFFI HUDIANDRI_AHLI TEKNIK LANDASAN TERBANG-Muda_251603921.pdf', '2020-09-24 21:10:44', '2020-09-24 21:10:44'),
(104, 'MUHAMMAD TRIYONO', 'Ahli K3 Konstruksi-Madya', '2020-06-08', 'Elektronik', 'MUHAMMAD TRIYONO_Ahli K3 Konstruksi-Madya_361962676.pdf', '2020-09-24 21:20:23', '2020-09-24 21:20:23'),
(105, 'MUHAMMAD TRIYONO', 'Ahli Manajemen Konstruksi-Madya', '2020-03-24', 'Elektronik', 'MUHAMMAD TRIYONO_Ahli Manajemen Konstruksi-Madya_528110648.pdf', '2020-09-24 21:21:02', '2020-09-24 21:21:02'),
(106, 'AYATTULAH ABU BAKAR', 'Ahli Geoteknik-Madya', '2020-03-17', 'Elektronik', 'AYATTULAH ABU BAKAR_Ahli Geoteknik-Madya_766842279.pdf', '2020-09-24 21:21:58', '2020-09-24 21:21:58'),
(107, 'AYATULLOH ABU BAKAR', 'Ahli Teknik Jalan-Madya', '2020-03-16', 'Elektronik', 'AYATULLOH ABU BAKAR_Ahli Teknik Jalan-Madya_343936256.pdf', '2020-09-24 21:23:24', '2020-09-24 21:23:24'),
(108, 'HERU SUBAGIYO', 'AHLI SUMBER DAYA AIR-Muda', '2020-03-12', 'Elektronik', 'HERU SUBAGIYO_AHLI SUMBER DAYA AIR-Muda_451351054.pdf', '2020-09-24 21:24:35', '2020-09-24 21:24:35'),
(109, 'HERU SUBAGIYO', 'Ahli Teknik Jalan-Madya', '2020-03-17', 'Elektronik', 'HERU SUBAGIYO_Ahli Teknik Jalan-Madya_92984937.pdf', '2020-09-24 21:25:17', '2020-09-24 21:25:17'),
(110, 'HERU SUBAGIYO', 'Ahli Teknik Bangunan Gedung-Muda', '2021-12-10', 'Elektronik', 'HERU SUBAGIYO_Ahli Teknik Bangunan Gedung-Muda_894940958.pdf', '2020-09-24 21:25:55', '2021-11-10 01:40:13'),
(111, 'EKO HADI PARIYANTO', 'Ahli Teknik Sistem Tata Udara dan Refrigerasi-Madya', '2020-03-17', 'Elektronik', 'EKO HADI PARIYANTO_Ahli Teknik Sistem Tata Udara dan Refrigerasi-Madya_329173424.pdf', '2020-09-24 21:27:07', '2020-09-24 21:27:07'),
(112, 'RENDRA BAYU ALWANA', 'Ahli Teknik Mekanikal-Madya', '2020-03-17', 'Elektronik', 'RENDRA BAYU ALWANA_Ahli Teknik Mekanikal-Madya_693578170.pdf', '2020-09-24 21:30:16', '2020-09-24 21:30:16'),
(113, 'GIGIH SUSANTO', 'Ahli Teknik Sumber Daya Air-Madya', '2018-01-19', 'Elektronik', 'GIGIH SUSANTO_Ahli Teknik Sumber Daya Air-Madya_377195783.pdf', '2020-09-24 21:34:35', '2020-09-24 21:34:35'),
(114, 'ACHMAD FAISAL', 'Ahli Teknik Air Minum-Madya', '2018-07-16', 'Elektronik', 'ACHMAD FAISAL_Ahli Teknik Air Minum-Madya_326703.pdf', '2020-09-24 21:36:19', '2020-09-24 21:36:19'),
(115, 'ACHMAD FAISAL', 'Ahli Teknik Lingkungan-Madya', '2020-01-22', 'Elektronik', 'ACHMAD FAISAL_Ahli Teknik Lingkungan-Madya_746531854.pdf', '2020-09-24 21:37:22', '2020-09-24 21:37:22'),
(116, 'HERI WINARKO', 'Ahli Teknik Proteksi Kebakaran-Madya', '2020-05-15', 'Elektronik', 'HERI WINARKO_Ahli Teknik Proteksi Kebakaran-Madya_313475809.pdf', '2020-09-24 21:38:39', '2020-09-24 21:38:39'),
(117, 'EVY FATMAWATY', 'Ahli Teknik Tenaga Listrik-Muda', '2020-03-16', 'Elektronik', 'EVY FATMAWATY_Ahli Teknik Tenaga Listrik-Muda_858502777.pdf', '2020-09-24 21:40:16', '2020-09-24 21:40:16'),
(118, 'DONNY SAPUTRO', 'Ahli Teknik Bangunan Gedung-Muda', '2019-10-30', 'Elektronik', 'DONNY SAPUTRO_Ahli Teknik Bangunan Gedung-Muda_942023423.pdf', '2020-09-24 21:42:34', '2020-09-24 21:42:34'),
(119, 'ANDI PURWANTO', 'Ahli Geodesi-Muda', '2020-02-26', 'Elektronik', 'ANDI PURWANTO_Ahli Geodesi-Muda_568822419.pdf', '2020-09-24 21:44:15', '2020-09-24 21:44:15'),
(120, 'NURUL HUSAENI', 'Ahli Manajemen Konstruksi-Madya', '2020-04-13', 'Elektronik', 'NURUL HUSAENI_Ahli Manajemen Konstruksi-Madya_797771736.pdf', '2020-09-24 21:45:32', '2020-09-24 21:45:32'),
(121, 'TEGUH ANDRIYANTO', 'AHLI TENAGA LISTRIK-Madya', '2020-07-10', 'Elektronik', 'TEGUH ANDRIYANTO_AHLI TENAGA LISTRIK-Madya_235589102.pdf', '2020-11-01 19:56:46', '2020-11-01 19:56:46'),
(123, 'AYATULLOH ABU BAKAR', 'Ahli Manajemen Proyek-Madya', '2020-12-08', 'Elektronik', 'AYATULLOH ABU BAKAR_Ahli Manajemen Proyek-Madya_355581680.pdf', '2021-01-18 22:23:52', '2021-01-18 22:23:52'),
(124, 'AYATULLOH ABU BAKAR', 'AHLI SUMBER DAYA AIR-Muda', '2020-03-03', 'Elektronik', 'AYATULLOH ABU BAKAR_AHLI SUMBER DAYA AIR-Muda_454627271.pdf', '2021-01-18 22:24:51', '2021-01-18 22:24:51'),
(127, 'GIGIH SUSANTO, ST.', 'Ahli Manajemen Konstruksi-Muda', '2020-04-21', 'Elektronik', 'GIGIH SUSANTO, ST._Ahli Manajemen Konstruksi-Muda_61753132.pdf', '2021-07-16 16:41:07', '2021-07-16 16:41:07'),
(128, 'ANTOK SETIAWAN, ST.', 'Ahli K3 Konstruksi-Muda', '2021-06-21', 'Elektronik', 'ANTOK SETIAWAN, ST._Ahli K3 Konstruksi-Muda_582609646.pdf', '2021-07-23 03:56:03', '2021-07-23 03:56:03'),
(129, 'HELMI ROMANDIANSYAH, ST.', 'Ahli Manajemen Konstruksi-Madya', '2020-03-26', 'Elektronik', 'HELMI ROMANDIANSYAH, ST._Ahli Manajemen Konstruksi-_924593043.pdf', '2021-07-25 22:51:39', '2021-07-25 22:52:05'),
(130, 'Helmi Romandiansyah, ST.', 'Ahli Teknik Bangunan Gedung-Madya', '2021-11-30', 'Elektronik', 'Helmi Romandiansyah, ST._Ahli Teknik Bangunan Gedung-Madya_614660885.pdf', '2021-12-09 00:20:26', '2021-12-09 00:20:26'),
(131, 'Agung Saksono, ST.', 'Ahli Teknik Bangunan Gedung-Madya', '2021-11-24', 'Elektronik', 'Agung Saksono, ST._Ahli Teknik Bangunan Gedung-Madya_758448222.pdf', '2021-12-09 00:22:30', '2021-12-09 00:22:30'),
(132, 'Agung Saksono, ST.', 'Ahli Teknik Jalan-Madya', '2021-11-24', 'Elektronik', 'Agung Saksono, ST._Ahli Teknik Jalan-Madya_814629122.pdf', '2021-12-09 00:23:25', '2021-12-09 00:23:25'),
(133, 'SUBIANTORO, ST.', 'Ahli Teknik Jalan-Muda', '2022-01-07', 'Elektronik', 'SUBIANTORO, ST._Ahli Teknik Jalan-Muda_995229265.pdf', '2022-01-10 03:14:16', '2022-01-10 03:14:16'),
(134, 'SUBIANTORO, ST.', 'Ahli Teknik Bangunan Gedung-Muda', '2022-01-07', 'Elektronik', 'SUBIANTORO, ST._Ahli Teknik Bangunan Gedung-Muda_514772003.pdf', '2022-01-10 03:14:45', '2022-01-10 03:14:45'),
(135, 'ARIF RAHMAN, ST.', 'Ahli Teknik Bangunan Gedung-Muda', '2022-01-04', 'Elektronik', 'ARIF RAHMAN, ST._Ahli Teknik Bangunan Gedung-Muda_726644505.pdf', '2022-01-10 03:17:54', '2022-01-10 03:17:54'),
(136, 'AGUS PURWOTO, ST.', 'Ahli Teknik Jalan-Madya', '2020-03-16', 'Non Elektronik', NULL, '2022-01-18 19:28:34', '2022-01-18 19:28:34'),
(137, 'AGUS PURWOTO, ST.', 'Ahli Teknik Sumber Daya Air-Madya', '2019-08-30', 'Non Elektronik', NULL, '2022-01-18 19:29:24', '2022-01-18 19:29:24'),
(138, 'AGUS PURWOTO, ST.', 'Ahli Teknik Jembatan-Madya', '2020-03-05', 'Non Elektronik', NULL, '2022-01-18 19:29:58', '2022-01-18 19:29:58'),
(139, 'Luhur Akbar Devianto, ST.', 'Ahli Teknik Sanitasi dan Limbah-Muda', '2020-07-03', 'Elektronik', 'Luhur Akbar Devianto, ST._Ahli Teknik Sanitasi dan Limbah-Muda_838668334.pdf', '2022-02-08 20:21:00', '2022-02-08 20:21:00'),
(140, 'NURUL HUSAENI', 'Ahli Teknik Lingkungan-Muda', '2020-10-07', 'Elektronik', 'NURUL HUSAENI_Ahli Teknik Lingkungan-Muda_488330567.pdf', '2022-03-18 22:57:36', '2022-03-18 22:57:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tenaga_keterampilan`
--

CREATE TABLE `tenaga_keterampilan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_penetapan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_sertifikat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tenaga_keterampilan`
--

INSERT INTO `tenaga_keterampilan` (`id`, `nama`, `sertifikat`, `tanggal_penetapan`, `status_sertifikat`, `file`, `created_at`, `updated_at`) VALUES
(7, 'RM RUDI ANGGUN SASMITHA PRAWIRO', 'Juru Gambar atau  Draftman – Sipil-Kelas I', '2020-04-09', 'Elektronik', 'RM RUDI ANGGUN SASMITHA PRAWIRO_Juru Gambar atau  Draftman – Sipil-Kelas I_318080631.pdf', '2020-09-24 19:49:24', '2020-09-24 19:49:24'),
(8, 'RAHMAD HIDAYAT', 'TUKANG PEKERJAAN BAJA-Kelas I', '2020-09-22', 'Elektronik', 'RAHMAD HIDAYAT_TUKANG PEKERJAAN BAJA-Kelas I_403905043.pdf', '2020-09-24 19:50:41', '2020-09-24 19:50:41'),
(9, 'SULAR ISTIAWAN', 'MANDOR TUKANG BATU/BATA/BETON-Kelas I', '2020-09-21', 'Elektronik', 'SULAR ISTIAWAN_MANDOR TUKANG BATU/BATA/BETON-Kelas I_808965347.pdf', '2020-09-24 19:51:38', '2020-09-24 19:51:38'),
(10, 'MAS NANUNG SUGIANTO', 'Tukang Pasang Keramik ( Lantai dan Dinding )-Kelas I', '2020-09-21', 'Elektronik', 'MAS NANUNG SUGIANTO_Tukang Pasang Keramik ( Lantai dan Dinding )-Kelas I_533153315.pdf', '2020-09-24 19:53:11', '2020-09-24 19:53:11'),
(11, 'AJI PRATAMA PUTRA', 'Pengawas Bangunan Gedung-Kelas I', '2020-06-06', 'Elektronik', 'AJI PRATAMA PUTRA_Pengawas Bangunan Gedung-Kelas I_800219074.pdf', '2020-09-24 19:57:02', '2020-09-24 19:57:02'),
(12, 'WAHYU KHOIROHMAN', 'Teknisi Instalasi Jaringan Tegangan Rendah (JTR)-Kelas I', '2020-06-16', 'Elektronik', 'WAHYU KHOIROHMAN_Teknisi Instalasi Jaringan Tegangan Rendah (JTR)-Kelas I_254059023.pdf', '2020-09-24 19:58:20', '2020-09-24 19:58:20'),
(13, 'JOVY ALVIAN', 'PENGAWAS MUTU PELAKSANAAN KONSTRUKSI BANGUNAN GEDUNG-Kelas I', '2020-03-26', 'Elektronik', 'JOVY ALVIAN_PENGAWAS MUTU PELAKSANAAN KONSTRUKSI BANGUNAN GEDUNG-Kelas I_632417157.pdf', '2020-09-24 20:00:55', '2020-09-24 20:00:55'),
(14, 'NUNUK INDRAWATI', 'PELAKSANA LAPANGAN PEKERJAAN JARINGAN IRIGASI-Kelas I', '2020-03-09', 'Elektronik', 'NUNUK INDRAWATI_PENGAWAS LAPANGAN PEKERJAAN JARINGAN IRIGASI-Kelas I_971383710.pdf', '2020-09-24 20:04:11', '2022-02-16 02:35:33'),
(15, 'SUBIANTORO', 'PELAKSANA SALURAN IRIGASI-Kelas I', '2020-03-09', 'Elektronik', 'SUBIANTORO_PELAKSANA SALURAN IRIGASI-Kelas I_101796131.pdf', '2020-09-24 20:04:58', '2020-09-24 20:04:58'),
(16, 'YURISDAL', 'Pengawas Lapangan Pekerjaan Jembatan-Kelas I', '2020-05-17', 'Elektronik', 'YURISDAL_Pengawas Lapangan Pekerjaan Jembatan-Kelas I_643869153.pdf', '2020-09-24 20:05:15', '2020-09-24 20:05:15'),
(17, 'ANDI PURWANTO', 'Juru Ukur Kuantitas Pekerjaan Jalan dan Jembatan-Kelas I', '2020-01-31', 'Elektronik', 'ANDI PURWANTO_Juru Ukur Kuantitas Pekerjaan Jalan dan Jembatan-Kelas I_722298520.pdf', '2020-09-24 20:06:48', '2020-09-24 20:06:48'),
(18, 'SONI', 'Pelaksana Pekerjaan Jalan-Kelas I', '2019-07-24', 'Elektronik', 'SONI_Pelaksana Pekerjaan Jalan-Kelas I_771354758.pdf', '2020-09-24 20:06:57', '2020-09-24 20:06:57'),
(19, 'DESIAR PUJOSUTANTO', 'JURU UKUR KUANTITAS BANGUNAN GEDUNG-Kelas I', '2020-05-16', 'Elektronik', 'DESIAR PUJOSUTANTO_JUYRU UKUR KUANTITAS BANGUNAN GEDUNG-Kelas I_1000626377.pdf', '2020-09-24 20:08:21', '2021-04-19 08:47:32'),
(20, 'UMAR JOKO BASUKI', 'Pelaksana Pekerjaan Jalan-Kelas I', '2019-07-24', 'Elektronik', 'UMAR JOKO BASUKI_Pelaksana Pekerjaan Jalan-Kelas I_839196226.pdf', '2020-09-24 20:09:25', '2020-09-24 20:09:25'),
(21, 'HERU SUBAGIYO', 'Pengawas Lapangan Pekerjaan Jalan-Kelas I', '2020-08-27', 'Elektronik', 'HERU SUBAGIYO_Pengawas Lapangan Pekerjaan Jalan-Kelas I_113574068.pdf', '2020-09-24 20:11:17', '2020-09-24 20:11:17'),
(22, 'SONI', 'Pengawas Lapangan Pekerjaan Jalan-Kelas I', '2020-08-27', 'Elektronik', 'SONI_Pengawas Lapangan Pekerjaan Jalan-Kelas I_737020783.pdf', '2020-09-24 20:12:20', '2020-09-24 20:12:20'),
(23, 'HADI PRAYITNO', 'Pelaksana Bangunan Gedung atau Pekerjaan Gedung-Kelas I', '2019-10-01', 'Elektronik', 'HADI PRAYITNO_Pelaksana Bangunan Gedung atau Pekerjaan Gedung-Kelas I_847304941.pdf', '2020-09-24 20:13:21', '2020-09-24 20:13:21'),
(24, 'ANDI PURWANTO', 'Pengawas Lapangan Pekerjaan Jalan-Kelas I', '2020-12-27', 'Elektronik', 'ANDI PURWANTO_Pengawas Lapangan Pekerjaan Jalan-Kelas I_936710492.pdf', '2020-09-24 20:14:31', '2020-09-24 20:14:31'),
(25, 'JOVY ALVIAN', 'PENGAWAS PEKERJAAN JALAN-Kelas I', '2019-12-27', 'Elektronik', 'JOVY ALVIAN_PENGAWAS PEKERJAAN JALAN-Kelas I_278062325.pdf', '2020-09-24 20:20:31', '2020-09-24 20:20:31'),
(26, 'BUKHORI MUSLIM', 'Juru Gambar Pekerjaan Jalan dan Jembatan-Kelas I', '2018-01-31', 'Elektronik', 'BUKHORI MUSLIM_Juru Gambar Pekerjaan Jalan dan Jembatan-Kelas I_116566337.pdf', '2020-09-24 21:02:18', '2020-09-24 21:02:18'),
(27, 'RM RUDI ANGGUN SASMITHA', 'PENATAAN TAMAN LANDSCAPE-Kelas I', '2019-08-27', 'Elektronik', 'RM RUDI ANGGUN SASMITHA_PENATAAN TAMAN LANDSCAPE-Kelas I_218342574.pdf', '2021-01-18 22:29:54', '2021-01-18 22:29:54'),
(28, 'HERU SUBAGIYO', 'PELAKSANA SALURAN IRIGASI-Kelas III', '2020-04-20', 'Elektronik', 'HERU SUBAGIYO_PELAKSANA SALURAN IRIGASI-Kelas III_201372004.pdf', '2021-01-18 22:34:16', '2021-01-18 22:34:16'),
(29, 'BUKHORI MUSLIM', 'Juru Ukur Kuantitas Bangunan Gedung-Kelas I', '2019-09-24', 'Elektronik', 'BUKHORI MUSLIM_Juru Ukur Kuantitas Bangunan Gedung-Kelas I_976008187.pdf', '2021-01-18 22:38:32', '2021-01-18 22:38:32'),
(30, 'RIO BELLA PRESTIAWAN', 'Mandor Pemasangan Rangka Atap Baja Ringan-Kelas I', '2019-06-11', 'Elektronik', 'RIO BELLA PRESTIAWAN_Mandor Pemasangan Rangka Atap Baja Ringan-Kelas I_184588321.pdf', '2021-07-15 08:54:13', '2021-07-15 08:54:13'),
(31, 'ABID ARIF', 'Teknisi Instalasi Jaringan Tegangan Rendah (JTR)-Kelas I', '2019-07-16', 'Elektronik', 'ABID ARIF_Teknisi Instalasi Jaringan Tegangan Rendah (JTR)-Kelas I_918336041.pdf', '2021-07-15 08:56:16', '2021-07-15 08:56:16'),
(32, 'WAHYUDI SURJADI', 'Tukang Pasang Keramik ( Lantai dan Dinding )-Kelas I', '2018-02-12', 'Elektronik', 'WAHYUDI SURJADI_Tukang Pasang Keramik ( Lantai dan Dinding )-Kelas I_840730545.pdf', '2021-07-15 08:58:49', '2021-07-15 08:58:49'),
(33, 'SUROSO', 'Pelaksana Bangunan Gedung atau Pekerjaan Gedung-Kelas I', '2019-09-24', 'Elektronik', 'SUROSO_Pelaksana Bangunan Gedung atau Pekerjaan Gedung-Kelas I_194480207.pdf', '2021-07-15 09:01:34', '2021-07-15 09:01:34'),
(34, 'BUKHORI MUSLIM', 'Penata Taman  atau  Landscape-Kelas I', '2019-08-27', 'Elektronik', 'BUKHORI MUSLIM_Penata Taman  atau  Landscape-Kelas I_38449574.pdf', '2021-07-15 09:12:16', '2021-07-15 09:12:16'),
(35, 'Muhammad Zainul Arif', 'Pengawas Saluran Irigasi-Kelas I', '2021-09-01', 'Elektronik', 'Muhammad Zainul Arif_Pengawas Saluran Irigasi-Kelas I_904328382.pdf', '2021-09-01 13:02:11', '2021-09-01 13:02:11'),
(36, 'AFGAN RIYANTIARNO, A.Md.', 'Pengawas Bangunan Gedung-Kelas I', '2021-12-10', 'Elektronik', 'AFGAN RIYANTIARNO, A.Md._Pengawas Bangunan Gedung-Kelas I_224307121.pdf', '2021-12-14 04:21:55', '2021-12-14 04:21:55'),
(37, 'AFGAN RIYANTIARNO, A.Md.', 'Pelaksana Bangunan Gedung atau Pekerjaan Gedung-Kelas I', '2020-02-11', 'Elektronik', 'AFGAN RIYANTIARNO, A.Md._Pelaksana Bangunan Gedung atau Pekerjaan Gedung-Kelas I_67481391.pdf', '2021-12-14 04:23:01', '2021-12-14 04:23:01');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(255) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `nama` varchar(50) DEFAULT NULL,
  `hak_akses` int(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `email`, `password`, `nama`, `hak_akses`) VALUES
(10, 'concept_designmuda@yahoo.com', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin', 1),
(6, 'supardiwajabae@gmail.com', '3aa29d63768b5ff5d442e5817cf879c1', 'Supardi Wajabae', 1),
(11, 'admin@admin.com', 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(5, 'admin', 'admin@cda.com', NULL, 'concept123', NULL, '2020-05-09 22:16:39', '2020-05-09 22:16:39');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `daftar_riwayat`
--
ALTER TABLE `daftar_riwayat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id_home`);

--
-- Indeks untuk tabel `kop_surat`
--
ALTER TABLE `kop_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengawasan_air`
--
ALTER TABLE `pengawasan_air`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengawasan_gedung`
--
ALTER TABLE `pengawasan_gedung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengawasan_jalan`
--
ALTER TABLE `pengawasan_jalan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perencanaan_air`
--
ALTER TABLE `perencanaan_air`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perencanaan_gedung`
--
ALTER TABLE `perencanaan_gedung`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perencanaan_jalan`
--
ALTER TABLE `perencanaan_jalan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id_pesan`);

--
-- Indeks untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  ADD PRIMARY KEY (`id_portofolio`);

--
-- Indeks untuk tabel `posisi_penugasan`
--
ALTER TABLE `posisi_penugasan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `referensi`
--
ALTER TABLE `referensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `referensi_temp`
--
ALTER TABLE `referensi_temp`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `struktur`
--
ALTER TABLE `struktur`
  ADD PRIMARY KEY (`id_struktur`);

--
-- Indeks untuk tabel `team_work`
--
ALTER TABLE `team_work`
  ADD PRIMARY KEY (`id_team_work`) USING BTREE;

--
-- Indeks untuk tabel `tenaga_ahli`
--
ALTER TABLE `tenaga_ahli`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tenaga_ahlis`
--
ALTER TABLE `tenaga_ahlis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tenaga_keterampilan`
--
ALTER TABLE `tenaga_keterampilan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `daftar_riwayat`
--
ALTER TABLE `daftar_riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `home`
--
ALTER TABLE `home`
  MODIFY `id_home` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kop_surat`
--
ALTER TABLE `kop_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `pengawasan_air`
--
ALTER TABLE `pengawasan_air`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `pengawasan_gedung`
--
ALTER TABLE `pengawasan_gedung`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=310;

--
-- AUTO_INCREMENT untuk tabel `pengawasan_jalan`
--
ALTER TABLE `pengawasan_jalan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT untuk tabel `perencanaan_air`
--
ALTER TABLE `perencanaan_air`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT untuk tabel `perencanaan_gedung`
--
ALTER TABLE `perencanaan_gedung`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT untuk tabel `perencanaan_jalan`
--
ALTER TABLE `perencanaan_jalan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT untuk tabel `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id_pesan` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT untuk tabel `portofolio`
--
ALTER TABLE `portofolio`
  MODIFY `id_portofolio` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `posisi_penugasan`
--
ALTER TABLE `posisi_penugasan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT untuk tabel `referensi`
--
ALTER TABLE `referensi`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT untuk tabel `referensi_temp`
--
ALTER TABLE `referensi_temp`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `team_work`
--
ALTER TABLE `team_work`
  MODIFY `id_team_work` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `tenaga_ahli`
--
ALTER TABLE `tenaga_ahli`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tenaga_ahlis`
--
ALTER TABLE `tenaga_ahlis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT untuk tabel `tenaga_keterampilan`
--
ALTER TABLE `tenaga_keterampilan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
