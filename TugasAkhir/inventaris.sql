-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 10 Jul 2021 pada 15.46
-- Versi server: 10.4.6-MariaDB
-- Versi PHP: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `inventaris`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `keluar`
--

CREATE TABLE `keluar` (
  `idkeluar` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `penerima` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `keluar`
--

INSERT INTO `keluar` (`idkeluar`, `idbarang`, `tanggal`, `penerima`, `qty`) VALUES
(1, 1, '2021-05-19 08:00:22', 'pembeli', 200),
(2, 3, '2021-05-19 14:04:16', 'toko kamu', 3),
(3, 19, '2021-06-13 15:12:29', 'adu', 100),
(4, 22, '2021-06-13 15:41:51', 'toko', 200),
(28, 31, '2021-06-14 04:15:37', 'ryan', 10),
(31, 32, '2021-06-14 04:19:38', 'andre', 0),
(35, 33, '2021-06-14 05:08:25', 'kia', 15),
(38, 33, '2021-06-14 05:34:19', 'test1', 10),
(42, 38, '2021-06-16 17:28:32', 'toko', 50),
(43, 38, '2021-06-16 17:33:01', 'toko', 20),
(44, 38, '2021-07-09 01:40:39', 'Toko Andi', 80);

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `iduser` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`iduser`, `email`, `password`) VALUES
(1, 'andreginting@yahoo.com', 'andre'),
(5, 'andre@google.com', 'andre'),
(7, 'saya@gmail.com', 'saya');

-- --------------------------------------------------------

--
-- Struktur dari tabel `masuk`
--

CREATE TABLE `masuk` (
  `idmasuk` int(11) NOT NULL,
  `idbarang` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT current_timestamp(),
  `keterangan` varchar(25) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `masuk`
--

INSERT INTO `masuk` (`idmasuk`, `idbarang`, `tanggal`, `keterangan`, `qty`) VALUES
(1, 1, '2021-05-19 07:46:37', 'munarman', 0),
(2, 3, '2021-05-19 14:03:49', 'admin', 300),
(3, 5, '2021-06-13 03:56:44', 'andre', 500),
(4, 6, '2021-06-13 04:13:50', 'poniem', 100),
(5, 7, '2021-06-13 04:14:46', 'akila', 300),
(6, 7, '2021-06-13 04:15:09', 'akila', 400),
(7, 6, '2021-06-13 04:26:25', 'saya', 900),
(8, 6, '2021-06-13 04:29:18', 'atuk', 300),
(9, 8, '2021-06-13 04:30:30', 'dui', 100),
(10, 9, '2021-06-13 04:52:42', 'andre', 100),
(11, 10, '2021-06-13 04:59:30', 'badi', 200),
(12, 12, '2021-06-13 05:06:46', 'andre', 300),
(13, 13, '2021-06-13 05:28:55', 'saya', 800),
(14, 14, '2021-06-13 05:53:47', 'andre', 150),
(15, 15, '2021-06-13 05:57:11', 'andre', 150),
(16, 16, '2021-06-13 06:09:04', 'andre', 150),
(17, 17, '2021-06-13 06:15:08', 'andre', 100),
(23, 19, '2021-06-13 15:09:33', 'adit', 400),
(24, 21, '2021-06-13 15:40:45', 'andre', 200),
(25, 23, '2021-06-13 15:41:02', 'akila', 100),
(26, 23, '2021-06-13 15:46:29', 'poniem', 200000),
(27, 23, '2021-06-13 15:47:59', 'saya', 200000),
(28, 21, '2021-06-13 15:50:01', 'poniem', 3000),
(33, 27, '2021-06-13 16:19:12', 'te', 20000),
(34, 28, '2021-06-13 16:35:55', 'ze', 30000),
(37, 33, '2021-06-14 05:07:52', 'anji', 20),
(40, 33, '2021-06-14 21:20:15', 'kjasd', 56),
(43, 38, '2021-06-16 17:26:49', 'toko', 50),
(44, 39, '2021-06-16 17:28:13', 'andre', 30),
(46, 38, '2021-07-09 01:41:01', 'Toko Melati', 20);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stock`
--

CREATE TABLE `stock` (
  `idbarang` int(11) NOT NULL,
  `namabarang` varchar(25) NOT NULL,
  `deskripsi` varchar(25) NOT NULL,
  `stock` int(11) NOT NULL,
  `image` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `stock`
--

INSERT INTO `stock` (`idbarang`, `namabarang`, `deskripsi`, `stock`, `image`) VALUES
(38, 'Mesin Cuci', 'Sharp 2 tabung', 20, ''),
(40, 'Kulkas', 'Panasonic 2 pintu', 150, ''),
(41, 'kompor gas', 'rinnai', 50, ''),
(42, 'laptop', 'rog', 20, ''),
(43, 'Iphone ', 'Iphone 12 Pro', 19, ''),
(44, 'Tv Samsung', '42 inch', 60, '');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `keluar`
--
ALTER TABLE `keluar`
  ADD PRIMARY KEY (`idkeluar`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`iduser`);

--
-- Indeks untuk tabel `masuk`
--
ALTER TABLE `masuk`
  ADD PRIMARY KEY (`idmasuk`);

--
-- Indeks untuk tabel `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`idbarang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `keluar`
--
ALTER TABLE `keluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT untuk tabel `login`
--
ALTER TABLE `login`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `masuk`
--
ALTER TABLE `masuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `stock`
--
ALTER TABLE `stock`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
