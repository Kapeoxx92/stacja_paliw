-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Lis 22, 2024 at 09:25 AM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `stacja paliw`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `adresy`
--

CREATE TABLE `adresy` (
  `id` int(11) NOT NULL,
  `miasto` varchar(50) DEFAULT NULL,
  `ulica` varchar(50) DEFAULT NULL,
  `numer` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adresy`
--

INSERT INTO `adresy` (`id`, `miasto`, `ulica`, `numer`) VALUES
(1, 'gdansk', 'ulica1', 1),
(2, 'sopot', 'ulica2', 2),
(3, 'warszawa', 'ulica3', 3),
(4, 'olsztyn', 'ulica4', 4);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stacje`
--

CREATE TABLE `stacje` (
  `id` int(11) NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `cena_paliwa` decimal(50,0) DEFAULT NULL,
  `adres` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stacje`
--

INSERT INTO `stacje` (`id`, `nazwa`, `cena_paliwa`, `adres`) VALUES
(1, 'nazwa1', 5, 1),
(2, 'nazwa2', 4, 2),
(3, 'nazwa3', 4, 2);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `adresy`
--
ALTER TABLE `adresy`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `stacje`
--
ALTER TABLE `stacje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `adres` (`adres`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stacje`
--
ALTER TABLE `stacje`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `stacje`
--
ALTER TABLE `stacje`
  ADD CONSTRAINT `adres` FOREIGN KEY (`adres`) REFERENCES `adresy` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
