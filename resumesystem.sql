-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 18, 2025 at 02:47 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `resumesystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `achievements`
--

CREATE TABLE `achievements` (
  `achievementID` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `achievements`
--

INSERT INTO `achievements` (`achievementID`, `title`, `userID`) VALUES
(1, 'Participated as a Team lead in 24Hr Hackathon', 1),
(2, 'Scored Rank 1 in College Hackathon', 3),
(3, 'Accomplished 250+ problems in leetcode', 5),
(4, 'Consistently maintaining 1300+ rating points in codechef contests', 2),
(5, 'Maintaining consistency in problem solving in codeforces', 4),
(6, 'Participated in University Ideathon', 1),
(7, 'Scored Rank 2 in University coding contest', 2),
(8, 'Solved 221 problems in GeeksForGeeks', 3),
(9, 'Completed 100 coding contests in codechef', 4),
(10, 'Implemented College Student\'s Portal', 3);

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `courseID` int(11) NOT NULL,
  `courseName` text DEFAULT NULL,
  `platform` text DEFAULT NULL,
  `completionDate` text DEFAULT NULL,
  `certificateURL` text DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`courseID`, `courseName`, `platform`, `completionDate`, `certificateURL`, `userID`) VALUES
(1, 'Introduction to Web Development', 'Udemy', '2023-08-12', 'www.drive.google.com/kdjfh51jffj.pdf', 1),
(2, 'SQL and Relational Databases', 'IBM Cognitive Class', '2023-12-16', 'www.drive.google.com/ye5uvyuihu.pdf', 4),
(3, 'Introduction to UI/UX Design', 'Udemy', '2022-10-17', 'www.drive.google.com/pio422lyucl.pdf', 2),
(4, 'Machine Learning', 'Internshala', '2023-11-23', 'www.drive.google.com/hvunf3152uvbah.pdf', 3),
(5, 'Introduction to LLMs', 'Internshala', '2024-08-17', 'www.drive.google.com/ouoi554uihf.pdf', 5),
(6, 'Django Development', 'YouTube', '29-12-2023', 'NA', 2),
(7, 'Introduction to Artificial Intelligence', 'Coursera', '2022-01-15', 'www.drive.google.com/uroi45vkhhf.pdf', 5),
(8, 'Introduction to Deep Learning', 'YouTube', '2023-11-20', 'NA', 3),
(9, 'AWS Cloud Practitioner Essentials', 'AWS Skill Builder', '2025-03-24', 'www.drive.google.com/jvn98iyuidf.pdf', 1),
(10, 'Microsoft Power BI Desktop', 'Microsoft Learn', '2023-11-19', 'www.drive.google.com/oiii5kufljh.pdf', 2);

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `experienceID` int(11) NOT NULL,
  `role` text DEFAULT NULL,
  `organization` text NOT NULL,
  `contribution` text DEFAULT NULL,
  `skillsDeveloped` text DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`experienceID`, `role`, `organization`, `contribution`, `skillsDeveloped`, `userID`) VALUES
(1, 'Web Developer Intern', 'CodeAlpha', 'Developed responsive and interactive web applications', 'HTML, CSS, JavaScript', 1),
(2, 'Full Stack Developer Intern', 'Smart Bridge', 'Learnt about full stack technologies and solved real-world based problems', 'MongoDB, Express.JS, Angular.JS, Node.JS', 4),
(3, 'MERN Stack Developer Intern', 'GWing Technologies', 'Learnt MERN Stack technolgoies and implemented Hotel booking system', 'MongoDB, Express.JS, React.JS, Node.JS', 2),
(4, 'Cloud Engineer Intern', 'Zidio Development', 'Interacted with various AWS services, and deployed the scalable applications', 'AWS, AWS S3, AWS Lambda, AWS EC2, AWS DynamoDB', 1),
(5, 'Power BI Intern', 'Internz Valley', 'Contributed to handle the large data effectively and developed effective dashboards to analyze the business patterns', 'Microsoft Excel, Power BI Desktop, Power Query, DAX', 2),
(6, 'LLM Engineer Intern', 'Efftronics', 'Contributed to develop the effective and scalable LLMs and deployed them in cloud securly', 'LLMs, Microsoft Azure, Docker', 5),
(7, 'AIML Intern', 'Edunet Foundation', 'Skilled in Artificial Intelligence and Machine Learning', 'AI, ML, Python', 3),
(8, 'UI/UX Intern', 'REST Technologies', 'Developed reactive frontend pages using UI and UX', 'UI/UX, Figma, HTML', 2),
(9, 'Quantum Engineer Intern', 'Amaravathi Quantum Valley', 'Developed and deployed the effective machines which works on Quantum Engineering', 'Quantum Engineering, Python, Qiskit', 5),
(10, 'Software Engineer Intern', 'Darwin Box', 'Worked with effective software and developed the solutions which meet client\'s requirements', 'Java, SQL, Eclipse IDE, Git/GitHub', 4),
(11, 'Database Engineer Intern', 'Anasol Consultancy Services', 'Created and worked with databases, and produced client\'s requirements', 'DBMS, SQL, MySQL Workbench', 1),
(12, 'React.JS Intern', 'CodeAlpha', 'Created responsive and user interactive frontend web applications', 'JavaScript, React.JS, Tailwind CSS', 4),
(13, 'Backend Developer Intern', 'JusPay', 'Worked with backend of the applications and modified the exceptions', 'Java, Python, SQl, Git/GitHub', 5);

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `projectID` int(11) NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `startDate` date DEFAULT NULL,
  `endDate` date DEFAULT NULL,
  `projectURL` text DEFAULT NULL,
  `userId` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`projectID`, `title`, `description`, `startDate`, `endDate`, `projectURL`, `userId`) VALUES
(1, 'Basic Calculator', 'A web application which performs basic arithmetic operations like addition, subtraction, multiplication, division, etc.', '2023-10-25', '2023-11-24', 'www.github.com/karthi/basic-calculator', 1),
(2, 'Spam Email Classifier', 'A model which classifies the real emails whether they are safe or unsafe', '2024-01-26', '2024-03-10', 'www.github.com/abbas/spam-email-classifier', 3),
(3, 'E-Commerce Customer side application', 'A full stack application using MEAN Stack technology used to shop online various products and pay for the products in a secure way', '2024-02-08', '2024-06-26', 'www.github.com/harish/ECommerce-MEAN', 4),
(4, 'Hotel Management System', 'A full stack application using MERN Stack technology used to search and filter the hotels of a specific area to stay and book a room effectively', '2023-01-01', '2023-04-10', 'www.github.com/prakash/Hotel-Management-System', 2),
(5, 'Study Desk', 'A frontend application using PHP which performs a two-way interaction between the tutors and students. can attempt quizzes and asks queries', '2024-05-06', '2024-07-25', 'www.github.com/abbas/study-desk', 3),
(6, 'AI Powered Health Tracker', 'An AI based smart system, which tracks our health based on our diet and suggests fitness exercieses, balanced diet, etc.', '2022-06-25', '2022-12-31', 'www.github.com/abhi/health-tracker', 5);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `skillID` int(11) NOT NULL,
  `skillName` text DEFAULT NULL,
  `userID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`skillID`, `skillName`, `userID`) VALUES
(1, 'Web Development', 1),
(2, 'Machine Learning', 3),
(3, 'Deep Learning', 3),
(4, 'MEAN Stack', 4),
(5, 'MERN Stack', 2),
(6, 'Web Developement', 3),
(7, 'Artificial Intelligence', 5),
(8, 'LLMs', 5),
(9, 'Power BI Desktop', 2),
(10, 'Amazon Web Services', 1),
(11, 'Django', 2),
(12, 'Databases', 4),
(13, 'UI/UX Design', 2),
(14, 'Microsoft Azure', 4),
(15, 'Google Cloud Platform', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `userId` int(11) NOT NULL,
  `firstName` text DEFAULT NULL,
  `lastName` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `password` text DEFAULT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`userId`, `firstName`, `lastName`, `email`, `password`, `createdAt`) VALUES
(1, 'Karthikeya', 'Rentala', 'karthi@gmail.com', 'karthi', '2025-10-18 07:31:18'),
(2, 'Prakash', 'Pattamsetti', 'prakash@gmail.com', 'prakash', '2025-10-18 07:31:44'),
(3, 'Abbas', 'Shaik', 'abbas@gmail.com', 'abbas', '2025-10-18 07:32:02'),
(4, 'Harish', 'Mattupalli', 'harish@gmail.como', 'harish', '2025-10-18 07:36:16'),
(5, 'Abhigna', 'Maruturi', 'abhigna.mauturi@gmail.com', 'abhi', '2025-10-18 11:34:50');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `achievements`
--
ALTER TABLE `achievements`
  ADD PRIMARY KEY (`achievementID`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`courseID`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`experienceID`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`projectID`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`skillID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `achievements`
--
ALTER TABLE `achievements`
  MODIFY `achievementID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `courseID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `experienceID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `projectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `skillID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
