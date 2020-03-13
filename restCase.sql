-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 13, 2020 at 01:10 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restCase`
--

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

DROP TABLE IF EXISTS `cars`;
CREATE TABLE IF NOT EXISTS `cars` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `year` varchar(4) COLLATE utf8_turkish_ci NOT NULL,
  `brand` varchar(4) COLLATE utf8_turkish_ci NOT NULL,
  `model` varchar(55) COLLATE utf8_turkish_ci NOT NULL,
  `extColor` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `intColor` varchar(15) COLLATE utf8_turkish_ci NOT NULL,
  `transmission` varchar(16) COLLATE utf8_turkish_ci NOT NULL,
  `price` varchar(8) COLLATE utf8_turkish_ci NOT NULL,
  `contactNumber` varchar(19) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=1665 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`ID`, `year`, `brand`, `model`, `extColor`, `intColor`, `transmission`, `price`, `contactNumber`) VALUES
(1565, '2020', 'BMW', '740i', 'Gray', 'Black', 'Automatic', '$93,945', '(714) 676-5156'),
(1566, '2018', 'Ford', 'Fiesta ST', 'Orange', 'Black', 'Manual', '$14,000', '(888) 838-2413'),
(1567, '2011', 'BMW', 'Z4 sDrive30i', 'White', 'Black', 'Automatic', '$11,900', '(512) 402-5013'),
(1568, '2020', 'Ford', 'Transit-250 Base', 'White', 'Gray', 'Automatic', '$36,188', '(813) 379-2701'),
(1569, '2019', 'BMW', '330i', 'Gray', 'Beige', 'Automatic', ' $45,385', '(888) 473-7982'),
(1570, '2019', 'BMW', '330i', 'Black', 'Black', 'Automatic', '$47,125', '(252) 624-0996'),
(1571, '2018', 'Ford', 'Fiesta S Sedan 4D', 'Other', 'Other', 'Automanual', '$5,500', '(786) 838-4184'),
(1572, '2013', 'Ford', 'Taurus SHO', 'Red', 'Black', 'Automatic', '$9,995', '(215) 486-4465'),
(1573, '2000', 'BMW', 'Z3 2.3 Roadster', 'Gray', 'Black', 'Manual', '$6,500', 'NA'),
(1574, '2019', 'BMW', '740 i', 'Gray', 'Black', 'Automatic', '$39,992', '(801) 871-3485'),
(1575, '2000', 'Ford', 'Excursion Limited', 'Green', 'Other', 'Automatic', '$6,849', '(720) 252-1503'),
(1576, '2015', 'Ford', 'Expedition EL XLT', 'Black', 'Black', 'Automatic', '$16,499', '(888) 379-9861'),
(1577, '2013', 'Ford', 'Flex SEL', 'Gold', 'Black', 'Automatic', '$10,500', '(402) 858-8220'),
(1578, '2018', 'Ford', 'Fusion Energi SE Luxury', 'White', 'Black', 'CVT', '$14,995', '(734) 629-5733'),
(1579, '2013', 'BMW', 'X5 xDrive35i', 'Gray', 'Black', 'Automatic', '$19,998', '(910) 292-3399'),
(1580, '2013', 'Ford', 'Sedan Police Interceptor Base', 'White', 'Black', 'Automatic', '$9,995', '(703) 659-4314'),
(1581, '2013', 'Ford', 'Sedan Police Interceptor Base', 'White', 'Black', 'Automatic', '$6,995', '(203) 490-4510'),
(1582, '2016', 'Ford', 'Fusion S', 'White', 'Gray', 'Automatic', '$7,550', '(866) 418-5573'),
(1583, '2008', 'Ford', 'Fusion SE', 'White', 'Other', 'Automatic', '$4,495', '(406) 206-3373'),
(1584, '2010', 'Ford', 'Explorer Sport Trac XLT', 'Red', 'Black', 'Automatic', '$13,912', '(888) 464-7557'),
(1585, '2016', 'Ford', 'Focus S', 'Gray', 'Black', 'Automatic', '$5,995', '(281) 860-2203'),
(1586, '1996', 'BMW', 'Z3 Roadster', 'Blue', 'Beige', 'Manual', '$8,500', '(630) 338-0895'),
(1587, '2003', 'Ford', 'Windstar SE', 'Beige', 'Gray', 'Automatic', '$2,500', '(708) 377-6278'),
(1588, '2015', 'Ford', 'Focus SE', 'Other', 'Other', 'Automatic', '$7,900', '(724) 204-8562'),
(1589, '2002', 'BMW', 'Z3 3.0i Roadster', 'Blue', 'Black', 'Automanual', '$5,400', 'NA'),
(1590, '2017', 'BMW', 'ALPINA B7 xDrive', 'White', 'Beige', 'Automatic', '$64,995', '(908) 603-8009'),
(1591, '2015', 'Ford', 'Focus SE', 'Gray', 'Black', 'Automatic', '$5,995', '(857) 362-9075'),
(1592, '2010', 'Ford', 'F-150 Platinum', 'Black', 'Brown', 'Automatic', '$8,900', 'NA'),
(1593, '2016', 'Ford', 'Focus SE', 'Gray', 'Black', 'Automatic', '$9,686', '(888) 838-2413'),
(1594, '2017', 'Ford', 'Focus RS Base', 'Blue', 'Black', 'Manual', '$26,999', '(888) 364-4302'),
(1595, '2016', 'Ford', 'Flex SEL', 'Blue', 'Black', 'Automatic', '$17,469', '(719) 387-7151'),
(1596, '2014', 'Ford', 'Sedan Police Interceptor Base', 'White', 'Black', 'Automatic', '$10,990', '(206) 923-8831'),
(1597, '2014', 'Ford', 'Focus SE', 'Gray', 'Black', 'Other / Unknown', '$8,995', '(888) 897-9257'),
(1598, '2006', 'BMW', '750 Li', 'White', 'Black', 'Automatic', '$2,999', '(904) 748-4075'),
(1599, '2008', 'Ford', 'Explorer Sport Trac Limited', 'Other', 'Beige', 'Automatic', '$9,795', '(631) 983-3920'),
(1600, '2006', 'Ford', 'GT Base', 'White', 'Black', 'Manual', '$339,888', '(830) 443-4940'),
(1601, '2016', 'Ford', 'Focus ST Base', 'Blue', 'Gray', 'Manual', '$13,450', '(402) 401-7815'),
(1602, '1997', 'BMW', 'Z3 2.8 Roadster', 'Black', 'Beige', 'Manual', '$8,900', 'NA'),
(1603, '2004', 'Ford', 'Explorer Sport Trac Adrenalin', 'Green', 'Beige', 'Automatic', '$4,700', '(828) 394-4332'),
(1604, '2002', 'Ford', 'Thunderbird Premium', 'Yellow', 'Yellow', 'Automatic', '$15,795', '(888) 479-7917'),
(1605, '2017', 'BMW', 'ALPINA B7 xDrive', 'Blue', 'Black', 'Automatic', '$61,900', '(347) 997-3875'),
(1606, '2015', 'Ford', 'Focus ST Base', 'White', 'Black', 'Manual', '$12,500', '(385) 374-5007'),
(1607, '2016', 'BMW', '328 i', 'White', 'Black', 'Automatic', '$14,000', '(888) 838-2413'),
(1608, '2016', 'Ford', 'Focus RS Base', 'Blue', 'Black', 'Manual', '$29,999', '(816) 875-5610'),
(1609, '2014', 'Ford', 'Transit Connect XLT', 'Blue', 'Other', 'Automatic', '$12,958', '(877) 889-3205'),
(1610, '2019', 'Ford', 'Transit Connect XL', 'White', 'Black', 'Automatic', '$17,994', '(888) 852-3524'),
(1611, '2008', 'Ford', 'Explorer Sport Trac Limited', 'White', 'Other', 'Automatic', '$7,900', '(863) 658-6162'),
(1612, '2011', 'Ford', 'Explorer Limited', 'Red', 'Brown', 'Automatic', '$12,900', '(888) 884-5685'),
(1613, '2010', 'Ford', 'E150 E-150 RECREATIONAL', 'White', 'Black', 'Automatic', '$9,900', '(310) 956-1745'),
(1614, '2015', 'Ford', 'Taurus SHO', 'White', 'Black', 'Automatic', '$14,995', '(801) 935-8127'),
(1615, '2013', 'Ford', 'Escape SE', 'Gray', 'Gray', 'Automatic', '$9,998', '(618) 223-6766'),
(1616, '1996', 'Ford', 'Bronco', 'Blue', 'Beige', 'Automatic', '$10,995', '(352) 269-4066'),
(1617, '1996', 'BMW', 'Z3 Roadster', 'Black', 'Brown', 'Manual', '$3,895', '(802) 391-3729'),
(1618, '2017', 'BMW', 'X3 xDrive35i', 'Gray', 'Black', 'Automatic', '$21,979', '(888) 712-0671'),
(1619, '2015', 'Ford', 'Fiesta SE', 'White', 'Black', 'Automatic', '$6,495', '(402) 881-8051'),
(1620, '2013', 'Ford', 'Utility Police Interceptor Base', 'White', 'Black', 'Automatic', '$12,595', '(443) 318-7427'),
(1621, '2018', 'BMW', '640 Gran Turismo i xDrive', 'White', 'White', 'Automatic', '$37,995', '(866) 983-9796'),
(1622, '2014', 'BMW', 'M5 Base', 'White', 'Black', 'Automatic', '$32,999', '(469) 685-1742'),
(1623, '2015', 'Ford', 'Transit Connect XL', 'White', 'Black', 'Automatic', '$14,995', '(651) 691-4962'),
(1624, '2015', 'BMW', 'X6 M Base', 'Gray', 'Red', 'Automatic', '$42,888', '(630) 948-0530'),
(1625, '2019', 'Ford', 'Explorer sport', 'Black', 'Black', 'Automatic', '$39,000', '(678) 436-8687'),
(1626, '2003', 'Ford', 'Explorer Sport Trac XLT', 'Red', 'Gray', 'Automatic', '$4,999', '(352) 419-0742'),
(1627, '2017', 'Ford', 'Escape SE', 'Silver', 'Other', 'Automatic', '$13,994', '(813) 440-2918'),
(1628, '2017', 'Ford', 'Shelby GT350 Base', 'White', 'Black', 'Manual', '$39,984', '(888) 832-3340'),
(1629, '2017', 'Ford', 'Focus RS Base', 'White', 'Black', 'Manual', '$26,799', '(801) 335-9828'),
(1630, '2018', 'Ford', 'Escape SE', 'Other', 'Gray', 'Automatic', '$15,999', '(888) 712-0671'),
(1631, '2020', 'Ford', 'EcoSport SE', 'Red', 'Black', 'Automatic', '$17,395', '(586) 838-1960'),
(1632, '2016', 'BMW', 'ALPINA B6 Gran Coupe Base', 'Gray', 'Beige', 'Automatic', '$45,988', '(724) 749-5046'),
(1633, '2011', 'Ford', 'Crown Victoria Police Interceptor', 'Black', 'Black', 'Automatic', '$4,700', '(407) 347-6487'),
(1634, '2016', 'Ford', 'Shelby GT350 Base', 'White', 'Black', 'Manual', '$38,999', '(888) 378-6203'),
(1635, '2017', 'BMW', 'M240 i', 'Blue', 'Black', 'Manual', '$25,279', '(888) 406-4246'),
(1636, '2017', 'BMW', '530 i xDrive', 'White', 'Blue', 'Automatic', '$28,999', '(404) 935-6817'),
(1637, '2017', 'BMW', '540 i xDrive', 'White', 'Black', 'Automatic', '$38,000', '(540) 709-5070'),
(1638, '2015', 'BMW', 'i8 Base', 'Gray', 'White', 'Automatic', '$63,000', '(801) 410-7240'),
(1639, '2019', 'BMW', 'X4 xDrive30i', 'Black', 'Black', 'Automatic', '$42,093', '(720) 414-6041'),
(1640, '2019', 'BMW', 'X7 xDrive50i', 'White', 'White', 'Automatic', '$83,993', '(888) 672-8432'),
(1641, '2017', 'BMW', 'X5 eDrive xDrive40e', 'Blue', 'White', 'Automatic', '$38,990', '(410) 846-0083'),
(1642, '2018', 'BMW', 'X5 eDrive xDrive40e', 'White', 'Black', 'Automatic', '$37,684', '(877) 828-0229'),
(1643, '2013', 'BMW', '650 Gran Coupe i xDrive', 'White', 'Black', 'Automatic', '$24,998', '(720) 381-1109'),
(1644, '2004', 'BMW', '760 Li', 'Black', 'Beige', 'Automatic', '$14,950', '(281) 377-6613'),
(1645, '2009', 'BMW', 'Z4 sDrive35i', 'Blue', 'White', 'Automatic', '$18,595', '(704) 774-4059'),
(1646, '2016', 'BMW', 'i8 Base', 'White', 'Gray', 'Automatic', '$66,995', '(888) 308-8381'),
(1647, '2020', 'BMW', 'X3 M Competition', 'Gray', 'Other', 'Automatic', '$65,950', '(877) 468-0662'),
(1648, '2019', 'BMW', 'X7 xDrive40i', 'Gray', 'Black', 'Automatic', '$69,495', '(781) 561-7270'),
(1649, '2013', 'BMW', '760 Li', 'White', 'Brown', 'Automatic', '$37,777', '(708) 589-4603'),
(1650, '2017', 'BMW', '340 i xDrive', 'White', 'Red', 'Automatic', '$25,495', '(801) 804-3425'),
(1651, '2018', 'BMW', '530 i', 'Black', 'Black', 'Automatic', '$27,991', '(503) 476-3975'),
(1652, '2016', 'BMW', '328 i', 'Blue', 'Black', 'Automatic', '$15,999', '(512) 428-8348'),
(1653, '2017', 'BMW', '440 Gran Coupe i xDrive', 'White', 'Red', 'Automatic', '$29,995', '(516) 806-4485'),
(1654, '2018', 'BMW', 'X2 sDrive28i', 'Gray', 'Black', 'Automatic', '$22,999', '(770) 954-7422'),
(1655, '2018', 'BMW', '440 i xDrive', 'Black', 'Beige', 'Automatic', '$26,995', '(859) 654-0128'),
(1656, '2008', 'BMW', '750 Li', 'Black', 'Black', 'Automatic', '$8,995', '(214) 390-3615'),
(1657, '2018', 'BMW', 'X1 sDrive28i', 'White', 'Black', 'Automatic', '$20,900', '(770) 954-7422'),
(1658, '2019', 'BMW', 'M4 Base', 'White', 'Black', 'Automatic', '$45,992', '(801) 871-3485'),
(1659, '2017', 'BMW', 'i3 94 Ah', 'Gray', 'Gray', 'Automatic', '$17,691', '(888) 822-3308'),
(1660, '2012', 'BMW', '750 Li xDrive', 'Black', 'Black', 'Automatic', '$12,999', '(720) 204-4993'),
(1661, '2018', 'BMW', 'X2 sDrive28i', 'Silver', 'Black', 'Automatic', '$27,800', '(415) 868-4903'),
(1662, '2012', 'BMW', '328 i', 'Gray', 'Gray', 'Automatic', '$11,650', '(972) 505-2119'),
(1663, '2011', 'BMW', 'ALPINA B7 LWB', 'Other', 'Other', 'Automatic', '$10,991', '(866) 892-2188'),
(1664, '2015', 'BMW', 'ALPINA B6 Gran Coupe Base', 'Black', 'Black', 'Automatic', '$39,995', '(651) 323-2435');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
