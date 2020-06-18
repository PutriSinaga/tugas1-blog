-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jun 2020 pada 19.57
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uts_blog`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `album`
--

CREATE TABLE `album` (
  `album_id` int(11) NOT NULL,
  `album_pho_id` int(11) NOT NULL,
  `album_name` varchar(100) DEFAULT NULL,
  `album_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `album`
--

INSERT INTO `album` (`album_id`, `album_pho_id`, `album_name`, `album_text`) VALUES
(1, 3, 'Beautiful Memory', 'Such a Nice day'),
(2, 2, 'Blue Night', 'The moon looks so beautiful'),
(3, 1, 'Fight!', 'Selamat Hari Kemerdekaan Indonesia'),
(4, 4, 'Taiyou ( Matahari )', 'Kirei ( Cantik)');

-- --------------------------------------------------------

--
-- Struktur dari tabel `category`
--

CREATE TABLE `category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(100) DEFAULT NULL,
  `cat_text` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `category`
--

INSERT INTO `category` (`cat_id`, `cat_name`, `cat_text`) VALUES
(1, 'Yearly', 'Acara Tahunan'),
(2, 'Monthly', 'Acara Bulanan'),
(3, 'Weekly', 'Acara Tiap Minggu'),
(4, 'Everyday Things', 'Hal yang dapat dilakukan sehari-hari');

-- --------------------------------------------------------

--
-- Struktur dari tabel `photos`
--

CREATE TABLE `photos` (
  `pho_id` int(11) NOT NULL,
  `pho_post_id` int(11) NOT NULL,
  `pho_date` date DEFAULT NULL,
  `pho_tittle` varchar(100) DEFAULT NULL,
  `pho_text` varchar(100) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `photos`
--

INSERT INTO `photos` (`pho_id`, `pho_post_id`, `pho_date`, `pho_tittle`, `pho_text`, `gambar`) VALUES
(1, 1, '2020-08-17', '17 Agustusan', 'Hari ini adalah hari kemerdekaan Indonesia', 'independence day.jpg'),
(2, 3, '2020-06-21', 'Nice Night', 'Its such a nice night, the moon is so blue', 'vlcsnap-2020-06-17-11h02m00s838.png'),
(3, 4, '2020-02-14', 'Beautiful day', 'The flower look so beautiful especially today', 'vlcsnap-2020-05-08-21h44m54s104.png'),
(4, 5, '2020-06-22', 'Matahari', 'look at the sunset', '1920x1080_silhouette-night-starry-sky-girl-anime.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `post_cat_id` int(11) NOT NULL,
  `post_date` date DEFAULT NULL,
  `post_slug` varchar(25) DEFAULT NULL,
  `post_tittle` varchar(100) DEFAULT NULL,
  `post_text` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `post`
--

INSERT INTO `post` (`post_id`, `post_cat_id`, `post_date`, `post_slug`, `post_tittle`, `post_text`) VALUES
(1, 1, '2020-08-17', 'independence-day', 'Independence Day 2020', 'Hari Kemerdekaan Indonesia'),
(2, 1, '2020-04-16', 'hari-jadi-kopassus', 'Hari Jadi Kopassus', 'Hari terbentuknya Komandan Pasukan Khusus Indonesia'),
(3, 3, '2020-06-21', 'weekend', 'Sunday', 'Hari untuk berlibur dan beristirahat'),
(4, 1, '2020-02-14', 'valentine-day', 'Valentine Day', 'Hari apresiasi yang biasa digunakan untuk memberi coklat untuk orang yang disukai'),
(5, 4, '2020-06-20', 'have-nice-day', 'Have Nice Day', 'For your nice day');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_nama_lengkap` varchar(100) NOT NULL,
  `user_role` char(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `username`, `password`, `user_nama_lengkap`, `user_role`) VALUES
(1, 'Maliha', '$2y$10$4QVSvBIJm3o1lVG4Dmsv/eexKzyH/eakpNYI.wI2TGhazUybZyKQC', 'Maliha Sinaga', '1'),
(2, 'Reni', '$2y$10$NgCrTvXQkeQjhWu2dhKTCORjmtDXV4F/tPOVoF.9aWJAjdmPUeHGy', 'Reni Yunita', '2'),
(3, 'Tamara', '$2y$10$R5SHxLgnEotog594rGCLN.b8.gLFNsGvGpSwnCcKcFQznzP6gK9G2', 'Tamara Putri', '2');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pho_id` (`album_pho_id`);

--
-- Indeks untuk tabel `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indeks untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`pho_id`),
  ADD KEY `pho_post_id` (`pho_post_id`);

--
-- Indeks untuk tabel `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_cat_id` (`post_cat_id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `album`
--
ALTER TABLE `album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `category`
--
ALTER TABLE `category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `photos`
--
ALTER TABLE `photos`
  MODIFY `pho_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `album`
--
ALTER TABLE `album`
  ADD CONSTRAINT `album_ibfk_1` FOREIGN KEY (`album_pho_id`) REFERENCES `photos` (`pho_id`);

--
-- Ketidakleluasaan untuk tabel `photos`
--
ALTER TABLE `photos`
  ADD CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`pho_post_id`) REFERENCES `post` (`post_id`);

--
-- Ketidakleluasaan untuk tabel `post`
--
ALTER TABLE `post`
  ADD CONSTRAINT `post_ibfk_1` FOREIGN KEY (`post_cat_id`) REFERENCES `category` (`cat_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
