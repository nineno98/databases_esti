-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 20. 16:51
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `cukraszda`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `cukraszda_log`
--

CREATE TABLE `cukraszda_log` (
  `log_id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `change_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `note` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `cukraszda_log`
--

INSERT INTO `cukraszda_log` (`log_id`, `user`, `change_time`, `note`) VALUES
(1, 'root@localhost', '2024-03-06 18:06:40', 'Uj torta: Teszt torta');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `tortak`
--

CREATE TABLE `tortak` (
  `tortaid` int(11) NOT NULL,
  `nevkod` varchar(255) DEFAULT NULL,
  `ar` varchar(255) DEFAULT NULL,
  `szeletek` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `tortak`
--

INSERT INTO `tortak` (`tortaid`, `nevkod`, `ar`, `szeletek`) VALUES
(1, 'Ajándék doboz, zöld dolce torta - DO002', '1450 Ft-tól', 1),
(2, 'Euro parti torta - PT182', '5700 Ft-tól', 10),
(3, 'Lufis gyerek torta - GY160', '9370 Ft-tól', 10),
(4, 'Szülinapi dizájn torta, csillag - DI003', '1900 Ft-tól', 3),
(5, 'Graffiti dizájn torta - DI004', '1900 Ft-tól', 3),
(6, 'Apa dizájn torta - DI007', '1900 Ft-tól', 3),
(7, 'Retró autó dizájn torta - DI008', '1900 Ft-tól', 3),
(8, 'Szülinapi dizájn torta saját fényképpel 1 - DI009', '1900 Ft-tól', 3),
(9, 'Kutyafej dizájn torta saját fényképpel - DI012', '1900 Ft-tól', 3),
(10, 'Tökéletes feleség dizájn torta - DI015', '1900 Ft-tól', 3),
(11, 'Tökéletes férj dizájn torta - DI016', '1900 Ft-tól', 3),
(12, 'Körvirág dizájn torta - DI022', '1900 Ft-tól', 3),
(13, 'Alkalmi csupa csoki torta - AL206', '6250 Ft-tól', 10),
(14, 'The million roses alkalmi torta - AL210', '14050 Ft-tól', 10),
(15, 'Alkalmi rózsa torta - AL212/M', '10000 Ft-tól', 10),
(16, 'Mackó 2 gyerek torta - GY181', '18100 Ft-tól', 20),
(17, 'Lego parti torta - PT196', '5700 Ft-tól', 10),
(18, 'Báránykák parti torta - PT010', '5700 Ft-tól', 10),
(19, 'Karóra kézmuves torta - KE92', '24000 Ft-tól', 20),
(20, 'Szám alakú gyerek torta - GY138', '18800 Ft-tól', 20),
(21, 'Dollár kézmuves torta - KE208', '24000 Ft-tól', 20),
(22, 'Violetta gyerek torta - GY112', '35070 Ft-tól', 39),
(23, 'Mascarponés sárgabarack torta - KT013', '4650 Ft-tól', 10),
(24, 'Kislány baba parti torta saját fényképpel - PT042', '5700 Ft-tól', 10),
(25, 'Mosolygó smile box - SB066', '3800 Ft-tól', 5),
(26, 'Jégvarázs - FE052', '7650 Ft-tól', 10),
(27, 'Rákóczi túrós torta - KT073', '4100 Ft-tól', 10),
(28, 'Minecraft parti torta - PT195', '5700 Ft-tól', 10),
(29, 'Habos mákos torta - KT074', '4100 Ft-tól', 10),
(30, 'Fogacska kézmuves torta - KE211', '24000 Ft-tól', 20),
(31, 'Wanted parti torta saját fényképpel - PT041', '5700 Ft-tól', 10),
(32, 'Wanted smile box - SB044', '3800 Ft-tól', 5),
(33, 'Alkalmi torta - AL015', '24000 Ft-tól', 20),
(34, 'Gitár kézmuves torta - KE178', '24000 Ft-tól', 20),
(35, 'Wanted parti torta - PT151', '5700 Ft-tól', 10),
(36, 'Alkalmi torta - AL154', '7450 Ft-tól', 10),
(37, 'Alkalmi torta - AL143', '18000 Ft-tól', 16),
(38, 'Titok (ki van a pocakban) parti torta - PT082', '5700 Ft-tól', 10),
(39, 'Kinder mousse torta csoki kellékekkel - KT056', '6450 Ft-tól', 10),
(40, 'Póker parti torta - PT040', '5700 Ft-tól', 10),
(41, 'Kalocsai parti torta - PT001', '5700 Ft-tól', 10),
(42, 'Alkalmi torta - AL177', '10050 Ft-tól', 10),
(43, 'Díszített minyonok gyerek torta - GY099', '450 Ft-tól', 1),
(44, 'Szíves csillagos gyerek torta - GY120', '9450 Ft-tól', 10),
(45, 'Alkalmi torta - AL133', '8250 Ft-tól', 10),
(46, 'Színes mintás gyerek torta - GY115', '9250 Ft-tól', 10),
(47, 'Szülinapi minyon névvel gyerek torta - GY003', '2100 Ft-tól', 1),
(48, 'Oreo keksz torta - KT052', '4650 Ft-tól', 10),
(49, 'Paleo sacher torta - KT053', '4650 Ft-tól', 10),
(50, 'Paleo bounty torta - KT076', '4650 Ft-tól', 10),
(51, 'Nosztalgia krémes torta - KT055', '4650 Ft-tól', 10),
(52, 'Narancsos karamell mousse torta - KT059', '4650 Ft-tól', 10),
(53, 'Meggyes nosztalgia torta - KT006', '4650 Ft-tól', 10),
(54, 'Kinder mousse torta - KT009', '4650 Ft-tól', 10),
(55, 'Tejszínes csokoládé torta - KT010', '4100 Ft-tól', 10),
(56, 'Oroszkrém torta - KT011', '4100 Ft-tól', 10),
(57, 'Tejszínes gesztenye torta - KT014', '4100 Ft-tól', 10),
(58, 'Vaníliás málna torta - KT015', '4650 Ft-tól', 10),
(59, 'Eszterházy torta - KT016', '4650 Ft-tól', 10),
(60, 'Fekete-erdei meggy torta - KT017', '4650 Ft-tól', 10),
(61, 'Somlói torta - KT018', '4100 Ft-tól', 10),
(62, 'Csokis keksz torta - KT019', '4650 Ft-tól', 10),
(63, 'Joghurtos túró torta - KT020', '4650 Ft-tól', 10),
(64, 'Tejszínes erdei gyümölcs torta - KT021', '4650 Ft-tól', 10),
(65, 'Bailley\'s mousse torta - KT023', '4650 Ft-tól', 10),
(66, 'Dobos torta - KT027', '4100 Ft-tól', 10),
(67, 'Csokoládé torta - KT028', '4100 Ft-tól', 10),
(68, 'Tejszínes lúdláb torta - KT032', '4650 Ft-tól', 10),
(69, 'Rigó Jancsi torta - KT035', '4100 Ft-tól', 10),
(70, 'Tejszínes eper torta - KT037', '4650 Ft-tól', 10),
(71, 'Vaníliás meggyes mák torta - KT038', '4650 Ft-tól', 10),
(72, 'Epres kardinális torta - KT045', '4100 Ft-tól', 10);

-- --------------------------------------------------------

--
-- A nézet helyettes szerkezete `tortak_levalasztva`
-- (Lásd alább az aktuális nézetet)
--
CREATE TABLE `tortak_levalasztva` (
`tortaid` int(11)
,`tortanev` varchar(255)
,`tortakod` varchar(255)
,`ujar` double
,`szeletek` int(11)
);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `ujtortak`
--

CREATE TABLE `ujtortak` (
  `tortanev` varchar(255) DEFAULT NULL,
  `tortakod` varchar(255) NOT NULL,
  `ujar` double DEFAULT NULL,
  `szeletek` int(11) DEFAULT NULL,
  `egysegar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `ujtortak`
--

INSERT INTO `ujtortak` (`tortanev`, `tortakod`, `ujar`, `szeletek`, `egysegar`) VALUES
('Alkalmi torta', 'AL015', 24000, 20, 1200),
('Alkalmi torta', 'AL133', 8250, 10, 825),
('Alkalmi torta', 'AL143', 18000, 16, 1125),
('Alkalmi torta', 'AL154', 7450, 10, 745),
('Alkalmi torta', 'AL177', 10050, 10, 1005),
('Alkalmi csupa csoki torta', 'AL206', 6250, 10, 625),
('The million roses alkalmi torta', 'AL210', 14050, 10, 1405),
('Alkalmi rózsa torta', 'AL212/M', 10000, 10, 1000),
('Szülinapi dizájn torta, csillag', 'DI003', 1900, 3, 633),
('Graffiti dizájn torta', 'DI004', 1900, 3, 633),
('Apa dizájn torta', 'DI007', 1900, 3, 633),
('Retró autó dizájn torta', 'DI008', 1900, 3, 633),
('Szülinapi dizájn torta saját fényképpel 1', 'DI009', 1900, 3, 633),
('Kutyafej dizájn torta saját fényképpel', 'DI012', 1900, 3, 633),
('Tökéletes feleség dizájn torta', 'DI015', 1900, 3, 633),
('Tökéletes férj dizájn torta', 'DI016', 1900, 3, 633),
('Körvirág dizájn torta', 'DI022', 1900, 3, 633),
('Ajándék doboz, zöld dolce torta', 'DO002', 1450, 1, 1450),
('Jégvarázs', 'FE052', 7650, 10, 765),
('Szülinapi minyon névvel gyerek torta', 'GY003', 2100, 1, 2100),
('Díszített minyonok gyerek torta', 'GY099', 450, 1, 450),
('Violetta gyerek torta', 'GY112', 35070, 39, 899),
('Színes mintás gyerek torta', 'GY115', 9250, 10, 925),
('Szíves csillagos gyerek torta', 'GY120', 9450, 10, 945),
('Szám alakú gyerek torta', 'GY138', 18800, 20, 940),
('Lufis gyerek torta', 'GY160', 9370, 10, 937),
('Mackó 2 gyerek torta', 'GY181', 18100, 20, 905),
('Gitár kézmuves torta', 'KE178', 24000, 20, 1200),
('Dollár kézmuves torta', 'KE208', 24000, 20, 1200),
('Fogacska kézmuves torta', 'KE211', 24000, 20, 1200),
('Karóra kézmuves torta', 'KE92', 24000, 20, 1200),
('Meggyes nosztalgia torta', 'KT006', 4650, 10, 465),
('Kinder mousse torta', 'KT009', 4650, 10, 465),
('Tejszínes csokoládé torta', 'KT010', 4100, 10, 410),
('Oroszkrém torta', 'KT011', 4100, 10, 410),
('Mascarponés sárgabarack torta', 'KT013', 4650, 10, 465),
('Tejszínes gesztenye torta', 'KT014', 4100, 10, 410),
('Vaníliás málna torta', 'KT015', 4650, 10, 465),
('Eszterházy torta', 'KT016', 4650, 10, 465),
('Fekete-erdei meggy torta', 'KT017', 4650, 10, 465),
('Somlói torta', 'KT018', 4100, 10, 410),
('Csokis keksz torta', 'KT019', 4650, 10, 465),
('Joghurtos túró torta', 'KT020', 4650, 10, 465),
('Tejszínes erdei gyümölcs torta', 'KT021', 4650, 10, 465),
('Bailley\'s mousse torta', 'KT023', 4650, 10, 465),
('Dobos torta', 'KT027', 4100, 10, 410),
('Csokoládé torta', 'KT028', 4100, 10, 410),
('Tejszínes lúdláb torta', 'KT032', 4650, 10, 465),
('Rigó Jancsi torta', 'KT035', 4100, 10, 410),
('Tejszínes eper torta', 'KT037', 4650, 10, 465),
('Vaníliás meggyes mák torta', 'KT038', 4650, 10, 465),
('Epres kardinális torta', 'KT045', 4100, 10, 410),
('Oreo keksz torta', 'KT052', 4650, 10, 465),
('Paleo sacher torta', 'KT053', 4650, 10, 465),
('Nosztalgia krémes torta', 'KT055', 4650, 10, 465),
('Kinder mousse torta csoki kellékekkel', 'KT056', 6450, 10, 645),
('Narancsos karamell mousse torta', 'KT059', 4650, 10, 465),
('Rákóczi túrós torta', 'KT073', 4100, 10, 410),
('Habos mákos torta', 'KT074', 4100, 10, 410),
('Paleo bounty torta', 'KT076', 4650, 10, 465),
('Kalocsai parti torta', 'PT001', 5700, 10, 570),
('Báránykák parti torta', 'PT010', 5700, 10, 570),
('Póker parti torta', 'PT040', 5700, 10, 570),
('Wanted parti torta saját fényképpel', 'PT041', 5700, 10, 570),
('Kislány baba parti torta saját fényképpel', 'PT042', 5700, 10, 570),
('Titok (ki van a pocakban) parti torta', 'PT082', 5700, 10, 570),
('Wanted parti torta', 'PT151', 5700, 10, 570),
('Euro parti torta', 'PT182', 5700, 10, 570),
('Minecraft parti torta', 'PT195', 5700, 10, 570),
('Lego parti torta', 'PT196', 5700, 10, 570),
('Wanted smile box', 'SB044', 3800, 5, 760),
('Mosolygó smile box', 'SB066', 3800, 5, 760),
('Teszt torta', 'TEST01', 2000, 10, 1000),
('Trigger torta', 'TT001', 20000, 10, 2000);

--
-- Eseményindítók `ujtortak`
--
DELIMITER $$
CREATE TRIGGER `ujtorta_figyeles` AFTER INSERT ON `ujtortak` FOR EACH ROW BEGIN

	insert into cukraszda_log (user, note)
    values (CURRENT_USER(), CONCAT('Uj torta: ', NEW.tortanev));

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Nézet szerkezete `tortak_levalasztva`
--
DROP TABLE IF EXISTS `tortak_levalasztva`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `tortak_levalasztva`  AS SELECT `tortak`.`tortaid` AS `tortaid`, left(`tortak`.`nevkod`,locate(' -',`tortak`.`nevkod`) - 1) AS `tortanev`, right(`tortak`.`nevkod`,char_length(`tortak`.`nevkod`) - locate('- ',`tortak`.`nevkod`) - 1) AS `tortakod`, left(`tortak`.`ar`,locate(' ',`tortak`.`ar`) - 1) + 0 AS `ujar`, `tortak`.`szeletek` AS `szeletek` FROM `tortak` ;

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `cukraszda_log`
--
ALTER TABLE `cukraszda_log`
  ADD PRIMARY KEY (`log_id`);

--
-- A tábla indexei `tortak`
--
ALTER TABLE `tortak`
  ADD PRIMARY KEY (`tortaid`),
  ADD KEY `tortaindex` (`nevkod`);

--
-- A tábla indexei `ujtortak`
--
ALTER TABLE `ujtortak`
  ADD PRIMARY KEY (`tortakod`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `cukraszda_log`
--
ALTER TABLE `cukraszda_log`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT a táblához `tortak`
--
ALTER TABLE `tortak`
  MODIFY `tortaid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
