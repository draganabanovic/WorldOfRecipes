-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 05:48 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `worldofrecipes`
--

-- --------------------------------------------------------

--
-- Table structure for table `author`
--

CREATE TABLE `author` (
  `Id` int(11) NOT NULL,
  `Name` varchar(60) NOT NULL,
  `Email` varchar(256) NOT NULL,
  `Password` varchar(256) NOT NULL,
  `Bio` text NOT NULL,
  `Role` varchar(20) NOT NULL,
  `Image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `author`
--

INSERT INTO `author` (`Id`, `Name`, `Email`, `Password`, `Bio`, `Role`, `Image`) VALUES
(1, 'Dragana Banovic', 'dragana.banovic5@gmail.com', '$2y$10$3MEq7pfriLn/aoV.WmJTqeF3Ix3EVduRARI9O4TU5UUKqCs4pztba', 'Biografija', 'admin', 'Images/Authors/60e66f435ddd74.36750387.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `CategoryName` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`Id`, `CategoryName`) VALUES
(1, 'Cold appetizers'),
(2, 'Warm appetizers'),
(3, 'Soups and stews'),
(4, 'Salads'),
(5, 'Pasta'),
(6, 'Main dishes'),
(7, 'Fish and seafood'),
(8, 'Sauces'),
(9, 'Desserts');

-- --------------------------------------------------------

--
-- Table structure for table `recipe`
--

CREATE TABLE `recipe` (
  `Id` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `AuthorId` int(11) NOT NULL,
  `Title` varchar(100) NOT NULL,
  `Content` text NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Image` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recipe`
--

INSERT INTO `recipe` (`Id`, `CategoryId`, `AuthorId`, `Title`, `Content`, `Date`, `Image`) VALUES
(1, 6, 1, 'Biftek', '<p>Sastojci:</p>\r\n<p>1 biftek (goveđi file) oko 2 kg</p>\r\n<p>1,5 žlica Vegete</p>\r\n<p>100 ml maslinovog ulja</p>\r\n<p>40 ml rakije biske</p>\r\n<p>50 ml sok od jabuke</p>\r\n<p>Način pripreme:<br />Biftek očistite od kožica, premažite uljem, stavite u poklopljenu posudu i ostavite u hladnjaku da odleži nekoliko dana.Biftek narežite na debele odreske (oko 4 cm) i pospite ih Vegetom papar mix. Pokapajte uljem pomije&scaron;anim s biskom i sokom od jabuke te ostavite stajati u hladnjaku oko sat vremena.Na zagrijanom ro&scaron;tilju ispecite odreske tako da izvana dobiju lijepu boju, a iznutra ostanu srednje ružičasti.</p>', '2021-07-08 01:45:15', 'Images/Recipes/5fc438ac001178.16168887.jpg'),
(2, 3, 1, 'Čorba sa škampima', '<p>Sastojci:</p>\r\n<p>&scaron;kampi - 200 g</p>\r\n<p>riba - 100 g</p>\r\n<p>maslinovo ulje - 2 supene ka&scaron;ike</p>\r\n<p>bujon - 1.2 litre, pileći</p>\r\n<p>bra&scaron;no - 2 supene</p>\r\n<p>ka&scaron;ike sirće - 2 supene ka&scaron;ike</p>\r\n<p>belo vino - 1 supena ka&scaron;ika</p>\r\n<p>jaja - 2 komada</p>\r\n<p>so - 1 ka&scaron;ičica</p>\r\n<p>klice - 20 g, p&scaron;enične</p>\r\n<p>&nbsp;</p>\r\n<p>Način pripreme:</p>\r\n<p>Klice operemo, osu&scaron;imo i zajedno sa &scaron;kampima propžimo u ugrejanom maslinovom ulju. Dodajemo isečenu ribu i vino i prelivamo bujonom. Posolimo i čorbu zgusnemo sa bra&scaron;nom, pome&scaron;anim sa malo vode. Čim se zgusne sipamo sirće i skidamo sa vatre. Jaja umutimo i sipamo u toplu čorbu uz neprestano me&scaron;anje.</p>', '2021-07-08 01:45:21', 'Images/Recipes/5fc583447f3027.19337746.jpg'),
(3, 6, 1, 'Šnicle u sosu od senfa', '<p><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">Potrebno je:</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">1 kg belog mesa</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">100 g pančeta slanine</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">300 g pečenice</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">200 g sira trapista</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">6 krompira</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">5 &scaron;angarepe</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">400 g &scaron;ampinjona</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">pirinač</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">crni luk</span></p>\r\n<p><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">Način pripreme:</span></p>\r\n<p><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">1</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">Belo meso izlagati u &scaron;nicle. Malo povegetiti. Slaninu ređati tako da bude jedno preko druge, da se dobiju kocke. Preko slanine poređati belo meso i ređati pecenicu, zatim sir rendani i opet pecenicu i uraditi u relat. Možete to sve uraditi na foliji pa ostaviti u frižider da ostji nekih 10 minuta, lak&scaron;e ce se urolati.</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">2</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">Krompir iseći na kolutove, staviti ga u dublju posudu i povegetiti i malo dodati bibera po ukusu, nauliljiti i ostaviti da odstoji nekih 10 minuta.</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">3</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">Iseći luk na sitno i 2 &scaron;ampinjoa iseći i staviti da se dinsta sa malo soli. Prokuvati posebno &scaron;argarepu i posebno 2 ka&scaron;ike pirinča. Pa sve to spojiti i sastaviti da se dinsta zajedno. &Scaron;argarepa isto da bude sitno iseckan. Kad se ohladi malo puniti &scaron;ampinjone.</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">4</span><br style=\"box-sizing: border-box; color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\" /><span style=\"color: #212529; font-family: -apple-system, BlinkMacSystemFont, \'Segoe UI\', Roboto, \'Helvetica Neue\', Arial, sans-serif, \'Apple Color Emoji\', \'Segoe UI Emoji\', \'Segoe UI Symbol\', \'Noto Color Emoji\'; font-size: 16px; text-align: justify; background-color: #f8f9fa;\">Na nama&scaron;ćenu tepsiju ređati krompir pa staviti prvo rolat i oko njega poređati &scaron;ampinjone punjene i cele &scaron;argarepe. Prekriti folijom i staviti da se peče u rernu na 180&deg;C na sat vremena. Posle skinuti foliju sa tepsiju i ostaviti jo&scaron; 30 minuta na 200&deg;C.</span></p>', '2021-07-08 15:44:15', 'Images/Recipes/5fc585e7e318e2.93768631.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `author`
--
ALTER TABLE `author`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `recipe`
--
ALTER TABLE `recipe`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FK_Author` (`AuthorId`),
  ADD KEY `FK_Category` (`CategoryId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `author`
--
ALTER TABLE `author`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `recipe`
--
ALTER TABLE `recipe`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `recipe`
--
ALTER TABLE `recipe`
  ADD CONSTRAINT `FK_Author` FOREIGN KEY (`AuthorId`) REFERENCES `author` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_Category` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
