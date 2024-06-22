-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2024 at 04:05 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instagramdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `post_id` varchar(100) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `comment_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `post_id`, `comment`, `comment_id`) VALUES
(28, 'lenovoph', '666', 'test', 'comment_666cef3b14c0d8.07260908'),
(29, 'mic.stills', '667', 'halooo', 'comment_666cf2599e6675.67886599'),
(30, 'lenovoph', '668', 'test', 'comment_666cf36391b686.62122117'),
(31, 'lenovoph', '667', 'ttasdadasd', 'comment_666cf4973ab6c8.36725651');

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE `follow` (
  `id` int(11) NOT NULL,
  `follower_id` varchar(100) NOT NULL,
  `followed_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow`
--

INSERT INTO `follow` (`id`, `follower_id`, `followed_id`) VALUES
(126, 'Gembie', 'lenovoph'),
(127, 'Gembie', 'mic.stills'),
(128, 'lenovoph', 'Gembie'),
(129, 'lenovoph', 'mic.stills'),
(130, 'mic.stills', 'Gembie'),
(131, 'mic.stills', 'lenovoph');

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `like_id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`like_id`, `post_id`, `user_id`) VALUES
(40, 666, 'Gembie'),
(41, 667, 'lenovoph'),
(42, 668, 'lenovoph');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `image` varchar(100) NOT NULL,
  `caption` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `post_id`, `user_id`, `image`, `caption`) VALUES
(41, 666, 'lenovoph', 'FISH.png', ''),
(42, 666, 'lenovoph', 'Dizon.png', ''),
(43, 666, 'lenovoph', 'billboard-2.png', ''),
(44, 667, 'Gembie', '94-941970_guy-with-laptop-cartoon-using-laptop-png-transparent.png', 'WOOOHOOO'),
(45, 667, 'Gembie', 'alphabet.png', 'WOOOHOOO'),
(46, 668, 'mic.stills', 'test-mask.png', ''),
(47, 6675486, 'Gembie', 'report.png', 'blabla'),
(48, 6675488, 'Gembie', 'music.png', 'testttttt'),
(49, 667548, 'Gembie', 'codehtml.png', 'asdasdasdasdasd'),
(50, 667548, 'Gembie', 'Multiplication Table.png', 'asdasdasdasdasd'),
(51, 667548, 'Gembie', 'SPOILER_dragonvoid.png', 'asdasdasdasdasd');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `bio` varchar(255) NOT NULL,
  `user_id` varchar(100) NOT NULL,
  `profile` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `bio`, `user_id`, `profile`) VALUES
(1, 'Gembie', '123456', 'Kumatech Developers', 'Kumatech Dev', 'Gembie', 'default-user.png'),
(2, 'mic.stills', '123456', 'Michael Encarnacion', 'Encarnacion Photography', 'mic.stills', 'default-user.png'),
(3, 'lenovoPH', '123456', 'LenovoPh', 'qwerty', 'lenovoph', 'R.png');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow`
--
ALTER TABLE `follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `follow`
--
ALTER TABLE `follow`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
