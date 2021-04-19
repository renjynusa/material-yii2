-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 18, 2021 at 07:11 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.3.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yii2_basic_tests`
--

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1618746540),
('m200216_223841_create_user_table', 1618746553);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `first_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auth_key` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `access_token` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_reset_key` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` char(15) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'inactive',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `group_id`, `first_name`, `last_name`, `email`, `auth_key`, `access_token`, `password`, `password_reset_key`, `status`, `created_at`, `updated_at`) VALUES
(1, NULL, 'CodersEden', 'Team', 'hello@coderseden.com', NULL, NULL, '$2y$13$g2kOGMuvglvBh5XwymsuF.gBsmDsMfkh2OHfmtri.TI1wv2uF.bJC', NULL, 'active', '2021-04-18 18:49:12', '2021-04-18 18:49:12'),
(2, NULL, 'John', 'Doe', 'john@mail.com', NULL, NULL, '$2y$13$AbXtqoSZZXz.zepb164nquWUsUMIKWHuR4PdNXIUpJKuBQV3qcRFe', NULL, 'active', '2021-04-18 18:49:12', '2021-04-18 18:49:12'),
(3, NULL, 'Mike', 'Harrison', 'mike@mail.com', NULL, NULL, '$2y$13$bLR1kgCDCWJgJEpmgyPPeOQmk.2Rxi2Wm50QACcTbXmQKiGmURBxq', NULL, 'active', '2021-04-18 18:49:13', '2021-04-18 18:49:13'),
(4, NULL, 'rendya', 'nusa', 'rendynusa00@gmail.com', NULL, NULL, '$2y$13$Ntb5mqsh82y1TLkwOgdC1uf5/cza5Bj29cWTg2tItKF3nxGrm3MIO', NULL, 'inactive', '2021-04-18 19:50:46', '2021-04-18 20:23:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
