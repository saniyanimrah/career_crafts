-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 25, 2025 at 09:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `career_crafts`
--
CREATE DATABASE IF NOT EXISTS `career_crafts` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `career_crafts`;

-- --------------------------------------------------------

--
-- Table structure for table `career_crafts`
--

CREATE TABLE `career_crafts` (
  `name` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `status` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `career_crafts`
--

INSERT INTO `career_crafts` (`name`, `password`, `gender`, `address`, `email`, `mobile`, `status`) VALUES
('faeza', '123', 'female', 'bodhan', 'faeza@gmail.com', '9010900237', 1),
('araisha', 'password', 'female', 'salam plaza,malakpet,hyderabad', 'merasha26@gmail.com', '9014069815', 0),
('saniyaa', 'saniya', 'female', 'bdn', 'saniya0@gmail.com', '8919794386', 1),
('shazia', 'shazia', 'female', 'nzb', 'saniya1p2@gmail.com', '9919794385', 1),
('saniya', 'saniya', 'female', 'bodhan', 'saniya@gmail.com', '9919794385', 1),
('Syeda Saniya Nimrah', '123456', 'female', 'rakasipet,bodhan ', 'syedasaniyanimrah@gmail.com', '9012345678', 0),
('tasmiya maheen', '12345', 'female', 'nzb', 'tasmiyamaheen6@gmail.com', '8919794386', 0),
('zoha', 'zoha', 'male', 'gareeb nawaz masjid,khojja colony', 'zoha3@gmail', '8919794385', 0);

-- --------------------------------------------------------

--
-- Table structure for table `inter`
--

CREATE TABLE `inter` (
  `q1` varchar(20) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(20) NOT NULL,
  `q4` varchar(20) NOT NULL,
  `q5` varchar(20) NOT NULL,
  `result` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `inter`
--

INSERT INTO `inter` (`q1`, `q2`, `q3`, `q4`, `q5`, `result`, `email`) VALUES
('B', 'B', 'B', 'B', 'B', 'Interest: Life sciences, health care, and human biology.<br>Suggested Career Path:<br>- Doctor<br>- Pharmacist<br>- Paramedic<br>- Nursing<br>- Biotechnology<br>Entrance Exam: NEET<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'2lifescience.jsp\' class=\'uniform-button\'>More Details</a></div>', 'saniya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ssc`
--

CREATE TABLE `ssc` (
  `q1` varchar(20) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(20) NOT NULL,
  `q4` varchar(20) NOT NULL,
  `q5` varchar(20) NOT NULL,
  `result` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ssc`
--

INSERT INTO `ssc` (`q1`, `q2`, `q3`, `q4`, `q5`, `result`, `email`) VALUES
('A', 'A', 'A', 'A', 'A', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>', 'saniya@gmail.com'),
('C', 'C', 'C', 'C', 'C', 'Interest: Humanities, creativity, communication, and writing.<br>Suggested Stream/Career:<br>Stream: Arts / Humanities<br>Career: Journalism, History, Political Science, Psychology, Literature, or Social Work.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1Arts.jsp\' class=\'uniform-button\'>More Details</a></div>', 'saniya@gmail.com'),
('A', 'A', 'A', 'A', 'A', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>', 'saniya@gmail.com'),
('A', 'A', 'A', 'A', 'A', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>', 'saniya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `ug`
--

CREATE TABLE `ug` (
  `q1` varchar(20) NOT NULL,
  `q2` varchar(20) NOT NULL,
  `q3` varchar(20) NOT NULL,
  `q4` varchar(20) NOT NULL,
  `q5` varchar(20) NOT NULL,
  `result` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ug`
--

INSERT INTO `ug` (`q1`, `q2`, `q3`, `q4`, `q5`, `result`, `email`) VALUES
('A', 'A', 'A', 'A', 'A', 'Interest: Logical reasoning, STEM, problem-solving, academic strength in science/math.\nSuggested Career Path:\n- Engineer\n- Scientist / Researcher\n- Doctor\n- Data Analyst\nLearning Style: Labs, experiments.', 'tasmiyamaheen6@gmail.com'),
('A', 'B', 'D', 'A', 'E', 'Interest: Logical reasoning, STEM, problem-solving, academic strength in science/math.\nSuggested Career Path:\n- Engineer\n- Scientist / Researcher\n- Doctor\n- Data Analyst\nLearning Style: Labs, experiments.', 'saniya@gmail.com'),
('C', 'A', 'E', 'C', 'E', 'Interest: Writing, communication, expression.\nSuggested Career Path:\n- Journalist\n- Teacher\n- Writer\n- Lawyer\nLearning Style: Discussions.', 'faeza@gmail.com'),
('A', 'A', 'A', 'A', 'A', 'Interest: Logical reasoning, STEM, problem-solving, academic strength in science/math.<br>Suggested Career Path:<br>- Engineer<br>- Scientist / Researcher<br>- Doctor<br>- Data Analyst<br>Learning Style: Labs, experiments.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'3scientist.jsp\' class=\'uniform-button\'>More Details</a></div>', 'saniya@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user_result`
--

CREATE TABLE `user_result` (
  `email` varchar(100) NOT NULL,
  `final_result` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_result`
--

INSERT INTO `user_result` (`email`, `final_result`) VALUES
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>'),
('saniya@gmail.com', 'Interest: Analytical thinking, problem-solving, and logical reasoning.<br>Suggested Stream/Career:<br>Stream: Science with Maths<br>Career: Engineering, Data Science, Statistics, Mathematics, AI/ML, or Coding-related fields.<br><div class=\'button-container\' style=\'justify-content:center;\'><a href=\'1science_and_maths.jsp\' class=\'uniform-button\'>More Details</a></div>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `career_crafts`
--
ALTER TABLE `career_crafts`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `inter`
--
ALTER TABLE `inter`
  ADD KEY `fk_email1` (`email`);

--
-- Indexes for table `ssc`
--
ALTER TABLE `ssc`
  ADD KEY `fk_email` (`email`);

--
-- Indexes for table `ug`
--
ALTER TABLE `ug`
  ADD KEY `fk_email2` (`email`);

--
-- Indexes for table `user_result`
--
ALTER TABLE `user_result`
  ADD KEY `email` (`email`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inter`
--
ALTER TABLE `inter`
  ADD CONSTRAINT `fk_email1` FOREIGN KEY (`email`) REFERENCES `career_crafts` (`email`);

--
-- Constraints for table `ssc`
--
ALTER TABLE `ssc`
  ADD CONSTRAINT `fk_email` FOREIGN KEY (`email`) REFERENCES `career_crafts` (`email`);

--
-- Constraints for table `ug`
--
ALTER TABLE `ug`
  ADD CONSTRAINT `fk_email2` FOREIGN KEY (`email`) REFERENCES `career_crafts` (`email`);

--
-- Constraints for table `user_result`
--
ALTER TABLE `user_result`
  ADD CONSTRAINT `user_result_ibfk_1` FOREIGN KEY (`email`) REFERENCES `career_crafts` (`email`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
