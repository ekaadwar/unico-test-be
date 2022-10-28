-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 28 Okt 2022 pada 08.41
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unico`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'user@mail.com', '$2b$10$lHuWYc4AlfRWBgzZAnwMxOHJYgTSw6uvtFzae.5XDWYEqdopLabne', 'Herman', 'Tony', '2022-10-25 21:04:43', NULL),
(2, 'user2@mail.com', '$2b$10$HQqjMSB6jTKyM/raKOfr6enXq49H58/XIDWftVDKd4mZC.PnzZBa2', 'Agus', 'Priyono', '2022-10-25 23:15:51', NULL),
(3, 'user3@mail.com', '$2b$10$O79enQVypDvhJJvhl07EeeYKLAoiMpws9vl4DAzJ2GRWw/LIgAkZW', 'Chris', 'Redfield', '2022-10-25 23:16:38', NULL),
(4, 'user3@mail.com', '$2b$10$t6XUNDnIhCTISSwT51yD.uiTykQfqBGLe5dmT.EmUDrUlYjEH6zD.', 'Leon', 'Scot Kennedy', '2022-10-25 23:16:51', NULL),
(5, 'user4@mail.com', '$2b$10$fs.IJ/n37L0YLsUSLubJCeXUH5oWtaJpbN35NMr1Q80FMC0abl4HS', 'Albert', 'Wesker', '2022-10-25 23:17:25', NULL),
(6, 'adiwijaya@mail.com', '$2b$10$S1BpwfLkwAVV8JZ6tHbnkO0HnleWxJ.RW5bCwL5OZgCINOdDDKZlq', 'undefined', 'undefined', '2022-10-28 01:46:19', NULL),
(7, 'robipurba@mail.com', '$2b$10$8L0DVp5t3EIcj1GSviKsGO1gvdkzAP4PDGqhoFthqweNzHE7sxiEy', 'Robi', 'Purba', '2022-10-28 01:49:51', NULL),
(8, 'alexferguson@mail.com', '$2b$10$0k0A.fdVCfU9.0rJhCkL0OZv4fbDQ.0dGs6Rcrj5RiQVX9CwpwXly', 'alex', 'ferguson', '2022-10-28 03:11:03', NULL),
(9, 'alexiainggrid@mail.com', '$2b$10$0F0BofhKoulKGda/Cf2gqe8mTInqHyhy/pNGp5ncD.Qy6EG4josqO', 'Alexia', 'Inggrid', '2022-10-28 03:37:58', NULL),
(10, 'ayuazura@mail.com', '$2b$10$91Xwz2nm6pkwGqjfzeVP6ub88c4BK8oo5Mu2JbLL2wZjEyxglSGxW', 'ayu', 'azura', '2022-10-28 03:39:21', NULL),
(11, 'larasati@mail.com', '$2b$10$QHaTBBD/t3Ro49JBdGa9wOnESm2nyYAuWx0ANh4.u.pMkBMTDmc3q', 'lara', 'sati', '2022-10-28 06:26:13', NULL),
(12, 'adelara@mail.com', '$2b$10$14It8c2Mz7858L7.V6zufONGfPB1EPrY3bgx5mOOUlic1.qx66SSS', 'ade', 'lara', '2022-10-28 06:29:13', NULL),
(13, 'tiaraeffendi@mail.com', '$2b$10$AtI2CcH5G5MG2Ed6mlqzQOxokqIRwhSE/eury/8B8F2RSyjN7m82q', 'Tiara', 'Effendi', '2022-10-28 06:39:55', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
