-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 03:21 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mywebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_subtitle` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_title`, `about_subtitle`, `about_desc`) VALUES
(0, 'Junior PHP developer | Android Developer | C++ lover', 'Welcome to my first personal website! I develop this website using, so I guess that\'s my first project in PHP.\r\nhttps://github.com/Ademaove', 'I am a Generation Google Scholar\'21. I am an aspiring computer scientist. In the future, I want to work in the Artificial Intelligence field. \r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(256) NOT NULL,
  `subtitile` varchar(256) NOT NULL,
  `showicons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `subtitile`, `showicons`) VALUES
(1, 'Adema Yergara', 'I am a passionate programmer.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

CREATE TABLE `interests` (
  `id` int(11) NOT NULL,
  `pic` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `pic`, `title`) VALUES
(0, 'tv-show.png', 'Binge-watching'),
(0, 'books.png', 'Psychological books'),
(0, 'code.png', 'Coding:)'),
(0, 'code.png', 'Competitive programming');

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `website` varchar(255) NOT NULL,
  `degree` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `location` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `website`, `degree`, `email`, `location`) VALUES
(0, 'You are right here right now.', 'Bachelor of Science in Computer Science. Nazarbayev University, Nur-Sultan, Kazakhstan.', 'yergaraadema.@gmail.com', 'Nur-Sultan, Kazakhstan.');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `org` varchar(50) NOT NULL,
  `about_proj` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `type`, `title`, `time`, `org`, `about_proj`) VALUES
(0, 'Summary', 'Adema Yergara', '', '', 'Motivated Computer Science student who is looking for internships to enhance her knowledge. I have experience in Android development and PHP development. I am super into C++.'),
(0, 'Education', 'Bachelor of Science in Computer Science.', 'Aug 2019 - Jun 2023 (expected)', 'Nazarbayev University, Nur-Sultan, Kazakhstan', 'Bachelor of Science in Computer Science.\r\n-Worked in Society for Industrial and Applied Mathematics(SIAM) student chapter.\r\n-Worked in Ministry of Education in university\'s Student Government.\r\n-Represented Computer Science major students.\r\n'),
(0, 'Experience', 'Android Developer Intern', 'Jul 2020 - Sep 2020', 'Startup Este.kz', '• Created an app from scratch for an eCommerce website with over 8 000+ users daily in Java.\r\n• Implemented WooCommerce REST API using retrofit and volley libraries to display data.\r\n• Reduced the processing time of retrieving data from 4 seconds to 2.2 seconds by introducing a\r\nnew class that will collect only necessary information from WooCommerce REST API.'),
(0, 'Projects', 'Stay Fit (Fitness app for university club)', 'Oct 2020 - Dec 2020', 'https://github.com/Ademaove/StayFit', '• Currently working on an app that provides useful fitness related videos, podcasts, journals and news,\r\nand keeps track of water intakes and various fitness marathon days.\r\n• Implemented YouTube API, News API through retrofit library. Currently implementing Google\r\nFirebase Realtime Database and Authentication using Java.'),
(0, 'Projects', 'Date-Event Database (Coursera course project)', 'Aug 2020', 'https://github.com/Ademaove/YandexCourse/tree/mast', '• Created a database that stores dates with related events in C++.\r\n• Implemented OOP principles such as inheritance and polymorphism. Wrote some test cases using\r\nassert library. Implemented input validation and ability to delete and collect data for some conditions.\r\n• Improved the readability of the code by implementing operator overloading for some classes and\r\ndividing the code into multiple header and source files.');

-- --------------------------------------------------------

--
-- Table structure for table `section_control`
--

CREATE TABLE `section_control` (
  `id` int(11) NOT NULL,
  `home_section` int(11) NOT NULL,
  `about_section` int(11) NOT NULL,
  `resume_section` int(11) NOT NULL,
  `portfolio_section` int(11) NOT NULL,
  `contact_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `section_control`
--

INSERT INTO `section_control` (`id`, `home_section`, `about_section`, `resume_section`, `portfolio_section`, `contact_section`) VALUES
(0, 1, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_level`) VALUES
(0, 'HTML, CSS', 95),
(0, 'PHP', 75),
(0, 'JavaScript', 75),
(0, 'Java', 85),
(0, 'C++', 90),
(0, 'Python', 70),
(0, 'SQLite', 60),
(0, 'SQL', 40);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `linkedin` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `linkedin`, `github`, `facebook`, `instagram`) VALUES
(0, 'https://www.linkedin.com/in/ademayergara/', 'https://github.com/Ademaove', 'https://www.facebook.com/adema.yergara/', 'https://www.instagram.com/lifeofadema/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
