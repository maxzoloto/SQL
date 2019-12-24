-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 24, 2019 at 05:59 PM
-- Server version: 10.0.38-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `site`
--

-- --------------------------------------------------------

--
-- Table structure for table `broods`
--

CREATE TABLE `broods` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `broods`
--

INSERT INTO `broods` (`id`, `name`) VALUES
(1, 'Конструкторы'),
(2, 'Настольные игры'),
(3, 'Наборы игровые'),
(4, 'Машинки');

-- --------------------------------------------------------

--
-- Table structure for table `gadjets`
--

CREATE TABLE `gadjets` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gadjets`
--

INSERT INTO `gadjets` (`id`, `name`) VALUES
(1, 'Электромобили'),
(2, 'Гироборды'),
(3, 'Гироскутеры'),
(4, 'Электросамокаты');

-- --------------------------------------------------------

--
-- Table structure for table `gardens`
--

CREATE TABLE `gardens` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gardens`
--

INSERT INTO `gardens` (`id`, `name`) VALUES
(1, 'Цепные пилы'),
(2, 'Культиваторы'),
(3, 'Газонокосилки'),
(4, 'Садовые пылесосы');

-- --------------------------------------------------------

--
-- Table structure for table `headphones`
--

CREATE TABLE `headphones` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `headphones`
--

INSERT INTO `headphones` (`id`, `name`) VALUES
(1, 'Harman Kardon'),
(2, 'JBL'),
(3, 'Sony'),
(4, 'Amazon');

-- --------------------------------------------------------

--
-- Table structure for table `healths`
--

CREATE TABLE `healths` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `healths`
--

INSERT INTO `healths` (`id`, `name`) VALUES
(1, 'Беговые дорожки\r\n'),
(2, 'Велотренажеры'),
(3, 'Орбитреки'),
(4, 'Тренажеры для пресса');

-- --------------------------------------------------------

--
-- Table structure for table `households`
--

CREATE TABLE `households` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `households`
--

INSERT INTO `households` (`id`, `name`) VALUES
(1, 'Насосы'),
(2, 'Мотопомпы'),
(3, 'Шланги'),
(4, 'Бассейны');

-- --------------------------------------------------------

--
-- Table structure for table `perfumerys`
--

CREATE TABLE `perfumerys` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `perfumerys`
--

INSERT INTO `perfumerys` (`id`, `name`) VALUES
(1, 'Парфюмерия для женщин'),
(2, 'Парфюмерия для мужчин'),
(3, 'Парфюмерия унисекс'),
(4, 'Нишевая');

-- --------------------------------------------------------

--
-- Table structure for table `planshets`
--

CREATE TABLE `planshets` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `planshets`
--

INSERT INTO `planshets` (`id`, `name`) VALUES
(1, 'Apple'),
(2, 'Huawei'),
(3, 'Samsung'),
(4, 'Lenovo');

-- --------------------------------------------------------

--
-- Table structure for table `plumbings`
--

CREATE TABLE `plumbings` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plumbings`
--

INSERT INTO `plumbings` (`id`, `name`) VALUES
(1, 'Шуруповерты'),
(2, 'Дрели'),
(3, 'Болгарки'),
(4, 'Шлифмашины');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) UNSIGNED NOT NULL,
  `brood_id` int(11) UNSIGNED NOT NULL,
  `gadjet_id` int(11) UNSIGNED NOT NULL,
  `garden_id` int(11) UNSIGNED NOT NULL,
  `headphone_id` int(11) UNSIGNED NOT NULL,
  `health_id` int(11) UNSIGNED NOT NULL,
  `household_id` int(11) UNSIGNED NOT NULL,
  `perfumery_id` int(11) UNSIGNED NOT NULL,
  `planshet_id` int(11) UNSIGNED NOT NULL,
  `plumbing_id` int(11) UNSIGNED NOT NULL,
  `smartphone_id` int(11) UNSIGNED NOT NULL,
  `televisor_id` int(11) UNSIGNED NOT NULL,
  `tourism_id` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `brood_id`, `gadjet_id`, `garden_id`, `headphone_id`, `health_id`, `household_id`, `perfumery_id`, `planshet_id`, `plumbing_id`, `smartphone_id`, `televisor_id`, `tourism_id`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `smartphones`
--

CREATE TABLE `smartphones` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smartphones`
--

INSERT INTO `smartphones` (`id`, `name`) VALUES
(1, 'OnePlus'),
(2, 'Motorola'),
(3, 'Vivo'),
(4, 'Apple');

-- --------------------------------------------------------

--
-- Table structure for table `televisors`
--

CREATE TABLE `televisors` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `televisors`
--

INSERT INTO `televisors` (`id`, `name`) VALUES
(1, 'Skyworth'),
(2, 'Kivi'),
(3, 'LG'),
(4, 'Philips');

-- --------------------------------------------------------

--
-- Table structure for table `tourisms`
--

CREATE TABLE `tourisms` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tourisms`
--

INSERT INTO `tourisms` (`id`, `name`) VALUES
(1, 'Термобелье'),
(2, 'Палатки'),
(3, 'Тенты'),
(4, 'Рюкзаки и сумки');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `broods`
--
ALTER TABLE `broods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gadjets`
--
ALTER TABLE `gadjets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gardens`
--
ALTER TABLE `gardens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `headphones`
--
ALTER TABLE `headphones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `healths`
--
ALTER TABLE `healths`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `households`
--
ALTER TABLE `households`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `perfumerys`
--
ALTER TABLE `perfumerys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `planshets`
--
ALTER TABLE `planshets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `plumbings`
--
ALTER TABLE `plumbings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brood_id` (`brood_id`,`gadjet_id`,`garden_id`,`headphone_id`,`health_id`,`household_id`,`perfumery_id`,`planshet_id`,`plumbing_id`,`smartphone_id`,`televisor_id`,`tourism_id`),
  ADD KEY `gadjet_id` (`gadjet_id`),
  ADD KEY `garden_id` (`garden_id`),
  ADD KEY `headphone_id` (`headphone_id`),
  ADD KEY `health_id` (`health_id`),
  ADD KEY `household_id` (`household_id`),
  ADD KEY `perfumery_id` (`perfumery_id`),
  ADD KEY `planshet_id` (`planshet_id`),
  ADD KEY `plumbing_id` (`plumbing_id`),
  ADD KEY `smartphone_id` (`smartphone_id`),
  ADD KEY `televisor_id` (`televisor_id`),
  ADD KEY `tourism_id` (`tourism_id`);

--
-- Indexes for table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `televisors`
--
ALTER TABLE `televisors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tourisms`
--
ALTER TABLE `tourisms`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `broods`
--
ALTER TABLE `broods`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gadjets`
--
ALTER TABLE `gadjets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `gardens`
--
ALTER TABLE `gardens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `headphones`
--
ALTER TABLE `headphones`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `healths`
--
ALTER TABLE `healths`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `households`
--
ALTER TABLE `households`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `perfumerys`
--
ALTER TABLE `perfumerys`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `planshets`
--
ALTER TABLE `planshets`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `plumbings`
--
ALTER TABLE `plumbings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `televisors`
--
ALTER TABLE `televisors`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tourisms`
--
ALTER TABLE `tourisms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`brood_id`) REFERENCES `broods` (`id`),
  ADD CONSTRAINT `products_ibfk_10` FOREIGN KEY (`smartphone_id`) REFERENCES `smartphones` (`id`),
  ADD CONSTRAINT `products_ibfk_11` FOREIGN KEY (`televisor_id`) REFERENCES `televisors` (`id`),
  ADD CONSTRAINT `products_ibfk_12` FOREIGN KEY (`tourism_id`) REFERENCES `tourisms` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`gadjet_id`) REFERENCES `gadjets` (`id`),
  ADD CONSTRAINT `products_ibfk_3` FOREIGN KEY (`garden_id`) REFERENCES `gardens` (`id`),
  ADD CONSTRAINT `products_ibfk_4` FOREIGN KEY (`headphone_id`) REFERENCES `headphones` (`id`),
  ADD CONSTRAINT `products_ibfk_5` FOREIGN KEY (`health_id`) REFERENCES `healths` (`id`),
  ADD CONSTRAINT `products_ibfk_6` FOREIGN KEY (`household_id`) REFERENCES `households` (`id`),
  ADD CONSTRAINT `products_ibfk_7` FOREIGN KEY (`perfumery_id`) REFERENCES `perfumerys` (`id`),
  ADD CONSTRAINT `products_ibfk_8` FOREIGN KEY (`planshet_id`) REFERENCES `planshets` (`id`),
  ADD CONSTRAINT `products_ibfk_9` FOREIGN KEY (`plumbing_id`) REFERENCES `plumbings` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
