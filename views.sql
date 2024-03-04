-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 01, 2019 at 04:55 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_management_db`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `views1`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `views1`;
CREATE TABLE IF NOT EXISTS `views1` (
`firstname` varchar(32)
,`lastname` varchar(32)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `views2`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `views2`;
CREATE TABLE IF NOT EXISTS `views2` (
`course_name` varchar(50)
,`course_code` varchar(50)
,`course_description` text
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `views3`
-- (See below for the actual view)
--
DROP VIEW IF EXISTS `views3`;
CREATE TABLE IF NOT EXISTS `views3` (
`firstname` char(32)
,`lastname` char(32)
,`staff_id` char(32)
,`email` varchar(128)
,`address` varchar(128)
);

-- --------------------------------------------------------

--
-- Structure for view `views1`
--
DROP TABLE IF EXISTS `views1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `views1`  AS  select `students`.`firstname` AS `firstname`,`students`.`lastname` AS `lastname` from `students` where (`students`.`student_id` = (select `enrolled`.`student_id` from `enrolled` where (`enrolled`.`course_code` = (select `courses`.`course_code` from `courses` where (`courses`.`course_name` = 'Law Plus'))))) ;

-- --------------------------------------------------------

--
-- Structure for view `views2`
--
DROP TABLE IF EXISTS `views2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `views2`  AS  select `courses`.`course_name` AS `course_name`,`courses`.`course_code` AS `course_code`,`courses`.`course_description` AS `course_description` from `courses` where (`courses`.`course_code` = (select `course_dept_key`.`course_code` from `course_dept_key` where (`course_dept_key`.`department_code` = 'KBS'))) ;

-- --------------------------------------------------------

--
-- Structure for view `views3`
--
DROP TABLE IF EXISTS `views3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `views3`  AS  select `staff`.`firstname` AS `firstname`,`staff`.`lastname` AS `lastname`,`staff`.`staff_id` AS `staff_id`,`staff`.`email` AS `email`,`staff`.`address` AS `address` from `staff` where (`staff`.`staff_id` = (select `staff_modules`.`staff_id` from `staff_modules` where (`staff_modules`.`module_code` = (select `course_module_key`.`module_code` from `course_module_key` where (`course_module_key`.`module_code` like 'CS4023'))))) ;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
