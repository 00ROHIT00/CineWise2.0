-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 31, 2023 at 02:03 PM
-- Server version: 8.0.31
-- PHP Version: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cinewise`
--

-- --------------------------------------------------------

--
-- Table structure for table `customerdata`
--

DROP TABLE IF EXISTS `customerdata`;
CREATE TABLE IF NOT EXISTS `customerdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(5000) NOT NULL,
  `password` varchar(5000) NOT NULL,
  `email` varchar(5000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customerdata`
--

INSERT INTO `customerdata` (`id`, `username`, `password`, `email`) VALUES
(1, 'rohit', 'rohith053', 'utuber053'),
(2, 'Root', 'root', 'root@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `moviedata`
--

DROP TABLE IF EXISTS `moviedata`;
CREATE TABLE IF NOT EXISTS `moviedata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `movieName` varchar(100) NOT NULL,
  `genre` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `link` mediumtext NOT NULL,
  `rating` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `releaseYear` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `moviedata`
--

INSERT INTO `moviedata` (`id`, `movieName`, `genre`, `description`, `link`, `rating`, `releaseYear`) VALUES
(44, 'the flash', 'sci-fi', '', '', '7', 2023),
(45, 'interstellar', 'sci-fi', '', '', '8', 2014),
(43, 'tenet', 'sci-fi', '', '', '7', 2020),
(48, 'spider man', 'sci-fi', '', '', '10', 2023),
(51, 'barbie', 'sci-fi', '', '', '10', 2023),
(58, 'super mario bros', 'sci-fi', 'A plumber named Mario travels through an underground labyrinth with his brother, Luigi, trying to save a captured princess.', 'https://www.youtube.com/watch?v=TnGl01FkMMo', '7', 2023),
(57, 'real steel', 'sci-fi', 'A struggling ex-boxer feels he\'s found a champion in a discarded robot. People have got rid of boxing and have created robot boxing. A person whose into robot boxing, Charlie Kenton.', 'https://www.youtube.com/watch?v=SwfmV3nn6QA', '7', 2011);

-- --------------------------------------------------------

--
-- Table structure for table `userdata`
--

DROP TABLE IF EXISTS `userdata`;
CREATE TABLE IF NOT EXISTS `userdata` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userName` varchar(100) NOT NULL,
  `passWord` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `userdata`
--

INSERT INTO `userdata` (`id`, `userName`, `passWord`) VALUES
(1, 'root', 'root');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
