-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2023 at 09:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aski-lms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `Name`, `Email`, `Password`) VALUES
(1, 'Admin', 'admin@email.com', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `ap_id` int(10) NOT NULL,
  `studentName` varchar(255) NOT NULL,
  `st_id` int(20) NOT NULL,
  `teacher_id` int(20) NOT NULL,
  `time` datetime NOT NULL,
  `teacherName` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`ap_id`, `studentName`, `st_id`, `teacher_id`, `time`, `teacherName`) VALUES
(2, 'Tasneem Rahman ADiba', 4, 16, '2022-09-20 15:14:00', 'Tasneem');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `q_id` int(11) NOT NULL,
  `question_title` mediumtext DEFAULT NULL,
  `question_detail` mediumtext NOT NULL,
  `student_id` int(11) NOT NULL,
  `subject_code` int(11) NOT NULL,
  `question_img` varchar(255) DEFAULT NULL,
  `ques_points` varchar(20) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `Status` varchar(30) NOT NULL DEFAULT 'Unanswered'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`q_id`, `question_title`, `question_detail`, `student_id`, `subject_code`, `question_img`, `ques_points`, `created_at`, `Status`) VALUES
(17, NULL, '7. If area of a rhombus is 506 cm² and length of diagonal is 23 cm. then find the length of other diagonal', 1, 2, 'maxresdefault (1).jpg', '10', '2023-02-13 23:08:44', 'Answered'),
(18, NULL, 'Why is tetraoxosulphate(vi) not used to prepare carbon (iv)oxide', 1, 4, 'question_1.png', '15', '2023-02-14 21:09:58', 'Unanswered'),
(19, NULL, 'What shows the various properties of selected object', 4, 7, 'media_483_483c8228-6aa8-4c20-8c78-c045a8bf8a74_image.png', '20', '2023-02-13 23:33:51', 'Answered');

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `sol_id` int(11) NOT NULL,
  `answer` varchar(100) NOT NULL,
  `Solution` mediumtext NOT NULL,
  `sol_img` varchar(255) NOT NULL,
  `ques_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`sol_id`, `answer`, `Solution`, `sol_img`, `ques_id`, `student_id`, `created_at`) VALUES
(8, 'This is Answer', 'If area of a rhombus is 506 cm² and length of diagonal is 23 cm. then find the length of other diagonal', 'maxresdefault (3).jpg', 21, 3, '2022-09-18 23:26:39'),
(9, 'Query test', '$sql = \"SELECT * FROM teacher\";\r\n  	$resultset = mysqli_query($db, $sql) or die(\"database error:\". mysqli_error($db));\r\n  	while( $t = mysqli_fetch_assoc($resultset) )', 'Screenshot 2022-09-18 232808.jpg', 22, 1, '2022-09-18 23:28:46'),
(10, 'This is The Answer', 'if Student.objects.filter(student_id=id).exists():', 'Screenshot 2022-09-18 232945.jpg', 19, 1, '2022-09-18 23:31:20'),
(11, 'Physics Answer', 'What shows the various properties of selected object', '2.webp', 17, 4, '2022-09-18 23:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `Full_Name` varchar(20) DEFAULT NULL,
  `Email` varchar(40) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `Rank` varchar(20) NOT NULL,
  `points` int(10) DEFAULT 100,
  `img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `username`, `Full_Name`, `Email`, `Password`, `phone`, `Rank`, `points`, `img`) VALUES
(0, 'Test', 'Test Name', 'test@gmail.com', '123456', '01871038150', 'Newbie', 135, 'pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg'),
(1, 'Ashik', 'AShikur Jaman Rakib', 'ashik@gmail.com', '12345', '015720752', 'Newbie', 63, 'rakib.jpg'),
(3, 'choyon', 'Chyon Muhammad', 'Some@gmail.com', '12345', NULL, 'Newbie', 115, 'pngtree-businessman-user-avatar-free-vector-png-image_1538405.jpg'),
(4, 'adiba', 'Tasneem Rahman ADiba', 'Adiba@gmail.com', '12345', '01720380747', 'Newbie', 775, 'adiba.jpg'),
(5, 'ferabiiiiiiii', 'Ferabi Ferabi', 'ferabi@ferabi.com', '12345', '12345678', 'Newbie', 10, 'ferabi.jpg'),
(6, 'tarik', 'Tarik Sohan', 'tarik@email.com', '12345', '12345678', '', 100, 'Screenshot 2022-08-29 232739.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `s_code` int(11) NOT NULL,
  `Subject_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`s_code`, `Subject_Name`) VALUES
(1, 'Discussion'),
(2, 'Suggestions'),
(3, 'Complaints'),
(4, 'Announcements'),
(5, 'Study Help'),
(6, 'Notices'),
(7, 'Academic'),
(8, 'UIU Clubs'),
(9, 'Miscellaneous');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`ap_id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`q_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`sol_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`s_code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `ap_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `sol_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `s_code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
