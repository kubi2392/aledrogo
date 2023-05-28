-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 26 Maj 2023, 12:23
-- Wersja serwera: 10.1.36-MariaDB
-- Wersja PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `aledrogo`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dostawca`
--

CREATE TABLE `dostawca` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kraju` int(10) UNSIGNED DEFAULT NULL,
  `kategoria_produktuw` varchar(50) DEFAULT NULL,
  `ilosc_produktow` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `nr_tel` varchar(12) DEFAULT NULL,
  `lokacja` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kraje`
--

CREATE TABLE `kraje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `skrut` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dostawca` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `opis` text,
  `zdięcie` varchar(100) DEFAULT NULL,
  `kategoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `tranzakcje`
--

CREATE TABLE `tranzakcje` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_klienta` int(10) UNSIGNED NOT NULL,
  `id_produktu` int(10) UNSIGNED NOT NULL,
  `ilosc` int(11) DEFAULT NULL,
  `dostarczono` tinyint(1) DEFAULT NULL,
  `DATA_tranzakcji` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `kraje`
--
ALTER TABLE `kraje`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `produkty`
--
ALTER TABLE `produkty`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `tranzakcje`
--
ALTER TABLE `tranzakcje`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `kraje`
--
ALTER TABLE `kraje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT dla tabeli `tranzakcje`
--
ALTER TABLE `tranzakcje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
