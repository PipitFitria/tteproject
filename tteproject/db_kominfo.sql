-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 14, 2022 at 02:23 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db.kominfo`
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
  `id` bigint(20) NOT NULL,
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
(25, 'Can add pegawai', 7, 'add_pegawai'),
(26, 'Can change pegawai', 7, 'change_pegawai'),
(27, 'Can delete pegawai', 7, 'delete_pegawai'),
(28, 'Can view pegawai', 7, 'view_pegawai'),
(29, 'Can add pengguna', 8, 'add_pengguna'),
(30, 'Can change pengguna', 8, 'change_pengguna'),
(31, 'Can delete pengguna', 8, 'delete_pengguna'),
(32, 'Can view pengguna', 8, 'view_pengguna');

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
(1, 'pbkdf2_sha256$390000$sHw424x7Eouwo8OVKenmdP$liVLgZI6YemnIyHz0MYSKLJkQz7w4jro2L+gQ/aw4YY=', '2022-12-14 00:39:29.658164', 1, 'pipit', '', '', 'phipitfitria02@gmail.com', 1, 1, '2022-12-12 05:27:57.262995'),
(2, 'pbkdf2_sha256$390000$4Sil24h7KzRlvxAuyLVBQU$H4foEP5ec9opjWSlPjrGYcRfaTJBkiqPA4hw0gfNhFg=', '2022-12-12 06:14:31.345525', 0, 'pipit1', '', '', 'phipitfitria02@gmail.com', 0, 1, '2022-12-12 06:13:21.042430');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
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
(1, '2022-12-12 05:53:29.052075', '1', 'Pipit Ayu Fitriah', 1, '[{\"added\": {}}]', 7, 1),
(2, '2022-12-13 07:42:35.892641', '2', 'Yudhie Agung Prihatno, S.STP.M.Si', 1, '[{\"added\": {}}]', 7, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'users', 'pegawai'),
(8, 'users', 'pengguna');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-12-12 01:54:40.351497'),
(2, 'auth', '0001_initial', '2022-12-12 01:54:40.778964'),
(3, 'admin', '0001_initial', '2022-12-12 01:54:40.883477'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-12-12 01:54:40.896548'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-12-12 01:54:40.906319'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-12-12 01:54:40.966236'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-12-12 01:54:41.003485'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-12-12 01:54:41.028637'),
(9, 'auth', '0004_alter_user_username_opts', '2022-12-12 01:54:41.036570'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-12-12 01:54:41.081392'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-12-12 01:54:41.087565'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-12-12 01:54:41.098674'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-12-12 01:54:41.116698'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-12-12 01:54:41.138749'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-12-12 01:54:41.157937'),
(16, 'auth', '0011_update_proxy_permissions', '2022-12-12 01:54:41.170674'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-12-12 01:54:41.189958'),
(18, 'sessions', '0001_initial', '2022-12-12 01:54:41.225280'),
(19, 'users', '0001_initial', '2022-12-12 05:46:27.200597');

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
('0d9c3yrc2sn056ix4g679m6cnzy7rqo4', '.eJxVjMsOwiAUBf-FtSHApVBcuvcbyH2ArZo2Ke3K-O_apAvdnpk5L5VxW4e8tbLkUdRZWXX63Qj5UaYdyB2n26x5ntZlJL0r-qBNX2cpz8vh_h0M2IZvjRLFk0-WIXkhVwP6rpMSmEofjTGu1golCAKkno04DsQQPfQENlj1_gD95Dgq:1p5Fo1:w841YZBBU7DcIHGbZBAcUssfaqe1eoC7jZURYAe8XnA', '2022-12-28 00:39:29.687209'),
('3rasqjr0b0cfm4dcd2guhf7imtxrf353', '.eJxVjMsOwiAUBf-FtSHApVBcuvcbyH2ArZo2Ke3K-O_apAvdnpk5L5VxW4e8tbLkUdRZWXX63Qj5UaYdyB2n26x5ntZlJL0r-qBNX2cpz8vh_h0M2IZvjRLFk0-WIXkhVwP6rpMSmEofjTGu1golCAKkno04DsQQPfQENlj1_gD95Dgq:1p4wyK:N7ywfEKXX3kGNorwXgH1N_ovI62DOC1y2kXddLDy4qg', '2022-12-27 04:32:52.177168'),
('liqiig3cljzblxh8c07z0h3mydjak1yz', '.eJxVjMsOwiAUBf-FtSHApVBcuvcbyH2ArZo2Ke3K-O_apAvdnpk5L5VxW4e8tbLkUdRZWXX63Qj5UaYdyB2n26x5ntZlJL0r-qBNX2cpz8vh_h0M2IZvjRLFk0-WIXkhVwP6rpMSmEofjTGu1golCAKkno04DsQQPfQENlj1_gD95Dgq:1p4wte:3YoQvEEhw64yvh-90mBVxGK7T4DQyX0LRQHxnxyhu-4', '2022-12-27 04:28:02.390324'),
('me2kjim51jlq4g17i7m0o8vx4psv80i4', '.eJxVjMsOwiAUBf-FtSHApVBcuvcbyH2ArZo2Ke3K-O_apAvdnpk5L5VxW4e8tbLkUdRZWXX63Qj5UaYdyB2n26x5ntZlJL0r-qBNX2cpz8vh_h0M2IZvjRLFk0-WIXkhVwP6rpMSmEofjTGu1golCAKkno04DsQQPfQENlj1_gD95Dgq:1p4wiz:Qtc2s6sCOt3ZJmmt9A2mKUKSSJsrkxFNKWdKoyblPeM', '2022-12-27 04:17:01.901282'),
('vret29t9eo6bc28i1oxpq8l6cd0gdit3', '.eJxVjMsOwiAUBf-FtSHApVBcuvcbyH2ArZo2Ke3K-O_apAvdnpk5L5VxW4e8tbLkUdRZWXX63Qj5UaYdyB2n26x5ntZlJL0r-qBNX2cpz8vh_h0M2IZvjRLFk0-WIXkhVwP6rpMSmEofjTGu1golCAKkno04DsQQPfQENlj1_gD95Dgq:1p4yZ2:1cNbnnwYZQehBe4HdcO5KFU5TNlXIjglMZONf9BcFAg', '2022-12-27 06:14:52.076398');

-- --------------------------------------------------------

--
-- Table structure for table `users_pegawai`
--

CREATE TABLE `users_pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `nik` varchar(16) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `provinsi` varchar(10) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `organisasi` varchar(100) NOT NULL,
  `organisasi_unit` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `certif` varchar(10) NOT NULL,
  `status` varchar(100) NOT NULL,
  `type_certif` varchar(100) NOT NULL,
  `status_data` varchar(10) NOT NULL,
  `tanggal_pengajuan` date NOT NULL,
  `tanggal_terbit` date NOT NULL,
  `status_pegawai` varchar(10) NOT NULL,
  `dokumen_pendukung` varchar(100) NOT NULL,
  `petugas` varchar(100) NOT NULL,
  `verifikator` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_pegawai`
--

INSERT INTO `users_pegawai` (`id`, `nama`, `email`, `nik`, `nip`, `phone`, `provinsi`, `kota`, `organisasi`, `organisasi_unit`, `jabatan`, `certif`, `status`, `type_certif`, `status_data`, `tanggal_pengajuan`, `tanggal_terbit`, `status_pegawai`, `dokumen_pendukung`, `petugas`, `verifikator`) VALUES
(1, 'Pipit Ayu Fitriah', 'phipitfitria02@gmail.com', '1921345692930049', '192839384947392648', '083111111111', 'jateng', 'Purworejo', 'pemerintahankabpurworejo', 'inspektorat', 'inspektur', 'ISSUE', 'update', 'besign', 'aktif', '2022-11-30', '2022-12-05', 'aktif', 'upload/login.png', 'Eko Ari', 'Ari Eko'),
(2, 'Yudhie Agung Prihatno, S.STP.M.Si', 'yudhie@gmail.com', '1111111111111111', '111111111111111111', '083333333333', 'jateng', 'Purworejo', 'pemerintahankabpurworejo', 'dinasdaerah', 'kadinkominfostasandi', 'ISSUE', 'update', 'besign', 'aktif', '2022-12-01', '2022-12-12', 'aktif', 'upload/Week_1A_-_Pengantar_Pengujian_Perangkat_Lunak.pptx', 'Eko Ari', 'Ari Eko');

-- --------------------------------------------------------

--
-- Table structure for table `users_pengguna`
--

CREATE TABLE `users_pengguna` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
-- Indexes for table `users_pegawai`
--
ALTER TABLE `users_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_pengguna`
--
ALTER TABLE `users_pengguna`
  ADD PRIMARY KEY (`id`);

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
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users_pegawai`
--
ALTER TABLE `users_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_pengguna`
--
ALTER TABLE `users_pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
