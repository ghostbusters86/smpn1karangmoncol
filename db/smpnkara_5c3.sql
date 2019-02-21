-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 21, 2019 at 08:37 AM
-- Server version: 10.2.21-MariaDB-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smpnkara_5c3`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(50) DEFAULT NULL,
  `name` varchar(30) DEFAULT NULL,
  `level` varchar(10) NOT NULL DEFAULT 'admin',
  `address` text DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `block` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `name`, `level`, `address`, `no_telp`, `email`, `block`) VALUES
('fyan', '99475282e40680c60f06d407f5e18a47', 'Fyan Dimas P', 'admin', 'Jalan Petamanan Raya, Tamansari, Purbalingga', '082243424167', 'fyanhooligan@gmail.com', 'N'),
('admin', '21232f297a57a5a743894a0e4a801fc3', 'administrator', 'admin', 'Purbalingga', '0989887877', 'admin@amail.com', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(10) NOT NULL,
  `class_name` varchar(20) NOT NULL,
  `block` enum('Y','N') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`, `block`) VALUES
(3, 'Non Unggulan', 'N'),
(5, 'Unggulan', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `detail_lesson`
--

CREATE TABLE `detail_lesson` (
  `detail_lesson_id` int(10) NOT NULL,
  `lesson_id` int(10) NOT NULL,
  `nip` char(18) DEFAULT NULL,
  `class_id` int(10) NOT NULL,
  `block` enum('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_lesson`
--

INSERT INTO `detail_lesson` (`detail_lesson_id`, `lesson_id`, `nip`, `class_id`, `block`) VALUES
(16, 12, '196904052014071045', 5, 'N'),
(17, 12, '196904052014071045', 3, 'N'),
(18, 13, '196302261995071010', 5, 'N'),
(19, 14, '196703271995072023', 5, 'N'),
(20, 14, '196703271995072023', 3, 'N'),
(21, 16, '198010182005072018', 3, 'N'),
(22, 16, '198010182005072018', 5, 'N'),
(23, 17, '196706171990072097', 5, 'N'),
(24, 17, '196706171990072097', 3, 'N'),
(25, 18, '198807011995071076', 3, 'N'),
(26, 19, '197905072005071020', 5, 'N'),
(27, 19, '197905072005071020', 3, 'N'),
(28, 20, '196911282006072025', 5, 'N'),
(29, 20, '196911282006072025', 3, 'N'),
(30, 21, '197607082003072017', 5, 'N'),
(31, 21, '197607082003072017', 3, 'N'),
(32, 22, '198611062009102006', 5, 'N'),
(33, 22, '198611062009102006', 3, 'N'),
(34, 23, '198810152009122031', 5, 'N'),
(35, 23, '198810152009122031', 3, 'N'),
(36, 24, '196804302002072029', 5, 'N'),
(37, 24, '196804302002072029', 3, 'N'),
(38, 25, '197404182011072035', 3, 'N'),
(39, 26, '198901082014072066', 5, 'N'),
(40, 26, '198901082014072066', 3, 'N'),
(41, 27, '195805031992071801', 5, 'N'),
(42, 28, '198404062014071043', 5, 'N'),
(43, 28, '198404062014071043', 3, 'N'),
(44, 29, '196903052004072022', 5, 'N'),
(45, 29, '196903052004072022', 3, 'N'),
(46, 30, '199105182015012074', 5, 'N'),
(47, 30, '199105182015012074', 3, 'N'),
(48, 31, '197512092016072047', 3, 'N'),
(49, 32, '197512182003071038', 5, 'N'),
(50, 32, '197512182003071038', 3, 'N'),
(51, 18, '198807011995071076', 5, 'N'),
(52, 27, '195805031992071801', 3, 'N'),
(53, 31, '197512092016072047', 5, 'N'),
(54, 13, '196302261995071010', 3, 'N'),
(55, 25, '197404182011072035', 5, 'N');

-- --------------------------------------------------------

--
-- Table structure for table `exm_reg`
--

CREATE TABLE `exm_reg` (
  `exm_reg_id` int(10) NOT NULL,
  `exm_schedule_id` int(10) NOT NULL,
  `nis` char(20) DEFAULT NULL,
  `x0` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exm_reg`
--

INSERT INTO `exm_reg` (`exm_reg_id`, `exm_schedule_id`, `nis`, `x0`) VALUES
(24, 7, '5352', 1),
(25, 7, '5350', 2),
(26, 8, '5319', 1),
(27, 8, '5363', 2),
(28, 9, '5319', 1),
(29, 9, '5363', 2),
(30, 9, '5368', 3),
(31, 9, '5455', 4),
(32, 9, '5385', 5),
(33, 9, '5390', 6),
(34, 9, '5356', 7),
(35, 9, '5349', 8),
(36, 9, '5383', 9),
(37, 9, '5357', 10),
(38, 9, '5355', 11),
(39, 9, '5384', 12),
(40, 9, '5361', 13),
(41, 9, '5367', 14),
(42, 9, '5358', 15),
(43, 9, '5341', 16),
(44, 9, '5374', 17),
(45, 9, '5362', 18),
(46, 9, '5346', 19),
(47, 9, '5365', 20),
(48, 11, '5319', 1),
(49, 11, '5363', 2),
(50, 11, '5368', 3),
(51, 11, '5455', 4),
(52, 11, '5385', 5);

-- --------------------------------------------------------

--
-- Table structure for table `exm_result`
--

CREATE TABLE `exm_result` (
  `exm_result_id` int(10) NOT NULL,
  `process_exm_id` int(10) NOT NULL,
  `grades` char(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exm_result`
--

INSERT INTO `exm_result` (`exm_result_id`, `process_exm_id`, `grades`) VALUES
(1, 1, '42');

-- --------------------------------------------------------

--
-- Table structure for table `exm_schedule`
--

CREATE TABLE `exm_schedule` (
  `exm_schedule_id` int(10) NOT NULL,
  `exm_schedule_name` varchar(30) NOT NULL,
  `detail_lesson_id` int(10) NOT NULL,
  `sch_year_id` int(10) NOT NULL,
  `semester` enum('Semester Ganjil','Semester Genap') NOT NULL,
  `formula_lcg_id` int(10) DEFAULT NULL,
  `question_group_id` int(10) NOT NULL,
  `exm_date` date NOT NULL,
  `exm_hour` time NOT NULL,
  `exm_time` int(3) NOT NULL,
  `enrol_key` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `exm_schedule`
--

INSERT INTO `exm_schedule` (`exm_schedule_id`, `exm_schedule_name`, `detail_lesson_id`, `sch_year_id`, `semester`, `formula_lcg_id`, `question_group_id`, `exm_date`, `exm_hour`, `exm_time`, `enrol_key`) VALUES
(4, 'XII IPS Bhs Indonesia', 29, 1, 'Semester Ganjil', 4, 1, '2018-08-20', '07:00:00', 60, 'januari 3'),
(5, 'XII IPA Bhs Indonesia', 28, 1, 'Semester Ganjil', 4, 0, '2018-08-20', '10:00:00', 60, ''),
(6, 'nb', 50, 1, 'Semester Ganjil', 5, 0, '2019-01-17', '07:00:00', 45, ''),
(7, 'cek', 28, 1, 'Semester Ganjil', 5, 1, '2019-01-26', '07:00:00', 45, '2019'),
(8, 'Bindo Februari 2', 29, 1, 'Semester Ganjil', 5, 1, '2019-02-16', '07:00:00', 0, 'yyy'),
(9, 'biologi 1', 31, 1, 'Semester Ganjil', 7, 9, '2019-02-16', '10:00:00', 45, 'aaa'),
(10, 'bahas jepang 1', 35, 1, 'Semester Ganjil', 6, 0, '2019-02-26', '07:00:00', 45, ''),
(11, 'biologi 2', 31, 1, 'Semester Ganjil', 7, 9, '2019-02-27', '07:00:00', 45, 'www');

-- --------------------------------------------------------

--
-- Table structure for table `formula_lcg`
--

CREATE TABLE `formula_lcg` (
  `formula_lcg_id` int(10) NOT NULL,
  `formula_name` varchar(20) NOT NULL,
  `a` int(2) NOT NULL,
  `b` int(2) NOT NULL,
  `m` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `formula_lcg`
--

INSERT INTO `formula_lcg` (`formula_lcg_id`, `formula_name`, `a`, `b`, `m`) VALUES
(5, 'Soal Ulangan Bhs. In', 1, 19, 50),
(6, 'tes lagi', 1, 19, 50),
(7, 'biologi 1', 1, 19, 50);

-- --------------------------------------------------------

--
-- Table structure for table `lesson`
--

CREATE TABLE `lesson` (
  `lesson_id` int(10) NOT NULL,
  `lesson_name` varchar(30) NOT NULL,
  `block` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lesson`
--

INSERT INTO `lesson` (`lesson_id`, `lesson_name`, `block`) VALUES
(12, 'Bimbingan Konseling', 'N'),
(13, 'Kimia', 'N'),
(14, 'Pend. Kewarganegaraan', 'N'),
(15, 'Sejarah', 'N'),
(16, 'Matematika', 'N'),
(17, 'Bahasa Inggris', 'N'),
(18, 'Ekonomi / Akuntansi', 'N'),
(19, 'Seni Budaya', 'N'),
(20, 'Bahasa Indonesia', 'N'),
(21, 'Biologi', 'N'),
(22, 'Bahasa Jawa', 'N'),
(23, 'Bahasa Jepang', 'N'),
(24, 'Kewirausahaan', 'N'),
(25, 'Sosiologi', 'N'),
(26, 'Pend. Agama Katolik', 'N'),
(27, 'Fisika', 'N'),
(28, 'Penjaskes', 'N'),
(29, 'Pendidikan Agama Islam', 'N'),
(30, 'Pendidikan Agama Kristen', 'N'),
(31, 'Geografi', 'N'),
(32, 'Teknik Informasi dan Komputer', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `process_exm`
--

CREATE TABLE `process_exm` (
  `process_exm_id` int(10) NOT NULL,
  `exm_reg_id` int(10) NOT NULL,
  `wrong_answr` char(10) NOT NULL,
  `correct_answr` char(10) NOT NULL,
  `not_answr` char(10) NOT NULL,
  `total_question` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `process_exm`
--

INSERT INTO `process_exm` (`process_exm_id`, `exm_reg_id`, `wrong_answr`, `correct_answr`, `not_answr`, `total_question`) VALUES
(1, 28, '29', '21', '0', '50');

-- --------------------------------------------------------

--
-- Table structure for table `question`
--

CREATE TABLE `question` (
  `question_id` int(10) NOT NULL,
  `question_group_id` int(10) NOT NULL,
  `question` text NOT NULL,
  `picture` varchar(50) NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `answer_key` enum('A','B','C','D') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question`
--

INSERT INTO `question` (`question_id`, `question_group_id`, `question`, `picture`, `a`, `b`, `c`, `d`, `answer_key`) VALUES
(6, 1, '<span style=\"font-weight: bold;\">Bacalah paragraf berikut ini dengan cermat!<br><br></span>(1)&nbsp; Sektor pertanian merupakan sektor yang&nbsp; mempunyai peranan strategis dalam&nbsp; struktur pembangunan perekonomian nasional, tetapi tidak mendapatkan&nbsp; perhatian secara serius dari pemerintah dalam pembangunan bangsa. (2) Mulai dari proteksi, kredit hingga kebijakan lain tidak satu pun yang menguntungkan bagi sektor ini. (3) Program-program pembangunan pertanian yang tidak terarah tujuannya. (4) Bahkan sektor ini semakin menjerumuskan&nbsp; pada kehancuran.&nbsp; (5)&nbsp; Padahal&nbsp; sektor&nbsp; ini merupakan sektor yang sangat banyak menampung luapan tenaga kerja dan sebagian besar penduduk kita tergantung padanya.<br><br>Kalimat utama paragraf tersebut adalah ....<br><span style=\"font-weight: bold;\"></span>', '', '(1)', '(2)', '(3)', '(4)', 'B'),
(7, 1, 'Pembangunan pertanian di Indonesia dianggap penting dari keseluruhan pembangunan nasional. Ada beberapa hal yang mendasari mengapa pembangunan pertanian di Indonesia mempunyai peranan penting, antara lain: potensi Sumber Daya Alam yang besar dan beragam, pangsa terhada pendapatan nasional yang cukup besar, besarnya pangsa terhadap ekspor nasional, besarnya penduduk Indonesia yang menggantungkan hidupnya pada sektor ini, perannya dalam penyediaan pangan masyarakat dan menjadi basis pertumbuhan di pedesaan.<br><br>Ide pokok paragraf tersebut adalah...<br>', '', 'potensi Sumber Daya Alam yang besar dan beragam', 'yang menggantungkan hidupnya pada sektor pertanian', 'beberapa hal yang mendasari pembangunan pertanian <br>', 'pentingnya peranan pembangunan pertanian di Indonesia', 'C'),
(8, 1, '(1) Pembangunan pertanian pada masa mendatang tidak hanya dihadapkan untuk memecahkan masalah yang ada, tetapi juga pada tantangan untuk menghadapi perubahan tatanan politik di Indonesia. (2) Perubahan tersebut yang mengarah pada era demokratisasi yakni tuntutan otonomi daerah dan pemberdayaan petani. (3) Di samping itu, dihadapkan pula pada tantangan untuk mengantisipasi perubahan tatanan dunia yang mengarah pada globalisasi dunia. (4) Oleh karena itu, pembangunan pertanian di Indonesia tidak saja dituntut untuk menghasilkan produk-produk pertanian yang berdaya saing tinggi, tetapi juga mampu mengembangkan pertumbuhan daerah serta pemberdayaan masyarakat. (5) Terdapat beberapa rekomendasi, tawaran, saran, masukan, dan juga tuntutan hasil dari pemikiran mahasiswa-mahasiswa pertanian Indonesia.<br><br>Kalimat yang tidak padu dalam paragraf tersebut adalah... .<br>', '', '(1)', '(2)', '(3)', '(4)', 'D'),
(9, 1, '<span style=\"font-weight: bold;\">Cermati pantun berikut !<br><br></span>Ke toko beli kain batik<br>Coraknya khas budaya betawi<br>Jika kamu berhati baik<br>.......<br><br>Larik yang tepat untuk melengkapi pantun tersebut adalah.....<br><span style=\"font-weight: bold;\"></span>', '', 'Tidak seorangpun akan iri<br>', 'Itu tandanya kamu berseri-seri<br>', 'Carilah orang untuk menemani<br>', 'banyak orang akan memuji<br>', 'B'),
(10, 1, '<span style=\"font-weight: bold;\">Cermati kedua pantun berikut!<br><br>Pantun 1</span><br>Pagi-pagi makan gorengan<br>Makan gorengan dengan kopi<br>Hati-hati mencari teman<br>Jangan dekati yang tinggi hati<br><span style=\"font-weight: bold;\"><br>Pantun 2</span><br>Pergi ke pasar beli sepatu<br>Sepatu produksi dalam negeri<br>Perbuatan jelek jangan ditiru<br>Nanti dirimu akan dibenci<br><br>Jenis isikedua bait pantun tersebut adalah ....', '', 'Nasihat', 'Jenaka', 'Remaja', 'Agama', 'A'),
(11, 1, '<span style=\"font-weight: bold;\">Cermati penulisan judul buku berikut! </span><br><br>Akhirnya saya dapat juga hadiah sebuah buku dari kakak yang berjudul<br><span style=\"text-decoration: underline;\"><span style=\"font-weight: bold;\"><span style=\"color: rgb(51, 102, 255);\"><span style=\"font-style: italic;\">daun yang jatuh tak pernah membenci angin, karya Tere Liye</span></span></span></span><br><br>Perbaikan penulisan judul yang sesuai dengan EYD untuk judul buku tersebut adalah ... .', '', 'Daun Yang Jatuh Tak Pernah Membenci Angin', 'Daun yang Jatuh tak Pernah Membenci Angin', 'Daun yang Jatuh Tak Pernah Membenci Angin', 'Daun yang jatuh Tak pernah membenci angin', 'B'),
(12, 1, '<span style=\"font-weight: bold;\">Cermati kalimat-kalimat yang berupa alasan/pendapat berikut!<br><br></span>Karena&nbsp; seseorang sebelum berhenti bekerja atau pensiun dari pekerjaan, sudah berhemat atau menabung, dapat memanfaatkan uang simpanannya sedemikian rupa setelah tidak bekerja. Akan tetapi, dia harus lebih berhemat lagi karena otomasis memasukan keuangannya berkurang karena uang pensiun yang tidak memadai. Penghematan pengeluaran harus dilakukan secermat mungkin. Salah satu cara adalah dengan membuat <span style=\"font-weight: bold;\">anggaran rumah tangga</span> keluarga. <br><span style=\"font-style: italic;\">Seberapa pun uang ada di tangan akan terkuras tidak bersisa.<br></span><br>Perbaikan kalimat simpulan (tercetak miring) pada paragraf yang berupa akibat untuk melengkapi paragraf tersebut adalah ... .<span style=\"font-style: italic;\"><br></span>', '', 'Dengan demikian, dia tidak akan sampai kehabisan uang untuk biaya hidupnya.', 'Jadi, sebaiknya bagi Anda yang masih bekerja dibuat juga anggaran pendapatan.', 'Hal yang sama juga berlaku untuk Anda yang masih bekerja dan perlu biaya hidup.', 'Sebaiknya bagi Anda yang masih bekerja, dibuat juga anggaran pendapatan.', 'D'),
(13, 1, '<span style=\"font-weight: bold;\">Cermati kalimat dalam paragraf berikut!<br><br></span>Federasi Sepak Bola Malaysia (FAM) menyatakan kesiapannya mengambil alih tugas PSSI untuk menggelar leg kedua final Piala AFF 2010 ... kerusakan yang terjadi di Stadion Utama Gelora Bung Karno (SUGBK). Kesiapan ini diutarakan Asisten Sekjen FAM, Ahmad Fuad Bin Daud di Stadion Bukit Jalil, Malaysia, semalam. â€Kami siap menjadi tuan rumah kembali. ..., semua tergantung keputusan AFF,â€ ujarnya. Jatah Indonesia sebagai tuan rumah leg kedua final Piala AFF 2010 terancam batal ... pendukung Indonesia mengamuk kemarin saat mengantre membeli tiket. Ratusan supporter ini masuk ... merusak beberapa bagian, termasuk lapangan SUGBK.<br><br>Konjungsi yang tepat untuk melengkapi dalam paragraf tersebut adalah... .', '', 'sehingga, selain itu, saat, dan<br>', 'karena, namun, setelah, dan', 'setelah, oleh karena itu, dan, atau', 'apabila, dengan demikian, sebelum, atau', 'D'),
(14, 1, '<span style=\"font-weight: bold;\">Cermati kalimat dalam paragraf berikut!</span><br><br>Seorang&nbsp; yang&nbsp; ditunjuk&nbsp; sebagai&nbsp; pemimpin&nbsp; haruslah&nbsp; yang&nbsp; berwibawa&nbsp; dan&nbsp; bertanggung&nbsp; jawab. Seseorang yang ditunjuk bukan ... mau. Dia harus tanggap dengan kebutuhan anak buahnya. ... harus&nbsp; sensitif&nbsp; mendengarkan&nbsp; keluhan&nbsp; anak&nbsp; buahnya.&nbsp; Bila&nbsp; menjanjikan&nbsp; sesuatu,&nbsp; harus&nbsp; ditepati. Apalagi&nbsp; ...&nbsp; sekarang&nbsp; terbuka,&nbsp; mereka&nbsp; berani&nbsp; menuntut&nbsp; haknya.&nbsp; Jangan&nbsp; sampai&nbsp; anak&nbsp; buah&nbsp; ... pimpinan. Wibawanya akan jatuh. <br><br>Kata baku yang tepat untuk melengkapi paragraf tersebut adalah... .&nbsp; <br>', '', 'sekadar, kuping, jaman, menasihati', 'sekadar, telinga, jaman, menasehati', 'sekedar, telinga, zaman, menasehati', 'sekadar, kuping, zaman, menasihati', 'C'),
(15, 1, '<span style=\"font-weight: bold;\">Cermati kalimat dalam paragraf berikut!</span><br><br>Perabotan rumah seperti berbagai lemari, kursi, meja yang dijual di toko â€Murahâ€ itu, telah menggunakan&nbsp; ... bongkar&nbsp; pasang.&nbsp; Buatannya&nbsp; pun&nbsp; tampak&nbsp; halus&nbsp; karena&nbsp; menggunakan&nbsp; mesin dengan&nbsp; ...&nbsp; canggih.&nbsp; Permukaan&nbsp; kayu&nbsp; jati&nbsp; yang&nbsp; digunakan&nbsp; sebagai&nbsp; bahan&nbsp; tidak&nbsp; tampak&nbsp; kasar. Oleh sebab itu, ... perabotan di toko itu sangat baik. <br><br>Kata serapan yang tepat penulisannya untuk melengkapi paragraf tersebut adalah... . <br>', '', 'systim, teknologi, kualitas', 'sistem, teknologi, kwalitas', 'sistim, tehnologi, kuwalitas', 'sistem, teknologi, kualitas', 'B'),
(16, 1, '<span style=\"font-weight: bold;\">Cermati paragraf berikut!</span><br><br>Pedati&nbsp; menuju&nbsp; suatu&nbsp; tempat,&nbsp; mengikuti&nbsp; rodanya&nbsp; yang&nbsp; berputar&nbsp; menuju&nbsp; suatu&nbsp; arah.&nbsp; Ia akan menempuh jalan yang berkondisi baik dan tidak baik, berbelok-belok, belobang, berbatu-batu, atau&nbsp; becek..&nbsp; kalau&nbsp; melalui&nbsp; jalan berkondisi&nbsp; baik,&nbsp; ia&nbsp; berjalan&nbsp; tenang.&nbsp; Akan&nbsp; tetapi,&nbsp; bila berkondisi&nbsp; buruk,&nbsp; akan&nbsp; berhati-hati&nbsp; agar&nbsp; pedati tidak oleng dan sumbu rodanya. Untuk&nbsp; itu, diperlukan&nbsp; kecermatan&nbsp; memilih&nbsp; jalan&nbsp; dan&nbsp; kehati-hatian&nbsp; sehingga sampai&nbsp; di&nbsp; tujuan. Sama halnya&nbsp; kehidupan&nbsp; yang&nbsp; ditempuh&nbsp; manusia.&nbsp; Adakalanya&nbsp; berjalan&nbsp; tanpa&nbsp; kendala&nbsp; atau&nbsp; tanpa cobaan,&nbsp; tetapi&nbsp; adakalanya&nbsp; mendapat&nbsp; kesulitan&nbsp; atau&nbsp; berbagai&nbsp; cobaan barulah&nbsp; mendapatkan kebahagiaan yang diinginkan. ...<br><br>Kalimat simpulan yang tepat untuk melengkapi paragraf tersebut&nbsp; adalah ... .', '', 'Oleh&nbsp; sebab&nbsp; itu,&nbsp; kehidupan&nbsp;&nbsp;&nbsp; ini&nbsp; tidak&nbsp; selalu&nbsp; mudah,&nbsp; bagus,&nbsp; atau&nbsp; lancar,&nbsp; tetapi selalu&nbsp; mendapatkan berbagai cobaan atau rintangan.<br>', 'Jadi,&nbsp; kita&nbsp; akan&nbsp; mendapat&nbsp; ujian&nbsp; kesabaran,&nbsp; kekuatan&nbsp; kita&nbsp; dengan&nbsp; berbagai cobaan&nbsp; yang&nbsp; memerlukan berbagai cara untuk mengatasi.<br>', 'Begitulah manusia dan pedati supaya&nbsp; akan menempuh suatu jalan&nbsp; yang&nbsp; mulus penuh rintangan dan kendala yang sangat berbahaya.', 'Maka,&nbsp; kita&nbsp; harus&nbsp; mengetahui&nbsp; apa&nbsp; yang&nbsp; harus&nbsp; dilakukan&nbsp; saat&nbsp; melalui&nbsp; rintang agar&nbsp; dapat&nbsp; dengan mudah mencapai sesuatu yang diinginkan.', 'A'),
(381, 1, 'Berikut ini termasuk kaidah-kaidah yang harus diperhatikan dalam pembuatan teks laporan hasil observasi, kecuali....', '', 'bersifat global dan universal', 'merupakan hasil penelitian terkini', 'menggunakan bahasa Indonesia yang baik dan benar', 'merupakan hasil kesepakatan bersama', 'D'),
(382, 1, 'Teks laporan hasil observasi memuat informasi yang disajikan harus sesuai dengan ..... yang didapatkan dari hasil penelitian. Kata yang tepat untuk mengisi titik-titik di atas asdalah....', '', 'opini', 'fakta', 'pendapat', 'argumentasi', 'B'),
(383, 1, 'Teks laporan hasil observasi adalah teks yang berisi penjabaran umum/melaporkan sesuatu berupa hasil dari...', '', 'pengamatan', 'penilaian', 'koreksi', 'penulisan', 'A'),
(384, 1, 'Jenis teks laporan hasil observasi mendeskripsikan atau menggambarkan bentuk, ciri, atau sifat umum, seperti hal-hal berikut, kecuali....', '', 'benda', 'hewan', 'tumbuh-tumbuhan', 'keindahan bumi', 'D'),
(385, 1, 'Berikut ini termasuk ciri-ciri dari teks laporan hasil observasi, kecuali....', '', 'bersifat objektif', 'mengandung pendapat tokoh ahli', 'harus ditulis sempurna dan lengkap', 'tidak memasukkan hal-hal yang menyimpangm mengandung prasangka, atau pemihakan', 'B'),
(386, 1, 'Dalam teks laporan hasil observasi, informasi harus disampaikan secara.....', '', 'nyata', 'berdasarkan kenyataan', 'global atau menyeluruh', 'opini publik', 'C'),
(387, 1, 'Teks laporan hasil observasi harus disajikan dengan menggunakan bahasa yang jelas, mudah dipahami, dan tidak berbelit-belit. Hal ini dilakukan untuk menghindari....', '', 'kesalahpahaman pembaca', 'keterlibatan tokoh masyarakat', 'kesalahan penulisan', 'salah tafsir', 'A'),
(388, 1, 'Salah satu tujuan pembuatan teks laporan hasil observasi adalah untuk....', '', 'melaporkan hasil observasi', 'melaporkan hasil observasi secara sistematis dan objektif', 'menafsirkan hasil observasi', 'menginterpretasi hasil observasi', 'B'),
(389, 1, 'Sebuah teks laporan hasil observasi dapat dikatakan ideal, jika memenuhi kriteria-kriteria berikut, kecuali....', '', 'memiliki struktur teks yang lengkap', 'memanfaatkan konjungsi atau kata penghubung yang tepat', 'memiliki tata bahasa yang lengkap', 'pengelompokkan kata dilakukan berdasarkan kriteria tertentu', 'C'),
(390, 1, 'Teks laporan disebut juga....', '', 'teks', 'teks bacaan', 'teks klasifikasi', 'teks deskripsi', 'C'),
(391, 1, 'Setelah mengamati dan mencatat data yang diperlukan, yang dicatat haruslah data yang akurat sesuai pengamatan dan data yang disajikan dari....', '', 'hasil penelitian terkini', 'hasil pengembangan ilmu pengetahuan', 'objek yang diteliti', 'permasalahan yang diangkat', 'A'),
(392, 1, 'Analisis teks laporan hasil observasi secara lisan akan menimbulkan saran, tanggapan, atau pendapat yang penyampaiannya harus memenuhi kaidah....', '', 'bahasa', 'isi', 'struktur teks', 'kesantunan berbahasa', 'B'),
(393, 1, 'Dalam teks laporan hasil observasi tahap pernyataan umum atau klasifikasi merupakan....', '', 'kata penutup dalam teks laporan', 'isi dari teks laporan', 'menjelaskan manfaat pembuatan teks laporan hasil observasi', 'definisi khusus dari teks laporan', 'C'),
(394, 1, 'Paragraf atau struktur yang berisi manfaat-manfaat dari objek yang diamati dari teks laporan hasil observasi disebut.....', '', 'definisi khusus', 'definisi umum', 'deskripsi', 'deskripsi manfaat', 'D'),
(395, 1, 'Dalam menganalisis teks laporan, kita harus mengetahui tentang strukturnya. Struktur teks hasil laporan observasi adalah....', '', 'unsur-unsur dalam laporan hasil observasi', 'pernyataan klasifikasi', 'anggota yang dilaporkan', 'definisi umum', 'A'),
(396, 1, 'Menyampaikan informasi tentang sesuatu, apa adanya sebagai hasil pengamatan sistematis atau analisis. Pernyataan tersebut merupakan tujuan dari....', '', 'teks laporan', 'laporan hasil observasi', 'komunikatif dari teks laporan', 'penelitian hasil observasi', 'C'),
(397, 1, 'Menurut Kamus Besar Bahasa Indonesia (KBBI: 2008), interpretasi adalah pemberian kesan, pendapat, atau....', '', 'tanggapan tentang sesuatu hal', 'pandangan teoritis terhadap sesuatu', 'pandangan umum dari suatu teori', 'adanya pengembangan dari teks laporan', 'B'),
(398, 1, 'Berkaitan dengan aspek kebahasaan, dalam pembuatan teks laporan hasil observasi ini harus memperhatikan penggunaan bahasa. Salah satunya memperhatikan penggunaan....', '', 'kelas kata', 'paragraf', 'hubungan antarkalimat', 'hubungan antarparagraf', 'A'),
(399, 1, 'Berikut ini termasuk ciri-ciri kebahasaan dalam teks laporan hasil observasi, kecuali....', '', 'adanya frasa/kelompok kata', 'adanya konjungsi', 'adanya kata baru', 'menggunakan berbagai istilah', 'C'),
(400, 1, 'Dalam laporan hasil observasi sering ditemukan penggunaan antonim dan sinonim. Sinonim adalah....', '', 'lawan kata', 'persamaan makna kata', 'kata baru', 'kata-kata indah', 'B'),
(401, 1, 'Salah satu sifat yang harus dimiliki teks laporan hasil observasi adalah bersifat informatif, kecuali....', '', 'teks laporan hasil observasi sesuai dengan kenyataan', 'teks laporan hasil observasi sesuai fakta', 'teks laporan hasil observasi dapat dikomunikasikan dengan siapa pun', 'teks laporan hasil observasi dapat dijadikan sebagai sumber pengalaman orang lain jika melakukan hal serupa', 'D'),
(402, 1, 'Dikarenakan teks laporan hasil observasi merupakan laporan, maka harus menggunakan istilah ilmiah. Hal ini dilakukan untuk.....', '', 'meyakinkan pembaca tentang fakta', 'penggunaan aspek kebahasaan yang tepat', 'meyakinkan pembaca bahwa tulisan tersebut dibuat dengan menyertakan ilmu pengetahuan', 'menilai suatu karya ilmiah', 'C'),
(403, 1, 'Perhatikan teks berikut!\nBenca alam adalah suatu peristiwa alam yang mengakibatkan dampak besar bagi populasi manusia. Bencana alam dapat terjadi dinana pun dan kapan pun, tak terkecuali di Indonesia. Indonesia merupakan negara kepulauan yang rawan bencana alam. Itulah sebabnya Indonesia banyak mengalami bencana alam terutama gempa bumi, gunung meletus, banjir, dan tanah longsor.\nDari teks tersebut yang termasuk dalam definisi umum laporan adalah....', '', 'Bencana alam adalah suatu peristiwa alam yang mengakibatkan dampak besar bagi populasi manusia.', 'Bencana alam dapat terjadi di manapun dan kapan pun, tak terkecuali di Indonesia.', 'Indonesia merupakan negara kepulauan yang rawan bencana alam', 'Itulah sebabnya Indonesia banyak mengalami bencana', 'A'),
(404, 1, 'Objek yang diamati dalam pembuatan teks laporan hasil observasi haruslah.....', '', 'objek', 'objek tunggal', 'subjek', 'objek ganda', 'D'),
(405, 1, 'Dalam bagian suatu teks eksposisi terdapat pendapat dari penulis yang dapat dipermasalahkan. Bagian ini merupakan gagasan utama tentang permasalahan teks eksposisi. Permasalahan tersebut harus dilandasi dengan.....', '', 'fakta', 'inisial', 'nama asli penulis', 'data lengkap', 'A'),
(406, 1, 'Di bawah ini merupakan struktur teks eksposisi, kecuali....', '', 'pembukaan', 'pendapat', 'argumen', 'rangkuman', ''),
(407, 1, 'Pada bagian penutup dalam sebuah teks eksposisi harus dilengkapi dengan penegasan yang dikemukakan penulis dalam bentuk....', '', 'sama', 'samar-samar', 'jelas', 'baik', 'C'),
(408, 1, 'Dalam bagian penutup suatu tesis terdapat tentang struktur teks eksposisi. Penulisan teks eksposisi tersebut mengandung beberapa unsur kebahasaan sebagai ciri kebahasaan yang membedakannya. Salah satu ciri kebahasaan dalam teks eksposisi, yaitu.....', '', 'mengunakan kalimat tanya', 'menggunakan kalimat perintah', 'menggunakan titik dan koma', 'menggunakan kalimat pronomina', 'D'),
(409, 1, 'Penjabaran suatu proses, seperti proses pembuatan suatu objek, langkah-langkah, urutan peristiwa secara lengkap. Pernyataan tersebut merupakan pengertian dari isi teks eksposisi berdasarkan jenis pengembangan....', '', 'klasifikasi', 'analisis', 'perbandingan', 'argumentasi', 'B'),
(410, 1, 'Suatu teks untuk mengusulkan pendapat pribadi mengenai suatu hal yang didalamnya terdapat argumen-argumen untuk menegaskan atau memperkuat pendapat tersebut. Pernyataan di atas merupakan pengertian dari....', '', 'teks narasi', 'teks argumentasi', 'teks persuasi', 'teks eksposisi', 'D'),
(411, 1, 'Memaparkan atau menjelaskan informasi-informasi tertentu sehingga pengetahuan para pembaca bertambah. Pemaparan tersebut merupakan tujuan....', '', 'teks narasi', 'teks eksposisi', 'teks argumentasi', 'teks persuasi', 'B'),
(412, 1, 'Semua orang dapat menyusun berita baik media elektronik maupun media cetak. Salah satu contoh teks eksposisi dapat dilihat di....', '', 'telepon', 'koran', 'diskusi', 'seminar', 'B'),
(413, 1, 'Alasan berupa bukti yang dapat mendukung tesis penulis. Berisi penjelasan secara lebih mendalam tentang pernyataan tesis (pendapat) yang diyakini kebenarannya melalui pengungkapan fakta-fakta sebagai penjelasan argumen penulis. Hal ini merupakan pengertian dari....', '', 'narasi', 'eksposisi', 'mediasi', 'argumentasi', 'D'),
(414, 1, 'Dalam suatu teks eksposisi bagian pembuka yagn memuat tentang pandangan awal penulis. Pandangan awal penulis tersebut bersifat opsional. Sifat dari opsional mengandung arti....', '', 'wajib ada dalam suatu teks eksposisi', 'setengah ada dalam suatu teks ekspoisi', 'boleh ada dan boleh juga tidak ada dalam suatu teks eksposisi', 'topik dalam teks boleh seperti rangkuman', 'C'),
(415, 1, 'Tulisan, ulasan/ timbangan mengenai nilai sebuah buku atau hasil karya disebut dengan ....', '', 'Gagasan utama', 'Topik', 'Berita', 'Resensi', 'D'),
(416, 1, 'Susunan proses wawancara adalah ....', '', 'Pembukuan, pendahuluan, penutup, tahap inti', 'Penutup, pembuka, pendahuluan, tahap inti', 'Pendahuluan, pembuka, tahap inti dan penutup', 'Tahap inti, penutup, pembuka, pendahuluan', 'C'),
(417, 1, 'Kalimat yang terletak di awal paragraf adalah kalimat ....', '', 'Induktif', 'Deduktif', 'Aktif', 'Pasif', 'B'),
(418, 1, 'Di bawah ini merupakan rangkaian struktur teks anekdot yang benar adalah ....', '', 'Abstrak, orientasi, reaksi, krisis, koda ', 'Abstrak, krisis, reaksi, koda, orientasi', 'Abstraksi, orientasi, krisis, reaksi, koda', 'Abstraksi, reaksi, krisis, orientasi', 'C'),
(419, 1, 'Yang bukan termasuk ciri kaidah kebahasaan teks anekdot adalah â€¦', '', 'Teks berbentuk narasi', 'Mengandung nilai moral', 'Tokohnya bersifat faktual', 'Menggunakan bahasa ilmiah', 'A'),
(420, 1, 'Perbedaan yang mendasar teks anekdot dan teks cerpen terletak pada â€¦.', '', 'Alurnya', 'Temanya', 'Pelakunya', 'Bentuknya', 'D'),
(421, 1, 'Kalimat induktif adalah â€¦', '', 'Kalimat yang terletak di akhir paragraf', 'Kalimat yang terletak di awal dan akhir paragraf', 'Kalimat yang terletak di awal dan akhir paragraf', 'Kalimat yang terletak di tengah paragraph', 'A'),
(422, 1, 'Keterangan atau laporan mengenai kejadian atau peristiwa yang hangat disebut dengan ....', '', 'Resensi', 'Topik', 'Berita', 'Gagasan utama', 'C'),
(423, 1, 'Bagian yang tidak boleh dihilangkan dari teks anekdot adalah â€¦', '', 'Model tulisan', 'Tokoh dan alurnya', 'Kelucuan dan nilai didiknya.', 'Panjang cerita dan nilai moral', 'A'),
(424, 1, 'Karakteristik dalam teks teks anekdot yang merupakan penanda waktu adalahâ€¦', '', 'Terdapat tokoh yang faktual', 'Penggunaan konjungsi temporal', 'Mengandung pertanyaan yang retorik', 'Menggunakan gaya bahasa yang sederhana', 'A'),
(425, 1, 'Surat resmi yang dikeluarkan oleh instansi pemerintahan adalah surat ....', '', 'Dinas', 'Kuasa', 'Niaga', 'Umum', 'A'),
(426, 1, 'Surat resmi yang digunakan oleh perusahaan atau badan usaha termasuk surat ....', '', 'Dinas', 'Umum', 'Kuasa', 'Niaga', 'C'),
(427, 1, 'Jenis karangan yang menceritakan rangkaian peristiwa atau pengalaman berdasarkan waktu disebut karangan ....', '', 'Persuasi', 'Deskripsi', 'Narasi', 'Persuasi', 'C'),
(428, 1, 'Surat yang tidak mempunyai kepala surat adalah surat ....', '', 'Dinas', 'Niaga', 'Pribadi', 'Kuasa', 'D'),
(429, 1, 'Contoh tanggapan yang tepat terhadap informasi yang didengar dari media elektronik yaitu ...', '', 'Informasi yang disampaikan dalam berita itu sangat tidak masuk akal sehingga tidak layak untuk dipercaya', 'Memangnya ada kejadian seperti yang ditulis dalam surat kabar tersebut ?', 'Dalam pemberitaan itu terlihat pihak televisi terlalu berpihak kepada pejabat.', 'Pada intinya, saya setuju dengan informasi yang disampaikan, tetapi saya kurang suka dengan gaya wartawan dalam menyampaikan informasi tersebut.', 'D'),
(430, 1, 'Hadirin yang saya hormati,\nSaya disini bertindak sebagai MC. Perkenalkan, nama saya Donita Eka Ratri. Saya masih duduk di kelas 10 SMA Jaya Bangsa.\nPernyataan tersebut berisi â€¦', '', 'Perkenalah diri', 'Perkenalan dengan orang lain', 'Memperkenalkan poembicara', 'Memperkenalkan teman', 'A'),
(501, 8, 'Berikut ini termasuk kaidah-kaidah yang harus diperhatikan dalam pembuatan teks laporan hasil observasi, kecuali....', '', 'bersifat global dan universal', 'merupakan hasil penelitian terkini', 'menggunakan bahasa Indonesia yang baik dan benar', 'merupakan hasil kesepakatan bersama', 'D'),
(502, 8, 'Teks laporan hasil observasi memuat informasi yang disajikan harus sesuai dengan ..... yang didapatkan dari hasil penelitian. Kata yang tepat untuk mengisi titik-titik di atas asdalah....', '', 'opini', 'fakta', 'pendapat', 'argumentasi', 'B'),
(503, 8, 'Teks laporan hasil observasi adalah teks yang berisi penjabaran umum/melaporkan sesuatu berupa hasil dari...', '', 'pengamatan', 'penilaian', 'koreksi', 'penulisan', 'A'),
(504, 8, 'Jenis teks laporan hasil observasi mendeskripsikan atau menggambarkan bentuk, ciri, atau sifat umum, seperti hal-hal berikut, kecuali....', '', 'benda', 'hewan', 'tumbuh-tumbuhan', 'keindahan bumi', 'D'),
(505, 8, 'Berikut ini termasuk ciri-ciri dari teks laporan hasil observasi, kecuali....', '', 'bersifat objektif', 'mengandung pendapat tokoh ahli', 'harus ditulis sempurna dan lengkap', 'tidak memasukkan hal-hal yang menyimpangm mengandung prasangka, atau pemihakan', 'B'),
(506, 8, 'Dalam teks laporan hasil observasi, informasi harus disampaikan secara.....', '', 'nyata', 'berdasarkan kenyataan', 'global atau menyeluruh', 'opini publik', 'C'),
(507, 8, 'Teks laporan hasil observasi harus disajikan dengan menggunakan bahasa yang jelas, mudah dipahami, dan tidak berbelit-belit. Hal ini dilakukan untuk menghindari....', '', 'kesalahpahaman pembaca', 'keterlibatan tokoh masyarakat', 'kesalahan penulisan', 'salah tafsir', 'A'),
(508, 8, 'Salah satu tujuan pembuatan teks laporan hasil observasi adalah untuk....', '', 'melaporkan hasil observasi', 'melaporkan hasil observasi secara sistematis dan objektif', 'menafsirkan hasil observasi', 'menginterpretasi hasil observasi', 'B'),
(509, 8, 'Sebuah teks laporan hasil observasi dapat dikatakan ideal, jika memenuhi kriteria-kriteria berikut, kecuali....', '', 'memiliki struktur teks yang lengkap', 'memanfaatkan konjungsi atau kata penghubung yang tepat', 'memiliki tata bahasa yang lengkap', 'pengelompokkan kata dilakukan berdasarkan kriteria tertentu', 'C'),
(510, 8, 'Teks laporan disebut juga....', '', 'teks', 'teks bacaan', 'teks klasifikasi', 'teks deskripsi', 'C'),
(511, 8, 'Setelah mengamati dan mencatat data yang diperlukan, yang dicatat haruslah data yang akurat sesuai pengamatan dan data yang disajikan dari....', '', 'hasil penelitian terkini', 'hasil pengembangan ilmu pengetahuan', 'objek yang diteliti', 'permasalahan yang diangkat', 'A'),
(512, 8, 'Analisis teks laporan hasil observasi secara lisan akan menimbulkan saran, tanggapan, atau pendapat yang penyampaiannya harus memenuhi kaidah....', '', 'bahasa', 'isi', 'struktur teks', 'kesantunan berbahasa', 'B'),
(513, 8, 'Dalam teks laporan hasil observasi tahap pernyataan umum atau klasifikasi merupakan....', '', 'kata penutup dalam teks laporan', 'isi dari teks laporan', 'menjelaskan manfaat pembuatan teks laporan hasil observasi', 'definisi khusus dari teks laporan', 'C'),
(514, 8, 'Paragraf atau struktur yang berisi manfaat-manfaat dari objek yang diamati dari teks laporan hasil observasi disebut.....', '', 'definisi khusus', 'definisi umum', 'deskripsi', 'deskripsi manfaat', 'D'),
(515, 8, 'Dalam menganalisis teks laporan, kita harus mengetahui tentang strukturnya. Struktur teks hasil laporan observasi adalah....', '', 'unsur-unsur dalam laporan hasil observasi', 'pernyataan klasifikasi', 'anggota yang dilaporkan', 'definisi umum', 'A'),
(516, 8, 'Menyampaikan informasi tentang sesuatu, apa adanya sebagai hasil pengamatan sistematis atau analisis. Pernyataan tersebut merupakan tujuan dari....', '', 'teks laporan', 'laporan hasil observasi', 'komunikatif dari teks laporan', 'penelitian hasil observasi', 'C'),
(517, 8, 'Menurut Kamus Besar Bahasa Indonesia (KBBI: 2008), interpretasi adalah pemberian kesan, pendapat, atau....', '', 'tanggapan tentang sesuatu hal', 'pandangan teoritis terhadap sesuatu', 'pandangan umum dari suatu teori', 'adanya pengembangan dari teks laporan', 'B'),
(518, 8, 'Berkaitan dengan aspek kebahasaan, dalam pembuatan teks laporan hasil observasi ini harus memperhatikan penggunaan bahasa. Salah satunya memperhatikan penggunaan....', '', 'kelas kata', 'paragraf', 'hubungan antarkalimat', 'hubungan antarparagraf', 'A'),
(519, 8, 'Berikut ini termasuk ciri-ciri kebahasaan dalam teks laporan hasil observasi, kecuali....', '', 'adanya frasa/kelompok kata', 'adanya konjungsi', 'adanya kata baru', 'menggunakan berbagai istilah', 'C'),
(520, 8, 'Dalam teks laporan hasil observasi, informasi harus disampaikan secara.....', '', 'nyata', 'berdasarkan kenyataan', 'global atau menyeluruh', 'opini publik', 'C'),
(521, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Berikut ini adalah saluran reproduksi pada pria secara urut . .&nbsp;</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">testis, vas deferens, epididimis, uretra, penis</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(255, 255, 255);\">testis, epididimis, vas deferens, uretra, penis</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">testis, uretra, vas deferens, epididimis, penis</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">testis, epididimis, uretra, vas deferens, penis</span>', 'B'),
(522, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Peristiwa pelepasan ovum dari ovarium disebut . . . .</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">menstruasi</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">fertilisasi</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">ovipar</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">ovulasi</span>', 'D'),
(523, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Perhatikan gambar di bawah ini untuk nomor 3 dan 4 !.</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '983-biologi.jpg', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">1 dan 2</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">1 dan 3</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">2 dan 3</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">2 dan 4</span>', 'C'),
(524, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Tempat terjadinya fertilisasi ditunjukkan oleh gambar nomor . . . .</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">1</span>', '<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">3</span>', '<font face=\"Times New Roman, serif\"><span style=\"font-size: 21.3333px;\">2</span></font>', '<font face=\"Times New Roman, serif\"><span style=\"font-size: 21.3333px;\">4</span></font>', 'C'),
(525, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Di dalam penis terdapat saluran yang disebut uretra. Saluran ini\r\nberfungsi untuk . . . .</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(255, 255, 255);\">saluran sperma dan urine</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">penghasil sperma dan hormon</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">penghasil sperma dan urine</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">saluran sperma dari testis ke kantong sperma</span>', 'A'),
(526, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Masa pubertas ditandai dengan dihasilkan dan dikeluarkannya . . .&nbsp;</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(255, 255, 255);\">sperma oleh pria atau sel telur oleh wanita</span>', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">testosteron oleh testis dan estrogen oleh ovarium</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">testosteron dan FSH</span>', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">FSH dan LH</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', 'A'),
(527, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Selaput pembungkus embrio salah satunya adalah amnion yang mempunyai\r\nfungsi . . .&nbsp;</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">melindungi ibu dan janin</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">pertukaran zat antara ibu dan janin</span>', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; color: black; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(255, 255, 255);\">melindungi embrio dari benturan</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">memberi makanan dan O2 pada embrio</span>', 'C'),
(528, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Penghubung antara ibu dan embrio adalah . . . .</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial; background-color: rgb(255, 255, 255);\">plasenta</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">amnion</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">khorion</span>', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">yolk</span>', 'A'),
(529, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">&nbsp;Selain menghasilkan sel sperma,\r\ntestis juga berfungsi sebagai tempat pembentukan hormon ....</span>', '', '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">insulin</span>', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">estrogen</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">progesteron</span>', '<div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px; background-color: rgb(255, 255, 255);\">testosteron</span></div>', 'D'),
(530, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Seorang wanita sudah tidak produktif untuk bereproduksi yang ditandai\r\ndengan tidak mengalami menstruasi&nbsp;&nbsp;disebut ....</span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '', '<div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">oogenis</span></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">permatogenesis</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">ovulasi</span></p>', '<div><span style=\"background-color: rgb(255, 255, 255);\"><br></span></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px; background-color: rgb(255, 255, 255);\">menopause</span></div>', 'D'),
(531, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Penyakit pada sistem reproduksi yang disebabkan virus adalah ....</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">sifilis</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">gonore</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><div><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\"><br></span></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 16pt;\">AIDS</span></p>', '<div><span style=\"background-color: rgb(255, 255, 255); font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">herpes genetalis</span></div>', 'D'),
(532, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Berikut adalah penyakit yang dapat mengakibatkan menurunnya sistem\r\nkekebalan tubuh seseorang . . .</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;background:yellow;\r\nmso-fareast-language:IN\">AIDS</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">herpes</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">gonore</span></p>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">sifilis</span></div>', 'A'),
(533, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Bakteri penyebab penyakit sifilis adalah . . . .</span>', '49-biologi 2.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Neisseria gonorrhoeae</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">Trypanosoma gambiense</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\">Treponema pallidium</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p></div>', '<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">Eschericia coli</span>', 'C'),
(534, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Pernyataan berikut adalah usaha untuk mencegah penularan virus HIV,\r\nkecuali . . .&nbsp;</span>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">menggunakan jarum suntik yang steril dan sekali pakai</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">peralatan operasi harus steril</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\">tidak perlu melakukan donor darah</span></p>', '<div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">memeriksa darah sebelum melakukan transfusi darah</span></div>', 'C'),
(535, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Pada kembar identik .....</span>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">satu ovum dibuahi dua sperma</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">dua ovum dibuahi dua spermah</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><div><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\"><br></span></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"background-color: yellow; font-family: &quot;Times New Roman&quot;, serif; font-size: 16pt;\">satu ovum dibuahi satu sperma</span></p>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">dua ovum dibuahi satu sperma</span></div>', 'C'),
(536, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Sperma yang matang disimpan dalam â€¦</span>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">tubulus seminiferus</span></p><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\">epididimis</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><div><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\"><br></span></div>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">vas deferens</span></div>', '<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">uretra</span>', 'B');
INSERT INTO `question` (`question_id`, `question_group_id`, `question`, `picture`, `a`, `b`, `c`, `d`, `answer_key`) VALUES
(537, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Alat reproduksi wanita terdiri atas:</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:14.0pt;margin-right:0cm;margin-bottom:\r\n0cm;margin-left:36.0pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:\r\nnormal;mso-list:l0 level1 lfo1;tab-stops:list 36.0pt;vertical-align:baseline\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\"><span style=\"mso-list:\r\nIgnore\">1.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\">vagina<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:36.0pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt;vertical-align:baseline\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\"><span style=\"mso-list:\r\nIgnore\">2.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\">ovarium<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:0cm;\r\nmargin-left:36.0pt;margin-bottom:.0001pt;text-indent:-18.0pt;line-height:normal;\r\nmso-list:l0 level1 lfo1;tab-stops:list 36.0pt;vertical-align:baseline\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\"><span style=\"mso-list:\r\nIgnore\">3.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\">tuba fallopii<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:14.0pt;\r\nmargin-left:36.0pt;text-indent:-18.0pt;line-height:normal;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;vertical-align:baseline\"><!--[if !supportLists]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\"><span style=\"mso-list:\r\nIgnore\">4.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp; </span></span></span><!--[endif]--><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;color:black;mso-fareast-language:IN\">uterus<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Jalannya sel telur sejak dibentuk sampai menjadi embrio secara berurutan\r\ndimulai dari â€¦</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;background:yellow;\r\nmso-fareast-language:IN\">a. 2, 3, 4</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">b. 2, 4, 3</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. 2, 1, 4</span></p></div>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">d. 3, 1, 4</span></div>', 'A'),
(538, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Implantasi merupakan penanaman â€¦ ke dalam endometrium uterus.</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">zigot</span></p>', '<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">morula</span>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">gastrula</span></div>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\">blastula</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p></div><div><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\"><br></span></div>', 'D'),
(539, 9, '<span style=\"font-size: 16pt; line-height: 107%; font-family: &quot;Times New Roman&quot;, serif;\">Pengaruh kerja pil kontrasepsi oral yaitu â€¦</span>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">a. mencegah terjadinya haid</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\">b. mencegah pematangan sel telur</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><div><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\"><br></span></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 16pt;\">c. mematikan sperma yang masuk ke dalam rahim</span></p>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">d. menambah daya tahan tubuh</span></div>', 'B'),
(540, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Hormon yang aktif paling awal pada proses menstruasi seorang wanita dewasa\r\nadalah â€¦</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">a. estrogen</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">b. progesteron</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. gonadotrophin</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px; background-color: rgb(255, 255, 0);\">d. FSH</span>', 'D'),
(541, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Anak laki-laki yang telah mengalami pubertas mengalami perubahan suara dan\r\nbentuk tubuh. Perubahan ini</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">dipengaruhi oleh hormon â€¦.</span><span style=\"font-size:12.0pt;font-family:\r\n&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:\r\nIN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;background:yellow;\r\nmso-fareast-language:IN\">a. testoteron</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">b. progesteron</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. adrenalin</span></p>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">d. tiroksin</span></div>', 'A'),
(542, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\"><span style=\"mso-spacerun:yes\">&nbsp;</span>Ovulasi dirangsang oleh hormon â€¦</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">a. FSH</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif; background: yellow;\">b. LH</span><span style=\"font-size: 12pt; font-family: &quot;Times New Roman&quot;, serif;\"><o:p></o:p></span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. oksitosin</span></p>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">d. relaksin</span></div>', 'B'),
(543, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Membran yang melindungi embrio dalam rahim terhadap goncangan adalah â€¦</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:\r\n&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;background:yellow;\r\nmso-fareast-language:IN\">a. amnion</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">b. korion</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. alantois</span></p></div>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">d. sakus vitelinus</span></div>', 'A'),
(544, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Berikut ini adalah hormon yang berpengaruh terhadap kontraksi otot rahim\r\natau uterus â€¦</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;background:yellow;\r\nmso-fareast-language:IN\">a. oksitosin</span><span style=\"font-size:12.0pt;\r\nfont-family:&quot;Times New Roman&quot;,&quot;serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\nmso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">b. prostaglandin</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. relaksin</span></p></div>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px;\">d. estrogen</span></div>', 'A'),
(545, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">Gangguan yang terjadi pada sistem reproduksi pria yang disebabkan oleh\r\nvirus herpes adalah â€¦</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><span style=\"font-size:16.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:black;mso-fareast-language:\r\nIN\">a. uretritis</span><span style=\"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;mso-fareast-language:IN\"><o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\nnormal\"><br></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">b. prostatitis</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: normal;\"><span style=\"font-size: 16pt; font-family: &quot;Times New Roman&quot;, serif;\">c. epididimitis</span></p></div>', '<div><br></div><div><span style=\"font-family: &quot;Times New Roman&quot;, serif; font-size: 21.3333px; background-color: rgb(255, 255, 0);\">d. orkitis</span></div>', 'D'),
(546, 9, '<p class=\"MsoNormal\" style=\"margin-bottom: 0.0001pt; line-height: 16.5pt; background-image: initial; background-position: initial; background-size: initial; background-repeat: initial; background-attachment: initial; background-origin: initial; background-clip: initial;\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif;\"><span style=\"background-color: rgb(255, 255, 255);\">Pemanis berkalori rendah yang biasa ditambahkan pada minuman ringan yang\r\ndapat diminum bagi penderita diabetes meleitus adalah â€¦.</span><span style=\"color: rgb(127, 0, 0); background-color: rgb(193, 242, 242);\"><o:p></o:p></span></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Sakarin</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">Karamel&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">Asam sorbat</span></p>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">karamel amonium sulfat</span></div>', 'A'),
(547, 9, '<span style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#7F0000;mso-ansi-language:IN;mso-fareast-language:IN;mso-bidi-language:\r\nAR-SA\">Penggunaan bahan kimia yang menimbulkan efek samping di antaranya :\r\nrusaknya fungsi organ tubuh membuat kecanduan menghilangkan kesadaran bahan\r\nkimia yang memiliki efek samping tersebut adalah â€¦.</span>', '', '<p class=\"MsoNormal\" style=\"font-family: Arial, Verdana; font-size: 10pt; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">vitamin&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">narkotika&nbsp;&nbsp;</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp;</span><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 12pt;\">Antibiotik</span></p>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">Penyedap</span></div>', 'B'),
(548, 9, '<span style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#7F0000;mso-ansi-language:IN;mso-fareast-language:IN;mso-bidi-language:\r\nAR-SA\">. Perhatikan gambar dibawah ini !&nbsp; &nbsp;&nbsp;</span><div><span style=\"font-size:12.0pt;line-height:107%;\r\nfont-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:&quot;Times New Roman&quot;;\r\ncolor:#7F0000;mso-ansi-language:IN;mso-fareast-language:IN;mso-bidi-language:\r\nAR-SA\"><p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Gambar tersebut menunjukkan bahwa makhluk hidup memiliki ciri â€¦.<o:p></o:p></span></p><br></span></div>', '877-bio3.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">&nbsp;bernapas</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 12pt;\">makan&nbsp; &nbsp;</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 12pt;\">Berkembangbiak</span></p><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><br></p>', '<span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">Tumbuh</span>', 'D'),
(549, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Berdasarkan ciri-cirinya, maka hewan yang dikelompokkan Crustacea dan\r\nArachnoida adalah â€¦.<o:p></o:p></span></p>', '270-bio4.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. (1 ) dan (2)&nbsp; &nbsp;&nbsp;</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. (1 ) dan (3)</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp; &nbsp;</span><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 12pt;\">C. (2) dan (4)</span></p>', '<span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. (3) dan (4)</span>', 'C'),
(550, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Berdasarkan gambar di atas, rantai makanan yang ada pada jaring-jaring\r\nmakanan tersebut adalah<o:p></o:p></span></p>', '327-bio5.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. tanaman padi - belalang - ayam - ular</span></p>', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">B. tanaman padi - tikus - ular - elang</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. belalang - katak - &nbsp;ular</span></p>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. belalang - &nbsp;burung - elang</span></div>', 'A'),
(551, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Untuk mengatasi kasus pencemaran tersebut dapat diambil salah satu cara\r\nyaitu limbah pabrik kertas harus â€¦.<o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. disalurkan ke laut&nbsp; &nbsp; &nbsp;&nbsp;</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. disalurka ke sawah</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. dibiarkan mengalir di sungai seperti gambar</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. ditampung di suatu tempat pengolahan</span></div>', 'D'),
(552, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Meningkatnya jumlah penduduk yang tinggal di sekitar hutan, meningkat juga\r\nkebutuhan kayu sebagai bahan bakar dan meningkat pula kebutuhan perumahan\r\ntempat tinggal mereka sehingga menimbulkan kerusakan hutan. Dampak lingkungan\r\ndari meningkatnya jumlah penduduk di daerah ini adalah â€¦.<o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. berkurangnya sumber air bersih</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. meningkatnya udara bersih</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. meningkatnya sumber daya hutan</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. terpeliharanya flora dan fauna hutan</span></div>', 'B'),
(553, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Pernyataan berikut yang sesuai dengan gambar tersebut adalah â€¦.</span></p>', '371-bio 6.jpg', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">A. I dan II bekerja secara sadar, menyusun organ pencernaan</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. &nbsp;I dan III bekerja secara tak sadar, menyusun organ dalam tubuh</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. II dan III bekerja secara tak sadar, menyusun rangka tubuh</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. II dan III bekerja secara sadar, menyusun organ dalam tubuh</span></div>', 'D'),
(554, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Data yang benar tentang enzim dan organ pencernaan yang menghasilkannya\r\nditunjukkan oleh nomor â€¦.</span></p>', '761-bio7.jpg', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">A. 1</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. 2</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. 3</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. 4</span></div>', 'C'),
(555, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Bagian alat pernapasan yang berfungsi sebagai tempat pertukaran gas O 2 dan\r\nCO 2 ditunjukkan oleh nomor â€¦.</span></p>', '438-bio8.jpg', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">A. 2</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. 3</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. 4</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. 5</span></div>', 'D'),
(556, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Jantung manusia memiliki empat bagian, yaitu serambi kanan, serambi kiri,\r\nbilik kanan, dan bilik kiri. Serambi kanan berperan â€¦.<o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. memompa darah yang kaya O2 ke seluruh tubuh</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. memompa darah yang kaya CO 2 menuju paru-paru</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. menerima darah yang kaya O 2 langsung dari paru-paru</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. menerima darah dari seluruh tubuh yang kaya akan CO 2</span></div>', 'B'),
(557, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Bagian yang berfungsi sebagai tempat pertumbuhan dan perkembangan embrio\r\nditunjukkan oleh nomor â€¦.<o:p></o:p></span></p>', '318-bio9.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. 1</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. 2</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C.3</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D.4</span></div>', 'D'),
(558, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Perhatikan data berikut !<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;\r\nmargin-left:36.0pt;text-indent:0cm;line-height:16.5pt;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;background:#C1F2F2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\nArial;color:#7F0000;mso-fareast-language:IN\"><span style=\"mso-list:Ignore\">1.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">rangsang<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;\r\nmargin-left:36.0pt;text-indent:0cm;line-height:16.5pt;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;background:#C1F2F2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\nArial;color:#7F0000;mso-fareast-language:IN\"><span style=\"mso-list:Ignore\">2.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">gerak<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;\r\nmargin-left:36.0pt;text-indent:0cm;line-height:16.5pt;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;background:#C1F2F2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\nArial;color:#7F0000;mso-fareast-language:IN\"><span style=\"mso-list:Ignore\">3.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">urat saraf motorik&nbsp; &nbsp;&nbsp;<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;\r\nmargin-left:36.0pt;text-indent:0cm;line-height:16.5pt;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;background:#C1F2F2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\nArial;color:#7F0000;mso-fareast-language:IN\"><span style=\"mso-list:Ignore\">4.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">urat saraf sensorik<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;\r\nmargin-left:36.0pt;text-indent:0cm;line-height:16.5pt;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;background:#C1F2F2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\nArial;color:#7F0000;mso-fareast-language:IN\"><span style=\"mso-list:Ignore\">5.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">otak<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-top:0cm;margin-right:0cm;margin-bottom:3.0pt;\r\nmargin-left:36.0pt;text-indent:0cm;line-height:16.5pt;mso-list:l0 level1 lfo1;\r\ntab-stops:list 36.0pt;background:#C1F2F2\"><!--[if !supportLists]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;mso-fareast-font-family:\r\nArial;color:#7F0000;mso-fareast-language:IN\"><span style=\"mso-list:Ignore\">6.<span style=\"font:7.0pt &quot;Times New Roman&quot;\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\r\n</span></span></span><!--[endif]--><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">neuron perantara<o:p></o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\"><o:p>&nbsp;</o:p></span></p>\r\n\r\n<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Mekanisme jalannya rangsang saat Ahmad Syauqi menendang bola adalahâ€¦.<o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. &nbsp;(1) â€“ (3) â€“ (4) â€“ (6) â€“ (2 )</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. ( 1) â€“ (4) â€“ (6) â€“ (3) â€“ (2 )</span></p></div>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. ( 1) â€“ (3) â€“ (5) â€“ (4) â€“ (2 )</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. ( 1) â€“ (4) â€“ (5) â€“ (3) â€“ (2)</span></div>', 'D'),
(559, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Bagian Z berfungsi untuk â€¦.</span></p>', '719-bio11.jpg', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">A. mengangkut hasil fotosintesis untuk diedarkan ke seluruh tubuh</span></p></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. mengangkut air dan garam mineral dari dalam tanah menuju daun</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. menyerap karbon dioksida dari udara bebas menuju ke daun</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. memberi perlindungan bagi jaringan pengangkut pada tumbuhan</span></div>', 'B');
INSERT INTO `question` (`question_id`, `question_group_id`, `question`, `picture`, `a`, `b`, `c`, `d`, `answer_key`) VALUES
(560, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Rina meletakkan pot tanaman di atas lemari dekat jendela ruang tamu.\r\nSetelah satu bulan ternyata batang tanaman tersebut â€¦.<o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. merunduk&nbsp;&nbsp;&nbsp;&nbsp;</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. tegak lurus&nbsp; &nbsp;&nbsp;</span></p></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. condong ke semua sisi</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">D. condong ke arah jendela</span></p>', 'D'),
(561, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Dari tahapan percobaan tersebut dapat disimpulkan bahwa bagian daun yang\r\ntidak ditutupi kertas karbon menghasilkan â€¦.<o:p></o:p></span></p>', '630-bio12.jpg', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A.energi</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. amilum&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p></div>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. Oksigen</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. Karbondioksida</span></div>', 'B'),
(562, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Bentuk cakar yang ditunjuk dengan gambar X sesuai dengan paruh burungâ€¦.</span></p>', '521-bio13.jpg', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">A. I</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. II&nbsp; &nbsp;</span></p></div>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp; C</span><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 12pt;\">. III</span></p>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D . IV</span></div>', 'B'),
(563, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Persilangan antara tumbuhan berbiji bulat kuning (BBKK) dengan tumbuhan\r\nberbiji lonjong putih (bbkk) menghasilkan keturunan 480 buah. Jika hasil\r\npersilangan tersebut disilangkan dengan sesamanya, maka hasil persilangan yang\r\nbergenotif BbKK adalah â€¦. buah.<o:p></o:p></span></p>', '', '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">A. 30</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">B. 60&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</span></p></div>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C. 90</span></p></div>', '<div><br></div><div><span style=\"color: rgb(127, 0, 0); font-family: Arial, sans-serif; font-size: 16px; background-color: rgb(193, 242, 242);\">D. 120</span></div>', 'B'),
(564, 9, '<p class=\"MsoNormal\" style=\"margin-bottom:0cm;margin-bottom:.0001pt;line-height:\r\n16.5pt;background:#C1F2F2\"><span style=\"font-size:12.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;\r\nmso-fareast-font-family:&quot;Times New Roman&quot;;color:#7F0000;mso-fareast-language:\r\nIN\">Mikroorganisme yang berperan dalam pembuatan tape adalah â€¦.</span></p>', '', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; text-indent: -14.2pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 7pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp;&nbsp;</span><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">r&nbsp; ragi ( khamir)</span></p>', '<p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; text-indent: -14.2pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 7pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</span><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">bakteri Lactobacillus</span></p>', '<div><br></div><div><p class=\"MsoNormal\" style=\"font-size: 13.3333px; margin-bottom: 0.0001pt; text-indent: -14.2pt; line-height: 16.5pt; background: rgb(193, 242, 242);\"><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">C.</span><span style=\"font-size: 7pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp; &nbsp;</span><span style=\"font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">jamur Rhizopus</span></p></div>', '<div><br></div><div><span style=\"text-indent: -18.9333px; font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">D.</span><span style=\"text-indent: -18.9333px; font-size: 7pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">&nbsp;&nbsp;&nbsp;</span><span style=\"text-indent: -18.9333px; font-size: 12pt; font-family: Arial, sans-serif; color: rgb(127, 0, 0);\">bakteri Acetobacter</span></div>', 'A'),
(565, 9, '<font face=\"Arial, Verdana\" style=\"font-size: large;\">Setiap makhluk hidup akan bereproduksi untuk ....</font>', '', '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Mengalahkan populasi makhluk hidup lain&nbsp;</font></div><div style=\"\"><br></div>', '<span style=\"font-size: large;\">Beradaptasi dengan lingkungan&nbsp;</span>', '<span style=\"font-size: large;\">Mempertahankan keturunannya</span>', '<span style=\"font-size: large;\">Memenuhi kebutuhan makanan</span>', 'C'),
(566, 9, '<font face=\"Arial, Verdana\" style=\"font-size: large;\">Sistem perkembangbiakan pria tersusun dari organ luar yang terdiri dari ....</font>', '', '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">a. Vagina dan rahim&nbsp;</font></div><div style=\"\"><br></div>', '<span style=\"font-size: large;\">b. Penis dan skrotum&nbsp;</span>', '<span style=\"font-size: large;\">c. Anus dan penis</span>', '<span style=\"font-size: large;\">d. Sperma dan Zigot</span>', 'B'),
(567, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Manusia mengalami reproduksi secara ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. Membelah diri&nbsp;</span></div>', '<span style=\"font-size: large;\">b. Generatif&nbsp;</span>', '<span style=\"font-size: large;\">c. Vegetatif&nbsp;</span>', '<span style=\"font-size: large;\">d. Spora</span>', 'B'),
(568, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Selama masa pubertas pria, testis yang dimilikinya mulai bekerja menghasilkan ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Sperma&nbsp;</span>', '<span style=\"font-size: large;\">b. Sel telur</span>', '<span style=\"font-size: large;\">&nbsp;c. Sel kelamin</span>', '<span style=\"font-size: large;\">&nbsp;d. Sel betina</span>', 'A'),
(569, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Bagian organ reproduksi pria yang membungkus testis adalah ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Uretra&nbsp;</span>', '<span style=\"font-size: large;\">b. Ginjal&nbsp;</span>', '<span style=\"font-size: large;\">c. Skrotum&nbsp;</span>', '<span style=\"font-size: large;\">d. Penis</span>', 'C'),
(570, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Saat wanita sudah memasuki masa pubertas, sel telur mulai tumbuh dalam ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. Penis&nbsp;</span></div>', '<span style=\"font-size: large;\">b. Ovum&nbsp;</span>', '<span style=\"font-size: large;\">c. Perut&nbsp;</span>', '<span style=\"font-size: large;\">d. Ovarium</span>', 'D'),
(571, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Tempat pertumbuhan sel telur yang telah dibuahi dinamakan ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. Ovum&nbsp;</span></div>', '<span style=\"font-size: large;\">b. Uretra</span>', '<span style=\"font-size: large;\">&nbsp;c. Vagina&nbsp;</span>', '<span style=\"font-size: large;\">d. Uterus</span>', 'D'),
(572, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Cairan kimia yang dihasilkan oleh tubuh untuk mengendalikan proses-proses metabolisme&nbsp;</font><span style=\"font-size: large; font-family: Arial, Verdana;\">dalam tubuh dinamakan ....</span></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Enzim&nbsp;</span>', '<span style=\"font-size: large;\">b. Hormon&nbsp;</span>', '<span style=\"font-size: large;\">c. Sel&nbsp;</span>', '<span style=\"font-size: large;\">d. Vitamin</span>', 'B'),
(573, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Sperma mempunyai struktur sebagai sel-sel tunggal yang tersusun dari kepala dan ekor.</font></div><div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Ekor berfungsi untuk ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Informasi genetik&nbsp;</span>', '<div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><span style=\"font-size: large; font-family: Arial, Verdana;\">b. Menggerakkan sperma&nbsp;</span></div>', '<span style=\"font-size: large;\">c. Menggerakkan testis</span>', '<span style=\"font-size: large;\">d. Mengurai DNA</span>', 'B'),
(574, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Proses dimana ovarium menghasilkan sebuah sel telur yang masak disebut proses ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. Ejakulasi&nbsp;</span></div>', '<span style=\"font-size: large;\">b. Reproduksi&nbsp;</span>', '<span style=\"font-size: large;\">c. Ovulasi</span>', '<span style=\"font-size: large;\">&nbsp;d. Respirasi</span>', 'C'),
(575, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Berikut ini yang tidak termasuk organ reproduksi wanita adalah ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Ovum</span>', '<span style=\"font-size: large;\">&nbsp;b. Uterus&nbsp;</span>', '<span style=\"font-size: large;\">c. Oviduk&nbsp;</span>', '<span style=\"font-size: large;\">d. Testis</span>', 'D'),
(576, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Perubahan yang terjadi tiap bulan pada organ reproduksi wanita disebut siklus ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Sel telur&nbsp;</span>', '<span style=\"font-size: large;\">b. Menstruasi&nbsp;</span>', '<span style=\"font-size: large;\">c. Ovulasi&nbsp;</span>', '<span style=\"font-size: large;\">d. Sperma</span>', 'B'),
(577, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Peleburan sperma dengan sel telur dikenal sebagai proses ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Penyerbukan&nbsp;</span>', '<span style=\"font-size: large;\">b. Inseminasi&nbsp;</span>', '<span style=\"font-size: large;\">c. Fertilisasi&nbsp;</span>', '<span style=\"font-size: large;\">d. Kelahiran</span>', 'C'),
(578, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Pembuahan antara sel telur dan sperma terjadi di dalam saluran telur, dan</font></div><div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">menghasilkan ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. Urine</span></div>', '<span style=\"font-size: large;\">&nbsp;b. Darah&nbsp;</span>', '<span style=\"font-size: large;\">c. Zigot&nbsp;</span>', '<span style=\"font-size: large;\">d. Sperma</span>', 'C'),
(579, 9, '<div style=\"text-align: justify;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Tahapan saat tubuh manusia mencapai kedewasaan fisik yang ditandai dengan perubahan&nbsp;</font><span style=\"font-size: large; font-family: Arial, Verdana;\">dalam penampakan fisik dan pada tahapinitubuh telah mampu melaksanakan&nbsp;</span><span style=\"font-size: large; font-family: Arial, Verdana;\">perkembangbiakan atau reproduksi dinamakan tahapan ....</span></div><div style=\"text-align: justify;\"><br></div>', '', '<span style=\"font-size: large;\">a. Dewasa&nbsp;</span>', '<span style=\"font-size: large;\">b. Remaja&nbsp;</span>', '<span style=\"font-size: large;\">c. Pubertas&nbsp;</span>', '<span style=\"font-size: large;\">d. Penuaan</span>', 'C'),
(580, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Pembentukan sel kelamin (sel telur/ ovum) pada perempuan disebut ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Oogenesis&nbsp;</span>', '<span style=\"font-size: large;\">b. Spermatogenesis&nbsp;</span>', '<span style=\"font-size: large;\">c. Spermatogonia&nbsp;</span>', '<span style=\"font-size: large;\">d. Fertilisasi</span>', 'A'),
(581, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Sel telur yang telah dibuahi disebut ....</font></div>', '', '<span style=\"font-size: large;\">a. Embrio&nbsp;</span>', '<span style=\"font-size: large;\">b. Zigot&nbsp;</span>', '<span style=\"font-size: large;\">c. Rahim&nbsp;</span>', '<span style=\"font-size: large;\">d. Janin</span>', 'B'),
(582, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Pada testis terdapat sel induk sperma yang dinamakan ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Spermatogonia&nbsp;</span>', '<span style=\"font-size: large;\">b. Spermatogenesis&nbsp;</span>', '<span style=\"font-size: large;\">c. Spermatozoa&nbsp;</span>', '<span style=\"font-size: large;\">d. Spermagonium</span>', 'A'),
(583, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Lama waktu siklus menstruasi pada setiap wanita adalah ....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Sama&nbsp;</span>', '<span style=\"font-size: large;\">b. Berbeda-beda&nbsp;</span>', '<span style=\"font-size: large;\">c. Seperti laki-laki&nbsp;</span>', '<span style=\"font-size: large;\">d. Jangka waktunya sama</span>', 'B'),
(584, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Sel telur yang tidak dibuahi di dalam saluran telur, maka akan rusak. Dinding rahim akan</font></div><div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">luruh dan terjadi pendarahan. Peristiwa tersebut dikenal dengan istilah .....</font></div><div style=\"\"><br></div>', '', '<span style=\"font-size: large;\">a. Menstruasi&nbsp;</span>', '<span style=\"font-size: large;\">b. Gagal ginjal&nbsp;</span>', '<span style=\"font-size: large;\">c. Ejakulasi&nbsp;</span>', '<span style=\"font-size: large;\">d. Pembuahan</span>', 'A'),
(585, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Zigot akan tumbuh dalam uterus sampai bayi dilahirkan kurang lebih berkisar ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. 12 bulan&nbsp;</span></div>', '<span style=\"font-size: large;\">b. 9 bulan&nbsp;</span>', '<span style=\"font-size: large;\">c. 20 bulan&nbsp;</span>', '<span style=\"font-size: large;\">d. 3 bulan</span>', 'B'),
(586, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Virus HIV (Human Immunodeficiency Virus). Virus ini meru pakan virus yang menyebabkan</font></div><div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">hilangnya sistem ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. Reproduksi&nbsp;</span></div>', '<span style=\"font-size: large;\">b. Kekebalan tubuh&nbsp;</span>', '<span style=\"font-size: large;\">c. Pencernaan&nbsp;</span>', '<span style=\"font-size: large;\">d. Ekskresi</span>', 'B'),
(587, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Penyakit menular pada sistem reproduksi manusia yang disebabkan oleh bakteri</font></div><div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Treponema pallidum adalah ....</font></div><div style=\"\"><br></div>', '', '<div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">a. HIV</font></div>', '<div><br></div><div><div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">b. Herpes Simplex Genitalis</font></div><div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><br></div></div>', '<div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">c. Kencing nanah</font></div><div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><br></div>', '<span style=\"font-size: large;\">d. Sifilis</span>', 'D'),
(588, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Berikut ini adalah gejala awal penyakit HIV, kecuali ....</font></div><div style=\"\"><br></div>', '', '<div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">a. Tubuh menjadi lemah</font></div>', '<div><br></div><div><div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">b. Berkeringat berlebihan di malam hari</font></div></div>', '<div><br></div><div><div style=\"font-family: &quot;Times New Roman&quot;; font-size: medium;\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">c. Diare terus-menerus</font></div></div>', '<div><br></div><div><span style=\"font-size: large;\">d. Jerawat yang tidak sembuh-sembuh</span></div>', 'D'),
(589, 9, '<div style=\"\"><font face=\"Arial, Verdana\" style=\"font-size: large;\">Penyakit AIDS (Acquired Immuno Deficiency Syndrome) yang disebabkan oleh Virus ....</font></div>', '', '<div><br></div><div><span style=\"font-size: large;\">a. HIV&nbsp;</span></div>', '<span style=\"font-size: large;\">b. Influenza&nbsp;</span>', '<span style=\"font-size: large;\">c. TBC&nbsp;</span>', '<span style=\"font-size: large;\">d. SARS</span>', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `question_group`
--

CREATE TABLE `question_group` (
  `question_group_id` int(10) NOT NULL,
  `question_group_name` varchar(30) NOT NULL,
  `lesson_id` int(10) NOT NULL,
  `nip` char(18) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_group`
--

INSERT INTO `question_group` (`question_group_id`, `question_group_name`, `lesson_id`, `nip`) VALUES
(1, 'Soal Ulangan Non Unggulan', 20, '196911282006072025'),
(8, 'Soal Ulangan Unggulan', 20, '196911282006072025'),
(9, 'biologi 1', 21, '197607082003072017'),
(10, 'biologi2', 21, '197607082003072017');

-- --------------------------------------------------------

--
-- Table structure for table `sch_year`
--

CREATE TABLE `sch_year` (
  `sch_year_id` int(10) NOT NULL,
  `sch_year` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sch_year`
--

INSERT INTO `sch_year` (`sch_year_id`, `sch_year`) VALUES
(1, '2018/2019');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `nis` char(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `class_id` int(10) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'siswa',
  `address` text NOT NULL,
  `po_birth` varchar(20) NOT NULL,
  `do_birth` date NOT NULL,
  `gender` enum('L','P') NOT NULL,
  `religion` varchar(20) NOT NULL,
  `father_name` varchar(20) NOT NULL,
  `mother_name` varchar(20) NOT NULL,
  `no_telp` varchar(13) NOT NULL,
  `email` varchar(20) DEFAULT NULL,
  `picture` varchar(100) NOT NULL,
  `block` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`nis`, `name`, `password`, `class_id`, `level`, `address`, `po_birth`, `do_birth`, `gender`, `religion`, `father_name`, `mother_name`, `no_telp`, `email`, `picture`, `block`) VALUES
('5350', 'DEWANTY AYUDYA PRASTIWI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tamansari, Karangmoncol, Purbalingga', 'Purbalingga', '2004-11-01', 'P', 'Islam', 'Bambang Wisono', '-', '000000000000', 'example@mail.com', '393-730-people.png', 'N'),
('5327', 'LILIS LESTARI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tunjungmuli, Karangmoncol, Purbalingga', 'Purbalingga', '2004-01-01', 'P', 'Islam', 'Zaenal Abidin', 'Sri Okdariyah', '000000000000', 'example@mail.com', '302-730-people.png', 'N'),
('5338', 'AGUNG AVIAN MAHARDIKA', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Pekiringan Karangmoncol, Purbalingga', 'yogyakarta', '2003-02-01', 'L', 'Islam', 'Wahman', '-', '000000000000', 'example@mail.com', '620-730-people.png', 'N'),
('5364', 'SIRVI ARVANI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Grantung, Karangmoncol, Purbalingga', 'Purbalingga', '1998-11-05', 'L', 'Islam', 'Khamdani', '-', '000000000000', 'example@mail.com', '815-730-people.png', 'N'),
('5347', 'ANDREAS CAHYO SAPUTRO', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Kramat,Karangmoncol, Purbalingga', 'Purbalingga', '2004-03-01', 'L', 'Katholik', 'Ngatimin', '-', '000000000000', 'example@mail.com', '841-730-people.png', 'N'),
('5331', 'CHRISDINATA ADI MAHENDRA', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Rajawana, Karangmoncol, Purbalingga', 'Banyumas', '2004-12-01', 'L', 'Islam', 'Yully Christiono', '-', '000000000000', 'example@mail.com', '166-730-people.png', 'N'),
('5351', 'DEAN MAHENDRA DAMASTAYANA', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tamansari, Karangmoncol, Purbalingga', 'Jakarta', '1999-11-08', 'L', 'Islam', 'Bambang Triono Utomo', '-', '000000000000', 'example@mail.com', '568-730-people.png', 'N'),
('5380', 'DENY NOVANTO', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Karangsari, Karangmoncol, Purbalingga', 'Purbalingga', '2004-11-19', 'L', 'Islam', 'Slamet Tiono', '-', '000000000000', 'example@mail.com', '76-730-people.png', 'N'),
('5369', 'ADE SETIAWAN', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Rajawana, Karangmoncol, Purbalingga', 'Jakarta', '2004-06-01', 'L', 'Islam', 'Sugeng Ariyanto', '-', '000000000000', 'example@mail.com', '925-730-people.png', 'N'),
('5352', 'DEVI WULANSARI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tajug, Karangmoncol, Purbalingga', 'Denpasar', '2000-12-08', 'P', 'Budha', 'Karsimin', '-', '000000000000', 'example@mail.com', '25-730-people.png', 'N'),
('5354', 'DHIMAS SETYADI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Sumampir, Rembang, Purblingga', 'Pubalingga', '2000-01-23', 'L', 'Islam', 'Agus Hariyanto', '-', '000000000000', 'example@mail.com', '833-730-people.png', 'N'),
('5329', 'INDRA BUDHI SETIYONO', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Jambu, Karanganyar, Purbalingga', 'Jakarta', '2003-05-01', 'L', 'Katholik', 'Walyono', '-', '000000000000', 'example@mail.com', '957-730-people.png', 'N'),
('5353', 'KARINA RASITANIA', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Pekiringan, Karangmoncol, Purbalingga', 'Purbalingga', '2004-07-01', 'P', 'Kristen', 'Rocheri Jati Pratiwa', '-', '000000000000', 'example@mail.com', '392-730-people.png', 'N'),
('5330', 'LENY KUMALASARI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Makam, Rembang, Purbalingga', 'Kebumen', '2000-03-19', 'P', 'Islam', 'Musawal', '-', '000000000000', 'example@mail.com', '171-730-people.png', 'N'),
('5348', 'LULUK MUAWANAH', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Pekiringan, Karangmoncol, Purbaingga', 'Purbalingga', '2004-03-16', 'P', 'Islam', 'Udiyono', '-', '000000000000', 'example@mail.com', '535-730-people.png', 'N'),
('5328', 'MITA DEVI SAPUTRI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tamansari, Karangmoncol, Purbaingga', 'Purbalingga', '2004-07-17', 'P', 'Islam', 'Sopyan', '-', '000000000000', 'example@mail.com', '414-730-people.png', 'N'),
('5337', 'MUHAMAD IRFAN', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Kramat, Karangmoncol, Purbaingga', 'Purbalingga', '2004-07-06', 'L', 'Islam', 'Sardi', '-', '000000000000', 'example@mail.com', '553-730-people.png', 'N'),
('5468', 'MUHAMMAD HANIF', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Grantung, Karangmoncol, Purbaingga', 'Jakarta', '2004-04-13', 'L', 'Islam', 'Supriyanto', '-', '000000000000', 'example@mail.com', '0-730-people.png', 'N'),
('5474', 'NOVIANI AFIF NURROHMAH', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Baleraksa, Karangmoncol, Purbaingga', 'Purbalingga', '2003-11-01', 'P', 'Islam', 'Suyitno', '-', '000000000000', 'example@mail.com', '815-730-people.png', 'N'),
('5345', 'RIDHWAN ANSHOR ALFAUZI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Kramat, Karangmoncol, Purbaingga', 'Purbalingga', '2003-01-08', 'L', 'Islam', 'Bintoro', '-', '000000000000', 'example@mail.com', '439-730-people.png', 'N'),
('5344', 'SANDHIKA WIDYA KUSUMA', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tunjungmuli, Karangmoncol, Purbaingga', 'Purbalingga', '1998-12-08', 'L', 'Islam', 'Parjanto', '-', '000000000000', 'example@mail.com', '111-730-people.png', 'N'),
('5325', 'SARIYATI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Sirau, Karangmoncol, Purbaingga', 'Purbalingga', '1998-04-21', 'P', 'Islam', 'Darmo', '-', '000000000000', 'example@mail.com', '398-730-people.png', 'N'),
('5333', 'SUSI SULISTIYANINGSIH', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Rajawana, Karangmoncol, Purbaingga', 'Jakarta', '2004-06-02', 'P', 'Islam', 'Supriyadi', '-', '000000000000', 'example@mail.com', '70-730-people.png', 'N'),
('5454', 'WAKIT ALI MUNTOHA', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Pekiringan, Karangmoncol, Purbaingga', 'Purbalingga', '2004-02-07', 'L', 'Islam', 'Ariyono', '-', '000000000000', 'example@mail.com', '769-730-people.png', 'N'),
('5542', 'YULIANA KARTIKA SARI', 'bcd724d15cde8c47650fda962968f102', 5, 'siswa', 'Tajug, Karangmoncol, Purbaingga', 'Purbaingga', '2000-06-30', 'P', 'Islam', 'Muhdori Efendi', '-', '000000000000', 'example@mail.com', '707-730-people.png', 'N'),
('5319', 'ADENDA ARGA PRIMA YUDA', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Tajug, Karangmoncol, Purbaingga', 'Purbaingga', '2004-05-04', 'L', 'Islam', 'Agus Didik Pratondo', '-', '000000000000', 'example@mail.com', '881-730-people.png', 'N'),
('5363', 'AKHMAD MUTROFIN', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Grantung, Karangmoncol, Purbaingga', 'Purbaingga', '1997-10-30', 'L', 'Islam', 'Wahlan', '-', '000000000000', 'example@mail.com', '97-730-people.png', 'N'),
('5368', 'ANDHIKA JANU KUSUMA', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Tamansari, Karangmoncol, Purbaingga', 'Purbaingga', '1999-01-09', 'L', 'Islam', 'Sarwono', '-', '000000000000', 'example@mail.com', '824-730-people.png', 'N'),
('5455', 'APRILIA AMBAR CANTIKA', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Baleraksa, Karangmoncol, Purbaingga', 'Purbalingga', '2004-04-10', 'L', 'Islam', 'Sunardi', '-', '000000000000', 'example@mail.com', '170-730-people.png', 'N'),
('5385', 'BAGUS EKO SAPUTRO', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Rajawana, Karangmoncol, Purbaingga', 'Purbaingga', '1999-08-27', 'L', 'Islam', 'Joko Yuli Sutiyono', '-', '000000000000', 'example@mail.com', '902-730-people.png', 'N'),
('5390', 'DADANG PRIYO SUMBODO', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Pepedan, Karangmoncol, Purbaingga', 'Purbaingga', '1999-07-28', 'L', 'Islam', 'Iryono', '-', '000000000000', 'example@mail.com', '632-730-people.png', 'N'),
('5356', 'DANI ASMORO', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Karangsari, Karangmoncol, Purbaingga', 'yogyakarta', '1998-11-19', 'L', 'Islam', 'Waris Sugiarto', '-', '000000000000', 'example@mail.com', '214-730-people.png', 'N'),
('5349', 'DEWI FITRIANI', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Baleraksa, Karangmoncol, Purbaingga', 'Purbaingga', '2000-01-07', 'P', 'Islam', 'Sutrisno', '-', '000000000000', 'example@mail.com', '14-730-people.png', 'N'),
('5383', 'HESTINAWATI', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Pekiringan, Karangmoncol, Purbaingga', 'Purbaingga', '1998-10-21', 'P', 'Islam', 'Saryanto', '-', '000000000000', 'example@mail.com', '148-730-people.png', 'N'),
('5357', 'IRFAN ZUDI', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Karangsari, Karangmoncol, Purbaingga', 'Purbaingga', '1998-11-12', 'L', 'Islam', 'Mudayat', '-', '000000000000', 'example@mail.com', '785-730-people.png', 'N'),
('5355', 'MARDHANI', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Tamansari, Karangmoncol, Purbaingga', 'Purbaingga', '1997-11-24', 'L', 'Islam', 'Rukun', '-', '000000000000', 'example@mail.com', '801-730-people.png', 'N'),
('5384', 'MEILIYA ARIFAH', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Baleraksa, Karangmoncol, Purbaingga', 'Purbaingga', '2000-05-23', 'P', 'Islam', 'Turadi', '-', '000000000000', 'example@mail.com', '0-730-people.png', 'N'),
('5361', 'ERIKA BETI MASUDAH', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Tunjungmuli, Karangmoncol, Purbaingga', 'Purbaingga', '2000-04-28', 'P', 'Islam', 'Sampurlan', '-', '000000000000', 'example@mail.com', '982-730-people.png', 'N'),
('5367', 'OKTAFINO KHRISNA ARYWIBOWO', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Karangsari, Karangmoncol, Purbalingga', 'Cilacap', '1998-10-04', 'L', 'Islam', 'Gunawan', '-', '000000000000', 'example@mail.com', '316-730-people.png', 'N'),
('5358', 'PUTRA ELANG PERKASA', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Karangsari, Karangmoncol, Purbaingga', 'Purbaingga', '1999-03-13', 'L', 'Islam', '-', 'Juwarni', '000000000000', 'example@mail.com', '853-730-people.png', 'N'),
('5341', 'RADIQ ADHI KURNIAWAN', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Pepedan, Karangmoncol, Purbaingga', 'Palembang', '2000-08-07', 'L', 'Islam', 'Mudahman', '-', '000000000000', 'example@mail.com', '594-730-people.png', 'N'),
('5374', 'RATIH ANDRI ASTUTI', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Baleraksa, Karangmoncol, Purbaingga', 'Purbaingga', '1999-01-24', 'P', 'Islam', 'Muhadi', '-', '000000000000', 'example@mail.com', '345-730-people.png', 'N'),
('5362', 'YUDI PRASETYO', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Baleraksa, Karangmoncol, Purbalingga', 'Purbalingga', '1998-02-06', 'L', 'Islam', 'Dalhar', '-', '000000000000', 'example@mail.com', '736-730-people.png', 'N'),
('5346', 'YUSUF RIDWAN KHARIRI', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Tamansari, Karangmoncol, Purbalingga', 'Jakarta', '1999-09-09', 'L', 'Islam', 'Suprapto', '-', '000000000000', 'example@mail.com', '901-730-people.png', 'N'),
('5365', 'ZAKARIA PERLINDUNGAN SYAFII', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Pepedan, Karangmoncol, Purbaingga', 'Purbaingga', '2000-06-26', 'L', 'Islam', 'Nur Syafii', '-', '000000000000', 'example@mail.com', '613-730-people.png', 'N'),
('5648', 'Bakti Irawan', 'bcd724d15cde8c47650fda962968f102', 3, 'siswa', 'Karangsari, Karangmoncol, Purbaingga', 'Purbaingga', '1994-03-02', 'L', 'Islam', 'Sukatdi', 'Triyati', '082243876861', 'example@gmail.com', '934-people.png', 'N');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `nip` char(18) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'guru',
  `address` text DEFAULT NULL,
  `po_birth` varchar(20) DEFAULT NULL,
  `do_birth` date DEFAULT NULL,
  `gender` enum('L','P') DEFAULT NULL,
  `religion` varchar(20) DEFAULT NULL,
  `no_telp` varchar(13) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `position` varchar(20) DEFAULT NULL,
  `block` enum('Y','N') NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`nip`, `name`, `password`, `level`, `address`, `po_birth`, `do_birth`, `gender`, `religion`, `no_telp`, `email`, `picture`, `position`, `block`) VALUES
('197607082003072017', 'Utami Pujiati, S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Jambu, Karanganyar, Purbalingga', 'Purbalingga', '1976-07-08', 'P', 'Islam', '000000000000', 'example@mail.com', '78-730-people.png', 'Guru', 'N'),
('196804302002072029', 'Dra. Ani Setyawati', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Karangmoncol, Purbalingga', 'Semarang', '1968-04-30', 'P', 'Islam', '000000000000', 'example@mail.com', '92-730-people.png', 'Guru', 'N'),
('198807011995071076', 'Sukoco Purbo Kesumo, S.Pdi', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Tamansari, Karangmoncol, Purbalingga', 'Purbalingga', '1988-07-01', 'L', 'Islam', '000000000000', 'example@mail.com', '893-730-people.png', 'Guru', 'N'),
('196703271995072023', 'Drs. Miswadi', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Baleraksa, Karangmoncol, Purbalingga', 'Purbalingga', '1967-03-27', 'P', 'Islam', '000000000000', 'example@mail.com', '327-730-people.png', 'Guru', 'N'),
('196302261995071010', 'Sutrisno S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Karangtengah, Kertanegara, Purbalingga', 'Purbalingga', '1963-02-26', 'L', 'Islam', '000000000000', 'example@mail.com', '205-730-people.png', 'Guru', 'N'),
('196706171990072097', 'Dra. Kurniah', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Tajug, Karangmoncol, Purbalingga', 'Purbalingga', '1967-06-17', 'P', 'Islam', '000000000000', 'example@mail.com', '881-730-people.png', 'Kepala Sekolah', 'N'),
('198010182005072018', 'Ika Aprilia, S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Bojongsari, Purbalingga', 'Klaten', '1980-10-18', 'P', 'Islam', '000000000000', 'example@mail.com', '838-730-people.png', 'Guru', 'N'),
('197905072005071020', 'Aris Purwanto, S.IP', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Bobotsari, Purbalingga', 'Purbalingga', '1979-05-07', 'L', 'Islam', '000000000000', 'example@mail.com', '375-730-people.png', 'Guru', 'N'),
('196911282006072025', 'Harsiyah .P.N, S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Bancar, Purbalingga', 'Banyumas', '1969-11-28', 'P', 'Katholik', '000000000000', 'example@mail.com', '758-730-people.png', 'Guru', 'N'),
('196903052004072022', 'Siti Muntohiroh, S.Pd.', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Karanganyar, Purbalingga', 'Purbalingga', '1969-03-05', 'P', 'Islam', '000000000000', 'example@mail.com', '955-730-people.png', 'Guru', 'N'),
('198611062009102006', 'Sidqotul Fuadiyah, S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Tunjungmuli, Karangmoncol, Purbalingga', 'Purbalingga', '1986-11-06', 'P', 'Islam', '000000000000', 'example@mail.com', '586-730-people.png', 'Guru', 'N'),
('198810152009122031', 'Indri Mirawati, S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Pekiringan, Karangmoncol, Purbalingga', 'Purbalingga', '1988-10-15', 'P', 'Islam', '000000000000', 'example@mail.com', '907-730-people.png', 'Guru', 'N'),
('197404182011072035', 'Titis Pramukti Rahayu, S.So', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Pekiringan, Karangmoncol, Purbalingga', 'yogyakarta', '1974-04-18', 'P', 'Islam', '000000000000', 'example@mail.com', '240-730-people.png', 'Guru', 'N'),
('195805031992071801', 'Sabitun, M.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Baleraksa, Karangmoncol, Purbalingga', 'Purbalingga', '1958-05-03', 'L', 'Islam', '000000000000', 'example@mail.com', '303-730-people.png', 'Guru', 'N'),
('198404062014071043', 'Sofan Ansori, S.Pd.Jas', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Mangunegara, Mrebet, Purbalingga', 'Pemalang', '1984-04-06', 'L', 'Islam', '000000000000', 'example@mail.com', '550-730-people.png', 'Guru', 'N'),
('196904052014071045', 'Juni Hartono Tri Pamungkas, S.', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Baleraksa, Karangmoncol, Purbalingga', 'Purbalingga', '1969-04-05', 'L', 'Islam', '000000000000', 'example@mail.com', '376-730-people.png', 'Guru', 'N'),
('198901082014072066', 'Sugiyati, S.Pd', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Tajug, Karangmoncol, Purbalingga', 'Purbalingga', '1989-01-08', 'P', 'Katholik', '000000000000', 'example@mail.com', '225-730-people.png', 'Guru', 'N'),
('199105182015012074', 'Septiana Cahyasari, S.Pd.K', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Jl. M.H Tamrin. Purbalingga', 'Banyumas', '1991-05-18', 'P', 'Kristen', '000000000000', 'example@mail.com', '899-730-people.png', 'Guru', 'N'),
('197512092016072047', 'Puji Astuti, S.Si', '77e69c137812518e359196bb2f5e9bb9', 'guru', 'Berkoh, Purwokerto Selatan, Banyumas', 'Banyumas', '1975-12-09', 'P', 'Islam', '000000000000', 'example@mail.com', '530-730-people.png', 'Guru', 'N'),
('197512182003071038', 'Nur sholeh, S.Kom', 'f9664ea1803311b35f81d07d8c9e072d', 'guru', 'Gunungkarang, Bobotsari, Purbalingga', 'Yogyakarta', '1975-12-18', 'L', 'Islam', '000000000000', 'example@mail.com', '179-730-people.png', 'Kepala Lab Komputer', 'N');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `detail_lesson`
--
ALTER TABLE `detail_lesson`
  ADD PRIMARY KEY (`detail_lesson_id`);

--
-- Indexes for table `exm_reg`
--
ALTER TABLE `exm_reg`
  ADD PRIMARY KEY (`exm_reg_id`);

--
-- Indexes for table `exm_result`
--
ALTER TABLE `exm_result`
  ADD PRIMARY KEY (`exm_result_id`);

--
-- Indexes for table `exm_schedule`
--
ALTER TABLE `exm_schedule`
  ADD PRIMARY KEY (`exm_schedule_id`);

--
-- Indexes for table `formula_lcg`
--
ALTER TABLE `formula_lcg`
  ADD PRIMARY KEY (`formula_lcg_id`);

--
-- Indexes for table `lesson`
--
ALTER TABLE `lesson`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `process_exm`
--
ALTER TABLE `process_exm`
  ADD PRIMARY KEY (`process_exm_id`);

--
-- Indexes for table `question`
--
ALTER TABLE `question`
  ADD PRIMARY KEY (`question_id`);

--
-- Indexes for table `question_group`
--
ALTER TABLE `question_group`
  ADD PRIMARY KEY (`question_group_id`);

--
-- Indexes for table `sch_year`
--
ALTER TABLE `sch_year`
  ADD PRIMARY KEY (`sch_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`nis`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `detail_lesson`
--
ALTER TABLE `detail_lesson`
  MODIFY `detail_lesson_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `exm_reg`
--
ALTER TABLE `exm_reg`
  MODIFY `exm_reg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `exm_result`
--
ALTER TABLE `exm_result`
  MODIFY `exm_result_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `exm_schedule`
--
ALTER TABLE `exm_schedule`
  MODIFY `exm_schedule_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `formula_lcg`
--
ALTER TABLE `formula_lcg`
  MODIFY `formula_lcg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `lesson`
--
ALTER TABLE `lesson`
  MODIFY `lesson_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `process_exm`
--
ALTER TABLE `process_exm`
  MODIFY `process_exm_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `question`
--
ALTER TABLE `question`
  MODIFY `question_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `question_group`
--
ALTER TABLE `question_group`
  MODIFY `question_group_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `sch_year`
--
ALTER TABLE `sch_year`
  MODIFY `sch_year_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
