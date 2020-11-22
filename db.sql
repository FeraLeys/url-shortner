-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Nov 2020 pada 07.26
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `urlshortner`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `uri`
--

CREATE TABLE `uri` (
  `id` int(11) NOT NULL,
  `url` varchar(300) NOT NULL,
  `short_url` varchar(100) NOT NULL,
  `hit` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `uri`
--

INSERT INTO `uri` (`id`, `url`, `short_url`, `hit`, `created_at`) VALUES
(75, 'https://medium.com/@mhdnauvalazhar/tutorial-membuat-tool-shorten-url-dengan-php-mysql-df05309e539e', 'f30a790', 0, '2020-10-16 02:27:22'),
(76, 'https://medium.com/@mhdnauvalazhar/tutorial-membuat-tool-shorten-url-dengan-php-mysql-df05309e539e', 'fsa1f1e', 0, '2020-10-16 02:29:53'),
(77, 'http://localhost/Url_Shortener.com/fsa1f1e', '4mf502a', 0, '2020-10-16 02:31:17'),
(78, 'http://localhost/Url_Shortener.com/4mf502a', 'ni86713', 0, '2020-10-16 02:33:42'),
(79, 'https://medium.com/@mhdnauvalazhar/tutorial-membuat-tool-shorten-url-dengan-php-mysql-df05309e539e', 'hu87673', 0, '2020-10-16 02:37:59'),
(80, 'http://localhost/phpmyadmin/sql.php?db=urlshortner', 'n215dbd', 3, '2020-10-16 02:41:48'),
(81, 'https://zidnafadla.github.io/', 'xrabd59', 1, '2020-10-16 02:42:58'),
(82, 'https://web.facebook.com/colorlib?_rdc=1', 'gme743c', 1, '2020-10-16 02:43:58'),
(83, 'https://medium.com/@mhdnauvalazhar/tutorial-membuat-tool-shorten-url-dengan-php-mysql-df05309e539e', 'tf49ee4', 3, '2020-10-16 02:50:42'),
(84, 'http://localhost/Url_Shortener.com/tf49ee4', 'rf57dae', 2, '2020-10-16 02:50:42'),
(85, 'http://localhost/Url_Shortener.com/rf57dae', '7l5d31e', 2, '2020-10-16 02:50:42'),
(86, 'http://localhost/Url_Shortener.com/7l5d31e', '6i6fb8d', 1, '2020-10-16 02:50:42'),
(87, 'http://localhost/Url_Shortener.com/6i6fb8d', 'gc7616b', 1, '2020-10-16 02:50:42'),
(88, 'http://localhost/Url_Shortener.com/gc7616b', '2u7d262', 1, '2020-10-16 02:50:42'),
(89, 'zczchttp://localhost/Url_Shortener.com/2u7d262', 'yt7eb69', 4, '2020-10-16 02:55:39'),
(90, 'http://localhost/phpmyadmin/sql.php?db=urlshortner', 'qabc0b6', 1, '2020-10-16 02:56:01'),
(91, 'http://localhost/Url_Shortener.com/', 'fw42e46', 1, '2020-11-11 00:24:47'),
(92, 'https://www.php.net/manual/en/function.header.php', 'uq5ac32', 1, '2020-11-11 00:25:07');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `uri`
--
ALTER TABLE `uri`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `uri`
--
ALTER TABLE `uri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
