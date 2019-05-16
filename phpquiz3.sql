-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2019 at 04:15 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 7.0.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(30) NOT NULL,
  `picture` varchar(36) NOT NULL,
  'text' varchar(80)
  `userid` int(11) NOT NULL,
  `inserted` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `picture`, `userid`, `inserted`) VALUES
(1, 'Whale', 'A magnificent whale!!!', 'wale.jpg', 1, '2019-05-14 01:44:25'),
(2, 'Antelope', 'A vigilant antelope!!', 'antolipe.jpg', 1, '2019-05-14 01:44:25'),
(3, 'Elephant', 'A majestic elephant!!!', 'elephant.jpg', 1, '2019-05-14 01:44:25'),
(4, 'Lemur', 'A surprised Lemur!!', 'lemur.jpg', 1, '2019-05-14 01:44:25'),
(5, 'Seal', 'A lazy seal!!', 'seal.jpg', 1, '2019-05-14 01:44:25'),
(6, 'Sqirrel','An eager squirrel', 'squarrel.jpg', 1, '2019-05-14 01:44:25'),
(7, 'Tiger',  'A relaxed tiger!!', 'tiger.jpg', 1, '2019-05-14 02:08:00');
(8, 'Panther',  'A hunting panther!!', 'panther.jpg', 1, '2019-05-14 02:08:00');
(9, 'Anaconda',  'A sneaky anaconda', 'anaconda.jpg', 1, '2019-05-14 02:08:00');
(10,'Wolf',  'A cunning wolf', 'wolf.jpg', 1, '2019-05-14 02:08:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'dj', '81dc9bdb52d04dc20036dbd8313ed055'),
--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
