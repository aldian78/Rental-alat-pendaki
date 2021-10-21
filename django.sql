-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 05, 2021 at 03:05 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `django`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add mahasiswa', 7, 'add_mahasiswa'),
(26, 'Can change mahasiswa', 7, 'change_mahasiswa'),
(27, 'Can delete mahasiswa', 7, 'delete_mahasiswa'),
(28, 'Can view mahasiswa', 7, 'view_mahasiswa'),
(29, 'Can add user profile info', 8, 'add_userprofileinfo'),
(30, 'Can change user profile info', 8, 'change_userprofileinfo'),
(31, 'Can delete user profile info', 8, 'delete_userprofileinfo'),
(32, 'Can view user profile info', 8, 'view_userprofileinfo'),
(33, 'Can add aboutus', 9, 'add_aboutus'),
(34, 'Can change aboutus', 9, 'change_aboutus'),
(35, 'Can delete aboutus', 9, 'delete_aboutus'),
(36, 'Can view aboutus', 9, 'view_aboutus'),
(37, 'Can add aboutus', 10, 'add_aboutus'),
(38, 'Can change aboutus', 10, 'change_aboutus'),
(39, 'Can delete aboutus', 10, 'delete_aboutus'),
(40, 'Can view aboutus', 10, 'view_aboutus'),
(41, 'Can add about', 10, 'add_about'),
(42, 'Can change about', 10, 'change_about'),
(43, 'Can delete about', 10, 'delete_about'),
(44, 'Can view about', 10, 'view_about'),
(45, 'Can add list', 11, 'add_list'),
(46, 'Can change list', 11, 'change_list'),
(47, 'Can delete list', 11, 'delete_list'),
(48, 'Can view list', 11, 'view_list'),
(49, 'Can add kategori', 12, 'add_kategori'),
(50, 'Can change kategori', 12, 'change_kategori'),
(51, 'Can delete kategori', 12, 'delete_kategori'),
(52, 'Can view kategori', 12, 'view_kategori'),
(53, 'Can add blog', 13, 'add_blog'),
(54, 'Can change blog', 13, 'change_blog'),
(55, 'Can delete blog', 13, 'delete_blog'),
(56, 'Can view blog', 13, 'view_blog'),
(57, 'Can add kategori_blog', 14, 'add_kategori_blog'),
(58, 'Can change kategori_blog', 14, 'change_kategori_blog'),
(59, 'Can delete kategori_blog', 14, 'delete_kategori_blog'),
(60, 'Can view kategori_blog', 14, 'view_kategori_blog'),
(61, 'Can add gallery', 15, 'add_gallery'),
(62, 'Can change gallery', 15, 'change_gallery'),
(63, 'Can delete gallery', 15, 'delete_gallery'),
(64, 'Can view gallery', 15, 'view_gallery'),
(65, 'Can add contact', 16, 'add_contact'),
(66, 'Can change contact', 16, 'change_contact'),
(67, 'Can delete contact', 16, 'delete_contact'),
(68, 'Can view contact', 16, 'view_contact'),
(69, 'Can add contact', 17, 'add_contact'),
(70, 'Can change contact', 17, 'change_contact'),
(71, 'Can delete contact', 17, 'delete_contact'),
(72, 'Can view contact', 17, 'view_contact'),
(73, 'Can add komentarblog', 18, 'add_komentarblog'),
(74, 'Can change komentarblog', 18, 'change_komentarblog'),
(75, 'Can delete komentarblog', 18, 'delete_komentarblog'),
(76, 'Can view komentarblog', 18, 'view_komentarblog'),
(77, 'Can add komentarlist', 19, 'add_komentarlist'),
(78, 'Can change komentarlist', 19, 'change_komentarlist'),
(79, 'Can delete komentarlist', 19, 'delete_komentarlist'),
(80, 'Can view komentarlist', 19, 'view_komentarlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$216000$Z8sCFnel5Dxp$MzPZGho/akeFRJHagEv60Q9TmSM+uZLofZp37LgA4jM=', '2021-01-07 09:28:47.857661', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2020-12-01 10:43:47.019200'),
(3, 'pbkdf2_sha256$216000$911Ac7PaIs8p$enOtLs4HyGjIQeYgwXiDnpsd4mEUkMbU2UxT1C3Jl0w=', '2020-12-23 18:30:23.492876', 0, 'aldiandwi', '', '', '', 0, 1, '2020-12-01 18:39:38.880689');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2020-12-01 10:46:34.718381', '2', 'aldiandwi', 1, '[{\"added\": {}}]', 4, 1),
(2, '2020-12-01 18:39:20.031358', '2', 'aldiandwi', 3, '', 4, 1),
(3, '2020-12-01 18:39:39.248654', '3', 'aldiandwi', 1, '[{\"added\": {}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'aboutus', 'about'),
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(13, 'blog', 'blog'),
(14, 'blog', 'kategori_blog'),
(16, 'contact', 'contact'),
(17, 'contact_adm', 'contact'),
(18, 'contact_adm', 'komentarblog'),
(19, 'contact_adm', 'komentarlist'),
(5, 'contenttypes', 'contenttype'),
(9, 'home_adm', 'aboutus'),
(12, 'list_rental', 'kategori'),
(11, 'list_rental', 'list'),
(8, 'login', 'userprofileinfo'),
(15, 'mahasiswa', 'gallery'),
(7, 'mahasiswa', 'mahasiswa'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-11-28 15:33:31.014529'),
(2, 'auth', '0001_initial', '2020-11-28 15:33:33.084232'),
(3, 'admin', '0001_initial', '2020-11-28 15:33:46.169366'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-11-28 15:33:53.439142'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2020-11-28 15:33:53.539445'),
(6, 'contenttypes', '0002_remove_content_type_name', '2020-11-28 15:33:55.039221'),
(7, 'auth', '0002_alter_permission_name_max_length', '2020-11-28 15:33:56.209161'),
(8, 'auth', '0003_alter_user_email_max_length', '2020-11-28 15:33:56.589089'),
(9, 'auth', '0004_alter_user_username_opts', '2020-11-28 15:33:56.679887'),
(10, 'auth', '0005_alter_user_last_login_null', '2020-11-28 15:33:57.549373'),
(11, 'auth', '0006_require_contenttypes_0002', '2020-11-28 15:33:57.589236'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2020-11-28 15:33:57.659226'),
(13, 'auth', '0008_alter_user_username_max_length', '2020-11-28 15:33:57.778981'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2020-11-28 15:33:57.999095'),
(15, 'auth', '0010_alter_group_name_max_length', '2020-11-28 15:33:58.199257'),
(16, 'auth', '0011_update_proxy_permissions', '2020-11-28 15:33:58.259506'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2020-11-28 15:33:58.469221'),
(18, 'sessions', '0001_initial', '2020-11-28 15:33:58.829280'),
(20, 'mahasiswa', '0002_auto_20201130_2215', '2020-11-30 15:27:35.400231'),
(21, 'mahasiswa', '0003_auto_20201130_2216', '2020-11-30 15:27:36.337669'),
(22, 'mahasiswa', '0004_auto_20201130_2227', '2020-11-30 15:27:37.103242'),
(23, 'login', '0001_initial', '2020-12-01 12:03:37.526582'),
(24, 'home_adm', '0001_initial', '2020-12-14 18:53:29.787537'),
(25, 'login', '0002_delete_userprofileinfo', '2020-12-14 18:53:30.634759'),
(27, 'home_adm', '0002_delete_aboutus', '2020-12-15 12:11:49.088989'),
(31, 'list_rental', '0002_auto_20201216_2314', '2020-12-16 16:14:31.943306'),
(38, 'mahasiswa', '0001_initial', '2020-12-26 18:42:50.176166'),
(40, 'blog', '0001_initial', '2020-12-31 08:46:10.777408'),
(41, 'list_rental', '0001_initial', '2020-12-31 15:22:31.266642'),
(42, 'aboutus', '0001_initial', '2021-01-01 16:42:00.128117'),
(43, 'aboutus', '0002_auto_20210101_2341', '2021-01-01 16:42:02.334092'),
(44, 'contact', '0001_initial', '2021-01-02 15:24:48.182818'),
(46, 'contact_adm', '0001_initial', '2021-01-03 16:25:59.435819');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('9hnaucz4uxtm5i22q8i7xavopo9wizm7', '.eJxVjEEOwiAQRe_C2hCgDB1cuvcMhIGpVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hzuIstDj9bhTTg-sO8j3WW5Op1XWZSe6KPGiX15b5eTncv4MSe_nWMKEzgwcTaURPE7MbrTMAFoes1GAQAb11EBM5DSZrZpsoKcgAyCzeH7obNyw:1kot3a:nAEdLS9xdA0JAKIz62HzMaedpBbKwB9cXWNRP5P1is8', '2020-12-28 18:58:50.972659'),
('n37ppkb76evh8upukp2qt0srham9zz85', '.eJxVjEEOwiAQRe_C2hCgDB1cuvcMhIGpVA0kpV0Z765NutDtf-_9lwhxW0vYOi9hzuIstDj9bhTTg-sO8j3WW5Op1XWZSe6KPGiX15b5eTncv4MSe_nWMKEzgwcTaURPE7MbrTMAFoes1GAQAb11EBM5DSZrZpsoKcgAyCzeH7obNyw:1kmIhC:DIcRYV3p_w8OorDtNFSo6XemYWigkJdrW0kShfr862Y', '2020-12-21 15:45:02.489959'),
('xrgz7iimd0mb4ieymoqx0ocu1gr6u05t', '.eJxVjEEOwiAQRe_C2hAKgwwu3fcMZIBBqoYmpV0Z765NutDtf-_9lwi0rTVsnZcwZXERRpx-t0jpwW0H-U7tNss0t3WZotwVedAuxznz83q4fweVev3WDF47RGJvIhZvFYL2ziTQzniyBayKZM4WB1UQihqKJUcKHLA15LR4fwC3zTaZ:1ks8tz:2aajYZtmRH66PXakynFjYhEMHJX7UxIPNTUPFFovGas', '2021-01-06 18:30:23.556693');

-- --------------------------------------------------------

--
-- Table structure for table `dt_about`
--

CREATE TABLE `dt_about` (
  `id` int(11) NOT NULL,
  `about` longtext DEFAULT NULL,
  `image_about` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_about`
--

INSERT INTO `dt_about` (`id`, `about`, `image_about`) VALUES
(2, 'Kami sudah melayani kelakyakan dalam rental alat camping yang di mana menunjang aktivitas outdoor bagi teman-teman pecinta alam yang memungkinkan kekurangan alat sehingga kebutuhan yang kurang terpenuhi di sini kamu menyediakan kualitas alat yang tidak bisa di ragukan lagi\r\n\r\nalat yang kami sediakan banyak sekali mulai dari tenda dengan berbagai kapasitas dan dari hal-hal kecil yaitu kompor portabel ataupun sepatu juga kamu menyediakan dengan layak sekali.\r\n\r\nkami sangat mementingkan kepuasan pelanggan kami demi keselamatan dalam aktivitas dalam melakukan kegiatan outdoor yang dimana kami memberi safety dalam berbagai hal yang ada dengan kualitas barang yang tidak dapat di ragukan lagi dalam rental kami.', 'img/about2_JhfB5Ni.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dt_blog`
--

CREATE TABLE `dt_blog` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `deskripsi` longtext DEFAULT NULL,
  `tanggal` date NOT NULL,
  `image_blog` varchar(100) NOT NULL,
  `id_kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_blog`
--

INSERT INTO `dt_blog` (`id`, `judul`, `deskripsi`, `tanggal`, `image_blog`, `id_kategori_id`) VALUES
(7, 'Gunung Semeru Erupsi', '<p style=\"text-align:justify\">Kasbani mengatakan berdasarkan pantauan sehari terakhir, secara visual gunung api terlihat jelas hingga tertutup kabut. Asap kawah nihil dengan cuaca cerah hingga hujan, angin lemah hingga sedang ke arah utara, timur laut, timur dan selatan.</p>\r\n\r\n<p style=\"text-align:justify\">Kasbani mengatakan berdasarkan pantauan sehari terakhir, secara visual gunung api terlihat jelas hingga tertutup kabut. Asap kawah nihil dengan cuaca cerah hingga hujan, angin lemah hingga sedang ke arah utara, timur laut, timur dan selatan.</p>\r\n\r\n<p style=\"text-align:justify\">Kasbani menyebutkan rekaman seismograf pada 18 Desember 2020 tercatat Gunung Api Semeru terjadi 12 kali gempa letusan atau erupsi, 11 kali gempa guguran, 10 kali gempa hembusan, enamkali gempa tremor harmonik, dua kali gempa vulkanik dalam, tiga kali gempa tektonik lokal, empat kali gempa tektonik jauh dan sekali getaran banjir.<br />\r\nAktivitas vulkanik, Gunung Semeru , memang masih relatif tinggi, seperti yang ditunjukkan oleh data visual maupun instrument. Gempa vulkanik bisa terkait denga peretakan batuan di kedalaman yang mengindikasikan adanya suplai magma dari dalam,&nbsp;jelas Kasbani.</p>', '2021-01-07', 'blog/erupsi_gunung_semeru.jpg', 2),
(9, 'Ranu Kumbolo Jawa Tengah', '<p style=\"text-align:justify\">Menurut Agung, area wisata terbagi menjadi dua. Di satu sudut, wisatawan dapat melihat indahnya telaga yang masih alami. Sementara di sudut lain, pemandangan yang ditawarkan adalah area hutan lebat yang masih asri dan terjaga. Lihat Foto Tempat wisata di Kabupaten Banjarnegara - Telaga Dringo di Dataran Tinggi Dieng, Kabupaten Banjarnegara, Jawa Tengah.</p>\r\n\r\n<p style=\"text-align:justify\">Kemungkinan untuk berenang tidak bisa. Tapi kalau berkemah iya. Makanya kami akan kembangkan ke arah sana, buat semacam bumi perkemahan,&amp;rdquo; tutur Agung. Keindahan alam Telaga Dringo Banjarnegara Mengutip Tribun Jateng, Senin (24/8/2020), Telaga Dringo dikelilingi pepohonan yang masih rimbun. Panorama yang ditawarkan oleh tempat wisata tersebut bahkan membuat sebagian orang menyebutnya sebagai &amp;ldquo;Ranu Kumbolo&amp;rdquo; milik Jawa Tengah. Sebab, Telaga Dringo mirip dengan danau di Gunung Semeru itu</p>\r\n\r\n<p style=\"text-align:justify\">Pesona yang ditawarkan tidak hanya ada dia tempat wisata. Sepanjang jalur menuju ke sana, panorama begitu menawan. Itu karena wisatawan akan disuguhi pemandangan kebun teh, hutan lindung yang asri, deretan bukit dan lembah, juga lahan pertanian.</p>', '2021-01-05', 'blog/ranu_kumbolo.jpg', 1),
(10, 'Kebakaran Melanda Baturraden', '<p style=\"text-align:justify\">Slamet terus meluas seturut gagalnya penyekatan di kawasan Kaligua, perbatasan Kabupaten Banyumas - Brebes. Pada Sabtu, 21 September 2019, Api telah membakar kawasan Baturraden.</p>\r\n\r\n<p style=\"text-align:justify\">Api terus merembet ke arah timur sejak Kamis (19/9/2019). Sebelumnya, api masuk dari wilayah administratif Brebes ke Kabupaten Banyumas.</p>\r\n\r\n<p style=\"text-align:justify\">Tim pemantau Perhutani KPH Banyumas Timur memastikan titik asap telah mencapai wilayah kerja Banyumas Timur, administratif Desa Sambirata, Kecamatan Cilongok Kabupaten Banyumas.</p>\r\n\r\n<p style=\"text-align:justify\">Luas terbakar belum teridentifikasi. Kerugian belum teridentifikasi,&nbsp;ucapnya.<br />\r\nKepala Pelaksana Harian Badan Penanggulangan Bencana Daerah (BPBD) Banyumas, Ariono Purwanto mengatakan sebenarnya petugas gabungan telah berupaya menyekat rembetan api dengan membuat sekat bakar alami.</p>\r\n\r\n<p style=\"text-align:justify\">Tetapi upaya pemadaman dengan pembuatan sekar bakar itu gagal. Rupanya, titik api yang membakar Gunung Slamet telah melampaui titik yang direncanakan untuk penyekatan.Tiupan anginnya kencang. Jadi sudah melewati titik yang tadinya direncanakan akan dibuat sekat bakar,&nbsp;ucap Ariono.</p>', '2021-01-06', 'blog/kebakaran_hutan_Td6ZhUA.jpg', 3),
(11, 'Gunung Bromo Jawa Timur', '<p style=\"text-align:justify\">Bisa dikatakan bahwa kawasan Gunung Bromo memiliki pemandangan alam yang paling indah di wilayah Jawa Timur. Kemegahan pemandangan alam Gunung Bromo, Gunung Semeru, Gunung Tengger, Gunung Batok bisa kita dapatkan dalam satu kawasan di Taman Nasional Bromo Tengger Semeru. Belum lagi hamparan pasir yang dijuluki pasir berbisik berpagarkan perbukitan yang tertanam kokoh disekelilingnya melengkapi keistimewaan indahnya pemandangan alam di kawasan Gunung Bromo. Pesona Golden Sunrise Gunung Bromo sebagai moment terbitnya matahari dengan pemandangan terindah yang dinobatkan pada kawasan wisata Gunung Bromo ikut menyempurnakan ketakjuban para wisatawan yang menikmati wisata alam di Taman Nasional Bromo Tengger Semeru Jawa Timur.</p>\r\n\r\n<p style=\"text-align:justify\">Agar anda memiliki gambaran mengenai destinasi atau obyek Wisata yang terdapat di kawasan Taman Nasional Bromo Tengger Semeru, berikut ini kami sampaikan 7 destinasi wisata populer yang selalu dikunjungi oleh para wisatawan yang sedang melaksanakan wisata di kawasan Gunung bromo Jawa Timur.</p>', '2021-01-07', 'blog/bromo.jpg', 1),
(12, 'Erupsi Bromo Berakhir', '<p style=\"text-align:justify\">Tali sebagai batas larangan memasuki radius 1 kilometer dari kawah Gunung Bromo, masih terpasang. Akibatnya wisatawan yang datang ke Gunung Bromo harus kecewa karena tidak bisa ke kawah gunung. &nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Seperti ditayangkan Fokus Indosiar, Minggu (21/7/2019), wisatawan masih banyak yang berdatangan dengan menggunakan transportasi khas Gunung Bromo.</p>\r\n\r\n<p style=\"text-align:justify\">Namun, mereka tertahan di lautan pasir di dekat Pura Poten Luhur yang merupakan rest area sekaligus pintu masuk pendakian.</p>\r\n\r\n<p style=\"text-align:justify\">Sejak erupsi Jumat sore, 19 Juli kemarin, otoritas setempat termasuk Taman Nasional Bromo Tengger Semeru dan Pos Pengamatan Gunungapi Bromo telah menerapkan larangan lebih ketat bagi wisatawan. Mereka meminta untuk tidak mendekat kawah Bromo hingga radius 1 kilometer.</p>', '2021-01-05', 'blog/gunung_bromo_erupsi.jpg', 2),
(13, 'Wisata Gunung Lawu', '<p style=\"text-align:justify\">Berwisata di akhir pekan bisa menjadi pilihan buat kamu yang ingin menghilangkan penat dan menyegarkan pikiran dari segala kesibukan yang ada. Salah satu destinasi wisata yang bisa dikunjungi untuk libur akhir pekan adalah Gunung Lawu.<br />\r\nGunung dengan ketinggian 3.625 mdpl ini memang masih menjadi favorit pendaki. Tapi buat kamu yang tak ingin mendaki, ada beberapa tempat wisata di sekitar Gunung Lawu yang menarik untuk dikunjungi, lho.&nbsp;</p>\r\n\r\n<p style=\"text-align:justify\">Gunung Lawu sangat mudah diakses baik dari Jawa Timur lewat Kabupaten Ngawi dan Magetan atau lewat Kabupaten Karanganyar Jawa Tengah. Di lereng bagian timur, obyek wisata popularnya adalah &ldquo;Telaga Sarangan&rdquo; yang terletak 1200 meter dpl. Jarak tempuh dari kota Kabupaten Magetan 16 Km dengan waktu tempuh sekitar 30 menit.</p>', '2021-01-07', 'blog/gunung_lawu.jpg', 1),
(14, 'Wisata Gunung Kelud', '<p style=\"text-align:justify\">Wisata Gunung Kelud &nbsp;menata diri pasca erupsi 2014. Selain panorama alam yang menawan, gunung yang terletak di perbatasan Kabupaten Kediri dan Blitar itu menawarkan berbagai atraksi dan spot wisata di sekitarnya.<br />\r\nWisata Gunung Kelud dibagi menjadi tiga zona. Zona Sirkuit Kelud, Zona Agrowisata Margomulyo, dan Zona Produksi. Setiap zona memiliki atraksi yang berbeda.</p>\r\n\r\n<p style=\"text-align:justify\">Zona Sirkuit Kelud menawarkan konsep pelancongan sporty, seperti off-road dan pendakian. Di area ini, turis bisa menyaksikan keindahan kawah Gunung Kelud di antara Puncak Gajah Mungkur, Puncak Kelud, dan Puncak Sumbing.Sedangkan Zona Agrowisata Margomulyo menawarkan konsep wisata yang lebih santai. Zona ini menyajikan pemandangan berupa hamparan taman bunga yang bersanding dengan tanaman lain. Ada 60 jenis bunga dan lima jenis tanaman buah yang tumbuh di zona ini.</p>\r\n\r\n<p style=\"text-align:justify\">Adapun zona produksi merupakan wilayah yang digunakan untuk sentra kuliner dan oleh-oleh. Bisa juga disebut kawasan belanja. Pelaku usaha mikro, kecil, dan menengah akan memajang produknya di zona ini. Wisata Gunung Kelud adalah sebuah gunung berapi di Provinsi Jawa Timur. Gunung ini berada di perbatasan antara Kabupaten Kediri, Kabupaten Blitar, dan Kabupaten Malang.</p>', '2021-01-05', 'blog/gunungkelud.jpg', 1),
(15, 'Kebakaran Gunung Ranti', '<p style=\"text-align:justify\">Kebakaran hebat kembali melanda kawasan pegunungan yang ada di Banyuwangi. Gunung Ranti yang masuk kawasan Taman Wisata Alam (TWA) Kawah Ijen dilanda kebakaran hebat sejak Sabtu (19/10) petang. Dari informasi yang dihimpun, beredar kabar bahwa terdapat 4 wisatawan yang terjebak dalam kebakaran tersebut. Mereka nekat mendaki meski sudah diperingatkan oleh warga sekitar.</p>\r\n\r\n<p style=\"text-align:justify\">Namun, saat dikonfirmasi, Badan Penanggulangan Bencana Daerah (BPBD) Banyuwangi, belum memastikan kebenaran kabar tersebut. &quot;Memang infonya seperti itu. Tapi laporan resmi yang kami terima, tidak ada pengunjung yang terjebak di sana,&quot; ujar Eka Muharam Suryadi, Kabid Kedaruratan dan Logistik yang juga juru bicara BPBD Banyuwangi saat dikonfirmasi Merdeka.com.</p>\r\n\r\n<p style=\"text-align:justify\"><br />\r\nBerdasarkan informasi resmi yang dirilis BPBD Banyuwangi, api mulai terlihat sejak Sabtu (19/10) sekitar pukul 16.05 Wib di Kawasan Gunung Ranti yang masuk Dusun Jambuan, Desa Tamansari, Kecamatan Licin. Kebakaran makin membesar karena disertai angin kencang yang membuat beberapa pohon tumbang dan menimpa sebuah warung milik Heri yang merupakan warga sekitar.</p>', '2021-01-07', 'blog/kebakaran_gunung_ranti.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `dt_contact`
--

CREATE TABLE `dt_contact` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `tanggal` datetime(6) NOT NULL,
  `pesan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_contact`
--

INSERT INTO `dt_contact` (`id`, `nama`, `email`, `tanggal`, `pesan`) VALUES
(2, 'bicky poetra', 'bicky@gmail.com', '2021-01-07 10:44:31.177825', 'Gan apakah minggu store buka ?');

-- --------------------------------------------------------

--
-- Table structure for table `dt_gallery`
--

CREATE TABLE `dt_gallery` (
  `id` int(11) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tanggal` date NOT NULL,
  `image_gallery` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_gallery`
--

INSERT INTO `dt_gallery` (`id`, `tempat`, `tanggal`, `image_gallery`) VALUES
(17, 'Mt pundak', '2021-01-01', 'gallery/galeri1.jpg'),
(18, 'Watu jengger', '2021-01-04', 'gallery/galeri2.jpg'),
(19, 'Merbabu', '2020-12-17', 'gallery/galeri3.jpg'),
(20, 'Penanggungan', '2020-12-30', 'gallery/galeri4.jpg'),
(21, 'Watu jengger', '2020-12-28', 'gallery/galeri5.jpg'),
(22, 'Panderman', '2020-12-27', 'gallery/galeri6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `dt_kategori`
--

CREATE TABLE `dt_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_kategori`
--

INSERT INTO `dt_kategori` (`id_kategori`, `nama`) VALUES
(1, 'Tas camping'),
(2, 'Tenda camping'),
(4, 'Alat - alat camping');

-- --------------------------------------------------------

--
-- Table structure for table `dt_kategori_blog`
--

CREATE TABLE `dt_kategori_blog` (
  `id_kategori` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_kategori_blog`
--

INSERT INTO `dt_kategori_blog` (`id_kategori`, `nama`) VALUES
(1, 'Wisata baru'),
(2, 'Erupsi'),
(3, 'Bencana alam');

-- --------------------------------------------------------

--
-- Table structure for table `dt_komentarblog`
--

CREATE TABLE `dt_komentarblog` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `tanggal` datetime(6) NOT NULL,
  `pesan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_komentarblog`
--

INSERT INTO `dt_komentarblog` (`id`, `nama`, `email`, `tanggal`, `pesan`) VALUES
(7, 'aldian', 'aldian@gmail.com', '2021-01-04 15:18:59.589125', 'blognya sangat baik , terima kasih'),
(8, 'dhanu budi pangestu', 'dhanu@gmail.com', '2021-01-07 10:43:37.218296', 'Mantab gan ,  recommeded banget tempatnya');

-- --------------------------------------------------------

--
-- Table structure for table `dt_komentarlist`
--

CREATE TABLE `dt_komentarlist` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL,
  `tanggal` datetime(6) NOT NULL,
  `pesan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_komentarlist`
--

INSERT INTO `dt_komentarlist` (`id`, `nama`, `email`, `tanggal`, `pesan`) VALUES
(16, 'aldian', 'dwialdian2@gmail.com', '2021-01-07 10:42:24.156543', 'Barangnya baguss gan');

-- --------------------------------------------------------

--
-- Table structure for table `dt_list`
--

CREATE TABLE `dt_list` (
  `id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `harga` varchar(50) NOT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `image_list` varchar(100) NOT NULL,
  `id_kategori_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dt_list`
--

INSERT INTO `dt_list` (`id`, `judul`, `harga`, `deskripsi`, `image_list`, `id_kategori_id`) VALUES
(9, 'Sleeping bag', '20000', 'Material inner Polar Bulu Sherpa Tebal\r\nMaterial Luther parasut semi WP\r\nDimensi 200 x 74 real\r\nInclude kantong packable\r\nModel tikar', 'list_rental/galeri2.jpg', 4),
(10, 'Sendok lipat', '10000', 'Sendok Garpu Pisau Lipat Dhaulagiri\r\nBahan  Stainless steel\r\nBerat  220 gr\r\nWarna  Abu-abu\r\nStuff pouch  Included', 'list_rental/galeri3.jpg', 4),
(11, 'Headlamp', '10000', 'Senter Kepala Led Cree dan Lampu COB Super Terang \r\nLampu COB Bisa dijadikan lampu penerangan atau Emergency\r\nTerdapat Magnit pada Body Senter\r\ndilengkapi Kabel Colok Micro USB\r\nTali Strap yang Berkualitas\r\nTombol ON/OFF disamping dan di Buka Penutupnya untuk pengecasan\r\nCocok untuk Bersepeda, Memancing, Camping, Hiking, Berlayar. dll', 'list_rental/galeri4.jpg', 4),
(12, 'Kompor portable mini', '30000', 'Kompor Camping Portable Mini Merk terbaik Kovar Mudah digunakan cocok untuk dibawa camping  hiking dan kegiatan outdoor lainnya\r\n\r\nKompor portable ini menggunakan gas kaleng hicook\r\nBentuknya yang mini mudah dibawa kemana-mana\r\nMudah dinyalakan dan aman\r\n\r\nSpesifikasi\r\nMaterial copper stainless stel\r\nTipe bahan bakar butane atau propane\r\nUkuran kompor  110 L x 102 W x 99 H', 'list_rental/galeri5.jpg', 4),
(13, 'Kompas', '10000', 'Barometer atau Peramalan cuaca\r\nBrass base 120mm\r\nDia81mm\r\nDepth 55m\r\n\r\nBarometer adalah sebuah alat yang digunakan untuk mengukur tekanan udara. Barometer umum digunakan dalam peramalan cuaca di mana tekanan udara yang tinggi menandakan cuaca yang bersahabat  sedangkan tekanan udara rendah menandakan kemungkinan badai\r\n\r\nMaterial Brass\r\nBerat 500gram', 'list_rental/galeri7.jpg', 4),
(14, 'Treckingpool', '15000', 'Fungsi dan manfaat\r\n\r\nTerdapat Senter di gagang tongkat\r\nMembantu mendapatkan ritme konsisten pendakian\r\nMenjaga keseimbangan sangat membantu saat kelelahan\r\nMembantu mendorong tubuh bergerak ke depan\r\nUjung tongkat dapat digunakan untuk memeriksa jalur trekking sebelum melangkah\r\nMenjaga keseimbangan tubuh saat berjalan ditempat yang licin\r\nMembantu mengurangi ketegangan tubuh\r\nBahan kuat dan awet\r\nTersedia warna Hitam Hijau Biru Merah\r\nPanjang minimum 54 cm\r\nPanjang maksimal 110 cm', 'list_rental/galeri6.jpg', 4),
(15, 'Matras camping', '20000', 'Kualitas lebih oke bahan matras jamin tidak bolong bolong dan tidak sobek\r\n\r\nReady list hitam\r\nMatras dengan berbagai macam list warna\r\nUkuran 60cm x 200cm', 'list_rental/galeri8.jpg', 4),
(16, 'Tas carrier 45Lt', '40000', 'Carrier 45 Liter\r\nBerkapasitas 45 Liter carrier yang nyaman di gunakan meski diisi dengan beban yang berat juga dilengkapi dengan busa yang tebal\r\n\r\nSpesifikasi \r\nMaterial  cordura\r\nDimensi  29 cm x 22 cm x 67 cm\r\nBerat  1,5 Kg', 'list_rental/galeri9.jpg', 1),
(17, 'Tas carrier 65Lt', '45000', 'ready tas Carrier 65 lT\r\nukuran 32x25x70\r\n2saku kiri kanan\r\n1 saku depan 1 saku atas\r\ndan ruang utama\r\nbahan cordura d300\r\natau tali pinggang\r\nmuat barang banyak buat bepergian hiking traveling naik gunung dll', 'list_rental/tas_65lt.jpg', 1),
(18, 'Tas carrier 80Lt', '50000', 'Tas dibuat dengan bahan kualitas terbaik desain trendi serta kuat dan tahan lama\r\n\r\nDetail Produk\r\nUkuran  30X23X67 panjang x lebar x tinggi\r\nBahan Cordura\r\nWarna Olive\r\nKapasitas 80L\r\nRaincover tersedia', 'list_rental/tas_80lt.jpg', 1),
(19, 'Flysheet', '50000', 'Kali ini kami akan memperenalkan produk bernama lysheet Explore Gear Ia sangat berguna sebagai alas tenda dan pelindung dari hujan saat di luar ruangan \r\nTersedia juga dalam ukuran ada yang 2x2 Meter ada yang 3x3 Meter ada juga yang 4x3 Meter \r\nJahitannya sudah di lem, sehingga tahan air dan tidak rembes \r\nBahannya Polyester 210 T berlapis Milky', 'list_rental/galeri10.jpg', 2),
(20, 'Tenda ultralite 2p', '40000', 'Outer 15D Nylon Ripstop With PU (220×220x125)\r\nInner Halfmesh, Floor Nylon PU (200×120×110)\r\nGuyline\r\n\r\nKapasitas 2 Orang', 'list_rental/galeri12.jpg', 2),
(21, 'Nesting cooking set', '70000', 'Cooking set DS-308 paling lengkap\r\n\r\nDalam paket \r\n1 x Teko portable 0,8 liter\r\n1 x Wajan\r\n1 x Panci + tutup\r\n3 X mangkok mini (plastik)\r\n1 x sendok sayur (plastik)\r\n1 x sendok atau centong nasi (kayu)\r\n1 x tas jaring\r\n\r\nSpesifikasi \r\nBahan  alumunium anodized\r\nBahan aksesoris  plastik dan kayu', 'list_rental/galeri11.jpg', 4),
(22, 'Tenda double layer 10 orang', '250000', 'Chanodug FX8950 ultralarge 8-10 orang 2 kamar tidur 1 ruang tamu 2 lapisan tahan air pesta keluarga berkemah di luar ruangan tenda\r\n\r\ntenda rekomended camping family\r\n\r\nBahan bawah 190DPU2000MM Oxford\r\nBahan Rainfly 190T Disi PU2000MM\r\nIndeks tahan air Rainfly 2000mm (termasuk) -3000mm (inklusif)\r\nIndeks tahan air bawah Lebih dari 3000MM\r\nUkuran 550 * 300 * 198CM\r\nBerat 8.7kg\r\nTiang: tiang FRP', 'list_rental/galeri21.jpg', 2),
(23, 'Tenda double layer 6 orang', '200000', 'Tenda BNiX 021\r\nKap 6 Orang\r\nDouble Layer\r\nFrame Fyber\r\nAlas terpal Halus\r\nBahan 180T Polyester PA1000mm Coated\r\nwarna \r\nHijau muda\r\nHijau Tua\r\nBiru\r\nOrange\r\nLoreng', 'list_rental/galeri20.jpg', 2),
(24, 'Tenda double layer 4 orang', '150000', 'Spesifikasi Produk \r\nUkuran Tenda  200 x 200 x 135 cm\r\nKapasitas 4 samapi 5 Orang\r\nBahan Tenda  Parasut Waterproof\r\nBahan Alas  Terpal\r\nBahan Frame  Fiber\r\nTerdapat Jendela dengan penutup\r\nDilengkapi Kelambu anti nyamuk dan serangga pada pintu dan jendela\r\nDilengkapi 2 set Tiang Tenda dan 4 Baut atau pasak\r\nDilengkapi Tas Tenda berukuran 60 x 16 x 7 cm\r\nBerat total sekitar 1  8kg', 'list_rental/galeri22.jpg', 2),
(25, 'cobaa', '100000', 'cvvv', 'list_rental/galeri3_ZEK0yVU.jpg', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `dt_about`
--
ALTER TABLE `dt_about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_blog`
--
ALTER TABLE `dt_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dt_blog_id_kategori_id_9336933c_fk_dt_kategori_blog_id_kategori` (`id_kategori_id`);

--
-- Indexes for table `dt_contact`
--
ALTER TABLE `dt_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_gallery`
--
ALTER TABLE `dt_gallery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_kategori`
--
ALTER TABLE `dt_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `dt_kategori_blog`
--
ALTER TABLE `dt_kategori_blog`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `dt_komentarblog`
--
ALTER TABLE `dt_komentarblog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_komentarlist`
--
ALTER TABLE `dt_komentarlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dt_list`
--
ALTER TABLE `dt_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dt_list_id_kategori_id_7cdf2bc9_fk_dt_kategori_id_kategori` (`id_kategori_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `dt_about`
--
ALTER TABLE `dt_about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dt_blog`
--
ALTER TABLE `dt_blog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `dt_contact`
--
ALTER TABLE `dt_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `dt_gallery`
--
ALTER TABLE `dt_gallery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `dt_kategori`
--
ALTER TABLE `dt_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dt_kategori_blog`
--
ALTER TABLE `dt_kategori_blog`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dt_komentarblog`
--
ALTER TABLE `dt_komentarblog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `dt_komentarlist`
--
ALTER TABLE `dt_komentarlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `dt_list`
--
ALTER TABLE `dt_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `dt_blog`
--
ALTER TABLE `dt_blog`
  ADD CONSTRAINT `dt_blog_id_kategori_id_9336933c_fk_dt_kategori_blog_id_kategori` FOREIGN KEY (`id_kategori_id`) REFERENCES `dt_kategori_blog` (`id_kategori`);

--
-- Constraints for table `dt_list`
--
ALTER TABLE `dt_list`
  ADD CONSTRAINT `dt_list_id_kategori_id_7cdf2bc9_fk_dt_kategori_id_kategori` FOREIGN KEY (`id_kategori_id`) REFERENCES `dt_kategori` (`id_kategori`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
