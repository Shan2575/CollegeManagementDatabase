-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 02, 2019 at 10:32 AM
-- Server version: 10.1.20-MariaDB
-- PHP Version: 5.6.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `z18249736`
--
CREATE DATABASE IF NOT EXISTS `z18249736` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `z18249736`;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `course_code` varchar(50) NOT NULL,
  `course_name` varchar(50) NOT NULL,
  `course_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`course_code`, `course_name`, `course_description`) VALUES
('LM029', 'Law Plus', 'The study of law is an enriching educational experience that provides intellectual stimulation and exposure to decision-making and argumentative skills. The Law Plus programme allows you to choose elective subjects in other courses including Politics, History, Psychology, Economics, Maths, and languages. You can, therefore, expect to have a wide variety of options open to you upon graduation.'),
('LM051', 'Computer Systems', 'The Computer Systems programme at UL aims to equip you with the knowledge and skills to become a successful and effective computer professional.'),
('LM056', 'International Business', 'The BA in International Business will provide you with a distinctive and challenging undergraduate experience. The programme is structured around a broad and flexible curriculum with subject choices that will help you to understand how business decisions are undertaken in a globalised world shaped by political, social and legal issues.'),
('LM058', 'Financial Mathematics', 'The aims of the degree are to produce graduates with developed mathematical, statistical and computing skills, and the ability to apply them to the quantitative analysis of industrial, commercial or financial business decisions.'),
('LM121', 'Computer Science Common Entry', 'LM121 Computer Science Common Entry is designed to provide you with a gateway to better choice if you’re unsure which area you’d like to study. You can avail of a broad common first semester which will introduce you to various topics in Computing. Having gained a better understanding of each subject area, you then choose your preferred pathway to specialise for the remainder of your degree programme. At UL, you get to try before you decide.');

-- --------------------------------------------------------

--
-- Table structure for table `course_dept_key`
--

CREATE TABLE `course_dept_key` (
  `course_code` varchar(50) NOT NULL,
  `department_code` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_dept_key`
--

INSERT INTO `course_dept_key` (`course_code`, `department_code`) VALUES
('LM121', 'CSIS'),
('LM051', 'CSIS'),
('LM058', 'MAS'),
('LM056', 'KBS'),
('LM029', 'LAW');

-- --------------------------------------------------------

--
-- Table structure for table `course_module_key`
--

CREATE TABLE `course_module_key` (
  `course_code` varchar(50) NOT NULL,
  `module_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course_module_key`
--

INSERT INTO `course_module_key` (`course_code`, `module_code`) VALUES
('LM121', 'CS4221'),
('LM121', 'MS4111'),
('LM121', 'ET4011'),
('LM121', 'CS4141'),
('LM051', 'CS4416'),
('LM051', 'CS4013'),
('LM051', 'CS4178'),
('LM051', 'CS4004'),
('LM051', 'CS4023'),
('LM058', 'FI4003'),
('LM058', 'MS4043'),
('LM029', 'LA4111'),
('LM029', 'LA4211'),
('LM058', 'MS4613'),
('LM058', 'MS4035'),
('LM029', 'LA4011'),
('LM056', 'IN4003'),
('LM056', 'MI4007'),
('LM056', 'CM6901'),
('LM058', 'MS4403');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_code` char(4) NOT NULL,
  `department_name` varchar(50) NOT NULL,
  `building` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_code`, `department_name`, `building`) VALUES
('CSIS', 'Computer Science & Information Systems', 'CSIS Building'),
('ENGS', 'Science and Engineering', 'Engineering Research Building'),
('KBS', 'Kemmy Business School', 'Kemmy Business Building'),
('LAW', 'School of Law', 'Foundation Building'),
('MAS', 'Mathematics and Statistics', 'Main Building');

-- --------------------------------------------------------

--
-- Table structure for table `enrolled`
--

CREATE TABLE `enrolled` (
  `student_id` varchar(8) NOT NULL DEFAULT '0',
  `course_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enrolled`
--

INSERT INTO `enrolled` (`student_id`, `course_code`) VALUES
('18249736', 'LM121'),
('17218829', 'LM051'),
('16158431', 'LM058'),
('15124126', 'LM056'),
('14786512', 'LM029');

-- --------------------------------------------------------

--
-- Table structure for table `modules`
--

CREATE TABLE `modules` (
  `module_code` varchar(6) NOT NULL DEFAULT '',
  `module_name` varchar(128) NOT NULL DEFAULT '',
  `module_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modules`
--

INSERT INTO `modules` (`module_code`, `module_name`, `module_description`) VALUES
('CM6901', 'Communications', 'This module is designed to introduce the concept of the communications process and to facilitate students in thinking strategically about communications. They will be introduced to current thinking in business communications, and effective ways to execute successful business communications. With a strong focus on skills-based learning, participants are given the opportunity to reflect on and master the fundamentals in business communication and to learn to manage communications more effectively for personal and professional development.'),
('CS4004', 'Software Testing and Inspection', 'To introduce students to software testing and inspection such that when given a specification and an implementation of a program, the student would be able to write the tests, run them, and report on the errors found.'),
('CS4013', 'Object Orientated Development', 'On successful completion of this module students will be able to identify, design, code and construct systems using inheritance hierarchies, encapsulation and polymorphism to solve specified programming problems.'),
('CS4023', 'Operating Systems', 'On successful completion of this module a student should have a clear understanding of the'),
('CS4141', 'Introduction To Programming', 'To provide a language independent introduction to programming using one programming language - the programming language and its operating environment is selected by the Department and the selection is reviewed regularly.'),
('CS4178', 'Software Requirements and Modelling', 'Introduce students to the requirement and modelling phases of a system\'s (and software) development cycle. Requirements and models as knowledge capture and materialization in analyzable IT artefacts. Requirments and models that support the needs to change and evolution. Exposure to relevant methods, techniques and tools, exposure to case studies.'),
('CS4221', 'Foundations Of Computer Science', 'To understand the mathematical basis of many complex computations, to lay a basis for derivation of simple programs from formal specifications, and to understand the dependence of program on underlying evaluation mechanisms.'),
('CS4416', 'Database Systems', 'Databases, particularly relational databases and database management systems (DBMSs) are central  in the design and development of modern information systems.  Understanding of their structure and skills in their application are fundamental aspects of a proper foundation in any domain of software development.'),
('ET4011', 'Fundamentals Of Computer Organisation', 'Students will gain a familiarity with the architecture, design and organisation of '),
('FI4003', 'Finance', 'The course provides an introduction to corporate finance and finance theory. The aim of the course is to develop students understanding of fundamental topics in corporate finance and financial theory.  The course provides students with the skills needed to engage in basic analysis of projects and financial assets.'),
('IN4003', 'Principles of Risk Management', 'To introduce the students to concepts and principles relating to the management of risk in both the public and private sector. The student will be expected to understand basic mathematical and financial models in dealing with risk theory as well as understanding the basics of the central theories on risk.'),
('LA4011', 'Introduction to Lawyering 1', 'The aim of this module is to provide a detailed understanding of the operation and practice of the legal system in Ireland, paying particular attention to the necessary skills inherent in the process of law at all levels. It forms part of a sequential number of modules within which this aim is achieved. '),
('LA4111', 'Contract Law 1', 'To provide the legal basis for the creation and enforcement of contracts and to examine what restrictions exist regarding freedom to contract.'),
('LA4211', 'Criminal Law 1', 'To examine the general principles of criminal law through consideration of their ethical, social and legal dimensions.'),
('MI4007', 'Business Information Management', 'To illustrate the implications of viewing the organization as an information processing entity'),
('MS4035', 'Probability Models', 'This module replaces module MS4213 Probability Theory.'),
('MS4043', 'Methods Of Linear Analysis', 'Linear static analysis is a design approach where equivalent static story forces, due to wind or earthquakes, are applied to the structure. The computation of story forces is prescriptive, and formulations for calculating these forces are provided within the applicable building code (Section 5.1.1). Linear static analysis is typically restricted to use in regular structures, where dynamic behavior is dominated by the fundamental mode of vibration, without significant higher modes and torsion effects and in regions of low seismicity'),
('MS4111', 'Discrete Mathematics', 'The aim of this module is to introduce students to some of the language of Discrete Mathematics, and to show its relevance, particularly in the context of Computer Science. It is taught at a level that is appropriate to first year students, i.e. without an excess of formality. The module should re-inforce the development of the students \"thinking\" skills, and should enable them to undertake further study in the various applied areas of Discrete Mathematics (coding, graphs, logic and formal systems etc)'),
('MS4403', 'Ordinary Differential Equations', 'To introduce and consolidate the concepts and techniques necessary for solving ordinary differential equations(including non-linear ordinary differential equations and phase plane techniques).'),
('MS4613', 'Vector Analysis', ' To review the basic tools of linear algebra.');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` char(32) NOT NULL,
  `firstname` char(32) NOT NULL,
  `lastname` char(32) NOT NULL,
  `address` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `firstname`, `lastname`, `address`, `email`) VALUES
('a.mjeda', 'Anila', 'Mjeda', '12 Test Avenue', 'a.mjeda@staff.ul.ie'),
('a.sai', 'Ashish', 'Sai', '5 GoodPerson Street', 'a.rai@staff.ul.ie'),
('m.english', 'Michael\r\n', 'English', '4 Boredom Street', 'm.english@staff.ul.ie'),
('n.nikolov', 'Nikola', 'Nikolov', '98 Street Street', 'n.nikolov@staff.ul.ie'),
('p.healy', 'Patrick', 'Healy', '23 C Avenue', 'p.healy@staff.ul.ie');

-- --------------------------------------------------------

--
-- Table structure for table `staff_modules`
--

CREATE TABLE `staff_modules` (
  `staff_id` char(32) NOT NULL,
  `module_code` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff_modules`
--

INSERT INTO `staff_modules` (`staff_id`, `module_code`) VALUES
('a.mjeda', 'MI4007'),
('a.mjeda', 'CM6901'),
('a.mjeda', 'LA4111'),
('a.mjeda', 'LA4211'),
('a.sai', 'CS4416'),
('a.sai', 'MS4111'),
('a.sai', 'FI4003'),
('a.sai', 'CS4221'),
('a.sai', 'ET4011'),
('m.english', 'LA4011'),
('m.english', 'CS4141'),
('m.english', 'MS4043'),
('m.english', 'CS4013'),
('m.english', 'MS4403'),
('p.healy', 'CS4023'),
('p.healy', 'IN4003'),
('p.healy', 'MS4035'),
('n.nikolov', 'MS4613'),
('n.nikolov', 'CS4004'),
('n.nikolov', 'CS4178');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `student_id` varchar(8) NOT NULL DEFAULT '0',
  `firstname` varchar(32) DEFAULT NULL,
  `lastname` varchar(32) DEFAULT NULL,
  `city` varchar(32) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`student_id`, `firstname`, `lastname`, `city`, `address`, `email`) VALUES
('14786512', 'Theodor', 'Lawson', 'Carlow', '87 Roscommon Road', '14786512@studentmail.ul.ie'),
('15124126', 'Sean', 'Barrett', 'Listowell', '56 Grafton Street', '15124126@studentmail.ul.ie'),
('16158431', 'Martin', 'Vaughan', 'Killaloe', '14 Carrowbane', '16158431@studentmail.ul.ie'),
('17218829', 'Brian', 'Shanahan', 'Limerick', '20 O\'Connell Street', '17218829@studentmail.ul.ie'),
('18249736', 'Daniel', 'Clarke', 'Sligo', '35 Church Road', '18249736@studentmail.ul.ie');

--
-- Triggers `students`
--
DELIMITER $$
CREATE TRIGGER `before_student_delete` BEFORE DELETE ON `students` FOR EACH ROW BEGIN
    INSERT INTO student_deletion(student_ID, course_code, department_code)
    select students.student_id, enrolled.course_code, department_code from students join enrolled on students.student_id = enrolled.student_id && students.student_id = OLD.student_id join course_dept_key on enrolled.course_code = course_dept_key.course_code;
END
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`course_code`);

--
-- Indexes for table `course_dept_key`
--
ALTER TABLE `course_dept_key`
  ADD KEY `course_dept_key_ibfk_1` (`course_code`),
  ADD KEY `course_dept_key_ibfk_2` (`department_code`);

--
-- Indexes for table `course_module_key`
--
ALTER TABLE `course_module_key`
  ADD KEY `course_module_key_ibfk_1` (`course_code`),
  ADD KEY `course_module_key_ibfk_2` (`module_code`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_code`);

--
-- Indexes for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD KEY `enrolled_ibfk_1` (`course_code`),
  ADD KEY `enrolled_ibfk_2` (`student_id`);

--
-- Indexes for table `modules`
--
ALTER TABLE `modules`
  ADD PRIMARY KEY (`module_code`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `staff_modules`
--
ALTER TABLE `staff_modules`
  ADD KEY `staff_modules_ibfk_1` (`staff_id`),
  ADD KEY `staff_modules_ibfk_2` (`module_code`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`student_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `course_dept_key`
--
ALTER TABLE `course_dept_key`
  ADD CONSTRAINT `FK_course_dept_key_courses` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `FK_course_dept_key_department` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`),
  ADD CONSTRAINT `course_dept_key_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`) ON UPDATE CASCADE,
  ADD CONSTRAINT `course_dept_key_ibfk_2` FOREIGN KEY (`department_code`) REFERENCES `department` (`department_code`) ON UPDATE CASCADE;

--
-- Constraints for table `course_module_key`
--
ALTER TABLE `course_module_key`
  ADD CONSTRAINT `FK_course_module_key_courses` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `FK_course_module_key_modules` FOREIGN KEY (`module_code`) REFERENCES `modules` (`module_code`),
  ADD CONSTRAINT `course_module_key_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `course_module_key_ibfk_2` FOREIGN KEY (`module_code`) REFERENCES `modules` (`module_code`);

--
-- Constraints for table `enrolled`
--
ALTER TABLE `enrolled`
  ADD CONSTRAINT `FK_enrolled_courses` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`),
  ADD CONSTRAINT `FK_enrolled_students` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`),
  ADD CONSTRAINT `enrolled_ibfk_1` FOREIGN KEY (`course_code`) REFERENCES `courses` (`course_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `enrolled_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`student_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `staff_modules`
--
ALTER TABLE `staff_modules`
  ADD CONSTRAINT `FK_staff_modules_modules` FOREIGN KEY (`module_code`) REFERENCES `modules` (`module_code`),
  ADD CONSTRAINT `FK_staff_modules_staff` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `staff_modules_ibfk_1` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  ADD CONSTRAINT `staff_modules_ibfk_2` FOREIGN KEY (`module_code`) REFERENCES `modules` (`module_code`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
