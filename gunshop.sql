-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2021 at 08:01 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gunshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryId` int(11) NOT NULL,
  `categoryName` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryId`, `categoryName`) VALUES
(1, 'Rifle'),
(2, 'MG'),
(3, 'SMG'),
(4, 'Sniper'),
(5, 'Pistol');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `memberId` int(11) NOT NULL,
  `memberName` varchar(40) NOT NULL,
  `address` varchar(60) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `birthDate` date NOT NULL,
  `email` varchar(60) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`memberId`, `memberName`, `address`, `phone`, `birthDate`, `email`, `password`) VALUES
(1, 'anh tu dep trai', 'america', '772513432', '0000-00-00', 'anhtunguyen@gmail.com', '0123456789'),
(3, 'nguyenanhtu', '123 new york', '772513431', '1999-04-16', 'tunagcs190482@fpt.edu.vn', '6fb4df292f794e4fd1a53674fca53c1a'),
(4, 'anh tu', 'vietnam', '775513431', '2018-03-21', 'anhtu@gmail.com', '123456789'),
(5, 'gcs190482', 'vietnam', '0772513431', '2020-08-10', 'tunagcs190482@fpt.edu.vn', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `oder`
--

CREATE TABLE `oder` (
  `oderId` int(11) NOT NULL,
  `oderDate` date NOT NULL,
  `oderAddress` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `oderdetail`
--

CREATE TABLE `oderdetail` (
  `oderId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  `productQuantity` int(11) NOT NULL,
  `unitPrice` int(11) NOT NULL,
  `totalPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productId` int(11) NOT NULL,
  `productName` varchar(40) NOT NULL,
  `productPrice` int(11) NOT NULL,
  `image` varchar(40) NOT NULL,
  `categoryId` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productId`, `productName`, `productPrice`, `image`, `categoryId`, `description`) VALUES
(1, 'AK47', 4000000, 'ak47.jpg', 1, 'The AK-47, officially known as the Avtomat Kalashnikova.\r\n\r\nDesign work on the AK-47 began in 1945. In 1946, the AK-47 was presented for official military trials, and in 1948, the fixed-stock version was introduced into active service with selected units of the Soviet Army. An early development of the design was the AKS (S—Skladnoy or \"folding\"), which was equipped with an underfolding metal shoulder stock. In early 1949, the AK-47 was officially accepted by the Soviet Armed Forces and used by the majority of the member states of the Warsaw Pact. \r\n\r\n'),
(2, 'Desert Egle', 2000000, 'de.jpg', 5, 'Caliber .50AE, Pistol L6-Series Desert Eagle XIX Black Titanium Gold Special Edition 7+1 Rounds, polygon barrel 6\" picatinny/weaver rail, aluminium frame with mount rail black, slide black, barrel and appointments titanium gold, soft rubber grip, 1 magazine 7 rounds black with magazine base plate Titanium Gold, Custom Shop Magnum Research USA. New 2020!'),
(3, 'TMP', 3000000, 'tmp.jpg', 3, 'The Steyr TMP (Taktische Maschinenpistole/Tactical Machine Pistol) is a select-fire 9×19mm Parabellum caliber machine pistol manufactured by Steyr Mannlicher of Austria. The magazines come in 15-, 20-, or 30-round detachable box types. A suppressor can also be fitted.. In 2001, Steyr sold the design to Brügger & Thomet, who developed it into the Brügger & Thomet MP9.'),
(4, 'AWM', 5000000, 'awm.jpg', 4, 'The Accuracy International AWM is a bolt-action sniper rifle manufactured by Accuracy International designed for magnum rifle cartridges. The Accuracy International AWM is also unofficially known as the AWSM, which typically denotes AWM rifles chambered in.338 Lapua Magnum.'),
(5, 'M4A1', 4500000, 'm4a1.jpg', 1, 'The M4 Carbine is a lighter and shorter variant of the M16A2 assault rifle. The M4 is extensively used by the United States Armed Forces and is largely replacing the M16 rifle in United States Army and United States Marine Corps combat units as the primary infantry weapon and service rifle. The M203 and M320 grenade launchers can be mounted on the lower hand guard of the carbine (see where bipod is attached on the photo). The distinctive step in its barrel is for mounting the M203 with the standard hardware. The M4 has semi-automatic and three-round burst firing modes (like the M16A2 and M16A4), while the M4A1 has semi-automatic and fully automatic firing modes (like the M16A1 and M16A3). '),
(6, 'K98', 4950000, 'k98.jpg', 4, 'The Karabiner 98 kurz (German: [kaʁaˈbiːnɐ ˌʔaxtʔʊntˈnɔʏntsɪç ˈkʊɐ̯ts]; \"carbine 98 short\"), often abbreviated Kar98k or K98k and often incorrectly referred to as a \"K98\" (which was a Polish carbine), is a bolt-action rifle chambered for the 7.92×57mm Mauser cartridge that was adopted on 21 June 1935 as the standard service rifle by the German Wehrmacht.'),
(7, 'RPK', 4990000, 'rpk.jpg', 2, 'The RPK is a 7.62×39mm light machine gun of Soviet design, developed by Mikhail Kalashnikov in the early 1960s, parallel with the AKM assault rifle. It was created as part of a program designed to standardize the small arms inventory of the Soviet Army, where it replaced the 7.62×39mm RPD light machine gun. The RPK continues to be used by the armed forces of countries of the former Soviet Union and certain African and Asian nations. The RPK is also manufactured in Bulgaria, Romania and Serbia.'),
(8, 'Glock', 1500000, 'glock.jpg', 5, 'The Glock is a series of polymer-framed, short recoil-operated, locked-breech semi-automatic pistols designed and produced by Austrian manufacturer Glock Ges.m.b.H. The firearm entered Austrian military and police service by 1982 after it was the top performer in reliability and safety tests.'),
(9, 'SCAR', 4200000, 'scar.jpg', 1, 'The FN SCAR is a gas-operated self-loading assault/battle rifle with a rotating bolt. It is constructed to be extremely modular, including barrel change to switch between calibers. The rifle was developed by Belgian manufacturer FN Herstal for the United States Special Operations Command to satisfy the requirements of the SCAR competition. This family of rifles consist of two main types. '),
(10, 'M16', 3500000, 'm16.jpg', 1, 'The M16 rifle, officially designated Rifle, Caliber 5.56 mm, M16, is a family of military rifles adapted from the ArmaLite AR-15 rifle for the United States military.The original M16 rifle was a 5.56mm automatic rifle with a 20-round magazine.. In 1964, the M16 entered US military service and the following year was deployed for jungle warfare operations during the Vietnam War.'),
(11, 'Thompson', 4990000, 'thompson.jpg', 2, 'The Thompson submachine gun is an American submachine gun first invented by John T. Thompson in 1918 during World War I and became infamous during the Prohibition era, being a signature weapon of various organized crime syndicates in the United States. It was a common sight in the media of the time, being used by both law enforcement officers and criminals. The Thompson submachine gun was also known informally as the \"Tommy Gun\", \"Street Sweeper\" ,\"Annihilator\", \"Chicago Typewriter\", \"Trench Broom\", \"Chicago Submachine\", \"Chicago Piano\", \"Chicago Style\", \"Chicago Organ Grinder\", \"Drum Gun\", \"the Chopper\", \"the Tommy Boy\" or simply \"the Thompson\".'),
(12, 'M60', 4600000, 'm60.jpg', 2, 'The M60, officially the United States Machine Gun, Caliber 7.62 mm, M60, is a family of American general-purpose machine guns firing 7.62×51mm NATO cartridges from a disintegrating belt of M13 links. There are several types of ammunition approved for use in the M60, including ball, tracer, and armor-piercing rounds.'),
(13, 'FAMAS', 4300000, 'famas.jpg', 1, 'The FAMAS is a bullpup-styled assault rifle designed and manufactured in France by MAS located in Saint-Étienne, which is now a member of the French government-owned Nexter group. It is being replaced as the service rifle of the French military by the HK416F. It is known by French troops as Le Clairon due to its distinctive shape. The FAMAS is recognized for its high rate of fire at 1,100 rounds per minute.'),
(14, 'QBZ', 5000000, 'qbz.jpg', 1, 'The Type 95 Automatic Rifle or QBZ-95 is a bullpup assault rifle designed and manufactured by Norinco, and issued since 1995 as the service rifle for the People\'s Liberation Army, People\'s Armed Police and various paramilitary law enforcement agencies in the People\'s Republic of China. The rifle\'s designation \"QBZ\" stands for \"light weapon - rifle - automatic\", in keeping with the coding standards of the Chinese defense industry.'),
(15, 'M249', 5000000, 'm249.jpg', 2, 'The M249 light machine gun, formerly designated the M249 Squad Automatic Weapon which continues to be the manufacturer\'s designation and formally written as Light Machine Gun, 5.56 mm, M249, is the American adaptation of the Belgian FN Minimi, a light machine gun manufactured by the Belgian company FN Herstal. The M249 is manufactured in the United States by the local subsidiary FN Manufacturing LLC in Columbia, South Carolina and is widely used in the U.S. Armed Forces. The weapon was introduced in 1984 after being judged the most effective of a number of candidate weapons to address the lack of automatic firepower in small units. The M249 provides infantry squads with the high rate of fire of a machine gun combined with accuracy and portability approaching that of a rifle.'),
(16, 'SAR', 5000000, 'sar.jpg', 1, 'The SAR 21 is a bullpup assault rifle designed and manufactured in Singapore. First revealed and subsequently adopted by the Singapore Armed Forces in 1999, it was designed and developed over a four-year period and was intended to replace the locally license-built M16S1 by the Ministry of Defence, Singapore Army and the Chartered Industries of Singapore.'),
(17, 'DS-39', 4900000, 'ds39.jpg', 2, 'DS-39 (Russian: Дегтярёва Станковый образца 1939 года, Degtyaryova Stankovyy obraztsa 1939 goda) was a Soviet medium machine gun, designed by Vasily Degtyaryov, that was used during the Second World War. The work on the gun\'s design began in 1930, and it was accepted by the Red Army in September, 1939. About 10,000 were made from 1939 to 1941, but the weapon was not successful in service and its production was discontinued after the German invasion of June, 1941, with factories converted to produce the older, more reliable Russian M1910 Maxim machine guns[1]. It was later replaced by the SG-43 in service. \r\nAbout 200 were captured by Finland in 1941 and issued to Finnish troops.'),
(18, 'Gatling Gun', 5000000, 'gatling.jpg', 2, 'The Gatling gun is a rapid-fire weapon invented in 1861 by Richard Gatling and a forerunner of the modern machine gun. It is also a forerunner of the modern electric motor-driven rotary guns and rotary cannons.'),
(19, 'AR-57', 2500000, 'ar57.jpg', 1, 'The AR-57, also known as the AR Five Seven, is available as either an upper receiver for the AR-15/M16 rifle or a complete rifle, firing 5.7×28mm rounds from standard FN P90 magazines. It was designed by AR57 LLC and is currently produced by AR57 of Kent, Washington, USA.The AR-57 PDW Upper is a new design on AR-15/M16 rifles, blending the AR-15/M16 lower with a lightweight, monolithic upper.'),
(20, '93R', 2200000, '93r.jpg', 3, 'The Beretta 93R is a selective-fire machine pistol, designed and manufactured by Italian firearms manufacturer Beretta in the 1970s for police and military use, that is derived from their semi-automatic Beretta 92. The \"R\" stands for Raffica, which is Italian for \"volley\", \"flurry\", or \"burst\".'),
(21, 'M960', 3100000, 'm960.jpg', 3, 'The Calico M960 is a 9×19mm Parabellum semi-automatic carbine (fully automatic versions are available only to authorized law enforcement and military), manufactured by Calico Light Weapons Systems.Its features include its high-capacity, cylindrical, helical-feed magazine and retractable stock. This method allows magazine capacities of 50 and 100 rounds in a relatively small space.'),
(22, 'Machine Pistol', 2900000, 'machinepistol.jpg', 5, 'A pistol is a common term to describe a handgun. The words pistol and handgun can both be used interchangeably. The English word was introduced in ca. 1570 — when early handguns were produced in Europe and is derived from the Middle French pistolet, meaning a small gun/knife.'),
(23, 'A-M20', 2650000, 'am20.jpg', 3, 'The M20 recoilless rifle is a U.S. 75 mm caliber recoilless rifle T21E12 that was used during the last months of the Second World War and the M20 extensively during the Korean War.It could be fired from an M1917A1.30 caliber machine gun tripod, or from a vehicle mount, typically a Jeep.Its shaped charge warhead, also known as HEAT, was capable of penetrating 100 mm of armor.'),
(24, 'Agram 2000', 3150000, 'agram2000.jpg', 5, 'The Agram 2000 is a Croatian submachine gun based on Beretta\'s model M12.. (\"Agram\" is the old German name for Zagreb, the capital of Croatia.)The vast numbers of ex-special forces Agrams in Croatia after the Croatian War of Independence, as well as the availability of a sound suppressor, has made it a popular choice for criminals.Infamously unreliable in the war period due to its poorly.'),
(25, 'ASP', 1800000, 'asp.jpg', 5, 'Many aspects of the gun control issue are best measured and sometimes can only be measured through surveys, but the accuracy of such surveys depends upon respondents providing truthful answers to questions that are sometimes controversial and potentially incriminating. Thus, Just Facts uses this data critically, citing the best-designed surveys we find, detailing their inner workings in our...'),
(26, 'Beretta 92', 1600000, 'baretta92.jpg', 5, 'The Beretta 92 is a series of semi-automatic pistols designed and manufactured by Beretta of Italy. The model 92 was designed in 1975 and production of many variants in different calibers continues today.'),
(27, 'Colt Commander', 2400000, 'colt.jpg', 5, 'The leading source for examples of Old Colt Pistols, Revolvers, 1911, M1911, 1911A1, M1911A1, Government Model, National Match, 38 Super, Pocket Auto, Vest Pocket, Model 1905, Detective Special, Bankers Special, New Service, Police Positive and other Colt Firearms. Colt serial number ship dates for Pre 70-Series Guns.'),
(28, 'HS2000', 2900000, 'hs2000.jpg', 5, 'The HS2000 is a series of semi-automatic pistols. Polymer-framed and striker-fired, the series is manufactured by HS Produkt in Karlovac, Croatia. In Europe, the pistols are marketed as the HS and XDM series, while in the United States, the pistols are sold as the Springfield Armory XD and XD-M series, respectively. Other derivative variants sold by Springfield Armory, Inc., are unique to the American market.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryId`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`memberId`);

--
-- Indexes for table `oder`
--
ALTER TABLE `oder`
  ADD PRIMARY KEY (`oderId`);

--
-- Indexes for table `oderdetail`
--
ALTER TABLE `oderdetail`
  ADD PRIMARY KEY (`oderId`,`productId`),
  ADD KEY `productId` (`productId`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `memberId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `oderdetail`
--
ALTER TABLE `oderdetail`
  ADD CONSTRAINT `oderdetail_ibfk_1` FOREIGN KEY (`oderId`) REFERENCES `oder` (`oderId`),
  ADD CONSTRAINT `oderdetail_ibfk_2` FOREIGN KEY (`productId`) REFERENCES `product` (`productId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
