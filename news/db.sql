-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2022 at 12:02 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `newws`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `email` text NOT NULL,
  `name` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `access` enum('sadmin','admin') NOT NULL DEFAULT 'admin',
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active',
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `name`, `password`, `access`, `status`, `about`) VALUES
(1, 'admin', 'admin@localhost', 'admin', '123', 'admin', 'active', 'sgrhdrth');

-- --------------------------------------------------------

--
-- Table structure for table `cat`
--

CREATE TABLE `cat` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` enum('parent','sub') NOT NULL DEFAULT 'parent',
  `parent` int(11) NOT NULL,
  `by` int(11) NOT NULL,
  `date` datetime NOT NULL,
  `uby` int(11) NOT NULL,
  `udate` text NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cat`
--

INSERT INTO `cat` (`id`, `name`, `type`, `parent`, `by`, `date`, `uby`, `udate`, `status`) VALUES
(1, 'CAT1', 'parent', 0, 1, '2022-04-06 12:21:33', 0, '0', 'deleted'),
(2, 'CAT2', 'parent', 0, 1, '2022-04-06 12:21:33', 0, '0', 'deleted'),
(4, 'تت', 'parent', 0, 1, '2022-04-06 12:21:33', 0, '0', 'active');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `pid` int(11) NOT NULL,
  `uname` text NOT NULL,
  `umail` text NOT NULL,
  `uwebsite` text NOT NULL,
  `msg` text NOT NULL,
  `cdate` text NOT NULL,
  `aid` int(11) DEFAULT NULL,
  `type` enum('comment','answer') NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `pid`, `uname`, `umail`, `uwebsite`, `msg`, `cdate`, `aid`, `type`, `status`) VALUES
(12, 3, 'مدیر', 'sefon87605@iconzap.com', 'teekyar ir', 'سلام\r\nنظر تست', '1655151943', NULL, 'comment', 1),
(13, 3, 'مدیر', 'sefon87605@iconzap.com', 'teekyar ir', 'سلام\r\nنظر تست', '1655151957', NULL, 'comment', 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `desc` text NOT NULL,
  `url` text NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`id`, `name`, `desc`, `url`, `status`) VALUES
(1, 'سایت خبری', 'یک سایت خبریست', 'localhost', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `leader` text NOT NULL,
  `desc` text NOT NULL,
  `catid` text NOT NULL,
  `tags` text NOT NULL,
  `image` text NOT NULL,
  `hit` int(11) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `type` enum('rec','selected','req','normal') NOT NULL DEFAULT 'normal',
  `by` int(11) NOT NULL,
  `udate` text NOT NULL,
  `uby` int(11) NOT NULL,
  `status` enum('active','inactive','deleted') NOT NULL DEFAULT 'active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `name`, `leader`, `desc`, `catid`, `tags`, `image`, `hit`, `date`, `type`, `by`, `udate`, `uby`, `status`) VALUES
(1, 'Test', 'Test of News 1', 'digjefghuydgfhgerfgerger\r\nger\r\nge\r\nrge\r\nrge\r\nrg\r\ne\r\nr\r\ng\r\ne\r\ng', '2', 'tag1 tag2', 'img/content/thumb/post-8.jpg', 37, '2022-04-06 13:15:13', 'req', 1, '0', 0, 'deleted'),
(2, 'Test1', 'Test of News 1', 'digjefghuydgfhgerfgerger\r\nger\r\nge\r\nrge\r\nrge\r\nrg\r\ne\r\nr\r\ng\r\ne\r\ng', '2', 'tag1 tag2', 'img/content/thumb/post-8.jpg', 1, '2022-04-06 13:15:13', 'normal', 1, '0', 0, 'deleted'),
(3, 'Test3', 'Test of News 1', 'digjefghuydgfhgerfgerger\r\nger\r\nge\r\nrge\r\nrge\r\nrg\r\ne\r\nr\r\ng\r\ne\r\ng', '2', 'tag1 tag2', 'img/content/thumb/post-8.jpg', 136, '2022-04-06 13:15:13', 'selected', 1, '0', 0, 'deleted'),
(4, 'Test4', 'Test of News 1', 'digjefghuydgfhgerfgerger\r\nger\r\nge\r\nrge\r\nrge\r\nrg\r\ne\r\nr\r\ng\r\ne\r\ng', '2', 'tag1 tag2', 'img/content/thumb/post-8.jpg', 33, '2022-04-06 13:15:13', 'rec', 1, '0', 0, 'deleted'),
(5, 'Test5', 'Test of News 1', 'digjefghuydgfhgerfgerger\r\nger\r\nge\r\nrge\r\nrge\r\nrg\r\ne\r\nr\r\ng\r\ne\r\ng', '2', 'tag1 tag2', 'img/content/thumb/post-8.jpg', 33, '2022-04-06 13:15:13', 'rec', 1, '0', 0, 'deleted'),
(6, 'Test5', 'Test of News 1', 'digjefghuydgfhgerfgerger\r\nger\r\nge\r\nrge\r\nrge\r\nrg\r\ne\r\nr\r\ng\r\ne\r\ng', '2', 'tag1 tag2', 'img/content/thumb/post-8.jpg', 37, '2022-04-06 13:15:13', 'rec', 1, '0', 0, 'deleted'),
(7, '', '', '', '', '', '', 0, '2022-06-21 13:12:21', 'normal', 1, '', 1, 'deleted'),
(8, 'grg', 'erg', 'erg', '4', 'ergererg', 'gerg', 0, '2022-06-21 13:30:32', 'normal', 1, '2022-06-21 13:30:32', 1, 'active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat`
--
ALTER TABLE `cat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cat`
--
ALTER TABLE `cat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
