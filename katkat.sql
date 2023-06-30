-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : dim. 18 juin 2023 à 10:18
-- Version du serveur : 10.4.27-MariaDB
-- Version de PHP : 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `katkat`
--

-- --------------------------------------------------------

--
-- Structure de la table `countries`
--

CREATE TABLE `countries` (
  `country_id` int(11) NOT NULL,
  `country_name` varchar(255) NOT NULL,
  `capital` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `population` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `capital`, `currency`, `population`) VALUES
(1, 'Afghanistan', 'Kabul', 'Afghan afghani', 38928346),
(2, 'Albania', 'Tirana', 'Albanian lek', 2877797),
(3, 'Algeria', 'Algiers', 'Algerian dinar', 43851044),
(4, 'Andorra', 'Andorra la Vella', 'Euro', 77265),
(5, 'Angola', 'Luanda', 'Angolan kwanza', 32866272),
(6, 'Antigua and Barbuda', 'Saint John\'s', 'East Caribbean dollar', 97929),
(7, 'Argentina', 'Buenos Aires', 'Argentine peso', 45195774),
(8, 'Armenia', 'Yerevan', 'Armenian dram', 2963243),
(9, 'Australia', 'Canberra', 'Australian dollar', 25687041),
(10, 'Austria', 'Vienna', 'Euro', 9006398),
(11, 'Azerbaijan', 'Baku', 'Azerbaijani manat', 10139177),
(12, 'Bahamas', 'Nassau', 'Bahamian dollar', 393244),
(13, 'Bahrain', 'Manama', 'Bahraini dinar', 1701575),
(14, 'Bangladesh', 'Dhaka', 'Bangladeshi taka', 164689383),
(15, 'Barbados', 'Bridgetown', 'Barbadian dollar', 287375),
(16, 'Belarus', 'Minsk', 'Belarusian ruble', 9449321),
(17, 'Belgium', 'Brussels', 'Euro', 11589623),
(18, 'Belize', 'Belmopan', 'Belize dollar', 397628),
(19, 'Benin', 'Porto-Novo', 'West African CFA franc', 12123200),
(20, 'Bhutan', 'Thimphu', 'Bhutanese ngultrum', 771608),
(21, 'Bolivia', 'Sucre', 'Bolivian boliviano', 11673021),
(22, 'Bosnia and Herzegovina', 'Sarajevo', 'Bosnia and Herzegovina convertible mark', 3280819),
(23, 'Botswana', 'Gaborone', 'Botswana pula', 2351627),
(24, 'Brazil', 'Brasília', 'Brazilian real', 212559417),
(25, 'Brunei', 'Bandar Seri Begawan', 'Brunei dollar', 437483),
(26, 'Bulgaria', 'Sofia', 'Bulgarian lev', 6948445),
(27, 'Burkina Faso', 'Ouagadougou', 'West African CFA franc', 20903273),
(28, 'Burundi', 'Bujumbura', 'Burundian franc', 11890781),
(29, 'Cambodia', 'Phnom Penh', 'Cambodian riel', 16718971),
(30, 'Cameroon', 'Yaoundé', 'Central African CFA franc', 26545863),
(31, 'Canada', 'Ottawa', 'Canadian dollar', 37742154),
(32, 'Cape Verde', 'Praia', 'Cape Verdean escudo', 555987),
(33, 'Central African Republic', 'Bangui', 'Central African CFA franc', 4829767),
(34, 'Chad', 'N\'Djamena', 'Central African CFA franc', 16425864),
(35, 'Chile', 'Santiago', 'Chilean peso', 19116201),
(36, 'China', 'Beijing', 'Chinese yuan', 1444216107),
(37, 'Colombia', 'Bogotá', 'Colombian peso', 50976248),
(38, 'Comoros', 'Moroni', 'Comorian franc', 869601),
(39, 'Congo (Congo-Brazzaville)', 'Brazzaville', 'Central African CFA franc', 5518087),
(40, 'Costa Rica', 'San José', 'Costa Rican colón', 5094118),
(41, 'Croatia', 'Zagreb', 'Croatian kuna', 4105267),
(42, 'Cuba', 'Havana', 'Cuban peso', 11326616),
(43, 'Cyprus', 'Nicosia', 'Euro', 1207359),
(44, 'Czech Republic', 'Prague', 'Czech koruna', 10708981),
(45, 'Denmark', 'Copenhagen', 'Danish krone', 5792202),
(46, 'Djibouti', 'Djibouti', 'Djiboutian franc', 988000),
(47, 'Dominica', 'Roseau', 'East Caribbean dollar', 71986),
(48, 'Dominican Republic', 'Santo Domingo', 'Dominican peso', 10847904),
(49, 'East Timor (Timor-Leste)', 'Dili', 'United States dollar', 1318445),
(50, 'Ecuador', 'Quito', 'United States dollar', 17643054),
(51, 'Egypt', 'Cairo', 'Egyptian pound', 102334404),
(52, 'El Salvador', 'San Salvador', 'United States dollar', 6486201),
(53, 'Equatorial Guinea', 'Malabo', 'Central African CFA franc', 1402985),
(54, 'Eritrea', 'Asmara', 'Eritrean nakfa', 3546421),
(55, 'Estonia', 'Tallinn', 'Euro', 1326539),
(56, 'Eswatini (fmr. \"Swaziland\")', 'Mbabane', 'Swazi lilangeni', 1160164),
(57, 'Ethiopia', 'Addis Ababa', 'Ethiopian birr', 114963588),
(58, 'Fiji', 'Suva', 'Fijian dollar', 896445),
(59, 'Finland', 'Helsinki', 'Euro', 5540720),
(60, 'France', 'Paris', 'Euro', 65273511),
(61, 'Gabon', 'Libreville', 'Central African CFA franc', 2225734),
(62, 'Gambia', 'Banjul', 'Gambian dalasi', 2416664),
(63, 'Georgia', 'Tbilisi', 'Georgian lari', 3989167),
(64, 'Germany', 'Berlin', 'Euro', 83900473),
(65, 'Ghana', 'Accra', 'Ghanaian cedi', 31072945),
(66, 'Greece', 'Athens', 'Euro', 10423054),
(67, 'Grenada', 'Saint George\'s', 'East Caribbean dollar', 112003),
(68, 'Guatemala', 'Guatemala City', 'Guatemalan quetzal', 17915568),
(69, 'Guinea', 'Conakry', 'Guinean franc', 13132792),
(70, 'Guinea-Bissau', 'Bissau', 'West African CFA franc', 1968001),
(71, 'Guyana', 'Georgetown', 'Guyanese dollar', 786552),
(72, 'Haiti', 'Port-au-Prince', 'Haitian gourde', 11402528),
(73, 'Honduras', 'Tegucigalpa', 'Honduran lempira', 9904607),
(74, 'Hungary', 'Budapest', 'Hungarian forint', 9660351),
(75, 'Iceland', 'Reykjavik', 'Icelandic króna', 366425),
(76, 'India', 'New Delhi', 'Indian rupee', 1393409038),
(77, 'Indonesia', 'Jakarta', 'Indonesian rupiah', 273523615),
(78, 'Iran', 'Tehran', 'Iranian rial', 83992949),
(79, 'Iraq', 'Baghdad', 'Iraqi dinar', 40222503),
(80, 'Ireland', 'Dublin', 'Euro', 4982905),
(81, 'Israel', 'Jerusalem', 'Israeli new shekel', 8655535),
(82, 'Italy', 'Rome', 'Euro', 60244899),
(83, 'Jamaica', 'Kingston', 'Jamaican dollar', 2961161),
(84, 'Japan', 'Tokyo', 'Japanese yen', 126050804),
(85, 'Jordan', 'Amman', 'Jordanian dinar', 10203140),
(86, 'Kazakhstan', 'Nur-Sultan', 'Kazakhstani tenge', 18754440),
(87, 'Kenya', 'Nairobi', 'Kenyan shilling', 53771300),
(88, 'Kiribati', 'South Tarawa', 'Australian dollar', 119449),
(89, 'Kuwait', 'Kuwait City', 'Kuwaiti dinar', 4270571),
(90, 'Kyrgyzstan', 'Bishkek', 'Kyrgyzstani som', 6591600),
(91, 'Laos', 'Vientiane', 'Lao kip', 7275560),
(92, 'Latvia', 'Riga', 'Euro', 1886198),
(93, 'Lebanon', 'Beirut', 'Lebanese pound', 6825442),
(94, 'Lesotho', 'Maseru', 'Lesotho loti', 2142249),
(95, 'Liberia', 'Monrovia', 'Liberian dollar', 5057681),
(96, 'Libya', 'Tripoli', 'Libyan dinar', 6871287),
(97, 'Liechtenstein', 'Vaduz', 'Swiss franc', 38128),
(98, 'Lithuania', 'Vilnius', 'Euro', 2722289),
(99, 'Luxembourg', 'Luxembourg City', 'Euro', 634730),
(100, 'Madagascar', 'Antananarivo', 'Malagasy ariary', 27691019),
(101, 'Malawi', 'Lilongwe', 'Malawian kwacha', 19129952),
(102, 'Malaysia', 'Kuala Lumpur', 'Malaysian ringgit', 32657400),
(103, 'Maldives', 'Male', 'Maldivian rufiyaa', 540542),
(104, 'Mali', 'Bamako', 'West African CFA franc', 20250833),
(105, 'Malta', 'Valletta', 'Euro', 442238),
(106, 'Marshall Islands', 'Majuro', 'United States dollar', 59190),
(107, 'Mauritania', 'Nouakchott', 'Mauritanian ouguiya', 4649660),
(108, 'Mauritius', 'Port Louis', 'Mauritian rupee', 1271768),
(109, 'Mexico', 'Mexico City', 'Mexican peso', 130262216),
(110, 'Micronesia', 'Palikir', 'United States dollar', 115023),
(111, 'Moldova', 'Chisinau', 'Moldovan leu', 4033963),
(112, 'Monaco', 'Monaco', 'Euro', 39242),
(113, 'Mongolia', 'Ulaanbaatar', 'Mongolian tögrög', 3278290),
(114, 'Montenegro', 'Podgorica', 'Euro', 620029),
(115, 'Morocco', 'Rabat', 'Moroccan dirham', 36910558),
(116, 'Mozambique', 'Maputo', 'Mozambican metical', 31255435),
(117, 'Myanmar (formerly Burma)', 'Naypyidaw', 'Burmese kyat', 54409794),
(118, 'Namibia', 'Windhoek', 'Namibian dollar', 2540916),
(119, 'Nauru', 'Yaren', 'Australian dollar', 10824),
(120, 'Nepal', 'Kathmandu', 'Nepalese rupee', 29996478),
(121, 'Netherlands', 'Amsterdam', 'Euro', 17173017),
(122, 'New Zealand', 'Wellington', 'New Zealand dollar', 4980350),
(123, 'Nicaragua', 'Managua', 'Nicaraguan córdoba', 6624554),
(124, 'Niger', 'Niamey', 'West African CFA franc', 24206636),
(125, 'Nigeria', 'Abuja', 'Nigerian naira', 211400708),
(126, 'North Korea', 'Pyongyang', 'North Korean won', 25778816),
(127, 'North Macedonia', 'Skopje', 'Macedonian denar', 2077132),
(128, 'Norway', 'Oslo', 'Norwegian krone', 5476142),
(129, 'Oman', 'Muscat', 'Omani rial', 5106622),
(130, 'Pakistan', 'Islamabad', 'Pakistani rupee', 225199937),
(131, 'Palau', 'Ngerulmud', 'United States dollar', 18092),
(132, 'Panama', 'Panama City', 'United States dollar', 4390482),
(133, 'Papua New Guinea', 'Port Moresby', 'Papua New Guinean kina', 9118777),
(134, 'Paraguay', 'Asunción', 'Paraguayan guaraní', 7132538),
(135, 'Peru', 'Lima', 'Peruvian sol', 33587210),
(136, 'Philippines', 'Manila', 'Philippine peso', 113134537),
(137, 'Poland', 'Warsaw', 'Polish złoty', 37846611),
(138, 'Portugal', 'Lisbon', 'Euro', 10191409),
(139, 'Qatar', 'Doha', 'Qatari riyal', 3130473),
(140, 'Romania', 'Bucharest', 'Romanian leu', 19237691),
(141, 'Russia', 'Moscow', 'Russian ruble', 145912025),
(142, 'Rwanda', 'Kigali', 'Rwandan franc', 12952209),
(143, 'Saint Kitts and Nevis', 'Basseterre', 'East Caribbean dollar', 53199),
(144, 'Saint Lucia', 'Castries', 'East Caribbean dollar', 183627),
(145, 'Saint Vincent and the Grenadines', 'Kingstown', 'East Caribbean dollar', 110940),
(146, 'Samoa', 'Apia', 'Samoan tālā', 198410),
(147, 'San Marino', 'City of San Marino', 'Euro', 33931),
(148, 'Sao Tome and Principe', 'São Tomé', 'São Tomé and Príncipe dobra', 219159),
(149, 'Saudi Arabia', 'Riyadh', 'Saudi riyal', 35340743),
(150, 'Senegal', 'Dakar', 'West African CFA franc', 16743927),
(151, 'Serbia', 'Belgrade', 'Serbian dinar', 8737371),
(152, 'Seychelles', 'Victoria', 'Seychellois rupee', 98340),
(153, 'Sierra Leone', 'Freetown', 'Sierra Leonean leone', 7976983),
(154, 'Singapore', 'Singapore', 'Singapore dollar', 5850343),
(155, 'Slovakia', 'Bratislava', 'Euro', 5459642),
(156, 'Slovenia', 'Ljubljana', 'Euro', 2078938),
(157, 'Solomon Islands', 'Honiara', 'Solomon Islands dollar', 686884),
(158, 'Somalia', 'Mogadishu', 'Somali shilling', 15893219),
(159, 'South Africa', 'Pretoria', 'South African rand', 61694589),
(160, 'South Korea', 'Seoul', 'South Korean won', 51780579),
(161, 'South Sudan', 'Juba', 'South Sudanese pound', 11193725),
(162, 'Spain', 'Madrid', 'Euro', 46754783),
(163, 'Sri Lanka', 'Colombo', 'Sri Lankan rupee', 21413249),
(164, 'Sudan', 'Khartoum', 'Sudanese pound', 44909353),
(165, 'Suriname', 'Paramaribo', 'Surinamese dollar', 611742),
(166, 'Sweden', 'Stockholm', 'Swedish krona', 10230185),
(167, 'Switzerland', 'Bern', 'Swiss franc', 8715498),
(168, 'Syria', 'Damascus', 'Syrian pound', 17500658),
(169, 'Taiwan', 'Taipei', 'New Taiwan dollar', 23816775),
(170, 'Tajikistan', 'Dushanbe', 'Tajikistani somoni', 9537645),
(171, 'Tanzania', 'Dodoma', 'Tanzanian shilling', 59734213),
(172, 'Thailand', 'Bangkok', 'Thai baht', 69950846),
(173, 'Togo', 'Lomé', 'West African CFA franc', 8278724),
(174, 'Tonga', 'Nukuʻalofa', 'Tongan paʻanga', 105695),
(175, 'Trinidad and Tobago', 'Port of Spain', 'Trinidad and Tobago dollar', 1403286),
(176, 'Tunisia', 'Tunis', 'Tunisian dinar', 11818619),
(177, 'Turkey', 'Ankara', 'Turkish lira', 85042725),
(178, 'Turkmenistan', 'Ashgabat', 'Turkmenistan manat', 6159945),
(179, 'Tuvalu', 'Funafuti', 'Australian dollar', 11817),
(180, 'Uganda', 'Kampala', 'Ugandan shilling', 47029097),
(181, 'Ukraine', 'Kyiv', 'Ukrainian hryvnia', 43733759),
(182, 'United Arab Emirates', 'Abu Dhabi', 'United Arab Emirates dirham', 100683884),
(183, 'United Kingdom', 'London', 'British pound', 67948282),
(184, 'United States', 'Washington, D.C.', 'United States dollar', 332915073),
(185, 'Uruguay', 'Montevideo', 'Uruguayan peso', 3518552),
(186, 'Uzbekistan', 'Tashkent', 'Uzbekistani soʻm', 33900300),
(187, 'Vanuatu', 'Port Vila', 'Vanuatu vatu', 314464),
(188, 'Vatican City', 'Vatican City', 'Euro', 825),
(189, 'Venezuela', 'Caracas', 'Venezuelan bolívar', 28435943),
(190, 'Vietnam', 'Hanoi', 'Vietnamese đồng', 97490013),
(191, 'Yemen', 'Sana\'a', 'Yemeni rial', 30389791),
(192, 'Zambia', 'Lusaka', 'Zambian kwacha', 18996201),
(193, 'Zimbabwe', 'Harare', 'Zimbabwean dollar', 15092171);

-- --------------------------------------------------------

--
-- Structure de la table `country_facts`
--

CREATE TABLE `country_facts` (
  `id` int(11) NOT NULL,
  `country_name` varchar(100) DEFAULT NULL,
  `fact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `country_facts`
--

INSERT INTO `country_facts` (`id`, `country_name`, `fact`) VALUES
(1, 'Afghanistan', 'Afghanistan is known as the \"Graveyard of Empires\" due to its history of repelling foreign invasions.'),
(2, 'Albania', 'Albania is home to the ancient city of Butrint, a UNESCO World Heritage Site.'),
(3, 'Algeria', 'Algeria is the largest country in Africa by land area.'),
(4, 'Andorra', 'Andorra has one of the highest life expectancies in the world.'),
(5, 'Angola', 'Angola is one of the world\'s fastest-growing economies.'),
(6, 'Argentina', 'Argentina is famous for its tango dance and music.'),
(7, 'Armenia', 'Armenia is considered the first Christian nation.'),
(8, 'Australia', 'Australia is home to the Great Barrier Reef, the world\'s largest coral reef system.'),
(9, 'Austria', 'Austria is renowned for its classical music composers, including Mozart and Beethoven.'),
(10, 'Azerbaijan', 'Azerbaijan is the largest country in the Caucasus region.'),
(11, 'Bahamas', 'The Bahamas has more than 700 islands and is known for its stunning beaches and clear turquoise waters.'),
(12, 'Bahrain', 'Bahrain is an archipelago of 33 islands located in the Persian Gulf.'),
(13, 'Bangladesh', 'Bangladesh is the world\'s largest producer of jute, a natural fiber used for making sacks and other products.'),
(14, 'Barbados', 'Barbados is the birthplace of international pop star Rihanna.'),
(15, 'Belarus', 'Belarus is often called the \"Lungs of Europe\" due to its vast forests.'),
(16, 'Belgium', 'Belgium is famous for its chocolate, beer, and waffles.'),
(17, 'Belize', 'Belize is home to the largest jaguar population in Central America.'),
(18, 'Benin', 'Benin is known for its intricate bronze and woodcarvings.'),
(19, 'Bhutan', 'Bhutan is the only country in the world to measure its progress based on Gross National Happiness.'),
(20, 'Bolivia', 'Bolivia has the highest capital city in the world, La Paz, located at an elevation of approximately 3,650 meters (11,975 feet).'),
(21, 'Bosnia and Herzegovina', 'Bosnia and Herzegovina is home to the historic city of Mostar, famous for its Stari Most bridge.'),
(22, 'Botswana', 'Botswana is known for its wildlife and safari destinations, including the Okavango Delta.'),
(23, 'Brazil', 'Brazil is the largest country in South America and the fifth-largest in the world by land area.'),
(24, 'Brunei', 'Brunei is one of the world\'s smallest countries and is known for its wealth due to its oil and gas reserves.'),
(25, 'Bulgaria', 'Bulgaria is home to the ancient Thracian tombs and the Rila Monastery, a UNESCO World Heritage Site.'),
(26, 'Burkina Faso', 'Burkina Faso is known for its vibrant traditional masks and music.'),
(27, 'Burundi', 'Burundi is often called the \"Land of a Thousand Hills\" due to its hilly landscape.'),
(28, 'Cambodia', 'Cambodia is famous for its ancient temple complex, Angkor Wat, the largest religious monument in the world.'),
(29, 'Cameroon', 'Cameroon is often referred to as \"Africa in Miniature\" due to its cultural and geographic diversity.'),
(31, 'congo ', 'they speak french');

-- --------------------------------------------------------

--
-- Structure de la table `login`
--

CREATE TABLE `login` (
  `fname` varchar(64) NOT NULL,
  `sname` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `password` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `login`
--

INSERT INTO `login` (`fname`, `sname`, `email`, `password`) VALUES
('Uzziah Lukeka', 'Yambayamba', 'uzziahlukeka@gmail.com', '$2y$10$tXW8Fvmwgjn11jnqnJb.ye0s3Wm5SPs0x.TNgUKBGj3XUUfvRi0q.'),
('Uzziah Lukeka', 'Yambayamba', 'uzziahlukeka123@gmail.com', '$2y$10$BlmRjF2Owl6Tp9MTqfr1Ou2rR6s0/CeVcAoJSiycFMS9JDNlyeQm2');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Index pour la table `country_facts`
--
ALTER TABLE `country_facts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `countries`
--
ALTER TABLE `countries`
  MODIFY `country_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=194;

--
-- AUTO_INCREMENT pour la table `country_facts`
--
ALTER TABLE `country_facts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
