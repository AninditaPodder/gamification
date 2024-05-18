-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 18, 2024 at 02:56 AM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gamification`
--

-- --------------------------------------------------------

--
-- Table structure for table `alembic_version`
--

DROP TABLE IF EXISTS `alembic_version`;
CREATE TABLE IF NOT EXISTS `alembic_version` (
  `version_num` varchar(32) NOT NULL,
  PRIMARY KEY (`version_num`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `alembic_version`
--

INSERT INTO `alembic_version` (`version_num`) VALUES
('97aa6c84eee4');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
CREATE TABLE IF NOT EXISTS `comment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `post_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `content` text,
  `commented_date` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `post_id`, `user_id`, `content`, `commented_date`) VALUES
(1, 4, 1, 'This is my comment', '2024-05-17 23:46:15'),
(2, 5, 1, 'b', '2024-05-17 23:46:52'),
(3, 6, 1, 'This is my !st comment', '2024-05-18 01:12:27'),
(4, 7, 1, 'B', '2024-05-18 01:13:00'),
(5, 4, 9, 'hi\r\n', '2024-05-18 12:49:29');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE IF NOT EXISTS `course` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `name`) VALUES
(1, 'Geography'),
(2, 'History'),
(3, 'Mathematics'),
(4, 'English'),
(5, 'Science'),
(6, 'Technology'),
(7, 'Health and Physical Education'),
(8, 'Humanities');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

DROP TABLE IF EXISTS `post`;
CREATE TABLE IF NOT EXISTS `post` (
  `id` int NOT NULL AUTO_INCREMENT,
  `discussion_forum_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `posted_date` datetime DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `discussion_forum_id`, `user_id`, `posted_date`, `content`) VALUES
(1, 2, 1, '2024-05-17 17:00:39', 'Hello'),
(2, 2, 1, '2024-05-17 17:14:37', 'I have a question?'),
(3, 3, 1, '2024-05-17 17:55:59', 'I have unlocked a Blue batch\r\n'),
(4, 6, 1, '2024-05-17 23:46:06', 'hello'),
(5, 6, 1, '2024-05-17 23:46:38', 'What is the question no 2 ans ?\r\n'),
(6, 1, 1, '2024-05-18 01:11:58', 'Hello\r\n'),
(7, 1, 1, '2024-05-18 01:12:46', 'What is the answer to question 1'),
(8, 6, 9, '2024-05-18 12:49:37', 'what?\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

DROP TABLE IF EXISTS `quiz_question`;
CREATE TABLE IF NOT EXISTS `quiz_question` (
  `id` int NOT NULL AUTO_INCREMENT,
  `question` varchar(255) NOT NULL,
  `option1` varchar(255) NOT NULL,
  `option2` varchar(255) NOT NULL,
  `option3` varchar(255) NOT NULL,
  `option4` varchar(255) NOT NULL,
  `correct_answer` int NOT NULL,
  `quiz_set_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_set_id` (`quiz_set_id`)
) ENGINE=MyISAM AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`id`, `question`, `option1`, `option2`, `option3`, `option4`, `correct_answer`, `quiz_set_id`) VALUES
(1, 'What is the tallest mountain in the world?', 'Denail', 'Mount Everest', 'Mont Cmerron', 'Aconcaua', 2, 1),
(2, 'What is the longest river in the worls?', 'Darling River', 'Indus River', 'The Nile', 'Narmada River', 3, 1),
(3, 'What is the sum of 130+125+191?', '335', '456', '446', '426', 3, 5),
(4, '50 times of 8 is equal to?', ' 80', '400', ' 800', '4000', 2, 5),
(5, 'The value of tan 60°/cot 30° is equal to?', ' 1', ' 0', '2', '3', 1, 6),
(6, 'What is the value of sin 60° cos 30° + sin 30° cos 60°?', '1', '2', '4', '0', 1, 6),
(7, 'If ∆ABC is right angled at C, then what is the value of cos(A+B)?', '0', '1', '2', '4', 1, 6),
(8, 'What is the value of (tan 1° tan 2° tan 3° … tan 89°)?', '1', '2', '4', '0', 1, 6),
(9, 'What percentage of Australia is covered by desert?', '10%', '18%', '24%', '40%', 2, 2),
(10, 'How many time zones are in Australia?', '2', '3', '4', '1', 2, 2),
(11, 'In which year did World War I begin?\r\n', '1923\r\n', '1938', '1917', '1914', 4, 3),
(12, 'Who was the first Western explorer to reach China?', 'Magellan', 'Cook', 'Sir Francis Drake', 'Marco Polo', 4, 4),
(13, 'Who made Mona Lisa painting?', 'Leonardo da Vinci', 'Machiavelli', 'Michelangelo', 'Raphael', 1, 4),
(14, 'Solve 24÷8+2.', '5', '6', '8', '12', 1, 5),
(15, 'Solve: 300 – (150×2)', '150', '100', '50', '0', 4, 5),
(16, 'The product of 121 x 0 x 200 x 25 is', '1500', '0', '4000', 'None of these', 2, 4),
(17, ' 110 divided by 10 is:', '11', '10', '5', '0', 1, 5),
(18, '20+(90÷2) is equal to', '50', '55', '60', '65', 3, 5),
(19, 'The product of 82 and 5 is', '400', '410', '420', '440', 2, 5),
(20, 'What is the sum of 130+125+191?', '446', '520', '458', '875', 1, 5),
(21, 'What is the next prime number after 5?', '6', '7', '9', '11', 2, 5),
(22, 'If we minus 712 from 1500, how much do we get?', '788', '768', '786', '766', 1, 5),
(23, '50 times of 8 is equal to:', '80', '400', '800', '8000', 2, 6),
(24, '110 divided by 10 is:', '11', '10', '5', '0', 1, 6),
(25, '1+1 is equal to :', '1', '2', '11', '22', 2, 6),
(26, 'Solve: 3+6×(5+4)÷3-7', '13', '14', '15', '16', 2, 6),
(27, 'Solve: 23+3÷3', '24', '25', '26', '27', 1, 6),
(28, 'How Many Years are there in a Decade?', '5 years', '50 years ', '10 years ', '100 years ', 3, 6),
(29, 'Which monolithic rock is the largest in Australia?\r\n', 'Uluru', 'Ayers Rock', 'Mount Augustus', 'The Seven Sisters', 3, 2),
(30, 'Where should you go to witness Australia\'s tallest waterfall?', 'Victoria', 'New South Wales', 'Tasmania', 'Queensland', 4, 2),
(31, 'Where did European explorers first land?', 'Cape York Peninsula', 'Van Diemen\'s Land', 'Torres Strait Islands', 'Botany Bay', 1, 2),
(32, 'Australia is home to the largest structure built by organisms. What is it?', 'Shark Bay', 'Undara Lava Tubes', 'The Bungle Bungles', 'Great Barrier Reef\r\n', 4, 2),
(33, 'What is the Great Australian Bight?', 'A mountain range', 'An open bay', 'A continuous stretch of road', 'A desert', 2, 2),
(34, 'Where should avid hikers go to summit the tallest mountain in Australia?', 'Snowy Mountains', 'Cradle Mountain', 'Mt Hotham', 'Mt Kosciuszko', 4, 2),
(35, 'Where is Arnhem Land?', 'Australian Capital Territory', 'Northern Territory', 'Western Australia', 'Norfolk Island', 2, 2),
(36, 'Where should you go to meet a friendly quokka?', 'Fraser Island', 'Rottnest Island', 'Whitsundays', 'Kangaroo Island', 2, 2),
(37, 'Which problematic name was given to Australian by European settlers?', 'New Holland', 'Terra Nullius', 'Tasman', 'Land of Oz', 2, 2),
(38, 'What is the Westernmost point in Australia?', 'Fremantle', 'Port Augustus', 'Hay Point', 'steep point', 2, 4),
(39, 'What is the longest river in the country?', 'Thomson River', 'Murray River', 'Murrumbidgee River', 'Darling River', 2, 2),
(40, 'How many countries are larger than Australia by land mass?', 'None', '2', '4', '6', 4, 1),
(41, 'When did the French Revolution begin?', '1789', '1799', '1804', '1815', 1, 3),
(42, 'Who was the first Emperor of Rome?', 'Julius Caesar', 'Augustus', 'Nero', 'Constantine', 2, 3),
(43, 'Which ancient civilization built the Great Pyramid of Giza?', 'Sumerians', 'Egyptians', 'Greeks', 'Romans', 2, 3),
(44, 'Who was the first female Prime Minister of the United Kingdom?\r\n', 'Margaret Thatcher', 'Theresa May', 'Indira Gandhi', 'Angela Merkel', 1, 3),
(45, 'Which event marked the beginning of World War I?', 'Assassination of Archduke Franz Ferdinand', 'Treaty of Versailles', 'Invasion of Poland', 'Bombing of Pearl Harbor', 1, 4),
(46, 'Who was the first President of the United States?', 'George Washington', 'Thomas Jefferson', 'John Adams', 'Benjamin Franklin', 1, 4),
(47, 'When did the American Civil War end?', '1861', '1865', '1876', '1885', 2, 4),
(48, 'Which ancient civilization is credited with the invention of writing?\r\n', 'Egyptians', 'Mesopotamians', 'Greeks', 'Mayans', 2, 4),
(49, 'Who was the leader of the Soviet Union during World War II?\r\n', 'Joseph Stalin', 'Vladimir Lenin', 'Leon Trotsky', 'Nikita Khrushchev', 1, 4),
(50, 'Which city was the capital of the Byzantine Empire?', 'Athens', 'Rome', 'Constantinople', 'Alexandria', 3, 4),
(51, 'Which treaty ended World War I?\r\n', 'Treaty of Versailles', 'Treaty of Paris', 'Treaty of Trianon', 'Treaty of Brest-Litovsk', 1, 4),
(52, 'Who was the first female pharaoh of ancient Egypt?', 'Nefertiti', 'Cleopatra', 'Hatshepsut', 'Merneith', 3, 4),
(53, 'Who is considered the father of modern computer science?', ' Alan Turing', 'Bill Gates', 'Steve Jobs', ' Tim Berners-Lee', 1, 11),
(54, 'Which company developed the first commercial microprocessor?', 'Intel', 'IBM', 'Apple', 'Microsoft', 1, 11),
(55, 'What does the acronym \"HTTP\" stand for?', 'HyperText Transfer Protocol', 'High Tech Transfer Principle', 'Hypertext Technical Protocol', 'Hyper Transfer Text Protocol', 1, 11),
(56, 'Who is credited with inventing the World Wide Web?', 'Tim Berners-Lee', 'Bill Gates', 'Steve Jobs', 'Larry Page', 1, 11),
(57, 'Which programming language was developed by Sun Microsystems in the 1990s?', 'Java', 'Python', 'C++', 'Ruby', 1, 11),
(58, 'What does \"CPU\" stand for in computing?', 'Central Processing Unit', 'Computer Processing Unit', 'Central Program Utility', 'Control Processing Unit', 1, 11),
(59, 'Who invented the first commercially successful electric car?', 'Nikola Tesla', 'Elon Musk', 'Henry Ford', 'Thomas Edison', 1, 11),
(60, 'What is the term for a network that connects devices within a limited area, such as a home or office?', 'LAN (Local Area Network)', 'WAN (Wide Area Network)', 'MAN (Metropolitan Area Network)', 'PAN (Personal Area Network)', 1, 11),
(61, 'Which company developed the Android operating system?\r\n', 'Google', 'Apple', 'Microsoft', 'Samsung', 1, 11),
(62, 'What does \"HTML\" stand for in web development?', 'HyperText Markup Language', 'High Tech Markup Language', ' Hyper Transfer Text Markup Language', 'Hypertext Technical Markup Language', 1, 12),
(63, 'Which of the following is a type of solid-state storage device?', 'SSD (Solid State Drive)', 'HDD (Hard Disk Drive)', 'DVD (Digital Versatile Disc)', 'CD (Compact Disc)', 1, 11),
(64, 'Who co-founded Apple Inc. with Steve Jobs and Steve Wozniak?', 'Steve Wozniak', 'Bill Gates', 'Tim Cook', 'Paul Allen+', 1, 11),
(65, 'Which programming language is primarily used for developing Android applications?', 'Java', 'Python', 'C++', 'Swift', 1, 12),
(66, 'Which programming language is commonly used for data analysis and machine learning?', 'Python', 'C++', 'Ruby', 'Java', 1, 12),
(67, 'What does \"GUI\" stand for in computing?', 'Graphical User Interface ', 'General User Interaction', 'Global Utility Integration', 'Generalized User Interface', 1, 12),
(68, 'Which programming language is used for front-end web development?', 'JavaScript', 'Ruby', 'PHP', 'Python', 1, 12),
(69, 'What is the purpose of a VPN (Virtual Private Network)?', 'Encrypt data traffic for security', 'Filter spam emails', 'Speed up internet connection', 'Improve Wi-Fi signal strength', 1, 12),
(70, 'What is the function of an IP address?', 'Identifies a device on a network ', 'Encrypts data for secure transmission', 'Provides physical location of a device', 'Identifies a website on the internet', 1, 12),
(71, 'What is the primary function of a router in a computer network?', 'Forward data packets between computer networks ', 'Securely store data', 'Connect devices within a LAN', 'Provide power to network devices', 1, 12),
(72, 'Which of the following is not a type of computer virus?', 'Java', 'Trojan horse', 'Worm', 'Spyware', 1, 12),
(73, 'Which programming language is used for developing iOS applications?', 'Swift', 'Python', 'Java', 'C', 1, 12);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_set`
--

DROP TABLE IF EXISTS `quiz_set`;
CREATE TABLE IF NOT EXISTS `quiz_set` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_set`
--

INSERT INTO `quiz_set` (`id`, `name`, `course_id`) VALUES
(1, 'Geography Quiz One', 1),
(2, 'Geography Quiz Two', 1),
(3, 'History Quiz One', 2),
(4, 'History Quiz Two', 2),
(5, 'Mathematics Quiz One', 3),
(6, 'Mathematics Quiz Two', 3),
(7, 'English Quiz One', 4),
(8, 'English Quiz Two', 4),
(9, 'Science Quiz One', 5),
(10, 'Science Quiz Two', 5),
(11, 'Technology Quiz One', 6),
(12, 'Technology Quiz Two', 6);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_submission`
--

DROP TABLE IF EXISTS `quiz_submission`;
CREATE TABLE IF NOT EXISTS `quiz_submission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `quiz_set_id` int DEFAULT NULL,
  `quiz_question_id` int DEFAULT NULL,
  `given_answer` int NOT NULL,
  `is_correct_answer` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `quiz_set_id` (`quiz_set_id`),
  KEY `user_id` (`user_id`),
  KEY `quiz_question_id` (`quiz_question_id`)
) ENGINE=MyISAM AUTO_INCREMENT=220 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `quiz_submission`
--

INSERT INTO `quiz_submission` (`id`, `user_id`, `quiz_set_id`, `quiz_question_id`, `given_answer`, `is_correct_answer`) VALUES
(197, 1, 12, 67, 1, 1),
(196, 1, 12, 66, 1, 1),
(195, 1, 12, 65, 1, 1),
(194, 1, 12, 62, 1, 1),
(189, 1, 11, 59, 0, 0),
(188, 1, 11, 58, 0, 0),
(187, 1, 11, 57, 1, 1),
(186, 1, 11, 56, 1, 1),
(185, 1, 11, 55, 1, 1),
(184, 1, 11, 54, 1, 1),
(183, 1, 11, 53, 1, 1),
(182, 1, 6, 28, 3, 1),
(181, 1, 6, 27, 1, 1),
(180, 1, 6, 26, 2, 1),
(179, 1, 6, 25, 2, 1),
(178, 1, 6, 24, 1, 1),
(177, 1, 6, 23, 2, 1),
(176, 1, 6, 8, 1, 1),
(175, 1, 6, 7, 1, 1),
(174, 1, 6, 6, 1, 1),
(173, 1, 6, 5, 4, 0),
(172, 1, 5, 22, 1, 1),
(171, 1, 5, 21, 2, 1),
(170, 1, 5, 20, 1, 1),
(169, 1, 5, 19, 2, 1),
(168, 1, 5, 18, 3, 1),
(167, 1, 5, 17, 1, 1),
(166, 1, 5, 15, 1, 0),
(165, 1, 5, 14, 1, 1),
(164, 1, 5, 4, 2, 1),
(163, 1, 5, 3, 3, 1),
(162, 1, 4, 52, 3, 1),
(161, 1, 4, 51, 1, 1),
(160, 1, 4, 50, 3, 1),
(159, 1, 4, 49, 1, 1),
(158, 1, 4, 48, 2, 1),
(157, 1, 4, 47, 2, 1),
(156, 1, 4, 46, 1, 1),
(205, 7, 3, 41, 3, 0),
(204, 7, 3, 11, 1, 0),
(203, 1, 12, 73, 1, 1),
(206, 7, 3, 42, 3, 0),
(202, 1, 12, 72, 1, 1),
(201, 1, 12, 71, 1, 1),
(149, 1, 3, 43, 2, 1),
(200, 1, 12, 70, 1, 1),
(147, 1, 3, 41, 1, 1),
(146, 1, 3, 11, 4, 1),
(145, 1, 2, 39, 2, 1),
(199, 1, 12, 69, 1, 1),
(143, 1, 2, 36, 2, 1),
(142, 1, 2, 35, 2, 1),
(198, 1, 12, 68, 1, 1),
(140, 1, 2, 33, 2, 1),
(139, 1, 2, 32, 4, 1),
(138, 1, 2, 31, 4, 0),
(137, 1, 2, 30, 4, 1),
(136, 1, 2, 29, 3, 1),
(135, 1, 2, 10, 2, 1),
(134, 1, 2, 9, 3, 0),
(133, 1, 1, 40, 1, 0),
(132, 1, 1, 2, 3, 1),
(131, 1, 1, 1, 2, 1),
(207, 7, 3, 43, 3, 0),
(208, 7, 3, 44, 3, 0),
(209, 9, 11, 53, 1, 1),
(210, 9, 11, 54, 1, 1),
(211, 9, 11, 55, 1, 1),
(212, 9, 11, 56, 1, 1),
(213, 9, 11, 57, 1, 1),
(214, 9, 11, 58, 1, 1),
(215, 9, 11, 59, 1, 1),
(216, 9, 11, 60, 1, 1),
(217, 9, 11, 61, 1, 1),
(218, 9, 11, 63, 1, 1),
(219, 9, 11, 64, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(200) NOT NULL,
  `last_name` varchar(200) NOT NULL,
  `username` varchar(20) NOT NULL,
  `email` varchar(120) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `password_hash` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `first_name`, `last_name`, `username`, `email`, `role`, `date_added`, `password_hash`) VALUES
(1, 'Anindita', 'Podder', 'oni123', 'aninditapoddernitu@gmail.com', 'student', '2024-05-16 09:54:21', 'pbkdf2:sha256:600000$4C6cn4Ar4rzhrWCZ$06b903e9cf805e51621bdacca12effb7ad89e3b4d69df4220228f70c8f500d53'),
(2, 'Admin', 'User', 'admin0001', 'admin@gmail.com', 'student', '2024-05-16 12:26:53', 'pbkdf2:sha256:600000$Cn6GeUFZYk4syqxm$b9090c4ebe4e5a0c0fca1ab0477947bc32b477a480a3b4c076724c74ff816363'),
(9, 'test', 'test', 'testtest', 'testtest@gmail.com', 'student', '2024-05-18 02:44:13', 'pbkdf2:sha256:600000$r7VkfsYyPmlLcY7T$3a07198923d91ee6d3aefab1db5fe34c11e697573a2dda9969eba6bab5dd33b3'),
(8, 'Test002', 'Test002', 'test0002', 'test0002@gmail.com', 'student', '2024-05-18 02:31:26', 'pbkdf2:sha256:600000$iCg4MJJjnIKEL28y$d690dac096e60fcf3cab8eed07995309911ec9e9d01e013f533ddb0e7a3891ce'),
(7, 'Test', 'Test', 'test0001', 'test0001@gmail.com', 'student', '2024-05-18 01:17:49', 'pbkdf2:sha256:600000$cjYbPN64zDMDORIT$19d8d345175d37d1e3e08181f78b3a87db632415a4f4c3f0316f5f2220ed5746');

-- --------------------------------------------------------

--
-- Table structure for table `user_course`
--

DROP TABLE IF EXISTS `user_course`;
CREATE TABLE IF NOT EXISTS `user_course` (
  `user_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  KEY `user_id` (`user_id`),
  KEY `course_id` (`course_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `user_course`
--

INSERT INTO `user_course` (`user_id`, `course_id`) VALUES
(1, 1),
(1, 2),
(1, 5),
(1, 6),
(1, 3),
(4, 3),
(1, 1),
(1, 1),
(7, 1),
(7, 3),
(8, 1),
(9, 4),
(9, 6);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
