-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 28, 2015 at 11:59 PM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `vratsad_code-week`
--

-- --------------------------------------------------------

--
-- Table structure for table `ages`
--

CREATE TABLE IF NOT EXISTS `ages` (
  `age-group` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`age-group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ages`
--

INSERT INTO `ages` (`age-group`) VALUES
('13 - 19'),
('20 - 29'),
('30 - 40'),
('under 13'),
('up 40');

-- --------------------------------------------------------

--
-- Table structure for table `apply`
--

CREATE TABLE IF NOT EXISTS `apply` (
  `course_num` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `test_result` int(11) NOT NULL,
  KEY `course_num` (`course_num`),
  KEY `student_id` (`student_id`),
  KEY `test_result` (`test_result`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `apply`
--

INSERT INTO `apply` (`course_num`, `student_id`, `test_result`) VALUES
(101, 1, 0),
(102, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE IF NOT EXISTS `courses` (
  `course_num` int(11) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `hours` int(11) NOT NULL,
  `num_students` int(11) NOT NULL,
  `description` varchar(300) NOT NULL,
  PRIMARY KEY (`course_num`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_num`, `course_name`, `hours`, `num_students`, `description`) VALUES
(101, 'php', 20, 20, 'php'),
(102, 'java', 20, 20, 'java');

-- --------------------------------------------------------

--
-- Table structure for table `e-mails-templats`
--

CREATE TABLE IF NOT EXISTS `e-mails-templats` (
  `id_template` int(11) NOT NULL AUTO_INCREMENT,
  `head` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_template`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

CREATE TABLE IF NOT EXISTS `experiences` (
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`type`) VALUES
('advanced'),
('begginers'),
('without eperience');

-- --------------------------------------------------------

--
-- Table structure for table `occupations`
--

CREATE TABLE IF NOT EXISTS `occupations` (
  `type_occupation` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`type_occupation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `occupations`
--

INSERT INTO `occupations` (`type_occupation`) VALUES
('employed'),
('other'),
('schoolboy / schoolgirl'),
('student'),
('unemployed');

-- --------------------------------------------------------

--
-- Table structure for table `sent_mails`
--

CREATE TABLE IF NOT EXISTS `sent_mails` (
  `id_sent` int(11) NOT NULL AUTO_INCREMENT,
  `e-mail` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_sent`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `statuses`
--

CREATE TABLE IF NOT EXISTS `statuses` (
  `id_status` int(11) NOT NULL AUTO_INCREMENT,
  `status_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_status`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- Dumping data for table `statuses`
--

INSERT INTO `statuses` (`id_status`, `status_type`) VALUES
(1, 'disapproved'),
(2, 'confirmed'),
(3, 'not confirmed'),
(4, 'declined'),
(5, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE IF NOT EXISTS `students` (
  `student_id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `age` varchar(100) NOT NULL,
  `ocupation` varchar(60) NOT NULL,
  `previous_experience` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `cource` int(11) NOT NULL,
  `phone` int(10) NOT NULL,
  `implementation` varchar(300) NOT NULL,
  `contribution` varchar(300) NOT NULL,
  PRIMARY KEY (`student_id`),
  KEY `age` (`age`),
  KEY `age_2` (`age`),
  KEY `previous_experience` (`previous_experience`),
  KEY `ocupation` (`ocupation`),
  KEY `cource` (`cource`)
) ENGINE=InnoDB DEFAULT CHARSET=cp1251;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `first_name`, `last_name`, `age`, `ocupation`, `previous_experience`, `mail`, `cource`, `phone`, `implementation`, `contribution`) VALUES
(1, 'Mihail', 'Ivanchev', '27', 'bachelors', 'Vratsa', 'mivanchev@gmail.com', 0, 883469000, '', ''),
(2, 'Ivan', 'Petrov', '20', 'student', 'vratsa', 'mail@abv.bg', 0, 888888888, '', ''),
(3, 'Петър', 'Димитров', '20 - 29', 'unemployed', 'begginers', 'mmmm@mail.bg', 102, 886868441, 'ще прилагам наученото', 'ще ми помогне да си намеря работа'),
(4, 'Златан', 'Стоянов', 'up 40', 'employed', 'advanced', 'mmm@mail.bg', 101, 888888888, 'ще прилагам наученото', 'очаквам много');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `apply`
--
ALTER TABLE `apply`
  ADD CONSTRAINT `apply_ibfk_1` FOREIGN KEY (`course_num`) REFERENCES `courses` (`course_num`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `apply_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
