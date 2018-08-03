-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 03, 2018 at 01:24 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `talkingspace`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'Personal', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.'),
(2, 'Professional', 'Consectetur adipiscing elit. Praesent mauris est, tincidunt consectetur tincidunt sed, convallis ut neque. Pellentesque facilisis sollicitudin diam non placerat.');

-- --------------------------------------------------------

--
-- Table structure for table `replies`
--

CREATE TABLE `replies` (
  `id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `body` text NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `replies`
--

INSERT INTO `replies` (`id`, `topic_id`, `user_id`, `body`, `create_date`) VALUES
(1, 1, 1, 'asdfasdfwerfasdfsadfasdf', '2018-08-02 16:57:22'),
(2, 2, 1, 'adasdewwecfwedcxcwdqew', '2018-08-02 16:57:22'),
(3, 3, 2, 'saasdasd', '2018-08-02 19:54:33'),
(4, 2, 2, '52585258', '2018-08-02 19:54:46'),
(5, 3, 1, 'Nice Post', '2018-08-02 22:31:06'),
(6, 6, 1, 'Well said.. Lorem ipsum is best', '2018-08-02 22:53:45'),
(7, 6, 1, 'This is new comment', '2018-08-02 23:11:26');

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `category_id`, `user_id`, `title`, `body`, `last_activity`, `create_date`) VALUES
(1, 1, 1, 'Sample Post', '<p>this is the first sample post</p>', '2018-08-02 07:03:37', '2018-08-02 05:03:37'),
(2, 2, 1, 'Sample Post 2', '<p>gfgfgfgff</p>', '2018-08-02 07:40:44', '2018-08-02 05:40:44'),
(3, 2, 2, 'venu post-1', '<p>nothing much</p>', '2018-08-02 20:47:38', '2018-08-02 18:47:38'),
(6, 1, 1, 'Lorem Ipsum', '<p><span style=\"color: rgb(123, 136, 152); font-family: Arial; font-size: 22.5625px;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Felis imperdiet proin fermentum leo vel. Suspendisse faucibus interdum posuere lorem ipsum dolor sit amet consectetur. Ornare massa eget egestas purus viverra accumsan in nisl nisi. Aenean pharetra magna ac placerat vestibulum. Proin libero nunc consequat interdum varius sit amet mattis vulputate. Amet tellus cras adipiscing enim. Dolor sit amet consectetur adipiscing elit. Id consectetur purus ut faucibus pulvinar elementum integer enim. Commodo nulla facilisi nullam vehicula. Elit pellentesque habitant morbi tristique senectus et. Et netus et malesuada fames. Elit ullamcorper dignissim cras tincidunt lobortis feugiat vivamus at augue.</span></p>', '2018-08-03 00:08:35', '2018-08-02 22:08:35');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `avatar` varchar(100) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(64) NOT NULL,
  `about` text NOT NULL,
  `last_activity` datetime NOT NULL,
  `join_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `username`, `password`, `about`, `last_activity`, `join_date`) VALUES
(1, 'maharshi vishwakarma', 'mv8143@gmail.com', 'twitter.png', 'maharshi559', 'e10adc3949ba59abbe56e057f20f883e', '', '2018-08-02 07:01:51', '2018-08-02 05:01:51'),
(2, 'Venugopala Chary', 'annemarieg97@gmail.com', 'Logomakr_7S8WyI.png', 'venu1206', 'e10adc3949ba59abbe56e057f20f883e', '', '2018-08-02 20:46:39', '2018-08-02 18:46:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `replies`
--
ALTER TABLE `replies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `replies`
--
ALTER TABLE `replies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `topics`
--
ALTER TABLE `topics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
