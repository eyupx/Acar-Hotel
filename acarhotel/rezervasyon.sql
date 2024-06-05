-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1
-- Üretim Zamanı: 26 May 2024, 22:48:41
-- Sunucu sürümü: 10.4.32-MariaDB
-- PHP Sürümü: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `otel`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `rezervasyon`
--

CREATE TABLE `rezervasyon` (
  `rezervasyon_id` int(11) NOT NULL,
  `rezervasyon_ad` text NOT NULL,
  `rezervasyon_tip` text NOT NULL,
  `rezervasyon_tarih` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `rezervasyon`
--

INSERT INTO `rezervasyon` (`rezervasyon_id`, `rezervasyon_ad`, `rezervasyon_tip`, `rezervasyon_tarih`) VALUES
(1, 'eyüp ensar acar', 'triplex', '2024-05-26 19:44:14'),
(2, 'mehmet kemal', 'suit', '2024-05-26 19:44:32'),
(3, 'deneme', 'triple', '2024-05-26 20:26:44'),
(4, 'mahmut tahir', 'twin', '2024-05-26 20:27:08'),
(5, 'Ali Gel', 'klasik', '2024-05-26 20:29:19'),
(6, 'Ali Koç', 'triple', '2024-05-26 20:30:22'),
(7, 'Mehmet Yaşar', 'twin', '2024-05-26 20:32:27'),
(8, '', 'twin', '2024-05-26 20:33:49');

--
-- Dökümü yapılmış tablolar için indeksler
--

--
-- Tablo için indeksler `rezervasyon`
--
ALTER TABLE `rezervasyon`
  ADD PRIMARY KEY (`rezervasyon_id`);

--
-- Dökümü yapılmış tablolar için AUTO_INCREMENT değeri
--

--
-- Tablo için AUTO_INCREMENT değeri `rezervasyon`
--
ALTER TABLE `rezervasyon`
  MODIFY `rezervasyon_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
