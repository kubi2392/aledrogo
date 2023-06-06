-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 28 Maj 2023, 15:44
-- Wersja serwera: 10.4.27-MariaDB
-- Wersja PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `imie` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` text CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `dostawca`
--

INSERT INTO `dostawca` (`id`, `id_kraju`, `imie`, `nazwisko`) VALUES
(1, 4, 'Adam', 'Nowak'),
(2, 11, 'Katarzyna', 'Kowalska'),
(3, 6, 'Jan', 'Wiśniewski'),
(4, 18, 'Anna', 'Lewandowska'),
(5, 14, 'Piotr', 'Dąbrowski'),
(6, 2, 'Maria', 'Kowalczyk'),
(7, 7, 'Tomasz', 'Zieliński'),
(8, 16, 'Magdalena', 'Szymańska'),
(9, 8, 'Krzysztof', 'Woźniak'),
(10, 20, 'Barbara', 'Kaczmarek'),
(11, 3, 'Marek', 'Sikora'),
(12, 9, 'Agnieszka', 'Wojciechowska'),
(13, 12, 'Michał', 'Kwiatkowski'),
(14, 5, 'Joanna', 'Krawczyk'),
(15, 19, 'Robert', 'Pawlak'),
(16, 13, 'Ewa', 'Mazur'),
(17, 10, 'Tadeusz', 'Adamczyk'),
(18, 1, 'Patrycja', 'Król'),
(19, 17, 'Paweł', 'Jaworski'),
(20, 15, 'Dorota', 'Wróbel'),
(21, 4, 'Andrzej', 'Nowicki'),
(22, 11, 'Monika', 'Kwiatkowska'),
(23, 6, 'Artur', 'Witkowski'),
(24, 18, 'Małgorzata', 'Kucharska'),
(25, 14, 'Kamil', 'Wójcik'),
(26, 2, 'Natalia', 'Zając'),
(27, 7, 'Dariusz', 'Kwiatkowski'),
(28, 16, 'Weronika', 'Sikorska'),
(29, 8, 'Marcin', 'Kucharski'),
(30, 20, 'Alicja', 'Wójcik'),
(31, 3, 'Izabela', 'Zielińska'),
(32, 9, 'Kamil', 'Mazur'),
(33, 12, 'Aleksandra', 'Kaczmarek'),
(34, 5, 'Sebastian', 'Szymański'),
(35, 19, 'Marta', 'Krawczyk'),
(36, 13, 'Wojciech', 'Pawlak'),
(37, 10, 'Justyna', 'Mazur'),
(38, 1, 'Dawid', 'Adamczyk'),
(39, 17, 'Karolina', 'Król'),
(40, 15, 'Maciej', 'Jaworski'),
(41, 4, 'Paulina', 'Nowakowska'),
(42, 11, 'Damian', 'Kwiatkowski'),
(43, 6, 'Nikola', 'Witkowska'),
(44, 18, 'Martyna', 'Kucharczyk'),
(45, 14, 'Kacper', 'Wojciechowski'),
(46, 2, 'Aleksander', 'Zając'),
(47, 7, 'Karina', 'Kwiatkowska'),
(48, 16, 'Dominika', 'Sikora'),
(49, 8, 'Kornelia', 'Kucharska'),
(50, 20, 'Julia', 'Wróbel'),
(51, 3, 'Mikołaj', 'Nowicki'),
(52, 9, 'Magdalena', 'Kwiatkowska'),
(53, 12, 'Piotr', 'Witkowski'),
(54, 5, 'Agata', 'Zając'),
(55, 19, 'Filip', 'Kwiatkowski'),
(56, 13, 'Igor', 'Sikorski'),
(57, 10, 'Zuzanna', 'Kucharska'),
(58, 1, 'Natalia', 'Jaworska'),
(59, 17, 'Damian', 'Król'),
(60, 15, 'Martyna', 'Jaworska'),
(61, 4, 'Izabela', 'Nowakowska'),
(62, 11, 'Katarzyna', 'Kwiatkowska'),
(63, 6, 'Adam', 'Witkowski'),
(64, 18, 'Jan', 'Kucharczyk'),
(65, 14, 'Anna', 'Wojciechowska'),
(66, 2, 'Piotr', 'Zając'),
(67, 7, 'Maria', 'Kwiatkowska'),
(68, 16, 'Tomasz', 'Sikora'),
(69, 8, 'Magdalena', 'Kucharska'),
(70, 20, 'Krzysztof', 'Wróbel'),
(71, 3, 'Alicja', 'Nowicka'),
(72, 9, 'Marek', 'Kwiatkowski'),
(73, 12, 'Agata', 'Witkowska'),
(74, 5, 'Michał', 'Zając'),
(75, 19, 'Joanna', 'Kwiatkowska'),
(76, 13, 'Robert', 'Sikorski'),
(77, 10, 'Ewa', 'Kucharska'),
(78, 1, 'Tadeusz', 'Jaworski'),
(79, 17, 'Patrycja', 'Król'),
(80, 15, 'Katarzyna', 'Jaworska'),
(81, 4, 'Marek', 'Nowakowski'),
(82, 11, 'Ewa', 'Kwiatkowska'),
(83, 6, 'Artur', 'Witkowski'),
(84, 18, 'Małgorzata', 'Kucharczyk'),
(85, 14, 'Kamil', 'Wojciechowski'),
(86, 2, 'Natalia', 'Zając'),
(87, 7, 'Dariusz', 'Kwiatkowski'),
(88, 16, 'Weronika', 'Sikorska'),
(89, 8, 'Marcin', 'Kucharski'),
(90, 20, 'Alicja', 'Wójcik'),
(91, 3, 'Izabela', 'Zielińska'),
(92, 9, 'Kamil', 'Mazur'),
(93, 12, 'Aleksandra', 'Kaczmarek'),
(94, 5, 'Sebastian', 'Szymański'),
(95, 19, 'Marta', 'Krawczyk'),
(96, 13, 'Wojciech', 'Pawlak'),
(97, 10, 'Justyna', 'Mazur'),
(98, 1, 'Dawid', 'Adamczyk'),
(99, 17, 'Karolina', 'Król'),
(100, 15, 'Maciej', 'Jaworski');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `klient`
--

CREATE TABLE `klient` (
  `id` int(10) UNSIGNED NOT NULL,
  `imie` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `nazwisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `nr_tel` varchar(12) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `miasto` varchar(200) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `klient`
--

INSERT INTO `klient` (`id`, `imie`, `nazwisko`, `nr_tel`, `miasto`) VALUES
(1, 'Adam', 'Nowak', '600123456', 'Warszawa'),
(2, 'Anna', 'Kowalska', '505987654', 'Kraków'),
(3, 'Piotr', 'Lewandowski', '666555222', 'Gdańsk'),
(4, 'Maria', 'Wójcik', '123456789', 'Poznań'),
(5, 'Andrzej', 'Kaczmarek', '789987654', 'Wrocław'),
(6, 'Aleksandra', 'Jankowska', '602111222', 'Warszawa'),
(7, 'Michał', 'Wiśniewski', '500222333', 'Kraków'),
(8, 'Karolina', 'Nowicka', '666333444', 'Gdańsk'),
(9, 'Jan', 'Kowalczyk', '111444555', 'Poznań'),
(10, 'Magdalena', 'Szymańska', '789666777', 'Wrocław'),
(11, 'Krzysztof', 'Wójcik', '502888999', 'Warszawa'),
(12, 'Ewa', 'Lis', '501444555', 'Kraków'),
(13, 'Tomasz', 'Kowalski', '667555666', 'Gdańsk'),
(14, 'Natalia', 'Wiśniewska', '124555666', 'Poznań'),
(15, 'Marcin', 'Kaczmarek', '789777888', 'Wrocław'),
(16, 'Marta', 'Kowalczyk', '603222333', 'Warszawa'),
(17, 'Paweł', 'Szymański', '506333444', 'Kraków'),
(18, 'Monika', 'Jankowska', '666444555', 'Gdańsk'),
(19, 'Adam', 'Kowalski', '111555666', 'Poznań'),
(20, 'Katarzyna', 'Wójcik', '789888999', 'Wrocław'),
(21, 'Jan', 'Nowak', '504444555', 'Warszawa'),
(22, 'Anna', 'Kowalska', '666555666', 'Kraków'),
(23, 'Piotr', 'Lewandowski', '125888999', 'Gdańsk'),
(24, 'Maria', 'Wójcik', '789111222', 'Poznań'),
(25, 'Andrzej', 'Kaczmarek', '605222333', 'Wrocław'),
(26, 'Aleksandra', 'Jankowska', '507333444', 'Warszawa'),
(27, 'Michał', 'Wiśniewski', '666444555', 'Kraków'),
(28, 'Karolina', 'Nowicka', '126555666', 'Gdańsk'),
(29, 'Jan', 'Kowalczyk', '789777888', 'Poznań'),
(30, 'Magdalena', 'Szymańska', '607888999', 'Wrocław'),
(31, 'Krzysztof', 'Wójcik', '503333444', 'Warszawa'),
(32, 'Ewa', 'Lis', '666222333', 'Kraków'),
(33, 'Tomasz', 'Kowalski', '127444555', 'Gdańsk'),
(34, 'Natalia', 'Wiśniewska', '789555666', 'Poznań'),
(35, 'Marcin', 'Kaczmarek', '609777888', 'Wrocław'),
(36, 'Marta', 'Kowalczyk', '505222333', 'Warszawa'),
(37, 'Paweł', 'Szymański', '666333444', 'Kraków'),
(38, 'Monika', 'Jankowska', '128444555', 'Gdańsk'),
(39, 'Adam', 'Kowalski', '789666777', 'Poznań'),
(40, 'Katarzyna', 'Wójcik', '611888999', 'Wrocław'),
(41, 'Jan', 'Nowak', '502111222', 'Warszawa'),
(42, 'Anna', 'Kowalska', '666888999', 'Kraków'),
(43, 'Piotr', 'Lewandowski', '129333444', 'Gdańsk'),
(44, 'Maria', 'Wójcik', '789444555', 'Poznań'),
(45, 'Andrzej', 'Kaczmarek', '613777888', 'Wrocław'),
(46, 'Aleksandra', 'Jankowska', '504222333', 'Warszawa'),
(47, 'Michał', 'Wiśniewski', '666111222', 'Kraków'),
(48, 'Karolina', 'Nowicka', '130444555', 'Gdańsk'),
(49, 'Jan', 'Kowalczyk', '789555666', 'Poznań'),
(50, 'Magdalena', 'Szymańska', '615777888', 'Wrocław'),
(51, 'Krzysztof', 'Wójcik', '501222333', 'Warszawa'),
(52, 'Ewa', 'Lis', '666555666', 'Kraków'),
(53, 'Tomasz', 'Kowalski', '131777888', 'Gdańsk'),
(54, 'Natalia', 'Wiśniewska', '789777888', 'Poznań'),
(55, 'Marcin', 'Kaczmarek', '617222333', 'Wrocław'),
(56, 'Marta', 'Kowalczyk', '503333444', 'Warszawa'),
(57, 'Paweł', 'Szymański', '666222333', 'Kraków'),
(58, 'Monika', 'Jankowska', '132333444', 'Gdańsk'),
(59, 'Adam', 'Kowalski', '789888999', 'Poznań'),
(60, 'Katarzyna', 'Wójcik', '619111222', 'Wrocław'),
(61, 'Jan', 'Nowak', '500444555', 'Warszawa'),
(62, 'Anna', 'Kowalska', '666777888', 'Kraków'),
(63, 'Piotr', 'Lewandowski', '133555666', 'Gdańsk'),
(64, 'Maria', 'Wójcik', '789111222', 'Poznań'),
(65, 'Andrzej', 'Kaczmarek', '621444555', 'Wrocław'),
(66, 'Aleksandra', 'Jankowska', '502888999', 'Warszawa'),
(67, 'Michał', 'Wiśniewski', '666999000', 'Kraków'),
(68, 'Karolina', 'Nowicka', '134444555', 'Gdańsk'),
(69, 'Jan', 'Kowalczyk', '789222333', 'Poznań'),
(70, 'Magdalena', 'Szymańska', '623777888', 'Wrocław'),
(71, 'Krzysztof', 'Wójcik', '501444555', 'Warszawa'),
(72, 'Ewa', 'Lis', '666222333', 'Kraków'),
(73, 'Tomasz', 'Kowalski', '135777888', 'Gdańsk'),
(74, 'Natalia', 'Wiśniewska', '789333444', 'Poznań'),
(75, 'Marcin', 'Kaczmarek', '625222333', 'Wrocław'),
(76, 'Marta', 'Kowalczyk', '503444555', 'Warszawa'),
(77, 'Paweł', 'Szymański', '666111222', 'Kraków'),
(78, 'Monika', 'Jankowska', '136444555', 'Gdańsk'),
(79, 'Adam', 'Kowalski', '789555666', 'Poznań'),
(80, 'Katarzyna', 'Wójcik', '627888999', 'Wrocław'),
(81, 'Jan', 'Nowak', '504222333', 'Warszawa'),
(82, 'Anna', 'Kowalska', '666555666', 'Kraków'),
(83, 'Piotr', 'Lewandowski', '137888999', 'Gdańsk'),
(84, 'Maria', 'Wójcik', '789444555', 'Poznań'),
(85, 'Andrzej', 'Kaczmarek', '629777888', 'Wrocław'),
(86, 'Aleksandra', 'Jankowska', '505222333', 'Warszawa'),
(87, 'Michał', 'Wiśniewski', '666333444', 'Kraków'),
(88, 'Karolina', 'Nowicka', '138444555', 'Gdańsk'),
(89, 'Jan', 'Kowalczyk', '789666777', 'Poznań'),
(90, 'Magdalena', 'Szymańska', '631888999', 'Wrocław'),
(91, 'Krzysztof', 'Wójcik', '506333444', 'Warszawa'),
(92, 'Ewa', 'Lis', '666444555', 'Kraków'),
(93, 'Tomasz', 'Kowalski', '139777888', 'Gdańsk'),
(94, 'Natalia', 'Wiśniewska', '789777888', 'Poznań'),
(95, 'Marcin', 'Kaczmarek', '633222333', 'Wrocław'),
(96, 'Marta', 'Kowalczyk', '507444555', 'Warszawa'),
(97, 'Paweł', 'Szymański', '666555666', 'Kraków'),
(98, 'Monika', 'Jankowska', '140555666', 'Gdańsk'),
(99, 'Adam', 'Kowalski', '789888999', 'Poznań'),
(100, 'Katarzyna', 'Wójcik', '635777888', 'Wrocław');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kraje`
--

CREATE TABLE `kraje` (
  `id` int(10) UNSIGNED NOT NULL,
  `nazwa_kraju` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci DEFAULT NULL,
  `skrut` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `kraje`
--

INSERT INTO `kraje` (`id`, `nazwa_kraju`, `skrut`) VALUES
(1, 'Albania', 'AL'),
(2, 'Andora', 'AD'),
(3, 'Austria', 'AT'),
(4, 'Belgia', 'BE'),
(5, 'Bułgaria', 'BG'),
(6, 'Chorwacja', 'HR'),
(7, 'Cypr', 'CY'),
(8, 'Czechy', 'CZ'),
(9, 'Dania', 'DK'),
(10, 'Estonia', 'EE'),
(11, 'Finlandia', 'FI'),
(12, 'Francja', 'FR'),
(13, 'Grecja', 'GR'),
(14, 'Hiszpania', 'ES'),
(15, 'Holandia', 'NL'),
(16, 'Irlandia', 'IE'),
(17, 'Islandia', 'IS'),
(18, 'Włochy', 'IT'),
(19, 'Liechtenstein', 'LI'),
(20, 'Litwa', 'LT'),
(21, 'Luksemburg', 'LU'),
(22, 'Łotwa', 'LV'),
(23, 'Malta', 'MT'),
(24, 'Monako', 'MC'),
(25, 'Niemcy', 'DE'),
(26, 'Norwegia', 'NO'),
(27, 'Polska', 'PL'),
(28, 'Portugalia', 'PT'),
(29, 'Rumunia', 'RO'),
(30, 'Rosja', 'RU'),
(31, 'San Marino', 'SM'),
(32, 'Serbia', 'RS'),
(33, 'Słowacja', 'SK'),
(34, 'Słowenia', 'SI'),
(35, 'Szwajcaria', 'CH'),
(36, 'Szwecja', 'SE'),
(37, 'Turcja', 'TR'),
(38, 'Ukraina', 'UA'),
(39, 'Węgry', 'HU'),
(40, 'Wielka Brytania', 'GB'),
(41, 'Włochy', 'IT'),
(42, 'Zjednoczone Emiraty Arabskie', 'AE'),
(43, 'Gruzja', 'GE'),
(44, 'Białoruś', 'BY'),
(45, 'Mołdawia', 'MD'),
(46, 'Słowacja', 'SK');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `produkty`
--

CREATE TABLE `produkty` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_dostawca` int(10) UNSIGNED NOT NULL,
  `nazwa` varchar(50) DEFAULT NULL,
  `cena` decimal(10,2) DEFAULT NULL,
  `opis` text DEFAULT NULL,
  `zdiecie` varchar(100) DEFAULT NULL,
  `kategoria` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `produkty`
--

INSERT INTO `produkty` (`id`, `id_dostawca`, `nazwa`, `cena`, `opis`, `zdiecie`, `kategoria`) VALUES
(1, 1, 'abcd', '23.00', 'testowy', 'test.jpg', 'pies');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Zrzut danych tabeli `tranzakcje`
--

INSERT INTO `tranzakcje` (`id`, `id_klienta`, `id_produktu`, `ilosc`, `dostarczono`, `DATA_tranzakcji`) VALUES
(1, 90, 2, 3, 1, '2022-05-09'),
(2, 46, 18, 18, 0, '2021-11-29'),
(3, 40, 11, 4, 1, '2022-05-16'),
(4, 80, 25, 7, 0, '2021-08-10'),
(5, 23, 21, 16, 0, '2022-04-20'),
(6, 57, 18, 2, 1, '2022-01-09'),
(7, 61, 10, 18, 1, '2022-03-20'),
(8, 19, 14, 3, 0, '2021-09-20'),
(9, 8, 9, 1, 0, '2021-10-18'),
(10, 43, 15, 11, 1, '2021-08-23'),
(11, 37, 15, 9, 1, '2021-09-23'),
(12, 93, 3, 4, 1, '2021-09-28'),
(13, 52, 2, 11, 1, '2021-08-26'),
(14, 33, 25, 5, 1, '2022-01-05'),
(15, 79, 25, 7, 1, '2022-01-22'),
(16, 70, 8, 15, 0, '2022-04-23'),
(17, 60, 15, 10, 0, '2022-01-12'),
(18, 86, 12, 19, 1, '2022-05-08'),
(19, 99, 16, 16, 0, '2022-04-21'),
(20, 50, 9, 1, 0, '2021-11-08'),
(21, 33, 16, 7, 0, '2021-06-07'),
(22, 82, 9, 12, 0, '2021-10-10'),
(23, 94, 17, 1, 0, '2021-07-20'),
(24, 97, 11, 10, 0, '2021-09-05'),
(25, 63, 22, 2, 0, '2021-10-16'),
(32, 71, 6, 16, 1, '2021-06-20'),
(33, 32, 3, 11, 0, '2021-06-27'),
(34, 82, 1, 1, 1, '2021-11-15'),
(35, 63, 14, 5, 1, '2021-06-18'),
(36, 44, 20, 3, 1, '2021-06-07'),
(37, 39, 17, 2, 0, '2021-11-10'),
(38, 86, 4, 1, 0, '2021-11-18'),
(39, 74, 5, 17, 1, '2022-04-12'),
(40, 1, 2, 7, 0, '2022-05-11'),
(41, 72, 6, 3, 1, '2021-09-17'),
(42, 80, 9, 11, 0, '2021-09-17'),
(43, 91, 6, 16, 0, '2021-08-17'),
(44, 29, 12, 20, 0, '2022-03-21'),
(45, 35, 12, 16, 0, '2022-05-09'),
(46, 90, 16, 19, 0, '2021-11-14'),
(47, 19, 5, 19, 0, '2021-09-15'),
(48, 9, 6, 8, 1, '2021-10-25'),
(49, 95, 21, 13, 0, '2022-04-16'),
(50, 43, 7, 13, 0, '2022-02-26'),
(51, 79, 18, 9, 0, '2021-08-30'),
(52, 80, 17, 3, 1, '2021-07-24'),
(53, 25, 5, 7, 0, '2021-09-23'),
(54, 53, 9, 2, 0, '2021-11-11'),
(55, 71, 12, 1, 0, '2022-01-04'),
(56, 38, 15, 9, 1, '2022-03-30'),
(63, 86, 2, 2, 1, '2021-08-06'),
(64, 27, 11, 20, 0, '2021-12-11'),
(65, 36, 1, 12, 1, '2022-01-31'),
(66, 90, 18, 12, 1, '2021-09-16'),
(67, 36, 5, 18, 1, '2021-06-02'),
(68, 55, 20, 7, 0, '2022-05-19'),
(69, 52, 8, 2, 1, '2022-03-31'),
(70, 36, 17, 8, 0, '2021-08-22'),
(71, 51, 5, 9, 0, '2022-03-12'),
(72, 25, 17, 11, 1, '2022-02-22'),
(73, 20, 19, 2, 0, '2021-06-03'),
(74, 81, 4, 20, 0, '2022-01-05'),
(75, 47, 24, 10, 0, '2022-03-07'),
(76, 28, 16, 19, 0, '2021-08-12'),
(77, 54, 10, 9, 0, '2021-08-26'),
(78, 31, 8, 9, 1, '2021-06-01'),
(79, 54, 19, 7, 0, '2021-09-30'),
(80, 81, 24, 8, 0, '2022-01-12'),
(81, 47, 14, 6, 0, '2021-11-28'),
(82, 90, 22, 18, 1, '2021-07-13'),
(83, 83, 1, 1, 1, '2022-03-17'),
(84, 19, 25, 7, 0, '2022-01-12'),
(85, 16, 5, 5, 0, '2021-10-01'),
(86, 6, 11, 13, 1, '2022-01-15'),
(87, 20, 9, 5, 0, '2021-09-14'),
(94, 73, 16, 7, 0, '2021-07-12'),
(95, 66, 12, 13, 0, '2021-08-20'),
(96, 30, 23, 4, 1, '2021-07-24'),
(97, 95, 13, 2, 1, '2021-10-15'),
(98, 100, 7, 5, 0, '2021-05-31'),
(99, 77, 24, 20, 0, '2021-08-08'),
(100, 36, 11, 16, 1, '2022-02-08'),
(101, 63, 13, 11, 1, '2021-10-31'),
(102, 74, 13, 9, 0, '2021-11-24'),
(103, 5, 13, 19, 0, '2022-01-23'),
(104, 88, 12, 20, 1, '2022-03-14'),
(105, 9, 4, 2, 0, '2022-04-27'),
(106, 12, 2, 4, 1, '2021-12-13'),
(107, 88, 18, 19, 1, '2022-04-12'),
(108, 50, 10, 1, 0, '2021-06-23'),
(109, 94, 15, 1, 0, '2022-05-17'),
(110, 12, 10, 9, 1, '2021-11-24'),
(111, 1, 9, 18, 1, '2021-06-11'),
(112, 88, 5, 9, 0, '2022-05-27'),
(113, 28, 6, 2, 0, '2021-10-15'),
(114, 46, 9, 7, 0, '2021-08-04'),
(115, 67, 15, 5, 1, '2022-01-14'),
(116, 91, 22, 12, 1, '2021-06-13'),
(117, 26, 6, 14, 0, '2021-07-19'),
(118, 71, 16, 13, 0, '2021-10-03'),
(125, 2, 7, 13, 0, '2021-06-27'),
(126, 39, 5, 19, 1, '2022-03-06'),
(127, 21, 8, 19, 1, '2022-03-21'),
(128, 68, 18, 5, 1, '2021-12-21'),
(129, 36, 4, 5, 1, '2021-11-20'),
(130, 4, 3, 14, 0, '2021-12-15'),
(131, 64, 5, 14, 0, '2021-11-23'),
(132, 75, 10, 9, 1, '2021-07-23'),
(133, 55, 8, 17, 1, '2021-12-15'),
(134, 76, 13, 2, 0, '2021-06-28'),
(135, 100, 16, 10, 0, '2022-04-18'),
(136, 27, 10, 20, 0, '2021-09-11'),
(137, 14, 2, 5, 1, '2021-11-01'),
(138, 64, 25, 8, 0, '2021-11-16'),
(139, 99, 18, 2, 0, '2021-09-03'),
(140, 99, 2, 20, 0, '2021-07-17'),
(141, 25, 11, 19, 0, '2022-03-24'),
(142, 74, 4, 17, 1, '2021-07-14'),
(143, 18, 14, 3, 0, '2021-11-18'),
(144, 13, 13, 15, 0, '2021-06-05'),
(145, 98, 12, 17, 0, '2021-07-27'),
(146, 16, 25, 19, 0, '2021-09-22'),
(147, 25, 13, 5, 1, '2021-11-27'),
(148, 97, 14, 2, 1, '2021-12-01'),
(149, 86, 1, 2, 1, '2022-04-03'),
(156, 89, 24, 10, 0, '2022-04-03'),
(157, 52, 4, 17, 0, '2021-06-21'),
(158, 16, 14, 2, 0, '2022-02-09'),
(159, 51, 9, 15, 0, '2021-08-15'),
(160, 94, 19, 7, 1, '2022-05-05'),
(161, 28, 18, 5, 1, '2021-10-15'),
(162, 99, 12, 17, 0, '2021-07-30'),
(163, 22, 7, 19, 1, '2021-09-02'),
(164, 83, 14, 11, 0, '2021-09-25'),
(165, 53, 9, 3, 0, '2021-08-06'),
(166, 79, 8, 18, 0, '2022-04-07'),
(167, 65, 18, 17, 1, '2022-01-08'),
(168, 46, 23, 10, 0, '2021-12-27'),
(169, 19, 14, 16, 0, '2021-11-24'),
(170, 40, 16, 16, 1, '2022-04-30'),
(171, 93, 10, 15, 0, '2022-04-10'),
(172, 95, 15, 15, 0, '2022-03-18'),
(173, 3, 2, 14, 0, '2022-02-26'),
(174, 86, 16, 5, 0, '2021-11-05'),
(175, 97, 7, 18, 0, '2022-04-12'),
(176, 44, 24, 9, 0, '2021-07-07'),
(177, 66, 2, 8, 0, '2022-05-01'),
(178, 89, 12, 7, 1, '2021-10-24'),
(179, 81, 20, 9, 1, '2021-11-02'),
(180, 9, 25, 10, 1, '2022-01-29'),
(187, 85, 18, 4, 0, '2021-06-14'),
(188, 47, 25, 3, 0, '2021-07-21'),
(189, 20, 10, 11, 0, '2022-02-18'),
(190, 35, 5, 11, 1, '2022-05-11'),
(191, 46, 3, 2, 0, '2021-09-16'),
(192, 94, 4, 4, 1, '2021-10-10'),
(193, 67, 12, 20, 0, '2021-08-22'),
(194, 30, 22, 5, 1, '2022-04-19'),
(195, 11, 16, 20, 1, '2021-10-07'),
(196, 24, 10, 6, 0, '2021-06-22'),
(197, 82, 7, 13, 1, '2022-01-19'),
(198, 92, 22, 12, 1, '2021-08-13'),
(199, 28, 7, 8, 0, '2021-07-22'),
(200, 70, 15, 13, 1, '2021-11-17'),
(201, 74, 5, 17, 1, '2022-05-20'),
(202, 96, 11, 16, 0, '2021-07-15'),
(203, 68, 23, 17, 1, '2021-06-21'),
(204, 4, 7, 13, 0, '2022-02-19'),
(205, 75, 15, 8, 1, '2021-12-13'),
(206, 15, 12, 16, 1, '2022-04-02'),
(207, 2, 24, 15, 1, '2021-07-24'),
(208, 70, 10, 1, 1, '2022-01-20'),
(209, 6, 7, 1, 0, '2022-05-16'),
(210, 7, 5, 8, 1, '2021-11-23'),
(211, 92, 14, 14, 1, '2022-04-05'),
(218, 57, 24, 13, 1, '2022-05-12'),
(219, 84, 10, 19, 0, '2021-12-13'),
(220, 6, 2, 15, 0, '2021-09-04'),
(221, 76, 11, 3, 1, '2021-08-09'),
(222, 91, 16, 7, 0, '2021-09-11'),
(223, 88, 23, 4, 1, '2021-06-28'),
(224, 41, 11, 11, 1, '2021-07-24'),
(225, 25, 21, 3, 0, '2021-06-16'),
(226, 75, 15, 8, 1, '2021-11-07'),
(227, 34, 18, 7, 0, '2021-06-07'),
(228, 35, 2, 18, 0, '2021-10-08'),
(229, 34, 1, 18, 0, '2021-06-19'),
(230, 17, 1, 6, 1, '2022-01-21'),
(231, 37, 21, 14, 0, '2022-03-06'),
(232, 27, 4, 15, 1, '2021-11-03'),
(233, 96, 1, 6, 0, '2021-07-06'),
(234, 86, 19, 17, 0, '2022-04-14'),
(235, 95, 14, 15, 1, '2021-07-16'),
(236, 56, 11, 16, 0, '2021-11-19'),
(237, 54, 12, 8, 1, '2021-12-14'),
(238, 14, 15, 8, 1, '2021-08-01'),
(239, 2, 19, 3, 1, '2021-10-21'),
(240, 81, 16, 17, 1, '2022-01-23'),
(241, 91, 1, 4, 0, '2021-12-16'),
(242, 49, 24, 17, 0, '2021-12-16');

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
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `dostawca`
--
ALTER TABLE `dostawca`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `klient`
--
ALTER TABLE `klient`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT dla tabeli `kraje`
--
ALTER TABLE `kraje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT dla tabeli `produkty`
--
ALTER TABLE `produkty`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `tranzakcje`
--
ALTER TABLE `tranzakcje`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
