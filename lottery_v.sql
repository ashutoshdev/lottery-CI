-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 14, 2019 at 02:36 PM
-- Server version: 5.6.46-cll-lve
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lottery_v`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_data` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `common`
--

CREATE TABLE `common` (
  `id` int(11) NOT NULL,
  `wallet_min` varchar(30) NOT NULL,
  `wallet_max` varchar(30) NOT NULL,
  `refund_min` varchar(30) NOT NULL,
  `refund_max` varchar(30) NOT NULL,
  `transfer_min` varchar(30) NOT NULL,
  `transfer_max` varchar(30) NOT NULL,
  `withdrawl_min` varchar(30) NOT NULL,
  `withdrawl_max` varchar(30) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `common`
--

INSERT INTO `common` (`id`, `wallet_min`, `wallet_max`, `refund_min`, `refund_max`, `transfer_min`, `transfer_max`, `withdrawl_min`, `withdrawl_max`, `createdAt`) VALUES
(1, '1', '10000', '100', '10000', '1', '1000', '100', '10000', '2019-11-25 18:22:13');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint(6) DEFAULT NULL,
  `phonecode` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `drawing`
--

CREATE TABLE `drawing` (
  `id` int(11) NOT NULL,
  `website_id` int(11) NOT NULL DEFAULT '0',
  `whiteball1` int(10) NOT NULL,
  `whiteball2` int(10) NOT NULL,
  `whiteball3` int(10) NOT NULL,
  `whiteball4` int(10) NOT NULL,
  `whiteball5` int(10) NOT NULL,
  `whiteball6` int(10) NOT NULL DEFAULT '0',
  `megaball` int(10) NOT NULL,
  `megaball1` int(11) NOT NULL DEFAULT '0',
  `latest_date` date NOT NULL,
  `latest_price` varchar(100) DEFAULT NULL,
  `latest_cash_value` varchar(100) DEFAULT NULL,
  `next_date` date NOT NULL,
  `next_price` varchar(100) DEFAULT NULL,
  `next_cash_value` varchar(100) DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drawing`
--

INSERT INTO `drawing` (`id`, `website_id`, `whiteball1`, `whiteball2`, `whiteball3`, `whiteball4`, `whiteball5`, `whiteball6`, `megaball`, `megaball1`, `latest_date`, `latest_price`, `latest_cash_value`, `next_date`, `next_price`, `next_cash_value`, `create_date`, `update_date`) VALUES
(1, 2, 5, 8, 10, 17, 48, 0, 23, 0, '2019-10-08', NULL, '$39 Million', '2019-10-11', '$60 Million', '$42.5 Million', '2019-10-09 14:50:59', NULL),
(2, 1, 6, 14, 36, 51, 54, 0, 4, 0, '2019-10-05', NULL, NULL, '2019-10-10', '$80 Million', '$57.2 Million', '2019-10-09 14:58:02', NULL),
(3, 6, 15, 19, 20, 45, 49, 0, 7, 8, '2019-10-04', NULL, NULL, '2019-10-11', '€ 29 Million ', NULL, '2019-10-09 14:59:11', NULL),
(4, 3, 7, 10, 15, 44, 49, 0, 3, 12, '2019-10-08', NULL, NULL, '2019-10-11', '€17 Million', NULL, '2019-10-09 14:59:50', NULL),
(5, 4, 2, 14, 19, 42, 45, 0, 5, 6, '2019-10-11', NULL, NULL, '2019-10-15', '£22 Million', NULL, '2019-10-13 10:39:41', NULL),
(6, 1, 12, 29, 34, 53, 65, 0, 23, 0, '2019-10-12', NULL, NULL, '2019-10-17', '$100 Million', '$69.4 Million', '2019-10-13 10:50:38', NULL),
(7, 2, 14, 22, 30, 37, 60, 0, 8, 0, '2019-10-11', NULL, '$41.2 Million', '2019-10-15', '$65 Million', '$44.7 Million', '2019-10-13 10:53:29', NULL),
(8, 6, 8, 12, 13, 39, 44, 0, 4, 9, '2019-10-11', NULL, NULL, '2019-10-18', '€ 39 Million ', NULL, '2019-10-13 10:53:39', NULL),
(9, 3, 2, 14, 19, 42, 45, 0, 5, 6, '2019-10-11', NULL, NULL, '2019-10-15', '€26 Million', NULL, '2019-10-13 10:54:24', NULL),
(10, 6, 2, 30, 34, 35, 45, 0, 1, 2, '2019-10-25', NULL, NULL, '2019-11-01', '€ 65 Million ', NULL, '2019-10-28 12:00:05', NULL),
(11, 5, 1, 2, 11, 17, 37, 0, 6, 0, '2019-10-26', NULL, NULL, '2019-10-30', '€ 4 Million', NULL, '2019-10-28 12:00:09', NULL),
(12, 3, 34, 37, 39, 40, 50, 0, 4, 10, '2019-10-25', NULL, NULL, '2019-10-29', '€71 Million', NULL, '2019-10-28 12:00:10', NULL),
(13, 1, 3, 20, 48, 54, 59, 0, 4, 0, '2019-10-26', NULL, NULL, '2019-10-31', '$140 Million', '$96.4 Million', '2019-10-28 12:00:13', NULL),
(14, 4, 34, 37, 39, 40, 50, 0, 4, 10, '2019-10-25', NULL, NULL, '2019-10-29', '$ 140 Million', NULL, '2019-10-28 12:00:15', NULL),
(15, 3, 16, 18, 28, 42, 49, 0, 5, 10, '2019-10-29', NULL, NULL, '2019-11-01', '€80 Million', NULL, '2019-10-30 00:00:07', NULL),
(16, 4, 16, 18, 28, 42, 49, 0, 5, 10, '2019-10-29', NULL, NULL, '2019-11-02', '$ 140 Million', NULL, '2019-10-30 00:00:15', NULL),
(17, 1, 19, 22, 52, 56, 67, 0, 21, 0, '2019-10-30', NULL, NULL, '2019-11-03', '$150 Million', '$103.3 Million', '2019-10-31 00:00:12', NULL),
(18, 5, 11, 22, 23, 28, 44, 0, 9, 0, '2019-10-30', NULL, NULL, '2019-11-02', '€ 6 Million', NULL, '2019-10-31 12:00:07', NULL),
(19, 6, 3, 17, 31, 34, 40, 0, 1, 2, '2019-11-01', NULL, NULL, '2019-11-08', '€ 79 Million ', NULL, '2019-11-02 00:00:06', NULL),
(20, 4, 2, 20, 39, 44, 48, 0, 5, 7, '2019-11-01', NULL, NULL, '2019-11-05', '$ 150 Million', NULL, '2019-11-02 00:00:11', NULL),
(21, 3, 2, 20, 39, 44, 48, 0, 5, 7, '2019-11-01', NULL, NULL, '2019-11-05', '€86 Million', NULL, '2019-11-02 00:00:14', NULL),
(22, 1, 3, 23, 32, 37, 58, 0, 22, 0, '2019-11-02', NULL, NULL, '2019-11-07', '$40 Million', '$28.0 Million', '2019-11-03 00:00:11', NULL),
(23, 5, 6, 15, 17, 21, 25, 0, 3, 0, '2019-11-02', NULL, NULL, '2019-11-06', '€ 8 Million', NULL, '2019-11-04 12:00:12', NULL),
(24, 3, 9, 14, 25, 33, 48, 0, 2, 12, '2019-11-05', NULL, NULL, '2019-11-08', '€96 Million', NULL, '2019-11-06 00:00:11', NULL),
(25, 4, 9, 14, 25, 33, 48, 0, 2, 12, '2019-11-05', NULL, NULL, '2019-11-09', '$ 145 Million', NULL, '2019-11-06 00:00:17', NULL),
(26, 1, 15, 28, 46, 62, 64, 0, 17, 0, '2019-11-06', NULL, NULL, '2019-11-10', '$50 Million', '$34.9 Million', '2019-11-07 00:00:11', NULL),
(27, 5, 7, 11, 32, 39, 45, 0, 4, 0, '2019-11-06', NULL, NULL, '2019-11-09', '€ 11 Million', NULL, '2019-11-07 12:00:14', NULL),
(28, 6, 14, 20, 23, 39, 49, 0, 4, 10, '2019-11-08', NULL, NULL, '2019-11-15', '€ 90 Million ', NULL, '2019-11-09 00:00:07', NULL),
(29, 3, 8, 17, 20, 23, 45, 0, 2, 8, '2019-11-08', NULL, NULL, '2019-11-12', '€104 Million', NULL, '2019-11-09 00:00:12', NULL),
(30, 4, 8, 17, 20, 23, 45, 0, 2, 8, '2019-11-08', NULL, NULL, '2019-11-12', '$ 163 Million', NULL, '2019-11-09 00:00:19', NULL),
(31, 1, 14, 17, 35, 38, 60, 0, 25, 0, '2019-11-09', NULL, NULL, '2019-11-14', '$60 Million', '$40.3 Million', '2019-11-10 00:00:07', NULL),
(32, 5, 9, 28, 31, 33, 40, 0, 7, 0, '2019-11-09', NULL, NULL, '2019-11-13', '€ 12 Million', NULL, '2019-11-11 12:00:12', NULL),
(33, 3, 1, 21, 23, 25, 39, 0, 2, 4, '2019-11-12', NULL, NULL, '2019-11-15', '€114 Million', NULL, '2019-11-13 00:00:12', NULL),
(34, 4, 1, 21, 23, 25, 39, 0, 2, 4, '2019-11-12', NULL, NULL, '2019-11-16', '$ 178 Million', NULL, '2019-11-13 00:00:21', NULL),
(35, 1, 23, 26, 27, 28, 66, 0, 11, 0, '2019-11-13', NULL, NULL, '2019-11-17', '$70 Million', '$47.0 Million', '2019-11-14 00:00:10', NULL),
(36, 5, 17, 18, 20, 29, 38, 0, 0, 0, '2019-11-13', NULL, NULL, '2019-11-16', '€ 15 Million', NULL, '2019-11-14 12:00:10', NULL),
(37, 6, 10, 19, 24, 30, 39, 0, 2, 4, '2019-11-15', NULL, NULL, '2019-11-22', '€ 90 Million ', NULL, '2019-11-16 00:00:07', NULL),
(38, 3, 3, 13, 20, 32, 34, 0, 4, 11, '2019-11-15', NULL, NULL, '2019-11-19', '€123 Million', NULL, '2019-11-16 00:00:09', NULL),
(39, 4, 3, 13, 20, 32, 34, 0, 4, 11, '2019-11-15', NULL, NULL, '2019-11-19', '$ 192 Million', NULL, '2019-11-16 00:00:18', NULL),
(40, 1, 14, 22, 26, 55, 63, 0, 26, 0, '2019-11-16', NULL, NULL, '2019-11-21', '$80 Million', '$54.8 Million', '2019-11-17 00:00:14', NULL),
(41, 5, 1, 4, 16, 25, 28, 0, 1, 0, '2019-11-16', NULL, NULL, '2019-11-20', '€ 1 Million', NULL, '2019-11-18 12:00:09', NULL),
(42, 3, 8, 10, 15, 30, 42, 0, 4, 6, '2019-11-19', NULL, NULL, '2019-11-22', '€17 Million', NULL, '2019-11-20 00:00:07', NULL),
(43, 4, 8, 10, 15, 30, 42, 0, 4, 6, '2019-11-19', NULL, NULL, '2019-11-23', '$ 208 Million', NULL, '2019-11-20 00:00:16', NULL),
(44, 1, 7, 15, 39, 40, 57, 0, 12, 0, '2019-11-20', NULL, NULL, '2019-11-24', '$90 Million', '$61.7 Million', '2019-11-21 00:00:12', NULL),
(45, 5, 2, 7, 10, 18, 31, 0, 0, 0, '2019-11-20', NULL, NULL, '2019-11-23', '€ 2 Million', NULL, '2019-11-21 12:00:15', NULL),
(46, 6, 3, 12, 24, 37, 38, 0, 3, 7, '2019-11-22', NULL, NULL, '2019-11-29', '€ 10 Million ', NULL, '2019-11-23 00:00:06', NULL),
(47, 3, 3, 21, 32, 34, 48, 0, 3, 11, '2019-11-22', NULL, NULL, '2019-11-26', '€25 Million', NULL, '2019-11-23 00:00:11', NULL),
(48, 4, 3, 21, 32, 34, 48, 0, 3, 11, '2019-11-22', NULL, NULL, '2019-11-26', '$ 226 Million', NULL, '2019-11-23 00:00:16', NULL),
(49, 1, 28, 35, 38, 61, 66, 0, 23, 0, '2019-11-23', NULL, NULL, '2019-11-28', '$100 Million', '$68.9 Million', '2019-11-24 00:00:07', NULL),
(50, 5, 5, 11, 24, 26, 28, 0, 5, 0, '2019-11-23', NULL, NULL, '2019-11-27', '€ 4 Million', NULL, '2019-11-25 12:00:13', NULL),
(51, 3, 2, 3, 15, 19, 34, 0, 5, 8, '2019-11-26', NULL, NULL, '2019-11-29', '€37 Million', NULL, '2019-11-27 00:00:15', NULL),
(52, 4, 2, 3, 15, 19, 34, 0, 5, 8, '2019-11-26', NULL, NULL, '2019-11-30', '$ 243 Million', NULL, '2019-11-27 00:00:16', NULL),
(53, 1, 15, 26, 37, 53, 55, 0, 21, 0, '2019-11-27', NULL, NULL, '2019-12-01', '$110 Million', '$75.8 Million', '2019-11-28 00:00:10', NULL),
(54, 5, 1, 12, 20, 33, 40, 0, 9, 0, '2019-11-27', NULL, NULL, '2019-11-30', '€ 6 Million', NULL, '2019-11-28 12:00:17', NULL),
(55, 3, 3, 7, 12, 42, 50, 0, 6, 8, '2019-11-29', NULL, NULL, '2019-12-03', '€47 Million', NULL, '2019-11-30 00:00:10', NULL),
(56, 6, 2, 3, 30, 31, 45, 0, 6, 8, '2019-11-29', NULL, NULL, '2019-12-06', '€ 23 Million ', NULL, '2019-11-30 00:00:10', NULL),
(57, 4, 3, 7, 12, 42, 50, 0, 6, 8, '2019-11-29', NULL, NULL, '2019-12-03', '$ 266 Million', NULL, '2019-11-30 00:00:18', NULL),
(58, 1, 15, 35, 42, 63, 68, 0, 18, 0, '2019-11-30', NULL, NULL, '2019-12-05', '$120 Million', '$82.7 Million', '2019-12-02 00:00:07', NULL),
(59, 5, 5, 33, 38, 42, 43, 0, 5, 0, '2019-11-30', NULL, NULL, '2019-12-04', '€ 8 Million', NULL, '2019-12-02 12:00:12', NULL),
(60, 2, 6, 8, 31, 50, 65, 0, 9, 0, '2019-11-29', NULL, '$166.5 Million', '2019-12-03', '$266 Million', '$182.3 Million', '2019-12-03 11:21:29', NULL),
(61, 2, 23, 43, 60, 63, 69, 0, 19, 0, '2019-12-03', NULL, '$182.6 Million', '2019-12-06', '$285 Million', '$195.7 Million', '2019-12-04 00:00:06', NULL),
(62, 3, 18, 31, 32, 38, 48, 0, 4, 12, '2019-12-03', NULL, NULL, '2019-12-06', '€17 Million', NULL, '2019-12-04 00:00:12', NULL),
(63, 4, 18, 31, 32, 38, 48, 0, 4, 12, '2019-12-03', NULL, NULL, '2019-12-07', '$ 285 Million', NULL, '2019-12-04 00:00:19', NULL),
(64, 1, 8, 27, 44, 51, 61, 0, 14, 0, '2019-12-04', NULL, NULL, '2019-12-08', '$130 Million', '$89.6 Million', '2019-12-05 00:00:10', NULL),
(65, 5, 12, 13, 35, 45, 46, 0, 2, 0, '2019-12-04', NULL, NULL, '2019-12-11', '€ 11 Million', NULL, '2019-12-05 12:00:11', NULL),
(66, 2, 20, 31, 40, 46, 61, 0, 20, 0, '2019-12-06', NULL, '$192.6 Million', '2019-12-10', '$314 Million', '$212.3 Million', '2019-12-07 00:00:05', NULL),
(67, 6, 8, 14, 23, 30, 45, 0, 1, 9, '2019-12-06', NULL, NULL, '2019-12-13', '€ 10 Million ', NULL, '2019-12-07 00:00:06', NULL),
(68, 3, 1, 3, 27, 39, 46, 0, 1, 10, '2019-12-06', NULL, NULL, '2019-12-10', '€25 Million', NULL, '2019-12-07 00:00:10', NULL),
(69, 4, 1, 3, 27, 39, 46, 0, 1, 10, '2019-12-06', NULL, NULL, '2019-12-10', '$ 314 Million', NULL, '2019-12-07 00:00:18', NULL),
(70, 1, 18, 42, 53, 62, 66, 0, 25, 0, '2019-12-07', NULL, NULL, '2019-12-12', '$140 Million', '$95.4 Million', '2019-12-08 00:00:09', NULL),
(71, 5, 2, 11, 13, 19, 20, 0, 4, 0, '2019-12-07', NULL, NULL, '2019-12-11', '€ 13 Million', NULL, '2019-12-09 12:00:11', NULL),
(72, 2, 18, 31, 46, 54, 61, 0, 25, 0, '2019-12-10', NULL, '$213.1 Million', '2019-12-13', '$340 Million', '$230.8 Million', '2019-12-11 00:00:10', NULL),
(73, 3, 2, 10, 19, 21, 47, 0, 2, 8, '2019-12-10', NULL, NULL, '2019-12-13', '€37 Million', NULL, '2019-12-11 00:00:14', NULL),
(74, 4, 2, 10, 19, 21, 47, 0, 2, 8, '2019-12-10', NULL, NULL, '2019-12-14', '$ 340 Million', NULL, '2019-12-11 00:00:18', NULL),
(75, 1, 24, 29, 42, 44, 63, 0, 10, 0, '2019-12-11', NULL, NULL, '2019-12-15', '$150 Million', '$102.2 Million', '2019-12-12 00:00:10', NULL),
(76, 5, 14, 25, 27, 32, 36, 0, 5, 0, '2019-12-11', NULL, NULL, '2019-12-14', '€ 16 Million', NULL, '2019-12-12 12:00:12', NULL),
(77, 6, 25, 31, 38, 49, 50, 0, 5, 10, '2019-12-13', NULL, NULL, '2019-12-20', '€ 10 Million ', NULL, '2019-12-14 00:00:07', NULL),
(78, 2, 17, 21, 29, 39, 56, 0, 22, 0, '2019-12-13', NULL, '$230 Million', '2019-12-17', '$372 Million', '$251.6 Million', '2019-12-14 00:00:09', NULL),
(79, 3, 9, 16, 18, 23, 32, 0, 2, 10, '2019-12-13', NULL, NULL, '2019-12-17', '€47 Million', NULL, '2019-12-14 00:00:13', NULL),
(80, 4, 9, 16, 18, 23, 32, 0, 2, 10, '2019-12-13', NULL, NULL, '2019-12-17', '$ 372 Million', NULL, '2019-12-14 00:00:20', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_cart`
--

CREATE TABLE `tbl_cart` (
  `id` int(11) NOT NULL,
  `web_id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `date` varchar(30) NOT NULL,
  `white1` int(11) NOT NULL,
  `white2` int(11) NOT NULL,
  `white3` int(11) NOT NULL,
  `white4` int(11) NOT NULL,
  `white5` int(11) NOT NULL,
  `white6` int(11) DEFAULT NULL,
  `yellow2` int(11) DEFAULT NULL,
  `yellow1` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paid_status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_cart`
--

INSERT INTO `tbl_cart` (`id`, `web_id`, `user_id`, `date`, `white1`, `white2`, `white3`, `white4`, `white5`, `white6`, `yellow2`, `yellow1`, `total_price`, `createdAt`, `paid_status`) VALUES
(1, 2, '62043036925', '', 47, 80, 30, 79, 32, NULL, NULL, 41, 20, '2019-09-26 16:58:44', 0),
(2, 2, '62043036925', '', 2, 28, 63, 96, 36, NULL, NULL, 48, 20, '2019-09-26 16:58:44', 0),
(3, 2, '62043036925', '', 27, 64, 80, 95, 56, NULL, NULL, 96, 20, '2019-09-26 16:58:44', 0),
(4, 2, '62043036925', '', 30, 50, 93, 9, 53, NULL, NULL, 53, 20, '2019-09-26 16:58:44', 0),
(5, 2, '62205654940', '', 33, 73, 12, 95, 84, NULL, NULL, 82, 20, '2019-09-26 17:27:30', 0),
(6, 2, '62205654940', '', 2, 29, 75, 31, 72, NULL, NULL, 70, 20, '2019-09-26 17:27:30', 0),
(7, 2, '62205654940', '', 33, 72, 21, 31, 16, NULL, NULL, 20, 20, '2019-09-26 17:27:30', 0),
(8, 2, '62205654940', '', 22, 57, 99, 88, 83, NULL, NULL, 60, 20, '2019-09-26 17:27:30', 0),
(13, 2, '23144946899', '2019-09-27', 16, 46, 54, 13, 48, NULL, NULL, 56, 20, '2019-09-26 19:00:11', 0),
(14, 2, '23144946899', '2019-09-27', 68, 16, 72, 40, 65, NULL, NULL, 70, 20, '2019-09-26 19:00:11', 0),
(15, 2, '23144946899', '2019-09-27', 21, 38, 7, 83, 94, NULL, NULL, 55, 20, '2019-09-26 19:00:11', 0),
(16, 2, '23144946899', '2019-09-27', 72, 1, 60, 8, 57, NULL, NULL, 93, 20, '2019-09-26 19:00:11', 0),
(17, 2, '59304966458', '2019-10-01', 96, 94, 1, 97, 8, NULL, NULL, 47, 20, '2019-09-30 18:21:27', 0),
(18, 2, '59304966458', '2019-10-01', 76, 41, 59, 21, 64, NULL, NULL, 57, 20, '2019-09-30 18:21:27', 0),
(26, 2, '98776519265', '2019-10-08', 11, 14, 62, 25, 76, NULL, NULL, 75, 20, '2019-10-08 15:09:40', 0),
(27, 2, '77423052583', '2019-10-11', 19, 18, 98, 3, 46, NULL, NULL, 86, 20, '2019-10-09 14:51:22', 0),
(28, 2, '77423052583', '2019-10-11', 47, 16, 52, 34, 61, NULL, NULL, 98, 20, '2019-10-09 14:51:22', 0),
(29, 2, '77423052583', '2019-10-11', 92, 68, 59, 70, 81, NULL, NULL, 37, 20, '2019-10-09 14:51:22', 0),
(30, 2, '77423052583', '2019-10-11', 2, 54, 26, 53, 88, NULL, NULL, 83, 20, '2019-10-09 14:51:22', 0),
(36, 1, '52604874017', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-28 17:18:49', 0),
(37, 1, '52604874017', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-28 17:18:49', 0),
(38, 1, '46661008052', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 07:15:07', 0),
(39, 1, '46661008052', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 07:16:09', 0),
(40, 1, '46661008052', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 07:16:09', 0),
(41, 1, '46661008052', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 07:16:09', 0),
(42, 1, '46661008052', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 07:16:09', 0),
(43, 1, '46661008052', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 07:16:09', 0),
(44, 1, '12434599139', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 08:25:35', 0),
(45, 1, '29', '2019-10-31', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '2019-10-29 09:13:39', 0),
(46, 6, '82494639648', '2019-11-01', 1, 5, 33, 38, 48, NULL, 34, 1, 10, '2019-10-29 09:54:03', 0),
(47, 6, '82494639648', '2019-11-01', 2, 3, 5, 28, 44, NULL, 55, 1, 10, '2019-10-29 09:54:03', 0),
(53, 1, '29', '2019-11-03', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(54, 1, '29', '2019-11-07', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(55, 1, '29', '2019-11-10', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(56, 1, '29', '2019-11-17', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(57, 1, '29', '2019-11-14', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(58, 1, '29', '2019-11-24', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(59, 1, '29', '2019-11-21', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(60, 1, '29', '2019-12-01', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(61, 1, '29', '2019-11-28', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(62, 1, '29', '2019-12-08', 6, 22, 26, 35, 42, NULL, NULL, 1, 1, '2019-11-02 11:45:31', 0),
(65, 1, '32', '2019-11-28', 1, 2, 3, 4, 5, NULL, NULL, 1, 1, '2019-11-26 14:53:25', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `message` text NOT NULL,
  `email` varchar(250) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `message`, `email`, `createdAt`) VALUES
(1, 'Rakesh', 'test message', 'kumar@gmail.com', '2019-08-24 20:24:40'),
(2, 'Rakesh', 'test message', 'kumar@gmail.com', '2019-08-24 20:25:20'),
(3, 'dsa', 'sfsdfsd', 'assf@gfd.cm', '2019-08-24 21:03:04'),
(4, 'maroun dina ', 'test tes ', 'maroun@mdinadmcc.com', '2019-11-01 11:06:36'),
(5, 'afsa', 'gjhasd', 'fsdf@gmail.com', '2019-12-09 20:12:47'),
(6, 'Test', 'tetettete', 'test@gmail.com', '2019-12-09 20:54:10'),
(7, 'Test', 'tetettete', 'test@gmail.com', '2019-12-09 20:58:10');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dates`
--

CREATE TABLE `tbl_dates` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `date_con` datetime NOT NULL,
  `web_id` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_dates`
--

INSERT INTO `tbl_dates` (`id`, `date`, `date_con`, `web_id`, `createdAt`) VALUES
(1, '2019-09-27', '2019-09-27 18:00:00', 3, '2019-09-26 18:35:07'),
(2, '2019-10-01', '2019-10-01 18:00:00', 3, '2019-09-26 18:35:07'),
(3, '2019-09-27', '2019-09-27 18:00:00', 2, '2019-09-26 18:59:26'),
(4, '2019-10-01', '2019-10-01 18:00:00', 2, '2019-09-30 18:20:34'),
(5, '2019-10-04', '2019-10-04 18:00:00', 2, '2019-10-03 11:38:56'),
(6, '2019-10-05', '2019-10-05 18:00:00', 1, '2019-10-03 11:43:26'),
(7, '2019-10-04', '2019-10-04 18:00:00', 6, '2019-10-03 11:43:54'),
(8, '2019-10-04', '2019-10-04 18:00:00', 3, '2019-10-03 11:44:22'),
(9, '2019-10-04', '2019-10-04 18:00:00', 4, '2019-10-03 11:44:59'),
(10, '2019-10-04', '2019-10-04 18:00:00', 5, '2019-10-03 12:08:36'),
(11, '2019-10-08', '2019-10-08 18:00:00', 5, '2019-10-03 12:08:36'),
(12, '2019-10-08', '2019-10-08 18:00:00', 2, '2019-10-08 12:30:21'),
(13, '2019-10-08', '2019-10-08 18:00:00', 4, '2019-10-08 12:33:49'),
(14, '2019-10-10', '2019-10-10 18:00:00', 1, '2019-10-08 12:38:20'),
(15, '2019-10-11', '2019-10-11 18:00:00', 6, '2019-10-08 12:38:29'),
(16, '2019-10-08', '2019-10-08 18:00:00', 3, '2019-10-08 12:38:56'),
(17, '2019-10-11', '2019-10-11 18:00:00', 2, '2019-10-09 14:46:48'),
(18, '2019-10-11', '2019-10-11 18:00:00', 3, '2019-10-09 14:59:50'),
(19, '2019-10-15', '2019-10-15 18:00:00', 4, '2019-10-13 10:39:41'),
(20, '2019-10-17', '2019-10-17 18:00:00', 1, '2019-10-13 10:50:43'),
(21, '2019-10-15', '2019-10-15 18:00:00', 2, '2019-10-13 10:53:29'),
(22, '2019-10-18', '2019-10-18 18:00:00', 6, '2019-10-13 10:53:39'),
(23, '2019-10-15', '2019-10-15 18:00:00', 3, '2019-10-13 10:54:24'),
(24, '2019-10-31', '2019-10-31 18:00:00', 1, '2019-10-28 09:54:17'),
(25, '2019-11-07', '2019-11-07 18:00:00', 1, '2019-10-28 09:54:17'),
(26, '2019-11-14', '2019-11-14 18:00:00', 1, '2019-10-28 09:54:17'),
(27, '2019-11-21', '2019-11-21 18:00:00', 1, '2019-10-28 09:54:17'),
(28, '2019-11-28', '2019-11-28 18:00:00', 1, '2019-10-28 09:54:17'),
(29, '2019-11-03', '2019-11-03 18:00:00', 1, '2019-10-28 09:54:17'),
(30, '2019-11-10', '2019-11-10 18:00:00', 1, '2019-10-28 09:54:17'),
(31, '2019-11-17', '2019-11-17 18:00:00', 1, '2019-10-28 09:54:17'),
(32, '2019-11-24', '2019-11-24 18:00:00', 1, '2019-10-28 09:54:17'),
(33, '2019-12-01', '2019-12-01 18:00:00', 1, '2019-10-28 09:54:17'),
(34, '2019-10-30', '2019-10-30 18:00:00', 2, '2019-10-28 09:54:42'),
(35, '2019-11-06', '2019-11-06 18:00:00', 2, '2019-10-28 09:54:42'),
(36, '2019-11-13', '2019-11-13 18:00:00', 2, '2019-10-28 09:54:42'),
(37, '2019-11-20', '2019-11-20 18:00:00', 2, '2019-10-28 09:54:42'),
(38, '2019-11-27', '2019-11-27 18:00:00', 2, '2019-10-28 09:54:42'),
(39, '2019-11-02', '2019-11-02 18:00:00', 2, '2019-10-28 09:54:42'),
(40, '2019-11-09', '2019-11-09 18:00:00', 2, '2019-10-28 09:54:42'),
(41, '2019-11-16', '2019-11-16 18:00:00', 2, '2019-10-28 09:54:42'),
(42, '2019-11-23', '2019-11-23 18:00:00', 2, '2019-10-28 09:54:42'),
(43, '2019-11-30', '2019-11-30 18:00:00', 2, '2019-10-28 09:54:42'),
(44, '2019-10-30', '2019-10-30 18:00:00', 5, '2019-10-28 09:55:35'),
(45, '2019-11-06', '2019-11-06 18:00:00', 5, '2019-10-28 09:55:35'),
(46, '2019-11-13', '2019-11-13 18:00:00', 5, '2019-10-28 09:55:35'),
(47, '2019-11-20', '2019-11-20 18:00:00', 5, '2019-10-28 09:55:35'),
(48, '2019-11-27', '2019-11-27 18:00:00', 5, '2019-10-28 09:55:35'),
(49, '2019-11-02', '2019-11-02 18:00:00', 5, '2019-10-28 09:55:35'),
(50, '2019-11-09', '2019-11-09 18:00:00', 5, '2019-10-28 09:55:35'),
(51, '2019-11-16', '2019-11-16 18:00:00', 5, '2019-10-28 09:55:35'),
(52, '2019-11-23', '2019-11-23 18:00:00', 5, '2019-10-28 09:55:35'),
(53, '2019-11-30', '2019-11-30 18:00:00', 5, '2019-10-28 09:55:35'),
(54, '2019-10-30', '2019-10-30 18:00:00', 3, '2019-10-28 10:08:43'),
(55, '2019-11-06', '2019-11-06 18:00:00', 3, '2019-10-28 10:08:43'),
(56, '2019-11-13', '2019-11-13 18:00:00', 3, '2019-10-28 10:08:43'),
(57, '2019-11-20', '2019-11-20 18:00:00', 3, '2019-10-28 10:08:43'),
(58, '2019-11-27', '2019-11-27 18:00:00', 3, '2019-10-28 10:08:43'),
(59, '2019-11-02', '2019-11-02 18:00:00', 3, '2019-10-28 10:08:43'),
(60, '2019-11-09', '2019-11-09 18:00:00', 3, '2019-10-28 10:08:43'),
(61, '2019-11-16', '2019-11-16 18:00:00', 3, '2019-10-28 10:08:43'),
(62, '2019-11-23', '2019-11-23 18:00:00', 3, '2019-10-28 10:08:43'),
(63, '2019-11-30', '2019-11-30 18:00:00', 3, '2019-10-28 10:08:43'),
(64, '2019-10-30', '2019-10-30 18:00:00', 4, '2019-10-28 10:08:58'),
(65, '2019-11-06', '2019-11-06 18:00:00', 4, '2019-10-28 10:08:58'),
(66, '2019-11-13', '2019-11-13 18:00:00', 4, '2019-10-28 10:08:58'),
(67, '2019-11-20', '2019-11-20 18:00:00', 4, '2019-10-28 10:08:58'),
(68, '2019-11-27', '2019-11-27 18:00:00', 4, '2019-10-28 10:08:58'),
(69, '2019-11-02', '2019-11-02 18:00:00', 4, '2019-10-28 10:08:58'),
(70, '2019-11-09', '2019-11-09 18:00:00', 4, '2019-10-28 10:08:58'),
(71, '2019-11-16', '2019-11-16 18:00:00', 4, '2019-10-28 10:08:58'),
(72, '2019-11-23', '2019-11-23 18:00:00', 4, '2019-10-28 10:08:58'),
(73, '2019-11-30', '2019-11-30 18:00:00', 4, '2019-10-28 10:08:58'),
(74, '2019-11-01', '2019-11-01 18:00:00', 6, '2019-10-28 19:00:05'),
(75, '2019-10-29', '2019-10-29 18:00:00', 3, '2019-10-28 19:00:10'),
(76, '2019-10-29', '2019-10-29 18:00:00', 4, '2019-10-28 19:00:15'),
(77, '2019-11-01', '2019-11-01 18:00:00', 3, '2019-10-30 07:00:07'),
(78, '2019-11-02', '2019-11-02 18:00:00', 6, '2019-11-01 14:11:53'),
(79, '2019-11-09', '2019-11-09 18:00:00', 6, '2019-11-01 14:11:53'),
(80, '2019-11-16', '2019-11-16 18:00:00', 6, '2019-11-01 14:11:53'),
(81, '2019-11-23', '2019-11-23 18:00:00', 6, '2019-11-01 14:11:53'),
(82, '2019-11-30', '2019-11-30 18:00:00', 6, '2019-11-01 14:11:53'),
(83, '2019-12-07', '2019-12-07 18:00:00', 6, '2019-11-01 14:11:53'),
(84, '2019-12-14', '2019-12-14 18:00:00', 6, '2019-11-01 14:11:53'),
(85, '2019-12-21', '2019-12-21 18:00:00', 6, '2019-11-01 14:11:53'),
(86, '2019-12-28', '2019-12-28 18:00:00', 6, '2019-11-01 14:11:53'),
(87, '2020-01-04', '2020-01-04 18:00:00', 6, '2019-11-01 14:11:53'),
(88, '2019-11-08', '2019-11-08 18:00:00', 6, '2019-11-02 07:00:06'),
(89, '2019-11-05', '2019-11-05 18:00:00', 4, '2019-11-02 07:00:11'),
(90, '2019-11-05', '2019-11-05 18:00:00', 3, '2019-11-02 07:00:14'),
(91, '2019-12-08', '2019-12-08 18:00:00', 1, '2019-11-02 11:45:31'),
(92, '2019-12-05', '2019-12-05 18:00:00', 1, '2019-11-02 12:02:24'),
(93, '2019-11-08', '2019-11-08 18:00:00', 3, '2019-11-06 07:00:12'),
(94, '2019-11-15', '2019-11-15 18:00:00', 6, '2019-11-09 07:00:07'),
(95, '2019-11-12', '2019-11-12 18:00:00', 3, '2019-11-09 07:00:12'),
(96, '2019-11-12', '2019-11-12 18:00:00', 4, '2019-11-09 07:00:19'),
(97, '2019-11-15', '2019-11-15 18:00:00', 3, '2019-11-13 07:00:12'),
(98, '2019-11-22', '2019-11-22 18:00:00', 6, '2019-11-16 07:00:07'),
(99, '2019-11-19', '2019-11-19 18:00:00', 3, '2019-11-16 07:00:09'),
(100, '2019-11-19', '2019-11-19 18:00:00', 4, '2019-11-16 07:00:18'),
(101, '2019-11-22', '2019-11-22 18:00:00', 3, '2019-11-20 07:00:07'),
(102, '2019-11-29', '2019-11-29 18:00:00', 6, '2019-11-23 07:00:06'),
(103, '2019-11-26', '2019-11-26 18:00:00', 3, '2019-11-23 07:00:11'),
(104, '2019-11-26', '2019-11-26 18:00:00', 4, '2019-11-23 07:00:16'),
(105, '2019-11-29', '2019-11-29 18:00:00', 3, '2019-11-27 07:00:15'),
(106, '2019-12-12', '2019-12-12 18:00:00', 1, '2019-11-27 11:48:26'),
(107, '2019-12-15', '2019-12-15 18:00:00', 1, '2019-11-27 11:48:26'),
(108, '2019-12-19', '2019-12-19 18:00:00', 1, '2019-11-27 11:48:26'),
(109, '2019-12-22', '2019-12-22 18:00:00', 1, '2019-11-27 11:48:26'),
(110, '2019-12-26', '2019-12-26 18:00:00', 1, '2019-11-27 11:48:26'),
(111, '2019-12-29', '2019-12-29 18:00:00', 1, '2019-11-27 11:48:26'),
(112, '2020-01-02', '2020-01-02 18:00:00', 1, '2019-11-27 11:48:26'),
(113, '2020-01-05', '2020-01-05 18:00:00', 1, '2019-11-27 11:48:26'),
(114, '2019-12-03', '2019-12-03 18:00:00', 3, '2019-11-30 07:00:10'),
(115, '2019-12-06', '2019-12-06 18:00:00', 6, '2019-11-30 07:00:10'),
(116, '2019-12-03', '2019-12-03 18:00:00', 4, '2019-11-30 07:00:18'),
(117, '2019-12-04', '2019-12-04 18:00:00', 5, '2019-12-02 19:00:12'),
(118, '2019-12-03', '2019-12-03 18:00:00', 2, '2019-12-03 18:21:29'),
(119, '2019-12-06', '2019-12-06 18:00:00', 2, '2019-12-04 07:00:07'),
(120, '2019-12-06', '2019-12-06 18:00:00', 3, '2019-12-04 07:00:12'),
(121, '2019-12-07', '2019-12-07 18:00:00', 4, '2019-12-04 07:00:19'),
(122, '2019-12-11', '2019-12-11 18:00:00', 5, '2019-12-05 19:00:11'),
(123, '2019-12-10', '2019-12-10 18:00:00', 2, '2019-12-07 07:00:05'),
(124, '2019-12-13', '2019-12-13 18:00:00', 6, '2019-12-07 07:00:06'),
(125, '2019-12-10', '2019-12-10 18:00:00', 3, '2019-12-07 07:00:10'),
(126, '2019-12-10', '2019-12-10 18:00:00', 4, '2019-12-07 07:00:18'),
(127, '2020-01-09', '2020-01-09 18:00:00', 1, '2019-12-10 08:19:01'),
(128, '2020-01-12', '2020-01-12 18:00:00', 1, '2019-12-10 08:19:01'),
(129, '2019-12-13', '2019-12-13 18:00:00', 2, '2019-12-11 07:00:10'),
(130, '2019-12-13', '2019-12-13 18:00:00', 3, '2019-12-11 07:00:14'),
(131, '2019-12-14', '2019-12-14 18:00:00', 4, '2019-12-11 07:00:18'),
(132, '2019-12-14', '2019-12-14 18:00:00', 5, '2019-12-12 19:00:12'),
(133, '2019-12-20', '2019-12-20 18:00:00', 6, '2019-12-14 07:00:07'),
(134, '2019-12-17', '2019-12-17 18:00:00', 2, '2019-12-14 07:00:09'),
(135, '2019-12-17', '2019-12-17 18:00:00', 3, '2019-12-14 07:00:13'),
(136, '2019-12-17', '2019-12-17 18:00:00', 4, '2019-12-14 07:00:20');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_emails`
--

CREATE TABLE `tbl_emails` (
  `id` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(220) NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_emails`
--

INSERT INTO `tbl_emails` (`id`, `type`, `name`, `email`, `createdat`) VALUES
(1, 'contact_us', 'Contact Us', 'kumarraku0@gmail.com', '2019-08-24 19:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_faqs`
--

CREATE TABLE `tbl_faqs` (
  `id` int(11) NOT NULL,
  `question` text NOT NULL,
  `answer` text NOT NULL,
  `createdat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_faqs`
--

INSERT INTO `tbl_faqs` (`id`, `question`, `answer`, `createdat`) VALUES
(5, 'Why play through esmartgames.com?', 'esmartgames.com allows you to play international lotteries in the fastest, easiest and most convenient way possible – from anywhere, at anytime. Lotteries such as the US Powerball and EuroMillions are extremely popular worldwide but, until recently, they were not accessible to everyone, only those who lived or visited the specific lottery’s location. But not longer! Now you can partake in these massive jackpots from wherever you may be! Thanks to Lottotime, you can play the biggest international lottery games via the internet in a safe, secure and fast way.', '2019-10-03 11:52:48'),
(6, 'How do I get started with esmartgames.com?', '1. Register an account with esmartgames.com\r\n\r\n2. Wait for confirmation of your successful registration\r\n\r\n3. Deposit into your personal account\r\n\r\n4. Pick your lucky numbers', '2019-10-03 11:53:16'),
(7, 'How do I purchase a ticket?', 'Once your wallet has Amount equivalent to lottery ticket amount, you can Play-lottery and purchase tickets.', '2019-10-03 11:53:45'),
(8, 'How do I know if I’ve won?', 'Esmartgames notifies you of any winnings via email. Additionally, lottery results are published on our results page.', '2019-10-03 11:54:08'),
(9, 'How do I collect my prize?', 'eSsmartGames will deposited winning amount to your wallet , from there you can make a withdrawal request , Upon that withdrawal request amount will be transferred to your personal bank account.', '2019-10-03 11:54:31'),
(10, 'My question does not feature on your FAQ', 'Any further queries you may have that have not been addressed in our FAQ can be submitted here where a consultant will promptly respond to you directly.', '2019-10-03 11:54:56');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_last_login`
--

CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_last_login`
--

INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(1, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Windows 8', '2019-08-13 00:49:11'),
(2, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Windows 8', '2019-08-20 01:34:22'),
(3, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Windows 8', '2019-08-20 02:03:32'),
(4, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Windows 8', '2019-08-20 23:54:06'),
(5, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Windows 8', '2019-08-21 00:01:45'),
(6, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '::1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Windows NT 6.2; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Windows 8', '2019-08-21 01:29:43'),
(7, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-21 18:01:21'),
(8, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-21 20:54:54'),
(9, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 17:49:52'),
(10, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 17:53:26'),
(11, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 18:14:19'),
(12, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 19:29:34'),
(13, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 20:19:00'),
(14, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 20:37:26'),
(15, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-22 20:42:06'),
(16, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-24 09:22:26'),
(17, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-24 21:53:40'),
(18, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-25 07:10:35'),
(19, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 12:18:18'),
(20, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 16:37:55'),
(21, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 16:55:12'),
(22, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 17:30:24'),
(23, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 18:44:53'),
(24, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 18:45:09'),
(25, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-26 19:04:56'),
(26, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-27 02:18:07'),
(27, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-27 02:18:53'),
(28, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-27 02:19:05'),
(29, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-27 02:23:21'),
(30, 25, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Kk\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-27 02:55:20'),
(31, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-29 19:30:32'),
(32, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-31 07:58:48'),
(33, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-31 18:43:30'),
(34, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-31 19:28:22'),
(35, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-31 20:28:45'),
(36, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-08-31 20:42:27'),
(37, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-01 13:32:15'),
(38, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-01 14:18:11'),
(39, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-01 17:56:09'),
(40, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-01 18:49:59'),
(41, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 06:05:14'),
(42, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 08:46:53'),
(43, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 08:47:53'),
(44, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 12:21:34'),
(45, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 12:27:39'),
(46, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 18:07:44'),
(47, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 18:14:21'),
(48, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 18:36:04'),
(49, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-04 19:20:39'),
(50, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 11:31:34'),
(51, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 19:09:22'),
(52, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 21:15:06'),
(53, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 21:15:38'),
(54, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 21:16:09'),
(55, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 21:16:45'),
(56, 27, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Kk\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 21:21:37'),
(57, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-07 21:49:38'),
(58, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-08 10:56:52'),
(59, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-09 02:15:10'),
(60, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-09 02:21:41'),
(61, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-09 02:54:49'),
(62, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-09 19:15:27'),
(63, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-09 20:14:45'),
(64, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-09 21:49:01'),
(65, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-10 16:50:58'),
(66, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-10 16:53:28'),
(67, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-14 12:08:01'),
(68, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-14 18:30:10'),
(69, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-14 18:30:51'),
(70, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-14 18:58:55'),
(71, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-21 09:16:16'),
(72, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-21 09:19:50'),
(73, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-24 16:01:56'),
(74, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-26 16:09:50'),
(75, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-26 17:27:18'),
(76, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-26 17:27:41'),
(77, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-26 17:27:58'),
(78, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-26 17:58:16'),
(79, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-28 16:40:00'),
(80, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-30 18:21:39'),
(81, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 76.0.3809.100', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/76.0.3809.100 Safari/537.36', 'Mac OS X', '2019-09-30 18:26:41'),
(82, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-03 11:46:01'),
(83, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-03 12:06:29'),
(84, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-03 12:08:28'),
(85, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-08 12:40:05'),
(86, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-13 10:50:52'),
(87, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-14 18:13:13'),
(88, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-14 20:53:16'),
(89, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":null,\"mobile\":null}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-14 21:09:25'),
(90, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-14 21:11:11'),
(91, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-22 06:55:41'),
(92, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-22 07:10:29'),
(93, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-22 07:11:54'),
(94, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-22 07:13:05'),
(95, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-22 07:19:40'),
(96, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-22 17:10:16'),
(97, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-23 07:25:38'),
(98, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-23 10:44:35'),
(99, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-27 11:43:15'),
(100, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-27 12:29:10'),
(101, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-28 08:44:58'),
(102, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-28 10:00:44'),
(103, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '127.0.0.1', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-28 10:08:31'),
(104, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 77.0.3865.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Mac OS X', '2019-10-29 01:24:18'),
(105, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 77.0.3865.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Mac OS X', '2019-10-29 01:25:49'),
(106, 29, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun Dina\",\"email\":\"maroundina@mdinadmcc.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 77.0.3865.120', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.120 Safari/537.36', 'Mac OS X', '2019-10-29 02:12:51'),
(107, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.16.165.68', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-29 02:41:21'),
(108, 29, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun Dina\",\"email\":\"maroundina@mdinadmcc.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 'Mac OS X', '2019-10-31 06:45:59'),
(109, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.30.90', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-31 06:59:47'),
(110, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.30.90', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-31 11:27:49'),
(111, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.30.90', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-31 11:28:55'),
(112, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.30.90', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-10-31 11:40:39'),
(113, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 'Mac OS X', '2019-11-01 04:01:19'),
(114, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 'Mac OS X', '2019-11-01 07:08:13'),
(115, 29, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun Dina\",\"email\":\"maroundina@mdinadmcc.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 'Mac OS X', '2019-11-02 04:45:45'),
(116, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '210.56.120.144', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-02 04:53:39'),
(117, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.41.26.126', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-02 04:57:14'),
(118, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.41.26.126', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-02 04:57:26'),
(119, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.70', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.70 Safari/537.36', 'Mac OS X', '2019-11-02 04:59:06'),
(120, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.30.90', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-06 12:17:25'),
(121, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.30.90', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-06 12:19:18'),
(122, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.41.26.54', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-20 10:03:29'),
(123, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.54', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-20 10:05:40'),
(124, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '171.61.213.195', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-22 08:09:06'),
(125, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '171.61.213.195', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 6.3; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 8.1', '2019-11-22 08:13:13'),
(126, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.246', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-24 09:42:49'),
(127, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.41.26.246', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-24 09:43:39'),
(128, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Safari 605.1.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'Mac OS X', '2019-11-26 06:56:12'),
(129, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:00:57'),
(130, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:04:20'),
(131, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:05:18'),
(132, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:05:49'),
(133, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Safari 605.1.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'Mac OS X', '2019-11-26 07:06:45'),
(134, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:07:16'),
(135, 32, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun Dina\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Safari 605.1.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'Mac OS X', '2019-11-26 07:08:17'),
(136, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:08:29'),
(137, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:16:03'),
(138, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:18:14'),
(139, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:21:47'),
(140, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:27:39'),
(141, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-26 07:47:26'),
(142, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Safari 605.1.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'Mac OS X', '2019-11-26 07:54:03'),
(143, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-26 10:25:31'),
(144, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '223.225.136.144', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-11-26 10:32:47'),
(145, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '91.72.170.242', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-11-27 02:12:50'),
(146, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '91.72.170.242', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-11-27 02:13:13'),
(147, 33, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Manjeet\",\"email\":\"msb.2905@gmail.com\",\"mobile\":\"9411447236\"}', '91.72.170.242', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Windows 10', '2019-11-27 02:26:32'),
(148, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Safari 605.1.15', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Safari/605.1.15', 'Mac OS X', '2019-11-27 04:12:23'),
(149, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-27 04:23:14'),
(150, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-27 09:12:00'),
(151, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-27 09:12:24'),
(152, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '103.99.202.98', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-11-27 09:12:52'),
(153, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '180.214.143.123', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-02 13:59:50'),
(154, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Test\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '180.214.143.123', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-02 14:00:04'),
(155, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.4.226', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-12-03 11:22:26'),
(156, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '112.196.4.226', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-12-03 11:47:11'),
(157, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.4.226', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-12-03 11:47:56'),
(158, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '112.196.4.226', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-12-03 11:48:17'),
(159, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '112.196.4.226', 'Chrome 77.0.3865.90', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/77.0.3865.90 Safari/537.36', 'Mac OS X', '2019-12-03 12:12:49'),
(160, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '27.255.227.101', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-04 10:23:51'),
(161, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '94.187.53.92', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-04 11:21:16'),
(162, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '124.253.174.172', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-05 02:35:51'),
(163, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-09 00:36:05');
INSERT INTO `tbl_last_login` (`id`, `userId`, `sessionData`, `machineIp`, `userAgent`, `agentString`, `platform`, `createdDtm`) VALUES
(164, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-09 00:49:24'),
(165, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-09 00:54:25'),
(166, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-09 00:55:56'),
(167, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.150', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-09 13:34:10'),
(168, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.150', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-09 13:35:17'),
(169, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.150', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-09 13:45:35'),
(170, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.150', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-09 13:46:33'),
(171, 9, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Rakesh Kumar\",\"email\":\"kumarraku0@gmail.com\",\"mobile\":\"9899987891\"}', '103.41.26.150', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_14_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-09 13:53:55'),
(172, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-10 01:12:35'),
(173, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-10 01:12:54'),
(174, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-10 01:20:53'),
(175, 33, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Ashu\",\"email\":\"looklikeme05@gmail.com\",\"mobile\":\"9888687712\"}', '124.253.175.66', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-10 12:48:24'),
(176, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 04:52:16'),
(177, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 04:53:02'),
(178, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 04:53:57'),
(179, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '112.196.4.228', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-11 04:56:33'),
(180, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 04:59:46'),
(181, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:04:09'),
(182, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:05:47'),
(183, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:06:05'),
(184, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:12:38'),
(185, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:17:34'),
(186, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:21:05'),
(187, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:32:07'),
(188, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:34:25'),
(189, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:35:51'),
(190, 31, '{\"role\":\"2\",\"roleText\":\"User\",\"name\":\"Maroun\",\"email\":\"maroundina@mdinang.com\",\"mobile\":\"0567892411\"}', '217.165.112.40', 'Chrome 78.0.3904.108', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.108 Safari/537.36', 'Mac OS X', '2019-12-11 05:36:35'),
(191, 1, '{\"role\":\"1\",\"roleText\":\"Admin\",\"name\":\"System Administrator\",\"email\":\"admin@lottery.com\",\"mobile\":\"9890098900\"}', '124.253.41.153', 'Chrome 78.0.3904.97', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/78.0.3904.97 Safari/537.36', 'Mac OS X', '2019-12-14 14:31:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(11) NOT NULL,
  `web_id` int(11) NOT NULL,
  `user_id` varchar(30) NOT NULL,
  `paid_type` varchar(20) NOT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `date` varchar(30) NOT NULL,
  `white1` int(11) NOT NULL,
  `white2` int(11) NOT NULL,
  `white3` int(11) NOT NULL,
  `white4` int(11) NOT NULL,
  `white5` int(11) NOT NULL,
  `white6` int(11) DEFAULT NULL,
  `yellow2` int(11) DEFAULT NULL,
  `yellow1` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `is_jackpot` enum('0','1') NOT NULL DEFAULT '0',
  `pattern` varchar(20) DEFAULT NULL,
  `prize` varchar(50) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `paid_status` int(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `web_id`, `user_id`, `paid_type`, `transaction_id`, `date`, `white1`, `white2`, `white3`, `white4`, `white5`, `white6`, `yellow2`, `yellow1`, `total_price`, `is_jackpot`, `pattern`, `prize`, `createdAt`, `paid_status`) VALUES
(1, 2, '9', '0', '', '2019-09-27', 91, 45, 12, 13, 52, NULL, NULL, 20, 20, '0', '1 2', '10', '2019-09-26 17:30:37', 0),
(2, 2, '9', '0', '', '2019-09-27', 20, 92, 68, 44, 5, NULL, NULL, 91, 20, '0', NULL, NULL, '2019-09-26 17:30:37', 0),
(3, 2, '9', '0', '', '2019-09-27', 50, 73, 51, 24, 15, NULL, NULL, 18, 20, '0', NULL, NULL, '2019-09-26 17:30:37', 0),
(4, 2, '9', '0', '', '2019-09-27', 85, 37, 66, 1, 40, NULL, NULL, 20, 20, '0', '1 0', '2', '2019-09-26 17:30:37', 0),
(5, 2, '9', '0', '', '2019-10-01', 76, 75, 35, 14, 25, NULL, NULL, 51, 20, '0', NULL, NULL, '2019-09-30 18:27:00', 0),
(6, 2, '9', '0', '', '2019-10-01', 53, 73, 44, 68, 10, NULL, NULL, 67, 20, '0', NULL, NULL, '2019-09-30 18:27:00', 0),
(7, 2, '9', '0', '', '2019-10-01', 92, 1, 70, 84, 62, NULL, NULL, 23, 20, '0', NULL, NULL, '2019-09-30 18:27:00', 0),
(8, 2, '9', '0', '', '2019-10-01', 51, 18, 63, 56, 64, NULL, NULL, 20, 20, '0', NULL, NULL, '2019-09-30 18:27:00', 0),
(9, 6, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-04', 32, 43, 1, 36, 6, NULL, 42, 34, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(10, 6, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-04', 19, 10, 1, 53, 4, NULL, 43, 91, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(11, 6, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-04', 51, 2, 16, 31, 62, NULL, 49, 80, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(12, 1, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-17', 53, 26, 4, 37, 45, NULL, NULL, 21, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(13, 1, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-17', 61, 24, 23, 17, 2, NULL, NULL, 10, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(14, 1, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-17', 64, 43, 2, 11, 50, NULL, NULL, 7, 10, '0', NULL, '5', '2019-10-14 21:41:35', 0),
(15, 1, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-17', 51, 26, 1, 58, 24, NULL, NULL, 17, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(16, 1, '9', 'Rave', 'FLW-MOCK-ed25f853916d5a13a87ff36437f00ba5', '2019-10-17', 68, 68, 46, 61, 58, NULL, NULL, 24, 10, '0', NULL, NULL, '2019-10-14 21:41:35', 0),
(17, 1, '31', '0', '', '2019-11-28', 1, 2, 3, 4, 5, NULL, NULL, 1, 1, '0', NULL, NULL, '2019-11-26 14:47:39', 0),
(18, 4, '31', '0', '', '2019-11-27', 1, 2, 3, 4, 5, NULL, 2, 1, 1, '0', NULL, NULL, '2019-11-26 15:15:31', 0),
(19, 4, '31', '0', '', '2019-11-27', 1, 2, 3, 4, 5, NULL, 2, 1, 1, '0', NULL, NULL, '2019-11-26 15:15:31', 0),
(20, 4, '31', '0', '', '2019-11-27', 1, 2, 3, 4, 5, NULL, 2, 1, 1, '0', NULL, NULL, '2019-11-26 15:15:31', 0),
(21, 4, '31', '0', '', '2019-11-27', 1, 2, 3, 4, 5, NULL, 2, 1, 1, '0', NULL, NULL, '2019-11-26 15:15:31', 0),
(22, 4, '31', '0', '', '2019-11-27', 1, 2, 3, 4, 5, NULL, 2, 1, 1, '0', NULL, NULL, '2019-11-26 15:15:31', 0),
(23, 1, '1', '0', '', '2019-11-28', 1, 2, 4, 14, 24, NULL, NULL, 12, 1, '0', NULL, NULL, '2019-11-27 09:28:04', 0),
(24, 1, '1', '0', '', '2019-11-28', 1, 2, 3, 4, 5, NULL, NULL, 1, 1, '0', NULL, NULL, '2019-11-27 09:28:04', 0),
(25, 1, '33', '0', '', '2019-12-05', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(26, 1, '33', '0', '', '2019-12-08', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(27, 1, '33', '0', '', '2019-12-12', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(28, 1, '33', '0', '', '2019-12-15', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(29, 1, '33', '0', '', '2019-12-19', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(30, 1, '33', '0', '', '2019-12-22', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(31, 1, '33', '0', '', '2019-12-26', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(32, 1, '33', '0', '', '2019-12-29', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(33, 1, '33', '0', '', '2020-01-02', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(34, 1, '33', '0', '', '2020-01-05', 3, 4, 5, 14, 24, NULL, NULL, 2, 1, '0', NULL, NULL, '2019-11-27 11:51:47', 0),
(35, 1, '31', '0', '', '2019-12-19', 15, 22, 27, 35, 57, NULL, NULL, 1, 10, '0', NULL, NULL, '2019-12-09 07:51:51', 0),
(36, 1, '31', '0', '', '2019-12-12', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '0', NULL, NULL, '2019-12-10 08:47:34', 0),
(37, 1, '33', '0', '', '2019-12-12', 1, 2, 3, 4, 5, NULL, NULL, 1, 10, '0', NULL, NULL, '2019-12-10 19:49:24', 0),
(38, 1, '31', '0', '', '2019-12-12', 15, 16, 23, 34, 35, NULL, NULL, 1, 10, '0', NULL, NULL, '2019-12-11 12:01:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pages`
--

CREATE TABLE `tbl_pages` (
  `id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_pages`
--

INSERT INTO `tbl_pages` (`id`, `type`, `title`, `description`, `createdAt`) VALUES
(1, 'about_us', 'About Us', 'Esmartgames.com is a brand name of Esmartgames Limited, Reg No. 167,085, having its registered address at 9 Barrack Road, Belize City, Belize, Central America. 18+ to play.\r\n\r\nEsmartgames.com  offers lotto betting .\r\n\r\n \r\n\r\nWhat is Lotto Betting?\r\n\r\nLotto betting is making a bet on the result of the official lottery draw — specifically, which lottery balls (numbers) will be drawn.\r\nYou pick the numbers that you think will be drawn and if you guess correctly, you will win prizes — usually in the form of cash. The size of the prize will depend on the number of balls (numbers) you guess correctly.\r\n\r\nLotto Betting is not the same as buying a ticket into the official draw\r\n\r\nIn relations of selecting numbers, lotto betting could be the similar, nonetheless one is not buying a lottery ticket in the official draw. Lotto betting is steered through a separate self-governing company, such as Esmartgames, which is not connected in any way to the relevant lottery operator. Any money you win is paid out by Esmartgames, not the official lottery operator.For example you have bet on US PowerBall jackpot and correctly guess all of the numbers that are drawn. Esmartgames Will pay you draw amount, not the official PowerBall operator in the US.\r\n\r\neSsmartGames match the prizes of official lottery operators\r\n\r\nEsmartgames would match the prizes of each tier, including the jackpot, that the official lottery operators pay out, as if you had won with an official lottery ticket.\r\n\r\nSo, for example, let’s say you bet on a lottery, such as the US PowerBall, and you guess 5 numbers (but not the PowerBall). This would win you the second prize tier which is about €800,000. Esmartgames will match this prize and pay you the prize money.\r\n\r\nHow can eSsmartGame pays such high jackpot amounts?\r\n\r\nEsmartgames operates an insurance model which protects each bet some one play. Esmartgames will pay all smaller wins directly from the revenue they receive from sales. Larger jackpot wins will be covered by eSsmartGame insurance model.This insurance-based business model enables Esmartgames to offer their players the ability to win huge jackpots, offered by official lottery operators, from all over the world.\r\n\r\nWhy not just buy a lottery ticket?\r\n\r\nOur offer is very different; for starters, we don’t sell physical tickets. Everything is done online, plus we are not connected to the relevant lottery operator.\r\n\r\n \r\n\r\n \r\n\r\nThis website (www.esmartgames.com)  is licensed Esmartgames Limited, Reg No. 167,085, having its registered address at 9 Barrack Road, Belize City, Belize, Central America,  No persons under the age of 18 are permitted to gamble.', '2019-08-24 09:32:33'),
(2, 'help', 'Help', '', '2019-08-24 09:35:33'),
(3, 'terms', 'Terms & Conditions', 'For your protection and that of our own, please read through our terms and conditions carefully before making use of any of our services:\r\n\r\n1. Account registration and operation  Image result for account creation icons\r\nYou are required to open a user account on the website in order to gain access to its services and to purchase a ticket.\r\n\r\nFor the purpose of opening a user account, you will be required to provide information and documentation relating to, inter alia, your name, address, email and telephone number. At any point in time, we reserve the right to ask you for provisional information and documentation. Your user account may be suspended until satisfactory information and documentation is provided.\r\n\r\nThe Player undertakes to notify the company of any and all matters, including any change of personal information that might have a bearing on an approved registration.\r\n\r\nYou may not register an account with us if you do not have a previously terminated or suspended user account with us.\r\n\r\nFor various legal or commercial reasons, we do not permit accounts to be opened or used by Players resident in certain jurisdictions, you hereby represent and warrant that you do not violate any applicable law or regulation as a result of using the Services. It is your responsibility to ensure that you comply with any and all laws apply to you before registering or participating in any activity through the Website.\r\n\r\nYou understand that we do not undertake the responsibility of maintaining usernames or passwords. If you misplace, forget or lose your Username or Password, we shall not be liable for any direct or indirect loss associated with such occurrence;\r\n\r\nUpon activation of your user account, you hereby represent, warrant, acknowledge and undertake towards us that:\r\n\r\n1.1.1 The company accepts no responsibility for transactions placed illegally and the Player warrants that they are legally entitled to purchase with the Company from the jurisdiction in which they reside. It may be illegal for residents of some countries to participate with the companies’ products and access to the website does not imply it is legal to participate from any country.\r\n\r\n1.1.2 Your submitted details during the process of registration are true, and that you will update them immediately upon any changes thereto;\r\n\r\n1.1.3 You will absolutely not allow a third party to access your user account for any reason. You will only be afforded to you, one account;\r\n\r\n1.1.4 any funds in your User Account shall not accrue any linkage differentials and/or interest whatsoever and are not and will not be insured;\r\n\r\n1.1.5 You are of at least the minimum legal age of your particular jurisdiction as required to the use of the services, as well as being of sound mind and you are capable of taking full responsibility for your own actions;\r\n\r\n1.1.6 We will have your full cooperation and on request will provide us with full documentation, and that the content therein will be completely truthful;\r\n\r\n1.1.7 You have verified and determined that according to your full knowledge, your use of the service that we provide does not conflict with the laws and regulations of your jurisdiction;\r\n\r\n1.1.8 You are responsible for recording, paying and accounting to any relevant governmental, taxation or other authority for any tax or other levies that may be payable due to your use of the Website (including, but not limited to, payment and receipt of Winnings).\r\n\r\n1.1.9 You will use the service offered to you by us truthfully towards us and towards other users;\r\n\r\n1.1.10 We may, at our own discretion, reserve the right to open, maintain and/or close your User Account if deemed fraudulent, as well as seize, retain and/or hold all or part of the funds held in your User Account, and that any such decision by us or any other decision by us in connection therewith shall be final and not subject to dispute or appeal;\r\n\r\n1.1.11 You will bear full and sole responsibility for protecting the confidentiality of your own user account details (including, but not limited to, your Username and Password required for entering your User Account), and for any and all actions and transactions taken in connection with your User Account by anyone who enters your User Account while using your User Account details, and all such actions and transactions shall be deemed as actions and transactions taken by you without conferring any liability whatsoever upon Us;\r\n\r\n1.1.12 Any and all unauthorised use of your user account will bear the full responsibility yourself; All purchases via your account will be considered valid and binding;\r\n\r\n1.1.13 As soon as you suspect unauthorised use of your account, you will immediately inform us thereof;\r\n\r\n1.1.14 You shall not make any chargebacks and/or deny or reverse any payment made by you in connection with the Services and/or the purchase of the Tickets.\r\n\r\n1.1.15 In the event that you or a third party part-takes in any such illegal activities, we reserve the right to disclose any and all of the content of your User Account (including, but not limited to, personal identifiable information) to the relevant authorities, and to suspend and/or cancel your User Account and confiscate any and all funds in your User Account;\r\n\r\n1.1.16 The method of payment information you provided to us in connection with your User Account is of means of payment owned by you and in your name (or that the owner of the means of payment provided you with all required consent to use that means of payment for using the Services and purchasing Tickets via the Website, and you are acting within the confines of that consent) and were not stolen or reported as lost;\r\n\r\n1.1.17 We do not undertake any responsibility of validating the consent granted to you by the owner of the means of payment which you use;\r\n\r\n1.1.18 You have not informed us of any addiction to gambling;\r\n\r\n1.1.19 You will not cause damage to the website or impair the availability thereof;\r\n\r\n1.1.20 You will not conduct any systematic or automated data collection activities on or in relation to the Website without our explicit written consent;\r\n\r\n1.1.21 Participating on credit is not possible; and\r\n\r\n1.1.22 If a Player is no longer able to read, understand, agree and comply with all the company rules, policies and terms and conditions, without exception, they undertake to cease operating their account immediately, and request the company to close the account. The company makes no guarantees as to the availability of our website, markets or prices. The company reserves the right to communicate with players unless the player has explicitly requested not to be communicated with.\r\n\r\n1.1.23 In order to use our services and upon the purchase of a ticket, details, and method of payment details and/or transfer funds into your user account will be made available to us by you. Upon transfer of funds into your user account, they will be deposited into your user account upon actual receipt of funds by us. A maximum and minimum transfer limit of funds into and from your account may be applied, depending on your history with us, method of deposit, and other factors as determined by us in our sole and absolute discretion. We will debit your User Account and/or your means of payment at any time between the time in which you place a request to purchase the ticket and the time in which we purchase the ticket on your behalf.\r\n\r\n2. Contractual parties   Image result for Contractual parties icons\r\nIn order to participate in any of the offered games on our website, a user must register and provide the details requested on the registration page or when required to do so when depositing.\r\n\r\nUpon participation of any and all games of this website, the user hereby agrees to two separate agreements as described below:\r\n\r\n2.1 Upon registration as well as when submitting a purchase, the user is knowingly entering into a contract with the company for the following services:\r\n\r\n2.2 The use of the website; the operation and management of the user account; the payment of the user’s stakes to the messenger service.\r\n\r\n3. Communication   Related image\r\n3.1 The company reserves the right to communicate with players unless the player has explicitly requested not to be communicated with.\r\n\r\n3.2 The player agrees to receive promotional emails/SMS unless explicitly requested not to receive any promotional communication.\r\n\r\n4. Intellectual Property\r\n\r\n4.1 All content, text, examples, and rules on this website are the property of The company and any unauthorised use or reproduction is prohibited.\r\n\r\n4.2 The Player or any other party shall have no right to copy, in whole or in part, the Company’s products, software, and website and shall not modify, adapt, translate, reverse engineer, decompile, disassemble, redistribute, re-sell or create derivative works based on The Company’s Product.\r\n\r\n4.3 Any and all suspicions you may have of illegal, unlawful, fraudulent, money laundering activities performed in your user account will be reported by you to us immediately. Furthermore, you will not take part in any such activities including breaking into the website;\r\n\r\n5. Playing the Game    Related image\r\n5.1 Participating entries can only be considered valid for events place for future dates specified by the Player. The Company cannot process entries for an event after the cutoff date.\r\n\r\n5.2 The cutoff time for entries will be before the official draw, any entries place after cutoff times will be considered invalid and refunded or placed into a future event.\r\n\r\n5.3 The company exclusively reserves the right, to limit, reject and or cancel any transactions accepted and confirmed by The Company where The Company has either negligently, erroneously or otherwise offered or set incorrect prices, teams or event start times including but not limited to incorrect prices, teams or event start times.\r\n\r\n5.4 Transactions are only valid when accepted in agreement with all of The Company’s rules, policies and terms and conditions.\r\n\r\n5.5 Players may not play by any means not authorised by The Company, including but not limited to, robots and website or software manipulation. The Company reserves the right to cancel any purchases deemed to have been placed by unauthorised means.\r\n\r\n5.6 Jackpot, 2nd and 3rd prize category winners of tickets tickets maybe insured to a maximum amount of € 250,000,000, where applicable, split and share their winnings proportionally with winner’s prize pool. In the event of multiple tickets containing related outcomes will be divided between the related selections unless specified otherwise.\r\n\r\n5.7 Lottery games with estimated Jackpots above the insurance limit specified in point 5.6 will purchase via our Lottery message service, the Company will conclude the purchase of lottery Game entries at your request and on your behalf.\r\n\r\n5.7 All entries placed for an event that has already past will either receive a full refund or placed into a future event.\r\n\r\n6. Winnings    Related image\r\n6.1 The calculation is different per underlying Lottery and category prize winnings, Jackpot prizes all lotteries will be paid out by the Company at the present Jackpot value of these amounts at the time of winnings unless specific otherwise. The Jackpot will depend on the number of the underlying lottery winning Tickets in that prize Category, the number of The Company Winning tickets in that Prize category, the payable prize by the underlying lottery operator for the underlying lottery winning tickets in that prize category as well as the underlying lottery jackpot in that prize category.\r\n\r\n6.2 The Company may utilise the services of insurers to underwrite any of the potential winnings arising from any of the products offered by The Company and may be subject to certain terms of contract with these parties which may impose obligations requiring any winner to submit verification documentation and sign releases as a precondition to payment. You undertake that you shall do all such acts and things as may be necessary as a precondition of payment should you win and should such condition be required to be fulfilled.\r\n\r\n6.3 The aforementioned notwithstanding, The Company will do all such acts and efforts required for the collections of the winnings from said ticket suppliers, risk managers or insurers, including by legal proceedings as may be necessarily subject to Players sole responsibility.\r\n\r\n6.4 The Company shall claim all winnings on behalf of the player and will assign the winnings to the account nominated by the player. For the purposes of this agreement, winnings refer to all amounts which are from time to time due and payable to the player by the provider derived from winning tickets, fewer costs associated with claiming the winnings.\r\n\r\n6.5 You accept that the company makes no representations or warranties of any kind, express or implied about the completeness, accuracy, reliability, suitability or availability with respect to the website or the information, products, services or related graphics contained on the website for any purpose.\r\n\r\n7. Data Privacy Policy   Image result for Data Privacy Policy icon\r\n7.1 All information supplied is strictly confidential, and the Player agrees to The Company privacy policy.\r\n\r\n7.2 All Player personal information is stored securely by The Company and will not be shared with 3rd parties, other than information required to process 3rd party checks and payments, which will be transmitted securely to The Company’s processors.\r\n\r\n8. General    Image result for General Policy icon\r\nThe company reserves the right to put a halt to or alter any aspect of the site at any time. If any provisions of the terms mentioned are deemed to be invalid by a court of competent jurisdiction, the invalidity of such a provision shall not affect the validity of the remaining provisions of these terms, which shall remain in full effect.\r\n\r\nNo waiver of any term of these Terms shall be deemed a further or continuing waiver of such term or any other term, and a party’s failure to assert any right or provision under these Terms shall not constitute a waiver of such right or provision.\r\n\r\nIn the event that The Company believes a Player is abusing a bonus or promotion, displaying irregular behaviour, or is likely to benefit through abuse or lack of good faith from a promotion offered by The Company, the Company may at its sole discretion withhold, deny or confiscate any bonus or promotion from the Player’s account. In this regard, The Company shall be under no obligation to refund any funds other than your original deposit amounts.\r\n\r\nThe Company is unable to alter any entries submitted. If you do not agree with any of the terms of this agreement, please refrain from utilising our services and website in any way.\r\n\r\nThe Company reserves the right to change or amend its rules, policies, terms and conditions at The Company’s discretion and without notice to Players.\r\n\r\nThe Player warrants that they have read understood, accepted and will comply with all The Company’s terms and conditions.\r\n\r\n9. Refund Policy  Image result for refund policy icon\r\nOnce we receive your withdrawal request, we will inspect it and notify you status.After return is approved, we will initiate a refund to your bank account which you have mentioned in request. You will receive the credit within a certain amount of days, depending on your Banks policies.\r\nWe cannot refund exchange rate expenses from the original order or shipping expenses refund your payment. The minimum amount that we can offer for a refund is 100 USD.\r\nWe are not responsible for the errors, omissions, actions, or inactions of our partners, including the Bank Service, though we prefer to serve an advocate for the customer when addressing problems with Banks.\r\nThe winning amount will appear in customer Wallet immediately after lottery result however the actual amount transfer will require certain process defined by lottery providers.\r\n\r\n10. What Appear on your credit card statement\r\nDescriptor will show up as ALW*esmartgames442033188334 on his credit card statements.\r\n\r\n \r\n\r\n11. Banking – Withdrawals   Image result for banking withdrawal ICON\r\n11.1 All EFT deposits must reflect and be cleared before deposits are assigned to customer wallets and will require either a bank generated confirmation of your payment showing the account name before we will process a withdrawal.\r\n\r\n11.2 Withdrawals from account will only be made to a bank account in the name of the Player.\r\n\r\n11.4 Any bank charges relating to the withdrawal of winnings to a foreign bank account will be for the account of the client/account holder.\r\n\r\n11.5 Payments will be processed on any weekday, excluding public holidays, subject to 24hrs notice to effect payment. The company may withhold payment pending receipt in its bank account of all money paid to the company by the Player.\r\n\r\n11.6 The company reserves the right to charge transaction fees, including but not limited to, an amount equal to any credit card transaction fees.\r\n\r\n11.7 The minimum Withdrawal amount is ?\r\n\r\n11.8 Money held in by the company account may be refunded on request, subject to 24 hours’ notice to enable the company to verify that all of the Terms and Conditions have been complied with.\r\n\r\n11.9 The company reserves the right to withhold a withdrawal of monies where it is suspected that the account is not being used for a legitimate purpose or where money laundering is suspected. An inspection will begin on the account and all fees incurred in processing transactions will be charged to the players account.\r\n\r\n11.20 The company accepts no responsibility if the Player cannot take up the holiday as booked and will incur no further costs in the event that the trip is cancelled and/or rescheduled.\r\n\r\n12.  Cancellation of purchases    Image result for CANCELLATION PURCHASE ICON\r\n12.2 The company will review the possibility of cancelling your purchases and refunding you upon the following conditions:\r\n\r\n12.3 Your order is legitimate and the entries in question have not yet been processed.\r\n\r\n12.4 The company can cancel the entries if notified with sufficient time to do so.\r\n\r\nEsmartgames.com is a brand name of Esmartgames Limited, Reg No. 167,085, having its registered address at 9 Barrack Road, Belize City, Belize, Central America, licensed to conduct online gaming operations by the Government of Curacao under license 365/JAZ, sublicense GLH-OCCHKTW0707312017. 18+ to play..', '2019-08-24 09:35:33'),
(4, 'policy', 'Privacy Policy', 'This privacy policy has been compiled to better serve those who are concerned with how their ‘Personally Identifiable Information’ (PII) is being used online. PII, as described in privacy law and information security, is information that can be used on its own or with other information to identify, contact, or locate a single person, or to identify an individual in context. Please read our privacy policy carefully to get a clear understanding of how we collect, use, protect or otherwise handle your Personally Identifiable Information in accordance with our website.\r\n\r\nWhat personal information do we collect from the people that visit our blog, website or app?\r\nWhen ordering or registering on our site, as appropriate, you may be asked to enter your name, email address, phone number or other details to help you with your experience.\r\n\r\nWhen do we collect information?\r\nWe collect information from you when you register on our site, subscribe to a newsletter or enter information on our site.\r\n\r\nHow do we use your information?\r\nWe may use the information we collect from you when you register, make a purchase, sign up for our newsletter, respond to a survey or marketing communication, surf the website, or use certain other site features in the following ways:\r\n\r\nTo personalize your experience and to allow us to deliver the type of content and product offerings in which you are most interested.\r\nTo improve our website in order to better serve you.\r\nTo allow us to better service you in responding to your customer service requests.\r\nTo administer a contest, promotion, survey or other site feature.\r\nHow do we protect your information?\r\nOur website is scanned on a regular basis for security holes and known vulnerabilities in order to make your visit to our site as safe as possible.\r\n\r\nWe use regular Malware Scanning\r\nYour personal information is contained behind secured networks and is only accessible by a limited number of persons who have special access rights to such systems, and are required to keep the information confidential. In addition, all sensitive/credit information you supply is encrypted via Secure Socket Layer (SSL) technology.\r\n\r\nWe implement a variety of security measures when a user places an order enters, submits, or accesses their information to maintain the safety of your personal information.\r\n\r\nAll transactions are processed through a gateway provider and are not stored or processed on our servers.\r\n\r\nDo we use ‘cookies’?\r\nYes. Cookies are small files that a site or its service provider transfers to your computer’s hard drive through your Web browser (if you allow) that enables the site’s or service provider’s systems to recognize your browser and capture and remember certain information. For instance, we use cookies to help us remember and process the items in your shopping cart.\r\n\r\nThey are also used to help us understand your preferences based on previous or current site activity, which enables us to provide you with improved services. We also use cookies to help us compile aggregate data about site traffic and site interaction so that we can offer better site experiences and tools in the future.\r\n\r\nWe use cookies to:\r\n\r\nHelp remember and process the items in the shopping cart.\r\nUnderstand and save user’s preferences for future visits.\r\nYou can choose to have your computer warn you each time a cookie is being sent, or you can choose to turn off all cookies. You do this through your browser settings. Since the browser is a little different, look at your browser’s Help Menu to learn the correct way to modify your cookies.\r\n\r\nIf users disable cookies in their browser:\r\n\r\nIf you turn cookies off, some features will be disabled. Some of the features that make your site experience more efficient and may not function properly.\r\nHowever, you will still be able to place orders.\r\nThird-party disclosure\r\nWe do not sell, trade, or otherwise, transfer to outside parties your Personally Identifiable Information unless we provide users with advance notice. This does not include website hosting partners and other parties who assist us in operating our website, conducting our business, or serving our users, so long as those parties agree to keep this information confidential.\r\n\r\nWe may also release information when it’s release is appropriate to comply with the law, enforce our site policies, or protect ours or others’ rights, property or safety.\r\n\r\nHowever, non-personally identifiable visitor information may be provided to other parties for marketing, advertising, or other uses.\r\n\r\nThird-party links\r\nOccasionally, at our discretion, we may include or offer third-party products or services on our website. These third-party sites have separate and independent privacy policies. We therefore, have no responsibility or liability for the content and activities of these linked sites. Nonetheless, we seek to protect the integrity of our site and welcome any feedback about these sites.\r\n\r\nAccording to the Online Privacy Act, we agree to the following:\r\n\r\nUsers can visit our site anonymously\r\nOnce this privacy policy is created, we will add a link to it on our home page or as a minimum, on the first significant page after entering our website.\r\nOur Privacy Policy link includes the word ‘Privacy’ and can be easily be found on the page specified above.\r\n\r\nYou will be notified of any Privacy Policy changes on our Privacy Policy Page\r\n\r\nYou can change your personal information:\r\n\r\nBy logging into your account\r\nBy chatting with us or by sending us a support ticket\r\nHow does our site handle Do Not Track signals?\r\nWe honor Do Not Track signals and Do Not Track, plant cookies, or use advertising when a Do Not Track (DNT) browser mechanism is in place.\r\n\r\nDoes our site allow third-party behavioral tracking?\r\nIt’s also important to note that we allow third-party behavioral tracking\r\n\r\nIn order to be in line with Standard Information Practices we will take the following responsive action, should a data breach occur:\r\n\r\nWe will notify you via email\r\nWithin 1 business day\r\nWe will notify the users via in-site notification\r\nWithin 1 business day\r\nWe also agree to the Individual Redress Principle which requires that individuals have the right to legally pursue enforceable rights against data collectors and processors who fail to adhere to the law. This principle requires not only that individuals have enforceable rights against data users, but also that individuals have recourse to courts or government agencies to investigate and/or prosecute non-compliance by data processors.\r\n\r\nUser information\r\n\r\nWe collect your email address in order to:\r\n\r\nSend information, respond to inquiries, and/or other requests or questions\r\nProcess orders and to send information and updates pertaining to orders\r\nSend you additional information related to your product and/or service\r\nMarket to our mailing list or continue to send emails to our clients after the original transaction has occurred\r\nTo be in accordance with Standard Practice, we agree to the following:\r\n\r\nNot use false or misleading subjects or email addresses\r\nIdentify the message as an advertisement in some reasonable way\r\nInclude the physical address of our business or site headquarters\r\nMonitor third-party email marketing services for compliance, if one is used\r\nHonor opt-out/unsubscribe requests quickly\r\nAllow users to unsubscribe by using the link at the bottom of each email\r\nIf at any time you would like to unsubscribe from receiving future emails, you can email us at info@esmartgames.com.Follow the instructions at the bottom of each email and we will promptly remove you from ALL correspondence.\r\n\r\nContacting Us\r\nIf there are any questions regarding this privacy policy, you may contact us using the information below.\r\ninfo@esmartgames.com', '2019-08-24 09:37:21');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_ranges`
--

CREATE TABLE `tbl_ranges` (
  `id` int(11) NOT NULL,
  `web_id` int(11) NOT NULL,
  `heading` varchar(220) DEFAULT NULL,
  `white_ball` int(11) NOT NULL DEFAULT '5',
  `yellow_ball` int(11) NOT NULL DEFAULT '1',
  `quantity` int(11) NOT NULL DEFAULT '1',
  `play_description` text,
  `when_play` text,
  `white_from` int(11) NOT NULL DEFAULT '1',
  `white_to` int(11) NOT NULL DEFAULT '100',
  `yellow_from` int(11) NOT NULL DEFAULT '1',
  `yellow_to` int(11) NOT NULL DEFAULT '100',
  `price` varchar(20) NOT NULL DEFAULT '0',
  `jackpot` varchar(50) NOT NULL DEFAULT '0',
  `logo` varchar(100) DEFAULT NULL,
  `createdDtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDtm` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_ranges`
--

INSERT INTO `tbl_ranges` (`id`, `web_id`, `heading`, `white_ball`, `yellow_ball`, `quantity`, `play_description`, `when_play`, `white_from`, `white_to`, `yellow_from`, `yellow_to`, `price`, `jackpot`, `logo`, `createdDtm`, `updatedDtm`) VALUES
(1, 1, 'TEST TEST TEST ', 5, 1, 10, 'Power Ball Play', 'Power Ball When Play', 1, 69, 1, 26, '10', '$150 Million', '1576065938logo-seal-powerballaustralia.svg', '2019-08-22 21:03:26', '2019-12-12 00:00:13'),
(2, 2, 'Mega Millions', 5, 1, 4, 'Mega Milliion Play', 'Mega Milliion When Play', 1, 100, 1, 100, '20', '$372 Million', '1571815924megamillion.svg', '2019-08-22 21:03:26', '2019-12-14 00:00:09'),
(3, 3, 'Euro Millions', 5, 2, 9, 'Euro Millions Play', 'Euro Millions when Play', 1, 100, 1, 100, '25', '€47 Million', '1571815950euromillion.svg', '2019-08-22 21:03:37', '2019-12-14 00:00:13'),
(4, 4, 'Uk Euro', 5, 2, 1, 'UK euro Play', 'UK euro When Play', 1, 100, 1, 100, '21', '$ 372 Million', '1571815965ukeuro.svg', '2019-08-22 21:03:37', '2019-12-14 00:00:20'),
(5, 5, 'German Lottery', 5, 1, 8, 'German Lottery Play', 'German Lottery when play', 1, 100, 1, 100, '22', '€ 16 Million', '1571815982germanlotto.svg', '2019-08-22 21:03:47', '2019-12-12 12:00:12'),
(6, 6, 'Euro jackpots', 5, 2, 4, 'Euro Jackpot Play', 'Euro Jackpotwhen play', 1, 66, 1, 100, '10', '€ 10 Million ', '1571815994eurojackpot.svg', '2019-08-22 21:03:47', '2019-12-07 00:00:06'),
(7, 11, NULL, 5, 1, 1, '', NULL, 1, 100, 1, 65, '0', '$1 million', NULL, '2019-08-24 22:40:23', '2019-10-03 12:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_refund`
--

CREATE TABLE `tbl_refund` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` varchar(11) NOT NULL,
  `reason` text NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_refund`
--

INSERT INTO `tbl_refund` (`id`, `user_id`, `money`, `reason`, `status`, `createdAt`) VALUES
(1, 9, '10', 'sdfsdfds', 0, '2019-11-24 13:59:49'),
(2, 2, '20', 'test', 0, '2019-11-24 14:00:22'),
(3, 9, '10000', 'test description', 2, '2019-11-24 14:04:21'),
(4, 9, '20', 'sdgsdgdf', 1, '2019-11-24 15:10:40'),
(5, 31, '12', 'dfds', 2, '2019-11-26 14:08:41'),
(6, 31, '10', 'i need refund', 1, '2019-11-26 14:27:01'),
(7, 1, '10', 'anything', 2, '2019-11-27 09:22:37'),
(8, 1, '5', 'hhg', 1, '2019-11-27 09:23:08'),
(9, 33, '10', 'any', 1, '2019-11-27 11:22:33');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reset_password`
--

CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` bigint(20) NOT NULL DEFAULT '1',
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_reset_password`
--

INSERT INTO `tbl_reset_password` (`id`, `email`, `activation_id`, `agent`, `client_ip`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@lottery.com', 'UvHZ1CV9cJnRYiS', 'Chrome 76.0.3809.100', '127.0.0.1', 0, 1, '2019-08-22 22:11:37', NULL, NULL),
(2, 'admin@lottery.com', 'gvSVTQuDaiq49Ix', 'Chrome 76.0.3809.100', '127.0.0.1', 0, 1, '2019-08-22 22:17:18', NULL, NULL),
(3, 'admin@lottery.com', 'mtFNGPnpL2TEvY0', 'Chrome 76.0.3809.100', '127.0.0.1', 0, 1, '2019-08-22 22:24:31', NULL, NULL),
(4, 'looklikeme05@gmail.com', 'vdqmbEKugZJVPNl', 'Chrome 78.0.3904.97', '103.99.202.98', 0, 1, '2019-11-26 14:03:18', NULL, NULL),
(5, 'looklikeme05@gmail.com', '2kLD4XzBshvfS9I', 'Chrome 78.0.3904.97', '103.99.202.98', 0, 1, '2019-11-26 14:03:33', NULL, NULL),
(6, 'looklikeme05@gmail.com', 'uO4zWXTbfwCqDMc', 'Chrome 78.0.3904.97', '103.99.202.98', 0, 1, '2019-11-26 14:05:28', NULL, NULL),
(7, 'looklikeme05@gmail.com', 'M5e7hafsNkDpowB', 'Chrome 78.0.3904.97', '103.99.202.98', 0, 1, '2019-11-27 16:17:23', NULL, NULL),
(8, 'looklikeme05@gmail.com', 'nud6b0jYcE85Zi9', 'Chrome 78.0.3904.97', '180.214.143.123', 0, 1, '2019-12-02 20:59:13', NULL, NULL),
(9, 'looklikeme05@gmail.com', 'fuOXkiE6TwUmFHR', 'Chrome 78.0.3904.97', '112.196.4.228', 0, 1, '2019-12-03 15:37:59', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_roles`
--

CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_roles`
--

INSERT INTO `tbl_roles` (`roleId`, `role`) VALUES
(1, 'Admin'),
(2, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tier`
--

CREATE TABLE `tbl_tier` (
  `id` int(11) NOT NULL,
  `web_id` int(11) NOT NULL,
  `white` int(2) NOT NULL DEFAULT '0',
  `mega` int(2) NOT NULL DEFAULT '0',
  `per` varchar(10) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_tier`
--

INSERT INTO `tbl_tier` (`id`, `web_id`, `white`, `mega`, `per`, `createdAt`) VALUES
(1, 1, 0, 0, '1', '2019-10-22 17:17:57'),
(2, 3, 6, 1, '20', '2019-10-22 17:19:13'),
(3, 3, 2, 1, '10', '2019-10-22 17:21:30'),
(4, 2, 0, 0, '12', '2019-10-22 17:43:29'),
(5, 2, 4, 2, '20', '2019-10-22 18:03:00'),
(6, 3, 1, 2, '12', '2019-10-22 18:03:53'),
(7, 4, 2, 1, '5', '2019-10-22 18:04:30'),
(8, 5, 4, 2, '20', '2019-10-22 18:04:41'),
(9, 6, 2, 2, '12', '2019-10-22 18:04:53'),
(10, 1, 1, 1, '12', '2019-10-23 10:44:50'),
(11, 1, 3, 0, '25', '2019-12-11 12:11:09');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_transfer`
--

CREATE TABLE `tbl_transfer` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `paypal_email` varchar(250) NOT NULL,
  `reciver_id` int(11) NOT NULL,
  `money` varchar(20) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_transfer`
--

INSERT INTO `tbl_transfer` (`id`, `user_id`, `paypal_email`, `reciver_id`, `money`, `status`, `createdAt`) VALUES
(1, 9, 'test@gmail.com', 10, '300', 0, '2019-11-26 16:25:23'),
(2, 2, 'test@gmail.com', 10, '30', 0, '2019-11-26 16:26:34'),
(3, 1, 'msb.2905@gmail.com', 33, '10', 0, '2019-11-27 09:27:03'),
(4, 1, 'msb.2905@gmail.com', 33, '1', 0, '2019-11-27 11:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `paypal` varchar(250) DEFAULT NULL,
  `bank` varchar(250) DEFAULT NULL,
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `phonecode` varchar(100) DEFAULT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT '0',
  `createdBy` int(11) DEFAULT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`userId`, `email`, `paypal`, `bank`, `password`, `name`, `phonecode`, `mobile`, `roleId`, `isDeleted`, `createdBy`, `createdDtm`, `updatedBy`, `updatedDtm`) VALUES
(1, 'admin@lottery.com', NULL, NULL, '$2y$10$.4EDFvRFJpSmv800nD.IYuRJQR0aQLtPuXy3Ds2mERQFxw0eSPYl6', 'System Administrator', NULL, '9890098900', 1, 0, 0, '2015-07-01 18:56:49', 1, '2019-12-14 21:36:22'),
(2, 'user@lottery.com', NULL, NULL, '$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm', 'Manager', '880', '9890098900', 2, 0, 1, '2016-12-09 17:49:56', 1, '2019-10-31 19:16:49'),
(3, 'employee@example.com', NULL, NULL, '$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u', 'Employee', NULL, '9890098900', 3, 0, 1, '2016-12-09 17:50:22', 3, '2018-01-04 07:58:28'),
(9, 'nbnbn@gmail.com', 'sb-8gp56628823@personal.example.com', 'Check CODE', '$2y$10$S1Aen0aTbBoPjH7hEJeqkeeuG63DtT.x8/5kfuSDQjMCvOosBZQZK', 'Rakesh Kumar', '1264', '1234567891', 2, 0, 1, '2019-08-21 22:19:43', 1, '2019-12-14 21:35:19'),
(10, 'test@gmail.com', NULL, NULL, '$2y$10$As9GPR4duoA22Ift35V5Bu8tjlc4V.6F1sKgx1318Kx8P0Mvsdqua', 'Test', NULL, '8947923878', 2, 0, 1, '2019-08-25 01:45:53', NULL, NULL),
(11, 'hh@jhk.com', NULL, NULL, '$2y$10$y6ulu9hap/DHu/DyooGEo.2TRkAAo32grzHgKTHZx7RJZX0rvlCBO', 'Sfs', NULL, '4238578972', 2, 0, 1, '2019-08-25 01:46:44', NULL, NULL),
(12, 'hjgh@jhj.com', NULL, NULL, '$2y$10$ZaBZIfBinQvtQt.Gc/Jdkuj6/aEOMvDnf7SGSrZsLDXpRJKq1max.', 'Tyehgf', NULL, '3453543453', 2, 0, 1, '2019-08-25 01:47:08', NULL, NULL),
(13, 'lkjhgf@gmail.com', NULL, NULL, '$2y$10$1ctntf6inbOE8Rxzf8rGGOYg4qK5StnoMK/SGe52bIGyHyXwBu4iq', 'Rakesh', '213', '9899987897', 2, 0, 1, '2019-08-21 22:19:43', 1, '2019-12-14 21:34:22'),
(14, 'test@gmail.com1', NULL, NULL, '$2y$10$As9GPR4duoA22Ift35V5Bu8tjlc4V.6F1sKgx1318Kx8P0Mvsdqua', 'Test', NULL, '8947923878', 2, 0, 1, '2019-08-25 01:45:53', NULL, NULL),
(15, '1hh@jhk.com', NULL, NULL, '$2y$10$y6ulu9hap/DHu/DyooGEo.2TRkAAo32grzHgKTHZx7RJZX0rvlCBO', 'Sfs', NULL, '4238578972', 2, 0, 1, '2019-08-25 01:46:44', NULL, NULL),
(16, 'hjgh@jhj.com1', NULL, NULL, '$2y$10$ZaBZIfBinQvtQt.Gc/Jdkuj6/aEOMvDnf7SGSrZsLDXpRJKq1max.', 'Tyehgf', NULL, '3453543453', 2, 0, 1, '2019-08-25 01:47:08', NULL, NULL),
(17, 'kumarraku0@gmail.com2', NULL, NULL, '$2y$10$1ctntf6inbOE8Rxzf8rGGOYg4qK5StnoMK/SGe52bIGyHyXwBu4iq', 'Rakesh', NULL, '9899987897', 2, 1, 1, '2019-08-21 22:19:43', 1, '2019-08-26 21:06:07'),
(18, 'test@gmail.com2', NULL, NULL, '$2y$10$As9GPR4duoA22Ift35V5Bu8tjlc4V.6F1sKgx1318Kx8P0Mvsdqua', 'Test', NULL, '8947923878', 2, 0, 1, '2019-08-25 01:45:53', NULL, NULL),
(19, 'hh@jhk.com2', NULL, NULL, '$2y$10$y6ulu9hap/DHu/DyooGEo.2TRkAAo32grzHgKTHZx7RJZX0rvlCBO', 'Sfs', NULL, '4238578972', 2, 0, 1, '2019-08-25 01:46:44', NULL, NULL),
(20, 'hjgh@jhj.com2', NULL, NULL, '$2y$10$ZaBZIfBinQvtQt.Gc/Jdkuj6/aEOMvDnf7SGSrZsLDXpRJKq1max.', 'Tyehgf', NULL, '3453543453', 2, 0, 1, '2019-08-25 01:47:08', NULL, NULL),
(21, 'jjgjj@gmail.com', NULL, NULL, '$2y$10$1ctntf6inbOE8Rxzf8rGGOYg4qK5StnoMK/SGe52bIGyHyXwBu4iq', 'Rakhghesh', '213', '7676767676', 2, 0, 1, '2019-08-21 22:19:43', 1, '2019-12-14 21:33:58'),
(22, 'test@gmail.com12', NULL, NULL, '$2y$10$As9GPR4duoA22Ift35V5Bu8tjlc4V.6F1sKgx1318Kx8P0Mvsdqua', 'Test', NULL, '8947923878', 2, 0, 1, '2019-08-25 01:45:53', NULL, NULL),
(23, '1hh@jhk.com2', NULL, NULL, '$2y$10$y6ulu9hap/DHu/DyooGEo.2TRkAAo32grzHgKTHZx7RJZX0rvlCBO', 'Sfs', NULL, '4238578972', 2, 0, 1, '2019-08-25 01:46:44', NULL, NULL),
(24, 'hjgh@jhj.com12', NULL, NULL, '$2y$10$ZaBZIfBinQvtQt.Gc/Jdkuj6/aEOMvDnf7SGSrZsLDXpRJKq1max.', 'Tyehgf', NULL, '3453543453', 2, 0, 1, '2019-08-25 01:47:08', NULL, NULL),
(25, 'testiiii@gmail.com', NULL, NULL, '$2y$10$606HfNMa8kC34qv74nxJ7.rP8PZ/.TV7BJczHXckgWnL2XP1yOUEW', 'Kk', '355', '1324323323', 2, 0, NULL, '2019-08-27 04:54:49', 1, '2019-12-14 21:32:50'),
(26, 'rk@gk.com', NULL, NULL, '$2y$10$pNrsd2CkTkwqrPYsr6sV0OgucVtOac/caWeKZxTgqQ86IhtLwE5vm', 'Rk', NULL, '1234567890', 2, 0, NULL, '2019-09-07 23:19:29', NULL, NULL),
(27, 'tt@gmail.com', NULL, NULL, '$2y$10$/Y2.4Ib.bPi8Ir1o1L7yOuYATMnQZjAH.pBzZoxEfSREKC8r5H6I2', 'Kk', NULL, '8789787987', 2, 0, NULL, '2019-09-07 23:20:30', NULL, NULL),
(28, 'tt@gmail.coms', NULL, NULL, '$2y$10$uspQo57YUL.71dS2XYrTyeJz1nglk7Bu31CqD4vKhdqHOlpI9.Yaq', 'Kk', '213', '8789787987', 2, 0, NULL, '2019-09-07 23:21:16', 1, '2019-10-31 19:16:34'),
(29, 'ht@gmail.com', NULL, NULL, '$2y$10$HI/DbBX3l66Ym4cZAU7HjeU5LGMPzDtuW1TtU18swjJxvFgwsSQqW', 'Sfsd', '509', '2424235235', 2, 0, NULL, '2019-10-31 18:21:24', 29, '2019-10-31 18:33:37'),
(30, 'af@gm.cin', NULL, NULL, '$2y$10$73R.B5Jab74Nw060mkbtre1KecsTx00XTePS/EeRhbQnHmshQB4fW', 'Test', '508', '1432423535', 2, 0, 1, '2019-10-31 18:50:28', 1, '2019-10-31 19:16:20'),
(31, 'maroundina@mdinang.com', NULL, NULL, '$2y$10$3RR2TNQSG4HFb1csrhWH6e7CvQH1qfAOx79mJzKYqPuL0MrRUiWHu', 'Maroun', '971', '0567892411', 2, 0, NULL, '2019-12-09 07:49:07', NULL, NULL),
(32, 'asdfg@gmail.coms', NULL, NULL, '$2y$10$1zElwZKNyyL/xL9C9fl6tOrF7/A0f.17YDR.VJ5.RKn/JetmxgfaO', 'Kjh', '93', '9876543212', 2, 0, NULL, '2019-12-09 22:01:12', 1, '2019-12-14 21:33:26'),
(33, 'looklikeme05@gmail.com', NULL, NULL, '$2y$10$a5AoK7riBRj3fBk0WuAPoeSG.ke2iU1RhQPcKoF2d/KgtQjYW2CQ2', 'Ashu', '91', '9888687712', 2, 0, NULL, '2019-12-10 19:47:20', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet`
--

CREATE TABLE `tbl_wallet` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` varchar(250) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wallet`
--

INSERT INTO `tbl_wallet` (`id`, `user_id`, `money`, `createdAt`) VALUES
(2, 9, '510', '2019-09-07 20:13:33'),
(3, 30, '30', '2019-11-02 11:58:12'),
(4, 31, '84', '2019-11-26 14:26:03'),
(5, 32, '30', '2019-11-26 14:54:14'),
(6, 1, '2', '2019-11-27 09:20:32'),
(7, 33, '20', '2019-11-27 09:27:03');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_wallet_history`
--

CREATE TABLE `tbl_wallet_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `money` varchar(250) NOT NULL,
  `trancaction_id` varchar(50) NOT NULL,
  `type` varchar(20) NOT NULL,
  `p_type` varchar(20) DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_wallet_history`
--

INSERT INTO `tbl_wallet_history` (`id`, `user_id`, `money`, `trancaction_id`, `type`, `p_type`, `createdAt`, `status`) VALUES
(2, 9, '700', '89B63675L2456022T', 'Credit', 'Paypal', '2019-10-14 21:22:48', 0),
(10, 9, '80', '', 'Debit', 'Paypal', '2019-10-14 21:22:51', 0),
(11, 9, '80', '', 'Debit', 'Paypal', '2019-10-14 21:22:53', 0),
(12, 9, '10', 'FLW-MOCK-838d7588f7cbedb2c2b4aabbc4e85305', 'Credit', 'Rave', '2019-10-14 21:27:49', 0),
(13, 9, '50', 'FLW-MOCK-76497ff07af3d50a19019d10d055639b', 'Credit', 'Rave', '2019-10-14 21:29:47', 0),
(14, 30, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-02 11:58:12', 0),
(15, 30, '20', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-02 11:58:18', 0),
(16, 31, '10', 'FLW-MOCK-928963619e5a4bbf568afd0abe36eaf5', 'Credit', 'Rave', '2019-11-26 14:26:03', 0),
(17, 31, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-26 14:29:00', 0),
(18, 31, '1', '', 'Debit', NULL, '2019-11-26 14:47:39', 0),
(19, 32, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-26 14:54:14', 0),
(20, 32, '10', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-11-26 14:54:18', 0),
(21, 32, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-26 14:54:58', 0),
(22, 32, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-26 14:55:00', 0),
(23, 32, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-26 14:55:02', 0),
(24, 31, '5', '', 'Debit', NULL, '2019-11-26 15:15:31', 0),
(25, 9, '60', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-11-26 17:31:15', 0),
(26, 1, '10', 'FLW-MOCK-493136107248829cfd3e6140e5aeaafe', 'Credit', 'Rave', '2019-11-27 09:20:32', 0),
(27, 1, '10', '1JK33089LL742943F', 'Credit', 'Paypal', '2019-11-27 09:21:54', 0),
(28, 1, '5', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-27 09:23:19', 0),
(29, 1, '10', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-11-27 09:24:34', 0),
(30, 1, '10', 'Transfer', 'Debit', 'Transfer', '2019-11-27 09:27:03', 0),
(31, 33, '10', 'Transfer', 'Credit', 'Transfer', '2019-11-27 09:27:03', 0),
(32, 1, '2', '', 'Debit', NULL, '2019-11-27 09:28:04', 0),
(33, 33, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-27 09:34:33', 0),
(34, 33, '1', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-11-27 09:34:38', 0),
(35, 33, '10', '6UA69545MR7763842', 'Credit', 'Paypal', '2019-11-27 11:17:07', 0),
(36, 33, '10', 'FLW-MOCK-db8a8908b6cbde80c53195789398433c', 'Credit', 'Rave', '2019-11-27 11:19:51', 0),
(37, 33, '10', 'Added by Admin', 'Credit', 'Admin Add', '2019-11-27 11:23:25', 0),
(38, 33, '10', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-11-27 11:26:36', 0),
(39, 1, '1', 'Transfer', 'Debit', 'Transfer', '2019-11-27 11:29:27', 0),
(40, 33, '1', 'Transfer', 'Credit', 'Transfer', '2019-11-27 11:29:27', 0),
(41, 33, '10', '', 'Debit', NULL, '2019-11-27 11:51:47', 0),
(42, 9, '10', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-12-03 18:46:47', 0),
(43, 9, '20', 'Debited by Admin', 'Debit', 'Admin Debit', '2019-12-03 18:48:06', 0),
(44, 31, '10', '', 'Debit', NULL, '2019-12-09 07:51:51', 0),
(45, 31, '100', 'Added by Admin', 'Credit', 'Admin Add', '2019-12-10 08:13:30', 0),
(46, 31, '10', '', 'Debit', NULL, '2019-12-10 08:47:34', 0),
(47, 33, '10', '', 'Debit', NULL, '2019-12-10 19:49:24', 0),
(48, 31, '10', '', 'Debit', NULL, '2019-12-11 12:01:12', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_webs`
--

CREATE TABLE `tbl_webs` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `status` enum('Active','Deactive') NOT NULL DEFAULT 'Active' COMMENT '0 = active, 1 = Inactive',
  `createdDtm` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDtm` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_webs`
--

INSERT INTO `tbl_webs` (`id`, `name`, `status`, `createdDtm`, `updatedDtm`) VALUES
(1, 'Power Ball', 'Active', '2019-08-20 18:48:28', '2019-08-25 01:40:33'),
(2, 'Mega Millions', 'Active', '2019-08-20 18:48:28', '2019-08-26 14:42:48'),
(3, 'Euro Millions ', 'Active', '2019-08-20 18:51:00', '2019-08-21 19:39:10'),
(4, 'Uk Euro', 'Active', '2019-08-20 18:51:00', '2019-08-21 19:39:07'),
(5, 'German Lottery ', 'Active', '2019-08-20 18:51:35', '2019-08-21 19:39:03'),
(6, 'Euro Jackpot', 'Active', '2019-08-20 18:51:35', '2019-08-21 19:38:59');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_withdrawl`
--

CREATE TABLE `tbl_withdrawl` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `paypal_email` varchar(250) NOT NULL,
  `money` varchar(11) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `createdAt` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_withdrawl`
--

INSERT INTO `tbl_withdrawl` (`id`, `user_id`, `type`, `paypal_email`, `money`, `status`, `createdAt`) VALUES
(1, 9, '0', 'sb-8gp56628823@personal.example.com', '20', 1, '2019-11-24 16:17:47'),
(2, 9, '0', 'sb-8gp56628823@personal.example.com', '20', 2, '2019-11-24 16:37:24'),
(3, 9, '0', 'sb-8gp56628823@personal.example.com', '300', 2, '2019-11-24 16:38:26'),
(4, 9, '0', 'test@gmail.comksdjhgkjashsdgdfgd', '30', 1, '2019-11-25 17:54:50'),
(5, 9, '0', 'sb-8gp56628823@personal.example.com', '60', 1, '2019-11-25 18:00:02'),
(6, 9, '1', 'AISC CODE\r\n', '10', 1, '2019-12-03 17:27:45'),
(7, 9, '1', 'Check CODE', '20', 1, '2019-12-03 17:56:14'),
(8, 9, '1', 'Check CODE', '20', 1, '2019-12-03 18:47:48');

-- --------------------------------------------------------

--
-- Table structure for table `winner_history`
--

CREATE TABLE `winner_history` (
  `id` int(11) NOT NULL,
  `unique_id` int(11) DEFAULT NULL,
  `website_id` int(11) NOT NULL DEFAULT '0',
  `whiteball` int(11) DEFAULT NULL,
  `megaball` int(11) DEFAULT NULL,
  `is_jackpot` tinyint(1) NOT NULL DEFAULT '0',
  `price_amount` varchar(100) DEFAULT NULL,
  `price_date` date DEFAULT NULL,
  `latest_date` date DEFAULT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `winner_history`
--

INSERT INTO `winner_history` (`id`, `unique_id`, `website_id`, `whiteball`, `megaball`, `is_jackpot`, `price_amount`, `price_date`, `latest_date`, `create_date`, `update_date`) VALUES
(1, 19, 2, 5, 1, 1, '0', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(2, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(3, 21, 2, 4, 1, 0, '$10000', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(4, 23, 2, 4, 0, 0, '$500', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(5, 24, 2, 3, 1, 0, '$200', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(6, 26, 2, 3, 0, 0, '$10', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(7, 27, 2, 2, 1, 0, '$10', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(8, 28, 2, 1, 1, 0, '$4', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(9, 29, 2, 0, 1, 0, '$2', NULL, '2019-10-08', '2019-10-09 14:50:59', NULL),
(10, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(11, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(12, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(13, NULL, 1, 4, 0, 0, '$100', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(14, NULL, 1, 3, 1, 0, '$100', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(15, NULL, 1, 3, 0, 0, '$7', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(16, NULL, 1, 2, 1, 0, '$7', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(17, NULL, 1, 1, 1, 0, '$4', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(18, NULL, 1, 0, 1, 0, '$4', NULL, '2019-10-05', '2019-10-09 14:58:08', NULL),
(19, NULL, 6, 5, 2, 0, '19.000.000,00 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(20, NULL, 6, 5, 1, 0, '427.577,80 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(21, NULL, 6, 5, 0, 0, '0,00 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(22, NULL, 6, 4, 2, 0, '4.790,70 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(23, NULL, 6, 4, 1, 0, '285,60 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(24, NULL, 6, 4, 0, 0, '143,10 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(25, NULL, 6, 3, 2, 0, '70,10 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(26, NULL, 6, 2, 2, 0, '23,70 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(27, NULL, 6, 3, 1, 0, '19,40 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(28, NULL, 6, 3, 0, 0, '17,90 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(29, NULL, 6, 1, 2, 0, '11,00 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(30, NULL, 6, 2, 1, 0, '7,70 €', NULL, '2019-10-04', '2019-10-09 14:59:11', NULL),
(31, NULL, 3, 5, 2, 0, '€190,000,000.00', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(32, NULL, 3, 5, 1, 0, '€5,227,531.11', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(33, NULL, 3, 5, 0, 0, '€24,862.44', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(34, NULL, 3, 4, 2, 0, '€3,800.31', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(35, NULL, 3, 4, 1, 0, '€182.70', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(36, NULL, 3, 3, 2, 0, '€127.33', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(37, NULL, 3, 4, 0, 0, '€62.54', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(38, NULL, 3, 2, 2, 0, '€23.02', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(39, NULL, 3, 3, 1, 0, '€14.94', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(40, NULL, 3, 3, 0, 0, '€11.86', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(41, NULL, 3, 1, 2, 0, '€12.47', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(42, NULL, 3, 2, 1, 0, '€8.11', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(43, NULL, 3, 2, 0, 0, '€4.17', NULL, '2019-10-08', '2019-10-09 14:59:50', NULL),
(44, NULL, 4, 5, 2, 1, '£14,830,800.00', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(45, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(46, NULL, 4, 5, 0, 0, '£33,781.00', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(47, NULL, 4, 4, 2, 0, '£2,015.00', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(48, NULL, 4, 4, 1, 0, '£114.10', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(49, NULL, 4, 3, 2, 0, '£74.30', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(50, NULL, 4, 4, 0, 0, '£43.30', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(51, NULL, 4, 2, 2, 0, '£12.40', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(52, NULL, 4, 3, 1, 0, '£8.90', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(53, NULL, 4, 3, 0, 0, '£8.20', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(54, NULL, 4, 1, 2, 0, '£6.40', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(55, NULL, 4, 2, 1, 0, '£4.60', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(56, NULL, 4, 2, 0, 0, '£2.80', NULL, '2019-10-11', '2019-10-13 10:39:41', NULL),
(57, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(58, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(59, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(60, NULL, 1, 4, 0, 0, '$100', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(61, NULL, 1, 3, 1, 0, '$100', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(62, NULL, 1, 3, 0, 0, '$7', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(63, NULL, 1, 2, 1, 0, '$7', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(64, NULL, 1, 1, 1, 0, '$4', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(65, NULL, 1, 0, 1, 0, '$4', NULL, '2019-10-12', '2019-10-13 10:50:43', NULL),
(66, 19, 2, 5, 1, 1, '0', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(67, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(68, 21, 2, 4, 1, 0, '$10000', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(69, 23, 2, 4, 0, 0, '$500', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(70, 24, 2, 3, 1, 0, '$200', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(71, 26, 2, 3, 0, 0, '$10', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(72, 27, 2, 2, 1, 0, '$10', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(73, 28, 2, 1, 1, 0, '$4', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(74, 29, 2, 0, 1, 0, '$2', NULL, '2019-10-11', '2019-10-13 10:53:29', NULL),
(75, NULL, 6, 5, 2, 0, '29.000.000,00 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(76, NULL, 6, 5, 1, 0, '904.193,40 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(77, NULL, 6, 5, 0, 0, '248.378,70 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(78, NULL, 6, 4, 2, 0, '2.996,40 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(79, NULL, 6, 4, 1, 0, '232,60 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(80, NULL, 6, 4, 0, 0, '100,40 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(81, NULL, 6, 3, 2, 0, '53,50 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(82, NULL, 6, 2, 2, 0, '18,70 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(83, NULL, 6, 3, 1, 0, '17,20 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(84, NULL, 6, 3, 0, 0, '13,70 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(85, NULL, 6, 1, 2, 0, '9,30 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(86, NULL, 6, 2, 1, 0, '7,40 €', NULL, '2019-10-11', '2019-10-13 10:53:39', NULL),
(87, NULL, 3, 5, 2, 1, '€17,000,000.00', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(88, NULL, 3, 5, 1, 0, '€292,510.70', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(89, NULL, 3, 5, 0, 0, '€54,503.26', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(90, NULL, 3, 4, 2, 0, '€3,251.12', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(91, NULL, 3, 4, 1, 0, '€184.17', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(92, NULL, 3, 3, 2, 0, '€119.92', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(93, NULL, 3, 4, 0, 0, '€69.91', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(94, NULL, 3, 2, 2, 0, '€20.02', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(95, NULL, 3, 3, 1, 0, '€14.37', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(96, NULL, 3, 3, 0, 0, '€13.38', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(97, NULL, 3, 1, 2, 0, '€10.36', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(98, NULL, 3, 2, 1, 0, '€7.49', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(99, NULL, 3, 2, 0, 0, '€4.68', NULL, '2019-10-11', '2019-10-13 10:54:24', NULL),
(100, NULL, 6, 5, 2, 0, '51.000.000,00 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(101, NULL, 6, 5, 1, 0, '367.390,00 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(102, NULL, 6, 5, 0, 0, '155.600,40 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(103, NULL, 6, 4, 2, 0, '6.483,30 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(104, NULL, 6, 4, 1, 0, '348,30 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(105, NULL, 6, 4, 0, 0, '142,60 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(106, NULL, 6, 3, 2, 0, '81,50 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(107, NULL, 6, 2, 2, 0, '27,60 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(108, NULL, 6, 3, 1, 0, '23,20 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(109, NULL, 6, 3, 0, 0, '18,60 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(110, NULL, 6, 1, 2, 0, '12,20 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(111, NULL, 6, 2, 1, 0, '9,20 €', NULL, '2019-10-25', '2019-10-28 12:00:05', NULL),
(112, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(113, NULL, 5, 6, 0, 0, '761,310.30', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(114, NULL, 5, 5, 1, 0, '18,126.40', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(115, NULL, 5, 5, 0, 0, '4,632.70', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(116, NULL, 5, 4, 1, 0, '215.70', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(117, NULL, 5, 4, 0, 0, '49.20', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(118, NULL, 5, 3, 1, 0, '19.60', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(119, NULL, 5, 3, 0, 0, '10.30', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(120, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-10-26', '2019-10-28 12:00:09', NULL),
(121, NULL, 3, 5, 2, 1, '£53,313,310.00', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(122, NULL, 3, 5, 1, 0, '£271,805.10', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(123, NULL, 3, 5, 0, 0, '£37,983.90', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(124, NULL, 3, 4, 2, 0, '£3,572.90', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(125, NULL, 3, 4, 1, 0, '£155.30', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(126, NULL, 3, 3, 2, 0, '£102.40', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(127, NULL, 3, 4, 0, 0, '£54.30', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(128, NULL, 3, 2, 2, 0, '£17.10', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(129, NULL, 3, 3, 1, 0, '£13.20', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(130, NULL, 3, 3, 0, 0, '£10.90', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(131, NULL, 3, 1, 2, 0, '£8.60', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(132, NULL, 3, 2, 1, 0, '£6.80', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(133, NULL, 3, 2, 0, 0, '£3.50', NULL, '2019-10-25', '2019-10-28 12:00:10', NULL),
(134, NULL, 4, 5, 2, 1, '£53,313,310.00', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(135, NULL, 4, 5, 1, 0, '£271,805.10', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(136, NULL, 4, 5, 0, 0, '£37,983.90', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(137, NULL, 4, 4, 2, 0, '£3,572.90', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(138, NULL, 4, 4, 1, 0, '£155.30', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(139, NULL, 4, 3, 2, 0, '£102.40', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(140, NULL, 4, 4, 0, 0, '£54.30', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(141, NULL, 4, 2, 2, 0, '£17.10', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(142, NULL, 4, 3, 1, 0, '£13.20', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(143, NULL, 4, 3, 0, 0, '£10.90', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(144, NULL, 4, 1, 2, 0, '£8.60', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(145, NULL, 4, 2, 1, 0, '£6.80', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(146, NULL, 4, 2, 0, 0, '£3.50', NULL, '2019-10-25', '2019-10-28 12:00:15', NULL),
(147, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(148, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(149, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(150, NULL, 1, 4, 0, 0, '$100', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(151, NULL, 1, 3, 1, 0, '$100', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(152, NULL, 1, 3, 0, 0, '$7', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(153, NULL, 1, 2, 1, 0, '$7', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(154, NULL, 1, 1, 1, 0, '$4', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(155, NULL, 1, 0, 1, 0, '$4', NULL, '2019-10-26', '2019-10-28 12:00:16', NULL),
(156, NULL, 3, 5, 2, 1, '£62,293,451.00', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(157, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(158, NULL, 3, 5, 0, 0, '£27,846.80', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(159, NULL, 3, 4, 2, 0, '£2,724.10', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(160, NULL, 3, 4, 1, 0, '£112.80', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(161, NULL, 3, 3, 2, 0, '£71.50', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(162, NULL, 3, 4, 0, 0, '£41.10', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(163, NULL, 3, 2, 2, 0, '£13.30', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(164, NULL, 3, 3, 1, 0, '£9.70', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(165, NULL, 3, 3, 0, 0, '£8.00', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(166, NULL, 3, 1, 2, 0, '£6.90', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(167, NULL, 3, 2, 1, 0, '£5.30', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(168, NULL, 3, 2, 0, 0, '£2.80', NULL, '2019-10-29', '2019-10-30 00:00:07', NULL),
(169, NULL, 4, 5, 2, 1, '£62,293,451.00', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(170, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(171, NULL, 4, 5, 0, 0, '£27,846.80', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(172, NULL, 4, 4, 2, 0, '£2,724.10', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(173, NULL, 4, 4, 1, 0, '£112.80', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(174, NULL, 4, 3, 2, 0, '£71.50', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(175, NULL, 4, 4, 0, 0, '£41.10', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(176, NULL, 4, 2, 2, 0, '£13.30', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(177, NULL, 4, 3, 1, 0, '£9.70', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(178, NULL, 4, 3, 0, 0, '£8.00', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(179, NULL, 4, 1, 2, 0, '£6.90', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(180, NULL, 4, 2, 1, 0, '£5.30', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(181, NULL, 4, 2, 0, 0, '£2.80', NULL, '2019-10-29', '2019-10-30 00:00:15', NULL),
(182, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(183, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(184, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(185, NULL, 1, 4, 0, 0, '$100', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(186, NULL, 1, 3, 1, 0, '$100', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(187, NULL, 1, 3, 0, 0, '$7', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(188, NULL, 1, 2, 1, 0, '$7', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(189, NULL, 1, 1, 1, 0, '$4', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(190, NULL, 1, 0, 1, 0, '$4', NULL, '2019-10-30', '2019-10-31 00:00:16', NULL),
(191, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(192, NULL, 5, 6, 0, 0, 'No Winners', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(193, NULL, 5, 5, 1, 0, '11,849.00', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(194, NULL, 5, 5, 0, 0, '4,196.50', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(195, NULL, 5, 4, 1, 0, '235.30', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(196, NULL, 5, 4, 0, 0, '48.70', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(197, NULL, 5, 3, 1, 0, '25.10', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(198, NULL, 5, 3, 0, 0, '11.60', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(199, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-10-30', '2019-10-31 12:00:07', NULL),
(200, NULL, 6, 5, 2, 0, '65.000.000,00 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(201, NULL, 6, 5, 1, 0, '266.080,40 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(202, NULL, 6, 5, 0, 0, '120.742,40 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(203, NULL, 6, 4, 2, 0, '5.524,10 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(204, NULL, 6, 4, 1, 0, '248,50 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(205, NULL, 6, 4, 0, 0, '112,00 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(206, NULL, 6, 3, 2, 0, '73,60 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(207, NULL, 6, 2, 2, 0, '26,20 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(208, NULL, 6, 3, 1, 0, '19,40 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(209, NULL, 6, 3, 0, 0, '15,20 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(210, NULL, 6, 1, 2, 0, '12,10 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(211, NULL, 6, 2, 1, 0, '8,50 €', NULL, '2019-11-01', '2019-11-02 00:00:06', NULL),
(212, NULL, 4, 5, 2, 1, '£69,286,018.00', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(213, NULL, 4, 5, 1, 0, '£411,229.10', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(214, NULL, 4, 5, 0, 0, '£47,889.90', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(215, NULL, 4, 4, 2, 0, '£2,179.00', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(216, NULL, 4, 4, 1, 0, '£133.70', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(217, NULL, 4, 3, 2, 0, '£68.80', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(218, NULL, 4, 4, 0, 0, '£49.90', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(219, NULL, 4, 2, 2, 0, '£11.10', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(220, NULL, 4, 3, 1, 0, '£11.20', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(221, NULL, 4, 3, 0, 0, '£9.90', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(222, NULL, 4, 1, 2, 0, '£5.10', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(223, NULL, 4, 2, 1, 0, '£5.70', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(224, NULL, 4, 2, 0, 0, '£3.40', NULL, '2019-11-01', '2019-11-02 00:00:11', NULL),
(225, NULL, 3, 5, 2, 1, '£69,286,018.00', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(226, NULL, 3, 5, 1, 0, '£411,229.10', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(227, NULL, 3, 5, 0, 0, '£47,889.90', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(228, NULL, 3, 4, 2, 0, '£2,179.00', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(229, NULL, 3, 4, 1, 0, '£133.70', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(230, NULL, 3, 3, 2, 0, '£68.80', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(231, NULL, 3, 4, 0, 0, '£49.90', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(232, NULL, 3, 2, 2, 0, '£11.10', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(233, NULL, 3, 3, 1, 0, '£11.20', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(234, NULL, 3, 3, 0, 0, '£9.90', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(235, NULL, 3, 1, 2, 0, '£5.10', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(236, NULL, 3, 2, 1, 0, '£5.70', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(237, NULL, 3, 2, 0, 0, '£3.40', NULL, '2019-11-01', '2019-11-02 00:00:14', NULL),
(238, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(239, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(240, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(241, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(242, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(243, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(244, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(245, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(246, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-02', '2019-11-03 00:00:13', NULL),
(247, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(248, NULL, 5, 6, 0, 0, 'No Winners', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(249, NULL, 5, 5, 1, 0, '8,824.00', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(250, NULL, 5, 5, 0, 0, '2,853.20', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(251, NULL, 5, 4, 1, 0, '150.70', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(252, NULL, 5, 4, 0, 0, '35.50', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(253, NULL, 5, 3, 1, 0, '17.80', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(254, NULL, 5, 3, 0, 0, '9.40', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(255, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-02', '2019-11-04 12:00:12', NULL),
(256, NULL, 3, 5, 2, 1, '£74,873,475.00', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(257, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(258, NULL, 3, 5, 0, 0, '£18,630.80', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(259, NULL, 3, 4, 2, 0, '£2,700.10', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(260, NULL, 3, 4, 1, 0, '£112.80', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(261, NULL, 3, 3, 2, 0, '£93.70', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(262, NULL, 3, 4, 0, 0, '£35.40', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(263, NULL, 3, 2, 2, 0, '£16.60', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(264, NULL, 3, 3, 1, 0, '£10.10', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(265, NULL, 3, 3, 0, 0, '£7.40', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(266, NULL, 3, 1, 2, 0, '£8.80', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(267, NULL, 3, 2, 1, 0, '£5.70', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(268, NULL, 3, 2, 0, 0, '£2.70', NULL, '2019-11-05', '2019-11-06 00:00:12', NULL),
(269, NULL, 4, 5, 2, 1, '£74,873,475.00', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(270, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(271, NULL, 4, 5, 0, 0, '£18,630.80', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(272, NULL, 4, 4, 2, 0, '£2,700.10', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(273, NULL, 4, 4, 1, 0, '£112.80', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(274, NULL, 4, 3, 2, 0, '£93.70', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(275, NULL, 4, 4, 0, 0, '£35.40', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(276, NULL, 4, 2, 2, 0, '£16.60', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(277, NULL, 4, 3, 1, 0, '£10.10', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(278, NULL, 4, 3, 0, 0, '£7.40', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(279, NULL, 4, 1, 2, 0, '£8.80', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(280, NULL, 4, 2, 1, 0, '£5.70', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(281, NULL, 4, 2, 0, 0, '£2.70', NULL, '2019-11-05', '2019-11-06 00:00:17', NULL),
(282, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(283, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(284, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(285, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(286, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(287, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(288, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(289, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(290, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-06', '2019-11-07 00:00:13', NULL),
(291, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(292, NULL, 5, 6, 0, 0, '3,229,161.70', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(293, NULL, 5, 5, 1, 0, '12,652.80', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(294, NULL, 5, 5, 0, 0, '3,939.00', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(295, NULL, 5, 4, 1, 0, '174.50', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(296, NULL, 5, 4, 0, 0, '39.60', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(297, NULL, 5, 3, 1, 0, '20.90', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(298, NULL, 5, 3, 0, 0, '10.50', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(299, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-06', '2019-11-07 12:00:14', NULL),
(300, NULL, 6, 5, 2, 0, '79.000.000,00 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(301, NULL, 6, 5, 1, 0, '931.220,30 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(302, NULL, 6, 5, 0, 0, '75.845,90 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(303, NULL, 6, 4, 2, 0, '5.666,60 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(304, NULL, 6, 4, 1, 0, '305,50 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(305, NULL, 6, 4, 0, 0, '125,30 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(306, NULL, 6, 3, 2, 0, '73,40 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(307, NULL, 6, 2, 2, 0, '25,80 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(308, NULL, 6, 3, 1, 0, '20,70 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(309, NULL, 6, 3, 0, 0, '15,80 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(310, NULL, 6, 1, 2, 0, '12,30 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(311, NULL, 6, 2, 1, 0, '8,60 €', NULL, '2019-11-08', '2019-11-09 00:00:07', NULL),
(312, NULL, 3, 5, 2, 1, '£84,012,704.00', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(313, NULL, 3, 5, 1, 0, '£250,569.00', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(314, NULL, 3, 5, 0, 0, '£29,180.20', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(315, NULL, 3, 4, 2, 0, '£1,067.10', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(316, NULL, 3, 4, 1, 0, '£86.40', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(317, NULL, 3, 3, 2, 0, '£40.20', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(318, NULL, 3, 4, 0, 0, '£34.80', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(319, NULL, 3, 2, 2, 0, '£8.10', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(320, NULL, 3, 3, 1, 0, '£7.50', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(321, NULL, 3, 3, 0, 0, '£7.10', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(322, NULL, 3, 1, 2, 0, '£4.90', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(323, NULL, 3, 2, 1, 0, '£4.60', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(324, NULL, 3, 2, 0, 0, '£2.70', NULL, '2019-11-08', '2019-11-09 00:00:12', NULL),
(325, NULL, 4, 5, 2, 1, '£84,012,704.00', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(326, NULL, 4, 5, 1, 0, '£250,569.00', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(327, NULL, 4, 5, 0, 0, '£29,180.20', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(328, NULL, 4, 4, 2, 0, '£1,067.10', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(329, NULL, 4, 4, 1, 0, '£86.40', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(330, NULL, 4, 3, 2, 0, '£40.20', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(331, NULL, 4, 4, 0, 0, '£34.80', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(332, NULL, 4, 2, 2, 0, '£8.10', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(333, NULL, 4, 3, 1, 0, '£7.50', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(334, NULL, 4, 3, 0, 0, '£7.10', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(335, NULL, 4, 1, 2, 0, '£4.90', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(336, NULL, 4, 2, 1, 0, '£4.60', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(337, NULL, 4, 2, 0, 0, '£2.70', NULL, '2019-11-08', '2019-11-09 00:00:19', NULL),
(338, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(339, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(340, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(341, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(342, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(343, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(344, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(345, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(346, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-09', '2019-11-10 00:00:13', NULL),
(347, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(348, NULL, 5, 6, 0, 0, '268,557.60', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(349, NULL, 5, 5, 1, 0, '7,193.50', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(350, NULL, 5, 5, 0, 0, '3,209.80', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(351, NULL, 5, 4, 1, 0, '147.90', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(352, NULL, 5, 4, 0, 0, '39.80', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(353, NULL, 5, 3, 1, 0, '16.20', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(354, NULL, 5, 3, 0, 0, '9.90', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(355, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-09', '2019-11-11 12:00:12', NULL),
(356, NULL, 3, 5, 2, 1, '£89,866,288.00', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(357, NULL, 3, 5, 1, 0, '£139,558.40', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(358, NULL, 3, 5, 0, 0, '£0.00', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(359, NULL, 3, 4, 2, 0, '£1,728.10', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(360, NULL, 3, 4, 1, 0, '£115.90', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(361, NULL, 3, 3, 2, 0, '£71.20', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(362, NULL, 3, 4, 0, 0, '£41.10', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(363, NULL, 3, 2, 2, 0, '£11.90', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(364, NULL, 3, 3, 1, 0, '£9.10', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(365, NULL, 3, 3, 0, 0, '£8.00', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(366, NULL, 3, 1, 2, 0, '£6.30', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(367, NULL, 3, 2, 1, 0, '£4.80', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(368, NULL, 3, 2, 0, 0, '£2.70', NULL, '2019-11-12', '2019-11-13 00:00:12', NULL),
(369, NULL, 4, 5, 2, 1, '£89,866,288.00', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(370, NULL, 4, 5, 1, 0, '£139,558.40', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(371, NULL, 4, 5, 0, 0, 'No UK Winners', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(372, NULL, 4, 4, 2, 0, '£1,728.10', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(373, NULL, 4, 4, 1, 0, '£115.90', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(374, NULL, 4, 3, 2, 0, '£71.20', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(375, NULL, 4, 4, 0, 0, '£41.10', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(376, NULL, 4, 2, 2, 0, '£11.90', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(377, NULL, 4, 3, 1, 0, '£9.10', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(378, NULL, 4, 3, 0, 0, '£8.00', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(379, NULL, 4, 1, 2, 0, '£6.30', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(380, NULL, 4, 2, 1, 0, '£4.80', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(381, NULL, 4, 2, 0, 0, '£2.70', NULL, '2019-11-12', '2019-11-13 00:00:21', NULL),
(382, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(383, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(384, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(385, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(386, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(387, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(388, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(389, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(390, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-13', '2019-11-14 00:00:14', NULL),
(391, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(392, NULL, 5, 6, 0, 0, 'No Winners', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(393, NULL, 5, 5, 1, 0, '21,796.60', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(394, NULL, 5, 5, 0, 0, '5,559.40', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(395, NULL, 5, 4, 1, 0, '335.30', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(396, NULL, 5, 4, 0, 0, '57.10', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(397, NULL, 5, 3, 1, 0, '31.50', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(398, NULL, 5, 3, 0, 0, '12.00', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(399, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-13', '2019-11-14 12:00:10', NULL),
(400, NULL, 6, 5, 2, 0, '90.000.000,00 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(401, NULL, 6, 5, 1, 0, '1.617.777,00 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(402, NULL, 6, 5, 0, 0, '170.872,40 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(403, NULL, 6, 4, 2, 0, '5.246,00 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(404, NULL, 6, 4, 1, 0, '239,20 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(405, NULL, 6, 4, 0, 0, '107,10 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(406, NULL, 6, 3, 2, 0, '59,40 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(407, NULL, 6, 2, 2, 0, '20,50 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(408, NULL, 6, 3, 1, 0, '17,90 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(409, NULL, 6, 3, 0, 0, '15,00 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(410, NULL, 6, 1, 2, 0, '10,00 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(411, NULL, 6, 2, 1, 0, '7,70 €', NULL, '2019-11-15', '2019-11-16 00:00:07', NULL),
(412, NULL, 3, 5, 2, 1, '£98,311,223.00', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(413, NULL, 3, 5, 1, 0, '£84,897.80', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(414, NULL, 3, 5, 0, 0, '£21,751.00', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(415, NULL, 3, 4, 2, 0, '£2,875.40', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(416, NULL, 3, 4, 1, 0, '£116.50', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(417, NULL, 3, 3, 2, 0, '£77.50', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(418, NULL, 3, 4, 0, 0, '£37.40', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(419, NULL, 3, 2, 2, 0, '£14.10', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(420, NULL, 3, 3, 1, 0, '£9.70', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(421, NULL, 3, 3, 0, 0, '£7.50', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(422, NULL, 3, 1, 2, 0, '£7.60', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(423, NULL, 3, 2, 1, 0, '£5.30', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(424, NULL, 3, 2, 0, 0, '£2.60', NULL, '2019-11-15', '2019-11-16 00:00:09', NULL),
(425, NULL, 4, 5, 2, 1, '£98,311,223.00', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(426, NULL, 4, 5, 1, 0, '£84,897.80', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(427, NULL, 4, 5, 0, 0, '£21,751.00', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(428, NULL, 4, 4, 2, 0, '£2,875.40', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(429, NULL, 4, 4, 1, 0, '£116.50', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(430, NULL, 4, 3, 2, 0, '£77.50', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(431, NULL, 4, 4, 0, 0, '£37.40', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(432, NULL, 4, 2, 2, 0, '£14.10', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(433, NULL, 4, 3, 1, 0, '£9.70', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(434, NULL, 4, 3, 0, 0, '£7.50', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(435, NULL, 4, 1, 2, 0, '£7.60', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(436, NULL, 4, 2, 1, 0, '£5.30', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(437, NULL, 4, 2, 0, 0, '£2.60', NULL, '2019-11-15', '2019-11-16 00:00:18', NULL),
(438, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(439, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(440, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(441, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(442, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(443, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(444, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(445, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(446, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-16', '2019-11-17 00:00:18', NULL),
(447, NULL, 5, 6, 1, 1, '18,415,305.10', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(448, NULL, 5, 6, 0, 0, 'No Winners', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(449, NULL, 5, 5, 1, 0, '11,234.50', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(450, NULL, 5, 5, 0, 0, '3,864.40', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(451, NULL, 5, 4, 1, 0, '235.10', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(452, NULL, 5, 4, 0, 0, '44.20', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(453, NULL, 5, 3, 1, 0, '24.90', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(454, NULL, 5, 3, 0, 0, '10.90', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(455, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-16', '2019-11-18 12:00:09', NULL),
(456, NULL, 3, 5, 2, 0, '£105,100,701.90', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(457, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(458, NULL, 3, 5, 0, 0, '£13,336.20', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(459, NULL, 3, 4, 2, 0, '£1,696.00', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(460, NULL, 3, 4, 1, 0, '£92.30', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(461, NULL, 3, 3, 2, 0, '£50.40', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(462, NULL, 3, 4, 0, 0, '£33.40', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(463, NULL, 3, 2, 2, 0, '£9.90', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(464, NULL, 3, 3, 1, 0, '£8.10', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(465, NULL, 3, 3, 0, 0, '£6.90', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(466, NULL, 3, 1, 2, 0, '£5.60', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(467, NULL, 3, 2, 1, 0, '£4.70', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(468, NULL, 3, 2, 0, 0, '£2.60', NULL, '2019-11-19', '2019-11-20 00:00:07', NULL),
(469, NULL, 4, 5, 2, 0, '£105,100,701.90', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(470, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(471, NULL, 4, 5, 0, 0, '£13,336.20', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(472, NULL, 4, 4, 2, 0, '£1,696.00', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(473, NULL, 4, 4, 1, 0, '£92.30', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(474, NULL, 4, 3, 2, 0, '£50.40', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(475, NULL, 4, 4, 0, 0, '£33.40', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(476, NULL, 4, 2, 2, 0, '£9.90', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(477, NULL, 4, 3, 1, 0, '£8.10', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(478, NULL, 4, 3, 0, 0, '£6.90', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(479, NULL, 4, 1, 2, 0, '£5.60', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(480, NULL, 4, 2, 1, 0, '£4.70', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(481, NULL, 4, 2, 0, 0, '£2.60', NULL, '2019-11-19', '2019-11-20 00:00:16', NULL),
(482, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(483, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(484, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(485, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(486, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(487, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(488, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(489, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(490, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-20', '2019-11-21 00:00:16', NULL),
(491, NULL, 5, 6, 1, 1, '1,329,985.60', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(492, NULL, 5, 6, 0, 0, '793,067.10', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(493, NULL, 5, 5, 1, 0, '9,012.10', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(494, NULL, 5, 5, 0, 0, '2,314.30', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(495, NULL, 5, 4, 1, 0, '183.00', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(496, NULL, 5, 4, 0, 0, '30.10', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(497, NULL, 5, 3, 1, 0, '24.10', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(498, NULL, 5, 3, 0, 0, '8.80', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(499, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-20', '2019-11-21 12:00:15', NULL),
(500, NULL, 6, 5, 2, 0, '30.000.000,00 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(501, NULL, 6, 5, 1, 0, '2.938.894,20 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(502, NULL, 6, 5, 0, 0, '66.249,60 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(503, NULL, 6, 4, 2, 0, '1.671,60 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(504, NULL, 6, 4, 1, 0, '165,90 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(505, NULL, 6, 4, 0, 0, '85,90 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(506, NULL, 6, 3, 2, 0, '24,90 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(507, NULL, 6, 2, 2, 0, '12,70 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(508, NULL, 6, 3, 1, 0, '12,70 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(509, NULL, 6, 3, 0, 0, '12,70 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(510, NULL, 6, 1, 2, 0, '6,60 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(511, NULL, 6, 2, 1, 0, '6,60 €', NULL, '2019-11-22', '2019-11-23 00:00:06', NULL),
(512, NULL, 3, 5, 2, 1, '£14,608,100.00', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(513, NULL, 3, 5, 1, 0, '£174,165.50', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(514, NULL, 3, 5, 0, 0, '£27,043.40', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(515, NULL, 3, 4, 2, 0, '£2,834.50', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(516, NULL, 3, 4, 1, 0, '£115.00', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(517, NULL, 3, 3, 2, 0, '£80.20', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(518, NULL, 3, 4, 0, 0, '£39.20', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(519, NULL, 3, 2, 2, 0, '£14.70', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(520, NULL, 3, 3, 1, 0, '£9.80', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(521, NULL, 3, 3, 0, 0, '£8.70', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(522, NULL, 3, 1, 2, 0, '£7.80', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(523, NULL, 3, 2, 1, 0, '£5.50', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(524, NULL, 3, 2, 0, 0, '£3.10', NULL, '2019-11-22', '2019-11-23 00:00:11', NULL),
(525, NULL, 4, 5, 2, 1, '£14,608,100.00', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(526, NULL, 4, 5, 1, 0, '£174,165.50', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(527, NULL, 4, 5, 0, 0, '£27,043.40', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(528, NULL, 4, 4, 2, 0, '£2,834.50', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(529, NULL, 4, 4, 1, 0, '£115.00', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(530, NULL, 4, 3, 2, 0, '£80.20', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(531, NULL, 4, 4, 0, 0, '£39.20', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(532, NULL, 4, 2, 2, 0, '£14.70', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(533, NULL, 4, 3, 1, 0, '£9.80', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(534, NULL, 4, 3, 0, 0, '£8.70', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(535, NULL, 4, 1, 2, 0, '£7.80', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(536, NULL, 4, 2, 1, 0, '£5.50', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(537, NULL, 4, 2, 0, 0, '£3.10', NULL, '2019-11-22', '2019-11-23 00:00:16', NULL),
(538, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(539, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(540, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(541, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(542, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(543, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(544, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(545, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(546, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-23', '2019-11-24 00:00:13', NULL),
(547, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(548, NULL, 5, 6, 0, 0, '1,509,652.60', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(549, NULL, 5, 5, 1, 0, '6,621.20', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(550, NULL, 5, 5, 0, 0, '3,162.60', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(551, NULL, 5, 4, 1, 0, '134.80', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(552, NULL, 5, 4, 0, 0, '36.60', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(553, NULL, 5, 3, 1, 0, '15.70', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(554, NULL, 5, 3, 0, 0, '9.30', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(555, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-23', '2019-11-25 12:00:13', NULL),
(556, NULL, 3, 5, 2, 1, '£22,196,254.00', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(557, NULL, 3, 5, 1, 0, '£133,632.30', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(558, NULL, 3, 5, 0, 0, '£0.00', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(559, NULL, 3, 4, 2, 0, '£1,522.30', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(560, NULL, 3, 4, 1, 0, '£108.40', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(561, NULL, 3, 3, 2, 0, '£48.40', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(562, NULL, 3, 4, 0, 0, '£42.00', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(563, NULL, 3, 2, 2, 0, '£8.30', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(564, NULL, 3, 3, 1, 0, '£8.70', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(565, NULL, 3, 3, 0, 0, '£7.90', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(566, NULL, 3, 1, 2, 0, '£4.50', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(567, NULL, 3, 2, 1, 0, '£4.60', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(568, NULL, 3, 2, 0, 0, '£2.80', NULL, '2019-11-26', '2019-11-27 00:00:15', NULL),
(569, NULL, 4, 5, 2, 1, '£22,196,254.00', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(570, NULL, 4, 5, 1, 0, '£133,632.30', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(571, NULL, 4, 5, 0, 0, 'No UK Winners', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(572, NULL, 4, 4, 2, 0, '£1,522.30', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(573, NULL, 4, 4, 1, 0, '£108.40', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(574, NULL, 4, 3, 2, 0, '£48.40', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(575, NULL, 4, 4, 0, 0, '£42.00', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(576, NULL, 4, 2, 2, 0, '£8.30', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(577, NULL, 4, 3, 1, 0, '£8.70', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(578, NULL, 4, 3, 0, 0, '£7.90', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(579, NULL, 4, 1, 2, 0, '£4.50', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(580, NULL, 4, 2, 1, 0, '£4.60', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(581, NULL, 4, 2, 0, 0, '£2.80', NULL, '2019-11-26', '2019-11-27 00:00:16', NULL),
(582, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(583, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(584, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(585, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(586, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(587, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(588, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(589, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(590, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-27', '2019-11-28 00:00:13', NULL),
(591, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(592, NULL, 5, 6, 0, 0, '792,601.20', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(593, NULL, 5, 5, 1, 0, '16,512.50', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(594, NULL, 5, 5, 0, 0, '6,035.00', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(595, NULL, 5, 4, 1, 0, '276.90', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(596, NULL, 5, 4, 0, 0, '55.90', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(597, NULL, 5, 3, 1, 0, '24.50', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(598, NULL, 5, 3, 0, 0, '11.40', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(599, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-27', '2019-11-28 12:00:17', NULL),
(600, NULL, 6, 5, 2, 0, '10.000.000,00 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(601, NULL, 3, 5, 2, 1, '£32,747,133.00', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(602, NULL, 6, 5, 1, 0, '453.924,10 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL);
INSERT INTO `winner_history` (`id`, `unique_id`, `website_id`, `whiteball`, `megaball`, `is_jackpot`, `price_amount`, `price_date`, `latest_date`, `create_date`, `update_date`) VALUES
(603, NULL, 6, 5, 0, 0, '128.166,80 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(604, NULL, 3, 5, 1, 0, '£376,426.00', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(605, NULL, 6, 4, 2, 0, '7.628,90 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(606, NULL, 6, 4, 1, 0, '334,30 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(607, NULL, 3, 5, 0, 0, '£0.00', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(608, NULL, 6, 4, 0, 0, '138,70 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(609, NULL, 6, 3, 2, 0, '73,40 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(610, NULL, 3, 4, 2, 0, '£2,199.10', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(611, NULL, 6, 2, 2, 0, '24,10 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(612, NULL, 3, 4, 1, 0, '£107.60', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(613, NULL, 6, 3, 1, 0, '21,30 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(614, NULL, 3, 3, 2, 0, '£62.60', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(615, NULL, 6, 3, 0, 0, '16,90 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(616, NULL, 3, 4, 0, 0, '£35.20', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(617, NULL, 6, 1, 2, 0, '10,90 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(618, NULL, 3, 2, 2, 0, '£10.90', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(619, NULL, 6, 2, 1, 0, '8,70 €', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(620, NULL, 3, 3, 1, 0, '£8.40', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(621, NULL, 3, 3, 0, 0, '£7.00', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(622, NULL, 3, 1, 2, 0, '£6.10', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(623, NULL, 3, 2, 1, 0, '£4.70', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(624, NULL, 3, 2, 0, 0, '£2.60', NULL, '2019-11-29', '2019-11-30 00:00:10', NULL),
(625, NULL, 4, 5, 2, 1, '£32,747,133.00', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(626, NULL, 4, 5, 1, 0, '£376,426.00', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(627, NULL, 4, 5, 0, 0, 'No UK Winners', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(628, NULL, 4, 4, 2, 0, '£2,199.10', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(629, NULL, 4, 4, 1, 0, '£107.60', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(630, NULL, 4, 3, 2, 0, '£62.60', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(631, NULL, 4, 4, 0, 0, '£35.20', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(632, NULL, 4, 2, 2, 0, '£10.90', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(633, NULL, 4, 3, 1, 0, '£8.40', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(634, NULL, 4, 3, 0, 0, '£7.00', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(635, NULL, 4, 1, 2, 0, '£6.10', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(636, NULL, 4, 2, 1, 0, '£4.70', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(637, NULL, 4, 2, 0, 0, '£2.60', NULL, '2019-11-29', '2019-11-30 00:00:18', NULL),
(638, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(639, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(640, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(641, NULL, 1, 4, 0, 0, '$100', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(642, NULL, 1, 3, 1, 0, '$100', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(643, NULL, 1, 3, 0, 0, '$7', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(644, NULL, 1, 2, 1, 0, '$7', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(645, NULL, 1, 1, 1, 0, '$4', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(646, NULL, 1, 0, 1, 0, '$4', NULL, '2019-11-30', '2019-12-02 00:00:13', NULL),
(647, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(648, NULL, 5, 6, 0, 0, '1,615,339.40', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(649, NULL, 5, 5, 1, 0, '8,779.00', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(650, NULL, 5, 5, 0, 0, '2,867.40', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(651, NULL, 5, 4, 1, 0, '160.80', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(652, NULL, 5, 4, 0, 0, '42.80', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(653, NULL, 5, 3, 1, 0, '18.60', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(654, NULL, 5, 3, 0, 0, '10.70', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(655, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-11-30', '2019-12-02 12:00:12', NULL),
(656, 19, 2, 5, 1, 1, '0', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(657, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(658, 21, 2, 4, 1, 0, '$10000', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(659, 23, 2, 4, 0, 0, '$500', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(660, 24, 2, 3, 1, 0, '$200', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(661, 26, 2, 3, 0, 0, '$10', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(662, 27, 2, 2, 1, 0, '$10', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(663, 28, 2, 1, 1, 0, '$4', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(664, 29, 2, 0, 1, 0, '$2', NULL, '2019-11-29', '2019-12-03 11:21:29', NULL),
(665, 19, 2, 5, 1, 1, '0', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(666, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(667, 21, 2, 4, 1, 0, '$10000', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(668, 23, 2, 4, 0, 0, '$500', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(669, 24, 2, 3, 1, 0, '$200', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(670, 26, 2, 3, 0, 0, '$10', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(671, 27, 2, 2, 1, 0, '$10', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(672, 28, 2, 1, 1, 0, '$4', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(673, 29, 2, 0, 1, 0, '$2', NULL, '2019-12-03', '2019-12-04 00:00:06', NULL),
(674, NULL, 3, 5, 2, 0, '£40,957,696.60', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(675, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(676, NULL, 3, 5, 0, 0, '£0.00', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(677, NULL, 3, 4, 2, 0, '£2,624.30', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(678, NULL, 3, 4, 1, 0, '£153.80', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(679, NULL, 3, 3, 2, 0, '£97.10', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(680, NULL, 3, 4, 0, 0, '£48.00', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(681, NULL, 3, 2, 2, 0, '£17.40', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(682, NULL, 3, 3, 1, 0, '£11.30', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(683, NULL, 3, 3, 0, 0, '£8.70', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(684, NULL, 3, 1, 2, 0, '£9.30', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(685, NULL, 3, 2, 1, 0, '£6.40', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(686, NULL, 3, 2, 0, 0, '£3.10', NULL, '2019-12-03', '2019-12-04 00:00:12', NULL),
(687, NULL, 4, 5, 2, 0, '£40,957,696.60', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(688, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(689, NULL, 4, 5, 0, 0, 'No UK Winners', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(690, NULL, 4, 4, 2, 0, '£2,624.30', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(691, NULL, 4, 4, 1, 0, '£153.80', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(692, NULL, 4, 3, 2, 0, '£97.10', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(693, NULL, 4, 4, 0, 0, '£48.00', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(694, NULL, 4, 2, 2, 0, '£17.40', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(695, NULL, 4, 3, 1, 0, '£11.30', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(696, NULL, 4, 3, 0, 0, '£8.70', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(697, NULL, 4, 1, 2, 0, '£9.30', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(698, NULL, 4, 2, 1, 0, '£6.40', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(699, NULL, 4, 2, 0, 0, '£3.10', NULL, '2019-12-03', '2019-12-04 00:00:19', NULL),
(700, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(701, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(702, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(703, NULL, 1, 4, 0, 0, '$100', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(704, NULL, 1, 3, 1, 0, '$100', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(705, NULL, 1, 3, 0, 0, '$7', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(706, NULL, 1, 2, 1, 0, '$7', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(707, NULL, 1, 1, 1, 0, '$4', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(708, NULL, 1, 0, 1, 0, '$4', NULL, '2019-12-04', '2019-12-05 00:00:14', NULL),
(709, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(710, NULL, 5, 6, 0, 0, 'No Winners', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(711, NULL, 5, 5, 1, 0, '15,986.30', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(712, NULL, 5, 5, 0, 0, '4,967.10', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(713, NULL, 5, 4, 1, 0, '228.30', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(714, NULL, 5, 4, 0, 0, '57.00', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(715, NULL, 5, 3, 1, 0, '23.40', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(716, NULL, 5, 3, 0, 0, '12.30', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(717, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-12-04', '2019-12-05 12:00:11', NULL),
(718, 19, 2, 5, 1, 1, '0', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(719, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(720, 21, 2, 4, 1, 0, '$10000', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(721, 23, 2, 4, 0, 0, '$500', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(722, 24, 2, 3, 1, 0, '$200', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(723, 26, 2, 3, 0, 0, '$10', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(724, 27, 2, 2, 1, 0, '$10', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(725, 28, 2, 1, 1, 0, '$4', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(726, 29, 2, 0, 1, 0, '$2', NULL, '2019-12-06', '2019-12-07 00:00:05', NULL),
(727, NULL, 6, 5, 2, 1, '23.515.066,30 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(728, NULL, 6, 5, 1, 0, '477.465,40 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(729, NULL, 6, 5, 0, 0, '96.295,50 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(730, NULL, 6, 4, 2, 0, '3.941,90 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(731, NULL, 6, 4, 1, 0, '255,30 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(732, NULL, 6, 4, 0, 0, '96,80 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(733, NULL, 6, 3, 2, 0, '67,10 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(734, NULL, 6, 2, 2, 0, '24,00 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(735, NULL, 6, 3, 1, 0, '19,60 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(736, NULL, 6, 3, 0, 0, '13,80 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(737, NULL, 6, 1, 2, 0, '11,30 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(738, NULL, 6, 2, 1, 0, '8,60 €', NULL, '2019-12-06', '2019-12-07 00:00:06', NULL),
(739, NULL, 3, 5, 2, 1, '£14,319,100.00', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(740, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(741, NULL, 3, 5, 0, 0, '£0.00', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(742, NULL, 3, 4, 2, 0, '£4,806.20', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(743, NULL, 3, 4, 1, 0, '£132.90', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(744, NULL, 3, 3, 2, 0, '£90.30', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(745, NULL, 3, 4, 0, 0, '£40.30', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(746, NULL, 3, 2, 2, 0, '£15.90', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(747, NULL, 3, 3, 1, 0, '£10.70', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(748, NULL, 3, 3, 0, 0, '£7.90', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(749, NULL, 3, 1, 2, 0, '£8.50', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(750, NULL, 3, 2, 1, 0, '£5.70', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(751, NULL, 3, 2, 0, 0, '£2.80', NULL, '2019-12-06', '2019-12-07 00:00:10', NULL),
(752, NULL, 4, 5, 2, 1, '£14,319,100.00', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(753, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(754, NULL, 4, 5, 0, 0, 'No UK Winners', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(755, NULL, 4, 4, 2, 0, '£4,806.20', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(756, NULL, 4, 4, 1, 0, '£132.90', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(757, NULL, 4, 3, 2, 0, '£90.30', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(758, NULL, 4, 4, 0, 0, '£40.30', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(759, NULL, 4, 2, 2, 0, '£15.90', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(760, NULL, 4, 3, 1, 0, '£10.70', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(761, NULL, 4, 3, 0, 0, '£7.90', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(762, NULL, 4, 1, 2, 0, '£8.50', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(763, NULL, 4, 2, 1, 0, '£5.70', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(764, NULL, 4, 2, 0, 0, '£2.80', NULL, '2019-12-06', '2019-12-07 00:00:18', NULL),
(765, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(766, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(767, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(768, NULL, 1, 4, 0, 0, '$100', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(769, NULL, 1, 3, 1, 0, '$100', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(770, NULL, 1, 3, 0, 0, '$7', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(771, NULL, 1, 2, 1, 0, '$7', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(772, NULL, 1, 1, 1, 0, '$4', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(773, NULL, 1, 0, 1, 0, '$4', NULL, '2019-12-07', '2019-12-08 00:00:14', NULL),
(774, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(775, NULL, 5, 6, 0, 0, '687,685.20', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(776, NULL, 5, 5, 1, 0, '14,027.10', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(777, NULL, 5, 5, 0, 0, '4,046.30', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(778, NULL, 5, 4, 1, 0, '205.20', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(779, NULL, 5, 4, 0, 0, '43.90', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(780, NULL, 5, 3, 1, 0, '21.60', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(781, NULL, 5, 3, 0, 0, '10.20', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(782, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-12-07', '2019-12-09 12:00:11', NULL),
(783, 19, 2, 5, 1, 1, '0', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(784, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(785, 21, 2, 4, 1, 0, '$10000', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(786, 23, 2, 4, 0, 0, '$500', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(787, 24, 2, 3, 1, 0, '$200', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(788, 26, 2, 3, 0, 0, '$10', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(789, 27, 2, 2, 1, 0, '$10', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(790, 28, 2, 1, 1, 0, '$4', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(791, 29, 2, 0, 1, 0, '$2', NULL, '2019-12-10', '2019-12-11 00:00:10', NULL),
(792, NULL, 3, 5, 2, 1, '£21,715,889.00', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(793, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(794, NULL, 3, 5, 0, 0, '£0.00', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(795, NULL, 3, 4, 2, 0, '£1,119.30', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(796, NULL, 3, 4, 1, 0, '£76.00', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(797, NULL, 3, 3, 2, 0, '£40.30', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(798, NULL, 3, 4, 0, 0, '£31.90', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(799, NULL, 3, 2, 2, 0, '£7.90', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(800, NULL, 3, 3, 1, 0, '£7.70', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(801, NULL, 3, 3, 0, 0, '£7.20', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(802, NULL, 3, 1, 2, 0, '£4.60', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(803, NULL, 3, 2, 1, 0, '£4.60', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(804, NULL, 3, 2, 0, 0, '£2.70', NULL, '2019-12-10', '2019-12-11 00:00:14', NULL),
(805, NULL, 4, 5, 2, 1, '£21,715,889.00', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(806, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(807, NULL, 4, 5, 0, 0, 'No UK Winners', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(808, NULL, 4, 4, 2, 0, '£1,119.30', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(809, NULL, 4, 4, 1, 0, '£76.00', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(810, NULL, 4, 3, 2, 0, '£40.30', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(811, NULL, 4, 4, 0, 0, '£31.90', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(812, NULL, 4, 2, 2, 0, '£7.90', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(813, NULL, 4, 3, 1, 0, '£7.70', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(814, NULL, 4, 3, 0, 0, '£7.20', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(815, NULL, 4, 1, 2, 0, '£4.60', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(816, NULL, 4, 2, 1, 0, '£4.60', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(817, NULL, 4, 2, 0, 0, '£2.70', NULL, '2019-12-10', '2019-12-11 00:00:18', NULL),
(818, NULL, 1, 5, 1, 1, 'Grand Prize', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(819, NULL, 1, 5, 0, 0, '$1 Million', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(820, NULL, 1, 4, 1, 0, '$50,000', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(821, NULL, 1, 4, 0, 0, '$100', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(822, NULL, 1, 3, 1, 0, '$100', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(823, NULL, 1, 3, 0, 0, '$7', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(824, NULL, 1, 2, 1, 0, '$7', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(825, NULL, 1, 1, 1, 0, '$4', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(826, NULL, 1, 0, 1, 0, '$4', NULL, '2019-12-11', '2019-12-12 00:00:13', NULL),
(827, NULL, 5, 6, 1, 0, 'No Winners', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(828, NULL, 5, 6, 0, 0, '457,367.80', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(829, NULL, 5, 5, 1, 0, '9,942.70', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(830, NULL, 5, 5, 0, 0, '5,063.10', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(831, NULL, 5, 4, 1, 0, '208.80', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(832, NULL, 5, 4, 0, 0, '50.90', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(833, NULL, 5, 3, 1, 0, '22.10', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(834, NULL, 5, 3, 0, 0, '11.80', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(835, NULL, 5, 2, 1, 0, '5.00', NULL, '2019-12-11', '2019-12-12 12:00:12', NULL),
(836, NULL, 6, 5, 2, 1, '10.455.190,60 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(837, NULL, 6, 5, 1, 0, '607.208,60 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(838, NULL, 6, 5, 0, 0, '321.463,30 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(839, NULL, 6, 4, 2, 0, '4.762,40 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(840, NULL, 6, 4, 1, 0, '306,60 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(841, NULL, 6, 4, 0, 0, '128,90 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(842, NULL, 6, 3, 2, 0, '67,90 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(843, NULL, 6, 2, 2, 0, '23,80 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(844, NULL, 6, 3, 1, 0, '21,70 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(845, NULL, 6, 3, 0, 0, '17,10 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(846, NULL, 6, 1, 2, 0, '11,10 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(847, NULL, 6, 2, 1, 0, '9,30 €', NULL, '2019-12-13', '2019-12-14 00:00:07', NULL),
(848, 19, 2, 5, 1, 1, '0', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(849, 20, 2, 5, 0, 0, '$1 Million', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(850, 21, 2, 4, 1, 0, '$10000', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(851, 23, 2, 4, 0, 0, '$500', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(852, 24, 2, 3, 1, 0, '$200', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(853, 26, 2, 3, 0, 0, '$10', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(854, 27, 2, 2, 1, 0, '$10', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(855, 28, 2, 1, 1, 0, '$4', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(856, 29, 2, 0, 1, 0, '$2', NULL, '2019-12-13', '2019-12-14 00:00:09', NULL),
(857, NULL, 3, 5, 2, 1, '£32,875,644.00', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(858, NULL, 3, 5, 1, 0, '£0.00', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(859, NULL, 3, 5, 0, 0, '£17,494.40', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(860, NULL, 3, 4, 2, 0, '£1,845.60', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(861, NULL, 3, 4, 1, 0, '£90.70', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(862, NULL, 3, 3, 2, 0, '£73.40', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(863, NULL, 3, 4, 0, 0, '£29.10', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(864, NULL, 3, 2, 2, 0, '£13.40', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(865, NULL, 3, 3, 1, 0, '£8.60', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(866, NULL, 3, 3, 0, 0, '£6.60', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(867, NULL, 3, 1, 2, 0, '£7.60', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(868, NULL, 3, 2, 1, 0, '£5.10', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(869, NULL, 3, 2, 0, 0, '£2.60', NULL, '2019-12-13', '2019-12-14 00:00:13', NULL),
(870, NULL, 4, 5, 2, 1, '£32,875,644.00', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(871, NULL, 4, 5, 1, 0, 'No UK Winners', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(872, NULL, 4, 5, 0, 0, '£17,494.40', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(873, NULL, 4, 4, 2, 0, '£1,845.60', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(874, NULL, 4, 4, 1, 0, '£90.70', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(875, NULL, 4, 3, 2, 0, '£73.40', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(876, NULL, 4, 4, 0, 0, '£29.10', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(877, NULL, 4, 2, 2, 0, '£13.40', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(878, NULL, 4, 3, 1, 0, '£8.60', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(879, NULL, 4, 3, 0, 0, '£6.60', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(880, NULL, 4, 1, 2, 0, '£7.60', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(881, NULL, 4, 2, 1, 0, '£5.10', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL),
(882, NULL, 4, 2, 0, 0, '£2.60', NULL, '2019-12-13', '2019-12-14 00:00:20', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD KEY `last_activity_idx` (`last_activity`);

--
-- Indexes for table `common`
--
ALTER TABLE `common`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drawing`
--
ALTER TABLE `drawing`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_dates`
--
ALTER TABLE `tbl_dates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_emails`
--
ALTER TABLE `tbl_emails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_ranges`
--
ALTER TABLE `tbl_ranges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  ADD PRIMARY KEY (`roleId`);

--
-- Indexes for table `tbl_tier`
--
ALTER TABLE `tbl_tier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_wallet_history`
--
ALTER TABLE `tbl_wallet_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_webs`
--
ALTER TABLE `tbl_webs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_withdrawl`
--
ALTER TABLE `tbl_withdrawl`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `winner_history`
--
ALTER TABLE `winner_history`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `common`
--
ALTER TABLE `common`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `drawing`
--
ALTER TABLE `drawing`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `tbl_cart`
--
ALTER TABLE `tbl_cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_dates`
--
ALTER TABLE `tbl_dates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tbl_emails`
--
ALTER TABLE `tbl_emails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_faqs`
--
ALTER TABLE `tbl_faqs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_last_login`
--
ALTER TABLE `tbl_last_login`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_pages`
--
ALTER TABLE `tbl_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_ranges`
--
ALTER TABLE `tbl_ranges`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_refund`
--
ALTER TABLE `tbl_refund`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_reset_password`
--
ALTER TABLE `tbl_reset_password`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tbl_roles`
--
ALTER TABLE `tbl_roles`
  MODIFY `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id', AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_tier`
--
ALTER TABLE `tbl_tier`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_transfer`
--
ALTER TABLE `tbl_transfer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tbl_wallet`
--
ALTER TABLE `tbl_wallet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_wallet_history`
--
ALTER TABLE `tbl_wallet_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `tbl_webs`
--
ALTER TABLE `tbl_webs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_withdrawl`
--
ALTER TABLE `tbl_withdrawl`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `winner_history`
--
ALTER TABLE `winner_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=883;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
